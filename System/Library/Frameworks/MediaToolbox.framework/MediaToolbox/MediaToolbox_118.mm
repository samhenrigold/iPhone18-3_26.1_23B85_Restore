CFMutableArrayRef FigErrorLogCreatePublicCopy(const __CFAllocator *a1, const __CFArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  if (Mutable)
  {
    v7[0] = a1;
    v7[1] = Mutable;
    v8.length = CFArrayGetCount(a2);
    v8.location = 0;
    CFArrayApplyFunction(a2, v8, figErrorLogApplierFunction, v7);
  }

  return v5;
}

void figErrorLogApplierFunction(CFDictionaryRef theDict, CFAllocatorRef *a2)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*a2, 0, theDict);
    if (MutableCopy)
    {
      v4 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"c-user-info");
      CFArrayAppendValue(a2[1], v4);

      CFRelease(v4);
    }
  }
}

void FigMPEG2VideoFrameQueueEntryAdjustTimestampsAndEmit(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  v5 = (a2 + 32);
  while (1)
  {
    if (*(a2 + 48))
    {
      if (*(a2 + 49))
      {
        v6 = *(a2 + 40);
        if (v6 != *(a1 + 816))
        {
          *(a2 + 80) |= 0x1000u;
          *(a1 + 816) = v6;
        }
      }
    }

    v7 = *(a1 + 8);
    if (!*(v7 + 100))
    {
      goto LABEL_86;
    }

    v8 = *(a2 + 144);
    if (*(a2 + 144) && *(a2 + 49))
    {
      *(a2 + 50) = 1;
      *(a2 + 32) = *(a2 + 24);
    }

    if (!*(a1 + 800))
    {
      v9 = *(a1 + 784);
      if (!v9)
      {
        if (!*(a2 + 50))
        {
          goto LABEL_91;
        }

        if (!*(a1 + 804))
        {
          goto LABEL_71;
        }

        goto LABEL_14;
      }

      if (*(a2 + 50) && *(a1 + 804))
      {
        v38 = *(a2 + 145);
        v39 = OUTLINED_FUNCTION_298();
        FigMPEG2ParserVideoFrameWorkBackward(v39, v40);
        *(a1 + 800) = 1;
        if (!v38)
        {
          *(a1 + 672) = *v5;
        }

        goto LABEL_82;
      }

LABEL_71:
      if (v8)
      {
        if (!v9 || !*(a2 + 49))
        {
LABEL_81:
          if (!*(a2 + 50))
          {
LABEL_91:
            OUTLINED_FUNCTION_298();
            OUTLINED_FUNCTION_651();

            FigMPEG2VideoFrameEnqueue(v46, v47);
            return;
          }

          goto LABEL_82;
        }
      }

      else if (!v9)
      {
        goto LABEL_81;
      }

      if (*(a1 + 804))
      {
        v41 = **(*(a1 + 792) + 8);
        if (v41)
        {
          while (1)
          {
            v42 = **(*(v41 + 8) + 8);
            if (!*(v41 + 144))
            {
              if (*(v41 + 49))
              {
                break;
              }
            }

            v41 = **(*(v41 + 8) + 8);
            if (!v42)
            {
              goto LABEL_81;
            }
          }

          *(a2 + 50) = 1;
          v49 = *(v41 + 24);
          *(a2 + 32) = v49;
          *(a1 + 672) = v49;
          v50 = *(a2 + 145);
          v51 = OUTLINED_FUNCTION_298();
          FigMPEG2ParserVideoFrameWorkBackward(v51, v52);
          *(a1 + 800) = 1;
          if (!v50 && !*(a2 + 50))
          {
            goto LABEL_91;
          }

          goto LABEL_82;
        }
      }

      goto LABEL_81;
    }

LABEL_14:
    *(a1 + 800) = 1;
    if (*(a1 + 728))
    {
      goto LABEL_60;
    }

    if (*(a2 + 49))
    {
      v10 = *(a1 + 712) + *v4 + *(*a1 + 64);
    }

    else
    {
      v10 = 0;
    }

    if (*(a2 + 50))
    {
      v11 = *v5;
      v12 = HIDWORD(*v5) & 1;
      if ((*(a1 + 676) & 1) == 0)
      {
        LODWORD(v12) = 1;
      }

      if (v12)
      {
        v13 = *v5;
      }

      else
      {
        v13 = v11 + 0x200000000;
      }

      v14 = *(a1 + 712);
      v15 = *(*a1 + 64) + v14 + v13;
      if (!*(a1 + 658) || (v16 = *(a1 + 688), v15 > v16) && v15 < *(v7 + 160) + v16)
      {
        *(a1 + 672) = v11;
        *(a1 + 748) = 0;
        if ((v12 & 1) == 0)
        {
          *(a1 + 712) = v14 + 0x200000000;
        }

        goto LABEL_38;
      }

      v34 = OUTLINED_FUNCTION_298();
      if (!VideoFrameAddToAdjustmentQueue(v34, v35))
      {
        OUTLINED_FUNCTION_651();

        ProgramCheckPesForTimestampChanges(v36);
        return;
      }

LABEL_82:
      OUTLINED_FUNCTION_651();
      return;
    }

    v17 = *(a1 + 804);
    if (!v17)
    {
LABEL_60:
      OUTLINED_FUNCTION_298();
      OUTLINED_FUNCTION_651();

      VideoFrameAddToAdjustmentQueue(v31, v32);
      return;
    }

    v18 = *(a1 + 748) + 1;
    v19 = 90000 * *(a1 + 808) * v18 / v17;
    v20 = *(a1 + 672);
    v21 = v20 + *(a1 + 712) + *(*a1 + 64);
    v15 = v21 + v19;
    if (v8)
    {
      v22 = v21 + v19;
    }

    else
    {
      v22 = v10;
    }

    if (!v8)
    {
      if (*(a2 + 49))
      {
        v22 = v10 + 0x200000000;
        if (((v20 & 0x100000000) == 0) | *(v4 + 4) & 1)
        {
          v22 = v10;
        }
      }
    }

    *(a1 + 748) = v18;
    v10 = v22;
    v23 = *(a1 + 784);
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_38:
    if (v8)
    {
      goto LABEL_83;
    }

    *(v23 + 49) = 1;
    *(v23 + 24) = v15;
    FigMPEG2FrameQueueEmit(a1);
    v8 = *(a2 + 144);
    if (*(a1 + 784))
    {
      if (*(a2 + 144))
      {
LABEL_83:
        *(a2 + 32) = v15;
        *(a2 + 49) = 257;
LABEL_90:
        *v4 = v15;
        *(a1 + 688) = v15;
        goto LABEL_91;
      }
    }

    else
    {
LABEL_43:
      if (v8)
      {
        goto LABEL_45;
      }
    }

    if (!*(a2 + 49))
    {
      *(a2 + 50) = 1;
      v4 = v5;
      goto LABEL_90;
    }

LABEL_45:
    v24 = v15 - v10;
    if (v15 == v10)
    {
      v10 = v15;
      goto LABEL_85;
    }

    v25 = *(*(a1 + 8) + 160);
    if (v25 >= 360000)
    {
      v26 = 180000;
    }

    else
    {
      v26 = v25 / 2;
    }

    v27 = -v26;
    if (v24 <= v26 && v24 >= v27)
    {
      goto LABEL_85;
    }

    v29 = v24 - 0x200000000;
    if (v29 <= v26 && v29 >= v27)
    {
      break;
    }

    *(a2 + 49) = 0;
  }

  v10 += 0x200000000;
LABEL_85:
  *(a2 + 49) = 257;
  *(a2 + 24) = v10;
  *(a2 + 32) = v15;
LABEL_86:
  OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_651();

  FigMPEG2VideoFrameEmit(v43, v44);
}

uint64_t FigMPEG2VideoFrameEmit(uint64_t a1, uint64_t a2)
{
  memset(&v40, 0, sizeof(v40));
  memset(&v39, 0, sizeof(v39));
  v4 = *(a1 + 8);
  v5 = *(v4 + 100);
  if (v5)
  {
    if (!*(a2 + 49))
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
LABEL_22:
      v22 = appended;
      goto LABEL_33;
    }

    if (v5 != 1)
    {
      if (*(a1 + 658))
      {
        v6 = *(a2 + 32);
      }

      else
      {
        v6 = *(a2 + 32);
        if ((v6 & 0x100000000) != 0 && !*(*a1 + 64) && 0x200000000 - v6 < *(v4 + 160))
        {
          *(a1 + 712) -= 0x200000000;
          v6 -= 0x200000000;
          *(a2 + 24) -= 0x200000000;
          *(a2 + 32) = v6;
        }
      }

      *(a1 + 658) = 1;
      *(a1 + 688) = v6;
      v7 = *(a2 + 24);
      *(a1 + 696) = v7;
      OUTLINED_FUNCTION_3_67(v7, &v40);
      v8 = *(a2 + 32);
      if (*(a2 + 24) == v8)
      {
        OUTLINED_FUNCTION_2_91();
      }

      else
      {
        OUTLINED_FUNCTION_3_67(v8, &v39);
      }

      v9 = *(a1 + 696);
      if (*(a1 + 704) < v9)
      {
        *(a1 + 704) = v9;
      }

      goto LABEL_20;
    }

    goto LABEL_7;
  }

  if (*(a2 + 49))
  {
LABEL_7:
    OUTLINED_FUNCTION_3_67(*(a2 + 24), &v40);
    if (*(a2 + 50))
    {
      OUTLINED_FUNCTION_3_67(*(a2 + 32), &v39);
    }

    else
    {
      OUTLINED_FUNCTION_2_91();
    }

    goto LABEL_20;
  }

  v39 = **&MEMORY[0x1E6960C70];
  v40 = v39;
LABEL_20:
  v10 = *(a1 + 84);
  if (v10)
  {
    v11 = **(a1 + 8);
    v12 = *(a1 + 60);
    v13 = *(a1 + 104);
    v14 = *(a2 + 56);
    v15 = *(a2 + 80);
    v16 = *(a2 + 40);
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 112);
    v20 = *(a2 + 120);
    v38 = v40;
    v37 = v39;
    appended = v10(v11, v12, v13, v14, &v38, &v37, v15, v16, v17, v18, v19, v20);
    if (appended)
    {
      goto LABEL_22;
    }
  }

  v23 = *(a2 + 64);
  if (v23)
  {
    v24 = 0;
    do
    {
      v25 = v23[2];
      if (v24)
      {
        DataLength = CMBlockBufferGetDataLength(v23[2]);
        appended = CMBlockBufferAppendBufferReference(v24, v25, 0, DataLength, 0);
        if (appended)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v23[2];
      }

      v23 = *v23;
    }

    while (v23);
    if (v24)
    {
      v27 = *(a1 + 72);
      v28 = *(v27 + 84);
      v29 = **(a1 + 8);
      v30 = *(v27 + 60);
      v31 = *(v27 + 104);
      v32 = *(a2 + 40);
      v38 = v40;
      v37 = v39;
      appended = v28(v29, v30, v31, v24, &v38, &v37, 0, v32, 0, 0, 0, 0);
      if (appended)
      {
        goto LABEL_22;
      }
    }
  }

  v22 = 0;
LABEL_33:
  if (*(a2 + 145))
  {
    FrameQueueEntryDestroy(a2);
  }

  return v22;
}

void FigMPEG2VideoFrameEnqueue(uint64_t a1, uint64_t a2)
{
  Retainable = FrameQueueEntryMakeRetainable(a1, a2);
  if (Retainable)
  {
    v5 = *(a1 + 792);
    *Retainable = 0;
    Retainable[1] = v5;
    *v5 = Retainable;
    *(a1 + 792) = Retainable;
    LODWORD(v5) = *(a1 + 812) + 1;
    *(a1 + 812) = v5;
    if (v5 >= 0x41)
    {
      emitter = fig_log_get_emitter();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954325, "mpeg2parser", 429, v2);
    }
  }
}

uint64_t FigMPEG2VideoCombineFields(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = CMBlockBufferGetDataLength(*(a2 + 56));
  PesFrameHeaderAppendList((a2 + 88), (a3 + 88), valuePtr);
  appended = CMBlockBufferAppendBufferReference(*(a2 + 56), *(a3 + 56), 0, 0, 0);
  if (!appended)
  {
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CMSetAttachment(*(a2 + 56), @"ByteOffsetToSecondField", v6, 1u);
      CFRelease(v7);
    }

    if (!*(a2 + 64))
    {
      for (i = *(a3 + 64); i; i = *(a3 + 64))
      {
        v9 = *i;
        v10 = i[1];
        v11 = (*i + 8);
        if (!*i)
        {
          v11 = (a3 + 72);
        }

        *v11 = v10;
        *v10 = v9;
        v12 = *(a2 + 72);
        *i = 0;
        i[1] = v12;
        *v12 = i;
        *(a2 + 72) = i;
      }
    }

    v13 = *(a2 + 80);
    v14 = *(a3 + 80);
    if (v13 != v14)
    {
      v15 = v14 | v13;
      if ((v15 & 8) != 0)
      {
        v16 = -1557;
      }

      else
      {
        v16 = -1553;
      }

      v17 = v16 & v15;
      if ((v15 & 0x10) != 0)
      {
        v18 = v15 & 0xFFFFF9F3;
      }

      else
      {
        v18 = v17;
      }

      *(a2 + 80) = v18 | *(a2 + 80) & 0x600;
    }

    v19 = *(a2 + 148);
    if (v19)
    {
      *(a3 + 148) = v19;
    }
  }

  return appended;
}

void playerairplay_checkIfAirPlayVideoSessionNeedsToStop(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  FigSimpleMutexUnlock();
  v5 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v6 = *(v5 + 20);
  FigSimpleMutexUnlock();
  if (!*DerivedStorage)
  {
    if (!(v4 | v6))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_11();
      if (!(!v16 & v15))
      {
        if (dword_1EAF172E8)
        {
          v17 = OUTLINED_FUNCTION_19_27(v7, v8, v9, v10, v11, v12, v13, v14, v41, v43, v45, v47, SBYTE2(v47), SBYTE3(v47), SHIDWORD(v47));
          OUTLINED_FUNCTION_311(v17, v18, v19, v20, v21, v22, v23, v24, v42, v44, v46, v48, v49, v50, v51);
          OUTLINED_FUNCTION_40();
          if (v5)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_139();
            OUTLINED_FUNCTION_53_10();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_12_17(v25, v26, v52, v27, &dword_1962D5000, v28, v29, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s Stopping APV session");
            OUTLINED_FUNCTION_612();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v30, v31, v32, v33, v34);
        }

        v35 = OUTLINED_FUNCTION_312();
        playerairplay_savePlaybackInfoAndStopAPV(v35, v36, 0);
      }
    }

    OUTLINED_FUNCTION_496();
    dispatch_source_set_timer(v37, v38, v39, v40);
  }
}

void playerairplay_reflectSubPlayerNotification(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_645(a1, a2);
  if (*v7)
  {
    return;
  }

  if (!v7[50])
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_55_11();
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (CFEqual(a3, @"SubtitleChanged") || CFEqual(a3, @"IsNeroPlaybackActiveDidChange"))
  {
LABEL_8:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

LABEL_9:
  if (CFEqual(a3, @"RateDidChange") || CFEqual(a3, @"CurrentItemDidChange"))
  {

    playerairplay_updateRoutingRegistry(v5);
  }
}

void playerairplay_autoMediaSelectionCriteriaChanged(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    OUTLINED_FUNCTION_100_3();
    if (!v3)
    {
      CFRetain(a2);

      FigDeferNotificationToDispatchQueue();
    }
  }
}

void playerairplay_hijackedByOtherPlayer(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const __CFDictionary *a5)
{
  v8 = OUTLINED_FUNCTION_645(a1, a2);
  Value = CFDictionaryGetValue(a5, @"HijackingPlayer");
  v10 = Value != a4 || Value == v5;
  if (!v10 && !*v8)
  {
    v11 = Value;
    v12 = pap_copyInterstitialPlayer(v5);
    v13 = pap_copyPrimaryPlayer(v5);
    if (v12)
    {
      v14 = v12 == a4;
    }

    else
    {
      v14 = 0;
    }

    v15 = !v14;
    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
      v16 = v13 == a4;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    if (v17 == 1)
    {
      if (v5)
      {
        CFRetain(v5);
      }

      OUTLINED_FUNCTION_2_49();
      v20 = 3221225472;
      v21 = __playerairplay_hijackedByOtherPlayer_block_invoke;
      v22 = &__block_descriptor_56_e5_v8__0l;
      v23 = v8;
      v24 = v5;
      v25 = v11;
      dispatch_async(v18, block);
    }
  }
}

uint64_t playerairplay_Invalidate(uint64_t a1)
{
  v89 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF172E8)
  {
    v83 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v84 = 136315650;
      v85 = "playerairplay_Invalidate";
      v86 = 2048;
      v87 = a1;
      OUTLINED_FUNCTION_83_3();
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_12_17(v5, v6, v88, v7, &dword_1962D5000, v8, v9, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s called");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v10, v11, v12, v13, v14);
  }

  if (!*DerivedStorage && *(DerivedStorage + 112))
  {
    *DerivedStorage = 1;
    if (*(DerivedStorage + 480))
    {
      FigSimpleMutexLock();
      for (i = *(DerivedStorage + 472); i; i = *(DerivedStorage + 472))
      {
        if (CFArrayGetCount(i) < 1)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(DerivedStorage + 472), 0);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 472), 0);
      }

      FigSimpleMutexUnlock();
    }

    notify_cancel(*(DerivedStorage + 400));
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForSelectionCriteriaChanged(DefaultLocalCenter, v17);
    OUTLINED_FUNCTION_171();
    CMNotificationCenterRemoveListener();
    v18 = CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForSelectionCriteriaChanged(v18, v19);
    CMNotificationCenterBarrier();
    if (*(DerivedStorage + 8))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigPlayerGetFigBaseObject();
      v21 = v20;
      v22 = *(CMBaseObjectGetVTable() + 8);
      if (*v22 >= 2uLL)
      {
        v23 = v22[8];
        if (v23)
        {
          v23(v21);
        }
      }
    }

    if (*(DerivedStorage + 296))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v25 = *(DerivedStorage + 112);
    if (v25)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerairplay_Invalidate_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_sync(v25, block);
    }

    v26 = *(DerivedStorage + 160);
    if (v26)
    {
      dispatch_sync(v26, &__block_literal_global_27_0);
    }

    v27 = *(DerivedStorage + 120);
    if (v27)
    {
      dispatch_source_cancel(v27);
    }

    v28 = *(DerivedStorage + 88);
    if (v28)
    {
      dispatch_sync(v28, &__block_literal_global_29_0);
    }

    v29 = *(DerivedStorage + 96);
    if (v29)
    {
      dispatch_sync(v29, &__block_literal_global_31_0);
    }

    v30 = *(DerivedStorage + 104);
    if (v30)
    {
      dispatch_sync(v30, &__block_literal_global_33_0);
    }

    v31 = *(DerivedStorage + 112);
    if (v31)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __playerairplay_Invalidate_block_invoke_6;
      v80[3] = &__block_descriptor_40_e5_v8__0l;
      v80[4] = a1;
      dispatch_sync(v31, v80);
    }

    if (*(DerivedStorage + 52))
    {
      v32 = *(DerivedStorage + 208);
      v33 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v33)
      {
        v33(v32);
      }
    }

    v34 = *(DerivedStorage + 296);
    if (v34)
    {
      CFRelease(v34);
      *(DerivedStorage + 296) = 0;
    }

    *(DerivedStorage + 304) = 0;
    if (*(DerivedStorage + 458))
    {
      Shared = FigShareAndAirPlayHelperGetShared(v34, v24);
      if (Shared)
      {
        v36 = Shared;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v37)
        {
          v37(v36, 0, a1);
        }
      }

      *(DerivedStorage + 458) = 0;
    }

    if (*(DerivedStorage + 112))
    {
      OUTLINED_FUNCTION_25_1();
      v76 = 3221225472;
      v77 = __playerairplay_Invalidate_block_invoke_7;
      v78 = &__block_descriptor_40_e5_v8__0l;
      v79 = a1;
      dispatch_sync(v38, v75);
    }

    FigSimpleMutexLock();
    v39 = *(DerivedStorage + 16);
    if (v39)
    {
      v40 = CFGetAllocator(v39);
      Copy = CFDictionaryCreateCopy(v40, *(DerivedStorage + 16));
      if (Copy)
      {
        v42 = Copy;
        CFDictionaryApplyFunction(Copy, playerairplay_InvalidateItem, 0);
        CFRelease(v42);
      }
    }

    FigSimpleMutexUnlock();
    if (*(DerivedStorage + 8))
    {
      FigPlayerGetFigBaseObject();
      if (v43)
      {
        v44 = v43;
        v45 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v45)
        {
          v45(v44);
        }
      }
    }

    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v46 = OUTLINED_FUNCTION_152_2();
      v47(v46);
    }

    CMBaseObjectGetDerivedStorage();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v48 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3(v48, v49, v50, 0x1F0B35118);
    v51 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3(v51, v52, v53, 0x1F0B35138);
    v54 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3(v54, v55, v56, 0x1F0B35158);
    v57 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3(v57, v58, v59, 0x1F0B351B8);
    v60 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_89_3(v60, v61, v62, 0x1F0B351D8);
    FigBytePumpGetFigBaseObject();
    if (v63)
    {
      v64 = v63;
      v65 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v65)
      {
        v65(v64);
      }
    }

    v66 = *(DerivedStorage + 376);
    if (v66)
    {
      if (qword_1ED4CAC88 != -1)
      {
        dispatch_once(&qword_1ED4CAC88, &__block_literal_global_167);
      }

      v67 = qword_1ED4CAC80;
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(v67, v66);
      FigSimpleMutexUnlock();
      CFRelease(*(DerivedStorage + 376));
    }

    v68 = *(DerivedStorage + 392);
    if (v68)
    {
      CFRelease(v68);
      *(DerivedStorage + 392) = 0;
    }

    playerairplay_cleanUpScrubLayerAndContext(a1);
    v69 = *(DerivedStorage + 160);
    if (v69)
    {
      dispatch_sync(v69, &__block_literal_global_35);
    }

    v70 = *(DerivedStorage + 88);
    if (v70)
    {
      dispatch_sync(v70, &__block_literal_global_37);
    }

    v71 = *(DerivedStorage + 96);
    if (v71)
    {
      dispatch_sync(v71, &__block_literal_global_39);
    }

    v72 = *(DerivedStorage + 112);
    if (v72)
    {
      dispatch_sync(v72, &__block_literal_global_41);
    }

    v73 = *(DerivedStorage + 104);
    if (v73)
    {
      dispatch_sync(v73, &__block_literal_global_43);
    }

    playqueue_clearPlayQueue(*(DerivedStorage + 40));
  }

  return 0;
}

uint64_t playerairplay_Finalize(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_199();
  playerairplay_Invalidate(v2);
  v3 = v1[20];
  if (v3)
  {
    dispatch_release(v3);
    v1[20] = 0;
  }

  if (v1[21])
  {
    FigSimpleMutexDestroy();
    v1[21] = 0;
  }

  v4 = v1[15];
  if (v4)
  {
    dispatch_release(v4);
    v1[15] = 0;
  }

  v5 = v1[11];
  if (v5)
  {
    dispatch_release(v5);
    v1[11] = 0;
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
    v1[12] = 0;
  }

  v7 = v1[14];
  if (v7)
  {
    dispatch_release(v7);
    v1[14] = 0;
  }

  v8 = v1[13];
  if (v8)
  {
    dispatch_release(v8);
    v1[13] = 0;
  }

  v9 = v1[1];
  if (v9)
  {
    CFRelease(v9);
    v1[1] = 0;
  }

  v10 = v1[26];
  if (v10)
  {
    CFRelease(v10);
    v1[26] = 0;
  }

  v11 = v1[16];
  if (v11)
  {
    CFRelease(v11);
    v1[16] = 0;
  }

  v12 = v1[56];
  if (v12)
  {
    CFRelease(v12);
    v1[56] = 0;
  }

  v13 = v1[46];
  if (v13)
  {
    CFRelease(v13);
    v1[46] = 0;
  }

  v14 = v1[45];
  if (v14)
  {
    CFRelease(v14);
    v1[45] = 0;
  }

  v15 = v1[48];
  if (v15)
  {
    CFRelease(v15);
    v1[48] = 0;
  }

  v16 = v1[53];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v1[52];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v1[54];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = v1[55];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = v1[29];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = v1[5];
  if (v21)
  {
    if (*v21)
    {
      CFRelease(*v21);
    }

    FigSimpleMutexDestroy();
    free(v21);
  }

  FigSimpleMutexDestroy();
  v1[3] = 0;
  v22 = v1[2];
  if (v22)
  {
    CFRelease(v22);
    v1[2] = 0;
  }

  v23 = v1[4];
  if (v23)
  {
    CFRelease(v23);
    v1[4] = 0;
  }

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();
  v24 = v1[59];
  if (v24)
  {
    CFRelease(v24);
    v1[59] = 0;
  }

  v25 = v1[36];
  if (v25)
  {
    CFRelease(v25);
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

uint64_t playerairplay_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  OUTLINED_FUNCTION_139_1();
  v5 = OUTLINED_FUNCTION_502();
  v11 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v5, v6, a3, 0, v7, v8, v9, v10);
  if (v11)
  {
    goto LABEL_5;
  }

  if (!*(DerivedStorage + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, 0);
    goto LABEL_5;
  }

  FigPlayerGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v14)
  {
    v11 = v14(v13, 0, 0);
LABEL_5:
    v15 = v11;
    goto LABEL_7;
  }

  v15 = 4294954514;
LABEL_7:
  if (v19)
  {
    CFRelease(v19);
  }

  return v15;
}

void playerairplay_externalStartupTaskCompleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_645(a1, a2);
  v15 = 0;
  if (!*v6)
  {
    v7 = v6;
    if (FigCFDictionaryGetInt32IfPresent())
    {
      if (v5)
      {
        CFRetain(v5);
      }

      OUTLINED_FUNCTION_2_49();
      v10 = 3221225472;
      v11 = __playerairplay_externalStartupTaskCompleted_block_invoke;
      v12 = &__block_descriptor_48_e5_v8__0l;
      v13 = v7;
      v14 = v5;
      dispatch_async(v8, block);
    }
  }
}

uint64_t playerairplay_removeFigAudioSessionNotificationHandlers(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 392))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_65_7();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void __playerairplay_externalStartupTaskCompleted_block_invoke()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_setRateAirPlay(*(v0 + 40), 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0);
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    OUTLINED_FUNCTION_261();
    FigSimpleMutexLock();
    if (v4)
    {
      CurrentClientPlayQueueItemIndexInternal = playqueue_getCurrentClientPlayQueueItemIndexInternal(v3);
      if (CurrentClientPlayQueueItemIndexInternal != -1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*v3, CurrentClientPlayQueueItemIndexInternal);
        if (ValueAtIndex)
        {
          ValueAtIndex = CFRetain(ValueAtIndex);
        }

        *v4 = ValueAtIndex;
      }
    }

    if (a3)
    {
      Count = CFArrayGetCount(*v3);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          v11 = CFArrayGetValueAtIndex(*v3, v10);
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (!DerivedStorage[72] && DerivedStorage[701] && DerivedStorage[707] != 2)
          {
            break;
          }

          if (v9 == ++v10)
          {
            goto LABEL_14;
          }
        }

        if (v11)
        {
          v13 = CFRetain(v11);
        }

        else
        {
          v13 = 0;
        }

        *a3 = v13;
      }
    }

LABEL_14:

    FigSimpleMutexUnlock();
  }
}

const __CFArray *playerairplay_notifyStartupTasksOfEvents(uint64_t a1, const void *a2, int a3, uint64_t a4, uint64_t a5, _BYTE *a6, float a7)
{
  v9 = a4;
  v57 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v50 = 0;
  *a6 = 1;
  if (!a2)
  {
    return 0;
  }

  v15 = DerivedStorage;
  CMBaseObjectGetDerivedStorage();
  if (a7 == 0.0 || ((OUTLINED_FUNCTION_44_13(), !v17) ? (v17 = v16 == 10) : (v17 = 1), v17))
  {
    Copy = 0;
  }

  else
  {
    FigSimpleMutexLock();
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(v15 + 472));
    FigSimpleMutexUnlock();
    if (Copy)
    {
      Count = CFArrayGetCount(Copy);
      if (Count < 1)
      {
LABEL_38:
        v21 = Copy;
        NotificationPayloadForProperties = 0;
        Copy = 0;
      }

      else
      {
        v44 = a6;
        v20 = 0;
        v48 = v9;
        v46 = Copy;
        v47 = a5;
        v45 = a2;
        while (1)
        {
          v21 = Copy;
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, v20);
          v23 = FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf);
          if (v23)
          {
            Copy = v23;
            NotificationPayloadForProperties = 0;
            goto LABEL_39;
          }

          v24 = OUTLINED_FUNCTION_618();
          NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v24, v25, v26);
          if (FigCFArrayContainsValue())
          {
            OUTLINED_FUNCTION_614();
            FigCFDictionarySetFloat32();
          }

          if (FigCFArrayContainsValue())
          {
            OUTLINED_FUNCTION_614();
            FigCFDictionarySetValue();
          }

          v28 = FigCFArrayContainsValue();
          if (v9 && v28)
          {
            FigCFDictionarySetInt32();
          }

          if (FigCFArrayContainsValue() && (*(a5 + 12) & 1) != 0)
          {
            v56 = *a5;
            FigCFDictionarySetCMTime();
          }

          if (FigCFArrayContainsValue())
          {
            v56 = **&MEMORY[0x1E6960C70];
            itemairplay_GetCurrentTime(a2, &v56);
            v52 = v56;
            OUTLINED_FUNCTION_614();
            FigCFDictionarySetCMTime();
          }

          v29 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, a3, NotificationPayloadForProperties, &v50);
          if (v29)
          {
            break;
          }

          if (dword_1EAF172E8)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            Copy = v46;
            a5 = v47;
            v9 = v48;
            a2 = v45;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (NotificationPayloadForProperties)
          {
            CFRelease(NotificationPayloadForProperties);
          }

          if (!v50)
          {
            *v44 = 0;
          }

          if (Count == ++v20)
          {
            goto LABEL_38;
          }
        }

        Copy = v29;
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_22();
        if (a5)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(v52.value) = 136315906;
          OUTLINED_FUNCTION_157_1();
          HIWORD(v52.epoch) = 2082;
          v53 = v32;
          v54 = 1024;
          LODWORD(v55) = Copy;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v33, v34, v35, v36, v37, v31, 0, v38, &v52, 38);
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_524(v39, v40, v41, v42, v43);
      }

LABEL_39:
      CFRelease(v21);
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Copy;
}

void playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v5[2] = __playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_async(v4, v5);
  }
}

uint64_t playerairplay_deferMediaControlPlaylistForInterstitials(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 241))
  {
    return 0;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_54_11();
  if (!v3 & v2)
  {
    return 0;
  }

  if (!*(CMBaseObjectGetDerivedStorage() + 360))
  {
    if (*(CMBaseObjectGetDerivedStorage() + 368))
    {
      v4 = pap_copyPrimaryPlayer(a1);
      if (v4)
      {
        v7 = v4;
        v5 = playerairplay_interstitialEventActive(v4) ^ 1;
        CFRelease(v7);
        return v5;
      }
    }

    return 0;
  }

  return playerairplay_interstitialEventActive(a1);
}

void pap_playbackSessionSetRate(const void *a1, int a2, float a3, uint64_t a4, __int128 *a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v11 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 280))
      {
        v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600408834611BuLL);
        *v12 = a1;
        CFRetain(a1);
        v13 = *(v11 + 280);
        *(v12 + 1) = v13;
        if (v13)
        {
          CFRetain(v13);
        }

        v12[4] = a3;
        *(v12 + 3) = a6;
        if (a6)
        {
          CFRetain(a6);
        }

        v14 = *(v11 + 60);
        *(v11 + 60) = v14 + 1;
        *(v12 + 8) = v14;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (pap_shouldUseInterstitialQueuing(a1))
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
        }

        if (a2)
        {
          OUTLINED_FUNCTION_315();
          FigCFDictionarySetCMTime();
          FigCFDictionarySetCMTime();
        }

        v16 = *(v11 + 280);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v17)
        {
          v17(v16, Mutable, pap_playbackSessionSetRateCompletion, v12, a3);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }
}

void itemairplay_postItemNotification()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    v7 = CMBaseObjectGetDerivedStorage();
    if (v7)
    {
      v8 = v7;
      if (!*v7)
      {
        if (v3)
        {
          CFRetain(v3);
        }

        if (v1)
        {
          CFRetain(v1);
        }

        if (v0)
        {
          CFRetain(v0);
        }

        if (v6)
        {
          CFRetain(v6);
        }

        OUTLINED_FUNCTION_0_52();
        OUTLINED_FUNCTION_1_44();
        v10[2] = __itemairplay_postItemNotification_block_invoke;
        v10[3] = &__block_descriptor_80_e5_v8__0l;
        v10[4] = v5;
        v10[5] = v8;
        v10[6] = v1;
        v10[7] = v3;
        v10[8] = v0;
        v10[9] = v6;
        dispatch_async(v9, v10);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void playerairplay_postPlayerNotification()
{
  OUTLINED_FUNCTION_375_0();
  v3 = v2;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    if (v3)
    {
      CFRetain(v3);
    }

    if (v1)
    {
      CFRetain(v1);
    }

    if (v0)
    {
      CFRetain(v0);
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v7[2] = __playerairplay_postPlayerNotification_block_invoke;
    v7[3] = &__block_descriptor_64_e5_v8__0l;
    v7[4] = v5;
    v7[5] = v1;
    v7[6] = v3;
    v7[7] = v0;
    dispatch_async(v6, v7);
  }
}

void playerairplay_checkAndUpdatePlayQueueItems(uint64_t a1)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_199();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_54_11();
    if (!(!v4 & v3))
    {
      cf = 0;
      playerairplay_synchronizePlayQueueItems(a1);
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v1 + 40), 0, &cf);
      if (cf)
      {
        if (!playerairplay_deferMediaControlPlaylistForInterstitials(a1))
        {
          if (*(v1 + 248))
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            v6 = OUTLINED_FUNCTION_146_2(DerivedStorage);
            PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(v6, v7);
            if (PlayQueueSnapshot)
            {
              v9 = PlayQueueSnapshot;
              Count = CFArrayGetCount(PlayQueueSnapshot);
              if (Count >= 1)
              {
                v11 = Count;
                for (i = 0; i != v11; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
                  itemairplay_applyCachedPropertiesOnMediaControlItem(ValueAtIndex);
                }
              }

              CFRelease(v9);
            }
          }

          else
          {
            if (!cf)
            {
              return;
            }

            itemairplay_applyCachedPropertiesOnMediaControlItem(cf);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

void playerairplay_synchronizePlayQueueItems(uint64_t a1)
{
  v1028 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_199();
  HIDWORD(v943) = playerairplay_deferMediaControlPlaylistForInterstitials(v3);
  v987 = v1;
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(*(v1 + 40), 0);
  if (PlayQueueSnapshot)
  {
    v5 = PlayQueueSnapshot;
    v978 = a1;
    Count = CFArrayGetCount(PlayQueueSnapshot);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = 0;
      v11 = &kFigPlaybackItemNotification_ReadyForPlayback;
      *&v7 = 136316162;
      v952 = v7;
      *&v7 = 136316674;
      *v773 = v7;
      v12 = &off_196E72000;
      v808 = 0x1F0B34F18;
      v799 = 0x1F0B34F38;
      v692 = @"com.apple.coremedia.assettype.streaming";
      *&v7 = 136317442;
      *v917 = v7;
      cf2 = @"com.apple.coremedia.assettype.file";
      v880 = @"assetProperty_ContentByteStream";
      v862 = @"assetProperty_Tracks";
      v871 = @"assetProperty_FormatReader";
      v899 = @"MediaSelectionArray";
      allocator = *MEMORY[0x1E695E480];
      v683 = @"ReadyForInspection";
      v826 = @"Duration";
      v835 = @"FailedToBecomeReadyForInspection";
      v755 = @"CanPlayFastReverse";
      v764 = @"CanPlayFastForward";
      v737 = @"SupportsFrameStepping";
      v746 = @"CanPlayReverse";
      v719 = @"CurrentDimensions";
      v728 = @"CurrentDuration";
      v701 = @"ReadyForPlayback";
      v710 = @"DisplayNonForcedSubtitles";
      v844 = @"FailedToBecomeReadyForPlayback";
      v853 = @"ItemWasRemovedFromPlayQueue";
      v817 = @"ItemStoppedBeingCurrent";
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        FigReadWriteLockLockForRead();
        if (*(DerivedStorage + 72))
        {
          ValueAtIndex = v9;
          goto LABEL_70;
        }

        os_log_and_send_and_compose_flags_and_os_log_type = *(DerivedStorage + 707);
        if (os_log_and_send_and_compose_flags_and_os_log_type == 2)
        {
          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v23 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v16, v17, v18, v19, v20, v21, v22, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
            OUTLINED_FUNCTION_33_15(v23, v24, v25, v26, v27, v28, v29, v30, v648, v657, v666, v675, v684, v693, v702, v711, v720, v729, v738, v747, v756, v765, v774, v782, v791, v800, v809, v818, v827, v836, v845, v854, v863, v872, v881, cfa, v900, allocatora, v918, v926, cf2a, v944, v953, v961, v970, v979, v988, v997, v1005, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
            OUTLINED_FUNCTION_23_25();
            if (v12)
            {
              if (v978)
              {
                v31 = CMBaseObjectGetDerivedStorage();
                if (ValueAtIndex)
                {
                  goto LABEL_11;
                }
              }

              else if (ValueAtIndex)
              {
LABEL_11:
                v31 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v31, v32, v33, v34, v35, v36, v37, v38, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
              OUTLINED_FUNCTION_6_60();
              *&v1013[14] = v978;
              *&v1013[22] = v125;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl(v126, v127, v128, v129, v130, v131, v132, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Cleaning up item because it is no longer current");
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635(v133, v134, v135, v136, v137);
          }

          itemairplay_doCleanupAtEndOfPlayback(ValueAtIndex);
          v138 = OUTLINED_FUNCTION_144_0();
          itemairplay_cleanupItemForAirPlay(v138, v139);
LABEL_53:
          v140 = *(v987 + 40);
          v141 = ValueAtIndex;
          v142 = 1;
          goto LABEL_68;
        }

        if (!*(DerivedStorage + 700))
        {
          if (*(DerivedStorage + 701))
          {
            if (dword_1EAF172E8)
            {
              OUTLINED_FUNCTION_45_11();
              OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v251, v252, v253, v254, v255, v256, v257, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
              OUTLINED_FUNCTION_48_11();
              cf = v258;
              os_log_type_enabled(v258, v11);
              OUTLINED_FUNCTION_23_25();
              if (v12)
              {
                if (v978)
                {
                  v259 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v259 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v259, v260, v261, v262, v263, v264, v265, v266, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                OUTLINED_FUNCTION_47_9();
                *&v1013[12] = 2048;
                *&v1013[14] = v978;
                *&v1013[22] = 2048;
                OUTLINED_FUNCTION_0_101();
                v396 = OUTLINED_FUNCTION_25();
                _os_log_send_and_compose_impl(v396, v397, v398, v399, &dword_1962D5000, cf, v11, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Removing item from MC because it is no longer in the Client PQ");
                OUTLINED_FUNCTION_52_10();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635(v400, v401, v402, v403, v404);
            }

            if (!v9)
            {
              v405 = *(CMBaseObjectGetDerivedStorage() + 216);
              v406 = (v405 & 0xFFFFFFFE) == 0xE || v405 == 12;
              if (v406 && dword_1EAF172E8)
              {
                OUTLINED_FUNCTION_45_11();
                v414 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v407, v408, v409, v410, v411, v412, v413, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                OUTLINED_FUNCTION_48_11();
                os_log_type_enabled(v415, v11);
                OUTLINED_FUNCTION_23_25();
                if (v12)
                {
                  if (v978)
                  {
                    v416 = CMBaseObjectGetDerivedStorage();
                  }

                  if (ValueAtIndex)
                  {
                    v416 = CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_58_5(v416, v417, v418, v419, v420, v421, v422, v423, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                  OUTLINED_FUNCTION_47_9();
                  *&v1013[12] = 2048;
                  *&v1013[14] = v978;
                  *&v1013[22] = 2048;
                  OUTLINED_FUNCTION_0_101();
                  v456 = OUTLINED_FUNCTION_25();
                  _os_log_send_and_compose_impl(v456, v457, v458, v459, &dword_1962D5000, v414, v11, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s First item being removed while starting");
                  OUTLINED_FUNCTION_52_10();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_635(v460, v461, v462, v463, v464);
              }
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type == 1)
            {
              *(DerivedStorage + 707) = 2;
              itemairplay_doCleanupAtEndOfPlayback(ValueAtIndex);
              v465 = OUTLINED_FUNCTION_144_0();
              itemairplay_cleanupItemForAirPlay(v465, v466);
              playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v978, *(DerivedStorage + 80));
              v475 = OUTLINED_FUNCTION_37_15(v467, v468, v469, v470, v471, v472, v473, v474, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987);
              playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v475, v476, v477, 1);
              itemairplay_postItemNotification();
            }

            else
            {
              itemairplay_doCleanupAtEndOfPlayback(ValueAtIndex);
              v478 = OUTLINED_FUNCTION_144_0();
              itemairplay_cleanupItemForAirPlay(v478, v479);
              playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v978, *(DerivedStorage + 80));
              v488 = OUTLINED_FUNCTION_37_15(v480, v481, v482, v483, v484, v485, v486, v487, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987);
              playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v488, v489, v490, 1);
            }

            itemairplay_postItemNotification();
            goto LABEL_69;
          }

          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v56 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v49, v50, v51, v52, v53, v54, v55, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
            OUTLINED_FUNCTION_33_15(v56, v57, v58, v59, v60, v61, v62, v63, v649, v658, v667, v676, v685, v694, v703, v712, v721, v730, v739, v748, v757, v766, v775, v783, v792, v801, v810, v819, v828, v837, v846, v855, v864, v873, v882, cfb, v901, allocatorb, v919, v927, cf2b, v945, v954, v962, v971, v980, v989, v998, v1006, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
            OUTLINED_FUNCTION_23_25();
            if (v12)
            {
              if (v978)
              {
                v64 = CMBaseObjectGetDerivedStorage();
                if (ValueAtIndex)
                {
                  goto LABEL_26;
                }
              }

              else if (ValueAtIndex)
              {
LABEL_26:
                v64 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v64, v65, v66, v67, v68, v69, v70, v71, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
              OUTLINED_FUNCTION_6_60();
              *&v1013[14] = v978;
              *&v1013[22] = v169;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl(v170, v171, v172, v173, v174, v175, v176, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Cleaning up item because it is no longer in the Client PQ and was not added to MC");
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635(v177, v178, v179, v180, v181);
          }

          itemairplay_doCleanupAtEndOfPlayback(ValueAtIndex);
          v182 = OUTLINED_FUNCTION_505();
          itemairplay_cleanupItemForAirPlay(v182, v183);
          goto LABEL_67;
        }

        v12 = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 701))
        {
          if (HIDWORD(v943))
          {
            *v1019 = *MEMORY[0x1E6960C70];
            *&v1019[16] = *(MEMORY[0x1E6960C70] + 16);
            if (dword_1EAF172E8)
            {
              HIDWORD(v996) = 0;
              BYTE3(v996) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v11 = 0;
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_425();
              if (v75)
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              if (v48)
              {
                if (v978)
                {
                  v39 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v39 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v39, v40, v41, v42, v43, v44, v45, v46, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                OUTLINED_FUNCTION_47_9();
                *&v1013[12] = 2048;
                *&v1013[14] = v978;
                *&v1013[22] = 2048;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_27();
                OUTLINED_FUNCTION_160_1();
                _os_log_send_and_compose_impl(v367, v368, v369, v370, v371, v372, v373, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Removing item from MC but leaving in the Client PQ for interstitial playback");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635(v374, v375, v376, v377, v378);
            }

            CMTimebaseSetRate(*(DerivedStorage + 568), 0.0);
            v379 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v379)
            {
              v379(ValueAtIndex, v1019);
            }

            values = *v1019;
            v1026 = *&v1019[16];
            itemairplay_setRememberedTimeAndDefaultFlag(ValueAtIndex, &values);
            v380 = OUTLINED_FUNCTION_505();
            itemairplay_controlPlaybackActivityTimer(v380, v381);
            playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v978, *(DerivedStorage + 80));
            v390 = OUTLINED_FUNCTION_37_15(v382, v383, v384, v385, v386, v387, v388, v389, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987);
            playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v390, v391, v392, 1);
          }
        }

        else
        {
          v72 = *(DerivedStorage + 704);
          v73 = v72 > 5;
          v74 = (1 << v72) & 0x23;
          v75 = v73 || v74 == 0;
          if (v75)
          {
            v143 = CMBaseObjectGetDerivedStorage();
            v144 = OUTLINED_FUNCTION_119_2(v143);
            v151 = 0;
            v11 = 1;
            switch(*(os_log_and_send_and_compose_flags_and_os_log_type + 703))
            {
              case 0:
                cf = v144;
                if (dword_1EAF172E8)
                {
                  OUTLINED_FUNCTION_45_11();
                  OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v152, v153, v154, v155, v156, v157, v158, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                  OUTLINED_FUNCTION_48_11();
                  v674 = v159;
                  os_log_type_enabled(v159, OS_LOG_TYPE_INFO);
                  OUTLINED_FUNCTION_425();
                  if (v75)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = v167;
                  }

                  else
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = 0;
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    v168 = cf;
                    if (cf)
                    {
                      v168 = CMBaseObjectGetDerivedStorage();
                    }

                    if (ValueAtIndex)
                    {
                      v168 = CMBaseObjectGetDerivedStorage();
                    }

                    OUTLINED_FUNCTION_58_5(v168, v160, v161, v162, v163, v164, v165, v166, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                    OUTLINED_FUNCTION_6_60();
                    *&v1013[14] = cf;
                    *&v1013[22] = v509;
                    OUTLINED_FUNCTION_0_101();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v510, v511, v512, v513, &dword_1962D5000, v674, 1, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Start vexchange check for item");
                    OUTLINED_FUNCTION_52_10();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_635(v514, v515, v516, v517, v518);
                }

                v519 = CMBaseObjectGetDerivedStorage();
                OUTLINED_FUNCTION_180_2(v519);
                if (MEMORY[0x49])
                {
                  FigReadWriteLockUnlockForRead();
                }

                else
                {
                  v674 = FigCFWeakReferenceHolderCopyReferencedObject();
                  v520 = CMBaseObjectGetDerivedStorage();
                  if (!v520 || *v520 || itemairplay_assureItemForAirPlay(ValueAtIndex))
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = 0;
                    v521 = v674;
                  }

                  else
                  {
                    LOBYTE(values) = 0;
                    v1013[0] = 0;
                    v1019[0] = 0;
                    FigCFDictionaryGetBooleanIfPresent();
                    FigCFDictionaryGetBooleanIfPresent();
                    v521 = v674;
                    if (v1013[0] || *(CMBaseObjectGetDerivedStorage() + 368) || v1019[0] && MEMORY[0x19] == v692 || (v522 = OUTLINED_FUNCTION_144_0(), (CPEProtectorIfAvailable = itemairplay_createCPEProtectorIfAvailable(v522, v523, v524)) == 0))
                    {
                      MEMORY[0x2C0] = 1;
                      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v674);
                      os_log_and_send_and_compose_flags_and_os_log_type = 0;
                    }

                    else
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = CPEProtectorIfAvailable;
                      MEMORY[0x2C0] = 2;
                      if (!playerairplay_performQueuedItemVodkaExchange(v674, ValueAtIndex, CPEProtectorIfAvailable, values) && MEMORY[0x2C0] == 2)
                      {
                        itemairplay_controlPlaybackActivityTimer(ValueAtIndex, 3);
                      }
                    }
                  }

                  if (v521)
                  {
                    CFRelease(v521);
                  }

                  FigReadWriteLockUnlockForRead();
                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
                  }
                }

                v11 = 1;
                goto LABEL_301;
              case 1:
              case 3:
                goto LABEL_302;
              case 2:
                cf = v144;
                v284 = CMBaseObjectGetDerivedStorage();
                if (v284)
                {
                  v285 = 1000000000 * *(v284 + 404);
                }

                else
                {
                  v285 = 45000000000;
                }

                if (FigGetUpTimeNanoseconds() - *(os_log_and_send_and_compose_flags_and_os_log_type + 736) < v285)
                {
                  goto LABEL_301;
                }

                if (!dword_1EAF172E8)
                {
                  goto LABEL_300;
                }

                OUTLINED_FUNCTION_45_11();
                OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v439, v440, v441, v442, v443, v444, v445, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                OUTLINED_FUNCTION_48_11();
                v674 = v446;
                os_log_type_enabled(v446, OS_LOG_TYPE_INFO);
                OUTLINED_FUNCTION_425();
                if (v75)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = v454;
                }

                else
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = v285;
                }

                if (!os_log_and_send_and_compose_flags_and_os_log_type)
                {
                  goto LABEL_299;
                }

                v455 = cf;
                if (cf)
                {
                  v455 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v455 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v455, v447, v448, v449, v450, v451, v452, v453, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                OUTLINED_FUNCTION_6_60();
                *&v1013[14] = cf;
                *&v1013[22] = v550;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v551, v552, v553, v554, &dword_1962D5000, v674, 1, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Cleaning up item because vexchange timed out");
LABEL_298:
                OUTLINED_FUNCTION_52_10();
LABEL_299:
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_635(v555, v556, v557, v558, v559);
LABEL_300:
                itemairplay_doCleanupAtEndOfPlayback(ValueAtIndex);
                v560 = OUTLINED_FUNCTION_505();
                itemairplay_cleanupItemForAirPlay(v560, v561);
                v11 = 0;
                goto LABEL_301;
              case 4:
                cf = v144;
                if (!dword_1EAF172E8)
                {
                  goto LABEL_300;
                }

                OUTLINED_FUNCTION_45_11();
                OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v267, v268, v269, v270, v271, v272, v273, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                OUTLINED_FUNCTION_48_11();
                v674 = v274;
                os_log_type_enabled(v274, OS_LOG_TYPE_INFO);
                OUTLINED_FUNCTION_425();
                if (v75)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = v282;
                }

                else
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = 0;
                }

                if (!os_log_and_send_and_compose_flags_and_os_log_type)
                {
                  goto LABEL_299;
                }

                v283 = cf;
                if (cf)
                {
                  v283 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v283 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v283, v275, v276, v277, v278, v279, v280, v281, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                OUTLINED_FUNCTION_6_60();
                *&v1013[14] = cf;
                *&v1013[22] = v504;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v505, v506, v507, v508, &dword_1962D5000, v674, 1, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Cleaning up item because vexchange failed");
                goto LABEL_298;
              default:
                if (dword_1EAF172E8)
                {
                  cff = v144;
                  OUTLINED_FUNCTION_45_11();
                  v293 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v286, v287, v288, v289, v290, v291, v292, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cff, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                  v294 = *v1019;
                  v674 = v293;
                  HIDWORD(v665) = BYTE4(v996);
                  os_log_type_enabled(v293, BYTE4(v996));
                  OUTLINED_FUNCTION_425();
                  if (v75)
                  {
                    v11 = v295;
                  }

                  else
                  {
                    v11 = v294;
                  }

                  if (v11)
                  {
                    if (cf)
                    {
                      v296 = (CMBaseObjectGetDerivedStorage() + 459);
                    }

                    else
                    {
                      v296 = "";
                    }

                    if (ValueAtIndex)
                    {
                      v526 = (CMBaseObjectGetDerivedStorage() + 820);
                    }

                    else
                    {
                      v526 = "";
                    }

                    v527 = *(os_log_and_send_and_compose_flags_and_os_log_type + 703);
                    v528 = *(os_log_and_send_and_compose_flags_and_os_log_type + 704);
                    *v1013 = v773[0];
                    *&v1013[4] = "itemairplay_serviceVodkaExchange";
                    *&v1013[12] = 2048;
                    *&v1013[14] = cf;
                    *&v1013[22] = 2048;
                    v1014 = ValueAtIndex;
                    *v1015 = 2082;
                    *&v1015[2] = v296;
                    *&v1015[10] = 2082;
                    *&v1015[12] = v526;
                    *&v1015[20] = 1024;
                    *&v1015[22] = v527;
                    *&v1015[26] = 1024;
                    *&v1015[28] = v528;
                    OUTLINED_FUNCTION_5_65();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v529, v530, v531, v532, &dword_1962D5000, v674, BYTE4(v996), "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s vexchange status error:Item vexchange status %d, asset status %d");
                    OUTLINED_FUNCTION_52_10();
                  }

                  OUTLINED_FUNCTION_129_3();
                  OUTLINED_FUNCTION_635(v533, v534, v535, v536, v537);
LABEL_301:
                  v151 = 1;
                  v144 = cf;
                }

                else
                {
                  v11 = 1;
                  v151 = 1;
                }

LABEL_302:
                if (v144)
                {
                  CFRelease(v144);
                }

                if (v151)
                {
                  if (v11)
                  {
                    break;
                  }

                  goto LABEL_53;
                }

                if (HIDWORD(v943))
                {
                  if (dword_1EAF172E8)
                  {
                    OUTLINED_FUNCTION_45_11();
                    v569 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v562, v563, v564, v565, v566, v567, v568, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                    OUTLINED_FUNCTION_33_15(v569, v570, v571, v572, v573, v574, v575, v576, v655, v664, v673, v682, v691, v700, v709, v718, v727, v736, v745, v754, v763, v772, v781, v789, v798, v807, v816, v825, v834, v843, v852, v861, v870, v879, v888, cfi, v907, allocatorh, v925, v933, cf2h, v951, v960, v968, v977, v986, v995, v1004, v1012, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
                    OUTLINED_FUNCTION_425();
                    if (v75)
                    {
                      v585 = v584;
                    }

                    else
                    {
                      v585 = v151;
                    }

                    if (v585)
                    {
                      v586 = v978;
                      if (v978)
                      {
                        v586 = CMBaseObjectGetDerivedStorage();
                      }

                      if (ValueAtIndex)
                      {
                        v586 = CMBaseObjectGetDerivedStorage();
                      }

                      OUTLINED_FUNCTION_58_5(v586, v577, v578, v579, v580, v581, v582, v583, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                      OUTLINED_FUNCTION_47_9();
                      *&v1013[12] = 2048;
                      *&v1013[14] = v978;
                      *&v1013[22] = 2048;
                      OUTLINED_FUNCTION_0_101();
                      OUTLINED_FUNCTION_27();
                      OUTLINED_FUNCTION_160_1();
                      _os_log_send_and_compose_impl(v597, v598, v599, v600, v601, v602, v603, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s defer MC Insertion of item, waiting on interstitials");
                      OUTLINED_FUNCTION_52_10();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_635(v604, v605, v606, v607, v608);
                  }

                  break;
                }

                if (v12 && !*(v12 + 701) && (!v9 || *(v12 + 700)))
                {
                  if (dword_1EAF172E8)
                  {
                    OUTLINED_FUNCTION_45_11();
                    OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v609, v610, v611, v612, v613, v614, v615, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                    OUTLINED_FUNCTION_48_11();
                    cf = v616;
                    os_log_type_enabled(v616, v11);
                    OUTLINED_FUNCTION_425();
                    if (v75)
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = v617;
                    }

                    else
                    {
                      os_log_and_send_and_compose_flags_and_os_log_type = v151;
                    }

                    if (os_log_and_send_and_compose_flags_and_os_log_type)
                    {
                      if (v978)
                      {
                        v618 = (CMBaseObjectGetDerivedStorage() + 459);
                      }

                      else
                      {
                        v618 = "";
                      }

                      v674 = v618;
                      if (ValueAtIndex)
                      {
                        v634 = (CMBaseObjectGetDerivedStorage() + 820);
                      }

                      else
                      {
                        v634 = "";
                      }

                      if (v9)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      *v1013 = v773[0];
                      OUTLINED_FUNCTION_4_74();
                      *&v1015[2] = v674;
                      *&v1015[10] = v635;
                      *&v1015[12] = v634;
                      *&v1015[20] = v636;
                      *&v1015[22] = v9;
                      *&v1015[30] = v635;
                      v1016 = v637;
                      OUTLINED_FUNCTION_5_65();
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl(v638, v639, v640, v641, &dword_1962D5000, cf, v11, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s MC Insert of item waiting on previous item %p %{public}s");
                      OUTLINED_FUNCTION_52_10();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_635(v642, v643, v644, v645, v646);
                  }

                  goto LABEL_33;
                }

                if (dword_1EAF172E8)
                {
                  OUTLINED_FUNCTION_45_11();
                  OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v587, v588, v589, v590, v591, v592, v593, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
                  OUTLINED_FUNCTION_48_11();
                  cf = v594;
                  os_log_type_enabled(v594, v11);
                  OUTLINED_FUNCTION_425();
                  if (v75)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = v595;
                  }

                  else
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = v151;
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    if (v978)
                    {
                      v596 = (CMBaseObjectGetDerivedStorage() + 459);
                    }

                    else
                    {
                      v596 = "";
                    }

                    v674 = v596;
                    if (ValueAtIndex)
                    {
                      v619 = (CMBaseObjectGetDerivedStorage() + 820);
                    }

                    else
                    {
                      v619 = "";
                    }

                    if (v9)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    *v1013 = v773[0];
                    OUTLINED_FUNCTION_4_74();
                    *&v1015[2] = v674;
                    *&v1015[10] = v620;
                    *&v1015[12] = v619;
                    *&v1015[20] = v621;
                    *&v1015[22] = v9;
                    *&v1015[30] = v620;
                    v1016 = v622;
                    OUTLINED_FUNCTION_5_65();
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v623, v624, v625, v626, &dword_1962D5000, cf, v11, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Adding item to MC (previous %p %{public}s)");
                    OUTLINED_FUNCTION_52_10();
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_635(v627, v628, v629, v630, v631);
                }

                if (!v9 && *(v987 + 216) == 14)
                {
                  playerairplay_playItemOnMediaControl(v978, ValueAtIndex, v145, v146, v147, v148, v149, v150, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, *v1013, *&v1013[8]);
                }

                else if (*(v987 + 248) || !v12 || FigCFEqual())
                {
                  itemairplay_insertItemOnMediaControl(ValueAtIndex, v9);
                }

                else
                {
                  *(DerivedStorage + 702) = 1;
                }

                v632 = OUTLINED_FUNCTION_505();
                itemairplay_controlPlaybackActivityTimer(v632, v633);
                break;
            }
          }
        }

        if (v12)
        {
LABEL_33:
          if (*(v12 + 707) != 1)
          {
            goto LABEL_70;
          }
        }

        if (*(DerivedStorage + 709) && *(DerivedStorage + 710) && *(DerivedStorage + 728))
        {
          v76 = *(DerivedStorage + 704);
          if (v76 == 4)
          {
            v77 = v978;
            goto LABEL_150;
          }

          v77 = v978;
          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v199 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v192, v193, v194, v195, v196, v197, v198, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
            OUTLINED_FUNCTION_33_15(v199, v200, v201, v202, v203, v204, v205, v206, v652, v661, v670, v679, v688, v697, v706, v715, v724, v733, v742, v751, v760, v769, v778, v786, v795, v804, v813, v822, v831, v840, v849, v858, v867, v876, v885, cfe, v904, allocatore, v922, v930, cf2e, v948, v957, v965, v974, v983, v992, v1001, v1009, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
            OUTLINED_FUNCTION_23_25();
            if (v12)
            {
              if (v77)
              {
                v207 = CMBaseObjectGetDerivedStorage();
                if (ValueAtIndex)
                {
                  goto LABEL_76;
                }
              }

              else if (ValueAtIndex)
              {
LABEL_76:
                v207 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v207, v208, v209, v210, v211, v212, v213, v214, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
              OUTLINED_FUNCTION_6_60();
              *&v1013[14] = v77;
              *&v1013[22] = v297;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl(v298, v299, v300, v301, v302, v303, v304, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Asset loading completed");
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635(v305, v306, v307, v308, v309);
          }

          v76 = 4;
          *(DerivedStorage + 704) = 4;
          goto LABEL_150;
        }

        v76 = *(DerivedStorage + 704);
        if (v76 != 2)
        {
          v77 = v978;
          if (!*(DerivedStorage + 704))
          {
            *(DerivedStorage + 704) = 1;
            if (dword_1EAF172E8)
            {
              OUTLINED_FUNCTION_45_11();
              v85 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v78, v79, v80, v81, v82, v83, v84, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
              OUTLINED_FUNCTION_33_15(v85, v86, v87, v88, v89, v90, v91, v92, v650, v659, v668, v677, v686, v695, v704, v713, v722, v731, v740, v749, v758, v767, v776, v784, v793, v802, v811, v820, v829, v838, v847, v856, v865, v874, v883, cfc, v902, allocatorc, v920, v928, cf2c, v946, v955, v963, v972, v981, v990, v999, v1007, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
              OUTLINED_FUNCTION_23_25();
              if (v12)
              {
                if (v77)
                {
                  v93 = CMBaseObjectGetDerivedStorage();
                }

                if (ValueAtIndex)
                {
                  v93 = CMBaseObjectGetDerivedStorage();
                }

                OUTLINED_FUNCTION_58_5(v93, v94, v95, v96, v97, v98, v99, v100, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
                OUTLINED_FUNCTION_6_60();
                *&v1013[14] = v77;
                *&v1013[22] = v491;
                OUTLINED_FUNCTION_0_101();
                OUTLINED_FUNCTION_25();
                OUTLINED_FUNCTION_160_1();
                _os_log_send_and_compose_impl(v492, v493, v494, v495, v496, v497, v498, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Asset type pending");
                OUTLINED_FUNCTION_52_10();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635(v499, v500, v501, v502, v503);
            }

            itemairplay_startAssetTypeLoadAsync(ValueAtIndex);
            goto LABEL_70;
          }

LABEL_150:
          if (!*(DerivedStorage + 705) && v76 == 4 && *(DerivedStorage + 706))
          {
            *v1013 = v764;
            *&v1013[8] = v755;
            *&v1013[16] = v746;
            v1014 = v737;
            *v1015 = v728;
            *&v1015[8] = v719;
            *&v1015[16] = v710;
            v11 = CFArrayCreate(allocator, v1013, 7, MEMORY[0x1E695E9C0]);
            if (dword_1EAF172E8)
            {
              HIDWORD(v996) = 0;
              BYTE3(v996) = 0;
              v393 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              LODWORD(v12) = 0;
              os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_425();
              if (v75)
              {
                v395 = v394;
              }

              else
              {
                v395 = 0;
              }

              if (v395)
              {
                v538 = "";
                if (v978)
                {
                  v538 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                v539 = "";
                if (ValueAtIndex)
                {
                  v539 = (CMBaseObjectGetDerivedStorage() + 820);
                }

                *v1019 = v952;
                *&v1019[4] = "playerairplay_synchronizePlayQueueItems";
                *&v1019[12] = 2048;
                *&v1019[14] = v978;
                *&v1019[22] = 2048;
                v1020 = ValueAtIndex;
                v1021 = 2082;
                v1022 = v538;
                v1023 = 2082;
                v1024 = v539;
                LODWORD(v656) = 52;
                v647 = v1019;
                v540 = OUTLINED_FUNCTION_27();
                _os_log_send_and_compose_impl(v540, v541, v542, v543, &dword_1962D5000, v393, 0, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Posting ready for playback for item");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_635(v544, v545, v546, v547, v548);
              v77 = v978;
            }

            NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v77, ValueAtIndex, v11);
            itemairplay_postItemNotification();
            *(DerivedStorage + 705) = 1;
            if (NotificationPayloadForProperties)
            {
              CFRelease(NotificationPayloadForProperties);
            }

            if (!v11)
            {
              goto LABEL_70;
            }

            goto LABEL_293;
          }

          if (v76 != 5)
          {
            if (*(DerivedStorage + 706) || !dword_1EAF172E8)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_45_11();
            v317 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v310, v311, v312, v313, v314, v315, v316, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
            OUTLINED_FUNCTION_33_15(v317, v318, v319, v320, v321, v322, v323, v324, v653, v662, v671, v680, v689, v698, v707, v716, v725, v734, v743, v752, v761, v770, v779, v787, v796, v805, v814, v823, v832, v841, v850, v859, v868, v877, v886, cfg, v905, allocatorf, v923, v931, cf2f, v949, v958, v966, v975, v984, v993, v1002, v1010, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
            OUTLINED_FUNCTION_23_25();
            if (v12)
            {
              if (v978)
              {
                v325 = (CMBaseObjectGetDerivedStorage() + 459);
                if (ValueAtIndex)
                {
                  goto LABEL_159;
                }

LABEL_162:
                v326 = "";
              }

              else
              {
                v325 = "";
                if (!ValueAtIndex)
                {
                  goto LABEL_162;
                }

LABEL_159:
                v326 = (CMBaseObjectGetDerivedStorage() + 820);
              }

              v327 = *(DerivedStorage + 703);
              v328 = *(DerivedStorage + 704);
              v329 = *(DerivedStorage + 728);
              v330 = *(DerivedStorage + 709);
              v331 = *(DerivedStorage + 710);
              *v1013 = v917[0];
              *&v1013[4] = "playerairplay_synchronizePlayQueueItems";
              *&v1013[12] = 2048;
              *&v1013[14] = v978;
              *&v1013[22] = 2048;
              v1014 = ValueAtIndex;
              *v1015 = 2082;
              *&v1015[2] = v325;
              *&v1015[10] = 2082;
              *&v1015[12] = v326;
              *&v1015[20] = 1024;
              *&v1015[22] = v327;
              *&v1015[26] = 1024;
              *&v1015[28] = v328;
              LOWORD(v1016) = 1024;
              *(&v1016 + 2) = v329;
              HIWORD(v1016) = 1024;
              LODWORD(v1017) = v330;
              WORD2(v1017) = 1024;
              *(&v1017 + 6) = v331;
              OUTLINED_FUNCTION_5_65();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl(v332, v333, v334, v335, v336, v337, v338, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Item vexchange status %d, asset status %d [asset flags %d %d %d]");
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635(v339, v340, v341, v342, v343);
            goto LABEL_70;
          }

          if (dword_1EAF172E8)
          {
            OUTLINED_FUNCTION_45_11();
            v351 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v344, v345, v346, v347, v348, v349, v350, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
            OUTLINED_FUNCTION_33_15(v351, v352, v353, v354, v355, v356, v357, v358, v654, v663, v672, v681, v690, v699, v708, v717, v726, v735, v744, v753, v762, v771, v780, v788, v797, v806, v815, v824, v833, v842, v851, v860, v869, v878, v887, cfh, v906, allocatorg, v924, v932, cf2g, v950, v959, v967, v976, v985, v994, v1003, v1011, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
            OUTLINED_FUNCTION_23_25();
            if (v12)
            {
              if (v77)
              {
                v359 = CMBaseObjectGetDerivedStorage();
              }

              if (ValueAtIndex)
              {
                v359 = CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_58_5(v359, v360, v361, v362, v363, v364, v365, v366, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
              OUTLINED_FUNCTION_6_60();
              *&v1013[14] = v77;
              *&v1013[22] = v424;
              OUTLINED_FUNCTION_0_101();
              OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_160_1();
              _os_log_send_and_compose_impl(v425, v426, v427, v428, v429, v430, v431, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Cleaning up item because asset loading failed");
              OUTLINED_FUNCTION_52_10();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_635(v432, v433, v434, v435, v436);
          }

          if (*(DerivedStorage + 701))
          {
            itemairplay_removeQueuedItemOnAirPlayController(ValueAtIndex);
          }

          else
          {
            itemairplay_doCleanupAtEndOfPlayback(ValueAtIndex);
            v437 = OUTLINED_FUNCTION_505();
            itemairplay_cleanupItemForAirPlay(v437, v438);
          }

          itemairplay_postItemNotification();
          v184 = *(DerivedStorage + 680);
          if (v184)
          {
            CFRelease(v184);
            *(DerivedStorage + 680) = 0;
          }

LABEL_67:
          v140 = OUTLINED_FUNCTION_37_15(v184, v185, v186, v187, v188, v189, v190, v191, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987);
LABEL_68:
          playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(v140, v141, v142, 1);
LABEL_69:
          ValueAtIndex = 0;
          goto LABEL_70;
        }

        v101 = v978;
        if (dword_1EAF172E8)
        {
          break;
        }

LABEL_81:
        v12 = CMBaseObjectGetDerivedStorage();
        v11 = FigCFWeakReferenceHolderCopyReferencedObject();
        CMBaseObjectGetDerivedStorage();
        if (!*(v12 + 2))
        {
          *(v12 + 704) = 4;
          v231 = 1;
          v232 = 182;
          goto LABEL_110;
        }

        v1013[0] = 0;
        v228 = CMBaseObjectGetDerivedStorage();
        v229 = OUTLINED_FUNCTION_119_2(v228);
        CMBaseObjectGetDerivedStorage();
        cf = v11;
        if (CFEqual(*(os_log_and_send_and_compose_flags_and_os_log_type + 24), cf2))
        {
          v230 = _MergedGlobals_65;
          if (!_MergedGlobals_65)
          {
            *&values = v880;
            *(&values + 1) = v871;
            v1026 = v862;
            v1027 = v899;
            v230 = CFArrayCreate(allocator, &values, 4, MEMORY[0x1E695E9C0]);
            _MergedGlobals_65 = v230;
          }
        }

        else
        {
          v230 = qword_1ED4CAC60;
          if (!qword_1ED4CAC60)
          {
            *&values = v826;
            *(&values + 1) = v899;
            v230 = CFArrayCreate(allocator, &values, 2, MEMORY[0x1E695E9C0]);
            qword_1ED4CAC60 = v230;
          }
        }

        v233 = *(os_log_and_send_and_compose_flags_and_os_log_type + 16);
        v234 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v234 && !v234(v233, v230, v1013, os_log_and_send_and_compose_flags_and_os_log_type + 672))
        {
          if (!v1013[0])
          {
            LODWORD(v230) = 1;
            v11 = cf;
            if (!v229)
            {
              goto LABEL_93;
            }

LABEL_92:
            CFRelease(v229);
            goto LABEL_93;
          }

          itemairplay_postItemNotification();
          v235 = 1;
          LODWORD(v230) = 1;
        }

        else
        {
          OUTLINED_FUNCTION_77_5();
        }

        v11 = cf;
        *(os_log_and_send_and_compose_flags_and_os_log_type + 728) = v235;
        if (v229)
        {
          goto LABEL_92;
        }

LABEL_93:
        if (!v230)
        {
          goto LABEL_111;
        }

        LOBYTE(values) = 0;
        v236 = CMBaseObjectGetDerivedStorage();
        v237 = OUTLINED_FUNCTION_119_2(v236);
        CMBaseObjectGetDerivedStorage();
        if (*(os_log_and_send_and_compose_flags_and_os_log_type + 709) || !*(os_log_and_send_and_compose_flags_and_os_log_type + 648) || *(os_log_and_send_and_compose_flags_and_os_log_type + 664))
        {
          goto LABEL_95;
        }

        FigSimpleMutexLock();
        Copy = CFArrayCreateCopy(allocator, *(os_log_and_send_and_compose_flags_and_os_log_type + 648));
        FigSimpleMutexUnlock();
        v674 = Copy;
        if (!Copy)
        {
          goto LABEL_251;
        }

        Copy = *(os_log_and_send_and_compose_flags_and_os_log_type + 16);
        v244 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v244)
        {
          v245 = v244(Copy, v674, &values, os_log_and_send_and_compose_flags_and_os_log_type + 664);
          v246 = v674;
          LODWORD(Copy) = v245 == 0;
        }

        else
        {
          LODWORD(Copy) = 0;
          v246 = v674;
        }

        CFRelease(v246);
        if (Copy)
        {
          if (values)
          {
LABEL_95:
            v238 = 1;
            LODWORD(Copy) = 1;
            goto LABEL_96;
          }
        }

        if ((Copy & 1) == 0)
        {
LABEL_251:
          OUTLINED_FUNCTION_77_5();
LABEL_96:
          *(os_log_and_send_and_compose_flags_and_os_log_type + 709) = v238;
          if (!v237)
          {
            goto LABEL_98;
          }

LABEL_97:
          CFRelease(v237);
          goto LABEL_98;
        }

        LODWORD(Copy) = 1;
        if (v237)
        {
          goto LABEL_97;
        }

LABEL_98:
        if (!Copy)
        {
          goto LABEL_111;
        }

        LOBYTE(values) = 0;
        v240 = CMBaseObjectGetDerivedStorage();
        v241 = OUTLINED_FUNCTION_119_2(v240);
        CMBaseObjectGetDerivedStorage();
        if (*(os_log_and_send_and_compose_flags_and_os_log_type + 710) || !*(os_log_and_send_and_compose_flags_and_os_log_type + 656) || *(os_log_and_send_and_compose_flags_and_os_log_type + 668))
        {
LABEL_100:
          v242 = 1;
          LODWORD(v243) = 1;
          goto LABEL_101;
        }

        FigSimpleMutexLock();
        v243 = CFArrayCreateCopy(allocator, *(os_log_and_send_and_compose_flags_and_os_log_type + 656));
        FigSimpleMutexUnlock();
        v674 = v243;
        if (v243)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 80))
          {
            v247 = OUTLINED_FUNCTION_312();
            v249 = v248(v247);
            v250 = v243;
            LODWORD(v243) = v249 == 0;
          }

          else
          {
            LODWORD(v243) = 0;
            v250 = v674;
          }

          CFRelease(v250);
          if (v243 && values)
          {
            goto LABEL_100;
          }

          if (v243)
          {
            LODWORD(v243) = 1;
            if (!v241)
            {
              goto LABEL_103;
            }

LABEL_102:
            CFRelease(v241);
            goto LABEL_103;
          }
        }

        OUTLINED_FUNCTION_77_5();
LABEL_101:
        *(os_log_and_send_and_compose_flags_and_os_log_type + 710) = v242;
        if (v241)
        {
          goto LABEL_102;
        }

LABEL_103:
        if (!v243)
        {
          goto LABEL_111;
        }

        if (*(v12 + 709) && *(v12 + 710) && *(v12 + 728))
        {
          v231 = 4;
        }

        else
        {
          v231 = 3;
        }

        v232 = 176;
LABEL_110:
        LOBYTE(v12[v232]) = v231;
LABEL_111:
        if (v11)
        {
          playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v11);
LABEL_293:
          CFRelease(v11);
        }

LABEL_70:
        FigReadWriteLockUnlockForRead();
        ++v10;
        v9 = ValueAtIndex;
        if (v8 == v10)
        {
          goto LABEL_367;
        }
      }

      OUTLINED_FUNCTION_45_11();
      v109 = OUTLINED_FUNCTION_39_13(qword_1EAF172E0, v102, v103, v104, v105, v106, v107, v108, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952, *(&v952 + 1), v969, v978, v987, v996, SBYTE4(v996), *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, v1019[0]);
      OUTLINED_FUNCTION_33_15(v109, v110, v111, v112, v113, v114, v115, v116, v651, v660, v669, v678, v687, v696, v705, v714, v723, v732, v741, v750, v759, v768, v777, v785, v794, v803, v812, v821, v830, v839, v848, v857, v866, v875, v884, cfd, v903, allocatord, v921, v929, cf2d, v947, v956, v964, v973, v982, v991, v1000, v1008, *v1013, *&v1013[8], *&v1013[16], v1014, *v1015, *&v1015[8], *&v1015[16], *&v1015[24], v1016, v1017, *(&v1017 + 1), v1018, *v1019);
      OUTLINED_FUNCTION_23_25();
      if (!v12)
      {
LABEL_80:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635(v223, v224, v225, v226, v227);
        goto LABEL_81;
      }

      if (v101)
      {
        v117 = CMBaseObjectGetDerivedStorage();
        if (!ValueAtIndex)
        {
LABEL_79:
          OUTLINED_FUNCTION_58_5(v117, v118, v119, v120, v121, v122, v123, v124, v647, v656, v665, v674, v683, v692, v701, v710, v719, v728, v737, v746, v755, v764, v773[0], v773[1], v790, v799, v808, v817, v826, v835, v844, v853, v862, v871, v880, cf, v899, allocator, v917[0], v917[1], cf2, v943, v952);
          OUTLINED_FUNCTION_6_60();
          *&v1013[14] = v101;
          *&v1013[22] = v215;
          OUTLINED_FUNCTION_0_101();
          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl(v216, v217, v218, v219, v220, v221, v222, "<<<< FigPlayer_AP >>>> %s: [%p, %p] %{public}s %{public}s Updating asset loading status ");
          OUTLINED_FUNCTION_52_10();
          goto LABEL_80;
        }
      }

      else if (!ValueAtIndex)
      {
        goto LABEL_79;
      }

      v117 = CMBaseObjectGetDerivedStorage();
      goto LABEL_79;
    }

LABEL_367:
    CFRelease(v5);
  }
}

void itemairplay_applyCachedPropertiesOnMediaControlItem(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = OUTLINED_FUNCTION_119_2(DerivedStorage);
    CMBaseObjectGetDerivedStorage();
    if (v4)
    {
      CFRelease(v4);
    }

    if (*(v1 + 700))
    {
      if (*(v1 + 701))
      {
        FigSimpleMutexLock();
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(v1 + 336));
        CFDictionaryRemoveAllValues(*(v1 + 336));
        FigSimpleMutexUnlock();
        if (Copy)
        {
          if (CFDictionaryGetCount(Copy) >= 1)
          {
            CFDictionaryApplyFunction(Copy, pap_applyCachedPropertiesOnMediaControl, a1);
          }

          CFRelease(Copy);
        }
      }
    }
  }
}

void playerairplay_removeQueuedItemUUIDStringOnAirPlayController(uint64_t a1, const void *a2)
{
  if (!*CMBaseObjectGetDerivedStorage())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    if (a1 && !*DerivedStorage && *(DerivedStorage + 280))
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961D40], a2);
      if (pap_shouldUseInterstitialQueuing(a1))
      {
        CFDictionaryAddValue(v6, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_496();
        v7();
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

uint64_t itemairplay_removeQueuedItemOnAirPlayController(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!CMBaseObjectGetDerivedStorage() || (OUTLINED_FUNCTION_100_3(), v5))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    if (v4)
    {
LABEL_7:
      CFRelease(v4);
    }
  }

  else
  {
    FigReadWriteLockLockForRead();
    if (!*(DerivedStorage + 72) && !*v1)
    {
      itemairplay_doCleanupAtEndOfPlayback(a1);
      itemairplay_cleanupItemForAirPlay(a1, 1);
      playerairplay_removeQueuedItemUUIDStringOnAirPlayController(v4, *(DerivedStorage + 80));
    }

    if (v4)
    {
      goto LABEL_7;
    }
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t itemairplay_unsubscribeFromURLProcessor(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1 && *(result + 808))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_68_7();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_67_9();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_66_7();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void itemairplay_sendUnhandledURLResponse(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_135_2(a1, a2);
  v6 = OUTLINED_FUNCTION_119_2(v5);
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_100_3();
    if (!v7)
    {
      FigReadWriteLockLockForRead();
      if (!*(v2 + 72))
      {
        if (v3)
        {
          CFRetain(v3);
        }

        if (v6)
        {
          CFRetain(v6);
        }

        if (v4)
        {
          CFRetain(v4);
        }

        OUTLINED_FUNCTION_0_52();
        OUTLINED_FUNCTION_1_44();
        v9[2] = __itemairplay_sendUnhandledURLResponse_block_invoke;
        v9[3] = &__block_descriptor_64_e5_v8__0l;
        v9[4] = v4;
        v9[5] = v2;
        v9[6] = v6;
        v9[7] = v3;
        dispatch_async(v8, v9);
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  if (v6)
  {
    CFRelease(v6);
  }
}

void itemairplay_handleStreamingKeyRequest(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_135_2(a1, a2);
  v6 = OUTLINED_FUNCTION_119_2(v5);
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_100_3();
    if (!v7)
    {
      FigReadWriteLockLockForRead();
      if (!*(v2 + 72))
      {
        if (v3)
        {
          CFRetain(v3);
        }

        if (v6)
        {
          CFRetain(v6);
        }

        if (v4)
        {
          CFRetain(v4);
        }

        OUTLINED_FUNCTION_0_52();
        OUTLINED_FUNCTION_1_44();
        v9[2] = __itemairplay_handleStreamingKeyRequest_block_invoke;
        v9[3] = &__block_descriptor_64_e5_v8__0l;
        v9[4] = v2;
        v9[5] = v4;
        v9[6] = v6;
        v9[7] = v3;
        dispatch_async(v8, v9);
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  if (v6)
  {
    CFRelease(v6);
  }
}

void itemairplay_handleURLProcessorFailed(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage)
  {
    if (a5)
    {
      CFRetain(a5);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    v10[2] = __itemairplay_handleURLProcessorFailed_block_invoke;
    v10[3] = &__block_descriptor_48_e5_v8__0l;
    v10[4] = a5;
    v10[5] = a2;
    dispatch_async(v9, v10);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t pap_playbackSessionGetBooleanProperty()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v0 || *DerivedStorage || !*(DerivedStorage + 280))
  {
    return 0;
  }

  FigEndpointPlaybackSessionGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v2 = OUTLINED_FUNCTION_177();
    v3(v2);
  }

  return FigCFEqual();
}

void itemairplay_postFailNotificationWithError(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ErrorPayload = iapc_createErrorPayload(a2, a3);
  if (DerivedStorage)
  {
    if (dword_1EAF172E8)
    {
      OUTLINED_FUNCTION_147();
      v9 = OUTLINED_FUNCTION_149_1();
      v17 = OUTLINED_FUNCTION_126(v9, v10, v11, v12, v13, v14, v15, v16, v38, v40, v42, *v44, v44[2], v44[3], v44[4]);
      OUTLINED_FUNCTION_130(v17, v18, v19, v20, v21, v22, v23, v24, v39, v41, v43, v45, v46, v47, v48);
      OUTLINED_FUNCTION_28();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_53_10();
        OUTLINED_FUNCTION_39();
        v25 = OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_61_5(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v33, v34, v35, v36, v37);
    }

    OUTLINED_FUNCTION_236();
    itemairplay_postItemNotification();
  }

  if (ErrorPayload)
  {
    CFRelease(ErrorPayload);
  }
}

void pap_playbackSessionPerformRemoteAction(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    OUTLINED_FUNCTION_100_3();
    if (!v6)
    {
      if (*(v3 + 280))
      {
        if (pap_shouldUseInterstitialQueuing(a1))
        {
          CFDictionaryAddValue(a3, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 112))
        {
          v7 = OUTLINED_FUNCTION_502();

          v8(v7);
        }
      }
    }
  }
}

void __itemairplay_handleStreamingKeyRequest_block_invoke(void *a1)
{
  FigReadWriteLockLockForRead();
  if (*(a1[4] + 72))
  {
    CopyRemovingKeys = 0;
    v3 = 0;
  }

  else
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 32);
    v3 = Mutable;
    if (Mutable && (CFDataSetLength(Mutable, 32), (MutableBytePtr = CFDataGetMutableBytePtr(v3)) != 0))
    {
      v5 = MutableBytePtr;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetInt64IfPresent();
      v5[24] = 0;
      *(v5 + 2) = 0;
      v6 = a1[6];
      *v5 = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      v7 = a1[7];
      *(v5 + 1) = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      CFRetain(v3);
      CopyRemovingKeys = FigCFDictionaryCreateCopyRemovingKeys();
      pap_playbackSessionPerformRemoteAction(a1[6], *MEMORY[0x1E6961A18], CopyRemovingKeys);
    }

    else
    {
      CopyRemovingKeys = 0;
    }
  }

  OUTLINED_FUNCTION_137_1();
  if (v3)
  {
    CFRelease(v3);
  }

  if (CopyRemovingKeys)
  {
    CFRelease(CopyRemovingKeys);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    CFRelease(v11);
  }
}

void pap_playbackSessionRequestForStreamingKeyCompletion()
{
  OUTLINED_FUNCTION_471();
  v3 = v2;
  MutableBytePtr = CFDataGetMutableBytePtr(v4);
  if (MutableBytePtr)
  {
    v6 = MutableBytePtr;
    CMBaseObjectGetDerivedStorage();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v1)
    {
      CFRetain(v1);
    }

    OUTLINED_FUNCTION_2_49();
    v10 = 3221225472;
    v11 = __pap_playbackSessionRequestForStreamingKeyCompletion_block_invoke;
    v12 = &__block_descriptor_68_e5_v8__0l;
    v17 = v3;
    v13 = v1;
    v14 = v6;
    v15 = DerivedStorage;
    v16 = v0;
    dispatch_async(v8, block);
  }
}

void __itemairplay_handleURLProcessorFailed_block_invoke(uint64_t a1)
{
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  itemairplay_postFailNotificationWithError(*(a1 + 40), 0, 0);
  v2 = *(a1 + 32);
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

uint64_t itemairplay_assureItemForAirPlay(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_119_2(DerivedStorage);
  if (*(v1 + 72))
  {
    goto LABEL_2;
  }

  if (!*(v1 + 568))
  {
    v6 = *MEMORY[0x1E695E480];
    HostTimeClock = CMClockGetHostTimeClock();
    v4 = CMTimebaseCreateWithSourceClock(v6, HostTimeClock, (v1 + 568));
    if (v4)
    {
LABEL_3:
      v5 = v4;
      if (!v3)
      {
        return v5;
      }

      goto LABEL_13;
    }
  }

  if (!*(v1 + 592))
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (!v8 || *v8)
    {
LABEL_2:
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_3;
    }

    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v8 + 88));
    *(v1 + 592) = v9;
    if (!v9)
    {
      v5 = 4294954434;
      if (!v3)
      {
        return v5;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_496();
    dispatch_source_set_timer(v10, v11, v12, v13);
    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_1_44();
    DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
    dispatch_source_set_event_handler(*(v1 + 592), DispatchSourceBlock);
    _Block_release(DispatchSourceBlock);
    dispatch_resume(*(v1 + 592));
  }

  v5 = 0;
  if (v3)
  {
LABEL_13:
    CFRelease(v3);
  }

  return v5;
}

uint64_t itemairplay_createCPEProtectorIfAvailable(uint64_t a1, int a2, _BYTE *a3)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemairplay_getiTunesStoreContentType(a1);
  valuePtr = 0;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!v7 || *v7)
  {
    goto LABEL_20;
  }

  if (pap_playbackSessionGetBooleanProperty())
  {
    v8 = 0;
    Value = *MEMORY[0x1E695E870];
LABEL_8:
    v10 = itemairplay_copyiTunesStoreContentInfo(a1);
    v11 = v10;
    if (v10)
    {
      Value = CFDictionaryGetValue(v10, @"assetOption_iTunesStoreContentID");
      if (!Value)
      {
LABEL_10:
        if (!v11)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      goto LABEL_10;
    }

    CFRetain(Value);
    if (!v11)
    {
LABEL_11:
      if (!Value)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_25:
    CFRelease(v11);
    if (!Value)
    {
      goto LABEL_13;
    }

LABEL_12:
    CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    goto LABEL_13;
  }

  v8 = itemairplay_copyiTunesStoreAlternateContentID(a1);
  Value = *MEMORY[0x1E695E870];
  OUTLINED_FUNCTION_104_0();
  if (FigCFEqual())
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    Value = 0;
    goto LABEL_13;
  }

  Value = CFRetain(v8);
  if (Value)
  {
    goto LABEL_12;
  }

LABEL_13:
  *a3 = 0;
  isLocalFileURL = pap_isLocalFileURL(*(DerivedStorage + 88), 0);
  FigCFDictionaryGetBooleanIfPresent();
  if (isLocalFileURL)
  {
    FigPlaybackItemGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      v15(v14, @"CPEProtector", *MEMORY[0x1E695E480], &v18);
    }
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_20:
  if (v6)
  {
    CFRelease(v6);
  }

  return v18;
}

uint64_t itemairplay_requestAirPlayPlaybackInfo(const void *a1, uint64_t a2, char a3, char a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (!*(v4 + 72))
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      if (!playerairplay_deferMediaControlPlaylistForInterstitials(v10))
      {
        v12 = CMBaseObjectGetDerivedStorage();
        if (!*v12 && !*(v4 + 72))
        {
          v13 = v12;
          CFRetain(v11);
          if (a1)
          {
            CFRetain(a1);
          }

          OUTLINED_FUNCTION_0_52();
          OUTLINED_FUNCTION_1_44();
          v16[2] = __itemairplay_requestAirPlayPlaybackInfo_block_invoke;
          v16[3] = &__block_descriptor_74_e5_v8__0l;
          v16[4] = a2;
          v16[5] = v13;
          v16[6] = v4;
          v16[7] = v11;
          v16[8] = a1;
          v17 = a3;
          v18 = a4;
          dispatch_async(v14, v16);
        }
      }

      CFRelease(v11);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void __itemairplay_requestAirPlayPlaybackInfo_block_invoke(uint64_t a1)
{
  if (!**(a1 + 40) && !*(*(a1 + 48) + 72))
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      v2 = OUTLINED_FUNCTION_62_8();
      v3 = *(a1 + 56);
      *v2 = v3;
      if (v3)
      {
        CFRetain(v3);
      }

      v4 = *(a1 + 64);
      v2[1] = v4;
      if (v4)
      {
        CFRetain(v4);
      }
    }

    *(v2 + 29) = *(a1 + 72);
    *(v2 + 30) = *(a1 + 73);
    if (*(a1 + 72))
    {
      v5 = *(a1 + 48);
      *(v5 + 252) = *(v5 + 160);
      *(v5 + 268) = *(v5 + 176);
    }

    v6 = *(a1 + 56);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v6 && (v8 = *(DerivedStorage + 280)) != 0 && !*DerivedStorage)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v9(v8, pap_playbackSessionGetPlaybackInfoCompletion, v2);
      }
    }

    else
    {
      pap_playbackSessionFreeSeekCompletionContext(v2);
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {

    CFRelease(v11);
  }
}

uint64_t itemairplay_getPlaybackInfoCompletionHandler(uint64_t a1, const void *a2, const __CFDictionary *a3, int a4, int a5, int a6, int a7, CMTime *a8)
{
  HIDWORD(v408) = a6;
  v522 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (*(v8 + 72))
  {
    return FigReadWriteLockUnlockForRead();
  }

  if (!CMBaseObjectGetDerivedStorage())
  {
    return FigReadWriteLockUnlockForRead();
  }

  OUTLINED_FUNCTION_100_3();
  if (v18)
  {
    return FigReadWriteLockUnlockForRead();
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a3, @"item");
  if (!Value)
  {
    Value = a3;
  }

  v20 = CFDictionaryGetValue(Value, *MEMORY[0x1E6961D40]);
  if (v20)
  {
    v21 = CFEqual(v20, *(v8 + 80)) != 0;
    if (a4)
    {
LABEL_15:
      if (a4 == -6722)
      {
        playerairplay_shutdownAirPlayVideoPlaybackDueToServer(a2);
      }

      return FigReadWriteLockUnlockForRead();
    }
  }

  else
  {
    v21 = 1;
    if (a4)
    {
      goto LABEL_15;
    }
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  *&v379[28] = a7;
  HIWORD(v488) = 0;
  LODWORD(v488) = 0;
  Rate = CMTimebaseGetRate(*(v8 + 568));
  *(&v481 + 1) = Rate;
  v515 = *(v8 + 160);
  HIDWORD(v364) = *(v8 + 172);
  v516 = *(v8 + 168);
  *&v364 = *(v8 + 176);
  *v455 = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  *&v455[16] = epoch;
  *v379 = *MEMORY[0x1E6960C70];
  *v429 = *MEMORY[0x1E6960C70];
  *&v429[16] = epoch;
  HIBYTE(v422) = 0;
  v24 = CFGetTypeID(a3);
  if (v24 != CFDictionaryGetTypeID())
  {
    return FigReadWriteLockUnlockForRead();
  }

  FigCFDictionaryGetValue();
  FigCFDictionaryGetBooleanIfPresent();
  *&v379[16] = epoch;
  LODWORD(v400) = a5;
  v350 = a8;
  if (FigCFEqual())
  {
    if (dword_1EAF172E8)
    {
      LODWORD(values.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMTimebaseSetRate(*(v8 + 568), 0.0);
  }

  else
  {
    FigCFDictionaryGetFloat32IfPresent();
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (*(v9 + 456))
  {
    *&time1.value = *v379;
    time1.epoch = epoch;
    rhs.value = *MEMORY[0x1E6960C70];
    flags = *(MEMORY[0x1E6960C70] + 12);
    rhs.timescale = *(MEMORY[0x1E6960C70] + 8);
    FigSimpleMutexLock();
    v28 = *(v8 + 576);
    if (v28)
    {
      v29 = CFRetain(v28);
      FigSimpleMutexUnlock();
      if (v29)
      {
        CMTimebaseGetTime(&time, v29);
        rhs.value = time.value;
        flags = time.flags;
        rhs.timescale = time.timescale;
        epoch = time.epoch;
        CFRelease(v29);
      }
    }

    else
    {
      FigSimpleMutexUnlock();
    }

    FigCFDictionaryGetCMTimeIfPresent();
    if ((time1.flags & 0x1D) == 1)
    {
      time = time1;
      CMTimeGetSeconds(&time);
    }

    if ((flags & 0x1D) == 1)
    {
      time.value = rhs.value;
      time.timescale = rhs.timescale;
      time.flags = flags;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      if ((time1.flags & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_27_17(v30, v31, v32, v33, v34, v35, v36, v37, v309, v316, v323, v330, v337, *(&v337 + 1), a8, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, at, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, rhs.value, __SPAIR64__(flags, rhs.timescale), epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, time.value, *&time.timescale, time.epoch, v505, v506, v507, v508, v509, v510, v511, v512, v513, *&time1.value);
        v46 = OUTLINED_FUNCTION_150_2(v38, v39, v40, v41, v42, v43, v44, v45, v310, v317, v324, v331, v338, keya, v351, v358, v365, v372, v380, v385, v390, v395, v401, v409, atc, v423, v430, v436, v442, v449, v456, v462, v468, v475, v482, v489, type.value, *&type.timescale, type.epoch, v496, values.value);
        CMTimeSubtract(v48, v46, v47);
        CMTimeGetSeconds(&time);
      }
    }

    epoch = *&v379[16];
  }

  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  v49 = CMBaseObjectGetDerivedStorage();
  v57 = *(v49 + 360);
  if (v57)
  {
    LODWORD(v57) = *(v8 + 144);
    if (v57)
    {
      LODWORD(v57) = *(v9 + 241) == 0;
    }
  }

  if (!(*&v379[28] | a5) && Rate == 0.0 && (v58 = *(&v481 + 1), ((*(&v481 + 1) == Rate) & ~v57) != 0))
  {
    LODWORD(v357) = 0;
  }

  else
  {
    if (a5)
    {
      v59 = *(v8 + 264);
      if (v59)
      {
        v515 = *(v8 + 252);
        v516 = *(v8 + 260);
        *&v364 = *(v8 + 268);
        *(v8 + 268) = epoch;
        *(v8 + 252) = *v379;
        HIDWORD(v364) = v59;
      }
    }

    if (dword_1EAF172E8)
    {
      v49 = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF172E8)
      {
        v60 = *(v49 + 216);
        if (v60)
        {
          if (v60 != 10)
          {
            LODWORD(values.value) = 0;
            LOBYTE(type.value) = 0;
            v357 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            DWORD2(v337) = 0;
            os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_414(v61, v62, v63, v64, v65);
          }
        }
      }
    }

    if (v455[12])
    {
      LODWORD(v357) = *(v8 + 132) & 1;
      if (v357)
      {
        if (*(v8 + 157))
        {
          v49 = CMBaseObjectGetDerivedStorage();
          if (*(v49 + 360))
          {
            time1 = *(v8 + 120);
            v66 = OUTLINED_FUNCTION_145_1();
            v49 = itemairplay_airplaySetCurrentTime(v66, v67, 0xF5u, v68, v69, 0);
            *(v8 + 157) = 0;
          }
        }
      }

      OUTLINED_FUNCTION_40_12(v49, v50, v51, v52, v53, v54, v55, v56, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, at, v422, *v429);
      time = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &time) || CFEqual(*(v8 + 24), @"com.apple.coremedia.assettype.streaming") | a5)
      {
        values = *v455;
        v70 = CMBaseObjectGetDerivedStorage();
        v71 = CMTimebaseCopySource(*(v70 + 568));
        CMTimebaseGetRate(*(v70 + 568));
        CMSyncGetTime(&time1, v71);
        time = *v455;
        CMTimebaseSetRateAndAnchorTimeWithFlags();
        time1 = *v455;
        v72 = OUTLINED_FUNCTION_145_1();
        itemairplay_setRememberedTimeAndDefaultFlag(v72, v73);
        if (v71)
        {
          CFRelease(v71);
        }

        v74 = *(v8 + 148);
        if (v74 && v74 == *(v8 + 144))
        {
          *(v8 + 156) = 1;
        }
      }
    }

    else
    {
      LODWORD(v357) = 0;
    }

    v58 = *(&v481 + 1);
  }

  v75 = HIDWORD(v408) != 1 || v58 == Rate;
  if (!v75 && v58 != 0.0 && *(v9 + 56) == 0.0)
  {
    time1 = *v455;
    v76 = OUTLINED_FUNCTION_171();
    playerairplay_notifyStartupTasksOfEvents(v76, v77, 5, 0, v78, v79, v80);
    time1.value = 0;
    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 39, &time1);
    playerairplay_updatePlayerRateToMatch(a2, time1.value, *(&v481 + 1));
    if (time1.value)
    {
      CFRelease(time1.value);
    }

    v58 = *(&v481 + 1);
  }

  if (v58 != Rate)
  {
    v81 = OUTLINED_FUNCTION_171();
    v84 = playerairplay_ignoreRemoteRateUpdate(v81, v82, v83);
    if ((*(&v481 + 1) != 0.0 || !*(v9 + 241) || (*(v8 + 524) & 1) == 0) && !v84)
    {
      if (HIDWORD(v408) == 1 || Rate != 0.0 || (CMBaseObjectGetDerivedStorage(), LOBYTE(time1.value) = 0, FigCFDictionaryGetBooleanIfPresent(), !LOBYTE(time1.value)) || !*(v9 + 456))
      {
        time1.value = 0;
        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 39, &time1);
        CFDictionaryAddValue(time1.value, @"PauseAffectsCoordinatedPlayback", *MEMORY[0x1E695E4D0]);
        playerairplay_updatePlayerRateToMatch(a2, time1.value, *(&v481 + 1));
        if (time1.value)
        {
          CFRelease(time1.value);
        }
      }
    }

    if (*(&v481 + 1) != 0.0 && !*(v9 + 241))
    {
      v85 = OUTLINED_FUNCTION_171();
      if (pap_hasAirPlayReachedTimeToPausePlayback(v85, v86))
      {
        *(v9 + 64) = 0;
        v87 = OUTLINED_FUNCTION_171();
        pap_handleAirPlayReachedTimeToPausePlayback(v87, v88);
      }
    }
  }

  ata = 0;
  if (FigCFDictionaryGetDoubleIfPresent() && (v89 = CFDateCreate(*MEMORY[0x1E695E480], 0.0)) != 0)
  {
    v93 = 0;
    v92 = v89;
  }

  else
  {
    v89 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961D80]);
    if (!v89)
    {
      v90 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961D90]);
      if (v90)
      {
        v91 = *(v8 + 192);
        *(v8 + 192) = v90;
        CFRetain(v90);
        if (v91)
        {
          CFRelease(v91);
        }

        *(v8 + 224) = 1;
      }

      goto LABEL_101;
    }

    v92 = 0;
    v93 = 1;
  }

  v94 = *(v8 + 192);
  *(v8 + 192) = v89;
  CFRetain(v89);
  if (v94)
  {
    CFRelease(v94);
  }

  *(v8 + 224) = 0;
  *(v8 + 200) = *v379;
  *(v8 + 216) = epoch;
  FigCFDictionaryGetCMTimeIfPresent();
  if (!*(v9 + 248))
  {
    time = *(v8 + 200);
    CMTimeConvertScale(&time1, &time, 1, kCMTimeRoundingMethod_RoundTowardZero);
    *(v8 + 200) = time1;
  }

  if ((v93 & 1) == 0)
  {
    CFRelease(v92);
  }

LABEL_101:
  if (v429[12])
  {
    time1 = *(v8 + 228);
    time = *v429;
    v95 = CMTimeCompare(&time1, &time);
    if (v95)
    {
      v103 = *MEMORY[0x1E695E480];
      OUTLINED_FUNCTION_40_12(v95, v96, v97, v98, v99, v100, v101, v102, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, 0, v422, *v429);
      values.value = CMTimeCopyAsDictionary(&time1, v103);
      if (values.value)
      {
        v104 = CFDictionaryCreate(v103, &kFigPlaybackItemParameter_CurrentDuration, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      else
      {
        v104 = 0;
      }

      *(v8 + 228) = *v429;
      *(v8 + 244) = *&v429[16];
      if (dword_1EAF172E8)
      {
        LODWORD(type.value) = 0;
        LOBYTE(rhs.value) = 0;
        v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v105, rhs.value);
        OUTLINED_FUNCTION_7();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      itemairplay_postItemNotification();
      if (values.value)
      {
        CFRelease(values.value);
      }

      if (v104)
      {
        CFRelease(v104);
      }
    }
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (v106)
  {
    if (*(v8 + 601) != HIBYTE(v488))
    {
      *(v8 + 601) = HIBYTE(v488);
      if (HIBYTE(v488))
      {
        OUTLINED_FUNCTION_340_1();
        itemairplay_postItemNotification();
      }
    }
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (v107)
  {
    if (*(v8 + 602) != HIBYTE(v488))
    {
      *(v8 + 602) = HIBYTE(v488);
      if (HIBYTE(v488))
      {
        OUTLINED_FUNCTION_340_1();
        itemairplay_postItemNotification();
      }
    }
  }

  pap_FigCFDictionaryGetBooleanIfPresent(a3);
  if (v108)
  {
    v162 = OUTLINED_FUNCTION_171();
    playerairplay_mediaControlHandlePlaybackLikelyToKeepUp(v162, v163, v164, v165, v166, v167, v168, v169, v309, v316, v323, v330, SWORD1(v330), SWORD2(v330), SBYTE6(v330), HIBYTE(v330), v337, v350, v357, v364, *v379, *&v379[8], *&v379[16], v400, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503);
  }

  v109 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961DA0]);
  if (v109 && itemairplay_isRangeArraysDifferent())
  {
    v170 = *MEMORY[0x1E695E480];
    v171 = OUTLINED_FUNCTION_173_0();
    Mutable = CFDictionaryCreateMutable(v171, v172, v173, v174);
    v520 = 0;
    v176 = *(v8 + 608);
    *(v8 + 608) = v109;
    CFRetain(v109);
    if (v176)
    {
      CFRelease(v176);
    }

    itemairplay_convertTimeRangesToTimeIntervals(v170, v109, 1, &v520);
    FigCFDictionarySetValue();
    itemairplay_postItemNotification();
    if (*(v8 + 500))
    {
      v330 = Mutable;
      v502 = *(v8 + 504);
      v501 = *(v8 + 488);
      Count = CFArrayGetCount(v109);
      if (Count >= 1)
      {
        v178 = Count;
        v179 = 0;
        v337 = *MEMORY[0x1E6961F00];
        while (1)
        {
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v109, v179);
            if (ValueAtIndex)
            {
              break;
            }

            if (++v179 >= v178)
            {
              goto LABEL_253;
            }
          }

          v181 = ValueAtIndex;
          v182 = CFDictionaryGetValue(ValueAtIndex, *(&v337 + 1));
          v183 = CFDictionaryGetValue(v181, v337);
          if (!v182)
          {
            break;
          }

          v184 = v183;
          if (!v183)
          {
            break;
          }

          memset(&time1, 0, sizeof(time1));
          CMTimeMakeFromDictionary(&time1, v182);
          memset(&time, 0, sizeof(time));
          v185 = CMTimeMakeFromDictionary(&time, v184);
          OUTLINED_FUNCTION_27_17(v185, v186, v187, v188, v189, v190, v191, v192, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, 0, 0, 0, cf, v499, v500, v501, *(&v501 + 1), v502, v503, time.value, *&time.timescale, time.epoch, v505, v506, v507, v508, v509, v510, v511, v512, v513, *&time1.value);
          rhs = time;
          v193 = CMTimeAdd(&values, &type, &rhs);
          OUTLINED_FUNCTION_166_1(v193, v194, v195, v196, v197, v198, v199, v200, v312, v319, v326, v333, v340, keyb, v353, v360, v367, v374, v381, v386, v391, v396, v404, v410, atd, v425, v432, v438, v444, v451, v458, v464, v470, v477, v484, v491, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501);
          rhs = time1;
          v201 = CMTimeCompare(&type, &rhs);
          if ((v201 & 0x80000000) != 0)
          {
            v209 = 1;
          }

          else
          {
            OUTLINED_FUNCTION_166_1(v201, v202, v203, v204, v205, v206, v207, v208, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501);
            rhs = values;
            v209 = CMTimeCompare(&type, &rhs) > 0;
          }

          if (++v179 >= v178 || !v209)
          {
            Mutable = v330;
            if (!v209)
            {
              OUTLINED_FUNCTION_340_1();
              itemairplay_postItemNotification();
            }

            goto LABEL_254;
          }
        }
      }

LABEL_253:
      Mutable = v330;
    }

LABEL_254:
    if (v520)
    {
      CFRelease(v520);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v110 = CFDictionaryGetValue(a3, *MEMORY[0x1E6961DD8]);
  if (v110)
  {
    v210 = v110;
    if (itemairplay_isRangeArraysDifferent())
    {
      v211 = *MEMORY[0x1E695E480];
      v212 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      time1.value = 0;
      v213 = *(v8 + 616);
      *(v8 + 616) = v210;
      CFRetain(v210);
      if (v213)
      {
        CFRelease(v213);
      }

      itemairplay_convertTimeRangesToTimeIntervals(v211, v210, 0, &time1);
      FigCFDictionarySetValue();
      itemairplay_postItemNotification();
      if (time1.value)
      {
        CFRelease(time1.value);
      }

      if (v212)
      {
        CFRelease(v212);
      }
    }
  }

  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  if (Int32IfPresent)
  {
    v214 = OUTLINED_FUNCTION_171();
    Int32IfPresent = playerairplay_mediaControlHandleStallCountChanged(v214, v215, v216);
  }

  v119 = *(v8 + 148);
  v120 = v400;
  if (v119 && v119 == *(v8 + 144) && *(v8 + 156))
  {
    if (v109)
    {
      Int32IfPresent = CFArrayGetCount(v109);
      v121 = Int32IfPresent > 0;
    }

    else
    {
      v121 = 0;
    }

    if (HIDWORD(v408) == 2 || v121 || BYTE6(v488)) && (v455[12])
    {
      OUTLINED_FUNCTION_80_5(Int32IfPresent, v112, v113, *(v8 + 148), v115, v116, v117, v118, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455);
      Int32IfPresent = itemairplay_setPositionCompletionHandler(a1, 0, 1, v122, v350, &time1.value);
      *(v8 + 144) = 0;
      *(v8 + 156) = 0;
    }
  }

  if (*(v8 + 524))
  {
    if (*&v379[28] && (v455[12] & 1) != 0)
    {
      OUTLINED_FUNCTION_80_5(Int32IfPresent, v112, v113, v114, v115, v116, v117, v118, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455);
      v125 = OUTLINED_FUNCTION_145_1();
      pap_updateAirPlayReachedTimeToPausePlayback(v125, v126);
    }

    else
    {
      if (*(v9 + 241))
      {
        goto LABEL_146;
      }

      v123 = OUTLINED_FUNCTION_171();
      if (!pap_hasAirPlayReachedTimeToPausePlayback(v123, v124))
      {
        goto LABEL_146;
      }
    }

    if (!*(v9 + 64))
    {
      v127 = OUTLINED_FUNCTION_171();
      pap_handleAirPlayReachedTimeToPausePlayback(v127, v128);
    }
  }

LABEL_146:
  if ((v455[12] & 1) == 0)
  {
    return FigReadWriteLockUnlockForRead();
  }

  v129 = v120 ? v357 : 0;
  v130 = *(&v481 + 1);
  v499 = v515;
  LODWORD(v500) = v516;
  v131 = CMBaseObjectGetDerivedStorage();
  v132 = CMBaseObjectGetDerivedStorage();
  v133 = *MEMORY[0x1E6960C70];
  v520 = *MEMORY[0x1E6960C70];
  v134 = *(MEMORY[0x1E6960C70] + 8);
  timescale = v134;
  v135 = *(v132 + 56);
  v136 = v135 <= 0.0 ? 1.5 : v135 * 1.5;
  if (*(v132 + 241))
  {
    return FigReadWriteLockUnlockForRead();
  }

  v137 = v132;
  HIDWORD(v408) = *(MEMORY[0x1E6960C70] + 12);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v139 = *(v131 + 280);
  time = *(v131 + 160);
  values.value = v515;
  OUTLINED_FUNCTION_125_3();
  CMTimeSubtract(&time1, &time, &values);
  Seconds = CMTimeGetSeconds(&time1);
  *&v379[28] = v129;
  if (Seconds <= 1.0)
  {
    v141 = 1;
  }

  else if (v400)
  {
    v141 = 0;
  }

  else
  {
    v141 = Seconds <= v136 * ((UpTimeNanoseconds - v139) / 1000000000.0);
  }

  v142 = CMBaseObjectGetDerivedStorage();
  if (!*(v142 + 360))
  {
    time1.value = 0;
    if (!*(CMBaseObjectGetDerivedStorage() + 368))
    {
LABEL_164:
      v150 = *&v379[16];
      goto LABEL_165;
    }

    v403 = a1;
    v152 = pap_copyPrimaryPlayer(a2);
    if (v152)
    {
      v153 = UpTimeNanoseconds;
      v154 = CMBaseObjectGetDerivedStorage();
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v154 + 40), &time1, 0);
      if (!time1.value)
      {
        v158 = 0;
        v151 = HIDWORD(v408);
LABEL_179:
        CFRelease(v152);
LABEL_180:
        if (v158 && (playerairplay_isInterstitialEventIDRestrictedForSkip(a2, v158), v300 = v299, CFRelease(v158), v300))
        {
          v150 = *&v379[16];
          if ((*&v379[28] | v141) & 1) == 0 && (BYTE12(v364) & 1) != 0 && (*(v131 + 172))
          {
            v301 = OUTLINED_FUNCTION_91_3(v301, v302, v303, v304, v305, v306, v307, v308, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v403, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, *&time.value, time.epoch, v505, v506, v507, v508, v509, v510, v511, v512, v513, v499, __SPAIR64__(HIDWORD(v364), v500));
            if ((v301 & 0x80000000) != 0)
            {
              OUTLINED_FUNCTION_162_0(v301, v302, v303, v304, v305, v306, v307, v308, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v403, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500);
              v150 = v364;
              v151 = HIDWORD(v364);
            }
          }

          if (v130 != Rate && *(v137 + 56) > 1.0)
          {
            time1.value = 0;
            OUTLINED_FUNCTION_162_0(v301, v302, v303, v304, v305, v306, v307, v308, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v403, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500);
            *(v137 + 56) = 1065353216;
            FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 40, &time1);
            playerairplay_postPlayerRateDidChangeNotification(*(v137 + 56), a2, time1.value);
            playerairplay_setRateAirPlay(a2, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], time1.value);
            if (time1.value)
            {
              CFRelease(time1.value);
            }

            v150 = v371;
            v151 = v378;
          }
        }

        else
        {
          v150 = *&v379[16];
        }

        goto LABEL_182;
      }

      v155 = CMBaseObjectGetDerivedStorage();
      v156 = *(v155 + 752);
      if (v156)
      {
        v157 = v155;
        v158 = 0;
        if (!CFEqual(*(v155 + 752), &stru_1F0B1AFB8))
        {
          v75 = *MEMORY[0x1E695E738] == v156;
          UpTimeNanoseconds = v153;
          if (!v75)
          {
            v158 = *(v157 + 752);
            if (v158)
            {
              CFRetain(*(v157 + 752));
            }
          }

LABEL_176:
          if (time1.value)
          {
            CFRelease(time1.value);
          }

          v151 = HIDWORD(v408);
          if (!v152)
          {
            goto LABEL_180;
          }

          goto LABEL_179;
        }
      }

      else
      {
        v158 = 0;
      }

      UpTimeNanoseconds = v153;
      goto LABEL_176;
    }

    v158 = 0;
    goto LABEL_176;
  }

  if ((*&v379[28] | v141))
  {
    goto LABEL_164;
  }

  if ((BYTE12(v364) & 1) == 0)
  {
    goto LABEL_164;
  }

  if ((*(v131 + 172) & 1) == 0)
  {
    goto LABEL_164;
  }

  if ((OUTLINED_FUNCTION_91_3(v142, v143, v144, v145, v146, v147, v148, v149, v309, v316, v323, v330, v337, *(&v337 + 1), v350, v357, v364, *(&v364 + 1), *v379, *&v379[8], *&v379[16], *&v379[24], v400, v408, ata, v422, *v429, *&v429[8], *&v429[16], v448, *v455, *&v455[8], *&v455[16], v474, v481, v488, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, *&time.value, time.epoch, v505, v506, v507, v508, v509, v510, v511, v512, v513, v515, __SPAIR64__(HIDWORD(v364), v516)) & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

  v519 = v516;
  rhs = *(v131 + 160);
  v518 = v515;
  v217 = *(v131 + 776);
  if (!v217)
  {
    goto LABEL_164;
  }

  v218 = CFArrayGetCount(v217);
  time1 = *v379;
  *&v501 = v133;
  v150 = *&v379[16];
  DWORD2(v501) = v134;
  if (v218 >= 1)
  {
    v219 = v218;
    v220 = 0;
    v221 = 0;
    v222 = HIDWORD(v408);
    v223 = *&v379[16];
    do
    {
      v224 = CFArrayGetValueAtIndex(*(v131 + 776), v221);
      cf = 0;
      v225 = FigPlayerInterstitialEventCreateFromDictionary(0, v224, &cf);
      if (!v225)
      {
        Restrictions = FigPlayerInterstitialEventGetRestrictions(cf);
        v234 = cf;
        if (Restrictions)
        {
          memset(&time, 0, sizeof(time));
          itemairplay_getInterstitialEventTimeForItem(v131, cf, &time);
          values.value = v518;
          OUTLINED_FUNCTION_125_3();
          v243 = OUTLINED_FUNCTION_150_2(v235, v236, v237, v238, v239, v240, v241, v242, v311, v318, v325, v332, v339, key, v352, v359, v366, v373, *v379, *&v379[8], *&v379[16], *&v379[24], v402, v408, atb, v424, v431, v437, v443, v450, v457, v463, v469, v476, v483, v490, time.value, *&time.timescale, time.epoch, v496, values.value);
          v245 = CMTimeCompare(v243, v244);
          if (v245 <= 0 && (OUTLINED_FUNCTION_167_2(v245, v246, v247, v248, v249, v250, v251, v252, v311, v318, v325, v332, v339, key, v352, v359, v366, v373, *v379, *&v379[8], *&v379[16], *&v379[24], v402, v408, atb, v424, v431, v437, v443, v450, v457, v463, v469, v476, v483, v490, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, *&time.value), v261 = OUTLINED_FUNCTION_150_2(v253, v254, v255, v256, v257, v258, v259, v260, v313, v320, v327, v334, v341, keyc, v354, v361, v368, v375, v382, v387, v392, v397, v405, v411, ate, v426, v433, v439, v445, v452, v459, v465, v471, v478, v485, v492, rhs.value, *&rhs.timescale, rhs.epoch, v496, values.value), v263 = CMTimeCompare(v261, v262), (v263 & 0x80000000) != 0) && (OUTLINED_FUNCTION_167_2(v263, v264, v265, v266, v267, v268, v269, v270, v311, v318, v325, v332, v339, key, v352, v359, v366, v373, *v379, *&v379[8], *&v379[16], *&v379[24], v402, v408, atb, v424, v431, v437, v443, v450, v457, v463, v469, v476, v483, v490, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, *&time.value), OUTLINED_FUNCTION_27_17(v273, v274, v275, v276, v277, v278, v279, v280, v314, v321, v328, v335, v342, keyd, v355, v362, v369, v376, v383, v388, v393, v398, v406, v412, atf, v427, v434, v440, v446, v453, v460, v466, v472, v479, v486, v493, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, time.value, *&time.timescale, time.epoch, v505, v506, v507, v508, v509, v510, v511, v512, v513, *&time1.value), v289 = OUTLINED_FUNCTION_150_2(v281, v282, v283, v284, v285, v286, v287, v288, v315, v322, v329, v336, v343, keye, v356, v363, v370, v377, v384, v389, v394, v399, v407, v413, atg, v428, v435, v441, v447, v454, v461, v467, v473, v480, v487, v494, type.value, *&type.timescale, type.epoch, v496, values.value), CMTimeCompare(v289, v290)))
          {
            v271 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if (v220)
            {
              CFRelease(v220);
            }

            time1 = time;
          }

          else
          {
            v271 = v220;
          }

          v234 = cf;
          v220 = v271;
        }

        v272 = FigPlayerInterstitialEventCopyIdentifier(v234);
        if (FigCFEqual())
        {
          itemairplay_getInterstitialEventTimeForItem(v131, cf, &time);
          *&v501 = time.value;
          v222 = time.flags;
          DWORD2(v501) = time.timescale;
          v223 = time.epoch;
        }

        v225 = cf;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v272)
        {
          CFRelease(v272);
        }

        v150 = *&v379[16];
      }

      ++v221;
    }

    while (v219 != v221);
    if (v220)
    {
      if ((v222 & 1) == 0 || (OUTLINED_FUNCTION_27_17(v225, v226, v227, v228, v229, v230, v231, v232, v311, v318, v325, v332, v339, key, v352, v359, v366, v373, *v379, *&v379[8], *&v379[16], *&v379[24], v402, v408, atb, v424, v431, v437, v443, v450, v457, v463, v469, v476, v483, v490, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, v501, __SPAIR64__(v222, DWORD2(v501)), v223, v505, v506, v507, v508, v509, v510, v511, v512, v513, *&time1.value), CMTimeSubtract(&values, &time, &type), CMTimeAbsoluteValue(&time, &values), CMTimeMake(&values, 1, 1000), (CMTimeCompare(&time, &values) & 0x80000000) == 0))
      {
        memset(&time1, 0, sizeof(time1));
        itemairplay_getInterstitialEventTimeForItem(v131, v220, &time1);
        v291 = CMTimeMake(&values, 2, 1);
        OUTLINED_FUNCTION_27_17(v291, v292, v293, v294, v295, v296, v297, v298, v311, v318, v325, v332, v339, key, v352, v359, v366, v373, *v379, *&v379[8], *&v379[16], *&v379[24], v402, v408, atb, v424, v431, v437, v443, v450, v457, v463, v469, v476, v483, v490, type.value, *&type.timescale, type.epoch, v496, values.value, *&values.timescale, values.epoch, cf, v499, v500, v501, *(&v501 + 1), v502, v503, time.value, *&time.timescale, time.epoch, v505, v506, v507, v508, v509, v510, v511, v512, v513, *&time1.value);
        CMTimeSubtract(&time, &type, &values);
        v520 = time.value;
        v151 = time.flags;
        timescale = time.timescale;
        v150 = time.epoch;
        CFRelease(v220);
        goto LABEL_182;
      }

      CFRelease(v220);
    }
  }

LABEL_165:
  v151 = HIDWORD(v408);
LABEL_182:
  if (v151)
  {
    time1.value = v520;
    time1.timescale = timescale;
    time1.flags = v151;
    time1.epoch = v150;
    v159 = OUTLINED_FUNCTION_145_1();
    itemairplay_airplaySetCurrentTime(v159, v160, 0xF0u, 0, 0, 0);
  }

  if (Seconds >= 0.0)
  {
    v161 = UpTimeNanoseconds;
  }

  else
  {
    v161 = 0;
  }

  *(v131 + 280) = v161;
  return FigReadWriteLockUnlockForRead();
}

void pap_FigCFDictionaryGetBooleanIfPresent(uint64_t a1)
{
  value = 0;
  if (a1)
  {
    OUTLINED_FUNCTION_375_0();
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID() && v2 && v1)
    {
      if (CFDictionaryGetValueIfPresent(v4, v2, &value))
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(value))
        {
          *v1 = CFBooleanGetValue(value);
        }

        else
        {
          v7 = CFNumberGetTypeID();
          if (v7 == CFGetTypeID(value) && !CFNumberIsFloatType(value))
          {
            v8 = 0;
            CFNumberGetValue(value, kCFNumberSInt64Type, &v8);
            *v1 = v8 != 0;
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  OUTLINED_FUNCTION_652();
}

void playerairplay_updatePlayerRateToMatch(const void *a1, uint64_t a2, float a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    v9 = *(DerivedStorage + 56);
    if (v9 == a3)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetFloat32();
      OUTLINED_FUNCTION_236();
      playerairplay_postPlayerNotification();
      if (*(v8 + 200) && a3 != 0.0)
      {
        if (dword_1EAF172E8)
        {
          OUTLINED_FUNCTION_147();
          v13 = OUTLINED_FUNCTION_149_1();
          v21 = OUTLINED_FUNCTION_126(v13, v14, v15, v16, v17, v18, v19, v20, v50, v52, v54, *v56, v56[2], v56[3], v56[4]);
          OUTLINED_FUNCTION_130(v21, v22, v23, v24, v25, v26, v27, v28, v51, v53, v55, v57, v58, v59, v60);
          OUTLINED_FUNCTION_28();
          if (v3)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_139();
            OUTLINED_FUNCTION_39();
            v34 = OUTLINED_FUNCTION_25();
            OUTLINED_FUNCTION_61_5(v34, v35, v36, v37, v38, v39, v40, v41);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v42, v43, v44, v45, v46);
        }

        FigBytePumpGetFigBaseObject();
        v48 = v47;
        v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v49)
        {
          v49(v48, 0x1F0B34DB8, *MEMORY[0x1E695E4D0]);
        }
      }

      *(v8 + 56) = a3;
      playerairplay_postPlayerRateDidChangeNotification(a3, a1, a2);
      if (a3 != 0.0)
      {
        pap_clearLayerContents(a1);
      }
    }

    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v12 = v12 || v11 == 10;
    if (!v12)
    {
      cf[0] = 0;
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v8 + 40), 0, cf);
      if (v9 != a3)
      {
        playerairplay_inferPlaybackStateFromAirPlayPlayer(a1, cf[0] != 0);
      }

      v29 = cf[0];
      if (cf[0])
      {
        v30 = CMBaseObjectGetDerivedStorage();
        v31 = CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_180_2(v31);
        if (!*(v29 + 72))
        {
          v32 = *(v29 + 71);
          if (v32)
          {
            v33 = 0.0;
            if (*(v30 + 84) == 4)
            {
              v33 = *(v30 + 56);
            }

            CMTimebaseSetRate(v32, v33);
          }
        }

        FigReadWriteLockUnlockForRead();
        itemairplay_NotifyReachedTimeToPauseBufferingIfFF(a1, cf[0]);
        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void playerairplay_mediaControlHandlePlaybackLikelyToKeepUp(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4, __int16 a5, char a6, os_log_type_t type, CMTime *time, uint64_t a9, __int16 a10, CFTypeRef cfa, __int16 a12, __int16 a13, __int16 a14, char a15, os_log_type_t typea, __int128 timea, CMTime *time_16, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  OUTLINED_FUNCTION_415();
  a50 = v53;
  a51 = v54;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  a39 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62 = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (!*(v62 + 72) && *(v62 + 603) != v56)
  {
    *(v62 + 603) = v56;
    if (v56)
    {
      OUTLINED_FUNCTION_270();
      itemairplay_postItemNotification();
      if (dword_1EAF172E8)
      {
        LODWORD(cfa) = 0;
        typea = OS_LOG_TYPE_DEFAULT;
        OUTLINED_FUNCTION_149_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, typea);
        OUTLINED_FUNCTION_28();
        if (v52)
        {
          if (v60)
          {
            v66 = (CMBaseObjectGetDerivedStorage() + 459);
          }

          else
          {
            v66 = "";
          }

          if (v58)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(timea) = 136316162;
          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_124_3();
          *(&a20 + 2) = v66;
          WORD5(a20) = v79;
          *(&a20 + 12) = v80;
          OUTLINED_FUNCTION_39();
          v81 = OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_61_5(v81, v82, v83, v84, v85, v86, v87, v88);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v89, v90, v91, v92, v93);
      }

      if (*(DerivedStorage + 356))
      {
        cfa = 0;
        FigSimpleMutexLock();
        v94 = 0;
        v95 = *(v62 + 576);
        if (v95)
        {
          v94 = CFRetain(v95);
        }

        FigSimpleMutexUnlock();
        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 20, &cfa);
        *(DerivedStorage + 356) = 0;
        if (v94 && *(DerivedStorage + 456))
        {
          Rate = CMTimebaseGetRate(v94);
          *(DerivedStorage + 56) = Rate;
          CMTimebaseGetTime(&a23, v94);
          *(DerivedStorage + 332) = a23;
          *(DerivedStorage + 348) = a24;
          HostTimeClock = CMClockGetHostTimeClock();
          timea = *(DerivedStorage + 332);
          time_16 = *(DerivedStorage + 348);
          CMSyncConvertTime(&a23, &timea, v94, HostTimeClock);
          *(DerivedStorage + 308) = a23;
          *(DerivedStorage + 324) = a24;
        }

        playerairplay_postPlayerRateDidChangeNotification(*(DerivedStorage + 56), v60, cfa);
        OUTLINED_FUNCTION_169(DerivedStorage + 332);
        timea = *v98;
        time_16 = *(v98 + 16);
        playerairplay_setRateAirPlay(v60, 1, &a23, &timea, v99);
        if (cfa)
        {
          CFRelease(cfa);
        }

        if (v94)
        {
          CFRelease(v94);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_270();
      itemairplay_postItemNotification();
      if (dword_1EAF172E8)
      {
        LODWORD(cfa) = 0;
        typea = OS_LOG_TYPE_DEFAULT;
        v63 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v63, typea);
        OUTLINED_FUNCTION_46();
        if (v51)
        {
          if (v60)
          {
            v64 = (CMBaseObjectGetDerivedStorage() + 459);
          }

          else
          {
            v64 = "";
          }

          if (v58)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(timea) = 136316162;
          OUTLINED_FUNCTION_139();
          OUTLINED_FUNCTION_124_3();
          *(&a20 + 2) = v64;
          WORD5(a20) = v67;
          *(&a20 + 12) = v68;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_10_3(v69, v70, &a23, v71, &dword_1962D5000, v72, v73, "<<<< FigPlayer_AP >>>> %s: [%p:%p] %{public}s:%{public}s Posted UnlikelyToKeepUp");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v74, v75, v76, v77, v78);
      }
    }

    itemairplay_controlPlaybackActivityTimer(v58, 2);
  }

  FigReadWriteLockUnlockForRead();
  OUTLINED_FUNCTION_355();
}

uint64_t itemairplay_isRangeArraysDifferent()
{
  OUTLINED_FUNCTION_187();
  if (!v2)
  {
    Count = 0;
    if (v0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(v1);
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFArrayGetCount(v0);
LABEL_6:
  if (v1 == v0)
  {
    return 0;
  }

  result = 1;
  if (!v1 || !v0 || Count != v4)
  {
    return result;
  }

  if (Count < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E6961F08];
  v8 = *MEMORY[0x1E6961F00];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v6);
    if (Count == v6)
    {
      break;
    }

    v10 = ValueAtIndex;
    v11 = OUTLINED_FUNCTION_627();
    v13 = CFArrayGetValueAtIndex(v11, v12);
    result = 1;
    if (!v10)
    {
      return result;
    }

    if (!v13)
    {
      return result;
    }

    Value = CFDictionaryGetValue(v10, v7);
    v15 = CFDictionaryGetValue(v13, v7);
    result = 1;
    if (!Value || !v15)
    {
      return result;
    }

    CMTimeMakeFromDictionary(&time1, Value);
    CMTimeMakeFromDictionary(&v20, v15);
    if (CMTimeCompare(&time1, &v20))
    {
      break;
    }

    v16 = CFDictionaryGetValue(v10, v8);
    v17 = OUTLINED_FUNCTION_614();
    v19 = CFDictionaryGetValue(v17, v18);
    result = 1;
    if (!v16 || !v19)
    {
      return result;
    }

    CMTimeMakeFromDictionary(&time1, v16);
    CMTimeMakeFromDictionary(&v20, v19);
    if (CMTimeCompare(&time1, &v20))
    {
      break;
    }

    if (Count == ++v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t playerairplay_mediaControlHandleStallCountChanged(uint64_t a1, uint64_t a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (!*(v3 + 72) && *(v3 + 624) < a3)
  {
    *(v3 + 624) = a3;
    OUTLINED_FUNCTION_340_1();
    itemairplay_postItemNotification();
    if (dword_1EAF172E8)
    {
      OUTLINED_FUNCTION_147();
      v17 = OUTLINED_FUNCTION_126(qword_1EAF172E0, v10, v11, v12, v13, v14, v15, v16, v35, v37, v39, *v41, v41[2], v41[3], v41[4]);
      OUTLINED_FUNCTION_304(v17, v18, v19, v20, v21, v22, v23, v24, v36, v38, v40, v42, v43, v44, v45);
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_139();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_10_3(v25, v26, v46, v27, &dword_1962D5000, v28, v29, "<<<< FigPlayer_AP >>>> %s: [%p:%p] %{public}s:%{public}s Posted PlaybackStalled");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v30, v31, v32, v33, v34);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void playerairplay_shutdownAirPlayVideoPlaybackDueToServer(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v6 = v6 || v5 == 10;
    if (!v6)
    {
      cf[0] = 0;
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 27, cf);
      playerairplay_updatePlayerRateToMatch(a1, cf[0], 0.0);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_11();
      if (!(!v6 & v7))
      {
        playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(v4 + 5), 0, &v17);
        v8 = CMBaseObjectGetDerivedStorage();
        if (v17)
        {
          OUTLINED_FUNCTION_180_2(v8);
          if (!*(v1 + 72))
          {
            OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
            v9 = v17;
            v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v10)
            {
              v10(v9, cf);
            }

            v13 = *cf;
            v14 = v16;
            itemairplay_setRememberedTimeAndDefaultFlag(v17, &v13);
            itemairplay_controlPlaybackActivityTimer(v17, 0);
            CMTimebaseSetRate(*(v1 + 568), 0.0);
          }

          FigReadWriteLockUnlockForRead();
        }

        playerairplay_removeAndCleanupQueuedItemsOnAirPlayController(a1);
        pap_invalidateEndpointPlaybackSession(a1);
      }

      playerairplay_resetAirPlayVideoState(a1);
      playerairplay_updateAirPlayVideoIsActiveProperty(a1);
      OUTLINED_FUNCTION_340_1();
      playerairplay_postPlayerNotification();
      if (v4[52])
      {
        v11 = *(v4 + 26);
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v12)
        {
          v12(v11);
        }
      }
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void itemairplay_sendSeekToTimeNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetValueFromKeyInDict();
  FigCFDictionarySetValueFromKeyInDict();
  OUTLINED_FUNCTION_315();
  FigCFDictionarySetCMTime();
  OUTLINED_FUNCTION_521();
  itemairplay_postItemNotification();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

BOOL pap_isLocalFileURL(const __CFURL *a1, BOOL *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = CFURLCopyScheme(a1);
  v4 = v3;
  if (!v3 || (v5 = 1, CFStringCompare(v3, @"file", 1uLL)))
  {
    IsPersistentURL = FigIsPersistentURL();
    v5 = IsPersistentURL != 0;
    v7 = IsPersistentURL != 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v7;
  }

LABEL_6:
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void playerairplay_postPlayerRateDidChangeNotification(float a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  if (a3)
  {
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_515();
    FigCFDictionarySetValueFromKeyInDict();
  }

  OUTLINED_FUNCTION_236();
  playerairplay_postPlayerNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void playerairplay_isInterstitialEventIDRestrictedForSkip(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_369();
    if (!CFEqual(v3, &stru_1F0B1AFB8) && *MEMORY[0x1E695E738] != v3)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 368))
      {
        v4 = pap_copyPrimaryPlayer(v2);
        if (v4)
        {
          v5 = v4;
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v16 = 0;
          if (!CFEqual(v3, &stru_1F0B1AFB8))
          {
            playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &v16, 0);
            if (v16)
            {
              v7 = CMBaseObjectGetDerivedStorage();
              v8 = *(v7 + 776);
              if (v8 && (Count = CFArrayGetCount(v8), Count >= 1))
              {
                v10 = Count;
                v11 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 776), v11);
                  cf = 0;
                  v13 = 0;
                  if (!FigPlayerInterstitialEventCreateFromDictionary(0, ValueAtIndex, &cf))
                  {
                    v13 = FigPlayerInterstitialEventCopyIdentifier(cf);
                    if (FigCFEqual())
                    {
                      break;
                    }
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (v13)
                  {
                    CFRelease(v13);
                  }

                  if (v10 == ++v11)
                  {
                    goto LABEL_18;
                  }
                }

                v14 = cf;
                if (v13)
                {
                  CFRelease(v13);
                }
              }

              else
              {
LABEL_18:
                v14 = 0;
              }

              if (v16)
              {
                CFRelease(v16);
              }

              if (v14)
              {
                FigPlayerInterstitialEventGetRestrictions(v14);
                CFRelease(v14);
              }
            }
          }

          CFRelease(v5);
        }
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

void playerairplay_updateShareAndAirPlayEchoMitigation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 456))
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_55_11();
      if (v5)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v6 = *(DerivedStorage + 296) != 0;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    if (*(v4 + 458) != v6)
    {
      Shared = FigShareAndAirPlayHelperGetShared(DerivedStorage, v3);
      if (Shared)
      {
        v8 = Shared;
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v9)
        {
          v9(v8, v6, a1);
        }

        *(v4 + 458) = v6;
      }
    }
  }
}

void pap_playbackSessionSetProxiedProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *Mutable)
{
  OUTLINED_FUNCTION_471();
  v6 = v5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    Mutable = CFRetain(Mutable);
  }

  if (v6 && !*DerivedStorage && *(DerivedStorage + 280))
  {
    if (pap_shouldUseInterstitialQueuing(v6))
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 96))
    {
      v8 = OUTLINED_FUNCTION_104_0();
      v9(v8);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void __itemairplay_insertItemOnMediaControl_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  OUTLINED_FUNCTION_121_1();
  if (!v2 && !**(v0 + 40))
  {
    FigAirPlayMediaSelectionSetProperty(*(v1 + 352), @"ClientSelectedMediaArray", *(v0 + 48));
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v4 = v4 || v3 == 10;
    if (!v4)
    {
      itemairplay_prepareAndCacheSelectedMediaArray(*(v0 + 64));
    }
  }

  OUTLINED_FUNCTION_137_1();
  v5 = *(v0 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {

    CFRelease(v7);
  }
}

void itemairplay_prepareAndCacheSelectedMediaArray(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  if (DerivedStorage)
  {
    OUTLINED_FUNCTION_71_4(DerivedStorage);
    FigReadWriteLockLockForRead();
    if (!*(v1 + 72))
    {
      v3 = *(v1 + 352);
      if (v3)
      {
        if (!FigAirPlayMediaSelectionCopyProperty(v3, @"SelectedMediaArrayWithAutomaticMediaSelection", *MEMORY[0x1E695E480], &value) && value)
        {
          FigSimpleMutexLock();
          CFDictionarySetValue(*(v1 + 336), *MEMORY[0x1E6961EC8], value);
          FigSimpleMutexUnlock();
        }
      }
    }

    FigReadWriteLockUnlockForRead();
    if (value)
    {
      CFRelease(value);
    }
  }
}

void pap_handlePlaybackSessionEvent(CFTypeRef cf, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v58 = *MEMORY[0x1E69E9840];
  if (!a2 || !a4)
  {
    goto LABEL_31;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v8)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v9 = v8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 360))
  {
    goto LABEL_21;
  }

  if (*(DerivedStorage + 241))
  {
    if (CFDictionaryGetValue(a2, *MEMORY[0x1E6961AA0]) == *MEMORY[0x1E695E4D0])
    {
      goto LABEL_9;
    }

LABEL_21:
    v6 = v9;
LABEL_27:
    v35 = CMBaseObjectGetDerivedStorage();
    if (!*v35)
    {
      v36 = v35;
      CFRetain(v6);
      CFRetain(a2);
      if (cf)
      {
        CFRetain(cf);
      }

      v37 = *(v36 + 14);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __pap_handlePlaybackSessionEvent_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[4] = v6;
      block[5] = cf;
      block[6] = a2;
      dispatch_async(v37, block);
    }

    goto LABEL_31;
  }

  v14 = *MEMORY[0x1E6961D40];
  v15 = OUTLINED_FUNCTION_618();
  Value = CFDictionaryGetValue(v15, v16);
  if (Value || (v18 = CFDictionaryGetValue(a2, *MEMORY[0x1E6961C18])) != 0 && (Value = CFDictionaryGetValue(v18, v14)) != 0)
  {
    v38 = playqueue_copyItemForUUID(*(DerivedStorage + 40), Value);
    if (v38)
    {
      CFRelease(v38);
      goto LABEL_21;
    }
  }

  v19 = pap_copyInterstitialPlayer(v9);
  v4 = MEMORY[0x1E6961AA8];
  if (!v19 || (v20 = v19, v21 = *(CMBaseObjectGetDerivedStorage() + 216) - 18, CFRelease(v20), v21 <= 0xFFFFFFFD))
  {
    OUTLINED_FUNCTION_109_2();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_181_1();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }
  }

  if (!playerairplay_interstitialEventActive(v9))
  {
    OUTLINED_FUNCTION_109_2();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_181_1();
    if (!FigCFEqual())
    {
      goto LABEL_21;
    }

    v39 = pap_copyInterstitialPlayer(v9);
    v40 = CMBaseObjectGetDerivedStorage();
    if (!v39)
    {
      goto LABEL_21;
    }

    v41 = v40;
    if (playqueue_getNumItemsInClientPlayQueue(*(DerivedStorage + 40)) && !playqueue_getNumItemsInClientPlayQueue(*(v41 + 40)))
    {
      cfa = 0;
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &cfa, 0);
      if (cfa)
      {
        v43 = CMBaseObjectGetDerivedStorage();
        memset(v57, 0, 24);
        pap_expectedEndTime(v57);
        memset(&v49, 0, sizeof(v49));
        CMTimebaseGetTime(&v49, *(v43 + 568));
        if (v57[0].flags)
        {
          CMTimeMake(&type, 5, 1);
          lhs = v57[0];
          CMTimeSubtract(&time2, &lhs, &type);
          type = v49;
          v42 = CMTimeCompare(&type, &time2) < 1;
        }

        else
        {
          v42 = 0;
        }

        CFRelease(cfa);
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }

    CFRelease(v39);
    if (!v42)
    {
      goto LABEL_21;
    }
  }

LABEL_9:
  v6 = pap_copyInterstitialPlayer(v9);
  if (dword_1EAF172E8)
  {
    LODWORD(time2.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    OUTLINED_FUNCTION_28();
    if (v4)
    {
      v12 = CMBaseObjectGetDerivedStorage() + 459;
      if (v6)
      {
        v13 = (CMBaseObjectGetDerivedStorage() + 459);
      }

      else
      {
        v13 = "";
      }

      LODWORD(v49.value) = 136316418;
      *(&v49.value + 4) = "pap_handlePlaybackSessionEvent";
      LOWORD(v49.flags) = 2048;
      *(&v49.flags + 2) = v9;
      HIWORD(v49.epoch) = 2082;
      v50 = v12;
      v51 = 2048;
      v52 = a2;
      v53 = 2048;
      v54 = v6;
      v55 = 2082;
      v56 = v13;
      v22 = OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_61_5(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v30, v31, v32, v33, v34);
  }

  CFRelease(v9);
  if (v6)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

double pap_playbackSessionSetProperty()
{
  OUTLINED_FUNCTION_471();
  v1 = v0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v1)
  {
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 280))
      {
        FigEndpointPlaybackSessionGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v4 = OUTLINED_FUNCTION_171();

          v5(v4);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

const void *playqueue_copyItemForUUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_261();
  FigSimpleMutexLock();
  Count = CFArrayGetCount(*v2);
  if (Count < 1)
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  v4 = Count;
  v5 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*v2, v5 - 1);
    CMBaseObjectGetDerivedStorage();
    v7 = FigCFEqual();
    if (v5 >= v4)
    {
      break;
    }

    ++v5;
  }

  while (!v7);
  if (!ValueAtIndex || !v7)
  {
    v8 = v7;
    FigSimpleMutexUnlock();
    if (v8)
    {
      return ValueAtIndex;
    }

    return 0;
  }

  CFRetain(ValueAtIndex);
  FigSimpleMutexUnlock();
  return ValueAtIndex;
}

uint64_t playerairplay_interstitialEventActive(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), &cf, 0);
  if (!cf)
  {
    return 0;
  }

  v2 = CMBaseObjectGetDerivedStorage();
  v3 = *(v2 + 752);
  if (v3)
  {
    if (CFEqual(*(v2 + 752), &stru_1F0B1AFB8))
    {
      v3 = 0;
    }

    else
    {
      v3 = *MEMORY[0x1E695E738] != v3;
    }
  }

  CFRelease(cf);
  return v3;
}

void playerairplay_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(uint64_t a1, char *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_146_2(DerivedStorage);
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(v4, v5);
  if (!PlayQueueSnapshot)
  {
    return;
  }

  v7 = PlayQueueSnapshot;
  Count = CFArrayGetCount(PlayQueueSnapshot);
  if (!a2)
  {
    goto LABEL_5;
  }

  CFArrayGetCount(v7);
  v9 = OUTLINED_FUNCTION_312();
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v13, a2);
  if (FirstIndexOfValue != -1)
  {
    a2 = (FirstIndexOfValue + 1);
LABEL_5:
    if (a2 < Count)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, a2);
        itemairplay_clearCoordinatedPlaybackSynchronizationTimebase(ValueAtIndex);
        ++a2;
      }

      while (Count != a2);
    }
  }

  CFRelease(v7);
}

void playerairplay_notifyStartupTasksOfSeek(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v8 = v8 || v7 == 10;
    if (!v8)
    {
      OUTLINED_FUNCTION_315();
      v9 = OUTLINED_FUNCTION_171();
      playerairplay_notifyStartupTasksOfEvents(v9, v10, 2, a3, v11, v12, a4);
    }
  }
}

void pap_playbackSessionGetProxiedProperty(uint64_t a1, uint64_t a2, void *Mutable, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    Mutable = CFRetain(Mutable);
  }

  if (a1 && !*DerivedStorage && *(DerivedStorage + 280))
  {
    if (pap_shouldUseInterstitialQueuing(a1))
    {
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
    }

    v11 = *(DerivedStorage + 280);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v12)
    {
      v12(v11, a2, Mutable, a4, a5);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t itemairplay_postTaggedRangeMetadataChangedNotificationIfNeeded(uint64_t a1, void *a2)
{
  values = a2;
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    OUTLINED_FUNCTION_71_4(result);
    FigReadWriteLockLockForRead();
    if (!*(v2 + 72) && *(v2 + 792) >= 1)
    {
      v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemParameter_CurrentTaggedRangeMetadataArray, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      OUTLINED_FUNCTION_515();
      itemairplay_postItemNotification();
      if (v5)
      {
        CFRelease(v5);
      }
    }

    return FigReadWriteLockUnlockForRead();
  }

  return result;
}

CFDictionaryRef playerairplay_createItemDidChangeNotificationPayload(CFDictionaryRef result)
{
  values = 0;
  if (result)
  {
    if (!FigCFDictionaryGetValueIfPresent())
    {
      FigCFDictionaryGetValueIfPresent();
    }

    return 0;
  }

  return result;
}

void playerairplay_setAndCacheAudioMode(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v5 = @"AudioMode_MoviePlayback";
  }

  else
  {
    v5 = @"AudioMode_Default";
    if (FigCFEqual())
    {
      v5 = @"AudioMode_SpokenAudio";
    }
  }

  if (!*(DerivedStorage + 296) || (FigBufferedAirPlayOutputGetCMBaseObject(), v7 = v6, (v8 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v8(v7, @"AudioMode", v5))
  {
    pap_playbackSessionSetProperty();
    if (a3)
    {
      if (!v9)
      {
        CMBaseObjectGetDerivedStorage();

        FigCFDictionarySetValue();
      }
    }
  }
}

void pap_videoSyncTimerEventHandler(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v10 = *MEMORY[0x1E6960C70];
    *&time.value = *MEMORY[0x1E6960C70];
    v4 = *(MEMORY[0x1E6960C70] + 16);
    time.epoch = v4;
    cf = 0;
    playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(DerivedStorage + 40), 0, &cf);
    v5 = CMBaseObjectGetDerivedStorage();
    if (cf)
    {
      v6 = CMBaseObjectGetDerivedStorage();
      *&lhs.value = v10;
      lhs.epoch = v4;
      FigSimpleMutexLock();
      v7 = *(v6 + 576);
      if (v7)
      {
        CMTimebaseGetTime(&lhs, v7);
      }

      FigSimpleMutexUnlock();
      CMTimebaseGetTime(&rhs, *(v5 + 568));
      CMTimeSubtract(&time, &lhs, &rhs);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    lhs = time;
    CMTimeAbsoluteValue(&rhs, &lhs);
    lhs.value = rhs.value;
    lhs.timescale = rhs.timescale;
    if (rhs.flags)
    {
      v8 = *MEMORY[0x1E695E480];
      time.value = lhs.value;
      time.timescale = lhs.timescale;
      time.flags = rhs.flags;
      time.epoch = rhs.epoch;
      v9 = CMTimeCopyAsDictionary(&time, v8);
      OUTLINED_FUNCTION_236();
      pap_playbackSessionSetProperty();
      if (v9)
      {
        CFRelease(v9);
      }
    }

    CFRelease(v2);
  }
}

const void *pap_applyCachedPropertiesOnMediaControl(const void *result, const void *a2, const void *a3)
{
  v127 = 0;
  if (result)
  {
    if (a2)
    {
      v6 = result;
      result = CMBaseObjectGetDerivedStorage();
      if (result)
      {
        OUTLINED_FUNCTION_71_4(result);
        FigReadWriteLockLockForRead();
        if (*(v3 + 72))
        {
          return FigReadWriteLockUnlockForRead();
        }

        v7 = FigCFWeakReferenceHolderCopyReferencedObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (!DerivedStorage)
        {
          goto LABEL_50;
        }

        v9 = DerivedStorage;
        if (*DerivedStorage)
        {
          goto LABEL_50;
        }

        v10 = *MEMORY[0x1E6961EC8];
        if (CFEqual(v6, *MEMORY[0x1E6961EC8]))
        {
          CMBaseObjectGetDerivedStorage();
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          FigCFDictionarySetValue();
          pap_playbackSessionSetProxiedProperty(v7, v10, a2, Mutable);
          if (a3)
          {
            CFRetain(a3);
          }

          CFRetain(a2);
          v52 = *(v9 + 13);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __pap_applyCachedPropertiesOnMediaControl_block_invoke;
          block[3] = &__block_descriptor_56_e5_v8__0l;
          block[4] = v3;
          block[5] = a2;
          block[6] = a3;
          dispatch_async(v52, block);
          if (!v7)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        if (CFEqual(v6, *MEMORY[0x1E6961E60]))
        {
          Mutable = CFDictionaryGetValue(a2, @"Date");
          if (!Mutable)
          {
            goto LABEL_51;
          }

          Value = CFDictionaryGetValue(a2, @"SeekID");
          valuePtr = 0.0;
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          }

          if (v9[456] || FigGetCFPreferenceBooleanWithDefault())
          {
            v122 = **&MEMORY[0x1E6960C70];
            itemairplay_copyCurrentDateAndTime(a3, &v127);
            v13 = v127;
            if (v127)
            {
              FigDateTimeMakeFromDictionary(v127, &rhs);
              v22 = OUTLINED_FUNCTION_158_2(v14, v15, v16, v17, v18, v19, v20, v21, v116.value, *&v116.timescale, v116.epoch, v117, *&rhs.value);
              if (BYTE1(v120))
              {
                if (v120)
                {
                  v23 = v119;
                  v24 = MEMORY[0x19A8CCD90](Mutable, v22);
                  CMTimeMakeWithSeconds(&rhs, v24 - v23, 1000);
                  OUTLINED_FUNCTION_103_2(v25, v26, v27, v28, v29, v30, v31, v32, *&v116.value, *&v116.timescale, *&v116.epoch, *&v117, *&rhs.value, *&rhs.timescale, *&rhs.epoch, v119, *&v120, *&v121, *&v122.value, *&v122.timescale, *&v122.epoch, v123, *&v124.value);
                  CMTimeAdd(v34, v33, &rhs);
                  v35 = CFDateCreate(*MEMORY[0x1E695E480], v23);
                  OUTLINED_FUNCTION_154_1(v35, v36, v37, LODWORD(valuePtr) != 0, LODWORD(valuePtr), v38, v39, v40, v116.value, *&v116.timescale, v116.epoch, v117, rhs.value, *&rhs.timescale, rhs.epoch, *&v119, v120, v121, *&v122.value);
                  v41 = OUTLINED_FUNCTION_266();
                  pap_playbackSessionSeekToTime(v41, v42, v43, v44, v45, 0);
                  if (v35)
                  {
                    CFRelease(v35);
                  }
                }
              }

LABEL_19:
              CFRelease(v13);
            }

LABEL_50:
            Mutable = 0;
LABEL_51:
            if (!v7)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

          v53 = valuePtr;
          v54 = CMBaseObjectGetDerivedStorage();
          v55 = CMBaseObjectGetDerivedStorage();
          v56 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v13 = v56;
          if (v7 && !*v55 && *(v55 + 280))
          {
            CFDictionaryAddValue(v56, *MEMORY[0x1E6961D40], *(v54 + 80));
            if (pap_shouldUseInterstitialQueuing(v7))
            {
              CFDictionaryAddValue(v13, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
            }

            FigCFDictionarySetInt32();
            v57 = OUTLINED_FUNCTION_62_8();
            *v57 = v7;
            CFRetain(v7);
            v58 = *(v55 + 280);
            *(v57 + 2) = v58;
            if (v58)
            {
              CFRetain(v58);
            }

            *(v57 + 1) = a3;
            if (a3)
            {
              CFRetain(a3);
            }

            v57[6] = v53;
            v59 = MEMORY[0x1E6960C70];
            *(v57 + 28) = LODWORD(v53) != 0;
            *(v57 + 2) = *v59;
            *(v57 + 6) = *(v59 + 16);
            v60 = *(v55 + 280);
            if (*(*(CMBaseObjectGetVTable() + 16) + 72))
            {
              OUTLINED_FUNCTION_63_6();
              v61(v60, Mutable, v13);
            }
          }

LABEL_41:
          if (!v13)
          {
            goto LABEL_50;
          }

          goto LABEL_19;
        }

        if (CFEqual(v6, *MEMORY[0x1E6961E70]))
        {
          v46 = OUTLINED_FUNCTION_188();
          CFDictionaryApplyFunction(v46, v47, v48);
          goto LABEL_50;
        }

        if (CFEqual(v6, @"SetPosition"))
        {
          v49 = CFDictionaryGetValue(a2, @"Time");
          if (v49)
          {
            LODWORD(v122.value) = 0;
            CMTimeMakeFromDictionary(&rhs, v49);
            v50 = CFDictionaryGetValue(a2, @"SendSeekNotification");
            if (v50)
            {
              v79 = CFBooleanGetValue(v50);
              v51 = v79;
              if (v79)
              {
                v80 = CFDictionaryGetValue(a2, @"SeekID");
                if (v80)
                {
                  CFNumberGetValue(v80, kCFNumberSInt32Type, &v122);
                }
              }
            }

            else
            {
              v51 = 0;
            }

            v81 = FigCFDictionaryGetValue();
            OUTLINED_FUNCTION_158_2(v81, v82, v83, v84, LODWORD(v122.value), v81, v85, v86, v116.value, *&v116.timescale, v116.epoch, v117, *&rhs.value);
            v87 = OUTLINED_FUNCTION_266();
            pap_playbackSessionSeekToTime(v87, v88, v89, v51, v90, v91);
            if (*(v3 + 157))
            {
              itemairplay_requestAirPlayPlaybackInfo(a3, 0, 1, 0);
            }
          }

          goto LABEL_50;
        }

        if (CFEqual(v6, @"SetRate"))
        {
          valuePtr = 0.0;
          *&v124.value = OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
          v124.epoch = v73;
          FigCFDictionaryGetFloat32IfPresent();
          LODWORD(v74) = FigCFDictionaryGetCMTimeIfPresent();
          FigCFDictionaryGetCMTimeIfPresent();
          v75 = CFDictionaryGetValue(a2, @"SetRateOptions");
          if (!v74 && v9[456] && valuePtr != 0.0)
          {
            FigSimpleMutexLock();
            v76 = *(v3 + 576);
            if (v76)
            {
              v74 = CFRetain(v76);
              FigSimpleMutexUnlock();
              if (v74)
              {
                itemairplay_GetCurrentTime(a3, &v124);
                CMClockGetHostTimeClock();
                OUTLINED_FUNCTION_103_2(v92, v93, v94, v95, v96, v97, v98, v99, *&v116.value, *&v116.timescale, *&v116.epoch, *&v117, *&rhs.value, *&rhs.timescale, *&rhs.epoch, v119, *&v120, *&v121, *&v122.value, *&v122.timescale, *&v122.epoch, v123, *&v124.value);
                v103 = CMSyncConvertTime(v102, v100, v74, v101);
                OUTLINED_FUNCTION_154_1(v103, v104, v105, v106, v107, v108, v109, v110, v116.value, *&v116.timescale, v116.epoch, v117, rhs.value, *&rhs.timescale, rhs.epoch, *&v119, v120, v121, *&v122.value);
                CFRelease(v74);
                LODWORD(v74) = 1;
              }
            }

            else
            {
              FigSimpleMutexUnlock();
              LODWORD(v74) = 0;
            }
          }

          v122 = v124;
          v116 = rhs;
          pap_playbackSessionSetRate(v7, v74, valuePtr, &v122, &v116.value, v75);
          goto LABEL_50;
        }

        if (CFEqual(v6, @"PlaybackRestrictions"))
        {
          v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v3 + 688));
          v77 = CMBaseObjectGetDerivedStorage();
          ProxiedPropertyParamsWithItemUUID = itemairplay_createProxiedPropertyParamsWithItemUUID(*(v77 + 80));
          pap_playbackSessionSetProxiedProperty(v7, *MEMORY[0x1E6961C78], v13, ProxiedPropertyParamsWithItemUUID);
          if (ProxiedPropertyParamsWithItemUUID)
          {
            CFRelease(ProxiedPropertyParamsWithItemUUID);
          }

          goto LABEL_41;
        }

        if (CFEqual(v6, @"SetEndTime"))
        {
          rhs = *(v3 + 440);
          v62 = OUTLINED_FUNCTION_266();
          v66 = 1;
          v67 = 0;
LABEL_49:
          playerairplay_setPlaybackEndTimes(v62, v63, v64, v66, v65, v67);
          goto LABEL_50;
        }

        if (CFEqual(v6, @"ReverseEndTime"))
        {
          rhs = *(v3 + 464);
          v62 = OUTLINED_FUNCTION_266();
          v66 = 0;
          v67 = 1;
          goto LABEL_49;
        }

        if (CFEqual(v6, @"TextMarkupArray"))
        {
          v111 = OUTLINED_FUNCTION_178();
          itemairplay_setItemTextMarkupArray(v111, v112);
          goto LABEL_50;
        }

        if (!CFEqual(v6, *MEMORY[0x1E6961E90]) && !CFEqual(v6, *MEMORY[0x1E6961E50]) && !CFEqual(v6, *MEMORY[0x1E6961E80]))
        {
          if (CFEqual(v6, *MEMORY[0x1E6961EE8]) || CFEqual(v6, *MEMORY[0x1E6961EF0]))
          {
            v113 = CMBaseObjectGetDerivedStorage();
            if (!*(v113 + 240) || !*(v113 + 241))
            {
              goto LABEL_50;
            }

            memset(&rhs, 0, sizeof(rhs));
            CMTimeMakeFromDictionary(&rhs, a2);
LABEL_63:
            v69 = CMBaseObjectGetDerivedStorage();
            itemairplay_createProxiedPropertyParamsWithItemUUID(*(v69 + 80));
            v70 = OUTLINED_FUNCTION_618();
            Mutable = v71;
            pap_playbackSessionSetProxiedProperty(v70, v72, a2, v71);
            if (!v7)
            {
LABEL_53:
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              return FigReadWriteLockUnlockForRead();
            }

LABEL_52:
            CFRelease(v7);
            goto LABEL_53;
          }

          if (!CFEqual(v6, *MEMORY[0x1E6961ED0]))
          {
            if (CFEqual(v6, *MEMORY[0x1E6961E68]))
            {
              v114 = OUTLINED_FUNCTION_618();
              pap_playbackSessionSetProxiedProperty(v114, v115, a2, 0);
              goto LABEL_50;
            }

            if (CFEqual(v6, *MEMORY[0x1E6961E58]))
            {
              playerairplay_setInterstitialEventSkippableStateOnAirPlayController();
              goto LABEL_50;
            }

            if (!CFEqual(v6, *MEMORY[0x1E6961EA0]))
            {
              goto LABEL_50;
            }

            goto LABEL_63;
          }
        }

        v68 = CMBaseObjectGetDerivedStorage();
        if (!*(v68 + 240) || !*(v68 + 241))
        {
          goto LABEL_50;
        }

        goto LABEL_63;
      }
    }
  }

  return result;
}

void __pap_applyCachedPropertiesOnMediaControl_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  OUTLINED_FUNCTION_121_1();
  if (!v2)
  {
    v3 = *(v1 + 352);
    if (v3)
    {
      FigAirPlayMediaSelectionSetProperty(v3, @"LastKnownSelectedMediaArray", *(v0 + 40));
    }
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(v0 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void pap_playbackSessionSeekToTime(const void *a1, char *a2, __int128 *a3, char a4, uint64_t a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1 && !*v13 && *(v13 + 280))
  {
    itemairplay_clearCoordinatedPlaybackSynchronizationTimebase(a2);
    playerairplay_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(a1, a2);
    v15 = *(v13 + 56);
    v23 = *a3;
    v24 = *(a3 + 2);
    playerairplay_notifyStartupTasksOfSeek(a1, a2, a5, v15);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961D40], *(DerivedStorage + 80));
    if (pap_shouldUseInterstitialQueuing(a1))
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6961BD8], *MEMORY[0x1E695E4D0]);
    }

    FigCFDictionarySetInt32();
    OUTLINED_FUNCTION_521();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_521();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_521();
    FigCFDictionarySetValueFromKeyInDict();
    v16 = OUTLINED_FUNCTION_62_8();
    *v16 = a1;
    CFRetain(a1);
    v17 = *(v13 + 280);
    v16[2] = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    v16[1] = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    *(v16 + 6) = a5;
    *(v16 + 28) = a4;
    v16[7] = a6;
    if (a6)
    {
      CFRetain(a6);
    }

    v18 = *a3;
    v16[6] = *(a3 + 2);
    *(v16 + 2) = v18;
    v19 = *(v13 + 280);
    v21 = *a3;
    v22 = *(a3 + 2);
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v23 = v21;
      v24 = v22;
      OUTLINED_FUNCTION_63_6();
      v20(v19, &v23, Mutable);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void pap_applyEnabledTrackPropertyOnMediaControl(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      CFStringGetIntValue(a1);
      CMBaseObjectGetDerivedStorage();
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      v7 = OUTLINED_FUNCTION_236();
      pap_playbackSessionSetProxiedProperty(v7, v8, v9, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t itemairplay_setItemTextMarkupArray(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (*(v2 + 72))
  {
    goto LABEL_8;
  }

  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = CMBaseObjectGetDerivedStorage();
  if (v6 && !*v6)
  {
    CMBaseObjectGetDerivedStorage();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    pap_playbackSessionSetProxiedProperty(v5, *MEMORY[0x1E6961EE0], a2, Mutable);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  Mutable = 0;
  if (v5)
  {
LABEL_5:
    CFRelease(v5);
  }

LABEL_6:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_8:

  return FigReadWriteLockUnlockForRead();
}

void playerairplay_setInterstitialEventSkippableStateOnAirPlayController()
{
  OUTLINED_FUNCTION_261();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && !*DerivedStorage && DerivedStorage[241])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v0)
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionarySetInt32();
      FigCFDictionaryGetValueIfPresent();
      FigCFDictionaryGetValueIfPresent();
      v3 = OUTLINED_FUNCTION_236();
      pap_playbackSessionSetProxiedProperty(v3, v4, v5, 0);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

void __pap_playbackSessionSetRateCompletion_block_invoke()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    v2 = *(*(v0 + 48) + 8);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v2)
    {
      if (!*DerivedStorage && *(DerivedStorage + 280) == v2)
      {
        v4 = *(v0 + 40);
        v5 = *(v0 + 64);
        v6 = *(v0 + 56);
        v7 = CMBaseObjectGetDerivedStorage();
        v8 = *(v6 + 16);
        v9 = *(CMBaseObjectGetDerivedStorage() + 64) && v8 == 0.0;
        v10 = v9;
        if (!v5 && *(v6 + 32) == *(v7 + 60) - 1 && !v10)
        {
          v11 = *(v6 + 16);
          if (v11 != *(v7 + 56))
          {
            playerairplay_updatePlayerRateToMatch(v4, *(v6 + 24), v11);
          }
        }
      }
    }
  }

  v12 = *(v0 + 48);
  if (v12[1])
  {
    CFRelease(v12[1]);
    v12 = *(v0 + 48);
  }

  if (*v12)
  {
    CFRelease(*v12);
    v12 = *(v0 + 48);
  }

  if (v12[3])
  {
    CFRelease(v12[3]);
    v12 = *(v0 + 48);
  }

  free(v12);
}

double playerairplay_bufferedAirPlayOutputActiveConfigurationDidBecomeInvalid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 296) == a4)
  {
    v8 = *(DerivedStorage + 8);
    if (v8)
    {

      FigPlayerReevaluateRouteConfigurationForReason(v8, 0, @"Received kFigBufferedAirPlayOutputNotification_ActiveConfigurationDidBecomeInvalid on AirPlay player -> AirPlay sub-player");
    }

    else
    {
      v9 = qword_1EAF172E0;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954436, "<<<< FigPlayer_AP >>>>", 5288, v4);
    }
  }

  return result;
}

void playerairplay_audioSessionMutedDidChangeNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 296) && *(DerivedStorage + 392) == a4)
  {
    FigCFDictionaryGetBooleanIfPresent();
    v7 = *MEMORY[0x1E695E4C0];
    v8 = *MEMORY[0x1E695E4C0];
    FigBytePumpGetFigBaseObject();
    v10 = v9;
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(v10, 0x1F0B34E18, v8);
    }

    FigBufferedAirPlayOutputGetCMBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, @"IsPiPMuted", v7);
    }
  }

  OUTLINED_FUNCTION_652();
}

void playerairplay_updateAirPlayRouteInformationAndEndpoint(uint64_t a1, const __CFDictionary *a2, const void *a3)
{
  playerairplay_updateAirPlayRouteInformation(a1, a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    *(DerivedStorage + 272) = 0;
    v6 = *(DerivedStorage + 256);
    *(DerivedStorage + 256) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (a3)
    {
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v7 = OUTLINED_FUNCTION_188();
        v8(v7);
      }

      OUTLINED_FUNCTION_496();
      cf = CFDictionaryCreate(v9, v10, v11, v12, v13, v14);
      *(v5 + 241) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 242) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 244) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 243) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      *(v5 + 245) = 0;
      FigCFDictionaryGetBooleanIfPresent();
      FigEndpointGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v15 = OUTLINED_FUNCTION_188();
        v16(v15);
      }

      *(v5 + 272) = 0;
    }

    v17 = *(v5 + 232);
    if (v17)
    {
      CFRelease(v17);
      *(v5 + 232) = 0;
    }

    v18 = *(v5 + 264);
    *(v5 + 264) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (*(v5 + 264) != v18)
    {
      OUTLINED_FUNCTION_270();
      playerairplay_postPlayerNotification();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void playerairplay_switchFromBufferedAirPlayToLocal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 296))
  {
    v3 = DerivedStorage;
    FigPlayerGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_152_2();
      v5(v4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
    v6 = *(v3 + 296);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 296) = 0;
    }

    *(v3 + 304) = 0;
    playerairplay_updateShareAndAirPlayEchoMitigation(a1);

    playerairplay_postIsBufferedAirPlayActiveDidChangeNotification(a1);
  }
}

void playerairplay_updateBasedOnAirPlayVideoRouteDeselected(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*DerivedStorage)
    {
      v2 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_97_4(v2);
      FigCFDictionaryGetBooleanIfPresent();
      if (v6)
      {
        v3 = *(CMBaseObjectGetDerivedStorage() + 216);
        if (v3)
        {
          if (v3 != 10)
          {
            v4 = OUTLINED_FUNCTION_203();
            playerairplay_switchFromAirPlayVideoToLocal(v4, v5);
          }
        }
      }
    }
  }
}

void playerairplay_playbackRouteSelected(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  IsAirplayVideoActive = playerairplay_getIsAirplayVideoActive(a1);
  if (!*DerivedStorage)
  {
    if (*(DerivedStorage + 224))
    {
      v4 = IsAirplayVideoActive;
      v5 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_97_4(v5);
      FigCFDictionaryGetBooleanIfPresent();
      if (v6)
      {
        CFDictionaryGetValue(*(DerivedStorage + 224), @"NewRouteName");
        pap_invalidateEndpointPlaybackSession(a1);
        playerairplay_resetAirPlayVideoState(a1);
        playerairplay_checkStartStopAirPlay(a1, v4);
      }
    }
  }

  playerairplay_checkAndUpdatePlayQueueItems(a1);
}

void playerairplay_bufferedAudioRouteSelected(void *a1)
{
  v118 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_199();
  v5 = *(CMBaseObjectGetDerivedStorage() + 216);
  v6 = v5 == 10 || v5 == 0;
  if (v6 && !*(CMBaseObjectGetDerivedStorage() + 296))
  {
    if (dword_1EAF172E8)
    {
      OUTLINED_FUNCTION_147();
      v15 = OUTLINED_FUNCTION_31_15(v7, v8, v9, v10, v11, v12, v13, v14, v88, v93, v98, *v103, v103[2], v103[3], v103[4]);
      OUTLINED_FUNCTION_311(v15, v16, v17, v18, v19, v20, v21, v22, v89, v94, v99, v104, v108, v111, v114);
      OUTLINED_FUNCTION_40();
      if (v3)
      {
        if (a1)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_12_17(v23, v24, v117, v25, &dword_1962D5000, v26, v27, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s BufferedAirPlayAudio route selected endpoint:%p");
        OUTLINED_FUNCTION_612();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v28, v29, v30, v31, v32);
    }

    if (*(v1 + 224))
    {
      pap_invalidateEndpointPlaybackSession(a1);
      v33 = *(v1 + 216);
      CMBaseObjectGetDerivedStorage();
      v117[0] = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (v117[0])
      {
        v34 = 10;
      }

      else
      {
        v34 = 0;
      }

      pap_setAirPlayState(a1, v34);
      if (dword_1EAF172E8)
      {
        OUTLINED_FUNCTION_147();
        v43 = OUTLINED_FUNCTION_31_15(v35, v36, v37, v38, v39, v40, v41, v42, v88, v93, v98, *v103, v103[2], v103[3], v103[4]);
        OUTLINED_FUNCTION_311(v43, v44, v45, v46, v47, v48, v49, v50, v90, v95, v100, v105, v109, v112, v115);
        OUTLINED_FUNCTION_40();
        if (v3)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          pap_getDescriptionForAirPlayState(v33);
          OUTLINED_FUNCTION_199();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          pap_getDescriptionForAirPlayState(*(DerivedStorage + 216));
          OUTLINED_FUNCTION_49_6();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_12_17(v52, v53, v117, v54, &dword_1962D5000, v55, v56, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s AirPlay state transition: from %{public}s to %{public}s");
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v57, v58, v59, v60, v61);
        if (dword_1EAF172E8)
        {
          OUTLINED_FUNCTION_147();
          v70 = OUTLINED_FUNCTION_31_15(v62, v63, v64, v65, v66, v67, v68, v69, v91, v96, v101, *v106, v106[2], v106[3], v106[4]);
          OUTLINED_FUNCTION_86_2(v70, v71, v72, v73, v74, v75, v76, v77, v92, v97, v102, v107, v110, v113, v116);
          OUTLINED_FUNCTION_7_22();
          if (v2)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_53_10();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_4_41(v78, v79, v117, v80, &dword_1962D5000, v81, v82, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s Switching from Local to Buffered");
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_524(v83, v84, v85, v86, v87);
        }
      }

      playerairplay_switchFromLocalToBufferedAirPlay(a1);
    }
  }
}

void playerairplay_checkStartAPV(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 40);
  FigSimpleMutexLock();
  v4 = *(v3 + 16);
  FigSimpleMutexUnlock();
  if (*(CMBaseObjectGetDerivedStorage() + 296))
  {
    goto LABEL_31;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_55_11();
  if (!v5)
  {
    goto LABEL_31;
  }

  if (*(DerivedStorage + 216) != 12 && *(CMBaseObjectGetDerivedStorage() + 216) <= 0xFu)
  {
    OUTLINED_FUNCTION_140_1();
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  if (!pap_doesCurrentRouteUseScreen(a1))
  {
    if (*(DerivedStorage + 1))
    {
      v12 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_97_4(v12);
      FigCFDictionaryGetBooleanIfPresent();
      if (!v15 || !(playerairplay_switchFromLocalToAirPlayVideo(a1) | *(DerivedStorage + 457)))
      {
        if (*(DerivedStorage + 247))
        {
          v13 = OUTLINED_FUNCTION_198();
          playerairplay_switchToBufferedAirPlay(v13, v14);
        }
      }
    }

    goto LABEL_31;
  }

  v6 = *(DerivedStorage + 408);
  v7 = gIsiOSDeviceWithMedusaSupport_0;
  if (!playerairplay_isAirPlayVideoAllowed(a1) || (v7 ? (v8 = v6 == 0) : (v8 = 0), v8 ? (v9 = 0) : (v9 = 1), !*(DerivedStorage + 52) || !v4 || !v9 || !*(DerivedStorage + 1) || *(DerivedStorage + 200) && pap_isDeviceUnlocked()))
  {
LABEL_31:
    OUTLINED_FUNCTION_652();
    return;
  }

  OUTLINED_FUNCTION_652();

  playerairplay_switchFromLocalToAirPlayVideo(v10);
}

void playerairplay_checkStopAPV(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigSimpleMutexUnlock();
  if (!*(CMBaseObjectGetDerivedStorage() + 296))
  {
    v3 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_97_4(v3);
    FigCFDictionaryGetBooleanIfPresent();
    if (v10)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_55_11();
      if (!v4 || *(CMBaseObjectGetDerivedStorage() + 216) <= 0xFu && (OUTLINED_FUNCTION_140_1(), !v5))
      {
        if (pap_doesCurrentRouteUseScreen(a1))
        {
          if (playerairplay_isAirPlayVideoAllowed(a1) && DerivedStorage[52] && (!DerivedStorage[200] || !pap_isDeviceUnlocked()))
          {
            return;
          }

LABEL_16:
          v6 = OUTLINED_FUNCTION_198();
          playerairplay_switchFromAirPlayVideoToLocal(v6, v7);
          return;
        }

        if (!DerivedStorage[1])
        {
          goto LABEL_16;
        }

        if (!playerairplay_isAirPlayVideoAllowed(a1))
        {
          if (!DerivedStorage[247])
          {
            goto LABEL_16;
          }

          v8 = OUTLINED_FUNCTION_203();
          if (!playerairplay_switchToBufferedAirPlay(v8, v9))
          {
            goto LABEL_16;
          }
        }
      }
    }
  }
}

void playerairplay_switchFromLocalToBufferedAirPlay(void *a1)
{
  v116 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v101 = 0;
  url = 0;
  if (qword_1ED4CAC70 != -1)
  {
    dispatch_once(&qword_1ED4CAC70, &__block_literal_global_160);
  }

  v4 = qword_1ED4CAC68;
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 296))
  {
    FigBytePumpGetFigBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = *MEMORY[0x1E695E480];
      if (!v7(v6, 0x1F0B34E38, *MEMORY[0x1E695E480], &v102))
      {
        v9 = FigBufferedAirPlayOutputCreate(v8, *(DerivedStorage + 256), v102, &v103);
        if (v9)
        {
          v75 = v9;
          OUTLINED_FUNCTION_26_19();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v77 = v97;
          }

          else
          {
            v77 = v97 & 0xFFFFFFFE;
          }

          if (v77)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            v104 = 136315906;
            OUTLINED_FUNCTION_72_5();
            *(v78 + 34) = v75;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_4_41(v79, v80, buf, v81, &dword_1962D5000, v82, v83, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s Failed to create bufferedAirPlayOutput with err = %d");
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414(v84, v85, v86, v87, v88);
        }

        else
        {
          FigBufferedAirPlayOutputGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v10 = OUTLINED_FUNCTION_148_2();
            v11(v10);
          }

          FigBufferedAirPlayOutputGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v12 = OUTLINED_FUNCTION_148_2();
            v13(v12);
          }

          FigBufferedAirPlayOutputGetCMBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v14 = OUTLINED_FUNCTION_148_2();
            v15(v14);
          }

          FigPlayerGetFigBaseObject();
          v17 = v16;
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v18 && !v18(v17, @"FigAudioSession", v8, &cf))
          {
            FigBufferedAirPlayOutputGetCMBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 56))
            {
              v35 = OUTLINED_FUNCTION_148_2();
              v36(v35);
            }
          }

          else
          {
            OUTLINED_FUNCTION_26_19();
            v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v19, type);
            OUTLINED_FUNCTION_37();
            if (v1)
            {
              if (a1)
              {
                v20 = (CMBaseObjectGetDerivedStorage() + 459);
              }

              else
              {
                v20 = "";
              }

              v21 = *(DerivedStorage + 8);
              v104 = 136315906;
              v105 = "playerairplay_switchFromLocalToBufferedAirPlay";
              v106 = 2048;
              v107 = a1;
              v108 = 2082;
              v109 = v20;
              v110 = 2048;
              v111 = v21;
              OUTLINED_FUNCTION_66();
              v22 = OUTLINED_FUNCTION_27();
              _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v19, type, v27);
            }

            OUTLINED_FUNCTION_16();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (cf)
          {
            CFRelease(cf);
          }

          v28 = CFStringCreateWithCString(v8, (DerivedStorage + 459), 0x8000100u);
          if (v28)
          {
            v29 = v28;
            FigBufferedAirPlayOutputGetCMBaseObject();
            v31 = v30;
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v32)
            {
              v32(v31, @"LoggingID", v29);
            }

            if (dword_1EAF172E8)
            {
              OUTLINED_FUNCTION_26_19();
              v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v33, type);
              OUTLINED_FUNCTION_37();
              if (v1)
              {
                if (a1)
                {
                  v34 = (CMBaseObjectGetDerivedStorage() + 459);
                }

                else
                {
                  v34 = "";
                }

                v37 = *(DerivedStorage + 8);
                v104 = 136316162;
                v105 = "playerairplay_switchFromLocalToBufferedAirPlay";
                v106 = 2048;
                v107 = a1;
                v108 = 2082;
                v109 = v34;
                v110 = 2048;
                v111 = v103;
                v112 = 2048;
                v113 = v37;
                OUTLINED_FUNCTION_66();
                v38 = OUTLINED_FUNCTION_27();
                _os_log_send_and_compose_impl(v38, v39, v40, v41, v42, v33, type, v43);
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v44 = v103;
            FigPlayerGetFigBaseObject();
            v46 = v45;
            v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v47)
            {
              v48 = v47(v46, @"BufferedAirPlayOutput", v44);
              if (!v48)
              {
                if (*(DerivedStorage + 296))
                {
                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterRemoveWeakListeners();
                  v49 = *(DerivedStorage + 296);
                  if (v49)
                  {
                    CFRelease(v49);
                    *(DerivedStorage + 296) = 0;
                  }
                }

                *(DerivedStorage + 296) = CFRetain(v103);
                *(DerivedStorage + 304) = 0;
                OUTLINED_FUNCTION_64_8();
                CFDictionaryApplyFunction(v50, v51, a1);
                playerairplay_updateShareAndAirPlayEchoMitigation(a1);
                if (a1)
                {
                  CFRetain(a1);
                }

                OUTLINED_FUNCTION_25_1();
                v92 = 3221225472;
                v93 = __playerairplay_switchFromLocalToBufferedAirPlay_block_invoke;
                v94 = &__block_descriptor_40_e5_v8__0l;
                v95 = a1;
                dispatch_async(v52, &block);
                CMNotificationCenterGetDefaultLocalCenter();
                FigNotificationCenterAddWeakListeners();
                playerairplay_postIsBufferedAirPlayActiveDidChangeNotification(a1);
                if (v4 && *(*(CMBaseObjectGetVTable() + 16) + 32))
                {
                  v53 = OUTLINED_FUNCTION_312();
                  v54(v53);
                  v55 = v101;
                  if (!v101)
                  {
LABEL_66:
                    CFRelease(v29);
                    goto LABEL_78;
                  }

                  v56 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                  if (v56)
                  {
                    v56(v55, &v100);
                    if (v100)
                    {
                      FigAssetGetCMBaseObject();
                      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                      {
                        v57 = OUTLINED_FUNCTION_521();
                        v58(v57);
                        if (url)
                        {
                          if (pap_isLocalFileURL(url, 0))
                          {
                            v55 = CFURLCopyPathExtension(url);
                            CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
                            if (CTGreenTeaOsLogHandle)
                            {
                              v60 = CTGreenTeaOsLogHandle;
                              if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
                              {
                                *buf = 138412290;
                                v115 = v55;
                                _os_log_impl(&dword_1962D5000, v60, OS_LOG_TYPE_INFO, "Transmitting some media data (%@)", buf, 0xCu);
                              }
                            }

                            goto LABEL_66;
                          }
                        }
                      }
                    }
                  }
                }

LABEL_65:
                v55 = 0;
                goto LABEL_66;
              }

              v61 = v48;
            }

            else
            {
              v61 = -12782;
            }

            OUTLINED_FUNCTION_26_19();
            v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            if (os_log_type_enabled(v62, type))
            {
              v63 = v97;
            }

            else
            {
              v63 = v97 & 0xFFFFFFFE;
            }

            if (v63)
            {
              if (a1)
              {
                CMBaseObjectGetDerivedStorage();
              }

              v104 = 136315906;
              OUTLINED_FUNCTION_72_5();
              *(v64 + 34) = v61;
              OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_4_41(v65, v66, buf, v67, &dword_1962D5000, v68, v69, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s Setting bufferedAirPlayOutput failed with err = %d");
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_238_0(v70, v71, v72, v73, v74);
            goto LABEL_65;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, v90, block);
        }
      }
    }
  }

  v55 = 0;
LABEL_78:
  if (v103)
  {
    CFRelease(v103);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (v101)
  {
    CFRelease(v101);
  }

  if (v100)
  {
    CFRelease(v100);
  }

  if (url)
  {
    CFRelease(url);
  }

  if (v55)
  {
    CFRelease(v55);
  }
}

void playerairplay_setFigAudioSessionInfoOnBAO(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean = 0;
  if (*(DerivedStorage + 296))
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 392);
    if (v4)
    {
      v5 = *(CMBaseObjectGetVTable() + 16);
      if (v5)
      {
        v6 = *(v5 + 48);
        if (v6)
        {
          v6(v4, *MEMORY[0x1E69B00A0], *MEMORY[0x1E695E480], &BOOLean);
        }
      }

      FigBufferedAirPlayOutputGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v7 = OUTLINED_FUNCTION_188();
        v8(v7);
      }
    }

    if (*(v3 + 137))
    {
      v9 = 1;
    }

    else if (BOOLean)
    {
      v9 = CFBooleanGetValue(BOOLean) != 0;
    }

    else
    {
      v9 = 0;
    }

    playerairplay_SetPiPMuteOnBufferedAudio(a1, v9);
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }
}

uint64_t playerairplay_SetPiPMuteOnBufferedAudio(uint64_t a1, int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  if (!*(CMBaseObjectGetDerivedStorage() + 296))
  {
    return 0;
  }

  if (dword_1EAF172E8)
  {
    OUTLINED_FUNCTION_147();
    v12 = OUTLINED_FUNCTION_126(qword_1EAF172E0, v5, v6, v7, v8, v9, v10, v11, v35, v37, v39, *v41, v41[2], v41[3], v41[4]);
    OUTLINED_FUNCTION_304(v12, v13, v14, v15, v16, v17, v18, v19, v36, v38, v40, v42, v43, v44, v45);
    OUTLINED_FUNCTION_46();
    if (v2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_10_3(v20, v21, v46, v22, &dword_1962D5000, v23, v24, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s PiPMute isMuted=%d");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v25, v26, v27, v28, v29);
  }

  if (a2)
  {
    v30 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v30 = MEMORY[0x1E695E4C0];
  }

  FigBufferedAirPlayOutputGetCMBaseObject();
  v32 = v31;
  v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v33)
  {
    return v33(v32, @"IsPiPMuted", *v30);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t playerairplay_switchToBufferedAirPlay(void *a1, int a2)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 247))
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_97_4(DerivedStorage);
  FigCFDictionaryGetBooleanIfPresent();
  if (a2)
  {
    if (v8)
    {
      v5 = OUTLINED_FUNCTION_198();
      playerairplay_switchFromAirPlayVideoToLocal(v5, v6);
    }
  }

  playerairplay_bufferedAudioRouteSelected(a1);
  return 1;
}

BOOL playerairplay_isPrimaryForNativeInterstitialsInAPVPlayback(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || !DerivedStorage[241] || !*(CMBaseObjectGetDerivedStorage() + 368))
  {
    return 0;
  }

  v4 = pap_copyPrimaryPlayer(a1);
  v12 = v4;
  if (v4)
  {
    v4 = CMBaseObjectGetDerivedStorage();
    v13 = *(v4 + 216);
    v15 = v13 == 16 || (v13 & 0xFFFFFFFE) == 14;
  }

  else
  {
    v15 = 0;
  }

  if (dword_1EAF172E8 >= 2)
  {
    v16 = OUTLINED_FUNCTION_19_27(v4, v5, v6, v7, v8, v9, v10, v11, v35, v37, v39, v41, SBYTE2(v41), SBYTE3(v41), SHIDWORD(v41));
    OUTLINED_FUNCTION_311(v16, v17, v18, v19, v20, v21, v22, v23, v36, v38, v40, v42, v43, v44, v45);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (v12)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_139();
      OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_12_17(v24, v25, v46, v26, &dword_1962D5000, v27, v28, "<<<< FigPlayer_AP >>>> %s: [%p] %{public}s primary player in AP mode = %d");
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v29, v30, v31, v32, v33);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v15;
}

uint64_t playerairplay_copyPlayQueueAirPlayItemFromSubPlayer()
{
  OUTLINED_FUNCTION_375_0();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  key = 0;
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v3 = DerivedStorage;
  if (v1)
  {
    v1 = *(CMBaseObjectGetDerivedStorage() + 8);
  }

  v4 = *(v3 + 1);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v5 && (v5(v4, v1, &key), key))
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(v3 + 2), key);
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
      v8 = 0;
    }

    else
    {
      v8 = 4294954511;
    }

    FigSimpleMutexUnlock();
    if (v0)
    {
LABEL_10:
      if (!v8)
      {
        *v0 = v7;
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (v0)
    {
      goto LABEL_10;
    }
  }

  if (key)
  {
    CFRelease(key);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

void __playerairplay_switchFromLocalToAirPlayVideo_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  if (!*(*(v0 + 32) + 72) && !**(v0 + 40))
  {
    isUsingCustomMediaSelectionSchemes = itemairplay_isUsingCustomMediaSelectionSchemes(*(v0 + 48));
    v2 = *(*(v0 + 32) + 352);
    if (isUsingCustomMediaSelectionSchemes)
    {
      FigAirPlayMediaSelectionSetProperty(v2, @"MediaPresentationLanguages", *(v0 + 56));
      v2 = *(*(v0 + 32) + 352);
      v3 = kFigAirPlayMediaSelectionProperty_MediaPresentationCharacteristics;
      v4 = 64;
    }

    else
    {
      v3 = kFigAirPlayMediaSelectionProperty_ClientSelectedMediaArray;
      v4 = 72;
    }

    FigAirPlayMediaSelectionSetProperty(v2, *v3, *(v0 + v4));
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v6 = v6 || v5 == 10;
    if (!v6)
    {
      itemairplay_prepareAndCacheSelectedMediaArray(*(v0 + 48));
    }
  }

  OUTLINED_FUNCTION_137_1();
  v7 = *(v0 + 72);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v0 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(v0 + 80);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(v0 + 48);
  if (v11)
  {

    CFRelease(v11);
  }
}

BOOL itemairplay_isUsingCustomMediaSelectionSchemes(uint64_t a1)
{
  theArray = 0;
  v1 = *(CMBaseObjectGetDerivedStorage() + 352);
  if (!v1)
  {
    return 0;
  }

  v2 = FigAirPlayMediaSelectionCopyProperty(v1, @"mediaCharacteristicsForCustomMediaSelectionSchemes", *MEMORY[0x1E695E480], &theArray);
  v3 = theArray;
  if (!v2 && theArray)
  {
    v4 = CFArrayGetCount(theArray) > 0;
    v3 = theArray;
    if (!theArray)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if (theArray)
  {
LABEL_7:
    CFRelease(v3);
  }

  return v4;
}

void __itemairplay_resetTimeToPausePlayback_block_invoke(uint64_t a1)
{
  cf = 0;
  FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 36, &cf);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  *(*(a1 + 32) + 56) = v2;
  playerairplay_postPlayerRateDidChangeNotification(v2, v3, cf);
  v4 = *(a1 + 40);
  v5 = *(a1 + 52);
  v6 = *(a1 + 68);
  playerairplay_setRateAirPlay(v4, 0, &v5, MEMORY[0x1E6960C70], cf);
  CFRelease(*(a1 + 40));
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef playerairplay_copyExternalPlaybackSystemLanguageCode(const void *a1)
{
  cf = 0;
  if (a1)
  {
    v2 = a1;
    v3 = *(CMBaseObjectGetDerivedStorage() + 368);
    if (v3)
    {
      v2 = pap_copyPrimaryPlayer(v2);
    }

    if (!*CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_199();
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_54_11();
      if (!(!v5 & v4))
      {
        if (*(v1 + 241))
        {
          v6 = *(v1 + 232);
          if (v6)
          {
            cf = CFRetain(v6);
          }

          else
          {
            v7 = OUTLINED_FUNCTION_270();
            if (!playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut(v7, v8, v9, 500000000, v10))
            {
              v11 = *(v1 + 232);
              *(v1 + 232) = 0;
              if (v11)
              {
                CFRelease(v11);
              }
            }
          }
        }
      }
    }

    if (v3 && v2)
    {
      CFRelease(v2);
    }
  }

  return cf;
}

void __playerairplay_copyPropertyAndWaitTillCompleteOrTimesOut_block_invoke(uint64_t a1)
{
  if (!**(a1 + 56))
  {
    OUTLINED_FUNCTION_2_4();
    **(v3 + 24) = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    OUTLINED_FUNCTION_2_4();
    *(*(v5 + 24) + 24) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    *(*(*(*(a1 + 32) + 8) + 24) + 8) = *(*(*(a1 + 40) + 8) + 40);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = *(*(*(a1 + 48) + 8) + 24);
    if (v7)
    {
      CFRetain(v7);
      v8 = *(*(*(a1 + 48) + 8) + 24);
    }

    else
    {
      v8 = 0;
    }

    pap_playbackSessionGetProxiedProperty(*(a1 + 64), *(a1 + 72), *(a1 + 80), pap_playbackSessionGetProxiedPropertyCompletion, v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(*(*(a1 + 40) + 8) + 40);
  if (v13)
  {

    dispatch_release(v13);
  }
}

void __playerairplay_handleSetProperty_block_invoke_6(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = playerairplay_SetPiPMuteOnBufferedAudio(*(a1 + 40), *(a1 + 48));
  OUTLINED_FUNCTION_2_4();
  *(v2 + 24) = 0;
  if (v1)
  {

    CFRelease(v1);
  }
}

void __playerairplay_handleSetProperty_block_invoke_7()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 40));
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void playerairplay_setPropertyOnAllAirPlayMediaSelections()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = OUTLINED_FUNCTION_146_2(DerivedStorage);
  PlayQueueSnapshot = playqueue_createPlayQueueSnapshot(v3, v4);
  if (PlayQueueSnapshot)
  {
    v6 = PlayQueueSnapshot;
    if (CFArrayGetCount(PlayQueueSnapshot) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = OUTLINED_FUNCTION_178();
        CFArrayGetValueAtIndex(v8, v9);
        v10 = CMBaseObjectGetDerivedStorage();
        if (*(v10 + 72))
        {
          break;
        }

        v11 = *(v10 + 352);
        if (!v11)
        {
          break;
        }

        FigAirPlayMediaSelectionSetProperty(v11, v1, v0);
        ++v7;
      }

      while (v7 < CFArrayGetCount(v6));
    }

    CFRelease(v6);
  }
}

void __playerairplay_handleSetProperty_block_invoke_8(uint64_t a1)
{
  if (!**(a1 + 40))
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(a1 + 48));
      OUTLINED_FUNCTION_2_4();
      *(v4 + 24) = 0;
    }
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
}

void __playerairplay_handleSetProperty_block_invoke_9()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 40));
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __playerairplay_handleSetProperty_block_invoke_10()
{
  OUTLINED_FUNCTION_56_9();
  if (!v1)
  {
    playerairplay_setPropertyOnAllAirPlayMediaSelections();
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 40));
    }
  }

  v4 = *(v0 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(v0 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __playerairplay_handleSetProperty_block_invoke_14(uint64_t a1)
{
  playerairplay_setInterstitialEventSkippableStateOnAirPlayController();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t itemairplay_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, 0);
    v17 = v19;
LABEL_19:
    v6 = 0;
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, 0);
    v17 = 0;
    goto LABEL_19;
  }

  v5 = DerivedStorage;
  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  v7 = CMBaseObjectGetDerivedStorage();
  if (!v7 || *v7)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, 0);
    v17 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_139_1();
    v8 = OUTLINED_FUNCTION_151_1();
    v14 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v8, v9, a3, 0, v10, v11, v12, v13);
    if (v14)
    {
LABEL_9:
      v17 = v14;
      goto LABEL_11;
    }

    if (!*(v5 + 8))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, 0);
      goto LABEL_9;
    }

    FigPlaybackItemGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v15 = OUTLINED_FUNCTION_104_0();
      v14 = v16(v15);
      goto LABEL_9;
    }

    v17 = 4294954514;
  }

LABEL_11:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v17;
}

uint64_t itemairplay_assetPropertyLoaded(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (!*(v5 + 72))
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    v10 = CMBaseObjectGetDerivedStorage();
    if (v10 && a5 && (v11 = v10, !*v10) && (Value = CFDictionaryGetValue(a5, @"assetPayload_Property"), CFEqual(Value, @"assetProperty_AssetType")))
    {
      if (v9)
      {
        CFRetain(v9);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_0_52();
      OUTLINED_FUNCTION_1_44();
      v15[2] = &__itemairplay_assetPropertyLoaded_block_invoke;
      v15[3] = &__block_descriptor_64_e5_v8__0l;
      v15[4] = v11;
      v15[5] = v5;
      v15[6] = a2;
      v15[7] = v9;
      dispatch_async(v14, v15);
      playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v9);
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else if (v9)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_assetPropertyFailedToLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t block, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25, __int128 a26, int a27, __int16 a28, __int16 a29, uint64_t a30, __int128 a31, __int128 a32, const void *a33, __int128 a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  OUTLINED_FUNCTION_173_2();
  a65 = v67;
  a66 = v68;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  a53 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_71_4(DerivedStorage);
  FigReadWriteLockLockForRead();
  if (*(v66 + 72))
  {
    goto LABEL_33;
  }

  v78 = FigCFWeakReferenceHolderCopyReferencedObject();
  v79 = CMBaseObjectGetDerivedStorage();
  if (v79)
  {
    if (v70)
    {
      v80 = v79;
      if (!*v79)
      {
        LODWORD(a37) = 0;
        if (FigCFDictionaryGetInt32IfPresent())
        {
          v81 = a37;
        }

        else
        {
          v81 = 0;
        }

        if (dword_1EAF172E8)
        {
          v102 = v74;
          a25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v83 = type;
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
          OUTLINED_FUNCTION_28();
          if (v72)
          {
            if (v78)
            {
              v84 = (CMBaseObjectGetDerivedStorage() + 459);
            }

            else
            {
              v84 = "";
            }

            if (v76)
            {
              v85 = (CMBaseObjectGetDerivedStorage() + 820);
            }

            else
            {
              v85 = "";
            }

            LODWORD(a26) = 136317186;
            *(&a26 + 4) = "itemairplay_assetPropertyFailedToLoad";
            WORD6(a26) = 2048;
            *(&a26 + 14) = v78;
            a29 = 2048;
            a30 = v76;
            LOWORD(a31) = 2082;
            *(&a31 + 2) = v84;
            WORD5(a31) = 2082;
            *(&a31 + 12) = v85;
            WORD2(a32) = 2114;
            *(&a32 + 6) = v102;
            HIWORD(a32) = 2048;
            a33 = v76;
            LOWORD(a34) = 2048;
            *(&a34 + 2) = v72;
            WORD5(a34) = 2114;
            *(&a34 + 12) = v70;
            OUTLINED_FUNCTION_66();
            v86 = OUTLINED_FUNCTION_25();
            _os_log_send_and_compose_impl(v86, v87, v88, v89, v90, os_log_and_send_and_compose_flags_and_os_log_type, v83, v91);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v92, v93, v94, v95, v96);
        }

        CFDictionaryGetValue(v70, @"assetPayload_Property");
        if (FigCFEqual())
        {
          if (*(v66 + 704) == 1)
          {
            if (v81)
            {
              ErrorPayload = iapc_createErrorPayload(v81, 0);
              v97 = ErrorPayload;
              v98 = *(v66 + 680);
              *(v66 + 680) = ErrorPayload;
              if (ErrorPayload)
              {
                CFRetain(ErrorPayload);
                v100 = 0;
                if (!v98)
                {
LABEL_26:
                  if (v100)
                  {
                    if (!v78)
                    {
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    CFRelease(v97);
                    if (!v78)
                    {
LABEL_28:
                      if (!v76)
                      {
LABEL_30:
                        v101 = *(v80 + 112);
                        block = MEMORY[0x1E69E9820];
                        a15 = 3221225472;
                        a16 = &__itemairplay_assetPropertyFailedToLoad_block_invoke;
                        a17 = &__block_descriptor_64_e5_v8__0l;
                        a18 = v80;
                        a19 = v66;
                        a20 = v78;
                        a21 = v76;
                        dispatch_async(v101, &block);
                        playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v78);
                        goto LABEL_31;
                      }

LABEL_29:
                      CFRetain(v76);
                      goto LABEL_30;
                    }
                  }

                  CFRetain(v78);
                  if (!v76)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }

LABEL_25:
                CFRelease(v98);
                goto LABEL_26;
              }
            }

            else
            {
              v97 = 0;
              v98 = *(v66 + 680);
              *(v66 + 680) = 0;
            }

            v100 = 1;
            if (!v98)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }
        }
      }
    }
  }

LABEL_31:
  if (v78)
  {
    CFRelease(v78);
  }

LABEL_33:
  FigReadWriteLockUnlockForRead();
  OUTLINED_FUNCTION_172_1();
}

uint64_t itemairplay_assetPropertyBatchLoaded(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_135_2(a1, a2);
  valuePtr = 0;
  FigReadWriteLockLockForRead();
  if (!*(v3 + 72))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      if (v2)
      {
        if (!*DerivedStorage)
        {
          Value = CFDictionaryGetValue(v2, @"assetPayload_BatchID");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
            if (valuePtr)
            {
              if (valuePtr != *(v3 + 672) || *(v3 + 728))
              {
                if (valuePtr != *(v3 + 664) || *(v3 + 709))
                {
                  if (valuePtr == *(v3 + 668) && *(v3 + 710))
                  {
                    *(v3 + 710) = 1;
                  }
                }

                else
                {
                  *(v3 + 709) = 1;
                }
              }

              else
              {
                OUTLINED_FUNCTION_152_2();
                itemairplay_postItemNotification();
                *(v3 + 728) = 1;
              }
            }

            playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v4);
          }
        }
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return FigReadWriteLockUnlockForRead();
}

void itemairplay_reflectSubItemNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 72))
  {
    v9 = DerivedStorage;
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    v11 = CMBaseObjectGetDerivedStorage();
    if (!v11 || (v12 = v11, *v11))
    {
LABEL_26:
      if (v10)
      {
        CFRelease(v10);
      }

      return;
    }

    if (CFEqual(a3, @"ItemWasRemovedFromPlayQueue"))
    {
      if (!a5 || (v13 = *MEMORY[0x1E695E4D0], v13 != CFDictionaryGetValue(a5, @"AsRequested")))
      {
        v14 = 1;
        playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*(v12 + 5), a2, 1, 0);
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (CFEqual(a3, @"ReadyForInspection"))
    {
      itemairplay_updateDateTimePivot(v9);
LABEL_10:
      v14 = 1;
      goto LABEL_11;
    }

    if (CFEqual(a3, @"ReadyForPlayback"))
    {
      v14 = 1;
      *(v9 + 705) = 1;
    }

    else
    {
      if (CFEqual(a3, @"HasMultipleEnabledAudioTracks"))
      {
        FigBytePumpGetFigBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v17, 0x1F0B34DF8, *MEMORY[0x1E695E4D0]);
        }

        OUTLINED_FUNCTION_25_1();
        v21 = 3221225472;
        v22 = __itemairplay_reflectSubItemNotification_block_invoke;
        v23 = &__block_descriptor_64_e5_v8__0l;
        v24 = v10;
        v25 = a2;
        v26 = v9;
        v27 = v12;
        dispatch_sync(v19, block);
        goto LABEL_10;
      }

      if (CFEqual(a3, @"HasEnabledAudioChanged"))
      {
        if (FigCFDictionaryGetBooleanIfPresent())
        {
          *(v9 + 830) = 0;
        }

        playerairplay_updateRoutingRegistry(v10);
        goto LABEL_10;
      }

      if (CFEqual(a3, @"ItemBecameCurrent"))
      {
        if (*(v9 + 830))
        {
          playerairplay_setBAOConnectionActiveIfNeeded(v10);
        }

        goto LABEL_10;
      }

      if (CFEqual(a3, @"SeekDidComplete") || CFEqual(a3, @"SeekWasCanceled"))
      {
        if (!FigCFDictionaryGetInt32IfPresent())
        {
          goto LABEL_10;
        }

        v14 = 1;
      }

      else
      {
        if (!CFEqual(a3, @"TimebaseChanged"))
        {
          goto LABEL_10;
        }

        v14 = *(v9 + 152) == 0;
      }
    }

LABEL_11:
    if ((!v12[50] && ((v15 = *(CMBaseObjectGetDerivedStorage() + 216)) == 0 || v15 == 10) || !CFEqual(a3, @"ItemWasRemovedFromPlayQueue") && !CFEqual(a3, @"ItemStoppedBeingCurrent") && !CFEqual(a3, @"FailedToPlayToEnd") && !CFEqual(a3, @"FailedToBecomeReadyForPlayback") && !CFEqual(a3, @"TracksChanged") && !CFEqual(a3, @"ReachedTimeToPauseBuffering") && !CFEqual(a3, @"ReachedTimeToPausePlayback") && !CFEqual(a3, @"SnappedTimeToPausePlayback") && !CFEqual(a3, @"AlmostReachedTimeToPausePlayback")) && v14)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    goto LABEL_26;
  }
}

uint64_t playerairplay_copyPredictedFormatDescriptionForBAO(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  mach_absolute_time();
  if (*(DerivedStorage + 296))
  {
    playerairplay_copyPlayQueueAirPlayItemFromSubPlayer();
  }

  return 0;
}

void __itemairplay_handleSetProperty_block_invoke()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  OUTLINED_FUNCTION_121_1();
  if (!v2 && !**(v0 + 40))
  {
    v3 = *(v1 + 352);
    if (v3)
    {
      FigAirPlayMediaSelectionSetProperty(v3, @"ClientSelectedMediaArray", *(v0 + 48));
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_44_13();
      v5 = v5 || v4 == 10;
      if (!v5)
      {
        playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 56));
      }
    }
  }

  OUTLINED_FUNCTION_137_1();
  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

void __itemairplay_handleSetProperty_block_invoke_2()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  if (!**(v0 + 40))
  {
    OUTLINED_FUNCTION_121_1();
    if (!v2)
    {
      v3 = *(v1 + 352);
      if (v3)
      {
        FigAirPlayMediaSelectionSetProperty(v3, @"MediaPresentationLanguages", *(v0 + 48));
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_44_13();
        v5 = v5 || v4 == 10;
        if (!v5)
        {
          playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 56));
        }
      }
    }
  }

  OUTLINED_FUNCTION_137_1();
  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

void __itemairplay_handleSetProperty_block_invoke_3()
{
  OUTLINED_FUNCTION_70_6();
  FigReadWriteLockLockForRead();
  if (!**(v0 + 40))
  {
    OUTLINED_FUNCTION_121_1();
    if (!v2)
    {
      v3 = *(v1 + 352);
      if (v3)
      {
        FigAirPlayMediaSelectionSetProperty(v3, @"MediaPresentationCharacteristics", *(v0 + 48));
        CMBaseObjectGetDerivedStorage();
        OUTLINED_FUNCTION_44_13();
        v5 = v5 || v4 == 10;
        if (!v5)
        {
          playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(*(v0 + 56));
        }
      }
    }
  }

  OUTLINED_FUNCTION_137_1();
  v6 = *(v0 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(v0 + 48);
  if (v8)
  {

    CFRelease(v8);
  }
}

void __itemairplay_handleSetProperty_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v4 = v3;
  if (v3)
  {
    FigReadWriteLockLockForRead();
    if (!**(a1 + 48))
    {
      v5 = *(a1 + 40);
      if (!*(v5 + 72))
      {
        v6 = *(v5 + 352);
        if (v6)
        {
          FigAirPlayMediaSelectionSetProperty(v6, @"mediaCharacteristicsForCustomMediaSelectionSchemes", v4);
          v7 = *(CMBaseObjectGetDerivedStorage() + 216);
          if (v7)
          {
            if (v7 != 10)
            {
              FigSimpleMutexLock();
              CFDictionarySetValue(*(*(a1 + 40) + 336), *MEMORY[0x1E6961EA0], v4);
              FigSimpleMutexUnlock();
              playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(*(a1 + 56));
            }
          }
        }
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  v8 = *(a1 + 56);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t itemairplay_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  cf = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 72))
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      v19 = 0;
      v7 = 0;
      goto LABEL_11;
    }

    v6 = DerivedStorage;
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    v8 = CMBaseObjectGetDerivedStorage();
    if (!v8 || *v8)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
      v19 = 0;
      goto LABEL_11;
    }

    v9 = OUTLINED_FUNCTION_23_15();
    v14 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v9, a2, 0, v10, v11, v12, v13);
    if (v14)
    {
LABEL_12:
      v18 = v14;
      goto LABEL_14;
    }

    v15 = *(v6 + 8);
    if (!v15)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
LABEL_9:
      v18 = v17;
      if (v17)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v16 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (v16)
    {
      v17 = v16(v15, cf, &v22);
      goto LABEL_9;
    }

    v18 = 4294954514;
  }

  else
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, v24);
    v18 = v21;
    v7 = 0;
    if (!v21)
    {
LABEL_10:
      v19 = v22;
LABEL_11:
      v14 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v23, v19, a3);
      goto LABEL_12;
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v18;
}

uint64_t playerairplay_SetProperties()
{
  OUTLINED_FUNCTION_471();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  if (!v1)
  {
    goto LABEL_13;
  }

  v3 = DerivedStorage;
  v4 = OUTLINED_FUNCTION_23_15();
  v9 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v4, v1, 0, v5, v6, v7, v8);
  if (v9)
  {
LABEL_8:
    v13 = v9;
    goto LABEL_10;
  }

  if (!*(v3 + 8))
  {
LABEL_13:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_6;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 112))
  {
    v10 = OUTLINED_FUNCTION_266();
    v12 = v11(v10);
LABEL_6:
    v13 = v12;
    if (v12)
    {
      goto LABEL_10;
    }

    v9 = FPSupport_CopyCombinedSetPropertiesErrDictionary(0, v15, v0);
    goto LABEL_8;
  }

  v13 = 4294954514;
LABEL_10:
  if (v15)
  {
    CFRelease(v15);
  }

  return v13;
}

void __playerairplay_removeItemFromLocalPlayQueue_block_invoke_3(uint64_t a1)
{
  cf = 0;
  if (!**(a1 + 32))
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_44_13();
    v3 = v3 || v2 == 10;
    if (!v3)
    {
      playqueue_copyCurrentClientPlayQueueItemAndCurrentMediaControlPlayListItem(*(*(a1 + 32) + 40), &cf, 0);
      playerairplay_inferPlaybackStateFromAirPlayPlayer(*(a1 + 40), cf != 0);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }
}

void playerairplay_deferredAutoMediaSelectionCriteriaChanged(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_645(a1, a2);
  if (v2)
  {
    if (!*v3)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_44_13();
      v5 = v5 || v4 == 10;
      if (!v5)
      {
        playerairplay_updateAndApplySelectedMediaArrayOnMediaControl(v2);
      }
    }

    CFRelease(v2);
  }
}

void itemairplay_airplaySetCurrentTime_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_42_11(a1);
  CFDictionarySetValue(*(v3 + 336), @"SetPosition", v2);
  FigSimpleMutexUnlock();
  playerairplay_triggerAsyncCheckAndUpdatePlayQueueItems(v1);
  CFRelease(v2);
}

uint64_t __playerairplay_performQueuedItemVodkaExchange_block_invoke_cold_1(uint64_t a1)
{
  if (!pap_isLocalFileURL(*(a1 + 88), 0))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_198();
  CPEProtectorIfAvailable = itemairplay_createCPEProtectorIfAvailable(v3, v4, v5);
  if (CPEProtectorIfAvailable)
  {
    v7 = CPEProtectorIfAvailable;
    v8 = OUTLINED_FUNCTION_177();
    playerairplay_performQueuedItemVodkaExchange(v8, v9, v7, 0);
    CFRelease(v7);
  }

  else
  {
    *(a1 + 703) = 1;
  }

  return 0;
}

void itemairplay_setUpPlayParamDictionary_cold_5(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

_BYTE *itemairplay_playMediaCompletionHandler_cold_1()
{
  OUTLINED_FUNCTION_369();
  pap_invalidateEndpointPlaybackSession(v2);
  result = playerairplay_resetAirPlayVideoState(v0);
  if (*(v1 + 703) != 4)
  {
    OUTLINED_FUNCTION_270();
    playerairplay_postPlayerNotification();

    return playerairplay_updateAirPlayVideoIsActiveProperty(v0);
  }

  return result;
}

void itemairplay_playMediaCompletionHandler_cold_2()
{
  OUTLINED_FUNCTION_471();
  playerairplay_postPlayerRateDidChangeNotification(*(v0 + 56), v2, *v1);
  v3 = OUTLINED_FUNCTION_198();
  playerairplay_setRateAirPlay(v3, v4, v5, v5, v6);
}

void playerairplay_setActionAtEndOnAirPlayController_cold_1()
{
  OUTLINED_FUNCTION_369();
  if (!playerairplay_deferMediaControlPlaylistForInterstitials(v1))
  {
    if (FigCFEqual())
    {
      valuePtr = 0;
    }

    else
    {
      if (FigCFEqual())
      {
        v2 = 1;
      }

      else if (FigCFEqual())
      {
        if (*(v0 + 244) == 1)
        {
          v2 = 3;
        }

        else
        {
          v2 = 0;
        }
      }

      else
      {
        v2 = 2;
      }

      valuePtr = v2;
    }

    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v4 = OUTLINED_FUNCTION_236();
    pap_playbackSessionSetProxiedProperty(v4, v5, v6, 0);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

uint64_t playerairplay_mediaControlHandleTypeCurrentItemChanged_cold_2()
{
  OUTLINED_FUNCTION_471();
  *(v2 + 707) = 2;
  itemairplay_doCleanupAtEndOfPlayback(v3);
  itemairplay_cleanupItemForAirPlay(v1, 1);
  OUTLINED_FUNCTION_340_1();
  itemairplay_postItemNotification();
  OUTLINED_FUNCTION_340_1();
  itemairplay_postItemNotification();
  return playqueue_removeItemFromClientQueueAndFromMediaControlPlaylist(*v0, v1, 1, 1);
}

void playerairplay_postIsBufferedAirPlayActiveDidChangeNotification_cold_1()
{
  OUTLINED_FUNCTION_471();
  v1 = MEMORY[0x1E695E4D0];
  if (!*(v2 + 296))
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v0, @"CurrentIsBufferedAirPlayActive", *v1);
  OUTLINED_FUNCTION_236();
  playerairplay_postPlayerNotification();

  CFRelease(v0);
}