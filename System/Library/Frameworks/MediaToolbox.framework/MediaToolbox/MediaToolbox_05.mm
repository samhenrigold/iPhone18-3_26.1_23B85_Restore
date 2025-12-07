uint64_t FigCFHTTPInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v2 = DerivedStorage;
    FigRetainProxyLockMutex();
    if (*(v2 + 376))
    {
      FigRetainProxyUnlockMutex();
    }

    else
    {
      FigRetainProxyInvalidate();
      *(v2 + 376) = 257;
      FigCFHTTPStopAllReads(v2, -12932);
      v3 = *(v2 + 88);
      *(v2 + 88) = 0;
      v4 = *(v2 + 104);
      v5 = *(v2 + 120);
      *(v2 + 104) = 0;
      v6 = *(v2 + 368);
      if (v6)
      {
        CMMemoryPoolInvalidate(v6);
      }

      fbf_CancelReconnect(v2);
      if (*(v2 + 456))
      {
        FigHTTPStopAndReleaseTimer((v2 + 456));
        *(v2 + 456) = 0;
      }

      FigByteFlumeBaseInvalidate(v2);
      v7 = *(v2 + 44);
      if (*(v2 + 40))
      {
        v8 = v7 == 1;
      }

      else
      {
        v8 = 0;
      }

      v10 = v8 || v7 == 2;
      FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v2 + 592), v3, *(v2 + 32), 0x1F0B645B8, v10);
      if (*(v2 + 600))
      {
        nw_activity_complete_with_reason();
        v11 = *(v2 + 600);
        if (v11)
        {
          CFRelease(v11);
          *(v2 + 600) = 0;
        }
      }

      v12 = *(v2 + 624);
      if (v12)
      {
        CFRelease(v12);
        *(v2 + 624) = 0;
      }

      v13 = *(v2 + 640);
      if (v13)
      {
        CFRelease(v13);
        *(v2 + 640) = 0;
      }

      *(v2 + 377) = 0;
      FigRetainProxyUnlockMutex();
      if (v3)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v14)
        {
          v14(v3);
        }

        CFRelease(v3);
      }

      if (v4)
      {
        v4(v5, 0, 4294954364);
      }
    }
  }

  return 0;
}

void QTMovieCacheMemReleaseCallBack(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t FigCFHTTPStopAllReads(uint64_t result, int a2)
{
  v3 = result;
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16F58)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    while (1)
    {
      if (!*(v5 + 120))
      {
        *(v5 + 120) = a2;
      }

      if (!*(v5 + 125))
      {
        result = FigCFHTTPFinishReadRequest(v3, v5, 1);
        v5 = *(v3 + 56);
        if (!v5)
        {
          break;
        }
      }
    }
  }

  return result;
}

void FigCFHTTPFinalize(uint64_t a1)
{
  FigCFHTTPInvalidate(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 408);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 408) = 0;
  }

  v3 = *(DerivedStorage + 400);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 400) = 0;
  }

  v4 = *(DerivedStorage + 168);
  if (v4)
  {
    *(DerivedStorage + 168) = 0;
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 176);
  if (v5)
  {
    *(DerivedStorage + 176) = 0;
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 192);
  if (v6)
  {
    *(DerivedStorage + 192) = 0;
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 224);
  if (v7)
  {
    *(DerivedStorage + 224) = 0;
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 232);
  if (v8)
  {
    *(DerivedStorage + 232) = 0;
    CFRelease(v8);
  }

  v9 = *(DerivedStorage + 240);
  if (v9)
  {
    *(DerivedStorage + 240) = 0;
    CFRelease(v9);
  }

  v10 = *(DerivedStorage + 200);
  if (v10)
  {
    *(DerivedStorage + 200) = 0;
    CFRelease(v10);
  }

  v11 = *(DerivedStorage + 112);
  if (v11)
  {
    *(DerivedStorage + 112) = 0;
    CFRelease(v11);
  }

  v12 = *(DerivedStorage + 272);
  if (v12)
  {
    *(DerivedStorage + 272) = 0;
    CFRelease(v12);
  }

  v13 = *(DerivedStorage + 264);
  if (v13)
  {
    *(DerivedStorage + 264) = 0;
    CFRelease(v13);
  }

  v14 = *(DerivedStorage + 256);
  if (v14)
  {
    *(DerivedStorage + 256) = 0;
    CFRelease(v14);
  }

  v15 = *(DerivedStorage + 128);
  if (v15)
  {
    *(DerivedStorage + 128) = 0;
    CFRelease(v15);
  }

  v16 = *(DerivedStorage + 136);
  if (v16)
  {
    *(DerivedStorage + 136) = 0;
    CFRelease(v16);
  }

  FigHTTPSchedulerRelease(*(DerivedStorage + 48));
  v17 = *(DerivedStorage + 368);
  if (v17)
  {
    *(DerivedStorage + 368) = 0;
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 208);
  if (v18)
  {
    *(DerivedStorage + 208) = 0;
    CFRelease(v18);
  }

  v19 = *(DerivedStorage + 536);
  if (v19)
  {
    *(DerivedStorage + 536) = 0;
    CFRelease(v19);
  }

  v20 = *(DerivedStorage + 560);
  if (v20)
  {
    *(DerivedStorage + 560) = 0;
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 544);
  if (v21)
  {
    *(DerivedStorage + 544) = 0;
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 552);
  if (v22)
  {
    *(DerivedStorage + 552) = 0;
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 568);
  if (v23)
  {
    *(DerivedStorage + 568) = 0;
    CFRelease(v23);
  }

  v24 = *(DerivedStorage + 344);
  if (v24)
  {
    FigByteRateHistoryDispose(v24);
    *(DerivedStorage + 344) = 0;
  }

  v25 = *(DerivedStorage + 648);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 648) = 0;
  }

  FigNetworkInterfaceReporterDestroy(*(DerivedStorage + 592));

  FigByteFlumeBaseDispose(DerivedStorage);
}

uint64_t FigByteRateHistoryDispose(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
  return 0;
}

uint64_t playerfig_Invalidate(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    playerfig_Invalidate_cold_1();
  }

  objc_autoreleasePoolPop(v1);
  return 0;
}

uint64_t playerfig_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerfig_Invalidate(a1);
  v3 = DerivedStorage[110];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[110] = 0;
  }

  v4 = DerivedStorage[73];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[73] = 0;
  }

  v5 = DerivedStorage[83];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[83] = 0;
  }

  v6 = DerivedStorage[74];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[74] = 0;
  }

  v7 = DerivedStorage[79];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[79] = 0;
  }

  v8 = DerivedStorage[78];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[78] = 0;
  }

  v9 = DerivedStorage[80];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[80] = 0;
  }

  v10 = DerivedStorage[81];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[81] = 0;
  }

  v11 = DerivedStorage[11];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[11] = 0;
  }

  v12 = DerivedStorage[70];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[70] = 0;
  }

  v13 = DerivedStorage[89];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[89] = 0;
  }

  FigSimpleMutexLock();
  v14 = DerivedStorage[4];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[4] = 0;
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexDestroy();
  v15 = DerivedStorage[150];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[150] = 0;
  }

  if (DerivedStorage[23])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[94])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[99])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[29])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[31])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[64])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[114])
  {
    FigSimpleMutexLock();
    v16 = DerivedStorage[115];
    if (v16)
    {
      CFRelease(v16);
      DerivedStorage[115] = 0;
    }

    v17 = DerivedStorage[116];
    if (v17)
    {
      CFRelease(v17);
      DerivedStorage[116] = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
  }

  FigSimpleMutexDestroy();
  v18 = DerivedStorage[12];
  if (v18)
  {
    dispatch_release(v18);
    DerivedStorage[12] = 0;
  }

  v19 = DerivedStorage[13];
  if (v19)
  {
    dispatch_release(v19);
    DerivedStorage[13] = 0;
  }

  v20 = DerivedStorage[14];
  if (v20)
  {
    dispatch_release(v20);
    DerivedStorage[14] = 0;
  }

  v21 = DerivedStorage[2];
  if (v21)
  {
    CFRelease(v21);
  }

  FigSimpleMutexDestroy();
  v22 = DerivedStorage[91];
  if (v22)
  {
    CFRelease(v22);
  }

  FigSimpleMutexDestroy();
  v23 = DerivedStorage[77];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = DerivedStorage[118];
  if (v24)
  {
    CFRelease(v24);
    DerivedStorage[118] = 0;
  }

  FPSupport_releaseClosedCaptions(DerivedStorage + 38);
  v25 = DerivedStorage[66];
  if (v25)
  {
    CFRelease(v25);
    DerivedStorage[66] = 0;
  }

  if (DerivedStorage[65])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[65] = 0;
  }

  v26 = DerivedStorage[1];
  if (v26)
  {
    CFRelease(v26);
    DerivedStorage[1] = 0;
  }

  if (DerivedStorage[20])
  {
    FigSimpleMutexDestroy();
  }

  if (DerivedStorage[35])
  {
    FigSimpleMutexDestroy();
  }

  v27 = DerivedStorage[151];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[151] = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t FigMediaValidatorCreate(unint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  v13 = 0;
  v10 = FigMediaValidatorCreateInternal(&v13);
  if (!v10)
  {
    v11 = v13;
    if (v13)
    {
      v10 = FigMediaValidatorValidateAsyncInternal(v13, a1, a2, a3, a4, 0);
      if (v10)
      {
        free(v11);
      }

      else
      {
        *a5 = v11;
      }
    }
  }

  return v10;
}

uint64_t mv_thread(uint64_t a1)
{
  URLString = 0;
  *(a1 + 200) = MEMORY[0x19A8D35D0]();
  FigSemaphoreSignal();
  v2 = MEMORY[0x1E695E480];
  if (*(a1 + 48))
  {
    v3 = *MEMORY[0x1E695E480];
  }

  else
  {
    FigDiskCacheRepositoryCopyDefaultParentURLForCurrentTask(&URLString, 1);
    v3 = *v2;
    if (URLString)
    {
      *(a1 + 48) = CFURLCreateWithString(v3, URLString, 0);
      CFRelease(URLString);
    }
  }

  LODWORD(v4) = 0;
  v5 = (a1 + 16);
  v6 = *MEMORY[0x1E695FFA0];
  do
  {
    v7 = *(a1 + 80);
    do
    {
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 80) = 0;
      }

      v8 = *(a1 + 8);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 8) = 0;
      }

      if (*v5)
      {
        CFRelease(*v5);
        *v5 = 0;
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        *(a1 + 80) = v9;
        *(a1 + 56) = 0;
      }

      else
      {
        v4 = FigByteStreamFactoryTranslateReferenceSecurityOptions(*(a1 + 184)) | v4;
        StreamFromURL = FigByteStreamFactoryCreateStreamFromURL(*a1, v4, *(a1 + 48), 0, 0, 0, (a1 + 80), (a1 + 8), (a1 + 16), 0);
        if (StreamFromURL)
        {
          v16 = StreamFromURL;
          if (FigMediaValidatorIsNonByteStreamURLStreaming(StreamFromURL, *a1, *(a1 + 8), *(a1 + 16), 0))
          {
            *(a1 + 107) = 1;
            *(a1 + 105) = 257;
            *(a1 + 44) = 1;
            *(a1 + 40) = 0;
            goto LABEL_41;
          }

          if (v16 == -12662)
          {
            v16 = 0;
            *(a1 + 105) = 257;
          }

          goto LABEL_40;
        }
      }

      if (*(a1 + 44))
      {
        goto LABEL_41;
      }

      v7 = 0;
      v11 = *(a1 + 80);
    }

    while (!v11);
    v26 = 0;
    IsReferenceMovie(v11, &v26);
    if (v12 || !v26)
    {
      if (mv_IsStreaming(*a1, *(a1 + 8), *(a1 + 16)))
      {
        v18 = 0;
        *(a1 + 107) = 1;
        *(a1 + 105) = 257;
      }

      else
      {
        v18 = mv_ValidateFileFromByteStream(a1 + 64, 0);
      }

      *(a1 + 44) = 1;
      *(a1 + 40) = v18;
      break;
    }

    v24 = 0;
    cf = 0;
    v13 = *(a1 + 192);
    *(a1 + 192) = v13 + 1;
    if (v13 >= 5)
    {
      v16 = FigSignalErrorAt();
LABEL_40:
      *(a1 + 44) = 1;
      *(a1 + 40) = v16;
      break;
    }

    CMBaseObject = CMByteStreamGetCMBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(CMBaseObject, v6, v3, &cf);
    }

    v16 = ResolveReferenceMovieWithOptions(*(a1 + 80), cf, *(a1 + 184), &v24);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      goto LABEL_40;
    }

    v17 = *(a1 + 8);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    *a1 = v24;
  }

  while (!*(a1 + 44));
LABEL_41:
  v19 = *(a1 + 24);
  if (v19)
  {
    v20 = (*(a1 + 107) != 0) | (2 * (*(a1 + 104) != 0));
    v21 = *(a1 + 40);
    if (!v21)
    {
      if (*(a1 + 105))
      {
        v21 = 0;
      }

      else
      {
        v21 = 4294954346;
        *(a1 + 40) = -12950;
      }
    }

    v19(a1, *(a1 + 32), v21, v20, *(a1 + 88), *(a1 + 96));
  }

  FigSimpleMutexLock();
  *(a1 + 200) = 0;
  v22 = *(a1 + 224);
  FigSimpleMutexUnlock();
  if (v22)
  {
    FigMediaValidatorRelease(a1);
  }

  return 0;
}

void FigSharedRemote_CopyDiskCacheParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  xdict = 0;
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (!dword_1ED4CA894)
  {
    fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v33);
    if (v35 != -17508 && !OUTLINED_FUNCTION_31_10(0x7061u, v34, &xdict))
    {
      xpc_dictionary_set_BOOL(xdict, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_5_44();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && (!v23 || !FigXPCMessageCopyCFURL()))
        {
          if (v31)
          {
            *v31 = xpc_dictionary_get_int64(0, "UsedFileSize");
          }

          if (v29)
          {
            *v29 = xpc_dictionary_get_int64(0, "TargetSize");
          }

          if (v27)
          {
            *v27 = xpc_dictionary_get_int64(0, "TargetFileSize");
          }

          if (v25)
          {
            *v25 = xpc_dictionary_get_BOOL(0, "AutomaticallyManagesSize");
          }
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_48_7(qword_1ED4CA8A0, v36, "FigSharedRemote_CopyDiskCacheParams");
  OUTLINED_FUNCTION_843();
}

void FigSharedRemote_CheckOutOfDiskCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFTypeRef a10, uint64_t a11, xpc_object_t xdict, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v24;
  xdict = 0;
  if (v25)
  {
    v26 = v22;
    if (v22)
    {
      v27 = v23;
      if (v23)
      {
        v28 = v21;
        if (qword_1ED4CA8A8 != -1)
        {
          dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
        }

        if (!dword_1ED4CA894)
        {
          fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v28);
          OUTLINED_FUNCTION_40_7();
          if (!v30 && !OUTLINED_FUNCTION_31_10(0x6F74u, v29, &xdict))
          {
            xpc_dictionary_set_BOOL(xdict, "IsFigSharedMessage", 1);
            if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString())
            {
              OUTLINED_FUNCTION_2_22();
              if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCFURL() && !FigXPCMessageCopyCFString())
              {
                *v26 = 0;
                *v27 = 0;
              }
            }
          }
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9232, v24);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9231, v24);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9230, v24);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v31, "FigSharedRemote_CheckOutOfDiskCache");
  OUTLINED_FUNCTION_860();
}

uint64_t ResolveReferenceMovieWithOptions(uint64_t a1, const __CFURL *a2, uint64_t a3, CFURLRef *a4)
{
  v5 = a3;
  result = ResolveReferenceMovie(a1, a2, a4);
  if (!result && v5 && *a4)
  {
    if (FigIsReferenceAllowedBySecurityPolicy())
    {
      return 0;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
      v8 = v7;
      CFRelease(*a4);
      *a4 = 0;
      return v8;
    }
  }

  return result;
}

uint64_t ResolveReferenceMovie(uint64_t a1, const __CFURL *a2, CFURLRef *a3)
{
  dataPointerOut[2] = *MEMORY[0x1E69E9840];
  memset(v80, 0, sizeof(v80));
  dataPointerOut[1] = 0x726D72616D6F6F76;
  v78[1] = 0;
  cf = 0;
  v78[0] = 0;
  BBuf = FigAtomStreamInitWithByteStream();
  v6 = MEMORY[0x1E695E480];
  if (BBuf || (BBuf = FigAtomStreamPositionViaAtomPath(), BBuf) || (BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf(), BBuf) || (BBuf = FigAtomStreamInitWithBBuf(), BBuf) || (BBuf = ParseDescriptorAtoms(v80, ChooseReferenceMovie_descriptorDispatch, 1, v78), BBuf))
  {
    v53 = BBuf;
    goto LABEL_99;
  }

  v7 = v78[0];
  if (!v78[0])
  {
    v52 = 0;
    v53 = 0;
    v50 = 0;
    goto LABEL_84;
  }

  v68 = a3;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  allocator = *v6;
  domain = *MEMORY[0x1E69822F0];
  key = *MEMORY[0x1E69822F8];
  entity = *MEMORY[0x1E6982338];
  do
  {
    v11 = *(v7 + 2);
    if (v11)
    {
      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; v13 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 2), i);
          *totalLengthOut = 0;
          v16 = OUTLINED_FUNCTION_3_9(ValueAtIndex);
          if (v16)
          {
            goto LABEL_80;
          }

          v17 = dataPointerOut[0];
          v18 = bswap32(*(dataPointerOut[0] + 1));
          switch(v18)
          {
            case 0x61766320u:
              CelestialGetSupportedAVCProfileAndLevel();
              v19 = (totalLengthOut[1] << 24) | (totalLengthOut[0] << 16);
              if (!v19)
              {
                continue;
              }

              break;
            case 0x6176636Cu:
              CelestialGetSupportedAVCProfileAndLevel();
              v19 = totalLengthOut[0];
              if (!totalLengthOut[0])
              {
                continue;
              }

              break;
            case 0x7174696Du:
              v19 = 118489088;
              goto LABEL_28;
            case 0x6D6F6269u:
              MEMORY[0x19A8D3660](&sMobiGestaltInit, InitMobiGestaltOnce);
              v19 = sMobiGestaltValue;
              if (!sMobiGestaltValue)
              {
                continue;
              }

              break;
            case 0x6D737076u:
              v19 = 3;
              goto LABEL_28;
            case 0x61766370u:
              CelestialGetSupportedAVCProfileAndLevel();
              v19 = totalLengthOut[1];
              if (!totalLengthOut[1])
              {
                continue;
              }

              break;
            default:
              goto LABEL_71;
          }

          v17 = dataPointerOut[0];
LABEL_28:
          if (*(v17 + 8) == 256)
          {
            if ((bswap32(*(v17 + 3)) & v19) != bswap32(*(v17 + 2)))
            {
              goto LABEL_71;
            }
          }

          else if (*(v17 + 8) || bswap32(*(v17 + 2)) > v19)
          {
            goto LABEL_71;
          }
        }
      }
    }

    v20 = *(v7 + 1);
    if (v20)
    {
      v16 = OUTLINED_FUNCTION_3_9(v20);
      if (v16)
      {
LABEL_80:
        v53 = v16;
        v52 = 0;
        v50 = 0;
        goto LABEL_81;
      }

      v21 = *(dataPointerOut[0] + 1);
      v22 = v10;
      if (!v10)
      {
        v23 = allocator;
        v24 = SCDynamicStoreCreate(allocator, @"com.apple.celestial", 0, 0);
        if (v24)
        {
          v25 = v24;
          NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(allocator, domain);
          if (NetworkInterface)
          {
            v27 = NetworkInterface;
            v28 = SCDynamicStoreCopyValue(v25, NetworkInterface);
            if (v28)
            {
              v70 = v9;
              v71 = v8;
              v29 = v28;
              v30 = CFGetTypeID(v28);
              v69 = v29;
              if (v30 == CFDictionaryGetTypeID() && (Value = CFDictionaryGetValue(v29, key)) != 0 && (v32 = Value, v33 = CFGetTypeID(Value), v33 == CFArrayGetTypeID()) && (v74 = CFArrayGetCount(v32), v74 >= 1))
              {
                theArray = v32;
                v34 = 0;
                OUTLINED_FUNCTION_4_11();
                v66 = v27;
                do
                {
                  v35 = CFArrayGetValueAtIndex(theArray, v34);
                  if (!CFStringHasPrefix(v35, @"lo"))
                  {
                    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v23, domain, v35, entity);
                    if (NetworkInterfaceEntity)
                    {
                      v37 = NetworkInterfaceEntity;
                      v38 = SCDynamicStoreCopyKeyList(v25, NetworkInterfaceEntity);
                      CFRelease(v37);
                      if (v38)
                      {
                        v39 = CFArrayGetCount(v38);
                        CFRelease(v38);
                        if (v39 >= 1)
                        {
                          HasPrefix = CFStringHasPrefix(v35, @"en");
                          v41 = v76;
                          if (HasPrefix)
                          {
                            v41 = 150000;
                          }

                          v76 = v41;
                        }
                      }
                    }

                    v23 = allocator;
                    v27 = v66;
                  }

                  ++v34;
                }

                while (v74 != v34);
              }

              else
              {
                OUTLINED_FUNCTION_4_11();
              }

              CFRelease(v27);
              v8 = v71;
              v9 = v70;
              v42 = v69;
            }

            else
            {
              OUTLINED_FUNCTION_4_11();
              v42 = v27;
            }

            CFRelease(v42);
          }

          else
          {
            OUTLINED_FUNCTION_4_11();
          }

          CFRelease(v25);
          v22 = v76;
        }

        else
        {
          v22 = 11200;
        }
      }

      v43 = bswap32(v21);
      v10 = v22;
      if (v22 >= v43 && v43 >= v9)
      {
        v9 = v43;
        v8 = v7;
      }
    }

    else
    {
      v8 = v7;
    }

LABEL_71:
    v7 = *v7;
  }

  while (v7);
  if (!v8)
  {
    v52 = 0;
    v50 = 0;
    v53 = 0;
LABEL_81:
    a3 = v68;
    v6 = MEMORY[0x1E695E480];
    goto LABEL_82;
  }

  v46 = v8[3];
  *&totalLengthOut[1] = 0;
  dataPointerOut[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(v46, 0, 0, &totalLengthOut[1], dataPointerOut);
  a3 = v68;
  if (DataPointer)
  {
    v53 = DataPointer;
    v6 = MEMORY[0x1E695E480];
    goto LABEL_99;
  }

  v48 = bswap32(*(dataPointerOut[0] + 2));
  v6 = MEMORY[0x1E695E480];
  if (*&totalLengthOut[1] - 12 < v48)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, key);
    v53 = v63;
    v50 = 0;
    v52 = 0;
    if (!v63)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v49 = v48;
    v50 = malloc_type_calloc(1uLL, v48 + 1, 0x100004077774924uLL);
    v51 = CMBlockBufferCopyDataBytes(v46, 0xCuLL, v49, v50);
    if (!v51)
    {
LABEL_76:
      v52 = CFStringCreateWithCString(allocator, v50, 0x600u);
      if (v52)
      {
        v53 = 0;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, key);
        v53 = v64;
      }

      goto LABEL_82;
    }

    v53 = v51;
    if (v50)
    {
      free(v50);
    }

LABEL_99:
    v52 = 0;
    v50 = 0;
  }

LABEL_82:
  v54 = v78[0];
  if (v78[0])
  {
    do
    {
      v55 = *v54;
      DisposeReferenceMovieAlternate(v54);
      v54 = v55;
    }

    while (v55);
  }

LABEL_84:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    free(v50);
    if (v53)
    {
LABEL_95:
      if (v52)
      {
        goto LABEL_96;
      }

      return v53;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, key);
    v53 = v56;
    if (v56)
    {
      goto LABEL_95;
    }
  }

  if (!a3 || (v57 = *v6, v58 = CFURLCreateWithString(*v6, v52, a2), (*a3 = v58) != 0) || (v59 = CFURLCreateStringByAddingPercentEscapes(v57, v52, 0, 0, 0x8000100u)) == 0 || (v60 = v59, *a3 = CFURLCreateWithString(v57, v59, a2), CFRelease(v60), *a3))
  {
    v53 = 0;
    goto LABEL_95;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_10();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v66, key);
  v53 = v62;
  if (v52)
  {
LABEL_96:
    CFRelease(v52);
  }

  return v53;
}

void FigSharedRemote_CheckIntoDiskCache(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v19;
  a18 = v21;
  xdict = 0;
  if (v22)
  {
    if (v20)
    {
      OUTLINED_FUNCTION_433();
      if (qword_1ED4CA8A8 != -1)
      {
        dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
      }

      if (!dword_1ED4CA894)
      {
        fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v18);
        if (v24 != -17508 && !OUTLINED_FUNCTION_31_10(0x696Eu, v23, &xdict))
        {
          xpc_dictionary_set_BOOL(xdict, "IsFigSharedMessage", 1);
          if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFURL())
          {
            FigXPCRemoteClientSendSyncMessage();
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9184, v21);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9183, v21);
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v25, "FigSharedRemote_CheckIntoDiskCache");
  OUTLINED_FUNCTION_652();
}

uint64_t mv_IsStreaming(const __CFURL *a1, const __CFURL *a2, __CFHTTPMessage *a3)
{
  if (a2)
  {
    a1 = a2;
  }

  if (!a1)
  {
    return 0;
  }

  if (mv_IsMimeTypeInList(a3, streamingMimeType, 0))
  {
    return 1;
  }

  return mv_IsExtensionInList(a1, a3, streamingExtensions, 0);
}

uint64_t mv_IsMimeTypeInList(__CFHTTPMessage *a1, CFStringRef **a2, _BYTE *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = FigCFHTTPCopyMimeTypeFromHTTPResponse(a1);
  if (!v5)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  v6 = v5;
  if (a3)
  {
    *a3 = 1;
  }

  IsStringInCArrayList = mv_IsStringInCArrayList(v5, a2);
  CFRelease(v6);
  return IsStringInCArrayList;
}

uint64_t mv_IsExtensionInList(CFURLRef url, __CFHTTPMessage *a2, CFStringRef **a3, _BYTE *a4)
{
  if (a4)
  {
    *a4 = 0;
    v8 = CFURLCopyPathExtension(url);
    cf = v8;
    if (v8)
    {
      v9 = v8;
      *a4 = 1;
      goto LABEL_5;
    }

LABEL_7:
    if (CFURLCanBeDecomposed(url))
    {
      v12 = CFURLCopyHostName(url);
      if (v12)
      {
        v13 = v12;
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v12, @".");
        CFRelease(v13);
        if (ArrayBySeparatingStrings)
        {
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          if (Count < 2)
          {
            CFRelease(ArrayBySeparatingStrings);
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
            IsStringInCArrayList = mv_IsStringInCArrayList(ValueAtIndex, a3);
            v18 = IsStringInCArrayList;
            if (a4 && IsStringInCArrayList)
            {
              v11 = 1;
              *a4 = 1;
              v19 = ArrayBySeparatingStrings;
              goto LABEL_21;
            }

            CFRelease(ArrayBySeparatingStrings);
            if (v18)
            {
              return 1;
            }
          }
        }
      }
    }

LABEL_15:
    if (!a2 || FigCFHTTPCopyFilenameFromContentDisposition(a2, 1, &cf))
    {
      return 0;
    }

    if (a4)
    {
      *a4 = 1;
    }

    v11 = mv_IsStringInCArrayList(cf, a3);
    v19 = cf;
LABEL_21:
    CFRelease(v19);
    return v11;
  }

  v9 = CFURLCopyPathExtension(url);
  cf = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = mv_IsStringInCArrayList(v9, a3);
  CFRelease(v9);
  if (!v10)
  {
    goto LABEL_15;
  }

  return 1;
}

CFStringRef mv_CreateCFStringFrom4CC(unsigned int a1)
{
  v1 = bswap32(a1);
  *bytes = v1;
  if ((v1 & 0x80) != 0)
  {
    v2 = __maskrune(v1, 0x40000uLL);
  }

  else
  {
    v2 = *(MEMORY[0x1E69E9830] + 4 * (v1 & 0x7F) + 60) & 0x40000;
  }

  if (!v2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
  }

  if ((v1 & 0x8000) != 0)
  {
    if (!__maskrune(BYTE1(v1), 0x40000uLL))
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * ((v1 >> 8) & 0x7F) + 60) & 0x40000) == 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
  }

  if ((v1 & 0x800000) != 0)
  {
    if (!__maskrune(BYTE2(v1), 0x40000uLL))
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * (HIWORD(v1) & 0x7F) + 60) & 0x40000) == 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
  }

  if ((v1 & 0x80000000) != 0)
  {
    if (__maskrune(HIBYTE(v1), 0x40000uLL))
    {
      return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v1) + 60) & 0x40000) != 0)
  {
    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"0x%02x%02x%02x%02x", v1, BYTE1(v1), BYTE2(v1), HIBYTE(v1));
}

uint64_t mv_GetTrackBoolean(uint64_t a1, uint64_t a2, uint64_t Value)
{
  FigTrackReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = *MEMORY[0x1E695E480];
    BOOLean = 0;
    if (!v7(v6, a2, v8, &BOOLean))
    {
      if (BOOLean)
      {
        Value = CFBooleanGetValue(BOOLean);
        CFRelease(BOOLean);
      }
    }
  }

  return Value;
}

uint64_t mv_IsValueInArrayInDictionary(const __CFDictionary *a1, const void *a2, const void *a3, Boolean *a4, _BYTE *a5)
{
  if (!a4 || !a5)
  {
    mv_IsValueInArrayInDictionary_cold_1(v17);
    return v17[0];
  }

  *a5 = 0;
  *a4 = 0;
  Value = CFDictionaryGetValue(a1, a3);
  if (!Value)
  {
    return 0;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 == CFArrayGetTypeID())
  {
    *a5 = 1;
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v18.length = Count;
      v18.location = 0;
      v12 = 0;
      *a4 = CFArrayContainsValue(v9, v18, a2);
      return v12;
    }

    return 0;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17[1]);
  v12 = v14;
  if (v14)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return v12;
}

double mv_GetCodecProperty(const __CFDictionary *a1, const void *a2, void *key, const void *a4, uint64_t a5, const void **a6)
{
  if (!a6)
  {
    mv_GetCodecProperty_cold_3(&v23);
    return result;
  }

  *a6 = 0;
  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_8;
  }

  v13 = Value;
  v14 = CFGetTypeID(Value);
  if (v14 != CFDictionaryGetTypeID())
  {
    mv_GetCodecProperty_cold_1(&v21);
    return result;
  }

  v15 = CFDictionaryGetValue(v13, a2);
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 != CFDictionaryGetTypeID())
    {
      mv_GetCodecProperty_cold_2(&v22);
      return result;
    }

    v18 = CFDictionaryGetValue(v16, a4);
    *a6 = v18;
    if (!v18)
    {
LABEL_9:
      v18 = CFDictionaryGetValue(a1, a4);
      *a6 = v18;
      if (!v18)
      {
        return result;
      }
    }
  }

  else
  {
LABEL_8:
    v18 = *a6;
    if (!*a6)
    {
      goto LABEL_9;
    }
  }

  if (CFGetTypeID(v18) != a5)
  {
    *a6 = 0;
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954334, "<<<< MediaValidator >>>>", 1549, v6);
  }

  return result;
}

uint64_t FigMediaValidatorCopyByteStream(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (!*(a1 + 44))
  {
    return 4294954513;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    return 4294954513;
  }

  v4 = CFRetain(v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t FigMediaValidatorCopyResolvedURL(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (!*(a1 + 44))
  {
    return 4294954513;
  }

  v3 = *(a1 + 8);
  if (v3 || (v3 = *a1) != 0)
  {
    v3 = CFRetain(v3);
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t FigRemote_SetSerializedCookies(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  if (!a2)
  {
    FigRemote_SetSerializedCookies_cold_3(&v12);
    return v12;
  }

  MEMORY[0x19A8D2B00](a3, a4, *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    FigRemote_SetSerializedCookies_cold_2(&v12);
    return v12;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID())
  {
    v7 = cf;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v9 = v8(a1, a2, v7);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  else
  {
    FigRemote_SetSerializedCookies_cold_1(&v12);
    v9 = v12;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigMediaValidatorRelease(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294954511;
  }

  if (a1[10])
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v3 = CMBaseObject;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  if (!a1[26])
  {
    goto LABEL_11;
  }

  FigSimpleMutexLock();
  a1[3] = 0;
  if (!a1[25])
  {
    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    a1[26] = 0;
LABEL_11:
    v6 = a1[22];
    if (v6)
    {
      CFRelease(v6);
      a1[22] = 0;
    }

    v7 = a1[10];
    if (v7)
    {
      CFRelease(v7);
      a1[10] = 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v8 = a1[1];
    if (v8)
    {
      CFRelease(v8);
      a1[1] = 0;
    }

    v9 = a1[2];
    if (v9)
    {
      CFRelease(v9);
      a1[2] = 0;
    }

    v10 = a1[6];
    if (v10)
    {
      CFRelease(v10);
      a1[6] = 0;
    }

    v11 = a1[7];
    if (v11)
    {
      CFRelease(v11);
      a1[7] = 0;
    }

    if (a1[27])
    {
      FigSemaphoreDestroy();
    }

    free(a1);
    return 0;
  }

  *(a1 + 224) = 1;
  FigThreadAbort();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fpm_streamPausedCallback(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    MutableBytePtr = CFDataGetMutableBytePtr(Owner);
    FigSimpleMutexLock();
    *(MutableBytePtr + 157) = 257;
    fpm_ensureUpdatePrimed(MutableBytePtr);
    FigSimpleMutexUnlock();
  }

  return FigRetainProxyUnlockMutex();
}

void itemfig_BossBecameIdle(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      v11 = CMBaseObjectGetDerivedStorage();
      if (*v11)
      {
        goto LABEL_23;
      }

      if (!a5)
      {
        goto LABEL_9;
      }

      v12 = v11;
      if (CFDictionaryGetValue(a5, @"ControlToken") != *(DerivedStorage + 512))
      {
        if (dword_1EAF16A10 >= 2)
        {
LABEL_9:
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
LABEL_22:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_23:
        CFRelease(v10);
        return;
      }

      Value = CFDictionaryGetValue(a5, @"OSStatus");
      if (Value)
      {
        v15 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v15))
        {
          valuePtr[0] = 0;
          CFNumberGetValue(v15, kCFNumberSInt32Type, valuePtr);
          v17 = valuePtr[0];
          if (valuePtr[0])
          {
            *(DerivedStorage + 1034) = 1;
            if (v17 == 561606517)
            {
              FailedNotificationPayload = itemfig_createFailedNotificationPayload(0, v15);
            }

            else
            {
              if (v17 != -12551)
              {
                goto LABEL_16;
              }

              FailedNotificationPayload = itemfig_createFailedNotificationPayloadWithContentStream(*(DerivedStorage + 128), v15);
              v20 = CFDictionaryGetValue(FailedNotificationPayload, @"CFError");
              itemfig_reportingAgentReportError(a2, v20, @"CoreMediaErrorDomain", @"Failed to play to end due to sample out of range", valuePtr[0]);
            }

            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            if (FailedNotificationPayload)
            {
              CFRelease(FailedNotificationPayload);
            }
          }
        }
      }

LABEL_16:
      if ((*(DerivedStorage + 200) & 0x1D) != 1)
      {
        if (a2)
        {
          CFRetain(a2);
        }

        dispatch_async_f(v12[13], a2, itemfig_BossBecameIdle_prepareNextItemForTransition_f);
        goto LABEL_23;
      }

      if (dword_1EAF16A10)
      {
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }
}

void itemfig_ReachedEnd(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = OUTLINED_FUNCTION_283_0(DerivedStorage);
    if (v5)
    {
      v6 = v5;
      v7 = CMBaseObjectGetDerivedStorage();
      if (!*v7)
      {
        if (*(v2 + 1352))
        {
          if (dword_1EAF16A10 >= 2)
          {
            OUTLINED_FUNCTION_81_0();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v9, v10, v11, v12, v13, v14, v15, v34, v35, v36, v37, SBYTE2(v37), BYTE3(v37), SHIDWORD(v37));
            if (OUTLINED_FUNCTION_124_0(v16))
            {
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_65();
              _os_log_send_and_compose_impl(v17, v18, v19, v20, v21, v22, v2, v23);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_345_0(v28, v29, v30, v31, v32);
          }
        }

        else
        {
          v24 = v7;
          v25 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
          if (v25)
          {
            v26 = v25;
            *v25 = CFRetain(v6);
            if (a2)
            {
              v27 = CFRetain(a2);
            }

            else
            {
              v27 = 0;
            }

            v26[1] = v27;
            Timebase = FigPlaybackBossGetTimebase(*(v2 + 352));
            if (Timebase)
            {
              Timebase = CFRetain(Timebase);
            }

            v26[2] = Timebase;
            dispatch_async_f(v24[13], v26, itemfig_ReachedEnd_ReachedEndGuts_f);
          }
        }
      }

      CFRelease(v6);
    }
  }
}

void itemfig_ReachedEndGuts(const void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      if (*CMBaseObjectGetDerivedStorage())
      {

        CFRelease(v5);
      }

      else
      {
        CFRetain(a1);
        FigSimpleMutexLock();
        if (*(v3 + 44))
        {
          v6 = itemfig_ReachedEndGuts_cold_1();
          if (v6 != 1)
          {
            if (v6)
            {
              if (dword_1EAF16A10)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              if (dword_1EAF16A10)
              {
                v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              playerfig_pauseForInternalReason(v5, 1);
            }
          }
        }

        FigSimpleMutexUnlock();
        playerfig_updatePlaybackStateAndBossRate(v5, 7, 0);
        if (!v3[2217])
        {
          itemfig_metricEventPublishPlaybackEndEvent();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          v3[2217] = 1;
        }

        CFRelease(a1);
        CFRelease(v5);
      }
    }
  }
}

uint64_t playerasync_Invalidate(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    CFRetain(a1);
    dispatch_async_f(*(DerivedStorage + 56), a1, playerasync_InvalidateOnQueue);
  }

  return 0;
}

void playerasync_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 5))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 5) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy();
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 56) = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v7 = *(DerivedStorage + 88);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 88) = 0;
  }

  FigConditionVariableDestroy();
  FigSimpleMutexDestroy();
  v8 = *(DerivedStorage + 96);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 96) = 0;
  }

  v9 = *(DerivedStorage + 160);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 160) = 0;
  }
}

uint64_t RegisterFigSampleBufferProcessorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferProcessorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferProcessorGetClassID_sRegisterFigSampleBufferProcessorTypeOnce, RegisterFigSampleBufferProcessorType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMovieFormatWriterCreateWithByteStream(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, void *a4)
{
  v15 = 0;
  if (!a2)
  {
    FigMovieFormatWriterCreateWithByteStream_cold_3(&cf);
    return cf;
  }

  if (!a4)
  {
    FigMovieFormatWriterCreateWithByteStream_cold_2(&cf);
    return cf;
  }

  v6 = createFigMovieFormatWriterObject(a1, 0, a3, &v15);
  v7 = v15;
  if (v6)
  {
    v12 = v6;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf = 0;
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10 && !v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf))
    {
      v11 = CFURLCopyAbsoluteURL(cf);
      if (v11)
      {
        IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
        CFRelease(v11);
        LOBYTE(v11) = IsFileOnExternalStorageDevice != 0;
      }

      else
      {
        FigMovieFormatWriterCreateWithByteStream_cold_1();
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    *(DerivedStorage + 17) = v11;
    v12 = 0;
    *(DerivedStorage + 8) = CFRetain(a2);
    *a4 = v7;
  }

  return v12;
}

uint64_t RegisterFigFormatWriterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void figMovieWriter_SetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figMovieWriter_SetProperty_cold_28(&v71);
    return;
  }

  v8 = DerivedStorage;
  if (*(DerivedStorage + 335))
  {
    emitter = fig_log_get_emitter();
    v10 = v3;
    v11 = emitter;
    v12 = 3441;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294954516, "<<< FFW_QT/ISO >>>", v12, v10);
    return;
  }

  v13 = *(DerivedStorage + 736);
  if (CFEqual(@"MovieTimeScale", a2))
  {
    LODWORD(valuePtr.value) = 0;
    if (a3 && (v14 = CFGetTypeID(a3), v14 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if (!MovieInformationSetMovieTimeScale(v13, valuePtr.value))
      {
        *(v8 + 20) = valuePtr.value;
      }
    }

    else
    {
      figMovieWriter_SetProperty_cold_1(&v71);
    }

    return;
  }

  if (CFEqual(@"ByteCountToReserveForHeader", a2))
  {
    if (a3 && (v15 = CFGetTypeID(a3), v15 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberSInt32Type, (v8 + 268));
    }

    else
    {
      figMovieWriter_SetProperty_cold_2(&v71);
    }

    return;
  }

  if (CFEqual(@"InterleavingPeriod", a2))
  {
    if (a3)
    {
      v71 = 0uLL;
      *&v72 = 0;
      CMTimeMakeFromDictionary(&v71, a3);
      if ((BYTE12(v71) & 0x1D) == 1)
      {
        *(v8 + 48) = v71;
        *(v8 + 64) = v72;
      }

      else
      {
        v17 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294954516, "<<< FFW_QT/ISO >>>", 3467, v3);
      }

      return;
    }

    v16 = fig_log_get_emitter();
    v10 = v3;
    v11 = v16;
    v12 = 3470;
    goto LABEL_4;
  }

  if (CFEqual(@"InterleavingOverflowThreshold", a2))
  {
    if (a3)
    {
      v71 = 0uLL;
      *&v72 = 0;
      CMTimeMakeFromDictionary(&v71, a3);
      if ((BYTE12(v71) & 0x1D) == 1)
      {
        *(v8 + 72) = v71;
        *(v8 + 88) = v72;
      }

      else
      {
        v21 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954516, "<<< FFW_QT/ISO >>>", 3480, v3);
      }

      return;
    }

    v20 = fig_log_get_emitter();
    v10 = v3;
    v11 = v20;
    v12 = 3483;
    goto LABEL_4;
  }

  if (CFEqual(@"MovieFragmentCheckpointInterval", a2))
  {
    if (*(v8 + 384))
    {
      figMovieWriter_SetProperty_cold_3(&v71);
      return;
    }

    if (a3)
    {
      v71 = 0uLL;
      *&v72 = 0;
      CMTimeMakeFromDictionary(&v71, a3);
      if ((BYTE12(v71) & 0x1D) == 1)
      {
        v18 = v71;
        *(v8 + 96) = v71;
        v19 = v72;
        *(v8 + 112) = v72;
        *&valuePtr.value = v18;
        valuePtr.epoch = v19;
        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&valuePtr, &time2))
        {
          *(v8 + 329) = 1;
        }

        else
        {
          *(v8 + 329) = 0;
        }
      }

      else
      {
        v23 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954516, "<<< FFW_QT/ISO >>>", 3503, v3);
      }

      return;
    }

    v22 = fig_log_get_emitter();
    v10 = v3;
    v11 = v22;
    v12 = 3506;
    goto LABEL_4;
  }

  if (CFEqual(@"InitialMovieFragmentCheckpoint", a2))
  {
    v71 = 0uLL;
    *&v72 = 0;
    CMTimeMakeFromDictionary(&v71, a3);
    if ((BYTE12(v71) & 1) == 0 || (BYTE12(v71) & 0x1D) == 1 && (valuePtr = **&MEMORY[0x1E6960CC0], *&time2.value = v71, time2.epoch = v72, CMTimeCompare(&valuePtr, &time2) < 0))
    {
      *(v8 + 120) = v71;
      *(v8 + 136) = v72;
    }

    else
    {
      figMovieWriter_SetProperty_cold_4(&valuePtr);
    }

    return;
  }

  if (CFEqual(@"PreferredOutputSegmentInterval", a2))
  {
    if (*(v8 + 384) == 1)
    {
      v71 = 0uLL;
      *&v72 = 0;
      CMTimeMakeFromDictionary(&v71, a3);
      v24 = BYTE12(v71);
      if ((~HIDWORD(v71) & 0x11) != 0)
      {
        if ((BYTE12(v71) & 0x1D) != 1 || (valuePtr = **&MEMORY[0x1E6960CC0], *&time2.value = v71, time2.epoch = v72, (CMTimeCompare(&valuePtr, &time2) & 0x80000000) == 0))
        {
          figMovieWriter_SetProperty_cold_6(&valuePtr);
          return;
        }

        v24 = BYTE12(v71);
      }

      *(v8 + 196) = v71;
      *(v8 + 212) = v72;
      *(v8 + 168) = (v24 & 0x1D) == 1 && (valuePtr = **&MEMORY[0x1E6960CC0], *&time2.value = v71, time2.epoch = v72, CMTimeCompare(&valuePtr, &time2) < 0);
    }

    else
    {
      figMovieWriter_SetProperty_cold_5(&v71);
    }

    return;
  }

  if (CFEqual(@"InitialSegmentStartTime", a2))
  {
    if (*(v8 + 384) == 1)
    {
      v71 = 0uLL;
      *&v72 = 0;
      CMTimeMakeFromDictionary(&v71, a3);
      if ((BYTE12(v71) & 0x1D) == 1)
      {
        *(v8 + 172) = v71;
        *(v8 + 188) = v72;
      }

      else
      {
        figMovieWriter_SetProperty_cold_8(&valuePtr);
      }
    }

    else
    {
      figMovieWriter_SetProperty_cold_7(&v71);
    }

    return;
  }

  if (CFEqual(@"NextMovieFragmentSequenceNumber", a2))
  {
    if (a3 && (v25 = CFGetTypeID(a3), v25 == CFNumberGetTypeID()))
    {
      LODWORD(valuePtr.value) = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      if (SLODWORD(valuePtr.value) <= 0)
      {
        figMovieWriter_SetProperty_cold_9(&v71);
      }

      else
      {
        *(v8 + 376) = valuePtr.value;
      }
    }

    else
    {
      figMovieWriter_SetProperty_cold_10(&v71);
    }

    return;
  }

  if (CFEqual(@"ProduceCombinableMovieFragments", a2))
  {
    if (a3 && (v26 = CFGetTypeID(a3), v26 == CFBooleanGetTypeID()))
    {
      *(v8 + 533) = CFBooleanGetValue(a3);
    }

    else
    {
      figMovieWriter_SetProperty_cold_11(&v71);
    }

    return;
  }

  if (CFEqual(@"AllowNonSyncSampleAtBeginningOfSegment", a2))
  {
    if (a3 && (v27 = CFGetTypeID(a3), v27 == CFBooleanGetTypeID()))
    {
      *(v8 + 534) = CFBooleanGetValue(a3);
    }

    else
    {
      figMovieWriter_SetProperty_cold_12(&v71);
    }

    return;
  }

  if (CFEqual(@"ConsolidateMovieFragments", a2))
  {
    if (a3)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        *(v8 + 531) = CFBooleanGetValue(a3);
        return;
      }
    }

    v29 = fig_log_get_emitter();
    v10 = v3;
    v11 = v29;
    v12 = 3562;
    goto LABEL_4;
  }

  if (CFEqual(@"MovieExtendsHeaderFragmentDuration", a2))
  {
    if (a3 && (v30 = CFGetTypeID(a3), v30 == CFDictionaryGetTypeID()))
    {
      CMTimeMakeFromDictionary(&v71, a3);
      time2.value = v71;
      v31 = HIDWORD(v71);
      time2.timescale = DWORD2(v71);
      v32 = v72;
      if ((BYTE12(v71) & 1) != 0 && ((BYTE12(v71) & 0x1D) != 1 || (v71 = *MEMORY[0x1E6960CC0], *&v72 = *(MEMORY[0x1E6960CC0] + 16), valuePtr.value = time2.value, valuePtr.timescale = time2.timescale, valuePtr.flags = v31, valuePtr.epoch = v32, CMTimeCompare(&v71, &valuePtr) >= 1)))
      {
        figMovieWriter_SetProperty_cold_13(&v71);
      }

      else
      {
        *(v8 + 244) = time2.value;
        *(v8 + 252) = time2.timescale;
        *(v8 + 256) = v31;
        *(v8 + 260) = v32;
      }
    }

    else
    {
      figMovieWriter_SetProperty_cold_14(&v71);
    }

    return;
  }

  if (CFEqual(@"WriteNoSamplesInMovieHeader", a2))
  {
    if (a3 && (v33 = CFGetTypeID(a3), v33 == CFBooleanGetTypeID()))
    {
      *(v8 + 332) = CFBooleanGetValue(a3);
    }

    else
    {
      figMovieWriter_SetProperty_cold_15(&v71);
    }

    return;
  }

  if (CFEqual(@"WriteBaseMediaDecodeTimeInTrackFragments", a2))
  {
    if (a3 && (v34 = CFGetTypeID(a3), v34 == CFBooleanGetTypeID()))
    {
      *(v8 + 333) = CFBooleanGetValue(a3);
    }

    else
    {
      figMovieWriter_SetProperty_cold_16(&v71);
    }

    return;
  }

  if (CFEqual(@"FileTypeMajorBrand", a2))
  {
    v35 = *(v8 + 752);

    MovieSampleDataWriterSetMajorBrand(v35, a3);
    return;
  }

  if (CFEqual(@"FileTypeMinorVersion", a2))
  {
    v36 = *(v8 + 752);

    MovieSampleDataWriterSetMinorVersion(v36, a3);
    return;
  }

  if (CFEqual(@"FileTypeCompatibleBrands", a2))
  {
    v37 = *(v8 + 752);

    MovieSampleDataWriterSetCompatibleBrands(v37, a3);
    return;
  }

  if (CFEqual(@"EnableWriting", a2))
  {
    if (a3)
    {
      v38 = CFBooleanGetTypeID();
      if (v38 == CFGetTypeID(a3))
      {
        *(v8 + 334) = CFBooleanGetValue(a3);
        return;
      }
    }

    v39 = fig_log_get_emitter();
    v10 = v3;
    v11 = v39;
    v12 = 3600;
    goto LABEL_4;
  }

  if (CFEqual(@"EnableExtendedLanguageTag", a2))
  {
    if (a3)
    {
      v40 = CFBooleanGetTypeID();
      if (v40 == CFGetTypeID(a3))
      {
        *(v8 + 328) = CFBooleanGetValue(a3);
        return;
      }
    }

    v41 = fig_log_get_emitter();
    v10 = v3;
    v11 = v41;
    v12 = 3608;
    goto LABEL_4;
  }

  if (CFEqual(@"TrackReference", a2))
  {
    if (a3 && (v42 = CFGetTypeID(a3), v42 != CFDictionaryGetTypeID()))
    {
      figMovieWriter_SetProperty_cold_17(&v71);
    }

    else
    {

      setTrackReferences(v13, a3);
    }

    return;
  }

  if (CFEqual(@"MovieMatrix", a2))
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    if (a3 && (v43 = CFGetTypeID(a3), v43 == CFArrayGetTypeID()))
    {
      if (!getFigMatrixFromArray(a3, &v71))
      {
        MovieInformationSetMovieMatrix(v13, &v71);
      }
    }

    else
    {
      figMovieWriter_SetProperty_cold_18(&valuePtr);
    }

    return;
  }

  if (CFEqual(@"PreferredRate", a2))
  {
    LODWORD(valuePtr.value) = 0;
    if (a3 && (v44 = CFGetTypeID(a3), v44 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
      MovieInformationSetPreferredRate(v13, *&valuePtr.value);
    }

    else
    {
      figMovieWriter_SetProperty_cold_19(&v71);
    }

    return;
  }

  if (CFEqual(@"PreferredVolume", a2))
  {
    LODWORD(valuePtr.value) = 0;
    if (a3 && (v45 = CFGetTypeID(a3), v45 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
      MovieInformationSetPreferredVolume(v13, *&valuePtr.value);
    }

    else
    {
      figMovieWriter_SetProperty_cold_20(&v71);
    }

    return;
  }

  if (CFEqual(@"iTunesGaplessInfo", a2))
  {
    if (!a3)
    {
      v47 = *(v8 + 696);
      *(v8 + 696) = 0;
      if (!v47)
      {
        return;
      }

      goto LABEL_160;
    }

    v46 = CFGetTypeID(a3);
    if (v46 != CFDictionaryGetTypeID())
    {
      figMovieWriter_SetProperty_cold_21(&v71);
      return;
    }

    v47 = *(v8 + 696);
    *(v8 + 696) = a3;
    goto LABEL_152;
  }

  if (CFEqual(@"MetadataToTransfer", a2))
  {
    if (a3)
    {
      v48 = CFDictionaryGetTypeID();
      if (v48 != CFGetTypeID(a3))
      {
        v49 = CFArrayGetTypeID();
        if (v49 != CFGetTypeID(a3))
        {
          return;
        }
      }

      v50 = *(v8 + 296);
      *(v8 + 296) = a3;
      CFRetain(a3);
    }

    else
    {
      v50 = *(v8 + 296);
      *(v8 + 296) = 0;
    }

    if (v50)
    {
      CFRelease(v50);
    }

    v54 = *(v8 + 304);
    if (v54)
    {
      CFRelease(v54);
      *(v8 + 304) = 0;
    }
  }

  else if (CFEqual(@"MetadataToWrite", a2))
  {
    if (a3)
    {
      v51 = CFDictionaryGetTypeID();
      if (v51 != CFGetTypeID(a3))
      {
        v52 = CFArrayGetTypeID();
        if (v52 != CFGetTypeID(a3))
        {
          return;
        }
      }

      v53 = *(v8 + 304);
      *(v8 + 304) = a3;
      CFRetain(a3);
    }

    else
    {
      v53 = *(v8 + 304);
      *(v8 + 304) = 0;
    }

    if (v53)
    {
      CFRelease(v53);
    }

    v56 = *(v8 + 296);
    if (v56)
    {
      CFRelease(v56);
      *(v8 + 296) = 0;
    }
  }

  else
  {
    if (CFEqual(@"MetadataAllowList", a2))
    {
      if (!a3)
      {
        v47 = *(v8 + 312);
        *(v8 + 312) = 0;
        if (!v47)
        {
          return;
        }

LABEL_160:
        CFRelease(v47);
        return;
      }

      v55 = CFGetTypeID(a3);
      if (v55 != CFDictionaryGetTypeID())
      {
        figMovieWriter_SetProperty_cold_22(&v71);
        return;
      }

      v47 = *(v8 + 312);
      *(v8 + 312) = a3;
LABEL_152:
      CFRetain(a3);
      if (!v47)
      {
        return;
      }

      goto LABEL_160;
    }

    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3 || (v57 = CFNumberGetTypeID(), v57 != CFGetTypeID(a3)))
      {
        v58 = fig_log_get_emitter();
        v10 = v3;
        v11 = v58;
        v12 = 3677;
        goto LABEL_4;
      }

      CFNumberGetValue(a3, kCFNumberSInt32Type, (v8 + 544));
      if (*(v8 + 560))
      {

        FigThreadSetProperty();
      }
    }

    else if (CFEqual(@"ThreadPriority", a2))
    {
      if (!a3 || (v59 = CFGetTypeID(a3), v59 != CFNumberGetTypeID()))
      {
        v61 = fig_log_get_emitter();
        v10 = v3;
        v11 = v61;
        v12 = 3697;
        goto LABEL_4;
      }

      CFNumberGetValue(a3, kCFNumberSInt32Type, (v8 + 552));
      v60 = *(v8 + 552);

      ffr_updateThreadPriority(a1, v60);
    }

    else
    {
      if (CFEqual(@"JoinWritingThreadToNewWorkgroup", a2))
      {
        if (a3)
        {
          v62 = CFGetTypeID(a3);
          if (v62 == CFBooleanGetTypeID())
          {
            *(v8 + 608) = CFBooleanGetValue(a3);
            return;
          }
        }

        v63 = fig_log_get_emitter();
        v10 = v3;
        v11 = v63;
        v12 = 3706;
        goto LABEL_4;
      }

      if (CFEqual(@"WriteInSinglePassUsingPredeterminedSizes", a2))
      {
        if (a3 && (v67 = CFGetTypeID(a3), v67 != CFDictionaryGetTypeID()))
        {
          figMovieWriter_SetProperty_cold_23(&v71);
        }

        else
        {

          setPredeterminedSizes(v8, a3);
        }
      }

      else if (CFEqual(@"WriteInSinglePassUsingMediaDataCheckpointInterval", a2))
      {
        if (a3 && (v64 = CFGetTypeID(a3), v64 != CFDictionaryGetTypeID()))
        {
          figMovieWriter_SetProperty_cold_24(&v71);
        }

        else
        {

          setMediaDataCheckpointInterval(v8, a3);
        }
      }

      else if (CFEqual(@"EncryptionConfig", a2))
      {
        if (a3 && ((v68 = CFGetTypeID(a3), v68 == EncryptionConfigGetTypeID(v68, v69)) || (v70 = CFGetTypeID(a3), v70 == CFDictionaryGetTypeID())))
        {

          setPSSHDataEntries(v8, a3);
        }

        else
        {
          figMovieWriter_SetProperty_cold_25(&v71);
        }
      }

      else if (CFEqual(@"MaximizePowerEfficiency", a2))
      {
        if (a3 && (v65 = CFGetTypeID(a3), v65 == CFBooleanGetTypeID()))
        {
          *(v8 + 768) = *MEMORY[0x1E695E4D0] == a3;
        }

        else
        {
          figMovieWriter_SetProperty_cold_26(&v71);
        }
      }

      else if (CFEqual(@"64BitDataOffsetInTrackRunAtomPolicy", a2))
      {
        if (a3 && (v66 = CFGetTypeID(a3), v66 != CFStringGetTypeID()))
        {
          figMovieWriter_SetProperty_cold_27(&v71);
        }

        else
        {

          set64BitDataOffsetInTrackRunAtomPolicy(v8, a3);
        }
      }
    }
  }
}

void figMovieWriter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFMutableArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figMovieWriter_CopyProperty_cold_5(&v32);
    return;
  }

  if (!a4)
  {
    figMovieWriter_CopyProperty_cold_4(&v32);
    return;
  }

  v9 = DerivedStorage;
  if (*(DerivedStorage + 335))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 3761, v4);
    return;
  }

  v11 = *(DerivedStorage + 736);
  if (CFEqual(@"MovieTimeScale", a2))
  {
    figMovieWriter_CopyProperty_cold_1();
    return;
  }

  if (CFEqual(@"HeaderByteCount", a2))
  {
    *&v32 = 0;
    if (calculateHeaderByteCount(v9, &v32))
    {
      return;
    }

    LODWORD(time.value) = v32;
    v14 = *MEMORY[0x1E695E480];
    p_time = &time;
    v16 = kCFNumberSInt32Type;
LABEL_30:
    SInt64 = CFNumberCreate(v14, v16, p_time);
    goto LABEL_18;
  }

  if (CFEqual(@"TotalMovieAndMovieFragmentHeaderByteCountWritten", a2))
  {
    SInt64 = FigCFNumberCreateSInt64();
LABEL_18:
    *a4 = SInt64;
    return;
  }

  if (CFEqual(@"MediaDataLocation", a2))
  {

    createMediaDataLocation(a3, v9, a4);
    return;
  }

  if (CFEqual(@"EstimatedFileByteCount", a2))
  {
    *&v32 = 0;
    if (estimateResultFileSize(v9, &v32))
    {
      return;
    }

    v14 = *MEMORY[0x1E695E480];
    p_time = &v32;
    v16 = kCFNumberSInt64Type;
    goto LABEL_30;
  }

  if (CFEqual(@"LongestMediaDecodeDuration", a2))
  {
    v32 = 0uLL;
    *&v33 = 0;
    getLongestMediaDecodeDuration(v9, &v32);
    *&time.value = v32;
    time.epoch = v33;
    v13 = &time;
LABEL_15:
    SInt64 = CMTimeCopyAsDictionary(v13, a3);
    goto LABEL_18;
  }

  if (CFEqual(@"ByteCountToReserveForHeader", a2))
  {
    SInt64 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (v9 + 268));
    goto LABEL_18;
  }

  if (CFEqual(@"InterleavingPeriod", a2))
  {
    v32 = *(v9 + 48);
    v17 = *(v9 + 64);
LABEL_42:
    *&v33 = v17;
    v13 = &v32;
    goto LABEL_15;
  }

  if (CFEqual(@"InterleavingOverflowThreshold", a2))
  {
    v32 = *(v9 + 72);
    v17 = *(v9 + 88);
    goto LABEL_42;
  }

  if (CFEqual(@"MovieFragmentCheckpointInterval", a2))
  {
    v32 = *(v9 + 96);
    v17 = *(v9 + 112);
    goto LABEL_42;
  }

  if (CFEqual(@"InitialMovieFragmentCheckpoint", a2))
  {
    v32 = *(v9 + 120);
    v17 = *(v9 + 136);
    goto LABEL_42;
  }

  if (CFEqual(@"PreferredOutputSegmentInterval", a2) || CFEqual(@"InitialSegmentStartTime", a2))
  {
    v32 = *(v9 + 196);
    v17 = *(v9 + 212);
    goto LABEL_42;
  }

  if (CFEqual(@"ProduceCombinableMovieFragments", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 533);
LABEL_49:
    if (!v19)
    {
      v18 = MEMORY[0x1E695E4C0];
    }

    SInt64 = *v18;
LABEL_52:
    SInt64 = CFRetain(SInt64);
    goto LABEL_18;
  }

  if (CFEqual(@"AllowNonSyncSampleAtBeginningOfSegment", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 534);
    goto LABEL_49;
  }

  if (CFEqual(@"ConsolidateMovieFragments", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 531);
    goto LABEL_49;
  }

  if (CFEqual(@"MovieExtendsHeaderFragmentDuration", a2))
  {
    v32 = *(v9 + 244);
    v17 = *(v9 + 260);
    goto LABEL_42;
  }

  if (CFEqual(@"WriteNoSamplesInMovieHeader", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 332);
    goto LABEL_49;
  }

  if (CFEqual(@"WriteBaseMediaDecodeTimeInTrackFragments", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 333);
    goto LABEL_49;
  }

  if (CFEqual(@"FileTypeMajorBrand", a2))
  {
    v20 = *(v9 + 752);

    MovieSampleDataWriterCopyMajorBrand(v20, a4);
    return;
  }

  if (CFEqual(@"FileTypeMinorVersion", a2))
  {
    v21 = *(v9 + 752);

    MovieSampleDataWriterCopyMinorVersion(v21, a4);
    return;
  }

  if (CFEqual(@"FileTypeCompatibleBrands", a2))
  {
    v22 = *(v9 + 752);

    MovieSampleDataWriterCopyCompatibleBrands(v22, a4);
    return;
  }

  if (CFEqual(@"EnableWriting", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 334);
    goto LABEL_49;
  }

  if (CFEqual(@"EnableExtendedLanguageTag", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 328);
    goto LABEL_49;
  }

  if (CFEqual(@"TrackReference", a2))
  {

    MovieInformationCreateTrackReferenceDictionary(a3, v11, a4);
    return;
  }

  if (CFEqual(@"MovieMatrix", a2))
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    if (!MovieInformationGetBasicMetrics(v11, 0, 0, 0, &v32))
    {
      copyFigMatrixAsArray(a3, &v32, a4);
    }

    return;
  }

  if (CFEqual(@"MetadataWriter", a2))
  {
    *&v32 = 0;
    v23 = *(v9 + 692);
    v24 = &kFigMetadataFormat_QuickTimeUserData;
    if (v23)
    {
      v24 = &kFigMetadataFormat_ISOUserData;
    }

    if ((v23 & 4) != 0)
    {
      v25 = &kFigMetadataFormat_iTunes;
    }

    else
    {
      v25 = v24;
    }

    getMetadataSerializer(a3, v9, *v25, &v32);
    if (!v26)
    {
      FigMetadataSerializerGetFigMetadataWriter();
      if (SInt64)
      {
        SInt64 = CFRetain(SInt64);
      }

      goto LABEL_18;
    }

    return;
  }

  if (CFEqual(@"MetadataWriters", a2))
  {

    createMetadataWritersDictionary(a3, v9, a4);
    return;
  }

  if (CFEqual(@"PreferredRate", a2))
  {
    figMovieWriter_CopyProperty_cold_2();
    return;
  }

  if (CFEqual(@"PreferredVolume", a2))
  {
    figMovieWriter_CopyProperty_cold_3();
    return;
  }

  if (CFEqual(@"iTunesGaplessInfo", a2))
  {
    SInt64 = *(v9 + 696);
    if (!SInt64)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

  if (CFEqual(@"MetadataToTransfer", a2))
  {
    v27 = *(v9 + 296);
    if (v27)
    {
LABEL_103:
      SInt64 = CFPropertyListCreateDeepCopy(a3, v27, 0);
      goto LABEL_18;
    }

LABEL_106:
    *a4 = 0;
    return;
  }

  if (CFEqual(@"MetadataToWrite", a2))
  {
    v27 = *(v9 + 304);
    if (v27)
    {
      goto LABEL_103;
    }

    goto LABEL_106;
  }

  if (CFEqual(@"MetadataAllowList", a2))
  {
    SInt64 = *(v9 + 312);
    if (!SInt64)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

  if (CFEqual(@"JoinWritingThreadToNewWorkgroup", a2))
  {
    v28 = MEMORY[0x1E695E4D0];
    if (!*(v9 + 608))
    {
      v28 = MEMORY[0x1E695E4C0];
    }

    SInt64 = *v28;
    if (!*v28)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

  if (CFEqual(@"PictureCollectionWriter", a2))
  {
    v29 = *(v9 + 752);
    v30 = *(v9 + 720);

    FigIFFPictureCollectionWriterCreateWithMovieSampleDataWriter(v29, v30, 0, a3, a4);
    return;
  }

  if (CFEqual(@"WriteInSinglePassUsingPredeterminedSizes", a2))
  {
    *&v32 = 0;
    v31 = copyPredeterminedSizesAsDictionary(v9, a3, &v32);
    goto LABEL_125;
  }

  if (CFEqual(@"WriteInSinglePassUsingMediaDataCheckpointInterval", a2))
  {
    *&v32 = 0;
    v31 = copyMediaDataCheckpointIntervalAsDictionary(v9, a3, &v32);
LABEL_125:
    if (!v31)
    {
      *a4 = v32;
    }

    return;
  }

  if (CFEqual(@"MaximizePowerEfficiency", a2))
  {
    v18 = MEMORY[0x1E695E4D0];
    v19 = *(v9 + 768);
    goto LABEL_49;
  }

  if (CFEqual(@"64BitDataOffsetInTrackRunAtomPolicy", a2))
  {
    copy64BitDataOffsetInTrackRunAtomPolicy(v9, a4);
  }
}

double getMetadataSerializer(uint64_t a1, uint64_t a2, CFTypeRef cf1, void *a4)
{
  if (!cf1)
  {
    getMetadataSerializer_cold_2(&v17);
    return result;
  }

  if (!a4)
  {
    getMetadataSerializer_cold_1(&v16);
    return result;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.udta"))
  {
    if (*(a2 + 692))
    {
      return result;
    }

    v10 = *(a2 + 280);
    if (v10)
    {
      goto LABEL_20;
    }

    result = FigMetadataSerializerCreateForQuickTimeUserData(a1, (a2 + 280));
    if (v11)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (CFEqual(cf1, @"org.mp4ra"))
  {
    if ((*(a2 + 692) & 1) == 0)
    {
      return result;
    }

    v10 = *(a2 + 280);
    if (v10)
    {
      goto LABEL_20;
    }

    result = FigMetadataSerializerCreateForISOUserData(a1, (a2 + 280));
    if (v13)
    {
      return result;
    }

LABEL_17:
    v10 = *(a2 + 280);
LABEL_20:
    *a4 = v10;
    return result;
  }

  if (CFEqual(cf1, @"com.apple.quicktime.mdta"))
  {
    v10 = *(a2 + 272);
    if (!v10)
    {
      result = FigMetadataSerializerCreateForQuickTimeMetadata(a1, (a2 + 272));
      if (v12)
      {
        return result;
      }

      v10 = *(a2 + 272);
    }

    goto LABEL_20;
  }

  if (CFEqual(cf1, @"com.apple.itunes"))
  {
    v10 = *(a2 + 288);
    if (v10)
    {
      goto LABEL_20;
    }

    result = FigMetadataSerializerCreateForiTunes(a1, (a2 + 288));
    if (!v15)
    {
      v10 = *(a2 + 288);
      goto LABEL_20;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 10485, v4);
  }

  return result;
}

uint64_t RegisterFigMetadataSerializerBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void FigUserDataSerializerSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigUserDataSerializerSetProperty_cold_1(&v17);
    return;
  }

  v7 = DerivedStorage;
  if (CFEqual(@"freeAtomSize", a2))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        valuePtr = 0;
        if (CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
        {
          *(v7 + 8) = valuePtr;
        }

        else
        {
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954715, "<<<< FMDW_UserData >>>>", 431, v3);
        }

        return;
      }
    }

    v9 = fig_log_get_emitter();
    v10 = v3;
    v11 = 434;
  }

  else
  {
    if (!CFEqual(@"minimumSize", a2))
    {
      return;
    }

    if (a3)
    {
      v12 = CFNumberGetTypeID();
      if (v12 == CFGetTypeID(a3))
      {
        v15 = 0;
        if (CFNumberGetValue(a3, kCFNumberSInt32Type, &v15))
        {
          *(v7 + 12) = v15;
        }

        else
        {
          v14 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954715, "<<<< FMDW_UserData >>>>", 445, v3);
        }

        return;
      }
    }

    v9 = fig_log_get_emitter();
    v10 = v3;
    v11 = 448;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954715, "<<<< FMDW_UserData >>>>", v11, v10);
}

void figMovieWriter_AddTrack(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v53 = 0;
  queueOut = 0;
  triggerToken = 0;
  triggerTokenOut = 0;
  v49 = 0;
  v50 = 0;
  cf = 0;
  ptr = 0;
  v46 = 0;
  if (a4)
  {
    v8 = DerivedStorage;
    Count = CFArrayGetCount(*(DerivedStorage + 488));
    v10 = malloc_type_calloc(1uLL, 0x3B0uLL, 0x10E0040FD3C06F9uLL);
    v11 = v10;
    if (!v10)
    {
      figMovieWriter_AddTrack_cold_2(&time);
      Mutable = 0;
      goto LABEL_29;
    }

    v12 = MEMORY[0x1E6960CF0];
    v13 = *MEMORY[0x1E6960CF0];
    *(v10 + 200) = *(MEMORY[0x1E6960CF0] + 16);
    v14 = *(v12 + 48);
    *(v10 + 216) = *(v12 + 32);
    *(v10 + 1) = Count;
    *(v10 + 2) = v8;
    *v10 = a2;
    v15 = MEMORY[0x1E6960CC0];
    *(v10 + 232) = v14;
    v16 = *v15;
    *(v10 + 136) = *v15;
    v17 = *(v15 + 2);
    *(v10 + 19) = v17;
    *(v10 + 10) = v16;
    *(v10 + 22) = v17;
    *(v10 + 31) = *(v12 + 64);
    *(v10 + 184) = v13;
    *(v10 + 16) = v16;
    *(v10 + 34) = v17;
    v18 = MEMORY[0x1E6960C88];
    *(v10 + 280) = *MEMORY[0x1E6960C88];
    *(v10 + 37) = *(v18 + 16);
    v19 = MEMORY[0x1E6960C80];
    *(v10 + 19) = *MEMORY[0x1E6960C80];
    *(v10 + 40) = *(v19 + 16);
    *(v10 + 42) = vneg_f32(0xFFFFFFFFLL);
    v44 = v16;
    *(v10 + 27) = v16;
    *(v10 + 56) = v17;
    *(v10 + 26) = 0;
    v10[352] = 1;
    *(v10 + 16) = 257;
    v10[35] = 1;
    v10[37] = 1;
    if (MovieInformationCreateTrack(*(v8 + 736), a2, 0, &v46, &cf))
    {
      goto LABEL_84;
    }

    v20 = MEMORY[0x1E695E480];
    v21 = v44;
    if (a2 == 1986618469)
    {
      goto LABEL_22;
    }

    if (a2 <= 1885954931)
    {
      if (a2 <= 1751216243)
      {
        if (a2 != 1635088502)
        {
          if (a2 == 1668047728)
          {
            v22 = MovieTrackSetLayer(cf, -1);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

LABEL_19:
        *(v11 + 352) = 0;
        goto LABEL_22;
      }

      if (a2 == 1835365473)
      {
        goto LABEL_19;
      }

      if (a2 != 1751216244)
      {
        goto LABEL_22;
      }

      *(v11 + 108) = v44;
      *(v11 + 124) = v17;
      *(v11 + 344) = 1;
      *(v11 + 492) = 1;
      if (editBuilderCreate(*v20, &v49))
      {
        goto LABEL_84;
      }

LABEL_23:
      v24 = *v20;
      Mutable = CFArrayCreateMutable(v24, 0, 0);
      if (!Mutable)
      {
        figMovieWriter_AddTrack_cold_1(&time);
        goto LABEL_29;
      }

      CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      if (CMBufferQueueCreate(v24, 0, CallbacksForUnsortedSampleBuffers, &queueOut))
      {
        goto LABEL_29;
      }

      if (CMBufferQueueSetValidationCallback(queueOut, validateSampleBufferForTrackCallback, v11))
      {
        goto LABEL_29;
      }

      *&time.value = v44;
      time.epoch = v17;
      if (CMBufferQueueInstallTrigger(queueOut, wakeupWritingThreadForDataReady, v11, 7, &time, &triggerTokenOut))
      {
        goto LABEL_29;
      }

      *&time.value = v44;
      time.epoch = v17;
      if (CMBufferQueueInstallTrigger(queueOut, wakeupWritingThreadForEndOfDataReached, v11, 8, &time, &triggerToken))
      {
        goto LABEL_29;
      }

      time = *(v8 + 72);
      if (FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds())
      {
        goto LABEL_29;
      }

      v31 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      if (CMBufferQueueCreate(v24, 0, v31, &v53))
      {
        goto LABEL_29;
      }

      v32 = v53;
      *(v11 + 608) = queueOut;
      *(v11 + 616) = v32;
      v33 = triggerToken;
      *(v11 + 624) = triggerTokenOut;
      *(v11 + 632) = v33;
      *(v11 + 640) = v50;
      v34 = *(v8 + 48);
      *(v11 + 664) = *(v8 + 64);
      *(v11 + 648) = v34;
      *&time.value = v44;
      time.epoch = v17;
      if (*(v8 + 329))
      {
        v35 = 96;
      }

      else
      {
        if (!*(v8 + 330))
        {
LABEL_61:
          *(v11 + 672) = time;
          *(v11 + 424) = Mutable;
          v36 = ptr;
          *(v11 + 496) = v49;
          *(v11 + 536) = v36;
          v37 = cf;
          *(v11 + 736) = cf;
          *(v11 + 732) = v46;
          MovieHeaderMakerAddTrack(*(v8 + 744), v37, (v11 + 744));
          if (!v38 && !MovieSampleDataWriterAddTrack(*(v8 + 752), a2, chunkCallback, v11, (v11 + 760)) && !MovieSampleDataWriterTrackSetPreferredChunkAlignment(*(v8 + 752), *(v11 + 760), 512) && !MediaSampleTimingGeneratorCreate(v24, a2, *(v11 + 344), (v11 + 752)))
          {
            if (*(v8 + 384))
            {
              v39 = FigCFEqual();
              if (a2 == 1986618469 && v39)
              {
                *(v11 + 912) = 1;
              }

              setNegativeCompositionOffsetsInISOFilePolicy(v8, v11, @"NegativeCompositionOffsetsInISOFilePolicy_Allow");
              if (v40)
              {
                goto LABEL_29;
              }

              *(v11 + 729) = 1;
            }

            CFArrayAppendValue(*(v8 + 488), v11);
            v41 = *(v8 + 496);
            if (v41)
            {
              v42 = *(v8 + 496);
              do
              {
                v43 = v42;
                v42 = *(v42 + 24);
              }

              while (v42);
              *(v43 + 24) = v11;
            }

            else
            {
              v41 = v11;
            }

            v11 = 0;
            Mutable = 0;
            *(v8 + 496) = v41;
            ptr = 0;
            v49 = 0;
            v53 = 0;
            queueOut = 0;
            triggerToken = 0;
            triggerTokenOut = 0;
            v50 = 0;
            cf = 0;
            *a4 = v46;
          }

LABEL_29:
          FigCEA608DataInspectorRelease(ptr);
          editBuilderRelease(v49);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v27 = queueOut;
          if (queueOut)
          {
            if (triggerTokenOut)
            {
              CMBufferQueueRemoveTrigger(queueOut, triggerTokenOut);
              v27 = queueOut;
            }

            if (triggerToken)
            {
              CMBufferQueueRemoveTrigger(v27, triggerToken);
              v27 = queueOut;
            }

            if (v50)
            {
              CMBufferQueueRemoveTrigger(v27, v50);
            }

            FigBufferQueueRelease();
          }

          if (v53)
          {
            CFRelease(v53);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v11)
          {
            free(v11);
          }

          return;
        }

        v35 = 144;
      }

      time = *(v8 + v35);
      goto LABEL_61;
    }

    if (a2 == 1885954932)
    {
      goto LABEL_19;
    }

    if (a2 == 1953325924)
    {
      v22 = MovieTrackSetTimecodeSpecifics(cf, 0);
LABEL_21:
      v21 = v44;
      if (!v22)
      {
        goto LABEL_22;
      }

LABEL_84:
      Mutable = 0;
      goto LABEL_29;
    }

    if (a2 != 1936684398)
    {
LABEL_22:
      *(v11 + 108) = v21;
      *(v11 + 124) = v17;
      *(v11 + 344) = 2;
      goto LABEL_23;
    }

    if (*(v8 + 18))
    {
      *(v11 + 108) = v44;
      *(v11 + 124) = v17;
    }

    else
    {
      CMTimeMakeWithSeconds(&time, 2.0, 1);
      *(v11 + 108) = time;
    }

    *(v11 + 344) = 1;
    if ((*(v8 + 324) - 6) < 0xFFFFFFFB)
    {
      goto LABEL_23;
    }

    *(v11 + 492) = 1;
    v28 = *v20;
    if (editBuilderCreate(*v20, &v49))
    {
      goto LABEL_84;
    }

    v29 = *(v8 + 324);
    if (v29 == 5)
    {
      v30 = (v11 + 508);
      if (*(v8 + 720) != @"com.apple.m4a-audio")
      {
        *(v11 + 768) = 5;
        *(v11 + 504) = 0;
        *v30 = v44;
        *(v11 + 524) = v17;
        goto LABEL_78;
      }

      *(v11 + 768) = 2;
      *(v11 + 504) = 0;
      *v30 = v44;
      *(v11 + 524) = v17;
    }

    else
    {
      *(v11 + 768) = v29;
      *(v11 + 504) = 0;
      *(v11 + 508) = v44;
      *(v11 + 524) = v17;
      if (v29 != 2)
      {
LABEL_78:
        if (!*(v8 + 384))
        {
          goto LABEL_23;
        }
      }
    }

    if (editBoundaryDetectorCreate(v28, &ptr))
    {
      goto LABEL_84;
    }

    goto LABEL_23;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", 4167, v4);
}

void figMovieWriter_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const __CFAllocator *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3 || (v29 = DerivedStorage) == 0 || *(DerivedStorage + 335))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
LABEL_5:
    OUTLINED_FUNCTION_65_6();

    FigSignalErrorAtGM(v30);
    return;
  }

  v173 = 0;
  getTrackInfoForTrackID(DerivedStorage, v27, &v173);
  if (v32)
  {
    goto LABEL_15;
  }

  v33 = v173;
  v34 = *(v173 + 736);
  if (CFEqual(@"MediaTimeScale", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v35 = CFGetTypeID(a4);
      if (v35 == CFNumberGetTypeID())
      {
        v36 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v36, kCFNumberSInt32Type, v37);
        if (!MediaSampleTimingGeneratorSetMediaTimeScale(*(v33 + 752), *v170) && !MovieTrackSetMediaTimeScale(v34, *v170))
        {
          *(v33 + 104) = *v170;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"QTLoadSettings", a3))
  {
    if (a4)
    {
      v38 = CFGetTypeID(a4);
      if (v38 == CFDictionaryGetTypeID())
      {
        v172 = 0;
        v171 = 0u;
        memset(v170, 0, sizeof(v170));
        v39 = OUTLINED_FUNCTION_19_24();
        if (!getFigTrackLoadSettingsFromDictionary(v39, v40))
        {
          v41 = *&v170[16];
          *(v33 + 44) = *v170;
          *(v33 + 60) = v41;
          *(v33 + 76) = v171;
          *(v33 + 92) = v172;
          *(v33 + 40) = 1;
        }

        goto LABEL_15;
      }

      goto LABEL_145;
    }

    *(v33 + 40) = 0;
LABEL_15:
    OUTLINED_FUNCTION_65_6();
    return;
  }

  if (CFEqual(@"MediaDataPrecedence", a3))
  {
    if (!a4)
    {
      goto LABEL_145;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      goto LABEL_145;
    }

    *v170 = 0;
    v43 = OUTLINED_FUNCTION_16_23();
    CFNumberGetValue(v43, kCFNumberSInt32Type, v44);
    *(v33 + 100) = 0;
    goto LABEL_15;
  }

  if (CFEqual(@"InterleavingAdvance", a3))
  {
    if (a4)
    {
      memset(v170, 0, 24);
      CMTimeMakeFromDictionary(v170, a4);
      if ((v170[12] & 0x1D) == 1)
      {
        *(v33 + 108) = *v170;
        *(v33 + 124) = *&v170[16];
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      goto LABEL_15;
    }

LABEL_145:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    goto LABEL_5;
  }

  if (CFEqual(@"InterleavingOrder", a3))
  {
    if (a4)
    {
      v45 = CFGetTypeID(a4);
      if (v45 == CFNumberGetTypeID())
      {
        FigCFNumberGetSInt32();
        OUTLINED_FUNCTION_49_4();
        *(v33 + 132) = v46;
        goto LABEL_15;
      }
    }

LABEL_249:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  if (CFEqual(@"PreferredChunkAlignment", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v47 = CFGetTypeID(a4);
      if (v47 == CFNumberGetTypeID())
      {
        v48 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v48, kCFNumberSInt32Type, v49);
        MovieSampleDataWriterTrackSetPreferredChunkAlignment(*(v29 + 752), *(v33 + 760), *v170);
        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"PreferredChunkSize", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v50 = CFGetTypeID(a4);
      if (v50 == CFNumberGetTypeID())
      {
        v51 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v51, kCFNumberSInt32Type, v52);
        MovieSampleDataWriterTrackSetPreferredChunkSize(*(v29 + 752), *(v33 + 760), *v170);
        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"PreferredChunkDuration", a3))
  {
    *v170 = *MEMORY[0x1E6960C70];
    *&v170[16] = *(MEMORY[0x1E6960C70] + 16);
    if (a4)
    {
      v53 = CFGetTypeID(a4);
      if (v53 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(v170, a4);
        v54 = *(v29 + 752);
        v55 = *(v33 + 760);
        v168 = *v170;
        v169 = *&v170[16];
        MovieSampleDataWriterTrackSetPreferredChunkDuration(v54, v55, &v168);
        goto LABEL_15;
      }
    }

LABEL_59:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  if (CFEqual(@"AlternateGroupID", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v56 = CFGetTypeID(a4);
      if (v56 == CFNumberGetTypeID())
      {
        v57 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v57, kCFNumberSInt16Type, v58);
        MovieInformationSetTrackAlternateGroupID(*(v29 + 736), v34, *v170);
        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"DefaultAlternateGroupID", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v59 = CFGetTypeID(a4);
      if (v59 == CFNumberGetTypeID())
      {
        v60 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v60, kCFNumberSInt16Type, v61);
        MovieTrackSetDefaultAlternateGroupID(v34, *v170);
        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"ProvisionalAlternateGroupID", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v62 = CFGetTypeID(a4);
      if (v62 == CFNumberGetTypeID())
      {
        v63 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v63, kCFNumberSInt16Type, v64);
        MovieTrackSetProvisionalAlternateGroupID(v34, *v170);
        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"TrackVolume", a3))
  {
    *v170 = 0;
    if (a4)
    {
      v65 = CFGetTypeID(a4);
      if (v65 == CFNumberGetTypeID())
      {
        v66 = OUTLINED_FUNCTION_16_23();
        CFNumberGetValue(v66, kCFNumberFloat32Type, v67);
        MovieTrackSetVolume(v34, *v170);
        goto LABEL_15;
      }
    }

    goto LABEL_249;
  }

  if (CFEqual(@"EditList", a3))
  {
    if (a4)
    {
      v68 = CFGetTypeID(a4);
      if (v68 != CFArrayGetTypeID())
      {
        goto LABEL_145;
      }

      v69 = *(v33 + 400);
      *(v33 + 400) = a4;
      CFRetain(a4);
    }

    else
    {
      v69 = *(v33 + 400);
      *(v33 + 400) = 0;
    }

    if (v69)
    {
      CFRelease(v69);
    }

    if (*(v29 + 329))
    {
      *(v33 + 353) = 1;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"LanguageTag", a3))
  {
    if (a4)
    {
      v70 = CFGetTypeID(a4);
      if (v70 != CFStringGetTypeID())
      {
        goto LABEL_145;
      }

      v71 = *(v33 + 408);
      *(v33 + 408) = a4;
      goto LABEL_90;
    }

    v71 = *(v33 + 408);
    *(v33 + 408) = 0;
LABEL_99:
    if (v71)
    {
      CFRelease(v71);
    }

    goto LABEL_15;
  }

  if (CFEqual(@"ExtendedLanguageTag", a3))
  {
    if (!a4)
    {
      v71 = *(v33 + 416);
      *(v33 + 416) = 0;
      goto LABEL_99;
    }

    v72 = CFGetTypeID(a4);
    if (v72 != CFStringGetTypeID())
    {
      goto LABEL_145;
    }

    v71 = *(v33 + 416);
    *(v33 + 416) = a4;
    goto LABEL_90;
  }

  if (CFEqual(@"EnableTrack", a3))
  {
    if (!a4)
    {
      goto LABEL_59;
    }

    v73 = CFGetTypeID(a4);
    if (v73 != CFBooleanGetTypeID())
    {
      goto LABEL_59;
    }

    CFBooleanGetValue(a4);
    OUTLINED_FUNCTION_65_6();

    MovieTrackSetEnabled(v74, v75);
  }

  else
  {
    if (CFEqual(@"InterleaveTrack", a3))
    {
      if (!a4)
      {
        goto LABEL_145;
      }

      v77 = CFBooleanGetTypeID();
      if (v77 != CFGetTypeID(a4))
      {
        goto LABEL_145;
      }

      CFBooleanGetValue(a4);
      OUTLINED_FUNCTION_49_4();
      *(v33 + 352) = v78;
      goto LABEL_15;
    }

    if (CFEqual(@"TrackDimensions", a3))
    {
      if (a4)
      {
        v79 = CFGetTypeID(a4);
        if (v79 != CFDictionaryGetTypeID())
        {
          goto LABEL_145;
        }

        *v170 = 0;
        *&v170[8] = 0;
        v80 = OUTLINED_FUNCTION_19_24();
        if (getDimensionsFromDictionary(v80, v81))
        {
          goto LABEL_15;
        }

        v82 = OUTLINED_FUNCTION_9_33();
        if (MovieTrackSetTrackDimensions(v82, v83, v84))
        {
          goto LABEL_15;
        }

        v85 = 0;
      }

      else
      {
        v85 = 1;
      }

      *(v33 + 32) = v85;
      goto LABEL_15;
    }

    if (CFEqual(@"CleanApertureDimensions", a3))
    {
      if (a4)
      {
        v86 = CFGetTypeID(a4);
        if (v86 == CFDictionaryGetTypeID())
        {
          *v170 = 0;
          *&v170[8] = 0;
          v87 = OUTLINED_FUNCTION_19_24();
          if (getDimensionsFromDictionary(v87, v88))
          {
            goto LABEL_15;
          }

          v89 = OUTLINED_FUNCTION_9_33();
          if (MovieTrackSetCleanApertureDimensions(v89, v90, v91))
          {
            goto LABEL_15;
          }

          v92 = 0;
          v93 = 1;
        }

        else
        {
          if (!CFEqual(@"NoDimensions", a4))
          {
            goto LABEL_145;
          }

          v93 = 0;
          v92 = 0;
        }
      }

      else
      {
        v93 = 0;
        v92 = 1;
      }

      *(v33 + 33) = v92;
      *(v33 + 34) = v93;
      goto LABEL_15;
    }

    if (CFEqual(@"ProductionApertureDimensions", a3))
    {
      if (a4)
      {
        v94 = CFGetTypeID(a4);
        if (v94 == CFDictionaryGetTypeID())
        {
          *v170 = 0;
          *&v170[8] = 0;
          v95 = OUTLINED_FUNCTION_19_24();
          if (getDimensionsFromDictionary(v95, v96))
          {
            goto LABEL_15;
          }

          v97 = OUTLINED_FUNCTION_9_33();
          if (MovieTrackSetProductionApertureDimensions(v97, v98, v99))
          {
            goto LABEL_15;
          }

          v100 = 0;
          v101 = 1;
        }

        else
        {
          if (!CFEqual(@"NoDimensions", a4))
          {
            goto LABEL_145;
          }

          v101 = 0;
          v100 = 0;
        }
      }

      else
      {
        v101 = 0;
        v100 = 1;
      }

      *(v33 + 35) = v100;
      *(v33 + 36) = v101;
      goto LABEL_15;
    }

    if (CFEqual(@"EncodedPixelsDimensions", a3))
    {
      if (a4)
      {
        v102 = CFGetTypeID(a4);
        if (v102 == CFDictionaryGetTypeID())
        {
          *v170 = 0;
          *&v170[8] = 0;
          v103 = OUTLINED_FUNCTION_19_24();
          if (getDimensionsFromDictionary(v103, v104))
          {
            goto LABEL_15;
          }

          v105 = OUTLINED_FUNCTION_9_33();
          if (MovieTrackSetEncodedPixelsDimensions(v105, v106, v107))
          {
            goto LABEL_15;
          }

          v108 = 0;
          v109 = 1;
        }

        else
        {
          if (!CFEqual(@"NoDimensions", a4))
          {
            goto LABEL_145;
          }

          v108 = 0;
          v109 = 0;
        }
      }

      else
      {
        v109 = 0;
        v108 = 1;
      }

      *(v33 + 37) = v108;
      *(v33 + 38) = v109;
      goto LABEL_15;
    }

    if (CFEqual(@"TrackMatrix", a3))
    {
      LODWORD(v171) = 0;
      memset(v170, 0, sizeof(v170));
      if (a4)
      {
        v110 = CFGetTypeID(a4);
        if (v110 == CFArrayGetTypeID())
        {
          v111 = OUTLINED_FUNCTION_19_24();
          if (!getFigMatrixFromArray(v111, v112))
          {
            MovieTrackSetTrackMatrix(v34, v170);
          }

          goto LABEL_15;
        }
      }

      goto LABEL_249;
    }

    if (CFEqual(@"FormatDescriptionArray", a3))
    {
      if (a4)
      {
        v113 = CFGetTypeID(a4);
        if (v113 == CFArrayGetTypeID())
        {
          MovieTrackRemoveAllSampleDescriptions(v34);
          Count = CFArrayGetCount(a4);
          if (Count >= 1)
          {
            v115 = Count;
            v116 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(a4, v116);
              OUTLINED_FUNCTION_496();
              if (MovieTrackFindOrAddSampleDescription(v117, v118, v119, v120))
              {
                break;
              }

              if (v115 == ++v116)
              {
                setDefaultTrackDimensionsIfNecessary(v33);
                goto LABEL_15;
              }
            }
          }

          goto LABEL_15;
        }

        goto LABEL_145;
      }

      MovieTrackRemoveAllSampleDescriptions(v34);
      goto LABEL_15;
    }

    if (!CFEqual(@"ReplacementFormatDescriptionArray", a3))
    {
      if (CFEqual(@"TrackMetadataToTransfer", a3))
      {
        if (a4)
        {
          CFDictionaryGetTypeID();
          if (v24 != OUTLINED_FUNCTION_68_6())
          {
            CFArrayGetTypeID();
            if (v24 != OUTLINED_FUNCTION_68_6())
            {
              goto LABEL_15;
            }
          }

          v124 = *(v33 + 560);
          *(v33 + 560) = a4;
          CFRetain(a4);
        }

        else
        {
          v124 = *(v33 + 560);
          *(v33 + 560) = 0;
        }

        if (v124)
        {
          CFRelease(v124);
        }

        v126 = *(v33 + 568);
        if (v126)
        {
          CFRelease(v126);
          *(v33 + 568) = 0;
        }

        goto LABEL_15;
      }

      if (CFEqual(@"TrackMetadataToWrite", a3))
      {
        if (a4)
        {
          CFDictionaryGetTypeID();
          if (v24 != OUTLINED_FUNCTION_68_6())
          {
            CFArrayGetTypeID();
            if (v24 != OUTLINED_FUNCTION_68_6())
            {
              goto LABEL_15;
            }
          }

          v125 = *(v33 + 568);
          *(v33 + 568) = a4;
          CFRetain(a4);
        }

        else
        {
          v125 = *(v33 + 568);
          *(v33 + 568) = 0;
        }

        if (v125)
        {
          CFRelease(v125);
        }

        v128 = *(v33 + 560);
        if (v128)
        {
          CFRelease(v128);
          *(v33 + 560) = 0;
        }

        goto LABEL_15;
      }

      if (CFEqual(@"TrackMetadataAllowList", a3))
      {
        if (!a4)
        {
          v71 = *(v33 + 576);
          *(v33 + 576) = 0;
          goto LABEL_99;
        }

        v127 = CFDictionaryGetTypeID();
        if (v127 != CFGetTypeID(a4))
        {
          goto LABEL_145;
        }

        v71 = *(v33 + 576);
        *(v33 + 576) = a4;
      }

      else
      {
        if (CFEqual(@"ExcludeFromAutoSelection", a3))
        {
          if (!a4)
          {
            goto LABEL_145;
          }

          v129 = CFGetTypeID(a4);
          if (v129 != CFBooleanGetTypeID())
          {
            goto LABEL_145;
          }

          CFBooleanGetValue(a4);
          OUTLINED_FUNCTION_65_6();

          MovieTrackSetExcludeFromAutoSelection(v130, v131);
          return;
        }

        if (CFEqual(@"WriteCompactSampleSizeIfPossible", a3))
        {
          if (!a4)
          {
            goto LABEL_145;
          }

          v133 = CFGetTypeID(a4);
          if (v133 != CFBooleanGetTypeID())
          {
            goto LABEL_145;
          }

          CFBooleanGetValue(a4);
          OUTLINED_FUNCTION_49_4();
          *(v33 + 584) = v134;
          goto LABEL_15;
        }

        if (CFEqual(@"WriteQTSoundSampleTableLieIfPossible", a3))
        {
          if (!a4)
          {
            goto LABEL_145;
          }

          v135 = CFGetTypeID(a4);
          if (v135 != CFBooleanGetTypeID())
          {
            goto LABEL_145;
          }

          CFBooleanGetValue(a4);
          OUTLINED_FUNCTION_49_4();
          *(v33 + 585) = v136;
          goto LABEL_15;
        }

        if (CFEqual(@"Layer", a3))
        {
          *v170 = 0;
          if (a4)
          {
            v137 = CFGetTypeID(a4);
            if (v137 == CFNumberGetTypeID())
            {
              v138 = OUTLINED_FUNCTION_16_23();
              CFNumberGetValue(v138, kCFNumberSInt16Type, v139);
              MovieTrackSetLayer(v34, *v170);
              goto LABEL_15;
            }
          }

          goto LABEL_249;
        }

        if (!CFEqual(@"SampleReferenceBaseURL", a3))
        {
          if (CFEqual(@"NegativeCompositionOffsetsInISOFilePolicy", a3))
          {
            if (!a4)
            {
              goto LABEL_145;
            }

            v141 = CFGetTypeID(a4);
            if (v141 != CFStringGetTypeID())
            {
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_65_6();

            setNegativeCompositionOffsetsInISOFilePolicy(v142, v143, v144);
          }

          else if (CFEqual(@"HEVCSyncSampleNALUnitTypes", a3))
          {
            v146 = MovieTrackRemoveSampleGroupInfoForGroupingType(*(v33 + 736), 1937337955);
            if (!a4 || v146)
            {
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_65_6();

            MovieTrackAppendSyncSampleCombinations(v147, v148, v149, v150, v151, v152, v153, v154, a9, a10, SWORD2(a10), BYTE6(a10), a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
          }

          else if (CFEqual(@"HEVCTemporalLevelInfoCombinations", a3))
          {
            v155 = MovieTrackRemoveSampleGroupInfoForGroupingType(*(v33 + 736), 1953719148);
            if (!a4 || v155)
            {
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_65_6();

            MovieTrackAppendTemporalLevelCombinations(v156, v157);
          }

          else
          {
            if (!CFEqual(@"SampleGroupDescriptions", a3))
            {
              goto LABEL_15;
            }

            v159 = MovieTrackRemoveAllSampleGroups(*(v33 + 736));
            if (!a4 || v159)
            {
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_65_6();

            MovieTrackAppendSampleGroupDescriptions(v160, v161, v162, v163, v164, v165, v166, v167, a9, a10, a11, SHIDWORD(a11), a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
          }

          return;
        }

        if (!a4)
        {
          v71 = *(v33 + 456);
          *(v33 + 456) = 0;
          goto LABEL_99;
        }

        v140 = CFGetTypeID(a4);
        if (v140 != CFURLGetTypeID())
        {
          goto LABEL_145;
        }

        v71 = *(v33 + 456);
        *(v33 + 456) = a4;
      }

LABEL_90:
      CFRetain(a4);
      goto LABEL_99;
    }

    if (!a4)
    {
      goto LABEL_145;
    }

    v121 = CFGetTypeID(a4);
    if (v121 != CFArrayGetTypeID())
    {
      goto LABEL_145;
    }

    if (MovieTrackReplaceFormatDescriptionArray(v34, a4))
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_65_6();

    setDefaultTrackDimensionsIfNecessary(v122);
  }
}

void getTrackInfoArrayIndexFromFigTrackID(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 40);
  if (!v4 || ((Count = CFArrayGetCount(v4), Count >= a2) ? (v8 = a2 < 1) : (v8 = 1), !v8 ? (v9 = Count == 0) : (v9 = 1), v9))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< AudioFileFormatWriter >>>>", 244, v3);
  }

  else
  {
    *a3 = a2 - 1;
  }
}

uint64_t getFigMatrixFromArray(const __CFArray *a1, uint64_t a2)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  if (a1)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a1) && CFArrayGetCount(a1) == 9)
    {
      v5 = 0;
      v6 = 0;
      v7 = &v14;
LABEL_5:
      v8 = v7;
      v9 = 3;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
        v11 = CFNumberGetTypeID();
        if (v11 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        ++v5;
        CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v8);
        v8 += 4;
        if (!--v9)
        {
          ++v6;
          v7 = (v7 + 12);
          if (v6 != 3)
          {
            goto LABEL_5;
          }

          result = 0;
          v13 = v15;
          *a2 = v14;
          *(a2 + 16) = v13;
          *(a2 + 32) = v16;
          return result;
        }
      }
    }
  }

  return 4294954516;
}

double FigAudioCompressionOptionsGetPreset(const void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  MEMORY[0x19A8D3660](&gCreatePresetGetterDictionaryOnce, createPresetGetterDictionaryOnce);
  if (!a2)
  {
    a2 = &v17;
  }

  if (!a3)
  {
    a3 = &v16;
  }

  if (!a4)
  {
    a4 = &v15;
  }

  if (!a5)
  {
    a5 = &v14;
  }

  if (a1 && gPresetGetterDictionary && (Value = CFDictionaryGetValue(gPresetGetterDictionary, a1)) != 0 && (v12 = Value[1]) != 0)
  {
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v12(a2, a3, a4, a5);
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954646, "(Fig)", 1041, v5);
  }

  return result;
}

CFDictionaryRef createPresetGetterDictionaryOnce()
{
  v0 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *keys = 0u;
  v4 = 0;
  v1 = &createPresetGetterDictionaryOnce_presetGetterPairs;
  memset(v3, 0, sizeof(v3));
  do
  {
    keys[v0] = **v1;
    *(v3 + v0 * 8) = v1;
    ++v0;
    v1 += 2;
  }

  while (v0 != 27);
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v3, 27, MEMORY[0x1E695E9D8], 0);
  gPresetGetterDictionary = result;
  return result;
}

uint64_t getpreset_AAC(void *a1, void *a2, void *a3, void *a4)
{
  *a1 = &getpreset_AAC_asbd;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  return 0;
}

uint64_t FigMediaProcessorCreateForVideoCompressionWithFormatWriter(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFDictionary *a6, const void *a7, void *a8, __int128 *a9, __int128 *a10, const void *a11, unsigned int a12, __int128 *a13, __int128 *a14, const void *a15, unsigned int a16, uint64_t *a17)
{
  v17 = *a9;
  v26 = *(a9 + 2);
  v18 = a10[1];
  v24[0] = *a10;
  v24[1] = v18;
  v24[2] = a10[2];
  v25 = v17;
  v22 = *a13;
  v23 = *(a13 + 2);
  v20 = *a14;
  v21 = *(a14 + 2);
  return FigMediaProcessorCreateForVideoCompressionWithFormatWriter2(a1, a2, a3, a4, a5, a6, a7, a8, &v25, v24, a11, a12, &v22, 0, &v20, 0, a15, a16, a17);
}

void FigSampleBufferProcessorCreateWithVTCompressionSession(const __CFAllocator *a1, int32_t a2, int32_t a3, CMVideoCodecType a4, const __CFDictionary *a5, const __CFDictionary *a6, CFAllocatorRef Allocator, int a8, CFTypeRef *a9)
{
  valuePtr = a8;
  if (a9)
  {
    v17 = *MEMORY[0x1E695E480];
    FigSampleBufferProcessorGetClassID();
    if (!CMDerivedObjectCreate())
    {
      v23 = a6;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!Allocator || v17 == Allocator)
      {
        Mutable = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v21 = CFStringCreateWithFormat(v17, 0, @"SampleBufferProcessor-VideoCompression-%p", 0);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], v21);
        *DerivedStorage = CMMemoryPoolCreate(Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        Allocator = CMMemoryPoolGetAllocator(*DerivedStorage);
      }

      if (!VTCompressionSessionCreate(a1, a2, a3, a4, a5, v23, Allocator, sbp_vtcs_outputFrame, 0, (DerivedStorage + 16)))
      {
        *(DerivedStorage + 8) = a2;
        *(DerivedStorage + 12) = a3;
        v22 = CFNumberCreate(v17, kCFNumberSInt32Type, &valuePtr);
        VTSessionSetProperty(*(DerivedStorage + 16), *MEMORY[0x1E6983648], v22);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *a9 = 0;
        if (v22)
        {
          CFRelease(v22);
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< sbp_vtcs >>>", 844, v9);
  }
}

void FigSampleBufferConsumerCreateForFormatWriter(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  if (a1)
  {
    if (a7)
    {
      v15 = *MEMORY[0x1E695E480];
      FigSampleBufferConsumerGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *DerivedStorage = a1;
        v20 = *(a3 + 16);
        *(DerivedStorage + 24) = *a3;
        *(DerivedStorage + 40) = v20;
        *(DerivedStorage + 48) = a4;
        v21 = *(a5 + 16);
        *(DerivedStorage + 56) = *a5;
        *(DerivedStorage + 72) = v21;
        *(DerivedStorage + 80) = a6;
        CFRetain(a1);
        *(DerivedStorage + 8) = a2;
        if (*(DerivedStorage + 36) & 1) != 0 && (*(DerivedStorage + 68))
        {
          v24 = *DerivedStorage;
          v22 = DerivedStorage + 16;
          v23 = v24;
          v25 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v25)
          {
            v25(v23, a2, @"SourceSampleBufferQueue", v15, v22);
          }
        }

        *a7 = 0;
      }

      return;
    }

    emitter = fig_log_get_emitter();
    v17 = v7;
    v18 = 372;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v17 = v7;
    v18 = 370;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< OUTPUTTOFORMATWRITER >>>>", v18, v17);
}

uint64_t FigMediaProcessorCreate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t *a6)
{
  cf = 0;
  if (!a2 || !a3 || !a4 || !a5 || !a6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v18 = v17;
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  MEMORY[0x19A8D3660](&sRegisterMediaProcessorTypeOnce, RegisterFigMediaProcessorType);
  Instance = _CFRuntimeCreateInstance();
  v13 = Instance;
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_17;
  }

  *(Instance + 24) = a2;
  CFRetain(a2);
  FigSampleBufferProcessorGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"CanProcessUnreadySampleBuffers", a1, &cf);
    v16 = cf;
  }

  if (v16 == *MEMORY[0x1E695E4D0])
  {
    *(v13 + 90) = 1;
  }

  *(v13 + 32) = a3;
  CFRetain(a3);
  *(v13 + 40) = a4;
  CFRetain(a4);
  v21 = FigSimpleMutexCreate();
  *(v13 + 144) = v21;
  if (!v21)
  {
LABEL_38:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_17;
  }

  *(v13 + 64) = a5;
  CFRetain(a5);
  FigActivitySchedulerGetFigBaseObject();
  v23 = v22;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v24)
  {
    v24(v23, @"ThrottleForBackground", *MEMORY[0x1E695E4C0]);
  }

  v25 = *(v13 + 24);
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v26)
  {
    v20 = v26(v25, mediaprocessor_OutputSampleBuffer, v13);
    if (!v20)
    {
      v27 = *(v13 + 64);
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v28)
      {
        goto LABEL_37;
      }

      v20 = v28(v27, mediaprocessor_ProcessUntilHighWaterMet, v13);
      if (!v20)
      {
        *(v13 + 72) = 1;
        v29 = *(v13 + 40);
        v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v30)
        {
          v20 = v30(v29, mediaprocessor_OutputBelowLowWater, v13, v13 + 48);
          if (v20)
          {
            goto LABEL_17;
          }

          *(v13 + 56) = 1;
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_102();
          v20 = CMNotificationCenterAddListener();
          if (v20)
          {
            goto LABEL_17;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_102();
          v20 = CMNotificationCenterAddListener();
          if (v20)
          {
            goto LABEL_17;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_102();
          v20 = CMNotificationCenterAddListener();
          if (v20)
          {
            goto LABEL_17;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_1_102();
          v20 = CMNotificationCenterAddListener();
          if (v20)
          {
            goto LABEL_17;
          }

          if (!*(v13 + 90))
          {
LABEL_36:
            CMNotificationCenterGetDefaultLocalCenter();
            FigNotificationCenterAddWeakListener();
            v18 = 0;
            *a6 = v13;
            goto LABEL_10;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_1_102();
            v20 = FigNotificationCenterAddWeakListener();
            if (!v20)
            {
              goto LABEL_36;
            }

            goto LABEL_17;
          }

          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

LABEL_17:
    v18 = v20;
    goto LABEL_11;
  }

LABEL_37:
  v18 = 4294954514;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v18;
}

uint64_t RegisterFigMediaProcessorType()
{
  result = _CFRuntimeRegisterClass();
  sFigMediaProcessorTypeID = result;
  return result;
}

uint64_t mediaprocessor_Init(_OWORD *a1)
{
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  result = FigReentrantMutexCreate();
  *(a1 + 10) = result;
  return result;
}

uint64_t sbp_vtcs_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 24) = a2;
  *(DerivedStorage + 40) = a3;
  return 0;
}

uint64_t otfw_installLowWaterTrigger(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 16);
  if (result)
  {
    *(DerivedStorage + 88) = a2;
    *(DerivedStorage + 96) = a3;
    if (*(DerivedStorage + 80))
    {
      v11 = *(DerivedStorage + 56);
      result = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds();
    }

    else
    {
      v11 = *(DerivedStorage + 56);
      result = CMBufferQueueInstallTrigger(result, otfw_LowWater, a1, 2, &v11, (DerivedStorage + 104));
    }

    v10 = *(DerivedStorage + 104);
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  return result;
}

uint64_t FigMediaProcessorGetVTCompressionSession(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  SampleBufferProcessor = FigMediaProcessorGetSampleBufferProcessor(a1);
  if (!SampleBufferProcessor)
  {
    return 0;
  }

  return FigSampleBufferProcessorGetVTCompressionSession(SampleBufferProcessor);
}

uint64_t FigMediaProcessorGetSampleBufferProcessor(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return *(a1 + 24);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return 0;
}

uint64_t FigSampleBufferProcessorGetVTCompressionSession(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (*(result + 39))
    {
      return 0;
    }

    else
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t FigMediaProcessorCreateForAudioCompressionWithFormatWriter(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, const void *a8, int a9, __int128 *a10, uint64_t a11, __int128 *a12, uint64_t a13, const void *a14, unsigned int a15, uint64_t *a16)
{
  v20 = *a10;
  v21 = *(a10 + 2);
  v18 = *a12;
  v19 = *(a12 + 2);
  LODWORD(v17) = a9;
  return FigMediaProcessorCreateForAudioCompressionCommon(a1, a2, a3, a4, a5, a6, a7, a8, v17, 0, &v20, a11, &v18, a13, a14, a15, a16);
}

void FigSampleBufferProcessorCreateWithAudioCompression(const __CFAllocator *a1, const opaqueCMFormatDescription *a2, uint64_t a3, size_t a4, AudioChannelLayout *a5, const __CFDictionary *a6, const void *a7, void *a8)
{
  values = 0;
  v123[0] = 0;
  *outWritable = 0;
  v117 = 0;
  v115 = 0;
  v114 = 0;
  v112 = 0;
  v113 = 0;
  valuePtr = 0;
  sizeOut = 0;
  v108 = 75;
  inPropertyData = 0;
  v106 = -1;
  v107 = 3;
  if (a8)
  {
    memset(&inSourceFormat, 0, sizeof(inSourceFormat));
    memset(&outPropertyData, 0, sizeof(outPropertyData));
    ioPropertyDataSize = 0;
    *&inClassDescriptions.mType = 0;
    inClassDescriptions.mManufacturer = 0;
    v15 = *MEMORY[0x1E695E480];
    FigSampleBufferProcessorGetClassID();
    if (CMDerivedObjectCreate())
    {
      v16 = 0;
      MutableCopy = 0;
      goto LABEL_4;
    }

    cf = a7;
    allocator = v15;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!a2)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v96);
      return;
    }

    v20 = DerivedStorage;
    CMTimeMakeWithSeconds(&v105, 0.5, 1000);
    *(v20 + 304) = v105;
    v21 = MEMORY[0x1E6960C70];
    *(v20 + 232) = *MEMORY[0x1E6960C70];
    *(v20 + 248) = *(v21 + 16);
    v22 = FigFormatDescriptionRetain();
    *(v20 + 24) = v22;
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v22);
    if (!StreamBasicDescription)
    {
      v16 = 0;
      MutableCopy = 0;
      goto LABEL_4;
    }

    v24 = StreamBasicDescription;
    if (StreamBasicDescription->mFormatID != 1819304813)
    {
      FigSampleBufferProcessorCreateWithAudioCompression_cold_21(&v105);
      goto LABEL_221;
    }

    v25 = *&StreamBasicDescription->mSampleRate;
    v26 = *&StreamBasicDescription->mBytesPerPacket;
    *&inSourceFormat.mBitsPerChannel = *&StreamBasicDescription->mBitsPerChannel;
    *&inSourceFormat.mSampleRate = v25;
    *&inSourceFormat.mBytesPerPacket = v26;
    v27 = *(a3 + 16);
    *&outPropertyData.mSampleRate = *a3;
    *&outPropertyData.mBytesPerPacket = v27;
    *&outPropertyData.mBitsPerChannel = *(a3 + 32);
    if (outPropertyData.mFormatID && *&outPropertyData.mFormatID != 1819304813)
    {
      if (!outPropertyData.mChannelsPerFrame)
      {
        facPickBestDestinationNumberOfChannels(StreamBasicDescription, &outPropertyData);
      }

      ioPropertyDataSize = 40;
      if (AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData))
      {
        FigSampleBufferProcessorCreateWithAudioCompression_cold_20();
        goto LABEL_221;
      }
    }

    else
    {
      *(v20 + 17) = 1;
    }

    ChannelLayout = CMAudioFormatDescriptionGetChannelLayout(a2, &sizeOut);
    if (v24->mChannelsPerFrame != outPropertyData.mChannelsPerFrame)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    if (*(v20 + 17))
    {
      *(v20 + 32) = FigFormatDescriptionRetain();
      v16 = 0;
      MutableCopy = 0;
      *(v20 + 164) = FigAudioFormatDescriptionEmploysDependentPackets();
      goto LABEL_28;
    }

    if (!outWritable[1])
    {
      mChannelsPerFrame = v24->mChannelsPerFrame;
      if (mChannelsPerFrame == 2 && outPropertyData.mChannelsPerFrame == 1)
      {
        mFormatFlags = v24->mFormatFlags;
        if ((mFormatFlags & 4) != 0)
        {
          mBitsPerChannel = v24->mBitsPerChannel;
          if (mBitsPerChannel != 32 && mBitsPerChannel != 16)
          {
            goto LABEL_218;
          }
        }

        if (mFormatFlags)
        {
          if ((mFormatFlags & 0x20) != 0 || v24->mBitsPerChannel != 32)
          {
            goto LABEL_218;
          }
        }

        else if ((mFormatFlags & 0x20) != 0)
        {
LABEL_218:
          FigSampleBufferProcessorCreateWithAudioCompression_cold_19(&v105);
          goto LABEL_221;
        }

        inSourceFormat.mBytesPerFrame >>= 1;
        inSourceFormat.mChannelsPerFrame = 1;
        inSourceFormat.mBytesPerPacket >>= 1;
        sizeOut = a4;
        if ((mFormatFlags & 2) != 0 || v24->mFormatID != 1819304813)
        {
          inSourceFormat.mFormatFlags ^= 2u;
        }

        v35 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
        *(v20 + 176) = v35;
        ChannelLayout = a5;
        if (v35)
        {
          *v35 = 1;
          v35[2] = outPropertyData.mChannelsPerFrame;
          ChannelLayout = a5;
        }
      }

      else if (mChannelsPerFrame > outPropertyData.mChannelsPerFrame)
      {
        FigSampleBufferProcessorCreateWithAudioCompression_cold_18(&v105);
        goto LABEL_221;
      }
    }

    v36 = 1;
    if (a5 && !outWritable[1])
    {
      v98 = 1;
      if (!ChannelLayout)
      {
        goto LABEL_72;
      }

      if (ChannelLayout->mChannelLayoutTag == -266338299 && a5->mChannelLayoutTag == -266338299)
      {
        v36 = 0;
        v98 = 0;
        goto LABEL_72;
      }

      if (outPropertyData.mFormatID == 1634754915 || outPropertyData.mFormatID == 1902211171 || outPropertyData.mFormatID == 1667330147)
      {
        if (ChannelLayout->mChannelLayoutTag == -266338299)
        {
          v36 = 0;
          v37 = a5->mChannelLayoutTag != -266338299;
LABEL_71:
          v98 = v37;
LABEL_72:
          v97 = ChannelLayout;
          if (a6)
          {
            value = 0;
            v38 = CFDictionaryGetValue(a6, @"FigAudioCompressionOption_AudioConverterEncodeBitRate");
            if (v38)
            {
              v39 = v38;
              TypeID = CFNumberGetTypeID();
              if (TypeID == CFGetTypeID(v39))
              {
                CFNumberGetValue(v39, kCFNumberIntType, &v115);
              }
            }

            FigCFDictionaryGetBooleanIfPresent();
            v41 = CFDictionaryGetValue(a6, @"FigAudioCompressionOption_BitRateControlMode");
            v94 = v36;
            if (v41 && (v42 = v41, v43 = CFNumberGetTypeID(), v43 == CFGetTypeID(v42)))
            {
              CFNumberGetValue(v42, kCFNumberIntType, &v113);
              v95 = 0;
              v44 = v113 != 3 || FigCFDictionaryGetInt32IfPresent() == 0;
            }

            else
            {
              v44 = 1;
              v95 = 1;
            }

            FigCFDictionaryGetInt32IfPresent();
            v45 = CFDictionaryGetValue(a6, @"kFigAudioCompressionOption_UseHardwareEncoderIfPresent");
            v46 = MEMORY[0x1E695E4D0];
            if (v45)
            {
              v47 = v45;
              v48 = CFBooleanGetTypeID();
              v49 = CFGetTypeID(v47);
              v50 = *v46;
              v52 = v48 != v49 || v47 == v50;
            }

            else
            {
              v50 = *MEMORY[0x1E695E4D0];
              v52 = 1;
            }

            v55 = CFDictionaryGetValue(a6, @"FigAudioCompressionOption_TrimSampleBufferDurations");
            *(v20 + 225) = v55 == v50;
            if (v55 == v50)
            {
              *(v20 + 264) = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            }

            FigCFDictionaryGetInt32IfPresent();
            Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
            if (CFDictionaryGetValueIfPresent(a6, @"FigAudioCompressionOption_PreferredOutputBufferDuration", &value))
            {
              CMTimeMakeFromDictionary(&v105, value);
              *(v20 + 304) = v105;
            }

            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            FigCFDictionaryGetInt32IfPresent();
            v54 = Int32IfPresent == 0;
            v53 = v44;
            v36 = v94;
          }

          else
          {
            v53 = 1;
            v54 = 1;
            v52 = 1;
            v95 = 1;
          }

          if (findCodecs(outPropertyData.mFormatID, &v117 + 1, &v117))
          {
            FigSampleBufferProcessorCreateWithAudioCompression_cold_17();
          }

          else
          {
            inClassDescriptions.mType = 1634037347;
            inClassDescriptions.mSubType = outPropertyData.mFormatID;
            v57 = HIDWORD(v117);
            if (!v52 || HIDWORD(v117) == 0)
            {
              v57 = v117;
            }

            inClassDescriptions.mManufacturer = v57;
            if (AudioConverterNewSpecific(&inSourceFormat, &outPropertyData, 1u, &inClassDescriptions, (v20 + 64)))
            {
              FigSampleBufferProcessorCreateWithAudioCompression_cold_16();
            }

            else
            {
              if (!inPropertyData)
              {
                v58 = v24->mBitsPerChannel;
                inPropertyData = v58;
                if (v24->mFormatFlags)
                {
                  inPropertyData = -v58;
                }
              }

              AudioConverterSetProperty(*(v20 + 64), 0x61636264u, 4u, &inPropertyData);
              if (v97)
              {
                if (AudioConverterSetProperty(*(v20 + 64), 0x69636C20u, sizeOut, v97))
                {
                  FigSampleBufferProcessorCreateWithAudioCompression_cold_15(&v105);
                  goto LABEL_221;
                }

                if ((v36 & 1) == 0 && AudioConverterSetProperty(*(v20 + 64), 0x6F636C20u, a4, a5))
                {
                  FigSampleBufferProcessorCreateWithAudioCompression_cold_14(&v105);
                  goto LABEL_221;
                }
              }

              if (v115 < 1)
              {
                goto LABEL_229;
              }

              if (v114)
              {
                LODWORD(v105.value) = 0;
                if (!AudioConverterGetPropertyInfo(*(v20 + 64), 0x62727472u, &v105, 0))
                {
                  v59 = v54;
                  v60 = malloc_type_malloc(LODWORD(v105.value), 0x7D77F5FBuLL);
                  if (!AudioConverterGetProperty(*(v20 + 64), 0x62727472u, &v105, v60))
                  {
                    if (LODWORD(v105.value) >= 0x10)
                    {
                      v62 = LODWORD(v105.value) >> 4;
                      v63 = v60 + 1;
                      v61 = v115;
                      do
                      {
                        v64 = *v63;
                        v63 += 2;
                        v65 = v64;
                        if (v64 < v115)
                        {
                          v61 = v65;
                        }

                        --v62;
                      }

                      while (v62);
                    }

                    else
                    {
                      v61 = v115;
                    }

                    v115 = v61;
                  }

                  free(v60);
                  v54 = v59;
                }
              }

              if (AudioConverterSetProperty(*(v20 + 64), 0x62726174u, 4u, &v115))
              {
                FigSampleBufferProcessorCreateWithAudioCompression_cold_13(&v105);
              }

              else
              {
LABEL_229:
                if (HIDWORD(v113) && AudioConverterSetProperty(*(v20 + 64), 0x73726361u, 4u, &v113 + 4))
                {
                  FigSampleBufferProcessorCreateWithAudioCompression_cold_12(&v105);
                }

                else
                {
                  if (v95)
                  {
LABEL_130:
                    Extension = CMFormatDescriptionGetExtension(*(v20 + 24), *MEMORY[0x1E69600A0]);
                    values = Extension;
                    if (!Extension)
                    {
                      goto LABEL_137;
                    }

                    v67 = v54;
                    v68 = CFGetTypeID(Extension);
                    if (v68 != CFDictionaryGetTypeID())
                    {
                      MutableCopy = 0;
                      v54 = v67;
                      goto LABEL_139;
                    }

                    v54 = v67;
                    if (CFDictionaryGetCount(values) >= 1)
                    {
                      if (!FigAudioFormatDescriptionGetCinematicAudioEffectEligibility() || FigAudioChannelLayoutIsSupportedForCinematicAudio() && v106 == 2)
                      {
                        MutableCopy = 0;
                      }

                      else
                      {
                        CFGetAllocator(values);
                        MutableCopy = FigCFDictionaryCreateMutableCopy();
                        CFDictionaryRemoveValue(MutableCopy, @"ngst");
                        values = MutableCopy;
                      }

                      if (!AudioConverterGetPropertyInfo(*(v20 + 64), 0x69736F65u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize && outWritable[0] && !AudioConverterSetProperty(*(v20 + 64), 0x69736F65u, 8u, &values))
                      {
                        values = 0;
                      }
                    }

                    else
                    {
LABEL_137:
                      MutableCopy = 0;
                    }

LABEL_139:
                    if (!v54 && AudioConverterSetProperty(*(v20 + 64), 0x63647175u, 4u, &v112))
                    {
                      FigSampleBufferProcessorCreateWithAudioCompression_cold_9(&v105);
                    }

                    else
                    {
                      if (outWritable[1])
                      {
                        if (inSourceFormat.mChannelsPerFrame <= outPropertyData.mChannelsPerFrame)
                        {
                          if (inSourceFormat.mChannelsPerFrame == 1)
                          {
                            v71 = malloc_type_calloc(outPropertyData.mChannelsPerFrame, 4uLL, 0x100004052888210uLL);
                            v72 = AudioConverterSetProperty(*(v20 + 64), 0x63686D70u, 4 * outPropertyData.mChannelsPerFrame, v71);
                            free(v71);
                            if (v72)
                            {
                              FigSampleBufferProcessorCreateWithAudioCompression_cold_1();
                              goto LABEL_226;
                            }
                          }
                        }

                        else
                        {
                          LODWORD(value) = 1;
                          if (AudioConverterSetProperty(*(v20 + 64), 0x646D6978u, 4u, &value))
                          {
                            FigSampleBufferProcessorCreateWithAudioCompression_cold_2();
                            goto LABEL_226;
                          }

                          v103 = 0;
                          v105.value = 0;
                          facCopyMixMapForInputs(inSourceFormat.mChannelsPerFrame, v97, sizeOut, outPropertyData.mChannelsPerFrame, a5, &v105, &v103);
                          if (v69)
                          {
                            goto LABEL_226;
                          }

                          v70 = AudioConverterSetProperty(*(v20 + 64), 0x6D6D6170u, v103, v105.value);
                          free(v105.value);
                          if (v70)
                          {
                            FigSampleBufferProcessorCreateWithAudioCompression_cold_3();
LABEL_226:
                            v16 = 0;
                            goto LABEL_4;
                          }
                        }
                      }

                      ioPropertyDataSize = 40;
                      if (!AudioConverterGetProperty(*(v20 + 64), 0x61636F64u, &ioPropertyDataSize, &outPropertyData))
                      {
                        ioPropertyDataSize = 0;
                        outWritable[0] = 0;
                        if (!AudioConverterGetPropertyInfo(*(v20 + 64), 0x67707072u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 1 && outWritable[0])
                        {
                          LOBYTE(v105.value) = 0;
                          ioPropertyDataSize = 1;
                          AudioConverterSetProperty(*(v20 + 64), 0x67707072u, 1u, &v105);
                        }

                        v16 = 0;
                        if (AudioConverterGetPropertyInfo(*(v20 + 64), 0x636D6763u, &ioPropertyDataSize, 0))
                        {
                          v73 = 0;
                        }

                        else
                        {
                          v73 = 0;
                          if (ioPropertyDataSize)
                          {
                            v16 = malloc_type_malloc(ioPropertyDataSize, 0xC686E1B4uLL);
                            if (AudioConverterGetProperty(*(v20 + 64), 0x636D6763u, &ioPropertyDataSize, v16))
                            {
                              FigSampleBufferProcessorCreateWithAudioCompression_cold_7();
                              goto LABEL_4;
                            }

                            v73 = ioPropertyDataSize;
                          }
                        }

                        if (values)
                        {
                          v74 = v73;
                          v75 = CFDictionaryCreate(a1, MEMORY[0x1E69600A0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                          v73 = v74;
                          v76 = v75;
                        }

                        else
                        {
                          v76 = 0;
                        }

                        if (v98)
                        {
                          v77 = a4;
                        }

                        else
                        {
                          v77 = 0;
                        }

                        if (v98)
                        {
                          v78 = a5;
                        }

                        else
                        {
                          v78 = 0;
                        }

                        v79 = CMAudioFormatDescriptionCreate(a1, &outPropertyData, v77, v78, v73, v16, v76, (v20 + 32));
                        if (v76)
                        {
                          CFRelease(v76);
                        }

                        if (v79)
                        {
                          FigSampleBufferProcessorCreateWithAudioCompression_cold_5();
                          goto LABEL_4;
                        }

                        v80 = FigAudioFormatDescriptionEmploysDependentPackets();
                        *(v20 + 164) = v80;
                        *(v20 + 168) = 0;
                        if (v80)
                        {
                          if (!AudioConverterGetPropertyInfo(*(v20 + 64), 0x61737066u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 4 && outWritable[0])
                          {
                            AudioConverterSetProperty(*(v20 + 64), 0x61737066u, 4u, &v108);
                          }

                          if (!AudioConverterGetPropertyInfo(*(v20 + 64), 0x63647263u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 4 && outWritable[0])
                          {
                            AudioConverterSetProperty(*(v20 + 64), 0x63647263u, 4u, &v107);
                          }

                          if (v106 != -1 && !AudioConverterGetPropertyInfo(*(v20 + 64), 0x63737263u, &ioPropertyDataSize, outWritable) && ioPropertyDataSize == 4 && outWritable[0])
                          {
                            AudioConverterSetProperty(*(v20 + 64), 0x63737263u, 4u, &v106);
                          }
                        }

                        if (!outPropertyData.mBytesPerPacket)
                        {
                          ioPropertyDataSize = 4;
                          if (AudioConverterGetProperty(*(v20 + 64), 0x70616B62u, &ioPropertyDataSize, (v20 + 40)))
                          {
                            FigSampleBufferProcessorCreateWithAudioCompression_cold_6();
                            goto LABEL_4;
                          }
                        }

                        ioPropertyDataSize = 8;
                        if (AudioConverterGetProperty(*(v20 + 64), 0x6877727Au, &ioPropertyDataSize, (v20 + 72)))
                        {
                          *(v20 + 72) = 0;
                        }

                        if ((v24->mFormatFlags & 0x20) != 0)
                        {
                          v82 = 16 * (v24->mChannelsPerFrame - 1) + 24;
                          *(v20 + 112) = v82;
                          v83 = malloc_type_calloc(1uLL, v82, 0x10800404ACF7207uLL);
                          *(v20 + 104) = v83;
                          if (v83)
                          {
                            v84 = v24->mChannelsPerFrame;
                            *v83 = v84;
                            if (v84)
                            {
                              v85 = (v84 + 3) & 0x1FFFFFFFCLL;
                              v86 = vdupq_n_s64(v84 - 1);
                              v87 = xmmword_196E73080;
                              v88 = xmmword_196E73090;
                              v89 = v83 + 10;
                              v90 = vdupq_n_s64(4uLL);
                              v29 = allocator;
                              do
                              {
                                v91 = vmovn_s64(vcgeq_u64(v86, v88));
                                if (vuzp1_s16(v91, *v86.i8).u8[0])
                                {
                                  *(v89 - 8) = 1;
                                }

                                if (vuzp1_s16(v91, *&v86).i8[2])
                                {
                                  *(v89 - 4) = 1;
                                }

                                if (vuzp1_s16(*&v86, vmovn_s64(vcgeq_u64(v86, *&v87))).i32[1])
                                {
                                  *v89 = 1;
                                  v89[4] = 1;
                                }

                                v87 = vaddq_s64(v87, v90);
                                v88 = vaddq_s64(v88, v90);
                                v89 += 16;
                                v85 -= 4;
                              }

                              while (v85);
                              goto LABEL_29;
                            }
                          }
                        }

                        else
                        {
                          *(v20 + 112) = 24;
                          v81 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
                          *(v20 + 104) = v81;
                          if (v81)
                          {
                            *v81 = 1;
                            v81[2] = v24->mChannelsPerFrame;
                          }
                        }

LABEL_28:
                        v29 = allocator;
LABEL_29:
                        if (*(v20 + 164) || (GDRCountForFormatID = getGDRCountForFormatID(*(v20 + 64), *(v20 + 32), (v20 + 224)), valuePtr = GDRCountForFormatID, !GDRCountForFormatID) || (v34 = CFNumberCreate(v29, kCFNumberSInt16Type, &valuePtr), (*(v20 + 216) = v34) != 0))
                        {
                          if (*(v20 + 225))
                          {
                            *(v20 + 228) = CMAudioFormatDescriptionGetMostCompatibleFormat(*(v20 + 32))->mASBD.mSampleRate;
                          }

                          if (cf)
                          {
                            *(v20 + 280) = cf;
                            CFRetain(cf);
                          }

                          *a8 = v123[0];
                          v123[0] = 0;
                          if (!v16)
                          {
                            goto LABEL_8;
                          }

LABEL_7:
                          free(v16);
LABEL_8:
                          if (MutableCopy)
                          {
                            CFRelease(MutableCopy);
                          }

                          return;
                        }

                        FigSampleBufferProcessorCreateWithAudioCompression_cold_4(&v105);
LABEL_4:
                        if (v123[0])
                        {
                          CFRelease(v123[0]);
                        }

                        if (!v16)
                        {
                          goto LABEL_8;
                        }

                        goto LABEL_7;
                      }

                      FigSampleBufferProcessorCreateWithAudioCompression_cold_8();
                    }

                    v16 = 0;
                    goto LABEL_4;
                  }

                  if (!AudioConverterSetProperty(*(v20 + 64), 0x61636266u, 4u, &v113))
                  {
                    if ((v53 & 1) == 0 && AudioConverterSetProperty(*(v20 + 64), 0x76627271u, 4u, &v112 + 4))
                    {
                      FigSampleBufferProcessorCreateWithAudioCompression_cold_10(&v105);
                      goto LABEL_221;
                    }

                    goto LABEL_130;
                  }

                  FigSampleBufferProcessorCreateWithAudioCompression_cold_11(&v105);
                }
              }
            }
          }

LABEL_221:
          v16 = 0;
          MutableCopy = 0;
          goto LABEL_4;
        }

        v36 = 0;
      }
    }

    v37 = 1;
    goto LABEL_71;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< FAC >>>>", 1051, v8);
}

uint64_t sbp_fac_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 48) = a2;
  *(DerivedStorage + 56) = a3;
  return 0;
}

void FigMediaProcessorGo(uint64_t a1)
{
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<<< MediaProcessor >>>>", 912, v1);
  }

  else
  {
    *(a1 + 73) = 1;
    FigMemoryBarrier();
    v4 = *(a1 + 64);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(v4);
    }
  }
}

uint64_t mediaprocessor_ProcessUntilHighWaterMet(uint64_t a1)
{
  valuePtr = 0;
  FigSimpleMutexLock();
  if (*(a1 + 73))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = MEMORY[0x1E695E9D8];
    v4 = MEMORY[0x1E695E9E8];
    do
    {
      v5 = *(a1 + 40);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6 && v6(v5))
      {
        break;
      }

      v13 = 0;
      v7 = mediaprocessor_DequeueAndProcessSampleBuffer(a1, &v13);
      valuePtr = v7;
      if (v13)
      {
        break;
      }

      if (v7)
      {
        cf = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
        if (cf)
        {
          v8 = CFGetAllocator(a1);
          v9 = CFDictionaryCreate(v8, kFigMediaProcessorParameter_Result, &cf, 1, v3, v4);
          if (v9)
          {
            v10 = v9;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            CFRelease(v10);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }

    while (*(a1 + 73));
  }

  return FigSimpleMutexUnlock();
}

uint64_t otfw_isQueueAtOrAboveHighWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = **&MEMORY[0x1E6960C70];
  result = *(DerivedStorage + 16);
  if (result)
  {
    CMBufferQueueGetDuration(&v5, result);
    time1 = v5;
    v3 = *(DerivedStorage + 24);
    if (CMTimeCompare(&time1, &v3) < 0)
    {
      return *(DerivedStorage + 48) && CMBufferQueueGetTotalSize(*(DerivedStorage + 16)) >= *(DerivedStorage + 48);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t FigMediaProcessorIsAtEndOfOutputData(uint64_t a1)
{
  result = FigMediaProcessorIsAtEndOfInputData(a1);
  if (result)
  {
    return *(a1 + 89) != 0;
  }

  return result;
}

double figMovieWriter_BeginSession(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 335))
  {
    emitter = fig_log_get_emitter();
    v6 = v2;
    v7 = 4294954511;
    v8 = 5283;
LABEL_11:

    *&v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<< FFW_QT/ISO >>>", v8, v6);
    return *&v14;
  }

  v9 = DerivedStorage;
  Count = CFArrayGetCount(*(DerivedStorage + 488));
  if (*(v9 + 36))
  {
    emitter = fig_log_get_emitter();
    v6 = v2;
    v7 = 4294954516;
    v8 = 5290;
    goto LABEL_11;
  }

  v11 = Count;
  if (Count < 1)
  {
LABEL_8:
    *(v9 + 504) = *(v9 + 496);
    v16 = *(a2 + 2);
    v14 = *a2;
    *(v9 + 24) = *a2;
    *(v9 + 40) = v16;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 488), v12);
      v18 = *a2;
      v19 = *(a2 + 2);
      *&v14 = trackBeginSession(ValueAtIndex, &v18, 1);
      if (v15)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_8;
      }
    }
  }

  return *&v14;
}

double getMediaDecodeDuration@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  Count = CFArrayGetCount(*(a1 + 424));
  v5 = *MEMORY[0x1E6960CC0];
  *a2 = **&MEMORY[0x1E6960CC0];
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 424), Count - 1);
    lhs = *(ValueAtIndex + 248);
    rhs = *(ValueAtIndex + 176);
    CMTimeAdd(a2, &lhs, &rhs);
  }

  if (*(a1 + 480))
  {
    rhs = *(a1 + 136);
    v7 = *(a1 + 104);
    if (v7)
    {
      lhs = *(a1 + 136);
      CMTimeConvertScale(&rhs, &lhs, v7, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    }

    v10 = *a2;
    v9 = rhs;
    CMTimeAdd(&lhs, &v10, &v9);
    *&v5 = lhs.value;
    *a2 = lhs;
  }

  return *&v5;
}

uint64_t mediaprocessor_TriggerSchedulingIfOutputIsLow(uint64_t a1)
{
  v2 = *(a1 + 40);
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

BOOL otfw_isQueueBelowLowWater(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v6, 0, sizeof(v6));
  v2 = *(DerivedStorage + 16);
  if (!v2)
  {
    return 1;
  }

  CMBufferQueueGetDuration(&v6, v2);
  time1 = v6;
  v4 = *(DerivedStorage + 56);
  if (CMTimeCompare(&time1, &v4) > 0)
  {
    return 0;
  }

  return !*(DerivedStorage + 80) || CMBufferQueueGetTotalSize(*(DerivedStorage + 16)) < *(DerivedStorage + 80);
}

uint64_t sbp_vtcs_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v4 = v3;
  v115 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  TaggedBufferGroup = FigSampleBufferGetTaggedBufferGroup();
  memset(&v101, 0, sizeof(v101));
  CMSampleBufferGetPresentationTimeStamp(&v101, a2);
  v9 = MEMORY[0x1E695E480];
  if (ImageBuffer)
  {
    goto LABEL_7;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v12 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, MediaSubType);
  if (!v12 || (CFRelease(v12), *&propertyValueOut = 0, v109.value = 0, totalLengthOut = 0, v13 = *MEMORY[0x1E69660D8], values = 0, keys = v13, !a2))
  {
    ImageBuffer = 0;
    goto LABEL_7;
  }

  v14 = CMSampleBufferGetImageBuffer(a2);
  *lhs = v14;
  if (v14)
  {
    ImageBuffer = v14;
    CVBufferRetain(v14);
    goto LABEL_7;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  if (!DataBuffer || (v54 = DataBuffer, !CMBlockBufferGetDataLength(DataBuffer)))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_113:
    OUTLINED_FUNCTION_2_101();
    goto LABEL_103;
  }

  v55 = *v9;
  if (CMBlockBufferCreateContiguous(*v9, v54, *v9, 0, 0, 0, 0, &propertyValueOut))
  {
    goto LABEL_113;
  }

  v100 = TaggedBufferGroup;
  if (CMBlockBufferGetDataPointer(propertyValueOut, 0, 0, &totalLengthOut, &v109))
  {
    goto LABEL_113;
  }

  ImageBuffer = CMSampleBufferGetFormatDescription(a2);
  Dimensions = CMVideoFormatDescriptionGetDimensions(ImageBuffer);
  v2 = CMFormatDescriptionGetMediaSubType(ImageBuffer);
  Extension = CMFormatDescriptionGetExtension(ImageBuffer, *MEMORY[0x1E6960008]);
  if (Extension && (v58 = Extension, v59 = CFGetTypeID(Extension), v59 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(v58, kCFNumberCFIndexType, &valuePtr);
    v60 = valuePtr;
    if (valuePtr < 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", pixelBufferAttributes, v94, v95);
      OUTLINED_FUNCTION_2_101();
LABEL_116:
      TaggedBufferGroup = v100;
      v9 = MEMORY[0x1E695E480];
      goto LABEL_103;
    }
  }

  else if (HIDWORD(*&Dimensions))
  {
    v60 = totalLengthOut / (*&Dimensions >> 32);
  }

  else
  {
    v60 = 0;
  }

  v61 = MEMORY[0x1E695E9D8];
  v62 = MEMORY[0x1E695E9E8];
  values = CFDictionaryCreate(v55, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFDictionaryCreate(v55, &keys, &values, 1, v61, v62);
  v63 = CVPixelBufferCreateWithBytes(v55, Dimensions.width, *&Dimensions >> 32, v2, v109.value, v60, sbp_vtcs_releaseCMBlockBuffer, propertyValueOut, v4, lhs);
  if (v63)
  {
    v2 = v63;
    ImageBuffer = 0;
    goto LABEL_116;
  }

  *&propertyValueOut = 0;
  v64 = CMCopyDictionaryOfAttachments(v55, a2, 0);
  TaggedBufferGroup = v100;
  v9 = MEMORY[0x1E695E480];
  if (v64)
  {
    v65 = v64;
    v66 = OUTLINED_FUNCTION_3_79();
    CVBufferSetAttachments(v66, v67, kCVAttachmentMode_ShouldNotPropagate);
    CFRelease(v65);
  }

  v68 = CMCopyDictionaryOfAttachments(v55, a2, 1u);
  if (v68)
  {
    v69 = v68;
    v70 = OUTLINED_FUNCTION_3_79();
    CVBufferSetAttachments(v70, v71, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v69);
  }

  if (sbp_CVBufferAttachmentEmpty(*lhs, *MEMORY[0x1E6965D88]))
  {
    v72 = OUTLINED_FUNCTION_104_0();
    v74 = CMFormatDescriptionGetExtension(v72, v73);
    if (v74)
    {
      v75 = v74;
      v76 = CFGetTypeID(v74);
      if (v76 == CFStringGetTypeID())
      {
        v77 = OUTLINED_FUNCTION_3_79();
        CVBufferSetAttachment(v77, v78, v75, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  if (sbp_CVBufferAttachmentEmpty(*lhs, *MEMORY[0x1E6965F30]))
  {
    v79 = OUTLINED_FUNCTION_104_0();
    v81 = CMFormatDescriptionGetExtension(v79, v80);
    if (v81)
    {
      v82 = v81;
      v83 = CFGetTypeID(v81);
      if (v83 == CFStringGetTypeID())
      {
        v84 = OUTLINED_FUNCTION_3_79();
        CVBufferSetAttachment(v84, v85, v82, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  if (sbp_CVBufferAttachmentEmpty(*lhs, *MEMORY[0x1E6965F98]))
  {
    v86 = OUTLINED_FUNCTION_104_0();
    v88 = CMFormatDescriptionGetExtension(v86, v87);
    if (v88)
    {
      v89 = v88;
      v90 = CFGetTypeID(v88);
      if (v90 == CFStringGetTypeID())
      {
        v91 = OUTLINED_FUNCTION_3_79();
        CVBufferSetAttachment(v91, v92, v89, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }

  v2 = 0;
  ImageBuffer = *lhs;
LABEL_103:
  if (values)
  {
    CFRelease(values);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  if (v2)
  {
    return v2;
  }

LABEL_7:
  if (*(DerivedStorage + 34))
  {
    if (!*(DerivedStorage + 35))
    {
      v15 = CMSampleBufferGetFormatDescription(a2);
      if (v15)
      {
        v16 = v15;
        v100 = TaggedBufferGroup;
        v17 = 0;
        v18 = *(DerivedStorage + 16);
        v19 = *MEMORY[0x1E69838B8];
        v20 = v9;
        v21 = *MEMORY[0x1E69835B0];
        *lhs = *MEMORY[0x1E69838B8];
        *&lhs[8] = v21;
        propertyKey = *MEMORY[0x1E6983878];
        v99 = *MEMORY[0x1E69836A8];
        *&lhs[16] = *MEMORY[0x1E6983878];
        *&lhs[24] = v99;
        v22 = *v20;
        while (1)
        {
          *&propertyValueOut = 0;
          VTSessionCopyProperty(v18, *&lhs[v17], v22, &propertyValueOut);
          if (propertyValueOut)
          {
            CFRelease(propertyValueOut);
            if (propertyValueOut)
            {
              break;
            }
          }

          v17 += 8;
          if (v17 == 32)
          {
            Extensions = CMFormatDescriptionGetExtensions(v16);
            if (Extensions)
            {
              v24 = Extensions;
              Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965F98]);
              if (Value)
              {
                VTSessionSetProperty(v18, v19, Value);
              }

              v26 = CFDictionaryGetValue(v24, *MEMORY[0x1E6965D88]);
              v27 = MEMORY[0x1E6965F30];
              if (v26)
              {
                VTSessionSetProperty(v18, v21, v26);
              }

              v28 = CFDictionaryGetValue(v24, *v27);
              if (v28)
              {
                v29 = v28;
                VTSessionSetProperty(v18, propertyKey, v28);
                if (CFEqual(v29, *MEMORY[0x1E6965F80]))
                {
                  v30 = CFDictionaryGetValue(v24, *MEMORY[0x1E6965E80]);
                  if (v30)
                  {
                    VTSessionSetProperty(v18, *MEMORY[0x1E6983660], v30);
                  }
                }
              }

              v31 = CFDictionaryGetValue(v24, *MEMORY[0x1E6960070]);
              if (v31)
              {
                VTSessionSetProperty(v18, v99, v31);
              }
            }

            break;
          }
        }

        *(DerivedStorage + 35) = 1;
        TaggedBufferGroup = v100;
        v9 = MEMORY[0x1E695E480];
      }
    }
  }

  if (*(DerivedStorage + 36) && !*(DerivedStorage + 37) && ImageBuffer)
  {
    v109.value = 0;
    totalLengthOut = 0;
    v32 = *MEMORY[0x1E69835A0];
    VTSessionCopyProperty(*(DerivedStorage + 16), *MEMORY[0x1E69835A0], *v9, &totalLengthOut);
    v33 = totalLengthOut;
    if (totalLengthOut)
    {
      goto LABEL_73;
    }

    if (!sbp_CVBufferAttachmentEmpty(ImageBuffer, *MEMORY[0x1E6965D70]))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
      *lhs = 0;
      *&lhs[8] = 0;
      v51.f64[0] = NAN;
      v51.f64[1] = NAN;
      *&lhs[16] = vnegq_f64(v51);
      v113 = 0;
      v114 = 0;
      propertyValueOut = 0uLL;
      v106 = *&lhs[16];
      v107 = 0;
      v108 = 0;
      v94 = 0;
      v95 = 0;
      v96 = &v109;
      v97 = 0;
      pixelBufferAttributes = PixelFormatType;
      OUTLINED_FUNCTION_104_0();
      VTPixelTransferSessionCreateScalingParameters();
      if (v109.value)
      {
        v52 = CFGetTypeID(v109.value);
        if (v52 == CFDictionaryGetTypeID())
        {
          VTSessionSetProperty(*(DerivedStorage + 16), v32, v109.value);
        }

        v33 = v109.value;
        if (v109.value)
        {
LABEL_73:
          CFRelease(v33);
        }
      }
    }

    *(DerivedStorage + 37) = 1;
  }

  v34 = CMGetAttachment(a2, *MEMORY[0x1E69604E0], 0);
  v35 = *MEMORY[0x1E695E4D0];
  if (v34 == *MEMORY[0x1E695E4D0])
  {
    *(DerivedStorage + 32) = 1;
  }

  if (CMGetAttachment(a2, *MEMORY[0x1E6960508], 0) == v35)
  {
    *(DerivedStorage + 33) = 1;
  }

  if (CMGetAttachment(a2, *MEMORY[0x1E69604D8], 0) == v35)
  {
    *(DerivedStorage + 38) = 1;
  }

  if (!(ImageBuffer | TaggedBufferGroup))
  {
    return 0;
  }

  totalLengthOut = v101.value;
  timescale = v101.timescale;
  if (*(DerivedStorage + 84) & 1) != 0 && (*(DerivedStorage + 60))
  {
    flags = v101.flags;
    if (v101.flags)
    {
      epoch = v101.epoch;
      if ((*(DerivedStorage + 108) & 1) == 0)
      {
        OUTLINED_FUNCTION_4_83(v101.timescale, pixelBufferAttributes, v94, v95, v96, v97, propertyKey, v99, v100, v101.value, *&v101.timescale, v101.epoch, valuePtr, values, keys, v101.value, SDWORD2(propertyValueOut), SHIDWORD(propertyValueOut), v106);
        OUTLINED_FUNCTION_6_67();
      }

      memset(&v109, 0, sizeof(v109));
      *lhs = totalLengthOut;
      *&lhs[8] = timescale;
      *&lhs[12] = flags;
      *&lhs[16] = epoch;
      propertyValueOut = *(DerivedStorage + 48);
      *&v106 = *(DerivedStorage + 64);
      CMTimeSubtract(&v109, lhs, &propertyValueOut);
      *lhs = *(DerivedStorage + 96);
      *&lhs[16] = *(DerivedStorage + 112);
      propertyValueOut = *&v109.value;
      *&v106 = v109.epoch;
      if (CMTimeCompare(lhs, &propertyValueOut) <= 0)
      {
        OUTLINED_FUNCTION_4_83(timescale, pixelBufferAttributes, v94, v95, v96, v97, propertyKey, v99, v100, v101.value, *&v101.timescale, v101.epoch, valuePtr, values, keys, totalLengthOut, SDWORD2(propertyValueOut), SHIDWORD(propertyValueOut), v106);
        OUTLINED_FUNCTION_6_67();
        goto LABEL_49;
      }
    }
  }

  v38 = *(DerivedStorage + 32);
  if (*(DerivedStorage + 32))
  {
LABEL_49:
    v39 = v9;
    v40 = 0;
    *(DerivedStorage + 32) = 0;
    v38 = 1;
    goto LABEL_50;
  }

  v39 = v9;
  v40 = 1;
LABEL_50:
  v41 = *(DerivedStorage + 33);
  if (*(DerivedStorage + 33))
  {
    *(DerivedStorage + 33) = 0;
  }

  v42 = *(DerivedStorage + 38);
  if (*(DerivedStorage + 38))
  {
    *(DerivedStorage + 38) = 0;
  }

  if ((((v42 | v41) == 0) & ~v38) != 0)
  {
    v44 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*v39, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294954510;
    }

    v44 = Mutable;
    if ((v40 & 1) == 0)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6983BD8], v35);
    }

    if (v41)
    {
      CFDictionarySetValue(v44, *MEMORY[0x1E6983C40], v35);
    }

    if (v42)
    {
      CFDictionarySetValue(v44, *MEMORY[0x1E6983BB8], v35);
    }
  }

  CMSampleBufferGetDuration(lhs, a2);
  v45 = OUTLINED_FUNCTION_0_116();
  if (ImageBuffer)
  {
    v48 = VTCompressionSessionEncodeFrame(v45, ImageBuffer, v46, v47, v44, 0, 0);
  }

  else
  {
    v48 = VTCompressionSessionEncodeMultiImageFrame(v45, TaggedBufferGroup, v46, v47, v44, 0, 0);
  }

  v2 = v48;
  if (v44)
  {
    CFRelease(v44);
  }

  return v2;
}

void sbp_fac_processSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CMSampleBufferGetNumSamples(a2))
  {
    if (*(DerivedStorage + 196) == 2)
    {
      v4 = *(DerivedStorage + 64);
      if (v4)
      {
        AudioConverterReset(v4);
      }

      *(DerivedStorage + 196) = 0;
      *(DerivedStorage + 200) = 0;
      v5 = MEMORY[0x1E6960C70];
      *(DerivedStorage + 208) = 0;
      *(DerivedStorage + 232) = *v5;
      *(DerivedStorage + 248) = *(v5 + 16);
      *(DerivedStorage + 144) = 0;
    }

    if (*(DerivedStorage + 17))
    {
      v6 = *(DerivedStorage + 48);
      if (v6)
      {
        v6(*(DerivedStorage + 56), 0, a2);
      }
    }

    else
    {

      RunConverter(DerivedStorage, a2);
    }
  }
}

void RunConverter(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  acquireHardware(a1);
  if (v4)
  {
    return;
  }

  if (!CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 24)))
  {
    return;
  }

  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 32));
  if (!StreamBasicDescription)
  {
    return;
  }

  v6 = StreamBasicDescription;
  *(a1 + 88) = a2;
  if (StreamBasicDescription->mFramesPerPacket && (mSampleRate = StreamBasicDescription->mSampleRate, time = *(a1 + 304), Seconds = CMTimeGetSeconds(&time), LODWORD(v9) = v6->mFramesPerPacket, v10 = (mSampleRate * Seconds / v9), (ioOutputDataPacketSize = v10) != 0))
  {
    if (v10 < 0x81 || v6->mFormatID == 1819304813)
    {
      goto LABEL_12;
    }

    v11 = 128;
  }

  else
  {
    v11 = 1;
  }

  ioOutputDataPacketSize = v11;
LABEL_12:
  blockAllocator = *MEMORY[0x1E695E488];
  key = *MEMORY[0x1E69604E8];
  v54 = *MEMORY[0x1E69604F0];
  allocator = *MEMORY[0x1E695E480];
  v56 = *MEMORY[0x1E6960560];
  v12 = MEMORY[0x1E6960CC0];
  while (1)
  {
    memset(&outOutputData, 0, sizeof(outOutputData));
    dataPointerOut = 0;
    theBuffer = 0;
    mBytesPerPacket = *(a1 + 40);
    if (!mBytesPerPacket)
    {
      mBytesPerPacket = v6->mBytesPerPacket;
    }

    v14 = ioOutputDataPacketSize * mBytesPerPacket;
    DataPointer = CMBlockBufferCreateWithMemoryBlock(*(a1 + 280), 0, v14, blockAllocator, 0, 0, v14, 1u, &theBuffer);
    if (DataPointer || (DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut), DataPointer))
    {
      v18 = DataPointer;
      goto LABEL_97;
    }

    mChannelsPerFrame = v6->mChannelsPerFrame;
    outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mNumberChannels = mChannelsPerFrame;
    outOutputData.mBuffers[0].mDataByteSize = v14;
    outOutputData.mBuffers[0].mData = dataPointerOut;
    if ((!v6->mBytesPerPacket || !v6->mFramesPerPacket) && ioOutputDataPacketSize > *(a1 + 160))
    {
      free(*(a1 + 152));
      *(a1 + 152) = malloc_type_malloc(16 * ioOutputDataPacketSize, 0x1000040451B5BE8uLL);
      *(a1 + 160) = ioOutputDataPacketSize;
      if (!*(a1 + 164))
      {
        goto LABEL_24;
      }

      free(*(a1 + 168));
      *(a1 + 168) = malloc_type_malloc(16 * ioOutputDataPacketSize, 0x1000040451B5BE8uLL);
    }

    if (!*(a1 + 164))
    {
LABEL_24:
      v17 = AudioConverterFillComplexBuffer(*(a1 + 64), facEncoderInputProc, a1, &ioOutputDataPacketSize, &outOutputData, *(a1 + 152));
      goto LABEL_25;
    }

    v17 = AudioConverterFillComplexBufferWithPacketDependencyInfo();
LABEL_25:
    v18 = v17;
    if (v17 && v17 != 3)
    {
      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      goto LABEL_97;
    }

    v19 = ioOutputDataPacketSize;
    v20 = theBuffer;
    if (!ioOutputDataPacketSize)
    {
      break;
    }

    v21 = *(a1 + 152);
    v22 = *(a1 + 168);
    *v72 = 0;
    memset(&time1, 0, sizeof(time1));
    sbuf = 0;
    dataBuffer = 0;
    if (*(a1 + 225) && ((*(a1 + 244) & 1) != 0 || ((outPropertyData.value = 0, ioPropertyDataSize = 8, !AudioConverterGetProperty(*(a1 + 64), 0x7072696Du, &ioPropertyDataSize, &outPropertyData)) ? (CMTimeMake(&time, LODWORD(outPropertyData.value), *(a1 + 228)), *(a1 + 232) = time, lhs = *(a1 + 120), rhs = *(a1 + 232), CMTimeSubtract(&time, &lhs, &rhs), *(a1 + 120) = time, *(a1 + 256) = 1) : (*(a1 + 232) = *&v12->value, *(a1 + 248) = v12->epoch), *(a1 + 225))) && *(a1 + 232))
    {
      time = *(a1 + 232);
      lhs = *v12;
      v23 = CMTimeCompare(&time, &lhs) > 0;
    }

    else
    {
      v23 = 0;
    }

    CMTimeMake(&time, v6->mFramesPerPacket, v6->mSampleRate);
    v73.duration = time;
    v73.presentationTimeStamp = *(a1 + 120);
    v73.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    CMTimeMake(&time1, (v6->mFramesPerPacket * v19), v6->mSampleRate);
    lhs = *(a1 + 120);
    rhs = time1;
    CMTimeAdd(&time, &lhs, &rhs);
    *(a1 + 120) = time;
    if (v21)
    {
      v24 = 0;
      v25 = (v21 + 12);
      p_time = &time;
      v27 = v19;
      do
      {
        v28 = *v25;
        v25 += 4;
        p_time->value = v28;
        p_time = (p_time + 8);
        v24 += v28;
        --v27;
      }

      while (v27);
    }

    else
    {
      *v72 = v6->mBytesPerPacket;
      v24 = v72[0] * v19;
    }

    if (!CMBlockBufferCreateWithBufferReference(*(a1 + 280), v20, 0, v24, 0, &dataBuffer))
    {
      if (v21)
      {
        v31 = v19;
      }

      else
      {
        v31 = 1;
      }

      sampleSizeArray = &time;
      if (!v21)
      {
        sampleSizeArray = v72;
      }

      if (CMSampleBufferCreate(*(a1 + 280), dataBuffer, 1u, 0, 0, *(a1 + 32), v19, 1, &v73, v31, sampleSizeArray, &sbuf))
      {
        if (dataBuffer)
        {
          CFRelease(dataBuffer);
        }

        goto LABEL_47;
      }

      if (!v22 && *(a1 + 164))
      {
        RunConverter_cold_1();
        v29 = 0;
        v12 = MEMORY[0x1E6960CC0];
      }

      else
      {
        if (v22)
        {
          if (*(a1 + 164))
          {
            SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
            Count = CFArrayGetCount(SampleAttachmentsArray);
            if (Count >= 1)
            {
              v35 = Count;
              v36 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, v36);
                lhs.value = 0;
                if (FigAudioStreamPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary() || !FigCFDictionaryGetCount())
                {
                  break;
                }

                CFDictionaryApplyFunction(lhs.value, appendAttributesToDictionary_0, ValueAtIndex);
                if (lhs.value)
                {
                  CFRelease(lhs.value);
                }

                ++v36;
                v22 += 16;
                if (v35 == v36)
                {
                  goto LABEL_78;
                }
              }

              if (lhs.value)
              {
                CFRelease(lhs.value);
              }

              v29 = 0;
              v12 = MEMORY[0x1E6960CC0];
              goto LABEL_48;
            }
          }
        }

LABEL_78:
        v38 = *(a1 + 216);
        if (v38 && *(a1 + 225) && !*(a1 + 164))
        {
          CMSetAttachment(sbuf, key, v38, 1u);
          if (!*(a1 + 256) || (v39 = MEMORY[0x1E695E4D0], !*(a1 + 224)))
          {
            v39 = MEMORY[0x1E695E4C0];
          }

          CMSetAttachment(sbuf, v54, *v39, 1u);
        }

        v12 = MEMORY[0x1E6960CC0];
        if (!v23)
        {
          goto LABEL_88;
        }

        memset(&v65, 0, sizeof(v65));
        lhs = time1;
        rhs = *(a1 + 232);
        CMTimeMinimum(&v65, &lhs, &rhs);
        rhs = *(a1 + 232);
        outPropertyData = v65;
        CMTimeSubtract(&lhs, &rhs, &outPropertyData);
        *(a1 + 232) = lhs;
        lhs = v65;
        v40 = CMTimeCopyAsDictionary(&lhs, allocator);
        if (v40)
        {
          v41 = v40;
          CMSetAttachment(sbuf, v56, v40, 1u);
          CFRelease(v41);
LABEL_88:
          v29 = sbuf;
          goto LABEL_89;
        }

        RunConverter_cold_2();
        v29 = 0;
      }

LABEL_89:
      if (dataBuffer)
      {
        CFRelease(dataBuffer);
      }

      goto LABEL_48;
    }

LABEL_47:
    v29 = 0;
LABEL_48:
    if (*(a1 + 196) == 1 && *(a1 + 225))
    {
      CFArrayAppendValue(*(a1 + 264), v29);
    }

    else
    {
      v30 = *(a1 + 48);
      if (v30)
      {
        v30(*(a1 + 56), 0, v29);
      }
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

LABEL_57:
    if (v18 == 3)
    {
      return;
    }
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (*(a1 + 196) != 1)
  {
    goto LABEL_57;
  }

  if (*(a1 + 225))
  {
    outPropertyData.value = 0;
    v72[0] = 8;
    value = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
    v47 = CFArrayGetCount(*(a1 + 264));
    if (!AudioConverterGetProperty(*(a1 + 64), 0x7072696Du, v72, &outPropertyData) && HIDWORD(outPropertyData.value))
    {
      CMTimeMake(&time, HIDWORD(outPropertyData.value), *(a1 + 228));
      value = time.value;
      timescale = time.timescale;
      flags = time.flags;
      epoch = time.epoch;
    }

    if (flags)
    {
      if (v47 >= 1)
      {
        blockAllocatora = *MEMORY[0x1E6960558];
        v48 = v47 + 1;
        while (1)
        {
          v49 = CFArrayGetValueAtIndex(*(a1 + 264), v48 - 2);
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetDuration(&time, v49);
          memset(&v73, 0, 24);
          time1 = time;
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          CMTimeMinimum(&v73.duration, &time1, &lhs);
          time1 = v73.duration;
          v50 = CMTimeCopyAsDictionary(&time1, allocator);
          if (!v50)
          {
            break;
          }

          v51 = v50;
          CMSetAttachment(v49, blockAllocatora, v50, 1u);
          CFRelease(v51);
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          rhs = v73.duration;
          CMTimeSubtract(&time1, &lhs, &rhs);
          value = time1.value;
          timescale = time1.timescale;
          flags = time1.flags;
          epoch = time1.epoch;
          if (time1.value > 0 || (lhs = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &lhs) > 0))
          {
            if (--v48 > 1)
            {
              continue;
            }
          }

          goto LABEL_115;
        }

        RunConverter_cold_3();
      }
    }

    else
    {
LABEL_115:
      if (v47 >= 1)
      {
        do
        {
          v52 = CFArrayGetValueAtIndex(*(a1 + 264), 0);
          v53 = *(a1 + 48);
          if (v53)
          {
            v53(*(a1 + 56), 0, v52);
          }

          CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
          --v47;
        }

        while (v47);
      }
    }
  }

LABEL_97:
  if (v18)
  {
    if (v18 != 3)
    {
      v42 = *(a1 + 48);
      if (v42)
      {
        v42(*(a1 + 56), v18, 0);
      }
    }
  }
}

void RunConverter_0(uint64_t a1, CMSampleBufferRef sbuf)
{
  v104[1] = *MEMORY[0x1E69E9840];
  if (!sbuf)
  {
    if (*(a1 + 272) != 1)
    {
      return;
    }

    v7 = (a1 + 24);
    if (*(a1 + 24))
    {
      v6 = 10;
      goto LABEL_12;
    }

    goto LABEL_92;
  }

  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  if (!NumSamples)
  {
    return;
  }

  v6 = NumSamples;
  v7 = (a1 + 24);
  if (!*(a1 + 24))
  {
    v100.value = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(FormatDescription);
    if (!RichestDecodableFormat)
    {
      goto LABEL_92;
    }

    v10 = RichestDecodableFormat;
    v11 = AudioConverterNew(&RichestDecodableFormat->mASBD, (a1 + 40), (a1 + 136));
    if (v11)
    {
      v12 = v11;
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<<< FAD >>>>", 555, v2);
      goto LABEL_7;
    }

    LODWORD(v99.value) = 0;
    if (CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &v100))
    {
      if (HIDWORD(v100.value))
      {
        v59 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, 4294954586, "<<<< FAD >>>>", 561, v2);
        goto LABEL_7;
      }

      MagicCookie = CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &v100);
      v61 = AudioConverterSetProperty(*(a1 + 136), 0x646D6763u, v100.value, MagicCookie);
      if (v61)
      {
        v62 = v61;
        v63 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v63, v62, "<<<< FAD >>>>", 567, v2);
        goto LABEL_7;
      }
    }

    if (v10->mASBD.mFormatID == 1819304813)
    {
LABEL_104:
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      *(a1 + 264) = Mutable;
      if (Mutable)
      {
        v65 = *(a1 + 136);
        if (v65)
        {
          inPropertyData.duration.value = 0;
          AudioConverterSetProperty(v65, 0x7072696Du, 8u, &inPropertyData);
          v65 = *(a1 + 136);
        }

        LODWORD(v99.value) = 8;
        if (AudioConverterGetProperty(v65, 0x6877727Au, &v99, (a1 + 144)) || !*(a1 + 144))
        {
          *(a1 + 144) = 0;
        }

        if ((*(a1 + 52) & 0x20) != 0)
        {
          v74 = malloc_type_calloc(1uLL, 16 * (*(a1 + 68) - 1) + 24, 0x10800404ACF7207uLL);
          *(a1 + 80) = v74;
          if (v74)
          {
            v75 = *(a1 + 68);
            *v74 = v75;
            if (v75)
            {
              v76 = (v75 + 3) & 0x1FFFFFFFCLL;
              v77 = vdupq_n_s64(v75 - 1);
              v78 = xmmword_196E73080;
              v79 = xmmword_196E73090;
              v80 = v74 + 10;
              v81 = vdupq_n_s64(4uLL);
              do
              {
                v82 = vmovn_s64(vcgeq_u64(v77, v79));
                if (vuzp1_s16(v82, *v77.i8).u8[0])
                {
                  *(v80 - 8) = 1;
                }

                if (vuzp1_s16(v82, *&v77).i8[2])
                {
                  *(v80 - 4) = 1;
                }

                if (vuzp1_s16(*&v77, vmovn_s64(vcgeq_u64(v77, *&v78))).i32[1])
                {
                  *v80 = 1;
                  v80[4] = 1;
                }

                v78 = vaddq_s64(v78, v81);
                v79 = vaddq_s64(v79, v81);
                v80 += 16;
                v76 -= 4;
              }

              while (v76);
            }

            goto LABEL_8;
          }

          v84 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, 4294954510, "<<<< FAD >>>>", 630, v2);
        }

        else
        {
          v73 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
          *(a1 + 80) = v73;
          if (v73)
          {
            *v73 = 1;
            v73[2] = *(a1 + 68);
            goto LABEL_8;
          }

          v83 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v83, 4294954510, "<<<< FAD >>>>", 620, v2);
        }
      }

      else
      {
        v69 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, 4294954510, "<<<< FAD >>>>", 596, v2);
      }

      goto LABEL_7;
    }

    LODWORD(v99.value) = 4;
    AudioConverterGetProperty(*(a1 + 136), 0x74627566u, &v99, (a1 + 88));
    LODWORD(v99.value) = 4;
    Property = AudioConverterGetProperty(*(a1 + 136), 0x70616B66u, &v99, (a1 + 92));
    if (Property)
    {
      v67 = Property;
      v68 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, v67, "<<<< FAD >>>>", 583, v2);
    }

    else
    {
      LODWORD(v99.value) = 4;
      v70 = AudioConverterGetProperty(*(a1 + 136), 0x70616B62u, &v99, (a1 + 96));
      if (!v70)
      {
        goto LABEL_104;
      }

      v71 = v70;
      v72 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v71, "<<<< FAD >>>>", 589, v2);
    }

LABEL_7:
    if (!v14)
    {
LABEL_8:
      v15 = CMSampleBufferGetFormatDescription(sbuf);
      *v7 = v15;
      CFRetain(v15);
      goto LABEL_12;
    }

LABEL_92:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v86, sampleSizeArray);
    return;
  }

LABEL_12:
  acquireHardware_0(a1);
  if (v16)
  {
    return;
  }

  v17 = CMAudioFormatDescriptionGetRichestDecodableFormat(*v7);
  if (!v17)
  {
    return;
  }

  v18 = v17;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 32));
  if (!StreamBasicDescription)
  {
    return;
  }

  v20 = StreamBasicDescription;
  v21 = *(a1 + 160);
  *(a1 + 160) = sbuf;
  if (sbuf)
  {
    CFRetain(sbuf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  appended = 0;
  v23 = 0;
LABEL_20:
  v24 = v6 - v23;
  while (1)
  {
    if (appended == 3 || v6 <= v23)
    {
      return;
    }

    theBuffer = 0;
    v25 = (v18->mASBD.mFramesPerPacket * v24 * *(a1 + 56));
    ioOutputDataPacketSize = v18->mASBD.mFramesPerPacket * v24;
    if ((v20->mFormatFlags & 0x20) == 0)
    {
      v26 = MEMORY[0x19A8CC720](*(a1 + 296), v25, 3052348899, 0);
      v27 = *(a1 + 80);
      *(v27 + 16) = v26;
      if (v26)
      {
        *(v27 + 12) = v25;
        goto LABEL_32;
      }

      v58 = *(a1 + 296);
      v32 = v27;
LABEL_95:
      deallocateAndZeroBufferListDataPointers(v32, v58);
      return;
    }

    v28 = v24;
    if (*(a1 + 68))
    {
      v29 = 0;
      v30 = 0;
      while (1)
      {
        v31 = MEMORY[0x19A8CC720](*(a1 + 296), v25, 3588519503, 0);
        v32 = *(a1 + 80);
        *&v32[v29 + 4] = v31;
        if (!v31)
        {
          break;
        }

        v32[v29 + 3] = v25;
        ++v30;
        v29 += 4;
        if (v30 >= *(a1 + 68))
        {
          goto LABEL_30;
        }
      }

      v58 = *(a1 + 296);
      goto LABEL_95;
    }

LABEL_30:
    if (appended)
    {
      return;
    }

    v27 = *(a1 + 80);
    v24 = v28;
LABEL_32:
    v33 = AudioConverterFillComplexBuffer(*(a1 + 136), fadDecoderInputProc, a1, &ioOutputDataPacketSize, v27, 0);
    appended = v33;
    if (v33 && v33 != 3)
    {
      goto LABEL_132;
    }

    if (ioOutputDataPacketSize)
    {
      break;
    }

    deallocateAndZeroBufferListDataPointers(*(a1 + 80), *(a1 + 296));
    if (*(a1 + 272) == 1)
    {
      return;
    }
  }

  v34 = *(a1 + 296);
  v89 = v24;
  if ((v20->mFormatFlags & 0x20) != 0)
  {
    if (CMBlockBufferCreateEmpty(v34, *(a1 + 68), 0, &theBuffer))
    {
LABEL_132:
      v35 = *(a1 + 80);
      goto LABEL_133;
    }

    if (*(a1 + 68))
    {
      v36 = 0;
      v37 = 0;
      v38 = *(a1 + 80);
      while (1)
      {
        appended = CMBlockBufferAppendMemoryBlock(theBuffer, *&v38[v36 + 4], v25, *(a1 + 296), 0, 0, v20->mBytesPerPacket * ioOutputDataPacketSize, 0);
        v38 = *(a1 + 80);
        if (appended)
        {
          break;
        }

        v39 = &v38[v36];
        *(v39 + 2) = 0;
        v39[3] = 0;
        ++v37;
        v36 += 4;
        if (v37 >= *(a1 + 68))
        {
          appended = 0;
          goto LABEL_48;
        }
      }

      deallocateAndZeroBufferListDataPointers(v38, *(a1 + 296));
      CFRelease(theBuffer);
LABEL_48:
      LODWORD(v24) = v89;
    }

    else
    {
      appended = 0;
    }

LABEL_49:
    v40 = theBuffer;
    v41 = ioOutputDataPacketSize;
    if (!ioOutputDataPacketSize)
    {
      v41 = 0;
      goto LABEL_83;
    }

    bufferReference = theBuffer;
    v42 = 0;
    v88 = ioOutputDataPacketSize;
    v90 = v23;
    while (1)
    {
      v43 = v41 - v42;
      if (CFArrayGetCount(*(a1 + 264)) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 264), 0);
        v45 = *ValueAtIndex;
        v46 = *(a1 + 256);
        v47 = v46 + v42;
        if (*ValueAtIndex == v47)
        {
          v48 = ValueAtIndex[2] - v45;
          if (v43 < v48)
          {
            *ValueAtIndex = v45 + v43;
            goto LABEL_81;
          }

          free(ValueAtIndex);
          CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
          v23 = v90;
          goto LABEL_68;
        }

        v49 = v45 - v47;
        if (v46 + v41 > v45)
        {
          v43 = v49;
        }
      }

      v102 = 0;
      v103 = 0;
      memset(&inPropertyData, 0, sizeof(inPropertyData));
      v100 = **&MEMORY[0x1E6960C70];
      v92 = *&v100.value;
      epoch = v100.epoch;
      CMTimeMake(&inPropertyData.duration, *(a1 + 60), *(a1 + 40));
      inPropertyData.presentationTimeStamp = *(a1 + 192);
      *&inPropertyData.decodeTimeStamp.value = v92;
      inPropertyData.decodeTimeStamp.epoch = epoch;
      v93 = v43;
      CMTimeMake(&v100, v43, *(a1 + 40));
      lhs = *(a1 + 192);
      rhs = v100;
      CMTimeAdd(&v99, &lhs, &rhs);
      *(a1 + 192) = v99;
      v51 = *(a1 + 56);
      v24 = v51 * v42;
      v91 = v51;
      v52 = v51 * v43;
      v48 = v43;
      if ((*(a1 + 52) & 0x20) != 0 && *(a1 + 68) != 1)
      {
        v99.value = 0;
        if (CMBlockBufferGetDataPointer(bufferReference, 0, &v99, 0, 0) || CMBlockBufferCreateEmpty(*(a1 + 296), *(a1 + 68), 0, &v103))
        {
          goto LABEL_80;
        }

        if (*(a1 + 68))
        {
          v57 = 0;
          while (!CMBlockBufferAppendBufferReference(v103, bufferReference, v24 + v99.value * v57, v52, 0))
          {
            if (++v57 >= *(a1 + 68))
            {
              goto LABEL_76;
            }
          }

          if (v103)
          {
            CFRelease(v103);
          }

LABEL_80:
          v41 = v88;
          LODWORD(v24) = v89;
LABEL_81:
          v23 = v90;
          goto LABEL_82;
        }

LABEL_76:
        v54 = 0;
        v55 = 0;
        v41 = v88;
        LODWORD(v24) = v89;
        v48 = v43;
        v23 = v90;
      }

      else
      {
        v53 = CMBlockBufferCreateWithBufferReference(*(a1 + 296), bufferReference, v24, v52, 0, &v103);
        v41 = v88;
        LODWORD(v24) = v89;
        v23 = v90;
        if (v53)
        {
          goto LABEL_82;
        }

        v54 = v104;
        v55 = 1;
      }

      v104[0] = v91;
      if (CMSampleBufferCreate(*(a1 + 296), v103, 1u, 0, 0, *(a1 + 32), v93, 1, &inPropertyData, v55, v54, &v102))
      {
        if (v103)
        {
          CFRelease(v103);
        }

LABEL_82:
        v40 = theBuffer;
LABEL_83:
        *(a1 + 256) += v41;
        if (v40)
        {
          CFRelease(v40);
        }

        if (*(a1 + 272) == 1)
        {
          v6 = 10;
          v23 = 0;
        }

        else
        {
          v23 += v24;
        }

        goto LABEL_20;
      }

      v56 = *(a1 + 120);
      if (v56)
      {
        v56(*(a1 + 128), 0, v102);
      }

      if (v103)
      {
        CFRelease(v103);
      }

      if (v102)
      {
        CFRelease(v102);
      }

LABEL_68:
      v42 += v48;
      if (v42 >= v41)
      {
        goto LABEL_82;
      }
    }
  }

  appended = CMBlockBufferCreateWithMemoryBlock(v34, *(*(a1 + 80) + 16), v25, v34, 0, 0, v20->mBytesPerPacket * ioOutputDataPacketSize, 0, &theBuffer);
  v35 = *(a1 + 80);
  if (!appended)
  {
    *(v35 + 16) = 0;
    *(v35 + 12) = 0;
    goto LABEL_49;
  }

LABEL_133:
  deallocateAndZeroBufferListDataPointers(v35, *(a1 + 296));
}

uint64_t sbp_vtcs_outputFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = CMBaseObjectGetDerivedStorage();
  v8 = *(result + 24);
  if (v8)
  {
    v9 = *(result + 40);

    return v8(v9, a3, a5);
  }

  return result;
}

void mediaprocessor_OutputSampleBuffer(uint64_t a1, int a2, uint64_t a3)
{
  valuePtr = a2;
  if (a2)
  {
    cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (cf)
    {
      v5 = CFGetAllocator(a1);
      v6 = CFDictionaryCreate(v5, kFigMediaProcessorParameter_Result, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v6)
      {
        v7 = v6;
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        CFRelease(v7);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  if (a3)
  {
    v8 = *(a1 + 40);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(v8, a3);
    }

    ++*(a1 + 152);
  }
}

uint64_t otfw_sendSampleBuffer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v5 = *(DerivedStorage + 8);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v4, v5, a2);
}

void figMovieWriter_AddSampleBufferToTrack(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *(DerivedStorage + 335))
  {
    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 5137;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< FFW_QT/ISO >>>", v9, v8);
    return;
  }

  if (!a3)
  {
    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 5140;
    goto LABEL_4;
  }

  v12 = 0;
  getTrackInfoForTrackID(DerivedStorage, v5, &v12);
  if (!v10)
  {
    v11 = *(v12 + 608);

    CMBufferQueueEnqueue(v11, a3);
  }
}

void validateSampleBufferForTrackCallback(int a1, CMSampleBufferRef sbuf, uint64_t a3)
{
  if (!CMSampleBufferGetNumSamples(sbuf))
  {
    return;
  }

  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v9 = *a3;
  if (*a3 == 1635088502 || v9 == 1885954932 || v9 == 1986618469)
  {
    v12 = 1986618469;
  }

  else
  {
    v12 = *a3;
  }

  if (ImageBuffer)
  {
    TypeID = CVPixelBufferGetTypeID();
    if (TypeID != CFGetTypeID(ImageBuffer))
    {
      emitter = fig_log_get_emitter();
      v16 = v3;
      v17 = 7159;
      goto LABEL_21;
    }
  }

  if (!FormatDescription)
  {
    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 7164;
    goto LABEL_21;
  }

  if (v12 != MediaType)
  {
    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 7169;
    goto LABEL_21;
  }

  v14 = CMGetAttachment(sbuf, *MEMORY[0x1E6960520], 0);
  if (v14 && CFEqual(v14, *MEMORY[0x1E695E4D0]))
  {
    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 7177;
LABEL_21:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954527, "<<< FFW_QT/ISO >>>", v17, v16);
    return;
  }

  if (MediaType == 1936684398)
  {
    v33 = 0;
    v29 = 0;
    if (!FigMovieIsNonInterleavedPCMAudioSample(sbuf, &v33))
    {
      if (v33)
      {
        validateSampleBufferForTrackCallback_cold_1(&time1);
      }

      else
      {
        memset(&v32, 0, sizeof(v32));
        v30 = 0.0;
        memset(&v31, 0, sizeof(v31));
        getTrimDurationsAndSpeedMultiplierFromSbuf(sbuf, &v32, &v31, &v29, &v30);
        time1 = **&MEMORY[0x1E6960CC0];
        v26 = *&time1.value;
        epoch = time1.epoch;
        time2 = v32;
        v19 = CMTimeCompare(&time1, &time2);
        *&time1.value = v26;
        time1.epoch = epoch;
        time2 = v31;
        v20 = CMTimeCompare(&time1, &time2);
        v21 = *(a3 + 16);
        if ((*(v21 + 324) - 6) >= 0xFFFFFFFB)
        {
          if ((*(a3 + 768) == 2 || *(v21 + 384)) && editBoundaryDetectorDetectBoundary(*(a3 + 536), v29, v19 != 0, v20 != 0, v30))
          {
            v23 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294949751, "<<< FFW_QT/ISO >>>", 7229, v3);
          }
        }

        else if (v19)
        {
          v22 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954527, "<<< FFW_QT/ISO >>>", 7237, v3);
        }

        else if (v20)
        {
          v24 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954527, "<<< FFW_QT/ISO >>>", 7243, v3);
        }

        else if (v30 != 1.0)
        {
          v25 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294954527, "<<< FFW_QT/ISO >>>", 7249, v3);
        }
      }
    }
  }
}

uint64_t wakeupWritingThreadForDataReady(uint64_t a1)
{
  v1 = *(a1 + 16);
  FigSimpleMutexLock();
  if (*(v1 + 335))
  {
    return FigSimpleMutexUnlock();
  }

  if (!*(v1 + 528))
  {
    FigSimpleMutexLock();
    if (*(v1 + 528))
    {
LABEL_28:
      FigSimpleMutexUnlock();
      goto LABEL_29;
    }

    Count = CFArrayGetCount(*(v1 + 488));
    v3 = Count;
    values = **&MEMORY[0x1E6960C70];
    v4 = *(v1 + 329);
    if (*(v1 + 329))
    {
      v5 = 120;
      if ((*(v1 + 132) & 1) == 0)
      {
        v5 = 96;
      }
    }

    else
    {
      if (!*(v1 + 330))
      {
LABEL_11:
        *(v1 + 220) = *(v1 + 196);
        *(v1 + 236) = *(v1 + 212);
        v6 = MEMORY[0x1E6960CC0];
        if (Count >= 1)
        {
          v7 = 0;
          v18 = *MEMORY[0x1E6960CC0];
          v8 = *(MEMORY[0x1E6960CC0] + 16);
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 488), v7);
            time1 = *(ValueAtIndex + 108);
            *&time2.value = v18;
            time2.epoch = v8;
            v10 = CMTimeCompare(&time1, &time2);
            v11 = ValueAtIndex + 648;
            if (v10)
            {
              *v11 = *(ValueAtIndex + 108);
              *(ValueAtIndex + 83) = *(ValueAtIndex + 124);
            }

            else
            {
              v12 = *(v1 + 48);
              *(ValueAtIndex + 83) = *(v1 + 64);
              *v11 = v12;
            }

            time2 = values;
            rhs = *(ValueAtIndex + 108);
            CMTimeAdd(&time1, &time2, &rhs);
            *(ValueAtIndex + 28) = time1;
            setTrackHeaderDataCompleteFlagIfCumulatedInterleavingDurationReachesCumulatedMovieFragmentDuration(ValueAtIndex);
            ++v7;
          }

          while (v3 != v7);
          v4 = *(v1 + 329);
        }

        if (v4)
        {
          LOBYTE(v4) = *(v1 + 16);
          if (v4)
          {
            LOBYTE(v4) = *(v1 + 17) != 0;
          }
        }

        *(v1 + 331) = v4;
        v13 = sortTrackInfoLikedList(*(v1 + 496));
        *(v1 + 496) = v13;
        *(v1 + 504) = v13;
        if ((*(v1 + 36) & 1) == 0)
        {
          *(v1 + 24) = *v6;
          *(v1 + 40) = *(v6 + 16);
        }

        values.value = @"com.apple.coremedia.formatwriter.qtmovie";
        v14 = *MEMORY[0x1E695E480];
        v15 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigThreadCreate();
        if (*(v1 + 544))
        {
          v16 = CFNumberCreate(v14, kCFNumberSInt32Type, (v1 + 544));
          FigThreadSetProperty();
          CFRelease(v16);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        FigMemoryBarrier();
        *(v1 + 528) = 1;
        goto LABEL_28;
      }

      v5 = 144;
    }

    values = *(v1 + v5);
    goto LABEL_11;
  }

LABEL_29:
  if ((*(v1 + 36) & 1) == 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, DWORD2(v18), LODWORD(rhs.value));
  }

  if (*(v1 + 560))
  {
    FigSemaphoreSignal();
  }

  return FigSimpleMutexUnlock();
}

uint64_t sortTrackInfoLikedList(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = *(v1 + 24);
      v3 = result;
      if (v2)
      {
        v3 = result;
        do
        {
          v3 = *(v3 + 24);
          v4 = *(v2 + 24);
          if (!v4)
          {
            break;
          }

          v2 = *(v4 + 24);
        }

        while (v2);
        v1 = *(v3 + 24);
      }

      *(v3 + 24) = 0;
      v5 = sortTrackInfoLikedList(result);
      v6 = sortTrackInfoLikedList(v1);

      return mergeTrackInfoLinkedList(v5, v6);
    }
  }

  return result;
}

uint64_t writingThread(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 329) && *(a1 + 330))
  {
    writingThread_cold_1(v40);
    v6 = LODWORD(v40[0]);
    goto LABEL_13;
  }

  if (*(a1 + 384) || *(a1 + 330))
  {
    BlockBufferByteStreamForMovieSampleDataWriter = createBlockBufferByteStreamForMovieSampleDataWriter(a1);
    if (BlockBufferByteStreamForMovieSampleDataWriter)
    {
LABEL_110:
      v6 = BlockBufferByteStreamForMovieSampleDataWriter;
      goto LABEL_111;
    }
  }

  else
  {
    BlockBufferByteStreamForMovieSampleDataWriter = MovieSampleDataWriterSetDefaultByteStream(*(a1 + 752), *(a1 + 8));
    if (BlockBufferByteStreamForMovieSampleDataWriter)
    {
      goto LABEL_110;
    }
  }

  BlockBufferByteStreamForMovieSampleDataWriter = MovieSampleDataWriterSetThreadPriorityAndClientPID(*(a1 + 752), *(a1 + 552), *(a1 + 544));
  if (BlockBufferByteStreamForMovieSampleDataWriter)
  {
    goto LABEL_110;
  }

  memset(&token_out, 0, sizeof(token_out));
  if (!*(a1 + 608))
  {
    v6 = 0;
    goto LABEL_13;
  }

  memset(&v40[2] + 4, 0, 28);
  memset(v40 + 4, 0, 32);
  LODWORD(v40[0]) = 799564724;
  v3 = os_workgroup_attr_set_flags();
  if (v3)
  {
    writingThread_cold_2(v3, &theBuffer);
LABEL_115:
    v6 = theBuffer;
    goto LABEL_13;
  }

  v4 = os_workgroup_create();
  v5 = __error();
  if (!v4)
  {
    writingThread_cold_3(v5, &theBuffer);
    goto LABEL_115;
  }

  v6 = os_workgroup_join(v4, &token_out);
  if (v6)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, theBuffer, LODWORD(v40[0]));
    v6 = v37;
    os_release(v4);
  }

  else
  {
    *(a1 + 616) = v4;
    v7 = *&token_out.opaque[12];
    *(a1 + 624) = *&token_out.sig;
    *(a1 + 640) = v7;
    *(a1 + 656) = *&token_out.opaque[28];
  }

LABEL_13:
  if (v6)
  {
LABEL_111:
    setWritingThreadErrorAndPostErrorOccurredNotification(a1, v6);
  }

  if (*(a1 + 571))
  {
    goto LABEL_15;
  }

  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E6960C70];
  do
  {
    if (*(a1 + 568))
    {
      v12 = flushAllSampleBufferQueues(a1);
      if (v12 || (v12 = MovieSampleDataWriterFlush(*(a1 + 752)), v12))
      {
        setWritingThreadErrorAndPostErrorOccurredNotification(a1, v12);
      }

      *(a1 + 568) = 0;
      goto LABEL_99;
    }

    if (*(a1 + 570))
    {
      v13 = writeMovieHeader(a1, *(a1 + 17) != 0, 0);
      if (v13)
      {
        v17 = v13;
      }

      else
      {
        if (!*(a1 + 329) || !*(a1 + 531))
        {
          goto LABEL_41;
        }

        v14 = *(a1 + 360);
        theBuffer = 0;
        *&v40[0] = 0;
        *&token_out.sig = 0;
        FirstMediaDataAtomOffset = MovieSampleDataWriterGetFirstMediaDataAtomOffset(*(a1 + 752), 0, v40);
        if (FirstMediaDataAtomOffset || (FirstMediaDataAtomOffset = MovieSampleDataWriterCopyURLOfDefaultByteStream(*(a1 + 752), v10, &token_out), FirstMediaDataAtomOffset) || (FirstMediaDataAtomOffset = createMovieAtomBBuf(a1, 0, *&token_out.sig, &theBuffer), FirstMediaDataAtomOffset) || (v16 = theBuffer, *(a1 + 368) = CMBlockBufferGetDataLength(theBuffer), FirstMediaDataAtomOffset = MovieSampleDataWriterAppendHeader(*(a1 + 752), v16, (a1 + 360)), FirstMediaDataAtomOffset) || (MovieSampleDataWriterSynchronizeDefaultByteStream(*(a1 + 752), 1, 0), FirstMediaDataAtomOffset = MovieSampleDataWriterWriteData(*(a1 + 752), 1, v14 + 4, "h"), FirstMediaDataAtomOffset) || (*(a1 + 352) = 0, FirstMediaDataAtomOffset = MovieSampleDataWriterPatchFirstMediaDataAtomSize(*(a1 + 752), *(a1 + 360) - *&v40[0]), FirstMediaDataAtomOffset))
        {
          v17 = FirstMediaDataAtomOffset;
        }

        else
        {
          if (*(a1 + 17))
          {
            MovieSampleDataWriterSynchronizeDefaultByteStream(*(a1 + 752), 1, 0);
          }

          v17 = 0;
          *(a1 + 532) = 1;
        }

        if (*&token_out.sig)
        {
          CFRelease(*&token_out.sig);
        }

        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        if (!v17)
        {
          goto LABEL_41;
        }
      }

      setWritingThreadErrorAndPostErrorOccurredNotification(a1, v17);
LABEL_41:
      *(a1 + 570) = 0;
LABEL_99:
      FigSemaphoreSignal();
      goto LABEL_100;
    }

    if (*(a1 + 569))
    {
      v18 = *(a1 + 488);
      if (v18)
      {
        Count = CFArrayGetCount(v18);
        v20 = flushAllSampleBufferQueues(a1);
        if (!v20)
        {
          if (Count >= 1)
          {
            v21 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 488), v21);
              v40[0] = *(a1 + 664);
              *&v40[1] = *(a1 + 680);
              trackEndSession(ValueAtIndex, v40, 2);
              if (v20)
              {
                goto LABEL_104;
              }
            }

            while (Count != ++v21);
          }

LABEL_97:
          *(a1 + 24) = *v11;
          *(a1 + 40) = *(v11 + 16);
LABEL_98:
          *(a1 + 569) = 0;
          goto LABEL_99;
        }
      }

      else
      {
        v20 = flushAllSampleBufferQueues(a1);
        if (!v20)
        {
          goto LABEL_97;
        }
      }

LABEL_104:
      setWritingThreadErrorAndPostErrorOccurredNotification(a1, v20);
      goto LABEL_98;
    }

    while (1)
    {
      while (1)
      {
        v31 = *(a1 + 504);
        if (isReadyToWriteTrackHeaderWithNoSamples(v31))
        {
          v28 = 0;
          v30 = 0;
          v29 = 6;
          goto LABEL_83;
        }

        if (reachedInterleavingPeriod(v31))
        {
          v28 = 0;
          v30 = 0;
          v29 = 1;
          goto LABEL_83;
        }

        if (trackBufferQueueIsSampleAvailable(v31))
        {
          v28 = 0;
          v30 = 0;
          v29 = 2;
          goto LABEL_83;
        }

        if (trackBufferQueueIsAtEndOfData(v31))
        {
          break;
        }

        if (!*(v31 + 352) && !*(v31 + 100))
        {
          v28 = 0;
          v29 = 5;
          v30 = 1;
          goto LABEL_83;
        }

        v26 = *(a1 + 504);
        if (!v26)
        {
          goto LABEL_100;
        }

        while (!CMBufferQueueTestTrigger(*(v26 + 608), *(v26 + 640)))
        {
          if (*(v26 + 24))
          {
            v26 = *(v26 + 24);
          }

          else
          {
            v26 = *(a1 + 496);
          }

          if (v26 == *(a1 + 504))
          {
            goto LABEL_100;
          }
        }

        v27 = *(a1 + 504);
        if (!*(v27 + 100))
        {
          v27 = *(v27 + 24) ? *(v27 + 24) : *(a1 + 496);
          if (v27 == v26)
          {
            if (*(v27 + 24))
            {
              v27 = *(v27 + 24);
            }

            else
            {
              v27 = *(a1 + 496);
            }
          }
        }

        setNextCumulatedInterleavingDuration(v31);
        *(a1 + 504) = v26;
        *(a1 + 512) = v27;
      }

      v30 = 0;
      v29 = 3;
      v28 = 1;
LABEL_83:
      LOBYTE(v40[0]) = 1;
      LOBYTE(token_out.sig) = 1;
      v32 = handleWritingThreadEvent(v31, v29, v40, &token_out);
      if (v32)
      {
        break;
      }

      if (LOBYTE(v40[0]))
      {
        v33 = *(a1 + 512);
        if (v33)
        {
          *(a1 + 504) = v33;
          *(a1 + 512) = 0;
        }

        else
        {
          v34 = *(a1 + 496);
          if (*(v31 + 24))
          {
            v34 = *(v31 + 24);
          }

          *(a1 + 504) = v34;
        }
      }

      if (LOBYTE(token_out.sig))
      {
        setNextCumulatedInterleavingDuration(v31);
      }

      if ((v28 | v30) == 1)
      {
        v35 = CFArrayGetCount(*(a1 + 488));
        if (v35 < 1)
        {
          goto LABEL_100;
        }

        v23 = v35;
        v24 = 0;
        while (1)
        {
          v25 = CFArrayGetValueAtIndex(*(a1 + 488), v24);
          if (!trackBufferQueueIsAtEndOfData(v25) && (v25[352] || trackBufferQueueIsSampleAvailable(v25)))
          {
            break;
          }

          if (v23 == ++v24)
          {
            goto LABEL_100;
          }
        }
      }
    }

    setWritingThreadErrorAndPostErrorOccurredNotification(a1, v32);
LABEL_100:
    v36 = MovieSampleDataWriterFlush(*(a1 + 752));
    if (v36)
    {
      setWritingThreadErrorAndPostErrorOccurredNotification(a1, v36);
    }

    FigSemaphoreWaitRelative();
  }

  while (!*(a1 + 571));
LABEL_15:
  v8 = *(a1 + 616);
  if (v8)
  {
    os_workgroup_leave(v8, (a1 + 624));
  }

  return 0;
}

BOOL reachedInterleavingPeriod(uint64_t a1)
{
  memset(&v5, 0, sizeof(v5));
  getMediaDecodeDuration(a1, &v5);
  if ((v5.flags & 1) == 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3.value, v3.timescale, LODWORD(v3.epoch));
  }

  if (*(a1 + 100))
  {
    return 0;
  }

  time1 = *(a1 + 648);
  v3 = v5;
  return CMTimeCompare(&time1, &v3) < 1;
}

void facEncoderInputProc(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a5 + 24));
  v9 = CMAudioFormatDescriptionGetStreamBasicDescription(*(a5 + 32));
  v10 = *(a5 + 96);
  if (v10)
  {
    CFRelease(v10);
    *(a5 + 96) = 0;
  }

  v11 = *(a5 + 88);
  *(a5 + 88) = 0;
  if (!v11)
  {
    *a2 = 0;
    return;
  }

  if (!*(a5 + 144))
  {
    CMSampleBufferGetPresentationTimeStamp(&v63, v11);
    *(a5 + 120) = v63;
    *(a5 + 144) = 1;
  }

  if (CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v11, 0, *(a5 + 104), *(a5 + 112), *MEMORY[0x1E695E480], *MEMORY[0x1E695E480], 0, (a5 + 96)))
  {
    *a2 = 0;
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, LODWORD(v63.value), v63.timescale);
    return;
  }

  v12 = *(a5 + 104);
  NumSamples = CMSampleBufferGetNumSamples(v11);
  v14 = NumSamples;
  v15 = *(a5 + 176);
  if (v15)
  {
    if (StreamBasicDescription->mChannelsPerFrame != 2 || v9->mChannelsPerFrame != 1)
    {
LABEL_73:
      v12 = *(a5 + 176);
      goto LABEL_74;
    }

    v16 = *v15;
    v17 = NumSamples * (StreamBasicDescription->mBytesPerPacket >> 1);
    if (v16 == 1)
    {
      v17 *= v15[2];
      v18 = (a5 + 184);
      if (v17 <= *(a5 + 184))
      {
        v16 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      v18 = (a5 + 184);
      if (v17 <= *(a5 + 184))
      {
        goto LABEL_28;
      }

      if (!*v15)
      {
LABEL_27:
        *v18 = v17;
LABEL_28:
        if (!v16)
        {
LABEL_37:
          mFormatFlags = StreamBasicDescription->mFormatFlags;
          if (mFormatFlags)
          {
            if (v14)
            {
              v40 = *(v15 + 2);
              v41 = *(*(a5 + 104) + 16);
              v42 = v14;
              do
              {
                v43 = *v41;
                v44 = v41[1];
                v41 += 2;
                *v40++ = (v44 * 0.707) + (v43 * 0.707);
                --v42;
              }

              while (v42);
            }
          }

          else
          {
            mBitsPerChannel = StreamBasicDescription->mBitsPerChannel;
            if ((mFormatFlags & 2) != 0 || StreamBasicDescription->mFormatID != 1819304813)
            {
              v45 = *(*(a5 + 104) + 16);
              v46 = *(v15 + 2);
              if (mBitsPerChannel == 16)
              {
                StereoMonoDownMix16SwappedEndian(v45, v46, v14);
              }

              else
              {
                StereoMonoDownMix32SwappedEndian(v45, v46, v14);
              }
            }

            else if (mBitsPerChannel == 16)
            {
              if (v14)
              {
                v33 = *(v15 + 2);
                v34 = *(*(a5 + 104) + 16);
                v35 = v14;
                do
                {
                  v36 = ((2896 * v34[1]) >> 12) + ((2896 * *v34) >> 12);
                  if (v36 >= 0x7FFF)
                  {
                    v37 = 0x7FFF;
                  }

                  else
                  {
                    v37 = ((2896 * v34[1]) >> 12) + ((2896 * *v34) >> 12);
                  }

                  if (v36 <= -32768)
                  {
                    v38 = 0x8000;
                  }

                  else
                  {
                    v38 = ((2896 * v34[1]) >> 12) + ((2896 * *v34) >> 12);
                  }

                  if (v36 <= 0)
                  {
                    v39 = v38;
                  }

                  else
                  {
                    v39 = v37;
                  }

                  *v33++ = v39;
                  v34 += 2;
                  --v35;
                }

                while (v35);
              }
            }

            else if (v14)
            {
              v47 = *(v15 + 2);
              v48 = *(*(a5 + 104) + 16);
              v49 = v14;
              do
              {
                v50 = *v48;
                v51 = v48[1];
                v48 += 2;
                v52 = ((11863283 * v51) >> 24) + ((11863283 * v50) >> 24);
                if (v52 >= 0x7FFFFFFF)
                {
                  v53 = 0x7FFFFFFF;
                }

                else
                {
                  v53 = v52;
                }

                if (v52 <= 0xFFFFFFFF80000000)
                {
                  v54 = 0x80000000;
                }

                else
                {
                  v54 = v52;
                }

                if (v52 <= 0)
                {
                  v55 = v54;
                }

                else
                {
                  v55 = v53;
                }

                *v47++ = v55;
                --v49;
              }

              while (v49);
            }
          }

          goto LABEL_73;
        }

LABEL_29:
        v24 = (v16 + 3) & 0x1FFFFFFFCLL;
        v25 = vdupq_n_s64(v16 - 1);
        v26 = xmmword_196E73080;
        v27 = xmmword_196E73090;
        v28 = v15 + 11;
        v29 = vdupq_n_s64(4uLL);
        do
        {
          v30 = vmovn_s64(vcgeq_u64(v25, v27));
          if (vuzp1_s16(v30, *v25.i8).u8[0])
          {
            *(v28 - 8) = v17;
          }

          if (vuzp1_s16(v30, *&v25).i8[2])
          {
            *(v28 - 4) = v17;
          }

          if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
          {
            *v28 = v17;
            v28[4] = v17;
          }

          v26 = vaddq_s64(v26, v29);
          v27 = vaddq_s64(v27, v29);
          v28 += 16;
          v24 -= 4;
        }

        while (v24);
        goto LABEL_37;
      }
    }

    v19 = 0;
    v20 = (v15 + 4);
    do
    {
      if (*v20)
      {
        free(*v20);
        *v20 = 0;
        v16 = *v15;
      }

      *(v20 - 1) = 0;
      ++v19;
      v20 += 2;
    }

    while (v19 < v16);
    v15 = *(a5 + 176);
    if (*v15)
    {
      v21 = 0;
      v22 = 4;
      while (1)
      {
        v23 = malloc_type_malloc(v17, 0x9C4A3380uLL);
        v15 = *(a5 + 176);
        *&v15[v22] = v23;
        if (!v23)
        {
          goto LABEL_37;
        }

        ++v21;
        v16 = *v15;
        v22 += 4;
        if (v21 >= v16)
        {
          goto LABEL_27;
        }
      }
    }

    v16 = 0;
    goto LABEL_27;
  }

LABEL_74:
  v56 = *a3;
  if (v56)
  {
    v57 = 0;
    v60 = *v12;
    v59 = v12 + 4;
    v58 = v60;
    v61 = a3 + 4;
    do
    {
      if (v57 < v58)
      {
        *(v61 - 1) = *(v59 - 1);
        *v61 = *v59;
      }

      ++v57;
      v59 += 2;
      v61 += 4;
    }

    while (v56 != v57);
  }

  *a2 = v14;
  *(a5 + 200) += v14;
}

uint64_t handleWritingThreadEvent(uint64_t a1, int a2, BOOL *a3, char *a4)
{
  v8 = *(a1 + 16);
  if (a2 > 2)
  {
    if (a2 == 5)
    {
      if (!*(v8 + 329) && !*(v8 + 330))
      {
        goto LABEL_12;
      }

      if (!doesTrackHaveFormatDescriptionAndNonZeroMediaTimeScale(a1))
      {
        goto LABEL_12;
      }

      started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
      if (!started)
      {
        goto LABEL_12;
      }

      return started;
    }

    if ((a2 - 3) >= 2)
    {
      started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
      if (!started)
      {
        v11 = 0;
        v10 = 1;
        goto LABEL_80;
      }

      return started;
    }

    v10 = *(a1 + 328) == 0;
    MediaSampleTimingGeneratorGetDefaultLastSampleDuration(*(a1 + 752), &v48);
    started = flushSampleBufferToTrack(a1, &v48);
    if (started)
    {
      return started;
    }

    if (a2 == 3)
    {
      if (!*(v8 + 329) && !*(v8 + 330))
      {
        v11 = *(v8 + 168);
        if (!v11)
        {
          goto LABEL_80;
        }
      }

      started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
      if (started)
      {
        return started;
      }
    }

LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  if (a2 == 1)
  {
    if (!*(v8 + 329) && !*(v8 + 330) || !*(a1 + 601))
    {
      goto LABEL_12;
    }

    started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
    if (!started)
    {
      *(a1 + 601) = 0;
LABEL_12:
      v10 = 1;
      v11 = 1;
LABEL_80:
      v35 = 0;
      *a3 = v10;
      *a4 = v11;
      return v35;
    }

    return started;
  }

  sbuf = 0;
  if (*(v8 + 329))
  {
    if (*(v8 + 332))
    {
      if (!*(v8 + 352) && !*(a1 + 600))
      {
        Head = CMBufferQueueGetHead(*(a1 + 608));
        sbuf = Head;
        if (CMSampleBufferGetNumSamples(Head))
        {
          FormatDescription = CMSampleBufferGetFormatDescription(Head);
          started = MovieTrackFindOrAddSampleDescription(*(a1 + 736), FormatDescription, 0, 0);
          if (started)
          {
            return started;
          }

          goto LABEL_86;
        }
      }
    }
  }

  if (*(v8 + 168))
  {
    v41 = 0;
    v12 = *(a1 + 16);
    v39 = *MEMORY[0x1E6960C70];
    *&v42.value = *MEMORY[0x1E6960C70];
    v13 = *(MEMORY[0x1E6960C70] + 16);
    v42.epoch = v13;
    if (*a1 != 1936684398)
    {
      goto LABEL_60;
    }

    if (*(a1 + 776))
    {
      goto LABEL_60;
    }

    v14 = trackBufferQueueGetHead(a1);
    if (!v14)
    {
      goto LABEL_60;
    }

    v15 = v14;
    if (!CMSampleBufferGetNumSamples(v14))
    {
      goto LABEL_60;
    }

    v16 = (a1 + 784);
    v17 = *(a1 + 810);
    if (*(a1 + 810))
    {
      goto LABEL_49;
    }

    if (*(a1 + 808))
    {
      if (*(a1 + 809))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v21 = CMSampleBufferGetFormatDescription(v15);
      if (!v21)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, DWORD2(v39), sbuf);
        v24 = *(a1 + 809);
        v17 = *(a1 + 810);
        *&v43.value = *v16;
        v43.epoch = *(a1 + 800);
        if (started)
        {
          return started;
        }

        goto LABEL_50;
      }

      memset(&v48, 0, sizeof(v48));
      FigGaplessInfoGetDefaultAudioPrimingDuration(v21, &v48);
      if (v48.flags)
      {
        v47 = **&MEMORY[0x1E6960CC0];
        time1 = v48;
        v22 = CMTimeCompare(&v47, &time1) >> 31;
      }

      else
      {
        v22 = 0;
      }

      *(a1 + 809) = v22;
      *(a1 + 808) = 1;
      if (v22)
      {
LABEL_25:
        v18 = CMGetAttachment(v15, *MEMORY[0x1E6960560], 0);
        memset(&v48, 0, sizeof(v48));
        CMSampleBufferGetDuration(&v48, v15);
        memset(&v47, 0, sizeof(v47));
        CMTimeMakeFromDictionary(&v47, v18);
        if ((v47.flags & 1) == 0)
        {
          v47 = **&MEMORY[0x1E6960CC0];
        }

        if (*(a1 + 796))
        {
          *&lhs.value = *v16;
          lhs.epoch = *(a1 + 800);
          rhs = v47;
          CMTimeAdd(&time1, &lhs, &rhs);
          *v16 = *&time1.value;
          epoch = time1.epoch;
        }

        else
        {
          *v16 = *&v47.value;
          epoch = v47.epoch;
        }

        *(a1 + 800) = epoch;
        time1 = v47;
        lhs = v48;
        if ((CMTimeCompare(&time1, &lhs) & 0x80000000) == 0)
        {
          v17 = *(a1 + 810);
LABEL_49:
          v24 = *(a1 + 809);
          *&v43.value = *v16;
          v43.epoch = *(a1 + 800);
LABEL_50:
          if (v17 == 1)
          {
            v25 = (a1 + 776);
            AudioSampleBufferSplitterCreate((a1 + 776));
            if (started)
            {
              return started;
            }

            CMSampleBufferGetFormatDescription(v15);
            v26 = FigAudioFormatDescriptionEmploysDependentPackets() ? 2 : 1;
            started = AudioSampleBufferSplitterSetSplitMethod(*v25, v26);
            if (started)
            {
              return started;
            }

            if (v24)
            {
              v48 = *(v12 + 172);
              v47 = v43;
              CMTimeSubtract(&v42, &v48, &v47);
            }

            else
            {
              v42 = *(v12 + 172);
            }

            v27 = *v25;
            v48 = v42;
            v47 = *(v12 + 196);
            started = AudioSampleBufferSplitterSetInitialSegmentStartTimeAndSegmentInterval(v27, &v48.value, &v47);
            if (started)
            {
              return started;
            }
          }

LABEL_60:
          v28 = *(a1 + 16);
          *&v48.value = v39;
          v48.epoch = v13;
          *&v47.value = v39;
          v47.epoch = v13;
          v29 = *(a1 + 344);
          if (v29 == 2)
          {
            v31 = *(a1 + 328);
            if (v31)
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&v48, v31);
              v30 = *(a1 + 328);
              goto LABEL_66;
            }
          }

          else
          {
            if (v29 != 1)
            {
              v33 = 0;
LABEL_68:
              v34 = *(a1 + 776);
              if (v34)
              {
                started = AudioSampleBufferSplitterGetInitialSegmentStartTimeAndSegmentInterval(v34, &v47, 0);
                if (started)
                {
                  return started;
                }
              }

              else
              {
                v47 = *(v28 + 172);
              }

              memset(&time1, 0, sizeof(time1));
              lhs = v48;
              rhs = v47;
              CMTimeSubtract(&time1, &lhs, &rhs);
              lhs = *(v28 + 220);
              rhs = time1;
              if (CMTimeCompare(&lhs, &rhs) < 1 && v33)
              {
LABEL_86:
                started = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(a1);
                if (started)
                {
                  return started;
                }

                v10 = 1;
                goto LABEL_79;
              }

              goto LABEL_73;
            }

            v30 = trackBufferQueueGetHead(a1);
            if (CMSampleBufferGetNumSamples(v30))
            {
              CMSampleBufferGetOutputPresentationTimeStamp(&v48, v30);
LABEL_66:
              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v30, 0);
              v33 = isFirstSampleAttachmentSync(SampleAttachmentsArray) != 0;
              goto LABEL_68;
            }
          }

LABEL_73:
          v48 = *(*(a1 + 16) + 48);
          started = trackBufferQueueDequeueAndRetain(a1, &v48, &v41);
          if (started)
          {
            return started;
          }

          v20 = v41;
          goto LABEL_75;
        }

LABEL_48:
        v17 = 1;
        *(a1 + 810) = 1;
        goto LABEL_49;
      }
    }

    v23 = MEMORY[0x1E6960CC0];
    *v16 = *MEMORY[0x1E6960CC0];
    *(a1 + 800) = *(v23 + 16);
    goto LABEL_48;
  }

  v48 = *(v8 + 48);
  started = trackBufferQueueDequeueAndRetain(a1, &v48, &sbuf);
  if (started)
  {
    return started;
  }

  v20 = sbuf;
LABEL_75:
  v35 = addSampleBufferToTrack_0(a1, v20);
  if (v20)
  {
    CFRelease(v20);
  }

  if (!v35)
  {
    v10 = 0;
    goto LABEL_79;
  }

  return v35;
}

uint64_t addSampleBufferWithSampleMediaTimingToTrack(int *a1, CMSampleBufferRef sbuf, uint64_t a3, CMTime *a4, uint64_t a5, uint64_t a6, unsigned int a7, double a8)
{
  HIDWORD(v203) = a7;
  v291[100] = *MEMORY[0x1E69E9840];
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  ptr = 0;
  v272 = 0;
  valuePtr = 0;
  cf = 0;
  v17 = CMGetAttachment(sbuf, *MEMORY[0x1E6960528], 0);
  v18 = v17;
  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
    v19 = CMGetAttachment(sbuf, *MEMORY[0x1E6960530], 0);
    if (DataBuffer)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (DataBuffer)
    {
      goto LABEL_6;
    }
  }

  DataBuffer = ImageBuffer;
  if (!(ImageBuffer | v18))
  {
    v21 = 0;
    goto LABEL_37;
  }

LABEL_6:
  SampleSizeArrayFromSbuf = getSampleSizeArrayFromSbuf(sbuf, 100, v291, &v272);
  if (SampleSizeArrayFromSbuf != -12737)
  {
    v21 = SampleSizeArrayFromSbuf;
    if (!SampleSizeArrayFromSbuf)
    {
      HIDWORD(v193) = 0;
      ptr = v291;
      goto LABEL_9;
    }

LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  if ((v272 - 0x2000000000000000) <= 0xE000000000000000 || (v34 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 8 * v272, 2888612535, 0), (ptr = v34) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_69();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v21 = v24;
    goto LABEL_37;
  }

  v35 = getSampleSizeArrayFromSbuf(sbuf, v272, v34, 0);
  HIDWORD(v193) = 1;
  if (v35)
  {
    v21 = v35;
    v23 = 1;
    goto LABEL_38;
  }

LABEL_9:
  if (NumSamples)
  {
    if (!v272 && !v18)
    {
      OUTLINED_FUNCTION_63();
      if (v29)
      {
        v22 = FigMovieCreateContiguousBBufFromNonContiguousAudioSample(sbuf, *MEMORY[0x1E695E480], &cf, *MEMORY[0x1E695E480], &v272, &ptr);
        if (v22)
        {
LABEL_19:
          v21 = v22;
          v23 = HIDWORD(v193);
          goto LABEL_38;
        }

        HIDWORD(v193) = 1;
        DataBuffer = cf;
      }
    }
  }

  theArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
  if (theArray)
  {
    if (CFArrayGetCount(theArray) != NumSamples)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160, v166, v172);
      if (v22)
      {
        goto LABEL_19;
      }
    }
  }

  v188 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], sbuf, 1u);
  v25 = *(a1 + 2);
  if (*(v25 + 384) || *(v25 + 533))
  {
    setTrackExtendsDefaultValuesIfNeeded(a1);
  }

  else if (!*(a1 + 728))
  {
    if (a3 && v272)
    {
      v26 = *a1;
      value = a4->value;
      v28 = *ptr;
      v29 = *a1 == 1635088502 || v26 == 1885954932;
      if (v29 || v26 == 1986618469)
      {
        v31 = 16842752;
      }

      else
      {
        OUTLINED_FUNCTION_63();
        if (v33)
        {
          v31 = (FigAudioFormatDescriptionEmploysDependentPackets() != 0) << 16;
        }

        else
        {
          v31 = 0;
        }
      }

      LengthOfDefaultByteStream = MovieTrackSetTrackExtendsDefaultValues(*(a1 + 92), 1, value, v28, v31);
      if (LengthOfDefaultByteStream)
      {
        goto LABEL_167;
      }

      *(a1 + 728) = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160, v166, v172);
      if (LengthOfDefaultByteStream)
      {
        goto LABEL_167;
      }
    }
  }

  v37 = ptr;
  v38 = v272;
  v178 = ptr;
  v183 = v272;
  if (v272 == 1)
  {
    v39 = *ptr * NumSamples;
  }

  else
  {
    v39 = 0;
    if (v272 >= 1)
    {
      do
      {
        v40 = *v37++;
        v39 += v40;
        --v38;
      }

      while (v38);
    }
  }

  v41 = *(a1 + 87);
  if (v41 <= v39)
  {
    v41 = v39;
  }

  *(a1 + 87) = v41;
  v42 = *(a1 + 2);
  if (*(v42 + 704) > v39)
  {
    v39 = *(v42 + 704);
  }

  *(v42 + 704) = v39;
  v43 = valuePtr;
  *v251 = *a5;
  *&v251[16] = *(a5 + 16);
  *v233 = *a6;
  *&v233[16] = *(a6 + 16);
  if (*(v42 + 529) && !*(v42 + 530))
  {
    LengthOfDefaultByteStream = MovieInformationBeginBuildingMovieFragment(*(v42 + 736), *(v42 + 531), *(v42 + 533) == 0);
    if (LengthOfDefaultByteStream)
    {
      goto LABEL_167;
    }

    *(v42 + 530) = 1;
  }

  HIDWORD(v276) = 0;
  LengthOfDefaultByteStream = MovieTrackFindOrAddSampleDescription(*(a1 + 92), FormatDescription, v19, &v276 + 1);
  if (LengthOfDefaultByteStream)
  {
LABEL_167:
    v21 = LengthOfDefaultByteStream;
    v23 = HIDWORD(v193);
    v49 = v188;
    if (!v188)
    {
      goto LABEL_38;
    }

LABEL_140:
    CFRelease(v49);
    goto LABEL_38;
  }

  v209 = v43;
  v44 = a3 != 1 || NumSamples <= 1;
  v45 = MEMORY[0x1E6960CC0];
  if (v44)
  {
    if (a3 < 1)
    {
      goto LABEL_79;
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_5();
    OUTLINED_FUNCTION_18_21();
    if (!OUTLINED_FUNCTION_39_12())
    {
      goto LABEL_78;
    }
  }

  v47 = a4;
  v48 = a3;
  while (!*(a1 + 940))
  {
    v290 = *v47;
    OUTLINED_FUNCTION_18_21();
    if (!OUTLINED_FUNCTION_39_12())
    {
      *(a1 + 940) = 1;
    }

    v47 += 3;
    if (!--v48)
    {
      goto LABEL_79;
    }
  }

LABEL_78:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_69();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v160, v166, v172);
  if (LengthOfDefaultByteStream)
  {
    goto LABEL_167;
  }

LABEL_79:
  if (DataBuffer)
  {
    v49 = v188;
    if (!*(v42 + 329) || !*(v42 + 530))
    {
      goto LABEL_87;
    }

    if (!*(v42 + 541))
    {
      v50 = *(v42 + 536);
      if (v50 <= 2)
      {
        *(v42 + 540) = 0x100u >> (8 * v50);
      }

      *(v42 + 541) = 1;
    }

    if (*(v42 + 540) || !*(a1 + 905))
    {
      goto LABEL_87;
    }

    LODWORD(v289.value) = 0;
    v290.value = 0;
    LengthOfDefaultByteStream = MovieSampleDataWriterGetLengthOfDefaultByteStream(*(v42 + 752), &v290.value);
    if (LengthOfDefaultByteStream)
    {
      goto LABEL_167;
    }

    LengthOfDefaultByteStream = MovieSampleDataWriterTrackGetPreferredChunkAlignment(*(v42 + 752), *(a1 + 95), &v289);
    if (LengthOfDefaultByteStream)
    {
      goto LABEL_167;
    }

    v146 = 0xFFFFFFFF80000000;
    if (LODWORD(v289.value) >= 2 && v290.value % SLODWORD(v289.value))
    {
      v146 = SLODWORD(v289.value) - v290.value % SLODWORD(v289.value) - 0x80000000;
    }

    if ((v146 + v290.value - *(a1 + 111)) > 0xFFFFFFFEFFFFFFFFLL)
    {
LABEL_87:
      appended = MovieSampleDataWriterTrackAppendSampleData(*(v42 + 752), *(a1 + 95), DataBuffer, HIDWORD(v276), NumSamples, a3, a4, v183, v178, theArray, v49);
      if (!appended)
      {
        goto LABEL_88;
      }

LABEL_101:
      v21 = appended;
      v23 = HIDWORD(v193);
      if (!v49)
      {
        goto LABEL_38;
      }

      goto LABEL_140;
    }

    v147 = *(v42 + 488);
    if (v147)
    {
      Count = CFArrayGetCount(v147);
      if (Count >= 1)
      {
        v149 = Count;
        v150 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v42 + 488), v150);
          LengthOfDefaultByteStream = setTrackHeaderDataCompleteFlagAndWriteCheckpointIfPossible(ValueAtIndex);
          if (LengthOfDefaultByteStream)
          {
            goto LABEL_167;
          }

          ValueAtIndex[601] = 0;
        }

        while (v149 != ++v150);
      }
    }

    clearAllTracksHeaderDataCompleteFlag(v42);
    v152 = *(v42 + 488);
    if (v152)
    {
      v153 = CFArrayGetCount(v152);
    }

    else
    {
      v153 = 0;
    }

    memset(&v290, 0, sizeof(v290));
    v289 = *(a1 + 27);
    *&v288.value = *(a1 + 27);
    OUTLINED_FUNCTION_6_52(*(a1 + 31));
    CMTimeSubtract(v156, v154, v155);
    OUTLINED_FUNCTION_18_21();
    v49 = v188;
    if (*(v42 + 329))
    {
      v157 = 96;
    }

    else
    {
      if (!*(v42 + 330))
      {
        goto LABEL_162;
      }

      v157 = 144;
    }

    v289 = *(v42 + v157);
LABEL_162:
    memset(&v288, 0, sizeof(v288));
    v287 = v290;
    v286 = v289;
    CMTimeAdd(&v288, &v287, &v286);
    if (v153 >= 1)
    {
      for (i = 0; i != v153; ++i)
      {
        v159 = CFArrayGetValueAtIndex(*(v42 + 488), i);
        v286 = v288;
        v285 = *(v159 + 108);
        CMTimeAdd(&v287, &v286, &v285);
        *(v159 + 28) = v287;
      }
    }

    goto LABEL_87;
  }

  v49 = v188;
  MovieSampleDataWriterTrackAppendSampleReference(*(v42 + 752), *(a1 + 95), v43, HIDWORD(v276), NumSamples, a3, a4, v183, v178, theArray, v188);
  if (appended)
  {
    goto LABEL_101;
  }

LABEL_88:
  v275 = *v251;
  v273 = *v233;
  v287 = **&MEMORY[0x1E6960C70];
  v214 = *v45;
  *&v286.value = *v45;
  v52 = *(v45 + 2);
  v286.epoch = v52;
  v285 = **&MEMORY[0x1E6960C88];
  v284 = **&MEMORY[0x1E6960C80];
  v283 = v287;
  if (a3 == 1)
  {
    OUTLINED_FUNCTION_63_5();
    v289 = a4[2];
    v288 = a4[1];
    memset(&v282, 0, sizeof(v282));
    time = *a4;
    CMTimeMultiply(&rhs, &time, NumSamples - 1);
    OUTLINED_FUNCTION_56_7();
    CMTimeAdd(&v282, &time, &rhs);
    memset(&rhs, 0, sizeof(rhs));
    OUTLINED_FUNCTION_58_3();
    lhs = a4[2];
    CMTimeSubtract(&rhs, &time, &lhs);
    OUTLINED_FUNCTION_54_9();
    CMTimeMultiply(&time, &lhs, NumSamples);
    lhs = v289;
    CMTimeAdd(&v287, &lhs, &time);
    OUTLINED_FUNCTION_12_30();
    CMTimeMultiply(&v286, &time, NumSamples);
    v285 = v288;
    v284 = v282;
    time = v282;
    OUTLINED_FUNCTION_54_9();
    CMTimeAdd(&v283, &time, &lhs);
    v53 = rhs.value;
    v54 = rhs.value;
    v23 = HIDWORD(v193);
  }

  else
  {
    v23 = HIDWORD(v193);
    if (a3 < 1)
    {
      v54 = 0x80000000;
      v53 = 0x7FFFFFFF;
    }

    else
    {
      v55 = a4 + 1;
      v53 = 0x7FFFFFFF;
      v54 = 0x80000000;
      do
      {
        v290 = v55[-1];
        v289 = v55[1];
        v288 = *v55;
        memset(&v282, 0, sizeof(v282));
        rhs = *v55;
        OUTLINED_FUNCTION_58_3();
        v64 = OUTLINED_FUNCTION_34_13(v56, v57, v58, v59, v60, v61, v62, v63, v161, v167, v173, v178, v183, v188, v193, theArray, v203, v209, v214, *(&v214 + 1), v223, NumSamples, *v233, *&v233[8], *&v233[16], v246, *v251, *&v251[8], *&v251[16], v264, valuePtr, cf, ptr, v272, v273.value, *&v273.timescale, v273.epoch, v274, v275.value, *&v275.timescale, v275.epoch, v276, lhs.value, *&lhs.timescale, lhs.epoch, v278, time.value, *&time.timescale, time.epoch, v280, rhs.value);
        CMTimeSubtract(v66, v64, v65);
        rhs = v289;
        OUTLINED_FUNCTION_12_30();
        v75 = OUTLINED_FUNCTION_34_13(v67, v68, v69, v70, v71, v72, v73, v74, v162, v168, v174, v179, v184, v189, v194, theArraya, v204, v210, v215, v219, v224, v229, v234, v238, v242, v247, v252, v256, v260, v265, valuePtr, cf, ptr, v272, v273.value, *&v273.timescale, v273.epoch, v274, v275.value, *&v275.timescale, v275.epoch, v276, lhs.value, *&lhs.timescale, lhs.epoch, v278, time.value, *&time.timescale, time.epoch, v280, rhs.value);
        CMTimeAdd(v77, v75, v76);
        rhs = v286;
        OUTLINED_FUNCTION_12_30();
        v86 = OUTLINED_FUNCTION_34_13(v78, v79, v80, v81, v82, v83, v84, v85, v163, v169, v175, v180, v185, v190, v195, theArrayb, v205, v211, v216, v220, v225, v230, v235, v239, v243, v248, v253, v257, v261, v266, valuePtr, cf, ptr, v272, v273.value, *&v273.timescale, v273.epoch, v274, v275.value, *&v275.timescale, v275.epoch, v276, lhs.value, *&lhs.timescale, lhs.epoch, v278, time.value, *&time.timescale, time.epoch, v280, rhs.value);
        v89 = CMTimeAdd(v88, v86, v87);
        *&rhs.timescale = *&v288.timescale;
        v97 = OUTLINED_FUNCTION_34_13(v89, v90, v91, v92, v93, v94, v95, v96, v164, v170, v176, v181, v186, v191, v196, theArrayc, v206, v212, v217, v221, v226, v231, v236, v240, v244, v249, v254, v258, v262, v267, valuePtr, cf, ptr, v272, v273.value, *&v273.timescale, v273.epoch, v274, v275.value, *&v275.timescale, v275.epoch, v276, lhs.value, *&lhs.timescale, lhs.epoch, v278, v285.value, *&v285.timescale, v285.epoch, v280, v288.value);
        CMTimeMinimum(v99, v97, v98);
        rhs = v284;
        OUTLINED_FUNCTION_56_7();
        v108 = OUTLINED_FUNCTION_34_13(v100, v101, v102, v103, v104, v105, v106, v107, v165, v171, v177, v182, v187, v192, v197, theArrayd, v207, v213, v218, v222, v227, v232, v237, v241, v245, v250, v255, v259, v263, v268, valuePtr, cf, ptr, v272, v273.value, *&v273.timescale, v273.epoch, v274, v275.value, *&v275.timescale, v275.epoch, v276, lhs.value, *&lhs.timescale, lhs.epoch, v278, time.value, *&time.timescale, time.epoch, v280, rhs.value);
        if (CMTimeCompare(v108, v109) < 0)
        {
          v284 = v288;
          rhs = v288;
          OUTLINED_FUNCTION_12_30();
          v118 = OUTLINED_FUNCTION_34_13(v110, v111, v112, v113, v114, v115, v116, v117, v161, v167, v173, v178, v183, v188, v193, theArray, v203, v209, v214, *(&v214 + 1), v223, NumSamples, *v233, *&v233[8], *&v233[16], v246, *v251, *&v251[8], *&v251[16], v264, valuePtr, cf, ptr, v272, v273.value, *&v273.timescale, v273.epoch, v274, v275.value, *&v275.timescale, v275.epoch, v276, lhs.value, *&lhs.timescale, lhs.epoch, v278, time.value, *&time.timescale, time.epoch, v280, rhs.value);
          CMTimeAdd(v120, v118, v119);
        }

        if (v53 >= SLODWORD(v282.value))
        {
          v53 = v282.value;
        }

        if (v54 <= SLODWORD(v282.value))
        {
          v54 = v282.value;
        }

        v55 += 3;
        --a3;
      }

      while (a3);
    }
  }

  *(a1 + 64) = v287;
  v289 = *(a1 + 34);
  *&v288.value = *&v286.value;
  OUTLINED_FUNCTION_6_52(v286.epoch);
  CMTimeAdd(v123, v121, v122);
  *(a1 + 34) = v290;
  v289 = v285;
  *&v288.value = *(a1 + 70);
  OUTLINED_FUNCTION_6_52(*(a1 + 37));
  CMTimeMinimum(v126, v124, v125);
  *(a1 + 70) = v290;
  v290 = *(a1 + 76);
  *&v289.value = *&v284.value;
  if ((OUTLINED_FUNCTION_30_14(v284.epoch) & 0x80000000) != 0)
  {
    *(a1 + 76) = v284;
    *(a1 + 40) = v283;
  }

  v127 = a1[84];
  if (v53 < v127)
  {
    v127 = v53;
  }

  a1[84] = v127;
  v128 = a1[85];
  if (v54 > v128)
  {
    v128 = v54;
  }

  a1[85] = v128;
  if (*(a1 + 492))
  {
    v282 = v285;
    rhs = v275;
    time = v283;
    lhs = v273;
    v129 = *(a1 + 62);
    *&v290.value = v214;
    v290.epoch = v52;
    v289 = v275;
    v130 = OUTLINED_FUNCTION_39_12() != 0;
    *&v290.value = v214;
    v290.epoch = v52;
    *&v289.value = *&v273.value;
    v131 = OUTLINED_FUNCTION_30_14(v273.epoch);
    v132 = editBoundaryDetectorDetectBoundary(*(v129 + 8), SHIDWORD(v203), v130, v131 != 0, a8);
    if (HIDWORD(v203) && !v131 && *(*(v129 + 8) + 8) == 3)
    {
      lhs = v275;
      *&rhs.value = v214;
      rhs.epoch = v52;
    }

    if (!v132 || !editBuilderResetCurrentEditMediaTime(v129))
    {
      v133 = *(v129 + 16);
      if ((*(v133 + 24) & 1) == 0 || (v290 = v282, v134 = *(v133 + 12), v289.epoch = *(v133 + 28), *&v289.value = v134, (OUTLINED_FUNCTION_39_12() & 0x80000000) != 0))
      {
        *(v133 + 12) = v282;
      }

      if (*(v133 + 72))
      {
        v289 = *(v133 + 60);
        *&v288.value = *&rhs.value;
        OUTLINED_FUNCTION_6_52(rhs.epoch);
        CMTimeAdd(v138, v136, v137);
        *(v133 + 60) = *&v290.value;
        epoch = v290.epoch;
      }

      else
      {
        *(v133 + 60) = *&rhs.value;
        epoch = rhs.epoch;
      }

      *(v133 + 76) = epoch;
      if ((*(v133 + 48) & 1) == 0 || (v290 = *(v133 + 36), *&v289.value = *&time.value, (OUTLINED_FUNCTION_30_14(time.epoch) & 0x80000000) != 0))
      {
        *(v133 + 36) = time;
      }

      if (*(v133 + 96))
      {
        v289 = *(v133 + 84);
        *&v288.value = *&lhs.value;
        OUTLINED_FUNCTION_6_52(lhs.epoch);
        CMTimeAdd(v142, v140, v141);
        *(v133 + 84) = *&v290.value;
        v139 = v290.epoch;
      }

      else
      {
        *(v133 + 84) = *&lhs.value;
        v139 = lhs.epoch;
      }

      *(v133 + 100) = v139;
      v143 = *(v133 + 112);
      if (v143 == -1.0 || v143 != a8)
      {
        *(v133 + 112) = a8;
      }

      v145 = *(a1 + 2);
      if (*(v145 + 329))
      {
        if (*(v145 + 352))
        {
          v290 = v275;
          *&v289.value = v214;
          v289.epoch = v52;
          if (OUTLINED_FUNCTION_39_12() || (v290 = v273, *&v289.value = v214, v289.epoch = v52, OUTLINED_FUNCTION_39_12()))
          {
            *(a1 + 353) = 1;
          }
        }
      }
    }
  }

  v21 = 0;
  if (v49)
  {
    goto LABEL_140;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], ptr);
  }

  return v21;
}