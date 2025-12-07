uint64_t itemfig_wantsDifferentSpatializationConfiguration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 368);
  if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    v7 = *MEMORY[0x1E695E480];
    v8 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 368), v6);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (*(ValueAtIndex + 3))
      {
        FigRenderPipelineGetFigBaseObject();
        v11 = v10;
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v12)
        {
          v12(v11, @"SpatializationEnabled", v7, &cf);
        }

        if (cf)
        {
          v13 = cf == v8;
          if (itemfig_shouldEnableSpatializationForTrack(a1, *ValueAtIndex) != v13)
          {
            break;
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_14;
      }
    }

    v14 = 1;
  }

  else
  {
LABEL_14:
    v14 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v14;
}

uint64_t fp_updateRenderPipelineSpeedRamp(uint64_t a1, uint64_t a2)
{
  FigRenderPipelineGetFigBaseObject();
  v4 = v3;
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {

    return v8(v4, @"SpeedRampData", a2);
  }

  return result;
}

uint64_t fp_updateRenderPipelineOverlapRange(uint64_t a1, uint64_t a2)
{
  FigRenderPipelineGetFigBaseObject();
  v4 = v3;
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = VTable + 8;
  v8 = *(v7 + 56);
  if (v8)
  {

    return v8(v4, @"OverlapRange", a2);
  }

  return result;
}

void itemfig_CopyCommonMetadata(void *a1, const __CFArray *AllCommonKeys, const __CFAllocator *a3, __CFDictionary **a4)
{
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  cf = 0;
  value = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1EAF16A08;
    v10 = v4;
    v11 = 4294954511;
    v12 = 26077;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< FigFilePlayer >>>>", v12, v10);
    return;
  }

  if (!a4)
  {
    v9 = qword_1EAF16A08;
    v10 = v4;
    v11 = 4294954516;
    v12 = 26080;
    goto LABEL_5;
  }

  if (!itemfig_assureBasicsReadyForInspection(a1) && (AllCommonKeys || (AllCommonKeys = FigMetadataGetAllCommonKeys()) != 0))
  {
    Count = CFArrayGetCount(AllCommonKeys);
    if (Count < 1)
    {
      itemfig_CopyCommonMetadata_cold_3(v57);
      Mutable = 0;
      goto LABEL_70;
    }

    v13 = 0;
    v47 = 0;
    v49 = 0;
    v14 = 0;
    v15 = 0;
    Mutable = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(AllCommonKeys, v13);
      v18 = v56;
      if (!v15 && !v56)
      {
        FigFormatReaderGetFigBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v15 = v21(v20, @"QuickTimeMetadataReader", a3, &v56) != 0;
        }

        else
        {
          v15 = 1;
        }

        v18 = v56;
      }

      if (!v18 || (v22 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v22(v18, @"comn", ValueAtIndex, 0, a3, &value, &cf))
      {
        v23 = v55;
        if (!v49 && !v55)
        {
          FigFormatReaderGetFigBaseObject();
          v25 = v24;
          v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v26)
          {
            v27 = v26(v25, @"iTunesMetadataReader", a3, &v55) != 0;
          }

          else
          {
            v27 = 1;
          }

          v49 = v27;
          v23 = v55;
        }

        if (!v23 || (v28 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v28(v23, @"comn", ValueAtIndex, 0, a3, &value, &cf))
        {
          v29 = v54;
          if (!v14 && !v54)
          {
            FigFormatReaderGetFigBaseObject();
            v31 = v30;
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v32)
            {
              v14 = v32(v31, @"QuickTimeUserDataReader", a3, &v54) != 0;
            }

            else
            {
              v14 = 1;
            }

            v29 = v54;
          }

          if (!v29 || (v33 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0 || v33(v29, @"comn", ValueAtIndex, 0, a3, &value, &cf))
          {
            v34 = v53;
            if (!v53)
            {
              FigFormatReaderGetFigBaseObject();
              v36 = v35;
              v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v37)
              {
                if (v37(v36, @"ISOUserDataReader", a3, &v53))
                {
                  v14 = 1;
                }
              }

              else
              {
                v14 = 1;
              }

              v34 = v53;
              if (!v53)
              {
                goto LABEL_48;
              }
            }

            v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v38 || v38(v34, @"comn", ValueAtIndex, 0, a3, &value, &cf))
            {
LABEL_48:
              v39 = v52;
              if (!v47 && !v52)
              {
                FigFormatReaderGetFigBaseObject();
                v41 = v40;
                v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v42)
                {
                  v43 = v42(v41, @"MetadataReader", a3, &v52) != 0;
                }

                else
                {
                  v43 = 1;
                }

                v47 = v43;
                v39 = v52;
              }

              if (v39)
              {
                v44 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v44)
                {
                  v44(v39, @"comn", ValueAtIndex, 0, a3, &value, &cf);
                }
              }
            }
          }
        }
      }

      if (value)
      {
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (!Mutable)
          {
            itemfig_CopyCommonMetadata_cold_2(v57);
            goto LABEL_70;
          }
        }

        v45 = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v45)
        {
          itemfig_CopyCommonMetadata_cold_1(v57);
          goto LABEL_70;
        }

        v46 = v45;
        CFDictionaryAddValue(v45, @"MetadataCommonKey", ValueAtIndex);
        CFDictionaryAddValue(v46, @"MetadataValue", value);
        if (cf)
        {
          CFDictionaryAddValue(v46, @"MetadataProperties", cf);
        }

        CFDictionaryAddValue(Mutable, ValueAtIndex, v46);
        CFRelease(v46);
        CFRelease(value);
        value = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v13;
    }

    while (Count != v13);
    if (!Mutable)
    {
      goto LABEL_70;
    }

    *a4 = Mutable;
  }

  Mutable = 0;
LABEL_70:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void itemfig_GetNextThumbnailTime(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v11;
  cf = 0;
  if (*DerivedStorage)
  {
    v12 = qword_1EAF16A08;
    v13 = v4;
    v14 = 4294954511;
    v15 = 25892;
LABEL_7:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v14, "<<<< FigFilePlayer >>>>", v15, v13);
    return;
  }

  if (!a4)
  {
    v12 = qword_1EAF16A08;
    v13 = v4;
    v14 = 4294954516;
    v15 = 25895;
    goto LABEL_7;
  }

  *a4 = v10;
  *(a4 + 16) = v11;
  if (a3 >= 4)
  {
    v12 = qword_1EAF16A08;
    v13 = v4;
    v14 = 4294954516;
    v15 = 25914;
    goto LABEL_7;
  }

  v16 = DerivedStorage;
  v17 = dword_196E72750[a3];
  if (!itemfig_assureBasicsReadyForInspection(a1))
  {
    v18 = *(v16 + 260);
    if (v18)
    {
      v19 = *(v16 + 126);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v20)
      {
        if (!v20(v19, v18, &cf, 0))
        {
          v21 = *a2;
          v22 = *(a2 + 16);
          if (!FigPlaybackBossSnapTimeToIFrame(cf, 0, &v21, v17, &v23))
          {
            *a4 = v23;
          }
        }
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, DWORD2(v21), v22);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t itemfig_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v9)
  {
    itemfig_SetTrackProperty_cold_2(&v19);
    return v19;
  }

  v10 = v9;
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 1240))
  {
    v12 = *(DerivedStorage + 1312);
    if (v12 || (v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]), (*(DerivedStorage + 1312) = v12) != 0))
    {
      v13 = a2;
      Value = CFDictionaryGetValue(v12, a2);
      if (Value)
      {
        v15 = Value;
        CFRetain(Value);
LABEL_10:
        if (a4)
        {
          CFDictionarySetValue(v15, a3, a4);
        }

        else
        {
          CFDictionaryRemoveValue(v15, a3);
        }

        FigSimpleMutexUnlock();
        CFRelease(v15);
        v11 = 0;
        goto LABEL_14;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v15 = Mutable;
        CFDictionarySetValue(*(DerivedStorage + 1312), v13, Mutable);
        goto LABEL_10;
      }
    }

    itemfig_SetTrackProperty_cold_1();
    v11 = v18;
    goto LABEL_14;
  }

  FigSimpleMutexUnlock();
  v11 = itemfig_setTrackPropertyInternal(a1, a2, a3, a4, 1);
LABEL_14:
  CFRelease(v10);
  return v11;
}

void itemfig_SeekToDateWithID(uint64_t a1, uint64_t a2, int a3)
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    v6 = qword_1EAF16A08;
    v7 = v3;
    v8 = 4294954511;
    v9 = 20342;
  }

  else
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v10)
    {
      v11 = v10;
      itemfig_postSeekWasCanceledNotification(v10, a1, a3, 0);
      CFRelease(v11);
      return;
    }

    v6 = qword_1EAF16A08;
    v7 = v3;
    v8 = 4294954516;
    v9 = 20347;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v8, "<<<< FigFilePlayer >>>>", v9, v7);
}

uint64_t itemfig_SetCurrentTimeWithRangeAndID(const void *a1, __int128 *a2, __int16 a3, __int128 *a4, __int128 *a5, const void *a6)
{
  v10 = *a2;
  v9 = *a4;
  v7 = *a5;
  v8 = *(a5 + 2);
  return itemfig_setCurrentTimeWithRangeAndIDGuts(a1, &v10, a3, &v9, &v7, a6, 0, 0);
}

void itemfig_CopyAsset(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v5 = qword_1EAF16A08;
    v6 = v2;
    v7 = 4294954511;
    v8 = 25976;
LABEL_3:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, "<<<< FigFilePlayer >>>>", v8, v6);
    return;
  }

  if (!a2)
  {
    v5 = qword_1EAF16A08;
    v6 = v2;
    v7 = 4294954516;
    v8 = 25979;
    goto LABEL_3;
  }

  v9 = *(DerivedStorage + 1256);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *a2 = v9;
}

void itemfig_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, int a3, CMBufferRef *a4)
{
  v21 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    v9 = qword_1EAF16A08;
    v10 = v4;
    v11 = 4294954511;
    v12 = 26005;
LABEL_5:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v11, "<<<< FigFilePlayer >>>>", v12, v10);
    return;
  }

  if (!a4)
  {
    v9 = qword_1EAF16A08;
    v10 = v4;
    v11 = 4294954516;
    v12 = 26008;
    goto LABEL_5;
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v13)
  {
    v14 = v13;
    if (!itemfig_getTrackStorage(a1, a2, &v21))
    {
      CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v15 = v21;
      v16 = *(v21 + 21);
      if (v16 && (Count = CFArrayGetCount(v16), Count >= 1))
      {
        v18 = Count;
        v19 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v15 + 21), v19);
          if (*(ValueAtIndex + 7) == a3)
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_15;
          }
        }

        *a4 = CMBufferQueueDequeueIfDataReadyAndRetain(*(ValueAtIndex + 4));
      }

      else
      {
LABEL_15:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23[1]);
      }

      FigSimpleMutexUnlock();
    }

    CFRelease(v14);
  }

  else
  {
    itemfig_ExtractAndRetainNextSampleBuffer_cold_1(v23);
  }
}

uint64_t itemfig_SetCurrentTimeWithOptions(const void *a1, __int128 *a2, uint64_t a3)
{
  v13 = 0;
  v12 = **&MEMORY[0x1E6960C70];
  v11 = v12;
  v10 = 0;
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  Value = FigCFDictionaryGetValue();
  FigCFDictionaryGetInt32IfPresent();
  v9 = *a2;
  v8 = v12;
  v7 = v12;
  return itemfig_setCurrentTimeWithRangeAndIDGuts(a1, &v9, 0, &v8, &v7.value, 0, Value, 0);
}

uint64_t itemfig_setCurrentTimeWithRangeAndIDGuts(CFTypeRef cf, CMTime *a2, int a3, CMTime *a4, __int128 *a5, const void *a6, const void *a7, int a8)
{
  v10 = a6;
  LODWORD(v74) = a3;
  v83 = *MEMORY[0x1E69E9840];
  v75 = cf;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = DerivedStorage;
  if (!v10)
  {
    v10 = *(DerivedStorage + 2092);
    *(DerivedStorage + 2092) = FPSupport_IncrementSeekID(v10);
  }

  if (dword_1EAF16A10)
  {
    LODWORD(v77.value) = 0;
    BYTE4(v76) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*v13)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 20036, v8);
    return v15;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 20039, v8);
    return v15;
  }

  v16 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v16)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 20044, v8);
    return v15;
  }

  v17 = v16;
  v18 = CMBaseObjectGetDerivedStorage();
  if (*v18)
  {
    CFRelease(v17);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 20050, v8);
    return v15;
  }

  v21 = v18;
  v22 = v74 & 0xF;
  if ((v22 - 2) > 3)
  {
    v23 = 1;
  }

  else
  {
    v23 = dword_196E727BC[v22 - 2];
  }

  FigSimpleMutexLock();
  v24 = *(v13 + 528);
  if (v24)
  {
    CFRelease(v24);
    *(v13 + 528) = 0;
  }

  *(v13 + 2224) = CFAbsoluteTimeGetCurrent();
  time[0].start.value = 0;
  if (v75)
  {
    itemfig_setCurrentTimeWithRangeAndIDGuts_cold_1(v75, time);
  }

  *(v13 + 536) = 0;
  *(v13 + 96) = v22;
  v25 = *&a4->value;
  *(v13 + 64) = a4->epoch;
  *(v13 + 48) = v25;
  v26 = *a5;
  *(v13 + 88) = *(a5 + 2);
  *(v13 + 72) = v26;
  v69 = v21;
  HIDWORD(v68) = v10;
  HIDWORD(v70) = a8;
  if (*(v13 + 352))
  {
    if (*(v21 + 67))
    {
      v27 = !*(CMBaseObjectGetDerivedStorage() + 480) && CFArrayGetValueAtIndex(*(v21 + 66), 0) == *(v21 + 67);
    }

    else
    {
      v27 = CFArrayGetCount(*(v21 + 66)) < 1;
    }

    if (*(v13 + 1745))
    {
      v29 = 0.0;
      if (*(v21 + 13) == 4)
      {
        v29 = *(v21 + 12);
      }

      itemfig_updateAccessLogEntry(v17, v75, v29);
      itemfig_commitAccessLogEntry(v17, v75);
    }

    if (*(v13 + 524) == v10)
    {
      v30 = 0;
    }

    else
    {
      v30 = *(v13 + 524);
    }

    if (v10)
    {
      *(v13 + 524) = v10;
      *(v13 + 536) = a8;
      v31 = *(v13 + 528);
      *(v13 + 528) = a7;
      if (a7)
      {
        CFRetain(a7);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      *(v13 + 544) = 1;
    }

    playerfig_cleanupOverlappedOutroComponents(v17, 0);
    *(v13 + 2217) = 0;
    if ((v74 & 0x20) != 0)
    {
      if (!v27)
      {
LABEL_45:
        v77.value = 0;
        v32 = FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v77.value);
        if (v32)
        {
          v19 = v32;
          FigSimpleMutexUnlock();
          v51 = 1;
          if (!v30)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        if (dword_1EAF16A10 >= 2)
        {
          HIDWORD(v76) = 0;
          BYTE3(v76) = 0;
          v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        playerfig_pauseRenderPipelines(v17);
        playeritemfig_releaseRenderPipelines(v17, 0, v77.value, v34, v35, v36, v37, v38, value, v68, v69, v70, a7, a4, a5, v74, v75, v76, v77.value, *&v77.timescale, v77.epoch, v78, start.value, *&start.timescale);
        playerfig_disturbPlayQueue(v17);
        v39 = *&a2->value;
        *(v13 + 40) = a2->epoch;
        *(v13 + 24) = v39;
        v40 = *(v13 + 328);
        *&time[0].start.value = *&a2->value;
        time[0].start.epoch = a2->epoch;
        CMTimebaseSetTime(v40, &time[0].start);
        playerfig_prepareWorkingItem(v17, 0, v77.value);
        if (*(v69 + 536) && *(CMBaseObjectGetDerivedStorage() + 352))
        {
          itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(v69 + 536), 0);
          v41 = *(v69 + 536);
          *&time[0].start.value = *MEMORY[0x1E6960C70];
          time[0].start.epoch = *(MEMORY[0x1E6960C70] + 16);
          start = time[0].start;
          itemfig_matchBossRateToPlayerRateAndPlaybackState(v41, &time[0].start, &start);
        }

        FigDeferredTransactionCommit(v77.value, 0);
        if (v77.value)
        {
          CFRelease(v77.value);
        }

        v19 = 0;
        v42 = 1;
        goto LABEL_54;
      }
    }

    else
    {
      itemfig_clearCoordinatedPlaybackSynchronizationTimebase(v75);
      playerfig_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(v17, v75);
      *&time[0].start.value = *&a2->value;
      time[0].start.epoch = a2->epoch;
      playerfig_triggerStartupTasksForSeekIfNecessary(v17, v75, v10, time);
      if (!v27)
      {
        goto LABEL_45;
      }
    }

    if (*(v13 + 128))
    {
      CMByteStreamGetCMBaseObject();
      FigCRABSGetClassID();
      if (CMBaseObjectIsMemberOfClass())
      {
        if (*(v69 + 52) == 4 || (FigPlaybackBossGetTime(*(v13 + 352), time), start = *a2, CMTimeCompare(&start, &time[0].start)))
        {
          FigPlaybackBossInterruptQueueing(*(v13 + 352));
          FigCRABSUnhintActiveRanges(*(v13 + 128));
        }
      }
    }

    if (dword_1EAF16A10 >= 2)
    {
      LODWORD(v77.value) = 0;
      v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v75, 0);
    v65 = *(v13 + 352);
    v66 = *(v13 + 512);
    *&time[0].start.value = *&a2->value;
    time[0].start.epoch = a2->epoch;
    start = *a4;
    v77 = *a5;
    v19 = FigPlaybackBossSetTimeWithRange(v65, &time[0].start, v23, &start, &v77, v66, v10);
    FigPlaybackBossGetTime(*(v13 + 352), &start);
    v77 = **&MEMORY[0x1E6960CC0];
    CMTimeRangeMake(time, &start, &v77);
    itemfig_HintStreamForTimeRange(v75, &time[0].start.value);
    v42 = 0;
LABEL_54:
    playerfig_updateStartHostTimeEstimatesOfItemAndFollowingItems(v17, v75);
    if (*(v69 + 536) && *(CMBaseObjectGetDerivedStorage() + 1745))
    {
      v43 = 0.0;
      if (*(v69 + 52) == 4)
      {
        v43 = *(v69 + 48);
      }

      itemfig_updateAccessLogEntry(v17, *(v69 + 536), v43);
    }

    v44 = 0;
    v45 = v75;
    goto LABEL_68;
  }

  if (dword_1EAF16A10)
  {
    LODWORD(v77.value) = 0;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v46 = *&a2->value;
  *(v13 + 40) = a2->epoch;
  *(v13 + 24) = v46;
  v47 = *(v13 + 328);
  *&time[0].start.value = *&a2->value;
  time[0].start.epoch = a2->epoch;
  CMTimebaseSetTime(v47, &time[0].start);
  v44 = v10 != 0;
  start = *a2;
  v77 = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(time, &start, &v77);
  v45 = v75;
  itemfig_HintStreamForTimeRange(v75, &time[0].start.value);
  if (CFArrayGetCount(*(v21 + 66)) >= 1 && CFArrayGetValueAtIndex(*(v21 + 66), 0) == v75)
  {
    if (v21[568])
    {
      v21[568] = 0;
      playerfig_postDeferredPrerollWasCancelledNotification(v17, *(v21 + 144));
      v45 = v75;
    }

    v30 = 0;
    v19 = 0;
    v48 = MEMORY[0x1E6960C70];
    v49 = *MEMORY[0x1E6960C70];
    *(v13 + 548) = *MEMORY[0x1E6960C70];
    v50 = *(v48 + 16);
    *(v13 + 564) = v50;
    *(v13 + 572) = v49;
    *(v13 + 588) = v50;
  }

  else
  {
    v30 = 0;
    v19 = 0;
  }

  v42 = 1;
LABEL_68:
  itemfig_reportingAgentReportPlayStartMovieTime(v45);
  v51 = !v44;
  FigSimpleMutexUnlock();
  if (v42)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (!v30)
  {
    goto LABEL_72;
  }

LABEL_71:
  itemfig_postSeekWasCanceledNotification(v17, v75, v30, 0);
LABEL_72:
  if ((v51 & 1) == 0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    if (Mutable)
    {
      if (dword_1EAF16A10)
      {
        LODWORD(v77.value) = 0;
        v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v54 = v77.value;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v56 = v75;
          if (v75)
          {
            v57 = (CMBaseObjectGetDerivedStorage() + 2096);
            v56 = v75;
          }

          else
          {
            v57 = "";
          }

          LODWORD(start.value) = 136315906;
          *(&start.value + 4) = "itemfig_setCurrentTimeWithRangeAndIDGuts";
          LOWORD(start.flags) = 2048;
          *(&start.flags + 2) = v56;
          HIWORD(start.epoch) = 2082;
          *v80 = v57;
          v81[0] = 1024;
          *&v81[1] = HIDWORD(v68);
          LODWORD(v68) = 38;
          _os_log_send_and_compose_impl(v55, 0, time, 128, &dword_1962D5000, v53, 0, "<<<< FigFilePlayer >>>> %s: <%p|%{public}s> no boss, posting SeekDidComplete immediately (seekID %d)", &start, v68);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      CFRelease(Mutable);
    }

    else
    {
      v58 = v17;
      LODWORD(v77.value) = 0;
      v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v60 = v77.value;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (v61)
      {
        v62 = v75;
        if (v75)
        {
          v63 = (CMBaseObjectGetDerivedStorage() + 2096);
          v62 = v75;
        }

        else
        {
          v63 = "";
        }

        LODWORD(start.value) = 136315650;
        *(&start.value + 4) = "itemfig_setCurrentTimeWithRangeAndIDGuts";
        LOWORD(start.flags) = 2048;
        *(&start.flags + 2) = v62;
        HIWORD(start.epoch) = 2082;
        *v80 = v63;
        LODWORD(v68) = 32;
        _os_log_send_and_compose_impl(v61, 0, time, 128, &dword_1962D5000, v59, 0, "<<<< FigFilePlayer >>>> %s: <%p|%{public}s> Failed to create seekIDDict", &start, v68);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v17 = v58;
    }
  }

  CFRelease(v17);
  return v19;
}

uint64_t FigCRABSUnhintActiveRanges(uint64_t a1)
{
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 24);
  result = VTable + 24;
  v5 = *(v4 + 16);
  if (v5)
  {

    return v5(a1, 0, 0);
  }

  return result;
}

uint64_t playerfig_StartPreroll(uint64_t a1, int a2, float a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    if (a3 == 0.0)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 28111, v3);
      return v8;
    }

    if (*(DerivedStorage + 48) != 0.0)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 28115, v3);
      return v8;
    }

    FigSimpleMutexLock();
    if (*(DerivedStorage + 536))
    {
      v10 = CMBaseObjectGetDerivedStorage();
      if (*(v10 + 352))
      {
        v11 = v10;
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(DerivedStorage + 536), a2);
        started = FigPlaybackBossStartPreroll(*(v11 + 352), *(v11 + 512), *(v11 + 512), a3);
        goto LABEL_21;
      }

      if (dword_1EAF16A10)
      {
        goto LABEL_17;
      }
    }

    else if (dword_1EAF16A10)
    {
LABEL_17:
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (CFArrayGetCount(*(DerivedStorage + 528)) >= 1)
    {
      v13 = 0;
      *(DerivedStorage + 568) = 1;
      *(DerivedStorage + 572) = a3;
      *(DerivedStorage + 576) = a2;
LABEL_22:
      FigSimpleMutexUnlock();
      return v13;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
LABEL_21:
    v13 = started;
    goto LABEL_22;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 28108, v3);
  return v8;
}

void playerfig_StepByCount(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954511, "<<<< FigFilePlayer >>>>", 28165, v2);
  }

  else if (*(DerivedStorage + 536))
  {
    if (*(DerivedStorage + 48) == 0.0)
    {
      v8 = CMBaseObjectGetDerivedStorage();
      if (*(v8 + 352))
      {
        v9 = v8;
        v10 = *(v8 + 524);
        if (v10)
        {
          *(v8 + 524) = 0;
          *(v8 + 536) = 0;
          itemfig_postSeekWasCanceledNotification(a1, *(DerivedStorage + 536), v10, 0);
        }

        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(*(DerivedStorage + 536), 0);
        FigPlaybackBossStepByCount(*(v9 + 352), v3, *(v9 + 512));
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 28191, v2);
      }
    }

    else
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 28172, v2);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A08, 4294954516, "<<<< FigFilePlayer >>>>", 28168, v2);
  }
}

uint64_t playerfig_SetRateAndAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3, char a4, float a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((a2->flags & 0x1D) != 1 && (a3->flags & 0x1D) != 1)
  {
    return playerfig_setRateForReason(a1, 0, 0, a5);
  }

  if (a4)
  {
    time.value = @"EstablishCoordinatedPlaybackTiming";
    values[0] = *MEMORY[0x1E695E4D0];
    v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], &time, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v11 = 0;
  }

  time = *a2;
  *values = *&a3->value;
  epoch = a3->epoch;
  v12 = playerfig_setRateGuts(a1, 0, MEMORY[0x1E6960C70], &time, values, v11, a5);
  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t playerfig_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  v8 = *MEMORY[0x1E6960C70];
  *&v15.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v15.epoch = v6;
  v14 = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (!FigCFDictionaryGetCMTimeIfPresent())
  {
    return playerfig_setRateForReason(a1, 0, a2, a3);
  }

  v13 = v15;
  v11 = v8;
  v12 = v6;
  v9 = v8;
  v10 = v6;
  return playerfig_setRateGuts(a1, 0, &v13, &v11, &v9, a2, a3);
}

uint64_t playerfig_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerfig_AddExternalStartupTask_cold_2(v7);
    return v7[0];
  }

  v4 = DerivedStorage;
  if (*DerivedStorage)
  {
    playerfig_AddExternalStartupTask_cold_1(v7);
    return v7[0];
  }

  FigSimpleMutexLock();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFArrayAppendValue(v4[143], a2);
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t playerfig_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    playerfig_RemoveExternalStartupTask_cold_2(v11);
    return v11[0];
  }

  v4 = DerivedStorage;
  if (*DerivedStorage)
  {
    playerfig_RemoveExternalStartupTask_cold_1(v11);
    return v11[0];
  }

  FigSimpleMutexLock();
  v5 = *(v4 + 143);
  v13.length = CFArrayGetCount(v5);
  v13.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v13, a2);
  if (FirstIndexOfValue == -1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v7 = FirstIndexOfValue;
    if (dword_1EAF16A10)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFArrayRemoveValueAtIndex(*(v4 + 143), v7);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t playerfig_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  memset(v16, 0, sizeof(v16));
  if (!a1)
  {
    playerfig_CopyDisplayedCVPixelBuffer_cold_4(&v17);
    return v17;
  }

  if (!a3)
  {
    playerfig_CopyDisplayedCVPixelBuffer_cold_3(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  ValueAtIndex = FigCFArrayGetValueAtIndex();
  if (!ValueAtIndex)
  {
    FigSimpleMutexUnlock();
    goto LABEL_20;
  }

  v6 = CFRetain(ValueAtIndex);
  FigSimpleMutexUnlock();
  if (!v6)
  {
LABEL_20:
    playerfig_CopyDisplayedCVPixelBuffer_cold_2(&v17);
    return v17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    ValueIfPresent = FigCFDictionaryGetValueIfPresent();
    v10 = MEMORY[0x1E695E480];
    if ((ValueIfPresent || FigCFDictionaryGetValueIfPresent()) && FigCFArrayGetFirstIndexOfValue() != -1 && (v16[0] = FigCFArrayGetValueAtIndex()) != 0)
    {
      v11 = CFArrayCreate(*v10, v16, 1, MEMORY[0x1E695E9C0]);
    }

    else
    {
      v12 = *(v8 + 1144);
      if (!v12)
      {
        v13 = 0;
LABEL_15:
        FigSimpleMutexUnlock();
        v14 = FPSupport_CopyCurrentlyDisplayedPixelBufferFromCAImageQueueArray(v13, *v10, a3);
        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_17;
      }

      v11 = CFRetain(v12);
    }

    v13 = v11;
    goto LABEL_15;
  }

  playerfig_CopyDisplayedCVPixelBuffer_cold_1(&v17);
  v14 = v17;
LABEL_17:
  CFRelease(v6);
  return v14;
}

double itemfig_reportAttemptToWriteToReadOnlyTimebase(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void itemfig_postMetadataOutputChanged(const void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  MetadataOutputDataCallbackPayload = FPSupport_CreateMetadataOutputDataCallbackPayload(a3, a1, a2);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (MetadataOutputDataCallbackPayload)
  {

    CFRelease(MetadataOutputDataCallbackPayload);
  }
}

void itemfig_postMetadataOutputFlushed(void *a1, uint64_t a2)
{
  MedadataOutputFlushCallbackPayload = FPSupport_CreateMedadataOutputFlushCallbackPayload(a1);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (MedadataOutputFlushCallbackPayload)
  {

    CFRelease(MedadataOutputFlushCallbackPayload);
  }
}

void playerfig_DuckVolume(uint64_t a1, int a2, float a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v10 = qword_1EAF16A08;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954511, "<<<< FigFilePlayer >>>>", 48498, v4);
    return;
  }

  v11 = DerivedStorage;
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (!a2)
  {
    if (!*(DerivedStorage + 812))
    {
      return;
    }

    *(DerivedStorage + 812) = 0;
    FigSimpleMutexLock();
    if (!*(v11 + 536))
    {
      goto LABEL_21;
    }

    if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 0))
    {
      playerfig_DuckVolume_cold_2((v11 + 520));
      return;
    }

    v13 = a1;
    v14 = a3;
    v15 = a4;
    v16 = 0;
    goto LABEL_20;
  }

  if (a3 < 1.0 && *(DerivedStorage + 812) == 0)
  {
    *(DerivedStorage + 808) = a3;
    *(DerivedStorage + 812) = 1;
    FigSimpleMutexLock();
    if (!*(v11 + 536))
    {
LABEL_21:
      FigSimpleMutexUnlock();
      return;
    }

    if (playerfig_mustDisturbPlaybackWhenSettingAudioPropertyOnCurrentItem(a1, 0))
    {
      playerfig_DuckVolume_cold_1((v11 + 520));
      return;
    }

    v13 = a1;
    v14 = a3;
    v15 = a4;
    v16 = 1;
LABEL_20:
    playerfig_applySoftwareVolume(v13, @"SoftwareVolume2", v16, v14, v15);
    goto LABEL_21;
  }
}

void playerfig_SilentMute(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v6 = qword_1EAF16A08;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954511, "<<<< FigFilePlayer >>>>", 48448, v2);
  }

  else
  {
    v7 = DerivedStorage;
    if (a2)
    {
      if (DerivedStorage[813])
      {
        return;
      }

      v8 = 1;
      v9 = 0.0;
    }

    else
    {
      if (!DerivedStorage[813])
      {
        return;
      }

      v8 = 0;
      v9 = 1.0;
    }

    playerfig_applySoftwareVolume(a1, @"SoftwareVolume5", 1, v9, 0.0);
    v7[813] = v8;
    v10 = *(v7 + 67);
    if (v10)
    {
      playerfig_updateResourceUsageOnGlobalResourceArbiter(a1, v10);
    }
  }
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, int a38)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v10, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_71_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

double OUTLINED_FUNCTION_72_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_77_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

double OUTLINED_FUNCTION_79_0()
{
  STACK[0x260] = 0;
  STACK[0x2B0] = 0;
  result = 0.0;
  *&STACK[0x290] = 0u;
  *&STACK[0x2A0] = 0u;
  return result;
}

double OUTLINED_FUNCTION_80_0()
{
  STACK[0x2B0] = 0;
  result = 0.0;
  *&STACK[0x290] = 0u;
  *&STACK[0x2A0] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

double OUTLINED_FUNCTION_88_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_96_0(float a1)
{
  v3 = v2 - 128;
  *v3 = a1;
  *(v3 + 4) = v1;
  *(v3 + 12) = 1024;
}

BOOL OUTLINED_FUNCTION_103_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_109_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_110_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_111_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_log_type_t type, int a13, int a14)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_113_0@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __int128 a41, uint64_t a42)
{
  a41 = *a1;
  a42 = *(a1 + 2);
  a32 = a41;
  a33 = a42;

  return itemfig_matchBossRateToPlayerRateAndPlaybackState(v42, &a41, &a32);
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_115_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, char a38)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_124_0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

BOOL OUTLINED_FUNCTION_135_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_139_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_142_0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{

  return itemfig_addCFNumberToAccessLogEntry();
}

BOOL OUTLINED_FUNCTION_152_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_161_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, int a18)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_163_0(uint64_t a1, uint64_t a2)
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_177_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, int a53, char a54)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_178_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_180_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_182_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, os_log_type_t type, int a53, int a54)
{

  return os_log_type_enabled(a1, type);
}

__n128 OUTLINED_FUNCTION_196_0@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_209_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_210_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void OUTLINED_FUNCTION_214_0(uint64_t a1@<X8>)
{
  *(v3 + 52) = a1;
  *(v3 + 60) = 2048;
  *(v3 + 62) = v2;
  *(v3 + 70) = 2082;
  *(v3 + 72) = v1;
}

__n128 OUTLINED_FUNCTION_229_0@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __int128 a40)
{
  *&STACK[0x290] = *a1;
  STACK[0x2A0] = *(a1 + 16);
  return a40;
}

const void *OUTLINED_FUNCTION_233_0()
{
  v2 = *(v0 + 528);

  return CFArrayGetValueAtIndex(v2, 0);
}

double OUTLINED_FUNCTION_238_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

BOOL OUTLINED_FUNCTION_239_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, uint64_t a18, uint64_t a19, int a20)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_240_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, os_log_type_t type, int a58, int a59)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_241_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return FigNotificationCenterRemoveWeakListener();
}

BOOL OUTLINED_FUNCTION_242_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_243_0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_244_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, os_log_type_t type, uint64_t a54, int a55)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_245_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_247_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_252_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, char a55)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_255_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, __int128 a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int128 a51, uint64_t a52)
{
  a42 = a51;
  a43 = a52;

  return itemfig_lookForEmptyEditAndMapTime(a1, &a42, &a51, &a41);
}

uint64_t OUTLINED_FUNCTION_271_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, char a20, int a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_274_0(void x0_0, uint64_t a1, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{

  return FigCFDictionarySetCMTime();
}

uint64_t OUTLINED_FUNCTION_276_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, char a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_282_0(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_283_0(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

Float64 OUTLINED_FUNCTION_292_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, CMTime *time, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t timea)
{
  *(v45 + 112) = a27;
  *(v45 + 128) = a28;

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_293_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_294_0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 16) = a1;
  a13 = a2;
  a14 = a1;

  return itemfig_matchBossRateToPlayerRateAndPlaybackState(v24, &a24, &a13);
}

uint64_t OUTLINED_FUNCTION_295_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_304_0()
{
  v1 = *(v0 + 16);
  *&STACK[0x290] = *v0;
  *&STACK[0x2A0] = v1;
  result = *(v0 + 32);
  *&STACK[0x2B0] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_312_0()
{
  result = *v0;
  *&STACK[0x290] = *v0;
  STACK[0x2A0] = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_337_0(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_338_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_339_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

Float64 OUTLINED_FUNCTION_340_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMTime *time, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 timea, uint64_t time_16)
{
  timea = *v28;
  time_16 = *(v28 + 16);

  return CMTimeGetSeconds(&timea);
}

uint64_t OUTLINED_FUNCTION_341_0(uint64_t *a1)
{

  return FigSimpleMutexUnlock();
}

CFTypeRef OUTLINED_FUNCTION_342_0()
{
  *(v1 + 128) = v0;

  return CFRetain(v0);
}

CFNumberRef OUTLINED_FUNCTION_343_0(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

uint64_t OUTLINED_FUNCTION_344_0@<X0>(uint64_t a2@<X8>)
{
  *(v2 - 192) = a2;

  return FigCFDictionarySetCMTime();
}

double OUTLINED_FUNCTION_345_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_346_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, char a19, char a20)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_347_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, int a58, char a59)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_348_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigDispatchAsyncPostNotification();
}

double OUTLINED_FUNCTION_349_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

void OUTLINED_FUNCTION_353_0()
{

  CFArrayAppendValue(v0, &STACK[0x290]);
}

uint64_t OUTLINED_FUNCTION_354_0(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

__n128 OUTLINED_FUNCTION_361_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, uint64_t a10, __n128 a12, uint64_t a13)
{
  result = a12;
  *(v13 - 128) = a12;
  *(v13 - 112) = a13;
  return result;
}

__n128 OUTLINED_FUNCTION_365_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a28, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __n128 a29, unint64_t a30)
{
  result = a29;
  v30[3] = a29;
  v30[4].n128_u64[0] = a30;
  return result;
}

__n128 OUTLINED_FUNCTION_376_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, uint64_t a17)
{
  result = a16;
  *(v17 - 128) = a16;
  *(v17 - 112) = a17;
  return result;
}

__n128 OUTLINED_FUNCTION_419_0()
{
  result = *v0;
  *(v1 - 256) = *v0;
  *(v1 - 240) = v0[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_425_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigDispatchAsyncPostNotification();
}

BOOL OUTLINED_FUNCTION_426_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t type, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_428_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_429_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_type_t type, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_430_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_431_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_432_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, os_log_type_t type, int a21)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_433_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_434_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, os_log_type_t type, int a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_435_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_436_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, int a14, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_437_0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_438_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v59 = STACK[0x260];

  return itemfig_copyFormatDescription(v59, &a58);
}

uint64_t OUTLINED_FUNCTION_439_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t time2)
{

  return CMTimeCompare(&STACK[0x290], &time2);
}

uint64_t OUTLINED_FUNCTION_440_0(uint64_t a1)
{

  return FigSimpleMutexLock();
}

CFNumberRef OUTLINED_FUNCTION_441_0(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

uint64_t OUTLINED_FUNCTION_442_0(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t OUTLINED_FUNCTION_444_0()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t FigBytePumpCreateForHTTPChunk(const void *a1, const __CFURL *a2, const void *a3, const __CFDictionary *a4, NSObject *a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v211 = *MEMORY[0x1E69E9840];
  valuePtr = -1;
  v179 = 0;
  value = 0;
  if (!a2 || !a6 || !a8)
  {
    FigBytePumpCreateForHTTPChunk_cold_3(&context);
    return context;
  }

  v181 = 0;
  v167 = FigCFHTTPCreateURLString(a2);
  CFPreferencesSynchronize(@"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  FigNote_AllowInternalDefaultLogs();
  v172 = a1;
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MTEnableCaption2015Behavior();
  FigBytePumpGetClassID();
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    cf = a2;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = FigRetainProxyCreate();
    if (v13)
    {
      goto LABEL_254;
    }

    v14 = DerivedStorage + 8120;
    if (a1)
    {
      *(DerivedStorage + 56) = CFRetain(a1);
    }

    *(DerivedStorage + 9216) = 1;
    IsItOKToLogURLs = FigIsItOKToLogURLs();
    *(DerivedStorage + 347) = IsItOKToLogURLs;
    v16 = MEMORY[0x1E695E4D0];
    if (a4)
    {
      v17 = CFDictionaryGetValue(a4, @"FBPCreateOption_InheritURIQueryComponentFromReferencingURI");
      v183[0] = 0;
      v18 = *v16;
      *(DerivedStorage + 328) = v17 == *v16;
      if (CFDictionaryGetValue(a4, @"FBPCreateOption_HTTPRequestOptions"))
      {
        FigBytePumpCreateForHTTPChunk_cold_2();
      }

      else
      {
        *(DerivedStorage + 240) = 0;
      }

      v19 = CFDictionaryGetValue(a4, @"FBPCreateOption_OutOfBandAlternateTracks");
      if (v19)
      {
        v19 = CFRetain(v19);
      }

      *(DerivedStorage + 8568) = v19;
      v20 = CFDictionaryGetValue(a4, @"FBPCreateOption_PlaylistCache");
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      *(DerivedStorage + 304) = v20;
      v21 = CFDictionaryGetValue(a4, @"FBPCreateOption_StreamingCache");
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      *(DerivedStorage + 296) = v21;
      if (CFDictionaryGetValueIfPresent(a4, @"FBPCreateOption_MetricEvents", &value))
      {
        *(DerivedStorage + 9208) = CFArrayCreateMutableCopy(a1, 0, value);
      }

      v22 = CFDictionaryGetValue(a4, @"FBPCreateOption_CPECryptors");
      if (v22)
      {
        context = DerivedStorage;
        CFDictionaryApplyFunction(v22, segPumpSetupInitialCryptorApplierFunction, &context);
        v23 = DWORD2(context);
        if (DWORD2(context))
        {
          goto LABEL_252;
        }
      }

      *(DerivedStorage + 332) = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowCellularAccess");
      *(DerivedStorage + 333) = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsExpensiveNetworkAccess");
      *(DerivedStorage + 334) = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DisallowsConstrainedNetworkAccess");
      v24 = CFDictionaryGetValue(a4, @"FBPCreateOption_iTunesRentalID");
      if (v24)
      {
        v24 = CFRetain(v24);
      }

      *(DerivedStorage + 9640) = v24;
      v25 = CFDictionaryGetValue(a4, @"FBPCreateOption_iTunesAccountID");
      if (v25)
      {
        v25 = CFRetain(v25);
      }

      *(DerivedStorage + 9648) = v25;
      v26 = CFDictionaryGetValue(a4, @"FBPCreateOption_PrimarySessionID");
      if (v26)
      {
        v26 = CFRetain(v26);
      }

      *(DerivedStorage + 232) = v26;
      v27 = CFDictionaryGetValue(a4, @"FBPCreateOption_CustomURLLoader");
      if (v27)
      {
        v27 = CFRetain(v27);
      }

      *(DerivedStorage + 80) = v27;
      v28 = CFDictionaryGetValue(a4, @"FBPCreateOption_DefaultContentKeySession");
      if (v28)
      {
        v29 = CFRetain(v28);
        *(DerivedStorage + 9664) = v29;
        if (v29)
        {
          if (FigCFDictionaryGetBooleanIfPresent())
          {
            v30 = v179 == 0;
          }

          else
          {
            v30 = PKDIsContentKeyBossEnabled();
          }

          *(DerivedStorage + 9672) = v30;
          v31 = CFDictionaryGetValue(a4, @"FBPCreateOption_ContentKeyBoss");
          if (v31)
          {
            v31 = CFRetain(v31);
          }

          *(DerivedStorage + 9680) = v31;
          *(DerivedStorage + 335) = CFDictionaryGetValue(a4, @"FBPCreateOption_DisableNativeHTTPReads") == v18;
          v32 = CFDictionaryGetValue(a4, @"FBPCreateOption_ParentNetworkActivity");
          if (v32)
          {
            v32 = CFRetain(v32);
          }

          *(DerivedStorage + 9288) = v32;
          v33 = FigCFDictionaryGetValue();
          if (v33)
          {
            v33 = CFRetain(v33);
          }

          *(DerivedStorage + 9296) = v33;
          FigCFDictionaryGetBooleanIfPresent();
          v34 = CFDictionaryGetValue(a4, @"FBPCreateOption_InitialPreloadedPlaylist");
          if (v34)
          {
            v34 = CFRetain(v34);
          }

          *(DerivedStorage + 312) = v34;
          if (v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_DoNotLogURLs"))
          {
            *(DerivedStorage + 347) = 0;
          }

          v162 = v18 == CFDictionaryGetValue(a4, @"FBPCreateOption_ABRHistoryRecordingEnabled");
          v35 = FigCFDictionaryGetValue();
          if (v35)
          {
            v35 = CFRetain(v35);
          }

          *(DerivedStorage + 9688) = v35;
          IsItOKToLogURLs = *(DerivedStorage + 347);
LABEL_48:
          v176 = *MEMORY[0x1E695E4C0];
          if (IsItOKToLogURLs)
          {
            v36 = v18;
          }

          else
          {
            v36 = *MEMORY[0x1E695E4C0];
          }

          v13 = segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_OKToLogURLs", v36);
          if (!v13)
          {
            v13 = segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_NetworkHistory", *(DerivedStorage + 88));
            if (!v13)
            {
              FigNetworkUrgencyMonitorCreate(a1, (DerivedStorage + 9712));
              if (a4)
              {
                v37 = CFDictionaryGetValue(a4, @"FBPCreateOption_AlternativeConfigurationOptions");
                if (v37)
                {
                  FigCFDictionaryGetBooleanIfPresent();
                  v168 = 0;
LABEL_58:
                  v38 = CFDictionaryGetValue(a4, @"FBPCreateOption_StoreBagSessionConfiguration");
                  if (v38)
                  {
                    v40 = CFRetain(v38);
                    v39 = (DerivedStorage + 9320);
                    *(DerivedStorage + 9320) = v40;
                    if (v40)
                    {
LABEL_62:
                      v173 = v37;
                      v41 = FigRCLGetNumberWithDefault(v40, @"networkHistoryPredictorAlgorithm", 5);
                      LODWORD(v42) = v41 & ~(v41 >> 31);
                      if (v42 >= 8)
                      {
                        v42 = 8;
                      }

                      else
                      {
                        v42 = v42;
                      }

                      *(DerivedStorage + 112) = v42;
                      v43 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"networkHistoryLowLatencyPredictorAlgorithm", 3);
                      LODWORD(v44) = v43 & ~(v43 >> 31);
                      if (v44 >= 8)
                      {
                        v44 = 8;
                      }

                      else
                      {
                        v44 = v44;
                      }

                      *(DerivedStorage + 104) = v44;
                      v45 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"networkHistorySecondaryPredictorAlgorithm", 0xFFFFFFFFLL);
                      if (v45 >= 8)
                      {
                        v46 = 8;
                      }

                      else
                      {
                        v46 = v45;
                      }

                      *(DerivedStorage + 120) = v46;
                      *(DerivedStorage + 128) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"minBytesForGlobalNetworkHistoryPrediction", 2000000);
                      *(DerivedStorage + 136) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"minActiveNetworkTimeForGlobalNetworkHistoryPrediction", 1000000000);
                      *(DerivedStorage + 144) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"networkHistoryPredictorReportingInterval", 30);
                      *(DerivedStorage + 8160) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"minReserveSegments", 3);
                      *(DerivedStorage + 0x2000) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"highSegmentLatencyThresholdForRTCReporting", 100);
                      *(DerivedStorage + 8200) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"minDownloadTimerInterval", 2.0);
                      *(DerivedStorage + 8272) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"fastStartBandwidthAddend", 0.0);
                      v47 = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"fastStartBandwidthMultiplier", 3.0);
                      if (v47 < 1.0)
                      {
                        v47 = 1.0;
                      }

                      *(DerivedStorage + 8264) = v47;
                      v48 = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"slowDownloadBufferMaximum", 60.0);
                      if (v48 < 0.0)
                      {
                        v48 = 0.0;
                      }

                      *(DerivedStorage + 8240) = v48;
                      v49 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"fastStartTargetDurationPercentage", 33) / 100.0;
                      if (v49 < 0.1)
                      {
                        v49 = 0.1;
                      }

                      *(DerivedStorage + 8256) = v49;
                      v50 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"startTargetDurationPercentage", 100) / 100.0;
                      if (v50 < 0.2)
                      {
                        v50 = 0.2;
                      }

                      *(DerivedStorage + 8248) = v50;
                      *(DerivedStorage + 8209) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"allowAverageBandwidth", 1) != 0;
                      *(DerivedStorage + 8225) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"halveExpectedSwitchBandwidthWhenAudioIsActive", 0) != 0;
                      *(DerivedStorage + 8226) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"issueLowBandwidthAlertWhenNWPathUpdates", 0) != 0;
                      *(DerivedStorage + 8228) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"allowDownloadPerfReports", 0) != 0;
                      *(DerivedStorage + 9784) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enableHTTP3Connection", 1) != 0;
                      *(DerivedStorage + 9833) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enableL4S", *(DerivedStorage + 9833)) != 0;
                      *(DerivedStorage + 9832) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"disableHSHPBuffering", 0) != 0;
                      v51 = MGGetSInt32Answer();
                      v52 = MGGetSInt32Answer();
                      v170 = DerivedStorage + 8120;
                      v171 = DerivedStorage;
                      if (v51 >= 1 && v52 >= 1)
                      {
                        v53 = 0;
                        if (v51 >= v52)
                        {
                          v54 = v52;
                        }

                        else
                        {
                          v54 = v51;
                        }

                        *&context = DerivedStorage + 192;
                        *(&context + 1) = DerivedStorage + 200;
                        *&v198 = DerivedStorage + 208;
                        v55 = &unk_196E728E0;
                        do
                        {
                          v56 = FigRCLCopyCFType(*v39, off_1E7476C00[v53]);
                          v57 = v56;
                          if (v56)
                          {
                            v58 = CFGetTypeID(v56);
                            if (v58 == CFArrayGetTypeID())
                            {
                              v59 = v39;
                              Count = CFArrayGetCount(v57);
                              v182 = 0;
                              *v183 = 0;
                              if (Count >= 1)
                              {
                                v61 = Count;
                                for (i = 0; v61 != i; ++i)
                                {
                                  ValueAtIndex = CFArrayGetValueAtIndex(v57, i);
                                  if (!ValueAtIndex)
                                  {
                                    break;
                                  }

                                  v64 = CFGetTypeID(ValueAtIndex);
                                  if (v64 != CFDictionaryGetTypeID() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent())
                                  {
                                    break;
                                  }

                                  if (v54 <= *v183)
                                  {
                                    v67 = 0;
                                    v66 = v182;
                                    v39 = v59;
                                    goto LABEL_101;
                                  }
                                }
                              }

                              v39 = v59;
                            }
                          }

                          v65 = 0;
                          while (v54 > dword_196E728CC[v65])
                          {
                            if (++v65 == 5)
                            {
                              goto LABEL_109;
                            }
                          }

                          v66 = *&v55[v65 * 4];
                          v67 = 1;
LABEL_101:
                          if (v66 >= 1)
                          {
                            v68 = *(&context + v53);
                            if (*v68)
                            {
                              CFRelease(*v68);
                            }

                            AllocatorForMedia = FigGetAllocatorForMedia();
                            Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            *v68 = Mutable;
                            if (Mutable)
                            {
                              FigCFDictionarySetInt32();
                              if (v67)
                              {
                                v71 = v176;
                              }

                              else
                              {
                                v71 = v18;
                              }

                              CFDictionaryAddValue(*v68, @"FBPBTK_IsSetByStoreBag", v71);
                            }
                          }

LABEL_109:
                          if (v57)
                          {
                            CFRelease(v57);
                          }

                          ++v53;
                          v55 += 20;
                        }

                        while (v53 != 3);
                        v14 = v170;
                        DerivedStorage = v171;
                        a1 = v172;
                      }

                      FigGetCFPreferenceDoubleWithDefault();
                      *(v14 + 256) = v72;
                      v73 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enableQUIC", 0xFFFFFFFFLL);
                      if (v73 != -1)
                      {
                        if (v73 == 1)
                        {
                          v74 = v18;
                        }

                        else
                        {
                          v74 = v176;
                        }

                        segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_EnableQUIC", v74);
                      }

                      valuePtr = FigGetCFPreferenceNumberWithDefault();
                      if (valuePtr != -1 || (valuePtr = FigRCLGetNumberWithDefault(*v39, @"connectionCacheCellPurgeTimeout", 0xFFFFFFFFLL), valuePtr != -1))
                      {
                        v75 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
                        segPumpSetHTTPRequestOptionsValue(DerivedStorage, @"FHRP_ConnectionCacheCellPurgeTimeout", v75);
                        if (v75)
                        {
                          CFRelease(v75);
                        }
                      }

                      if (*v39)
                      {
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefPredictionTimeInterval", (DerivedStorage + 9328));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidth", (DerivedStorage + 9336));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidthRelativeStdDev", (DerivedStorage + 9344));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidthStdError", (DerivedStorage + 9352));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefLatency", (DerivedStorage + 9368));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefLatencyRelativeStdDev", (DerivedStorage + 9376));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefLatencyStdError", (DerivedStorage + 9384));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefActiveNetworkTime", (DerivedStorage + 9392));
                        segPumpCreateSafeBandwidthCoefficientsForBaseStoreBagKey(DerivedStorage, @"networkPredictorCoefBandwidthRelativeStdDev", (DerivedStorage + 9360));
                        *(DerivedStorage + 9400) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 9320), @"networkPredictorCoefKonstant", 0.0);
                      }

                      *(DerivedStorage + 8396) = FigGetCFPreferenceNumberWithDefault();
                      *(v14 + 1665) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enablePeriodicBandwidthReporting", 1) != 0;
                      *(DerivedStorage + 342) = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"enablePairedLLABR", 1);
                      *(DerivedStorage + 342) = FigGetCFPreferenceNumberWithDefault();
                      *(DerivedStorage + 392) = DerivedStorage + 440;
                      *(DerivedStorage + 400) = DerivedStorage + 4160;
                      *(DerivedStorage + 408) = DerivedStorage + 1680;
                      *(DerivedStorage + 416) = DerivedStorage + 5400;
                      *(DerivedStorage + 424) = DerivedStorage + 2920;
                      *(DerivedStorage + 432) = DerivedStorage + 6640;
                      *(*(DerivedStorage + 392) + 16) = CFRetain(cf);
                      *(*(DerivedStorage + 392) + 8) = CFRetain(cf);
                      *(*(DerivedStorage + 392) + 24) = CFRetain(cf);
                      *(DerivedStorage + 160) = a6;
                      *(DerivedStorage + 176) = FigRetainProxyRetain();
                      *(DerivedStorage + 8888) = 0x3FF0000000000000;
                      *(DerivedStorage + 8880) = 1065353216;
                      *(v14 + 93) = 257;
                      *(DerivedStorage + 8848) = 0;
                      *(DerivedStorage + 330) = 257;
                      *(v14 + 240) = 257;
                      *(v14 + 304) = 1;
                      *(DerivedStorage + 8384) = 0x4034000000000000;
                      *v14 = 1;
                      *(DerivedStorage + 338) = 1;
                      *(DerivedStorage + 8944) = CFStringCreateWithFormat(a1, 0, @"%p", v181);
                      *(v14 + 96) = 1;
                      v13 = segPumpSetupNetworkHistory(DerivedStorage);
                      if (!v13)
                      {
                        *(DerivedStorage + 360) = 0;
                        *(DerivedStorage + 368) = DerivedStorage + 360;
                        *(DerivedStorage + 8280) = 0;
                        *(DerivedStorage + 8288) = DerivedStorage + 8280;
                        *(DerivedStorage + 8296) = 0;
                        *(DerivedStorage + 8304) = DerivedStorage + 8296;
                        segPumpClearStatistics(DerivedStorage);
                        if (a3)
                        {
                          v76 = CFRetain(a3);
                          *(DerivedStorage + 216) = v76;
                          if (v76)
                          {
                            v77 = CFDictionaryGetValue(v76, @"X-Playback-Session-Id");
                            v78 = v77 ? CFRetain(v77) : 0;
                            *(DerivedStorage + 224) = v78;
                            v79 = *(DerivedStorage + 96);
                            v80 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                            if (v80)
                            {
                              v80(v79, 0x1F0B635B8, v78);
                            }
                          }
                        }

                        else
                        {
                          *(DerivedStorage + 216) = 0;
                        }

                        *(DerivedStorage + 376) = -1;
                        v81 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"maxParallelConnectionCount", 0);
                        v82 = 0;
                        if (v81 <= 1)
                        {
                          v83 = 1;
                        }

                        else
                        {
                          v83 = v81;
                        }

                        if (v83 >= 6)
                        {
                          v84 = 6;
                        }

                        else
                        {
                          v84 = v83;
                        }

                        if (v81 >= 2)
                        {
                          v82 = FigRCLGetNumberWithDefault(*v39, @"startWithSingleConnection", 1);
                        }

                        v85 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"maxReadAheadConnectionCount", 6);
                        if (v85 >= 5)
                        {
                          v86 = 5;
                        }

                        else
                        {
                          v86 = v85;
                        }

                        v87 = FigRCLGetNumberWithDefault(*(DerivedStorage + 9320), @"maxStepAheadConnectionCount", 3);
                        v88 = 0;
                        if (v86 >= v87)
                        {
                          v89 = v87;
                        }

                        else
                        {
                          v89 = v86;
                        }

                        v90 = (DerivedStorage + 400);
                        while (1)
                        {
                          segPumpStreamInitStorage(DerivedStorage, *(v90 - 1), v88, v84, v86, v89, v82);
                          if (v13)
                          {
                            break;
                          }

                          segPumpStreamInitStorage(DerivedStorage, *v90, v88, v84, v86, v89, v82);
                          if (v13)
                          {
                            break;
                          }

                          ++v88;
                          v90 += 2;
                          if (v88 == 3)
                          {
                            if (a5)
                            {
                              Local = FigHTTPSchedulerRetain(a5, v91);
                              *(DerivedStorage + 64) = Local;
                              v94 = v173;
                            }

                            else
                            {
                              Local = FigHTTPSchedulerCreateLocal(v181);
                              *(DerivedStorage + 64) = Local;
                              v94 = v173;
                              if (!Local)
                              {
                                Local = FigHTTPSchedulerRetain(0, v93);
                                *(DerivedStorage + 64) = Local;
                              }
                            }

                            v95 = FigHTTPSchedulerRetain(Local, v93);
                            *(DerivedStorage + 72) = v95;
                            *(DerivedStorage + 48) = 1;
                            if (*(DerivedStorage + 32) || (v97 = FigURLStorageSessionCopyGlobalSession(v95, v96), (*(DerivedStorage + 32) = v97) != 0))
                            {
                              *(DerivedStorage + 320) = CFRetain(cf);
                              *(DerivedStorage + 9312) = FigNetworkInterfaceReporterCreate();
                              if (v168)
                              {
                                v98 = 0;
                                v174 = 0;
                                v175 = 0;
                                v99 = 0;
                                v100 = 0;
                                v101 = 0;
                              }

                              else
                              {
                                v102 = CFDictionaryGetValue(v94, @"ServiceIdentifier");
                                if (!v102 || (v98 = v102, v103 = CFGetTypeID(v102), v103 != CFStringGetTypeID()))
                                {
                                  v98 = 0;
                                }

                                v104 = CFDictionaryGetValue(v94, @"StorefrontID");
                                if (!v104 || (v105 = v104, v106 = CFGetTypeID(v104), v106 != CFStringGetTypeID()))
                                {
                                  v105 = 0;
                                }

                                v175 = v105;
                                v107 = CFDictionaryGetValue(v94, @"MediaIdentifier");
                                if (!v107 || (v108 = v107, v109 = CFGetTypeID(v107), v109 != CFStringGetTypeID()))
                                {
                                  v108 = 0;
                                }

                                v110 = CFDictionaryGetValue(v94, @"ContentProvider");
                                if (!v110 || (v100 = v110, v111 = CFGetTypeID(v110), v111 != CFStringGetTypeID()))
                                {
                                  v100 = 0;
                                }

                                v174 = v108;
                                v112 = CFDictionaryGetValue(v94, @"ServiceInformationKey");
                                if (!v112 || (v101 = v112, v113 = CFGetTypeID(v112), v113 != CFDictionaryGetTypeID()))
                                {
                                  v101 = 0;
                                }

                                v99 = CFDictionaryGetValue(v94, @"HierarchyToken");
                              }

                              v114 = *v39;
                              v115 = FigGetAllocatorForMedia();
                              v116 = CFDictionaryCreateMutable(v115, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                              if (v116)
                              {
                                v117 = v116;
                                v118 = v98;
                                for (j = 0; j != 13; ++j)
                                {
                                  v120 = featureOptionsList[j];
                                  v121 = FigRCLCopyCFType(v114, *v120);
                                  if (v121)
                                  {
                                    v122 = v121;
                                    CFDictionarySetValue(v117, *v120, v121);
                                    CFRelease(v122);
                                  }
                                }

                                v123 = FigRCLCopyConfigurationGroupName(v114);
                                if (v123)
                                {
                                  v124 = v123;
                                  CFDictionarySetValue(v117, @"configurationGroup", v123);
                                  CFRelease(v124);
                                }

                                DerivedStorage = v171;
                                v125 = CFDictionaryGetValue(*(v171 + 240), @"FHRP_ClientBundleIdentifier");
                                if (v174)
                                {
                                  CFDictionarySetValue(v117, @"MediaIdentifier", v174);
                                }

                                v126 = v99;
                                if (v100)
                                {
                                  CFDictionarySetValue(v117, @"ContentProvider", v100);
                                }

                                if (v175)
                                {
                                  CFDictionarySetValue(v117, @"StorefrontID", v175);
                                }

                                if (v101)
                                {
                                  CFDictionarySetValue(v117, @"ServiceInformationKey", v101);
                                }

                                v127 = (v171 + 9232);
                                if (!FigReportingAgentCreate(*(v171 + 224), 0, *(v171 + 9080), v118, v126, v125, 1, v117, *(v171 + 347), (v171 + 9232)))
                                {
                                  v128 = *v127;
                                  if (*v127)
                                  {
                                    v129 = CFURLCopyHostName(*(v171 + 320));
                                    if (v129)
                                    {
                                      v130 = v129;
                                      if (*(v170 + 1144))
                                      {
                                        v131 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                                        if (v131)
                                        {
                                          v131(v128, 0x1F0B64538, 0x1F0B66638, v130, 0);
                                        }
                                      }

                                      CFRelease(v130);
                                    }

                                    v132 = *v127;
                                    v133 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                    if (v133)
                                    {
                                      v133(v132, 0x1F0B644D8, v176);
                                    }
                                  }
                                }

                                CFRelease(v117);
                                v94 = v173;
                              }

                              *(DerivedStorage + 9696) = nw_activity_create();
                              *(*(DerivedStorage + 392) + 1192) = nw_activity_create();
                              *(*(DerivedStorage + 408) + 1192) = nw_activity_create();
                              *(*(DerivedStorage + 424) + 1192) = nw_activity_create();
                              if (*(DerivedStorage + 9696))
                              {
                                if (!*(DerivedStorage + 9288) || (nw_activity_set_parent_activity(), *(DerivedStorage + 9696)))
                                {
                                  nw_activity_activate();
                                }
                              }

                              if (*(*(DerivedStorage + 392) + 1192) && *(DerivedStorage + 9696))
                              {
                                nw_activity_set_parent_activity();
                              }

                              if (*(*(DerivedStorage + 408) + 1192) && *(DerivedStorage + 9696))
                              {
                                nw_activity_set_parent_activity();
                              }

                              if (*(*(DerivedStorage + 424) + 1192) && *(DerivedStorage + 9696))
                              {
                                nw_activity_set_parent_activity();
                              }

                              if (*(*(DerivedStorage + 392) + 1192))
                              {
                                nw_activity_activate();
                              }

                              if (*(*(DerivedStorage + 408) + 1192))
                              {
                                nw_activity_activate();
                              }

                              if (*(*(DerivedStorage + 424) + 1192))
                              {
                                nw_activity_activate();
                              }

                              FigNetworkInterfaceReporterSamplePhysicalStatistics(*(DerivedStorage + 9312), 0, 0, 0, 0);
                              *(DerivedStorage + 288) = -1;
                              memset(&v177[8], 0, 216);
                              segPumpMakeNetworkPredictionInput(DerivedStorage, v177);
                              v134 = *(DerivedStorage + 104);
                              v135 = *(DerivedStorage + 112);
                              *v177 = v135;
                              v136 = xmmword_196E72850;
                              *&v177[40] = xmmword_196E72850;
                              v137 = *(DerivedStorage + 342) != 0;
                              if (*(DerivedStorage + 342))
                              {
                                v138 = 0.96;
                              }

                              else
                              {
                                v138 = 0.0;
                              }

                              if (dword_1EAF16A30)
                              {
                                v182 = 0;
                                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                v140 = v182;
                                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
                                {
                                  v141 = v140;
                                }

                                else
                                {
                                  v141 = v140 & 0xFFFFFFFE;
                                }

                                if (v141)
                                {
                                  v142 = *(v171 + 8944);
                                  v143 = *(v171 + 120);
                                  if (!v142)
                                  {
                                    v142 = &stru_1F0B1AFB8;
                                  }

                                  *v183 = 136316418;
                                  *&v183[4] = "FigBytePumpCreateForHTTPChunk";
                                  *&v183[12] = 2114;
                                  *&v183[14] = v142;
                                  *&v183[22] = 1024;
                                  LODWORD(v184) = v135;
                                  WORD2(v184) = 1024;
                                  *(&v184 + 6) = v134;
                                  WORD5(v184) = 1024;
                                  HIDWORD(v184) = v143;
                                  LOWORD(v185) = 1024;
                                  *(&v185 + 2) = 1;
                                  LODWORD(v161) = 46;
                                  _os_log_send_and_compose_impl(v141, 0, &context, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "<SEGPUMP> %s: %{public}@: bandwidthPredictionAlgorithm: %d lowLatencyBandwidthPredictionAlgorithm: %d secondaryPredictorAlgorithm: %d, flags lowLatencyBandwidthPredictionAlgorithm 0x%x", v183, v161);
                                }

                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                DerivedStorage = v171;
                                v94 = v173;
                                v136 = xmmword_196E72850;
                              }

                              v144 = *DerivedStorage;
                              v145 = *(DerivedStorage + 96);
                              v208 = *&v177[176];
                              v209 = *&v177[192];
                              v210 = *&v177[208];
                              v204 = *&v177[112];
                              v205 = *&v177[128];
                              v206 = *&v177[144];
                              v207 = *&v177[160];
                              v200 = *&v177[48];
                              v201 = *&v177[64];
                              v202 = *&v177[80];
                              v203 = *&v177[96];
                              v198 = *&v177[16];
                              v199 = *&v177[32];
                              *&v183[8] = xmmword_196E72860;
                              v184 = xmmword_196E72870;
                              v146 = *(DerivedStorage + 9320);
                              v147 = (DerivedStorage + 9760);
                              *v183 = v134;
                              v185 = v136;
                              v186 = 0u;
                              v187 = 0u;
                              v188 = 0u;
                              v189 = 0u;
                              v190 = 0u;
                              v191 = 0u;
                              v192 = v138;
                              v193 = v137;
                              v194 = 0u;
                              v195 = 0u;
                              memset(v196, 0, sizeof(v196));
                              context = *v177;
                              v23 = FigAlternateFilterMonitorCreateForPlaybackBitrate(v172, v144, 0, segPumpLoadStartupScoreCallback, v145, &context, v183, v146, v181, v162, (DerivedStorage + 9760));
                              if (*(DerivedStorage + 9760))
                              {
                                if ((v168 & 1) == 0)
                                {
                                  v148 = CFDictionaryGetValue(v94, @"ServiceIdentifier");
                                  if (v148)
                                  {
                                    v149 = v148;
                                    v150 = CFGetTypeID(v148);
                                    if (v150 == CFStringGetTypeID())
                                    {
                                      v151 = *v147;
                                      v152 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                      if (v152)
                                      {
                                        v152(v151, @"AfmfpbProperty_ServiceIdentifier", v149);
                                      }
                                    }
                                  }
                                }

                                v153 = *(DerivedStorage + 9080);
                                if (v153)
                                {
                                  v154 = *v147;
                                  v155 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                  if (v155)
                                  {
                                    v155(v154, @"AfmfpbProperty_ClientName", v153);
                                  }
                                }

                                v156 = *(DerivedStorage + 9688);
                                if (v156)
                                {
                                  v157 = *v147;
                                  v158 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                                  if (v158)
                                  {
                                    v158(v157, @"AfmfpbProperty_PlaybackSessionID", v156);
                                  }
                                }
                              }

                              *(*(DerivedStorage + 392) + 76) = 0;
                              *(*(DerivedStorage + 408) + 76) = 0;
                              *(*(DerivedStorage + 424) + 76) = 0;
                              if (!v23)
                              {
                                *(v170 + 1185) = FigDebugIsInternalBuild();
                                *(DerivedStorage + 9252) = FigGetCFPreferenceNumberWithDefault();
                                FigNetworkWirelessReportingInterfaceInit();
                                v159 = FigRetainProxyRetain();
                                dispatch_async_f(*(DerivedStorage + 64), v159, segPumpAttemptNetworkMonitorSetupDispatch);
                                *a8 = v181;
                                v181 = 0;
                                goto LABEL_246;
                              }
                            }

                            else
                            {
                              v23 = 4294954655;
                            }

                            goto LABEL_252;
                          }
                        }
                      }

                      goto LABEL_254;
                    }
                  }

                  else
                  {
                    v39 = (DerivedStorage + 9320);
                    *(DerivedStorage + 9320) = 0;
                  }

                  FigRCLCreateConfiguration(*(DerivedStorage + 9080), @"kFigRemoteConfigurationLoaderStoreBagType_Pump", v37, v39);
                  v40 = *(DerivedStorage + 9320);
                  goto LABEL_62;
                }
              }

              else
              {
                v37 = 0;
              }

              v168 = 1;
              goto LABEL_58;
            }
          }

LABEL_254:
          v23 = v13;
LABEL_252:
          if (v181)
          {
            CFRelease(v181);
          }

          goto LABEL_246;
        }
      }

      else
      {
        *(DerivedStorage + 9664) = 0;
      }

      FigBytePumpCreateForHTTPChunk_cold_1(&context);
      v23 = context;
      goto LABEL_252;
    }

    v162 = 0;
    v18 = *MEMORY[0x1E695E4D0];
    goto LABEL_48;
  }

  v23 = v11;
LABEL_246:
  if (v167)
  {
    CFRelease(v167);
  }

  return v23;
}

uint64_t segPumpSetHTTPRequestOptionsValue(uint64_t a1, const void *a2, const void *a3)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  MutableCopy = CFDictionaryCreateMutableCopy(AllocatorForMedia, 0, *(a1 + 240));
  if (MutableCopy)
  {
    v8 = MutableCopy;
    if (a3)
    {
      CFDictionarySetValue(MutableCopy, a2, a3);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, a2);
    }

    v9 = *(a1 + 240);
    *(a1 + 240) = v8;
    CFRetain(v8);
    if (v9)
    {
      CFRelease(v9);
    }

    CFRelease(v8);
    return 0;
  }

  else
  {
    segPumpSetHTTPRequestOptionsValue_cold_1(&v11);
    return v11;
  }
}

__n128 segPumpMakeNetworkPredictionInput@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 9408))
  {
    *(a1 + 9408) = 1;
    v13 = *(a1 + 9344);
    v14 = *(a1 + 9376);
    *(a1 + 9528) = *(a1 + 9360);
    *(a1 + 9544) = v14;
    *(a1 + 9560) = *(a1 + 9392);
    *(a1 + 9496) = *(a1 + 9328);
    *(a1 + 9512) = v13;
    *(a1 + 9480) = FigRCLGetNumberWithDefault(*(a1 + 9320), @"minActiveNetworkTimeForNetworkHistory", 1000000000);
    *(a1 + 9456) = xmmword_196E72850;
    if (!FigRCLGetNumberWithDefault(*(a1 + 9320), @"disableWeightBWPredictionByResponseSize", 0))
    {
      *(a1 + 9424) |= 4uLL;
    }

    *(a1 + 9584) = 17;
    if (FigRCLGetNumberWithDefault(*(a1 + 9320), @"allowMLPredictions", 0))
    {
      *(a1 + 9584) |= 2uLL;
      v15 = *(a1 + 96);
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v16)
      {
        v16(v15, 0x1F0B63578, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  v4 = *(a1 + 9472);
  if (!v4)
  {
    v4 = 0x40000;
  }

  *(a1 + 9472) = v4;
  v5 = *(a1 + 9592);
  *(a2 + 160) = *(a1 + 9576);
  *(a2 + 176) = v5;
  v6 = *(a1 + 9624);
  *(a2 + 192) = *(a1 + 9608);
  *(a2 + 208) = v6;
  v7 = *(a1 + 9528);
  *(a2 + 96) = *(a1 + 9512);
  *(a2 + 112) = v7;
  v8 = *(a1 + 9560);
  *(a2 + 128) = *(a1 + 9544);
  *(a2 + 144) = v8;
  v9 = *(a1 + 9496);
  *(a2 + 64) = *(a1 + 9480);
  *(a2 + 80) = v9;
  v10 = *(a1 + 9432);
  *a2 = *(a1 + 9416);
  *(a2 + 16) = v10;
  result = *(a1 + 9448);
  v12 = *(a1 + 9464);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

uint64_t segPumpInvalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  v3 = *(DerivedStorage + 9144);
  *(DerivedStorage + 9144) = 0;
  v4 = *(DerivedStorage + 9152);
  *(DerivedStorage + 9152) = 0;
  FigRetainProxyUnlockMutex();
  if ((v3 & 0x20) != 0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v5 = (DerivedStorage + 7968);
  if (v4)
  {
    CFRelease(v4);
  }

  FigRetainProxyLockMutex();
  FigRetainProxyInvalidate();
  v6 = *(DerivedStorage + 7960);
  if (v6)
  {
    if (*v5)
    {
      *v5 = 0;
      while (dispatch_group_wait(v6, 0))
      {
        dispatch_group_leave(*(DerivedStorage + 7960));
        v6 = *(DerivedStorage + 7960);
      }
    }

    v7 = *(DerivedStorage + 7960);
    if (v7)
    {
      dispatch_release(v7);
      *(DerivedStorage + 7960) = 0;
    }
  }

  FigHTTPStopAndReleaseTimer((DerivedStorage + 8152));
  FigHTTPStopAndReleaseTimer((DerivedStorage + 8352));
  FigHTTPStopAndReleaseTimer((DerivedStorage + 8800));
  while (1)
  {
    v8 = *(DerivedStorage + 360);
    if (!v8)
    {
      break;
    }

    segPumpFreeSavedEntry(DerivedStorage, v8);
  }

  if (*(DerivedStorage + 9704))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = *(DerivedStorage + 7888);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 7888) = 0;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = DerivedStorage + 392 + 16 * v11;
    v15 = v14;
    for (i = 1; i != 4; ++i)
    {
      v17 = *v15;
      if (*v15)
      {
        *(v17 + 859) = 0;
        *(v17 + 400) = 0;
        FigHTTPStopAndReleaseTimer((v17 + 392));
        FigHTTPStopAndReleaseTimer((v17 + 640));
        segPumpResetConnection(DerivedStorage, v17 + 544);
        segPumpResetConnection(DerivedStorage, DerivedStorage + 7976);
        segPumpCancelMediaFileReadAndResetData(DerivedStorage, v17, 0, 0);
        segPumpResetConnection(DerivedStorage, v17 + 408);
        *(v17 + 859) = 0;
        segPumpStreamUpdateIndexExpectedArrival(DerivedStorage, v17, 0);
        v18 = *(v17 + 840);
        if (v18)
        {
          CFRelease(v18);
          *(v17 + 840) = 0;
        }

        v19 = *(v17 + 832);
        if (v19)
        {
          CFRelease(v19);
          *(v17 + 832) = 0;
        }

        v20 = *(v17 + 296);
        if (v20)
        {
          CFRelease(v20);
          *(v17 + 296) = 0;
        }

        v21 = *(v17 + 1160);
        if (v21)
        {
          CFRelease(v21);
          *(v17 + 1160) = 0;
        }

        v22 = *(v17 + 248);
        if (v22)
        {
          CFRelease(v22);
          *(v17 + 248) = 0;
        }

        v23 = *(v17 + 256);
        if (v23)
        {
          CFRelease(v23);
          *(v17 + 256) = 0;
        }

        v24 = *(v17 + 264);
        if (v24)
        {
          CFRelease(v24);
          *(v17 + 264) = 0;
        }

        v25 = *(v17 + 288);
        if (v25)
        {
          CFRelease(v25);
          *(v17 + 288) = 0;
        }

        for (j = *(v17 + 680); j; j = *j)
        {
          segPumpResetMediaConnection(DerivedStorage, j, 0);
        }

        segPumpCompleteNWAlternateForStream(v17, v9);
        if (*(v17 + 1192))
        {
          nw_activity_complete_with_reason();
          v27 = *(v17 + 1192);
          if (v27)
          {
            CFRelease(v27);
            *(v17 + 1192) = 0;
          }
        }

        v28 = *(v17 + 56);
        if (v28)
        {
          if (FigMediaPlaylistGetXPCClientObject(v28))
          {
            FigMediaPlaylistGetXPCClientObject(*(v17 + 56));
            FigStopForwardingMediaServicesProcessDeathNotification();
          }

          v29 = *(v17 + 56);
          if (v29)
          {
            CFRelease(v29);
            *(v17 + 56) = 0;
          }
        }

        v30 = *(v17 + 48);
        if (v30)
        {
          CFRelease(v30);
          *(v17 + 48) = 0;
        }

        v31 = *(v17 + 1168);
        if (v31)
        {
          CFRelease(v31);
          *(v17 + 1168) = 0;
        }
      }

      v15 = (v14 + 8 * i);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  if (*(DerivedStorage + 9696))
  {
    nw_activity_complete_with_reason();
    v32 = *(DerivedStorage + 9696);
    if (v32)
    {
      CFRelease(v32);
      *(DerivedStorage + 9696) = 0;
    }
  }

  v33 = *(DerivedStorage + 9288);
  if (v33)
  {
    CFRelease(v33);
    *(DerivedStorage + 9288) = 0;
  }

  v34 = *(DerivedStorage + 296);
  if (v34)
  {
    FigStreamingCacheClearExclusiveWriter(v34, a1);
    segPumpRemoveStreamingCacheListeners(*DerivedStorage);
    v41 = *(DerivedStorage + 296);
    if (v41)
    {
      CFRelease(v41);
      *(DerivedStorage + 296) = 0;
    }
  }

  v35 = *(DerivedStorage + 304);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 304) = 0;
  }

  v36 = *(DerivedStorage + 8136);
  if (v36)
  {
    CMMemoryPoolInvalidate(v36);
    v37 = *(DerivedStorage + 8136);
    if (v37)
    {
      CFRelease(v37);
      *(DerivedStorage + 8136) = 0;
    }
  }

  v38 = *(DerivedStorage + 9760);
  if (v38)
  {
    CFRelease(v38);
    *(DerivedStorage + 9760) = 0;
  }

  v39 = *(DerivedStorage + 9776);
  if (v39)
  {
    CFRelease(v39);
    *(DerivedStorage + 9776) = 0;
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  return 0;
}

void segPumpFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  segPumpInvalidate(a1);
  v3 = *(DerivedStorage + 8616);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 8624);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 8624) = 0;
  }

  v5 = *(DerivedStorage + 8632);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 8632) = 0;
  }

  v6 = *(DerivedStorage + 8656);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8656) = 0;
  }

  v7 = 0;
  v8 = DerivedStorage + 392;
  v9 = DerivedStorage + 8440;
  do
  {
    v10 = *(v8 + 16 * v7);
    if (v10)
    {
      v11 = *(v9 + 40 * *v10 + 32);
      if (v11)
      {
        CFRelease(v11);
        *(v9 + 40 * *v10 + 32) = 0;
      }

      segPumpStreamDisposeStorage(v10);
      v12 = v10[96];
      if (v12)
      {
        v10[96] = 0;
        free(v12);
      }

      while (1)
      {
        v13 = v10[85];
        if (!v13)
        {
          break;
        }

        segPumpDestroyMediaConnection(DerivedStorage, v10, v13);
      }
    }

    ++v7;
  }

  while (v7 != 3);
  for (i = 0; i != 3; ++i)
  {
    v15 = v8 + 16 * i;
    v16 = *(v15 + 8);
    if (v16)
    {
      segPumpStreamDisposeStorage(*(v15 + 8));
      v17 = v16[96];
      if (v17)
      {
        v16[96] = 0;
        free(v17);
      }

      while (1)
      {
        v18 = v16[85];
        if (!v18)
        {
          break;
        }

        segPumpDestroyMediaConnection(DerivedStorage, v16, v18);
      }
    }
  }

  AlternateQueueFree(DerivedStorage + 8280);
  AlternateQueueFree(DerivedStorage + 8296);
  v19 = *(DerivedStorage + 8112);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 8112) = 0;
  }

  v20 = *(DerivedStorage + 8312);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(DerivedStorage + 8320);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(DerivedStorage + 8336);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(DerivedStorage + 8344);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(DerivedStorage + 9744);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(DerivedStorage + 9752);
  if (v25)
  {
    CFRelease(v25);
  }

  segPumpUpdateCurrentAlternate(DerivedStorage, 0);
  v26 = *(DerivedStorage + 9712);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(DerivedStorage + 8560);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(DerivedStorage + 8432);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 8432) = 0;
  }

  v29 = *(DerivedStorage + 80);
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = *(DerivedStorage + 152);
  if (v30)
  {
    dispatch_release(v30);
  }

  v31 = *(DerivedStorage + 88);
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = *(DerivedStorage + 216);
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = *(DerivedStorage + 224);
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = *(DerivedStorage + 232);
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = *(DerivedStorage + 192);
  if (v35)
  {
    CFRelease(v35);
    *(DerivedStorage + 192) = 0;
  }

  v36 = *(DerivedStorage + 200);
  if (v36)
  {
    CFRelease(v36);
    *(DerivedStorage + 200) = 0;
  }

  v37 = *(DerivedStorage + 208);
  if (v37)
  {
    CFRelease(v37);
    *(DerivedStorage + 208) = 0;
  }

  v38 = *(DerivedStorage + 248);
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = *(DerivedStorage + 264);
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = *(DerivedStorage + 272);
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = *(DerivedStorage + 280);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = *(DerivedStorage + 8856);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = *(DerivedStorage + 9152);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = *(DerivedStorage + 9160);
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = *(DerivedStorage + 9184);
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(DerivedStorage + 9176);
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = *(DerivedStorage + 9168);
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = *(DerivedStorage + 312);
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = *(DerivedStorage + 320);
  if (v49)
  {
    CFRelease(v49);
  }

  FigHTTPSchedulerRelease(*(DerivedStorage + 64));
  *(DerivedStorage + 64) = 0;
  v50 = *(DerivedStorage + 9064);
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = *(DerivedStorage + 9072);
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(DerivedStorage + 9080);
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(DerivedStorage + 240);
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = *(DerivedStorage + 8568);
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(DerivedStorage + 8576);
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = *(DerivedStorage + 8584);
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = *(DerivedStorage + 8592);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(DerivedStorage + 8608);
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = *(DerivedStorage + 8408);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(DerivedStorage + 8416);
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = *(DerivedStorage + 7992);
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = *(DerivedStorage + 7984);
  if (v62)
  {
    CFRelease(v62);
  }

  v63 = *(DerivedStorage + 8128);
  if (v63)
  {
    CFRelease(v63);
  }

  v64 = *(DerivedStorage + 7912);
  if (v64)
  {
    CFRelease(v64);
    *(DerivedStorage + 7912) = 0;
  }

  v65 = *(DerivedStorage + 7896);
  if (v65)
  {
    CFRelease(v65);
    *(DerivedStorage + 7896) = 0;
  }

  v66 = *(DerivedStorage + 7920);
  if (v66)
  {
    CFRelease(v66);
    *(DerivedStorage + 7920) = 0;
  }

  v67 = *(DerivedStorage + 7936);
  if (v67)
  {
    CFRelease(v67);
    *(DerivedStorage + 7936) = 0;
  }

  v68 = *(DerivedStorage + 7928);
  if (v68)
  {
    CFRelease(v68);
    *(DerivedStorage + 7928) = 0;
  }

  v69 = *(DerivedStorage + 7952);
  if (v69)
  {
    CFRelease(v69);
    *(DerivedStorage + 7952) = 0;
  }

  v70 = *(DerivedStorage + 7944);
  if (v70)
  {
    CFRelease(v70);
    *(DerivedStorage + 7944) = 0;
  }

  v71 = *(DerivedStorage + 7904);
  if (v71)
  {
    CFRelease(v71);
    *(DerivedStorage + 7904) = 0;
  }

  v72 = *(DerivedStorage + 256);
  if (v72)
  {
    CFRelease(v72);
    *(DerivedStorage + 256) = 0;
  }

  v73 = *(DerivedStorage + 8944);
  if (v73)
  {
    CFRelease(v73);
    *(DerivedStorage + 8944) = 0;
  }

  v74 = *(DerivedStorage + 9320);
  if (v74)
  {
    CFRelease(v74);
  }

  if (*(DerivedStorage + 8992))
  {
    FigGzipDispose();
    *(DerivedStorage + 8992) = 0;
  }

  v75 = *(DerivedStorage + 72);
  if (v75)
  {
    dispatch_release(v75);
    *(DerivedStorage + 72) = 0;
  }

  FigNetworkInterfaceReporterDestroy(*(DerivedStorage + 9312));
  v76 = *(DerivedStorage + 32);
  if (v76)
  {
    CFRelease(v76);
  }

  v77 = *(DerivedStorage + 40);
  if (v77)
  {
    CFRelease(v77);
  }

  v78 = *(DerivedStorage + 9224);
  if (v78)
  {
    CFRelease(v78);
  }

  v79 = *(DerivedStorage + 9272);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = *(DerivedStorage + 9232);
  if (v80)
  {
    CFRelease(v80);
  }

  FigRetainProxyRelease();
  *(DerivedStorage + 176) = 0;
  FigRetainProxyRelease();
  *DerivedStorage = 0;
  v81 = *(DerivedStorage + 9296);
  if (v81)
  {
    CFRelease(v81);
    *(DerivedStorage + 9296) = 0;
  }

  v82 = *(DerivedStorage + 9640);
  if (v82)
  {
    CFRelease(v82);
    *(DerivedStorage + 9640) = 0;
  }

  v83 = *(DerivedStorage + 9648);
  if (v83)
  {
    CFRelease(v83);
    *(DerivedStorage + 9648) = 0;
  }

  v84 = *(DerivedStorage + 9656);
  if (v84)
  {
    CFRelease(v84);
    *(DerivedStorage + 9656) = 0;
  }

  v85 = *(DerivedStorage + 9664);
  if (v85)
  {
    CFRelease(v85);
    *(DerivedStorage + 9664) = 0;
  }

  v86 = *(DerivedStorage + 9680);
  if (v86)
  {
    CFRelease(v86);
    *(DerivedStorage + 9680) = 0;
  }

  v87 = *(DerivedStorage + 96);
  if (v87)
  {
    CFRelease(v87);
    *(DerivedStorage + 96) = 0;
  }

  v88 = *(DerivedStorage + 8232);
  if (v88)
  {
    CFRelease(v88);
    *(DerivedStorage + 8232) = 0;
  }

  v89 = *(DerivedStorage + 9768);
  if (v89)
  {
    CFRelease(v89);
    *(DerivedStorage + 9768) = 0;
  }

  v90 = *(DerivedStorage + 9688);
  if (v90)
  {
    CFRelease(v90);
    *(DerivedStorage + 9688) = 0;
  }

  v91 = *(DerivedStorage + 9328);
  if (v91)
  {
    CFRelease(v91);
    *(DerivedStorage + 9328) = 0;
  }

  v92 = *(DerivedStorage + 9336);
  if (v92)
  {
    CFRelease(v92);
    *(DerivedStorage + 9336) = 0;
  }

  v93 = *(DerivedStorage + 9344);
  if (v93)
  {
    CFRelease(v93);
    *(DerivedStorage + 9344) = 0;
  }

  v94 = *(DerivedStorage + 9368);
  if (v94)
  {
    CFRelease(v94);
    *(DerivedStorage + 9368) = 0;
  }

  v95 = *(DerivedStorage + 9376);
  if (v95)
  {
    CFRelease(v95);
    *(DerivedStorage + 9376) = 0;
  }

  v96 = *(DerivedStorage + 9392);
  if (v96)
  {
    CFRelease(v96);
    *(DerivedStorage + 9392) = 0;
  }

  v97 = *(DerivedStorage + 9360);
  if (v97)
  {
    CFRelease(v97);
    *(DerivedStorage + 9360) = 0;
  }

  v98 = *(DerivedStorage + 9720);
  if (v98)
  {
    CFRelease(v98);
    *(DerivedStorage + 9720) = 0;
  }

  v99 = *(DerivedStorage + 9728);
  if (v99)
  {
    CFRelease(v99);
    *(DerivedStorage + 9728) = 0;
  }

  v100 = *(DerivedStorage + 9736);
  if (v100)
  {
    dispatch_release(v100);
    *(DerivedStorage + 9736) = 0;
  }

  v101 = *(DerivedStorage + 9208);
  if (v101)
  {
    CFRelease(v101);
  }

  v102 = *(DerivedStorage + 9200);
  if (v102)
  {

    CFRelease(v102);
  }
}

__CFString *segPumpCopyDebugDescription(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBytePumpHTTPSegment %p>", a1);
  return Mutable;
}

uint64_t segPumpCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    segPumpCopyProperty_cold_1(&value);
    goto LABEL_77;
  }

  if (CFEqual(a2, @"FBP_AlternateInfo"))
  {
    if (*(DerivedStorage + 8280))
    {
      value.start.value = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v11 = Mutable;
        LODWORD(v12) = segPumpCreateFigAlternatesArray(DerivedStorage, &value);
        if (v12)
        {
          v15 = 0;
        }

        else
        {
          CFDictionarySetValue(v11, @"FBPAIK_FigAlternateArray", value.start.value);
          v13 = *(DerivedStorage + 8328);
          if (v13)
          {
            CFDictionarySetValue(v11, @"FBPAIK_CurrentFigAlternate", *(v13 + 8));
          }

          v14 = *(DerivedStorage + 8560);
          if (v14)
          {
            CFDictionarySetValue(v11, @"FBPAIK_MediaSelectionArray", v14);
          }

          v15 = CFRetain(v11);
        }

        CFRelease(v11);
        if (value.start.value)
        {
          CFRelease(value.start.value);
        }

        if (v15)
        {
          *a4 = v15;
        }

        goto LABEL_15;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A28, 4294954510, "<SEGPUMP>", 35235, v4);
      goto LABEL_69;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_MinTime"))
  {
    v16 = *(*(DerivedStorage + 392) + 1185);
    v17 = *(DerivedStorage + 408);
    if (*(v17 + 16))
    {
      v16 = (*(v17 + 1185) & v16);
    }

    v18 = *(DerivedStorage + 424);
    if (*(v18 + 16))
    {
      v16 = (*(v18 + 1185) & v16);
    }

    if (!v16)
    {
      MinTime = segPumpGetMinTime(DerivedStorage);
      memset(&value, 0, 24);
LABEL_43:
      CMTimeMakeWithSeconds(&value.start, MinTime, 1000);
LABEL_44:
      *&v101.start.value = *&value.start.value;
      v101.start.epoch = value.start.epoch;
      p_value = &v101;
      goto LABEL_45;
    }

LABEL_31:
    *&value.start.value = *MEMORY[0x1E6960C70];
    value.start.epoch = *(MEMORY[0x1E6960C70] + 16);
    p_value = &value;
LABEL_45:
    Copy = CMTimeCopyAsDictionary(&p_value->start, a3);
    goto LABEL_46;
  }

  if (CFEqual(a2, @"FBP_MaxTime"))
  {
    v20 = *(*(DerivedStorage + 392) + 1185);
    v21 = *(DerivedStorage + 408);
    if (*(v21 + 16))
    {
      v20 = (*(v21 + 1185) & v20);
    }

    v22 = *(DerivedStorage + 424);
    if (*(v22 + 16))
    {
      v20 = (*(v22 + 1185) & v20);
    }

    if (!v20)
    {
      memset(&value, 0, 24);
      v30 = segPumpGetMinTime(DerivedStorage);
      MaxTime = segPumpGetMaxTime(DerivedStorage);
      if (!*(DerivedStorage + 8218))
      {
        MaxTime = MaxTime - (segPumpGetMinimumPrebufferReservation(DerivedStorage, 0) + *(DerivedStorage + 8176));
      }

      if (MaxTime >= v30)
      {
        MinTime = MaxTime;
      }

      else
      {
        MinTime = v30;
      }

      goto LABEL_43;
    }

    goto LABEL_31;
  }

  if (CFEqual(a2, @"FBP_TimeAvailableModDate"))
  {
    v24 = *(*(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392) + 1064);
    if (v24)
    {
      v25 = (FigGetUpTimeNanoseconds() - v24) / 0xF4240uLL;
      v26 = CACurrentMediaTime() + v25 / -1000.0;
LABEL_35:
      *&value.start.value = v26;
LABEL_36:
      v27 = *MEMORY[0x1E695E480];
      v28 = kCFNumberDoubleType;
LABEL_37:
      Copy = CFNumberCreate(v27, v28, &value);
LABEL_46:
      v12 = 0;
      *a4 = Copy;
LABEL_66:
      segPumpUnlockAndSendAllPendingNotifications(*DerivedStorage);
      return v12;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_CachedTimeRanges"))
  {
    SynchronousProperties = segPumpCopyCachedTimeRanges(DerivedStorage, a4);
    goto LABEL_69;
  }

  if (CFEqual(a2, @"FBP_MeasuredBandwidth"))
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    memset(&value, 0, sizeof(value));
    LODWORD(v12) = segPumpGetObservedNetworkStats(DerivedStorage, 0, &value);
    if (!v12)
    {
      *a4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &value);
    }

    goto LABEL_15;
  }

  if (CFEqual(a2, @"FBP_RequiredBandwidth"))
  {
    if (!*(DerivedStorage + 8328))
    {
      v32 = 0;
      v33 = 0;
      v34 = 0.0;
      do
      {
        v35 = *(DerivedStorage + 392 + v32);
        if (*(v35 + 16))
        {
          v36 = *(v35 + 1096);
          if (!v36)
          {
            goto LABEL_65;
          }

          v33 += v36;
          if (v34 == 0.0)
          {
            v34 = *(v35 + 1104);
          }

          else if (v34 >= *(v35 + 1104))
          {
            v34 = *(v35 + 1104);
          }
        }

        v32 += 16;
      }

      while (v32 != 48);
      if (v34 > 0.0)
      {
        v26 = v33;
        goto LABEL_35;
      }

LABEL_65:
      v12 = 4294954513;
      goto LABEL_66;
    }

    segPumpCopyProperty_cold_3();
    goto LABEL_77;
  }

  if (CFEqual(a2, @"FBP_NetworkBandwidth"))
  {
    value.start.value = 0;
    if (!segPumpGetSafeNetworkBandwidth(DerivedStorage, &value.start.value, 0, 0))
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_CanContinueWithoutGapBitField"))
  {
    LODWORD(value.start.value) = 0;
    segPumpCanContinueWithoutGap(DerivedStorage, &value);
    v27 = a3;
    v28 = kCFNumberSInt32Type;
    goto LABEL_37;
  }

  if (CFEqual(a2, @"FBP_Duration"))
  {
    *&value.start.value = *MEMORY[0x1E6960C68];
    value.start.epoch = *(MEMORY[0x1E6960C68] + 16);
    if (*(DerivedStorage + 8218))
    {
      v39 = segPumpGetMaxTime(DerivedStorage);
      MinTime = v39 - segPumpGetMinTime(DerivedStorage);
      goto LABEL_43;
    }

    if (*(DerivedStorage + 352) > 0.0)
    {
      goto LABEL_44;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_MaximumRecommendedCellularBitrate"))
  {
    if (!segPumpConnectedInterfaceIsWWAN(DerivedStorage))
    {
      v40 = *a4;
      goto LABEL_94;
    }

    v40 = *(DerivedStorage + 208);
    if (!v40)
    {
LABEL_84:
      *a4 = v40;
LABEL_94:
      v43 = v40 == 0;
LABEL_95:
      v44 = -12783;
      goto LABEL_96;
    }

LABEL_83:
    v40 = CFRetain(v40);
    goto LABEL_84;
  }

  if (CFEqual(a2, @"FBP_AccessLog"))
  {
    segPumpCreateAccessLog(DerivedStorage, a3, a4);
    goto LABEL_69;
  }

  if (CFEqual(a2, @"FBP_LastServerIPAddress"))
  {
    v41 = (*(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392) + 680);
    while (1)
    {
      v41 = *v41;
      if (!v41)
      {
        break;
      }

      v42 = v41[22];
      if (v42)
      {
        goto LABEL_104;
      }
    }

    v42 = 0;
LABEL_104:
    Copy = FigCFHTTPCreateAddressString(v42);
    if (Copy)
    {
      goto LABEL_46;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_ErrorLog"))
  {
    v45 = *(DerivedStorage + 8856);
    if (v45)
    {
      Copy = CFArrayCreateCopy(a3, v45);
      if (!Copy)
      {
        v12 = 4294954510;
        goto LABEL_66;
      }

      goto LABEL_46;
    }

    goto LABEL_65;
  }

  if (CFEqual(a2, @"FBP_EndError"))
  {
    Copy = *(DerivedStorage + 8232);
    if (!Copy)
    {
      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (CFEqual(a2, @"FBP_PlaybackSessionID"))
  {
    Copy = *(DerivedStorage + 224);
    if (!Copy)
    {
      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (CFEqual(a2, @"FBP_SegmentCache"))
  {
    Copy = *(DerivedStorage + 296);
    if (!Copy)
    {
      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (CFEqual(a2, @"FBP_ExternalProtectionMethods"))
  {
    Copy = *(DerivedStorage + 264);
    if (Copy)
    {
      goto LABEL_118;
    }

    value.start.value = 0;
LABEL_127:
    v27 = *MEMORY[0x1E695E480];
    v28 = kCFNumberSInt64Type;
    goto LABEL_37;
  }

  if (CFEqual(a2, @"FBP_HasKeyContent"))
  {
    v46 = 0;
    *a4 = *MEMORY[0x1E695E4C0];
    while (1)
    {
      v47 = *(*(DerivedStorage + 392 + v46) + 56);
      if (v47)
      {
        ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(v47);
        if (ContentKeySpecifiers)
        {
          if (CFArrayGetCount(ContentKeySpecifiers) >= 1)
          {
            break;
          }
        }
      }

      v12 = 0;
      v46 += 16;
      if (v46 == 48)
      {
        goto LABEL_66;
      }
    }

    v12 = 0;
    v55 = MEMORY[0x1E695E4D0];
    goto LABEL_137;
  }

  if (CFEqual(a2, @"FBP_SpecifiedPreciseStartTime"))
  {
    if (!*(DerivedStorage + 8869) || !*(DerivedStorage + 8870))
    {
      goto LABEL_65;
    }

    v49 = *(DerivedStorage + 8872);
    *&value.start.value = v49;
    if (v49 >= 0.0)
    {
      goto LABEL_134;
    }

    v50 = v49 + *(DerivedStorage + 352);
LABEL_133:
    *&value.start.value = v50;
LABEL_134:
    v51 = *MEMORY[0x1E695E480];
    v52 = &value;
    v53 = kCFNumberDoubleType;
LABEL_135:
    v54 = CFNumberCreate(v51, v53, v52);
LABEL_144:
    *a4 = v54;
    v43 = v54 == 0;
    v44 = -12786;
LABEL_96:
    if (v43)
    {
      v12 = v44;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_66;
  }

  if (CFEqual(a2, @"FBP_PrebufferReservation"))
  {
    if (!*(DerivedStorage + 8))
    {
      goto LABEL_65;
    }

    MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(DerivedStorage, 0);
    CMTimeMakeWithSeconds(&value.start, MinimumPrebufferReservation + *(DerivedStorage + 8176), 1000000);
    v54 = CMTimeCopyAsDictionary(&value.start, a3);
    goto LABEL_144;
  }

  if (CFEqual(a2, @"FBP_ManagedLiveEdgeSeekablePoint"))
  {
    memset(&value, 0, sizeof(value));
    segPumpGetLiveEdge(DerivedStorage, 7u, 1, &value);
    v101 = value;
    v54 = CMTimeRangeCopyAsDictionary(&v101, a3);
    goto LABEL_144;
  }

  if (CFEqual(a2, @"FBP_RecommendedPrebufferReservation"))
  {
    value.start.value = *(DerivedStorage + 8184);
    if (*&value.start.value <= 0.0)
    {
      goto LABEL_65;
    }

    goto LABEL_134;
  }

  if (CFEqual(a2, @"FBSP_Chapters"))
  {
    SynchronousProperties = segPumpLoadSynchronousProperties(DerivedStorage);
    if (SynchronousProperties)
    {
      goto LABEL_69;
    }

    v63 = *(DerivedStorage + 7920);
    if (!v63)
    {
      Copy = *(DerivedStorage + 7912);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  else if (CFEqual(a2, @"FBSP_LocalizedMSODisplayName"))
  {
    SynchronousProperties = segPumpLoadSynchronousProperties(DerivedStorage);
    if (SynchronousProperties)
    {
      goto LABEL_69;
    }

    v63 = *(DerivedStorage + 7936);
    if (!v63)
    {
      Copy = *(DerivedStorage + 7928);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  else if (CFEqual(a2, @"FBSP_CustomMediaSelectionSchemeMetadata"))
  {
    SynchronousProperties = segPumpLoadSynchronousProperties(DerivedStorage);
    if (SynchronousProperties)
    {
      goto LABEL_69;
    }

    v63 = *(DerivedStorage + 7952);
    if (!v63)
    {
      Copy = *(DerivedStorage + 7944);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  else
  {
    if (!CFEqual(a2, @"FBSP_Metadata"))
    {
      if (CFEqual(a2, @"FBSP_MetadataFormats"))
      {
        v58 = *(*(DerivedStorage + 392) + 48);
        if (!v58)
        {
          goto LABEL_65;
        }

        SessionDataSpecifiers = FigMultivariantPlaylistGetSessionDataSpecifiers(v58);
        if (!SessionDataSpecifiers || CFArrayGetCount(SessionDataSpecifiers) < 1)
        {
          goto LABEL_65;
        }

        v60 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (v60)
        {
          v61 = v60;
          CFArrayAppendValue(v60, @"com.apple.quicktime.HLS");
          *a4 = CFRetain(v61);
          CFRelease(v61);
          goto LABEL_158;
        }

        segPumpCopyProperty_cold_2(&value);
LABEL_77:
        LODWORD(v12) = value.start.value;
        goto LABEL_15;
      }

      if (CFEqual(a2, @"FBP_SessionConfiguration"))
      {
        Copy = *(DerivedStorage + 9320);
        if (!Copy)
        {
          goto LABEL_65;
        }

        goto LABEL_118;
      }

      if (CFEqual(a2, @"FBP_TaggedRangeMetadataArray"))
      {
        v62 = *(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56);
        if (!v62 || !FigMediaPlaylistGetDateEntryArray(v62))
        {
          goto LABEL_65;
        }

        Copy = FigMediaPlaylistGetDateEntryArray(*(*(DerivedStorage + 392 + 16 * *(DerivedStorage + 8600)) + 56));
        goto LABEL_118;
      }

      if (CFEqual(a2, @"FBP_BandwidthEstimateStatistics"))
      {
        v64 = *(DerivedStorage + 9312);
        if (v64)
        {
          Copy = FigNetworkInterfaceReporterCopyBandwidthEstimates(v64);
          if (Copy)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_65;
      }

      if (CFEqual(a2, @"FBP_IFrameReport"))
      {
        segPumpCreateIFrameReport();
        goto LABEL_69;
      }

      if (CFEqual(a2, @"FBP_MaxIFrameRate"))
      {
        if (!*(DerivedStorage + 8896))
        {
          goto LABEL_65;
        }

        v65 = *(*(DerivedStorage + 16 * *(DerivedStorage + 8600) + 392) + 56);
        if (!v65)
        {
          goto LABEL_65;
        }

        v66 = fabsf(*(DerivedStorage + 8880));
        v50 = v66 / FigMediaPlaylistGetAvgSegmentDuration(v65);
        goto LABEL_133;
      }

      if (CFEqual(a2, @"FBP_NetworkInterfaceStatistics"))
      {
        NetworkStatistics = segPumpCreateNetworkStatistics(DerivedStorage, a3, a4);
      }

      else
      {
        if (CFEqual(a2, @"FBP_PrefetchKeys"))
        {
          v12 = 0;
          v67 = *(DerivedStorage + 8210);
LABEL_194:
          v68 = MEMORY[0x1E695E4D0];
          v69 = MEMORY[0x1E695E4C0];
          v70 = v67 == 0;
          goto LABEL_195;
        }

        if (CFEqual(a2, @"FBP_NetworkServiceType"))
        {
          Copy = *(DerivedStorage + 256);
          goto LABEL_118;
        }

        if (!CFEqual(a2, @"FBP_StartupStatistics"))
        {
          if (CFEqual(a2, @"FBP_RecoveryAlternate"))
          {
            v40 = segPumpCopyRecoveryAlternateIfViable(DerivedStorage);
            goto LABEL_84;
          }

          if (CFEqual(a2, @"FBP_MinimizeNetworkingWhilePaused"))
          {
            v12 = 0;
            v67 = *(DerivedStorage + 8211);
            goto LABEL_194;
          }

          if (CFEqual(a2, @"FBP_InitialBandwidthTargetForNetwork"))
          {
            if (segPumpConnectedInterfaceIsWWAN(DerivedStorage))
            {
              v40 = *(DerivedStorage + 192);
              if (!v40)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v40 = *(DerivedStorage + 200);
              if (!v40)
              {
                goto LABEL_84;
              }
            }

            goto LABEL_83;
          }

          if (CFEqual(a2, @"FPB_CPECryptorsForSessionCryptKeys"))
          {
            SynchronousProperties = segPumpCreateCPECryptorsSessionCryptKeysDict(DerivedStorage, a4);
            goto LABEL_69;
          }

          if (CFEqual(a2, @"FBP_ReportingAgent"))
          {
            v72 = *(DerivedStorage + 9232);
            if (v72)
            {
              CFRetain(v72);
              v56 = *(DerivedStorage + 9232);
            }

            else
            {
              v56 = 0;
            }

            v12 = 0;
            goto LABEL_138;
          }

          if (CFEqual(a2, @"FBP_LiveUpdateInterval"))
          {
            v52 = (DerivedStorage + 8);
            if (!*(DerivedStorage + 8))
            {
              goto LABEL_65;
            }

            if (*(DerivedStorage + 8218) || *(DerivedStorage + 24) > 1u)
            {
              v12 = 4294954509;
              goto LABEL_66;
            }

            goto LABEL_227;
          }

          if (CFEqual(a2, @"FBP_DownloadDestinationURL"))
          {
            v73 = *(DerivedStorage + 296);
            if (!v73)
            {
              goto LABEL_65;
            }

            v74 = FigGetAllocatorForMedia();
            FigStreamingCacheCopyProperty(v73, @"FSC_DownloadDestinationURL", v74, a4);
LABEL_158:
            v12 = 0;
            goto LABEL_66;
          }

          if (CFEqual(a2, @"FBP_AlternatesInPenaltybox"))
          {
            value.start.value = 0;
            v75 = segPumpCopyAlternatesInPenaltyBox(DerivedStorage, &value);
            goto LABEL_236;
          }

          if (CFEqual(a2, @"FBP_MaxOverlapDurationForSwitching"))
          {
            v52 = (DerivedStorage + 8);
            if (!*(DerivedStorage + 8))
            {
              goto LABEL_65;
            }

LABEL_227:
            v51 = *MEMORY[0x1E695E480];
            v53 = kCFNumberSInt32Type;
            goto LABEL_135;
          }

          if (CFEqual(a2, @"FBP_PrefersConcurrentSwitch"))
          {
            v12 = 0;
            v67 = *(DerivedStorage + 337);
            goto LABEL_194;
          }

          if (CFEqual(a2, @"FBP_NetworkUrgencyMonitor"))
          {
            Copy = *(DerivedStorage + 9712);
            if (!Copy)
            {
              goto LABEL_65;
            }

            goto LABEL_118;
          }

          if (CFEqual(a2, @"FBP_NominalVideoFramerate"))
          {
            segPumpCopyNominalVideoFrameRate(DerivedStorage, a4, v76, v77, v78, v79, v80, v81);
            v43 = *a4 == 0;
            goto LABEL_95;
          }

          if (CFEqual(a2, @"FBP_HasAlternates"))
          {
            v12 = 0;
            v68 = MEMORY[0x1E695E4D0];
            v69 = MEMORY[0x1E695E4C0];
            v70 = *(DerivedStorage + 8280) == 0;
LABEL_195:
            if (v70)
            {
              v55 = v69;
            }

            else
            {
              v55 = v68;
            }

LABEL_137:
            v56 = *v55;
LABEL_138:
            *a4 = v56;
            goto LABEL_66;
          }

          if (CFEqual(a2, @"FBP_SessionKeys"))
          {
            value.start.value = 0;
            v75 = segPumpCopySessionKeys(DerivedStorage, &value);
LABEL_236:
            LODWORD(v12) = v75;
            if (!v75)
            {
              *a4 = value.start.value;
            }

            goto LABEL_15;
          }

          if (CFEqual(a2, @"FBP_LastMediaFileInterfaceType"))
          {
            if (!*(DerivedStorage + 8648))
            {
              goto LABEL_65;
            }

            v51 = *MEMORY[0x1E695E480];
            v52 = (DerivedStorage + 8648);
            v53 = kCFNumberIntType;
            goto LABEL_135;
          }

          if (CFEqual(a2, @"FBP_NetworkCostMonitor"))
          {
            SynchronousProperties = segPumpEnsureNetworkCostMonitor(DerivedStorage, a3);
            if (!SynchronousProperties)
            {
              Copy = *(DerivedStorage + 8656);
              if (!Copy)
              {
                goto LABEL_46;
              }

              goto LABEL_118;
            }
          }

          else
          {
            if (CFEqual(a2, @"FBP_PlaybackRateMonitor"))
            {
              Copy = *(DerivedStorage + 9760);
              if (!Copy)
              {
                goto LABEL_46;
              }

              goto LABEL_118;
            }

            if (CFEqual(a2, @"FBP_EnableContentSteering"))
            {
              v12 = 0;
              v67 = *(DerivedStorage + 8120);
              goto LABEL_194;
            }

            if (CFEqual(a2, @"FBP_ContentSteeringMonitor"))
            {
              Copy = *(DerivedStorage + 9752);
              if (!Copy)
              {
                goto LABEL_46;
              }

              goto LABEL_118;
            }

            if (CFEqual(a2, @"FBP_MainSegmentBytesInTransit"))
            {
              value.start.value = segPumpMainSegmentBytesInTransit(DerivedStorage, v82, v83, v84, v85, v86, v87, v88);
              goto LABEL_127;
            }

            if (CFEqual(a2, @"FBP_PlaylistCache"))
            {
              Copy = *(DerivedStorage + 304);
              if (!Copy)
              {
                goto LABEL_46;
              }

              goto LABEL_118;
            }

            if (CFEqual(a2, @"FBP_ClientNetworkActivity"))
            {
              Copy = *(DerivedStorage + 9288);
              if (!Copy)
              {
                goto LABEL_46;
              }

              goto LABEL_118;
            }

            if (CFEqual(a2, @"FBP_HasFairPlayEncryptedContent"))
            {
              v89 = 0;
              while (1)
              {
                Count = *(DerivedStorage + 7888);
                if (Count)
                {
                  Count = CFArrayGetCount(Count);
                }

                if (v89 >= Count)
                {
                  goto LABEL_287;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 7888), v89++);
                if (ValueAtIndex[6] == 1)
                {
                  goto LABEL_284;
                }
              }
            }

            if (CFEqual(a2, @"FBP_DidTransitionFromLiveToVOD"))
            {
              if (*(DerivedStorage + 8219))
              {
LABEL_284:
                v92 = MEMORY[0x1E695E4D0];
                goto LABEL_288;
              }

LABEL_287:
              v92 = MEMORY[0x1E695E4C0];
LABEL_288:
              Copy = *v92;
              if (!*v92)
              {
                goto LABEL_46;
              }

              goto LABEL_118;
            }

            if (CFEqual(a2, @"FBP_OfflineInterstitialURLs"))
            {
              SynchronousProperties = segPumpCopyOfflineInterstitialURLs(DerivedStorage, a3, a4);
            }

            else if (CFEqual(a2, @"FBP_OfflineInterstitialListJSONs"))
            {
              SynchronousProperties = segPumpCopyOfflineInterstitialListJSONs(DerivedStorage, a3, a4);
            }

            else
            {
              if (CFEqual(a2, @"FBP_CMCDHeaderVendor"))
              {
                segPumpEnsureCMCDHeaderVendor(DerivedStorage, v93, v94, v95, v96, v97, v98, v99, v101.start.value, *&v101.start.timescale, v101.start.epoch, v101.duration.value, *&v101.duration.timescale, v101.duration.epoch, value.start.value, *&value.start.timescale, value.start.epoch, value.duration.value);
                if (!v100)
                {
                  goto LABEL_65;
                }

                Copy = *(DerivedStorage + 9776);
                if (!Copy)
                {
                  goto LABEL_46;
                }

LABEL_118:
                Copy = CFRetain(Copy);
                goto LABEL_46;
              }

              if (CFEqual(a2, @"FBP_NearFutureLiveBufferInfo"))
              {
                segPumpCopyNearFutureLiveBufferInfo(DerivedStorage);
              }

              else
              {
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A28, 4294954512, "<SEGPUMP>", 36291, v4);
              }
            }
          }

LABEL_69:
          LODWORD(v12) = SynchronousProperties;
          goto LABEL_15;
        }

        NetworkStatistics = segPumpCreateStartupStatistics(DerivedStorage, a3, a4);
      }

      v12 = NetworkStatistics;
      goto LABEL_66;
    }

    SynchronousProperties = segPumpLoadSynchronousProperties(DerivedStorage);
    if (SynchronousProperties)
    {
      goto LABEL_69;
    }

    v63 = *(DerivedStorage + 7904);
    if (!v63)
    {
      Copy = *(DerivedStorage + 7896);
      if (!Copy)
      {
        goto LABEL_65;
      }

      goto LABEL_118;
    }
  }

  LODWORD(v12) = CFErrorGetCode(v63);
LABEL_15:
  segPumpUnlockAndSendAllPendingNotifications(*DerivedStorage);
  if (v12 == -15626)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void segPumpFreeSavedEntry(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 360);
  if (v3 == a2)
  {
    v4 = (a1 + 360);
  }

  else
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3 != a2);
  }

  v5 = *v3;
  *v4 = v5;
  if (!v5)
  {
    *(a1 + 368) = v4;
  }

  CFRelease(*(a2 + 8));
  v6 = *(a2 + 16);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  free(*(a2 + 48));

  free(a2);
}

double segPumpResetConnection(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(v4);
      }
    }

    FigHTTPStopAndReleaseTimer((a2 + 96));
    v6 = *(a2 + 16);
    if (v6)
    {
      CFRelease(v6);
      *(a2 + 16) = 0;
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 8) = 0;
    }

    if (*(a2 + 88))
    {
      segPumpCustomURLLoaderCancelRequest(a1);
      *(a2 + 88) = 0;
    }

    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    v8 = *(a2 + 112);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 112) = 0;
    }

    v9 = *(a2 + 72);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 72) = 0;
    }

    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 104) = 0;
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 52) = 0u;
  }

  return result;
}

void segPumpCancelMediaFileReadAndResetData(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (*(a2 + 776) >= 1)
  {
    v8 = 0;
    do
    {
      segPumpStreamCancelReadAheadAndResetDataAtIndex(a1, a2, 0);
      ++v8;
    }

    while (v8 < *(a2 + 776));
  }

  segPumpStreamCancelPreloadReadAndResetData(a1, a2);
  segPumpStreamCancelPreloadMapReadAndResetData(a1, a2);
  v16 = *(a2 + 840);
  if (v16)
  {
    CFRelease(v16);
    *(a2 + 840) = 0;
  }

  v17 = *(a2 + 680);
  if (v17)
  {
    while (1)
    {
      v56 = *(v17 + 56);
      v57 = *(v17 + 40);
      v18 = *(v17 + 72);
      v19 = *(v17 + 80);
      v20 = *(v17 + 88);
      v21 = v20 ? CFRetain(v20) : 0;
      v22 = *(v17 + 8);
      if (v22)
      {
        break;
      }

LABEL_20:
      segPumpResetMediaConnection(a1, v17, v5);
      if (a4)
      {
        *(v17 + 40) = v57;
        *(v17 + 56) = v56;
        *(v17 + 72) = v18;
        *(v17 + 80) = v19;
        if (v21)
        {
          v49 = CFRetain(v21);
        }

        else
        {
          v49 = 0;
        }

        *(v17 + 88) = v49;
      }

      if (v21)
      {
        CFRelease(v21);
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    MediaFilePrivateData = segPumpGetMediaFilePrivateData(v22, v9, v10, v11, v12, v13, v14, v15);
    v31 = *(v17 + 8);
    if (v31)
    {
      if (FigMediaSegmentSpecifierGetType(v31) == 1)
      {
        v32 = *(a2 + 288);
        if (v32)
        {
          CFRelease(v32);
          *(a2 + 288) = 0;
          *(a2 + 320) = -1;
        }

LABEL_18:
        MediaFilePrivateData[13] = 0;
        MediaFilePrivateData[14] = 0;
        MediaFilePrivateData[15] = 0;
        v48 = *(v17 + 8);
        if (v48)
        {
          CFRelease(v48);
          *(v17 + 8) = 0;
        }

        goto LABEL_20;
      }

      v31 = *(v17 + 8);
    }

    if (*(segPumpGetMediaFilePrivateData(v31, v23, v24, v25, v26, v27, v28, v29) + 2))
    {
      v40 = segPumpGetMediaFilePrivateData(*(v17 + 8), v33, v34, v35, v36, v37, v38, v39);
      CFRelease(v40[2]);
      *(segPumpGetMediaFilePrivateData(*(v17 + 8), v41, v42, v43, v44, v45, v46, v47) + 2) = 0;
    }

    goto LABEL_18;
  }

LABEL_28:
  v50 = *(a2 + 760);
  if (v50 >= 1)
  {
    bzero((a2 + 696), 8 * v50);
  }

  *(a2 + 696) = *(a2 + 680);
  v51 = *(a2 + 256);
  if (v51)
  {
    CFRelease(v51);
    *(a2 + 256) = 0;
  }

  v52 = *(a2 + 264);
  if (v52)
  {
    CFRelease(v52);
    *(a2 + 264) = 0;
  }

  v53 = *(a2 + 840);
  if (v53)
  {
    CFRelease(v53);
    *(a2 + 840) = 0;
  }

  v54 = *(a2 + 832);
  if (v54)
  {
    CFRelease(v54);
    *(a2 + 832) = 0;
  }

  *(a2 + 848) = 0;
  *(a2 + 403) = 0;
  if (!*(a2 + 870))
  {
    *(a2 + 869) = 0;
  }

  *(a2 + 871) = 0;
  *(a2 + 1152) = 0;
  v55 = *(a2 + 1160);
  if (v55)
  {
    CFRelease(v55);
    *(a2 + 1160) = 0;
  }
}

void segPumpResetMediaConnection(uint64_t a1, uint64_t a2, int a3)
{
  segPumpResetConnection(a1, a2 + 16);
  if (!a3)
  {
    segPumpStreamDontReuseHTTPRequest(a1, a2);
  }

  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v6 = *(a2 + 272);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 272) = 0;
  }

  v7 = *(a2 + 168);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 168) = 0;
  }

  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 8) = 0;
  }

  *(a2 + 209) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
}

void segPumpCompleteNWAlternateForStream(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1208))
  {
    nw_activity_complete_with_reason();
    v3 = *(a1 + 1208);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 1208) = 0;
    }
  }

  if (*(a1 + 1200))
  {
    nw_activity_complete_with_reason();
    v4 = *(a1 + 1200);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 1200) = 0;
    }
  }
}

void segPumpStreamCancelPreloadReadAndResetData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 792);
  if (v3)
  {
    if (v3[4] || v3[13])
    {
      segPumpResetMediaConnection(a1, v3, 0);
    }

    else
    {
      v4 = v3[34];
      if (v4)
      {
        CFRelease(v4);
        v3 = *(a2 + 792);
        v3[34] = 0;
      }

      v5 = v3[1];
      if (v5)
      {
        CFRelease(v5);
        *(*(a2 + 792) + 8) = 0;
      }
    }

    *(a2 + 792) = 0;
  }
}

void segPumpStreamCancelPreloadMapReadAndResetData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 800);
  if (v3)
  {
    if (v3[4] || v3[13])
    {
      segPumpResetMediaConnection(a1, v3, 0);
    }

    else
    {
      v4 = v3[34];
      if (v4)
      {
        CFRelease(v4);
        v3 = *(a2 + 800);
        v3[34] = 0;
      }

      v5 = v3[1];
      if (v5)
      {
        CFRelease(v5);
        *(*(a2 + 800) + 8) = 0;
      }
    }

    *(a2 + 800) = 0;
  }
}

CFTypeRef segPumpGetMediaFilePrivateData(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    segPumpGetMediaFilePrivateData_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v12, v13, SHIDWORD(v13), v14);
    return 0;
  }

  Instance = CMGetAttachment(a1, @"SegPumpMediaFilePrivateData", 0);
  if (!Instance)
  {
    FigGetAllocatorForMedia();
    context[0] = xmmword_1E7476B70;
    if (segPumpMediaFilePrivateDataGetTypeID_once != -1)
    {
      dispatch_once_f(&segPumpMediaFilePrivateDataGetTypeID_once, context, segPumpRegisterClassUtil);
    }

    Instance = _CFRuntimeCreateInstance();
    if (!Instance)
    {
      segPumpGetMediaFilePrivateData_cold_1();
      return Instance;
    }

    CMSetAttachment(a1, @"SegPumpMediaFilePrivateData", Instance, 0);
    if (CFGetRetainCount(Instance) <= 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(Instance);
      return 0;
    }

    CFRelease(Instance);
  }

  return Instance;
}

void segPumpStreamCancelReadAheadAndResetDataAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a2 + 768) + 8 * a3);
  if (v4)
  {
    v5 = a3;
    if (v4[4] || v4[13])
    {
      segPumpResetMediaConnection(a1, v4, 0);
    }

    else
    {
      v8 = v4[34];
      if (v8)
      {
        CFRelease(v8);
        v9 = *(a2 + 768);
        *(*(v9 + 8 * v5) + 272) = 0;
        v4 = *(v9 + 8 * v5);
      }

      v10 = v4[1];
      if (v10)
      {
        CFRelease(v10);
        *(*(*(a2 + 768) + 8 * v5) + 8) = 0;
      }
    }

    v6 = *(a2 + 776);
    if (v6 > v5)
    {
      v7 = v6 - 1;
      if (v7 > v5)
      {
        do
        {
          *(*(a2 + 768) + 8 * v5) = *(*(a2 + 768) + 8 * v5 + 8);
          ++v5;
        }

        while (v7 != v5);
      }

      *(*(a2 + 768) + 8 * v7) = 0;
    }
  }
}

void segPumpMediaFilePrivateDataFinalize(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    CFRelease(v2);
    a1[16] = 0;
  }

  v3 = a1[26];
  if (v3)
  {
    CFRelease(v3);
    a1[26] = 0;
  }

  v4 = a1[27];
  if (v4)
  {
    CFRelease(v4);
    a1[27] = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
    a1[2] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }
}

uint64_t segPumpRegisterClassUtil(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

void segPumpStreamUpdateIndexExpectedArrival(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 9760) && *(a1 + 337) && *(a1 + 392) == a2)
  {
    SInt64 = FigCFNumberCreateSInt64();
    v5 = *(a1 + 9760);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, @"AfmfpbProperty_MainPlaylistExpectedUpdateTime", SInt64);
    }

    if (SInt64)
    {

      CFRelease(SInt64);
    }
  }
}

void segPumpStreamDontReuseHTTPRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 160) = 0;
  }

  v5 = *(a2 + 152);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 152) = 0;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {
      v7(v6);
    }

    v8 = *(a2 + 32);
    if (v8)
    {
      CFRelease(v8);
      *(a2 + 32) = 0;
    }
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 24) = 0;
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    CFRelease(v10);
    *(a2 + 88) = 0;
  }

  *(a2 + 145) = 0;
  *(a2 + 192) = 0;
  *(a2 + 80) = 0;
  if (*(a2 + 104))
  {
    segPumpCustomURLLoaderCancelRequest(a1);
    *(a2 + 104) = 0;
  }
}

void segPumpUnlockAndSendAllPendingNotifications(uint64_t a1)
{
  if (FigRetainProxyIsInvalidated())
  {

    FigRetainProxyUnlockMutex();
    return;
  }

  Owner = FigRetainProxyGetOwner();
  CFRetain(Owner);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyGetLockCount() < 2)
  {
    v3 = *(DerivedStorage + 9144);
    *(DerivedStorage + 9144) = 0;
    v4 = *(DerivedStorage + 9152);
    v5 = *(DerivedStorage + 9160);
    *(DerivedStorage + 9152) = 0u;
    v6 = *(DerivedStorage + 9168);
    v7 = *(DerivedStorage + 9176);
    *(DerivedStorage + 9168) = 0u;
    v8 = *(DerivedStorage + 9184);
    v9 = *(DerivedStorage + 9192);
    *(DerivedStorage + 9184) = 0u;
    FigRetainProxyUnlockMutex();
    if (!v3)
    {
      goto LABEL_28;
    }

    if ((v3 & 0x20) != 0)
    {
      goto LABEL_27;
    }

    if ((v3 & 2) != 0)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if ((v3 & 0x10) == 0)
      {
LABEL_10:
        if ((v3 & 0x40) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    else if ((v3 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 0x40) == 0)
    {
LABEL_11:
      if ((v3 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

LABEL_21:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 1) == 0)
    {
LABEL_12:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

LABEL_22:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 0x80) == 0)
    {
LABEL_13:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

LABEL_23:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 0x100) == 0)
    {
LABEL_14:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

LABEL_24:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 0x200) == 0)
    {
LABEL_15:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

LABEL_25:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 0x400) == 0)
    {
LABEL_16:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if ((v3 & 0x800) != 0)
    {
LABEL_27:
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

LABEL_28:
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_40;
  }

  FigRetainProxyUnlockMutex();
LABEL_40:

  CFRelease(Owner);
}

void segPumpReadyNotification(uint64_t a1, __CFString *a2, CFTypeRef cf)
{
  if (a2 == @"FBPAL_AlternateListChanged")
  {
    v6 = *(a1 + 9144) | 1;
    goto LABEL_20;
  }

  if (a2 == @"FBPAL_SeekableTimeRangeChanged")
  {
    v6 = *(a1 + 9144) | 2;
    goto LABEL_20;
  }

  if (a2 == @"FBP_DurationChanged")
  {
    v6 = *(a1 + 9144) | 0x10;
    goto LABEL_20;
  }

  if (@"FBP_FatalErrorOccurred" == a2)
  {
    v7 = *(a1 + 9152);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 9152) = 0;
    }

    if (cf)
    {
      v8 = CFRetain(cf);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 9152) = v8;
    *(a1 + 9144) |= 0x20u;
    *(a1 + 9704) = 1;
  }

  else if (a2 == @"FBP_NewErrorLogEntry")
  {
    v9 = *(a1 + 9176);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 9176) = 0;
    }

    *(a1 + 9144) |= 0x40u;
    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 9176) = v10;
  }

  else
  {
    if (a2 != @"FBP_SuggestedAlternate")
    {
      if (a2 == @"FBP_TaggedRangeMetadataChanged")
      {
        v6 = *(a1 + 9144) | 0x100;
      }

      else if (a2 == @"FBP_PrefersConcurrentSwitchChanged")
      {
        v6 = *(a1 + 9144) | 0x200;
      }

      else
      {
        if (a2 != @"FBP_RecommendedPrebufferReservationChanged")
        {
          if (@"FBP_PlaylistUpdateNotification" == a2)
          {
            *(a1 + 9144) |= 0x800u;
            v5 = *(a1 + 9192);
            *(a1 + 9192) = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if (v5)
            {

              CFRelease(v5);
            }
          }

          return;
        }

        v6 = *(a1 + 9144) | 0x400;
      }

LABEL_20:
      *(a1 + 9144) = v6;
      return;
    }

    *(a1 + 9144) |= 0x80u;
    v11 = *(a1 + 9168);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 9168) = 0;
    }

    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 9168) = v12;
  }
}

void segPumpSendEndCallbackForActiveStream(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *(DerivedStorage + 392 + 16 * *a2 + 8);
  if (v8 != a2)
  {
    v8 = *(DerivedStorage + 392 + 16 * *a2);
  }

  if (*(v8 + 16) && !*(a2 + 1152))
  {
    segPumpMakeDataCallback(a1, a2, *(DerivedStorage + 176), 0, 2u, *(a2 + 304), MEMORY[0x1E6960C70], 0, 0, a3, 0, 0);
    segPumpStopStream(v7, a2, 0);
    *(a2 + 1152) = 1;
    v9 = *(a2 + 1160);
    *(a2 + 1160) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v9)
    {

      CFRelease(v9);
    }
  }
}

uint64_t segPumpSentEndCallbackForAnyStream(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = 0;
    for (i = a1 + 392; *i; i += 16)
    {
      if (*(*i + 1152))
      {
        return 1;
      }

      if (++v2 == 3)
      {
        return 0;
      }
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    segPumpSentEndCallbackForAnyStream_cold_1();
  }

  segPumpSentEndCallbackForAnyStreamHandleTTR(a1);
  return 0;
}

double segPumpSentEndCallbackForAnyStreamHandleTTR(uint64_t a1)
{
  if (!a1)
  {
    return segPumpSentEndCallbackForAnyStreamHandleTTR_cold_2();
  }

  v1 = *(a1 + 9320);
  if (!v1)
  {
    return segPumpSentEndCallbackForAnyStreamHandleTTR_cold_1();
  }

  FigRCLGetNumberWithDefault(v1, @"radar_153096490_TTREnabled", 1);
  return result;
}

uint64_t segPumpMakeDataCallback(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, unsigned int a5, uint64_t a6, __int128 *a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  v20 = *(CMBaseObjectGetDerivedStorage() + 160);
  v21 = *a2;
  v22 = *(a2 + 18);
  v28 = 0;
  if (!v20)
  {
    goto LABEL_9;
  }

  v25 = v22;
  v24 = a2[110];
  if (a3)
  {
    CFRetain(a3);
  }

  FigRetainProxyUnlockAll();
  v26 = *a7;
  v27 = *(a7 + 2);
  v20(a1, a3, a4, a5, v21, v25, 0, &v26, a8, a9, a6, a10, a11, &v28);
  if (a3)
  {
    CFRelease(a3);
  }

  FigRetainProxyRelock();
  if (FigRetainProxyIsInvalidated())
  {
    return 4294954413;
  }

  if (v24 != a2[110])
  {
    return 4294951670;
  }

LABEL_9:
  result = 0;
  if (a12)
  {
    *a12 = v28;
  }

  return result;
}

double segPumpSetStreamDiscontinuityDomain(void *a1, uint64_t *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2[38];
  if (a3)
  {
    a2[38] = FigMediaPlaylistUtilityGetDiscontinuityDomainForSegment(a2[39], a3);
    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a3);
  }

  else
  {
    MediaSequence = 0;
    a2[38] = 0;
  }

  a2[41] = MediaSequence;
  if (a1[49] == a2 && a1[1220])
  {
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, a2 + 38);
    v12 = a1[1220];
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v13(v12, @"AfmfpbProperty_MainStreamDiscontinuityDomain", v11);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v5 != a2[38] && dword_1EAF16A30 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void segPumpStreamDisposeStorage(void *a1)
{
  segPumpFreeDiscoQueue(a1 + 42);
  v2 = a1[35];
  if (v2)
  {
    CFRelease(v2);
    a1[35] = 0;
  }

  v3 = a1[34];
  if (v3)
  {
    CFRelease(v3);
    a1[34] = 0;
  }

  v4 = a1[29];
  if (v4)
  {
    CFRelease(v4);
    a1[29] = 0;
  }

  v5 = a1[30];
  if (v5)
  {
    CFRelease(v5);
    a1[30] = 0;
  }

  segPumpStreamUpdateIndexFile(a1, 0, 0, 0, 0, 0);
}

void segPumpDestroyMediaConnection(uint64_t a1, void *a2, dispatch_object_t *a3)
{
  --a2[93];
  v4 = a2[85];
  if (v4 == a3)
  {
    v5 = (a2 + 85);
  }

  else
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4 != a3);
  }

  v6 = *v4;
  *v5 = v6;
  if (!v6)
  {
    a2[86] = v5;
  }

  segPumpResetMediaConnection(a1, a3, 0);
  FigHTTPStopAndReleaseTimer(a3 + 14);
  v7 = a3[2];
  if (v7)
  {
    CFRelease(v7);
    a3[2] = 0;
  }

  v8 = a3[21];
  if (v8)
  {
    CFRelease(v8);
    a3[21] = 0;
  }

  v9 = a3[22];
  if (v9)
  {
    CFRelease(v9);
    a3[22] = 0;
  }

  v10 = a3[3];
  if (v10)
  {
    CFRelease(v10);
    a3[3] = 0;
  }

  v11 = a3[4];
  if (v11)
  {
    CFRelease(v11);
    a3[4] = 0;
  }

  v12 = a3[11];
  if (v12)
  {
    CFRelease(v12);
    a3[11] = 0;
  }

  v13 = a3[19];
  if (v13)
  {
    CFRelease(v13);
    a3[19] = 0;
  }

  v14 = a3[20];
  if (v14)
  {
    CFRelease(v14);
  }

  free(a3);
}

uint64_t *AlternateQueueFree(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      *a1 = *result;
      if (!v3)
      {
        *(a1 + 8) = a1;
      }

      AlternateEntryFree(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

void *segPumpFreeDiscoQueue(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

void segPumpStreamUpdateIndexFile(void *a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4, CFTypeRef a5, CFTypeRef a6)
{
  v11 = a1[2];
  a1[2] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[1];
  a1[1] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[3];
  a1[3] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[4];
  a1[4] = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[5];
  a1[5] = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

void AlternateEntryFree(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }
  }

  free(a1);
}

double segPumpGetMinTime(uint64_t *a1)
{
  v2 = a1[1075];
  v3 = a1 + 49;
  v4 = *(a1[2 * v2 + 49] + 88);
  if (v2 == 1 && (v5 = *(*v3 + 56)) != 0 && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v5)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && (v7 = *v3, *(*v3 + 16)) || !a1[1075] && (v9 = *(a1[51] + 56)) != 0 && (v10 = FigMediaPlaylistGetMediaSegmentSpecifiers(v9)) != 0 && CFArrayGetCount(v10) >= 1 && (v7 = a1[51], *(v7 + 16)))
  {
    if (v4 <= *(v7 + 88))
    {
      return *(v7 + 88);
    }
  }

  return v4;
}

double segPumpGetMaxTime(void *a1)
{
  v1 = a1[1075];
  v2 = a1[2 * v1 + 49];
  result = -1.0;
  if (*(v2 + 16))
  {
    v4 = *(v2 + 96);
    if (v4 > 0.0)
    {
      result = v4 + *(v2 + 88);
    }
  }

  if (v1)
  {
    if (v1 != 1)
    {
LABEL_11:
      v7 = result;
      goto LABEL_12;
    }

    v5 = a1[49];
  }

  else
  {
    v5 = a1[51];
  }

  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 96);
  if (v6 <= 0.0)
  {
    goto LABEL_11;
  }

  v7 = v6 + *(v5 + 88);
  if (v7 < 0.0)
  {
    goto LABEL_11;
  }

  if (result < 0.0)
  {
    result = v7;
  }

LABEL_12:
  if (result >= v7)
  {
    result = v7;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t segPumpGetObservedNetworkStats(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(&v10[8], 0, 216);
  segPumpMakeNetworkPredictionInput(a1, v10);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  *&v10[16] = UpTimeNanoseconds - a2;
  *v10 = 0;
  *&v10[56] = 0uLL;
  *&v10[168] = 9;
  v7 = *(a1 + 96);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v11[10] = *&v10[160];
    v11[11] = *&v10[176];
    v11[12] = *&v10[192];
    v11[13] = *&v10[208];
    v11[6] = *&v10[96];
    v11[7] = *&v10[112];
    v11[8] = *&v10[128];
    v11[9] = *&v10[144];
    v11[2] = *&v10[32];
    v11[3] = *&v10[48];
    v11[4] = *&v10[64];
    v11[5] = *&v10[80];
    v11[0] = *v10;
    v11[1] = *&v10[16];
    LODWORD(result) = v8(v7, UpTimeNanoseconds, v11, a3);
  }

  else
  {
    LODWORD(result) = -12782;
  }

  if (result >> 1 == 2147474779)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t segPumpGetAverageEstimatedMediaBitrate(uint64_t a1, int a2, _DWORD *a3, double *a4)
{
  v4 = 0;
  v5 = (a1 + 400);
  v6 = 0.0;
  v7 = 3;
  while (!*(*(v5 - 1) + 16))
  {
LABEL_11:
    v5 += 2;
    if (!--v7)
    {
      *a3 = v4;
      *a4 = v6;
      return 1;
    }
  }

  if (!a2 || (v8 = *v5) == 0)
  {
    v8 = *(v5 - 1);
  }

  v9 = *(v8 + 1096);
  if (v9)
  {
    v4 += v9;
    if (v6 == 0.0)
    {
      v6 = *(v8 + 1104);
    }

    else if (v6 >= *(v8 + 1104))
    {
      v6 = *(v8 + 1104);
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t segPumpGetSafeNetworkBandwidth(uint64_t a1, double *a2, int a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  segPumpMakeNetworkPrediction(a1, &v24);
  v9 = v8;
  v10 = 0.0;
  if (!v8)
  {
    v10 = *(&v25 + 1) * v24;
    if (v10 != 0.0)
    {
      v9 = 0;
      if (!a2)
      {
        return v9;
      }

      goto LABEL_26;
    }
  }

  if (!(a4 | a3) || *(a1 + 8896))
  {
    goto LABEL_25;
  }

  if (!segPumpSentEndCallbackForAllActiveStreams(a1))
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(a1 + 392 + v11);
      if (*(v13 + 16))
      {
        v12 = (*(v13 + 869) & v12);
      }

      v11 += 16;
    }

    while (v11 != 48);
    if (!(v12 | a4))
    {
      goto LABEL_25;
    }
  }

  number = 0;
  v14 = *(a1 + 9760);
  if (!v14 || (AllocatorForMedia = FigGetAllocatorForMedia(), (v16 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (v16(v14, @"AfmfpbProperty_PredictedBitrate", AllocatorForMedia, &number), !number))
  {
    v10 = 0.0;
LABEL_25:
    if (!a2)
    {
      return v9;
    }

LABEL_26:
    *a2 = v10;
    return v9;
  }

  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
  v17 = valuePtr;
  if (dword_1EAF16A30)
  {
    v31 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v31;
    v20 = type;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 0xFFFFFFFE;
    }

    if (v21)
    {
      v22 = *(a1 + 8944);
      if (!v22)
      {
        v22 = &stru_1F0B1AFB8;
      }

      v34 = 136315650;
      v35 = "segPumpGetNetworkBandwidthFromMonitor";
      v36 = 2114;
      v37 = v22;
      v38 = 2048;
      v39 = valuePtr;
      _os_log_send_and_compose_impl(v21, 0, v40, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v20, "<SEGPUMP> %s: %{public}@: get bandwidth:%lld from Monitor", &v34, 32);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (number)
  {
    CFRelease(number);
  }

  v9 = 0;
  v10 = v17;
  if (a2)
  {
    goto LABEL_26;
  }

  return v9;
}

void segPumpCanContinueWithoutGap(uint64_t a1, int *a2)
{
  if (!*(a1 + 8218) && *(a1 + 24) != 1 && (v4 = a1 + 392, (v5 = *(*(a1 + 392 + 16 * *(a1 + 8600)) + 56)) != 0) && (v6 = FigMediaPlaylistGetMediaSegmentSpecifiers(v5)) != 0 && CFArrayGetCount(v6) >= 1 && (v7 = *(v4 + 16 * *(a1 + 8600)), *(v7 + 1112)))
  {
    if (*(v7 + 1185))
    {
      v8 = 0;
    }

    else
    {
      v8 = 7;
      UpTimeNanoseconds = FigGetUpTimeNanoseconds();
      v10 = 0;
      v44 = UpTimeNanoseconds;
      v45 = v4;
      do
      {
        v11 = *(v4 + 16 * v10);
        if (*(v11 + 16))
        {
          if (*(v11 + 56))
          {
            if (*(v11 + 862))
            {
              v12 = fmax(*(v11 + 912) + (UpTimeNanoseconds - *(v11 + 896)) / -1000000000.0 + 0.0, 0.0);
            }

            else
            {
              v14 = 0;
              v12 = 0.0;
              while (1)
              {
                MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v11 + 56));
                if (MediaSegmentSpecifiers)
                {
                  MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
                }

                if (v14 >= MediaSegmentSpecifiers)
                {
                  break;
                }

                v16 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v11 + 56));
                ValueAtIndex = CFArrayGetValueAtIndex(v16, v14);
                MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v18, v19, v20, v21, v22, v23, v24);
                v26 = MediaFilePrivateData;
                if (!MediaFilePrivateData[96])
                {
                  if (MediaFilePrivateData[73] || MediaFilePrivateData[74])
                  {
                    v12 = v12 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
                  }

                  else
                  {
                    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
                    if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
                    {
                      v28 = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
                      v29 = 0;
                      if (v28)
                      {
LABEL_32:
                        Count = CFArrayGetCount(v28);
                        goto LABEL_34;
                      }

                      while (1)
                      {
                        Count = 0;
LABEL_34:
                        if (v29 >= Count)
                        {
                          break;
                        }

                        v31 = CFArrayGetValueAtIndex(v28, v29);
                        v39 = segPumpGetMediaFilePrivateData(v31, v32, v33, v34, v35, v36, v37, v38);
                        if (v39[73] || v39[74])
                        {
                          v12 = v12 + FigMediaSegmentSpecifierGetTimeInSeconds(v31);
                        }

                        ++v29;
                        if (v28)
                        {
                          goto LABEL_32;
                        }
                      }

                      UpTimeNanoseconds = v44;
                      v4 = v45;
                    }
                  }
                }

                ++v14;
                if (!v26[73])
                {
                  if (ValueAtIndex)
                  {
                    v40 = *(v11 + 376) + 1;
                    if (v40 != FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex))
                    {
                      v8 += -1 << v10;
                    }
                  }

                  break;
                }
              }
            }

            v41 = *(v11 + 1056);
            v42 = *(v11 + 1064);
            v43 = v41 + v12 * 1000000000.0;
            if (v41 >= v42)
            {
              v43 = v42 + v12 * 1000000000.0;
            }

            if (UpTimeNanoseconds <= v43)
            {
              v13 = 0;
            }

            else
            {
              v13 = -1 << v10;
            }
          }

          else
          {
            v13 = -1 << v10;
          }

          v8 += v13;
        }

        ++v10;
      }

      while (v10 != 3);
    }
  }

  else
  {
    v8 = 7;
  }

  if (a2)
  {
    *a2 = v8;
  }
}

uint64_t segPumpConnectedInterfaceIsWWAN(uint64_t a1)
{
  v1 = *(a1 + 8648);
  if (v1)
  {
    return FigNetworkInterfaceIsCellular(v1);
  }

  v1 = *(a1 + 8644);
  if (v1)
  {
    return FigNetworkInterfaceIsCellular(v1);
  }

  result = *(a1 + 8632);
  if (result)
  {
    return FigNetworkPathInformationDoesUseCellular(result);
  }

  return result;
}

CMTimeRange *segPumpGetLiveEdge@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (*(a1 + 8218))
  {
    goto LABEL_22;
  }

  v8 = 0;
  v9 = a1 + 392;
  v10 = 1;
  v11 = 1.79769313e308;
  do
  {
    v12 = v10;
    v13 = *(v9 + 16 * v8);
    if (*(v13 + 16) && ((a2 >> v8) & 1) != 0)
    {
      v14 = *(v13 + 88);
      v15 = *(v13 + 96);
      v16 = segPumpGetMinimumPrebufferReservation(a1, *(v13 + 56)) + *(a1 + 8176);
      if (*(v13 + 1064) >= 1 && *(a1 + 342))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v18 = *(a1 + 16);
        if (v18 <= 0.0)
        {
          LODWORD(v18) = *(a1 + 8);
          v18 = *&v18;
        }

        v19 = UpTimeNanoseconds - *(v13 + 1064);
        if (v19 / 1000000000.0 < v18)
        {
          v18 = v19 / 1000000000.0;
        }

        v16 = v16 - v18;
      }

      if (v11 > v14 + v15 - v16)
      {
        v11 = v14 + v15 - v16;
      }
    }

    v10 = 0;
    v8 = 1;
  }

  while ((v12 & 1) != 0);
  if (v11 >= 1.79769313e308)
  {
LABEL_22:
    start = **&MEMORY[0x1E6960C70];
    v23 = start;
    return CMTimeRangeMake(a4, &start, &v23);
  }

  else
  {
    v20 = *(a1 + 16);
    if (v20 <= 0.0)
    {
      LODWORD(v20) = *(a1 + 8);
      v20 = *&v20;
    }

    if (a3)
    {
      v21 = v20 * 1.5;
    }

    else
    {
      v21 = v20;
    }

    CMTimeMakeWithSeconds(a4, v11, 90000);
    result = CMTimeMakeWithSeconds(&start, v21, 90000);
    *(a4 + 24) = start;
  }

  return result;
}

CFTypeRef segPumpCopyRecoveryAlternateIfViable(uint64_t a1)
{
  if (!*(a1 + 8432))
  {
    return 0;
  }

  v2 = (a1 + 8280);
  do
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  while (!CFEqual(v2[1], *(a1 + 8432)));
  v6 = 0.0;
  if (*(a1 + 9088) <= 0.0)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(*(a1 + 8432));
    if (!AverageBitRate)
    {
      AverageBitRate = FigAlternateGetPeakBitRate(v2[1]);
    }

    v3 = AverageBitRate;
  }

  else
  {
    v3 = (*(a1 + 9088) * FigAlternateGetPeakBitRate(v2[1]));
  }

  if (segPumpGetSafeNetworkBandwidth(a1, &v6, 0, 0) || v6 < v3)
  {
    return 0;
  }

  return CFRetain(*(a1 + 8432));
}

uint64_t segPumpCreateCPECryptorsSessionCryptKeysDict(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    segPumpCreateCPECryptorsSessionCryptKeysDict_cold_3(&v21);
    return v21;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    segPumpCreateCPECryptorsSessionCryptKeysDict_cold_2(&v20);
    return v20;
  }

  v6 = Mutable;
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 7888);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      v17 = 0;
      *a2 = CFRetain(v6);
      goto LABEL_22;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 7888), i);
    if (ValueAtIndex[2])
    {
      v10 = ValueAtIndex;
      v11 = ValueAtIndex[9];
      if (v11)
      {
        if (*(v10 + 155) && *(v10 + 152) && segPumpIsCryptorReadyToDecrypt(v11))
        {
          break;
        }
      }
    }

LABEL_20:
    ;
  }

  v12 = FigGetAllocatorForMedia();
  v13 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v13)
  {
    v14 = v13;
    v15 = v10[9];
    if (v15 && segPumpIsCryptorReadyToDecrypt(v15))
    {
      CFDictionarySetValue(v14, @"FPBCPECryptorsKey_Video", v10[9]);
    }

    v16 = v10[14];
    if (v16)
    {
      if (segPumpIsCryptorReadyToDecrypt(v16))
      {
        CFDictionarySetValue(v14, @"FPBCPECryptorsKey_Audio", v10[14]);
      }
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    CFDictionarySetValue(v6, v10[2], v14);
    CFRelease(v14);
    goto LABEL_20;
  }

  segPumpCreateCPECryptorsSessionCryptKeysDict_cold_1(&v19);
  v17 = v19;
LABEL_22:
  CFRelease(v6);
  return v17;
}

uint64_t segPumpCopyAlternatesInPenaltyBox(uint64_t a1, __CFArray **a2)
{
  if (*(a1 + 8360))
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      for (i = *(a1 + 8296); i; i = *i)
      {
        CFArrayAppendValue(v6, i[1]);
      }

      if (a2)
      {
        result = 0;
        *a2 = v6;
      }

      else
      {
        CFRelease(v6);
        return 0;
      }
    }

    else
    {
      segPumpCopyAlternatesInPenaltyBox_cold_1(&v9);
      return v9;
    }
  }

  else
  {
    segPumpCopyAlternatesInPenaltyBox_cold_2(&v10);
    return v10;
  }

  return result;
}

void segPumpCopyNominalVideoFrameRate(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a1)
    {
      v9 = *(a1 + 8280);
      if (v9)
      {
        v10 = 0.0;
        while (1)
        {
          FrameRate = FigAlternateGetFrameRate(v9[1]);
          v12 = FrameRate;
          if (v12 == 0.0)
          {
            goto LABEL_18;
          }

          if (v10 != 0.0)
          {
            break;
          }

          v13 = FrameRate;
LABEL_19:
          v9 = *v9;
          v10 = v13;
          if (!v9)
          {
            goto LABEL_22;
          }
        }

        if (vabds_f32(v10, v12) > 0.01)
        {
          if (v10 <= v12)
          {
            v13 = FrameRate;
          }

          else
          {
            v13 = v10;
          }

          if (v10 < v12)
          {
            v12 = v10;
          }

          if (fabsf(v13 + (v12 * -2.0)) >= 0.01 && fabsf(v13 + (v12 * -3.0)) >= 0.01 && fabsf(v13 + (v12 * -4.0)) >= 0.01)
          {
            v13 = 0.0;
          }

          goto LABEL_19;
        }

LABEL_18:
        v13 = v10;
        goto LABEL_19;
      }

      v13 = 0.0;
LABEL_22:
      valuePtr = LODWORD(v13);
      v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
      if (v14)
      {
        *a2 = v14;
      }

      else
      {
        segPumpCopyNominalVideoFrameRate_cold_1();
      }
    }

    else
    {
      segPumpCopyNominalVideoFrameRate_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v15, v16, valuePtr, v18);
    }
  }

  else
  {
    segPumpCopyNominalVideoFrameRate_cold_3(a1, 0, a3, a4, a5, a6, a7, a8, v15, v16, valuePtr, v18);
  }
}

uint64_t segPumpCopySessionKeys(uint64_t a1, __CFArray **a2)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = *(a1 + 392);
    v8 = *(v7 + 48);
    if (v8)
    {
      for (i = 0; ; ++i)
      {
        ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(v8);
        if (ContentKeySpecifiers)
        {
          ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
        }

        if (i >= ContentKeySpecifiers)
        {
          break;
        }

        v11 = FigMultivariantPlaylistGetContentKeySpecifiers(*(v7 + 48));
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        if (FigContentKeySpecifierGetIsPrefetchKey(ValueAtIndex))
        {
          CFArrayAppendValue(v6, ValueAtIndex);
        }

        v8 = *(v7 + 48);
      }
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    segPumpCopySessionKeys_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t *segPumpMainSegmentBytesInTransit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16 * *(a1 + 8600) + 392);
  result = segPumpGetBytesInTransit(*(v9 + 696), *(a1 + 8328), a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    v17 = *(v9 + 792);
    v18 = *(a1 + 8328);

    return segPumpGetBytesInTransit(v17, v18, v11, v12, v13, v14, v15, v16);
  }

  return result;
}

uint64_t segPumpCopyOfflineInterstitialURLs(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v4 = *(a1 + 296);
  if (v4 && (v5 = FigStreamingCacheCopyProperty(v4, @"FSC_OfflineInterstitialURLs", a2, &cf), v4 = cf, v5))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
    *a3 = v4;
  }

  return v5;
}

uint64_t segPumpCopyOfflineInterstitialListJSONs(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v4 = *(a1 + 296);
  if (v4 && (v5 = FigStreamingCacheCopyProperty(v4, @"FSC_OfflineInterstitialListJSONs", a2, &cf), v4 = cf, v5))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
    *a3 = v4;
  }

  return v5;
}

uint64_t segPumpCreateFigAlternatesArray(uint64_t a1, __CFArray **a2)
{
  if (a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v6 = Mutable;
      for (i = *(a1 + 8280); i; i = *i)
      {
        CFArrayAppendValue(v6, i[1]);
      }

      for (j = *(a1 + 8296); j; j = *j)
      {
        CFArrayAppendValue(v6, j[1]);
      }

      result = 0;
      *a2 = v6;
    }

    else
    {
      segPumpCreateFigAlternatesArray_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    segPumpCreateFigAlternatesArray_cold_2(&v11);
    return v11;
  }

  return result;
}

const __CFArray *segPumpStreamHasMediaFiles(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    result = FigMediaPlaylistGetMediaSegmentSpecifiers(result);
    if (result)
    {
      return (CFArrayGetCount(result) > 0);
    }
  }

  return result;
}

double segPumpGetMinimumPrebufferReservation(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336) && (v3 = *(a1 + 16), v3 > 0.0))
  {
    result = v3 + v3;
    if (*(a1 + 8168) > result)
    {
      return *(a1 + 8168);
    }
  }

  else
  {
    result = segPumpGetDurationOfLastMediaSegment(a2);
    v5 = *(a1 + 8160);
    if (result == 0.0)
    {
      result = (*(a1 + 8) * v5);
    }

    else if (v5 >= 2)
    {
      result = result + (*(a1 + 8) * (v5 - 1));
    }

    if (result < *(a1 + 8168))
    {
      return *(a1 + 8168);
    }
  }

  return result;
}

double segPumpGetDurationOfLastMediaSegment(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1)
  {
    return 0.0;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  LastValue = FigCFArrayGetLastValue();

  return FigMediaSegmentSpecifierGetTimeInSeconds(LastValue);
}

double segPumpMakeNetworkPrediction(uint64_t a1, uint64_t a2)
{
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  segPumpMakeNetworkPredictionInput(a1, v24);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v4 = *(a1 + 16 * *(a1 + 8600) + 392);
  v5 = 104;
  if (!*(a1 + 337))
  {
    v5 = 112;
  }

  v6 = *(a1 + 16);
  if (v6 <= 0.0)
  {
    v6 = *(a1 + 8);
  }

  v7 = *(a1 + v5);
  v8 = *(v4 + 256);
  if (v8 && FigMediaSegmentSpecifierGetBytesToRead(v8))
  {
    v9 = FigMediaSegmentSpecifierGetBytesToRead(*(v4 + 256));
LABEL_14:
    *&v24[2] = v9;
    goto LABEL_15;
  }

  v10 = *(a1 + 8328);
  if (v10)
  {
    AverageBitRate = FigAlternateGetAverageBitRate(*(v10 + 8));
    if (!AverageBitRate)
    {
      AverageBitRate = FigAlternateGetPeakBitRate(*(*(a1 + 8328) + 8));
    }

    if (AverageBitRate && v6 != 0.0)
    {
      v9 = (v6 * AverageBitRate * 0.125);
      goto LABEL_14;
    }
  }

LABEL_15:
  *&v24[1] = 60000000000;
  if (*(a1 + 337))
  {
    *(&v24[2] + 8) = xmmword_196E72850;
    *(v24 + 8) = xmmword_196E72860;
    *(&v24[1] + 1) = 10000000000;
    if (*(a1 + 342))
    {
      *(&v30 + 1) = 0x3FEEB851EB851EB8;
      LOBYTE(v31) = 1;
    }
  }

  *&v24[0] = v7;
  *(&v31 + 1) |= 8uLL;
  v12 = *(a1 + 96);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v35[10] = v31;
    v35[11] = v32;
    v35[12] = v33;
    v35[13] = v34;
    v35[6] = v27;
    v35[7] = v28;
    v35[8] = v29;
    v35[9] = v30;
    v35[2] = v24[2];
    v35[3] = v24[3];
    v35[4] = v25;
    v35[5] = v26;
    v35[0] = v24[0];
    v35[1] = v24[1];
    v14(v12, UpTimeNanoseconds, v35, &v18);
  }

  v15 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v15;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  result = *&v18;
  v17 = v19;
  *a2 = v18;
  *(a2 + 16) = v17;
  return result;
}

CFTypeRef segPumpEnsureAndGetSessionDataPrivateData(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    Instance = CMGetAttachment(a1, @"SegPumpSessionDataPrivateData", 0);
    if (!Instance)
    {
      FigGetAllocatorForMedia();
      v12 = xmmword_1E7476B80;
      if (segPumpSessionDataPrivateDataGetTypeID_once != -1)
      {
        dispatch_once_f(&segPumpSessionDataPrivateDataGetTypeID_once, &v12, segPumpRegisterClassUtil);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        CMSetAttachment(a1, @"SegPumpSessionDataPrivateData", Instance, 0);
        CFRelease(Instance);
      }

      else
      {
        segPumpEnsureAndGetSessionDataPrivateData_cold_1(0, v10);
      }
    }
  }

  else
  {
    segPumpEnsureAndGetSessionDataPrivateData_cold_2(0, a2, a3, a4, a5, a6, a7, a8, v12, SDWORD2(v12), SHIDWORD(v12), v13);
    return 0;
  }

  return Instance;
}

void segPumpFreeChapterArtworkQueue(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    v6 = i[2];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = i[4];
    if (v7)
    {
      CFRelease(v7);
    }

    free(i);
  }
}

BOOL segPumpShouldRequestURLAsHTTPURL(uint64_t a1, const __CFURL *a2)
{
  if (!a2 || *(a1 + 335))
  {
    return 0;
  }

  if (FigCFHTTPIsHTTPBasedURL(a2))
  {
    return 1;
  }

  return FigCFHTTPIsDataURL(a2);
}

void segPumpSessionDataPrivateDataFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  segPumpFreeChapterArtworkQueue((a1 + 184));
}

uint64_t segPumpCreateURLAndString(const void *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  if (a1 && (v5 = CFRetain(a1)) != 0)
  {
    v6 = v5;
    if (a2)
    {
      *a2 = CFRetain(v5);
    }

    if (a3)
    {
      *a3 = FigCFHTTPCreateURLString(v6);
    }

    CFRelease(v6);
    return 0;
  }

  else
  {
    segPumpCreateURLAndString_cold_1(&v8);
    return v8;
  }
}

uint64_t segPumpIsConnectedWithHighSpeedHighPower(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 8656);
  if (!v2)
  {
    return 4294954513;
  }

  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = v5(v2, 0x1F0B5F6B8, AllocatorForMedia, &cf);
  v7 = cf;
  if (!v6)
  {
    *a2 = cf == *MEMORY[0x1E695E4D0];
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

uint64_t segPumpCreateURLWithQueryParams(_BYTE *a1, CFTypeRef cf, const __CFArray *a3, const __CFURL **a4)
{
  v5 = a3;
  if (cf)
  {
    v8 = CFRetain(cf);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_25:
    v28 = 0;
LABEL_43:
    *a4 = v8;
    return v28;
  }

  v8 = 0;
  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a1[336])
  {
    v11 = 0;
    goto LABEL_27;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  MutableCopy = CFArrayCreateMutableCopy(AllocatorForMedia, 0, v5);
  if (!MutableCopy)
  {
    segPumpCreateURLWithQueryParams_cold_3(&cfa);
    v28 = cfa;
    goto LABEL_43;
  }

  v11 = MutableCopy;
  v12 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v14 = Mutable;
    if (CFArrayGetCount(v11) <= 1)
    {
LABEL_10:
      v44.length = CFArrayGetCount(v14);
      v44.location = 0;
      CFArraySortValues(v14, v44, segPumpQueryParamsCFComparator, 0);
      CFArrayRemoveAllValues(v11);
      if (CFArrayGetCount(v14) >= 1)
      {
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v23);
          v25 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
          CFArrayAppendValue(v11, v25);
          v26 = CFArrayGetValueAtIndex(v14, v23);
          v27 = CFArrayGetValueAtIndex(v26, 1);
          CFArrayAppendValue(v11, v27);
          ++v23;
        }

        while (v23 < CFArrayGetCount(v14));
      }

      v28 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      v17 = MEMORY[0x1E695E9C0];
      while (1)
      {
        v18 = FigGetAllocatorForMedia();
        v19 = CFArrayCreateMutable(v18, 0, v17);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        v21 = CFArrayGetValueAtIndex(v11, v16 - 1);
        CFArraySetValueAtIndex(v20, 0, v21);
        v22 = CFArrayGetValueAtIndex(v11, v16);
        CFArraySetValueAtIndex(v20, 1, v22);
        CFArraySetValueAtIndex(v14, v15, v20);
        CFRelease(v20);
        ++v15;
        v16 += 2;
        if (v15 >= CFArrayGetCount(v11) / 2)
        {
          goto LABEL_10;
        }
      }

      segPumpCreateURLWithQueryParams_cold_1(&cfa);
      v28 = cfa;
    }

    CFRelease(v14);
    if (v28)
    {
      goto LABEL_38;
    }

    goto LABEL_15;
  }

  segPumpCreateURLWithQueryParams_cold_2(&cfa);
  v28 = cfa;
  if (!cfa)
  {
LABEL_15:
    Params = FigCFHTTPCopyQueryParams(cf);
    if (CFArrayGetCount(Params) >= 1 && CFArrayGetCount(Params) >= 2)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = CFArrayGetValueAtIndex(Params, v31 - 1);
        if (!CFStringHasPrefix(v32, @"_HLS"))
        {
          CFArrayAppendValue(v11, v32);
          v33 = CFArrayGetValueAtIndex(Params, v31);
          CFArrayAppendValue(v11, v33);
        }

        ++v30;
        v31 += 2;
      }

      while (v30 < CFArrayGetCount(Params) / 2);
    }

    if (Params)
    {
      CFRelease(Params);
    }

    v5 = v11;
LABEL_27:
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      v28 = 0;
    }

    else
    {
      v35 = Count;
      v36 = 0;
      while (1)
      {
        cfa = 0;
        v37 = CFArrayGetValueAtIndex(v5, v36);
        v38 = v36 + 1;
        v39 = CFArrayGetValueAtIndex(v5, v36 + 1);
        Param = FigCFHTTPCreateURLWithQueryParam(v8, v37, v39, &cfa);
        if (Param)
        {
          break;
        }

        v41 = cfa;
        if (cfa)
        {
          CFRetain(cfa);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        CFRelease(cfa);
        v36 += 2;
        v8 = v41;
        if (v38 + 1 >= v35)
        {
          v28 = 0;
          v8 = v41;
          goto LABEL_38;
        }
      }

      v28 = Param;
    }
  }

LABEL_38:
  *a4 = v8;
  if (v11)
  {
    CFRelease(v11);
  }

  return v28;
}

uint64_t segPumpAmendHTTPRequestFlags(_BYTE *a1, _DWORD *a2)
{
  if (a2)
  {
    if (a1[332])
    {
      *a2 |= 0x80u;
    }

    if (a1[333])
    {
      *a2 |= 0x800u;
    }

    if (a1[334])
    {
      *a2 |= 0x1000u;
    }

    if (a1[336])
    {
      *a2 |= 0x4000u;
    }

    if (a1[9784])
    {
      *a2 |= 0x8000u;
    }

    if (a1[9833])
    {
      result = 0;
      *a2 |= 0x10000u;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v2;
    v7 = v3;
    segPumpAmendHTTPRequestFlags_cold_1(&v5);
    return v5;
  }

  return result;
}

__CFDictionary *segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5, float a6)
{
  v8 = a4;
  FigGetAllocatorForMedia();
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v19 = MutableCopy;
  if (!a2)
  {
    segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff_cold_2(MutableCopy, v12, v13, v14, v15, v16, v17, v18, cf, v25, v26[0], v26[1]);
    return v19;
  }

  if (!v8)
  {
    v20 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  cf = 0;
  if (segPumpCopyParentNWActivity(a2, a3, &cf))
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = nw_activity_create();
    if (v20)
    {
      if (!cf)
      {
LABEL_10:
        FigCFDictionarySetValue();
        goto LABEL_11;
      }

      nw_activity_set_parent_activity();
      v21 = 1;
    }

    else
    {
      segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff_cold_1(v26 + 3);
      v21 = HIBYTE(v26[0]);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a5)
  {
LABEL_12:
    CFDictionarySetValue(v19, @"FHRP_DependentPipelinePrecursor", a5);
  }

LABEL_13:
  if (a6 != 0.5)
  {
    FigCFDictionarySetDouble();
  }

  if (*(a2 + 336))
  {
    v22 = 0;
  }

  else
  {
    v22 = FigNetworkUrgencyMonitorCopyExpectedProgressTarget(*(a2 + 9712));
    if (v22)
    {
      CFDictionarySetValue(v19, @"FHRP_CreateExpectedProgressTarget", v22);
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v19;
}

uint64_t segPumpGetCurrentRTT(void *a1)
{
  v1 = (a1[1096] + 2 * a1[1097]) / 3;
  if (a1[1098] <= a1[1099])
  {
    v2 = 0;
  }

  else
  {
    v2 = FigGetUpTimeNanoseconds() - a1[1098];
  }

  if (v2 > v1)
  {
    v3 = ((v2 + 2 * v1) * 0x5555555555555556) >> 64;
    v1 = v3 + (v3 >> 63);
  }

  if (v1 <= 0)
  {
    return 100000;
  }

  else
  {
    return v1;
  }
}

CFComparisonResult segPumpQueryParamsCFComparator(const __CFArray *a1, const __CFArray *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v5 = CFArrayGetValueAtIndex(a2, 0);
  result = CFStringCompare(ValueAtIndex, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFArrayGetValueAtIndex(a1, 1);
    v8 = CFArrayGetValueAtIndex(a2, 1);

    return CFStringCompare(v7, v8, 0);
  }

  return result;
}

uint64_t segPumpCopyParentNWActivity(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    segPumpCopyParentNWActivity_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    segPumpCopyParentNWActivity_cold_3(&v12);
    return v12;
  }

  if (!a2 || (v5 = a2[150]) == 0 && (v5 = *(*(a1 + 16 * *a2 + 392) + 1192)) == 0 || (v6 = CFRetain(v5)) == 0)
  {
    v7 = *(a1 + 9696);
    if (!v7 || (v6 = CFRetain(v7)) == 0)
    {
      segPumpCopyParentNWActivity_cold_2(&v12);
      return v12;
    }
  }

  v8 = v6;
  if (FigCFEqual())
  {
    v9 = nw_activity_create();
    if (v9)
    {
      v10 = v9;
      nw_activity_set_parent_activity();
      CFRelease(v8);
      v8 = v10;
      goto LABEL_12;
    }

    segPumpCopyParentNWActivity_cold_1();
    return v12;
  }

LABEL_12:
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t segPumpSetWiFiStatsOnNetworkPredictor(uint64_t a1, uint64_t a2)
{
  valuePtr[0] = segPumpGetInterfaceTypeEnum(a1, a2);
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 96);
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(v5, 0x1F0B635D8, v4);
    }

    if (FigRCLGetNumberWithDefault(*(a1 + 9320), @"useAdaptiveBayesianNetworkPrediction", 0))
    {
      segPumpSetWiFiStatsOnNetworkPredictor_cold_1();
      v7 = valuePtr[1];
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    segPumpSetWiFiStatsOnNetworkPredictor_cold_2(&v10);
    return v10;
  }

  return v7;
}

void segPumpAppendErrorLogEntryWithCFError(void *a1, uint64_t a2, const __CFURL **a3, CFErrorRef err, int a5, int a6)
{
  Code = CFErrorGetCode(err);
  Domain = CFErrorGetDomain(err);
  v14 = CFErrorCopyDescription(err);
  v15 = CFErrorCopyUserInfo(err);
  segPumpAppendErrorLogEntry(a1, a2, a3, Code, Domain, v14, v15, 1, a5, a6);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

void segPumpAttemptToRetryRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = *(a3 + 24);
    v37 = *(a3 + 32);
  }

  else
  {
    v10 = 0;
    v37 = 0;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v36 = a5;
  v12 = (a5 >> 2) & 1;
  IsAlternateLastValidAlternate = segPumpIsAlternateLastValidAlternate(DerivedStorage, a2, *(DerivedStorage + 8328), v12);
  if (a3)
  {
    v21 = *(a3 + 16);
    if (v21)
    {
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v22)
      {
        v22(v21);
      }

      v23 = *(a3 + 16);
      if (v23)
      {
        CFRelease(v23);
        *(a3 + 16) = 0;
      }
    }

    v24 = *(a3 + 64);
  }

  else
  {
    v24 = 0;
  }

  if (*(DerivedStorage + 8362))
  {
    v25 = *(DerivedStorage + 8368);
  }

  else
  {
    if (a4 == 7 && *(DerivedStorage + 8280) && !IsAlternateLastValidAlternate)
    {
      if (UpTimeNanoseconds - v10 < 15000000000)
      {
LABEL_15:
        if (a3)
        {
          if (a2 + 408 == a3)
          {
            v24 += *(a2 + 384);
          }

          else if (a2 + 544 != a3 && DerivedStorage + 7976 != a3)
          {
            v26 = *(DerivedStorage + 8112);
            v27 = v37;
            if (v26)
            {
              segPumpEnsureAndGetSessionDataPrivateData(v26, v13, v14, v15, v16, v17, v18, v19);
            }

            goto LABEL_44;
          }
        }

        v27 = v37;
LABEL_44:
        if (v24 >= 5)
        {
          v32 = 5;
        }

        else
        {
          v32 = v24;
        }

        v33 = 1000000000 * v32;
        if (UpTimeNanoseconds - v27 >= v33)
        {
          v33 = 1000000000;
        }

        *(a2 + 400) = 1;
        v34 = *DerivedStorage;
        v35 = *(DerivedStorage + 64);

        FigHTTPCreateTimer(v34, segPumpRetryTimerCallback, v35, (a2 + 392), v33 / 1000000000.0);
        return;
      }

      v28 = 1;
      goto LABEL_23;
    }

    v25 = 30000000000;
    if (*(DerivedStorage + 8624))
    {
      v29 = *(DerivedStorage + 8632);
      if (v29)
      {
        if (!FigNetworkPathInformationIsHostReachable(v29, 1))
        {
          v25 = 120000000000;
        }
      }
    }
  }

  if (UpTimeNanoseconds - v10 < v25)
  {
    goto LABEL_15;
  }

  if (IsAlternateLastValidAlternate)
  {
    goto LABEL_52;
  }

  v28 = *(DerivedStorage + 8280) != 0;
LABEL_23:
  if (a4 == 7 && v28)
  {
    if (v12)
    {
      v30 = *(a2 + 16);
      v31 = *(a2 + 40);

      segPumpMoveAlternatesMatchingHostAndPathwayToPenaltyBox(a1, v30, v31, v36 & 1);
    }

    else
    {

      segPumpMoveStreamAlternateToPenaltyBox(a1, a2, 0);
    }

    return;
  }

LABEL_52:

  segPumpSendEndCallbackForAllActiveStreams();
}

uint64_t MoveAlternateFromValidList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MoveAlternateFromListWithNoNotification(DerivedStorage, (DerivedStorage + 8280), a2, v5, v4);
  v9 = v8;
  if (v8)
  {
    MoveAlternateFromValidList_cold_1(v8, DerivedStorage);
  }

  else
  {
    segPumpInformCurrentAlternateNoLongerValid(DerivedStorage);
  }

  return v9;
}

void MoveAlternateFromListWithNoNotification(uint64_t a1, void *a2, uint64_t a3, int a4, char a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 8328);
  if (v10 == a3)
  {
    segPumpUpdateCurrentAlternate(a1, 0);
  }

  if (*(a1 + 7880) == a3)
  {
    *(a1 + 7880) = 0;
  }

  v11 = a2;
  do
  {
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_27;
    }
  }

  while (!FigCFEqual());
  if (a4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v18 = *a2;
    if (*a2 == a3)
    {
      v23 = *v18;
      *a2 = v23;
      v19 = a2;
      if (v23)
      {
        goto LABEL_21;
      }
    }

    else
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18 != a3);
      v20 = *v18;
      *v19 = v20;
      if (v20)
      {
        goto LABEL_21;
      }
    }

    a2[1] = v19;
LABEL_21:
    if (*(a1 + 9728))
    {
      if (*(a1 + 8312) || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]), (*(a1 + 8312) = Mutable) != 0))
      {
        if (!FigCFArrayContainsValue())
        {
          CFArrayAppendValue(*(a1 + 8312), *(a3 + 8));
        }
      }

      else if (!MoveAlternateFromListWithNoNotification_cold_1())
      {
        return;
      }
    }

    AlternateEntryFree(a3);
    goto LABEL_27;
  }

  v13 = (a1 + 8280);
  if ((a1 + 8280) != a2)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + 8320);
  if (v14 || (v15 = FigGetAllocatorForMedia(), v14 = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]), (*(a1 + 8320) = v14) != 0))
  {
    v34.length = CFArrayGetCount(v14);
    v34.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v34, *(a3 + 8));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 8320), FirstIndexOfValue);
    }

    v17 = *(a1 + 8320);
    if (v10 == a3)
    {
      CFArrayAppendValue(v17, *(a3 + 8));
    }

    else
    {
      CFArrayInsertValueAtIndex(v17, 0, *(a3 + 8));
    }
  }

  else if (!MoveAlternateFromListWithNoNotification_cold_2())
  {
    return;
  }

  v24 = *(a1 + 8296);
  for (i = *(a1 + 8280); i != a3; i = *i)
  {
    v13 = i;
  }

  v26 = *i;
  *v13 = v26;
  if (!v26)
  {
    *(a1 + 8288) = v13;
  }

  *a3 = 0;
  **(a1 + 8304) = a3;
  *(a1 + 8304) = a3;
  if (*(a1 + 8280))
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(a3 + 16) = FigGetUpTimeNanoseconds() + 120000000000;
    *(a3 + 32) = a5;
    v28 = *(a1 + 8352);
    if (v28)
    {
      if (!v24)
      {
        FigHTTPRescheduleTimer(120.0, *(a1 + 64), v28);
      }

      goto LABEL_27;
    }

    FigHTTPCreateTimer(*a1, &HandlePenaltyBoxTimer, *(a1 + 64), (a1 + 8352), 120.0);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v32);
  }

  if (v29)
  {
    return;
  }

LABEL_27:
  if (!*(a1 + 8280))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v32);
  }
}

void segPumpInformCurrentAlternateNoLongerValid(uint64_t a1)
{
  segPumpReadyNotification(a1, @"FBPAL_AlternateListChanged", 0);
  v2 = *(a1 + 9760);
  if (v2)
  {
    FigAlternateFilterMonitorPrimeForSwitch(v2);
  }

  segPumpDispatchAsyncAlternateSelectionApplyFilter(a1);
}

void StopAllActiveStreams(uint64_t result)
{
  v2 = *(result + 8352);
  if (v2)
  {
    FigHTTPRescheduleTimer(0.0, *(result + 64), v2);
  }

  for (i = 392; i != 440; i += 16)
  {
    v4 = *(result + i);
    if (*(v4 + 16))
    {
      segPumpStopStream(result, v4, 0);
    }
  }
}

void segPumpResetPenaltyBoxTimer(void *result)
{
  v1 = result[1044];
  if (v1)
  {
    v3 = result[1037];
    if (v3)
    {
      v4 = *(v3 + 16);
      v5 = (v4 - FigGetUpTimeNanoseconds()) / 1000000000.0;
      v1 = result[1044];
    }

    else
    {
      v5 = 0.0;
    }

    v6 = result[8];

    FigHTTPRescheduleTimer(v5, v6, v1);
  }
}

void segPumpDispatchAsyncAlternateSelectionBossApplyFilterFunc(const void *a1)
{
  FigAlternateSelectionBossApplyFilters(a1);
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t segPumGetGroupIDString(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    return FigAlternateGetSubtitleGroupIDString(a1);
  }

  if (a2 == 1)
  {
    return FigAlternateGetAudioGroupIDString(a1);
  }

  if (a2)
  {
    return 0;
  }

  return FigAlternateGetVideoGroupIDString(a1);
}

uint64_t segPumpRestartStreamReads(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v17 = 0;
  segPumpReadOrScheduleIndexFileRead();
  SessionDataRequest = v6;
  if (v6)
  {
    goto LABEL_13;
  }

  MediaForSingleStream = segPumpDeliverNextMediaForSingleStream(a1, a2, a3);
  if (MediaForSingleStream == -15626)
  {
    SessionDataRequest = 4294951670;
    goto LABEL_13;
  }

  SessionDataRequest = MediaForSingleStream;
  if (a3[31] && !a3[70])
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Identifier = FigContentKeySpecifierGetIdentifier(a3[31]);
    v12 = CFURLCreateWithString(AllocatorForMedia, Identifier, 0);
    if (!v12)
    {
      segPumpRestartStreamReads_cold_1(&v18);
      SessionDataRequest = v18;
      goto LABEL_12;
    }

    v9 = v12;
    if (segPumpShouldRequestURLAsHTTPURL(a2, v12))
    {
      v14 = a3[31];
      CryptKeyCommonData = segPumpGetCryptKeyCommonData(v14, 0, &v17);
      if (CryptKeyCommonData)
      {
        SessionDataRequest = CryptKeyCommonData;
        goto LABEL_11;
      }

      if (*(v17 + 153))
      {
        segPumpCancelCryptReadAndResetData();
      }

      v16 = a3[31];
      a3[31] = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      SessionDataRequest = segPumpSendCryptKeyRequest(a1, a2, a3, a3[31]);
      if (SessionDataRequest)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (*a3 || !a2[1014])
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  SessionDataRequest = segPumpSendNextSessionDataRequest(a2, a3, 0);
  if (v9)
  {
LABEL_11:
    CFRelease(v9);
  }

LABEL_12:
  if (SessionDataRequest)
  {
LABEL_13:
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(*a2, SessionDataRequest);
  }

  return SessionDataRequest;
}

void segPumpGetIndexFileRefreshTimestamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v13 = a3;
  v7 = *(a2 + 56);
  if (v7)
  {
    if (!*(a2 + 1184))
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v7);
      if (MediaSegmentSpecifiers)
      {
        if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
        {
          if (FigMediaPlaylistHasEndTag(*(a2 + 56)))
          {
            v10 = *(a1 + 8);
            v11 = *(a1 + 352) - v10;
            v12 = *(a1 + 8160) * v10;
            if (v11 > v12)
            {
              v12 = v11;
            }

            v5 = *(a2 + 1056) + 1000000000 * v12;
          }

          else if ((*(a2 + 160) & 0xFFFFFFFE) != 2 && !*(a1 + 336))
          {
            segPumpGetLiveIndexRefreshTimestamp(a1, a2, &v13);
            v5 = v13;
          }
        }
      }
    }
  }

  *a4 = v5;
}

void segPumpGetLiveIndexRefreshTimestamp(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = (segPumpGetDurationOfLastMediaSegment(a2[7]) * 1000000000.0);
  if (dword_1EAF16A30 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = 500000000 * v5;
  if (*(a2 + 96))
  {
    v9 = a2[132];
  }

  else
  {
    v9 = a2[132];
    if (v8 < v6)
    {
      v8 = 1000000000 * v5;
    }
  }

  *a3 = v9 + v8;
}

void segPumpScheduleIndexFileLongDownloadTimer(double *a1, uint64_t a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v5 = a1[2];
  if (v5 <= 0.0)
  {
    v6 = a1[1025];
  }

  else
  {
    v6 = v5 * 0.5;
  }

  v7 = 2.0;
  if (!*(a2 + 538))
  {
    if (*(a1 + 337))
    {
      v7 = v5 + (3 * segPumpGetCurrentRTT(a1)) / 1000000000.0;
    }

    else if (*(*(a1 + 49) + 56))
    {
      v13 = *(a1 + 2);
      if (v13)
      {
        v7 = (2 * v13);
      }

      else
      {
        v7 = 20.0;
      }
    }

    else
    {
      v7 = a1[1048];
    }
  }

  if (v7 > v6)
  {
    v6 = v7;
  }

  if (*(a1 + 336) && *(a1 + 48))
  {
    v8 = *(a1 + 49);
    if (*(v8 + 16))
    {
      PendingMediaDeadline = segPumpConnectionGetPendingMediaDeadline(*(v8 + 696));
    }

    else
    {
      PendingMediaDeadline = 0;
    }

    v10 = *(a1 + 51);
    if (*(v10 + 16))
    {
      v11 = segPumpConnectionGetPendingMediaDeadline(*(v10 + 696));
      if (v11 >= PendingMediaDeadline)
      {
        v12 = PendingMediaDeadline;
      }

      else
      {
        v12 = v11;
      }

      if (!PendingMediaDeadline)
      {
        v12 = v11;
      }

      if (v11)
      {
        PendingMediaDeadline = v12;
      }
    }

    if (PendingMediaDeadline >= 1 && v6 < (PendingMediaDeadline - UpTimeNanoseconds) / 1000000000.0)
    {
      v6 = (PendingMediaDeadline - UpTimeNanoseconds) / 1000000000.0;
    }
  }

  FigHTTPCreateTimer(*a1, IndexFileHandleLongDownloadTimer, *(a1 + 8), (a2 + 504), v6);

  segPumpStreamUpdateIndexExpectedArrival(a1, a2, (UpTimeNanoseconds + v6 * 1000000000.0));
}

void segPumpHandleLowLatencySetupError(uint64_t a1, uint64_t *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 <= -15414)
  {
    if (a3 > -15416)
    {
      if (a3 == -15415)
      {
        segPumpHandleLowLatencySetupError_cold_4();
      }

      else
      {
        segPumpHandleLowLatencySetupError_cold_3();
      }

      goto LABEL_16;
    }

    if (a3 == -15418)
    {
      segPumpHandleLowLatencySetupError_cold_1();
      goto LABEL_16;
    }

    if (a3 == -15417)
    {
      segPumpHandleLowLatencySetupError_cold_2();
      goto LABEL_16;
    }

LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
    goto LABEL_16;
  }

  if (a3 >= -15412)
  {
    switch(a3)
    {
      case -15412:
        segPumpHandleLowLatencySetupError_cold_5();
        goto LABEL_16;
      case -15411:
        segPumpHandleLowLatencySetupError_cold_6();
        goto LABEL_16;
      case -15410:
        segPumpHandleLowLatencySetupError_cold_7();
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (dword_1EAF16A30)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_16:
  v5 = a1 + 400;
  v6 = 3;
  do
  {
    v7 = *(v5 - 8);
    if (*(v7 + 160) != 5)
    {
      *(v7 + 160) = 5;
    }

    if (*(*v5 + 160) != 5)
    {
      *(*v5 + 160) = 5;
    }

    v5 += 16;
    --v6;
  }

  while (v6);
}

uint64_t segPumpStreamHasPreloadHint(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    result = FigMediaPlaylistGetPreloadHint(result);
    if (result)
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(*(a1 + 56));
      return FigMediaSegmentSpecifierIsReadInCurrent(PreloadHint) != 0;
    }
  }

  return result;
}

void segPumpUpdateNetworkCostHasHighSpeedHighPower(uint64_t a1)
{
  if (*(a1 + 8656))
  {
    if (!*(a1 + 8648) && !*(a1 + 8644))
    {
      v2 = *(a1 + 8632);
      if (v2)
      {
        FigNetworkPathInformationGetInterfaceType(v2);
      }
    }

    UInt64 = FigCFNumberCreateUInt64();
    if (UInt64)
    {
      v11 = UInt64;
      v12 = *(a1 + 8656);
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(v12, 0x1F0B5F6F8, v11);
      }

      CFRelease(v11);
    }

    else
    {
      segPumpUpdateNetworkCostHasHighSpeedHighPower_cold_1(0, v4, v5, v6, v7, v8, v9, v10, v14, v15, SHIDWORD(v15), vars0);
    }
  }
}

void segPumpStreamUpdateIndexFileURLWithResponse(uint64_t a1, uint64_t a2, const void *a3)
{
  v3 = a3;
  v6 = *(a1 + 8328);
  if (v6)
  {
    PathwayID = FigAlternateGetPathwayID(*(v6 + 8));
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  PathwayID = @".";
  if (a3)
  {
LABEL_3:
    CFRetain(v3);
  }

LABEL_4:
  if (*(a2 + 876))
  {
    cf = 0;
    if (FigCFHTTPCreateURLMinusQueryParam(v3, @"_HLS_skip=", &cf))
    {
      v8 = v3;
    }

    else
    {
      v8 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v3)
      {
        CFRelease(v3);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    v3 = v8;
  }

  if (*(a1 + 336))
  {
    v10 = 0;
    cf = 0;
    if (FigCFHTTPCreateURLMinusQueryParam(v3, @"_HLS_msn=", &cf) || FigCFHTTPCreateURLMinusQueryParam(cf, @"_HLS_part=", &v10))
    {
      v9 = v3;
    }

    else
    {
      v9 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v9 = v3;
  }

  segPumpStreamUpdateIndexFile(a2, v9, *(a2 + 8), *(a2 + 24), *(a2 + 32), PathwayID);
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t segPumpVerifyM3UPlaylist(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = FigStreamingPlaylistVerifyM3UPlaylist(*(a2 + 520), &v7);
  result = 0;
  if (!v4 && v7 != 0)
  {
    segPumpVerifyM3UPlaylist_cold_1(a2, a1);
    return 4294954650;
  }

  return result;
}

void segPumpSendPlaylistUpdateNotification(uint64_t a1, __int128 *a2, __int128 *a3)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  FigCFDictionarySetCMTime();
  segPumpReadyNotification(a1, @"FBP_PlaylistUpdateNotification", Mutable);
  CFRelease(Mutable);
}

uint64_t segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate(uint64_t result, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  if ((*a3 - 7) <= 1)
  {
    if (!*(result + 8280) || (result = segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate_cold_1(result, a4, a2), (result & 1) == 0))
    {
      v6 = 3;
      if ((*a4 & 3) == 1)
      {
        v6 = 6;
      }

      *a3 = v6;
    }
  }

  return result;
}

uint64_t segPumpGetNextMediaFileWithDate(uint64_t a1, double *a2)
{
  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  FirstValue = FigCFArrayGetFirstValue();
  for (i = 0.0; FirstValue; FirstValue = FigMediaSegmentSpecifierGetNextSegment(FirstValue))
  {
    if (FigMediaSegmentSpecifierGetDateStamp(FirstValue) && FigMediaSegmentSpecifierIsReadInCurrent(FirstValue))
    {
      break;
    }

    i = i + FigMediaSegmentSpecifierGetTimeInSeconds(FirstValue);
  }

  if (a2)
  {
    *a2 = i;
  }

  return FirstValue;
}

void segPumpSetMediaFileExpireTimer(uint64_t a1, double a2)
{
  v2 = a2;
  v4 = *(a1 + 8152);
  if (v4)
  {
    if (a2 == 8073216000.0)
    {
      FigHTTPRescheduleTimer(0.0, *(a1 + 64), v4);
      v2 = 8073216000.0;
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      FigHTTPRescheduleTimer(v2 - Current, *(a1 + 64), *(a1 + 8152));
    }
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent();
    FigHTTPCreateTimer(*a1, segPumpMediaExpiryTimerCallback, *(a1 + 64), (a1 + 8152), v2 - v5);
  }

  *(a1 + 8144) = v2;
}

uint64_t segPumpAddFigAlternate(uint64_t a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004000B479F3uLL);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = CFRetain(a2);
    }

    else
    {
      v6 = 0;
    }

    v5[1] = v6;
    PeakBitRate = FigAlternateGetPeakBitRate(a2);
    *(v5 + 6) = PeakBitRate;
    *(v5 + 7) = PeakBitRate;
    PathwayID = FigAlternateGetPathwayID(v5[1]);
    Mutable = *(a1 + 8128);
    if (Mutable || (AllocatorForMedia = FigGetAllocatorForMedia(), Mutable = CFSetCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9F8]), (*(a1 + 8128) = Mutable) != 0))
    {
      CFSetAddValue(Mutable, PathwayID);
      result = 0;
      *v5 = 0;
      **(a1 + 8288) = v5;
      *(a1 + 8288) = v5;
    }

    else
    {
      segPumpAddFigAlternate_cold_1();
      return v12;
    }
  }

  else
  {
    segPumpAddFigAlternate_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t segPumpInitAlternateSelectionBoss(uint64_t a1, __n128 a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v78 = 0;
  theArray = 0;
  v77 = 0uLL;
  *v75 = 0;
  v76 = 0;
  if (!*(a1 + 9728))
  {
    goto LABEL_10;
  }

  if (!*(a1 + 9736))
  {
    *(a1 + 9736) = FigHTTPSchedulerRetain(*(a1 + 64), a2);
  }

  updated = segPumpCreateFigAlternatesArray(a1, &theArray);
  if (updated)
  {
    goto LABEL_93;
  }

  if (!theArray)
  {
    v6 = 0;
    goto LABEL_96;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_94;
  }

  v4 = *(a1 + 9752);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = segPumpContentSteeringAlternateListChangedCallback;
  }

  *v75 = v5;
  *&v77 = segPumpContentSteeringAlternatesAddedCallback;
  v83 = 0;
  HIDWORD(v82) = 0;
  cf = 0;
  if (v4)
  {
    goto LABEL_65;
  }

  if (!*(a1 + 9728))
  {
    if (dword_1EAF16A30)
    {
      HIDWORD(v80) = 0;
      BYTE3(v80) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v60 = HIDWORD(v80);
      v61 = BYTE3(v80);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v80)))
      {
        v62 = v60;
      }

      else
      {
        v62 = v60 & 0xFFFFFFFE;
      }

      if (v62)
      {
        v63 = &stru_1F0B1AFB8;
        if (*(a1 + 8944))
        {
          v63 = *(a1 + 8944);
        }

        *v84 = 136315394;
        *&v84[4] = "segPumpInitContentSteeringMonitor";
        *&v84[12] = 2114;
        *&v84[14] = v63;
        _os_log_send_and_compose_impl(v62, 0, v88, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v61, "<SEGPUMP> %s: %{public}@: no boss yet", v84, 22);
      }

      goto LABEL_122;
    }

LABEL_123:
    v14 = 0;
    v25 = 0;
    v8 = 0;
    goto LABEL_52;
  }

  v7 = *(a1 + 392);
  if (!v7)
  {
    segPumpInitAlternateSelectionBoss_cold_2(v88);
    v14 = 0;
    v25 = 0;
    v8 = 0;
    v6 = LODWORD(v88[0]);
    goto LABEL_53;
  }

  v8 = v7[6];
  if (!v8)
  {
    v14 = 0;
    v25 = 0;
LABEL_52:
    v6 = 0;
    goto LABEL_53;
  }

  if (!FigMultivariantPlaylistGetContentSteeringServerURL(v7[6]) || !*(a1 + 8128) || *(a1 + 9752))
  {
    goto LABEL_123;
  }

  if (!*(a1 + 8120))
  {
    if (dword_1EAF16A30)
    {
      HIDWORD(v80) = 0;
      BYTE3(v80) = 0;
      v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v65 = HIDWORD(v80);
      v66 = BYTE3(v80);
      if (os_log_type_enabled(v64, BYTE3(v80)))
      {
        v67 = v65;
      }

      else
      {
        v67 = v65 & 0xFFFFFFFE;
      }

      if (v67)
      {
        v68 = *(a1 + 8944);
        if (!v68)
        {
          v68 = &stru_1F0B1AFB8;
        }

        v69 = *v7;
        *v84 = 136315650;
        *&v84[4] = "segPumpInitContentSteeringMonitor";
        *&v84[12] = 2114;
        *&v84[14] = v68;
        *&v84[22] = 2048;
        v85 = v69;
        _os_log_send_and_compose_impl(v67, 0, v88, 128, &dword_1962D5000, v64, v66, "<SEGPUMP> %s: %{public}@:%ld: content steering disabled explicitly", v84, 32);
      }

LABEL_122:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_123;
    }

    goto LABEL_123;
  }

  Alternates = FigMultivariantPlaylistGetAlternates(v8);
  if (FigPathwayValidateStableVariantAndRenditionIDs(Alternates))
  {
    segPumpInitAlternateSelectionBoss_cold_1(v7, a1);
    goto LABEL_123;
  }

  v10 = *(a1 + 9232);
  if (v10)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v11)
    {
      v11(v10, 0x1F0B64538, 0x1F0B435D8, 1, 0);
    }
  }

  if (*(a1 + 335))
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v13 = segPumpAmendHTTPRequestFlags(a1, &v82 + 1);
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_121;
  }

  v14 = segPumpCopyHTTPRequestCreationsOptionsAndSetNWActivityAndStuff(*(a1 + 240), a1, v7, 0, 0, 0.5);
  segPumpCopyParentNWActivity(a1, v7, &cf);
  if (!*(a1 + 40))
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 64);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v22)
    {
      v25 = 0;
      v8 = 0;
      v6 = 4294954514;
      goto LABEL_53;
    }

    v18 = v22(v20, v21, 0, a1 + 40);
    if (v18)
    {
      goto LABEL_34;
    }
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  ContentSteeringServerURL = FigMultivariantPlaylistGetContentSteeringServerURL(v8);
  ContentSteeringInitPathwayID = FigMultivariantPlaylistGetContentSteeringInitPathwayID(v8);
  v18 = FigAlternateFilterMonitorCreateForContentSteering(AllocatorForMedia, ContentSteeringServerURL, ContentSteeringInitPathwayID, *(a1 + 8128), *(a1 + 88), v12, SHIDWORD(v82), *(a1 + 216), v14, cf, *(a1 + 40), *(a1 + 80), *(a1 + 347), &v83);
  if (v18)
  {
LABEL_34:
    v6 = v18;
LABEL_121:
    v25 = 0;
    v8 = 0;
    goto LABEL_53;
  }

  segPumpSetContentSteeringMonitor(a1, v83);
  if (CFSetGetCount(*(a1 + 8128)) < 1)
  {
    v8 = 0;
  }

  else
  {
    Count = CFSetGetCount(*(a1 + 8128));
    v8 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFSetGetValues(*(a1 + 8128), v8);
  }

  v23 = FigGetAllocatorForMedia();
  v24 = CFSetGetCount(*(a1 + 8128));
  v25 = CFArrayCreate(v23, v8, v24, MEMORY[0x1E695E9C0]);
  v26 = *(a1 + 9232);
  if (v26)
  {
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v27)
    {
      v27(v26, 0x1F0B64538, 0x1F0B435F8, v25, 0);
    }
  }

  v28 = *(a1 + 9752);
  v29 = *(a1 + 9232);
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v30)
  {
    v30(v28, @"AlternateFilterMonitorProperty_ReportingAgent", v29);
  }

  v6 = FigAlternateSelectionBossAddMonitor(*(a1 + 9728), *(a1 + 9752));
  if (!v6 && dword_1EAF16A30)
  {
    HIDWORD(v80) = 0;
    BYTE3(v80) = 0;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v32 = HIDWORD(v80);
    v33 = BYTE3(v80);
    if (os_log_type_enabled(v31, BYTE3(v80)))
    {
      v34 = v32;
    }

    else
    {
      v34 = v32 & 0xFFFFFFFE;
    }

    if (v34)
    {
      v35 = *(a1 + 8944);
      if (!v35)
      {
        v35 = &stru_1F0B1AFB8;
      }

      v36 = *v7;
      v37 = *(a1 + 9752);
      *v84 = 136315906;
      *&v84[4] = "segPumpInitContentSteeringMonitor";
      *&v84[12] = 2114;
      *&v84[14] = v35;
      *&v84[22] = 2048;
      v85 = v36;
      *v86 = 2048;
      *&v86[2] = v37;
      LODWORD(v71) = 42;
      _os_log_send_and_compose_impl(v34, 0, v88, 128, &dword_1962D5000, v31, v33, "<SEGPUMP> %s: %{public}@:%ld: initialized steering monitor %p", v84, v71);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_52;
  }

LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v83)
  {
    CFRelease(v83);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v8)
  {
    free(v8);
  }

  if (v6)
  {
    goto LABEL_94;
  }

  v4 = *(a1 + 9752);
  if (!v4)
  {
LABEL_68:
    updated = segPumpUpdateBytesRequiredForNetworkPrediction(a1);
    if (!updated)
    {
      updated = FigAlternateSelectionBossInitializeAlternateList(*(a1 + 9728), theArray, *(a1 + 8560), *(&v77 + 1), &v78);
      if (!updated)
      {
        if (dword_1EAF16A30)
        {
          LODWORD(v83) = 0;
          LOBYTE(cf) = 0;
          v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v43 = v83;
          v44 = cf;
          if (os_log_type_enabled(v42, cf))
          {
            v45 = v43;
          }

          else
          {
            v45 = v43 & 0xFFFFFFFE;
          }

          if (v45)
          {
            if (*(a1 + 8944))
            {
              v46 = *(a1 + 8944);
            }

            else
            {
              v46 = &stru_1F0B1AFB8;
            }

            v47 = *(a1 + 9728);
            if (theArray)
            {
              v48 = CFArrayGetCount(theArray);
            }

            else
            {
              v48 = 0;
            }

            v49 = v78;
            if (v78)
            {
              v49 = CFArrayGetCount(v78);
            }

            *v84 = 136316162;
            *&v84[4] = "segPumpInitAlternateSelectionBoss";
            *&v84[12] = 2114;
            *&v84[14] = v46;
            *&v84[22] = 2048;
            v85 = v47;
            *v86 = 2048;
            *&v86[2] = v48;
            *&v86[10] = 2048;
            *&v86[12] = v49;
            LODWORD(v71) = 52;
            _os_log_send_and_compose_impl(v45, 0, v88, 128, &dword_1962D5000, v42, v44, "<SEGPUMP> %s: %{public}@: Boss %p initialized with original %ld alternates + %ld expanded alternates", v84, v71);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v50 = *(a1 + 9768);
        if (v50)
        {
          CFRelease(v50);
          *(a1 + 9768) = 0;
        }

        v51 = FigGetAllocatorForMedia();
        updated = FigAlternatePassthroughFilterCreate(v51, @"EligibleCandidatesForPlaybackPassThrough", 877, (a1 + 9768));
        if (!updated)
        {
          updated = FigAlternateSelectionBossAddFilter(*(a1 + 9728), *(a1 + 9768));
          if (!updated)
          {
            segPumpUpdateAlternateSelectionBossNetworkErrorFilter(a1, 0, v52, v53, v54, v55, v56, v57, v70, v71, v72, SBYTE2(v72), BYTE3(v72), SHIDWORD(v72), v73, v74, *v75, v75[2], v75[3], v76, v77, v78, theArray, v80, cf, v82, v83, *v84, *&v84[8], *&v84[16], v85, *v86, *&v86[8], *&v86[16], v87, v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6], v88[7], v88[8], v88[9], v88[10], v88[11], v88[12], v88[13], v88[14], v88[15]);
            if (!updated)
            {
              updated = segPumpAddNewAlternatesToValidAlternatesQueue(a1, v78);
            }
          }
        }
      }
    }

    goto LABEL_93;
  }

LABEL_65:
  v38 = FigGetAllocatorForMedia();
  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v39)
  {
    v6 = 4294954514;
    goto LABEL_94;
  }

  updated = v39(v4, @"AlternateFilterMonitorProperty_Expanders", v38, &v77 + 8);
  if (!updated)
  {
    v40 = *(a1 + 9728);
    v41 = *a1;
    __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v88, v75);
    updated = FigAlternateSelectionBossAddDelegate(v40, v41, v88, 0);
    if (!updated)
    {
      goto LABEL_68;
    }
  }

LABEL_93:
  v6 = updated;
LABEL_94:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_96:
  if (v78)
  {
    CFRelease(v78);
  }

  if (*(&v77 + 1))
  {
    CFRelease(*(&v77 + 1));
  }

  return v6;
}