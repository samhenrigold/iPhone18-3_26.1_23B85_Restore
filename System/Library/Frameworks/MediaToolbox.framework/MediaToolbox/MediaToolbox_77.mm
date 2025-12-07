__CFString *exportSession_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAssetExportSession %p,  asset = %@, presetName = %@, outputFileType = %@>", a1, DerivedStorage[2], DerivedStorage[9], DerivedStorage[22]);
  return Mutable;
}

uint64_t figAssetExportSession_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  if (!a1)
  {
    figAssetExportSession_CopyProperty_cold_16(&range);
    return LODWORD(range.start.value);
  }

  if (!a2)
  {
    figAssetExportSession_CopyProperty_cold_15(&range);
    return LODWORD(range.start.value);
  }

  if (!a4)
  {
    figAssetExportSession_CopyProperty_cold_14(&range);
    return LODWORD(range.start.value);
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"kFigAssetExportSessionProperty_PresetName", a2))
  {
    v8 = *(DerivedStorage + 72);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Asset", a2))
  {
    v8 = *(DerivedStorage + 16);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_OutputFileType", a2))
  {
    v8 = *(DerivedStorage + 176);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_OutputURL", a2))
  {
    v8 = *(DerivedStorage + 88);
    if (v8)
    {
LABEL_15:
      SInt64 = CFRetain(v8);
LABEL_16:
      v10 = SInt64;
LABEL_79:
      result = 0;
      goto LABEL_80;
    }

LABEL_78:
    v10 = 0;
    goto LABEL_79;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_ShouldOptimizeForNetworkUse", a2))
  {
    result = 0;
    v10 = *(DerivedStorage + 432);
LABEL_80:
    *a4 = v10;
    return result;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_PreserveSyncFrames", a2))
  {
    result = 0;
    v10 = *(DerivedStorage + 344);
    goto LABEL_80;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_UseHardwareVideoEncoderIfAvailable", a2))
  {
    result = 0;
    v10 = *(DerivedStorage + 352);
    goto LABEL_80;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Status", a2))
  {
    FigReadWriteLockLockForRead();
    SInt32 = FigCFNumberCreateSInt32();
    FigReadWriteLockUnlockForRead();
    if (!SInt32)
    {
      figAssetExportSession_CopyProperty_cold_1(&range);
      return LODWORD(range.start.value);
    }

LABEL_39:
    result = 0;
    *a4 = SInt32;
    return result;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Error", a2))
  {
    FigReadWriteLockLockForRead();
    v13 = *(DerivedStorage + 56);
    if (v13)
    {
      SInt32 = CFRetain(v13);
    }

    else
    {
      SInt32 = 0;
    }

    FigReadWriteLockUnlockForRead();
    goto LABEL_39;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Progress", a2))
  {
    figAssetExportSession_updateProgress(DerivedStorage);
    v14 = *(DerivedStorage + 64);
    if (v14)
    {
      SInt64 = CFRetain(v14);
      if (SInt64)
      {
        goto LABEL_16;
      }
    }

    figAssetExportSession_CopyProperty_cold_2(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_SupportedFileTypes", a2))
  {
    if (qword_1EAF1A990 != -1)
    {
      figAssetExportSession_CopyProperty_cold_3();
    }

    if (qword_1EAF1A998)
    {
      if (*(DerivedStorage + 80))
      {
        v15 = *(DerivedStorage + 80);
      }

      else
      {
        v15 = *(DerivedStorage + 72);
      }

      Value = CFDictionaryGetValue(qword_1EAF1A998, v15);
      if (Value)
      {
        v17 = Value;
        CFRetain(Value);
      }

      else
      {
        v17 = CFArrayCreate(a3, 0, 0, MEMORY[0x1E695E9C0]);
        if (!v17)
        {
          figAssetExportSession_CopyProperty_cold_4(&range);
          return LODWORD(range.start.value);
        }
      }

      result = 0;
      *a4 = v17;
      return result;
    }

    figAssetExportSession_CopyProperty_cold_5(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_TimeRange", a2))
  {
    v18 = *(DerivedStorage + 256);
    *&range.start.value = *(DerivedStorage + 240);
    *&range.start.epoch = v18;
    *&range.duration.timescale = *(DerivedStorage + 272);
    SInt64 = CMTimeRangeCopyAsDictionary(&range, a3);
    if (SInt64)
    {
      goto LABEL_16;
    }

    figAssetExportSession_CopyProperty_cold_6(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MaxDuration", a2))
  {
    *&range.start.value = *MEMORY[0x1E6960C88];
    range.start.epoch = *(MEMORY[0x1E6960C88] + 16);
    if (*(DerivedStorage + 80))
    {
      v19 = *(DerivedStorage + 80);
    }

    else
    {
      v19 = *(DerivedStorage + 72);
    }

    result = figAssetExportSession_maximumDuration(v19, *(DerivedStorage + 360), &range);
    if (!result)
    {
      start = range.start;
      SInt64 = CMTimeCopyAsDictionary(&start, a3);
      if (!SInt64)
      {
        figAssetExportSession_CopyProperty_cold_7(&start);
        return LODWORD(start.value);
      }

      goto LABEL_16;
    }

    return result;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_FileLengthLimit", a2))
  {
    SInt64 = FigCFNumberCreateSInt64();
    if (SInt64)
    {
      goto LABEL_16;
    }

    figAssetExportSession_CopyProperty_cold_8(&range);
    return LODWORD(range.start.value);
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MaximizePowerEfficiency", a2))
  {
    v8 = *(DerivedStorage + 368);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MinimizeMemoryUsage", a2))
  {
    v8 = *(DerivedStorage + 376);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_Metadata", a2))
  {
    v8 = *(DerivedStorage + 224);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_MetadataItemFilterAllowList", a2))
  {
    v8 = *(DerivedStorage + 232);
    if (!v8)
    {
      goto LABEL_78;
    }

    goto LABEL_15;
  }

  if (CFEqual(@"kFigAssetExportSessionProperty_AudioMix", a2))
  {
    v8 = *(DerivedStorage + 208);
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

  if (!CFEqual(@"kFigAssetExportSessionProperty_EstimatedOutputFileLength", a2))
  {
    if (CFEqual(@"kFigAssetExportSessionProperty_AudioTimePitchAlgorithm", a2))
    {
      v8 = *(DerivedStorage + 200);
      if (v8)
      {
        goto LABEL_15;
      }

      figAssetExportSession_CopyProperty_cold_10(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_CanPerformMultiplePassesOverSourceMediaData", a2))
    {
      result = 0;
      v10 = *(DerivedStorage + 440);
      goto LABEL_80;
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_DirectoryForTemporaryFiles", a2))
    {
      v8 = *(DerivedStorage + 448);
      if (!v8)
      {
        goto LABEL_78;
      }

      goto LABEL_15;
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_MinVideoFrameDuration", a2))
    {
      *&range.start.value = *(DerivedStorage + 288);
      range.start.epoch = *(DerivedStorage + 304);
      SInt64 = CMTimeCopyAsDictionary(&range.start, a3);
      if (SInt64)
      {
        goto LABEL_16;
      }

      figAssetExportSession_CopyProperty_cold_11(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_VideoFrameRateConversionAlgorithm", a2))
    {
      v8 = *(DerivedStorage + 320);
      if (v8)
      {
        goto LABEL_15;
      }

      figAssetExportSession_CopyProperty_cold_12(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_AudioTrackGroupOutputHandling", a2))
    {
      SInt64 = FigCFNumberCreateSInt32();
      if (SInt64)
      {
        goto LABEL_16;
      }

      figAssetExportSession_CopyProperty_cold_13(&range);
      return LODWORD(range.start.value);
    }

    if (CFEqual(@"kFigAssetExportSessionProperty_AllowsParallelizedExport", a2))
    {
      result = 0;
      v22 = *(DerivedStorage + 96);
    }

    else
    {
      if (!CFEqual(@"kFigAssetExportSessionProperty_EnableDecodeAppleOnlySWAV1", a2))
      {
        result = CFEqual(@"kFigAssetExportSessionProperty_ResumableSessionName", a2);
        if (result)
        {
          v8 = *(DerivedStorage + 392);
          if (!v8)
          {
            goto LABEL_78;
          }

          goto LABEL_15;
        }

        return result;
      }

      result = 0;
      v22 = *(DerivedStorage + 98);
    }

    if (v22)
    {
      v23 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v23 = MEMORY[0x1E695E4C0];
    }

    v10 = *v23;
    goto LABEL_80;
  }

  start.value = 0;
  if (*(DerivedStorage + 80))
  {
    v21 = *(DerivedStorage + 80);
  }

  else
  {
    v21 = *(DerivedStorage + 72);
  }

  *&range.start.value = *(DerivedStorage + 264);
  range.start.epoch = *(DerivedStorage + 280);
  result = FigAssetExportSessionGetEstimatedOutputFileLength(v21, &range.start.value, v20, &start.value);
  if (!result)
  {
    SInt64 = FigCFNumberCreateSInt64();
    if (SInt64)
    {
      goto LABEL_16;
    }

    figAssetExportSession_CopyProperty_cold_9(&range);
    return LODWORD(range.start.value);
  }

  return result;
}

void figAssetExportSession_releaseSegmentResources(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = (DerivedStorage + 112);
  v3 = *(DerivedStorage + 112);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      figAssetExportSession_releaseSegmentResources_cold_1(DerivedStorage, v4, a1, Count);
    }

    if (*v4)
    {
      CFRelease(*v4);
      *v4 = 0;
    }
  }

  v6 = *(DerivedStorage + 128);
  if (v6)
  {
    figAssetExportSession_releaseSegmentResources_cold_2(v6, a1, DerivedStorage, (DerivedStorage + 128));
  }

  if (*(DerivedStorage + 48) != 7)
  {

    FigFileDeleteFile();
  }
}

void figAssetExportSession_figRemakerNotification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v55 = 0;
  if (FigCFEqual())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, cf, v54);
    if (a5)
    {
      v10 = CFGetTypeID(a5);
      if (v10 == CFDictionaryGetTypeID())
      {
        FigCFDictionaryGetInt32IfPresent();
        if (v55)
        {
          if (v55 != -16180 || (v11 = *(DerivedStorage + 216)) == 0 || !*(v11 + 160))
          {
            v17 = *MEMORY[0x1E695E480];
            v18 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", v55, 0);
            if (v18)
            {
LABEL_19:
              v14 = v18;
              goto LABEL_20;
            }

            v15 = v17;
            goto LABEL_17;
          }

          if (*DerivedStorage)
          {
            v12 = FigCFWeakReferenceHolderCopyReferencedObject();
            if (v12)
            {
              v13 = v12;
              v14 = (*(*(DerivedStorage + 216) + 160))();
              CFRelease(v13);
              if (v14)
              {
                CFRetain(v14);
LABEL_20:
                v19 = 5;
LABEL_21:
                figAssetExportSession_transitionToStatus(a2, v19, v14);
                goto LABEL_22;
              }
            }
          }
        }
      }
    }

    v15 = *MEMORY[0x1E695E480];
LABEL_17:
    v16 = -16979;
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, cf, v54);
    v15 = *MEMORY[0x1E695E480];
    v16 = -16977;
LABEL_18:
    v18 = CFErrorCreate(v15, @"FigAssetExportSession_ErrorDomain", v16, 0);
    goto LABEL_19;
  }

  if (FigCFEqual())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, cf, v54);
    v14 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16978, 0);
    *(DerivedStorage + 8) = 1;
    goto LABEL_29;
  }

  if (FigCFEqual())
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, cf, v54);
    v14 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16978, 0);
LABEL_29:
    if (*(DerivedStorage + 328))
    {
      *(DerivedStorage + 312) = 0;
      *(DerivedStorage + 328) = 0;
      dispatch_semaphore_signal(*(DerivedStorage + 336));
    }

    goto LABEL_20;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (!FigCFEqual())
      {
        return;
      }

      v14 = 0;
      v19 = 2;
      goto LABEL_21;
    }

    if (a5)
    {
      v24 = CFGetTypeID(a5);
      if (v24 == CFDictionaryGetTypeID())
      {
        LOBYTE(v56) = 0;
        if (FigCFDictionaryGetBooleanIfPresent())
        {
          if (*(DerivedStorage + 328))
          {
            *(DerivedStorage + 312) = v56;
            *(DerivedStorage + 328) = 0;
            dispatch_semaphore_signal(*(DerivedStorage + 336));
          }

          return;
        }
      }
    }

    v14 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16979, 0);
    goto LABEL_22;
  }

  if (!*(DerivedStorage + 97) && !*(DerivedStorage + 389))
  {
    v14 = 0;
    v19 = 4;
    goto LABEL_21;
  }

  v20 = *(DerivedStorage + 128);
  if (v20 && *v20 == a4)
  {
    *(v20 + 48) = 4;
    if (*(DerivedStorage + 389))
    {
      v28 = figAssetExportSession_ResolveIntermediateFakeTrackIDs(v20);
      if (v28)
      {
        v29 = v28;
        v14 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -17392, 0);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17B30, v29, "<<<< FigAssetExportSession >>>>", 3919, v5);
        goto LABEL_22;
      }

      v49 = figAssetExportSession_writeResumablePlistFile(a2);
      if (v49)
      {
        v50 = v49;
        v14 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -17392, 0);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17B30, v50, "<<<< FigAssetExportSession >>>>", 3927, v5);
        goto LABEL_22;
      }
    }
  }

  else if (*(DerivedStorage + 104) >= 1)
  {
    v21 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v21 - 1);
      if (*ValueAtIndex == a4)
      {
        break;
      }

      if (v21++ >= *(DerivedStorage + 104))
      {
        goto LABEL_73;
      }
    }

    v25 = ValueAtIndex;
    *(ValueAtIndex + 12) = 4;
    if (*(DerivedStorage + 389))
    {
      v26 = figAssetExportSession_ResolveIntermediateFakeTrackIDs(ValueAtIndex);
      if (v26)
      {
        v27 = v26;
        v14 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -17392, 0);
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17B30, v27, "<<<< FigAssetExportSession >>>>", 3949, v5);
        goto LABEL_22;
      }

      FirstValue = FigCFArrayGetFirstValue();
      if (!FirstValue)
      {
        figAssetExportSession_figRemakerNotification_cold_2(0, v31, v32, v33, v34, v35, v36, v37, v52, cf, SHIDWORD(cf), v54);
        return;
      }

      cf = 0;
      v38 = *v25;
      v39 = *(FirstValue + 4);
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (!v40 || (v41 = *MEMORY[0x1E695E480], v40(v38, v39, @"RemakerTrack_FinalHDRMetadataGenerationState", *MEMORY[0x1E695E480], &cf)))
      {
        v14 = 0;
      }

      else
      {
        v42 = *(DerivedStorage + 120);
        v43 = cf;
        *(DerivedStorage + 120) = cf;
        if (v43)
        {
          CFRetain(v43);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v44 = figAssetExportSession_writeResumablePlistFile(a2);
        if (!v44)
        {
          if (*(DerivedStorage + 389))
          {
            if (*(DerivedStorage + 104) != v21)
            {
              v45 = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v21);
              v46 = *v45;
              if (*v45)
              {
                figAssetExportSession_addListeners(*v45, a2);
                started = FigRemakerStartOutput(v46);
                if (started)
                {
                  v48 = started;
                  v14 = CFErrorCreate(v41, @"FigAssetExportSession_ErrorDomain", started, 0);
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17B30, v48, "<<<< FigAssetExportSession >>>>", 3986, v5);
                  goto LABEL_22;
                }
              }
            }
          }

          goto LABEL_73;
        }

        figAssetExportSession_figRemakerNotification_cold_1(v41, v44, &v56);
        v14 = v56;
      }

LABEL_22:
      if (v14)
      {
        CFRelease(v14);
      }

      return;
    }
  }

LABEL_73:
  if (figAssetExportSession_getOverallVideoSegmentStatus(*(DerivedStorage + 112)) == 4)
  {
    v51 = *(DerivedStorage + 128);
    if (!v51 || *(v51 + 48) == 4)
    {
      v14 = 0;
      v19 = 3;
      goto LABEL_21;
    }
  }
}

uint64_t figAssetExportSession_ResolveIntermediateFakeTrackIDs(uint64_t a1)
{
  cf = 0;
  FigRemakerGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"Remaker_FakeTrackIDMapping", *MEMORY[0x1E695E480], &cf);
  }

  v5 = *(a1 + 16);
  if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
      RealIntermediateTrackID = figAssetExportSession_getRealIntermediateTrackID(cf, ValueAtIndex[1]);
      if (!RealIntermediateTrackID)
      {
        break;
      }

      ValueAtIndex[1] = RealIntermediateTrackID;
      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }

    figAssetExportSession_ResolveIntermediateFakeTrackIDs_cold_1(&v14);
    v11 = v14;
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t figAssetExportSession_writeResumablePlistFile(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    figAssetExportSession_writeResumablePlistFile_cold_8(&time);
    return LODWORD(time.value);
  }

  v4 = Mutable;
  CFDictionarySetValue(Mutable, @"ResumableSessionName", *(DerivedStorage + 392));
  v5 = CFArrayCreateMutable(v2, 1, MEMORY[0x1E695E9C0]);
  if (!v5)
  {
    figAssetExportSession_writeResumablePlistFile_cold_7(&time);
LABEL_42:
    value_low = LODWORD(time.value);
    goto LABEL_29;
  }

  v6 = v5;
  CFDictionarySetValue(v4, @"OtherTracksSegments", v5);
  CFRelease(v6);
  v7 = MEMORY[0x1E695E4D0];
  v8 = MEMORY[0x1E695E4C0];
  if (*(DerivedStorage + 128))
  {
    v9 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v9)
    {
      figAssetExportSession_writeResumablePlistFile_cold_1(&time);
      goto LABEL_42;
    }

    v10 = v9;
    CFArrayAppendValue(v6, v9);
    CFRelease(v10);
    v11 = CFURLGetString(*(*(DerivedStorage + 128) + 8));
    CFDictionarySetValue(v10, @"SegmentOutputFilename", v11);
    if (*(*(DerivedStorage + 128) + 48) == 4)
    {
      v12 = v7;
    }

    else
    {
      v12 = v8;
    }

    CFDictionarySetValue(v10, @"SegmentCompletionStatus", *v12);
    v13 = *(DerivedStorage + 128);
    if (*(v13 + 48) == 4)
    {
      v14 = figAssetExportSesssion_setTrackMappings(v10, *(v13 + 16));
      if (v14)
      {
        value_low = v14;
        goto LABEL_29;
      }
    }
  }

  v15 = *(DerivedStorage + 112);
  if (v15)
  {
    Count = CFArrayGetCount(v15);
  }

  else
  {
    Count = 0;
  }

  v17 = CFArrayCreateMutable(v2, Count, MEMORY[0x1E695E9C0]);
  if (!v17)
  {
    figAssetExportSession_writeResumablePlistFile_cold_6(&time);
    goto LABEL_42;
  }

  v18 = v17;
  theDict = v4;
  CFDictionarySetValue(v4, @"VideoTrackSegments", v17);
  CFRelease(v18);
  if (Count < 1)
  {
LABEL_25:
    v31 = *(DerivedStorage + 120);
    v4 = theDict;
    if (v31)
    {
      CFDictionarySetValue(theDict, @"LastCompletedSegmentHDRMetadataState", v31);
    }

    if (!FigCFPropertyListWriteToURL())
    {
      value_low = 0;
      goto LABEL_29;
    }

    figAssetExportSession_writeResumablePlistFile_cold_2(&time);
    goto LABEL_42;
  }

  v19 = 0;
  v20 = *v7;
  v21 = *v8;
  while (1)
  {
    v22 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v22)
    {
      figAssetExportSession_writeResumablePlistFile_cold_5(&time);
LABEL_34:
      value_low = LODWORD(time.value);
      goto LABEL_35;
    }

    v23 = v22;
    CFArrayAppendValue(v18, v22);
    CFRelease(v23);
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 112), v19);
    if (!ValueAtIndex)
    {
      figAssetExportSession_writeResumablePlistFile_cold_4(&time);
      goto LABEL_34;
    }

    v25 = ValueAtIndex;
    v26 = CFURLGetString(ValueAtIndex[1]);
    CFDictionarySetValue(v23, @"SegmentOutputFilename", v26);
    time = *(v25 + 1);
    v27 = CMTimeCopyAsDictionary(&time, v2);
    if (!v27)
    {
      figAssetExportSession_writeResumablePlistFile_cold_3(&time);
      goto LABEL_34;
    }

    v28 = v27;
    CFDictionarySetValue(v23, @"SegmentDuration", v27);
    CFRelease(v28);
    v29 = *(v25 + 12) == 4 ? v20 : v21;
    CFDictionarySetValue(v23, @"SegmentCompletionStatus", v29);
    if (*(v25 + 12) == 4)
    {
      v30 = figAssetExportSesssion_setTrackMappings(v23, v25[2]);
      if (v30)
      {
        break;
      }
    }

    if (Count == ++v19)
    {
      goto LABEL_25;
    }
  }

  value_low = v30;
LABEL_35:
  v4 = theDict;
LABEL_29:
  CFRelease(v4);
  return value_low;
}

uint64_t FigRemakerStartOutput(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t figAssetExportSession_getOverallVideoSegmentStatus(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = 4;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        v7 = ValueAtIndex[12];
        if (v7 > 3)
        {
          if (v7 == 4)
          {
LABEL_9:
            if (v7 >= v5)
            {
              v5 = v5;
            }

            else
            {
              v5 = v7;
            }

            goto LABEL_14;
          }

          if ((v7 - 5) < 3)
          {
            return ValueAtIndex[12];
          }
        }

        else if (v7 == 1)
        {
          v5 = 1;
        }

        else if (v7 == 2)
        {
          goto LABEL_9;
        }

LABEL_14:
        if (v3 == ++v4)
        {
          return v5;
        }
      }
    }
  }

  return 4;
}

void figAssetExportSession_transitionToStatus(const void *a1, unsigned int a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (dword_1EAF17B38)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 0, @"kFigAssetExportSessionProperty_Error");
  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 0, @"kFigAssetExportSessionProperty_Status");
  FigReadWriteLockLockForWrite();
  v9 = *(DerivedStorage + 48);
  if (v9 == a2 || v9 >= 4)
  {
    FigReadWriteLockUnlockForWrite();
    return;
  }

  *(DerivedStorage + 48) = a2;
  v11 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (a2 < 4)
  {
    if (a2 != 3)
    {
      v12 = *(DerivedStorage + 184);
LABEL_18:
      FigReadWriteLockUnlockForWrite();
      goto LABEL_29;
    }

    FigReadWriteLockUnlockForWrite();
    figAssetExportSession_kickoffSegmentReassembly();
    if (v15)
    {
      v16 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", -16979, 0);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
      figAssetExportSession_transitionToStatus(a1, 5u, v16);
      if (v16)
      {
        CFRelease(v16);
      }
    }

    goto LABEL_28;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  v13 = *(DerivedStorage + 40);
  if (v13)
  {
    figAssetExportSession_transitionToStatus_cold_1((DerivedStorage + 32), DerivedStorage, (DerivedStorage + 40), a1);
  }

  if (*(DerivedStorage + 97) || *(DerivedStorage + 389))
  {
    if (v13)
    {
      FigReadWriteLockLockForWrite();
    }

    figAssetExportSession_releaseSegmentResources(a1);
    FigReadWriteLockUnlockForWrite();
LABEL_28:
    v12 = *(DerivedStorage + 184);
    goto LABEL_29;
  }

  v12 = *(DerivedStorage + 184);
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_29:
  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 1, @"kFigAssetExportSessionProperty_Error");
  figAssetExportSession_DeliverParentExportNotification(DerivedStorage, 1, @"kFigAssetExportSessionProperty_Status");
  if (a2 >= 4)
  {
    if (a2 - 5 <= 1 && v12)
    {
      FigFileDeleteFile();
    }

    v14 = *(DerivedStorage + 408);
    if (v14)
    {
      *(DerivedStorage + 408) = 0;
      v14(*(DerivedStorage + 416));
      if (*v7 == 1)
      {
        kdebug_trace();
      }

      CFRelease(a1);
    }
  }
}

uint64_t figAssetExportSession_getRealIntermediateTrackID(uint64_t a1, uint64_t a2)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a2);
  FigCFDictionaryGetValue();
  SInt32 = FigCFNumberGetSInt32();
  if (v2)
  {
    CFRelease(v2);
  }

  return SInt32;
}

uint64_t figAssetExportSesssion_setTrackMappings(__CFDictionary *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v15 = 3185;
LABEL_18:
    figAssetExportSesssion_setTrackMappings_cold_1(v15, &v16);
    return v16;
  }

  v7 = Mutable;
  CFDictionarySetValue(a1, @"SegmentTrackMappings", Mutable);
  CFRelease(v7);
  if (Count >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = CFDictionaryCreateMutable(v5, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      CFArrayAppendValue(v7, v9);
      CFRelease(v10);
      CFArrayGetValueAtIndex(theArray, v8);
      UInt32 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(v10, @"SourceTrackID", UInt32);
      if (UInt32)
      {
        CFRelease(UInt32);
      }

      v12 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(v10, @"IntermediateTrackID", v12);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = FigCFNumberCreateUInt32();
      CFDictionarySetValue(v10, @"MediaType", v13);
      if (v13)
      {
        CFRelease(v13);
      }

      if (Count == ++v8)
      {
        return 0;
      }
    }

    v15 = 3194;
    goto LABEL_18;
  }

  return 0;
}

void figAssetExportSession_DeliverParentExportNotification(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[53])
  {
    if (*a1)
    {
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v6)
      {
        v7 = v6;
        (a1[53])(v6, a2, a3);

        CFRelease(v7);
      }
    }
  }
}

void figAssetExportSession_updateProgress(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 40))
  {
    FigReadWriteLockLockForRead();
    if (*(a1 + 40))
    {
      FigRemakerGetFigBaseObject();
      v3 = v2;
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v4)
      {
        v4(v3, @"Remaker_Progress", *MEMORY[0x1E695E480], &cf);
      }
    }

    FigReadWriteLockUnlockForRead();
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!*(a1 + 97))
  {
    if (!*(a1 + 389))
    {
      return;
    }

    if (!*(a1 + 136))
    {
      FigReadWriteLockLockForRead();
      v27 = *(a1 + 128);
      v28 = 0.0;
      v29 = 0.95;
      if (v27 && *v27)
      {
        v30 = *MEMORY[0x1E695E480];
        FigRemakerGetFigBaseObject();
        if (!CMBaseObjectCopyProperty(v31, @"Remaker_Progress", v30, &cf))
        {
          FigCFNumberGetFloat32();
          v28 = v32 * 0.05 + 0.0;
        }

        v29 = 0.9;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      v33 = *(a1 + 112);
      if (v33)
      {
        Count = CFArrayGetCount(v33);
        if (Count >= 1)
        {
          v35 = Count;
          v36 = 0;
          v37 = v29 / Count;
          v38 = *MEMORY[0x1E695E480];
          do
          {
            if (*(CFArrayGetValueAtIndex(*(a1 + 112), v36) + 12) == 4)
            {
              v28 = v37 + v28;
            }

            else
            {
              FigRemakerGetFigBaseObject();
              v40 = v39;
              v41 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v41 && !v41(v40, @"Remaker_Progress", v38, &cf))
              {
                FigCFNumberGetFloat32();
                v28 = v28 + (v42 * v37);
              }

              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }
            }

            ++v36;
          }

          while (v35 != v36);
        }
      }

      if (fabs(v28 + -0.95) < 0.000001)
      {
        *(a1 + 136) = 1;
      }

      goto LABEL_64;
    }

LABEL_35:
    v44 = 0;
    v23 = *(a1 + 144);
    if (v23)
    {
      FigAssetExportSessionCopyProperty(v23, @"kFigAssetExportSessionProperty_Progress", *MEMORY[0x1E695E480], &v44);
      if (v44)
      {
        FigCFNumberGetFloat32();
        Float32 = FigCFNumberCreateFloat32();
        cf = Float32;
        if (Float32)
        {
          v25 = Float32;
          FigReadWriteLockLockForWrite();
          v26 = *(a1 + 64);
          *(a1 + 64) = v25;
          CFRetain(v25);
          if (v26)
          {
            CFRelease(v26);
          }

          FigReadWriteLockUnlockForWrite();
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }

        v7 = v44;
        if (v44)
        {
          goto LABEL_9;
        }
      }
    }

    return;
  }

  if (*(a1 + 136))
  {
    goto LABEL_35;
  }

  FigReadWriteLockLockForRead();
  v8 = *(a1 + 112);
  v9 = 2.0;
  if (v8)
  {
    v10 = CFArrayGetCount(v8);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 0;
      v13 = *MEMORY[0x1E695E480];
      do
      {
        CFArrayGetValueAtIndex(*(a1 + 112), v12);
        FigRemakerGetFigBaseObject();
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v16)
        {
          v16(v15, @"Remaker_Progress", v13, &cf);
        }

        FigCFNumberGetFloat32();
        if (v17 < v9)
        {
          v9 = v17;
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v12;
      }

      while (v11 != v12);
    }
  }

  v18 = *(a1 + 128);
  if (v18 && *v18)
  {
    FigRemakerGetFigBaseObject();
    v20 = v19;
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(v20, @"Remaker_Progress", *MEMORY[0x1E695E480], &cf);
    }

    FigCFNumberGetFloat32();
    if (v22 < v9)
    {
      v9 = v22;
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  if (v9 == 1.0)
  {
    *(a1 + 136) = 1;
  }

LABEL_64:
  FigReadWriteLockUnlockForRead();
  v43 = FigCFNumberCreateFloat32();
  cf = v43;
  if (!v43)
  {
    return;
  }

  v5 = v43;
LABEL_6:
  FigReadWriteLockLockForWrite();
  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  CFRetain(v5);
  if (v6)
  {
    CFRelease(v6);
  }

  FigReadWriteLockUnlockForWrite();
  v7 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v7);
  }
}

uint64_t figAssetExportSession_addTrackMapping(__CFDictionary *a1, int a2, int a3)
{
  v13 = a3;
  valuePtr[0] = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberSInt32Type, &v13);
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CFDictionarySetValue(a1, v5, v6);
    v9 = 0;
LABEL_6:
    CFRelease(v5);
    goto LABEL_7;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, valuePtr[1]);
  v9 = v11;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

uint64_t FigAssetCopyTracksWithMediaType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 48);
  if (v9)
  {

    return v9(a1, a2, a3);
  }

  return result;
}

void FAES_RemakerConfigRelease(int a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a2);
  }
}

CFArrayRef figAssetExportSession_CreateUTTypesForDefaultPassthroughPresetOnce(CFArrayRef *a1)
{
  values[12] = *MEMORY[0x1E69E9840];
  values[0] = @"com.apple.quicktime-movie";
  values[1] = @"com.apple.quicktime-audio";
  values[2] = @"com.apple.m4a-audio";
  values[3] = @"public.mpeg-4";
  values[4] = @"com.apple.m4v-video";
  values[5] = @"public.3gpp";
  values[6] = @"org.3gpp.adaptive-multi-rate-audio";
  values[7] = @"com.microsoft.waveform-audio";
  values[8] = @"public.aiff-audio";
  values[9] = @"public.aifc-audio";
  values[10] = @"com.apple.coreaudio-format";
  values[11] = @"com.apple.immersive-video";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 12, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

void figAssetExportSession_DetermineCompatibleFileTypes_Worker(void **a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(DerivedStorage + 456) != -1)
  {
    dispatch_once_f((DerivedStorage + 456), *a1, figAssetExportSession_DetermineCompatibleFileTypesOnce);
  }

  (a1[1])(a1[2], *(v3 + 464));
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void figAssetExportSession_createRemakerAndBeginExport(__CFDictionary *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  cf = 0;
  v50 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v47 = 0;
  v48 = 0;
  if (dword_1EAF17B38)
  {
    LODWORD(start.start.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 48) != 1)
  {
    goto LABEL_21;
  }

  if (*(DerivedStorage + 8))
  {
    figAssetExportSession_createRemakerAndBeginExport_cold_1(&v55);
    v18 = 0;
    value = v55.start.value;
    goto LABEL_32;
  }

  dictionaryRepresentation = 0;
  v4 = *(DerivedStorage + 216);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (!*(v4 + 144))
  {
    goto LABEL_22;
  }

  if (!*(DerivedStorage + 16))
  {
    goto LABEL_22;
  }

  FigAssetGetCMBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = v7(v6, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
  v10 = dictionaryRepresentation;
  if (v9)
  {
    v17 = 0;
    if (dictionaryRepresentation)
    {
LABEL_19:
      CFRelease(v10);
    }
  }

  else
  {
    memset(&type, 0, sizeof(type));
    v11 = MEMORY[0x1E6960CC0];
    if (dictionaryRepresentation)
    {
      CMTimeMakeFromDictionary(&type, dictionaryRepresentation);
    }

    else
    {
      type = **&MEMORY[0x1E6960CC0];
    }

    memset(&v55, 0, sizeof(v55));
    *&start.start.value = *v11;
    start.start.epoch = *(v11 + 16);
    duration = type;
    CMTimeRangeMake(&otherRange, &start.start, &duration);
    v12 = *(DerivedStorage + 256);
    *&start.start.value = *(DerivedStorage + 240);
    *&start.start.epoch = v12;
    *&start.duration.timescale = *(DerivedStorage + 272);
    CMTimeRangeGetIntersection(&v55, &start, &otherRange);
    if (*DerivedStorage && (v13 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0 && (v14 = v13, v15 = *(*(DerivedStorage + 216) + 144), otherRange = v55, v16 = v15(v13, &otherRange), CFRelease(v14), v16))
    {
      v17 = 0;
    }

    else
    {
      v50 = CFErrorCreate(v8, @"FigAssetExportSession_ErrorDomain", -17390, 0);
      v17 = 1;
    }

    v10 = dictionaryRepresentation;
    if (dictionaryRepresentation)
    {
      goto LABEL_19;
    }
  }

  if (v17)
  {
LABEL_21:
    v18 = 0;
    value = 0;
    goto LABEL_32;
  }

LABEL_22:
  v20 = CFURLCopyPathExtension(*(DerivedStorage + 88));
  if (v20)
  {
    if (qword_1EAF1A9B0 != -1)
    {
      figAssetExportSession_createRemakerAndBeginExport_cold_2();
    }

    v21 = qword_1EAF1A9B8;
    v58.length = CFArrayGetCount(qword_1EAF1A9B8);
    v58.location = 0;
    if (CFArrayContainsValue(v21, v58, v20))
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v47);
      value = v22;
      v18 = 0;
LABEL_31:
      CFRelease(v20);
      goto LABEL_32;
    }
  }

  if (!figAssetExportSession_IsAssetPropertyAvailable(*(DerivedStorage + 16), @"assetProperty_FormatReader", &v50) || !figAssetExportSession_IsAssetPropertyAvailable(*(DerivedStorage + 16), @"assetProperty_Tracks", &v50))
  {
    goto LABEL_29;
  }

  v24 = *(DerivedStorage + 72);
  v25 = *(DerivedStorage + 16);
  v26 = *(DerivedStorage + 24);
  v27 = figAssetExportSession_actualOutputFileType(a1);
  if (!figAssetExportSession_IsExportPresetCompatibleWithAssetAndOutputFileType(v24, v25, v26, v27, *(DerivedStorage + 216)) && (*(DerivedStorage + 98) != 1 || !figAssetExportSession_sourceVideoContainsAV1(*(DerivedStorage + 16))))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v47);
    value = v28;
LABEL_30:
    v18 = 0;
    if (!v20)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  figAssetExportSession_createFigRemakers_CopyError(a1, &cf, &v47, &v48);
  v50 = v29;
  if (v29)
  {
    goto LABEL_29;
  }

  v30 = v47;
  if (*(DerivedStorage + 96) && v47)
  {
    *(DerivedStorage + 97) = 1;
  }

  if (*(DerivedStorage + 388) && v30)
  {
    *(DerivedStorage + 389) = 1;
  }

  if (!*(DerivedStorage + 97))
  {
    if (*(DerivedStorage + 389) || cf)
    {
      goto LABEL_59;
    }

LABEL_29:
    value = 0;
    goto LABEL_30;
  }

  if (!(v30 | v48))
  {
    goto LABEL_29;
  }

LABEL_59:
  FigReadWriteLockLockForWrite();
  if (*(DerivedStorage + 48) != 1)
  {
    v18 = 0;
    goto LABEL_79;
  }

  v32 = v48;
  v31 = cf;
  *(DerivedStorage + 40) = cf;
  *(DerivedStorage + 112) = v30;
  *(DerivedStorage + 128) = v32;
  if (v30)
  {
    Count = CFArrayGetCount(v30);
    v31 = *(DerivedStorage + 40);
  }

  else
  {
    Count = 0;
  }

  *(DerivedStorage + 104) = Count;
  cf = 0;
  if (v31)
  {
    figAssetExportSession_addListeners(v31, a1);
    started = FigRemakerStartOutput(*(DerivedStorage + 40));
    value = started;
    if (started)
    {
      figAssetExportSession_createRemakerAndBeginExport_cold_3(started);
    }

    v18 = 0;
    goto LABEL_80;
  }

  v34 = *(DerivedStorage + 112);
  if (!v34)
  {
    goto LABEL_74;
  }

  v35 = CFArrayGetCount(v34);
  if (v35 != *(DerivedStorage + 104))
  {
    figAssetExportSession_createRemakerAndBeginExport_cold_4(&v55);
    v18 = 0;
    value = v55.start.value;
    goto LABEL_80;
  }

  v36 = v35;
  if (v35 < 1)
  {
LABEL_74:
    v18 = 0;
    goto LABEL_75;
  }

  v37 = 0;
  v18 = 0;
  while (1)
  {
    v38 = *CFArrayGetValueAtIndex(*(DerivedStorage + 112), v37);
    if (v38)
    {
      break;
    }

LABEL_70:
    if (v36 == ++v37)
    {
      goto LABEL_75;
    }
  }

  v18 = figAssetExportSession_createRemakerAndBeginExport_cold_5(v38, a1, (DerivedStorage + 389), &v55);
  if (!v18)
  {
    v18 = 1;
    goto LABEL_70;
  }

  if (v18 != 1)
  {
    value = v55.start.value;
    goto LABEL_89;
  }

LABEL_75:
  v39 = *(DerivedStorage + 128);
  if (v39 && (v40 = *(v39 + 16)) != 0 && CFArrayGetCount(v40) && (v41 = *(DerivedStorage + 128), *(v41 + 48) != 4))
  {
    figAssetExportSession_addListeners(*v41, a1);
    v43 = *(DerivedStorage + 128);
    *(v43 + 48) = 2;
    v44 = FigRemakerStartOutput(*v43);
    value = v44;
    if (v44)
    {
      figAssetExportSession_createRemakerAndBeginExport_cold_6(v44);
    }

LABEL_89:
    v18 = 1;
  }

  else
  {
LABEL_79:
    value = 0;
  }

LABEL_80:
  FigReadWriteLockUnlockForWrite();
  if (v20)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    v23 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", value, 0);
    if (v23)
    {
      goto LABEL_36;
    }

LABEL_38:
    if (*(DerivedStorage + 389))
    {
      if (!v18)
      {
        figAssetExportSession_transitionToStatus(a1, 3u, 0);
      }
    }
  }

  else
  {
    v23 = v50;
    if (!v50)
    {
      goto LABEL_38;
    }

LABEL_36:
    figAssetExportSession_transitionToStatus(a1, 5u, v23);
    CFRelease(v23);
  }
}

void figAssetExportSession_completeExportAsynchronously(const void **a1, const void *a2)
{
  if (a2)
  {
    figAssetExportSession_transitionToStatus(*a1, 5u, a2);
  }

  v3 = *a1;
  if (*a1)
  {

    CFRelease(v3);
  }
}

__CFString *figAssetExportSession_GetFigFormatReaderFileFormat(uint64_t a1)
{
  if (FigCFEqual() || FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_QuickTimeMovie;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_MP4Family;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_3GPFamily;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_iTunesVideoFamily;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_iTunesAudioFamily;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_AppleImmersiveVideo;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_CAFAudioFile;
    return *v1;
  }

  if (FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_WAVEAudioFile;
    return *v1;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    v1 = kFigFormatWriterOption_FileFormat_AIFFAudioFile;
    return *v1;
  }

  if (FigCFEqual())
  {
    return @"AMRAudioFile";
  }

  else
  {
    return 0;
  }
}

uint64_t figAssetExportSession_IsAssetPropertyAvailable(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v21 = 0;
  cf = 0;
  value = 0;
  FigAssetGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8 && !v8(v7, a2, 0, &v21))
  {
    v9 = 1;
    goto LABEL_22;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, value, v21);
  v19 = 0;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10 || (v10(a1, a2, &v19 + 4, &v19, &cf), HIDWORD(v19) != 3))
  {
    v9 = 0;
    *a3 = cf;
    cf = 0;
    goto LABEL_22;
  }

  if (v19 == -12493)
  {
    v11 = -12493;
  }

  else
  {
    v11 = -16979;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, value, v21);
  FigAssetGetCMBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, @"assetProperty_CreationURL", 0, &value);
  }

  v15 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  if (value)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E668], value);
  }

  if (!cf)
  {
    goto LABEL_18;
  }

  CFDictionaryAddValue(v9, *MEMORY[0x1E695E670], cf);
  v17 = cf;
  if (!cf || v19 == -12493)
  {
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_18:
    v17 = CFErrorCreate(v15, @"FigAssetExportSession_ErrorDomain", v11, v9);
  }

  *a3 = v17;
  cf = 0;
  if (v9)
  {
    CFRelease(v9);
    v9 = 0;
  }

LABEL_22:
  if (value)
  {
    CFRelease(value);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t figAssetExportSession_sourceVideoContainsAV1(uint64_t a1)
{
  v11 = 0;
  v2 = 0;
  if (figAssetExportSession_hasVideoTrack())
  {
    TypeID = FigRemakerGetTypeID();
    remakerFamily_GetDefaultSourceVideoTrackFromAsset(TypeID, a1, 0, 1, &v11);
    figAssetExportSession_copyFormatDescriptionsOfSourceVideoTrack(a1, v11);
    v6 = v5;
    v7 = 0;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_4:
    for (i = CFArrayGetCount(v6); v7 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      MediaSubType = CMFormatDescriptionGetMediaSubType(ValueAtIndex);
      v2 = 1;
      if (MediaSubType == 1635135537 || MediaSubType == 1902212657)
      {
        goto LABEL_12;
      }

      ++v7;
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_5:
      ;
    }

    v2 = 0;
LABEL_12:
    if (v6)
    {
      CFRelease(v6);
    }
  }

  return v2;
}

CFArrayRef figAssetExportSession_UnsupportedOutputURLPathExtensionsOnce_Worker(CFArrayRef *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1E7497CC0;
  v3[1] = *&off_1E7497CD0;
  v3[2] = xmmword_1E7497CE0;
  v4 = @"mpa";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 7, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_CanWriteMediaOfAsset(uint64_t a1, uint64_t a2, uint64_t a3, const __CFSet *a4)
{
  v6 = a2;
  v28 = 0;
  theArray = 0;
  FigAssetGetCMBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = *MEMORY[0x1E695E480];
  if (v9(v8, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &v28))
  {
    goto LABEL_21;
  }

  FigAssetGetCMBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13 || v13(v12, @"assetProperty_Tracks", v10, &theArray))
  {
    goto LABEL_21;
  }

  if (!theArray)
  {
    v17 = 0;
    goto LABEL_24;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_21:
    v17 = 0;
  }

  else
  {
    v15 = Count;
    v16 = 0;
    v17 = 0;
    do
    {
      cf = 0;
      v26 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
      v19 = CFSetContainsValue(a4, ValueAtIndex);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v20)
      {
        v20(ValueAtIndex, &v26, 0);
      }

      v21 = v26;
      if (v26)
      {
        v22 = v28;
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v23)
        {
          v23(v22, v21, &cf, 0);
        }
      }

      PassthroughExportPolicy = FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy(ValueAtIndex, a3, v19, v6, cf);
      if (cf)
      {
        CFRelease(cf);
      }

      if (PassthroughExportPolicy == 2)
      {
        v17 = 1;
      }

      else if (PassthroughExportPolicy == 1)
      {
        goto LABEL_21;
      }

      ++v16;
    }

    while (v15 != v16);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_24:
  if (v28)
  {
    CFRelease(v28);
  }

  return v17;
}

BOOL figAssetExportSession_firstFormatDescriptionIsLPCM()
{
  theArray = 0;
  FigAssetTrackGetCMBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 0;
  }

  v3 = v2(v1, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  v4 = theArray;
  if (v3 || (Count = CFArrayGetCount(theArray), v4 = theArray, !Count))
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_5;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v7 = CMFormatDescriptionGetMediaSubType(ValueAtIndex) == 1819304813;
  v4 = theArray;
  if (theArray)
  {
LABEL_5:
    CFRelease(v4);
  }

  return v7;
}

CFArrayRef figAssetExportSession_CreateUTTypesForAudioOnlyOnce(CFArrayRef *a1)
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"com.apple.m4a-audio";
  v3[1] = @"com.apple.quicktime-audio";
  v3[2] = @"org.3gpp.adaptive-multi-rate-audio";
  v3[3] = @"com.microsoft.waveform-audio";
  v3[4] = @"public.aiff-audio";
  v3[5] = @"public.aifc-audio";
  v3[6] = @"com.apple.coreaudio-format";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 7, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession__editCursorServiceContainsEditsInTimeRange(uint64_t a1, uint64_t a2, int a3)
{
  v21 = 0;
  *&time1.start.value = *a2;
  time1.start.epoch = *(a2 + 16);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 0;
  }

  v19 = *&time1.start.value;
  *v20 = time1.start.epoch;
  v7 = v6(a1, &v19, &v21);
  v8 = v21;
  if (v7)
  {
    v11 = 0;
    if (!v21)
    {
      return v11;
    }

    goto LABEL_29;
  }

  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v9)
  {
    v10 = 0;
    while (!v9(v8, &v19))
    {
      if (a3)
      {
        if (a3 == 1)
        {
          if ((BYTE12(v19) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (a3 == 2 && v10)
          {
            goto LABEL_32;
          }

          if (a3 == 3)
          {
            if ((v20[44] & 1) == 0)
            {
              goto LABEL_32;
            }

            v11 = 1;
            if ((v20[68] & 1) == 0 || *&v20[72] || (*&v20[56] & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }
          }
        }
      }

      else if ((BYTE12(v19) & 1) != 0 && (v20[20] & 1) != 0 && !*&v20[24] && (*&v20[8] & 0x8000000000000000) == 0)
      {
        *&time1.start.value = *&v20[8];
        time1.start.epoch = *&v20[24];
        time2 = *&v20[56];
        if (CMTimeCompare(&time1.start, &time2))
        {
LABEL_32:
          v11 = 1;
          goto LABEL_28;
        }
      }

      v12 = v21;
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v13)
      {
        if (!v13(v12, 1))
        {
          v14 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v14;
          *&time1.duration.timescale = *(a2 + 32);
          CMTimeRangeGetEnd(&time2, &time1);
          time1 = *&v20[32];
          CMTimeRangeGetEnd(&v16, &time1);
          if (CMTimeCompare(&time2, &v16) > 0)
          {
            v19 = 0u;
            memset(v20, 0, sizeof(v20));
            v8 = v21;
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            --v10;
            if (v9)
            {
              continue;
            }
          }
        }
      }

      break;
    }
  }

  v11 = 0;
LABEL_28:
  v8 = v21;
  if (v21)
  {
LABEL_29:
    CFRelease(v8);
  }

  return v11;
}

uint64_t FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v25 = 0;
  theArray = 0;
  FigFormatReaderFileFormat = figAssetExportSession_GetFigFormatReaderFileFormat(a2);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10 || v10(a1, 0, &v25))
  {
LABEL_25:
    v12 = 1;
  }

  else
  {
    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
    v12 = 1;
    if (CFStringForOSTypeValue && FigFormatReaderFileFormat)
    {
      v13 = CFStringForOSTypeValue;
      if (qword_1EAF1A9D8 != -1)
      {
        FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy_cold_1(CFStringForOSTypeValue);
      }

      v14 = CFSetContainsValue(qword_1EAF1A9D0, v13);
      if (v14)
      {
        goto LABEL_8;
      }

      if (qword_1EAF1A9E8 != -1)
      {
        FigAssetExportSessionTrackExportPolicy_GetPassthroughExportPolicy_cold_2(v14);
      }

      if (CFSetContainsValue(qword_1EAF1A9E0, v13))
      {
        goto LABEL_26;
      }

      if (a4 == 1 && a5 && figAssetExportSession_HasEditSegmentData(a5, 3))
      {
        goto LABEL_8;
      }

      FigAssetTrackGetCMBaseObject();
      v16 = v15;
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v17)
      {
        return 0;
      }

      v17(v16, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (!Count)
      {
        goto LABEL_8;
      }

      v19 = Count;
      if (Count >= 1)
      {
        v20 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
          MediaType = CMFormatDescriptionGetMediaType(ValueAtIndex);
          if (!FigRemakerCanFileTypeSupportMediaType(FigFormatReaderFileFormat, MediaType, a3))
          {
            break;
          }

          if (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1936684398)
          {
            if (!figAssetExportSession_IsPassthroughExportSupportedForAudioFormat(ValueAtIndex, FigFormatReaderFileFormat, a3, 0))
            {
              goto LABEL_25;
            }
          }

          else if (!FigRemakerCanFileTypeSupportFormatDescription(FigFormatReaderFileFormat, ValueAtIndex, a3))
          {
            goto LABEL_25;
          }

          ++v20;
          v12 = 2;
          if (v19 == v20)
          {
            goto LABEL_26;
          }
        }

LABEL_8:
        v12 = 0;
        goto LABEL_26;
      }

      v12 = 2;
    }
  }

LABEL_26:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

CFSetRef figAssetExportSession_MediaTypesToStripOnPassthroughExportWorkerOnce(CFSetRef *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1E7497CF8;
  v4 = @"hint";
  result = CFSetCreate(*MEMORY[0x1E695E480], &v3, 3, MEMORY[0x1E695E9F8]);
  *a1 = result;
  return result;
}

CFSetRef figAssetExportSession_MediaTypesToFailPassthroughExportWorkerOnce(CFSetRef *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[4] = xmmword_1E7497D50;
  v3[5] = *&off_1E7497D60;
  v3[6] = xmmword_1E7497D70;
  v4 = @"mpeg";
  v3[0] = xmmword_1E7497D10;
  v3[1] = *&off_1E7497D20;
  v3[2] = xmmword_1E7497D30;
  v3[3] = *&off_1E7497D40;
  result = CFSetCreate(*MEMORY[0x1E695E480], v3, 15, MEMORY[0x1E695E9F8]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_HasDecodableTrack(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695E480];
  while (1)
  {
    v4 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v4)
    {
      return 0;
    }

    CFArrayGetValueAtIndex(theArray, v2);
    number = 0;
    valuePtr = 0;
    FigAssetTrackGetCMBaseObject();
    v6 = v5;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v8 = v7(v6, @"assetTrackProperty_MediaDecodingValidation", v3, &number);
      v9 = number;
      if (v8)
      {
        goto LABEL_10;
      }

      if (number)
      {
        CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
        v9 = number;
LABEL_10:
        if (v9)
        {
          CFRelease(v9);
        }
      }
    }

    ++v2;
    if (!valuePtr)
    {
      return 1;
    }
  }
}

CFArrayRef figAssetExportSession_CreateAudioOnlyPresetsOnce(CFArrayRef *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1E7497D88;
  v3[1] = *&off_1E7497D98;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 4, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

CFArrayRef figAssetExportSession_CreateGetVideoOnlyPresetsOnce(CFArrayRef *a1)
{
  result = CFArrayCreate(*MEMORY[0x1E695E480], &kFigAssetExportSessionPresetAuxSmall, 1, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

CGFloat FigAssetExportSession_getUntransformedSourceDimension(uint64_t a1, uint64_t a2, CGSize *a3)
{
  size.width = 0.0;
  size.height = 0.0;
  if (a3)
  {
    size = a3[6];
  }

  else
  {
    v4 = figAssetExportSession_CopySourceVideoTrack(a1, a2);
    if (v4)
    {
      v5 = v4;
      theArray = 0;
      v6 = *MEMORY[0x1E695E480];
      FigAssetTrackGetCMBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9 && (v9(v8, @"FormatDescriptionArray", v6, &theArray), theArray) && CFArrayGetCount(theArray) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        size = CMVideoFormatDescriptionGetPresentationDimensions(ValueAtIndex, 1u, 0);
      }

      else
      {
        cf = 0;
        FigAssetTrackGetCMBaseObject();
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v13)
        {
          v13(v12, @"NaturalSize", v6, &cf);
          if (cf)
          {
            v14 = CFGetTypeID(cf);
            if (v14 == CFDictionaryGetTypeID())
            {
              CGSizeMakeWithDictionaryRepresentation(cf, &size);
              CFRelease(cf);
            }
          }
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      CFRelease(v5);
    }
  }

  return size.width;
}

uint64_t figAssetExportSession_hasVideoTrack()
{
  theArray = 0;
  v0 = *MEMORY[0x1E695E4C0];
  v17 = *MEMORY[0x1E695E4C0];
  v16 = 0;
  FigAssetGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    if (!v3(v2, @"assetProperty_Tracks", *MEMORY[0x1E695E480], &theArray))
    {
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = *MEMORY[0x1E695E4D0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
          v17 = v0;
          v16 = 0;
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v10 || v10(ValueAtIndex, 0, &v16))
          {
            break;
          }

          if (v16 == 1986618469)
          {
            FigAssetTrackGetCMBaseObject();
            v12 = v11;
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v13 || v13(v12, @"IsEnabled", v4, &v17))
            {
              break;
            }

            if (v17 == v8)
            {
              v14 = 1;
              goto LABEL_14;
            }
          }

          ++v7;
        }

        while (v6 != v7);
      }
    }
  }

  v14 = 0;
LABEL_14:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

uint64_t figAssetExportSession_canPassThroughVideo(uint64_t a1, const __CFDictionary *a2, const void *a3, uint64_t a4, int a5, int a6)
{
  v109[0] = 0;
  v108 = 0.0;
  v106 = 0;
  v107 = 0;
  v12 = *MEMORY[0x1E695E4C0];
  v104 = 0;
  v105 = v12;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LOBYTE(keyExistsAndHasValidFormat.a) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disable_passthrough_export", @"com.apple.avfoundation", &keyExistsAndHasValidFormat);
  if (LOBYTE(keyExistsAndHasValidFormat.a))
  {
    v15 = 0;
    if (AppBooleanValue)
    {
      return v15;
    }
  }

  if (!a2 || !CFDictionaryGetValue(a2, @"videoCodec"))
  {
    v53 = *(DerivedStorage + 16);
    v54 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v54)
    {
      v54(v53, 1986618469, &v107);
    }

    if (v107)
    {
      Count = CFArrayGetCount(v107);
      if (Count >= 1)
      {
        v56 = Count;
        v57 = 0;
        v58 = *MEMORY[0x1E695E480];
        v59 = *MEMORY[0x1E695E4D0];
        do
        {
          v60 = v106;
          ValueAtIndex = CFArrayGetValueAtIndex(v107, v57);
          v106 = ValueAtIndex;
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (v60)
          {
            CFRelease(v60);
          }

          v105 = v12;
          FigAssetTrackGetCMBaseObject();
          v63 = v62;
          v64 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v64)
          {
            v64(v63, @"IsEnabled", v58, &v105);
          }

          if (!a5 || v105 == v59)
          {
            FigAssetTrackGetCMBaseObject();
            v66 = v65;
            v67 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v67)
            {
              v67(v66, @"FormatDescriptionArray", v58, &v104);
            }

            if (v104)
            {
              v68 = CFArrayGetCount(v104);
              if (v68 >= 1)
              {
                v69 = v68;
                for (i = 0; i != v69; ++i)
                {
                  v71 = CFArrayGetValueAtIndex(v104, i);
                  if (FigRemakerIsFormatDescriptionProtected(v71))
                  {
                    v15 = 0;
                    goto LABEL_119;
                  }
                }
              }

              if (v104)
              {
                CFRelease(v104);
                v104 = 0;
              }
            }
          }

          ++v57;
        }

        while (v57 != v56);
      }
    }

LABEL_113:
    v15 = 1;
    goto LABEL_119;
  }

  theArray = CFDictionaryGetValue(a2, @"applicableVideoCodecs");
  UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(*(DerivedStorage + 16), a4, *(DerivedStorage + 216));
  v18 = v17;
  if (v107)
  {
    CFRelease(v107);
    v107 = 0;
  }

  v19 = *(DerivedStorage + 16);
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v20)
  {
    v20(v19, 1986618469, &v107);
  }

  if (!v107)
  {
    goto LABEL_113;
  }

  v21 = CFArrayGetCount(v107);
  if (v21 < 1)
  {
    goto LABEL_113;
  }

  v22 = v21;
  v88 = v21 - 1;
  v87 = a3;
  v98 = a5;
  v95 = 0;
  v23 = 0;
  v96 = *MEMORY[0x1E695E480];
  v97 = *MEMORY[0x1E695E4D0];
  v92 = *MEMORY[0x1E6965F30];
  extensionKey = *MEMORY[0x1E6965E50];
  v24 = 0.0;
  v25 = 1;
  do
  {
    while (1)
    {
      if (v106)
      {
        CFRelease(v106);
        v106 = 0;
      }

      if (a6)
      {
        v26 = CFArrayGetValueAtIndex(v107, v23);
        v106 = v26;
        if (!v26)
        {
          break;
        }

        CFRetain(v26);
      }

      else
      {
        v27 = *(DerivedStorage + 16);
        v28 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v28)
        {
          v28(v27, a4, &v106);
        }
      }

      if (!v106)
      {
        break;
      }

      v105 = v12;
      FigAssetTrackGetCMBaseObject();
      v30 = v29;
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31)
      {
        v31(v30, @"IsEnabled", v96, &v105);
      }

      if (v98 && v105 != v97)
      {
        break;
      }

      FigAssetTrackGetCMBaseObject();
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34)
      {
        v34(v33, @"FormatDescriptionArray", v96, &v104);
      }

      v103 = 0;
      FigCFDictionaryGetBooleanIfPresent();
      v102 = 0;
      FigCFDictionaryGetBooleanIfPresent();
      if (v104)
      {
        v85 = a1;
        v86 = a4;
        v89 = CFArrayGetCount(v104);
        if (v89 >= 1)
        {
          v35 = 0;
          theDict = a2;
          do
          {
            v36 = CFArrayGetValueAtIndex(v104, v35);
            MediaSubType = CMFormatDescriptionGetMediaSubType(v36);
            cf = CMFormatDescriptionGetExtension(v36, extensionKey);
            Extension = v95;
            if (!v95)
            {
              CMFormatDescriptionGetExtension(v36, v92);
              if (FigCFEqual() || FigCFEqual())
              {
                Extension = CMFormatDescriptionGetExtension(v36, v92);
                if (Extension)
                {
                  Extension = CFRetain(Extension);
                }
              }

              else
              {
                Extension = 0;
              }
            }

            a2 = theDict;
            if (!MediaSubType)
            {
              goto LABEL_144;
            }

            v95 = Extension;
            if (theArray)
            {
              v39 = CFArrayGetCount(theArray);
              SInt32 = FigCFNumberCreateSInt32();
              v109[0] = SInt32;
              if (SInt32)
              {
                v110.location = 0;
                v110.length = v39;
                if (!CFArrayContainsValue(theArray, v110, SInt32))
                {
                  CFRelease(v109[0]);
                  goto LABEL_143;
                }

                if (v109[0])
                {
                  CFRelease(v109[0]);
                  v109[0] = 0;
                }
              }
            }

            else
            {
              LODWORD(keyExistsAndHasValidFormat.a) = 0;
              FigCFDictionaryGetIntIfPresent();
              v41 = FigVideoFormatDescriptionContainsAlphaChannel();
              v42 = FigVideoFormatDescriptionContainsStereoMultiviewVideo();
              if (MediaSubType != LODWORD(keyExistsAndHasValidFormat.a) || (v43 = v42, FigRemakerIsFormatDescriptionProtected(v36)) || (v41 != 0) != (v103 != 0) || (v43 != 0) != (v102 != 0))
              {
                a2 = theDict;
LABEL_143:
                Extension = v95;
LABEL_144:
                v15 = 0;
                v78 = 1;
                v74 = 0.0;
                a4 = v86;
                goto LABEL_164;
              }

              if (cf)
              {
                v44 = CFGetTypeID(cf);
                if (v44 == CFNumberGetTypeID())
                {
                  LODWORD(valuePtr.a) = 0;
                  CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
                  if (SLODWORD(valuePtr.a) > 1)
                  {
                    a2 = theDict;
                    a4 = v86;
                    goto LABEL_162;
                  }
                }
              }

              a2 = theDict;
            }

            ++v35;
          }

          while (v89 != v35);
        }

        if (v104)
        {
          CFRelease(v104);
          v104 = 0;
        }

        a4 = v86;
        a1 = v85;
      }

      if (FigCFDictionaryGetFloatIfPresent())
      {
        if (UntransformedSourceDimension > v108)
        {
          goto LABEL_162;
        }
      }

      else if (FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension != v108)
      {
        goto LABEL_162;
      }

      if (FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension < v108)
      {
        goto LABEL_162;
      }

      if (FigCFDictionaryGetFloatIfPresent())
      {
        if (v18 > v108)
        {
          goto LABEL_162;
        }
      }

      else if (FigCFDictionaryGetFloatIfPresent() && v18 != v108)
      {
        goto LABEL_162;
      }

      if (FigCFDictionaryGetFloatIfPresent() && v18 < v108)
      {
        goto LABEL_162;
      }

      if (CFDictionaryGetValue(a2, @"videoMatrixHandling") && FigCFEqual())
      {
        memset(&keyExistsAndHasValidFormat, 0, sizeof(keyExistsAndHasValidFormat));
        v100 = 0;
        FigAssetTrackGetCMBaseObject();
        v46 = v45;
        v47 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v47)
        {
          v47(v46, @"PreferredTransform", v96, &v100);
        }

        if (v100)
        {
          v48 = CFGetTypeID(v100);
          if (v48 == CFArrayGetTypeID())
          {
            FigGetCGAffineTransformFrom3x3MatrixArray(v100, &keyExistsAndHasValidFormat);
          }

          if (v100)
          {
            CFRelease(v100);
          }
        }

        valuePtr = keyExistsAndHasValidFormat;
        if (!CGAffineTransformIsIdentity(&valuePtr))
        {
LABEL_162:
          v15 = 0;
          v78 = 1;
          v74 = 0.0;
          goto LABEL_163;
        }
      }

      v108 = 0.0;
      FigAssetTrackGetCMBaseObject();
      v50 = v49;
      v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v51)
      {
        v51(v50, @"EstimatedDataRate", v96, v109);
      }

      if (v109[0])
      {
        v52 = CFGetTypeID(v109[0]);
        if (v52 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v109[0], kCFNumberFloatType, &v108);
          v108 = v108 * 8.0;
        }

        if (v109[0])
        {
          CFRelease(v109[0]);
          v109[0] = 0;
        }
      }

      v24 = v24 + v108;
      if (a6)
      {
        v25 = 0;
        v77 = v88 == v23++;
        if (!v77)
        {
          continue;
        }
      }

      goto LABEL_127;
    }

    ++v23;
  }

  while (v22 != v23);
  if (v25)
  {
    v15 = 1;
    Extension = v95;
    goto LABEL_117;
  }

LABEL_127:
  figAssetExportSession_getSourceVideoFrameRate();
  v74 = v73;
  if (v73 == 0.0 || FigCFEqual() && !figAssetExportSession_canPerformFastFrameRateConversionWithPreset(a1, a2, v87))
  {
LABEL_171:
    v15 = 0;
    v78 = 1;
    goto LABEL_163;
  }

  v75 = v74;
  if (FigCFDictionaryGetFloatIfPresent())
  {
    if (v74 > v108)
    {
      goto LABEL_171;
    }
  }

  else if ((*(DerivedStorage + 300) & 0x1D) == 1)
  {
    *&keyExistsAndHasValidFormat.a = *(DerivedStorage + 288);
    keyExistsAndHasValidFormat.c = *(DerivedStorage + 304);
    if (1.0 / CMTimeGetSeconds(&keyExistsAndHasValidFormat) < v75)
    {
      goto LABEL_171;
    }
  }

  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v15 = 0;
  v77 = v74 >= v108 || FloatIfPresent == 0;
  v78 = 1;
  if (v77 && v24 != 0.0)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      v79 = v108;
LABEL_147:
      if (v24 > v79)
      {
        goto LABEL_171;
      }
    }

    else if (CFDictionaryGetValue(a2, @"videoAverageBitRate"))
    {
      FigAssetExportSessionGetAverageVideoBitRateForSourceAndPresetAndTransferFunction(a1, a4, a2, 0, v95, UntransformedSourceDimension, v18, v74);
      v79 = v80 * 1.2;
      goto LABEL_147;
    }

    if (FigCFDictionaryGetFloatIfPresent() && v24 < v108 || FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension * v18 >= v108 || FigCFDictionaryGetFloatIfPresent() && UntransformedSourceDimension * v18 * v75 >= v108)
    {
      goto LABEL_171;
    }

    LODWORD(keyExistsAndHasValidFormat.a) = 0;
    if (FigCFDictionaryGetInt32IfPresent())
    {
      v81 = LODWORD(keyExistsAndHasValidFormat.a) == 0;
    }

    else
    {
      v81 = 1;
    }

    v78 = !v81;
    v15 = v78 ^ 1u;
  }

LABEL_163:
  Extension = v95;
LABEL_164:
  if (v78 && v24 != 0.0)
  {
    v82 = Extension;
    if (CFDictionaryGetValue(a2, @"videoAverageBitRate"))
    {
      v83 = CMBaseObjectGetDerivedStorage();
      figAssetExportSession_getAverageVideoBitRateForSourceAndPreset(*(v83 + 16), a4, *(v83 + 72), a2, 0, v82, UntransformedSourceDimension, v18, v74);
      if ((v24 + v24) < v84)
      {
        v108 = v24 + v24;
        FigCFDictionarySetFloat();
      }
    }

    Extension = v82;
  }

LABEL_117:
  if (Extension)
  {
    CFRelease(Extension);
  }

LABEL_119:
  if (v104)
  {
    CFRelease(v104);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  return v15;
}

BOOL figAssetExportSession_canPassThroughAudio(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v95 = 0;
  v93 = 0;
  v94 = 0;
  theArray = 0;
  v82 = *MEMORY[0x1E695E4C0];
  key = 0;
  v91 = v82;
  cf = 0;
  v89 = 0;
  valuePtr = 0.0;
  v85 = 0;
  v86 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disable_passthrough_export", @"com.apple.avfoundation", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v7 = 0;
    if (AppBooleanValue)
    {
      return v7;
    }
  }

  v8 = *MEMORY[0x1E695E480];
  FigAssetGetCMBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, @"assetProperty_Tracks", v8, &theArray);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v13 = Count;
    v14 = Count > 0;
    if (*(DerivedStorage + 208) && Count >= 1)
    {
      v80 = a1;
      v15 = 0;
      v16 = *MEMORY[0x1E695E4D0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        v91 = v82;
        HIDWORD(key) = 0;
        FigAssetTrackGetCMBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v20(v19, @"IsEnabled", v8, &v91);
        }

        v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v21)
        {
          v21(ValueAtIndex, &key, &key + 4);
        }

        if ((!a3 || v91 == v16) && HIDWORD(key) == 1936684398)
        {
          v22 = CFDictionaryGetValue(*(DerivedStorage + 208), key);
          if (v22)
          {
            v23 = v22;
            v24 = v22[3];
            if (v24)
            {
              if (CFArrayGetCount(v24) > 0)
              {
                goto LABEL_112;
              }
            }

            if (v23[2] || v23[1])
            {
              goto LABEL_112;
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v14 = 1;
      a1 = v80;
    }

    if (!a2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    if (!a2)
    {
      goto LABEL_37;
    }
  }

  if (CFDictionaryGetValue(a2, @"audioPreset"))
  {
    v25 = CFDictionaryGetValue(a2, @"audioPreset");
    FigAudioCompressionOptionsGetPreset(v25, &v95, 0, 0, &v94);
    if (v26)
    {
      goto LABEL_112;
    }

    v27 = CFDictionaryGetValue(a2, @"applicableAudioCodecs");
    if (!FigCFDictionaryGetFloatIfPresent())
    {
      FigCFDictionaryGetFloatIfPresent();
      v28 = *(&v93 + 1);
      if (*(&v93 + 1) == 0.0)
      {
        v29 = *(v95 + 20);
        if (v29)
        {
          *&v30 = v29;
          LODWORD(v30) = *(v95 + 16);
          v28 = *v95 / v29 * v30 * 8.0;
        }
      }

      v31 = v28 * 1.2;
      *(&v93 + 1) = v31;
    }

    FigCFDictionaryGetFloatIfPresent();
    if (qword_1EAF1A9C8 != -1)
    {
      figAssetExportSession_canPassThroughAudio_cold_1();
    }

    v32 = qword_1EAF1A9C0;
    if (qword_1EAF1A9C0)
    {
      v33 = CFArrayGetCount(qword_1EAF1A9C0);
    }

    else
    {
      v33 = 0;
    }

    value = 0;
    FigAssetExportSessionCopyProperty(a1, @"kFigAssetExportSessionProperty_OutputFileType", v8, &value);
    v48 = value;
    v49 = 1;
    if (v32 && value)
    {
      v97.location = 0;
      v97.length = v33;
      v49 = CFArrayContainsValue(v32, v97, value) == 0;
      v48 = value;
    }

    if (v48)
    {
      CFRelease(v48);
    }

    FigAssetGetCMBaseObject();
    v51 = v50;
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v52)
    {
      goto LABEL_112;
    }

    v7 = v52(v51, @"assetProperty_FormatReader", v8, &v85) == 0;
    if (!v7 || !v14)
    {
      goto LABEL_113;
    }

    v53 = 0;
    v54 = 0;
    v81 = *MEMORY[0x1E695E4D0];
    v55 = 0.0;
    do
    {
      v56 = CFArrayGetValueAtIndex(theArray, v54);
      key = 0;
      v91 = v82;
      FigAssetTrackGetCMBaseObject();
      v58 = v57;
      v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v59)
      {
        v59(v58, @"IsEnabled", v8, &v91);
      }

      v60 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v60)
      {
        v60(v56, &key, &key + 4);
      }

      if ((!a3 || v91 == v81) && HIDWORD(key) == 1936684398)
      {
        v61 = v85;
        v62 = key;
        v63 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v63 || v63(v61, v62, &v86, 0) || !v49 && figAssetExportSession_HasEditSegmentData(v86, 2) || figAssetExportSession_HasEditSegmentData(v86, 0))
        {
          goto LABEL_112;
        }

        FigAssetTrackGetCMBaseObject();
        v65 = v64;
        v66 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v66)
        {
          v66(v65, @"FormatDescriptionArray", v8, &v89);
        }

        if (v89)
        {
          v67 = CFArrayGetCount(v89);
          if (v67 >= 1)
          {
            v68 = v67;
            for (i = 0; i != v68; ++i)
            {
              v70 = CFArrayGetValueAtIndex(v89, i);
              StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v70);
              mFormatID = StreamBasicDescription->mFormatID;
              if (!mFormatID)
              {
                goto LABEL_112;
              }

              if (v27)
              {
                v73 = CFArrayGetCount(v27);
                SInt32 = FigCFNumberCreateSInt32();
                cf = SInt32;
                if (SInt32)
                {
                  v98.location = 0;
                  v98.length = v73;
                  if (!CFArrayContainsValue(v27, v98, SInt32))
                  {
                    CFRelease(cf);
                    goto LABEL_112;
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }
                }
              }

              else
              {
                if (mFormatID != *(v95 + 8))
                {
                  goto LABEL_112;
                }

                v75 = *(v95 + 28);
                if (v75)
                {
                  if (StreamBasicDescription->mChannelsPerFrame > v75)
                  {
                    goto LABEL_112;
                  }
                }

                if (FigRemakerIsFormatDescriptionProtected(v70))
                {
                  goto LABEL_112;
                }
              }
            }
          }

          if (v89)
          {
            CFRelease(v89);
            v89 = 0;
          }
        }

        valuePtr = 0.0;
        FigAssetTrackGetCMBaseObject();
        v77 = v76;
        v78 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v78)
        {
          v78(v77, @"EstimatedDataRate", v8, &cf);
        }

        if (cf)
        {
          CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
          valuePtr = valuePtr * 8.0;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }
        }

        v55 = v55 + valuePtr;
        if (v86)
        {
          CFRelease(v86);
          v86 = 0;
        }

        v53 = 1;
      }

      ++v54;
    }

    while (v54 != v13);
    if (v53)
    {
      v7 = 0;
      if (v55 != 0.0 && v55 <= *(&v93 + 1))
      {
        v7 = v55 >= *&v93 || *&v93 == 0.0;
      }

      goto LABEL_113;
    }

LABEL_56:
    v7 = 1;
    goto LABEL_113;
  }

LABEL_37:
  if (!v14)
  {
    goto LABEL_56;
  }

  v34 = 0;
  v35 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    v36 = CFArrayGetValueAtIndex(theArray, v34);
    v91 = v82;
    HIDWORD(key) = 0;
    FigAssetTrackGetCMBaseObject();
    v38 = v37;
    v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v39)
    {
      v39(v38, @"IsEnabled", v8, &v91);
    }

    v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v40)
    {
      v40(v36, 0, &key + 4);
    }

    if (a3 && v91 != v35 || HIDWORD(key) != 1936684398)
    {
      goto LABEL_55;
    }

    FigAssetTrackGetCMBaseObject();
    v42 = v41;
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v43)
    {
      v43(v42, @"FormatDescriptionArray", v8, &v89);
    }

    if (!v89)
    {
      goto LABEL_55;
    }

    v44 = CFArrayGetCount(v89);
    if (v44 >= 1)
    {
      break;
    }

LABEL_53:
    if (v89)
    {
      CFRelease(v89);
      v89 = 0;
    }

LABEL_55:
    if (++v34 == v13)
    {
      goto LABEL_56;
    }
  }

  v45 = v44;
  v46 = 0;
  while (1)
  {
    v47 = CFArrayGetValueAtIndex(v89, v46);
    if (FigRemakerIsFormatDescriptionProtected(v47))
    {
      break;
    }

    if (v45 == ++v46)
    {
      goto LABEL_53;
    }
  }

LABEL_112:
  v7 = 0;
LABEL_113:
  if (v86)
  {
    CFRelease(v86);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  return v7;
}

uint64_t figAssetExportSession_totalSizeOfTracksIsWithinFileLengthLimit(uint64_t a1, CFArrayRef theArray, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"maxFileSize");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    }
  }

  if (*(a1 + 360))
  {
    valuePtr = *(a1 + 360);
    if (!theArray)
    {
      return 1;
    }
  }

  else
  {
    if (valuePtr)
    {
      v6 = theArray == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 1;
    }
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 1;
  }

  v8 = Count;
  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E695E480];
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v9);
    number = 0;
    v17 = 0;
    FigAssetTrackGetCMBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, @"TotalSampleDataLength", v11, &number);
    }

    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v17);
      CFRelease(number);
    }

    v10 += v17;
    if (v10 > valuePtr)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 1;
    }
  }

  return 0;
}

const void *figAssetExportSession_isAudioMixdownRequired(const void *result, CFErrorRef *a2)
{
  if (result)
  {
    v5 = 0;
    FigAudioCompressionOptionsGetPreset(result, &v5, 0, 0, 0);
    if (v3)
    {
      if (a2)
      {
        v4 = CFErrorCreate(*MEMORY[0x1E695E480], @"FigAssetExportSession_ErrorDomain", v3, 0);
        result = 0;
        *a2 = v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return (*(v5 + 28) != 0);
    }
  }

  return result;
}

uint64_t FigRemakerGetDefaultSourceAudioTrack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

__CFDictionary *figAssetExportSession_createVideoEncoderSpecification(const void *a1, const __CFDictionary *a2, const void *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"usageMode");
    if (Value)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6983880], Value);
    }
  }

  if (a1)
  {
    v9 = Mutable;
    v10 = a1;
  }

  else
  {
    v10 = *MEMORY[0x1E695E4D0];
    v9 = Mutable;
  }

  CFDictionaryAddValue(v9, *MEMORY[0x1E6984270], v10);
  if (a3)
  {
    v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(v11, *MEMORY[0x1E69837D0], a3);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6984298], v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  return Mutable;
}

void figAssetExportSession_applyFileSize(uint64_t a1, uint64_t a2, float a3)
{
  if (*(CMBaseObjectGetDerivedStorage() + 360))
  {
    SInt64 = FigCFNumberCreateSInt64();
    if (SInt64)
    {
      v4 = SInt64;
      FigRemakerGetFigBaseObject();
      v6 = v5;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(v6, @"Remaker_MaxFileSize", v4);
      }

      CFRelease(v4);
    }
  }

  else
  {
    FigCFDictionaryGetInt64IfPresent();
  }
}

BOOL figAssetExportSession_isAlternateTrack()
{
  cf = 0;
  FigAssetTrackGetCMBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(v1, @"AlternateGroupID", *MEMORY[0x1E695E480], &cf);
  }

  UInt64 = FigCFNumberGetUInt64();
  if (cf)
  {
    CFRelease(cf);
  }

  return UInt64 != 0;
}

uint64_t figAssetExportSession_handleAudioAlternateTrack(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = *MEMORY[0x1E695E4C0];
  FigAssetTrackGetCMBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, @"IsEnabled", *MEMORY[0x1E695E480], &cf);
  }

  HIDWORD(v13) = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v9)
  {
    v9(a2, &v13 + 4, 0);
  }

  if (a1 == 1)
  {
    FigCFArrayAppendInt32();
    v11 = 0;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, cf, v15);
    v11 = v10;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t FigRemakerAddAudioMixdownTrackWithPreset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t FigRemakerAddVideoCompositionTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v29)
  {
    return 4294954514;
  }

  v31 = *a11;
  v32 = *(a11 + 2);
  return v29(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0, 0, &v31, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t FigRemakerSetFormatWriterTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 40);
  if (v11)
  {

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t FigRemakerAddPassthroughTrackWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

BOOL figAssetExportSession_useConstantQualityModeForPreset(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 72))
  {
    return 0;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    return 1;
  }

  return FigCFEqual() != 0;
}

uint64_t figAssetExportSession_isConstantQualityEnabledOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

_DWORD *FAES_TrackMappingRetain(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  v4 = *(a2 + 8);
  *result = *a2;
  result[2] = v4;
  return result;
}

void FAES_TrackMappingRelease(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFStringRef FAES_TrackMappingCopyDescription(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x40uLL, "source trackID = %d, intermediate trackID = %d, mediaType = %c%c%c%c", *a1, a1[1], HIBYTE(a1[2]), BYTE2(a1[2]), BYTE1(a1[2]), a1[2]);
  v1 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(v1, __str, SystemEncoding);
}

CFDictionaryRef figAssetExportSession_CopyEffectiveColorProperties(uint64_t a1, const __CFDictionary *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(DerivedStorage + 216))
  {
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
  }

  v7 = FigExportSettings_CopyEffectiveColorPropertyForPresetAndInputOutputFormat(a2, a3, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t figAssetExportSession_constantQualityOverrideOnce(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_vbvMaxRatePercentChangeOnce(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  if ((result - 100) >= 0xFFFFFF39)
  {
    *a1 = result;
  }

  return result;
}

uint64_t figAssetExportSession_CRFModeEnabledOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault();
  *a1 = result;
  return result;
}

uint64_t figAssetExportSession_lookAheadOverrideOnce(_DWORD *a1)
{
  result = FigGetCFPreferenceNumberWithDefault();
  *a1 = result;
  return result;
}

void *FAES_SegmentRetain(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = malloc_type_malloc(0x38uLL, 0x100004021716A34uLL);
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  result[6] = *(a2 + 6);
  *(result + 1) = v5;
  *(result + 2) = v4;
  *result = v6;
  return result;
}

void FAES_SegmentRelease(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFStringRef FAES_SegmentCopyDescription(CMTime *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  if (a1->epoch)
  {
    time = *a1;
    CMTimeGetSeconds(&time);
    time = a1[1];
    CMTimeGetSeconds(&time);
    snprintf(__str, 0x80uLL, "pts=%1.3f (%lld), dur=%1.3f, #f=%ld");
  }

  else
  {
    time = *a1;
    CMTimeGetSeconds(&time);
    time = a1[1];
    CMTimeGetSeconds(&time);
    snprintf(__str, 0x80uLL, "pts=%1.3f, dur=%1.3f, #f=%ld");
  }

  v2 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(v2, __str, SystemEncoding);
}

char *FAES_RemakerConfigRetain(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x38uLL, 0x106004012191893uLL);
  v4 = *a2;
  if (*a2)
  {
    v4 = CFRetain(v4);
  }

  *v3 = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = CFRetain(v5);
  }

  *(v3 + 1) = v5;
  *(v3 + 12) = *(a2 + 48);
  v6 = *(a2 + 16);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  *(v3 + 2) = v6;
  v7 = *(a2 + 24);
  *(v3 + 5) = *(a2 + 40);
  *(v3 + 24) = v7;
  return v3;
}

CFStringRef FAES_RemakerConfigCopyDescription(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
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
  *__str = 0u;
  v10 = 0u;
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  if (v4)
  {
    Count = CFArrayGetCount(*(a1 + 16));
  }

  else
  {
    Count = 0;
  }

  snprintf(__str, 0x100uLL, "remaker = %p, URL = %p, status = %d, trackArray = %p, trackArrayCnt = %ld", v1, v2, v3, v4, Count);
  v6 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();
  return CFStringCreateWithCString(v6, __str, SystemEncoding);
}

CFArrayRef figAssetExportSession_CreateTemporalMetadataPresetDenyListOnce(CFArrayRef *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_1E7497DA8;
  v3[1] = *&off_1E7497DB8;
  v3[2] = xmmword_1E7497DC8;
  v3[3] = *off_1E7497DD8;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 8, MEMORY[0x1E695E9C0]);
  *a1 = result;
  return result;
}

uint64_t RegisterFigAssetExportSessionClassOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

double figAssetExportSessionVideoCompositionInit(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
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

void figAssetExportSessionVideoCompositionFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[15];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[23];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[24];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[25];
  if (v14)
  {

    CFRelease(v14);
  }
}

void FigAssetExportSessionTaskExecuteAndComplete(uint64_t a1)
{
  cf = 0;
  v2 = FigAtomicCompareAndSwap32();
  if (v2)
  {
    (*(a1 + 32))(*(a1 + 48), &cf);
    (*(a1 + 40))(*(a1 + 48), cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigAssetExportSessionTaskExecuteAndComplete_cold_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, cf, SHIDWORD(cf), v12);
  }
}

double FigAssetExportSessionTaskCompleteWithError(uint64_t a1, uint64_t a2)
{
  v4 = FigAtomicCompareAndSwap32();
  if (!v4)
  {
    return FigAssetExportSessionTaskCompleteWithError_cold_1(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, SHIDWORD(v16), vars0);
  }

  v13 = *(a1 + 40);
  v12 = *(a1 + 48);

  v13(v12, a2);
  return result;
}

const __CFDictionary *FigAssetExportSession_actualSettingForPreset(uint64_t a1, uint64_t a2, _OWORD *a3, CGSize *a4, __CFString *a5, uint64_t a6)
{
  if (FigCFEqual() || FigCFEqual())
  {
    v40 = figAssetExportSession_CopySourceVideoTrack(a1, a2);
    if (figAssetExportSession_trackContainsStereoVideo(v40))
    {
      a5 = @"AVAssetExportPresetHighestQuality";
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  v12 = FigExportSettingsForExportPreset(a5);
  v13 = v12;
  if (v12)
  {
    Value = CFDictionaryGetValue(v12, @"mediaTiers");
    if (Value)
    {
      v15 = Value;
      UntransformedSourceDimension = FigAssetExportSession_getUntransformedSourceDimension(a1, a2, a4);
      v18 = v17;
      if (a6)
      {
        v19 = ((a6 - 30720) * 0.99);
      }

      else
      {
        v19 = 9.1311384e18;
      }

      memset(&v47, 0, sizeof(v47));
      figAssetExportSession_getAssetDuration(&v47);
      memset(&v46, 0, sizeof(v46));
      *&start.start.value = *MEMORY[0x1E6960CC0];
      start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
      duration = v47;
      CMTimeRangeMake(&otherRange, &start.start, &duration);
      v20 = a3[1];
      *&start.start.value = *a3;
      *&start.start.epoch = v20;
      *&start.duration.timescale = a3[2];
      CMTimeRangeGetIntersection(&v46, &start, &otherRange);
      v21 = FigCFEqual();
      Count = CFArrayGetCount(v15);
      if (Count >= 1)
      {
        v23 = Count;
        v41 = 0;
        v42 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        v27 = 0.0;
        v28 = 0.0;
        while (1)
        {
          v29 = v15;
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v24);
          v31 = CFDictionaryGetValue(ValueAtIndex, @"Video");
          v32 = CFDictionaryGetValue(ValueAtIndex, @"Audio");
          v33 = 0;
          if (v31 && !v21)
          {
            otherRange.start.value = 0;
            if (FigCFDictionaryGetInt64IfPresent())
            {
              v33 = otherRange.start.value / 8;
            }

            else
            {
              v33 = otherRange.start.value;
            }
          }

          if (FigCFEqual())
          {
            v33 = (v33 * 1.6);
          }

          if (v32)
          {
            v34 = figAssetExportSession_computeAudioTrackByteRate(v32, 0);
          }

          else
          {
            v34 = 0;
          }

          v35 = v34 + v33;
          otherRange.start = v46.duration;
          if (CMTimeGetSeconds(&otherRange.start) * (v34 + v33) > v19)
          {
            goto LABEL_35;
          }

          if (v21)
          {
            if (v35 <= v41)
            {
              v36 = v41;
            }

            else
            {
              v36 = v35;
            }

            v37 = v42;
            if (v35 > v41)
            {
              v37 = ValueAtIndex;
            }

            v41 = v36;
            v42 = v37;
            goto LABEL_35;
          }

          otherRange.start.value = 0;
          *&otherRange.start.timescale = 0;
          FigCFDictionaryGetCGFloatIfPresent();
          FigCFDictionaryGetCGFloatIfPresent();
          if (v42)
          {
            if (*&otherRange.start.value < UntransformedSourceDimension)
            {
              goto LABEL_35;
            }

            v38 = *&otherRange.start.timescale;
            if (*&otherRange.start.timescale < v18 || *&otherRange.start.value >= v27 || *&otherRange.start.timescale >= v28)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v38 = *&otherRange.start.timescale;
          }

          v28 = v38;
          v27 = *&otherRange.start.value;
          v42 = ValueAtIndex;
LABEL_35:
          if (v35 < v26)
          {
            v25 = ValueAtIndex;
            v26 = v35;
          }

          ++v24;
          v15 = v29;
          if (v23 == v24)
          {
            goto LABEL_41;
          }
        }
      }

      v25 = 0;
      v42 = 0;
LABEL_41:
      if (v42)
      {
        return v42;
      }

      else
      {
        return v25;
      }
    }
  }

  return v13;
}

uint64_t figAssetExportSession_trackContainsStereoVideo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  theArray = 0;
  FigAssetTrackGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    goto LABEL_8;
  }

  v3(v2, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v6);
      if (FigVideoFormatDescriptionContainsStereoMultiviewVideo())
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    v7 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v7;
}

__n128 figAssetExportSession_getAssetDuration@<Q0>(CMTime *a1@<X8>)
{
  dictionaryRepresentation = 0;
  v2 = MEMORY[0x1E6960CC0];
  v10 = *MEMORY[0x1E6960CC0];
  *&a1->value = *MEMORY[0x1E6960CC0];
  v3 = *(v2 + 16);
  a1->epoch = v3;
  FigAssetGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v8 = v6(v5, @"Duration", *MEMORY[0x1E695E480], &dictionaryRepresentation);
    v9 = dictionaryRepresentation;
    if (!v8)
    {
      if (!dictionaryRepresentation)
      {
        result = v10;
        *&a1->value = v10;
        a1->epoch = v3;
        return result;
      }

      CMTimeMakeFromDictionary(a1, dictionaryRepresentation);
      v9 = dictionaryRepresentation;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }

  return result;
}

uint64_t figAssetExportSession_computeVideoTrackByteRate(uint64_t a1, int a2)
{
  if (a2)
  {
    FigCFDictionaryGetInt64IfPresent();
  }

  if (FigCFDictionaryGetInt64IfPresent())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

dispatch_queue_t figAssetExportSession_CreateAsynchronousConcurrentDispatchQueueOnce(dispatch_queue_t *a1)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FigKTraceInit();
  result = dispatch_queue_create("com.apple.MediaToolbox.FigAssetExportSession.Concurrent", MEMORY[0x1E69E96A8]);
  *a1 = result;
  return result;
}

uint64_t figAssetExportSessionTask_RegisterOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigAssetExportSessionTaskID = result;
  return result;
}

double figAssetExportSessionTask_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figAssetExportSessionTask_Finalize(void *a1)
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

  v4 = a1[6];

  free(v4);
}

void figAssetExportSession_runTaskAfterLoadingRequiredAssetPropertiesDispatched(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v10 = 0;
  v3 = *(DerivedStorage + 16);
  v4 = a1[3];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    v6 = -12782;
    goto LABEL_8;
  }

  v6 = v5(v3, v4, &v11, &v10);
  if (v6)
  {
LABEL_8:
    CFError = figAssetExportSession_createCFError(v6, "Failed to FigAssetLoadValuesAsyncForProperties.");
    FigAssetExportSessionTaskCompleteWithError(a1, CFError);
    if (!CFError)
    {
      goto LABEL_11;
    }

    v8 = CFError;
    goto LABEL_10;
  }

  if (!v11)
  {
    SInt32 = FigCFNumberCreateSInt32();
    CFDictionarySetValue(*(DerivedStorage + 400), SInt32, a1);
    if (!SInt32)
    {
      goto LABEL_11;
    }

    v8 = SInt32;
LABEL_10:
    CFRelease(v8);
    goto LABEL_11;
  }

  FigAssetExportSessionTaskExecuteAndComplete(a1);
LABEL_11:
  CFRelease(a1);
}

CFTypeRef figAssetExportSession_copySourceTransferFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (a3)
  {
    v3 = *(a3 + 128);
    if (v3)
    {
      v4 = CFRetain(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = 0;
    goto LABEL_6;
  }

  v7 = figAssetExportSession_CopySourceVideoTrack(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v5 = v7;
  FigAssetTrackGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10 || v10(v9, @"FormatDescriptionArray", *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_19;
  }

  if (!cf)
  {
    v4 = 0;
LABEL_9:
    CFRelease(v5);
    return v4;
  }

  if (CFArrayGetCount(cf) < 1)
  {
    goto LABEL_19;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
  Extension = CMFormatDescriptionGetExtension(ValueAtIndex, *MEMORY[0x1E6965F30]);
  v4 = Extension;
  if (!Extension)
  {
    goto LABEL_6;
  }

  v13 = CFGetTypeID(Extension);
  if (v13 == CFStringGetTypeID())
  {
    CFRetain(v4);
  }

  else
  {
LABEL_19:
    v4 = 0;
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    goto LABEL_9;
  }

  return v4;
}

uint64_t figAssetExportSession_isHEVCHDRPreset(uint64_t a1)
{
  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  if (FigCFEqual())
  {
    return 1;
  }

  result = FigCFEqual();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t figAssetExportSession_computeAudioByteRate(uint64_t a1, CFDictionaryRef theDict, int a3, char a4)
{
  cf = 0;
  Value = CFDictionaryGetValue(theDict, @"audioPreset");
  v38 = 0;
  if (FigCFEqual())
  {
    v9 = 0;
LABEL_3:
    Mutable = 0;
    goto LABEL_4;
  }

  v9 = figAssetExportSession_computeAudioTrackByteRate(theDict, 0);
  if (!a3 && theDict && Value)
  {
    v12 = figAssetExportSession_isAudioMixdownRequired(Value, &cf);
    if (cf)
    {
      CFErrorGetCode(cf);
      goto LABEL_31;
    }

    if (!v12)
    {
      theArray = 0;
      v13 = *MEMORY[0x1E695E4C0];
      v40 = *MEMORY[0x1E695E4C0];
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v14 || v14(a1, 1936684398, &theArray))
      {
        goto LABEL_25;
      }

      if (!theArray)
      {
        v18 = 0;
LABEL_29:
        v9 *= v18;
        goto LABEL_30;
      }

      Count = CFArrayGetCount(theArray);
      if (Count < 1)
      {
LABEL_25:
        v18 = 0;
      }

      else
      {
        v16 = Count;
        v17 = 0;
        v18 = 0;
        v19 = *MEMORY[0x1E695E480];
        v20 = *MEMORY[0x1E695E4D0];
        do
        {
          CFArrayGetValueAtIndex(theArray, v17);
          v40 = v13;
          FigAssetTrackGetCMBaseObject();
          v22 = v21;
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v23 || v23(v22, @"IsEnabled", v19, &v40))
          {
            break;
          }

          if (v40 == v20)
          {
            ++v18;
          }

          ++v17;
        }

        while (v16 != v17);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  if ((a4 & 1) == 0)
  {
LABEL_31:
    Mutable = 0;
    goto LABEL_32;
  }

  v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v24)
  {
    goto LABEL_3;
  }

  v24(a1, 1936684398, &v38);
  if (!v38)
  {
    goto LABEL_3;
  }

  v25 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v26 = CFArrayGetCount(v38);
  if (v26 >= 1)
  {
    v27 = v26;
    v28 = 0;
    v29 = *MEMORY[0x1E695E4C0];
    do
    {
      CFArrayGetValueAtIndex(v38, v28);
      theArray = v29;
      FigAssetTrackGetCMBaseObject();
      v31 = v30;
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v32(v31, @"IsEnabled", v25, &theArray);
      }

      if (figAssetExportSession_isAlternateTrack() && theArray == v29)
      {
        v40 = 0;
        FigAssetTrackGetCMBaseObject();
        v35 = v34;
        v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v36)
        {
          v36(v35, @"EstimatedDataRate", v25, &v40);
        }

        SInt64 = FigCFNumberGetSInt64();
        if (v40)
        {
          CFRelease(v40);
        }

        v9 += SInt64;
      }

      ++v28;
    }

    while (v27 != v28);
  }

LABEL_32:
  if (v38)
  {
    CFRelease(v38);
  }

LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

void figAssetExportSession_FilterSPIPresets(void *value, CFSetRef *a2)
{
  if (!CFSetContainsValue(*a2, value) && !CFSetContainsValue(a2[1], value))
  {
    CFArrayAppendValue(a2[2], value);
    v4 = *a2;

    CFSetAddValue(v4, value);
  }
}

void *figAssetExportSessionProperty_AudioMix_CFDictionaryRetainCallBack(uint64_t a1, void *a2)
{
  if (FigAtomicIncrement32() == 1)
  {
    v3 = a2[1];
    if (v3)
    {
      CFRetain(v3);
    }

    v4 = a2[2];
    if (v4)
    {
      CFRetain(v4);
    }

    v5 = a2[3];
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return a2;
}

void figAssetExportSessionProperty_AudioMix_CFDictionaryReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  if (!FigAtomicDecrement32())
  {
    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[3];
    if (v6)
    {
      CFRelease(v6);
    }

    CFAllocatorDeallocate(a1, a2);
  }
}

void OUTLINED_FUNCTION_5_136()
{
  STACK[0x250] = *(v2 - 200);
  LODWORD(STACK[0x258]) = *(v2 - 192);
  LODWORD(STACK[0x25C]) = v1;
  STACK[0x260] = v0;
}

void OUTLINED_FUNCTION_6_122()
{
  STACK[0x210] = *(v2 - 112);
  LODWORD(STACK[0x218]) = *(v2 - 104);
  LODWORD(STACK[0x21C]) = v0;
  STACK[0x220] = v1;
}

void OUTLINED_FUNCTION_9_83()
{
  STACK[0x250] = *(v4 - 112);
  v6 = *(v4 - 104);
  *&STACK[0x268] = *&STACK[0x230];
  STACK[0x278] = STACK[0x240];
  LODWORD(STACK[0x258]) = v6;
  LODWORD(STACK[0x25C]) = v0;
  STACK[0x260] = v2;
  STACK[0x280] = v3;

  CFArrayAppendValue(v1, &STACK[0x250]);
}

__n128 OUTLINED_FUNCTION_11_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a65;
  *(v66 - 208) = a65;
  *(v66 - 192) = a66;
  return result;
}

void OUTLINED_FUNCTION_14_69()
{
  STACK[0x250] = *(v2 - 128);
  LODWORD(STACK[0x258]) = *(v2 - 120);
  LODWORD(STACK[0x25C]) = v0;
  STACK[0x260] = v1;
}

void OUTLINED_FUNCTION_15_59(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  CFArraySortValues(v2, v4, v1, 0);
}

uint64_t OUTLINED_FUNCTION_27_33()
{
  *&STACK[0x210] = *&STACK[0x250];
  STACK[0x220] = STACK[0x260];

  return CMTimeCompare(&STACK[0x210], &STACK[0x230]);
}

CMTime *OUTLINED_FUNCTION_32_28@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeAdd((v1 - 192), (v1 - 224), (v1 - 256));
}

void OUTLINED_FUNCTION_33_31(dispatch_once_t *a1)
{

  dispatch_once_f(a1, a1 + 1, figAssetExportSession_CreateUTTypesForDefaultPassthroughPresetOnce);
}

void OUTLINED_FUNCTION_34_30(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 1, a2, figAssetExportSession_CreateAudioOnlyPresetsOnce);
}

void OUTLINED_FUNCTION_35_26(NSObject *a1)
{

  dispatch_sync_f(a1, 0, figAssetExportSession_EmptyWait);
}

__n128 OUTLINED_FUNCTION_37_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a29, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __n128 a30, uint64_t a31)
{
  result = a30;
  *(v31 - 192) = a30;
  *(v31 - 176) = a31;
  return result;
}

__n128 OUTLINED_FUNCTION_39_25()
{
  result = *&STACK[0x250];
  *(v0 - 160) = *&STACK[0x250];
  *(v0 - 144) = STACK[0x260];
  return result;
}

__n128 OUTLINED_FUNCTION_40_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28, uint64_t a29)
{
  result = a28;
  v29[6] = a28;
  *(v30 - 176) = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_42_27()
{
  result = *(v0 - 192);
  *(v0 - 224) = result;
  *(v0 - 208) = *(v0 - 176);
  return result;
}

CMTime *OUTLINED_FUNCTION_43_24@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 1, 1000000000);
}

CMTimeRange *OUTLINED_FUNCTION_44_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CMTimeRange *a14)
{
  a9 = *v14;
  a10 = *(v14 + 16);
  *(v16 - 112) = *v15;
  *(v16 - 96) = *(v15 + 16);

  return CMTimeRangeMake(&a14, &a9, (v16 - 112));
}

CMTime *OUTLINED_FUNCTION_45_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *&STACK[0x210] = *(v65 - 160);
  STACK[0x220] = *(v65 - 144);
  rhs = *&STACK[0x230];
  STACK[0x200] = STACK[0x240];

  return CMTimeAdd(&STACK[0x250], &STACK[0x210], &rhs);
}

void OUTLINED_FUNCTION_51_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v56 = *(a54 + 16);
  v57 = STACK[0x2FC];
  *(v54 - 208) = STACK[0x2F0];
  *(v54 - 204) = v57;
  *(v54 - 200) = 1936684398;

  CFArrayAppendValue(v56, (v54 - 208));
}

CMTime *OUTLINED_FUNCTION_52_21@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t rhs, int rhs_8, int rhs_12, uint64_t rhs_16)
{
  rhs = a1;
  rhs_8 = *(v63 - 104);
  rhs_12 = v61;
  rhs_16 = v62;

  return CMTimeSubtract((v63 - 224), &STACK[0x250], &rhs);
}

uint64_t OUTLINED_FUNCTION_53_20()
{
  *(v0 - 240) = *(v0 - 176);

  return CMTimeCompare((v0 - 256), (v0 - 224));
}

void OUTLINED_FUNCTION_55_22(uint64_t a1, uint64_t a2)
{
  v4 = LODWORD(STACK[0x2F4]);

  figAssetExportSession_transferTrackProperties(v2, a2, v4);
}

void OUTLINED_FUNCTION_58_14()
{
  STACK[0x258] = 0;
  STACK[0x250] = 0;
  STACK[0x260] = 0;
}

void OUTLINED_FUNCTION_61_18()
{
  STACK[0x238] = 0;
  STACK[0x230] = 0;
  STACK[0x240] = 0;
}

void OUTLINED_FUNCTION_64_14(uint64_t a1, dispatch_once_t *a2)
{

  dispatch_once_f(a2 + 1, a2, v2);
}

__n128 OUTLINED_FUNCTION_65_16()
{
  result = *(v0 + 72);
  *&STACK[0x268] = result;
  STACK[0x278] = *(v0 + 88);
  return result;
}

__n128 OUTLINED_FUNCTION_67_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31)
{
  *(v31 + 96) = a30;
  *(v32 - 176) = a31;
  return a27;
}

void OUTLINED_FUNCTION_69_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v25 - 192) = 0;
  *(v25 - 184) = 0;
  *(v25 - 176) = 0;
  *(v25 - 256) = a25;
}

uint64_t OUTLINED_FUNCTION_80_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{

  return FigAssetExportSessionCopyProperty(a58, a2, v58, a4);
}

void OUTLINED_FUNCTION_81_7(void *key, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CFMutableDictionaryRef theDict)
{
  v20 = *(*(v18 + 128) + 8);

  CFDictionarySetValue(theDict, key, v20);
}

void OUTLINED_FUNCTION_82_8(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(a25 + 104) = v25;

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_84_8()
{

  return CMBaseObjectGetVTable();
}

CMTimeMapping *OUTLINED_FUNCTION_85_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTimeRange *target, CMTimeRange *source, CMTimeMapping *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t targeta, uint64_t target_8, uint64_t target_16, uint64_t target_24, uint64_t target_32, uint64_t target_40, uint64_t sourcea, uint64_t source_8, uint64_t source_16, uint64_t source_24, uint64_t source_32, uint64_t source_40, uint64_t a53)
{

  return CMTimeMappingMake(&a53, &sourcea, &targeta);
}

CMTimeRange *OUTLINED_FUNCTION_86_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CMTime *duration, uint64_t a34, uint64_t a35, uint64_t a36, CMTimeRange *a37, CMTime *start, uint64_t a39, uint64_t a40, uint64_t durationa, uint64_t duration_8, uint64_t duration_16, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t starta)
{

  return CMTimeRangeMake(&a47, &starta, &durationa);
}

CMTime *OUTLINED_FUNCTION_87_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return CMTimeSubtract(&STACK[0x230], &STACK[0x210], &rhs);
}

void OUTLINED_FUNCTION_93_6(uint64_t a1@<X8>)
{
  *(v3 + 40) = v2;
  *(v4 - 176) = v1;
  *(v4 - 144) = a1;
}

__n128 OUTLINED_FUNCTION_94_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a63, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  result = a64;
  *(v65 - 240) = a64;
  *(v65 - 224) = a65;
  return result;
}

__n128 OUTLINED_FUNCTION_96_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a41, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, __n128 a42, uint64_t a43)
{
  result = a42;
  *(v43 - 224) = a42;
  *(v43 - 208) = a43;
  return result;
}

__n128 OUTLINED_FUNCTION_97_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  result = a65;
  *&STACK[0x250] = a65;
  STACK[0x260] = STACK[0x200];
  return result;
}

void OUTLINED_FUNCTION_104_5()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

__n128 OUTLINED_FUNCTION_110_2@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *&STACK[0x230] = *a1;
  STACK[0x240] = a1[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_112_2()
{
  result = *&STACK[0x230];
  *&STACK[0x210] = *&STACK[0x230];
  STACK[0x220] = STACK[0x240];
  return result;
}

__n128 OUTLINED_FUNCTION_113_4()
{
  result = *&STACK[0x230];
  *&STACK[0x250] = *&STACK[0x230];
  STACK[0x260] = STACK[0x240];
  return result;
}

__n128 OUTLINED_FUNCTION_115_4()
{
  v2 = *(v0 + 256);
  *(v1 - 208) = *(v0 + 240);
  *(v1 - 192) = v2;
  result = *(v0 + 272);
  *(v1 - 176) = result;
  return result;
}

void *OUTLINED_FUNCTION_116_3(size_t a1)
{

  return malloc_type_malloc(a1, 0xC0040D1025EB5uLL);
}

uint64_t OUTLINED_FUNCTION_117_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *(v53 - 240) = 0;

  return FigCFDictionaryGetBooleanIfPresent();
}

void *OUTLINED_FUNCTION_118_2(size_t a1)
{

  return malloc_type_malloc(a1, 0x6004015ECFF41uLL);
}

void *OUTLINED_FUNCTION_119_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__dst, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char __src)
{

  return memcpy(__dst, &__src, 0x60uLL);
}

void OUTLINED_FUNCTION_120_3(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = LODWORD(STACK[0x2F0]);

  figAssetExportSession_transferTrackProperties(v1, v3, v4);
}

uint64_t FigCPEOctaviaReleaseRemoteCryptor(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return NeroTransportSendAsyncMessage();
  }

  return result;
}

uint64_t FigOctaviaCPECryptorCreate(const void *a1, const void *a2, void *a3, const void *a4, uint64_t a5, const void *a6, CFTypeRef *a7)
{
  NeroCryptor = 4294955146;
  if (a6 && a1 && a2 && a3 && a7)
  {
    MEMORY[0x19A8D3660](&FigOctaviaCPECryptorGetClassID_sRegisterFigOctaviaCPECryptorTypeOnce, RegisterFigOctaviaCPECryptorType);
    v14 = CMDerivedObjectCreate();
    if (v14)
    {
      return v14;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 4294955145;
    }

    v16 = DerivedStorage;
    v17 = FigSimpleMutexCreate();
    v16[7] = v17;
    if (!v17)
    {
      return 4294955145;
    }

    *v16 = CFRetain(a1);
    v16[3] = CFRetain(a2);
    v18 = CFRetain(a6);
    v16[8] = v18;
    v14 = FigCPEOctaviaExternalProtectionMonitorCreate(*MEMORY[0x1E695E480], a3, 0, v18, v16 + 5);
    if (v14)
    {
      return v14;
    }

    else
    {
      FigCPEExternalProtectionMonitorBeginMonitoring(v16[5]);
      NeroCryptor = FigCPEOctaviaCreateNeroCryptor(0, v16[5], a4, v16[8], v16 + 1, v16 + 2);
      if (!NeroCryptor)
      {
        *a7 = 0;
      }
    }
  }

  return NeroCryptor;
}

uint64_t FigOctaviaCPECryptorInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 48) = 1;
  v2 = *(DerivedStorage + 40);
  if (v2)
  {
    FigCPEExternalProtectionMonitorEndMonitoring(v2);
    v3 = *(DerivedStorage + 40);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 40) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (*(DerivedStorage + 8))
  {
    NeroTransportSendAsyncMessage();
    v5 = *(DerivedStorage + 64);
  }

  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = 0;
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 64) = 0;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigOctaviaCPECryptorFinalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 56))
  {
    v3 = result;
    FigOctaviaCPECryptorInvalidate(a1);
    result = FigSimpleMutexDestroy();
    *(v3 + 56) = 0;
  }

  return result;
}

__CFString *FigOctaviaCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    CFStringAppendFormat(Mutable, 0, @"<FigOctaviaCPECryptor: protectorParent<%@> >", *DerivedStorage);
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t RegisterFigOctaviaCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t OUTLINED_FUNCTION_1_194(uint64_t a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigDataChannelGroupGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigDataChannelGroupGetTypeID_sRegisterDataChannelGroupTypeOnce != -1)
  {
    FigDataChannelGroupGetTypeID_cold_1();
  }

  return FigDataChannelGroupGetTypeID_sDataChannelGroupTypeID;
}

uint64_t __FigDataChannelGroupGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigDataChannelGroupGetTypeID_sDataChannelGroupTypeID = result;
  return result;
}

void dataChannelGroup_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *dataChannelGroup_copyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigChannelDataGroup %p>: %@", a1, a1[2]);
  return Mutable;
}

uint64_t FigDataChannelGroupCreate(const __CFAllocator *a1, uint64_t *a2)
{
  if (a2)
  {

    return dataChannelGroup_createDataChannelGroup(a1, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigDataChannelGroupCreate_cold_1(&v5);
    return v5;
  }
}

uint64_t dataChannelGroup_createDataChannelGroup(const __CFAllocator *a1, uint64_t *a2)
{
  if (FigDataChannelGroupGetTypeID_sRegisterDataChannelGroupTypeOnce != -1)
  {
    FigDataChannelGroupGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v5 = Instance;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v5[2] = Mutable;
    if (Mutable)
    {
      result = 0;
      *a2 = v5;
    }

    else
    {
      dataChannelGroup_createDataChannelGroup_cold_2(v5, &v8);
      return v8;
    }
  }

  else
  {
    dataChannelGroup_createDataChannelGroup_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t FigDataChannelGroupCreateFromDataChannelList(const __CFAllocator *a1, CFArrayRef theArray, void *a3)
{
  cf = 0;
  if (!a3)
  {
    FigDataChannelGroupCreateFromDataChannelList_cold_2(&v12);
    return v12;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
    FigDataChannelGroupCreateFromDataChannelList_cold_1(&v12);
    return v12;
  }

  DataChannelGroup = dataChannelGroup_createDataChannelGroup(a1, &cf);
  v7 = cf;
  if (DataChannelGroup)
  {
    v9 = DataChannelGroup;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v8 = *(cf + 2);
    v13.length = CFArrayGetCount(theArray);
    v13.location = 0;
    CFArrayAppendArray(v8, theArray, v13);
    v9 = 0;
    *a3 = v7;
  }

  return v9;
}

uint64_t FigDataChannelGroupCreateForUseCase(const __CFAllocator *a1, int a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a3)
  {
    FigDataChannelGroupCreateForUseCase_cold_1(&v68);
    v9 = v68;
LABEL_13:
    v6 = cf;
    if (!cf)
    {
      return v9;
    }

    goto LABEL_56;
  }

  LODWORD(v4) = a2;
  DataChannelGroup = dataChannelGroup_createDataChannelGroup(a1, &cf);
  if (DataChannelGroup)
  {
LABEL_8:
    v9 = DataChannelGroup;
    goto LABEL_13;
  }

  if (!v4)
  {
    v68 = xmmword_196E7BF00;
    v6 = cf;
    v12 = cf;
    v13 = 1;
    goto LABEL_54;
  }

  if (v4 <= 4)
  {
    v6 = cf;
    v4 = v4;
    v7 = MEMORY[0x1E6963150];
    while (v4)
    {
      v68 = *v7;
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v8;
      DataChannelGroup = FigDataChannelGroupAddDataChannelWithFigTags(v6, &v68, 2);
      --v4;
      if (DataChannelGroup)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_60;
  }

  if (v4 <= 0xC)
  {
    v67[0] = xmmword_196E7BF00;
    v6 = cf;
    v14 = FigDataChannelGroupAddDataChannelWithFigTags(cf, v67, 1);
    if (v14)
    {
      goto LABEL_55;
    }

    if (v4 <= 0xB && (((1 << v4) & 0x220) != 0 || ((1 << v4) & 0x440) != 0 || ((1 << v4) & 0x880) != 0))
    {
      *&v68 = FigTagMakeWithOSTypeValue();
      *(&v68 + 1) = v63;
    }

    else
    {
      if ((v4 & 0xB) != 8)
      {
LABEL_60:
        v9 = 0;
        *a3 = v6;
        return v9;
      }

      v68 = *MEMORY[0x1E6963148];
    }

    *&v69 = FigTagMakeWithSInt64Value();
    *(&v69 + 1) = v64;
    v29 = &v68;
LABEL_59:
    DataChannelGroup = FigDataChannelGroupAddDataChannelWithFigTags(v6, v29, 2);
    if (!DataChannelGroup)
    {
      goto LABEL_60;
    }

    goto LABEL_8;
  }

  switch(v4)
  {
    case 'd':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v10;
      v11 = *MEMORY[0x1E69631A0];
      v70 = *MEMORY[0x1E6963168];
      v71 = v11;
      goto LABEL_37;
    case 'e':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v42;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v43;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v44;
LABEL_37:
      v33 = MEMORY[0x1E6963178];
      goto LABEL_38;
    case 'f':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v30;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v31;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v32;
      v33 = MEMORY[0x1E6963188];
LABEL_38:
      v72 = *v33;
      v6 = cf;
      v12 = cf;
      v13 = 5;
      break;
    case 'g':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v36;
      v37 = *MEMORY[0x1E69631A0];
      v70 = *MEMORY[0x1E6963168];
      v71 = v37;
      goto LABEL_34;
    case 'h':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v21;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v22;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v23;
LABEL_34:
      v38 = MEMORY[0x1E6963178];
      goto LABEL_42;
    case 'i':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v48;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v49;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v50;
      v38 = MEMORY[0x1E6963188];
LABEL_42:
      v51 = *v38;
      v52 = MEMORY[0x1E6963190];
      goto LABEL_53;
    case 'j':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v54;
      v55 = *MEMORY[0x1E69631A0];
      v70 = *MEMORY[0x1E6963168];
      v71 = v55;
      goto LABEL_47;
    case 'k':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v39;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v40;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v41;
LABEL_47:
      v56 = MEMORY[0x1E6963178];
      goto LABEL_52;
    case 'l':
      v68 = *MEMORY[0x1E6963150];
      *&v69 = FigTagMakeWithSInt64Value();
      *(&v69 + 1) = v59;
      *&v70 = FigTagMakeWithOSTypeValue();
      *(&v70 + 1) = v60;
      *&v71 = FigTagMakeWithFlagsValue();
      *(&v71 + 1) = v61;
      v56 = MEMORY[0x1E6963188];
LABEL_52:
      v51 = *v56;
      v52 = MEMORY[0x1E6963198];
LABEL_53:
      v62 = *v52;
      v72 = v51;
      v73 = v62;
      v6 = cf;
      v12 = cf;
      v13 = 6;
      break;
    case 'm':
      v26 = *MEMORY[0x1E6963158];
      v68 = *MEMORY[0x1E6963150];
      v69 = v26;
      v27 = *MEMORY[0x1E6963178];
      v70 = *MEMORY[0x1E69631A0];
      v71 = v27;
      v28 = *MEMORY[0x1E6963138];
      v67[0] = *MEMORY[0x1E6963148];
      v67[1] = v28;
      v6 = cf;
      DataChannelGroup = FigDataChannelGroupAddDataChannelWithFigTags(cf, &v68, 4);
      if (DataChannelGroup)
      {
        goto LABEL_8;
      }

      v29 = v67;
      goto LABEL_59;
    case 'n':
      v57 = *MEMORY[0x1E6963158];
      v68 = *MEMORY[0x1E6963150];
      v69 = v57;
      v25 = MEMORY[0x1E69631B0];
      goto LABEL_49;
    case 'o':
      v19 = *MEMORY[0x1E6963168];
      v68 = *MEMORY[0x1E6963150];
      v69 = v19;
      v20 = MEMORY[0x1E69631B0];
      goto LABEL_45;
    case 'p':
      v17 = *MEMORY[0x1E6963150];
      v18 = MEMORY[0x1E6963158];
      goto LABEL_28;
    case 'q':
      v34 = *MEMORY[0x1E6963150];
      v35 = MEMORY[0x1E6963158];
      goto LABEL_44;
    case 'r':
      v17 = *MEMORY[0x1E6963150];
      v18 = MEMORY[0x1E6963160];
LABEL_28:
      v24 = *v18;
      v68 = v17;
      v69 = v24;
      v25 = MEMORY[0x1E69631A0];
LABEL_49:
      v46 = *v25;
      v47 = MEMORY[0x1E6963170];
      goto LABEL_50;
    case 's':
      v34 = *MEMORY[0x1E6963150];
      v35 = MEMORY[0x1E6963168];
LABEL_44:
      v53 = *v35;
      v68 = v34;
      v69 = v53;
      v20 = MEMORY[0x1E69631A0];
LABEL_45:
      v46 = *v20;
      v47 = MEMORY[0x1E6963180];
      goto LABEL_50;
    case 't':
      v15 = *MEMORY[0x1E6960648];
      v68 = *MEMORY[0x1E6960640];
      v69 = v15;
      v16 = MEMORY[0x1E6960698];
      goto LABEL_40;
    case 'u':
      v45 = *MEMORY[0x1E6960648];
      v68 = *MEMORY[0x1E6960640];
      v69 = v45;
      v16 = MEMORY[0x1E6960688];
LABEL_40:
      v46 = *v16;
      v47 = MEMORY[0x1E6960680];
LABEL_50:
      v58 = *v47;
      v70 = v46;
      v71 = v58;
      v6 = cf;
      v12 = cf;
      v13 = 4;
      break;
    default:
      v9 = 4294951536;
      goto LABEL_13;
  }

LABEL_54:
  v14 = FigDataChannelGroupAddDataChannelWithFigTags(v12, &v68, v13);
  if (!v14)
  {
    goto LABEL_60;
  }

LABEL_55:
  v9 = v14;
  if (v6)
  {
LABEL_56:
    CFRelease(v6);
  }

  return v9;
}

uint64_t FigDataChannelGroupCopyDataChannelList(uint64_t a1, CFAllocatorRef allocator, CFArrayRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      Copy = CFArrayCreateCopy(allocator, *(a1 + 16));
      *a3 = Copy;
      if (Copy)
      {
        return 0;
      }

      else
      {
        FigDataChannelGroupCopyDataChannelList_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelGroupCopyDataChannelList_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelGroupCopyDataChannelList_cold_3(&v8);
    return v8;
  }
}

CFIndex FigDataChannelGroupGetCountOfDataChannels(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    FigDataChannelGroupGetCountOfDataChannels_cold_1();
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  return CFArrayGetCount(v3);
}

double FigDataChannelGroupAddDataChannel(uint64_t a1, const OpaqueCMTagCollection *value)
{
  if (a1)
  {
    if (value)
    {
      v5 = *(a1 + 16);
      if (v5 && (Count = CFArrayGetCount(v5), Count >= 1))
      {
        v7 = Count;
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
          if (CMTagCollectionContainsTagsOfCollection(ValueAtIndex, value))
          {
            break;
          }

          if (v7 == ++v8)
          {
            goto LABEL_8;
          }
        }

        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951536, "<< FigDataChannelGroup >>", 578, v2);
      }

      else
      {
LABEL_8:
        CFArrayAppendValue(*(a1 + 16), value);
      }
    }

    else
    {
      FigDataChannelGroupAddDataChannel_cold_1(&v12);
    }
  }

  else
  {
    FigDataChannelGroupAddDataChannel_cold_2(&v13);
  }

  return result;
}

const void *FigDataChannelGroupGetDataChannelByIndex(uint64_t a1, CFIndex idx)
{
  if (!a1)
  {
    FigDataChannelGroupGetDataChannelByIndex_cold_2();
    return 0;
  }

  if (idx < 0)
  {
    goto LABEL_9;
  }

  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_9:
    FigDataChannelGroupGetDataChannelByIndex_cold_1();
    return 0;
  }

  v5 = *(a1 + 16);

  return CFArrayGetValueAtIndex(v5, idx);
}

const OpaqueCMTagCollection *FigDataChannelGroupGetFirstDataChannelWithTag(uint64_t a1, uint64_t a2, CMTagValue a3)
{
  if (!a1)
  {
    FigDataChannelGroupGetFirstDataChannelWithTag_cold_1();
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v9);
    *&v12.category = a2;
    v12.value = a3;
    if (CMTagCollectionContainsTag(ValueAtIndex, v12))
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

uint64_t FigDataChannelGroupRemoveDataChannelByIndex(uint64_t a1, CFIndex idx)
{
  if (a1)
  {
    if (idx < 0)
    {
      goto LABEL_8;
    }

    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
LABEL_8:
      FigDataChannelGroupRemoveDataChannelByIndex_cold_1(&v6);
      return v6;
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(a1 + 16), idx);
      return 0;
    }
  }

  else
  {
    FigDataChannelGroupRemoveDataChannelByIndex_cold_2(&v7);
    return v7;
  }
}

uint64_t channelgroup_copyAsDictionary(uint64_t a1, CFAllocatorRef allocator, CFDictionaryRef *a3)
{
  cf = 0;
  if (a1)
  {
    if (a3)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      cf = Mutable;
      if (Mutable)
      {
        v7 = Mutable;
        v8 = *(a1 + 16);
        if (v8 && (Count = CFArrayGetCount(v8), Count >= 1))
        {
          v10 = Count;
          v11 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v11);
            v13 = MEMORY[0x19A8D3280](ValueAtIndex, allocator);
            if (!v13)
            {
              break;
            }

            v14 = v13;
            CFArrayAppendValue(v7, v13);
            CFRelease(v14);
            if (v10 == ++v11)
            {
              goto LABEL_9;
            }
          }

          channelgroup_copyAsDictionary_cold_1(&v19);
        }

        else
        {
LABEL_9:
          v15 = CFDictionaryCreate(allocator, kFigDataChannelGroupKey_ChannelList, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v15)
          {
            v16 = 0;
            *a3 = v15;
            goto LABEL_11;
          }

          channelgroup_copyAsDictionary_cold_2(&v19);
        }
      }

      else
      {
        channelgroup_copyAsDictionary_cold_3(&v19);
      }
    }

    else
    {
      channelgroup_copyAsDictionary_cold_4(&v19);
    }
  }

  else
  {
    channelgroup_copyAsDictionary_cold_5(&v19);
  }

  v16 = v19;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t FigDataChannelGroupsArrayCopyAsDictionary(const __CFArray *a1, CFAllocatorRef allocator, CFDictionaryRef *a3)
{
  values = 0;
  if (!a1)
  {
    FigDataChannelGroupsArrayCopyAsDictionary_cold_4(&value);
LABEL_18:
    v14 = value;
    goto LABEL_10;
  }

  if (!a3)
  {
    FigDataChannelGroupsArrayCopyAsDictionary_cold_3(&value);
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  values = Mutable;
  if (!Mutable)
  {
    FigDataChannelGroupsArrayCopyAsDictionary_cold_2(&value);
    goto LABEL_18;
  }

  v7 = Mutable;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_8:
    v13 = CFDictionaryCreate(allocator, &kFigDataChannelGroupKey_GroupsList, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v13)
    {
      v14 = 0;
      *a3 = v13;
      goto LABEL_10;
    }

    FigDataChannelGroupsArrayCopyAsDictionary_cold_1(&value);
    goto LABEL_18;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    v12 = channelgroup_copyAsDictionary(ValueAtIndex, allocator, &value);
    if (v12)
    {
      break;
    }

    CFArrayAppendValue(v7, value);
    CFRelease(value);
    if (v9 == ++v10)
    {
      goto LABEL_8;
    }
  }

  v14 = v12;
LABEL_10:
  if (values)
  {
    CFRelease(values);
  }

  return v14;
}

uint64_t FigDataChannelGroupsArrayCreateFromDictionary(const __CFAllocator *a1, CFDictionaryRef theDict, __CFArray **a3)
{
  if (!theDict)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_5(&value);
    return value;
  }

  if (!a3)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_4(&value);
    return value;
  }

  v5 = CFDictionaryGetValue(theDict, @"DataChannelGroupsList");
  if (!v5)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_3(&value);
    return value;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count <= 0)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_2(&value);
    return value;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigDataChannelGroupsArrayCreateFromDictionary_cold_1(&value);
    return value;
  }

  v10 = Mutable;
  v11 = 0;
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v11);
    v13 = channelgroup_createFromDictionary(a1, ValueAtIndex, &value);
    if (v13)
    {
      break;
    }

    CFArrayAppendValue(v10, value);
    CFRelease(value);
    if (v8 == ++v11)
    {
      v14 = 0;
      *a3 = v10;
      return v14;
    }
  }

  v14 = v13;
  CFRelease(v10);
  return v14;
}

uint64_t FigNetworkInterfaceReporterGetPredictedWirelessThroughput()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v0 = objc_autoreleasePoolPush();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v2 = objc_alloc_init(getWRM_iRATInterfaceClass(UpTimeNanoseconds));
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    if (v3)
    {
      v4 = dispatch_queue_create("com.apple.coremedia.wirelesscoex", 0);
      if (v4)
      {
        FigGetUpTimeNanoseconds();
        [v2 registerClient:34 queue:v4];
        FigGetUpTimeNanoseconds();
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __FigNetworkInterfaceReporterGetPredictedWirelessThroughput_block_invoke;
        v8[3] = &unk_1E74984B8;
        v8[4] = v3;
        v8[5] = &v9;
        [v2 getMLPredictedThroughput:v8 options:0];
        v5 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v3, v5);
        FigGetUpTimeNanoseconds();
        [v2 unregisterClient];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  objc_autoreleasePoolPop(v0);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_196862ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigNetworkInterfaceReporterCopyPhysicalStatistics_block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 320) + 32);
  if (v1)
  {
    CFDictionarySetValue(*(a1 + 40), @"freq", v1);
  }
}

void figNetworkMonitorInterfaceIRATEnsureService(uint64_t a1)
{
  if (qword_1ED4CBBB8 != -1)
  {
    figNetworkMonitorInterfaceIRATEnsureService_cold_1();
  }

  v2 = qword_1ED4CBBA8;
  if (qword_1ED4CBBA8)
  {
    v3 = qword_1ED4CBBB0 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    dispatch_async(v2, &__block_literal_global_111_0);
  }
}

uint64_t figNetworkinterfaceMonitorInitOnce()
{
  qword_1ED4CBBA8 = dispatch_queue_create("com.apple.coremedia.FigNetworkInterfaceMonitor", 0);
  qword_1ED4CBBC0 = dispatch_queue_create("com.apple.coremedia.FigNetworkInterfaceMonitor.setup", 0);
  qword_1ED4CBBD0 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  result = FigSimpleMutexCreate();
  qword_1ED4CBBC8 = result;
  return result;
}

Class initWRM_iRATInterface()
{
  if (WirelessCoexLibrary_sOnce != -1)
  {
    initWRM_iRATInterface_cold_1();
  }

  result = objc_getClass("WRM_iRATInterface");
  classWRM_iRATInterface = result;
  getWRM_iRATInterfaceClass = WRM_iRATInterfaceFunction;
  return result;
}

void *__WirelessCoexLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessCoex.framework/WirelessCoex", 2);
  WirelessCoexLibrary_sLib = result;
  return result;
}

const __CFNumber *figNetworkInterfaceMonitorCopyWifiFrequency(const __CFNumber *result, const __CFNumber **a2)
{
  if (result)
  {
    result = off_1ED4CBC28();
    if (result)
    {
      v4 = 0;
      CFNumberGetValue(result, kCFNumberCFIndexType, &v4);
      result = off_1ED4CBC30(v4);
      if (result == 1)
      {
        v3 = 2;
      }

      else
      {
        if (result != 2)
        {
          return result;
        }

        v3 = 5;
      }

      valuePtr = v3;
      result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      *a2 = result;
    }
  }

  return result;
}

void __figNetworkInterfaceMonitorWiFiLQMCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  Value = CFDictionaryGetValue(*(a1 + 40), @"SCALED_RSSI");
  v4 = CFDictionaryGetValue(*(a1 + 40), @"SCALED_LQM");
  v5 = CFDictionaryGetValue(*(a1 + 40), @"CCA");
  v6 = CFDictionaryGetValue(*(a1 + 40), @"NOISE");
  v7 = CFDictionaryGetValue(*(a1 + 40), @"SNR");
  if (Value)
  {
    valuePtr = 0.0;
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    v8 = valuePtr;
    *(v2 + 40) = v8;
  }

  if (v4)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
    v9 = valuePtr;
    *(v2 + 52) = v9;
  }

  if (v5)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    v10 = valuePtr;
    *(v2 + 44) = v10;
  }

  if (v6)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v6, kCFNumberDoubleType, &valuePtr);
    v11 = valuePtr;
    *(v2 + 48) = v11;
  }

  if (v7)
  {
    LODWORD(valuePtr) = 0;
    CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
    *(v2 + 56) = LODWORD(valuePtr);
  }

  CFRelease(*(a1 + 40));
}

void __figNetworkInterfaceMonitorBssidChangedCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  v3 = v5;
  if (v5)
  {
    CFRelease(v3);
    *v4 = 0;
  }

  figNetworkInterfaceMonitorCopyWifiFrequency(*(a1 + 40), v4);
  v6 = *(a1 + 40);

  CFRelease(v6);
}

void __figNetworkMonitorInterfaceIRATEnsureService_block_invoke()
{
  if ((_MergedGlobals_141 & 1) == 0)
  {
    figNetworkMonitorInterfaceIRATInit();
  }
}

void __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke()
{
  v0 = qword_1ED4CBBE0;
  if ((*qword_1ED4CBBE0)-- == 1)
  {
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CBBA8);
    *(v0 + 8) = v2;
    v3 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v4 = *(v0 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke_2;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = v0;
    dispatch_source_set_event_handler(v4, handler);
    dispatch_resume(*(v0 + 8));
  }
}

void __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1 <= 0)
  {
    if (*(v1 + 24))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __figNetworkInterfaceReleaseGlobalWifiMonitor_block_invoke_3;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v1;
      dispatch_async(qword_1ED4CBBC0, block);
      v1 = *(a1 + 32);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_release(v3);
      *(*(a1 + 32) + 8) = 0;
    }
  }
}

void fni_releasePeriodicBandwidthMonitor()
{
  v0 = qword_1ED4CBC40;
  if ((*qword_1ED4CBC40)-- == 1)
  {
    v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED4CBC48);
    v0[1] = v2;
    v3 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_set_context(v0[1], v0);
    dispatch_source_set_event_handler_f(v0[1], periodicBandwidthMonitorTimer);
    v4 = v0[1];

    dispatch_resume(v4);
  }
}

void periodicBandwidthMonitorTimer(uint64_t a1)
{
  if (*a1 <= 0)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      dispatch_suspend(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 8) = 0;
    }
  }
}

void figPeriodicBandwidthMonitorTimerCallback(uint64_t a1)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v2 = *(qword_1ED4CBC40 + 24);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v3)
  {
    block = 0;
    v16 = 0;
    v17 = 5000000000;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 9;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v3(v2, UpTimeNanoseconds, &block, v10);
    v5 = (v4 + 17738) < 2 || v4 == 0;
    if (v5 && (_MergedGlobals_141 & 1) == 0)
    {
      if (qword_1ED4CBBA8)
      {
        if (qword_1ED4CBBE0)
        {
          v6 = *&v10[0] / 1000;
          v7 = v11 / 0xF4240;
          v8 = v12 / 0xF4240;
          v9 = v12 / 0xF4240 * (*&v10[0] / 8000);
          figNetworkMonitorInterfaceIRATEnsureService(v4);
          block = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __figNetworkInterfaceReporterReportPeriodicDownloadActivity_block_invoke;
          *&v18 = &__block_descriptor_64_e5_v8__0l;
          *(&v18 + 1) = v6;
          *&v19 = v7;
          *(&v19 + 1) = v9;
          *&v20 = v8;
          dispatch_async(qword_1ED4CBBA8, &block);
        }

        else
        {
          figPeriodicBandwidthMonitorTimerCallback_cold_1();
        }
      }

      else
      {
        figPeriodicBandwidthMonitorTimerCallback_cold_2();
      }
    }
  }
}

xpc_object_t OUTLINED_FUNCTION_5_137()
{

  return xpc_dictionary_create(0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_6_123(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return figNetworkInterfaceAddToCountValue(v8, v9, a3, v7, v6, a6);
}

uint64_t OUTLINED_FUNCTION_7_106()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_8_90(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a11 = v15;
  a12 = v14;
  a13 = v17;
  a14 = v16;

  dispatch_async(a1, &a9);
}

uint64_t OUTLINED_FUNCTION_9_84()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_10_79()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_15_60(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  CFDictionarySetValue(v10, a2, value);
}

uint64_t OUTLINED_FUNCTION_16_56(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  return CFDictionaryGetValueIfPresent(v10, a2, &value);
}

CFComparisonResult OUTLINED_FUNCTION_17_50(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

uint64_t FigSessionDataParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSessionDataParserStartServer_block_invoke;
  block[3] = &unk_1E74985A0;
  block[4] = &v3;
  if (FigSessionDataParserStartServer_sFigSessionDataParserServerSetupOnce != -1)
  {
    dispatch_once(&FigSessionDataParserStartServer_sFigSessionDataParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __FigSessionDataParserStartServer_block_invoke(uint64_t a1)
{
  result = FigXPCServerStart();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFString *FigMediaCharacteristicsGetMajorIntrinsicCharacteristicForMediaType(int a1)
{
  result = 0;
  if (a1 > 1936684397)
  {
    if (a1 == 1936684398)
    {
      v3 = kFigStdAssetMediaCharacteristic_Audible;
      return *v3;
    }

    if (a1 != 1952807028)
    {
      if (a1 != 1986618469)
      {
        return result;
      }

      v3 = kFigStdAssetMediaCharacteristic_Visual;
      return *v3;
    }

LABEL_8:
    v3 = kFigStdAssetMediaCharacteristic_Legible;
    return *v3;
  }

  if (a1 == 1668047728 || a1 == 1935832172)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t FigMediaCharacteristicsCopyMediaCharacteristicsForMediaType(const __CFAllocator *a1, int a2, __CFArray **a3)
{
  if (!a3)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    if (a2 <= 1936684397)
    {
      if (a2 != 1668047728 && a2 != 1935832172)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a2 == 1986618469)
      {
        v7 = kFigStdAssetMediaCharacteristic_Visual;
        goto LABEL_13;
      }

      if (a2 != 1952807028)
      {
        if (a2 == 1936684398)
        {
          v7 = kFigStdAssetMediaCharacteristic_Audible;
LABEL_13:
          if (*v7)
          {
            CFArrayAppendValue(Mutable, *v7);
          }

          if (a2 == 1668047728 || a2 == 1952807028 || a2 == 1935832172)
          {
            CFArrayAppendValue(v6, @"public.visual");
            if (a2 == 1668047728)
            {
              CFArrayAppendValue(v6, @"public.accessibility.transcribes-spoken-dialog");
              CFArrayAppendValue(v6, @"public.accessibility.describes-music-and-sound");
            }
          }
        }

LABEL_20:
        result = 0;
        *a3 = v6;
        return result;
      }
    }

    v7 = kFigStdAssetMediaCharacteristic_Legible;
    goto LABEL_13;
  }

  FigMediaCharacteristicsCopyMediaCharacteristicsForMediaType_cold_1(&v9);
  return v9;
}

uint64_t FigMediaCharacteristicsCreateMediaCharacteristicsForMediaOption(const __CFAllocator *a1, const __CFArray *a2, const __CFDictionary *a3, __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    if (a2)
    {
      v15.length = CFArrayGetCount(a2);
      v15.location = 0;
      CFArrayAppendArray(v8, a2, v15);
    }

    Value = CFDictionaryGetValue(a3, @"MediaSelectionOptionsTaggedMediaCharacteristics");
    if (Value)
    {
      v10 = Value;
      v16.length = CFArrayGetCount(Value);
      v16.location = 0;
      CFArrayAppendArray(v8, v10, v16);
    }

    v11 = CFDictionaryGetValue(a3, @"MediaSelectionOptionsIsAuxiliaryContent");
    if (v11 && CFBooleanGetValue(v11))
    {
      v12 = kFigStdAssetMediaCharacteristic_TaggedIsAuxiliaryContent;
    }

    else
    {
      v12 = kFigStdAssetMediaCharacteristic_TaggedIsMainProgramContent;
    }

    CFArrayAppendValue(v8, *v12);
    CFDictionaryGetValue(a3, @"MediaSelectionOptionsMediaType");
    FigCFStringGetOSTypeValue();
    result = 0;
    *a4 = v8;
  }

  else
  {
    FigMediaCharacteristicsCreateMediaCharacteristicsForMediaOption_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  if (!a3)
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForTrackReader_cold_1(&v9);
    return v9;
  }

  v4 = _produceUserDataAssetTrackProperty(a2, &v8);
  v5 = v8;
  if (!v4 && v8)
  {
    v4 = _createTaggedMediaCharacteristicsFromUserData(v8, &v7);
LABEL_6:
    CFRelease(v5);
    goto LABEL_7;
  }

  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  *a3 = v7;
  return v4;
}

uint64_t _createTaggedMediaCharacteristicsFromUserData(const __CFArray *a1, __CFArray **a2)
{
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (theArray)
  {
    v15 = a2;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; v5 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"keyspace");
        if (!CFEqual(@"udta", Value) && !CFEqual(@"uiso", Value))
        {
          continue;
        }

        v9 = CFDictionaryGetValue(ValueAtIndex, @"key");
        if (!v9)
        {
          continue;
        }

        v10 = v9;
        v11 = CFGetTypeID(v9);
        if (v11 == CFStringGetTypeID())
        {
          if (CFEqual(v10, @"tagc"))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v12 = CFGetTypeID(v10);
          if (v12 != CFNumberGetTypeID() || (v18 = 0, !FigMetadataStringKeyToOSTypeKeyWithKeySpace(Value, @"tagc", &v18)) || (valuePtr = 0, CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr)) && v18 == valuePtr)
          {
LABEL_14:
            v13 = CFDictionaryGetValue(ValueAtIndex, @"value");
            if (v13)
            {
              CFArrayAppendValue(theArray, v13);
            }
          }
        }
      }
    }

    if (v15)
    {
      result = 0;
      *v15 = theArray;
    }

    else
    {
      CFRelease(theArray);
      return 0;
    }
  }

  else
  {
    _createTaggedMediaCharacteristicsFromUserData_cold_1(&v19);
    return v19;
  }

  return result;
}

uint64_t FigTrackReaderGetMediaType(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, 0, a2);
}

uint64_t FigTrackReaderGetIsExcludedFromAutoSelection(uint64_t a1, BOOL *a2)
{
  cf = 0;
  FigTrackReaderGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"TrackExcludeFromAutoSelection", *MEMORY[0x1E695E480], &cf);
    v6 = cf;
    *a2 = cf == *MEMORY[0x1E695E4D0];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    *a2 = *MEMORY[0x1E695E4D0] == 0;
  }

  return 0;
}

uint64_t FigTrackReaderCopyFormatDescriptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTrackReaderGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, @"TrackFormatDescriptionArray", a2, a3);
}

uint64_t FigTrackInformationCopyUserData(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  TrackMetadataItemArray = MovieTrackGetTrackMetadataItemArray(a1, @"com.apple.quicktime.udta");
  v6 = MovieTrackGetTrackMetadataItemArray(a1, @"org.mp4ra");
  v7 = v6;
  if (TrackMetadataItemArray)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (TrackMetadataItemArray)
    {
      v6 = TrackMetadataItemArray;
    }

    else if (!v6)
    {
      v12 = 0;
      goto LABEL_12;
    }

    v12 = CFRetain(v6);
LABEL_12:
    result = 0;
    *a3 = v12;
    return result;
  }

  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v10 = MutableCopy;
    v14.length = CFArrayGetCount(v7);
    v14.location = 0;
    CFArrayAppendArray(v10, v7, v14);
    result = 0;
    *a3 = v10;
  }

  else
  {
    FigTrackInformationCopyUserData_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  if (_getAPACAudioCharacteristicToTaggedMediaCharacteristicMapping_sOnceToken != -1)
  {
    FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription_cold_1();
  }

  ArrayValue = FigCFDictionaryGetArrayValue();
  if (ArrayValue)
  {
    Count = CFArrayGetCount(ArrayValue);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      Mutable = 0;
      v9 = *MEMORY[0x1E695E480];
      v10 = MEMORY[0x1E695E9C0];
      while (1)
      {
        FigCFArrayGetValueAtIndex();
        StringValue = FigCFDictionaryGetStringValue();
        if (StringValue)
        {
          v12 = StringValue;
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v9, 0, v10);
            if (!Mutable)
            {
              FigMediaCharacteristicsCopyTaggedMediaCharacteristicsForAudioCompositionPresetDescription_cold_2(&v14);
              return v14;
            }
          }

          CFArrayAppendValue(Mutable, v12);
        }

        if (v6 == ++v7)
        {
          goto LABEL_13;
        }
      }
    }
  }

  Mutable = 0;
LABEL_13:
  result = 0;
  *a3 = Mutable;
  return result;
}

uint64_t _copyAllMetadataItems(const __CFAllocator *a1, uint64_t a2, __CFArray **a3)
{
  value = 0;
  cf = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6 || (v7 = v6(a2, 0, 0)) == 0)
  {
    Mutable = 0;
    goto LABEL_25;
  }

  v8 = v7;
  Mutable = CFArrayCreateMutable(a1, v7, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    _copyAllMetadataItems_cold_1(&v22);
    v18 = v22;
    goto LABEL_26;
  }

  if (v8 < 1)
  {
    goto LABEL_25;
  }

  for (i = 0; i != v8; ++i)
  {
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11(a2, 0, 0, i, a1, &value, &cf);
    v13 = cf;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = value == 0;
    }

    if (!v14 && cf != 0)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, cf);
      if (!MutableCopy)
      {
        break;
      }

      v17 = MutableCopy;
      CFDictionaryAddValue(MutableCopy, @"value", value);
      CFArrayAppendValue(Mutable, v17);
      CFRelease(v17);
LABEL_16:
      v13 = cf;
    }

    if (v13)
    {
      CFRelease(v13);
      cf = 0;
    }

    if (value)
    {
      CFRelease(value);
      value = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
    v18 = 0;
    cf = 0;
    goto LABEL_26;
  }

LABEL_25:
  v18 = 0;
LABEL_26:
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v18 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  *a3 = Mutable;
  return v18;
}

CFDictionaryRef _createAPACCharacteristicToTaggedMediaCharacteristicMappingOnce()
{
  keys[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6962868];
  keys[0] = *MEMORY[0x1E6962860];
  keys[1] = v0;
  v1 = *MEMORY[0x1E6962880];
  keys[2] = *MEMORY[0x1E6962888];
  keys[3] = v1;
  v2 = *MEMORY[0x1E6962890];
  keys[4] = *MEMORY[0x1E6962870];
  keys[5] = v2;
  keys[6] = *MEMORY[0x1E6962878];
  values[0] = @"public.accessibility.describes-video";
  values[1] = @"public.auxiliary-content";
  values[2] = @"public.original-content";
  values[3] = @"public.translation";
  values[4] = @"public.translation.dubbed";
  values[5] = @"public.translation.voice-over";
  values[6] = @"public.accessibility.enhances-speech-intelligibility";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sAPACAudioCharacteristicToTaggedMediaCharacteristicMapping = result;
  return result;
}

uint64_t FigClosedCaptionStringConformerNew(void *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004045F868BCuLL);
    if (v2)
    {
      v3 = v2;
      v2[2] = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
      goto LABEL_4;
    }

    FigClosedCaptionStringConformerNew_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    FigClosedCaptionStringConformerNew_cold_2(&v7);
    v4 = v7;
  }

  if (v4)
  {
    keyManager_releaseCallbackContext(0);
    return v4;
  }

  v3 = 0;
LABEL_4:
  v4 = 0;
  *a1 = v3;
  return v4;
}

const __CFArray *FigClosedCaptionStringConformerPushCommand(const __CFArray **a1, int a2, const __CFDictionary *a3, int a4, char *a5, double a6, double a7)
{
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  if (!a1)
  {
    FigClosedCaptionStringConformerPushCommand_cold_1(value);
    v15 = 0;
    v14 = LODWORD(value[0]);
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  FigCaptionLayoutGetMAXSettingsForPreferringContentAsAuthored(value);
  v81 = v68;
  v82 = v69;
  v83 = v70;
  v77 = v64;
  v78 = v65;
  v79 = v66;
  v80 = v67;
  v73 = v60;
  v74 = v61;
  v75 = v62;
  v76 = v63;
  v71 = *value;
  v72 = v59;
  if (a2 == 1)
  {
    v49 = a5;
    v17 = ccstringconformer_copyFontDescriptorAttributeForMediaAccessibilityFontStyle(*MEMORY[0x1E6965808]);
    if (!a4)
    {
      FigCaptionLayoutCopyMAXCaptionSystemSettings(&v71);
    }

    v19 = *a1;
    v18 = a1[1];
    v84 = 0;
    *value = *MEMORY[0x1E695F060];
    valuePtr[0] = 0;
    v20 = FigCaptionLayoutCopyEffectiveFontNamePlusInfoAndCreateElementGeometryArrays(v17, 1, v18, v19, 0, 0, 0, 1, 0.0, 0.0, a6, a7, &v71, 0, valuePtr, 0, 0, 0, 0, &v84, value, 0);
    CFRelease(v20);
    allocator = *MEMORY[0x1E695E480];
    theArray = v84;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v21 = 0;
        v47 = *MEMORY[0x1E6960780];
        v48 = *MEMORY[0x1E6960790];
        v22 = *MEMORY[0x1E69607A0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
          v24 = ValueAtIndex;
          if ((ValueAtIndex[18] & 0xFFFFFFFD) == 1)
          {
            v54 = v21;
            v25 = ValueAtIndex[14];
            v26 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            if (CFArrayGetCount(v25) >= 1)
            {
              v27 = 0;
              v55 = v25;
              do
              {
                v56 = v27;
                v28 = CFArrayGetValueAtIndex(v25, v27);
                v29 = CFGetTypeID(v28);
                if (v29 == CFArrayGetTypeID() && CFArrayGetCount(v28) >= 1)
                {
                  v30 = 0;
                  do
                  {
                    value[0] = 0;
                    v31 = CFArrayGetValueAtIndex(v28, v30);
                    v32 = CFGetTypeID(v31);
                    if (v32 == CFDictionaryGetTypeID())
                    {
                      v33 = CFDictionaryGetValue(v31, @"S");
                      v34 = CFGetTypeID(v33);
                      if (v34 == CFAttributedStringGetTypeID())
                      {
                        Length = CFAttributedStringGetLength(v33);
                        valuePtr[0] = 0;
                        v36 = CFDictionaryGetValue(v31, @"OffsetXKey");
                        if (v36)
                        {
                          v37 = v36;
                          v38 = CFGetTypeID(v36);
                          if (v38 == CFNumberGetTypeID())
                          {
                            CFNumberGetValue(v37, kCFNumberCGFloatType, valuePtr);
                            v39 = CTLineCreateWithAttributedString(v33);
                            FigCaptionLayoutGetLineWidthWithRange(v39, 0, Length);
                            if (v39)
                            {
                              CFRelease(v39);
                            }

                            if (ccstringConformer_getFontSizeForAnnotatedElementAttributedString(v33) > 0.0)
                            {
                              ConformedAttributedStringFromCommandDataStringAndSuggestedAlignment = ccstringconformer_c608_createConformedAttributedStringFromCommandDataStringAndSuggestedAlignment(v33, v22, a4, value);
                              v41 = value[0];
                              if (!ConformedAttributedStringFromCommandDataStringAndSuggestedAlignment)
                              {
                                CFArrayAppendValue(v26, value[0]);
                              }

                              if (v41)
                              {
                                CFRelease(v41);
                              }
                            }
                          }
                        }
                      }
                    }

                    ++v30;
                  }

                  while (v30 < CFArrayGetCount(v28));
                }

                v25 = v55;
                v27 = v56 + 1;
              }

              while (v56 + 1 < CFArrayGetCount(v55));
            }

            v86.length = CFArrayGetCount(v26);
            v86.location = 0;
            CFArrayAppendArray(Mutable, v26, v86);
            CFRelease(v26);
            v21 = v54;
          }

          else
          {
            value[0] = 0;
            JoinedStringFromElementWithSeparator = FigCaptionLayoutCreateJoinedStringFromElementWithSeparator(ValueAtIndex[14], @" ");
            v43 = FigCaptionLayoutDetectAndChooseAlignmentForCaptionElement(v24[13]);
            if (v43 == 4)
            {
              v44 = v47;
            }

            else
            {
              v44 = v48;
              if (v43 != 2)
              {
                v44 = 0;
                if (v43 == 1)
                {
                  v44 = v22;
                }
              }
            }

            if (ccstringConformer_getFontSizeForAnnotatedElementAttributedString(JoinedStringFromElementWithSeparator) > 0.0)
            {
              ccstringconformer_c608_createConformedAttributedStringFromCommandDataStringAndSuggestedAlignment(JoinedStringFromElementWithSeparator, v44, a4, value);
            }

            if (JoinedStringFromElementWithSeparator)
            {
              CFRelease(JoinedStringFromElementWithSeparator);
            }

            v45 = value[0];
            if (value[0])
            {
              CFArrayAppendValue(Mutable, value[0]);
              CFRelease(v45);
            }
          }

          ++v21;
        }

        while (v21 != Count);
      }
    }

    FigCaptionLayoutReleaseCaptionElementArray(v84);
    v46 = a1[2];
    if (v46)
    {
      CFRelease(v46);
    }

    a1[2] = Mutable;
    a5 = v49;
    if (v17)
    {
      CFRelease(v17);
    }

    v14 = 0;
    v15 = 1;
    if (v49)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a2 == 7)
  {
    v13 = CFDictionaryGetValue(a3, @"C");
    v14 = a1[1];
    a1[1] = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    CFRetain(v13);
    goto LABEL_9;
  }

  if (a2 != 6)
  {
    goto LABEL_11;
  }

  v13 = CFDictionaryGetValue(a3, @"W");
  v14 = *a1;
  *a1 = v13;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (!v14)
  {
    goto LABEL_12;
  }

  CFRelease(v14);
LABEL_11:
  v14 = 0;
LABEL_12:
  v15 = 0;
  if (a5)
  {
LABEL_13:
    *a5 = v15;
  }

LABEL_14:
  FigCaptionLayoutClearMAXCaptionSettings(&v71);
  return v14;
}

CFTypeRef ccstringconformer_copyFontDescriptorAttributeForMediaAccessibilityFontStyle(const __CFString *a1)
{
  v2 = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainDefault, 0, kMACaptionAppearanceFontStyleMonospacedWithSerif);
  v3 = CTFontDescriptorCopyAttribute(v2, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t FigNetworkPredictionArbiterCreate(const void *a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a4)
  {
    FigNetworkPredictionArbiterCreate_cold_2(v19);
    return v19[0];
  }

  FigNetworkPredictorGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = a2 ? CFRetain(a2) : 0;
  *DerivedStorage = v10;
  v8 = FigNetworkHistoryCopySharedPredictor();
  if (v8)
  {
    return v8;
  }

  FigNetworkHistoryGetGlobal();
  v8 = FigNetworkHistoryCopySharedPredictor();
  if (v8)
  {
    return v8;
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"NetworkPredictorCreateOption_StoreBag");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    *(DerivedStorage + 48) = Value;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = CMBaseObjectGetDerivedStorage();
    if (!CelestialIs1GBAudioAccessory() || !FigRCLGetNumberWithDefault(*(v12 + 48), @"disableMLOn1GBAudioAccessory", 1))
    {
      v8 = FigMLBandwidthPredictorCreate(a1, (DerivedStorage + 40));
      if (v8)
      {
        return v8;
      }

      v13 = *(DerivedStorage + 40);
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        return 4294954514;
      }

      v8 = v14(v13, *MEMORY[0x1E6962A18], a2);
      if (v8)
      {
        return v8;
      }
    }
  }

  v15 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v15;
  if (!v15)
  {
    FigNetworkPredictionArbiterCreate_cold_1(v19);
    return v19[0];
  }

  *(DerivedStorage + 64) = FigRCLGetDoubleWithDefault(*(DerivedStorage + 48), @"mlMixingWindowSize", 1.0e10);
  *(DerivedStorage + 72) = 0;
  *(DerivedStorage + 80) = 0;
  *(DerivedStorage + 84) = 0;
  *(DerivedStorage + 32) = 0;
  if (dword_1EAF17B78)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = 0;
  *a4 = 0;
  return v17;
}

void fnpa_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexDestroy();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 120);
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t fnpa_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v7 = *MEMORY[0x1E6962A18];
  if (CFEqual(a2, *MEMORY[0x1E6962A18]))
  {
    v8 = *(DerivedStorage + 8);
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v10 = v9(v8, v7, *MEMORY[0x1E695E480], a4);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else if (CFEqual(a2, @"NetworkPredictorProperty_GroupBandwidthWeight"))
  {
    v10 = 0;
    *a4 = FigCFNumberCreateFloat32();
  }

  else
  {
    v10 = 4294949566;
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fnpa_makePrediction(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v143 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!FigRCLGetNumberWithDefault(*(DerivedStorage + 48), @"useAdaptiveBayesianNetworkPrediction", 0) || (*(a3 + 21) & 0xFLL) == 1)
  {
    v9 = *(a3 + 21);
    if (*(DerivedStorage + 84))
    {
      v10 = 1;
    }

    else
    {
      v10 = (*(a3 + 21) & 0xFLL) == 2;
    }

    if (!v10)
    {
      v22 = a3[11];
      *&v128[96] = a3[10];
      *v129 = v22;
      v23 = a3[13];
      *&v129[16] = a3[12];
      v130 = v23;
      v24 = a3[7];
      *&v128[32] = a3[6];
      *&v128[48] = v24;
      v25 = a3[9];
      *&v128[64] = a3[8];
      *&v128[80] = v25;
      v26 = a3[3];
      *&v127[32] = a3[2];
      *&v127[48] = v26;
      v27 = a3[5];
      *v128 = a3[4];
      *&v128[16] = v27;
      v28 = a3[1];
      *v127 = *a3;
      *&v127[16] = v28;
      v29 = a1;
LABEL_94:
      HeuristicPrediction = fnpa_makeHeuristicPrediction(v29, a2, v127, a4);
      goto LABEL_95;
    }

    v109 = a3[8];
    v110 = a3[9];
    v111 = *(a3 + 20);
    v105 = a3[4];
    v106 = a3[5];
    v107 = a3[6];
    v108 = a3[7];
    v101 = *a3;
    v102 = a3[1];
    v103 = a3[2];
    v104 = a3[3];
    v11 = a3[12];
    v132 = a3[11];
    v133 = v11;
    v134 = a3[13];
    v126 = 0.0;
    v124 = 0u;
    v125 = 0u;
    v123 = 0u;
    memset(v122, 0, sizeof(v122));
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v118 = 0u;
    memset(v117, 0, sizeof(v117));
    v12 = CMBaseObjectGetDerivedStorage();
    if ((v9 & 0xC) == 0xC)
    {
      fnpa_makePrediction_cold_2(v127);
      HeuristicPrediction = *v127;
      goto LABEL_95;
    }

    v13 = v12;
    if ((v9 & 0xC) != 0)
    {
      *&v128[64] = v109;
      *&v128[80] = v110;
      *v128 = v105;
      *&v128[16] = v106;
      *&v128[32] = v107;
      *&v128[48] = v108;
      *v127 = v101;
      *&v127[16] = v102;
      *&v127[32] = v103;
      *&v127[48] = v104;
      *&v128[96] = v111;
      *&v128[104] = v9;
      *v129 = v132;
      *&v129[16] = v133;
      v130 = v134;
      HeuristicPrediction = fnpa_makeHeuristicPrediction(a1, a2, v127, v122);
      v15 = (HeuristicPrediction + 17736) < 0xFFFFFFFE;
      v16 = *&v122[0];
      if ((v9 & 2) == 0)
      {
LABEL_11:
        v17 = 0;
        v116 = *(v122 + 8);
        v18 = *(&v122[1] + 1);
        v19 = v123;
        v20 = 0.0;
        v21 = *(&v123 + 1);
        goto LABEL_62;
      }
    }

    else
    {
      HeuristicPrediction = 0;
      v15 = 0;
      v16 = 0.0;
      if ((v9 & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v44 = *(v13 + 40);
    if (v44)
    {
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      v20 = 0.0;
      if (v45)
      {
        *&v128[64] = v109;
        *&v128[80] = v110;
        *v128 = v105;
        *&v128[16] = v106;
        *&v128[32] = v107;
        *&v128[48] = v108;
        *v127 = v101;
        *&v127[16] = v102;
        *&v127[32] = v103;
        *&v127[48] = v104;
        *&v128[96] = v111;
        *&v128[104] = v9;
        *v129 = v132;
        *&v129[16] = v133;
        v130 = v134;
        v46 = v45(v44, a2, v127, v117);
        v20 = *&v117[0];
      }

      else
      {
        v46 = 4294954514;
      }

      v59 = v46 == 0;
      if ((v9 & 4) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v59 = 0;
      v20 = 0.0;
      v46 = 4294948281;
      if ((v9 & 4) == 0)
      {
        goto LABEL_52;
      }
    }

    if (!v15)
    {
      FigNetworkHistoryGetGlobal();
      *(v13 + 72) = FigNetworkHistoryGetFirstActiveTimestamp();
      v17 = 1;
      *(v13 + 80) = 1;
      if (v59)
      {
LABEL_57:
        v63 = 1.0;
        v62 = 0.0;
        goto LABEL_59;
      }

LABEL_58:
      v17 = 0;
      v63 = 0.0;
      v62 = 1.0;
LABEL_59:
      v116 = *(v117 + 8);
      *v127 = v119;
      *&v127[16] = v120;
      *&v127[32] = v121;
      v21 = *(&v123 + 1);
      v19 = v123;
      v18 = 0x3FECCCCCCCCCCCCDLL;
      if ((v9 & 1) == 0 || v46 != -19015)
      {
        HeuristicPrediction = v46;
LABEL_64:
        v64 = (v20 * (v63 * (1.0 / (v63 + v62))) + v62 * (1.0 / (v63 + v62)) * v16);
        *a4 = v64;
        *(a4 + 8) = v116;
        *(a4 + 24) = v18;
        *(a4 + 32) = v19;
        *(a4 + 40) = v21;
        v65 = *&v127[16];
        *(a4 + 48) = *v127;
        *(a4 + 64) = v65;
        *(a4 + 80) = *&v127[32];
        if (v17)
        {
          fnpa_makePrediction_cold_1(v13, a2, v64, HeuristicPrediction, &v131);
          HeuristicPrediction = v131;
        }

        goto LABEL_95;
      }

      v116 = *(v122 + 8);
      v18 = *(&v122[1] + 1);
LABEL_62:
      *v127 = v124;
      *&v127[16] = v125;
      *&v127[32] = v126;
      v62 = 1.0;
      v63 = 0.0;
      goto LABEL_64;
    }

LABEL_52:
    if (v15 && v59)
    {
      v60 = a2 - *(v13 + 72);
      v61 = CMBaseObjectGetDerivedStorage();
      v62 = 1.0 / (exp((v60 + *(v61 + 64) * -0.5) / -1000000000.0) + 1.0);
      v63 = 1.0 - v62;
      v17 = 1;
      goto LABEL_59;
    }

    if (v59)
    {
      v17 = 1;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v93 = a4;
  v112 = *(a3 + 8);
  v113 = *(a3 + 24);
  v114 = *(a3 + 40);
  v92 = a2;
  v30 = *(a3 + 8);
  v115 = *(a3 + 7);
  v31 = *(a3 + 120);
  v32 = *(a3 + 152);
  v140 = *(a3 + 136);
  v141 = v32;
  v142 = *(a3 + 21);
  v33 = *(a3 + 88);
  v136 = *(a3 + 72);
  v137 = v33;
  v138 = *(a3 + 104);
  v139 = v31;
  v34 = *(a3 + 176);
  v35 = *(a3 + 177);
  v98 = *(a3 + 185);
  v135[0] = *(a3 + 187);
  v36 = a1;
  v37 = *(a3 + 25);
  *(v135 + 5) = *(a3 + 24);
  v38 = *(a3 + 27);
  v95 = *(a3 + 26);
  v39 = CMBaseObjectGetDerivedStorage();
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  v119 = 0u;
  v120 = 0u;
  v118 = 0u;
  memset(v117, 0, sizeof(v117));
  *&v127[8] = v112;
  *&v127[24] = v113;
  *&v127[40] = v114;
  *&v128[56] = v139;
  *&v128[72] = v140;
  *&v128[88] = v141;
  *&v128[8] = v136;
  *&v128[24] = v137;
  v126 = 0.0;
  v121 = 0;
  *v127 = 7;
  *&v127[56] = v115;
  v100 = v30;
  *v128 = v30;
  a2 = v92;
  *&v128[104] = v142;
  *&v128[40] = v138;
  v91 = v34;
  v129[0] = v34;
  *&v129[1] = v35;
  *&v129[9] = v98;
  *&v129[16] = *(v135 + 5);
  *&v129[11] = v135[0];
  v97 = v35;
  v99 = v37;
  *&v129[24] = v37;
  *&v130 = v95;
  v96 = v38;
  *(&v130 + 1) = v38;
  v40 = fnpa_makeHeuristicPrediction(v36, v92, v127, v122) + 17736;
  v94 = v40 < 0xFFFFFFFE;
  FirstActiveTimestamp = FigNetworkHistoryGetFirstActiveTimestamp();
  v42 = *(v39 + 80);
  if (v42 == 2 || v42 == 3)
  {
    v43 = *(v39 + 72);
    *(v39 + 104) = v43;
    a4 = v93;
  }

  else
  {
    a4 = v93;
    if (v42 == 4)
    {
      v43 = *(v39 + 72);
      *(v39 + 104) = v43;
    }

    else
    {
      v43 = *(v39 + 104);
    }
  }

  if (FirstActiveTimestamp <= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = FirstActiveTimestamp;
  }

  v48 = v92 - v47;
  if (v92 - v47 < v100 && v40 <= 0xFFFFFFFD)
  {
    *&v127[8] = v112;
    *&v127[24] = v113;
    *&v127[40] = v114;
    *&v128[56] = v139;
    *&v128[72] = v140;
    *&v128[88] = v141;
    *&v128[8] = v136;
    *&v128[24] = v137;
    *v127 = 7;
    *&v127[56] = v115;
    *v128 = v100;
    *&v128[104] = v142;
    *&v128[40] = v138;
    v129[0] = v91;
    *&v129[1] = v97;
    v129[9] = 0;
    v129[10] = v40 < 0xFFFFFFFE;
    *&v129[11] = v135[0];
    *&v129[16] = *(v135 + 5);
    *&v129[24] = v37;
    *&v130 = 0;
    *(&v130 + 1) = v96;
    if (!fnpa_makeHeuristicPrediction(v36, v92, v127, v122))
    {
      v49 = 0;
      v47 = 0;
      v50 = (((((5 * v48) >> 8) & 0x7FFFFFFFFFFFFFLL) * 0x44B82FA09B5A53uLL) >> 64) >> 11;
LABEL_33:
      v51 = v50;
      goto LABEL_34;
    }

    goto LABEL_93;
  }

  if (v48 <= 0xDF84757FFLL && v40 <= 0xFFFFFFFD)
  {
    *&v127[8] = v112;
    *&v127[24] = v113;
    *&v127[40] = v114;
    *&v128[56] = v139;
    *&v128[72] = v140;
    *&v128[88] = v141;
    *&v128[8] = v136;
    *&v128[24] = v137;
    *v127 = 7;
    *&v127[56] = v115;
    *v128 = v100;
    *&v128[104] = v142;
    *&v128[40] = v138;
    v129[0] = v91;
    *&v129[1] = v97;
    v129[9] = 0;
    v129[10] = v40 < 0xFFFFFFFE;
    *&v129[11] = v135[0];
    *&v129[16] = *(v135 + 5);
    *&v129[24] = v37;
    *&v130 = v47;
    *(&v130 + 1) = v96;
    if (!fnpa_makeHeuristicPrediction(v36, v92, v127, v122))
    {
      v49 = 0;
      v50 = v48 / 0x5F5E100;
      goto LABEL_33;
    }

LABEL_93:
    v83 = a3[11];
    *&v128[96] = a3[10];
    *v129 = v83;
    v84 = a3[13];
    *&v129[16] = a3[12];
    v130 = v84;
    v85 = a3[7];
    *&v128[32] = a3[6];
    *&v128[48] = v85;
    v86 = a3[9];
    *&v128[64] = a3[8];
    *&v128[80] = v86;
    v87 = a3[3];
    *&v127[32] = a3[2];
    *&v127[48] = v87;
    v88 = a3[5];
    *v128 = a3[4];
    *&v128[16] = v88;
    v89 = a3[1];
    *v127 = *a3;
    *&v127[16] = v89;
    v29 = v36;
    goto LABEL_94;
  }

  if (v40 > 0xFFFFFFFD)
  {
    v49 = 0;
    v51 = 0.0;
  }

  else
  {
    v57 = *(v39 + 112);
    if (v57 && (v92 - v57) < 0x45D964B801)
    {
      v58 = 0;
    }

    else
    {
      *(v39 + 112) = v92;
      v58 = 1;
    }

    *&v127[8] = v112;
    *&v127[24] = v113;
    *&v127[40] = v114;
    *&v128[56] = v139;
    *&v128[72] = v140;
    *&v128[88] = v141;
    *&v128[8] = v136;
    *&v128[24] = v137;
    *v127 = 7;
    *&v127[56] = v115;
    *v128 = v100;
    *&v128[104] = v142;
    *&v128[40] = v138;
    v129[0] = v91;
    *&v129[1] = v97;
    v49 = v58;
    v129[9] = v58;
    v129[10] = v40 < 0xFFFFFFFE;
    *&v129[16] = *(v135 + 5);
    *&v129[11] = v135[0];
    *&v129[24] = v99;
    *&v130 = v47;
    *(&v130 + 1) = v96;
    if (fnpa_makeHeuristicPrediction(v36, v92, v127, v122))
    {
      goto LABEL_93;
    }

    v51 = ((((((5 * v48) >> 8) & 0x7FFFFFFFFFFFFFLL) * 0x44B82FA09B5A53uLL) >> 64) >> 11);
    v99 = v125;
  }

LABEL_34:
  v52 = *(v39 + 40);
  v53 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v53)
  {
    goto LABEL_93;
  }

  *&v127[8] = v112;
  *&v127[24] = v113;
  *&v127[40] = v114;
  *&v128[56] = v139;
  *&v128[72] = v140;
  *&v128[88] = v141;
  *&v128[8] = v136;
  *&v128[24] = v137;
  *v127 = 7;
  *&v127[56] = v115;
  *v128 = v100;
  *&v128[104] = v142;
  *&v128[40] = v138;
  v129[0] = 1;
  *&v129[1] = v97;
  v129[9] = v49;
  v129[10] = v94;
  *&v129[11] = v135[0];
  *&v129[16] = *(v135 + 5);
  *&v129[24] = v99;
  *&v130 = v47;
  *(&v130 + 1) = v96;
  if (v53(v52, v92, v127, v117))
  {
    goto LABEL_93;
  }

  v54 = *&v117[0];
  if (!*&v117[0] || *(v117 + 1) == 2.22044605e-16)
  {
    v56 = 0.0;
    v55 = v126;
  }

  else
  {
    v55 = v126;
    if (*(v117 + 1) != 1.0 || v126 == 0.0)
    {
      v56 = 1.0 / *(v117 + 1);
    }

    else
    {
      v56 = v126;
    }
  }

  v66 = *(&v125 + 1);
  v67 = ((v56 * *&v117[0] + v51 * v55 * *(&v125 + 1)) / (v56 + v51 * v55));
  *a4 = v67;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  v68 = *(v39 + 96);
  if (v68)
  {
    v69 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v69)
    {
      v69(v68, 0x1F0B64558, 0x1F0B67D18, v51);
    }

    v70 = *(v39 + 96);
    if (v70)
    {
      v71 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v71)
      {
        v71(v70, 0x1F0B64558, 0x1F0B67D38, v66);
      }

      v72 = *(v39 + 96);
      if (v72)
      {
        v73 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v73)
        {
          v73(v72, 0x1F0B64558, 0x1F0B67D58, v55);
        }

        v74 = *(v39 + 96);
        if (v74)
        {
          v75 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v75)
          {
            v75(v74, 0x1F0B64558, 0x1F0B67D78, v54);
          }

          v76 = *(v39 + 96);
          if (v76)
          {
            v77 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v77)
            {
              v77(v76, 0x1F0B64558, 0x1F0B67D98, v56);
            }

            v78 = *(v39 + 96);
            if (v78)
            {
              v79 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v79)
              {
                v79(v78, 0x1F0B64558, 0x1F0B67DB8, v67);
              }

              v80 = *(v39 + 96);
              if (v80)
              {
                v81 = v125;
                v82 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                if (v82)
                {
                  v82(v80, 0x1F0B64558, 0x1F0B67DD8, v81);
                }
              }
            }
          }
        }
      }
    }
  }

  HeuristicPrediction = 0;
LABEL_95:
  FigSimpleMutexUnlock();
  return HeuristicPrediction;
}

uint64_t fnpa_makeHeuristicPrediction(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  v9 = *(a3 + 21);
  if ((v9 & 4) != 0)
  {
    v14 = *(DerivedStorage + 16);
    v50 = a3[10];
    v53 = a3[11];
    v56 = a3[12];
    v59 = a3[13];
    v38 = a3[6];
    v41 = a3[7];
    v44 = a3[8];
    v47 = a3[9];
    v26 = a3[2];
    v29 = a3[3];
    v32 = a3[4];
    v35 = a3[5];
    v20 = *a3;
    v23 = a3[1];
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v15)
    {
      v71 = v50;
      v72 = v53;
      v73 = v56;
      v74 = v59;
      v67 = v38;
      v68 = v41;
      v69 = v44;
      v70 = v47;
      v63 = v26;
      v64 = v29;
      v65 = v32;
      v66 = v35;
      v61 = v20;
      v62 = v23;
      result = v15(v14, a2, &v61, a4);
    }

    else
    {
      result = 4294954514;
    }

    v16 = *(v8 + 32);
    if (v16 != 0.0)
    {
      *a4 = (v16 * *a4);
    }
  }

  else
  {
    v10 = CMBaseObjectGetDerivedStorage();
    if ((v9 & 0x10) != 0 && *(v10 + 24) && *(v10 + 32) != 0.0)
    {
      v11 = *(v8 + 24);
      v49 = a3[10];
      v52 = a3[11];
      v55 = a3[12];
      v58 = a3[13];
      v37 = a3[6];
      v40 = a3[7];
      v43 = a3[8];
      v46 = a3[9];
      v25 = a3[2];
      v28 = a3[3];
      v31 = a3[4];
      v34 = a3[5];
      v19 = *a3;
      v22 = a3[1];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v12)
      {
        v71 = v49;
        v72 = v52;
        v73 = v55;
        v74 = v58;
        v67 = v37;
        v68 = v40;
        v69 = v43;
        v70 = v46;
        v63 = v25;
        v64 = v28;
        v65 = v31;
        v66 = v34;
        v61 = v19;
        v62 = v22;
        result = v12(v11, a2, &v61, a4);
        *a4 = (*(v8 + 32) * *a4);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        *a4 = (*(v8 + 32) * *a4);
      }
    }

    v17 = *(v8 + 8);
    v51 = a3[10];
    v54 = a3[11];
    v57 = a3[12];
    v60 = a3[13];
    v39 = a3[6];
    v42 = a3[7];
    v45 = a3[8];
    v48 = a3[9];
    v27 = a3[2];
    v30 = a3[3];
    v33 = a3[4];
    v36 = a3[5];
    v21 = *a3;
    v24 = a3[1];
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v18)
    {
      v71 = v51;
      v72 = v54;
      v73 = v57;
      v74 = v60;
      v67 = v39;
      v68 = v42;
      v69 = v45;
      v70 = v48;
      v63 = v27;
      v64 = v30;
      v65 = v33;
      v66 = v36;
      v61 = v21;
      v62 = v24;
      return v18(v17, a2, &v61, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t figCSSTokenRegisterFigCSSToken()
{
  result = _CFRuntimeRegisterClass();
  sFigCSSTokenID = result;
  return result;
}

uint64_t FigCSSTokenGetTokenType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = *(a1 + 16);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigCSSTokenGetTokenType_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigCSSTokenCopyAttributes(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
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
    FigCSSTokenCopyAttributes_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigCSSBaseTokenCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v5 = a2;
    MEMORY[0x19A8D3660](&FigCSSTokenGetTypeID_sRegisterFigCSSTokenOnce, figCSSTokenRegisterFigCSSToken);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      *(Instance + 16) = v5;
      *(Instance + 32) = FigCFDictionaryCreateMutableCopy();
      v8 = FigCSSTokenMapTokenTypeToName(v5);
      if (v8)
      {
        v9 = CFRetain(v8);
      }

      else
      {
        v9 = 0;
      }

      result = 0;
      *(v7 + 24) = v9;
      *a4 = v7;
    }

    else
    {
      FigCSSBaseTokenCreate_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FigCSSBaseTokenCreate_cold_2(&v12);
    return v12;
  }

  return result;
}

void *figCSSToken_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void figCSSToken_Finalize(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

CFStringRef figCSSToken_CopyFormattingDesc(uint64_t a1)
{
  if (FigCFDictionaryGetCount() <= 0)
  {
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
  }

  else
  {
    v2 = FigCFCopyCompactDescription();
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
    if (v2)
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ %@ attributesDict = <%p>", a1, v3, v2, *(a1 + 32));
      CFRelease(v2);
      return v4;
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ attributesDict = <%p>", a1, v3, *(a1 + 32));
}

CFStringRef figCSSToken_CopyDebugDesc(uint64_t a1)
{
  if (FigCFDictionaryGetCount() <= 0)
  {
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
  }

  else
  {
    v2 = FigCFCopyCompactDescription();
    v3 = FigCSSTokenMapTokenTypeToName(*(a1 + 16));
    if (v2)
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ %@ attributesDict = <%p>", a1, v3, v2, *(a1 + 32));
      CFRelease(v2);
      return v4;
    }
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigCSSToken: <%p> %@ attributesDict = <%p>", a1, v3, *(a1 + 32));
}

uint64_t FigReportingAgentOfflineAirPlayGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigReportingAgentOfflineAirPlayGetTypeID_sRegisterFigReportingAgentOfflineAirPlayTypeOnce != -1)
  {
    FigReportingAgentOfflineAirPlayGetTypeID_cold_1();
  }

  return sFigReportingAgentOfflineAirPlayID;
}

uint64_t registerFigReportingAgentOfflineAirPlayType()
{
  result = _CFRuntimeRegisterClass();
  sFigReportingAgentOfflineAirPlayID = result;
  return result;
}

uint64_t fraoa_CreateOfflineAirPlayReportingPayload(uint64_t a1, __CFDictionary **a2)
{
  v12 = 0;
  v3 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v5 = MutableCopy;
    if (a2)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(&FigReportingAgentOffilineAirplay_RTCJSMetadataKeys + v6);
        if (FigCFDictionaryGetValueIfPresent())
        {
          v8 = CFStringCreateWithFormat(v3, 0, @"%@%@", v7, @"_OA", v12);
          if (!v8)
          {
            fraoa_CreateOfflineAirPlayReportingPayload_cold_1(&v13);
            goto LABEL_11;
          }

          v9 = v8;
          CFDictionaryRemoveValue(v5, v7);
          FigCFDictionarySetValue();
          CFRelease(v9);
        }

        v6 += 8;
        if (v6 == 184)
        {
          v10 = 0;
          *a2 = v5;
          return v10;
        }
      }
    }

    fraoa_CreateOfflineAirPlayReportingPayload_cold_2(&v13);
LABEL_11:
    v10 = v13;
    CFRelease(v5);
  }

  else
  {
    fraoa_CreateOfflineAirPlayReportingPayload_cold_3(&v13);
    return v13;
  }

  return v10;
}

uint64_t FigReportingAgentOfflineAirPlayIssueReportingEvent(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigReportingAgentOfflineAirPlayIssueReportingEvent_cold_2(&v9);
    return v9;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigReportingAgentOfflineAirPlayIssueReportingEvent_cold_1(&v9);
    return v9;
  }

  OfflineAirPlayReportingPayload = fraoa_CreateOfflineAirPlayReportingPayload(a2, &cf);
  v5 = cf;
  if (OfflineAirPlayReportingPayload)
  {
    v6 = OfflineAirPlayReportingPayload;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = FigRTCReportingSendMsgWithErrors(*(a1 + 16));
  v5 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigReportingAgentOfflineAirPlayCreate(void *a1)
{
  v2 = arc4random();
  v3 = *MEMORY[0x1E695E480];
  v4 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v4)
  {
    FigReportingAgentOfflineAirPlayCreate_cold_5();
  }

  v5 = v4;
  v6 = CFUUIDCreateString(v3, v4);
  if (v6)
  {
    v7 = v6;
    if (a1)
    {
      if (FigReportingAgentOfflineAirPlayGetTypeID_sRegisterFigReportingAgentOfflineAirPlayTypeOnce != -1)
      {
        FigReportingAgentOfflineAirPlayGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v9 = Instance;
        v10 = FigRTCReportingCreate(v2, v7, 0, 5, @"OfflineAirPlay", @"com.apple.hlsjs.offline", 0, 0, 0, 1u, 0, (Instance + 16));
        if (v10)
        {
          CFRelease(v9);
        }

        else
        {
          *a1 = v9;
        }
      }

      else
      {
        FigReportingAgentOfflineAirPlayCreate_cold_2(&v12);
        v10 = v12;
      }
    }

    else
    {
      FigReportingAgentOfflineAirPlayCreate_cold_3(&v13);
      v10 = v13;
    }

    CFRelease(v5);
  }

  else
  {
    FigReportingAgentOfflineAirPlayCreate_cold_4(&v14);
    v10 = v14;
    v7 = v5;
  }

  CFRelease(v7);
  return v10;
}

void FigReportingAgentOfflineAirPlay_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigPlayerResourceArbiterRegisterConsumer(uint64_t a1, const void *a2, const void *a3, const void *a4, int a5, uint64_t *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_5(v35);
    return v35[0];
  }

  if (!a6)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_4(v35);
    return v35[0];
  }

  FigSimpleMutexLock();
  v10 = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v11 + 1;
  while (1)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v10 >= Count)
    {
      break;
    }

    FigCFArrayGetValueAtIndex();
    BytePtr = FigStorageRefGetBytePtr();
    ++v10;
    if (FigCFEqual())
    {
      v14 = 0;
      goto LABEL_16;
    }
  }

  v15 = FigStorageCreate();
  if (v15)
  {
    v31 = v15;
    FigSimpleMutexUnlock();
    return v31;
  }

  BytePtr = FigStorageRefGetBytePtr();
  if (a2)
  {
    v16 = CFRetain(a2);
  }

  else
  {
    v16 = 0;
  }

  *BytePtr = v16;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v14 = CFUUIDCreate(AllocatorForMedia);
  v18 = FigGetAllocatorForMedia();
  v19 = CFUUIDCreateString(v18, v14);
  *(BytePtr + 8) = v19;
  if (!v19)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_2(v35);
LABEL_39:
    v31 = v35[0];
    goto LABEL_35;
  }

  v20 = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
  *(BytePtr + 16) = Mutable;
  if (!Mutable)
  {
    FigPlayerResourceArbiterRegisterConsumer_cold_1(v35);
    goto LABEL_39;
  }

  CFArrayAppendValue(*(a1 + 32), 0);
LABEL_16:
  v22 = FigStorageCreate();
  if (v22)
  {
    v31 = v22;
  }

  else
  {
    v23 = FigStorageRefGetBytePtr();
    if (a3)
    {
      v24 = CFRetain(a3);
    }

    else
    {
      v24 = 0;
    }

    *v23 = v24;
    v25 = a4;
    if (a4)
    {
      v25 = CFRetain(a4);
    }

    v23[1] = v25;
    v23[2] = v11;
    if (a5 == 1)
    {
      for (i = 0; ; ++i)
      {
        v27 = *(BytePtr + 16);
        if (v27)
        {
          v27 = CFArrayGetCount(v27);
        }

        if (i >= v27)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(BytePtr + 16), i);
        v29 = FigStorageRefGetBytePtr();
        if (FigCFEqual() && !*(v29 + 32))
        {
          if (ValueAtIndex)
          {
            v23[4] = CFRetain(ValueAtIndex);
            goto LABEL_32;
          }

          break;
        }
      }

      FigPlayerResourceArbiterRegisterConsumer_cold_3(v35);
      goto LABEL_39;
    }

LABEL_32:
    CFArrayAppendValue(*(a1 + 40), 0);
    CFArrayAppendValue(*(BytePtr + 16), 0);
    *a6 = v11;
    if (dword_1EAF17BB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v31 = 0;
  }

LABEL_35:
  FigSimpleMutexUnlock();
  if (v14)
  {
    CFRelease(v14);
  }

  return v31;
}

uint64_t FigPlayerResourceArbiterUnregisterConsumer(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    FigSimpleMutexLock();
    if (dword_1EAF17BB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    ConsumerInfoIndex = fpra_getConsumerInfoIndex(a1, a2);
    if (ConsumerInfoIndex != -1)
    {
      CFArrayRemoveValueAtIndex(*(a1 + 40), ConsumerInfoIndex);
    }

    FigGetAllocatorForMedia();
    UInt64 = FigCFNumberCreateUInt64();
    for (i = 0; ; ++i)
    {
      Count = *(a1 + 32);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      FigCFArrayGetValueAtIndex();
      BytePtr = FigStorageRefGetBytePtr();
      for (j = 0; ; ++j)
      {
        v11 = *(BytePtr + 16);
        if (v11)
        {
          v11 = CFArrayGetCount(v11);
        }

        if (j >= v11)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(BytePtr + 16), j);
        if (*(FigStorageRefGetBytePtr() + 16) == a2)
        {
          CFArrayRemoveValueAtIndex(*(BytePtr + 16), j);
          if (!CFArrayGetCount(*(BytePtr + 16)))
          {
            CFArrayRemoveValueAtIndex(*(a1 + 32), i);
          }

          break;
        }
      }
    }

    if (UInt64)
    {
      CFRelease(UInt64);
    }

    fpra_determineAndDistributeBudgetToConsumers(a1);
    fpra_determineAndDistributeNetworkBudgetToConsumers(a1);
    fpra_unlockAndNotifyClients(a1);
    return 0;
  }

  else
  {
    FigPlayerResourceArbiterUnregisterConsumer_cold_1(v13);
    return v13[0];
  }
}

CFIndex fpra_getConsumerInfoIndex(uint64_t a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 40), i);
    if (*(FigStorageRefGetBytePtr() + 16) == a2)
    {
      return i;
    }
  }

  return -1;
}

void fpra_unlockAndNotifyClients(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1[96];
  v3 = a1[97];
  *(a1 + 48) = 0;
  FigSimpleMutexUnlock();
  if (v2 | v3)
  {
    v4 = CFCopyDescription(a1);
    if (dword_1EAF17BB8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v2)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    if (v3)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }
}