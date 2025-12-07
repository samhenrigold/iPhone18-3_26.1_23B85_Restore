void itemasync_GetDuration(const void *a1, uint64_t a2)
{
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954516;
    v10 = 4766;
    goto LABEL_5;
  }

  v6 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  *(a2 + 16) = *(v6 + 16);
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954511;
    v10 = 4770;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< Async >>>>", v10, v8);
    return;
  }

  v11 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v11)
  {
    v12 = v11;
    if (*CMBaseObjectGetDerivedStorage())
    {
      itemasync_GetDuration_cold_1(&v16);
      v14 = 0;
    }

    else
    {
      v13 = playerasync_createCommand(v12, 29, a1, &v15);
      v14 = v15;
      if (!v13)
      {
        *(v15 + 32) = a2;
        playerasync_runSynchronousCommand(v12, v14);
      }
    }

    fpa_releaseCommand(v14);
    CFRelease(v12);
  }

  else
  {
    itemasync_GetDuration_cold_2();
  }
}

void itemfig_GetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dictionaryRepresentation = 0;
  if (*DerivedStorage)
  {
    v5 = qword_1EAF16A08;
    v6 = v2;
    v7 = 4294954511;
    v8 = 36771;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< FigFilePlayer >>>>", v8, v6);
    return;
  }

  if (!a2)
  {
    v5 = qword_1EAF16A08;
    v6 = v2;
    v7 = 4294954516;
    v8 = 36774;
    goto LABEL_3;
  }

  v9 = DerivedStorage;
  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v10)
  {
    v11 = CMBaseObjectGetDerivedStorage();
    v12 = MEMORY[0x1E6960C70];
    *(a2 + 16) = *(MEMORY[0x1E6960C70] + 16);
    *a2 = *v12;
    if ((*(v9 + 62) & 0x1D) == 1 && (time1 = *(v9 + 236), v28 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v13 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v13, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (*(v9 + 68) & 0x1D) == 1 && (time1 = *(v9 + 260), *&time2.value = v28, time2.epoch = v13, CMTimeCompare(&time1, &time2) >= 1))
    {
      v14 = MEMORY[0x1E6960C88];
      *a2 = *MEMORY[0x1E6960C88];
      epoch = *(v14 + 16);
    }

    else
    {
      v16 = *(v11 + 78);
      v17 = *MEMORY[0x1E695E480];
      if (v16 || (FigPlaybackItemGetFigBaseObject(), v26 = v25, (v27 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v27(v26, @"EstimatedDuration", v17, &dictionaryRepresentation) || !dictionaryRepresentation)
      {
        v18 = CMBaseObjectGetDerivedStorage();
        time2.value = 0;
        FigAssetGetCMBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v22 = v21(v20, @"Duration", v17, &time2);
          value = time2.value;
          if (!v22)
          {
            CMTimeMakeFromDictionary(&time1, time2.value);
            *(v18 + 1216) = time1;
            value = time2.value;
          }

          if (value)
          {
            CFRelease(value);
          }

          if (!v22)
          {
            v24 = *(v9 + 76);
            *(a2 + 16) = *(v9 + 154);
            *a2 = v24;
          }
        }

        goto LABEL_28;
      }

      CMTimeMakeFromDictionary(&time1, dictionaryRepresentation);
      *a2 = *&time1.value;
      epoch = time1.epoch;
    }

    *(a2 + 16) = epoch;
  }

LABEL_28:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void playerasync_AddToPlayQueue(void *a1, const void *a2, const void *a3)
{
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (a3)
    {
LABEL_3:
      v9 = CMBaseObjectGetDerivedStorage();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (*DerivedStorage)
  {
    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 4294954511;
    v13 = 4073;
LABEL_8:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "<<<< Async >>>>", v13, v11);
    return;
  }

  if (!a2)
  {
    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 4294954516;
    v13 = 4076;
    goto LABEL_8;
  }

  if (*v8)
  {
    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 4294954511;
    v13 = 4079;
    goto LABEL_8;
  }

  if (!v9)
  {
    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v14 == a1)
    {
      v15 = 0;
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  if (*v9)
  {
    emitter = fig_log_get_emitter();
    v11 = v3;
    v12 = 4294954511;
    v13 = 4082;
    goto LABEL_8;
  }

  v14 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v14 != a1)
  {
LABEL_32:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21[1]);
    v18 = 0;
    v15 = 0;
    goto LABEL_27;
  }

  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v15 == a1)
  {
LABEL_22:
    if (playerasync_createCommand(a1, 6, a2, &v19))
    {
      v18 = v19;
    }

    else
    {
      if (a3)
      {
        v16 = CFRetain(a3);
      }

      else
      {
        v16 = 0;
      }

      v17 = v19;
      *(v19 + 4) = v16;
      playerasync_runAsynchronousCommand(a1, v17);
      v18 = 0;
    }

    goto LABEL_27;
  }

  playerasync_AddToPlayQueue_cold_1(v21);
  v18 = 0;
LABEL_27:
  fpa_releaseCommand(v18);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void playercentral_AddToPlayQueue(uint64_t a1, const void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  if (*(DerivedStorage + 8))
  {
    v9 = qword_1EAF16FB8;
    v10 = v3;
    v11 = 4294954511;
    v12 = 3020;
LABEL_6:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< CENTRAL >>>>", v12, v10);
    return;
  }

  v13 = *(DerivedStorage + 16);
  if (!v13)
  {
    v9 = qword_1EAF16FB8;
    v10 = v3;
    v11 = 4294954516;
    v12 = 3026;
    goto LABEL_6;
  }

  if (*(v7 + 16))
  {
    v9 = qword_1EAF16FB8;
    v10 = v3;
    v11 = 4294954511;
    v12 = 3032;
    goto LABEL_6;
  }

  if (v8)
  {
    if (*(v8 + 16))
    {
      v9 = qword_1EAF16FB8;
      v10 = v3;
      v11 = 4294954511;
      v12 = 3038;
      goto LABEL_6;
    }

    v14 = *(v8 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v7 + 8);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v16 && !v16(v13, v15, v14))
  {
    FigSimpleMutexLock();
    CFSetAddValue(*(DerivedStorage + 80), a2);
    FigSimpleMutexUnlock();
  }
}

uint64_t playerfig_AddToPlayQueue(const char *a1, const void *a2, const void *a3)
{
  v4 = v3;
  v123 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    v101 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = v3;
  }

  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v11 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v11 = "";
    }

    strncpy(__dst, v11, 8uLL);
    if (a2)
    {
      v12 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v12 = "";
    }

    strncpy(__dst, v12, 8uLL);
    if (a3)
    {
      v13 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v13 = "";
    }

    strncpy(__dst, v13, 8uLL);
    kdebug_trace();
  }

  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 13239, v4);
    return v14;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 13242, v4);
    return v14;
  }

  v17 = CMBaseObjectGetDerivedStorage();
  if (*v17)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 13247, v4);
    return v14;
  }

  v18 = v17;
  if (*(v17 + 8) != a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 13250, v4);
    return v14;
  }

  v19 = a2;
  if (a3)
  {
    v20 = CMBaseObjectGetDerivedStorage();
    if (*v20)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 13256, v4);
      return v14;
    }

    v21 = v20;
    if (*(v20 + 8) != a1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 13259, v4);
      return v14;
    }
  }

  else
  {
    v21 = 0;
  }

  if (*(v18 + 1280) || *(v18 + 1282) || (*(v18 + 1282) = 1, itemfig_retrieveAssetBasicsIfReady(), !v28))
  {
    FigSimpleMutexLock();
    if (*(v18 + 1) || a3 && !*(v21 + 1))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v89, v90[0]);
      v15 = v22;
      FigSimpleMutexUnlock();
      goto LABEL_37;
    }

    v26 = *(v18 + 1560);
    if (v26)
    {
      CFArrayRemoveAllValues(v26);
    }

    *(v18 + 2217) = 0;
    v27 = v19;
    if (*(DerivedStorage + 853) && dword_1EAF16A10)
    {
      v101 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v27 = v19;
    }

    *(DerivedStorage + 853) = 0;
    Count = CFArrayGetCount(*(DerivedStorage + 528));
    v30 = Count;
    if (a3)
    {
      v137.location = 0;
      v137.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v137, a3);
      if (FirstIndexOfValue == -1)
      {
        v101 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a3 = 0;
        v31 = v30;
        v27 = v19;
      }

      else
      {
        v31 = FirstIndexOfValue + 1;
        if (FirstIndexOfValue + 1 < v30)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v31);
          playerfig_maybeUndoQueueingForItem(a1, ValueAtIndex);
        }
      }
    }

    else
    {
      v31 = Count;
    }

    v35 = *(DerivedStorage + 536);
    v97 = v31;
    if (v35)
    {
      v138.location = 0;
      v138.length = v30;
      v36 = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v138, v35);
      if (v36 == -1)
      {
        v101 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        v93 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v92 = 0;
        *(DerivedStorage + 536) = 0;
        v27 = v19;
        goto LABEL_78;
      }

      if (v31 > v36)
      {
        if (v31 == v36 + 1)
        {
          v92 = CMBaseObjectGetDerivedStorage();
          if (*(v92 + 496))
          {
            if (dword_1EAF16A10)
            {
              v101 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v93 = 0x100000000;
              goto LABEL_78;
            }

            LODWORD(v93) = 0;
          }

          else
          {
            LODWORD(v93) = 1;
          }

          HIDWORD(v93) = 1;
        }

        else
        {
          v92 = 0;
          v93 = 0x100000001;
        }

LABEL_78:
        CFArrayInsertValueAtIndex(*(DerivedStorage + 528), v31, v27);
        *(v18 + 1) = 1;
        itemfig_reportingAgentReportEnqueueTime(v27);
        v40 = *(v18 + 1432);
        if (v40)
        {
          CFRelease(v40);
          *(v18 + 1432) = 0;
        }

        if (*(v18 + 128))
        {
          CMByteStreamGetCMBaseObject();
          FigCRABSGetClassID();
          if (CMBaseObjectIsMemberOfClass())
          {
            CMBaseObject = CMByteStreamGetCMBaseObject();
            CMBaseObjectCopyProperty(CMBaseObject, @"CRABS_InteractivePlaybackAssertion", 0, v18 + 1432);
          }
        }

        *(v18 + 1328) = 0;
        if (v31)
        {
          *(v18 + 1600) = 0;
          *(v18 + 1744) = 0;
          v42 = v27;
        }

        else
        {
          *(v18 + 1600) = CFAbsoluteTimeGetCurrent();
          *(v18 + 1744) = 1;
          v42 = v27;
          itemfig_makePlaybackPrerequisitePropertiesReady(v27, &type, v43, v44, v45, v46, v47, v48, v87, v89, v90[0], v90[1], SBYTE2(v90[1]), HIBYTE(v90[1]), v92, SWORD2(v92), SBYTE6(v92), SHIBYTE(v92), v93, SHIDWORD(v93), *v94, *&v94[4], 0, v98, *cf, *&cf[8], *&cf[12], *&cf[16], values, *v104, *&v104[8], *&v104[16], v105, v106, v107, *__dst, *&__dst[8], v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
          if (type)
          {
            *(v18 + 1328) = 1;
            if (*(DerivedStorage + 60) == 2)
            {
              itemfig_becameBothCurrentAndReadyForInspection(v27, 0, v49, v50, v51, v52, v53, v54, v88, v89, v91[0], v91[1], v92, SBYTE2(v92), BYTE3(v92), SHIDWORD(v92), v93, SHIDWORD(v93), *v95, *&v95[4], v97, v99, *cf, *&cf[8], *&cf[16], values, *v104, *&v104[8], *&v104[16], v105, v106, v107, __dst[0], *&__dst[8], v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, vars0, vars8);
            }

            else if (dword_1EAF16A10)
            {
              v101 = 0;
              v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v59 = v101;
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                v60 = v59;
              }

              else
              {
                v60 = v59 & 0xFFFFFFFE;
              }

              if (v60)
              {
                if (a1)
                {
                  v62 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v62 = "";
                }

                v64 = CMBaseObjectGetDerivedStorage();
                *cf = 136316162;
                *&cf[4] = "playerfig_AddToPlayQueue";
                *&cf[12] = 2048;
                *&cf[14] = a1;
                *&cf[22] = 2082;
                values = v62;
                *v104 = 2048;
                *&v104[2] = v27;
                *&v104[10] = 2082;
                *&v104[12] = v64 + 2096;
                LODWORD(v89) = 52;
                _os_log_send_and_compose_impl(v60, 0, __dst, 128, &dword_1962D5000, v58, 0, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s Defer calling itemfig_becameBothCurrentAndReadyForInspection() for item %p %{public}s until fully active", cf, v89);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v42 = v27;
              v10 = MEMORY[0x1E695FF58];
            }
          }

          else if (dword_1EAF16A10)
          {
            v101 = 0;
            v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v56 = v101;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
            }

            else
            {
              v57 = v56 & 0xFFFFFFFE;
            }

            if (v57)
            {
              if (a1)
              {
                v61 = (CMBaseObjectGetDerivedStorage() + 972);
              }

              else
              {
                v61 = "";
              }

              v63 = CMBaseObjectGetDerivedStorage();
              *cf = 136316162;
              *&cf[4] = "playerfig_AddToPlayQueue";
              *&cf[12] = 2048;
              *&cf[14] = a1;
              *&cf[22] = 2082;
              values = v61;
              *v104 = 2048;
              *&v104[2] = v27;
              *&v104[10] = 2082;
              *&v104[12] = v63 + 2096;
              LODWORD(v89) = 52;
              _os_log_send_and_compose_impl(v57, 0, __dst, 128, &dword_1962D5000, v55, 0, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s item %p %{public}s became current but is not yet ready for inspection", cf, v89);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v10 = MEMORY[0x1E695FF58];
            v42 = v27;
          }

          v31 = v97;
        }

        v65 = fp_copyPlayQueueDescription(a1);
        if (dword_1EAF16A10)
        {
          v66 = v42;
          v101 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v68 = v101;
          v69 = type;
          if (os_log_type_enabled(v67, type))
          {
            v70 = v68;
          }

          else
          {
            v70 = v68 & 0xFFFFFFFE;
          }

          if (v70)
          {
            if (a1)
            {
              v72 = v70;
              v73 = CMBaseObjectGetDerivedStorage();
              v70 = v72;
              v71 = (v73 + 972);
            }

            else
            {
              v71 = "";
            }

            *cf = 136315906;
            *&cf[4] = "playerfig_AddToPlayQueue";
            *&cf[12] = 2048;
            *&cf[14] = a1;
            *&cf[22] = 2082;
            values = v71;
            *v104 = 2114;
            *&v104[2] = v65;
            LODWORD(v89) = 42;
            _os_log_send_and_compose_impl(v70, 0, __dst, 128, &dword_1962D5000, v67, v69, "<<<< FigFilePlayer >>>> %s: [%p] %{public}s play queue now: [%{public}@]", cf, v89);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v42 = v66;
          v31 = v97;
        }

        if (v65)
        {
          CFRelease(v65);
        }

        if ((v93 & 0x100000000) != 0)
        {
          v74 = *(DerivedStorage + 536);
          if (v74)
          {
            if ((v93 & 1) == 0)
            {
              *(v92 + 496) = 0;
              playerfig_prepareNextItemForTransition(a1, v74);
            }
          }

          else
          {
            *(DerivedStorage + 536) = v42;
            *(DerivedStorage + 544) = 0;
            v75 = playerfig_prepareWorkingItem(a1, 0, 0);
            if (v75)
            {
              v76 = v75;
              v101 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v78 = v101;
              v79 = type;
              if (os_log_type_enabled(v77, type))
              {
                v80 = v78;
              }

              else
              {
                v80 = v78 & 0xFFFFFFFE;
              }

              if (v80)
              {
                *cf = 136315394;
                *&cf[4] = "playerfig_AddToPlayQueue";
                *&cf[12] = 1024;
                *&cf[14] = v76;
                _os_log_send_and_compose_impl(v80, 0, __dst, 128, &dword_1962D5000, v77, v79, "<<<< FigFilePlayer >>>> %s: playerfig_prepareWorkingItem returned %d", cf, 18);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v10 = MEMORY[0x1E695FF58];
              v31 = v97;
            }
          }

          playerfig_updateStartHostTimeEstimatesOfItemAtIndexAndFollowingItems(a1, v31);
          FigSimpleMutexUnlock();
        }

        else
        {
          FigSimpleMutexUnlock();
          *__dst = *MEMORY[0x1E6960C70];
          v109 = *(MEMORY[0x1E6960C70] + 16);
          *cf = *__dst;
          *&cf[16] = v109;
          playerfig_stopResetDisturbReprepareAndResumeWithTransaction();
          if (v81)
          {
            v82 = v81;
            v101 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v84 = v101;
            v85 = type;
            if (os_log_type_enabled(v83, type))
            {
              v86 = v84;
            }

            else
            {
              v86 = v84 & 0xFFFFFFFE;
            }

            if (v86)
            {
              *cf = 136315394;
              *&cf[4] = "playerfig_AddToPlayQueue";
              *&cf[12] = 1024;
              *&cf[14] = v82;
              _os_log_send_and_compose_impl(v86, 0, __dst, 128, &dword_1962D5000, v83, v85, "<<<< FigFilePlayer >>>> %s: playerfig_stopResetDisturbReprepareAndResume returned %d", cf, 18);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v31 = v97;
          }
        }

        playerfig_configureDownloadInPlayQueueAndItemsToPrebuffer(a1);
        if (!v31)
        {
          playerfig_AddToPlayQueue_cold_1();
        }

        v15 = 0;
        goto LABEL_37;
      }

      if (!dword_1EAF16A10)
      {
        v92 = 0;
        v93 = 1;
        goto LABEL_78;
      }
    }

    else
    {
      if (v30)
      {
        v92 = 0;
        v93 = 0x100000001;
        goto LABEL_78;
      }

      if (!dword_1EAF16A10)
      {
        v92 = 0;
        v93 = 1;
        goto LABEL_78;
      }
    }

    v101 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    v93 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v92 = 0;
    v10 = MEMORY[0x1E695FF58];
    goto LABEL_78;
  }

  v15 = v28;
LABEL_37:
  if (*v10 == 1)
  {
    if (a1)
    {
      v23 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v23 = "";
    }

    strncpy(__dst, v23, 8uLL);
    v24 = CMBaseObjectGetDerivedStorage();
    strncpy(__dst, (v24 + 2096), 8uLL);
    if (a3)
    {
      v25 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v25 = "";
    }

    strncpy(__dst, v25, 8uLL);
    kdebug_trace();
  }

  return v15;
}

uint64_t itemfig_copyFormatDescription(uint64_t a1, uint64_t *a2)
{
  theArray = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v6 = v5(v4, @"TrackFormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      if (!theArray)
      {
        return 4294954513;
      }

      if (CFArrayGetCount(theArray))
      {
        CFArrayGetValueAtIndex(theArray, 0);
        v7 = 0;
        *a2 = FigFormatDescriptionRetain();
      }

      else
      {
        itemfig_copyFormatDescription_cold_1(&v10);
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 4294954514;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

uint64_t RegisterFigMetadataReaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMetadataValidateHandlerType(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x18)
  {
    return 4294954687;
  }

  else
  {
    return FigAtomStreamReadCurrentAtomData();
  }
}

uint64_t FigiTunesMetadataCopyValue(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v25 = 0;
  cf = 0;
  if (!a1)
  {
    FigiTunesMetadataCopyValue_cold_5(&v27);
LABEL_41:
    v21 = 0;
    v20 = v27;
    goto LABEL_18;
  }

  if (!a3)
  {
    FigiTunesMetadataCopyValue_cold_4(&v27);
    goto LABEL_41;
  }

  if (!cf1)
  {
    FigiTunesMetadataCopyValue_cold_3(&v27);
    goto LABEL_41;
  }

  if (!a6)
  {
    FigiTunesMetadataCopyValue_cold_2(&v27);
    goto LABEL_41;
  }

  if (!CFEqual(cf1, @"comn") && !CFEqual(cf1, @"itsk") && !CFEqual(cf1, @"itlk"))
  {
    FigiTunesMetadataCopyValue_cold_1(&v27);
    goto LABEL_41;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v14 || (v15 = v14(a1, cf1, a3), v15 < 1))
  {
    v21 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  v16 = v15;
  v17 = 0;
  while (1)
  {
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v18)
    {
      v20 = -12782;
      goto LABEL_33;
    }

    v19 = v18(a1, cf1, a3, v17, a5, &cf, &v25);
    if (v19)
    {
      v20 = v19;
      goto LABEL_33;
    }

    if (!a4 || CFGetTypeID(cf) == a4)
    {
      break;
    }

    CFRelease(cf);
    cf = 0;
    CFRelease(v25);
    v25 = 0;
    if (v16 == ++v17)
    {
      v20 = 0;
LABEL_33:
      if (cf)
      {
        CFRelease(cf);
      }

      v21 = 0;
      goto LABEL_18;
    }
  }

  *a6 = cf;
  cf = 0;
  v20 = 0;
  if (a7)
  {
    *a7 = v25;
    v21 = 1;
    goto LABEL_20;
  }

  v21 = 1;
LABEL_18:
  if (v25)
  {
    CFRelease(v25);
  }

LABEL_20:
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (a4)
  {
    v23 = -12608;
  }

  else
  {
    v23 = -12607;
  }

  if (v22)
  {
    return v20;
  }

  else
  {
    return v23;
  }
}

void FigiTunesMetadataGetItemCount(const void *a1, const void *a2, const __CFString *a3)
{
  v28 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_3_55();
  if (a2)
  {
    v8 = v7;
    if (CFEqual(a2, @"comn"))
    {
      if (a3)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFStringGetTypeID())
        {
          valuePtr = CFDictionaryGetValue(v8, a3);
          if (!valuePtr)
          {
            goto LABEL_46;
          }

          goto LABEL_22;
        }
      }

LABEL_47:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_46;
    }

    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v12 = CFGetTypeID(a3);
        if (v12 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v14 = CFGetTypeID(a3);
          if (v14 != CFNumberGetTypeID())
          {
            goto LABEL_47;
          }

          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
LABEL_14:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_5();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_46;
          }
        }

        OUTLINED_FUNCTION_4_57();
        if (v15)
        {
          goto LABEL_14;
        }
      }

LABEL_22:
      v10 = 0;
      v11 = 1;
      goto LABEL_23;
    }

    if (!CFEqual(a2, @"itlk"))
    {
      goto LABEL_47;
    }

    if (a3)
    {
      v13 = CFGetTypeID(a3);
      if (v13 != CFStringGetTypeID())
      {
        goto LABEL_47;
      }
    }

    v11 = 0;
    v10 = 1;
  }

  else
  {
    if (a3)
    {
      goto LABEL_47;
    }

    v10 = 0;
    v11 = 0;
  }

LABEL_23:
  if (DerivedStorage[3] >= 1)
  {
    OUTLINED_FUNCTION_11_28();
    FigiTunesMetadataGetItemListAtomStream(DerivedStorage, v16, 0, v17);
    if (!v18)
    {
      v19 = 0;
      if (a2)
      {
        v20 = v10;
      }

      else
      {
        v11 = 1;
        v20 = 1;
      }

      while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
      {
        if (v25 == 757935405)
        {
          if (v20)
          {
            if (a3)
            {
              theString2 = 0;
              v21 = CFGetAllocator(a1);
              if (FigiTunesMetadataCopyLongKey(v27, v21, &theString2))
              {
                break;
              }

              v22 = theString2;
              if (theString2)
              {
                if (CFStringCompare(a3, theString2, 0) == kCFCompareEqualTo)
                {
                  FigiTunesMetadataGetDataAtomCount(v27, &v28);
                  CFRelease(v22);
                  break;
                }

                CFRelease(v22);
              }
            }

            else
            {
              theString2 = 0;
              FigiTunesMetadataGetDataAtomCount(v27, &theString2);
              v19 = theString2 + v19;
              v28 = v19;
            }
          }
        }

        else if (v11 && (!a3 || valuePtr == v25))
        {
          theString2 = 0;
          FigiTunesMetadataGetDataAtomCount(v27, &theString2);
          v23 = a3 ? 0 : v19;
          v19 = theString2 + v23;
          v28 = theString2 + v23;
          if (a3)
          {
            break;
          }
        }

        if (FigAtomStreamAdvanceToNextAtom())
        {
          OUTLINED_FUNCTION_8_25();
          break;
        }
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_252();
}

CFDictionaryRef FigiTunesMetadataSetUpCommonKeyMapping()
{
  keys[12] = *MEMORY[0x1E69E9840];
  keys[0] = @"title";
  keys[1] = @"description";
  keys[2] = @"publisher";
  keys[3] = @"contributor";
  keys[4] = @"type";
  keys[5] = @"source";
  keys[6] = @"copyrights";
  keys[7] = @"albumName";
  keys[8] = @"author";
  keys[9] = @"artist";
  keys[10] = @"artwork";
  keys[11] = @"software";
  v2[0] = @"title";
  v2[1] = @"description";
  v2[2] = @"publisher";
  v2[3] = @"contributor";
  v2[4] = @"contributor";
  v2[5] = @"contributor";
  v2[6] = @"contributor";
  v2[7] = @"type";
  v2[8] = @"source";
  v2[9] = @"copyrights";
  v2[10] = @"albumName";
  v2[11] = @"author";
  v2[12] = @"artist";
  v2[13] = @"artwork";
  v2[14] = @"software";
  v0 = *MEMORY[0x1E695E480];
  _MergedGlobals_516 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &FigiTunesMetadataSetUpCommonKeyMapping_toShortKeys, 12, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, &FigiTunesMetadataSetUpCommonKeyMapping_fromShortKeys, v2, 15, 0, MEMORY[0x1E695E9E8]);
  giTunesMetadataShortKeyToCommonKeyDict = result;
  return result;
}

CFIndex FigiTunesMetadataShortStringKeyToOSTypeKey(const __CFString *a1, unsigned int *a2)
{
  MEMORY[0x19A8D3660](&FigiTunesMetadataSetUpStringKeyMappingOnce_sCreateKeyArrayOnce, FigiTunesMetadataSetUpStringKeyMapping);
  Value = CFDictionaryGetValue(giTunesMetadataShortStringKeyToOSTypeKeyDict, a1);
  *buffer = Value;
  if (Value)
  {
    goto LABEL_2;
  }

  if (CFStringGetLength(a1) != 4)
  {
    return 0;
  }

  v7.location = 0;
  v7.length = 4;
  result = CFStringGetBytes(a1, v7, 0, 0, 0, buffer, 4, 0);
  if (result)
  {
    Value = bswap32(*buffer);
LABEL_2:
    *a2 = Value;
    return 1;
  }

  return result;
}

CFDictionaryRef FigiTunesMetadataSetUpStringKeyMapping()
{
  keys[50] = *MEMORY[0x1E69E9840];
  keys[0] = @"@alb";
  keys[1] = @"@ART";
  keys[2] = @"@cmt";
  keys[3] = @"covr";
  keys[4] = @"cprt";
  keys[5] = @"@day";
  keys[6] = @"@enc";
  keys[7] = @"gnre";
  keys[8] = @"@gen";
  keys[9] = @"@nam";
  keys[10] = @"@st3";
  keys[11] = @"@too";
  keys[12] = @"@wrt";
  keys[13] = @"aART";
  keys[14] = @"akID";
  keys[15] = @"apID";
  keys[16] = @"atID";
  keys[17] = @"cnID";
  keys[18] = @"cpil";
  keys[19] = @"disk";
  keys[20] = @"geID";
  keys[21] = @"grup";
  keys[22] = @"plID";
  keys[23] = @"rtng";
  keys[24] = @"tmpo";
  keys[25] = @"trkn";
  keys[26] = @"stik";
  keys[27] = @"purd";
  keys[28] = @"@ard";
  keys[29] = @"@arg";
  keys[30] = @"@aut";
  keys[31] = @"@lyr";
  keys[32] = @"@cak";
  keys[33] = @"@con";
  keys[34] = @"@des";
  keys[35] = @"@dir";
  keys[36] = @"@equ";
  keys[37] = @"@lnt";
  keys[38] = @"@mak";
  keys[39] = @"@ope";
  keys[40] = @"@phg";
  keys[41] = @"@prd";
  keys[42] = @"@prf";
  keys[43] = @"@pub";
  keys[44] = @"@sne";
  keys[45] = @"@sol";
  keys[46] = @"@src";
  keys[47] = @"@thx";
  keys[48] = @"@url";
  keys[49] = @"@xpd";
  v0 = *MEMORY[0x1E695E480];
  giTunesMetadataShortStringKeyToOSTypeKeyDict = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &FigiTunesMetadataSetUpStringKeyMapping_iTunesShortOSTypeKeys, 50, MEMORY[0x1E695E9D8], 0);
  result = CFDictionaryCreate(v0, &FigiTunesMetadataSetUpStringKeyMapping_iTunesShortOSTypeKeys, keys, 50, 0, MEMORY[0x1E695E9E8]);
  giTunesMetadataOSTypeKeyToShortStringKeyDict = result;
  return result;
}

double FigiTunesMetadataGetItemListAtomStream(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[3] >= 1 && !FigAtomStreamInitWithByteStream())
  {
    if (a3 < 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else
    {

      FigAtomStreamInitWithParent();
    }
  }

  return result;
}

uint64_t itemfig_antiprepare(const void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  itemfig_unregisterPlayabilityMonitor(a1);
  v4 = *(DerivedStorage + 360);
  if (v4)
  {
    CFSetRemoveAllValues(v4);
    CFRelease(*(DerivedStorage + 360));
    *(DerivedStorage + 360) = 0;
  }

  v5 = 0;
  v6 = DerivedStorage + 368;
  do
  {
    v7 = *(v6 + v5);
    if (v7)
    {
      CFRelease(v7);
      *(v6 + v5) = 0;
    }

    v5 += 8;
  }

  while (v5 != 112);
  v8 = *(DerivedStorage + 1912);
  if (v8)
  {
    FigSyncMomentSourceDestroy(v8);
    *(DerivedStorage + 1912) = 0;
  }

  v9 = *(DerivedStorage + 1904);
  if (v9)
  {
    FigOutOfBandTrackControllerInvalidate(v9);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v10 = *(DerivedStorage + 1904);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 1904) = 0;
    }
  }

  if (*(DerivedStorage + 1745))
  {
    itemfig_accumulateFrameDropCountFromAllVideoPipelines(a1);
  }

  itemfig_storeItemPerformanceDataIfGathering(a1);
  FigSimpleMutexLock();
  v11 = *(DerivedStorage + 648);
  FigSimpleMutexUnlock();
  if (v11)
  {
    Count = CFArrayGetCount(*(DerivedStorage + 648));
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 648), i);
        v16 = ValueAtIndex;
        v17 = ValueAtIndex[2];
        if (v17)
        {
          v18 = *(ValueAtIndex + 1);
          v19 = v18 == 1986618469 || v18 == 1635088502;
          if (!v19 || (FigStopForwardingMediaServicesProcessDeathNotification(), (v17 = v16[2]) != 0))
          {
            CFRelease(v17);
            v16[2] = 0;
          }
        }

        v20 = v16[31];
        if (v20)
        {
          CFRelease(v20);
          v16[31] = 0;
        }

        v21 = v16[33];
        if (v21)
        {
          CFRelease(v21);
          v16[33] = 0;
        }

        v22 = v16[21];
        if (v22)
        {
          v23 = CFArrayGetCount(v22);
          if (v23 >= 1)
          {
            v24 = v23;
            for (j = 0; j != v24; ++j)
            {
              v26 = CFArrayGetValueAtIndex(v16[21], j);
              v27 = v26[6];
              if (v27)
              {
                CFRelease(v27);
                v26[6] = 0;
              }
            }
          }
        }
      }
    }
  }

  v28 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v29 = *(v28 + 896);
  if (v29)
  {
    FigLayerSynchronizerSetConfigurationWithDeferredTransaction(v29, 0, 0);
  }

  FigSimpleMutexUnlock();
  v30 = *(v28 + 352);
  if (v30)
  {
    v31 = *(v28 + 352);
    if (!*(v28 + 480))
    {
      FigPlaybackBossSetRate(*(v28 + 352), 0, 0.0);
      v31 = *(v28 + 352);
    }

    FigPlaybackBossGetTime(v31, &time);
    *(v28 + 24) = time;
    CMNotificationCenterGetDefaultLocalCenter();
    FigPlaybackBossGetTimebase(*(v28 + 352));
    FigNotificationCenterRemoveWeakListener();
    itemfig_removeBossListeners(a1);
    FigPlaybackBossInvalidate(*(v28 + 352));
    CFRelease(*(v28 + 352));
    *(v28 + 352) = 0;
    *(v28 + 480) = 0;
    v32 = *(v28 + 328);
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseSetSourceClock(v32, HostTimeClock);
    CMTimebaseSetRate(*(v28 + 328), 0.0);
    v34 = *(v28 + 328);
    time = *(v28 + 24);
    CMTimebaseSetTime(v34, &time);
  }

  v35 = *(v28 + 880);
  if (v35)
  {
    FigSyncMomentSourceDestroy(v35);
    *(v28 + 880) = 0;
  }

  FigSimpleMutexLock();
  v36 = *(v28 + 896);
  if (v36)
  {
    CFRelease(v36);
    *(v28 + 896) = 0;
  }

  FigSimpleMutexUnlock();
  if (v30)
  {
    itemfig_cancelPreroll(a1);
  }

  if (*(DerivedStorage + 1200))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  if (*(DerivedStorage + 915))
  {
    v37 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v37)
    {
      v38 = v37;
      CMBaseObjectGetDerivedStorage();
      CMNotificationCenterGetDefaultLocalCenter();
      FigDispatchAsyncPostNotification();
      CFRelease(v38);
    }

    *(DerivedStorage + 915) = 0;
  }

  *(DerivedStorage + 916) = 0;
  v39 = *(DerivedStorage + 1064);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 1064) = 0;
  }

  v40 = *(DerivedStorage + 488);
  if (v40)
  {
    CFRelease(v40);
    *(DerivedStorage + 488) = 0;
  }

  return itemfig_updateStartHostTimeEstimate(a1, 0);
}

void FigAudioQueueRenderPipelineCreate(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    cf[0] = 0;
    FigRenderPipelineGetClassID();
    if (!CMDerivedObjectCreate())
    {
      v7 = cf[0];
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 164) = 0;
      v9 = (DerivedStorage + 164);
      if (FigCFDictionaryGetValueIfPresent())
      {
        CFStringGetCString(0, v9, 16, 0x600u);
      }

      v10 = FigReentrantMutexCreate();
      *(DerivedStorage + 8) = v10;
      if (v10)
      {
        v11 = FigSimpleMutexCreate();
        *(DerivedStorage + 48) = v11;
        if (v11)
        {
          snprintf(__str, 0x80uLL, "com.apple.coremedia.faqrp.notification.%s", v9);
          v12 = dispatch_queue_create(__str, 0);
          *(DerivedStorage + 16) = v12;
          if (v12)
          {
            LOBYTE(cf[0]) = 0;
            FigCFDictionaryGetBooleanIfPresent();
            LOBYTE(cf[0]) = 0;
            FigCFDictionaryGetBooleanIfPresent();
            snprintf(__str, 0x80uLL, "com.apple.coremedia.faqrp.asyncQueue.%s", v9);
            *(DerivedStorage + 24) = FigDispatchQueueCreateWithPriority();
            LOBYTE(cf[0]) = 0;
            BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
            v14 = cf[0];
            if (!BooleanIfPresent)
            {
              v14 = 0;
            }

            *(DerivedStorage + 67) = v14;
            *(DerivedStorage + 160) = 1065353216;
            *(DerivedStorage + 100) = 256;
            v15 = CMBaseObjectGetDerivedStorage();
            if (!a2)
            {
              FigAudioQueueRenderPipelineCreate_cold_3(cf);
              if (LODWORD(cf[0]))
              {
                return;
              }

              goto LABEL_100;
            }

            v16 = v15;
            CMBaseObjectGetDerivedStorage();
            Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            cf[0] = 0;
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigCFDictionarySetValueFromKeyInDict();
            FigDispatchQueueHolderCreateWithDispatchQueue();
            FigCFDictionarySetValue();
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            Value = CFDictionaryGetValue(a2, @"FormatDescription");
            if (!Value)
            {
              FigAudioQueueRenderPipelineCreate_cold_2(cf);
              updated = cf[0];
              goto LABEL_90;
            }

            v19 = Value;
            LOBYTE(cf[0]) = 0;
            v20 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v21 = v20 == 0;
            }

            else
            {
              v21 = 1;
            }

            if (v21)
            {
              v22 = 0;
            }

            else
            {
              v22 = 32;
            }

            LOBYTE(cf[0]) = 0;
            v23 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v24 = v23 == 0;
            }

            else
            {
              v24 = 1;
            }

            if (!v24)
            {
              v22 |= 0x10u;
            }

            LOBYTE(cf[0]) = 0;
            v25 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v26 = v25 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (!v26)
            {
              v22 |= 2u;
            }

            LOBYTE(cf[0]) = 0;
            v27 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v28 = v27 == 0;
            }

            else
            {
              v28 = 1;
            }

            if (!v28)
            {
              v22 |= 0x8000u;
            }

            LOBYTE(cf[0]) = 0;
            v29 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v30 = v29 == 0;
            }

            else
            {
              v30 = 1;
            }

            if (!v30)
            {
              v22 |= 4u;
            }

            LOBYTE(cf[0]) = 0;
            v31 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v32 = v31 == 0;
            }

            else
            {
              v32 = 1;
            }

            if (!v32)
            {
              v22 |= 0x40u;
            }

            LOBYTE(cf[0]) = 0;
            v33 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v34 = v33 == 0;
            }

            else
            {
              v34 = 1;
            }

            if (!v34)
            {
              v22 |= 0x80u;
            }

            LOBYTE(cf[0]) = 0;
            v35 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v36 = 1;
            }

            else
            {
              v36 = v35 == 0;
            }

            if (v36)
            {
              v22 |= 0x200u;
            }

            LOBYTE(cf[0]) = 0;
            v37 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v38 = v37 == 0;
            }

            else
            {
              v38 = 1;
            }

            if (!v38)
            {
              v22 |= 0x100u;
            }

            LOBYTE(cf[0]) = 0;
            v39 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v40 = v39 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (!v40)
            {
              v22 |= 0x800u;
            }

            LOBYTE(cf[0]) = 0;
            v41 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v42 = v41 == 0;
            }

            else
            {
              v42 = 1;
            }

            if (!v42)
            {
              v22 |= 0x402u;
            }

            LOBYTE(cf[0]) = 0;
            v43 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v44 = v43 == 0;
            }

            else
            {
              v44 = 1;
            }

            if (!v44)
            {
              v22 |= 0x2000u;
            }

            LOBYTE(cf[0]) = 0;
            v45 = FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(cf[0]))
            {
              v46 = v45 == 0;
            }

            else
            {
              v46 = 1;
            }

            v47 = v22 | 0x4000;
            if (v46)
            {
              v47 = v22;
            }

            *(v16 + 96) = v47;
            *(v16 + 66) = v47 & 2;
            v48 = *MEMORY[0x1E695E480];
            CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
            updated = CMBufferQueueCreate(v48, 0, CallbacksForUnsortedSampleBuffers, (v16 + 32));
            if (!updated)
            {
              v51 = CMBaseObjectGetDerivedStorage();
              v57 = 0;
              v52 = CFGetAllocator(v7);
              v53 = FigAudioQueueCreateWithOptions(v52, v19, *(v51 + 32), *(v51 + 96), Mutable, &v57);
              if (v53)
              {
                updated = v53;
                FigAudioQueueRenderPipelineCreate_cold_1();
              }

              else
              {
                CMNotificationCenterGetDefaultLocalCenter();
                v54 = FigNotificationCenterAddWeakListeners();
                if (!v54)
                {
                  if (dword_1EAF16ED8)
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  *(v16 + 40) = v57;
                  updated = faqrp_updateTimePitchBypass(v7);
                  goto LABEL_90;
                }

                updated = v54;
              }

              if (v57)
              {
                CFRelease(v57);
              }
            }

LABEL_90:
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (updated)
            {
              return;
            }

LABEL_100:
            *a3 = v7;
          }
        }
      }
    }
  }

  else
  {
    v56 = qword_1EAF16ED0;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, 4294954444, "<<<< FAQRP >>>>", 3324, v3);
  }
}

uint64_t RegisterFigRenderPipelineType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAudioQueueCreate(uint64_t a1, const opaqueCMFormatDescription *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = a7;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v14 = FigAudioQueueCreateWithOptions(v12, a2, a4, v9, Mutable, a8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t figAudioQueueRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2292, v3);
LABEL_3:
    v9 = v8;
    goto LABEL_4;
  }

  if (CFEqual(@"Timebase", a2))
  {
    if (a3)
    {
      TypeID = CMTimebaseGetTypeID();
      if (TypeID != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2302, v3);
        goto LABEL_3;
      }
    }

    faqrp_setTimebase(a1, a3);
LABEL_9:
    v9 = 0;
    goto LABEL_4;
  }

  if (CFEqual(@"SoftwareVolume1", a2))
  {
    if (!a3 || (v12 = CFNumberGetTypeID(), v12 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2313, v3);
      goto LABEL_3;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v13 = valuePtr;
    *(DerivedStorage + 104) = valuePtr;
    if (*(DerivedStorage + 103))
    {
      goto LABEL_9;
    }

    v14 = *(DerivedStorage + 40);
    v15 = 1;
LABEL_46:
    v8 = FigAudioQueueSetParameter(v14, v15, v13);
    goto LABEL_3;
  }

  if (CFEqual(@"SoftwareVolume1RampDuration", a2))
  {
    if (!a3 || (v16 = CFNumberGetTypeID(), v16 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2322, v3);
      goto LABEL_3;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v14 = *(DerivedStorage + 40);
    v13 = valuePtr;
    v15 = 4;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume2", a2))
  {
    if (!a3 || (v17 = CFNumberGetTypeID(), v17 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2331, v3);
      goto LABEL_3;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v14 = *(DerivedStorage + 40);
    v13 = valuePtr;
    v15 = 5;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume3", a2))
  {
    if (!a3 || (v18 = CFNumberGetTypeID(), v18 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2340, v3);
      goto LABEL_3;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v14 = *(DerivedStorage + 40);
    v13 = valuePtr;
    v15 = 9;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume5", a2))
  {
    if (!a3 || (v19 = CFNumberGetTypeID(), v19 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2350, v3);
      goto LABEL_3;
    }

    valuePtr = 1.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v14 = *(DerivedStorage + 40);
    v13 = valuePtr;
    v15 = 14;
    goto LABEL_46;
  }

  if (CFEqual(@"SoftwareVolume2RampDuration", a2))
  {
    if (!a3 || (v20 = CFNumberGetTypeID(), v20 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2359, v3);
      goto LABEL_3;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v14 = *(DerivedStorage + 40);
    v13 = valuePtr;
    v15 = 6;
    goto LABEL_46;
  }

  if (CFEqual(@"Pan", a2))
  {
    if (!a3 || (v21 = CFNumberGetTypeID(), v21 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2368, v3);
      goto LABEL_3;
    }

    valuePtr = 0.0;
    CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
    v14 = *(DerivedStorage + 40);
    v13 = valuePtr;
    v15 = 13;
    goto LABEL_46;
  }

  if (CFEqual(@"EQPreset", a2))
  {
    if (!a3 || (v22 = CFNumberGetTypeID(), v22 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2377, v3);
      goto LABEL_3;
    }

    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_EQPreset;
    goto LABEL_52;
  }

  if (CFEqual(@"Muted", a2))
  {
    if (!a3 || (v25 = CFBooleanGetTypeID(), v25 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2384, v3);
      goto LABEL_3;
    }

    Value = CFBooleanGetValue(a3);
    faqrp_setMuted(a1, Value);
    goto LABEL_9;
  }

  if (CFEqual(@"Suspended", a2))
  {
    if (!a3 || (v27 = CFBooleanGetTypeID(), v27 != CFGetTypeID(a3)))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2391, v3);
      goto LABEL_3;
    }

    v28 = CFBooleanGetValue(a3);
    faqrp_setSuspended(a1, v28);
    goto LABEL_9;
  }

  if (CFEqual(@"ClientName", a2))
  {
    v29 = *(DerivedStorage + 56);
    *(DerivedStorage + 56) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_ClientName;
    goto LABEL_52;
  }

  if (CFEqual(@"OfflineMixer", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_OfflineMixer;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioDeviceUID", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_DeviceUID;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioQueueClockDevice", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_ClockDevice;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioDeviceChannelMap", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_DeviceChannelMap;
    goto LABEL_52;
  }

  if (CFEqual(@"STSLabel", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_STSLabel;
    goto LABEL_52;
  }

  if (CFEqual(@"MATOriginalSourceFormat", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_MATOriginalSourceFormat;
    goto LABEL_52;
  }

  if (CFEqual(@"IgnoreAudioDeviceLatencyInStartupSync", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_IgnoreAudioDeviceLatencyInStartupSync;
    goto LABEL_52;
  }

  if (CFEqual(@"IsTimebaseStarter", a2))
  {
    if (a3)
    {
      v30 = CFBooleanGetTypeID();
      if (v30 == CFGetTypeID(a3))
      {
        v9 = 0;
        *(DerivedStorage + 65) = *MEMORY[0x1E695E4D0] == a3;
        goto LABEL_4;
      }
    }

    goto LABEL_9;
  }

  if (CFEqual(@"AudioProcessingUnits", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_AudioProcessingUnits;
    goto LABEL_52;
  }

  if (CFEqual(@"AudioCurves", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_AudioCurves;
    goto LABEL_52;
  }

  if (CFEqual(@"SecondaryAudioCurves", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_SecondaryAudioCurves;
    goto LABEL_52;
  }

  if (CFEqual(@"AllowedToUseHardware", a2))
  {
    v23 = *(DerivedStorage + 40);
    v24 = kFigAudioQueueProperty_AllowedToUseHardware;
    goto LABEL_52;
  }

  if (!CFEqual(@"HandleFormatDescriptionChanges", a2))
  {
    if (CFEqual(@"TimePitchAlgorithm", a2))
    {
      v23 = *(DerivedStorage + 40);
      v24 = kFigAudioQueueProperty_TimePitchAlgorithm;
    }

    else if (CFEqual(@"TrackID", a2))
    {
      v23 = *(DerivedStorage + 40);
      v24 = kFigAudioQueueProperty_TrackID;
    }

    else if (CFEqual(@"AudioProcessingTap", a2))
    {
      v23 = *(DerivedStorage + 40);
      v24 = kFigAudioQueueProperty_AudioProcessingTap;
    }

    else if (CFEqual(@"AudioSubmixID", a2))
    {
      v23 = *(DerivedStorage + 40);
      v24 = kFigAudioQueueProperty_SubmixID;
    }

    else
    {
      if (CFEqual(@"PipelineRate", a2))
      {
        if (!a3 || (v32 = CFNumberGetTypeID(), v32 != CFGetTypeID(a3)))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2474, v3);
          goto LABEL_3;
        }

        CFNumberGetValue(a3, kCFNumberFloat32Type, (DerivedStorage + 160));
        goto LABEL_9;
      }

      if (CFEqual(@"FAQRate2", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_Rate2;
      }

      else if (CFEqual(@"LoudnessInfo", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_LoudnessInfo;
      }

      else if (CFEqual(@"CinematicAudioParameters", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_CinematicAudioParameters;
      }

      else if (CFEqual(@"AudioDynamicRangeCompression", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_AudioDynamicRangeCompression;
      }

      else if (CFEqual(@"AdjustTargetLevel", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_AdjustTargetLevel;
      }

      else if (CFEqual(@"AdjustCompressionProfile", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_AdjustCompressionProfile;
      }

      else if (CFEqual(@"ExpectScaledEdits", a2))
      {
        if (!a3)
        {
          goto LABEL_9;
        }

        v33 = CFBooleanGetTypeID();
        if (v33 != CFGetTypeID(a3))
        {
          goto LABEL_9;
        }

        *(DerivedStorage + 100) = CFBooleanGetValue(a3);
        faqrp_updateTimePitchBypass(a1);
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_ExpectScaledEdits;
      }

      else if (CFEqual(@"ShouldCompensateForNeroScreenLatency", a2))
      {
        v23 = *(DerivedStorage + 40);
        v24 = kFigAudioQueueProperty_ShouldCompensateForNeroScreenLatency;
      }

      else
      {
        if (CFEqual(@"SweepFilterSweepValue", a2))
        {
          valuePtr = 0.0;
          CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
          v14 = *(DerivedStorage + 40);
          v13 = valuePtr;
          v15 = 22;
          goto LABEL_46;
        }

        if (CFEqual(@"SweepFilterConfiguration", a2))
        {
          v23 = *(DerivedStorage + 40);
          v24 = kFigAudioQueueProperty_SweepFilterConfiguration;
        }

        else if (CFEqual(@"EnableSweepFilter", a2))
        {
          v23 = *(DerivedStorage + 40);
          v24 = kFigAudioQueueProperty_EnableSweepFilter;
        }

        else if (CFEqual(@"CodecProgramTargetLevel", a2))
        {
          v23 = *(DerivedStorage + 40);
          v24 = kFigAudioQueueProperty_CodecProgramTargetLevel;
        }

        else
        {
          if (CFEqual(@"OfflineAudioQueueRate", a2))
          {
            if (!*(DerivedStorage + 66))
            {
              v9 = 4294954444;
              goto LABEL_4;
            }

            valuePtr = 0.0;
            if (!a3 || (v34 = CFGetTypeID(a3), v34 != CFNumberGetTypeID()))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2553, v3);
              goto LABEL_3;
            }

            CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
            v35 = valuePtr == 1.0 || valuePtr == 0.0;
            *(DerivedStorage + 101) = v35;
            if (v35 && !*(DerivedStorage + 100))
            {
              v36 = MEMORY[0x1E695E4D0];
            }

            else
            {
              v36 = MEMORY[0x1E695E4C0];
            }

            v37 = *v36;
            if (*v36 == *MEMORY[0x1E695E4D0])
            {
              v38 = *MEMORY[0x1E695E4C0];
            }

            else
            {
              v38 = *MEMORY[0x1E695E4D0];
            }

            FigAudioQueueSetProperty(*(DerivedStorage + 40), @"EnableTimePitch", v38);
            FigAudioQueueSetProperty(*(DerivedStorage + 40), @"TimePitchBypass", v37);
            FigAudioQueueSetParameter(*(DerivedStorage + 40), 2, valuePtr);
            goto LABEL_9;
          }

          if (CFEqual(@"DisconnectOfflineMixerWhileResetting", a2))
          {
            v23 = *(DerivedStorage + 40);
            v24 = kFigAudioQueueProperty_DisconnectOfflineMixerWhileResetting;
          }

          else
          {
            if (CFEqual(@"OfflineRenderPriority", a2))
            {
              if (a3 && (v39 = CFStringGetTypeID(), v39 == CFGetTypeID(a3)))
              {
                if (CFEqual(a3, @"BufferedAirPlayUrgent") || CFEqual(a3, @"BufferedAirPlayDefault") || CFEqual(a3, @"BufferedAirPlayRelaxed"))
                {
                  SInt32 = FigCFNumberCreateSInt32();
                  if (SInt32)
                  {
                    v41 = SInt32;
                    v9 = FigAudioQueueSetProperty(*(DerivedStorage + 40), @"RenderThreadPriority", SInt32);
                    CFRelease(v41);
                    goto LABEL_4;
                  }
                }

                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2579, v3);
              }

              else
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2584, v3);
              }

              goto LABEL_3;
            }

            if (CFEqual(@"MXSession", a2))
            {
              v23 = *(DerivedStorage + 40);
              v24 = kFigAudioQueueProperty_MXSession;
            }

            else if (CFEqual(@"BestAvailableContentType", a2))
            {
              v23 = *(DerivedStorage + 40);
              v24 = kFigAudioQueueProperty_BestAvailableContentType;
            }

            else
            {
              if (!CFEqual(@"SceneCompositionPreset", a2))
              {
                v9 = 4294954446;
                goto LABEL_4;
              }

              v23 = *(DerivedStorage + 40);
              v24 = kFigAudioQueueProperty_SceneCompositionPreset;
            }
          }
        }
      }
    }

LABEL_52:
    v8 = FigAudioQueueSetProperty(v23, *v24, a3);
    goto LABEL_3;
  }

  if (!a3 || (v31 = CFBooleanGetTypeID(), v31 != CFGetTypeID(a3)))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16ED0, 4294954444, "<<<< FAQRP >>>>", 2448, v3);
    goto LABEL_3;
  }

  v9 = 0;
  *(DerivedStorage + 92) = *MEMORY[0x1E695E4D0] == a3;
LABEL_4:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t FigAudioQueueSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3)
{
  if (!a1)
  {
    FigAudioQueueSetProperty_cold_5(&v43);
    return v43;
  }

  FigSimpleMutexLock();
  v7 = (a1 + 16);
  if (*(a1 + 16))
  {
    FigAudioQueueSetProperty_cold_1(&v43);
    goto LABEL_75;
  }

  if (CFEqual(a2, @"TimebaseRate"))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        CFNumberGetValue(a3, kCFNumberFloat32Type, (a1 + 416));
        goto LABEL_9;
      }
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13524, v3);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"AudioProcessingUnits"))
  {
    if (a3 && (v14 = CFGetTypeID(a3), v14 != CFArrayGetTypeID()))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13534, v3);
    }

    else
    {
      if (*v7)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
      }

      v16 = *(a1 + 688);
      *(a1 + 688) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (!ValueAtIndex)
      {
        goto LABEL_9;
      }

      v9 = subaq_buildAudioProcssingUnits(a1, ValueAtIndex);
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"AudioCurves"))
  {
    if (a3)
    {
      v17 = CFDictionaryGetTypeID();
      if (v17 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13544, v3);
        goto LABEL_8;
      }
    }

    v21 = a1;
    v22 = 0;
LABEL_63:
    v9 = faq_setAudioCurves(v21, v22);
    goto LABEL_8;
  }

  if (CFEqual(a2, @"SecondaryAudioCurves"))
  {
    if (a3)
    {
      v18 = CFDictionaryGetTypeID();
      if (v18 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13553, v3);
        goto LABEL_8;
      }
    }

    v21 = a1;
    v22 = 1;
    goto LABEL_63;
  }

  if (CFEqual(a2, @"ExpectScaledEdits"))
  {
    if (a3)
    {
      v19 = CFBooleanGetTypeID();
      if (v19 == CFGetTypeID(a3))
      {
        Value = CFBooleanGetValue(a3);
        if (Value != *(a1 + 680))
        {
          *(a1 + 680) = Value;
          goto LABEL_42;
        }
      }
    }

LABEL_9:
    Mutable = *(a1 + 240);
    if (Mutable || (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(a1 + 240) = Mutable) != 0))
    {
      if (a3)
      {
        v12 = a3;
      }

      else
      {
        v12 = *MEMORY[0x1E695E738];
      }

      CFDictionarySetValue(Mutable, a2, v12);
      v10 = 0;
    }

    else
    {
      v10 = 4294954355;
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"OfflineMixer"))
  {
    if ((*(a1 + 48) & 2) != 0)
    {
      if (a3)
      {
        v23 = FigAudioQueueOfflineMixerGetTypeID();
        if (v23 != CFGetTypeID(a3))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13598, v3);
          goto LABEL_8;
        }
      }

      if (*v7)
      {
        v26 = (a1 + 720);
        if (!*(a1 + 720))
        {
          if (!a3)
          {
            goto LABEL_9;
          }

          *v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          goto LABEL_127;
        }

        v25 = 0;
      }

      else
      {
        Count = CFArrayGetCount(*(a1 + 176));
        v25 = Count;
        v26 = (a1 + 720);
        if (!*(a1 + 720))
        {
          goto LABEL_53;
        }

        if (Count >= 1)
        {
          FigAudioQueueSetProperty_cold_2(a1 + 16, (a1 + 176), a1, Count);
        }
      }

      faq_removeOfflineMixer(a1);
LABEL_53:
      if (!a3)
      {
        goto LABEL_9;
      }

      *v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (v25 >= 1)
      {
        v27 = 0;
        do
        {
          v28 = *v7 ? 0 : CFArrayGetValueAtIndex(*(a1 + 176), v27);
          v29 = faq_connectToOfflineMixer(a1, v28);
          if (v29)
          {
            goto LABEL_97;
          }
        }

        while (v25 != ++v27);
      }

LABEL_127:
      *(a1 + 728) = a3;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      goto LABEL_9;
    }

    FigAudioQueueSetProperty_cold_3(&v43);
LABEL_75:
    v10 = v43;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"AllowedToUseHardware"))
  {
    goto LABEL_9;
  }

  if (CFEqual(a2, @"MXSession"))
  {
    v30 = *(a1 + 256);
    if (v30 != a3)
    {
      *(a1 + 256) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v30)
      {
        CFRelease(v30);
      }

      faq_setPropertyOnAllSubAudioQueues(a1);
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"AudioProcessingTap"))
  {
    if (a3)
    {
      v31 = MTAudioProcessingTapGetTypeID();
      if (v31 != CFGetTypeID(a3))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13650, v3);
        goto LABEL_8;
      }
    }

    if (*(a1 + 744) == a3)
    {
      goto LABEL_9;
    }

    *(a1 + 752) = 0;
    faq_removeAudioProcessingTapListeners(a1);
    v32 = *(a1 + 744);
    *(a1 + 744) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    v29 = faq_addAudioProcessingTapListeners(a1);
    if (!v29)
    {
      faq_setPropertyOnAllSubAudioQueues(a1);
      if (!v29)
      {
        LastSubAudioQueue = faq_GetLastSubAudioQueue(a1);
        v34 = LastSubAudioQueue[80];
        if (v34)
        {
          v35 = LastSubAudioQueue[81];
          if (!v35)
          {
            v35 = LastSubAudioQueue[83];
          }

          MTAudioProcessingTapInitializeTap(v34, v35);
        }

        goto LABEL_9;
      }
    }

LABEL_97:
    v10 = v29;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"SubmixID"))
  {
    if (a3 && (v36 = CFGetTypeID(a3), v36 == CFUUIDGetTypeID()))
    {
      v37 = *(a1 + 760);
      if (v37 == a3)
      {
        goto LABEL_9;
      }

      *(a1 + 760) = a3;
      CFRetain(a3);
      if (!v37)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v37 = *(a1 + 760);
      if (!v37)
      {
        goto LABEL_9;
      }

      *(a1 + 760) = 0;
    }

    CFRelease(v37);
    goto LABEL_9;
  }

  if (CFEqual(a2, @"DiscardSampleBuffers"))
  {
    if (a3)
    {
      v38 = CFBooleanGetTypeID();
      if (v38 == CFGetTypeID(a3))
      {
        v39 = *MEMORY[0x1E695E4D0];
        v40 = *MEMORY[0x1E695E4D0] == a3;
        if (*(a1 + 312) != v40)
        {
          *(a1 + 312) = v40;
          FigAtomicCompareAndSwap32();
          v41 = *(a1 + 344);
          if (v39 == a3)
          {
            dispatch_source_set_timer(v41, 0, 0x1DCD6500uLL, 0x4C4B40uLL);
          }

          else
          {
            dispatch_source_set_timer(v41, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            if (*(a1 + 296))
            {
              FigSemaphoreSignal();
            }
          }
        }
      }
    }

    goto LABEL_9;
  }

  if (CFEqual(a2, @"ShouldCompensateForNeroScreenLatency"))
  {
    *(a1 + 768) = *MEMORY[0x1E695E4D0] == a3;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"DisconnectOfflineMixerWhileResetting"))
  {
    *(a1 + 784) = *MEMORY[0x1E695E4D0] == a3;
    goto LABEL_9;
  }

  if (!CFEqual(a2, @"RenderThreadPriority"))
  {
    if (!CFEqual(a2, @"Rate2Rate"))
    {
      faq_setPropertyOnAllSubAudioQueues(a1);
      goto LABEL_8;
    }

    CFNumberGetValue(a3, kCFNumberFloat32Type, (a1 + 788));
LABEL_42:
    faq_updateRate2Enable(a1);
    goto LABEL_9;
  }

  if ((*(a1 + 49) & 4) == 0)
  {
    FigAudioQueueSetProperty_cold_4(&v43);
    goto LABEL_75;
  }

  if (a3 && (v42 = CFNumberGetTypeID(), v42 == CFGetTypeID(a3)))
  {
    if (!*(a1 + 288))
    {
      goto LABEL_9;
    }

    v9 = FigThreadSetProperty();
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16C28, 4294954356, "<<<< FAQ >>>>", 13727, v3);
  }

LABEL_8:
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v10;
}

void FigPlaybackBossCreate(const __CFAllocator *a1, const void *a2, uint64_t a3, unsigned int *a4, const void **a5, void *a6, const void *a7, const void *a8, OpaqueCMClock *a9, unsigned int a10, const __CFDictionary *a11, uint64_t *a12)
{
  v114 = *MEMORY[0x1E69E9840];
  value = 0;
  BOOLean = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a2)
  {
    if (a7)
    {
      if (a12)
      {
        v15 = a4;
        if (a3 >= 1)
        {
          if (a4)
          {
            v16 = a5;
            if (a5)
            {
              v17 = a3;
              while (*v16)
              {
                ++v16;
                if (!--v17)
                {
                  goto LABEL_10;
                }
              }

              v27 = qword_1EAF16E70;
              v28 = v12;
              v29 = 3323;
            }

            else
            {
              v27 = qword_1EAF16E70;
              v28 = v12;
              v29 = 3320;
            }
          }

          else
          {
            v27 = qword_1EAF16E70;
            v28 = v12;
            v29 = 3318;
          }

          goto LABEL_58;
        }

LABEL_10:
        if (FigPlaybackBossGetTypeID_oneTimeOnly != -1)
        {
          FigPlaybackBossCreate_cold_1();
        }

        Instance = _CFRuntimeCreateInstance();
        if (!Instance)
        {
          FigPlaybackBossCreate_cold_9(&v113);
          v72 = v113.start.value;
          v71 = &unk_1EAF16000;
          if (!LODWORD(v113.start.value))
          {
            return;
          }

          goto LABEL_136;
        }

        v19 = Instance;
        v20 = FigSimpleMutexCreate();
        *(v19 + 24) = v20;
        if (v20)
        {
          v21 = FigSimpleMutexCreate();
          *(v19 + 584) = v21;
          if (v21)
          {
            v22 = FigSimpleMutexCreate();
            *(v19 + 64) = v22;
            if (v22)
            {
              v23 = FigDispatchQueueCreateWithPriority();
              *(v19 + 32) = v23;
              if (v23)
              {
                FigThreadMakeDispatchQueueAbortable();
                *(v19 + 552) = 1000000;
                *(v19 + 850) = 0;
                if (a11 && CFDictionaryGetValueIfPresent(a11, @"Boss_ItemIdentifier", &value))
                {
                  CFStringGetCString(value, (v19 + 850), 10, 0x600u);
                }

                *(v19 + 48) = a7;
                CFRetain(a7);
                v24 = MEMORY[0x1E695E480];
                v25 = MEMORY[0x1E695E4D0];
                if ((a10 & 0x20) != 0)
                {
                  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionarySetValue(Mutable, *MEMORY[0x1E6962E80], *v25);
                }

                else
                {
                  Mutable = 0;
                }

                v30 = FigSampleGeneratorDataSourceCacheCreate(a1, Mutable, (v19 + 56));
                if (!v30)
                {
                  *(v19 + 40) = a2;
                  CFRetain(a2);
                  *(v19 + 129) = (a10 & 8 | (a10 >> 5) & 1) != 0;
                  v100 = (a10 >> 4) & 1;
                  *(v19 + 849) = (a10 & 0x10) != 0;
                  v31 = *v24;
                  FigFormatReaderGetFigBaseObject();
                  v33 = v32;
                  v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v34)
                  {
                    if (!v34(v33, @"AccurateDurationIsKnown", v31, &BOOLean))
                    {
                      *(v19 + 131) = CFBooleanGetValue(BOOLean);
                      if (BOOLean)
                      {
                        CFRelease(BOOLean);
                        BOOLean = 0;
                      }
                    }
                  }

                  FigFormatReaderGetFigBaseObject();
                  v36 = v35;
                  v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v37)
                  {
                    if (!v37(v36, @"SampleCursorTimeAccuracyIsExact", v31, &BOOLean))
                    {
                      *(v19 + 132) = CFBooleanGetValue(BOOLean);
                      if (BOOLean)
                      {
                        CFRelease(BOOLean);
                        BOOLean = 0;
                      }
                    }
                  }

                  FigFormatReaderGetFigBaseObject();
                  v39 = v38;
                  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v40)
                  {
                    v40(v39, @"CouldContainFragments", v31, &BOOLean);
                  }

                  if (BOOLean)
                  {
                    *(v19 + 133) = CFBooleanGetValue(BOOLean);
                    if (BOOLean)
                    {
                      CFRelease(BOOLean);
                      BOOLean = 0;
                    }
                  }

                  if (*(v19 + 133))
                  {
                    CMNotificationCenterGetDefaultLocalCenter();
                    FigNotificationCenterAddWeakListener();
                    *(v19 + 134) = 1;
                  }

                  CMNotificationCenterGetDefaultLocalCenter();
                  FigNotificationCenterAddWeakListener();
                  v41 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
                  *(v19 + 72) = v41;
                  if (!v41)
                  {
                    FigPlaybackBossCreate_cold_4(&v113);
                    v75 = 0;
                    v72 = v113.start.value;
                    v71 = &unk_1EAF16000;
                    goto LABEL_98;
                  }

                  v42 = MEMORY[0x1E6960C70];
                  v43 = *MEMORY[0x1E6960C70];
                  *(v19 + 176) = *MEMORY[0x1E6960C70];
                  v44 = *(v42 + 16);
                  *(v19 + 192) = v44;
                  *(v19 + 296) = v43;
                  *(v19 + 312) = v44;
                  *(v19 + 344) = v43;
                  *(v19 + 360) = v44;
                  *(v19 + 130) = a10 & 1;
                  *(v19 + 400) = 0;
                  *(v19 + 412) = 1;
                  *(v19 + 143) = 0;
                  *(v19 + 144) = 0x40000000;
                  *(v19 + 148) = 1;
                  *(v19 + 152) = 0x300000003;
                  *(v19 + 160) = 0;
                  *(v19 + 138) = 257;
                  *(v19 + 784) = 0;
                  *(v19 + 788) = 0;
                  *(v19 + 476) = 0;
                  *(v19 + 800) = v43;
                  *(v19 + 816) = v44;
                  *(v19 + 824) = v43;
                  *(v19 + 840) = v44;
                  *(v19 + 96) = -1;
                  if (v100)
                  {
                    LODWORD(v113.start.value) = 31;
                    if (a3 && a6)
                    {
                      FigCFDictionaryGetInt32IfPresent();
                    }

                    v45 = FigDispatchQueueCreateWithPriority();
                  }

                  else
                  {
                    v45 = 0;
                  }

                  object = v45;
                  if (a11 && (v46 = CFDictionaryGetValue(a11, @"Boss_LoopTimeRange")) != 0)
                  {
                    CMTimeRangeMakeFromDictionary(&v113, v46);
                    v47 = *&v113.start.epoch;
                    *(v19 + 200) = *&v113.start.value;
                    *(v19 + 216) = v47;
                    v48 = *&v113.duration.timescale;
                  }

                  else
                  {
                    v49 = MEMORY[0x1E6960C98];
                    v50 = *(MEMORY[0x1E6960C98] + 16);
                    *(v19 + 200) = *MEMORY[0x1E6960C98];
                    *(v19 + 216) = v50;
                    v48 = *(v49 + 32);
                  }

                  *(v19 + 232) = v48;
                  FigSimpleMutexLock();
                  if (*(v19 + 848))
                  {
                    v106 = 0;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  v97 = Mutable;
                  if (a3 >= 1)
                  {
                    v52 = *v25;
                    v53 = *MEMORY[0x1E695E4C0];
                    v54 = a3;
                    while (1)
                    {
                      v113.start.value = 0;
                      if (FigPlaybackBossTrackGetTypeID_oneTimeOnly != -1)
                      {
                        FigPlaybackBossCreate_cold_2();
                      }

                      v55 = _CFRuntimeCreateInstance();
                      if (!v55)
                      {
                        v96 = 3451;
                        goto LABEL_146;
                      }

                      v56 = v55;
                      CFArrayAppendValue(*(v19 + 72), v55);
                      CFRelease(v56);
                      ++*(v19 + 80);
                      v57 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                      *(v56 + 2) = v57;
                      if (!v57)
                      {
                        break;
                      }

                      v58 = *v15;
                      *(v56 + 6) = v58;
                      v59 = *(v19 + 40);
                      v60 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                      if (!v60)
                      {
                        v72 = -12782;
                        goto LABEL_96;
                      }

                      v61 = v60(v59, v58, v56 + 32, v56 + 72);
                      if (v61)
                      {
                        goto LABEL_95;
                      }

                      v62 = *a5;
                      *(v56 + 10) = *a5;
                      CFRetain(v62);
                      if (*(v19 + 135))
                      {
                        v63 = v52;
                      }

                      else
                      {
                        v63 = v53;
                      }

                      FigRenderPipelineGetFigBaseObject();
                      v65 = v64;
                      v66 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v66)
                      {
                        v66(v65, @"ThrottleForBackground", v63);
                      }

                      FigRenderPipelineGetFigBaseObject();
                      v68 = v67;
                      v69 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v69)
                      {
                        if (!v69(v68, @"NeedsToFlushWhenRateChanges", a1, &v113) && v113.start.value == v52)
                        {
                          v56[88] = 1;
                          *(v19 + 108) = 1;
                        }
                      }

                      if (v100)
                      {
                        *(v56 + 15) = object;
                        dispatch_retain(object);
                      }

                      v56[89] = 1;
                      ++a5;
                      ++v15;
                      if (!--v54)
                      {
                        goto LABEL_84;
                      }
                    }

                    v96 = 3457;
LABEL_146:
                    FigPlaybackBossCreate_cold_3(v96, &v109);
                    v72 = v109;
                    goto LABEL_96;
                  }

LABEL_84:
                  v61 = bossSetCursorServiceInTrackList(*(v19 + 72), a6);
                  if (v61)
                  {
LABEL_95:
                    v72 = v61;
LABEL_96:
                    v71 = &unk_1EAF16000;
LABEL_97:
                    Mutable = v97;
                    v75 = object;
                    FigSimpleMutexUnlock();
LABEL_98:
                    CFRelease(v19);
                    goto LABEL_131;
                  }

                  bossElectNewTimebaseStarter(v19);
                  v71 = &unk_1EAF16000;
                  if (a8)
                  {
                    if (a8 == 1)
                    {
                      *(v19 + 120) = 0;
                      *(v19 + 128) = 1;
                      goto LABEL_103;
                    }

                    *(v19 + 120) = a8;
                    CFRetain(a8);
                  }

                  else
                  {
                    HostTimeClock = CMClockGetHostTimeClock();
                    v74 = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, (v19 + 120));
                    if (v74)
                    {
LABEL_147:
                      v72 = v74;
                      goto LABEL_97;
                    }
                  }

                  if (a9)
                  {
                    *(v19 + 88) = -1;
                    v74 = CMTimebaseSetSourceClock(*(v19 + 120), a9);
                    if (v74)
                    {
                      goto LABEL_147;
                    }
                  }

                  else
                  {
                    *(v19 + 88) = -2;
                    bossElectNewPreferredClock(v19);
                  }

                  v106 = 0x40000000;
                  if (bossGetVideoDecoderMaxSpeedThreshold(v19, &v106))
                  {
                    *(v19 + 144) = v106;
                    *(v19 + 148) = 0;
                    if (dword_1EAF16E78)
                    {
                      v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }
                  }

LABEL_103:
                  v113.start.value = 0;
                  if (a3 <= 0)
                  {
LABEL_121:
                    if (!*(v19 + 120) || (CMNotificationCenterGetDefaultLocalCenter(), (v74 = CMNotificationCenterAddListener()) == 0))
                    {
                      bossSetExpectScaledEdits(*(v19 + 72), (v19 + 104), (v19 + 105));
                      *(v19 + 106) = bosstrackListDoesContainVideoTrack(*(v19 + 72));
                      FigSimpleMutexUnlock();
                      *(v19 + 432) = 1634624887;
                      *(v19 + 792) = voucher_copy();
                      *a12 = v19;
                      Mutable = v97;
                      if (dword_1EAF16E78)
                      {
                        v106 = 0;
                        v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        v90 = v106;
                        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                        {
                          v91 = v90;
                        }

                        else
                        {
                          v91 = v90 & 0xFFFFFFFE;
                        }

                        if (v91)
                        {
                          v92 = *a12;
                          v109 = 136315394;
                          v110 = "FigPlaybackBossCreate";
                          v111 = 2048;
                          v112 = v92;
                          _os_log_send_and_compose_impl(v91, 0, &v113, 128, &dword_1962D5000, v89, 0, "<<<< Boss >>>> %s: returning boss = %p", &v109, 22);
                        }

                        v75 = object;
                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        v72 = 0;
                      }

                      else
                      {
                        v72 = 0;
                        v75 = object;
                      }

LABEL_131:
                      if (Mutable)
                      {
                        CFRelease(Mutable);
                      }

                      if (v75)
                      {
                        dispatch_release(v75);
                      }

                      if (!v72)
                      {
                        return;
                      }

LABEL_136:
                      if (v71[926])
                      {
                        v106 = 0;
                        v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        v94 = v106;
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                        {
                          v95 = v94;
                        }

                        else
                        {
                          v95 = v94 & 0xFFFFFFFE;
                        }

                        if (v95)
                        {
                          v109 = 136315394;
                          v110 = "FigPlaybackBossCreate";
                          v111 = 1024;
                          LODWORD(v112) = v72;
                          _os_log_send_and_compose_impl(v95, 0, &v113, 128, &dword_1962D5000, v93, 0, "<<<< Boss >>>> %s: returning err = %d", &v109, 18);
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                      }

                      return;
                    }
                  }

                  else
                  {
                    v77 = 0;
                    do
                    {
                      CFArrayGetValueAtIndex(*(v19 + 72), v77);
                      FigRenderPipelineGetFigBaseObject();
                      v79 = v78;
                      v80 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v80)
                      {
                        v80(v79, @"Timebase", a1, &v113);
                      }

                      if (v113.start.value)
                      {
                        CFRelease(v113.start.value);
                        goto LABEL_115;
                      }

                      ++v77;
                    }

                    while (a3 != v77);
                    v81 = 0;
                    do
                    {
                      CFArrayGetValueAtIndex(*(v19 + 72), v81);
                      v82 = *(v19 + 120);
                      FigRenderPipelineGetFigBaseObject();
                      v84 = v83;
                      v85 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v85)
                      {
                        v85(v84, @"Timebase", v82);
                      }

                      ++v81;
                    }

                    while (a3 != v81);
LABEL_115:
                    v86 = 0;
                    while (1)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(*(v19 + 72), v86);
                      v74 = bossBuildMentorForTrack(v19, ValueAtIndex, a1, a6[v86]);
                      if (v74)
                      {
                        break;
                      }

                      *(ValueAtIndex + 58) = 1000 * FigAtomicIncrement32();
                      v74 = bossAddNotificationListenersForTrack(v19, ValueAtIndex);
                      if (v74)
                      {
                        break;
                      }

                      v88 = *(ValueAtIndex + 14);
                      if (v88)
                      {
                        FigMediaProcessorGo(v88);
                        if (v74)
                        {
                          break;
                        }
                      }

                      if (a3 == ++v86)
                      {
                        goto LABEL_121;
                      }
                    }
                  }

                  goto LABEL_147;
                }

                v72 = v30;
                v75 = 0;
LABEL_155:
                v71 = &unk_1EAF16000;
                goto LABEL_98;
              }

              FigPlaybackBossCreate_cold_5(&v113);
            }

            else
            {
              FigPlaybackBossCreate_cold_6(&v113);
            }
          }

          else
          {
            FigPlaybackBossCreate_cold_7(&v113);
          }
        }

        else
        {
          FigPlaybackBossCreate_cold_8(&v113);
        }

        Mutable = 0;
        v75 = 0;
        v72 = v113.start.value;
        goto LABEL_155;
      }

      v27 = qword_1EAF16E70;
      v28 = v12;
      v29 = 3315;
    }

    else
    {
      v27 = qword_1EAF16E70;
      v28 = v12;
      v29 = 3313;
    }
  }

  else
  {
    v27 = qword_1EAF16E70;
    v28 = v12;
    v29 = 3311;
  }

LABEL_58:

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 4294954925, "<<<< Boss >>>>", v29, v28);
}

uint64_t FigPlaybackBossGetTypeID(uint64_t a1)
{
  if (FigPlaybackBossGetTypeID_oneTimeOnly != -1)
  {
    FigPlaybackBossCreate_cold_1();
  }

  return gFigPlaybackBossTypeID;
}

uint64_t figPlaybackBossClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  gFigPlaybackBossTypeID = result;
  return result;
}

uint64_t figAudioQueueRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28.value, v28.timescale, LODWORD(v28.epoch));
LABEL_3:
    Parameter = v9;
    goto LABEL_11;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v11 = *(DerivedStorage + 32);
LABEL_8:
    *a4 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    Parameter = 0;
    goto LABEL_11;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v11 = *(DerivedStorage + 112);
    goto LABEL_8;
  }

  if (!CFEqual(@"PerformanceDictionary", a2))
  {
    if (CFEqual(@"SoftwareVolume1", a2))
    {
      LODWORD(valuePtr) = 1065353216;
      if (*(DerivedStorage + 103))
      {
        LODWORD(valuePtr) = *(DerivedStorage + 104);
      }

      else
      {
        Parameter = FigAudioQueueGetParameter(*(DerivedStorage + 40), 1, &valuePtr);
        if (Parameter)
        {
          goto LABEL_11;
        }
      }

      v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
      goto LABEL_19;
    }

    if (CFEqual(@"EQPreset", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_EQPreset;
LABEL_24:
      v9 = FigAudioQueueCopyProperty(v17, *v18, a3, a4);
      goto LABEL_3;
    }

    if (CFEqual(@"Muted", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 103);
LABEL_35:
      if (!v23)
      {
        v22 = MEMORY[0x1E695E4C0];
      }

      v14 = *v22;
LABEL_38:
      v14 = CFRetain(v14);
      goto LABEL_19;
    }

    if (CFEqual(@"PreferredClock", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_Clock;
      goto LABEL_24;
    }

    if (CFEqual(@"IsRunning", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 64);
      goto LABEL_35;
    }

    if (CFEqual(@"PipelineLatency", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_PipelineLatency;
      goto LABEL_24;
    }

    if (CFEqual(@"UnpauseLatencyEstimate", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_UnpauseLatencyEstimate;
      goto LABEL_24;
    }

    if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
    {
      valuePtr = 0uLL;
      *&v41 = 0;
      CMBufferQueueGetEndPresentationTimeStamp(&valuePtr, *(DerivedStorage + 32));
      v17 = *(DerivedStorage + 40);
      if (v17 && (BYTE12(valuePtr) & 1) == 0)
      {
        v18 = kFigAudioQueueProperty_EndPresentationTimeForQueuedSamples;
        goto LABEL_24;
      }

      *values = valuePtr;
      *&v31 = v41;
      v14 = CMTimeCopyAsDictionary(values, a3);
LABEL_19:
      Parameter = 0;
      *a4 = v14;
      goto LABEL_11;
    }

    if (CFEqual(@"EndPresentationTimeForDecodedSamples", a2))
    {
      v17 = *(DerivedStorage + 40);
      if (v17)
      {
        v18 = kFigAudioQueueProperty_EndPresentationTimeForDecodedSamples;
        goto LABEL_24;
      }

      goto LABEL_100;
    }

    if (CFEqual(@"OfflineMixer", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_OfflineMixer;
      goto LABEL_24;
    }

    if (CFEqual(@"AudioDeviceUID", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_DeviceUID;
      goto LABEL_24;
    }

    if (CFEqual(@"AudioDeviceChannelMap", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_DeviceChannelMap;
      goto LABEL_24;
    }

    if (CFEqual(@"STSLabel", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_STSLabel;
      goto LABEL_24;
    }

    if (CFEqual(@"IsTimebaseStarter", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 65);
      goto LABEL_35;
    }

    if (CFEqual(@"AudioProcessingUnits", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_AudioProcessingUnits;
      goto LABEL_24;
    }

    if (CFEqual(@"AudioCurves", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_AudioCurves;
      goto LABEL_24;
    }

    if (CFEqual(@"SecondaryAudioCurves", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_SecondaryAudioCurves;
      goto LABEL_24;
    }

    if (CFEqual(@"HandleFormatDescriptionChanges", a2))
    {
      v22 = MEMORY[0x1E695E4D0];
      v23 = *(DerivedStorage + 92);
      goto LABEL_35;
    }

    if (CFEqual(@"IgnoreAudioDeviceLatencyInStartupSync", a2))
    {
      v17 = *(DerivedStorage + 40);
      v18 = kFigAudioQueueProperty_IgnoreAudioDeviceLatencyInStartupSync;
      goto LABEL_24;
    }

    if (CFEqual(@"ExpectScaledEdits", a2))
    {
      v26 = MEMORY[0x1E695E4D0];
      if (!*(DerivedStorage + 100))
      {
        v26 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (CFEqual(@"IsPausedForConfigurationChange", a2))
      {
        v17 = *(DerivedStorage + 40);
        v18 = kFigAudioQueueProperty_IsPausedForConfigurationChange;
        goto LABEL_24;
      }

      if (!CFEqual(@"SpatializationEnabled", a2))
      {
        if (CFEqual(@"MXSession", a2))
        {
          v17 = *(DerivedStorage + 40);
          v18 = kFigAudioQueueProperty_MXSession;
          goto LABEL_24;
        }

        if (CFEqual(@"WillTrimShortDurationSamples", a2))
        {
          v17 = *(DerivedStorage + 40);
          v18 = kFigAudioQueueProperty_WillTrimShortDurationSamples;
          goto LABEL_24;
        }

        if (CFEqual(@"EmploysHardwarePassthrough", a2))
        {
          v17 = *(DerivedStorage + 40);
          v18 = kFigAudioQueueProperty_EmploysHardwarePassthrough;
          goto LABEL_24;
        }

        if (CFEqual(@"LoggingIdentifier", a2))
        {
          if (a1)
          {
            v27 = (CMBaseObjectGetDerivedStorage() + 164);
          }

          else
          {
            v27 = "";
          }

          v14 = CFStringCreateWithCString(a3, v27, 0x600u);
          goto LABEL_19;
        }

LABEL_100:
        Parameter = 4294954446;
        goto LABEL_11;
      }

      v26 = MEMORY[0x1E695E4D0];
      if ((*(DerivedStorage + 97) & 1) == 0)
      {
        v26 = MEMORY[0x1E695E4C0];
      }
    }

    v14 = *v26;
    if (!*v26)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  memset(v29, 0, sizeof(v29));
  if (*v13)
  {
    Parameter = 4294954444;
  }

  else
  {
    v15 = *(v13 + 40);
    if (v15)
    {
      v16 = FigAudioQueueCopyPerformanceDictionary(v15, v29) == 0;
    }

    else
    {
      v16 = 0;
    }

    v19 = CMBaseObjectGetDerivedStorage();
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    valuePtr = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *values = 0u;
    v31 = 0u;
    if (*v19)
    {
      Parameter = FigCFCreateCombinedDictionary();
      if (!v16)
      {
        goto LABEL_11;
      }

      v20 = 1;
    }

    else
    {
      if (*(v19 + 148))
      {
        v28 = *(v19 + 136);
        v28.value = CMTimeGetSeconds(&v28);
        *&valuePtr = @"MaxStartDelay";
        values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v28);
        v21 = CFDictionaryCreate(a3, &valuePtr, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(values[0]);
      }

      else
      {
        v21 = CFDictionaryCreate(a3, &valuePtr, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      *(v29 | (8 * v16)) = v21;
      v20 = v16 + 1;
      Parameter = FigCFCreateCombinedDictionary();
    }

    v24 = v29;
    do
    {
      v25 = *v24++;
      CFRelease(v25);
      --v20;
    }

    while (v20);
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return Parameter;
}

uint64_t FigAudioQueueCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigAudioQueueCopyProperty_cold_3(&time);
    return LODWORD(time.value);
  }

  if (!a4)
  {
    FigAudioQueueCopyProperty_cold_2(&time);
    return LODWORD(time.value);
  }

  *a4 = 0;
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigAudioQueueCopyProperty_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), 0);
  if (!CFEqual(a2, @"EndPresentationTimeForQueuedSamples"))
  {
    if (CFEqual(a2, @"EndPresentationTimeForDecodedSamples"))
    {
      FigSimpleMutexLock();
      time = *(ValueAtIndex + 508);
      *a4 = CMTimeCopyAsDictionary(&time, a3);
      FigSimpleMutexUnlock();
      value_low = 0;
      goto LABEL_12;
    }

    if (CFEqual(a2, @"Clock"))
    {
      v11 = *(ValueAtIndex + 78);
      if (!v11)
      {
        value_low = 4294954356;
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"PipelineLatency"))
    {
      time = **&MEMORY[0x1E6960C70];
      if (*(*(ValueAtIndex + 8) + 8) == 1819304813)
      {
        v14 = 1;
        v15 = 10;
      }

      else
      {
        v14 = 25;
        v15 = 100;
      }

      CMTimeMake(&time, v14, v15);
      if (ValueAtIndex[120])
      {
        lhs = time;
        rhs = *(ValueAtIndex + 108);
        CMTimeAdd(&v30, &lhs, &rhs);
        time = v30;
      }

      v30 = time;
      v10 = &v30;
      goto LABEL_7;
    }

    if (CFEqual(a2, @"UnpauseLatencyEstimate"))
    {
      time = **&MEMORY[0x1E6960C70];
      subaq_getAudioQueueLatencyFigTime();
      value_low = v19;
      v30 = time;
      v11 = CMTimeCopyAsDictionary(&v30, a3);
      goto LABEL_9;
    }

    if (CFEqual(a2, @"DynamicLatency"))
    {
      lhs = **&MEMORY[0x1E6960CC0];
      if (!*(a1 + 792) || !ValueAtIndex[785])
      {
        goto LABEL_51;
      }

      rhs.value = 0;
      v27 = 8;
      if (FigAudioQueueTimingShimGetProperty(*(ValueAtIndex + 5), 0x7164646Cu, &rhs, &v27))
      {
        if (dword_1EAF16C30 < 5)
        {
LABEL_51:
          *&time.value = *&lhs.value;
          epoch = lhs.epoch;
          goto LABEL_6;
        }
      }

      else
      {
        CMTimeMakeWithSeconds(&lhs, *&rhs.value, 1000000000);
        if (dword_1EAF16C30 < 5)
        {
          goto LABEL_51;
        }
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_51;
    }

    if (CFEqual(a2, @"OfflineMixer"))
    {
      if (!*(a1 + 720))
      {
        value_low = 0;
        *a4 = 0;
        goto LABEL_12;
      }

      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      goto LABEL_8;
    }

    if (CFEqual(a2, @"DeviceUID"))
    {
      time.value = 0;
      LODWORD(v30.value) = 8;
      v17 = *(ValueAtIndex + 5);
      v18 = 1634820964;
      goto LABEL_42;
    }

    if (CFEqual(a2, @"STSLabel"))
    {
      time.value = 0;
      LODWORD(v30.value) = 8;
      v17 = *(ValueAtIndex + 5);
      v18 = 1937011564;
LABEL_42:
      value_low = FigAudioQueueTimingShimGetProperty(v17, v18, &time, &v30);
      if (!value_low)
      {
        *a4 = time.value;
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"AllowedToUseHardware"))
    {
      v20 = MEMORY[0x1E695E4C0];
LABEL_50:
      v11 = *v20;
LABEL_16:
      v11 = CFRetain(v11);
      goto LABEL_8;
    }

    if (CFEqual(a2, @"MXSession"))
    {
      v11 = *(a1 + 256);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"TimebaseRate"))
    {
      v21 = *MEMORY[0x1E695E480];
      p_time = (a1 + 416);
      v23 = kCFNumberFloat32Type;
LABEL_57:
      v11 = CFNumberCreate(v21, v23, p_time);
      goto LABEL_8;
    }

    if (CFEqual(a2, @"AudioProcessingUnits"))
    {
      v11 = *(a1 + 688);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"AudioCurves"))
    {
      v11 = *(a1 + 656);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"SecondaryAudioCurves"))
    {
      v11 = *(a1 + 664);
      if (!v11)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (CFEqual(a2, @"DiscardSampleBuffers"))
    {
      v20 = MEMORY[0x1E695E4D0];
      v24 = *(a1 + 312);
    }

    else if (CFEqual(a2, @"IsPausedForConfigurationChange"))
    {
      v20 = MEMORY[0x1E695E4D0];
      v24 = *(a1 + 785);
    }

    else
    {
      if (CFEqual(a2, @"EQPreset"))
      {
        LODWORD(time.value) = -1;
        subaq_getEQPreset(a1);
        v21 = *MEMORY[0x1E695E480];
        p_time = &time;
        v23 = kCFNumberIntType;
        goto LABEL_57;
      }

      if (CFEqual(a2, @"WillTrimShortDurationSamples"))
      {
        v20 = MEMORY[0x1E695E4D0];
        v24 = ValueAtIndex[592];
      }

      else
      {
        if (CFEqual(a2, @"EmploysHardwarePassthrough"))
        {
          v20 = MEMORY[0x1E695E4D0];
          v25 = MEMORY[0x1E695E4C0];
          v26 = (*(a1 + 48) & 4) == 0;
LABEL_76:
          if (v26)
          {
            v20 = v25;
          }

          goto LABEL_50;
        }

        if (!CFEqual(a2, @"IgnoreAudioDeviceLatencyInStartupSync"))
        {
          value_low = 4294954353;
          goto LABEL_12;
        }

        v20 = MEMORY[0x1E695E4D0];
        v24 = *(a1 + 654);
      }
    }

    v25 = MEMORY[0x1E695E4C0];
    v26 = v24 == 0;
    goto LABEL_76;
  }

  *&time.value = *(ValueAtIndex + 484);
  epoch = *(ValueAtIndex + 500);
LABEL_6:
  time.epoch = epoch;
  v10 = &time;
LABEL_7:
  v11 = CMTimeCopyAsDictionary(v10, a3);
LABEL_8:
  value_low = 0;
LABEL_9:
  *a4 = v11;
LABEL_12:
  FigSimpleMutexUnlock();
  return value_low;
}

void FigSampleBufferConsumerCreateForBufferQueue(uint64_t a1, __int128 *a2, __int128 *a3, CFTypeRef *a4)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v4 = *a3;
  v5 = *(a3 + 2);
  FigSampleBufferConsumerCreateForBufferQueue2(a1, &v6, 0, &v4, 0, a4);
}

uint64_t RegisterFigSampleBufferConsumerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void figSampleGeneratorCreateForFormatReaderCommon(const void *a1, const void *a2, const void *a3, int a4, char a5, const void *a6, uint64_t a7, CMTime *a8, char a9, const void *a10, void *a11)
{
  v51 = 0;
  v52[0] = 0;
  v49 = 0;
  v50 = 0;
  if (a11)
  {
    v19 = *MEMORY[0x1E695E480];
    FigSampleGeneratorGetClassID();
    if (CMDerivedObjectCreate())
    {
      goto LABEL_3;
    }

    allocator = v19;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = a1;
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      v22 = CFRetain(a2);
    }

    else
    {
      v22 = 0;
    }

    *(DerivedStorage + 16) = v22;
    v23 = a3;
    if (a3)
    {
      v24 = CFRetain(a3);
    }

    else
    {
      v24 = 0;
    }

    *(DerivedStorage + 24) = v24;
    *(DerivedStorage + 32) = a5;
    if (a6)
    {
      *(DerivedStorage + 40) = CFRetain(a6);
    }

    *(DerivedStorage + 56) = a7;
    time = *a8;
    CMTimeConvertScale(&v48, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    *(DerivedStorage + 64) = v48;
    v25 = *(DerivedStorage + 56);
    if (v25)
    {
      CFRetain(v25);
    }

    if (a4)
    {
      *(DerivedStorage + 33) = 1;
    }

    if (a10)
    {
      *(DerivedStorage + 48) = CFRetain(a10);
    }

    else if (FigSampleGeneratorDataSourceCacheCreate(a1, 0, (DerivedStorage + 48)))
    {
LABEL_3:
      if (v52[0])
      {
        CFRelease(v52[0]);
      }

      return;
    }

    if (!*(DerivedStorage + 32))
    {
      if (gSGFFRCommonMemoryPool != -1)
      {
        figSampleGeneratorCreateForFormatReaderCommon_cold_1();
      }

      FigSimpleMutexLock();
      v26 = MEMORY[0x19A8D0E00](&unk_1EAF18D38);
      if (!v26 && byte_1EAF18D40)
      {
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69628C8], @"SampleGeneratorForFormatReader-SampleData");
        v26 = CMMemoryPoolCreate(Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        FigCFWeakReferenceStore();
      }

      FigSimpleMutexUnlock();
      *(DerivedStorage + 8) = v26;
      v23 = a3;
    }

    v28 = MEMORY[0x1E6960CC0];
    v29 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 88) = *MEMORY[0x1E6960CC0];
    v30 = *(v28 + 16);
    *(DerivedStorage + 104) = v30;
    *(DerivedStorage + 112) = v29;
    *(DerivedStorage + 128) = v30;
    if ((a9 & 2) != 0)
    {
      *(DerivedStorage + 34) = 1;
    }

    if (v23)
    {
      v43 = v29;
      FigTrackReaderGetFigBaseObject();
      v32 = v31;
      v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v33)
      {
        v33(v32, @"AdvanceDecodeDelta", allocator, &v51);
        if (v51)
        {
          CMTimeMakeFromDictionary(&v48, v51);
          CFRelease(v51);
          time = v48;
          *&time2.value = v43;
          time2.epoch = v30;
          if (CMTimeCompare(&time, &time2) >= 1)
          {
            v34 = (DerivedStorage + 88);
            if ((a9 & 1) == 0)
            {
              v34 = (DerivedStorage + 112);
            }

            *v34 = v48;
          }
        }
      }

      FigTrackReaderGetFigBaseObject();
      v36 = v35;
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v37)
      {
        v37(v36, @"HasAudioSampleDependencyInformation", allocator, &v50);
        v37 = v50;
      }

      v39 = *MEMORY[0x1E695E4D0];
      if (v37 == *MEMORY[0x1E695E4D0])
      {
        *(DerivedStorage + 35) = 1;
      }

      FigTrackReaderGetFigBaseObject();
      v41 = v40;
      v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v42)
      {
        v42(v41, @"HasSeamSamples", allocator, &v49);
        v38 = v49;
      }

      else
      {
        v38 = 0;
      }

      if (v38 == v39)
      {
        *(DerivedStorage + 36) = 1;
      }
    }

    else
    {
      v38 = 0;
    }

    *a11 = v52[0];
    v52[0] = 0;
    if (v50)
    {
      CFRelease(v50);
      v38 = v49;
    }

    if (v38)
    {
      CFRelease(v38);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954565, "<<<< SampleGen >>>>", 4135, v11);
  }
}

uint64_t RegisterFigSampleGeneratorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void AudioMentorNew(const void *a1, const void *a2, const void *a3, const __CFDictionary *a4, void *a5)
{
  values = @"com.apple.coremedia.audiomentor";
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          fig_note_initialize_category_with_default_work_cf();
          fig_note_initialize_category_with_default_work_cf();
          v10 = malloc_type_calloc(0x168uLL, 1uLL, 0x10E00403AB65953uLL);
          if (v10)
          {
            v11 = v10;
            v10[1] = CFRetain(a1);
            v11[2] = CFRetain(a2);
            v11[3] = CFRetain(a3);
            *(v11 + 41) = 0;
            if (a4)
            {
              Value = CFDictionaryGetValue(a4, @"SampleBufferCryptor");
              v11[6] = Value;
              if (Value)
              {
                CFRetain(Value);
              }

              if (_os_feature_enabled_impl())
              {
                v13 = *MEMORY[0x1E695E4D0];
                v14 = v13 == CFDictionaryGetValue(a4, @"OptimizeSampleCursorIPCForPower");
              }

              else
              {
                v14 = 0;
              }

              *(v11 + 41) = v14;
            }

            FigCFDictionaryGetInt32IfPresent();
            v11[10] = FigSemaphoreCreate();
            v11[11] = FigSemaphoreCreate();
            v11[12] = FigSimpleMutexCreate();
            v11[9] = FigSimpleMutexCreate();
            v11[15] = FigSemaphoreCreate();
            *(v11 + 11) = 0;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterAddListener();
            v19 = v11[3];
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (!v20 || v20(v19, audioMentorLowWaterTrigger, v11, v11 + 4))
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, a5, v24);
            }

            else
            {
              *(v11 + 40) = 1;
              *(v11 + 28) = 0;
              v21 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (!FigThreadCreate())
              {
                *a5 = v11;
                v11 = 0;
              }

              if (v21)
              {
                CFRelease(v21);
              }
            }

            AudioMentorDispose(v11);
            return;
          }

          v15 = qword_1EAF16D48;
          v16 = v5;
          v17 = 4294954465;
          v18 = 2098;
        }

        else
        {
          v15 = qword_1EAF16D48;
          v16 = v5;
          v17 = 4294954466;
          v18 = 2087;
        }
      }

      else
      {
        v15 = qword_1EAF16D48;
        v16 = v5;
        v17 = 4294954466;
        v18 = 2085;
      }
    }

    else
    {
      v15 = qword_1EAF16D48;
      v16 = v5;
      v17 = 4294954466;
      v18 = 2083;
    }
  }

  else
  {
    v15 = qword_1EAF16D48;
    v16 = v5;
    v17 = 4294954466;
    v18 = 2081;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, "<<<< AudioMentor >>>>", v18, v16);
}

uint64_t sbcbq_installLowWaterTrigger(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 60) & 0x1D) == 1)
  {
    FigSimpleMutexLock();
    *(DerivedStorage + 112) = a2;
    *(DerivedStorage + 120) = a3;
    FigSimpleMutexUnlock();
    v9 = *(DerivedStorage + 136);
    if (*(DerivedStorage + 72))
    {
      v11 = *(DerivedStorage + 48);
      result = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds();
    }

    else
    {
      v11 = *(DerivedStorage + 48);
      result = CMBufferQueueInstallTrigger(v9, sbcbq_LowWater, a1, 2, &v11, (DerivedStorage + 128));
    }
  }

  else
  {
    result = 0;
  }

  *a4 = DerivedStorage + 104;
  return result;
}

uint64_t sbcbq_LowWater(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8))
  {
    v2 = result;
    FigSimpleMutexLock();
    v3 = *(v2 + 112);
    if (v3)
    {
      v3(*(v2 + 120));
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t audioMentorThread(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 41))
  {
    FigFormatReaderXPCRemoteEnsureEfficientIPCFromCurrentThread(*(a1 + 44), &cf);
  }

  if (*(a1 + 112) == 4)
  {
    goto LABEL_4;
  }

  v222 = (a1 + 308);
  v219 = (a1 + 332);
  allocator = *MEMORY[0x1E695E480];
  v205 = *MEMORY[0x1E695E4D0];
  key = *MEMORY[0x1E6960518];
  v198 = *MEMORY[0x1E69605A0];
  v199 = *MEMORY[0x1E6960598];
  v201 = *MEMORY[0x1E69604F0];
  v202 = *MEMORY[0x1E69604E8];
  v197 = *MEMORY[0x1E695E4C0];
  v203 = *MEMORY[0x1E6960510];
  v200 = *MEMORY[0x1E69604D0];
  v193 = *MEMORY[0x1E6960490];
  while (1)
  {
    FigSimpleMutexLock();
    v4 = *(a1 + 112);
    v5 = *(a1 + 128);
    *&v231.value = *(a1 + 136);
    v6 = *(a1 + 160);
    v231.epoch = *(a1 + 152);
    v230 = *(a1 + 168);
    v7 = *(a1 + 268);
    v9 = *(a1 + 192);
    v8 = *(a1 + 196);
    v11 = *(a1 + 200);
    v10 = *(a1 + 204);
    v12 = *(a1 + 208);
    v228 = *(a1 + 212);
    v229 = *(a1 + 228);
    v13 = *(a1 + 236);
    v14 = *(a1 + 237);
    v15 = *(a1 + 238);
    v16 = *(a1 + 239);
    v17 = *(a1 + 248);
    v223 = *(a1 + 240);
    v18 = *(a1 + 256);
    *(a1 + 128) = 0;
    *(a1 + 160) = 0;
    *(a1 + 288) = 0;
    *(a1 + 116) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
    if (!v4)
    {
      if (*(a1 + 117))
      {
        *(a1 + 117) = 0;
        FigSemaphoreSignal();
      }

      FigMemoryBarrier();
      FigSimpleMutexUnlock();
      v20 = v17;
      v23 = v223;
      if (v17)
      {
        audioMentorEnqueueBufferConsumedMarker(a1, v17);
      }

      goto LABEL_164;
    }

    v213 = v13;
    v215 = v10;
    value = v12;
    v217 = v8;
    v211 = v14;
    v221 = v15;
    FigMemoryBarrier();
    FigSimpleMutexUnlock();
    if ((v4 - 1) >= 2)
    {
      v20 = v17;
      v23 = v223;
      if (v4 != 3)
      {
        goto LABEL_164;
      }

      *&v239[0] = 0;
      *(a1 + 264) = v9;
      if ((v217 - 3) < 0xFFFFFFFE)
      {
        *(a1 + 305) = 1;
        if (!v223)
        {
LABEL_33:
          if (v17)
          {
            LODWORD(v26) = audioMentorEnqueueBufferConsumedMarker(a1, v17);
          }

          else
          {
            LODWORD(v26) = 0;
          }

          v17 = 0;
LABEL_109:
          if (v221)
          {
            FigSemaphoreSignal();
          }

          goto LABEL_111;
        }

LABEL_31:
        v24 = *(a1 + 24);
        v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v25)
        {
          v26 = v25(v24, v223);
          if (!v26)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v26 = 4294954514;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v26, "<<<< AudioMentor >>>>", 1869);
        goto LABEL_109;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 72))
      {
        v27 = *(a1 + 24);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v28)
        {
          v28(v27);
        }
      }

      *(a1 + 305) = 1;
      values[0] = 0;
      v29 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, v239);
      if (v29)
      {
        LODWORD(v26) = v29;
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v29, "<<<< AudioMentor >>>>", 1830);
        goto LABEL_109;
      }

      ++*(a1 + 272);
      values[0] = CFNumberCreate(allocator, kCFNumberIntType, (a1 + 272));
      v52 = CFDictionaryCreate(allocator, MEMORY[0x1E6960580], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CMSetAttachment(*&v239[0], key, values[0], 1u);
      v53 = *(a1 + 24);
      v54 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v54)
      {
        v54(v53, v199, v52, 0);
      }

      v55 = *(a1 + 24);
      v56 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v56)
      {
        v56(v55, v198, 0, 0);
      }

      if (values[0])
      {
        CFRelease(values[0]);
      }

      if (v52)
      {
        CFRelease(v52);
      }

      if (v221)
      {
        FigSemaphoreSignal();
      }

      v57 = *(a1 + 24);
      v26 = *&v239[0];
      v58 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v58)
      {
        LODWORD(v26) = v58(v57, v26);
        if (!v26)
        {
          v221 = 0;
          if (!v223)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v26) = -12782;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v190, sampleSizeArray);
LABEL_111:
      audioMentorThreadFinishPreroll(a1, 0, v18);
      if (!*a1)
      {
        v59 = @"MentorStoppingDueToCompletion";
        if (v26)
        {
          v59 = @"MentorStoppingDueToError";
        }

        if (v26 == -1)
        {
          v60 = 0;
        }

        else
        {
          v60 = v26;
        }

        if (v26 == -1)
        {
          v61 = @"MentorResettingDueToModeSwitch";
        }

        else
        {
          v61 = v59;
        }

        v62 = FigMentorNotificationPayloadCreate(v61, v18, v60, *(a1 + 288), v17, 0);
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        if (v62)
        {
          CFRelease(v62);
        }
      }

      if (*&v239[0])
      {
        CFRelease(*&v239[0]);
      }

      goto LABEL_164;
    }

    v220 = v4;
    v227 = v231;
    v226 = v230;
    v224 = v228;
    v225 = v229;
    v247 = v6;
    v248[0] = v5;
    valuePtr = v11;
    v245 = 0;
    v237 = 0;
    v238 = 0;
    v19 = *MEMORY[0x1E695FF58];
    if ((v9 & 0xFFFFFFFD) == 1 && v19 == 1)
    {
      kdebug_trace();
      v19 = *MEMORY[0x1E695FF58];
    }

    v20 = v17;
    if (v19 == 1)
    {
      kdebug_trace();
    }

    *(a1 + 292) = 0;
    *(a1 + 264) = v9;
    *(a1 + 268) = v7;
    v21 = *(a1 + 280);
    *(a1 + 280) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    values[0] = 0;
    values[1] = 0;
    v244 = 0;
    memset(v239, 0, sizeof(v239));
    v240 = 0u;
    memset(v241, 0, sizeof(v241));
    v22 = v5;
    v242 = 0;
    if (v16)
    {
      time1 = v227;
      *&time2.value = *v222;
      time2.epoch = *(a1 + 324);
      if (CMTimeCompare(&time1, &time2))
      {
        v22 = v248[0];
        goto LABEL_43;
      }

      v22 = v248[0];
      if ((*(a1 + 344) & 0x1D) == 1)
      {
        if (v248[0])
        {
          goto LABEL_44;
        }

        *&v227.value = *v219;
        v227.epoch = *(a1 + 348);
LABEL_58:
        time1 = v227;
        CursorForPresentationTimeStamp = audioMentorCreateCursorForPresentationTimeStamp(a1, v213, &time1.value, v248);
        if (CursorForPresentationTimeStamp)
        {
          goto LABEL_59;
        }

        if (v4 == 2)
        {
          memset(&time1, 0, sizeof(time1));
          v49 = v248[0];
          v50 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v50)
          {
            v33 = v50(v49, &time1);
            if (v33)
            {
              goto LABEL_125;
            }

            if ((time1.flags & 0x1D) == 1)
            {
              time2 = time1;
              lhs = v227;
              if (CMTimeCompare(&time2, &lhs))
              {
                goto LABEL_84;
              }

              v181 = v248[0];
              v182 = *(*(CMBaseObjectGetVTable() + 16) + 168);
              if (v182)
              {
                v33 = v182(v181, -1, 0);
                if (v33)
                {
                  goto LABEL_449;
                }

                goto LABEL_84;
              }

              v33 = 4294954514;
LABEL_449:
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1384);
            }

            else
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v190, sampleSizeArray);
LABEL_59:
              LODWORD(v33) = CursorForPresentationTimeStamp;
            }
          }

          else
          {
            v33 = 4294954514;
LABEL_125:
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1382);
          }

          v216 = 0;
          v207 = 0;
          goto LABEL_127;
        }

LABEL_84:
        v207 = 1;
        goto LABEL_45;
      }
    }

LABEL_43:
    if (!v22)
    {
      goto LABEL_58;
    }

LABEL_44:
    v207 = 0;
LABEL_45:
    if ((v227.flags & 0x1D) != 1)
    {
      v36 = v248[0];
      v37 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v37)
      {
        v33 = 4294954514;
LABEL_77:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1392);
        goto LABEL_78;
      }

      v33 = v37(v36, &v227);
      if (v33)
      {
        goto LABEL_77;
      }

      if ((v227.flags & 0x1D) != 1)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, 4294967294, "<<<< AudioMentor >>>>", 1392);
        goto LABEL_250;
      }

      if (v4 == 2)
      {
        v195 = *MEMORY[0x1E6960CC0];
        *&time1.value = *MEMORY[0x1E6960CC0];
        v38 = *(MEMORY[0x1E6960CC0] + 16);
        time1.epoch = v38;
        v39 = v248[0];
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v40)
        {
          v41 = v40(v39, &time1);
          if (!v41)
          {
            v20 = v17;
            if ((time1.flags & 0x1D) != 1)
            {
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, 4294967294, "<<<< AudioMentor >>>>", 1396);
              goto LABEL_250;
            }

            goto LABEL_68;
          }

          LODWORD(v33) = v41;
          if (v41 != -12782)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v190, sampleSizeArray);
            v20 = v17;
            goto LABEL_78;
          }
        }

        *&time1.value = v195;
        time1.epoch = v38;
        v20 = v17;
LABEL_68:
        lhs = v227;
        rhs = time1;
        CMTimeAdd(&time2, &lhs, &rhs);
        v227 = time2;
      }
    }

    if (v247 || (v226.flags & 0x1D) != 1)
    {
      v42 = 0;
    }

    else
    {
      time1 = v226;
      v30 = audioMentorCreateCursorForPresentationTimeStamp(a1, v213, &time1.value, &v247);
      if (v30)
      {
        goto LABEL_250;
      }

      if (v4 == 1)
      {
        memset(&time1, 0, sizeof(time1));
        v31 = v247;
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v32)
        {
          v33 = 4294954514;
LABEL_373:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1411);
          goto LABEL_78;
        }

        v33 = v32(v31, &time1);
        if (v33)
        {
          goto LABEL_373;
        }

        if ((time1.flags & 0x1D) != 1)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, 4294967294, "<<<< AudioMentor >>>>", 1411);
          goto LABEL_250;
        }

        time2 = time1;
        lhs = v226;
        if (!CMTimeCompare(&time2, &lhs))
        {
          v187 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v247, -1, 0);
          if (v187)
          {
            LODWORD(v33) = v187;
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v187, "<<<< AudioMentor >>>>", 1414);
            goto LABEL_78;
          }
        }

        if (value && v247)
        {
          PresentationTimeStamp = FigSampleCursorGetPresentationTimeStamp(v247, &time1);
          if (PresentationTimeStamp)
          {
            LODWORD(v33) = PresentationTimeStamp;
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, PresentationTimeStamp, "<<<< AudioMentor >>>>", 1418);
            goto LABEL_78;
          }

          if ((time1.flags & 0x1D) != 1)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, 4294967294, "<<<< AudioMentor >>>>", 1418);
LABEL_250:
            LODWORD(v33) = v30;
LABEL_78:
            v216 = 0;
LABEL_127:
            v42 = 0;
            goto LABEL_128;
          }

          v188 = FigSampleCursorStepInDecodeOrderAndReportStepsTaken(v247, value, 0);
          if (v188)
          {
            LODWORD(v33) = v188;
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v188, "<<<< AudioMentor >>>>", 1420);
            goto LABEL_78;
          }
        }
      }

      v42 = 1;
    }

    FigSampleCursorGetFigBaseObject();
    v44 = v43;
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v45)
    {
      v45(v44, @"GradualDecoderRefresh", allocator, &v238);
    }

    v46 = v238;
    if (v238)
    {
      CFNumberGetValue(v238, kCFNumberSInt32Type, &valuePtr);
      v47 = v238;
      v48 = v4;
      if (v4 == 2)
      {
        valuePtr = 0;
        if (v238)
        {
          CFRelease(v238);
          v48 = 2;
          v47 = 0;
          v215 = 0;
          v238 = 0;
        }

        else
        {
          v215 = 0;
        }

        goto LABEL_181;
      }

      v51 = 0;
    }

    else
    {
      v48 = v4;
      if (v4 == 2)
      {
        v47 = 0;
        v215 = 0;
        valuePtr = 0;
LABEL_181:
        v51 = 1;
        goto LABEL_182;
      }

      v51 = 0;
      v47 = 0;
    }

LABEL_182:
    if (valuePtr)
    {
      if (!v47)
      {
        v75 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        v48 = v4;
        v238 = v75;
        if (!v75)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v190, sampleSizeArray);
          v216 = 0;
          LODWORD(v33) = 0;
          goto LABEL_128;
        }
      }
    }

    valuea = v46;
    if (v48 != 1)
    {
      goto LABEL_196;
    }

    if (!v247)
    {
      goto LABEL_196;
    }

    v76 = v248[0];
    time1.value = 0;
    v77 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (!v77)
    {
      goto LABEL_196;
    }

    v77(v76, &time1);
    if (!time1.value)
    {
      goto LABEL_196;
    }

    if (CMFormatDescriptionGetMediaType(time1.value) == 1936684398)
    {
      time2.value = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(time1.value, &time2);
      if (FormatList)
      {
        if (time2.value >= 0x30uLL)
        {
          v171 = time2.value / 0x30uLL;
          p_mFormatID = &FormatList->mASBD.mFormatID;
          while (1)
          {
            v79 = 0;
            v174 = *p_mFormatID;
            p_mFormatID += 12;
            v173 = v174;
            if (v174 > 1885430639)
            {
              break;
            }

            if (v173 > 1667326823)
            {
              if (v173 > 1668641632)
              {
                if (v173 == 1668641633)
                {
                  goto LABEL_193;
                }

                v179 = 1885430632;
              }

              else
              {
                if (v173 == 1667326824)
                {
                  goto LABEL_193;
                }

                v179 = 1667326832;
              }

LABEL_409:
              if (v173 == v179)
              {
                goto LABEL_193;
              }

              goto LABEL_410;
            }

            v175 = v173 - 1633772389;
            v176 = v175 > 0xB;
            v177 = (1 << v175) & 0x80F;
            if (!v176 && v177 != 0)
            {
              goto LABEL_193;
            }

LABEL_410:
            v79 = 1;
            if (!--v171)
            {
              goto LABEL_193;
            }
          }

          if (v173 <= 1903522656)
          {
            if (v173 > 1902207847)
            {
              if (v173 == 1902207848)
              {
                goto LABEL_193;
              }

              v179 = 1902207856;
            }

            else
            {
              if (v173 == 1885430640)
              {
                goto LABEL_193;
              }

              v179 = 1886745441;
            }
          }

          else if (v173 <= 2053202791)
          {
            if (v173 == 1903522657)
            {
              goto LABEL_193;
            }

            v179 = 1970495843;
          }

          else
          {
            if (v173 == 2053202792 || v173 == 2053202800)
            {
              goto LABEL_193;
            }

            v179 = 2054517601;
          }

          goto LABEL_409;
        }
      }
    }

    v79 = 1;
LABEL_193:
    if (time1.value)
    {
      CFRelease(time1.value);
    }

    if ((v79 & 1) == 0)
    {
      v113 = v247;
      v114 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v114)
      {
        LODWORD(v33) = -12782;
LABEL_281:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v190, sampleSizeArray);
        goto LABEL_234;
      }

      LODWORD(v33) = v114(v113, 1, 0);
      if (v33)
      {
        goto LABEL_281;
      }
    }

LABEL_196:
    v80 = v248[0];
    time1.value = 0;
    v214 = v42;
    if (v215)
    {
      v81 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v81)
      {
        v82 = v81(v80, &time1);
        v83 = time1.value;
        if (v82)
        {
          v89 = 1;
          v88 = v215;
          if (time1.value)
          {
LABEL_204:
            CFRelease(v83);
            v88 = v215;
          }
        }

        else
        {
          time2.value = 0;
          v84 = ~v215;
          v85 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (v85)
          {
            v86 = v85(v83, v84, &time2) != 0;
            v87 = time2.value;
          }

          else
          {
            v87 = 0;
            v86 = 1;
          }

          v88 = v215;
          v89 = v86 || v87 == v84;
          v83 = time1.value;
          if (time1.value)
          {
            goto LABEL_204;
          }
        }

        if ((v89 & 1) == 0)
        {
          goto LABEL_207;
        }
      }
    }

    v88 = 0;
LABEL_207:
    v90 = v248[0];
    v91 = valuePtr;
    time1.value = 0;
    v92 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v92)
    {
      LODWORD(v33) = -12782;
      goto LABEL_231;
    }

    v196 = v51;
    v93 = v92(v90, &time1);
    if (v93)
    {
      LODWORD(v33) = v93;
LABEL_231:
      v42 = v214;
LABEL_232:
      if (time1.value)
      {
        CFRelease(time1.value);
      }

LABEL_234:
      v216 = 0;
      goto LABEL_128;
    }

    if (v91 <= v88)
    {
      v94 = v88;
    }

    else
    {
      v94 = v91;
    }

    if (v94 >= 1)
    {
      v95 = time1.value;
      v96 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (v96)
      {
        v96(v95, -v94, 0);
      }
    }

    FigSampleCursorGetFigBaseObject();
    v98 = v97;
    v99 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    v42 = v214;
    if (v99)
    {
      v99(v98, @"EagerlyFetchSampleDependencyAttributes", v205);
    }

    if (audioMentorGetDecodeWalkCatchupStatusForSteps(time1.value, 0) != 2)
    {
      v100 = 0;
      do
      {
        time2.value = 0;
        v101 = time1.value;
        v102 = *(*(CMBaseObjectGetVTable() + 16) + 168);
        if (v102)
        {
          LODWORD(v33) = v102(v101, -1, &time2);
        }

        else
        {
          LODWORD(v33) = -12782;
        }

        if (!time2.value)
        {
          break;
        }

        if (v33)
        {
          goto LABEL_232;
        }

        v100 += time2.value;
      }

      while (audioMentorGetDecodeWalkCatchupStatusForSteps(time1.value, -v100) != 2);
    }

    v216 = time1.value;
    if ((v217 - 1) <= 1 && *(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      v103 = *(a1 + 24);
      v104 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v104)
      {
        v104(v103);
      }

      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    v106 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v220 == 1)
    {
      if (!v106)
      {
LABEL_240:
        *values = *MEMORY[0x1E6960CC0];
        v244 = *(MEMORY[0x1E6960CC0] + 16);
        goto LABEL_241;
      }

      v107 = v106(v216, values);
      if (v107)
      {
        LODWORD(v33) = v107;
        if (v107 != -12782)
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v107, "<<<< AudioMentor >>>>", 1502);
          goto LABEL_128;
        }

        goto LABEL_240;
      }

      if ((BYTE4(values[1]) & 0x1D) == 1)
      {
LABEL_241:
        v108 = 0;
        if (values[0])
        {
          v218 = 2 * LODWORD(values[1]) / SLODWORD(values[0]);
          v194 = 1;
          v109 = &v226;
          v110 = &v227;
          v111 = 3 * LODWORD(values[1]) / SLODWORD(values[0]);
        }

        else
        {
          v111 = 0;
          v218 = 1;
          v109 = &v226;
          v110 = &v227;
          v194 = 1;
        }

        goto LABEL_256;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, 4294967294, "<<<< AudioMentor >>>>", 1502);
LABEL_378:
      LODWORD(v33) = v170;
      goto LABEL_128;
    }

    if (!v106)
    {
      goto LABEL_246;
    }

    v112 = v106(v216, values);
    if (v112)
    {
      LODWORD(v33) = v112;
      if (v112 != -12782)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v112, "<<<< AudioMentor >>>>", 1522);
        goto LABEL_128;
      }

LABEL_246:
      *values = *MEMORY[0x1E6960CC0];
      v244 = *(MEMORY[0x1E6960CC0] + 16);
      goto LABEL_247;
    }

    if ((BYTE4(values[1]) & 0x1D) != 1)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, 4294967294, "<<<< AudioMentor >>>>", 1522);
      goto LABEL_378;
    }

LABEL_247:
    if (values[0])
    {
      v111 = SLODWORD(values[1]) / (4 * LODWORD(values[0]));
      v218 = v111;
      v194 = -1;
      v108 = 1;
      v109 = &v227;
      v110 = &v226;
    }

    else
    {
      v111 = 0;
      v194 = -1;
      v108 = 1;
      v109 = &v227;
      v110 = &v226;
      v218 = 1;
    }

LABEL_256:
    *&v239[0] = a1;
    *(v239 + 8) = *&v110->value;
    *(&v239[1] + 1) = v110->epoch;
    v240 = *&v109->value;
    *&v241[0] = v109->epoch;
    BYTE1(v242) = v108;
    *(v241 + 8) = v224;
    *(&v241[1] + 1) = v225;
    LOBYTE(v242) = v211;
    if ((v105 & 1) == 0)
    {
      time1.value = 0;
      v120 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v245);
      if (v120)
      {
        LODWORD(v33) = v120;
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v120, "<<<< AudioMentor >>>>", 1555);
      }

      else
      {
        ++*(a1 + 272);
        time1.value = CFNumberCreate(allocator, kCFNumberIntType, (a1 + 272));
        v121 = CFDictionaryCreate(allocator, MEMORY[0x1E6960580], &time1, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CMSetAttachment(v245, key, time1.value, 1u);
        v122 = *(a1 + 24);
        v123 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v123)
        {
          v123(v122, v199, v121, 0);
        }

        v124 = *(a1 + 24);
        v125 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v125)
        {
          v125(v124, v198, 0, 0);
        }

        if (time1.value)
        {
          CFRelease(time1.value);
        }

        if (v121)
        {
          CFRelease(v121);
        }

        v126 = *(a1 + 24);
        v127 = v245;
        v128 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v128)
        {
          v33 = v128(v126, v127);
          if (v33)
          {
            goto LABEL_370;
          }

          if (v245)
          {
            CFRelease(v245);
            v245 = 0;
          }

          if (v221)
          {
            FigSemaphoreSignal();
          }

          v115 = 0;
          goto LABEL_258;
        }

        v33 = 4294954514;
LABEL_370:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1579);
      }

      v63 = v20;
      v115 = v221;
      goto LABEL_439;
    }

    v115 = v221;
LABEL_258:
    v116 = 1;
    if (v220 != 1)
    {
      v116 = -1;
    }

    v192 = v116;
    v117 = v247;
    v221 = v115;
    if (v247 && ((v118 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v119 = 0) : (v119 = v118), (v129 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v130 = 0) : (v130 = v129), (v115 = v221, v119 == v130) && *(v119 + 32)))
    {
      v169 = (*(v130 + 32))(v216, v117);
      v115 = v221;
      v131 = v169;
      if (v169 == v192)
      {
        goto LABEL_435;
      }
    }

    else
    {
      v131 = 0;
    }

    v132 = v205;
    if (!valuea)
    {
      v132 = v197;
    }

    valueb = v132;
    v212 = v111;
    while (1)
    {
      if (*(a1 + 116))
      {
        LODWORD(v33) = -1;
        goto LABEL_438;
      }

      if ((*(a1 + 264) | 2) == 3)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v133 = *(a1 + 24);
          v134 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v134 || !v134(v133))
          {
            goto LABEL_299;
          }
        }

        else
        {
          v135 = *(a1 + 24);
          v136 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v136 || !v136(v135))
          {
LABEL_299:
            audioMentorThreadFinishPreroll(a1, 2, v18);
          }
        }
      }

      v137 = *(a1 + 24);
      v138 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v138 && v138(v137))
      {
        if (!*a1)
        {
          v139 = FigMentorNotificationPayloadCreate(@"MentorPausingDueToHighWaterLevel", v18, 0, *(a1 + 288), 0, 0);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (v139)
          {
            CFRelease(v139);
          }
        }

        v42 = v214;
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        do
        {
          FigSemaphoreWaitRelative();
          if (*(a1 + 116))
          {
            LODWORD(v33) = -1;
            goto LABEL_128;
          }

          v140 = *(a1 + 24);
          v141 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        }

        while (v141 && v141(v140));
        if (*MEMORY[0x1E695FF58] == 1)
        {
          kdebug_trace();
        }

        *(a1 + 292) = 0;
        if (!*a1)
        {
          v142 = FigMentorNotificationPayloadCreate(@"MentorResumingAfterHighWaterLevel", v18, 0, *(a1 + 288), 0, 0);
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (v142)
          {
            CFRelease(v142);
          }
        }
      }

      v143 = *(a1 + 16);
      v144 = v247;
      v145 = *(a1 + 264);
      v146 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v146)
      {
        LODWORD(v33) = -12782;
        goto LABEL_413;
      }

      sampleSizeArray = v18;
      sampleTimingArray = audioMentorRemapSBufTiming;
      v190 = v239;
      v147 = v146(v143, v216, v218, v212, v194, v144, v145, 0);
      if (v147)
      {
        break;
      }

      if (v238)
      {
        CMSetAttachment(v245, v202, v238, 1u);
        CMSetAttachment(v245, v201, valueb, 1u);
      }

      if (*(a1 + 48))
      {
        FigSampleBufferSetDecryptor();
      }

      v148 = *(a1 + 296);
      v42 = v214;
      if (v148 && ((v149 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v150 = 0) : (v150 = v149), (v151 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v152 = 0) : (v152 = v151), v150 == v152 && *(v150 + 32) && (*(v152 + 32))(v216, v148)))
      {
        *(a1 + 304) = 1;
      }

      else if (!*(a1 + 304))
      {
        goto LABEL_331;
      }

      CMSetAttachment(v245, v203, v205, 1u);
      *(a1 + 304) = 0;
LABEL_331:
      if (*(a1 + 305))
      {
        CMSetAttachment(v245, v200, v205, 1u);
        *(a1 + 305) = 0;
      }

      v153 = *(a1 + 24);
      v154 = v245;
      v155 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v155)
      {
        v33 = 4294954514;
LABEL_418:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1677);
        goto LABEL_128;
      }

      v156 = v155(v153, v154);
      if (v156)
      {
        v33 = v156;
        goto LABEL_418;
      }

      ++*(a1 + 292);
      *(a1 + 288) = 1;
      NumSamples = CMSampleBufferGetNumSamples(v245);
      if (v196)
      {
        v158 = -NumSamples;
      }

      else
      {
        v158 = NumSamples;
      }

      v159 = *(*(CMBaseObjectGetVTable() + 16) + 168);
      if (!v159)
      {
        v33 = 4294954514;
LABEL_420:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1688);
        goto LABEL_128;
      }

      v160 = v159(v216, v158, &v237);
      if (v160)
      {
        v33 = v160;
        goto LABEL_420;
      }

      if (v158 != v237)
      {
        if (v247 && FigSampleCursorCompareInDecodeOrder(v216, v247))
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", audioMentorRemapSBufTiming, v239, v18);
          v180 = 0;
          LODWORD(v33) = -12840;
        }

        else
        {
          LODWORD(v33) = 0;
          v180 = 1;
        }

        v183 = *(a1 + 296);
        if (v183)
        {
          CFRelease(v183);
          *(a1 + 296) = 0;
        }

        *(a1 + 304) = 1;
        v115 = v221;
        if (!v180)
        {
          goto LABEL_438;
        }

LABEL_435:
        time1.value = 0;
        LODWORD(v33) = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &time1);
        if (!v33)
        {
          CMSetAttachment(time1.value, v193, v205, 1u);
          v184 = *(a1 + 24);
          v33 = time1.value;
          v185 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v185)
          {
            LODWORD(v33) = v185(v184, v33);
          }

          else
          {
            LODWORD(v33) = -12782;
          }

          CFRelease(time1.value);
        }

        v186 = *(a1 + 296);
        if (v186)
        {
          CFRelease(v186);
          *(a1 + 296) = 0;
        }

        *(a1 + 304) = 1;
        v42 = v214;
        if (v20 && !v33)
        {
          LODWORD(v33) = audioMentorEnqueueBufferConsumedMarker(a1, v20);
          v63 = 0;
LABEL_129:
          if (!v221)
          {
            goto LABEL_131;
          }

LABEL_130:
          FigSemaphoreSignal();
          goto LABEL_131;
        }

LABEL_128:
        v63 = v20;
        goto LABEL_129;
      }

      v161 = *(a1 + 296);
      if (v161)
      {
        CFRelease(v161);
        *(a1 + 296) = 0;
      }

      if (v220 == 1)
      {
        v162 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v162)
        {
          v33 = 4294954514;
          goto LABEL_451;
        }

        v163 = v162(v216, a1 + 296);
        if (v163)
        {
          v33 = v163;
LABEL_451:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D48, v33, "<<<< AudioMentor >>>>", 1705);
          goto LABEL_128;
        }
      }

      else
      {
        *(a1 + 304) = 1;
      }

      v164 = v247;
      if (v247)
      {
        v165 = *(CMBaseObjectGetVTable() + 16);
        if (v165)
        {
          v166 = v165;
        }

        else
        {
          v166 = 0;
        }

        v167 = *(CMBaseObjectGetVTable() + 16);
        if (v167)
        {
          v168 = v167;
        }

        else
        {
          v168 = 0;
        }

        if (v166 == v168 && *(v166 + 32))
        {
          v131 = (*(v168 + 32))(v216, v164);
        }

        else
        {
          v131 = 0;
        }
      }

      if (v245)
      {
        CFRelease(v245);
        v245 = 0;
      }

      v115 = v221;
      if (v131 == v192)
      {
        goto LABEL_435;
      }
    }

    LODWORD(v33) = v147;
    if (v147 == -12840)
    {
      goto LABEL_435;
    }

LABEL_413:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v190, sampleSizeArray);
    v115 = v221;
LABEL_438:
    v63 = v20;
LABEL_439:
    v42 = v214;
    if (v115)
    {
      goto LABEL_130;
    }

LABEL_131:
    audioMentorThreadFinishPreroll(a1, 0, v18);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (!*a1)
    {
      v64 = @"MentorStoppingDueToCompletion";
      if (v33)
      {
        v64 = @"MentorStoppingDueToError";
      }

      if (v33 == -1)
      {
        v65 = 0;
      }

      else
      {
        v65 = v33;
      }

      v66 = v42;
      if (v33 == -1)
      {
        v67 = @"MentorResettingDueToModeSwitch";
      }

      else
      {
        v67 = v64;
      }

      v68 = FigMentorNotificationPayloadCreate(v67, v18, v65, *(a1 + 288), v63, 0);
      CMNotificationCenterGetDefaultLocalCenter();
      v42 = v66;
      CMNotificationCenterPostNotification();
      if (v68)
      {
        CFRelease(v68);
      }
    }

    v23 = v223;
    if ((v33 - 1) <= 0xFFFFFFFD)
    {
      v69 = *(a1 + 296);
      if (v69)
      {
        CFRelease(v69);
        *(a1 + 296) = 0;
      }

      *(a1 + 304) = 1;
    }

    if (v207 && v248[0])
    {
      CFRelease(v248[0]);
      v248[0] = 0;
    }

    if (v42 && v247)
    {
      CFRelease(v247);
      v247 = 0;
    }

    if (v245)
    {
      CFRelease(v245);
    }

    if (v238)
    {
      CFRelease(v238);
    }

    if (v216)
    {
      CFRelease(v216);
    }

    v70 = *(a1 + 280);
    if (v70)
    {
      CFRelease(v70);
      *(a1 + 280) = 0;
    }

    if (v220 == 1)
    {
      v71 = a1 + 308;
      *v222 = *&v230.value;
      epoch = v230.epoch;
      goto LABEL_165;
    }

LABEL_164:
    v73 = MEMORY[0x1E6960C70];
    v74 = *MEMORY[0x1E6960C70];
    *v222 = *MEMORY[0x1E6960C70];
    epoch = *(v73 + 16);
    *(a1 + 324) = epoch;
    v71 = a1 + 332;
    *v219 = v74;
LABEL_165:
    *(v71 + 16) = epoch;
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (*(a1 + 112) == 4)
    {
      break;
    }

    if (!*(a1 + 116))
    {
      do
      {
        FigSemaphoreWaitRelative();
        FigMemoryBarrier();
      }

      while (!*(a1 + 116));
      if (*(a1 + 112) == 4)
      {
        break;
      }
    }
  }

LABEL_4:
  v2 = *(a1 + 296);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 296) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

void AudioMentorDispose(void *a1)
{
  if (a1)
  {
    AudioMentorInvalidate(a1);
    if (a1[10])
    {
      FigSemaphoreDestroy();
      a1[10] = 0;
    }

    if (a1[11])
    {
      FigSemaphoreDestroy();
      a1[11] = 0;
    }

    if (a1[12])
    {
      FigSimpleMutexDestroy();
      a1[12] = 0;
    }

    if (a1[9])
    {
      FigSimpleMutexDestroy();
      a1[9] = 0;
    }

    if (a1[15])
    {
      FigSemaphoreDestroy();
      a1[15] = 0;
    }

    v2 = a1[16];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[20];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[30];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[31];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[32];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[1];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[2];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[3];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = a1[6];
    if (v10)
    {
      CFRelease(v10);
    }

    free(a1);
  }
}

uint64_t editMentorNewWithChildAudioVideoEditOrCallbacksMentorAndSingleEditSegmentOrTrack(void *a1, void *a2, void *a3, uint64_t a4, __int128 *a5, const void *a6, char a7, char *a8)
{
  v44 = a8;
  v45 = a5;
  v47 = a7;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v12 = malloc_type_calloc(0x2B0uLL, 1uLL, 0x10E00406B69F22AuLL);
  v13 = MEMORY[0x1E695E480];
  if (v12)
  {
    v14 = v12;
    *(v12 + 80) = 0;
    v15 = MEMORY[0x1E6960CC0];
    v16 = *MEMORY[0x1E6960CC0];
    *(v12 + 184) = *MEMORY[0x1E6960CC0];
    v17 = *(v15 + 16);
    *(v12 + 25) = v17;
    v18 = MEMORY[0x1E6960C88];
    v19 = *MEMORY[0x1E6960C88];
    *(v12 + 13) = *MEMORY[0x1E6960C88];
    v20 = *(v18 + 16);
    *(v12 + 28) = v20;
    *(v12 + 136) = v16;
    *(v12 + 19) = v17;
    *(v12 + 22) = v20;
    *(v12 + 10) = v19;
    *(v12 + 38) = FigDispatchQueueCreateWithPriority();
    v14[39] = FigSimpleMutexCreate();
    *(v14 + 81) = 1000 * FigAtomicIncrement32() + 10000;
    v14[33] = FigSimpleMutexCreate();
    v21 = FigSimpleMutexCreate();
    v14[43] = v21;
    if (v21)
    {
      v22 = FigSimpleMutexCreate();
      v14[45] = v22;
      if (v22)
      {
        Mutable = CFDictionaryCreateMutable(*v13, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14[35] = Mutable;
        if (Mutable)
        {
          v24 = FigSimpleMutexCreate();
          v14[34] = v24;
          if (v24)
          {
            EditMentorDispose(0);
            goto LABEL_7;
          }

          v43 = 542;
        }

        else
        {
          v43 = 540;
        }
      }

      else
      {
        v43 = 537;
      }
    }

    else
    {
      v43 = 535;
    }

    if (!editMentorNewWithChildAudioVideoEditOrCallbacksMentorAndSingleEditSegmentOrTrack_cold_1(v43, v14, &v50))
    {
      return v50;
    }

LABEL_14:
    v14 = 0;
LABEL_7:
    *v14 = a2;
    v14[1] = a1;
    v14[2] = a3;
    if (a4)
    {
      *(v14 + 24) = 1;
      v25 = *(a4 + 16);
      *(v14 + 2) = *a4;
      *(v14 + 3) = v25;
      v26 = *(a4 + 32);
      v27 = *(a4 + 48);
      v28 = *(a4 + 64);
      v14[14] = *(a4 + 80);
      *(v14 + 5) = v27;
      *(v14 + 6) = v28;
      *(v14 + 4) = v26;
    }

    if (a6)
    {
      v14[16] = CFRetain(a6);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      cf = 0;
      v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v29)
      {
        v29(a6, 0x1F0B60C38, *v13, &cf);
        v30 = cf;
        *(v14 + 289) = cf == *MEMORY[0x1E695E4D0];
        if (v30)
        {
          CFRelease(v30);
        }
      }

      else
      {
        *(v14 + 289) = *MEMORY[0x1E695E4D0] == 0;
      }

      v33 = 1;
    }

    else if (v45)
    {
      if ((*(v45 + 3) & 0x1D) != 1 || (*(v45 + 15) & 0x1D) != 1 || ((*(v45 + 9) & 0x1D) != 1 || (*(v45 + 21) & 0x1D) != 1) && ((~*(v45 + 9) & 5) != 0 || (~*(v45 + 21) & 5) != 0))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
        v32 = v39;
LABEL_39:
        EditMentorDispose(v14);
        return v32;
      }

      v33 = 0;
      v35 = *v45;
      *(v14 + 19) = v45[1];
      *(v14 + 17) = v35;
      v36 = v45[2];
      v37 = v45[3];
      v38 = v45[4];
      *(v14 + 27) = v45[5];
      *(v14 + 25) = v38;
      *(v14 + 23) = v37;
      *(v14 + 21) = v36;
    }

    else
    {
      v33 = 0;
    }

    *(v14 + 120) = v33;
    if (v47)
    {
      *(v14 + 232) = 1;
    }

    if ((*v14 || v14[1] || v14[2] || *(v14 + 24) && v14[6]) && (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterAddListener(), *v14))
    {
      v34 = VideoMentorSetTimeRemapCallback(*v14, editMentorRemapSampleBufferTiming, editMentorRemapTimeInterval, v14);
    }

    else
    {
      v40 = v14[1];
      if (v40)
      {
        v34 = AudioMentorSetTimeRemapCallback(v40, editMentorRemapSampleBufferTiming, editMentorRemapTimeInterval, v14);
      }

      else
      {
        v41 = v14[2];
        if (v41)
        {
          FigSimpleMutexLock();
          v41[30] = editMentorRemapSampleBufferTiming;
          v41[31] = editMentorRemapTimeInterval;
          v41[32] = v14;
          FigSimpleMutexUnlock();
          goto LABEL_42;
        }

        if (!*(v14 + 24))
        {
          goto LABEL_42;
        }

        v34 = (v14[7])(v14[5], editMentorRemapSampleBufferTiming, editMentorRemapTimeInterval, v14);
      }
    }

    v32 = v34;
    if (v34)
    {
      goto LABEL_39;
    }

LABEL_42:
    v32 = 0;
    *v44 = v14;
    return v32;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, v46);
  v32 = v31;
  if (!v31)
  {
    goto LABEL_14;
  }

  return v32;
}

void EditMentorDispose(void *a1)
{
  if (a1)
  {
    if ((*a1 || a1[1] || a1[2] || *(a1 + 24) && a1[6]) && (CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), CMNotificationCenterGetDefaultLocalCenter(), CMNotificationCenterRemoveListener(), *a1))
    {
      VideoMentorSetTimeRemapCallback(*a1, 0, 0, 0);
    }

    else
    {
      v2 = a1[1];
      if (v2)
      {
        AudioMentorSetTimeRemapCallback(v2, 0, 0, 0);
      }

      else
      {
        v3 = a1[2];
        if (v3)
        {
          FigSimpleMutexLock();
          v3[31] = 0;
          v3[32] = 0;
          v3[30] = 0;
          FigSimpleMutexUnlock();
        }

        else if (*(a1 + 24))
        {
          (a1[7])(a1[5], 0, 0, 0);
        }
      }
    }

    if (a1[16])
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      v4 = a1[16];
      v5 = *(CMBaseObjectGetVTable() + 8);
      if (*v5 >= 2uLL)
      {
        v6 = v5[8];
        if (v6)
        {
          v6(v4);
        }
      }

      v7 = a1[16];
      if (v7)
      {
        CFRelease(v7);
        a1[16] = 0;
      }
    }

    v8 = a1[38];
    if (v8)
    {
      dispatch_sync_f(v8, 0, editMentorNoop);
      dispatch_release(a1[38]);
      a1[38] = 0;
    }

    v9 = a1[44];
    if (v9)
    {
      CFRelease(v9);
      a1[44] = 0;
    }

    v10 = a1[41];
    if (v10)
    {
      CFRelease(v10);
      a1[41] = 0;
    }

    v11 = a1[71];
    if (v11)
    {
      CFRelease(v11);
      a1[71] = 0;
    }

    v12 = a1[75];
    if (v12)
    {
      CFRelease(v12);
      a1[75] = 0;
    }

    v13 = a1[76];
    if (v13)
    {
      CFRelease(v13);
      a1[76] = 0;
    }

    v14 = a1[84];
    if (v14)
    {
      CFRelease(v14);
      a1[84] = 0;
    }

    v15 = a1[42];
    if (v15)
    {
      CFRelease(v15);
      a1[42] = 0;
    }

    v16 = a1[35];
    if (v16)
    {
      CFRelease(v16);
      a1[35] = 0;
    }

    v17 = a1[37];
    if (v17)
    {
      CFRelease(v17);
      a1[37] = 0;
    }

    if (a1[39])
    {
      FigSimpleMutexDestroy();
      a1[39] = 0;
    }

    if (a1[33])
    {
      FigSimpleMutexDestroy();
      a1[33] = 0;
    }

    if (a1[34])
    {
      FigSimpleMutexDestroy();
      a1[34] = 0;
    }

    if (a1[43])
    {
      FigSimpleMutexDestroy();
      a1[43] = 0;
    }

    if (a1[45])
    {
      FigSimpleMutexDestroy();
    }

    free(a1);
  }
}

uint64_t AudioMentorSetTimeRemapCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  a1[7] = a2;
  a1[8] = a4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t EditMentorSetTimeRemapCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock();
  a1[30] = a2;
  a1[31] = a3;
  a1[32] = a4;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlaybackBossSetTimeWithRange(uint64_t a1, CMTime *a2, uint64_t a3, CMTime *a4, CMTime *a5, const void *a6, unsigned int a7)
{
  v8 = a3;
  v10 = a1;
  v108 = *MEMORY[0x1E69E9840];
  memset(&v96, 0, sizeof(v96));
  v94 = 0uLL;
  v95 = 0;
  v11 = *(a1 + 138);
  v93 = 0;
  timescale = 0;
  value = 0;
  if (dword_1EAF16E78)
  {
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = a1;
  }

  if (*(v10 + 16))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954925, "<<<< Boss >>>>", 9780, v7);
    return v14;
  }

  if (*(v10 + 128))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16E70, 4294954924, "<<<< Boss >>>>", 9782, v7);
    return v14;
  }

  FigPlaybackBossGetDuration(v10, &v94);
  time = *a2;
  v17 = MEMORY[0x1E6960CC0];
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time, &time2) < 0)
  {
    v18 = a7;
  }

  else
  {
    time = *a2;
    *&time2.value = v94;
    time2.epoch = v95;
    v18 = a7;
    if (CMTimeCompare(&time, &time2) < 1)
    {
      goto LABEL_14;
    }

    v17 = &v94;
  }

  v19 = *v17;
  a2->epoch = v17[1].n128_i64[0];
  *&a2->value = v19;
LABEL_14:
  v96 = *a2;
  if (v8)
  {
    time = *a2;
    time2 = *a4;
    lhs = *a5;
    bossSnapTimeToIFrameWithRange(v10, &time, v8, &time2, &lhs, &v96);
  }

  *(v10 + 136) = 0;
  v20 = *(v10 + 432);
  if (v20 == 1886151033 || v20 == 1886530416 || v20 == 1886154860)
  {
    time = **&MEMORY[0x1E6960C70];
    v21 = *(v10 + 440);
    time2 = v96;
    if (bossCheckTimeWithEndTimes(v10, &time2, &time, v21))
    {
      v96 = time;
    }
  }

  FigSimpleMutexLock();
  v22 = *(v10 + 432);
  if (v22 != 1634624887 && v22 != 1886151033 && v22 != 1886154860)
  {
    memset(&time, 0, sizeof(time));
    if (*(v10 + 492))
    {
      time = *(v10 + 480);
    }

    else
    {
      CMTimebaseGetTime(&time, *(v10 + 120));
    }

    time2 = v96;
    lhs = time;
    if (!CMTimeCompare(&time2, &lhs))
    {
LABEL_94:
      v15 = 0;
      v38 = 1;
      goto LABEL_128;
    }
  }

  if (!*(v10 + 104) && *(v10 + 432) == 1886151033 && FigPlaybackBossGetRate(v10) > 0.0)
  {
    CMTimebaseGetTime(&time, *(v10 + 120));
    value = time.value;
    flags = time.flags;
    timescale = time.timescale;
    if ((time.flags & 0x1D) == 1)
    {
      epoch = time.epoch;
      CMTimeMake(&time2, 250, 1000);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      CMTimeAdd(&time, &lhs, &time2);
      time2 = v96;
      if (CMTimeCompare(&time2, &time) <= 0)
      {
        CMTimeMake(&time2, 50, 1000);
        lhs.value = value;
        lhs.timescale = timescale;
        lhs.flags = flags;
        lhs.epoch = epoch;
        CMTimeSubtract(&time, &lhs, &time2);
        time2 = v96;
        if ((CMTimeCompare(&time2, &time) & 0x80000000) == 0)
        {
          v79 = *(v10 + 120);
          time = v96;
          CMTimebaseSetTime(v79, &time);
          if (dword_1EAF16E78)
          {
            LODWORD(lhs.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v81 = lhs.value;
            v82 = type;
            if (os_log_type_enabled(v80, type))
            {
              v83 = v81;
            }

            else
            {
              v83 = v81 & 0xFFFFFFFE;
            }

            if (v83)
            {
              time.value = value;
              time.timescale = timescale;
              time.flags = flags;
              time.epoch = epoch;
              Seconds = CMTimeGetSeconds(&time);
              CMTimebaseGetTime(&time, *(v10 + 120));
              v85 = CMTimeGetSeconds(&time);
              LODWORD(time2.value) = 136316418;
              *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
              LOWORD(time2.flags) = 2048;
              *(&time2.flags + 2) = v10;
              HIWORD(time2.epoch) = 2082;
              v98 = v10 + 850;
              v99 = 1024;
              v100 = v18;
              v101 = 2048;
              v102 = Seconds;
              v103 = 2048;
              v104 = v85;
              _os_log_send_and_compose_impl(v83, 0, &time, 128, &dword_1962D5000, v80, v82, "<<<< Boss >>>> %s: <%p|%{public}s>: Short SeekID: %d, Current time: %1.3f, timebase time after seek: %1.3f s", &time2, 58);
            }

            v38 = 1;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v15 = 0;
            goto LABEL_128;
          }

          goto LABEL_94;
        }
      }
    }
  }

  if (v18)
  {
    *(v10 + 788) = 1;
    *(v10 + 784) = v18;
  }

  bossBumpCurrentMasterOrder(v10);
  FigSimpleMutexLock();
  if (*(v10 + 848))
  {
    v25 = v11;
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = lhs.value;
    v28 = type;
    if (os_log_type_enabled(v26, type))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 0xFFFFFFFE;
    }

    if (v29)
    {
      LODWORD(time2.value) = 136315394;
      *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v10;
      _os_log_send_and_compose_impl(v29, 0, &time, 128, &dword_1962D5000, v26, v28, "<<<< Boss >>>> %s: (%p) attempt to use quiescent boss", &time2, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = v25;
  }

  bossSetMentorModesToDoNothing(v10, 0, *(v10 + 80), 0);
  FigSimpleMutexUnlock();
  v30 = *(v10 + 432);
  if (v30 == 1886154860 || (v31 = 0, v30 == 1886151033))
  {
    if (v11)
    {
      v31 = 1;
    }

    else
    {
      v32 = MEMORY[0x1E6960C70];
      *(v10 + 452) = *MEMORY[0x1E6960C70];
      *(v10 + 468) = v32->epoch;
      bossStopTimebaseAndAudioContext(v10, 0, v32);
      v31 = 0;
    }
  }

  if (*(v10 + 600) && *(v10 + 476) && ((v33 = *(v10 + 432), v33 == 1885435251) || v33 == 1919247481 || v33 == 1886545266))
  {
    v34 = v11;
    v15 = 0;
    *(v10 + 480) = v96;
    v35 = 1;
  }

  else
  {
    v34 = v11;
    v36 = MEMORY[0x1E6960C70];
    *(v10 + 480) = *MEMORY[0x1E6960C70];
    *(v10 + 496) = *(v36 + 16);
    if (v31)
    {
      v35 = 0;
      v15 = 0;
    }

    else
    {
      v37 = *(v10 + 120);
      time = v96;
      v15 = CMTimebaseSetTime(v37, &time);
      v35 = 0;
    }
  }

  v38 = 0;
  ++*(v10 + 732);
  v39 = *(v10 + 432);
  v40 = 3;
  if (v39 <= 1886530415)
  {
    if (v39 <= 1886151032)
    {
      if (v39 == 1634624887)
      {
LABEL_73:
        v42 = *(v10 + 424);
        *(v10 + 424) = a6;
        if (a6)
        {
          CFRetain(a6);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        bossBumpCurrentMasterOrder(v10);
        FigSimpleMutexLock();
        if (*(v10 + 848))
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v44 = lhs.value;
          v45 = type;
          if (os_log_type_enabled(v43, type))
          {
            v46 = v44;
          }

          else
          {
            v46 = v44 & 0xFFFFFFFE;
          }

          if (v46)
          {
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v10;
            LODWORD(v86) = 22;
            _os_log_send_and_compose_impl(v46, 0, &time, 128, &dword_1962D5000, v43, v45, "<<<< Boss >>>> %s: (%p) attempt to use quiescent boss", &time2, v86);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v59 = *(v10 + 80);
        time = v96;
        v15 = bossSetMentorModesToScrub(v10, 0, v59, &time, 0, &v93);
        FigSimpleMutexUnlock();
        v38 = 0;
        if (v93)
        {
          v60 = 1;
        }

        else
        {
          v60 = v35;
        }

        if ((v60 & 1) == 0)
        {
          *(v10 + 788) = 0;
          *(v10 + 784) = 0;
          v38 = 1;
        }

        *(v10 + 432) = 1885435251;
        if (dword_1EAF16E78)
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v62 = lhs.value;
          v63 = type;
          if (os_log_type_enabled(v61, type))
          {
            v64 = v62;
          }

          else
          {
            v64 = v62 & 0xFFFFFFFE;
          }

          if (v64)
          {
            LODWORD(time2.value) = 136315650;
            *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v10;
            HIWORD(time2.epoch) = 2082;
            v98 = v10 + 850;
            LODWORD(v86) = 32;
            _os_log_send_and_compose_impl(v64, 0, &time, 128, &dword_1962D5000, v61, v63, "<<<< Boss >>>> %s: <%p|%{public}s> playState set to Paused", &time2, v86);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_128;
      }

      if (v39 != 1768189029)
      {
        v41 = 1885435251;
        goto LABEL_72;
      }

      goto LABEL_88;
    }

    if (v39 != 1886151033)
    {
      if (v39 == 1886154860)
      {
        bossBumpCurrentMasterOrder(v10);
        FigSimpleMutexLock();
        if (*(v10 + 848))
        {
          LODWORD(lhs.value) = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v56 = lhs.value;
          v57 = type;
          if (os_log_type_enabled(v55, type))
          {
            v58 = v56;
          }

          else
          {
            v58 = v56 & 0xFFFFFFFE;
          }

          if (v58)
          {
            LODWORD(time2.value) = 136315394;
            *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v10;
            LODWORD(v86) = 22;
            _os_log_send_and_compose_impl(v58, 0, &time, 128, &dword_1962D5000, v55, v57, "<<<< Boss >>>> %s: (%p) attempt to use quiescent boss", &time2, v86);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v40 = 2;
        bossSetMentorModesToDoNothing(v10, 0, *(v10 + 80), 2);
        bossResetSideQueuesAndSwitchMentorsToMainQueues(v10);
        FigSimpleMutexUnlock();
      }

      else if (v39 != 1886155888)
      {
        goto LABEL_128;
      }
    }

LABEL_116:
    if (v34)
    {
      bossBumpCurrentMasterOrder(v10);
      FigSimpleMutexLock();
      if (*(v10 + 848))
      {
        LODWORD(lhs.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v65 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v66 = lhs.value;
        v67 = type;
        if (os_log_type_enabled(v65, type))
        {
          v68 = v66;
        }

        else
        {
          v68 = v66 & 0xFFFFFFFE;
        }

        if (v68)
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v10;
          LODWORD(v86) = 22;
          _os_log_send_and_compose_impl(v68, 0, &time, 128, &dword_1962D5000, v65, v67, "<<<< Boss >>>> %s: (%p) attempt to use quiescent boss", &time2, v86);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      bossSetMentorModesToDoNothing(v10, 0, *(v10 + 80), 2);
      bossSwitchMentorsToSideQueues(v10, 0, *(v10 + 80));
      FigSimpleMutexUnlock();
      time = v96;
      started = figPlaybackBossStartPrerollAndSetPlayState(v10, &time, *(v10 + 440), *(v10 + 448), 2u, 0x706C706Cu, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a6);
    }

    else
    {
      time = **&MEMORY[0x1E6960C70];
      started = figPlaybackBossStartPrerollAndSetPlayState(v10, &time, *(v10 + 440), *(v10 + 448), v40, 0x70722B70u, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], a6);
    }

    v15 = started;
    goto LABEL_127;
  }

  if (v39 <= 1919247480)
  {
    if (v39 == 1886530416)
    {
      goto LABEL_116;
    }

    if (v39 != 1886544244)
    {
      v41 = 1886545266;
      goto LABEL_72;
    }

LABEL_83:
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v48 = lhs.value;
    v49 = type;
    if (os_log_type_enabled(v47, type))
    {
      v50 = v48;
    }

    else
    {
      v50 = v48 & 0xFFFFFFFE;
    }

    if (v50)
    {
      LODWORD(time2.value) = 136315650;
      *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v10;
      HIWORD(time2.epoch) = 2082;
      v98 = v10 + 850;
      LODWORD(v86) = 32;
      _os_log_send_and_compose_impl(v50, 0, &time, 128, &dword_1962D5000, v47, v49, "<<<< Boss >>>> %s: <%p|%{public}s> request to jump time while in kBossPlayState_PrerollingWillPlayAtTransition -- this may end in tears", &time2, v86);
    }

    goto LABEL_93;
  }

  if (v39 == 2003853684)
  {
    goto LABEL_83;
  }

  if (v39 == 1920298606)
  {
LABEL_88:
    LODWORD(lhs.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v52 = lhs.value;
    v53 = type;
    if (os_log_type_enabled(v51, type))
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 & 0xFFFFFFFE;
    }

    if (v54)
    {
      LODWORD(time2.value) = 136315650;
      *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v10;
      HIWORD(time2.epoch) = 2082;
      v98 = v10 + 850;
      LODWORD(v86) = 32;
      _os_log_send_and_compose_impl(v54, 0, &time, 128, &dword_1962D5000, v51, v53, "<<<< Boss >>>> %s: <%p|%{public}s> Inconsistent non-realtime play state for non-realtime mode?", &time2, v86);
    }

LABEL_93:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_127:
    v38 = 0;
    goto LABEL_128;
  }

  v41 = 1919247481;
LABEL_72:
  if (v39 == v41)
  {
    goto LABEL_73;
  }

LABEL_128:
  FigSimpleMutexUnlock();
  if (v18 && v38)
  {
    if (dword_1EAF16E78)
    {
      LODWORD(lhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v76 = lhs.value;
      v77 = type;
      if (os_log_type_enabled(v75, type))
      {
        v78 = v76;
      }

      else
      {
        v78 = v76 & 0xFFFFFFFE;
      }

      if (v78)
      {
        LODWORD(time2.value) = 136315906;
        *(&time2.value + 4) = "FigPlaybackBossSetTimeWithRange";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v10;
        HIWORD(time2.epoch) = 2082;
        v98 = v10 + 850;
        v99 = 1024;
        v100 = v18;
        LODWORD(v86) = 38;
        _os_log_send_and_compose_impl(v78, 0, &time, 128, &dword_1962D5000, v75, v77, "<<<< Boss >>>> %s: <%p|%{public}s> Posting SeekDidComplete for seek ID %d", &time2, v86);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    figPlaybackBossPostSeekDidComplete(v10, v18, 0, v70, v71, v72, v73, v74);
  }

  return v15;
}

__n128 FigPlaybackBossGetDuration@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1)
  {
    if ((*(a1 + 212) & 1) == 0 || (*(a1 + 236) & 1) == 0 || *(a1 + 240) || (*(a1 + 224) & 0x8000000000000000) != 0)
    {
      bossGetContentDuration(a1, a2);
      return result;
    }

    v3 = MEMORY[0x1E6960C88];
  }

  else
  {
    v3 = MEMORY[0x1E6960C70];
  }

  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

void bossSetMentorModesToDoNothing(uint64_t a1, CFIndex a2, uint64_t a3, int a4)
{
  if (a4)
  {
    keys[0] = @"AbortReading";
    if (a4 == 2)
    {
      keys[0] = @"SynchronouslyAbortReading";
    }

    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v8 = 0;
  }

  bossBumpEveryTrackCurrentOrder(a1, a2, a3, 0);
  *(a1 + 608) = 0;
  v9 = *(a1 + 600);
  if (v9)
  {
    v10 = *(a1 + 552);
    *keys = *MEMORY[0x1E6960C70];
    v18 = *(MEMORY[0x1E6960C70] + 16);
    v15 = *keys;
    v16 = v18;
    FigVideoCompositionProcessorSetPlaybackTimeRange(v9, keys, &v15, v10, 0);
  }

  if (a2 < FigCFRangeGetLimit())
  {
    v11 = 0;
    v12 = a2;
    do
    {
      v13 = *(CFArrayGetValueAtIndex(*(a1 + 72), v12) + 27);
      if (v13)
      {
        v14 = EditMentorSetModeToDoNothing(v13, v8, 0);
        if (!v11)
        {
          v11 = v14;
        }
      }

      ++v12;
    }

    while (v12 < FigCFRangeGetLimit());
  }

  if (a4)
  {
    FigThreadAbortQueue();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

CFIndex bossBumpEveryTrackCurrentOrder(uint64_t a1, CFIndex a2, uint64_t a3, char a4)
{
  *(a1 + 609) = 0;
  result = FigCFRangeGetLimit();
  if (a2 < result)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v9);
      v11 = ValueAtIndex[28];
      ++*(ValueAtIndex + 58);
      ValueAtIndex[28] = CFNumberCreate(v8, kCFNumberSInt32Type, ValueAtIndex + 29);
      if (v11)
      {
        CFRelease(v11);
      }

      if ((a4 & 2) != 0)
      {
        *(ValueAtIndex + 236) = 1;
      }

      if (a4)
      {
        *(ValueAtIndex + 237) = 1;
        *(a1 + 609) = 1;
      }

      ++v9;
      result = FigCFRangeGetLimit();
    }

    while (v9 < result);
  }

  return result;
}

uint64_t EditMentorSetModeToDoNothing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v4[2] = a3;
  v5 = 0;
  dispatch_sync_f(*(a1 + 304), v4, EditMentorSetModeToDoNothing_fun);
  return v5;
}

uint64_t editMentorStartNewParentOrder(uint64_t a1, const void *a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 304));
  FigSimpleMutexLock();
  *(a1 + 288) = 0;
  v6 = *(a1 + 608);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 608) = 0;
  }

  v7 = *(a1 + 600);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 600) = 0;
  }

  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 600) = v8;
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  *(a1 + 608) = MutableCopy;
  *(a1 + 680) = 0;
  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, @"PrerollPolicy");
    if (Value)
    {
      v11 = Value;
      if (CFEqual(Value, @"PrerollUntilOutputReachesLowWater") || CFEqual(v11, @"PrerollUntilOutputReachesLowWaterOrSampleNotImmediatelyAvailable"))
      {
        *(a1 + 680) = 1;
      }
    }
  }

  v12 = *MEMORY[0x1E695E4C0];
  *(a1 + 616) = v12 != CFDictionaryGetValue(*(a1 + 608), @"SendPermanentEmptyMediaMarkers");
  CFDictionarySetValue(*(a1 + 608), @"SendPermanentEmptyMediaMarkers", v12);
  v13 = *MEMORY[0x1E695E4D0];
  *(a1 + 617) = v13 == CFDictionaryGetValue(*(a1 + 608), @"OKToWaitForTrackToGrow");
  *(a1 + 681) = v13 == CFDictionaryGetValue(*(a1 + 608), @"ConsolidateContinuousEdits");
  *(a1 + 682) = v13 == CFDictionaryGetValue(*(a1 + 608), @"RoundUpStartPTS");
  v14 = *(a1 + 568);
  *(a1 + 568) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  editMentorBumpChildOrder(a1);
  if (dword_1EAF16E38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigSimpleMutexUnlock();
}

CFNumberRef editMentorBumpChildOrder(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 304));
  v2 = *(a1 + 328);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 328) = 0;
  }

  ++*(a1 + 324);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (a1 + 324));
  *(a1 + 328) = result;
  return result;
}

uint64_t editMentorSetChildMentorModeToDoNothing(uint64_t *a1, const __CFDictionary *a2, const void *a3)
{
  if (*a1)
  {
    v5 = *a1;

    return VideoMentorSetModeToDoNothing(v5, a2, a3);
  }

  else if (a1[1])
  {
    v7 = a1[1];

    return AudioMentorSetModeToDoNothing(v7, a2, a3);
  }

  else
  {
    v8 = a1[2];
    if (v8)
    {
      v13 = v3;
      v14 = v4;
      v11[0] = v8;
      v11[1] = a2;
      v11[2] = a3;
      v12 = 0;
      dispatch_sync_f(*(v8 + 304), v11, EditMentorSetModeToDoNothing_fun);
      return v12;
    }

    else if (*(a1 + 24))
    {
      v9 = a1[8];
      v10 = a1[5];

      return v9(v10, a2, a3);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t AudioMentorSetModeToDoNothing(uint64_t a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = theDict;
  if (theDict)
  {
    v6 = *MEMORY[0x1E695E4D0];
    Value = CFDictionaryGetValue(theDict, @"AbortReading");
    LODWORD(v4) = v6 == CFDictionaryGetValue(v4, @"SynchronouslyAbortReading");
    if (v6 == Value)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  FigSimpleMutexLock();
  if (!*a1)
  {
    v9 = *(a1 + 248);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 248) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    *(a1 + 112) = 0;
    *(a1 + 116) = 1;
    *(a1 + 117) = v8;
    FigMemoryBarrier();
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (v8)
  {
    v10 = 0;
    do
    {
      if (!*(a1 + 116))
      {
        break;
      }

      FigThreadAbort();
      if (*(a1 + 116))
      {
        FigSemaphoreWaitRelative();
      }

      v11 = v10++ >= 4;
      v12 = v11 ? v4 : 1;
    }

    while ((v12 & 1) != 0);
  }

  return 0;
}

uint64_t bossSetMentorModesToScrub(uint64_t a1, CFIndex a2, uint64_t a3, CMTime *a4, int a5, _BYTE *a6)
{
  v7 = a3;
  v49 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    LODWORD(lhs.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = a3;
  }

  bossBumpEveryTrackCurrentOrder(a1, a2, v7, 2 * (a5 != 0));
  *(a1 + 608) = 0;
  v11 = *(a1 + 600);
  if (v11)
  {
    v12 = *(a1 + 552);
    time = *a4;
    time2 = *a4;
    FigVideoCompositionProcessorSetPlaybackTimeRange(v11, &time, &time2, v12, 0);
  }

  if (a2 >= FigCFRangeGetLimit())
  {
    LOBYTE(v13) = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    cf = 0;
    allocator = *MEMORY[0x1E695E480];
    v39 = *(MEMORY[0x1E6960CC0] + 16);
    v40 = *(MEMORY[0x1E6960CC0] + 12);
    v37 = v40 & 0x1F;
    v15 = a2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v15);
      if (*(ValueAtIndex + 27))
      {
        v17 = ValueAtIndex;
        if (*(a1 + 141) && ValueAtIndex[18] == 1668047728)
        {
          CMTimeMakeWithSeconds(&time, 10.0, 1);
          value = CMTimeCopyAsDictionary(&time, allocator);
        }

        else
        {
          value = 0;
        }

        v19 = bossCopyOptionsDictionaryForMentors(a1, 3, 0, 0, 0, 0, 0, 0, 0.0, 0, *(a1 + 849), *(a1 + 129), 0, 0, 0, 0, value, 0);
        v20 = bossCopyRenderPipelineCachedVideoFrames(a1, *(v17 + 10));
        v42 = v14;
        if (v13)
        {
          v41 = 1;
        }

        else if (v17[18] == 1986618469)
        {
          v41 = 1;
          cf = CFDictionaryCreate(allocator, kFigPlaybackBoss_ScrubOrder, (a1 + 544), 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        }

        else
        {
          v41 = 0;
        }

        if (!*(v17 + 425) || ((v21 = (v17 + 119), v46 = v17[121], v45 = *(v17 + 119), v22 = v17[122], v23 = *(v17 + 123), (v22 & 0x1F) != 3) ? (v24 = v37 == 3) : (v24 = 1), v24 && (memset(&time, 0, sizeof(time)), lhs.value = *v21, lhs.timescale = v17[121], lhs.flags = v22, lhs.epoch = v23, type.value = *MEMORY[0x1E6960CC0], type.timescale = *(MEMORY[0x1E6960CC0] + 8), type.flags = v40, type.epoch = v39, CMTimeSubtract(&time2, &lhs, &type), CMTimeAbsoluteValue(&time, &time2), CMTimeMake(&time2, 1, 1000000000), lhs = time, CMTimeCompare(&lhs, &time2) <= 0) || (time.value = v45, time.timescale = v46, time.flags = v22, time.epoch = v23, time2.value = *MEMORY[0x1E6960CC0], time2.timescale = *(MEMORY[0x1E6960CC0] + 8), time2.flags = v40, time2.epoch = v39, CMTimeCompare(&time, &time2) <= 0)) && (((v46 = v17[127], v45 = *(v17 + 125), v25 = v17[128], v26 = *(v17 + 129), (v25 & 0x1F) == 3) || v37 == 3) && (memset(&time, 0, sizeof(time)), lhs.value = *(v17 + 125), lhs.timescale = v17[127], lhs.flags = v25, lhs.epoch = v26, type.value = *MEMORY[0x1E6960CC0], type.timescale = *(MEMORY[0x1E6960CC0] + 8), type.flags = v40, type.epoch = v39, CMTimeSubtract(&time2, &lhs, &type), CMTimeAbsoluteValue(&time, &time2), CMTimeMake(&time2, 1, 1000000000), lhs = time, CMTimeCompare(&lhs, &time2) <= 0) || (time.value = v45, time.timescale = v46, time.flags = v25, time.epoch = v26, time2.value = *MEMORY[0x1E6960CC0], time2.timescale = *(MEMORY[0x1E6960CC0] + 8), time2.flags = v40, time2.epoch = v39, CMTimeCompare(&time, &time2) < 1)))
        {
          v30 = *(v17 + 27);
          v31 = *(v17 + 28);
          time = *a4;
          v29 = EditMentorSetModeToScrub(v30, &time.value, v19, v20, cf, v31);
        }

        else
        {
          memset(&time, 0, sizeof(time));
          time2 = *a4;
          *&lhs.value = *v21;
          lhs.epoch = *(v17 + 123);
          CMTimeSubtract(&time, &time2, &lhs);
          memset(&time2, 0, sizeof(time2));
          lhs = *a4;
          type = *(v17 + 125);
          CMTimeAdd(&time2, &lhs, &type);
          v27 = *(v17 + 27);
          v28 = *(v17 + 28);
          lhs = time;
          type = time2;
          v29 = EditMentorSetModeToForwardPlayback(v27, &lhs.value, &type.value, v19, v20, 0, v28);
        }

        if (v42)
        {
          v14 = v42;
        }

        else
        {
          v14 = v29;
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v19)
        {
          CFRelease(v19);
        }

        v13 = v41;
        if (v20)
        {
          CFRelease(v20);
        }
      }

      ++v15;
    }

    while (v15 < FigCFRangeGetLimit());
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (a6)
  {
    *a6 = v13;
  }

  return v14;
}

__CFDictionary *bossCopyOptionsDictionaryForMentors(uint64_t a1, int a2, const void *a3, const void *a4, const void *a5, const void *a6, int a7, int a8, float a9, char a10, char a11, char a12, char a13, char a14, int a15, char a16, void *value, char a18)
{
  v40 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v26 = Mutable;
  if (*(a1 + 160) == 1)
  {
    v27 = kVideoMentorScrubPolicy_BlendFrames;
  }

  else
  {
    v27 = kVideoMentorScrubPolicy_FrameAccurate;
  }

  CFDictionarySetValue(Mutable, @"ScrubPolicy", *v27);
  if (a10)
  {
    v28 = &kMentorPrerollPolicy_PrerollUntilOutputReachesLowWaterOrSampleNotImmediatelyAvailable;
    if (a9 <= 1.0)
    {
      v28 = &kMentorPrerollPolicy_PrerollUntilOutputReachesLowWater;
    }

    CFDictionarySetValue(v26, @"PrerollPolicy", *v28);
  }

  v29 = &kMentorReadPolicy_Immediate;
  if (a12)
  {
    v29 = &kMentorReadPolicy_Scheduled;
  }

  if (a11)
  {
    v29 = &kMentorReadPolicy_DeferUntilMakeDataReady;
  }

  CFDictionarySetValue(v26, @"ReadPolicy", *v29);
  if (a2 == 2)
  {
    v30 = &kMentorModeChangePolicy_CancelPreviousOutput;
  }

  else
  {
    v30 = &kMentorModeChangePolicy_RepurposeOrCancelPreviousOutput;
  }

  if (a2 == 1)
  {
    v30 = &kMentorModeChangePolicy_PreservePreviousOutput;
  }

  CFDictionarySetValue(v26, @"ModeChangePolicy", *v30);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  if (a3)
  {
    CFDictionarySetValue(v26, @"DefaultGradualDecoderRefresh", a3);
  }

  if (a4)
  {
    CFDictionarySetValue(v26, @"BonusAudioPrimingPacketCountAtStart", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(v26, @"PostDecoderDrain", a5);
  }

  if (a6)
  {
    CFDictionarySetValue(v26, @"TrimDurationAtEOF", a6);
  }

  v31 = &kMentorCursorAccuracy_Exact;
  if (!*(a1 + 130))
  {
    v31 = &kMentorCursorAccuracy_Approximate;
  }

  CFDictionarySetValue(v26, @"CursorAccuracy", *v31);
  v32 = MEMORY[0x1E695E4C0];
  if (a7)
  {
    CFDictionarySetValue(v26, @"TrimSampleBufferDurations", *MEMORY[0x1E695E4C0]);
  }

  v33 = MEMORY[0x1E695E4D0];
  if (a8)
  {
    CFDictionarySetValue(v26, @"SynchronouslyResetOutput", *MEMORY[0x1E695E4D0]);
  }

  if (!*(a1 + 143) && *(a1 + 148))
  {
    if (!*(a1 + 128))
    {
      v39 = 0x40000000;
      if (bossGetVideoDecoderMaxSpeedThreshold(a1, &v39))
      {
        if (dword_1EAF16E78)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(a1 + 144) = v39;
      }
    }

    *(a1 + 148) = 0;
  }

  if (*(a1 + 140))
  {
    FigCFDictionarySetFloat32();
    FigCFDictionarySetFloat32();
  }

  else if (*(a1 + 144) < a9)
  {
    CFDictionarySetValue(v26, @"PlayIFramesOnly", *v33);
  }

  if (a15)
  {
    FigCFDictionarySetInt32();
  }

  if (*(a1 + 128) || *(a1 + 600))
  {
    CFDictionarySetValue(v26, @"PostUpcomingOutputPTSRangeChangeNotifications", *v33);
  }

  if (*(a1 + 432) == 1920298606 && *(a1 + 437))
  {
    CFDictionarySetValue(v26, @"SendPermanentEmptyMediaMarkers", *v32);
  }

  if (a13)
  {
    CFDictionarySetValue(v26, @"OKToWaitForTrackToGrow", *v33);
  }

  if (a14)
  {
    CFDictionarySetValue(v26, @"ConsolidateContinuousEdits", *v33);
  }

  if (a16)
  {
    CFDictionarySetValue(v26, @"RoundUpStartPTS", *v33);
  }

  if (value)
  {
    CFDictionarySetValue(v26, @"ExtendedCatchUpDuration", value);
  }

  if (a18)
  {
    v35 = v33;
  }

  else
  {
    v35 = v32;
  }

  CFDictionarySetValue(v26, @"RemoveExcessFramesInRefreshIntervals", *v35);
  FigCFDictionarySetInt32();
  return v26;
}

uint64_t EditMentorSetModeToScrub(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  context = a1;
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  dispatch_sync_f(*(a1 + 304), &context, EditMentorSetModeToScrub_fun);
  return v14;
}

uint64_t FigTrackReaderGetTrackEditWithIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

__n128 editMentorMapTrackTimeToMediaTimeUsingEditSegment@<Q0>(CMTime *a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  time1 = *a2;
  time2 = a2[2];
  v6 = CMTimeCompare(&time1, &time2);
  time1 = a2[3];
  time2 = a2[1];
  v7 = CMTimeCompare(&time1, &time2);
  if (v6 | v7)
  {
    v8 = v7;
    time2 = *a1;
    rhs = a2[2];
    CMTimeSubtract(&time1, &time2, &rhs);
    *a1 = time1;
    if (v8)
    {
      time2 = *a1;
      rhs = a2[1];
      CMTimeMultiplyTimeByTimeRatio();
      *a1 = time1;
    }

    time2 = *a1;
    rhs = *a2;
    CMTimeAdd(&time1, &time2, &rhs);
    *a1 = time1;
  }

  result = *&a1->value;
  *a3 = *&a1->value;
  *(a3 + 16) = a1->epoch;
  return result;
}

uint64_t editMentorRetainCurrentChildOrderAndOptionsDictionary(uint64_t a1, __CFDictionary **a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 328);
  if (v4)
  {
    CFRetain(*(a1 + 328));
  }

  if (a2)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if ((*(a1 + 380) & 0x1D) == 1 && (*(a1 + 404) & 0x1D) == 1)
    {
      v6 = (a1 + 392);
      time1 = *(a1 + 392);
      v10 = *MEMORY[0x1E6960CC0];
      *&time2.value = *MEMORY[0x1E6960CC0];
      v7 = *(MEMORY[0x1E6960CC0] + 16);
      time2.epoch = v7;
      if (CMTimeCompare(&time1, &time2))
      {
        v8 = (a1 + 440);
        time1 = *(a1 + 440);
        *&time2.value = v10;
        time2.epoch = v7;
        if (CMTimeCompare(&time1, &time2))
        {
          *&time1.value = *v8;
          time1.epoch = *(a1 + 456);
          *&time2.value = *v6;
          time2.epoch = *(a1 + 408);
          if (CMTimeCompare(&time1, &time2))
          {
            FigCFDictionaryGetFloat32IfPresent();
            *&time1.value = *v6;
            time1.epoch = *(a1 + 408);
            *&time2.value = *v8;
            time2.epoch = *(a1 + 456);
            CMTimeGetSeconds(&time1);
            time1 = time2;
            CMTimeGetSeconds(&time1);
            FigCFDictionarySetFloat32();
          }
        }
      }
    }

    if (*(a1 + 682))
    {
      CFDictionarySetValue(MutableCopy, @"RoundUpStartPTS", *MEMORY[0x1E695E4D0]);
    }

    *a2 = MutableCopy;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigPlaybackBossSetEndTime(uint64_t a1, CMTime *a2)
{
  if ((a2->flags & 0x1D) != 1)
  {
    *a2 = **&MEMORY[0x1E6960C70];
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *&a2->value;
  *(a1 + 192) = a2->epoch;
  *(a1 + 176) = v5;
  if (*(a1 + 432) == 1886151033)
  {
    v6 = *(a1 + 120);
    if (v6)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v6);
    }

    else
    {
      EffectiveRate = 1.0;
    }

    bossScheduleReachedEndCallbackForRate(a1, EffectiveRate);
  }

  return 0;
}

uint64_t FigPlaybackBossSetReverseEndTime(uint64_t a1, CMTime *a2)
{
  if ((a2->flags & 0x1D) != 1)
  {
    *a2 = **&MEMORY[0x1E6960C70];
  }

  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *&a2->value;
  *(a1 + 312) = a2->epoch;
  *(a1 + 296) = v5;
  if (*(a1 + 432) == 1886151033)
  {
    v6 = *(a1 + 120);
    if (v6)
    {
      EffectiveRate = CMTimebaseGetEffectiveRate(v6);
    }

    else
    {
      EffectiveRate = 1.0;
    }

    bossScheduleReachedEndCallbackForRate(a1, EffectiveRate);
  }

  return 0;
}

void FigPlaybackBossSetStopAtEnd(_BYTE *a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1 && !a1[16])
  {
    if (a1[848])
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    a1[137] = a2;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }
}

uint64_t FigPlaybackBossGetTimebase(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 120);
    }
  }

  return result;
}

uint64_t FigPlayabilityMonitorCreate(const void *a1, _DWORD *a2, CFTypeRef *a3, int64_t a4, const void *a5, const void *a6, int a7, UInt8 **a8)
{
  v102 = *MEMORY[0x1E69E9840];
  v98 = **&MEMORY[0x1E6960C70];
  valuePtr = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 8648);
  if (!Mutable)
  {
    FigPlayabilityMonitorCreate_cold_10(BOOLean);
    return LODWORD(BOOLean[0].value);
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, 8648);
  MutableBytePtr = CFDataGetMutableBytePtr(v15);
  bzero(MutableBytePtr, 0x21C8uLL);
  *MutableBytePtr = v15;
  if (*(*(CMBaseObjectGetVTable() + 16) + 80))
  {
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v17)
    {
      value_low = 4294954514;
LABEL_97:
      FigPlayabilityMonitorDestroy(MutableBytePtr);
      return value_low;
    }

    v18 = v17(a1, MutableBytePtr + 8);
    if (v18)
    {
LABEL_141:
      value_low = v18;
      goto LABEL_97;
    }
  }

  else
  {
    *(MutableBytePtr + 1) = CFRetain(a1);
  }

  *(MutableBytePtr + 2) = CFRetain(a5);
  *(MutableBytePtr + 3) = CFRetain(a6);
  v19 = FigReentrantMutexCreateWithFlags();
  *(MutableBytePtr + 6) = v19;
  if (!v19)
  {
    FigPlayabilityMonitorCreate_cold_9(BOOLean);
    goto LABEL_152;
  }

  v20 = FigReentrantMutexCreate();
  *(MutableBytePtr + 7) = v20;
  if (!v20)
  {
    FigPlayabilityMonitorCreate_cold_8(BOOLean);
    goto LABEL_152;
  }

  v21 = FigReentrantMutexCreate();
  *(MutableBytePtr + 1079) = v21;
  if (!v21)
  {
    FigPlayabilityMonitorCreate_cold_7(BOOLean);
    goto LABEL_152;
  }

  v22 = FigConditionVariableCreate();
  *(MutableBytePtr + 9) = v22;
  if (!v22)
  {
    FigPlayabilityMonitorCreate_cold_6(BOOLean);
    goto LABEL_152;
  }

  v18 = FigRetainProxyCreate();
  if (v18)
  {
    goto LABEL_141;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v18 = CMTimebaseCreateWithSourceClock(v13, HostTimeClock, MutableBytePtr + 4);
  if (v18)
  {
    goto LABEL_141;
  }

  v18 = CMTimebaseCreateWithSourceTimebase(v13, *(MutableBytePtr + 4), MutableBytePtr + 5);
  if (v18)
  {
    goto LABEL_141;
  }

  CMTimebaseSetRate(*(MutableBytePtr + 4), 1.0);
  v24 = malloc_type_calloc(a4, 0x30uLL, 0x10200403DD621CEuLL);
  *(MutableBytePtr + 11) = v24;
  if (!v24)
  {
    FigPlayabilityMonitorCreate_cold_5(BOOLean);
    goto LABEL_152;
  }

  *(MutableBytePtr + 10) = 0;
  *(MutableBytePtr + 24) = 1;
  MutableBytePtr[314] = 0;
  if (*(MutableBytePtr + 2))
  {
    CMByteStreamGetCMBaseObject();
    FigCRABSGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      BOOLean[0].value = 0;
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v26 && !v26(CMBaseObject, @"CRABS_ReadAheadActive", v13, BOOLean))
      {
        MutableBytePtr[314] = CFBooleanGetValue(BOOLean[0].value) == 0;
        CFRelease(BOOLean[0].value);
      }

      v27 = CMByteStreamGetCMBaseObject();
      v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v28)
      {
        v28(v27, @"CRABS_ReportingAgent", v13, MutableBytePtr + 8568);
      }
    }
  }

  *(MutableBytePtr + 26) = 0;
  *(MutableBytePtr + 33) = 0x7FFFFFFFFFFFFFFFLL;
  MutableBytePtr[8554] = 1;
  if (a7)
  {
    if (a7 != 1)
    {
      goto LABEL_27;
    }

    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *(MutableBytePtr + 28) = v29;
LABEL_27:
  CMTimeMakeWithSeconds(BOOLean, 5.0, 1000);
  *(MutableBytePtr + 160) = BOOLean[0];
  v30 = *(MutableBytePtr + 28);
  if (v30 == 1)
  {
    if (*(MutableBytePtr + 29) == 0.0)
    {
      *(MutableBytePtr + 29) = 1067869798;
    }

    if (*(MutableBytePtr + 30) == 0.0)
    {
      *(MutableBytePtr + 30) = 1066611507;
    }

    if (*(MutableBytePtr + 31) == 0.0)
    {
      *(MutableBytePtr + 31) = 1066192077;
    }

    if (*(MutableBytePtr + 32) == 0.0)
    {
      *(MutableBytePtr + 32) = 1067869798;
    }

    if (*(MutableBytePtr + 33) == 0.0)
    {
      *(MutableBytePtr + 33) = 1077936128;
    }

    if (*(MutableBytePtr + 17) == 0.0)
    {
      *(MutableBytePtr + 17) = 0x404E000000000000;
    }

    if (*(MutableBytePtr + 18) == 0.0)
    {
      *(MutableBytePtr + 18) = 0x4024000000000000;
    }

    if (*(MutableBytePtr + 19) == 0.0)
    {
      *(MutableBytePtr + 19) = 0x3FF0000000000000;
    }
  }

  v31 = *(MutableBytePtr + 1071);
  if (v31)
  {
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v32)
    {
      v32(v31, 0x1F0B645D8, 0x1F0B3F4D8, v30, 0);
    }
  }

  v33 = FigDispatchQueueCreateWithPriority();
  *(MutableBytePtr + 40) = v33;
  if (!v33)
  {
    FigPlayabilityMonitorCreate_cold_4(BOOLean);
    goto LABEL_152;
  }

  *(MutableBytePtr + 1070) = voucher_copy();
  v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(MutableBytePtr + 40));
  *(MutableBytePtr + 37) = v34;
  if (!v34)
  {
    FigPlayabilityMonitorCreate_cold_3(BOOLean);
    goto LABEL_152;
  }

  dispatch_set_context(v34, *(MutableBytePtr + 41));
  dispatch_source_set_timer(*(MutableBytePtr + 37), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(MutableBytePtr + 37), fpm_UpdateTimerProc);
  dispatch_resume(*(MutableBytePtr + 37));
  v35 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(MutableBytePtr + 40));
  *(MutableBytePtr + 38) = v35;
  if (!v35)
  {
    FigPlayabilityMonitorCreate_cold_2(BOOLean);
    goto LABEL_152;
  }

  dispatch_set_context(v35, *(MutableBytePtr + 41));
  dispatch_source_set_timer(*(MutableBytePtr + 38), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(MutableBytePtr + 38), fpm_StallWarningProc);
  dispatch_resume(*(MutableBytePtr + 38));
  v18 = CMTimebaseAddTimerDispatchSource(*(MutableBytePtr + 3), *(MutableBytePtr + 38));
  if (v18)
  {
    goto LABEL_141;
  }

  LODWORD(BOOLean[0].value) = 32;
  v36 = CFNumberCreate(v13, kCFNumberSInt32Type, BOOLean);
  v37 = CMByteStreamGetCMBaseObject();
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v38)
  {
    v38(v37, *MEMORY[0x1E6960DB0], v36);
  }

  CFRelease(v36);
  if (a4 >= 1)
  {
    v39 = a3;
    while (1)
    {
      v99.value = 0;
      v93.value = 0;
      v95 = 0;
      v96 = 0;
      v94 = 0;
      v40 = *(MutableBytePtr + 1);
      v41 = *a2;
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v42)
      {
        if (!v42(v40, v41, &v99, &v94))
        {
          break;
        }
      }

LABEL_78:
      if (v96)
      {
        CFRelease(v96);
        v96 = 0;
      }

      if (v95)
      {
        CFRelease(v95);
        v95 = 0;
      }

      if (v93.value)
      {
        CFRelease(v93.value);
      }

      ++v39;
      ++a2;
      if (!--a4)
      {
        goto LABEL_89;
      }
    }

    if (v94 == 1952807028 || v94 == 1668310898)
    {
      FigTrackReaderGetFigBaseObject();
      v44 = v43;
      v45 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v45)
      {
        LOBYTE(v45) = v45(v44, @"CaptionSampleCursorService", v13, &v93) == 0;
      }

      value = v93.value;
      if (v93.value)
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      if (v93.value)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v46 = 0;
      value = v93.value;
      if (v93.value)
      {
        goto LABEL_67;
      }
    }

    v55 = v99.value;
    v56 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v56 || v56(v55, &v93))
    {
LABEL_76:
      if (v99.value)
      {
        CFRelease(v99.value);
        v99.value = 0;
      }

      goto LABEL_78;
    }

    value = v93.value;
LABEL_67:
    v48 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v48)
    {
      BOOLean[0] = **&MEMORY[0x1E6960CC0];
      if (!v48(value, BOOLean, &v96, 0, 0))
      {
        v49 = v93.value;
        v50 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v50)
        {
          BOOLean[0] = **&MEMORY[0x1E6960C88];
          if (!v50(v49, BOOLean, 1, &v95, 0, 0))
          {
            *(*(MutableBytePtr + 11) + 48 * *(MutableBytePtr + 10)) = *a2;
            *(*(MutableBytePtr + 11) + 48 * *(MutableBytePtr + 10) + 8) = CFRetain(v99.value);
            *(*(MutableBytePtr + 11) + 48 * *(MutableBytePtr + 10) + 16) = CFRetain(v96);
            v51 = CFRetain(v95);
            v53 = *(MutableBytePtr + 10);
            v52 = *(MutableBytePtr + 11);
            *(v52 + 48 * v53 + 24) = v51;
            if (a3)
            {
              v54 = *v39;
              if (*v39)
              {
                v54 = CFRetain(v54);
                v53 = *(MutableBytePtr + 10);
                v52 = *(MutableBytePtr + 11);
              }
            }

            else
            {
              v54 = 0;
            }

            v57 = v52 + 48 * v53;
            *(v57 + 32) = v54;
            *(v57 + 40) = v46;
            *(MutableBytePtr + 10) = v53 + 1;
          }
        }
      }
    }

    goto LABEL_76;
  }

LABEL_89:
  if (!*(MutableBytePtr + 10))
  {
    FigPlayabilityMonitorCreate_cold_1(BOOLean);
LABEL_152:
    value_low = LODWORD(BOOLean[0].value);
    if (!LODWORD(BOOLean[0].value))
    {
      return value_low;
    }

    goto LABEL_97;
  }

  FigFormatReaderUtilityGetDuration(*(MutableBytePtr + 1), 1, &v98);
  if (dword_1EAF16BF0)
  {
    LODWORD(v93.value) = 0;
    LOBYTE(v96) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v59 = v93.value;
    v60 = v96;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v96))
    {
      v61 = v59;
    }

    else
    {
      v61 = v59 & 0xFFFFFFFE;
    }

    if (v61)
    {
      BOOLean[0] = v98;
      Seconds = CMTimeGetSeconds(BOOLean);
      LODWORD(v99.value) = 136315650;
      *(&v99.value + 4) = "FigPlayabilityMonitorCreate";
      LOWORD(v99.flags) = 2048;
      *(&v99.flags + 2) = MutableBytePtr;
      HIWORD(v99.epoch) = 2048;
      v100 = Seconds;
      _os_log_send_and_compose_impl(v61, 0, BOOLean, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v60, "<< FigPlayMonitor >> %s: [%p] Movie duration = %1.5G s", &v99, 32, *&v89);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((v98.flags & 0x1D) == 1)
  {
    BOOLean[0] = v98;
    v99 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(BOOLean, &v99) >= 1)
    {
      if (!*(MutableBytePtr + 2))
      {
LABEL_122:
        MutableBytePtr[8552] = 0;
LABEL_123:
        fpm_prepareDataRateProfile(MutableBytePtr);
        goto LABEL_124;
      }

      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        v64 = CMByteStreamGetCMBaseObject();
        v65 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v65)
        {
          v66 = *MEMORY[0x1E695FF78];
          BOOLean[0].value = 0;
          v67 = v65(v64, v66, v13, BOOLean);
          if (v67 || !BOOLean[0].value)
          {
            if (v67)
            {
              goto LABEL_119;
            }
          }

          else
          {
            CFNumberGetValue(BOOLean[0].value, kCFNumberSInt64Type, &valuePtr);
            CFRelease(BOOLean[0].value);
          }

          v68 = valuePtr;
          BOOLean[0] = v98;
          v93.value = (v68 / CMTimeGetSeconds(BOOLean));
          v69 = CFNumberCreate(v13, kCFNumberSInt64Type, &v93);
          if (dword_1EAF16BF0)
          {
            LODWORD(v96) = 0;
            LOBYTE(v95) = 0;
            v70 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v71 = v96;
            v72 = v95;
            if (os_log_type_enabled(v70, v95))
            {
              v73 = v71;
            }

            else
            {
              v73 = v71 & 0xFFFFFFFE;
            }

            if (v73)
            {
              LODWORD(v99.value) = 136315650;
              *(&v99.value + 4) = "FigPlayabilityMonitorCreate";
              LOWORD(v99.flags) = 2048;
              *(&v99.flags + 2) = MutableBytePtr;
              HIWORD(v99.epoch) = 2048;
              v100 = (8 * v93.value) / 1000.0;
              LODWORD(v88) = 32;
              _os_log_send_and_compose_impl(v73, 0, BOOLean, 128, &dword_1962D5000, v70, v72, "<< FigPlayMonitor >> %s: [%p] indicated bitrate estimate %g kbps", &v99, v88, *&v89);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v74 = CMByteStreamGetCMBaseObject();
          v75 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v75)
          {
            v75(v74, @"CRABS_DataConsumptionRateHint", v69);
          }

          if (v69)
          {
            CFRelease(v69);
          }
        }
      }
    }
  }

LABEL_119:
  if (!*(MutableBytePtr + 2))
  {
    goto LABEL_122;
  }

  BOOLean[0].value = 0;
  v76 = CMByteStreamGetCMBaseObject();
  v77 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v77 || v77(v76, *MEMORY[0x1E695FF80], v13, BOOLean))
  {
    goto LABEL_122;
  }

  v87 = CFBooleanGetValue(BOOLean[0].value);
  CFRelease(BOOLean[0].value);
  MutableBytePtr[8552] = 0;
  if (!v87)
  {
    goto LABEL_123;
  }

LABEL_124:
  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  if (CMBaseObjectIsMemberOfClass() && *(MutableBytePtr + 3))
  {
    v78 = CMByteStreamGetCMBaseObject();
    v79 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v79)
    {
      v79(v78, @"CRABS_NetworkUrgencyMonitor", v13, MutableBytePtr + 8640);
    }

    v80 = *(MutableBytePtr + 1080);
    if (v80)
    {
      FigNetworkUrgencyMonitorSetTimebase(v80, *(MutableBytePtr + 3));
    }
  }

  FigRetainProxyLockMutex();
  MutableBytePtr[313] = 1;
  CMTimebaseGetTime(BOOLean, *(MutableBytePtr + 3));
  v99 = **&MEMORY[0x1E6960CC0];
  CMTimeMaximum(&v93, BOOLean, &v99);
  *(MutableBytePtr + 15) = *&v93.value;
  epoch = v93.epoch;
  *(MutableBytePtr + 32) = v93.epoch;
  *(MutableBytePtr + 216) = *(MutableBytePtr + 15);
  *(MutableBytePtr + 29) = epoch;
  fpm_ensureUpdatePrimed(MutableBytePtr);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  FigRetainProxyUnlockMutex();
  if (dword_1EAF16BF0)
  {
    LODWORD(v93.value) = 0;
    LOBYTE(v96) = 0;
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v83 = v93.value;
    v84 = v96;
    if (os_log_type_enabled(v82, v96))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 0xFFFFFFFE;
    }

    if (v85)
    {
      LODWORD(v99.value) = 136315650;
      *(&v99.value + 4) = "FigPlayabilityMonitorCreate";
      LOWORD(v99.flags) = 2048;
      *(&v99.flags + 2) = MutableBytePtr;
      HIWORD(v99.epoch) = 2048;
      v100 = *&a5;
      LODWORD(v88) = 32;
      _os_log_send_and_compose_impl(v85, 0, BOOLean, 128, &dword_1962D5000, v82, v84, "<< FigPlayMonitor >> %s: [%p] new monitor (stream %p)", &v99, v88, v89);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  value_low = 0;
  *a8 = MutableBytePtr;
  return value_low;
}

uint64_t FigCachedFileByteStreamSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v12 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"CFBS_EnableCaching"))
  {
    return 4294954512;
  }

  v6 = *MEMORY[0x1E695E4D0];
  v7 = *MEMORY[0x1E695E4D0] == a3;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 120) == v7)
  {
    goto LABEL_10;
  }

  *(DerivedStorage + 120) = v7;
  v8 = *(DerivedStorage + 24);
  if (v6 == a3)
  {
    FigReadCacheContainerShowInterestInCaching(v8);
  }

  else
  {
    FigReadCacheContainerShowDisinterestInCaching(v8);
  }

  if (!FigServer_IsMediaserverd())
  {
LABEL_10:
    FigSimpleMutexUnlock();
  }

  else
  {
    v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kFigCachedFileByteStreamProperty_EnableCaching, &v12, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v10)
    {
      FigCachedFileByteStreamSetProperty_cold_1(&v13);
      return v13;
    }

    v11 = v10;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    FigSimpleMutexUnlock();
    CFRelease(v11);
  }

  return 0;
}

void fpm_ensureUpdatePrimed(uint64_t a1)
{
  if (!*(a1 + 312) || fpm_shouldUpdateAggressively(a1))
  {
    v2 = dispatch_time(0, 0);
    v3 = 0;
    v4 = *(a1 + 192) + 500000000;
    v5 = v4 - v2;
    if (v4 >= v2)
    {
      if (fpm_shouldUpdateAggressively(a1))
      {
        v3 = 0;
      }

      else
      {
        v3 = v5;
      }
    }

    *(a1 + 312) = 1;
    v6 = *(a1 + 296);
    v7 = dispatch_time(0, v3);

    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

double FigSyncMomentSourceSetTimebase(void *a1, const void *a2)
{
  if (a1)
  {
    CFRetain(a1);
    FigSimpleMutexLock();
    v5 = a1[8];
    if (v5 == a2)
    {
      goto LABEL_8;
    }

    if (v5)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = a1[8];
      if (v6)
      {
        CFRelease(v6);
      }

      a1[8] = 0;
    }

    if (a2)
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      a1[8] = CFRetain(a2);
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      figSyncMomentSource_UpdateToCurrentTimebaseRate(a1);
      figSyncMomentSource_getSyncMoment(a1, 3, v9);
      FigSimpleMutexUnlock();
      figSyncMomentSource_SendMoment(a1, v9, 0);
    }

    else
    {
LABEL_8:
      FigSimpleMutexUnlock();
    }

    CFRelease(a1);
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954946, "<<<< TimebaseSync >>>>", 788, v2);
  }

  return result;
}

void figSyncMomentSource_SendMoment(dispatch_queue_t *cf, __int128 *a2, int a3)
{
  v4 = a2[5];
  v20 = a2[4];
  v21 = v4;
  v22 = a2[6];
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  v6 = a2[3];
  v18 = a2[2];
  v19 = v6;
  v23 = *(a2 + 14);
  v24 = 0;
  context = cf;
  if (!a3)
  {
    dispatch_sync_f(cf[10], &context, figSyncMomentSource_updatePendingMoment);
    if (!v24)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = DWORD1(v16);
  v8 = *(a2 + 56);
  v9 = *(a2 + 88);
  v29 = *(a2 + 72);
  v30 = v9;
  v31 = *(a2 + 104);
  v10 = *(a2 + 24);
  v25 = *(a2 + 8);
  v26 = v10;
  v27 = *(a2 + 40);
  v28 = v8;
  if (*(cf + 208))
  {
    v7 = *(cf + 23) | DWORD1(v16);
  }

  v11 = *(cf + 208) == 0;
  *(cf + 22) = v16;
  *(cf + 23) = v7;
  v12 = v30;
  *(cf + 10) = v29;
  *(cf + 11) = v12;
  *(cf + 12) = v31;
  v13 = v26;
  *(cf + 6) = v25;
  *(cf + 7) = v13;
  v14 = v28;
  *(cf + 8) = v27;
  *(cf + 9) = v14;
  LOBYTE(v24) = v11;
  *(cf + 208) = 1;
  if (v11)
  {
LABEL_5:
    CFRetain(cf);
    dispatch_async_f(cf[27], cf, figSyncMomentSource_sendMomentInternal);
  }
}

double FigTimebaseGetSyncMoment(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_20();
  if (!figtimebase_getSyncMomentInternal(v3, 0, v7))
  {
    v5 = v9;
    *a2 = 0u;
    *(a2 + 16) = v5;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 8) = v8;
    v6 = v7[1] & 0xFFFFFFF7;
    *a2 = 72;
    *(a2 + 4) = v6;
    *(a2 + 32) = v10;
    *(a2 + 56) = v12;
    *(a2 + 64) = 0;
    *(a2 + 40) = v11;
    result = v13;
    *(a2 + 64) = v13;
  }

  return result;
}

uint64_t playerfig_doingGapless(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 77))
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

LABEL_6:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_15;
  }

  if (*(DerivedStorage + 48) != 1.0)
  {
    if (dword_1EAF16A10)
    {
LABEL_4:
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
LABEL_15:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  if (*(DerivedStorage + 816))
  {
    if (dword_1EAF16A10)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(DerivedStorage + 840))
  {
    if (!dword_1EAF16A10)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (!dword_1EAF16A10)
  {
    return 1;
  }

  v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  v6 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v6;
}

double bossScheduleReachedEndCallbackForTime(uint64_t a1, CMTime *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    goto LABEL_4;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 32));
  *(a1 + 168) = v9;
  if (!v9)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
  }

  dispatch_set_context(v9, a1);
  dispatch_source_set_event_handler_f(*(a1 + 168), figPlaybackBossReachedEndWithContext);
  dispatch_resume(*(a1 + 168));
  if (!CMTimebaseAddTimerDispatchSource(*(a1 + 120), *(a1 + 168)))
  {
    v5 = *(a1 + 168);
LABEL_4:
    v6 = *&a2->value;
    *(a1 + 336) = a2->epoch;
    *(a1 + 320) = v6;
    v7 = *(a1 + 120);
    time = *a2;
    CMTimebaseSetTimerDispatchSourceNextFireTime(v7, v5, &time, 1u);
  }

  return result;
}

void bossConfigureRatePlan(int a1, uint64_t a2, float *a3, uint64_t a4, float a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (*a3)
  {
    v8 = 2.1;
  }

  else
  {
    v8 = a3[2];
  }

  v9 = fabs(a5);
  *(a4 + 8) = 0;
  if (!a1)
  {
    *a4 = a5;
    *(a4 + 4) = v9;
    goto LABEL_22;
  }

  if (*a2 && *(a2 + 4) > a5 || *(a2 + 1) && *(a2 + 8) < a5)
  {
    goto LABEL_9;
  }

  if (v8 < v9)
  {
    if ((getPlaybackBossSnippetRate_preferencesChecked & 1) == 0)
    {
      v10 = CFPreferencesCopyAppValue(@"snippet_rate", @"com.apple.coremedia");
      getPlaybackBossSnippetRate_preferencesChecked = 1;
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v11, kCFNumberFloat32Type, &getPlaybackBossSnippetRate_playbackBossSnippetRate);
        }

        CFRelease(v11);
      }
    }

    *(a4 + 4) = getPlaybackBossSnippetRate_playbackBossSnippetRate;
    goto LABEL_20;
  }

  if (a5 == 0.0)
  {
    *(a4 + 4) = 1065353216;
LABEL_20:
    *a4 = a5;
LABEL_21:
    *(a4 + 8) = 1;
    goto LABEL_22;
  }

  if (v7)
  {
    FPSupport_ConfigSnapRateForLQZL((a4 + 4), a4, a5);
  }

  else
  {
    if (a3[1] > v9)
    {
LABEL_9:
      *(a4 + 9) = 1;
      *(a4 + 4) = 1065353216;
      *a4 = a5;
      goto LABEL_22;
    }

    *a4 = a5;
    *(a4 + 4) = v9;
  }

  if (a5 <= 0.0)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (dword_1EAF16E78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t bossCheckTimeWithEndTimes(uint64_t a1, CMTime *a2, uint64_t a3, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a2->flags & 0x1D) != 1 || a4 == 0.0)
  {
    return 0;
  }

  if (a4 > 0.0)
  {
    if ((*(a1 + 188) & 0x1D) == 1)
    {
      v7 = (a1 + 176);
      time1 = *a2;
      time2 = *(a1 + 176);
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        if (dword_1EAF16E78)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    return 0;
  }

  if ((*(a1 + 308) & 0x1D) != 1)
  {
    return 0;
  }

  v7 = (a1 + 296);
  time1 = *a2;
  time2 = *(a1 + 296);
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return 0;
  }

  if (dword_1EAF16E78)
  {
LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_13:
  if (a3)
  {
    v9 = *v7;
    *(a3 + 16) = *(v7 + 2);
    *a3 = v9;
  }

  if (dword_1EAF16E78)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = MEMORY[0x1E6960C70];
  *(a1 + 320) = *MEMORY[0x1E6960C70];
  *(a1 + 336) = *(v11 + 16);
  CMTimebaseSetTimerDispatchSourceToFireImmediately(*(a1 + 120), *(a1 + 168));
  return 1;
}