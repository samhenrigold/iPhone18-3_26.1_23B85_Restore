void MoviePSSHData_GetPlayReadyProtectionSystemData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MoviePSSHData_GetPlayReadyProtectionSystemData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t playercentral_SetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v2 = OUTLINED_FUNCTION_14_18();
  v10 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v2, v3, v4, v5, v6, v7, v8, v9);
  if (v10)
  {
    goto LABEL_5;
  }

  if (!*(DerivedStorage + 16))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, 0);
    goto LABEL_5;
  }

  FigPlayerGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v10 = v13(v12, 0, 0);
LABEL_5:
    v14 = v10;
    goto LABEL_7;
  }

  v14 = 4294954514;
LABEL_7:
  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

void playercentral_handleSetProperty(OpaqueFigPlayer *a1, void *a2, const __CFString *a3, CFMutableArrayRef a4, unsigned __int8 *a5, const __CFString **a6, const void **a7)
{
  v101 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
LABEL_2:
    OUTLINED_FUNCTION_39_4();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return;
  }

  v14 = DerivedStorage;
  if (CFEqual(a3, @"FigAudioSession"))
  {
    v15 = *(v14 + 24);
    if (!v15)
    {
      goto LABEL_30;
    }

    if (*(v14 + 113))
    {
      if (!dword_1EAF16FC0 || (v99 = 0, type = OS_LOG_TYPE_DEFAULT, os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(), os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT), OUTLINED_FUNCTION_7(), fig_log_call_emit_and_clean_up_after_send_and_compose(), (v15 = *(v14 + 24)) != 0))
      {
        v19 = *(CMBaseObjectGetVTable() + 16);
        if (v19)
        {
          v20 = *(v19 + 56);
          if (v20)
          {
            v20(v15, *MEMORY[0x1E69B0148], *MEMORY[0x1E695E4C0]);
          }
        }
      }

      *(v14 + 113) = 0;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_9_23();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_10_22();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_11_21();
    FigNotificationCenterRemoveWeakListener();
    if (*(v14 + 97))
    {
      playercentral_updateAndSetAudioSessionPlayingState(a1, 0);
    }

    v21 = *(v14 + 24);
    if (v21)
    {
      v22 = *(CMBaseObjectGetVTable() + 16);
      if (v22)
      {
        v23 = *(v22 + 56);
        if (v23)
        {
          v23(v21, *MEMORY[0x1E69B0130], *MEMORY[0x1E69AFA40]);
        }
      }

      v24 = *(v14 + 24);
    }

    else
    {
LABEL_30:
      v24 = 0;
    }

    *(v14 + 24) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (*(v14 + 24))
    {
      if (*(v14 + 16))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_9_23();
        CMNotificationCenterAddListener();
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_10_22();
        CMNotificationCenterAddListener();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_21();
      FigNotificationCenterAddWeakListener();
      playercentral_updateSessionMutePriority(a1);
      playercentral_establishIfPlayerIsSilentAndTellMXSession(a1, 0);
      if (FigCFEqual())
      {
        v41 = *(v14 + 24);
        if (v41)
        {
          v42 = *(CMBaseObjectGetVTable() + 16);
          if (v42)
          {
            v43 = *(v42 + 56);
            if (v43)
            {
              v43(v41, *MEMORY[0x1E69AFF98], *MEMORY[0x1E695E4D0]);
            }
          }
        }
      }

      playercentral_updateAndSetAudioSessionPlayingState(a1, *(v14 + 97));
      if (a1)
      {
        CFRetain(a1);
      }

      v44 = *(v14 + 104);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(v44, block);
    }

    goto LABEL_36;
  }

  if (CFEqual(a3, @"Vibrator"))
  {
    if (dword_1EAF16FC0)
    {
      v99 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v29 = *(v14 + 24);
    if (v29)
    {
      v30 = *(CMBaseObjectGetVTable() + 16);
      if (v30)
      {
        v31 = *(v30 + 56);
        if (v31)
        {
          v31(v29, *MEMORY[0x1E69B04A0], a4);
        }
      }

      v32 = *(v14 + 24);
      v33 = *MEMORY[0x1E69B04A8];
      if (a4)
      {
        if (v32)
        {
          v34 = *(CMBaseObjectGetVTable() + 16);
          if (v34)
          {
            v35 = *(v34 + 56);
            if (v35)
            {
              v35(v32, v33, *MEMORY[0x1E695E4D0]);
            }
          }
        }

        *(v14 + 72) = 1;
      }

      else
      {
        if (v32)
        {
          v36 = *(CMBaseObjectGetVTable() + 16);
          if (v36)
          {
            v37 = *(v36 + 56);
            if (v37)
            {
              v37(v32, v33, *MEMORY[0x1E695E4C0]);
            }
          }
        }

        *(v14 + 72) = 0;
      }
    }

    goto LABEL_102;
  }

  if (CFEqual(a3, @"ClientName"))
  {
    v18 = *(v14 + 48);
    if (v18)
    {
      CFRelease(v18);
      *(v14 + 48) = 0;
    }

    if (a4)
    {
      *(v14 + 48) = CFRetain(a4);
    }

    goto LABEL_102;
  }

  if (CFEqual(a3, @"AllowsNeroPlayback"))
  {
    if (!a4)
    {
      goto LABEL_102;
    }

    CFBooleanGetTypeID();
    if (&unk_1EAF16000 != OUTLINED_FUNCTION_30_9())
    {
      goto LABEL_102;
    }

    Value = CFBooleanGetValue(a4);
    if (qword_1ED4CA878 != -1)
    {
      dispatch_once(&qword_1ED4CA878, &__block_literal_global_25);
    }

    if (_MergedGlobals_42)
    {
      Value = 0;
    }

    if (Value == *(v14 + 98))
    {
      goto LABEL_102;
    }

    v39 = *(v14 + 104);
    if (!v39)
    {
      goto LABEL_102;
    }

    if (a1)
    {
      CFRetain(a1);
      v39 = *(v14 + 104);
    }

    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_22;
    v95[3] = &__block_descriptor_49_e5_v8__0l;
    v96 = Value;
    v95[4] = v14;
    v95[5] = a1;
    v40 = v95;
LABEL_101:
    dispatch_async(v39, v40);
    goto LABEL_102;
  }

  if (CFEqual(a3, @"UsesNeroWhileNeroPlayIsActive"))
  {
    if (a4)
    {
      CFBooleanGetTypeID();
      if (&unk_1EAF16000 == OUTLINED_FUNCTION_30_9())
      {
        v45 = CFBooleanGetValue(a4);
        if (v45 == *(v14 + 99))
        {
          goto LABEL_102;
        }

        v46 = v45;
        v39 = *(v14 + 104);
        if (!v39)
        {
          goto LABEL_102;
        }

        if (a1)
        {
          CFRetain(a1);
          v39 = *(v14 + 104);
        }

        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_2;
        v93[3] = &__block_descriptor_49_e5_v8__0l;
        v94 = v46;
        v93[4] = v14;
        v93[5] = a1;
        v40 = v93;
        goto LABEL_101;
      }
    }

    goto LABEL_104;
  }

  if (CFEqual(a3, @"IsPrioritizedForNeroPlayback"))
  {
    if (a4)
    {
      CFBooleanGetTypeID();
      if (&unk_1EAF16000 == OUTLINED_FUNCTION_30_9())
      {
        v47 = CFBooleanGetValue(a4);
        if (v47 == *(v14 + 100))
        {
          goto LABEL_102;
        }

        v48 = v47;
        v39 = *(v14 + 104);
        if (!v39)
        {
          goto LABEL_102;
        }

        if (a1)
        {
          CFRetain(a1);
          v39 = *(v14 + 104);
        }

        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_3;
        v91[3] = &__block_descriptor_49_e5_v8__0l;
        v92 = v48;
        v91[4] = v14;
        v91[5] = a1;
        v40 = v91;
        goto LABEL_101;
      }
    }

LABEL_104:
    OUTLINED_FUNCTION_39_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_102;
  }

  if (CFEqual(a3, @"ClientInBackground"))
  {
    if (a4)
    {
      CFBooleanGetTypeID();
      if (&unk_1EAF16000 == OUTLINED_FUNCTION_30_9())
      {
        *(v14 + 56) = CFBooleanGetValue(a4);
        if (*(v14 + 24))
        {
          if (playercentral_isNeroPlaybackAutoswitchAllowed(a1) && *(v14 + 104))
          {
            if (a1)
            {
              CFRetain(a1);
            }

            if (*(v14 + 56))
            {
              v49 = 750000000;
            }

            else
            {
              v49 = 0;
            }

            v50 = dispatch_time(0, v49);
            v51 = *(v14 + 104);
            v90[0] = MEMORY[0x1E69E9820];
            v90[1] = 3221225472;
            v90[2] = ___ZL31playercentral_handleSetPropertyP15OpaqueFigPlayerPvPK10__CFStringPKvPhPS4_PS6__block_invoke_4;
            v90[3] = &__block_descriptor_40_e5_v8__0l;
            v90[4] = a1;
            dispatch_after(v50, v51, v90);
          }
        }
      }
    }

    goto LABEL_36;
  }

  if (CFEqual(a3, @"PlayerRole"))
  {
    if (a4)
    {
      v52 = CFGetTypeID(a4);
      if (v52 != CFStringGetTypeID())
      {
        OUTLINED_FUNCTION_39_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, v86);
        if (v63)
        {
          return;
        }

        goto LABEL_36;
      }
    }

    v53 = FigCFEqual();
    v54 = FigCFEqual();
    v55 = a4;
    v56 = *(v14 + 160);
    *(v14 + 160) = v55;
    v57 = v55;
    if (v55)
    {
      CFRetain(v55);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (v53 == v54)
    {
      goto LABEL_211;
    }

    v58 = *(v14 + 24);
    if (!v58)
    {
      goto LABEL_211;
    }

    v59 = MEMORY[0x1E695E4D0];
    if (!v53)
    {
      v59 = MEMORY[0x1E695E4C0];
    }

    if (!FigAudioSessionSetMXSessionProperty(v58, *MEMORY[0x1E69AFF98], *v59))
    {
LABEL_211:
      playercentral_updateSessionMutePriority(a1);
      if (!v60)
      {
        a4 = v57;
LABEL_36:
        v25 = 0;
        goto LABEL_37;
      }
    }

    return;
  }

  if (!CFEqual(a3, @"PIPMutingPolicy"))
  {
    v64 = a4;
    v89 = a5;
    if (CFEqual(a3, @"DefaultMutingPolicy"))
    {
      if (!a4 || (v65 = CFGetTypeID(a4), v65 != CFNumberGetTypeID()))
      {
LABEL_146:
        OUTLINED_FUNCTION_39_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_147;
      }

      v71 = (v14 + 172);
LABEL_166:
      CFNumberGetValue(a4, kCFNumberSInt32Type, v71);
      playercentral_updateSessionMutePriority(a1);
LABEL_147:
      if (v67)
      {
        return;
      }

LABEL_102:
      *a5 = 1;
      return;
    }

    if (CFEqual(a3, @"NonMixableMutingPolicy"))
    {
      if (!a4)
      {
        goto LABEL_146;
      }

      v66 = CFGetTypeID(a4);
      if (v66 != CFNumberGetTypeID())
      {
        goto LABEL_146;
      }

      v71 = (v14 + 176);
      goto LABEL_166;
    }

    if (CFEqual(a3, @"PlayerVolume"))
    {
      if (!a4)
      {
        goto LABEL_157;
      }

      v68 = CFGetTypeID(a4);
      if (v68 != CFNumberGetTypeID())
      {
        goto LABEL_157;
      }

      valuePtr[0] = 0.0;
      v79 = CFNumberGetValue(a4, kCFNumberFloat32Type, valuePtr);
      if (valuePtr[0] != 0.0 || v79 == 0)
      {
        v81 = 4;
      }

      else
      {
        v81 = 3;
      }
    }

    else
    {
      if (!CFEqual(a3, @"PlayerMuted"))
      {
        if (CFEqual(a3, @"PreventAutomaticBackgroundingDuringVideoPlayback"))
        {
          if (a4)
          {
            v72 = CFGetTypeID(a4);
            if (v72 == CFBooleanGetTypeID())
            {
              v73 = CFBooleanGetValue(a4);
              if (*(v14 + 136) != v73)
              {
                *(v14 + 136) = v73;
                playercentral_updateVideoPlaybackAssertion(a1);
              }

              goto LABEL_102;
            }
          }

          goto LABEL_146;
        }

        if (!CFEqual(a3, @"ItemsToPrebuffer"))
        {
          if (CFEqual(a3, @"PlayingInterstitials"))
          {
            if (a4)
            {
              v82 = CFGetTypeID(a4);
              if (v82 == CFBooleanGetTypeID())
              {
                *(v14 + 208) = CFBooleanGetValue(a4);
                playercentral_updateCMSessionIsPlayingState(a1);
              }
            }

            goto LABEL_102;
          }

          goto LABEL_158;
        }

        if (a4)
        {
          v74 = CFGetTypeID(a4);
          if (v74 != CFArrayGetTypeID())
          {
            goto LABEL_2;
          }

          capacity = CFArrayGetCount(a4);
          if (capacity >= 1)
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
            if (!Mutable)
            {
              goto LABEL_2;
            }

            v75 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v64, v75);
              if (!ValueAtIndex || (v77 = CFGetTypeID(ValueAtIndex), v77 != FigPlaybackItemGetTypeID()) || CMBaseObjectGetVTable() != &kFigPlaybackItemCentralVTable)
              {
                OUTLINED_FUNCTION_39_4();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                v28 = 0;
                goto LABEL_206;
              }

              CMBaseObjectGetDerivedStorage();
              v28 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v28 != a1)
              {
                break;
              }

              FigCFArrayAppendValue();
              if (a1)
              {
                CFRelease(v28);
              }

              if (capacity == ++v75)
              {
                v78 = Mutable;
                goto LABEL_199;
              }
            }

            OUTLINED_FUNCTION_39_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, v86);
LABEL_206:
            v25 = Mutable;
            goto LABEL_44;
          }

          v78 = 0;
          Mutable = a4;
LABEL_199:
          v83 = *(v14 + 200);
          *(v14 + 200) = v64;
          CFRetain(v64);
          a4 = Mutable;
        }

        else
        {
          a4 = 0;
          v78 = 0;
          v83 = *(v14 + 200);
          *(v14 + 200) = 0;
        }

        if (v83)
        {
          CFRelease(v83);
        }

        v25 = v78;
LABEL_203:
        a5 = v89;
LABEL_37:
        *a5 = 0;
        if (a3)
        {
          v26 = CFRetain(a3);
        }

        else
        {
          v26 = 0;
        }

        *a6 = v26;
        if (a4)
        {
          v27 = CFRetain(a4);
        }

        else
        {
          v27 = 0;
        }

        v28 = 0;
        *a7 = v27;
        if (!v25)
        {
LABEL_45:
          if (v28)
          {
            CFRelease(v28);
          }

          return;
        }

LABEL_44:
        CFRelease(v25);
        goto LABEL_45;
      }

      if (!a4 || (v69 = CFGetTypeID(a4), v69 != CFBooleanGetTypeID()))
      {
LABEL_157:
        OUTLINED_FUNCTION_39_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        if (v70)
        {
          return;
        }

LABEL_158:
        v25 = 0;
        goto LABEL_37;
      }

      if (*MEMORY[0x1E695E4D0] == a4)
      {
        v81 = 1;
      }

      else
      {
        v81 = 2;
      }
    }

    playercentral_establishIfPlayerIsSilentAndTellMXSession(a1, v81);
    v25 = 0;
    goto LABEL_203;
  }

  if (a4 && (v61 = CFGetTypeID(a4), v61 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, (v14 + 168));
    playercentral_updateSessionMutePriority(a1);
  }

  else
  {
    OUTLINED_FUNCTION_39_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v84, v85, v86);
  }

  if (!v62)
  {
    goto LABEL_102;
  }
}

void playercentral_updateSessionMutePriority(OpaqueFigPlayer *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 24))
  {
    return;
  }

  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 172);
  if (FigCFEqual())
  {
    v4 = 168;
LABEL_8:
    v3 = *(v2 + v4);
    goto LABEL_9;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  if ((*(v5 + 114) || *(v5 + 115)) && *(CMBaseObjectGetDerivedStorage() + 176) == 3)
  {
    v4 = 176;
    goto LABEL_8;
  }

LABEL_9:
  switch(v3)
  {
    case 0:
      v6 = MEMORY[0x1E69AFA40];
      goto LABEL_14;
    case 1:
      v6 = MEMORY[0x1E69AFA38];
      goto LABEL_14;
    case 2:
      v6 = MEMORY[0x1E69AFA30];
      goto LABEL_14;
    case 3:
      v6 = MEMORY[0x1E69AFA28];
LABEL_14:
      v7 = *v6;
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
      if (v12)
      {
        return;
      }

      v7 = 0;
LABEL_15:
      v8 = *(v2 + 24);
      if (v8)
      {
        v9 = *(CMBaseObjectGetVTable() + 16);
        if (v9)
        {
          v10 = *(v9 + 56);
          if (v10)
          {
            v11 = *MEMORY[0x1E69B0130];

            v10(v8, v11, v7);
          }
        }
      }

      break;
  }
}

void playercentral_establishIfPlayerIsSilentAndTellMXSession(uint64_t a1, unsigned int a2)
{
  v159 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[3])
  {
    return;
  }

  v13 = 0;
  v14 = &unk_1EAF16000;
  if (a2 > 6)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    if (((1 << a2) & 0x4A) != 0)
    {
      if (dword_1EAF16FC0)
      {
        v16 = OUTLINED_FUNCTION_13_14(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, type[0], v149, number);
        os_log_type_enabled(v16, type[0]);
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          v17 = CMBaseObjectGetDerivedStorage();
          v18 = (v17 + 116);
          v151 = 136315906;
          if (!v17)
          {
            v18 = "";
          }

          v152 = "playercentral_establishIfPlayerIsSilentAndTellMXSession";
          v153 = 2048;
          v154 = a1;
          v155 = 2082;
          v156 = v18;
          v157 = 1024;
          v158 = a2;
          LODWORD(v146) = 38;
          v145 = &v151;
          v19 = OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456(v19, v20, v21, v22, v23, v24, v25, v26);
        }

        v27 = OUTLINED_FUNCTION_1_64();
        OUTLINED_FUNCTION_61(v27, v28, v29, v30, v31);
        v14 = &unk_1EAF16000;
      }

      v13 = (a2 & 0xFFFFFFFD) == 1;
      v15 = 1;
    }
  }

  v32 = MEMORY[0x1E695E480];
  v33 = MEMORY[0x1E695E4D0];
  if (a2 > 6 || ((1 << a2) & 0x4E) == 0)
  {
    number = 0;
    FigPlayerGetFigBaseObject();
    v48 = v47;
    v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v49)
    {
      v49(v48, @"PlayerMuted", *v32, &number);
    }

    DerivedStorage = number;
    if (number == *v33)
    {
      if (dword_1EAF16FC0)
      {
        v50 = OUTLINED_FUNCTION_15_16(number, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, *type, *&type[4], v149, SBYTE4(v149));
        os_log_type_enabled(v50, BYTE4(v149));
        OUTLINED_FUNCTION_40();
        if (v2)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_0_66();
          v51 = OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_456(v51, v52, v53, v54, v55, v56, v57, v58);
        }

        v140 = OUTLINED_FUNCTION_1_64();
        v13 = 1;
        OUTLINED_FUNCTION_61(v140, v141, v142, v143, v144);
        DerivedStorage = number;
        v15 = 1;
        v14 = v33;
        v33 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v13 = 1;
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }

    if (DerivedStorage)
    {
      CFRelease(DerivedStorage);
    }
  }

  if (a2 != 4 && !v15)
  {
    number = 0;
    *type = 0;
    FigPlayerGetFigBaseObject();
    v35 = v34;
    v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v36)
    {
      v36(v35, @"PlayerVolume", *v32, &number);
    }

    DerivedStorage = number;
    if (number)
    {
      Value = CFNumberGetValue(number, kCFNumberFloat32Type, type);
      v15 = 0;
      if (Value && *type == 0.0)
      {
        if (*(v14 + 1008))
        {
          v38 = OUTLINED_FUNCTION_21_11(Value, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, *type, v149, SBYTE2(v149), SBYTE3(v149), SHIDWORD(v149));
          os_log_type_enabled(v38, BYTE3(v149));
          OUTLINED_FUNCTION_40();
          if (v2)
          {
            CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_6_37();
            OUTLINED_FUNCTION_0_66();
            v39 = OUTLINED_FUNCTION_31();
            OUTLINED_FUNCTION_456(v39, v40, v41, v42, v43, v44, v45, v46);
          }

          v59 = OUTLINED_FUNCTION_1_64();
          v13 = 1;
          OUTLINED_FUNCTION_61(v59, v60, v61, v62, v63);
          v15 = 1;
          v33 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v13 = 1;
          v15 = 1;
        }
      }

      DerivedStorage = number;
      if (number)
      {
        CFRelease(number);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  v64 = MEMORY[0x1E695E4C0];
  if (a2 == 5 || v15)
  {
    if (a2 == 5 && !v15)
    {
      if (*(v14 + 1008))
      {
        v70 = OUTLINED_FUNCTION_13_14(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, type[0], v149, number);
        v2 = number;
        v71 = type[0];
        if (os_log_type_enabled(v70, type[0]))
        {
          v72 = v2;
        }

        else
        {
          v72 = v2 & 0xFFFFFFFE;
        }

        if (v72)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v73, v74, v75, v76, v77, v70, v71, v78);
          v2 = number;
        }

        v96 = OUTLINED_FUNCTION_1_64();
        OUTLINED_FUNCTION_42_1(v96, v97, v98, v99, v100);
      }

      v15 = 0;
    }

    goto LABEL_73;
  }

  number = 0;
  v65 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v65)
  {
    v65(a1, 0, &number);
  }

  DerivedStorage = number;
  if (number)
  {
    *type = 0;
    FigPlaybackItemGetFigBaseObject();
    v67 = v66;
    v68 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v68)
    {
      v68(v67, @"HasEnabledAudio", *MEMORY[0x1E695E480], type);
    }

    v69 = *type;
    if (*type == *v64)
    {
      if (*(v14 + 1008))
      {
        v87 = OUTLINED_FUNCTION_21_11(*type, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, *type, v149, SBYTE2(v149), SBYTE3(v149), SHIDWORD(v149));
        v2 = HIDWORD(v149);
        v88 = BYTE3(v149);
        if (os_log_type_enabled(v87, BYTE3(v149)))
        {
          v89 = v2;
        }

        else
        {
          v89 = v2 & 0xFFFFFFFE;
        }

        if (v89)
        {
          CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_6_37();
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v90, v91, v92, v93, v94, v87, v88, v95);
          v2 = HIDWORD(v149);
        }

        v106 = OUTLINED_FUNCTION_1_64();
        v15 = 1;
        OUTLINED_FUNCTION_42_1(v106, v107, v108, v109, v110);
        v69 = *type;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }

    if (v69)
    {
      CFRelease(v69);
    }

LABEL_71:
    DerivedStorage = number;
    if (number)
    {
      CFRelease(number);
    }

    goto LABEL_73;
  }

  if (*(v14 + 1008))
  {
    v79 = OUTLINED_FUNCTION_15_16(0, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, *type, *&type[4], v149, SBYTE4(v149));
    v80 = BYTE4(v149);
    os_log_type_enabled(v79, BYTE4(v149));
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_0_66();
      v81 = OUTLINED_FUNCTION_31();
      _os_log_send_and_compose_impl(v81, v82, v83, v84, v85, v79, v80, v86);
    }

    v101 = OUTLINED_FUNCTION_1_64();
    v15 = 1;
    OUTLINED_FUNCTION_61(v101, v102, v103, v104, v105);
    v14 = v33;
    v64 = MEMORY[0x1E695E4C0];
    goto LABEL_71;
  }

  v15 = 1;
LABEL_73:
  if (!v15 && *(v14 + 1008))
  {
    v111 = OUTLINED_FUNCTION_13_14(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v145, v146, v147, type[0], v149, number);
    v112 = type[0];
    os_log_type_enabled(v111, type[0]);
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_6_37();
      OUTLINED_FUNCTION_0_66();
      v113 = OUTLINED_FUNCTION_31();
      _os_log_send_and_compose_impl(v113, v114, v115, v116, v117, v111, v112, v118);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v119, v120, v121, v122, v123);
  }

  v124 = CMBaseObjectGetDerivedStorage();
  v125 = *(v124 + 24);
  if (v125)
  {
    v126 = v124;
    v127 = *v33;
    v128 = *v64;
    v129 = v13 ? *v33 : *v64;
    v130 = *(CMBaseObjectGetVTable() + 16);
    if (v130)
    {
      v131 = *(v130 + 56);
      if (v131)
      {
        if (!v131(v125, *MEMORY[0x1E69B00B8], v129))
        {
          SInt8 = FigCFNumberCreateSInt8();
          v133 = *(v126 + 24);
          if (v133)
          {
            v134 = *(CMBaseObjectGetVTable() + 16);
            if (v134)
            {
              v135 = *(v134 + 56);
              if (v135)
              {
                if (!v135(v133, *MEMORY[0x1E69AFD10], SInt8))
                {
                  v136 = *(v126 + 24);
                  if (v15)
                  {
                    v137 = v127;
                  }

                  else
                  {
                    v137 = v128;
                  }

                  if (v136)
                  {
                    v138 = *(CMBaseObjectGetVTable() + 16);
                    if (v138)
                    {
                      v139 = *(v138 + 56);
                      if (v139)
                      {
                        v139(v136, *MEMORY[0x1E69AFF20], v137);
                      }
                    }
                  }
                }
              }
            }
          }

          if (SInt8)
          {
            CFRelease(SInt8);
          }
        }
      }
    }
  }
}

void playercentral_updateCMSessionIsPlayingState(OpaqueFigPlayer *a1)
{
  v92 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 212) == 0.0)
  {
    goto LABEL_9;
  }

  v5 = *(DerivedStorage + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6 || v6(v5, 0, &cf))
  {
    goto LABEL_23;
  }

  v7 = *(v4 + 212) == 0.0 || cf == 0;
  if (v7 || *(v4 + 208))
  {
LABEL_9:
    v8 = playercentral_updateAndSetAudioSessionPlayingState(a1, 0);
    if (!dword_1EAF16FC0)
    {
      goto LABEL_23;
    }

    v16 = OUTLINED_FUNCTION_17_11(v8, v9, v10, v11, v12, v13, v14, v15, v64, v67, v70, SBYTE2(v70), SBYTE3(v70), SHIDWORD(v70));
    OUTLINED_FUNCTION_434_1(v16, v17, v18, v19, v20, v21, v22, v23, v65, v68, v71, v73, v75, v77);
    OUTLINED_FUNCTION_40();
    if (!v1)
    {
      goto LABEL_22;
    }

    CMBaseObjectGetDerivedStorage();
    v80 = 136316162;
    v81 = "playercentral_updateCMSessionIsPlayingState";
    v82 = 2048;
    v83 = a1;
    OUTLINED_FUNCTION_19_14();
    v86 = v24;
    v87 = v25;
    v88 = v26;
    v89 = v27;
    OUTLINED_FUNCTION_39();
    goto LABEL_12;
  }

  v36 = playercentral_updateAndSetAudioSessionPlayingState(a1, 1);
  if (!dword_1EAF16FC0)
  {
    goto LABEL_23;
  }

  v44 = OUTLINED_FUNCTION_17_11(v36, v37, v38, v39, v40, v41, v42, v43, v64, v67, v70, SBYTE2(v70), SBYTE3(v70), SHIDWORD(v70));
  OUTLINED_FUNCTION_434_1(v44, v45, v46, v47, v48, v49, v50, v51, v66, v69, v72, v74, v76, v78);
  OUTLINED_FUNCTION_40();
  if (v1)
  {
    v52 = CMBaseObjectGetDerivedStorage();
    v53 = *(v4 + 97);
    v54 = (v52 + 116);
    v55 = *(v4 + 212);
    if (!v52)
    {
      v54 = "";
    }

    v56 = "playing";
    v80 = 136316418;
    v81 = "playercentral_updateCMSessionIsPlayingState";
    v82 = 2048;
    v83 = a1;
    if (!v53)
    {
      v56 = "stopped";
    }

    v57 = v55;
    v84 = 2082;
    v85 = v54;
    v58 = "NO";
    v86 = 2082;
    v87 = v56;
    if (cf)
    {
      v58 = "a";
    }

    v88 = 2048;
    v89 = v57;
    v90 = 2082;
    v91 = v58;
    OUTLINED_FUNCTION_39();
LABEL_12:
    v28 = OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_456(v28, v29, v30, v31, v32, v33, v34, v35);
  }

LABEL_22:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_414(v59, v60, v61, v62, v63);
LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZL42playercentral_updateVideoPlaybackAssertionP15OpaqueFigPlayer_block_invoke(uint64_t a1)
{
  v123[16] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E4D0];
  if (*(*(a1 + 32) + 8))
  {
    v5 = 1;
    v6 = 1;
  }

  else
  {
    v123[0] = 0;
    v7 = *(a1 + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8 && (v8(v7, 0, v123), v123[0]))
    {
      cf = 0;
      FigPlaybackItemGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, @"HasEnabledVideo", *v3, &cf);
      }

      v12 = cf;
      v13 = *v4;
      v14 = cf == *v4;
      if (!*(*(a1 + 32) + 136))
      {
        goto LABEL_41;
      }

      v116 = 0.0;
      v15 = *(a1 + 40);
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v16(v15, &v116);
      }

      v12 = cf;
      if (v123[0])
      {
        v6 = v116 == 0.0 || cf != v13;
      }

      else
      {
LABEL_41:
        v6 = 1;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v123[0])
      {
        CFRelease(v123[0]);
      }
    }

    else
    {
      v14 = 0;
      v6 = 1;
    }

    v5 = !v14;
  }

  v25 = *(CMBaseObjectGetDerivedStorage() + 24);
  if (v25)
  {
    if (v5)
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    v26 = *(CMBaseObjectGetVTable() + 16);
    if (v26)
    {
      v27 = *(v26 + 56);
      if (v27)
      {
        v27(v25, *MEMORY[0x1E69B00C8], *v4);
      }
    }
  }

  v28 = *(*(a1 + 32) + 144);
  if (v6)
  {
    if (v28)
    {
      if (!dword_1EAF16FC0)
      {
        goto LABEL_37;
      }

      v29 = OUTLINED_FUNCTION_18_11(v28, v18, v19, v20, v21, v22, v23, v24, v100, v103, v106, v109, SBYTE2(v109), SHIBYTE(v109), SLODWORD(v116));
      OUTLINED_FUNCTION_311(v29, v30, v31, v32, v33, v34, v35, v36, v101, v104, v107, v110, v112, type, SLODWORD(v116));
      OUTLINED_FUNCTION_40();
      if (v4)
      {
        v37 = *(a1 + 40);
        CMBaseObjectGetDerivedStorage();
        LODWORD(cf) = 136315906;
        OUTLINED_FUNCTION_114();
        v118 = v37;
        OUTLINED_FUNCTION_19_14();
        v121 = 2114;
        v122[0] = v38;
        OUTLINED_FUNCTION_39();
        v39 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456(v39, v40, v41, v42, v43, v44, v45, v46);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_414(v76, v77, v78, v79, v80);
      v28 = *(*(a1 + 32) + 144);
      if (v28)
      {
LABEL_37:
        CFRelease(v28);
        *(*(a1 + 32) + 144) = 0;
      }
    }
  }

  else if (!v28)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v48 = *(a1 + 32);
    if ((UpTimeNanoseconds - *(v48 + 152)) >= 0x3B9ACA01)
    {
      v49 = UpTimeNanoseconds;
      v50 = FigSFBSKeepForegroundAssertionCreate(*v3, *(v48 + 40), *(v48 + 32), (v48 + 144));
      if (*(*(a1 + 32) + 144))
      {
        if (dword_1EAF16FC0)
        {
          v58 = OUTLINED_FUNCTION_18_11(v50, v51, v52, v53, v54, v55, v56, v57, v100, v103, v106, v109, SBYTE2(v109), SHIBYTE(v109), SLODWORD(v116));
          OUTLINED_FUNCTION_311(v58, v59, v60, v61, v62, v63, v64, v65, v102, v105, v108, v111, v113, typea, SLODWORD(v116));
          OUTLINED_FUNCTION_40();
          if (v4)
          {
            v66 = *(a1 + 40);
            CMBaseObjectGetDerivedStorage();
            LODWORD(cf) = 136315906;
            OUTLINED_FUNCTION_114();
            v118 = v66;
            OUTLINED_FUNCTION_19_14();
            v121 = 2114;
            v122[0] = v67;
            OUTLINED_FUNCTION_39();
            v68 = OUTLINED_FUNCTION_31();
            OUTLINED_FUNCTION_456(v68, v69, v70, v71, v72, v73, v74, v75);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_414(v95, v96, v97, v98, v99);
        }
      }

      else
      {
        v82 = v50;
        v116 = 0.0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v84 = v116;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v85 = LODWORD(v84);
        }

        else
        {
          v85 = LODWORD(v84) & 0xFFFFFFFE;
        }

        if (v85)
        {
          v86 = *(a1 + 40);
          CMBaseObjectGetDerivedStorage();
          LODWORD(cf) = 136316162;
          OUTLINED_FUNCTION_114();
          v118 = v86;
          v119 = 2082;
          v120 = v87;
          v121 = 1024;
          LODWORD(v122[0]) = v82;
          WORD2(v122[0]) = 2114;
          *(v122 + 6) = v88;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v89, v90, v91, v92, v93, os_log_and_send_and_compose_flags_and_os_log_type, 0, v94);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(*(a1 + 32) + 152) = v49;
      }
    }
  }

  v81 = *(a1 + 40);
  if (v81)
  {
    CFRelease(v81);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t itemcentral_SetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    goto LABEL_10;
  }

  v3 = DerivedStorage;
  if (!itemcentral_isParentPlayerValid(a1))
  {
    goto LABEL_10;
  }

  v4 = OUTLINED_FUNCTION_14_18();
  v12 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    return v12;
  }

  if (!*(v3 + 8))
  {
LABEL_10:
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return v12;
  }

  FigPlaybackItemGetFigBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v15)
  {
    return 4294954514;
  }

  return v15(v14, 0, 0);
}

uint64_t itemcentral_isParentPlayerValid(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *(DerivedStorage + 16))
  {
    return 0;
  }

  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = CMBaseObjectGetDerivedStorage();
  if (!v3 || *(v3 + 8))
  {
    v4 = 0;
    if (!v2)
    {
      return v4;
    }

    goto LABEL_6;
  }

  v4 = 1;
  if (v2)
  {
LABEL_6:
    CFRelease(v2);
  }

  return v4;
}

uint64_t itemcentral_SetProperties(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  if (!a2)
  {
    goto LABEL_19;
  }

  v7 = DerivedStorage;
  if (*(DerivedStorage + 16) || !itemcentral_isParentPlayerValid(a1))
  {
    goto LABEL_19;
  }

  v8 = OUTLINED_FUNCTION_23_15();
  v13 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v8, a2, 0, v9, v10, v11, v12);
  if (v13)
  {
LABEL_10:
    v17 = v13;
    goto LABEL_12;
  }

  v14 = *(v7 + 8);
  if (!v14)
  {
LABEL_19:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v15)
  {
    v16 = v15(v14, cf, &v19);
LABEL_8:
    v17 = v16;
    if (v16)
    {
      goto LABEL_12;
    }

    v13 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v20, v19, a3);
    goto LABEL_10;
  }

  v17 = 4294954514;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

uint64_t playercentral_SetRateWithFade(OpaqueFigPlayer *a1, float a2, CMTime *a3)
{
  v5 = OUTLINED_FUNCTION_31_9(a1);
  v6 = v5;
  cf = 0;
  if (*(v5 + 8) || !*(v5 + 16))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_3:
    v8 = SetRateOptions;
    goto LABEL_4;
  }

  SetRateOptions = FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 0, &cf);
  if (SetRateOptions)
  {
    goto LABEL_3;
  }

  FigCFDictionarySetCMTime();
  v10 = cf;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v11)
  {
    SetRateOptions = v11(v3, v10, v4);
    goto LABEL_3;
  }

  v8 = 4294954514;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v8)
  {
    *(v6 + 212) = v4;
  }

  return v8;
}

void playercentral_SetRateAndAnchorTime(OpaqueFigPlayer *a1, float a2, CMTime *a3, CMTime *a4, uint64_t a5)
{
  v11 = OUTLINED_FUNCTION_31_9(a1);
  v12 = v11;
  if (*(v11 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16FB8, 4294954511, "<<<< CENTRAL >>>>", 3376, v6);
    goto LABEL_3;
  }

  v14 = *(v11 + 16);
  if (!v14)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16FB8, 4294954516, "<<<< CENTRAL >>>>", 3382, v6);
LABEL_3:
    if (!v13)
    {
      goto LABEL_11;
    }

    return;
  }

  if (v7 == 0.0)
  {
    *(v11 + 192) = 0;
  }

  v18 = *&a3->value;
  epoch = a3->epoch;
  v16 = *&a4->value;
  v17 = a4->epoch;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v15)
  {
    v22 = v18;
    v23 = epoch;
    v20 = v16;
    v21 = v17;
    if (!v15(v14, &v22, &v20, a5, v7))
    {
      playercentral_updateVideoPlaybackAssertion(v5);
LABEL_11:
      *(v12 + 212) = v7;
    }
  }
}

void playercentral_SetRateWithOptions(OpaqueFigPlayer *a1, float a2, const __CFDictionary *a3)
{
  v7 = OUTLINED_FUNCTION_31_9(a1);
  v8 = v7;
  if (*(v7 + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16FB8, 4294954511, "<<<< CENTRAL >>>>", 3333, v4);
    goto LABEL_12;
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16FB8, 4294954436, "<<<< CENTRAL >>>>", 3334, v4);
LABEL_12:
    if (!v11)
    {
      goto LABEL_8;
    }

    return;
  }

  if (v5 == 0.0)
  {
    *(v7 + 192) = 0;
  }

  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v10 && !v10(v9, a3, v5))
  {
    playercentral_updateVideoPlaybackAssertion(v3);
LABEL_8:
    *(v8 + 212) = v5;
  }
}

uint64_t playercentral_SetProperties(OpaqueFigPlayer *a1, const __CFDictionary *a2, const __CFDictionary **a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v18 = 0;
  v19 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

  v6 = DerivedStorage;
  v7 = OUTLINED_FUNCTION_23_15();
  v12 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v7, a2, 0, v8, v9, v10, v11);
  if (v12)
  {
LABEL_8:
    v16 = v12;
    goto LABEL_10;
  }

  v13 = *(v6 + 16);
  if (!v13)
  {
LABEL_17:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_6;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v14)
  {
    v15 = v14(v13, cf, &v18);
LABEL_6:
    v16 = v15;
    if (v15)
    {
      goto LABEL_10;
    }

    v12 = FPSupport_CopyCombinedSetPropertiesErrDictionary(v19, v18, a3);
    goto LABEL_8;
  }

  v16 = 4294954514;
LABEL_10:
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

  return v16;
}

uint64_t playercentral_performStartupTaskConfirmingRouteChoiceWithRoutingSessionManager(uint64_t a1, uint64_t a2)
{
  if (in_audio_mx_server_process())
  {
    return FigRoutingSessionManagerCopyLongFormVideoManager();
  }

  else
  {
    return FigRoutingSessionManagerRemoteCopyLongFormVideoManager();
  }
}

void itemcentral_CopyProperty(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_handleSetProperty(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_GetDimensions(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_GetDuration(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_SetCurrentTime(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_GetCurrentTime(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_CopyTrackProperty(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_MakeReadyForInspection(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_CopyCommonMetadata(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_CopyChapterImageData(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_GetNextThumbnailTime(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_SetTrackProperty(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_CopyFormatReader(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_SeekToDateWithID(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_SetCurrentTimeWithRangeAndID(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_CopyAsset(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_ExtractAndRetainNextSampleBuffer(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void itemcentral_SetCurrentTimeWithOptions(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double fcgcfs_ttml_AddSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && ((v4 = DerivedStorage, FormatDescription = CMSampleBufferGetFormatDescription(a2), CMFormatDescriptionGetMediaType(FormatDescription) == 1952807028) || CMFormatDescriptionGetMediaType(FormatDescription) == 1935832172) && CMFormatDescriptionGetMediaSubType(FormatDescription) == 1937010800)
  {
    if (CMSampleBufferGetNumSamples(a2))
    {
      *(v4 + 24) = a2;
      if (CMSampleBufferGetDataBuffer(a2))
      {
        if (!CMByteStreamCreateForBlockBuffer())
        {
          TTMLParserParseStream(*(v4 + 16), 0);
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTTMLCaptionGroupConverterFromSampleBufferCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fcgcfs_ttml_DeliverFigCaptionSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t HandleVideoTargetMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (!OpCode)
  {
    xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v8);
    }
  }

  v5 = OpCode;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t HandleVideoTargetNoReplyMessage(uint64_t a1, void *a2)
{
  v28 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_9;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    goto LABEL_9;
  }

  v4 = v25[3];
  if (!v4 || (v5 = CFGetTypeID(v4), v5 != FigVideoTargetGetTypeID()))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, block, v16);
    goto LABEL_9;
  }

  switch(v28)
  {
    case 1667593076:
      v10 = v25[3];
      v11 = *(CMBaseObjectGetVTable() + 24);
      if (v11)
      {
        v12 = *(v11 + 24);
        if (v12)
        {
          OpCode = v12(v10);
          goto LABEL_9;
        }
      }

LABEL_17:
      v6 = 4294954514;
      goto LABEL_19;
    case 1970300018:
      v22 = *MEMORY[0x1E6960C70];
      v23 = *(MEMORY[0x1E6960C70] + 16);
      OpCode = FigXPCMessageGetCMTime();
      if (OpCode)
      {
        goto LABEL_9;
      }

      v7 = v25[3];
      v20 = v22;
      v21 = v23;
      v8 = *(CMBaseObjectGetVTable() + 24);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          v29 = v20;
          v30 = v21;
          OpCode = v9(v7, &v29, 0);
          goto LABEL_9;
        }
      }

      goto LABEL_17;
    case 1685024621:
      OpCode = FigXPCServerDisassociateObjectWithConnection();
LABEL_9:
      v6 = OpCode;
      goto LABEL_19;
  }

  v6 = 4294951138;
LABEL_19:
  if (v25[3])
  {
    block = MEMORY[0x1E69E9820];
    v16 = 0x40000000;
    v17 = __HandleVideoTargetNoReplyMessage_block_invoke;
    v18 = &unk_1E7483E90;
    v19 = &v24;
    dispatch_async(qword_1ED4CA888, &block);
  }

  _Block_object_dispose(&v24, 8);
  return v6;
}

void FigXPCVideoTargetServerCopyVideoTargetForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void __FigVideoTargetStartServer_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  FigServer_IsMediaplaybackd();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633F0], *MEMORY[0x1E695E4D0]);
  *(*(*(a2 + 32) + 8) + 24) = FigXPCServerStart();
  if (!*(*(*(a2 + 32) + 8) + 24))
  {
    FigWatchdogMonitorDispatchQueue();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

const __CFData *FigFairplayPSSHAtomParserParseAndCreateRecordInProcess(uint64_t a1, const __CFData *a2, void *a3)
{
  v3 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (!a2)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, DWORD2(v11), v12);
    goto LABEL_12;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, DWORD2(v11), v12);
    v3 = 0;
    goto LABEL_12;
  }

  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A0040FC6C5850uLL);
  v6 = v5;
  if (!v5)
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_3_47();
    FigSignalErrorAtGM(v9, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    v3 = 0;
    goto LABEL_13;
  }

  v5[1] = 0;
  v5[2] = v5 + 1;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v35 = 0;
  v36 = 0;
  v38 = 0;
  v37 = 0;
  if (CFDataGetLength(v3) > 0 && CFDataGetBytePtr(v3) && ((CurrentAtomTypeAndDataLength = FigAtomStreamInitWithMemoryBlock(), CurrentAtomTypeAndDataLength) || (CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength(), CurrentAtomTypeAndDataLength)) || (OUTLINED_FUNCTION_239(), OUTLINED_FUNCTION_1_65(), FigSignalErrorAtGM(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24), CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent(), CurrentAtomTypeAndDataLength))
  {
    v3 = CurrentAtomTypeAndDataLength;
    goto LABEL_13;
  }

  v3 = ffpap_parseChildAtoms(&v11, 2, &FigFairplayPSSHAtomParserParseAndCreateRecordInProcess_atomDispatch, v6);
  if (!v3)
  {
    *a3 = v6;
LABEL_12:
    v6 = 0;
  }

LABEL_13:
  FigFairplayPSSHAtomParserDestroyRecord(v6);
  return v3;
}

double ffpap_parseFpsKeySystemInfoAtom(uint64_t a1)
{
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
    return FigSignalErrorAtGM(v2, 0);
  }

  return result;
}

double ffpap_parseFpsKeySystemRequestAtom(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v3 = 0u;
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_1_65();
    return FigSignalErrorAtGM(v2, v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

uint64_t ffpap_parseChildAtoms(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = (a3 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a2 >= 1)
    {
      v11 = 0;
      v12 = v9;
      v13 = v9;
      while (*(v13 - 2))
      {
        ++v11;
        v13 += 2;
        v12 += 2;
        if (a2 == v11)
        {
          goto LABEL_12;
        }
      }

      v14 = 1 << v11;
      if ((*(v13 - 4) & 1) != 0 && (v14 & v8) != 0)
      {
        return 4294949314;
      }

      result = (*v13)(a1, a4);
      if (result)
      {
        return result;
      }

      v8 |= v14;
    }

LABEL_12:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result)
    {
      if (result == -12890)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (a2 >= 1)
      {
        v15 = 0;
        v16 = (a3 + 4);
        do
        {
          if ((v8 >> v15))
          {
            v17 = result;
          }

          else
          {
            v17 = -17982;
          }

          v18 = *v16;
          v16 += 16;
          if ((v18 & 2) != 0)
          {
            result = v17;
          }

          else
          {
            result = result;
          }

          ++v15;
        }

        while (a2 != v15);
      }

      return result;
    }
  }
}

uint64_t FigFairplayPSSHAtomParserDestroyRecord(void *a1)
{
  if (a1)
  {
    for (i = a1[1]; i; i = a1[1])
    {
      v3 = i[5];
      v4 = i[6];
      v5 = (v3 + 48);
      if (!v3)
      {
        v5 = a1 + 2;
      }

      *v5 = v4;
      *v4 = v3;
      v6 = i[2];
      if (v6)
      {
        CFRelease(v6);
        i[2] = 0;
      }

      v7 = i[3];
      if (v7)
      {
        CFRelease(v7);
        i[3] = 0;
      }

      v8 = i[4];
      if (v8)
      {
        CFRelease(v8);
      }

      free(i);
    }

    free(a1);
  }

  return 0;
}

double ffpap_parseFpsKeySystemRequestInfoAtom(uint64_t a1)
{
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
    return FigSignalErrorAtGM(v2);
  }

  return result;
}

double ffpap_parseFpsKeySystemAssetIdAtom(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_4_47(a1))
  {
    OUTLINED_FUNCTION_6_38();
    if (v4 && capacity > 0)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
      *(a2 + 16) = Mutable;
      if (Mutable)
      {
        CFDataSetLength(Mutable, capacity);
        CFDataGetMutableBytePtr(*(a2 + 16));
        OUTLINED_FUNCTION_265();
        if (!FigAtomStreamReadCurrentAtomData())
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_3_47();
    }

    else
    {
      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_1_65();
    }

    return FigSignalErrorAtGM(v6);
  }

  return result;
}

uint64_t ffpap_parseFpsKeySystemVersionListAtom(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_4_47(a1);
  if (v3)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_6_38();
  if (!v4 || (size >= 1 ? (v4 = (size & 3) == 0) : (v4 = 0), !v4))
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
    FigSignalErrorAtGM(v12);
LABEL_18:
    v10 = v3;
    v5 = 0;
    goto LABEL_17;
  }

  v5 = malloc_type_malloc(size, 0xAFF3FF4BuLL);
  if (!v5)
  {
    goto LABEL_21;
  }

  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (CurrentAtomData)
  {
LABEL_23:
    v10 = CurrentAtomData;
    goto LABEL_17;
  }

  if (*(a2 + 24))
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_1_65();
LABEL_22:
    FigSignalErrorAtGM(v13);
    goto LABEL_23;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
LABEL_21:
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_3_47();
    goto LABEL_22;
  }

  v8 = Mutable;
  if (size >= 4)
  {
    v9 = 0;
    do
    {
      FigCFArrayAppendInt32();
      ++v9;
    }

    while (v9 < size >> 2);
  }

  v10 = 0;
  *(a2 + 24) = v8;
LABEL_17:
  free(v5);
  return v10;
}

double ffpap_parseFpsKeySystemRemoteContextAtom(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_4_47(a1))
  {
    OUTLINED_FUNCTION_6_38();
    if (v4 && capacity > 0)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
      *(a2 + 32) = Mutable;
      if (Mutable)
      {
        CFDataSetLength(Mutable, capacity);
        CFDataGetMutableBytePtr(*(a2 + 32));
        OUTLINED_FUNCTION_265();
        if (!FigAtomStreamReadCurrentAtomData())
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_3_47();
    }

    else
    {
      OUTLINED_FUNCTION_376();
      OUTLINED_FUNCTION_1_65();
    }

    return FigSignalErrorAtGM(v6);
  }

  return result;
}

uint64_t FigPlayerRemoteCreateWithOptions(const __CFAllocator *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    OUTLINED_FUNCTION_1_66();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, token[0], theString);
    started = v35;
    goto LABEL_45;
  }

  v5 = a2;
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  started = dword_1ED4CA894;
  if (dword_1ED4CA894)
  {
    goto LABEL_45;
  }

  theString = 0;
  xdict = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *__str = 0u;
  FigPlayerGetClassID();
  v8 = CMDerivedObjectCreate();
  v9 = MEMORY[0x1E695E480];
  if (!v8)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 9) = 0;
    *(DerivedStorage + 16) = CFSetCreateMutable(a1, 0, 0);
    *(DerivedStorage + 32) = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
    *(DerivedStorage + 208) = 0;
    if (FigCFDictionaryGetStringIfPresent())
    {
      CFStringGetCString(theString, (DerivedStorage + 208), 10, 0x600u);
    }

    *token = 0;
    if (FigCFDictionaryGetValueIfPresent())
    {
      *(DerivedStorage + 320) = *token == *MEMORY[0x1E695E4D0];
    }

    v11 = FigSimpleMutexCreate();
    *(DerivedStorage + 40) = v11;
    if (v11 && (*(DerivedStorage + 171) = 0, *(DerivedStorage + 168) = 1, v12 = FigReadWriteLockCreate(), (*(DerivedStorage + 96) = v12) != 0) && (v13 = FigSimpleMutexCreate(), (*(DerivedStorage + 152) = v13) != 0) && (v14 = FigReadWriteLockCreate(), (*(DerivedStorage + 296) = v14) != 0) && (v15 = FigSimpleMutexCreate(), (*(DerivedStorage + 88) = v15) != 0))
    {
      if (xdict)
      {
        v16 = (CMBaseObjectGetDerivedStorage() + 208);
      }

      else
      {
        v16 = "";
      }

      snprintf(__str, 0x50uLL, "com.apple.coremedia.playerremote.transitiontimer.%s", v16);
      v17 = FigDispatchQueueCreateWithPriority();
      *(DerivedStorage + 136) = v17;
      if (v17 && (v18 = FigSimpleMutexCreate(), (*(DerivedStorage + 248) = v18) != 0) && (Mutable = CFArrayCreateMutable(*v9, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 120) = Mutable) != 0) && (v20 = FigSimpleMutexCreate(), (*(DerivedStorage + 128) = v20) != 0) && (v21 = FigSimpleMutexCreate(), (*(DerivedStorage + 232) = v21) != 0) && (v22 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(DerivedStorage + 224) = v22) != 0))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_11_22();
        v8 = CMNotificationCenterAddListener();
        if (!v8)
        {
          v23 = xdict;
          goto LABEL_26;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_66();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_66();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  started = v8;
  if (xdict)
  {
    CFRelease(xdict);
  }

  if (started)
  {
    goto LABEL_45;
  }

  v23 = 0;
LABEL_26:
  xdict = 0;
  *__str = 0;
  LODWORD(theString) = -1;
  token[0] = 0;
  v24 = dyld_program_sdk_at_least();
  v25 = FigXPCCreateBasicMessage();
  if (v25)
  {
    started = v25;
    uint64 = 0;
    MutableCopy = 0;
    goto LABEL_34;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  CFDictionaryRemoveValue(MutableCopy, @"AsynchronousControlQueueHolder");
  if (!_os_feature_enabled_impl())
  {
LABEL_31:
    xpc_dictionary_set_uint64(*__str, "EngineTopology", v5 & 0xFFFFFFDF);
    xpc_dictionary_set_BOOL(*__str, "ClientSDKVersion2015AndLater", v24);
    FigXPCMessageSetCFDictionary();
    MainBundle = CFBundleGetMainBundle();
    CFBundleGetIdentifier(MainBundle);
    FigXPCMessageSetCFString();
    v29 = OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0);
    if (v29)
    {
      started = v29;
      uint64 = 0;
    }

    else
    {
      uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
      if (uint64)
      {
        FigXPCRemoteClientGetServerPID();
        FigRemote_SetServerPid();
        started = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_66();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, token[0], theString);
        started = v36;
      }
    }

    goto LABEL_34;
  }

  FigCFDictionarySetBoolean();
  if (!task_create_identity_token(*MEMORY[0x1E69E9A60], token))
  {
    xpc_dictionary_set_mach_send();
    goto LABEL_31;
  }

  uint64 = 0;
  started = 4294950069;
LABEL_34:
  FigXPCRelease();
  FigXPCRelease();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (token[0] - 1 <= 0xFFFFFFFD)
  {
    FigMachPortReleaseSendRight_();
  }

  if (!started)
  {
    *CMBaseObjectGetDerivedStorage() = uint64;
    v30 = FigXPCRemoteClientAssociateObject();
    if (v30)
    {
      started = v30;
    }

    else
    {
      v31 = CMBaseObjectGetDerivedStorage();
      if ((v5 & 0xF) != 4 && (v5 & 0x100) == 0)
      {
        v32 = v31;
        v33 = objc_autoreleasePoolPush();
        *(v32 + 160) = [[FigDisplayMirroringChangeObserver alloc] initWithPlayer:v23];
        objc_autoreleasePoolPop(v33);
      }

      started = FigStartMonitoringMediaServicesProcessDeath();
      if (!started)
      {
        *a4 = v23;
        goto LABEL_45;
      }
    }
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_45:
  OUTLINED_FUNCTION_48_7(qword_1ED4CA8A0, a2, "FigPlayerRemoteCreateWithOptions");
  return started;
}

void FigSharedRemote_SetDiskCacheParams(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v21 = v20;
  v23 = v22;
  OUTLINED_FUNCTION_433();
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (!dword_1ED4CA894)
  {
    fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v19);
    if (v24 != -17508 && !FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFString())
      {
        xpc_dictionary_set_int64(0, "TargetSize", v18);
        xpc_dictionary_set_int64(0, "TargetFileSize", v23);
        xpc_dictionary_set_BOOL(0, "AutomaticallyManagesSize", v21 != 0);
        FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_51_7(qword_1ED4CA8A0, v25, "FigSharedRemote_SetDiskCacheParams");
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_CheckIntoAndOutOfDiskCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v22;
  xdict = 0;
  if (v23)
  {
    if (v20)
    {
      if (v21)
      {
        v24 = v19;
        if (qword_1ED4CA8A8 != -1)
        {
          dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
        }

        if (!dword_1ED4CA894)
        {
          fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v24);
          if (v26 != -17508 && !OUTLINED_FUNCTION_31_10(0x696Fu, v25, &xdict))
          {
            xpc_dictionary_set_BOOL(xdict, "IsFigSharedMessage", 1);
            if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFURL())
            {
              OUTLINED_FUNCTION_5_44();
              if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
              {
                FigXPCMessageCopyCFString();
              }
            }
          }
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9290, v22);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9289, v22);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9288, v22);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v27, "FigSharedRemote_CheckIntoAndOutOfDiskCache");
  OUTLINED_FUNCTION_652();
}

uint64_t FigSharedRemote_DeleteFromDiskCache(CFStringRef URLString, uint64_t a2)
{
  if (a2)
  {
    if (qword_1ED4CA8A8 != -1)
    {
      dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
    }

    v3 = dword_1ED4CA894;
    if (!dword_1ED4CA894)
    {
      fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(URLString);
      v3 = 4294949788;
      if (v4 != -17508)
      {
        v5 = FigXPCCreateBasicMessage();
        if (v5 || (xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1), v5 = FigXPCMessageSetCFString(), v5) || (v5 = FigXPCMessageSetCFString(), v5))
        {
          v3 = v5;
        }

        else
        {
          v3 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0, v10);
    v3 = v8;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v6, "FigSharedRemote_DeleteFromDiskCache");
  return v3;
}

uint64_t FigSharedRemote_CopyDiskCacheCheckedInIDs(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v8);
LABEL_10:
    v3 = v5;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_187();
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  v3 = dword_1ED4CA894;
  if (!dword_1ED4CA894)
  {
    fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v2);
    OUTLINED_FUNCTION_40_7();
    if (!v4)
    {
      v5 = FigXPCCreateBasicMessage();
      if (!v5)
      {
        xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
        v5 = FigXPCMessageSetCFString();
        if (!v5)
        {
          OUTLINED_FUNCTION_5_44();
          v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!v5)
          {
            v5 = FigXPCMessageCopyCFArray();
          }
        }
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v6, "FigSharedRemote_CopyDiskCacheCheckedInIDs");
  return v3;
}

void FigSharedRemote_GetCacheFileSize(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v21;
  xdict = 0;
  if (v22)
  {
    v23 = v20;
    if (v20)
    {
      v24 = v19;
      if (qword_1ED4CA8A8 != -1)
      {
        dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
      }

      if (!dword_1ED4CA894)
      {
        fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v24);
        OUTLINED_FUNCTION_40_7();
        if (!v26 && !OUTLINED_FUNCTION_31_10(0x6673u, v25, &xdict))
        {
          xpc_dictionary_set_BOOL(xdict, "IsFigSharedMessage", 1);
          if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString())
          {
            OUTLINED_FUNCTION_5_44();
            if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
            {
              *v23 = xpc_dictionary_get_int64(0, "UsedFileSize");
            }
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9458, v21);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9457, v21);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v27, "FigSharedRemote_GetCacheFileSize");
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_CopyCacheProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v21;
  xdict = 0;
  if (v23)
  {
    if (v22)
    {
      if (v20)
      {
        v24 = v19;
        if (qword_1ED4CA8A8 != -1)
        {
          dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
        }

        if (!dword_1ED4CA894)
        {
          fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v24);
          if (v26 != -17508 && !OUTLINED_FUNCTION_31_10(0x7072u, v25, &xdict))
          {
            xpc_dictionary_set_BOOL(xdict, "IsFigSharedMessage", 1);
            if (!FigXPCMessageSetCFString() && !FigXPCMessageSetCFString() && !FigXPCMessageSetCFString())
            {
              OUTLINED_FUNCTION_5_44();
              if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
              {
                FigXPCMessageCopyCFObject();
              }
            }
          }
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9505, v21);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9504, v21);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954670, "<<<< PlayerRemoteXPC >>>>", 9503, v21);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v27, "FigSharedRemote_CopyCacheProperty");
  OUTLINED_FUNCTION_652();
}

void FigSharedRemote_MakeRoomInDiskCache(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t xdict, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  if (qword_1ED4CA8A8 != -1)
  {
    dispatch_once(&qword_1ED4CA8A8, &__block_literal_global_25);
  }

  if (!dword_1ED4CA894)
  {
    fsr_SandboxRegisterDirectoryURLStringAndRetainSandboxRegistrationForever(v23);
    if (v24 != -17508 && !FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_BOOL(0, "IsFigSharedMessage", 1);
      if (!FigXPCMessageSetCFString())
      {
        xpc_dictionary_set_BOOL(0, "AllAvailable", v21 != 0);
        OUTLINED_FUNCTION_5_44();
        v25 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v19)
        {
          if (!v25)
          {
            *v19 = xpc_dictionary_get_int64(0, "BytesMadeAvailable");
          }
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v26, "FigSharedRemote_MakeRoomInDiskCache");
  OUTLINED_FUNCTION_652();
}

void remoteXPCPlayerClient_MessageHandler(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_187();
    if (!FigXPCMessageGetOpCode() && FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(v2))
    {
      FigXPCPlaybackCoordinatorClientHandleMessage(v2, v1);
    }
  }
}

uint64_t remoteXPCPlayer_connectVideoLayerToPlaybackItem(const void *a1, const void *a2, int a3, int a4, const __CFArray *a5, const void *a6, char *a7, _DWORD *a8, const void *a9)
{
  v14 = a9;
  v15 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v35 = 0;
  if (!a9)
  {
    v18 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
    if (v18)
    {
      v23 = v18;
      v20 = 0;
      goto LABEL_39;
    }

    v14 = cf;
  }

  if (a7)
  {
    *a7 = 0;
  }

  FigSimpleMutexLock();
  v19 = remoteXPCPlayer_copySyncItem(a1);
  FigSimpleMutexUnlock();
  v30 = a6;
  if (v19 == a2 || !v19)
  {
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    remoteXPCItem_updateLayerSync(v19, 0, v14);
  }

  CFRelease(v19);
LABEL_11:
  remoteXPCItem_updateLayerSync(a2, 1, v14);
  v20 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  FigSimpleMutexLock();
  v21 = DerivedStorage[10];
  DerivedStorage[10] = v20;
  if (v20)
  {
    CFRetain(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  FigSimpleMutexUnlock();
  *(v17 + 259) = 1;
  FigReadWriteLockLockForRead();
  v22 = DerivedStorage[8];
  if (v22)
  {
    v23 = CFArrayGetCount(v22) > 0;
  }

  else
  {
    v23 = 0;
  }

  FigReadWriteLockUnlockForRead();
  if (FigUseVideoReceiverForCALayer())
  {
    v23 = 0;
    goto LABEL_39;
  }

  if (!v23)
  {
    FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(v14, a1, DerivedStorage[17]);
    goto LABEL_39;
  }

  if (a5)
  {
    v23 = 0;
LABEL_23:
    if (CFArrayGetCount(a5) >= 1)
    {
      if (a3)
      {
        remoteXPCPlayer_connectImageQueueToVideoLayerArray(a1, a2, a5, v30, v14);
        v24 = 2;
      }

      else
      {
        v24 = 3;
      }

      goto LABEL_26;
    }

    goto LABEL_33;
  }

  FigPlaybackItemGetFigBaseObject();
  v27 = v26;
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v28)
  {
    v23 = 4294954514;
    goto LABEL_33;
  }

  v23 = v28(v27, @"VideoSlotArray", *MEMORY[0x1E695E480], &v35);
  a5 = v35;
  if (v35)
  {
    goto LABEL_23;
  }

LABEL_33:
  if (a4)
  {
    remoteXPCPlayer_connectImageQueueToVideoLayerArray(a1, a2, 0, v30, v14);
    v24 = 4;
LABEL_26:
    if (!a7)
    {
      remoteXPCItem_handleFirstFrameNotificationLatch(a2, v24, v14);
      goto LABEL_39;
    }

    v25 = 1;
    goto LABEL_36;
  }

  if (!a7)
  {
    goto LABEL_39;
  }

  v25 = 0;
  LODWORD(v24) = 3;
LABEL_36:
  *a7 = v25;
  if (a8)
  {
    *a8 = v24;
  }

LABEL_39:
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  objc_autoreleasePoolPop(v15);
  return v23;
}

void remoteXPCPlayer_updateAirPlayScrubbingHostVideoTarget(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf, CFBooleanRef BOOLean, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  cf = 0;
  BOOLean = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = CFGetAllocator(v23);
  FigPlayerGetFigBaseObject();
  v27 = v26;
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v29 = v28 && (v28(v27, @"IsAirPlayVideoActive", v25, &BOOLean), BOOLean) && CFBooleanGetValue(BOOLean) != 0;
  FigReadWriteLockLockForWrite();
  v30 = *(DerivedStorage + 304);
  if (v30 && ((Count = CFArrayGetCount(v30), Count > 0) ? (v32 = v29) : (v32 = 0), v32))
  {
    v33 = Count;
    v34 = CFGetAllocator(v23);
    FigPlayerGetFigBaseObject();
    v36 = v35;
    v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v37)
    {
      if (!v37(v36, @"AirPlayVideoScrubbingCAContextID", v34, &cf))
      {
        if (!*(DerivedStorage + 312) || (v38 = cf, FigVideoTargetGetCMBaseObject(), v40 = v39, (v41 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v41(v40, @"AirPlayVideoScrubbingContextID", v38))
        {
          remoteXPCPlayer_removeAirPlayScrubbingVideoTarget(v23);
          v42 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 304), v42);
            v44 = cf;
            FigVideoTargetGetCMBaseObject();
            v46 = v45;
            v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v47)
            {
              if (!v47(v46, @"AirPlayVideoScrubbingContextID", v44))
              {
                break;
              }
            }

            if (v33 == ++v42)
            {
              goto LABEL_19;
            }
          }

          *(DerivedStorage + 312) = CFRetain(ValueAtIndex);
        }
      }
    }
  }

  else
  {
LABEL_19:
    remoteXPCPlayer_removeAirPlayScrubbingVideoTarget(v23);
  }

  FigReadWriteLockUnlockForWrite();
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_843();
}

uint64_t remoteXPCPlayer_copySyncItem(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9) || !*(DerivedStorage + 80))
  {
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

void remoteXPCItem_updateLayerSync(uint64_t a1, int a2, CFTypeRef a3)
{
  v66 = *MEMORY[0x1E69E9840];
  cf = 0;
  v57 = 0;
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    a3 = 0;
    v7 = 0;
    goto LABEL_60;
  }

  v7 = remoteXPCItem_copyOwningPlayer(a1);
  if (!v7)
  {
LABEL_59:
    a3 = 0;
    goto LABEL_60;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, v53, v54);
    goto LABEL_59;
  }

  v10 = v9;
  if (a3 || (v11 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf), a3 = cf, !v11))
  {
    if (FigUseVideoReceiverForCALayer())
    {
      FigReadWriteLockLockForRead();
      v12 = *(v10 + 304);
      if (v12)
      {
        v13 = CFRetain(v12);
        FigReadWriteLockUnlockForRead();
        if (v13)
        {
          Count = CFArrayGetCount(v13);
LABEL_15:
          v16 = 0;
          goto LABEL_16;
        }

LABEL_14:
        Count = 0;
        goto LABEL_15;
      }
    }

    else
    {
      FigReadWriteLockLockForRead();
      v15 = *(v10 + 64);
      if (v15)
      {
        v16 = CFRetain(v15);
        FigReadWriteLockUnlockForRead();
        if (v16)
        {
          Count = CFArrayGetCount(v16);
          v13 = 0;
        }

        else
        {
          v13 = 0;
          Count = 0;
        }

LABEL_16:
        FigSimpleMutexLock();
        v17 = *(DerivedStorage + 160);
        if (v17)
        {
          v18 = CFRetain(v17);
          FigSimpleMutexUnlock();
          if (v18)
          {
            v19 = CFArrayGetCount(v18);
            v55 = Count;
            v20 = a1;
            v21 = v18;
            v22 = a3;
            v23 = v7;
            v24 = a2;
            v25 = v13;
            v26 = v6;
            v27 = v16;
            v28 = v19;
            FigSimpleMutexLock();
            v29 = v28 <= 0;
            v16 = v27;
            v6 = v26;
            v13 = v25;
            a2 = v24;
            v7 = v23;
            a3 = v22;
            v30 = v21;
            a1 = v20;
            Count = v55;
            if (!v29)
            {
LABEL_25:
              v31 = (DerivedStorage + 152);
              if (*(DerivedStorage + 152) || !FigLayerSynchronizerCreate((DerivedStorage + 152)))
              {
                v32 = CFGetAllocator(v7);
                if (!FPSupport_CreateLayerSynchronizerConfiguration(v32, a2, v16, v13, v30, &v57))
                {
                  if (dword_1ED4CBDB0)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v34 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    if (OUTLINED_FUNCTION_115_1(v34))
                    {
                      v58 = 136315906;
                      v59 = "remoteXPCItem_updateLayerSync";
                      v60 = 2048;
                      v61 = v7;
                      v62 = 2048;
                      v63 = a1;
                      v64 = 2112;
                      v65 = v57;
                      OUTLINED_FUNCTION_108();
                      _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, os_log_and_send_and_compose_flags_and_os_log_type, 0, v40, &v58, 42);
                    }

                    OUTLINED_FUNCTION_7();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  if (!FigLayerSynchronizerSetConfigurationWithDeferredTransaction(*v31, v57, a3))
                  {
                    if (*v31)
                    {
                      v51 = *(DerivedStorage + 32);
                      if (v51)
                      {
                        FigLayerSynchronizerSynchronizeToTimebaseWithDeferredTransaction(*v31, v51);
                      }
                    }
                  }
                }
              }

LABEL_43:
              FigSimpleMutexUnlock();
              a3 = cf;
              goto LABEL_44;
            }

            if (!a2)
            {
LABEL_31:
              v41 = *(DerivedStorage + 152);
              if (v41)
              {
                if (dword_1ED4CBDB0)
                {
                  v42 = v16;
                  v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
                  if (OUTLINED_FUNCTION_115_1(v44))
                  {
                    v58 = 136315650;
                    v59 = "remoteXPCItem_updateLayerSync";
                    v60 = 2048;
                    v61 = v7;
                    v62 = 2048;
                    v63 = a1;
                    OUTLINED_FUNCTION_108();
                    _os_log_send_and_compose_impl(v45, v46, v47, v48, v49, v43, 0, v50, &v58, 32);
                  }

                  v16 = v42;
                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v41 = *(DerivedStorage + 152);
                }

                FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v41, 0, a3);
              }

              goto LABEL_43;
            }

LABEL_24:
            if (Count >= 1)
            {
              goto LABEL_25;
            }

            goto LABEL_31;
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }

        FigSimpleMutexLock();
        v30 = 0;
        if (!a2)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }
    }

    FigReadWriteLockUnlockForRead();
    v13 = 0;
    goto LABEL_14;
  }

LABEL_60:
  v16 = 0;
  v30 = 0;
  v13 = 0;
LABEL_44:
  FigDeferredTransactionCommit(a3, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  objc_autoreleasePoolPop(v6);
}

void remoteXPCPlayer_connectImageQueueToVideoLayerArray(const void *a1, const void *a2, const __CFArray *a3, const void *a4, CFTypeRef a5)
{
  v93 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = CMBaseObjectGetDerivedStorage();
  v90 = 0;
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
    a5 = 0;
    v14 = 0;
    MutableCopy = 0;
    v12 = 0;
  }

  else
  {
    v75 = v10;
    FigReadWriteLockLockForRead();
    v11 = *(DerivedStorage + 64);
    if (v11)
    {
      v12 = CFRetain(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(DerivedStorage + 56);
    if (v13)
    {
      v14 = CFRetain(v13);
    }

    else
    {
      v14 = 0;
    }

    allocator = *MEMORY[0x1E695E480];
    MutableCopy = FigCFArrayCreateMutableCopy();
    FigReadWriteLockUnlockForRead();
    if (a5 || (v16 = FigDeferredTransactionCreate(allocator, &v88), a5 = v88, !v16))
    {
      v84 = MutableCopy;
      theArray = v14;
      v81 = v12;
      v76 = a5;
      v77 = a2;
      v78 = DerivedStorage;
      if (!a3)
      {
        FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(a5, v12, 0);
        v18 = 0;
        goto LABEL_69;
      }

      if (MutableCopy)
      {
        Count = CFArrayGetCount(MutableCopy);
      }

      else
      {
        Count = 0;
      }

      if (Count == CFArrayGetCount(a3))
      {
        v19 = FigCFArrayCreateMutableCopy();
        if (Count >= 1)
        {
          v20 = 0;
          v21 = MEMORY[0x1E695E738];
          do
          {
            v22 = OUTLINED_FUNCTION_513();
            ValueAtIndex = CFArrayGetValueAtIndex(v22, v23);
            if (!FigCFEqual())
            {
              if (v19)
              {
                CFArrayGetCount(v19);
              }

              v25 = OUTLINED_FUNCTION_9_2();
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v25, v94, ValueAtIndex);
              if (FirstIndexOfValue == -1)
              {
                v27 = OUTLINED_FUNCTION_513();
                v95.length = 1;
                CFArrayReplaceValues(v27, v95, v21, 1);
              }

              else
              {
                CFArrayRemoveValueAtIndex(v19, FirstIndexOfValue);
              }
            }

            ++v20;
          }

          while (Count != v20);
          v28 = 0;
          v12 = v81;
          do
          {
            v29 = OUTLINED_FUNCTION_513();
            CFArrayGetValueAtIndex(v29, v30);
            if (FigCFEqual())
            {
              v31 = OUTLINED_FUNCTION_9_2();
              *&t1.a = CFArrayGetValueAtIndex(v31, v32);
              v33 = OUTLINED_FUNCTION_513();
              v96.length = 1;
              CFArrayReplaceValues(v33, v96, v34, 1);
              v35 = OUTLINED_FUNCTION_9_2();
              CFArrayRemoveValueAtIndex(v35, v36);
            }

            ++v28;
          }

          while (Count != v28);
        }

        v79 = MutableCopy;
        if (v19)
        {
          CFRelease(v19);
          v79 = MutableCopy;
        }
      }

      else
      {
        v79 = a3;
      }

      if (theArray && CFArrayGetCount(theArray) >= 1)
      {
        v37 = 0;
        do
        {
          if (dword_1ED4CBDB0)
          {
            v87 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            MutableCopy = v84;
          }

          ++v37;
        }

        while (CFArrayGetCount(theArray) > v37);
      }

      a5 = v76;
      v18 = v79;
      FPSupport_AppendDeferredTransactionChangeForSettingImageQueueSlotsOnVideoLayers(v76, v79, v12);
      v40 = *(v75 + 240);
      v39 = *(v75 + 248);
      if (v40 == *MEMORY[0x1E695F060] && v39 == *(MEMORY[0x1E695F060] + 8))
      {
        v44 = v77;
        v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        DerivedStorage = v78;
        if (v45)
        {
          v45(v77, &v90 + 4, &v90);
        }
      }

      else
      {
        *&v42 = v40;
        *&v43 = v39;
        v90 = __PAIR64__(v42, v43);
        v44 = v77;
        DerivedStorage = v78;
      }

      if (*(DerivedStorage + 169))
      {
        FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(v76, theArray, 0.0, 0.0, *(&v90 + 1), *&v90);
      }

      *(DerivedStorage + 170) = 0;
      if (!FPSupport_ShouldApplyVideoTrackMatrix(a1, v44))
      {
        v47 = *(MEMORY[0x1E695EFD0] + 16);
        *&v89.a = *MEMORY[0x1E695EFD0];
        *&v89.c = v47;
        *&v89.tx = *(MEMORY[0x1E695EFD0] + 32);
LABEL_68:
        v54 = *MEMORY[0x1E695EFF8];
        v55 = *(MEMORY[0x1E695EFF8] + 8);
        t1 = v89;
        FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(v76, 0, &t1, v12, v54, v55);
LABEL_69:
        FigReadWriteLockLockForWrite();
        v56 = *(DerivedStorage + 72);
        *(DerivedStorage + 72) = v18;
        if (v18)
        {
          CFRetain(v18);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v57 = a5;
        FigReadWriteLockUnlockForWrite();
        if (theArray)
        {
          v58 = CFArrayGetCount(theArray);
          if (!v18)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v58 = 0;
          if (!v18)
          {
LABEL_93:
            FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(v57, a1, *(DerivedStorage + 136));
            a5 = v88;
            v14 = theArray;
            goto LABEL_94;
          }
        }

        v59 = CFArrayGetCount(v18);
        if (v58 >= 1 && v59 >= 1)
        {
          v61 = v59;
          Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v62 = 0;
          v63 = *MEMORY[0x1E695E4D0];
          v64 = *MEMORY[0x1E695E4C0];
          do
          {
            v65 = [CFArrayGetValueAtIndex(theArray v62)];
            LODWORD(t1.a) = 0;
            if (v62 < v61)
            {
              v66 = v65;
              if (FigCFArrayGetInt32AtIndex())
              {
                v67 = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                FigCFDictionarySetInt32();
                if (v66)
                {
                  v68 = v63;
                }

                else
                {
                  v68 = v64;
                }

                CFDictionarySetValue(v67, @"UsedForScrubbingOnly", v68);
                CFArrayAppendValue(Mutable, v67);
                CFRelease(v67);
              }
            }

            ++v62;
          }

          while (v58 != v62);
          FigPlaybackItemGetFigBaseObject();
          v70 = v69;
          v71 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v71)
          {
            v71(v70, @"VideoSlotUsage", Mutable);
          }

          v57 = v76;
          v12 = v81;
          DerivedStorage = v78;
          MutableCopy = v84;
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }

        goto LABEL_93;
      }

      LOBYTE(v87) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      *&v91.a = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      else
      {
        FigPlaybackItemGetFigBaseObject();
        v49 = v48;
        v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v50)
        {
          RotationAngleAndFlipsFromCGAffineTransform = 0;
LABEL_62:
          CGAffineTransformMakeRotation(&t1, RotationAngleAndFlipsFromCGAffineTransform * 3.14159265 / 180.0);
          v52 = -1.0;
          if (type)
          {
            v53 = -1.0;
          }

          else
          {
            v53 = 1.0;
          }

          if (!v87)
          {
            v52 = 1.0;
          }

          CGAffineTransformMakeScale(&v91, v53, v52);
          CGAffineTransformConcat(&v89, &t1, &v91);
          goto LABEL_68;
        }

        v51 = v50(v49, @"VideoTrackMatrix", allocator, &v91);
        RotationAngleAndFlipsFromCGAffineTransform = 0;
        a4 = *&v91.a;
        if (v51 || !*&v91.a)
        {
LABEL_51:
          if (a4)
          {
            CFRelease(a4);
          }

          if (RotationAngleAndFlipsFromCGAffineTransform == 270 || RotationAngleAndFlipsFromCGAffineTransform == 90)
          {
            v90 = __PAIR64__(v90, HIDWORD(v90));
            *(DerivedStorage + 170) = 1;
          }

          goto LABEL_62;
        }
      }

      FigGetCGAffineTransformFrom3x3MatrixArray(a4, &t1);
      RotationAngleAndFlipsFromCGAffineTransform = FigGetRotationAngleAndFlipsFromCGAffineTransform(&t1.a, &v87, &type);
      a4 = *&v91.a;
      goto LABEL_51;
    }
  }

LABEL_94:
  FigDeferredTransactionCommit(a5, 0);
  if (v88)
  {
    CFRelease(v88);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

uint64_t remoteXPCItem_copyOwningPlayer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 9))
  {
    return 0;
  }

  if (!*(DerivedStorage + 24))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
    return 0;
  }

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

BOOL remoteXPCItem_isSyncItem(const void *a1)
{
  v2 = remoteXPCItem_copyOwningPlayer(a1);
  v3 = remoteXPCPlayer_copySyncItem(v2);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4 == a1;
}

void fpr_copyLegibleOutputChangedNotificationPayloadFromMessage()
{
  OUTLINED_FUNCTION_433();
  cf = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = 0;
  v4 = 0;
  if (!FigXPCMessageCopyCFDictionary())
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!FigXPCMessageCopyCFArray())
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, v3, v4);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  OUTLINED_FUNCTION_424_0();
}

uint64_t fpr_copyMetadataOutputChangedNotificationPayloadFromMessage()
{
  OUTLINED_FUNCTION_180_1();
  value = 0;
  v2 = FigXPCMessageCopyCFDictionary();
  if (!v2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    fpr_copySampleBuffersArrayFromMessage(v1, "MetadataOutputSamples", &value);
    v4 = value;
    CFDictionarySetValue(MutableCopy, @"SampleBuffers", value);
    *v0 = MutableCopy;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

uint64_t remoteXPCItem_HandleTimebaseSynchronizationUpdate(const void *a1, uint64_t a2)
{
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != FigPlaybackItemGetTypeID()) || !a2 || (result = FigXPCMessageCopyCFData(), !result))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void remoteXPCItem_TimebaseSynchronizationUpdate(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = 0;
  v24 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v5 = remoteXPCItem_copyOwningPlayer(a1);
  if (v5)
  {
    CMBaseObjectGetDerivedStorage();
  }

  FigSimpleMutexLock();
  if (!v5 || *(DerivedStorage + 9))
  {
    FigSimpleMutexUnlock();
    if (!v5)
    {
      return;
    }

    goto LABEL_12;
  }

  LODWORD(v21) = *a2;
  if (v21 == 120)
  {
    v6 = *(a2 + 4);
    DWORD1(v21) = v6;
    *(&v21 + 1) = *(a2 + 8);
    v22 = *(a2 + 16);
    v7 = *(a2 + 32);
    *(v23 + 8) = *(a2 + 40);
    *&v23[2] = *(a2 + 64);
    *(&v23[3] + 1) = *(a2 + 88);
    *(&v23[2] + 8) = *(a2 + 72);
    v25 = *(a2 + 112);
    v24 = *(a2 + 96);
    v8 = *(DerivedStorage + 68) & 0x1D;
    v9 = *(a2 + 56);
    *&v23[0] = v7;
    *(&v23[1] + 1) = v9;
    if (v8 != 1 || (v14 = *(a2 + 40), *&v15 = *(a2 + 56), time2 = *(DerivedStorage + 56), (CMTimeCompare(&v14, &time2) & 0x80000000) == 0))
    {
      v10 = *(&v23[1] + 1);
      *(DerivedStorage + 56) = *(v23 + 8);
      *(DerivedStorage + 72) = v10;
      v11 = *(DerivedStorage + 32);
      if (v11)
      {
        FigTimebaseSynchronizeToMoment2(v11, *(DerivedStorage + 48), &v21);
      }

      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
      isSyncItem = remoteXPCItem_isSyncItem(a1);
      FigSimpleMutexUnlock();
      FigSimpleMutexLock();
      v13 = *(DerivedStorage + 152);
      if (v13 && isSyncItem)
      {
        if (*(DerivedStorage + 259))
        {
          DWORD1(v21) |= 3u;
          *(DerivedStorage + 259) = 0;
        }

        FigSimpleMutexUnlock();
        *(&v14 + 1) = *(&v21 + 1);
        v15 = v22;
        v17 = *(v23 + 8);
        LODWORD(v14) = 72;
        DWORD1(v14) = DWORD1(v21);
        v16 = *&v23[0];
        v18 = *(&v23[1] + 1);
        v19 = *&v23[2];
        FigLayerSynchronizerSynchronizeToMomentWithDeferredTransaction(v13, &v14);
      }

      else
      {
        FigSimpleMutexUnlock();
      }

      if (!*(DerivedStorage + 9) && (BYTE4(v21) & 2) != 0)
      {
        fpr_deferPostNotificationToNotificationQueue(a1, @"TimeJumped", 0);
      }

      goto LABEL_12;
    }

    if ((v6 & 2) != 0)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  FigSimpleMutexUnlock();
LABEL_12:
  CFRelease(v5);
}

uint64_t remoteXPCPlayer_Invalidate(uint64_t a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  cf[1] = 0;
  if (*(DerivedStorage + 9))
  {
    v6 = 0;
    goto LABEL_35;
  }

  v4 = DerivedStorage;
  FigStopMonitoringMediaServicesProcessDeath();
  if (dword_1ED4CBDB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = FigXPCRemoteClientDisassociateObject();
  if (!*(v4 + 8) && !*(v4 + 288))
  {
    v6 = FigXPCCreateBasicMessage();
    if (!v6)
    {
      v6 = FigXPCRemoteClientSendAsyncMessage();
    }
  }

  FigDeferredTransactionCreate(*MEMORY[0x1E695E480], cf);
  *(v4 + 9) = 1;
  *v4 = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_11_22();
  CMNotificationCenterRemoveListener();
  FigPlayerGetFigBaseObject();
  v8 = v7;
  v9 = *(CMBaseObjectGetVTable() + 8);
  if (*v9 >= 2uLL)
  {
    v10 = v9[8];
    if (v10)
    {
      v10(v8);
    }
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    v12 = CFGetAllocator(v11);
    Copy = CFSetCreateCopy(v12, *(v4 + 16));
    if (Copy)
    {
      v14 = Copy;
      CFSetApplyFunction(Copy, remoteXPCPlayer_InvalidateItem, 0);
      CFRelease(v14);
    }
  }

  v15 = *(v4 + 176);
  if (v15)
  {
    CFRelease(v15);
    *(v4 + 176) = 0;
  }

  if (*(v4 + 136))
  {
    remoteXPCPlayer_cancelAndClearNextItemTransitionTimer(a1);
    dispatch_sync(*(v4 + 136), &__block_literal_global_24);
  }

  FigSimpleMutexLock();
  remoteXPCPlayer_removeClosedCaptionHostLayerArray();
  FigSimpleMutexUnlock();
  v16 = *(v4 + 104);
  if (v16)
  {
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(cf[0], v16);
    v17 = *(v4 + 104);
    if (v17)
    {
      CFRelease(v17);
      *(v4 + 104) = 0;
    }
  }

  if (!FigUseVideoReceiverForCALayer())
  {
    v18 = *(v4 + 64);
    if (v18)
    {
      Count = CFArrayGetCount(v18);
      if (Count > 0)
      {
        v20 = Count;
        for (i = 0; i != v20; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 64), i);
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_2_60();
          CMNotificationCenterRemoveListener();
          [ValueAtIndex notificationBarrier];
        }

        goto LABEL_28;
      }
    }

    if (*(v4 + 56))
    {
LABEL_28:
      FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(cf[0], *(v4 + 64), 1);
      FigReadWriteLockLockForWrite();
      FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 64));
      FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 56));
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      FigReadWriteLockUnlockForWrite();
    }
  }

  FigReadWriteLockLockForWrite();
  FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 112));
  *(v4 + 112) = 0;
  FigReadWriteLockUnlockForWrite();
  FigSimpleMutexLock();
  if (!*(v4 + 264))
  {
    remoteXPCPlayer_removeAllSpatialTrackingLayers(a1);
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v23 = *(v4 + 160);
  if (v23)
  {
    [v23 removeObserversOnCADisplays];
    [*(v4 + 160) removeReferenceToPlayer];

    *(v4 + 160) = 0;
  }

  FigSimpleMutexUnlock();
  FPSupport_AppendDeferredTransactionChangeToRelease(cf[0], *(v4 + 120));
  *(v4 + 120) = 0;
  FigDeferredTransactionCommit(cf[0], 0);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_35:
  FigXPCRelease();
  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t remoteXPCPlayer_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  remoteXPCPlayer_Invalidate(a1);
  FigSimpleMutexDestroy();
  v3 = *(DerivedStorage + 256);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 256) = 0;
  }

  v4 = *(DerivedStorage + 272);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 272) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 72) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 128) = 0;
  v8 = *(DerivedStorage + 16);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 16) = 0;
  }

  v9 = *(DerivedStorage + 24);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 24) = 0;
  }

  v10 = *(DerivedStorage + 32);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 32) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 40) = 0;
  v11 = *(DerivedStorage + 48);
  if (v11)
  {
    dispatch_release(v11);
  }

  *(DerivedStorage + 48) = 0;
  FigReadWriteLockDestroy();
  if (FigUseVideoReceiverForCALayer())
  {
    v12 = *(DerivedStorage + 304);
    if (v12)
    {
      Count = CFArrayGetCount(*(DerivedStorage + 304));
      if (Count >= 1)
      {
        v14 = Count;
        for (i = 0; i != v14; ++i)
        {
          CFArrayGetValueAtIndex(v12, i);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterRemoveWeakListeners();
        }
      }
    }

    v16 = *(DerivedStorage + 312);
    if (v16)
    {
      CFRelease(v16);
      *(DerivedStorage + 312) = 0;
    }
  }

  v17 = *(DerivedStorage + 304);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 304) = 0;
  }

  v18 = *(DerivedStorage + 328);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 328) = 0;
  }

  v19 = *(DerivedStorage + 336);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 336) = 0;
  }

  FigReadWriteLockDestroy();
  *(DerivedStorage + 96) = 0;
  v20 = *(DerivedStorage + 80);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 80) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 88) = 0;
  v21 = *(DerivedStorage + 136);
  if (v21)
  {
    dispatch_release(v21);
  }

  *(DerivedStorage + 136) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 232) = 0;
  v22 = *(DerivedStorage + 224);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 224) = 0;
  }

  v23 = *(DerivedStorage + 192);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 192) = 0;
  }

  v24 = *(DerivedStorage + 200);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 200) = 0;
  }

  v25 = *(DerivedStorage + 280);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 280) = 0;
  }

  if (*(DerivedStorage + 152))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 152) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

void remoteXPCPlayer_removeClosedCaptionHostLayerArray()
{
  OUTLINED_FUNCTION_180_1();
  v1 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v3 = *(DerivedStorage + 120);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    if (v0 || (v4 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf), v0 = cf, !v4))
    {
      FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer(v0, *(DerivedStorage + 120), "remoteXPCPlayer_removeClosedCaptionHostLayerArray");
      CFArrayRemoveAllValues(*(DerivedStorage + 120));
      v0 = cf;
    }
  }

  else
  {
    v0 = 0;
  }

  FigDeferredTransactionCommit(v0, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v1);
}

void remoteXPCPlayer_removeAllSpatialTrackingLayers(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CA8B8 != -1)
  {
    dispatch_once(&qword_1ED4CA8B8, &__block_literal_global_27);
  }

  if (_MergedGlobals_44 && *(DerivedStorage + 272))
  {
    OUTLINED_FUNCTION_3_48();
    CFSetApplyFunction(v2, v3, 0);
    v4 = *(DerivedStorage + 272);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 272) = 0;
    }
  }
}

uint64_t remoteXPCPlayer_reevaluatePendingVideoTargetsAndUpdateServerPlayer(const void *a1)
{
  value[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForWrite();
  v4 = *(DerivedStorage + 304);
  cf = 0;
  v5 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  v62 = v1;
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v1);
    goto LABEL_81;
  }

  v7 = Mutable;
  v8 = CFGetAllocator(a1);
  v9 = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v1);
    CFRelease(v7);
LABEL_81:
    v10 = 0;
    v7 = 0;
    v20 = *(DerivedStorage + 328);
    *(DerivedStorage + 328) = 0;
    v21 = 1;
    if (v20)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v10 = v9;
  v63 = DerivedStorage;
  v11 = 0;
  v64 = v9;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = CFArrayGetCount(v4); v11 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v11);
    v14 = CFGetAllocator(a1);
    FigVideoTargetGetCMBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(v16, @"ReceiverLoadingState", v14, &cf);
    }

    if (FigCFEqual())
    {
      v18 = v7;
LABEL_13:
      CFArrayAppendValue(v18, ValueAtIndex);
      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      v18 = v10;
      goto LABEL_13;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = v64;
LABEL_14:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v11;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_5:
    ;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  DerivedStorage = v63;
  v20 = *(v63 + 328);
  *(v63 + 328) = v7;
  CFRetain(v7);
  v21 = 0;
  if (v20)
  {
LABEL_22:
    CFRelease(v20);
  }

LABEL_23:
  v22 = *(DerivedStorage + 336);
  *(DerivedStorage + 336) = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 320) != 0;
  if (*(DerivedStorage + 320))
  {
    v24 = v10;
  }

  else
  {
    v24 = 0;
  }

  theArray = v24;
  if (v10 && !*(DerivedStorage + 320))
  {
    Count = CFArrayGetCount(v10);
    v23 = Count > 0;
    if (Count < 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v21;
    }

    if ((v26 & 1) == 0)
    {
      v23 = CFArrayGetCount(v7) == 0;
    }

    theArray = v10;
  }

  FigReadWriteLockUnlockForWrite();
  v27 = v10;
  if (dword_1ED4CBDB0)
  {
    LODWORD(cf) = 0;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v29 = cf;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      if (v21)
      {
        v31 = 0;
        if (v10)
        {
          goto LABEL_45;
        }

LABEL_48:
        v32 = 0;
      }

      else
      {
        v31 = CFArrayGetCount(v7);
        if (!v10)
        {
          goto LABEL_48;
        }

LABEL_45:
        v32 = CFArrayGetCount(theArray);
      }

      v68 = "remoteXPCPlayer_reevaluatePendingVideoTargetsAndUpdateServerPlayer";
      v69 = 2048;
      v33 = "false";
      v67 = 136316162;
      v70 = a1;
      if (v23)
      {
        v33 = "true";
      }

      v71 = 1024;
      *v72 = v31;
      *&v72[4] = 1024;
      *&v72[6] = v32;
      v73[0] = 2080;
      *&v73[1] = v33;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v34, v35, v36, v37, v38, v28, 0, v39);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value[0] = 0;
  if (!remoteXPCPlayer_GetObjectID(a1, value))
  {
    FigXPCSendStdSetPropertyMessage();
  }

  cf = 0;
  if (dword_1ED4CBDB0 >= 2)
  {
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v41))
    {
      v67 = 136315650;
      v68 = "remoteXPCPlayer_setVideoTargetsOnServerPlayer";
      v69 = 2048;
      v70 = a1;
      v71 = 2112;
      *v72 = v7;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v42, v43, v44, v45, v46, v40, 0, v47);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ObjectID = remoteXPCPlayer_GetObjectID(a1, &cf);
  if (ObjectID)
  {
    v58 = ObjectID;
    goto LABEL_71;
  }

  v49 = xpc_array_create(0, 0);
  if (!v49)
  {
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, v61, v62);
LABEL_70:
    v58 = v57;
    goto LABEL_71;
  }

  v50 = CFArrayGetCount(v7);
  if (v50 < 1)
  {
LABEL_68:
    v57 = FigXPCCreateBasicMessage();
    v10 = v27;
    if (!v57)
    {
      xpc_dictionary_set_value(0, "VideoTargetIDArray", v49);
      v57 = FigXPCRemoteClientSendSyncMessage();
    }

    goto LABEL_70;
  }

  v51 = v50;
  v52 = 0;
  while (1)
  {
    value[0] = 0;
    v53 = CFArrayGetValueAtIndex(v7, v52);
    if (!v53)
    {
      break;
    }

    v54 = v53;
    v55 = CFGetTypeID(v53);
    if (v55 != FigVideoTargetGetTypeID())
    {
      break;
    }

    v56 = FigVideoTargetXPCRemoteGetObjectID(v54, value);
    if (v56)
    {
      goto LABEL_77;
    }

    if (!value[0])
    {
      break;
    }

    xpc_array_set_uint64(v49, 0xFFFFFFFFFFFFFFFFLL, value[0]);
    if (v51 == ++v52)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_49_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_77:
  v58 = v56;
  v10 = v27;
LABEL_71:
  FigXPCRelease();
  FigXPCRelease();
  if ((v21 & 1) == 0)
  {
    CFRelease(v7);
  }

  if (v10)
  {
    CFRelease(theArray);
  }

  return v58;
}

uint64_t remoteXPCPlayer_setClientVideoLayerArray(const void *a1, const __CFArray *a2)
{
  valuePtr[25] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  valuePtr[0] = -1;
  context = v3;
  if (FigUseVideoReceiverForCALayer())
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v83, v85, v86);
    goto LABEL_110;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf);
  if (v6)
  {
LABEL_110:
    v66 = v6;
    v54 = 0;
    v23 = 0;
    v39 = 0;
    v92 = 0;
    v12 = 0;
    v89 = 0;
    MutableCopy = 0;
    goto LABEL_84;
  }

  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 64))
  {
    v7 = OUTLINED_FUNCTION_266_0();
    MutableCopy = CFArrayCreateMutableCopy(v7, v8, v9);
  }

  else
  {
    MutableCopy = 0;
  }

  v11 = *(DerivedStorage + 56);
  if (v11)
  {
    v12 = CFRetain(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(DerivedStorage + 64);
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(DerivedStorage + 72);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  FigReadWriteLockUnlockForRead();
  v92 = v16;
  v89 = v14;
  if (FigCFEqual())
  {
    v54 = 0;
    v23 = 0;
    v39 = 0;
    v66 = 0;
    goto LABEL_84;
  }

  FigSimpleMutexLock();
  v17 = remoteXPCPlayer_copySyncItem(a1);
  FigSimpleMutexUnlock();
  if (v12)
  {
    range = CFArrayGetCount(v12);
    if (v16)
    {
LABEL_18:
      Count = CFArrayGetCount(v16);
      goto LABEL_21;
    }
  }

  else
  {
    range = 0;
    if (v16)
    {
      goto LABEL_18;
    }
  }

  Count = 0;
LABEL_21:
  if (MutableCopy)
  {
    v18 = CFArrayGetCount(MutableCopy);
    valuePtr[0] = v18;
    v19 = OUTLINED_FUNCTION_266_0();
    Mutable = CFArrayCreateMutable(v19, v20, v21);
    v23 = Mutable;
    if (v18 >= 1)
    {
      v87 = v17;
      v24 = Mutable;
      v25 = v14;
      v26 = v12;
      for (i = 0; i < v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_2_60();
        CMNotificationCenterRemoveListener();
        [ValueAtIndex notificationBarrier];
      }

      v12 = v26;
      v14 = v25;
      v23 = v24;
      v17 = v87;
    }
  }

  else
  {
    valuePtr[0] = 0;
    v29 = OUTLINED_FUNCTION_266_0();
    v23 = CFArrayCreateMutable(v29, v30, v31);
  }

  FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(cf, v14, 1);
  FigReadWriteLockLockForWrite();
  v32 = *(DerivedStorage + 64);
  if (v32)
  {
    CFRelease(v32);
    *(DerivedStorage + 64) = 0;
  }

  v33 = *(DerivedStorage + 56);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 56) = 0;
  }

  v34 = *(DerivedStorage + 72);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 72) = 0;
  }

  FigReadWriteLockUnlockForWrite();
  if (v17)
  {
    remoteXPCItem_handleFirstFrameNotificationLatch(v17, 4, cf);
  }

  v97 = a1;
  v35 = a2;
  if (!a2)
  {
    valuePtr[0] = 0;
LABEL_60:
    v54 = v17;
    v55 = OUTLINED_FUNCTION_266_0();
    v39 = CFArrayCreateMutable(v55, v56, v57);
    FigReadWriteLockLockForWrite();
    v58 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v58)
    {
      CFRelease(v58);
    }

    v59 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = v39;
    if (v39)
    {
      CFRetain(v39);
    }

    if (v59)
    {
      CFRelease(v59);
    }

    FigReadWriteLockUnlockForWrite();
    v60 = 0;
    v61 = 0;
    if (v39)
    {
LABEL_69:
      CFRelease(v39);
      v61 = v60;
    }

LABEL_70:
    FigSimpleMutexLock();
    if (!*(DerivedStorage + 264))
    {
      remoteXPCPlayer_reevaluateSpatialTrackingObjectsAndUpdateLabelIfNecessary(v97);
    }

    FigSimpleMutexUnlock();
    if (v54)
    {
      remoteXPCItem_updateLayerSync(v54, v61 > 0, cf);
    }

    v62 = CFNumberCreate(v5, kCFNumberCFIndexType, valuePtr);
    FigPlayerGetFigBaseObject();
    v64 = v63;
    v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v65)
    {
      v66 = v65(v64, @"RequiresNumVideoSlots", v62);
      if (!v62)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v66 = 4294954514;
      if (!v62)
      {
LABEL_79:
        if (!v66)
        {
          if (v54)
          {
            v84 = cf;
            OUTLINED_FUNCTION_38_8();
            v66 = remoteXPCPlayer_connectVideoLayerToPlaybackItem(v75, v76, v77, v78, v79, v80, v81, v82, v84);
            remoteXPCPlayer_updateLayerDurationsWhenItemReady(v97, v54, 1, cf);
          }

          else
          {
            v66 = 0;
          }

          remoteXPCPlayer_updateAirPlayVideoHostLayer(v97);
        }

        v39 = 0;
        goto LABEL_84;
      }
    }

    CFRelease(v62);
    goto LABEL_79;
  }

  v36 = CFArrayGetCount(a2);
  valuePtr[0] = 0;
  if (v36 < 1)
  {
    goto LABEL_60;
  }

  v37 = v36;
  v93 = v23;
  v88 = v17;
  v38 = CFArrayCreateMutable(v5, v36, MEMORY[0x1E695E9C0]);
  v39 = v38;
  v40 = 0;
  v94 = v12;
  if (v12)
  {
    v41 = range == Count;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v99 = v42;
  value = *MEMORY[0x1E695E738];
  v95 = v38;
  while (1)
  {
    v43 = CFArrayGetValueAtIndex(v35, v40);
    if (v99)
    {
      break;
    }

    if (!MutableCopy)
    {
      goto LABEL_52;
    }

LABEL_50:
    if (CFArrayGetCount(MutableCopy) < 1)
    {
      goto LABEL_52;
    }

    v46 = CFArrayGetValueAtIndex(MutableCopy, 0);
    v47 = v46;
    CFArrayRemoveValueAtIndex(MutableCopy, 0);
LABEL_55:
    CFArrayAppendValue(v39, v46);
    if (dword_1ED4CBDB0)
    {
      v50 = DerivedStorage;
      v51 = MutableCopy;
      v52 = v37;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v35 = a2;
      v37 = v52;
      MutableCopy = v51;
      DerivedStorage = v50;
      v39 = v95;
    }

    if (v37 == ++v40)
    {
      goto LABEL_92;
    }
  }

  v103.location = 0;
  v103.length = range;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v94, v103, v43);
  v45 = value;
  if (FirstIndexOfValue != -1)
  {
    v45 = CFArrayGetValueAtIndex(v92, FirstIndexOfValue);
  }

  CFArrayAppendValue(v93, v45);
  if (MutableCopy)
  {
    goto LABEL_50;
  }

LABEL_52:
  v48 = [FigVideoLayer alloc];
  v49 = [(FigVideoLayer *)v48 initWithDeferredTransaction:cf];
  if (v49)
  {
    v46 = v49;
    if (*(DerivedStorage + 171))
    {
      FBLSupportAppendDeferredTransactionChangeToSetAllowsDisplayCompositing(cf, v49, 0, "remoteXPCPlayer_setClientVideoLayerArray");
    }

    goto LABEL_55;
  }

  if (v37 != v40)
  {
    v66 = 4294954434;
    v54 = v88;
    v23 = v93;
    v12 = v94;
    goto LABEL_84;
  }

LABEL_92:
  v60 = CFArrayGetCount(v39);
  valuePtr[0] = v60;
  FigReadWriteLockLockForWrite();
  v68 = *(DerivedStorage + 72);
  v23 = v93;
  *(DerivedStorage + 72) = v93;
  if (v93)
  {
    CFRetain(v93);
  }

  v54 = v88;
  if (v68)
  {
    CFRelease(v68);
  }

  v69 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a2;
  CFRetain(a2);
  if (v69)
  {
    CFRelease(v69);
  }

  v70 = *(DerivedStorage + 64);
  *(DerivedStorage + 64) = v39;
  if (v39)
  {
    CFRetain(v39);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  FigReadWriteLockUnlockForWrite();
  if (v60 >= 1)
  {
    for (j = 0; j < v60; ++j)
    {
      CFArrayGetValueAtIndex(v39, j);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_2_60();
      CMNotificationCenterAddListener();
    }
  }

  FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers();
  FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(cf, 0, v39);
  v72 = OUTLINED_FUNCTION_266_0();
  updated = remoteXPCPlayer_updateVideoLayersBeingServicedAndDisplayList(v72, v73);
  if (!updated)
  {
    v61 = v60;
    v12 = v94;
    if (v39)
    {
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  v66 = updated;
  v12 = v94;
LABEL_84:
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, MutableCopy);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v12);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v89);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v39);
  FPSupport_AppendDeferredTransactionChangeToRelease(cf, v54);
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v92)
  {
    CFRelease(v92);
  }

  objc_autoreleasePoolPop(context);
  return v66;
}

uint64_t remoteXPCPlayer_setMasterClock()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v13 = 0;
  cf = 0;
  value = 0;
  if (*(DerivedStorage + 176) == v0)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v3 = DerivedStorage;
  ObjectID = remoteXPCPlayer_GetObjectID(v1, &v13);
  if (ObjectID)
  {
    goto LABEL_26;
  }

  if (!v0)
  {
    v6 = *(v3 + 176);
    if (v6)
    {
      CFRelease(v6);
      v5 = 0;
      *(v3 + 176) = 0;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  if (CMClockGetHostTimeClock() == v0)
  {
    v5 = 1;
LABEL_13:
    v7 = *(v3 + 176);
    *(v3 + 176) = v0;
    CFRetain(v0);
    if (v7)
    {
      CFRelease(v7);
    }

LABEL_16:
    OUTLINED_FUNCTION_2_22();
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      xpc_dictionary_set_int64(xdict, "MasterClockType", v5);
      if (value)
      {
        xpc_dictionary_set_uint64(xdict, "MasterClockObjectID", value);
      }

      ObjectID = FigXPCMessageSetCFObject();
      if (!ObjectID)
      {
        v8 = FigXPCRemoteClientSendSyncMessage();
        if (!v8)
        {
          *(v3 + 184) = 1;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

  if (!CMClockIsAudioSessionClock(v0))
  {
    ObjectID = FigAudioDeviceClockXPCRemoteGetObjectID();
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, 0, xdict);
    }

    goto LABEL_26;
  }

  ObjectID = FigAudioSessionClockCopyClockConfiguration(v0, &cf);
  if (!ObjectID)
  {
    v5 = 3;
    goto LABEL_13;
  }

LABEL_26:
  v8 = ObjectID;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  FigXPCRelease();
  return v8;
}

double remoteXPCPlayer_reevaluateSpatialTrackingObjectsAndUpdateLabelIfNecessary(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (qword_1ED4CA8B8 != -1)
  {
    dispatch_once(&qword_1ED4CA8B8, &__block_literal_global_27);
  }

  if (!_MergedGlobals_44)
  {
    goto LABEL_31;
  }

  if (!*(DerivedStorage + 264))
  {
    v3 = *(DerivedStorage + 272);
    *(DerivedStorage + 272) = 0;
    if (FigUseVideoReceiverForCALayer())
    {
      FigReadWriteLockLockForRead();
      v4 = *(DerivedStorage + 304);
      if (v4 && CFArrayGetCount(v4))
      {
LABEL_11:
        CFGetAllocator(a1);
        v6 = FigCFSetCreateFromArray();
        goto LABEL_13;
      }
    }

    else
    {
      FigReadWriteLockLockForRead();
      v5 = *(DerivedStorage + 56);
      if (v5 && CFArrayGetCount(v5))
      {
        goto LABEL_11;
      }
    }

    v6 = 0;
LABEL_13:
    FigReadWriteLockUnlockForRead();
    Count = FigCFSetGetCount();
    v8 = *(DerivedStorage + 256);
    if (Count < 1)
    {
      if (v8)
      {
        CFRelease(v8);
        LOBYTE(v9) = 0;
        *(DerivedStorage + 256) = 0;
        if (!v3)
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v9) = 0;
        if (!v3)
        {
          goto LABEL_25;
        }
      }

LABEL_23:
      Difference = FigCFSetCreateDifference();
      if (Difference)
      {
        v13 = Difference;
        OUTLINED_FUNCTION_3_48();
        CFSetApplyFunction(v14, v15, 0);
        CFRelease(v13);
      }

LABEL_25:
      *(DerivedStorage + 272) = v6;
      if ((v9 & 1) == 0)
      {
        FigXPCSendStdSetPropertyMessage();
      }

      if (v3)
      {
        OUTLINED_FUNCTION_424_0();

        CFRelease(v16);
        return result;
      }

LABEL_31:
      OUTLINED_FUNCTION_424_0();
      return result;
    }

    if (v8 || (_os_feature_enabled_impl() & 1) != 0)
    {
      LOBYTE(v9) = 1;
      goto LABEL_17;
    }

    v19 = CMBaseObjectGetDerivedStorage();
    if (qword_1ED4CA8B8 != -1)
    {
      dispatch_once(&qword_1ED4CA8B8, &__block_literal_global_27);
    }

    if (_MergedGlobals_44)
    {
      v20 = getpid();
      v21 = FigAtomicIncrement32();
      v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.coremedia.STS.%s.%d-%d", v19 + 208, v20, v21);
      v9 = v22;
      v23 = *(v19 + 256);
      *(v19 + 256) = v22;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      *(v19 + 264) = 0;
      if (!v9)
      {
LABEL_17:
        OUTLINED_FUNCTION_3_48();
        CFSetApplyFunction(v6, v10, v11);
        if (!v3)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      CFRelease(v9);
    }

    LOBYTE(v9) = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_424_0();

  return FigSignalErrorAtGM(v24);
}

uint64_t remoteXPCPlayer_updateClosedCaptionHostLayerArray(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v39 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v38 = 0;
  FigPlayerGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v11 = 0;
LABEL_12:
    Mutable = 0;
    v18 = 4294954514;
    goto LABEL_13;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = v6(v5, @"DisplayingClosedCaptions", *MEMORY[0x1E695E480], &v38);
  if (v8 || (v8 = FigDeferredTransactionCreate(v7, &cf), v8))
  {
    v18 = v8;
    v11 = 0;
    goto LABEL_56;
  }

  v9 = cf;
  if (v38 != *MEMORY[0x1E695E4D0])
  {
    remoteXPCPlayer_removeClosedCaptionHostLayerArray();
    v11 = 0;
LABEL_43:
    Mutable = 0;
LABEL_54:
    v18 = 0;
    goto LABEL_13;
  }

  FigReadWriteLockLockForRead();
  v10 = *(DerivedStorage + 112);
  if (!v10)
  {
    FigReadWriteLockUnlockForRead();
    v11 = 0;
LABEL_42:
    remoteXPCPlayer_removeClosedCaptionHostLayerArray();
    goto LABEL_43;
  }

  v11 = CFRetain(v10);
  FigReadWriteLockUnlockForRead();
  if (!v11)
  {
    goto LABEL_42;
  }

  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
    goto LABEL_42;
  }

  v13 = Count;
  SInt32 = FigCFNumberCreateSInt32();
  FigPlayerGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v17)
  {
    v18 = 4294954514;
    if (!SInt32)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v18 = v17(v16, 0x1F0B29DD8, SInt32);
  if (SInt32)
  {
LABEL_25:
    CFRelease(SInt32);
  }

LABEL_26:
  if (v18)
  {
LABEL_56:
    Mutable = 0;
    goto LABEL_13;
  }

  FigPlayerGetFigBaseObject();
  v22 = v21;
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    goto LABEL_12;
  }

  v18 = v23(v22, 0x1F0B29DF8, 0, &v39);
  Mutable = 0;
  if (!v18 && v39)
  {
    if (v13 != CFArrayGetCount(v39))
    {
      Mutable = 0;
      v18 = 4294954436;
      goto LABEL_13;
    }

    v24 = *(DerivedStorage + 120);
    if (v24)
    {
      v24 = CFArrayGetCount(v24);
    }

    if (v24 <= v13)
    {
      if (v24 < v13)
      {
        while (1)
        {
          v30 = *(DerivedStorage + 120);
          if (v30)
          {
            v30 = CFArrayGetCount(v30);
          }

          if (v30 >= v13)
          {
            break;
          }

          CFArrayAppendValue(*(DerivedStorage + 120), +[FigBaseCALayerHost layer]);
        }
      }

      Mutable = 0;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_9_2();
      Mutable = CFArrayCreateMutable(v25, v26, v27);
      while (1)
      {
        v28 = *(DerivedStorage + 120);
        if (v28)
        {
          v28 = CFArrayGetCount(v28);
        }

        if (v28 <= v13)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 120), 0);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(DerivedStorage + 120), 0);
      }

      FPSupport_AppendDeferredTransactionChangeForRemovingEachLayerInArrayFromItsSuperlayer(v9, Mutable, "remoteXPCPlayer_updateClosedCaptionHostLayerArray");
    }

    CFRetain(v11);
    if (a1)
    {
      CFRetain(a1);
    }

    OUTLINED_FUNCTION_2_49();
    v32 = 3221225472;
    v33 = __remoteXPCPlayer_updateClosedCaptionHostLayerArray_block_invoke;
    v34 = &__block_descriptor_48_e5_v8__0l;
    v35 = v11;
    v36 = a1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    FPSupport_AppendDeferredTransactionChangeForUpdatingHostLayersInLayers(v9, v39, *(DerivedStorage + 120), v11, "remoteXPCPlayer_updateClosedCaptionHostLayerArray");
    goto LABEL_54;
  }

LABEL_13:
  FigDeferredTransactionCommit(cf, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  objc_autoreleasePoolPop(v2);
  return v18;
}

uint64_t remoteXPCItem_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFDateRef *a4)
{
  v35 = 0;
  if (!a1 || !a2 || !a4)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v11 = v27;
    v8 = 0;
    goto LABEL_31;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = remoteXPCItem_copyOwningPlayer(a1);
  ObjectID = remoteXPCItem_GetObjectID(a1, &v35);
  if (ObjectID)
  {
    goto LABEL_46;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v10 = DerivedStorage[5];
    if (!v10)
    {
LABEL_8:
      v11 = 0;
      *a4 = v10;
      goto LABEL_31;
    }

LABEL_7:
    v10 = CFRetain(v10);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"SynchronizedLayers"))
  {
    FigSimpleMutexLock();
    v12 = DerivedStorage[20];
    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *a4 = v12;
    FigSimpleMutexUnlock();
    goto LABEL_13;
  }

  if (!CFEqual(a2, @"CPEProtector"))
  {
    if (CFEqual(a2, @"ImageQueueGauge"))
    {
      v25 = a1;
      v26 = 1231647079;
    }

    else
    {
      if (!CFEqual(a2, @"PriorImageQueueGauge"))
      {
        if (CFEqual(a2, @"VisualContextArray"))
        {
          OUTLINED_FUNCTION_2_49();
          v30 = 3221225472;
          v31 = __remoteXPCItem_CopyProperty_block_invoke;
          v32 = &__block_descriptor_48_e5_v8__0l;
          v33 = a4;
          v34 = DerivedStorage;
          dispatch_sync(v22, &block);
LABEL_13:
          v11 = 0;
          goto LABEL_31;
        }

        if (CFEqual(a2, @"VideoCompositor"))
        {
          v10 = DerivedStorage[26];
          if (v10)
          {
            goto LABEL_7;
          }
        }

        else if (CFEqual(a2, @"currentDate") || CFEqual(a2, @"currentDateAndTime"))
        {
          if (remoteXPCItem_copyCurrentDateProperty(a1, v35, a2, a4))
          {
            goto LABEL_13;
          }
        }

        else if (CFEqual(a2, @"MetricEventTimeline"))
        {
          remoteXPCItem_copyMetricEventTimeline(a1, a4);
          goto LABEL_13;
        }

        ObjectID = FigXPCSendStdCopyPropertyMessage();
LABEL_46:
        v11 = ObjectID;
        goto LABEL_31;
      }

      v25 = a1;
      v26 = 1232103783;
    }

    remoteXPCItem_copyImageQueueGauge(v25, v26, a4, v17, v18, v19, v20, v21, v28, block, v30, v31, v32, v33, v34, v35, xdict, v37, cf, v39);
    goto LABEL_46;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v39 = 0;
  v37 = 0;
  cf = 0;
  xdict = 0;
  if (*(v13 + 9))
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, block, v30);
    goto LABEL_50;
  }

  v14 = remoteXPCItem_GetObjectID(a1, &v39);
  if (v14)
  {
    goto LABEL_50;
  }

  v14 = FigXPCCreateBasicMessage();
  if (v14)
  {
    goto LABEL_50;
  }

  v14 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v14)
  {
    goto LABEL_50;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    v16 = 0;
    goto LABEL_27;
  }

  FigCPEProtectorXPCRemoteRetainCopiedCPEProtector(uint64, &cf);
  if (v14)
  {
LABEL_50:
    v11 = v14;
    goto LABEL_28;
  }

  v16 = cf;
LABEL_27:
  v11 = 0;
  *a4 = v16;
  cf = 0;
LABEL_28:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_51_7(qword_1ED4CA8A0, v23, "remoteXPCItem_copyCPEProtector");
LABEL_31:
  FigXPCRelease();
  FigXPCRelease();
  if (v8)
  {
    CFRelease(v8);
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

void remoteXPCItem_copyImageQueueGauge(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  a12 = 0;
  if (v23)
  {
    if (*(DerivedStorage + 9))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else if (!remoteXPCItem_GetObjectID(v25, &a12) && !FigXPCCreateBasicMessage())
    {
      OUTLINED_FUNCTION_5_44();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
        if (!uint64)
        {
          v28 = 0;
          goto LABEL_10;
        }

        if (!FigImageQueueGaugeXPCRemoteRetainCopiedImageQueueGauge(uint64, &cf))
        {
          v28 = cf;
LABEL_10:
          *v23 = v28;
          cf = 0;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v29, "remoteXPCItem_copyImageQueueGauge");
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCItem_copyMetricEventTimeline(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  if (a2)
  {
    if (*(DerivedStorage + 9))
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else if (!remoteXPCItem_GetObjectID(a1, &v6))
    {
      OUTLINED_FUNCTION_2_22();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_10_23();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          if (xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]))
          {
            FigMetricEventTimelineCreateRemoteWithObjectID();
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  return FigXPCRelease();
}

__CFArray *remoteXPCItem_copyTagCollectionArrayAsDataArray(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v6 = Count;
      Mutable = CFArrayCreateMutable(v3, Count, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
        return Mutable;
      }

      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v8);
        v10 = CMTagCollectionCopyAsData(ValueAtIndex, v3);
        if (!v10)
        {
          break;
        }

        v11 = v10;
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v11);
        if (v6 == ++v8)
        {
          return Mutable;
        }
      }

      CFRelease(Mutable);
    }
  }

  return 0;
}

uint64_t remoteXPCItem_GetDimensions(uint64_t a1, float *a2, float *a3)
{
  v13 = 0;
  ObjectID = remoteXPCItem_GetObjectID(a1, &v13);
  if (ObjectID || (OUTLINED_FUNCTION_2_22(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (OUTLINED_FUNCTION_10_23(), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
  {
    v9 = ObjectID;
  }

  else
  {
    v6 = xpc_dictionary_get_double(0, "Width");
    v7 = xpc_dictionary_get_double(0, "Height");
    if (a2)
    {
      v8 = v6;
      *a2 = v8;
    }

    v9 = 0;
    if (a3)
    {
      v10 = v7;
      *a3 = v10;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v11, "remoteXPCItem_GetDimensions");
  return v9;
}

uint64_t remoteXPCItem_GetDuration(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  ObjectID = remoteXPCItem_GetObjectID(a1, &v9);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0), ObjectID))
  {
    CMTime = ObjectID;
  }

  else if (a2)
  {
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      *a2 = v7;
      *(a2 + 16) = v8;
    }
  }

  else
  {
    CMTime = 0;
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v5, "remoteXPCItem_GetDuration");
  return CMTime;
}

uint64_t remoteXPCItem_SetCurrentTime(const void *a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_7_26();
  ObjectID = remoteXPCItem_GetObjectID(v5, v6);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_6_39(xdict, 0x196EFD1EALL, v8, v9, v10, v11, v12, v13, v17, v18), ObjectID))
  {
    v14 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(xdict, "TimeFlags", a3);
    v14 = OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0);
    if (!v14)
    {
      remoteXPCItem_HandleTimebaseSynchronizationUpdate(a1, v19);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v15, "remoteXPCItem_SetCurrentTime");
  return v14;
}

void remoteXPCItem_CopyTrackProperty(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t xdict, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_45_6();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  a11 = 0;
  v34 = remoteXPCItem_copyOwningPlayer(v32);
  if (!v29 || !v27)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_16;
  }

  if (remoteXPCItem_GetObjectID(v33, &a11))
  {
    goto LABEL_16;
  }

  if (!CFEqual(@"FormatDescriptionArray", v29))
  {
    OUTLINED_FUNCTION_10_23();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "TrackID", v31);
      if (!FigXPCMessageSetCFString())
      {
        OUTLINED_FUNCTION_5_44();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          FigXPCMessageCopyCFObject();
        }
      }
    }

LABEL_16:
    if (!v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_26();
  if (!remoteXPCItem_GetObjectID(v33, v35))
  {
    OUTLINED_FUNCTION_16_14();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(xdict, "TrackID", v31);
      if (!OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0))
      {
        FigXPCMessageCopyFormatDescriptionArray();
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v34)
  {
LABEL_10:
    CFRelease(v34);
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v36, "remoteXPCItem_CopyTrackProperty");
  OUTLINED_FUNCTION_44_9();
}

uint64_t remoteXPCItem_MakeReadyForInspection(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v7 = 0;
  if (remoteXPCItem_GetObjectID(a1, &v7) || (OUTLINED_FUNCTION_2_22(), FigXPCCreateBasicMessage()) || FigXPCMessageSetCFArray())
  {
    OUTLINED_FUNCTION_37_8();
  }

  else
  {
    OUTLINED_FUNCTION_10_23();
    v3 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (a3 && !v3)
    {
      *a3 = xpc_dictionary_get_BOOL(0, "AlreadyReady");
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(qword_1ED4CA8A0, v5, "remoteXPCItem_MakeReadyForInspection");
  return v3;
}

void remoteXPCItem_CopyCommonMetadata(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFDataRef theData, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v22;
  a12 = 0;
  if (!v23 || !remoteXPCItem_GetObjectID(v21, &a12) && (OUTLINED_FUNCTION_2_22(), !FigXPCCreateBasicMessage()) && !FigXPCMessageSetCFArray() && (OUTLINED_FUNCTION_10_23(), !FigXPCRemoteClientSendSyncMessageCreatingReply()) && !FigXPCMessageCopyCFData())
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v24, "remoteXPCItem_CopyCommonMetadata");
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCItem_GetNextThumbnailTime(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v17 = 0;
  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, DWORD2(v15), v16);
LABEL_9:
    CMTime = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v17);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_14();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  ObjectID = OUTLINED_FUNCTION_6_39(0, 0x196EFD1EALL, v6, v7, v8, v9, v10, v11, v15, v16);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  xpc_dictionary_set_uint64(0, "ThumbnailFlags", a3);
  CMTime = OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0);
  if (!CMTime)
  {
    CMTime = FigXPCMessageGetCMTime();
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v13, "remoteXPCItem_GetNextThumbnailTime");
  return CMTime;
}

uint64_t remoteXPCItem_SetTrackProperty(uint64_t a1, int a2, const void *a3, CFNumberRef a4)
{
  v20[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = remoteXPCItem_copyOwningPlayer(a1);
  if (!a3)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_38;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, v20);
  if (ObjectID)
  {
LABEL_38:
    v16 = ObjectID;
    v14 = 0;
    goto LABEL_19;
  }

  if (CFEqual(@"AudioProcessingTap", a3))
  {
    valuePtr = 0;
    if (a4 && (v12 = CFGetTypeID(a4), v12 != MTAudioProcessingTapGetTypeID()))
    {
      OUTLINED_FUNCTION_374();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {
      FigSimpleMutexLock();
      v13 = *(DerivedStorage + 200);
      *(DerivedStorage + 200) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      FigSimpleMutexUnlock();
      if (!a4)
      {
        goto LABEL_13;
      }

      MTAudioProcessingTapXPCRemoteGetObjectID(a4, &valuePtr);
      if (!ObjectID)
      {
        a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
LABEL_13:
        v14 = a4;
        goto LABEL_14;
      }
    }

    goto LABEL_38;
  }

  if (!CFEqual(@"ExtractionIDArray", a3))
  {
    v14 = 0;
LABEL_14:
    OUTLINED_FUNCTION_10_23();
    v15 = FigXPCCreateBasicMessage();
    if (!v15)
    {
      xpc_dictionary_set_uint64(0, "TrackID", a2);
      v15 = FigXPCMessageSetCFString();
      if (!v15)
      {
        v15 = FigXPCMessageSetCFObject();
        if (!v15)
        {
          v15 = FigXPCRemoteClientSendSyncMessage();
        }
      }
    }

    v16 = v15;
    goto LABEL_19;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  memset(&v20[1], 0, 32);
  if (*(v18 + 192))
  {
    v16 = 0;
  }

  else
  {
    updated = remoteXPCPlayer_GetObjectID(v9, &valuePtr);
    if (!updated)
    {
      updated = FigXPCCreateBasicMessage();
      if (!updated)
      {
        updated = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!updated)
        {
          updated = FigXPCCreateBasicMessage();
          if (!updated)
          {
            FigRemote_ShouldConnectToMediaparserdForFileParsing();
            FigRemote_ShouldConnectToMediaplaybackd();
            updated = FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2();
            if (!updated)
            {
              updated = OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0);
            }
          }
        }
      }
    }

    v16 = updated;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  v14 = 0;
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_19:
  OUTLINED_FUNCTION_51_7(qword_1ED4CA8A0, v11, "remoteXPCItem_SetTrackProperty");
  if (v9)
  {
    CFRelease(v9);
  }

  FigXPCRelease();
  if (v14)
  {
    CFRelease(v14);
  }

  return v16;
}

uint64_t remoteXPCItem_CopyFormatReader(uint64_t a1, void *a2)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  xdict = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, xdict, v19);
LABEL_9:
    v2 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v20);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_23();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "FormatReaderObjectID");
  v6 = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 0, &v17);
  v14 = OUTLINED_FUNCTION_41_8(v6, v7, v8, v9, v10, v11, v12, v13, v17);
  if (v2)
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    *a2 = v14;
    v17 = 0;
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v15, "remoteXPCItem_CopyFormatReader");
  return v2;
}

uint64_t remoteXPCItem_SeekToDateWithID(uint64_t a1, uint64_t a2, int a3)
{
  v34 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v34, v35);
    goto LABEL_7;
  }

  if (remoteXPCItem_GetObjectID(a1, &v34))
  {
LABEL_7:
    OUTLINED_FUNCTION_37_8();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_5_44();
  v5 = FigXPCCreateBasicMessage();
  OUTLINED_FUNCTION_18_12(v5, v6, v7, v8, v9, v10, v11, v12, 0);
  if (!v3)
  {
    v13 = FigXPCMessageSetCFDate();
    v21 = OUTLINED_FUNCTION_18_12(v13, v14, v15, v16, v17, v18, v19, v20, v32);
    xpc_dictionary_set_int64(v21, "SeekID", a3);
    v22 = FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_18_12(v22, v23, v24, v25, v26, v27, v28, v29, v33);
  }

LABEL_5:
  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(qword_1ED4CA8A0, v30, "remoteXPCItem_SeekToDateWithID");
  return v3;
}

uint64_t remoteXPCItem_CopyAsset(uint64_t a1, void *a2)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  xdict = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, xdict, v19);
LABEL_9:
    v2 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCItem_GetObjectID(a1, &v20);
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_10_23();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "AssetObjectID");
  FigAssetXPCRemoteRetainCopiedAsset(uint64, &v17);
  v14 = OUTLINED_FUNCTION_41_8(v6, v7, v8, v9, v10, v11, v12, v13, v17);
  if (v2)
  {
    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    *a2 = v14;
    v17 = 0;
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v15, "remoteXPCItem_CopyAsset");
  return v2;
}

void remoteXPCItem_ExtractAndRetainNextSampleBuffer(uint64_t a1, int a2, int a3, CFTypeRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  v11 = 0;
  cf = 0;
  CMBaseObjectGetDerivedStorage();
  v8 = remoteXPCItem_copyOwningPlayer(a1);
  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
  }

  else if (!remoteXPCItem_GetObjectID(a1, &v11))
  {
    OUTLINED_FUNCTION_2_22();
    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "TrackID", a2);
      xpc_dictionary_set_uint64(0, "ExtractionID", a3);
      OUTLINED_FUNCTION_10_23();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply() && !FigXPCMessageCopyCMSampleBuffer())
      {
        *a4 = 0;
        cf = 0;
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v9, "remoteXPCItem_ExtractAndRetainNextSampleBuffer");
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  OUTLINED_FUNCTION_424_0();
}

uint64_t remoteXPCItem_SetCurrentTimeWithOptions(const void *a1)
{
  OUTLINED_FUNCTION_7_26();
  ObjectID = remoteXPCItem_GetObjectID(v2, v3);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = OUTLINED_FUNCTION_6_39(v17, 0x196EFD1EALL, v5, v6, v7, v8, v9, v10, v14, v15), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v11 = ObjectID;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_25_13(qword_1ED4CA8A0);
    if (!v11)
    {
      remoteXPCItem_HandleTimebaseSynchronizationUpdate(a1, v16);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v12, "remoteXPCItem_SetCurrentTimeWithOptions");
  return v11;
}

void remoteXPCPlayer_AddToPlayQueue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFDataRef theData, xpc_object_t a10, xpc_object_t xdict, uint64_t a12, uint64_t value, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_45_6();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  a14 = 0;
  a12 = 0;
  if (!v29)
  {
    goto LABEL_16;
  }

  v34 = DerivedStorage;
  if (!remoteXPCPlayer_GetObjectID(v31, &a14) && !remoteXPCItem_GetObjectID(v29, &value))
  {
    v35 = remoteXPCItem_copyOwningPlayer(v29);
    v36 = v35;
    if (v35)
    {
      CFRelease(v35);
    }

    if (v36 != v31)
    {
      goto LABEL_19;
    }

    if (v27)
    {
      if (remoteXPCItem_GetObjectID(v27, &a12))
      {
        goto LABEL_17;
      }

      v37 = remoteXPCItem_copyOwningPlayer(v27);
      v38 = v37;
      if (v37)
      {
        CFRelease(v37);
      }

      if (v38 != v31)
      {
LABEL_19:
        OUTLINED_FUNCTION_243();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_17;
      }
    }

    if (!FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "ItemObjectID", value);
      xpc_dictionary_set_uint64(0, "AfterItemObjectID", a12);
      OUTLINED_FUNCTION_10_23();
      if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
      {
        FigSimpleMutexLock();
        CFSetAddValue(*(v34 + 32), v29);
        FigSimpleMutexUnlock();
        if (xpc_dictionary_get_BOOL(0, "AddedItemIsNowCurrent") && !FigXPCMessageCopyCFData())
        {
LABEL_16:
          OUTLINED_FUNCTION_243();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }
      }
    }
  }

LABEL_17:
  FigDeferredTransactionCommit(0, 0);
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_51_7(qword_1ED4CA8A0, v39, "remoteXPCPlayer_AddToPlayQueue");
  objc_autoreleasePoolPop(v32);
  OUTLINED_FUNCTION_44_9();
}

void remoteXPCPlayer_RemoveFromPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  a11 = 0;
  a12 = 0;
  if (!v20)
  {
    goto LABEL_34;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 9))
  {
    goto LABEL_30;
  }

  v25 = remoteXPCItem_copyOwningPlayer(v20);
  v26 = v25;
  if (v25)
  {
    CFRelease(v25);
  }

  if (v26 != v21)
  {
LABEL_30:
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_28;
  }

  if (!remoteXPCItem_GetObjectID(v20, &a11))
  {
LABEL_34:
    if (!remoteXPCPlayer_GetObjectID(v21, &a12) && !FigXPCCreateBasicMessage())
    {
      xpc_dictionary_set_uint64(0, "ItemObjectID", a11);
      if (!FigXPCRemoteClientSendSyncMessage())
      {
        FigSimpleMutexLock();
        v27 = *(DerivedStorage + 32);
        if (v20)
        {
          CFSetRemoveValue(v27, v20);
        }

        else
        {
          CFSetRemoveAllValues(v27);
        }

        FigSimpleMutexUnlock();
        FigSimpleMutexLock();
        v28 = remoteXPCPlayer_copySyncItem(v21);
        v29 = v28;
        if (v20)
        {
          v30 = v28 == v20;
        }

        else
        {
          v30 = 1;
        }

        v31 = v30;
        if (v30)
        {
          v32 = *(DerivedStorage + 80);
          if (v32)
          {
            CFRelease(v32);
            *(DerivedStorage + 80) = 0;
          }
        }

        FigSimpleMutexUnlock();
        v33 = v31 ^ 1;
        if (!v29)
        {
          v33 = 1;
        }

        if ((v33 & 1) == 0)
        {
          remoteXPCItem_updateLayerSync(v29, 0, 0);
          goto LABEL_27;
        }

        if (v29)
        {
LABEL_27:
          CFRelease(v29);
        }
      }
    }
  }

LABEL_28:
  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v34, "remoteXPCPlayer_RemoveFromPlayQueue");
  OUTLINED_FUNCTION_860();
}

void remoteXPCPlayer_CopyPlayQueueItem(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t xdict, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v23;
  a11 = 0;
  a12 = 0;
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v22;
  v26 = v21;
  if (remoteXPCPlayer_GetObjectID(v21, &a12))
  {
    goto LABEL_8;
  }

  if (v25)
  {
    v28 = remoteXPCItem_copyOwningPlayer(v25);
    v29 = v28;
    if (v28)
    {
      CFRelease(v28);
    }

    if (v29 == v26)
    {
      if (remoteXPCItem_GetObjectID(v25, &a11))
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    }

LABEL_14:
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_8;
  }

LABEL_4:
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_uint64(0, "AfterItemObjectID", a11);
    OUTLINED_FUNCTION_5_44();
    if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      if (xpc_dictionary_get_uint64(0, "ItemObjectID"))
      {
        FigXPCRemoteClientLookupAndRetainAssociatedObject();
      }
    }
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v27, "remoteXPCPlayer_CopyPlayQueueItem");
  OUTLINED_FUNCTION_860();
}

uint64_t remoteXPCPlayer_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v5 = *(DerivedStorage + 188);
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v19);
  if (ObjectID || (OUTLINED_FUNCTION_5_44(), ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v15 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_double(0, "Rate", a2);
    v15 = OUTLINED_FUNCTION_50_5(v7, v8, v9, v10, v11, v12, v13, v14, 0);
    if (v15)
    {
      v16 = v5;
    }

    else
    {
      v16 = a2;
    }

    *(DerivedStorage + 188) = v16;
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v17, "remoteXPCPlayer_SetRate");
  return v15;
}

uint64_t remoteXPCPlayer_SetRateWithFade(uint64_t a1, uint64_t *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v18);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(0, "Rate", a3), ObjectID = OUTLINED_FUNCTION_20_9(0, 0x196ED4394, v8, v9, v10, v11, v12, v13, *a2, a2[1], v17), ObjectID))
  {
    v14 = ObjectID;
  }

  else
  {
    v14 = FigXPCRemoteClientSendSyncMessage();
    if (!v14)
    {
      *(DerivedStorage + 188) = a3;
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v15, "remoteXPCPlayer_SetRateWithFade");
  return v14;
}

uint64_t remoteXPCPlayer_StartPreroll(float a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(v6, v7);
  if (ObjectID)
  {
    v3 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    v17 = OUTLINED_FUNCTION_41_8(v9, v10, v11, v12, v13, v14, v15, v16, xdict);
    if (!v3)
    {
      xpc_dictionary_set_double(v17, "Rate", a1);
      xpc_dictionary_set_int64(xdicta, "PrerollID", a3);
      v26 = OUTLINED_FUNCTION_50_5(v18, v19, v20, v21, v22, v23, v24, v25, xdicta);
      OUTLINED_FUNCTION_41_8(v26, v27, v28, v29, v30, v31, v32, v33, xdictb);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(qword_1ED4CA8A0, v34, "remoteXPCPlayer_StartPreroll");
  return v3;
}

uint64_t remoteXPCPlayer_StepByCount(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_21_12();
  if (remoteXPCPlayer_GetObjectID(v4, v5))
  {
    OUTLINED_FUNCTION_37_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v6 = FigXPCCreateBasicMessage();
    v14 = OUTLINED_FUNCTION_18_12(v6, v7, v8, v9, v10, v11, v12, v13, v33);
    if (!v2)
    {
      xpc_dictionary_set_int64(v14, "StepCount", a2);
      v23 = OUTLINED_FUNCTION_50_5(v15, v16, v17, v18, v19, v20, v21, v22, v34);
      OUTLINED_FUNCTION_18_12(v23, v24, v25, v26, v27, v28, v29, v30, v35);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(qword_1ED4CA8A0, v31, "remoteXPCPlayer_StepByCount");
  return v2;
}

uint64_t remoteXPCPlayer_SetRateAndAnchorTime(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v29);
  if (ObjectID || (OUTLINED_FUNCTION_16_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(0, "Rate", a5), ObjectID = OUTLINED_FUNCTION_20_9(0, 0x196ED4413, v12, v13, v14, v15, v16, v17, *a2, a2[1], v27), ObjectID) || (ObjectID = OUTLINED_FUNCTION_20_9(0, 0x196EC8C7ALL, v18, v19, v20, v21, v22, v23, *a3, a3[1], v28), ObjectID))
  {
    v24 = ObjectID;
  }

  else
  {
    xpc_dictionary_set_uint64(0, "Flags", a4);
    v24 = FigXPCRemoteClientSendSyncMessage();
    if (!v24)
    {
      *(DerivedStorage + 188) = a5;
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_26_13(qword_1ED4CA8A0, v25, "remoteXPCPlayer_SetRateAndAnchorTime");
  return v24;
}

uint64_t remoteXPCPlayer_CreatePlaybackItemFromAsset(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, void *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954436, "<<<< PlayerRemoteXPC >>>>", 7513, v5);
    goto LABEL_29;
  }

  if (!a5)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBDA8, 4294954436, "<<<< PlayerRemoteXPC >>>>", 7514, v5);
    goto LABEL_29;
  }

  ObjectID = remoteXPCPlayer_GetObjectID(a1, &v30);
  if (ObjectID)
  {
LABEL_29:
    started = ObjectID;
    goto LABEL_22;
  }

  v10 = *MEMORY[0x1E695E480];
  theString = 0;
  cf = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *__str = 0u;
  FigPlaybackItemGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase)
  {
    goto LABEL_26;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = (DerivedStorage + 260);
  *(DerivedStorage + 260) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, v13, 10, 0x600u);
  }

  HostTimeClock = CMClockGetHostTimeClock();
  OnlyTimebase = CMTimebaseCreateWithSourceClock(v10, HostTimeClock, (DerivedStorage + 48));
  if (OnlyTimebase || (OnlyTimebase = CMTimebaseCreateWithSourceTimebase(v10, *(DerivedStorage + 48), (DerivedStorage + 32)), OnlyTimebase) || (OnlyTimebase = CMTimebaseCreateReadOnlyTimebase(), OnlyTimebase))
  {
LABEL_26:
    started = OnlyTimebase;
  }

  else
  {
    v15 = FigReentrantMutexCreate();
    *(DerivedStorage + 16) = v15;
    if (v15)
    {
      v16 = FigReentrantMutexCreate();
      *(DerivedStorage + 144) = v16;
      if (v16)
      {
        v17 = FigSimpleMutexCreate();
        *(DerivedStorage + 168) = v17;
        if (v17)
        {
          v18 = FigSimpleMutexCreate();
          *(DerivedStorage + 136) = v18;
          if (v18)
          {
            snprintf(__str, 0x50uLL, "com.apple.coremedia.visualContextSyncQueue.%s", v13);
            *(DerivedStorage + 184) = dispatch_queue_create(__str, 0);
            v19 = cf;
            goto LABEL_15;
          }
        }
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v5, 0);
    started = v26;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (started)
  {
    goto LABEL_22;
  }

  v19 = 0;
LABEL_15:
  v20 = FigXPCCreateBasicMessage();
  if (v20 || (v20 = FigAssetXPCRemoteGetObjectID(a2, &v29), v20) || (xpc_dictionary_set_uint64(0, "AssetObjectID", v29), xpc_dictionary_set_uint64(0, "ItemCreateFlags", a3), v20 = FigXPCMessageSetCFDictionary(), v20) || (OUTLINED_FUNCTION_2_22(), v20 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v20) || (uint64 = xpc_dictionary_get_uint64(v28, "ItemObjectID"), v22 = CMBaseObjectGetDerivedStorage(), v23 = CMBaseObjectGetDerivedStorage(), *v22 = uint64, v20 = FigXPCRemoteClientAssociateObject(), v20))
  {
    started = v20;
  }

  else
  {
    v22[3] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    CFSetAddValue(*(v23 + 16), v19);
    started = FigStartMonitoringMediaServicesProcessDeath();
    if (!started)
    {
      *a5 = v19;
      goto LABEL_22;
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

LABEL_22:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return started;
}

uint64_t remoteXPCPlayer_SetRateWithOptions(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(a1, v5);
  if (ObjectID || (OUTLINED_FUNCTION_5_44(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (xpc_dictionary_set_double(xdict, "Rate", a2), ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v7 = ObjectID;
  }

  else
  {
    v7 = FigXPCRemoteClientSendSyncMessage();
    if (!v7)
    {
      *(DerivedStorage + 188) = a2;
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(qword_1ED4CA8A0, v8, "remoteXPCPlayer_SetRateWithOptions");
  return v7;
}

uint64_t remoteXPCPlayer_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v20 = 0;
  memset(cf, 0, sizeof(cf));
  v18 = 0;
  v16 = 0;
  v17 = 0;
  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, v17);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_433();
  ObjectID = remoteXPCPlayer_GetObjectID(v6, &v20);
  if (ObjectID)
  {
    goto LABEL_14;
  }

  ObjectID = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v4, v3, 0, remoteXPCPlayer_handleSetProperty, &v18, cf, &v17);
  if (ObjectID)
  {
    goto LABEL_14;
  }

  if (v18)
  {
    v13 = 0;
LABEL_13:
    ObjectID = FPSupport_CopyCombinedSetPropertiesErrDictionary(v17, v13, a3);
LABEL_14:
    v9 = ObjectID;
    goto LABEL_15;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_14;
  }

  ObjectID = FigXPCMessageSetCFDictionary();
  if (ObjectID)
  {
    goto LABEL_14;
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v8)
  {
    v12 = FigXPCMessageCopyCFDictionary();
LABEL_11:
    v9 = v12;
    if (v12)
    {
LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }

    v13 = v16;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = FigCFDictionaryCopyArrayOfKeys();
  v11 = FigCFCopyCompactDescription();
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_16:
  FigXPCRemoteClientKillServerOnTimeout();
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

uint64_t remoteXPCPlayer_BeginInterruption()
{
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(v0, v1);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(qword_1ED4CA8A0, v5, "remoteXPCPlayer_BeginInterruption");
  return v4;
}

uint64_t remoteXPCPlayer_EndInterruption()
{
  OUTLINED_FUNCTION_21_12();
  ObjectID = remoteXPCPlayer_GetObjectID(v0, v1);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v3 = FigXPCCreateBasicMessage();
    if (v3 || (v3 = FigXPCMessageSetCFString(), v3))
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(qword_1ED4CA8A0, v5, "remoteXPCPlayer_EndInterruption");
  return v4;
}

uint64_t remoteXPCPlayer_SetConnectionActive(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_21_12();
  if (remoteXPCPlayer_GetObjectID(v4, v5))
  {
    OUTLINED_FUNCTION_37_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v6 = FigXPCCreateBasicMessage();
    v14 = OUTLINED_FUNCTION_18_12(v6, v7, v8, v9, v10, v11, v12, v13, v33);
    if (!v2)
    {
      xpc_dictionary_set_BOOL(v14, "Active", a2 != 0);
      v23 = OUTLINED_FUNCTION_50_5(v15, v16, v17, v18, v19, v20, v21, v22, v34);
      OUTLINED_FUNCTION_18_12(v23, v24, v25, v26, v27, v28, v29, v30, v35);
    }
  }

  FigXPCRelease();
  OUTLINED_FUNCTION_30_10(qword_1ED4CA8A0, v31, "remoteXPCPlayer_SetConnectionActive");
  return v2;
}

void remoteXPCPlayer_updateAirPlayVideoHostLayer_cold_2(uint64_t *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], a1);
  v9 = *a1;
  if (!v8)
  {
    FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(v9, *a2);
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    FigDeferredTransactionCommit(*a1, 0);
    v9 = *a1;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *a4 = a3;
}

uint64_t remoteXPCPlayer_CopyProperty_cold_5(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  if (*(a1 + 264))
  {
    v4 = *(a1 + 256);
    if (v4)
    {
      v4 = CFRetain(v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;

  return FigSimpleMutexUnlock();
}

uint64_t remoteXPCPlayer_CopyProperty_cold_6(uint64_t *a1)
{
  result = FigCFNumberCreateSInt32();
  *a1 = result;
  return result;
}

CFTypeRef remoteXPCPlayer_CopyProperty_cold_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 171))
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

CFTypeRef remoteXPCPlayer_CopyProperty_cold_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!*(a1 + 168))
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v3);
  *a2 = result;
  return result;
}

void remoteXPCPlayer_handleSetProperty_cold_5(uint64_t a1, const void *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_38_8();
  *a3 = remoteXPCPlayer_connectVideoLayerToPlaybackItem(v5, v6, v7, v8, v9, v10, 0, 0, 0);

  CFRelease(a2);
}

uint64_t remoteXPCItem_Invalidate_cold_1(void *a1, const void *a2)
{
  FigSimpleMutexLock();
  if (remoteXPCItem_isSyncItem(a2))
  {
    v4 = a1[10];
    if (v4)
    {
      CFRelease(v4);
      a1[10] = 0;
    }
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v5 = a1[4];
  if (v5)
  {
    CFSetRemoveValue(v5, a2);
  }

  return FigSimpleMutexUnlock();
}

void remoteXPCItem_handleSetProperty_cold_6(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_180_1();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  *a3 = v6;
  CFRelease(v4);
  CFRelease(v3);
}

uint64_t figremote_CreateCGImageParametersDictonary(CGImage *a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v45 = 0;
  v46 = 0;
  keys[0] = @"CGImageWidth";
  Width = CGImageGetWidth(a1);
  v52 = Width;
  v7 = *MEMORY[0x1E695E480];
  values[0] = OUTLINED_FUNCTION_2_61(Width, v8, &v52);
  keys[1] = @"CGImageHeight";
  Height = CGImageGetHeight(a1);
  v51 = Height;
  values[1] = OUTLINED_FUNCTION_2_61(Height, v10, &v51);
  keys[2] = @"CGImageBitsPerComponent";
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  v50 = BitsPerComponent;
  values[2] = OUTLINED_FUNCTION_2_61(BitsPerComponent, v12, &v50);
  keys[3] = @"CGImageBitsPerPixel";
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  v49 = BitsPerPixel;
  values[3] = OUTLINED_FUNCTION_2_61(BitsPerPixel, v14, &v49);
  keys[4] = @"CGImageBytesPerRow";
  BytesPerRow = CGImageGetBytesPerRow(a1);
  v48 = BytesPerRow;
  values[4] = OUTLINED_FUNCTION_2_61(BytesPerRow, v16, &v48);
  ColorSpace = CGImageGetColorSpace(a1);
  Type = CGColorSpaceGetType();
  v47 = Type;
  keys[5] = @"CGImageColorSpaceType";
  values[5] = OUTLINED_FUNCTION_2_61(Type, v19, &v47);
  if (v47 == 1)
  {
    cf = 0;
    v20 = 6;
  }

  else
  {
    v21 = CGColorSpaceCopyPropertyList(ColorSpace);
    v22 = MEMORY[0x19A8D2A70](v21, a2, &v46);
    if (v22)
    {
      v39 = v22;
      LODWORD(v25) = 6;
      if (!v21)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    cf = v21;
    *&v59 = @"CGImageColorSpacePList";
    *&v54 = v46;
    v20 = 7;
  }

  keys[v20] = @"CGImageBitmapInfo";
  BitmapInfo = CGImageGetBitmapInfo(a1);
  HIDWORD(v45) = BitmapInfo;
  values[v20] = OUTLINED_FUNCTION_2_61(BitmapInfo, v24, &v45 + 4);
  LODWORD(v25) = v20 + 1;
  Decode = CGImageGetDecode(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  if (Decode)
  {
    v28 = NumberOfComponents;
    if (NumberOfComponents)
    {
      Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_24;
      }

      v30 = Mutable;
      v31 = 2 * v28;
      if (2 * v28)
      {
        while (1)
        {
          v32 = CFNumberCreate(v7, kCFNumberCGFloatType, Decode);
          if (!v32)
          {
            break;
          }

          v33 = v32;
          CFArrayAppendValue(v30, v32);
          CFRelease(v33);
          ++Decode;
          if (!--v31)
          {
            goto LABEL_11;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_3();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_24;
      }

LABEL_11:
      keys[v25] = @"CGImageDecodeArray";
      values[v25] = v30;
      LODWORD(v25) = v20 + 2;
    }
  }

  keys[v25] = @"CGImageShouldInterpolate";
  ShouldInterpolate = CGImageGetShouldInterpolate(a1);
  v35 = MEMORY[0x1E695E4D0];
  if (!ShouldInterpolate)
  {
    v35 = MEMORY[0x1E695E4C0];
  }

  values[v25] = CFRetain(*v35);
  keys[(v25 + 1)] = @"CGImageRenderingIntent";
  RenderingIntent = CGImageGetRenderingIntent(a1);
  LODWORD(v45) = RenderingIntent;
  values[(v25 + 1)] = OUTLINED_FUNCTION_2_61(RenderingIntent, v37, &v45);
  v25 = (v25 + 2);
  v38 = CFDictionaryCreate(a2, keys, values, v25, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v38)
  {
    v39 = 0;
    *a3 = v38;
    goto LABEL_16;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_24:
  v39 = v43;
LABEL_16:
  v21 = cf;
  if (cf)
  {
LABEL_17:
    CFRelease(v21);
  }

LABEL_18:
  v40 = 0;
  do
  {
    v41 = values[v40];
    if (v41)
    {
      CFRelease(v41);
    }

    ++v40;
  }

  while (v25 != v40);
  return v39;
}

uint64_t FigRemote_SetSerializedAuth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v4 = MEMORY[0x19A8D2B00](a2, a3, *MEMORY[0x1E695E480], &cf);
  if (v4)
  {
    return v4;
  }

  v5 = cf;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v7 = v6(a1, v5);
  }

  else
  {
    v7 = 4294954514;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t FigRemote_CreateCommonMetadataFromBinaryPListData(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFMutableDictionaryRef *a4)
{
  cf = 0;
  if (a4)
  {
    v6 = MEMORY[0x19A8D2B00](a1, a2, a3, &cf);
    if (!v6)
    {
      if (!cf)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v9 = Mutable;
          CFDictionaryApplyFunction(cf, figremote_convertMetadataLocalePropertyFromCFStringToCFLocale, Mutable);
LABEL_8:
          v10 = 0;
          *a4 = v9;
          goto LABEL_11;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v10 = v6;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_10(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void figremote_CreateCGImageFromParametersDictionaryAndCGDataProvider_cold_11(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateSerializedDataForCGImage_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateCGImageFromSerializedDataInBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_SetSerializedCookies_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_SetSerializedCookies_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_SetSerializedCookies_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigRemote_CreateCommonMetadataBinaryPListData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t streamPlaylistParserServer_replyingMessageHandler(_xpc_connection_s *a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t streamPlaylistParserServer_noReplyMessageHandler(uint64_t a1, void *a2)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return 4294951138;
  }

  return result;
}

void __FigStreamPlaylistParserStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*a1 + 8) + 24) = v2;
}

void remoteXPCMutableMovie_CreateInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v22 = *MEMORY[0x1E695E480];
  FigMutableMovieGetClassID();
  if (!CMDerivedObjectCreate())
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = v21;
    Mutable = CFDictionaryCreateMutable(v22, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    DerivedStorage[3] = Mutable;
    if (Mutable)
    {
      v25 = CFSetCreateMutable(v22, 0, MEMORY[0x1E695E9F8]);
      DerivedStorage[4] = v25;
      if (v25)
      {
        FigXPCRemoteClientAssociateObject();
        FigStartMonitoringMediaServicesProcessDeath();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  *v19 = 0;
  OUTLINED_FUNCTION_652();
}

uint64_t FigMutableMovieRemoteCreateFromFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = 0;
  xdict[0] = 0;
  value = 0;
  if (!a2 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_13:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_18_13())
  {
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_28_11(0x6672u, v9, xdict))
  {
    goto LABEL_13;
  }

  if (FigFormatReaderXPCRemoteGetObjectID(v6, &value))
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(xdict[0], "FormatReader", value);
  if (FigXPCMessageSetCFString() || v5 && FigXPCMessageSetCFDictionary())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_22();
  v10 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  v18 = OUTLINED_FUNCTION_21_13(v10, v11, v12, v13, v14, v15, v16, v17, v35, value, v39);
  if (!v7)
  {
    uint64 = xpc_dictionary_get_uint64(v18, *MEMORY[0x1E69615A0]);
    remoteXPCMutableMovie_CreateInternal(uint64, a5, v20, v21, v22, v23, v24, v25, v36, value, v39, xdict[0], xdict[1], xdict[2], xdict[3], xdict[4], xdict[5], xdict[6]);
    OUTLINED_FUNCTION_21_13(v26, v27, v28, v29, v30, v31, v32, v33, v37, value, v39);
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  return v7;
}

uint64_t FigMutableMovieRemoteCreateWithURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  xdict = 0;
  v27[0] = 0;
  v24 = 0;
  v25 = 0;
  cf = 0;
  if (!a2 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_25;
  }

  v8 = OUTLINED_FUNCTION_18_13();
  if (v8)
  {
LABEL_25:
    v18 = v8;
    goto LABEL_17;
  }

  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    v8 = OUTLINED_FUNCTION_28_11(0x7462u, v9, v27);
    if (v8)
    {
      goto LABEL_25;
    }

    v8 = remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(v6, 0, v27[0], &cf);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = FigXPCCreateBasicMessage();
    if (v8)
    {
      goto LABEL_25;
    }

    v8 = FigXPCMessageSetCFURL();
    if (v8)
    {
      goto LABEL_25;
    }

    v8 = remoteXPCMutableMovie_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(v6, v27[0], 0x196EFB1E5, &v24);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    v8 = FigXPCMessageSetCFDictionary();
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    goto LABEL_25;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
  remoteXPCMutableMovie_CreateInternal(uint64, &v25, v11, v12, v13, v14, v15, v16, v22, cf, v24, v25, xdict, v27[0], v27[1], v27[2], v27[3], v27[4]);
  v18 = v17;
  if (!v17)
  {
    v19 = v25;
    remoteXPCMutableMovie_storeSandboxRegistration(v25, v24);
    *a5 = v19;
    v25 = 0;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v20, "FigMutableMovieRemoteCreateWithURL");
  return v18;
}

uint64_t remoteXPCMutableMovie_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = 0;
  if (*(DerivedStorage + 8))
  {
    v5 = 0;
  }

  else
  {
    v3 = DerivedStorage;
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v7);
    if (ObjectID || (*(v3 + 8) = 1, FigStopMonitoringMediaServicesProcessDeath(), FigXPCRemoteClientDisassociateObject(), !*(v3 + 9)) && ((OUTLINED_FUNCTION_26_14(), ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessage(), ObjectID)))
    {
      v5 = ObjectID;
    }

    else
    {
      v5 = 0;
      *v3 = 0;
    }
  }

  FigXPCRelease();
  return v5;
}

void remoteXPCMutableMovie_Finalize(uint64_t a1)
{
  remoteXPCMutableMovie_Invalidate(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[2];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[2] = 0;
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[3] = 0;
  }

  v4 = DerivedStorage[4];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[4] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }
}

uint64_t remoteXPCMutableMovie_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v8);
  if (ObjectID)
  {
    v6 = ObjectID;
  }

  else
  {
    v6 = FigXPCSendStdCopyPropertyMessage();
    if (!v6)
    {
      CFEqual(a2, @"Metadata");
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t remoteXPCMutableMovie_CopyFormatReader(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  xdict = 0;
  v13 = 0;
  if (a4)
  {
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v13);
    if (!ObjectID)
    {
      OUTLINED_FUNCTION_12_20();
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        xpc_dictionary_set_BOOL(xdict, "MakeImmutableSnapshot", a2 != 0);
        if (!a3 || (ObjectID = FigXPCMessageSetCFDictionary(), !ObjectID))
        {
          OUTLINED_FUNCTION_2_22();
          ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (!ObjectID)
          {
            uint64 = xpc_dictionary_get_uint64(v14, "FormatReader");
            if (!uint64)
            {
              v9 = 0;
              goto LABEL_11;
            }

            ObjectID = FigFormatReaderXPCRemoteRetainCopiedFormatReader(uint64, 0, a4);
          }
        }
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
  }

  v9 = ObjectID;
LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v10, "remoteXPCMutableMovie_CopyFormatReader");
  return v9;
}

uint64_t remoteXPCMutableMovie_WriteHeader(uint64_t a1, uint64_t a2, const __CFURL *a3, uint64_t a4, int a5)
{
  v18 = 0;
  xdict = 0;
  cf = 0;
  v17 = 0;
  if (a3)
  {
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
    if (ObjectID)
    {
      v14 = ObjectID;
      goto LABEL_24;
    }

    if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
    {
      v10 = FigXPCCreateBasicMessage();
      if (v10)
      {
        goto LABEL_28;
      }

      DoesFileExist = FigFileDoesFileExist();
      v12 = a5 ? 34 : 2;
      v13 = DoesFileExist ? v12 : 18;
      v10 = remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(a3, v13, xdict, &cf);
      if (v10)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v10 = FigXPCCreateBasicMessage();
      if (v10)
      {
        goto LABEL_28;
      }

      v10 = remoteXPCMutableMovie_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(a3, xdict, 0x196EFB1E5, &v17);
      if (v10)
      {
        goto LABEL_28;
      }

      v10 = FigXPCMessageSetCFURL();
      if (v10)
      {
        goto LABEL_28;
      }

      xpc_dictionary_set_BOOL(xdict, "TruncateDestURL", a5 != 0);
    }

    v10 = FigXPCMessageSetCFString();
    if (!v10)
    {
      if (!a4 || (v10 = FigXPCMessageSetCFDictionary(), !v10))
      {
        v14 = FigXPCRemoteClientSendSyncMessage();
        if (!v14)
        {
          remoteXPCMutableMovie_storeSandboxRegistration(a1, v17);
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v17, v18);
  }

LABEL_28:
  v14 = v10;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v14;
}

uint64_t remoteXPCMutableMovie_CopyHeaderData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (!a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v11, v12);
LABEL_12:
    v8 = ObjectID;
    goto LABEL_10;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v11);
  if (ObjectID)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_12;
  }

  v8 = FigXPCMessageCopyCFData();
  if (!v8)
  {
    *a5 = 0;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v9, "remoteXPCMutableMovie_CopyHeaderData");
  return v8;
}

uint64_t remoteXPCMutableMovie_AddTrack(uint64_t a1, unsigned int a2, const __CFDictionary *a3, uint64_t a4, _DWORD *a5)
{
  v31 = 0;
  xdict = 0;
  v30 = 0;
  if (!a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
    goto LABEL_19;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v30);
  if (ObjectID)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_19;
  }

  xpc_dictionary_set_int64(xdict, "MediaType", a2);
  if (!a4)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (!ObjectID)
    {
      v13 = 0;
      goto LABEL_13;
    }

LABEL_19:
    v27 = ObjectID;
    goto LABEL_17;
  }

  v10 = *MEMORY[0x1E695E480];
  if (a3)
  {
    Count = CFDictionaryGetCount(a3);
    MutableCopy = CFDictionaryCreateMutableCopy(v10, Count + 6, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v13 = MutableCopy;
  if (MutableCopy)
  {
    v14 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v14, v15);
    v16 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v16, v17);
    v18 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v18, v19);
    v20 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v20, v21);
    v22 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v22, v23);
    v24 = OUTLINED_FUNCTION_308();
    setOptionsDictionaryEntryForTrackPropertyFromTrackReader(v24, v25);
  }

  v26 = FigXPCMessageSetCFDictionary();
  if (v26)
  {
    v27 = v26;
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  OUTLINED_FUNCTION_2_22();
  v27 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v27)
  {
    *a5 = xpc_dictionary_get_int64(v31, "TrackID");
  }

  if (v13)
  {
LABEL_16:
    CFRelease(v13);
  }

LABEL_17:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v27;
}

uint64_t remoteXPCMutableMovie_DeleteTrack(uint64_t a1, int a2)
{
  v6 = 0;
  xdict = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, xdict, v8);
    goto LABEL_7;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v6);
  if (ObjectID)
  {
LABEL_7:
    v4 = ObjectID;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_14();
  v4 = FigXPCCreateBasicMessage();
  if (!v4)
  {
    xpc_dictionary_set_int64(xdict, "TrackID", a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_5:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t remoteXPCMutableMovie_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, void *a5)
{
  v11[1] = 0;
  xdict = 0;
  v11[0] = 0;
  if (!a2 || !a3 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_17:
    v9 = ObjectID;
    goto LABEL_13;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v11);
  if (ObjectID)
  {
    goto LABEL_17;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  ObjectID = FigXPCMessageSetCFString();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  if (!CFEqual(a3, @"FormatDescriptionArray"))
  {
    if (CFEqual(a3, @"Metadata"))
    {
      v9 = 0;
      goto LABEL_13;
    }

    v9 = FigXPCMessageCopyCFObject();
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v9 = FigXPCMessageCopyFormatDescriptionArray();
  if (!v9)
  {
LABEL_10:
    *a5 = 0;
  }

LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t remoteXPCMutableMovie_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFArray *a4)
{
  v15 = 0;
  xdict = 0;
  cf = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_21;
  }

  v6 = a2;
  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v15);
  if (!ObjectID)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (!ObjectID)
    {
      xpc_dictionary_set_int64(xdict, "TrackID", v6);
      ObjectID = FigXPCMessageSetCFString();
      if (!ObjectID)
      {
        if (CFEqual(a3, @"FormatDescriptionArray"))
        {
          ObjectID = FigXPCMessageSetFormatDescriptionArray();
          if (ObjectID)
          {
            goto LABEL_21;
          }

LABEL_20:
          ObjectID = FigXPCRemoteClientSendSyncMessage();
          goto LABEL_21;
        }

        if (CFEqual(a3, @"Metadata"))
        {
          ObjectID = FigRemote_CreateMetadataBinaryPListData(a4, *MEMORY[0x1E695E480], &cf);
          if (ObjectID)
          {
            goto LABEL_21;
          }

LABEL_19:
          ObjectID = FigXPCMessageSetCFObject();
          if (ObjectID)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        if (!CFEqual(a3, @"MediaDataStorageURL"))
        {
          goto LABEL_19;
        }

        if (a4)
        {
          v8 = CFGetTypeID(a4);
          if (v8 != CFURLGetTypeID())
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_5();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_21;
          }
        }

        if (!FigRemote_ShouldConnectToMediaparserdForFileParsing())
        {
          goto LABEL_19;
        }

        DerivedStorage = CMBaseObjectGetDerivedStorage();
        SInt32 = FigCFNumberCreateSInt32();
        v11 = *(DerivedStorage + 24);
        if (a4)
        {
          CFDictionarySetValue(v11, SInt32, a4);
          if (!SInt32)
          {
            goto LABEL_19;
          }
        }

        else
        {
          CFDictionaryRemoveValue(v11, SInt32);
          if (!SInt32)
          {
            goto LABEL_19;
          }
        }

        CFRelease(SInt32);
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v12 = ObjectID;
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t remoteXPCMutableMovie_AppendSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = 0;
  FormatDescription = 0;
  aSurface = 0;
  v20[1] = 0;
  xdict = 0;
  cf = 0;
  v20[0] = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, cf);
    goto LABEL_25;
  }

  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, cf);
    goto LABEL_27;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v20);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || FigRemote_ShouldConnectToMediaparserdForFileParsing() && (ObjectID = remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(a1, a2, xdict, &cf), ObjectID) || (xpc_dictionary_set_int64(xdict, "TrackID", a2), FormatDescription = CMSampleBufferGetFormatDescription(a3), ObjectID = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer(), ObjectID) || (ObjectID = FigXPCMessageSetAndConsumeVMData(), ObjectID))
  {
LABEL_25:
    v15 = ObjectID;
    goto LABEL_21;
  }

  if (aSurface)
  {
    XPCObject = IOSurfaceCreateXPCObject(aSurface);
    xpc_dictionary_set_value(xdict, "IOSurface", XPCObject);
    if (!a4)
    {
      goto LABEL_14;
    }

LABEL_13:
    v14 = FigXPCMessageSetCFDictionary();
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = v14;
    goto LABEL_21;
  }

  if (a4)
  {
    goto LABEL_13;
  }

LABEL_14:
  v14 = FigXPCMessageSetFormatDescription();
  if (v14)
  {
    goto LABEL_27;
  }

  v14 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
  if (v14)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    FigXPCMessageGetCMTime();
  }

  if (a6)
  {
    FigXPCMessageGetCMTime();
  }

  v15 = 0;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCMutableMovie_AppendMediaData(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, int64_t a5, uint64_t a6, uint64_t *a7)
{
  v19 = 0;
  xdict = 0;
  cf = 0;
  v18 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_17:
    v15 = ObjectID;
    goto LABEL_13;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
  if (ObjectID)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    ObjectID = remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(a1, a2, xdict, &cf);
    if (ObjectID)
    {
      goto LABEL_17;
    }
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  xpc_dictionary_set_int64(xdict, "DataOffset", a4);
  xpc_dictionary_set_int64(xdict, "DataLength", a5);
  ObjectID = FigXPCMessageSetBlockBuffer();
  if (ObjectID)
  {
    goto LABEL_17;
  }

  if (a6)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_2_22();
  v14 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
  v15 = v14;
  if (a7 && !v14)
  {
    *a7 = xpc_dictionary_get_uint64(v19, "DataOffset");
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCMutableMovie_AppendSampleReferences(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = 0;
  xdict = 0;
  v18 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
LABEL_13:
    v15 = ObjectID;
    goto LABEL_11;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
  if (ObjectID)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_20();
  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  xpc_dictionary_set_uint64(xdict, "DataOffset", a11);
  if (a12)
  {
    ObjectID = FigXPCMessageSetCFDictionary();
    if (ObjectID)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_2_22();
  ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ObjectID)
  {
    goto LABEL_13;
  }

  v15 = a14;
  if (a13)
  {
    FigXPCMessageGetCMTime();
  }

  if (a14)
  {
    FigXPCMessageGetCMTime();
    v15 = 0;
  }

LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v15;
}

uint64_t remoteXPCMutableMovie_AppendSampleReferencesFromSampleCursor(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, v16);
LABEL_14:
    v12 = v11;
    goto LABEL_12;
  }

  if (a7)
  {
    v11 = FigXPCMessageSetCFDictionary();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  v11 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v11)
  {
    goto LABEL_14;
  }

  if (a8)
  {
    *a8 = xpc_dictionary_get_uint64(0, "NumSamplesAppended");
  }

  if (a9)
  {
    FigXPCMessageGetCMTime();
  }

  if (a10)
  {
    FigXPCMessageGetCMTime();
  }

  v12 = 0;
LABEL_12:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v13, "remoteXPCMutableMovie_AppendSampleReferencesFromSampleCursor");
  return v12;
}

uint64_t remoteXPCMutableMovie_CanTrackAcceptFormatDescription(uint64_t a1, int a2, uint64_t a3)
{
  v16 = 0;
  xdict = 0;
  v15 = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
LABEL_10:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = a3;
  if (!a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    goto LABEL_8;
  }

  if (remoteXPCMutableMovie_GetObjectID(a1, &v15))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage())
  {
    goto LABEL_10;
  }

  xpc_dictionary_set_int64(xdict, "TrackID", a2);
  if (FigXPCMessageSetFormatDescription())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_22();
  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    goto LABEL_10;
  }

  v5 = xpc_dictionary_get_BOOL(v16, "CanTrackAcceptFormatDescription");
  OUTLINED_FUNCTION_21_13(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t remoteXPCMutableMovie_GetTrackCompatibleWithTrackReader(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v19 = 0;
  xdict = 0;
  value = 0;
  v18 = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_10:
    OUTLINED_FUNCTION_16_15();
    goto LABEL_8;
  }

  if (remoteXPCMutableMovie_GetObjectID(a1, &v18))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_20();
  if (FigXPCCreateBasicMessage() || FigTrackReaderXPCRemoteGetObjectID(a2, &value))
  {
    goto LABEL_10;
  }

  xpc_dictionary_set_uint64(xdict, "TrackReader", value);
  OUTLINED_FUNCTION_2_22();
  v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  v14 = OUTLINED_FUNCTION_21_13(v6, v7, v8, v9, v10, v11, v12, v13, value, v18, v19);
  if (!v3)
  {
    *a3 = xpc_dictionary_get_int64(v14, "TrackID");
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v15, "remoteXPCMutableMovie_GetTrackCompatibleWithTrackReader");
  return v3;
}

uint64_t remoteXPCMutableMovie_InsertMediaIntoTrack(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  xdict = 0;
  if (!a2 || (*(a4 + 12) & 1) == 0 || (*(a4 + 36) & 1) == 0 || *(a4 + 40) || (*(a4 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_6:
    v5 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v10);
  if (ObjectID)
  {
    goto LABEL_6;
  }

  v9 = FigXPCCreateBasicMessage();
  if (v9 || (xpc_dictionary_set_int64(xdict, "TrackID", a2), OUTLINED_FUNCTION_10_24(), v9 = FigXPCMessageSetCMTimeRange(), v9) || (OUTLINED_FUNCTION_1_68(), v9 = FigXPCMessageSetCMTimeRange(), v9))
  {
    v5 = v9;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_29_10();
  }

LABEL_7:
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v6, "remoteXPCMutableMovie_InsertMediaIntoTrack");
  return v5;
}