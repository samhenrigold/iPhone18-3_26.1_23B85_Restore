void playerairplay_checkStartStopAirPlay_cold_1(uint64_t a1)
{
  playerairplay_switchFromBufferedAirPlayToLocal(a1);
  v1 = OUTLINED_FUNCTION_203();
  playerairplay_switchFromAirPlayVideoToLocal(v1, v2);
}

uint64_t __playerairplay_updateSubPlayerPlayQueue_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_71_4(a1);
  isUsingCustomMediaSelectionSchemes = itemairplay_isUsingCustomMediaSelectionSchemes(v4);
  v6 = *(*a2 + 352);
  v7 = *MEMORY[0x1E695E480];
  if (isUsingCustomMediaSelectionSchemes)
  {
    OUTLINED_FUNCTION_2_4();
    FigAirPlayMediaSelectionCopyProperty(v9, v10, v7, (v8 + 24));
    v6 = *(*a2 + 352);
    v11 = kFigAirPlayMediaSelectionProperty_MediaPresentationCharacteristics;
    v12 = 40;
  }

  else
  {
    v11 = kFigAirPlayMediaSelectionProperty_SelectedMediaArrayForSubItem;
    v12 = 48;
  }

  v13 = *v11;
  v14 = (*(*(v2 + v12) + 8) + 24);

  return FigAirPlayMediaSelectionCopyProperty(v6, v13, v7, v14);
}

uint64_t __playerairplay_airplayRouteDeselectedCallback_block_invoke_cold_1(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    playerairplay_switchFromBufferedAirPlayToLocal(*(a1 + 40));
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_97_4(DerivedStorage);
  FigCFDictionaryGetBooleanIfPresent();
  if (v4)
  {
    playerairplay_updateBasedOnAirPlayVideoRouteDeselected(*(a1 + 40));
  }

  playerairplay_resetAirPlayRouteInformation(*(a1 + 40));
  return playerairplay_resetAirPlayVideoState(*(a1 + 40));
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_cold_1(uint64_t a1, void *a2)
{
  cf = 0;
  v4 = 0;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(*a1 + 40), &cf, &v4);
  playerairplay_savePlaybackInfoAndStopAPV(*a2, cf, v4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_187();
  cf = 0;
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, &cf);
  playerairplay_updatePlayerRateToMatch(*(v0 + 40), cf, 0.0);
  playerairplay_updateSubPlayerPlayQueue(*(v0 + 40));
  if (*(*(CMBaseObjectGetVTable() + 16) + 104))
  {
    v1 = OUTLINED_FUNCTION_298();
    v2(v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void __playerairplay_handleSetProperty_block_invoke_177_cold_1()
{
  OUTLINED_FUNCTION_369();
  pap_playbackSessionSetProperty();
  if (*(*v1 + 456))
  {
    v2 = *v0;

    playerairplay_createAndResumeVideoSyncTimer(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_2_179_cold_1()
{
  OUTLINED_FUNCTION_187();
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, v1);
  playerairplay_updatePlayerRateToMatch(*(v0 + 40), *v1, 0.0);
  if (*v1)
  {
    CFRelease(*v1);
  }
}

void playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_1(uint64_t a1, const void **a2, const void *a3)
{
  v5 = OUTLINED_FUNCTION_146_2(a1);
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(v5, v6, a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  if (DerivedStorage)
  {
    itemairplay_prepareAndCacheSelectedMediaArray(v8);
    playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a3);
    FigReadWriteLockUnlockForRead();
    v8 = *a2;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void __playerairplay_handleSetProperty_block_invoke_11_cold_1(uint64_t a1, uint64_t a2, const void **a3)
{
  OUTLINED_FUNCTION_369();
  playerairplay_removeFigAudioSessionNotificationHandlers(*(v6 + 48));
  v7 = *v4;
  v8 = *(*v4 + 392);
  v9 = *a3;
  *(v7 + 392) = *a3;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 392))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_65_7();
    FigNotificationCenterAddWeakListener();
  }

  v10 = *(v3 + 48);

  playerairplay_setFigAudioSessionInfoOnBAO(v10);
}

void __playerairplay_handleSetProperty_block_invoke_12_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  Value = CFBooleanGetValue(*(a1 + 48));
  v3 = MEMORY[0x1E69AF8A8];
  if (!Value)
  {
    v3 = MEMORY[0x1E69AF828];
  }

  v4 = *v3;

  playerairplay_setAndCacheAudioMode(v1, v4, 1);
}

void itemairplay_Invalidate_cold_1(uint64_t a1)
{
  itemairplay_unsubscribeFromURLProcessor(a1);
  FigBytePumpGetFigBaseObject();
  if (v1)
  {
    v2 = v1;
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v2);
    }
  }
}

void itemairplay_handleSetProperty_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_42_11(a1);
  CFDictionarySetValue(*(v3 + 336), @"SetEndTime", v2);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);
}

void itemairplay_handleSetProperty_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_42_11(a1);
  CFDictionarySetValue(*(v3 + 336), @"ReverseEndTime", v2);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);
}

void itemairplay_handleSetProperty_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_42_11(a1);
  CFDictionarySetValue(*(v3 + 336), @"PlaybackRestrictions", v2);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);
}

void itemairplay_handleSetProperty_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_42_11(a1);
  CFDictionarySetValue(*(v3 + 336), @"TextMarkupArray", v2);
  FigSimpleMutexUnlock();

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);
}

void itemairplay_handleSetProperty_cold_6()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  v6 = *(v2 + 512);
  v5 = CMTimeCopyAsDictionary(&v6, v4);
  FigSimpleMutexLock();
  CFDictionarySetValue(*(v3 + 336), *MEMORY[0x1E6961ED0], v1);
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_7()
{
  OUTLINED_FUNCTION_375_0();
  v2 = *MEMORY[0x1E695E480];
  v5 = *v3;
  v4 = CMTimeCopyAsDictionary(&v5, v2);
  FigSimpleMutexLock();
  CFDictionarySetValue(*(v1 + 336), *MEMORY[0x1E6961E88], v4);
  FigSimpleMutexUnlock();
  if (v4)
  {
    CFRelease(v4);
  }

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v0);
}

void itemairplay_handleSetProperty_cold_8(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  FigSimpleMutexLock();
  CFDictionarySetValue(*(a1 + 336), a2, a3);
  FigSimpleMutexUnlock();

  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a4);
}

uint64_t itemairplay_handleSetProperty_cold_10(uint64_t a1, CFTypeRef cf, void *a3)
{
  v5 = *(a1 + 752);
  *(a1 + 752) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 752);
  if (v6)
  {
    v7 = CFEqual(*(a1 + 752), &stru_1F0B1AFB8);
    v8 = 1;
    if (!v7 && *MEMORY[0x1E695E738] != v6)
    {
      v9 = *(a1 + 768);
      *a3 = v9;
      v10 = *(a1 + 752);
      *(a1 + 768) = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v9)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t itemairplay_handleSetProperty_cold_11()
{
  OUTLINED_FUNCTION_261();
  FigSimpleMutexLock();
  v2 = *(v0 + 648);
  *(v0 + 648) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t itemairplay_handleSetProperty_cold_12()
{
  OUTLINED_FUNCTION_261();
  FigSimpleMutexLock();
  v2 = *(v0 + 656);
  *(v0 + 656) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return FigSimpleMutexUnlock();
}

void itemairplay_handleSetProperty_cold_13(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 192);
  *(a1 + 192) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 224) = 1;
}

void itemairplay_SeekToDateWithID_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_42_11(a1);
  CFDictionarySetValue(*(v3 + 336), *MEMORY[0x1E6961E60], v2);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);
  CFRelease(v2);
}

uint64_t itemairplay_SetTrackProperty_cold_1()
{
  OUTLINED_FUNCTION_471();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *v0 = v1;

  return FigSimpleMutexUnlock();
}

void playerairplay_addItemToLocalPlayQueue_cold_1()
{
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlayerParameter_ReasonForCurrentItemDidChange, &kFigPlayerCurrentItemDidChangeReason_AddToPlayQueue, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  playerairplay_postPlayerNotification();
  if (v0)
  {
    CFRelease(v0);
  }
}

uint64_t __playerairplay_initializeVolumeFadeOutNotification_block_invoke_cold_1(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = v9;
    v8 = v10;
    return v6(a2, 2, &v7);
  }

  return result;
}

uint64_t playercoordinator_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v2 = DerivedStorage;
  *DerivedStorage = 1;
  if (*(DerivedStorage + 16))
  {
    FigCFWeakReferenceTableApplyFunction();
  }

  if (!*(v2 + 8))
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigPlayerGetFigBaseObject();
  if (!v3)
  {
    return 4294954516;
  }

  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4);
}

uint64_t playercoordinator_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_0_102();
LABEL_20:
    FigSignalErrorAtGM(v19);
LABEL_21:
    v14 = v13;
    goto LABEL_15;
  }

  if (*DerivedStorage || (v11 = *(DerivedStorage + 8)) == 0)
  {
    OUTLINED_FUNCTION_1_94();
    goto LABEL_20;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    v14 = 4294954514;
    goto LABEL_15;
  }

  v13 = v12(v11, a2, a3, a4, &cf);
  if (v13)
  {
    goto LABEL_21;
  }

  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  v14 = CMDerivedObjectCreate();
  if (!v14)
  {
    v15 = CMBaseObjectGetDerivedStorage();
    v16 = cf;
    if (cf)
    {
      v16 = CFRetain(cf);
    }

    *(v15 + 8) = v16;
    *(v15 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(0, (v15 + 40), 10, 0x8000100u);
    }

    v17 = FigCFWeakReferenceTableAddValueAssociatedWithKey();
    if (v17)
    {
      v14 = v17;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v14 = FigNotificationCenterAddWeakListener();
      if (!v14)
      {
        *a5 = 0;
      }
    }
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

void FigPlayerCoordinatorCreateWithOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigPlayerCoordinatorCreateWithOptions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_handleSetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_handleSetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_handleSetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_handleSetProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetDimensions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetDimensions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetDimensions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetDuration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetDuration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetDuration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetCurrentTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetCurrentTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetCurrentTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyTrackProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyTrackProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyTrackProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_MakeReadyForInspection_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_MakeReadyForInspection_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_MakeReadyForInspection_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyCommonMetadata_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyCommonMetadata_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyCommonMetadata_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyChapterImageData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyChapterImageData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyChapterImageData_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetNextThumbnailTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetNextThumbnailTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_GetNextThumbnailTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithRange_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithRange_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithRange_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetTrackProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetTrackProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetTrackProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyFormatReader_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyFormatReader_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyFormatReader_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SeekToDateWithID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SeekToDateWithID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SeekToDateWithID_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithRangeAndID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithRangeAndID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithRangeAndID_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyAsset_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyAsset_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_CopyAsset_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetProperties_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetProperties_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetProperties_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_ExtractAndRetainNextSampleBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithOptions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void itemcoordinator_SetCurrentTimeWithOptions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_AddToPlayQueue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_AddToPlayQueue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_AddToPlayQueue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_RemoveFromPlayQueue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_RemoveFromPlayQueue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_RemoveFromPlayQueue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyPlayQueueItem_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyPlayQueueItem_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyPlayQueueItem_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyPlayQueueItem_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_GetRate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_GetRate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_GetRate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateWithFade_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateWithFade_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateWithFade_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_StartPreroll_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_StartPreroll_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_StartPreroll_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_StepByCount_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_StepByCount_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_StepByCount_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateAndAnchorTime_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateAndAnchorTime_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateAndAnchorTime_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateWithOptions_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateWithOptions_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetRateWithOptions_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetProperties_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetProperties_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetProperties_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_ReevaluateRouteConfiguration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_ReevaluateRouteConfiguration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_ReevaluateRouteConfiguration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_AddExternalStartupTask_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_AddExternalStartupTask_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_AddExternalStartupTask_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_RemoveExternalStartupTask_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_RemoveExternalStartupTask_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_RemoveExternalStartupTask_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyDisplayedCVPixelBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyDisplayedCVPixelBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_CopyDisplayedCVPixelBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_BeginInterruption_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_BeginInterruption_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_BeginInterruption_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_EndInterruption_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_EndInterruption_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_EndInterruption_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetConnectionActive_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetConnectionActive_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_94();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void playercoordinator_SetConnectionActive_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_102();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void mrdowc_streamingCacheNotificationHandler(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  Storage = mrdowc_getStorage(a2);
  if (Storage)
  {
    v9 = Storage;
    if (*(Storage + 40))
    {
      MallocZoneForMedia = FigGetMallocZoneForMedia();
      v11 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x20uLL, 0xE00402E8C7BDEuLL);
      if (v11)
      {
        v12 = v11;
        if (a2)
        {
          v13 = CFRetain(a2);
        }

        else
        {
          v13 = 0;
        }

        *v12 = v13;
        v14 = *(v9 + 40);
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v12[1] = v14;
        v12[2] = CFRetain(a3);
        if (a5)
        {
          v15 = CFRetain(a5);
        }

        else
        {
          v15 = 0;
        }

        v12[3] = v15;
        v16 = *(v9 + 128);

        dispatch_async_f(v16, v12, mrdowc_handleNotificationAsync);
      }
    }
  }
}

uint64_t *FigMediaRequestForPlaylistCopyURL(uint64_t a1, void *a2)
{
  result = mrdowc_getStorage(a1);
  if (a2)
  {
    v4 = result;
    if (result)
    {
      FigSimpleMutexLock();
      v5 = v4[1];
      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *a2 = v5;

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

uint64_t FigMediaRequestForPlaylistGetURLForCacheLookup(uint64_t a1)
{
  Storage = mrdowc_getStorage(a1);
  if (!Storage)
  {
    return 0;
  }

  v2 = Storage;
  FigSimpleMutexLock();
  v3 = *(v2 + 16);
  FigSimpleMutexUnlock();
  return v3;
}

void *FigMediaRequestDeliverOnceWithCacheSaveDataToCache(uint64_t a1, uint64_t a2)
{
  result = mrdowc_getStorage(a1);
  if (result)
  {
    v4 = result;
    FigSimpleMutexLock();
    v5 = v4[3];
    if (v5)
    {
      v6 = v4[7];
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          if (dword_1EAF17308)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v7 = *(v4[7] + 8);
            v5 = v4[3];
          }

          v7(v4[2], v5, v4[4], v4[8], a2, v4[11]);
        }
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

BOOL mrsd_copyFromCacheHandler(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 == 3)
  {
    if (FigCFHTTPCreateURLString(a1))
    {
      v7 = OUTLINED_FUNCTION_13_28();
      FigStreamingCacheCopySessionData(v7, v8, v9);
      CFRelease(v5);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    }
  }

  return *a5 != 0;
}

double mrsd_storeInCacheHandler(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3)
  {
    if (FigCFHTTPCreateURLString(a1))
    {
      v5 = OUTLINED_FUNCTION_13_28();
      FigStreamingCacheSetSessionData(v5, v6, v7);

      CFRelease(v4);
    }

    else
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t mr_clearNetworkRequestState(uint64_t a1)
{
  Storage = mr_getStorage(a1);
  *(Storage + 144) = 0;
  v2 = *(Storage + 208);
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (!v3)
    {
      return 4294954514;
    }

    result = v3(v2);
    if (result)
    {
      return result;
    }

    v5 = *(Storage + 208);
    if (v5)
    {
      CFRelease(v5);
      *(Storage + 208) = 0;
    }
  }

  v6 = *(Storage + 224);
  if (v6)
  {
    CFRelease(v6);
    *(Storage + 224) = 0;
  }

  *(Storage + 216) = 0;
  v7 = *(Storage + 72);
  if (!v7)
  {
    return 0;
  }

  v8 = *(Storage + 200);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    return 4294954514;
  }

  result = v9(v7, v8);
  if (!result)
  {
    *(Storage + 200) = 0;
  }

  return result;
}

void mr_issueDidFailCallback(const void *a1, const void *a2, uint64_t a3)
{
  Storage = mr_getStorage(a1);
  v8 = *(Storage + 128);
  if (v8)
  {
    while (1)
    {
      if (CFArrayGetCount(v8) < 1)
      {
        return;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 128), 0);
      v10 = mr_getStorage(a1);
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      v12 = *(ValueAtIndex + 3);
      v13 = *(ValueAtIndex + 4);
      if (v13)
      {
        dispatch_retain(*(ValueAtIndex + 4));
      }

      if (!v12 || !*v12 || !v13 || !*v12)
      {
        break;
      }

      MallocZoneForMedia = FigGetMallocZoneForMedia();
      v15 = malloc_type_zone_calloc(MallocZoneForMedia, 1uLL, 0x50uLL, 0x10E0040CBF5CB4EuLL);
      if (!v15)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17300, 4294947715, "mediarequest", 503, v3);
LABEL_13:
        v19 = v18;
        if (!v11)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v16 = v15;
      v15[3] = v12;
      if (a1)
      {
        v17 = CFRetain(a1);
      }

      else
      {
        v17 = 0;
      }

      *v16 = v17;
      if (v11)
      {
        v20 = CFRetain(v11);
      }

      else
      {
        v20 = 0;
      }

      v16[1] = v20;
      if (a2)
      {
        v21 = CFRetain(a2);
      }

      else
      {
        v21 = 0;
      }

      v16[5] = v21;
      v22 = *(v10 + 208);
      if (v22)
      {
        v22 = CFRetain(v22);
      }

      v16[6] = a3;
      v16[7] = v22;
      dispatch_async_f(v13, v16, mr_issueDidFailCallbackOnCallbackQueue);
      v19 = 0;
      if (!v11)
      {
        goto LABEL_26;
      }

LABEL_25:
      CFRelease(v11);
LABEL_26:
      if (v13)
      {
        dispatch_release(v13);
      }

      if (!v19)
      {
        CFArrayRemoveValueAtIndex(*(Storage + 128), 0);
        v8 = *(Storage + 128);
        if (v8)
        {
          continue;
        }
      }

      return;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17300, 4294947713, "mediarequest", 500, v3);
    goto LABEL_13;
  }
}

uint64_t mr_memoryRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  cf = 0;
  v15 = 0;
  v8 = mr_copyRequestFromRetainProxy(a1, &v15);
  if (v8)
  {
    v12 = v8;
    goto LABEL_8;
  }

  Storage = mr_getStorage(v15);
  FigSimpleMutexLock();
  if (*(Storage + 96) || (v10 = FigCopyCommonMemoryPool(), (*(Storage + 96) = v10) != 0))
  {
    BlockBuffer = FigMemoryPoolCreateBlockBuffer();
    if (!BlockBuffer)
    {
      v12 = 0;
      *a5 = 0;
      *a6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v15, v16);
  }

  v12 = BlockBuffer;
LABEL_6:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_8:
  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

void mr_httpReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, int a8)
{
  err = 0;
  v27 = 0;
  cf = 0;
  if (mr_copyRequestFromRetainProxy(a3, &v27))
  {
    goto LABEL_34;
  }

  Storage = mr_getStorage(v27);
  FigSimpleMutexLock();
  if (*(Storage + 144) != 1)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, cf, err);
    goto LABEL_32;
  }

  if (a8)
  {
    ErrorFromHTTPRequestIfAvailable = FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(a1, a8, 0, 0, &err);
    if (ErrorFromHTTPRequestIfAvailable)
    {
      goto LABEL_28;
    }

    if (err && CFErrorGetCode(err))
    {
      mr_handleCommonNetworkError(v27, err);
      goto LABEL_32;
    }
  }

  if ((a7 & 1) == 0)
  {
    goto LABEL_9;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17)
  {
    ErrorFromHTTPRequestIfAvailable = v17(a1, @"FHRP_HTTPFinalURL", AllocatorForMedia, &cf);
    if (!ErrorFromHTTPRequestIfAvailable)
    {
      v18 = *(Storage + 16);
      v19 = cf;
      *(Storage + 16) = cf;
      if (v19)
      {
        CFRetain(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

LABEL_9:
      ErrorFromHTTPRequestIfAvailable = 0;
    }
  }

  else
  {
    ErrorFromHTTPRequestIfAvailable = -12782;
  }

  if (!a4)
  {
    DataLength = 0;
    if ((a7 & 2) == 0)
    {
LABEL_23:
      if (!a6)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(Storage + 144) = 2;
    *(Storage + 216) = 0;
    if (!*(Storage + 224))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, cf, err);
      if (ErrorFromHTTPRequestIfAvailable)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

LABEL_27:
    ErrorFromHTTPRequestIfAvailable = mr_issueDataOutputCallback(v27, DataLength, a6);
    goto LABEL_28;
  }

  v21 = (Storage + 224);
  v20 = *(Storage + 224);
  if (!v20)
  {
    v22 = FigGetAllocatorForMedia();
    ErrorFromHTTPRequestIfAvailable = CMBlockBufferCreateEmpty(v22, 0, 0, (Storage + 224));
    if (ErrorFromHTTPRequestIfAvailable)
    {
      goto LABEL_28;
    }

    v20 = *v21;
  }

  DataLength = CMBlockBufferGetDataLength(v20);
  ErrorFromHTTPRequestIfAvailable = CMBlockBufferAppendBufferReference(*v21, a4, a5, a6, 0);
  if (!ErrorFromHTTPRequestIfAvailable)
  {
    if ((a7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

LABEL_28:
  if (ErrorFromHTTPRequestIfAvailable)
  {
LABEL_29:
    if (v27)
    {
      v24 = 0;
      FigCreateErrorForOSStatus(ErrorFromHTTPRequestIfAvailable, &v24);
      mr_handleCommonNetworkError(v27, v24);
      if (v24)
      {
        CFRelease(v24);
      }
    }
  }

LABEL_32:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_34:
  if (err)
  {
    CFRelease(err);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

uint64_t mr_issueDataOutputCallback(const void *a1, size_t a2, uint64_t a3)
{
  Storage = mr_getStorage(a1);
  v7 = 0;
  v11 = 0;
  while (1)
  {
    Count = *(Storage + 128);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v7 >= Count)
    {
      break;
    }

    v11 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(Storage + 128), v7);
    result = mr_issueDataOutputCallbackGuts(a1, a2, a3, ValueAtIndex, &v11);
    if (result)
    {
      return result;
    }

    if (v11)
    {
      CFArrayRemoveValueAtIndex(*(Storage + 128), v7--);
    }

    ++v7;
  }

  return 0;
}

uint64_t mr_issueDataOutputCallbackGuts(const void *a1, size_t a2, int64_t a3, void *a4, char *a5)
{
  Storage = mr_getStorage(a1);
  blockBufferOut = 0;
  v12 = FigCFWeakReferenceHolderCopyReferencedObject();
  v14 = a4[3];
  v13 = a4[4];
  if (v13)
  {
    dispatch_retain(v13);
  }

  if (!v14 || !*v14 || !v13 || !*v14)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17300, 4294947713, "mediarequest", 428, v5);
    goto LABEL_16;
  }

  v15 = *(Storage + 144);
  v16 = v15 == 2;
  if (a2 + a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 == 2;
  }

  if (!v17)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17300, 4294947713, "mediarequest", 435, v5);
LABEL_16:
    v20 = v22;
    goto LABEL_20;
  }

  if (a2 == -a3)
  {
    v19 = 0;
  }

  else
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v22 = CMBlockBufferCreateWithBufferReference(AllocatorForMedia, *(Storage + 224), a2, a3, 0, &blockBufferOut);
    if (v22)
    {
      goto LABEL_16;
    }

    v19 = blockBufferOut;
  }

  mr_issueDataOutputCallbackAsync(a1, v12, v19, v14, v16, 0, *(Storage + 208), *(Storage + 176), *(Storage + 184), v13);
  v20 = 0;
  if (a5)
  {
    *a5 = v16;
  }

LABEL_20:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  return v20;
}

void mr_timerEventHandler(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    VTable = CMBaseObjectGetVTable();
    if (VTable == &kMediaRequest_VTable)
    {
      VTable = CMBaseObjectGetDerivedStorage();
      v13 = VTable;
    }

    else
    {
      v13 = 0;
    }

    if (dword_1EAF17308)
    {
      v14 = OUTLINED_FUNCTION_4_75(VTable, v6, v7, v8, v9, v10, v11, v12, v29, v31, v33, SBYTE2(v33), SBYTE3(v33), SHIDWORD(v33));
      v22 = OUTLINED_FUNCTION_437_1(v14, v15, v16, v17, v18, v19, v20, v21, v30, v32, v34, v35, v36, v37);
      if (OUTLINED_FUNCTION_109_0(v22))
      {
        v39 = 136315394;
        v40 = "mr_timerEventHandler";
        v41 = 2048;
        v42 = v4;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v1, v2, v28);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    mr_cancel(v4, 0);
    FigSimpleMutexLock();
    v13[120] = 1;
    FigCreateErrorForOSStatus(-12884, &cf);
    mr_handleCommonNetworkError(v4, cf);
    FigSimpleMutexUnlock();
    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v4);
  }
}

void mr_customURLReadCallback(uint64_t a1, uint64_t a2, const void *a3, OpaqueCMBlockBuffer *a4, char a5, const void *a6, const void *a7)
{
  v31 = 0;
  cf = a6;
  v30 = 0;
  if (mr_copyRequestFromRetainProxy(a1, &v31))
  {
    v14 = 0;
    goto LABEL_29;
  }

  Storage = mr_getStorage(v31);
  FigSimpleMutexLock();
  if (*(Storage + 200) != a2 || *(Storage + 144) != 1)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v14 = 0;
    goto LABEL_14;
  }

  HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
  if (HTTPStatusCode && HTTPStatusCode != -17360 || (HTTPStatusCode = FigCustomURLResponseInfoCopyHTTPHeaders()) != 0 && HTTPStatusCode != -17360)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if (!FigCFHTTPIsStatusCodeRedirect(0))
  {
    v19 = cf;
    if (cf)
    {
      v18 = 0;
LABEL_25:
      mr_handleCommonNetworkError(v31, v19);
      v14 = 0;
      goto LABEL_26;
    }

    HTTPStatusCode = FigCFHTTPCreateCFErrorFromHTTPStatusCode(0, &cf);
    if (HTTPStatusCode)
    {
      goto LABEL_60;
    }

    v19 = cf;
    if (cf)
    {
      v18 = 1;
      goto LABEL_25;
    }

    HTTPStatusCode = FigCustomURLResponseInfoCopyFinalURL();
    if (HTTPStatusCode)
    {
      goto LABEL_60;
    }

    if (a4)
    {
      v21 = (Storage + 224);
      v20 = *(Storage + 224);
      if (!v20)
      {
        AllocatorForMedia = FigGetAllocatorForMedia();
        HTTPStatusCode = CMBlockBufferCreateEmpty(AllocatorForMedia, 0, 0, (Storage + 224));
        if (HTTPStatusCode)
        {
          goto LABEL_60;
        }

        v20 = *v21;
      }

      DataLength = CMBlockBufferGetDataLength(v20);
      v24 = CMBlockBufferGetDataLength(a4);
      v25 = *v21;
      v26 = CMBlockBufferGetDataLength(a4);
      HTTPStatusCode = CMBlockBufferAppendBufferReference(v25, a4, 0, v26, 0);
      if (HTTPStatusCode)
      {
LABEL_60:
        v14 = 0;
        v18 = 1;
        if (HTTPStatusCode)
        {
          goto LABEL_17;
        }

LABEL_26:
        FigSimpleMutexUnlock();
        if (!v18)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v24 = 0;
      DataLength = 0;
    }

    if ((a5 & 1) != 0 && (*(Storage + 144) = 2, *(Storage + 200) = 0, !*(Storage + 224)))
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0, 0);
    }

    else
    {
      if (!*(Storage + 176))
      {
        if (a3)
        {
          v27 = CFRetain(a3);
        }

        else
        {
          v27 = 0;
        }

        *(Storage + 176) = v27;
      }

      if (!*(Storage + 184))
      {
        if (a7)
        {
          v28 = CFRetain(a7);
        }

        else
        {
          v28 = 0;
        }

        *(Storage + 184) = v28;
      }

      if ((a5 & 1) == 0 && v24 < 1)
      {
        v14 = 0;
        goto LABEL_19;
      }

      HTTPStatusCode = mr_issueDataOutputCallback(v31, DataLength, v24);
    }

    goto LABEL_60;
  }

  v14 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(0);
  if (v14)
  {
    v15 = v31;
    v16 = mr_getStorage(v31);
    v17 = *(v16 + 16);
    *(v16 + 16) = v14;
    CFRetain(v14);
    if (v17)
    {
      CFRelease(v17);
    }

    HTTPStatusCode = mr_clearNetworkRequestState(v15);
    if (!HTTPStatusCode)
    {
      mr_updateNetworkRequestType(v15);
      mr_start(v15);
LABEL_14:
      FigSimpleMutexUnlock();
      goto LABEL_29;
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0, 0);
  }

LABEL_16:
  v18 = 0;
  if (!HTTPStatusCode)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (!v31)
  {
    goto LABEL_26;
  }

  FigCreateErrorForOSStatus(HTTPStatusCode, &cf);
  mr_handleCommonNetworkError(v31, cf);
LABEL_19:
  FigSimpleMutexUnlock();
LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

uint64_t mrdowc_start(const void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  Storage = mrdowc_getStorage(a1);
  v5 = Storage;
  if (!Storage || *(Storage + 96) == 3)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_25;
  }

  FigSimpleMutexLock();
  BlockBufferWithCFDataNoCopy = mrdowc_copyFromCache(a1, &theBuffer);
  if (BlockBufferWithCFDataNoCopy)
  {
    goto LABEL_25;
  }

  v7 = theBuffer;
  if (*(v5 + 80))
  {
    v8 = theBuffer == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v8;
  if (v8)
  {
    FigGetAllocatorForMedia();
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      goto LABEL_25;
    }

    v7 = theBuffer;
  }

  if (!v7 || (DataLength = CMBlockBufferGetDataLength(v7)) == 0)
  {
    *(v5 + 96) = 1;
    v27 = *(v5 + 40);
    if (!v27)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_25;
    }

    v28 = *(v5 + 120);
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v29)
    {
      goto LABEL_26;
    }

    BlockBufferWithCFDataNoCopy = v29(v27, 0, 0x1FFFFFFFFFFFFFLL, a1, mrdowc_start_outputCallbacks, v28);
    if (!BlockBufferWithCFDataNoCopy)
    {
      v30 = *(v5 + 40);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v31)
      {
        BlockBufferWithCFDataNoCopy = v31(v30);
        goto LABEL_25;
      }

LABEL_26:
      v33 = 0;
      v32 = 4294954514;
      goto LABEL_35;
    }

LABEL_25:
    v32 = BlockBufferWithCFDataNoCopy;
    v33 = 0;
    goto LABEL_35;
  }

  *(v5 + 96) = 2;
  if (v9)
  {
    if (!dword_1EAF17308)
    {
      goto LABEL_30;
    }

    v18 = OUTLINED_FUNCTION_4_75(DataLength, v11, v12, v13, v14, v15, v16, v17, v51, v54, v57, SBYTE2(v57), SBYTE3(v57), SHIDWORD(v57));
    v26 = OUTLINED_FUNCTION_437_1(v18, v19, v20, v21, v22, v23, v24, v25, v52, v55, v58, v60, v62, v64);
    if (!OUTLINED_FUNCTION_109_0(v26))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (!dword_1EAF17308)
  {
    goto LABEL_30;
  }

  v34 = OUTLINED_FUNCTION_4_75(DataLength, v11, v12, v13, v14, v15, v16, v17, v51, v54, v57, SBYTE2(v57), SBYTE3(v57), SHIDWORD(v57));
  v42 = OUTLINED_FUNCTION_437_1(v34, v35, v36, v37, v38, v39, v40, v41, v53, v56, v59, v61, v63, v65);
  if (OUTLINED_FUNCTION_109_0(v42))
  {
LABEL_19:
    v67 = 136315650;
    OUTLINED_FUNCTION_139();
    v68 = a1;
    OUTLINED_FUNCTION_0_103();
    OUTLINED_FUNCTION_108();
    _os_log_send_and_compose_impl(v43, v44, v45, v46, v47, v2, v1, v48);
  }

LABEL_29:
  OUTLINED_FUNCTION_7();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_30:
  v33 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v33)
  {
    v49 = *(v5 + 112);
    if (v49)
    {
      if (*v49)
      {
        mr_issueDataOutputCallbackAsync(a1, v33, theBuffer, v49, 1, 1, 0, 0, 0, *(v5 + 120));
      }
    }
  }

  v32 = 0;
LABEL_35:
  FigSimpleMutexUnlock();
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v32;
}

void mrdowc_didProduceDataOutput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, OpaqueCMBlockBuffer *a6, uint64_t a7, uint64_t a8)
{
  Storage = mrdowc_getStorage(a2);
  v16 = mr_getStorage(*(Storage + 40));
  memset(&cf, 0, 24);
  FigSimpleMutexLock();
  v17 = *(Storage + 48);
  if (v17)
  {
    if (a6)
    {
      DataLength = CMBlockBufferGetDataLength(a6);
      CMBlockBufferAppendBufferReference(v17, a6, 0, DataLength, 0);
    }

    if (!a7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a6)
    {
      v19 = CFRetain(a6);
    }

    else
    {
      v19 = 0;
    }

    *(Storage + 48) = v19;
    if (!a7)
    {
      goto LABEL_15;
    }
  }

  if (*(v16 + 152) != 2)
  {
    if (!a3)
    {
      goto LABEL_24;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v23)
    {
      goto LABEL_24;
    }

    v23(a3, @"FHRP_HTTPResponseHeaders", AllocatorForMedia, &cf.info);
    if (!cf.info)
    {
      goto LABEL_24;
    }

LABEL_19:
    v21 = FigCFHTTPCreateURLString(*(v16 + 16));
    v24 = CMBlockBufferGetDataLength(*(Storage + 48));
    if (FigCFHTTPCreateCacheHeaders(v21, v24, cf.info, 0, &cf))
    {
      goto LABEL_31;
    }

    v25 = *(Storage + 88);
    isa = cf.isa;
    *(Storage + 88) = cf.isa;
    if (isa)
    {
      CFRetain(isa);
    }

    if (v25)
    {
      CFRelease(v25);
    }

    goto LABEL_25;
  }

  v20 = FigCustomURLResponseInfoCopyHTTPHeaders();
  if (v20 && v20 != -17360)
  {
LABEL_15:
    v21 = 0;
    goto LABEL_31;
  }

  cf.info = FigCFHTTPCreateHTTPMessageFromHTTPResponseHeaders(cf.data);
  if (cf.info)
  {
    goto LABEL_19;
  }

LABEL_24:
  v21 = 0;
LABEL_25:
  if (!FigCFHTTPCompareURLs(*(Storage + 16), *(v16 + 16)) && !FigCFHTTPCompareURLs(*(Storage + 8), *(v16 + 16)))
  {
    v27 = *(Storage + 8);
    v28 = *(v16 + 16);
    *(Storage + 8) = v28;
    if (v28)
    {
      CFRetain(v28);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

LABEL_31:
  FigSimpleMutexUnlock();
  v29 = FigCFWeakReferenceHolderCopyReferencedObject();
  v30 = v29;
  if (a7)
  {
    if (v29)
    {
      v31 = *(Storage + 112);
      if (v31)
      {
        if (*v31)
        {
          (*v31)(a2, v29, a3, a4, a5, *(Storage + 48), a7, a8);
        }
      }
    }
  }

  if (cf.data)
  {
    CFRelease(cf.data);
  }

  if (cf.info)
  {
    CFRelease(cf.info);
  }

  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void mrdowc_didFail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = *MEMORY[0x1E69E9840];
  Storage = mrdowc_getStorage(a2);
  cf = 0;
  v11 = FigSimpleMutexLock();
  if (a5 == 7)
  {
    if (dword_1EAF17308)
    {
      v23 = OUTLINED_FUNCTION_10_36(v11, v12, v13, v14, v15, v16, v17, v18, v62, v65, v68, SBYTE2(v68), SBYTE3(v68), SHIDWORD(v68));
      v31 = OUTLINED_FUNCTION_15_30(v23, v24, v25, v26, v27, v28, v29, v30, v63, v66, v69, v71, v73, v75);
      if (OUTLINED_FUNCTION_16_1(v31))
      {
        v78 = 136315650;
        v79 = "mrdowc_didFail";
        v80 = 2048;
        v81 = a2;
        OUTLINED_FUNCTION_0_103();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v32, v33, v34, v35, v36, 7, v5, v37);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v45 = mrdowc_copyFromCache(a2, &cf);
    v46 = cf;
    if (v45 || !cf)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (dword_1EAF17308)
      {
        v47 = OUTLINED_FUNCTION_10_36(v46, v38, v39, v40, v41, v42, v43, v44, v62, v65, v68, SBYTE2(v68), SBYTE3(v68), SHIDWORD(v68));
        v55 = OUTLINED_FUNCTION_15_30(v47, v48, v49, v50, v51, v52, v53, v54, v64, v67, v70, v72, v74, v76);
        if (OUTLINED_FUNCTION_16_1(v55))
        {
          v78 = 136315394;
          v79 = "mrdowc_didFail";
          v80 = 2048;
          v81 = a2;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, 7, v5, v61);
        }

        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      a5 = 5;
    }

    else
    {
      a5 = 7;
    }
  }

  FigSimpleMutexUnlock();
  v19 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v19)
  {
    v20 = v19;
    v21 = *(Storage + 112);
    if (v21)
    {
      if (cf && *v21)
      {
        (*v21)(a2, v19, 0, 0, 0);
      }

      else
      {
        v22 = v21[1];
        if (v22)
        {
          v22(a2, v19, a3, a4, a5);
        }
      }
    }

    CFRelease(v20);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mrdowc_copyFromCache(uint64_t a1, void *a2)
{
  Storage = mrdowc_getStorage(a1);
  if (a2 && Storage)
  {
    if (Storage[3])
    {
      v4 = Storage[7];
      if (v4)
      {
        if (*v4)
        {
          (*v4)(Storage[2]);
        }
      }
    }

    *a2 = 0;
  }

  return 0;
}

void mrdowc_handleNotificationAsync(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v18 = 0;
  Storage = mrdowc_getStorage(*a1);
  if (Storage)
  {
    v3 = Storage;
    FigSimpleMutexLock();
    if (*(v3 + 96) == 1)
    {
      if (CFEqual(*(a1 + 16), @"FSC_DidCacheMediaStream"))
      {
        FigCFDictionaryGetInt64IfPresent();
        v4 = *(a1 + 8);
        if (v4)
        {
          if (v19 == *(v3 + 32))
          {
            v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v5)
            {
              if (!v5(v4, &v18) && v18)
              {
                if (dword_1EAF17308)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v7 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  if (OUTLINED_FUNCTION_109_0(v7))
                  {
                    v20 = 136315394;
                    OUTLINED_FUNCTION_139();
                    v21 = v8;
                    OUTLINED_FUNCTION_39();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v9, v10, v11, v12, v13, os_log_and_send_and_compose_flags_and_os_log_type, 0, v14);
                  }

                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                mrdowc_start(*a1);
              }
            }
          }
        }
      }
    }

    FigSimpleMutexUnlock();
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 24);
  if (v16)
  {
    CFRelease(v16);
  }

  CFRelease(*(a1 + 16));
  MallocZoneForMedia = FigGetMallocZoneForMedia();
  malloc_zone_free(MallocZoneForMedia, a1);
}

uint64_t mr_subscribeToOutput_cold_1(void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  if (!v3)
  {
    return 1;
  }

  FigSimpleMutexUnlock();
  return 0;
}

void sad_invalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 64))
  {
    v3 = DerivedStorage;
    *(DerivedStorage + 64) = 1;
    FigRetainProxyInvalidate();
    sad_invalidateAndReleasePump(a1, 1);
    sad_cleanupStreamingCacheFlush(a1);
    v4 = v3[36];
    if (v4)
    {
      CFRelease(v4);
      v3[36] = 0;
    }

    v5 = v3[35];
    if (v5)
    {
      CFRelease(v5);
      v3[35] = 0;
    }

    v6 = v3[37];
    if (v6)
    {
      CFRelease(v6);
      v3[37] = 0;
    }

    v7 = v3[38];
    if (v7)
    {
      CFRelease(v7);
      v3[38] = 0;
    }

    v8 = v3[33];
    if (v8)
    {
      CFRelease(v8);
      v3[33] = 0;
    }

    v9 = v3[34];
    if (v9)
    {
      CFRelease(v9);
      v3[34] = 0;
    }

    v10 = v3[39];
    if (v10)
    {
      CFRelease(v10);
      v3[39] = 0;
    }

    v11 = v3[40];
    if (v11)
    {
      CFRelease(v11);
      v3[40] = 0;
    }

    v12 = v3[42];
    if (v12)
    {
      CFRelease(v12);
      v3[42] = 0;
    }

    v13 = v3[7];
    if (v13)
    {
      CFRelease(v13);
      v3[7] = 0;
    }

    v14 = v3[41];
    if (v14)
    {
      CFRelease(v14);
      v3[41] = 0;
    }

    v15 = v3[2];
    if (v15)
    {
      CFRelease(v15);
      v3[2] = 0;
    }

    v16 = v3[9];
    if (v16)
    {
      CFRelease(v16);
      v3[9] = 0;
    }

    v17 = v3[54];
    if (v17)
    {
      CFRelease(v17);
      v3[54] = 0;
    }

    v18 = v3[53];
    if (v18)
    {
      CFRelease(v18);
      v3[53] = 0;
    }

    v19 = v3[1];
    if (v19)
    {
      CFRelease(v19);
      v3[1] = 0;
    }

    v20 = v3[52];
    if (v20)
    {
      CFRelease(v20);
      v3[52] = 0;
    }

    v21 = v3[51];
    if (v21)
    {
      CFRelease(v21);
      v3[51] = 0;
    }

    v22 = v3[47];
    if (v22)
    {
      CFRelease(v22);
      v3[47] = 0;
    }

    v23 = v3[48];
    if (v23)
    {
      CFRelease(v23);
      v3[48] = 0;
    }

    v24 = v3[49];
    if (v24)
    {
      CFRelease(v24);
      v3[49] = 0;
    }

    v25 = v3[50];
    if (v25)
    {
      CFRelease(v25);
      v3[50] = 0;
    }

    v26 = v3[60];
    if (v26)
    {
      CFRelease(v26);
      v3[60] = 0;
    }

    v27 = v3[59];
    if (v27)
    {
      dispatch_release(v27);
      v3[59] = 0;
    }
  }
}

void sad_invalidateAndReleasePump(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((!a2 || !sad_relinquishAccessToDestinationURL(a1, 0)) && *(DerivedStorage + 32))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 32))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_3_69();
      if (FigNotificationCenterRemoveWeakListener())
      {
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
      if (v10)
      {
        goto LABEL_9;
      }
    }

    FigBytePumpGetFigBaseObject();
    if (v5)
    {
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    *(DerivedStorage + 180) = 0;
  }

LABEL_9:
  v8 = *(DerivedStorage + 32);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 32) = 0;
  }

  v9 = *(DerivedStorage + 40);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 40) = 0;
  }
}

uint64_t sad_cleanupStreamingCacheFlush(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    return 0;
  }

  *(DerivedStorage + 456) = 0;
  *(DerivedStorage + 464) = 0;
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t sad_relinquishAccessToDestinationURL(uint64_t a1, int a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[23])
  {
    return 0;
  }

  v4 = DerivedStorage;
  if (!DerivedStorage[4])
  {
    goto LABEL_8;
  }

  v5 = DerivedStorage[1];
  FigBytePumpGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, 0x1F0B1F098, v5, &cf);
  }

  if (a2)
  {
    v12 = sad_ensureTemporaryMetadataOnlyPumpCache(v4);
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (*(v4 + 368))
    {
LABEL_11:
      v13 = 0;
      *(v4 + 180) = 0;
      goto LABEL_13;
    }

    v12 = FigAssetDownloadCoordinatorRelinquishAccessToURL(*(v4 + 184));
    if (!v12)
    {
      *(v4 + 184) = 0;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  FigBytePumpGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    v13 = 4294954514;
    goto LABEL_13;
  }

  v12 = v11(v10, 0x1F0B1F098, 0);
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_17:
  v13 = v12;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t sad_ensureTemporaryMetadataOnlyPumpCache(uint64_t a1)
{
  v16 = 0;
  cf = 0;
  if (!*(a1 + 32))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cf, v18);
    v13 = v15;
    v3 = 0;
    goto LABEL_10;
  }

  Mutable = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, cf, v18);
    goto LABEL_19;
  }

  CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_MemoryBacking");
  v4 = *(a1 + 8);
  FigAssetGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
LABEL_9:
    v13 = 4294954514;
    goto LABEL_10;
  }

  v8 = v7(v6, @"assetProperty_OriginalNetworkContentURL", v4, &cf);
  if (v8 || (v8 = FigStreamingCacheCreate(*(a1 + 8), cf, v3, &v16), v8))
  {
LABEL_19:
    v13 = v8;
    goto LABEL_10;
  }

  v9 = v16;
  FigBytePumpGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12(v11, 0x1F0B1F098, v9);
  if (!v13)
  {
    *(a1 + 180) = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v13;
}

void sad_durationChangedNote(uint64_t a1, const void *a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, v11);
  }

  else
  {
    if (!*(DerivedStorage + 32))
    {
      goto LABEL_10;
    }

    FigBytePumpGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = 4294954514;
      goto LABEL_9;
    }

    v4 = OUTLINED_FUNCTION_308();
    v6 = v5(v4);
    if (v6)
    {
      v8 = v6;
      goto LABEL_9;
    }

    sad_durationChanged(a2, 0);
  }

  v8 = v7;
  if (v7)
  {
LABEL_9:
    sad_cleanupDownloadWithOSStatus(a2, v8);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

double sad_durationChanged(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    goto LABEL_19;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 92) > 2u)
  {
    return result;
  }

  *(DerivedStorage + 92) = 3;
  if (sad_ensureDuration(a1, a2))
  {
    return result;
  }

  if ((*(v6 + 356) & 0x1D) == 1)
  {
    v7 = *(v6 + 16);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v8)
    {
      v8(v7, @"Duration", 0);
    }

    FigBytePumpGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11 && !v11(v10, 0x1F0B1F398, *MEMORY[0x1E695E4D0]))
    {
      *(v6 + 178) = 1;
      v12 = *(v6 + 24);
      if (v12)
      {
        if (v12 == 1)
        {

          return sad_openPumpOrScheduleIt(a1);
        }
      }

      else
      {

        sad_relinquishAccessToDestinationURL(a1, 1);
      }
    }
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double sad_openPumpOrScheduleIt(const void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 184))
  {

    return sad_registerAssetForDownloadAndOpenPump(a1);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 92) <= 3u)
    {
      *(DerivedStorage + 92) = 4;
      if (*(DerivedStorage + 184))
      {
        OUTLINED_FUNCTION_303();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      else
      {
        v4 = *(DerivedStorage + 72);
        v5 = *DerivedStorage;

        FigAssetDownloadCoordinatorScheduleAccessToURL(a1, v4, v5, 0, sad_openPumpSchedulerCallback);
      }
    }
  }

  return result;
}

double sad_registerAssetForDownloadAndOpenPump(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) == 1 && (v3 = DerivedStorage, *(DerivedStorage + 184)))
  {
    v4 = CMBaseObjectGetDerivedStorage();
    LOBYTE(v28) = 0;
    if (!*(v4 + 177))
    {
      v6 = v4;
      if (!*(v4 + 368))
      {
        if (FigAssetDownloadCoordinatorRegisterAssetForDownloader(*(v4 + 16), a1, *(v4 + 72), *(v4 + 264), *(v4 + 122) != 0, &v28))
        {
          return result;
        }

        *(v6 + 176) = v28;
        *(v6 + 177) = 1;
      }
    }

    if (!*(v3 + 176) && !sad_ensureExtendedAttributesSetOnDestinationURL(v3))
    {
      v7 = CMBaseObjectGetDerivedStorage();
      if (*(v7 + 24) == 1 && (v8 = v7, v9 = *(v7 + 92), v9 > 2))
      {
        if (v9 <= 4)
        {
          *(v7 + 92) = 5;
          if (!sad_ensurePersistentPumpCacheConfiguredForDownload(v7))
          {
            v10 = *(v8 + 312);
            if (!v10 || (v11 = *(v8 + 32), v12 = *(v8 + 296), IsAudioOnly = FigAlternateIsAudioOnly(*(v8 + 312)), (v14 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0) && (v28 = *MEMORY[0x1E6960CC0], *&v29 = *(MEMORY[0x1E6960CC0] + 16), v25 = v28, *&v26 = v29, !v14(v11, v10, v12, 0, IsAudioOnly, 17, &v28, &v25, 0, v8 + 192, 0, v8 + 80)))
            {
              FigBytePumpGetFigBaseObject();
              v16 = v15;
              v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v17)
              {
                if (!v17(v16, 0x1F0B1F3D8, *MEMORY[0x1E695E4D0]))
                {
                  *(v8 + 248) = 0u;
                  *(v8 + 232) = 0u;
                  *(v8 + 216) = 0u;
                  if (*(v8 + 192))
                  {
                    v18 = *(v8 + 32);
                    v19 = *(v8 + 144);
                    v25 = *(v8 + 128);
                    v26 = v19;
                    v27 = *(v8 + 160);
                    v20 = *(*(CMBaseObjectGetVTable() + 16) + 72);
                    if (v20)
                    {
                      v28 = v25;
                      v29 = v26;
                      v30 = v27;
                      if (!v20(v18, &v28, 0, 0, 0, v8 + 80, 0))
                      {
                        v21 = *(v8 + 32);
                        if (v21 && (v22 = CFRetain(v21)) != 0)
                        {
                          v23 = v22;
                          global_queue = dispatch_get_global_queue(0, 0);
                          dispatch_async_f(global_queue, v23, sad_ticklePumpChapterDataLoadDispatch);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_376();
                          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                        }
                      }
                    }
                  }

                  else
                  {
                    return sad_bytePumpReachedEnd(a1, *(v8 + 408));
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_376();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

const void *sad_ensureExtendedAttributesSetOnDestinationURL(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    result = FigSetNameForAssetAtURL(*(a1 + 72), v2);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 320);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 320) = 0;
    }
  }

  v5 = *(a1 + 336);
  if (v5)
  {
    result = FigSetImageDataForAssetAtURL(*(a1 + 72), v5);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 336);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 336) = 0;
    }
  }

  if (!*(a1 + 369) || !*(a1 + 264) || !*(a1 + 328))
  {
    return 0;
  }

  FigAssetDownloadStorageManagementSetContentTypeForAssetAtURL(*(a1 + 72));
  FigAssetDownloadStorageManagementSetDownloadStartDateForAssetAtURL(*(a1 + 72), *(a1 + 264), *(a1 + 328));
  result = *(a1 + 328);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a1 + 328) = 0;
  }

  return result;
}

uint64_t sad_ensurePersistentPumpCacheConfiguredForDownload(uint64_t a1)
{
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  if (!*(a1 + 32) || !*(a1 + 184))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v17 = v31;
LABEL_52:
    v3 = 0;
    goto LABEL_39;
  }

  if (*(a1 + 180))
  {
    v17 = 0;
    goto LABEL_52;
  }

  Mutable = CFDictionaryCreateMutable(*(a1 + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = Mutable;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    goto LABEL_54;
  }

  CFDictionarySetValue(Mutable, @"FSC_DownloadDestinationURL", *(a1 + 72));
  FigBytePumpGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    goto LABEL_38;
  }

  v7 = v6(v5, 0x1F0B1F098, *MEMORY[0x1E695E480], &v33);
  if (v7)
  {
    v8 = v7 == -12783;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (v33)
  {
    v7 = FigStreamingCacheCopyProperty(v33, @"FSC_DownloadDestinationURL", *(a1 + 8), &v35);
    if (v7)
    {
      goto LABEL_54;
    }

    if (FigCFEqual())
    {
      FigBytePumpGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v11)
      {
        goto LABEL_38;
      }

      v7 = v11(v10, 0x1F0B1F098, 0);
      if (v7)
      {
        goto LABEL_54;
      }
    }
  }

  if (!*(a1 + 123))
  {
LABEL_27:
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigAssetGetCMBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, @"assetProperty_DiskBackedStreamingCache", AllocatorForMedia, &v34);
    }

    v22 = *(a1 + 8);
    FigAssetGetCMBaseObject();
    v24 = v23;
    v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v25)
    {
      v7 = v25(v24, @"assetProperty_OriginalNetworkContentURL", v22, &v36);
      if (v7)
      {
        goto LABEL_54;
      }

      v26 = v34;
      if (!v34)
      {
        v7 = FigStreamingCacheCreate(*(a1 + 8), v36, v3, &v34);
        if (v7)
        {
          goto LABEL_54;
        }

        v26 = v34;
      }

      FigBytePumpGetFigBaseObject();
      v28 = v27;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v29)
      {
        v7 = v29(v28, 0x1F0B1F098, v26);
        if (!v7)
        {
          v17 = sad_ensureExtendedAttributesSetOnDestinationURL(a1);
          if (!v17)
          {
            *(a1 + 180) = 1;
          }

          goto LABEL_39;
        }

LABEL_54:
        v17 = v7;
        goto LABEL_39;
      }
    }

LABEL_38:
    v17 = 4294954514;
    goto LABEL_39;
  }

  cf = 0;
  v12 = *(a1 + 8);
  FigAssetGetCMBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v15)
  {
    HardLink = v15(v14, @"assetProperty_CreationURL", v12, &cf);
    if (HardLink)
    {
LABEL_22:
      v17 = HardLink;
      goto LABEL_24;
    }

    if (!FigCFURLIsLocalResource())
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
      goto LABEL_22;
    }

    if (!FigFileDoesFileExist())
    {
      HardLink = FigFoundationCreateHardLink();
      goto LABEL_22;
    }

    v17 = 0;
  }

  else
  {
    v17 = 4294954514;
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_39:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v17;
}

double sad_bytePumpReachedEnd(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  if ((*(DerivedStorage + 192) & ~*(DerivedStorage + 196)) != 0)
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v5 = DerivedStorage;
  if (a2)
  {
    v6 = CFRetain(a2);
    v7 = v6;
    v28 = v6;
    v8 = *(v5 + 416);
    *(v5 + 416) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

LABEL_23:
    sad_cleanupDownload(a1, v7);
    v7 = v28;
    if (!v28)
    {
      return result;
    }

    goto LABEL_24;
  }

  cf = 0;
  v9 = *MEMORY[0x1E695E4C0];
  v29 = *MEMORY[0x1E695E4C0];
  if (*(DerivedStorage + 32))
  {
    v10 = *(DerivedStorage + 8);
    FigBytePumpGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v15 = v13(v12, 0x1F0B1F098, v10, &cf);
      v16 = cf;
      if (!v15)
      {
        FigStreamingCacheCleanupStreamsForPersisting(cf, &v29);
        v17 = 1;
        v16 = cf;
        if (!cf)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v17 = 0;
      if (cf)
      {
LABEL_11:
        CFRelease(v16);
      }
    }

    else
    {
      v17 = 0;
      v15 = -12782;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
    v15 = v25;
    v17 = 0;
  }

LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  if (!v15)
  {
    if (v17)
    {
      v18 = CMBaseObjectGetDerivedStorage();
      if (!*(v18 + 369))
      {
        goto LABEL_21;
      }

      v19 = v18;
      if (!*(v18 + 264))
      {
        goto LABEL_21;
      }

      v20 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v22 = CFDateCreate(v20, Current);
      if (v22)
      {
        v23 = v22;
        FigAssetDownloadStorageManagementSetDownloadCompletionDateForAssetAtURL(*(v19 + 72), *(v19 + 264));
        CFRelease(v23);
LABEL_21:
        v7 = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_303();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
      if (!v26)
      {
        goto LABEL_21;
      }
    }

    else
    {
      result = FigCreateErrorForOSStatus(-16657, &v28);
      v7 = v28;
      if (!v24)
      {
        goto LABEL_23;
      }

      if (v28)
      {
LABEL_24:
        CFRelease(v7);
      }
    }
  }

  return result;
}

double sad_flushStreamingCacheCompletedNote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) || (v7 = DerivedStorage, !*(DerivedStorage + 456)))
  {
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else if (FigCFDictionaryGetInt64IfPresent())
  {
    if (!*(v7 + 456) && !sad_cleanupStreamingCacheFlush(a2))
    {
      sad_finishDownloadAfterStreamingCacheFlush(a2);
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, v10);
  }

  return result;
}

void sad_finishDownloadAfterStreamingCacheFlush(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  sad_invalidateAndReleasePump(a1, 1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_61();
  if (!(!v2 & v1))
  {
    if (dword_1EAF17328)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*(DerivedStorage + 8), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      if (*(DerivedStorage + 416))
      {
        *(DerivedStorage + 24) = 4;
        FigCFDictionarySetValue();
      }

      else
      {
        *(DerivedStorage + 24) = 3;
      }

      CMBaseObjectGetDerivedStorage();
      cf[0] = 0;
      v6 = *MEMORY[0x1E695E480];
      v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      FigAssetGetCMBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(v9, @"LoggingIdentifier", v6, cf);
      }

      FigCFDictionarySetValue();
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      FigCFDictionarySetInt32();
      FigCFDictionarySetUInt64();
      FigLogPowerEvent();
      if (v7)
      {
        CFRelease(v7);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void sad_startOrResumeDownload(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_61();
  if (!(!v4 & v3))
  {
    v5 = v2;
    v6 = *(v2 + 92);
    if (v6 == 5)
    {
      v7 = 0;
      while (1)
      {
        if ((*(v5 + 192) >> v7))
        {
          v8 = *(v5 + 32);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (!v9 || v9(v8, v7))
          {
            break;
          }
        }

        if (++v7 == 3)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      if ((v6 - 3) < 2)
      {
        sad_openPumpOrScheduleIt(a1);
        if (v10)
        {
          return;
        }
      }

      else if (!v6)
      {
        sad_requestPump(v2);
      }

LABEL_14:
      *(v5 + 496) = mach_absolute_time();
      *(v5 + 24) = 1;
    }
  }
}

double sad_requestPump(uint64_t a1)
{
  if (*(a1 + 92))
  {
    v7 = qword_1EAF17320;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294950643, "<dw-media>", 2673, v1);
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      CFRetain(v3);
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      v5 = OUTLINED_FUNCTION_308();
      if (!v6(v5))
      {
        *(a1 + 92) = 1;
      }
    }
  }

  return result;
}

void sad_getPumpReadySchedulerCallback(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = *MEMORY[0x1E695E4C0];
  v128 = 0;
  v129 = v7;
  HIDWORD(v127) = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != FigAssetDownloaderGetTypeID() || (*(DerivedStorage + 184) = a3, *(DerivedStorage + 64)))
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_115:
    v10 = v115;
    v21 = 0;
    v20 = 0;
LABEL_116:
    v19 = 0;
LABEL_117:
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ((*(DerivedStorage + 24) - 6) >= 0xFFFFFFFD)
  {
    v115 = sad_relinquishAccessToDestinationURL(a1, 0);
    goto LABEL_115;
  }

  if (!*(DerivedStorage + 32))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_15;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_3_69();
    v9 = FigNotificationCenterAddWeakListener();
  }

  else
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, allocator, v127);
  }

  v10 = v9;
  if (v9)
  {
    goto LABEL_111;
  }

  v11 = *(DerivedStorage + 32);
  v12 = *(DerivedStorage + 48);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v13)
  {
LABEL_11:
    v19 = 0;
    v20 = 0;
LABEL_12:
    v21 = 0;
LABEL_13:
    v10 = 4294954514;
LABEL_14:
    sad_relinquishAccessToDestinationURL(a1, 0);
    sad_cleanupDownloadWithOSStatus(a1, v10);
    goto LABEL_15;
  }

  v14 = v13(v11, sad_bytePumpFn, 0, v12);
  if (v14)
  {
    goto LABEL_27;
  }

  v15 = *(DerivedStorage + 56);
  FigBytePumpGetFigBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v18)
  {
    goto LABEL_11;
  }

  v14 = v18(v17, 0x1F0B1F0B8, v15);
  if (v14)
  {
    goto LABEL_27;
  }

  if (a2)
  {
    v22 = sad_ensurePersistentPumpCacheConfiguredForDownload(DerivedStorage);
    v10 = v22;
    if (v22 == -16248)
    {
      v10 = sad_ensureTemporaryMetadataOnlyPumpCache(DerivedStorage);
      if (v10)
      {
        goto LABEL_111;
      }
    }

    else if (v22)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v14 = sad_ensureTemporaryMetadataOnlyPumpCache(DerivedStorage);
    if (v14)
    {
LABEL_27:
      v10 = v14;
LABEL_111:
      v19 = 0;
      v20 = 0;
LABEL_112:
      v21 = 0;
      goto LABEL_14;
    }
  }

  FigBytePumpGetFigBaseObject();
  v24 = v23;
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = *MEMORY[0x1E695E4D0];
  v14 = v25(v24, 0x1F0B1F458, *MEMORY[0x1E695E4D0]);
  if (v14)
  {
    goto LABEL_27;
  }

  if (*(DerivedStorage + 181))
  {
    FigBytePumpGetFigBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v29)
    {
      goto LABEL_11;
    }

    v14 = v29(v28, 0x1F0B1F698, v26);
    if (v14)
    {
      goto LABEL_27;
    }
  }

  if (*(DerivedStorage + 182))
  {
    FigBytePumpGetFigBaseObject();
    v31 = v30;
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v32)
    {
      goto LABEL_11;
    }

    v14 = v32(v31, 0x1F0B1F6B8, v26);
    if (v14)
    {
      goto LABEL_27;
    }
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v33 = OUTLINED_FUNCTION_793();
  v14 = v34(v33);
  if (v14)
  {
    goto LABEL_27;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v35 = OUTLINED_FUNCTION_793();
  v14 = v36(v35);
  if (v14)
  {
    goto LABEL_27;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v37 = OUTLINED_FUNCTION_793();
  v14 = v38(v37);
  if (v14)
  {
    goto LABEL_27;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_11;
  }

  v39 = OUTLINED_FUNCTION_793();
  v14 = v40(v39);
  if (v14)
  {
    goto LABEL_27;
  }

  allocatora = *MEMORY[0x1E695E480];
  v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v127 + 4);
  if (!v20)
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, allocatora, v127);
    v10 = v119;
    v21 = 0;
    goto LABEL_116;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_78;
  }

  v41 = OUTLINED_FUNCTION_308();
  v43 = v42(v41);
  if (v43)
  {
    goto LABEL_130;
  }

  if (*(DerivedStorage + 124))
  {
    FigBytePumpGetFigBaseObject();
    v45 = v44;
    v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v46)
    {
      goto LABEL_78;
    }

    v43 = v46(v45, 0x1F0B1F3F8, v26);
    if (v43)
    {
LABEL_130:
      v10 = v43;
      v19 = 0;
      goto LABEL_112;
    }
  }

  v47 = *(DerivedStorage + 264);
  if (!v47)
  {
    goto LABEL_55;
  }

  FigBytePumpGetFigBaseObject();
  v49 = v48;
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v50)
  {
LABEL_78:
    v19 = 0;
    goto LABEL_12;
  }

  v43 = v50(v49, 0x1F0B1F238, v47);
  if (v43)
  {
    goto LABEL_130;
  }

LABEL_55:
  FigBytePumpGetFigBaseObject();
  v52 = v51;
  v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v53)
  {
    goto LABEL_78;
  }

  v43 = v53(v52, 0x1F0B1F638, 0x1F0B1B8B8);
  if (v43)
  {
    goto LABEL_130;
  }

  v21 = CFNumberCreate(allocatora, kCFNumberDoubleType, &kInitialPlaylistDownloadTimeoutSecs);
  if (!v21)
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, allocatora, v127);
    v10 = v120;
    goto LABEL_116;
  }

  FigBytePumpGetFigBaseObject();
  v55 = v54;
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v56)
  {
    goto LABEL_79;
  }

  CFIndexForKeyFromPumpStoreBag = v56(v55, 0x1F0B1F6D8, v21);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  CFIndexForKeyFromPumpStoreBag = OUTLINED_FUNCTION_14_31(CFIndexForKeyFromPumpStoreBag, @"coalesceByteRangedMediaSegmentRequestsForDownload", v58, v59, v60, v61, v62, v63, v121, allocatora, v127, v128, v129, cf, v131[0]);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  v64 = v131[0] ? v26 : v7;
  FigBytePumpGetFigBaseObject();
  v66 = v65;
  v67 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v67)
  {
    goto LABEL_79;
  }

  CFIndexForKeyFromPumpStoreBag = v67(v66, 0x1F0B1F758, v64);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  CFIndexForKeyFromPumpStoreBag = OUTLINED_FUNCTION_14_31(CFIndexForKeyFromPumpStoreBag, @"pipelineMediaSegmentRequestsForDownload", v68, v69, v70, v71, v72, v73, v26, allocatorb, v127, v128, v129, cf, v131[0]);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  v74 = v131[0];
  v75 = v131[0] ? v122 : v7;
  FigBytePumpGetFigBaseObject();
  v77 = v76;
  v78 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v78)
  {
LABEL_79:
    v19 = 0;
    goto LABEL_13;
  }

  CFIndexForKeyFromPumpStoreBag = v78(v77, 0x1F0B1F778, v75);
  if (CFIndexForKeyFromPumpStoreBag)
  {
    goto LABEL_125;
  }

  if (!v74)
  {
    v19 = 0;
    goto LABEL_81;
  }

  CFIndexForKeyFromPumpStoreBag = sad_getCFIndexForKeyFromPumpStoreBag(a1, @"countOfpipelinedMediaSegmentRequestsForDownload", 6, &v128);
  if (CFIndexForKeyFromPumpStoreBag)
  {
LABEL_125:
    v10 = CFIndexForKeyFromPumpStoreBag;
    v19 = 0;
    goto LABEL_14;
  }

  v19 = CFNumberCreate(allocatorc, kCFNumberCFIndexType, &v128);
  if (!v19)
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, allocatorc, v127);
LABEL_109:
    v10 = v114;
    goto LABEL_117;
  }

  FigBytePumpGetFigBaseObject();
  v80 = v79;
  v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v81)
  {
    goto LABEL_13;
  }

  v82 = v81(v80, 0x1F0B1F938, v19);
  if (v82)
  {
LABEL_131:
    v10 = v82;
    goto LABEL_14;
  }

LABEL_81:
  v83 = v122;
  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_13;
  }

  v84 = OUTLINED_FUNCTION_11_38();
  v82 = v85(v84);
  if (v82)
  {
    goto LABEL_131;
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_13;
  }

  v86 = OUTLINED_FUNCTION_11_38();
  v82 = v87(v86);
  if (v82)
  {
    goto LABEL_131;
  }

  if (*(DerivedStorage + 376))
  {
    FigBytePumpGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_13;
    }

    v88 = OUTLINED_FUNCTION_11_38();
    v82 = v89(v88);
    if (v82)
    {
      goto LABEL_131;
    }
  }

  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_13;
  }

  v90 = OUTLINED_FUNCTION_11_38();
  v82 = v91(v90);
  if (v82)
  {
    goto LABEL_131;
  }

  v92 = CMBaseObjectGetDerivedStorage();
  v132 = 0;
  v133 = 0;
  v131[0] = sad_highSpeedHighPowerTransportChangedCallback;
  v131[1] = 0;
  if (*(v92 + 32))
  {
    FigBytePumpGetFigBaseObject();
    v94 = v93;
    v95 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v95)
    {
      if (!v95(v94, 0x1F0B1F898, allocatorc, &v132))
      {
        v96 = v132;
        v97 = *v92;
        v98 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v98)
        {
          if (!v98(v96, a1, v131, v97))
          {
            v99 = v132;
            v100 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v100)
            {
              v101 = v100(v99, 0x1F0B5F6B8, allocatorc, &v133);
              v102 = v133;
              if (!v101)
              {
                *(v92 + 488) = v122 == v133;
              }

              if (v102)
              {
                CFRelease(v102);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_104();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, allocatorc, v127);
  }

  if (v132)
  {
    CFRelease(v132);
  }

  *(DerivedStorage + 192) = 1;
  v103 = *(DerivedStorage + 8);
  FigBytePumpGetFigBaseObject();
  v105 = v104;
  v106 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v106)
  {
    goto LABEL_13;
  }

  v82 = v106(v105, 0x1F0B1F6F8, v103, &v129);
  if (v82)
  {
    goto LABEL_131;
  }

  if (v83 != v129)
  {
    v107 = *(DerivedStorage + 8);
    FigBytePumpGetFigBaseObject();
    v109 = v108;
    v110 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v110)
    {
      goto LABEL_13;
    }

    v111 = v110(v109, @"FBP_Duration", v107, &cf);
    if (v111 == -12783)
    {
      v112 = *(DerivedStorage + 32);
      v113 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (!v113)
      {
        goto LABEL_13;
      }

      v114 = v113(v112);
    }

    else
    {
      v10 = v111;
      if (v111)
      {
        goto LABEL_14;
      }

      FigBytePumpGetFigBaseObject();
      v117 = v116;
      v118 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v118)
      {
        goto LABEL_13;
      }

      v82 = v118(v117, 0x1F0B1F3D8, v83);
      if (v82)
      {
        goto LABEL_131;
      }

      sad_durationChanged(a1, cf);
    }

    goto LABEL_109;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

double sad_bytePumpFn(uint64_t a1, uint64_t a2, const void *a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  cf = 0;
  v15 = sad_copyAssetDownloaderFromRetainProxy(a2, &cf);
  v17 = cf;
  if (!v15)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405C7134C3uLL);
    if (!v19)
    {
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, cf, v26);
      if (!v17)
      {
        return result;
      }

      goto LABEL_14;
    }

    v20 = v19;
    if (v17)
    {
      v21 = CFRetain(v17);
    }

    else
    {
      v21 = 0;
    }

    *v20 = v21;
    if (a3)
    {
      v22 = CFRetain(a3);
    }

    else
    {
      v22 = 0;
    }

    v20[1] = v22;
    *(v20 + 4) = a4;
    *(v20 + 20) = a5;
    if (a12)
    {
      v23 = CFRetain(a12);
    }

    else
    {
      v23 = 0;
    }

    v20[3] = v23;
    dispatch_async_f(*DerivedStorage, v20, sad_bytePumpFnDispatch);
  }

  if (!v17)
  {
    return result;
  }

LABEL_14:

  CFRelease(v17);
  return result;
}

void sad_bytePumpFnDispatch(void *a1)
{
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[1];
  v5 = a1[3];
  if (*(DerivedStorage + 64))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v36);
    goto LABEL_51;
  }

  v6 = DerivedStorage;
  if (!*(DerivedStorage + 32))
  {
    goto LABEL_43;
  }

  v7 = *(a1 + 4);
  v8 = *(a1 + 20);
  if (v4)
  {
    DataLength = CMBlockBufferGetDataLength(a1[1]);
  }

  else
  {
    DataLength = 0;
  }

  v10 = v6 + 16 * v8;
  if ((v7 & 0x100) != 0)
  {
    v11 = 0;
    v12 = *(v10 + 224) + 1;
    *(v10 + 216) = 0;
    *(v10 + 224) = v12;
  }

  else
  {
    v11 = *(v10 + 216);
  }

  *(v10 + 216) = v11 + DataLength;
  *(v6 + 208) += DataLength;
  if ((v7 & 0x400) != 0)
  {
    v14 = (v7 >> 6) & 1;
  }

  else
  {
    *(v6 + 200) += DataLength;
    if ((v7 & 0x40) == 0)
    {
      v13 = v5 == 0;
      goto LABEL_36;
    }

    v15 = *(v6 + 480);
    if (v15)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v16)
      {
        v16(v15, 0x1F0B64618, 0x1F0B39CD8, DataLength);
      }
    }

    number = 0;
    valuePtr = 0;
    if (*(v6 + 32))
    {
      FigBytePumpGetFigBaseObject();
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        if (!v19(v18, 0x1F0B1F738, *MEMORY[0x1E695E480], &number))
        {
          CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
          v20 = *(v6 + 480);
          if (v20)
          {
            v35 = valuePtr;
            v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v21)
            {
              v21(v20, 0x1F0B64618, 0x1F0B653F8, v35, 0);
            }
          }
        }
      }

      if (number)
      {
        CFRelease(number);
      }
    }

    if (!*(v6 + 488))
    {
      goto LABEL_31;
    }

    v22 = *(v6 + 480);
    if (!v22)
    {
      goto LABEL_31;
    }

    v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v23)
    {
      goto LABEL_31;
    }

    v14 = 1;
    if (!v23(v22))
    {
      v24 = *(v6 + 480);
      if (v24)
      {
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v25)
        {
          v25(v24, 0x1F0B64618, 0x1F0B654B8, DataLength);
        }
      }

LABEL_31:
      v14 = 1;
    }
  }

  v13 = v5 == 0;
  if (v14 && !v5)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    if (FigGetUpTimeNanoseconds() - *(v26 + 440) >= 500000001)
    {
      v28 = sad_sendLoadedTimeRangesChangeNoteIfChanged(v2);
      if (v28)
      {
        goto LABEL_54;
      }
    }

    v13 = 1;
  }

LABEL_36:
  if ((v7 & 2) == 0)
  {
    goto LABEL_43;
  }

  if (!v13)
  {
    if (!FigCFErrorIsEqualToOSStatus(v5, @"CoreMediaErrorDomain", -15642))
    {
      v27 = *(v6 + 408);
      *(v6 + 408) = v5;
      CFRetain(v5);
      if (v27)
      {
        CFRelease(v27);
      }
    }

    goto LABEL_42;
  }

  v28 = sad_sendLoadedTimeRangesChangeNoteIfChanged(v2);
  if (!v28)
  {
LABEL_42:
    v29 = *(v6 + 192);
    v30 = *(v6 + 196) | (1 << v8);
    *(v6 + 196) = v30;
    if ((v29 & ~v30) != 0)
    {
      goto LABEL_43;
    }

    sad_bytePumpReachedEnd(v2, *(v6 + 408));
LABEL_51:
    v32 = v31;
    if (!v31)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

LABEL_54:
  v32 = v28;
LABEL_52:
  sad_cleanupDownloadWithOSStatus(v2, v32);
LABEL_43:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t sad_sendLoadedTimeRangesChangeNoteIfChanged(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(MEMORY[0x1E6960CA8] + 16);
  *&v84.start.value = *MEMORY[0x1E6960CA8];
  *&v84.start.epoch = v3;
  *&v84.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
  v4 = sad_copyLoadedTimeRanges(DerivedStorage, &cf);
  if (v4)
  {
    v5 = v4;
    goto LABEL_4;
  }

  if (FigCFEqual())
  {
    v5 = 0;
LABEL_4:
    v6 = 0;
    goto LABEL_60;
  }

  v7 = cf;
  v8 = MEMORY[0x1E695E480];
  v82 = DerivedStorage;
  v65 = v1;
  if (!*(DerivedStorage + 432))
  {
    if (cf)
    {
      v42 = CFRetain(cf);
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_47;
  }

  theArray = *(DerivedStorage + 432);
  v9 = MEMORY[0x1E6960C70];
  v10 = *MEMORY[0x1E6960C70];
  v96 = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 8);
  v97 = v11;
  if (!cf || (v12 = *MEMORY[0x1E695E480], (Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0])) == 0))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v5 = v63;
    v42 = 0;
    if (!v63)
    {
      goto LABEL_47;
    }

    goto LABEL_72;
  }

  v70 = v10;
  allocator = v12;
  v69 = v11;
  v72 = Mutable;
  v14 = *(v9 + 12);
  v15 = *(v9 + 16);
  v68 = v14;
  v67 = v15;
  if (CFArrayGetCount(v7) < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = theArray;
    v73 = v7;
    while (v16 < CFArrayGetCount(v18))
    {
      v80 = v15;
      memset(&v90, 0, sizeof(v90));
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v17);
      v20 = CFArrayGetValueAtIndex(v18, v16);
      if (FigCFEqual())
      {
        ++v17;
        ++v16;
        v15 = v80;
      }

      else
      {
        CMTimeRangeMakeFromDictionary(&range1, ValueAtIndex);
        end.value = range1.start.value;
        flags = range1.start.flags;
        end.timescale = range1.start.timescale;
        epoch = range1.start.epoch;
        value = range1.duration.value;
        timescale = range1.duration.timescale;
        v25 = range1.duration.flags;
        v26 = range1.duration.epoch;
        CMTimeRangeMakeFromDictionary(&range1, v20);
        v94 = range1.start.value;
        v95 = range1.start.timescale;
        if ((flags & 1) == 0)
        {
          goto LABEL_66;
        }

        v27 = v25;
        if ((v25 & 1) == 0)
        {
          goto LABEL_66;
        }

        if (v26)
        {
          goto LABEL_66;
        }

        if (value < 0)
        {
          goto LABEL_66;
        }

        v28 = range1.start.flags;
        if ((range1.start.flags & 1) == 0)
        {
          goto LABEL_66;
        }

        v29 = range1.duration.flags;
        if ((range1.duration.flags & 1) == 0 || range1.duration.epoch || range1.duration.value < 0)
        {
          goto LABEL_66;
        }

        v30 = range1.duration.timescale;
        range2.duration.epoch = 0;
        range1.start.value = end.value;
        range1.start.timescale = end.timescale;
        range1.start.flags = flags;
        range1.start.epoch = epoch;
        range1.duration.value = value;
        range1.duration.timescale = timescale;
        range1.duration.flags = v27;
        range1.duration.epoch = 0;
        OUTLINED_FUNCTION_9_37();
        v76 = v31;
        v78 = v16;
        range2.start.epoch = v31;
        range2.duration.value = v32;
        range2.duration.timescale = v30;
        range2.duration.flags = v29;
        v74 = value;
        v33 = epoch;
        v34 = v32;
        v36 = v35;
        if (CMTimeRangeEqual(&range1, &range2))
        {
          ++v17;
          v16 = v78 + 1;
          v18 = theArray;
          v15 = v80;
          v7 = v73;
        }

        else
        {
          OUTLINED_FUNCTION_2_93();
          range1.start.epoch = v33;
          OUTLINED_FUNCTION_9_37();
          range2.start.epoch = v76;
          if (CMTimeCompare(&range1.start, &range2.start) < 0)
          {
            HIDWORD(v64) = v29;
            memset(&range2, 0, 24);
            if (v14)
            {
              time2.epoch = v80;
              time1.value = end.value;
              time1.timescale = end.timescale;
              time1.flags = flags;
              time1.epoch = v33;
              time2.value = v96;
              time2.timescale = v97;
              time2.flags = v14;
              CMTimeMaximum(&range1.start, &time1, &time2);
              v92 = range1.start.value;
              v37 = range1.start.flags;
              v93 = range1.start.timescale;
              v38 = range1.start.epoch;
            }

            else
            {
              v92 = end.value;
              v93 = end.timescale;
              v37 = flags;
              v38 = v33;
            }

            time1.value = v94;
            time1.timescale = v95;
            time1.flags = v28;
            time1.epoch = v76;
            OUTLINED_FUNCTION_2_93();
            range1.start.epoch = v33;
            range1.duration.value = v74;
            range1.duration.timescale = timescale;
            range1.duration.flags = v39;
            range1.duration.epoch = 0;
            CMTimeClampToRange(&range2.start, &time1, &range1);
            range1.start.value = v92;
            range1.start.timescale = v93;
            range1.start.flags = v37;
            range1.start.epoch = v38;
            time1 = range2.start;
            CMTimeRangeFromTimeToTime(&v90, &range1.start, &time1);
            range1 = v90;
            v40 = CMTimeRangeCopyAsDictionary(&range1, allocator);
            if (!v40)
            {
LABEL_66:
              OUTLINED_FUNCTION_239();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              v5 = v61;
              v42 = 0;
              DerivedStorage = v82;
              v8 = MEMORY[0x1E695E480];
              v43 = v72;
              goto LABEL_46;
            }

            v41 = v40;
            CFArrayAppendValue(v72, v40);
            CFRelease(v41);
            v29 = HIDWORD(v64);
          }

          OUTLINED_FUNCTION_2_93();
          range1.start.epoch = v33;
          range1.duration.value = v74;
          range1.duration.timescale = timescale;
          range1.duration.flags = v36;
          range1.duration.epoch = 0;
          CMTimeRangeGetEnd(&range2.start, &range1);
          OUTLINED_FUNCTION_8_35();
          range1.start.epoch = v76;
          range1.duration.value = v34;
          range1.duration.timescale = v30;
          range1.duration.flags = v29;
          range1.duration.epoch = 0;
          CMTimeRangeGetEnd(&time1, &range1);
          v16 = v78;
          v7 = v73;
          if (CMTimeCompare(&range2.start, &time1) <= 0)
          {
            v96 = v70;
            v14 = v68;
            v97 = v69;
            ++v17;
            v15 = v67;
          }

          else
          {
            OUTLINED_FUNCTION_8_35();
            range1.start.epoch = v76;
            range1.duration.value = v34;
            range1.duration.timescale = v30;
            range1.duration.flags = v29;
            range1.duration.epoch = 0;
            CMTimeRangeGetEnd(&range2.start, &range1);
            v96 = range2.start.value;
            v14 = range2.start.flags;
            v97 = range2.start.timescale;
            v15 = range2.start.epoch;
            v16 = v78 + 1;
          }

          v18 = theArray;
        }
      }

      if (v17 >= CFArrayGetCount(v7))
      {
        break;
      }
    }
  }

  v43 = v72;
  if (v17 >= CFArrayGetCount(v7))
  {
LABEL_44:
    v42 = CFRetain(v72);
    v5 = 0;
    goto LABEL_45;
  }

  while (1)
  {
    v44 = CFArrayGetValueAtIndex(v7, v17);
    if (v14)
    {
      break;
    }

    CFArrayAppendValue(v72, v44);
LABEL_43:
    if (++v17 >= CFArrayGetCount(v7))
    {
      goto LABEL_44;
    }
  }

  CMTimeRangeMakeFromDictionary(&v90, v44);
  *&range2.start.value = *&v90.start.value;
  range2.start.epoch = v90.start.epoch;
  end.value = v96;
  end.timescale = v97;
  end.flags = v14;
  end.epoch = v15;
  CMTimeMaximum(&time1, &range2.start, &end);
  range2 = v90;
  CMTimeRangeGetEnd(&time2, &range2);
  range2.start = time1;
  end = time2;
  CMTimeRangeFromTimeToTime(&range1, &range2.start, &end);
  range2 = range1;
  v45 = CMTimeRangeCopyAsDictionary(&range2, allocator);
  if (v45)
  {
    v46 = v45;
    CFArrayAppendValue(v72, v45);
    CFRelease(v46);
    v96 = v70;
    v97 = v69;
    v14 = v68;
    v15 = v67;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_239();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v1, v66);
  v5 = v62;
  v42 = 0;
LABEL_45:
  DerivedStorage = v82;
  v8 = MEMORY[0x1E695E480];
LABEL_46:
  CFRelease(v43);
  if (v5)
  {
LABEL_72:
    v49 = v42;
    v6 = 0;
    goto LABEL_58;
  }

LABEL_47:
  v47 = sad_ensureDuration(a1, 0);
  if (v47)
  {
    v5 = v47;
    goto LABEL_72;
  }

  v79 = *MEMORY[0x1E6960CC0];
  *&v90.start.value = *MEMORY[0x1E6960CC0];
  v77 = *(MEMORY[0x1E6960CC0] + 16);
  v90.start.epoch = v77;
  *&range1.start.value = *(DerivedStorage + 344);
  range1.start.epoch = *(DerivedStorage + 360);
  CMTimeRangeMake(&v84, &v90.start, &range1.start);
  if (CFArrayGetCount(v42) < 1)
  {
LABEL_53:
    v51 = cf;
    v52 = CMBaseObjectGetDerivedStorage();
    *&v90.start.value = v79;
    v90.start.epoch = v77;
    sad_getSumOfTimeDurationFromTimeRanges(v51, &v90.start);
    v53 = v52[48];
    v54 = v52[39];
    v55 = v52[36];
    v56 = v52[26];
    *&range1.start.value = *&v90.start.value;
    range1.start.epoch = v90.start.epoch;
    FigStreamingAssetProgressMonitorUpdateMediaDownloadedTimeAndBytes(v53, v54, v55, v56, &range1.start.value);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v58 = *(v82 + 432);
    v59 = cf;
    *(v82 + 432) = cf;
    *(v82 + 440) = UpTimeNanoseconds;
    if (v59)
    {
      CFRetain(v59);
    }

    v49 = v42;
    if (v58)
    {
      CFRelease(v58);
    }

    v6 = 0;
    v5 = 0;
  }

  else
  {
    v48 = 0;
    v81 = *v8;
    while (1)
    {
      v49 = v42;
      CFArrayGetValueAtIndex(v42, v48);
      v6 = CFDictionaryCreateMutable(v81, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v6)
      {
        break;
      }

      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v90 = v84;
      FigCFDictionarySetCMTimeRange();
      CMNotificationCenterGetDefaultLocalCenter();
      v50 = FigDispatchAsyncPostNotification();
      if (v50)
      {
        goto LABEL_68;
      }

      CFRelease(v6);
      ++v48;
      v42 = v49;
      if (v48 >= CFArrayGetCount(v49))
      {
        goto LABEL_53;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v66);
LABEL_68:
    v5 = v50;
  }

LABEL_58:
  if (v49)
  {
    CFRelease(v49);
  }

LABEL_60:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t sad_highSpeedHighPowerTransportChangedCallback(uint64_t a1, uint64_t a2, char a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!*(result + 64))
  {
    *(result + 488) = a3;
  }

  return result;
}

void sad_bossFilteredAlternatesChangedCallback(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual() || !*(DerivedStorage + 32))
  {
    return;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v27 = 0;
  v25 = *MEMORY[0x1E6960CC0];
  *&v26.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v26.epoch = v7;
  if (!*(v6 + 32) || (v8 = v6, !*(v6 + 312)) && (!a3 || CFArrayGetCount(a3) <= 0))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_33;
  }

  if ((*(v8 + 24) - 6) <= 0xFFFFFFFC)
  {
    value = *(v8 + 312);
    if (value && !*(v8 + 392) || (context.start.value = 0, v33.length = CFArrayGetCount(a3), v33.location = 0, CFArrayApplyFunction(a3, v33, sad_getMaxBandwidthAlternateApplierFunc, &context), (value = context.start.value) != 0))
    {
      IsAudioOnly = FigAlternateIsAudioOnly(value);
      v11 = CMBaseObjectGetDerivedStorage();
      v32 = 0;
      v12 = *(MEMORY[0x1E6960CA8] + 16);
      *&context.start.value = *MEMORY[0x1E6960CA8];
      *&context.start.epoch = v12;
      *&context.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
      *&v30.value = v25;
      v30.epoch = v7;
      v13 = sad_copyLoadedTimeRanges(v11, &v32);
      v14 = v32;
      if (!v13)
      {
        if (v32)
        {
          Count = CFArrayGetCount(v32);
          v14 = v32;
          if (Count >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v32, 0);
            CMTimeRangeMakeFromDictionary(&context, ValueAtIndex);
            range = context;
            CMTimeRangeGetEnd(&v30, &range);
            v14 = v32;
          }
        }

        v26 = v30;
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v13)
      {
        goto LABEL_34;
      }

      v17 = *(v8 + 32);
      v18 = *(v8 + 296);
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v19)
      {
        goto LABEL_30;
      }

      *&context.start.value = *&v26.value;
      context.start.epoch = v26.epoch;
      *&range.start.value = v25;
      range.start.epoch = v7;
      v20 = v19(v17, value, v18, 0, IsAudioOnly, 17, &context, &range, 0, v8 + 192, &v27, v8 + 80);
      if (!v20)
      {
        v21 = *(v8 + 312);
        if (v21 != value)
        {
          *(v8 + 312) = value;
          CFRetain(value);
          if (v21)
          {
            CFRelease(v21);
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_33:
    v13 = v20;
    goto LABEL_34;
  }

LABEL_24:
  if (*(v8 + 92) > 1u)
  {
    v13 = 0;
    goto LABEL_34;
  }

  *(v8 + 92) = 2;
  FigBytePumpGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v22 = OUTLINED_FUNCTION_308();
    v24 = v23(v22);
    if (v24)
    {
      if (v24 == -12783)
      {
        v13 = 0;
      }

      else
      {
        v13 = v24;
      }

      goto LABEL_34;
    }

    sad_durationChanged(a2, cf);
    goto LABEL_33;
  }

LABEL_30:
  v13 = 4294954514;
LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    sad_cleanupDownloadWithOSStatus(a2, v13);
  }
}

void sad_bossMediaSelectionArrayChangedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return;
  }

  v6 = DerivedStorage;
  if (*(DerivedStorage + 296))
  {
    return;
  }

  cf = 0;
  v7 = FigAutomaticMediaSelectionCreateSelectedMediaArrayForCriteria(a3, *(DerivedStorage + 288), *(DerivedStorage + 280), 0, 0, 0, &cf);
  v8 = cf;
  if (!v7)
  {
    if (cf)
    {
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, cf, v13);
    v7 = v10;
    v8 = cf;
    if (v7)
    {
      goto LABEL_8;
    }

    if (cf)
    {
LABEL_6:
      v9 = CFRetain(v8);
      v8 = cf;
    }

    else
    {
      v9 = 0;
    }

    v7 = 0;
    *(v6 + 296) = v9;
  }

LABEL_8:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7 || (CMNotificationCenterGetDefaultLocalCenter(), v7 = FigDispatchAsyncPostNotification(), v7))
  {
    sad_cleanupDownloadWithOSStatus(a2, v7);
  }
}

double sad_addStableRenditionIDFilterForMediaType(uint64_t a1, unsigned int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = 0;
  cf = 0;
  if (a2 == 1935832172)
  {
    v5 = *(DerivedStorage + 304);
  }

  PersistentIDForMediaTypeInMediaSelectionArray = FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(*(DerivedStorage + 288), a2, v5);
  if (PersistentIDForMediaTypeInMediaSelectionArray)
  {
    v8 = PersistentIDForMediaTypeInMediaSelectionArray;
    if (a2 != 1936684398 || !FigAlternateMightHaveDummyAudioGroup(*(v4 + 312)))
    {
      StableStreamIdentifierForMediaSubstream = FigAlternateGetStableStreamIdentifierForMediaSubstream(*(v4 + 312), a2, v8);
      if (StableStreamIdentifierForMediaSubstream)
      {
        if (!FigAlternateAllowListWithStableRenditionIDFilterCreate(*(v4 + 8), v8, StableStreamIdentifierForMediaSubstream, a2, 0x374u, &cf) && !FigAlternateSelectionBossAddFilter(*(v4 + 40), cf))
        {
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_239();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

CFTypeRef sad_copyPropertyDispatch(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    result = 0;
    v7 = -16651;
    goto LABEL_9;
  }

  v4 = DerivedStorage;
  if (!CFEqual(@"AssetDownloaderProperty_Status", v2))
  {
    if (CFEqual(@"AssetDownloaderProperty_Asset", v2))
    {
      result = v4[2];
    }

    else
    {
      if (CFEqual(@"AssetDownloaderProperty_LoadedTimeRanges", v2))
      {
        v7 = sad_copyLoadedTimeRanges(v4, &v10);
        result = v10;
        goto LABEL_9;
      }

      if (CFEqual(@"AssetDownloaderProperty_ResolvedSelectedMediaArray", v2))
      {
        result = v4[37];
        if (!result)
        {
          goto LABEL_8;
        }
      }

      else if (CFEqual(@"AssetDownloaderProperty_DestinationURL", v2))
      {
        result = v4[9];
      }

      else
      {
        if (CFEqual(@"AssetDownloaderProperty_DownloadedBytes", v2))
        {
          result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4 + 25);
          goto LABEL_8;
        }

        if (CFEqual(@"AssetDownloaderProperty_ClientBundleIdentifier", v2))
        {
          result = v4[33];
          if (!result)
          {
            goto LABEL_8;
          }
        }

        else if (CFEqual(@"AssetDownloaderProperty_HasAccessToDestinationURL", v2))
        {
          v8 = MEMORY[0x1E695E4D0];
          if (!v4[23])
          {
            v8 = MEMORY[0x1E695E4C0];
          }

          result = *v8;
          if (!*v8)
          {
            goto LABEL_8;
          }
        }

        else if (CFEqual(@"AssetDownloaderProperty_SelectedAlternate", v2))
        {
          result = v4[39];
          if (!result)
          {
            goto LABEL_8;
          }
        }

        else if (CFEqual(@"AssetDownloaderProperty_SelectedMediaArray", v2))
        {
          result = v4[36];
          if (!result)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (!CFEqual(@"AssetDownloaderProperty_FinalError", v2))
          {
            result = 0;
            v7 = -12784;
            goto LABEL_9;
          }

          result = v4[52];
          if (!result)
          {
            goto LABEL_8;
          }
        }
      }
    }

    result = CFRetain(result);
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v4 + 3);
  if (result)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_243();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  v7 = v6;
  result = 0;
LABEL_9:
  *(a1 + 32) = v7;
  *(a1 + 16) = result;
  return result;
}

void sad_startDispatch(uint64_t *a1)
{
  if (*(OUTLINED_FUNCTION_10_37(a1) + 64))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
    goto LABEL_9;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_61();
  if (!(!v5 & v4))
  {
    v6 = v3;
    *(v3 + 24) = 1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 328))
    {
      v8 = DerivedStorage;
      v9 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v11 = CFDateCreate(v9, Current);
      *(v8 + 328) = v11;
      if (!v11)
      {
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v17);
        v12 = v14;
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    if (*(v6 + 176))
    {
      goto LABEL_6;
    }

    sad_startOrResumeDownload(v2);
LABEL_9:
    v12 = v13;
    if (!v13)
    {
      goto LABEL_7;
    }

LABEL_10:
    sad_cleanupDownloadWithOSStatus(v2, v12);
    goto LABEL_7;
  }

LABEL_6:
  LODWORD(v12) = 0;
LABEL_7:
  *(v1 + 8) = v12;
}

void sad_pauseDispatch(uint64_t a1)
{
  v2 = *a1;
  if (*(CMBaseObjectGetDerivedStorage() + 64))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    v5 = v15;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24) != 1)
  {
    LODWORD(v5) = 0;
    goto LABEL_18;
  }

  v4 = DerivedStorage;
  *(DerivedStorage + 176) = 0;
  *(DerivedStorage + 448) = FigGetUpTimeNanoseconds();
  if (*(v4 + 370))
  {
    sad_stopDownloading(v2);
    goto LABEL_5;
  }

  if (*(v4 + 32))
  {
    for (i = 0; i != 3; ++i)
    {
      if ((*(v4 + 192) >> i))
      {
        v7 = *(v4 + 32);
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v8)
        {
          v5 = 4294954514;
          goto LABEL_17;
        }

        v9 = v8(v7, i, 1);
        if (v9)
        {
          goto LABEL_25;
        }
      }
    }
  }

  if (!*(v4 + 184))
  {
    goto LABEL_5;
  }

  v10 = CMBaseObjectGetDerivedStorage();
  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (v11)
  {
    v12 = v11;
    if (v2)
    {
      v13 = CFRetain(v2);
    }

    else
    {
      v13 = 0;
    }

    *v12 = v13;
    v12[1] = 5000000000;
    v14 = dispatch_time(0, 5000000000);
    dispatch_after_f(v14, *v10, v12, sad_stopDownloadingAfterDelayDispatch);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_243();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
  if (v9)
  {
LABEL_25:
    v5 = v9;
LABEL_17:
    sad_cleanupDownloadWithOSStatus(v2, v5);
    goto LABEL_18;
  }

LABEL_5:
  mach_absolute_time();
  LODWORD(v5) = 0;
  *(v4 + 504) += FigHostTimeToNanoseconds() / 1000000;
  *(v4 + 24) = 2;
LABEL_18:
  *(a1 + 8) = v5;
}

void sad_pauseForPlaybackDispatch(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_37(a1);
  if (*(v3 + 64))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    v4 = v5;
    if (v5)
    {
      sad_cleanupDownloadWithOSStatus(v2, v5);
    }
  }

  else
  {
    if (!*(v3 + 176))
    {
      *(v3 + 176) = 1;
      sad_stopDownloading(v2);
    }

    v4 = 0;
  }

  *(v1 + 8) = v4;
}

void sad_resumeAfterPlaybackDispatch(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_10_37(a1);
  if (*(v3 + 64))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
    v5 = v7;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = v3;
    if (*(v3 + 176))
    {
      *(v3 + 176) = 0;
      if (*(v3 + 24) == 1)
      {
        sad_startOrResumeDownload(v2);
        if (v6)
        {
          v5 = v6;
LABEL_11:
          sad_cleanupDownloadWithOSStatus(*v1, v5);
          goto LABEL_7;
        }
      }

      if (*(v4 + 179))
      {
        sad_loadMetadataGuts(v2);
      }
    }

    LODWORD(v5) = 0;
  }

LABEL_7:
  *(v1 + 8) = v5;
}

double sad_loadMetadataGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 178) && !*(DerivedStorage + 92))
  {

    return sad_requestPump(DerivedStorage);
  }

  return result;
}

void sad_stopDownloading_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 424);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 424) = 0;
  }

  sad_copyLoadedTimeRanges(a1, (a1 + 424));
  sad_invalidateAndReleasePump(a2, *(a1 + 176) == 0);
  *(a1 + 92) = 0;
  *(a1 + 196) = 0;
}

BOOL sad_pumpTransferCallback_cold_1(const void *a1, uint64_t a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
  v5 = v4;
  if (a1)
  {
    CFRelease(a1);
  }

  return !a2 || v5 == 0;
}

void sad_getCFIndexForKeyFromPumpStoreBag_cold_1(uint64_t *a1, CFTypeRef cf)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v4)
    {
      v4(v3, 0x1F0B64618, 0x1F0B1C5B8, cf, 0);
    }
  }

  CFRelease(cf);
}

void FigCSSParserNodeCreate_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

void FigCSSParserNodeCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSParserNodeGetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSParserNodeGetNodeType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetPrelude_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetPrelude_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetPrelude_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetSimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetSimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetSimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSAtRuleParserNodeSetSimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeCopyPrelude_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeCopyPrelude_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetPrelude_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetPrelude_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetPrelude_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeCopySimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSQualifiedRuleParserNodeSetSimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyName_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeSetName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeSetName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeSetName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSDeclarationParserNodeSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeGetType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeGetType_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeGetType_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyPreservedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyPreservedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyPreservedToken_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyPreservedToken_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetPreservedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetPreservedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetPreservedToken_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyFunctionNode_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyFunctionNode_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyFunctionNode_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopyFunctionNode_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetFunctionNode_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetFunctionNode_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetFunctionNode_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopySimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopySimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopySimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeCopySimpleBlock_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetSimpleBlock_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetSimpleBlock_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetSimpleBlock_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSComponentValueParserNodeSetSimpleBlock_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyName_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeSetName_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeSetName_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeSetName_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSFunctionParserNodeSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyAssociatedToken_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeSetAssociatedToken_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeCopyValue_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeSetValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_95();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeSetValue_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSSimpleBlockParserNodeSetValue_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigByteStreamRemoteCreateFromByteStreamDetails(uint64_t a1, void *a2, CFTypeRef *a3)
{
  if (qword_1ED4CACB0 != -1)
  {
    dispatch_once(&qword_1ED4CACB0, &__block_literal_global_41);
  }

  v5 = _MergedGlobals_67;
  if (_MergedGlobals_67)
  {
    return v5;
  }

  if (!a2)
  {
    goto LABEL_35;
  }

  v24 = a3;
  FigXPCMessageCopyCFURL();
  v6 = xpc_dictionary_get_BOOL(a2, "Writable");
  v7 = xpc_dictionary_get_BOOL(a2, "UseFigReadCache");
  v8 = xpc_dictionary_get_BOOL(a2, "EnableFigReadCache");
  v9 = xpc_dictionary_get_BOOL(a2, "EntireLengthAvailable");
  int64 = xpc_dictionary_get_int64(a2, "EntireLength");
  uint64 = xpc_dictionary_get_uint64(a2, "ObjectID");
  CMByteStreamGetClassID();
  v12 = CMDerivedObjectCreate();
  if (v12)
  {
    return v12;
  }

  v23 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (xpc_dictionary_get_BOOL(a2, "ReadsMayBlockIndefinitely"))
  {
    SecondaryConnection = FigXPCRemoteClientCreateSecondaryConnection();
  }

  else
  {
    SecondaryConnection = FigXPCRemoteClientCopyPrimaryConnection();
  }

  v5 = SecondaryConnection;
  if (SecondaryConnection)
  {
    return v5;
  }

  *(DerivedStorage + 8) = CFRetain(0);
  *(DerivedStorage + 16) = 0;
  *(DerivedStorage + 169) = v6;
  *(DerivedStorage + 168) = v9;
  *(DerivedStorage + 160) = int64;
  *DerivedStorage = uint64;
  if (!xpc_dictionary_get_value(a2, "FileDescriptor"))
  {
    v12 = FigXPCConnectionCopyMemoryRecipientForConnectedProcess();
    if (!v12)
    {
      v12 = FigMemoryRecipientCopyBlockBufferFromXPCMessage();
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    return v12;
  }

  v15 = xpc_dictionary_dup_fd(a2, "FileDescriptor");
  if (v15 == -1)
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v12;
  }

  v16 = v15;
  CMBaseObjectGetDerivedStorage();
  v17 = FigFileWrapDarwinFileDesc();
  if (v17)
  {
    v5 = v17;
    close(v16);
  }

  else
  {
    if (v6)
    {
      ByteStreamForOpenFileAssumingOwnership = FigByteStreamCreateFromOpenFileAssumingOwnership();
    }

    else
    {
      FigGetDefaultManagedFilePool();
      ByteStreamForOpenFileAssumingOwnership = FigManagedFilePoolCreateByteStreamForOpenFileAssumingOwnership();
    }

    if (ByteStreamForOpenFileAssumingOwnership)
    {
      v5 = ByteStreamForOpenFileAssumingOwnership;
    }

    else
    {
      v5 = 0;
    }
  }

  FigFileForkClose();
  if (!v5)
  {
    if (v7 && !*(DerivedStorage + 169))
    {
      v19 = FigCachedFileByteStreamCreateFromByteStream(0, 0, *MEMORY[0x1E695E480], (DerivedStorage + 24));
      if (v19)
      {
        return v19;
      }

      if (v23)
      {
        CMBaseObject = CMByteStreamGetCMBaseObject();
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v21)
        {
          v21(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v19 = FigNotificationCenterAddWeakListener();
      if (v19)
      {
        return v19;
      }
    }

    else
    {
      *(DerivedStorage + 24) = CFRetain(0);
    }

LABEL_30:
    v19 = FigXPCRemoteClientAssociateObject();
    if (!v19)
    {
      if (!FigServer_IsServerProcess() || (v19 = FigXPCConnectionSetCustomServerTimeoutPerConnection(), !v19))
      {
        v5 = 0;
        *v24 = 0;
        return v5;
      }
    }

    return v19;
  }

  return v5;
}

const void *remoteByteStream_localCachedFileByteStream_CacheChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FigCFDictionaryGetValue();
  if (result)
  {
    v6 = result;
    v7 = CFGetTypeID(result);
    result = CFBooleanGetTypeID();
    if (v7 == result)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v10 = *(VTable + 8);
      result = (VTable + 8);
      v11 = *(v10 + 56);
      if (v11)
      {

        return v11(CMBaseObject, 0x1F0B330B8, v6);
      }
    }
  }

  return result;
}

uint64_t FigByteStreamRemoteCreateWithURL(uint64_t a1, const __CFURL *a2, unsigned int a3, void *a4)
{
  v16[0] = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, 0);
    goto LABEL_17;
  }

  if (qword_1ED4CACB0 != -1)
  {
    dispatch_once(&qword_1ED4CACB0, &__block_literal_global_41);
  }

  v8 = _MergedGlobals_67;
  if (!_MergedGlobals_67)
  {
    v9 = FigXPCRemoteClientCopyMemoryRecipient();
    if (!v9)
    {
      v9 = FigXPCCreateBasicMessage();
      if (!v9)
      {
        v9 = FigXPCMessageSetCFURL();
        if (!v9)
        {
          xpc_dictionary_set_uint64(0, "FileOpenOptions", a3);
          v16[1] = 0;
          if (CFURLHasDirectoryPath(a2))
          {
            v10 = FigSandboxRegisterDirectoryURLWithProcessAndCopyRegistration();
          }

          else
          {
            v10 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
          }

          v8 = v10;
          if (!v10)
          {
            v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
            if (v11)
            {
              v8 = v11;
            }

            else
            {
              value = xpc_dictionary_get_value(0, "ByteStreamDetails");
              v8 = FigByteStreamRemoteCreateFromByteStreamDetails(a1, value, v16);
              v13 = v16[0];
              if (v8)
              {
                if (v16[0])
                {
                  CFRelease(v16[0]);
                }
              }

              else
              {
                *(CMBaseObjectGetDerivedStorage() + 152) = 0;
                *a4 = v13;
              }
            }
          }

          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v8 = v9;
  }

LABEL_15:
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t FigByteStreamRemoteCreateWithPlaybackProcessObjectID(uint64_t a1, int a2, CFTypeRef *a3)
{
  cf = 0;
  v11 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
    goto LABEL_14;
  }

  if (qword_1ED4CACB0 != -1)
  {
    dispatch_once(&qword_1ED4CACB0, &__block_literal_global_41);
  }

  v6 = _MergedGlobals_67;
  if (!_MergedGlobals_67)
  {
    v7 = FigXPCRemoteClientCopyMemoryRecipient();
    if (!v7)
    {
      v7 = FigXPCCreateBasicMessage();
      if (!v7)
      {
        xpc_dictionary_set_uint64(0, *MEMORY[0x1E69615A0], a1);
        xpc_dictionary_set_int64(0, "OtherProcessPID", a2);
        v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v7)
        {
          value = xpc_dictionary_get_value(0, "ByteStreamDetails");
          v6 = FigByteStreamRemoteCreateFromByteStreamDetails(*MEMORY[0x1E695E480], value, &v11);
          if (v6)
          {
            if (v11)
            {
              CFRelease(v11);
            }
          }

          else
          {
            *a3 = v11;
          }

          goto LABEL_10;
        }
      }
    }

LABEL_14:
    v6 = v7;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v6;
}

double remoteByteStream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v10 = DerivedStorage;
    if (frbs_GetObjectID(a1, &v18))
    {
      return result;
    }

    if (*(v10 + 24) && (CFEqual(a2, *MEMORY[0x1E695FF78]) || CFEqual(a2, *MEMORY[0x1E695FF70])))
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {

        v13(CMBaseObject, a2, a3, a4);
      }

      return result;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
    {
      v14 = *(v10 + 16);
      if (!v14)
      {
        FigXPCConnectionSendStdCopyPropertyMessage();
        v14 = *(v10 + 16);
        if (!v14)
        {
          return result;
        }
      }

      v16 = CFRetain(v14);
LABEL_21:
      *a4 = v16;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FF90]))
    {
      v15 = MEMORY[0x1E695E4D0];
LABEL_20:
      v16 = CFRetain(*v15);
      goto LABEL_21;
    }

    if (CFEqual(a2, *MEMORY[0x1E695FFA8]))
    {
      v15 = MEMORY[0x1E695E4C0];
      goto LABEL_20;
    }

    FigXPCConnectionSendStdCopyPropertyMessage();
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954424, "<<< FigByteStream_Remote >>>", 782, v4);
  }

  return result;
}

uint64_t remoteByteStream_SetProperty(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = frbs_GetObjectID(a1, &v10);
  if (!result)
  {
    if (CFEqual(a2, @"CFBS_EnableCaching"))
    {
      result = *(DerivedStorage + 24);
      if (result)
      {
        CMByteStreamGetCMBaseObject();
        FigCachedFileByteStreamGetClassID();
        result = CMBaseObjectIsMemberOfClass();
        if (result)
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v9)
          {
            v9(CMBaseObject, 0x1F0B330B8, a3);
          }

          return 0;
        }
      }
    }

    else
    {
      return 4294954512;
    }
  }

  return result;
}

uint64_t frbs_reopenFileInLocalByteStream(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v13);
    goto LABEL_15;
  }

  CMBaseObjectGetDerivedStorage();
  ObjectID = frbs_GetObjectID(a1, &v13);
  if (ObjectID)
  {
LABEL_15:
    v7 = ObjectID;
    goto LABEL_13;
  }

  xdict = 0;
  v16 = 0;
  v14 = 0;
  v5 = frbs_GetObjectID(a1, &v14);
  if (v5)
  {
    goto LABEL_18;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_18;
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    goto LABEL_18;
  }

  if (!xpc_dictionary_get_value(xdict, "FileDescriptor"))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v13);
LABEL_18:
    v7 = v5;
    v6 = -1;
    goto LABEL_9;
  }

  v6 = xpc_dictionary_dup_fd(xdict, "FileDescriptor");
  if (v6 == -1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0, v13);
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  if (!v7)
  {
    v8 = FigFileWrapDarwinFileDesc();
    if (v8)
    {
      v7 = v8;
      close(v6);
    }

    else
    {
      v7 = 0;
      if (a2)
      {
        *a2 = v12;
      }
    }
  }

LABEL_13:
  FigFileForkClose();
  return v7;
}

uint64_t remoteByteStream_Read(uint64_t a1, unint64_t a2, int64_t a3, char *a4, size_t *a5)
{
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ObjectID = frbs_GetObjectID(a1, &v38);
  if (ObjectID)
  {
    return ObjectID;
  }

  FigGetUpTimeNanoseconds();
  if (*(DerivedStorage + 80) && *(DerivedStorage + 48) >= a2)
  {
    v16 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v17 = *(v16 + 56);
    v18 = __OFSUB__(a3, v17);
    v19 = a3 - v17;
    __dst = a4;
    if (v19 < 0 != v18 || (v20 = *(v16 + 64), v21 = v20 <= a3, v22 = v20 - a3, v21))
    {
      v23 = 0;
      v24 = a3;
      if (!a2)
      {
LABEL_13:
        v15 = 0;
LABEL_35:
        v39 = v23;
        FigSimpleMutexUnlock();
        goto LABEL_36;
      }
    }

    else
    {
      if (v22 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = v22;
      }

      memcpy(__dst, (*(v16 + 40) + v19), v23);
      a2 -= v23;
      v24 = v23 + a3;
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    v36 = v5;
    v42 = 0;
    xdict = 0;
    v41 = 0;
    v28 = CMBaseObjectGetDerivedStorage();
    v29 = frbs_GetObjectID(a1, &v41);
    if (v29 || (v29 = FigXPCCreateBasicMessage(), v29) || (xpc_dictionary_set_int64(xdict, "Offset", v24), xpc_dictionary_set_int64(xdict, "Length", a2), v29 = FigXPCConnectionSendSyncMessageCreatingReply(), v29))
    {
      v15 = v29;
      int64 = 0;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v42, "NumBytesRead");
      if (int64 > *(v28 + 48))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v5, __dst);
        v15 = v34;
      }

      else
      {
        v15 = 0;
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    if (!v15)
    {
      *(v16 + 56) = v24;
      *(v16 + 64) = int64 + v24;
      if (int64 >= a2)
      {
        v31 = a2;
      }

      else
      {
        v31 = int64;
      }

      memcpy(&__dst[v23], *(v16 + 40), v31);
      v23 += v31;
    }

    goto LABEL_35;
  }

  v13 = *(DerivedStorage + 24);
  if (v13)
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v14)
    {
      v15 = v14(v13, a2, a3, a4, &v39);
    }

    else
    {
      v15 = 4294954514;
    }
  }

  else
  {
    v42 = 0;
    xdict = 0;
    length = 0;
    v41 = 0;
    CMBaseObjectGetDerivedStorage();
    v25 = frbs_GetObjectID(a1, &v41);
    if (v25 || (v25 = FigXPCCreateBasicMessage(), v25) || (xpc_dictionary_set_int64(xdict, "Offset", a3), xpc_dictionary_set_int64(xdict, "Length", a2), v25 = FigXPCConnectionSendSyncMessageCreatingReply(), v25))
    {
      v15 = v25;
      v26 = 0;
    }

    else
    {
      v26 = xpc_dictionary_get_int64(v42, "NumBytesRead");
      data = xpc_dictionary_get_data(v42, "BasicDataPointer", &length);
      if (v26 == length && v26 <= a2)
      {
        v15 = 0;
        if (data && v26)
        {
          memcpy(a4, data, v26);
          v15 = 0;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        v15 = v33;
      }
    }

    v39 = v26;
    FigXPCRelease();
    FigXPCRelease();
  }

LABEL_36:
  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  if (v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, __dst);
    if (!a5)
    {
      return v15;
    }

    goto LABEL_43;
  }

  if (v39)
  {
    v15 = 0;
  }

  else
  {
    v15 = 4294954423;
  }

  if (a5)
  {
LABEL_43:
    *a5 = v39;
  }

  return v15;
}

double remoteByteStream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!frbs_GetObjectID(a1, &v17))
  {
    v13 = *(DerivedStorage + 24);
    if (v13)
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v14)
      {
        v15 = v14(v13, a2, a3, a4, &v18);
        if (a5)
        {
          if (!v15)
          {
            *a5 = v18;
          }
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954422, "<<< FigByteStream_Remote >>>", 730, v5);
    }
  }

  return result;
}

double remoteByteStream_GetAvailableLengthAtOffset(uint64_t a1, int64_t a2, int64_t *a3)
{
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (frbs_GetObjectID(a1, &v16))
  {
    return result;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  if (!*(DerivedStorage + 169))
  {
    if (*(DerivedStorage + 168))
    {
      v11 = *(DerivedStorage + 160);
      v12 = v11 <= a2;
      v13 = v11 - a2;
      if (v12)
      {
        int64 = 0;
      }

      else
      {
        int64 = v13;
      }

      goto LABEL_18;
    }

    v19 = 0;
    xdict = 0;
    v18 = 0;
    CMBaseObjectGetDerivedStorage();
    ObjectID = frbs_GetObjectID(a1, &v18);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage()) != 0)
    {
      v15 = ObjectID;
    }

    else
    {
      xpc_dictionary_set_int64(xdict, "Offset", a2);
      v15 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v15)
      {
        int64 = xpc_dictionary_get_int64(v19, "Length");
        goto LABEL_17;
      }
    }

    int64 = 0;
LABEL_17:
    FigXPCRelease();
    FigXPCRelease();
    if (v15)
    {
      return result;
    }

    goto LABEL_18;
  }

  v8 = *(DerivedStorage + 24);
  if (!v8)
  {
LABEL_21:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v9 && !v9(v8, a2, &v17))
  {
    int64 = v17;
LABEL_18:
    *a3 = int64;
  }

  return result;
}

uint64_t remoteByteStream_ReadAndCreateBlockBuffer(const void *a1, unint64_t a2, int64_t a3, CMBlockBufferRef *a4, size_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = 0;
  dataLength = 0;
  ObjectID = frbs_GetObjectID(a1, &v25);
  if (ObjectID)
  {
    goto LABEL_18;
  }

  if (!a2)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v12 = *(DerivedStorage + 24);
  v13 = CFGetAllocator(a1);
  if (v12)
  {
    ObjectID = CMCreateContiguousBlockBufferFromStream();
    if (ObjectID)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v14 = MEMORY[0x19A8CC720](v13, a2, 903456953, 0);
  if (v14)
  {
    v15 = v14;
    v16 = remoteByteStream_Read(a1, a2, a3, v14, &dataLength);
    if (v16)
    {
      goto LABEL_10;
    }

    v17 = dataLength;
    v18 = CFGetAllocator(a1);
    v19 = v18;
    if (!v17)
    {
      CFAllocatorDeallocate(v18, v15);
      goto LABEL_12;
    }

    v20 = CFGetAllocator(a1);
    v16 = CMBlockBufferCreateWithMemoryBlock(v19, v15, a2, v20, 0, 0, dataLength, 0, &v26);
    if (v16)
    {
LABEL_10:
      v21 = v16;
      v22 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v22, v15);
      goto LABEL_13;
    }

LABEL_12:
    v21 = 0;
    *a4 = v26;
    goto LABEL_13;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v25, v26);
LABEL_18:
  v21 = ObjectID;
LABEL_13:
  if (a5)
  {
    *a5 = dataLength;
  }

  return v21;
}

double remoteByteStream_Synchronize(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!frbs_GetObjectID(a1, &v11))
  {
    v7 = *(DerivedStorage + 24);
    if (v7)
    {
      v8 = *(CMBaseObjectGetVTable() + 16);
      if (*v8 >= 2uLL)
      {
        v9 = v8[5];
        if (v9)
        {

          v9(v7, a2);
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954422, "<<< FigByteStream_Remote >>>", 944, v2);
    }
  }

  return result;
}

void FigByteStreamRemoteGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamRemoteGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigByteStreamRemoteGetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void frbs_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double MPEG2PSSniff(OpaqueCMBlockBuffer *a1, int *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = CMBlockBufferGetDataLength(a1);
  if (v5 >= 4)
  {
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v37 = 0;
    while (1)
    {
      v11 = OUTLINED_FUNCTION_0_105();
      if (CMBlockBufferAccessDataBytes(v11, v12, 4uLL, v13, v14))
      {
        return result;
      }

      if (*v37 || v37[1] || v37[2] != 1)
      {
        ++v10;
      }

      else
      {
        v17 = v37[3];
        if ((v17 - 187) < 0x41)
        {
          if (v17 == 189 || (v17 - 192) <= 0x2F)
          {
            dataLength = 0;
            v35 = 0;
            CheckPesHeaderLength(a1, v10, 0, v7 - v10, &dataLength, &v35, v15, v16);
            if (v18)
            {
              return result;
            }

            if (!v35 || (dataLength <= 0x109 ? (v19 = dataLength + v10 >= v7) : (v19 = 1), v19))
            {
              v10 = v7;
            }

            else
            {
              memset(v34, 0, sizeof(v34));
              if (CMBlockBufferCopyDataBytes(a1, v10, dataLength, destination))
              {
                return result;
              }

              v30 = __rev16(v39);
              if (!v30)
              {
                emitter = fig_log_get_emitter();
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", 422, v2);
              }

              if (ReadTimestampFromPesHeader(v37[3], destination, v34, dataLength, v30, 2))
              {
                return result;
              }

              v10 += v30 + 6;
              ++v9;
            }

            goto LABEL_19;
          }

LABEL_23:
          v10 += 4;
          v20 = OUTLINED_FUNCTION_0_105();
          if (!CMBlockBufferAccessDataBytes(v20, v21, 2uLL, v22, v23))
          {
            v24 = __rev16(*v37);
            if (!v24)
            {
              v32 = fig_log_get_emitter();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 4294954325, "mpeg2parser", 440, v2);
            }

            v10 += v24 + 2;
          }

          goto LABEL_19;
        }

        if (v17 == 186)
        {
          v10 += 4;
          v25 = OUTLINED_FUNCTION_0_105();
          if (!CMBlockBufferAccessDataBytes(v25, v26, 0xAuLL, v27, v28))
          {
            if ((*v37 & 0xF0) == 0x20)
            {
              v8 = 1;
            }

            else
            {
              if ((*v37 & 0xC4) != 0x44 || (v37[2] & 4) == 0 || (v37[5] & 1) == 0 || (~v37[8] & 3) != 0)
              {
                return result;
              }

              v8 = 0;
              v10 += (v37[9] & 7) + 10;
              ++v9;
            }
          }
        }

        else
        {
          if (v17 == 255)
          {
            goto LABEL_23;
          }

          v10 += 4;
        }
      }

LABEL_19:
      if (v10 + 3 >= v7)
      {
        if (v8)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        if (a2)
        {
          goto LABEL_40;
        }

        return result;
      }
    }
  }

  v31 = 2;
  if (a2)
  {
LABEL_40:
    *a2 = v31;
  }

  return result;
}

uint64_t AddPesFromHeader(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 16);
  if ((a2 & 0xFFFFFFE0) == 0xC0)
  {
    v6 = 0;
    v7 = 1835103588;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v7 = 1970170734;
    if ((a2 & 0xFFFFFFF0) == 0xE0)
    {
      v8 = 0;
      v9 = 0;
      v6 = 1;
    }

    else
    {
      v10 = a2 == 191 || a2 != 189;
      v11 = a2 != 191 && a2 == 189;
      if (a2 == 191)
      {
        v12 = 1886614578;
      }

      else
      {
        v12 = 1970170734;
      }

      v8 = a2 > 239 || v10;
      v6 = a2 <= 239 && v11;
      v9 = 1;
      if (a2 <= 239)
      {
        v7 = v12;
      }

      else
      {
        v7 = 1970170734;
      }
    }
  }

  v17 = 0;
  result = AddPes(a1, v5, v6, v7, 1, a2, a2, a2, 1, &v17);
  if (!result)
  {
    v14 = v17;
    *a3 = v17;
    if (v9)
    {
      if (v8)
      {
        return 0;
      }

      else
      {
        return CreatePesPrivateForPrivateStream(v14);
      }
    }

    else
    {
      v14[80] = 0x4000;
      v15 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040A792B6BDuLL);
      if (v15)
      {
        v16 = v15;
        result = 0;
        v16[6] = -1;
        v14[6] = v16;
        v14[105] = MPEG2PSProcessVideoSearch;
        v14[106] = MPEG2PSCleanVideoSearch;
        v14[107] = MPEG2PSDeleteVideoSearchPrivateData;
      }

      else
      {
        return 12;
      }
    }
  }

  return result;
}

double MPEG2PSInject(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3)
{
  appended = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  v9 = *(a1 + 416);
  v43 = DataLength;
  if (v9)
  {
    v10 = CMBlockBufferGetDataLength(v9);
    appended = CMBlockBufferAppendBufferReference(*(a1 + 416), theBuffer, 0, DataLength, 0);
    if (appended)
    {
      return result;
    }

    v11 = *(a1 + 416);
    DataLength += v10;
    a3 -= v10;
  }

  else
  {
    v11 = theBuffer;
  }

  v53 = 0;
  v50 = 0;
  destination = 0;
  v47 = 0;
  v51 = 0;
  if (DataLength >= 4)
  {
    v12 = 0;
    v52 = 0;
    v42 = a3 - 6;
    while (1)
    {
      switch(*(a1 + 408))
      {
        case 0:
          if (!FindStartCode(v11, v12, &v52, &v51, &appended))
          {
            v12 = DataLength + v12 - 3;
            DataLength = 3;
            goto LABEL_73;
          }

          v13 = v52;
          DataLength += v12 - v52;
          if (v51 - 443 < 2 || v51 == 446)
          {
            goto LABEL_58;
          }

          if (v51 == 442)
          {
            *(a1 + 408) = 1;
            goto LABEL_50;
          }

          if (v51 >= 0x1F1)
          {
LABEL_58:
            *(a1 + 408) = 2;
            *(a1 + 432) = 0;
            *(a1 + 440) = 0;
            goto LABEL_50;
          }

          if (v51 == 441)
          {
            goto LABEL_67;
          }

          v31 = v51;
          PesFromStreamID = FindPesFromStreamID(a1, v51);
          v48 = PesFromStreamID;
          if (!PesFromStreamID)
          {
            if (v31 <= 0xBE && v31 != 189)
            {
              goto LABEL_67;
            }

            appended = AddPesFromHeader(a1, v31, &v48);
            if (appended)
            {
              return result;
            }

            PesFromStreamID = v48;
            if (!v48)
            {
LABEL_67:
              v13 += 4;
              DataLength -= 4;
              goto LABEL_50;
            }
          }

          *(a1 + 424) = PesFromStreamID;
          if (*(PesFromStreamID + 121))
          {
            v33 = 4;
          }

          else
          {
            v33 = 3;
          }

          *(a1 + 408) = v33;
LABEL_50:
          v12 = v13;
          if (DataLength <= 3)
          {
            goto LABEL_72;
          }

          break;
        case 1:
          if (DataLength < 5)
          {
            DataLength = 4;
            goto LABEL_73;
          }

          v13 = v12 + 4;
          appended = CMBlockBufferCopyDataBytes(v11, v12 + 4, 1uLL, &destination);
          if (appended)
          {
            return result;
          }

          if ((destination & 0xC0) == 0x40)
          {
            if (DataLength < 0xE)
            {
              goto LABEL_73;
            }

            appended = CMBlockBufferCopyDataBytes(v11, v12 + 13, 1uLL, &destination);
            if (appended)
            {
              return result;
            }

            v14 = (destination & 7) + 14;
            v15 = DataLength - v14;
            if (DataLength < v14)
            {
              goto LABEL_73;
            }

            v13 = v12 + v14;
            goto LABEL_35;
          }

          if ((destination & 0xF0) == 0x20)
          {
            v15 = DataLength - 12;
            if (DataLength < 0xC)
            {
              goto LABEL_73;
            }

            v13 = v12 + 12;
LABEL_35:
            *(a1 + 408) = 0;
            DataLength = v15;
            goto LABEL_50;
          }

LABEL_36:
          DataLength -= 4;
LABEL_37:
          *(a1 + 408) = 0;
          goto LABEL_50;
        case 2:
          v16 = *(a1 + 432);
          if (v16)
          {
            goto LABEL_19;
          }

          if (DataLength < 6)
          {
            goto LABEL_73;
          }

          v13 = v12 + 4;
          appended = CMBlockBufferCopyDataBytes(v11, v12 + 4, 2uLL, &v50);
          v17 = v50;
          v16 = __rev16(v50);
          *(a1 + 432) = v16;
          if (!v17)
          {
            goto LABEL_36;
          }

          v12 += 6;
          DataLength -= 6;
LABEL_19:
          v18 = *(a1 + 440);
          v19 = v16 - v18;
          if (v16 - v18 >= DataLength)
          {
            v19 = DataLength;
          }

          DataLength -= v19;
          v20 = v19 + v18;
          *(a1 + 440) = v20;
          v13 = v19 + v12;
          if (v20 >= v16)
          {
            *(a1 + 408) = 0;
            *(a1 + 440) = 0;
          }

          goto LABEL_50;
        case 3:
          v26 = ProcessPesData(*(a1 + 424), v11, v12, 0, DataLength, v51 == (*(*(a1 + 424) + 64) | 0x100), v12 + a3, &v53, &v47);
          appended = v26;
          if (*(a1 + 8))
          {
            return result;
          }

          if (v26)
          {
            if (v26 != -12976)
            {
              return result;
            }

            v47 = 1;
            DataLength -= 4;
            v13 = v12 + 4;
            v51 = 0;
          }

          else
          {
            DataLength -= v53;
            v13 = v53 + v12;
            v51 = 0;
            if (!v47)
            {
              goto LABEL_50;
            }
          }

          *(a1 + 424) = 0;
          goto LABEL_37;
        case 4:
          v21 = *(a1 + 424);
          v48 = v21;
          v23 = v21 + 17;
          v22 = v21[17];
          if (v22)
          {
            v24 = 0;
            v25 = v21[18];
          }

          else
          {
            if (DataLength < 6)
            {
              goto LABEL_73;
            }

            appended = CMBlockBufferCopyDataBytes(v11, v12 + 4, 2uLL, &v50);
            v27 = v50;
            v22 = __rev16(v50);
            *v23 = v22;
            if (!v27)
            {
              fig_log_get_emitter();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v41, v3, v42);
            }

            v25 = 0;
            v21[18] = 0;
            v12 += 6;
            v24 = 1;
            DataLength -= 6;
          }

          if (v22 - v25 >= DataLength)
          {
            v28 = DataLength;
          }

          else
          {
            v28 = v22 - v25;
          }

          v29 = v21[105];
          if (v29)
          {
            v44 = 0u;
            v45 = v42 + v12;
            v46 = v24;
            appended = v29(v21, v11, v12, 0, v28, &v44);
            if (appended || *(a1 + 8))
            {
              return result;
            }

            v22 = v21[17];
            v25 = v21[18];
          }

          v13 = v28 + v12;
          DataLength -= v28;
          v30 = v25 + v28;
          v21[18] = v30;
          if (v30 >= v22)
          {
            *(a1 + 408) = 0;
            *v23 = 0;
            v21[18] = 0;
          }

          goto LABEL_50;
        default:
          v13 = v12;
          goto LABEL_50;
      }
    }
  }

  v13 = 0;
LABEL_72:
  v12 = v13;
  if (DataLength)
  {
LABEL_73:
    if (v11 != theBuffer && v43 >= DataLength)
    {
      v39 = *(a1 + 416);
      if (v39)
      {
        CFRelease(v39);
      }

      v35 = *(a1 + 40);
      v38 = v43 - DataLength;
      v36 = (a1 + 416);
      v37 = theBuffer;
    }

    else
    {
      v35 = *(a1 + 40);
      v36 = (a1 + 416);
      v37 = v11;
      v38 = v12;
    }

    CMBlockBufferCreateWithBufferReference(v35, v37, v38, DataLength, 0, v36);
  }

  else
  {
    v40 = *(a1 + 416);
    if (v40)
    {
      CFRelease(v40);
    }

    *(a1 + 416) = 0;
  }

  return result;
}

uint64_t MPEG2PSProcessVideoSearch(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v23 = 0;
  PesPacketListSaveChunk(v8, a2, a3, a4, a5, a6);
  v9 = *(v8 + 8);
  *(v8 + 16) += a5;
  DataLength = CMBlockBufferGetDataLength(*(v9 + 8));
  if (DataLength == a5)
  {
    LOBYTE(destination) = 0;
    result = CMBlockBufferCopyDataBytes(*(v9 + 8), 0, 1uLL, &destination);
    if (result)
    {
      return result;
    }

    v12 = destination | (*(v8 + 24) << 8);
    *(v8 + 24) = v12;
    MPEG2PSVideoSearchProcessHeader(v8, v12);
    v13 = 0;
  }

  else
  {
    v13 = DataLength - a5 - 3;
  }

  if (DataLength >= 4 && v13 < DataLength)
  {
    destination = 0;
    do
    {
      if (!FindStartCode(*(v9 + 8), v13, &destination, &v23, &v25))
      {
        break;
      }

      MPEG2PSVideoSearchProcessHeader(v8, v23);
      v13 = destination + 1;
    }

    while (destination + 1 < DataLength);
  }

  if (DataLength > 2)
  {
    result = CMBlockBufferCopyDataBytes(*(v9 + 8), DataLength - 3, 3uLL, &v23);
    v15 = bswap32(v23) >> 8;
  }

  else
  {
    result = CMBlockBufferCopyDataBytes(*(v9 + 8), 0, DataLength, v22);
    if (!DataLength)
    {
      goto LABEL_20;
    }

    v15 = *(v8 + 24);
    v16 = v22;
    do
    {
      v17 = *v16++;
      v15 = v17 | (v15 << 8);
      --DataLength;
    }

    while (DataLength);
  }

  *(v8 + 24) = v15;
LABEL_20:
  v18 = *(v8 + 32);
  if (v18 >= 0xA)
  {
    if (*(v8 + 56) && !*(v8 + 48))
    {
      v21 = 1836476772;
    }

    else
    {
      if (!*(v8 + 64) || *(v8 + 40))
      {
        goto LABEL_25;
      }

      v21 = 1748121140;
    }

    v19 = a1;
    v20 = v8;
    return MPEG2PSVideoSearchSetType(v19, v20, v21);
  }

LABEL_25:
  if (*(v8 + 16) <= 0x40000uLL)
  {
    return result;
  }

  if (v18 && *(v8 + 56))
  {
    v19 = a1;
    v20 = v8;
    v21 = 1836476772;
  }

  else
  {
    v19 = a1;
    v20 = v8;
    v21 = 1970170734;
  }

  return MPEG2PSVideoSearchSetType(v19, v20, v21);
}

uint64_t FindStartCode(OpaqueCMBlockBuffer *a1, size_t a2, size_t *a3, int *a4, OSStatus *a5)
{
  v8 = a2;
  destination = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  v10 = CMBlockBufferCopyDataBytes(a1, a2, 4uLL, &destination);
  *a5 = v10;
  if (v10)
  {
    return 0;
  }

  v11 = bswap32(destination);
  destination = v11;
  if ((v11 & 0xFFFFFF00) == 0x100)
  {
LABEL_15:
    *a3 = v8;
    *a4 = v11;
    return 1;
  }

  v12 = v8 + 4;
  DataLength = CMBlockBufferGetDataLength(a1);
  if (v8 + 4 >= DataLength)
  {
    return 0;
  }

  v14 = DataLength;
  while (2)
  {
    DataPointer = CMBlockBufferGetDataPointer(a1, v12, &lengthAtOffsetOut, 0, &dataPointerOut);
    *a5 = DataPointer;
    if (DataPointer)
    {
      return 0;
    }

    v16 = lengthAtOffsetOut + v12;
    lengthAtOffsetOut = v16;
    v11 = destination;
    if (v16 <= v12 + 1)
    {
      v16 = v12 + 1;
    }

    v17 = dataPointerOut + 1;
    v18 = 3 - v12;
    v19 = v16 - v12;
    do
    {
      v20 = v11 << 8;
      destination = v11 << 8;
      dataPointerOut = v17;
      v11 = *(v17 - 1) | (v11 << 8);
      destination = v11;
      if (v20 == 256)
      {
        v8 = -v18;
        goto LABEL_15;
      }

      ++v17;
      --v18;
      --v19;
    }

    while (v19);
    result = 0;
    v12 = v16;
    if (v16 < v14)
    {
      continue;
    }

    return result;
  }
}

uint64_t FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewStateIfNecessary(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a5 == a4)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_0_106(a1, a4, a2, a5, a3);
  }
}

uint64_t FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewFilterIfNecessary(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == a5)
  {
    return OUTLINED_FUNCTION_0_106(a1, a4, a2, a4, a3);
  }

  else
  {
    return 0;
  }
}

BOOL famen_handleTriggerInvocationForExpensiveNetwork(uint64_t a1, uint64_t a2, const void *a3)
{
  value = 0;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a3) && CFDictionaryGetValueIfPresent(a3, @"NetworkIsExpensive", &value) && (v5 = CFBooleanGetTypeID(), v5 == CFGetTypeID(value)))
  {
    return CFBooleanGetValue(value) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t famen_didSetPropertyCallbackForExpensiveNetwork(uint64_t a1, uint64_t a2, const __CFNumber *a3)
{
  if (FigCFEqual())
  {
    if (!a3)
    {
      v21.width = 0.0;
      v6 = 0x7FFFFFFF;
      LODWORD(valuePtr) = 0x7FFFFFFF;
LABEL_18:
      v15 = FigAlternatePeakBitRateCapFilterForExpensiveNetworksCreate(*MEMORY[0x1E695E480], v6, &v21);
      if (!v15)
      {
        width = v21.width;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v17)
        {
          v14 = 4294954514;
LABEL_23:
          v18 = v21.width;
          if (!*&v21.width)
          {
            return v14;
          }

          goto LABEL_28;
        }

        v15 = v17(a1, *&width, 1);
      }

      v14 = v15;
      goto LABEL_23;
    }

    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      v21.width = 0.0;
      LODWORD(valuePtr) = 0x7FFFFFFF;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      v6 = valuePtr;
      goto LABEL_18;
    }

    return 4294951683;
  }

  if (!FigCFEqual())
  {
    return 4294951681;
  }

  v7 = MEMORY[0x1E695F060];
  v21 = *MEMORY[0x1E695F060];
  if (a3)
  {
    v8 = CFDictionaryGetTypeID();
    if (v8 != CFGetTypeID(a3) || !CGSizeMakeWithDictionaryRepresentation(a3, &v21))
    {
      return 4294951683;
    }
  }

  v9 = v21.width;
  if (v21.width < 0.0 || (height = v21.height, v21.height < 0.0))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v21.width, LODWORD(v21.height), v22);
    return v20;
  }

  valuePtr = 0;
  if (v21.width == *v7 && v21.height == v7[1])
  {
    v9 = 1.0e10;
    height = 1.0e10;
  }

  v11 = FigAlternateResolutionCapFilterCreate(*MEMORY[0x1E695E480], @"ResolutionCapForExpensiveNetworks", 699, &valuePtr, v9, height);
  if (v11)
  {
    goto LABEL_16;
  }

  v12 = valuePtr;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    v11 = v13(a1, v12, 1);
LABEL_16:
    v14 = v11;
    goto LABEL_27;
  }

  v14 = 4294954514;
LABEL_27:
  v18 = *&valuePtr;
  if (valuePtr)
  {
LABEL_28:
    CFRelease(*&v18);
  }

  return v14;
}

BOOL famu_handleTriggerInvocationForStreamingRestrictions(uint64_t a1, int a2, uint64_t a3, CFDataRef theData)
{
  CFDataGetBytePtr(theData);
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigSimpleMutexLock();
  FilterIfNecessary = famu_getNewStateAndCreateFilterIfNecessary(a1, 0, 0, 0);
  BytePtr = CFDataGetBytePtr(theData);
  cf = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
LABEL_8:
    v10 = cf;
    goto LABEL_9;
  }

  v9 = v8(a1, @"AlternateFilterMonitorProperty_ReportingAgent", *MEMORY[0x1E695E480], &cf);
  v10 = cf;
  if (!v9 && cf)
  {
    if (FilterIfNecessary && !*(BytePtr + 1))
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v11(v10, @"playerStats", 0x1F0B43978, 1);
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  *(BytePtr + 1) = FilterIfNecessary;
  if (v10)
  {
    CFRelease(v10);
  }

  FigSimpleMutexUnlock();
  return FilterIfNecessary;
}

void famu_finalize(int a1, CFDataRef theData)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    if (*BytePtr)
    {
      FigSimpleMutexDestroy();
      *BytePtr = 0;
    }
  }
}

uint64_t famfon_setFilterForState(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    v7 = DerivedStorage;
    FigSimpleMutexLock();
    v8 = famfon_copyFilterForCurrentState(a1, &cf);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v7 + 80);
      CFDictionarySetValue(*(v7 + 64), a3, a2);
    }

    FigSimpleMutexUnlock();
    v10 = cf;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, cf, v15);
    v8 = v12;
    v10 = 0;
    v9 = 0;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  if (v9 == a3)
  {
    v8 = fam_postStateChangedNotification(a1, a3, v10, a3, a2);
    v10 = cf;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  if (v10)
  {
    CFRelease(v10);
  }

  return v8;
}

uint64_t famfon_setState(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = a2;
  v6 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v6 + 64), v5);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = CFDictionaryGetValue(*(v9 + 64), a2);
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  FigSimpleMutexUnlock();
  if (v5 != a2)
  {
    v12 = fam_postStateChangedNotification(a1, v5, v8, a2, v11);
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

LABEL_8:
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

void fampfr_didSetPropertyCallbackForSupportedFramerateBucketCap_cold_1(const void *a1, int *a2)
{
  cf = 0;
  v4 = CFGetAllocator(a1);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5(a1, @"AlternateFilterMonitorProperty_DisplayList", v4, &cf);
  if (v6)
  {
    goto LABEL_6;
  }

  v7 = cf;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    v6 = v8(a1, v7);
  }

  else
  {
LABEL_5:
    v6 = -12782;
  }

LABEL_6:
  *a2 = v6;
  if (cf)
  {
    CFRelease(cf);
  }
}

void __getMLServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getMLServiceClass(void)_block_invoke") description:{@"FigMLBandwidthPredictor.m", 134, @"Unable to find class %s", "MLService"}];
  __break(1u);
}

void __getMLServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MediaMLServicesLibrary(void)") description:{@"FigMLBandwidthPredictor.m", 133, @"%s", *a1}];
  __break(1u);
}

uint64_t FigCaptionRendererOutputNodeCreate(uint64_t a1, void *a2)
{
  *a2 = 0;
  v4 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigCaptionRendererOutputNodeGetClassID_sRegisterFigCaptionRendererOutputNodeBaseTypeOnce, RegisterFigCaptionRendererOutputNodeBaseType);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = DerivedStorage;
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    *DerivedStorage = v8;
    DerivedStorage[1] = 0;
    DerivedStorage[2] = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    __asm { FMOV            V0.2D, #-1.0 }

    *(v7 + 3) = _Q0;
    *(v7 + 5) = *MEMORY[0x1E695F060];
    v7[10] = 0;
    v7[7] = 0;
    v7[8] = 0;
    *(v7 + 72) = 0;
    *a2 = 0;
  }

  return v5;
}

double FigMPEG2SampleGeneratorCreate(CFAllocatorRef Default, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t *a7)
{
  if (a2 && a3)
  {
    if (a5 == 1633891104 || a5 == 1633973363 || a5 == 1635017571 || a5 == 1700880739 || a5 == 1700881203 || a5 == 1700886115 || a5 == 1700998451 || a5 == 1701143347 || a5 == 1748121140 || a5 == 1819304813 || a5 == 1835103588 || a5 == 1836476772 || a5 == 2053207651 || a5 == 1886612592)
    {
      *a7 = 0;
      v28 = malloc_type_calloc(1uLL, 0x78uLL, 0x10F0040528BEE7EuLL);
      if (v28)
      {
        v30 = v28;
        if (!Default)
        {
          Default = CFAllocatorGetDefault();
        }

        *(v30 + 8) = CFRetain(Default);
        *(v30 + 16) = a2;
        *(v30 + 24) = a3;
        *(v30 + 32) = a4;
        *v30 = a5;
        *(v30 + 4) = a6;
        if (a5 != 1633891104)
        {
          switch(a5)
          {
            case 1633973363:
              goto LABEL_65;
            case 1635017571:
              SampleGeneratorForClosedCaptions = CreateSampleGeneratorForClosedCaptions(v30);
              goto LABEL_70;
            case 1700880739:
LABEL_65:
              SampleGeneratorForClosedCaptions = CreateSampleGeneratorForADTS(v30);
              goto LABEL_70;
          }

          if (a5 != 1700881203)
          {
            if (a5 == 1700886115)
            {
              goto LABEL_63;
            }

            if (a5 != 1700998451 && a5 != 1701143347)
            {
              if (a5 != 2053207651)
              {
                switch(a5)
                {
                  case 1819304813:
LABEL_66:
                    SampleGeneratorForClosedCaptions = CreateSampleGeneratorForLPCM(v30);
                    break;
                  case 1835103588:
                    SampleGeneratorForClosedCaptions = CreateSampleGeneratorForMP3(v30);
                    break;
                  case 1836476772:
                    SampleGeneratorForClosedCaptions = CreateSampleGeneratorForMpeg2Video(v30);
                    break;
                  case 1886612592:
                    goto LABEL_66;
                  case 1748121140:
                    goto LABEL_63;
                  default:
LABEL_72:
                    *a7 = v30;
                    return result;
                }

LABEL_70:
                if (SampleGeneratorForClosedCaptions)
                {
                  FigMPEG2SampleGeneratorDestroy(v30);
                  return result;
                }

                goto LABEL_72;
              }

LABEL_63:
              SampleGeneratorForClosedCaptions = CreateSampleGeneratorForH264(v30);
              goto LABEL_70;
            }
          }
        }

        SampleGeneratorForClosedCaptions = CreateSampleGeneratorForDolby(v30);
        goto LABEL_70;
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "mpeg2parser", 194, v7);
  }

  return result;
}

uint64_t MPEG2SampleGeneratorCreateFormatDescriptionFromAudioConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, const AudioChannelLayout *a4, UInt32 a5, AudioFormatID *a6)
{
  v8 = a4;
  keys[1] = *MEMORY[0x1E69E9840];
  values = 0;
  memset(&outPropertyData, 0, sizeof(outPropertyData));
  *outPropertyDataSize = 0;
  v46 = 0;
  v45 = 0;
  v48 = 0;
  v47 = 0;
  keys[0] = 0;
  mChannelLayoutTag = a4->mChannelLayoutTag;
  ioPropertyDataSize = 0;
  v44 = mChannelLayoutTag;
  PropertyInfo = AudioFormatGetPropertyInfo(0x78686173u, *(a1 + 112), *(a1 + 104), &outPropertyDataSize[1]);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  if (outPropertyDataSize[1] != 40)
  {
    return 4294954325;
  }

  OUTLINED_FUNCTION_0_108();
  PropertyInfo = AudioFormatGetProperty(0x78686173u, v12, v13, &outPropertyDataSize[1], &outPropertyData);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  mFormatID = outPropertyData.mFormatID;
  if (outPropertyData.mFormatID - 2053202739 <= 0x3D && ((1 << (LOBYTE(outPropertyData.mFormatID) - 51)) & 0x2020000000000001) != 0 || (outPropertyData.mFormatID != 1667331683 ? (v15 = outPropertyData.mFormatID == 1700886115) : (v15 = 1), !v15 ? (v16 = outPropertyData.mFormatID == 1902212707) : (v16 = 1), !v16 ? (v17 = outPropertyData.mFormatID == 2053202275) : (v17 = 1), !v17 ? (v18 = outPropertyData.mFormatID == 2053464883) : (v18 = 1), !v18 ? (v19 = outPropertyData.mFormatID == 2053207651) : (v19 = 1), v19))
  {
    inited = PKDCreateTransportStreamEncryptionInitData(1936684398, outPropertyData.mFormatID);
    if (!inited)
    {
      return 4294954510;
    }

    v21 = inited;
    v24 = *MEMORY[0x1E69627C8];
    values = inited;
    keys[0] = v24;
    mFormatID = outPropertyData.mFormatID;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v25 = 1633889587;
  v26 = *a1 == 1633891104 && mFormatID == 2053202739;
  if (v26 || ((v25 = 1700998451, *a1 == 1700998451) ? (v27 = mFormatID == 2053464883) : (v27 = 0), v27))
  {
    outPropertyData.mFormatID = v25;
  }

  OUTLINED_FUNCTION_0_108();
  v30 = AudioFormatGetPropertyInfo(0x78686D63u, v28, v29, outPropertyDataSize);
  if (v30)
  {
    v22 = v30;
    goto LABEL_50;
  }

  v31 = OUTLINED_FUNCTION_1_96(outPropertyDataSize[0]);
  if (!v31)
  {
    v22 = 4294954510;
    goto LABEL_50;
  }

  v32 = v31;
  OUTLINED_FUNCTION_0_108();
  Property = AudioFormatGetProperty(0x78686D63u, v33, v34, outPropertyDataSize, v32);
  if (Property)
  {
    goto LABEL_41;
  }

  if (outPropertyData.mChannelsPerFrame < 3)
  {
    ioPropertyDataSize = a5;
    goto LABEL_43;
  }

  ioPropertyDataSize = 32;
  OUTLINED_FUNCTION_0_108();
  v8 = &v44;
  Property = AudioFormatGetProperty(0x7868636Cu, v36, v37, &ioPropertyDataSize, &v44);
  if (!Property)
  {
LABEL_43:
    v38 = CFDictionaryCreate(*(a1 + 8), keys, &values, v20, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (v38)
    {
      v39 = v38;
      v40 = *(a1 + 40);
      if (v40)
      {
        CFRelease(v40);
        *(a1 + 40) = 0;
      }

      v41 = CMAudioFormatDescriptionCreate(*(a1 + 8), &outPropertyData, ioPropertyDataSize, v8, outPropertyDataSize[0], v32, v39, (a1 + 40));
      v22 = v41;
      if (a6 && !v41)
      {
        *a6 = outPropertyData.mFormatID;
      }

      free(v32);
      CFRelease(v39);
      goto LABEL_50;
    }

    v22 = 4294954510;
    goto LABEL_57;
  }

LABEL_41:
  v22 = Property;
LABEL_57:
  free(v32);
LABEL_50:
  if (v21)
  {
    CFRelease(v21);
  }

  return v22;
}

uint64_t CreateSampleGeneratorForADTS(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xBA8uLL, 0x1020040313AC271uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[6] = ADTSPushForType;
  a1[8] = ADTSResyncForType;
  a1[7] = ADTSFlushForType;
  a1[9] = ADTSDestroyForType;
  a1[10] = ADTSReadBitRate;
  a1[11] = v3;
  return result;
}

uint64_t ADTSPushForType(uint64_t a1, OpaqueCMBlockBuffer *cf, __int128 *a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *(a1 + 88);
  v35 = 0;
  v34 = 0;
  offsetToData = 7;
  if (!*(a1 + 40) && *a1 != 1700880739)
  {
    goto LABEL_3;
  }

  if (a5)
  {
    appended = ADTSFlushForType(a1);
    if (appended)
    {
      goto LABEL_36;
    }
  }

  appended = ADTSGetHeaderInfo(cf, &v35 + 1, &v35, &v34, &offsetToData);
  if (appended)
  {
    goto LABEL_36;
  }

  if (!v35)
  {
    v13 = 0;
    goto LABEL_38;
  }

  if (*a1 != 1700880739)
  {
    goto LABEL_24;
  }

  if (!*(a1 + 40))
  {
    memset(&v32.mChannelBitmap, 0, 28);
    v32.mChannelLayoutTag = v34;
    if (!*(a1 + 104))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v32.mChannelLayoutTag, v32.mNumberChannelDescriptions, v32.mChannelDescriptions[0].mChannelFlags);
      return Empty;
    }

    appended = MPEG2SampleGeneratorCreateFormatDescriptionFromAudioConfiguration(a1, v16, v17, &v32, 0x20u, (v11 + 12));
    if (appended)
    {
      goto LABEL_36;
    }

    v18 = v35 >> 11;
    if (v35 >> 11 > 0x18)
    {
      v18 = 24;
    }

    v19 = *(v11 + 12) == 1633772396 ? 1 : v18;
    *v11 = v35;
    *(v11 + 4) = v19;
    *(v11 + 8) = v34;
    v20 = *(a1 + 16);
    if (v20)
    {
      appended = v20(a1, *(a1 + 32), *(a1 + 40));
      if (appended)
      {
LABEL_36:
        v13 = appended;
LABEL_38:
        ADTSResyncForType(a1);
        return v13;
      }
    }

    if (*a1 != 1700880739)
    {
LABEL_24:
      if (HIDWORD(v35) != *(v11 + 12) || *(v11 + 8) != v34 || v35 != *v11)
      {
        ADTSFlushForType(a1);
        FigFormatDescriptionRelease();
        *(a1 + 40) = 0;
LABEL_3:
        *&v32.mChannelLayoutTag = *a3;
        *&v32.mChannelDescriptions[0].mChannelFlags = *(a3 + 2);
        return ADTSAddFrameToStartup(a1, cf, &v32, a5, a6);
      }
    }
  }

  DataLength = CMBlockBufferGetDataLength(cf);
  v22 = offsetToData;
  v23 = *(v11 + 16);
  if (v23)
  {
    v24 = offsetToData;
  }

  else
  {
    Empty = CMBlockBufferCreateEmpty(*(a1 + 8), *(v11 + 4), 0, (v11 + 16));
    if (Empty)
    {
      return Empty;
    }

    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    v25 = *a3;
    *(v11 + 56) = *(a3 + 2);
    *(v11 + 40) = v25;
    *(v11 + 456) = a5;
    *(v11 + 448) = a6;
    v23 = *(v11 + 16);
    v24 = offsetToData;
  }

  v26 = DataLength - v22;
  appended = CMBlockBufferAppendBufferReference(v23, cf, v24, DataLength - v22, 0);
  if (appended)
  {
    goto LABEL_36;
  }

  v27 = *(v11 + 24);
  v28 = v11 + 16 * v27;
  v29 = *(v11 + 32);
  *(v28 + 64) = v29;
  *(v28 + 72) = 1;
  *(v28 + 76) = v26;
  v30 = v27 + 1;
  *(v11 + 24) = v30;
  *(v11 + 32) = v29 + v26;
  *(v11 + 2968) += offsetToData + v26;
  ++*(v11 + 2976);
  v31 = *(a1 + 96);
  if (!v31)
  {
    v31 = *(v11 + 4);
  }

  if (v31 > v30)
  {
    return 0;
  }

  return ADTSFlushForType(a1);
}

uint64_t ADTSFlushForType(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(v1 + 24);
  presentationTimeStamp = *(v1 + 40);
  target = 0;
  v7 = CMAudioSampleBufferCreateWithPacketDescriptions(v4, v2, 1u, 0, 0, v5, v6, &presentationTimeStamp, (v1 + 64), &target);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = *(v1 + 456);
    if (v8)
    {
      CMSetAttachment(target, *MEMORY[0x1E69604D0], *MEMORY[0x1E695E4D0], 1u);
      v8 = *(v1 + 456);
    }

    v9 = (*(a1 + 24))(a1, *(a1 + 32), target, *(v1 + 448), v8);
    if (target)
    {
      CFRelease(target);
    }
  }

  *(v1 + 456) = 0;
  v10 = *(v1 + 16);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  ADTSFlushStartupQueue(v1);
  return v9;
}

uint64_t ADTSGetHeaderInfo(OpaqueCMBlockBuffer *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t *a5)
{
  v11 = 0;
  v9 = CMBlockBufferAccessDataBytes(a1, 0, 7uLL, temporaryBlock, &v11);
  if (!v9)
  {
    if (a2)
    {
      *a2 = ADTSGetFormatID(v11);
    }

    if (a4)
    {
      *a4 = ADTSGetChannelLayout(v11);
    }

    if (a3)
    {
      *a3 = ADTSGetSampleFrequency(v11);
    }

    if (a5)
    {
      *a5 = ADTSGetADTSHeaderSize(v11);
    }
  }

  return v9;
}

uint64_t ADTSCreateFormatDescriptionAndSend(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (*(v2 + 2872) == 1633973363 && *(v2 + 2960))
  {
    memset(&outPropertyData, 0, 32);
    ioPropertyDataSize.mChannelLayoutTag = 32;
    *outPropertyDataSize = 0;
    outWritable = 0;
    v30 = 0;
    v28 = 0;
    Property = AudioFileStreamGetProperty(*(v2 + 2880), 0x636D6170u, &ioPropertyDataSize.mChannelLayoutTag, &outPropertyData);
    v4 = 0;
    if (!AudioFileStreamGetPropertyInfo(*(v2 + 2880), 0x6D676963u, &outPropertyDataSize[1], &outWritable))
    {
      if (outPropertyDataSize[1])
      {
        v4 = OUTLINED_FUNCTION_1_96(outPropertyDataSize[1]);
        if (v4)
        {
          if (AudioFileStreamGetProperty(*(v2 + 2880), 0x6D676963u, &outPropertyDataSize[1], v4))
          {
            outPropertyDataSize[1] = 0;
            free(v4);
            v4 = 0;
          }
        }
      }
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    if (Property)
    {
      p_outPropertyData = 0;
    }

    else
    {
      p_outPropertyData = &outPropertyData;
    }

    v8 = CMAudioFormatDescriptionCreate(*(a1 + 8), (v2 + 2920), 32 * (Property == 0), p_outPropertyData, outPropertyDataSize[1], v4, 0, (a1 + 40));
    if (v4)
    {
      free(v4);
    }

    if (!v8)
    {
      v8 = ADTSGetHeaderInfo(*(v2 + 464), outPropertyDataSize, &v28, &v30, 0);
      if (!v8)
      {
        v9 = outPropertyDataSize[0];
        *v2 = v28;
        v10 = (v2 + 2948);
        if (!Property)
        {
          v10 = &outPropertyData;
        }

        v11 = *v10;
        if (v30 != v11)
        {
          v11 = v30;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    v24 = *(v2 + 464);
    memset(&ioPropertyDataSize.mChannelBitmap, 0, 28);
    memset(&outPropertyData.mFormatID, 0, 32);
    *outPropertyDataSize = 0;
    v30 = 0;
    v25 = ADTSGetHeaderInfo(v24, &outPropertyDataSize[1], &v30, outPropertyDataSize, 0);
    if (v25)
    {
      v8 = v25;
    }

    else
    {
      ioPropertyDataSize.mChannelLayoutTag = outPropertyDataSize[0];
      LODWORD(v26) = v30;
      outPropertyData.mSampleRate = v26;
      outPropertyData.mFormatID = outPropertyDataSize[1];
      outPropertyData.mFramesPerPacket = 1024;
      outPropertyData.mChannelsPerFrame = LOWORD(outPropertyDataSize[0]);
      v27 = *(a1 + 40);
      if (v27)
      {
        CFRelease(v27);
        *(a1 + 40) = 0;
      }

      v8 = CMAudioFormatDescriptionCreate(*(a1 + 8), &outPropertyData, 0x20uLL, &ioPropertyDataSize, 0, 0, 0, (a1 + 40));
      if (!v8)
      {
        v9 = outPropertyDataSize[1];
        *v2 = v30;
        v11 = outPropertyDataSize[0];
LABEL_21:
        *(v2 + 8) = v11;
        *(v2 + 12) = v9;
      }
    }
  }

  if (!v8)
  {
    v12 = *(a1 + 16);
    if (v12 && (v13 = v12(a1, *(a1 + 32), *(a1 + 40)), v13))
    {
      v8 = v13;
    }

    else
    {
      if (*(v2 + 12) == 1633772396)
      {
        v14 = 1;
      }

      else
      {
        v14 = *v2 >> 11;
        if (v14 > 0x18)
        {
          v14 = 24;
        }
      }

      *(v2 + 4) = v14;
      v15 = *(a1 + 88);
      v16 = *(v15 + 2864);
      *(v15 + 2864) = 0;
      if (v16 < 1)
      {
        v8 = 0;
      }

      else
      {
        LODWORD(v8) = 0;
        v17 = 0;
        v18 = v15 + 464;
        do
        {
          if (!v8)
          {
            v19 = *v18;
            v20 = *(v18 + 32);
            v21 = *(v18 + 40);
            *&outPropertyData.mSampleRate = *(v18 + 8);
            *&outPropertyData.mBytesPerPacket = *(v18 + 24);
            v17 = ADTSPushForType(a1, v19, &outPropertyData, v7, v20, v21);
          }

          if (*v18)
          {
            CFRelease(*v18);
          }

          if (v17)
          {
            v8 = v17;
          }

          else
          {
            v8 = v8;
          }

          v18 += 48;
          --v16;
        }

        while (v16);
      }
    }
  }

  v22 = *(v2 + 2880);
  if (v22)
  {
    AudioFileStreamClose(v22);
    *(v2 + 2880) = 0;
  }

  return v8;
}