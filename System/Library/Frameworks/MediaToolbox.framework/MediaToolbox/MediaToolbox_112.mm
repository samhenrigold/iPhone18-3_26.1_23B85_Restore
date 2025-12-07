uint64_t remakerFamily_createRemakerVideoEncoderSpecification(const void *a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  if (!a3)
  {
    return 4294955190;
  }

  *a3 = 0;
  v5 = CFGetAllocator(a1);
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v7 = MutableCopy;
  if (!MutableCopy)
  {
    return 4294954510;
  }

  if (!CFDictionaryContainsKey(MutableCopy, *MEMORY[0x1E6983880]))
  {
    FigCFDictionarySetInt32();
  }

  CFDictionaryAddValue(v7, *MEMORY[0x1E6984270], *MEMORY[0x1E695E4D0]);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t remakerFamily_resetSourceRenderersForNextSegment(uint64_t a1, uint64_t a2, int a3)
{
  theArray = 0;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  started = remakerFamily_createRelatedTrackArray(a1, &theArray);
  if (!started)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
LABEL_28:
      v30 = 0;
      goto LABEL_29;
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v12 = ValueAtIndex;
      if (a3)
      {
        v13 = *(ValueAtIndex[19] + 72);
        if (v13)
        {
          started = CMBufferQueueReset(v13);
          if (started)
          {
            break;
          }
        }
      }

      if (v12[25])
      {
        *(v12 + 216) = 0;
        CMBufferQueueReset(v12[26]);
        started = FigAudioQueueOfflineMixerReset(v12[25], 1, 0);
        if (started)
        {
          break;
        }
      }

      v14 = v12[7];
      if (v14)
      {
        *(v12 + 64) = 0;
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v15)
        {
          started = v15(v14, a3);
          if (started && started != -12782)
          {
            break;
          }
        }
      }

      *(v12[19] + 200) = 0;
      if (v9 == ++v10)
      {
        v17 = 0;
        v18 = 12;
        while (1)
        {
          v19 = CFArrayGetValueAtIndex(theArray, v17);
          v27 = v19;
          if (*(v19 + 416))
          {
            *(v19 + 424) = 0;
            v28 = *(a1 + 400);
            if (v28)
            {
              v28 = CFArrayGetCount(v28);
              if (v28 > 1)
              {
                v18 = 2;
              }
            }

            v29 = *(v27 + 416);
            if (*(DerivedStorage + 136))
            {
              OUTLINED_FUNCTION_89();
              v19 = FigPlaybackBossSendSampleForTime(v29, &v32, v18);
            }

            else
            {
              OUTLINED_FUNCTION_24_12(v28, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35.value);
              OUTLINED_FUNCTION_89();
              v19 = FigPlaybackBossSendSamplesForTimeRange(v29, &v32, &v35, v18);
            }

            v30 = v19;
            if (v19)
            {
              goto LABEL_29;
            }
          }

          OUTLINED_FUNCTION_24_12(v19, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35.value);
          OUTLINED_FUNCTION_89();
          started = remakerFamily_startSourceRendererOfTrack(v27, &v32);
          if (started)
          {
            goto LABEL_34;
          }

          if (v9 == ++v17)
          {
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_34:
  v30 = started;
LABEL_29:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v30;
}

double remakerFamily_setupCompressionMediaProcessorAndFileOutput(const void *a1, int a2, unsigned int a3, unsigned int a4, CMTime *a5, uint64_t a6, const __CFDictionary *a7, uint64_t a8, const void *a9, const void *a10, const __CFDictionary *a11)
{
  v133 = __PAIR64__(a4, a3);
  HIDWORD(v132) = a2;
  theDict = a11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v142 = **&MEMORY[0x1E6960C70];
  if (remakerFamily_getExpectedDuration(a1, &v142))
  {
    return result;
  }

  if (a10)
  {
    v18 = CFGetTypeID(a10);
    if (v18 != CFArrayGetTypeID() || (Count = CFArrayGetCount(a10), Count <= 0))
    {
      OUTLINED_FUNCTION_9_22();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    Count = 0;
  }

  v136 = a1;
  if (*(a8 + 360))
  {
    v130 = Count;
    propertyValueOut.value = 0;
    v20 = OUTLINED_FUNCTION_265();
    ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
    v11 = CFGetAllocator(a1);
    v129 = ValueAtIndex;
    if (a9)
    {
      ValueAtIndex = 0;
    }

    start = *(DerivedStorage + 88);
    duration = v142;
    CMTimeRangeMake(&valuePtr, &start, &duration);
    v23 = *(a8 + 360);
    v131 = DerivedStorage;
    if (*(DerivedStorage + 32))
    {
      v24 = 30;
    }

    else
    {
      v24 = 31;
    }

    v25 = a5;
    v26 = (a8 + 288);
    start = *v25;
    v27 = v25;
    v116 = v24;
    v110 = v23;
    OUTLINED_FUNCTION_23_19();
    if (FigMediaProcessorCreateForVideoCompressionWithFrameSilo(v28, v29, v30, v31, v32, a7, a9, ValueAtIndex, &start, &valuePtr.start.value, v110, 0, v116, (a8 + 288)))
    {
      return result;
    }

    VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*v26);
    if (VTSessionCopyProperty(VTCompressionSession, *MEMORY[0x1E6983740], *MEMORY[0x1E695E480], &propertyValueOut))
    {
      v34 = *(a8 + 360);
      if (v34)
      {
        CFRelease(v34);
        *(a8 + 360) = 0;
      }

      FigMediaProcessorInvalidate(*v26);
      if (*v26)
      {
        CFRelease(*v26);
        *v26 = 0;
      }

      *(a8 + 356) = 0;
    }

    if (propertyValueOut.value)
    {
      CFRelease(propertyValueOut.value);
    }

    a5 = v27;
    DerivedStorage = v131;
  }

  else
  {
    v129 = 0;
  }

  if (!*(a8 + 356))
  {
    memset(&start, 0, sizeof(start));
    if (*(DerivedStorage + 32))
    {
      v35 = 10;
    }

    else
    {
      v35 = 2;
    }

    CMTimeMake(&start, v35, 1);
    memset(&duration, 0, sizeof(duration));
    if (*(DerivedStorage + 32))
    {
      v36 = 8;
    }

    else
    {
      v36 = 1;
    }

    CMTimeMake(&duration, v36, 1);
    if (Count < 2)
    {
      v48 = DerivedStorage;
      v49 = a5;
      v50 = v129;
      if (Count)
      {
        v51 = OUTLINED_FUNCTION_265();
        v50 = CFArrayGetValueAtIndex(v51, v52);
      }

      CFGetAllocator(a1);
      v11 = a9;
      if (a9)
      {
        v53 = 0;
      }

      else
      {
        v53 = v50;
      }

      *&propertyValueOut.value = *(v48 + 88);
      OUTLINED_FUNCTION_29_11(*(v48 + 104), v106, v107, v109, v113, v115, v117, v118, v119, v120, v122, v125, v127, v128, v129, v130, v131, a9, v132, v133, a6, a11, a1, cf, *(&cf + 1), v138, v139, v140.value, *&v140.timescale, v140.epoch, v141, *&v142.value);
      CMTimeRangeMake(&valuePtr, &propertyValueOut, &v140);
      *&propertyValueOut.value = *&v49->value;
      OUTLINED_FUNCTION_17_16();
      v126 = v54;
      v124 = v55;
      a5 = v49;
      v114 = v56;
      v112 = v57;
      OUTLINED_FUNCTION_23_19();
      if (FigMediaProcessorCreateForVideoCompressionWithFormatWriter2(v58, v59, v60, v61, v62, a7, a9, v53, &propertyValueOut.value, &valuePtr.start.value, v112, v114, &v140.value, 629145600, &cf, 314572800, 0, v124, v126))
      {
        return result;
      }
    }

    else
    {
      CFGetAllocator(a1);
      *&propertyValueOut.value = *(DerivedStorage + 88);
      OUTLINED_FUNCTION_29_11(*(DerivedStorage + 104), v106, v107, v109, v113, v115, v117, v118, v119, v120, v122, v125, v127, v128, v129, v130, v131, a9, v132, v133, a6, a11, a1, cf, *(&cf + 1), v138, v139, v140.value, *&v140.timescale, v140.epoch, v141, *&v142.value);
      CMTimeRangeMake(&valuePtr, &propertyValueOut, &v140);
      *&propertyValueOut.value = *&a5->value;
      OUTLINED_FUNCTION_17_16();
      v123 = v37;
      v121 = v38;
      v111 = v39;
      v108 = v40;
      OUTLINED_FUNCTION_23_19();
      FigMediaProcessorCreateForVideoCompressionWithVisualContextGroupAndFormatWriter(v41, v42, v43, v44, v45, a7, a10, v46, &valuePtr.start.value, v108, v111, &v140.value, 629145600, &cf, 314572800, 0, v121, v123);
      if (v47)
      {
        return result;
      }
    }

    a1 = v136;
  }

  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_29();
  if (v64)
  {
    v65 = v63;
    v66 = v63 + 268;
    *&valuePtr.start.value = *MEMORY[0x1E6960CC0];
    valuePtr.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    start = *(v63 + 268);
    if (CMTimeCompare(&valuePtr.start, &start) < 0)
    {
      OUTLINED_FUNCTION_29();
      if (v64)
      {
        v67 = *MEMORY[0x1E695E480];
        *&valuePtr.start.value = *v66;
        valuePtr.start.epoch = *(v66 + 16);
        v68 = CMTimeCopyAsDictionary(&valuePtr.start, v67);
        *&valuePtr.start.value = *(v65 + 244);
        valuePtr.start.epoch = *(v65 + 260);
        v69 = CMTimeCopyAsDictionary(&valuePtr.start, v67);
        v70 = *(a8 + 288);
        if (v70)
        {
          if (FigMediaProcessorGetSampleBufferProcessor(v70))
          {
            FigSampleBufferProcessorGetFigBaseObject();
            v72 = v71;
            v73 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v73)
            {
              v73(v72, @"SampleBufferProcessorProperty_ForceSyncSampleIntervalForSegmentation", v68);
            }

            FigSampleBufferProcessorGetFigBaseObject();
            v75 = v74;
            v76 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            a1 = v136;
            if (v76)
            {
              v76(v75, @"SampleBufferProcessorProperty_InitialSegmentStartTime", v69);
            }

            v11 = 0;
            if (v69)
            {
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          OUTLINED_FUNCTION_9_22();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, v107, v109);
          v11 = v105;
        }

        else
        {
          v11 = 0;
        }

        a1 = v136;
        if (v69)
        {
LABEL_53:
          CFRelease(v69);
        }

LABEL_54:
        if (v68)
        {
          CFRelease(v68);
        }

        if (v11)
        {
          return result;
        }
      }
    }
  }

  v77 = *(a8 + 288);
  v78 = MEMORY[0x1E695E4D0];
  if (v77)
  {
    if (!FigMediaProcessorGetSampleBufferProcessor(v77))
    {
      OUTLINED_FUNCTION_9_22();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, v107, v109);
    }

    FigSampleBufferProcessorGetFigBaseObject();
    v80 = v79;
    v81 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v81)
    {
      v81(v80, @"SampleBufferProcessor_InheritOutputColorSpaceFromInput", *v78);
    }
  }

  v82 = (a8 + 328);
  OUTLINED_FUNCTION_29();
  if (v64)
  {
    v83 = *&a5->value;
    *(a8 + 344) = a5->epoch;
    *v82 = v83;
  }

  else
  {
    CMTimeMake(&valuePtr.start, 1, 30);
    *v82 = *&valuePtr.start.value;
    *(a8 + 344) = valuePtr.start.epoch;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  if (!FigNotificationCenterAddWeakListeners())
  {
    v84 = FigMediaProcessorGetVTCompressionSession(*(a8 + 288));
    v140.value = 0;
    *&cf = 0;
    memset(&start, 0, sizeof(start));
    v146 = 0;
    v85 = CMBaseObjectGetDerivedStorage();
    if (remakerFamily_getExpectedEndTime(a1, &start))
    {
      OUTLINED_FUNCTION_37_9();
      v88 = 0;
    }

    else
    {
      v86 = CFGetAllocator(a1);
      if (theDict)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v86, 0, theDict);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v86, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v88 = MutableCopy;
      if (!VTSessionCopySupportedPropertyDictionary(v84, &v140))
      {
        v82 = *MEMORY[0x1E69837C8];
        if (!CFDictionaryContainsKey(v140.value, *MEMORY[0x1E69837C8]))
        {
          v90 = 0;
LABEL_80:
          if (CFDictionaryContainsKey(v140.value, *MEMORY[0x1E69837F0]))
          {
            v91 = OUTLINED_FUNCTION_28_12();
            CFDictionaryAddValue(v91, v92, v93);
          }

          if (FigCFDictionaryGetBooleanIfPresent())
          {
            v94 = OUTLINED_FUNCTION_28_12();
            CFDictionarySetValue(v94, v95, v96);
          }

          v97 = *MEMORY[0x1E69836F8];
          if (CFDictionaryContainsKey(v140.value, *MEMORY[0x1E69836F8]) && !CFDictionaryContainsKey(v88, *MEMORY[0x1E6983700]))
          {
            LODWORD(valuePtr.start.value) = 30;
            v82 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
            if (!v82)
            {
              OUTLINED_FUNCTION_9_22();
              result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, v107, v109);
LABEL_130:
              v11 = TempFile;
              goto LABEL_106;
            }

            CFDictionaryAddValue(v88, v97, v82);
          }

          else
          {
            v82 = 0;
          }

          v98 = *MEMORY[0x1E6983740];
          if (!CFDictionaryContainsKey(v140.value, *MEMORY[0x1E6983740]))
          {
LABEL_94:
            if (*(a8 + 356))
            {
              if (CFDictionaryContainsKey(v140.value, *MEMORY[0x1E6983558]))
              {
                LODWORD(valuePtr.start.value) = 0;
                if (FigCFDictionaryGetInt32IfPresent())
                {
                  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
                  if (CFPreferenceNumberWithDefault <= 10)
                  {
                    v104 = 10;
                  }

                  else
                  {
                    v104 = CFPreferenceNumberWithDefault;
                  }

                  if (v104 >= 100)
                  {
                    v104 = 100;
                  }

                  a1 = v136;
                  LODWORD(valuePtr.start.value) = (v104 / 100.0 * SLODWORD(valuePtr.start.value));
                  FigCFDictionarySetInt32();
                }
              }
            }

            goto LABEL_103;
          }

          if (!*(a8 + 356))
          {
LABEL_103:
            if (*(v85 + 464))
            {
              FigCFDictionarySetValue();
            }

            VTSessionSetProperties(v84, v88);
            v11 = 0;
            goto LABEL_106;
          }

          v99 = CFGetTypeID(a1);
          TempFile = remakerFamily_createTempFile(v99, *(v85 + 232), *(v85 + 160), 0, 0, &cf);
          if (!TempFile)
          {
            FigFileDeleteFile();
            v101 = *MEMORY[0x1E695E480];
            v102 = cf;
            duration = *(v85 + 88);
            propertyValueOut = start;
            CMTimeRangeFromTimeToTime(&valuePtr, &duration, &propertyValueOut);
            TempFile = VTMultiPassStorageCreate(v101, v102, &valuePtr, 0, (a8 + 392));
            if (!TempFile)
            {
              CFDictionaryAddValue(v88, v98, *(a8 + 392));
              goto LABEL_94;
            }
          }

          goto LABEL_130;
        }

        if (*(v85 + 32))
        {
          v89 = 80;
        }

        else
        {
          v89 = -20;
        }

        LODWORD(valuePtr.start.value) = v89;
        v90 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        if (v90)
        {
          CFDictionaryAddValue(v88, v82, v90);
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_9_22();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v106, v107, v109);
        OUTLINED_FUNCTION_37_9();
LABEL_106:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v90)
        {
          CFRelease(v90);
        }

        if (v82)
        {
          CFRelease(v82);
        }

        if (v140.value)
        {
          CFRelease(v140.value);
        }

        if (v88)
        {
          CFRelease(v88);
        }

        if (!v11)
        {
          remakerFamily_updateRunningStatsWithCompressionProperties(a1, theDict);
        }

        return result;
      }

      OUTLINED_FUNCTION_37_9();
    }

    v90 = 0;
    goto LABEL_106;
  }

  return result;
}

_BYTE *remakerFamily_updateRunningStatsWithCompressionProperties(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    v4[497] = Int32IfPresent;
    if (Int32IfPresent)
    {
      if (v4[496])
      {
        v4[496] = 0;
      }
    }

    result = FigCFDictionaryGetInt32IfPresent();
    v4[504] = result;
  }

  return result;
}

double remakerFamily_registerPowerLogEvent(uint64_t a1)
{
  value = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  v2 = *MEMORY[0x1E695E480];
  if (!*(DerivedStorage + 72))
  {
    goto LABEL_4;
  }

  FigAssetGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    *(DerivedStorage + 464) = 0;
    return result;
  }

  v5(v4, @"LoggingIdentifier", v2, &v16);
  v7 = v16;
  *(DerivedStorage + 464) = v16;
  if (v7)
  {
LABEL_4:
    Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      FigCFDictionarySetInt32();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      v10 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v10)
      {
        v11 = v10;
        FigFormatWriterGetFigBaseObject();
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          v15 = v14(v13, @"EstimatedFileByteCount", v2, &value) == 0;
        }

        else
        {
          v15 = 0;
        }

        CFRelease(v11);
        if (value && v15)
        {
          CFDictionarySetValue(v9, *MEMORY[0x1E6962CE8], value);
          FigLogPowerEvent();
        }
      }

      CFRelease(v9);
      if (value)
      {
        CFRelease(value);
      }
    }

    else
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, value, v18);
    }
  }

  return result;
}

void remakerFamily_ReportExportFileSizeStats(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v30 = **&MEMORY[0x1E6960C70];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 304))
  {
    return;
  }

  if (!*(DerivedStorage + 496))
  {
    return;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    return;
  }

  v3 = OUTLINED_FUNCTION_383();
  if (v4(v3) || remakerFamily_getExpectedDuration(a1, &v30))
  {
    return;
  }

  if (v30.flags)
  {
    OUTLINED_FUNCTION_31_11(0, v5, v6, v7, v8, v9, v10, v11, v27, v28, v29, *&v30.value, v30.epoch);
  }

  *keys = xmmword_1E7484480;
  v34 = off_1E7484490;
  v12 = *MEMORY[0x1E695E480];
  Float64 = FigCFNumberCreateFloat64();
  v14 = FigCFNumberCreateFloat64();
  v15 = FigCFNumberCreateFloat64();
  OUTLINED_FUNCTION_31_11(v15, v16, v17, v18, v19, v20, v21, v22, v27, v28, v29, *&v30.value, v30.epoch);
  v23 = FigCFNumberCreateFloat64();
  v24 = v23;
  if (Float64 && v14 && v15 && v23)
  {
    values[0] = Float64;
    values[1] = v14;
    values[2] = v15;
    values[3] = v23;
    v25 = CFDictionaryCreate(v12, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v25)
    {
      v26 = v25;
      FigRemakerReportOneRTCMessage(1, 1, v25);
      CFRelease(v26);
    }
  }

  else if (!Float64)
  {
    goto LABEL_15;
  }

  CFRelease(Float64);
LABEL_15:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

uint64_t remakerFamily_GetDefaultSourceVideoTrackFromAsset(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  v20 = 0;
  theArray = 0;
  v21 = 0;
  if (*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v8 = OUTLINED_FUNCTION_40_8();
    v9(v8);
  }

  if (*a5)
  {
    return 0;
  }

  theArray = 0;
  if (a3 && *(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v10 = OUTLINED_FUNCTION_40_8();
    v12 = v11(v10);
    v13 = theArray;
    if (!v12)
    {
      *a5 = remakerFamily_GetEnabledTrackWithAllAlphaSegments(theArray);
      v13 = theArray;
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (*a5)
  {
    return 0;
  }

  FigAssetGetCMBaseObject();
  v17 = v16;
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    return 0;
  }

  v18(v17, @"assetProperty_FormatReader", *MEMORY[0x1E695E480], &v20);
  if (!v20)
  {
    return 0;
  }

  if (a4)
  {
    v19 = 33;
  }

  else
  {
    v19 = 1;
  }

  DefaultTrackIDForMediaType = FPSupport_GetDefaultTrackIDForMediaType(v20, 1986618469, a5, v19);
  if (v20)
  {
    CFRelease(v20);
  }

  return DefaultTrackIDForMediaType;
}

uint64_t remakerFamily_setFormatWriterProperties(uint64_t a1, int a2)
{
  v37 = 862416950;
  v36 = 256;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2 != 1635148593 || *(DerivedStorage + 393))
  {
    v8 = 0;
    v10 = 0;
    Mutable = 0;
    goto LABEL_16;
  }

  if (!FigCFEqual())
  {
    v8 = 0;
    v10 = 0;
    Mutable = 0;
LABEL_16:
    OUTLINED_FUNCTION_38_9();
    if (v25)
    {
      v26 = 31;
    }

    else
    {
      v26 = 30;
    }

    v35 = v26;
    v22 = OUTLINED_FUNCTION_858(v23, v24, &v35);
    FigFormatWriterGetFigBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v29)
    {
      v29(v28, @"ThreadPriority", v22);
    }

    if (*(v4 + 424))
    {
      v30 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v30 = MEMORY[0x1E695E4C0];
    }

    FigFormatWriterGetFigBaseObject();
    v32 = v31;
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v33)
    {
      v33(v32, @"MaximizePowerEfficiency", *v30);
    }

    v21 = 0;
    if (Mutable)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  FigCFArrayAppendInt32();
  appended = FigCFArrayAppendInt32();
  v8 = OUTLINED_FUNCTION_858(appended, v7, &v37);
  v10 = OUTLINED_FUNCTION_858(v8, v9, &v36);
  FigFormatWriterGetFigBaseObject();
  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v14 = v13(v12, @"FileTypeMajorBrand", v8);
    if (v14)
    {
      goto LABEL_10;
    }

    FigFormatWriterGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v17)
    {
      v14 = v17(v16, @"FileTypeMinorVersion", v10);
      if (v14)
      {
        goto LABEL_10;
      }

      FigFormatWriterGetFigBaseObject();
      v19 = v18;
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v20)
      {
        v14 = v20(v19, @"FileTypeCompatibleBrands", Mutable);
        if (v14)
        {
LABEL_10:
          v21 = v14;
          v22 = 0;
          if (!Mutable)
          {
            goto LABEL_28;
          }

LABEL_27:
          CFRelease(Mutable);
          goto LABEL_28;
        }

        goto LABEL_16;
      }
    }
  }

  v22 = 0;
  v21 = 4294954514;
  if (Mutable)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v21;
}

uint64_t remakerFamily_resolveByteReferenceSampleBufferAndCopyByteStream(void *a1, const void *a2, CFTypeRef *a3)
{
  valuePtr = 0;
  v24 = 0;
  dataBuffer = 0;
  cf = 0;
  v20 = a2;
  v6 = CMGetAttachment(a1, *MEMORY[0x1E6960528], 0);
  if (!v6)
  {
    goto LABEL_25;
  }

  CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr);
  if (!CMGetAttachment(a1, *MEMORY[0x1E6960530], 0))
  {
    goto LABEL_25;
  }

  v7 = *MEMORY[0x1E695E480];
  if (a2)
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9(CMBaseObject, *MEMORY[0x1E695FFA0], v7, &cf);
    if (v10)
    {
LABEL_26:
      v18 = v10;
      goto LABEL_18;
    }

    if (FigCFEqual())
    {
      CFRetain(a2);
      goto LABEL_10;
    }

    v20 = 0;
  }

  v10 = CMByteStreamCreateForFileURL();
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_10:
  v11 = OUTLINED_FUNCTION_265();
  SampleSize = CMSampleBufferGetSampleSize(v11, v12);
  if (!SampleSize)
  {
LABEL_25:
    v18 = 4294955190;
    goto LABEL_18;
  }

  v14 = SampleSize;
  v15 = valuePtr;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v16)
  {
LABEL_17:
    v18 = 4294954514;
    goto LABEL_18;
  }

  v10 = v16(v20, v14, v15, &dataBuffer, &v24);
  if (v10)
  {
    goto LABEL_26;
  }

  if (!v24)
  {
    goto LABEL_25;
  }

  v17 = CMSampleBufferSetDataBuffer(a1, dataBuffer);
  v18 = v17;
  if (a3 && !v17)
  {
    *a3 = v20;
    v20 = 0;
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (dataBuffer)
  {
    CFRelease(dataBuffer);
  }

  return v18;
}

void remakerFamily_transferMetadata(const void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v66 = 0;
  theArray = 0;
  cf = 0;
  values = 0;
  keys[0] = @"MetadataReader";
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v3 = CFGetTypeID(a1), v3 != FigAssetReaderGetTypeID()))
  {
    v4 = MEMORY[0x1E695E480];
    if (!*(DerivedStorage + 72) || (FigAssetGetCMBaseObject(), v6 = v5, (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v7(v6, @"assetProperty_FormatReader", *v4, &v66))
    {
      v8 = *(DerivedStorage + 400);
      if (v8)
      {
        FigFormatWriterGetFigBaseObject();
        v10 = v9;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v10, @"MetadataToWrite", v8);
        }
      }

      else if (v66)
      {
        FigFormatReaderGetFigBaseObject();
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v14)
        {
          goto LABEL_61;
        }

        v15 = *v4;
        if (v14(v13, @"MetadataReaders", *v4, &theArray))
        {
          goto LABEL_61;
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v17 = Count;
            v18 = OUTLINED_FUNCTION_383();
            Mutable = CFArrayCreateMutable(v18, v19, v20);
            v22 = 0;
            v23 = MEMORY[0x1E695E9D8];
            v24 = MEMORY[0x1E695E9E8];
            do
            {
              values = CFArrayGetValueAtIndex(theArray, v22);
              v25 = CFDictionaryCreate(v15, keys, &values, 1, v23, v24);
              if (v25)
              {
                v26 = v25;
                CFArrayAppendValue(Mutable, v25);
                CFRelease(v26);
              }

              ++v22;
            }

            while (v17 != v22);
            v27 = *(DerivedStorage + 408);
            if (v27)
            {
              FigFormatWriterGetFigBaseObject();
              v29 = v28;
              v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v30)
              {
                v30(v29, @"MetadataAllowList", v27);
              }
            }

            FigFormatWriterGetFigBaseObject();
            v32 = v31;
            v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v33)
            {
              v33(v32, @"MetadataToTransfer", Mutable);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
            theArray = 0;
          }
        }
      }

      v34 = *(DerivedStorage + 80);
      if (v34)
      {
        v35 = CFArrayGetCount(v34);
        if (v35 >= 1)
        {
          v36 = v35;
          v37 = 0;
          v38 = @"MetadataReaders";
          v39 = *v4;
          v40 = @"TrackMetadataToTransfer";
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v37);
            v42 = *(ValueAtIndex + 75);
            if (!v42)
            {
              v42 = *(ValueAtIndex + 76);
            }

            v43 = ValueAtIndex[24];
            if (v43)
            {
              if (v42)
              {
                v44 = *(DerivedStorage + 184);
                v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v45)
                {
                  v45(v44, v42, @"TrackMetadataToWrite", v43);
                }
              }
            }

            else
            {
              v46 = v66;
              if (v66)
              {
                v47 = *(ValueAtIndex + 7);
                if (v47)
                {
                  v48 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                  if (v48)
                  {
                    if (!v48(v46, v47, &cf, 0))
                    {
                      FigTrackReaderGetFigBaseObject();
                      v50 = v49;
                      v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v51 && !v51(v50, v38, v39, &theArray) && theArray)
                      {
                        v52 = CFArrayGetCount(theArray);
                        if (v52 >= 1)
                        {
                          v53 = v52;
                          v63 = v40;
                          v64 = v38;
                          v54 = CFArrayCreateMutable(v39, 0, MEMORY[0x1E695E9C0]);
                          for (i = 0; i != v53; ++i)
                          {
                            values = CFArrayGetValueAtIndex(theArray, i);
                            v56 = CFDictionaryCreate(v39, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                            if (v56)
                            {
                              v57 = v56;
                              CFArrayAppendValue(v54, v56);
                              CFRelease(v57);
                            }
                          }

                          v40 = v63;
                          if (v42)
                          {
                            v58 = *(DerivedStorage + 184);
                            v59 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                            if (v59)
                            {
                              v59(v58, v42, v63, v54);
                            }

                            v60 = *(DerivedStorage + 408);
                            if (v60)
                            {
                              v61 = *(DerivedStorage + 184);
                              v62 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                              if (v62)
                              {
                                v62(v61, v42, @"TrackMetadataAllowList", v60);
                              }
                            }
                          }

                          v38 = v64;
                          if (v54)
                          {
                            CFRelease(v54);
                          }
                        }

                        if (theArray)
                        {
                          CFRelease(theArray);
                          theArray = 0;
                        }
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                        cf = 0;
                      }
                    }
                  }
                }
              }
            }

            ++v37;
          }

          while (v37 != v36);
        }
      }
    }
  }

LABEL_61:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void remakerFamily_createChannel_cold_1(const void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = CFGetTypeID(a1);
  remakerFamily_MapError(v4, 0);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  *a3 = v5;
}

void remakerFamily_createChannel_cold_2(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 0);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
}

BOOL remakerFamily_performLastStepIfComplete_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void remakerFamily_performLastStepIfComplete_cold_7(const void *a1, uint64_t a2)
{
  if (!FigCFDictionarySetInt32())
  {
    (*(a2 + 320))(0, a1, *(a2 + 328));
  }

  CFRelease(a1);
}

void remakerFamily_finishVideoCompositionChannel_cold_2(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 5);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
}

void remakerFamily_finishVideoCompositionChannel_cold_3(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 3);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
}

void remakerFamily_finishVideoCompositionChannel_cold_6(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 5);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
}

void remakerFamily_finishVideoCompositionChannel_cold_7(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 1);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
}

void remakerFamily_finishVideoCompositionChannel_cold_10(const void *a1, _DWORD *a2)
{
  v3 = CFGetTypeID(a1);
  remakerFamily_MapError(v3, 4);
  OUTLINED_FUNCTION_5_47();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;
}

uint64_t remakerFamily_GetEnabledTrackWithAllAlphaSegments_cold_1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 16);
  result = VTable + 16;
  v9 = *(v8 + 32);
  if (v9)
  {
    result = v9(a1, a2, 0);
  }

  *a3 = 1;
  return result;
}

BOOL remakerFamily_addDestinationTrackReferenceToDictionaryForEachReferenceType_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

uint64_t HandleAssetMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v8 = MEMORY[0x1E69615A0];
  OUTLINED_FUNCTION_22_18();
  if (!v9)
  {
    *bytes.val = 0;
    xpc_dictionary_get_uint64(a2, *v8);
    OpCode = FigXPCServerLookupAndRetainAssociatedObject();
    if (!OpCode)
    {
      return 4294951138;
    }

    return OpCode;
  }

  v137 = 0;
  v138 = 0;
  v136 = 0;
  v132 = 0;
  v133 = 0;
  v130 = 0;
  theDict = 0;
  v128 = 0;
  v129 = 0;
  memset(&bytes, 0, sizeof(bytes));
  v126 = 0;
  v127 = 0;
  xpc_connection_get_audit_token();
  token = bytes;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  FigServer_CopyProcessName();
  v11 = *MEMORY[0x1E695E480];
  token = bytes;
  v12 = SecTaskCreateWithAuditToken(v11, &token);
  allocator = v11;
  v13 = CFDataCreate(v11, &bytes, 32);
  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_149;
  }

  v14 = CreateServedAssetState(ClientPIDFromAuditToken, &v128);
  if (v14)
  {
    goto LABEL_149;
  }

  v117 = v128;
  *(v128 + 24) = a1;
  uint64 = xpc_dictionary_get_uint64(a2, "AssetCreationFlags");
  v14 = FigXPCMessageCopyCFDictionary();
  if (v14)
  {
    goto LABEL_149;
  }

  xdict = a3;
  HIDWORD(v120) = ClientPIDFromAuditToken;
  if (!theDict)
  {
    v23 = 0;
    v31 = 0;
    v118 = 0;
    goto LABEL_65;
  }

  cf = 0;
  value = 0;
  v123 = 0;
  if (CFDictionaryGetValueIfPresent(theDict, @"assetOption_DownloadDestinationURL", &value))
  {
    if (value)
    {
      v15 = CFGetTypeID(value);
      if (v15 == CFURLGetTypeID())
      {
        OUTLINED_FUNCTION_9_26();
        if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() != 1)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_9();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_149;
        }

        assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForDownloadDestinationURL", value);
      }
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, @"assetOption_NetworkCacheURL", &cf))
  {
    if (cf)
    {
      v16 = CFGetTypeID(cf);
      if (v16 == CFURLGetTypeID())
      {
        OUTLINED_FUNCTION_9_26();
        if (FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken() == 1)
        {
          assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForNetworkCacheURL", cf);
          goto LABEL_18;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_149:
        v25 = v14;
        v23 = 0;
        MutableCopy = 0;
LABEL_150:
        v31 = 0;
        v94 = 0;
        goto LABEL_103;
      }
    }
  }

LABEL_18:
  if (xpc_dictionary_get_uint64(a2, "SandboxRegistrationForProtectedContentSupportStorageURL"))
  {
    FigCFDictionaryGetDictionaryValue();
    URLValue = FigCFDictionaryGetURLValue();
    if (URLValue)
    {
      assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForProtectedContentSupportStorageURL", URLValue);
    }
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, key, v111);
    v25 = v104;
    v23 = 0;
    goto LABEL_150;
  }

  FigPersonaCopyCurrentID(&v123);
  if (v123 && !v19)
  {
    CFDictionarySetValue(MutableCopy, @"assetOption_ClientPersonaIdentifier", v123);
  }

  if (xpc_dictionary_get_uint64(a2, "CustomURLLoader"))
  {
    *token.val = 0;
    v20 = FigCustomURLLoaderServerCopyLoaderForID();
    v21 = *token.val;
    if (!v20 && *token.val)
    {
      CFDictionarySetValue(MutableCopy, @"assetOption_CustomURLLoader", *token.val);
      v21 = *token.val;
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  v22 = xpc_dictionary_copy_mach_send();
  v23 = v22;
  if ((v22 - 1) <= 0xFFFFFFFD)
  {
    if (FigMachPortHolderCreateWithMachSendRight())
    {
      CFRelease(MutableCopy);
      if (v123)
      {
        CFRelease(v123);
      }

      MutableCopy = 0;
      v31 = 0;
      v94 = 0;
      v25 = 4294955125;
      goto LABEL_103;
    }

    v22 = FigCFDictionarySetValue();
  }

  v24 = OUTLINED_FUNCTION_31_12(v22, @"get-task-allow");
  v25 = *MEMORY[0x1E695E4D0];
  if (v24 == *MEMORY[0x1E695E4D0] || OUTLINED_FUNCTION_31_12(v24, @"com.apple.security.get-task-allow") == v25 || os_variant_allows_internal_security_policies())
  {
    v26 = v25;
  }

  else
  {
    v26 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(MutableCopy, @"assetOption_EnableHTTPTrafficDebuggingInInstruments", v26);
  FigCFDictionarySetInt32();
  v27 = theDict;
  theDict = MutableCopy;
  CFRetain(MutableCopy);
  if (v27)
  {
    CFRelease(v27);
  }

  v116 = v23;
  CFRelease(MutableCopy);
  if (v123)
  {
    CFRelease(v123);
  }

  v28 = CFDictionaryGetValue(theDict, @"assetOption_ClientAuditToken");
  v29 = CFDictionaryGetValue(theDict, @"assetOption_ClientBundleIdentifier");
  v30 = v29;
  if (v28 && (v29 = FigCFEqual(), !v29) || v30)
  {
    v29 = OUTLINED_FUNCTION_31_12(v29, @"com.apple.private.network.socket-delegate");
    v118 = v29;
    if (v29 != v25)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_41();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, key, v111);
      v25 = v105;
      v31 = 0;
LABEL_169:
      v23 = v116;
      goto LABEL_153;
    }
  }

  else
  {
    v118 = 0;
  }

  v23 = v116;
  v32 = OUTLINED_FUNCTION_31_12(v29, @"com.apple.private.coremedia.allowabletypecategories");
  v31 = v32;
  if (!v32)
  {
    goto LABEL_65;
  }

  v33 = CFGetTypeID(v32);
  if (v33 != CFArrayGetTypeID())
  {
    goto LABEL_65;
  }

  v112 = v13;
  v113 = v12;
  v34 = theDict;
  *token.val = 0;
  key = @"assetOption_AllowableTypes";
  ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"assetOption_AllowableTypes", &token);
  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, @"assetOption_AllowableTypes", v111);
    if (v106)
    {
      v25 = v106;
      goto LABEL_168;
    }

LABEL_166:
    OUTLINED_FUNCTION_27_12();
    goto LABEL_61;
  }

  v37 = Mutable;
  v111 = a1;
  if (CFArrayGetCount(v31) >= 1)
  {
    v38 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v31, v38);
      if (ValueAtIndex)
      {
        v40 = ValueAtIndex;
        v41 = CFGetTypeID(ValueAtIndex);
        if (v41 == CFStringGetTypeID() && (!ValueIfPresent || FigCFArrayContainsValue()))
        {
          CFArrayAppendValue(v37, v40);
        }
      }

      ++v38;
    }

    while (CFArrayGetCount(v31) > v38);
  }

  v42 = FigCFDictionaryCreateMutableCopy();
  if (!v42)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, @"assetOption_AllowableTypes", v111);
    v25 = v107;
    CFRelease(v37);
    if (v25)
    {
LABEL_168:
      v13 = v112;
      v12 = v113;
      goto LABEL_169;
    }

    goto LABEL_166;
  }

  ValueIfPresent = v42;
  CFDictionarySetValue(v42, @"assetOption_AllowableTypes", v37);
  CFRelease(v37);
  v34 = theDict;
  theDict = ValueIfPresent;
  CFRetain(ValueIfPresent);
  LOBYTE(v25) = 0;
LABEL_61:
  v13 = v112;
  v12 = v113;
  if (v34)
  {
    CFRelease(v34);
  }

  v23 = v116;
  if ((v25 & 1) == 0)
  {
    CFRelease(ValueIfPresent);
  }

LABEL_65:
  v43 = FigCFDictionaryCreateMutableCopy();
  MutableCopy = v43;
  if (!v43)
  {
    goto LABEL_151;
  }

  v44 = theDict;
  theDict = v43;
  CFRetain(v43);
  if (v44)
  {
    CFRelease(v44);
  }

  xpc_dictionary_get_BOOL(a2, "ClientSDKVersion2025AndLater");
  FigCFDictionarySetBoolean();
  OUTLINED_FUNCTION_22_18();
  if (v9)
  {
    v74 = xpc_dictionary_get_uint64(a2, "FormatReader");
    if ((FigAssetUsesRemoteFormatReader(v74, v75, v76, v77, v78, v79, v80, v81) || FigAssetAllowsSandboxedParsingOptIn()) && !FigFormatReaderServerIsObjectIDLocallyServed(v74))
    {
      v72 = FigFormatReaderXPCRemoteCopyFormatReaderForObjectIDFromOtherProcess(v74, &v137, v82, v83, v84, v85, v86, v87);
      v94 = v118;
    }

    else
    {
      v72 = FigXPCFormatReaderServerCopyFormatReaderForID(v74, &v137);
      v94 = v118;
      if (v72)
      {
        goto LABEL_162;
      }
    }

    v95 = OUTLINED_FUNCTION_11_25(v72, v137, v88, v89, v90, v91, v92, v93, v109, key, v111, v112, v113, v3, uint64, xdict, v31, v117, v118, v120, allocator);
    v72 = FigAssetCreateWithFormatReader(v95, v96, v97, v98, v99);
    if (!v72)
    {
      OUTLINED_FUNCTION_4_54();
      v94 = "Create<FormatReaderAsset>";
      goto LABEL_108;
    }

    goto LABEL_162;
  }

  OUTLINED_FUNCTION_22_18();
  if (v9)
  {
    BlockBufferData = FigXPCMessageCopyCFData();
    if (BlockBufferData)
    {
      goto LABEL_152;
    }

    v94 = v118;
    if (v136)
    {
      v67 = OUTLINED_FUNCTION_11_25(BlockBufferData, v136, v61, v62, v63, v64, v65, v66, v109, key, v111, v112, v113, v3, uint64, xdict, v31, v117, v118, v120, allocator);
      v72 = FigAssetCreateWithMovieProxyData(v67, v68, v69, v70, v71);
      if (!v72)
      {
        OUTLINED_FUNCTION_4_54();
        v94 = "Create<MovieProxyAsset>";
        goto LABEL_108;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_41();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, key, v111);
    }

LABEL_162:
    v25 = v72;
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_22_18();
  if (v9)
  {
    BlockBufferData = FigXPCMessageCreateBlockBufferData();
    if (BlockBufferData)
    {
      goto LABEL_152;
    }

    if (v133)
    {
      int64 = xpc_dictionary_get_int64(a2, "FormatIdentifierType");
      BlockBufferData = FigXPCMessageCopyCFObject();
      if (!BlockBufferData)
      {
        v72 = FigAssetCreateWithBlockBuffer(allocator, v133, int64, v132, uint64, theDict, &v130);
        v94 = v118;
        if (!v72)
        {
          OUTLINED_FUNCTION_4_54();
          v94 = 0;
          goto LABEL_108;
        }

        goto LABEL_162;
      }

LABEL_152:
      v25 = BlockBufferData;
LABEL_153:
      v94 = v118;
      goto LABEL_103;
    }

LABEL_151:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_152;
  }

  OUTLINED_FUNCTION_22_18();
  if (!v9)
  {
    v31 = MutableCopy;
    v12 = v13;
    v94 = 0;
    MutableCopy = v118;
    goto LABEL_108;
  }

  value = 0;
  BlockBufferData = FigXPCMessageCopyCFURL();
  if (BlockBufferData)
  {
    goto LABEL_152;
  }

  if (!v138)
  {
    goto LABEL_151;
  }

  v46 = v23;
  IsPersistentURL = FigIsPersistentURL();
  if (IsPersistentURL && (OUTLINED_FUNCTION_9_26(), !FigMayAccessPersistentURLOnBehalfOfClientWithAuditToken()) || (CFDictionaryAddValue(MutableCopy, @"assetOption_ClientAuditToken", v13), assetXPCServer_SandboxRegistrationRetrieveFromMessageAndAssociateToURL(a2, "SandboxRegistrationForCreateURL", v138), OnlyFileOpeningPermittedForAuditToken = _CFURLIsFileURL(), OnlyFileOpeningPermittedForAuditToken) && (OnlyFileOpeningPermittedForAuditToken = FigCFURLGetFileStats(), !OnlyFileOpeningPermittedForAuditToken) && value >= 1 && (OUTLINED_FUNCTION_9_26(), OnlyFileOpeningPermittedForAuditToken = FigServer_IsReadOnlyFileOpeningPermittedForAuditToken(), !OnlyFileOpeningPermittedForAuditToken))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_41();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v25 = v108;
    v23 = v46;
    goto LABEL_153;
  }

  v55 = OUTLINED_FUNCTION_11_25(OnlyFileOpeningPermittedForAuditToken, v138, v49, v50, v51, v52, v53, v54, v109, key, v111, v112, v113, v3, uint64, xdict, v31, v117, v118, v120, allocator);
  v60 = FigAssetCreateWithURL(v55, v56, v57, v58, v59);
  v25 = v60;
  v94 = v119;
  if (IsPersistentURL && !v60)
  {
    OUTLINED_FUNCTION_4_54();
    OUTLINED_FUNCTION_9_26();
    v13 = v117;
    *(v117 + 32) = AssetPALoggingHelperCreateAccessInterval(v121, &token);
    v94 = "Create<URLAsset>";
    v23 = v46;
    goto LABEL_109;
  }

  if (v60)
  {
    v23 = v46;
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_4_54();
  v94 = "Create<URLAsset>";
  v23 = v46;
LABEL_108:
  v13 = v117;
LABEL_109:
  OUTLINED_FUNCTION_10_27();
  v100 = FigXPCServerAssociateObjectWithConnection();
  if (!v100)
  {
    v100 = FigSandboxAssertionCreateForPID();
    if (!v100)
    {
      v101 = FigOSTransactionCreate();
      *(v13 + 1) = v101;
      if (v101)
      {
        xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69615A0], v129);
        v25 = 0;
        v128 = 0;
        v129 = 0;
        OUTLINED_FUNCTION_18_18();
LABEL_113:
        DisposeServedAssetState(v102);
        goto LABEL_114;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_41();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, key, v111);
    }
  }

  v25 = v100;
  OUTLINED_FUNCTION_18_18();
LABEL_103:
  if (!v129)
  {
    v102 = v128;
    goto LABEL_113;
  }

  FigXPCServerDisassociateObjectWithConnection();
LABEL_114:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v138)
  {
    CFRelease(v138);
  }

  if (v130)
  {
    CFRelease(v130);
  }

  if (v137)
  {
    CFRelease(v137);
  }

  if (v136)
  {
    CFRelease(v136);
  }

  if (v133)
  {
    CFRelease(v133);
  }

  if (v132)
  {
    CFRelease(v132);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v127)
  {
    CFRelease(v127);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if ((v23 - 1) <= 0xFFFFFFFD)
  {
    FigMachPortReleaseSendRight_();
  }

  if (v126)
  {
    CFRelease(v126);
  }

  return v25;
}

uint64_t HandleAssetNoReplyMessage(uint64_t a1, void *a2)
{
  v7 = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

void HandleAssetGetStatusOfValueForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, int64_t value, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  OUTLINED_FUNCTION_5_48();
  v23 = CFGetTypeID(v22);
  if (v23 != FigAssetGetTypeID())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_12();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (a12)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        xpc_dictionary_set_uint64(v21, "LoadStatus", SHIDWORD(value));
        xpc_dictionary_set_int64(v21, "LoadingError", value);
        FigXPCMessageSetCFError();
      }
    }
  }

  else
  {
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_7:
  if (a12)
  {
    CFRelease(a12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void HandleAssetLoadValueAsyncForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, CFTypeRef cf, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  v23 = OUTLINED_FUNCTION_24_13(v22);
  if (v23 != FigAssetGetTypeID())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_21();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (cf)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        OUTLINED_FUNCTION_4_36();
        xpc_dictionary_set_BOOL(v21, "AlreadyLoaded", v26);
      }
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

uint64_t HandleAssetLoadValuesAsyncForTrackPropertiesMessage(uint64_t a1, CFTypeRef cf, void *a3, void *a4)
{
  memset(value, 0, sizeof(value));
  HIBYTE(v25) = 0;
  v7 = CFGetTypeID(cf);
  if (v7 != FigAssetGetTypeID())
  {
    goto LABEL_29;
  }

  v8 = FigXPCMessageCopyCFArray();
  if (v8)
  {
LABEL_30:
    v17 = v8;
    goto LABEL_26;
  }

  v9 = xpc_dictionary_get_BOOL(a3, "isBatch");
  v10 = xpc_dictionary_get_value(a3, "Tracks");
  if (!v10)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  count = xpc_array_get_count(v10);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
LABEL_29:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  v14 = Mutable;
  if (count)
  {
    v15 = 0;
    while (1)
    {
      xpc_array_get_uint64(v11, v15);
      cfa = 0;
      v16 = FigXPCServerLookupAndRetainAssociatedObject();
      if (!v16)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v25, value[1]);
      }

      v17 = v16;
      if (v16)
      {
        break;
      }

      CFArrayAppendValue(v14, 0);
      CFRelease(0);
      if (count == ++v15)
      {
        goto LABEL_14;
      }
    }

LABEL_24:
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_14:
  v18 = *&value[1];
  if (v9)
  {
    v19 = value;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v20)
  {
    v17 = 4294954514;
    goto LABEL_24;
  }

  v21 = v20(cf, v14, v18, &v25 + 3, v19);
  if (v21)
  {
    v17 = v21;
    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v14);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_4_36();
  xpc_dictionary_set_BOOL(a4, "AlreadyLoaded", v22);
  if (v9)
  {
    xpc_dictionary_set_uint64(a4, "BatchID", value[0]);
  }

  v17 = 0;
  if (v14)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (*&value[1])
  {
    CFRelease(*&value[1]);
  }

  return v17;
}

uint64_t HandleAssetSetCookiesMessage(const void *a1, void *a2)
{
  length = 0;
  v15 = 0;
  cf = 0;
  v3 = CFGetTypeID(a1);
  if (v3 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, cf, length);
    v7 = v11;
    goto LABEL_9;
  }

  FigAssetGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_9;
  }

  v7 = v6(v5, @"assetProperty_StorageSession", *MEMORY[0x1E695E480], &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v7 = 0;
      goto LABEL_9;
    }

    FigXPCMessageCopyCFURL();
    data = xpc_dictionary_get_data(a2, "CookieData", &length);
    FigRemote_SetSerializedCookies(cf, v15, data, length);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_9:
  if (v15)
  {
    CFRelease(v15);
  }

  return v7;
}

double HandleAssetSetHTTPAuthMessage(const void *a1, void *a2)
{
  cf = 0;
  length = 0;
  v3 = CFGetTypeID(a1);
  if (v3 == FigAssetGetTypeID())
  {
    FigAssetGetCMBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v8 = v6(v5, @"assetProperty_StorageSession", *MEMORY[0x1E695E480], &cf);
      v9 = cf;
      if (!v8)
      {
        if (!cf)
        {
          return result;
        }

        data = xpc_dictionary_get_data(a2, "HTTPAuthData", &length);
        FigRemote_SetSerializedAuth(cf, data, length);
        v9 = cf;
      }

      if (v9)
      {
        CFRelease(v9);
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

uint64_t HandleAssetDefineMacroPropertyMessage(const void *a1)
{
  v1 = OUTLINED_FUNCTION_23_20(a1);
  if (v1 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, cf, v10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_16();
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_7;
  }

  v2 = FigXPCMessageCopyCFArray();
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 2uLL && v3[11])
  {
    v4 = OUTLINED_FUNCTION_69_0();
    v2 = v5(v4);
LABEL_7:
    v6 = v2;
    goto LABEL_9;
  }

  v6 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t HandleAssetDefineTrackMacroPropertyMessage(const void *a1)
{
  v1 = OUTLINED_FUNCTION_23_20(a1);
  if (v1 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, cf, v10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_16();
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_7;
  }

  v2 = FigXPCMessageCopyCFArray();
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 2uLL && v3[12])
  {
    v4 = OUTLINED_FUNCTION_69_0();
    v2 = v5(v4);
LABEL_7:
    v6 = v2;
    goto LABEL_9;
  }

  v6 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t HandleAssetDefineCrossTrackMacroPropertyMessage(const void *a1)
{
  v1 = OUTLINED_FUNCTION_23_20(a1);
  if (v1 != FigAssetGetTypeID())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, cf, v10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_16();
  v2 = FigXPCMessageCopyCFString();
  if (v2)
  {
    goto LABEL_7;
  }

  v2 = FigXPCMessageCopyCFArray();
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *(CMBaseObjectGetVTable() + 16);
  if (*v3 >= 2uLL && v3[13])
  {
    v4 = OUTLINED_FUNCTION_69_0();
    v2 = v5(v4);
LABEL_7:
    v6 = v2;
    goto LABEL_9;
  }

  v6 = 4294954514;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

void HandleAssetTrackCopyPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, CFTypeRef a11, CFTypeRef a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  a11 = 0;
  a12 = 0;
  cf = 0;
  v28 = CFGetTypeID(v26);
  if (v28 != FigAssetTrackGetTypeID())
  {
    goto LABEL_19;
  }

  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_12;
  }

  if (a12)
  {
    v29 = xpc_dictionary_get_BOOL(v25, "RequestBlockageWarning");
    v30 = a12;
    v31 = *MEMORY[0x1E695E480];
    if (v29)
    {
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v32)
      {
        goto LABEL_12;
      }

      v33 = v32(v27, v30, v31, &cf, &a11);
      if (a11)
      {
        FigXPCMessageSetCFString();
      }
    }

    else
    {
      FigAssetTrackGetCMBaseObject();
      v35 = v34;
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v36)
      {
        goto LABEL_12;
      }

      v33 = v36(v35, v30, v31, &cf);
    }

    if (!v33)
    {
      assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary(a12, cf, v23);
    }
  }

  else
  {
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  OUTLINED_FUNCTION_860();
}

void HandleAssetTrackGetStatusOfValueForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, int64_t value, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_5();
  v21 = v20;
  OUTLINED_FUNCTION_5_48();
  v23 = CFGetTypeID(v22);
  if (v23 != FigAssetTrackGetTypeID())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_12();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (a12)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 8))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        xpc_dictionary_set_uint64(v21, "LoadStatus", SHIDWORD(value));
        xpc_dictionary_set_int64(v21, "LoadingError", value);
        FigXPCMessageSetCFError();
      }
    }
  }

  else
  {
LABEL_12:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_7:
  if (a12)
  {
    CFRelease(a12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void HandleAssetTrackLoadValueAsyncForPropertyMessage(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, CFTypeRef cf, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_653();
  v23 = OUTLINED_FUNCTION_24_13(v22);
  if (v23 != FigAssetTrackGetTypeID())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_21();
  if (FigXPCMessageCopyCFString())
  {
    goto LABEL_7;
  }

  if (cf)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v24 = OUTLINED_FUNCTION_517();
      if (!v25(v24))
      {
        OUTLINED_FUNCTION_4_36();
        xpc_dictionary_set_BOOL(v21, "AlreadyLoaded", v26);
      }
    }
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_652();
}

double assetXPCServer_SerializeContentKeyBossIntoXPCDictionary(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t value, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  v19 = v18;
  v21 = v20;
  v23 = CFGetTypeID(v22);
  if (v23 == FigContentKeyBossGetTypeID(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_15_21();
    if (!FigContentKeyBossServerGetIDByAssociatingWithClientConnection(v25, v21, v26))
    {
      xpc_dictionary_set_uint64(v19, *MEMORY[0x1E69615A0], 0);
    }

    OUTLINED_FUNCTION_652();
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_652();

    return FigSignalErrorAtGM(v28);
  }

  return result;
}

uint64_t assetXPCServer_SerializeHLSAlternatesIntoXPCDictionary(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_30_11();
  v5 = FigAlternateCopyArrayOfAlternatesAsXPCObject(v3, v4);
  if (!v5)
  {
    xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], value);
  }

  FigXPCRelease();
  return v5;
}

uint64_t assetXPCServer_SerializeHLSSessionKeysIntoXPCDictionary(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_30_11();
  v5 = FigContentKeyBossClientServerXPC_CopySerializedKeySpecifiers(v3, v4);
  if (!v5)
  {
    xpc_dictionary_set_value(a2, *MEMORY[0x1E69615C8], value);
  }

  FigXPCRelease();
  return v5;
}

void FigXPCAssetServerAssociateCopiedNeighborAsset_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreateServedAssetState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigXPCAssetServerCopyAssetForID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAssetServerStart_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void HandleAssetCopyChapterDataMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double assetXPCServer_NotificationFilter_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double assetXPCServer_NotificationFilter_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double assetXPCServer_NotificationFilter_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double assetXPCServer_NotificationFilter_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void assetXPCServer_SerializeAssetTrackPropertyValueIntoXPCDictionary_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_30_11();
  BinaryPListDataFromMetadataItemArray = FigRemote_CreateBinaryPListDataFromMetadataItemArray(v4, v5);
  if (BinaryPListDataFromMetadataItemArray)
  {
    v7 = BinaryPListDataFromMetadataItemArray;
  }

  else
  {
    v7 = FigXPCMessageSetCFData();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  *a3 = v7;
}

void assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void assetXPCServer_SerializeTracksArrayIntoXPCDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void videoContainerLayer_handleVideoReceiverNotification(uint64_t a1, void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [a2 copyVideoReceiver];
  if (a2 && a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, cf, v14);
      if (!v8)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (FigCFEqual())
    {
      if (CFEqual(a3, @"STSLabelUpdated"))
      {
        cf = 0;
        FigVideoReceiverGetCMBaseObject();
        v10 = v9;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v11)
        {
          if (!v11(v10, @"STSLabel", *MEMORY[0x1E695E480], &cf))
          {
            [a2 setSTSLabel:cf];
            if (cf)
            {
              CFRelease(cf);
              if (!v8)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }
        }
      }

      else if (CFEqual(a3, @"IsReadyForDisplayChanged"))
      {
        [a2 setIsReadyForDisplay:*MEMORY[0x1E695E4D0] == FigCFDictionaryGetValue()];
      }
    }
  }

  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

LABEL_15:
  objc_autoreleasePoolPop(v7);
}

uint64_t FCSupport_CopyMutableChapterFromTextSampleBBuf(OpaqueCMBlockBuffer *a1, int a2, int a3, __CFDictionary **a4)
{
  totalLengthOut = 0;
  dataPointerOut = 0;
  cf = 0;
  if (a2 != 1952807028 && a2 != 1954034535)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_20:
    v24 = Contiguous;
    v25 = 0;
LABEL_21:
    Mutable = 0;
    goto LABEL_22;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(a1, 0, 0);
  v10 = MEMORY[0x1E695E480];
  if (IsRangeContiguous)
  {
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    cf = v11;
  }

  else
  {
    CMBlockBufferGetDataLength(a1);
    OUTLINED_FUNCTION_197();
    Contiguous = CMBlockBufferCreateContiguous(v13, v14, v15, v16, v17, v18, 0, v19);
    if (Contiguous)
    {
      goto LABEL_20;
    }

    v11 = 0;
  }

  CMBlockBufferGetDataPointer(v11, 0, 0, &totalLengthOut, &dataPointerOut);
  v20 = a2 != 1954034535 || totalLengthOut > 1;
  if (!v20 || (v21 = dataPointerOut, v22 = bswap32(*dataPointerOut) >> 16, v23 = v22 + 2, v22 + 2 > totalLengthOut))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_20;
  }

  v28 = *v10;
  Mutable = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_73;
  }

  if (v22 + 10 < totalLengthOut)
  {
    v49 = 0;
    OUTLINED_FUNCTION_7_31();
    while (1)
    {
      v32 = v23;
      v33 = &dataPointerOut[v23];
      v34 = bswap32(*&dataPointerOut[v23]);
      v23 = (v34 + v23);
      if (v34 < 9 || v29 < v23)
      {
        goto LABEL_73;
      }

      v36 = *(v33 + 1);
      if (a2 == v30 && v36 == v31)
      {
        if (v29 - v32 <= 0xD)
        {
          goto LABEL_73;
        }

        v38 = v33[12];
        if (v38 + 13 > v34)
        {
          goto LABEL_73;
        }

        v39 = CFStringCreateWithBytes(v28, v33 + 13, v38, 0x8000100u, 0);
        if (v39)
        {
          v40 = v39;
          CFDictionaryAddValue(Mutable, @"ChapterHREFURL", v39);
          CFRelease(v40);
        }

        OUTLINED_FUNCTION_7_31();
      }

      else if (v36 == 1684237925)
      {
        if (v29 - v32 <= 0xB)
        {
          goto LABEL_73;
        }

        v49 = bswap32(*(v33 + 2));
      }

      v29 = totalLengthOut;
      if (v23 + 8 >= totalLengthOut)
      {
        goto LABEL_52;
      }
    }
  }

  v49 = 0;
LABEL_52:
  if (a2 == 1954034535 || v49 == 256)
  {
    if (v22 >= 2)
    {
      v41 = (v21 + 2);
      v45 = v21[2];
      if (v45 != 255)
      {
        if (v45 != 254 || v21[3] != 255)
        {
          goto LABEL_60;
        }

LABEL_72:
        v42 = v28;
        v43 = v22;
        v44 = 256;
        v46 = 1;
        goto LABEL_62;
      }

      if (v21[3] == 254)
      {
        goto LABEL_72;
      }
    }

LABEL_60:
    v41 = (v21 + 2);
    v42 = v28;
    v43 = v22;
    v44 = 134217984;
    goto LABEL_61;
  }

  if (a2 == 1952807028)
  {
    v41 = (v21 + 2);
    v42 = v28;
    v43 = v22;
    v44 = v49;
LABEL_61:
    v46 = 0;
LABEL_62:
    v25 = CFStringCreateWithBytes(v42, v41, v43, v44, v46);
    if (v25)
    {
      if (a3)
      {
        v47 = @"ChapterHREFText";
      }

      else
      {
        v47 = @"ChapterName";
      }

      CFDictionaryAddValue(Mutable, v47, v25);
    }

    v24 = 0;
    *a4 = Mutable;
    goto LABEL_21;
  }

LABEL_73:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  v24 = v48;
  v25 = 0;
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v24;
}

uint64_t fcSupport_CreateMutableChapterTimesArrayForTrackCommon(uint64_t a1, uint64_t a2, int a3, CFArrayRef *a4)
{
  valuePtr = 0;
  v168[0] = 0;
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v164 = 0;
  memset(&v162, 0, sizeof(v162));
  memset(&v161, 0, sizeof(v161));
  v159 = 0uLL;
  epoch = 0;
  v6 = *MEMORY[0x1E6960CC0];
  *&v158.value = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v158.epoch = v7;
  memset(&v157, 0, sizeof(v157));
  memset(v155, 0, sizeof(v155));
  desc = 0;
  if (!a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v114, v119, v125);
    goto LABEL_106;
  }

  *theArray = v6;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    goto LABEL_72;
  }

  v13 = v12(a1, a2, v168, &valuePtr + 4);
  if (v13)
  {
    goto LABEL_106;
  }

  if (a3 == 2)
  {
    v14 = 1986618469;
  }

  else
  {
    v14 = 1952807028;
  }

  if (HIDWORD(valuePtr) != v14)
  {
    Mutable = 0;
    v26 = 0;
    goto LABEL_73;
  }

  FigTrackReaderGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17)
  {
    goto LABEL_72;
  }

  v18 = *MEMORY[0x1E695E480];
  v13 = v17(v16, @"EditCursorService", *MEMORY[0x1E695E480], &v164);
  if (v13)
  {
    goto LABEL_106;
  }

  v19 = v168[0];
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v20)
  {
    goto LABEL_72;
  }

  v13 = v20(v19, &v166);
  if (v13)
  {
LABEL_106:
    v26 = v13;
    Mutable = 0;
    goto LABEL_73;
  }

  cf.start.value = 0;
  v21 = v166;
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v22)
  {
    ValueAtIndex = (v22(v21, &cf) == -12842);
  }

  else
  {
    ValueAtIndex = 0;
  }

  if (cf.start.value)
  {
    CFRelease(cf.start.value);
  }

  if (ValueAtIndex)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_19:
    OUTLINED_FUNCTION_3_54();
    *a4 = v25;
    goto LABEL_90;
  }

  v27 = v164;
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v28)
  {
LABEL_72:
    Mutable = 0;
    v26 = 4294954514;
    goto LABEL_73;
  }

  *&cf.start.value = *theArray;
  cf.start.epoch = v7;
  v13 = v28(v27, &cf, &v163);
  if (v13)
  {
    goto LABEL_106;
  }

  v24 = 0;
  theArray[0] = 0;
  v4 = &v157;
  Mutable = v155;
  v29 = MEMORY[0x1E695E4D0];
  if (a3 != 1)
  {
    v29 = MEMORY[0x1E695E4C0];
  }

  v120 = 821;
  v126 = *v29;
  while (1)
  {
    ValueAtIndex = v163;
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v30)
    {
LABEL_88:
      OUTLINED_FUNCTION_3_54();
LABEL_89:
      v26 = 4294954514;
      goto LABEL_90;
    }

    v31 = v30(ValueAtIndex, v155);
    if (v31)
    {
      goto LABEL_117;
    }

    if (v155[0].start.flags)
    {
      break;
    }

    v26 = 0;
LABEL_50:
    ValueAtIndex = v163;
    v72 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v72 || v72(ValueAtIndex, 1))
    {
      v25 = theArray[0];
      if (theArray[0])
      {
        dictionaryRepresentation = 0;
        FigFormatReaderGetFigBaseObject();
        ValueAtIndex = v90;
        v91 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v91)
        {
          v91(ValueAtIndex, @"Duration", v18, &dictionaryRepresentation);
          if (dictionaryRepresentation)
          {
            memset(&cf, 0, 24);
            memset(&time2, 0, 24);
            memset(&rhs, 0, sizeof(rhs));
            memset(&v151, 0, sizeof(v151));
            Count = CFArrayGetCount(theArray[0]);
            ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], Count - 1);
            CMTimeMakeFromDictionary(&rhs, dictionaryRepresentation);
            if (dictionaryRepresentation)
            {
              CFRelease(dictionaryRepresentation);
              dictionaryRepresentation = 0;
            }

            v93 = CFDictionaryGetValue(ValueAtIndex, @"ChapterTime");
            CMTimeMakeFromDictionary(&v151, v93);
            v94 = CFDictionaryGetValue(ValueAtIndex, @"ChapterDuration");
            CMTimeMakeFromDictionary(&time2.start, v94);
            lhs = rhs;
            start = v151;
            v95 = CMTimeSubtract(&cf.start, &lhs, &start);
            OUTLINED_FUNCTION_11_26(v95, v96, v97, v98, v99, v100, v101, v102, v114, v120, v126, value, theArray[0], theArray[1], start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, *&cf.start.value);
            start = time2.start;
            v103 = CMTimeCompare(&lhs, &start);
            if (v103)
            {
              OUTLINED_FUNCTION_11_26(v103, v104, v105, v106, v107, v108, v109, v110, v118, v124, v130, valuec, theArrayc, theArray_8b, start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, *&cf.start.value);
              v111 = CMTimeCopyAsDictionary(&lhs, v18);
              CFDictionarySetValue(ValueAtIndex, @"ChapterDuration", v111);
              if (v111)
              {
                CFRelease(v111);
              }
            }
          }
        }
      }

      goto LABEL_19;
    }
  }

  ValueAtIndex = v166;
  OUTLINED_FUNCTION_8_23(v31, v32, v33, v34, v35, v36, v37, v38, v114, v120, v126, value, theArray[0], theArray[1], start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v151.value, *&v151.timescale, v151.epoch, v152, rhs.value, *&rhs.timescale, rhs.epoch, desc, *&v155[0].start.value);
  if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
  {
    goto LABEL_88;
  }

  *&cf.start.value = *&time2.start.value;
  cf.start.epoch = time2.start.epoch;
  OUTLINED_FUNCTION_197();
  v31 = v39();
  if (v31)
  {
    goto LABEL_117;
  }

  if (v24)
  {
LABEL_37:
    v42 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 40);
    if (!v42)
    {
      goto LABEL_88;
    }

    v31 = v42(ValueAtIndex, &v162);
    if (v31)
    {
      goto LABEL_117;
    }

    v43 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 56);
    if (!v43)
    {
      goto LABEL_88;
    }

    v31 = v43(ValueAtIndex, &v159);
    if (v31)
    {
      goto LABEL_117;
    }

    *&cf.start.value = *&v155[0].start.value;
    cf.start.epoch = v155[0].start.epoch;
    time2.start = v162;
    v44 = CMTimeCompare(&cf.start, &time2.start);
    if (v44 >= 1)
    {
      OUTLINED_FUNCTION_8_23(v44, v45, v46, v47, v48, v49, v50, v51, v115, v121, v127, valuea, theArraya, theArray_8, start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, 0, 0, 0, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v151.value, *&v151.timescale, v151.epoch, v152, rhs.value, *&rhs.timescale, rhs.epoch, desc, *&v155[0].start.value);
      rhs = v162;
      CMTimeSubtract(&cf.start, &time2.start, &rhs);
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_13_18(cf.start.epoch, v116, v122, v128, valued, theArrayd, theArray_8c, start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, cf.start.value, *&cf.start.timescale, v151.epoch, v152, rhs.value);
      v159 = *&time2.start.value;
      epoch = time2.start.epoch;
    }

    OUTLINED_FUNCTION_9_27();
    time2.start = v155[1].duration;
    CMTimeAdd(&v157, &cf.start, &time2.start);
    v161 = v155[1].start;
    OUTLINED_FUNCTION_9_27();
    v60 = OUTLINED_FUNCTION_4_55(v52, v53, v54, v55, v56, v57, v58, v59, v115, v121, v127, valuea, theArraya, theArray_8, start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v151.value, *&v151.timescale, v151.epoch, v152, rhs.value, *&rhs.timescale, rhs.epoch, desc, v155[0].start.value, *&v155[0].start.timescale, v155[0].start.epoch, v155[0].duration.value, *&v155[0].duration.timescale, v155[0].duration.epoch, v155[1].start.value, *&v155[1].start.timescale, v155[1].start.epoch, v155[1].duration.value, *&v155[1].duration.timescale, v155[1].duration.epoch, v156, v157.value, *&v157.timescale, v157.epoch);
    valueb = v24;
    v26 = 0;
    if (v60 < 0)
    {
      while (1)
      {
        v151.value = 0;
        OUTLINED_FUNCTION_12_24();
        cf = v155[0];
        time2 = v155[1];
        CMTimeMapDurationFromRangeToRange(&v158, &rhs, &cf, &time2);
        Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          v4 = 0;
          ValueAtIndex = 0;
          goto LABEL_115;
        }

        if (!theArrayb)
        {
          theArrayb = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
          if (!theArrayb)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_2_69();
        v4 = CMTimeCopyAsDictionary(&cf.start, v18);
        if (!v4)
        {
          ValueAtIndex = 0;
          v112 = 830;
          goto LABEL_114;
        }

        cf.start = v158;
        ValueAtIndex = CMTimeCopyAsDictionary(&cf.start, v18);
        if (!ValueAtIndex)
        {
          v112 = 832;
          goto LABEL_114;
        }

        cf.start = v162;
        v73 = CMTimeCopyAsDictionary(&cf.start, v18);
        if (!v73)
        {
          v112 = 834;
          goto LABEL_114;
        }

        v74 = v73;
        CFDictionaryAddValue(Mutable, @"ChapterTime", v4);
        CFDictionaryAddValue(Mutable, @"ChapterDuration", ValueAtIndex);
        CFDictionaryAddValue(Mutable, @"ChapterSampleMediaPTS", v74);
        v75 = Mutable;
        if (a3 == 2)
        {
          v76 = @"ChapterImageMediaSubType";
          v77 = valueb;
        }

        else
        {
          CFDictionaryAddValue(Mutable, @"ChapterTextSubType", valueb);
          v75 = Mutable;
          v76 = @"ChapterHREF";
          v77 = v129;
        }

        CFDictionaryAddValue(v75, v76, v77);
        CFArrayAppendValue(theArrayb, Mutable);
        CFRelease(v4);
        CFRelease(ValueAtIndex);
        CFRelease(v74);
        CFRelease(Mutable);
        v78 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 176);
        if (!v78 || v78(ValueAtIndex, 1, &v151) || v151.value != 1)
        {
          v24 = valueb;
          v4 = &v157;
          Mutable = v155;
          goto LABEL_44;
        }

        v79 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 40);
        v24 = valueb;
        v4 = &v157;
        Mutable = v155;
        if (!v79)
        {
          goto LABEL_88;
        }

        v31 = v79(ValueAtIndex, &v162);
        if (v31)
        {
          goto LABEL_117;
        }

        v80 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 56);
        if (!v80)
        {
          goto LABEL_88;
        }

        v26 = v80(ValueAtIndex, &v159);
        if (v26)
        {
          Mutable = 0;
          goto LABEL_95;
        }

        OUTLINED_FUNCTION_2_69();
        time2.start = v158;
        CMTimeAdd(&v161, &cf.start, &time2.start);
        OUTLINED_FUNCTION_2_69();
        if ((OUTLINED_FUNCTION_4_55(v81, v82, v83, v84, v85, v86, v87, v88, v117, v123, v129, valueb, theArrayb, theArray_8a, start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v151.value, *&v151.timescale, v151.epoch, v152, rhs.value, *&rhs.timescale, rhs.epoch, desc, v155[0].start.value, *&v155[0].start.timescale, v155[0].start.epoch, v155[0].duration.value, *&v155[0].duration.timescale, v155[0].duration.epoch, v155[1].start.value, *&v155[1].start.timescale, v155[1].start.epoch, v155[1].duration.value, *&v155[1].duration.timescale, v155[1].duration.epoch, v156, v157.value, *&v157.timescale, v157.epoch) & 0x80000000) == 0)
        {
          goto LABEL_44;
        }
      }

      v4 = 0;
      ValueAtIndex = 0;
      v112 = 825;
LABEL_114:
      LODWORD(v123) = v112;
LABEL_115:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v123, v129);
      v26 = v113;
      v24 = valueb;
      goto LABEL_90;
    }

LABEL_44:
    OUTLINED_FUNCTION_2_69();
    if (OUTLINED_FUNCTION_4_55(v61, v62, v63, v64, v65, v66, v67, v68, v117, v123, v129, valueb, theArrayb, theArray_8a, start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, *&time2.start.value, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, cf.start.value, *&cf.start.timescale, cf.start.epoch, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v151.value, *&v151.timescale, v151.epoch, v152, rhs.value, *&rhs.timescale, rhs.epoch, desc, v155[0].start.value, *&v155[0].start.timescale, v155[0].start.epoch, v155[0].duration.value, *&v155[0].duration.timescale, v155[0].duration.epoch, v155[1].start.value, *&v155[1].start.timescale, v155[1].start.epoch, v155[1].duration.value, *&v155[1].duration.timescale, v155[1].duration.epoch, v156, v157.value, *&v157.timescale, v157.epoch) >= 1)
    {
      v69 = CFArrayGetCount(theArray[0]);
      v70 = CFArrayGetValueAtIndex(theArray[0], v69 - 1);
      *&rhs.timescale = *&v161.timescale;
      rhs.epoch = v161.epoch;
      OUTLINED_FUNCTION_13_18(v157.epoch, v114, v120, v126, value, theArray[0], theArray[1], start.value, *&start.timescale, start.epoch, v146, lhs.value, *&lhs.timescale, lhs.epoch, dictionaryRepresentation, time2.start.value, *&time2.start.timescale, time2.start.epoch, time2.duration.value, *&time2.duration.timescale, time2.duration.epoch, 0, 0, 0, cf.duration.value, *&cf.duration.timescale, cf.duration.epoch, v157.value, *&v157.timescale, v151.epoch, v152, v161.value);
      rhs = v158;
      CMTimeSubtract(&cf.start, &rhs, &time2.start);
      *&time2.start.value = *&cf.start.value;
      time2.start.epoch = cf.start.epoch;
      v71 = CMTimeCopyAsDictionary(&time2.start, v18);
      CFDictionarySetValue(v70, @"ChapterDuration", v71);
      if (v71)
      {
        CFRelease(v71);
      }

      v24 = value;
    }

    if (v165)
    {
      CFRelease(v165);
      v165 = 0;
    }

    goto LABEL_50;
  }

  v40 = *(*(OUTLINED_FUNCTION_6_43() + 16) + 160);
  if (!v40)
  {
    OUTLINED_FUNCTION_3_54();
    v24 = 0;
    goto LABEL_89;
  }

  v41 = v40(ValueAtIndex, &desc);
  if (v41)
  {
    v26 = v41;
    OUTLINED_FUNCTION_3_54();
    v24 = 0;
    goto LABEL_90;
  }

  LODWORD(valuePtr) = CMFormatDescriptionGetMediaSubType(desc);
  if (desc)
  {
    CFRelease(desc);
    desc = 0;
  }

  v24 = CFNumberCreate(v18, kCFNumberSInt32Type, &valuePtr);
  if (v24)
  {
    goto LABEL_37;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_5();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v115, v121, v127);
LABEL_117:
  v26 = v31;
  OUTLINED_FUNCTION_3_54();
LABEL_90:
  if (v4)
  {
    CFRelease(v4);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v24)
  {
LABEL_95:
    CFRelease(v24);
  }

LABEL_73:
  if (desc)
  {
    CFRelease(desc);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v163)
  {
    CFRelease(v163);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v168[0])
  {
    CFRelease(v168[0]);
  }

  return v26;
}

uint64_t FCSupport_PopulateChapterTitleDetail(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  v48 = 0;
  v49[0] = 0;
  cf = 0;
  v47 = 0;
  theDicta = 0;
  valuePtr = 0;
  memset(&v43, 0, sizeof(v43));
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  if (!a1 || !a2 || !theDict)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(theDict, @"ChapterSampleMediaPTS");
  v9 = CFDictionaryGetValue(theDict, @"ChapterTextSubType");
  v10 = 0;
  if (Value && v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
    CMTimeMakeFromDictionary(&v43, Value);
    v11 = CFDictionaryGetValue(theDict, @"ChapterHREF");
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12(a1, a2, &v42, 0);
    if (!v13)
    {
      v14 = v42;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v15)
      {
        goto LABEL_27;
      }

      v13 = v15(v14, &v41);
      if (!v13)
      {
        v37 = v43.value;
        VTable = CMBaseObjectGetVTable();
        v27 = *(VTable + 16);
        v26 = VTable + 16;
        if (!*(v27 + 8))
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_5_49(v26, v17, v18, v19, v20, v21, v22, v23, v24, v25, v37);
        OUTLINED_FUNCTION_197();
        v13 = v28();
        if (!v13)
        {
          v29 = *(*(CMBaseObjectGetVTable() + 16) + 144);
          if (!v29)
          {
            goto LABEL_27;
          }

          v13 = v29(v40, v49, &v48, &v38, &v39);
          if (!v13)
          {
            v30 = v38;
            if (v38)
            {
              goto LABEL_15;
            }

            v34 = v39;
            if (v39)
            {
              v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (!v35)
              {
                goto LABEL_27;
              }

              v13 = v35(a3, v34, 0, 0, *MEMORY[0x1E695E480], &v38);
              if (!v13)
              {
                v30 = v38;
LABEL_15:
                v31 = v48;
                v32 = v49[0];
                v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v33)
                {
                  v13 = v33(v30, v31, v32, &cf, &v47);
                  if (!v13)
                  {
                    if (v47 != v48)
                    {
LABEL_22:
                      v10 = 0;
                      goto LABEL_28;
                    }

                    v13 = FCSupport_CopyMutableChapterFromTextSampleBBuf(cf, valuePtr, v11 == *MEMORY[0x1E695E4D0], &theDicta);
                    if (!v13)
                    {
                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      cf = 0;
                      CFDictionaryRemoveValue(theDict, @"ChapterSampleMediaPTS");
                      CFDictionaryRemoveValue(theDict, @"ChapterTextSubType");
                      CFDictionaryRemoveValue(theDict, @"ChapterHREF");
                      CFDictionaryApplyFunction(theDicta, FCSupport_copyChapterInfo, theDict);
                      goto LABEL_22;
                    }
                  }

                  goto LABEL_44;
                }

LABEL_27:
                v10 = 4294954514;
                goto LABEL_28;
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_5();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }
          }
        }
      }
    }

LABEL_44:
    v10 = v13;
  }

LABEL_28:
  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (theDicta)
  {
    CFRelease(theDicta);
  }

  return v10;
}

uint64_t FCSupport_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, CFDataRef *a5, void *a6)
{
  v57[0] = 0;
  v55 = 0;
  v56 = 0;
  memset(&v54, 0, sizeof(v54));
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  cf = 0;
  v49 = 0;
  if (!a1 || !a3 || !theDict || !a5 || (Value = CFDictionaryGetValue(theDict, @"ChapterSampleMediaPTS")) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  CMTimeMakeFromDictionary(&v54, Value);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = v12(a1, a3, &v53, 0);
  if (v13)
  {
    goto LABEL_50;
  }

  v14 = v53;
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v15)
  {
    goto LABEL_35;
  }

  v13 = v15(v14, &v52);
  if (v13)
  {
    goto LABEL_50;
  }

  v47 = v54.value;
  VTable = CMBaseObjectGetVTable();
  v27 = *(VTable + 16);
  v26 = VTable + 16;
  if (!*(v27 + 8))
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_5_49(v26, v17, v18, v19, v20, v21, v22, v23, v24, v25, v47);
  OUTLINED_FUNCTION_197();
  v13 = v28();
  if (v13)
  {
    goto LABEL_50;
  }

  if (a6)
  {
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (!v29)
    {
      goto LABEL_35;
    }

    v13 = v29(v51, &cf);
    if (v13)
    {
      goto LABEL_50;
    }
  }

  v30 = v51;
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v31)
  {
    goto LABEL_35;
  }

  v13 = v31(v30, v57, &v56, &v49, &v50);
  if (v13)
  {
LABEL_50:
    v43 = v13;
    goto LABEL_36;
  }

  if (v49)
  {
    v32 = *MEMORY[0x1E695E480];
    goto LABEL_19;
  }

  v44 = v50;
  if (!v50)
  {
    goto LABEL_51;
  }

  v45 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v45)
  {
LABEL_35:
    v43 = 4294954514;
    goto LABEL_36;
  }

  v32 = *MEMORY[0x1E695E480];
  v13 = v45(a2, v44, 0, 0, *MEMORY[0x1E695E480], &v49);
  if (v13)
  {
    goto LABEL_50;
  }

LABEL_19:
  v33 = MEMORY[0x19A8CC720](v32, v56, 1700248151, 0);
  if (!v33)
  {
LABEL_51:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  v34 = v33;
  v35 = v49;
  v36 = v56;
  v37 = v57[0];
  v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v38)
  {
    v43 = 4294954514;
LABEL_30:
    CFAllocatorDeallocate(v32, v34);
    goto LABEL_36;
  }

  v39 = v38(v35, v36, v37, v34, &v55);
  if (v39)
  {
LABEL_54:
    v43 = v39;
    goto LABEL_30;
  }

  if (v55 != v56 || (v40 = CFDataCreateWithBytesNoCopy(v32, v34, v55, v32)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  v41 = v40;
  if (a6)
  {
    v42 = cf;
    if (cf)
    {
      v42 = CFRetain(cf);
    }

    *a6 = v42;
  }

  v43 = 0;
  *a5 = v41;
LABEL_36:
  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v43;
}

void fcSupport_GetListOfChapterTrackIDsForMediaType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FCSupport_CopyChapterTimesForChapterGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FCSupport_CopyChapterTimesForChapterGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FCSupport_CopyChapterTimesForChapterGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FCSupport_CopyChapterTimeRangesForChapterGroup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FCSupport_CopyChapterTimeRangesForChapterGroup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FCSupport_CopyChapterTimeRangesForChapterGroup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t IFFParseByteStreamAndCreateItemInformation(char a1, const void *a2, void *a3)
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  if (a1)
  {
    LOBYTE(v19) = 1;
  }

  v17 = 0uLL;
  v18 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v12 = 0uLL;
  v5 = FigAtomStreamInitWithByteStream();
  if (v5)
  {
    goto LABEL_23;
  }

  IFFParseChildAtoms(&v12, 3, IFFParseByteStreamAndCreateItemInformation_atomDispatch, &v19);
  if (!*(&v19 + 1))
  {
    v7 = v6;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  if (!*(&v19 + 1))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, DWORD2(v12), v13);
LABEL_23:
    v7 = v5;
    goto LABEL_13;
  }

  v8 = CFRetain(a2);
  v9 = *(&v19 + 1);
  *(*(&v19 + 1) + 16) = v8;
  v5 = PerformIFFItemBodyParsing(v9);
  if (v5)
  {
    goto LABEL_23;
  }

  v10 = MEMORY[0x1E695E4D0];
  if (!v20)
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  v5 = IFFInformationSetTracksDetected(*(&v19 + 1), *v10);
  if (v5)
  {
    goto LABEL_23;
  }

  v7 = IFFInformationSetBrands(*(&v19 + 1), *(&v20 + 1), v21, *(&v21 + 1));
  if (!v7)
  {
    *a3 = *(&v19 + 1);
    *(&v19 + 1) = 0;
  }

LABEL_13:
  if (*(&v19 + 1))
  {
    CFRelease(*(&v19 + 1));
  }

  if (*(&v20 + 1))
  {
    CFRelease(*(&v20 + 1));
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (*(&v21 + 1))
  {
    CFRelease(*(&v21 + 1));
  }

  return v7;
}

uint64_t ParseGlobalMetaDataAtom(uint64_t a1, uint64_t a2)
{
  cf = 0;
  if (*(a2 + 8))
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  CheckAtomVersionIsZero(a1);
  if (v3 || (v3 = IFFItemInformationCreate(*MEMORY[0x1E695E480], &cf), v3) || (OUTLINED_FUNCTION_11_27(), v3 = FigAtomStreamInitWithParent(), v3))
  {
    v5 = v3;
  }

  else
  {
    *(a2 + 8) = cf;
    IFFParseChildAtoms(v8, 9, ParseGlobalMetaDataAtom_atomDispatch, a2);
    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    *(a2 + 8) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t ParseGlobalMovieAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_2_70(a1, a2, a3, a4, a5, a6, a7, a8, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6]);
  if (!v9)
  {
    IFFParseChildAtoms(v12, 1, ParseGlobalMovieAtom_atomDispatch, v8);
    if (v10)
    {
      *(v8 + 16) = 0;
    }
  }

  return v9;
}

double IFFParseChildAtoms(uint64_t a1, int a2, const char *a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v29 = 0;
  v8 = 0;
  v9 = 0;
  v27 = a3;
  v10 = a3 + 8;
  while (2)
  {
    if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      return result;
    }

    if (a2 < 1)
    {
      v21 = 0;
      v22 = 1;
      goto LABEL_22;
    }

    v12 = v5;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v10;
    v17 = v10;
    while (1)
    {
      v18 = *(v17 - 1);
      if ((v18 & 4) != 0)
      {
        if (*v17)
        {
          v9 = *v17;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_14;
      }

      if (!*(v17 - 2))
      {
        break;
      }

LABEL_14:
      ++v15;
      v17 += 16;
      v16 += 16;
      if (a2 == v15)
      {
        goto LABEL_18;
      }
    }

    v19 = 1 << v15;
    if ((v18 & 1) != 0 && (v8 & v19) != 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    v8 |= v19;
    v20 = (*v17)(a1, v28);
    v14 = 1;
    if (v20 == 1717723499)
    {
      v13 = 1;
      goto LABEL_14;
    }

    if (v20 == 1937010544)
    {
      goto LABEL_27;
    }

    if (v20)
    {
      return result;
    }

LABEL_18:
    v21 = v13 != 0;
    v22 = v14 == 0;
    v5 = v12;
    if (v13 && !v9)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_22:
    if (!v21 && !v22 || !v9)
    {
LABEL_26:
      if (FigAtomStreamAdvanceToNextAtom())
      {
        goto LABEL_27;
      }

      continue;
    }

    break;
  }

  v23 = v9(a1, v28);
  if (v23 == 1937010544)
  {
LABEL_27:
    if (a2 >= 1)
    {
      v24 = 0;
      v25 = (v27 + 4);
      do
      {
        v26 = *v25;
        v25 += 16;
        if ((v26 & 2) != 0 && ((v8 >> v24) & 1) == 0)
        {
          OUTLINED_FUNCTION_178();
          fig_log_get_emitter();
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v28, v29);
        }

        ++v24;
      }

      while (a2 != v24);
    }

    return result;
  }

  if (!v23)
  {
    goto LABEL_26;
  }

  return result;
}

void *PerformIFFItemBodyParsing(void *result)
{
  v92[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    ItemCount = IFFInformationGetItemCount(result);
    if (ItemCount >= 1)
    {
      v2 = 0;
      v74 = &v91;
      v75 = &v90;
      v79 = v1;
      do
      {
        v83 = 0;
        v82 = 0;
        result = IFFInformationGetItemAtIndex(v1, v2, &v83, 0, 0);
        if (result)
        {
          return result;
        }

        result = IFFInformationGetItemType(v83, &v82);
        if (result)
        {
          return result;
        }

        switch(v82)
        {
          case 1165519206:
            v41 = v83;
            v42 = v1[2];
            v84 = 0;
            OUTLINED_FUNCTION_29_13();
            OUTLINED_FUNCTION_15_22();
            ItemExtents = IFFInformationGetItemExtents(v41, v43, v44, v45, v46, v47);
            if (ItemExtents)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_25_16();
            if (v18 == v19)
            {
              v78 = v41;
              v48 = v1;
              v49 = 0;
              v50 = &v88;
              v51 = 1;
              v52 = 4;
              while (1)
              {
                v53 = v87;
                v54 = v89;
                v55 = *(v85 + v49);
                v56 = *(v85 + v49 + 8) >= v52 ? v52 : *(v85 + v49 + 8);
                v92[0] = 0;
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (!v57)
                {
                  break;
                }

                if (v57(v42, v56, v54 + v53 + v55, v50, v92) || v92[0] != v56)
                {
                  break;
                }

                v50 = (v50 + v56);
                v52 -= v56;
                if (v52)
                {
                  v59 = v86 <= v51;
                }

                else
                {
                  v59 = 1;
                }

                ++v51;
                v49 += 16;
                if (v59)
                {
                  v1 = v48;
                  if (v52)
                  {
                    goto LABEL_95;
                  }

                  v60 = bswap32(v88);
                  v61 = v60;
                  if (v88)
                  {
                    v61 = v60;
                    if (v86 >= 1)
                    {
                      v62 = (v85 + 8);
                      v63 = 1;
                      v61 = v60;
                      do
                      {
                        v64 = *v62;
                        v62 += 2;
                        v34 = v61 >= v64;
                        v61 -= v64;
                        v65 = v61 != 0 && v34;
                        if (!v34)
                        {
                          v61 = 0;
                        }
                      }

                      while (v65 && v86 > v63++);
                    }
                  }

                  v2 = v81;
                  if (!v61)
                  {
                    ItemExtents = IFFInformationSetItemBodyImageExifPayload(v78, v60);
                    goto LABEL_80;
                  }

                  goto LABEL_79;
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_75();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
              v2 = v81;
              v1 = v48;
              if (v67)
              {
                goto LABEL_89;
              }

              break;
            }

LABEL_95:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_75();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
            v2 = v81;
            if (v71)
            {
              goto LABEL_89;
            }

            break;
          case 1953325424:
            v32 = v83;
            CFGetAllocator(v1);
            v88 = 0;
            v86 = 0;
            v87 = 0;
            v85 = 0;
            v92[0] = 0;
            ItemExtents = IFFInformationGetItemExtents(v32, &v88, &v87, &v86, &v85, v92);
            if (!ItemExtents)
            {
              if (v85 >= 1)
              {
                do
                {
                  OUTLINED_FUNCTION_36_10();
                }

                while (!v34 && v33 != 1);
              }

              goto LABEL_79;
            }

LABEL_80:
            if (!ItemExtents)
            {
              break;
            }

LABEL_89:
            *(v83 + 16) = 0;
            break;
          case 1768912492:
            v35 = v83;
            CFGetAllocator(v1);
            OUTLINED_FUNCTION_29_13();
            OUTLINED_FUNCTION_15_22();
            ItemExtents = IFFInformationGetItemExtents(v35, 0, v36, v37, v38, v39);
            if (!ItemExtents)
            {
              if (v86 >= 1)
              {
                do
                {
                  OUTLINED_FUNCTION_36_10();
                }

                while (!v34 && v40 != 1);
              }

              goto LABEL_79;
            }

            goto LABEL_80;
          case 1735551332:
            v3 = v83;
            v4 = CFGetAllocator(v1);
            v88 = 0;
            OUTLINED_FUNCTION_29_13();
            OUTLINED_FUNCTION_15_22();
            ItemExtents = IFFInformationGetItemExtents(v3, v5, v6, v7, v8, v9);
            if (!ItemExtents)
            {
              v11 = v86;
              if (v86 >= 1)
              {
                v12 = 0;
                v13 = (v85 + 8);
                do
                {
                  v14 = *v13;
                  v13 += 2;
                  v15 = v14 + v12;
                  if (v12 >= v14 + v12)
                  {
                    goto LABEL_79;
                  }

                  v12 = v15;
                  --v11;
                }

                while (v11);
                if (v15 <= 1)
                {
                  goto LABEL_79;
                }

                v16 = v15 >= 0xC ? 12 : v15;
                OUTLINED_FUNCTION_8_24();
                if (!v17)
                {
                  goto LABEL_79;
                }

                v76 = v3;
                v77 = v17;
                OUTLINED_FUNCTION_25_16();
                if (v18 == v19)
                {
                  v20 = 0;
                  v21 = 1;
                  v22 = v77;
                  while (1)
                  {
                    v23 = v16 >= *(v85 + v20 + 8) ? *(v85 + v20 + 8) : v16;
                    v92[0] = 0;
                    if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
                    {
                      break;
                    }

                    v24 = OUTLINED_FUNCTION_23_21();
                    if (v25(v24) || v92[0] != v23)
                    {
                      break;
                    }

                    if (v21 < v86)
                    {
                      v22 = (v22 + v23);
                      ++v21;
                      v20 += 16;
                      v16 -= v23;
                      if (v16)
                      {
                        continue;
                      }
                    }

                    goto LABEL_33;
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_75();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
                  v69 = v68;
                  v27 = v77;
                  v1 = v79;
LABEL_83:
                  v2 = v81;
LABEL_88:
                  CFAllocatorDeallocate(v4, v27);
                  if (!v69)
                  {
                    break;
                  }

                  goto LABEL_89;
                }

LABEL_33:
                v27 = v77;
                if (*v77)
                {
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_75();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v74, v75);
                  v69 = v72;
                  v1 = v79;
                  goto LABEL_83;
                }

                v1 = v79;
                v2 = v81;
                if (*(v77 + 1))
                {
                  if (v15 <= 0xB)
                  {
                    goto LABEL_100;
                  }

                  v28 = *(v77 + 2);
                  v29 = *(v77 + 3);
                  v30 = bswap32(v77[1]);
                  v31 = bswap32(v77[2]);
LABEL_86:
                  v70 = IFFInformationSetItemBodyImageDerivationGrid(v76, v29 + 1, v28 + 1, v30, v31);
                }

                else
                {
                  if (v15 > 7)
                  {
                    v28 = *(v77 + 2);
                    v29 = *(v77 + 3);
                    v30 = bswap32(*(v77 + 2)) >> 16;
                    v31 = bswap32(*(v77 + 3)) >> 16;
                    goto LABEL_86;
                  }

LABEL_100:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_75();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                }

                v69 = v70;
                goto LABEL_88;
              }

LABEL_79:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_75();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

            goto LABEL_80;
        }

        ++v2;
      }

      while (v2 != ItemCount);
    }

    return 0;
  }

  return result;
}

uint64_t IFFParseMetaAtomStreamAndCreateItemInformation(uint64_t a1, uint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  *cf = 0u;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = CurrentAtomTypeAndDataLength;
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  return v4;
}

uint64_t IFFParseFileTypeAtom(uint64_t a1)
{
  if (*(a1 + 64) != 1718909296 || (OUTLINED_FUNCTION_613(), result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(), !result) && (OUTLINED_FUNCTION_613(), result = CMBlockBufferGetDataPointer(v2, v3, v4, v5, v6), !result))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void ParseGlobalMetaDataIFFHandlerAtom()
{
  OUTLINED_FUNCTION_187();
  CheckAtomVersionIsZero(v1);
  if (!v2 && !FigAtomStreamReadCurrentAtomData())
  {
    IFFInformationSetItemHandler(*(v0 + 8), bswap32(0));
  }
}

double ParseGlobalMetaDataPrimaryItemAtom()
{
  OUTLINED_FUNCTION_187();
  v4 = 0;
  v3 = 0;
  if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    if (v4 >= 2u)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v5);
    }

    else if (!FigAtomStreamReadCurrentAtomData())
    {
      v3 = bswap32(0) >> 16;
      IFFInformationSetPrimaryItemID(*(v0 + 8), v3);
    }
  }

  return result;
}

double ParseGlobalMetaDataIFFDataInfoAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_70(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6]))
  {
    return IFFParseChildAtoms(v10, 1, ParseGlobalMetaDataIFFDataInfoAtom_atomDispatch, v8);
  }

  return result;
}

uint64_t ParseGlobalMetaDataItemInfoAtom(uint64_t a1, uint64_t a2)
{
  v53[16] = *MEMORY[0x1E69E9840];
  v51 = 0;
  v50 = 0;
  __s = 0;
  cf = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_63;
  }

  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_63;
  }

  v4 = v50;
  v5 = v50 >= 2u;
  *(*(a2 + 8) + 176) &= v50 < 2u;
  if (v5)
  {
    LODWORD(v33) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = v50;
  }

  if (!v4)
  {
    LOWORD(v53[0]) = 0;
    OUTLINED_FUNCTION_11_27();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomTypeAndDataLength)
    {
      OUTLINED_FUNCTION_10_28();
      v44 = v7;
      goto LABEL_11;
    }

LABEL_63:
    v8 = CurrentAtomTypeAndDataLength;
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_11_27();
  CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_63;
  }

  v44 = bswap32(v44);
LABEL_11:
  v8 = FigAtomStreamInitWithParent();
  if (!v8 && v44)
  {
    while (1)
    {
      HIDWORD(v36) = 0;
      BYTE3(v36) = 0;
      v35 = 0;
      v53[0] = 0;
      HIWORD(v34) = 0;
      LODWORD(v34) = 0;
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_63;
      }

      if (HIDWORD(v36) == 1768842853)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        if ((BYTE3(v36) & 0xFE) != 2)
        {
          goto LABEL_62;
        }

        if (BYTE3(v36) == 2)
        {
          LOWORD(v52[0]) = 0;
          CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_63;
          }

          OUTLINED_FUNCTION_10_28();
          LODWORD(v35) = v11;
          v12 = 6;
        }

        else
        {
          CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_33_11(&v37, v9, v10, &v35);
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_63;
          }

          LODWORD(v35) = bswap32(v35);
          v12 = 8;
        }

        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        v13 = HIWORD(v34);
        HIWORD(v34) = __rev16(HIWORD(v34));
        if (v13)
        {
LABEL_62:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_63;
        }

        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomData();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        v17 = bswap32(v34);
        LODWORD(v34) = v17;
        IFFInformationAddItemWithType(*(a2 + 8), v17, v35, v53, &v45, v14, v15, v16, v29, v30, v31, *type, v33, v34, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1));
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_63;
        }

        if (v34 == 1970432288 || v34 == 1835625829)
        {
          v19 = v12 + 6;
          if (v51 > v19)
          {
            v52[0] = 0;
            *type = 0;
            v33 = 0;
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v20 = v46;
            if (v46)
            {
              v46 = 0;
              free(v20);
            }

            v21 = __s;
            if (__s)
            {
              __s = 0;
              free(v21);
            }

            v22 = v47;
            if (v47)
            {
              v47 = 0;
              free(v22);
            }

            CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_26_17(cf, v23, &v33, v24, v52);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            copyNullTerminatedStringAndAdvanceBuffer(v52, &v33, &v46, 0, type);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            v25 = *type;
            IFFInformationSetItemName(v53[0], v46, 0);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            copyNullTerminatedStringAndAdvanceBuffer(v52, &v33, &__s, 0, type);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            if (v34 != 1835625829)
            {
              goto LABEL_50;
            }

            if (v25 + v19 + *type >= v51)
            {
              goto LABEL_47;
            }

            copyNullTerminatedStringAndAdvanceBuffer(v52, &v33, &v47, 0, type);
            if (CurrentAtomTypeAndDataLength)
            {
              goto LABEL_63;
            }

            if (v34 == 1835625829)
            {
LABEL_47:
              IFFInformationSetItemMIMETypeAndEncoding(v53[0], __s, v47);
            }

            else
            {
LABEL_50:
              IFFInformationSetItemURIType(v53[0], __s, 0);
            }

            v8 = v26;
            if (v26)
            {
              break;
            }
          }
        }

        if ((v35 & 0x100000000) == 0)
        {
          CurrentAtomTypeAndDataLength = IFFInformationSetItemDisplayable(v53[0], 1);
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_63;
          }
        }
      }

      v27 = v44;
      if (v44 >= 2)
      {
        if (FigAtomStreamAdvanceToNextAtom())
        {
          goto LABEL_62;
        }

        v27 = v44;
      }

      v44 = v27 - 1;
      if (v27 == 1)
      {
        v8 = 0;
        break;
      }
    }
  }

LABEL_59:
  if (cf)
  {
    CFRelease(cf);
  }

  free(v46);
  free(__s);
  free(v47);
  return v8;
}

double ParseGlobalMetaDataItemLocationAtom(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v49 = 0;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  LOWORD(v41) = 0;
  v40 = 0;
  HIBYTE(v39) = 0;
  if (FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    return result;
  }

  if (HIBYTE(v39) >= 2u)
  {
    if (HIBYTE(v39) != 2)
    {
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_11_27();
    if (FigAtomStreamReadCurrentAtomData())
    {
      return result;
    }

    v7 = bswap32(*&v47[4]) >> 16;
    v5 = bswap32(*&v47[6]);
    v8 = 10;
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    if (FigAtomStreamReadCurrentAtomData())
    {
      return result;
    }

    OUTLINED_FUNCTION_10_28();
    v5 = bswap32(HIWORD(v48)) >> 16;
    v7 = v6 & 0xFFF0;
    v8 = 8;
  }

  v9 = v7 >> 12;
  if (v9 > 8 || ((1 << v9) & 0x111) == 0)
  {
    goto LABEL_66;
  }

  v11 = (v7 >> 8) & 0xF;
  if (v11 != 4 && v11 != 8)
  {
    goto LABEL_70;
  }

  if ((v7 & 0xF) != 0)
  {
LABEL_66:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v13 = v7 >> 4;
  if ((v7 & 0xB0) != 0 && v13 != 8)
  {
LABEL_70:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  if (v5)
  {
    v31 = v2;
    if (v9 == 4)
    {
      v14 = (&v37 + 4);
    }

    else
    {
      v14 = &v36;
    }

    v35 = v14;
    HIDWORD(v32) = v7 >> 4;
    while (1)
    {
      v38 = 0;
      if (HIBYTE(v39) == 2)
      {
        break;
      }

      if (HIBYTE(v39) == 1)
      {
        OUTLINED_FUNCTION_178();
        if (FigAtomStreamReadCurrentAtomData())
        {
          return result;
        }

        v8 += 6;
        v16 = bswap32(v45) >> 16;
        v17 = HIBYTE(v45);
LABEL_34:
        v15 = v17 & 0xF;
        goto LABEL_36;
      }

      if (HIBYTE(v39))
      {
        v16 = 0;
        v15 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_178();
        if (FigAtomStreamReadCurrentAtomData())
        {
          return result;
        }

        v15 = 0;
        v8 += 4;
        v16 = bswap32(*v47) >> 16;
      }

LABEL_36:
      switch(v13)
      {
        case 8:
          HIDWORD(v34) = v15;
          OUTLINED_FUNCTION_178();
          if (FigAtomStreamReadCurrentAtomData())
          {
            return result;
          }

          v18 = bswap64(v40);
          if (v18 < 0)
          {
LABEL_68:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_2();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }

          v8 += 10;
LABEL_46:
          OUTLINED_FUNCTION_10_28();
LABEL_47:
          v15 = HIDWORD(v34);
          goto LABEL_49;
        case 4:
          HIDWORD(v34) = v15;
          OUTLINED_FUNCTION_178();
          if (FigAtomStreamReadCurrentAtomData())
          {
            return result;
          }

          v8 += 6;
          OUTLINED_FUNCTION_10_28();
          v18 = bswap32(v42);
          goto LABEL_47;
        case 0:
          HIDWORD(v34) = v15;
          OUTLINED_FUNCTION_178();
          if (FigAtomStreamReadCurrentAtomData())
          {
            return result;
          }

          v18 = 0;
          v8 += 2;
          goto LABEL_46;
      }

      v19 = 0;
      v18 = 0;
LABEL_49:
      if (v15 >= 2)
      {
        goto LABEL_68;
      }

      v20 = v5;
      v21 = v19;
      result = IFFInformationReserveItemExtentTable(*(v33 + 8), v16, v15, v18, v19, &v38, &v49, v4, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      if (!v22)
      {
        if (v21)
        {
          v23 = 0;
          v24 = v18 ^ 0x7FFFFFFFFFFFFFFFLL;
          v25 = 16 * v21;
          do
          {
            HIDWORD(v37) = 0;
            v36 = 0;
            if (v7 >= 0x1000)
            {
              OUTLINED_FUNCTION_178();
              if (FigAtomStreamReadCurrentAtomData())
              {
                return result;
              }

              OUTLINED_FUNCTION_35_9();
              if (v9 != 4)
              {
                v26 = v27;
              }

              *(v38 + v23) = v26;
              if (v24 < v26)
              {
                goto LABEL_68;
              }

              v8 += v9;
            }

            else
            {
              *(v38 + v23) = 0;
            }

            OUTLINED_FUNCTION_178();
            if (FigAtomStreamReadCurrentAtomData())
            {
              return result;
            }

            v8 += v11;
            OUTLINED_FUNCTION_35_9();
            if (v11 != 4)
            {
              v28 = v29;
            }

            *(v38 + v23 + 8) = v28;
            v23 += 16;
          }

          while (v25 != v23);
        }

        v5 = v20 - 1;
        v13 = HIDWORD(v32);
        if (v5)
        {
          continue;
        }
      }

      return result;
    }

    OUTLINED_FUNCTION_178();
    if (FigAtomStreamReadCurrentAtomData())
    {
      return result;
    }

    v8 += 8;
    v16 = bswap32(v44);
    v17 = BYTE5(v44);
    goto LABEL_34;
  }

  return result;
}

double ParseGlobalMetaDataIFFItemReferenceAtom(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  OUTLINED_FUNCTION_32_11();
  if (!FigAtomStreamGetCurrentAtomVersionAndFlags())
  {
    if (v17 >= 2u)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    }

    else
    {
      OUTLINED_FUNCTION_11_27();
      if (!FigAtomStreamInitWithParent())
      {
        do
        {
          v15 = 0;
          if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
          {
            break;
          }

          if (v17)
          {
            if (OUTLINED_FUNCTION_39_10(v16, v4, v5, &v15))
            {
              return result;
            }

            LODWORD(v15) = bswap32(v15);
            v6 = 4;
          }

          else
          {
            if (FigAtomStreamReadCurrentAtomData())
            {
              return result;
            }

            OUTLINED_FUNCTION_10_28();
            LODWORD(v15) = v7;
            v6 = 2;
          }

          if (FigAtomStreamReadCurrentAtomData())
          {
            break;
          }

          v14 = bswap32(0) >> 16;
          if (IFFInformationReserveItemReferenceTable(*(a2 + 8), v15, HIDWORD(v15)))
          {
            break;
          }

          if (v14)
          {
            v8 = 0;
            v9 = v6 + 2;
            do
            {
              if (v17)
              {
                if (FigAtomStreamReadCurrentAtomData())
                {
                  return result;
                }

                v9 += 4;
                v10 = bswap32(0);
              }

              else
              {
                if (FigAtomStreamReadCurrentAtomData())
                {
                  return result;
                }

                v9 += 2;
                OUTLINED_FUNCTION_10_28();
              }

              *(4 * v8++) = v10;
            }

            while (v8 < v14);
          }
        }

        while (!FigAtomStreamAdvanceToNextAtom());
      }
    }
  }

  return result;
}

double ParseGlobalMetaDataItemPropertiesAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_70(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6]))
  {
    return IFFParseChildAtoms(v10, 2, ParseGlobalMetaDataItemPropertiesAtom_atomDispatch, v8);
  }

  return result;
}

uint64_t ParseGlobalMetaDataItemDataAtom(uint64_t a1, uint64_t a2)
{
  result = FigAtomStreamGetCurrentAtomDataGlobalOffset();
  if (!result)
  {
    return IFFInformationSetItemDataOffset(*(a2 + 8), 0);
  }

  return result;
}

double ParseGlobalMetaDataGroupsListAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_70(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6]))
  {
    return IFFParseChildAtoms(v10, 4, ParseGlobalMetaDataGroupsListAtom_atomDispatch, v8);
  }

  return result;
}

double ParseGlobalMetaDataDataRefAtom()
{
  HIDWORD(v1) = 0;
  OUTLINED_FUNCTION_32_11();
  if (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double copyNullTerminatedStringAndAdvanceBuffer(_BYTE **a1, size_t *a2, void *a3, CFStringRef *a4, size_t *a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a1)
  {
    if (a2)
    {
      v10 = *a1;
      if (*a1)
      {
        v11 = *a2;
        if (*a2)
        {
          if (*v10)
          {
            v12 = 1;
            while (1)
            {
              v13 = v12;
              if (v11 == v12)
              {
                break;
              }

              ++v12;
              if (!v10[v13])
              {
                v14 = v13;
                goto LABEL_18;
              }
            }

            v14 = *a2;
LABEL_18:
            v15 = v13 < v11;
            if (a3)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v14 = 0;
            v15 = 1;
            if (a3)
            {
LABEL_19:
              v16 = malloc_type_malloc(v14 + 1, 0x813B6D98uLL);
              if (!v16)
              {
LABEL_28:
                fig_log_get_emitter();
                OUTLINED_FUNCTION_3_2();

                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
              }

              v17 = v16;
              memcpy(v16, v10, v14);
              v17[v14] = 0;
              *a3 = v17;
              if (!a4)
              {
LABEL_23:
                v20 = v14 + v15;
                if (a5)
                {
                  *a5 = v20;
                }

                *a1 = &v10[v20];
                *a2 = v11 - v20;
                return result;
              }

LABEL_21:
              v19 = CFStringCreateWithBytes(0, v10, v14, 0x8000100u, 0);
              if (v19)
              {
                *a4 = v19;
                goto LABEL_23;
              }

              goto LABEL_28;
            }
          }

          if (!a4)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }
      }
    }
  }

  return result;
}

double ParseGlobalMetaDataIFFItemPropertyContainerAtom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_2_70(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6]))
  {
    return IFFParseChildAtoms(v10, 26, ParseGlobalMetaDataIFFItemPropertyContainerAtom_atomDispatch, v8);
  }

  return result;
}

double ParseGlobalMetaDataIFFItemPropertyAssociationAtom()
{
  OUTLINED_FUNCTION_187();
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!FigAtomStreamGetCurrentAtomVersionAndFlags() && !OUTLINED_FUNCTION_33_11(v0, v1, v2, &v10))
  {
    v4 = v10;
    v10 = bswap32(v10);
    if (v4)
    {
      v5 = 8;
      do
      {
        OUTLINED_FUNCTION_266();
        if (FigAtomStreamReadCurrentAtomData())
        {
          break;
        }

        v5 += 3;
        v6 = v9;
        if (v9)
        {
          do
          {
            OUTLINED_FUNCTION_266();
            if (FigAtomStreamReadCurrentAtomData())
            {
              return result;
            }

            ++v5;
          }

          while (--v6);
        }

        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t ParseGlobalMetaDataIFFItemPropertyCodecConfiguration()
{
  OUTLINED_FUNCTION_27_13();
  HIDWORD(v19) = 0;
  v17 = 0;
  v18 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!CurrentAtomTypeAndDataLength)
  {
    OUTLINED_FUNCTION_38_10();
    OUTLINED_FUNCTION_613();
    CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!CurrentAtomTypeAndDataLength)
    {
      OUTLINED_FUNCTION_613();
      CurrentAtomTypeAndDataLength = CMBlockBufferGetDataPointer(v9, v10, v11, 0, v12);
      if (!CurrentAtomTypeAndDataLength)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0, 0);
      }
    }
  }

  v13 = OUTLINED_FUNCTION_37_10(CurrentAtomTypeAndDataLength, v2, v3, v4, v5, v6, v7, v8, v16, v17, v18, v19, v20);
  if (v13)
  {
    CFRelease(v13);
  }

  OUTLINED_FUNCTION_13_19();
  if (v14)
  {
    return v0;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyImageSpatialExtents(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  CheckAtomVersionIsZero(a1);
  if (!v3)
  {
    OUTLINED_FUNCTION_11_27();
    if (!FigAtomStreamReadCurrentAtomData())
    {
      v6 = vrev32_s8(0);
      if ((vorr_s8(v6, vdup_lane_s32(v6, 1)).u32[0] & 0x80000000) != 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
      }

      else if (!IFFInformationReserveSharedItemProperty(*(a2 + 8), 2, &v7, 0))
      {
        IFFInformationSetItemPropertySpatialExtents(v7, v6, SHIDWORD(v6));
      }
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v5)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyPixelAspectRatio(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (!FigAtomStreamReadCurrentAtomData())
  {
    v6 = vrev32_s8(0);
    v3 = *(a2 + 8);
    *(v3 + 176) &= vceq_s32(0, vdup_lane_s32(0, 1)).u8[0] & 1;
    if (!IFFInformationReserveSharedItemProperty(v3, 3, &v7, 0))
    {
      IFFInformationSetItemPropertySpatialExtents(v7, v6.i32[0], v6.i32[1]);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v5)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyPixelInformation()
{
  OUTLINED_FUNCTION_27_13();
  count_1 = 0;
  v17 = 0;
  HIBYTE(v15) = 0;
  CheckAtomVersionIsZero(v2);
  if (!CurrentAtomData)
  {
    CurrentAtomData = FigAtomStreamReadCurrentAtomData();
    if (!CurrentAtomData)
    {
      OUTLINED_FUNCTION_38_10();
      CurrentAtomData = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomData)
      {
        CurrentAtomData = OUTLINED_FUNCTION_26_17(v18, v4, &v17, v6, &count_1);
        if (!CurrentAtomData)
        {
          if (v17 && count_1)
          {
            CurrentAtomData = IFFInformationReserveSharedItemProperty(*(v0 + 8), 14, v19, 0);
            if (!CurrentAtomData)
            {
              CurrentAtomData = IFFInformationSetItemPropertyPixelInformation(*v19, 0, count_1);
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  v11 = OUTLINED_FUNCTION_37_10(CurrentAtomData, v4, v5, v6, v7, v8, v9, v10, v14, v15, count_1, v17, v18);
  if (v11)
  {
    CFRelease(v11);
  }

  OUTLINED_FUNCTION_13_19();
  if (v12)
  {
    return v1;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyColorInformation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  *v27 = 0;
  v24 = 0;
  v25 = 0;
  HIDWORD(v23) = 0;
  *(&v23 + 7) = 0;
  DWORD1(v23) = 0;
  CurrentAtomData = OUTLINED_FUNCTION_39_10(a1, a2, a3, &v23 + 12);
  if (!CurrentAtomData)
  {
    v12 = bswap32(HIDWORD(v23));
    HIDWORD(v23) = v12;
    if (v12 == 1852009592)
    {
      CurrentAtomData = FigAtomStreamReadCurrentAtomData();
      if (!CurrentAtomData)
      {
        OUTLINED_FUNCTION_10_28();
        WORD2(v23) = v16;
        OUTLINED_FUNCTION_10_28();
        WORD3(v23) = v17;
        OUTLINED_FUNCTION_10_28();
        WORD4(v23) = v18;
        v19 = OUTLINED_FUNCTION_34_11();
        CurrentAtomData = IFFInformationReserveSharedItemProperty(v19, 4, v20, 0);
        if (!CurrentAtomData)
        {
          CurrentAtomData = IFFInformationSetItemPropertyIndexedColor(*v27, SWORD2(v23), SWORD3(v23), SWORD4(v23), SBYTE10(v23));
        }
      }
    }

    else
    {
      v13 = v12 == 1917403971 || v12 == 1886547814;
      if (!v13)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_38_10();
      CurrentAtomData = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomData)
      {
        CurrentAtomData = OUTLINED_FUNCTION_26_17(v26, v5, &v25, v7, &v24);
        if (!CurrentAtomData)
        {
          if (!v25 || !v24)
          {
LABEL_7:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_17;
          }

          v14 = OUTLINED_FUNCTION_34_11();
          CurrentAtomData = IFFInformationReserveSharedItemProperty(v14, 5, v15, 0);
          if (!CurrentAtomData)
          {
            IFFInformationSetItemPropertyICCProfileData(*v27, v24, v25);
          }
        }
      }
    }
  }

LABEL_17:
  v21 = OUTLINED_FUNCTION_37_10(CurrentAtomData, v5, v6, v7, v8, v9, v10, v11, v23, *(&v23 + 1), v24, v25, v26);
  if (v21)
  {
    CFRelease(v21);
  }

  OUTLINED_FUNCTION_13_19();
  if (v13)
  {
    return v3;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyContentLightLevel(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_22(a1);
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_7_32(0, v3, v4, v5, v6, v7, v8, v9, v13, v15, cf);
    if (!v2)
    {
      if (v14 == 4)
      {
        v2 = IFFInformationReserveSharedItemProperty(*(v1 + 8), 6, &v18, 0);
        if (!v2)
        {
          v2 = IFFInformationSetItemPropertyHDRMetaData(v18, v16, 4uLL);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, cf);
      }
    }
  }

  v10 = v2;
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_24_14();
  if (v11)
  {
    return v10;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyMasteringDisplayColorVolume(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_22(a1);
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_7_32(0, v3, v4, v5, v6, v7, v8, v9, v13, v15, cf);
    if (!v2)
    {
      if (v14 == 24)
      {
        v2 = IFFInformationReserveSharedItemProperty(*(v1 + 8), 7, &v18, 0);
        if (!v2)
        {
          v2 = IFFInformationSetItemPropertyHDRMetaData(v18, v16, 0x18uLL);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, cf);
      }
    }
  }

  v10 = v2;
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_24_14();
  if (v11)
  {
    return v10;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyContentColorVolume()
{
  OUTLINED_FUNCTION_27_13();
  HIBYTE(v16) = 0;
  CurrentAtomData = FigAtomStreamReadCurrentAtomData();
  if (!CurrentAtomData)
  {
    BYTE6(v16) = 0;
    IFFItemPropertyGetCCLVDataLength(SHIBYTE(v16), &v16 + 6);
    if (!CurrentAtomData)
    {
      OUTLINED_FUNCTION_38_10();
      OUTLINED_FUNCTION_613();
      CurrentAtomData = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (!CurrentAtomData)
      {
        v14 = 0;
        v15 = 0;
        CurrentAtomData = OUTLINED_FUNCTION_26_17(v17, v3, &v14, v5, &v15);
        if (!CurrentAtomData)
        {
          if (v14 == BYTE6(v16))
          {
            CurrentAtomData = IFFInformationReserveSharedItemProperty(*(v0 + 8), 8, &v18, 0);
            if (!CurrentAtomData)
            {
              CurrentAtomData = IFFInformationSetItemPropertyHDRMetaData(v18, v15, v14);
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
          }
        }
      }
    }
  }

  v10 = OUTLINED_FUNCTION_37_10(CurrentAtomData, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17);
  if (v10)
  {
    CFRelease(v10);
  }

  OUTLINED_FUNCTION_13_19();
  if (v11)
  {
    return v1;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAmbientViewingEnvironment(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_22(a1);
  if (!v2)
  {
    v2 = OUTLINED_FUNCTION_7_32(0, v3, v4, v5, v6, v7, v8, v9, v13, v15, cf);
    if (!v2)
    {
      if (v14 == 8)
      {
        v2 = IFFInformationReserveSharedItemProperty(*(v1 + 8), 9, &v18, 0);
        if (!v2)
        {
          v2 = IFFInformationSetItemPropertyHDRMetaData(v18, v16, 8uLL);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v16, cf);
      }
    }
  }

  v10 = v2;
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_24_14();
  if (v11)
  {
    return v10;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyCleanAperture(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!FigAtomStreamReadCurrentAtomData())
  {
    v5 = vrev64q_s8(vsraq_n_u64(vshlq_n_s64(0, 0x20uLL), 0, 0x20uLL));
    if ((vmaxv_u16(vmovn_s32(vclezq_s32(vrev32q_s8(vuzp2q_s32(0, 0))))) & 1) == 0 && !IFFInformationReserveSharedItemProperty(*(a2 + 8), 10, &v6, 0))
    {
      IFFInformationSetItemPropertyCleanAperture(v6, v5.i64[0], v5.i64[1], v5.i64[0], v5.i64[1]);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v4)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyImageRotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_6_44(a1, a2, a3, a4, a5, a6, a7, a8, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12), v14))
  {
    v8 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v8, 11, v9, 0))
    {
      IFFInformationSetItemPropertyRotationDegreesCCW(v15, 90 * (v13 & 3));
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v11)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyImageMirroring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_6_44(a1, a2, a3, a4, a5, a6, a7, a8, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12), v14))
  {
    v8 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v8, 12, v9, 0))
    {
      IFFInformationSetItemPropertyRotationDegreesCCW(v15, v13 & 1);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v11)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAuxiliaryType(uint64_t a1)
{
  cf = 0;
  *v17 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  __s = 0;
  CheckAtomVersionIsZero(a1);
  if (!BBuf)
  {
    OUTLINED_FUNCTION_11_27();
    BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
    if (!BBuf)
    {
      BBuf = OUTLINED_FUNCTION_26_17(cf, v2, &v14, v3, &v15);
      if (!BBuf)
      {
        copyNullTerminatedStringAndAdvanceBuffer(&v15, &v14, &__s, 0, &v12);
        if (!BBuf)
        {
          v4 = v14;
          v5 = v15;
          v6 = OUTLINED_FUNCTION_34_11();
          BBuf = IFFInformationReserveSharedItemProperty(v6, 13, v7, 0);
          if (!BBuf)
          {
            if (v4)
            {
              v8 = v5;
            }

            else
            {
              v8 = 0;
            }

            IFFInformationSetItemPropertyAuxiliaryType(*v17, __s, v8, v4);
          }
        }
      }
    }
  }

  v9 = BBuf;
  if (cf)
  {
    CFRelease(cf);
  }

  free(__s);
  if (*v17)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (v10)
  {
    return v9;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyLayerSelector(uint64_t a1)
{
  if (!FigAtomStreamReadCurrentAtomData())
  {
    OUTLINED_FUNCTION_10_28();
    v6 = v1;
    v2 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v2, 21, v3, 0))
    {
      IFFInformationSetItemPropertyLayerSelector(0, v6);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v5)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAVIFOperatingPointSelector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_6_44(a1, a2, a3, a4, a5, a6, a7, a8, v12, SWORD2(v12), SBYTE6(v12), SHIBYTE(v12), v14))
  {
    v8 = OUTLINED_FUNCTION_30_12();
    if (!IFFInformationReserveSharedItemProperty(v8, 22, v9, 0))
    {
      IFFInformationSetItemPropertyAVIFOperatingPointSelector(v15, v13);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v11)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyAVIFLayeredImageIndexing()
{
  OUTLINED_FUNCTION_187();
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  if (!FigAtomStreamReadCurrentAtomData() && !FigAtomStreamReadCurrentAtomData())
  {
    for (i = 0; i != 6; i += 2)
    {
      *(&v7 + i) = bswap32(*(&v7 + i)) >> 16;
    }

    v1 = OUTLINED_FUNCTION_34_11();
    if (!IFFInformationReserveSharedItemProperty(v1, 23, v2, 0))
    {
      IFFInformationSetItemPropertyAVIFLayerSizes(v9, v7, HIWORD(v7), v8);
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v4)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t ParseGlobalMetaDataIFFItemPropertyUUIDProperty()
{
  OUTLINED_FUNCTION_187();
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  if (!FigAtomStreamGetCurrentAtomUUIDType())
  {
    switch(IFFInformationGetItemPropertyTypeForUUID(v31))
    {
      case 0xFu:
        v2 = OUTLINED_FUNCTION_19_21();
        if (!OUTLINED_FUNCTION_39_10(v2, v3, v4, v5))
        {
          v6 = OUTLINED_FUNCTION_12_25();
          if (!IFFInformationReserveSharedItemProperty(v6, 15, &v32, 0))
          {
            goto LABEL_8;
          }
        }

        break;
      case 0x10u:
        v7 = OUTLINED_FUNCTION_19_21();
        if (!OUTLINED_FUNCTION_39_10(v7, v8, v9, v10))
        {
          v11 = OUTLINED_FUNCTION_12_25();
          if (!IFFInformationReserveSharedItemProperty(v11, 16, &v32, 0))
          {
LABEL_8:
            IFFInformationSetItemPropertyRotationDegreesCCW(v32, v30);
          }
        }

        break;
      case 0x11u:
        v14 = OUTLINED_FUNCTION_20_13();
        _parseExtrinsicsPropertyHelper(v14, v15, v16, v17, v18, v19, v20, v21);
        break;
      case 0x12u:
        v22 = OUTLINED_FUNCTION_20_13();
        _parseIntrinsicsPropertyHelper(v22, v23, v24, v25, v26, v27, v28, v29);
        break;
      case 0x13u:
        OUTLINED_FUNCTION_20_13();
        _parseDisparityAdjustmentPropertyHelper();
        break;
      case 0x14u:
        _parseStereoAggressorsPropertyHelper(v1, v0);
        break;
      default:
        break;
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v13)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t _parseExtrinsicsPropertyHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_17_18(a1, a2, a3, a4, a5, a6, a7, a8, v14, v16, v18, v21, v23, v25, v27, SWORD2(v27), SBYTE6(v27), SHIBYTE(v27), v30))
  {
    goto LABEL_24;
  }

  if (v29)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v17, v19);
    goto LABEL_24;
  }

  v24 = 0;
  v26 = 0;
  v22 = 0;
  v20 = 0;
  v10 = v28;
  if (v28)
  {
    OUTLINED_FUNCTION_11_27();
    if (FigAtomStreamReadCurrentAtomData())
    {
      goto LABEL_24;
    }

    HIDWORD(v26) = bswap32(0);
    v10 = v28;
    if ((v28 & 2) == 0)
    {
LABEL_5:
      if ((v10 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_12:
      OUTLINED_FUNCTION_178();
      if (FigAtomStreamReadCurrentAtomData())
      {
        goto LABEL_24;
      }

      HIDWORD(v24) = bswap32(0);
      v10 = v28;
      if ((v28 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      if ((v10 & 0x10) != 0)
      {
        OUTLINED_FUNCTION_178();
        if (FigAtomStreamReadCurrentAtomData())
        {
          goto LABEL_24;
        }

        v22 = vrev32_s8(0);
        LODWORD(v24) = bswap32(0);
        v11 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_178();
        if (FigAtomStreamReadCurrentAtomData())
        {
          goto LABEL_24;
        }

        v11 = 0;
        v22.i32[0] = bswap32(0) >> 16;
        v22.i32[1] = v22.i32[0];
        LODWORD(v24) = v22.i32[0];
      }

      goto LABEL_19;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_178();
  if (FigAtomStreamReadCurrentAtomData())
  {
    goto LABEL_24;
  }

  LODWORD(v26) = bswap32(0);
  v10 = v28;
  if ((v28 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v10 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v11 = 0;
LABEL_19:
  if ((v28 & 0x20) != 0)
  {
    OUTLINED_FUNCTION_178();
    if (FigAtomStreamReadCurrentAtomData())
    {
      goto LABEL_24;
    }

    v20 = bswap32(0);
  }

  if (!IFFInformationReserveSharedItemProperty(*(v9 + 8), 17, &v30, 0))
  {
    IFFInformationSetItemPropertyExtrinsics(v30, SHIDWORD(v26), v26, SHIDWORD(v24), v22.i32[0], v22.i32[1], v24, v11, v20, 0, v8);
  }

LABEL_24:
  OUTLINED_FUNCTION_9_28();
  if (v13)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

uint64_t _parseIntrinsicsPropertyHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_18(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, v16, v19, v20, v22, v23, SWORD2(v23), SBYTE6(v23), SHIBYTE(v23), v26))
  {
    if (v25)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, v17);
    }

    else
    {
      OUTLINED_FUNCTION_11_27();
      if (!FigAtomStreamReadCurrentAtomData())
      {
        v18 = vrev32q_s8(0);
        v21 = bswap32(0);
        if (!IFFInformationReserveSharedItemProperty(*(v9 + 8), 18, &v26, 0))
        {
          IFFInformationSetItemPropertyIntrinsics(v26, v24[0] & 1, v24[1] & 0x1F, v24[2] & 0x1F, v18.i32[0], v18.i32[3], v18.i32[1], v18.i32[2], v21, v8);
        }
      }
    }
  }

  OUTLINED_FUNCTION_9_28();
  if (v11)
  {
    return result;
  }

  else
  {
    return 1717723499;
  }
}

void _parseDisparityAdjustmentPropertyHelper()
{
  OUTLINED_FUNCTION_187();
  v5 = 0;
  if (!v1 || (CheckAtomVersionIsZero(v0), !v2))
  {
    OUTLINED_FUNCTION_19_21();
    if (!FigAtomStreamReadCurrentAtomData())
    {
      v3 = OUTLINED_FUNCTION_12_25();
      if (!IFFInformationReserveSharedItemProperty(v3, 19, &v5, 0))
      {
        IFFInformationSetItemPropertyRotationDegreesCCW(v5, v4);
      }
    }
  }
}

uint64_t _parseStereoAggressorsPropertyHelper(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v29 = 0;
  CheckAtomVersionIsZero(a1);
  if (CurrentAtomData || (v27 = 0, (CurrentAtomData = FigAtomStreamReadCurrentAtomData()) != 0))
  {
    v17 = CurrentAtomData;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    goto LABEL_23;
  }

  v4 = v27;
  v5 = malloc_type_calloc(v27 + 1, 1uLL, 0x100004077774924uLL);
  if (!v5)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_35;
  }

  v6 = malloc_type_calloc(v27 + 1, 1uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_35;
  }

  v7 = malloc_type_calloc(v27 + 1, 8uLL, 0x6004044C4A2DFuLL);
  v8 = v7;
  if (!v7)
  {
LABEL_35:
    v17 = -12846;
    goto LABEL_23;
  }

  v22 = a2;
  v9 = 0;
  v10 = v27 + 1;
  v11 = 5;
  v12 = v7;
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v26 = 0;
    BBuf = FigAtomStreamReadCurrentAtomData();
    if (BBuf)
    {
      break;
    }

    v11 += 2;
    v5[v9] = v26;
    v14 = SHIBYTE(v26);
    v6[v9] = HIBYTE(v26) & 0x7F;
    if (v14 < 0)
    {
      BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
      if (BBuf)
      {
        break;
      }

      v24 = 0;
      v25 = 0;
      v23 = 0;
      BBuf = OUTLINED_FUNCTION_26_17(cf, v15, &v24, v16, &v25);
      if (BBuf)
      {
        break;
      }

      copyNullTerminatedStringAndAdvanceBuffer(&v25, &v24, 0, v12, &v23);
      if (BBuf)
      {
        break;
      }

      v11 += v23;
    }

    ++v9;
    ++v12;
    if (v10 == v9)
    {
      BBuf = IFFInformationReserveSharedItemProperty(*(v22 + 8), 20, &v29, 0);
      if (!BBuf)
      {
        BBuf = IFFInformationSetItemPropertyStereoAggressors(v29, v4 + 1, v5, v6, v8);
      }

      break;
    }
  }

  v17 = BBuf;
  v18 = 0;
  do
  {
    v19 = v8[v18 / 8];
    if (v19)
    {
      CFRelease(v19);
    }

    v18 += 8;
  }

  while (8 * v4 + 8 != v18);
  free(v8);
  v8 = cf;
LABEL_23:
  free(v6);
  free(v5);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v29)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17 == 0;
  }

  if (v20)
  {
    return v17;
  }

  else
  {
    return 1717723499;
  }
}

void ParseFileTypeAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseFileTypeAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseFileTypeAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ParseGlobalMetaDataGroupAtom_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigMetadataCopyTrackQuickTimeMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_180_1();
  FigTrackReaderGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_7_33();
    v5(v4);
    v3 = 0;
  }

  if (v3 == *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = 4294954514;
      goto LABEL_13;
    }

    v9 = OUTLINED_FUNCTION_5_50();
    v11 = v10(v9);
LABEL_11:
    v8 = v11;
    goto LABEL_13;
  }

  FigTrackReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v6 = OUTLINED_FUNCTION_4_56();
    v7(v6);
  }

  v8 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigMetadataCopyTrackQuickTimeUserdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_180_1();
  FigTrackReaderGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_7_33();
    v5(v4);
    v3 = 0;
  }

  if (v3 == *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = 4294954514;
      goto LABEL_13;
    }

    v9 = OUTLINED_FUNCTION_5_50();
    v11 = v10(v9);
LABEL_11:
    v8 = v11;
    goto LABEL_13;
  }

  FigTrackReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v6 = OUTLINED_FUNCTION_4_56();
    v7(v6);
  }

  v8 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t FigMetadataCopyTrackISOUserdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a1 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_180_1();
  FigTrackReaderGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_7_33();
    v5(v4);
    v3 = 0;
  }

  if (v3 == *MEMORY[0x1E695E4D0])
  {
    FigTrackReaderGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = 4294954514;
      goto LABEL_13;
    }

    v9 = OUTLINED_FUNCTION_5_50();
    v11 = v10(v9);
LABEL_11:
    v8 = v11;
    goto LABEL_13;
  }

  FigTrackReaderGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v6 = OUTLINED_FUNCTION_4_56();
    v7(v6);
  }

  v8 = 0;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

double FigMetadataGetNumericalDataTypeForMetadataProperties(uint64_t a1, const __CFDictionary *a2, uint64_t a3, _DWORD *a4, uint64_t *a5)
{
  valuePtr = 0;
  if (a2)
  {
    if (!FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return result;
    }

    if (a4)
    {
      Value = CFDictionaryGetValue(a2, @"dataType");
      if (!Value)
      {
        return result;
      }

      v12 = Value;
      v13 = CFDictionaryGetValue(a2, @"dataTypeNamespace");
      if (!v13)
      {
        v13 = @"com.apple.quicktime.mdta";
        if (!FigCFEqual())
        {
          if (!FigCFEqual())
          {
            if (!FigCFEqual() && !FigCFEqual())
            {
              return result;
            }

            v13 = @"com.apple.quicktime.udta";
            if (!@"com.apple.quicktime.udta")
            {
              return result;
            }

            goto LABEL_12;
          }

          v13 = @"com.apple.itunes";
        }

        if (!v13)
        {
          return result;
        }
      }

LABEL_12:
      if (FigCFEqual())
      {
        v14 = CFGetTypeID(v12);
        if (v14 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
          FigCFDictionaryGetCFIndexIfPresent();
        }

        v15 = 0;
      }

      else
      {
        v21 = 0;
        FigCFDictionaryGetCFIndexIfPresent();
        v15 = 0;
        CoreMediaDataType = FigMetadataGetCoreMediaDataType(v13, v12, 0);
        if (CoreMediaDataType)
        {
          v17 = CoreMediaDataType;
          if (FigMetadataGetDataTypeWithNamespaceForCoreMediaDataType(a3, CoreMediaDataType, &v21))
          {
            valuePtr = v21;
            if (CFEqual(v17, *MEMORY[0x1E6960288]) || CFEqual(v17, *MEMORY[0x1E69602A8]))
            {
              v15 = 1;
            }

            else if (CFEqual(v17, *MEMORY[0x1E6960270]) || CFEqual(v17, *MEMORY[0x1E6960290]))
            {
              v15 = 2;
            }

            else if (CFEqual(v17, *MEMORY[0x1E6960278]) || CFEqual(v17, *MEMORY[0x1E6960298]))
            {
              v15 = 4;
            }

            else if (CFEqual(v17, *MEMORY[0x1E6960280]) || CFEqual(v17, *MEMORY[0x1E69602A0]))
            {
              v15 = 8;
            }

            else
            {
              v15 = 0;
            }
          }
        }
      }

      if (a5)
      {
        *a5 = v15;
      }

      *a4 = valuePtr;
      return result;
    }

    emitter = fig_log_get_emitter();
    v19 = v5;
    v20 = 4853;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v19 = v5;
    v20 = 4848;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< MetadataHelper >>>>", v20, v19);
}

void *FigID3MetadataCreateChapterArrayFromTopLevelTableOfContents(const __CFAllocator *a1, uint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  cf = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    goto LABEL_42;
  }

  v82 = v6(v4);
  if (v82 < 1)
  {
    goto LABEL_42;
  }

  FigMetadataReaderGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    goto LABEL_42;
  }

  v10 = 0;
  if (v9(v8, @"formatVersion", a1, &cf) || !cf)
  {
    OUTLINED_FUNCTION_6_45();
    if (!v35)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFNumberGetTypeID())
  {
    CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    v11 = 0;
    v84 = v4;
    while (2)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v12)
      {
        goto LABEL_42;
      }

      v10 = 0;
      if (v12(v4, @"org.id3", @"CTOC", v11, a1, &cf, 0))
      {
        OUTLINED_FUNCTION_6_45();
      }

      else
      {
        OUTLINED_FUNCTION_6_45();
        if (!v13)
        {
          break;
        }

        v14 = CFGetTypeID(v13);
        if (v14 != CFDataGetTypeID())
        {
          goto LABEL_42;
        }

        v15 = cf;
        BytePtr = CFDataGetBytePtr(cf);
        Length = CFDataGetLength(v15);
        v18 = strnlen(BytePtr, Length);
        if (v18 >= Length || (v19 = &BytePtr[Length], v20 = &BytePtr[v18], &BytePtr[v18 + 1] >= v19) || (v21 = v20 + 2, (v20 + 2) >= v19) || (v8 = *v21, !*v21))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_75();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v30 = v31;
          goto LABEL_34;
        }

        v22 = *(v20 + 1);
        Mutable = CFArrayCreateMutable(a1, *v21, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_75();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v75, v77);
          v30 = v32;
          goto LABEL_33;
        }

        v24 = Mutable;
        v25 = 0;
        v2 = (v20 + 3);
        do
        {
          v26 = strnlen(v2, v19 - v2);
          if (v26 >= v19 - v2 || (v27 = v26, (v28 = CFStringCreateWithBytes(a1, v2, v26, 0, 0)) == 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_75();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            v30 = v29;
            CFRelease(v24);
LABEL_33:
            v4 = v84;
LABEL_34:
            v24 = 0;
            v10 = 0;
            v2 = 0;
            v8 = 0;
            v3 = 0;
            if (!v30)
            {
              goto LABEL_27;
            }

            goto LABEL_44;
          }

          v3 = v28;
          CFArrayAppendValue(v24, v28);
          CFRelease(v3);
          v2 += v27 + 1;
          ++v25;
        }

        while (v25 < v8);
        if ((~v22 & 3) != 0)
        {
          CFRelease(v24);
          v24 = 0;
        }

        v4 = v84;
LABEL_27:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (!v24 && ++v11 < v82)
        {
          continue;
        }

        if (!v24)
        {
          goto LABEL_42;
        }

        capacity = CFArrayGetCount(v24);
        if (capacity < 1 || ((v33 = *(*(CMBaseObjectGetVTable() + 16) + 40)) == 0 ? (v34 = 0) : (v34 = v33(v4, @"org.id3", @"CHAP")), v34 < capacity))
        {
          v2 = 0;
        }

        else
        {
          v2 = CFDictionaryCreateMutable(0, capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v2)
          {
            v37 = 0;
            blockAllocator = *MEMORY[0x1E695E498];
            v76 = @"ChapterMetadataItems";
            v78 = @"ChapterDuration";
            v81 = v34;
            while (1)
            {
              v38 = *(*(CMBaseObjectGetVTable() + 16) + 48);
              if (!v38)
              {
                break;
              }

              if (v38(v4, @"org.id3", @"CHAP", v37, a1, &cf, 0))
              {
                break;
              }

              if (!cf)
              {
                break;
              }

              v39 = CFGetTypeID(cf);
              if (v39 != CFDataGetTypeID())
              {
                break;
              }

              v40 = valuePtr;
              v41 = cf;
              v42 = CFDataGetBytePtr(cf);
              v43 = CFDataGetLength(v41);
              v44 = strnlen(v42, v43);
              if (v44 >= v43)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_75();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v76, v78);
                v68 = v67;
                goto LABEL_105;
              }

              v45 = v44;
              v46 = &v42[v43];
              v83 = CFStringCreateWithBytes(a1, v42, v44, 0, 0);
              v47 = &v42[v45];
              if (&v42[v43 + ~&v42[v45]] < 4 || v46 - v47 - 5 < 4 || v46 - v47 - 9 < 8)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_75();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v76, v78);
                v68 = v69;
                if (v83)
                {
                  CFRelease(v83);
                }

LABEL_105:
                if (v68)
                {
                  break;
                }

                goto LABEL_98;
              }

              v48 = *(v47 + 1);
              v49 = *(v47 + 5);
              theBuffer = 0;
              v89[0] = 0;
              v87 = 0;
              if ((v40 - 255) <= 0xFFFFFF02 || (v50 = (v47 + 17), v51 = v46 - (v47 + 17), v51 >= 0xFFFFFF7))
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_75();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                v59 = 0;
                v52 = v83;
              }

              else
              {
                v52 = v83;
                if (v51 < 0xB)
                {
                  goto LABEL_74;
                }

                WORD2(memoryBlock.value) = 0;
                LODWORD(memoryBlock.value) = bswap32(v40 | 0x49443300);
                *(&memoryBlock.value + 6) = bswap32(v51 & 0x7F | (((v51 >> 14) & 0x7F) << 16) & 0x80FF80FF | (((v51 >> 21) & 0x7F) << 24) | (((v51 >> 7) & 0x7F) << 8));
                if (CMBlockBufferCreateWithMemoryBlock(a1, &memoryBlock, 0xAuLL, blockAllocator, 0, 0, 0xAuLL, 0, &theBuffer) || CMBlockBufferAppendMemoryBlock(theBuffer, v50, v51, blockAllocator, 0, 0, v51, 0) || FigMetadataReaderCreateForTimedID3(a1, theBuffer, &v87))
                {
                  goto LABEL_74;
                }

                OUTLINED_FUNCTION_496();
                v58 = FigMetadataCopyMetadataItemsIf(v53, v54, v55, v56, v57);
                v59 = v89[0];
                if (v58 && v89[0])
                {
                  CFRelease(v89[0]);
LABEL_74:
                  v59 = 0;
                }
              }

              if (theBuffer)
              {
                CFRelease(theBuffer);
              }

              if (v87)
              {
                CFRelease(v87);
              }

              if (!v52)
              {
                goto LABEL_96;
              }

              v93.location = 0;
              v93.length = capacity;
              if (CFArrayContainsValue(v24, v93, v52))
              {
                v60 = bswap32(v48);
                CMTimeMake(&memoryBlock, v60, 1000);
                v61 = CMTimeCopyAsDictionary(&memoryBlock, a1);
                CMTimeMake(&memoryBlock, (bswap32(v49) - v60), 1000);
                v62 = CMTimeCopyAsDictionary(&memoryBlock, a1);
                v63 = v62;
                v89[1] = v62;
                v90 = 0;
                memoryBlock.value = @"ChapterTime";
                *&memoryBlock.timescale = v78;
                memoryBlock.epoch = 0;
                v89[0] = v61;
                if (v59)
                {
                  memoryBlock.epoch = v76;
                  v90 = v59;
                }

                v52 = v83;
                if (v61 && v62)
                {
                  if (v59)
                  {
                    v64 = 3;
                  }

                  else
                  {
                    v64 = 2;
                  }

                  v65 = CFDictionaryCreate(a1, &memoryBlock, v89, v64, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionarySetValue(v2, v83, v65);
LABEL_90:
                  CFRelease(v61);
                  v66 = v65;
                }

                else
                {
                  v65 = 0;
                  v66 = 0;
                  if (v61)
                  {
                    goto LABEL_90;
                  }
                }

                if (v63)
                {
                  CFRelease(v63);
                }

                if (v66)
                {
                  CFRelease(v66);
                }
              }

              CFRelease(v52);
LABEL_96:
              v4 = v84;
              if (v59)
              {
                CFRelease(v59);
              }

LABEL_98:
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (v81 == ++v37)
              {
                v70 = CFArrayCreateMutable(a1, capacity, MEMORY[0x1E695E9C0]);
                v3 = v70;
                if (!v70)
                {
LABEL_112:
                  v8 = 0;
                  goto LABEL_117;
                }

                v71 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v24, v71);
                  Value = CFDictionaryGetValue(v2, ValueAtIndex);
                  if (!Value)
                  {
                    break;
                  }

                  CFArrayAppendValue(v3, Value);
                  if (capacity == ++v71)
                  {
                    goto LABEL_112;
                  }
                }

                v10 = v24;
                v8 = v3;
                goto LABEL_43;
              }
            }
          }
        }

        v8 = 0;
        v3 = 0;
LABEL_117:
        v10 = v24;
      }

      break;
    }
  }

  else
  {
LABEL_42:
    v10 = 0;
    v2 = 0;
    v8 = 0;
LABEL_43:
    v3 = 0;
  }

LABEL_44:
  v35 = cf;
  if (cf)
  {
LABEL_45:
    CFRelease(v35);
  }

LABEL_46:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v3;
}

const __CFString *FigMetadataItemKeyIsVorbisCommentChapterFieldName(uint64_t a1)
{
  FigCFDictionaryGetValue();
  if (!FigCFEqual())
  {
    return 0;
  }

  Value = FigCFDictionaryGetValue();
  v2 = Value;
  if (!Value)
  {
    return v2;
  }

  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID() || CFStringGetLength(v2) < 10 || !CFStringHasPrefix(v2, @"CHAPTER"))
  {
    return 0;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (CStringPtrAndBufferToFree && (CStringPtrAndBufferToFree[7] - 48) <= 9 && (CStringPtrAndBufferToFree[8] - 48) <= 9)
  {
    v2 = ((CStringPtrAndBufferToFree[9] - 48) < 0xA);
  }

  else
  {
    v2 = 0;
  }

  free(0);
  return v2;
}

uint64_t FigIsCommonKeyMappedToMetadataFormat(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&_MergedGlobals_3, FigUserDataSetUpCommonKeyMapping);
    v3 = &qword_1EAF19308;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0B0, FigISOUserDataSetUpCommonKeyMapping);
    v3 = &qword_1EAF19310;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0C0, FigQuickTimeMetadataSetUpCommonKeyMapping);
    v3 = &qword_1EAF19318;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0D0, FigiTunesMetadataSetUpCommonKeyMapping);
    v3 = &_MergedGlobals_516;
  }

  else if (FigCFEqual())
  {
    MEMORY[0x19A8D3660](&unk_1ED4CA0E0, FigID3MetadataSetUpCommonKeyMapping);
    v3 = &qword_1EAF192F8;
  }

  else
  {
    if (!FigCFEqual())
    {
      return 0;
    }

    MEMORY[0x19A8D3660](&unk_1ED4CA0F0, FigVorbisCommentSetUpCommonKeyMapping);
    v3 = &qword_1EAF19300;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  return CFDictionaryContainsKey(v4, a1);
}

CFDataRef FigMetadataCreateMetadataItemsFromFigMetadataPropertyListSampleBuffer(opaqueCMSampleBuffer *a1, void *a2)
{
  theBuffer = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v26);
    goto LABEL_16;
  }

  if (!CMSampleBufferGetDataBuffer(a1))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_496();
  Contiguous = CMBlockBufferCreateContiguous(v3, v4, v5, v6, 0, 0, 0, v7);
  if (Contiguous)
  {
LABEL_16:
    v16 = Contiguous;
    goto LABEL_12;
  }

  DataLength = CMBlockBufferGetDataLength(0);
  if (!DataLength)
  {
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v10 = DataLength;
  OUTLINED_FUNCTION_496();
  Contiguous = CMBlockBufferGetDataPointer(v11, v12, v13, v14, v15);
  if (Contiguous)
  {
    goto LABEL_16;
  }

  v16 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], 0, v10, *MEMORY[0x1E695E498]);
  if (v16)
  {
    OUTLINED_FUNCTION_496();
    v21 = CFPropertyListCreateWithData(v17, v18, v19, v20, 0);
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFArrayGetTypeID())
      {
        *a2 = v22;
      }

      else
      {
        CFRelease(v22);
      }
    }

    CFRelease(v16);
    goto LABEL_11;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, v26);
LABEL_12:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v16;
}

uint64_t FigMetadataCreateMetadataItemsFromSampleBuffer(opaqueCMSampleBuffer *a1)
{
  cf = 0;
  v19 = 0;
  DataBuffer = CMSampleBufferGetDataBuffer(a1);
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (CMFormatDescriptionGetMediaType(FormatDescription) != 1835365473)
  {
    return v19;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v5 = MEMORY[0x1E695E480];
  switch(MediaSubType)
  {
    case 0x656D7367u:
      theString1 = 0;
      value = 0;
      if (!a1)
      {
        goto LABEL_24;
      }

      SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
      if (!SampleAttachmentsArray)
      {
        goto LABEL_24;
      }

      v9 = SampleAttachmentsArray;
      if (CFArrayGetCount(SampleAttachmentsArray) < 1)
      {
        goto LABEL_24;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      if (!ValueAtIndex)
      {
        goto LABEL_24;
      }

      if (!CFDictionaryGetValueIfPresent(ValueAtIndex, *MEMORY[0x1E6962DB8], &value))
      {
        goto LABEL_24;
      }

      if (!value)
      {
        goto LABEL_24;
      }

      CFDictionaryGetValueIfPresent(value, *MEMORY[0x1E6962720], &theString1);
      if (!theString1 || CFStringCompare(theString1, @"https://developer.apple.com/streaming/emsg-id3", 0) && CFStringCompare(theString1, @"https://aomedia.org/emsg/ID3", 0))
      {
        goto LABEL_24;
      }

      v7 = CMSampleBufferGetDataBuffer(a1);
      v6 = *v5;
LABEL_9:
      if (!FigMetadataReaderCreateForTimedID3(v6, v7, &cf))
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    case 0x69637920u:
      FigMetadataReaderCreateWithSampleBufferForIcy(*MEMORY[0x1E695E480], a1, &cf);
      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    case 0x69643320u:
      v6 = *MEMORY[0x1E695E480];
      v7 = DataBuffer;
      goto LABEL_9;
  }

  if (MediaSubType != 1835360888)
  {
    if (MediaSubType == 1886155636)
    {
      FigMetadataCreateMetadataItemsFromFigMetadataPropertyListSampleBuffer(a1, &v19);
      goto LABEL_26;
    }

LABEL_24:
    if (!cf)
    {
      return v19;
    }

    OUTLINED_FUNCTION_496();
    FigMetadataCopyMetadataItemsIf(v12, v13, v14, v15, v16);
    goto LABEL_26;
  }

  if (!FigMetadataReaderCreateForBoxedMetadata(*MEMORY[0x1E695E480], DataBuffer, FormatDescription, &cf))
  {
    goto LABEL_24;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

double FigCopyOSTypeKeysFromCommonKeys_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigCopyOSTypeKeysFromCommonKeys_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigQuickTimeMetadataCopyNativeKeysFromCommonKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyISO8601GMTStringFromDate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyISO8601GMTStringFromDate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyISO8601GMTStringFromDate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyISO8601GMTStringFromDate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyISO8601GMTStringFromDate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyTrackCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyTrackCommonMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyCommonMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyCommonMetadata_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyMovieCommonMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyMovieCommonMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyMovieMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyMovieMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyAllMetadata_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  *v0 = v2;
  CFRelease(v1);
}

void FigMetadataCopyTrackMetadata_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyTrackMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyMetadataItemsIf_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCopyMetadataItemsIf_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVorbisCommentMetadataCreateChapterArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVorbisCommentMetadataCreateChapterArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigVorbisCommentMetadataCreateChapterArray_cold_3(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void FigVorbisCommentMetadataCreateChapterArray_cold_4(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = v3;
}

void FigVorbisCommentMetadataCreateChapterArray_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigVorbisCommentMetadataCreateChapterArray_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigIcyMetadataParseSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyMetadataParseSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigIcyMetadataParseSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataCreateFigPropertyListBlockBufferFromMetadataItems_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataArrayCreateWithAudioFileMetadataItemList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double AddVorbisCommentItemToArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigMetadataReaderCreateWithAudioFileProperties_cold_1()
{
  OUTLINED_FUNCTION_180_1();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  *v0 = v2;
  *v1 = 0;
}

double CreateFigMetadataItemForAudioFileInfoItem_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double AddFigMetadataItemToArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FigiTunesMetadataHasKey(const void *a1, const void *a2, const __CFString *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage || !a3 || !a2)
  {
    goto LABEL_34;
  }

  v8 = CommonKeyToShortKeyMapping;
  OUTLINED_FUNCTION_3_55();
  if (!CFEqual(a2, @"comn"))
  {
    if (!CFEqual(a2, @"itsk"))
    {
      if (CFEqual(a2, @"itlk"))
      {
        v12 = 0;
        v13 = 1;
LABEL_18:
        if (DerivedStorage[3] >= 1)
        {
          OUTLINED_FUNCTION_11_28();
          FigiTunesMetadataGetItemListAtomStream(DerivedStorage, v16, 0, v17);
          if (!v18)
          {
            while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
            {
              if (v24 == 757935405)
              {
                if (v13)
                {
                  theString2 = 0;
                  v19 = CFGetAllocator(a1);
                  if (FigiTunesMetadataCopyLongKey(v26, v19, &theString2))
                  {
                    return 0;
                  }

                  v20 = theString2;
                  if (theString2)
                  {
                    v21 = CFStringCompare(a3, theString2, 0);
                    CFRelease(v20);
                    if (v21 == kCFCompareEqualTo)
                    {
                      return 1;
                    }
                  }
                }
              }

              else
              {
                if (valuePtr == v24)
                {
                  v22 = v12;
                }

                else
                {
                  v22 = 0;
                }

                if (v22)
                {
                  return 1;
                }
              }

              if (FigAtomStreamAdvanceToNextAtom())
              {
                return 0;
              }
            }
          }
        }

        return 0;
      }

      goto LABEL_34;
    }

    v11 = CFGetTypeID(a3);
    if (v11 == CFStringGetTypeID())
    {
      if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = CFGetTypeID(a3);
      if (v14 != CFNumberGetTypeID())
      {
LABEL_34:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        return 0;
      }

      if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_11:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        return 0;
      }
    }

    OUTLINED_FUNCTION_4_57();
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFStringGetTypeID())
  {
    goto LABEL_34;
  }

  result = CFDictionaryGetValue(v8, a3);
  valuePtr = result;
  if (result)
  {
LABEL_17:
    v13 = 0;
    v12 = 1;
    goto LABEL_18;
  }

  return result;
}

double FigiTunesMetadataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, const __CFAllocator *a4, CFStringRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || !a5)
  {
    goto LABEL_37;
  }

  v10 = DerivedStorage;
  if (a2)
  {
    if (CFEqual(a2, @"itsk"))
    {
      v11 = 0;
      v12 = 2;
      v13 = 1;
    }

    else
    {
      if (!CFEqual(a2, @"itlk"))
      {
LABEL_37:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_252();

        return FigSignalErrorAtGM(v26);
      }

      v13 = 0;
      v11 = 1;
      v12 = 1;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 0;
  }

  memset(v32, 0, 224);
  if (*(v10 + 24) <= 0)
  {
    goto LABEL_37;
  }

  valuePtr = 0;
  if (!*(v10 + 57))
  {
    goto LABEL_16;
  }

  if (*(v10 + 60) != v12 || (v14 = *(v10 + 64), v14 >= a3))
  {
    *(v10 + 57) = 0;
LABEL_16:
    OUTLINED_FUNCTION_11_28();
    FigiTunesMetadataGetItemListAtomStream(v10, v19, 0, v20);
    v14 = 0;
    if (v21)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_11_28();
  FigiTunesMetadataGetItemListAtomStream(v10, v15, v16, v17);
  if (v18)
  {
    goto LABEL_33;
  }

  *(v10 + 57) = 0;
LABEL_17:
  v22 = a2 == 0;
  if (a2)
  {
    v23 = v13;
  }

  else
  {
    v23 = 1;
  }

  if (v22)
  {
    v11 = 1;
  }

  while (1)
  {
    if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      goto LABEL_33;
    }

    if (valuePtr == 757935405)
    {
      break;
    }

    if (v23)
    {
      if (v14 == a3)
      {
        v25 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        *a5 = v25;
        if (!v25)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, LODWORD(v32[0]));
          goto LABEL_33;
        }

        goto LABEL_35;
      }

      goto LABEL_30;
    }

LABEL_31:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      OUTLINED_FUNCTION_8_25();
      goto LABEL_33;
    }
  }

  if (!v11)
  {
    goto LABEL_31;
  }

  if (v14 != a3)
  {
LABEL_30:
    ++v14;
    goto LABEL_31;
  }

  if (!FigiTunesMetadataCopyLongKey(v32, a4, a5))
  {
LABEL_35:
    *(v10 + 60) = v12;
    *(v10 + 64) = a3;
    if (!FigAtomStreamGetCurrentAtomOffsetInParent())
    {
      *(v10 + 57) = 1;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_252();
  return result;
}

uint64_t FigiTunesMetadataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, const __CFAllocator *a5, unint64_t a6, unint64_t a7)
{
  v74 = a5;
  memset(v89, 0, 112);
  memset(v88, 0, sizeof(v88));
  valuePtr = 0;
  v86 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theDict = 0;
  v85 = 0;
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  v72 = a6;
  v73 = a7;
  if (!DerivedStorage)
  {
    goto LABEL_95;
  }

  if (!(a6 | a7))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, value);
    goto LABEL_106;
  }

  if (a2)
  {
    v14 = CommonKeyToShortKeyMapping;
    if (CFEqual(a2, @"comn"))
    {
      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFStringGetTypeID())
        {
          HIDWORD(valuePtr) = CFDictionaryGetValue(v14, a3);
          if (!HIDWORD(valuePtr))
          {
            v40 = 4294954691;
            goto LABEL_107;
          }

          goto LABEL_8;
        }
      }

LABEL_95:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_9();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_96:
      v40 = v63;
      if (v63)
      {
        goto LABEL_107;
      }

      goto LABEL_97;
    }

    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v22 = CFGetTypeID(a3);
        if (v22 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr + 1))
          {
            goto LABEL_84;
          }
        }

        else
        {
          v62 = CFGetTypeID(a3);
          if (v62 != CFNumberGetTypeID())
          {
            goto LABEL_95;
          }

          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr + 4))
          {
            goto LABEL_84;
          }
        }

        if (HIDWORD(valuePtr) == 757935405)
        {
LABEL_84:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_9();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_96;
        }
      }

LABEL_8:
      v16 = 0;
      v17 = 2;
      v18 = 1;
      goto LABEL_11;
    }

    if (!CFEqual(a2, @"itlk"))
    {
      goto LABEL_95;
    }

    if (a3)
    {
      v57 = CFGetTypeID(a3);
      if (v57 != CFStringGetTypeID())
      {
        goto LABEL_95;
      }
    }

    v18 = 0;
    v16 = 1;
    v17 = 1;
  }

  else
  {
    if (a3)
    {
      goto LABEL_95;
    }

    v16 = 0;
    v18 = 0;
    v17 = 0;
  }

LABEL_11:
  if (*(DerivedStorage + 24) <= 0)
  {
    goto LABEL_84;
  }

  v69 = DerivedStorage;
  HIDWORD(v67) = v17;
  if (a3 || !*(DerivedStorage + 57))
  {
LABEL_24:
    FigiTunesMetadataGetItemListAtomStream(DerivedStorage, v89, 0, v88);
    v20 = 0;
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_106;
    }

    goto LABEL_25;
  }

  v19 = DerivedStorage;
  if (*(DerivedStorage + 60) != v17 || (v20 = *(DerivedStorage + 64), v20 >= a4))
  {
    *(v19 + 57) = 0;
    DerivedStorage = v19;
    goto LABEL_24;
  }

  FigiTunesMetadataGetItemListAtomStream(v19, v89, *(v19 + 72), v88);
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_106;
  }

  *(v19 + 57) = 0;
LABEL_25:
  valuea = 0;
  cf = 0;
  if (a2)
  {
    v23 = v18;
  }

  else
  {
    v23 = 1;
  }

  if (a2)
  {
    v24 = v16;
  }

  else
  {
    v24 = 1;
  }

  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_106;
    }

    if (valuePtr != 757935405)
    {
      if (v23 && (!a3 || HIDWORD(valuePtr) == valuePtr))
      {
        CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_5_51(CurrentAtomTypeAndDataLength, v25, v26, v27, v28, v29, v30, v31, v67, v69, valuea, v72, v73, v74, cf, v76, v77, v78, v79, v80, v81, v82, v83, theDict, v85, v86, valuePtr, v88[0]);
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_106;
        }

        v39 = v20;
        while (1)
        {
          CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_13_20(CurrentAtomTypeAndDataLength, v41, v42, v43, v44, v45, v46, v47);
          if (CurrentAtomTypeAndDataLength)
          {
            goto LABEL_106;
          }

          if (HIDWORD(v76) == 1684108385)
          {
            if (v39 == a4)
            {
              CurrentAtomTypeAndDataLength = FigiTunesMetadataCopyItemValueAndProperties(&v77);
              if (CurrentAtomTypeAndDataLength)
              {
                goto LABEL_106;
              }

              if (theDict)
              {
                v64 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
                if (v64)
                {
                  v65 = v64;
                  CFDictionaryAddValue(theDict, @"key", v64);
                  CFRelease(v65);
                }

                v60 = theDict;
                v61 = @"itsk";
LABEL_91:
                CFDictionaryAddValue(v60, @"keyspace", v61);
              }

              goto LABEL_92;
            }

            ++v39;
          }

          CurrentAtomTypeAndDataLength = FigAtomStreamAdvanceToNextAtom();
          if (CurrentAtomTypeAndDataLength)
          {
LABEL_55:
            if (CurrentAtomTypeAndDataLength == -12890)
            {
              v40 = 0;
            }

            else
            {
              v40 = CurrentAtomTypeAndDataLength;
            }

            v20 = v39;
            goto LABEL_59;
          }
        }
      }

      goto LABEL_47;
    }

    if (v24)
    {
      break;
    }

LABEL_47:
    v40 = 0;
LABEL_59:
    if (FigAtomStreamAdvanceToNextAtom())
    {
      OUTLINED_FUNCTION_8_25();
      if (!v56)
      {
        goto LABEL_106;
      }

      if (!v40)
      {
        v40 = 4294954689;
      }

      goto LABEL_107;
    }
  }

  if (!a3)
  {
    CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_5_51(CurrentAtomTypeAndDataLength, v25, v26, v27, v28, v29, v30, v31, v67, v69, valuea, v72, v73, v74, cf, v76, v77, v78, v79, v80, v81, v82, v83, theDict, v85, v86, valuePtr, v88[0]);
    goto LABEL_36;
  }

  if (cf)
  {
    CFRelease(cf);
    v86 = 0;
  }

  CurrentAtomTypeAndDataLength = FigiTunesMetadataCopyLongKey(v88, v74, &v86);
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_106;
  }

  v48 = v86;
  if (!v86)
  {
    valuea = 0;
    cf = 0;
    goto LABEL_47;
  }

  valuea = v86;
  if (CFStringCompare(a3, v86, 0))
  {
    v40 = 0;
    cf = v48;
    goto LABEL_59;
  }

  CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_5_51(0, v49, v50, v51, v52, v53, v54, v55, v67, v69, v48, v72, v73, v74, v48, v76, v77, v78, v79, v80, v81, v82, v83, theDict, v85, v86, valuePtr, v88[0]);
LABEL_36:
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_106;
  }

  v39 = v20;
  while (2)
  {
    CurrentAtomTypeAndDataLength = OUTLINED_FUNCTION_13_20(CurrentAtomTypeAndDataLength, v32, v33, v34, v35, v36, v37, v38);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_106;
    }

    if (HIDWORD(v76) != 1684108385)
    {
LABEL_42:
      CurrentAtomTypeAndDataLength = FigAtomStreamAdvanceToNextAtom();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  if (v39 != a4)
  {
    ++v39;
    goto LABEL_42;
  }

  CurrentAtomTypeAndDataLength = FigiTunesMetadataCopyItemValueAndProperties(&v77);
  if (CurrentAtomTypeAndDataLength)
  {
    goto LABEL_106;
  }

  v58 = theDict;
  if (!theDict)
  {
LABEL_92:
    if (!a3)
    {
      *(v69 + 60) = HIDWORD(v67);
      *(v69 + 64) = v20;
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomOffsetInParent();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_106;
      }

      *(v69 + 57) = 1;
    }

LABEL_97:
    if (v72)
    {
      *v72 = v85;
      v85 = 0;
    }

    v40 = 0;
    if (v73)
    {
      *v73 = theDict;
      theDict = 0;
    }

    goto LABEL_107;
  }

  v59 = valuea;
  if (valuea)
  {
LABEL_80:
    CFDictionaryAddValue(v58, @"key", v59);
    v60 = theDict;
    v61 = @"itlk";
    goto LABEL_91;
  }

  CurrentAtomTypeAndDataLength = FigiTunesMetadataCopyLongKey(v88, v74, &v86);
  if (!CurrentAtomTypeAndDataLength)
  {
    v58 = theDict;
    v59 = v86;
    goto LABEL_80;
  }

LABEL_106:
  v40 = CurrentAtomTypeAndDataLength;
LABEL_107:
  if (v86)
  {
    CFRelease(v86);
  }

  if (v85)
  {
    CFRelease(v85);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v40;
}

uint64_t FigiTunesMetadataCopyLongKey(uint64_t a1, const __CFAllocator *a2, CFStringRef *a3)
{
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithParent();
  if (!CurrentAtomTypeAndDataLength)
  {
    while (1)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (CurrentAtomTypeAndDataLength)
      {
        break;
      }

      Atom = FigAtomStreamAdvanceToNextAtom();
      if (Atom)
      {
        v7 = Atom;
        OUTLINED_FUNCTION_8_25();
        if (!v8)
        {
          Mutable = CFStringCreateMutable(a2, 0);
          *a3 = CFStringCreateCopy(a2, Mutable);
          goto LABEL_7;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_4();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, 0);
        break;
      }
    }
  }

  v7 = CurrentAtomTypeAndDataLength;
  Mutable = 0;
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

void FigiTunesMetadataGetDataAtomCount(uint64_t a1, void *a2)
{
  if (!FigAtomStreamInitWithParent())
  {
    while (!FigAtomStreamGetCurrentAtomTypeAndDataLength())
    {
      if (FigAtomStreamAdvanceToNextAtom())
      {
        OUTLINED_FUNCTION_8_25();
        if (v3)
        {
          if (a2)
          {
            *a2 = 0;
          }
        }

        return;
      }
    }
  }
}

uint64_t FigiTunesMetadataCopyItemValueAndProperties(uint64_t a1)
{
  v9 = 0;
  cf = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    return CurrentAtomTypeAndDataLength;
  }

  else
  {
    return 4294954687;
  }
}

double ArrayiTunesDataCopyItemWithKeyAndIndex(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, __CFDictionary **a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CommonKeyToShortKeyMapping = FigiTunesMetadataGetCommonKeyToShortKeyMapping();
  if (!DerivedStorage || !(a6 | a7))
  {
    goto LABEL_28;
  }

  if (!a2)
  {
    if (a3)
    {
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  v19 = CommonKeyToShortKeyMapping;
  valuePtr = 0;
  if (!CFEqual(a2, @"comn"))
  {
    if (CFEqual(a2, @"itsk"))
    {
      if (a3)
      {
        v29 = CFGetTypeID(a3);
        if (v29 == CFStringGetTypeID())
        {
          if (!FigiTunesMetadataShortStringKeyToOSTypeKey(a3, &valuePtr))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v32 = CFGetTypeID(a3);
          if (v32 != CFNumberGetTypeID())
          {
            goto LABEL_28;
          }

          if (!CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr))
          {
LABEL_39:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_4();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }

        OUTLINED_FUNCTION_4_57();
        if (v33)
        {
          goto LABEL_39;
        }

        v31 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
LABEL_24:
        v28 = v31;
LABEL_25:
        OUTLINED_FUNCTION_7_34(*DerivedStorage, v28, v22, v23, v24, v25, v26, v27, a7);
        if (v28)
        {
          CFRelease(v28);
        }

        return result;
      }
    }

    else
    {
      if (!CFEqual(a2, @"itlk"))
      {
        goto LABEL_28;
      }

      if (a3)
      {
        v30 = CFGetTypeID(a3);
        if (v30 != CFStringGetTypeID())
        {
          goto LABEL_28;
        }

        v31 = CFRetain(a3);
        goto LABEL_24;
      }
    }

LABEL_10:
    OUTLINED_FUNCTION_7_34(*DerivedStorage, 0, v13, v14, v15, v16, v17, v18, a7);
    return result;
  }

  if (a3)
  {
    v20 = CFGetTypeID(a3);
    if (v20 == CFStringGetTypeID())
    {
      valuePtr = CFDictionaryGetValue(v19, a3);
      if (!valuePtr)
      {
        return result;
      }

      v28 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      goto LABEL_25;
    }
  }

LABEL_28:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigMetadataReaderCreateForiTunesMetadataArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMetadataReaderCreateForiTunesMetadataArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCopyValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCopyValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCopyValue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCopyValue_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigiTunesMetadataCopyValue_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigiTunesMetadataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigiTunesMetadataGetKeyCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataHasKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataHasKey_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ArrayiTunesDataHasKey_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ArrayiTunesDataHasKey_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ArrayiTunesDataHasKey_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataHasKey_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataHasKey_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataGetKeyCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void ArrayiTunesDataCopyKeyAtIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ArrayiTunesDataCopyKeyAtIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ArrayiTunesDataCopyKeyAtIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double ArrayiTunesDataGetItemCount_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataGetItemCount_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataGetItemCount_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ArrayiTunesDataGetItemCount_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ArrayiTunesDataGetItemCount_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ArrayiTunesDataGetItemCount_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataGetItemCount_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double ArrayiTunesDataGetItemCount_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t fhq_scheduleWaitingHapticPlayers(uint64_t a1)
{
  v6 = 0;
  dispatch_assert_queue_V2(*(a1 + 16));
  if (CMTimebaseGetRate(*(a1 + 32)) > 0.0)
  {
    do
    {
      v2 = CMBufferQueueDequeueAndRetain(*(a1 + 64));
      if (!v2)
      {
        break;
      }

      v3 = v2;
      v4 = fhq_scheduleHapticPlayer(a1, v2, &v6);
      CFRelease(v3);
      if (v4)
      {
        return v4;
      }
    }

    while (!v6);
  }

  return 0;
}

uint64_t fhq_applyBlockToAllPlayers(uint64_t a1, void *a2)
{
  result = fhq_applyBlockToSubmittedPlayers(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 64);

    return CMBufferQueueCallForEachBuffer(v5, applyBlockToBuffer, a2);
  }

  return result;
}

uint64_t FigHapticQueueSetVolume(uint64_t a1, CFNumberRef number)
{
  v11 = *MEMORY[0x1E69E9840];
  valuePtr = 1065353216;
  if (dword_1EAF17040 >= 2)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = 1.0;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberFloatType, &valuePtr);
    v5 = *&valuePtr;
  }

  *(a1 + 56) = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __FigHapticQueueSetVolume_block_invoke;
  v7[3] = &__block_descriptor_tmp_28;
  v7[4] = a1;
  return fhq_applyBlockToAllPlayers(a1, v7);
}

uint64_t FigHapticQueueSetIsMuted(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17040)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 40) = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __FigHapticQueueSetIsMuted_block_invoke;
  v6[3] = &__block_descriptor_tmp_31_0;
  v6[4] = a1;
  return fhq_applyBlockToAllPlayers(a1, v6);
}