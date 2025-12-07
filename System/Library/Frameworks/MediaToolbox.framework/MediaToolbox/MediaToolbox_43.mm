uint64_t __FigPlayerAirPlayCreateNonCoordinatedWithOptions_block_invoke()
{
  gIsiOSDeviceWithMedusaSupport_0 = MGGetBoolAnswer();
  result = notify_register_check("com.apple.springboard.lockstate", &gFigPlayerAirPlayDeviceLockedStateNotifyToken_0);
  if (!result)
  {
    gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid_0 = 1;
  }

  return result;
}

void FigCFRelease_5(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void playerairplay_CopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v10 = qword_1EAF172E0;
    v11 = v4;
    v12 = 4294954511;
    v13 = 6684;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v12, "<<<< FigPlayer_AP >>>>", v13, v11);
    return;
  }

  if (!a4)
  {
    v10 = qword_1EAF172E0;
    v11 = v4;
    v12 = 4294954516;
    v13 = 6690;
    goto LABEL_3;
  }

  v14 = DerivedStorage;
  if (CFEqual(a2, @"IsValid"))
  {
    v15 = MEMORY[0x1E695E4D0];
LABEL_15:
    SInt32 = *v15;
LABEL_16:
    SInt32 = CFRetain(SInt32);
LABEL_17:
    *a4 = SInt32;
    return;
  }

  if (CFEqual(a2, @"AllowsAirPlayVideo"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v14[48];
LABEL_12:
    v17 = MEMORY[0x1E695E4C0];
    v18 = v16 == 0;
    goto LABEL_13;
  }

  if (FigCFEqual())
  {
    v20 = MEMORY[0x1E695E4D0];
    if (!v14[49])
    {
      v20 = MEMORY[0x1E695E4C0];
    }

    SInt32 = *v20;
    if (!*v20)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (CFEqual(a2, @"ParticipatingInCoordinatedPlayback"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v14[456];
    goto LABEL_12;
  }

  if (CFEqual(a2, @"IsAirPlayVideoActive"))
  {
    IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
    goto LABEL_29;
  }

  if (CFEqual(a2, @"IsIntegratedTimelineAllowedForExternalPlayback"))
  {
    IsAirplayVideoActive = playerairplay_isInterstitialsWithIntegratedTimelineAllowed(a1);
LABEL_29:
    v15 = MEMORY[0x1E695E4D0];
    if (!IsAirplayVideoActive)
    {
      v15 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"UseAirPlayVideoAudioOnlyMode"))
  {
    v15 = MEMORY[0x1E695E4D0];
    v16 = v14[51];
    goto LABEL_12;
  }

  if (CFEqual(a2, @"EnableBufferedAirPlayLocalPlayback") || CFEqual(a2, @"BufferedAirPlayLocalPlaybackVolume"))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, v39, v41);
  }

  else
  {
    if (CFEqual(a2, @"UsesAirPlayVideoWhileAirPlayScreenIsActive"))
    {
      v15 = MEMORY[0x1E695E4D0];
      v16 = v14[52];
      goto LABEL_12;
    }

    if (CFEqual(a2, @"PickerContextUUID"))
    {
      FigBytePumpGetFigBaseObject();
      CMBaseObjectCopyProperty(v25, 0x1F0B25938, a3, a4);
      return;
    }

    if (CFEqual(a2, @"AirPlayVideoScrubbingCAContextID"))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(v14 + 18);
      if (v27)
      {
        goto LABEL_51;
      }

      v28 = *MEMORY[0x1E695E4D0];
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"FigPlayerAirPlay_Scrub_CAContext", *MEMORY[0x1E69796A0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E69796C0], 0}];
      v30 = [MEMORY[0x1E6979550] contextWithOptions:v29];
      *(v14 + 18) = v30;
      if (!v30)
      {
        goto LABEL_62;
      }

      CFRetain(v30);
      if (!*(v14 + 19))
      {
        v31 = [MEMORY[0x1E6979398] layer];
        *(v14 + 19) = v31;
        if (v31)
        {
          CFRetain(v31);
        }
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setValue:v28 forKey:*MEMORY[0x1E697A020]];
      [*(v14 + 18) setLayer:*(v14 + 19)];
      [MEMORY[0x1E6979518] commit];
      v27 = *(v14 + 18);
      if (v27)
      {
LABEL_51:
        valuePtr = [v27 contextId];
        *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      }

      else
      {
LABEL_62:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v40, v42);
      }

      objc_autoreleasePoolPop(v26);
      return;
    }

    if (CFEqual(a2, @"PlayerName"))
    {
      SInt32 = *(v14 + 47);
      if (!SInt32)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"IsSetupForAirPlayVideo"))
    {
      BOOLean = 0;
      v32 = *MEMORY[0x1E695E480];
      FigBytePumpGetFigBaseObject();
      CMBaseObjectCopyProperty(v33, 0x1F0B25918, v32, &BOOLean);
      if (BOOLean && CFBooleanGetValue(BOOLean))
      {
        v34 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v34 = MEMORY[0x1E695E4C0];
      }

      *a4 = CFRetain(*v34);
      if (BOOLean)
      {
        CFRelease(BOOLean);
      }

      return;
    }

    if (CFEqual(a2, @"ExternalPlaybackCapabilities"))
    {
      SInt32 = *(v14 + 33);
      if (!SInt32)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"IsBufferedAirPlayActive"))
    {
      v15 = MEMORY[0x1E695E4D0];
      v17 = MEMORY[0x1E695E4C0];
      v18 = *(v14 + 37) == 0;
LABEL_13:
      if (v18)
      {
        v15 = v17;
      }

      goto LABEL_15;
    }

    if (CFEqual(a2, @"ItemsToPrebuffer"))
    {
      SInt32 = *(v14 + 4);
      if (!SInt32)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"Topology"))
    {
      v35 = *(v14 + 1);

      FPSupport_CreatePlayerTopology(a3, @"AirPlay", v35, a4);
      return;
    }

    if (CFEqual(a2, @"ExternalPlaybackSystemLanguageCode"))
    {
      SInt32 = playerairplay_copyExternalPlaybackSystemLanguageCode(a1);
      goto LABEL_17;
    }

    v36 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v36 && v36 != 10)
    {
      if (CFEqual(a2, @"ActionAtEnd"))
      {
        SInt32 = *(v14 + 16);
        goto LABEL_16;
      }

      if (CFEqual(a2, @"PlaybackState"))
      {
        SInt32 = FigCFNumberCreateSInt32();
        goto LABEL_17;
      }

      if (CFEqual(a2, @"ExternalProtectionStatus"))
      {
        SInt32 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlayerExternalProtectionStatusKey_Video, &kFigPlayerExternalProtectionStatus_Protected, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        goto LABEL_17;
      }
    }
  }

  if (!*(v14 + 1))
  {
    v10 = qword_1EAF172E0;
    v11 = v4;
    v12 = 4294954513;
    v13 = 6896;
    goto LABEL_3;
  }

  FigPlayerGetFigBaseObject();
  v23 = v22;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v24)
  {

    v24(v23, a2, a3, a4);
  }
}

void playerairplay_resetAirPlayRouteInformation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerairplay_updateAirPlayRouteInformationAndEndpoint(a1, 0, 0);
  pap_invalidateEndpointPlaybackSession(a1);
  v3 = *(DerivedStorage + 256);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 256) = 0;
  }

  v4 = *(DerivedStorage + 264);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 264) = 0;
    *(DerivedStorage + 272) = 0;
    if (!*DerivedStorage)
    {

      playerairplay_postPlayerNotification();
    }
  }

  else
  {
    *(DerivedStorage + 272) = 0;
  }
}

void pap_setAirPlayState(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  v7 = v5 == 16 || (v5 & 0xFFFFFFFE) == 14;
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  *(DerivedStorage + 216) = a2;
  playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
  v9 = *(CMBaseObjectGetDerivedStorage() + 216);
  v11 = v9 != 16 && (v9 & 0xFFFFFFFE) != 14;
  if (v7 == v11)
  {

    playerairplay_updateShareAndAirPlayEchoMitigation(a1);
  }
}

void playerairplay_removeAndCleanupQueuedItemsOnAirPlayController(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(*(DerivedStorage + 40), 0);
  if (PlayQueueSnapshot)
  {
    v3 = PlayQueueSnapshot;
    if (!*DerivedStorage)
    {
      Count = CFArrayGetCount(PlayQueueSnapshot);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          if (*DerivedStorage)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          if (*(CMBaseObjectGetDerivedStorage() + 701))
          {
            itemairplay_removeQueuedItemOnAirPlayController(ValueAtIndex);
            playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(DerivedStorage + 40), ValueAtIndex, 0, 1);
          }
        }
      }
    }

    CFRelease(v3);
  }
}

void playerairplay_InvalidateItem()
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

void playerairplay_cleanUpScrubLayerAndContext(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = objc_autoreleasePoolPush();
  if (DerivedStorage && (*(DerivedStorage + 144) || *(DerivedStorage + 152)))
  {
    FigSimpleMutexLock();
    v3 = MEMORY[0x1E6960C70];
    *(DerivedStorage + 176) = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 192) = *(v3 + 16);
    FigSimpleMutexUnlock();
    v4 = *(DerivedStorage + 160);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_cleanUpScrubLayerAndContext_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = DerivedStorage;
    dispatch_sync(v4, block);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t playqueue_clearPlayQueue(uint64_t a1)
{
  FigSimpleMutexLock();
  CFArrayRemoveAllValues(*a1);
  *(a1 + 16) = 0;

  return FigSimpleMutexUnlock();
}

void playerairplay_setRateAirPlay(const void *a1, uint64_t a2, __int128 *a3, __int128 *a4, const void *a5)
{
  v8 = a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 56) != 0.0 && *(DerivedStorage + 152))
  {
    pap_clearLayerContents(a1);
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v11 + 40), 0, &cf);
  CMBaseObjectGetDerivedStorage();
  if (!cf)
  {
    if (!playerairplay_deferMediaControlPlaylistForInterstitials(a1))
    {
      v16 = *(v11 + 56);
      v19 = *a3;
      v20 = *(a3 + 2);
      v17 = *a4;
      v18 = *(a4 + 2);
      pap_playbackSessionSetRate(a1, v8, v16, &v19, &v17, a5);
    }

    playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, cf != 0);
    Mutable = 0;
    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  if (v8)
  {
    v19 = *a3;
    v20 = *(a3 + 2);
    FigCFDictionarySetCMTime();
    v19 = *a4;
    v20 = *(a4 + 2);
    FigCFDictionarySetCMTime();
  }

  if (a5)
  {
    CFDictionarySetValue(Mutable, @"SetRateOptions", a5);
  }

  itemairplay_NotifyReachedTimeToPauseBufferingIfFF(a1, cf);
  LOBYTE(v19) = 0;
  LOBYTE(v17) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  v13 = *(v11 + 56);
  if (v13 == 0.0 || *(v11 + 488))
  {
    goto LABEL_11;
  }

  playerairplay_notifyStartupTasksOfEvents(a1, cf, 5, 0, MEMORY[0x1E6960C70], &v19, v13);
  v15 = v19;
  v14 = 1;
  *(v11 + 488) = 1;
  if (v15)
  {
    v13 = *(v11 + 56);
LABEL_11:
    v14 = v13 != 0.0 && *(v11 + 64) != 0;
  }

  playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, cf != 0);
  if (*(v11 + 84) == 4)
  {
    if (v14)
    {
      goto LABEL_18;
    }
  }

  else if (*(v11 + 56) != 0.0 || v14)
  {
    goto LABEL_18;
  }

  FigSimpleMutexLock();
  FigCFDictionarySetValue();
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void pap_clearLayerContents(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 176) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 192) = *(v3 + 16);
  FigSimpleMutexUnlock();
  CFRetain(a1);
  v4 = *(DerivedStorage + 160);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __pap_clearLayerContents_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_async(v4, v5);
}

void itemairplay_NotifyReachedTimeToPauseBufferingIfFF(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v4)
  {
    v5 = v4 == 10;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && !*(DerivedStorage + 241) && *(DerivedStorage + 56) > 1.0 && (*(v3 + 500) & 1) != 0)
  {

    itemairplay_postItemNotification();
  }
}

void playerairplay_inferPlaybackStateFromAirPlayPlayer(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56) == 0.0)
  {
    WaitingState = 0;
    goto LABEL_16;
  }

  if (!a2)
  {
    WaitingState = 3;
    goto LABEL_16;
  }

  v5 = DerivedStorage;
  v6 = CMBaseObjectGetDerivedStorage();
  v7 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v7 || v7 == 10)
  {
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  v8 = *(v6 + 472);
  if (!v8 || (Count = CFArrayGetCount(v8), Count < 1))
  {
LABEL_11:
    FigSimpleMutexUnlock();
LABEL_12:
    if (*(v5 + 64))
    {
      WaitingState = 6;
    }

    else
    {
      WaitingState = 4;
    }

    goto LABEL_16;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 472), v11);
    if (!FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex))
    {
      break;
    }

    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  WaitingState = FigPlayerStartupTaskGetWaitingState(ValueAtIndex);
  FigSimpleMutexUnlock();
LABEL_16:
  v13 = CMBaseObjectGetDerivedStorage();
  if (*(v13 + 84) != WaitingState)
  {
    v14 = v13;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    *(v14 + 84) = WaitingState;
    playerairplay_postPlayerNotification();
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }
}

void __pap_clearLayerContents_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 152))
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
    [*(*(a1 + 32) + 152) setContents:0];
    [MEMORY[0x1E6979518] commit];
  }

  v2 = *(a1 + 40);

  CFRelease(v2);
}

CFIndex playqueue_getCurrentClientPlayQueueItemIndexInternal(CFArrayRef *a1)
{
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return -1;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*a1, v4);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage[72] && DerivedStorage[700] && DerivedStorage[707] != 2)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return -1;
    }
  }

  return v4;
}

void __itemairplay_postItemNotification_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (!*(*(a1 + 32) + 72) && !**(a1 + 40))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  FigReadWriteLockUnlockForRead();
  v2 = *(a1 + 56);
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

  v5 = *(a1 + 72);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t itemairplay_GetCurrentTime(CFTypeRef a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*(DerivedStorage + 72))
  {
    itemairplay_GetCurrentTime_cold_1(&v19);
    v6 = 0;
    goto LABEL_33;
  }

  v5 = DerivedStorage;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!v7 || *v7)
  {
    itemairplay_GetCurrentTime_cold_2(&v19);
LABEL_33:
    value_low = LODWORD(v19.value);
    goto LABEL_26;
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v7 + 40), 0, &cf);
  v8 = *(CMBaseObjectGetDerivedStorage() + 216) == 16 && cf == a1;
  if (v8 && (v9 = *(v5 + 568)) != 0)
  {
    CMTimebaseGetTime(&v19, v9);
    value_low = 0;
    *a2 = v19;
  }

  else
  {
    v11 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v11)
    {
      v12 = v11 == 10;
    }

    else
    {
      v12 = 1;
    }

    if (!v12 || ((v13 = *(CMBaseObjectGetDerivedStorage() + 216), v13 != 10) ? (v14 = v13 == 0) : (v14 = 1), v14 && *(v5 + 152)))
    {
      value_low = 0;
      v15 = *(v5 + 160);
      a2->epoch = *(v5 + 176);
      *&a2->value = v15;
    }

    else
    {
      v16 = *(v5 + 8);
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v17)
      {
        value_low = v17(v16, a2);
      }

      else
      {
        value_low = 4294954514;
      }
    }
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return value_low;
}

void __playerairplay_postPlayerNotification_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
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

void __playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkAndUpdatePlayQueueItems(*(a1 + 40));
    v3 = pap_copyInterstitialPlayer(*(a1 + 40));
    if (v3)
    {
      v4 = v3;
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v3);
      CFRelease(v4);
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t pap_copyInterstitialPlayer(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 360))
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

CFArrayRef playqueue_createPlayQueueSnapshot(uint64_t a1, uint64_t *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *a1);
    v5 = playqueue_copyPlayQueueSummary(a1);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Copy = 0;
  v5 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = playqueue_getCurrentClientPlayQueueItemIndexInternal(a1);
  }

LABEL_4:
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  return Copy;
}

void itemairplay_doCleanupAtEndOfPlayback(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 632);
    if (v4)
    {
      v5 = *(CMBaseObjectGetVTable() + 16);
      if (*v5)
      {
        v6 = v5[12];
        if (v6)
        {
          v6(v4);
        }
      }

      v7 = *(v3 + 632);
      if (v7)
      {
        CFRelease(v7);
        *(v3 + 632) = 0;
      }
    }

    v8 = *(v3 + 432);
    if (v8)
    {
      CFRelease(v8);
      *(v3 + 432) = 0;
    }

    *(v3 + 703) = 0;
  }

  else
  {
    v9 = qword_1EAF172E0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954511, "<<<< FigPlayer_AP >>>>", 14972, v1);
  }
}

void itemairplay_cleanupItemForAirPlay(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    v8 = *(DerivedStorage + 568);
    if (v8)
    {
      CMTimebaseSetRate(v8, 0.0);
      v9 = *(v7 + 568);
      if (v9)
      {
        CFRelease(v9);
        *(v7 + 568) = 0;
      }
    }

    v10 = *(v7 + 592);
    if (v10)
    {
      dispatch_source_cancel(v10);
      if (a2)
      {
        v11 = FigCFWeakReferenceHolderCopyReferencedObject();
        v12 = CMBaseObjectGetDerivedStorage();
        if (v12)
        {
          if (!*v12)
          {
            v13 = *(v12 + 88);
            if (v13)
            {
              dispatch_sync(v13, &__block_literal_global_75);
            }
          }
        }
      }

      else
      {
        v11 = 0;
      }

      dispatch_release(*(v7 + 592));
      *(v7 + 592) = 0;
    }

    else
    {
      v11 = 0;
    }

    StopAndReleaseTimer((v7 + 328));
    *(v7 + 624) = 0;
    *(v7 + 712) = 0;
    itemairplay_unsubscribeFromURLProcessor(a1);
    v14 = *(v7 + 808);
    if (v14)
    {
      CFRelease(v14);
      *(v7 + 808) = 0;
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }

  else
  {
    v6 = qword_1EAF172E0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< FigPlayer_AP >>>>", 5887, v2);
  }
}

uint64_t playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  FigSimpleMutexLock();
  playqueue_removeItemFromClientQueueAndFromMediaControlPlaylistInternal(a1, a2, v5, v4);

  return FigSimpleMutexUnlock();
}

void itemairplay_setRememberedTimeAndDefaultFlag(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E6960CC0];
  if (*(a2 + 12))
  {
    v4 = a2;
  }

  v5 = *(v4 + 16);
  *(DerivedStorage + 160) = *v4;
  *(DerivedStorage + 176) = v5;
  v6 = MEMORY[0x1E695E480];
  *(DerivedStorage + 184) = (*(a2 + 12) & 1) == 0;
  v7 = *v6;
  v9 = *(DerivedStorage + 160);
  v8 = CMTimeCopyDescription(v7, &v9);
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t itemairplay_controlPlaybackActivityTimer(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v4 = result;
  FigReadWriteLockLockForRead();
  if (!*(v4 + 72))
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(v4 + 592);
    if (!v7 || !DerivedStorage)
    {
      goto LABEL_20;
    }

    if (a2 > 1)
    {
      if (a2 == 3)
      {
        dispatch_source_set_timer(v7, 0, 1000000000 * *(DerivedStorage + 404), 0x4C4B40uLL);
        goto LABEL_20;
      }

      if (a2 != 2 || !*(v4 + 600))
      {
LABEL_20:
        if (v5)
        {
          CFRelease(v5);
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (!a2)
      {
        dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        *(v4 + 600) = 0;
        goto LABEL_20;
      }

      if (a2 != 1)
      {
        goto LABEL_20;
      }
    }

    if (*(DerivedStorage + 200) && *(v4 + 603))
    {
      v8 = 30000000000;
    }

    else
    {
      v8 = 1000000000;
    }

    dispatch_source_set_timer(v7, 0, v8, 0x4C4B40uLL);
    *(v4 + 600) = 1;
    goto LABEL_20;
  }

LABEL_22:

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_insertItemOnMediaControl(const void *a1, __CFDictionary *Mutable)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!DerivedStorage[72] && !DerivedStorage[701] && DerivedStorage[700])
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    v6 = CMBaseObjectGetDerivedStorage();
    if (v6)
    {
      v7 = v6;
      if (!*v6)
      {
        v8 = itemairplay_copyPlayParams(a1, 0, 0);
        if (v8)
        {
          v9 = v8;
          cf = 0;
          v10 = *MEMORY[0x1E695E480];
          FigPlaybackItemGetFigBaseObject();
          v12 = v11;
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v13(v12, @"SelectedMediaArray", v10, &cf);
          }

          if (a1)
          {
            CFRetain(a1);
          }

          if (v5)
          {
            CFRetain(v5);
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

          v15 = *(v7 + 13);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __itemairplay_insertItemOnMediaControl_block_invoke;
          v23[3] = &__block_descriptor_72_e5_v8__0l;
          v23[4] = DerivedStorage;
          v23[5] = v7;
          v23[6] = v14;
          v23[7] = v5;
          v23[8] = a1;
          dispatch_async(v15, v23);
          if (cf)
          {
            CFRelease(cf);
          }

          if (Mutable)
          {
            v16 = CMBaseObjectGetDerivedStorage();
            if (*(v16 + 80))
            {
              v17 = v16;
              Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961D40], *(v17 + 80));
            }

            else
            {
              Mutable = 0;
            }
          }

          playqueue_addItemToMediaControlPlaylist(*(v7 + 5), a1);
          v18 = CMBaseObjectGetDerivedStorage();
          if (!v5)
          {
            FigReadWriteLockUnlockForRead();
LABEL_35:
            CFRelease(v9);
LABEL_36:
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            return;
          }

          v19 = v18;
          if (!*v18 && *(v18 + 280))
          {
            if (pap_shouldUseInterstitialQueuing(v5))
            {
              CFDictionaryAddValue(v9, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
            }

            v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
            *v20 = v5;
            CFRetain(v5);
            v20[1] = a1;
            if (a1)
            {
              CFRetain(a1);
            }

            v21 = *(v19 + 280);
            v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v22)
            {
              v22(v21, v9, Mutable, pap_playbackSessionInsertPlayQueueItemCompletion, v20);
            }
          }

LABEL_34:
          CFRelease(v5);
          FigReadWriteLockUnlockForRead();
          if (!v9)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    if (v5)
    {
      v9 = 0;
      Mutable = 0;
      goto LABEL_34;
    }
  }

  FigReadWriteLockUnlockForRead();
}

CFStringRef playqueue_copyPlayQueueSummary(uint64_t a1)
{
  alloc = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (i)
      {
        CFStringAppend(Mutable, @", ");
      }

      if (ValueAtIndex)
      {
        v8 = (CMBaseObjectGetDerivedStorage() + 820);
      }

      else
      {
        v8 = "";
      }

      if (*(DerivedStorage + 701))
      {
        v9 = 89;
      }

      else
      {
        v9 = 78;
      }

      if (*(DerivedStorage + 700))
      {
        v10 = 89;
      }

      else
      {
        v10 = 78;
      }

      CFStringAppendFormat(Mutable, 0, @"item %p %s [Client:%c,MC:%c](subitem %p) uuid %@", ValueAtIndex, v8, v10, v9, *(DerivedStorage + 8), *(DerivedStorage + 80));
    }
  }

  v11 = CFStringCreateWithFormat(alloc, 0, @"[%p] play queue now[CPQ:%d,MC:%d]: [%@]", a1, *(a1 + 16), *(a1 + 20), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

void __itemairplay_sendUnhandledURLResponse_block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0x1F0B3E3F8;
  v10 = 0x1F0B3E418;
  v11 = 0x1F0B3E438;
  CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
  FigCFDictionaryGetValue();
  FigCFNumberGetUInt64();
  FigReadWriteLockLockForRead();
  v3 = a1[5];
  if (!*(v3 + 72) && *(v3 + 700))
  {
    if (!pap_playbackSessionGetBooleanProperty() && CFDictionaryContainsKey(CopyRemovingKeys, *MEMORY[0x1E6960D00]))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      itemairplay_postFailNotificationWithError(a1[7], -17224, 1);
    }

    if (dword_1EAF172E8)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    pap_playbackSessionPerformRemoteAction(a1[6], *MEMORY[0x1E6961A20], CopyRemovingKeys);
  }

  FigReadWriteLockUnlockForRead();
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

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
  }
}

void __pap_playbackSessionRequestForStreamingKeyCompletion_block_invoke(uint64_t a1)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(a1 + 64);
  if (v3)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v3 = -12860;
LABEL_2:
    valuePtr = v3;
    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6961BD0]);
  if (!Value || (v10 = CFDictionaryGetValue(Value, *MEMORY[0x1E6961A70])) == 0 || (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr), !valuePtr))
  {
    FigCFDictionaryGetValue();
    FigCFDictionarySetValue();
  }

LABEL_3:
  FigCFDictionarySetInt64();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetInt32();
  v4 = *(*(a1 + 48) + 808);
  if (v4)
  {
    FigAirPlayURLProcessorUtilHandleStreamingKeyResponse(v4, Mutable);
  }

  v5 = *(a1 + 40);
  if (*v5)
  {
    CFRelease(*v5);
    v5 = *(a1 + 40);
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 56));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void playqueue_removeItemFromClientQueueAndFromMediaControlPlaylistInternal(uint64_t a1, const void *a2, int a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*a1);
  if (Count >= 1)
  {
    v20.length = Count;
    v20.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*a1, v20, a2);
    if (FirstIndexOfValue != -1)
    {
      v10 = FirstIndexOfValue;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (a3 && DerivedStorage[700])
      {
        --*(a1 + 16);
        DerivedStorage[700] = 0;
        DerivedStorage[702] = 0;
      }

      if (a4 && DerivedStorage[701])
      {
        --*(a1 + 20);
        DerivedStorage[701] = 0;
      }

      if (!DerivedStorage[700] && !DerivedStorage[701])
      {
        CFArrayRemoveValueAtIndex(*a1, v10);
      }
    }
  }

  v12 = playqueue_copyPlayQueueSummary(a1);
  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v13)
  {
    v14 = v13;
    if (dword_1EAF172E8)
    {
      v15 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v16 = *(v15 + 216);
        if (v16 && v16 != 10)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t playerairplay_performQueuedItemVodkaExchange(const void *a1, const void *a2, const void *a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  *(v10 + 736) = FigGetUpTimeNanoseconds();
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{DerivedStorage[28], @"RouteInfo", DerivedStorage[35], @"EndpointPlaybackSession", *(v10 + 80), @"MediaControlUUID", 0}];
  v12 = DerivedStorage[11];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __playerairplay_performQueuedItemVodkaExchange_block_invoke;
  v24[3] = &__block_descriptor_57_e25_v16__0____CFDictionary__8l;
  v24[4] = a1;
  v24[5] = a2;
  v25 = a4;
  v24[6] = a3;
  v13 = *(CMBaseObjectGetVTable() + 16);
  if (*v13 && (v14 = v13[11]) != 0)
  {
    v15 = v14(a3, v11, v12, v24);
    if (!v15)
    {
      v16 = *(v10 + 632);
      if (v16)
      {
        v17 = *(CMBaseObjectGetVTable() + 16);
        if (*v17)
        {
          v18 = v17[12];
          if (v18)
          {
            v18(v16);
          }
        }

        v19 = *(v10 + 632);
        if (v19)
        {
          CFRelease(v19);
          *(v10 + 632) = 0;
        }
      }

      CFRetain(a3);
      v15 = 0;
      *(v10 + 632) = a3;
      goto LABEL_25;
    }
  }

  else
  {
    v15 = 4294954514;
  }

  if (a4 && pap_isLocalFileURL(*(v10 + 88), 0))
  {
    v21 = itemairplay_createCPEProtectorIfAvailable(a2, 0, &v23);
    if (v21)
    {
      v22 = v21;
      v15 = playerairplay_performQueuedItemVodkaExchange(a1, a2, v21, 0);
      CFRelease(v22);
    }

    else
    {
      *(v10 + 703) = 1;
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
    }
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  if (a2)
  {
    CFRelease(a2);
  }

LABEL_25:
  objc_autoreleasePoolPop(v8);
  return v15;
}

void __itemairplay_assureItemForAirPlay_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 703) == 2)
  {
    v1 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v1)
    {
      v3 = v1;
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);

      CFRelease(v3);
    }
  }

  else
  {
    v2 = *(a1 + 40);

    itemairplay_requestAirPlayPlaybackInfo(v2, 0, 0, 0);
  }
}

void pap_playbackSessionGetPlaybackInfoCompletion(const void *a1, int a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = a3[1];
  if (a1)
  {
    CFRetain(a1);
  }

  v8 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionGetPlaybackInfoCompletion_block_invoke;
  block[3] = &__block_descriptor_68_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a3;
  block[6] = a1;
  block[7] = v7;
  v10 = a2;
  dispatch_async(v8, block);
}

void pap_playbackSessionFreeSeekCompletionContext(CFTypeRef *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
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

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void __pap_playbackSessionGetPlaybackInfoCompletion_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 29);
    v6 = *v4;
    shouldUseInterstitialQueuing = pap_shouldUseInterstitialQueuing(*v4);
    Value = *(a1 + 48);
    if (Value)
    {
      v9 = !shouldUseInterstitialQueuing;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      Value = CFDictionaryGetValue(*(a1 + 48), *MEMORY[0x1E6961D98]);
    }

    itemairplay_getPlaybackInfoCompletionHandler(*(a1 + 56), v6, Value, *(a1 + 64), v5, 0, *(*(a1 + 40) + 30), *(*(a1 + 40) + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);

  pap_playbackSessionFreeSeekCompletionContext(v3);
}

uint64_t itemairplay_airplaySetCurrentTime(const void *a1, CMTime *a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  v12 = CMBaseObjectGetDerivedStorage();
  if (!v12 || *v12)
  {
    itemairplay_airplaySetCurrentTime_cold_2(&time);
    value_low = LODWORD(time.value);
    if (!v11)
    {
      return value_low;
    }

    goto LABEL_37;
  }

  v40 = v12;
  v37 = a2;
  if (dword_1EAF172E8)
  {
    LODWORD(v42.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = *(DerivedStorage + 144);
  if (!v14 || v14 == a5)
  {
    if (a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  time = *a2;
  itemairplay_sendSeekToTimeNotification(a1, v14, 0);
  *(DerivedStorage + 144) = 0;
  if (!a5)
  {
LABEL_8:
    a5 = *(DerivedStorage + 816);
    *(DerivedStorage + 816) = FPSupport_IncrementSeekID(*(DerivedStorage + 816));
  }

LABEL_9:
  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    v15 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v42 = **&MEMORY[0x1E6960CC0];
    itemairplay_GetCurrentTime(a1, &v42);
    time = *a2;
    time2 = v42;
    if (CMTimeCompare(&time, &time2) < 0)
    {
      *(DerivedStorage + 708) = 0;
    }

    FigReadWriteLockLockForRead();
    *(DerivedStorage + 144) = a5;
    if (!*(DerivedStorage + 72) && !*(DerivedStorage + 701) && *(CMBaseObjectGetDerivedStorage() + 360))
    {
      v18 = *&a2->value;
      *(DerivedStorage + 136) = a2->epoch;
      *(DerivedStorage + 120) = v18;
      *(DerivedStorage + 157) = 1;
      time = *a2;
      itemairplay_setRememberedTimeAndDefaultFlag(a1, &time);
    }

    FigReadWriteLockUnlockForRead();
    time = *a2;
    FigCFDictionarySetCMTime();
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    if (a3)
    {
      FigCFDictionarySetInt32();
    }

    FigCFDictionarySetValue();
    if (Mutable)
    {
      itemairplay_airplaySetCurrentTime_cold_1(DerivedStorage);
      if (!MutableCopy)
      {
        goto LABEL_21;
      }
    }

    else if (!MutableCopy)
    {
LABEL_21:
      if (*(v40 + 14) != 0.0 || !*(v40 + 19))
      {
        goto LABEL_34;
      }

      time.value = 0;
      v19 = CMBaseObjectGetDerivedStorage();
      if (v19)
      {
        v20 = v19;
        FigReadWriteLockLockForRead();
        if (!*(v20 + 72))
        {
          v21 = *(v20 + 88);
          if (v21)
          {
            if (pap_isLocalFileURL(v21, 0))
            {
              FigPlaybackItemGetFigBaseObject();
              v32 = v31;
              v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v33)
              {
                v33(v32, @"CPEProtector", v15, &time);
                value = time.value;
                if (time.value)
                {
                  time2.value = 0;
                  v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v35)
                  {
                    v35(value, @"IsRental", v15, &time2);
                    if (time2.value)
                    {
                      v36 = CFBooleanGetValue(time2.value);
                      CFRelease(time2.value);
                      CFRelease(time.value);
                      FigReadWriteLockUnlockForRead();
                      v22 = v40;
                      if (!v36)
                      {
LABEL_28:
                        if (!v22[51])
                        {
                          v23 = v22;
                          FigSimpleMutexLock();
                          epoch = v37->epoch;
                          *(v23 + 11) = *&v37->value;
                          *(v23 + 24) = epoch;
                          FigSimpleMutexUnlock();
                          if (v11)
                          {
                            CFRetain(v11);
                          }

                          if (a1)
                          {
                            CFRetain(a1);
                          }

                          v25 = *(v40 + 20);
                          block[0] = MEMORY[0x1E69E9820];
                          block[1] = 3221225472;
                          block[2] = __itemairplay_airplaySetCurrentTime_block_invoke;
                          block[3] = &__block_descriptor_56_e5_v8__0l;
                          block[4] = v40;
                          block[5] = a1;
                          block[6] = v11;
                          dispatch_async(v25, block);
                        }
                      }

LABEL_34:
                      if (dword_1EAF172E8)
                      {
                        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      goto LABEL_36;
                    }
                  }

                  CFRelease(time.value);
                }
              }
            }
          }
        }

        FigReadWriteLockUnlockForRead();
      }

      v22 = v40;
      goto LABEL_28;
    }

    CFRelease(MutableCopy);
    goto LABEL_21;
  }

  v29 = *&a2->value;
  *(DerivedStorage + 136) = a2->epoch;
  *(DerivedStorage + 120) = v29;
  *(DerivedStorage + 144) = a5;
  *(DerivedStorage + 157) = 0;
  time = *a2;
  itemairplay_setRememberedTimeAndDefaultFlag(a1, &time);
  *(DerivedStorage + 188) = a3 & 0xF;
  itemairplay_postItemNotification();
  if (dword_1EAF172E8)
  {
    LODWORD(v42.value) = 0;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    time = *a2;
    itemairplay_sendSeekToTimeNotification(a1, a5, a6);
  }

LABEL_36:
  value_low = 0;
  if (v11)
  {
LABEL_37:
    CFRelease(v11);
  }

  return value_low;
}

uint64_t playerairplay_ignoreRemoteRateUpdate(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    hasAirPlayReachedTimeToPausePlayback = pap_hasAirPlayReachedTimeToPausePlayback(a1, a2);
  }

  else
  {
    hasAirPlayReachedTimeToPausePlayback = 0;
  }

  return (a3 == 0.0) & ((*(DerivedStorage + 64) != 0) | hasAirPlayReachedTimeToPausePlayback);
}

uint64_t playerairplay_isAPVSupportedForCoordinatedPlayback(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

BOOL pap_hasAirPlayReachedTimeToPausePlayback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 524) & 1) == 0)
  {
    return 0;
  }

  v5 = DerivedStorage;
  result = playerairplay_getIsAirplayVideoActive(a1);
  if (result)
  {
    CMTimebaseGetTime(&time1, *(v5 + 568));
    v6 = *(v5 + 512);
    return CMTimeCompare(&time1, &v6) >= 0;
  }

  return result;
}

void pap_handleAirPlayReachedTimeToPausePlayback(const void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = v5;
    if (!*(DerivedStorage + 64) && (*(v5 + 524) & 1) != 0)
    {
      v8 = (v5 + 512);
      *(DerivedStorage + 64) = 1;
      if (!*(DerivedStorage + 241))
      {
        v9 = *(DerivedStorage + 56);
        *(DerivedStorage + 56) = 0;
        playerairplay_setRateAirPlay(a1, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
        *(DerivedStorage + 56) = v9;
      }

      playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, 1);
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&time.value = *&v8->value;
      time.epoch = *(v6 + 528);
      FigCFDictionarySetCMTime();
      itemairplay_postItemNotification();
      v11 = CMTimebaseCopySource(*(v6 + 568));
      v12 = *(v6 + 568);
      CMSyncGetTime(&time, v11);
      timebaseTime = *v8;
      CMTimebaseSetRateAndAnchorTime(v12, 0.0, &timebaseTime, &time);
      time = *v8;
      itemairplay_setRememberedTimeAndDefaultFlag(a2, &time);
      if (dword_1EAF172E8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else if (dword_1EAF172E8)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t itemairplay_convertTimeRangesToTimeIntervals(const __CFAllocator *a1, CFArrayRef theArray, uint64_t a3, __CFArray **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 4294954513;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v10 = Mutable;
  v21 = a4;
  v11 = 0;
  v22 = *MEMORY[0x1E6961F00];
  key = *MEMORY[0x1E6961F08];
  v12 = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      *keys = 0u;
      v34 = 0u;
      *values = 0u;
      v32 = 0u;
      Seconds = 0.0;
      valuePtr = 0.0;
      v28 = **&MEMORY[0x1E6960C70];
      v27 = v28;
      v26 = v28;
      Value = CFDictionaryGetValue(ValueAtIndex, key);
      v16 = CFDictionaryGetValue(v14, v22);
      v17 = 4294954513;
      if (!Value)
      {
        goto LABEL_24;
      }

      v18 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      CMTimeMakeFromDictionary(&v28, Value);
      CMTimeMakeFromDictionary(&v26, v18);
      lhs = v28;
      rhs = v26;
      CMTimeAdd(&v27, &lhs, &rhs);
      lhs = v28;
      valuePtr = CMTimeGetSeconds(&lhs);
      lhs = v27;
      Seconds = CMTimeGetSeconds(&lhs);
      keys[0] = @"start";
      keys[1] = @"end";
      *&v34 = @"startTime";
      *(&v34 + 1) = @"endTime";
      values[0] = CFNumberCreate(v12, kCFNumberFloat64Type, &valuePtr);
      values[1] = CFNumberCreate(v12, kCFNumberFloat64Type, &Seconds);
      lhs = v28;
      *&v32 = CMTimeCopyAsDictionary(&lhs, a1);
      lhs = v27;
      *(&v32 + 1) = CMTimeCopyAsDictionary(&lhs, a1);
      v19 = CFDictionaryCreate(a1, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (values[0])
      {
        CFRelease(values[0]);
      }

      if (values[1])
      {
        CFRelease(values[1]);
      }

      if (v32)
      {
        CFRelease(v32);
      }

      if (*(&v32 + 1))
      {
        CFRelease(*(&v32 + 1));
      }

      if (!v19)
      {
        v17 = 4294954510;
        goto LABEL_24;
      }

      CFArrayAppendValue(v10, v19);
      CFRelease(v19);
    }

    ++v11;
  }

  while (v8 != v11);
  if (v21)
  {
    v17 = 0;
    *v21 = v10;
    return v17;
  }

  v17 = 0;
LABEL_24:
  CFRelease(v10);
  return v17;
}

uint64_t itemairplay_setPositionCompletionHandler(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v12 = result;
  FigReadWriteLockLockForRead();
  if (!*(v12 + 72))
  {
    if (a2)
    {
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      itemairplay_setPositionCompletionHandler_cold_1();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    itemairplay_sendSeekToTimeNotification(a1, a4, a5);
  }

LABEL_5:

  return FigReadWriteLockUnlockForRead();
}

void pap_updateAirPlayReachedTimeToPausePlayback(uint64_t a1, CMTime *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  time1 = *a2;
  time2 = *(DerivedStorage + 512);
  if (CMTimeCompare(&time1, &time2))
  {
    v4 = DerivedStorage + 512;
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *&a2->value;
    *(v4 + 16) = a2->epoch;
    *v4 = v6;
    itemairplay_postItemNotification();
  }
}

void __itemairplay_airplaySetCurrentTime_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (**(a1 + 32))
  {
    goto LABEL_38;
  }

  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  image = 0;
  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 72))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    v5 = CMBaseObjectGetDerivedStorage();
    if (v5)
    {
      v6 = v5;
      if (!*v5 && *(v5 + 56) == 0.0)
      {
        if (*(v5 + 152))
        {
          FigSimpleMutexLock();
          v32 = *(v6 + 176);
          v7 = *(v6 + 188);
          v33 = *(v6 + 184);
          v8 = *(v6 + 192);
          FigSimpleMutexUnlock();
          if (v7)
          {
            v9 = (DerivedStorage + 32);
            if (*(DerivedStorage + 32) || (v10 = CFGetAllocator(v2), !FigAssetImageGeneratorCreateFromAsset(v10, *(DerivedStorage + 16), (DerivedStorage + 32))))
            {
              if (!*(DerivedStorage + 40))
              {
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(DerivedStorage + 40) = Mutable;
                if (!Mutable)
                {
                  __itemairplay_airplaySetCurrentTime_block_invoke_cold_1(0, v12, v13, v14, v15, v16, v17, v18, v29.value, v29.timescale, v29.flags, v29.epoch);
                  if (!v4)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_34;
                }

                FigCFDictionarySetInt32();
              }

              if (*v9)
              {
                v19 = CFRetain(*v9);
              }

              else
              {
                v19 = 0;
              }

              v20 = *(DerivedStorage + 40);
              if (v20)
              {
                v21 = CFRetain(v20);
              }

              else
              {
                v21 = 0;
              }

              FigReadWriteLockUnlockForRead();
              v22 = CFGetAllocator(v2);
              v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v23)
              {
                time1.value = v32;
                time1.timescale = v33;
                time1.flags = v7;
                time1.epoch = v8;
                v24 = v23(v19, &time1, v21, v22, &image, 0) == 0;
              }

              else
              {
                v24 = 0;
              }

              FigReadWriteLockLockForRead();
              if (v19)
              {
                CFRelease(v19);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              if (v24 && !*v6)
              {
                if (image)
                {
                  time1.value = v32;
                  time1.timescale = v33;
                  time1.flags = v7;
                  time1.epoch = v8;
                  v29 = *(v6 + 176);
                  if (!CMTimeCompare(&time1, &v29))
                  {
                    Width = CGImageGetWidth(image);
                    Height = CGImageGetHeight(image);
                    [MEMORY[0x1E6979518] begin];
                    if (!pthread_main_np())
                    {
                      [MEMORY[0x1E6979518] activateBackground:1];
                    }

                    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
                    [*(v6 + 152) setBounds:{0.0, 0.0, Width, Height}];
                    [*(v6 + 152) setPosition:{Width * 0.5, Height * 0.5}];
                    [*(v6 + 152) setContents:image];
                    [MEMORY[0x1E6979518] commit];
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v4)
    {
LABEL_34:
      CFRelease(v4);
    }
  }

LABEL_35:
  if (image)
  {
    CFRelease(image);
  }

  FigReadWriteLockUnlockForRead();
LABEL_38:
  v27 = *(a1 + 40);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    CFRelease(v28);
  }
}

BOOL playerairplay_getIsAirplayVideoActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) < 3)
  {
    return 1;
  }

  v4 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v4)
  {
    v5 = v4 == 10;
  }

  else
  {
    v5 = 1;
  }

  return !v5 && *(DerivedStorage + 457) && playerairplay_isAirPlayVideoAllowed(a1) != 0;
}

uint64_t playerairplay_isAirPlayVideoAllowed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*(v2 + 48) || !*(v2 + 49))
  {
    return 0;
  }

  if (!*(DerivedStorage + 456))
  {
    return 1;
  }

  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

void itemairplay_getInterstitialEventTimeForItem(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  FigPlayerInterstitialEventGetStartTime(a2, a3);
  started = FigPlayerInterstitialEventCopyStartDate(a2);
  if (*(a3 + 12) & 1) == 0 && *(a1 + 192) && (*(a1 + 172))
  {
    v7 = MEMORY[0x19A8CCD90]();
    v8 = MEMORY[0x19A8CCD90](started);
    CMTimeMakeWithSeconds(&v12, v8 - v7, 1000000);
    *a3 = *&v12.value;
    epoch = v12.epoch;
    *(a3 + 16) = v12.epoch;
    *&lhs.value = *a3;
    lhs.epoch = epoch;
    v10 = *(a1 + 160);
    CMTimeAdd(&v12, &lhs, &v10);
    *a3 = v12;
  }

  if (started)
  {
    CFRelease(started);
  }
}

uint64_t pap_copyPrimaryPlayer(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 368))
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

void pap_invalidateEndpointPlaybackSession(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  StopAndReleaseTimer((DerivedStorage + 496));
  playerairplay_updateShareAndAirPlayEchoMitigation(a1);
  if (*(DerivedStorage + 280))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 368))
    {
      v3 = pap_copyPrimaryPlayer(a1);
      v4 = CMBaseObjectGetDerivedStorage();
      if (!v3)
      {
        goto LABEL_7;
      }

      v5 = v4;
      CFBagRemoveValue(*(v4 + 288), *(DerivedStorage + 280));
      v6 = MEMORY[0x19A8CCA80](*(v5 + 288), *(DerivedStorage + 280));
      CFRelease(v3);
    }

    else
    {
      CFBagRemoveValue(*(DerivedStorage + 288), *(DerivedStorage + 280));
      v6 = MEMORY[0x19A8CCA80](*(DerivedStorage + 288), *(DerivedStorage + 280));
    }

    if (v6 > 0)
    {
LABEL_12:
      v12 = *(DerivedStorage + 280);
      if (v12)
      {
        CFRelease(v12);
        *(DerivedStorage + 280) = 0;
      }

      return;
    }

LABEL_7:
    v7 = *(DerivedStorage + 280);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v8)
    {
      v8(v7, 0, 0, 0);
    }

    CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject();
    if (CMBaseObject)
    {
      v10 = CMBaseObject;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v10);
      }
    }

    goto LABEL_12;
  }
}

_BYTE *playerairplay_updateAirPlayVideoIsActiveProperty(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (*result)
  {
    return result;
  }

  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
  {
    v12 = *MEMORY[0x1E695E4C0];
    FigBytePumpGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v14, 0x1F0B34D78, v12);
    }

    FigBytePumpGetFigBaseObject();
    v17 = v16;
    VTable = CMBaseObjectGetVTable();
    v19 = *(VTable + 8);
    result = (VTable + 8);
    v10 = *(v19 + 56);
    if (v10)
    {
      v20 = v17;
      v21 = v12;
LABEL_19:

      return v10(v20, 0x1F0B34D98, v21);
    }
  }

  else if (v2[51])
  {
    FigBytePumpGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, 0x1F0B34D78, *MEMORY[0x1E695E4C0]);
    }

    FigBytePumpGetFigBaseObject();
    v7 = v6;
    v8 = CMBaseObjectGetVTable();
    v9 = *(v8 + 8);
    result = (v8 + 8);
    v10 = *(v9 + 56);
    if (v10)
    {
      v11 = MEMORY[0x1E695E4D0];
LABEL_18:
      v21 = *v11;
      v20 = v7;
      goto LABEL_19;
    }
  }

  else
  {
    FigBytePumpGetFigBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v24)
    {
      v24(v23, 0x1F0B34D78, *MEMORY[0x1E695E4D0]);
    }

    FigBytePumpGetFigBaseObject();
    v7 = v25;
    v26 = CMBaseObjectGetVTable();
    v27 = *(v26 + 8);
    result = (v26 + 8);
    v10 = *(v27 + 56);
    if (v10)
    {
      v11 = MEMORY[0x1E695E4C0];
      goto LABEL_18;
    }
  }

  return result;
}

const char *pap_getDescriptionForAirPlayState(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return "Unknown";
  }

  else
  {
    return (&off_1E748B910)[a1];
  }
}

uint64_t pap_doesCurrentRouteUseScreen(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigBytePumpGetFigBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(v2, 0x1F0B34E58, *MEMORY[0x1E695E480], &cf);
  }

  v4 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

const void *itemairplay_getiTunesStoreContentType(uint64_t a1)
{
  result = itemairplay_copyiTunesStoreContentInfo(a1);
  if (result)
  {
    v2 = result;
    v3 = itemairplay_getiTunesStoreContentTypeFromInfo(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

const void *itemairplay_copyiTunesStoreAlternateContentID(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E870];
  v2 = itemairplay_copyiTunesStoreContentInfo(a1);
  v3 = v2;
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"assetOption_iTunesStoreAlternateContentInfo");
    if (Value)
    {
      v1 = CFDictionaryGetValue(Value, @"assetOption_iTunesStoreContentID");
    }
  }

  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v1;
}

const void *itemairplay_copyiTunesStoreContentInfo(uint64_t a1)
{
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 16))
  {
    return 0;
  }

  FigAssetGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v3(v2, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &cf);
  if (!cf)
  {
    return 0;
  }

  DictionaryValue = FigCFDictionaryGetDictionaryValue();
  v5 = DictionaryValue;
  if (DictionaryValue)
  {
    CFRetain(DictionaryValue);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t itemairplay_getiTunesStoreContentTypeFromInfo(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentType");
  if (result)
  {
    v4 = result;
    if (CFEqual(result, @"match"))
    {
      return 2;
    }

    else
    {
      return CFEqual(v4, @"purchaseHistory") != 0;
    }
  }

  return result;
}

void __playerairplay_performQueuedItemVodkaExchange_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = v7;
    FigReadWriteLockLockForRead();
    if (!*(v8 + 72))
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [a2 objectForKey:@"Error"];
      if (v13 && [v13 code])
      {
        if (!v5 || (__playerairplay_performQueuedItemVodkaExchange_block_invoke_cold_1(v8) & 1) != 0)
        {
          *(v8 + 703) = 4;
          *(v8 + 707) = 2;
        }
      }

      else
      {
        *(v8 + 703) = 3;
        v14 = *(v8 + 432);
        if (v14)
        {
          CFRelease(v14);
          *(v8 + 432) = 0;
        }

        v15 = [a2 objectForKey:@"AirPlayParams"];
        *(v8 + 432) = v15;
        if (v15)
        {
          CFRetain(v15);
        }
      }

      objc_autoreleasePoolPop(v12);
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v4);
    }

    FigReadWriteLockUnlockForRead();
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 40);
  if (v11)
  {

    CFRelease(v11);
  }
}

__CFDictionary *itemairplay_copyPlayParams(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v10 = v9;
      FigCFDictionarySetFloat32();
      v11 = MEMORY[0x1E695E4D0];
      if (*(v10 + 51))
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961E48], *MEMORY[0x1E695E4D0]);
      }

      if (*(v10 + 137))
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961EA8], *v11);
      }

      if (pap_shouldUseInterstitialQueuing(v8))
      {
        CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *v11);
      }
    }

    if (!itemairplay_setUpPlayParamDictionary(a1, Mutable, *(DerivedStorage + 432), v3))
    {
      goto LABEL_10;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  Mutable = 0;
  result = 0;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
    return Mutable;
  }

  return result;
}

void playqueue_addItemToMediaControlPlaylist(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  *(CMBaseObjectGetDerivedStorage() + 701) = 1;
  ++*(a1 + 20);
  v3 = playqueue_copyPlayQueueSummary(a1);
  if (dword_1EAF172E8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  if (v3)
  {
    CFRelease(v3);
  }
}

void pap_playbackSessionPlayCompletion(int a1, void *a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 112);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __pap_playbackSessionPlayCompletion_block_invoke;
  v5[3] = &__block_descriptor_44_e5_v8__0l;
  v5[4] = a2;
  v6 = a1;
  dispatch_async(v4, v5);
}

uint64_t itemairplay_setUpPlayParamDictionary(uint64_t a1, __CFDictionary *a2, const __CFDictionary *a3, int a4)
{
  v201 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v184 = 0;
  v182 = 0;
  number = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    itemairplay_setUpPlayParamDictionary_cold_1(&time);
LABEL_329:
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v178 = 0;
    v179 = 0;
    goto LABEL_330;
  }

  if (!a2)
  {
    itemairplay_setUpPlayParamDictionary_cold_13(&time);
    goto LABEL_329;
  }

  v179 = FigCFWeakReferenceHolderCopyReferencedObject();
  v9 = CMBaseObjectGetDerivedStorage();
  if (!v9 || (v10 = v9, *v9))
  {
    itemairplay_setUpPlayParamDictionary_cold_12(&time);
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v178 = 0;
LABEL_330:
    value_low = LODWORD(time.value);
    goto LABEL_100;
  }

  if (!*(DerivedStorage + 88))
  {
    if (dword_1EAF172E8)
    {
      LODWORD(v190) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemairplay_postFailNotificationWithError(a1, -17226, 1);
    v177 = 0;
    v178 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    goto LABEL_281;
  }

  v174 = a4;
  if (!*(DerivedStorage + 24))
  {
    FigAssetGetCMBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v29)
    {
      v29(v28, @"assetProperty_AssetType", *MEMORY[0x1E695E480], DerivedStorage + 24);
    }
  }

  v176 = CFEqual(*(DerivedStorage + 24), @"com.apple.coremedia.assettype.streaming");
  isLocalFileURL = pap_isLocalFileURL(*(DerivedStorage + 88), &v184 + 1);
  if (v176)
  {
    v12 = 1;
  }

  else
  {
    v12 = !isLocalFileURL;
  }

  v13 = !v12;
  v175 = v13;
  v14 = *(DerivedStorage + 88);
  if (v14 && FigCFURLIsLocalResource() && (v15 = CFURLCopyPathExtension(v14), (v16 = v15) != 0))
  {
    v172 = CFStringCompare(v15, @"movpkg", 1uLL) == kCFCompareEqualTo;
    CFRelease(v16);
  }

  else
  {
    v172 = 0;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  v18 = FigCFWeakReferenceHolderCopyReferencedObject();
  v19 = CMBaseObjectGetDerivedStorage();
  if (v19 && !*v19)
  {
    v20 = CFEqual(*(v17 + 24), @"com.apple.coremedia.assettype.streaming");
    BooleanProperty = pap_playbackSessionGetBooleanProperty();
    v22 = itemairplay_copyiTunesStoreContentRentalID(a1);
    v23 = v22;
    if (!BooleanProperty && v22 && v20)
    {
      itemairplay_postFailNotificationWithError(a1, -17220, 1);
      value_low = 4294950076;
    }

    else
    {
      value_low = 0;
      if (!v22)
      {
        goto LABEL_28;
      }
    }

    CFRelease(v23);
LABEL_28:
    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  itemairplay_setUpPlayParamDictionary_cold_2(&time);
  value_low = LODWORD(time.value);
  if (v18)
  {
LABEL_29:
    CFRelease(v18);
  }

LABEL_30:
  if (value_low)
  {
    v177 = 0;
    v178 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    goto LABEL_282;
  }

  if (pap_playbackSessionGetBooleanProperty())
  {
    v26 = 0;
    v178 = 0;
  }

  else
  {
    v178 = itemairplay_copyiTunesStoreAlternateContentID(a1);
    v26 = FigCFEqual() == 0;
  }

  if (*(DerivedStorage + 16))
  {
    FigAssetGetCMBaseObject();
    v31 = v30;
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v32)
    {
      v32(v31, @"assetProperty_CreationOptionsDictionary", *MEMORY[0x1E695E480], &theDict);
    }
  }

  CFDictionaryAddValue(a2, *MEMORY[0x1E6961D40], *(DerivedStorage + 80));
  if (v10[459])
  {
    v33 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v10 + 459, 0x8000100u);
    FigCFDictionarySetValue();
    if (v33)
    {
      CFRelease(v33);
    }
  }

  if (*(DerivedStorage + 820))
  {
    v34 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (DerivedStorage + 820), 0x8000100u);
    FigCFDictionarySetValue();
    if (v34)
    {
      CFRelease(v34);
    }
  }

  v35 = *(DerivedStorage + 192);
  if (v35)
  {
    if (*(DerivedStorage + 224))
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961CE8], v35);
    }

    else
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961CE0], v35);
    }
  }

  else
  {
    v36 = *(DerivedStorage + 184);
    if (!*(DerivedStorage + 184))
    {
      time = *(DerivedStorage + 160);
      FigCFDictionarySetCMTime();
      v37 = *MEMORY[0x1E695E480];
      time = *(DerivedStorage + 160);
      v38 = CMTimeCopyDescription(v37, &time);
      if (v38)
      {
        CFRelease(v38);
      }
    }

    if (pap_playbackSessionGetBooleanProperty())
    {
      time = **&MEMORY[0x1E6960CC0];
      valuePtr = *(DerivedStorage + 160);
      Seconds = CMTimeGetSeconds(&valuePtr);
      if (Seconds > 0.0)
      {
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v40)
        {
          if (!v40(a1, &time))
          {
            valuePtr = time;
            CMTimeGetSeconds(&valuePtr);
          }
        }
      }

      if (!v36)
      {
        FigCFDictionarySetFloat32();
      }
    }
  }

  if (a3)
  {
    Count = CFDictionaryGetCount(a3);
    v42 = malloc_type_calloc(8uLL, Count, 0x43E43F7DuLL);
    CFDictionaryGetKeysAndValues(a3, v42, 0);
    if (Count >= 1)
    {
      v43 = v42;
      do
      {
        Value = CFDictionaryGetValue(a3, *v43);
        CFDictionaryAddValue(a2, *v43++, Value);
        --Count;
      }

      while (Count);
    }

    free(v42);
  }

  if (itemairplay_getiTunesStoreContentType(a1) != 0 && !v26)
  {
    v45 = CFDictionaryGetValue(theDict, @"assetOption_iTunesStoreContentInfo");
    itemairplay_addiTunesStoreContentInfo(v45, a2);
  }

  if (!*(DerivedStorage + 688))
  {
    playerairplay_isInterstitialEventIDRestrictedForSkip(v179, *(DerivedStorage + 760));
  }

  FigCFDictionarySetInt64();
  v46 = *(DerivedStorage + 744);
  if (v46)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961D08], v46);
  }

  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x2020000000;
  v200 = 0;
  v47 = *(v10 + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __itemairplay_setUpPlayParamDictionary_block_invoke;
  block[3] = &unk_1E7482510;
  block[4] = &time;
  block[5] = DerivedStorage;
  dispatch_sync(v47, block);
  v48 = *&time.timescale;
  v49 = *(*&time.timescale + 24);
  if (v49)
  {
    v50 = CFArrayGetCount(v49);
    v48 = *&time.timescale;
    if (v50 >= 1)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961620], *(*&time.timescale + 24));
      v48 = *&time.timescale;
    }
  }

  v51 = *(v48 + 24);
  if (v51)
  {
    CFRelease(v51);
  }

  _Block_object_dispose(&time, 8);
  FigCFDictionaryGetBooleanIfPresent();
  if ((v175 & 1) == 0)
  {
    if (*(DerivedStorage + 16))
    {
      FigAssetGetCMBaseObject();
      v66 = v65;
      v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v67)
      {
LABEL_98:
        value_low = 4294954514;
        goto LABEL_99;
      }

      value_low = v67(v66, @"assetProperty_CustomURLLoader", *MEMORY[0x1E695E480], &v182);
      if (value_low)
      {
LABEL_99:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        goto LABEL_100;
      }
    }

    v68 = v182;
    if (v182)
    {
      v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v69)
      {
        v69(v68, *MEMORY[0x1E6961600], *MEMORY[0x1E695E480], &number);
      }

      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, (DerivedStorage + 104));
        FigCFDictionarySetInt64();
      }
    }

    if (v176)
    {
      FigAssetGetCMBaseObject();
      v71 = v70;
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v72)
      {
        value_low = v72(v71, @"assetProperty_OriginalNetworkContentURL");
        if (!value_low)
        {
          itemairplay_setUpPlayParamDictionary_cold_3(&time);
          value_low = LODWORD(time.value);
        }

        goto LABEL_99;
      }

      goto LABEL_98;
    }

    v78 = *(DerivedStorage + 88);
    if (v78)
    {
      v78 = CFRetain(v78);
    }

    cf = v78;
    if (v26 && FigCFDictionaryGetDictionaryValue())
    {
      DictionaryValue = FigCFDictionaryGetDictionaryValue();
      itemairplay_addiTunesStoreContentInfo(DictionaryValue, a2);
      v80 = CFDictionaryGetValue(DictionaryValue, @"assetOption_iTunesStoreAlternateContentInfoAssetURLString");
      v81 = CFURLCreateWithString(*MEMORY[0x1E695E480], v80, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v81;
    }

    v82 = cf;
    if (cf)
    {
      if (theDict)
      {
        StringValue = FigCFDictionaryGetStringValue();
        v82 = cf;
        if (StringValue)
        {
          time.value = 0;
          value_low = FigCFHTTPCreateURLWithQueryParam(cf, @"_HLS_primary_id=", StringValue, &time);
          if (value_low)
          {
            goto LABEL_99;
          }

          v83 = cf;
          cf = time.value;
          if (time.value)
          {
            CFRetain(time.value);
          }

          CFRelease(v83);
          if (time.value)
          {
            CFRelease(time.value);
          }

          v82 = cf;
        }
      }
    }

    if (v82)
    {
      v84 = CFURLCopyAbsoluteURL(v82);
      v85 = v84;
      v86 = v84 == 0;
      if (!v84)
      {
        v84 = cf;
      }

      v87 = CFURLGetString(v84);
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BA0], v87);
      if (!v86)
      {
        CFRelease(v85);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10[272] && FigAirPlayURLProcessorUtilDoesItemRequestSecureStop(a1, v52, StringValue, v54, v55, v56, v57, v58))
    {
      CFDictionarySetValue(a2, *MEMORY[0x1E6961628], *MEMORY[0x1E695E4D0]);
    }

    if (!v172)
    {
      v177 = 0;
      v74 = 0;
LABEL_134:
      v76 = 0;
      v75 = 0;
      goto LABEL_164;
    }

    if (HIBYTE(v184))
    {
      goto LABEL_77;
    }

    v74 = CFURLCopyAbsoluteURL(*(DerivedStorage + 88));
    if (!v184)
    {
      if (dword_1EAF172E8)
      {
        LODWORD(v190) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v95 = v190;
        v96 = type[0];
        if (os_log_type_enabled(v94, type[0]))
        {
          v97 = v95;
        }

        else
        {
          v97 = v95 & 0xFFFFFFFE;
        }

        if (v97)
        {
          if (v179)
          {
            v98 = (CMBaseObjectGetDerivedStorage() + 459);
          }

          else
          {
            v98 = "";
          }

          if (a1)
          {
            v166 = (CMBaseObjectGetDerivedStorage() + 820);
          }

          else
          {
            v166 = "";
          }

          v167 = *(DerivedStorage + 80);
          LODWORD(valuePtr.value) = 136316418;
          *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
          LOWORD(valuePtr.flags) = 2048;
          *(&valuePtr.flags + 2) = v179;
          HIWORD(valuePtr.epoch) = 2082;
          v192 = v98;
          v193 = 2048;
          v194 = a1;
          v195 = 2082;
          v196 = v166;
          v197 = 2114;
          v198 = v167;
          _os_log_send_and_compose_impl(v97, 0, &time, 128, &dword_1962D5000, v94, v96, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s -> item %p %{public}s [%{public}@] receiver doesn't support offline HLS media content", &valuePtr, 62);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_349:
      v177 = 0;
      goto LABEL_134;
    }

    time.value = 0;
    v88 = CMBaseObjectGetDerivedStorage();
    v89 = (v88 + 48);
    v90 = *MEMORY[0x1E695E480];
    if (!*(v88 + 48) && FigStreamingAssetDownloadCacheTranslatorCreate(*MEMORY[0x1E695E480], v74, *(v88 + 57), v89))
    {
      if (itemairplay_setUpPlayParamDictionary_cold_4())
      {
LABEL_338:
        if (time.value)
        {
          CFRelease(time.value);
        }

        v177 = 0;
        goto LABEL_341;
      }
    }

    else
    {
      FigStreamingAssetDownloadCacheTranslatorGetFigBaseObject();
      v92 = v91;
      v93 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v93 && !v93(v92, @"FSADCT_MultiVariantPlaylist", v90, &time))
      {
        if (*(v88 + 57))
        {
          CFURLGetString(time.value);
        }

        v177 = time.value;
LABEL_341:
        if (v172 && !v177)
        {
          itemairplay_setUpPlayParamDictionary_cold_8(&time);
          goto LABEL_333;
        }

        if (v177)
        {
          v75 = CFURLCopyFileSystemPath(v177, kCFURLPOSIXPathStyle);
          if (v75)
          {
            v170 = v74;
            if (!v74)
            {
              v170 = *(DerivedStorage + 88);
            }

            v76 = CFURLCopyFileSystemPath(v170, kCFURLPOSIXPathStyle);
            if (v76)
            {
              CFDictionaryAddValue(a2, *MEMORY[0x1E6961C58], v76);
              goto LABEL_163;
            }

            itemairplay_setUpPlayParamDictionary_cold_6(&time);
          }

          else
          {
            itemairplay_setUpPlayParamDictionary_cold_7(&time);
            v75 = 0;
          }

          value_low = LODWORD(time.value);
          v73 = v177;
LABEL_100:
          v177 = v73;
          v76 = 0;
          if (!value_low)
          {
            goto LABEL_286;
          }

          goto LABEL_282;
        }

        goto LABEL_349;
      }
    }

    itemairplay_setUpPlayParamDictionary_cold_5(v89);
    goto LABEL_338;
  }

  if (!HIBYTE(v184))
  {
    v77 = CFURLCopyAbsoluteURL(*(DerivedStorage + 88));
    v74 = v77;
    if (!v77)
    {
      v77 = *(DerivedStorage + 88);
    }

    v75 = CFURLCopyFileSystemPath(v77, kCFURLPOSIXPathStyle);
    if (v75)
    {
      goto LABEL_162;
    }

    itemairplay_setUpPlayParamDictionary_cold_11(&time);
    goto LABEL_333;
  }

LABEL_77:
  if (!*(DerivedStorage + 96))
  {
    SecurityScopedFileURLForPersistentURL = FigCreateSecurityScopedFileURLForPersistentURL();
    *(DerivedStorage + 96) = SecurityScopedFileURLForPersistentURL;
    if (!SecurityScopedFileURLForPersistentURL)
    {
      itemairplay_setUpPlayParamDictionary_cold_10(&time);
      v73 = 0;
      v74 = 0;
      goto LABEL_334;
    }

    if (!CFURLStartAccessingSecurityScopedResource(SecurityScopedFileURLForPersistentURL))
    {
      LODWORD(v190) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v61 = v190;
      v62 = type[0];
      if (os_log_type_enabled(v60, type[0]))
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
          v64 = (CMBaseObjectGetDerivedStorage() + 820);
        }

        else
        {
          v64 = "";
        }

        v99 = 88;
        if (!*(DerivedStorage + 57))
        {
          v99 = 112;
        }

        v100 = *(DerivedStorage + v99);
        v101 = *(DerivedStorage + 96);
        LODWORD(valuePtr.value) = 136316163;
        *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
        LOWORD(valuePtr.flags) = 2048;
        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 2082;
        v192 = v64;
        v193 = 2113;
        v194 = v100;
        v195 = 2113;
        v196 = v101;
        _os_log_send_and_compose_impl(v63, 0, &time, 128, &dword_1962D5000, v60, v62, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s CFURLStartAccessingSecurityScopedResource failed. URL: %{private}@ / resolved URL: %{private}@.", &valuePtr, 52);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v102 = CFURLCopyAbsoluteURL(*(DerivedStorage + 96));
  v74 = v102;
  if (!v102)
  {
    v102 = *(DerivedStorage + 96);
  }

  v75 = CFURLCopyFileSystemPath(v102, kCFURLPOSIXPathStyle);
  if (!v75)
  {
    itemairplay_setUpPlayParamDictionary_cold_9(&time);
LABEL_333:
    v73 = 0;
LABEL_334:
    v75 = 0;
    goto LABEL_330;
  }

LABEL_162:
  v177 = 0;
  v76 = 0;
LABEL_163:
  CFDictionaryAddValue(a2, *MEMORY[0x1E6961C70], v75);
LABEL_164:
  time.value = 0;
  valuePtr.value = 0;
  CMBaseObjectGetDerivedStorage();
  FigAssetGetCMBaseObject();
  v104 = v103;
  v105 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v173 = *MEMORY[0x1E695E480];
  if (v105)
  {
    v106 = v105(v104, @"assetProperty_CreationFlags");
    v107 = time.value;
    if (!v106 && time.value)
    {
      CFNumberGetValue(time.value, kCFNumberSInt64Type, &valuePtr);
      v107 = time.value;
    }

    if (v107)
    {
      CFRelease(v107);
    }
  }

  FigCFDictionarySetInt32();
  if (theDict)
  {
    ArrayValue = FigCFDictionaryGetArrayValue();
    if (ArrayValue)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961C68], ArrayValue);
    }

    v109 = CFDictionaryGetValue(theDict, @"assetOption_InheritURIQueryComponentFromReferencingURI");
    if (v109 != 0 && !v26)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BF0], v109);
    }

    FigCFDictionarySetValueFromKeyInDict();
  }

  v110 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(a2, *MEMORY[0x1E6961C48], *MEMORY[0x1E695E4D0]);
  v111 = theDict;
  CMBaseObjectGetDerivedStorage();
  if (v111 && (v112 = CFDictionaryGetValue(v111, @"assetOption_iTunesStoreContentInfo")) != 0 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v112)) && (v114 = CFDictionaryGetValue(v112, @"assetOption_iTunesStoreAssetHLSAssetURLString")) != 0)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961BE0], v114);
    v115 = 0;
  }

  else
  {
    v115 = 1;
  }

  if (!v174)
  {
    if (v10[456])
    {
      CMBaseObjectGetDerivedStorage();
      LOBYTE(time.value) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (!LOBYTE(time.value))
      {
        if (dword_1EAF172E8)
        {
          LODWORD(v190) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v123 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v124 = v190;
          v125 = type[0];
          if (os_log_type_enabled(v123, type[0]))
          {
            v126 = v124;
          }

          else
          {
            v126 = v124 & 0xFFFFFFFE;
          }

          if (v126)
          {
            if (v179)
            {
              v127 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v127 = "";
            }

            if (a1)
            {
              v164 = (CMBaseObjectGetDerivedStorage() + 820);
            }

            else
            {
              v164 = "";
            }

            v165 = *(DerivedStorage + 80);
            LODWORD(valuePtr.value) = 136316418;
            *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
            LOWORD(valuePtr.flags) = 2048;
            *(&valuePtr.flags + 2) = v179;
            HIWORD(valuePtr.epoch) = 2082;
            v192 = v127;
            v193 = 2048;
            v194 = a1;
            v195 = 2082;
            v196 = v164;
            v197 = 2114;
            v198 = v165;
            LODWORD(v171) = 62;
            _os_log_send_and_compose_impl(v126, 0, &time, 128, &dword_1962D5000, v123, v125, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s -> item %p %{public}s [%{public}@] is not compatible with the receiver because it doesn't support Coordinated Playback", &valuePtr, v171);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        itemairplay_postFailNotificationWithError(a1, -15694, 1);
        value_low = 4294951602;
        goto LABEL_282;
      }
    }
  }

  if (v115)
  {
    LOBYTE(theArray) = 0;
    LOBYTE(v187) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v116 = v175;
    if (!theArray)
    {
      v116 = 0;
    }

    if (v116 == 1)
    {
      if (!dword_1EAF172E8)
      {
LABEL_280:
        itemairplay_postFailNotificationWithError(a1, -17226, 1);
LABEL_281:
        value_low = 4294950070;
LABEL_282:
        if (*(DerivedStorage + 56))
        {
          FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(*(DerivedStorage + 16));
          *(DerivedStorage + 56) = 0;
        }

        v162 = *(DerivedStorage + 48);
        if (v162)
        {
          CFRelease(v162);
          *(DerivedStorage + 48) = 0;
        }

        goto LABEL_286;
      }

      LODWORD(v190) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v118 = v190;
      v119 = type[0];
      if (os_log_type_enabled(v117, type[0]))
      {
        v120 = v118;
      }

      else
      {
        v120 = v118 & 0xFFFFFFFE;
      }

      if (!v120)
      {
        goto LABEL_265;
      }

      if (v179)
      {
        v121 = (CMBaseObjectGetDerivedStorage() + 459);
        if (a1)
        {
LABEL_194:
          v122 = (CMBaseObjectGetDerivedStorage() + 820);
LABEL_264:
          v154 = *(DerivedStorage + 80);
          LODWORD(valuePtr.value) = 136316418;
          *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
          LOWORD(valuePtr.flags) = 2048;
          *(&valuePtr.flags + 2) = v179;
          HIWORD(valuePtr.epoch) = 2082;
          v192 = v121;
          v193 = 2048;
          v194 = a1;
          v195 = 2082;
          v196 = v122;
          v197 = 2114;
          v198 = v154;
          LODWORD(v171) = 62;
          _os_log_send_and_compose_impl(v120, 0, &time, 128, &dword_1962D5000, v117, v119, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s -> item %p %{public}s [%{public}@] is not compatible with the receiver because it doesn't support local media content", &valuePtr, v171);
          goto LABEL_265;
        }
      }

      else
      {
        v121 = "";
        if (a1)
        {
          goto LABEL_194;
        }
      }

      v122 = "";
      goto LABEL_264;
    }

    if (!v176)
    {
      v190 = 0;
      if (*(DerivedStorage + 16))
      {
        FigAssetGetCMBaseObject();
        CMBaseObjectCopyProperty(v148, @"assetProperty_ProtectedStatus", v173, &v190);
        if (v190)
        {
          if (CFBooleanGetValue(v190) && v187)
          {
            if (!dword_1EAF172E8)
            {
              goto LABEL_266;
            }

            *type = 0;
            LOBYTE(v186) = 0;
            v149 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v150 = *type;
            v151 = v186;
            if (os_log_type_enabled(v149, v186))
            {
              v152 = v150;
            }

            else
            {
              v152 = v150 & 0xFFFFFFFE;
            }

            if (v152)
            {
              if (v179)
              {
                v153 = (CMBaseObjectGetDerivedStorage() + 459);
              }

              else
              {
                v153 = "";
              }

              if (a1)
              {
                v168 = (CMBaseObjectGetDerivedStorage() + 820);
              }

              else
              {
                v168 = "";
              }

              v169 = *(DerivedStorage + 80);
              LODWORD(valuePtr.value) = 136316418;
              *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
              LOWORD(valuePtr.flags) = 2048;
              *(&valuePtr.flags + 2) = v179;
              HIWORD(valuePtr.epoch) = 2082;
              v192 = v153;
              v193 = 2048;
              v194 = a1;
              v195 = 2082;
              v196 = v168;
              v197 = 2114;
              v198 = v169;
              LODWORD(v171) = 62;
              _os_log_send_and_compose_impl(v152, 0, &time, 128, &dword_1962D5000, v149, v151, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s -> item %p %{public}s [%{public}@] is not compatible with the receiver because it doesn't support encrypted progressive download", &valuePtr, v171);
            }

LABEL_265:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_266:
            if (dword_1EAF172E8)
            {
              LODWORD(v190) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v155 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v156 = v190;
              v157 = type[0];
              if (os_log_type_enabled(v155, type[0]))
              {
                v158 = v156;
              }

              else
              {
                v158 = v156 & 0xFFFFFFFE;
              }

              if (v158)
              {
                if (v179)
                {
                  v159 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                else
                {
                  v159 = "";
                }

                if (a1)
                {
                  v160 = (CMBaseObjectGetDerivedStorage() + 820);
                }

                else
                {
                  v160 = "";
                }

                v161 = *(DerivedStorage + 80);
                LODWORD(valuePtr.value) = 136316418;
                *(&valuePtr.value + 4) = "itemairplay_setUpPlayParamDictionary";
                LOWORD(valuePtr.flags) = 2048;
                *(&valuePtr.flags + 2) = v179;
                HIWORD(valuePtr.epoch) = 2082;
                v192 = v159;
                v193 = 2048;
                v194 = a1;
                v195 = 2082;
                v196 = v160;
                v197 = 2114;
                v198 = v161;
                LODWORD(v171) = 62;
                _os_log_send_and_compose_impl(v158, 0, &time, 128, &dword_1962D5000, v155, v157, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s -> item %p %{public}s [%{public}@] is not compatible with AirPlay device", &valuePtr, v171);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            goto LABEL_280;
          }
        }
      }
    }
  }

  v128 = *(v10 + 52);
  if (v128)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961B98], v128);
  }

  v129 = *(v10 + 53);
  if (v129)
  {
    CFDictionaryAddValue(a2, *MEMORY[0x1E6961B90], v129);
  }

  if (FigCFEqual())
  {
    v130 = MEMORY[0x1E6961D58];
  }

  else
  {
    if (!FigCFEqual())
    {
      if (FigCFEqual())
      {
        v131 = *MEMORY[0x1E6961D68];
      }

      else
      {
        v131 = *MEMORY[0x1E6961D70];
      }

      goto LABEL_214;
    }

    v130 = MEMORY[0x1E6961D60];
  }

  v131 = *v130;
LABEL_214:
  CFDictionaryAddValue(a2, *MEMORY[0x1E6961C40], v131);
  valuePtr.value = 0;
  v132 = CMBaseObjectGetDerivedStorage();
  if (*(v132 + 240) && *(v132 + 241))
  {
    FigPlaybackItemGetFigBaseObject();
    v134 = v133;
    v135 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v135)
    {
      v135(v134, @"TimeToPauseBuffering", v173, &valuePtr);
    }

    if (valuePtr.value)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961D10], valuePtr.value);
      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
        valuePtr.value = 0;
      }
    }

    FigPlaybackItemGetFigBaseObject();
    v137 = v136;
    v138 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v138)
    {
      v138(v137, @"TimeToPausePlayback", v173, &valuePtr);
    }

    if (valuePtr.value)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961D18], valuePtr.value);
    }

    v139 = *MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 158))
    {
      v140 = v110;
    }

    else
    {
      v140 = *MEMORY[0x1E695E4C0];
    }

    CFDictionaryAddValue(a2, *MEMORY[0x1E6961CD8], v140);
    if (valuePtr.value)
    {
      CFRelease(valuePtr.value);
      valuePtr.value = 0;
    }

    FigPlaybackItemGetFigBaseObject();
    v142 = v141;
    v143 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v143)
    {
      v143(v142, @"timeToSwapPlayback", v173, &valuePtr);
    }

    if (valuePtr.value)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961D20], valuePtr.value);
      if (valuePtr.value)
      {
        CFRelease(valuePtr.value);
        valuePtr.value = 0;
      }
    }

    if (v10[246])
    {
      v144 = v110;
    }

    else
    {
      v144 = v139;
    }

    CFDictionaryAddValue(a2, *MEMORY[0x1E6961D00], v144);
    v145 = *(DerivedStorage + 776);
    if (v145)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961C00], v145);
    }

    v146 = *(DerivedStorage + 752);
    if (v146)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BA8], v146);
    }

    v147 = *(DerivedStorage + 760);
    if (v147)
    {
      CFDictionaryAddValue(a2, *MEMORY[0x1E6961BF8], v147);
    }

    if (*(DerivedStorage + 548))
    {
      itemairplay_getCurrentInterstitialLiveHorizon(DerivedStorage, &time);
      FigCFDictionarySetCMTime();
    }
  }

  value_low = 0;
LABEL_286:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v178)
  {
    CFRelease(v178);
  }

  if (v179)
  {
    CFRelease(v179);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (v177)
  {
    CFRelease(v177);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  FigReadWriteLockUnlockForRead();
  return value_low;
}

void itemairplay_addiTunesStoreContentInfo(const void *a1, __CFDictionary *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = itemairplay_getiTunesStoreContentTypeFromInfo(a1);
      if (v5)
      {
        v6 = v5;
        Value = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentID");
        v8 = MEMORY[0x1E6961B60];
        if (v6 == 2)
        {
          v8 = MEMORY[0x1E6961B58];
        }

        CFDictionaryAddValue(a2, *MEMORY[0x1E6961C30], *v8);
        CFDictionaryAddValue(a2, *MEMORY[0x1E6961C20], Value);
        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentUserAgent"))
        {
          v9 = *MEMORY[0x1E6961D48];
          v10 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentUserAgent");
          CFDictionaryAddValue(a2, v9, v10);
        }

        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDownloadParameters"))
        {
          v11 = *MEMORY[0x1E6961B88];
          v12 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDownloadParameters");
          CFDictionaryAddValue(a2, v11, v12);
        }

        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDSID"))
        {
          v13 = *MEMORY[0x1E6961BC0];
          v14 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentDSID");
          CFDictionaryAddValue(a2, v13, v14);
        }

        if (CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentPurchasedMediaKind"))
        {
          v15 = *MEMORY[0x1E6961CA0];
          v16 = CFDictionaryGetValue(a1, @"assetOption_iTunesStoreContentPurchasedMediaKind");

          CFDictionaryAddValue(a2, v15, v16);
        }
      }
    }
  }
}

CMTime *itemairplay_getCurrentInterstitialLiveHorizon@<X0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CMTimeMake(&rhs, UpTimeNanoseconds - *(a1 + 560), 1000000000);
  v6 = *(a1 + 536);
  return CMTimeAdd(a2, &v6, &rhs);
}

const void *itemairplay_copyiTunesStoreContentRentalID(uint64_t a1)
{
  v1 = itemairplay_copyiTunesStoreContentInfo(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"assetOption_iTunesStoreContentRentalID");
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

void __itemairplay_doesHLSAssetHaveACompletelyDownloadedAlternate_block_invoke(uint64_t a1)
{
  propertyList = 0;
  v2 = *MEMORY[0x1E695E480];
  FigAirPlayMediaSelectionCopyProperty(*(*(a1 + 40) + 352), @"ClientSelectedMediaArray", *MEMORY[0x1E695E480], &propertyList);
  *(*(*(a1 + 32) + 8) + 24) = CFPropertyListCreateDeepCopy(v2, propertyList, 0);
  if (propertyList)
  {
    CFRelease(propertyList);
  }
}

void __pap_playbackSessionPlayCompletion_block_invoke(uint64_t a1)
{
  itemairplay_playMediaCompletionHandler(*(*(a1 + 32) + 8), **(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[1])
  {
    CFRelease(v2[1]);
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  free(v2);
}

void itemairplay_playMediaCompletionHandler(void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  v8 = *(CMBaseObjectGetDerivedStorage() + 216);
  v9 = v8 > 0xF;
  v10 = (1 << v8) & 0xD000;
  v11 = v9 || v10 == 0;
  if (v11 || *v7)
  {
    return;
  }

  if (v3)
  {
    itemairplay_playMediaCompletionHandler_cold_1();
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  cf = 0;
  if (dword_1EAF172E8)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  pap_setAirPlayState(a2, 16);
  playerairplay_setActionAtEndOnAirPlayController(a2);
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 20, &cf);
  if (*(v7 + 456))
  {
    *(v7 + 356) = 1;
  }

  else
  {
    itemairplay_playMediaCompletionHandler_cold_2();
  }

  v13 = *(v7 + 208);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v14)
  {
    v14(v13, 0);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a1)
  {
LABEL_16:
    FigReadWriteLockLockForRead();
    if (!*(DerivedStorage + 72))
    {
      if (v3)
      {
        CFRetain(a2);
        CFRetain(a1);
        v15 = *(v7 + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __itemairplay_playMediaCompletionHandler_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = v7;
        block[5] = DerivedStorage;
        block[6] = a2;
        block[7] = a1;
        dispatch_async(v15, block);
        itemairplay_postFailNotificationWithError(a1, v3, 1);
      }

      else
      {
        itemairplay_postItemNotification();
        *(DerivedStorage + 706) = 257;
        itemairplay_controlPlaybackActivityTimer(a1, 1);
        v21 = *(DerivedStorage + 440);
        v20 = *(DerivedStorage + 464);
        playerairplay_setPlaybackEndTimes(a2, a1, &v21, 1, &v20, 1);
        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a2);
      }
    }

    FigReadWriteLockUnlockForRead();
  }
}

void playerairplay_setActionAtEndOnAirPlayController(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v1)
  {
    v2 = v1 == 10;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    playerairplay_setActionAtEndOnAirPlayController_cold_1();
  }
}

void __itemairplay_playMediaCompletionHandler_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    CMTimebaseSetRate(*(*(a1 + 40) + 568), 0.0);
  }

  CFRelease(*(a1 + 48));
  v2 = *(a1 + 56);

  CFRelease(v2);
}

void playerairplay_setPlaybackEndTimes(uint64_t a1, CFMutableDictionaryRef a2, CMTime *a3, int a4, CMTime *a5, int a6)
{
  v10 = MEMORY[0x1E695E480];
  if (a4)
  {
    v11 = *MEMORY[0x1E695E480];
    v18 = *a3;
    v12 = CMTimeCopyAsDictionary(&v18, v11);
    if (v12)
    {
      v15 = v12;
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
        Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
      }

      else
      {
        Mutable = 0;
      }

      pap_playbackSessionSetProxiedProperty(a1, *MEMORY[0x1E6961E78], v15, Mutable);
      CFRelease(v15);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (a6)
  {
    v13 = *v10;
    v18 = *a5;
    v14 = CMTimeCopyAsDictionary(&v18, v13);
    if (v14)
    {
      v17 = v14;
      if (a2)
      {
        CMBaseObjectGetDerivedStorage();
        a2 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetValue();
      }

      pap_playbackSessionSetProxiedProperty(a1, *MEMORY[0x1E6961EC0], v17, a2);
      CFRelease(v17);
      if (a2)
      {
        CFRelease(a2);
      }
    }
  }
}

CFMutableDictionaryRef itemairplay_createProxiedPropertyParamsWithItemUUID(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  return Mutable;
}

void pap_playbackSessionInsertPlayQueueItemCompletion(uint64_t a1, void *a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionInsertPlayQueueItemCompletion_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v3, block);
}

void __pap_playbackSessionInsertPlayQueueItemCompletion_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    CFRelease(v2[1]);
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  free(v2);
}

uint64_t playerairplay_performAirPlayVodkaExchange(const void *a1, const void *a2, const void *a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v10 = DerivedStorage, !*(DerivedStorage + 280)) || (v11 = CMBaseObjectGetDerivedStorage()) == 0)
  {
    objc_autoreleasePoolPop(v8);
    return 0;
  }

  v12 = v11;
  FigReadWriteLockLockForRead();
  if (*(v12 + 72))
  {
    goto LABEL_31;
  }

  CFRetain(a1);
  CFRetain(a2);
  CFRetain(a3);
  *(v12 + 736) = FigGetUpTimeNanoseconds();
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10[28], @"RouteInfo", v10[35], @"EndpointPlaybackSession", *(v12 + 80), @"MediaControlUUID", 0}];
  v14 = v10[11];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __playerairplay_performAirPlayVodkaExchange_block_invoke;
  v27[3] = &__block_descriptor_73_e25_v16__0____CFDictionary__8l;
  v27[4] = v10;
  v27[5] = v12;
  v28 = a4;
  v27[6] = a2;
  v27[7] = a1;
  v27[8] = a3;
  v15 = *(CMBaseObjectGetVTable() + 16);
  if (!*v15 || (v16 = v15[11]) == 0)
  {
    v17 = 4294954514;
LABEL_17:
    if (a4 && pap_isLocalFileURL(*(v12 + 88), 0))
    {
      v24 = itemairplay_createCPEProtectorIfAvailable(a2, 0, &v26);
      if (v24)
      {
        v25 = v24;
        v17 = playerairplay_performAirPlayVodkaExchange(a1, a2, v24, 0);
        CFRelease(v25);
      }

      else
      {
        *(v12 + 703) = 1;
        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(a1);
      }
    }

    if (a3)
    {
      CFRelease(a3);
    }

    if (a2)
    {
      CFRelease(a2);
    }

    if (a1)
    {
      CFRelease(a1);
    }

    goto LABEL_24;
  }

  v17 = v16(a3, v13, v14, v27);
  if (v17)
  {
    goto LABEL_17;
  }

  v18 = *(v12 + 632);
  if (v18)
  {
    v19 = *(CMBaseObjectGetVTable() + 16);
    if (*v19)
    {
      v20 = v19[12];
      if (v20)
      {
        v20(v18);
      }
    }

    v21 = *(v12 + 632);
    if (v21)
    {
      CFRelease(v21);
      *(v12 + 632) = 0;
    }
  }

  if (a3)
  {
    v22 = CFRetain(a3);
  }

  else
  {
    v22 = 0;
  }

  *(v12 + 632) = v22;
  *(v12 + 703) = 2;
  itemairplay_controlPlaybackActivityTimer(a2, 3);
LABEL_31:
  v17 = 0;
LABEL_24:
  objc_autoreleasePoolPop(v8);
  FigReadWriteLockUnlockForRead();
  return v17;
}

void playerairplay_applyCachedPropertiesOnBaoAndPlaybackSession(const void *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (CFEqual(a1, @"AudioMode"))
  {

    playerairplay_setAndCacheAudioMode(a3, a2, 0);
  }
}

void playerairplay_createAndResumeVideoSyncTimer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 112));
  *(DerivedStorage + 496) = v2;
  if (v2)
  {
    v10 = v2;
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_context(v10, v11);
    dispatch_set_finalizer_f(*(DerivedStorage + 496), FigCFRelease_5);
    dispatch_source_set_event_handler_f(*(DerivedStorage + 496), pap_videoSyncTimerEventHandler);
    dispatch_source_set_timer(*(DerivedStorage + 496), 0, 0x12A05F200uLL, 0x4C4B40uLL);
    v12 = *(DerivedStorage + 496);

    dispatch_resume(v12);
  }

  else
  {
    playerairplay_createAndResumeVideoSyncTimer_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v13, v14, SHIDWORD(v14), v15);
  }
}

uint64_t playqueue_getNumItemsInClientPlayQueue(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 16);
  FigSimpleMutexUnlock();
  return v2;
}

__n128 pap_expectedEndTime@<Q0>(CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  v5 = MEMORY[0x1E6960C68];
  a2->epoch = *(MEMORY[0x1E6960C68] + 16);
  result = *v5;
  *&a2->value = *v5;
  if (*(DerivedStorage + 452))
  {
    result = *(DerivedStorage + 440);
    a2->epoch = *(DerivedStorage + 456);
    *&a2->value = result;
  }

  else
  {
    v7 = *(DerivedStorage + 616);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        v8 = *(v4 + 616);
        Count = CFArrayGetCount(v8);
        ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6961F08]);
          v13 = CFDictionaryGetValue(v11, *MEMORY[0x1E6961F00]);
          if (Value)
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = v13;
            memset(&v19, 0, sizeof(v19));
            CMTimeMakeFromDictionary(&v19, Value);
            memset(&v18, 0, sizeof(v18));
            CMTimeMakeFromDictionary(&v18, v15);
            lhs = v19;
            v16 = v18;
            CMTimeAdd(a2, &lhs, &v16);
          }
        }
      }
    }
  }

  return result;
}

uint64_t pap_copyItemFromUUIDOrCurrentInMediaControlPlaylist(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    v4 = result;
    if (*result)
    {
      return 0;
    }

    else if (!a2 || (result = playqueue_copyItemForUUID(*(result + 40), a2), (v5 = result) == 0))
    {
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v4 + 40), 0, &v5);
      return v5;
    }
  }

  return result;
}

uint64_t itemairplay_clearCoordinatedPlaybackSynchronizationTimebase(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    itemairplay_clearCoordinatedPlaybackSynchronizationTimebase_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), vars0);
  }

  else
  {
    FigSimpleMutexLock();
    v10 = *(DerivedStorage + 576);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 576) = 0;
    }

    FigSimpleMutexUnlock();
  }

  return FigReadWriteLockUnlockForRead();
}

CFIndex playqueue_getIndexOfAirPlayItem(CFArrayRef *a1, const void *a2)
{
  if (!a2)
  {
    return -1;
  }

  FigSimpleMutexLock();
  IndexOfAirPlayItemInternal = playqueue_getIndexOfAirPlayItemInternal(a1, a2);
  FigSimpleMutexUnlock();
  return IndexOfAirPlayItemInternal;
}

double pap_playbackSessionGetMediaSelectionCompletion(uint64_t a1, const void *a2, int a3, const void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 || (v9 = DerivedStorage, *DerivedStorage))
  {
LABEL_12:
    if (!a4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    if (!a4)
    {
      return result;
    }

    goto LABEL_8;
  }

  v10 = CFGetTypeID(a2);
  if (v10 != CFArrayGetTypeID())
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_12;
  }

  if (!a4)
  {
    return result;
  }

  CFRetain(a2);
LABEL_8:
  CFRetain(a4);
  v11 = *(v9 + 14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionGetMediaSelectionCompletion_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = v9;
  block[5] = a2;
  block[6] = a4;
  dispatch_async(v11, block);
LABEL_9:
  CFRelease(a4);
  return result;
}

void pap_playbackSessionGetTimedMetadataCompletion(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFRetain(a2);
  }

  v7 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionGetTimedMetadataCompletion_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a4;
  dispatch_async(v7, block);
}

void __pap_playbackSessionGetTimedMetadataCompletion_block_invoke(uint64_t a1)
{
  values[16] = *MEMORY[0x1E69E9840];
  if (**(a1 + 32) || (v5 = *(a1 + 40)) == 0)
  {
LABEL_2:
    v2 = 0;
    goto LABEL_3;
  }

  v6 = CFGetTypeID(v5);
  TypeID = CFArrayGetTypeID();
  v8 = *(a1 + 40);
  if (v6 != TypeID)
  {
    if (v8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_2;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  values[0] = Mutable;
  Count = CFArrayGetCount(v8);
  if (Count >= 1)
  {
    v12 = Count;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
      if (CFDictionaryGetValue(ValueAtIndex, @"locale"))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v9, 0, ValueAtIndex);
        Value = CFDictionaryGetValue(MutableCopy, @"locale");
        if (Value)
        {
          v17 = CFLocaleCreate(v9, Value);
          if (v17)
          {
            v18 = v17;
            CFDictionaryAddValue(MutableCopy, @"locale", v17);
            CFRelease(v18);
          }
        }

        CFArrayAppendValue(Mutable, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      else
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  v2 = CFDictionaryCreate(v9, &kFigPlayerTimedMetadataNotificationKey_ValueArray, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    playerairplay_postPlayerNotification();
  }

  if (values[0])
  {
    CFRelease(values[0]);
  }

LABEL_3:
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t playqueue_getNumItemsInMediaControlPlaylist(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 20);
  FigSimpleMutexUnlock();
  return v2;
}

CFIndex playqueue_getIndexOfAirPlayItemInternal(CFArrayRef *a1, const void *a2)
{
  Count = CFArrayGetCount(*a1);
  if (Count < 1)
  {
    return -1;
  }

  v6.length = Count;
  v5 = *a1;
  v6.location = 0;

  return CFArrayGetFirstIndexOfValue(v5, v6, a2);
}

void pap_playbackSessionStopCompletion(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionStopCompletion_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(global_queue, block);
}

void __pap_playbackSessionStopCompletion_block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(*(a1 + 32) + 16));
  dispatch_release(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  if (v2[1])
  {
    CFRelease(v2[1]);
    v2 = *(a1 + 32);
  }

  free(v2);
}

void __pap_playbackSessionGetMediaSelectionCompletion_block_invoke(void *a1)
{
  v11 = 0;
  v2 = a1[4];
  if (!*v2)
  {
    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v2 + 40), 0, &v11);
    if (v11)
    {
      v5 = a1[5];
      if (v5)
      {
        CFRetain(v5);
      }

      v6 = a1[6];
      if (v6)
      {
        CFRetain(v6);
      }

      if (v11)
      {
        CFRetain(v11);
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1[4] + 104);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __pap_playbackSessionGetMediaSelectionCompletion_block_invoke_2;
      v9[3] = &__block_descriptor_56_e5_v8__0l;
      v9[4] = v7;
      v10 = *(a1 + 5);
      dispatch_async(v8, v9);
      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }
}

void __pap_playbackSessionGetMediaSelectionCompletion_block_invoke_2(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    FigReadWriteLockUnlockForRead();
  }

  else
  {
    FigAirPlayMediaSelectionSetProperty(*(DerivedStorage + 352), @"LastQueriedSelectedMediaArray", a1[5]);
    v3 = *MEMORY[0x1E695E480];
    FigAirPlayMediaSelectionCopyProperty(*(DerivedStorage + 352), @"SelectedMediaArray", *MEMORY[0x1E695E480], &value);
    if (value)
    {
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"CurrentSelectedMediaArray", value);
    }

    else
    {
      Mutable = 0;
    }

    itemairplay_postItemNotification();
    FigReadWriteLockUnlockForRead();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
  }

  if (value)
  {
    CFRelease(value);
  }

  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }
}

void __playerairplay_performAirPlayVodkaExchange_block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:@"Error"];
  if (!**(a1 + 32))
  {
    v5 = v4;
    FigReadWriteLockLockForRead();
    v6 = *(a1 + 40);
    if (*(v6 + 72))
    {
LABEL_3:
      FigReadWriteLockUnlockForRead();
      goto LABEL_4;
    }

    if (v5)
    {
      if ([v5 code])
      {
        if (*(a1 + 72) && pap_isLocalFileURL(*(*(a1 + 40) + 88), 0))
        {
          v18 = itemairplay_createCPEProtectorIfAvailable(*(a1 + 48), 0, &v28);
          if (!v18)
          {
            v11 = *(a1 + 40);
            v13 = 1;
LABEL_19:
            *(v11 + 703) = v13;
LABEL_28:
            playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(*(a1 + 56));
            goto LABEL_3;
          }

          v19 = v18;
          v20 = *(a1 + 48);
          if (v20)
          {
            CFRetain(v20);
          }

          v21 = *(a1 + 56);
          if (v21)
          {
            CFRetain(v21);
            v22 = *(a1 + 56);
          }

          else
          {
            v22 = 0;
          }

          v23 = *(a1 + 32);
          v16 = *(v23 + 112);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __playerairplay_performAirPlayVodkaExchange_block_invoke_2;
          v27[3] = &__block_descriptor_64_e5_v8__0l;
          v27[4] = v23;
          v27[5] = v22;
          v27[6] = *(a1 + 48);
          v27[7] = v19;
          v17 = v27;
        }

        else
        {
          v14 = *(a1 + 48);
          if (v14)
          {
            CFRetain(v14);
          }

          v15 = *(a1 + 56);
          if (v15)
          {
            CFRetain(v15);
          }

          CFRetain(v5);
          v16 = *(*(a1 + 32) + 112);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __playerairplay_performAirPlayVodkaExchange_block_invoke_3;
          block[3] = &unk_1E748B7A8;
          v25 = *(a1 + 40);
          v26 = *(a1 + 56);
          block[4] = v5;
          v17 = block;
        }

        dispatch_async(v16, v17);
        goto LABEL_28;
      }

      v6 = *(a1 + 40);
    }

    v10 = *(v6 + 432);
    if (v10)
    {
      CFRelease(v10);
      *(*(a1 + 40) + 432) = 0;
    }

    *(*(a1 + 40) + 432) = CFDictionaryGetValue(a2, @"AirPlayParams");
    v11 = *(a1 + 40);
    v12 = *(v11 + 432);
    if (v12)
    {
      CFRetain(v12);
      v11 = *(a1 + 40);
    }

    v13 = 3;
    goto LABEL_19;
  }

LABEL_4:
  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }
}

void __playerairplay_performAirPlayVodkaExchange_block_invoke_2(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_performAirPlayVodkaExchange(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
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

void __playerairplay_performAirPlayVodkaExchange_block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48);
  *(*(a1 + 40) + 703) = 4;
  itemairplay_playMediaCompletionHandler(v3, *(a1 + 56), [*(a1 + 32) code]);
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t itemairplay_copyCurrentDateAndTime(const void *a1, CFMutableDictionaryRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = **&MEMORY[0x1E6960C70];
  itemairplay_GetCurrentTime(a1, &v27);
  if (*(DerivedStorage + 192) && !*(DerivedStorage + 224) && (*(DerivedStorage + 212) & 1) != 0)
  {
    v28 = v27;
    v17 = MEMORY[0x19A8CCD90]();
    lhs = v27;
    rhs = *(DerivedStorage + 200);
    CMTimeSubtract(&v20, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&v20);
    v16 = *MEMORY[0x1E695E480];
    v20 = v28;
    v21 = v17 + Seconds;
    v22 = 257;
  }

  else
  {
    if ((*(DerivedStorage + 172) & 1) == 0)
    {
      return 4294954513;
    }

    v28 = v27;
    v12 = *(DerivedStorage + 320);
    v13 = 0.0;
    if (v12)
    {
      v12 = *(DerivedStorage + 321);
      if (v12)
      {
        v14 = *(DerivedStorage + 312);
        v20 = v27;
        v15 = v14 + CMTimeGetSeconds(&v20);
        v20 = *(DerivedStorage + 288);
        v13 = v15 - CMTimeGetSeconds(&v20);
        v12 = 1;
      }
    }

    v16 = *MEMORY[0x1E695E480];
    v20 = v28;
    v21 = v13;
    LOBYTE(v22) = 1;
    HIBYTE(v22) = v12;
  }

  v23 = 0;
  v24 = 0;
  v19 = FigDateTimeMomentCopyAsDictionary(&v20, v16, v5, v6, v7, v8, v9, v10);
  result = 0;
  *a2 = v19;
  return result;
}

void pap_playbackSessionSeekCompletion(const void *a1, int a2, uint64_t *a3)
{
  v6 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v8 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionSeekCompletion_block_invoke;
  block[3] = &__block_descriptor_68_e5_v8__0l;
  block[4] = a3;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[7] = v6;
  v10 = a2;
  dispatch_async(v8, block);
}

void __pap_playbackSessionSeekCompletion_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  if (*(*(a1 + 40) + 245))
  {
    v3 = FigCFDictionaryGetCMTimeIfPresent() == 0;
  }

  else
  {
    v3 = 1;
  }

  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 72))
  {
    goto LABEL_5;
  }

  v5 = *(*(a1 + 32) + 16);
  v6 = CMBaseObjectGetDerivedStorage();
  if (!v5 || *v6 || *(v6 + 280) != v5)
  {
    goto LABEL_5;
  }

  if (!*(DerivedStorage + 157))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v9 = *(v8 + 28);
    if (!v7 && *(v8 + 28) && (v10 = *(v8 + 24), v10 == *(DerivedStorage + 144)))
    {
      *(DerivedStorage + 148) = v10;
      *(DerivedStorage + 156) = 0;
      if (v3)
      {
        __pap_playbackSessionSeekCompletion_block_invoke_cold_1(v8);
        goto LABEL_13;
      }

      if (BYTE12(v17))
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v15 = v17;
        v16 = v18;
        FigCFDictionarySetCMTime();
        itemairplay_getPlaybackInfoCompletionHandler(*(*(a1 + 32) + 8), *(a1 + 56), Mutable, *(a1 + 64), 1, 2, *(*(a1 + 32) + 30), *(*(a1 + 32) + 56));
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    else
    {
      v12 = *(v8 + 8);
      v13 = *(v8 + 24);
      v15 = *(v8 + 32);
      v14 = *(v8 + 56);
      v16 = *(v8 + 48);
      itemairplay_setPositionCompletionHandler(v12, v7, v9, v13, v14, &v15);
      itemairplay_requestAirPlayPlaybackInfo(*(*(a1 + 32) + 8), 0, 1, *(*(a1 + 32) + 30));
    }

LABEL_5:
    FigReadWriteLockUnlockForRead();
    pap_playbackSessionFreeSeekCompletionContext(*(a1 + 32));
    goto LABEL_6;
  }

LABEL_13:
  FigReadWriteLockUnlockForRead();
LABEL_6:
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }
}

void pap_playbackSessionSetRateCompletion(int a1, uint64_t *a2)
{
  v4 = *a2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 112);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __pap_playbackSessionSetRateCompletion_block_invoke;
  block[3] = &__block_descriptor_68_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = v4;
  v8 = a1;
  block[6] = a2;
  block[7] = a2;
  dispatch_async(v6, block);
}

double playerairplay_bufferedAirPlayOutputEndpointPreemptedNotificationListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*CMBaseObjectGetDerivedStorage())
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_1EAF172E8 == 0;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void playerairplay_updateAirPlayRouteInformation(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CFDictionaryGetValue(a2, @"NewRouteName");
    v13 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    CFDictionaryGetValue(a2, @"AirPlayPlayQueueSupported");
    IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
    v6 = *(DerivedStorage + 224);
    *(DerivedStorage + 224) = a2;
    CFRetain(a2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  v6 = *(DerivedStorage + 224);
  *(DerivedStorage + 224) = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

LABEL_4:
  playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
  *(DerivedStorage + 247) = v13;
  v7 = pap_copyInterstitialPlayer(a1);
  if (v7)
  {
    v8 = v7;
    v9 = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      CFRetain(a2);
    }

    v10 = *(v9 + 112);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __playerairplay_updateAirPlayRouteInformation_block_invoke;
    v11[3] = &__block_descriptor_57_e5_v8__0l;
    v11[4] = v9;
    v11[5] = a2;
    v12 = v13;
    v11[6] = v8;
    dispatch_async(v10, v11);
  }
}

double playerairplay_notifyIfIsAirPlayVideoActiveChanged(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  if (IsAirplayVideoActive != a2)
  {
    if (IsAirplayVideoActive)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 360))
      {
        v6 = pap_copyInterstitialPlayer(a1);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (v6)
        {
          v8 = DerivedStorage;
          v9 = *(DerivedStorage + 8);
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v10)
          {
            v10(v9, 0);
          }

          playqueue_clearPlayQueue(*(v8 + 40));
          CFRelease(v6);
        }
      }
    }

    playerairplay_postPlayerNotification();
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

void __playerairplay_updateAirPlayRouteInformation_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v3 = *(v2 + 224);
    v4 = *(a1 + 40);
    *(v2 + 224) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(*(a1 + 32) + 247) = *(a1 + 56);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);

  CFRelease(v6);
}

void playerairplay_handleRouteNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
    if (a2)
    {
      v8 = Value;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v10 = DerivedStorage;
        if (!*DerivedStorage)
        {
          CFRetain(a2);
          if (a5)
          {
            CFRetain(a5);
          }

          if (v8)
          {
            CFRetain(v8);
          }

          v11 = *(v10 + 14);
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = &__playerairplay_airplayRouteSelectedCallback_block_invoke;
          v28 = &__block_descriptor_64_e5_v8__0l;
          v29 = a2;
          v30 = v8;
          v31 = a5;
          v32 = v10;
          goto LABEL_15;
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    if (a2)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      if (v12)
      {
        v13 = v12;
        if (!*v12)
        {
          CFRetain(a2);
          v11 = v13[14];
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = __playerairplay_airplayRouteDeselectedCallback_block_invoke;
          v28 = &__block_descriptor_48_e5_v8__0l;
          v29 = v13;
          v30 = a2;
LABEL_15:
          p_block = &block;
LABEL_16:
          dispatch_async(v11, p_block);
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (a2)
    {
      v15 = CMBaseObjectGetDerivedStorage();
      if (v15)
      {
        if (!*v15)
        {
          v16 = CMBaseObjectGetDerivedStorage();
          if (v16)
          {
            v17 = v16;
            if (!*v16)
            {
              v18 = *(CMBaseObjectGetDerivedStorage() + 216);
              if (v18)
              {
                if (v18 != 10)
                {
                  v19 = v17[14];
                  block = MEMORY[0x1E69E9820];
                  v26 = 3221225472;
                  v27 = __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke;
                  v28 = &__block_descriptor_48_e5_v8__0l;
                  v29 = v17;
                  v30 = a2;
                  dispatch_sync(v19, &block);
                  CFRetain(a2);
                  v11 = v17[14];
                  v33[0] = MEMORY[0x1E69E9820];
                  v33[1] = 3221225472;
                  v33[2] = __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2;
                  v33[3] = &__block_descriptor_48_e5_v8__0l;
                  v33[4] = v17;
                  v33[5] = a2;
                  p_block = v33;
                  goto LABEL_16;
                }
              }
            }
          }
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    LOBYTE(v33[0]) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v20 = FigCFDictionaryGetValue();
    if (a2)
    {
      v21 = v20;
      v22 = CMBaseObjectGetDerivedStorage();
      if (v22)
      {
        v23 = v22;
        if (!*v22)
        {
          CFRetain(a2);
          if (v21)
          {
            CFRetain(v21);
          }

          v11 = v23[14];
          block = MEMORY[0x1E69E9820];
          v26 = 3221225472;
          v27 = __playerairplay_primaryAppChangedCallback_block_invoke;
          v28 = &__block_descriptor_57_e5_v8__0l;
          LOBYTE(v32) = 0;
          v29 = v23;
          v30 = a2;
          v31 = v21;
          goto LABEL_15;
        }
      }
    }
  }

  else if (FigCFEqual())
  {
    v24 = FigCFDictionaryGetValue();

    playerairplay_audioModeChangedCallback(a2, v24);
  }

  else if (FigCFEqual())
  {

    playerairplay_airplayRouteChangedPausePlaybackCallback(a2);
  }
}

void playerairplay_audioModeChangedCallback(const void *a1, const void *a2)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v5 = DerivedStorage;
      if (!*DerivedStorage)
      {
        CFRetain(a1);
        if (a2)
        {
          CFRetain(a2);
        }

        v6 = *(v5 + 14);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __playerairplay_audioModeChangedCallback_block_invoke;
        block[3] = &__block_descriptor_56_e5_v8__0l;
        block[4] = v5;
        block[5] = a1;
        block[6] = a2;
        dispatch_async(v6, block);
      }
    }
  }
}

void playerairplay_airplayRouteChangedPausePlaybackCallback(const void *a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v3 = DerivedStorage;
      if (!*DerivedStorage)
      {
        CFRetain(a1);
        v4 = *(v3 + 14);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __playerairplay_airplayRouteChangedPausePlaybackCallback_block_invoke;
        v5[3] = &__block_descriptor_48_e5_v8__0l;
        v5[4] = v3;
        v5[5] = a1;
        dispatch_async(v4, v5);
      }
    }
  }
}

void playerairplay_switchFromAirPlayVideoToLocal(void *a1, int a2)
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  cf[0] = 0;
  v33 = 0;
  v34 = 0;
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v5)
  {
    v6 = v5 == 10;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(DerivedStorage + 56);
    if (dword_1EAF172E8)
    {
      v32 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), cf, &v35);
    *(DerivedStorage + 50) = 1;
    v9 = *(DerivedStorage + 8);
    v10 = *(DerivedStorage + 1);
    v11 = *(CMBaseObjectGetVTable() + 24);
    if (v11)
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        v12(v9, v10);
      }
    }

    playerairplay_savePlaybackInfoAndStopAPV(a1, cf[0], v35);
    if (a2 == 1)
    {
      playerairplay_resetAirPlayRouteInformation(a1);
    }

    playerairplay_resetAirPlayVideoState(a1);
    playerairplay_updateSubPlayerPlayQueue(a1);
    *(DerivedStorage + 50) = 0;
    if (*(DerivedStorage + 457))
    {
      IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
      *(DerivedStorage + 457) = 0;
      playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
    }

    FigSimpleMutexLock();
    v14 = *(DerivedStorage + 472);
    v37.length = CFArrayGetCount(v14);
    v37.location = 0;
    CFArrayApplyFunction(v14, v37, playerairplay_forwardStartupTasksToSubPlayerApply, a1);
    FigSimpleMutexUnlock();
    v15 = MEMORY[0x1E695E480];
    if (v7 != 0.0)
    {
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 21, &v33);
      if (!*(DerivedStorage + 200) || *(DerivedStorage + 51))
      {
        v16 = *(DerivedStorage + 8);
        v17 = v33;
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v18)
        {
          v18(v16, v17, v7);
        }
      }

      else
      {
        playerairplay_updatePlayerRateToMatch(a1, v33, 0.0);
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    FigPlayerGetFigBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21 && (v22 = *v15, v21(v20, @"ExternalProtectionStatus", *v15, &v34), v34))
    {
      v23 = CFDictionaryCreate(v22, &kFigPlayerParameter_CurrentExternalProtectionStatus, &v34, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v23 = 0;
    }

    playerairplay_postPlayerNotification();
    if (*(CMBaseObjectGetDerivedStorage() + 360))
    {
      v24 = pap_copyInterstitialPlayer(a1);
      if (v24)
      {
        v25 = v24;
        v26 = *(CMBaseObjectGetDerivedStorage() + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __playerairplay_switchFromAirPlayVideoToLocal_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = v25;
        dispatch_async(v26, block);
      }
    }

    v27 = MEMORY[0x1E6960C70];
    v28 = *MEMORY[0x1E6960C70];
    *(DerivedStorage + 308) = *MEMORY[0x1E6960C70];
    v29 = *(v27 + 16);
    *(DerivedStorage + 324) = v29;
    *(DerivedStorage + 332) = v28;
    *(DerivedStorage + 348) = v29;
    *(DerivedStorage + 356) = 0;
    if (v34)
    {
      CFRelease(v34);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v33)
    {
      CFRelease(v33);
    }
  }

  *(DerivedStorage + 50) = 0;
}

uint64_t playerairplay_isLocalPlaybackCapableRouteSelected(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

void playerairplay_postIsBufferedAirPlayActiveDidChangeNotification(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]))
  {
    playerairplay_postIsBufferedAirPlayActiveDidChangeNotification_cold_1();
  }

  else
  {
    playerairplay_postIsBufferedAirPlayActiveDidChangeNotification_cold_2();
  }
}

void playerairplay_checkStartStopAirPlay(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  CMBaseObjectGetDerivedStorage();
  v5 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 457) && !playerairplay_isAirPlayVideoAllowed(a1))
  {
    *(DerivedStorage + 457) = 0;
    playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, a2);
  }

  playerairplay_checkStartStopAirPlay_cold_1(a1);
}

void __playerairplay_switchFromLocalToBufferedAirPlay_block_invoke(uint64_t a1)
{
  playerairplay_setFigAudioSessionInfoOnBAO(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

BOOL pap_isDeviceUnlocked()
{
  if (gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid_0 != 1)
  {
    return 1;
  }

  usleep(0x124F8u);
  return SBSGetScreenLockStatus() == 0;
}

uint64_t playerairplay_switchFromLocalToAirPlayVideo(void *a1)
{
  v167 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v156 = 0;
  cf = 0;
  v154 = 0;
  values = 0;
  if (qword_1ED4CAC70 != -1)
  {
    playerairplay_switchFromLocalToAirPlayVideo_cold_1();
  }

  if (*DerivedStorage)
  {
    goto LABEL_66;
  }

  v3 = qword_1ED4CAC68;
  if (!playerairplay_isAirPlayVideoAllowed(a1))
  {
    if (dword_1EAF172E8)
    {
      LODWORD(v151[0]) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_66;
  }

  if (*(DerivedStorage + 56) == 0.0)
  {
    CMBaseObjectGetDerivedStorage();
    if (!*(CMBaseObjectGetDerivedStorage() + 360) || (v4 = pap_copyInterstitialPlayer(a1)) == 0 || (v5 = v4, v6 = *(CMBaseObjectGetDerivedStorage() + 56), CFRelease(v5), v6 == 0.0))
    {
      if (!playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback(a1))
      {
        if (dword_1EAF172E8)
        {
          LODWORD(v151[0]) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (!*(DerivedStorage + 457))
        {
          IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
          *(DerivedStorage + 457) = 1;
          playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, IsAirplayVideoActive);
        }

LABEL_66:
        v43 = 0;
        v44 = 0;
        v45 = 0;
LABEL_191:
        *(DerivedStorage + 50) = 0;
        goto LABEL_192;
      }
    }
  }

  v8 = playerairplay_getIsAirplayVideoActive(a1);
  *(DerivedStorage + 457) = 0;
  playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, v8);
  *(DerivedStorage + 50) = 1;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &v156, 0);
  if (playerairplay_getPreloadAssetPropertiesArray_once != -1)
  {
    playerairplay_switchFromLocalToAirPlayVideo_cold_2();
  }

  v9 = playerairplay_getPreloadAssetPropertiesArray_sPreloadAssetPropertiesArray;
  playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
  v10 = cf;
  if (!cf)
  {
    v42 = v156;
    if (v156)
    {
      v42 = CFRetain(v156);
    }

    LODWORD(v18) = 0;
    cf = v42;
    if (v42)
    {
LABEL_28:
      FigSimpleMutexLock();
      v19 = *(DerivedStorage + 472);
      v168.length = CFArrayGetCount(v19);
      v168.location = 0;
      CFArrayApplyFunction(v19, v168, playerairplay_removeStartupTasksFromSubPlayerApply, a1);
      FigSimpleMutexUnlock();
      v20 = *MEMORY[0x1E695E480];
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 20, &v154);
      v21 = *(DerivedStorage + 8);
      v22 = v154;
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v23)
      {
        v23(v21, v22, 0.0);
      }

      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(time, HostTimeClock);
      *(DerivedStorage + 308) = *time;
      *(DerivedStorage + 324) = *&time[16];
      v25 = CMBaseObjectGetDerivedStorage();
      v26 = v25;
      v27 = &dword_1EAF17000;
      if (!*(v25 + 8))
      {
LABEL_147:
        if (v10)
        {
          v93 = *(DerivedStorage + 8);
          v94 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v94)
          {
            v94(v93, 0);
          }
        }

        if (v27[186])
        {
          v95 = v3;
          v96 = v20;
          v97 = v27;
          LODWORD(v151[0]) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v98 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v99 = v151[0];
          v100 = type[0];
          if (os_log_type_enabled(v98, type[0]))
          {
            v101 = v99;
          }

          else
          {
            v101 = v99 & 0xFFFFFFFE;
          }

          if (v101)
          {
            if (a1)
            {
              v102 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v102 = "";
            }

            v103 = CMBaseObjectGetDerivedStorage();
            DescriptionForAirPlayState = pap_getDescriptionForAirPlayState(*(v103 + 216));
            *time2 = 136316162;
            *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            *&time2[22] = 2082;
            *&time2[24] = v102;
            *v159 = 2082;
            *&v159[2] = DescriptionForAirPlayState;
            *&v159[10] = 2082;
            *&v159[12] = "StoppedLocalPlayback";
            LODWORD(v128) = 52;
            v127 = time2;
            _os_log_send_and_compose_impl(v101, 0, time, 128, &dword_1962D5000, v98, v100, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s AirPlay state transition: from %{public}s to %{public}s");
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v27 = v97;
          v20 = v96;
          v3 = v95;
        }

        pap_setAirPlayState(a1, 12);
        v111 = cf;
        if (cf)
        {
          if (*(v26 + 704))
          {
            playerairplay_startAirPlayWithItem(a1, cf, v105, v106, v107, v108, v109, v110, v127, v128, v129, v130, v131[0], v131[1], HIBYTE(v131[1]), v131[2], v132, v133, v134, v136[0], *&v136[4], v137, block, v139[0], v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, *type, v151[0], v151[1], v152, v153, v154, values, v156, cf, *time2, *&time2[8], *&time2[16], *&time2[24], *v159, *&v159[8], *&v159[16], *&v159[24], v160, v161, *time, *&time[8], *&time[16], *&time[24], v163, v164, v165, v166);
          }

          else
          {
            *(v26 + 704) = 1;
            *(v26 + 712) = 1;
            if (v27[186])
            {
              LODWORD(v151[0]) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v113 = v151[0];
              v114 = type[0];
              if (os_log_type_enabled(v112, type[0]))
              {
                v115 = v113;
              }

              else
              {
                v115 = v113 & 0xFFFFFFFE;
              }

              if (v115)
              {
                v135 = v3;
                v116 = cf;
                if (a1)
                {
                  v117 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                else
                {
                  v117 = "";
                }

                if (cf)
                {
                  v118 = (CMBaseObjectGetDerivedStorage() + 820);
                }

                else
                {
                  v118 = "";
                }

                *time2 = 136316162;
                *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
                *&time2[12] = 2048;
                *&time2[14] = a1;
                *&time2[22] = 2048;
                *&time2[24] = v116;
                *v159 = 2082;
                *&v159[2] = v117;
                *&v159[10] = 2082;
                *&v159[12] = v118;
                LODWORD(v128) = 52;
                _os_log_send_and_compose_impl(v115, 0, time, 128, &dword_1962D5000, v112, v114, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Asset type pending with deffered APV", time2, v128);
                v3 = v135;
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v111 = cf;
            }

            itemairplay_startAssetTypeLoadAsync(v111);
          }

          if (*(DerivedStorage + 241))
          {
            itemairplay_resetTimeToPausePlayback(a1, cf);
          }

          v45 = 1;
        }

        else
        {
          v45 = 0;
        }

        *(DerivedStorage + 50) = 0;
        v119 = MEMORY[0x1E695E9D8];
        v120 = MEMORY[0x1E695E9E8];
        values = CFDictionaryCreate(v20, &kFigPlayerExternalProtectionStatusKey_Video, &kFigPlayerExternalProtectionStatus_Protected, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v44 = CFDictionaryCreate(v20, &kFigPlayerParameter_CurrentExternalProtectionStatus, &values, 1, v119, v120);
        playerairplay_postPlayerNotification();
        if (v3 && pap_isLocalFileURL(*(v26 + 88), 0))
        {
          v43 = CFURLCopyPathExtension(*(v26 + 88));
          CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
          v18 = CTGreenTeaOsLogHandle;
          if (!CTGreenTeaOsLogHandle)
          {
LABEL_185:
            if (cf)
            {
              v121 = v45;
            }

            else
            {
              v121 = 0;
            }

            playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, v121);
            if (v18)
            {
              v122 = *(DerivedStorage + 8);
              v123 = *(*(CMBaseObjectGetVTable() + 16) + 24);
              if (v123)
              {
                v123(v122, 0);
              }
            }

            goto LABEL_191;
          }

          if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
          {
            *time = 138412290;
            *&time[4] = v43;
            _os_log_impl(&dword_1962D5000, v18, OS_LOG_TYPE_INFO, "Transmitting some media data (%@)", time, 0xCu);
          }
        }

        else
        {
          v43 = 0;
        }

        LODWORD(v18) = 0;
        goto LABEL_185;
      }

      v134 = v3;
      v28 = MEMORY[0x1E6960C70];
      *v136 = *MEMORY[0x1E6960C70];
      *(v25 + 200) = *MEMORY[0x1E6960C70];
      v29 = *(v28 + 16);
      *(v25 + 216) = v29;
      *(v25 + 252) = *v136;
      *(v25 + 268) = v29;
      itemairplay_updateDateTimePivot(v25);
      *time = *v136;
      *&time[16] = v29;
      v30 = *(v26 + 8);
      v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v31 && !v31(v30, time))
      {
        v32.n128_u64[1] = *&time[8];
        *(v26 + 228) = *time;
        *(v26 + 244) = *&time[16];
      }

      v33 = (v26 + 192);
      if (*(v26 + 192))
      {
        Seconds = NAN;
        goto LABEL_51;
      }

      v34 = CFGetAllocator(cf);
      FigPlaybackItemGetFigBaseObject();
      v36 = v35;
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v37 || v37(v36, @"currentDate", v34, v26 + 192))
      {
        if (*v33)
        {
          CFRelease(*v33);
          *v33 = 0;
        }

        goto LABEL_60;
      }

      v151[0] = 0;
      if (CMBaseObjectGetDerivedStorage())
      {
        FigPlaybackItemGetFigBaseObject();
        v39 = v38;
        v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v40)
        {
          if (!v40(v39, @"currentDateAndTime", v20, v151))
          {
            FigDateTimeMakeFromDictionary(v151[0], time);
            v32.n128_u64[1] = *&time[8];
            *time2 = *time;
            *&time2[16] = *&time[16];
            if (v163)
            {
              *time = *time2;
              *&time[16] = *&time2[16];
              Seconds = CMTimeGetSeconds(time);
LABEL_42:
              if (v151[0])
              {
                CFRelease(v151[0]);
              }

              if (!*v33)
              {
LABEL_60:
                v53 = CFGetAllocator(cf);
                FigPlaybackItemGetFigBaseObject();
                v55 = v54;
                v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v56 && !v56(v55, @"estimatedCurrentDate", v53, v26 + 192) && *v33)
                {
                  *(v26 + 224) = 1;
                }

                goto LABEL_76;
              }

LABEL_51:
              *(v26 + 224) = 0;
              if ((*(v26 + 132) & 1) == 0)
              {
                goto LABEL_76;
              }

              v32.n128_u64[0] = 0;
              v46 = Seconds;
              v47 = MEMORY[0x19A8CCD90](v32);
              *time = *(v26 + 120);
              *&time[16] = *(v26 + 136);
              v48 = CMTimeGetSeconds(time);
              v49 = CFDateCreate(v20, v47 + v48 - v46);
              if (dword_1EAF172E8)
              {
                LODWORD(v151[0]) = 0;
                type[0] = OS_LOG_TYPE_DEFAULT;
                v50 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v51 = v151[0];
                v133 = v50;
                HIDWORD(v132) = 0;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = v51;
                }

                else
                {
                  v52 = v51 & 0xFFFFFFFE;
                }

                if (v52)
                {
                  if (a1)
                  {
                    v58 = (CMBaseObjectGetDerivedStorage() + 459);
                  }

                  else
                  {
                    v58 = "";
                  }

                  *v131 = v58;
                  v130 = *v33;
                  *time = *(v26 + 120);
                  *&time[16] = *(v26 + 136);
                  v59 = CMTimeGetSeconds(time);
                  *time2 = 136316418;
                  *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
                  *&time2[12] = 2048;
                  *&time2[14] = a1;
                  *&time2[22] = 2082;
                  *&time2[24] = *v131;
                  *v159 = 2112;
                  *&v159[2] = v130;
                  *&v159[10] = 2112;
                  *&v159[12] = v49;
                  *&v159[20] = 2048;
                  *&v159[22] = v59;
                  LODWORD(v128) = 62;
                  v127 = time2;
                  _os_log_send_and_compose_impl(v52, 0, time, 128, &dword_1962D5000, v133, 0, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s Sub-item's current date is %@ updated to %@ pendingSetCurrentTime = %1.3fs");
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v60 = *v33;
              *v33 = v49;
              if (v49)
              {
                CFRetain(v49);
                if (!v60)
                {
LABEL_74:
                  if (v49)
                  {
LABEL_75:
                    CFRelease(v49);
                  }

LABEL_76:
                  if (*(v26 + 132))
                  {
                    *time = *(v26 + 120);
                    *&time[16] = *(v26 + 136);
                    itemairplay_setRememberedTimeAndDefaultFlag(cf, time);
                    *(v26 + 120) = *v136;
                    *(v26 + 136) = v29;
                    v64 = 1;
                    *(v26 + 144) = 0;
                    v3 = v134;
                  }

                  else
                  {
                    *v151 = *v136;
                    v152 = v29;
                    v61 = *(v26 + 8);
                    v62 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                    if (v62)
                    {
                      v3 = v134;
                      v63 = v62(v61, v151);
                    }

                    else
                    {
                      v63 = -12782;
                      v3 = v134;
                    }

                    *time = *v151;
                    *&time[16] = v152;
                    itemairplay_setRememberedTimeAndDefaultFlag(cf, time);
                    *time = *v151;
                    *&time[16] = v152;
                    *time2 = *MEMORY[0x1E6960CC0];
                    *&time2[16] = *(MEMORY[0x1E6960CC0] + 16);
                    if (!CMTimeCompare(time, time2))
                    {
                      *type = 0;
                      FigPlaybackItemGetFigBaseObject();
                      v66 = v65;
                      v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v67)
                      {
                        v67(v66, @"IsReadyForPlayback", v20, type);
                      }

                      if (!FigGetBooleanFromCFTypeWithDefault())
                      {
                        if (dword_1EAF172E8)
                        {
                          HIDWORD(v149) = 0;
                          BYTE3(v149) = 0;
                          v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          v3 = v134;
                        }

                        itemairplay_setRememberedTimeAndDefaultFlag(cf, MEMORY[0x1E6960C70]);
                      }

                      if (*type)
                      {
                        CFRelease(*type);
                      }
                    }

                    v64 = v63 == 0;
                  }

                  v69 = *(v26 + 160);
                  *(DerivedStorage + 348) = *(v26 + 176);
                  *(DerivedStorage + 332) = v69;
                  FigSimpleMutexLock();
                  v70 = *(v26 + 576);
                  if (v70)
                  {
                    CFRelease(v70);
                    *(v26 + 576) = 0;
                  }

                  FigPlaybackItemGetFigBaseObject();
                  v72 = v71;
                  v73 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v73)
                  {
                    v73(v72, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v20, v26 + 576);
                  }

                  FigSimpleMutexUnlock();
                  if (v64)
                  {
                    *(v26 + 200) = *(v26 + 160);
                    *(v26 + 216) = *(v26 + 176);
                    v27 = &dword_1EAF17000;
                  }

                  else
                  {
                    v27 = &dword_1EAF17000;
                    if (dword_1EAF172E8)
                    {
                      LODWORD(v151[0]) = 0;
                      type[0] = OS_LOG_TYPE_DEFAULT;
                      v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v75 = v151[0];
                      v76 = type[0];
                      if (os_log_type_enabled(v74, type[0]))
                      {
                        v77 = v75;
                      }

                      else
                      {
                        v77 = v75 & 0xFFFFFFFE;
                      }

                      if (v77)
                      {
                        v78 = cf;
                        if (a1)
                        {
                          v79 = (CMBaseObjectGetDerivedStorage() + 459);
                        }

                        else
                        {
                          v79 = "";
                        }

                        if (cf)
                        {
                          v80 = (CMBaseObjectGetDerivedStorage() + 820);
                        }

                        else
                        {
                          v80 = "";
                        }

                        *time2 = 136316162;
                        *&time2[4] = "playerairplay_switchFromLocalToAirPlayVideo";
                        *&time2[12] = 2048;
                        *&time2[14] = a1;
                        *&time2[22] = 2048;
                        *&time2[24] = v78;
                        *v159 = 2082;
                        *&v159[2] = v79;
                        *&v159[10] = 2082;
                        *&v159[12] = v80;
                        _os_log_send_and_compose_impl(v77, 0, time, 128, &dword_1962D5000, v74, v76, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Could not get current time from sub-item. Default to time 0", time2, 52);
                        v3 = v134;
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                      v27 = &dword_1EAF17000;
                    }

                    itemairplay_setRememberedTimeAndDefaultFlag(cf, MEMORY[0x1E6960C70]);
                  }

                  *time = 0;
                  *time2 = 0;
                  v151[0] = 0;
                  FigPlaybackItemGetFigBaseObject();
                  v82 = v81;
                  v83 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v83)
                  {
                    v83(v82, @"SelectedMediaArray", v20, time);
                  }

                  FigPlaybackItemGetFigBaseObject();
                  v85 = v84;
                  v86 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v86)
                  {
                    v86(v85, @"MediaPresentationLanguages", v20, time2);
                  }

                  FigPlaybackItemGetFigBaseObject();
                  v88 = v87;
                  v89 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v89)
                  {
                    v89(v88, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics", v20, v151);
                  }

                  if (cf)
                  {
                    CFRetain(cf);
                  }

                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  if (*time)
                  {
                    CFRetain(*time);
                  }

                  if (*time2)
                  {
                    CFRetain(*time2);
                  }

                  if (v151[0])
                  {
                    CFRetain(v151[0]);
                    v90 = v151[0];
                  }

                  else
                  {
                    v90 = 0;
                  }

                  v91 = *(DerivedStorage + 104);
                  block = MEMORY[0x1E69E9820];
                  *v139 = 3221225472;
                  v140 = __playerairplay_switchFromLocalToAirPlayVideo_block_invoke;
                  v141 = &__block_descriptor_88_e5_v8__0l;
                  v142 = v26;
                  v143 = DerivedStorage;
                  v144 = cf;
                  v145 = *time2;
                  v146 = v90;
                  v147 = *time;
                  v148 = a1;
                  dispatch_async(v91, &block);
                  if (*time)
                  {
                    CFRelease(*time);
                  }

                  if (*time2)
                  {
                    CFRelease(*time2);
                  }

                  if (v151[0])
                  {
                    CFRelease(v151[0]);
                  }

                  v92 = MEMORY[0x1E695E4D0];
                  if (*(v26 + 792) >= 1)
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E90], *v92);
                    FigSimpleMutexUnlock();
                  }

                  if (*(v26 + 776))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E80], *(v26 + 776));
                    FigSimpleMutexUnlock();
                  }

                  if (*(v26 + 752))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E50], *(v26 + 752));
                    FigSimpleMutexUnlock();
                  }

                  if (*(DerivedStorage + 456))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E68], *v92);
                    FigSimpleMutexUnlock();
                  }

                  if (*(DerivedStorage + 384))
                  {
                    FigSimpleMutexLock();
                    CFDictionarySetValue(*(v26 + 336), *MEMORY[0x1E6961E58], *(DerivedStorage + 384));
                    FigSimpleMutexUnlock();
                  }

                  goto LABEL_147;
                }
              }

              else if (!v60)
              {
                goto LABEL_74;
              }

              CFRelease(v60);
              if (!v49)
              {
                goto LABEL_76;
              }

              goto LABEL_75;
            }
          }
        }
      }

      else
      {
        playerairplay_switchFromLocalToAirPlayVideo_cold_3();
      }

      Seconds = NAN;
      goto LABEL_42;
    }

LABEL_49:
    v43 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_185;
  }

  v11 = CMBaseObjectGetDerivedStorage();
  v12 = *(v11 + 8);
  if (!v12)
  {
LABEL_27:
    LODWORD(v18) = 1;
    if (cf)
    {
      goto LABEL_28;
    }

    goto LABEL_49;
  }

  CFRetain(*(v11 + 8));
  while (1)
  {
    *time = 0;
    *time2 = 0;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v13)
    {
      v13(v12, time);
    }

    v14 = *time;
    if (!*time)
    {
      break;
    }

    v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v15)
    {
      v15(v14, v9, 0, 0);
    }

    v16 = *(DerivedStorage + 8);
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v17)
    {
      v17(v16, v12, time2);
    }

    if (*time)
    {
      CFRelease(*time);
    }

    CFRelease(v12);
    v12 = *time2;
    if (!*time2)
    {
      goto LABEL_27;
    }
  }

  *(DerivedStorage + 50) = 0;
  CFRelease(v12);
  v43 = 0;
  v44 = 0;
  v45 = 0;
LABEL_192:
  if (cf)
  {
    CFRelease(cf);
  }

  if (values)
  {
    CFRelease(values);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v45;
}

uint64_t playerairplay_removeStartupTasksFromSubPlayerApply(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 136);
  if (v7)
  {

    return v7(v3, a1);
  }

  return result;
}

void itemairplay_updateDateTimePivot(uint64_t a1)
{
  v9 = 0;
  if (*(a1 + 8))
  {
    FigPlaybackItemGetFigBaseObject();
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      if (!v4(v3, @"currentDateAndTime", *MEMORY[0x1E695E480], &v9))
      {
        v8 = 0;
        v6 = 0u;
        v7 = 0u;
        FigDateTimeMakeFromDictionary(v9, &v6);
        if (v8 && BYTE1(v8))
        {
          v5 = v7;
          *(a1 + 288) = v6;
          *(a1 + 304) = v5;
          *(a1 + 320) = v8;
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }
    }
  }
}

void itemairplay_resetTimeToPausePlayback(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = v4;
  if (v4 && !*(DerivedStorage + 241))
  {
    v6 = MEMORY[0x1E6960C70];
    *(v4 + 512) = *MEMORY[0x1E6960C70];
    *(v4 + 528) = *(v6 + 16);
    StopAndReleaseTimer((v4 + 328));
  }

  if (*(DerivedStorage + 64))
  {
    *(DerivedStorage + 64) = 0;
    v7 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v7)
    {
      if (v7 != 10)
      {
        v8 = *(DerivedStorage + 56);
        if (v8 != 0.0)
        {
          memset(&v13, 0, sizeof(v13));
          if (v5)
          {
            CMTimebaseGetTime(&v13, *(v5 + 568));
            v8 = *(DerivedStorage + 56);
          }

          else
          {
            v13 = **&MEMORY[0x1E6960CC0];
          }

          CFRetain(a1);
          v9 = *(DerivedStorage + 112);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __itemairplay_resetTimeToPausePlayback_block_invoke;
          v10[3] = &__block_descriptor_76_e5_v8__0l;
          v11 = v8;
          v10[4] = DerivedStorage;
          v10[5] = a1;
          v12 = v13;
          dispatch_async(v9, v10);
        }
      }
    }
  }
}

CFArrayRef __playerairplay_getPreloadAssetPropertiesArray_block_invoke()
{
  values[4] = *MEMORY[0x1E69E9840];
  values[0] = @"Duration";
  values[1] = @"MediaSelectionArray";
  values[2] = @"assetProperty_OriginalNetworkContentURL";
  values[3] = @"assetProperty_ProtectedStatus";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 4, MEMORY[0x1E695E9C0]);
  playerairplay_getPreloadAssetPropertiesArray_sPreloadAssetPropertiesArray = result;
  return result;
}

void playerairplay_updateSubPlayerPlayQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v80 = 0;
  v81 = -1;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v2 = DerivedStorage[1];
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v3)
  {
    v3(v2, 0);
  }

  v4 = playqueue_createPlayQueueSnapshot(DerivedStorage[5], &v81);
  v5 = v4;
  if (v81 == -1 || (ValueAtIndex = CFArrayGetValueAtIndex(v4, v81)) == 0)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  v7 = CFRetain(ValueAtIndex);
  if (v5)
  {
LABEL_8:
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      goto LABEL_60;
    }

    v9 = 0;
    allocator = *MEMORY[0x1E695E480];
    v65 = *MEMORY[0x1E695E4C0];
    v66 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      v10 = CFArrayGetValueAtIndex(v5, v9);
      v11 = CMBaseObjectGetDerivedStorage();
      FigReadWriteLockLockForRead();
      if (!*(v11 + 72))
      {
        if (*(v11 + 700))
        {
          break;
        }
      }

LABEL_11:
      FigReadWriteLockUnlockForRead();
      if (Count == ++v9)
      {
        goto LABEL_60;
      }
    }

    if (v10 == v7)
    {
      v12 = *(v11 + 816);
      *(v11 + 152) = v12;
      *(v11 + 816) = FPSupport_IncrementSeekID(v12);
    }

    v13 = *(v11 + 192);
    if (!v13)
    {
LABEL_29:
      if (*(v11 + 152))
      {
        Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        v25 = *(v11 + 8);
        v68 = *(v11 + 160);
        v26 = *(*(CMBaseObjectGetVTable() + 16) + 176);
        if (!v26 || (v82[0] = v68, v26(v25, v82, Mutable)))
        {
          *(v11 + 152) = 0;
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        v27 = *(v11 + 8);
        v28 = *(v11 + 188);
        v68 = *(v11 + 160);
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v29)
        {
          v82[0] = v68;
          v29(v27, v82, v28);
        }
      }

LABEL_37:
      v30 = *(v11 + 8);
      v82[0] = *(v11 + 488);
      itemairplay_setItemPropertyAsTime(v30, @"TimeToPauseBuffering", v82);
      v31 = *(v11 + 8);
      v82[0] = *(v11 + 512);
      itemairplay_setItemPropertyAsTime(v31, @"TimeToPausePlayback", v82);
      if (*(v11 + 158))
      {
        v32 = v66;
      }

      else
      {
        v32 = v65;
      }

      FigPlaybackItemGetFigBaseObject();
      v34 = v33;
      v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v35)
      {
        v35(v34, @"SnapTimeToPausePlayback", v32);
      }

      v36 = *(v11 + 776);
      FigPlaybackItemGetFigBaseObject();
      v38 = v37;
      v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v39)
      {
        v39(v38, @"interstitialEvents", v36);
      }

      v40 = *(v11 + 752);
      FigPlaybackItemGetFigBaseObject();
      v42 = v41;
      v43 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v43)
      {
        v43(v42, @"currentInterstitialEvent", v40);
      }

      v44 = DerivedStorage[13];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_updateSubPlayerPlayQueue_block_invoke;
      block[3] = &unk_1E748B850;
      block[7] = v11;
      block[8] = v10;
      block[4] = &v73;
      block[5] = &v69;
      block[6] = &v77;
      dispatch_sync(v44, block);
      v45 = v78[3];
      if (v45)
      {
        FigPlaybackItemGetFigBaseObject();
        v47 = v46;
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v48)
        {
          v48(v47, @"SelectedMediaArray", v45);
        }
      }

      else
      {
        v49 = v74[3];
        if (v49 || v70[3])
        {
          FigPlaybackItemGetFigBaseObject();
          v51 = v50;
          v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v52)
          {
            v52(v51, @"MediaPresentationLanguages", v49);
          }

          v53 = v70[3];
          FigPlaybackItemGetFigBaseObject();
          v55 = v54;
          v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v56)
          {
            v56(v55, @"kFigPlaybackItemProperty_MediaPresentationCharacteristics", v53);
          }
        }
      }

      v57 = DerivedStorage[1];
      v58 = *(v11 + 8);
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v59)
      {
        v59(v57, v58, 0);
      }

      goto LABEL_11;
    }

    if (*(v11 + 224))
    {
      FigPlaybackItemGetFigBaseObject();
      v15 = v14;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = @"estimatedCurrentDate";
    }

    else
    {
      v19 = *(v11 + 152);
      v20 = *(v11 + 8);
      if (v19)
      {
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 128);
        if (!v21)
        {
          goto LABEL_25;
        }

        v18 = v21(v20, v13, v19);
        goto LABEL_24;
      }

      FigPlaybackItemGetFigBaseObject();
      v15 = v60;
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = @"currentDate";
    }

    v18 = v16(v15, v17, v13);
LABEL_24:
    if (!v18)
    {
      v22 = 0;
LABEL_26:
      v23 = *(v11 + 192);
      if (v23)
      {
        CFRelease(v23);
        *(v11 + 192) = 0;
      }

      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

LABEL_25:
    *(v11 + 152) = 0;
    v22 = 1;
    goto LABEL_26;
  }

LABEL_60:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v61 = v78[3];
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = v74[3];
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = v70[3];
  if (v63)
  {
    CFRelease(v63);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
}

void sub_19662A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v35 - 216), 8);
  _Block_object_dispose((v35 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t playerairplay_forwardStartupTasksToSubPlayerApply(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 128);
  if (v7)
  {

    return v7(v3, a1);
  }

  return result;
}

void __playerairplay_switchFromAirPlayVideoToLocal_block_invoke(uint64_t a1)
{
  playerairplay_switchFromAirPlayVideoToLocal(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t itemairplay_releaseCPEProtector(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*(DerivedStorage + 72))
  {
    v3 = *(DerivedStorage + 432);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 432) = 0;
    }

    v4 = *(DerivedStorage + 632);
    if (v4)
    {
      v5 = *(CMBaseObjectGetVTable() + 16);
      if (*v5)
      {
        v6 = v5[12];
        if (v6)
        {
          v6(v4);
        }
      }

      v7 = *(DerivedStorage + 632);
      if (v7)
      {
        CFRelease(v7);
        *(DerivedStorage + 632) = 0;
      }
    }

    *(DerivedStorage + 703) = 0;
  }

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_setItemPropertyAsTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v4 = *MEMORY[0x1E695E480];
  v9 = *a3;
  v5 = CMTimeCopyAsDictionary(&v9, v4);
  FigPlaybackItemGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v8(v7, a2, v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t __playerairplay_updateSubPlayerPlayQueue_block_invoke(uint64_t result)
{
  if (*(*(result + 56) + 352))
  {
    return __playerairplay_updateSubPlayerPlayQueue_block_invoke_cold_1(result, result + 56);
  }

  return result;
}

void __playerairplay_airplayRouteDeselectedCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_airplayRouteDeselectedCallback_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke(uint64_t result)
{
  v1 = result + 32;
  if (!**(result + 32))
  {
    v2 = (result + 40);
    if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
    {
      __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_cold_1(v1, v2);
    }
  }
}

void __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_playbackWillBeInterruptedNotificationCallback_block_invoke_2_cold_1();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_primaryAppChangedCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2 && v2[408] != *(a1 + 56))
  {
    IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(*(a1 + 40));
    v4 = *(a1 + 40);
    *(*(a1 + 32) + 408) = *(a1 + 56);
    playerairplay_checkStartStopAirPlay(v4, IsAirplayVideoActive);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __playerairplay_audioModeChangedCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_audioModeChangedCallback_block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_airplayRouteChangedPausePlaybackCallback_block_invoke(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (!**(a1 + 32) && *(CMBaseObjectGetDerivedStorage() + 296))
  {
    cf[0] = 0;
    if (dword_1EAF172E8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 19, cf);
    v4 = *(*(a1 + 32) + 8);
    v5 = cf[0];
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v6)
    {
      v6(v4, v5, 0.0);
    }

    playerairplay_updatePlayerRateToMatch(*(a1 + 40), cf[0], 0.0);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t __playerairplay_cleanUpScrubLayerAndContext_block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  if (!pthread_main_np())
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    [v3 setContents:0];
    [*(*(a1 + 32) + 152) removeFromSuperlayer];
    v2 = *(a1 + 32);
    v4 = *(v2 + 152);
    if (v4)
    {
      CFRelease(v4);
      v2 = *(a1 + 32);
      *(v2 + 152) = 0;
    }
  }

  v5 = *(v2 + 144);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1 + 32) + 144) = 0;
  }

  v6 = MEMORY[0x1E6979518];

  return [v6 commit];
}

BOOL playerairplay_isInterstitialsWithIntegratedTimelineAllowed(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 242) && (DerivedStorage = CMBaseObjectGetDerivedStorage(), *(DerivedStorage + 240)))
  {
    return *(DerivedStorage + 241) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(const void *a1, const void *a2, const void *a3, int64_t a4, void *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (*DerivedStorage)
  {
    v22 = 0;
    v23 = 4294954511;
  }

  else
  {
    if (*(DerivedStorage + 280))
    {
      v12 = dispatch_semaphore_create(0);
      v29[5] = v12;
      if (v12)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 40);
        v39[3] = Mutable;
        if (Mutable)
        {
          CFDataSetLength(Mutable, 40);
          MutableBytePtr = CFDataGetMutableBytePtr(v39[3]);
          v35[3] = MutableBytePtr;
          if (MutableBytePtr)
          {
            if (a1)
            {
              CFRetain(a1);
            }

            if (a2)
            {
              CFRetain(a2);
            }

            if (a3)
            {
              CFRetain(a3);
            }

            v15 = v39[3];
            if (v15)
            {
              CFRetain(v15);
            }

            v16 = v29[5];
            if (v16)
            {
              dispatch_retain(v16);
            }

            v17 = *(v11 + 112);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut_block_invoke;
            block[3] = &unk_1E748B878;
            block[8] = a1;
            block[9] = a2;
            block[4] = &v34;
            block[5] = &v28;
            block[6] = &v38;
            block[7] = v11;
            block[10] = a3;
            dispatch_async(v17, block);
            v18 = v29[5];
            v19 = dispatch_time(0, a4);
            if (!dispatch_semaphore_wait(v18, v19))
            {
              v21 = v35[3];
              v22 = *(v21 + 16);
              v23 = *(v21 + 32);
              *(v21 + 16) = 0;
              goto LABEL_21;
            }

            if (dword_1EAF172E8)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }

    v23 = 0;
    v22 = 0;
  }

LABEL_21:
  v24 = v29[5];
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = v39[3];
  if (v25)
  {
    CFRelease(v25);
  }

  if (a5)
  {
    *a5 = v22;
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  return v23;
}

void sub_19662AEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void pap_playbackSessionGetProxiedPropertyCompletion(int a1, const void *a2, int a3, CFMutableDataRef theData)
{
  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  if (MutableBytePtr)
  {
    v8 = MutableBytePtr;
    if (a2)
    {
      v9 = CFRetain(a2);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 2) = v9;
    *(v8 + 8) = a3;
    global_queue = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __pap_playbackSessionGetProxiedPropertyCompletion_block_invoke;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = v8;
    v11[5] = theData;
    dispatch_async(global_queue, v11);
  }
}

void __pap_playbackSessionGetProxiedPropertyCompletion_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = dispatch_semaphore_signal(v3);
    v2 = *(a1 + 32);
    if (!v4)
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 32) + 16) = 0;
        v2 = *(a1 + 32);
      }
    }
  }

  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    CFRelease(v6);
    v2 = *(a1 + 32);
  }

  v7 = *(v2 + 8);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a1 + 40);

  CFRelease(v8);
}

uint64_t playerairplay_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const __CFBoolean *a4, _BYTE *a5, void *a6, void *a7)
{
  v128 = *MEMORY[0x1E69E9840];
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_2;
  }

  if (CFEqual(a3, @"AllowsAirPlayVideo"))
  {
    if (a4)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(a4))
      {
        Value = CFBooleanGetValue(a4);
        if (dword_1EAF172E8)
        {
          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (Value == *(DerivedStorage + 48))
        {
          goto LABEL_52;
        }

        IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
        *(DerivedStorage + 48) = Value;
        if (a1)
        {
          CFRetain(a1);
        }

        v29 = *(DerivedStorage + 112);
        v120[0] = MEMORY[0x1E69E9820];
        v120[1] = 3221225472;
        v120[2] = __playerairplay_handleSetProperty_block_invoke;
        v120[3] = &__block_descriptor_49_e5_v8__0l;
        v120[4] = DerivedStorage;
        v120[5] = a1;
        v121 = IsAirplayVideoActive;
        v30 = v120;
        goto LABEL_51;
      }
    }

    goto LABEL_14;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v18 = CFGetTypeID(a4);
      if (v18 == CFBooleanGetTypeID())
      {
        v19 = CFBooleanGetValue(a4);
        if (dword_1EAF172E8)
        {
          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v19 == *(DerivedStorage + 49))
        {
          goto LABEL_52;
        }

        v42 = playerairplay_getIsAirplayVideoActive(a1);
        *(DerivedStorage + 49) = v19;
        if (a1)
        {
          CFRetain(a1);
        }

        v29 = *(DerivedStorage + 112);
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __playerairplay_handleSetProperty_block_invoke_176;
        v118[3] = &__block_descriptor_49_e5_v8__0l;
        v118[4] = DerivedStorage;
        v118[5] = a1;
        v119 = v42;
        v30 = v118;
LABEL_51:
        dispatch_async(v29, v30);
LABEL_52:
        v21 = 1;
        goto LABEL_53;
      }
    }

LABEL_14:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
    v21 = 0;
    *(v125 + 6) = v22;
    goto LABEL_53;
  }

  if (CFEqual(a3, @"ParticipatingInCoordinatedPlayback"))
  {
    if (a4)
    {
      v23 = CFBooleanGetTypeID();
      if (v23 == CFGetTypeID(a4))
      {
        v24 = CFBooleanGetValue(a4);
        if (dword_1EAF172E8)
        {
          v123 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v24 == *(DerivedStorage + 456))
        {
          goto LABEL_46;
        }

        v38 = playerairplay_getIsAirplayVideoActive(a1);
        v39 = v38;
        *(DerivedStorage + 456) = v24;
        playerairplay_notifyIfIsAirPlayVideoActiveChanged(a1, v38);
        if (a1)
        {
          CFRetain(a1);
        }

        v40 = *(DerivedStorage + 112);
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __playerairplay_handleSetProperty_block_invoke_177;
        v116[3] = &__block_descriptor_49_e5_v8__0l;
        v116[4] = DerivedStorage;
        v116[5] = a1;
        v117 = v39;
        v41 = v116;
        goto LABEL_45;
      }
    }

LABEL_2:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
    *(v125 + 6) = v14;
    goto LABEL_62;
  }

  if (CFEqual(a3, @"PickerContextUUID"))
  {
    if (!a4 || (v26 = CFGetTypeID(a4), v26 == CFStringGetTypeID()))
    {
      FigBytePumpGetFigBaseObject();
      CMBaseObjectSetProperty(v27, 0x1F0B25938, a4);
    }

    goto LABEL_46;
  }

  if (CFEqual(a3, @"ActionAtEnd"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v31 = CFGetTypeID(a4);
    if (v31 != CFStringGetTypeID())
    {
      goto LABEL_38;
    }

    v32 = *(DerivedStorage + 128);
    *(DerivedStorage + 128) = a4;
    CFRetain(a4);
    if (v32)
    {
      CFRelease(v32);
    }

    if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
    {
      goto LABEL_38;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v33 = *(DerivedStorage + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __playerairplay_handleSetProperty_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    v34 = block;
    goto LABEL_37;
  }

  if (CFEqual(a3, @"UsesAirPlayVideoWhileAirPlayScreenIsActive"))
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v50 = CFBooleanGetTypeID();
    if (v50 != CFGetTypeID(a4))
    {
      goto LABEL_14;
    }

    v51 = playerairplay_getIsAirplayVideoActive(a1);
    v52 = CFBooleanGetValue(a4);
    if (dword_1EAF172E8)
    {
      v123 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v52 == *(DerivedStorage + 52))
    {
LABEL_46:
      v21 = 0;
      goto LABEL_53;
    }

    *(DerivedStorage + 52) = v52;
    if (a1)
    {
      CFRetain(a1);
    }

    v40 = *(DerivedStorage + 112);
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __playerairplay_handleSetProperty_block_invoke_178;
    v113[3] = &__block_descriptor_49_e5_v8__0l;
    v113[4] = DerivedStorage;
    v113[5] = a1;
    v114 = v51;
    v41 = v113;
LABEL_45:
    dispatch_async(v40, v41);
    goto LABEL_46;
  }

  if (CFEqual(a3, @"ClientInBackground"))
  {
    if (!a4)
    {
      goto LABEL_14;
    }

    v55 = CFBooleanGetTypeID();
    if (v55 != CFGetTypeID(a4))
    {
      goto LABEL_14;
    }

    v56 = playerairplay_getIsAirplayVideoActive(a1);
    v57 = CFBooleanGetValue(a4);
    doesCurrentRouteUseScreen = pap_doesCurrentRouteUseScreen(a1);
    *(DerivedStorage + 200) = v57;
    if (v57)
    {
      v59 = doesCurrentRouteUseScreen;
      v60 = CMBaseObjectGetDerivedStorage();
      if (*(v60 + 48))
      {
        if (*(v60 + 49) && *(DerivedStorage + 52) && v59 && pap_isDeviceUnlocked())
        {
          if (a1)
          {
            CFRetain(a1);
          }

          v61 = *(DerivedStorage + 112);
          v112[0] = MEMORY[0x1E69E9820];
          v112[1] = 3221225472;
          v112[2] = __playerairplay_handleSetProperty_block_invoke_2_179;
          v112[3] = &__block_descriptor_48_e5_v8__0l;
          v112[4] = DerivedStorage;
          v112[5] = a1;
          dispatch_async(v61, v112);
        }
      }
    }

    if (a1)
    {
      CFRetain(a1);
    }

    v62 = *(DerivedStorage + 112);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __playerairplay_handleSetProperty_block_invoke_3;
    v110[3] = &__block_descriptor_49_e5_v8__0l;
    v110[4] = DerivedStorage;
    v110[5] = a1;
    v111 = v56;
    dispatch_async(v62, v110);
    v21 = 0;
    v63 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v63 && v63 != 10)
    {
      if (!playqueue_getNumItemsInMediaControlPlaylist(*(DerivedStorage + 40)))
      {
        goto LABEL_46;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v40 = *(DerivedStorage + 112);
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __playerairplay_handleSetProperty_block_invoke_4;
      v109[3] = &__block_descriptor_48_e5_v8__0l;
      v109[4] = DerivedStorage;
      v109[5] = a1;
      v41 = v109;
      goto LABEL_45;
    }

    goto LABEL_53;
  }

  if (CFEqual(a3, @"DisplayTimedMetadata"))
  {
    if (a4)
    {
      v64 = CFBooleanGetTypeID();
      if (v64 == CFGetTypeID(a4))
      {
        v35 = 0;
        *(DerivedStorage + 136) = CFBooleanGetValue(a4);
LABEL_152:
        v36 = 1;
        goto LABEL_39;
      }
    }

LABEL_151:
    v35 = 0;
    goto LABEL_152;
  }

  if (CFEqual(a3, @"UseAirPlayVideoAudioOnlyMode"))
  {
    if (a4)
    {
      v65 = CFBooleanGetTypeID();
      if (v65 == CFGetTypeID(a4))
      {
        *(DerivedStorage + 51) = CFBooleanGetValue(a4);
        goto LABEL_52;
      }
    }

LABEL_113:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
    *(v125 + 6) = v66;
    goto LABEL_52;
  }

  if (CFEqual(a3, @"EnableBufferedAirPlayLocalPlayback") || CFEqual(a3, @"BufferedAirPlayLocalPlaybackVolume"))
  {
    goto LABEL_113;
  }

  if (CFEqual(a3, @"PlayerMuted"))
  {
    if (a4)
    {
      v67 = CFGetTypeID(a4);
      if (v67 == CFBooleanGetTypeID())
      {
        v68 = CFBooleanGetValue(a4);
        v69 = v68;
        if (v68 != *(DerivedStorage + 137))
        {
          *(DerivedStorage + 137) = v68;
          v70 = *(CMBaseObjectGetDerivedStorage() + 216);
          if (v70)
          {
            if (v70 != 10)
            {
              if (a1)
              {
                CFRetain(a1);
              }

              v71 = *(DerivedStorage + 112);
              v108[0] = MEMORY[0x1E69E9820];
              v108[1] = 3221225472;
              v108[2] = __playerairplay_handleSetProperty_block_invoke_5;
              v108[3] = &__block_descriptor_40_e5_v8__0l;
              v108[4] = a1;
              dispatch_async(v71, v108);
            }
          }
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v72 = *(DerivedStorage + 112);
        v106[0] = MEMORY[0x1E69E9820];
        v106[1] = 3221225472;
        v106[2] = __playerairplay_handleSetProperty_block_invoke_6;
        v106[3] = &unk_1E748B8A0;
        v106[4] = &v124;
        v106[5] = a1;
        v107 = v69;
        v73 = v106;
LABEL_150:
        dispatch_async(v72, v73);
        goto LABEL_151;
      }
    }

    goto LABEL_133;
  }

  if (CFEqual(a3, @"AppliesMediaSelectionCriteriaAutomatically"))
  {
    if (a4)
    {
      v74 = CFGetTypeID(a4);
      if (v74 == CFBooleanGetTypeID())
      {
        if (a1)
        {
          CFRetain(a1);
        }

        CFRetain(a4);
        v72 = *(DerivedStorage + 104);
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __playerairplay_handleSetProperty_block_invoke_7;
        v105[3] = &__block_descriptor_56_e5_v8__0l;
        v105[4] = DerivedStorage;
        v105[5] = a1;
        v105[6] = a4;
        v73 = v105;
        goto LABEL_150;
      }
    }

LABEL_133:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
    v35 = 0;
    v36 = 0;
    *(v125 + 6) = v75;
    goto LABEL_39;
  }

  if (CFEqual(a3, @"MediaSelectionCriteria"))
  {
    if (!a4 || (v76 = CFGetTypeID(a4), v76 == CFDictionaryGetTypeID()))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v72 = *(DerivedStorage + 104);
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __playerairplay_handleSetProperty_block_invoke_8;
      v104[3] = &unk_1E748B8C8;
      v104[6] = a1;
      v104[7] = a4;
      v104[4] = &v124;
      v104[5] = DerivedStorage;
      v73 = v104;
      goto LABEL_150;
    }

    goto LABEL_133;
  }

  if (CFEqual(a3, @"LegibleFallbackMediaSelectionCriteria"))
  {
    if (!a4 || (v77 = CFGetTypeID(a4), v77 == CFDictionaryGetTypeID()))
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      v72 = *(DerivedStorage + 104);
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __playerairplay_handleSetProperty_block_invoke_9;
      v103[3] = &__block_descriptor_56_e5_v8__0l;
      v103[4] = DerivedStorage;
      v103[5] = a1;
      v103[6] = a4;
      v73 = v103;
      goto LABEL_150;
    }

    goto LABEL_133;
  }

  if (CFEqual(a3, @"AllowsLegibleFallbackMediaSelectionCriteriaForAllAudibleMediaSelections"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v78 = CFGetTypeID(a4);
    if (v78 != CFBooleanGetTypeID())
    {
      goto LABEL_38;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a4);
    v72 = *(DerivedStorage + 104);
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __playerairplay_handleSetProperty_block_invoke_10;
    v102[3] = &__block_descriptor_56_e5_v8__0l;
    v102[4] = DerivedStorage;
    v102[5] = a1;
    v102[6] = a4;
    v73 = v102;
    goto LABEL_150;
  }

  if (CFEqual(a3, @"AutomaticallyWaitsToMinimizeStalling"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v79 = CFGetTypeID(a4);
    if (v79 != CFBooleanGetTypeID())
    {
      goto LABEL_38;
    }

    v80 = CFBooleanGetValue(a4);
    if (v80 == *(DerivedStorage + 80))
    {
      goto LABEL_38;
    }

    v35 = 0;
    v36 = 0;
    *(DerivedStorage + 80) = v80;
LABEL_39:
    *a5 = 0;
    if (a3)
    {
      v37 = CFRetain(a3);
    }

    else
    {
      v37 = 0;
    }

    *a6 = v37;
    if (a4)
    {
      v54 = CFRetain(a4);
    }

    else
    {
      v54 = 0;
    }

    *a7 = v54;
    if (!v36)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if (CFEqual(a3, @"FigAudioSession"))
  {
    FigBytePumpGetFigBaseObject();
    CMBaseObjectSetProperty(v81, 0x1F0B22118, a4);
    if (a4)
    {
      playerairplay_updateAirPlayVideoIsActiveProperty(a1);
    }

    if (a1)
    {
      CFRetain(a1);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v33 = *(DerivedStorage + 112);
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __playerairplay_handleSetProperty_block_invoke_11;
    v101[3] = &__block_descriptor_56_e5_v8__0l;
    v101[4] = a4;
    v101[5] = DerivedStorage;
    v101[6] = a1;
    v34 = v101;
LABEL_37:
    dispatch_async(v33, v34);
LABEL_38:
    v35 = 0;
    v36 = 0;
    goto LABEL_39;
  }

  if (CFEqual(a3, @"AudioModeIsMoviePlayback"))
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v82 = CFGetTypeID(a4);
    if (v82 != CFBooleanGetTypeID())
    {
      goto LABEL_38;
    }

    if (a1)
    {
      CFRetain(a1);
    }

    CFRetain(a4);
    v33 = *(DerivedStorage + 112);
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = __playerairplay_handleSetProperty_block_invoke_12;
    v100[3] = &__block_descriptor_56_e5_v8__0l;
    v100[4] = DerivedStorage;
    v100[5] = a1;
    v100[6] = a4;
    v34 = v100;
    goto LABEL_37;
  }

  if (CFEqual(a3, @"InterstitialAirPlayPlayer"))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v40 = *(DerivedStorage + 112);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __playerairplay_handleSetProperty_block_invoke_13;
    v99[3] = &__block_descriptor_56_e5_v8__0l;
    v99[4] = DerivedStorage;
    v99[5] = a4;
    v99[6] = a1;
    v41 = v99;
    goto LABEL_45;
  }

  if (!CFEqual(a3, @"ItemsToPrebuffer"))
  {
    if (CFEqual(a3, @"CurrentInterstitialEventSkippableState"))
    {
      if (!a4)
      {
        goto LABEL_46;
      }

      v87 = CFGetTypeID(a4);
      if (v87 != CFDictionaryGetTypeID())
      {
        goto LABEL_46;
      }

      v88 = *(DerivedStorage + 384);
      *(DerivedStorage + 384) = a4;
      CFRetain(a4);
      if (v88)
      {
        CFRelease(v88);
      }

      if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) > 2)
      {
        goto LABEL_46;
      }

      if (a1)
      {
        CFRetain(a1);
      }

      v40 = *(DerivedStorage + 112);
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __playerairplay_handleSetProperty_block_invoke_14;
      v98[3] = &__block_descriptor_48_e5_v8__0l;
      v98[4] = a1;
      v98[5] = DerivedStorage;
      v41 = v98;
      goto LABEL_45;
    }

    if (!CFEqual(a3, @"ExternalPlaybackInterstitialSchedulingStrategy"))
    {
      goto LABEL_38;
    }

    if (!a4)
    {
      goto LABEL_46;
    }

    v90 = CFGetTypeID(a4);
    if (v90 != CFNumberGetTypeID())
    {
      goto LABEL_46;
    }

    v21 = 0;
    *(DerivedStorage + 240) = FigCFNumberGetSInt32() != 1;
LABEL_53:
    v35 = 0;
    *a5 = 1;
    if (!v21)
    {
      goto LABEL_58;
    }

LABEL_54:
    v43 = pap_copyInterstitialPlayer(a1);
    if (v43)
    {
      FigPlayerGetFigBaseObject();
      v45 = v44;
      v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v46)
      {
        v46(v45, a3, a4);
      }

      CFRelease(v43);
    }

LABEL_58:
    v47 = 0;
    if (!v35)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (!a4)
  {
    v86 = 0;
    Mutable = 0;
    v89 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = 0;
LABEL_212:
    if (v89)
    {
      CFRelease(v89);
    }

    v36 = 0;
    a4 = v86;
    v35 = Mutable;
    goto LABEL_39;
  }

  v83 = CFGetTypeID(a4);
  if (v83 != CFArrayGetTypeID())
  {
    goto LABEL_2;
  }

  capacity = CFArrayGetCount(a4);
  if (capacity < 1)
  {
    Mutable = 0;
    v86 = a4;
LABEL_211:
    v89 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = a4;
    CFRetain(a4);
    goto LABEL_212;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_2;
  }

  idx = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, idx);
    if (!ValueAtIndex || (v85 = CFGetTypeID(ValueAtIndex), v85 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemAirPlayVTable_1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
      v47 = 0;
      goto LABEL_223;
    }

    CMBaseObjectGetDerivedStorage();
    v47 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v47 != a1)
    {
      break;
    }

    FigCFArrayAppendValue();
    if (a1)
    {
      CFRelease(v47);
    }

    if (capacity == ++idx)
    {
      v86 = Mutable;
      goto LABEL_211;
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
LABEL_223:
  *(v125 + 6) = v91;
  v35 = Mutable;
LABEL_59:
  CFRelease(v35);
LABEL_60:
  if (v47)
  {
    CFRelease(v47);
  }

LABEL_62:
  v48 = *(v125 + 6);
  _Block_object_dispose(&v124, 8);
  return v48;
}

void __playerairplay_handleSetProperty_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
    playerairplay_syncUpSubPlayerRateIfNeeded(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void playerairplay_syncUpSubPlayerRateIfNeeded(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v2 == 10 || v2 == 0)
  {
    v12 = 0.0;
    if (*(DerivedStorage + 56) != 0.0)
    {
      v4 = *(DerivedStorage + 8);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v5)
      {
        if (!v5(v4, &v12) && *(DerivedStorage + 56) != v12)
        {
          cf = 0;
          if (dword_1EAF172E8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 19, &cf);
          v7 = *(DerivedStorage + 8);
          v8 = *(DerivedStorage + 56);
          v9 = cf;
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (v10)
          {
            v10(v7, v9, v8);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }
    }
  }
}

void __playerairplay_handleSetProperty_block_invoke_176(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
    playerairplay_syncUpSubPlayerRateIfNeeded(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_177(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    StopAndReleaseTimer((v2 + 496));
    v4 = (a1 + 40);
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
    if (playerairplay_getIsAirplayVideoActive(*(a1 + 40)))
    {
      __playerairplay_handleSetProperty_block_invoke_177_cold_1();
    }

    playerairplay_updateShareAndAirPlayEchoMitigation(*v4);
    v5 = *v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
    {
      __playerairplay_handleSetProperty_block_invoke_177_cold_2(DerivedStorage, v5);
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_handleSetProperty_block_invoke_2(uint64_t a1)
{
  playerairplay_setActionAtEndOnAirPlayController(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_178(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_2_179(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_handleSetProperty_block_invoke_2_179_cold_1();
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_3(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    playerairplay_checkStartStopAirPlay(*(a1 + 40), *(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __playerairplay_handleSetProperty_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v4 = *(v2 + 40);
    FigSimpleMutexLock();
    Count = CFArrayGetCount(*v4);
    if (Count < 1)
    {
LABEL_12:
      ValueAtIndex = 0;
    }

    else
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v4, v7);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!DerivedStorage[72] && DerivedStorage[701] && DerivedStorage[707] != 2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }
    }

    FigSimpleMutexUnlock();
    v10 = CMBaseObjectGetDerivedStorage();
    if (ValueAtIndex)
    {
      v11 = *(v10 + 216);
      if (v11 && v11 != 10)
      {
        itemairplay_controlPlaybackActivityTimer(ValueAtIndex, 2);
      }
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_handleSetProperty_block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    __playerairplay_handleSetProperty_block_invoke_5_cold_1(DerivedStorage, v2);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

double playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(const void *a1)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_2(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14);
  }

  v10 = DerivedStorage;
  if (*DerivedStorage)
  {
    return playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_2(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14);
  }

  if ((*(CMBaseObjectGetDerivedStorage() + 216) - 14) <= 2)
  {
    playerairplay_updateAndApplySelectedMediaArrayOnMediaControl_cold_1(v10, &v13, a1);
  }

  return result;
}

void __playerairplay_handleSetProperty_block_invoke_11(const void **a1)
{
  v2 = a1 + 4;
  if (a1[4] != *(a1[5] + 49))
  {
    __playerairplay_handleSetProperty_block_invoke_11_cold_1(a1, (a1 + 5), a1 + 4);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *v2;
  if (*v2)
  {

    CFRelease(v4);
  }
}

void __playerairplay_handleSetProperty_block_invoke_12(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    __playerairplay_handleSetProperty_block_invoke_12_cold_1(a1);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __playerairplay_handleSetProperty_block_invoke_13(void *a1)
{
  if (!*a1[4])
  {
    v2 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v3 = v2;
    v4 = a1[4];
    v5 = *(v4 + 360);
    *(v4 + 360) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t itemairplay_Invalidate(const void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = CMBaseObjectGetDerivedStorage();
  if (v4)
  {
    if (dword_1EAF172E8)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v7 = *(v6 + 216);
        if (v7 && v7 != 10)
        {
          v22 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    v10 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (v10)
    {
      v11 = v10 == 10;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
      v13 = (v5 + 40);
    }

    else
    {
      v13 = (v5 + 40);
      if (playqueue_getIndexOfAirPlayItem(*(v5 + 40), a1) == -1)
      {
        goto LABEL_21;
      }

      if (*(v3 + 701))
      {
        v14 = CFRetain(*(v3 + 80));
        CFRetain(v4);
        v15 = *(v5 + 112);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __itemairplay_Invalidate_block_invoke;
        block[3] = &__block_descriptor_56_e5_v8__0l;
        block[4] = v5;
        block[5] = v4;
        block[6] = v14;
        dispatch_async(v15, block);
      }

      v12 = 1;
    }

    playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*v13, a1, 1, v12);
  }

LABEL_21:
  *(v3 + 72) = 1;
  FigReadWriteLockLockForWrite();
  FigReadWriteLockUnlockForWrite();
  *(v3 + 696) = -1;
  if (v5)
  {
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*(v5 + 16), *(v3 + 8));
    FigSimpleMutexUnlock();
  }

  if (*(v3 + 16))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(v3 + 808))
  {
    itemairplay_Invalidate_cold_1(a1);
  }

  if (*(v3 + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    FigPlaybackItemGetFigBaseObject();
    if (v16)
    {
      v17 = v16;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v18)
      {
        v18(v17);
      }
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t itemairplay_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemairplay_Invalidate(a1);
  v3 = *(DerivedStorage + 648);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 648) = 0;
  }

  v4 = *(DerivedStorage + 656);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 656) = 0;
  }

  FigSimpleMutexDestroy();
  v5 = *(DerivedStorage + 680);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 680) = 0;
  }

  v6 = *(DerivedStorage + 744);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 744) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 16) = 0;
  }

  v8 = *(DerivedStorage + 8);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 32) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  itemairplay_doCleanupAtEndOfPlayback(a1);
  itemairplay_cleanupItemForAirPlay(a1, 0);
  v11 = *(DerivedStorage + 720);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 720) = 0;
  }

  v12 = *(DerivedStorage + 24);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 24) = 0;
  }

  v13 = *(DerivedStorage + 88);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 88) = 0;
  }

  v14 = *(DerivedStorage + 112);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 112) = 0;
  }

  if (*(DerivedStorage + 96))
  {
    MEMORY[0x19A8CDA00]();
    v15 = *(DerivedStorage + 96);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 96) = 0;
    }
  }

  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 80) = 0;
  }

  v17 = *(DerivedStorage + 336);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 336) = 0;
  }

  if (*(DerivedStorage + 344))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 344) = 0;
  }

  v18 = *(DerivedStorage + 352);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 352) = 0;
  }

  v19 = *(DerivedStorage + 360);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 360) = 0;
  }

  v20 = *(DerivedStorage + 432);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 432) = 0;
  }

  v21 = *(DerivedStorage + 752);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 752) = 0;
  }

  v22 = *(DerivedStorage + 760);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 760) = 0;
  }

  v23 = *(DerivedStorage + 768);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 768) = 0;
  }

  v24 = *(DerivedStorage + 776);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 776) = 0;
  }

  v25 = *(DerivedStorage + 368);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 368) = 0;
  }

  v26 = *(DerivedStorage + 376);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 376) = 0;
  }

  v27 = *(DerivedStorage + 608);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 608) = 0;
  }

  v28 = *(DerivedStorage + 616);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 616) = 0;
  }

  v29 = *(DerivedStorage + 192);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 192) = 0;
  }

  v30 = *(DerivedStorage + 800);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 800) = 0;
  }

  v31 = *(DerivedStorage + 48);
  if (v31)
  {
    CFRelease(v31);
    *(DerivedStorage + 48) = 0;
  }

  v32 = *(DerivedStorage + 576);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 576) = 0;
  }

  FigSimpleMutexDestroy();
  v33 = *(DerivedStorage + 808);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 808) = 0;
  }

  if (*(DerivedStorage + 64))
  {
    FigReadWriteLockDestroy();
    *(DerivedStorage + 64) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t itemairplay_CopyProperty(CFTypeRef a1, const void *a2, const __CFAllocator *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v60 = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 9645, v4);
    goto LABEL_5;
  }

  v10 = DerivedStorage;
  if (*(DerivedStorage + 72))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954511, "<<<< FigPlayer_AP >>>>", 9651, v4);
LABEL_5:
    v12 = v11;
    v13 = 0;
    goto LABEL_6;
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 9657, v4);
    goto LABEL_5;
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  v15 = CMBaseObjectGetDerivedStorage();
  if (!v15 || (v16 = v15, *v15))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v47, v48);
LABEL_15:
    v12 = v17;
    goto LABEL_6;
  }

  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v15 + 40), 0, &v60);
  if (FigCFEqual())
  {
    v18 = *(v10 + 80);
    if (!v18)
    {
LABEL_20:
      v12 = 0;
      *a4 = v18;
      goto LABEL_6;
    }

LABEL_19:
    v18 = CFRetain(v18);
    goto LABEL_20;
  }

  if (FigCFEqual())
  {
    v19 = *(v16 + 112);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __itemairplay_CopyProperty_block_invoke;
    v59[3] = &__block_descriptor_48_e5_v8__0l;
    v59[4] = a4;
    v59[5] = a1;
    v20 = v59;
LABEL_25:
    dispatch_sync(v19, v20);
LABEL_26:
    v12 = 0;
    goto LABEL_6;
  }

  if (FigCFEqual())
  {
    v19 = *(v16 + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __itemairplay_CopyProperty_block_invoke_2;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = a4;
    block[5] = a1;
    v20 = block;
    goto LABEL_25;
  }

  v21 = @"AccessLog";
  if (CFEqual(a2, @"AccessLog") || (v21 = @"ErrorLog", CFEqual(a2, @"ErrorLog")))
  {
    if (v60 == a1 && *(CMBaseObjectGetDerivedStorage() + 216) == 16)
    {
      v17 = itemairplay_copyLogs(v13, a1, v21, a4);
      goto LABEL_15;
    }

    goto LABEL_37;
  }

  v22 = CFEqual(a2, @"Timebase");
  v23 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (v22)
  {
    if ((v23 - 14) <= 2)
    {
      v19 = *(v16 + 112);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __itemairplay_CopyProperty_block_invoke_3;
      v57[3] = &__block_descriptor_48_e5_v8__0l;
      v57[4] = v10;
      v57[5] = a4;
      v20 = v57;
      goto LABEL_25;
    }

LABEL_37:
    FigPlaybackItemGetFigBaseObject();
    v17 = CMBaseObjectCopyProperty(v24, a2, a3, a4);
    goto LABEL_15;
  }

  if (!v23 || v23 == 10)
  {
    goto LABEL_37;
  }

  if (CFEqual(a2, @"BufferState"))
  {
    v25 = &kFigPlaybackItemBufferState_Filling;
    v26 = *(v10 + 602);
    v27 = &kFigPlaybackItemBufferState_Full;
    goto LABEL_42;
  }

  if (CFEqual(a2, @"WillKeepUpPrediction"))
  {
    v25 = &kFigPlaybackItemWillKeepUpPrediction_UnlikelyToKeepUp;
    v26 = *(v10 + 603);
    v27 = &kFigPlaybackItemWillKeepUpPrediction_LikelyToKeepUp;
LABEL_42:
    if (v26)
    {
      v25 = v27;
    }

    goto LABEL_44;
  }

  if (CFEqual(a2, @"SeekableTimeIntervals"))
  {
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v56 = 0;
    v28 = *(v16 + 112);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __itemairplay_CopyProperty_block_invoke_4;
    v54[3] = &unk_1E7482510;
    v54[4] = &time;
    v54[5] = v10;
    dispatch_sync(v28, v54);
    v29 = *(*&time.timescale + 24);
    if (v29)
    {
      v12 = itemairplay_convertTimeRangesToTimeIntervals(a3, v29, 0, a4);
      v30 = *(*&time.timescale + 24);
      if (v30)
      {
        CFRelease(v30);
      }

      goto LABEL_99;
    }

    goto LABEL_98;
  }

  if (CFEqual(a2, @"PlayableTimeIntervals"))
  {
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v56 = 0;
    v31 = *(v16 + 112);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __itemairplay_CopyProperty_block_invoke_5;
    v53[3] = &unk_1E748B8C8;
    v53[6] = v16;
    v53[7] = v10;
    v53[4] = &time;
    v53[5] = v13;
    dispatch_sync(v31, v53);
    if (*(v16 + 241))
    {
      v32 = *(*&time.timescale + 24);
      if ((!v32 || CFArrayGetCount(v32) <= 0) && *(CMBaseObjectGetDerivedStorage() + 368) && *(v10 + 831))
      {
        v33 = *(*&time.timescale + 24);
        if (v33)
        {
          CFRelease(v33);
        }

        v34 = itemairplay_copyLoadedTimeRanges(a1);
        *(*&time.timescale + 24) = v34;
      }
    }

    v35 = *(*&time.timescale + 24);
    if (v35)
    {
      v12 = itemairplay_convertTimeRangesToTimeIntervals(a3, v35, 1, a4);
    }

    else
    {
      v12 = 0;
      *a4 = CFArrayCreateMutable(a3, 1, MEMORY[0x1E695E9C0]);
    }

    v36 = *(*&time.timescale + 24);
    if (v36)
    {
      CFRelease(v36);
    }

    goto LABEL_99;
  }

  if (CFEqual(a2, @"currentDate"))
  {
    v18 = *(v10 + 192);
    if (v18 && !*(v10 + 224))
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

  if (CFEqual(a2, @"estimatedCurrentDate"))
  {
    v18 = *(v10 + 192);
    if (v18 && *(v10 + 224))
    {
      goto LABEL_19;
    }

LABEL_70:
    v12 = 4294954513;
    goto LABEL_6;
  }

  if (CFEqual(a2, @"currentDateAndTime"))
  {
    v17 = itemairplay_copyCurrentDateAndTime(a1, a4);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"EndTime"))
  {
    if ((*(v10 + 452) & 0x1D) == 1)
    {
      v37 = (v10 + 440);
      v38 = *(v10 + 456);
LABEL_76:
      time.epoch = v38;
      *&time.value = *v37;
LABEL_81:
      v18 = CMTimeCopyAsDictionary(&time, a3);
      goto LABEL_20;
    }

    goto LABEL_88;
  }

  if (CFEqual(a2, @"ReverseEndTime"))
  {
    if ((*(v10 + 476) & 0x1D) != 1)
    {
      goto LABEL_88;
    }

    *&time.value = *(v10 + 464);
    v39 = *(v10 + 480);
LABEL_80:
    time.epoch = v39;
    goto LABEL_81;
  }

  if (CFEqual(a2, @"TimeToPauseBuffering"))
  {
    if ((*(v10 + 500) & 0x1D) == 1)
    {
      v37 = (v10 + 488);
      v38 = *(v10 + 504);
      goto LABEL_76;
    }

LABEL_88:
    v18 = 0;
    goto LABEL_20;
  }

  if (CFEqual(a2, @"TimeToPausePlayback"))
  {
    if ((*(v10 + 524) & 0x1D) != 1)
    {
      goto LABEL_88;
    }

    *&time.value = *(v10 + 512);
    v39 = *(v10 + 528);
    goto LABEL_80;
  }

  if (CFEqual(a2, @"SelectedMediaArray"))
  {
    if (v60 == a1 && *(CMBaseObjectGetDerivedStorage() + 216) == 16)
    {
      time.value = 0;
      *&time.timescale = &time;
      time.epoch = 0x2020000000;
      v56 = 0;
      v40 = *(v16 + 104);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __itemairplay_CopyProperty_block_invoke_6;
      v52[3] = &unk_1E7482510;
      v52[4] = &time;
      v52[5] = v10;
      dispatch_sync(v40, v52);
      *a4 = *(*&time.timescale + 24);
      _Block_object_dispose(&time, 8);
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  if (CFEqual(a2, @"TaggedRangeMetadataArray"))
  {
    v41 = *(CMBaseObjectGetDerivedStorage() + 216);
    if (!v41 || v41 == 10)
    {
      goto LABEL_37;
    }

    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x2020000000;
    v56 = 0;
    v42 = *(v16 + 112);
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __itemairplay_CopyProperty_block_invoke_7;
    v49 = &unk_1E7482510;
    p_time = &time;
    v51 = v10;
    dispatch_sync(v42, &v46);
    v43 = *(*&time.timescale + 24);
    if (v43)
    {
      v12 = 0;
      *a4 = v43;
LABEL_99:
      _Block_object_dispose(&time, 8);
      goto LABEL_6;
    }

LABEL_98:
    v12 = 4294954513;
    goto LABEL_99;
  }

  if (!CFEqual(a2, @"CountOfTaggedRangeMetadataArrayListeners"))
  {
    if (CFEqual(a2, @"IsCoordinatedPlaybackSupported"))
    {
      isAPVSupportedForCoordinatedPlayback = playerairplay_isAPVSupportedForCoordinatedPlayback(v13);
      v25 = MEMORY[0x1E695E4D0];
      if (!isAPVSupportedForCoordinatedPlayback)
      {
        v25 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (!CFEqual(a2, @"IsReadyForPlayback"))
      {
        goto LABEL_37;
      }

      v25 = MEMORY[0x1E695E4D0];
      if (!*(v10 + 705))
      {
        v25 = MEMORY[0x1E695E4C0];
      }
    }

LABEL_44:
    v18 = *v25;
    goto LABEL_19;
  }

  v44 = *(CMBaseObjectGetDerivedStorage() + 216);
  if (!v44 || v44 == 10)
  {
    goto LABEL_37;
  }

  v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, (v10 + 792));
  if (v18)
  {
    goto LABEL_20;
  }

  v12 = 4294954510;
LABEL_6:
  if (v60)
  {
    CFRelease(v60);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v12;
}