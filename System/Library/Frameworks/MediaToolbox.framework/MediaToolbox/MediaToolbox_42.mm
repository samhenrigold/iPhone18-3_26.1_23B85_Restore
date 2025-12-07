uint64_t papm_AddToPlayQueue(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_AddToPlayQueue_cold_1((DerivedStorage + 40), &v11);
    return v11;
  }

  else
  {
    v6 = iapm_copySubItem(a2);
    if (a3)
    {
      a3 = iapm_copySubItem(a3);
    }

    v7 = *(DerivedStorage + 56);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v9 = v8(v7, v6, a3);
    }

    else
    {
      v9 = 4294954514;
    }

    FigReadWriteLockUnlockForRead();
    if (v6)
    {
      CFRelease(v6);
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return v9;
}

uint64_t papm_RemoveFromPlayQueue(uint64_t a1, CFTypeRef a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_RemoveFromPlayQueue_cold_1(&v8);
    v6 = v8;
    goto LABEL_12;
  }

  if (a2)
  {
    a2 = iapm_copySubItem(a2);
    if (!a2)
    {
      papm_RemoveFromPlayQueue_cold_2(&v9);
      v6 = v9;
LABEL_12:
      FigReadWriteLockUnlockForRead();
      return v6;
    }
  }

  v4 = *(DerivedStorage + 56);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v6 = v5(v4, a2);
  }

  else
  {
    v6 = 4294954514;
  }

  FigReadWriteLockUnlockForRead();
  if (a2)
  {
    CFRelease(a2);
  }

  return v6;
}

uint64_t papm_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRate_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v5)
    {
      papm_setMockRate(a1, 0, a2);
      v8 = 0;
    }

    else
    {
      v6 = *(DerivedStorage + 56);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v7)
      {
        v8 = v7(v6, a2);
      }

      else
      {
        v8 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papm_GetRate(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_GetRate_cold_1(&v8);
    v4 = v8;
  }

  else
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 16))
    {
      *a2 = *(DerivedStorage + 20);
      FigSimpleMutexUnlock();
      v4 = 0;
    }

    else
    {
      FigSimpleMutexUnlock();
      v5 = *(DerivedStorage + 56);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v6)
      {
        v4 = v6(v5, a2);
      }

      else
      {
        v4 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v4;
}

uint64_t papm_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRateWithFade_cold_1(&v14);
    v10 = v14;
  }

  else
  {
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v7)
    {
      papm_setMockRate(a1, 0, a3);
      v10 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 56);
      v12 = *a2;
      v13 = *(a2 + 2);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v14 = v12;
        v15 = v13;
        v10 = v9(v8, &v14, a3);
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papm_StartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_StartPreroll_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v7)
    {
      v8 = v7(v6, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papm_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_StepByCount_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papm_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRateAndAnchorTime_cold_1(&v22);
    v14 = v22;
  }

  else
  {
    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v11)
    {
      papm_setMockRate(a1, 0, a5);
      v14 = 0;
    }

    else
    {
      v12 = *(DerivedStorage + 56);
      v18 = *a2;
      v19 = *(a2 + 2);
      v16 = *a3;
      v17 = *(a3 + 2);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v13)
      {
        v22 = v18;
        v23 = v19;
        v20 = v16;
        v21 = v17;
        v14 = v13(v12, &v22, &v20, a4, a5);
      }

      else
      {
        v14 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v14;
}

uint64_t papm_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_CreatePlaybackItemFromAsset_cold_1(&v37);
    v18 = 0;
    v19 = v37;
    goto LABEL_8;
  }

  v11 = *(DerivedStorage + 56);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_8;
  }

  v13 = v12(v11, a2, a3, a4, &cf);
  if (v13)
  {
    v19 = v13;
    v18 = 0;
    goto LABEL_8;
  }

  CFGetAllocator(a1);
  v14 = cf;
  theString = 0;
  v37 = 0;
  v35 = 0;
  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase)
  {
    goto LABEL_40;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  *v16 = FigSimpleMutexCreate();
  if (v14)
  {
    v17 = CFRetain(v14);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 56) = v17;
  *(v16 + 64) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (v16 + 72), 10, 0x8000100u);
  }

  FigPlaybackItemGetFigBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_25;
  }

  OnlyTimebase = v23(v22, @"Timebase", *MEMORY[0x1E695E480], &v35);
  if (OnlyTimebase)
  {
    goto LABEL_40;
  }

  if (v35)
  {
    OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
    if (OnlyTimebase)
    {
      goto LABEL_40;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OnlyTimebase = FigNotificationCenterAddWeakListener();
  if (OnlyTimebase)
  {
    goto LABEL_40;
  }

  v24 = CFGetAllocator(a1);
  FigPlaybackItemGetFigBaseObject();
  v26 = v25;
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v27)
  {
LABEL_25:
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_26;
  }

  OnlyTimebase = v27(v26, 0x1F0B3D158, v24, v16 + 48);
  if (OnlyTimebase)
  {
LABEL_40:
    v19 = OnlyTimebase;
    v18 = 0;
    goto LABEL_26;
  }

  if (*(v16 + 48))
  {
    v19 = 0;
    v18 = v37;
    v37 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_26:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v19)
  {
LABEL_8:
    FigReadWriteLockUnlockForRead();
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v18)
  {
LABEL_42:
    v19 = 0;
    goto LABEL_8;
  }

  v28 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v28 + 8))
  {
    papm_CreatePlaybackItemFromAsset_cold_2(v28);
    goto LABEL_42;
  }

  FigSimpleMutexUnlock();
  v29 = *(v28 + 48);
  if (!v29)
  {
    goto LABEL_42;
  }

  v30 = CFRetain(v29);
  if (!v30)
  {
    goto LABEL_42;
  }

  v31 = v30;
  FigSimpleMutexLock();
  v32 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v32)
  {
    v33 = v32;
    FigCFDictionarySetValue();
    CFRelease(v33);
    FigSimpleMutexUnlock();
    v19 = 0;
    *a5 = v18;
    v18 = 0;
  }

  else
  {
    papm_CreatePlaybackItemFromAsset_cold_3(DerivedStorage, &v37);
    v19 = v37;
  }

  FigReadWriteLockUnlockForRead();
  CFRelease(v31);
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_9:
  CFRelease(v18);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t papm_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRateWithOptions_cold_1(&v12);
    v10 = v12;
  }

  else
  {
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v7)
    {
      papm_setMockRate(a1, a2, a3);
      v10 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 56);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v9)
      {
        v10 = v9(v8, a2, a3);
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papm_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetProperties_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v7 = FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(a1, *(DerivedStorage + 56), 0, papm_handleSetProperty, a2, a3);
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_ReevaluateRouteConfiguration_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v5 = FigPlayerReevaluateRouteConfigurationForReason(*(DerivedStorage + 56), a2, @" -> Mock AirPlay sub-player");
  }

  FigReadWriteLockUnlockForRead();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t papm_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_AddExternalStartupTask_cold_1(&v9);
    v5 = v9;
  }

  else if (!a2 || (FigSimpleMutexLock(), CFArrayAppendValue(*(DerivedStorage + 24), a2), CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener(), v4 = *(DerivedStorage + 16), FigSimpleMutexUnlock(), v5 = 0, !v4))
  {
    v6 = *(DerivedStorage + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v7)
    {
      v5 = v7(v6, a2);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v5;
}

uint64_t papm_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_RemoveExternalStartupTask_cold_1(&v13);
    v9 = v13;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 24);
    v14.length = CFArrayGetCount(v4);
    v14.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v14, a2);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 24), FirstIndexOfValue);
    }

    v6 = *(DerivedStorage + 32);
    v15.length = CFArrayGetCount(v6);
    v15.location = 0;
    v7 = CFArrayGetFirstIndexOfValue(v6, v15, a2);
    if (v7 != -1)
    {
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), v7);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v8 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
LABEL_9:
      v10 = *(DerivedStorage + 56);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v11)
      {
        v9 = v11(v10, a2);
      }

      else
      {
        v9 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v9;
}

uint64_t papm_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_CopyDisplayedCVPixelBuffer_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {
      v8 = v7(v6, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t iapm_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  iapm_Invalidate(a1);
  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[8] = 0;
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[7] = 0;
  }

  v5 = DerivedStorage[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[4];
  if (v8)
  {
    CFRelease(v8);
  }

  return FigSimpleMutexDestroy();
}

uint64_t iapm_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v13 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    FigSimpleMutexUnlock();
  }

  *a5 = 0;
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  *a6 = v14;
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  *a7 = v15;
  return 0;
}

uint64_t papm_BeginInterruption(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_BeginInterruption_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v2 = *(DerivedStorage + 56);
    v3 = *(CMBaseObjectGetVTable() + 24);
    if (v3 && (v4 = *(v3 + 8)) != 0)
    {
      v5 = v4(v2);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v5;
}

uint64_t papm_EndInterruption(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_EndInterruption_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetConnectionActive_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 24)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_DuckVolume_cold_1(&v13);
    v11 = v13;
  }

  else
  {
    v8 = *(DerivedStorage + 56);
    v9 = *(CMBaseObjectGetVTable() + 32);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v11 = v10(v8, a2, a3, a4);
    }

    else
    {
      v11 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v11;
}

uint64_t papm_SilentMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SilentMute_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(CMBaseObjectGetVTable() + 32);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_isMockPlaybackActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_37(void x0_0, uint64_t a1, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t a8)
{

  return FigCFDictionarySetCMTime();
}

double OUTLINED_FUNCTION_13_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_17_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigCFDictionarySetValueFromKeyInDict();
}

uint64_t CreatePesPrivateForH264(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_zone_calloc(gFigMPEG2ParserZone, 1uLL, 0x190uLL, 0x10B0040336C4AE3uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  H264InitializeSPS_PPS_List(v3);
  a1[105] = H264ProcessData;
  a1[106] = H264CleanPrivateData;
  a1[107] = H264DeletePrivateData;
  a1[108] = H264FlushFrames;
  PesFrameHeadersInit((a1 + 68), 8uLL);
  a1[6] = v4;
  *(a1 + 804) = 0x3E900007530;
  FrameQueueEntryInit((v4 + 10));
  *(v4 + 8) = -1;
  *(v4 + 76) = 5;
  *(v4 + 61) = 1065353216;
  v4[31] = 0;
  v5 = malloc_type_zone_calloc(gFigMPEG2ParserZone, 1uLL, 0x300uLL, 0x1010040113C0ABBuLL);
  result = 0;
  v4[42] = v5;
  *(v4 + 87) = 32;
  return result;
}

void *H264CleanPrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 344) >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(v2 + 336);
    do
    {
      CFAllocatorDeallocate(*(*(a1 + 8) + 40), *(v5 + v3));
      v5 = *(v2 + 336);
      *(v5 + v3) = 0;
      ++v4;
      v3 += 24;
    }

    while (v4 < *(v2 + 344));
  }

  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 32) = -1;
  *(v2 + 72) = 0;
  v6 = MEMORY[0x1E6960C70];
  *(v2 + 260) = *MEMORY[0x1E6960C70];
  *(v2 + 276) = *(v6 + 16);
  *(v2 + 248) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 5;
  v7 = *(v2 + 312);
  if (v7)
  {
    CFAllocatorDeallocate(*(*(a1 + 8) + 40), v7);
    *(v2 + 312) = 0;
  }

  *(v2 + 320) = 0;
  FrameQueueEntryClean(v2 + 80);
  *(v2 + 376) = 0;
  malloc_zone_free(gFigMPEG2ParserZone, *(v2 + 384));
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  FrameQueueEntryClean(v2 + 80);
  FrameQueueEntryClean(a1 + 456);
  FrameQueueClean((a1 + 728));

  return FrameQueueClean((a1 + 784));
}

void H264DeletePrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  H264DestroySPS_PPS_List(v2);
  PesFrameHeaderDestroy((v2 + 168));
  PesFrameHeaderDestroy((a1 + 544));
  H264CleanPrivateData(a1);
  malloc_zone_free(gFigMPEG2ParserZone, *(v2 + 336));
  malloc_zone_free(gFigMPEG2ParserZone, *(a1 + 48));
  *(a1 + 48) = 0;
}

void *H264FlushFrames(uint64_t a1)
{
  H264AddAllocatedBufferToFrame(a1, 0, 1);
  H264EmitBuffer(a1);

  return H264CleanPrivateData(a1);
}

uint64_t H264ProcessDataMemory(uint64_t a1, char *a2, unint64_t a3, __int128 *a4)
{
  v8 = *(a1 + 48);
  v9 = *(v8 + 312);
  if (v9)
  {
    v10 = *(v8 + 320);
    v11 = *(v8 + 328) - v10;
    v12 = (v9 + v10);
    if (!a3)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (!a3)
    {
      goto LABEL_132;
    }
  }

  v39 = 0;
  v13 = a3;
  do
  {
    v14 = *(v8 + 304);
    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (*a2)
          {
            goto LABEL_126;
          }

          v26 = 6;
          goto LABEL_96;
        }

        if (*a2)
        {
          goto LABEL_70;
        }

        v26 = 7;
      }

      else
      {
        if (v14 != 7)
        {
          if (v14 != 8)
          {
            if (v14 != 9)
            {
              goto LABEL_126;
            }

            v21 = *a2;
            v22 = 3;
            if (*(v8 + 72))
            {
              v22 = 4;
            }

            if (a3 - v13 >= v22 && *(a4 + 24) && *(a4 + 25))
            {
              if (!v39)
              {
                v39 = 1;
                v23 = a4;
LABEL_64:
                v28 = v23[1];
                *(a1 + 480) = *v23;
                *(a1 + 496) = v28;
              }
            }

            else
            {
              v23 = (v8 + 40);
              if (*(v8 + 64))
              {
                goto LABEL_64;
              }
            }

            *(v8 + 64) = 0;
            *(v8 + 66) = 0;
            if ((v21 & 0x1F) != 9)
            {
              goto LABEL_70;
            }

            if (v11 <= 4)
            {
              v24 = VendNewBuffer(a1, v8);
              if (v24)
              {
                goto LABEL_129;
              }

              v11 = *(v8 + 328);
              v12 = *(v8 + 312);
            }

            PesFrameHeaderAddOffset(a1 + 544, *(*(a1 + 48) + 352) + *(v8 + 320), 9);
            v12[4] = *a2;
            v12 += 5;
            v11 -= 5;
            v25 = *(v8 + 320) + 5;
            goto LABEL_94;
          }

          if (!*a2)
          {
            goto LABEL_126;
          }

          if (*a2 == 1)
          {
            *(v8 + 72) = 1;
LABEL_80:
            v26 = 9;
            goto LABEL_96;
          }

          goto LABEL_70;
        }

        if (*a2 == 1)
        {
          *(v8 + 72) = 0;
          goto LABEL_80;
        }

        if (*a2)
        {
LABEL_70:
          v26 = 5;
          goto LABEL_96;
        }

        v26 = 8;
      }

LABEL_96:
      *(v8 + 304) = v26;
      goto LABEL_126;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        if (*a2 == 1)
        {
          goto LABEL_59;
        }

        if (!*a2)
        {
          *(v8 + 304) = 3;
          goto LABEL_126;
        }

        if (v11 <= 2)
        {
          v24 = VendNewBuffer(a1, v8);
          if (v24)
          {
            goto LABEL_129;
          }

          v11 = *(v8 + 328);
          v12 = *(v8 + 312);
        }

        *v12 = 0;
        v12[2] = *a2;
        v12 += 3;
        v11 -= 3;
        v25 = *(v8 + 320) + 3;
      }

      else
      {
        if (v14 != 3)
        {
          v15 = *a2;
          if (*(v8 + 376))
          {
            v16 = *(v8 + 312);
            if (v16)
            {
              v17 = *(v8 + 320);
              if (v17)
              {
                if ((*(*(a1 + 48) + 352) + v17 - *(v8 + 368)) >= 0x31)
                {
                  v18 = *(v8 + 360);
                  v40 = v17 - v18;
                  H264RemoveEmulation3Byte((v16 + v18), &v40);
                  v19 = v40 + *(v8 + 360);
                  *(v8 + 320) = v19;
                  v12 = (*(v8 + 312) + v19);
                }
              }
            }

            *(v8 + 376) = 0;
          }

          v20 = v15 & 0x1F;
          if (v20 <= 6)
          {
            if (v20 != 1)
            {
              if (v20 != 5)
              {
                if (v20 == 6)
                {
                  *(v8 + 73) = 1;
                }

                goto LABEL_119;
              }

              *(a1 + 536) |= 0x10u;
            }

            if ((*a2 & 0x60) != 0)
            {
              *(a1 + 536) |= 0x100u;
            }

            v32 = *(a1 + 56);
            if (v32 == 2053207651 || v32 == 1700886115)
            {
              if (v11 <= 0x30)
              {
                v24 = VendNewBuffer(a1, v8);
                if (v24)
                {
                  goto LABEL_129;
                }

                v11 = *(v8 + 328);
                v12 = *(v8 + 312);
              }

              *(v8 + 376) = 1;
            }

            goto LABEL_119;
          }

          if ((v20 - 7) < 2)
          {
            *(a1 + 536) |= 2u;
LABEL_119:
            if (v11 <= 4)
            {
              v24 = VendNewBuffer(a1, v8);
              if (v24)
              {
                goto LABEL_129;
              }

              v11 = *(v8 + 328);
              v12 = *(v8 + 312);
            }

            v34 = *(*(a1 + 48) + 352) + *(v8 + 320);
            PesFrameHeaderAddOffset(a1 + 544, v34, v20);
            v35 = *(v8 + 320) + 4;
            *(v8 + 320) = v35;
            if (*(v8 + 376))
            {
              *(v8 + 360) = v35;
              *(v8 + 368) = v34 + 4;
            }

            v12[4] = *a2;
            v12 += 5;
            ++*(v8 + 320);
            v11 -= 5;
            goto LABEL_125;
          }

          if (v20 != 9)
          {
            goto LABEL_119;
          }

          if (*(v8 + 352) || *(v8 + 320))
          {
            H264AddAllocatedBufferToFrame(a1, 0, 1);
            v24 = H264EmitBuffer(a1);
            v11 = 0;
            if (v24)
            {
LABEL_129:
              v36 = v24;
              PesErrorHandling(a1, v24);
              return v36;
            }
          }

          v30 = 3;
          if (*(v8 + 72))
          {
            v30 = 4;
          }

          if (a3 - v13 >= v30 && *(a4 + 24) && *(a4 + 25))
          {
            if (!v39)
            {
              v39 = 1;
              v31 = a4;
LABEL_117:
              v33 = v31[1];
              *(a1 + 480) = *v31;
              *(a1 + 496) = v33;
            }
          }

          else
          {
            v31 = (v8 + 40);
            if (*(v8 + 64))
            {
              goto LABEL_117;
            }
          }

          *(v8 + 64) = 0;
          *(v8 + 66) = 0;
          goto LABEL_119;
        }

        if (!*a2)
        {
          if (!v11)
          {
            v24 = VendNewBuffer(a1, v8);
            if (v24)
            {
              goto LABEL_129;
            }

            v11 = *(v8 + 328);
            v12 = *(v8 + 312);
          }

          *v12++ = 0;
          goto LABEL_85;
        }

        if (*a2 == 1)
        {
LABEL_59:
          v26 = 4;
          goto LABEL_96;
        }

        if (v11 <= 3)
        {
          v24 = VendNewBuffer(a1, v8);
          if (v24)
          {
            goto LABEL_129;
          }

          v11 = *(v8 + 328);
          v12 = *(v8 + 312);
        }

        *v12 = 0;
        v12[2] = 0;
        v12[3] = *a2;
        v12 += 4;
        v11 -= 4;
        v25 = *(v8 + 320) + 4;
      }

LABEL_94:
      *(v8 + 320) = v25;
LABEL_125:
      *(v8 + 304) = 0;
      goto LABEL_126;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_126;
      }

      if (!*a2)
      {
        v26 = 2;
        goto LABEL_96;
      }

      if (v11 <= 1)
      {
        v24 = VendNewBuffer(a1, v8);
        if (v24)
        {
          goto LABEL_129;
        }

        v11 = *(v8 + 328);
        v12 = *(v8 + 312);
      }

      *v12 = 0;
      v12[1] = *a2;
      v12 += 2;
      v11 -= 2;
      v25 = *(v8 + 320) + 2;
      goto LABEL_94;
    }

    if (v13 < 4 || (v27 = *a2, !(*a2 >> 25)) || (v27 & 0xFFFFFF) == 0x10000)
    {
      v29 = *a2;
      if (!*a2)
      {
        v26 = 1;
        goto LABEL_96;
      }

      if (!v11)
      {
        v24 = VendNewBuffer(a1, v8);
        if (v24)
        {
          goto LABEL_129;
        }

        v11 = *(v8 + 328);
        v12 = *(v8 + 312);
        v29 = *a2;
      }

      *v12++ = v29;
LABEL_85:
      --v11;
      ++*(v8 + 320);
      goto LABEL_126;
    }

    if (v11 <= 3)
    {
      v24 = VendNewBuffer(a1, v8);
      if (v24)
      {
        goto LABEL_129;
      }

      v11 = *(v8 + 328);
      v12 = *(v8 + 312);
    }

    *v12 = v27;
    v12 += 4;
    v11 -= 4;
    *(v8 + 320) += 4;
    a2 += 3;
    v13 -= 3;
LABEL_126:
    ++a2;
    --v13;
  }

  while (v13);
  if (v39)
  {
    v36 = 0;
    *(v8 + 64) = 0;
    return v36;
  }

LABEL_132:
  v36 = 0;
  if (*(a4 + 24))
  {
    v37 = *a4;
    *(v8 + 56) = a4[1];
    *(v8 + 40) = v37;
  }

  return v36;
}

uint64_t VendNewBuffer(uint64_t a1, void *a2)
{
  v7 = 0;
  H264AddAllocatedBufferToFrame(a1, &v7, 0);
  v4 = MEMORY[0x19A8CC720](*(*(a1 + 8) + 40), 4096, 589259188, 0);
  a2[39] = v4;
  if (v4)
  {
    v5 = v7;
    a2[40] = v7;
    bzero(v4, v5);
    result = 0;
    a2[41] = 4096;
    a2[45] = 0;
  }

  else
  {
    VendNewBuffer_cold_1(&v8);
    return v8;
  }

  return result;
}

_DWORD *H264RemoveEmulation3Byte(_DWORD *result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 4)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *a2;
    do
    {
      if ((*v4 & 0xFFFFFF) == 0x30000)
      {
        v8 = v4 + 2;
        if (v6)
        {
          v9 = &v8[~v6];
          if (v5)
          {
            v10 = v5;
          }

          else
          {
            v10 = v6;
          }

          result = memmove(v10, v6 + 1, &v8[~v6]);
          v5 = &v9[v10];
          v2 = *a2;
        }

        v4 = (v4 + 3);
        *a2 = --v2;
        v11 = -3;
        v6 = v8;
      }

      else
      {
        v12 = *v4 >> 26;
        v13 = v12 == 0;
        if (v12)
        {
          v11 = -4;
        }

        else
        {
          v11 = -1;
        }

        if (v13)
        {
          v4 = (v4 + 1);
        }

        else
        {
          ++v4;
        }
      }

      v7 += v11;
    }

    while (v7 > 3);
    if (v6)
    {
      if (v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v6;
      }

      return memmove(v14, v6 + 1, v4 + v7 + ~v6);
    }
  }

  return result;
}

void H264AddAllocatedBufferToFrame(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 312);
  if (!v5 || (v6 = *(v4 + 320)) == 0)
  {
    v10 = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!*(v4 + 376))
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = v5 + v6;
  if (!*(v5 + v6 - 1))
  {
    *(v4 + 320) = v6 - 1;
    if (*(v9 - 2))
    {
      v10 = 1;
      --v6;
      goto LABEL_18;
    }

    v11 = -2;
    v10 = 2;
LABEL_17:
    v6 += v11;
    *(v4 + 320) = v6;
    goto LABEL_18;
  }

  if (*(v5 + v6 - 1) == 3 && !*(v9 - 2))
  {
    v10 = 0;
    if (*(v9 - 3))
    {
      goto LABEL_18;
    }

    v11 = -1;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_18:
  v12 = *(v4 + 360);
  v22 = v6 - v12;
  H264RemoveEmulation3Byte((v5 + v12), &v22);
  v6 = v22 + *(v4 + 360);
  *(v4 + 320) = v6;
LABEL_19:
  v13 = *(v4 + 348);
  if (*(v4 + 344) >= v13)
  {
    v14 = v13 + 4;
    *(v4 + 348) = v14;
    *(v4 + 336) = malloc_type_zone_realloc(gFigMPEG2ParserZone, *(v4 + 336), 24 * v14, 0x1010040113C0ABBuLL);
    v6 = *(v4 + 320);
  }

  if (a3 && v6 <= 0x800)
  {
    v15 = MEMORY[0x19A8CC720](*(*(a1 + 8) + 40));
    memcpy(v15, *(v4 + 312), *(v4 + 320));
    v17 = *(v4 + 336) + 24 * *(v4 + 344);
    *v17 = v15;
    v16 = (v4 + 320);
    v18 = vld1q_dup_f64(v16);
    *(v17 + 8) = v18;
    CFAllocatorDeallocate(*(*(a1 + 8) + 40), *(v4 + 312));
    v6 = *(v4 + 320);
    v19 = *(v4 + 344);
  }

  else
  {
    v19 = *(v4 + 344);
    v20 = *(v4 + 328);
    v21 = (*(v4 + 336) + 24 * v19);
    *v21 = *(v4 + 312);
    v21[1] = v6;
    v21[2] = v20;
  }

  *(v4 + 352) += v6;
  *(v4 + 344) = v19 + 1;
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v10;
  }
}

CMTime *H264CalculateFrameRate(CMTime *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  memset(&v12, 0, sizeof(v12));
  if (*(a3 + 49))
  {
    v5 = 32;
    if (!*(a3 + 50))
    {
      v5 = 24;
    }
  }

  else
  {
    if (!*(a3 + 50))
    {
      goto LABEL_14;
    }

    v5 = 32;
  }

  result = CMTimeMake(&v12, *(a3 + v5), 90000);
  v6 = (a2 + 260);
  if (*(a2 + 272))
  {
    memset(&v11, 0, sizeof(v11));
    lhs = v12;
    *&v9.value = *v6;
    v9.epoch = *(a2 + 276);
    result = CMTimeSubtract(&v11, &lhs, &v9);
    value = v11.value;
    if ((v11.value - 1) > 0x2BF1F)
    {
      *(a2 + 288) = 0;
      *(a2 + 296) = 0;
    }

    else
    {
      *(a2 + 288) += v11.value;
      if (!*(a2 + 256))
      {
        v8 = value / *(a2 + 296);
        LODWORD(v4[33].epoch) = v8;
        v4[33].flags = 90000;
        if (v8)
        {
          *(a2 + 256) = 1;
        }
      }
    }
  }

  *v6 = *&v12.value;
  *(a2 + 276) = v12.epoch;
LABEL_14:
  ++*(a2 + 296);
  return result;
}

uint64_t figImageQueueTable_RegisterFigImageQueueTable()
{
  result = _CFRuntimeRegisterClass();
  sFigImageQueueTableID = result;
  return result;
}

uint64_t FigImageQueueTableCreateWithOptions(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      MEMORY[0x19A8D3660](&FigImageQueueTableGetTypeID_sRegisterFigImageQueueTableOnce, figImageQueueTable_RegisterFigImageQueueTable);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v8 = Instance;
        v9 = FigSimpleMutexCreate();
        if (v9)
        {
          v8[2] = v9;
          v8[3] = v6;
          if (a2)
          {
            StringValue = FigCFDictionaryGetStringValue();
            v8[5] = StringValue;
            if (StringValue)
            {
              CFRetain(StringValue);
            }
          }

          v11 = 0;
          *a3 = v8;
          goto LABEL_9;
        }

        FigImageQueueTableCreateWithOptions_cold_1(v8, &v13);
      }

      else
      {
        FigImageQueueTableCreateWithOptions_cold_2(&v13);
      }

      v11 = v13;
      CFRelease(v6);
      return v11;
    }

    FigImageQueueTableCreateWithOptions_cold_3(&v13);
  }

  else
  {
    FigImageQueueTableCreateWithOptions_cold_4(&v13);
  }

  v11 = v13;
LABEL_9:
  FigSimpleMutexDestroy();
  return v11;
}

uint64_t FigImageQueueTableUpdateToMatchOutputsArray(uint64_t a1, const __CFArray *a2, void *a3, void (*a4)(void *, uint64_t), void (*a5)(const void *, uint64_t), uint64_t a6)
{
  if (!a1 || !a2)
  {
    FigImageQueueTableUpdateToMatchOutputsArray_cold_2(&value);
    return value;
  }

  if (*(a1 + 40))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
      FigImageQueueTableUpdateToMatchOutputsArray_cold_1(&value);
      return value;
    }
  }

  else
  {
    Mutable = 0;
  }

  v14 = FigSimpleMutexLock();
  if (v14)
  {
    v16 = v14;
    if (Mutable)
    {
      goto LABEL_52;
    }

    return v16;
  }

  context = a3;
  if (CFArrayGetCount(a2) < 1)
  {
    v16 = 0;
LABEL_39:
    Count = CFDictionaryGetCount(*(a1 + 24));
    v30 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(a1 + 24), v30, 0);
    if (Count >= 1)
    {
      v31 = v30;
      do
      {
        v36.length = CFArrayGetCount(a2);
        v36.location = 0;
        if (!CFArrayContainsValue(a2, v36, *v31))
        {
          if (a5)
          {
            v32 = CFDictionaryGetValue(*(a1 + 24), *v31);
            a5(v32, a6);
          }

          CFDictionaryRemoveValue(*(a1 + 24), *v31);
        }

        ++v31;
        --Count;
      }

      while (Count);
    }

    if (context)
    {
      CFDictionaryApplyFunction(*(a1 + 24), figImageQueueTable_reconnectApply2, context);
    }

    goto LABEL_51;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
    value = CFDictionaryGetValue(*(a1 + 24), ValueAtIndex);
    if (!value)
    {
      break;
    }

LABEL_36:
    if (CFArrayGetCount(a2) <= ++v15)
    {
      goto LABEL_39;
    }
  }

  v18 = CFGetTypeID(ValueAtIndex);
  if (v18 == FigVisualContextGetTypeID(v18, v19))
  {
    FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &value);
    if (v20)
    {
      goto LABEL_49;
    }

    v21 = value;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v22)
    {
      v16 = v22(v21, ValueAtIndex, context);
      if (!a4)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v16 = 4294954514;
      if (!a4)
      {
LABEL_34:
        CFDictionarySetValue(*(a1 + 24), ValueAtIndex, value);
        if (value)
        {
          CFRelease(value);
        }

        goto LABEL_36;
      }
    }

LABEL_33:
    a4(value, a6);
    goto LABEL_34;
  }

  v23 = CFGetTypeID(ValueAtIndex);
  if (v23 == CAImageQueueGetTypeID())
  {
    FigImageQueueCreateForCoreAnimationWithOptions(0, ValueAtIndex, Mutable, &value);
    v16 = v24;
    if (v24)
    {
      goto LABEL_50;
    }

    goto LABEL_32;
  }

  v25 = CFGetTypeID(ValueAtIndex);
  if (v25 == FigVideoTargetGetTypeID())
  {
    v26 = CFGetAllocator(a1);
    v27 = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*(a1 + 32))
    {
      FigCFDictionarySetUInt32();
      FigCFDictionarySetUInt32();
    }

    if (*(a1 + 40))
    {
      FigCFDictionarySetValue();
    }

    v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v28)
    {
      v16 = v28(ValueAtIndex, v27, &value);
      if (!v27)
      {
LABEL_31:
        if (v16)
        {
          goto LABEL_50;
        }

LABEL_32:
        if (!a4)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 4294954514;
      if (!v27)
      {
        goto LABEL_31;
      }
    }

    CFRelease(v27);
    goto LABEL_31;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, -256758888, -256566056);
LABEL_49:
  v16 = v20;
LABEL_50:
  v30 = 0;
LABEL_51:
  free(v30);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
LABEL_52:
    CFRelease(Mutable);
  }

  return v16;
}

uint64_t figImageQueueTable_setTimebaseApply(int a1, uint64_t a2, CMTimebaseRef timebase)
{
  Rate = CMTimebaseGetRate(timebase);
  v13 = Rate;
  figImageQueueTable_respondToTimebaseRateChangeApply(v6, a2, &v13);
  FigImageQueueGetFigBaseObject();
  v8 = v7;
  VTable = CMBaseObjectGetVTable();
  v11 = *(VTable + 8);
  result = VTable + 8;
  v12 = *(v11 + 56);
  if (v12)
  {

    return v12(v8, @"FigImageQueueProperty_Timebase", timebase);
  }

  return result;
}

void figImageQueueTable_setImageQueueFlagsAndMaskApply(const void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CAImageQueueGetTypeID())
  {

    CAImageQueueSetFlags();
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == FigVideoTargetGetTypeID())
    {
      cf = 0;
      FigImageQueueGetFigBaseObject();
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(v7, @"CAImageQueue", *MEMORY[0x1E695E480], &cf);
        if (cf)
        {
          CAImageQueueSetFlags();
          CFRelease(cf);
        }
      }
    }
  }
}

uint64_t figImageQueueTable_setImageQueueProperty(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  FigImageQueueGetFigBaseObject();
  v6 = v5;
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {

    return v10(v6, v3, v4);
  }

  return result;
}

uint64_t figImageQueueTable_respondToTimebaseRateChangeApply(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = *a3;
  v5 = *a3 != 0.0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v6(a2, v5);
  }

  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 48);
  if (v11)
  {
    v8.n128_u32[0] = v4;

    return v11(a2, v8);
  }

  return result;
}

uint64_t FigImageQueueTableCopyFigImageQueueArray(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      *a2 = FigCFDictionaryCopyArrayOfValues();
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      FigImageQueueTableCopyFigImageQueueArray_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueArray_cold_2(&v5);
    return v5;
  }
}

const void *FigImageQueueTableCopyFigImageQueueForVisualContext(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueForVisualContext_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), vars0);
    return 0;
  }

  return v11;
}

const void *FigImageQueueTableCopyFigImageQueueForVideoTarget(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueForVideoTarget_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), vars0);
    return 0;
  }

  return v11;
}

uint64_t FigImageQueueTableCopyVideoTargets(uint64_t a1, __CFArray **a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      Count = FigCFDictionaryGetCount();
      v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 24), v5, 0);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        v7 = v5;
        do
        {
          if (*v7)
          {
            v8 = CFGetTypeID(*v7);
            if (v8 == FigVideoTargetGetTypeID())
            {
              CFArrayAppendValue(Mutable, *v7);
            }
          }

          ++v7;
          --Count;
        }

        while (Count);
      }

      FigSimpleMutexUnlock();
      v9 = 0;
      *a2 = Mutable;
    }

    else
    {
      FigImageQueueTableCopyVideoTargets_cold_1(&v11);
      v5 = 0;
      v9 = v11;
    }
  }

  else
  {
    FigImageQueueTableCopyVideoTargets_cold_2(&v12);
    v5 = 0;
    v9 = v12;
  }

  free(v5);
  return v9;
}

const void *FigImageQueueTableCopyFigImageQueueForCAImageQueue(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueForCAImageQueue_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14), vars0);
    return 0;
  }

  return v11;
}

uint64_t FigImageQueueTableWasFirstImageEnqueued(uint64_t a1)
{
  theArray = 0;
  if (!a1)
  {
    return 0;
  }

  FigImageQueueTableCopyFigImageQueueArray(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    v2 = Count;
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v3);
      cf = 0;
      FigImageQueueGetFigBaseObject();
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(v7, @"FigImageQueueProperty_FirstImageEnqueued", v4, &cf);
      }

      v9 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v5 == v9)
      {
        break;
      }

      if (v2 == ++v3)
      {
        goto LABEL_11;
      }
    }

    v10 = 1;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

double figImageQueueTable_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figImageQueueTable_Finalize(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EAF172A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t figImageQueueTable_reconnectApply2(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  result = FigVisualContextGetTypeID(v6, v7);
  if (v6 == result)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v9(a2, 0, 0);
    }

    VTable = CMBaseObjectGetVTable();
    v11 = *(VTable + 16);
    result = VTable + 16;
    v12 = *(v11 + 8);
    if (v12)
    {

      return v12(a2, a1, a3);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_97(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t RegisterMovieSampleGroupType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t MovieSampleGroupCreate(const __CFAllocator *a1, unint64_t a2, unsigned int a3, uint64_t *a4)
{
  if (a2)
  {
    if (a4)
    {
      if (_MergedGlobals_63 != -1)
      {
        MovieSampleGroupCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v9 = Instance;
        *(Instance + 128) = a2;
        *(Instance + 136) = a3;
        GroupingTypeKey = MovieSampleGroupCreateGroupingTypeKey(a1, a2, a3);
        result = 0;
        *(v9 + 120) = GroupingTypeKey;
        *a4 = v9;
      }

      else
      {
        MovieSampleGroupCreate_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      MovieSampleGroupCreate_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    MovieSampleGroupCreate_cold_4(&v14);
    return v14;
  }

  return result;
}

CFStringRef MovieSampleGroupCreateGroupingTypeKey(const __CFAllocator *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return CFStringCreateWithFormat(a1, 0, @"%c%c%c%c:%08X", BYTE3(a2), BYTE2(a2), BYTE1(a2), a2, HIDWORD(a2));
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", BYTE3(a2), BYTE2(a2), BYTE1(a2), a2);
  }
}

uint64_t MovieSampleGroupCreateCompact(const __CFAllocator *a1, unint64_t a2, unsigned int a3, CFTypeRef *a4)
{
  cf = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = MovieSampleGroupCreate(a1, a2, a3, &cf);
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    LOBYTE(v11) = 0;
    HIDWORD(v10) = 4;
    MovieSampleGroupSet_csgp(cf, &v9, 0, 0);
    v7 = v6;
    if (!v6)
    {
      *a4 = cf;
      return v7;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t MovieSampleGroupCreateForFragment(const __CFAllocator *a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a2)
  {
    MovieSampleGroupCreateForFragment_cold_4(&v16);
    return v16;
  }

  if (!a5)
  {
    MovieSampleGroupCreateForFragment_cold_3(&v16);
    return v16;
  }

  if (a4)
  {
    v7 = *(a4 + 128);
    v9 = a2 == v7 && a3 == *(a4 + 136);
    if (!v9 || a3 == 0)
    {
      if (!v9)
      {
LABEL_24:
        MovieSampleGroupCreateForFragment_cold_1(&v16);
        return v16;
      }
    }

    else if ((v7 ^ a2) >> 32)
    {
      goto LABEL_24;
    }

    if (*(a4 + 112))
    {
      MovieSampleGroupCreateForFragment_cold_2(&v16);
      return v16;
    }
  }

  v11 = MovieSampleGroupCreate(a1, a2, a3, &cf);
  v12 = cf;
  if (v11)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(cf + 140) = 1;
    if (a4)
    {
      v13 = CFRetain(a4);
      v12 = cf;
    }

    else
    {
      v13 = 0;
    }

    v11 = 0;
    v12[14] = v13;
    *a5 = v12;
  }

  return v11;
}

uint64_t MovieSampleGroupCreateCompactForFragment(const __CFAllocator *a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = MovieSampleGroupCreateForFragment(a1, a2, a3, a4, &cf);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    LOBYTE(v12) = 1;
    HIDWORD(v11) = 4;
    MovieSampleGroupSet_csgp(cf, &v10, 0, 0);
    v8 = v7;
    if (!v7)
    {
      *a5 = cf;
      return v8;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t MovieSampleGroupSetDescriptionArray(uint64_t a1, _DWORD *cf)
{
  if (!a1)
  {
    MovieSampleGroupSetDescriptionArray_cold_4(&v5);
    return v5;
  }

  if (!cf)
  {
    MovieSampleGroupSetDescriptionArray_cold_3(&v5);
    return v5;
  }

  if (*(a1 + 16))
  {
    MovieSampleGroupSetDescriptionArray_cold_1(&v5);
    return v5;
  }

  if (*(a1 + 128) != cf[9])
  {
    MovieSampleGroupSetDescriptionArray_cold_2(&v5);
    return v5;
  }

  v3 = CFRetain(cf);
  result = 0;
  *(a1 + 16) = v3;
  return result;
}

void MovieSampleGroupSet_sbgp(uint64_t a1, uint64_t a2, CMBlockBufferRef theBuffer)
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      MovieSampleGroupSet_sbgp_cold_1(&v11);
    }

    else if (*(a1 + 72))
    {
      MovieSampleGroupSet_sbgp_cold_2(&v11);
    }

    else if (theBuffer)
    {
      v5 = a2;
      if (CMBlockBufferGetDataLength(theBuffer) == 8 * a2)
      {
        *(a1 + 28) = v5;
        v6 = *(a1 + 32);
        *(a1 + 32) = theBuffer;
        CFRetain(theBuffer);
        if (v6)
        {
          CFRelease(v6);
        }

        *(a1 + 24) = 0;
        if (v5 >= 1)
        {
          for (i = 0; v5 != i; ++i)
          {
            v10 = 0;
            MovieSampleGroupGetEntry(a1, i, &v10, 0);
            if (v8 || !v10)
            {
              break;
            }

            if (v10 <= 0)
            {
              MovieSampleGroupSet_sbgp_cold_5(&v11);
              return;
            }

            v9 = *(a1 + 24) + v10;
            if (v9 < 0)
            {
              MovieSampleGroupSet_sbgp_cold_4(&v11);
              return;
            }

            *(a1 + 24) = v9;
          }
        }
      }

      else
      {
        MovieSampleGroupSet_sbgp_cold_3(&v11);
      }
    }

    else
    {
      MovieSampleGroupSet_sbgp_cold_6(&v11);
    }
  }

  else
  {
    MovieSampleGroupSet_sbgp_cold_7(&v11);
  }
}

uint64_t MovieSampleGroupCreateDescriptionArrayDeepCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  cf = 0;
  v6 = MovieSampleGroupDescriptionArrayCreate(a1, *(a2 + 36), &cf);
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    Count = CFArrayGetCount(*(a2 + 16));
    if (Count < 1)
    {
LABEL_6:
      v13 = 0;
      v14 = cf;
      *(cf + 3) = *(a2 + 24);
      v14[8] = *(a2 + 32);
      *a3 = v14;
      return v13;
    }

    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), v9);
      Copy = CFDataCreateCopy(a1, ValueAtIndex);
      if (!Copy)
      {
        break;
      }

      v12 = Copy;
      CFArrayAppendValue(*(cf + 2), Copy);
      CFRelease(v12);
      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }

    MovieSampleGroupCreateDescriptionArrayDeepCopy_cold_1(&v17);
    v13 = v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

void MovieSampleGroupGetEntry(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v9 = 0;
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if (a2 < 0)
      {
        MovieSampleGroupGetEntry_cold_1(v11);
      }

      else if (CMBlockBufferCopyDataBytes(v4, 8 * a2, 8uLL, &v9))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
      }

      else
      {
        if (a3)
        {
          *a3 = bswap32(v9);
        }

        if (a4)
        {
          v7 = bswap32(HIDWORD(v9));
          v8 = (v7 & 0x10000) >> 16;
          if ((v7 & 0x10000) != 0)
          {
            v7 = v7;
          }

          *(a4 + 4) = v8;
          *a4 = v7;
        }
      }
    }

    else
    {
      MovieSampleGroupGetEntry_cold_2(v11);
    }
  }

  else
  {
    MovieSampleGroupGetEntry_cold_3(v11);
  }
}

uint64_t MovieSampleGroupCollectionCreate(const __CFAllocator *a1, uint64_t *a2)
{
  if (a2)
  {
    if (qword_1ED4CAC10 != -1)
    {
      MovieSampleGroupCollectionCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      result = 0;
      *(v5 + 16) = Mutable;
      *a2 = v5;
    }

    else
    {
      MovieSampleGroupCollectionCreate_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleGroupCollectionCreate_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t MovieSampleGroupCollectionAddSampleGroup(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (!a1)
  {
    MovieSampleGroupCollectionAddSampleGroup_cold_3(&v9);
    return v9;
  }

  if (!a2)
  {
    MovieSampleGroupCollectionAddSampleGroup_cold_2(&v9);
    return v9;
  }

  context = *(a2 + 128);
  v7 = *(a2 + 136);
  v4 = *(a1 + 16);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  CFArrayApplyFunction(v4, v10, DuplicationScanApplierFunction, &context);
  if (v8)
  {
    MovieSampleGroupCollectionAddSampleGroup_cold_1(&v9);
    return v9;
  }

  CFArrayAppendValue(*(a1 + 16), a2);
  return 0;
}

uint64_t MovieSampleGroupGetInfo(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, BOOL *a5)
{
  if (a1)
  {
    v8 = *(a1 + 72);
    if (a2)
    {
      v9 = *(a1 + 128);
      *(a2 + 8) = *(a1 + 136);
      *a2 = v9;
    }

    if (a3)
    {
      MovieSampleGroupDescriptionArrayCopyInfo(*(a1 + 16), 0, 0, a3, 0, 0);
    }

    if (a4)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(a1 + 28);
      }

      *a4 = v10;
    }

    result = 0;
    if (a5)
    {
      *a5 = v8 != 0;
    }
  }

  else
  {
    MovieSampleGroupGetInfo_cold_1(&v12);
    return v12;
  }

  return result;
}

uint64_t DuplicationScanApplierFunction(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v10 = 0;
  result = MovieSampleGroupGetInfo(a1, &v10, 0, 0, 0);
  v4 = *a2;
  v5 = *(a2 + 2);
  v7 = v10 == *a2 && v11 == v5;
  if (!v7 || v11 == 0)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_19:
    ++*(a2 + 3);
    return result;
  }

  if (!((v4 ^ v10) >> 32))
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v10 == v4 && v11 != v5)
  {
    goto LABEL_19;
  }

  return result;
}

BOOL MovieSampleGroupCollectionHasSampleGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  context[0] = a2;
  context[1] = a3;
  if (a1)
  {
    v3 = *(a1 + 16);
    v7.length = CFArrayGetCount(v3);
    v7.location = 0;
    CFArrayApplyFunction(v3, v7, SampleGroupTypeSpecLookupApplierFunction, context);
    return v6 != 0;
  }

  else
  {
    MovieSampleGroupCollectionHasSampleGroup_cold_1();
    return 0;
  }
}

uint64_t SampleGroupTypeSpecLookupApplierFunction(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  result = MovieSampleGroupGetInfo(a1, &v8, 0, 0, 0);
  v6 = v8 == *a2 && v9 == *(a2 + 8);
  if (!v6 || v9 == 0)
  {
    if (!v6)
    {
      return result;
    }
  }

  else if ((*a2 ^ v8) >> 32)
  {
    return result;
  }

  *(a2 + 16) = a1;
  return result;
}

uint64_t MovieSampleGroupCollectionRemoveAllGroupsWithGroupingType(uint64_t a1, int a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v6);
        v10 = 0;
        v9 = 0;
        MovieSampleGroupGetInfo(ValueAtIndex, &v9, 0, 0, 0);
        if (v9 == a2)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 16), v6);
          --v5;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 < v5);
    }
  }

  else
  {
    MovieSampleGroupCollectionRemoveAllGroupsWithGroupingType_cold_1();
  }

  return 0;
}

CFIndex MovieSampleGroupCollectionGetCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 16));
  }

  return result;
}

CFTypeRef MovieSampleGroupCollectionLookupAndRetainSampleGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  cf = 0;
  context[0] = a2;
  context[1] = a3;
  if (a1)
  {
    v3 = *(a1 + 16);
    v7.length = CFArrayGetCount(v3);
    v7.location = 0;
    CFArrayApplyFunction(v3, v7, SampleGroupTypeSpecLookupApplierFunction, context);
    result = cf;
    if (cf)
    {
      return CFRetain(cf);
    }
  }

  else
  {
    MovieSampleGroupCollectionLookupAndRetainSampleGroup_cold_1();
    return 0;
  }

  return result;
}

CFArrayRef MovieSampleGroupCollectionCopySampleGroupArray(const __CFAllocator *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);

    return CFArrayCreateCopy(a1, v3);
  }

  else
  {
    MovieSampleGroupCollectionCopySampleGroupArray_cold_1();
    return 0;
  }
}

void MovieSampleGroupCollectionApplyFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 16);
      v5.length = CFArrayGetCount(v3);
      v5.location = 0;
      CFArrayApplyFunction(v3, v5, ClientApplicationApplierFunction, v4);
    }

    else
    {
      MovieSampleGroupCollectionApplyFunction_cold_1();
    }
  }

  else
  {
    MovieSampleGroupCollectionApplyFunction_cold_2();
  }
}

uint64_t MovieSampleGroupDescriptionArrayAppendDescriptionUniquely(uint64_t a1, size_t a2, const void *a3, _DWORD *a4)
{
  MatchingDescriptionIndexValue = FindMatchingDescriptionIndexValue(a1, a2, a3);
  if (MatchingDescriptionIndexValue == -1)
  {

    return MovieSampleGroupDescriptionArrayAppendNewDescription(a1, a2, a3, a4);
  }

  else
  {
    if (a4)
    {
      *a4 = MatchingDescriptionIndexValue;
    }

    return 0;
  }
}

uint64_t FindMatchingDescriptionIndexValue(uint64_t a1, size_t a2, const void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = Count & 0x7FFFFFFF;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
    Length = CFDataGetLength(ValueAtIndex);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    if (Length == a2 && (!a2 || !memcmp(BytePtr, a3, a2)))
    {
      break;
    }

    if (v9 == ++v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (v8 + 1);
}

uint64_t MovieSampleGroupDescriptionArrayAppendNewDescription(uint64_t a1, CFIndex a2, const UInt8 *a3, _DWORD *a4)
{
  v8 = *(a1 + 16);
  v9 = a2;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    v9 = a2;
    if (Count)
    {
      if (*(a1 + 24) == a2)
      {
        goto LABEL_6;
      }

      v9 = 0;
    }
  }

  *(a1 + 24) = v9;
LABEL_6:
  v11 = CFGetAllocator(a1);
  v12 = CFDataCreate(v11, a3, a2);
  if (v12)
  {
    v13 = v12;
    CFArrayAppendValue(*(a1 + 16), v12);
    if (a4)
    {
      *a4 = CFArrayGetCount(*(a1 + 16));
    }

    CFRelease(v13);
    return 0;
  }

  else
  {
    MovieSampleGroupDescriptionArrayAppendNewDescription_cold_1(&v15);
    return v15;
  }
}

uint64_t MovieSampleGroupDescriptionArrayAppendParsedDescription(uint64_t a1, CFIndex a2, const UInt8 *a3)
{
  if (a1)
  {
    if ((a2 == 0) == (a3 == 0))
    {

      return MovieSampleGroupDescriptionArrayAppendNewDescription(a1, a2, a3, 0);
    }

    else
    {
      MovieSampleGroupDescriptionArrayAppendParsedDescription_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayAppendParsedDescription_cold_2(&v5);
    return v5;
  }
}

uint64_t MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  v4 = a2;
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count < v4)
  {
LABEL_7:
    MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex_cold_1(&v7);
    return v7;
  }

  else
  {
    result = 0;
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t MovieSampleGroupDescriptionArrayCopyInfo(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 36);
    }

    if (a3)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *a3 = v11;
    }

    if (a4)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        LODWORD(v12) = CFArrayGetCount(v12);
      }

      *a4 = v12;
    }

    if (a5)
    {
      *a5 = *(a1 + 24);
    }

    result = 0;
    if (a6)
    {
      *a6 = *(a1 + 32);
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayCopyInfo_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t MovieSampleGroupDescriptionArrayCopyDescriptionForIndex(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = a2 - 1;
      if (a2 < 1)
      {
        goto LABEL_12;
      }

      v6 = a2;
      Count = *(a1 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count < v6)
      {
LABEL_12:
        MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_1(&v11);
        return v11;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v4);
        if (ValueAtIndex)
        {
          v9 = CFRetain(ValueAtIndex);
        }

        else
        {
          v9 = 0;
        }

        result = 0;
        *a3 = v9;
      }
    }

    else
    {
      MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t MovieSampleGroupDescriptionArrayCreate(const __CFAllocator *a1, int a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (qword_1ED4CAC20 != -1)
      {
        MovieSampleGroupDescriptionArrayCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v7 = Instance;
        Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        result = 0;
        *(v7 + 16) = Mutable;
        *(v7 + 36) = a2;
        *a3 = v7;
      }

      else
      {
        MovieSampleGroupDescriptionArrayCreate_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      MovieSampleGroupDescriptionArrayCreate_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayCreate_cold_4(&v12);
    return v12;
  }

  return result;
}

void MovieSampleGroupGetPatternEntry(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v7 = 0;
  if (a1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      if (a2 < 0)
      {
        MovieSampleGroupGetPatternEntry_cold_1(v9);
      }

      else if (CMBlockBufferCopyDataBytes(v4, 8 * a2, 8uLL, &v7))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9[1]);
      }

      else
      {
        if (a3)
        {
          *a3 = bswap32(v7);
        }

        if (a4)
        {
          *a4 = bswap32(HIDWORD(v7));
        }
      }
    }

    else
    {
      MovieSampleGroupGetPatternEntry_cold_2(v9);
    }
  }

  else
  {
    MovieSampleGroupGetPatternEntry_cold_3(v9);
  }
}

uint64_t MovieSampleGroupGetSampleToGroupTable(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, v3);
  return 0;
}

uint64_t MovieSampleGroupGetNumSampleToGroupTableEntries(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 28);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v1, v3);
  return 0;
}

uint64_t MovieSampleGroupCopyCompactAtomComponents(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      if (a2)
      {
        v7 = *(a1 + 48);
        *(a2 + 16) = *(a1 + 64);
        *a2 = v7;
      }

      if (a3)
      {
        v8 = *(a1 + 72);
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        *a3 = v8;
      }

      if (a4)
      {
        v9 = *(a1 + 80);
        if (v9)
        {
          v10 = CFRetain(v9);
        }

        else
        {
          v10 = 0;
        }

        result = 0;
        *a4 = v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      MovieSampleGroupCopyCompactAtomComponents_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    MovieSampleGroupCopyCompactAtomComponents_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t MovieSampleGroupCopyDescriptionForIndex(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a1)
  {
    if (a3)
    {
      if (!a2)
      {
        goto LABEL_9;
      }

      if (!*(a1 + 140) || (a2 & 0xFF00000000) != 0)
      {
        v4 = MovieSampleGroupDescriptionArrayCopyDescriptionForIndex(*(a1 + 16), a2, &cf);
        if (v4)
        {
          v5 = v4;
          goto LABEL_14;
        }

LABEL_9:
        v5 = 0;
        *a3 = cf;
        return v5;
      }

      if (!MovieSampleGroupCopyDescriptionForIndex(*(a1 + 112), a2, &cf))
      {
        goto LABEL_9;
      }

      MovieSampleGroupCopyDescriptionForIndex_cold_1(&v8);
    }

    else
    {
      MovieSampleGroupCopyDescriptionForIndex_cold_2(&v8);
    }
  }

  else
  {
    MovieSampleGroupCopyDescriptionForIndex_cold_3(&v8);
  }

  v5 = v8;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t MovieSampleGroupCopyGroupTypeKeyString(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 120);
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
      MovieSampleGroupCopyGroupTypeKeyString_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleGroupCopyGroupTypeKeyString_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t GetCompactDescriptionIndexForSample(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      destination = 0;
      CMBlockBufferCopyDataBytes(*(a1 + 72), v6, 8uLL, &destination);
      v10 = bswap32(destination);
      v11 = bswap32(HIDWORD(destination)) + v9;
      if (a2 >= v9 && v11 > a2)
      {
        break;
      }

      v8 += v10;
      ++v7;
      v6 += 8;
      v9 = v11;
      if (v7 >= *(a1 + 48))
      {
        goto LABEL_6;
      }
    }

    *a3 = (*(a1 + 88))(a1, (a2 - v9) % v10 + v8);
    return 1;
  }

  else
  {
LABEL_6:
    result = 0;
    *(a3 + 4) = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t MovieSampleGroupAccessorCreate(void *a1, uint64_t *a2)
{
  CFGetAllocator(a1);
  if (qword_1ED4CAC30 != -1)
  {
    MovieSampleGroupAccessorCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    MovieSampleGroupAccessorCreate_cold_2(&v11);
    return v11;
  }

  v5 = Instance;
  if (!a1)
  {
    goto LABEL_9;
  }

  v6 = CFRetain(a1);
  *(v5 + 16) = v6;
  v7 = a1[9];
  *(v5 + 24) = 0;
  if (!v7)
  {
    *(v5 + 28) = 1;
    *(v5 + 48) = RegularSampleGroupAccessorGetDescriptionIndexForSample;
    goto LABEL_9;
  }

  *(v5 + 36) = 1;
  *(v5 + 48) = CompactSampleGroupAccessorGetDescriptionIndexForSample;
  MovieSampleGroupGetPatternEntry(v6, 0, (v5 + 28), (v5 + 32));
  if (!v8)
  {
LABEL_9:
    v9 = 0;
    *a2 = v5;
    return v9;
  }

  v9 = v8;
  CFRelease(v5);
  return v9;
}

uint64_t MovieSampleGroupAccessorCopy(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    CFGetAllocator(a1);
    if (qword_1ED4CAC30 != -1)
    {
      MovieSampleGroupAccessorCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      v6 = *(a1 + 16);
      if (v6)
      {
        *(v5 + 16) = CFRetain(v6);
        v7 = *(a1 + 24);
        *(v5 + 40) = *(a1 + 40);
        *(v5 + 24) = v7;
        *(v5 + 48) = *(a1 + 48);
      }

      result = 0;
      *a2 = v5;
    }

    else
    {
      MovieSampleGroupAccessorCopy_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    MovieSampleGroupAccessorCopy_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t MovieSampleGroupAccessorCopyDescriptionForSample(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  cf = 0;
  if (!*(a1 + 16))
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = (*(a1 + 48))(a1, a2, &v9);
  if (!v9)
  {
    v6 = v5;
    MovieSampleGroupDescriptionArrayCopyInfo(*(*(a1 + 16) + 16), 0, 0, 0, 0, &v9);
    if (!v9)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  v6 = MovieSampleGroupCopyDescriptionForIndex(*(a1 + 16), v9, &cf);
  v7 = cf;
  if (!v6)
  {
LABEL_8:
    *a3 = v7;
    return v6;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void MovieSampleGroupAppendSamplesWithDescriptionIndex(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    MovieSampleGroupAppendSamplesWithDescriptionIndex_cold_2(&v16);
    return;
  }

  v3 = a2;
  if (!a2)
  {
    MovieSampleGroupAppendSamplesWithDescriptionIndex_cold_1(&v16);
    return;
  }

  if (a1[9])
  {
    v15 = 0;
    if (MakeReadyToWrite_csgp(a1))
    {
      return;
    }

    v6 = a1[6].i32[0];
    if (!v6)
    {
      goto LABEL_20;
    }

    v14 = 0;
    v7 = 8 * (v6 - 1);
    MovieSampleGroupGetPatternEntry(a1, v6 - 1, &v15 + 1, &v15);
    v8 = HIDWORD(v15);
    if (HIDWORD(v15) == 1)
    {
      v16 = 0;
      GetCompactDescriptionIndexForSample(a1, a1[6].u32[1], &v16);
      if (v16 == a3 && BYTE4(v16) == BYTE4(a3))
      {
        v14 = _byteswap_uint64(__PAIR64__(HIDWORD(v15), v15 + v3));
        v9 = a1[12];
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v10)
        {
          if (!v10(*&v9, 8, v7, &v14, 0))
          {
            a1[6].i32[1] += v3;
          }
        }

        return;
      }

      v8 = HIDWORD(v15);
    }

    if (v3 == 1 && v8 == v15)
    {
      LODWORD(v14) = bswap32(v8 + 1);
      HIDWORD(v14) = v14;
      v11 = a1[12];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v12 || v12(*&v11, 8, v7, &v14, 0))
      {
        return;
      }

      ++a1[6].i32[1];
    }

    else
    {
LABEL_20:
      AppendNewPattern(a1, 1u, v3);
      if (v13)
      {
        return;
      }
    }

    AppendDescriptionIndexToCompactGroup(a1, a3);
    return;
  }

  AppendSamplesWithDescriptionIndexToRegularGroup(a1, a2, a3);
}

uint64_t MovieSampleGroupIntegrateSampleGroup(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_6(&theData);
    return theData;
  }

  if (!a3)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_5(&theData);
    return theData;
  }

  if (a2 == a3)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_4(&theData);
    return theData;
  }

  if (*(a3 + 72))
  {
    if (!*(a2 + 32))
    {
      theData = 0;
      if (*(a3 + 48))
      {
        if (*(a3 + 52) + *(a2 + 52) > a1)
        {
          MovieSampleGroupIntegrateSampleGroup_cold_2(&v24);
          v15 = v24;
LABEL_48:
          if (theData)
          {
            CFRelease(theData);
          }

          return v15;
        }

        v6 = MakeReadyToWrite_csgp(a2);
        if (!v6)
        {
          v7 = *(a3 + 52) + *(a2 + 52);
          if (a1 <= v7)
          {
LABEL_10:
            if (!*(a3 + 48))
            {
LABEL_29:
              v15 = 0;
              goto LABEL_48;
            }

            v8 = 0;
            v9 = 0;
            while (1)
            {
              v23 = 0;
              v24 = 0;
              MovieSampleGroupGetPatternEntry(a3, v9, &v23 + 1, &v23);
              if (v6)
              {
                goto LABEL_47;
              }

              v10.n128_u64[0] = AppendNewPattern(a2, HIDWORD(v23), v23);
              if (v6)
              {
                goto LABEL_47;
              }

              if (SHIDWORD(v23) >= 1)
              {
                v11 = 0;
                do
                {
                  v12 = (*(a3 + 88))(a3, (v8 + v11), v10);
                  if (v12 && ((v12 & 0xFF00000000) != 0 || *(a3 + 112) != a2))
                  {
                    v6 = MovieSampleGroupCopyDescriptionForIndex(a3, v12, &theData);
                    if (v6)
                    {
                      goto LABEL_47;
                    }

                    if (theData)
                    {
                      Length = CFDataGetLength(theData);
                      BytePtr = CFDataGetBytePtr(theData);
                      MovieSampleGroupAddDescription(a2, Length, BytePtr, &v24, 0);
                      if (v6)
                      {
                        goto LABEL_47;
                      }
                    }

                    else
                    {
                      LODWORD(v24) = 0;
                    }
                  }

                  else
                  {
                    LODWORD(v24) = v12;
                    BYTE4(v24) = BYTE4(v12);
                    *(&v24 + 5) = HIDWORD(v12) >> 8;
                    HIBYTE(v24) = HIBYTE(v12);
                  }

                  AppendDescriptionIndexToCompactGroup(a2, v24);
                  if (theData)
                  {
                    CFRelease(theData);
                    theData = 0;
                  }

                  ++v11;
                }

                while (v11 < SHIDWORD(v23));
                v8 += v11;
              }

              if (++v9 >= *(a3 + 48))
              {
                goto LABEL_29;
              }
            }
          }

          v24 = 0;
          AppendNewPattern(a2, 1u, a1 - v7);
          if (!v6)
          {
            MovieSampleGroupDescriptionArrayCopyInfo(*(a2 + 16), 0, 0, 0, 0, &v24);
            AppendDescriptionIndexToCompactGroup(a2, v24);
            goto LABEL_10;
          }
        }

LABEL_47:
        v15 = v6;
        goto LABEL_48;
      }

      return 0;
    }

    MovieSampleGroupIntegrateSampleGroup_cold_1(&theData);
    return theData;
  }

  theData = 0;
  v16 = *(a3 + 24) + *(a2 + 24);
  if (v16 > a1)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_3(&v24);
    return v24;
  }

  if (v16 >= a1 || (v24 = 0, MovieSampleGroupDescriptionArrayCopyInfo(*(a2 + 16), 0, 0, 0, 0, &v24), MovieSampleGroupAppendSamplesWithDescriptionIndex(a2, a1 - (*(a2 + 24) + *(a3 + 24)), v24), v15 = v17, !v17))
  {
    v18 = *(a3 + 28);
    if (v18 >= 1)
    {
      v19 = 0;
      while (1)
      {
        v24 = 0;
        HIDWORD(v23) = 0;
        MovieSampleGroupGetEntry(a3, v19, &v23 + 1, &v24);
        if (v6)
        {
          break;
        }

        if (v24 && (BYTE4(v24) || *(a3 + 112) != a2))
        {
          v6 = MovieSampleGroupCopyDescriptionForIndex(a3, v24, &theData);
          if (v6)
          {
            break;
          }

          if (theData)
          {
            v20 = CFDataGetLength(theData);
            v21 = CFDataGetBytePtr(theData);
            MovieSampleGroupAddDescription(a2, v20, v21, &v24, 0);
            if (v6)
            {
              break;
            }
          }
        }

        MovieSampleGroupAppendSamplesWithDescriptionIndex(a2, HIDWORD(v23), v24);
        if (v6)
        {
          break;
        }

        if (theData)
        {
          CFRelease(theData);
          theData = 0;
        }

        if (v18 == ++v19)
        {
          return 0;
        }
      }

      goto LABEL_47;
    }

    return 0;
  }

  return v15;
}

uint64_t MovieSampleGroupCreateOptimizedCopy(unsigned int *cf, CFTypeRef *a2)
{
  v37 = 0uLL;
  v38 = 0;
  v36 = 0;
  *cfa = 0u;
  memset(v35, 0, sizeof(v35));
  *v32 = 0u;
  *v33 = 0u;
  LODWORD(v33[1]) = 1;
  if (!cf)
  {
    MovieSampleGroupCreateOptimizedCopy_cold_2(v39);
LABEL_55:
    v4 = v39[0];
    goto LABEL_46;
  }

  if (!a2)
  {
    MovieSampleGroupCreateOptimizedCopy_cold_1(v39);
    goto LABEL_55;
  }

  if (*(cf + 140))
  {
    v4 = 0;
    *a2 = CFRetain(cf);
    return v4;
  }

  v5 = CFGetAllocator(cf);
  v6 = MovieSampleGroupCreate(v5, *(cf + 16), cf[34], cfa);
  if (v6)
  {
    goto LABEL_39;
  }

  v7 = *(cf + 9);
  v8 = 13;
  if (!v7)
  {
    v8 = 6;
  }

  v9 = cf[v8];
  *(&v37 + 4) = 0;
  v10 = 4;
  HIDWORD(v37) = 4;
  if (v7)
  {
    v10 = cf[15];
    HIDWORD(v37) = v10;
  }

  LOBYTE(v38) = 0;
  MovieSampleGroupSet_csgp(cfa[0], &v37, 0, 0);
  if (v6)
  {
    goto LABEL_39;
  }

  v6 = MakeReadyToWrite_csgp(cfa[0]);
  if (v6)
  {
    goto LABEL_39;
  }

  v6 = MovieSampleGroupAccessorCreate(cf, v32);
  if (v6)
  {
    goto LABEL_39;
  }

  v6 = MovieSampleGroupAccessorCreate(cf, v33);
  if (v6)
  {
    goto LABEL_39;
  }

  memset_pattern16(&v35[8] + 12, &unk_196E77680, 0x80uLL);
  LODWORD(cfa[1]) = v10;
  LODWORD(v32[1]) = 1;
  if (v9 <= 0)
  {
    v12 = HIDWORD(cfa[1]);
LABEL_37:
    if (v12 < 1)
    {
      OutputTrailingNonPatternRunThroughSampleNumber(v32, v9);
      if (v6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      OutputTrailingPatternRunThroughSampleNumber(v32, v9);
      if (v6)
      {
        goto LABEL_39;
      }
    }

    v28 = CFGetAllocator(cf);
    v29 = MovieSampleGroupCreateDescriptionArrayDeepCopy(v28, *(cf + 2), &v36);
    v30 = v36;
    if (v29)
    {
      v4 = v29;
      if (!v36)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v4 = MovieSampleGroupSetDescriptionArray(cfa[0], v36);
      if (!v4)
      {
        *a2 = cfa[0];
        cfa[0] = 0;
      }

      if (!v30)
      {
        goto LABEL_46;
      }
    }

    CFRelease(v30);
    goto LABEL_46;
  }

  v11 = 1;
  while (1)
  {
    *v39 = 0;
    v6 = (*(v32[0] + 6))(v32[0], v11, v39);
    if (v6)
    {
      goto LABEL_39;
    }

    *(v35 + SLODWORD(v32[1]) % 33 + 1) = v39[0];
    v12 = HIDWORD(cfa[1]);
    v13 = v32[1];
    v14 = SLODWORD(v32[1]) % 33;
    if (cfa[1] <= 0)
    {
      break;
    }

    if (*(v35 + v14 + 1) == *(v35 + (LODWORD(v32[1]) - HIDWORD(cfa[1])) % 33 + 1))
    {
      goto LABEL_32;
    }

    OutputTrailingPatternRunThroughSampleNumber(v32, LODWORD(v32[1]) - 1);
    if (v6)
    {
      goto LABEL_39;
    }

    v15 = 0;
    HIDWORD(cfa[1]) = 0;
    v13 = v32[1];
    v16 = vdupq_n_s32(v32[1]);
    do
    {
      *(&v35[v15 + 8] + 12) = v16;
      ++v15;
    }

    while (v15 != 8);
    v12 = 0;
LABEL_32:
    v11 = (v13 + 1);
    LODWORD(v32[1]) = v13 + 1;
    if (v13 >= v9)
    {
      goto LABEL_37;
    }
  }

  v17 = 0;
  v18 = LODWORD(v32[1]) + 1;
  v19 = cfa[1];
  v20 = LODWORD(v32[1]) - 1;
  v21 = LODWORD(cfa[1]) + 7;
  v22 = 47;
  while (1)
  {
    v23 = *(v32 + v22);
    if (v22 + v23 - 46 <= v13)
    {
      break;
    }

LABEL_31:
    --v17;
    v21 += v19;
    ++v22;
    if (v17 == -32)
    {
      goto LABEL_32;
    }
  }

  if (*(v35 + v14 + 1) != *(v35 + (v20 + v17) % 33 + 1))
  {
    *(v32 + v22) = v13 + v17;
    goto LABEL_31;
  }

  v24 = v19 * (v18 - v23);
  v26 = v24 + 7;
  v25 = v24 < -7;
  v27 = v24 + 14;
  if (!v25)
  {
    v27 = v26;
  }

  if (v21 / 8 + 8 >= v27 >> 3)
  {
    goto LABEL_31;
  }

  OutputTrailingNonPatternRunThroughSampleNumber(v32, v23 - 1);
  if (!v6)
  {
    v12 = 1 - v17;
    HIDWORD(cfa[1]) = 1 - v17;
    LODWORD(v35[0]) = *(v32 + v22);
    v13 = v32[1];
    goto LABEL_32;
  }

LABEL_39:
  v4 = v6;
LABEL_46:
  if (cfa[0])
  {
    CFRelease(cfa[0]);
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  if (v33[0])
  {
    CFRelease(v33[0]);
  }

  return v4;
}

uint64_t MakeReadyToWrite_csgp(uint64_t a1)
{
  theBuffer = 0;
  blockBufferOut = 0;
  v22 = 0;
  cf = 0;
  if (*(a1 + 96))
  {
    v1 = 0;
    goto LABEL_43;
  }

  v3 = *MEMORY[0x1E695E480];
  WritableForBlockBuffer = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, &blockBufferOut);
  if (WritableForBlockBuffer)
  {
    goto LABEL_50;
  }

  v5 = *(a1 + 72);
  if (v5 && (v6 = *(a1 + 48)) != 0)
  {
    v20 = 0;
    destination = 0;
    v7 = 8 * (v6 - 1);
    CMBlockBufferCopyDataBytes(v5, v7, 8uLL, &destination);
    if (*(a1 + 48) >= 2u)
    {
      CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 72), 0, v7, 0);
    }

    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (WritableForBlockBuffer)
    {
      goto LABEL_50;
    }

    CMByteStreamAppend();
  }

  else
  {
    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (WritableForBlockBuffer)
    {
      goto LABEL_50;
    }
  }

  WritableForBlockBuffer = CMBlockBufferCreateEmpty(v3, 8u, 0, &theBuffer);
  if (WritableForBlockBuffer)
  {
    goto LABEL_50;
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = 0;
      destination = 0;
      v11 = v9 - 1;
      HIDWORD(v13) = *(a1 + 60) - 4;
      LODWORD(v13) = HIDWORD(v13);
      v12 = v13 >> 2;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v14 = 2 * v11;
          v10 = 2;
        }

        else
        {
          v14 = 0;
          if (v12 == 7)
          {
            v14 = 4 * v11;
            v10 = 4;
          }
        }
      }

      else
      {
        if (!v12)
        {
          v14 = (v11 + (v11 >> 31)) >> 1;
          goto LABEL_25;
        }

        v14 = 0;
        if (v12 == 1)
        {
          v14 = v11;
LABEL_25:
          v10 = 1;
        }
      }

      CMBlockBufferCopyDataBytes(v8, v14, v10, &v20);
      if (v14 && *(a1 + 56) >= 2u)
      {
        CMBlockBufferAppendBufferReference(theBuffer, *(a1 + 80), 0, v14, 0);
      }

      WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
      if (!WritableForBlockBuffer)
      {
        CMByteStreamAppend();
        goto LABEL_32;
      }

      goto LABEL_50;
    }
  }

  else
  {
    *(a1 + 60) = 4;
    *(a1 + 88) = GetDescriptionIndex_csgp_4;
  }

  WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
  if (!WritableForBlockBuffer)
  {
LABEL_32:
    v15 = *(a1 + 72);
    v16 = blockBufferOut;
    *(a1 + 72) = blockBufferOut;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v17 = *(a1 + 80);
    v18 = theBuffer;
    *(a1 + 80) = theBuffer;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    *(a1 + 96) = CFRetain(cf);
    v1 = 0;
    *(a1 + 104) = CFRetain(v22);
    goto LABEL_41;
  }

LABEL_50:
  v1 = WritableForBlockBuffer;
LABEL_41:
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v1;
}

uint64_t MovieSampleGroupCreateNonCompactCopy(uint64_t a1, CFTypeRef *a2)
{
  v4 = CFGetAllocator(a1);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v27 = 0;
  cf = 0;
  v26 = 0;
  if (*(a1 + 32))
  {
    v7 = 0;
    *a2 = CFRetain(a1);
    return v7;
  }

  v8 = v4;
  if (*(a1 + 140))
  {
    appended = MovieSampleGroupCreateForFragment(v4, v5, v6, *(a1 + 112), &v27);
    if (appended)
    {
      goto LABEL_34;
    }
  }

  else
  {
    appended = MovieSampleGroupCreate(v4, v5, v6, &v27);
    if (appended)
    {
LABEL_34:
      v7 = appended;
      goto LABEL_29;
    }
  }

  appended = MovieSampleGroupAccessorCreate(a1, &cf);
  if (appended)
  {
    goto LABEL_34;
  }

  v10 = 52;
  if (!*(a1 + 72))
  {
    v10 = 24;
  }

  v24 = *(a1 + v10);
  if (v24 >= 1)
  {
    v22 = v8;
    v23 = a2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = cf;
    while (2)
    {
      v16 = 0;
      v17 = v24 - v14;
      while (1)
      {
        v25 = 0;
        appended = v15[6](v15, (v14 + v16), &v25);
        if (appended)
        {
          goto LABEL_34;
        }

        v18 = v25;
        if (v14 + v16 == 1 || v13 != v25)
        {
          break;
        }

        if (v24 - v14 + 1 == ++v16)
        {
          v11 += v16;
          v18 = v13;
          goto LABEL_23;
        }
      }

      if (v11 + v16)
      {
        appended = AppendSamplesWithDescriptionIndexToRegularGroup(v27, v11 + v16, v13 | (v12 << 32));
        if (appended)
        {
          goto LABEL_34;
        }

        v18 = v25;
      }

      v12 = HIDWORD(v25);
      v14 += v16 + 1;
      v11 = 1;
      v13 = v18;
      if (v17 != v16)
      {
        continue;
      }

      break;
    }

LABEL_23:
    appended = AppendSamplesWithDescriptionIndexToRegularGroup(v27, v11, v18 | (v12 << 32));
    a2 = v23;
    v8 = v22;
    if (appended)
    {
      goto LABEL_34;
    }
  }

  v19 = MovieSampleGroupCreateDescriptionArrayDeepCopy(v8, *(a1 + 16), &v26);
  v20 = v26;
  if (v19)
  {
    v7 = v19;
    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v7 = MovieSampleGroupSetDescriptionArray(v27, v26);
    if (!v7)
    {
      *a2 = v27;
      v27 = 0;
    }

    if (!v20)
    {
      goto LABEL_29;
    }
  }

  CFRelease(v20);
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v7;
}

double movieSampleGroup_Init(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void movieSampleGroup_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }
}

__CFString *movieSampleGroup_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroup '%c%c%c%c' ", HIBYTE(*(a1 + 128)), BYTE2(*(a1 + 128)), BYTE1(*(a1 + 128)), *(a1 + 128));
  if (*(a1 + 136))
  {
    CFStringAppendFormat(Mutable, 0, @"typeParameter %x ", *(a1 + 132));
  }

  if (*(a1 + 72))
  {
    if (*(a1 + 64))
    {
      v3 = ", some fragment-local";
    }

    else
    {
      v3 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"csgp: %d patterns, %d samples, %d %d-bit description indexes%s", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), v3);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"sbgp: %d entries, %d samples", *(a1 + 28), *(a1 + 24), v5, v6);
  }

  if (*(a1 + 140))
  {
    CFStringAppendFormat(Mutable, 0, @" FragmentSampleGroup parent: %p", *(a1 + 112));
  }

  return Mutable;
}

uint64_t RegisterMovieSampleGroupCollectionType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void movieSampleGroupCollection_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *movieSampleGroupCollection_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroupCollection %d sampleGroups ", Count);
  return Mutable;
}

uint64_t RegisterMovieSampleGroupDescriptionArrayType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void *movieSampleGroupDescriptionArray_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void movieSampleGroupDescriptionArray_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *movieSampleGroupDescriptionArray_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(a1 + 36);
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroupDescriptionArray '%c%c%c%c' %d descriptions ", HIBYTE(v3), BYTE2(v3), BYTE1(v3), v3, Count);
  return Mutable;
}

uint64_t RegisterMovieSampleGroupAccessorType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double movieSampleGroupAccessor_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void movieSampleGroupAccessor_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *movieSampleGroupAccessor_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroupAccessor '%@' group %p", *(*(a1 + 16) + 120), *(a1 + 16));
  return Mutable;
}

void CompactSampleGroupAccessorGetDescriptionIndexForSample(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = *(a1 + 36);
  v7 = v6;
  while (a2 < v7 || *(a1 + 32) + v7 <= a2)
  {
    if (v6 <= a2)
    {
      v21 = 0;
      v14 = *(a1 + 24) + 1;
      v15 = *(a1 + 16);
      if (v14 >= *(v15 + 48) || (MovieSampleGroupGetPatternEntry(v15, v14, &v21, &v21 + 1), v16))
      {
LABEL_11:
        v20 = 0;
        goto LABEL_13;
      }

      v17 = *(a1 + 24) + 1;
      v18 = vadd_s32(*(a1 + 36), vrev64_s32(*(a1 + 28)));
      *(a1 + 36) = v18;
      v19 = v21;
      *(a1 + 24) = v17;
      *(a1 + 28) = __PAIR64__(HIDWORD(v21), v19);
      v7 = v18.i32[0];
    }

    else
    {
      v21 = 0;
      v8 = *(a1 + 24);
      if (v8 < 1)
      {
        goto LABEL_11;
      }

      MovieSampleGroupGetPatternEntry(*(a1 + 16), v8 - 1, &v21, &v21 + 1);
      if (v9)
      {
        goto LABEL_11;
      }

      v10 = *(a1 + 24) - 1;
      v12 = v21;
      v11 = HIDWORD(v21);
      v7 = *(a1 + 36) - HIDWORD(v21);
      v13 = *(a1 + 40) - v21;
      *(a1 + 36) = v7;
      *(a1 + 40) = v13;
      *(a1 + 24) = v10;
      *(a1 + 28) = v12;
      *(a1 + 32) = v11;
    }
  }

  v20 = (*(*(a1 + 16) + 88))();
LABEL_13:
  *a3 = v20;
}

uint64_t RegularSampleGroupAccessorGetDescriptionIndexForSample(uint64_t a1, int a2, void *a3)
{
  v20 = 0;
  v6 = *(a1 + 28);
  while (1)
  {
    v19 = 0;
    MovieSampleGroupGetEntry(*(a1 + 16), *(a1 + 24), &v20, &v19);
    v8 = v7;
    if (v7)
    {
      goto LABEL_15;
    }

    v9 = *(a1 + 28);
    if (v9 <= a2 && v20 + v9 > a2)
    {
      break;
    }

    if (v6 <= a2)
    {
      v14 = *(a1 + 24) + 1;
      if (v14 >= MovieSampleGroupGetNumSampleToGroupTableEntries(*(a1 + 16)))
      {
        goto LABEL_15;
      }

      v15.i32[0] = 1;
      v15.i32[1] = v20;
      *(a1 + 24) = vadd_s32(*(a1 + 24), v15);
    }

    else
    {
      v18 = 0;
      v10 = *(a1 + 24);
      v11 = v10 - 1;
      if (v10 < 1)
      {
        v8 = 0;
LABEL_15:
        v16 = 0;
        goto LABEL_16;
      }

      *(a1 + 24) = v11;
      MovieSampleGroupGetEntry(*(a1 + 16), v11, &v18, 0);
      if (v12)
      {
        v8 = v12;
        goto LABEL_15;
      }

      v13 = *(a1 + 28);
      if (v13 <= v18)
      {
        RegularSampleGroupAccessorGetDescriptionIndexForSample_cold_1(&v21);
        v8 = v21;
        goto LABEL_15;
      }

      *(a1 + 28) = v13 - v18;
    }
  }

  v16 = v19;
LABEL_16:
  *a3 = v16;
  return v8;
}

uint64_t OUTLINED_FUNCTION_2_88(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(v8, a2, v8, 0, 0, 0, 2u, a8);
}

uint64_t OUTLINED_FUNCTION_4_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16)
{

  return CMByteStreamCreateWritableForBlockBuffer();
}

uint64_t OUTLINED_FUNCTION_6_59(uint64_t a1, size_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char destination)
{
  destination = 0;
  v14 = *(a1 + 80);

  return CMBlockBufferCopyDataBytes(v14, a2, 1uLL, &destination);
}

uint64_t RegisterFigAssetCacheInspectorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetCacheInspectorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetCacheInspectorGetClassID_sRegisterFigAssetCacheInspectorBaseTypeOnce, RegisterFigAssetCacheInspectorBaseType);

  return CMBaseClassGetCFTypeID();
}

CFIndex FigSecureStopArchivistCopyInstance(const __CFAllocator *a1, const __CFData *a2, const __CFURL *a3, void *a4)
{
  if (!a4)
  {
    FigSecureStopArchivistCopyInstance_cold_6(&block);
    return block;
  }

  *a4 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v45 = 0;
  fssa_ensureArchivistSingletonContext(a1);
  Key = fssa_createKey(a1, a2, a3, &v45);
  if (Key)
  {
    v30 = v33[3];
    if (v30)
    {
      CFRelease(v30);
    }

    v9 = 0;
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v37 = 0x40000000;
    v38 = __fssa_copyArchivistGuts_block_invoke;
    v39 = &unk_1E748B470;
    v40 = &v32;
    v41 = v45;
    dispatch_sync(sArchivistSingletonContext_1, &block);
    v9 = v33[3];
    v33[3] = 0;
  }

  if (v45)
  {
    CFRelease(v45);
  }

  _Block_object_dispose(&v32, 8);
  if (Key)
  {
    goto LABEL_49;
  }

  if (v9)
  {
LABEL_47:
    Key = 0;
    *a4 = v9;
    return Key;
  }

  cf = 0;
  fssa_ensureArchivistSingletonContext(a1);
  v10 = fssa_createKey(a1, a2, a3, &cf);
  if (v10)
  {
    Key = v10;
    v9 = 0;
    goto LABEL_44;
  }

  v43 = 0;
  FigSecureStopManagerGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    Key = v11;
    goto LABEL_60;
  }

  if (!v43 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v13 = dispatch_queue_create("com.apple.coremedia.securestoparchivist", 0), (*DerivedStorage = v13) == 0))
  {
    FigSecureStopArchivistCopyInstance_cold_4();
    Key = block;
    goto LABEL_60;
  }

  if (a2)
  {
    v14 = CFRetain(a2);
  }

  else
  {
    v14 = 0;
  }

  DerivedStorage[2] = v14;
  if (a3)
  {
    v15 = CFRetain(a3);
  }

  else
  {
    v15 = 0;
  }

  DerivedStorage[3] = v15;
  v32 = 0;
  error = 0;
  v45 = 0;
  block = 0;
  v37 = 0;
  v38 = 0;
  v16 = FigFileForkOpenMainByCFURL();
  if (v16)
  {
    Key = v16;
    goto LABEL_65;
  }

  DarwinFileDesc = FigFileGetDarwinFileDesc();
  flock(DarwinFileDesc, 1);
  Key = FigFileReadURLAndCreateCFData();
  v18 = FigFileGetDarwinFileDesc();
  flock(v18, 8);
  if (Key)
  {
LABEL_65:
    v22 = 0;
    goto LABEL_30;
  }

  v19 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigSecureStopArchivistCopyInstance_cold_3(&v46);
    v22 = 0;
LABEL_69:
    Key = v46;
    goto LABEL_31;
  }

  if (CFDataGetLength(v45) <= 0)
  {
    Key = 0;
    v22 = 0;
    DerivedStorage[1] = Mutable;
LABEL_30:
    Mutable = 0;
    goto LABEL_31;
  }

  v21 = DerivedStorage[2];
  block = Mutable;
  v37 = v21;
  LOBYTE(v38) = 0;
  v22 = CFPropertyListCreateWithData(v19, v45, 1uLL, 0, &error);
  if (!error || (Key = CFErrorGetCode(error), !Key))
  {
    if (v22)
    {
      v23 = CFGetTypeID(v22);
      if (v23 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v22, fssa_createRecordAndAddToInMemoryDatabase, &block);
        v24 = v38;
        DerivedStorage[1] = Mutable;
        if (v24)
        {
          Key = fssa_synchronizeInMemoryDatabaseToDisk(DerivedStorage);
        }

        else
        {
          Key = 0;
        }

        goto LABEL_30;
      }

      FigSecureStopArchivistCopyInstance_cold_1(&v46);
    }

    else
    {
      FigSecureStopArchivistCopyInstance_cold_2(&v46);
    }

    goto LABEL_69;
  }

LABEL_31:
  FigFileForkClose();
  if (v45)
  {
    CFRelease(v45);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (Key)
  {
LABEL_60:
    if (v43)
    {
      CFRelease(v43);
    }

    v25 = 0;
    v9 = 0;
    if (Key)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v25 = v43;
LABEL_41:
  v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v26)
  {
    v27 = v26;
    block = MEMORY[0x1E69E9820];
    v37 = 0x40000000;
    v38 = __fssa_createArchivist_block_invoke;
    v39 = &__block_descriptor_tmp_7_5;
    v40 = cf;
    v41 = v26;
    dispatch_sync(sArchivistSingletonContext_1, &block);
    Key = 0;
    v28 = v25;
    v25 = v27;
LABEL_43:
    CFRelease(v25);
    v9 = v28;
    goto LABEL_44;
  }

  v31 = FigSecureStopArchivistCopyInstance_cold_5();
  v28 = 0;
  v9 = 0;
  Key = block;
  if (!v31)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!Key)
  {
    goto LABEL_47;
  }

LABEL_49:
  if (v9)
  {
    CFRelease(v9);
  }

  return Key;
}

CFIndex fssr_createRecordFromSerializedData(CFDataRef data, const void **a2)
{
  error = 0;
  v10 = 0;
  v3 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], data, 1uLL, 0, &error);
  if (error && (Code = CFErrorGetCode(error), Code))
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFDictionaryGetTypeID())
    {
      fssr_createRecordFromSerializedData_cold_1(&v11);
      Code = v11;
      goto LABEL_7;
    }

    Code = fssr_createSecureStopRecordFromDictionary(v3, &v10);
    v6 = v10;
    if (!Code)
    {
      *a2 = v10;
LABEL_7:
      v7 = v3;
LABEL_8:
      CFRelease(v7);
      goto LABEL_9;
    }

    CFRelease(v3);
    if (v6)
    {
      v7 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    fssr_createRecordFromSerializedData_cold_2(&v11);
    Code = v11;
  }

LABEL_9:
  if (error)
  {
    CFRelease(error);
  }

  return Code;
}

void fssa_ensureArchivistSingletonContext(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fssa_ensureArchivistSingletonContext_block_invoke;
  block[3] = &__block_descriptor_tmp_6_2;
  block[4] = a1;
  if (fssa_ensureArchivistSingletonContext_once != -1)
  {
    dispatch_once(&fssa_ensureArchivistSingletonContext_once, block);
  }
}

uint64_t fssa_createKey(const __CFAllocator *a1, CFDataRef theData, const __CFURL *a3, __CFData **a4)
{
  MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    v9 = CFURLCreateData(a1, a3, 0x8000100u, 1u);
    if (v9)
    {
      v10 = v9;
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v10);
      CFDataAppendBytes(v8, BytePtr, Length);
      *a4 = v8;
      CFRelease(v10);
      return 0;
    }

    else
    {
      fssa_createKey_cold_1();
      return v14;
    }
  }

  else
  {
    fssa_createKey_cold_2(&v15);
    return v15;
  }
}

double __fssa_ensureArchivistSingletonContext_block_invoke(uint64_t a1)
{
  sArchivistSingletonContext_0 = CFDictionaryCreateMutable(*(a1 + 32), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!sArchivistSingletonContext_0)
  {
    return __fssa_ensureArchivistSingletonContext_block_invoke_cold_1();
  }

  sArchivistSingletonContext_1 = dispatch_queue_create("com.apple.coremedia.securestoparchivist.singletoncontext", 0);
  if (!sArchivistSingletonContext_1)
  {
    return __fssa_ensureArchivistSingletonContext_block_invoke_cold_1();
  }

  return result;
}

void fssa_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
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

  v5 = *DerivedStorage;

  dispatch_release(v5);
}

__CFString *fssa_copyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSecureStopArchivist %p retainCount: %ld allocator: %p>", a1, v4, v5);
  return Mutable;
}

uint64_t fssa_fbo_removeRecords(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fssa_fbo_removeRecords_block_invoke;
    v7[3] = &unk_1E748B500;
    v7[4] = &v8;
    v7[5] = a2;
    v7[6] = DerivedStorage;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 6);
  }

  else
  {
    fssa_fbo_removeRecords_cold_1();
    v5 = v12;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void __fssa_fbo_copyRecords_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    v3 = *(*(a1 + 48) + 8);

    CFDictionaryApplyFunction(v3, fssa_serializeRecordAndAddToOutputDictionary, v2);
  }

  else
  {
    __fssa_fbo_copyRecords_block_invoke_cold_1(a1);
  }
}

uint64_t fssr_createDictionaryFromSecureStopRecord(void *a1, int a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = a1[2];
    if (v8)
    {
      CFDictionarySetValue(Mutable, @"SessionLifespanSPC", v8);
    }

    v9 = a1[3];
    if (v9)
    {
      CFDictionarySetValue(v7, @"SecureStopSPC", v9);
    }

    v10 = a1[6];
    if (v10)
    {
      CFDictionarySetValue(v7, @"PlaybackSessionID", v10);
    }

    v11 = a1[7];
    if (v11)
    {
      CFDictionarySetValue(v7, @"AirPlayPlaybackSessionID", v11);
    }

    v12 = a1[10];
    if (v12)
    {
      CFDictionarySetValue(v7, @"AbnormallyTerminated", v12);
    }

    if (a2)
    {
      if (!a1[6])
      {
        FigCFDictionarySetValue();
      }
    }

    else
    {
      v13 = a1[4];
      if (v13)
      {
        CFDictionarySetValue(v7, @"ModifiedDate", v13);
      }

      v14 = a1[5];
      if (v14)
      {
        CFDictionarySetValue(v7, @"VersionList", v14);
      }

      v15 = a1[8];
      if (v15)
      {
        CFDictionarySetValue(v7, @"APIProviderID", v15);
      }

      v16 = a1[9];
      if (v16)
      {
        CFDictionarySetValue(v7, @"AssetID", v16);
      }
    }

    result = 0;
    *a3 = v7;
  }

  else
  {
    fssr_createDictionaryFromSecureStopRecord_cold_1(&v18);
    return v18;
  }

  return result;
}

void __fssa_fbo_removeRecords_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v5);
        v9 = 0;
        *(*(*(a1 + 32) + 8) + 24) = fssr_createRecordFromSerializedData(ValueAtIndex, &v9);
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          break;
        }

        v7 = v9;
        Value = CFDictionaryGetValue(*(*(a1 + 48) + 8), v9[6]);
        CFDictionaryRemoveValue(*(*(a1 + 48) + 8), v7[6]);
        CFRelease(v7);
        if (v4 == ++v5)
        {
          if (Value)
          {
            *(*(*(a1 + 32) + 8) + 24) = fssa_synchronizeInMemoryDatabaseToDisk(*(a1 + 48));
          }

          return;
        }
      }
    }
  }
}

CFIndex fssa_synchronizeInMemoryDatabaseToDisk(uint64_t a1)
{
  error = 0;
  v22 = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fssa_synchronizeInMemoryDatabaseToDisk_cold_3(&v23);
LABEL_37:
    Code = v23;
    goto LABEL_38;
  }

  Count = CFDictionaryGetCount(*(a1 + 8));
  if (Count < 33)
  {
    v8 = 0;
    v10 = 0;
    v7 = 0;
    v6 = 0;
LABEL_11:
    Code = 0;
    goto LABEL_12;
  }

  v5 = Count;
  v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (v6)
  {
    v7 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
    if (v7)
    {
      CFDictionaryGetKeysAndValues(*(a1 + 8), v6, v7);
      v8 = CFArrayCreate(v2, v7, v5, MEMORY[0x1E695E9C0]);
      if (v8)
      {
        MutableCopy = CFArrayCreateMutableCopy(v2, 0, v8);
        if (MutableCopy)
        {
          v10 = MutableCopy;
          v24.location = 0;
          v24.length = v5;
          CFArraySortValues(MutableCopy, v24, fssa_compareModifiedDate, 0);
          v11 = 0;
          v12 = v5 - 32;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
            v14 = ValueAtIndex[6];
            if (!v14)
            {
              v14 = ValueAtIndex[7];
            }

            CFDictionaryRemoveValue(*(a1 + 8), v14);
            ++v11;
          }

          while (v12 != v11);
          goto LABEL_11;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, error, v22);
  Code = v19;
  v10 = 0;
LABEL_12:
  free(v6);
  free(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Code)
  {
    goto LABEL_38;
  }

  CFDictionaryApplyFunction(*(a1 + 8), fssa_createRecordDictionaryAndAddToOutputDictionary, Mutable);
  v16 = FigFileForkOpenMainByCFURL();
  if (v16)
  {
    Code = v16;
LABEL_38:
    FigFileForkClose();
    goto LABEL_23;
  }

  v17 = CFPropertyListCreateData(v2, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (!error || (Code = CFErrorGetCode(error), !Code))
  {
    if (v17)
    {
      fssa_synchronizeInMemoryDatabaseToDisk_cold_1(&v22, v17, &v23);
      Code = v23;
LABEL_22:
      CFRelease(v17);
      goto LABEL_23;
    }

    fssa_synchronizeInMemoryDatabaseToDisk_cold_2(&v23);
    goto LABEL_37;
  }

  FigFileForkClose();
  if (v17)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    CFRelease(error);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Code;
}

CFIndex __fssa_fbo_updateRecord_block_invoke(void *a1)
{
  result = fssa_updateRecordGuts(a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], 0, 0);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

CFIndex fssa_updateRecordGuts(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, char a9)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  if (!a1)
  {
    fssa_updateRecordGuts_cold_2(&value);
    return value;
  }

  v17 = CFDictionaryGetValue(*(a1 + 8), v9);
  if (v17)
  {
    v18 = CFRetain(v17);
    value = v18;
    if (v18)
    {
      v19 = v18;
      v20 = *MEMORY[0x1E695E480];
      goto LABEL_8;
    }
  }

  else
  {
    value = 0;
  }

  v20 = *MEMORY[0x1E695E480];
  SecureStopRecord = fssr_createSecureStopRecord(*MEMORY[0x1E695E480], &value);
  v19 = value;
  if (SecureStopRecord)
  {
    v33 = SecureStopRecord;
    if (!value)
    {
      return v33;
    }

    v34 = value;
    goto LABEL_52;
  }

  CFDictionarySetValue(*(a1 + 8), v9, value);
LABEL_8:
  Current = CFAbsoluteTimeGetCurrent();
  v22 = CFDateCreate(v20, Current);
  v23 = v19[2];
  v19[2] = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v24 = v19[3];
  v19[3] = a8;
  if (a8)
  {
    CFRetain(a8);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v25 = v19[4];
  v19[4] = v22;
  if (v22)
  {
    CFRetain(v22);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = v19[5];
  v19[5] = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v19[6];
  v19[6] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v28 = v19[7];
  v19[7] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v29 = v19[8];
  v19[8] = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v30 = v19[9];
  v19[9] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (a9)
  {
    v31 = v19[10];
    v32 = *MEMORY[0x1E695E4D0];
    v19[10] = *MEMORY[0x1E695E4D0];
    if (v32)
    {
      CFRetain(v32);
    }

    if (v31)
    {
      CFRelease(v31);
    }
  }

  if (!a3 || !a8)
  {
    goto LABEL_49;
  }

  if (a2)
  {
    CFDictionarySetValue(*(a1 + 8), a2, v19);
    CFDictionaryRemoveValue(*(a1 + 8), a3);
LABEL_49:
    v33 = fssa_synchronizeInMemoryDatabaseToDisk(a1);
    goto LABEL_50;
  }

  fssa_updateRecordGuts_cold_1(&v39);
  v33 = v39;
LABEL_50:
  CFRelease(v19);
  if (v22)
  {
    v34 = v22;
LABEL_52:
    CFRelease(v34);
  }

  return v33;
}

double FigSecureStopRecordInit(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigSecureStopRecordFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
    a1[8] = 0;
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
    a1[9] = 0;
  }

  v10 = a1[10];
  if (v10)
  {
    CFRelease(v10);
    a1[10] = 0;
  }
}

uint64_t FigSecureStopRecordClassRegisterOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

CFIndex __fssa_fbo_finalizeRecord_block_invoke(uint64_t a1)
{
  result = fssa_updateRecordGuts(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0, 0, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void fssa_createRecordAndAddToInMemoryDatabase(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  value = 0;
  v7 = fssr_createSecureStopRecordFromDictionary(a2, &value);
  v8 = value;
  if (v7)
  {
    if (!value)
    {
      return;
    }

    goto LABEL_26;
  }

  if (*(value + 3))
  {
LABEL_30:
    CFDictionarySetValue(v5, a1, v8);
    v20 = *(a3 + 16) != 0;
    goto LABEL_25;
  }

  if (*(value + 6))
  {
    if (FigCFEqual())
    {
      v9 = PKDKeyManagerCreateForMSE(*MEMORY[0x1E695E480], 0);
    }

    else
    {
      if (!FigCFEqual())
      {
LABEL_29:
        if (!fssa_createRecordAndAddToInMemoryDatabase_cold_1())
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }

      v9 = PKDKeyManagerCreateForPastis(*MEMORY[0x1E695E480], 0);
    }

    v17 = v9;
    if (v9)
    {
      if (KeyManagerCreateStopSPC(v9, v6, *(v8 + 5), *(v8 + 9), *(v8 + 6), v8 + 3))
      {
        CFRelease(v17);
        goto LABEL_26;
      }

      v18 = *(v8 + 5);
      if (v18)
      {
        CFRelease(v18);
        *(v8 + 5) = 0;
      }

      v19 = *(v8 + 9);
      if (v19)
      {
        CFRelease(v19);
        *(v8 + 9) = 0;
      }

      v16 = v17;
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  if (!*(value + 7))
  {
    goto LABEL_24;
  }

  v10 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v12 = CFDateCreate(v10, Current);
  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v12, *(v8 + 4));
  if (v12)
  {
    CFRelease(v12);
  }

  if (TimeIntervalSinceDate <= 1296000.0)
  {
    goto LABEL_24;
  }

  v14 = *(v8 + 10);
  v15 = *MEMORY[0x1E695E4D0];
  *(v8 + 10) = *MEMORY[0x1E695E4D0];
  if (v15)
  {
    CFRetain(v15);
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v16 = v14;
LABEL_23:
  CFRelease(v16);
LABEL_24:
  CFDictionarySetValue(v5, a1, v8);
  v20 = 1;
LABEL_25:
  *(a3 + 16) = v20;
LABEL_26:

  CFRelease(v8);
}

void OUTLINED_FUNCTION_3_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
}

uint64_t FigMetadataReaderCreateForBoxedMetadata(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    FigMetadataReaderCreateForBoxedMetadata_cold_2(&v7);
    return v7;
  }

  if (!a4)
  {
    FigMetadataReaderCreateForBoxedMetadata_cold_1(&v7);
    return v7;
  }

  FigMetadataReaderGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    CMBaseObjectGetDerivedStorage();
    v5 = FigBoxedMetadataCreateFromBlockBuffer();
    if (!v5)
    {
      v5 = 0;
      *a4 = 0;
    }
  }

  return v5;
}

void boxedreader_Finalize(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  if (v1)
  {

    CFRelease(v1);
  }
}

CFIndex boxedreader_GetKeyCount(uint64_t a1, CFTypeRef cf1)
{
  if (cf1 && CFEqual(cf1, @"comn"))
  {
    boxedreader_GetKeyCount_cold_1();
  }

  else
  {
    Identifiers = boxedreader_getIdentifiers(a1);
    v5 = boxedreader_copyUniqueKeysWithKeySpaceFromIdentifiers(*MEMORY[0x1E695E480], Identifiers, cf1);
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      CFRelease(v6);
      return Count;
    }
  }

  return 0;
}

uint64_t boxedReader_CopyKeyAtIndex(uint64_t a1, CFTypeRef cf1, CFIndex a3, const __CFAllocator *a4, void *a5)
{
  if (a3 < 0)
  {
    boxedReader_CopyKeyAtIndex_cold_4(&v15);
    return v15;
  }

  if (!a5)
  {
    boxedReader_CopyKeyAtIndex_cold_3(&v15);
    return v15;
  }

  if (cf1 && CFEqual(cf1, @"comn"))
  {
    boxedReader_CopyKeyAtIndex_cold_1(&v15);
    return v15;
  }

  Identifiers = boxedreader_getIdentifiers(a1);
  v11 = boxedreader_copyUniqueKeysWithKeySpaceFromIdentifiers(a4, Identifiers, cf1);
  if (CFArrayGetCount(v11) <= a3)
  {
    boxedReader_CopyKeyAtIndex_cold_2(&v15);
    v13 = v15;
    if (!v11)
    {
      return v13;
    }

    goto LABEL_9;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v11, a3);
  if (ValueAtIndex)
  {
    ValueAtIndex = CFRetain(ValueAtIndex);
  }

  v13 = 0;
  *a5 = ValueAtIndex;
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

  return v13;
}

CFIndex boxedreader_GetItemCount(uint64_t a1, const __CFString *cf1, const void *a3)
{
  if (cf1)
  {
    v6 = CFEqual(cf1, @"comn");
    if (!a3 && v6)
    {
      boxedreader_GetItemCount_cold_1();
      return 0;
    }
  }

  else if (a3)
  {
    boxedreader_GetItemCount_cold_2();
    return 0;
  }

  ItemIndexesMatchingKeyAndKeySpace = boxedreader_createItemIndexesMatchingKeyAndKeySpace(a1, cf1, a3);
  Count = CFArrayGetCount(ItemIndexesMatchingKeyAndKeySpace);
  if (ItemIndexesMatchingKeyAndKeySpace)
  {
    CFRelease(ItemIndexesMatchingKeyAndKeySpace);
  }

  return Count;
}

uint64_t boxedreader_CopyItemWithKeyAndIndex(uint64_t a1, const __CFString *cf1, const void *a3, CFIndex a4, const __CFAllocator *a5, void *a6, void *a7)
{
  valuePtr = 0;
  if (a4 < 0)
  {
    boxedreader_CopyItemWithKeyAndIndex_cold_4(&cf);
    return cf;
  }

  if (cf1)
  {
    v14 = CFEqual(cf1, @"comn");
    if (!a3 && v14)
    {
      boxedreader_CopyItemWithKeyAndIndex_cold_1(&cf);
      return cf;
    }
  }

  else if (a3)
  {
    boxedreader_CopyItemWithKeyAndIndex_cold_2(&cf);
    return cf;
  }

  ItemIndexesMatchingKeyAndKeySpace = boxedreader_createItemIndexesMatchingKeyAndKeySpace(a1, cf1, a3);
  if (CFArrayGetCount(ItemIndexesMatchingKeyAndKeySpace) <= a4)
  {
    boxedreader_CopyItemWithKeyAndIndex_cold_3(&cf);
    v30 = cf;
    if (!ItemIndexesMatchingKeyAndKeySpace)
    {
      return v30;
    }

    goto LABEL_41;
  }

  v32 = a6;
  v33 = a7;
  ValueAtIndex = CFArrayGetValueAtIndex(ItemIndexesMatchingKeyAndKeySpace, a4);
  CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
  cf = 0;
  Mutable = CFDictionaryCreateMutable(a5, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CMBaseObjectGetDerivedStorage();
  FigBoxedMetadataGetFormatDescription();
  FigBoxedMetadataGetLocalIDOfItemAtIndex();
  IdentifierForLocalID = FigMetadataFormatDescriptionGetIdentifierForLocalID();
  LanguageTagForLocalID = FigMetadataFormatDescriptionGetLanguageTagForLocalID();
  DataTypeForLocalID = FigMetadataFormatDescriptionGetDataTypeForLocalID();
  ConformingDataTypesForLocalID = FigMetadataFormatDescriptionGetConformingDataTypesForLocalID();
  keyOut = 0;
  keySpaceOut = 0;
  SizeOfItemAtIndex = FigBoxedMetadataGetSizeOfItemAtIndex();
  v22 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &SizeOfItemAtIndex);
  v23 = FigBoxedMetadataCopyValueOfItemAtIndexAsCFType();
  if (v23 || (v23 = CMMetadataCreateKeySpaceFromIdentifier(a5, IdentifierForLocalID, &keySpaceOut), v23) || (CFDictionarySetValue(Mutable, @"keyspace", keySpaceOut), v23 = CMMetadataCreateKeyFromIdentifier(a5, IdentifierForLocalID, &keyOut), v23))
  {
    v30 = v23;
    if (!v22)
    {
      goto LABEL_32;
    }

LABEL_31:
    CFRelease(v22);
    goto LABEL_32;
  }

  CFDictionarySetValue(Mutable, @"key", keyOut);
  CFDictionarySetValue(Mutable, @"dataLength", v22);
  if (DataTypeForLocalID)
  {
    CFDictionarySetValue(Mutable, @"dataType", DataTypeForLocalID);
    CFDictionarySetValue(Mutable, @"dataTypeNamespace", @"com.apple.coremedia");
  }

  if (ConformingDataTypesForLocalID)
  {
    CFDictionarySetValue(Mutable, @"conformingDataTypes", ConformingDataTypesForLocalID);
  }

  if (LanguageTagForLocalID)
  {
    CFDictionarySetValue(Mutable, @"extendedLanguageTag", LanguageTagForLocalID);
    v24 = CFLocaleCreate(a5, LanguageTagForLocalID);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(Mutable, @"locale", v24);
      v26 = FigMetadataCopyLangCodeFromLocale(v25);
      if (v26)
      {
        v27 = v26;
        CFDictionarySetValue(Mutable, @"languageCode", v26);
        CFRelease(v27);
      }

      CFRelease(v25);
    }
  }

  if (v32)
  {
    v28 = cf;
    if (cf)
    {
      v28 = CFRetain(cf);
    }

    *v32 = v28;
  }

  if (!v33)
  {
    v30 = 0;
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (Mutable)
  {
    v29 = CFRetain(Mutable);
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  *v33 = v29;
  if (v22)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (keySpaceOut)
  {
    CFRelease(keySpaceOut);
  }

  if (keyOut)
  {
    CFRelease(keyOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (ItemIndexesMatchingKeyAndKeySpace)
  {
LABEL_41:
    CFRelease(ItemIndexesMatchingKeyAndKeySpace);
  }

  return v30;
}

CFArrayRef boxedreader_getIdentifiers(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  FormatDescription = FigBoxedMetadataGetFormatDescription();

  return CMMetadataFormatDescriptionGetIdentifiers(FormatDescription);
}

const __CFArray *boxedreader_copyUniqueKeysWithKeySpaceFromIdentifiers(const __CFAllocator *a1, const __CFArray *a2, const void *a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a2) >= 1)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      if (boxedreader_identifierMatchesKeySpace(ValueAtIndex, a3))
      {
        keyOut = 0;
        if (!CMMetadataCreateKeyFromIdentifier(a1, ValueAtIndex, &keyOut))
        {
          v11.length = CFArrayGetCount(Mutable);
          v11.location = 0;
          if (!CFArrayContainsValue(Mutable, v11, keyOut))
          {
            CFArrayAppendValue(Mutable, keyOut);
          }
        }

        if (keyOut)
        {
          CFRelease(keyOut);
        }
      }

      ++v7;
    }

    while (v7 < CFArrayGetCount(a2));
  }

  return Mutable;
}

uint64_t boxedreader_identifierMatchesKeySpace(CFStringRef identifier, const void *a2)
{
  keySpaceOut = 0;
  if (!a2)
  {
    return 1;
  }

  if (CMMetadataCreateKeySpaceFromIdentifier(*MEMORY[0x1E695E480], identifier, &keySpaceOut))
  {
    v3 = 0;
  }

  else
  {
    v3 = CFEqual(keySpaceOut, a2);
  }

  if (keySpaceOut)
  {
    CFRelease(keySpaceOut);
  }

  return v3;
}

CFMutableArrayRef boxedreader_createItemIndexesMatchingKeyAndKeySpace(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CMBaseObjectGetDerivedStorage();
  NumberOfItems = FigBoxedMetadataGetNumberOfItems();
  if (NumberOfItems >= 1)
  {
    v8 = NumberOfItems;
    v9 = 0;
    if (a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = a3 == 0;
    }

    v11 = v10;
    while (1)
    {
      if (!FigBoxedMetadataGetLocalIDOfItemAtIndex())
      {
        goto LABEL_17;
      }

      FigBoxedMetadataGetFormatDescription();
      IdentifierForLocalID = FigMetadataFormatDescriptionGetIdentifierForLocalID();
      if (!boxedreader_identifierMatchesKeySpace(IdentifierForLocalID, a2))
      {
        goto LABEL_17;
      }

      identifierOut = 0;
      if ((v11 & 1) == 0)
      {
        boxedreader_createItemIndexesMatchingKeyAndKeySpace_cold_1();
        goto LABEL_17;
      }

      if (!a3)
      {
LABEL_16:
        FigCFArrayAppendInt32();
        goto LABEL_17;
      }

      v13 = CMMetadataCreateIdentifierForKeyAndKeySpace(v5, a3, a2, &identifierOut);
      v14 = identifierOut;
      if (!v13)
      {
        break;
      }

      v16 = 1;
      if (identifierOut)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v8 == ++v9)
      {
        return Mutable;
      }
    }

    v15 = CFEqual(IdentifierForLocalID, identifierOut);
    v14 = identifierOut;
    v16 = v15 == 0;
    if (!identifierOut)
    {
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(v14);
    goto LABEL_15;
  }

  return Mutable;
}

uint64_t CreatePesPrivateForMP3(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x138uLL, 0x10B0040459D684BuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  *v4 = v4 + 38;
  v4[2] = v4 + 308;
  v4[3] = 4;
  v4[4] = MP3CheckHeader;
  v4[5] = MP3CompareHeaders;
  v4[6] = MP3GetSamplesPerFrame;
  v4[7] = MP3GetSampleFrequency;
  v4[8] = MP3GetFrameSize;
  a1[105] = PesMP3ProcessData;
  a1[106] = PesMP3CleanPrivateData;
  a1[107] = PesMP3DeletePrivateData;
  a1[6] = v4;
  return result;
}

BOOL MP3CheckHeader(unsigned int *a1)
{
  result = 0;
  v3 = bswap32(*a1);
  if ((v3 & 0x60000) != 0 && v3 >= 0xFFE00000 && (v3 & 0x180000) != 0x80000)
  {
    v4 = v3 & 0xF000;
    if ((v3 & 0xF000) != 0)
    {
      v5 = (~v3 & 0xC00) != 0;
      return v4 != 61440 && v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void PesMP3DeletePrivateData(uint64_t a1)
{
  MPEGAudioCleanPrivateData(*(a1 + 48));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t figTTMLCaptionWriter_RegisterFigTTMLCaptionWriterBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigTTMLCaptionWriterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigTTMLCaptionWriterGetClassID_sRegisterFigTTMLCaptionWriterBaseTypeOnce, figTTMLCaptionWriter_RegisterFigTTMLCaptionWriterBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigTTMLCaptionWriterAddCaption(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v6(a1, a2, v9);
}

uint64_t FigTTMLCaptionWriterFinish(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigTTMLCaptionWriterInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  v2 = *(*(CMBaseObjectGetVTable() + 8) + 24);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t RegisterFigVideoTargetType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoTargetGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigVideoTargetCreateLocalWithVideoReceiverEndpointID(const __CFAllocator *a1, void *a2, uint64_t a3, void *a4)
{
  v18 = 0;
  v17 = 0;
  cf = 0;
  if (!a4)
  {
    FigVideoTargetCreateLocalWithVideoReceiverEndpointID_cold_2(&v19);
LABEL_23:
    v12 = 0;
    v13 = v19;
    goto LABEL_16;
  }

  if (!a2)
  {
    FigVideoTargetCreateLocalWithVideoReceiverEndpointID_cold_1(&v19);
    goto LABEL_23;
  }

  v7 = videoTarget_create(a1, &cf);
  if (v7)
  {
    v13 = v7;
    v12 = 0;
    v10 = cf;
  }

  else
  {
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      v8 = v17 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v12 = CFDictionaryCreate(a1, &kFigVideoReceiverCreationOption_ServerIsInSuspendibleProcess, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v10 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __FigVideoTargetCreateLocalWithVideoReceiverEndpointID_block_invoke;
      v15[3] = &__block_descriptor_tmp_55;
      v15[4] = v10;
      RemoteAsync = FigVideoReceiverCreateRemoteAsync(a1, a2, v12, v15);
      if (!RemoteAsync)
      {
        goto LABEL_15;
      }

LABEL_11:
      v13 = RemoteAsync;
      goto LABEL_26;
    }

    v9 = FigVideoReceiverCreateRemote(a1, a2, 0, &v18);
    v10 = cf;
    if (!v9)
    {
      RemoteAsync = videoTarget_attachToVideoReceiver(cf, v18);
      v12 = 0;
      if (!RemoteAsync)
      {
LABEL_15:
        v13 = 0;
        *a4 = v10;
        cf = 0;
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v13 = v9;
    v12 = 0;
  }

LABEL_26:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_16:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t videoTarget_create(uint64_t a1, CFTypeRef *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType);
  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    return v3;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = dispatch_queue_create("com.apple.coremedia.videotarget.notification", 0);
  *(DerivedStorage + 16) = v5;
  if (!v5)
  {
    v12 = 1230;
LABEL_19:
    videoTarget_create_cold_1(v12, __dst);
    return *__dst;
  }

  *(DerivedStorage + 104) = FigSimpleMutexCreate();
  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 88) = CFRetain(@"Loading");
  *(DerivedStorage + 64) = 0;
  v6 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v6;
  if (!v6)
  {
    v12 = 1239;
    goto LABEL_19;
  }

  v3 = FigCFWeakReferenceTableCreate();
  if (v3)
  {
    return v3;
  }

  *(DerivedStorage + 32) = 1;
  v7 = FigSimpleMutexCreate();
  *(DerivedStorage + 40) = v7;
  if (!v7)
  {
    v12 = 1246;
    goto LABEL_19;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    v8 = *(DerivedStorage + 24);
    *buffer = 0;
    if (v8)
    {
      if (CFStringGetLength(v8) <= 8)
      {
        v9.length = CFStringGetLength(v8);
      }

      else
      {
        v9.length = 8;
      }

      v9.location = 0;
      CFStringGetBytes(v8, v9, 0, 0x3Fu, 0, buffer, 8, 0);
    }

    strncpy(__dst, buffer, 8uLL);
    kdebug_trace();
  }

  v10 = 0;
  *a2 = 0;
  return v10;
}

void __FigVideoTargetCreateLocalWithVideoReceiverEndpointID_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    videoTarget_setVideoReceiverLoadingState(v4, @"Failed", a2);
  }

  else
  {
    videoTarget_attachToVideoReceiver(v4, a3);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t videoTarget_setVideoReceiverLoadingState(const void *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = FigCFEqual();
  v8 = *(DerivedStorage + 88);
  *(DerivedStorage + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  *(DerivedStorage + 96) = v3;
  if (dword_1EAF172C8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v7)
  {
    videoTarget_postReceiverLoadingStateDidChangeNotification(a1, a2, v3);
  }

  return FigSimpleMutexUnlock();
}

uint64_t videoTarget_attachToVideoReceiver(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    videoTarget_attachToVideoReceiver_cold_3(&cf);
    return cf;
  }

  v5 = @"Failed";
  if (a2)
  {
    v6 = DerivedStorage;
    if (!*(DerivedStorage + 8))
    {
      *(DerivedStorage + 8) = CFRetain(a2);
      CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      FigSimpleMutexLock();
      cf = 0;
      v7 = CFGetAllocator(a1);
      FigVideoReceiverGetCMBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(v9, 0x1F0B51E18, v7, &cf);
        if (cf)
        {
          FigCFDictionaryGetBooleanIfPresent();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      FigSimpleMutexUnlock();
      v11 = CFGetAllocator(a1);
      FigVideoReceiverGetCMBaseObject();
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v15 = v14(v13, @"LoggingIdentifier", v11, v6 + 24);
        if (!v15)
        {
          v5 = @"Complete";
        }
      }

      else
      {
        v15 = 4294954514;
      }

      goto LABEL_13;
    }

    videoTarget_attachToVideoReceiver_cold_1(&cf);
  }

  else
  {
    videoTarget_attachToVideoReceiver_cold_2(&cf);
  }

  v15 = cf;
LABEL_13:
  videoTarget_setVideoReceiverLoadingState(a1, v5, 0);
  return v15;
}

uint64_t FigVideoTargetCreateLocalWithVideoReceiver(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v10 = 0;
  if (!a4)
  {
    FigVideoTargetCreateLocalWithVideoReceiver_cold_2(&v11);
    return v11;
  }

  if (!a2)
  {
    FigVideoTargetCreateLocalWithVideoReceiver_cold_1(&v11);
    return v11;
  }

  v6 = videoTarget_create(a1, &v10);
  v7 = v10;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = videoTarget_attachToVideoReceiver(v10, a2);
    if (!v8)
    {
      *a4 = v7;
      return v8;
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void videoTarget_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  v2 = DerivedStorage[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = DerivedStorage[6];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[6] = 0;
  }

  FigSimpleMutexDestroy();
  v4 = DerivedStorage[10];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[10] = 0;
  }

  v5 = DerivedStorage[9];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[9] = 0;
  }

  if (DerivedStorage[7])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[7] = 0;
  }

  if (DerivedStorage[13])
  {
    FigSimpleMutexDestroy();
    DerivedStorage[13] = 0;
  }

  v6 = DerivedStorage[11];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[11] = 0;
  }

  v7 = DerivedStorage[1];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[1] = 0;
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[3] = 0;
  }
}

__CFString *videoTarget_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 24);
  v6 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoTarget [%p|%@] retainCount: %ld>", a1, v5, v6);
  return Mutable;
}

uint64_t videoTarget_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (!a2)
  {
    videoTarget_CopyProperty_cold_5(&v20);
    return v20;
  }

  if (!a4)
  {
    videoTarget_CopyProperty_cold_4(&v20);
    return v20;
  }

  *a4 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  CMBaseObjectGetDerivedStorage();
  if (!FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey(a2, &v20))
  {
LABEL_7:
    if (FigCFEqual())
    {
      v14 = DerivedStorage[3];
      if (v14)
      {
        Copy = CFStringCreateCopy(a3, v14);
        if (!Copy)
        {
          videoTarget_CopyProperty_cold_2();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      goto LABEL_19;
    }

    if (FigCFEqual())
    {
      v16 = DerivedStorage[1];
      if (!v16)
      {
        return 4294951734;
      }

      goto LABEL_18;
    }

    if (CFEqual(a2, @"InstanceType"))
    {
      v17 = kFigVideoTargetInstanceType_Local;
LABEL_17:
      v16 = *v17;
LABEL_18:
      Copy = CFRetain(v16);
LABEL_19:
      result = 0;
      *a4 = Copy;
      return result;
    }

    if (!CFEqual(a2, @"LastSampledCVPixelBuffer"))
    {
      if (CFEqual(a2, @"ReceiverLoadingState"))
      {
        FigSimpleMutexLock();
        v18 = DerivedStorage[11];
        if (v18)
        {
          v18 = CFRetain(v18);
        }

        *a4 = v18;
        FigSimpleMutexUnlock();
        return 0;
      }

      if (!CFEqual(a2, @"IsValid"))
      {
        return 4294954509;
      }

      FigSimpleMutexLock();
      v19 = FigCFEqual();
      FigSimpleMutexUnlock();
      v17 = MEMORY[0x1E695E4D0];
      if (v19)
      {
        v17 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_17;
    }

    if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
    {
      return FigVideoReceiverCopyProperty(DerivedStorage[1], @"LastSampledCVPixelBuffer", a3, a4);
    }

    videoTarget_CopyProperty_cold_3(&v20);
    return v20;
  }

  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    videoTarget_CopyProperty_cold_1();
    goto LABEL_7;
  }

  v9 = v20;
  FigVideoReceiverGetCMBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    goto LABEL_7;
  }

  result = v12(v11, v9, a3, a4);
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t videoTarget_SetProperty(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (v7 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType), v7 != CMBaseClassGetCFTypeID()))
  {
    videoTarget_SetProperty_cold_4(&cf);
    return cf;
  }

  if (!a2)
  {
    videoTarget_SetProperty_cold_3(&cf);
    return cf;
  }

  if (!a3)
  {
    videoTarget_SetProperty_cold_2(&cf);
    return cf;
  }

  CMBaseObjectGetDerivedStorage();
  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    videoTarget_SetProperty_cold_1(&cf);
    return cf;
  }

  cf = 0;
  CMBaseObjectGetDerivedStorage();
  if (!FigVideoTargetGetCorrespondingVideoReceiverPropertyForVideoTargetPropertyKey(a2, &cf))
  {
    return 4294954509;
  }

  v8 = cf;
  FigVideoReceiverGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v11)
  {
    return 4294954509;
  }

  result = v11(v10, v8, a3);
  if (result)
  {
    return 4294954509;
  }

  return result;
}

uint64_t videoTarget_reflectReceiverNotification(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a3, @"DesiredPixelCountChanged") || CFEqual(a3, @"RefreshRateChanged") || CFEqual(a3, @"PreferredDataChannelGroupsChanged") || CFEqual(a3, @"DataChannelSettingsChanged"))
  {
    goto LABEL_3;
  }

  if (!CFEqual(a3, @"PlaybackStartupPreventionAssertionAcquired"))
  {
    if (CFEqual(a3, @"PlaybackStartupPreventionAssertionReleased"))
    {
      FigSimpleMutexLock();
      v10 = *(DerivedStorage + 72);
      if (v10)
      {
        CFRelease(v10);
        *(DerivedStorage + 72) = 0;
      }

      *(DerivedStorage + 64) = 0;
      goto LABEL_18;
    }

    if (!CFEqual(a3, @"IsBeingServicedStatusChanged"))
    {
      result = CFEqual(a3, @"DisplayChanged");
      if (!result)
      {
        return result;
      }
    }

LABEL_3:
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  FigSimpleMutexLock();
  Value = FigCFDictionaryGetValue();
  v9 = *(DerivedStorage + 72);
  *(DerivedStorage + 72) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *(DerivedStorage + 64) = 1;
LABEL_18:
  FigCFWeakReferenceTableApplyFunction();

  return FigSimpleMutexUnlock();
}

uint64_t FigVideoReceiverCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigVideoReceiverGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

uint64_t videoTarget_createFigImageQueue(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v8 = DerivedStorage, v9 = CFGetTypeID(a1), MEMORY[0x19A8D3660](&FigVideoTargetGetClassID_sRegisterFigVideoTargetTypeOnce, RegisterFigVideoTargetType), v9 != CMBaseClassGetCFTypeID()))
  {
    videoTarget_createFigImageQueue_cold_4(&v19);
LABEL_3:
    Key = v19;
    goto LABEL_18;
  }

  if (!a3)
  {
    videoTarget_createFigImageQueue_cold_3(&v19);
    goto LABEL_3;
  }

  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    videoTarget_createFigImageQueue_cold_2(&v19);
    goto LABEL_3;
  }

  v10 = *(v8 + 8);
  v11 = *(*(CMBaseObjectGetVTable() + 24) + 40);
  if (!v11)
  {
    Key = 4294954514;
    goto LABEL_18;
  }

  v12 = v11(v10, a2, &cf);
  if (!v12)
  {
    FigSimpleMutexLock();
    if (!*(v8 + 64))
    {
      goto LABEL_13;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      FigImageQueueGetFigBaseObject();
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        Key = v17(v16, @"RendererPreparationInfo", v14);
        CFRelease(v14);
        if (!Key)
        {
LABEL_13:
          v19 = 0;
          Key = FigCFWeakReferenceTableAddValueAndGetKey();
          if (!Key)
          {
            FigSimpleMutexUnlock();
            *a3 = cf;
            return Key;
          }
        }
      }

      else
      {
        CFRelease(v14);
        Key = 4294954514;
      }
    }

    else
    {
      videoTarget_createFigImageQueue_cold_1(&v19);
      Key = v19;
    }

    FigSimpleMutexUnlock();
    goto LABEL_18;
  }

  Key = v12;
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  return Key;
}

uint64_t videoTarget_createFigDataQueue(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v9)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    v12 = *a4;
    v13 = *(a4 + 2);
    v10 = *(*(CMBaseObjectGetVTable() + 24) + 48);
    if (v10)
    {
      v18 = v14;
      v19 = v15;
      v16 = v12;
      v17 = v13;
      return v10(v9, a2, &v18, &v16, a5);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    videoTarget_createFigDataQueue_cold_1(&v18);
    return v18;
  }
}

uint64_t videoTarget_createFigDataChannelResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  if (v7)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 24) + 56);
    if (v8)
    {

      return v8(v7, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    videoTarget_createFigDataChannelResource_cold_1(&v10);
    return v10;
  }
}

uint64_t videoTarget_copyPreferredDataChannelGroups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
    {
      CMBaseObjectGetDerivedStorage();
      FigVideoReceiverGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {

        return v7(v6, 0x1F0B51EF8, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      videoTarget_copyPreferredDataChannelGroups_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    videoTarget_copyPreferredDataChannelGroups_cold_2(&v10);
    return v10;
  }
}

uint64_t videoTarget_copyDataChannelSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
    {
      CMBaseObjectGetDerivedStorage();
      FigVideoReceiverGetCMBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {

        return v7(v6, 0x1F0B51F18, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      videoTarget_copyDataChannelSettings_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    videoTarget_copyDataChannelSettings_cold_2(&v10);
    return v10;
  }
}

uint64_t videoTarget_beginTransitionToDataChannelConfigurationAtHostTime(uint64_t a1, const void *a2, __int128 *a3)
{
  if (!a2)
  {
    videoTarget_beginTransitionToDataChannelConfigurationAtHostTime_cold_2(&v4);
    return v4.n128_u32[0];
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    videoTarget_beginTransitionToDataChannelConfigurationAtHostTime_cold_1(&v4);
    return v4.n128_u32[0];
  }

  v4 = *a3;
  v5 = *(a3 + 2);
  return videoTarget_beginTransitionToDataChannelConfigurationInternal(a1, a2, 0, &v4);
}

uint64_t videoTarget_beginTransitionToDataChannelConfigurationImmediately(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x1E6960C70];

    return videoTarget_beginTransitionToDataChannelConfigurationInternal(a1, a2, 1, v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    videoTarget_beginTransitionToDataChannelConfigurationImmediately_cold_1(&v6);
    return v6;
  }
}

uint64_t videoTarget_setActive(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    FigSimpleMutexLock();
    if (*(v5 + 32) == a2)
    {
LABEL_15:
      FigSimpleMutexUnlock();
      return 0;
    }

    if (dword_1EAF172C8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = *(v5 + 48);
    if (a2)
    {
      if (!v7)
      {
        LOBYTE(a2) = 1;
LABEL_14:
        *(v5 + 32) = a2;
        goto LABEL_15;
      }

      if (!*(v5 + 8))
      {
        LOBYTE(a2) = 1;
LABEL_13:
        CFRelease(v7);
        *(v5 + 48) = 0;
        goto LABEL_14;
      }

      LOBYTE(a2) = 1;
      videoTarget_addDataChannelConfigurationToReceiver(a1, v7, 1, MEMORY[0x1E6960C70]);
      v7 = *(v5 + 48);
    }

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  videoTarget_setActive_cold_1(v9);
  return v9[0];
}

uint64_t videoTarget_beginTransitionToDataChannelConfigurationInternal(uint64_t a1, const void *a2, uint64_t a3, __n128 *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    videoTarget_beginTransitionToDataChannelConfigurationInternal_cold_3(&v13);
    return v13;
  }

  v9 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    videoTarget_beginTransitionToDataChannelConfigurationInternal_cold_2(&v13);
    return v13;
  }

  if (!*(v9 + 8))
  {
    videoTarget_beginTransitionToDataChannelConfigurationInternal_cold_1(&v13);
    return v13;
  }

  FigSimpleMutexLock();
  if (*(v9 + 32))
  {
    v13 = *a4;
    v14 = a4[1].n128_u64[0];
    v10 = videoTarget_addDataChannelConfigurationToReceiver(a1, a2, a3, &v13);
  }

  else
  {
    if (a3)
    {
      v11 = *(v9 + 48);
      *(v9 + 48) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    v10 = 0;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t videoTarget_addDataChannelConfigurationToReceiver(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 8);
  v10 = *a4;
  v11 = *(a4 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 24) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, a2, a3, &v12);
}

uint64_t videoTarget_addLayerToLayerSynchronizerConfiguration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = DerivedStorage;
    if (remoteXPCVideoTarget_isFullySetupWithServer(a1))
    {
      if (a2 && (v6 = CFGetTypeID(a2), v6 == FigLayerSynchronizerConfigurationGetTypeID(v6, v7)))
      {
        v8 = *(v5 + 8);
        v9 = *(*(CMBaseObjectGetVTable() + 24) + 104);
        if (v9)
        {

          return v9(v8, a2);
        }

        else
        {
          return 4294954514;
        }
      }

      else
      {
        videoTarget_addLayerToLayerSynchronizerConfiguration_cold_1(&v11);
        return v11;
      }
    }

    else
    {
      videoTarget_addLayerToLayerSynchronizerConfiguration_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    videoTarget_addLayerToLayerSynchronizerConfiguration_cold_3(&v13);
    return v13;
  }
}

uint64_t videoTarget_updateDurationWithDeferredTransaction(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    videoTarget_updateDurationWithDeferredTransaction_cold_2(&v13);
    return v13;
  }

  v7 = DerivedStorage;
  if (!remoteXPCVideoTarget_isFullySetupWithServer(a1))
  {
    videoTarget_updateDurationWithDeferredTransaction_cold_1(&v13);
    return v13;
  }

  v8 = *(v7 + 8);
  v11 = *a2;
  v12 = *(a2 + 2);
  v9 = *(*(CMBaseObjectGetVTable() + 24) + 120);
  if (!v9)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  result = v9(v8, &v13, a3);
  if (result == -12782)
  {
    return 0;
  }

  return result;
}

uint64_t videoTarget_rebroadcastLoadingStateIfSetup(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    FigSimpleMutexLock();
    if (FigCFEqual() || FigCFEqual())
    {
      videoTarget_postReceiverLoadingStateDidChangeNotification(a1, *(v3 + 88), *(v3 + 96));
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    videoTarget_rebroadcastLoadingStateIfSetup_cold_1(&v5);
    return v5;
  }
}

void videoTarget_postReceiverLoadingStateDidChangeNotification(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  FigCFDictionarySetValue();
  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __videoTarget_postReceiverLoadingStateDidChangeNotification_block_invoke;
  v8[3] = &__block_descriptor_tmp_20_0;
  v8[4] = a1;
  v8[5] = Mutable;
  dispatch_async(v7, v8);
}

void __videoTarget_postReceiverLoadingStateDidChangeNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t CreatePesPrivateForMPEG2Video(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x130uLL, 0x10B004003C638B1uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  a1[6] = v3;
  a1[105] = MPEG2VideoProcessData;
  a1[106] = MPEG2VideoCleanPrivateData;
  a1[107] = MPEG2VideoDeletePrivateData;
  a1[108] = MPEG2VideoFlushFrames;
  PesFrameHeadersInit((a1 + 68), 8uLL);
  MPEG2VideoCleanPrivateData(a1);
  v4[16] = 0;
  v4 += 16;
  v4[1] = v4;
  FrameQueueEntryInit((v4 + 2));
  return 0;
}

void *MPEG2VideoCleanPrivateData(uint64_t a1)
{
  v1 = *(a1 + 48);
  *v1 = -1;
  *(v1 + 80) = 0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  v2 = *(v1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(v1 + 88) = 0;
  }

  *(v1 + 113) = 0;
  *(v1 + 296) = 0;
  *(v1 + 300) = 0;
  FrameQueueEntryClean(v1 + 144);

  return FrameQueueClean((v1 + 128));
}

void MPEG2VideoDeletePrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  MPEG2VideoCleanPrivateData(a1);
  PesFrameHeaderDestroy((v2 + 232));
  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

void *MPEG2VideoFlushFrames(void *a1)
{
  v2 = a1[6];
  v7 = 0;
  v6 = 0;
  v3 = v2[11];
  if (v3)
  {
    PesAddBlockBufferToFrameBlockBuffer(a1, v3, v2[12], v2[13], 0, &v7, &v6);
    v4 = v2[11];
    if (v4)
    {
      CFRelease(v4);
      v2[11] = 0;
    }
  }

  if (a1[77] || a1[64])
  {
    MPEG2VideoEmitBuffer(a1, v2);
  }

  FigMPEG2VideoFrameFlush(a1);
  return MPEG2VideoCleanPrivateData(a1);
}

uint64_t MPEG2VideoInitialize(void *a1)
{
  a1[21] = MPEG2VideoInject;
  a1[22] = MPEG2VideoReset;
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x10A0040A345989DuLL);
  if (!v2)
  {
    return 12;
  }

  *v2 = a1;
  v2[10] = 1;
  *(v2 + 3) = 0;
  *(v2 + 4) = v2 + 6;
  v3 = a1[2];
  *(v2 + 1) = v3;
  if (v3)
  {
    *(v3 + 16) = v2 + 2;
  }

  v5 = 0;
  a1[2] = v2;
  *(v2 + 2) = a1 + 2;
  return AddPes(a1, v2, 0, 1836476772, 0, 1, 1, 1, 1, &v5);
}

uint64_t MPEG2VideoInject(uint64_t a1, CMBlockBufferRef theBuffer, uint64_t a3)
{
  v8 = 0u;
  v9 = 0u;
  v4 = *(a1 + 24);
  if (*(v4 + 451))
  {
    v5 = 0;
  }

  else
  {
    *&v8 = 10000;
    v5 = 1;
    BYTE8(v9) = 1;
    *(v4 + 451) = 1;
  }

  *(&v9 + 9) = v5;
  *&v9 = a3;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  return MPEG2VideoProcessWork(v4, theBuffer, 0, 0, DataLength, &v8, 1);
}

uint64_t MPEG2VideoReset(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(v1 + 451) = 0;
  }

  return result;
}

uint64_t MPEG2VideoProcessWork(uint64_t a1, OpaqueCMBlockBuffer *a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 616);
  if (*(v9 + 88))
  {
    v10 = v10 + *(v9 + 104) - 4;
  }

  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  offset = v11;
  if (*(a6 + 24))
  {
    *(v9 + 72) = 0;
    *(v9 + 8) = *(v9 + 40);
    *(v9 + 24) = *(v9 + 56);
    v12 = *(a6 + 16);
    *(v9 + 40) = *a6;
    *(v9 + 56) = v12;
  }

  v79 = a5;
  v13 = v11;
  v14 = (v11 + a5);
  v84 = 0;
  dataPointerOut = 0;
  v83 = 0;
  v74 = *MEMORY[0x1E695E488];
  blockAllocator = *MEMORY[0x1E695E480];
  v72 = (v11 + a5);
  while (1)
  {
    if (v7)
    {
      dataPointerOut = v7;
      v15 = v14;
    }

    else
    {
      lengthAtOffsetOut = 0;
      DataPointer = CMBlockBufferGetDataPointer(a2, v13, &lengthAtOffsetOut, 0, &dataPointerOut);
      v15 = lengthAtOffsetOut + v13;
      if (v14 < lengthAtOffsetOut + v13)
      {
        v15 = v14;
      }

      if (DataPointer)
      {
LABEL_146:
        v64 = DataPointer;
        goto LABEL_147;
      }
    }

    if (v13 < v15)
    {
      break;
    }

LABEL_138:
    if (v13 >= v14)
    {
      if (!a2 || !*(v9 + 80) || !*(v9 + 112))
      {
        return 0;
      }

      v65 = *(v9 + 88);
      if (v65)
      {
        PesAddBlockBufferToFrameBlockBuffer(a1, v65, *(v9 + 96), *(v9 + 104), 0, &v84, &v83);
        v64 = v66;
        v67 = *(v9 + 88);
        v68 = v79;
        v69 = offset;
        if (v67)
        {
          CFRelease(v67);
        }
      }

      else
      {
        v64 = 0;
        v68 = v79;
        v69 = offset;
      }

      *(v9 + 88) = CFRetain(a2);
      *(v9 + 96) = v69;
      *(v9 + 104) = v68;
      return v64;
    }
  }

  v17 = 3 - v13;
  v18 = v13 - 3;
  v73 = v15;
  v81 = -v15;
  while (1)
  {
    v19 = *v9;
    v20 = v19 << 8;
    *v9 <<= 8;
    v21 = dataPointerOut;
    v22 = *dataPointerOut;
    v23 = v22 | (v19 << 8);
    *v9 = v23;
    dataPointerOut = v21 + 1;
    v24 = v18 + 4;
    v25 = *(v9 + 72) + 1;
    *(v9 + 72) = v25;
    if (*(v9 + 80))
    {
      break;
    }

    if (v20 == 256)
    {
      if (v23 == 440 || v23 == 435)
      {
        *(v9 + 80) = 1;
        if (v23 == 435)
        {
          *(a1 + 536) |= 2u;
        }

        goto LABEL_46;
      }

      if (v23 == 256)
      {
        *(v9 + 80) = 2;
        *(v9 + 120) = 0;
        v30 = 40;
        if (v25 < 4)
        {
          v30 = 8;
        }

        v31 = 64;
        if (v25 < 4)
        {
          v31 = 32;
        }

        v32 = 65;
        if (v25 < 4)
        {
          v32 = 33;
        }

        v33 = 66;
        if (v25 < 4)
        {
          v33 = 34;
        }

        v34 = 48;
        if (v25 < 4)
        {
          v34 = 16;
        }

        *(a1 + 504) = *(v9 + v31);
        *(a1 + 505) = *(v9 + v32);
        v35 = *(v9 + v30);
        v36 = *(v9 + v33);
        v37 = *(v9 + v34);
        *(v9 + v32) = 0;
        *(v9 + v33) = 0;
        *(a1 + 506) = v36;
        *(a1 + 480) = v35;
        *(a1 + 488) = v37;
LABEL_46:
        if (a7)
        {
          *(a1 + 496) = v18 + *(a6 + 16);
          *(a1 + 504) = 1;
        }

        else
        {
          v38 = v25 >= 4;
          v39 = 56;
          if (!v38)
          {
            v39 = 24;
          }

          *(a1 + 496) = *(v9 + v39);
        }

        PesFrameHeaderAddOffset(a1 + 544, 0, v22);
        if (v24 >= offset + 4)
        {
          v10 = 0;
          if (a4)
          {
            v40 = 0;
          }

          else
          {
            v40 = *(a1 + 116) == 0;
          }

          v41 = v40;
          *(v9 + 112) = v41;
          v79 += v17 + offset;
          offset = v18;
        }

        else
        {
          v10 = 0;
          *(v9 + 112) = 0;
        }
      }
    }

LABEL_135:
    --v17;
    ++v18;
    ++v13;
    if (v81 + v18 == -3)
    {
      v14 = v72;
      v13 = v73;
      v7 = a4;
      goto LABEL_138;
    }
  }

  if (*(v9 + 112))
  {
LABEL_71:
    ++v10;
    if (v20 == 256)
    {
      lengthAtOffsetOut = 0;
      LODWORD(v44) = *v9;
      if (*(v9 + 80) == 1)
      {
        if (v44 == 256)
        {
          v45 = 0;
          *(v9 + 80) = 2;
          goto LABEL_109;
        }

LABEL_84:
        v45 = 0;
      }

      else
      {
        if (((v44 - 435) > 5 || ((1 << (v44 + 77)) & 0x31) == 0) && v44 != 256)
        {
          goto LABEL_84;
        }

        if (*(v9 + 112))
        {
          v46 = *(v9 + 88);
          v47 = offset;
          v48 = offset + 4;
          if (v46)
          {
            if (v24 >= v48)
            {
              PesAddBlockBufferToFrameBlockBuffer(a1, v46, *(v9 + 96), *(v9 + 104), 0, &v84, &v83);
              if (DataPointer)
              {
                goto LABEL_146;
              }

              v50 = *(v9 + 88);
              if (v50)
              {
                CFRelease(v50);
              }

              v45 = 0;
              *(v9 + 88) = 0;
            }

            else
            {
              v49 = *(v9 + 104);
              if (v49 <= offset + v17)
              {
                v45 = v17 + offset - v49;
                *(a1 + 616) = v18 + v49 + *(a1 + 616) - offset;
                DataPointer = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, v45, blockAllocator, 0, 0, v45, 1u, &lengthAtOffsetOut);
                if (DataPointer)
                {
                  goto LABEL_146;
                }

                v47 = offset;
                DataPointer = CMBlockBufferFillDataBytes(0, lengthAtOffsetOut, 0, v45);
                if (DataPointer)
                {
                  goto LABEL_146;
                }
              }

              else
              {
                PesAddBlockBufferToFrameBlockBuffer(a1, v46, *(v9 + 96), v18 + v49 - offset, 0, &v84, &v83);
                if (DataPointer)
                {
                  goto LABEL_146;
                }

                v45 = 0;
                *(v9 + 96) = v18 + *(v9 + 104) + *(v9 + 96) - offset;
                *(v9 + 104) = offset + v17;
                v47 = offset;
              }
            }
          }

          else
          {
            v45 = 0;
          }

          if (v18 + 3 >= v48)
          {
            PesAddBlockBufferToFrameBlockBuffer(a1, a2, v47, v18 - v47, 0, &v84, &v83);
            if (DataPointer)
            {
              goto LABEL_146;
            }

            v79 -= v13 - 3 - v47;
            v47 = v13 - 3;
          }
        }

        else
        {
          v45 = 0;
          v79 += v17 + offset;
          v47 = v18;
        }

        DataPointer = MPEG2VideoEmitBuffer(a1, v9);
        if (DataPointer)
        {
          goto LABEL_146;
        }

        if (a7)
        {
          *(a1 + 496) = v18 + *(a6 + 16);
          *(a1 + 504) = 1;
        }

        else
        {
          v51 = 56;
          if (*(v9 + 72) < 4uLL)
          {
            v51 = 24;
          }

          *(a1 + 496) = *(v9 + v51);
        }

        offset = v47;
        if (a4)
        {
          v52 = 0;
        }

        else
        {
          v52 = *(a1 + 116) == 0;
        }

        v53 = v52;
        *(v9 + 112) = v53;
        LODWORD(v44) = *v9;
        if (*v9 == 256)
        {
          v10 = 0;
LABEL_109:
          *(v9 + 120) = v10;
          v54 = 40;
          if (*(v9 + 72) < 4uLL)
          {
            v54 = 8;
          }

          v55 = 64;
          if (*(v9 + 72) < 4uLL)
          {
            v55 = 32;
          }

          v56 = 65;
          if (*(v9 + 72) < 4uLL)
          {
            v56 = 33;
          }

          v57 = 66;
          if (*(v9 + 72) < 4uLL)
          {
            v57 = 34;
          }

          v58 = 48;
          if (*(v9 + 72) < 4uLL)
          {
            v58 = 16;
          }

          *(a1 + 504) = *(v9 + v55);
          *(a1 + 505) = *(v9 + v56);
          v44 = *(v9 + v54);
          v59 = *(v9 + v57);
          v60 = *(v9 + v58);
          *(v9 + v56) = 0;
          *(v9 + v57) = 0;
          *(a1 + 506) = v59;
          *(a1 + 480) = v44;
          *(a1 + 488) = v60;
          LOBYTE(v44) = 0;
        }

        else
        {
          v10 = 0;
          *(v9 + 80) = 1;
        }
      }

      PesFrameHeaderAddOffset(a1 + 544, v10, v44);
      v61 = *v9;
      if (*v9 > 438)
      {
        if (v61 == 439)
        {
          v62 = *(a1 + 536) | 0x800;
LABEL_130:
          *(a1 + 536) = v62;
        }

        else if (v61 == 440)
        {
          *(v9 + 113) = 1;
        }
      }

      else if (v61 == 434)
      {
        *(v9 + 114) = 1;
      }

      else if (v61 == 435)
      {
        v62 = *(a1 + 536) | 2;
        goto LABEL_130;
      }

      if (lengthAtOffsetOut)
      {
        PesAddBlockBufferToFrameBlockBuffer(a1, lengthAtOffsetOut, 0, v45, 0, &v84, &v83);
        v64 = v63;
        if (lengthAtOffsetOut)
        {
          CFRelease(lengthAtOffsetOut);
        }

        if (v64)
        {
          goto LABEL_147;
        }
      }

      goto LABEL_135;
    }

    goto LABEL_135;
  }

  v26 = *(a1 + 624);
  if (!*(a1 + 608))
  {
    if (v26)
    {
      if (*(a1 + 119))
      {
        v26 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
      }
    }

    else
    {
      v26 = *(a1 + 640);
      if (!v26)
      {
        *(a1 + 640) = 0x2000;
        v26 = 0x2000;
        if (!(*(*(a1 + 8) + 104) >> 13))
        {
          goto LABEL_28;
        }
      }
    }

    v43 = MEMORY[0x19A8CC720](v74, v26, 0x100004077774924, 0);
    *(a1 + 608) = v43;
    if (!v43)
    {
      goto LABEL_151;
    }

    *(a1 + 632) = v26;
    *(a1 + 616) = 0;
    goto LABEL_68;
  }

  v27 = *(a1 + 616);
  if (v26)
  {
    v28 = v26 == v27;
  }

  else
  {
    v28 = 0;
  }

  if (!v28)
  {
    ++v27;
  }

  if (*(a1 + 119))
  {
    v27 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (v27 <= *(a1 + 632))
  {
    goto LABEL_68;
  }

  v29 = (v27 + 0x1FFF) & 0xFFFFFFFFFFFFE000;
  *(a1 + 640) = v29;
  if (v29 <= *(*(a1 + 8) + 104))
  {
    v42 = MEMORY[0x19A8CC770](v74);
    *(a1 + 608) = v42;
    *(a1 + 632) = *(a1 + 640);
    goto LABEL_69;
  }

LABEL_28:
  PesErrorHandling(a1, 4294954325);
LABEL_68:
  v42 = *(a1 + 608);
LABEL_69:
  if (v42)
  {
    *(v42 + (*(a1 + 616))++) = HIBYTE(v19);
    goto LABEL_71;
  }

LABEL_151:
  v64 = 0;
LABEL_147:
  PesErrorHandling(a1, v64);
  return v64;
}

void MPEG2VideoCombine2Fields(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!FigMPEG2VideoCombineFields(a1, a2, a3))
  {

    FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, a2);
  }
}

uint64_t RegisterFigSampleBufferRenderSynchronizerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferRenderSynchronizerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferRenderSynchronizerGetClassID_sRegisterFigSampleBufferRenderSynchronizerTypeOnce, RegisterFigSampleBufferRenderSynchronizerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t CreatePesPrivateForPrivateStream(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  a1[6] = v4;
  *v4 = 0;
  v4[1] = 0;
  a1[105] = PesPriProcessData;
  a1[106] = PesPriCleanPrivateData;
  a1[107] = PesPriDeletePrivateData;
  return result;
}

uint64_t CreatePesPrivateForRawPes(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040F6D918ACuLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  result = 0;
  a1[105] = PesRawProcessData;
  a1[106] = PesRawCleanPrivateData;
  a1[107] = PesRawDeletePrivateData;
  a1[6] = v4;
  return result;
}

uint64_t PesRawProcessData(void *a1, OpaqueCMBlockBuffer *a2, size_t a3, const void *a4, size_t a5, uint64_t a6)
{
  v11 = a1[6];
  v19 = 0;
  v18 = 0;
  if (*(a6 + 24))
  {
    if (!a1[17] && (a1[76] || a1[64]))
    {
      v17 = PesRawEmitData(a1, v11);
      if (v17)
      {
        v15 = v17;
LABEL_16:
        PesErrorHandling(a1, v15);
        return v15;
      }
    }

    v13 = *(a6 + 16);
    *v11 = *a6;
    v11[1] = v13;
  }

  if (a2)
  {
    PesAddBlockBufferToFrameBlockBuffer(a1, a2, a3, a5, a1[17], &v18, &v19);
  }

  else
  {
    v14 = PesAddMemoryToFrameMemory(a1, a4, a5, a1[17], &v18, &v19);
  }

  v15 = v14;
  if (v14)
  {
    goto LABEL_16;
  }

  if (v19)
  {
    PesRawEmitData(a1, v11);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_1_92(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return fssm_server_copyManagerByObjectIDForConnection(v13, v14, va);
}

void FigCreateCFErrorFromFigErrorLog(const __CFArray *result, int a2)
{
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v5 = Count + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(result, v5 - 2);
        if (FigCFDictionaryGetInt32IfPresent() && a2 == 0)
        {
          break;
        }

        if (--v5 <= 1)
        {
          return;
        }
      }

      FigCFDictionaryGetInt32IfPresent();
      CFDictionaryGetValue(ValueAtIndex, @"c-user-info");
      CFDictionaryGetValue(ValueAtIndex, @"domain");
      CFDictionaryGetValue(ValueAtIndex, @"comment");
      figCreateCFError();
    }
  }
}

uint64_t FigCFErrorIsEqualToOSStatus(__CFError *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    CFErrorGetDomain(a1);
    result = FigCFEqual();
    if (!result)
    {
      return result;
    }

    return CFErrorGetCode(a1) == a3;
  }

  else
  {
    return a3 == 0;
  }
}

__CFString *FigErrorLogGetStringFromInterfaceType(int a1)
{
  v1 = @"wifi-bridged";
  v2 = @"wwan-bridged";
  v3 = @"bluetooth-bridged";
  if (a1 != 103)
  {
    v3 = 0;
  }

  if (a1 != 102)
  {
    v2 = v3;
  }

  if (a1 != 101)
  {
    v1 = v2;
  }

  v4 = @"wwan";
  if (a1 != 5)
  {
    v4 = 0;
  }

  if (a1 == 4)
  {
    v4 = @"wifi-AWDL";
  }

  if (a1 <= 100)
  {
    v1 = v4;
  }

  v5 = @"wired";
  v6 = @"wifi-infra";
  if (a1 != 3)
  {
    v6 = 0;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  v7 = @"loopback";
  if (a1 != 1)
  {
    v7 = 0;
  }

  if (!a1)
  {
    v7 = @"unknown";
  }

  if (a1 <= 1)
  {
    v5 = v7;
  }

  if (a1 <= 3)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

void FigErrorLogSetSeverity(int a1, CFMutableDictionaryRef theDict, int a3)
{
  valuePtr = a3;
  if (theDict)
  {
    if (a3)
    {
      v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(theDict, @"c-severity", v4);
        CFRelease(v5);
      }
    }

    else
    {

      CFDictionaryRemoveValue(theDict, @"c-severity");
    }
  }
}

void OUTLINED_FUNCTION_0_100(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  CFDictionarySetValue(v10, a2, value);
}

uint64_t OUTLINED_FUNCTION_1_93(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  return CFDictionaryGetValueIfPresent(v10, a2, &value);
}

void *FigMPEG2VideoFrameDiscard(uint64_t a1)
{
  result = FrameQueueClean((a1 + 784));
  *(a1 + 812) = 0;
  *(a1 + 748) = 0;
  *(a1 + 800) = 0;
  return result;
}

void *FigMPEG2VideoFrameFlush(uint64_t a1)
{
  if (!*(*(a1 + 8) + 448))
  {
    VideoFrameCheckAdjustmentQueue(a1);
  }

  VideoFrameQueueFlush(a1);
  result = FrameQueueClean((a1 + 784));
  *(a1 + 812) = 0;
  *(a1 + 748) = 0;
  *(a1 + 800) = 0;
  return result;
}

uint64_t VideoFrameCheckAdjustmentQueue(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  *(a1 + 744) = 0;
  if (*(*(a1 + 8) + 448))
  {
    v2 = *(a1 + 728);
    if (v2)
    {
      v3 = 4294954325;
      do
      {
        v4 = v2[4];
        v5 = *(a1 + 688);
        v6 = *(a1 + 712);
        if ((v4 & 0x100000000) == 0 && (v5 & 0x100000000) != 0)
        {
          v6 += 0x200000000;
          *(a1 + 712) = v6;
        }

        v7 = v6 + v4 + *(*a1 + 64);
        if (v7 >= v5 && v7 <= *(*(a1 + 8) + 160) + v5)
        {
          v18 = 0;
          v19 = &v18;
          FigMPEG2MoveAdjustmentQueue(a1, &v18);
          v3 = FigMPEG2ParseFromQueue(&v18);
        }

        else
        {
          v8 = *v2;
          v9 = v2[1];
          v10 = (*v2 + 8);
          if (!*v2)
          {
            v10 = (a1 + 736);
          }

          *v10 = v9;
          *v9 = v8;
          FrameQueueEntryDestroy(v2);
        }

        v2 = *(a1 + 728);
      }

      while (v2);
    }

    else
    {
      return 4294954325;
    }
  }

  else
  {
    v11 = *(a1 + 728);
    if (v11)
    {
      v3 = 0;
      v11[1] = &v18;
      v12 = *(a1 + 736);
      v18 = v11;
      v19 = v12;
      *(a1 + 728) = 0;
      *(a1 + 736) = a1 + 728;
      do
      {
        v13 = *v11;
        v14 = v11[1];
        if (*v11)
        {
          v15 = *v11;
        }

        else
        {
          v15 = &v18;
        }

        v15[1] = v14;
        *v14 = v13;
        *(v11 + 49) = 0;
        if (v3)
        {
          FrameQueueEntryDestroy(v11);
        }

        else
        {
          FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(a1, v11);
          v3 = v16;
        }

        v11 = v18;
      }

      while (v18);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t VideoFrameQueueFlush(uint64_t result)
{
  v1 = *(result + 784);
  if (v1 && *(result + 800))
  {
    v2 = *(result + 804);
    if (v2)
    {
      *(v1 + 24) = *(v1 + 32) + *(result + 808) * (90000 * *(result + 812)) / v2;
      *(v1 + 49) = 1;
      return FigMPEG2FrameQueueEmit(result);
    }
  }

  return result;
}

void FigMPEG2ParserVideoFrameWorkBackward(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (*(a2 + 144))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 50) != 0;
  }

  v6 = *(*a1 + 64) + *(a1 + 712);
  v7 = v6 + *(a2 + 32);
  *(a2 + 32) = v7;
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a2 + 49) == 0;
  }

  if (!v8)
  {
    *(a2 + 24) += v6;
  }

  v9 = **(*(a1 + 792) + 8);
  if (v9)
  {
    v10 = *(a1 + 808);
    v11 = *(a1 + 804);
    v12 = 90000;
    v13 = v7;
    do
    {
      v14 = v9;
      v9 = **(*(v9 + 8) + 8);
      v15 = v7 - v10 * v12 / v11;
      *(v14 + 50) = 1;
      *(v14 + 32) = v15;
      if (*(v14 + 144))
      {
        *(v14 + 49) = 1;
        *(v14 + 24) = v15;
      }

      else
      {
        if (v5)
        {
          v5 = 1;
          *(v14 + 49) = 1;
          *(v14 + 24) = v13;
        }

        else
        {
          *(v14 + 49) = 0;
          v5 = 1;
        }

        v13 = v7 - v10 * v12 / v11;
      }

      v12 += 90000;
    }

    while (v9);
  }

  FigMPEG2FrameQueueEmit(a1);
  if (!*(a1 + 784) && *(a2 + 49) && *(a2 + 50))
  {

    FigMPEG2VideoFrameEmit(a1, a2);
  }

  else
  {

    FigMPEG2VideoFrameEnqueue(a1, a2);
  }
}

uint64_t VideoFrameAddToAdjustmentQueue(uint64_t a1, uint64_t a2)
{
  VideoFrameQueueFlush(a1);
  Retainable = FrameQueueEntryMakeRetainable(a1, a2);
  Retainable[2] = a1;
  v5 = *(a1 + 744) + 1;
  *(a1 + 744) = v5;
  v6 = *(a1 + 736);
  *Retainable = 0;
  Retainable[1] = v6;
  *v6 = Retainable;
  *(a1 + 736) = Retainable;
  if (*(*a1 + 72) != 1 && v5 < 0x10)
  {
    return 0;
  }

  return VideoFrameCheckAdjustmentQueue(a1);
}

uint64_t FigMPEG2FrameQueueEmit(uint64_t result)
{
  v1 = *(result + 784);
  if (v1)
  {
    v2 = result;
    v3 = (result + 792);
    do
    {
      if (!*(v1 + 50) || !*(v1 + 49))
      {
        break;
      }

      v4 = *v1;
      v5 = *(v1 + 8);
      v6 = (*v1 + 8);
      if (!*v1)
      {
        v6 = v3;
      }

      *v6 = v5;
      *v5 = v4;
      result = FigMPEG2VideoFrameEmit(v2, v1);
      --*(v2 + 812);
      v1 = *(v2 + 784);
    }

    while (v1);
  }

  return result;
}

CMTime *OUTLINED_FUNCTION_3_67@<X0>(int64_t a1@<X0>, CMTime *a2@<X8>)
{

  return CMTimeMake(a2, a1, 90000);
}

uint64_t FigPlayerAirPlayCreateNonCoordinatedWithOptions(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  theString = 0;
  cf = 0;
  value = 0;
  number = 0;
  v88 = 0;
  memset(__str, 0, sizeof(__str));
  context = objc_autoreleasePoolPush();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v86 = a2;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 4906, v4);
LABEL_9:
    v11 = v12;
    goto LABEL_10;
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF172E0, 4294954516, "<<<< FigPlayer_AP >>>>", 4912, v4);
    goto LABEL_9;
  }

  if (FigPlayerAirPlayCreateNonCoordinatedWithOptions_initOnceCheck != -1)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_1();
  }

  v9 = a1;
  FigPlayerGetClassID();
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    v11 = v10;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v83, v84);
    goto LABEL_11;
  }

  v15 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 256;
  *(DerivedStorage + 459) = 0;
  *(DerivedStorage + 240) = 1;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (DerivedStorage + 459), 10, 0x600u);
  }

  v85 = a4;
  if (a3 && CFDictionaryGetValueIfPresent(a3, @"PlayerName", &value))
  {
    *(DerivedStorage + 376) = CFRetain(value);
    v17 = value;
    if (qword_1ED4CAC88 != -1)
    {
      FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_2();
    }

    v18 = qword_1ED4CAC80;
    FigSimpleMutexLock();
    v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFDictionarySetValue(v18, v17, v19);
    if (v19)
    {
      CFRelease(v19);
    }

    FigSimpleMutexUnlock();
    a4 = v85;
  }

  Mutable = CFDictionaryCreateMutable(v9, 0, 0, 0);
  *(DerivedStorage + 16) = Mutable;
  if (!Mutable)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_19(handler);
LABEL_115:
    v11 = LODWORD(handler[0]);
    goto LABEL_10;
  }

  v21 = FigReentrantMutexCreate();
  *(DerivedStorage + 24) = v21;
  if (!v21)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_18(handler);
    goto LABEL_115;
  }

  v22 = FigSimpleMutexCreate();
  *(DerivedStorage + 72) = v22;
  if (!v22)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_17(handler);
    goto LABEL_115;
  }

  v23 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  v24 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  *v23 = v24;
  if (v24)
  {
    v25 = FigSimpleMutexCreate();
    v23[1] = v25;
    if (v25)
    {
      goto LABEL_30;
    }

    v79 = 21315;
  }

  else
  {
    v79 = 21312;
  }

  FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_3(v79);
LABEL_30:
  *(DerivedStorage + 40) = v23;
  *(DerivedStorage + 8) = v86;
  CFRetain(v86);
  if (cf)
  {
    v26 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v26 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_serialize.%s", v26);
  v27 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 88) = v27;
  if (!v27)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_16(handler);
    goto LABEL_115;
  }

  if (cf)
  {
    v28 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v28 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_postnotification.%s", v28);
  v29 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 96) = v29;
  if (!v29)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_15(handler);
    goto LABEL_115;
  }

  if (cf)
  {
    v30 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v30 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_playqueuehelper.%s", v30);
  v31 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 104) = v31;
  if (!v31)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_14(handler);
    goto LABEL_115;
  }

  if (cf)
  {
    v32 = (CMBaseObjectGetDerivedStorage() + 459);
  }

  else
  {
    v32 = "";
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.playerairplay_playqueue.%s", v32);
  v33 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 112) = v33;
  if (!v33)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_13(handler);
    goto LABEL_115;
  }

  if (!a3 || !CFDictionaryGetValueIfPresent(a3, @"InterstitialPrimaryPlayerName", &v88))
  {
    goto LABEL_54;
  }

  v34 = v88;
  if (qword_1ED4CAC88 != -1)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_2();
  }

  v35 = qword_1ED4CAC80;
  FigSimpleMutexLock();
  if (!CFDictionaryGetValue(v35, v34))
  {
    FigSimpleMutexUnlock();
LABEL_54:
    v36 = 0;
    goto LABEL_55;
  }

  v36 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigSimpleMutexUnlock();
  if (v36)
  {
    v37 = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 368) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_target_queue(*(DerivedStorage + 112), *(v37 + 112));
  }

LABEL_55:
  v38 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 112));
  *(DerivedStorage + 120) = v38;
  if (!v38)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_12(handler);
LABEL_127:
    v11 = LODWORD(handler[0]);
    goto LABEL_128;
  }

  dispatch_source_set_timer(v38, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  dispatch_source_set_event_handler(*(DerivedStorage + 120), DispatchSourceBlock);
  _Block_release(DispatchSourceBlock);
  dispatch_resume(*(DerivedStorage + 120));
  v40 = FigCFDictionaryGetValue();
  v41 = CMBaseObjectGetDerivedStorage();
  *(v41 + 408) = 1;
  if (v40)
  {
    *(v41 + 208) = CFRetain(v40);
  }

  else
  {
    v42 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    FigAirPlayRouteCreate(v9, v42, (v41 + 208));
    if (v42)
    {
      CFRelease(v42);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  v43 = *(v41 + 208);
  v44 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v44)
  {
    v44(v43);
  }

  if (_CFMZEnabled())
  {
    v45 = *(v41 + 208);
    v46 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v46)
    {
      v46(v45);
    }
  }

  if (!*(DerivedStorage + 208))
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_11(handler);
    goto LABEL_127;
  }

  v47 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 448) = v47;
  if (!v47)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_10(handler);
    goto LABEL_127;
  }

  *(DerivedStorage + 48) = 257;
  *(DerivedStorage + 216) = 0;
  *(DerivedStorage + 200) = 0;
  *(DerivedStorage + 246) = _os_feature_enabled_impl();
  *(DerivedStorage + 456) = 0;
  *(DerivedStorage + 458) = 0;
  *(DerivedStorage + 52) = 0;
  v48 = dispatch_queue_create("com.apple.coremedia.playerairplay_scrubbing", 0);
  *(DerivedStorage + 160) = v48;
  if (!v48)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_9(handler);
    goto LABEL_127;
  }

  v49 = FigSimpleMutexCreate();
  *(DerivedStorage + 168) = v49;
  if (!v49)
  {
    FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_8(handler);
    goto LABEL_127;
  }

  v50 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 176) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 192) = *(v50 + 16);
  *(DerivedStorage + 404) = 45;
  *(DerivedStorage + 80) = 1;
  *(DerivedStorage + 84) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForSelectionCriteriaChanged(DefaultLocalCenter, v52);
  a4 = v85;
  CMNotificationCenterAddListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  if (v15 && CFDictionaryGetValueIfPresent(v15, @"ClientPID", &number))
  {
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
    v53 = number;
    FigBytePumpGetFigBaseObject();
    v55 = v54;
    v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v56)
    {
      v56(v55, 0x1F0B22718, v53);
    }

    v57 = *(DerivedStorage + 432);
    v58 = number;
    *(DerivedStorage + 432) = number;
    if (v58)
    {
      CFRetain(v58);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    handler[0] = 0;
    FigServer_CopyProcessName();
    v59 = handler[0];
    v60 = *(DerivedStorage + 416);
    *(DerivedStorage + 416) = handler[0];
    if (v59)
    {
      CFRetain(v59);
    }

    if (v60)
    {
      CFRelease(v60);
    }

    v61 = FigCFDictionaryGetValue();
    *(DerivedStorage + 424) = v61;
    if (v61)
    {
      CFRetain(v61);
    }

    if (v59)
    {
      CFRelease(v59);
    }
  }

  v62 = CMBaseObjectGetDerivedStorage();
  if (!*(v62 + 112))
  {
    goto LABEL_89;
  }

  v63 = v62;
  *(v62 + 400) = -1;
  v64 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v64)
  {
    v11 = 4294954510;
    goto LABEL_128;
  }

  v65 = v64;
  v66 = *(v63 + 112);
  v67 = CFRetain(v64);
  dispatch_set_context(v66, v67);
  dispatch_set_finalizer_f(*(v63 + 112), playerairplay_playQueueWorkQueueFinalizer);
  v68 = *(v63 + 112);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __playerairplay_initializeVolumeFadeOutNotification_block_invoke;
  handler[3] = &unk_1E7479BE0;
  handler[4] = v68;
  if (!notify_register_dispatch("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff", (v63 + 400), v68, handler))
  {
    CFRelease(v65);
    goto LABEL_89;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v82, v83, v85);
  v11 = v80;
  CFRelease(v65);
  if (!v11)
  {
LABEL_89:
    v69 = FigCFDictionaryGetValue();
    if (v69)
    {
      v69 = CFRetain(v69);
    }

    *(DerivedStorage + 440) = v69;
    v70 = FigSimpleMutexCreate();
    *(DerivedStorage + 480) = v70;
    if (v70)
    {
      v71 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
      *(DerivedStorage + 472) = v71;
      if (v71)
      {
        v72 = CFBagCreateMutable(v9, 0, MEMORY[0x1E695E9D0]);
        *(DerivedStorage + 288) = v72;
        if (v72)
        {
          if (!v36)
          {
LABEL_99:
            if (dword_1EAF172E8)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v11 = 0;
            v13 = context;
            if (a4)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          v73 = cf;
          FigPlayerGetFigBaseObject();
          v75 = v74;
          v76 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v76)
          {
            v76(v75, @"InterstitialAirPlayPlayer", v73);
          }

          if (dword_1EAF172E8)
          {
            v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11 = 0;
          goto LABEL_104;
        }

        FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_5(handler);
      }

      else
      {
        FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_6(handler);
      }
    }

    else
    {
      FigPlayerAirPlayCreateNonCoordinatedWithOptions_cold_7(handler);
    }

    goto LABEL_127;
  }

LABEL_128:
  if (v36)
  {
LABEL_104:
    CFRelease(v36);
  }

LABEL_10:
  if (!v11)
  {
    goto LABEL_99;
  }

LABEL_11:
  v13 = context;
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (a4)
  {
LABEL_14:
    *a4 = cf;
  }

LABEL_15:
  objc_autoreleasePoolPop(v13);
  return v11;
}