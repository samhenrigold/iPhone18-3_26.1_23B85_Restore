uint64_t assetDownloaderServer_willDownloadAlternatesCallback(uint64_t a1)
{
  value = 0;
  xdict = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v3)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage() && !FigAlternateCopyArrayOfAlternatesAsXPCObject(v2, &value))
        {
          xpc_dictionary_set_value(xdict, "Alternates", value);
          xpc_connection_send_message(*(v1 + 32), xdict);
        }
      }
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didReceiveMetricEventCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  empty = xpc_dictionary_create_empty();
  if (a1)
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 32))
      {
        if (!FigXPCCreateBasicMessage())
        {
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
          if (v6)
          {
            if (!v6(a3, empty))
            {
              xpc_dictionary_set_value(0, "MetricEvent", empty);
              xpc_connection_send_message(*(a1 + 32), 0);
            }
          }
        }
      }
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

void assetDownloaderServer_finalize(uint64_t a1)
{
  if (!*(a1 + 72) && *(a1 + 64))
  {
    *(a1 + 72) = 1;
    MX_RunningBoardServices_InvalidateBackgroundDownloadProcessAssertion();
  }

  FigXPCRelease();
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    dispatch_release(v5);
  }
}

BOOL __assetDownloadServer_handleLoadMetataMessage_block_invoke_cold_1(CFTypeRef cf, uint64_t *a2, uint64_t *a3)
{
  if (!*(cf + 8) && !*(cf + 72))
  {
    if (*(cf + 3))
    {
      v6 = CFGetAllocator(cf);
      v7 = CFStringCreateWithFormat(v6, 0, @"FigAssetDownloadMetadata.%@", *(cf + 3));
      *(cf + 8) = MX_RunningBoardServices_CreateBackgroundDownloadProcessAssertionForBundleIdentifier();
      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  v8 = *a2;
  *a3 = *a2;
  return v8 == 0;
}

void dworch_logDownloadConfig(uint64_t a1, const __CFString *a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OptimizesAuxiliaryContentConfigurations = FigStreamingAssetDownloadConfigGetOptimizesAuxiliaryContentConfigurations(a3);
  DownloadsInterstitialAssets = FigStreamingAssetDownloadConfigGetDownloadsInterstitialAssets(a3);
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = v10;
    v12 = CFCopyDescription(a3);
    if (v12)
    {
      if (a2)
      {
        CFStringAppend(v9, a2);
      }

      v13 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v13, v14, v15, OptimizesAuxiliaryContentConfigurations);
      v16 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v16, v17, v18, DownloadsInterstitialAssets);
      CFStringAppend(v9, v12);
      OUTLINED_FUNCTION_312();
      dworch_copyNextTrimmedLogFromString();
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        do
        {
          CFArrayAppendValue(v11, v20);
          v21 += CFStringGetLength(v20);
          CFRelease(v20);
          dworch_copyNextTrimmedLogFromString();
          v20 = v22;
        }

        while (v22);
      }

      Count = CFArrayGetCount(v11);
      if (Count >= 1)
      {
        v24 = Count;
        for (i = 0; i != v24; ++i)
        {
          CFArrayGetValueAtIndex(v11, i);
          if (dword_1EAF16DB8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }
    }

    CFRelease(v9);
    CFRelease(v11);
    v9 = v12;
    if (v12)
    {
LABEL_15:
      CFRelease(v9);
    }
  }
}

void dworch_sendProgressUpdateCallback(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_11_13();
    if (v9)
    {
      v10 = v9;
      if (a1)
      {
        v11 = CFRetain(a1);
      }

      else
      {
        v11 = 0;
      }

      *v10 = v11;
      v10[1] = v8;
      v10[7] = a2;
      v10[8] = a3;
      v12 = *(DerivedStorage + 296);

      dispatch_async_f(v12, v10, dworch_sendProgressUpdateCallbackOnCallbackQueue);
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
      if (v13)
      {

        CFRelease(v8);
      }
    }
  }
}

uint64_t dworch_selectAlternates_removePumpListeners(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 312))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_37();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_37();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void dworch_freeAlternateAndRenditionItem(void *a1)
{
  if (a1)
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

    free(a1);
  }
}

double dworch_assetNotificationCallback(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v10 = DerivedStorage, CMBaseObjectGetDerivedStorage(), !FigRetainProxyIsInvalidated()) && CFEqual(a3, @"assetNotice_PropertyLoaded") && v10[2] == a4)
  {
    FigCFDictionaryGetInt32IfPresent();
    CFDictionaryGetValue(a5, @"assetPayload_Property");
    if (FigCFEqual())
    {
      if (!v10[47])
      {
        v11 = v10[1];
        FigAssetGetCMBaseObject();
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          if (!v14(v13, @"Duration", v11, v10 + 47))
          {
            dworch_downloadMedia_symptomsReportStreamingAssetDownloadStart(a2);
            dworch_removeAssetListeners(a2);
          }
        }
      }
    }

    OUTLINED_FUNCTION_652();
  }

  else
  {
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_652();

    return FigSignalErrorAtGM(v16);
  }

  return result;
}

void dworch_downloadMedia_symptomsReportStreamingAssetDownloadStart(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = **&MEMORY[0x1E6960C70];
  v3 = *(DerivedStorage + 178) == 0;
  v4 = *(DerivedStorage + 179) == 0;
  if (*(DerivedStorage + 564) == 3)
  {
    v5 = DerivedStorage;
    OUTLINED_FUNCTION_54_4();
    if (v11)
    {
      dworch_loadDuration(a1);
      if (*(v5 + 376))
      {
        cf = 0;
        FigAssetGetCMBaseObject();
        v7 = v6;
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v8 && !v8(v7, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &cf))
        {
          v12.value = 0;
          if (FigCFDictionaryGetInt64IfPresent())
          {
            v11 = v12.value == 0;
          }

          else
          {
            v11 = 0;
          }

          v9 = !v11;
          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v9 = 1;
        }

        CMTimeMakeFromDictionary(&v14, *(v5 + 376));
        v10 = *(v5 + 72);
        v12 = v14;
        FigSymptomsReportStreamingAssetDownloadStart(v10, &v12, v9, v3, v4, (v5 + 656));
      }
    }
  }
}

uint64_t dworch_loadDuration(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  if (!*(result + 376))
  {
    v2 = result;
    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_39_3();
    result = FigNotificationCenterAddWeakListener();
    if (result)
    {
      v3 = result == -12724;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = *(v2 + 16);
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      v7 = *(v6 + 24);
      if (v7)
      {
        result = v7(v4, @"Duration", &v14);
        if (!result)
        {
          if (v14)
          {
            v8 = *(v2 + 8);
            FigAssetGetCMBaseObject();
            v10 = v9;
            v11 = CMBaseObjectGetVTable();
            v12 = *(v11 + 8);
            result = v11 + 8;
            v13 = *(v12 + 48);
            if (v13)
            {
              return v13(v10, @"Duration", v8, v2 + 376);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t dworch_downloadMedia_removeMediaDownloaderListeners()
{
  OUTLINED_FUNCTION_187();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_39_3();
  result = FigNotificationCenterRemoveWeakListener();
  if (!result)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_39_3();
    result = FigNotificationCenterRemoveWeakListener();
    if (!result)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_39_3();

      return FigNotificationCenterRemoveWeakListener();
    }
  }

  return result;
}

uint64_t dworch_sendDidChangeLoadedTimeRangeCallback(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_11_13();
  if (v13)
  {
    v14 = v13;
    if (a1)
    {
      v15 = CFRetain(a1);
    }

    else
    {
      v15 = 0;
    }

    *v14 = v15;
    v14[1] = v12;
    if (a2)
    {
      v16 = CFRetain(a2);
    }

    else
    {
      v16 = 0;
    }

    v14[3] = v16;
    if (a3)
    {
      v17 = CFRetain(a3);
    }

    else
    {
      v17 = 0;
    }

    v14[4] = v17;
    if (a4)
    {
      v18 = CFRetain(a4);
    }

    else
    {
      v18 = 0;
    }

    v14[5] = v18;
    if (a5)
    {
      v19 = CFRetain(a5);
    }

    else
    {
      v19 = 0;
    }

    v14[6] = v19;
    dispatch_async_f(*(DerivedStorage + 296), v14, dworch_sendDidChangeLoadedTimeRangeOnCallbackQueue);
    return 0;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
  v20 = v22;
  if (v22)
  {
    CFRelease(v12);
  }

  return v20;
}

uint64_t dworch_downloadMetadata_pause(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 432);
  if (!v2)
  {
LABEL_7:
    dworch_releaseDiskResources(a1);
    dworch_relinquishAccessToDestinationURL(a1);
    return 0;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v3)
  {
    return 4294954514;
  }

  result = v3(v2);
  if (!result)
  {
    result = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
    if (!result)
    {
      FigAssetDownloaderGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v5 = OUTLINED_FUNCTION_308();
        result = v6(v5);
        if (result)
        {
          return result;
        }

        goto LABEL_7;
      }

      return 4294954514;
    }
  }

  return result;
}

uint64_t dworch_downloadMetadata_stop(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 432);
  if (!v2)
  {
LABEL_4:
    dworch_releaseDiskResources(a1);
    dworch_relinquishAccessToDestinationURL(a1);
    return 0;
  }

  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    result = v3(v2);
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  return 4294954514;
}

uint64_t dworch_downloadMetadata_pauseForInteractivePlayback(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 432))
  {
LABEL_5:
    dworch_releaseDiskResources(a1);
    return 0;
  }

  result = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
  if (result)
  {
    return result;
  }

  FigAssetDownloaderGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v3 = OUTLINED_FUNCTION_308();
    result = v4(v3);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  return 4294954514;
}

uint64_t dworch_downloadMedia_pause(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 553))
  {
    v4 = *(DerivedStorage + 456);
    if (v4 && CFArrayGetCount(v4) >= 1)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v6)
      {
        return 4294954514;
      }

      result = v6(ValueAtIndex);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    for (i = 0; ; ++i)
    {
      Count = *(v3 + 496);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      v10 = CFArrayGetValueAtIndex(*(v3 + 496), i);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v11)
      {
        return 4294954514;
      }

      result = v11(v10);
      if (result)
      {
        return result;
      }
    }
  }

  result = dworch_relinquishAccessToDestinationURL(a1);
  if (!result)
  {
    FigSymptomsReportStreamingAssetDownloadPause((v3 + 656));
    dworch_issueReportingEvent(a1, 704);
    return 0;
  }

  return result;
}

uint64_t dworch_downloadMedia_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 553))
  {
    v4 = *(DerivedStorage + 456);
    if (v4 && CFArrayGetCount(v4) >= 1)
    {
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v6)
      {
        return 4294954514;
      }

      result = v6(ValueAtIndex);
      if (result)
      {
        return result;
      }
    }
  }

  else
  {
    for (i = 0; ; ++i)
    {
      Count = *(v3 + 496);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      v13 = CFArrayGetValueAtIndex(*(v3 + 496), i);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v14)
      {
        return 4294954514;
      }

      result = v14(v13);
      if (result)
      {
        return result;
      }
    }
  }

  result = dworch_relinquishAccessToDestinationURL(a1);
  if (!result)
  {
    v8 = *(v3 + 632);
    if (v8)
    {
      v9 = *(v3 + 556);
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v10)
      {
        v10(v8, 0x1F0B64618, 0x1F0B39DB8, v9, 0);
      }
    }

    return 0;
  }

  return result;
}

void dworch_selectAlternates_pumpTransferCallback(const void *a1, const void *a2, const void *a3)
{
  cf = 0;
  if (dworch_copyAssetDownloaderFromRetainProxy(a1, &cf))
  {
    goto LABEL_13;
  }

  v6 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (v8)
  {
    v9 = v8;
    if (v6)
    {
      v10 = CFRetain(v6);
    }

    else
    {
      v10 = 0;
    }

    *v9 = v10;
    if (a2)
    {
      v11 = CFRetain(a2);
    }

    else
    {
      v11 = 0;
    }

    v9[1] = v11;
    if (a3)
    {
      v12 = CFRetain(a3);
    }

    else
    {
      v12 = 0;
    }

    v9[2] = v12;
    dispatch_async_f(*DerivedStorage, v9, dworch_selectAlternates_pumpTransferCallbackOnQueue);
LABEL_13:
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_429();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, cf, v16);
  if (a1)
  {
LABEL_14:
    CFRelease(a1);
  }

LABEL_15:
  v13 = cf;
  if (cf)
  {

    CFRelease(v13);
  }
}

uint64_t dworch_selectAlternates_proceedAfterCheckingDestinationURL()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, theDict, v68);
    v8 = v58;
    goto LABEL_87;
  }

  if (*(DerivedStorage + 556) != 1 && !*(DerivedStorage + 560))
  {
    v8 = 0;
    goto LABEL_87;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  theDict = 0;
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_37();
  v4 = FigNotificationCenterAddWeakListener();
  if (v4)
  {
    goto LABEL_76;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_2_37();
  v4 = FigNotificationCenterAddWeakListener();
  if (v4)
  {
    goto LABEL_76;
  }

  v5 = *(v3 + 312);
  v6 = *(v3 + 592);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v7)
  {
    v8 = 4294954514;
LABEL_25:
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v24 = OUTLINED_FUNCTION_308();
      v25(v24);
    }

    goto LABEL_79;
  }

  v8 = v7(v5, dworch_selectAlternates_bytePumpFn, 0, v6);
  if (v8)
  {
    goto LABEL_25;
  }

  v9 = MEMORY[0x1E695E4D0];
  if (*(v3 + 178))
  {
    FigBytePumpGetFigBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v12)
    {
      goto LABEL_78;
    }

    v4 = v12(v11, 0x1F0B1F698, *v9);
    if (v4)
    {
      goto LABEL_76;
    }
  }

  if (*(v3 + 179))
  {
    FigBytePumpGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v15)
    {
      goto LABEL_78;
    }

    v4 = v15(v14, 0x1F0B1F6B8, *v9);
    if (v4)
    {
      goto LABEL_76;
    }
  }

  v16 = *(v3 + 8);
  FigBytePumpGetFigBaseObject();
  v18 = v17;
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(v18, 0x1F0B1F098, v16, &cf);
  }

  FigBytePumpGetFigBaseObject();
  v21 = v20;
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v22)
  {
    goto LABEL_78;
  }

  v4 = v22(v21, 0x1F0B1F098, 0);
  if (v4)
  {
    goto LABEL_76;
  }

  if (cf)
  {
    v4 = dworch_ensureTemporaryMetadataOnlyStreamingCache(v1);
    if (v4)
    {
      goto LABEL_76;
    }

    v4 = FigStreamingCacheTransferData(cf, *(v3 + 304));
    if (v4)
    {
      goto LABEL_76;
    }
  }

  if (*(v3 + 561) || !*(CMBaseObjectGetDerivedStorage() + 576))
  {
    v4 = dworch_ensureTemporaryMetadataOnlyStreamingCache(v1);
    if (v4)
    {
      goto LABEL_76;
    }

    v23 = *(v3 + 304);
  }

  else
  {
    v4 = dworch_ensurePersistentStreamingCache(v1);
    if (v4)
    {
      goto LABEL_76;
    }

    v26 = *(v3 + 304);
    if (v26)
    {
      v27 = *(v3 + 480);
      if (v27)
      {
        v4 = FigStreamingCacheTransferData(v26, v27);
        if (v4)
        {
          goto LABEL_76;
        }
      }
    }

    v23 = *(v3 + 480);
  }

  FigBytePumpGetFigBaseObject();
  v29 = v28;
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v30)
  {
    goto LABEL_78;
  }

  v4 = v30(v29, 0x1F0B1F098, v23);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject();
  v32 = v31;
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v33)
  {
    goto LABEL_78;
  }

  v34 = *MEMORY[0x1E695E4C0];
  v4 = v33(v32, 0x1F0B1F418, *MEMORY[0x1E695E4C0]);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject();
  v36 = v35;
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v37)
  {
    goto LABEL_78;
  }

  v4 = v37(v36, 0x1F0B1F438, v34);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject();
  v39 = v38;
  v40 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v40)
  {
    goto LABEL_78;
  }

  v4 = v40(v39, 0x1F0B1F5B8, v34);
  if (v4)
  {
LABEL_76:
    v8 = v4;
    goto LABEL_79;
  }

  if (!*(v3 + 72))
  {
    goto LABEL_44;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
LABEL_78:
    v8 = 4294954514;
    goto LABEL_79;
  }

  v41 = OUTLINED_FUNCTION_501();
  v4 = v42(v41);
  if (v4)
  {
    goto LABEL_76;
  }

LABEL_44:
  FigBytePumpGetFigBaseObject();
  v44 = v43;
  v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v45)
  {
    goto LABEL_78;
  }

  v4 = v45(v44, 0x1F0B1F638, 0x1F0B1B8B8);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v46 = OUTLINED_FUNCTION_501();
    v47(v46);
  }

  v48 = FigRCLGetNumberWithDefault(v68, @"mediaDownloadersMaxWidth", 6);
  if (v48 <= 1)
  {
    LODWORD(v49) = 1;
  }

  else
  {
    LODWORD(v49) = v48;
  }

  if (v49 >= 6)
  {
    v49 = 6;
  }

  else
  {
    v49 = v49;
  }

  *(v3 + 512) = v49;
  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_78;
  }

  v50 = OUTLINED_FUNCTION_501();
  v4 = v51(v50);
  if (v4)
  {
    goto LABEL_76;
  }

  FigBytePumpGetFigBaseObject();
  v53 = v52;
  v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v54 || v54(v53, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict) != -12783)
  {
    v59 = *(v3 + 392);
    if (v59)
    {
      CFRelease(v59);
      *(v3 + 392) = 0;
    }

    v60 = *(v3 + 400);
    if (v60)
    {
      CFRelease(v60);
      *(v3 + 400) = 0;
    }

    Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(v3 + 392) = Value;
    v62 = CFDictionaryGetValue(theDict, @"FBPAIK_MediaSelectionArray");
    if (v62)
    {
      v62 = CFRetain(v62);
    }

    *(v3 + 400) = v62;
    goto LABEL_73;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_78;
  }

  v55 = OUTLINED_FUNCTION_501();
  v57 = v56(v55);
  if (v57 == -12783)
  {
    v63 = *(v3 + 312);
    v64 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v64)
    {
      v4 = v64(v63);
      goto LABEL_76;
    }

    goto LABEL_78;
  }

  v8 = v57;
  if (!v57)
  {
LABEL_73:
    v4 = dworch_selectAlternates_gotAlternates(v1);
    goto LABEL_76;
  }

LABEL_79:
  v69 = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v68)
  {
    CFRelease(v68);
  }

LABEL_87:
  if (v0)
  {
    *v0 = 0;
  }

  return v8;
}

void dworch_selectAlternates_gotAccessToDestinationURLCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CFGetTypeID(a1);
  if (v7 != FigAssetDownloaderGetTypeID() || (*(DerivedStorage + 576) = a3, CMBaseObjectGetDerivedStorage(), FigRetainProxyIsInvalidated()) || a2 && !a3)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_9:
    v9 = IsRegisteredForDownload;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 556) == 1 || *(DerivedStorage + 560))
  {
    IsRegisteredForDownload = dworch_ensureAssetIsRegisteredForDownload(a1);
    if (!IsRegisteredForDownload)
    {
      IsRegisteredForDownload = dworch_selectAlternates_proceedAfterCheckingDestinationURL();
    }

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:
  dworch_relinquishAccessToDestinationURLIfNotDownloadingOrNotLoadingMetadataOrPausedForInteractivePlayback(a1);
  if (v9)
  {
    dworch_transitionToTerminalStateWithOSStatus(a1, v9);
  }

  OUTLINED_FUNCTION_652();
}

void dworch_transitionToTerminalState(const void *a1, void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_243();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return;
  }

  OUTLINED_FUNCTION_72_3();
  if (!v7 & v6)
  {
    return;
  }

  v130 = v2;
  dworch_releaseDiskResources(a1);
  dworch_relinquishAccessToDestinationURL(a1);
  v8 = CFAbsoluteTimeGetCurrent() - *(DerivedStorage + 648);
  v9 = _os_feature_enabled_impl();
  v10 = MEMORY[0x1E695E480];
  if (v9)
  {
    v11 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v134 = 0;
    *v135 = 0;
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      v14 = OUTLINED_FUNCTION_60_4();
      if (v14)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        FigAssetGetCMBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, @"assetProperty_InstanceUUID", AllocatorForMedia, v135);
        }

        FigAssetDownloaderGetCMBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21 && !v21(v20, @"AssetDownloaderProperty_DownloadedBytes", *MEMORY[0x1E695E480], &v134))
        {
          SInt64 = FigCFNumberGetSInt64();
          RecoverableErrorCount = FigMetricEventDownloadSummarySubscriberGetRecoverableErrorCount(*(v11 + 616));
          MediaResourceRequestCount = FigMetricEventDownloadSummarySubscriberGetMediaResourceRequestCount(*(v11 + 616));
          v25 = FigGetAllocatorForMedia();
          FigMetricDownloadSummaryEventCreate(v25, 0, *v135, a2, RecoverableErrorCount, MediaResourceRequestCount, SInt64, *(v11 + 368), v8, cf);
          if (a1)
          {
            v26 = CFRetain(a1);
          }

          else
          {
            v26 = 0;
          }

          *v14 = v26;
          v14[1] = v13;
          v27 = cf[0];
          if (cf[0])
          {
            v27 = CFRetain(cf[0]);
          }

          v14[10] = v27;
          dispatch_async_f(*(v11 + 296), v14, dworch_sendDidReceiveMetricEventOnCallbackQueue);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_5_8();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v128, v129);
      if (v28)
      {
LABEL_20:
        CFRelease(v13);
        free(v14);
      }
    }

LABEL_21:
    if (*v135)
    {
      CFRelease(*v135);
    }

    v10 = MEMORY[0x1E695E480];
    if (v134)
    {
      CFRelease(v134);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v29 = &off_196E72000;
  if (a2)
  {
    Code = CFErrorGetCode(a2);
    if (dword_1EAF16DB8)
    {
      v38 = Code;
      v39 = OUTLINED_FUNCTION_83_2(Code, v31, v32, v33, v34, v35, v36, v37, v127, v128, v129, v2, *v131, *&v131[4], v131[6], 0, 0);
      v40 = v134;
      if (os_log_type_enabled(v39, type))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        *v135 = 136315906;
        *&v135[4] = "dworch_transitionToTerminalState";
        OUTLINED_FUNCTION_42_4();
        v140 = 1024;
        LODWORD(v141) = v38;
        LODWORD(v128) = 38;
        v127 = v135;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v42, v43, v44, v45, v46, v39, type, v47);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v29 = &off_196E72000;
    }

    *(DerivedStorage + 556) = 4;
    v60 = *(DerivedStorage + 564);
    if (v60 != 2)
    {
      v61 = kDownloadOrchestratorStage_JumpTable[6 * v60 + 2];
      if (v61)
      {
        (v61)(a1);
      }
    }

    v62 = CMBaseObjectGetDerivedStorage();
    v63 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v63)
    {
      v56 = v63;
      v64 = OUTLINED_FUNCTION_60_4();
      if (v64)
      {
        v58 = v64;
        if (a1)
        {
          v65 = CFRetain(a1);
        }

        else
        {
          v65 = 0;
        }

        *v58 = v65;
        v58[1] = v56;
        v58[2] = CFRetain(a2);
        v66 = *(v62 + 296);
        v67 = dworch_sendDownloadFailedCallbackOnCallbackQueue;
LABEL_53:
        dispatch_async_f(v66, v58, v67);
        goto LABEL_54;
      }

LABEL_105:
      OUTLINED_FUNCTION_5_8();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      if (v126)
      {
        CFRelease(v56);
      }
    }
  }

  else
  {
    *(DerivedStorage + 556) = 3;
    v48 = CMBaseObjectGetDerivedStorage();
    if (*(v48 + 72))
    {
      v49 = v48;
      v50 = *v10;
      Current = CFAbsoluteTimeGetCurrent();
      v52 = CFDateCreate(v50, Current);
      if (v52)
      {
        v53 = v52;
        FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL(*(v49 + 24), *(v49 + 72));
        CFRelease(v53);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v128, v129);
      }
    }

    v54 = CMBaseObjectGetDerivedStorage();
    v55 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v55)
    {
      v56 = v55;
      v57 = OUTLINED_FUNCTION_60_4();
      if (v57)
      {
        v58 = v57;
        if (a1)
        {
          v59 = CFRetain(a1);
        }

        else
        {
          v59 = 0;
        }

        *v58 = v59;
        v58[1] = v56;
        v66 = *(v54 + 296);
        v67 = dworch_sendDownloadSucceededCallbackOnCallbackQueue;
        goto LABEL_53;
      }

      goto LABEL_105;
    }
  }

LABEL_54:
  FigSymptomsReportStreamingAssetDownloadEnd((DerivedStorage + 656));
  uuid_clear((DerivedStorage + 656));
  if (dword_1EAF16DB8)
  {
    v76 = OUTLINED_FUNCTION_83_2(v68, v69, v70, v71, v72, v73, v74, v75, v127, v128, v129, v130, *v131, *&v131[4], v131[6], 0, 0);
    v77 = os_log_type_enabled(v76, typea);
    if (OUTLINED_FUNCTION_115_1(v77))
    {
      v78 = *(DerivedStorage + 32);
      *v135 = *(v29 + 138);
      *&v135[4] = "dworch_transitionToTerminalState";
      v136 = 2048;
      v137 = a1;
      v138 = 2114;
      v139 = v78;
      v140 = 2048;
      v141 = v8;
      OUTLINED_FUNCTION_95_1();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v79, v80, v81, v82, v83, v84, v85, v86);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v87, v88, v89, v90, v91);
  }

  if (*(DerivedStorage + 632) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_25_5();
    v92();
  }

  if (*(DerivedStorage + 632) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_25_5();
    v93();
  }

  v94 = *(DerivedStorage + 632);
  if (v94)
  {
    v95 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v95)
    {
      v95(v94, 0x1F0B64618, 0x1F0B659F8, (v8 * 1000.0), 0);
    }
  }

  if (a2)
  {
    v96 = CMBaseObjectGetDerivedStorage();
    CFErrorGetDomain(a2);
    v97 = OUTLINED_FUNCTION_604();
    CFErrorCopyDescription(v97);
    v98 = OUTLINED_FUNCTION_200_1();
    v99 = CFErrorGetCode(v98);
    v100 = *(v96 + 632);
    if (v100)
    {
      v101 = v99;
      v102 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v102)
      {
        v102(v100, 0x1F0B64618, 0x1F0B39CB8, v101, 0);
      }

      if (*(v96 + 632))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_25_5();
          v103();
        }

        v104 = *(v96 + 632);
        if (v104)
        {
          v105 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v105)
          {
            v105(v104, 0x1F0B64618, 0x1F0B39FD8, v94, 0);
          }
        }
      }
    }

    v106 = *(v96 + 528);
    if (!v106)
    {
      goto LABEL_102;
    }

    if (FigAlternateGetResolution(v106) > 0.0 && v107 > 0.0)
    {
      v108 = *(v96 + 632);
      if (!v108)
      {
        goto LABEL_87;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v109 = OUTLINED_FUNCTION_26_6();
        v110(v109);
      }

      v108 = *(v96 + 632);
      if (!v108)
      {
        goto LABEL_87;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v111 = OUTLINED_FUNCTION_26_6();
        v112(v111);
      }
    }

    v108 = *(v96 + 632);
LABEL_87:
    FigAlternateGetVideoRangeString(*(v96 + 528));
    if (v108)
    {
      OUTLINED_FUNCTION_604();
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_25_5();
        v113();
      }
    }

    v114 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetPeakBitRate(v114);
    if (v108 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v115 = OUTLINED_FUNCTION_26_6();
      v116(v115);
    }

    v117 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetAverageBitRate(v117);
    if (v108 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v118 = OUTLINED_FUNCTION_26_6();
      v119(v118);
    }

    v120 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetCodecString(v120);
    if (v108)
    {
      OUTLINED_FUNCTION_604();
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_25_5();
        v121();
      }
    }

    v122 = OUTLINED_FUNCTION_68_3();
    FigAlternateGetVideoQualityIndex(v122, v123);
    if (v108 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v124 = OUTLINED_FUNCTION_26_6();
      v125(v124);
    }

LABEL_102:
    dworch_issueReportingEvent(a1, 707);
    if (v94)
    {
      CFRelease(v94);
    }
  }
}

void dworch_selectAlternates_bytePumpFn(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  v23 = 0;
  v13 = dworch_copyAssetDownloaderFromRetainProxy(a2, &v23);
  v14 = v23;
  if (!v13)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004093CA8EA1uLL);
    if (!v16)
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_15:
      OUTLINED_FUNCTION_652();
      return;
    }

    v17 = v16;
    if (v14)
    {
      v18 = CFRetain(v14);
    }

    else
    {
      v18 = 0;
    }

    *v17 = v18;
    v17[2] = a4;
    if (a12)
    {
      v19 = CFRetain(a12);
    }

    else
    {
      v19 = 0;
    }

    *(v17 + 2) = v19;
    dispatch_async_f(*DerivedStorage, v17, dworch_selectAlternates_bytePumpFnOnQueue);
  }

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_11:
  OUTLINED_FUNCTION_652();

  CFRelease(v20);
}

uint64_t dworch_selectAlternates_gotAlternates(const void *a1)
{
  v226 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 416))
  {
    return 0;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 416) = 1;
  v5 = *(DerivedStorage + 392);
  if (!v5 || !CFArrayGetCount(v5))
  {
    v54 = CMBaseObjectGetDerivedStorage();
    v62 = v54;
    if (dword_1EAF16DB8)
    {
      v63 = OUTLINED_FUNCTION_50_2(v54, v55, v56, v57, v58, v59, v60, v61, v203, v204, v205, v206, v208, v209, value, v213, type[0], *&type[4], values);
      if (os_log_type_enabled(v63, type[0]))
      {
        v64 = values;
      }

      else
      {
        v64 = values & 0xFFFFFFFE;
      }

      if (v64)
      {
        *v216 = 136315650;
        OUTLINED_FUNCTION_10_12();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v65, v66, v67, v68, v69, v63, type[0], v70);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v62 + 328) = 1;
    return dworch_selectAlternates_stageComplete(a1);
  }

  v207 = v1;
  v6 = *(v4 + 320);
  if (v6)
  {
    CFRelease(v6);
    *(v4 + 320) = 0;
  }

  v7 = FigAlternateSelectionBossCreate(*(v4 + 8), (v4 + 320));
  if (v7)
  {
    return v7;
  }

  v7 = FigAlternateSelectionBossInitializeAlternateList(*(v4 + 320), *(v4 + 392), *(v4 + 400), 0, 0);
  if (v7)
  {
    return v7;
  }

  v8 = *(v4 + 320);
  FigBytePumpGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    return 4294954514;
  }

  v7 = v11(v10, 0x1F0B1F878, v8);
  if (v7)
  {
    return v7;
  }

  v12 = *(v4 + 56);
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = v13;
  valuea = v13;
  if (!v12)
  {
    *type = 0;
    values = 0;
    CMBaseObjectGetDerivedStorage();
    if (FigRetainProxyIsInvalidated())
    {
      OUTLINED_FUNCTION_5_8();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_4();
      if (!v73 && !*(v72 + 561) && !*(v72 + 560) || !v14[40])
      {
        v52 = 0;
        goto LABEL_93;
      }

      v74 = v14[5];
      if (v74)
      {
        v75 = CFArrayGetCount(v74) == 0;
      }

      else
      {
        v75 = 1;
      }

      v76 = v14[6];
      if (v76)
      {
        v77 = CFArrayGetCount(v76) == 0;
      }

      else
      {
        v77 = 1;
      }

      if (!v75)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_33_5();
      SelectedMediaArrayForCriteria = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(v78, v79, v80, v81, v82, 0, v83);
      if (!SelectedMediaArrayForCriteria)
      {
        v85 = v14[5];
        if (v85)
        {
          CFRelease(v85);
          v14[5] = 0;
        }

        v86 = CFArrayCreate(v14[1], &values, 1, MEMORY[0x1E695E9C0]);
        v14[5] = v86;
        if (v86)
        {
          if (dword_1EAF16DB8)
          {
            v94 = OUTLINED_FUNCTION_49_3(v86, v87, v88, v89, v90, v91, v92, v93, v203, v204, v205, v1, v208, v209, valuea, v213, SBYTE2(v213), SBYTE3(v213), SHIDWORD(v213));
            if (os_log_type_enabled(v94, BYTE3(v213)))
            {
              v95 = HIDWORD(v213);
            }

            else
            {
              v95 = HIDWORD(v213) & 0xFFFFFFFE;
            }

            if (v95)
            {
              v97 = valuea[4];
              v96 = valuea[5];
              if (v96)
              {
                LODWORD(v96) = CFArrayGetCount(v96);
              }

              *v216 = 136315906;
              *&v216[4] = "dworch_selectAlternates_evaluateMediaSelectionsFromCreationOptions";
              *&v216[12] = 2048;
              *&v216[14] = a1;
              *&v216[22] = 2114;
              v217 = v97;
              LOWORD(v218) = 1024;
              *(&v218 + 2) = v96;
              LODWORD(v204) = 38;
              v203 = v216;
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v98, v99, v100, v101, v102, v94, BYTE3(v213), v103);
            }

            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v14 = valuea;
          }

          if (v77)
          {
            v104 = v14[5];
            v105 = v14[6];
            v14[6] = v104;
            if (v104)
            {
              CFRetain(v104);
            }

            if (v105)
            {
              CFRelease(v105);
            }
          }

LABEL_75:
          dworch_selectAlternates_deduplicateSelectedMediaArrays(a1, v14[5], type);
          v52 = v106;
          v107 = *type;
          if (!v106)
          {
            v108 = v14[5];
            v14[5] = *type;
            if (v107)
            {
              CFRetain(v107);
            }

            if (v108)
            {
              CFRelease(v108);
            }

            dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray(a1, v14[5]);
            Count = v14[5];
            if (Count)
            {
              Count = CFArrayGetCount(Count);
              v117 = Count == 0;
            }

            else
            {
              v117 = 1;
            }

            if (v117 && dword_1EAF16DB8)
            {
              v118 = OUTLINED_FUNCTION_49_3(Count, v109, v110, v111, v112, v113, v114, v115, v203, v204, v205, v207, v208, v209, valuea, v213, SBYTE2(v213), SBYTE3(v213), SHIDWORD(v213));
              if (os_log_type_enabled(v118, BYTE3(v213)))
              {
                v119 = HIDWORD(v213);
              }

              else
              {
                v119 = HIDWORD(v213) & 0xFFFFFFFE;
              }

              if (v119)
              {
                *v216 = 136315650;
                OUTLINED_FUNCTION_10_12();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v120, v121, v122, v123, v124, v118, BYTE3(v213), v125);
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }

          if (v107)
          {
            CFRelease(v107);
          }

LABEL_93:
          if (values)
          {
            CFRelease(values);
          }

          if (v52)
          {
            return v52;
          }

          v126 = *(v4 + 40);
          if (!v126 || CFArrayGetCount(v126) <= 0)
          {
            OUTLINED_FUNCTION_5_8();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v203, v204, v205);
            return v7;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), 0);
          dworch_selectAlternates_getMediaSelectionForMediaType(ValueAtIndex);
          *(v4 + 168) = FigCFDictionaryGetValue();
          v128 = *(v4 + 8);
          v129 = *(v4 + 320);
          memcpy(cf, (v4 + 96), sizeof(cf));
          v7 = dworch_selectAlternates_chooseAlternatesFromCreationOptions(a1, v128, v129, cf, (v4 + 336), (v4 + 344));
          if (!v7)
          {
            if (*(v4 + 336) || *(v4 + 344))
            {
              v147 = CMBaseObjectGetDerivedStorage();
              v7 = dworch_setupDownloadItemsAndProgressMonitorForAlternate(a1, *(v147 + 336), *(v147 + 40));
              if (v7)
              {
                return v7;
              }

              v7 = dworch_setupDownloadItemsAndProgressMonitorForAlternate(a1, *(v147 + 344), *(v147 + 48));
              if (v7)
              {
                return v7;
              }

              if (*(v147 + 344))
              {
                v148 = 2;
              }

              else
              {
                v148 = 1;
              }

              v149 = *(v147 + 632);
              if (v149)
              {
                v150 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                if (v150)
                {
                  v150(v149, 0x1F0B64618, 0x1F0B39CF8, v148, 0);
                }
              }

              dworch_updateMediaSelectionsReportingKeys(a1);
              dworch_updateAlternateInfoForReporting(a1);
              *(v147 + 520) = *(v147 + 352);
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
              v152 = Mutable;
              v153 = *(v4 + 336);
              if (v153)
              {
                CFArrayAppendValue(Mutable, v153);
              }

              v154 = *(v4 + 344);
              if (v154)
              {
                CFArrayAppendValue(v152, v154);
              }

              dworch_sendWillDownloadAlternatesCallback(a1, v152);
              v52 = dworch_selectAlternates_stageComplete(a1);
              if (v152)
              {
                CFRelease(v152);
              }
            }

            else
            {
              if (dword_1EAF16DB8)
              {
                v137 = OUTLINED_FUNCTION_50_2(v7, v130, v131, v132, v133, v134, v135, v136, v203, v204, v205, v207, v208, v209, valuea, v213, type[0], *&type[4], values);
                v138 = values;
                v139 = type[0];
                if (os_log_type_enabled(v137, type[0]))
                {
                  v140 = v138;
                }

                else
                {
                  v140 = v138 & 0xFFFFFFFE;
                }

                if (v140)
                {
                  *v216 = 136315650;
                  OUTLINED_FUNCTION_10_12();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v141, v142, v143, v144, v145, v137, v139, v146);
                }

                OUTLINED_FUNCTION_7();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return 4294950637;
            }

            return v52;
          }

          return v7;
        }

        OUTLINED_FUNCTION_5_8();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    v52 = SelectedMediaArrayForCriteria;
    goto LABEL_93;
  }

  v7 = FigStreamingAssetDownloadConfigCreate(*(v13 + 8), (v13 + 408));
  if (v7)
  {
    return v7;
  }

  v7 = dworch_selectAlternates_installDeviceCapabilityFilters(v14[1], v14[40]);
  if (v7)
  {
    return v7;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  v16 = FigAlternateContinuousFramesOnlyFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v17, v18, v19, v20, v21, v22, v23, v203, v204, v205, v1, v208, v209, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  FigAlternatePreferredVideoFormatFilterCreate(*(v15 + 8), 4, 8u, cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v24, v25, v26, v27, v28, v29, v30, v203, v204, v205, v207, v208, v209, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternateHighestRankingScoreFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v31, v32, v33, v34, v35, v36, v37, v203, v204, v205, v207, v208, v209, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternatePlaybackScoreAndBitRateFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
    goto LABEL_125;
  }

  v16 = OUTLINED_FUNCTION_63_2(v16, v38, v39, v40, v41, v42, v43, v44, v203, v204, v205, v207, v208, v209, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0]);
  if (v16)
  {
    goto LABEL_125;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v16 = FigAlternateFinalSelectionHighestPeakBitRateFilterCreate(*(v15 + 8), cf);
  if (v16)
  {
LABEL_125:
    v52 = v16;
    v53 = cf[0];
    goto LABEL_126;
  }

  v52 = OUTLINED_FUNCTION_63_2(v16, v45, v46, v47, v48, v49, v50, v51, v203, v204, v205, v207, v208, v209, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0]);
  v53 = cf[0];
  if (v52 || !cf[0])
  {
LABEL_126:
    if (!v53)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

  v52 = 0;
LABEL_127:
  CFRelease(v53);
LABEL_128:
  if (v52)
  {
    return v52;
  }

  v155 = v14[7];
  cf[0] = 0;
  *v216 = 0;
  v156 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary(v155, cf);
  if (v156)
  {
    goto LABEL_195;
  }

  if (cf[0])
  {
    v157 = CFArrayGetCount(cf[0]);
    if (v157 < 1)
    {
LABEL_136:
      v52 = 0;
      goto LABEL_137;
    }

    v158 = v157;
    v159 = 0;
    while (1)
    {
      v160 = CFArrayGetValueAtIndex(cf[0], v159);
      PrimaryContentConfig = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v155, v160);
      v156 = dworch_selectAlternates_evaluateAndCopyContentConfig(a1, PrimaryContentConfig, 0, 0, v216, v162, v163, v164, v203, v204, SHIDWORD(v204), v205, v207, v208, SWORD2(v208), SBYTE6(v208), HIBYTE(v208), v209, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10], v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
      if (v156)
      {
        break;
      }

      v156 = FigStreamingAssetDownloadConfigSetPrimaryContentConfig(valuea[51], *v216, v160);
      if (v156)
      {
        break;
      }

      if (v158 == ++v159)
      {
        goto LABEL_136;
      }
    }

LABEL_195:
    v52 = v156;
LABEL_137:
    v165 = valuea;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_140;
  }

  v52 = 0;
  v165 = valuea;
LABEL_140:
  if (*v216)
  {
    CFRelease(*v216);
  }

  if (!v52)
  {
    v166 = v165[7];
    cf[0] = 0;
    *v216 = 0;
    HIDWORD(v208) = FigStreamingAssetDownloadConfigGetOptimizesAuxiliaryContentConfigurations(v166);
    v167 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux(v166, cf);
    if (v167)
    {
      v52 = v167;
      v210 = a1;
LABEL_164:
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      a1 = v210;
      v165 = valuea;
    }

    else
    {
      if (cf[0])
      {
        v210 = a1;
        v168 = CFArrayGetCount(cf[0]);
        if (v168 < 1)
        {
LABEL_163:
          v52 = 0;
          goto LABEL_164;
        }

        v169 = v168;
        Alternate = 0;
        v171 = 0;
        while (1)
        {
          v172 = CFArrayGetValueAtIndex(cf[0], v171);
          AuxConfigs = FigStreamingAssetDownloadConfigGetAuxConfigs(v166, v172);
          if (!HIDWORD(v208))
          {
            goto LABEL_150;
          }

          v174 = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(valuea[51], v172);
          if (v174)
          {
            break;
          }

          Alternate = 0;
          if (AuxConfigs)
          {
LABEL_151:
            v175 = CFArrayGetCount(AuxConfigs);
            if (v175 >= 1)
            {
              v176 = v175;
              v177 = 0;
              do
              {
                v178 = OUTLINED_FUNCTION_177();
                v180 = CFArrayGetValueAtIndex(v178, v179);
                v184 = dworch_selectAlternates_evaluateAndCopyContentConfig(v210, v180, Alternate, 1, v216, v181, v182, v183, v203, v204, SHIDWORD(v204), v205, v207, v208, SWORD2(v208), SBYTE6(v208), HIBYTE(v208), v210, valuea, v213, *type, values, *v216, *&v216[8], *&v216[16], v217, v218, v219, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10], v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235);
                if (v184 != -16659)
                {
                  v52 = v184;
                  if (v184)
                  {
                    goto LABEL_164;
                  }

                  v185 = *v216;
                  v186 = FigStreamingAssetDownloadConfigAddAuxConfig(valuea[51], *v216, v172);
                  if (v186)
                  {
                    v52 = v186;
                    goto LABEL_164;
                  }

                  if (v185)
                  {
                    CFRelease(v185);
                    *v216 = 0;
                  }
                }
              }

              while (v176 != ++v177);
            }
          }

LABEL_159:
          if (++v171 == v169)
          {
            goto LABEL_163;
          }
        }

        Alternate = FigStreamingAssetDownloadContentConfigGetAlternate(v174);
LABEL_150:
        if (AuxConfigs)
        {
          goto LABEL_151;
        }

        goto LABEL_159;
      }

      v52 = 0;
    }

    if (*v216)
    {
      CFRelease(*v216);
    }

    if (!v52)
    {
      v187 = v165[51];
      cf[0] = 0;
      if (!a1 || (v188 = CMBaseObjectGetDerivedStorage()) == 0 || !*(v188 + 232) || !@"kFigEnvironmentalCondition_DefaultKey" || !v187)
      {
        v201 = valuea;
        goto LABEL_192;
      }

      v189 = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v187, @"kFigEnvironmentalCondition_DefaultKey");
      if (v189 && (v190 = v189, FigStreamingAssetDownloadContentConfigGetMediaSelections(v189)))
      {
        v191 = *MEMORY[0x1E695E480];
        MediaSelections = FigStreamingAssetDownloadContentConfigGetMediaSelections(v190);
        MutableCopy = CFArrayCreateMutableCopy(v191, 0, MediaSelections);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      }

      v194 = MutableCopy;
      if (!MutableCopy)
      {
        OUTLINED_FUNCTION_5_8();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v203, v204, v205);
        v52 = v202;
        v201 = valuea;
        if (v202)
        {
          return v52;
        }

        goto LABEL_192;
      }

      v195 = FigStreamingAssetDownloadConfigGetAuxConfigs(v187, @"kFigEnvironmentalCondition_DefaultKey");
      v196 = 0;
      if (!v195)
      {
        goto LABEL_183;
      }

LABEL_182:
      for (i = CFArrayGetCount(v195); v196 < i; i = 0)
      {
        v198 = FigCFArrayGetValueAtIndex();
        FigStreamingAssetDownloadContentConfigGetMediaSelections(v198);
        FigCFArrayAppendArray();
        ++v196;
        if (v195)
        {
          goto LABEL_182;
        }

LABEL_183:
        ;
      }

      dworch_selectAlternates_deduplicateSelectedMediaArrays(a1, v194, cf);
      v52 = v199;
      v200 = cf[0];
      if (!v199)
      {
        dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray(a1, cf[0]);
      }

      CFRelease(v194);
      v201 = valuea;
      if (v200)
      {
        CFRelease(v200);
      }

      if (!v52)
      {
LABEL_192:
        dworch_logDownloadConfig(a1, @"evaluated config: ", v201[51]);
        return dworch_selectAlternates_stageComplete(a1);
      }
    }
  }

  return v52;
}

void dworch_selectAlternates_alternateListOrDurationChangedNote(uint64_t a1, const void *a2)
{
  theDict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, theDict, v17);
    v13 = v14;
    if (!v14)
    {
      return;
    }

    goto LABEL_24;
  }

  if (!*(DerivedStorage + 564))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_54_4();
    if (v8 || *(v4 + 561) || *(v4 + 560))
    {
      if (*(DerivedStorage + 312))
      {
        FigBytePumpGetFigBaseObject();
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          v8 = v7(v6, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict) == -12783 || theDict == 0;
          if (!v8)
          {
            v9 = *(DerivedStorage + 392);
            if (v9)
            {
              CFRelease(v9);
              *(DerivedStorage + 392) = 0;
            }

            v10 = *(DerivedStorage + 400);
            if (v10)
            {
              CFRelease(v10);
              *(DerivedStorage + 400) = 0;
            }

            Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
            if (Value)
            {
              Value = CFRetain(Value);
            }

            *(DerivedStorage + 392) = Value;
            v12 = CFDictionaryGetValue(theDict, @"FBPAIK_MediaSelectionArray");
            if (v12)
            {
              v12 = CFRetain(v12);
            }

            *(DerivedStorage + 400) = v12;
          }
        }

        v13 = dworch_selectAlternates_gotAlternates(a2);
        if (theDict)
        {
          CFRelease(theDict);
        }

        if (v13)
        {
LABEL_24:
          dworch_transitionToTerminalStateWithOSStatus(a2, v13);
        }
      }
    }
  }
}

void dworch_sendWillDownloadAlternatesCallback(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    v7 = OUTLINED_FUNCTION_11_13();
    if (v7)
    {
      v8 = v7;
      if (a1)
      {
        v9 = CFRetain(a1);
      }

      else
      {
        v9 = 0;
      }

      *v8 = v9;
      v8[1] = v6;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v8[9] = v10;
      v11 = *(DerivedStorage + 296);

      dispatch_async_f(v11, v8, dworch_sendWillDownloadAlternatesOnCallbackQueue);
    }

    else
    {
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
      if (v12)
      {

        CFRelease(v6);
      }
    }
  }
}

double dworch_selectAlternates_deduplicateSelectedMediaArrays(uint64_t a1, const __CFArray *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = a2;
  if (a2)
  {
    v7 = DerivedStorage;
    Mutable = CFDictionaryCreateMutable(*(DerivedStorage + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      theDict = CFDictionaryCreateMutable(*(v7 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!theDict)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
        v19 = Mutable;
        goto LABEL_28;
      }

      v8 = CFDictionaryCreateMutable(*(v7 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v8 && (v9 = CFArrayCreateMutable(*(v7 + 8), 0, MEMORY[0x1E695E9C0])) != 0)
      {
        v23 = a3;
        v24 = v9;
        Count = CFArrayGetCount(theArray);
        if (Count < 1)
        {
LABEL_18:
          v17 = v24;
          if (!CFArrayGetCount(v24))
          {
            v18 = CFArrayCreateMutable(*(v7 + 8), 0, MEMORY[0x1E695E9C0]);
            CFArrayAppendValue(v24, v18);
            if (v18)
            {
              CFRelease(v18);
            }
          }

          v14 = 0;
          *v23 = CFRetain(v24);
        }

        else
        {
          v10 = 0;
          v25 = v7;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
            v12 = ValueAtIndex;
            v13 = ValueAtIndex ? CFArrayGetCount(ValueAtIndex) : 0;
            v14 = CFArrayCreateMutable(*(v7 + 8), 0, MEMORY[0x1E695E9C0]);
            if (!v14)
            {
              break;
            }

            if (v13 >= 1)
            {
              v28 = v10;
              v15 = 0;
              while (1)
              {
                v16 = CFArrayGetValueAtIndex(v12, v15);
                CFDictionaryGetValue(v16, @"MediaSelectionGroupMediaType");
                if (!FigCFStringGetOSTypeValue())
                {
                  goto LABEL_30;
                }

                CFDictionaryGetValue(v16, @"MediaSelectionOptionsPersistentID");
                if (v13 == ++v15)
                {
                  v7 = v25;
                  v10 = v28;
                  break;
                }
              }
            }

            CFRelease(v14);
            if (++v10 == Count)
            {
              goto LABEL_18;
            }
          }

LABEL_30:
          OUTLINED_FUNCTION_120();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v17 = v24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
        v14 = 0;
        v17 = 0;
      }

      CFRelease(Mutable);
      CFRelease(theDict);
      if (v8)
      {
        CFRelease(v8);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v17)
      {
        v19 = v17;
LABEL_28:
        CFRelease(v19);
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void dworch_selectUsingMediaSelectionCriteriaArrayForCharacteristic(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (!*(a3 + 32))
  {
    *(a3 + 16) = a1;
    CFArrayGetCount(theArray);
    v4 = OUTLINED_FUNCTION_265();

    CFArrayApplyFunction(v4, v5, v6, a3);
  }
}

uint64_t dworch_selectAlternates_evaluateAndCopyAlternateWithQualifiers(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, int a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2 && a5)
  {
    return 0;
  }

  if (a4)
  {
    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(a4);
    if (PlaylistAlternateURL)
    {
      v13 = FigAlternateAllowListWithURLFilterCreate(*(DerivedStorage + 8), PlaylistAlternateURL, 874, *(DerivedStorage + 584), &cf);
      if (v13)
      {
        goto LABEL_49;
      }

      v13 = OUTLINED_FUNCTION_62_2(v13, v14, v15, v16, v17, v18, v19, v20, v68, cf);
      if (v13)
      {
        goto LABEL_49;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  MediaSelectionForMediaType = dworch_selectAlternates_getMediaSelectionForMediaType(a3);
  if (!MediaSelectionForMediaType)
  {
    v24 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v22 = MediaSelectionForMediaType;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, cf, v71);
LABEL_49:
    v66 = v13;
    goto LABEL_42;
  }

  v24 = Mutable;
  CFDictionarySetValue(Mutable, @"audioMediaSelection", v22);
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_14:
  OUTLINED_FUNCTION_66_3();
  v25 = FigAlternateMultipleAlternateQualifierFilterCreate();
  if (v25)
  {
    goto LABEL_45;
  }

  v25 = OUTLINED_FUNCTION_62_2(v25, v26, v27, v28, v29, v30, v31, v32, v68, cf);
  if (v25)
  {
    goto LABEL_45;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

LABEL_18:
  if (a5)
  {
    v33 = OUTLINED_FUNCTION_66_3();
    v25 = FigAlternateMatchesAnyClientPredicateFilterCreate(v33, v34, v35, v36);
    if (v25)
    {
      goto LABEL_45;
    }

    v25 = OUTLINED_FUNCTION_62_2(v25, v37, v38, v39, v40, v41, v42, v43, v68, cf);
    if (v25)
    {
      goto LABEL_45;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v25 = dworch_selectAlternates_chooseAppropriateAlternate(*(DerivedStorage + 320), a6);
  if (!v25)
  {
    v25 = FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 320), @"ClientPredicatesFilter");
    if (!v25)
    {
      v25 = FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 320), @"AllowListURLFilter");
      if (!v25)
      {
        v25 = FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 320), @"MatchesAnyClientPredicateFilter");
        if (!v25)
        {
          CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
          v25 = FigAlternateSuppressDoVi5StereoFilterCreate(*(DerivedStorage + 8), &cf);
          if (!v25)
          {
            v25 = OUTLINED_FUNCTION_62_2(v25, v45, v46, v47, v48, v49, v50, v51, v68, cf);
            if (!v25)
            {
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (!CFPreferenceNumberWithDefault)
              {
LABEL_36:
                v25 = FigAlternateSuppressDoVi20MonoFilterCreate(*(DerivedStorage + 8), &cf);
                if (!v25)
                {
                  v66 = OUTLINED_FUNCTION_62_2(v25, v59, v60, v61, v62, v63, v64, v65, v69, cf);
                  if (!v66 && cf)
                  {
                    CFRelease(cf);
                    v66 = 0;
                    cf = 0;
                  }

                  if (!v24)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_41;
                }

                goto LABEL_45;
              }

              v25 = FigAlternateMediaValidationForStereoVideoFilterCreate(*(DerivedStorage + 8), &cf);
              if (!v25)
              {
                v25 = OUTLINED_FUNCTION_62_2(v25, v52, v53, v54, v55, v56, v57, v58, v69, cf);
                if (!v25)
                {
                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  goto LABEL_36;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_45:
  v66 = v25;
  if (v24)
  {
LABEL_41:
    CFRelease(v24);
  }

LABEL_42:
  if (cf)
  {
    CFRelease(cf);
  }

  return v66;
}

uint64_t dworch_selectAlternates_chooseAppropriateAlternate(const void *a1, void *a2)
{
  theArray = 0;
  FigAlternateSelectionLogNextFilterOperation(a1);
  v4 = FigAlternateSelectionBossApplyFilters(a1);
  if (v4)
  {
    return v4;
  }

  v5 = FigAlternateSelectionBossCopyProperty(a1, @"FilteredAlternateList", *MEMORY[0x1E695E480], &theArray);
  ValueAtIndex = theArray;
  if (!v5)
  {
    if (theArray)
    {
      if (CFArrayGetCount(theArray) < 1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }
      }
    }

    *a2 = ValueAtIndex;
    ValueAtIndex = theArray;
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  return v5;
}

uint64_t dworch_setupDownloadItemsAndProgressMonitorForAlternate(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = 0;
  if (a2 && a3)
  {
    v8 = DerivedStorage;
    CFArrayAppendValue(*(DerivedStorage + 368), a2);
    Count = CFArrayGetCount(a3);
    if (Count < 1)
    {
LABEL_15:
      v7 = 0;
      v6 = 0;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v11);
        v7 = malloc_type_calloc(1uLL, 0x20uLL, 0xE00401043B4FBuLL);
        if (v7)
        {
          v7[2] = CFRetain(a2);
          v13 = ValueAtIndex ? CFRetain(ValueAtIndex) : 0;
          v7[3] = v13;
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
          if (v16)
          {
            v6 = v16;
            v7 = 0;
            goto LABEL_16;
          }
        }

        v14 = FigStreamingAssetProgressMonitorRegisterAlternateAndMediaSelections(*(v8 + 384), a2, ValueAtIndex);
        if (v14)
        {
          break;
        }

        v15 = *(v8 + 360);
        *v7 = 0;
        v7[1] = v15;
        *v15 = v7;
        *(v8 + 360) = v7;
        if (v10 == ++v11)
        {
          goto LABEL_15;
        }
      }

      v6 = v14;
    }
  }

LABEL_16:
  dworch_freeAlternateAndRenditionItem(v7);
  return v6;
}

uint64_t dworch_ensureAssetIsRegisteredForDownload(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 576) || *(DerivedStorage + 562))
  {
    return 0;
  }

  result = FigAssetDownloadCoordinatorRegisterAssetForDownloader(*(DerivedStorage + 16), a1, *(DerivedStorage + 24), *(DerivedStorage + 72), 0, &v4);
  if (!result)
  {
    *(DerivedStorage + 561) = v4;
    *(DerivedStorage + 562) = 1;
  }

  return result;
}

uint64_t dworch_downloadMetadata_proceedAfterCheckingDestinationURL(uint64_t a1)
{
  v107[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v98[0] = 1;
  v98[1] = dworch_downloadMetadata_downloadSuccededCallback;
  v98[2] = dworch_downloadMetadata_downloadFailedCallback;
  memset(&v98[3], 0, 24);
  v98[6] = dworch_downloadMetadata_didFinishLoadingMetadata;
  v98[7] = 0;
  v98[8] = 0;
  v98[9] = dworch_downloadMetadata_didFinishLoadingPlaylistsCallback;
  v98[10] = 0;
  v98[11] = 0;
  if (*(v3 + 432))
  {
LABEL_60:
    if (*(DerivedStorage + 561) || !*(CMBaseObjectGetDerivedStorage() + 576))
    {
      v78 = dworch_ensureTemporaryMetadataOnlyStreamingCache(a1);
      if (v78)
      {
        return v78;
      }
    }

    else
    {
      v78 = dworch_ensurePersistentStreamingCache(a1);
      if (v78)
      {
        return v78;
      }

      v79 = *(DerivedStorage + 304);
      if (v79)
      {
        v80 = *(DerivedStorage + 480);
        if (v80)
        {
          v78 = FigStreamingCacheTransferData(v79, v80);
          if (v78)
          {
            return v78;
          }
        }
      }
    }

    FigAssetDownloaderGetCMBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      return 4294954514;
    }

    v81 = OUTLINED_FUNCTION_308();
    v78 = v82(v81);
    if (!v78)
    {
      v83 = *(DerivedStorage + 432);
      v84 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v84)
      {
        return v84(v83);
      }

      return 4294954514;
    }

    return v78;
  }

  v4 = v3;
  v5 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*(v5 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (Mutable)
  {
    v8 = MEMORY[0x1E695E4D0];
    if (*(v5 + 178))
    {
      CFDictionarySetValue(Mutable, @"AssetDownloaderCreateOption_DisallowsExpensiveNetworkAccess", *MEMORY[0x1E695E4D0]);
    }

    if (*(v5 + 179))
    {
      CFDictionarySetValue(v7, @"AssetDownloaderCreateOption_DisallowsConstrainedNetworkAccess", *v8);
    }

    v9 = *(v5 + 32);
    if (v9)
    {
      CFDictionarySetValue(v7, @"AssetDownloaderCreateOption_DebugIdentifier", v9);
    }

    if (*(v5 + 442))
    {
      CFDictionarySetValue(v7, @"AssetDownloaderCreateOption_DownloadsInterstitialAssets", *v8);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, v88, v90);
    if (v78)
    {
      return v78;
    }
  }

  v10 = FigStreamingAssetMetadataDownloaderCreate(*MEMORY[0x1E695E480], *(v4 + 16), v7, *(v4 + 56), a1, *v4, v98, (v4 + 432));
  if (v10)
  {
    goto LABEL_56;
  }

  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v18 = OUTLINED_FUNCTION_126(qword_1EAF16DB0, v11, v12, v13, v14, v15, v16, v17, v86, v88, v90, *v93, v93[2], v93[3], v93[4]);
    v26 = OUTLINED_FUNCTION_34_5(v18, v19, v20, v21, v22, v23, v24, v25, v87, v89, v91, v94, v95, v96, v97);
    if (OUTLINED_FUNCTION_16_1(v26))
    {
      v27 = *(v4 + 32);
      v28 = *(v4 + 432);
      v99 = 136315906;
      v100 = "dworch_downloadMetadata_ensureAndSetupMetadataDownloader";
      v101 = 2048;
      v102 = a1;
      v103 = 2114;
      v104 = v27;
      v105 = 2048;
      v106 = v28;
      OUTLINED_FUNCTION_95_1();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5(v29, v30, v31, v32, v33, v34, v35, v36);
      OUTLINED_FUNCTION_507();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v37, v38, v39, v40, v41);
  }

  v42 = *(v4 + 384);
  FigAssetDownloaderGetCMBaseObject();
  v44 = v43;
  v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v45)
  {
    goto LABEL_63;
  }

  v10 = v45(v44, @"AssetDownloaderProperty_ProgressMonitor", v42);
  if (v10)
  {
    goto LABEL_56;
  }

  v46 = *(v4 + 608);
  FigAssetDownloaderGetCMBaseObject();
  v48 = v47;
  v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v49)
  {
    goto LABEL_63;
  }

  v10 = v49(v48, @"AssetDownloaderProperty_MetricEventTimeline", v46);
  if (v10)
  {
LABEL_56:
    v61 = v10;
    goto LABEL_57;
  }

  if (!*(v4 + 408))
  {
    goto LABEL_50;
  }

  v50 = CMBaseObjectGetDerivedStorage();
  if (*(v50 + 440))
  {
    goto LABEL_50;
  }

  v51 = v50;
  v52 = *(v50 + 408);
  v107[0] = 0;
  v53 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary(v52, v107);
  if (v53)
  {
    v61 = v53;
    goto LABEL_31;
  }

  if (v107[0])
  {
    Count = CFArrayGetCount(v107[0]);
    if (Count < 1)
    {
      v61 = 0;
    }

    else
    {
      v55 = Count;
      v56 = DerivedStorage;
      v57 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v107[0], v57);
        PrimaryContentConfig = FigStreamingAssetDownloadConfigGetPrimaryContentConfig(v52, ValueAtIndex);
        v60 = dworch_setupDownloadItemsForContentConfig(a1, PrimaryContentConfig);
        if (v60)
        {
          break;
        }

        if (v55 == ++v57)
        {
          v61 = 0;
          goto LABEL_29;
        }
      }

      v61 = v60;
LABEL_29:
      DerivedStorage = v56;
    }

LABEL_31:
    if (v107[0])
    {
      CFRelease(v107[0]);
    }

    if (v61)
    {
      goto LABEL_57;
    }
  }

  v62 = *(v51 + 408);
  v107[0] = 0;
  v63 = FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux(v62, v107);
  if (v63)
  {
    v61 = v63;
    goto LABEL_47;
  }

  if (v107[0])
  {
    v64 = CFArrayGetCount(v107[0]);
    if (v64 < 1)
    {
      v61 = 0;
    }

    else
    {
      v65 = v64;
      v92 = DerivedStorage;
      v66 = 0;
      while (1)
      {
        v67 = CFArrayGetValueAtIndex(v107[0], v66);
        AuxConfigs = FigStreamingAssetDownloadConfigGetAuxConfigs(v62, v67);
        if (AuxConfigs)
        {
          v69 = AuxConfigs;
          v70 = CFArrayGetCount(AuxConfigs);
          if (v70 >= 1)
          {
            break;
          }
        }

LABEL_43:
        if (++v66 == v65)
        {
          v61 = 0;
          DerivedStorage = v92;
          goto LABEL_47;
        }
      }

      v71 = v70;
      v72 = 0;
      while (1)
      {
        v73 = CFArrayGetValueAtIndex(v69, v72);
        v74 = dworch_setupDownloadItemsForContentConfig(a1, v73);
        if (v74)
        {
          break;
        }

        if (v71 == ++v72)
        {
          goto LABEL_43;
        }
      }

      v61 = v74;
      DerivedStorage = v92;
    }

LABEL_47:
    if (v107[0])
    {
      CFRelease(v107[0]);
    }

    if (!v61)
    {
      goto LABEL_50;
    }

LABEL_57:
    if (!v7)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_50:
  v75 = (v4 + 352);
  while (1)
  {
    v75 = *v75;
    if (!v75)
    {
      break;
    }

    v10 = FigStreamingAssetMetadataDownloaderConfigureMediaSelectionsForAlternate(*(v4 + 432), v75[2], v75[3]);
    if (v10)
    {
      goto LABEL_56;
    }
  }

  FigAssetDownloaderGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v76 = OUTLINED_FUNCTION_501();
    v10 = v77(v76);
    goto LABEL_56;
  }

LABEL_63:
  v61 = 4294954514;
  if (v7)
  {
LABEL_58:
    CFRelease(v7);
  }

LABEL_59:
  if (!v61)
  {
    goto LABEL_60;
  }

  return v61;
}

void dworch_downloadMetadata_didFinishLoadingPlaylistsCallback(uint64_t a1, const __CFArray *a2)
{
  value[16] = *MEMORY[0x1E69E9840];
  v219 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_76_4();
    v14 = OUTLINED_FUNCTION_43_4(qword_1EAF16DB0, v7, v8, v9, v10, v11, v12, v13, object, v173, v176, v179, v182, v185, v189, v194, v197, v200, v203, v206, v209, v213, key, v219, theArray, v223, type[0], *&type[4], theDict);
    v22 = OUTLINED_FUNCTION_85_2(v14, v15, v16, v17, v18, v19, v20, v21, objecta, v174, v177, v180, v183, v186, v190, v195, v198, v201, v204, v207, v210, v214, keya, v220, theArray, v223, type[0], *&type[4], theDict);
    if (OUTLINED_FUNCTION_109_0(v22))
    {
      *cf = 136315906;
      *&cf[4] = "dworch_downloadMetadata_didFinishLoadingPlaylistsCallback";
      v227 = 2048;
      OUTLINED_FUNCTION_56_4();
      v231 = v23;
      v232 = a2;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_18_3(v24, v25, value, v26, &dword_1962D5000, v27, v28, "<dw-orch> %s: %p %{public}@: metadata playlist download complete for metadataDownloader: %p");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v29, v30, v31, v32, v33);
  }

  if (!*(DerivedStorage + 561) && *(CMBaseObjectGetDerivedStorage() + 576))
  {
    if (!*(DerivedStorage + 480))
    {
      goto LABEL_135;
    }

    v34 = dworch_ensureTemporaryMetadataOnlyStreamingCache(v219);
    if (v34)
    {
      goto LABEL_136;
    }

    v34 = FigStreamingCacheTransferData(*(DerivedStorage + 480), *(DerivedStorage + 304));
    if (v34)
    {
      goto LABEL_136;
    }
  }

  if (!*(DerivedStorage + 304))
  {
LABEL_135:
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_136:
    v79 = v34;
    v78 = v219;
    goto LABEL_130;
  }

  if (!*(DerivedStorage + 442))
  {
    goto LABEL_36;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_200_1();
  FigAssetDownloaderGetCMBaseObject();
  v36 = v35;
  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v37)
  {
    v38 = v37(v36, @"AssetDownloaderProperty_InterstitialURLs", v2, &theArray);
  }

  else
  {
    v38 = -12782;
  }

  if (dword_1EAF16DB8)
  {
    v39 = DerivedStorage;
    OUTLINED_FUNCTION_76_4();
    v47 = OUTLINED_FUNCTION_43_4(qword_1EAF16DB0, v40, v41, v42, v43, v44, v45, v46, object, v173, v176, v179, v182, v185, v189, v194, v197, v200, v203, v206, v209, v213, key, v219, theArray, v223, type[0], *&type[4], theDict);
    v48 = theDict;
    if (os_log_type_enabled(v47, type[0]))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 0xFFFFFFFE;
    }

    if (v49)
    {
      v50 = *(v39 + 32);
      v51 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      else
      {
        Count = 0;
      }

      *cf = 136316418;
      *&cf[4] = "dworch_downloadMetadata_didFinishLoadingPlaylistsCallback";
      v227 = 2048;
      v228 = v219;
      v229 = 2114;
      v230 = v50;
      v231 = 2048;
      v232 = v51;
      v233 = 1024;
      v234 = Count;
      v235 = 1024;
      v236 = v38;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_18_3(v49, v53, value, v54, &dword_1962D5000, v55, v56, "<dw-orch> %s: %p %{public}@: got interstitialURLs %p with %d events (err = %d)");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v57, v58, v59, v60, v61);
    DerivedStorage = v39;
  }

  if (v38 || !theArray || CFArrayGetCount(theArray) < 1)
  {
LABEL_36:
    v78 = v219;
    v79 = dworch_downloadMetadata_stageComplete(v219);
    goto LABEL_130;
  }

  v187 = DerivedStorage;
  v62 = theArray;
  v63 = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    v65 = v63;
    OUTLINED_FUNCTION_76_4();
    v73 = OUTLINED_FUNCTION_43_4(qword_1EAF16DB0, v66, v67, v68, v69, v70, v71, v72, object, v173, v176, v179, v182, v187, v189, v194, v197, v200, v203, v206, v209, v213, key, v219, theArray, v223, type[0], *&type[4], theDict);
    v74 = theDict;
    if (os_log_type_enabled(v73, type[0]))
    {
      v75 = v74;
    }

    else
    {
      v75 = v74 & 0xFFFFFFFE;
    }

    if (v75)
    {
      v76 = *(v65 + 32);
      if (v62)
      {
        v77 = CFArrayGetCount(v62);
      }

      else
      {
        v77 = 0;
      }

      *cf = 136315906;
      *&cf[4] = "dworch_createDownloadOrchestratorsForInterstitialURLs";
      v227 = 2048;
      v228 = v219;
      v229 = 2114;
      v230 = v76;
      v231 = 1024;
      LODWORD(v232) = v77;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_128_0(v80, v81, v82, v83, v84, v85, v86, v87);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v88, v89, v90, v91, v92);
  }

  v93 = 0;
  v211 = *MEMORY[0x1E695E480];
  *&v64 = 136315906;
  *v191 = v64;
  v78 = v219;
  if (!v62)
  {
    goto LABEL_43;
  }

LABEL_42:
  for (i = CFArrayGetCount(v62); v93 < i; i = 0)
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v96 = CMBaseObjectGetDerivedStorage();
    value[0] = 0;
    theDict = 0;
    *cf = 0;
    *type = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(v96 + 64));
    v99 = MutableCopy;
    if (!MutableCopy)
    {
      goto LABEL_72;
    }

    CFDictionaryRemoveValue(MutableCopy, @"AssetDownloaderCreateOption_DownloadsInterstitialAssets");
    v100 = FigGetAllocatorForMedia();
    if (FigStreamingAssetDownloadConfigCreate(v100, cf) || FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers(*(v96 + 56), *cf))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_72:
      OUTLINED_FUNCTION_35_3();
      v110 = 0;
LABEL_73:
      v114 = -16650;
      goto LABEL_74;
    }

    if (FigCFDictionaryGetValueIfPresent())
    {
      if (!*type)
      {
        goto LABEL_56;
      }

      CFRetain(*type);
    }

    else
    {
      v101 = *(v96 + 56);
      if (v101)
      {
        v102 = FigStreamingAssetDownloadConfigCopyMediaSelectionCriteriaForInterstitials(v101);
        *type = v102;
        if (!v102)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    v102 = *type;
    if (!*type)
    {
      goto LABEL_56;
    }

LABEL_55:
    v103 = FigStreamingAssetDownloadConfigApplyMediaSelectionCriteriaToContentConfigs(*cf, v102);
    if (v103)
    {
      goto LABEL_112;
    }

LABEL_56:
    FigAssetGetCMBaseObject();
    v105 = v104;
    v106 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v106)
    {
      goto LABEL_72;
    }

    v103 = v106(v105, @"assetProperty_CreationOptionsDictionary", v211, &theDict);
    if (v103)
    {
LABEL_112:
      v114 = v103;
      OUTLINED_FUNCTION_35_3();
      v110 = 0;
      goto LABEL_74;
    }

    v107 = theDict;
    v108 = FigGetAllocatorForMedia();
    if (v107)
    {
      Mutable = CFDictionaryCreateMutableCopy(v108, 0, theDict);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(v108, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v110 = Mutable;
    if (!Mutable || (FigAssetGetCMBaseObject(), v112 = v111, (v113 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0))
    {
      OUTLINED_FUNCTION_35_3();
      goto LABEL_73;
    }

    v114 = v113(v112, @"assetProperty_CustomURLLoader", v211, value);
    if (v114)
    {
      OUTLINED_FUNCTION_35_3();
      if (v116)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (value[0])
      {
        CFDictionarySetValue(v110, @"assetOption_CustomURLLoader", value[0]);
      }

      v115 = *(v96 + 384);
      if (v115)
      {
        CFDictionarySetValue(v99, @"AssetDownloaderCreateOption_ProgressMonitor", v115);
      }

      v4 = *cf;
      *cf = 0;
      v96 = v110;
      v3 = v99;
      v116 = value[0];
      v99 = 0;
      v110 = 0;
      if (value[0])
      {
LABEL_69:
        CFRelease(v116);
      }
    }

LABEL_74:
    if (theDict)
    {
      CFRelease(theDict);
    }

    if (*type)
    {
      CFRelease(*type);
    }

    if (v99)
    {
      CFRelease(v99);
    }

    if (v110)
    {
      CFRelease(v110);
    }

    v78 = v219;
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (v114)
    {
LABEL_116:
      if (v4)
      {
        CFRelease(v4);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      if (v96)
      {
        CFRelease(v96);
      }

      break;
    }

    v117 = CMBaseObjectGetDerivedStorage();
    *type = 0;
    theDict = 0;
    CFArrayGetCount(*(v117 + 448));
    v118 = OUTLINED_FUNCTION_312();
    if (CFArrayContainsValue(v118, v238, ValueAtIndex))
    {
      goto LABEL_86;
    }

    v120 = FigGetAllocatorForMedia();
    if (FigAssetCreateWithURL(v120, ValueAtIndex, 0, v96, &theDict) || (objectb = *v117, OUTLINED_FUNCTION_33_5(), FigStreamingAssetDownloadOrchestratorCreate(v121, v122, v123, v124, v125, v3, v4, v219, objectb, dworch_createDownloadOrchestratorForInterstitialURL_kStreamingAssetDownloadOrchestratorInterstititialCallbacks, type)))
    {
      v119 = 0;
    }

    else
    {
      if (*type)
      {
        if (dword_1EAF16DB8)
        {
          HIDWORD(v223) = 0;
          BYTE3(v223) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v127 = HIDWORD(v223);
          v128 = BYTE3(v223);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v223)))
          {
            v129 = v127;
          }

          else
          {
            v129 = v127 & 0xFFFFFFFE;
          }

          if (v129)
          {
            *cf = v191[0];
            *&cf[4] = "dworch_createDownloadOrchestratorForInterstitialURL";
            v227 = 2048;
            OUTLINED_FUNCTION_56_4();
            v231 = v130;
            v232 = v131;
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v132, v133, v134, v135, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v128, "<dw-orch> %s: %p %{public}@: Created new interstitial asset downloader %p");
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v78 = v219;
        }

        CFArrayAppendValue(*(v117 + 448), ValueAtIndex);
        CFArrayAppendValue(*(v117 + 456), *type);
LABEL_86:
        v119 = 1;
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", object, v173, v176);
      v119 = v136 == 0;
    }

LABEL_90:
    if (*type)
    {
      CFRelease(*type);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }

    if (!v119)
    {
      goto LABEL_116;
    }

    if (v96)
    {
      CFRelease(v96);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    ++v93;
    if (v62)
    {
      goto LABEL_42;
    }

LABEL_43:
    ;
  }

  v137 = v187;
  v138 = CFArrayGetCount(*(v187 + 456));
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_76_4();
    v146 = OUTLINED_FUNCTION_43_4(qword_1EAF16DB0, v139, v140, v141, v142, v143, v144, v145, object, v173, v176, v179, v182, v187, v191[0], v191[1], 0x1F0B605F8, @"assetOption_CustomURLLoader", @"assetProperty_CustomURLLoader", @"assetProperty_CreationOptionsDictionary", v211, @"AssetDownloaderCreateOption_InterstitialMediaSelectionCriteria", @"AssetDownloaderCreateOption_DownloadsInterstitialAssets", v219, theArray, v223, type[0], *&type[4], theDict);
    v154 = OUTLINED_FUNCTION_85_2(v146, v147, v148, v149, v150, v151, v152, v153, objectc, v175, v178, v181, v184, v188, v192, v196, v199, v202, v205, v208, v212, v215, keyb, v221, theArray, v223, type[0], *&type[4], theDict);
    if (OUTLINED_FUNCTION_109_0(v154))
    {
      v155 = *(v137 + 32);
      *cf = v193;
      *&cf[4] = "dworch_downloadMetadata_didFinishLoadingPlaylistsCallback";
      v227 = 2048;
      v228 = v78;
      v229 = 2114;
      v230 = v155;
      v231 = 1024;
      LODWORD(v232) = v138;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_18_3(v156, v157, value, v158, &dword_1962D5000, v159, v160, "<dw-orch> %s: %p %{public}@: created %d interstitial asset downloaders");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v161, v162, v163, v164, v165);
  }

  if (v138 >= 1)
  {
    for (j = 0; j != v138; ++j)
    {
      v167 = CFArrayGetValueAtIndex(*(v137 + 456), j);
      v168 = CMBaseObjectGetDerivedStorage();
      value[0] = v167;
      value[1] = 0;
      dispatch_sync_f(*v168, value, dworch_loadMetadataDispatch);
    }
  }

  v79 = 0;
LABEL_130:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v79)
  {
    dworch_transitionToTerminalStateWithOSStatus(v78, v79);
  }
}

uint64_t dworch_downloadMetadata_stageComplete(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (!*(DerivedStorage + 24))
  {
    *(DerivedStorage + 443) = 1;
    if (dword_1EAF16DB8)
    {
      v25 = OUTLINED_FUNCTION_5_24(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v53, v56, v59, v62, SBYTE2(v62), SBYTE3(v62), SHIDWORD(v62));
      v33 = OUTLINED_FUNCTION_116_0(v25, v26, v27, v28, v29, v30, v31, v32, v55, v58, v61, v64, v66, v68, v70);
      if (OUTLINED_FUNCTION_109_0(v33))
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_0_40();
        OUTLINED_FUNCTION_18_3(v34, v35, v71, v36, &dword_1962D5000, v37, v38, "<dw-orch> %s: %p %{public}@: metadata download completed, but waiting for destinationURL to proceed.");
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v48, v49, v50, v51, v52);
    }

    return 0;
  }

  *(DerivedStorage + 443) = 0;
  *(DerivedStorage + 441) = *(DerivedStorage + 480) != 0;
  if (dword_1EAF16DB8)
  {
    v11 = OUTLINED_FUNCTION_5_24(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v53, v56, v59, v62, SBYTE2(v62), SBYTE3(v62), SHIDWORD(v62));
    v19 = OUTLINED_FUNCTION_116_0(v11, v12, v13, v14, v15, v16, v17, v18, v54, v57, v60, v63, v65, v67, v69);
    if (OUTLINED_FUNCTION_109_0(v19))
    {
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_18_3(v20, v21, v71, v22, &dword_1962D5000, v23, v24, "<dw-orch> %s: %p %{public}@: metadata download is complete. didPersistMetadata = %s");
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v39, v40, v41, v42, v43);
  }

  if (*(v10 + 442) && (v44 = *(v10 + 456)) != 0 && CFArrayGetCount(v44) > 0 || !*(v10 + 441))
  {
    v45 = a1;
    v46 = 2;
  }

  else
  {
    v45 = a1;
    v46 = 3;
  }

  result = dworch_changeStageOnQueue(v45, v46);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t dworch_persistMetadata_stageComplete(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126(qword_1EAF16DB0, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, *v45, v45[2], v45[3], v45[4]);
    v19 = OUTLINED_FUNCTION_311(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v47, v48, v49);
    if (OUTLINED_FUNCTION_115_1(v19))
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_9_13();
      _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v1, v2, v25);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v26, v27, v28, v29, v30);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v32)
  {
    v33 = v32;
    v34 = OUTLINED_FUNCTION_11_13();
    if (v34)
    {
      v35 = v34;
      if (a1)
      {
        v36 = CFRetain(a1);
      }

      else
      {
        v36 = 0;
      }

      *v35 = v36;
      v35[1] = v33;
      dispatch_async_f(*(DerivedStorage + 296), v35, dworch_sendDidPersistMetadataOnCallbackQueue);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v41, v43);
      if (v38)
      {
        CFRelease(v33);
      }
    }
  }

  return dworch_changeStageOnQueue(a1, 3u);
}

const void *dworch_ensureExtendedAttributesSetOnDestinationURL(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    result = FigSetNameForAssetAtURL(*(DerivedStorage + 24), v3);
    if (result)
    {
      return result;
    }

    v5 = *(v2 + 80);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 80) = 0;
    }
  }

  v6 = *(v2 + 88);
  if (v6)
  {
    result = FigSetImageDataForAssetAtURL(*(v2 + 24), v6);
    if (result)
    {
      return result;
    }

    v7 = *(v2 + 88);
    if (v7)
    {
      CFRelease(v7);
      *(v2 + 88) = 0;
    }
  }

  if (!*(v2 + 72) || !*(v2 + 568))
  {
    return 0;
  }

  FigAssetDownloadStorageManagementSetContentTypeForAssetAtURL(*(v2 + 24));
  FigAssetDownloadStorageManagementSetDownloadStartDateForAssetAtURL(*(v2 + 24), *(v2 + 72), *(v2 + 568));
  result = *(v2 + 568);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(v2 + 568) = 0;
  }

  return result;
}

uint64_t dworch_downloadMedia_matchMediaDownloaderToOrchestratorStatus(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 561))
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a2);
    if (result)
    {
      return result;
    }
  }

  v6 = *(DerivedStorage + 556);
  if (v6 == 5)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {
      result = v9(a2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    return 4294954514;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_15;
    }

    v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v7)
    {
      result = v7(a2);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    return 4294954514;
  }

  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  result = v8(a2);
  if (result)
  {
    return result;
  }

LABEL_15:
  if (*(DerivedStorage + 561))
  {
    return 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a2);
}

uint64_t dworch_setLastTimestampClientDidPauseOnContentSteeringMonitor(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 424))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v4)
  {
    v5 = v4;
    v6 = *(v3 + 424);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v8 = v7(v6, @"AlternateFilterMonitorProperty_LastTimestampClientDidPause", v5);
    }

    else
    {
      v8 = 4294954514;
    }

    CFRelease(v5);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, valuePtr, v13);
    return v10;
  }

  return v8;
}

void dworch_pauseForPlaybackDispatch(uint64_t *a1)
{
  v3 = *a1;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_200_1();
  CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v41, v43);
LABEL_14:
    LODWORD(TimestampClientDidPauseOnContentSteeringMonitor) = 0;
    goto LABEL_12;
  }

  if (dword_1EAF16DB8)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126(qword_1EAF16DB0, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, *v45, v45[2], v45[3], v45[4]);
    v19 = OUTLINED_FUNCTION_64_4(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v47, v48);
    if (OUTLINED_FUNCTION_115_1(v19))
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_9_13();
      OUTLINED_FUNCTION_448(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v28, v29, v30, v31, v32);
  }

  OUTLINED_FUNCTION_72_3();
  if (!v34 & v33)
  {
    goto LABEL_14;
  }

  *(v1 + 561) = 1;
  v35 = *(v1 + 564);
  if (v35 != 2)
  {
    v36 = kDownloadOrchestratorStage_JumpTable[6 * v35 + 3];
    if (v36)
    {
      v37 = (v36)(v3);
      if (v37)
      {
        TimestampClientDidPauseOnContentSteeringMonitor = v37;
        goto LABEL_11;
      }
    }
  }

  TimestampClientDidPauseOnContentSteeringMonitor = dworch_setLastTimestampClientDidPauseOnContentSteeringMonitor(v3, 0x8000000000000000);
  if (TimestampClientDidPauseOnContentSteeringMonitor)
  {
LABEL_11:
    dworch_transitionToTerminalStateWithOSStatus(*a1, TimestampClientDidPauseOnContentSteeringMonitor);
  }

LABEL_12:
  *(a1 + 2) = TimestampClientDidPauseOnContentSteeringMonitor;
}

void dworch_copyNextTrimmedLogFromString()
{
  OUTLINED_FUNCTION_187();
  Length = CFStringGetLength(v2);
  v4 = Length - v0;
  if (Length - v0 >= 1)
  {
    v10.location = 0;
    v10.length = 0;
    v5 = Length - v0;
    if (v4 >= 0x385)
    {
      v5 = 900;
      v11.location = v0;
      v11.length = 900;
      if (CFStringFindWithOptions(v1, @"\n", v11, 0, &v10))
      {
        v6 = v0 + 900;
        do
        {
          location = v10.location;
          if (v6 <= v10.length + v10.location)
          {
            break;
          }

          v12.location = v10.length + v10.location;
          v12.length = v6 - (v10.length + v10.location);
        }

        while (CFStringFindWithOptions(v1, @"\n", v12, 0, &v10));
        if (location - v0 >= v4)
        {
          v8 = v4;
        }

        else
        {
          v8 = location - v0;
        }

        if (location - v0 <= 0)
        {
          v5 = v4;
        }

        else
        {
          v5 = v8;
        }
      }
    }

    v9 = CFGetAllocator(v1);
    v13.location = v0;
    v13.length = v5;
    CFStringCreateWithSubstring(v9, v1, v13);
  }

  OUTLINED_FUNCTION_652();
}

__CFError *FigStreamingAssetDownloadOrchestratorCreate_cold_3(uint64_t a1, uint64_t *a2, const __CFDictionary *a3)
{
  *(a1 + 640) = FigGetCFPreferenceNumberWithDefault();
  *(a1 + 624) = FigDebugIsInternalBuild();
  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v6 = OUTLINED_FUNCTION_14_10();
    v7(v6);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v8 = OUTLINED_FUNCTION_14_10();
    v9(v8);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v10 = OUTLINED_FUNCTION_14_10();
    v11(v10);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v12 = OUTLINED_FUNCTION_14_10();
    v13(v12);
  }

  if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v14 = OUTLINED_FUNCTION_14_10();
    v15(v14);
  }

  if (*(a1 + 96))
  {
    if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v16 = OUTLINED_FUNCTION_67_3();
      v17(v16);
    }

    if (*a2 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v18 = OUTLINED_FUNCTION_67_3();
      v19(v18);
    }
  }

  if (*(a1 + 120))
  {
    v20 = *a2;
    if (*a2)
    {
      v21 = *(a1 + 128);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v22)
      {
        v22(v20, 0x1F0B64618, 0x1F0B39BD8, v21, 0);
      }
    }
  }

  result = CFDictionaryGetValue(a3, @"AssetDownloaderCreateOption_RetryError");
  if (result)
  {
    v24 = result;
    v25 = *a2;
    Code = CFErrorGetCode(result);
    if (v25)
    {
      v27 = Code;
      v28 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v28)
      {
        v28(v25, 0x1F0B64618, 0x1F0B3A038, v27, 0);
      }
    }

    v29 = *a2;
    result = CFErrorGetDomain(v24);
    if (v29)
    {
      OUTLINED_FUNCTION_200_1();
      VTable = CMBaseObjectGetVTable();
      v31 = *(VTable + 16);
      result = (VTable + 16);
      if (*(v31 + 48))
      {
        v32 = OUTLINED_FUNCTION_177();
        return v33(v32);
      }
    }
  }

  return result;
}

void dworch_downloadMedia_downloadSucceededCallback_cold_2(uint64_t a1, const void *a2, const void *a3, _DWORD *a4)
{
  v8 = 0;
  while (1)
  {
    Count = *(a1 + 24);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v8 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v8);
    v11 = dworch_sendDidChangeLoadedTimeRangeCallback(a2, ValueAtIndex, *(a1 + 24), a3, *(a1 + 40));
    ++v8;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_8:
  *a4 = v11;
  CFRelease(a3);
}

uint64_t dworch_downloadMedia_downloadSucceededCallback_cold_4(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a2 = v4;
  if (!v4)
  {
    return 1;
  }

  CFRelease(a1);
  return 0;
}

uint64_t dworch_downloadMedia_start_cold_2()
{
  OUTLINED_FUNCTION_48_4();
  if (*(CMBaseObjectGetDerivedStorage() + 576))
  {
    dworch_downloadMedia_gotAccessToDestinationURLCallback(v1, 0, *(v2 + 576));
    goto LABEL_3;
  }

  result = FigAssetDownloadCoordinatorScheduleAccessToURL(v1, *(v2 + 24), *v2, 0, dworch_downloadMedia_gotAccessToDestinationURLCallback);
  if (!result)
  {
LABEL_3:
    dworch_downloadMedia_symptomsReportStreamingAssetDownloadStart(v1);
    dworch_issueReportingEvent(v1, 705);
    result = 0;
  }

  *v0 = result;
  return result;
}

uint64_t dworch_downloadMedia_pauseForInteractivePlayback_cold_1()
{
  OUTLINED_FUNCTION_187();
  v3 = *(v2 + 632);
  if (v3)
  {
    v4 = *(v1 + 561);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {
      v5(v3, 0x1F0B64618, 0x1F0B39F98, v4, 0);
    }
  }

  FigSymptomsReportStreamingAssetDownloadPause((v1 + 656));

  return dworch_issueReportingEvent(v0, 704);
}

void dworch_selectUsingMediaSelectionCriteria_cold_1(uint64_t a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  if (v2)
  {
    *(a1 + 32) = v2;
  }
}

void dworch_sendDidResolveMediaSelectionCallbackForSelectedMediaArray_cold_1(const void *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  if (v2)
  {

    CFRelease(a1);
  }
}

void dworch_updateMediaSelectionsReportingKeys_cold_2(const void *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  CFRelease(a1);
}

void dworch_updateAlternateInfoForReporting_cold_1(const __CFAllocator *a1, uint64_t a2, __CFArray *a3, const void *a4)
{
  v10 = v9;
  v11 = a1;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_44_5();
    v20 = 0;
    v16 = 0;
LABEL_102:
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v97, theArray, v101);
    v103 = 0;
    goto LABEL_61;
  }

  v13 = OUTLINED_FUNCTION_265();
  v16 = CFArrayCreateMutable(v13, v14, v15);
  v107 = v16;
  if (!v16)
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_44_5();
    v20 = 0;
    goto LABEL_102;
  }

  v17 = OUTLINED_FUNCTION_265();
  v20 = CFArrayCreateMutable(v17, v18, v19);
  if (!v20)
  {
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_44_5();
    goto LABEL_102;
  }

  v21 = OUTLINED_FUNCTION_265();
  v6 = CFArrayCreateMutable(v21, v22, v23);
  v106 = v6;
  if (!v6)
  {
    OUTLINED_FUNCTION_3_26();
    VideoQualityIndex = 0;
    v8 = 0;
    goto LABEL_102;
  }

  v24 = OUTLINED_FUNCTION_265();
  v8 = CFArrayCreateMutable(v24, v25, v26);
  if (!v8)
  {
    OUTLINED_FUNCTION_3_26();
    VideoQualityIndex = 0;
    goto LABEL_102;
  }

  v27 = OUTLINED_FUNCTION_265();
  VideoQualityIndex = CFArrayCreateMutable(v27, v28, v29);
  v111 = VideoQualityIndex;
  if (!VideoQualityIndex || (v30 = OUTLINED_FUNCTION_265(), (v33 = CFArrayCreateMutable(v30, v31, v32)) == 0))
  {
    OUTLINED_FUNCTION_3_26();
    goto LABEL_102;
  }

  v113 = v33;
  v34 = OUTLINED_FUNCTION_265();
  v110 = CFArrayCreateMutable(v34, v35, v36);
  if (!v110)
  {
    v10 = 0;
    v7 = 0;
    v5 = 0;
    v11 = 0;
    v112 = 0;
    goto LABEL_102;
  }

  v37 = OUTLINED_FUNCTION_265();
  v5 = CFArrayCreateMutable(v37, v38, v39);
  if (!v5)
  {
    v10 = 0;
    v7 = 0;
    v112 = 0;
LABEL_101:
    v11 = v110;
    goto LABEL_102;
  }

  v40 = OUTLINED_FUNCTION_265();
  v7 = CFArrayCreateMutable(v40, v41, v42);
  if (!v7)
  {
    v10 = 0;
    v112 = 0;
    goto LABEL_101;
  }

  v43 = OUTLINED_FUNCTION_265();
  v46 = CFArrayCreateMutable(v43, v44, v45);
  if (!v46)
  {
    v10 = 0;
    v112 = 0;
    goto LABEL_101;
  }

  v112 = v46;
  v47 = OUTLINED_FUNCTION_265();
  v10 = CFArrayCreateMutable(v47, v48, v49);
  if (!v10)
  {
    goto LABEL_101;
  }

  v50 = OUTLINED_FUNCTION_265();
  v53 = CFArrayCreateMutable(v50, v51, v52);
  if (!v53)
  {
    goto LABEL_101;
  }

  v102 = v5;
  v103 = v53;
  v108 = v8;
  v109 = v7;
  v98 = v10;
  theArraya = v20;
  v54 = *(a2 + 352);
  if (v54)
  {
    v55 = 0;
    do
    {
      FigAlternateGetPeakBitRate(v54[2]);
      FigAlternateGetAverageBitRate(v54[2]);
      VideoRangeString = FigAlternateGetVideoRangeString(v54[2]);
      VideoQualityIndex = FigAlternateGetVideoQualityIndex(v54[2], v57);
      FigAlternateIsAudioOnly(v54[2]);
      FigAlternateGetResolution(v54[2]);
      CodecString = FigAlternateGetCodecString(v54[2]);
      FigAlternateHasBinauralAudio(v54[2]);
      FigAlternateGetMaxPlayableAudioChannelCount(v54[2]);
      FigAlternateHasLosslessAudio(v54[2]);
      BestAudioFormat = FigAlternateGetBestAudioFormat(v54[2]);
      StringFromAudioFormat = FigAlternateGetStringFromAudioFormat(BestAudioFormat);
      FigAlternateGetMaxAudioSampleRate(v54[2]);
      VideoLayoutString = FigAlternateGetVideoLayoutString(v54[2]);
      VideoContentTypeString = FigAlternateGetVideoContentTypeString(v54[2]);
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      if (VideoRangeString)
      {
        CFArrayAppendValue(theArraya, VideoRangeString);
      }

      v16 = v107;
      FigCFArrayAppendInt();
      v6 = v106;
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      if (CodecString)
      {
        CFArrayAppendValue(a3, CodecString);
      }

      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      FigCFArrayAppendInt();
      if (StringFromAudioFormat)
      {
        CFArrayAppendValue(v102, StringFromAudioFormat);
      }

      FigCFArrayAppendInt();
      FigCFArrayAppendDouble();
      if (VideoLayoutString)
      {
        CFArrayAppendValue(v98, VideoLayoutString);
      }

      if (VideoContentTypeString)
      {
        CFArrayAppendValue(v103, VideoContentTypeString);
      }

      v54 = *v54;
      ++v55;
    }

    while (v54);
  }

  OUTLINED_FUNCTION_23_5();
  if (VideoQualityIndex)
  {
    v7 = v109;
    v20 = theArraya;
    v5 = v102;
    v10 = v98;
    v8 = v108;
    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v63 = OUTLINED_FUNCTION_24_4();
      v64(v63);
    }

    OUTLINED_FUNCTION_23_5();
    v11 = v110;
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v65 = OUTLINED_FUNCTION_24_4();
      v66(v65);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v67 = OUTLINED_FUNCTION_24_4();
      v68(v67);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v69 = OUTLINED_FUNCTION_24_4();
      v70(v69);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v71 = OUTLINED_FUNCTION_24_4();
      v72(v71);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v73 = OUTLINED_FUNCTION_24_4();
      v74(v73);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v75 = OUTLINED_FUNCTION_24_4();
      v76(v75);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v77 = OUTLINED_FUNCTION_24_4();
      v78(v77);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v79 = OUTLINED_FUNCTION_24_4();
      v80(v79);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v81 = OUTLINED_FUNCTION_24_4();
      v82(v81);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v83 = OUTLINED_FUNCTION_24_4();
      v84(v83);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v85 = OUTLINED_FUNCTION_24_4();
      v86(v85);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v87 = OUTLINED_FUNCTION_24_4();
      v88(v87);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v89 = OUTLINED_FUNCTION_24_4();
      v90(v89);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v91 = OUTLINED_FUNCTION_24_4();
      v92(v91);
    }

    OUTLINED_FUNCTION_23_5();
    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v93 = OUTLINED_FUNCTION_24_4();
      v94(v93);
    }
  }

  else
  {
    v7 = v109;
    v20 = theArraya;
    v5 = v102;
    v10 = v98;
    v8 = v108;
    v11 = v110;
  }

  VideoQualityIndex = v111;
LABEL_61:
  CFRelease(a3);
  CFRelease(a4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (VideoQualityIndex)
  {
    CFRelease(VideoQualityIndex);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v103)
  {
    OUTLINED_FUNCTION_88_3();

    CFRelease(v95);
  }

  else
  {
    OUTLINED_FUNCTION_88_3();
  }
}

void dworch_updateAlternateInfoForReporting_cold_2(const void *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  CFRelease(a1);
}

void dworch_interstitialDidFinishLoadingMetadata_cold_1(const void *a1)
{
  v2 = dworch_downloadMetadata_stageComplete(a1);
  if (v2)
  {
    dworch_transitionToTerminalStateWithOSStatus(a1, v2);
  }
}

void dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_3(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    do
    {
      v4 = v3;
      v5 = a2[1];
      v4[1] = v5;
      *v5 = v4;
      dworch_freeAlternateAndRenditionItem(a2);
      v3 = *v4;
      a2 = v4;
    }

    while (*v4);
  }

  else
  {
    v4 = a2;
  }

  v6 = v4[1];
  *(a1 + 360) = v6;
  *v6 = 0;
  dworch_freeAlternateAndRenditionItem(v4);
}

BOOL dworch_downloadMedia_gotAccessToDestinationURLCallback_cold_4(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t sgffr_copyCursorSampleLocationAndDataSource(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, char *a6, void *a7, void *a8, CFTypeRef *a9, CFTypeRef *a10, CFTypeRef *a11)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  cf = 0;
  if (a3 && *(*(CMBaseObjectGetVTable() + 16) + 184) && *(*(CMBaseObjectGetVTable() + 16) + 192))
  {
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 184);
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19(a2, &v35, &v33, &v34, &v32, &cf, &v31);
    if (v20 || !v32)
    {
      goto LABEL_17;
    }

    if (v34 >= v35 && v34 + v32 <= (v33 + v35))
    {
      v23 = 1;
      goto LABEL_19;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v31)
    {
      CFRelease(v31);
      v31 = 0;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, v30);
  }

  else
  {
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (!v22)
    {
      goto LABEL_25;
    }

    v21 = v22(a2, &v35, &v33, &cf, &v31);
  }

  v20 = v21;
LABEL_17:
  if (v20)
  {
    goto LABEL_26;
  }

  v23 = 0;
LABEL_19:
  if (!(cf | v31))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, cf, v30);
LABEL_56:
    v20 = v26;
    goto LABEL_26;
  }

  if (!*(DerivedStorage + 33))
  {
    if (!cf)
    {
      v26 = sgffr_copyByteStreamForDataSourceURL(DerivedStorage, v31, &cf);
      if (v26)
      {
        goto LABEL_56;
      }
    }

    if (*(DerivedStorage + 32))
    {
      v26 = sgffr_copyScheduledIOForByteStream(DerivedStorage, cf, &v30);
      if (v26)
      {
        goto LABEL_56;
      }
    }

    goto LABEL_36;
  }

  if (v31)
  {
    goto LABEL_36;
  }

  CMBaseObject = CMByteStreamGetCMBaseObject();
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v25)
  {
LABEL_25:
    v20 = 4294954514;
    goto LABEL_26;
  }

  v26 = v25(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &v31);
  if (v26)
  {
    goto LABEL_56;
  }

LABEL_36:
  if (a4)
  {
    *a4 = v35;
  }

  if (a5)
  {
    *a5 = v33;
  }

  if (a6)
  {
    *a6 = v23;
  }

  if (a7)
  {
    *a7 = v34;
  }

  if (a8)
  {
    *a8 = v32;
  }

  if (a9)
  {
    *a9 = v31;
    v31 = 0;
  }

  if (a10)
  {
    *a10 = cf;
    cf = 0;
  }

  v20 = 0;
  if (a11)
  {
    *a11 = v30;
    v30 = 0;
  }

LABEL_26:
  if (v31)
  {
    CFRelease(v31);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v20;
}

uint64_t sgffr_checkByteRangeForByteStream(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = 0;
  FigReadWriteLockLockForRead();
  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  FigReadWriteLockUnlockForRead();
  if (Int64IfPresent && (a3 & 0x8000000000000000) == 0 && v14 >= a3 && &v14[-a3] >= a4)
  {
    return 0;
  }

  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = v9(CMBaseObject, *MEMORY[0x1E695FF78], 0, &number);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, &v14);
    CFRelease(number);
  }

  if (!v10)
  {
    FigReadWriteLockLockForWrite();
    FigCFDictionarySetInt64();
    FigReadWriteLockUnlockForWrite();
    if (a3 < 0 || (v14 >= a3 ? (v11 = &v14[-a3] >= a4) : (v11 = 0), !v11))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, number, v16);
      return v12;
    }

    return 0;
  }

  return v10;
}

uint64_t createSampleBufferForUncompressed(uint64_t a1, size_t a2, const opaqueCMFormatDescription *a3, Boolean a4, void *a5, OSStatus (__cdecl *a6)(CMSampleBufferRef, void *), const CMSampleTimingInfo *a7, CMSampleBufferRef *a8, CMBlockBufferRef *a9)
{
  v67 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  blockBufferOut = 0;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
  Dimensions = CMVideoFormatDescriptionGetDimensions(a3);
  width = Dimensions.width;
  v14 = HIDWORD(*&Dimensions);
  v15 = MEMORY[0x1E695E480];
  v48 = *&Dimensions >> 32;
  if (*(DerivedStorage + 144) == __PAIR64__(Dimensions.height, MediaSubType) && *(DerivedStorage + 152) == Dimensions.width)
  {
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v17 = *(DerivedStorage + 136);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 136) = 0;
  }

  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  FigCFDictionarySetInt();
  v18 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v18);
  CFRelease(v18);
  Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x1E6960008]);
  v20 = MEMORY[0x1E6966060];
  if (Extension && (v21 = Extension, v22 = CFGetTypeID(Extension), v22 == CFNumberGetTypeID()))
  {
    CFDictionarySetValue(Mutable, *v20, v21);
  }

  else
  {
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (DescriptionWithPixelFormatType && !CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E69662D8]))
    {
      if (((a2 / v48) & 0x8000000000000000) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_44;
      }

      FigCFDictionarySetInt64();
    }
  }

  v24 = CVPixelBufferPoolCreate(*v15, 0, Mutable, (DerivedStorage + 136));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v24)
  {
    *(DerivedStorage + 144) = MediaSubType;
    *(DerivedStorage + 148) = v14;
    *(DerivedStorage + 152) = width;
LABEL_16:
    v25 = *(DerivedStorage + 136);
    if (!v25)
    {
LABEL_31:
      if (a8)
      {
        *a8 = sampleBufferOut;
        sampleBufferOut = 0;
      }

      v24 = 0;
      if (a9)
      {
        *a9 = blockBufferOut;
        blockBufferOut = 0;
      }

      goto LABEL_35;
    }

    v26 = CVPixelBufferPoolCreatePixelBuffer(*v15, v25, &pixelBufferOut);
    if (!v26)
    {
      v27 = pixelBufferOut;
      if (!pixelBufferOut)
      {
        goto LABEL_31;
      }

      v28 = *MEMORY[0x1E6965E50];
      *customBlockSource = *MEMORY[0x1E6965D70];
      *&customBlockSource[8] = v28;
      v29 = *MEMORY[0x1E6965EF8];
      *&customBlockSource[16] = *MEMORY[0x1E6965E58];
      *&customBlockSource[24] = v29;
      v30 = *MEMORY[0x1E6965F30];
      v55 = *MEMORY[0x1E6965D88];
      v56 = v30;
      v31 = *MEMORY[0x1E6965F98];
      v57 = *MEMORY[0x1E6965E80];
      v58 = v31;
      v32 = *MEMORY[0x1E6965D00];
      v59 = *MEMORY[0x1E6960070];
      v60 = v32;
      v33 = *MEMORY[0x1E6960080];
      v61 = *MEMORY[0x1E6965CF0];
      v62 = v33;
      v34 = *MEMORY[0x1E695FFF0];
      v63 = *MEMORY[0x1E6960020];
      v64 = v34;
      v35 = *MEMORY[0x1E6960078];
      v65 = *MEMORY[0x1E6960018];
      v66 = v35;
      Extensions = CMFormatDescriptionGetExtensions(a3);
      if (Extensions)
      {
        v37 = Extensions;
        for (i = 0; i != 128; i += 8)
        {
          v39 = *&customBlockSource[i];
          Value = CFDictionaryGetValue(v37, v39);
          if (Value)
          {
            CVBufferSetAttachment(v27, v39, Value, kCVAttachmentMode_ShouldPropagate);
          }
        }
      }

      if (!pixelBufferOut)
      {
        goto LABEL_31;
      }

      v41 = CVPixelBufferGetBytesPerRow(pixelBufferOut) * v48;
      if (v41 < a2)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        v26 = CMSampleBufferCreateForImageBuffer(*DerivedStorage, pixelBufferOut, a4, a6, a5, a3, a7, &sampleBufferOut);
        if (!v26)
        {
          if (!a9)
          {
            goto LABEL_31;
          }

          *customBlockSource = 0;
          v42 = pixelBufferOut;
          if (pixelBufferOut)
          {
            v42 = CFRetain(pixelBufferOut);
          }

          *&customBlockSource[20] = v42;
          *&customBlockSource[4] = cvbufferBBufSourceLock;
          *&customBlockSource[12] = cvbufferBBufSourceRelease;
          v26 = CMBlockBufferCreateWithMemoryBlock(*DerivedStorage, 0, v41, 0, customBlockSource, 0, v41, 0, &blockBufferOut);
          if (!v26)
          {
            goto LABEL_31;
          }
        }
      }
    }

LABEL_44:
    v24 = v26;
  }

LABEL_35:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v24;
}

double sgffr_transferBiPlanarDataFromBlockBufferToPixelBuffer(OpaqueCMBlockBuffer *a1, __CVBuffer *a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v5 = OUTLINED_FUNCTION_312();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, v6);
  v8 = OUTLINED_FUNCTION_312();
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v8, v9);
  v11 = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
  v12 = OUTLINED_FUNCTION_312();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v12, v13);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
  if (DataLength <= 0xF)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_297_0();

    return FigSignalErrorAtGM(v35);
  }

  else
  {
    v16 = v15;
    destination = 0;
    v41 = 0;
    if (!CMBlockBufferCopyDataBytes(a1, 0, 0x10uLL, &destination))
    {
      v17 = bswap32(destination);
      if (v17 <= 0xF || (v39 = v16, v18 = bswap32(HIDWORD(destination)), WidthOfPlane > v18) || (v19 = bswap32(v41), v19 <= 0xF) || DataLength <= v17 || DataLength <= v19 || !is_mul_ok(HeightOfPlane, v18) || ((HeightOfPlane * v18) & 0x8000000000000000) != 0 || (OUTLINED_FUNCTION_5_25(), v21) || v20 > v19 || (v38 = bswap32(HIDWORD(v41)), !is_mul_ok(v11, v38)) || ((v11 * v38) & 0x8000000000000000) != 0 || (OUTLINED_FUNCTION_5_25(), v23) || DataLength < v22)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        if (BytesPerRowOfPlane >= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = BytesPerRowOfPlane;
        }

        if (v39 >= v38)
        {
          v25 = v38;
        }

        else
        {
          v25 = v39;
        }

        v26 = OUTLINED_FUNCTION_312();
        if (!CVPixelBufferLockBaseAddress(v26, v27))
        {
          pixelBuffer = a2;
          v28 = OUTLINED_FUNCTION_312();
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v28, v29);
          if (HeightOfPlane)
          {
            v31 = BaseAddressOfPlane;
            do
            {
              CMBlockBufferCopyDataBytes(a1, v17, v24, v31);
              v17 += v18;
              v31 += BytesPerRowOfPlane;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
          }

          v32 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
          if (v11)
          {
            v33 = v32;
            do
            {
              CMBlockBufferCopyDataBytes(a1, v19, v25, v33);
              v19 += v38;
              v33 += v39;
              --v11;
            }

            while (v11);
          }

          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        }
      }
    }

    OUTLINED_FUNCTION_297_0();
  }

  return result;
}

double sgffr_makeDataReady_deferUntilMakeDataReadyPolicyOnly(opaqueCMSampleBuffer *a1, void *a2)
{
  if (a2 && !CMSampleBufferDataIsReady(a1))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 32))
    {
      v5 = a2[3];
      v6 = a2[4];
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v7 && !v7(v5, v6, 0))
      {
        FigSemaphoreCreate();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_38();
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_7_14();
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterRegisterForBarrierSupport();
        if (CMSampleBufferIsValid(a1) && !CMSampleBufferDataIsReady(a1))
        {
          v8 = OUTLINED_FUNCTION_312();
          if (!CMSampleBufferHasDataFailed(v8, v9))
          {
            FigSemaphoreWaitRelative();
          }
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_38();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_7_14();
        CMNotificationCenterRemoveListener();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterBarrier();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterUnregisterForBarrierSupport();
        FigSemaphoreDestroy();
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void sgffr_refineAndVerifySampleLocation(uint64_t a1, CMBlockBufferRef theBuffer, CMBlockBufferRef a3, uint64_t a4, size_t a5, uint64_t a6, size_t size, uint64_t *a8, void *a9)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  if ((theBuffer != 0) == (a3 != 0) || (v10 = a6 - a4, a6 - a4 < 0) || v10 + size > a5 || theBuffer && CMBlockBufferGetDataLength(theBuffer) != a5 || a3 && CMBlockBufferGetDataLength(a3) != size)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v17 = 0;
    goto LABEL_24;
  }

  v24 = a8;
  if (size >= 9)
  {
    v17 = malloc_type_malloc(size, 0x13FDEF13uLL);
    p_destination = v17;
    if (!a3)
    {
      goto LABEL_10;
    }

LABEL_14:
    v19 = a3;
    v20 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  p_destination = &destination;
  if (a3)
  {
    goto LABEL_14;
  }

LABEL_10:
  v19 = theBuffer;
  v20 = v10;
LABEL_15:
  if (!CMBlockBufferCopyDataBytes(v19, v20, size, p_destination))
  {
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 192);
    if (v21)
    {
      if (!v21(a1, a4, a5, p_destination, size, &v26, &v25))
      {
        if (v26 >= a4 && (v22 = v25, v25 + v26 <= a5 + a4))
        {
          if (v24)
          {
            *v24 = v26;
          }

          if (a9)
          {
            *a9 = v22;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
        }
      }
    }
  }

LABEL_24:
  free(v17);
  OUTLINED_FUNCTION_297_0();
}

uint64_t sgffr_copyByteStreamForDataSourceURL(uint64_t a1, const void *a2, void **a3)
{
  FigReadWriteLockLockForWrite();
  v6 = CFDictionaryGetValue(*(*(a1 + 48) + 24), a2);
  value = v6;
  if (v6)
  {
    CFRetain(v6);
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        v7 = v9(v8, a2, 0, 0, *MEMORY[0x1E695E480], &value);
        if (!v7)
        {
          CFDictionarySetValue(*(*(a1 + 48) + 24), a2, value);
        }
      }

      else
      {
        v7 = 4294954514;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, value, v14);
      v7 = v11;
    }
  }

  FigReadWriteLockUnlockForWrite();
  *a3 = value;
  return v7;
}

void FigSampleGeneratorDataSourceCacheCreate_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;

  CFRelease(a2);
}

void FigSampleGeneratorDataSourceCacheCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigSampleGeneratorDataSourceCacheCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sgffr_copyProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void sgffr_CreateSampleGeneratorBatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sgffr_CreateSampleGeneratorBatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sgffr_createSampleBufferAtCursorUsingBatch_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sgffr_createSampleBufferAtCursorUsingBatch_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sgffr_createSampleBufferAtCursorUsingBatch_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t sgffr_createSampleBufferAtCursorUsingBatch_cold_4(uint64_t a1, const void **a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  return sgffr_forgetScheduledIOForSampleBuffer(*a2);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void sgffr_createSampleBufferAtCursorUsingBatch_cold_12(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sgffr_createSampleBufferAtCursorUsingBatch_cold_13(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sgffr_createSampleBufferAtCursorUsingBatch_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void sgffr_createSampleBufferAtCursorUsingBatch_cold_15(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sgffr_generateSingleSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t sgffr_generateSingleSampleBuffer_cold_2(uint64_t a1, const void **a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  return sgffr_forgetScheduledIOForSampleBuffer(*a2);
}

double sgffr_generateSingleSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_generateSingleSampleBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sgffr_generateSingleSampleBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void SampleGeneratorMakeDataReadyInfoCreateForScheduledIORead_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sgffr_createBlockBufferWithBufferReference_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void SampleGeneratorReadCompletionInfoCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL sgffr_markSampleBufferReady_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);
  return v0 == 0;
}

void figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

BOOL figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v4;
  return v4 == 0;
}

void figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_Commit_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_Commit_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_Commit_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_Cancel_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, v1, vars0);
  __break(1u);
}

void figSampleGeneratorBatch_GetState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figSampleGeneratorBatch_GetState_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void *downloadConfig_copyAuxConfigsWithOnlyQualifiers(uint64_t a1, uint64_t a2, __CFString *a3)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  if (a3 == @"kFigEnvironmentalCondition_DefaultKey")
  {
    v5 = 40;
  }

  else
  {
    if (a3 != @"kFigEnvironmentalCondition_OnExpensiveNetworkKey")
    {
      return 0;
    }

    v5 = 48;
  }

  v6 = *(a1 + v5);
  if (!v6 || CFArrayGetCount(*(a1 + v5)) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
    v9 = downloadContentConfig_createCopyWithOnlyQualifiers(ValueAtIndex, &cf);
    if (v9)
    {
      break;
    }

    v10 = cf;
    if (cf)
    {
      v11 = FigStreamingAssetDownloadConfigAddAuxConfig(a2, cf, a3);
      if (v11)
      {
        v12 = v11;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, cf, v16);
        goto LABEL_19;
      }

      CFRelease(v10);
      cf = 0;
    }

    if (++v7 >= CFArrayGetCount(v6))
    {
      return 0;
    }
  }

  v12 = v9;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, cf, v16);
  v10 = cf;
  if (!cf)
  {
    return v12;
  }

LABEL_19:
  CFRelease(v10);
  return v12;
}

xpc_object_t FigStreamingAssetDownloadConfigCopySerializedRepresentation(uint64_t a1)
{
  v18 = 0;
  empty = xpc_dictionary_create_empty();
  if (*(a1 + 120))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      OUTLINED_FUNCTION_4_30(v3, "InterstitialMediaSelectionCriteria");
    }
  }

  FigXPCRelease();
  v4 = *(a1 + 24);
  if (v4)
  {
    v13 = downloadContentConfig_copySerializedRepresentation(v4, &v18);
    if (v13)
    {
      v14 = v13;
      OUTLINED_FUNCTION_4_30(v13, "DefaultPrimaryConfig");
      xpc_release(v14);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v15 = downloadContentConfig_copySerializedRepresentation(v5, &v18);
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_4_30(v15, "OnExpensiveNetworkPrimaryConfig");
      xpc_release(v16);
    }
  }

  FigXPCRelease();
  *&v17[0] = 0;
  v6 = downloadConfig_serializeAuxContentConfigsGuts(*(a1 + 40), &v18, v17);
  v7 = *&v17[0];
  if (v6)
  {
    FigXPCRelease();
  }

  else
  {
    if (*&v17[0])
    {
      OUTLINED_FUNCTION_4_30(v6, "DefaultAuxConfigs");
      *&v17[0] = 0;
      xpc_release(v7);
    }

    v8 = downloadConfig_serializeAuxContentConfigsGuts(*(a1 + 48), &v18, v17);
    v9 = v8;
    v10 = *&v17[0];
    if (v8 || !*&v17[0])
    {
      FigXPCRelease();
      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_30(v8, "OnExpensiveNetworkAuxConfigs");
      xpc_release(v10);
      FigXPCRelease();
    }

    xpc_dictionary_set_BOOL(empty, "OptimizesAuxiliaryContentConfigurations", *(a1 + 16) != 0);
    xpc_dictionary_set_BOOL(empty, "DownloadsInterstitialAssets", *(a1 + 17) != 0);
    FigXPCMessageSetCFString();
    FigXPCMessageSetCFData();
    v11 = *(a1 + 88);
    v17[0] = *(a1 + 72);
    v17[1] = v11;
    v17[2] = *(a1 + 104);
    FigXPCMessageSetCMTimeRange();
  }

LABEL_14:
  if (v18)
  {
    CFRelease(v18);
  }

  return empty;
}

uint64_t FigStreamingAssetDownloadConfigCreateWithSerializedConfig(uint64_t a1, void *a2, void *a3)
{
  cf = 0;
  v17 = 0;
  v5 = FigStreamingAssetDownloadConfigCreate(a1, &v17);
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = v17;
  if (xpc_dictionary_get_value(a2, "InterstitialMediaSelectionCriteria"))
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    if (v7)
    {
      v8 = v7;
      v9 = *(v6 + 15);
      if (v9)
      {
        CFRelease(v9);
        *(v6 + 15) = 0;
      }

      *(v6 + 15) = FigCFDictionaryCreateMutableCopy();
      CFRelease(v8);
    }
  }

  value = xpc_dictionary_get_value(a2, "DefaultPrimaryConfig");
  if (value)
  {
    *(v6 + 3) = downloadContentConfig_deserializeAndCopyContentConfig(value, &cf);
  }

  v11 = xpc_dictionary_get_value(a2, "OnExpensiveNetworkPrimaryConfig");
  if (v11)
  {
    *(v6 + 4) = downloadContentConfig_deserializeAndCopyContentConfig(v11, &cf);
  }

  if ((v12 = xpc_dictionary_get_value(a2, "DefaultAuxConfigs")) != 0 && (v5 = downloadConfig_deserializeAuxContentConfigsGuts(v12, &cf, v6 + 5), v5) || (v13 = xpc_dictionary_get_value(a2, "OnExpensiveNetworkAuxConfigs")) != 0 && (v5 = downloadConfig_deserializeAuxContentConfigsGuts(v13, &cf, v6 + 6), v5))
  {
LABEL_21:
    v14 = v5;
  }

  else
  {
    *(v6 + 16) = xpc_dictionary_get_BOOL(a2, "OptimizesAuxiliaryContentConfigurations");
    *(v6 + 17) = xpc_dictionary_get_BOOL(a2, "DownloadsInterstitialAssets");
    FigXPCMessageCopyCFString();
    FigXPCMessageCopyCFData();
    FigXPCMessageGetCMTimeRange();
    v14 = 0;
    *a3 = v6;
    v17 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v14;
}

CFMutableStringRef dwContentConf_copyDesc(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v4 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v4, v5, v6);
    v7 = CFCopyDescription(*(a1 + 24));
    if (v7)
    {
      v8 = v7;
      v9 = FigCFStringCopyWithIndent();
      if (v9)
      {
        v10 = v9;
        v46 = v9;
        v11 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v11, v12, v13, v46);
        CFRelease(v10);
      }

      CFRelease(v8);
    }

    v14 = *(a1 + 16);
    if (v14)
    {
      Count = CFArrayGetCount(v14);
      v16 = objc_autoreleasePoolPush();
      if (Count >= 1)
      {
        v51 = v16;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = CFCopyDescription([ValueAtIndex _predicate]);
          }

          else
          {
            v19 = CFStringCreateWithCString(v2, [objc_msgSend(ValueAtIndex "description")], 0x8000100u);
          }

          v20 = v19;
          if (v19)
          {
            v21 = FigCFStringCopyWithIndent();
            if (v21)
            {
              v22 = v21;
              v47 = v21;
              v23 = OUTLINED_FUNCTION_312();
              CFStringAppendFormat(v23, v24, @"\n%@", v47);
              CFRelease(v22);
            }

            CFRelease(v20);
          }
        }

        v16 = v51;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
    }

    objc_autoreleasePoolPop(v16);
    v25 = *(a1 + 32);
    if (v25)
    {
      v26 = CFArrayGetCount(v25);
      if (v26 >= 1)
      {
        v27 = v26;
        for (j = 0; j != v27; ++j)
        {
          v29 = CFArrayGetValueAtIndex(*(a1 + 32), j);
          v30 = FigMediaSelectionArrayCopyDescription(v2, v29);
          if (v30)
          {
            v31 = v30;
            v32 = FigCFStringCopyWithIndent();
            if (v32)
            {
              v33 = v32;
              v48 = v32;
              v34 = OUTLINED_FUNCTION_312();
              CFStringAppendFormat(v34, v35, @"\n%@", v48);
              CFRelease(v33);
            }

            CFRelease(v31);
          }
        }
      }
    }

    if (*(a1 + 40))
    {
      v36 = FigCFCopyCompactDescription();
      if (v36)
      {
        v37 = v36;
        v49 = v36;
        v38 = OUTLINED_FUNCTION_312();
        CFStringAppendFormat(v38, v39, v40, v49);
        CFRelease(v37);
      }
    }

    v41 = OUTLINED_FUNCTION_312();
    CFStringAppendFormat(v41, v42, v43);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v50, v52);
  }

  return Mutable;
}

void *downloadContentConfig_createCopyWithOnlyQualifiers(void *a1, void *a2)
{
  v2 = a1;
  v12 = 0;
  *a2 = 0;
  if (a1)
  {
    if (a1[2])
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v5 = FigStreamingAssetDownloadContentConfigCreateCopy(AllocatorForMedia, v2, &v12);
      if (v5)
      {
        v2 = v5;
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
      }

      else
      {
        v6 = v12;
        v7 = v12[3];
        if (v7)
        {
          CFRelease(v7);
          v6[3] = 0;
        }

        v8 = v6[4];
        if (v8)
        {
          CFRelease(v8);
          v6[4] = 0;
        }

        v9 = v6[5];
        if (v9)
        {
          CFRelease(v9);
          v6[5] = 0;
        }

        v2 = 0;
        *a2 = v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

xpc_object_t downloadContentConfig_copySerializedRepresentation(uint64_t a1, const char *a2)
{
  v26[17] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  value = 0;
  empty = xpc_dictionary_create_empty();
  if (!empty)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a2, v23, v24);
    goto LABEL_19;
  }

  v5 = xpc_array_create_empty();
  v6 = *(a1 + 16);
  v10 = OUTLINED_FUNCTION_5_26(v5, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(8 * i);
        v26[0] = 0;
        v15 = [objc_opt_class() conformsToProtocol:&unk_1F0B70810];
        if (v15)
        {
          v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v26];
          if (v15)
          {
            v19 = _CFXPCCreateXPCObjectFromCFObject();
            xpc_array_append_value(v5, v19);
            xpc_release(v19);
          }
        }
      }

      v11 = OUTLINED_FUNCTION_5_26(v15, v16, v17, v18);
    }

    while (v11);
  }

  if (xpc_array_get_count(v5))
  {
    xpc_dictionary_set_value(empty, "SerializedQualifiersKey", v5);
  }

  v20 = *(a1 + 24);
  if (!v20)
  {
    goto LABEL_18;
  }

  if (!FigAlternateCopyAsXPCObjectWithContext(v20, a2, &value))
  {
    if (value)
    {
      xpc_dictionary_set_value(empty, "SerializedAlternateKey", value);
      xpc_release(value);
    }

LABEL_18:
    FigXPCMessageSetCFArray();
  }

LABEL_19:
  FigXPCRelease();
  objc_autoreleasePoolPop(v3);
  return empty;
}

uint64_t downloadContentConfig_deserializeAndCopyContentConfig(void *a1, uint64_t a2)
{
  v25 = a2;
  v32[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = CFGetAllocator(0);
  if (!FigStreamingAssetDownloadContentConfigCreate(v4, &v28))
  {
    v5 = [MEMORY[0x1E695DF70] array];
    if (v5)
    {
      v6 = v5;
      v27 = a1;
      value = xpc_dictionary_get_value(a1, "SerializedQualifiersKey");
      count = xpc_array_get_count(value);
      if (count >= 1)
      {
        v9 = count;
        for (i = 0; v9 != i; ++i)
        {
          xpc_array_get_value(value, i);
          v30 = 0;
          v31 = 0;
          v32[0] = 0;
          v11 = _CFXPCCreateCFObjectFromXPCObject();
          if (!v11)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_3();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v27);
            continue;
          }

          v12 = v11;
          v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v30];
          if (v13)
          {
            v14 = v13;
            v29 = 0;
            v15 = [v13 _predicate];
            if (v15 && (v16 = v15, (v17 = [[FigAlternatePredicateValidator alloc] initWithPredicate:v15]) != 0))
            {
              v18 = v17;
              v19 = [(FigAlternatePredicateValidator *)v17 validateWithError:&v29];

              if (v19)
              {
                [v16 allowEvaluation];
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }

          else
          {
            v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v31];
            if (!v14)
            {
              v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:v32];

              if (!v14)
              {
                continue;
              }

              goto LABEL_13;
            }
          }

LABEL_13:
          [v6 addObject:v14];
        }
      }

      if ([v6 count])
      {
        v20 = CFRetain(v6);
        v21 = v28;
        *(v28 + 16) = v20;
      }

      else
      {
        v21 = v28;
      }

      v22 = xpc_dictionary_get_value(v27, "SerializedAlternateKey");
      if (v22)
      {
        FigAlternateCreateWithXPCObject(v22, v25, (v21 + 24));
      }

      FigXPCMessageCopyCFArray();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, v26);
    }
  }

  objc_autoreleasePoolPop(v3);
  return v28;
}

CFMutableStringRef dwConf_copyDesc(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v4 = CFCopyDescription(*(a1 + 24));
    if (v4)
    {
      v5 = v4;
      v34 = v4;
      v6 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v6, v7, v8, v34);
      CFRelease(v5);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        v13 = Count;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v12);
          v15 = CFCopyDescription(ValueAtIndex);
          if (v15)
          {
            v16 = v15;
            v38 = v15;
            v17 = OUTLINED_FUNCTION_312();
            CFStringAppendFormat(v17, v18, @"\nAux %d/%d:\n%@", v12, v13, v38);
            CFRelease(v16);
          }

          ++v12;
        }

        while (v11 != v12);
      }
    }

    if (*(a1 + 120) && (v19 = FigCFCopyCompactDescription()) != 0)
    {
      v20 = v19;
      v35 = v19;
      v21 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v21, v22, v23, v35);
      CFRelease(v20);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v24, v25, v26);
    }

    if ((*(a1 + 84) & 1) != 0 && (*(a1 + 108) & 1) != 0 && !*(a1 + 112) && (*(a1 + 96) & 0x8000000000000000) == 0)
    {
      v28 = *(a1 + 88);
      *&range.start.value = *(a1 + 72);
      *&range.start.epoch = v28;
      *&range.duration.timescale = *(a1 + 104);
      v29 = CMTimeRangeCopyDescription(v2, &range);
      v30 = OUTLINED_FUNCTION_312();
      CFStringAppendFormat(v30, v31, v32, v29);
      if (v29)
      {
        CFRelease(v29);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v36, v37);
  }

  return Mutable;
}

void FigStreamingAssetDownloadContentConfigSetMediaSelectionCriteria_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadContentConfigCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadContentConfigCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadConfigAddAuxConfig_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadConfigAddAuxConfig_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigStreamingAssetDownloadConfigCopyContentConfigsWithOnlyQualifiers_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double downloadConfig_copyPrimaryWithOnlyQualifiers_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double downloadConfig_copyPrimaryWithOnlyQualifiers_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigStreamingAssetDownloadConfigSetMediaSelectionCriteriaForInterstitials_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForPrimary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadConfigCopyEnvironmentalConditionsForAux_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadConfigCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigStreamingAssetDownloadConfigCreateCopy_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void downloadConfig_serializeAuxContentConfigsGuts_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void downloadConfig_deserializeAuxContentConfigsGuts_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  CFRelease(a1);
}

double via_cleanupVImageAdaptor(uint64_t a1)
{
  if (a1)
  {
    via_releaseVImageBuffer(a1);
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void via_releaseVImageBuffer(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    if (!*a1)
    {
      return;
    }

    free(*a1);
    goto LABEL_15;
  }

  if (!*(a1 + 40))
  {
    if (CVPixelBufferLockBaseAddress(v3, 0))
    {
      return;
    }

    *(a1 + 40) = 1;
    v3 = *(a1 + 32);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v3);
  if (!CVPixelBufferUnlockBaseAddress(*(a1 + 32), 0))
  {
    *(a1 + 40) = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 32) = 0;
    }

    if (BaseAddress != *a1)
    {
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951795, "<<<< vImageVideoCompositor >>>>", 224, v1);
      return;
    }

LABEL_15:
    *a1 = 0;
  }
}

uint64_t vivc_RenderFrame(const void *a1, uint64_t a2, int *a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9, uint64_t a10)
{
  v13 = a2;
  v310 = *MEMORY[0x1E69E9840];
  v253 = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v290.width = 0.0;
  v290.height = 0.0;
  v289 = 0;
  v15 = MEMORY[0x1E695EFD0];
  v16 = *MEMORY[0x1E695EFD0];
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  v285 = *MEMORY[0x1E695EFD0];
  v286 = v17;
  v250 = *(MEMORY[0x1E695EFD0] + 32);
  v287 = v250;
  cf = 0;
  if (!DerivedStorage || !*(DerivedStorage + 24))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_261;
  }

  v261 = v17;
  v264 = v16;
  v236 = DerivedStorage;
  RenderDimensions = FigVideoCompositorPropertiesGetRenderDimensions(*DerivedStorage, &v290);
  if (RenderDimensions)
  {
    goto LABEL_261;
  }

  *&v309.a = *a9;
  v309.c = *(a9 + 16);
  RenderDimensions = FigVCLayerDefinitionCreateLayerDefinitionArray(v13, a3, a4, a8, &v309, &v289, v290.width, v290.height);
  if (RenderDimensions)
  {
    goto LABEL_261;
  }

  RenderDimensions = FigVideoCompositorCopyDestinationPixelBufferWithoutComposingIfPossible(*v236, v289, &cf);
  if (RenderDimensions)
  {
    goto LABEL_261;
  }

  if (cf)
  {
    goto LABEL_7;
  }

  v21 = v289;
  v22 = CMBaseObjectGetDerivedStorage();
  pixelBufferOut.a = 0.0;
  *&v309.a = *"024x02fx024p02fpv024f024ARGB ";
  *&t1.a = *"v024f024ARGB ";
  v23 = CMBaseObjectGetDerivedStorage();
  if (FigVideoCompositorGetBestBitDepthForCompositorPropertiesAndLayerDefinitions(*v23, v21) <= 8)
  {
    p_t1 = &t1;
  }

  else
  {
    p_t1 = &v309;
  }

  if (!v21)
  {
    goto LABEL_262;
  }

  if (CFArrayGetCount(v21) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v21, 0);
    if (ValueAtIndex)
    {
      SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
      if (SourcePixelBuffer)
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(SourcePixelBuffer);
        v28 = 0;
        while (*(&p_t1->a + v28) != PixelFormatType)
        {
          v28 += 4;
          if (v28 == 16)
          {
            goto LABEL_25;
          }
        }

        *(&p_t1->a + v28) = LODWORD(p_t1->a);
        LODWORD(p_t1->a) = PixelFormatType;
        goto LABEL_25;
      }
    }

LABEL_262:
    Mutable = 0;
    goto LABEL_28;
  }

LABEL_25:
  v29 = CFGetAllocator(v253);
  Mutable = CFArrayCreateMutable(v29, 4, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    for (i = 0; i != 16; i += 4)
    {
      FigCFArrayAppendInt32();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, v220, v223);
  }

LABEL_28:
  v32 = (v22 + 8);
  v33 = MEMORY[0x1E695E480];
  if (*(v22 + 8))
  {
    v34 = FigCFEqual();
    v35 = *(v22 + 8);
    if (v34)
    {
      if (v35)
      {
        goto LABEL_39;
      }
    }

    else if (v35)
    {
      CFRelease(v35);
      *v32 = 0;
    }
  }

  DestinationPixelBufferPool = FigVideoCompositorCreateDestinationPixelBufferPool(*v22, @"vimage-vc-output", Mutable, (v22 + 8), 0);
  if (DestinationPixelBufferPool)
  {
    PixelBuffer = DestinationPixelBufferPool;
    goto LABEL_43;
  }

  v37 = *(v22 + 16);
  *(v22 + 16) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  if (v37)
  {
    CFRelease(v37);
  }

LABEL_39:
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*v33, *v32, &pixelBufferOut);
  a = pixelBufferOut.a;
  if (PixelBuffer || (PixelBuffer = FigVideoCompositorSetDestinationPixelBufferColorProperties(*&pixelBufferOut.a, *v22, v21), a = pixelBufferOut.a, PixelBuffer) || (PixelBuffer = FigVideoCompositorSetDestinationPixelBufferGeometricProperties(*&pixelBufferOut.a, *v22), a = pixelBufferOut.a, PixelBuffer))
  {
    if (a != 0.0)
    {
      CFRelease(*&a);
    }
  }

  else
  {
    cf = *&pixelBufferOut.a;
    pixelBufferOut.a = 0.0;
  }

LABEL_43:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (PixelBuffer)
  {
    goto LABEL_8;
  }

  v306 = xmmword_196E75ED0;
  FigVideoCompositionInstructionGetBackgroundColorARGB(a8, &v306);
  if (RenderDimensions || (RenderDimensions = FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(*v236, 0, &v285, 0), RenderDimensions))
  {
LABEL_261:
    PixelBuffer = RenderDimensions;
    goto LABEL_8;
  }

  theArray = v289;
  v39 = cf;
  *v275 = v285;
  *&v275[16] = v286;
  *&v275[32] = v287;
  memset(&dest, 0, sizeof(dest));
  v40 = CMBaseObjectGetDerivedStorage();
  v41 = CVPixelBufferGetPixelFormatType(v39);
  allocator = *v33;
  v42 = CVPixelFormatDescriptionCreateWithPixelFormatType(*v33, v41);
  if (!v42)
  {
LABEL_52:
    v45 = 8;
    v46 = 1;
    goto LABEL_54;
  }

  v43 = v42;
  if (!CFDictionaryGetValue(v42, *MEMORY[0x1E6966218]))
  {
    CFRelease(v43);
    goto LABEL_52;
  }

  UInt64 = FigCFNumberGetUInt64();
  CFRelease(v43);
  if (UInt64 <= 8)
  {
    goto LABEL_52;
  }

  v46 = 0;
  v45 = 16;
LABEL_54:
  if (*(v40 + 112) != v45)
  {
    via_releaseVImageBuffer(v40 + 56);
    *(v40 + 112) = v45;
  }

  if (*(v40 + 176) != v45)
  {
    via_releaseVImageBuffer(v40 + 120);
    *(v40 + 176) = v45;
  }

  v294 = v45;
  if (v46)
  {
    v47 = -1;
  }

  else
  {
    v47 = 0;
  }

  v295 = vbslq_s8(vdupq_n_s32(v47), xmmword_196E75EC0, xmmword_196E75EB0);
  v48 = MEMORY[0x1E6965F98];
  v49 = MEMORY[0x1E6965FD0];
  v271 = v40;
  buffer = v39;
  if (!v39)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, v220, v223);
    PixelBuffer = v217;
    goto LABEL_102;
  }

  via_releaseVImageBuffer(v40 + 120);
  v50 = CVPixelBufferGetPixelFormatType(v39);
  v51 = v39;
  v52 = *v48;
  v53 = CVBufferCopyAttachment(v39, *v48, 0);
  Width = CVPixelBufferGetWidth(v39);
  Height = CVPixelBufferGetHeight(v51);
  v61 = Height;
  if (*(v40 + 176) != 8)
  {
    goto LABEL_67;
  }

  Height = FigCFEqual();
  if (!Height)
  {
    Height = FigCFEqual();
    if (!Height)
    {
      if (v50 != 1111970369 && v50 != 32)
      {
        goto LABEL_67;
      }

LABEL_97:
      PixelBuffer = MEMORY[0x19A8D6C10](v40 + 120, v61, Width, (4 * *(v40 + 176)), 0);
      if (PixelBuffer)
      {
        goto LABEL_100;
      }

      goto LABEL_98;
    }
  }

  if (v50 == 32 || v50 == 846624121 || v50 == 875704422 || v50 == 875704438 || v50 == 1111970369 || v50 == 1714696752 || v50 == 2033463856)
  {
    goto LABEL_97;
  }

LABEL_67:
  v62 = *MEMORY[0x1E6965F30];
  v309.a = *MEMORY[0x1E6965D88];
  v309.b = v62;
  *&v309.c = v52;
  if (*(v40 + 176) == 16)
  {
    v63 = 1815491698;
  }

  else
  {
    v63 = 32;
  }

  v64 = OUTLINED_FUNCTION_5_27(Height, v56, v57, v63, v58, v40 + 152, v59, v60, v218, v220, v223, v227, v231, v234, v236, v238, v241, v244, allocator);
  v68 = CVPixelBufferCreate(v64, v65, v61, v66, 0, v67);
  if (v68)
  {
    goto LABEL_263;
  }

  for (j = 0; j != 24; j += 8)
  {
    v70 = *(&v309.a + j);
    v71 = CVBufferCopyAttachment(buffer, v70, 0);
    if (v71)
    {
      v72 = v71;
      CVBufferSetAttachment(*(v40 + 152), v70, v71, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v72);
    }
  }

  v68 = CVPixelBufferLockBaseAddress(*(v40 + 152), 0);
  if (v68)
  {
LABEL_263:
    PixelBuffer = v68;
    if (!v53)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  *(v40 + 160) = 1;
  BaseAddress = CVPixelBufferGetBaseAddress(*(v40 + 152));
  *(v40 + 128) = v61;
  *(v40 + 136) = Width;
  *(v40 + 120) = BaseAddress;
  *(v40 + 144) = CVPixelBufferGetBytesPerRow(*(v40 + 152));
LABEL_98:
  vifa_vImageFill(&v294, (v40 + 120), &v306);
  if (v68)
  {
    goto LABEL_263;
  }

  PixelBuffer = 0;
  v80 = *(v40 + 136);
  *&dest.data = *(v40 + 120);
  *&dest.width = v80;
LABEL_100:
  if (v53)
  {
LABEL_101:
    CFRelease(v53);
  }

LABEL_102:
  if (PixelBuffer)
  {
    via_releaseVImageBuffer(v40 + 120);
LABEL_220:
    via_releaseVImageBuffer(v271 + 120);
    goto LABEL_8;
  }

  Count = CFArrayGetCount(theArray);
  key = *v48;
  v242 = *v49;
  v239 = *MEMORY[0x1E6965FC8];
  v232 = *MEMORY[0x1E6965D00];
  v221 = *MEMORY[0x1E6965D30];
  v224 = *MEMORY[0x1E695E4C0];
  v228 = *MEMORY[0x1E6983DF0];
  v82 = *(v15 + 32);
  v83 = *(v15 + 40);
  while (1)
  {
    v84 = Count < 1;
    v85 = Count - 1;
    if (v84)
    {
      break;
    }

    v86 = CFArrayGetValueAtIndex(theArray, v85);
    v291 = *v275;
    v298 = 0u;
    v299 = 0u;
    memset(&srcTop, 0, sizeof(srcTop));
    v87 = CMBaseObjectGetDerivedStorage();
    v88 = FigVCLayerDefinitionGetSourcePixelBuffer(v86);
    v259 = v85;
    if (!v88)
    {
      PixelBuffer = 4294954792;
      goto LABEL_217;
    }

    v89 = v88;
    memset(&v309, 0, 40);
    v90 = CVPixelBufferGetPixelFormatType(v88);
    v269 = CVBufferCopyAttachment(v89, key, 0);
    via_releaseVImageBuffer(v87 + 56);
    v257 = v86;
    if (v91)
    {
      goto LABEL_212;
    }

    if (*(v87 + 112) != 8)
    {
      goto LABEL_112;
    }

    if (FigCFEqual() || FigCFEqual())
    {
      if (v90 != 32 && v90 != 846624121 && v90 != 875704422 && v90 != 875704438 && v90 != 1111970369 && v90 != 1714696752 && v90 != 2033463856)
      {
LABEL_112:
        v92 = CVPixelBufferGetWidth(v89);
        v93 = CVPixelBufferGetHeight(v89);
        if (*(v87 + 112) == 16)
        {
          v99 = 1815491698;
        }

        else
        {
          v99 = 32;
        }

        v100 = v93;
        v101 = OUTLINED_FUNCTION_5_27(v93, v94, v95, v99, v96, v87 + 88, v97, v98, v218, v221, v224, v228, v232, v234, v236, v239, v242, v244, allocator);
        v91 = CVPixelBufferCreate(v101, v102, v100, v103, 0, v104);
        if (!v91)
        {
          v91 = CVPixelBufferLockBaseAddress(*(v87 + 88), 0);
          if (!v91)
          {
            *(v87 + 96) = 1;
            *(v87 + 64) = v100;
            *(v87 + 72) = v92;
            *(v87 + 56) = CVPixelBufferGetBaseAddress(*(v87 + 88));
            BytesPerRow = CVPixelBufferGetBytesPerRow(*(v87 + 88));
            v113 = *(v87 + 104);
            *(v87 + 80) = BytesPerRow;
            if (v113)
            {
              goto LABEL_120;
            }

            v114 = OUTLINED_FUNCTION_5_27(BytesPerRow, v106, v107, v108, v109, v110, v111, v112, v218, v221, v224, v228, v232, v234, v236, v239, v242, v244, allocator);
            v91 = VTPixelTransferSessionCreate(v114, v115);
            if (!v91)
            {
              VTSessionSetProperty(*(v87 + 104), v228, v224);
LABEL_120:
              v91 = CVPixelBufferUnlockBaseAddress(*(v87 + 88), 0);
              if (!v91)
              {
                *(v87 + 96) = 0;
                v91 = VTPixelTransferSessionTransferImage(*(v87 + 104), v89, *(v87 + 88));
                if (!v91)
                {
                  v91 = CVPixelBufferLockBaseAddress(*(v87 + 88), 0);
                  if (!v91)
                  {
                    ColorSpaceFromAttachments = 0;
                    v117 = 0;
                    *(v87 + 96) = 1;
                    v118 = 0uLL;
LABEL_173:
                    PixelBuffer = 0;
                    v136 = *(v87 + 56);
                    v137 = *(v87 + 64);
                    v139 = *(v87 + 72);
                    v138 = *(v87 + 80);
                    if (!v117)
                    {
                      goto LABEL_175;
                    }

LABEL_174:
                    MEMORY[0x19A8D6C40](v117, 0);
                    v118 = 0uLL;
                    goto LABEL_175;
                  }
                }
              }
            }
          }
        }

LABEL_212:
        PixelBuffer = v91;
        v117 = 0;
        ColorSpaceFromAttachments = 0;
        goto LABEL_213;
      }
    }

    else if (v90 != 1111970369 && v90 != 32)
    {
      goto LABEL_112;
    }

    HIDWORD(v244) = FigVideoCompositorIsPixelBufferOpaque(v89);
    v125 = CVBufferCopyAttachments(v89, kCVAttachmentMode_ShouldPropagate);
    if (v125)
    {
      v126 = v125;
      ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v125);
      CFRelease(v126);
    }

    else
    {
      ColorSpaceFromAttachments = 0;
    }

    v127 = CVPixelBufferGetPixelFormatType(v89);
    v128 = CVBufferCopyAttachment(v89, key, 0);
    v129 = CVBufferCopyAttachment(v89, v232, 0);
    if (FigCFEqual())
    {
      v132 = MEMORY[0x1E6958830];
      goto LABEL_158;
    }

    if (FigCFEqual())
    {
      v132 = MEMORY[0x1E6958838];
LABEL_158:
      v131 = *v132;
      if (!v129)
      {
LABEL_159:
        v129 = CFRetain(v221);
      }

LABEL_160:
      v117 = MEMORY[0x19A8D6C30](v127, v131, v129, ColorSpaceFromAttachments, 0);
      if (!v128)
      {
        goto LABEL_162;
      }

LABEL_161:
      CFRelease(v128);
      goto LABEL_162;
    }

    if (v127 == 32 || v127 == 1111970369)
    {
      v131 = 0;
      if (!v129)
      {
        goto LABEL_159;
      }

      goto LABEL_160;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, v221, v224);
    v117 = 0;
    if (v128)
    {
      goto LABEL_161;
    }

LABEL_162:
    if (v129)
    {
      CFRelease(v129);
    }

    v133 = *(v87 + 112);
    if (HIDWORD(v244))
    {
      v134 = 6;
    }

    else
    {
      v134 = 4;
    }

    if (HIDWORD(v244))
    {
      v135 = 5;
    }

    else
    {
      v135 = 3;
    }

    *(&v309.c + 4) = 0.0;
    if (v133 != 8)
    {
      v134 = v135;
    }

    HIDWORD(v309.d) = 0;
    LODWORD(v309.a) = v133;
    HIDWORD(v309.a) = 4 * v133;
    *&v309.b = ColorSpaceFromAttachments;
    LODWORD(v309.c) = v134;
    v309.tx = 0.0;
    PixelBuffer = MEMORY[0x19A8D6C20](v87 + 56, &v309, v89, v117, 0, 0);
    v118 = 0uLL;
    if (!PixelBuffer)
    {
      goto LABEL_173;
    }

LABEL_213:
    via_releaseVImageBuffer(v87 + 56);
    v118 = 0uLL;
    v136 = 0.0;
    v137 = 0;
    v139 = 0.0;
    v138 = 0.0;
    if (v117)
    {
      goto LABEL_174;
    }

LABEL_175:
    if (ColorSpaceFromAttachments)
    {
      CFRelease(ColorSpaceFromAttachments);
      v118 = 0uLL;
    }

    v140 = v257;
    if (v269)
    {
      CFRelease(v269);
      v118 = 0uLL;
    }

    if (PixelBuffer)
    {
      goto LABEL_217;
    }

    v141 = *(v87 + 112);
    *&t1.a = v118;
    *&t1.c = v118;
    CroppedSourceCleanApertureRect = FigVCLayerDefinitionGetCroppedSourceCleanApertureRect(v257, &t1);
    if (CroppedSourceCleanApertureRect || (pixelBufferOut.a = v136, *&pixelBufferOut.b = t1.b, pixelBufferOut.c = v139, pixelBufferOut.d = v138, v304.data = (*&v136 + *&v138 * t1.b), v304.height = t1.d, v304.width = t1.a, *&v304.rowBytes = v138, v301.data = v304.data + 4 * v141 / 8 * (t1.a + t1.c), v301.height = t1.d, v301.width = (*&v139 - (t1.a + t1.c)), *&v301.rowBytes = v138, v300.data = (*&v136 + *&v138 * (t1.b + t1.d)), v300.height = (v137 - (t1.b + t1.d)), *&v300.width = v139, *&v300.rowBytes = v138, *&v307.a = 0uLL, vifa_vImageFill(&v294, &pixelBufferOut, &v307), CroppedSourceCleanApertureRect) || (vifa_vImageFill(&v294, &v304, &v307), vifa_vImageFill(&v294, &v301, &v307), vifa_vImageFill(&v294, &v300, &v307), *&v298 = v136, *(&v298 + 1) = v137, *&v299 = v139, *(&v299 + 1) = v138, CroppedSourceCleanApertureRect) || (*&v307.a = v264, *&v307.c = v261, *&v307.tx = v250, FigVCLayerDefinitionGetAffineTransform(v257, &v307), CroppedSourceCleanApertureRect))
    {
      PixelBuffer = CroppedSourceCleanApertureRect;
LABEL_217:
      Count = v259;
      goto LABEL_206;
    }

    t1 = v307;
    pixelBufferOut = v291;
    CGAffineTransformConcat(&v309, &t1, &pixelBufferOut);
    v307 = v309;
    v143 = FigVCLayerDefinitionGetSourcePixelBuffer(v257);
    v144 = CVPixelBufferGetHeight(v143);
    v145 = dest.height;
    v146 = dest.height;
    memset(&v309, 0, sizeof(v309));
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    CGAffineTransformMakeTranslation(&pixelBufferOut, 0.0, v144);
    CGAffineTransformConcat(&v309, &t1, &pixelBufferOut);
    memset(&t1, 0, sizeof(t1));
    pixelBufferOut = v309;
    CGAffineTransformInvert(&t1, &pixelBufferOut);
    memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
    CGAffineTransformMakeTranslation(&pixelBufferOut, 0.0, v146 - v144);
    *&v301.data = v264;
    *&v301.width = v261;
    v302 = v82;
    v303 = v83;
    *&v300.data = *&v309.a;
    *&v300.width = *&v309.c;
    OUTLINED_FUNCTION_2_39(*&v309.tx);
    OUTLINED_FUNCTION_3_28();
    v300 = *&v307.a;
    OUTLINED_FUNCTION_2_39(*&v307.tx);
    OUTLINED_FUNCTION_3_28();
    *&v300.data = *&t1.a;
    *&v300.width = *&t1.c;
    OUTLINED_FUNCTION_2_39(*&t1.tx);
    OUTLINED_FUNCTION_3_28();
    *&v300.data = *&pixelBufferOut.a;
    *&v300.width = *&pixelBufferOut.c;
    OUTLINED_FUNCTION_2_39(*&pixelBufferOut.tx);
    v147 = MEMORY[0x19A8D6C10](&srcTop, v145, dest.width, (4 * v294), 0);
    PixelBuffer = v147;
    Count = v259;
    if (!v147)
    {
      v309.a = 0.0;
      v309.b = 0.0;
      v155 = OUTLINED_FUNCTION_4_31(v147, v148, v149, v150, v151, v152, v153, v154, v218, v221, v224, v228, v232, v234, v236, v239, v242, v244, allocator, theArray, v250, *(&v250 + 1), v253, key, v257, v259, v261, *(&v261 + 1), v264, *(&v264 + 1), v267, v269, v271, buffer, *v275, *&v275[8], *&v275[16], *&v275[24], *&v275[32], *&v275[40], v282, cf, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), v288, v289, *&v290.width, *&v290.height, *&v291.a, *&v291.b, *&v291.c, *&v291.d, *&v291.tx, *&v291.ty, v292, v293, v294);
      vifa_vImageAffineWarpCG(v155, v156, v157, 0, v158, v159, 128);
      if (v160)
      {
        v167 = v160;
        if (*(v87 + 40) < v160)
        {
          free(*(v87 + 48));
          v160 = malloc_type_malloc(v167, 0x963485DFuLL);
          if (v160)
          {
            v168 = v167;
          }

          else
          {
            v168 = 0;
          }

          *(v87 + 40) = v168;
          *(v87 + 48) = v160;
        }
      }

      v169 = OUTLINED_FUNCTION_4_31(v160, v161, v162, *(v87 + 48), v163, v164, v165, v166, v219, v222, v225, v229, v233, v235, v237, v240, v243, v245, allocatora, theArraya, v251, v252, v254, keya, v258, v260, v262, v263, v265, v266, v268, v270, v272, buffera, v276, v277, v278, v279, v280, v281, v283, cf, v285, *(&v285 + 1), v286, *(&v286 + 1), v287, *(&v287 + 1), v288, v289, *&v290.width, *&v290.height, *&v291.a, *&v291.b, *&v291.c, *&v291.d, *&v291.tx, *&v291.ty, v292, v293, v294);
      vifa_vImageAffineWarpCG(v169, v170, v171, v172, v173, v174, 0);
      LODWORD(t1.a) = 1065353216;
      FigVCLayerDefinitionGetOpacity(v140, &t1);
      if (v294 == 16)
      {
        v175 = srcTop.width;
        if (srcTop.width == dest.width)
        {
          v176 = srcTop.height;
          if (srcTop.height == dest.height)
          {
            if (srcTop.height)
            {
              v177 = 0;
              v178 = (*&t1.a * 65535.0);
              rowBytes = dest.rowBytes;
              data = srcTop.data;
              v181 = srcTop.rowBytes;
              v182 = dest.data;
              do
              {
                if (v175)
                {
                  v183 = 0;
                  v184 = v182;
                  v185 = data;
                  do
                  {
                    v186 = 0;
                    v187 = (-131071 - *(v185 + 3) * v178) >> 16;
                    do
                    {
                      *&v184[v186] = v187 * *&v184[v186] / 0xFFFF + *&v185[v186] * v178 / 0xFFFF;
                      v186 += 2;
                    }

                    while (v186 != 8);
                    v185 += 8;
                    v184 += 8;
                    ++v183;
                  }

                  while (v183 != v175);
                }

                data += v181;
                v182 += rowBytes;
                ++v177;
              }

              while (v177 != v176);
            }

            PixelBuffer = 0;
            goto LABEL_206;
          }
        }

LABEL_205:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_41();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        PixelBuffer = v188;
        goto LABEL_206;
      }

      if (v294 != 8)
      {
        goto LABEL_205;
      }

      PixelBuffer = vImagePremultipliedConstAlphaBlend_ARGB8888(&srcTop, (*&t1.a * 255.0), &dest, &dest, 0);
    }

LABEL_206:
    via_releaseVImageBuffer(v87 + 56);
    if (srcTop.data)
    {
      free(srcTop.data);
    }

    if (PixelBuffer)
    {
      goto LABEL_220;
    }
  }

  v189 = buffer;
  v190 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
  if (v190)
  {
    v192 = v190;
    Copy = CFDictionaryCreateCopy(allocator, v190);
    CFRelease(v192);
  }

  else
  {
    Copy = 0;
  }

  if (buffer)
  {
    v193 = CVPixelBufferGetPixelFormatType(buffer);
    v201 = CVBufferCopyAttachment(buffer, key, 0);
    v202 = *(v271 + 152);
    if (!v202)
    {
      if (FigCFEqual())
      {
        v209 = MEMORY[0x1E6958830];
      }

      else
      {
        if (!FigCFEqual())
        {
          if (v193 != 32 && v193 != 1111970369)
          {
            v216 = buffer;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_41();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, v221, v224);
            goto LABEL_254;
          }

          v204 = 0;
LABEL_244:
          v216 = buffer;
          v210 = CVBufferCopyAttachments(buffer, kCVAttachmentMode_ShouldPropagate);
          if (v210)
          {
            v212 = v210;
            v211 = CVImageBufferCreateColorSpaceFromAttachments(v210);
            CFRelease(v212);
          }

          else
          {
            v211 = 0;
          }

          v213 = MEMORY[0x19A8D6C30](v193, v204, v221, v211, 0);
          memset(&t1, 0, 24);
          v214 = *(v271 + 176);
          if (v214 == 8)
          {
            v215 = 4;
          }

          else
          {
            v215 = 3;
          }

          LODWORD(v309.a) = *(v271 + 176);
          HIDWORD(v309.a) = 4 * v214;
          *&v309.b = v211;
          LODWORD(v309.c) = v215;
          memset(&v309.c + 4, 0, 20);
          MEMORY[0x19A8D6C00](v271 + 120, &v309, buffer, v213, &t1, 0);
          if (v213)
          {
            MEMORY[0x19A8D6C40](v213);
          }

          if (v211)
          {
            CFRelease(v211);
          }

          goto LABEL_254;
        }

        v209 = MEMORY[0x1E6958838];
      }

      v204 = *v209;
      goto LABEL_244;
    }

    if (*(v271 + 160))
    {
      v216 = buffer;
      if (CVPixelBufferUnlockBaseAddress(v202, 0))
      {
        goto LABEL_254;
      }

      *(v271 + 160) = 0;
    }

    v206 = (v271 + 168);
    v205 = *(v271 + 168);
    if (!v205)
    {
      v216 = buffer;
      v207 = OUTLINED_FUNCTION_5_27(0, v194, v195, v196, v197, v198, v199, v200, v218, v221, v224, v228, v232, v234, v236, v239, v242, v244, allocator);
      if (VTPixelTransferSessionCreate(v207, v208))
      {
        goto LABEL_254;
      }

      VTSessionSetProperty(*v206, v230, v226);
      v205 = *v206;
    }

    v216 = buffer;
    VTPixelTransferSessionTransferImage(v205, *(v271 + 152), buffer);
LABEL_254:
    v189 = v216;
    if (v201)
    {
      CFRelease(v201);
    }

    if (!Copy)
    {
LABEL_257:
      via_releaseVImageBuffer(v271 + 120);
      goto LABEL_7;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, v221, v224);
    if (!Copy)
    {
      goto LABEL_257;
    }
  }

  CVBufferSetAttachments(v189, Copy, kCVAttachmentMode_ShouldPropagate);
  via_releaseVImageBuffer(v271 + 120);
  CFRelease(Copy);
LABEL_7:
  (*(v236 + 24))(*(v236 + 32), a10, 0, cf, 0);
  PixelBuffer = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v289)
  {
    CFRelease(v289);
  }

  return PixelBuffer;
}

void FigVideoCompositorCreatevImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vivc_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vivc_SetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vivc_SetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vifa_vImageFill_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vifa_vImageFill_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vifa_vImageAffineWarpCG_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void vifa_vImageAffineWarpCG_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double metadw_transitionToTerminalState(const void *a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v6 = DerivedStorage;
    if (*(CMBaseObjectGetDerivedStorage() + 240))
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else if (*(v6 + 256) <= 2u)
    {
      if (a2)
      {
        v7 = CFRetain(a2);
      }

      else
      {
        v7 = 0;
      }

      *(v6 + 248) = v7;
      if (dword_1EAF16DD8)
      {
        OUTLINED_FUNCTION_147();
        v15 = OUTLINED_FUNCTION_126(qword_1EAF16DD0, v8, v9, v10, v11, v12, v13, v14, v34, v35, v36, *v37, v37[2], v37[3], v37[4]);
        if (os_log_type_enabled(v15, type))
        {
          v16 = v39;
        }

        else
        {
          v16 = v39 & 0xFFFFFFFE;
        }

        if (v16)
        {
          v17 = *(v6 + 152);
          if (a2)
          {
            Code = CFErrorGetCode(a2);
          }

          else
          {
            Code = 0;
          }

          v40 = 136316163;
          v41 = "metadw_transitionToTerminalState";
          v42 = 2048;
          v43 = a1;
          v44 = 2114;
          v45 = v17;
          v46 = 2113;
          v47 = a2;
          v48 = 1024;
          v49 = Code;
          LODWORD(v35) = 48;
          v34 = &v40;
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_61_5(v19, v20, v21, v22, v23, v24, v25, v26);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v6 + 256) = 4;
      metadw_cancelResourceRequestForMetadataItems(a1);
      v27 = CMBaseObjectGetDerivedStorage();
      v28 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v28)
      {
        v29 = v28;
        v30 = OUTLINED_FUNCTION_7_15();
        if (v30)
        {
          v31 = v30;
          *v30 = CFRetain(a1);
          v31[1] = v29;
          if (a2)
          {
            v32 = CFRetain(a2);
          }

          else
          {
            v32 = 0;
          }

          v31[2] = v32;
          dispatch_async_f(*(v27 + 136), v31, metadw_sendDownloadFailedCallbackOnCallbackQueue);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
          if (v33)
          {
            CFRelease(v29);
          }
        }
      }
    }
  }

  return result;
}

void metadw_invalidateOnQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    OUTLINED_FUNCTION_147();
    v11 = OUTLINED_FUNCTION_126(qword_1EAF16DD0, v4, v5, v6, v7, v8, v9, v10, v55, v56, v57, *v58, v58[2], v58[3], v58[4]);
    v1 = type;
    if (os_log_type_enabled(v11, type))
    {
      v12 = v60;
    }

    else
    {
      v12 = v60 & 0xFFFFFFFE;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_0_40();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v13, v14, v15, v16, v17, v11, type, v18);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(DerivedStorage + 240))
  {
    *(DerivedStorage + 240) = 1;
    FigRetainProxyInvalidate();
    metadw_cancelResourceRequestForMetadataItems(a1);
    v19 = *(DerivedStorage + 8);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 8) = 0;
    }

    v20 = *(DerivedStorage + 16);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 16) = 0;
    }

    v21 = *(DerivedStorage + 24);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 24) = 0;
    }

    v22 = *(DerivedStorage + 288);
    if (v22)
    {
      do
      {
        OUTLINED_FUNCTION_15_8();
        v23 = v22[2];
        if (v23)
        {
          CFRelease(v23);
        }

        v24 = v22[3];
        if (v24)
        {
          CFRelease(v24);
        }

        free(v22);
        v22 = v1;
      }

      while (v1);
    }

    v25 = *(DerivedStorage + 32);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 32) = 0;
    }

    v26 = *(DerivedStorage + 136);
    if (v26)
    {
      dispatch_release(v26);
      *(DerivedStorage + 136) = 0;
    }

    v27 = *(DerivedStorage + 168);
    if (v27)
    {
      CFRelease(v27);
      *(DerivedStorage + 168) = 0;
    }

    v28 = *(DerivedStorage + 176);
    if (v28)
    {
      CFRelease(v28);
      *(DerivedStorage + 176) = 0;
    }

    v29 = *(DerivedStorage + 184);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 184) = 0;
    }

    v30 = *(DerivedStorage + 192);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 192) = 0;
    }

    v31 = *(DerivedStorage + 200);
    if (v31)
    {
      CFRelease(v31);
      *(DerivedStorage + 200) = 0;
    }

    v32 = *(DerivedStorage + 208);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 208) = 0;
    }

    v33 = *(DerivedStorage + 224);
    if (v33)
    {
      CFRelease(v33);
      *(DerivedStorage + 224) = 0;
    }

    v34 = *(DerivedStorage + 280);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 280) = 0;
    }

    v35 = *(DerivedStorage + 320);
    if (v35)
    {
      CFRelease(v35);
      *(DerivedStorage + 320) = 0;
    }

    v36 = *(DerivedStorage + 328);
    if (v36)
    {
      CFRelease(v36);
      *(DerivedStorage + 328) = 0;
    }

    v37 = *(DerivedStorage + 264);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 264) = 0;
    }

    v38 = *(DerivedStorage + 384);
    if (v38)
    {
      CFRelease(v38);
      *(DerivedStorage + 384) = 0;
    }

    v39 = *(DerivedStorage + 392);
    if (v39)
    {
      CFRelease(v39);
      *(DerivedStorage + 392) = 0;
    }

    v40 = *(DerivedStorage + 304);
    if (v40)
    {
      do
      {
        OUTLINED_FUNCTION_15_8();
        v41 = v40[3];
        if (v41)
        {
          CFRelease(v41);
          v40[3] = 0;
        }

        v42 = v40[4];
        if (v42)
        {
          CFRelease(v42);
          v40[4] = 0;
        }

        v43 = v40[6];
        if (v43)
        {
          CFRelease(v43);
          v40[6] = 0;
        }

        v44 = v40[7];
        if (v44)
        {
          CFRelease(v44);
          v40[7] = 0;
        }

        v45 = v40[8];
        if (v45)
        {
          CFRelease(v45);
          v40[8] = 0;
        }

        v46 = v40[11];
        if (v46)
        {
          CFRelease(v46);
          v40[11] = 0;
        }

        v47 = v40[14];
        if (v47)
        {
          CFRelease(v47);
          v40[14] = 0;
        }

        v48 = v40[15];
        if (v48)
        {
          CFRelease(v48);
          v40[15] = 0;
        }

        v49 = v40[16];
        if (v49)
        {
          CFRelease(v49);
        }

        free(v40);
        v40 = v1;
      }

      while (v1);
    }

    v50 = *(DerivedStorage + 336);
    if (v50)
    {
      CFRelease(v50);
      *(DerivedStorage + 336) = 0;
    }

    v51 = *(DerivedStorage + 344);
    if (v51)
    {
      CFRelease(v51);
      *(DerivedStorage + 344) = 0;
    }

    v52 = *(DerivedStorage + 408);
    if (v52)
    {
      CFRelease(v52);
      *(DerivedStorage + 408) = 0;
    }

    v53 = *(DerivedStorage + 416);
    if (v53)
    {
      CFRelease(v53);
      *(DerivedStorage + 416) = 0;
    }

    v54 = *(DerivedStorage + 248);
    if (v54)
    {
      CFRelease(v54);
      *(DerivedStorage + 248) = 0;
    }
  }
}

void metadw_setPropertyDispatch(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    goto LABEL_28;
  }

  if (!FigCFEqual())
  {
    if (CFEqual(@"AssetDownloaderProperty_ProgressMonitor", v3))
    {
      v11 = CFGetTypeID(v2);
      if (v11 != FigStreamingAssetDownloadProgressMonitorGetTypeID())
      {
        goto LABEL_28;
      }

      v8 = DerivedStorage[33];
      DerivedStorage[33] = v2;
      if (v2)
      {
        goto LABEL_14;
      }
    }

    else if (FigCFEqual())
    {
      v12 = CFGetTypeID(v2);
      if (v12 != FigReportingAgentGetTypeID())
      {
        goto LABEL_28;
      }

      v8 = DerivedStorage[52];
      DerivedStorage[52] = v2;
      if (v2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!CFEqual(@"AssetDownloaderProperty_MetricEventTimeline", v3))
      {
        v10 = -12784;
        goto LABEL_18;
      }

      v13 = CFGetTypeID(v2);
      if (v13 != FigMetricEventTimelineGetTypeID())
      {
LABEL_28:
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_18;
      }

      v8 = DerivedStorage[51];
      DerivedStorage[51] = v2;
      if (v2)
      {
        goto LABEL_14;
      }
    }

LABEL_15:
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_17;
  }

  v5 = CFGetTypeID(v2);
  if (v5 != FigStreamingCacheGetTypeID(v5, v6))
  {
    goto LABEL_28;
  }

  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(v7 + 24);
  if (v8 == v2)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  v9 = v7;
  if (!v2 || !v8)
  {
    *(v7 + 24) = v2;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = FigStreamingCacheTransferData(*(v7 + 24), v2);
  if (!v10)
  {
    v8 = *(v9 + 24);
    *(v9 + 24) = v2;
LABEL_14:
    CFRetain(v2);
    goto LABEL_15;
  }

LABEL_18:
  *(a1 + 8) = v10;
}

void metadw_startDispatch(const void **a1)
{
  v1 = a1;
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16DD8)
  {
    LODWORD(v73) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v5))
    {
      v6 = *(DerivedStorage + 152);
      *v75 = 136315650;
      *&v75[4] = "metadw_startOnQueue";
      v76 = 2048;
      v77 = v2;
      v78 = 2114;
      v79 = v6;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v7, v8, v9, v10, v11, os_log_and_send_and_compose_flags_and_os_log_type, 0, v12, v75, 32);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v13, v14, v15, v16, v17);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 240))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, v69);
    v56 = v66;
    if (!v66)
    {
      goto LABEL_61;
    }

LABEL_59:
    metadw_transitionToTerminalStateWithOSStatus(*v1, v56);
    goto LABEL_61;
  }

  v18 = *(DerivedStorage + 256);
  if (v18 > 2 || v18 == 1)
  {
    goto LABEL_61;
  }

  *(DerivedStorage + 256) = 1;
  v20 = CMBaseObjectGetDerivedStorage();
  v71 = 0;
  *type = 0;
  if (*(v20 + 304))
  {
    v56 = 0;
    goto LABEL_50;
  }

  v21 = v20;
  v22 = *(v20 + 8);
  FigAssetGetCMBaseObject();
  v24 = v23;
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v25)
  {
    goto LABEL_49;
  }

  DoesNotExistAndAddToQueue = v25(v24, @"assetProperty_OriginalNetworkContentURL", v22, type);
  if (DoesNotExistAndAddToQueue)
  {
LABEL_65:
    v56 = DoesNotExistAndAddToQueue;
    goto LABEL_50;
  }

  v27 = *(v21 + 8);
  FigAssetGetCMBaseObject();
  v29 = v28;
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v30)
  {
LABEL_49:
    v56 = 4294954514;
    goto LABEL_50;
  }

  DoesNotExistAndAddToQueue = v30(v29, @"assetProperty_CreationOptionsDictionary", v27, &v71);
  if (DoesNotExistAndAddToQueue)
  {
    goto LABEL_65;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  v31 = *(v21 + 288);
  if (!v31)
  {
    *(v21 + 217) = 1;
    OUTLINED_FUNCTION_27_4();
    DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v59, v60, v61, v62, v63, v64, v65, 0);
    goto LABEL_65;
  }

  v70 = v1;
  while (2)
  {
    cf[0] = 0;
    *v75 = 0;
    v73 = 0;
    if (*type)
    {
      OUTLINED_FUNCTION_27_4();
      DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v32, v33, v34, v35, v36, v37, v38, 0);
      if (DoesNotExistAndAddToQueue)
      {
        goto LABEL_65;
      }
    }

    PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(*(v31 + 16));
    URLForCacheLookup = FigAlternateGetURLForCacheLookup(*(v31 + 16));
    StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(*(v31 + 16));
    DoesNotExistAndAddToQueue = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v2, v31, 2, PlaylistAlternateURL, URLForCacheLookup, 0, StableStreamIdentifier, 0);
    if (DoesNotExistAndAddToQueue)
    {
      goto LABEL_65;
    }

    Count = CFArrayGetCount(*(v31 + 24));
    if (Count <= 0)
    {
      v1 = v70;
      goto LABEL_47;
    }

    v43 = Count;
    v44 = 0;
    v74 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v31 + 24), v44);
      Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
      v47 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
      if (Value)
      {
        v48 = v47;
        if (FigCFStringGetOSTypeValue())
        {
          break;
        }
      }

      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, v69);
LABEL_35:
      if (v43 == ++v44)
      {
        v56 = 0;
        goto LABEL_42;
      }
    }

    if (v74 == 1668047728)
    {
      goto LABEL_35;
    }

    if (!v48)
    {
      goto LABEL_35;
    }

    FigAlternateGetRenditionInfoForMediaType(*(v31 + 16), v74, v48, v48, v48, 0, &v73, cf, v75);
    if (!cf[0] || !*v75)
    {
      goto LABEL_35;
    }

    CFRetain(cf[0]);
    switch(v74)
    {
      case 1935832172:
        v49 = OUTLINED_FUNCTION_4_32();
        v54 = 4;
        break;
      case 1936684398:
        v49 = OUTLINED_FUNCTION_4_32();
        v54 = 3;
        break;
      case 1986618469:
        v49 = OUTLINED_FUNCTION_4_32();
        v54 = 2;
        break;
      default:
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, v69);
        goto LABEL_32;
    }

    v55 = metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(v49, v50, v54, v51, v52, v48, v53, 0);
    if (!v55)
    {
LABEL_32:
      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      goto LABEL_35;
    }

    v56 = v55;
LABEL_42:
    v1 = v70;
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!v56)
    {
LABEL_47:
      v56 = 0;
      v31 = *v31;
      if (!v31)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_50:
  if (v71)
  {
    CFRelease(v71);
  }

  if (*type)
  {
    CFRelease(*type);
  }

  if (v56)
  {
    goto LABEL_59;
  }

  v57 = (CMBaseObjectGetDerivedStorage() + 304);
  while (1)
  {
    v57 = *v57;
    if (!v57)
    {
      break;
    }

    ResourceRequestForMetadataItem = metadw_createResourceRequestForMetadataItem(v2, v57);
    if (ResourceRequestForMetadataItem)
    {
      v56 = ResourceRequestForMetadataItem;
      metadw_transitionToTerminalStateWithOSStatus(v2, ResourceRequestForMetadataItem);
      goto LABEL_59;
    }
  }

  metadw_checkIfDownloadIsComplete(v2);
LABEL_61:
  if (*v1)
  {
    CFRelease(*v1);
  }

  free(v1);
}

uint64_t metadw_createMetadataDownloadItemForMetadataTextIfDoesNotExistAndAddToQueue(uint64_t a1, uint64_t a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, int a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  if (CFSetContainsValue(*(DerivedStorage + 320), a5))
  {
    return 0;
  }

  result = metadw_createMetadataDownloadItem(a2, a3, a4, a5, a6, a7, 0, &v20);
  if (result)
  {
    return result;
  }

  v18 = v20;
  v19 = *(DerivedStorage + 312);
  *v20 = 0;
  *(v18 + 8) = v19;
  *v19 = v18;
  *(DerivedStorage + 312) = v18;
  CFSetAddValue(*(DerivedStorage + 320), a5);
  if (!a8)
  {
    return 0;
  }

  return metadw_createResourceRequestForMetadataItem(a1, v18);
}

uint64_t metadw_createResourceRequestForMetadataItem(uint64_t a1, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v124[0] = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(v5 + 168))
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_34;
  }

  v8 = v5;
  FigAssetGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v9 = OUTLINED_FUNCTION_16_8();
    v11 = v10(v9);
    if (v11)
    {
      v6 = v11;
      v7 = 0;
      goto LABEL_32;
    }

    v7 = FigHTTPSchedulerRetain(*v8, v12);
    v13 = *(v8 + 168);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v14)
    {
      v6 = 4294954514;
      goto LABEL_32;
    }

    v15 = v14(v13, v7, 0, v8 + 280);
    if (v15)
    {
      goto LABEL_119;
    }

    FigAssetGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v16 = OUTLINED_FUNCTION_16_8();
      v15 = v17(v16);
      if (v15)
      {
        goto LABEL_119;
      }

      FigAssetGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v18 = OUTLINED_FUNCTION_16_8();
        v15 = v19(v18);
        if (v15)
        {
          goto LABEL_119;
        }

        v15 = FigCFHTTPCreateHTTPRequestOptionsFromAssetCreationOptions(*(v8 + 8), v124[0], &cf);
        if (v15)
        {
          goto LABEL_119;
        }

        v15 = FigCFHTTPCreateCommonHTTPHeadersFromAssetCreationOptions(*(v8 + 8), v124[0], *(v8 + 224), (v8 + 200));
        if (v15)
        {
          goto LABEL_119;
        }

        DictionaryValue = FigCFDictionaryGetDictionaryValue();
        if (DictionaryValue)
        {
          DictionaryValue = CFRetain(DictionaryValue);
        }

        *(v8 + 208) = DictionaryValue;
        FigAssetGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v21 = OUTLINED_FUNCTION_16_8();
          v15 = v22(v21);
          if (v15)
          {
            goto LABEL_119;
          }

          FigAssetGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v23 = OUTLINED_FUNCTION_16_8();
            v15 = v24(v23);
            if (!v15)
            {
              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              v25 = *(v8 + 192);
              v26 = cf;
              *(v8 + 192) = cf;
              if (v26)
              {
                CFRetain(v26);
              }

              if (v25)
              {
                CFRelease(v25);
              }

              FigAssetGetCMBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v27 = OUTLINED_FUNCTION_16_8();
                v6 = v28(v27);
                if (!v6 && dword_1EAF16DD8)
                {
                  LODWORD(v123) = 0;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v29 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  if (OUTLINED_FUNCTION_16_1(v29))
                  {
                    LODWORD(v126) = 136315906;
                    OUTLINED_FUNCTION_5_28();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, os_log_and_send_and_compose_flags_and_os_log_type, 0, v35);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_238_0(v112, v113, v114, v115, v116);
                  v6 = 0;
                }

                goto LABEL_32;
              }

              goto LABEL_29;
            }

LABEL_119:
            v6 = v15;
            goto LABEL_32;
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_29:
  v6 = 4294954514;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_34:
  FigHTTPSchedulerRelease(v7);
  if (v124[0])
  {
    CFRelease(v124[0]);
  }

  if (v6)
  {
    return v6;
  }

  v36 = CMBaseObjectGetDerivedStorage();
  v127[0] = 0;
  v126 = 0;
  if (*(a2 + 136))
  {
    goto LABEL_38;
  }

  v39 = v36;
  v40 = *(a2 + 16);
  if ((v40 - 2) < 3)
  {
    v41 = OUTLINED_FUNCTION_235();
    if (metadw_createCacheForStream(v41, v42, v43) || !v126)
    {
      v45 = v127[0];
LABEL_62:
      if (v45)
      {
        CFRelease(v45);
      }

      v40 = *(a2 + 16);
      goto LABEL_65;
    }

    v44 = FigStreamingCacheMediaStreamCopyPlaylist(*(v39 + 24), v126, v127, 0);
LABEL_59:
    v64 = v44;
    v45 = v127[0];
    if (!v64 && v127[0])
    {
      *(a2 + 112) = v127[0];
LABEL_38:
      v37 = *(a2 + 16);
      if ((v37 - 1) >= 4)
      {
        if (v37 != 6)
        {
          return 0;
        }

        return metadw_parseJSONDataIntoAssetList(a1, *(a2 + 112));
      }

      if ((v37 - 2) > 2)
      {
        OUTLINED_FUNCTION_24_5();
      }

      OUTLINED_FUNCTION_26_7();
      CustomURLRequest = metadw_publishMediaResourceRequestEvent(a1, v46, v47, 0, v48, v49, 1, 0, v118);
      if (CustomURLRequest)
      {
        return CustomURLRequest;
      }

      CMBaseObjectGetDerivedStorage();
      v51 = OUTLINED_FUNCTION_235();
      v6 = metadw_processPlaylistCommon(v51, v52);
      if (!v6 && dword_1EAF16DD8)
      {
        LODWORD(v124[0]) = 0;
        LOBYTE(cf) = 0;
        v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v54 = cf;
        v55 = os_log_type_enabled(v53, cf);
        if (OUTLINED_FUNCTION_115_1(v55))
        {
          LODWORD(v126) = 136315906;
          OUTLINED_FUNCTION_5_28();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v53, v54, v61);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v92, v93, v94, v95, v96);
        return 0;
      }

      return v6;
    }

    goto LABEL_62;
  }

  if (v40 == 6)
  {
    v62 = *(v36 + 24);
    v63 = CFURLGetString(*(a2 + 24));
    v44 = FigStreamingCacheCopyInterstitialAssetList(v62, v63, v127);
    goto LABEL_59;
  }

  if (v40 == 1)
  {
    v44 = FigStreamingCacheCopyMasterPlaylist(*(v36 + 24), v127, 0);
    goto LABEL_59;
  }

LABEL_65:
  if (v40 == 5 && PKDIsContentKeyBossEnabled())
  {
    v65 = CMBaseObjectGetDerivedStorage();
    v123 = 0;
    v124[0] = 1;
    v124[1] = metadw_contentKeyRequestDidSucceed;
    v124[2] = metadw_contentKeyRequestDidFail;
    v124[3] = metadw_contentKeyRequestDidUpdateContentKeyBossToNewBoss;
    cf = 0;
    if (*(v65 + 384))
    {
      v66 = v65;
      FigContentKeySpecifierGetKeySystem(*(a2 + 64));
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v68 = Mutable;
        CFDictionarySetValue(Mutable, @"kCKRPCO_AssociatedObjectID", *(v66 + 224));
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_27_4();
        v76 = FigContentKeyRequestParamsCreate(v69, v70, v71, v72, v73, v74, v75, 0, 0, 1, v68, &v123);
        if (v76)
        {
          v6 = v76;
        }

        else
        {
          v77 = *(v66 + 384);
          v78 = v123;
          v79 = *(v66 + 192);
          v80 = *(v66 + 200);
          v81 = *v66;
          v82 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v82)
          {
            v6 = v82(v77, v78, 1, 1, v79, v80, v124, a1, v81, &cf);
            if (!v6 && dword_1EAF16DD8)
            {
              v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v6 = 0;
            }
          }

          else
          {
            v6 = 4294954514;
          }
        }

        CFRelease(v68);
        if (v123)
        {
          CFRelease(v123);
        }

        if (v6)
        {
          return v6;
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, v119, v120);
        v6 = v117;
        if (v117)
        {
          return v6;
        }
      }
    }

    v97 = *(a2 + 88);
    v98 = *(a2 + 24);
    v99 = *(a2 + 16) - 2;
    if (v99 > 2)
    {
      OUTLINED_FUNCTION_24_5();
    }

    else
    {
      v100 = *&aEdivnuosltbs[4 * v99];
    }

    v6 = metadw_publishMediaResourceRequestEvent(a1, v97, v98, 0, v100, 0, 0, *(a2 + 64), 0);
    if (!v6)
    {
      ++*(DerivedStorage + 368);
    }

    return v6;
  }

  if (*(a2 + 96) || *(a2 + 104))
  {
    return 0;
  }

  v84 = OUTLINED_FUNCTION_235();
  if (metadw_shouldRequestBeSentOverHTTP(v84, v85))
  {
    v86 = CMBaseObjectGetDerivedStorage();
    v124[0] = 0;
    LODWORD(cf) = 0;
    if (*(a2 + 88) || *(a2 + 96))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v118, v119, v120);
      if (CustomURLRequest)
      {
        return CustomURLRequest;
      }
    }

    else
    {
      v87 = v86;
      v88 = *(a2 + 16);
      if (v88 == 6)
      {
        v89 = 5;
      }

      else
      {
        v89 = 7;
      }

      if (*(v86 + 144))
      {
        v89 |= 0x800u;
      }

      if (*(v86 + 145))
      {
        v89 |= 0x1000u;
      }

      v90 = v88 - 1;
      v122 = v89;
      if (v90 > 5)
      {
        v91 = 0;
      }

      else
      {
        v91 = dword_196E75F38[v90];
      }

      if (dword_1EAF16DD8)
      {
        LODWORD(v123) = 0;
        v101 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v102 = *(v87 + 280);
      v103 = *(v87 + 8);
      v104 = *(a2 + 24);
      v106 = *(v87 + 192);
      v105 = *(v87 + 200);
      v107 = *(v87 + 232);
      v108 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v108)
      {
        return 4294954514;
      }

      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      *v127 = 0u;
      v131 = 0;
      v132 = v91;
      v133 = 0u;
      v134 = 0u;
      v135 = 0;
      CustomURLRequest = v108(v102, v103, 0, v104, 0, v105, v106, v122, v127, 0, 0, 0, metadw_httpReadCallback, v107, v124, &cf);
      if (CustomURLRequest)
      {
        return CustomURLRequest;
      }

      *(a2 + 88) = v124[0];
      v109 = cf;
      *(a2 + 96) = cf;
      CFDictionaryAddValue(*(v87 + 336), v109, a2);
    }
  }

  else
  {
    v110 = OUTLINED_FUNCTION_235();
    CustomURLRequest = metadw_createCustomURLRequest(v110, v111);
    if (CustomURLRequest)
    {
      return CustomURLRequest;
    }
  }

  if (*(a2 + 96) || *(a2 + 104))
  {
    ++*(DerivedStorage + 352);
  }

  v6 = 0;
  *(a2 + 144) = FigGetUpTimeNanoseconds();
  return v6;
}

uint64_t metadw_publishMediaResourceRequestEvent(uint64_t a1, uint64_t a2, const void *a3, const void *a4, int a5, char a6, char a7, const void *a8, char a9)
{
  v48 = 0;
  v49 = 0;
  v46 = 0.0;
  cf = 0;
  v44 = 0.0;
  v45 = 0.0;
  theData = 0;
  v43 = 0.0;
  v41 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  if (!a2)
  {
    v28 = 0;
    goto LABEL_16;
  }

  v40 = DerivedStorage;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v19)
  {
    v19(a2, @"FHRP_CFNetworkTimingData", AllocatorForMedia, &cf);
    if (cf)
    {
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
      FigCFDictionaryGetDoubleIfPresent();
    }
  }

  v20 = a4;
  v21 = FigGetAllocatorForMedia();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v22)
  {
    v23 = a6;
    v24 = a7;
    goto LABEL_10;
  }

  v23 = a6;
  v24 = a7;
  v22(a2, @"FHRP_RemoteIPAddress", v21, &theData);
  if (!theData)
  {
LABEL_10:
    v25 = a8;
    v28 = 0;
    goto LABEL_11;
  }

  v25 = a8;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v28 = FigCFHTTPCreateAddressStringFromSockaddr(BytePtr, Length);
LABEL_11:
  v29 = FigGetAllocatorForMedia();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(a2, @"FHRP_CFNetworkTransactionMetrics", v29, &v41);
  }

  v31 = FigGetAllocatorForMedia();
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v32)
  {
    v32(a2, 0x1F0B5D218, v31, &v48);
  }

  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  a8 = v25;
  a7 = v24;
  a6 = v23;
  a4 = v20;
  v17 = v40;
LABEL_16:
  v33 = FigGetAllocatorForMedia();
  if (a9)
  {
    v34 = FigMetricHLSPlaylistRequestEventCreate(v33, a3, v28, 0, 0, a7, a4, v41, v46, v45, v44, v43, a5, a6, &v49);
    if (v34)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v34 = FigMetricContentKeyRequestEventCreate(v33, a3, v28, 0, 0, 0, a4, v41, v46, v45, v44, v43, a5, 0, a8, &v49);
    if (v34)
    {
LABEL_22:
      v38 = v34;
      goto LABEL_24;
    }
  }

  v35 = *(v17 + 408);
  v36 = v49;
  v37 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v37)
  {
    v34 = v37(v35, 0, v36);
    goto LABEL_22;
  }

  v38 = 4294954514;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  return v38;
}

uint64_t metadw_createCustomURLRequest(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  cf = 0;
  if (!a2 || !*(a2 + 24) || (v5 = DerivedStorage, !*(DerivedStorage + 184)) || !*(DerivedStorage + 176) || *(a2 + 104))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable)
  {
LABEL_26:
    v8 = Mutable;
    v7 = 0;
    goto LABEL_20;
  }

  v7 = FigCFHTTPCreateUserAgent();
  v8 = FigCustomURLRequestInfoSetUserAgent();
  if (!v8)
  {
    v9 = *(a2 + 16);
    if (v9 <= 6 && ((1 << v9) & 0x5E) != 0)
    {
      v10 = FigCustomURLRequestInfoSetAcceptEncoding();
      if (v10)
      {
        v8 = v10;
      }

      else
      {
        if (dword_1EAF16DD8)
        {
          OUTLINED_FUNCTION_147();
          v18 = OUTLINED_FUNCTION_126(qword_1EAF16DD0, v11, v12, v13, v14, v15, v16, v17, v49, v51, v53, *v55, v55[2], v55[3], v55[4]);
          v26 = OUTLINED_FUNCTION_34_5(v18, v19, v20, v21, v22, v23, v24, v25, v50, v52, v54, v56, v57, v58, v59);
          if (OUTLINED_FUNCTION_16_1(v26))
          {
            v27 = *(v5 + 152);
            v28 = *(a2 + 16);
            v29 = *(a2 + 24);
            v62 = 136316162;
            v63 = "metadw_createCustomURLRequest";
            v64 = 2048;
            v65 = a1;
            v66 = 2114;
            v67 = v27;
            v68 = 1024;
            v69 = v28;
            v70 = 2112;
            v71 = v29;
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_61_5(v30, v31, v32, v33, v34, v35, v36, v37);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0(v38, v39, v40, v41, v42);
        }

        v43 = *(v5 + 184);
        v44 = *(v5 + 232);
        v45 = *v5;
        v46 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v46)
        {
          v8 = v46(v43, cf, v44, v45, metadw_customURLReadCallback, &key);
          if (!v8)
          {
            v47 = key;
            if (key)
            {
              *(a2 + 104) = key;
              CFDictionaryAddValue(*(v5 + 344), v47, a2);
              v8 = 0;
            }
          }
        }

        else
        {
          v8 = 4294954514;
        }
      }
    }
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}