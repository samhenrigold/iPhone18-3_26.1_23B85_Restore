double fpfs_setRanDry(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  *(v1 + 1896) = 0;
  OUTLINED_FUNCTION_402();
  fpfs_EnqueueNotification(v4, v5, v6, v7);
  fpfsi_UpdateResourceSpecifierOnResourceArbiter(a1);
  v8 = OUTLINED_FUNCTION_234();
  fpfs_GetNextTimeToPlay(v8, v9, v10);
  return fpfsi_PrepareToStartWhenLikelyToKeepUp(a1, &v12);
}

void fpfs_applySoftwareVolume(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_659();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfs_getNext(DerivedStorage, 0))
  {
    v5 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v5)
    {
      while (*(v5 + 48) != 1936684398 || !*(v5 + 112))
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          return;
        }
      }

      v6 = fpfs_applySoftwareVolumeToTrack();
      if (v2 > 0.0 && a2 && !v6)
      {

        usleep((v2 * 1000.0 * 1000.0));
      }
    }
  }
}

uint64_t fpfs_pauseCurrentItem(uint64_t result)
{
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Next = fpfs_getNext(DerivedStorage, 0);

    return fpfsi_pauseItem(Next);
  }

  return result;
}

void fpfsi_applySoftwareVolume(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_659();
  for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
  {
    v3 = *(i + 112);
    if (v3 && *(i + 48) == 1936684398)
    {
      v4 = i;
      while (1)
      {
        v4 = *(v4 + 24);
        if (!v4)
        {
          break;
        }

        if (*(v4 + 112) == v3)
        {
          goto LABEL_7;
        }
      }

      if (fpfs_applySoftwareVolumeToTrack())
      {
        break;
      }
    }

LABEL_7:
    ;
  }
}

void fpfsi_NowReadyForInspection()
{
  OUTLINED_FUNCTION_649();
  v3 = v2;
  v122 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  v5 = CMBaseObjectGetDerivedStorage();
  *&cf = 0;
  CFRetain(v3);
  if (!*(v0 + 460))
  {
    *(v0 + 460) = 1;
    NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(*v0, v3, v6, v7, v8, v9, v10, v11, @"CurrentDuration", 0);
    v1 = @"ReadyForInspection";
    fpfs_PostNotificationWhenUnlocked(*v0, @"ReadyForInspection", v3, NotificationPayloadForProperties);
    if (NotificationPayloadForProperties)
    {
      CFRelease(NotificationPayloadForProperties);
    }

    if (*(v0 + 2048) == 0.0)
    {
      *(v0 + 2048) = CFAbsoluteTimeGetCurrent();
    }

    if (*(v0 + 2248))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v21 = CFDictionaryCreate(AllocatorForMedia, &kFigPlaybackItemParameter_Properties, (v0 + 2248), 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v21)
      {
        v22 = v21;
        fpfs_PostNotificationWhenUnlocked(*v0, @"ReadyForInspection", v3, v21);
        CFRelease(v22);
      }
    }

    if (*(v0 + 461))
    {
      *(v0 + 461) = 0;
      v23 = OUTLINED_FUNCTION_198();
      fpfsi_postSelectedMediaOptionsDidChangeNotification(v23, v24);
    }
  }

  v12 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(v12);
  CMBaseObjectGetDerivedStorage();
  if (LOBYTE(v1[58].info))
  {
    goto LABEL_11;
  }

  if (!HIBYTE(v1[14].info))
  {
    if (!FigCFArrayContainsValue())
    {
      goto LABEL_11;
    }

LABEL_10:
    if (BYTE6(v1[14].info))
    {
      goto LABEL_11;
    }

    *v95 = *MEMORY[0x1E6960C70];
    *&duration.value = *MEMORY[0x1E6960C70];
    v25 = *(MEMORY[0x1E6960C70] + 16);
    duration.epoch = v25;
    v26 = CMBaseObjectGetDerivedStorage();
    v27 = v26;
    if (*(v26 + 236))
    {
      v36 = 0;
      v37 = 0;
      duration = *(v26 + 224);
    }

    else if (*(v26 + 1576))
    {
      v113 = *v95;
      *&v114 = v25;
      *v111 = *v95;
      *&v111[16] = v25;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v38 = OUTLINED_FUNCTION_489();
        v39(v38);
      }

      if (BYTE12(v113))
      {
        v40 = CMTimeMake(&number, 1, 1000);
        valuePtr_8 = *(&v113 + 1);
        v105 = v114;
        v48 = OUTLINED_FUNCTION_499(v40, v41, v42, v43, v44, v45, v46, v47, value, v89, v91, v93, *v95, *&v95[8], *&v95[16], *&v95[24], *&v95[32], *&v95[40], cf, *(&cf + 1), v113);
        v51 = CMTimeAdd(v50, v48, v49);
        OUTLINED_FUNCTION_693(v51, v52, v53, v54, v55, v56, v57, v58, valuea, v90, v92, v94, v96, v97, v98, v99, v100, v101, cf, *(&cf + 1), *&valuePtr, valuePtr_8, v105, v106, number.value, *&number.timescale, number.epoch, v108, *&duration.value);
        fpfsi_setLastSeekTimeSet(v27, &number);
        v37 = 0;
      }

      else
      {
        v37 = *(v27 + 1576);
      }

      v36 = 0;
    }

    else
    {
      if (*(v26 + 1584))
      {
        goto LABEL_55;
      }

      number.value = 0;
      valuePtr = 0.0;
      FigBytePumpGetFigBaseObject();
      v29 = v28;
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v30 && !v30(v29, 0x1F0B1F1F8, 0, &number) && number.value)
      {
        CFNumberGetValue(number.value, kCFNumberDoubleType, &valuePtr);
        v31 = valuePtr;
        if (valuePtr >= 0.0)
        {
          if (dword_1EAF169F0)
          {
            HIDWORD(cf) = 0;
            BYTE11(cf) = 0;
            OUTLINED_FUNCTION_225();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_134();
            if (!v34)
            {
              v33 = 0;
            }

            if (v33)
            {
              HIDWORD(v93) = v33;
              if (*v27)
              {
                v59 = *v27;
                v60 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v59 = 0;
                v60 = "";
              }

              if (v3)
              {
                v61 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v61 = "";
              }

              *v111 = 136316418;
              *&v111[4] = "fpfsi_getInitialTimeToOpenPump";
              *&v111[12] = 2048;
              *&v111[14] = v59;
              *&v111[22] = 2082;
              *&v111[24] = v60;
              *v112 = 2048;
              *&v112[2] = v3;
              *&v112[10] = 2082;
              *&v112[12] = v61;
              *&v112[20] = 2048;
              *&v112[22] = valuePtr;
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, 0, v68);
            }

            OUTLINED_FUNCTION_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v31 = valuePtr;
          }

          CMTimeMakeWithSeconds(&v113, v31, 1000);
          *(v27 + 1472) = v113;
          *(v27 + 1488) = v114;
        }

        CFRelease(number.value);
      }

      if (*(v27 + 1484))
      {
        duration = *(v27 + 1472);
        v113 = *(v27 + 1472);
        *&v114 = *(v27 + 1488);
        fpfsi_setLastSeekTimeSet(v27, &v113);
        v69 = *(v27 + 1472);
        *(v27 + 344) = v69;
        v70 = *(v27 + 1488);
        *(v27 + 360) = v70;
        *(v27 + 368) = v69;
        *(v27 + 384) = v70;
        v36 = 1;
      }

      else
      {
LABEL_55:
        v36 = 0;
      }

      v37 = 0;
    }

    *&v95[16] = duration;
    v71 = fpfsi_SetPumpRate(v0, *(v5 + 108));
    if (!v71)
    {
      v72 = *(v0 + 912);
      v113 = *&v95[16];
      *&v114 = *&v95[32];
      *&duration.value = *v95;
      duration.epoch = v25;
      CMTimeRangeMake(v111, &v113, &duration);
      v73 = *(v0 + 1584);
      v74 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v74)
      {
        v113 = *v111;
        v114 = *&v111[16];
        v115 = *v112;
        v71 = v74(v72, &v113, v37, v73, v36, v0 + 928, v0 + 593);
        if (!v71)
        {
          v82 = *(v0 + 1680);
          if (v82 && FigAlternateIsIFrameOnly(v82))
          {
            v83 = CMBaseObjectGetDerivedStorage();
            v84 = *(v83 + 1680);
            if (!v84 || !FigAlternateIsIFrameOnly(v84) || (*(v83 + 332) & 1) == 0)
            {
              goto LABEL_69;
            }

            if (*(v83 + 1484))
            {
              *(v83 + 1472) = *v95;
              *(v83 + 1488) = v25;
            }

            v85 = *(v83 + 2220);
            CMTimeMakeWithSeconds(&v113, *(v83 + 1528), 1000);
            *v111 = *(v83 + 320);
            *&v111[16] = *(v83 + 336);
            fpfs_IssueSeekToPump(v3, v111, MEMORY[0x1E6960C68], v85, 1, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], &v113, v89, v91, v93, *v95, *&v95[8], *&v95[16], *&v95[24], *&v95[32], *&v95[40], cf, *(&cf + 1), *&valuePtr, valuePtr_8, v105, v106, number.value);
            if (!v86)
            {
LABEL_69:
              fpfs_setIFrameOnlyRate(v3, *(v5 + 108));
            }
          }

          *(v0 + 462) = 1;
          if (*(v0 + 2496) > 0.0 && !*(v0 + 2504) && *(v0 + 40))
          {
            fpfsi_SetupIFramePrefetch();
          }

          if (*(v5 + 80) == v3)
          {
            fpfsi_checkCoordinatedPlaybackCapability(v3);
          }

          fpfsi_EnsureVenueDescriptionMetadataSupplierIfNecessary(v3, v75, v76, v77, v78, v79, v80, v81, value, v89, SWORD2(v89), SBYTE6(v89), HIBYTE(v89), v91, SHIDWORD(v91), v93, *v95, *&v95[4], *&v95[8], *&v95[24], *&v95[32], cf, SLODWORD(valuePtr), valuePtr_8, v105, v106, number.value, *&number.timescale, number.epoch, v108, duration.value, *&duration.timescale, duration.epoch, v110, *v111, *&v111[8], *&v111[16], *&v111[24], *v112, *&v112[8], *&v112[16], *&v112[24], v113, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), v116, v117, v118, v119, v120, v121);
          if (!v71)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v71 = -12782;
      }
    }

    FigCreateErrorForOSStatus(v71, &cf);
    fpfsi_NotReadyForInspection(v3, cf);
    goto LABEL_11;
  }

  v13 = OUTLINED_FUNCTION_249();
  Next = fpfs_getNext(v13, v14);
  if (!Next)
  {
    goto LABEL_11;
  }

  if (Next == v3)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v16 = Next;
    v17 = OUTLINED_FUNCTION_292();
    Next = fpfs_getNext(v17, v18);
    if (!Next)
    {
      break;
    }

    if (Next == v3)
    {
      if (fpfsi_PumpHasEndedOrBufferedBeyondEndTime(v16))
      {
        goto LABEL_10;
      }

      break;
    }
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v3);
  OUTLINED_FUNCTION_651();
}

void fpfs_notifyExternalStartupTasksOfEvents()
{
  OUTLINED_FUNCTION_193();
  v94 = v0;
  v2 = v1;
  v4 = v3;
  HIDWORD(v96) = v5;
  v7 = v6;
  v115 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  v92 = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 944);
  if (v9)
  {
    Count = CFArrayGetCount(v9);
    if (Next)
    {
      if (Count >= 1)
      {
        v11 = 0;
        v12 = MEMORY[0x1E695E4D0];
        if (!v4)
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        v13 = &unk_1EAF16000;
        v101 = @"SeekID";
        v99 = @"SeekTime";
        v89 = *v12;
        *&v10 = 136316418;
        v84 = v10;
        *&v10 = 136316162;
        v87 = v10;
        *&v10 = 136315906;
        v88 = v10;
        v93 = @"CurrentRate";
        v95 = @"PlayImmediately";
        v91 = DerivedStorage;
        HIDWORD(v90) = v2;
        v100 = @"CurrentTime";
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 944), v11);
          v104 = 0;
          cf = 0;
          if (FigPlayerStartupTaskCopyRequiredParameters(ValueAtIndex, &cf))
          {
            break;
          }

          NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(v7, Next, cf);
          v16 = FigCFArrayContainsValue();
          if (v2 && v16)
          {
            FigCFDictionarySetInt32();
          }

          v17 = FigCFArrayContainsValue();
          if (v17 && (*(v94 + 12) & 1) != 0)
          {
            v113 = OUTLINED_FUNCTION_485(v17, v18, v19, v20, v21, v22, v23, v24, v82, v83, v84, *(&v84 + 1), v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94);
            v114 = *(v25 + 16);
            FigCFDictionarySetCMTime();
          }

          if (FigCFArrayContainsValue())
          {
            OUTLINED_FUNCTION_480();
            FigCFDictionarySetFloat32();
          }

          if (FigCFArrayContainsValue())
          {
            FigCFDictionarySetValue();
          }

          if (FigCFArrayContainsValue())
          {
            fpfs_GetNextTimeToPlay(v92, 0, &v113);
            OUTLINED_FUNCTION_481();
            FigCFDictionarySetCMTime();
          }

          v26 = FigPlayerStartupTaskNotifyOfEvents(ValueAtIndex, SHIDWORD(v96), NotificationPayloadForProperties, &v104);
          if (v26)
          {
            v27 = v26;
            OUTLINED_FUNCTION_595();
            v28 = v13;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v102));
            OUTLINED_FUNCTION_121();
            if (v31)
            {
              v32 = v30;
            }

            else
            {
              v32 = HIDWORD(v102);
            }

            if (v32)
            {
              if (v7)
              {
                CMBaseObjectGetDerivedStorage();
              }

              v105 = v88;
              OUTLINED_FUNCTION_804();
              v106 = 2082;
              v107 = v33;
              v108 = 1024;
              v109 = v27;
              OUTLINED_FUNCTION_72();
              v34 = OUTLINED_FUNCTION_27();
              _os_log_send_and_compose_impl(v34, v35, v36, v37, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v102), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] Startup task failed with err %d.");
            }

            v13 = v28;
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_414(v38, v39, v40, v41, v42);
            v104 = 1;
            v2 = HIDWORD(v90);
            DerivedStorage = v91;
          }

          if (NotificationPayloadForProperties)
          {
            CFRelease(NotificationPayloadForProperties);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          CFArrayGetCount(*(DerivedStorage + 952));
          v43 = OUTLINED_FUNCTION_265();
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v43, v116, ValueAtIndex);
          if (v104)
          {
            if (FirstIndexOfValue != -1)
            {
              CFArrayRemoveValueAtIndex(*(DerivedStorage + 952), FirstIndexOfValue);
              if (dword_1EAF169F0)
              {
                OUTLINED_FUNCTION_595();
                v52 = OUTLINED_FUNCTION_497(v13[317], v45, v46, v47, v48, v49, v50, v51, v82, v83, v84, *(&v84 + 1), v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, Count, Next, v99, v100, v101, v102, SBYTE2(v102), SBYTE3(v102), SBYTE4(v102));
                os_log_type_enabled(v52, BYTE3(v102));
                OUTLINED_FUNCTION_121();
                if (v31)
                {
                  v54 = v53;
                }

                else
                {
                  v54 = HIDWORD(v102);
                }

                if (v54)
                {
                  if (v7)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
                  v105 = v87;
                  OUTLINED_FUNCTION_295();
                  v110 = v64;
                  OUTLINED_FUNCTION_72();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v65, v66, v67, v68, &dword_1962D5000, v52, BYTE3(v102), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] Handled and completed startup task %p [%{public}@]");
                }

                OUTLINED_FUNCTION_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }
          }

          else if (FirstIndexOfValue == -1)
          {
            CFArrayAppendValue(*(DerivedStorage + 952), ValueAtIndex);
            if (dword_1EAF169F0)
            {
              OUTLINED_FUNCTION_595();
              v86 = OUTLINED_FUNCTION_497(v13[317], v55, v56, v57, v58, v59, v60, v61, v82, v83, v84, *(&v84 + 1), v85, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90, v91, v92, v93, v94, v95, v96, Count, Next, v99, v100, v101, v102, SBYTE2(v102), SBYTE3(v102), SBYTE4(v102));
              os_log_type_enabled(v86, BYTE3(v102));
              OUTLINED_FUNCTION_176();
              if (v31)
              {
                v63 = v62;
              }

              else
              {
                v63 = HIDWORD(v102);
              }

              if (v63)
              {
                if (v7)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                FigPlayerStartupTaskGetTaskDescription(ValueAtIndex);
                v69 = OUTLINED_FUNCTION_297();
                WaitingState = FigPlayerStartupTaskGetWaitingState(v69);
                FigPlayerPlaybackStateGetDescription(WaitingState);
                v105 = v84;
                OUTLINED_FUNCTION_295();
                v110 = HIDWORD(v102);
                v111 = v71;
                v112 = v72;
                OUTLINED_FUNCTION_72();
                v73 = OUTLINED_FUNCTION_25();
                _os_log_send_and_compose_impl(v73, v74, v75, v76, &dword_1962D5000, v86, BYTE3(v102), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] Task %p [%{public}@] is pending. State while waiting: %{public}s");
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_420(v77, v78, v79, v80, v81);
            }
          }

          ++v11;
        }

        while (Count != v11);
      }
    }
  }

  OUTLINED_FUNCTION_191();
}

void fpfs_EnqueueCurrentItemDidChangeNotification()
{
  OUTLINED_FUNCTION_400();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_519();
  if (*CMBaseObjectGetDerivedStorage() == v1)
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (v1)
      {
        v3 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v3 = "";
      }

      strncpy(__dst, v3, 8uLL);
      if (v2)
      {
        v4 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v4 = "";
      }

      strncpy(__dst, v4, 8uLL);
      OUTLINED_FUNCTION_197();
      kdebug_trace();
    }

    v5 = OUTLINED_FUNCTION_266();
    v13 = fpfs_CreateCurrentItemDidChangeNotificationPayloadWithProperties(v5, v6, v7, v8, v9, v10, v11, v12);
    fpfs_EnqueueNotification(v1, @"CurrentItemDidChange", v1, v13);
    *(v0 + 704) = 0;
    v14 = *(v0 + 696);
    if (v14)
    {
      CFRelease(v14);
      *(v0 + 696) = 0;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }
}

void fpfsi_checkCoordinatedPlaybackCapability(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 3256);
  OUTLINED_FUNCTION_107(MEMORY[0x1E6960C68]);
  if (*(v3 + 912))
  {
    v4 = v3;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Current = CFAbsoluteTimeGetCurrent();
    v7 = CFDateCreate(AllocatorForMedia, Current);
    if (*(*(CMBaseObjectGetVTable() + 16) + 40))
    {
      v8 = OUTLINED_FUNCTION_184();
      v10 = v9(v8) != -12649;
    }

    else
    {
      v10 = 1;
    }

    fpfsi_GetDuration(a1, &v20);
    OUTLINED_FUNCTION_29();
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    *(v4 + 3256) = v12;
    if (v2 != v12)
    {
      v13 = OUTLINED_FUNCTION_802();
      Mutable = CFDictionaryCreateMutable(v13, v14, v15, v16);
      if (Mutable)
      {
        v18 = Mutable;
        v19 = MEMORY[0x1E695E4D0];
        if (!*(v4 + 3256))
        {
          v19 = MEMORY[0x1E695E4C0];
        }

        CFDictionarySetValue(Mutable, @"IsCoordinatedPlaybackSupported", *v19);
        fpfs_EnqueueNotification(*v4, @"CoordinatePlaybackSupportChanged", a1, v18);
        CFRelease(v18);
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void fpfsi_UpdateSourceFormatInfoIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  if (*(v4 + 80) == a1)
  {
    if (*(v1 + 40))
    {
      v5 = v4;
      FigGetAllocatorForMedia();
      v6 = OUTLINED_FUNCTION_178();
      FigAlternateSelectionBossCopyProperty(v6, v7, v8, v9);
      FigGetAllocatorForMedia();
      v10 = OUTLINED_FUNCTION_266();
      FigAlternateSelectionBossCopyProperty(v10, v11, v12, v13);
      if (*(v5 + 536))
      {
        if (FigCFEqual())
        {
          FigCFEqual();
        }

        if (*(v5 + 536))
        {
          v14 = *(CMBaseObjectGetVTable() + 16);
          if (v14)
          {
            if (*(v14 + 56))
            {
              v15 = OUTLINED_FUNCTION_236();
              v16(v15);
            }
          }
        }
      }
    }
  }
}

void fpfs_DeferredPumpTransferCompleted()
{
  OUTLINED_FUNCTION_649();
  v1 = v0;
  v3 = v2;
  v226 = *MEMORY[0x1E69E9840];
  v4 = OUTLINED_FUNCTION_774();
  v12 = fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v4, v5, v6, v7, v8, v9, v10, v11, value, v181, v183, v185, v187, v190, v193, SBYTE2(v193), BYTE3(v193), SHIDWORD(v193), v194, SHIDWORD(v194), v195, SWORD2(v195), v196, *(&v196 + 1), v197, v198, 0, 0, cf[0], cf[1], v202, v203, v204, type[0], *v206, *&v206[8], *&v206[16], v207, *v208, *&v208[8], *&v208[16], *&v208[24], v209, v210, v211.value, *&v211.timescale, v211.epoch, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227);
  v13 = v199;
  if (v12)
  {
    goto LABEL_188;
  }

  v188 = v1;
  OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v191 = CMBaseObjectGetDerivedStorage();
  v195 = 0;
  v15 = *(DerivedStorage + 920);
  if (v15)
  {
    v16 = CFRetain(v15);
  }

  else
  {
    v16 = 0;
  }

  v194 = v16;
  if (dword_1EAF169F0)
  {
    v189 = DerivedStorage;
    LODWORD(cf[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_233();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      if (v200)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v186 = v3;
      if (v199)
      {
        v21 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v21 = "";
      }

      v22 = *(DerivedStorage + 912);
      if (v16)
      {
        CFErrorGetCode(v16);
      }

      *v206 = 136316931;
      *&v206[4] = "fpfs_DeferredPumpTransferCompleted";
      *&v206[12] = 2048;
      *&v206[14] = v200;
      OUTLINED_FUNCTION_749();
      *&v208[2] = v199;
      *&v208[10] = v23;
      *&v208[12] = v21;
      *&v208[20] = v24;
      *&v208[22] = v22;
      *&v208[30] = 2113;
      v209 = v16;
      LOWORD(v210) = 1024;
      *(&v210 + 2) = v25;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_282();
      _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v31, v32, v33);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_467(v34, v35, v36, v37, v38);
  }

  if (v16)
  {
    v154 = 0;
    goto LABEL_181;
  }

  if (!*(DerivedStorage + 912))
  {
    v154 = 0;
    goto LABEL_213;
  }

  v39 = CMBaseObjectGetDerivedStorage();
  if (*(v39 + 912))
  {
    v40 = v39;
    AllocatorForMedia = FigGetAllocatorForMedia();
    if (v199)
    {
      v42 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v42 = "";
    }

    v43 = CFStringCreateWithCString(AllocatorForMedia, v42, 0x600u);
    v44 = FigGetAllocatorForMedia();
    v45 = FigAlternateSelectionBossCreate(v44, (v40 + 40));
    if (!v45)
    {
      __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(&v211, fpfsi_AlternateSelectionBossSetup_callbacks);
      v46 = OUTLINED_FUNCTION_618();
      v45 = FigAlternateSelectionBossAddDelegate(v46, v47, v48, 0);
      if (!v45)
      {
        v45 = FigAlternateSelectionBossSetProperty(*(v40 + 40), @"loggingID", v43);
        if (!v45)
        {
          *(v40 + 48) = 0;
          FigBytePumpGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 56))
          {
            v49 = OUTLINED_FUNCTION_619();
            v50(v49);
          }

          if (*(v40 + 2416))
          {
            v51 = fpfsi_setPreferredBitrateForExpensiveNetworks();
          }

          else
          {
            v51 = 0;
          }

          if (!*(v40 + 2552))
          {
            if (!v43)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

          v45 = fpfsi_setResolutionCapForExpensiveNetworks();
        }
      }
    }

    v51 = v45;
    if (v43)
    {
LABEL_35:
      CFRelease(v43);
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", valuea, v182, v184);
    v51 = v178;
  }

LABEL_36:
  if (v51)
  {
    goto LABEL_204;
  }

  if (*(DerivedStorage + 2376))
  {
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v52 = OUTLINED_FUNCTION_619();
      v53(v52);
    }
  }

  v54 = *MEMORY[0x1E695E4D0];
  v55 = *MEMORY[0x1E695E4C0];
  FigBytePumpGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v56 = OUTLINED_FUNCTION_793();
    v57(v56);
  }

  FigBytePumpGetFigBaseObject();
  v59 = v58;
  v60 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v60)
  {
    v60(v59, 0x1F0B1F638, @"StreamPlayer");
  }

  if (*(DerivedStorage + 3201))
  {
    v61 = v54;
  }

  else
  {
    v61 = v55;
  }

  FigBytePumpGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v62 = OUTLINED_FUNCTION_793();
    v63(v62);
  }

  if (*(DerivedStorage + 644))
  {
    v64 = *MEMORY[0x1E695E480];
    v211 = *(DerivedStorage + 632);
    v61 = CMTimeCopyAsDictionary(&v211, v64);
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v65 = OUTLINED_FUNCTION_793();
      v66(v65);
    }

    if (v61)
    {
      CFRelease(v61);
    }
  }

  if (!*(DerivedStorage + 2260) && !*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    *(DerivedStorage + 2260) = 50;
  }

  v67 = DerivedStorage;
  v211.value = 0;
  v68 = CMBaseObjectGetDerivedStorage();
  v69 = kFigFormatReaderCreationDateParameter_Value;
  if (v68)
  {
    v61 = v68;
    if (*(v68 + 912))
    {
      FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v70 = OUTLINED_FUNCTION_543();
        v71(v70);
        if (v211.value)
        {
          *(v61 + 552) = FigRCLGetNumberWithDefault(v211.value, @"allowDownloadPerfReports", *(v61 + 552));
          *(v61 + 554) = FigRCLGetNumberWithDefault(v211.value, @"allowProgressiveSwitchUp", *(v61 + 554));
          *(v61 + 555) = FigRCLGetNumberWithDefault(v211.value, @"allowProgressiveStartup", *(v61 + 555));
          *(v61 + 556) = FigRCLGetNumberWithDefault(v211.value, @"allowProgressiveResume", *(v61 + 556));
          *(v61 + 557) = FigRCLGetNumberWithDefault(v211.value, @"suppressUnknownCodecVariants", *(v61 + 557));
        }
      }
    }

    if (*(v61 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_610();
        OUTLINED_FUNCTION_446();
        v72();
      }

      if (*(v61 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_620();
        OUTLINED_FUNCTION_504();
        v73();
      }

      if (*(v61 + 2568))
      {
        v61 = *(v61 + 556);
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v74 = OUTLINED_FUNCTION_620();
          v75(v74);
        }
      }
    }

    if (v211.value)
    {
      CFRelease(v211.value);
    }
  }

  v211.value = 0;
  if (v13)
  {
    v61 = CMBaseObjectGetDerivedStorage();
    *(v61 + 2284) = 110;
    *(v61 + 2288) = 0x3FF8000000000000;
    *(v61 + 544) = 0x8000000;
    if (!*(v61 + 912))
    {
      goto LABEL_81;
    }

    FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_81;
    }

    v76 = OUTLINED_FUNCTION_543();
    v77(v76);
    if (!v211.value)
    {
      goto LABEL_81;
    }

    v78 = FigRCLGetNumberWithDefault(v211.value, @"synchronizedWatermarksHighWaterMaxSecs", *(v61 + 2284));
    if ((v78 - 1) >= 0x31)
    {
      *(v61 + 2284) = v78;
    }

    *(v61 + 2288) = FigRCLGetDoubleWithDefault(v211.value, @"synchronizedWatermarksHighWaterScaleFactor", *(v61 + 2288));
    v79 = FigRCLGetNumberWithDefault(v211.value, @"bufferAheadMaxMB", 0xFFFFFFFFLL);
    if ((v79 & 0x80000000) == 0)
    {
      v80 = (v79 << 20);
      *(v61 + 544) = v80;
    }

    else
    {
LABEL_81:
      v80 = *(v61 + 544);
    }

    if (v80)
    {
      v81 = *(v61 + 536);
      if (v80 < v81)
      {
        *(v61 + 544) = v81;
      }
    }

    if (v211.value)
    {
      CFRelease(v211.value);
    }
  }

  v211.value = 0;
  v82 = CMBaseObjectGetDerivedStorage();
  if (v82)
  {
    v61 = v82;
    if (*(v82 + 912))
    {
      if (CelestialIs1GBAudioAccessory())
      {
        FigGetAllocatorForMedia();
        FigBytePumpGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v83 = OUTLINED_FUNCTION_543();
          v84(v83);
          if (v211.value)
          {
            *(v61 + 536) = (FigRCLGetNumberWithDefault(v211.value, @"cacheSize1GBAudioAccessoryMB", 8) << 20);
            if (v211.value)
            {
              CFRelease(v211.value);
            }
          }
        }
      }
    }
  }

  v85 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_740(v85);
  v86 = CMBaseObjectGetDerivedStorage();
  if (v86)
  {
    v87 = *(v86 + 24);
  }

  else
  {
    v87 = 0;
  }

  v211.value = &fpfsi_highSpeedHighPowerTransportChangedCallback;
  *&v211.timescale = fpfsi_expensiveNetworkChangedCallback;
  fpfsi_cleanupNetworkCostMonitor(v13);
  if (*(v61 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    OUTLINED_FUNCTION_305();
    v88();
  }

  v89 = FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject();
  v91 = v90;
  v92 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v92)
  {
    v69 = (v61 + 2272);
    if (!v92(v91, 0x1F0B1F898, v89, v61 + 2272))
    {
      v93 = *v69;
      if (*v69)
      {
        v94 = *(v61 + 16);
        v95 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v95)
        {
          v95(v93, v94, &v211, v87);
        }

        v96 = *(v61 + 2272);
        v97 = *(v61 + 2560);
        v98 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v98)
        {
          v98(v96, 0x1F0B5F738, v97);
        }

        v99 = *(v61 + 2272);
        if (*(v61 + 1896))
        {
          v100 = v55;
        }

        else
        {
          v100 = v54;
        }

        v101 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v101)
        {
          v101(v99, 0x1F0B5F758, v100);
        }

        v102 = *(v61 + 2272);
        v103 = v55;
        if (*(v61 + 2284) >= 1)
        {
          if (*(v61 + 2280))
          {
            v103 = v54;
          }

          else
          {
            v103 = v55;
          }
        }

        v104 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v104)
        {
          v104(v102, 0x1F0B5F798, v103);
        }

        fpfsi_updateNetworkCostMonitorMaximumMediaBitrate(v13);
      }
    }
  }

  fpfsi_setupCMCDHeaderVendor(v13);
  if (*(v191 + 872) == 1)
  {
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v105 = OUTLINED_FUNCTION_516();
      v106(v105);
    }

    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v107 = OUTLINED_FUNCTION_619();
      v108(v107);
    }
  }

  v109 = CMBaseObjectGetDerivedStorage();
  v211.value = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  *v206 = 0;
  cf[0] = 0;
  if (*(v109 + 912))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_798();
    FigAssetGetCMBaseObject();
    v111 = v110;
    v112 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v112 && !v112(v111, @"assetProperty_CreationOptionsDictionary", v69, &v211) && v211.value)
    {
      FigCFDictionaryGetURLValue();
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", valuea, v182, v184);
  }

  if (v211.value)
  {
    CFRelease(v211.value);
  }

  v13 = v199;
  v113 = fpfsi_CoordinateWithAssetDownloader(v199);
  if (v113 || (CMBaseObjectGetDerivedStorage(), CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_264(), OUTLINED_FUNCTION_186(), (v113 = FigNotificationCenterAddWeakListener()) != 0))
  {
    v51 = v113;
    goto LABEL_204;
  }

  fpfsi_ConfigurePumpForPlayerAndRelock(v199);
  if (!FigRetainProxyIsInvalidated())
  {
    v114 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_294(v114);
    v115 = CMBaseObjectGetDerivedStorage();
    v116 = *MEMORY[0x1E6960CC0];
    v211 = **&MEMORY[0x1E6960CC0];
    v204 = 0;
    *type = 0;
    v203 = 0;
    if (!MEMORY[0x390])
    {
      v51 = 0;
      goto LABEL_164;
    }

    v117 = v115;
    *v192 = v116;
    MEMORY[0x7C8] = CFAbsoluteTimeGetCurrent();
    MEMORY[0xBC0] = CFAbsoluteTimeGetCurrent();
    MEMORY[0x830] = 0;
    if (*(v117 + 458))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_291();
      OUTLINED_FUNCTION_186();
      FigNotificationCenterAddWeakListener();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_186();
    FigNotificationCenterAddWeakListener();
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174(DefaultLocalCenter);
    v119 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174(v119);
    v120 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174(v120);
    v121 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174(v121);
    v122 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174(v122);
    v123 = CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_174(v123);
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_604();
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v124 = OUTLINED_FUNCTION_619();
      v125(v124);
    }

    *v206 = 0;
    if (!MEMORY[0xC10])
    {
      if (MEMORY[0x390] && (v126 = FigGetAllocatorForMedia(), (Mutable = CFDictionaryCreateMutable(v126, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
      {
        v128 = Mutable;
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_611();
        FigBytePumpGetFigBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v129 = OUTLINED_FUNCTION_516();
          v131 = v130(v129);
          v132 = *v206;
          if (!v131)
          {
            CFDictionarySetValue(v128, @"FBP_StoreBagConfiguration", *v206);
            v133 = FigGetAllocatorForMedia();
            FigBandwidthPredictorCreate(v133, v128, 0xC10);
            v132 = *v206;
          }

          if (v132)
          {
            CFRelease(v132);
          }
        }

        CFRelease(v128);
      }

      else
      {
        OUTLINED_FUNCTION_79();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    v134 = MEMORY[0x390];
    v135 = MEMORY[0x10];
    v136 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v136)
    {
      v137 = v136(v134, fpfs_BytePumpFn, fpfsi_DateMappingCallback, v135);
      if (v137)
      {
        goto LABEL_215;
      }

      v138 = MEMORY[0x390];
      v139 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v139)
      {
        v137 = v139(v138);
        if (!v137)
        {
          FigGetAllocatorForMedia();
          v140 = OUTLINED_FUNCTION_617();
          v51 = FigAlternateSelectionBossCopyProperty(v140, v141, v142, v143);
          if (MEMORY[0x78])
          {
            CFRelease(MEMORY[0x78]);
            MEMORY[0x78] = 0;
          }

          FigGetAllocatorForMedia();
          FigBytePumpGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v150 = OUTLINED_FUNCTION_793();
            v151(v150);
          }

          if (v51 || (fpfsi_MediaSelectionArrayChangedCallback(MEMORY[0x28], MEMORY[0x10]), FigGetAllocatorForMedia(), v162 = OUTLINED_FUNCTION_617(), (v51 = FigAlternateSelectionBossCopyProperty(v162, v163, v164, v165)) != 0))
          {
            if (v51 != -15514)
            {
              goto LABEL_162;
            }
          }

          else if (v204 && CFArrayGetCount(v204))
          {
            fpfsi_AlternateListChangedCallback(MEMORY[0x28], MEMORY[0x10]);
          }

          fpfsi_RTCReportingReportIRATEventIfNeeded(0, 800, v144, v145, v146, v147, v148, v149, valuea, v182, v184, v186, v188, v189, v192[0], v192[1], v194, v195);
          if (MEMORY[0x390])
          {
            v51 = 0;
          }

          else
          {
            v51 = -12925;
          }

LABEL_162:
          if (v203)
          {
            CFRelease(v203);
          }

LABEL_164:
          if (v204)
          {
            CFRelease(v204);
          }

          if (!v51)
          {
            v152 = FigGetAllocatorForMedia();
            v153 = CFArrayCreateMutable(v152, 0, MEMORY[0x1E695E9C0]);
            v154 = v153;
            if (v153)
            {
              CFArrayAppendValue(v153, @"Duration");
              if (*(v67 + 144))
              {
                CFArrayGetCount(*(v67 + 144));
                v155 = OUTLINED_FUNCTION_293();
                v228.location = 0;
                CFArrayAppendArray(v155, v156, v228);
              }

              if (*(*(CMBaseObjectGetVTable() + 16) + 16))
              {
                OUTLINED_FUNCTION_618();
                OUTLINED_FUNCTION_496();
                v158 = v157();
                if (v158)
                {
LABEL_214:
                  v51 = v158;
                  goto LABEL_180;
                }

                fpfsi_GetDuration(v199, &v196);
                if (!v159)
                {
                  fpfsi_NowReadyForInspection();
                }

                if (*(v67 + 912))
                {
                  fpfsi_UpdatePrefersConcurrentSwitching(v13);
                  FigGetAllocatorForMedia();
                  OUTLINED_FUNCTION_413();
                  FigBytePumpGetFigBaseObject();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v160 = OUTLINED_FUNCTION_308();
                    if (!v161(v160))
                    {
                      OUTLINED_FUNCTION_601();
                      v166 = OUTLINED_FUNCTION_178();
                      NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v166, v167, v168, v169, v170, v171, v172, v173, valuea, v182);
                      v175 = OUTLINED_FUNCTION_444();
                      fpfs_EnqueueNotification(v175, v176, v177, NotificationPayloadForProperties);
                      if (NotificationPayloadForProperties)
                      {
                        CFRelease(NotificationPayloadForProperties);
                      }
                    }
                  }

                  if (v195)
                  {
                    CFRelease(v195);
                  }

                  goto LABEL_181;
                }

LABEL_213:
                OUTLINED_FUNCTION_79();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", valuea, v182, v184);
                if (!v158)
                {
                  goto LABEL_181;
                }

                goto LABEL_214;
              }

              v51 = -12782;
            }

            else
            {
              v51 = -12786;
            }

LABEL_180:
            FigCreateErrorForOSStatus(v51, &v194);
LABEL_181:
            if (v194)
            {
              fpfsi_NotReadyForInspection(v13, v194);
            }

            fpfs_UnlockAndPostNotificationsWithCaller(v200);
            if (v154)
            {
              CFRelease(v154);
            }

            goto LABEL_185;
          }

LABEL_204:
          v154 = 0;
          goto LABEL_180;
        }

LABEL_215:
        v51 = v137;
        goto LABEL_162;
      }
    }

    v51 = -12782;
    goto LABEL_162;
  }

  fpfs_UnlockAndPostNotificationsWithCaller(v200);
LABEL_185:
  if (v194)
  {
    CFRelease(v194);
  }

  v13 = v199;
LABEL_188:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v200)
  {
    CFRelease(v200);
  }

  FigRetainProxyRelease();
  OUTLINED_FUNCTION_651();
}

uint64_t fpfsi_CoordinateWithAssetDownloader(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_518();
  if (!*(v2 + 912))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v10, v11);
LABEL_22:
    v7 = v3;
    goto LABEL_12;
  }

  if (!*(v1 + 2897))
  {
    v3 = FigAssetDownloadCoordinatorMarkAssetForInteractivity(*(v1 + 32));
    if (!v3)
    {
      FigAssetDownloadCoordinatorCopyDestinationURLForAsset(*(v1 + 32), &v10);
      if (!v3)
      {
        if (v10)
        {
          goto LABEL_20;
        }

        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_413();
        FigAssetGetCMBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v7 = 4294954514;
          goto LABEL_12;
        }

        v4 = OUTLINED_FUNCTION_308();
        v3 = v5(v4);
        if (!v3)
        {
          if (FigCFURLIsLocalResource())
          {
            v6 = cf;
            cf = 0;
            v10 = v6;
            if (!v6)
            {
LABEL_10:
              v7 = 0;
              *(v1 + 2897) = 1;
              goto LABEL_12;
            }
          }

          else if (!v10)
          {
            goto LABEL_10;
          }

LABEL_20:
          fpfsi_StartDownloadingToURL(v1);
          goto LABEL_10;
        }
      }
    }

    goto LABEL_22;
  }

  v7 = 0;
LABEL_12:
  if (!*(v1 + 2897))
  {
    FigAssetDownloadCoordinatorUnmarkAssetForInteractivity(*(v1 + 32));
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

void fpfsi_UpdatePrefersConcurrentSwitching(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 912))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_179();
    FigBytePumpGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v1 = OUTLINED_FUNCTION_188();
      v2(v1);
    }
  }
}

uint64_t fpfsi_setPreferredBitrateForExpensiveNetworks()
{
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v1 = DerivedStorage;
  v2 = (DerivedStorage + 104);
  v3 = *(DerivedStorage + 104);
  if (v3)
  {
    goto LABEL_21;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_766();
  v7 = FigAlternateFilterMonitorCreateForExpensiveNetwork(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  if (!*v2)
  {
    return 4294954434;
  }

LABEL_21:
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v8 = OUTLINED_FUNCTION_515();
    v10 = v9(v8);
  }

  else
  {
    v10 = 4294954514;
  }

  v11 = *(v1 + 2568);
  FigCFNumberGetSInt32();
  if (v11 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v12 = OUTLINED_FUNCTION_722();
    v13(v12);
  }

  if (!v3)
  {
    v14 = FigAlternateSelectionBossAddMonitor(*(v1 + 40), *(v1 + 104));
    if (v14)
    {
      return v14;
    }

    else
    {
      return v10;
    }
  }

  return v10;
}

uint64_t fpfsi_setResolutionCapForExpensiveNetworks()
{
  OUTLINED_FUNCTION_433();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v2 = DerivedStorage;
  v3 = (DerivedStorage + 112);
  v4 = *(DerivedStorage + 112);
  if (v4)
  {
    goto LABEL_24;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_766();
  v8 = FigAlternateFilterMonitorCreateForExpensiveNetwork(v5, v6, v7);
  if (v8)
  {
    return v8;
  }

  if (!*v3)
  {
    return 4294954434;
  }

LABEL_24:
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v9 = OUTLINED_FUNCTION_515();
    v11 = v10(v9);
  }

  else
  {
    v11 = 4294954514;
  }

  v18 = *MEMORY[0x1E695F060];
  CGSizeMakeWithDictionaryRepresentation(v0, &v18);
  if (*(v2 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v12 = OUTLINED_FUNCTION_113();
    v13(v12);
  }

  if (*(v2 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v14 = OUTLINED_FUNCTION_113();
    v15(v14);
  }

  if (!v4)
  {
    v16 = FigAlternateSelectionBossAddMonitor(*(v2 + 40), *(v2 + 112));
    if (v16)
    {
      return v16;
    }

    else
    {
      return v11;
    }
  }

  return v11;
}

void fpfsi_UpdateValidAlternateListAndSuggestAnAlternate()
{
  OUTLINED_FUNCTION_647();
  v47 = v2;
  v48 = v3;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_699();
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  if (v1)
  {
    v9 = *(DerivedStorage + 1664);
    if (v9)
    {
      CFRelease(v9);
      *(v8 + 1664) = 0;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    *(v8 + 1664) = CFArrayCreateMutableCopy(AllocatorForMedia, 0, v1);
  }

  if (*(v8 + 49))
  {
    v11 = *(v8 + 1664);
    if (v11)
    {
      if (CFArrayGetCount(v11) >= 1)
      {
        CFArrayGetValueAtIndex(*(v8 + 1664), 0);
        v12 = OUTLINED_FUNCTION_576();
        *(v8 + 1712) = fpfs_audioOnlyValidAlternateList(v12);
        if (v6)
        {
          *v6 = v4;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
    }
  }

  else if (dword_1EAF169F0)
  {
    v36 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      v17 = *v8;
      if (*v8)
      {
        v18 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v18 = "";
      }

      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      v37 = 136316162;
      OUTLINED_FUNCTION_545();
      v38 = v17;
      v39 = 2082;
      v40 = v18;
      v41 = v19;
      v42 = v0;
      v43 = 2082;
      v44 = v20;
      OUTLINED_FUNCTION_145();
      v21 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_456(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    OUTLINED_FUNCTION_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  theArray = 0;
  if (*(v8 + 552))
  {
    v13 = *(v8 + 1664);
    if (v13)
    {
      if (CFArrayGetCount(v13) >= 1)
      {
        v37 = 0;
        *type = 0;
        v36 = -1;
        v33 = 0;
        v34 = -1;
        v32 = -1;
        if (*(v8 + 128))
        {
          FigGetAllocatorForMedia();
          OUTLINED_FUNCTION_398();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v14 = OUTLINED_FUNCTION_444();
            v15(v14);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_646();
}

void fpfsi_UpdateValidAlternateListAndEvaluateCurrentAlternateAgaintValidAlternateList()
{
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_565();
  v644 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_592(DerivedStorage);
  v558 = CMBaseObjectGetDerivedStorage();
  v620 = 0;
  CurrentAudioPersistentIDFromMediaOption = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(v0);
  if (*(v3 + 49))
  {
    v13 = CurrentAudioPersistentIDFromMediaOption;
    v14 = *(v3 + 1664);
    if (v14 && CFArrayGetCount(v14))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, *(v3 + 1664));
    }

    else
    {
      MutableCopy = 0;
    }

    OUTLINED_FUNCTION_627();
    fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
    if (v17)
    {
      goto LABEL_152;
    }

    v512 = v13;
    if (!*(v3 + 1680))
    {
      CurrentDisplayVideoRangeFromMonitor = fpfsi_GetCurrentDisplayVideoRangeFromMonitor(v0);
      fpfs_getVideoRangeStringFromFPSupportVideoRange(CurrentDisplayVideoRangeFromMonitor);
      if (*(v3 + 2568))
      {
        OUTLINED_FUNCTION_267();
        if (*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          OUTLINED_FUNCTION_310();
          v21();
        }
      }
    }

    v18 = CMBaseObjectGetDerivedStorage();
    v19 = *(v18 + 1744);
    if (*(v18 + 96))
    {
      if (v19)
      {
        OUTLINED_FUNCTION_293();
        FigCFEqual();
        OUTLINED_FUNCTION_785();
        FigAlternateGetPeakBitRate(*(v18 + 1744));
        FigAlternateGetPeakBitRate(0);
LABEL_17:
        v22 = *(v18 + 1744);
        if (v22)
        {
          v23 = CFRetain(v22);
          v24 = v23;
          if ((v19 == 0) | v1 & 1)
          {
            v25 = v23;
            if (v23)
            {
              goto LABEL_23;
            }
          }

          else
          {
            fpfs_CancelTrialSwitch(v0);
            if (v168)
            {
              goto LABEL_348;
            }

            if (v24)
            {
              CFRelease(v24);
            }
          }

LABEL_22:
          v25 = 0;
          v24 = *(v3 + 1680);
          if (!v24)
          {
            v26 = 0;
            v547 = 0;
            v24 = 0;
            goto LABEL_49;
          }

LABEL_23:
          if (FigCFEqual())
          {
            LODWORD(v547) = 0;
            v26 = 0;
LABEL_47:
            if (FigCFEqual())
            {
              goto LABEL_355;
            }

            HIDWORD(v547) = 1;
LABEL_49:
            HIDWORD(v476) = v26;
            v488 = v25;
            value = -2;
            LODWORD(valuePtr.value) = -2;
            v571 = v3;
            if (*(CMBaseObjectGetDerivedStorage() + 56))
            {
              v643[0].value = 0;
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_368();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v47 = OUTLINED_FUNCTION_406();
                v48(v47);
              }

              value = valuePtr.value;
            }

            v49 = CMBaseObjectGetDerivedStorage();
            OUTLINED_FUNCTION_724(v49);
            v50 = CMBaseObjectGetDerivedStorage();
            VideoRange = FigAlternateGetVideoRange(0x1F0B67738);
            v52 = FigAlternateGetVideoRange(0);
            if (VideoRange >= 2 && v52 <= 1)
            {
              v499 = v0;
              v54 = fpfsi_GetCurrentDisplayVideoRangeFromMonitor(v0);
              fpfs_getVideoRangeStringFromFPSupportVideoRange(v54);
              OUTLINED_FUNCTION_251();
              if (*(*(CMBaseObjectGetVTable() + 16) + 48))
              {
                OUTLINED_FUNCTION_606();
                v55();
              }

              if (*(v50 + 872) == 2)
              {
                if (v54 == 1)
                {
                  v56 = 0;
                  goto LABEL_73;
                }
              }

              else
              {
                ShouldLimitHDRConcurrentPlayback = CelestialShouldLimitHDRConcurrentPlayback();
                v56 = 0;
                if (v54 == 1 || ShouldLimitHDRConcurrentPlayback)
                {
                  goto LABEL_73;
                }
              }
            }

            HDCPLevel = FigAlternateGetHDCPLevel(0x1F0B67738);
            v59 = FigAlternateGetHDCPLevel(0);
            v60 = HDCPLevel < 0 || HDCPLevel == v59;
            v56 = v60 || HDCPLevel <= value;
LABEL_73:
            LODWORD(v476) = v56;
            v62 = MEMORY[0x1E6960C70];
            v63 = v571;
            LODWORD(v464) = GetSwitchOptions(v571, 1);
            LODWORD(valuePtr.value) = 0;
            v643[0].value = 0;
            if (*(v571 + 56))
            {
              FigGetAllocatorForMedia();
              OUTLINED_FUNCTION_368();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v64 = OUTLINED_FUNCTION_406();
                if (!v65(v64))
                {
                  if (!v643[0].value)
                  {
                    goto LABEL_86;
                  }

                  CFNumberGetValue(v643[0].value, kCFNumberSInt32Type, &valuePtr);
                  if (LODWORD(valuePtr.value))
                  {
                    v66 = *(v571 + 52);
                    v67 = LODWORD(valuePtr.value) - v66;
                    if (LODWORD(valuePtr.value) != v66)
                    {
                      if (LODWORD(valuePtr.value) > v66)
                      {
                        v68 = *(v571 + 2568);
                        if (v68)
                        {
                          v69 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                          if (v69)
                          {
                            v69(v68, @"playerStats", 0x1F0B666B8, v67);
                          }
                        }
                      }

                      *(v571 + 52) = valuePtr.value;
                    }
                  }
                }
              }

              if (v643[0].value)
              {
                CFRelease(v643[0].value);
              }
            }

LABEL_86:
            flags = v62->flags;
            v71 = *(v571 + 2568);
            if (v71)
            {
              v72 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (v72)
              {
                v72(v71, @"playerStats", 0x1F0B42758, value, 0);
              }
            }

            v73 = HIDWORD(v547);
            if (HIDWORD(v547))
            {
              memset(v643, 0, 24);
              fpfs_GetNextTimeToPlayIfEstablished(v0, v643);
              time2 = v643[0];
              v82 = OUTLINED_FUNCTION_738(v74, v75, v76, v77, v78, v79, v80, v81, v417, v431, v442, v453, v464, v476, v488, v499, v512, v524, v535, v547, v558, v571, *(v571 + 1160), *(v571 + 1168), *(v571 + 1176), 0, v643[0].value);
              CMTimeAdd(v84, v82, v83);
              flags = valuePtr.flags;
            }

            v85 = *(v63 + 96);
            v86 = !v85 || !*(v558 + 458) || FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(v85, v24) == 0;
            v500 = MutableCopy;
            HIDWORD(v464) = flags;
            if (v73)
            {
              PeakBitRate = FigAlternateGetPeakBitRate(v24);
              v88 = PeakBitRate < FigAlternateGetPeakBitRate(v620);
            }

            else
            {
              v88 = 0;
            }

            HIDWORD(v453) = v86;
            if (v86)
            {
              goto LABEL_222;
            }

            isAlternateValid = CMBaseObjectGetDerivedStorage();
            v96 = isAlternateValid;
            v97 = *(isAlternateValid + 1680);
            if (!v97 || (isAlternateValid = fpfs_isAlternateValid(v0, v97), !isAlternateValid))
            {
              if (dword_1EAF169F0)
              {
                v152 = OUTLINED_FUNCTION_24(isAlternateValid, v97, v90, v91, v92, v93, v94, v95, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                OUTLINED_FUNCTION_95(v152, v153, v154, v155, v156, v157, v158, v159, v422, v436, v447, v458, v469, v481, v493, v505, v517, v529, v540, v552, v563, v576, typeg, type_8f, v613, v625, time2.value);
                OUTLINED_FUNCTION_81();
                if ("fpfsi_OkayToSwitch")
                {
                  if (*v96)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  if (v0)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  LODWORD(valuePtr.value) = 136316418;
                  OUTLINED_FUNCTION_285();
                  v640 = 2112;
                  *v641 = v192;
                  OUTLINED_FUNCTION_59();
                  v193 = OUTLINED_FUNCTION_30();
                  _os_log_send_and_compose_impl(v193, v194, v195, v196, v197, v62, v63, v198);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_524(v199, v200, v201, v202, v203);
                v63 = v571;
                v62 = MEMORY[0x1E6960C70];
              }

              goto LABEL_222;
            }

            if (v88)
            {
              if (*(v96 + 524) == 1)
              {
                for (i = *(v96 + 1024); i; i = *(i + 24))
                {
                  v99 = *(i + 168);
                  if (v99 < 2)
                  {
                    if (!*(i + 200))
                    {
LABEL_147:
                      if (dword_1EAF169F0)
                      {
                        v169 = OUTLINED_FUNCTION_24(isAlternateValid, v97, v90, v91, v92, v93, v94, v95, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                        OUTLINED_FUNCTION_95(v169, v170, v171, v172, v173, v174, v175, v176, v424, v438, v449, v460, v471, v483, v495, v507, v519, v531, v542, v554, v565, v578, typei, type_8h, v615, v627, time2.value);
                        OUTLINED_FUNCTION_81();
                        if ("fpfsi_OkayToSwitch")
                        {
                          v177 = *v96;
                          if (*v96)
                          {
                            v178 = (CMBaseObjectGetDerivedStorage() + 888);
                          }

                          else
                          {
                            v178 = "";
                          }

                          if (v0)
                          {
                            v212 = (CMBaseObjectGetDerivedStorage() + 3096);
                          }

                          else
                          {
                            v212 = "";
                          }

                          v213 = *(i + 32);
                          v214 = *(i + 168);
                          LODWORD(valuePtr.value) = 136316674;
                          *(&valuePtr.value + 4) = "fpfsi_OkayToSwitch";
                          LOWORD(valuePtr.flags) = 2048;
                          *(&valuePtr.flags + 2) = v177;
                          HIWORD(valuePtr.epoch) = 2082;
                          v635 = v178;
                          v636 = 2048;
                          v637 = v0;
                          v638 = 2082;
                          v639 = v212;
                          v640 = 1024;
                          *v641 = v213;
                          *&v641[4] = 1024;
                          *&v641[6] = v214;
                          OUTLINED_FUNCTION_59();
                          goto LABEL_215;
                        }

                        goto LABEL_216;
                      }

                      goto LABEL_217;
                    }
                  }

                  else if (v99 == 5)
                  {
                    goto LABEL_147;
                  }
                }

                v100 = *(v96 + 1072);
                if ((v100 & 1) != 0 && !*(v96 + 976))
                {
                  v181 = 0;
                }

                else
                {
                  if ((v100 & 2) == 0 || *(v96 + 992))
                  {
                    v643[0] = *v62;
                    v101 = OUTLINED_FUNCTION_270();
                    fpfs_GetItemBufferedDuration(v101, v102, v103, 0);
                    if ((v643[0].flags & 1) == 0)
                    {
                      goto LABEL_217;
                    }

                    valuePtr = v643[0];
                    OUTLINED_FUNCTION_386(MEMORY[0x1E6960CC0]);
                    v104 = CMTimeCompare(&valuePtr, &time2);
                    if (v104 <= 0)
                    {
                      goto LABEL_217;
                    }

                    if (*(v96 + 1736))
                    {
                      if (!dword_1EAF169F0)
                      {
                        goto LABEL_217;
                      }

                      v112 = OUTLINED_FUNCTION_24(v104, v105, v106, v107, v108, v109, v110, v111, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                      OUTLINED_FUNCTION_95(v112, v113, v114, v115, v116, v117, v118, v119, v418, v432, v443, v454, v465, v477, v489, v501, v513, v525, v536, v548, v559, v572, typec, type_8b, v609, v621, time2.value);
                      OUTLINED_FUNCTION_81();
                      if (!"fpfsi_OkayToSwitch")
                      {
                        goto LABEL_216;
                      }

                      if (*v96)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      if (!v0)
                      {
                        goto LABEL_214;
                      }

LABEL_204:
                      CMBaseObjectGetDerivedStorage();
                      goto LABEL_214;
                    }

                    if (*(v96 + 1744))
                    {
                      if (!dword_1EAF169F0)
                      {
                        goto LABEL_217;
                      }

                      v204 = OUTLINED_FUNCTION_24(v104, v105, v106, v107, v108, v109, v110, v111, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                      OUTLINED_FUNCTION_95(v204, v205, v206, v207, v208, v209, v210, v211, v426, v440, v451, v462, v473, v485, v497, v509, v521, v533, v544, v556, v567, v580, typek, type_8j, v617, v629, time2.value);
                      OUTLINED_FUNCTION_81();
                      if (!"fpfsi_OkayToSwitch")
                      {
                        goto LABEL_216;
                      }

                      if (*v96)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      if (v0)
                      {
                        goto LABEL_204;
                      }

LABEL_214:
                      OUTLINED_FUNCTION_3();
                      goto LABEL_215;
                    }

                    if (*(v96 + 2904) == 1)
                    {
                      if (!dword_1EAF169F0)
                      {
                        goto LABEL_217;
                      }

                      v216 = OUTLINED_FUNCTION_24(v104, v105, v106, v107, v108, v109, v110, v111, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                      OUTLINED_FUNCTION_95(v216, v217, v218, v219, v220, v221, v222, v223, v427, v441, v452, v463, v474, v486, v498, v510, v522, v534, v545, v557, v568, v581, typel, type_8k, v618, v630, time2.value);
                      OUTLINED_FUNCTION_81();
                      if (!"fpfsi_OkayToSwitch")
                      {
                        goto LABEL_216;
                      }

                      if (*v96)
                      {
                        CMBaseObjectGetDerivedStorage();
                      }

                      if (v0)
                      {
                        goto LABEL_204;
                      }

                      goto LABEL_214;
                    }

                    goto LABEL_222;
                  }

                  v181 = 1;
                }

                if (dword_1EAF169F0)
                {
                  v182 = OUTLINED_FUNCTION_24(isAlternateValid, v97, v90, v91, v92, v93, v94, v95, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                  OUTLINED_FUNCTION_95(v182, v183, v184, v185, v186, v187, v188, v189, v425, v439, v450, v461, v472, v484, v496, v508, v520, v532, v543, v555, v566, v579, typej, type_8i, v616, v628, time2.value);
                  OUTLINED_FUNCTION_81();
                  if ("fpfsi_OkayToSwitch")
                  {
                    v190 = *v96;
                    if (*v96)
                    {
                      v191 = (CMBaseObjectGetDerivedStorage() + 888);
                    }

                    else
                    {
                      v191 = "";
                    }

                    if (v0)
                    {
                      v215 = (CMBaseObjectGetDerivedStorage() + 3096);
                    }

                    else
                    {
                      v215 = "";
                    }

                    LODWORD(valuePtr.value) = 136316418;
                    *(&valuePtr.value + 4) = "fpfsi_OkayToSwitch";
                    LOWORD(valuePtr.flags) = 2048;
                    *(&valuePtr.flags + 2) = v190;
                    HIWORD(valuePtr.epoch) = 2082;
                    v635 = v191;
                    v636 = 2048;
                    v637 = v0;
                    v638 = 2082;
                    v639 = v215;
                    v640 = 1024;
                    *v641 = v181;
                    OUTLINED_FUNCTION_59();
LABEL_215:
                    v230 = OUTLINED_FUNCTION_30();
                    _os_log_send_and_compose_impl(v230, v231, v232, v233, v234, v62, v63, v235);
                  }

LABEL_216:
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_524(v236, v237, v238, v239, v240);
                  v63 = v571;
                  LOBYTE(v73) = BYTE4(v547);
                  v62 = MEMORY[0x1E6960C70];
                }

LABEL_217:
                if (v73)
                {
                  v241 = 0;
                  MutableCopy = v500;
                  goto LABEL_219;
                }

LABEL_222:
                LODWORD(v453) = v88;
                AudioChannelCount = FigAlternateGetAudioChannelCount(v620, v512, 0);
                v643[0].value = 0;
                if (*(CMBaseObjectGetDerivedStorage() + 128) && (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_368(), *(*(CMBaseObjectGetVTable() + 8) + 48)) && (v245 = OUTLINED_FUNCTION_406(), v246(v245), (v247 = v643[0].value) != 0))
                {
                  v323 = 0;
                  do
                  {
                    if (v247)
                    {
                      Count = CFArrayGetCount(v247);
                      v247 = v643[0].value;
                    }

                    else
                    {
                      Count = 0;
                    }

                    if (v323 >= Count)
                    {
                      v248 = v62;
                      CFRelease(v247);
                      goto LABEL_226;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v247, v323);
                    MaxAudioChannelCount = FigAlternateGetMaxAudioChannelCount(ValueAtIndex);
                    v247 = v643[0].value;
                    ++v323;
                  }

                  while (MaxAudioChannelCount < 3);
                  v248 = v62;
                  CFRelease(v643[0].value);
                  if (AudioChannelCount > 2)
                  {
                    goto LABEL_226;
                  }

                  v327 = CMBaseObjectGetDerivedStorage();
                  LODWORD(time2.value) = 0;
                  LODWORD(type) = 0;
                  v328 = fpfsi_GetCurrentAudioPersistentIDFromMediaOption(v0);
                  if (*(v327 + 1680))
                  {
                    v329 = v328;
                    if (CMTimebaseGetRate(*(v327 + 576)) != 0.0)
                    {
                      CMTimebaseGetTime(v643, *(v327 + 576));
                      OUTLINED_FUNCTION_389(MEMORY[0x1E6960CC0]);
                      valuePtr.epoch = v330;
                      if ((CMTimeCompare(v643, &valuePtr) & 0x80000000) == 0)
                      {
                        if (*(v327 + 3106))
                        {
                          if (!fpfs_isAlternateValid(v0, *(v327 + 1680)))
                          {
                            fpfsi_EmancipateItemFromMultichannelInhibitionsAndApplyFilters(v0);
                          }
                        }

                        else
                        {
                          v333 = FigAlternateGetPeakBitRate(v620);
                          if (v333 < FigAlternateGetPeakBitRate(*(v327 + 1680)) && (fpfsi_getAudioRouteSpatializationCapabilities(v0) & 1) != 0)
                          {
                            AudioChannelCounts = FigAlternateGetAudioChannelCounts(*(v327 + 1680), v329, &time2, 0);
                            v335 = OUTLINED_FUNCTION_784();
                            if (FigAlternateGetAudioChannelCounts(v335, v336, v337, 0) <= 2)
                            {
                              v338 = AudioChannelCounts - LODWORD(time2.value);
                              fpfsi_ReleaseAndClearMultichannelTimer(v327);
                              if (v338 >= 3)
                              {
                                *(v327 + 3106) = 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                else
                {
                  v248 = v62;
LABEL_226:
                  time2.value = 0;
                  LODWORD(type) = 0;
                  v249 = CMBaseObjectGetDerivedStorage();
                  fpfsi_GetCurrentAudioPersistentIDFromMediaOption(v0);
                  if (*(v249 + 1680))
                  {
                    if (CMTimebaseGetRate(*(v249 + 576)) != 0.0)
                    {
                      CMTimebaseGetTime(v643, *(v249 + 576));
                      OUTLINED_FUNCTION_389(MEMORY[0x1E6960CC0]);
                      valuePtr.epoch = v250;
                      if ((CMTimeCompare(v643, &valuePtr) & 0x80000000) == 0)
                      {
                        if (*(v249 + 3106))
                        {
                          v251 = FigAlternateGetPeakBitRate(v620);
                          if (v251 > FigAlternateGetPeakBitRate(*(v249 + 1680)) && (fpfsi_getAudioRouteSpatializationCapabilities(v0) & 1) != 0)
                          {
                            v252 = OUTLINED_FUNCTION_610();
                            if (FigAlternateGetAudioChannelCounts(v252, v253, v254, 0) >= 3 && !*(v249 + 3112))
                            {
                              if (fpfsi_AttemptToSetupInhibitMultichannelTimer_onceToken != -1)
                              {
                                dispatch_once(&fpfsi_AttemptToSetupInhibitMultichannelTimer_onceToken, &__block_literal_global_205);
                              }

                              v307 = *(v249 + 600);
                              v308 = *(v249 + 16);
                              dispatch_time(0, 1000000000 * fpfsi_AttemptToSetupInhibitMultichannelTimer_inhibitMultichannelPeriodSeconds);
                              v309 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, v307);
                              if (v309)
                              {
                                if (v308)
                                {
                                  CFRetain(v308);
                                }

                                v310 = OUTLINED_FUNCTION_292();
                                dispatch_set_context(v310, v311);
                                v312 = OUTLINED_FUNCTION_293();
                                dispatch_source_set_timer(v312, v313, 0xFFFFFFFFFFFFFFFFLL, 0);
                                dispatch_source_set_event_handler_f(v309, &fpfsi_MultichannelUninhibitedCallback);
                                v314 = OUTLINED_FUNCTION_249();
                                dispatch_source_set_cancel_handler_f(v314, v315);
                                dispatch_set_finalizer_f(v309, FigCFRelease);
                                dispatch_resume(v309);
                              }

                              *(v249 + 3112) = v309;
                              if (*(v249 + 40))
                              {
                                FigGetAllocatorForMedia();
                                OUTLINED_FUNCTION_439();
                                v321 = FigAlternateMultichannelAudioFilterCreate(v316, v317, v318, v319, v320);
                                v322 = time2.value;
                                if (!v321)
                                {
                                  FigAlternateSelectionBossAddFilter(*(v249 + 40), time2.value);
                                  v322 = time2.value;
                                }

                                if (v322)
                                {
                                  CFRelease(v322);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v63 = v571;
                  if (*(v571 + 3106) && AudioChannelCount > 2)
                  {
                    v25 = v488;
                    MutableCopy = v500;
                    if (!v500)
                    {
                      goto LABEL_357;
                    }

                    goto LABEL_356;
                  }
                }

                if (*(CMBaseObjectGetDerivedStorage() + 1704))
                {
                  if (FigCFEqual())
                  {
                    v255 = OUTLINED_FUNCTION_624();
                    if (fpfs_ScheduleRecoverySwitch(v255, v256, 0))
                    {
                      v643[0] = *v248;
                      OUTLINED_FUNCTION_57();
                      if (!fpfs_SetAlternateWithContext(v257, v258, v259, v260, v261, v262, v263, v264, 3u))
                      {
                        OUTLINED_FUNCTION_490();
                        fpfs_InitiateSwitchRecovery();
                        if (v331)
                        {
                          OUTLINED_FUNCTION_491();
                          fpfs_InitiateSwitchRecovery();
                          if (v332)
                          {
                            v241 = 0;
                            goto LABEL_244;
                          }
                        }
                      }
                    }
                  }
                }

                CMBaseObjectGetDerivedStorage();
                *v523 = *&v248->value;
                *&time2.value = *&v248->value;
                OUTLINED_FUNCTION_585();
                if (*(v265 + 1680))
                {
                  v266 = v265;
                  if (*(v265 + 553))
                  {
                    v267 = FigAlternateGetPeakBitRate(v620);
                    if (v267 < FigAlternateGetPeakBitRate(*(v266 + 1680)))
                    {
                      fpfs_CancelTrialSwitch(v0);
                      OUTLINED_FUNCTION_832(v268, v269, v270, v271, v272, v273, v274, v275, v417, v431, v442, v453, v464, v476, v488, v500, v523[0], v523[1], v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                      v276 = OUTLINED_FUNCTION_765();
                      GetSwitchOptions(v276, v277);
                      valuePtr = time2;
                      OUTLINED_FUNCTION_535();
                      OUTLINED_FUNCTION_177();
                      OUTLINED_FUNCTION_185();
                      v241 = fpfs_SetAlternateWithContext(v278, v279, v280, v281, v282, v283, v284, v285, v428);
                      if (!v241)
                      {
LABEL_244:
                        MutableCopy = v500;
                        goto LABEL_245;
                      }

                      v24 = v488;
                      MutableCopy = v500;
LABEL_348:
                      v25 = v24;
                      if (!MutableCopy)
                      {
LABEL_357:
                        if (v25)
                        {
                          CFRelease(v25);
                        }

                        goto LABEL_359;
                      }

LABEL_356:
                      CFRelease(MutableCopy);
                      goto LABEL_357;
                    }
                  }
                }

                *&time2.value = *v523;
                OUTLINED_FUNCTION_585();
                v362 = OUTLINED_FUNCTION_505();
                SwitchOptions = GetSwitchOptions(v362, v363);
                OUTLINED_FUNCTION_832(SwitchOptions, v365, v366, v367, v368, v369, v370, v371, v417, v431, v442, v453, v464, v476, v488, v500, v523[0], v523[1], v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
                OUTLINED_FUNCTION_132();
                MutableCopy = v500;
                if (v60)
                {
                  v380 = v453;
                  OUTLINED_FUNCTION_710(v372, v373, v374, v375, v376, v377, v378, v379, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v569, v571, typeb, type_8a, v619, v631, *&time2.value);
                  valuePtr.epoch = time2.epoch;
                  OUTLINED_FUNCTION_535();
                  OUTLINED_FUNCTION_185();
                  v372 = fpfs_SetAlternateWithContext(v381, v382, v383, v384, v385, v386, v387, v388, v429);
                  if (v372 == -12644)
                  {
                    if (v380 && !((*(v569 + 458) == 0) | BYTE4(v453) & 1))
                    {
                      v241 = 0;
                      goto LABEL_219;
                    }
                  }

                  else
                  {
                    v241 = v372;
                    OUTLINED_FUNCTION_381();
                    if ((v408 & HIDWORD(v453)) != 1)
                    {
                      goto LABEL_370;
                    }
                  }
                }

                OUTLINED_FUNCTION_710(v372, v373, v374, v375, v376, v377, v378, v379, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v569, v571, typeb, type_8a, v619, v631, *&time2.value);
                valuePtr.epoch = time2.epoch;
                OUTLINED_FUNCTION_535();
                OUTLINED_FUNCTION_185();
                fpfs_SetAlternateWithContext(v409, v410, v411, v412, v413, v414, v415, v416, v430);
                v241 = 0;
                OUTLINED_FUNCTION_381();
LABEL_370:
                if (!v408)
                {
LABEL_245:
                  time2.value = 0;
                  v286 = CMBaseObjectGetDerivedStorage();
                  if (v286)
                  {
                    v294 = v286;
                    v295 = *(v286 + 96);
                    if (!v295 || (v296 = FigGetAllocatorForMedia(), (v297 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v297(v295, @"AfmfpbProperty_CandidateAlternatesForAdaptiveBitrateSwitching", v296, &time2))
                    {
LABEL_340:
                      MutableCopy = v500;
                      if (time2.value)
                      {
                        CFRelease(time2.value);
                      }

                      goto LABEL_342;
                    }

                    MutableCopy = v500;
                    if (time2.value)
                    {
                      if (CFArrayGetCount(time2.value) >= 1)
                      {
                        if (time2.value && (v298 = CFArrayGetCount(time2.value), v299 = v298 - 1, v298 >= 1))
                        {
                          v300 = 0;
                          do
                          {
                            v301 = OUTLINED_FUNCTION_481();
                            v303 = CFArrayGetValueAtIndex(v301, v302);
                            RankingScore = FigAlternateGetRankingScore(v303);
                            v305 = RankingScore == -1.0;
                          }

                          while (RankingScore != -1.0 && v299 != v300++);
                        }

                        else
                        {
                          v305 = 0;
                        }

                        v339 = 0;
                        v340 = 0;
                        v341 = 0;
                        v342 = 0.0;
                        while (1)
                        {
                          v343 = time2.value;
                          if (time2.value)
                          {
                            v343 = CFArrayGetCount(time2.value);
                          }

                          if (v341 >= v343)
                          {
                            break;
                          }

                          v344 = CFArrayGetValueAtIndex(time2.value, v341);
                          if (v305)
                          {
                            v345 = FigAlternateGetPeakBitRate(v344);
                            v346 = v345 > v339;
                            if (v345 > v339)
                            {
                              v339 = v345;
                            }
                          }

                          else
                          {
                            v347 = FigAlternateGetRankingScore(v344);
                            v346 = v347 > v342;
                            if (v347 > v342)
                            {
                              v342 = v347;
                            }
                          }

                          if (v346)
                          {
                            v340 = v341;
                          }

                          ++v341;
                        }

                        if (dword_1EAF169F0)
                        {
                          v633 = OS_LOG_TYPE_DEFAULT;
                          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                          v349 = v633;
                          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v633);
                          OUTLINED_FUNCTION_125();
                          if (v60)
                          {
                            v351 = v350;
                          }

                          else
                          {
                            v351 = 0;
                          }

                          if (v351)
                          {
                            v389 = *v294;
                            if (v389)
                            {
                              CMBaseObjectGetDerivedStorage();
                            }

                            if (v0)
                            {
                              v390 = (CMBaseObjectGetDerivedStorage() + 3096);
                            }

                            else
                            {
                              v390 = "";
                            }

                            if (v305)
                            {
                              v391 = "peak bitrate";
                            }

                            else
                            {
                              v391 = "score";
                            }

                            CFArrayGetValueAtIndex(time2.value, v340);
                            LODWORD(valuePtr.value) = 136316674;
                            *(&valuePtr.value + 4) = "fpfsi_logHighestEligibleAlternate";
                            LOWORD(valuePtr.flags) = 2048;
                            *(&valuePtr.flags + 2) = v389;
                            OUTLINED_FUNCTION_749();
                            v637 = v0;
                            v638 = v392;
                            v639 = v390;
                            v640 = 2080;
                            *v641 = v391;
                            *&v641[8] = 2112;
                            v642 = v393;
                            OUTLINED_FUNCTION_59();
                            v394 = OUTLINED_FUNCTION_34();
                            _os_log_send_and_compose_impl(v394, v395, v396, v397, v398, os_log_and_send_and_compose_flags_and_os_log_type, v349, v399);
                          }

                          OUTLINED_FUNCTION_2();
                          fig_log_call_emit_and_clean_up_after_send_and_compose();
                          v63 = v571;
                        }
                      }

                      goto LABEL_340;
                    }
                  }

LABEL_342:
                  fpfsi_SetupSkipBitrateRangeFilter(v0, v287, v288, v289, v290, v291, v292, v293, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547);
                  v243 = v476;
LABEL_343:
                  if (HIDWORD(v476) && v241)
                  {
                    fpfs_ReleasePlayerHDRPlaybackBaton(*v63);
                    if (v547)
                    {
                      fpfs_ReleasePlayer4kPlaybackBaton(*v63);
                    }

                    goto LABEL_347;
                  }

                  if (v241)
                  {
LABEL_347:
                    v24 = v488;
                    goto LABEL_348;
                  }

                  if ((v243 & 1) == 0)
                  {
                    fpfs_stopResetDisturbReprepareAndResume(*v63, v0, 1);
                  }

                  v25 = v488;
                  if (*(v63 + 2496) > 0.0)
                  {
                    fpfsi_SetupIFramePrefetch();
                  }

LABEL_355:
                  if (!MutableCopy)
                  {
                    goto LABEL_357;
                  }

                  goto LABEL_356;
                }

LABEL_219:
                v242 = *(v63 + 96);
                if (v242)
                {
                  FigAlternatePlaybackBitrateMonitorRejectSwitch(v242, *(v63 + 1680));
                }

                v243 = 1;
                goto LABEL_343;
              }

              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v136 = OUTLINED_FUNCTION_24(isAlternateValid, v97, v90, v91, v92, v93, v94, v95, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
              OUTLINED_FUNCTION_95(v136, v137, v138, v139, v140, v141, v142, v143, v420, v434, v445, v456, v467, v479, v491, v503, v515, v527, v538, v550, v561, v574, typee, type_8d, v611, v623, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v96)
              {
                CMBaseObjectGetDerivedStorage();
                if (!v0)
                {
LABEL_156:
                  LODWORD(valuePtr.value) = 136316418;
                  OUTLINED_FUNCTION_285();
                  v640 = 1024;
                  *v641 = v180;
                  OUTLINED_FUNCTION_59();
                  goto LABEL_215;
                }
              }

              else if (!v0)
              {
                goto LABEL_156;
              }

              CMBaseObjectGetDerivedStorage();
              goto LABEL_156;
            }

            v120 = fpfsi_TrialSwitchDownInProgress(v96);
            if (v120)
            {
              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v128 = OUTLINED_FUNCTION_24(v120, v121, v122, v123, v124, v125, v126, v127, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
              OUTLINED_FUNCTION_95(v128, v129, v130, v131, v132, v133, v134, v135, v419, v433, v444, v455, v466, v478, v490, v502, v514, v526, v537, v549, v560, v573, typed, type_8c, v610, v622, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v96)
              {
                CMBaseObjectGetDerivedStorage();
                if (!v0)
                {
                  goto LABEL_179;
                }
              }

              else if (!v0)
              {
                goto LABEL_179;
              }

              goto LABEL_178;
            }

            if (*(v96 + 2904) == 1)
            {
              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v144 = OUTLINED_FUNCTION_24(v120, v121, v122, v123, v124, v125, v126, v127, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
              OUTLINED_FUNCTION_95(v144, v145, v146, v147, v148, v149, v150, v151, v421, v435, v446, v457, v468, v480, v492, v504, v516, v528, v539, v551, v562, v575, typef, type_8e, v612, v624, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v96)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (!v0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              if (!*(v96 + 471))
              {
                goto LABEL_222;
              }

              if (!dword_1EAF169F0)
              {
                goto LABEL_217;
              }

              v160 = OUTLINED_FUNCTION_24(v120, v121, v122, v123, v124, v125, v126, v127, v417, v431, v442, v453, v464, v476, v488, v500, v512, v524, v535, v547, v558, v571, type, type_8, v608, v620, time2.value);
              OUTLINED_FUNCTION_95(v160, v161, v162, v163, v164, v165, v166, v167, v423, v437, v448, v459, v470, v482, v494, v506, v518, v530, v541, v553, v564, v577, typeh, type_8g, v614, v626, time2.value);
              OUTLINED_FUNCTION_81();
              if (!"fpfsi_OkayToSwitch")
              {
                goto LABEL_216;
              }

              if (*v96)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (!v0)
              {
LABEL_179:
                OUTLINED_FUNCTION_3();
                goto LABEL_215;
              }
            }

LABEL_178:
            CMBaseObjectGetDerivedStorage();
            goto LABEL_179;
          }

          v27 = CMBaseObjectGetDerivedStorage();
          v28 = FigAlternateGetVideoRange(*(v27 + 1680));
          v29 = FigAlternateGetVideoRange(0);
          v30 = v28 <= 1 && v29 >= 2;
          if (v30 && CelestialShouldLimitHDRConcurrentPlayback() && (v31 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v31), !v60) && fpfs_CanRenderVideo(v32, 0))
          {
            if (!fpfs_GrabPlayerHDRPlaybackBaton(*v3))
            {
              if (dword_1EAF169F0)
              {
                v224 = OUTLINED_FUNCTION_24(0, v33, v34, v35, v36, v37, v38, v39, v417, v431, v442, v453, v464, v475, v487, v499, v13, v524, v535, v546, v558, v570, type, type_8, v608, 0, time2.value);
                os_log_type_enabled(v224, typea);
                OUTLINED_FUNCTION_28();
                if (MutableCopy)
                {
                  if (*v3)
                  {
                    v227 = (CMBaseObjectGetDerivedStorage() + 888);
                  }

                  else
                  {
                    v227 = "";
                  }

                  if (v0)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  OUTLINED_FUNCTION_442();
                  v635 = v227;
                  OUTLINED_FUNCTION_9();
                  OUTLINED_FUNCTION_23();
                  _os_log_send_and_compose_impl(v352, v353, v354, v355, v356, v357, typea, v358);
                }

                OUTLINED_FUNCTION_2();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
              if (!v359)
              {
                v360 = OUTLINED_FUNCTION_203();
                fpfsi_SwitchBetweenHDRAndSDR(v360, v361);
                goto LABEL_355;
              }

              goto LABEL_373;
            }

            v26 = 1;
          }

          else
          {
            v26 = 0;
          }

          v40 = CMBaseObjectGetDerivedStorage();
          OUTLINED_FUNCTION_294(v40);
          if (!*(CMBaseObjectGetDerivedStorage() + 905))
          {
            goto LABEL_46;
          }

          v41 = FigAlternateIs4k(*(v28 + 1680));
          v42 = FigAlternateIs4k(0);
          v43 = 0;
          if (v41 == v42 || !v42)
          {
            goto LABEL_44;
          }

          if (!CelestialShouldLimit4kConcurrentPlayback() || (v44 = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(v44), v60) || !fpfs_CanRenderVideo(v45, 0))
          {
LABEL_46:
            LODWORD(v547) = 0;
            goto LABEL_47;
          }

          if (fpfs_GrabPlayer4kPlaybackBaton(*v3))
          {
            v43 = 1;
LABEL_44:
            LODWORD(v547) = v43;
            goto LABEL_47;
          }

          fpfsi_UpdateValidAlternateListAndSuggestAnAlternate();
          if (!v225)
          {
            v226 = OUTLINED_FUNCTION_203();
            fpfsi_SwitchBetween4kAndHD(v226);
            goto LABEL_355;
          }

LABEL_373:
          v24 = v25;
          goto LABEL_348;
        }

        if ((v19 == 0) | v1 & 1)
        {
          goto LABEL_22;
        }

        fpfs_CancelTrialSwitch(v0);
        if (!v179)
        {
          goto LABEL_22;
        }

LABEL_152:
        v24 = 0;
        goto LABEL_348;
      }
    }

    else if (v19)
    {
      OUTLINED_FUNCTION_284();
      FigCFArrayContainsValue();
      OUTLINED_FUNCTION_785();
      goto LABEL_17;
    }

    v1 = 0;
    goto LABEL_17;
  }

  if (dword_1EAF169F0)
  {
    v228 = OUTLINED_FUNCTION_24(CurrentAudioPersistentIDFromMediaOption, v6, v7, v8, v9, v10, v11, v12, v417, v431, v442, v453, v464, v475, v487, v499, v511, v524, v535, v546, v558, v570, type, type_8, v608, 0, time2.value);
    os_log_type_enabled(v228, typem);
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (*v3)
      {
        v229 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v229 = "";
      }

      if (v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_442();
      v635 = v229;
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_667();
      _os_log_send_and_compose_impl(v400, v401, v402, v403, v404, v405, v406, v407);
    }

    OUTLINED_FUNCTION_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_359:
  OUTLINED_FUNCTION_191();
}

void fpfsi_updateNetworkCostMonitorMaximumMediaBitrate(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2272))
  {
    OUTLINED_FUNCTION_251();
    v13 = 0;
    cf = 0;
    v1 = *(CMBaseObjectGetDerivedStorage() + 96);
    if (v1)
    {
      v2 = *MEMORY[0x1E695E480];
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v3 && !v3(v1, @"AfmfpbProperty_HighestValidPeakBitrate", v2, &cf))
      {
        if (cf)
        {
          OUTLINED_FUNCTION_681();
          CFNumberGetValue(v4, v5, v6);
        }

        else
        {
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v12, v14);
          OUTLINED_FUNCTION_785();
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    OUTLINED_FUNCTION_266();
    SInt32 = FigCFNumberCreateSInt32();
    if (SInt32)
    {
      v8 = SInt32;
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v9 = OUTLINED_FUNCTION_236();
        v10(v9);
      }

      CFRelease(v8);
    }
  }
}

void fpfs_StopPlayingItem()
{
  OUTLINED_FUNCTION_193();
  v319 = v1;
  v3 = v2;
  v5 = v4;
  Next = v6;
  v376 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *DerivedStorage;
  v363 = 0;
  v10 = *(Next + 80);
  HIDWORD(v327) = v10 == v5;
  v11 = *(Next + 688);
  Count = CFArrayGetCount(*(Next + 72));
  v348 = v10;
  if (v10)
  {
    v13 = Count + 1;
  }

  else
  {
    v13 = Count;
  }

  LODWORD(os_log_and_send_and_compose_flags_and_os_log_type) = FigPlaybackGetEffectiveActionAtEnd(v11, v13);
  cf = 0;
  v362 = 0;
  BOOLean = 0;
  CFRetain(v5);
  if (!v3)
  {
    v3 = *(DerivedStorage + 504);
  }

  fpfsi_RemoveAndClearTimer((DerivedStorage + 1608));
  v14 = MEMORY[0x1E6960C70];
  v15 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 1616) = *MEMORY[0x1E6960C70];
  v16 = v14[2];
  *(DerivedStorage + 1632) = v16;
  *v335 = v15;
  *(DerivedStorage + 1640) = v15;
  v331 = v16;
  *(DerivedStorage + 1656) = v16;
  fpfsi_RemoveAndClearTimer((DerivedStorage + 2320));
  fpfsi_RemoveAndClearTimer((DerivedStorage + 2352));
  fpfsi_RemoveAndClearTimer((DerivedStorage + 2360));
  fpfsi_RemoveAndClearTimer((DerivedStorage + 3456));
  if (*(DerivedStorage + 332))
  {
    if (v3 && CFErrorGetCode(v3) != -15697)
    {
      v14 = *(DerivedStorage + 2216);
      if (!v14)
      {
        v14 = *(DerivedStorage + 2220);
      }

      CFErrorGetCode(v3);
      OUTLINED_FUNCTION_513();
      fpfs_SeekDidFail();
    }

    else
    {
      v0 = &v366;
      memset(&v371, 0, sizeof(v371));
      fpfsi_GetPumpMaxTimeAvailable(&v371);
      memset(&v366, 0, sizeof(v366));
      v17 = OUTLINED_FUNCTION_234();
      fpfs_GetNextTimeToPlay(v17, v18, v19);
      time1 = v371;
      v20 = CMTimeMinimum(&v366, &time1, &time2);
      OUTLINED_FUNCTION_342(v20, v21, v22, v23, v24, v25, v26, v27, v311, v315, v319, v323, v327, v331, *v335, *&v335[4], v341, v345, v10, v350, os_log_and_send_and_compose_flags_and_os_log_type, v356, time1.value, *&time1.timescale, time1.epoch, v359, BOOLean, cf, v362, v363, time2.value, *&time2.timescale, time2.epoch, v365, *&v366.value);
      fpfs_SetTime(v5, &time2);
      v28 = OUTLINED_FUNCTION_266();
      fpfsi_setLastSeekTimeSet(v28, v29);
      *(DerivedStorage + 1472) = *v336;
      *(DerivedStorage + 1488) = v332;
      v37 = *(DerivedStorage + 2216);
      if (!v37)
      {
        v37 = *(DerivedStorage + 2220);
      }

      OUTLINED_FUNCTION_342(v30, v31, v37, v32, v33, v34, v35, v36, v312, v316, v320, v324, v328, v332, *v336, *&v336[4], v342, v346, v349, v351, v355, v357, time1.value, *&time1.timescale, time1.epoch, v359, BOOLean, cf, v362, v363, time2.value, *&time2.timescale, time2.epoch, v365, *&v366.value);
      OUTLINED_FUNCTION_513();
      OUTLINED_FUNCTION_305();
      fpfs_SeekDidComplete();
    }
  }

  v347 = Next;
  if (*(DerivedStorage + 530))
  {
    LODWORD(v323) = 0;
    goto LABEL_81;
  }

  v38 = *(Next + 696);
  *(Next + 696) = v3;
  if (!v3)
  {
    if (!v38)
    {
      goto LABEL_18;
    }

LABEL_22:
    CFRelease(v38);
    if (!v3)
    {
      goto LABEL_19;
    }

LABEL_23:
    LODWORD(v371.value) = CFErrorGetCode(v3);
    v43 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v371);
    if (v43)
    {
      v45 = v43;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v44 = Mutable;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"Result", v45);
        if (LODWORD(v371.value))
        {
          v48 = OUTLINED_FUNCTION_782();
          CFDictionarySetValue(v48, v49, v50);
        }
      }

      CFRelease(v45);
    }

    else
    {
      v44 = 0;
    }

    *(Next + 704) = @"ReasonAdvanceDueToError";
    if (*(DerivedStorage + 460))
    {
      if (*(DerivedStorage + 469))
      {
        v51 = &kFigPlaybackItemNotification_FailedToPlayToEnd;
      }

      else
      {
        v51 = &kFigPlaybackItemNotification_FailedToBecomeReadyForPlayback;
      }
    }

    else
    {
      v51 = &kFigPlaybackItemNotification_FailedToBecomeReadyForInspection;
    }

    fpfs_EnqueueNotification(v9, *v51, v5, v44);
    v371.value = 0;
    v366.value = 0;
    time2.value = 0;
    v323 = CMBaseObjectGetDerivedStorage();
    CFErrorGetCode(v3);
    CFErrorGetDomain(v3);
    OUTLINED_FUNCTION_802();
    FigCopyLastSignaledErrorInfo();
    if (!*(DerivedStorage + 2568))
    {
      goto LABEL_290;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      OUTLINED_FUNCTION_732();
      OUTLINED_FUNCTION_504();
      v52();
    }

    if (*(DerivedStorage + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_732();
        OUTLINED_FUNCTION_426();
        v53();
      }

      v54 = *(DerivedStorage + 2568);
      if (v54)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v55 = OUTLINED_FUNCTION_622();
          v56(v55);
        }

        v54 = *(DerivedStorage + 2568);
      }
    }

    else
    {
LABEL_290:
      v54 = 0;
    }

    if (v371.value)
    {
      if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_622();
        OUTLINED_FUNCTION_504();
        v57();
      }

      CFRelease(v371.value);
      v54 = *(DerivedStorage + 2568);
    }

    if (v366.value)
    {
      if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_622();
        OUTLINED_FUNCTION_504();
        v58();
      }

      CFRelease(v366.value);
      v54 = *(DerivedStorage + 2568);
    }

    if (v54 && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_622();
      OUTLINED_FUNCTION_240();
      v59();
    }

    if (*(DerivedStorage + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      OUTLINED_FUNCTION_622();
      OUTLINED_FUNCTION_305();
      v60();
    }

    FigCAStatsReportingSubmitData();
    v61 = FigGetAllocatorForMedia();
    FigMetricErrorEventCreate(v61, 0, v3, &cf);
    v0 = *(DerivedStorage + 3400);
    v62 = cf;
    v63 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v63)
    {
      v63(v0, 0, v62);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    LODWORD(v323) = 0;
    goto LABEL_65;
  }

  CFRetain(v3);
  if (v38)
  {
    goto LABEL_22;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_23;
  }

LABEL_19:
  OUTLINED_FUNCTION_402();
  fpfs_EnqueueNotification(v39, v40, v41, v42);
  LODWORD(v323) = 1;
LABEL_65:
  v64 = *(Next + 960);
  if (v64)
  {
    v65 = *(DerivedStorage + 2568);
    CFErrorGetCode(v64);
    if (v65)
    {
      OUTLINED_FUNCTION_603();
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_240();
        v66();
      }
    }

    v14 = *(Next + 960);
  }

  else
  {
    v14 = 0;
  }

  *(Next + 960) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  *(DerivedStorage + 530) = 1;
  v67 = *(Next + 108) < 0.0 && os_log_and_send_and_compose_flags_and_os_log_type == 1;
  if (v67)
  {
    fpfsi_SeekToCurrentTime(v5);
  }

LABEL_81:
  v68 = *(DerivedStorage + 1024);
  if (v68)
  {
    v14 = MEMORY[0x1E6960C70];
    do
    {
      v0 = *(v68 + 24);
      if (*(v68 + 168) == 6)
      {
        v69 = OUTLINED_FUNCTION_515();
        fpfsi_MoveTrackToPlayedOut(v69, v70, v71);
        if (!v0)
        {
          break;
        }
      }

      else
      {
        fpfs_DeleteTrack(v5, v68);
        if (!v0)
        {
          break;
        }
      }

      v68 = v0;
    }

    while (*(DerivedStorage + 1024));
  }

  v352 = v9;
  CMBaseObjectGetDerivedStorage();
  v72 = OUTLINED_FUNCTION_297();
  fpfs_ClearAllCachedRenderChains(v72);
  *(v14 + 796) = 0;
  v73 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(v73);
  v74 = CMBaseObjectGetDerivedStorage();
  v366.value = 0;
  if (v0[38].value)
  {
    if (BYTE1(v0[128].timescale))
    {
      goto LABEL_110;
    }

    Next = v74;
    v75 = FigGetAllocatorForMedia();
    FigBytePumpGetFigBaseObject();
    v77 = v76;
    v78 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v78)
    {
      v78(v77, 0x1F0B1F658, v75, &v366);
    }

    if (v366.value)
    {
      v79 = (Next + 528);
      if (*(Next + 528) || (FigAssetDownloadCoordinatorCopyClientBundleIdentifierForAsset(*&v0[1].timescale, (Next + 528)), *v79))
      {
        Next = FigGetAllocatorForMedia();
        Current = CFAbsoluteTimeGetCurrent();
        v81 = CFDateCreate(Next, Current);
        if (v81)
        {
          Next = v81;
          value = v366.value;
          v83 = *v79;
          v84 = CMBaseObjectGetDerivedStorage();
          v85 = 0;
          v371.value = 0;
          if (!value || !v83)
          {
            goto LABEL_106;
          }

          if (*(v84 + 3080))
          {
            v85 = 1;
            goto LABEL_106;
          }

          fpfsi_isItemPlayedOut(v5);
          if (v86)
          {
            v85 = 1;
            v88 = v371.value;
            if (!v371.value)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v87 = FigAssetDownloadStorageManagementCopyLastPlayedOutDateForAssetAtURL(value, v83, &v371);
            v88 = v371.value;
            if (v87)
            {
              v85 = 0;
              if (!v371.value)
              {
LABEL_106:
                PlayedDateForAssetAtURL = FigAssetDownloadStorageManagementSetLastPlayedDateForAssetAtURL(v366.value, *v79, Next, v85);
                if (v85 && !PlayedDateForAssetAtURL)
                {
                  BYTE1(v0[128].timescale) = 1;
                }

                CFRelease(Next);
                goto LABEL_110;
              }
            }

            else
            {
              v85 = v371.value != 0;
              if (!v371.value)
              {
                goto LABEL_106;
              }
            }
          }

          CFRelease(v88);
          goto LABEL_106;
        }

        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v311, v315, v319);
      }

LABEL_110:
      if (v366.value)
      {
        CFRelease(v366.value);
      }
    }
  }

  fpfsi_RTCReportingReportStartupPerformanceMetrics(v5);
  v97 = *(DerivedStorage + 96);
  if (v97)
  {
    FigAlternatePlaybackBitrateMonitorSubmitABRHistory(v97);
  }

  v98 = *(DerivedStorage + 56);
  v99 = v352;
  if (v98)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_603();
    v100 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v100)
    {
      if (!v100(v98, @"AlternateFilterMonitorProperty_AOCP", v0, &BOOLean))
      {
        v128 = *(DerivedStorage + 2568);
        v129 = CFBooleanGetValue(BOOLean);
        if (v128)
        {
          v130 = v129;
          v131 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v131)
          {
            v131(v128, @"playerStats", 0x1F0B427F8, v130, 1);
          }
        }
      }
    }
  }

  v101 = &unk_1EAF16000;
  if ((os_log_and_send_and_compose_flags_and_os_log_type - 1) <= 1)
  {
    v102 = v348;
    if (v348 == v5)
    {
      if (os_log_and_send_and_compose_flags_and_os_log_type == 1)
      {
        fpfs_stopPlaybackForInternalReason(v352);
      }

      else
      {
        *&time2.value = *v335;
        time2.epoch = v331;
        fpfsi_pauseItem(v5);
        fpfs_GetTime(DerivedStorage, &time2);
        if (*(DerivedStorage + 1436))
        {
          v140 = (DerivedStorage + 1424);
          v371 = *(DerivedStorage + 1424);
          v366 = time2;
          v141 = OUTLINED_FUNCTION_337();
          if ((CMTimeCompare(v141, v142) & 0x80000000) == 0)
          {
            if (dword_1EAF169F0)
            {
              LODWORD(time1.value) = 0;
              HIBYTE(v356) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_28();
              if (Next)
              {
                v143 = *DerivedStorage;
                if (*DerivedStorage)
                {
                  v144 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v144 = "";
                }

                *v335 = v144;
                if (v5)
                {
                  v160 = (CMBaseObjectGetDerivedStorage() + 3096);
                }

                else
                {
                  v160 = "";
                }

                v331 = v160;
                *&v371.value = *v140;
                v371.epoch = *(DerivedStorage + 1440);
                Seconds = CMTimeGetSeconds(&v371);
                v371 = time2;
                v162 = CMTimeGetSeconds(&v371);
                LODWORD(v366.value) = 136316674;
                *(&v366.value + 4) = "fpfs_StopPlayingItem";
                LOWORD(v366.flags) = 2048;
                *(&v366.flags + 2) = v143;
                HIWORD(v366.epoch) = 2082;
                v367 = *v335;
                LOWORD(v368[0]) = 2048;
                *(v368 + 2) = v5;
                WORD1(v368[1]) = 2082;
                *(&v368[1] + 4) = v331;
                WORD2(v368[2]) = 2048;
                *(&v368[2] + 6) = Seconds;
                HIWORD(v368[3]) = 2048;
                v369 = *&v162;
                OUTLINED_FUNCTION_72();
                v163 = OUTLINED_FUNCTION_25();
                _os_log_send_and_compose_impl(v163, v164, v165, v166, v167, os_log_and_send_and_compose_flags_and_os_log_type, 0, v168);
                v102 = v348;
              }

              OUTLINED_FUNCTION_2();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v101 = &unk_1EAF16000;
            }

            *v140 = *&time2.value;
            *(DerivedStorage + 1440) = time2.epoch;
            OUTLINED_FUNCTION_402();
            fpfs_EnqueueNotification(v169, v170, v171, v172);
            v371 = time2;
            fpfsi_EnqueueReachedTimeToPausePlaybackNotification(v5, &v371.value);
          }
        }
      }

      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_742();
        v179 = OUTLINED_FUNCTION_453(qword_1EAF169E8, v173, &time2, v174, v175, v176, v177, v178, v311, v315, v319, v323, v327, v331, *v335, *&v335[4], v341);
        OUTLINED_FUNCTION_846(v179, v180, v181, v182, v183, v184, v185, v186, v314, v318, v322, v326, v330, v334, v338, v340, v344, v347, v348, v352, os_log_and_send_and_compose_flags_and_os_log_type, v356, time1.value, *&time1.timescale, time1.epoch, v359, BOOLean, cf, v362, v363, time2.value);
        OUTLINED_FUNCTION_28();
        if (Next)
        {
          if (v352)
          {
            v187 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v187 = "";
          }

          if (v5)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(v366.value) = 136316418;
          *(&v366.value + 4) = "fpfs_StopPlayingItem";
          OUTLINED_FUNCTION_512();
          v367 = v187;
          OUTLINED_FUNCTION_704();
          *(v188 + 34) = v5;
          OUTLINED_FUNCTION_703(v189);
          *(v190 + 52) = 2112;
          *(v190 + 54) = v3;
          OUTLINED_FUNCTION_72();
          v191 = OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_851(v191, v192, v193, v194, v195, v196, v197, v198);
        }

        OUTLINED_FUNCTION_2();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v101 = &unk_1EAF16000;
      }
    }

    if (v3)
    {
      fpfs_haltStream(v5, v90, v91, v92, v93, v94, v95, v96, v311, v315, v319, SBYTE2(v319), BYTE3(v319), BYTE4(v319), v323, v327, v331, v335[0], *&v335[4], v341, v347, v348, v352, SWORD2(v352), os_log_and_send_and_compose_flags_and_os_log_type, v356, SBYTE2(v356), time1.value, *&time1.timescale, time1.epoch, v359, BOOLean, cf, v362, v363, time2.value, *&time2.timescale, time2.epoch, v365, v366.value, *&v366.timescale, v366.epoch, v367, v368[0], v368[1], v368[2], v368[3], v369, v370, v371.value, *&v371.timescale, v371.epoch, v372, v373, v374, v375);
      v139 = OUTLINED_FUNCTION_198();
      fpfsi_ResetPlaybackItem(v139);
    }

    if (v102 == v5)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 1024))
      {
        OUTLINED_FUNCTION_196();
        while (1)
        {
          OUTLINED_FUNCTION_247();
          if (v67)
          {
            if (*(v103 + 112))
            {
              break;
            }
          }

          if (!*(v103 + 24))
          {
            goto LABEL_128;
          }
        }
      }

      else
      {
LABEL_128:
        fpfsi_ClearCachedAudioRenderChains(v5);
        fpfs_ResetAudioHardwareFormat(*DerivedStorage);
      }
    }

    v104 = *(DerivedStorage + 752);
    if (v104)
    {
      v105 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v105)
      {
        v105(v104);
      }
    }

    goto LABEL_132;
  }

  v132 = CMBaseObjectGetDerivedStorage();
  v371.value = 0;
  IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
  if (*(v132 + 712) | IsPlayerPerformanceTraceEnabled)
  {
    v134 = IsPlayerPerformanceTraceEnabled;
    if (!*(v132 + 712) || *(v132 + 720) || (v135 = CFGetAllocator(v352), v136 = CFArrayCreateMutable(v135, 0, MEMORY[0x1E695E9C0]), (*(v132 + 720) = v136) != 0))
    {
      v137 = CFGetAllocator(v352);
      v138 = fpfsi_copyPerformanceDictionary(v5, v137, &v371);
      Next = v371.value;
      if (v138 || !v371.value)
      {
        if (!v371.value)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (*(v132 + 712))
        {
          CFArrayAppendValue(*(v132 + 720), v371.value);
        }

        if (v134)
        {
          FPSupport_TracePlayerPerformanceDictionary("Stream", Next);
        }
      }

      CFRelease(Next);
    }

    else
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v311, v315, v319);
    }
  }

LABEL_178:
  if (*(DerivedStorage + 469))
  {
    OUTLINED_FUNCTION_685();
    v155 = &unk_1EAF16000;
    if (!v67 && (OUTLINED_FUNCTION_401(), v67))
    {
      CMBaseObjectGetDerivedStorage();
      if (!*(DerivedStorage + 2308))
      {
        v156 = 10;
        goto LABEL_188;
      }
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      if (!*(DerivedStorage + 2308))
      {
        v156 = 6;
        goto LABEL_188;
      }
    }
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    v155 = &unk_1EAF16000;
    if (!*(DerivedStorage + 2308))
    {
      v156 = 11;
LABEL_188:
      *(DerivedStorage + 2308) = v156;
    }
  }

  if (!fpfs_CreateAccessLogEntryWithUnlock(v5, &v363))
  {
    v157 = v363;
    fpfs_CommitAccessLogEntry(v5, v363);
    if (v157)
    {
      CFRelease(v157);
    }

    if (*(DerivedStorage + 25))
    {
      v158 = *(DerivedStorage + 1920);
      if (v158)
      {
        time2.value = 0;
        if (!FigPlaybackItemLogCreateW3CLogData(v158, &time2))
        {
          if (v155[636])
          {
            LODWORD(time1.value) = 0;
            HIBYTE(v356) = 0;
            v159 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_28();
            if (Next)
            {
              if (v352)
              {
                v199 = (CMBaseObjectGetDerivedStorage() + 888);
              }

              else
              {
                v199 = "";
              }

              if (v5)
              {
                v200 = (CMBaseObjectGetDerivedStorage() + 3096);
              }

              else
              {
                v200 = "";
              }

              LODWORD(v366.value) = 136316418;
              *(&v366.value + 4) = "fpfs_StopPlayingItem";
              LOWORD(v366.flags) = 2048;
              *(&v366.flags + 2) = v352;
              HIWORD(v366.epoch) = 2082;
              v367 = v199;
              LOWORD(v368[0]) = 2048;
              *(v368 + 2) = v5;
              WORD1(v368[1]) = 2082;
              *(&v368[1] + 4) = v200;
              WORD2(v368[2]) = 2114;
              *(&v368[2] + 6) = time2.value;
              OUTLINED_FUNCTION_72();
              v201 = OUTLINED_FUNCTION_25();
              OUTLINED_FUNCTION_851(v201, v202, v203, v204, v205, v206, v207, v208);
            }

            OUTLINED_FUNCTION_2();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v99 = v352;
          }

          CFRelease(time2.value);
        }
      }
    }
  }

  if (v348 != v5)
  {
    fpfsi_ResetPlaybackItem(v5);
    goto LABEL_169;
  }

  v209 = OUTLINED_FUNCTION_283();
  Next = fpfs_getNext(v209, v210);
  if (!*(CMBaseObjectGetDerivedStorage() + 504) || (OUTLINED_FUNCTION_401(), v67) || Next)
  {
    v102 = v348;
    if (Next)
    {
      v211 = CMBaseObjectGetDerivedStorage();
      v212 = CMBaseObjectGetDerivedStorage();
      v213 = CMBaseObjectGetDerivedStorage();
      if (*(v212 + 2472))
      {
        *&v366.value = *v335;
        v366.epoch = v331;
        if (*(v213 + 80) == Next)
        {
          __assert_rtn("fpfs_finishGaplessStart", "FigPlayer_Stream.m", 41585, "item != pPlayer->currentItem");
        }

        v214 = *(v212 + 840);
        ItemBufferedDuration = fpfs_GetItemBufferedDuration(Next, &v366, &v371, 0);
        OUTLINED_FUNCTION_342(ItemBufferedDuration, v216, v217, v218, v219, v220, v221, v222, v311, v315, v319, v323, v327, v331, *v335, *&v335[4], v341, v347, v348, v352, os_log_and_send_and_compose_flags_and_os_log_type, v356, time1.value, *&time1.timescale, time1.epoch, v359, BOOLean, cf, v362, v363, time2.value, *&time2.timescale, time2.epoch, v365, *&v366.value);
        OUTLINED_FUNCTION_783();
        fpfs_CheckIfLikelyToKeepUpAndNotify();
        Rate = CMTimebaseGetRate(*(v212 + 576));
        *(CMBaseObjectGetDerivedStorage() + 840) = Rate;
        fpfsi_updateMaxPlayThroughTime(Next);
        fpfsi_updateItemTimePropertiesForRateChange(Next, v214);
        OUTLINED_FUNCTION_498();
        if (v67)
        {
          v224 = OUTLINED_FUNCTION_783();
          fpfs_CancelGaplessAttemptGuts(v224, v225, 1);
        }
      }

      if (*(v211 + 912) && *(v211 + 462) && *(v211 + 593))
      {
        if (dword_1EAF169F0)
        {
          OUTLINED_FUNCTION_742();
          v232 = OUTLINED_FUNCTION_453(qword_1EAF169E8, v226, &time2, v227, v228, v229, v230, v231, v311, v315, v319, v323, v327, v331, *v335, *&v335[4], v341);
          v233 = time2.value;
          value_low = LOBYTE(time1.value);
          os_log_and_send_and_compose_flags_and_os_log_type = v232;
          os_log_type_enabled(v232, time1.value);
          OUTLINED_FUNCTION_176();
          if (v67)
          {
            v236 = v235;
          }

          else
          {
            v236 = v233;
          }

          if (v236)
          {
            if (*v211)
            {
              v297 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v297 = "";
            }

            CMBaseObjectGetDerivedStorage();
            LODWORD(v366.value) = 136316162;
            OUTLINED_FUNCTION_804();
            HIWORD(v366.epoch) = 2082;
            v367 = v297;
            OUTLINED_FUNCTION_704();
            *(v298 + 34) = Next;
            OUTLINED_FUNCTION_703(v299);
            OUTLINED_FUNCTION_72();
            v300 = OUTLINED_FUNCTION_35();
            _os_log_send_and_compose_impl(v300, v301, v302, v303, v304, os_log_and_send_and_compose_flags_and_os_log_type, value_low, v305);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420(v306, v307, v308, v309, v310);
          v99 = v352;
        }

        fpfsi_SetCurrentTimeWithSeekID(Next, MEMORY[0x1E6960C88]);
      }
    }
  }

  else
  {
    fpfsi_pauseItem(v5);
    v102 = v348;
  }

  v237 = *(v347 + 80);
  if (v237)
  {
    CFRelease(v237);
    *(v347 + 80) = 0;
  }

  v101 = &unk_1EAF16000;
  if (Next)
  {
    if (*(v347 + 49))
    {
      v371.value = 0;
      fpfs_ensureTransaction(v99, &v371.value);
      fpfsi_removeLayerSync(v5);
      fpfs_commitTransaction(v99, v371.value);
      if (v371.value)
      {
        CFRelease(v371.value);
      }
    }
  }

  v238 = *(DerivedStorage + 752);
  if (v238)
  {
    v239 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v239)
    {
      v239(v238);
    }
  }

  v240 = OUTLINED_FUNCTION_203();
  fpfs_cleanupAllImageQueues(v240, v241);
  fpfs_tearDownManifoldsAndStream(v5);
  fpfs_PullNextItem(v99);
  OUTLINED_FUNCTION_402();
  fpfs_EnqueueNotification(v242, v243, v244, v245);
  *(v347 + 112) = *v335;
  *(v347 + 128) = v331;
  *(v347 + 136) = *v335;
  *(v347 + 152) = v331;
  fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v5);
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_742();
    v252 = OUTLINED_FUNCTION_453(qword_1EAF169E8, v246, &time2, v247, v248, v249, v250, v251, v311, v315, v319, v323, v327, v331, *v335, *&v335[4], v341);
    os_log_type_enabled(v252, time1.value);
    OUTLINED_FUNCTION_37();
    if (v99)
    {
      if (v352)
      {
        v253 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v253 = "";
      }

      if (v5)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v366.value) = 136316418;
      *(&v366.value + 4) = "fpfs_StopPlayingItem";
      OUTLINED_FUNCTION_512();
      v367 = v253;
      OUTLINED_FUNCTION_704();
      *(v254 + 34) = v5;
      OUTLINED_FUNCTION_703(v255);
      *(v256 + 52) = 2112;
      *(v256 + 54) = v3;
      OUTLINED_FUNCTION_72();
      v257 = OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_851(v257, v258, v259, v260, v261, v262, v263, v264);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v265, v266, v267, v268, v269);
    v99 = v352;
    v101 = &unk_1EAF16000;
  }

  while (1)
  {
    v270 = *(DerivedStorage + 1024);
    if (!v270)
    {
      break;
    }

    fpfs_DeleteTrack(v5, v270);
  }

  v271 = 0;
  do
  {
    v272 = v271;
    v273 = OUTLINED_FUNCTION_266();
    StoreCurrentManifold(v273, v274, 0, 0, v275, v276, v277, v278);
    v279 = OUTLINED_FUNCTION_266();
    StoreCurrentManifold(v279, v280, 1, 0, v281, v282, v283, v284);
    ++v271;
  }

  while (v272 < 2);
  *(DerivedStorage + 463) = 0;
  CMBaseObjectGetDerivedStorage();
  v285 = OUTLINED_FUNCTION_297();
  fpfs_ClearAllCachedRenderChains(v285);
  *(v272 + 796) = 0;
  if (!Next)
  {
    fpfs_ResetAudioHardwareFormat(*DerivedStorage);
    fpfs_releaseTransitionImageQueuesAndSlots(v99);
    v286 = OUTLINED_FUNCTION_615();
    fpfs_disassociatePlayerVideoLayer(v286, v287);
    fpfs_sendEmptyConfigurationToEachVideoTarget(v99);
    v288 = *(v347 + 616);
    if (v288)
    {
      CFRelease(v288);
      *(v347 + 616) = 0;
    }

    v289 = *(v347 + 608);
    if (v289)
    {
      CFRelease(v289);
      *(v347 + 608) = 0;
    }
  }

  if (!fpfs_HaveHDRItem(*DerivedStorage))
  {
    fpfs_ReleasePlayerHDRPlaybackBaton(*DerivedStorage);
  }

  OUTLINED_FUNCTION_278();
  if (!fpfs_PlayQueueCallForEachItem(v290, v291, 0))
  {
    fpfs_ReleasePlayer4kPlaybackBaton(*DerivedStorage);
  }

  v292 = OUTLINED_FUNCTION_513();
  fpfs_PostRemovedFromPlayQueueNotifications(v292, v293);
  if (*(v347 + 463))
  {
    v294 = OUTLINED_FUNCTION_513();
    fpfs_UpdateNeroPlaybackActiveStateAndNotifyIfNeeded(v294, v295, 0);
  }

  v296 = *(DerivedStorage + 3136);
  if (v296)
  {
    CFRelease(v296);
    *(DerivedStorage + 3136) = 0;
  }

  fpfsi_ResetPlaybackItem(v5);
  if (!Next)
  {
    OUTLINED_FUNCTION_513();
    fpfs_EnqueueCurrentItemDidChangeNotification();
  }

LABEL_132:
  if (v102 == v5)
  {
    if (*(DerivedStorage + 3400))
    {
      v106 = FigGetAllocatorForMedia();
      FigMetricItemPlaybackEndEventCreate(v106, 0, &v362);
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v107 = OUTLINED_FUNCTION_249();
        v108(v107);
      }
    }

    v109 = fpfs_getNext(v347, 0);
    if (v109)
    {
      v110 = v109;
      if (v109 != v5)
      {
        v111 = CMBaseObjectGetDerivedStorage();
        if (!*(v111 + 2473) && v101[636])
        {
          OUTLINED_FUNCTION_742();
          v118 = OUTLINED_FUNCTION_453(qword_1EAF169E8, v112, &time2, v113, v114, v115, v116, v117, v311, v315, v319, v323, v327, v331, *v335, *&v335[4], v341);
          OUTLINED_FUNCTION_846(v118, v119, v120, v121, v122, v123, v124, v125, v313, v317, v321, v325, v329, v333, v337, v339, v343, v347, v348, v352, os_log_and_send_and_compose_flags_and_os_log_type, v356, time1.value, *&time1.timescale, time1.epoch, v359, BOOLean, cf, v362, v363, time2.value);
          OUTLINED_FUNCTION_28();
          if (Next)
          {
            if (v353)
            {
              v126 = v353;
              v127 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v126 = 0;
              v127 = "";
            }

            CMBaseObjectGetDerivedStorage();
            LODWORD(v366.value) = 136316162;
            *(&v366.value + 4) = "fpfs_StopPlayingItem";
            LOWORD(v366.flags) = 2048;
            *(&v366.flags + 2) = v126;
            HIWORD(v366.epoch) = 2082;
            v367 = v127;
            OUTLINED_FUNCTION_704();
            *(v145 + 34) = v110;
            OUTLINED_FUNCTION_703(v146);
            OUTLINED_FUNCTION_72();
            v147 = OUTLINED_FUNCTION_25();
            OUTLINED_FUNCTION_851(v147, v148, v149, v150, v151, v152, v153, v154);
          }

          OUTLINED_FUNCTION_2();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(v111 + 470) = 1;
        fpfs_EnqueueNotification(*DerivedStorage, @"TimebaseChanged", v110, 0);
      }
    }
  }

LABEL_169:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v362)
  {
    CFRelease(v362);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  CFRelease(v5);
  OUTLINED_FUNCTION_191();
}

uint64_t fpfsi_RTCReportingUpdateATMOSMetricVar(uint64_t result, _BYTE *a2, _BYTE *a3, int a4, int a5, int a6)
{
  if (*a2 != a4 && (a4 != 1 ? (v6 = a5 == 1) : (v6 = 1), v6))
  {
    if (!a4 && a6 == 1)
    {
      *(result + 2596) = 0;
    }

    *a2 = a4;
    if (*a3)
    {
      goto LABEL_14;
    }
  }

  else if (*a3)
  {
    return result;
  }

  *a3 = 1;
LABEL_14:
  v7 = *(result + 2603);
  if (*(result + 2603) || *(result + 2596) && *(result + 2597) && *(result + 2598) && *(result + 2599))
  {
    v8 = *(result + 2568);
    if (v8)
    {
      v9 = *(result + 2600);
      v10 = *(result + 2601);
      v11 = *(result + 2602);
      VTable = CMBaseObjectGetVTable();
      v13 = *(VTable + 16);
      result = VTable + 16;
      v14 = *(v13 + 56);
      if (v14)
      {

        return v14(v8, @"playerStats", 0x1F0B42BB8, (16 * v7) | (2 * v9) | (4 * v10) | (8 * v11) | 1, 0);
      }
    }
  }

  return result;
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForSuppressAudioOnly(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_522();
  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(v1 + 558))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v5 = FigAlternateSuppressAudioOnlyFilterCreate(AllocatorForMedia, &cf);
    v6 = cf;
    if (v5)
    {
      v7 = v5;
      if (!cf)
      {
        return v7;
      }
    }

    else
    {
      v7 = FigAlternateSelectionBossAddFilter(*(v1 + 40), cf);
      v6 = cf;
      if (!cf)
      {
        return v7;
      }
    }

    CFRelease(v6);
    return v7;
  }

  return FigAlternateSelectionBossRemoveFilter(v3, @"SuppressAudioOnly");
}

uint64_t fpfsi_CreateAndAddCombinedAudioPreferenceFilter(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  HIDWORD(v62) = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  cf = 0;
  BYTE6(v57) = 0;
  WORD2(v57) = 0;
  if (*(v1 + 795))
  {
    v4 = 1836019574;
  }

  else
  {
    v4 = 1936684398;
  }

  BYTE3(v57) = 0;
  if (!*(v1 + 40))
  {
    v49 = 0;
LABEL_69:
    v33 = 0.0;
    goto LABEL_55;
  }

  v5 = OUTLINED_FUNCTION_266();
  AudioSpatialSourcesArray = fpfsi_CreateAudioSpatialSourcesArray(v5, v6, v7, v8, v9, v10, v11, v12, v51, v52, *&size.width, *&size.height, v54, v55, v56, v57, v58, SHIDWORD(v58), cf, v60, SBYTE2(v60), SBYTE3(v60), SHIDWORD(v60), v61, v62, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v63[9], v63[10]);
  if (AudioSpatialSourcesArray)
  {
    v49 = AudioSpatialSourcesArray;
    goto LABEL_69;
  }

  if (FigCFArrayContainsInt32())
  {
    v14 = 1;
  }

  else
  {
    v14 = FigCFArrayContainsInt32() != 0;
  }

  v15 = v58;
  v16 = CMBaseObjectGetDerivedStorage();
  v63[0] = 0;
  v17 = MEMORY[0x1E695F060];
  size = *MEMORY[0x1E695F060];
  OUTLINED_FUNCTION_265();
  fpfsi_GetResolutionCapForFilter();
  v19 = v18;
  v21 = v20;
  if (qword_1ED4CA3D8 != -1)
  {
    dispatch_once(&qword_1ED4CA3D8, &__block_literal_global_153);
  }

  width = *&qword_1ED4CA3C8;
  height = unk_1ED4CA3D0;
  v24 = *(v16 + 40);
  AllocatorForMedia = FigGetAllocatorForMedia();
  FigAlternateSelectionBossCopyProperty(v24, @"HighestVideoResolutionAlternateWithMultiChannelAudio", AllocatorForMedia, v63);
  if (CGSizeMakeWithDictionaryRepresentation(v63[0], &size) && size.width < width && size.height < height)
  {
    height = size.height;
    width = size.width;
  }

  v27 = *v17;
  v26 = v17[1];
  if (v63[0])
  {
    CFRelease(v63[0]);
  }

  v28 = v27 != v19;
  if (v26 != v21)
  {
    v28 = 1;
  }

  if (v19 >= width)
  {
    v28 = 0;
  }

  if (!v28 || v21 >= height)
  {
    v19 = width;
    v21 = height;
  }

  if (!HIDWORD(v62))
  {
    v29 = OUTLINED_FUNCTION_234();
    HIDWORD(v62) = fpfs_GetAudioDeviceMaxPhysicalOutputChannelCount(v29, v30, 0);
  }

  v31 = *(v1 + 560);
  if (!BYTE3(v57))
  {
    BYTE3(v57) = v31 & 1;
  }

  if ((v31 & 2) == 0)
  {
    goto LABEL_32;
  }

  size.width = 0.0;
  v32 = CMBaseObjectGetDerivedStorage();
  if (*(v32 + 504))
  {
    goto LABEL_32;
  }

  v33 = *(v32 + 536);
  if (v33 == 0.0)
  {
    goto LABEL_33;
  }

  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_500();
  v34 = *(CMBaseObjectGetVTable() + 16);
  if (v34 && (v35 = *(v34 + 48)) != 0)
  {
    v35(*&v33, *MEMORY[0x1E69AFD20], @"HighestVideoResolutionAlternateWithMultiChannelAudio", &size);
    v33 = size.width;
  }

  else
  {
LABEL_32:
    v33 = 0.0;
  }

LABEL_33:
  v36 = FigGetAllocatorForMedia();
  FPSupport_CreateMaxSampleRateDictonary(v36, SHIDWORD(v62), *&v33, &v60, *(v1 + 2544));
  if (*(CMBaseObjectGetDerivedStorage() + 536))
  {
    OUTLINED_FUNCTION_689();
    if (v38)
    {
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v39 = FigCFEqual();
  fpfsi_CopyCacheRefFromPump(a1);
  v40 = FigGetAllocatorForMedia();
  v41 = v61;
  v42 = *(v1 + 1768);
  LOBYTE(size.width) = v14;
  *(&size.width + 1) = WORD2(v57);
  BYTE3(size.width) = BYTE6(v57);
  HIDWORD(size.width) = v4;
  size.height = v19;
  v54 = *&v21;
  v55 = v15;
  v43 = FigAlternateCombinedAudioPreferenceFilterCreate(v40, 0, HIDWORD(v62), v60, &size, v37 | (v39 << 24), SBYTE3(v57), v61, v42, &cf);
  if (v43 || (v43 = FigAlternateSelectionBossAddFilter(*(v1 + 40), cf), v43))
  {
    v49 = v43;
    if (v41)
    {
LABEL_54:
      CFRelease(v41);
    }
  }

  else
  {
    v44 = *(v1 + 560) & 1;
    if (*(v1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_242();
      v45();
    }

    if (v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, (v1 + 2544));
      if (*(v1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        OUTLINED_FUNCTION_211();
        v47();
      }
    }

    if (*(v1 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      OUTLINED_FUNCTION_138();
      v48();
    }

    if (v46)
    {
      CFRelease(v46);
    }

    v49 = 0;
    if (v41)
    {
      goto LABEL_54;
    }
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33 != 0.0)
  {
    CFRelease(*&v33);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  return v49;
}

void fpfsi_SetupResolutionCapFilter()
{
  OUTLINED_FUNCTION_647();
  v64 = v2;
  v65 = v3;
  v5 = v4;
  v63 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = 0;
  fpfsi_GetResolutionCapForFilter();
  v8 = v7;
  v10 = v9;
  v11 = *(DerivedStorage + 2528);
  v12 = *(DerivedStorage + 2536);
  cf = 0;
  v47 = 0;
  v13 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(v13);
  v14 = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v46);
  if (!GlobalSingleton && v46)
  {
    if (v0[801] == 0.0)
    {
LABEL_7:
      v16 = v8;
      v17 = v10;
LABEL_19:
      v10 = v17;
      v8 = v16;
      goto LABEL_20;
    }

    GlobalSingleton = FigPlayerResourceArbiterGetBudgetForConsumer(v46, *(v14 + 928), &v47, 0);
    if (!GlobalSingleton)
    {
      if (v47)
      {
        if (v47 == (v8 * v10))
        {
          goto LABEL_7;
        }

        v18 = v0[801];
        v16 = sqrtf(v18 * v47);
        v17 = sqrtf(v47 / v18);
        if (!dword_1EAF169F0)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_21();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
        OUTLINED_FUNCTION_46();
        if (!v1)
        {
LABEL_18:
          OUTLINED_FUNCTION_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_19;
        }

        v20 = *v0;
        if (v20)
        {
          v21 = (CMBaseObjectGetDerivedStorage() + 888);
          if (!v5)
          {
LABEL_17:
            v48 = 136317186;
            OUTLINED_FUNCTION_47();
            v49 = v20;
            OUTLINED_FUNCTION_227();
            v50 = v21;
            v51 = v22;
            v52 = v5;
            v53 = v23;
            v54 = v24;
            v55 = v22;
            v56 = v8;
            v57 = v22;
            v58 = v10;
            v59 = v22;
            v60 = v16;
            v61 = v22;
            v62 = v17;
            OUTLINED_FUNCTION_32();
            v25 = OUTLINED_FUNCTION_30();
            _os_log_send_and_compose_impl(v25, v26, v27, v28, v29, os_log_and_send_and_compose_flags_and_os_log_type, type, v30);
            OUTLINED_FUNCTION_507();
            goto LABEL_18;
          }
        }

        else
        {
          v21 = "";
          if (!v5)
          {
            goto LABEL_17;
          }
        }

        CMBaseObjectGetDerivedStorage();
        goto LABEL_17;
      }
    }
  }

  if (GlobalSingleton)
  {
    goto LABEL_39;
  }

LABEL_20:
  v32 = *MEMORY[0x1E695F060];
  v31 = *(MEMORY[0x1E695F060] + 8);
  v33 = v10 == v31 && v8 == *MEMORY[0x1E695F060];
  if (v33 && FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 40), @"DisplaySize"))
  {
    goto LABEL_39;
  }

  if (FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 40), @"ResolutionCap"))
  {
    goto LABEL_39;
  }

  v34 = v12 == v31 && v11 == v32;
  if (v34 && FigAlternateSelectionBossRemoveFilter(*(DerivedStorage + 40), @"ResolutionFloor"))
  {
    goto LABEL_39;
  }

  v35 = MEMORY[0x1E695E480];
  if (v33)
  {
    goto LABEL_34;
  }

  v36 = OUTLINED_FUNCTION_684();
  v40 = FigAlternateDisplaySizeFilterCreate(v37, v38, v36, v39);
  v41 = cf;
  if (!v40)
  {
    FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
LABEL_34:
    if (v34)
    {
      goto LABEL_39;
    }

    v42 = FigAlternateResolutionFloorFilterCreate(*v35, &cf, v11, v12);
    v41 = cf;
    if (v42)
    {
      if (!cf)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
    v41 = cf;
  }

  if (v41)
  {
LABEL_38:
    CFRelease(v41);
  }

LABEL_39:
  OUTLINED_FUNCTION_646();
}

uint64_t fpfsi_UpdatePixelPerSecondsCapFilter()
{
  OUTLINED_FUNCTION_570();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_297();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  v2 = DerivedStorage;
  GlobalSingleton = FigPlayerResourceArbiterGetGlobalSingleton(&v9);
  if (GlobalSingleton)
  {
    return GlobalSingleton;
  }

  GlobalSingleton = FigPlayerResourceArbiterGetBudgetForConsumer(v9, *(v0 + 928), 0, &v11);
  if (GlobalSingleton)
  {
    return GlobalSingleton;
  }

  if (!v11)
  {
    return FigAlternateSelectionBossRemoveFilter(*(v2 + 40), @"PixelsPerSecondBudget");
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigAlternatePixelsPerSecondCapFilterCreate(AllocatorForMedia, v11, &cf);
  v6 = cf;
  if (v5)
  {
    v7 = v5;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_7;
  }

  v7 = FigAlternateSelectionBossAddFilter(*(v2 + 40), cf);
  v6 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v6);
  }

  return v7;
}

uint64_t fpfsi_CopyCacheRefFromPump(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 912))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_413();
    FigBytePumpGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    if (*(v3 + 48))
    {
      v4 = OUTLINED_FUNCTION_308();
      return v5(v4);
    }
  }

  return result;
}

void fpfsi_SetupSupportedAudioFormatFilter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_653();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_572();
  IsDecodable = FigAudioCodecTypeIsDecodable();
  v28 = FigAudioCodecTypeIsDecodable();
  AtmosDecodePolicy = fpfsi_GetAtmosDecodePolicy(v25, &a10);
  if (*(CMBaseObjectGetDerivedStorage() + 536))
  {
    OUTLINED_FUNCTION_689();
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v31 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  v32 = FigStreamAlternateGetAudioMaximumDecodeChannelCount(0x6F707573u) > 2;
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!FigAlternateSupportedAudioFormatFilterCreate(AllocatorForMedia, (AtmosDecodePolicy << 40) | (v32 << 48) | (v28 << 32) | (IsDecodable << 24) | v31, &cf) && !FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf))
  {
    v34 = 1;
    fpfsi_RTCReportingUpdateATMOSMetricVar(DerivedStorage, (DerivedStorage + 2601), (DerivedStorage + 2597), a12, 1, 1);
    OUTLINED_FUNCTION_596();
    if (!v35)
    {
      v34 = a13 != 0;
    }

    fpfsi_RTCReportingUpdateATMOSMetricVar(DerivedStorage, (DerivedStorage + 2602), (DerivedStorage + 2598), v34, 1, 1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t fpfsi_ConfigureAlternateSelectionBossForHighestAtmosFiltering(uint64_t a1)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_172(DerivedStorage);
  if (*(CMBaseObjectGetDerivedStorage() + 568) || !*(v1 + 564))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v4 = FigAlternateHighestAtmosBitrateFilterCreate(AllocatorForMedia, &cf);
    v5 = cf;
    if (v4)
    {
      v6 = v4;
      if (!cf)
      {
        return v6;
      }
    }

    else
    {
      v6 = FigAlternateSelectionBossAddFilter(*(v1 + 40), cf);
      v5 = cf;
      if (!cf)
      {
        return v6;
      }
    }

    CFRelease(v5);
    return v6;
  }

  v8 = *(v1 + 40);

  return FigAlternateSelectionBossRemoveFilter(v8, @"HighestAtmosBitrateFilter");
}

uint64_t fpfsi_ConfigureAlternateSelectionBossPreferExclusiveAudioPassthroughFiltering(uint64_t a1)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return 0;
  }

  OUTLINED_FUNCTION_172(DerivedStorage);
  if (*(CMBaseObjectGetDerivedStorage() + 536))
  {
    OUTLINED_FUNCTION_689();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v6 = FigAlternatePreferExclusiveAudioPassthroughFilterCreate(AllocatorForMedia, v4, &cf);
  v7 = cf;
  if (v6)
  {
    v8 = v6;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v8 = FigAlternateSelectionBossAddFilter(*(v1 + 40), cf);
  v7 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v7);
  }

  return v8;
}

uint64_t fpfsi_CreateAndAddScanningModeFilterToBoss(uint64_t a1, UInt8 a2)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = FigAlternateScanModePreferenceFilterCreate(AllocatorForMedia, a2, &cf);
  if (!v5)
  {
    v5 = FigAlternateSelectionBossAddFilter(*(DerivedStorage + 40), cf);
  }

  v6 = v5;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpfsi_updateDisplayListForHDCPMonitor(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage();
  if (!*(v1 + 56))
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 728);
  if (!v5 || CFArrayGetCount(v5) < 1 || (v6 = FigGetAllocatorForMedia(), (Mutable = CFArrayCreateMutableCopy(v6, 0, *(v4 + 728))) == 0))
  {
    v8 = FPSupport_CopyMainDisplayCAName();
    if (v8)
    {
      v9 = v8;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v11 = OUTLINED_FUNCTION_266();
        CFArrayAppendValue(v11, v12);
      }

      CFRelease(v9);
    }

    else
    {
      Mutable = 0;
    }
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v13 = OUTLINED_FUNCTION_236();
    v15 = v14(v13);
    if (!Mutable)
    {
      return v15;
    }

    goto LABEL_14;
  }

  v15 = 4294954514;
  if (Mutable)
  {
LABEL_14:
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t fpfsi_updateSupportedFramerateBucketCapMonitorFromFVT(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_519();
  v3 = CMBaseObjectGetDerivedStorage();
  if (!*(v3 + 40))
  {
    return 0;
  }

  if (!*(v3 + 48))
  {
    return 0;
  }

  if (!*(v3 + 49))
  {
    return 0;
  }

  valuePtr = FigStreamingPlayerCombinedVideoDestinationGetMaxRefreshRate(*(v1 + 376));
  if (valuePtr == 0.0)
  {
    return 0;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v5 = OUTLINED_FUNCTION_228();
    v7 = v6(v5);
    if (!v4)
    {
      return v7;
    }

    goto LABEL_11;
  }

  v7 = 4294954514;
  if (v4)
  {
LABEL_11:
    CFRelease(v4);
  }

  return v7;
}

uint64_t fpfsi_setOverrideDisplaysSupportedVideoRange(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (v3 + 736));
  if (*(v1 + 80))
  {
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_9;
    }

    v5 = OUTLINED_FUNCTION_621();
    v7 = v6(v5);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  if (!*(v1 + 64))
  {
    v10 = 0;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_10;
  }

  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v8 = OUTLINED_FUNCTION_228();
    v7 = v9(v8);
LABEL_7:
    v10 = v7;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_10;
  }

LABEL_9:
  v10 = 4294954514;
  if (v4)
  {
LABEL_10:
    CFRelease(v4);
  }

  return v10;
}

uint64_t fpfsi_setPlaybackMonitorAutoSwitchStreamQuality(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(v1 + 96);
  if (!v4)
  {
    return 0;
  }

  if (*(v3 + 458))
  {
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *v5;

  return v6(v4, @"AfmfpbProperty_SwitchesQualityGearAutomatically", v7);
}

double fpfs_CancelTrialSwitch(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[218];
  if (v4)
  {
    if (DerivedStorage[210])
    {
      PeakBitRate = FigAlternateGetPeakBitRate(v4);
      if (PeakBitRate >= FigAlternateGetPeakBitRate(DerivedStorage[210]))
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      v27 = v6;
      OUTLINED_FUNCTION_57();
      if (!fpfs_SetAlternateWithContext(v7, v8, v9, v10, v11, v12, v13, v14, v27))
      {
        v19 = DerivedStorage[128];
        if (v19)
        {
          do
          {
            v20 = *(v19 + 24);
            OUTLINED_FUNCTION_746();
            if (v22)
            {
              fpfs_DeleteTrack(a1, v21);
            }

            v19 = v20;
          }

          while (v20);
        }

        v23 = 0;
        v24 = 123;
        do
        {
          if (DerivedStorage[v24])
          {
            StoreCurrentManifold(DerivedStorage, v23, 1, 0, v15, v16, v17, v18);
          }

          v25 = &DerivedStorage[v23];
          v26 = v25[25];
          if (v26)
          {
            CFRelease(v26);
            v25[25] = 0;
          }

          *(DerivedStorage + v23 + 235) = 0;
          *(DerivedStorage + v23 + 3085) = 0;
          v25[141] = 0;
          ++v23;
          v24 += 2;
        }

        while (v23 != 3);
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

uint64_t fpfsi_SwitchBetween4kAndHD(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_849(a1);
  OUTLINED_FUNCTION_172(v4);
  if (!*(CMBaseObjectGetDerivedStorage() + 905) || !v1[5])
  {
    return 0;
  }

  if (v3)
  {
    result = fpfsi_addHDResolutionCap(v2);
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!CelestialShouldLimit4kConcurrentPlayback() || (DerivedStorage = CMBaseObjectGetDerivedStorage(), OUTLINED_FUNCTION_260(DerivedStorage), v8) || !fpfs_CanRenderVideo(v7, 0) || !fpfs_GrabPlayer4kPlaybackBaton(*v1) || (v9 = CMBaseObjectGetDerivedStorage(), result = FigAlternateSelectionBossRemoveFilter(*(v9 + 40), @"ResolutionCapFor4kBaton"), !result))
  {
LABEL_11:
    FigAlternateSelectionBossApplyFilters(v1[5]);
    return 0;
  }

  return result;
}

void fpfsi_SetupSkipBitrateRangeFilter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_845();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_518();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(v20 + 912))
  {
    v26 = *(v20 + 1704);
    if (*(DerivedStorage + 458))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_702();
      FigBytePumpGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v27 = OUTLINED_FUNCTION_501();
        v29 = v28(v27) != 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = FigCFEqual();
      v31 = *(v20 + 1704);
      if (v30)
      {
        if (!v31)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!v31)
        {
          goto LABEL_9;
        }

        v39 = *(v20 + 1024);
        if (v39)
        {
          do
          {
            if (*(v39 + 168) == 6 && !*(v39 + 200) && FigCFEqual())
            {
              *(v39 + 205) = 1;
            }

            v39 = *(v39 + 24);
          }

          while (v39);
          v31 = *(v20 + 1704);
          if (!v31)
          {
LABEL_9:
            *(v20 + 1704) = a9;
            if (a9)
            {
              v32 = v29;
            }

            else
            {
              v32 = 1;
            }

            if ((v32 & 1) != 0 || (ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*(v20 + 1680)), ExpectedAverageBitrate <= FigAlternateGetExpectedAverageBitrate(*(v20 + 1704))) || !fpfs_ScheduleRecoverySwitch(v24, *(v20 + 1704), 1))
            {
              if (!v26)
              {
                goto LABEL_27;
              }

              v37 = *(v20 + 96);
              if (v37)
              {
                v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v38 || v38(v37, @"AfmfpbProperty_RecoveryAlternate", 0))
                {
                  goto LABEL_27;
                }
              }

              if (FigAlternateSelectionBossRemoveFilter(*(v20 + 40), @"RecoveryAlternateSkipBitrateRange"))
              {
                goto LABEL_27;
              }
            }

            else
            {
              AllocatorForMedia = FigGetAllocatorForMedia();
              if (FigAlternateSkipBitrateRangeFilterCreate(AllocatorForMedia, *(v20 + 1704), *(v20 + 1680), @"RecoveryAlternateSkipBitrateRange", 605, &cf))
              {
                goto LABEL_27;
              }

              if (FigAlternateSelectionBossAddFilter(*(v20 + 40), cf))
              {
                goto LABEL_27;
              }

              if (*(v20 + 96))
              {
                if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
                {
                  goto LABEL_27;
                }

                v35 = OUTLINED_FUNCTION_515();
                if (v36(v35))
                {
                  goto LABEL_27;
                }
              }
            }

            FigAlternateSelectionBossApplyFilters(*(v20 + 40));
            goto LABEL_27;
          }
        }
      }

      CFRelease(v31);
      goto LABEL_9;
    }

    if (v26)
    {
      CFRelease(*(v20 + 1704));
      *(v20 + 1704) = 0;
    }
  }

LABEL_27:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_843();
}

void fpfsi_SetupIFramePrefetch()
{
  OUTLINED_FUNCTION_193();
  LODWORD(v2) = v1;
  v4 = v3;
  v108[3] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v6 = CMBaseObjectGetDerivedStorage();
  v90 = 0;
  v91 = 0;
  v89 = 0uLL;
  v108[1] = @"FSC_MemoryCacheSizeLimit";
  v108[2] = @"FSC_AddToDonorPool";
  v105 = @"FSC_MemoryBacking";
  v106 = 0;
  v7 = *MEMORY[0x1E695E4D0];
  v107 = *MEMORY[0x1E695E4D0];
  v108[0] = @"FSC_Backing";
  v8 = *MEMORY[0x1E695E4C0];
  v86 = *MEMORY[0x1E695E4C0];
  v87 = 0;
  cf = 0;
  if (*(v0 + 321) && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    OUTLINED_FUNCTION_426();
    v9();
  }

  if (*(v0 + 313))
  {
    if (*(v0 + 114))
    {
      FigBytePumpGetFigBaseObject();
      v11 = v10;
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v12(v11, 0x1F0B1F098, 0);
      }
    }

    fpfsi_TearDownIFramePrefetcher(v4);
  }

  HIDWORD(v88) = 0;
  v13 = v0[312];
  if (v13 == 0.0 && v0[311] == 0.0)
  {
    goto LABEL_83;
  }

  if (v13 <= 0.0 || v0[311] <= 0.0)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  if (!*(v0 + 114))
  {
    goto LABEL_83;
  }

  v82 = v6;
  fpfsi_GetDuration(v4, &v89);
  if (v14)
  {
LABEL_54:
    v19 = v14;
LABEL_55:
    v40 = 0;
LABEL_56:
    v42 = 0;
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_29();
  if (!v15)
  {
LABEL_53:
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    goto LABEL_51;
  }

  v16 = OUTLINED_FUNCTION_608();
  v18 = v17(v16);
  if (v18)
  {
    v19 = v18;
    if (v18 != -12783)
    {
      goto LABEL_55;
    }
  }

  if (v86 != v8)
  {
LABEL_82:
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_83:
    v40 = 0;
    v42 = 0;
    v19 = 0;
    goto LABEL_57;
  }

  FigGetAllocatorForMedia();
  FigBytePumpGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_51:
    v40 = 0;
    v42 = 0;
    goto LABEL_52;
  }

  v20 = OUTLINED_FUNCTION_502();
  v22 = v21(v20);
  if (v22)
  {
    v19 = v22;
    if (v22 != -12783)
    {
      goto LABEL_55;
    }
  }

  if (v91)
  {
    goto LABEL_82;
  }

  v23 = *(v0 + 208);
  if (!v23)
  {
    goto LABEL_53;
  }

  if (!CFArrayGetCount(v23))
  {
    goto LABEL_53;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 208), 0);
  if (!ValueAtIndex)
  {
    goto LABEL_53;
  }

  v25 = ValueAtIndex;
  AverageBitRate = FigAlternateGetAverageBitRate(ValueAtIndex);
  if (!AverageBitRate)
  {
    AverageBitRate = FigAlternateGetPeakBitRate(v25);
  }

  if (AverageBitRate >= 1000000)
  {
    v36 = 1000000;
  }

  else
  {
    v36 = AverageBitRate;
  }

  v37 = v36;
  OUTLINED_FUNCTION_661(AverageBitRate, v27, v28, v29, v30, v31, v32, v33, v34, v78, v79, v80, v81, v82, v83, cf, v86, v87, v88, v35, v89);
  v38 = (CMTimeGetSeconds(&time) * v37 * 0.125 * 0.5);
  if (v38 >= 419430400)
  {
    v38 = 419430400;
  }

  HIDWORD(v88) = v38;
  v39 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v88 + 4);
  v40 = v39;
  if (!v39)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, v79, v80);
    v19 = v77;
    goto LABEL_56;
  }

  v81 = v25;
  v106 = v39;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v42 = CFDictionaryCreate(AllocatorForMedia, v108, &v105, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v42)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_80;
  }

  v43 = FigGetAllocatorForMedia();
  FigAssetGetCMBaseObject();
  v45 = v44;
  v46 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v46 || v46(v45, @"assetProperty_ResolvedURL", v43, &v87) || !v87)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_80;
  }

  v47 = FigGetAllocatorForMedia();
  v48 = FigStreamingCacheCreate(v47, v87, v42, &v91);
  if (v48)
  {
LABEL_80:
    v19 = v48;
    goto LABEL_57;
  }

  FigBytePumpGetFigBaseObject();
  v2 = v49;
  v50 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v50)
  {
LABEL_52:
    v19 = -12782;
    goto LABEL_57;
  }

  v48 = v50(v2, 0x1F0B1F0D8, v7);
  if (v48)
  {
    goto LABEL_80;
  }

  FigBytePumpGetFigBaseObject();
  v52 = v51;
  v53 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v53)
  {
    v53(v52, 0x1F0B1F0F8, v8);
  }

  v54 = v91;
  FigBytePumpGetFigBaseObject();
  v2 = v55;
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v56)
  {
    goto LABEL_52;
  }

  v48 = v56(v2, 0x1F0B1F098, v54);
  if (v48)
  {
    goto LABEL_80;
  }

  v57 = FigGetAllocatorForMedia();
  v48 = FigFramePrefetcherCreate(v57, *(v0 + 4), v91, v81, &cf);
  if (v48)
  {
    goto LABEL_80;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v48 = FigNotificationCenterAddWeakListener();
  if (v48)
  {
    goto LABEL_80;
  }

  v19 = FigFramePrefetcherActivate(cf);
  if (!v19)
  {
    *(v0 + 313) = cf;
    cf = 0;
  }

LABEL_57:
  if (!dword_1EAF169F0)
  {
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_427();
  v65 = OUTLINED_FUNCTION_371(qword_1EAF169E8, v58, v59, v60, v61, v62, v63, v64, v78, v79, v80, v81, v82, v83, SBYTE2(v83), SBYTE3(v83), SBYTE4(v83));
  os_log_type_enabled(v65, type);
  OUTLINED_FUNCTION_28();
  if (v2)
  {
    v66 = *v0;
    if (*v0)
    {
      v67 = (CMBaseObjectGetDerivedStorage() + 888);
      if (!v4)
      {
LABEL_64:
        v92 = 136316674;
        OUTLINED_FUNCTION_534();
        v93 = v66;
        v94 = 2082;
        v95 = v67;
        v96 = v68;
        v97 = v4;
        v98 = 2082;
        v99 = v69;
        v100 = v68;
        v101 = v70;
        v102 = 1024;
        v103 = v19;
        OUTLINED_FUNCTION_66();
        v71 = OUTLINED_FUNCTION_25();
        _os_log_send_and_compose_impl(v71, v72, v73, v74, v75, v65, type, v76);
        goto LABEL_65;
      }
    }

    else
    {
      v67 = "";
      if (!v4)
      {
        goto LABEL_64;
      }
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_64;
  }

LABEL_65:
  OUTLINED_FUNCTION_2();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_66:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v91)
  {
    CFRelease(v91);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  OUTLINED_FUNCTION_191();
}

void fpfs_InitiateSwitchRecovery()
{
  OUTLINED_FUNCTION_647();
  v90 = v7;
  v8 = v0[128];
  if (!v8)
  {
    goto LABEL_74;
  }

  v9 = v1;
  v10 = v0;
  v84 = 0;
  key = *MEMORY[0x1E6962E00];
  v87 = &v0[2 * v1 + 122];
  v11 = (v0 + 138);
  *&v6 = 136316418;
  v85 = v6;
  *&v6 = 136316674;
  v82 = v6;
  v88 = (v0 + 138);
  do
  {
    if (*(v8 + 203) && *(v8 + 196) == v9)
    {
      *(v8 + 203) = 0;
      v12 = *(v8 + 112);
      if (v12 && (OUTLINED_FUNCTION_63(), v13))
      {
        FigGetAllocatorForMedia();
        CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        v14 = OUTLINED_FUNCTION_312();
        v18 = CMBufferQueueCreate(v14, v15, v16, v17);
        if (v18)
        {
          v22 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          MEMORY[0x19A8CE710]();
          if (CMBufferQueueIsEmpty(0))
          {
            v22 = 0;
          }

          else
          {
            v23 = CMBufferQueueDequeueAndRetain(0);
            if (v23)
            {
              v24 = v23;
              do
              {
                if (!fpfs_IsMarkerOnly(v24) || !CMGetAttachment(v24, key, 0))
                {
                  CMBufferQueueEnqueue(*(v12 + 40), v24);
                }

                CFRelease(v24);
                v24 = CMBufferQueueDequeueAndRetain(0);
              }

              while (v24);
            }

            v22 = 1;
          }

          v18 = FigBufferQueueRelease();
        }

        if (dword_1EAF169F0)
        {
          v25 = OUTLINED_FUNCTION_257(v18, v19, v20, v21, v2, v3, v4, v5, v80, v81, v82, *(&v82 + 1), v83, v84, v85, *(&v85 + 1), v86, v87, v88, key, v90, v91, SBYTE2(v91), SBYTE3(v91), SHIDWORD(v91));
          os_log_type_enabled(v25, BYTE3(v91));
          OUTLINED_FUNCTION_425();
          if (v13)
          {
            v27 = v26;
          }

          else
          {
            v27 = HIDWORD(v91);
          }

          if (v27)
          {
            if (*v10)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (*(v8 + 16))
            {
              CMBaseObjectGetDerivedStorage();
            }

            OUTLINED_FUNCTION_66();
            v28 = OUTLINED_FUNCTION_27();
            _os_log_send_and_compose_impl(v28, v29, v30, v31, &dword_1962D5000, v25, BYTE3(v91), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: %{public}s back ReleasePlayResource marker sample from audio track %d");
            v11 = v88;
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635(v32, v33, v34, v35, v36);
        }
      }

      else
      {
        v22 = 1;
      }

      if (v9 < 3)
      {
        if (!*v87)
        {
          StoreCurrentManifold(v10, v9, 0, *(v8 + 64), v2, v3, v4, v5);
          v84 = *(v8 + 64);
        }
      }

      else
      {
        OUTLINED_FUNCTION_120();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, v81, v82);
      }

      if (v22)
      {
        *(v8 + 198) = 0;
        v37 = *(v8 + 112);
        if (v37)
        {
          fpfs_SetFeederTrack(v37, v8);
        }

        fpfsi_RemoveAndClearTimer((v8 + 128));
        v38 = *(v8 + 64);
        v39 = *(v8 + 40);
        VTable = CMBaseObjectGetVTable();
        v45 = *(VTable + 16);
        v44 = VTable + 16;
        v46 = *(v45 + 32);
        if (v46)
        {
          v44 = v46(v38, v39, &kManifoldOutputCallbacks, v8);
        }

        if (!dword_1EAF169F0)
        {
          goto LABEL_55;
        }

        v47 = OUTLINED_FUNCTION_257(v44, v41, v42, v43, v2, v3, v4, v5, v80, v81, v82, *(&v82 + 1), v83, v84, v85, *(&v85 + 1), v86, v87, v88, key, v90, v91, SBYTE2(v91), SBYTE3(v91), SHIDWORD(v91));
        os_log_type_enabled(v47, BYTE3(v91));
        OUTLINED_FUNCTION_425();
        if (v13)
        {
          v49 = v48;
        }

        else
        {
          v49 = HIDWORD(v91);
        }

        if (!v49)
        {
LABEL_54:
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635(v54, v55, v56, v57, v58);
LABEL_55:
          *(v11 + 8 * v9) = *(v8 + 80);
          goto LABEL_56;
        }

        if (*v10)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v8 + 16))
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_534();
        OUTLINED_FUNCTION_767();
        OUTLINED_FUNCTION_359();
        OUTLINED_FUNCTION_66();
        v50 = OUTLINED_FUNCTION_27();
        _os_log_send_and_compose_impl(v50, v51, v52, v53, &dword_1962D5000, v47, BYTE3(v91), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: recovered track %d from previous switch");
      }

      else
      {
        v59 = OUTLINED_FUNCTION_765();
        v61 = fpfs_cloneTrackAndAddToTrackList(v59, v60);
        if (!v61)
        {
          goto LABEL_74;
        }

        v62 = v61;
        v63 = *(v8 + 232);
        *(v61 + 224) = *(v8 + 248);
        *(v61 + 208) = v63;
        v64 = fpfs_ChangeTrackState(v61, 4u);
        if (!dword_1EAF169F0)
        {
          goto LABEL_55;
        }

        v68 = OUTLINED_FUNCTION_257(v64, v65, v66, v67, v2, v3, v4, v5, v80, v81, v82, *(&v82 + 1), v83, v84, v85, *(&v85 + 1), v86, v87, v88, key, v90, v91, SBYTE2(v91), SBYTE3(v91), SHIDWORD(v91));
        os_log_type_enabled(v68, BYTE3(v91));
        OUTLINED_FUNCTION_425();
        if (v13)
        {
          v70 = v69;
        }

        else
        {
          v70 = HIDWORD(v91);
        }

        if (!v70)
        {
          goto LABEL_54;
        }

        if (*v10)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (*(v62 + 16))
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_534();
        OUTLINED_FUNCTION_767();
        OUTLINED_FUNCTION_359();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_772();
        _os_log_send_and_compose_impl(v71, v72, v73, v74, v75, v76, v77, "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: created track %d for recovering previous switch");
      }

      v11 = v88;
      goto LABEL_54;
    }

LABEL_56:
    v8 = *(v8 + 24);
  }

  while (v8);
  if (v84)
  {
    v78 = *(CMBaseObjectGetVTable() + 16);
    if (*v78 >= 2uLL)
    {
      v79 = v78[7];
      if (v79)
      {
        v79(v84);
      }
    }
  }

LABEL_74:
  OUTLINED_FUNCTION_646();
}

void fpfs_SeekDidFail()
{
  OUTLINED_FUNCTION_831();
  v31 = v0;
  v32 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_433();
  v30 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v25 = __PAIR64__(v5, v3);
  v29 = 0;
  v27 = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v25 + 4);
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = *(v9 + 2568);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v11)
    {
      v11(v10, @"playerStats", 0x1F0B66718, 1);
    }
  }

  v12 = MEMORY[0x1E6960C70];
  fpfsi_setLastSeekTimeSet(v9, MEMORY[0x1E6960C70]);
  if (v8)
  {
    keys = @"SeekID";
    values = v8;
    if (v3 && (v13 = CFNumberCreate(v7, kCFNumberSInt32Type, &v25)) != 0)
    {
      v29 = @"Result";
      v27 = v13;
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v16 = CFDictionaryCreate(AllocatorForMedia, &keys, &values, v14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_188();
      fpfs_EnqueueNotification(v18, v19, v20, v17);
      CFRelease(v17);
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, values, v27);
    }

    p_values = &values;
    do
    {
      if (*p_values)
      {
        CFRelease(*p_values);
      }

      ++p_values;
      --v14;
    }

    while (v14);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, values, v27);
  }

  *(DerivedStorage + 1472) = *v12;
  *(DerivedStorage + 1488) = *(v12 + 16);
  v22 = OUTLINED_FUNCTION_624();
  fpfsi_setLastSeekTimeSet(v22, v23);
  *(DerivedStorage + 3184) = 0;
  *(DerivedStorage + 2216) = 0;
  *(DerivedStorage + 2240) = 0;
  v24 = *(DerivedStorage + 1576);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 1576) = 0;
  }

  OUTLINED_FUNCTION_648();
}

void fpfsi_setLastSeekTimeSet(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(a1 + 320) = *a2;
  *(a1 + 336) = v3;
  v4 = *(a1 + 2568);
  if (v4)
  {
    v5 = *(a1 + 332);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v6)
    {
      v6(v4, @"playerStats", 0x1F0B66B58, v5 & 1, 0);
    }
  }

  OUTLINED_FUNCTION_385();
  fpfsi_setPlaybackRateMonitorPendingSeekTime(a1, v7);
}

void fpfsi_RTCReportingReportStartupPerformanceMetrics(uint64_t a1)
{
  cf = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 2608))
  {
    OUTLINED_FUNCTION_523();
    if (v2)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v4)
      {
        v5 = v4(v2, @"playerStats", 115, 0, &cf);
        v13 = OUTLINED_FUNCTION_582(v5, v6, v7, v8, v9, v10, v11, v12, v16, cf);
        if (!v14)
        {
          v15 = *(v1 + 2608);
          *(v1 + 2608) = v13;
          if (v13)
          {
            CFRetain(v13);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          fpfsi_UpdateAccessLogStartupPerformanceMetrics(a1);
          v13 = cf;
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }
}

void fpfs_stopPlaybackForInternalReason(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_849(a1);
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetFloat32();
  OUTLINED_FUNCTION_403();
  fpfs_EnqueueNotification(v6, v7, v8, v9);
  *(v3 + 108) = 0;
  if (!fpfs_pauseCurrentItem(v1))
  {
    if (v2)
    {
      v10 = OUTLINED_FUNCTION_265();
      NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v10, v11, v12, v13, v14, v15, v16, v17, @"CurrentRate", 0);
      FigCFDictionarySetInt32();
      fpfs_EnqueueNotification(v1, @"RateDidChange", v1, NotificationPayloadForProperties);
      if (NotificationPayloadForProperties)
      {
        CFRelease(NotificationPayloadForProperties);
      }
    }

    else
    {
      fpfs_EnqueueNotification(v1, @"RateDidChange", v1, 0);
    }
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void fpfsi_ResetPlaybackItem(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_849(a1);
  OUTLINED_FUNCTION_172(v4);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62 = *MEMORY[0x1E6960C70];
  v66 = *MEMORY[0x1E6960C70];
  v61 = *(MEMORY[0x1E6960C70] + 16);
  v67 = v61;
  if (!*(v1 + 24))
  {
    v59 = DerivedStorage;
    v60 = v2;
    fpfs_tearDownManifoldsAndStream(v2);
    for (i = 0; i != 3; ++i)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = v12;
        StoreCurrentManifold(v1, i, v11, 0, v6, v7, v8, v9);
        v14 = 3 * v11;
        *(v1 + 472 + v14 + i) = 0;
        *(v1 + 1104 + 8 * v14 + 8 * i) = 0;
        v15 = v1 + 176 + 8 * v14;
        v16 = *(v15 + 8 * i);
        if (v16)
        {
          CFRelease(v16);
          *(v15 + 8 * i) = 0;
        }

        v12 = 0;
        *(v1 + 512 + v14 + i) = 0;
        v11 = 1;
      }

      while ((v13 & 1) != 0);
      v17 = v1 + 248 + 24 * i;
      *v17 = v62;
      *(v17 + 16) = v61;
    }

    fpfsi_RemoveAndClearTimer((v1 + 1608));
    *(v1 + 1616) = v62;
    *(v1 + 1632) = v61;
    *(v1 + 1640) = v62;
    *(v1 + 1656) = v61;
    fpfsi_RemoveAndClearTimer((v1 + 2320));
    fpfsi_RemoveAndClearTimer((v1 + 2352));
    fpfsi_RemoveAndClearTimer((v1 + 2360));
    fpfsi_RemoveAndClearTimer((v1 + 3456));
    fpfsi_EmancipateItemFromMultichannelInhibitionsAndApplyFilters(v60);
    *(v1 + 224) = v62;
    *(v1 + 240) = v61;
    fpfsi_setLastSeekTimeSet(v1, MEMORY[0x1E6960C70]);
    *(v1 + 408) = v62;
    *(v1 + 424) = v61;
    *(v1 + 460) = 0;
    *(v1 + 462) = 0;
    *(v1 + 464) = 0;
    *(v1 + 469) = 0;
    v18 = CMBaseObjectGetDerivedStorage();
    if (*(v18 + 471))
    {
      *(v18 + 471) = 0;
    }

    *(v1 + 480) = v62;
    *(v1 + 496) = v61;
    *(v1 + 524) = 0;
    fpfs_EnqueuePlaythroughPredictionNotification(v60);
    v19 = OUTLINED_FUNCTION_198();
    fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(v19, v20);
    fpfsi_removeLayerSync(v60);
    CMBaseObjectGetDerivedStorage();
    v21 = OUTLINED_FUNCTION_267();
    fpfs_ClearAllCachedRenderChains(v21);
    *(v1 + 1044) = 0;
    fpfs_cleanupAllImageQueues(v60, v3);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v22 = *(v1 + 752);
    if (v22)
    {
      CFRelease(v22);
      *(v1 + 752) = 0;
    }

    v23 = MEMORY[0x1E6960C70];
    v24 = OUTLINED_FUNCTION_491();
    fpfsi_setItemRateTimebaseAndAnchor(v24, v25, v23, v23, v26);
    v27 = *(v1 + 1024);
    if (v27)
    {
      while (1)
      {
        v28 = *(v27 + 24);
        if (!v28)
        {
          break;
        }

        v29 = *(v28 + 32);
        fpfs_DeleteTrack(v60, v27);
        v27 = v28;
        if ((v29 & 0x8000000000000000) == 0)
        {
          if (!*(v1 + 1024))
          {
            goto LABEL_23;
          }

          v27 = *(v1 + 1024);
          while (*(v27 + 32) != v29)
          {
            v27 = *(v27 + 24);
            if (!v27)
            {
              v27 = *(v1 + 1024);
              break;
            }
          }
        }

        if (!*(v1 + 1024))
        {
          goto LABEL_23;
        }
      }

      fpfs_DeleteTrack(v60, v27);
    }

LABEL_23:
    v30 = *(v1 + 1040);
    if (v30)
    {
      do
      {
        v31 = *(v30 + 24);
        fpfs_DeleteTrack(v60, v30);
        if (!v31)
        {
          break;
        }

        v30 = v31;
      }

      while (*(v1 + 1040));
    }

    fpfs_FreeDeadTracks(v1);
    if (fpfs_getNext(v59, 0) == v60)
    {
      fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(v60);
    }

    v32 = OUTLINED_FUNCTION_198();
    fpfs_GetNextTimeToPlay(v32, v33, v34);
    fpfs_EstablishTimebase(v60);
    *(v1 + 592) = 256;
    *(v1 + 1080) = 1;
    *(v1 + 1072) = 1;
    *(v1 + 1088) = 0;
    *(v1 + 1152) = 0;
    *(v1 + 795) = 0;
    v35 = OUTLINED_FUNCTION_112((v1 + 1160));
    *(v1 + 1176) = v36;
    v37 = *(v1 + 96);
    v64 = v35;
    v65 = v36;
    FigAlternatePlaybackBitrateMonitorSetPumpOffset(v37, &v64);
    v38 = *&v23->value;
    *(v1 + 1256) = *&v23->value;
    epoch = v23->epoch;
    *(v1 + 1272) = epoch;
    *(v1 + 1280) = v38;
    *(v1 + 1296) = epoch;
    *(v1 + 1304) = v38;
    *(v1 + 1320) = epoch;
    *(v1 + 1472) = v66;
    *(v1 + 1488) = v67;
    *(v1 + 1512) = epoch;
    *(v1 + 1496) = v38;
    *(v1 + 2344) = epoch;
    *(v1 + 2328) = v38;
    *(v1 + 2904) = 0;
    *(v1 + 2472) = 0;
    *(v1 + 3300) = v38;
    *(v1 + 3316) = epoch;
    *(v1 + 3328) = 0u;
    *(v1 + 3344) = v38;
    *(v1 + 3360) = epoch;
    *(v1 + 1528) = 0x4024000000000000;
    v63 = v38;
    *(v1 + 1544) = v38;
    *(v1 + 1560) = epoch;
    v40 = *(v1 + 1568);
    if (v40)
    {
      CFRelease(v40);
      *(v1 + 1568) = 0;
    }

    v41 = *(v1 + 1576);
    if (v41)
    {
      CFRelease(v41);
      *(v1 + 1576) = 0;
    }

    v42 = *(v1 + 1584);
    if (v42)
    {
      CFRelease(v42);
      *(v1 + 1584) = 0;
    }

    v43 = *(v1 + 1736);
    if (v43)
    {
      CFRelease(v43);
      *(v1 + 1736) = 0;
    }

    v44 = *(v1 + 1744);
    if (v44)
    {
      CFRelease(v44);
      *(v1 + 1744) = 0;
    }

    v45 = *(v1 + 1592);
    if (v45)
    {
      do
      {
        v46 = *v45;
        fpfsi_RemoveDateEntry(v1, v45);
        v45 = v46;
      }

      while (v46);
    }

    v47 = *(v1 + 1680);
    if (v47)
    {
      CFRelease(v47);
      *(v1 + 1680) = 0;
    }

    v48 = *(v1 + 1704);
    if (v48)
    {
      CFRelease(v48);
      *(v1 + 1704) = 0;
    }

    v49 = *(v1 + 1688);
    if (v49)
    {
      CFRelease(v49);
      *(v1 + 1688) = 0;
    }

    v50 = *(v1 + 1720);
    if (v50)
    {
      CFRelease(v50);
      *(v1 + 1720) = 0;
    }

    fpfsi_TearDownIFramePrefetcher(v60);
    v51 = *(v1 + 728);
    if (v51)
    {
      CFRelease(v51);
      *(v1 + 728) = 0;
    }

    v52 = *(v1 + 2872);
    if (v52)
    {
      CFRelease(v52);
      *(v1 + 2872) = 0;
    }

    if (*(v1 + 736))
    {
      FigImageQueueGaugeGetCMBaseObject();
      if (v53)
      {
        v54 = v53;
        v55 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v55)
        {
          v55(v54);
        }
      }

      v56 = *(v1 + 736);
      if (v56)
      {
        CFRelease(v56);
        *(v1 + 736) = 0;
      }
    }

    *(v1 + 1896) = 0;
    *(v1 + 1936) = 0;
    v57 = *(v1 + 2248);
    if (v57)
    {
      CFRelease(v57);
      *(v1 + 2248) = 0;
    }

    *(v1 + 2368) = 0;
    *(v1 + 3000) = 0;
    *(v1 + 3081) = 0;
    *(v1 + 608) = v63;
    *(v1 + 624) = epoch;
    *(v1 + 530) = 0;
    v58 = *(v1 + 3424);
    if (v58)
    {
      CFRelease(v58);
      *(v1 + 3424) = 0;
    }
  }
}

uint64_t fpfs_ensureTransaction(uint64_t a1, uint64_t *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    if (!*(result + 880))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      result = FigDeferredTransactionCreate(AllocatorForMedia, a2);
      *(v4 + 880) = *a2;
    }
  }

  return result;
}

void fpfs_sendEmptyConfigurationToEachVideoTarget(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(DerivedStorage + 376)))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_266();
    OUTLINED_FUNCTION_496();
    fpfs_createDataChannelConfigurationAndSetIdentifiers();
    if (!v2)
    {
      OUTLINED_FUNCTION_107(MEMORY[0x1E6960C70]);
      OUTLINED_FUNCTION_496();
      FigStreamingPlayerCombinedVideoDestinationSendFVTConfigAtHostTime(v3, v4, v5, v6, v7, v8);
    }
  }
}

void fpfsi_RTCReportingReportIRATEventIfNeeded(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v20 = v19;
  OUTLINED_FUNCTION_172(v21);
  CMBaseObjectGetDerivedStorage();
  if (*(v18 + 912))
  {
    v22 = *(v18 + 2592);
    if (v20 == 800)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v20 == 800)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        FigGetAllocatorForMedia();
        OUTLINED_FUNCTION_179();
        FigBytePumpGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          goto LABEL_17;
        }

        v24 = OUTLINED_FUNCTION_188();
        if (v25(v24))
        {
          goto LABEL_17;
        }
      }
    }

    else if ((v22 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_17;
    }

    if (*(v18 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        OUTLINED_FUNCTION_305();
        if (!v26())
        {
          *(v18 + 2592) = v23;
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_652();
}

void fpfs_deferredSeekableTimeRangeChanged()
{
  OUTLINED_FUNCTION_647();
  v125 = v1;
  v126 = v2;
  v4 = v3;
  v112 = *MEMORY[0x1E69E9840];
  v5 = OUTLINED_FUNCTION_412();
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v5, v6, v7, v8, v9, v10, v11, v12, v80, v81, 0, 0, 0, rhs.value, rhs.timescale, SBYTE2(rhs.timescale), HIBYTE(rhs.timescale), rhs.flags, rhs.epoch, SHIDWORD(rhs.epoch), v87, v88, lhs.value, *&lhs.timescale, lhs.epoch, v90, v91, *&v92[6], *&v92[14], v93, time.value, *&time.timescale, time.epoch, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124))
  {
    v46 = 0;
    goto LABEL_29;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 912))
  {
    v15 = v14;
    memset(&time, 0, sizeof(time));
    fpfsi_GetDuration(cf, &time.value);
    if (!v16)
    {
      OUTLINED_FUNCTION_529();
      if (v17)
      {
        v18 = CMBaseObjectGetDerivedStorage();
        if (*(v18 + 840) > 0.0)
        {
          v19 = v18;
          fpfsi_GetPumpMaxTimeAvailable(&time);
          v108 = time.value;
          flags = time.flags;
          LODWORD(v109) = time.timescale;
          epoch = time.epoch;
          v21 = OUTLINED_FUNCTION_490();
          fpfs_GetNextTimeToPlay(v21, v22, v23);
          v110 = time.value;
          v24 = time.flags;
          LODWORD(v111) = time.timescale;
          if ((flags & 0x1D) == 1)
          {
            v25 = time.epoch;
            lhs.value = v108;
            lhs.timescale = v109;
            lhs.flags = flags;
            lhs.epoch = epoch;
            rhs = *(v19 + 1160);
            CMTimeSubtract(&time, &lhs, &rhs);
            LODWORD(v109) = time.timescale;
            v108 = time.value;
            lhs = time;
            rhs.value = v110;
            rhs.timescale = v111;
            rhs.flags = v24;
            rhs.epoch = v25;
            CMTimeSubtract(&time, &lhs, &rhs);
            Seconds = CMTimeGetSeconds(&time);
            v27 = *(v19 + 2568);
            if (v27)
            {
              v28 = Seconds;
              v29 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v29)
              {
                v29(v27, @"playerStats", 0x1F0B43A58, (v28 * 1000.0));
              }
            }
          }
        }
      }
    }

    FigBytePumpGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v30 = OUTLINED_FUNCTION_731(), v31(v30)))
    {
      v34 = 0;
LABEL_21:
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_267();
      FigBytePumpGetFigBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
      {
        v35 = OUTLINED_FUNCTION_148();
        v36(v35);
      }

      if (fpfs_EnsureScanningBoundaryTimer(cf) == -12863)
      {
        fpfs_HandleScanningBoundaryTimerEnd(cf);
      }

      goto LABEL_25;
    }

    CMTimeMakeFromDictionary(&time, dictionaryRepresentation);
    *(DerivedStorage + 1328) = time;
    if (*(DerivedStorage + 1340))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_401();
    if (v17 || (v32 = *(DerivedStorage + 1024)) == 0 || !fpfs_StopPlaybackByStalledTrack(v32, 4u))
    {
      if (dword_1EAF169F0)
      {
        LODWORD(rhs.value) = 0;
        LOBYTE(v110) = 0;
        OUTLINED_FUNCTION_432();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v110);
        OUTLINED_FUNCTION_37();
        if (flags)
        {
          if (v85)
          {
            v53 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v53 = "";
          }

          if (cf)
          {
            v54 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v54 = "";
          }

          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "fpfs_deferredSeekableTimeRangeChanged";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = v85;
          HIWORD(lhs.epoch) = 2082;
          v90 = v53;
          v91 = 2048;
          *v92 = cf;
          *&v92[8] = 2082;
          *&v92[10] = v54;
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_200();
          _os_log_send_and_compose_impl(v55, v56, v57, v58, v59, v60, v61, v62);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v63, v64, v65, v66, v67);
      }

      OUTLINED_FUNCTION_677();
      fpfs_PrepareForSeek(v68, v69, v70);
      v71 = *(DerivedStorage + 1592);
      if (v71)
      {
        do
        {
          v72 = *v71;
          fpfsi_RemoveDateEntry(DerivedStorage, v71);
          v71 = v72;
        }

        while (v72);
      }

      if (*(v15 + 32))
      {
        v34 = *(v15 + 108) != 0.0;
LABEL_55:
        v73 = *(DerivedStorage + 1592);
        if (v73)
        {
          v74 = 0;
          v75 = *(DerivedStorage + 1592);
          do
          {
            if (*(v75 + 84))
            {
              v74 = v75;
            }

            v75 = *v75;
          }

          while (v75);
          if (*v73)
          {
            while (1)
            {
              v76 = *(DerivedStorage + 1592);
              if (!v76)
              {
                break;
              }

              if (v76 == v74)
              {
                break;
              }

              v77 = *v76;
              if (!*v76)
              {
                break;
              }

              time = *(DerivedStorage + 1328);
              lhs = v77[1];
              if (CMTimeCompare(&time, &lhs) < 0)
              {
                break;
              }

              v78 = OUTLINED_FUNCTION_618();
              fpfsi_RemoveDateEntry(v78, v79);
            }
          }
        }

        goto LABEL_21;
      }

LABEL_53:
      v34 = 0;
      goto LABEL_55;
    }
  }

  v34 = 0;
LABEL_25:
  v37 = OUTLINED_FUNCTION_184();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(v37, v38, v39, v40, v41, v42, v43, v44, @"SeekableTimeIntervals", 0);
  v46 = NotificationPayloadForProperties;
  if (value)
  {
    CFDictionarySetValue(NotificationPayloadForProperties, @"updateDate", value);
  }

  v47 = OUTLINED_FUNCTION_188();
  fpfs_EnqueueNotification(v47, v48, v49, v46);
  fpfs_UnlockAndPostNotificationsWithCaller(v85);
  if (v34)
  {
    CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_133();
    fpfs_FlowControlPump(v50, v51, v52, 255);
  }

LABEL_29:
  if (value)
  {
    CFRelease(value);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  OUTLINED_FUNCTION_646();
}

void fpfs_deferredSuggestedAlternateNote()
{
  OUTLINED_FUNCTION_460();
  v115 = v0;
  v116 = v2;
  v4 = v3;
  v103 = *MEMORY[0x1E69E9840];
  v77 = 0;
  v78 = 0;
  if (!v1)
  {
    goto LABEL_61;
  }

  v5 = v1;
  Value = CFDictionaryGetValue(v1, @"FBP_AlternateValue");
  if (!Value)
  {
    goto LABEL_61;
  }

  v12 = Value;
  v13 = fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(v4, &v77, &v78, v7, v8, v9, v10, v11, v64, v66, v68, v70, theDict, v75, 0, 0, OS_LOG_TYPE_DEFAULT, 0, 0, 0, 0, 0, v77, v78, v79, *&v80[4], *&v80[12], v82, v83, *&v84[6], *&v84[14], v85, v86, v87, cf.value, *&cf.timescale, cf.epoch, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
  v14 = v78;
  if (!v13)
  {
    theDicta = v5;
    v74 = v4;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = v77;
    v17 = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 912) || (v18 = v17, (v19 = *(DerivedStorage + 96)) == 0) || !FigAlternatePlaybackBitrateMonitorIsAlternateStillValid(v19, v12) || FigCFEqual() || !*(v18 + 458))
    {
LABEL_56:
      fpfs_UnlockAndPostNotificationsWithCaller(v16);
      v4 = v74;
      goto LABEL_57;
    }

    v20 = CMBaseObjectGetDerivedStorage();
    v21 = CMBaseObjectGetDerivedStorage();
    v22 = *(v20 + 912);
    CMBaseObjectGetDerivedStorage();
    if (!v14 || !v22)
    {
      OUTLINED_FUNCTION_723();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, v67, v69);
      if (v33)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    CMBaseObjectGetDerivedStorage();
    cf.value = 0;
    v79 = 0;
    if (CFEqual(@"FBP_MaximumRecommendedCellularBitrate", @"FBP_InitialBandwidthTargetForNetwork") || CFEqual(@"FBP_MaximumRecommendedCellularBitrate", @"FBP_MaximumRecommendedCellularBitrate"))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      FigBytePumpGetFigBaseObject();
      v25 = v24;
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v26)
      {
        goto LABEL_21;
      }

      v27 = v26(v25, 0x1F0B1EE18, AllocatorForMedia, &cf);
      if (v27 != -12783)
      {
        if (v27)
        {
          goto LABEL_21;
        }
      }

      if (!cf.value)
      {
LABEL_34:
        v32 = *(v20 + 2408);
        if (v32 > 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        v32 = 0;
        goto LABEL_36;
      }

      v28 = CFGetTypeID(cf.value);
      if (v28 == CFDictionaryGetTypeID())
      {
        if (FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetBooleanIfPresent())
        {
          v29 = v79;
          goto LABEL_23;
        }
      }

      else
      {
LABEL_21:
        OUTLINED_FUNCTION_723();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }

    v29 = 0;
LABEL_23:
    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if (*(v21 + 832) && v29 > 0)
    {
      v30 = *(v20 + 2408);
      if (v30 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = *(v20 + 2408);
      }

      if (v30 <= 0)
      {
        v32 = v29;
      }

      else
      {
        v32 = v31;
      }

LABEL_36:
      PeakBitRate = FigAlternateGetPeakBitRate(v12);
      v35 = PeakBitRate;
      if (!v32 || PeakBitRate < v32)
      {
        v36 = OUTLINED_FUNCTION_490();
        fpfs_GetNextTimeToPlay(v36, v37, v38);
        if (v35 >= FigAlternateGetPeakBitRate(*(DerivedStorage + 1680)))
        {
          v39 = 2;
        }

        else
        {
          v39 = 3;
        }

        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_425();
          if (v42)
          {
            v43 = v41;
          }

          else
          {
            v43 = 0;
          }

          if (v43)
          {
            if (v16)
            {
              v44 = (CMBaseObjectGetDerivedStorage() + 888);
            }

            else
            {
              v44 = "";
            }

            v71 = v44;
            if (v14)
            {
              v45 = (CMBaseObjectGetDerivedStorage() + 3096);
            }

            else
            {
              v45 = "";
            }

            cf = v76;
            CMTimeGetSeconds(&cf);
            cf = *(DerivedStorage + 1160);
            CMTimeGetSeconds(&cf);
            v79 = 136316674;
            *v80 = "fpfs_deferredSuggestedAlternateNote";
            *&v80[8] = 2048;
            *&v80[10] = v16;
            v81 = 2082;
            v82 = v71;
            v83 = 2048;
            *v84 = v14;
            *&v84[8] = 2082;
            *&v84[10] = v45;
            OUTLINED_FUNCTION_375();
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_35();
            OUTLINED_FUNCTION_307();
            _os_log_send_and_compose_impl(v46, v47, v48, v49, v50, v51, v52, v53);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_635(v54, v55, v56, v57, v58);
        }

        CFDictionaryGetValue(theDicta, @"FBP_CacheContext");
        OUTLINED_FUNCTION_389(MEMORY[0x1E6960C70]);
        cf.epoch = v59;
        v60 = OUTLINED_FUNCTION_293();
        fpfs_SetAlternateWithContext(v60, v61, v12, 1u, v62, 0, 0, v63, v39);
      }

      goto LABEL_56;
    }

    goto LABEL_34;
  }

LABEL_57:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v77)
  {
    CFRelease(v77);
  }

LABEL_61:
  if (v4)
  {
    CFRelease(v4);
  }

  OUTLINED_FUNCTION_459();
}

uint64_t fpfs_EnsureScanningBoundaryTimer(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_180(DerivedStorage);
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = MEMORY[0x1E6960C70];
  v6 = *MEMORY[0x1E6960C70];
  v63 = *(MEMORY[0x1E6960C70] + 8);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v60 = *MEMORY[0x1E6960C70];
  v61 = v7;
  v62 = v6;
  fpfsi_GetDuration(a1, &v60);
  v8 = 0;
  if (v9)
  {
    return v8;
  }

  OUTLINED_FUNCTION_529();
  if (!v10)
  {
    return v8;
  }

  v11 = *(v5 + 12);
  v12 = *(v4 + 108);
  if (v12 > 1.0 || v12 < 0.0)
  {
    memset(&v59, 0, sizeof(v59));
    CMTimeMake(&v59, 2, 1);
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    fpfsi_getSeekableTimeRange(&v56);
    v54 = 0uLL;
    v55 = 0;
    fpfs_GetTime(v1, &v54);
    v52 = 0uLL;
    v53 = 0;
    *&time2.timescale = *(&v56 + 1);
    time2.epoch = v57;
    v23 = OUTLINED_FUNCTION_281(v15, v16, v17, v18, v19, v20, v21, v22, v40, v42, v44, v46, *(&v57 + 1), v58, *(&v58 + 1), v49, v56);
    v26 = CMTimeAdd(v25, v23, v24);
    v34 = *(v4 + 108);
    if (v34 > 1.0)
    {
      v48 = v53;
      v35 = OUTLINED_FUNCTION_137(v26, v27, v28, v29, v30, v31, v32, v33, v59.value, *&v59.timescale, v59.epoch, v47, v52);
      CMTimeSubtract(v37, v35, v36);
      OUTLINED_FUNCTION_269();
      if (CMTimeCompare(v38, &time2) < 0)
      {
        v39 = &v52;
        goto LABEL_23;
      }

      v34 = *(v4 + 108);
    }

    if (v34 >= 0.0 || (*&time2.timescale = v54.n128_u64[1], time2.epoch = v55, OUTLINED_FUNCTION_268(v57, v41, v43, v45, v47, v56, *(&v56 + 1), v48, v50, v54.n128_i64[0]) < 1))
    {
      v8 = 4294954433;
      goto LABEL_7;
    }

    v39 = &v56;
LABEL_23:
    v8 = 0;
    v62 = *v39;
    v11 = *(v39 + 3);
    v63 = *(v39 + 2);
    v7 = *(v39 + 2);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v13 = *(v1 + 2320);
  if (v11)
  {
    if (!v13)
    {
      v8 = OUTLINED_FUNCTION_815(0, *(v1 + 600), *(v1 + 16));
      if (v8)
      {
        return v8;
      }

      v13 = *(v1 + 2320);
    }

    *&v56 = v62;
    *(&v56 + 1) = __PAIR64__(v11, v63);
    *&v57 = v7;
    FigSpeedRampTimerScheduleForL2Time(v13, &v56, 0);
    return v8;
  }

  if (v13)
  {
    fpfsi_RemoveAndClearTimer((v1 + 2320));
  }

  return v8;
}

const __CFDictionary *fpfs_GetOptionsDictionaryForSelectedMediaType(uint64_t a1, uint64_t a2)
{
  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
  MediaTypeInMediaArray = fpfs_FindMediaTypeInMediaArray(*(a1 + 1768), CFStringForOSTypeValue, 0);
  if (!MediaTypeInMediaArray)
  {
    return 0;
  }

  CFDictionaryGetValue(MediaTypeInMediaArray, @"MediaSelectionOptionsPersistentID");
  v5 = fpfs_FindMediaTypeInMediaArray(*(a1 + 1672), CFStringForOSTypeValue, 0);
  if (!v5)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v5, @"MediaSelectionGroupOptions");
  if (!Value)
  {
    return 0;
  }

  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    v10 = OUTLINED_FUNCTION_797();
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    if (FigCFEqual())
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t fpfsi_TimeInTotalTimeRangeInBuffer()
{
  OUTLINED_FUNCTION_369();
  v37 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_258(DerivedStorage);
  v2 = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_690();
  fpfsi_TotalTimeRangeInBuffer();
  value = range.start.value;
  timescale = range.start.timescale;
  if ((range.start.flags & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((range.duration.flags & 1) != 0 && !range.duration.epoch && (range.duration.value & 0x8000000000000000) == 0)
  {
    range.start.value = value;
    OUTLINED_FUNCTION_775();
    OUTLINED_FUNCTION_656();
    result = CMTimeRangeContainsTime(&range, &time);
    if (result)
    {
      v4 = *(v0 + 1024);
      if (v4)
      {
        while (!*(v4 + 472))
        {
          v4 = *(v4 + 24);
          if (!v4)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v5 = *(v0 + 1040);
        if (!v5)
        {
          goto LABEL_18;
        }

        while (!*(v5 + 472))
        {
          v5 = *(v5 + 24);
          if (!v5)
          {
            goto LABEL_18;
          }
        }
      }

      OUTLINED_FUNCTION_73();
      v6 = CMBaseObjectGetDerivedStorage();
      LOBYTE(time.value) = 0;
      LOBYTE(time2.value) = 0;
      if ((fpfsi_TimeInTrackListNonSparseCachedSamples((v6 + 1024), &v31, &time) & 1) == 0)
      {
        range.start = v31;
        if (!fpfsi_TimeInTrackListNonSparseCachedSamples((v6 + 1040), &range.start, &time2))
        {
          OUTLINED_FUNCTION_596();
          if (v7)
          {
            return 0;
          }
        }
      }

LABEL_18:
      fpfs_GetTime(v0, &range);
      OUTLINED_FUNCTION_656();
      if (!fpfs_TimeIsAfter(v2, &time, &range.start))
      {
        return 1;
      }

      OUTLINED_FUNCTION_89();
      v8 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v8)
      {
        return 1;
      }

      while (1)
      {
        if (*(v8 + 168) == 1 && !*(v8 + 200))
        {
          OUTLINED_FUNCTION_335();
          MinPresentationTimeStamp = CMBufferQueueGetMinPresentationTimeStamp(&range.start, *(v8 + 88));
          OUTLINED_FUNCTION_803(MinPresentationTimeStamp, v10, v11, v12, v13, v14, v15, v16, v17, v18, v29);
          time2 = range.start;
          v19 = CMTimeCompare(&time, &time2);
          if ((v19 & 0x80000000) != 0)
          {
            break;
          }

          OUTLINED_FUNCTION_803(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v30);
          time2 = *(v8 + 232);
          if (CMTimeCompare(&time, &time2) > 0)
          {
            break;
          }
        }

        v8 = *(v8 + 24);
        if (!v8)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

BOOL fpfsi_atOrAfterTimeToPausePlayback(uint64_t a1)
{
  OUTLINED_FUNCTION_173(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_167(MEMORY[0x1E6960C70]);
  if ((*(v1 + 1436) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_260(v2);
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_799();
    v13 = OUTLINED_FUNCTION_137(v5, v6, v7, v8, v9, v10, v11, v12, v39, v41, v43, v45, v47);
    v27 = CMTimeSubtract(v15, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_799();
    v24 = OUTLINED_FUNCTION_137(v16, v17, v18, v19, v20, v21, v22, v23, v39, v41, v43, v45, v47);
    v27 = CMTimeAdd(v26, v24, v25);
  }

  OUTLINED_FUNCTION_80(v27, v28, v29, v30, v31, v32, v33, v34, v40, v42, v44, v46, v48, v49, v50, v51, v52);
  v35 = OUTLINED_FUNCTION_275();
  return fpfs_TimeIsAtOrAfter(v35, v36, v37);
}

void fpfsi_TryToSeekWithinBuffer()
{
  OUTLINED_FUNCTION_193();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_565();
  v155 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *DerivedStorage;
  v9 = CMBaseObjectGetDerivedStorage();
  v146 = 0uLL;
  epoch = 0;
  fpfs_GetTime(DerivedStorage, &v146);
  OUTLINED_FUNCTION_52();
  if (fpfsi_TimeInTotalTimeRangeInBuffer())
  {
    if ((OUTLINED_FUNCTION_340(), OUTLINED_FUNCTION_301(), !fpfs_LastRenderingTrackofType(v10, v11, 0)) || (OUTLINED_FUNCTION_588(), v13 ^ v14 | v78) && v12 >= 0.0 || fpfs_getNext(v9, 0) != v0)
    {
      type = *v2;
      v139 = *(v2 + 16);
      v143 = *v2;
      v144 = v139;
      v15 = CMBaseObjectGetDerivedStorage();
      if (*(v15 + 840) >= 0.0)
      {
        v23 = (v15 + 1024);
        v24 = (v15 + 1040);
        v25 = 1;
        do
        {
          v26 = *v24;
          if (*v24)
          {
            while (1)
            {
              if (!*(v26 + 200) && (*(v26 + 244) & 1) != 0 && (*(v26 + 268) & 1) != 0)
              {
                time = *(v26 + 232);
                v15 = OUTLINED_FUNCTION_419(v139, p_time2, v103, v107, v111, v116, v120, v124, v129, type, *(&type + 1), v139, v141, v143, *(&v143 + 1), v144, v145, v146.n128_i64[0], v146.n128_i64[1], epoch, v148, type, *(&type + 1), time2.epoch, v150, *v151, *&v151[8], *&v151[16], *&v151[24], v152, v153, time.value);
                if ((v15 & 0x80000000) != 0)
                {
                  OUTLINED_FUNCTION_762(v15, v16, v17, v18, v19, v20, v21, v22, p_time2, v103, v107, v111, v116, v120, v124, v129, type);
                  v15 = OUTLINED_FUNCTION_419(*(v26 + 272), v100, v104, v108, v112, v117, v121, v125, v130, typeb, type_8a, v139, v141, v143, *(&v143 + 1), v144, v145, v146.n128_i64[0], v146.n128_i64[1], epoch, v148, *(v26 + 256), *(v26 + 264), time2.epoch, v150, *v151, *&v151[8], *&v151[16], *&v151[24], v152, v153, time.value);
                  if ((v15 & 0x80000000) != 0)
                  {
                    break;
                  }
                }
              }

              v26 = *(v26 + 24);
              if (!v26)
              {
                goto LABEL_17;
              }
            }

            v143 = *(v26 + 256);
            v144 = *(v26 + 272);
          }

LABEL_17:
          OUTLINED_FUNCTION_762(v15, v16, v17, v18, v19, v20, v21, v22, p_time2, v103, v107, v111, v116, v120, v124, v129, type);
          OUTLINED_FUNCTION_419(v144, v101, v105, v109, v113, v118, v122, v126, v131, typec, type_8b, v139, v141, v143, *(&v143 + 1), v144, v145, v146.n128_i64[0], v146.n128_i64[1], epoch, v148, v143, *(&v143 + 1), time2.epoch, v150, *v151, *&v151[8], *&v151[16], *&v151[24], v152, v153, time.value);
          OUTLINED_FUNCTION_786();
          v28 = v25 & v27;
          v24 = v23;
          v25 = 0;
        }

        while ((v28 & 1) != 0);
      }

      *v2 = v143;
      *(v2 + 16) = v144;
      CMBaseObjectGetDerivedStorage();
      if (!*(DerivedStorage + 2308))
      {
        *(DerivedStorage + 2308) = 12;
      }

      v29 = CMBaseObjectGetDerivedStorage();
      fpfs_ClearAllCachedRenderChains(v0);
      *(v29 + 796) = 0;
      fpfs_PrepareForSeek(v0, 255, 0);
      *(DerivedStorage + 528) = 1;
      OUTLINED_FUNCTION_52();
      fpfsi_setLastSeekTimeSet(DerivedStorage, &time);
      v30 = OUTLINED_FUNCTION_663();
      *(DerivedStorage + 1488) = v31;
      *(DerivedStorage + 1472) = v30;
      fpfs_GetTime(DerivedStorage, &time);
      v146 = *&time.value;
      epoch = time.epoch;
      v39 = *(DerivedStorage + 1024);
      if (v39)
      {
        v40 = MEMORY[0x1E6960C70];
        do
        {
          v41 = *(v39 + 24);
          fpfsi_MoveTrackToPlayedOut(DerivedStorage, v39, v40);
          if (!v41)
          {
            break;
          }

          v39 = v41;
        }

        while (*(DerivedStorage + 1024));
      }

      v42 = MEMORY[0x1E6960C70];
      v127 = *MEMORY[0x1E6960C70];
      *(DerivedStorage + 3048) = *MEMORY[0x1E6960C70];
      v43 = *(v42 + 16);
      *(DerivedStorage + 3064) = v43;
      if (dword_1EAF169F0)
      {
        v116 = v43;
        HIDWORD(v120) = v6;
        LODWORD(v143) = 0;
        LOBYTE(type) = 0;
        v44 = OUTLINED_FUNCTION_638(qword_1EAF169E8, v39, &v143, v34, v35, v36, v37, v38, p_time2, v103, v107);
        os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_70();
        if (v43)
        {
          if (v8)
          {
            v45 = CMBaseObjectGetDerivedStorage();
            v53 = (v45 + 888);
          }

          else
          {
            v53 = "";
          }

          v114 = v53;
          if (v0)
          {
            v45 = CMBaseObjectGetDerivedStorage();
            v54 = (v45 + 3096);
          }

          else
          {
            v54 = "";
          }

          OUTLINED_FUNCTION_347(v45, v46, v47, v48, v49, v50, v51, v52, p_time2, v103, v107, v114, v43, v120, v127, *(&v127 + 1), type, *(&type + 1), v139, v141, v143, *(&v143 + 1), v144, v145, *&v146);
          Seconds = CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_52();
          v56 = CMTimeGetSeconds(&time);
          LODWORD(time2.value) = 136316674;
          *(&time2.value + 4) = "fpfsi_TryToSeekWithinBuffer";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v8;
          HIWORD(time2.epoch) = 2082;
          v150 = v111;
          *v151 = 2048;
          *&v151[2] = v0;
          *&v151[10] = 2082;
          *&v151[12] = v54;
          *&v151[20] = 2048;
          *&v151[22] = Seconds;
          *&v151[30] = 2048;
          v152 = *&v56;
          OUTLINED_FUNCTION_170();
          p_time2 = &time2;
          OUTLINED_FUNCTION_35();
          OUTLINED_FUNCTION_307();
          _os_log_send_and_compose_impl(v57, v58, v59, v60, v61, v62, v63, v64);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_454(v65, v66, v67, v68, v69);
        v43 = v116;
      }

      *(DerivedStorage + 1104) = 0u;
      *(DerivedStorage + 1136) = 0u;
      *(DerivedStorage + 1120) = 0u;
      OUTLINED_FUNCTION_347(v32, v39, v33, v34, v35, v36, v37, v38, p_time2, v103, v107, v111, v116, v120, v127, *(&v127 + 1), type, *(&type + 1), v139, v141, v143, *(&v143 + 1), v144, v145, *&v146);
      OUTLINED_FUNCTION_316();
      if (CMTimeCompare(&time, &time2) >= 1)
      {
        OUTLINED_FUNCTION_52();
        v70 = OUTLINED_FUNCTION_520();
        fpfs_JumpToTime(v70, v71, v72);
      }

      OUTLINED_FUNCTION_52();
      if (!fpfs_RestartPlayedOutTracks(v0, &time))
      {
        if (*(DerivedStorage + 1024))
        {
          v73 = 0;
          v74 = 0;
          OUTLINED_FUNCTION_196();
          do
          {
            if (*(v75 + 168) == 6)
            {
              v77 = *(v75 + 48);
              if (v73)
              {
                v78 = 0;
              }

              else
              {
                v78 = v77 == v76;
              }

              if (v78)
              {
                v73 = v75;
              }

              if (v74)
              {
                v79 = 0;
              }

              else
              {
                v79 = v77 == v1;
              }

              if (v79)
              {
                v74 = v75;
              }
            }

            v75 = *(v75 + 24);
          }

          while (v75);
        }

        else
        {
          v74 = 0;
          v73 = 0;
        }

        fpfs_PostHasEnabledTrackTypeNotification(*DerivedStorage, v0);
        if (v73 | v74)
        {
          v80 = OUTLINED_FUNCTION_625();
          if (!fpfs_setTimebaseStarter(v80, v81, v74))
          {
            if (v4)
            {
              time = *(DerivedStorage + 1448);
              if (fpfsi_PlaybackHasBufferedBeyondTime())
              {
                fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime(v0);
              }
            }

            v82 = OUTLINED_FUNCTION_228();
            v85 = fpfs_EnqueueNotification(v82, v83, v84, 0);
            if (!v74 || !*(v74 + 120) || (OUTLINED_FUNCTION_347(v85, v86, v87, v88, v89, v90, v91, v92, v102, v106, v110, v115, v119, v123, v128, *(&v128 + 1), typea, type_8, v140, v142, v143, *(&v143 + 1), v144, v145, *&v146), OUTLINED_FUNCTION_316(), CMTimeCompare(&time, &time2) >= 1))
            {
              OUTLINED_FUNCTION_52();
              v93 = OUTLINED_FUNCTION_520();
              fpfs_JumpToTime(v93, v94, v95);
              *(DerivedStorage + 1472) = v128;
              *(DerivedStorage + 1488) = v43;
              OUTLINED_FUNCTION_52();
              OUTLINED_FUNCTION_177();
              fpfs_SeekDidComplete();
              v96 = OUTLINED_FUNCTION_203();
              OUTLINED_FUNCTION_530(v96, v97, v98);
            }

            fpfsi_MakeNextItemReadyForInspectionIfItemEndedOrBeyondFwdEnd(v0);
            fpfs_AssessItemTransition(v8);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_191();
}

void fpfsi_ClampVideoToTime()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v276 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  OUTLINED_FUNCTION_760();
  *&lhs.value = *v3;
  v210 = v3;
  if (!OUTLINED_FUNCTION_206(*(v3 + 16)))
  {
    goto LABEL_138;
  }

  FigGetAllocatorForMedia();
  CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v7 = OUTLINED_FUNCTION_312();
  if (CMBufferQueueCreate(v7, v8, v9, v10))
  {
    goto LABEL_138;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v249.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_176();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v16 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v5)
      {
LABEL_10:
        v17 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_14:
        v275 = *(DerivedStorage + 1448);
        Seconds = CMTimeGetSeconds(&v275);
        OUTLINED_FUNCTION_760();
        v19 = CMTimeGetSeconds(&v275);
        LODWORD(lhs.value) = 136316674;
        *(&lhs.value + 4) = "fpfsi_ClampVideoToTime";
        LOWORD(lhs.flags) = 2048;
        *(&lhs.flags + 2) = v15;
        HIWORD(lhs.epoch) = 2082;
        v262 = v16;
        v263 = 2048;
        v264 = v5;
        v265 = 2082;
        v266 = v17;
        v267 = 2048;
        v268 = Seconds;
        v269 = 2048;
        v270 = v19;
        OUTLINED_FUNCTION_170();
        p_lhs = &lhs;
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, 0, v26);
LABEL_15:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420(v27, v28, v29, v30, v31);
        goto LABEL_16;
      }
    }

    else
    {
      v16 = "";
      if (v5)
      {
        goto LABEL_10;
      }
    }

    v17 = "";
    goto LABEL_14;
  }

LABEL_16:
  v32 = DerivedStorage + 1448;
  v33 = *v1;
  *(DerivedStorage + 1464) = *(v1 + 16);
  *(DerivedStorage + 1448) = v33;
  v34 = *(DerivedStorage + 1024);
  if (!v34)
  {
    goto LABEL_134;
  }

  v35 = 0;
  v36 = *(MEMORY[0x1E6960C70] + 12);
  v196 = *(MEMORY[0x1E6960C70] + 16);
  key = *MEMORY[0x1E6960538];
  *&v33 = 136317186;
  v191 = v33;
  do
  {
    if (*(v34 + 48) == 1986618469 && !*(v34 + 200))
    {
      v37 = *(v34 + 112);
      if (v37)
      {
        v38 = v34;
        while (1)
        {
          v38 = *(v38 + 24);
          if (!v38)
          {
            break;
          }

          if (*(v38 + 112) == v37)
          {
            goto LABEL_24;
          }
        }

        value = *MEMORY[0x1E6960C70];
        timescale = *(MEMORY[0x1E6960C70] + 8);
        v241 = 0;
        refcon = 0;
        v240 = 0uLL;
        fpfsi_EndPresentationTimeForDecodedSamplesForRenderPipeline(*(v37 + 32), &v240);
        *(*(v34 + 112) + 26) = 0;
        OUTLINED_FUNCTION_0();
        MEMORY[0x19A8CE710]();
        OUTLINED_FUNCTION_12();
        CMBufferQueueCallForEachBuffer(v39, v40, &refcon);
        epoch = v196;
        LODWORD(v231) = v36;
        if (refcon)
        {
          CMSampleBufferGetOutputDecodeTimeStamp(&v275, refcon);
          value = v275.value;
          LODWORD(v231) = v275.flags;
          timescale = v275.timescale;
          epoch = v275.epoch;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v175 = v5;
        if (v240.n128_u8[12])
        {
          *&v275.value = v240;
          v275.epoch = v241;
          *&lhs.value = *v1;
          if (OUTLINED_FUNCTION_206(*(v1 + 16)) >= 1)
          {
            v41 = OUTLINED_FUNCTION_505();
            fpfs_GetNextTimeToPlay(v41, v42, v43);
            *&lhs.value = *v32;
            if ((OUTLINED_FUNCTION_206(*(v32 + 16)) & 0x80000000) == 0)
            {
              fpfs_FlushPrimaryAndAuxRenderChains(*(v34 + 112), 1);
            }
          }
        }

        HIDWORD(v171) = v36;
        v173 = v32;
        v44 = *(DerivedStorage + 1024);
        if (v44)
        {
          v45 = 0;
          v177 = DerivedStorage;
          v179 = v1;
          while (2)
          {
            if (*(v44 + 112) != *(v34 + 112))
            {
              goto LABEL_128;
            }

            v46 = OUTLINED_FUNCTION_505();
            fpfs_GetNextTimeToPlay(v46, v47, v48);
            v257 = value;
            v258 = timescale;
            v255 = *v1;
            v49 = *(v1 + 12);
            v256 = *(v1 + 8);
            v233 = *(v1 + 16);
            v253 = *v210;
            v50 = *(v210 + 12);
            v254 = *(v210 + 8);
            v214 = *(v210 + 16);
            v205 = *(v44 + 16);
            v202 = CMBaseObjectGetDerivedStorage();
            v236 = *(v44 + 96);
            v251 = 0;
            queue = 0;
            v249 = **&MEMORY[0x1E6960C80];
            v222 = *&v249.value;
            v219 = v249.epoch;
            memset(&type, 0, sizeof(type));
            v51 = CMTimeMake(&v275, 1, 1);
            OUTLINED_FUNCTION_525(v51, v52, v53, v54, v55, v56, v57, v58, v59, p_lhs, v171, v173, v175, v177, v179, v181, v183, v186, v188, v191, *(&v191 + 1), v194, v196, v198, v200, v202, v205, v208, v210, v212, v214, v217, v219, v222, *(&v222 + 1), key, epoch, v231, v233, v236, v60);
            lhs.epoch = v61;
            CMTimeAdd(&type, &lhs, &v275);
            v62 = 0;
            if (v50)
            {
              v275.value = v253;
              v275.timescale = v254;
              v275.flags = v50;
              v275.epoch = v215;
              *&lhs.value = *&type.value;
              v62 = OUTLINED_FUNCTION_206(type.epoch) < 1;
            }

            if ((v231 & 1) == 0)
            {
              v62 = 1;
            }

            if (v45)
            {
              v63 = 1;
            }

            else
            {
              v63 = v62;
            }

            if (v63 == 1)
            {
              FigGetAllocatorForMedia();
              CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
              v64 = OUTLINED_FUNCTION_312();
              v68 = CMBufferQueueCreate(v64, v65, v66, v67);
              if (!v68)
              {
                if ((v50 & 1) == 0)
                {
                  break;
                }

                v275 = *v239;
                OUTLINED_FUNCTION_664(v68, v69, v70, v71, v72, v73, v74, v75, p_lhs, v171, v173, v175, v177, v179, v181, v183, v186, v188, v191, *(&v191 + 1), v194, v196, v198, v200, v203, v206, v208, v210, v212, v215, v217, v220, v223, *(&v223 + 1), key, v229, v231, v234, v237, *v239, *&v239[8], *&v239[16], v240.n128_i64[0], v240.n128_i64[1], v241, refcon, cf, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, v247.value, *&v247.timescale, v247.epoch, type.value, *&type.timescale, type.epoch, v249.value, *&v249.timescale, v249.epoch, v250, v251);
                lhs.flags = v50;
                HIDWORD(v217) = OUTLINED_FUNCTION_206(v215) >= 0;
LABEL_49:
                FigGetAllocatorForMedia();
                CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
                v76 = OUTLINED_FUNCTION_312();
                if (!CMBufferQueueCreate(v76, v77, v78, v79))
                {
                  HIDWORD(v212) = v50;
                  HIDWORD(v208) = v35;
                  OUTLINED_FUNCTION_0();
                  MEMORY[0x19A8CE710](v237);
                  HIDWORD(v231) = 0;
                  v80 = 0;
                  v81 = HIDWORD(v217);
                  if (v45)
                  {
                    v81 = 0;
                  }

                  LODWORD(v208) = v81;
                  while (1)
                  {
                    v82 = CMBufferQueueDequeueAndRetain(queue);
                    v83 = v82 == 0;
                    if (!v82)
                    {
LABEL_121:
                      v164 = BYTE4(v231) != 0;
                      LOBYTE(v35) = BYTE4(v208);
                      goto LABEL_122;
                    }

                    v84 = v82;
                    memset(&v247, 0, sizeof(v247));
                    EndOutputPresentationTimeStamp = fpfs_GetEndOutputPresentationTimeStamp(v82, &v247);
                    if (!v63)
                    {
                      v112 = OUTLINED_FUNCTION_683();
                      CMSampleBufferGetOutputDecodeTimeStamp(v113, v112);
                      lhs.value = v257;
                      lhs.timescale = v258;
                      lhs.flags = v231;
                      if ((OUTLINED_FUNCTION_206(v229) & 0x80000000) != 0)
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_90;
                    }

                    v95 = OUTLINED_FUNCTION_753(EndOutputPresentationTimeStamp, v86, v87, v88, v89, v90, v91, v92, v93, p_lhs, v171, v173, v175, v177, v179, v181, v183, v186, v188, v191, *(&v191 + 1), v194, v196, v198, v200, v203, v206, v208, v210, v212, v215, v217, v220, v223, *(&v223 + 1), key, v229, v231, v234, v237, *v239, *&v239[8], *&v239[16], v240.n128_i64[0], v240.n128_i64[1], v241, refcon, cf, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, v94, v247.value);
                    OUTLINED_FUNCTION_525(v96, v97, v98, v99, v100, v101, v102, v103, v95, v170, v172, v174, v176, v178, v180, v182, v184, v187, v189, v192, v193, v195, v197, v199, v201, v204, v207, v209, v211, v213, v216, v218, v221, v224, v225, keya, v230, v232, v235, v238, v104);
                    v106 = OUTLINED_FUNCTION_206(v105);
                    v107 = OUTLINED_FUNCTION_683();
                    CMSampleBufferGetOutputPresentationTimeStamp(v108, v107);
                    *&lhs.value = *(v44 + 208);
                    v109 = OUTLINED_FUNCTION_206(*(v44 + 224));
                    v110 = v251;
                    if (v106 > 0 || v251)
                    {
                      if (v106 >= 1 && (v109 & 0x80000000) == 0)
                      {
                        v111 = 1;
LABEL_65:
                        if (!v80)
                        {
                          if (!fpfs_IsMarkerOnly(v84))
                          {
                            memset(&rhs, 0, sizeof(rhs));
                            if (v251)
                            {
                              CMBufferQueueGetFirstPresentationTimeStamp(&rhs, v251);
                              if (v251)
                              {
                                BufferCount = CMBufferQueueGetBufferCount(v251);
LABEL_75:
                                if (dword_1EAF169F0)
                                {
                                  HIDWORD(v244) = 0;
                                  BYTE3(v244) = 0;
                                  v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                  v116 = HIDWORD(v244);
                                  v200 = v115;
                                  HIDWORD(v198) = BYTE3(v244);
                                  os_log_type_enabled(v115, BYTE3(v244));
                                  OUTLINED_FUNCTION_176();
                                  if (v13)
                                  {
                                    v128 = v125;
                                  }

                                  else
                                  {
                                    v128 = v116;
                                  }

                                  if (v128)
                                  {
                                    v129 = *v203;
                                    v190 = BufferCount;
                                    if (*v203)
                                    {
                                      v117 = CMBaseObjectGetDerivedStorage();
                                      v130 = (v117 + 888);
                                    }

                                    else
                                    {
                                      v130 = "";
                                    }

                                    v185 = v130;
                                    v131 = v206;
                                    if (v206)
                                    {
                                      v117 = CMBaseObjectGetDerivedStorage();
                                      v132 = (v117 + 3096);
                                    }

                                    else
                                    {
                                      v132 = "";
                                    }

                                    OUTLINED_FUNCTION_753(v117, v118, v119, v120, v121, v122, v123, v124, v126, p_lhs, v171, v173, v175, v177, v179, v132, v185, *(v44 + 32), v190, v191, *(&v191 + 1), v194, v196, v198, v200, v203, v206, v208, v210, v212, v215, v217, v220, v223, *(&v223 + 1), key, v229, v231, v234, v237, *v239, *&v239[8], *&v239[16], v240.n128_i64[0], v240.n128_i64[1], v241, refcon, cf, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, v127, v247.value);
                                    v133 = CMTimeGetSeconds(&v275);
                                    v275 = rhs;
                                    v134 = CMTimeGetSeconds(&v275);
                                    LODWORD(lhs.value) = v191;
                                    *(&lhs.value + 4) = "fpfsi_EnqueueVideoSamplesWithClamping";
                                    LOWORD(lhs.flags) = 2048;
                                    *(&lhs.flags + 2) = v129;
                                    HIWORD(lhs.epoch) = 2082;
                                    v262 = v183;
                                    v263 = 2048;
                                    v264 = v131;
                                    v265 = 2082;
                                    v266 = v181;
                                    v267 = 2048;
                                    v268 = *&v186;
                                    v269 = 2048;
                                    v270 = v133;
                                    v271 = 2048;
                                    v272 = v134;
                                    v273 = 2048;
                                    v274 = v188;
                                    LODWORD(v171) = 92;
                                    p_lhs = &lhs;
                                    v135 = OUTLINED_FUNCTION_86();
                                    _os_log_send_and_compose_impl(v135, v136, v137, v138, &dword_1962D5000, v200, HIDWORD(v198), "<<<< FigStreamPlayer >>>> %s: [%p|%{public}s] <%p|%{public}s>: track: %ld, first needFrame: %f, gopQueue: %f (len: %ld)");
                                  }

                                  OUTLINED_FUNCTION_7();
                                  OUTLINED_FUNCTION_420(v139, v140, v141, v142, v143);
                                }

                                v80 = 1;
                                goto LABEL_90;
                              }
                            }

                            else
                            {
                              *&rhs.value = *MEMORY[0x1E6960C70];
                              rhs.epoch = v196;
                            }

                            BufferCount = -1;
                            goto LABEL_75;
                          }

                          v80 = 0;
                        }

                        goto LABEL_68;
                      }
                    }

                    else
                    {
                      fpfs_DoNotDisplay(v84);
                      v110 = v251;
                    }

                    v111 = v110 == 0;
                    if (!v110)
                    {
                      goto LABEL_65;
                    }

LABEL_68:
                    if (!v111)
                    {
                      goto LABEL_91;
                    }

LABEL_90:
                    v144 = *(v44 + 16);
                    v275.value = v255;
                    v275.timescale = v256;
                    v275.flags = v49;
                    v275.epoch = v234;
                    if (fpfsi_ProcessVideoSampleForClamping(v144, v44, v84, &v275))
                    {
LABEL_91:
                      v145 = 1;
                      goto LABEL_107;
                    }

                    if (v251 && !fpfs_IsMarkerOnly(v84))
                    {
                      if (v208)
                      {
                        fpfs_FlushPrimaryAndAuxRenderChains(*(v44 + 112), 1);
                        if (*(v44 + 120))
                        {
                          fpfs_PrerollRenderPipeline();
                        }
                      }

                      if (!fpfs_IsVideoSync(v84))
                      {
                        v146 = CMBufferQueueDequeueAndRetain(v251);
                        if (v146)
                        {
                          v147 = v146;
                          do
                          {
                            fpfs_DoNotDisplay(v147);
                            v148 = OUTLINED_FUNCTION_513();
                            fpfs_RenderBuffer(v148, v149);
                            CFRelease(v147);
                            v147 = CMBufferQueueDequeueAndRetain(v251);
                          }

                          while (v147);
                        }
                      }

                      if (v251)
                      {
                        CFRelease(v251);
                        v251 = 0;
                      }
                    }

                    if (HIDWORD(v217))
                    {
                      v150 = OUTLINED_FUNCTION_683();
                      OutputPresentationTimeStamp = CMSampleBufferGetOutputPresentationTimeStamp(v151, v150);
                      OUTLINED_FUNCTION_664(OutputPresentationTimeStamp, v153, v154, v155, v156, v157, v158, v159, p_lhs, v171, v173, v175, v177, v179, v181, v183, v186, v188, v191, *(&v191 + 1), v194, v196, v198, v200, v203, v206, v208, v210, v212, v215, v217, v220, v223, *(&v223 + 1), key, v229, v231, v234, v237, *v239, *&v239[8], *&v239[16], v240.n128_i64[0], v240.n128_i64[1], v241, refcon, cf, v244, rhs.value, *&rhs.timescale, rhs.epoch, v246, v247.value, *&v247.timescale, v247.epoch, type.value, *&type.timescale, type.epoch, v249.value, *&v249.timescale, v249.epoch, v250, v251);
                      lhs.flags = HIDWORD(v212);
                      if (OUTLINED_FUNCTION_206(v215) <= 0)
                      {
                        fpfs_DoNotDisplay(v84);
                      }
                    }

                    v160 = OUTLINED_FUNCTION_783();
                    v145 = fpfs_RenderBuffer(v160, v161) == 0;
LABEL_107:
                    CMBufferQueueEnqueue(v237, v84);
                    if (!v251)
                    {
                      goto LABEL_112;
                    }

                    if (fpfs_IsVideoSync(v84))
                    {
                      CMBufferQueueReset(v251);
LABEL_110:
                      CMBufferQueueEnqueue(v251, v84);
                      goto LABEL_112;
                    }

                    if (!CMBufferQueueIsEmpty(v251))
                    {
                      goto LABEL_110;
                    }

LABEL_112:
                    if (fpfs_IsMarkerOnly(v84))
                    {
                      if (v49)
                      {
                        goto LABEL_116;
                      }
                    }

                    else
                    {
                      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v84);
                      CMSampleBufferGetOutputDuration(&rhs, v84);
                      CMTimeAdd(&v275, &lhs, &rhs);
                      lhs = v249;
                      CMTimeMaximum(&v249, &lhs, &v275);
                      if (v49)
                      {
LABEL_116:
                        if (CMGetAttachment(v84, key, 0))
                        {
                          v275 = v249;
                          lhs.value = v255;
                          lhs.timescale = v256;
                          lhs.flags = v49;
                          v162 = OUTLINED_FUNCTION_206(v234);
                          v163 = HIDWORD(v231);
                          if (v162 >= 0)
                          {
                            v163 = 1;
                          }

                          HIDWORD(v231) = v163;
                          *&v249.value = v223;
                          v249.epoch = v220;
                        }
                      }
                    }

                    CFRelease(v84);
                    if (!v145)
                    {
                      goto LABEL_121;
                    }
                  }
                }
              }

              v164 = 0;
              v83 = 0;
LABEL_122:
              DerivedStorage = v177;
              v1 = v179;
              if (queue)
              {
                CFRelease(queue);
              }

              if (v251)
              {
                CFRelease(v251);
              }

              if (!v83)
              {
                goto LABEL_138;
              }

              v35 = v35 != 0 || v164;
              value = *(v44 + 232);
              LODWORD(v231) = *(v44 + 244);
              timescale = *(v44 + 240);
              epoch = *(v44 + 248);
              v45 = 1;
LABEL_128:
              v44 = *(v44 + 24);
              if (!v44)
              {
                goto LABEL_131;
              }

              continue;
            }

            break;
          }

          HIDWORD(v217) = 0;
          goto LABEL_49;
        }

LABEL_131:
        v32 = v173;
        v5 = v175;
        v36 = HIDWORD(v171);
      }
    }

LABEL_24:
    v34 = *(v34 + 24);
  }

  while (v34);
  if (v35 && (*(v1 + 12) & 1) != 0)
  {
    fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime(v5);
  }

  else
  {
LABEL_134:
    v165 = fpfsi_copyImageQueueGauge(v5);
    if (v165)
    {
      v166 = v165;
      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v167 = OUTLINED_FUNCTION_203();
        v168(v167);
      }

      CFRelease(v166);
    }
  }

LABEL_138:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_191();
}

BOOL fpfs_areAllExternalStartupTasksCompleted(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 952);
  if (!v2)
  {
    return 1;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    return 1;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 952), v5);
    result = FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 1;
    }
  }

  return result;
}

BOOL fpfsi_waitForVenueDescriptionProcessing()
{
  OUTLINED_FUNCTION_572();
  if (!*(v0 + 760))
  {
    return 0;
  }

  if (qword_1ED4CA3E0 != -1)
  {
    dispatch_once(&qword_1ED4CA3E0, &__block_literal_global_218);
  }

  if (!byte_1ED4CA3B9 || !*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_270();
  v3 = v2(v1);
  v11 = OUTLINED_FUNCTION_582(v3, v4, v5, v6, v7, v8, v9, v10, v15, cf);
  if (v12)
  {
    v13 = 0;
    if (!v11)
    {
      return v13;
    }

    goto LABEL_8;
  }

  CFNumberGetValue(v11, kCFNumberSInt32Type, &v15 + 4);
  v13 = HIDWORD(v15) == 0;
  v11 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v11);
  }

  return v13;
}

void fpfsi_AlignTimeToSnapping()
{
  OUTLINED_FUNCTION_650();
  v72 = v2;
  v73 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_699();
  v7 = v6;
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v17 = *(MEMORY[0x1E6960C70] + 16);
  *v7 = *v1;
  *(v7 + 16) = *(v1 + 16);
  v67 = *v16;
  v68 = v17;
  v48 = v67;
  v65 = v67;
  v66 = v17;
  v64 = 0;
  v63 = 0;
  if ((*(v1 + 12) & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = DerivedStorage;
  if (!*(DerivedStorage + 466))
  {
    goto LABEL_27;
  }

  v19 = *(v16 + 3);
  v20 = *(DerivedStorage + 1024);
  if (!v20)
  {
    goto LABEL_14;
  }

  v46 = v0;
  do
  {
    if (*(v20 + 200))
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_678();
    v55 = v48;
    v56 = v17;
    v57 = v48;
    v58 = v17;
    v59 = v48;
    v60 = v17;
    v61 = v48;
    v62 = v17;
    DerivedStorage = CMBufferQueueCallForEachBuffer(*(v20 + 96), fpfs_GetClosestSegmentBoundary, &refcon);
    v21 = *(v20 + 48);
    if (v21 == 1986618469)
    {
      v22 = &v65;
      v23 = &v64;
      v24 = &v63;
    }

    else
    {
      if (v21 != 1936684398)
      {
        goto LABEL_11;
      }

      v22 = &v67;
      v23 = (&v64 + 1);
      v24 = &v63 + 1;
    }

    fpfsi_UpdateTimeIfCloser(&refcon, v22, v23, v24);
LABEL_11:
    v20 = *(v20 + 24);
  }

  while (v20);
  if (HIBYTE(v64))
  {
    v25 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v25 = (*(v18 + 1072) >> 1) & 1;
  if (v25)
  {
LABEL_15:
    if (HIBYTE(v63))
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_16:
    if (v64)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25 == 0;
    }

    if (!v26 || v63 != 0)
    {
      *&rhs.timescale = *(&v67 + 1);
      rhs.epoch = v68;
      v28 = OUTLINED_FUNCTION_281(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v44, v46, v48, *(&v48 + 1), v65, *(&v65 + 1), v66, v52, v67);
      CMTimeMinimum(v30, v28, v29);
      value = refcon.value;
      flags = refcon.flags;
      timescale = refcon.timescale;
      epoch = refcon.epoch;
      CMTimeMake(&rhs, 5, 10000);
      lhs.value = value;
      *&lhs.timescale = __PAIR64__(flags, timescale);
      lhs.epoch = epoch;
      CMTimeSubtract(&refcon, &lhs, &rhs);
      timescale = refcon.timescale;
      value = refcon.value;
      rhs = refcon;
      OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
      v41 = OUTLINED_FUNCTION_281(v33, v34, v35, v36, v37, v38, v39, v40, v45, v47, v49, v50, lhs.value, *&lhs.timescale, lhs.epoch, v52, rhs.value);
      CMTimeMaximum(v43, v41, v42);
      value = refcon.value;
      v19 = refcon.flags;
      timescale = refcon.timescale;
      v17 = refcon.epoch;
    }
  }

  if (v19)
  {
    *v7 = value;
    *(v7 + 8) = timescale;
    *(v7 + 12) = v19;
    *(v7 + 16) = v17;
    if (v5)
    {
      fpfs_EnqueueNotification(*v18, v5, v0, 0);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_602();
}

void fpfs_HandleReachingTimeToPausePlayback()
{
  OUTLINED_FUNCTION_460();
  v107 = v1;
  v108 = v2;
  v4 = v3;
  v106 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v98 = 0;
  v97 = 0uLL;
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, &v97);
  v15 = *MEMORY[0x1E6960C70];
  *v78 = *MEMORY[0x1E6960C70];
  v95 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  if (*(DerivedStorage + 568))
  {
    fpfsi_clearCoordinatedPlaybackSynchronizationTimebase(v4);
    OUTLINED_FUNCTION_290();
    v6 = fpfs_PlayQueueCallForEachItem(v17, v18, v4);
  }

  v19 = (DerivedStorage + 1424);
  OUTLINED_FUNCTION_754(v6, v7, v8, v9, v10, v11, v12, v13, v15, v70, v74, v78[0], v78[1], v84, v88, v95, *(&v95 + 1), v16, v14, v97);
  time2 = *(DerivedStorage + 1424);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    *v96 = *v19;
    *&v96[16] = *(DerivedStorage + 1440);
  }

  time2 = *v96;
  FPSTimelineConverterL2TimeToL3(&time2, &time1);
  *&time2.value = *v79;
  time2.epoch = v16;
  v20 = OUTLINED_FUNCTION_235();
  fpfs_setRateInternal(v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_234();
  fpfs_GetNextTimeToPlay(v25, v26, v27);
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_427();
    v28 = OUTLINED_FUNCTION_201();
    v36 = OUTLINED_FUNCTION_371(v28, v29, v30, v31, v32, v33, v34, v35, v71, v75, v79[0], v79[1], v85, *v89, v89[2], v89[3], v89[4]);
    OUTLINED_FUNCTION_465(v36, v37, v38, v39, v40, v41, v42, v43, v72, v76, v80, v82, v86, v90, v92, v93, v94);
    OUTLINED_FUNCTION_40();
    if (!v0)
    {
      goto LABEL_14;
    }

    v44 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v45 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v4)
      {
LABEL_9:
        v46 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_13:
        *&time1.value = *v19;
        time1.epoch = *(DerivedStorage + 1440);
        v47.n128_f64[0] = CMTimeGetSeconds(&time1);
        OUTLINED_FUNCTION_754(v48, v49, v50, v51, v52, v53, v54, v55, v47, v73, v77, v81, v83, v87, v91, *v96, *&v96[8], *&v96[16], v56, v97);
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316674;
        *(&time2.value + 4) = "fpfs_HandleReachingTimeToPausePlayback";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v44;
        HIWORD(time2.epoch) = 2082;
        v100 = v45;
        v101 = 2048;
        v102 = v4;
        v103 = 2082;
        v104 = v46;
        OUTLINED_FUNCTION_375();
        OUTLINED_FUNCTION_62();
        v57 = OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_456(v57, v58, v59, v60, v61, v62, v63, v64);
LABEL_14:
        OUTLINED_FUNCTION_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_15;
      }
    }

    else
    {
      v45 = "";
      if (v4)
      {
        goto LABEL_9;
      }
    }

    v46 = "";
    goto LABEL_13;
  }

LABEL_15:
  if (!*(DerivedStorage + 3336))
  {
    *(DerivedStorage + 3336) = FigGetUpTimeNanoseconds();
    if (*(DerivedStorage + 912))
    {
      memset(&time1, 0, sizeof(time1));
      fpfsi_GetDuration(v4, &time1.value);
      if (!v65)
      {
        OUTLINED_FUNCTION_529();
        if (v66)
        {
          FigBytePumpGetFigBaseObject();
          v68 = v67;
          v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v69)
          {
            v69(v68, 0x1F0B1F458, *MEMORY[0x1E695E4C0]);
          }
        }
      }
    }
  }

  fpfsi_EnqueueReachedTimeToPausePlaybackNotification(v4, &v97);
  OUTLINED_FUNCTION_459();
}

uint64_t fpfs_applySoftwareVolumeToTrack()
{
  OUTLINED_FUNCTION_629();
  v27 = v0;
  v28 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v24 = v4;
  valuePtr = v8;
  CMBaseObjectGetDerivedStorage();
  if (!*(v7 + 112))
  {
    return 0;
  }

  if (v5 < 0.0)
  {
    v24 = 0.0;
  }

  if (v3 == 5)
  {
    v11 = kFigAudioRenderPipelineProperty_SoftwareVolume5;
    goto LABEL_10;
  }

  if (v3 == 3)
  {
    v11 = kFigAudioRenderPipelineProperty_SoftwareVolume3;
LABEL_10:
    v10 = *v11;
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
  if (v3 == 2)
  {
    v10 = @"SoftwareVolume2";
  }

  else
  {
    v10 = @"SoftwareVolume1";
  }

LABEL_12:
  if (*(v7 + 206) && CFEqual(v10, @"SoftwareVolume1"))
  {
    valuePtr = 0;
  }

  v12 = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  if (!v13)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, LODWORD(v24), v26);
    return v21;
  }

  v14 = v13;
  if (v9)
  {
    v16 = 0;
LABEL_24:
    v20 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    if (v20 == -4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v20;
    }

    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = CFNumberCreate(v12, kCFNumberFloatType, &v24);
  if (!v15)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, LODWORD(v24), v26);
    v18 = v22;
    goto LABEL_21;
  }

  v16 = v15;
  v17 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  if (v17 == -4)
  {
    goto LABEL_24;
  }

LABEL_20:
  CFRelease(v16);
LABEL_21:
  CFRelease(v14);
  return v18;
}

void fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterClampTime(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1460))
  {
    v3 = (DerivedStorage + 1448);
    OUTLINED_FUNCTION_340();
    v5 = *(v4 + 1024);
    if (v5)
    {
      while (1)
      {
        if (*(v5 + 48) == v1)
        {
          if (*(v5 + 112))
          {
            if (OUTLINED_FUNCTION_268(v3[2], v7, v8, v9, v10, *v3, v3[1], v11, v12, *(v5 + 208)) <= 0)
            {
              OUTLINED_FUNCTION_718();
              if ((OUTLINED_FUNCTION_268(v3[2], v7, v8, v9, v10, *v3, v3[1], v11, v12, v13) & 0x80000000) == 0)
              {
                break;
              }
            }
          }
        }

        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      OUTLINED_FUNCTION_315();
      v5 = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (!v5)
      {
        return;
      }

      while (1)
      {
        if (*(v5 + 48) == v1)
        {
          if (*(v5 + 112))
          {
            OUTLINED_FUNCTION_718();
            if ((OUTLINED_FUNCTION_268(v9, v7, v8, v9, v10, v7, v8, v11, v12, v13) & 0x80000000) == 0)
            {
              break;
            }
          }
        }

        v5 = *(v5 + 24);
        if (!v5)
        {
          return;
        }
      }
    }

    v6 = *(v5 + 112);
    if (!*(v6 + 26))
    {
      *(v6 + 26) = 1;
      fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterDecoding(v5);
    }
  }
}

void fpfs_AssessItemTransition(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (fpfs_getNext(DerivedStorage, *(DerivedStorage + 80)))
  {
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 24);

    dispatch_async_f(v3, a1, fpfs_DeferredAssessItemTransition);
  }
}

uint64_t fpfsi_findLastPlayingTracksForMediaType(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[128];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0x7FFFFFFFLL;
  do
  {
    if (v3 >= *(v2 + 80))
    {
      v3 = *(v2 + 80);
    }

    v2 = *(v2 + 24);
  }

  while (v2);
  if (v3 == 0x7FFFFFFF)
  {
LABEL_12:
    v4 = DerivedStorage[130];
    if (!v4)
    {
      goto LABEL_21;
    }

    do
    {
      v5 = v4;
      v4 = *(v4 + 24);
    }

    while (v4);
    if (*(v5 + 80) == 0x7FFFFFFFLL)
    {
LABEL_21:
      v6 = DerivedStorage[132];
      if (!v6)
      {
        return 0;
      }

      do
      {
        v7 = v6;
        v6 = *(v6 + 24);
      }

      while (v6);
      if (*(v7 + 80) == 0x7FFFFFFFLL)
      {
        return 0;
      }
    }
  }

  v8 = OUTLINED_FUNCTION_540();
  result = fpfsi_findTracksInListOfMediaType(v8, v9, v10, v11, v12, 1);
  if (!result)
  {
    v14 = OUTLINED_FUNCTION_540();
    result = fpfsi_findTracksInListOfMediaType(v14, v15, v16, v17, v18, 1);
    if (!result)
    {
      v19 = OUTLINED_FUNCTION_540();

      return fpfsi_findTracksInListOfMediaType(v19, v20, v21, v22, v23, 0);
    }
  }

  return result;
}