uint64_t MutableMovie_SetTrackProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v6 = 4294950861;
  if (a1)
  {
    v7 = a2;
    if (a2)
    {
      if (a3 && CMBaseObjectGetDerivedStorage())
      {
        OUTLINED_FUNCTION_33_18();
        if (v11)
        {
          return 4294950869;
        }

        else
        {
          v12 = MovieInformationLockForWrite(*(v4 + 24));
          if (!v12)
          {
            TrackForTrackID = MovieInformationFindTrackForTrackID(*(v4 + 24), v7);
            if (!TrackForTrackID)
            {
              goto LABEL_122;
            }

            v14 = TrackForTrackID;
            Storage = MutableMovieTrackGetStorage(a1, v7);
            if (Storage)
            {
              v16 = Storage;
              if (CFEqual(a3, @"Volume"))
              {
                if (a4)
                {
                  v17 = CFGetTypeID(a4);
                  if (v17 == CFNumberGetTypeID())
                  {
                    *v151 = 1065353216;
                    v18 = OUTLINED_FUNCTION_34_17();
                    CFNumberGetValue(v18, kCFNumberFloat32Type, v19);
                    v20 = MovieTrackSetVolume(v14, 1.0);
LABEL_25:
                    v6 = v20;
LABEL_76:
                    v72 = 1;
LABEL_77:
                    *(v16 + 56) = v72;
                    goto LABEL_122;
                  }
                }

                goto LABEL_121;
              }

              if (CFEqual(a3, @"Layer"))
              {
                if (a4)
                {
                  v21 = CFGetTypeID(a4);
                  TypeID = CFNumberGetTypeID();
                  if (v21 == TypeID)
                  {
                    OUTLINED_FUNCTION_16_31(TypeID, v23, v24, v25, v26, v27, v28, v29, v140, allocator, v143, key, v145, theArray, size.value, *&size.timescale, size.epoch, v150, *v151);
                    v20 = MovieTrackSetLayer(v14, *v151);
                    goto LABEL_25;
                  }
                }

LABEL_121:
                v6 = 0;
                goto LABEL_122;
              }

              if (CFEqual(a3, @"TrackEnabled"))
              {
                if (a4)
                {
                  v30 = CFGetTypeID(a4);
                  if (v30 == CFBooleanGetTypeID())
                  {
                    Value = CFBooleanGetValue(a4);
                    v20 = MovieTrackSetEnabled(v14, Value);
                    goto LABEL_25;
                  }
                }

                goto LABEL_75;
              }

              if (CFEqual(a3, @"IsExcludedFromAutoselection"))
              {
                if (a4)
                {
                  v32 = CFGetTypeID(a4);
                  if (v32 == CFBooleanGetTypeID())
                  {
                    v33 = CFBooleanGetValue(a4);
                    v20 = MovieTrackSetExcludeFromAutoSelection(v14, v33);
                    goto LABEL_25;
                  }
                }

                goto LABEL_75;
              }

              if (CFEqual(a3, @"TrackDimensions"))
              {
                size.value = 0;
                *&size.timescale = 0;
                if (!a4)
                {
                  goto LABEL_121;
                }

                v34 = CFGetTypeID(a4);
                if (v34 != CFDictionaryGetTypeID() || !CGSizeMakeWithDictionaryRepresentation(a4, &size))
                {
                  goto LABEL_121;
                }

                v152 = 0;
                memset(v151, 0, sizeof(v151));
                OUTLINED_FUNCTION_613();
                MovieTrackGetSpatialInformation(v35, v36, v37, v38);
                v39 = *&size.value;
                v40 = *&size.timescale;
                goto LABEL_31;
              }

              if (CFEqual(a3, @"CleanApertureDimensions"))
              {
                *v151 = 0;
                *&v151[8] = 0;
                if (!a4)
                {
                  goto LABEL_121;
                }

                v42 = CFGetTypeID(a4);
                if (v42 != CFDictionaryGetTypeID())
                {
                  goto LABEL_121;
                }

                v43 = OUTLINED_FUNCTION_79_7();
                if (!CGSizeMakeWithDictionaryRepresentation(v43, v44))
                {
                  goto LABEL_121;
                }

                v45 = OUTLINED_FUNCTION_22_22();
                v41 = MovieTrackSetCleanApertureDimensions(v45, v46, v47);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"ProductionApertureDimensions"))
              {
                *v151 = 0;
                *&v151[8] = 0;
                if (!a4)
                {
                  goto LABEL_121;
                }

                v48 = CFGetTypeID(a4);
                if (v48 != CFDictionaryGetTypeID())
                {
                  goto LABEL_121;
                }

                v49 = OUTLINED_FUNCTION_79_7();
                if (!CGSizeMakeWithDictionaryRepresentation(v49, v50))
                {
                  goto LABEL_121;
                }

                v51 = OUTLINED_FUNCTION_22_22();
                v41 = MovieTrackSetProductionApertureDimensions(v51, v52, v53);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"EncodedPixelsDimensions"))
              {
                *v151 = 0;
                *&v151[8] = 0;
                if (!a4)
                {
                  goto LABEL_121;
                }

                v54 = CFGetTypeID(a4);
                if (v54 != CFDictionaryGetTypeID())
                {
                  goto LABEL_121;
                }

                v55 = OUTLINED_FUNCTION_79_7();
                if (!CGSizeMakeWithDictionaryRepresentation(v55, v56))
                {
                  goto LABEL_121;
                }

                v57 = OUTLINED_FUNCTION_22_22();
                v41 = MovieTrackSetEncodedPixelsDimensions(v57, v58, v59);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"AlternateGroupID"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                v62 = CFGetTypeID(a4);
                v63 = CFNumberGetTypeID();
                if (v62 != v63)
                {
                  goto LABEL_121;
                }

                OUTLINED_FUNCTION_16_31(v63, v64, v65, v66, v67, v68, v69, v70, v140, allocator, v143, key, v145, theArray, size.value, *&size.timescale, size.epoch, v150, *v151);
                v6 = 0;
                if (*v151 != MovieInformationGetTrackAlternateGroupID(*(v4 + 24), v14))
                {
                  v41 = MovieInformationSetTrackAlternateGroupID(*(v4 + 24), v14, *v151);
                  goto LABEL_56;
                }

LABEL_122:
                MovieInformationUnlockForWrite(*(v4 + 24));
                return v6;
              }

              if (CFEqual(a3, @"DefaultAlternateGroupID"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                v73 = CFGetTypeID(a4);
                v74 = CFNumberGetTypeID();
                if (v73 != v74)
                {
                  goto LABEL_121;
                }

                OUTLINED_FUNCTION_16_31(v74, v75, v76, v77, v78, v79, v80, v81, v140, allocator, v143, key, v145, theArray, size.value, *&size.timescale, size.epoch, v150, *v151);
                v6 = MovieTrackSetDefaultAlternateGroupID(v14, *v151);
                MovieInformationEvaluateTrackAlternateGroupAssignment(*(v16 + 1), v14);
                v71 = v6 == 0;
LABEL_57:
                v72 = v71;
                goto LABEL_77;
              }

              if (CFEqual(a3, @"ProvisionalAlternateGroupID"))
              {
                if (a4)
                {
                  v82 = CFGetTypeID(a4);
                  v83 = CFNumberGetTypeID();
                  if (v82 != v83)
                  {
                    goto LABEL_74;
                  }

                  OUTLINED_FUNCTION_16_31(v83, v84, v85, v86, v87, v88, v89, v90, v140, allocator, v143, key, v145, theArray, size.value, *&size.timescale, size.epoch, v150, *v151);
                  v91 = MovieTrackSetProvisionalAlternateGroupID(v14, *v151);
                }

                else
                {
                  v91 = MovieTrackClearProvisionalAlternateGroupID(v14);
                }

                v6 = v91;
                if (v91)
                {
                  goto LABEL_122;
                }

LABEL_74:
                MovieInformationEvaluateTrackAlternateGroupAssignment(*(v16 + 1), v14);
                goto LABEL_75;
              }

              if (CFEqual(a3, @"LanguageCode"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                v92 = CFGetTypeID(a4);
                if (v92 != CFStringGetTypeID())
                {
                  goto LABEL_121;
                }

                v93 = OUTLINED_FUNCTION_178();
                v41 = MovieTrackSetLanguageCodeString(v93, v94);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"ExtendedLanguageTag"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                v95 = CFGetTypeID(a4);
                if (v95 != CFStringGetTypeID())
                {
                  goto LABEL_121;
                }

                v96 = OUTLINED_FUNCTION_178();
                v41 = MovieTrackSetExtendedLanguageTagString(v96, v97);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"MediaDataStorageURL"))
              {
                if (a4)
                {
                  v98 = CFGetTypeID(a4);
                  if (v98 != CFURLGetTypeID())
                  {
                    goto LABEL_121;
                  }

                  v99 = *(v16 + 5);
                  *(v16 + 5) = a4;
                  goto LABEL_90;
                }

                v99 = *(v16 + 5);
                *(v16 + 5) = 0;
                goto LABEL_119;
              }

              if (CFEqual(a3, @"SampleReferenceBaseURL"))
              {
                if (a4)
                {
                  v100 = CFGetTypeID(a4);
                  if (v100 != CFURLGetTypeID())
                  {
                    goto LABEL_121;
                  }

                  v99 = *(v16 + 6);
                  *(v16 + 6) = a4;
LABEL_90:
                  CFRetain(a4);
                  goto LABEL_119;
                }

                v99 = *(v16 + 6);
                *(v16 + 6) = 0;
LABEL_119:
                if (v99)
                {
                  CFRelease(v99);
                }

                goto LABEL_121;
              }

              if (CFEqual(a3, @"Metadata"))
              {
                if (!a4 || (v101 = CFGetTypeID(a4), v101 == CFArrayGetTypeID()))
                {
                  allocatora = *MEMORY[0x1E695E480];
                  theArraya = copyArrayOfKnownMetadataFormats(*MEMORY[0x1E695E480]);
                  if (theArraya)
                  {
                    Count = CFArrayGetCount(theArraya);
                    if (Count >= 1)
                    {
                      for (i = 0; i != Count; ++i)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(theArraya, i);
                        if (ValueAtIndex)
                        {
                          v104 = ValueAtIndex;
                          OUTLINED_FUNCTION_613();
                          v108 = CFArrayCreate(v105, v106, v107, 0);
                          if (v108)
                          {
                            v109 = v108;
                            MovieTrackSetTrackMetadataItemArray(*(v4 + 24), v14, v104, v108);
                            CFRelease(v109);
                          }
                        }
                      }

                      if (a4)
                      {
                        for (j = 0; j != Count; ++j)
                        {
                          v111 = CFArrayGetValueAtIndex(theArraya, j);
                          if (v111)
                          {
                            v112 = v111;
                            Mutable = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
                            if (Mutable)
                            {
                              v114 = Mutable;
                              v115 = CFArrayGetCount(a4);
                              if (v115 >= 1)
                              {
                                v116 = v115;
                                for (k = 0; k != v116; ++k)
                                {
                                  v118 = CFArrayGetValueAtIndex(a4, k);
                                  if (v118)
                                  {
                                    v119 = v118;
                                    v120 = CFDictionaryGetTypeID();
                                    if (v120 == CFGetTypeID(v119))
                                    {
                                      CFDictionaryGetValue(v119, @"format");
                                      v121 = CFDictionaryGetValue(v119, @"items");
                                      if (v121)
                                      {
                                        v122 = v121;
                                        if (FigCFEqual())
                                        {
                                          v153.length = CFArrayGetCount(v122);
                                          v153.location = 0;
                                          CFArrayAppendArray(v114, v122, v153);
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              MovieTrackSetTrackMetadataItemArray(*(v4 + 24), v14, v112, v114);
                              CFRelease(v114);
                            }
                          }
                        }
                      }
                    }

                    CFRelease(theArraya);
                  }

                  v6 = 0;
                  *(v4 + 1) = 1;
                  goto LABEL_122;
                }

                goto LABEL_121;
              }

              if (CFEqual(a3, @"TrackMatrix"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                v124 = CFArrayGetTypeID();
                if (v124 != CFGetTypeID(a4))
                {
                  goto LABEL_121;
                }

                v152 = 0;
                memset(v151, 0, sizeof(v151));
                v125 = OUTLINED_FUNCTION_79_7();
                v6 = CFArrayToFigMatrix(v125, v126);
                if (v6)
                {
                  goto LABEL_122;
                }

                LODWORD(size.value) = 0;
                HIDWORD(v150) = 0;
                MovieTrackGetSpatialInformation(v14, &size, &v150 + 1, 0);
                v39 = *&size.value;
                v40 = *(&v150 + 1);
LABEL_31:
                v41 = MovieTrackSetSpatialInformation(v14, v151, v39, v40);
LABEL_56:
                v6 = v41;
                v71 = v41 == 0;
                goto LABEL_57;
              }

              if (CFEqual(a3, @"Modified"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                CFBooleanGetTypeID();
                if (v14 != OUTLINED_FUNCTION_97_6())
                {
                  goto LABEL_121;
                }

                if (*MEMORY[0x1E695E4D0] != a4)
                {
                  v6 = 0;
                  *(v16 + 56) = 0;
                  goto LABEL_122;
                }

LABEL_75:
                v6 = 0;
                goto LABEL_76;
              }

              if (CFEqual(a3, @"PreferredChunkSize"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                CFNumberGetTypeID();
                if (v14 != OUTLINED_FUNCTION_97_6())
                {
                  goto LABEL_121;
                }

                *v151 = 0x100000;
                v127 = OUTLINED_FUNCTION_34_17();
                CFNumberGetValue(v127, kCFNumberSInt32Type, v128);
                v41 = MediaDataChunkWriterTrackSetPreferredChunkSize(*(v16 + 3), *(v16 + 4), 0x100000);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"PreferredChunkDuration"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                CFDictionaryGetTypeID();
                if (v14 != OUTLINED_FUNCTION_97_6())
                {
                  goto LABEL_121;
                }

                memset(v151, 0, 24);
                CMTimeMakeFromDictionary(v151, a4);
                v129 = *(v16 + 3);
                v130 = *(v16 + 4);
                size = *v151;
                v41 = MediaDataChunkWriterTrackSetPreferredChunkDuration(v129, v130, &size);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"PreferredChunkAlignment"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                CFNumberGetTypeID();
                if (v14 != OUTLINED_FUNCTION_97_6())
                {
                  goto LABEL_121;
                }

                *v151 = 0;
                v131 = OUTLINED_FUNCTION_34_17();
                CFNumberGetValue(v131, kCFNumberSInt32Type, v132);
                v41 = MediaDataChunkWriterTrackSetPreferredChunkAlignment(*(v16 + 3), *(v16 + 4), 0);
                goto LABEL_56;
              }

              if (CFEqual(a3, @"FormatDescriptionArray"))
              {
                if (a4)
                {
                  v133 = CFArrayGetTypeID();
                  if (v133 == CFGetTypeID(a4))
                  {
                    v134 = OUTLINED_FUNCTION_178();
                    v6 = MovieTrackReplaceFormatDescriptionArray(v134, v135);
                    MovieInformationEvaluateTrackAlternateGroupAssignment(*(v16 + 1), v14);
                    goto LABEL_76;
                  }
                }

                goto LABEL_121;
              }

              if (CFEqual(a3, @"MediaTimeScale"))
              {
                if (!a4)
                {
                  goto LABEL_121;
                }

                v136 = CFNumberGetTypeID();
                if (v136 != CFGetTypeID(a4))
                {
                  goto LABEL_121;
                }

                *v151 = 0;
                v137 = OUTLINED_FUNCTION_34_17();
                CFNumberGetValue(v137, kCFNumberSInt32Type, v138);
                MovieTrackSetMediaTimeScale(v14, 0);
                goto LABEL_75;
              }

              if (!CFEqual(@"MediaType", a3) && !CFEqual(@"MediaSubType", a3) && !CFEqual(@"IsSelfContained", a3) && !CFEqual(@"TrackProtectedStatus", a3) && !CFEqual(@"CreationTime", a3) && !CFEqual(@"AvailableMetadataFormats", a3) && !CFEqual(@"MediaPresentationTimeRange", a3) && !CFEqual(@"MediaPresentationEndTime", a3) && !CFEqual(@"MediaDecodeTimeRange", a3) && !CFEqual(@"ModificationTime", a3))
              {
                v6 = 4294950876;
                goto LABEL_122;
              }

              emitter = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950875, "<<<< MutableMovie >>>>", 3086, v5);
            }

            else
            {
              v60 = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 4294954510, "<<<< MutableMovie >>>>", 2780, v5);
            }

            v6 = v61;
            goto LABEL_122;
          }

          return v12;
        }
      }
    }
  }

  return v6;
}

uint64_t MutableMovie_AppendSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, int a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v68[0] = 0;
  v67 = 0;
  v66 = -1;
  v7 = *MEMORY[0x1E6960C70];
  *v64 = v7;
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v65 = v8;
  *v61 = v7;
  v62 = v8;
  v60 = 0;
  v9 = 4294950861;
  if (!a1)
  {
    goto LABEL_47;
  }

  v10 = a2;
  if (!a2)
  {
    goto LABEL_47;
  }

  if (!a3)
  {
    goto LABEL_47;
  }

  *v54 = v7;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_47;
  }

  v14 = DerivedStorage;
  if (*DerivedStorage)
  {
    v9 = 4294950869;
    goto LABEL_47;
  }

  Storage = MutableMovieTrackGetStorage(a1, v10);
  if (!Storage)
  {
    goto LABEL_68;
  }

  v16 = Storage;
  *(Storage + 6) = *v54;
  *(Storage + 14) = v8;
  *(Storage + 18) = *v54;
  *(Storage + 11) = v8;
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  if (!FormatDescription || (MediaType = CMFormatDescriptionGetMediaType(FormatDescription), MediaType != *v16))
  {
    v9 = 4294950866;
    goto LABEL_47;
  }

  v19 = MediaType;
  if (*(v16 + 120) != 1)
  {
    v20 = *(v16 + 16);
    if (v20 && MovieTrackGetTrackDurationValue(v20))
    {
      MovieTrackExtendMediaDecodeDurationToDisplayEndTime();
    }

    *(v16 + 120) = 1;
  }

  v25 = CMGetAttachment(a3, *MEMORY[0x1E6960530], 0);
  v26 = v25;
  if (!v25)
  {
    v26 = *(v16 + 40);
    if (!v26)
    {
      v26 = *(v14 + 40);
      if (!v26)
      {
        v9 = 4294950873;
        goto LABEL_47;
      }
    }
  }

  if (*(v16 + 128))
  {
    goto LABEL_33;
  }

  v27 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_91_4();
  v28 = MEMORY[0x19A8CC720](v27, 160);
  if (!v28)
  {
LABEL_68:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_69;
  }

  v29 = v28;
  if (v19 == 1751216244 || v19 == 1936684398)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  v32 = MediaSampleTimingGeneratorCreate(v27, v19, v31, &v60);
  if (v32)
  {
    goto LABEL_69;
  }

  bzero(v29, 0xA0uLL);
  v29[7] = v60;
  *v29 = v19;
  *(v16 + 128) = v29;
  v32 = MovieInformationLockForWrite(*(v14 + 24));
  if (v32)
  {
    goto LABEL_69;
  }

  v33 = setMediaTimeScaleIfNeeded(v16, a3);
  if (v33)
  {
    v9 = v33;
    MovieInformationUnlockForWrite(*(v14 + 24));
    goto LABEL_47;
  }

  if (v19 == 1668047728)
  {
    v9 = setClosedCaptionTrackDimensionsIfNeeded(*(v14 + 24));
  }

  else
  {
    if (v19 != 1986618469)
    {
      MovieInformationUnlockForWrite(*(v14 + 24));
      goto LABEL_33;
    }

    v9 = setVideoTrackDimensionsIfNeeded(*(v16 + 16), *(v14 + 16), a3);
  }

  MovieInformationUnlockForWrite(*(v14 + 24));
  if (v9)
  {
    goto LABEL_47;
  }

LABEL_33:
  if (v25)
  {
    v34 = *(v16 + 64);
  }

  else
  {
    getByteStreamForTrackStorageURL(a1, v26, &v67, &v66, v21, v22, v23, v24, v52, v53, v54[0], v54[1], v55, refcon, v57, v58, v59, v60, v61[0], v61[1], v62, v63, v64[0], v64[1]);
    if (v66 == -1)
    {
      v32 = CMByteStreamCreateForFileURL();
      if (v32)
      {
        goto LABEL_69;
      }

      createStreamInfoForByteStream(v68[0], v14, &v66);
      if (v32)
      {
        goto LABEL_69;
      }

      if (v68[0])
      {
        CFRelease(v68[0]);
        v68[0] = 0;
      }
    }

    v34 = v66;
    *(v16 + 64) = v66;
  }

  if (v34 == -1)
  {
    v38 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v14 + 64), v34);
    if (!ValueAtIndex)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_69;
    }

    v36 = ValueAtIndex;
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(a3);
    if (!TotalSampleSize)
    {
      v9 = 4294950861;
      goto LABEL_47;
    }

    writeMdatHeaderIfNecessary(v36, TotalSampleSize, 0);
    v38 = *v36;
  }

  if (v19 == 1936684398)
  {
    v32 = addSampleBufferToTrack(v16, v26, v38, 0, a3);
    if (v32)
    {
      goto LABEL_69;
    }
  }

  else
  {
    refcon = v16;
    v57 = v26;
    v58 = v38;
    v59 = 0;
    CMSampleBufferCallForEachSample(a3, addSample, &refcon);
  }

  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v39, v40, v41);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_69:
    v9 = v32;
    goto LABEL_47;
  }

  v43 = Mutable;
  CFArrayAppendValue(Mutable, v16);
  writeActualMdatLengthsToStorages(v14, v43, v44, v45, v46, v47, v48, v49, v52, v53, v54[0], HIDWORD(v54[0]), v54[1], v55, refcon, v57, v58, v59, v60, v61[0], v61[1], v62, v63, v64[0], v64[1]);
  v9 = v50;
  CFRelease(v43);
  if (!v9)
  {
    *v64 = *(v16 + 96);
    v65 = *(v16 + 112);
    *v61 = *(v16 + 72);
    v62 = *(v16 + 88);
  }

LABEL_47:
  if (a5)
  {
    *a5 = *v64;
    *(a5 + 16) = v65;
  }

  if (v55)
  {
    *v55 = *v61;
    *(v55 + 16) = v62;
  }

  if (v68[0])
  {
    CFRelease(v68[0]);
  }

  return v9;
}

double MutableMovie_AppendSampleReferences(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, size_t *a8, CFArrayRef theArray, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = a2;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (a1 && v19 && a3 && a4 >= 1 && a10 && (a5 < 2 || a5 == a4) && (a7 < 2 || a7 == a4) && (Count < 2 || Count == a4))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v27 = DerivedStorage;
      if (!*DerivedStorage && !MovieInformationLockForRead(*(DerivedStorage + 24)))
      {
        TrackForTrackID = MovieInformationFindTrackForTrackID(*(v27 + 24), v19);
        MovieInformationUnlockForRead(*(v27 + 24));
        if (TrackForTrackID)
        {
          Storage = MutableMovieTrackGetStorage(a1, v19);
          if (!Storage)
          {
            goto LABEL_45;
          }

          v30 = Storage;
          if (Storage[30] != 2)
          {
            v31 = *(Storage + 2);
            if (v31 && MovieTrackGetTrackDurationValue(v31))
            {
              MovieTrackExtendMediaDecodeDurationToDisplayEndTime();
            }

            v30[30] = 2;
          }

          v32 = MEMORY[0x1E6960C70];
          v33 = *MEMORY[0x1E6960C70];
          *(v30 + 6) = *MEMORY[0x1E6960C70];
          v34 = *(v32 + 16);
          *(v30 + 14) = v34;
          *(v30 + 18) = v33;
          *(v30 + 11) = v34;
          if (*(v30 + 3) && *(v30 + 4))
          {
            v37 = 0;
            if (!MovieTrackFindOrAddSampleDescription(TrackForTrackID, a3, a10, &v37))
            {
              MovieInformationEvaluateTrackAlternateGroupAssignment(*(v30 + 1), TrackForTrackID);
              *&v22 = MediaDataChunkWriterTrackAppendSampleReference(*(v30 + 3), *(v30 + 4), a11, v37, a4, a5, a6, a7, a8, theArray, 0);
              if (a13)
              {
                v22 = *(v30 + 6);
                *(a13 + 16) = *(v30 + 14);
                *a13 = v22;
              }

              if (a14)
              {
                v22 = *(v30 + 18);
                *(a14 + 16) = *(v30 + 11);
                *a14 = v22;
              }

              *(v30 + 56) = 1;
            }
          }

          else
          {
LABEL_45:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_120();

            *&v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  return *&v22;
}

double MutableMovie_AppendSampleReferencesFromSampleCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (!a1 || (v11 = a2) == 0 || !a4 || (DerivedStorage = CMBaseObjectGetDerivedStorage()) == 0 || (v16 = DerivedStorage, *DerivedStorage) || a5 && ((v17 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v18 = 0) : (v18 = v17), (v19 = *(CMBaseObjectGetVTable() + 16)) == 0 ? (v20 = 0) : (v20 = v19), v18 != v20 || !*(v18 + 32) || (*(v20 + 32))(a4, a5) != -1) || MovieInformationLockForRead(*(v16 + 3)) || (TrackForTrackID = MovieInformationFindTrackForTrackID(*(v16 + 3), v11), MovieInformationUnlockForRead(*(v16 + 3)), !TrackForTrackID))
  {
LABEL_27:
    OUTLINED_FUNCTION_651();
    return result;
  }

  Storage = MutableMovieTrackGetStorage(a1, v11);
  if (Storage)
  {
    if (a8)
    {
      *a8 = 0;
    }

    v23 = MEMORY[0x1E6960C70];
    if (a9)
    {
      *a9 = *MEMORY[0x1E6960C70];
      *(a9 + 16) = *(v23 + 16);
    }

    if (a10)
    {
      *a10 = *v23;
      *(a10 + 16) = *(v23 + 16);
    }

    *(Storage + 56) = 1;
    goto LABEL_27;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_651();

  return FigSignalErrorAtGM(v25);
}

BOOL MutableMovie_CanTrackAcceptFormatDescription(uint64_t a1, int a2, const void *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 0;
    }

    v7 = DerivedStorage;
    v26 = 0;
    if (*DerivedStorage || MovieInformationLockForRead(*(DerivedStorage + 24)))
    {
      return 0;
    }

    else
    {
      TrackForTrackID = MovieInformationFindTrackForTrackID(*(v7 + 24), a2);
      if (TrackForTrackID && (v9 = TrackForTrackID, !MovieTrackGetBasicInfo(TrackForTrackID, &v26, 0)) && (MediaType = CMFormatDescriptionGetMediaType(a3), MediaType == v26) && (v11 = MediaType, (v12 = MovieTrackCopyFormatDescriptionArray(v9)) != 0))
      {
        v13 = v12;
        Count = CFArrayGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          v3 = 0;
          v16 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
            if (v11 == 1952807028)
            {
              goto LABEL_16;
            }

            if (v11 != 1986618469)
            {
              break;
            }

            v19 = OUTLINED_FUNCTION_409();
            PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v19, v20, 1u);
            v22 = CMVideoFormatDescriptionGetPresentationDimensions(ValueAtIndex, 1u, 1u);
            if (v22.width != 0.0 || v22.height != 0.0)
            {
              v23 = v22.width / v22.height;
              if (v22.height == 0.0)
              {
                v23 = 0.0;
              }

              v24 = PresentationDimensions.width / PresentationDimensions.height;
              if (PresentationDimensions.height == 0.0)
              {
                v24 = 0.0;
              }

              if (vabdd_f64(v23, v24) > 0.00999999978)
              {
                goto LABEL_31;
              }
            }

LABEL_27:
            v3 = ++v16 >= v15;
            if (v15 == v16)
            {
              goto LABEL_31;
            }
          }

          if (v11 != 1953325924)
          {
            if (!CFEqual(a3, ValueAtIndex))
            {
              goto LABEL_31;
            }

            goto LABEL_27;
          }

LABEL_16:
          MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
          if (MediaSubType != CMFormatDescriptionGetMediaSubType(ValueAtIndex))
          {
            goto LABEL_31;
          }

          goto LABEL_27;
        }

        v3 = 1;
LABEL_31:
        CFRelease(v13);
      }

      else
      {
        v3 = 0;
      }

      MovieInformationUnlockForRead(*(v7 + 24));
    }
  }

  return v3;
}

uint64_t MutableMovie_GetTrackCompatibleWithTrackReader(uint64_t a1, const void *a2, _DWORD *a3)
{
  result = 4294950861;
  if (a1 && a3)
  {
    *a3 = 0;
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_59_10();
      if (v8)
      {
        return 4294950869;
      }

      else
      {
        v11 = 0;
        v9 = *MEMORY[0x1E695E480];
        result = createSourceFromTrack(0, a2, *MEMORY[0x1E695E480], 0, 0, &v11);
        if (!result)
        {
          if (v11)
          {
            TrackForInsertionFromSource = getTrackForInsertionFromSource(v3, v11);
            if (TrackForInsertionFromSource)
            {
              *a3 = TrackForInsertionFromSource[1];
            }

            releaseSource(v9, v11);
          }

          return 0;
        }
      }
    }

    else
    {
      return 4294950861;
    }
  }

  return result;
}

uint64_t MutableMovie_InsertMediaIntoTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 4294950861;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      if ((*(a3 + 36) & 1) != 0 && (*(a4 + 12) & 1) != 0 && (*(a4 + 36) & 1) != 0 && !*(a4 + 40) && (*(a4 + 24) & 0x8000000000000000) == 0 && CMBaseObjectGetDerivedStorage())
      {
        OUTLINED_FUNCTION_86_5();
        if (v9)
        {
          return 4294950869;
        }

        else
        {
          v10 = MovieInformationLockForWrite(*(v4 + 24));
          if (v10)
          {
            return v10;
          }

          else
          {
            if (MovieInformationFindTrackForTrackID(*(v4 + 24), v6))
            {
              OUTLINED_FUNCTION_82_5();
              v11 = *(a4 + 16);
              v16[0] = *a4;
              v16[1] = v11;
              v16[2] = *(a4 + 32);
              MovieTrackInsertMediaSegment(v12, v13, v17, v16);
              if (!v14)
              {
                setTrackIDModified(a1, v4, v6);
              }

              v5 = v14;
            }

            MovieInformationUnlockForWrite(*(v4 + 24));
          }
        }
      }
    }
  }

  return v5;
}

uint64_t MutableMovie_InsertSegmentFromTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t x4_0, CMTime *a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  v77 = 0;
  v78 = 0;
  v10 = 4294950861;
  if (!a1 || !a4)
  {
    goto LABEL_7;
  }

  if ((*(x4_0 + 12) & 1) == 0 || (*(x4_0 + 36) & 1) == 0 || *(x4_0 + 40) || (*(x4_0 + 24) & 0x8000000000000000) != 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v14 = a7;
  v17 = a2;
  *v71 = *(x4_0 + 24);
  *&v71[16] = *(x4_0 + 40);
  *&v76.value = *MEMORY[0x1E6960CC0];
  if (!OUTLINED_FUNCTION_62_9(a1, a2, a3, a4, x4_0, a6, a7, a8, v67, v8, v76.value, *&v76.timescale, *v71))
  {
    v10 = 0;
    goto LABEL_6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v9 = 0;
    v10 = 4294950861;
    goto LABEL_7;
  }

  v26 = DerivedStorage;
  if (*DerivedStorage)
  {
    v9 = 0;
    v10 = 4294950869;
    goto LABEL_7;
  }

  v27 = MEMORY[0x1E695E480];
  if ((v14 & 0x100) == 0)
  {
    OUTLINED_FUNCTION_21_23();
    *&v76.value = v70;
    DerivedStorage = OUTLINED_FUNCTION_62_9(v28, v29, v30, v31, v32, v33, v34, v35, v68, v69, v70, *(&v70 + 1), *v71);
    if (a3)
    {
      if (!DerivedStorage)
      {
        LODWORD(time2.value) = 0;
        v36 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v36)
        {
          v36(a4, 0, &time2);
        }

        OUTLINED_FUNCTION_63();
        if (v37)
        {
          v68 = @"TrackDuration";
          v38 = *MEMORY[0x1E695E480];
          FigTrackReaderGetFigBaseObject();
          v39 = v38;
          v27 = MEMORY[0x1E695E480];
          DerivedStorage = CMBaseObjectCopyProperty(v40, @"TrackDuration", v39, &v77);
          if (!DerivedStorage)
          {
            *v71 = *MEMORY[0x1E6960C70];
            *&v71[16] = *(MEMORY[0x1E6960C70] + 16);
            DerivedStorage = v77;
            if (v77)
            {
              v41 = CFGetTypeID(v77);
              if (v41 == CFDictionaryGetTypeID())
              {
                CMTimeMakeFromDictionary(v71, v77);
              }

              DerivedStorage = v77;
              v27 = MEMORY[0x1E695E480];
              if (v77)
              {
                CFRelease(v77);
                v77 = 0;
              }
            }

            if ((v71[12] & 0x1D) == 1)
            {
              v76 = *(x4_0 + 24);
              DerivedStorage = OUTLINED_FUNCTION_49_10(DerivedStorage, v20, v21, v22, v23, v24, v25, @"TrackDuration", v69, v70, *(&v70 + 1), *v71, *&v71[16], *&v71[24], v72, *(&v72 + 1), time2.value, *&time2.timescale, time2.epoch, v74, *&time1.value, time1.epoch);
              if (!DerivedStorage)
              {
                DerivedStorage = FigGaplessInfoGetTrackDuration(a3, a4, 0, v71);
                if (!DerivedStorage)
                {
                  *(x4_0 + 24) = *v71;
                  *(x4_0 + 40) = *&v71[16];
                }
              }
            }
          }
        }
      }
    }
  }

  if (!*(v26 + 2))
  {
    *v71 = *&a6->value;
    *&v71[16] = a6->epoch;
    *&v76.value = v70;
    if (OUTLINED_FUNCTION_62_9(DerivedStorage, v20, v21, v22, v23, *(&v23 + 1), v24, v25, v68, v69, v70, *(&v70 + 1), *v71) >= 1)
    {
      if (v17)
      {
        TrackCount = MovieInformationGetTrackCount(*(v26 + 24));
        if (TrackCount >= 1)
        {
          v43 = TrackCount;
          v44 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v26 + 56), v44);
            if (*(ValueAtIndex + 1) == v17)
            {
              break;
            }

            if (v43 == ++v44)
            {
              goto LABEL_42;
            }
          }

          v46 = ValueAtIndex;
          memset(v71, 0, 24);
          getTrackEditedDuration(v26, ValueAtIndex, v71);
          OUTLINED_FUNCTION_24_20();
          if (!OUTLINED_FUNCTION_49_10(v47, v48, v49, v50, v79, v51, v52, v68, v69, v70, *(&v70 + 1), *v71, *&v71[16], *&v71[24], v72, *(&v72 + 1), time2.value, *&time2.timescale, time2.epoch, v74, *&time1.value, time1.epoch))
          {
            memset(&v76, 0, sizeof(v76));
            GetTotalEditSegmentDuration(v46[2], &v76);
            time1 = v76;
            time2 = *a6;
            v53 = CMTimeCompare(&time1, &time2);
            v27 = MEMORY[0x1E695E480];
            if (v53 < 1)
            {
              goto LABEL_46;
            }

            *&a6->value = *&v76.value;
            epoch = v76.epoch;
            goto LABEL_45;
          }
        }
      }

LABEL_42:
      getMaximumEditedTrackDuration(v26, v71);
      OUTLINED_FUNCTION_24_20();
      v55 = CMTimeCompare(&v76, v71);
      v27 = MEMORY[0x1E695E480];
      if (!v55)
      {
        memset(v71, 0, 24);
        MovieInformationGetMovieDuration(*(v26 + 24), v71);
        v76 = *v71;
        time1 = *a6;
        if (CMTimeCompare(&v76, &time1) >= 1)
        {
          *&a6->value = *v71;
          epoch = *&v71[16];
LABEL_45:
          a6->epoch = epoch;
        }
      }
    }
  }

LABEL_46:
  clearInsertionStateInTracks(a1);
  v56 = createSourceFromTrack(0, a4, *v27, v14, 1, &v78);
  if (v56)
  {
    v10 = v56;
    goto LABEL_6;
  }

  v78[37] = v17;
  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v57, v58, v59);
  v9 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, v78);
    v61 = *(x4_0 + 16);
    *v71 = *x4_0;
    *&v71[16] = v61;
    v72 = *(x4_0 + 32);
    OUTLINED_FUNCTION_24_20();
    insertSegmentFromSourceArray(v9, a1, v71, &v76.value, v14, v62, v63, v64, v68, v69, v70, DWORD1(v70), *(&v70 + 1), *v71, *&v71[8], *&v71[16], *&v71[24], v72, *(&v72 + 1), time2.value, *&time2.timescale, time2.epoch, v74, time1.value, *&time1.timescale);
    v10 = v65;
    if (!v65)
    {
      *(v26 + 1) = 1;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, v69, v70);
    v10 = v66;
  }

LABEL_7:
  releaseSourceArray(v9);
  if (v77)
  {
    CFRelease(v77);
  }

  return v10;
}

uint64_t MutableMovie_InsertSegmentFromFormatReader(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Mutable = 0;
  v118 = *MEMORY[0x1E69E9840];
  cf = 0;
  SourceFromTrack = 4294950861;
  if (!a1)
  {
    goto LABEL_86;
  }

  v11 = 0;
  if (!a2)
  {
    goto LABEL_9;
  }

  v13 = *(a3 + 12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v16 = a1;
  v17 = MEMORY[0x1E6960CC0];
  if ((*(a3 + 36) & 1) != 0 && !*(a3 + 40) && (*(a3 + 24) & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_77_6();
    v27 = OUTLINED_FUNCTION_37_19(v19, v20, v21, v22, v23, v24, v25, v26, v94, v97, v100, v103, *v17, v17[1], v17[2], *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, time2[0]);
    a1 = CMTimeCompare(v27, v28);
    if (!a1)
    {
      Mutable = 0;
      v11 = 0;
      SourceFromTrack = 0;
      goto LABEL_9;
    }

    v13 = *(a3 + 12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((*(a3 + 36) & 1) == 0 || *(a3 + 40))
  {
    goto LABEL_8;
  }

  Mutable = 0;
  if ((v13 & 0x1D) != 1)
  {
LABEL_86:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  if ((*(a3 + 24) & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  *time2 = *a3;
  *&time2[16] = *(a3 + 16);
  v29 = OUTLINED_FUNCTION_37_19(a1, a2, a3, a4, a5, a6, a7, a8, v94, v97, *v17, v17[1], *v17, v17[1], v17[2], *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, time2[0]);
  if (CMTimeCompare(v29, v30) < 0)
  {
    goto LABEL_8;
  }

  v32 = *(a4 + 12);
  if (v32 & 0x1D) != 1 && (v32)
  {
    goto LABEL_8;
  }

  if ((v32 & 0x1D) == 1 && (OUTLINED_FUNCTION_14_38(v31, *(a4 + 16), v95, v98, v101, *time1, *&time1[16], *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, *a4, *(a4 + 8), *&time2[16]) & 0x80000000) != 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, v98, v101);
    SourceFromTrack = v93;
LABEL_8:
    Mutable = 0;
    v11 = 0;
    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (!DerivedStorage)
  {
    goto LABEL_81;
  }

  if (*DerivedStorage)
  {
    Mutable = 0;
    goto LABEL_88;
  }

  v35 = MEMORY[0x1E695E480];
  if ((a5 & 0x100) == 0 && !OUTLINED_FUNCTION_14_38(v34, *(a3 + 16), v95, v98, v101, *time1, *&time1[16], *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, *a3, *(a3 + 8), *&time2[16]))
  {
    v36 = *v35;
    FigFormatReaderGetFigBaseObject();
    if (!CMBaseObjectCopyProperty(v37, @"Duration", v36, &cf))
    {
      if (cf)
      {
        v38 = CFGetTypeID(cf);
        if (v38 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(time2, cf);
          v116 = *time2;
          HIDWORD(v98) = *&time2[12];
          v117 = *&time2[8];
          v95 = *&time2[16];
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          FigFormatReaderGetFigBaseObject();
          if (!CMBaseObjectCopyProperty(v39, @"NominalDuration", v36, &cf))
          {
            if (cf)
            {
              v40 = CFGetTypeID(cf);
              if (v40 == CFDictionaryGetTypeID())
              {
                v41 = CMTimeMakeFromDictionary(time2, cf);
                v114 = *time2;
                v47 = *&time2[12];
                v115 = *&time2[8];
                v48 = (BYTE4(v98) & 0x1D) == 1 && (time2[12] & 0x1D) == 1;
                if (v48)
                {
                  v49 = *&time2[16];
                  *&time2[8] = v115;
                  v50 = OUTLINED_FUNCTION_37_19(v41, v42, v34, *(&v34 + 1), v43, v44, v45, v46, v95, v98, v101, *(&v101 + 1), v116, __SPAIR64__(HIDWORD(v98), v117), v95, *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, v114);
                  if (CMTimeCompare(v50, v51) >= 1)
                  {
                    OUTLINED_FUNCTION_77_6();
                    v60 = OUTLINED_FUNCTION_37_19(v52, v53, v54, v55, v56, v57, v58, v59, v95, v98, v101, *(&v101 + 1), v116, __SPAIR64__(HIDWORD(v98), v117), v95, *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, time2[0]);
                    if (!CMTimeCompare(v60, v61))
                    {
                      *(a3 + 24) = v114;
                      *(a3 + 32) = v115;
                      *(a3 + 36) = v47;
                      *(a3 + 40) = v49;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v35 = MEMORY[0x1E695E480];
  }

  if (!*(v11 + 2) && OUTLINED_FUNCTION_14_38(v34, *(a4 + 16), v95, v98, v101, *time1, *&time1[16], *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1), v110, cf, *a4, *(a4 + 8), *&time2[16]) >= 1)
  {
    getMaximumEditedTrackDuration(v11, time2);
    OUTLINED_FUNCTION_21_23();
    if (!CMTimeCompare(time1, time2))
    {
      MovieInformationGetMovieDuration(*(v11 + 24), time2);
      *a4 = *time2;
      *(a4 + 16) = *&time2[16];
    }
  }

  clearInsertionStateInTracks(v16);
  v62 = *v35;
  *time2 = 0;
  *time1 = 0;
  OUTLINED_FUNCTION_613();
  Mutable = CFArrayCreateMutable(v63, v64, v65);
  if (Mutable)
  {
    v66 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v66)
    {
LABEL_79:
      SourceFromTrack = 4294954514;
LABEL_80:
      releaseSourceArray(Mutable);
LABEL_81:
      Mutable = 0;
      goto LABEL_9;
    }

    v67 = v66(a2, time2);
    if (v67)
    {
LABEL_95:
      SourceFromTrack = v67;
      goto LABEL_80;
    }

    if (*time2 >= 1)
    {
      v68 = 0;
      do
      {
        v116 = 0;
        if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
        {
          goto LABEL_79;
        }

        OUTLINED_FUNCTION_197();
        v67 = v69();
        if (v67)
        {
          goto LABEL_95;
        }

        SourceFromTrack = createSourceFromTrack(a2, v116, v62, a5, 1, time1);
        if (v116)
        {
          CFRelease(v116);
        }

        if (SourceFromTrack)
        {
          goto LABEL_80;
        }

        v70 = *time1;
        if (*time1)
        {
          *(*time1 + 148) = 0;
          CFArrayAppendValue(Mutable, v70);
        }
      }

      while (++v68 < *time2);
    }

    releaseSourceArray(0);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v95, v98, v101);
    SourceFromTrack = v92;
    releaseSourceArray(0);
    if (SourceFromTrack)
    {
      goto LABEL_81;
    }
  }

  *(v11 + 72) = Mutable;
  v71 = *(a3 + 16);
  *time2 = *a3;
  *&time2[16] = v71;
  v113 = *(a3 + 32);
  OUTLINED_FUNCTION_21_23();
  insertSegmentFromSourceArray(Mutable, v16, time2, time1, a5, v72, v73, v74, v95, v98, v101, DWORD1(v101), *(&v101 + 1), *time1, *&time1[8], *&time1[16], *&time1[24], v106, *(&v106 + 1), v107, *(&v107 + 1), v108, *(&v108 + 1), v109, *(&v109 + 1));
  if (v75)
  {
    goto LABEL_93;
  }

  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  *time2 = *a4;
  *&time2[16] = *(a4 + 16);
  v83 = OUTLINED_FUNCTION_37_19(v75, v76, v77, v78, v79, v80, v81, v82, v96, v99, v102, v104, *(a3 + 24), *(a3 + 32), *(a3 + 40), *&time1[24], v106, *(&v106 + 1), 0, 0, 0, 0, 0, 0, v110, cf, time2[0]);
  CMTimeRangeMake(v85, v83, v84);
  *time1 = v107;
  *&time1[16] = v108;
  v106 = v109;
  if (!CMBaseObjectGetDerivedStorage())
  {
    SourceFromTrack = 4294950861;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_86_5();
  if (v86)
  {
LABEL_88:
    SourceFromTrack = 4294950869;
    goto LABEL_9;
  }

  v75 = MovieInformationLockForRead(*(a3 + 24));
  if (v75)
  {
LABEL_93:
    SourceFromTrack = v75;
    goto LABEL_9;
  }

  if (MovieInformationGetTrackCount(*(a3 + 24)) < 1)
  {
    MovieInformationUnlockForRead(*(a3 + 24));
LABEL_85:
    SourceFromTrack = 0;
    *(v11 + 1) = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_417_0();
  SourceFromTrack = 0;
  do
  {
    TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(a3 + 24), a5);
    if (TrackForTrackIndex)
    {
      v88 = TrackForTrackIndex;
      Storage = MutableMovieTrackGetStorage(v16, *(TrackForTrackIndex + 144));
      if (Storage)
      {
        v90 = Storage;
        if (!*(Storage + 124))
        {
          if (*(v88 + 816) >= 1)
          {
            *time2 = *time1;
            *&time2[16] = *&time1[16];
            v113 = v106;
            MovieTrackInsertEmptySegment();
            SourceFromTrack = v91;
          }

          *(v90 + 124) = 1;
          *(v90 + 56) = SourceFromTrack == 0;
        }
      }
    }

    OUTLINED_FUNCTION_377_0();
  }

  while (!v48);
  MovieInformationUnlockForRead(*(a3 + 24));
  if (!SourceFromTrack)
  {
    goto LABEL_85;
  }

LABEL_9:
  releaseSourceArray(Mutable);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    *(v11 + 72) = 0;
  }

  return SourceFromTrack;
}

uint64_t MutableMovie_AddTrackReferenceToTrack(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 4294950861;
  if (a1 && a3 && a4)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_59_10();
      if (v7)
      {
        return 4294950869;
      }

      else
      {
        result = MovieInformationLockForWrite(*(v4 + 24));
        if (!result)
        {
          v8 = OUTLINED_FUNCTION_76_8();
          MovieInformationAddOneTrackReference(v8, v9, v10, v11);
          v13 = v12;
          MovieInformationUnlockForWrite(*(v4 + 24));
          *(v4 + 1) = 1;
          return v13;
        }
      }
    }

    else
    {
      return 4294950861;
    }
  }

  return result;
}

uint64_t MutableMovie_DeleteTrackReferenceToTrack(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = 4294950861;
  if (a1 && a3 && a4)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_59_10();
      if (v7)
      {
        return 4294950869;
      }

      else
      {
        result = MovieInformationLockForWrite(*(v4 + 24));
        if (!result)
        {
          v8 = OUTLINED_FUNCTION_76_8();
          v12 = MovieInformationRemoveOneTrackReference(v8, v9, v10, v11);
          MovieInformationUnlockForWrite(*(v4 + 24));
          *(v4 + 1) = 1;
          return v12;
        }
      }
    }

    else
    {
      return 4294950861;
    }
  }

  return result;
}

uint64_t MutableMovie_CopyAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v8 = CFGetAllocator(a1);
  v9 = 4294950861;
  if (a1)
  {
    if (a4)
    {
      v10 = v8;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v12 = DerivedStorage;
        if (!a2)
        {
          v23 = *(DerivedStorage + 104);
          if (v23)
          {
            v15 = CFRetain(v23);
            v26 = v15;
LABEL_13:
            v9 = 0;
            OUTLINED_FUNCTION_74_8(v15, v16, v17, v18, v19, v20, v21, v22, cf, v26);
            return v9;
          }
        }

        cf = 0;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v13)
        {
          v14 = v13(a1, a2, a3, &cf);
          if (v14)
          {
            return v14;
          }

          v9 = FigAssetCreateWithFormatReader(v10, cf, (*(v12 + 2) != 0) << 8, 0, &v26);
          CFRelease(cf);
          if (a2 || v9)
          {
            if (v9)
            {
              return v9;
            }
          }

          else
          {
            v15 = CFRetain(v26);
            *(v12 + 104) = v15;
          }

          goto LABEL_13;
        }

        return 4294954514;
      }
    }
  }

  return v9;
}

uint64_t writeHeaderToByteStream(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  ptr = 0;
  url = 0;
  v85 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    goto LABEL_107;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &url);
  if (v12)
  {
    goto LABEL_93;
  }

  v13 = CFURLCopyPathExtension(url);
  if (v13)
  {
    v14 = v13;
    FigGetFileTypeForMovieFamilyExtension(v13);
    CFRelease(v14);
    if (!FigCFEqual())
    {
      appended = 4294950874;
      goto LABEL_108;
    }
  }

  v15 = *(DerivedStorage + 56);
  if (v15)
  {
    Count = CFArrayGetCount(v15);
    if (Count >= 1)
    {
      v17 = Count;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 56), i);
        if (ValueAtIndex)
        {
          v20 = ValueAtIndex;
          if (*(ValueAtIndex + 30) == 1)
          {
            v21 = ValueAtIndex[16];
            if (v21)
            {
              releaseSource(v11, v21);
              v20[16] = 0;
            }
          }
        }
      }
    }
  }

  v23 = !a4 || (v22 = CFGetTypeID(a4), v22 != CFDictionaryGetTypeID()) || CFDictionaryGetValue(a4, @"WriteFileTypeAtom") != *MEMORY[0x1E695E4C0];
  v12 = createMovieHeaderMakerFromMiP(a1, *(DerivedStorage + 24), &ptr);
  if (v12)
  {
    goto LABEL_93;
  }

  v12 = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(ptr, v11, a2, url, &v85);
  if (v12)
  {
    goto LABEL_93;
  }

  v84 = 0;
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v24)
  {
    goto LABEL_107;
  }

  v12 = v24(a3, 0, &v84);
  if (v12)
  {
    goto LABEL_93;
  }

  v25 = !v23;
  if (v84)
  {
    v25 = 1;
  }

  if (v25)
  {
    DataLength = CMBlockBufferGetDataLength(v85);
    OUTLINED_FUNCTION_53_14();
    OUTLINED_FUNCTION_46_12();
    CurrentAtomGlobalOffset = FigAtomStreamInitWithByteStream();
    if (!CurrentAtomGlobalOffset)
    {
      AtomWithType = FigAtomStreamPositionAtFirstAtomWithType();
      if (AtomWithType == -12890)
      {
        goto LABEL_45;
      }

      appended = AtomWithType;
      if (AtomWithType)
      {
LABEL_43:
        if (appended && appended != -12894)
        {
          goto LABEL_108;
        }

LABEL_45:
        v34 = -DataLength < 8 && DataLength < 0;
        if (DataLength > 0 || v34)
        {
          theBuffer[0] = 0;
          v55 = OUTLINED_FUNCTION_46_12();
          getLastAtomTypeAndOffsetAndLength(v55, v56, v57, v58);
          if (v12)
          {
            goto LABEL_93;
          }

          LODWORD(v89) = 0;
          if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
          {
            goto LABEL_107;
          }

          v60 = OUTLINED_FUNCTION_11_47();
          v12 = v61(v60);
          if (v12)
          {
            goto LABEL_93;
          }

          v64 = v89;
          LODWORD(v89) = bswap32(v89);
          if (v64)
          {
            v12 = OUTLINED_FUNCTION_18_27(v12, v85, v62, v63, v84);
            if (v12)
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (theBuffer[0] > 0xFFFFFFFFLL)
            {
              if (!precedingAtomIsWideAtom(a3, -1))
              {
                appended = 4294950860;
                goto LABEL_108;
              }

              theBuffer[0] = (theBuffer[0] + 8);
              LODWORD(v89) = 0x1000000;
              v73 = OUTLINED_FUNCTION_11_47();
              v12 = CMByteStreamWrite(v73, v74, v75, v76);
              if (v12)
              {
                goto LABEL_93;
              }

              v77 = OUTLINED_FUNCTION_13_35();
              v12 = CMByteStreamWrite(v77, v78, v79, v80);
              if (v12)
              {
                goto LABEL_93;
              }

              theBuffer[0] = bswap64(theBuffer[0]);
              v81 = OUTLINED_FUNCTION_46_12();
              v12 = CMByteStreamWrite(v81, 8, v82, v83);
            }

            else
            {
              theBuffer[0] = bswap32(theBuffer[0]);
              v66 = OUTLINED_FUNCTION_13_35();
              v12 = CMByteStreamWrite(v66, v67, v68, v69);
              if (v12)
              {
                goto LABEL_93;
              }
            }

            v12 = OUTLINED_FUNCTION_18_27(v12, v85, v70, v71, v84);
            if (v12)
            {
              goto LABEL_93;
            }
          }
        }

        theBuffer[0] = 0;
        LODWORD(v89) = 0;
        if (a2 && a3)
        {
          v35 = copyFileTypeAtomAsBlockBuffer(a2, theBuffer);
          if (v35)
          {
            goto LABEL_125;
          }

          v36 = CMBlockBufferGetDataLength(theBuffer[0]);
          if (v36 < 0x21)
          {
            v37 = v36;
            if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
            {
LABEL_65:
              appended = 4294954514;
              goto LABEL_66;
            }

            v38 = OUTLINED_FUNCTION_11_47();
            v35 = v39(v38);
            if (!v35)
            {
              if (v89 != 1952539757)
              {
LABEL_64:
                appended = 0;
                goto LABEL_66;
              }

              v40 = 8;
              while (*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                v41 = OUTLINED_FUNCTION_11_47();
                v35 = v42(v41);
                if (v35)
                {
                  goto LABEL_125;
                }

                if (v89 != 1887007846)
                {
                  goto LABEL_64;
                }

                v40 += 4;
                if (v40 == 32)
                {
                  v35 = OUTLINED_FUNCTION_92_5(v35, theBuffer[0], v43, v37 - 4);
                  if (v35)
                  {
                    goto LABEL_125;
                  }

                  LOBYTE(v88) = 0;
                  if (v37 != 32)
                  {
                    do
                    {
                      v59 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v59)
                      {
                        appended = v59(a3, 1, v37, &v88, 0);
                      }

                      else
                      {
                        appended = 4294954514;
                      }

                      ++v37;
                    }

                    while (v37 != 32);
                    goto LABEL_66;
                  }

                  goto LABEL_64;
                }
              }

              goto LABEL_65;
            }

LABEL_125:
            appended = v35;
LABEL_66:
            if (theBuffer[0])
            {
              CFRelease(theBuffer[0]);
            }

            if (appended)
            {
              goto LABEL_108;
            }

            theBuffer[0] = 0;
            LODWORD(v89) = 0;
            LODWORD(v88) = 0;
            if (a2 && a3)
            {
              if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
                goto LABEL_85;
              }

              v44 = OUTLINED_FUNCTION_11_47();
              v46 = v45(v44);
              if (v46)
              {
                goto LABEL_123;
              }

              if (!*(*(CMBaseObjectGetVTable() + 16) + 8))
              {
LABEL_85:
                appended = 4294954514;
                goto LABEL_86;
              }

              v47 = OUTLINED_FUNCTION_13_35();
              v46 = v48(v47);
              if (v46)
              {
                goto LABEL_123;
              }

              LODWORD(v89) = bswap32(v89);
              v49 = v88;
              LODWORD(v88) = bswap32(v88);
              if (v49 != 1887007846)
              {
                goto LABEL_96;
              }

              v46 = copyFileTypeAtomAsBlockBuffer(a2, theBuffer);
              if (v46)
              {
LABEL_123:
                appended = v46;
                goto LABEL_86;
              }

              v50 = CMBlockBufferGetDataLength(theBuffer[0]);
              if (v50 <= v89)
              {
                v52 = v50;
                v46 = OUTLINED_FUNCTION_92_5(v50, theBuffer[0], v51, v50 - 4);
                if (!v46)
                {
                  LOBYTE(v90) = 0;
                  if (v52 < v89)
                  {
                    do
                    {
                      v53 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                      if (v53)
                      {
                        appended = v53(a3, 1, v52, &v90, 0);
                      }

                      else
                      {
                        appended = 4294954514;
                      }

                      ++v52;
                    }

                    while (v52 < v89);
LABEL_86:
                    if (theBuffer[0])
                    {
                      CFRelease(theBuffer[0]);
                    }

                    goto LABEL_88;
                  }

LABEL_96:
                  appended = 0;
                  goto LABEL_86;
                }

                goto LABEL_123;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_3_5();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_123;
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_125;
      }

      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    }

    appended = CurrentAtomGlobalOffset;
    goto LABEL_43;
  }

  theBuffer[0] = 0;
  if (!a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    appended = v72;
    if (v72)
    {
      goto LABEL_108;
    }

LABEL_31:
    v28 = v85;
    theBuffer[0] = 0;
    if (!v85 || !a3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_36;
    }

    v29 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v29)
    {
      v12 = v29(a3, 0, theBuffer);
      if (!v12)
      {
        CMBlockBufferGetDataLength(v28);
        OUTLINED_FUNCTION_517();
        v30 = CMByteStreamWriteBlockBuffer();
LABEL_36:
        appended = v30;
LABEL_88:
        if (!appended)
        {
          v54 = *(DerivedStorage + 8);
          if (v54 && CFEqual(url, v54))
          {
            appended = 0;
            *(DerivedStorage + 1) = 0;
          }

          else
          {
            appended = 0;
          }
        }

        goto LABEL_108;
      }

LABEL_93:
      appended = v12;
      goto LABEL_108;
    }

LABEL_107:
    appended = 4294954514;
    goto LABEL_108;
  }

  appended = copyFileTypeAtomAsBlockBuffer(a2, theBuffer);
  v27 = theBuffer[0];
  if (!appended)
  {
    CMBlockBufferGetDataLength(theBuffer[0]);
    appended = CMByteStreamAppendBlockBuffer();
    v27 = theBuffer[0];
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (!appended)
  {
    goto LABEL_31;
  }

LABEL_108:
  if (v85)
  {
    CFRelease(v85);
  }

  MovieHeaderMakerRelease(ptr);
  if (url)
  {
    CFRelease(url);
  }

  return appended;
}

void getLastAtomTypeAndOffsetAndLength(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  CurrentAtomTypeAndDataLength = FigAtomStreamInitWithByteStream();
  if (CurrentAtomTypeAndDataLength != -12893)
  {
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_7;
    }

    do
    {
      Atom = FigAtomStreamAdvanceToNextAtom();
    }

    while (!Atom);
    if (Atom == -12890)
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (!CurrentAtomTypeAndDataLength)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomGlobalOffset();
      }

LABEL_7:
      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  CurrentAtomTypeAndDataLength = 0;
  if (a2)
  {
LABEL_8:
    *a2 = 1752524863;
  }

LABEL_9:
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_74_8(CurrentAtomTypeAndDataLength, v8, v9, v10, v11, v12, v13, v14, v16, 0);
  }
}

BOOL precedingAtomIsWideAtom(uint64_t a1, uint64_t a2)
{
  v9 = 1752524863;
  v10 = 0;
  v2 = a2 - 8;
  if (a2 < 8)
  {
    return 0;
  }

  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 0;
  }

  if (v5(a1, 4, v2, &v10, 0))
  {
    return 0;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6 || v6(a1, 4, a2 - 4, &v9, 0))
  {
    return 0;
  }

  return v10 == 0x8000000 && v9 == 1701079415;
}

_DWORD *MutableMovieTrackGetStorage(uint64_t a1, int a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    if (!CMBaseObjectGetDerivedStorage())
    {
      return 0;
    }

    OUTLINED_FUNCTION_33_18();
    if (v6)
    {
      return 0;
    }

    else
    {
      FigSimpleMutexLock();
      v7 = *(v2 + 56);
      if (v7 && CFArrayGetCount(v7) >= 1)
      {
        OUTLINED_FUNCTION_417_0();
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 56), v3);
          if (ValueAtIndex)
          {
            v4 = ValueAtIndex;
            if (ValueAtIndex[1] == a2)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_377_0();
          if (v9)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v4 = 0;
      }

      FigSimpleMutexUnlock();
    }
  }

  return v4;
}

uint64_t copyFileTypeAtomAsBlockBuffer(uint64_t a1, CMBlockBufferRef *a2)
{
  v3 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_20_23();
  v9 = MovieHeaderMakerCopyFileTypeMajorBrand(v4, v5, v6, v7, v8);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_20_23();
  v9 = MovieHeaderMakerCopyFileTypeMinorVersion(v10, v11, v12, v13, v14);
  if (v9)
  {
    return v9;
  }

  OUTLINED_FUNCTION_20_23();
  v20 = MovieHeaderMakerCopyFileTypeCompatibleBrands(v15, v16, v17, v18, v19);
  if (v20)
  {
    return v20;
  }

  else
  {
    return MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(v3, 0, 0, 0, a2);
  }
}

uint64_t writeBlockBufferToCFData(uint64_t a1, __CFData *a2)
{
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return Contiguous;
  }

  OUTLINED_FUNCTION_197();
  Contiguous = CMBlockBufferCreateContiguous(v3, v4, v5, v6, v7, 0, 0, v8);
  if (Contiguous)
  {
    return Contiguous;
  }

  OUTLINED_FUNCTION_613();
  DataPointer = CMBlockBufferGetDataPointer(v10, v11, v12, v13, v14);
  if (!DataPointer)
  {
    CFDataAppendBytes(a2, 0, 0);
  }

  return DataPointer;
}

double createMutableMovieTrackObject(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, uint64_t *a5)
{
  v18 = 0;
  v19 = 0;
  if (a5)
  {
    v11 = MEMORY[0x19A8CC720](a1, 136, 0x1060040A18F7735, 0);
    if (v11)
    {
      v12 = v11;
      bzero(v11, 0x88uLL);
      *(v12 + 64) = -1;
      if (MovieTrackGetBasicInfo(a3, &v19 + 1, &v19) || MediaDataChunkWriterAddTrack(a4, SHIDWORD(v19), 1, chunkCallback_0, v12, &v18) || MediaDataChunkWriterTrackSetPreferredChunkAlignment(a4, v18, 0) || (*&v17.value = kFigMutableMovie_DefaultPreferredChunkDuration, v17.epoch = 0, MediaDataChunkWriterTrackSetPreferredChunkDuration(a4, v18, &v17)) || MediaDataChunkWriterTrackSetPreferredChunkSize(a4, v18, 0x100000))
      {
        releaseTrack(a1, v12);
      }

      else
      {
        *v12 = HIDWORD(v19);
        *(v12 + 4) = v19;
        if (a2)
        {
          v14 = CFRetain(a2);
        }

        else
        {
          v14 = 0;
        }

        *(v12 + 8) = v14;
        if (a3)
        {
          v15 = CFRetain(a3);
        }

        else
        {
          v15 = 0;
        }

        *(v12 + 16) = v15;
        *(v12 + 24) = a4;
        *(v12 + 32) = v18;
        *(v12 + 120) = 0;
        *(v12 + 124) = 0;
        if (*v12 == 1953325924)
        {
          v15[881] = 1;
        }

        *a5 = v12;
      }
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954510, "<<<< MutableMovie >>>>", 4870, v5);
    }
  }

  return result;
}

void chunkCallback_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *a7, _BYTE *a8, unint64_t *a9, const __CFArray *a10, const char *a11, uint64_t a12)
{
  v42 = **&MEMORY[0x1E6960C70];
  v41 = v42;
  if (a12)
  {
    MovieTrackAppendSampleInformation(*(a12 + 8), *(a12 + 16), a1, a2, a4, a5, a6, a7, a8, a9, a10, a11, &v42, &v41);
    if (!v12)
    {
      v13 = *(a12 + 128);
      if (v13)
      {
        if (*(a12 + 120) != 1)
        {
          v14 = *(v13 + 96);
          if ((v14 & 0x8000000000000000) == 0)
          {
            v15 = *(v13 + 88);
            if (v15)
            {
              if (v14 < v15[1])
              {
                v16 = (*v15 + 48 * v14);
                v17 = v16[1];
                v39 = *v16;
                *v40 = v17;
                *&v40[16] = v16[2];
                OUTLINED_FUNCTION_72_7();
                if ((OUTLINED_FUNCTION_43_14(*v40, v24, v26, v28, v30, v32, v34, v18, v19, time2.epoch, v37, time1.value) & 0x80000000) != 0)
                {
                  OUTLINED_FUNCTION_72_7();
                  OUTLINED_FUNCTION_132_0(MEMORY[0x1E6960CC0]);
                  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                  {
                    v39 = *&v42.value;
                    *v40 = v42.epoch;
                  }
                }

                *&time1.timescale = *&v41.timescale;
                time1.epoch = v41.epoch;
                if ((OUTLINED_FUNCTION_43_14(*&v40[24], v25, v27, v29, v31, v33, v35, *&v40[8], *&v40[16], time2.epoch, v37, v41.value) & 0x80000000) != 0)
                {
                  *&v40[8] = v41;
                }

                v20 = *(a12 + 128);
                v21 = *(v20 + 88);
                if (v21)
                {
                  v22 = (*v21 + 48 * *(v20 + 96));
                  v23 = *v40;
                  *v22 = v39;
                  v22[1] = v23;
                  v22[2] = *&v40[16];
                }
              }
            }
          }
        }
      }

      if ((*(a12 + 84) & 1) == 0)
      {
        *(a12 + 72) = v42;
      }

      if ((*(a12 + 108) & 1) == 0)
      {
        *(a12 + 96) = v41;
      }
    }
  }
}

uint64_t setMediaTimeScaleIfNeeded(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  result = 4294950861;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 4294950861;
  }

  v6 = *(a1 + 128);
  if (!v6)
  {
    MediaTimeScale = MovieTrackGetMediaTimeScale(*(a1 + 16));
    if (MediaTimeScale)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v7 = *(v6 + 56);
  if (v7 && MediaSampleTimingGeneratorGetMediaTimeScale(v7))
  {
    return 0;
  }

  v8 = MovieTrackGetMediaTimeScale(v5);
  MediaTimeScale = v8;
  if (!v8)
  {
    v10 = *(v6 + 8);
    MediaTimeScale = v10;
    if (v10)
    {
LABEL_14:
      result = MovieTrackSetMediaTimeScale(v5, v10);
      if (result)
      {
        return result;
      }

      v9 = MediaTimeScale;
      goto LABEL_16;
    }

LABEL_12:
    result = FigMovieGetDefaultMediaTimeScaleFromSample(a2, &MediaTimeScale);
    if (result)
    {
      return result;
    }

    v10 = MediaTimeScale;
    if (MediaTimeScale)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v9 = v8;
LABEL_16:
  result = 0;
  if (v6 && v9)
  {
    result = *(v6 + 56);
    if (result)
    {
      return MediaSampleTimingGeneratorSetMediaTimeScale(result, v9);
    }
  }

  return result;
}

uint64_t setVideoTrackDimensionsIfNeeded(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  IsISOFileType = FigFileTypeIsISOFileType(a2);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  v6 = OUTLINED_FUNCTION_31_17();
  MovieTrackGetSpatialInformation(v6, v7, v8, 0);
  FigMovieGetVideoDefaultTrackDimensionsFromFormatDescription(FormatDescription, IsISOFileType);
  v9 = OUTLINED_FUNCTION_23_30();
  result = MovieTrackSetTrackDimensions(v9, v10, v11);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_31_17();
    MovieTrackGetCleanApertureDimensions(v13, v14, v15);
    if (v16 || (FigMovieGetVideoDefaultCleanApertureDimensionsFromFormatDescription(FormatDescription), v17 = OUTLINED_FUNCTION_23_30(), result = MovieTrackSetCleanApertureDimensions(v17, v18, v19), !result))
    {
      v20 = OUTLINED_FUNCTION_31_17();
      MovieTrackGetProductionApertureDimensions(v20, v21, v22);
      if (v23 || (FigMovieGetVideoDefaultProductionApertureDimensionsFromFormatDescription(FormatDescription), v24 = OUTLINED_FUNCTION_23_30(), result = MovieTrackSetProductionApertureDimensions(v24, v25, v26), !result))
      {
        v27 = OUTLINED_FUNCTION_31_17();
        MovieTrackGetEncodedPixelsDimensions(v27, v28, v29);
        if (v30)
        {
          return 0;
        }

        else
        {
          FigMovieGetVideoDefaultEncodedPixelsDimensionsFromFormatDescription(FormatDescription);
          v31 = OUTLINED_FUNCTION_23_30();
          return MovieTrackSetEncodedPixelsDimensions(v31, v32, v33);
        }
      }
    }
  }

  return result;
}

double createStreamInfoForByteStream(const void *a1, uint64_t a2, CFIndex *a3)
{
  if (a1 && a2 && a3 && *(a2 + 64))
  {
    Count = CFArrayGetCount(*(a2 + 64));
    v7 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 24, 0x1020040AC2FBBA9, 0);
    if (v7)
    {
      v8 = v7;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      *v7 = CFRetain(a1);
      CFArrayAppendValue(*(a2 + 64), v8);
      *a3 = Count;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void writeMdatHeaderIfNecessary(uint64_t *a1, unint64_t a2, void *a3)
{
  v17 = 0;
  v16 = 1752524863;
  v14 = 0;
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
    goto LABEL_21;
  }

  getLastAtomTypeAndOffsetAndLength(*a1, &v16, &v17, &v14);
  if (v6)
  {
    goto LABEL_21;
  }

  if (v16 == 1835295092)
  {
    HIDWORD(v13) = 0;
    v7 = *a1;
    v8 = v17;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v9)
    {
      if (!a3)
      {
        return;
      }

      goto LABEL_16;
    }

    if (v9(v7, 4, v8, &v13 + 4, 0))
    {
      goto LABEL_21;
    }

    v10 = bswap32(HIDWORD(v13));
    HIDWORD(v13) = v10;
    if (!v10)
    {
      goto LABEL_15;
    }

    if (v10 == 1)
    {
      if (~v14 < a2)
      {
        goto LABEL_9;
      }

LABEL_15:
      v12 = v17;
      a1[2] = v17;
      *(a1 + 8) = 1;
      v9 = (v14 + v12);
      if (!a3)
      {
        return;
      }

      goto LABEL_16;
    }

    if (0xFFFFFFFFLL - v14 >= a2 || precedingAtomIsWideAtom(*a1, v17))
    {
      goto LABEL_15;
    }
  }

LABEL_9:
  if (!writeMdatHeader(*a1))
  {
    v11 = v14 + v17;
    a1[2] = v14 + v17 + 8;
    *(a1 + 8) = 1;
    v9 = (v11 + 16);
    if (!a3)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_21:
  v9 = 0;
  if (!a3)
  {
    return;
  }

LABEL_16:
  *a3 = v9;
}

void writeActualMdatLengthsToStorages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_296_0();
  a24 = v25;
  a25 = v28;
  a13 = 0;
  if (v27)
  {
    v29 = v26;
    if (CFArrayGetCount(v27) >= 1)
    {
      OUTLINED_FUNCTION_417_0();
      do
      {
        v30 = OUTLINED_FUNCTION_618();
        ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
        if (!ValueAtIndex)
        {
LABEL_31:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          break;
        }

        v33 = ValueAtIndex[8];
        if (v33 != -1)
        {
          v34 = CFArrayGetValueAtIndex(*(v29 + 64), v33);
          if (!v34)
          {
            goto LABEL_31;
          }

          v35 = v34;
          if (*(v34 + 8))
          {
            v36 = *v34;
            v37 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (!v37 || v37(v36, 0, &a13))
            {
              break;
            }

            v38 = v35[2];
            v39 = a13 - v38;
            if (!((a13 - v38) >> 32))
            {
              LODWORD(a10) = bswap32(v39);
              v40 = *v35;
              v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v41)
              {
                break;
              }

              v42 = v40;
              v43 = 4;
              v44 = v38;
LABEL_13:
              if (v41(v42, v43, v44, &a10, 0))
              {
                break;
              }

              goto LABEL_18;
            }

            a12 = 0;
            a10 = a13 - v38;
            v45 = *v35;
            v46 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v46 || v46(v45, 4, v38, &a12, 0))
            {
              break;
            }

            v47 = bswap32(a12);
            a12 = v47;
            if (v47)
            {
              if (v47 == 1)
              {
                precedingAtomIsWideAtom(*v35, v35[2]);
                a10 = bswap64(a10);
                v49 = *v35;
                v50 = v35[2];
                v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v41)
                {
                  break;
                }

                v44 = v50 + 8;
                v42 = v49;
                v43 = 8;
                goto LABEL_13;
              }

              if (precedingAtomIsWideAtom(*v35, v35[2]))
              {
                a9 = 0x7461646D01000000;
                a10 = bswap64(v39 + 8);
                v51 = *v35;
                v52 = v35[2];
                v53 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v53)
                {
                  break;
                }

                if (v53(v51, 8, v52 - 8, &a9, 0))
                {
                  break;
                }

                v54 = *v35;
                v55 = v35[2];
                v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                if (!v41)
                {
                  break;
                }

                v42 = v54;
                v43 = 8;
                v44 = v55;
                goto LABEL_13;
              }
            }
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_377_0();
      }

      while (!v48);
    }
  }

  OUTLINED_FUNCTION_207_0();
}

uint64_t createSourceFromTrack(const void *a1, const void *a2, const __CFAllocator *a3, char a4, int a5, void *a6)
{
  v8 = 0;
  v49 = 0;
  v50 = 0;
  cf = 0;
  v48 = 0;
  v9 = 4294950861;
  valuePtr = 0;
  if (!a2)
  {
    v11 = 0;
    goto LABEL_33;
  }

  v11 = 0;
  if (!a6)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_91_4();
  v15 = MEMORY[0x19A8CC720](a3, 160);
  v11 = v15;
  if (!v15)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, v45, cf);
LABEL_40:
    v9 = v17;
    goto LABEL_41;
  }

  bzero(v15, 0xA0uLL);
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    v8 = 0;
    v9 = 4294954514;
    goto LABEL_33;
  }

  v17 = v16(a2, &v48, &v48 + 4);
  if (v17)
  {
    goto LABEL_40;
  }

  FigTrackReaderGetFigBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v20(v19, @"TrackTimescale", 0, &cf);
    if (cf)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
        CFRelease(cf);
      }
    }
  }

  if (!a5)
  {
    goto LABEL_29;
  }

  if (FigServer_IsMediaparserd() && (FigFormatReaderIsRemote(a1) || FigTrackReaderIsRemote(a2)))
  {
    OUTLINED_FUNCTION_20_23();
    if (a4)
    {
      v27 = FigSampleGeneratorRemoteCreateForTrackReader(v22, v23, v24, v25, v26);
    }

    else
    {
      v27 = FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers(v22, v23, v24, v25, v26);
    }
  }

  else if (a4)
  {
    FigGetBaseByteStreamProvider();
    v31 = OUTLINED_FUNCTION_266_0();
    FigSampleGeneratorCreateForFormatReaderUsingByteStreams(v31, v32, a2, v33, 0, 2, v34);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_266_0();
    FigSampleGeneratorCreateForFormatReaderProducingByteReferenceSampleBuffers(v28, v29, a2, 0, 0, v30);
  }

  v9 = v27;
  if (v27)
  {
LABEL_41:
    v8 = 0;
    goto LABEL_33;
  }

  if (HIDWORD(v48) == 1751216244 || HIDWORD(v48) == 1936684398)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2;
  }

  v37 = MediaSampleTimingGeneratorCreate(a3, SHIDWORD(v48), v36, &v50);
  if (v37)
  {
    v9 = v37;
    v8 = v50;
    goto LABEL_33;
  }

LABEL_29:
  *v11 = HIDWORD(v48);
  v38 = valuePtr;
  v11[1] = v48;
  v11[2] = v38;
  if (a1)
  {
    v39 = CFRetain(a1);
  }

  else
  {
    v39 = 0;
  }

  *(v11 + 3) = v39;
  v40 = CFRetain(a2);
  v8 = 0;
  v9 = 0;
  v41 = v49;
  *(v11 + 4) = v40;
  *(v11 + 5) = v41;
  *(v11 + 7) = v50;
  v42 = *MEMORY[0x1E6960CC0];
  *(v11 + 16) = *(MEMORY[0x1E6960CC0] + 16);
  *(v11 + 7) = v42;
  *(v11 + 2) = 0;
  *a6 = v11;
  *(v11 + 146) = 0;
  v49 = 0;
  v50 = 0;
  v11 = 0;
LABEL_33:
  MediaSampleTimingGeneratorRelease(v8);
  if (v49)
  {
    CFRelease(v49);
  }

  if (v11)
  {
    releaseSource(a3, v11);
  }

  return v9;
}

const void *getTrackForInsertionFromSource(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (!a1)
  {
    return v2;
  }

  v3 = a2;
  if (!a2)
  {
    return v2;
  }

  if (!*(a1 + 56) || !*(a2 + 32))
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_213;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    goto LABEL_213;
  }

  v7 = Count;
  Mutable = 0;
  v9 = 0;
  v10 = @"TrackEnabled";
  v144 = *MEMORY[0x1E695E480];
  v154 = v3;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v9);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      if (!*(ValueAtIndex + 124) && ValueAtIndex[1] && ValueAtIndex[2] && *(v3 + 32))
      {
        v13 = *(v3 + 148);
        if (v13)
        {
          if (v13 != *(ValueAtIndex + 1))
          {
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        if (*ValueAtIndex == *v3)
        {
          cf[0] = 0;
          LODWORD(valuePtr[0]) = 0;
          FigTrackReaderGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v17 = OUTLINED_FUNCTION_57_8();
            v18(v17, @"TrackTimescale", 0);
            if (cf[0])
            {
              TypeID = CFNumberGetTypeID();
              if (TypeID == CFGetTypeID(cf[0]))
              {
                CFNumberGetValue(cf[0], kCFNumberSInt32Type, valuePtr);
                CFRelease(cf[0]);
              }
            }
          }

          MediaTimeScale = MovieTrackGetMediaTimeScale(v12[2]);
          if (!MediaTimeScale || MediaTimeScale == LODWORD(valuePtr[0]))
          {
            cf[0] = 0;
            FigTrackReaderGetFigBaseObject();
            if (*(*(CMBaseObjectGetVTable() + 8) + 48))
            {
              v21 = OUTLINED_FUNCTION_57_8();
              v22(v21, v10, 0);
            }

            if (cf[0] && (v23 = CFBooleanGetTypeID(), v23 == CFGetTypeID(cf[0])))
            {
              v24 = CFBooleanGetValue(cf[0]);
              CFRelease(cf[0]);
            }

            else
            {
              v24 = 0;
            }

            if (v24 == MovieTrackIsEnabled(v12[2]))
            {
              cf[0] = 0;
              *&valuePtr[0] = 0;
              MovieTrackGetLanguageInformation(v12[2], 0, cf, valuePtr);
              value = 0;
              v162 = 0;
              FigTrackReaderGetFigBaseObject();
              v26 = v25;
              v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v27)
              {
                v27(v26, @"TrackLanguageCode", 0, &value);
              }

              if (!cf[0])
              {
                cf[0] = @"und";
              }

              if (!value)
              {
                value = @"und";
              }

              v28 = FigCFEqual();
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              if (v28)
              {
                FigTrackReaderGetFigBaseObject();
                v30 = v29;
                v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v31)
                {
                  v31(v30, @"ExtendedLanguageTagString", 0, &v162);
                }

                v32 = FigCFEqual();
                if (v162)
                {
                  CFRelease(v162);
                }

                if (v32)
                {
                  v161 = 0;
                  *cf = 0u;
                  v160 = 0u;
                  v158 = 0;
                  memset(valuePtr, 0, sizeof(valuePtr));
                  value = 0;
                  OUTLINED_FUNCTION_613();
                  MovieTrackGetSpatialInformation(v33, v34, v35, v36);
                  FigTrackReaderGetFigBaseObject();
                  v38 = v37;
                  v39 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v39)
                  {
                    v39(v38, @"TrackMatrix", v144, &value);
                  }

                  if (value)
                  {
                    v40 = CFArrayGetTypeID();
                    if (v40 == CFGetTypeID(value))
                    {
                      CFArrayToFigMatrix(value, valuePtr);
                      CFRelease(value);
                      v41 = 0;
                      for (i = 0; i != 3; ++i)
                      {
                        v43 = v41;
                        v44 = 3;
                        do
                        {
                          if (*(cf + v43) != *(valuePtr + v43))
                          {
                            goto LABEL_71;
                          }

                          v43 += 4;
                          --v44;
                        }

                        while (v44);
                        v41 += 12;
                      }
                    }
                  }

                  OUTLINED_FUNCTION_63();
                  if (!v95)
                  {
                    goto LABEL_64;
                  }

                  cf[0] = 0;
                  LODWORD(valuePtr[0]) = 1065353216;
                  Volume = MovieTrackGetVolume(v12[2]);
                  FigTrackReaderGetFigBaseObject();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v46 = OUTLINED_FUNCTION_57_8();
                    if (!v47(v46, @"Volume", 0))
                    {
                      if (cf[0])
                      {
                        v48 = CFNumberGetTypeID();
                        if (v48 == CFGetTypeID(cf[0]))
                        {
                          CFNumberGetValue(cf[0], kCFNumberFloat32Type, valuePtr);
                          CFRelease(cf[0]);
                        }
                      }
                    }
                  }

                  if (Volume == *valuePtr)
                  {
LABEL_64:
                    IsChapterTrack = MovieTrackIsChapterTrack(v12[1], v12[2]);
                    cf[0] = 0;
                    FigTrackReaderGetFigBaseObject();
                    v51 = v50;
                    v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v52)
                    {
                      v52(v51, @"ContainsChapters", 0, cf);
                    }

                    if (cf[0] && (v53 = CFBooleanGetTypeID(), v53 == CFGetTypeID(cf[0])))
                    {
                      v54 = CFBooleanGetValue(cf[0]);
                      CFRelease(cf[0]);
                      if ((IsChapterTrack == 0) != (v54 == 0))
                      {
                        goto LABEL_18;
                      }

                      if (v54)
                      {
                        goto LABEL_15;
                      }
                    }

                    else if (IsChapterTrack)
                    {
                      goto LABEL_18;
                    }

                    cf[0] = 0;
                    FigTrackReaderGetFigBaseObject();
                    if (!*(*(CMBaseObjectGetVTable() + 8) + 48) || (v55 = OUTLINED_FUNCTION_57_8(), v56(v55, @"TrackFormatDescriptionArray", 0)) || !cf[0])
                    {
LABEL_15:
                      if (Mutable || (OUTLINED_FUNCTION_613(), (Mutable = CFArrayCreateMutable(v14, v15, v16)) != 0))
                      {
                        CFArrayAppendValue(Mutable, v12);
                      }

                      goto LABEL_18;
                    }

                    v57 = MovieTrackCopyFormatDescriptionArray(v12[2]);
                    if (v57)
                    {
                      if (cf[0])
                      {
                        v58 = CFArrayGetCount(cf[0]);
                        v148 = CFArrayGetCount(v57);
                        v139 = v58;
                        if (v58 >= 1)
                        {
                          v59 = 0;
                          v143 = v10;
                          while (1)
                          {
                            v141 = v59;
                            desc = CFArrayGetValueAtIndex(cf[0], v59);
                            if (desc && v148 >= 1)
                            {
                              break;
                            }

LABEL_102:
                            v59 = v141 + 1;
                            if (v141 + 1 == v139)
                            {
                              goto LABEL_105;
                            }
                          }

                          v61 = 0;
                          while (1)
                          {
                            v62 = CFArrayGetValueAtIndex(v57, v61);
                            if (!v62)
                            {
                              goto LABEL_101;
                            }

                            v63 = v62;
                            v64 = *v12;
                            if (*v12 == 1952807028)
                            {
                              break;
                            }

                            if (v64 == 1986618469)
                            {
                              v67 = OUTLINED_FUNCTION_409();
                              PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v67, v68, 1u);
                              v70 = CMVideoFormatDescriptionGetPresentationDimensions(desc, 1u, 1u);
                              if (PresentationDimensions.width != 0.0 || PresentationDimensions.height != 0.0)
                              {
                                v71 = PresentationDimensions.width / PresentationDimensions.height;
                                if (PresentationDimensions.height == 0.0)
                                {
                                  v71 = 0.0;
                                }

                                v72 = v70.width / v70.height;
                                if (v70.height == 0.0)
                                {
                                  v72 = 0.0;
                                }

                                if (vabdd_f64(v71, v72) > 0.00999999978)
                                {
LABEL_106:
                                  v73 = 0;
LABEL_107:
                                  if (cf[0])
                                  {
                                    CFRelease(cf[0]);
                                    cf[0] = 0;
                                  }

                                  if (v57)
                                  {
                                    CFRelease(v57);
                                  }

                                  if ((v73 & 1) == 0)
                                  {
LABEL_18:
                                    v3 = v154;
                                    goto LABEL_71;
                                  }

                                  goto LABEL_15;
                                }
                              }
                            }

                            else
                            {
                              if (v64 == 1953325924)
                              {
                                break;
                              }

                              if (!CFEqual(desc, v62))
                              {
                                goto LABEL_106;
                              }
                            }

LABEL_101:
                            if (v148 == ++v61)
                            {
                              goto LABEL_102;
                            }
                          }

                          v65 = v57;
                          MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
                          v95 = MediaSubType == CMFormatDescriptionGetMediaSubType(v63);
                          v57 = v65;
                          v10 = v143;
                          if (!v95)
                          {
                            goto LABEL_106;
                          }

                          goto LABEL_101;
                        }
                      }

                      else
                      {
                        CFArrayGetCount(v57);
                      }
                    }

LABEL_105:
                    v73 = 1;
                    goto LABEL_107;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_71:
    ++v9;
  }

  while (v9 != v7);
  if (!Mutable)
  {
LABEL_213:
    FigSimpleMutexUnlock();
    return 0;
  }

  v74 = CFArrayGetCount(Mutable);
  if (!v74)
  {
    FigSimpleMutexUnlock();
    CFRelease(Mutable);
    return 0;
  }

  v75 = v74;
  if (v74 < 1)
  {
    v2 = 0;
    v76 = 0;
    goto LABEL_219;
  }

  v76 = 0;
  v77 = 0;
  v78 = v144;
  v138 = v74;
  v140 = Mutable;
  do
  {
    v79 = CFArrayGetValueAtIndex(Mutable, v77);
    if (!v79)
    {
      goto LABEL_176;
    }

    v80 = v79;
    cf[0] = 0;
    *&valuePtr[0] = 0;
    if (v79[1] && v79[2] && *(v3 + 32))
    {
      if (!*(v3 + 24))
      {
        goto LABEL_161;
      }

      FigFormatReaderGetFigBaseObject();
      v82 = v81;
      v83 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v83)
      {
        v83(v82, @"TrackReferenceDictionary", v78, cf);
      }

      MovieInformationCreateTrackReferenceDictionary(v78, v80[1], valuePtr);
      if (cf[0] && CFDictionaryGetCount(cf[0]))
      {
        v84 = CFDictionaryGetCount(cf[0]);
        v85 = malloc_type_calloc(v84, 8uLL, 0x6004044C4A2DFuLL);
        v149 = v84;
        v86 = malloc_type_calloc(v84, 8uLL, 0x6004044C4A2DFuLL);
        v87 = 1;
        v3 = v154;
        v150 = v86;
        keys = v85;
        if (v85 && v86)
        {
          CFDictionaryGetKeysAndValues(cf[0], v85, v86);
          if (v149 < 1)
          {
            v87 = 0;
          }

          else
          {
            v142 = v77;
            desca = v76;
            v88 = 0;
            v89 = v150;
            do
            {
              v155 = keys[v88];
              v152 = v88;
              v90 = CFArrayGetCount(v89[v88]);
              if (v90 >= 1)
              {
                v91 = v90;
                v92 = 0;
                v153 = v90;
                do
                {
                  LODWORD(v162) = 0;
                  v165[0] = 0;
                  FigCFArrayGetInt32AtIndex();
                  FigCFArrayGetInt32AtIndex();
                  v93 = *(v3 + 4);
                  v94 = v162;
                  v95 = v93 == v162 || v93 == v165[0];
                  if (v95)
                  {
                    if (v93 == v162)
                    {
                      v96 = v165[0];
                    }

                    else
                    {
                      v96 = v162;
                    }

                    value = 0;
                    if (CFDictionaryGetValueIfPresent(*&valuePtr[0], v155, &value))
                    {
                      v97 = CFArrayGetCount(value);
                      if (v97 >= 1)
                      {
                        v98 = v97;
                        for (j = 0; j < v98; j += 2)
                        {
                          v163 = 0;
                          FigCFArrayGetInt32AtIndex();
                          FigCFArrayGetInt32AtIndex();
                          v100 = (&v163 + 4);
                          if (v93 != v94)
                          {
                            v100 = &v163;
                          }

                          if (*(v80 + 1) == *v100)
                          {
                            v101 = CFArrayGetCount(*(a1 + 72));
                            if (v101 >= 1)
                            {
                              v102 = v101;
                              v103 = 1;
                              do
                              {
                                v104 = *(CFArrayGetValueAtIndex(*(a1 + 72), v103 - 1) + 1) != v96 && v103 < v102;
                                ++v103;
                              }

                              while (v104);
                            }
                          }
                        }
                      }
                    }

                    v3 = v154;
                    v91 = v153;
                  }

                  v92 += 2;
                }

                while (v92 < v91);
              }

              v88 = v152 + 1;
              v89 = v150;
            }

            while (v152 + 1 != v149);
            v87 = 0;
            v75 = v138;
            Mutable = v140;
            v78 = v144;
            v76 = desca;
            v77 = v142;
          }
        }

        goto LABEL_168;
      }

      v105 = v80[1];
      v106 = *(v105 + 328);
      v3 = v154;
      if (v106 < 1)
      {
LABEL_161:
        v87 = 0;
        v150 = 0;
        keys = 0;
        goto LABEL_168;
      }

      v107 = *(v105 + 344);
      v108 = *(v80[2] + 144);
      if (v107[2] != v108 && v107[1] != v108)
      {
        v109 = v107 + 5;
        v110 = 1;
        do
        {
          v111 = v110;
          if (v106 == v110)
          {
            break;
          }

          if (*v109 == v108)
          {
            break;
          }

          v112 = *(v109 - 1);
          ++v110;
          v109 += 3;
        }

        while (v112 != v108);
        v150 = 0;
        keys = 0;
        v87 = v111 < v106;
        goto LABEL_168;
      }
    }

    v150 = 0;
    keys = 0;
    v87 = 1;
LABEL_168:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (*&valuePtr[0])
    {
      CFRelease(*&valuePtr[0]);
    }

    free(keys);
    free(v150);
    if (!v87)
    {
      if (v76 || (OUTLINED_FUNCTION_613(), (v76 = CFArrayCreateMutable(v113, v114, v115)) != 0))
      {
        CFArrayAppendValue(v76, v80);
      }
    }

LABEL_176:
    ++v77;
  }

  while (v77 != v75);
  if (!v76 || (v156 = CFArrayGetCount(v76), v156 < 1))
  {
    v2 = 0;
LABEL_219:
    v116 = 0;
    goto LABEL_220;
  }

  descb = v76;
  v116 = 0;
  v117 = 0;
  while (2)
  {
    v118 = CFArrayGetValueAtIndex(descb, v117);
    if (v118)
    {
      v119 = v118;
      cf[0] = 0;
      *&valuePtr[0] = 0;
      LODWORD(value) = 0;
      LODWORD(v162) = 0;
      if (v118[1])
      {
        if (v118[2] && *(v154 + 32))
        {
          FigTrackReaderGetFigBaseObject();
          if (*(*(CMBaseObjectGetVTable() + 8) + 48))
          {
            v120 = OUTLINED_FUNCTION_57_8();
            v121(v120, @"AlternateGroupID", 0);
            if (cf[0])
            {
              v122 = CFGetTypeID(cf[0]);
              if (v122 == CFNumberGetTypeID())
              {
                CFNumberGetValue(cf[0], kCFNumberSInt32Type, &value);
                CFRelease(cf[0]);
              }
            }
          }

          TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(v119[1], v119[2]);
          v124 = TrackAlternateGroupID;
          if (value)
          {
            if (!TrackAlternateGroupID)
            {
              goto LABEL_209;
            }

            if (CFArrayGetCount(*(a1 + 56)) >= 1)
            {
              OUTLINED_FUNCTION_417_0();
              do
              {
                v125 = CFArrayGetValueAtIndex(*(a1 + 56), v78);
                if (v125)
                {
                  v126 = v125;
                  v127 = v125[16];
                  if (v127)
                  {
                    if (*(v127 + 32))
                    {
                      FigTrackReaderGetFigBaseObject();
                      v129 = v128;
                      v130 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                      if (v130)
                      {
                        v130(v129, @"AlternateGroupID", 0, valuePtr);
                      }

                      if (*&valuePtr[0])
                      {
                        v131 = CFGetTypeID(*&valuePtr[0]);
                        if (v131 == CFNumberGetTypeID())
                        {
                          CFNumberGetValue(*&valuePtr[0], kCFNumberSInt32Type, &v162);
                          CFRelease(*&valuePtr[0]);
                        }
                      }

                      if (v162 == value && MovieInformationGetTrackAlternateGroupID(v126[1], v126[2]) != v124)
                      {
                        goto LABEL_209;
                      }
                    }
                  }
                }

                OUTLINED_FUNCTION_377_0();
              }

              while (!v95);
            }
          }

          else if (TrackAlternateGroupID)
          {
            goto LABEL_209;
          }

          if (v116 || (OUTLINED_FUNCTION_613(), (v116 = CFArrayCreateMutable(v132, v133, v134)) != 0))
          {
            CFArrayAppendValue(v116, v119);
          }
        }
      }
    }

LABEL_209:
    if (++v117 != v156)
    {
      continue;
    }

    break;
  }

  if (v116)
  {
    v76 = descb;
    if (CFArrayGetCount(v116))
    {
      v135 = OUTLINED_FUNCTION_266_0();
      v2 = CFArrayGetValueAtIndex(v135, v136);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
    v76 = descb;
  }

LABEL_220:
  FigSimpleMutexUnlock();
  CFRelease(Mutable);
  if (v76)
  {
    CFRelease(v76);
  }

  if (v116)
  {
    CFRelease(v116);
  }

  return v2;
}

double setTrackIDModified(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2 && a3)
  {
    Storage = MutableMovieTrackGetStorage(a1, a3);
    if (Storage)
    {
      *(Storage + 56) = 1;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void clearInsertionStateInTracks(uint64_t a1)
{
  if (CMBaseObjectGetDerivedStorage())
  {
    OUTLINED_FUNCTION_55_14();
    if (!v3 && !MovieInformationLockForRead(*(v1 + 24)))
    {
      TrackCount = MovieInformationGetTrackCount(*(v1 + 24));
      if (TrackCount >= 1)
      {
        v5 = TrackCount;
        for (i = 0; i != v5; ++i)
        {
          TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(v1 + 24), i);
          if (TrackForTrackIndex)
          {
            Storage = MutableMovieTrackGetStorage(a1, *(TrackForTrackIndex + 144));
            if (Storage)
            {
              *(Storage + 124) = 0;
            }
          }
        }
      }

      v9 = *(v1 + 24);

      MovieInformationUnlockForRead(v9);
    }
  }
}

void insertSegmentFromSourceArray(const __CFArray *a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a1)
  {
    if (CMBaseObjectGetDerivedStorage())
    {
      OUTLINED_FUNCTION_33_18();
      if (!v30)
      {
        OUTLINED_FUNCTION_82_5();
        v44 = *a4;
        v45 = *(a4 + 2);
        transferMovieSamplesFromSourceArray(a2, a1, v32, v33, v34, v31 & ~a5, v35, v46, &v44);
        if (!v42)
        {
          v43 = *(v25 + 56);

          writeActualMdatLengthsToStorages(v25, v43, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
        }
      }
    }
  }
}

void transferMovieSamplesFromSourceArray(uint64_t a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _OWORD *a8, uint64_t a9)
{
  v377 = a8;
  LODWORD(v380) = a6;
  v368 = a5;
  v442 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  v427 = *MEMORY[0x1E6960C70];
  v428 = *(MEMORY[0x1E6960C70] + 8);
  v412 = 0;
  sbuf = 0;
  if (!a1)
  {
    goto LABEL_439;
  }

  if (!a2)
  {
    goto LABEL_439;
  }

  v11 = a3;
  if (!a3)
  {
    goto LABEL_439;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_439;
  }

  v15 = DerivedStorage;
  v358 = a7;
  v414 = *(DerivedStorage + 80);
  v415 = *(DerivedStorage + 96);
  FigSimpleMutexLock();
  v16 = *(v15 + 56);
  if (v16)
  {
    Count = CFArrayGetCount(v16);
    if (Count >= 1)
    {
      v18 = Count;
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v15 + 56), i);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v21 = ValueAtIndex[2];
          if (v21 && MovieTrackGetTrackDurationValue(v21))
          {
            MovieTrackExtendMediaDecodeDurationToDisplayEndTime();
          }

          *(v9 + 120) = 4;
        }
      }

      value = v9;
    }
  }

  FigSimpleMutexUnlock();
  v22 = CFArrayGetCount(a2);
  v23 = MEMORY[0x1E695E480];
  if (v22 >= 1)
  {
    v24 = v22;
    v25 = 0;
    v9 = *MEMORY[0x1E695E480];
    v26 = 1;
    while (1)
    {
      HIDWORD(v370) = v26;
      v27 = CFArrayGetValueAtIndex(a2, v25);
      TrackForInsertionFromSource = getTrackForInsertionFromSource(v15, v27);
      value = TrackForInsertionFromSource;
      if (TrackForInsertionFromSource)
      {
        *(v27 + 38) = TrackForInsertionFromSource[1];
      }

      else
      {
        if (MovieInformationLockForWrite(v11))
        {
          goto LABEL_429;
        }

        v33 = v23;
        v34 = MovieInformationCreateTrack(v11, *v27, 0, 0, &cf);
        MovieInformationUnlockForWrite(v11);
        if (v34)
        {
          goto LABEL_429;
        }

        createMutableMovieTrackObject(v9, v11, cf, a4, &value);
        if (v35)
        {
          goto LABEL_429;
        }

        v36 = value;
        if (!value)
        {
          goto LABEL_451;
        }

        *(v27 + 38) = *(value + 1);
        v36[125] = 1;
        FigSimpleMutexLock();
        CFArrayAppendValue(*(v15 + 56), value);
        FigSimpleMutexUnlock();
        syncPropertiesOfNewTrackWithSourceTrackUsingTrackReaderOrOptionsDictionary(a1, *(cf + 36), *(v27 + 4), 0);
        v23 = v33;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      v37 = value;
      v38 = *(value + 16);
      if (v38)
      {
        releaseSource(v9, v38);
        v37 = value;
        *(value + 16) = 0;
      }

      v37[16] = v27;
      *(v37 + 124) = 1;
      if (!v380)
      {
        LOBYTE(__src[0].start.value) = 0;
        v39 = v37[8];
        if (v39 == -1)
        {
          v40 = v37[5];
          v440.source.start.value = -1;
          if (v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v368;
          }

          if (!v41)
          {
            goto LABEL_429;
          }

          ByteStreamForTrackStorageURL = getByteStreamForTrackStorageURL(a1, v41, __src, &v440, v29, v30, v31, v32, v349, v350, v351, v352, v354, v355, v356, v358, v360, v363, v366, v368, v370, v371, v375, v377);
          v39 = v440.source.start.value;
          if (ByteStreamForTrackStorageURL)
          {
            v43 = 1;
          }

          else
          {
            v43 = v440.source.start.value == -1;
          }

          if (v43)
          {
            FigFileDoesFileExist();
            if (CMByteStreamCreateForFileURL())
            {
              goto LABEL_429;
            }

            source[0].start.value = -1;
            createStreamInfoForByteStream(v412, v15, &source[0].start.value);
            if (v44)
            {
              goto LABEL_429;
            }

            if (v412)
            {
              CFRelease(v412);
              v412 = 0;
            }

            v39 = source[0].start.value;
            *(value + 8) = source[0].start.value;
            if (v39 == -1)
            {
              goto LABEL_55;
            }
          }

          else
          {
            *(value + 8) = v440.source.start.value;
          }
        }

        v45 = CFArrayGetValueAtIndex(*(v15 + 64), v39);
        if (!v45)
        {
LABEL_451:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_41();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_429;
        }

        if (!LOBYTE(__src[0].start.value))
        {
          v46 = v45;
          LOBYTE(__src[0].start.value) = v45[8];
          if (!LOBYTE(__src[0].start.value))
          {
            source[0].start.value = 0;
            if (!*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              goto LABEL_429;
            }

            v47 = OUTLINED_FUNCTION_383();
            if (v48(v47))
            {
              goto LABEL_429;
            }

            v23 = MEMORY[0x1E695E480];
            if (!source[0].start.value)
            {
              v49 = *v46;
              v440.source.start.value = 0;
              if (v49)
              {
                if (CMByteStreamAppend())
                {
                  goto LABEL_429;
                }

                v50 = v440.source.start.value;
              }

              else
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_41();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v349, v350, v351);
                if (v51)
                {
                  goto LABEL_429;
                }

                v50 = 0;
              }

              source[0].start.value += v50;
            }

            if (writeMdatHeader(*v46))
            {
              goto LABEL_429;
            }

            *(v46 + 2) = source[0].start.value + 8;
            v46[8] = 1;
          }
        }
      }

LABEL_55:
      v26 = ++v25 < v24;
      if (v24 == v25)
      {
        goto LABEL_60;
      }
    }
  }

  v26 = 0;
LABEL_60:
  FigSimpleMutexLock();
  v52 = *(v15 + 56);
  HIDWORD(v370) = v26;
  if (v52)
  {
    v53 = CFArrayGetCount(v52);
    v54 = v53;
    v376 = *v23;
    if (v53 >= 1)
    {
      v55 = 0;
      v364 = &v434;
      v361 = @"EditCursorService";
      v386 = *(MEMORY[0x1E6960C78] + 12);
      *v382 = *(MEMORY[0x1E6960C78] + 16);
      v372 = v53;
      do
      {
        v410 = 0;
        v411 = 0;
        v56 = CFArrayGetValueAtIndex(*(v15 + 56), v55);
        value = v56;
        if (v56)
        {
          v57 = v56[16];
          if (v57)
          {
            v58 = v377[1];
            *&v409.start.value = *v377;
            *&v409.start.epoch = v58;
            *&v409.duration.timescale = v377[2];
            v434 = 0;
            v433 = 0;
            v425 = 0;
            v424 = 0;
            v59 = *(v57 + 32);
            if (v59)
            {
              v60 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v60)
              {
                v61 = v60(v59);
              }

              else
              {
                v61 = 0;
              }

              if (v61 <= 1)
              {
                v62 = 1;
              }

              else
              {
                v62 = v61;
              }

              OUTLINED_FUNCTION_50_9();
              v63 = OUTLINED_FUNCTION_200_1();
              *v23 = OUTLINED_FUNCTION_63_9(v63);
              *(v23 + 16) = v62;
              FigTrackReaderGetFigBaseObject();
              v65 = v64;
              v66 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v66)
              {
                v66(v65, @"SecondaryEditCursorService", v376, &v433);
                v67 = v433 != 0;
                if (v433)
                {
                  v68 = &v434;
                }

                else
                {
                  v68 = &v433;
                }

                if (v433)
                {
                  v69 = 2;
                }

                else
                {
                  v69 = 1;
                }
              }

              else
              {
                v67 = 0;
                v68 = &v433;
                v69 = 1;
              }

              FigTrackReaderGetFigBaseObject();
              v71 = v70;
              v72 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v72)
              {
                v72(v71, @"EditCursorService", v376, v68);
              }

              if (*v68)
              {
                v73 = v69;
              }

              else
              {
                v73 = v67;
              }

              if (v73)
              {
                v74 = v433;
                v75 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v75)
                {
                  *&v440.source.start.value = *MEMORY[0x1E6960C80];
                  v440.source.start.epoch = *(MEMORY[0x1E6960C80] + 16);
                  if (!v75(v74, &v440, &v425))
                  {
                    v76.n128_f64[0] = OUTLINED_FUNCTION_8_47();
                    for (j = *(*(OUTLINED_FUNCTION_61_12(v76) + 16) + 24); j; j = *(*(OUTLINED_FUNCTION_61_12(v93) + 16) + 24))
                    {
                      if (j(v74, &v440))
                      {
                        break;
                      }

                      memset(&lhs, 0, sizeof(lhs));
                      fromRange[0] = v440.target;
                      toRange[0] = v409;
                      v78 = OUTLINED_FUNCTION_15_35();
                      CMTimeRangeGetIntersection(v80, v78, v79);
                      if ((lhs.start.flags & 1) != 0 && (lhs.duration.flags & 1) != 0 && !lhs.duration.epoch && (lhs.duration.value & 0x8000000000000000) == 0)
                      {
                        OUTLINED_FUNCTION_52_14();
                        *&toRange[0].start.value = *MEMORY[0x1E6960CC0];
                        toRange[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16);
                        v81 = OUTLINED_FUNCTION_15_35();
                        if (!CMTimeCompare(v81, v82))
                        {
                          goto LABEL_457;
                        }
                      }

                      memset(&v422, 0, sizeof(v422));
                      *&dur[0].start.value = *&lhs.start.value;
                      OUTLINED_FUNCTION_19_30(lhs.start.epoch);
                      CMTimeMapTimeFromRangeToRange(&v422, &dur[0].start, fromRange, toRange);
                      memset(&v421, 0, sizeof(v421));
                      *&dur[0].start.value = *&lhs.duration.value;
                      OUTLINED_FUNCTION_19_30(lhs.duration.epoch);
                      CMTimeMapDurationFromRangeToRange(&v421, &dur[0].start, fromRange, toRange);
                      memset(&v420, 0, sizeof(v420));
                      fromRange[0].start = v422;
                      toRange[0].start = v421;
                      v83 = OUTLINED_FUNCTION_15_35();
                      CMTimeRangeMake(v85, v83, v84);
                      memset(__src, 0, sizeof(__src));
                      fromRange[0] = v420;
                      toRange[0] = lhs;
                      v86 = OUTLINED_FUNCTION_15_35();
                      CMTimeMappingMake(v88, v86, v87);
                      if (v73 == 1)
                      {
                        memcpy(fromRange, __src, sizeof(fromRange));
                        v89 = OUTLINED_FUNCTION_68_9();
                        appendToTimeMappingArray(v89, v90);
                      }

                      else
                      {
                        v94 = v434;
                        toRange[0].start = v422;
                        v95 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (!v95)
                        {
                          break;
                        }

                        *&fromRange[0].start.value = *&toRange[0].start.value;
                        fromRange[0].start.epoch = toRange[0].start.epoch;
                        v96 = v95(v94, fromRange, &v424);
                        for (k = -12521; v96 != k; k = -12520)
                        {
                          if (v96)
                          {
                            goto LABEL_122;
                          }

                          v98 = v424;
                          v99 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                          if (!v99 || v99(v98, source))
                          {
                            goto LABEL_122;
                          }

                          toRange[0] = source[1];
                          dur[0] = v420;
                          CMTimeRangeGetIntersection(fromRange, toRange, dur);
                          lhs = fromRange[0];
                          if ((fromRange[0].start.flags & 1) == 0 || (lhs.duration.flags & 1) == 0 || lhs.duration.epoch || lhs.duration.value < 0 || (OUTLINED_FUNCTION_52_14(), *&toRange[0].start.value = *MEMORY[0x1E6960CC0], toRange[0].start.epoch = *(MEMORY[0x1E6960CC0] + 16), v100 = OUTLINED_FUNCTION_15_35(), CMTimeCompare(v100, v101)))
                          {
                            memcpy(toRange, &v440, sizeof(toRange));
                            memcpy(dur, source, sizeof(dur));
                            memset(&v426, 0, sizeof(v426));
                            memset(&v441, 0, sizeof(v441));
                            memcpy(fromRange, source, sizeof(fromRange));
                            *&time1.start.value = *&source[1].start.value;
                            time1.start.epoch = source[1].start.epoch;
                            *&time2.start.value = *&v440.source.start.value;
                            time2.start.epoch = v440.source.start.epoch;
                            if (CMTimeCompare(&time1.start, &time2.start) < 0)
                            {
                              *&fromRange[1].start.value = *&toRange[0].start.value;
                              fromRange[1].start.epoch = toRange[0].start.epoch;
                              start = toRange[0].start;
                              *&time1.start.value = *&dur[1].start.value;
                              *&time1.start.epoch = *&dur[1].start.epoch;
                              OUTLINED_FUNCTION_45_13(*&dur[1].duration.timescale);
                              CMTimeMapTimeFromRangeToRange(&fromRange[0].start, &start, &time1, &time2);
                              *&time1.start.value = *&fromRange[1].start.value;
                              time1.start.epoch = fromRange[1].start.epoch;
                              *&start.value = *&dur[1].start.value;
                              OUTLINED_FUNCTION_94_4(dur[1].start.epoch);
                              *&start.value = *&dur[1].duration.value;
                              OUTLINED_FUNCTION_95_3(dur[1].duration.epoch);
                              OUTLINED_FUNCTION_84_3();
                              *&time1.start.value = *&fromRange[0].start.value;
                              time1.start.epoch = fromRange[0].start.epoch;
                              *&start.value = *&dur[0].start.value;
                              OUTLINED_FUNCTION_94_4(dur[0].start.epoch);
                              *&start.value = *&dur[0].duration.value;
                              OUTLINED_FUNCTION_95_3(dur[0].duration.epoch);
                              OUTLINED_FUNCTION_83_5();
                            }

                            time1 = fromRange[1];
                            CMTimeRangeGetEnd(&v426, &time1);
                            OUTLINED_FUNCTION_12_41();
                            CMTimeRangeGetEnd(&v441, &time1);
                            OUTLINED_FUNCTION_35_13();
                            if (CMTimeCompare(&time1.start, &time2.start) >= 1)
                            {
                              memset(&start, 0, sizeof(start));
                              OUTLINED_FUNCTION_35_13();
                              CMTimeSubtract(&start, &time1.start, &time2.start);
                              memset(&duration, 0, sizeof(duration));
                              OUTLINED_FUNCTION_78_5();
                              *&time1.start.value = *&dur[1].start.value;
                              *&time1.start.epoch = *&dur[1].start.epoch;
                              OUTLINED_FUNCTION_45_13(*&dur[1].duration.timescale);
                              CMTimeMapDurationFromRangeToRange(&duration, &rhs, &time1, &time2);
                              time2.start = fromRange[1].duration;
                              OUTLINED_FUNCTION_78_5();
                              CMTimeSubtract(&time1.start, &time2.start, &rhs);
                              OUTLINED_FUNCTION_84_3();
                              time2.start = fromRange[0].duration;
                              rhs = duration;
                              CMTimeSubtract(&time1.start, &time2.start, &rhs);
                              OUTLINED_FUNCTION_83_5();
                            }

                            duration = fromRange[1].start;
                            OUTLINED_FUNCTION_12_41();
                            OUTLINED_FUNCTION_29_19();
                            CMTimeMapTimeFromRangeToRange(v105, v102, v103, v104);
                            fromRange[1].start = start;
                            duration = fromRange[1].duration;
                            OUTLINED_FUNCTION_12_41();
                            OUTLINED_FUNCTION_29_19();
                            CMTimeMapDurationFromRangeToRange(v109, v106, v107, v108);
                            fromRange[1].duration = start;
                            memcpy(__src, fromRange, sizeof(__src));
                            memcpy(fromRange, __src, sizeof(fromRange));
                            v110 = OUTLINED_FUNCTION_68_9();
                            appendToTimeMappingArray(v110, v111);
                          }

                          if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                          {
                            goto LABEL_122;
                          }

                          v112 = OUTLINED_FUNCTION_409();
                          v96 = v113(v112);
                        }
                      }

LABEL_457:
                      v74 = v425;
                      if (!*(*(CMBaseObjectGetVTable() + 16) + 16))
                      {
                        break;
                      }

                      v91 = OUTLINED_FUNCTION_409();
                      if (v92(v91))
                      {
                        break;
                      }

                      if (v424)
                      {
                        CFRelease(v424);
                        v424 = 0;
                      }

                      v93.n128_f64[0] = OUTLINED_FUNCTION_8_47();
                    }
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_8_47();
                source[0] = v409;
                __src[0] = v409;
                CMTimeMappingMake(&v440, source, __src);
                memcpy(source, &v440, sizeof(source));
                appendToTimeMappingArray(v23, source);
              }
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_41();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v349, v350, v351);
              v23 = 0;
              v73 = 0;
            }

LABEL_122:
            if (v425)
            {
              CFRelease(v425);
            }

            if (v424)
            {
              CFRelease(v424);
            }

            if (v73 >= 1)
            {
              v114 = &v433;
              do
              {
                if (*v114)
                {
                  CFRelease(*v114);
                  *v114 = 0;
                }

                ++v114;
                --v73;
              }

              while (v73);
            }

            *(v57 + 64) = v23;
            if (v23)
            {
              v23 = *(v23 + 8);
              if (v23)
              {
                v115 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
                *v115 = OUTLINED_FUNCTION_63_9(v23);
                v115[2] = v23;
                v116 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
                *v116 = OUTLINED_FUNCTION_64_10(v23);
                v116[2] = v23;
                if (v23 < 1)
                {
                  *(v57 + 72) = v115;
                  *(v57 + 80) = v116;
                }

                else
                {
                  v391 = v116;
                  v396 = v115;
                  for (m = 0; m != v23; ++m)
                  {
                    duration.value = 0;
                    rhs.value = 0;
                    start.value = *MEMORY[0x1E6960C78];
                    start.timescale = *(MEMORY[0x1E6960C78] + 8);
                    *&time1.start.value = *(MEMORY[0x1E6960C78] + 24);
                    time1.start.epoch = *(MEMORY[0x1E6960C78] + 40);
                    v118 = *(MEMORY[0x1E6960C78] + 64);
                    *&source[0].start.value = *(MEMORY[0x1E6960C78] + 48);
                    *&source[0].start.epoch = v118;
                    *&source[0].duration.timescale = *(MEMORY[0x1E6960C78] + 80);
                    *&time2.start.value = *MEMORY[0x1E6960C70];
                    v119 = *(MEMORY[0x1E6960C70] + 16);
                    time2.start.epoch = v119;
                    *&lhs.start.value = *&time2.start.value;
                    lhs.start.epoch = v119;
                    *&v420.start.value = *&time2.start.value;
                    v420.start.epoch = v119;
                    *&v409.start.value = *MEMORY[0x1E6960C80];
                    v409.start.epoch = *(MEMORY[0x1E6960C80] + 16);
                    *keys = *&time2.start.value;
                    *&v426.value = *&time2.start.value;
                    v426.epoch = v119;
                    v120 = *(MEMORY[0x1E6960C98] + 16);
                    *&__src[0].start.value = *MEMORY[0x1E6960C98];
                    *&__src[0].start.epoch = v120;
                    *&__src[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
                    OUTLINED_FUNCTION_48_14();
                    v126 = *(v57 + 64);
                    if (v126)
                    {
                      v127 = *v126 + 96 * m;
                      fromRange[0].start.value = *v127;
                      fromRange[0].start.timescale = *(v127 + 8);
                      v128 = *(v127 + 12);
                      v129 = *(v127 + 16);
                      *&v440.source.start.value = *(v127 + 24);
                      v440.source.start.epoch = *(v127 + 40);
                      v130 = (v127 + 48);
                    }

                    else
                    {
                      fromRange[0].start.value = v122;
                      fromRange[0].start.timescale = v123;
                      *&v440.source.start.value = v125;
                      v130 = v124 + 1;
                      v128 = v386;
                      v129 = *v382;
                      v440.source.start.epoch = v121;
                    }

                    source[0] = *v130;
                    start.value = fromRange[0].start.value;
                    start.timescale = fromRange[0].start.timescale;
                    *&time1.start.value = *&v440.source.start.value;
                    time1.start.epoch = v440.source.start.epoch;
                    epoch = v440.source.start.epoch;
                    v440.source.start.value = fromRange[0].start.value;
                    v440.source.start.timescale = fromRange[0].start.timescale;
                    v440.source.start.flags = v128;
                    v440.source.start.epoch = v129;
                    *&v440.source.duration.value = *&time1.start.value;
                    v440.source.duration.epoch = epoch;
                    CMTimeRangeGetEnd(&time2.start, &v440.source);
                    if (v128)
                    {
                      v135 = *(v57 + 32);
                      v136 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                      if (v136)
                      {
                        if (!v136(v135, &duration))
                        {
                          v137 = duration.value;
                          if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                          {
                            v440.source.start.value = start.value;
                            v440.source.start.timescale = start.timescale;
                            v440.source.start.flags = v128;
                            v440.source.start.epoch = v129;
                            v138 = OUTLINED_FUNCTION_25_22();
                            if (!v139(v138))
                            {
                              while (1)
                              {
                                OUTLINED_FUNCTION_48_14();
                                *&v440.source.start.value = *keys;
                                v440.source.start.epoch = v119;
                                v140 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 40);
                                if (!v140 || v140(v137, &v440))
                                {
                                  break;
                                }

                                OUTLINED_FUNCTION_70_7();
                                OUTLINED_FUNCTION_30_17();
                                v141 = OUTLINED_FUNCTION_15_35();
                                CMTimeMinimum(v143, v141, v142);
                                if (*(*(OUTLINED_FUNCTION_51_14() + 16) + 64))
                                {
                                  v144 = OUTLINED_FUNCTION_25_22();
                                  if (!v145(v144) && !LOBYTE(v421.value))
                                  {
                                    v146 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 168);
                                    if (v146)
                                    {
                                      if (!v146(v137, -1, &v422) && v422.value == -1)
                                      {
                                        continue;
                                      }
                                    }
                                  }
                                }

                                v148 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 48);
                                if (v148 && !v148(v137, &v420))
                                {
                                  if (rhs.value)
                                  {
                                    CFRelease(rhs.value);
                                    rhs.value = 0;
                                  }

                                  v149 = duration.value;
                                  OUTLINED_FUNCTION_67_10();
                                  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                                  {
                                    *&v440.source.start.value = *&fromRange[0].start.value;
                                    v440.source.start.epoch = fromRange[0].start.epoch;
                                    v150 = OUTLINED_FUNCTION_25_22();
                                    if (!v151(v150))
                                    {
                                      v152 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 40);
                                      if (v152)
                                      {
                                        if (!v152(v149, &v426))
                                        {
                                          v440.source.start = v426;
                                          OUTLINED_FUNCTION_67_10();
                                          if (CMTimeCompare(&v440.source.start, &fromRange[0].start) || (v160 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 176)) != 0 && !v160(v149, -1, 0))
                                          {
                                            while (1)
                                            {
                                              *&v441.value = *keys;
                                              v441.epoch = v119;
                                              OUTLINED_FUNCTION_48_14();
                                              v153 = rhs.value;
                                              *&v440.source.start.value = v154;
                                              v440.source.start.epoch = v119;
                                              *&fromRange[0].start.value = v154;
                                              fromRange[0].start.epoch = v119;
                                              v155 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                                              if (!v155)
                                              {
                                                break;
                                              }

                                              if (v155(v153, &v440))
                                              {
                                                break;
                                              }

                                              v156 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                                              if (!v156 || v156(v153, fromRange))
                                              {
                                                break;
                                              }

                                              OUTLINED_FUNCTION_30_17();
                                              *&dur[0].start.value = *&fromRange[0].start.value;
                                              dur[0].start.epoch = fromRange[0].start.epoch;
                                              CMTimeAdd(&v441, &toRange[0].start, &dur[0].start);
                                              *&v440.source.start.value = *&v409.start.value;
                                              v440.source.start.epoch = v409.start.epoch;
                                              fromRange[0].start = v441;
                                              CMTimeMaximum(&v409.start, &v440.source.start, &fromRange[0].start);
                                              if (*(*(OUTLINED_FUNCTION_51_14() + 16) + 64))
                                              {
                                                v157 = OUTLINED_FUNCTION_25_22();
                                                if (!v158(v157) && !LOBYTE(v421.value))
                                                {
                                                  v159 = *(*(OUTLINED_FUNCTION_51_14() + 16) + 176);
                                                  if (v159)
                                                  {
                                                    if (!v159(v153, -1, &v422) && v422.value == -1)
                                                    {
                                                      continue;
                                                    }
                                                  }
                                                }
                                              }

                                              goto LABEL_139;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                break;
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
LABEL_139:
                      OUTLINED_FUNCTION_70_7();
                      *&toRange[0].start.value = *&time2.start.value;
                      toRange[0].start.epoch = time2.start.epoch;
                      v132 = OUTLINED_FUNCTION_15_35();
                      CMTimeRangeFromTimeToTime(v134, v132, v133);
                      start.timescale = v440.source.start.timescale;
                      start.value = v440.source.start.value;
                      time1.start = v440.source.duration;
                      v440.target = source[0];
                      appendToTimeMappingArray(v396, &v440);
                      *&v440.source.start.value = *&v420.start.value;
                      v440.source.start.epoch = v420.start.epoch;
                      *&fromRange[0].start.value = *&v409.start.value;
                      fromRange[0].start.epoch = v409.start.epoch;
                      CMTimeRangeFromTimeToTime(__src, &v440.source.start, &fromRange[0].start);
                      v440.source = __src[0];
                      appendToTimeRangeArray(v391, &v440);
                    }

                    if (duration.value)
                    {
                      CFRelease(duration.value);
                    }

                    if (rhs.value)
                    {
                      CFRelease(rhs.value);
                    }
                  }

                  v116 = v391;
                  v115 = v396;
                  *(v57 + 72) = v396;
                  *(v57 + 80) = v391;
                  v54 = v372;
                }

                if (v115[1] && v116[1])
                {
                  v161 = *(v57 + 64);
                  if (v161)
                  {
                    v162 = *(v161 + 8);
                  }

                  else
                  {
                    v162 = 0;
                  }

                  if (v162 <= 1)
                  {
                    v163 = 1;
                  }

                  else
                  {
                    v163 = v162;
                  }

                  OUTLINED_FUNCTION_50_9();
                  v164 = OUTLINED_FUNCTION_200_1();
                  *v23 = OUTLINED_FUNCTION_64_10(v164);
                  *(v23 + 16) = v163;
                  *(v57 + 88) = v23;
                  v165 = 0uLL;
                  v166 = MEMORY[0x1E6960C88];
                  if (v162 >= 1)
                  {
                    do
                    {
                      *&v440.source.start.epoch = v165;
                      *&v440.source.duration.timescale = v165;
                      *&v440.source.start.value = v165;
                      *&source[0].start.value = *v166;
                      source[0].start.epoch = *(v166 + 16);
                      *&__src[0].start.value = *&source[0].start.value;
                      __src[0].start.epoch = source[0].start.epoch;
                      CMTimeRangeMake(&v440.source, &source[0].start, &__src[0].start);
                      v167 = *(v57 + 88);
                      source[0] = v440.source;
                      appendToTimeRangeArray(v167, source);
                      v165 = 0uLL;
                      --v162;
                    }

                    while (v162);
                  }

                  v168 = *(v57 + 32);
                  v169 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                  if (v169 && !v169(v168, &v411))
                  {
                    v170 = v411;
                    v171 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                    if (!v171 || v171(v170, &v410))
                    {
                      v172 = *(v57 + 72);
                      v406 = *MEMORY[0x1E6960C70];
                      v407 = *(MEMORY[0x1E6960C70] + 16);
                      if (v172 && v172[1] > 0)
                      {
                        v173 = *v172;
                        v406 = *v173;
                        v407 = *(v173 + 2);
                      }

                      else
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_0_41();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                      }

                      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                      {
                        *&v440.source.start.value = v406;
                        v440.source.start.epoch = v407;
                        OUTLINED_FUNCTION_197();
                        if (!v174())
                        {
                          do
                          {
                            v440.source.start.value = 0;
                            v177 = v410;
                            v178 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                          }

                          while (v178 && !v178(v177, -1, &v440) && v440.source.start.value == -1);
                        }
                      }
                    }

                    if (v411)
                    {
                      CFRelease(v411);
                    }

                    *(v57 + 48) = v410;
                    MovieTrackGetMediaDuration(*(value + 2), &v440);
                    OUTLINED_FUNCTION_75_7();
                    if (v175)
                    {
                      v179 = v440.source.start.epoch;
                      *(v57 + 112) = v427;
                      *(v57 + 120) = v428;
                      *(v57 + 124) = v175;
                      *(v57 + 128) = v179;
                    }

                    else
                    {
                      v176 = MEMORY[0x1E6960CC0];
                      *(v57 + 112) = *MEMORY[0x1E6960CC0];
                      *(v57 + 128) = *(v176 + 16);
                    }
                  }
                }
              }
            }
          }
        }

        ++v55;
      }

      while (v55 != v54);
      v180 = 1;
      v181 = 0;
      v367 = *MEMORY[0x1E695FFA0];
      *keysa = *MEMORY[0x1E6960C70];
      v182 = *(MEMORY[0x1E6960C70] + 16);
      v397 = *MEMORY[0x1E6960CC0];
      v183 = *(MEMORY[0x1E6960CC0] + 16);
      LODWORD(v9) = 1;
      v373 = v54;
      LODWORD(v391) = 1;
      v387 = v182;
      while (1)
      {
        *&__src[0].start.value = *keysa;
        __src[0].start.epoch = v182;
        *&fromRange[0].start.value = v397;
        fromRange[0].start.epoch = v183;
        value = CFArrayGetValueAtIndex(*(v15 + 56), v181);
        v11 = *(value + 16);
        if (v11)
        {
          CMBaseObject = *(v11 + 48);
          if (CMBaseObject)
          {
            break;
          }
        }

LABEL_295:
        if (++v181 == v54)
        {
          v181 = 0;
          v43 = v9 == 0;
          v239 = v180 ^ 1;
          v9 = 1;
          if (!v43)
          {
            v239 = 1;
          }

          if (v239)
          {
            goto LABEL_299;
          }
        }
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 48))
      {
        v185 = OUTLINED_FUNCTION_68_9();
        v186(v185);
      }

      *&source[0].start.value = *(v11 + 112);
      source[0].start.epoch = *(v11 + 128);
      *&toRange[0].start.value = v414;
      toRange[0].start.epoch = v415;
      CMTimeAdd(&v440.source.start, &source[0].start, &toRange[0].start);
      *(v11 + 112) = *&v440.source.start.value;
      *(v11 + 128) = v440.source.start.epoch;
      v187 = value;
      v188 = v368;
      if (*(value + 5))
      {
        v188 = *(value + 5);
      }

      if (v380 || v188)
      {
        v383 = v188;
        if (v380 && !*(v11 + 16))
        {
          v440.source.start.value = 0;
          source[0].start.value = 0;
          if (*(*(OUTLINED_FUNCTION_96_3() + 16) + 144))
          {
            OUTLINED_FUNCTION_613();
            v189();
          }

          v190 = source[0].start.value;
          v191 = v440.source.start.value;
          if (!source[0].start.value && v440.source.start.value)
          {
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v192 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v192)
            {
              v192(CMBaseObject, v367, v376, source);
            }

            v191 = v440.source.start.value;
            v190 = source[0].start.value;
          }

          *(v11 + 16) = v190;
          if (v191)
          {
            CFRelease(v191);
          }

          v187 = value;
        }

        v193 = v187[8];
        if (v193 == -1 || (v194 = CFArrayGetValueAtIndex(*(v15 + 64), v193)) == 0)
        {
          v378 = 0;
        }

        else
        {
          v378 = *v194;
        }

        while (1)
        {
          if (*(v11 + 145))
          {
            goto LABEL_295;
          }

          time1.start.value = 0;
          MovieTrackGetMediaDuration(*(value + 2), &v440);
          OUTLINED_FUNCTION_75_7();
          if (v195)
          {
            v196 = v440.source.start.epoch;
            *&v440.source.start.value = *(v11 + 112);
            v440.source.start.epoch = *(v11 + 128);
            source[0].start.value = v427;
            source[0].start.timescale = v428;
            source[0].start.flags = v195;
            source[0].start.epoch = v196;
            if (CMTimeCompare(&v440.source.start, &source[0].start) < 1)
            {
              goto LABEL_294;
            }
          }

          v197 = *(*(OUTLINED_FUNCTION_96_3() + 16) + 56);
          if (!v197 || v197(CMBaseObject, __src))
          {
            goto LABEL_429;
          }

          CMBaseObject = *(v11 + 80);
          dur[0].start.value = fromRange[0].start.value;
          dur[0].start.timescale = fromRange[0].start.timescale;
          if (!CMBaseObject)
          {
            break;
          }

          flags = fromRange[0].start.flags;
          if ((fromRange[0].start.flags & 1) == 0)
          {
            CMBaseObject = 5358;
            goto LABEL_290;
          }

          v199 = *(CMBaseObject + 8);
          if (!v199)
          {
            CMBaseObject = 5361;
            goto LABEL_290;
          }

          if (v199 < 1)
          {
            goto LABEL_257;
          }

          v200 = 0;
          v201 = 0;
          v202 = fromRange[0].start.epoch;
          while (1)
          {
            v203 = *CMBaseObject + v200;
            toRange[0].start.value = *v203;
            toRange[0].start.timescale = *(v203 + 8);
            v204 = *(v203 + 12);
            if (v204)
            {
              v205 = *(v203 + 36);
              if ((v205 & 1) != 0 && !*(v203 + 40))
              {
                v206 = *(v203 + 24);
                if ((v206 & 0x8000000000000000) == 0)
                {
                  v207 = *(v203 + 16);
                  v208 = *(v203 + 32);
                  v440.source.start.value = toRange[0].start.value;
                  v440.source.start.timescale = toRange[0].start.timescale;
                  v440.source.start.flags = v204;
                  v440.source.start.epoch = v207;
                  v440.source.duration.value = v206;
                  v440.source.duration.timescale = v208;
                  v440.source.duration.flags = v205;
                  v440.source.duration.epoch = 0;
                  source[0].start.value = dur[0].start.value;
                  source[0].start.timescale = dur[0].start.timescale;
                  source[0].start.flags = flags;
                  source[0].start.epoch = v202;
                  if (CMTimeRangeContainsTime(&v440.source, &source[0].start))
                  {
                    break;
                  }
                }
              }
            }

            ++v201;
            v200 += 48;
            if (v199 == v201)
            {
              goto LABEL_257;
            }
          }

          OUTLINED_FUNCTION_63();
          if (v43)
          {
            if (__src[0].start.timescale / __src[0].start.value / 4 <= 1)
            {
              CMBaseObject = 1;
            }

            else
            {
              CMBaseObject = __src[0].start.timescale / __src[0].start.value / 4;
            }
          }

          else
          {
            CMBaseObject = 1;
          }

          v54 = v373;
          v214 = *(v11 + 40);
          v215 = *(v11 + 48);
          v216 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v216)
          {
            goto LABEL_429;
          }

          v349 = 0;
          v350 = 0;
          v351 = 0;
          p_sbuf = &sbuf;
          v217 = v216(v214, v215, CMBaseObject, CMBaseObject, 1, 0, 2, 0);
          if (v217 == -12840)
          {
            v180 = v391;
            v182 = v387;
            if (sbuf)
            {
              CFRelease(sbuf);
              sbuf = 0;
            }

LABEL_293:
            *(v11 + 145) = 1;
LABEL_294:
            LODWORD(v9) = 0;
            goto LABEL_295;
          }

          v180 = v391;
          v182 = v387;
          if (v217)
          {
            goto LABEL_429;
          }

          v218 = value;
          v219 = v383;
          if (!*(*(value + 16) + 146) || !*(value + 126))
          {
            MovieInformationLockForWrite(*(v15 + 24));
            v220 = value;
            if (*(*(value + 16) + 146))
            {
              CMBaseObject = 0;
            }

            else
            {
              CMBaseObject = setMediaTimeScaleIfNeeded(value, sbuf);
              v220 = value;
              *(*(value + 16) + 146) = 1;
            }

            if (!*(v220 + 126))
            {
              v221 = *v220;
              if (*v220 == 1986618469)
              {
                v230 = setVideoTrackDimensionsIfNeeded(v220[2], v358, sbuf);
                OUTLINED_FUNCTION_69_5(v230, v231, v232, v233, v234, v235, v236, v237, 0, 0, 0, &sbuf, v354, v355, v356, v358, v361, v364, v367, v368, v370, v373, v376, v378, v380, v383, v387, v391, v397, *(&v397 + 1), keysa[0], keysa[1], v406, *(&v406 + 1), v407, v408, v409.start.value, *&v409.start.timescale, v409.start.epoch, v409.duration.value, *&v409.duration.timescale, v409.duration.epoch, v410, v411, v412, sbuf, v414, *(&v414 + 1), v415, v416, value);
                v221 = *v238;
              }

              if (v221 == 1668047728)
              {
                v222 = setClosedCaptionTrackDimensionsIfNeeded(*(v15 + 24));
                OUTLINED_FUNCTION_69_5(v222, v223, v224, v225, v226, v227, v228, v229, v349, v350, v351, p_sbuf, v354, v355, v356, v358, v361, v364, v367, v368, v370, v373, v376, v378, v380, v383, v387, v391, v397, *(&v397 + 1), keysa[0], keysa[1], v406, *(&v406 + 1), v407, v408, v409.start.value, *&v409.start.timescale, v409.start.epoch, v409.duration.value, *&v409.duration.timescale, v409.duration.epoch, v410, v411, v412, sbuf, v414, *(&v414 + 1), v415, v416, value);
              }
            }

            MovieInformationUnlockForWrite(*(v15 + 24));
            if (CMBaseObject)
            {
              goto LABEL_429;
            }

            v218 = value;
            v219 = v383;
          }

          if (addSampleBufferToTrack(v218, v219, v378, v201, sbuf))
          {
            goto LABEL_429;
          }

          NumSamples = CMSampleBufferGetNumSamples(sbuf);
          if (sbuf)
          {
            CFRelease(sbuf);
            sbuf = 0;
          }

LABEL_258:
          if (!*(*(OUTLINED_FUNCTION_96_3() + 16) + 168))
          {
            goto LABEL_429;
          }

          v210 = OUTLINED_FUNCTION_797();
          if (v211(v210))
          {
            goto LABEL_429;
          }

          if (!*(*(OUTLINED_FUNCTION_96_3() + 16) + 48))
          {
            goto LABEL_429;
          }

          v212 = OUTLINED_FUNCTION_68_9();
          if (v213(v212))
          {
            goto LABEL_429;
          }

          if (time1.start.value != NumSamples)
          {
            goto LABEL_293;
          }

          LODWORD(v9) = 0;
        }

        CMBaseObject = 5357;
LABEL_290:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_41();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v349, v350, v351);
LABEL_257:
        NumSamples = 1;
        v54 = v373;
        v180 = v391;
        v182 = v387;
        goto LABEL_258;
      }

      goto LABEL_429;
    }
  }

  else
  {
    v376 = *v23;
  }

LABEL_299:
  v240 = *(v15 + 56);
  *&v409.start.value = *a9;
  v409.start.epoch = *(a9 + 16);
  if (v240 && CFArrayGetCount(v240) >= 1)
  {
    OUTLINED_FUNCTION_417_0();
    keysb = 0;
    v374 = *(MEMORY[0x1E6960CC0] + 16);
    v388 = *(MEMORY[0x1E6960C78] + 16);
    v241 = *MEMORY[0x1E6960CC0];
    v242 = *(MEMORY[0x1E6960CC0] + 8);
    v357 = *(MEMORY[0x1E6960CC0] + 12);
    v359 = v242;
    v365 = v243;
    v362 = *MEMORY[0x1E6960CC0];
    while (1)
    {
      v244 = OUTLINED_FUNCTION_618();
      v246 = CFArrayGetValueAtIndex(v244, v245);
      v441.value = v241;
      v441.timescale = v242;
      if (!v246)
      {
        break;
      }

      v247 = v246[16];
      if (v247)
      {
        v248 = v247[8];
        if (v248)
        {
          v249 = v247[9];
          if (v249)
          {
            v250 = *(v248 + 8);
            if (v250)
            {
              v251 = *(v249 + 8);
              if (v251 && v250 == v251)
              {
                v254 = v246[1];
                v253 = v246[2];
                keysb = MovieInformationLockForWrite(v254);
                if (!keysb)
                {
                  v369 = v253;
                  v398 = v254;
                  if (v250 >= 1)
                  {
                    v255 = 0;
                    keysb = 0;
                    v256 = 88;
                    v379 = v374;
                    v381 = v357;
                    v257 = MEMORY[0x1E6960C78];
                    v258 = v388;
                    v259 = v254;
                    while (1)
                    {
                      v260 = v247[8];
                      if (v260)
                      {
                        v261 = (*v260 + v256);
                        *&v426.value = *(v261 - 11);
                        v262 = *(v261 - 9);
                        *&dur[0].start.value = *(v261 - 4);
                        dur[0].start.epoch = *(v261 - 6);
                        duration.value = *(v261 - 5);
                        v263 = v261 - 7;
                        duration.timescale = *(v261 - 8);
                        v264 = v261 - 3;
                        v265 = v261 - 2;
                        v266 = (v261 - 1);
                        v267 = v261 - 1;
                      }

                      else
                      {
                        *&v426.value = *v257;
                        *&dur[0].start.value = *(v257 + 24);
                        v268 = *(v257 + 48);
                        dur[0].start.epoch = *(v257 + 40);
                        duration.value = v268;
                        v261 = (v257 + 88);
                        v267 = (v257 + 84);
                        v266 = (v257 + 80);
                        duration.timescale = *(v257 + 56);
                        v265 = (v257 + 72);
                        v264 = (v257 + 64);
                        v263 = (v257 + 60);
                        v262 = v258;
                      }

                      v269 = *v261;
                      v270 = *v267;
                      v271 = *v266;
                      v272 = *v265;
                      v273 = *v264;
                      v274 = *v263;
                      v275 = v247[9];
                      if (v275)
                      {
                        v276 = (*v275 + v256);
                        *&v440.source.start.value = *(v276 - 11);
                        *&v440.source.start.epoch = *(v276 - 9);
                        *&v440.source.duration.timescale = *(v276 - 7);
                        *(&v440.source.duration.epoch + 4) = *(v276 - 44);
                        v277 = v276 - 7;
                        v278 = v276 - 2;
                        v279 = v276 - 1;
                        if (v274)
                        {
                          goto LABEL_322;
                        }
                      }

                      else
                      {
                        v280 = *(v257 + 16);
                        *&v440.source.start.value = *v257;
                        *&v440.source.start.epoch = v280;
                        *&v440.source.duration.timescale = *(v257 + 32);
                        *(&v440.source.duration.epoch + 4) = *(v257 + 44);
                        v276 = (v257 + 88);
                        v279 = (v257 + 84);
                        v278 = (v257 + 72);
                        v277 = (v257 + 60);
                        if (v274)
                        {
LABEL_322:
                          if ((v270 & 1) != 0 && !v269 && (v272 & 0x8000000000000000) == 0 && (*v277 & 1) != 0 && (*v279 & 1) != 0 && !*v276 && (*v278 & 0x8000000000000000) == 0)
                          {
                            *&time1.start.value = *MEMORY[0x1E6960C70];
                            time1.start.epoch = *(MEMORY[0x1E6960C70] + 16);
                            v281 = *(MEMORY[0x1E6960C98] + 16);
                            *&source[0].start.value = *MEMORY[0x1E6960C98];
                            *&source[0].start.epoch = v281;
                            *&source[0].duration.timescale = *(MEMORY[0x1E6960C98] + 32);
                            rhs.value = *MEMORY[0x1E6960C98];
                            rhs.timescale = *(MEMORY[0x1E6960C98] + 8);
                            *&time2.start.value = *(MEMORY[0x1E6960C98] + 24);
                            time2.start.epoch = *(MEMORY[0x1E6960C98] + 40);
                            *&__src[0].start.value = *&source[0].start.value;
                            *&__src[0].start.epoch = v281;
                            *&__src[0].duration.timescale = *&source[0].duration.timescale;
                            if (v256 == 88)
                            {
                              v441.value = duration.value;
                              v441.timescale = duration.timescale;
                              v381 = v274;
                              v379 = v273;
                            }

                            v392 = v271;
                            if (v262)
                            {
                              start.value = duration.value;
                              start.timescale = duration.timescale;
                            }

                            else
                            {
                              toRange[0].start.value = duration.value;
                              toRange[0].start.timescale = duration.timescale;
                              toRange[0].start.flags = v274;
                              toRange[0].start.epoch = v273;
                              lhs.start.value = v441.value;
                              *&lhs.start.timescale = __PAIR64__(v381, v441.timescale);
                              lhs.start.epoch = v379;
                              CMTimeSubtract(&fromRange[0].start, &toRange[0].start, &lhs.start);
                              v262 = 0;
                              start.value = fromRange[0].start.value;
                              v274 = fromRange[0].start.flags;
                              start.timescale = fromRange[0].start.timescale;
                              v273 = fromRange[0].start.epoch;
                            }

                            *&fromRange[0].start.value = *&v426.value;
                            fromRange[0].start.epoch = v262;
                            OUTLINED_FUNCTION_30_17();
                            v282 = OUTLINED_FUNCTION_15_35();
                            CMTimeSubtract(v284, v282, v283);
                            v285 = v247[11];
                            if (v285)
                            {
                              v286 = (*v285 + v255);
                            }

                            else
                            {
                              v286 = MEMORY[0x1E6960C98];
                            }

                            source[0] = *v286;
                            *&lhs.start.value = *&source[0].start.value;
                            lhs.start.epoch = source[0].start.epoch;
                            *&v420.start.value = *&time1.start.value;
                            v420.start.epoch = time1.start.epoch;
                            CMTimeAdd(&toRange[0].start, &lhs.start, &v420.start);
                            *&lhs.start.value = *&dur[0].start.value;
                            lhs.start.epoch = dur[0].start.epoch;
                            CMTimeRangeMake(fromRange, &toRange[0].start, &lhs.start);
                            rhs.value = fromRange[0].start.value;
                            rhs.timescale = fromRange[0].start.timescale;
                            v384 = fromRange[0].start.epoch;
                            time2.start = fromRange[0].duration;
                            *&toRange[0].start.value = *&v409.start.value;
                            toRange[0].start.epoch = v409.start.epoch;
                            lhs.start.value = start.value;
                            *&lhs.start.timescale = __PAIR64__(v274, start.timescale);
                            v287 = fromRange[0].start.flags;
                            lhs.start.epoch = v273;
                            CMTimeAdd(&fromRange[0].start, &toRange[0].start, &lhs.start);
                            toRange[0].start.value = v272;
                            toRange[0].start.timescale = v392;
                            toRange[0].start.flags = v270;
                            toRange[0].start.epoch = 0;
                            v288 = OUTLINED_FUNCTION_15_35();
                            CMTimeRangeMake(v290, v288, v289);
                            if ((v287 & 0x1D) == 1)
                            {
                              fromRange[0].start.value = rhs.value;
                              fromRange[0].start.timescale = rhs.timescale;
                              fromRange[0].start.flags = v287;
                              fromRange[0].start.epoch = v384;
                              *&toRange[0].start.value = *MEMORY[0x1E6960CC0];
                              toRange[0].start.epoch = v374;
                              v291 = OUTLINED_FUNCTION_15_35();
                              if ((CMTimeCompare(v291, v292) & 0x80000000) == 0)
                              {
                                fromRange[0] = __src[0];
                                toRange[0].start.value = rhs.value;
                                toRange[0].start.timescale = rhs.timescale;
                                toRange[0].start.flags = v287;
                                toRange[0].start.epoch = v384;
                                toRange[0].duration = time2.start;
                                MovieTrackInsertMediaSegment(v398, v369, fromRange, toRange);
                                keysb = v293;
                              }
                            }

                            v257 = MEMORY[0x1E6960C78];
                            v258 = v388;
                            v259 = v398;
                          }
                        }
                      }

                      v255 += 48;
                      v256 += 96;
                      if (!--v250)
                      {
                        goto LABEL_344;
                      }
                    }
                  }

                  keysb = 0;
                  v259 = v254;
LABEL_344:
                  MovieInformationUnlockForWrite(v259);
                  v11 = v365;
                  v241 = v362;
                  v242 = v359;
                }
              }
            }
          }
        }
      }

      if (++v9 == v11)
      {
        goto LABEL_346;
      }
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_41();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  keysb = v348;
LABEL_346:
  if (!keysb)
  {
    v294 = CFArrayGetCount(*(v15 + 56));
    v440.source.start.value = 0;
    if (v294 >= 1)
    {
      v295 = v294;
      v296 = 0;
      keysc = 0;
      v297 = 0;
      *v385 = v294;
      while (1)
      {
        v298 = CFArrayGetValueAtIndex(*(v15 + 56), v296);
        if (v298)
        {
          if (*(v298 + 125))
          {
            v299 = v298[16];
            if (v299)
            {
              if (*(v299 + 24))
              {
                v300 = v440.source.start.value;
                if (v440.source.start.value)
                {
                  goto LABEL_354;
                }

                FigFormatReaderGetFigBaseObject();
                v311 = v310;
                v312 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v312)
                {
                  v312(v311, @"TrackReferenceDictionary", v376, &v440);
                }

                if (v440.source.start.value)
                {
                  v313 = CFDictionaryGetCount(v440.source.start.value);
                  if (v313)
                  {
                    break;
                  }
                }
              }
            }
          }
        }

LABEL_380:
        if (++v296 == v295)
        {
          goto LABEL_384;
        }
      }

      v314 = v313;
      v315 = malloc_type_calloc(v313, 8uLL, 0x6004044C4A2DFuLL);
      v297 = malloc_type_calloc(v314, 8uLL, 0x6004044C4A2DFuLL);
      v300 = v440.source.start.value;
      keysc = v315;
      if (v315 && v297)
      {
        CFDictionaryGetKeysAndValues(v440.source.start.value, v315, v297);
        v300 = v440.source.start.value;
      }

LABEL_354:
      v399 = CFDictionaryGetCount(v300);
      if (keysc && v297 && v399 >= 1)
      {
        v389 = v296;
        v393 = v297;
        for (n = 0; n != v399; ++n)
        {
          v302 = keysc[n];
          v303 = CFArrayGetCount(v297[n]);
          if (v303 >= 1)
          {
            v304 = v303;
            for (ii = 0; ii < v304; ii += 2)
            {
              LODWORD(source[0].start.value) = 0;
              LODWORD(__src[0].start.value) = 0;
              FigCFArrayGetInt32AtIndex();
              FigCFArrayGetInt32AtIndex();
              if (*(v299 + 4) == LODWORD(__src[0].start.value))
              {
                v306 = *(v299 + 152);
                if (CFArrayGetCount(*(v15 + 72)) >= 1)
                {
                  OUTLINED_FUNCTION_89_5();
                  while (1)
                  {
                    v307 = CFArrayGetValueAtIndex(*(v15 + 72), v297);
                    if (v307[1] == LODWORD(source[0].start.value))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_71_6();
                    if (v43)
                    {
                      goto LABEL_370;
                    }
                  }

                  v308 = v307[38];
                  if (v308 && v306)
                  {
                    v297 = *(v15 + 24);
                    v309 = convertCFStringToOSType(v302);
                    MovieInformationAddOneTrackReference(v297, v309, v308, v306);
                  }
                }
              }

LABEL_370:
              ;
            }
          }

          v297 = v393;
        }

        v295 = *v385;
        v296 = v389;
      }

      goto LABEL_380;
    }

    v297 = 0;
    keysc = 0;
LABEL_384:
    free(keysc);
    free(v297);
    if (v440.source.start.value)
    {
      CFRelease(v440.source.start.value);
    }

    v316 = CFArrayGetCount(*(v15 + 56));
    v440.source.start.value = 0;
    keysd = v316;
    if (v316 >= 1)
    {
      v317 = 0;
      do
      {
        v318 = CFArrayGetValueAtIndex(*(v15 + 56), v317);
        if (v318)
        {
          v319 = v318;
          if (*(v318 + 125))
          {
            v320 = v318[16];
            if (v320)
            {
              if (*(v320 + 24))
              {
                v321 = v440.source.start.value;
                if (v440.source.start.value)
                {
                  goto LABEL_396;
                }

                FigFormatReaderGetFigBaseObject();
                v323 = v322;
                v324 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v324)
                {
                  v324(v323, @"AlternateGroupArray", v376, &v440);
                }

                v321 = v440.source.start.value;
                if (v440.source.start.value)
                {
LABEL_396:
                  v325 = CFArrayGetCount(v321);
                  if (v325 >= 1)
                  {
                    v326 = v325;
                    v327 = 0;
                    v394 = v319;
                    v400 = v317;
                    v390 = v325;
                    do
                    {
                      v328 = CFArrayGetValueAtIndex(v440.source.start.value, v327);
                      if (v328)
                      {
                        v329 = CFArrayGetCount(v328);
                        if (v329 >= 1)
                        {
                          v330 = v329;
                          v331 = 0;
                          while (1)
                          {
                            LODWORD(source[0].start.value) = 0;
                            FigCFArrayGetInt32AtIndex();
                            if (*(v320 + 4) == LODWORD(source[0].start.value))
                            {
                              break;
                            }

                            if (v330 == ++v331)
                            {
                              goto LABEL_425;
                            }
                          }

                          v332 = 0;
                          while (1)
                          {
                            v333 = CFArrayGetValueAtIndex(*(v15 + 56), v332);
                            if (v333)
                            {
                              v334 = v333[16];
                              if (v334)
                              {
                                TrackAlternateGroupID = MovieInformationGetTrackAlternateGroupID(v333[1], v333[2]);
                                if (TrackAlternateGroupID)
                                {
                                  break;
                                }
                              }
                            }

LABEL_412:
                            if (++v332 == keysd)
                            {
                              v337 = v394[1];
                              v338 = v394[2];
                              if (CFArrayGetCount(*(v15 + 56)) < 1)
                              {
                                v342 = 1;
                                v317 = v400;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_89_5();
                                v339 = 0;
                                v317 = v400;
                                do
                                {
                                  v340 = CFArrayGetValueAtIndex(*(v15 + 56), v297);
                                  if (v340)
                                  {
                                    v341 = MovieInformationGetTrackAlternateGroupID(v340[1], v340[2]);
                                    if (v341 > v339)
                                    {
                                      v339 = v341;
                                    }
                                  }

                                  OUTLINED_FUNCTION_71_6();
                                }

                                while (!v43);
                                v342 = v339 + 1;
                              }

                              MovieInformationSetTrackAlternateGroupID(v337, v338, v342);
                              goto LABEL_424;
                            }
                          }

                          v297 = TrackAlternateGroupID;
                          v336 = 0;
                          while (1)
                          {
                            LODWORD(__src[0].start.value) = 0;
                            if (v331 != v336)
                            {
                              FigCFArrayGetInt32AtIndex();
                              if (*(v334 + 4) == LODWORD(__src[0].start.value))
                              {
                                break;
                              }
                            }

                            if (v330 == ++v336)
                            {
                              goto LABEL_412;
                            }
                          }

                          MovieInformationSetTrackAlternateGroupID(v394[1], v394[2], v297);
                          v317 = v400;
LABEL_424:
                          v326 = v390;
                        }
                      }

LABEL_425:
                      ++v327;
                    }

                    while (v327 != v326);
                  }
                }
              }
            }
          }
        }

        ++v317;
      }

      while (v317 != keysd);
      if (v440.source.start.value)
      {
        CFRelease(v440.source.start.value);
      }
    }
  }

LABEL_429:
  v343 = *(v15 + 56);
  if (v343)
  {
    v344 = CFArrayGetCount(v343);
    if (v344 >= 1)
    {
      v345 = v344;
      for (jj = 0; jj != v345; ++jj)
      {
        v347 = CFArrayGetValueAtIndex(*(v15 + 56), jj);
        value = v347;
        if (v347)
        {
          if (*(v347 + 124))
          {
            *(v347 + 16) = 0;
          }

          *(v347 + 125) = 0;
        }
      }
    }
  }

  if ((v370 & 0x100000000) == 0)
  {
    FigSimpleMutexUnlock();
  }

LABEL_439:
  if (v412)
  {
    CFRelease(v412);
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_651();
}

void FigMutableMovieCreateEmpty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMutableMovieCreateEmpty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMutableMovieCreateWithByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMutableMovieCreateWithByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMutableMovieCreateFromData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMutableMovieCreateFromData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigMutableMovieCreateFromData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeader_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeader_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeader_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeader_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeaderToByteStream_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeaderToByteStream_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeaderToByteStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeaderToByteStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void MutableMovie_WriteHeaderToByteStream_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void createMovieHeaderMakerFromMiP_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void addSampleBufferToTrack_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void writeMdatHeader_cold_1(CMBlockBufferRef *a1, uint64_t a2, _DWORD *a3)
{
  appended = MovieHeaderMakerCopyMediaDataAtomHeaderAsBlockBuffer(*MEMORY[0x1E695E480], 1, 0, a1);
  v6 = *a1;
  if (!appended)
  {
    CMBlockBufferGetDataLength(v6);
    appended = CMByteStreamAppendBlockBuffer();
    v6 = *a1;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *a3 = appended;
}

void writeMdatHeader_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigNWPathEvaluatorCreate(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3, NSObject *a4, uint64_t a5, uint64_t a6, void *a7)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_100();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_100();
  fig_note_initialize_category_with_default_work_cf();
  if (a7 && a4 && a6 && a5)
  {
    if (a2 && !FigCFHTTPIsHTTPBasedURL(a2))
    {
      return 4294954516;
    }

    if (_MergedGlobals_93 != -1)
    {
      dispatch_once(&_MergedGlobals_93, &__block_literal_global_69);
    }

    CMDerivedObjectCreate();
    OUTLINED_FUNCTION_0_142();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    OUTLINED_FUNCTION_0_142();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v12 = v11;
  if (!v11)
  {
    *a7 = 0;
  }

  return v12;
}

void __FigNWPathEvaluatorCreate_block_invoke(uint64_t a1, NSObject *a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fnpe_EvaluatorHandleNetworkChange_block_invoke;
    block[3] = &unk_1E74901A0;
    block[5] = &v9;
    block[6] = DerivedStorage;
    block[4] = &v13;
    dispatch_sync(v5, block);
    v6 = fnpe_CopyCurrentPathInformationFromNWPath(a2);
    if (v6)
    {
      (v10[3])(v14[3], v6);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v14[3];
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __figNwPathEvaluatorCopyCurrentPathInformation_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 8);
  if (result)
  {
    result = nw_path_evaluator_copy_path();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void playbackCoordinator_setRateAndAnchorTime(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, const void *a7, int a8, float a9, uint64_t a10, void (*a11)(uint64_t, void, double))
{
  HIDWORD(v172) = a8;
  v210 = *MEMORY[0x1E69E9840];
  v201 = 0;
  v202 = 0;
  v200 = 0;
  HIDWORD(v199) = 0;
  BYTE3(v199) = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v197 = **&MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C98] + 16);
  v194 = *MEMORY[0x1E6960C98];
  v195 = v18;
  v196 = *(MEMORY[0x1E6960C98] + 32);
  v191 = v194;
  v192 = v18;
  v193 = v196;
  if (!a1)
  {
    v28 = 0;
    goto LABEL_122;
  }

  cf = OUTLINED_FUNCTION_28_20(DerivedStorage);
  if (!cf)
  {
    v28 = 0;
    goto LABEL_122;
  }

  if (!*(v11 + 48) || !FigCFEqual() || *(v11 + 496) && !*(v11 + 456))
  {
    v28 = cf;
LABEL_122:
    v154 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, v160, v164);
    if (v155)
    {
      a11(a10, 0, v154);
    }

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_36_18();
  OUTLINED_FUNCTION_14_39(v19, v20, v21, v22, v23, v24, v25, v26, v156, v160, v164, a6, v172, a5, cf, v184, *&lhs.value, lhs.epoch, v190, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199, SBYTE2(v199), SBYTE3(v199), v200, v201, v202, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v204, *(&v204 + 1), v205, v206[0], v206[1], v206[2], v206[3], v207, v208, rhs.value);
  OUTLINED_FUNCTION_32_18();
  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a11, a10, 0);
  if ((*(a4 + 12) & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_3_101();
    Mutable = 0;
    v28 = cfa;
    goto LABEL_76;
  }

  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v29)
  {
    v29(cfa, &v199 + 4);
  }

  v30 = *(v11 + 48);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v31)
  {
    v31(v30, &v197);
  }

  v32 = MEMORY[0x1E695E480];
  if (*(&v199 + 1) != 0.0)
  {
    rhs = v197;
    if (figPlaybackCoordinator_isTimeInInterstitialRange(a1, &rhs, &v191))
    {
      OUTLINED_FUNCTION_1_128();
      if (figPlaybackCoordinator_isTimeInInterstitialRange(a1, &rhs, &v194))
      {
        rhs.value = 0;
        LODWORD(valuePtr.value) = 0;
        v28 = cfa;
        FigPlayerGetFigBaseObject();
        v34 = v33;
        v35 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v35)
        {
          v35(v34, @"PlaybackState", *v32, &rhs);
          if (rhs.value)
          {
            CFNumberGetValue(rhs.value, kCFNumberSInt32Type, &valuePtr);
            if (rhs.value)
            {
              CFRelease(rhs.value);
            }
          }
        }

LABEL_74:
        OUTLINED_FUNCTION_3_101();
LABEL_75:
        Mutable = 0;
        goto LABEL_76;
      }
    }
  }

  if (*(v177 + 12))
  {
    OUTLINED_FUNCTION_1_128();
    if (figPlaybackCoordinator_isTimeInInterstitialRange(a1, &rhs, &v194))
    {
      OUTLINED_FUNCTION_27_20(&rhs);
      OUTLINED_FUNCTION_40_14();
      v36 = CMTimeAdd(&valuePtr, &lhs, &rhs);
      OUTLINED_FUNCTION_14_39(v36, v37, v38, *(v11 + 368), v39, v40, v41, v42, v157, v161, v165, v169, v173, v177, cfa, v185, *&lhs.value, lhs.epoch, v190, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199, SBYTE2(v199), SBYTE3(v199), v200, v201, v202, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v204, *(&v204 + 1), v205, v206[0], v206[1], v206[2], v206[3], v207, v208, rhs.value);
      OUTLINED_FUNCTION_32_18();
      if ((*(a4 + 12) & 1) == 0)
      {
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_27_20(&valuePtr);
      lhs = *v177;
      CMTimeAdd(&rhs, &lhs, &valuePtr);
      *v177 = rhs;
    }
  }

  *(v11 + 248) = a9;
  *(v11 + 252) = 0;
  v43 = *v32;
  Current = CFAbsoluteTimeGetCurrent();
  v45 = CFDateCreate(v43, Current);
  v53 = *(v11 + 256);
  *(v11 + 256) = a7;
  *(v11 + 264) = v45;
  if (a7)
  {
    CFRetain(a7);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  *(v11 + 176) = a9;
  *(v11 + 164) = a9;
  v54 = *a4;
  *(v11 + 132) = *(a4 + 2);
  *(v11 + 116) = v54;
  v28 = cfa;
  v55 = *v177;
  *(v11 + 156) = *(v177 + 16);
  *(v11 + 140) = v55;
  *(v11 + 112) = 1;
  v56 = *(v11 + 96);
  if (v56 > a3)
  {
    if (dword_1ED4CBE70)
    {
      v57 = OUTLINED_FUNCTION_637(qword_1ED4CBE68, v46, v47, v48, v49, v50, v51, v52, v157, v161, v165, v169, v173, v177, cfa, v185, SWORD2(v185), SBYTE6(v185), 0, 0);
      v58 = os_log_type_enabled(v57, type);
      if (OUTLINED_FUNCTION_109_0(v58))
      {
        v59 = *(v11 + 496);
        LODWORD(valuePtr.value) = 136315650;
        *(&valuePtr.value + 4) = "playbackCoordinator_setRateAndAnchorTime";
        LOWORD(valuePtr.flags) = 2048;
        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 1024;
        LODWORD(v204) = v59;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v60, v61, v62, v63, v64, v57, type, v65);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_74;
  }

  if (HIDWORD(v173) == 5)
  {
    FigSimpleMutexLock();
    *(v11 + 328) = 0;
    FigSimpleMutexUnlock();
    v56 = *(v11 + 96);
  }

  if (v56 < a3)
  {
    *(v11 + 96) = a3;
    if (*(v11 + 192))
    {
      v66 = OUTLINED_FUNCTION_234();
      playbackCoordinator_completePendingStartupTask(v66, v67);
    }
  }

  if (*(a4 + 12) & 1) != 0 && a9 != 0.0 && (*(v177 + 12))
  {
    lhs.value = 0;
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseCreateWithSourceClock(v43, HostTimeClock, &lhs);
    OUTLINED_FUNCTION_1_128();
    valuePtr = *v177;
    CMTimebaseSetRateAndAnchorTime(v69, a9, &rhs, &valuePtr);
    CMTimebaseCreateReadOnlyTimebase();
    if (lhs.value)
    {
      CFRelease(lhs.value);
    }
  }

  v70 = *(v11 + 168);
  v71 = v201;
  *(v11 + 168) = v201;
  if (v71)
  {
    CFRetain(v71);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v79 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v79)
  {
    v79(cfa, &v199 + 4);
  }

  v80 = (*(a4 + 3) & 0x1D) == 1 || (*(a4 + 3) & 5) == 5;
  v81 = HIDWORD(v173);
  if (v80)
  {
    if (a9 == 0.0 || (CMTimebaseGetTime(&rhs, *(v11 + 56)), v84 = 1, CMTimeMake(&valuePtr, 1, 1), OUTLINED_FUNCTION_40_14(), !faqrp_timeDifferenceIsWithinTolerance(&lhs, &rhs, &valuePtr)))
    {
      v82 = *(v11 + 88);
      *(v11 + 88) = FPSupport_IncrementSeekID(*(v11 + 88));
      FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
      v166 = v82;
      if (dword_1ED4CBE70 >= 2)
      {
        asprintf(&v200, " (id=%d)", v82);
      }

      v84 = 0;
      v83 = 1;
    }

    else
    {
      v83 = 0;
      v166 = 0;
    }
  }

  else
  {
    v83 = 0;
    v166 = 0;
    v84 = 1;
  }

  if (!*(v11 + 192))
  {
    goto LABEL_61;
  }

  if (*(&v199 + 1) != a9)
  {
    v83 = 1;
  }

  if ((v83 & 1) == 0)
  {
    if (dword_1ED4CBE70)
    {
      v128 = OUTLINED_FUNCTION_637(qword_1ED4CBE68, v72, v73, v74, v75, v76, v77, v78, v157, v161, v166, v169, v173, v177, cfa, v185, SWORD2(v185), SBYTE6(v185), 0, 0);
      value = lhs.value;
      if (os_log_type_enabled(v128, HIBYTE(v187)))
      {
        v130 = value;
      }

      else
      {
        v130 = value & 0xFFFFFFFE;
      }

      if (v130)
      {
        v131 = *(v11 + 496);
        v132 = a9;
        OUTLINED_FUNCTION_1_128();
        Seconds = CMTimeGetSeconds(&rhs);
        v142 = OUTLINED_FUNCTION_23_31(v134, v135, v136, v137, v138, v139, v140, v141, v159, v163, v167, v171, v175, v179, cfc, v187, lhs.value, *&lhs.timescale, lhs.epoch, v190, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199, v200, v201, v202, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v204, *(&v204 + 1), v205, v206[0], v206[1], v206[2], v206[3], v207, v208, rhs.value);
        LODWORD(valuePtr.value) = 136316418;
        *(&valuePtr.value + 4) = "playbackCoordinator_setRateAndAnchorTime";
        LOWORD(valuePtr.flags) = 2048;
        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 1024;
        LODWORD(v204) = v131;
        WORD2(v204) = 2048;
        *(&v204 + 6) = v132;
        HIWORD(v204) = 2048;
        v205 = *&Seconds;
        LOWORD(v206[0]) = 2048;
        *(v206 + 2) = v142;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5(v143, v144, v145, v146, v147, v148, v149, v150);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v151 = *(v11 + 48);
    if (v151)
    {
      v152 = *(v11 + 168);
      if (v152)
      {
        FigPlaybackItemSetProperty(v151, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v152);
        rhs.value = 0;
        FigPlayerGetFigBaseObject();
        CMBaseObjectCopyProperty_0(v153, @"SynchronizedNULL", v43, &rhs);
        if (rhs.value)
        {
          CFRelease(rhs.value);
        }
      }
    }

    playbackCoordinator_completePendingStartupTask(a1, 1);
  }

  else
  {
LABEL_61:
    v85 = OUTLINED_FUNCTION_234();
    playbackCoordinator_completePendingStartupTask(v85, v86);
    if (dword_1ED4CBE70)
    {
      v94 = OUTLINED_FUNCTION_637(qword_1ED4CBE68, v87, v88, v89, v90, v91, v92, v93, v157, v161, v166, v169, v173, v177, cfa, v185, SWORD2(v185), SBYTE6(v185), 0, 0);
      v95 = lhs.value;
      if (os_log_type_enabled(v94, HIBYTE(v186)))
      {
        v96 = v95;
      }

      else
      {
        v96 = v95 & 0xFFFFFFFE;
      }

      if (v96)
      {
        v97 = *(v11 + 496);
        OUTLINED_FUNCTION_1_128();
        v98 = CMTimeGetSeconds(&rhs);
        v107 = OUTLINED_FUNCTION_23_31(v99, v100, v101, v102, v103, v104, v105, v106, v158, v162, v166, v170, v174, v178, cfb, v186, lhs.value, *&lhs.timescale, lhs.epoch, v190, v191, *(&v191 + 1), v192, *(&v192 + 1), v193, *(&v193 + 1), v194, *(&v194 + 1), v195, *(&v195 + 1), v196, *(&v196 + 1), v197.value, *&v197.timescale, v197.epoch, v198, v199, v200, v201, v202, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v204, *(&v204 + 1), v205, v206[0], v206[1], v206[2], v206[3], v207, v208, rhs.value);
        v108 = v200;
        v109 = "[SEEK";
        LODWORD(valuePtr.value) = 136317186;
        v110 = "";
        *(&valuePtr.value + 4) = "playbackCoordinator_setRateAndAnchorTime";
        if (!v200)
        {
          v108 = "";
        }

        LOWORD(valuePtr.flags) = 2048;
        if (v84)
        {
          v109 = "";
        }

        *(&valuePtr.flags + 2) = a1;
        HIWORD(valuePtr.epoch) = 1024;
        if (!v84)
        {
          v110 = "]";
        }

        LODWORD(v204) = v97;
        WORD2(v204) = 2048;
        *(&v204 + 6) = a9;
        HIWORD(v204) = 2048;
        v205 = *&v98;
        LOWORD(v206[0]) = 2048;
        *(v206 + 2) = v107;
        WORD1(v206[1]) = 2082;
        *(&v206[1] + 4) = v109;
        WORD2(v206[2]) = 2082;
        *(&v206[2] + 6) = v108;
        HIWORD(v206[3]) = 2082;
        v207 = v110;
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_61_5(v111, v112, v113, v114, v115, v116, v117, v118);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v28 = cfb;
      v81 = HIDWORD(v174);
    }

    if (FPSupport_CreateSetRateOptions(v43, 33, &v202))
    {
      goto LABEL_75;
    }

    v119 = *MEMORY[0x1E695E4C0];
    if (a9 == 0.0)
    {
      v120 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v120 = *MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(v202, @"SynchronizeWithStartupTasks", v120);
    FigCFDictionarySetValue();
    if (v81 == 6 || !v81)
    {
      FigCFDictionarySetValue();
    }

    *(v11 + 240) = v84;
    v121 = v202;
    v122 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v122 || v122(v28, v121, a9))
    {
      goto LABEL_75;
    }

    if ((v84 & 1) == 0)
    {
      lhs.value = v119;
      FigPlaybackItemGetFigBaseObject();
      v124 = v123;
      v125 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v125)
      {
        v125(v124, @"IsPlayingIFrameOnly", v43, &lhs);
      }

      *(v11 + 244) = v166;
      *(v11 + 240) = 1;
      Mutable = CFDictionaryCreateMutable(v43, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetValue();
      FigCFDictionarySetInt32();
      v126 = *(v11 + 48);
      OUTLINED_FUNCTION_36_18();
      v127 = *(*(CMBaseObjectGetVTable() + 16) + 176);
      if (v127)
      {
        rhs = valuePtr;
        v127(v126, &rhs, Mutable);
      }

      if (lhs.value)
      {
        CFRelease(lhs.value);
      }

      goto LABEL_106;
    }
  }

  Mutable = 0;
LABEL_106:
  figPlaybackCoordinator_checkForCommandCompletion(a1);
LABEL_76:
  if (v202)
  {
    CFRelease(v202);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  free(v200);
}

void playbackCoordinator_jumpToTime(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4, int a5, int a6, uint64_t a7, const void *a8, float a9, unsigned int a10, uint64_t a11, void (*a12)(uint64_t, void, double))
{
  *&v109[4] = a5;
  *&v109[8] = a6;
  v131 = *MEMORY[0x1E69E9840];
  cf = 0;
  v104 = *MEMORY[0x1E6960C70];
  *&v114.value = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  v114.epoch = v18;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    v107 = 0;
    goto LABEL_94;
  }

  v107 = OUTLINED_FUNCTION_28_20(DerivedStorage);
  if (!v107)
  {
    v107 = 0;
    goto LABEL_94;
  }

  if (!*(v12 + 48) || !FigCFEqual() || *(v12 + 496) && !*(v12 + 456))
  {
LABEL_94:
    v97 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v99, v100, v101);
    if (v98)
    {
      a12(a11, 0, v97);
    }

    goto LABEL_17;
  }

  v20 = *(v12 + 368);
  time2 = *a4;
  rhs = *(v12 + 332);
  figPlaybackCoordinator_getPlayerTimeFromGroupTime(&time2, &rhs, v20, 0, &time1);
  *a4 = time1;
  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a12, a11, 0);
  time1 = *a4;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_3_101();
LABEL_17:
    Mutable = 0;
    v32 = v107;
    goto LABEL_79;
  }

  v21 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  allocator = v21;
  updated = CFDateCreate(v21, Current);
  v31 = *(v12 + 256);
  *(v12 + 256) = a8;
  *(v12 + 264) = updated;
  v32 = v107;
  if (a8)
  {
    updated = CFRetain(a8);
  }

  v33 = a10;
  if (v31)
  {
    CFRelease(v31);
  }

  if (a10 == 5)
  {
    FigSimpleMutexLock();
    *(v12 + 328) = 0;
    updated = FigSimpleMutexUnlock();
    v34 = 1;
  }

  else
  {
    if (!a10)
    {
      updated = figPlaybackCoordinator_updateReportingStats();
    }

    v34 = 0;
  }

  if (*&v109[4])
  {
    *(v12 + 112) = 0;
    v36 = *&v109[8] != 0;
    v37 = 0.0;
    if (*&v109[8])
    {
      v37 = a9;
    }

    *(v12 + 176) = v37;
    *(v12 + 248) = 0;
    if (a9 == 0.0)
    {
      v36 = 0;
    }

    *(v12 + 252) = v36;
  }

  else
  {
    LODWORD(time1.value) = 0;
    VTable = CMBaseObjectGetVTable();
    v39 = *(VTable + 16);
    updated = VTable + 16;
    v40 = *(v39 + 48);
    if (v40)
    {
      updated = v40(v107, &time1);
    }

    value = time1.value;
    *(v12 + 176) = time1.value;
    *(v12 + 248) = value;
    epoch = a4->epoch;
    *(v12 + 116) = *&a4->value;
    *(v12 + 132) = epoch;
    *(v12 + 140) = v104;
    *(v12 + 156) = v18;
  }

  if (*(v12 + 96) > a3)
  {
    if (dword_1ED4CBE70)
    {
      v43 = OUTLINED_FUNCTION_17_29(updated, v24, v25, v26, v27, v28, v29, v30, v99, v100, v101, allocator, v104, *(&v104 + 1), a7, v107, *v109, *&v109[8], v110, SBYTE2(v110), SHIBYTE(v110), rhs.value);
      v44 = rhs.value;
      if (os_log_type_enabled(v43, type))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        v46 = *(v12 + 496);
        LODWORD(time2.value) = 136315650;
        *(&time2.value + 4) = "playbackCoordinator_jumpToTime";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = a1;
        HIWORD(time2.epoch) = 1024;
        v117 = v46;
        OUTLINED_FUNCTION_378();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448(v47, v48, v49, v50, v51, v52, v53, v54);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_3_101();
LABEL_62:
    Mutable = 0;
    goto LABEL_79;
  }

  v55 = OUTLINED_FUNCTION_234();
  playbackCoordinator_completePendingStartupTask(v55, v56);
  v57 = *(v12 + 48);
  v58 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v58)
  {
    v58(v57, &v114);
  }

  CMTimeMake(&time1, 8, 1000);
  time2 = v114;
  rhs = *a4;
  IsWithinTolerance = faqrp_timeDifferenceIsWithinTolerance(&time2, &rhs, &time1);
  v67 = IsWithinTolerance;
  if (IsWithinTolerance)
  {
    LODWORD(v102) = 0;
  }

  else
  {
    LODWORD(time1.value) = 0;
    v68 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v68)
    {
      v68(v107, &time1);
    }

    if (*&v109[4] && !*&v109[8] && *&time1.value != 0.0)
    {
      FigSimpleMutexLock();
      *(v12 + 272) = 1;
      FigSimpleMutexUnlock();
    }

    LODWORD(v102) = *(v12 + 88);
    IsWithinTolerance = FPSupport_IncrementSeekID(v102);
    *(v12 + 88) = IsWithinTolerance;
  }

  if (dword_1ED4CBE70)
  {
    HIDWORD(v102) = v34;
    LODWORD(v104) = a10;
    v69 = OUTLINED_FUNCTION_17_29(IsWithinTolerance, v60, v61, v62, v63, v64, v65, v66, v99, v100, v102, allocator, v104, *(&v104 + 1), a7, v107, *v109, *&v109[8], v110, SBYTE2(v110), SHIBYTE(v110), rhs.value);
    v70 = rhs.value;
    os_log_type_enabled(v69, typea);
    OUTLINED_FUNCTION_134();
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = v70;
    }

    if (v73)
    {
      v74 = *(v12 + 496);
      if (v67)
      {
        v75 = " SKIP";
      }

      else
      {
        v75 = "";
      }

      time1 = *a4;
      Seconds = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136317186;
      *(&time2.value + 4) = "playbackCoordinator_jumpToTime";
      v77 = " NOT";
      LOWORD(time2.flags) = 2048;
      if (*&v109[4])
      {
        v78 = "";
      }

      else
      {
        v78 = " NOT";
      }

      *(&time2.flags + 2) = a1;
      HIWORD(time2.epoch) = 1024;
      if (*&v109[8])
      {
        v77 = "";
      }

      v117 = v74;
      v118 = 2082;
      v119 = v75;
      v32 = v108;
      v120 = 2048;
      v121 = Seconds;
      v122 = 2082;
      v123 = "";
      v124 = 2082;
      v125 = v78;
      v126 = 2082;
      v127 = v77;
      v128 = 2048;
      v129 = a9;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_61_5(v79, v80, v81, v82, v83, v84, v85, v86);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v87, v88, v89, v90, v91);
    v33 = v105;
    v34 = HIDWORD(v102);
  }

  *(v12 + 240) = v67;
  if (*&v109[4])
  {
    if (FPSupport_CreateSetRateOptions(allocator, 33, &cf))
    {
      goto LABEL_62;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (*&v109[8])
    {
      if (v33 == 6 || (v92 = a9, !v33))
      {
        FigCFDictionarySetValue();
        v92 = a9;
      }
    }

    else
    {
      v92 = 0.0;
    }

    v93 = cf;
    v94 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v94 || v94(v32, v93, v92))
    {
      goto LABEL_62;
    }
  }

  *(v12 + 240) = 1;
  if (v67)
  {
    Mutable = 0;
LABEL_75:
    if (*&v109[8] && a9 != 0.0 && (time1 = *a4, figPlaybackCoordinator_isInterstitialScheduledAtTime(a1, &time1)))
    {
      OUTLINED_FUNCTION_42_15();
      OUTLINED_FUNCTION_3_101();
    }

    else
    {
      figPlaybackCoordinator_checkForCommandCompletion(a1);
    }

    goto LABEL_79;
  }

  *(v12 + 244) = v102;
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  if (v34)
  {
    OUTLINED_FUNCTION_200_0();
    rhs = v114;
    CMTimeSubtract(&time1, &time2, &rhs);
    CMTimeGetSeconds(&time1);
    figPlaybackCoordinator_updateReportingStats();
  }

  v95 = *(v12 + 48);
  OUTLINED_FUNCTION_200_0();
  v96 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (v96)
  {
    time1 = time2;
    if (!v96(v95, &time1, Mutable))
    {
      goto LABEL_75;
    }
  }

LABEL_79:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v32)
  {
    CFRelease(v32);
  }
}

uint64_t figPlaybackCoordinator_beginPlayingPrimarySuspension(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 448) && !FigTimelineCoordinatorSuspensionCreate())
  {
    v3 = *(DerivedStorage + 448);
    if (v3)
    {
      figPlaybackCoordinator_BeginSuspension(a1, v3);
    }
  }

  return FigSimpleMutexUnlock();
}

double figPlaybackCoordinator_InterstitialStarted(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  if (*(DerivedStorage + 496))
  {
    v5 = DerivedStorage;
    FigPlaybackCoordinatorGetCMBaseObject();
    v6 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(v6 + 448))
    {
      FigTimelineCoordinatorEndSuspension();
      v7 = *(v6 + 448);
      if (v7)
      {
        CFRelease(v7);
        *(v6 + 448) = 0;
      }
    }

    FigSimpleMutexUnlock();
    if (*(v5 + 48))
    {
      FigPlaybackItemGetFigBaseObject();
      v9 = v8;
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        if (!v10(v9, @"ParticipatesInCoordinatedPlayback", *MEMORY[0x1E695E480], &v17))
        {
          v11 = v17 == *MEMORY[0x1E695E4D0];
          *(v5 + 456) = v11;
          if (!v11 && !playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(a2, 4))
          {
            v15 = *MEMORY[0x1E6960C70];
            epoch = *(MEMORY[0x1E6960C70] + 16);
            v12 = *(v5 + 480);
            if (v12)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
              memset(&v14, 0, sizeof(v14));
              CMTimeMappingMakeFromDictionary(&v14, ValueAtIndex);
              v15 = *&v14.target.start.value;
              epoch = v14.target.start.epoch;
            }

            playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(a2, 4, &v15);
          }
        }
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

void figPlaybackCoordinator_transitionToNewCurrentItem(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    a2 = 0;
  }

  if (a2 != *(DerivedStorage + 48))
  {
    figPlaybackCoordinator_removeAllItemListeners(a1);
    if (*(DerivedStorage + 56))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v6 = *(DerivedStorage + 56);
      if (v6)
      {
        CFRelease(v6);
        *(DerivedStorage + 56) = 0;
      }
    }

    v7 = OUTLINED_FUNCTION_16_6();
    if (playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(v7, v8) || *(DerivedStorage + 64) != 2 || (v9 = OUTLINED_FUNCTION_16_6(), !playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(v9, v10, v11)))
    {
      v12 = *(DerivedStorage + 48);
      *(DerivedStorage + 48) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      *(DerivedStorage + 64) = 0;
      FigPlaybackCoordinatorGetCMBaseObject();
      v13 = CMBaseObjectGetDerivedStorage();
      v14 = v13;
      v40 = 0;
      cf = 0;
      if (*(v13 + 64))
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, cf);
      }

      else if (*(v13 + 48))
      {
        FigPlaybackCoordinatorGetCMBaseObject();
        v15 = CMBaseObjectGetDerivedStorage();
        if (*(v15 + 48))
        {
          v16 = v15;
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_31_18();
          FigNotificationCenterAddWeakListener();
          *(v16 + 68) = 1;
        }

        FigPlaybackItemGetFigBaseObject();
        v18 = v17;
        v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v19)
        {
          v28 = *MEMORY[0x1E695E480];
          if (!v19(v18, @"IsReadyForPlayback", *MEMORY[0x1E695E480], &cf))
          {
            v29 = *MEMORY[0x1E695E4D0];
            if (cf == *MEMORY[0x1E695E4D0])
            {
              v20 = 102;
              goto LABEL_38;
            }

            FigPlaybackItemGetFigBaseObject();
            v37 = v36;
            v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v38)
            {
              if (!v38(v37, @"BasicsReadyForInspection", v28, &v40))
              {
                if (v40 == v29)
                {
                  v20 = 101;
LABEL_38:
                  v30 = *(v14 + 48);
                  v42 = 0;
                  if (v30)
                  {
                    FigPlaybackItemGetFigBaseObject();
                    v32 = v31;
                    v33 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v33)
                    {
                      if (v33(v32, @"IsCoordinatedPlaybackSupported", v28, &v42))
                      {
                        v34 = 0;
                      }

                      else
                      {
                        v34 = v42 == *MEMORY[0x1E695E4C0];
                      }

                      v35 = v34;
                      if (v42)
                      {
                        CFRelease(v42);
                      }

                      if (v35)
                      {
                        v20 = 2;
                      }
                    }
                  }

                  else
                  {
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, v40, cf);
                  }

                  goto LABEL_23;
                }

                v20 = 100;
LABEL_23:
                *(v14 + 64) = v20;
                if (cf)
                {
                  CFRelease(cf);
                }

                if (v40)
                {
                  CFRelease(v40);
                }

                figPlaybackCoordinator_resetInterstitialStateMachine(a1);
                v21 = *(DerivedStorage + 464);
                if (v21)
                {
                  CFRelease(v21);
                  *(DerivedStorage + 464) = 0;
                }

                v22 = *(DerivedStorage + 472);
                if (v22)
                {
                  CFRelease(v22);
                  *(DerivedStorage + 472) = 0;
                }

                figPlaybackCoordinator_seekToGroupTimeIfOnlyReadyForInspection(a1);
                figPlaybackCoordinator_startTrackingPlaybackStateIfReady(a1);
                figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(a1, a2);
                if (!figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1))
                {
                  v23 = OUTLINED_FUNCTION_16_6();
                  if (playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(v23, v24) && *(DerivedStorage + 64) != 2)
                  {
                    v25 = OUTLINED_FUNCTION_16_6();
                    playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(v25, v26, v27);
                  }
                }

                goto LABEL_4;
              }
            }
          }
        }
      }

      v20 = 1;
      goto LABEL_23;
    }
  }

LABEL_4:
  FigSimpleMutexLock();
  *(DerivedStorage + 328) = 0;
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(uint64_t a1, int a2, __int128 *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 312);
  if (v5)
  {
    v6 = 0;
LABEL_9:
    v9 = 0;
    *(DerivedStorage + 312) = v5 | a2;
    goto LABEL_10;
  }

  if (*(DerivedStorage + 496))
  {
    v7 = MEMORY[0x1E6963310];
  }

  else
  {
    v7 = MEMORY[0x1E6963308];
  }

  v6 = *v7;
  v8 = FigTimelineCoordinatorSuspensionCreate();
  if (!v8)
  {
    v8 = FigTimelineCoordinatorBeginSuspensionProposingTime();
    if (!v8)
    {
      *(DerivedStorage + 304) = 0;
      v5 = *(DerivedStorage + 312);
      goto LABEL_9;
    }
  }

  v9 = v8;
LABEL_10:
  FigSimpleMutexUnlock();
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

void figPlaybackCoordinator_seekToGroupTimeIfOnlyReadyForInspection(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = 0;
  cf = 0;
  v2 = MEMORY[0x1E6960C70];
  *&v53.value = *MEMORY[0x1E6960C70];
  epoch = *(MEMORY[0x1E6960C70] + 16);
  v53.epoch = epoch;
  *&v51.value = *&v53.value;
  v51.epoch = epoch;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) != 101)
  {
    goto LABEL_25;
  }

  v5 = DerivedStorage;
  if (figPlaybackCoordinator_recordDateOffsetForItem(a1, &v53))
  {
    goto LABEL_25;
  }

  figPlaybackCoordinator_recordInterstitialTimeRange(a1, &cf);
  FigPlaybackItemGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = *MEMORY[0x1E695E480];
  if (v8(v7, @"CoordinationIdentifier", *MEMORY[0x1E695E480], &v55))
  {
    goto LABEL_25;
  }

  if (FigTimelineCoordinatorIsSuspended())
  {
    goto LABEL_25;
  }

  if (FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier())
  {
    goto LABEL_25;
  }

  if ((v51.flags & 1) == 0)
  {
    goto LABEL_25;
  }

  memset(&v50, 0, sizeof(v50));
  time1 = v51;
  time2 = v53;
  figPlaybackCoordinator_getPlayerTimeFromGroupTime(&time1, &time2, cf, 0, &v50);
  time1 = v50;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    goto LABEL_25;
  }

  v47 = v50;
  v64 = *v2;
  v10 = *(v2 + 8);
  flags = *(v2 + 12);
  timescale = v10;
  v62 = *MEMORY[0x1E6960C80];
  v12 = *(MEMORY[0x1E6960C80] + 12);
  v63 = *(MEMORY[0x1E6960C80] + 8);
  v60 = 0;
  v13 = *(MEMORY[0x1E6960C80] + 16);
  FigPlaybackItemGetFigBaseObject();
  v15 = v14;
  VTable = CMBaseObjectGetVTable();
  v24 = *(VTable + 8);
  v23 = (VTable + 8);
  v25 = *(v24 + 48);
  if (v25)
  {
    v25(v15, @"SeekableTimeIntervals", v9, &v60);
    v23 = v60;
    if (v60)
    {
      v45 = v9;
      Count = CFArrayGetCount(v60);
      if (Count >= 1)
      {
        v27 = Count;
        for (i = 0; i != v27; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v60, i);
          memset(&time1, 0, sizeof(time1));
          Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
          CMTimeMakeFromDictionary(&time1, Value);
          memset(&time2, 0, sizeof(time2));
          v31 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
          CMTimeMakeFromDictionary(&time2, v31);
          v58.timescale = timescale;
          v58.flags = flags;
          v58.epoch = epoch;
          v57 = time1;
          v58.value = v64;
          if (CMTimeCompare(&v58, &v57) >= 1)
          {
            v64 = time1.value;
            flags = time1.flags;
            timescale = time1.timescale;
            epoch = time1.epoch;
          }

          v58.timescale = v63;
          v58.flags = v12;
          v58.epoch = v13;
          v57 = time2;
          v58.value = v62;
          if (CMTimeCompare(&v58, &v57) < 0)
          {
            v62 = time2.value;
            v12 = time2.flags;
            v63 = time2.timescale;
            v13 = time2.epoch;
          }
        }
      }

      CFRelease(v60);
    }
  }

  v32 = (flags & 0x1D) == 1 && (v12 & 0x1D) == 1;
  if (!v32 || (time1.value = v64, time1.timescale = timescale, time1.flags = flags, time1.epoch = epoch, v33 = OUTLINED_FUNCTION_22_23(v23, v17, v18, v19, v20, v21, v22, v43, v45, *&v47.value, v47.epoch, v50.value, *&v50.timescale, v50.epoch, v51.value, *&v51.timescale, v51.epoch, v52, v53.value, *&v53.timescale, v53.epoch, v54, v55, cf, v57.value, *&v57.timescale, v57.epoch, v58.value, *&v58.timescale, v58.epoch, *&time2.value, time2.epoch), v33 >= 1) || (time1.value = v62, time1.timescale = v63, time1.flags = v12, time1.epoch = v13, (OUTLINED_FUNCTION_22_23(v33, v34, v35, v36, v37, v38, v39, v44, v46, v48, v49, v50.value, *&v50.timescale, v50.epoch, v51.value, *&v51.timescale, v51.epoch, v52, v53.value, *&v53.timescale, v53.epoch, v54, v55, cf, v57.value, *&v57.timescale, v57.epoch, v58.value, *&v58.timescale, v58.epoch, *&time2.value, time2.epoch) & 0x80000000) != 0))
  {
LABEL_25:
    Mutable = 0;
  }

  else
  {
    *(v5 + 88) = FPSupport_IncrementSeekID(*(v5 + 88));
    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v41 = *(v5 + 48);
    v42 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v42)
    {
      time1 = v50;
      v42(v41, &time1, Mutable);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void figPlaybackCoordinator_startTrackingPlaybackStateIfReady(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = 0;
  cf = 0;
  if (*(DerivedStorage + 64) == 102)
  {
    v3 = DerivedStorage;
    FigPlaybackCoordinatorGetCMBaseObject();
    v4 = CMBaseObjectGetDerivedStorage();
    if (*(v4 + 48))
    {
      v5 = v4;
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v6);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v7);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v8);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v9);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v10);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v11);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v12);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_48();
      OUTLINED_FUNCTION_8_48(v13);
      *(v5 + 69) = 1;
    }

    FigPlaybackCoordinatorGetCMBaseObject();
    CMBaseObjectGetDerivedStorage();
    FigPlaybackItemGetFigBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v14 = *MEMORY[0x1E695E480];
      v15 = OUTLINED_FUNCTION_501();
      if (!v16(v15))
      {
        figPlaybackCoordinator_addTimebaseNotificationListeners(a1, cf);
        figPlaybackCoordinator_updateHLSInterstitialStartTimes();
        figPlaybackCoordinator_recordCurrentHLSInterstitialEventCoordinationStatus();
        v17 = cf;
        if (cf)
        {
          v17 = CFRetain(cf);
        }

        *(v3 + 56) = v17;
        FigPlaybackCoordinatorGetCMBaseObject();
        v18 = CMBaseObjectGetDerivedStorage();
        theArray = 0;
        v38 = 0;
        if (*(v18 + 48))
        {
          FigPlaybackItemGetFigBaseObject();
          v20 = v19;
          v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v21)
          {
            if (!v21(v20, 0x1F0B28738, v14, &v38) && !figPlaybackCoordinator_CopyParticipantSnapshots(a1, &theArray))
            {
              if (theArray)
              {
                Count = CFArrayGetCount(theArray);
                if (Count >= 1)
                {
                  v23 = *(v18 + 320);
                  if (v23)
                  {
                    v24 = Count;
                    v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (v25)
                    {
                      v25(v23, 0x1F0B64638, 0x1F0B66F98, v24);
                    }

                    v26 = *(v18 + 320);
                    if (v26)
                    {
                      v27 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                      if (v27)
                      {
                        v27(v26, 0x1F0B66F78, 0x1F0B66F98, 1);
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
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, cf, theArray);
        }

        v28 = *(v18 + 320);
        v29 = v38;
        *(v18 + 320) = v38;
        if (v29)
        {
          CFRetain(v29);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        FigPlaybackItemGetFigBaseObject();
        v31 = v30;
        v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v32 && !v32(v31, @"IntegratedTimelineTimeOffsets", v14, &v35))
        {
          v33 = *(v3 + 480);
          v34 = v35;
          *(v3 + 480) = v35;
          if (v34)
          {
            CFRetain(v34);
          }

          if (v33)
          {
            CFRelease(v33);
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }
}

uint64_t figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(uint64_t a1)
{
  v184 = *MEMORY[0x1E69E9840];
  timebase = 0;
  cf = 0;
  v174 = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_28_20(DerivedStorage);
  v173 = **&MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v171 = *MEMORY[0x1E6960C98];
  *v172 = v5;
  *&v172[16] = *(MEMORY[0x1E6960C98] + 32);
  HIDWORD(v170) = 0;
  LODWORD(v6) = *(v1 + 64);
  v168 = 0;
  OUTLINED_FUNCTION_42_15();
  OUTLINED_FUNCTION_3_101();
  *(v1 + 112) = 0;
  *(v1 + 176) = 2143289344;
  if (*(v1 + 64) < 0x66u)
  {
    goto LABEL_44;
  }

  FigPlaybackItemGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v15 = OUTLINED_FUNCTION_501();
    DefaultCoordinationIdentifierForPlaybackItem = v16(v15);
    if (DefaultCoordinationIdentifierForPlaybackItem == -12783)
    {
      DefaultCoordinationIdentifierForPlaybackItem = FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(*(v1 + 48), &cf);
    }

    v18 = DefaultCoordinationIdentifierForPlaybackItem == 0;
  }

  else
  {
    v18 = 0;
  }

  figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a1, v18, 2);
  if (*(v1 + 496))
  {
    FigPlaybackItemGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_24;
    }

    v19 = OUTLINED_FUNCTION_501();
    v21 = v20(v19);
    if (v21)
    {
      goto LABEL_88;
    }

    *(v1 + 456) = *MEMORY[0x1E695E4D0] == 0;
    FigPlaybackCoordinatorGetCMBaseObject();
    v22 = CMBaseObjectGetDerivedStorage();
    if (*(v22 + 496) != 1 || (v23 = v22, FigSimpleMutexLock(), v6 = *(v23 + 448), FigSimpleMutexUnlock(), !v6))
    {
      figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a1, *(v1 + 456) != 0, 4);
    }
  }

  FigPlaybackItemGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_24:
    v33 = 4294954514;
    if (!v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v24 = OUTLINED_FUNCTION_501();
  v21 = v25(v24);
  if (v21)
  {
    goto LABEL_88;
  }

  figPlaybackCoordinator_recordInterstitialTimeRange(a1, 0);
  Rate = CMTimebaseGetRate(timebase);
  *(v1 + 176) = Rate;
  figPlaybackCoordinator_recordDateOffsetForItem(a1, 0);
  v27 = *(v1 + 48);
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v28)
  {
    v28(v27, &v173);
  }

  v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v29)
  {
    v29(v4, &v170 + 4);
  }

  v30.n128_f64[0] = CMTimebaseGetRate(timebase);
  v31.n128_f32[0] = v30.n128_f64[0];
  if (v31.n128_f32[0] == 0.0 && v4)
  {
    v30.n128_u32[0] = HIDWORD(v170);
    v32 = 0.0;
    if ((v173.flags & 1) != 0 && *(&v170 + 1) != v31.n128_f32[0])
    {
      *(v1 + 176) = HIDWORD(v170);
      v32 = v30.n128_f32[0];
    }
  }

  else
  {
    v32 = 0.0;
    v30.n128_u32[0] = HIDWORD(v170);
  }

  if (v30.n128_f32[0] != 0.0 && (v173.flags & 1) != 0)
  {
    OUTLINED_FUNCTION_2_125(isTimeInInterstitialRange, v8, v9, v10, v11, v12, v13, v14, v30, v144, v148, v152, v156, 0, v170, v171, *(&v171 + 1), *v172, *&v172[8], *&v172[16], *&v172[24], v31, v173.value);
    isTimeInInterstitialRange = figPlaybackCoordinator_isTimeInInterstitialRange(a1, &time, &v171);
    if (isTimeInInterstitialRange)
    {
      if (dword_1ED4CBE70)
      {
        v34 = OUTLINED_FUNCTION_5_86(isTimeInInterstitialRange, v8, v9, v10, v11, v12, v13, v14, v144, v148, v152, v156, SBYTE2(v156), SBYTE3(v156), SHIDWORD(v156));
        OUTLINED_FUNCTION_304(v34, v35, v36, v37, v38, v39, v40, v41, v145, v149, v153, v157, v160, type, v165);
        OUTLINED_FUNCTION_134();
        if (v53)
        {
          v54 = v50;
        }

        else
        {
          v54 = v6;
        }

        if (v54)
        {
          v51.n128_u32[0] = HIDWORD(v170);
          v55 = *(&v170 + 1);
          OUTLINED_FUNCTION_2_125(v42, v43, v44, v45, v46, v47, v48, v49, v51, v144, v148, v152, v156, v168, v170, v171, *(&v171 + 1), *v172, *&v172[8], *&v172[16], *&v172[24], v52, v173.value);
          Seconds = CMTimeGetSeconds(&time);
          *&time.value = v171;
          time.epoch = *v172;
          v57 = CMTimeGetSeconds(&time);
          time = *&v172[8];
          CMTimeGetSeconds(&time);
          LODWORD(v177.value) = 136317186;
          OUTLINED_FUNCTION_7_62();
          *(v180 + 2) = v55;
          WORD1(v180[1]) = v58;
          *(&v180[1] + 4) = Seconds;
          WORD2(v180[2]) = v58;
          *(&v180[2] + 6) = v57;
          HIWORD(v180[3]) = v58;
          v181 = v59;
          OUTLINED_FUNCTION_378();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_448(v60, v61, v62, v63, v64, v65, v66, v67);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v139, v140, v141, v142, v143);
      }

      OUTLINED_FUNCTION_18_28(isTimeInInterstitialRange, v8, v9, v10, v11, v12, v13, v14, v144, v148, v152, v156, v168, v170, v171, *(&v171 + 1), *v172, *&v172[8], *&v172[16], *&v172[24], *&v173.value, v173.epoch, v174, timebase, cf, *&v177.value, v177.epoch, v178, *(&v178 + 1), v179, v180[0], v180[1], v180[2], v180[3], v181, v182, time.value);
      v173 = time;
LABEL_86:
      v21 = FigTimelineCoordinatorHandleTransitionToNewTimelineFromTimelineControlProposingTimeAndPrerollRate();
      if (v21)
      {
        goto LABEL_88;
      }

      LODWORD(v6) = 10000;
      goto LABEL_57;
    }
  }

  if (v32 != 0.0)
  {
    OUTLINED_FUNCTION_18_28(isTimeInInterstitialRange, v8, v9, v10, v11, v12, v13, v14, v144, v148, v152, v156, v168, v170, v171, *(&v171 + 1), *v172, *&v172[8], *&v172[16], *&v172[24], *&v173.value, v173.epoch, v174, timebase, cf, *&v177.value, v177.epoch, v178, *(&v178 + 1), v179, v180[0], v180[1], v180[2], v180[3], v181, v182, time.value);
    v77 = *&time.value;
    v173 = time;
    if (dword_1ED4CBE70)
    {
      v78 = OUTLINED_FUNCTION_5_86(v68, v69, v70, v71, v72, v73, v74, v75, v146, v150, v154, v158, SBYTE2(v158), SBYTE3(v158), SHIDWORD(v158));
      OUTLINED_FUNCTION_304(v78, v79, v80, v81, v82, v83, v84, v85, v147, v151, v155, v159, v161, typea, v166);
      OUTLINED_FUNCTION_134();
      if (v53)
      {
        v97 = v94;
      }

      else
      {
        v97 = v6;
      }

      if (v97)
      {
        OUTLINED_FUNCTION_2_125(v86, v87, v88, v89, v90, v91, v92, v93, v95, v146, v150, v154, v158, v169, v170, v171, *(&v171 + 1), *v172, *&v172[8], *&v172[16], *&v172[24], v96, v173.value);
        CMTimeGetSeconds(&time);
        LODWORD(v177.value) = 136316674;
        OUTLINED_FUNCTION_7_62();
        *(v180 + 2) = v32;
        WORD1(v180[1]) = v98;
        *(&v180[1] + 4) = v99;
        OUTLINED_FUNCTION_378();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_448(v100, v101, v102, v103, v104, v105, v106, v107);
      }

      OUTLINED_FUNCTION_7();
      v77.n128_f64[0] = OUTLINED_FUNCTION_238_0(v134, v135, v136, v137, v138);
    }

    OUTLINED_FUNCTION_2_125(*(v1 + 16), cf, v70, *(v1 + 104), v72, v73, v74, v75, v77, v146, v150, v154, v158, v169, v170, v171, *(&v171 + 1), *v172, *&v172[8], *&v172[16], *&v172[24], v76, v173.value);
    goto LABEL_86;
  }

  LODWORD(v6) = 10000;
LABEL_44:
  if (dword_1ED4CBE70)
  {
    v108 = OUTLINED_FUNCTION_5_86(isTimeInInterstitialRange, v8, v9, v10, v11, v12, v13, v14, v144, v148, v152, v156, SBYTE2(v156), SBYTE3(v156), SHIDWORD(v156));
    if (os_log_type_enabled(v108, typeb))
    {
      v109 = v167;
    }

    else
    {
      v109 = v167 & 0xFFFFFFFE;
    }

    if (v109)
    {
      v110 = *(v1 + 496);
      v111 = *(v1 + 80);
      LODWORD(v177.value) = 136316162;
      *(&v177.value + 4) = "figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming";
      LOWORD(v177.flags) = 2048;
      *(&v177.flags + 2) = a1;
      HIWORD(v177.epoch) = 1024;
      LODWORD(v178) = v110;
      WORD2(v178) = 2114;
      *(&v178 + 6) = v111;
      HIWORD(v178) = 2114;
      v179 = cf;
      OUTLINED_FUNCTION_378();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_448(v112, v113, v114, v115, v116, v117, v118, v119);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*(v1 + 104) && cf)
  {
    v120 = *(v1 + 56);
    FigPlaybackCoordinatorGetCMBaseObject();
    v121 = CMBaseObjectGetDerivedStorage();
    v122 = CMTimebaseGetRate(v120);
    if (v122 == 0.0)
    {
      *(v121 + 112) = 0;
    }

    else
    {
      *(v121 + 112) = 1;
      v128 = v122;
      *(v121 + 164) = v128;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time, HostTimeClock);
      *(v121 + 140) = time;
      v130 = CMClockGetHostTimeClock();
      v177 = *(v121 + 140);
      CMSyncConvertTime(&time, &v177, v130, v120);
      *(v121 + 116) = time;
      v133 = *(v121 + 168);
      v132 = (v121 + 168);
      v131 = v133;
      if (v133)
      {
        CFRelease(v131);
        *v132 = 0;
      }

      v21 = figPlaybackCoordinator_copyTimebaseAndAddOffset(v120, MEMORY[0x1E6960CC0], v132);
      if (v21)
      {
        goto LABEL_88;
      }
    }
  }

  v21 = figPlaybackCoordinator_copyGroupTimebaseFromCurrentItemTimebase(a1, &v174);
  if (v21)
  {
    goto LABEL_88;
  }

  v21 = FigTimelineCoordinatorHandleTransitionToNewTimelineFromTimelineControl();
  if (v21)
  {
    goto LABEL_88;
  }

LABEL_57:
  v123 = *(v1 + 80);
  v124 = cf;
  *(v1 + 80) = cf;
  if (v124)
  {
    CFRetain(v124);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  v21 = FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
  if (!v21)
  {
    if (!*(v1 + 384))
    {
      v126 = OUTLINED_FUNCTION_234();
      figPlaybackCoordinator_updateInterstitialStateMachine(v126, v127);
    }

    if (*(v1 + 64) == v6)
    {
      v33 = 0;
      if (!v4)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v33 = 0;
      *(v1 + 64) = v6;
      if (!v4)
      {
        goto LABEL_69;
      }
    }

LABEL_68:
    CFRelease(v4);
    goto LABEL_69;
  }

LABEL_88:
  v33 = v21;
  if (v4)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  if (timebase)
  {
    CFRelease(timebase);
  }

  if (v174)
  {
    CFRelease(v174);
  }

  if (v168)
  {
    CFRelease(v168);
  }

  return v33;
}

uint64_t figPlaybackCoordinator_recordDateOffsetForItem(uint64_t a1, CMTime *a2)
{
  v28 = 0;
  v27 = **&MEMORY[0x1E6960C70];
  v26 = v27;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*(DerivedStorage + 64) < 0x65u)
  {
LABEL_16:
    result = 0;
    goto LABEL_18;
  }

  v5 = *(DerivedStorage + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    goto LABEL_17;
  }

  result = v6(v5, &v27);
  if (result)
  {
    goto LABEL_18;
  }

  if ((v27.flags & 0x1D) == 1)
  {
    goto LABEL_16;
  }

  FigPlaybackItemGetFigBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v11 = *MEMORY[0x1E695E480];
    result = v10(v9, @"currentDateAndTime", *MEMORY[0x1E695E480], &v28);
    if (!result)
    {
      FigDateTimeMakeFromDictionary(v28, &time);
      v25 = time;
      v12 = v22;
      v13 = v23;
      v14 = v24;
      CFRelease(v28);
      result = 0;
      if (v14)
      {
        if (v13)
        {
          memset(&v20, 0, sizeof(v20));
          CMTimeMakeWithSeconds(&v20, v12, 1000000000);
          time = v25;
          Seconds = CMTimeGetSeconds(&time);
          v16 = CFDateCreate(v11, v12);
          v17 = CFCopyDescription(v16);
          if (v16)
          {
            CFRelease(v16);
          }

          v18 = CFStringCreateWithFormat(v11, 0, @"time: %f date: %@ (%f)", *&Seconds, v17, *&v12);
          if (v17)
          {
            CFRelease(v17);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          time = v20;
          rhs = v25;
          CMTimeSubtract(&v26, &time, &rhs);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
LABEL_17:
    result = 4294954514;
  }

LABEL_18:
  if (a2)
  {
    *a2 = v26;
  }

  if (*(v4 + 64) >= 0x66u)
  {
    *(v4 + 332) = v26;
  }

  return result;
}

void figPlaybackCoordinator_recordInterstitialTimeRange(uint64_t a1, void *a2)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64) < 0x65u || (v4 = DerivedStorage, FigPlaybackItemGetFigBaseObject(), v6 = v5, (v7 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v7(v6, @"InterstitialTimeRanges", *MEMORY[0x1E695E480], &cf))
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (*(v4 + 64) >= 0x66u && cf)
  {
    if (!*(v4 + 368))
    {
      v8 = FigCFCopyCompactDescription();
      *(v4 + 368) = CFRetain(cf);
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = cf;
  if (cf)
  {
    v9 = CFRetain(cf);
  }

  *a2 = v9;
LABEL_12:
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void figPlaybackCoordinator_recordCurrentHLSInterstitialEventCoordinationStatus()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  if (*(DerivedStorage + 48))
  {
    if (*(DerivedStorage + 64) != 10000)
    {
      goto LABEL_17;
    }

    FigPlaybackItemGetFigBaseObject();
    v2 = v1;
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v3 || v3(v2, @"currentInterstitialEvent", *MEMORY[0x1E695E480], &cf1))
    {
      goto LABEL_17;
    }

    if (cf1)
    {
      if (CFEqual(cf1, &stru_1F0B1AFB8))
      {
        goto LABEL_17;
      }

      *(DerivedStorage + 488) = 1;
      v4 = *(DerivedStorage + 472);
      if (!v4)
      {
        goto LABEL_17;
      }

      Count = CFArrayGetCount(v4);
      if (Count < 1)
      {
        goto LABEL_17;
      }

      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 472), v7);
        cf = 0;
        if (!FigPlayerInterstitialEventCreateFromDictionary(0, ValueAtIndex, &cf))
        {
          v9 = FigPlayerInterstitialEventCopyIdentifier(cf);
          if (CFStringCompare(cf1, v9, 0) == kCFCompareEqualTo)
          {
            if (FigPlayerInterstitialEventContentMayVary(cf) || !FigPlayerInterstitialEventGetTimelineOccupancy(cf) || FigPlayerInterstitialEventIsPreRoll(cf))
            {
              *(DerivedStorage + 488) = 0;
            }

            if (cf)
            {
              CFRelease(cf);
            }

            if (v9)
            {
              CFRelease(v9);
            }

LABEL_17:
            if (cf1)
            {
              CFRelease(cf1);
            }

            return;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }

        if (v6 == ++v7)
        {
          goto LABEL_17;
        }
      }
    }
  }
}

double figPlaybackCoordinator_itemBecameLikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    v7 = DerivedStorage;
    v8 = *MEMORY[0x1E6963328];
    FigPlaybackCoordinatorGetCMBaseObject();
    v9 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(v9 + 296), v8);
    if (Value)
    {
      v11 = Value;
      CFRetain(Value);
      CFDictionaryRemoveValue(*(v9 + 296), v8);
      FigSimpleMutexUnlock();
      v12 = FigTimelineCoordinatorEndSuspension();
      CFRelease(v11);
      if (v12)
      {
        return result;
      }
    }

    else
    {
      CFDictionaryRemoveValue(*(v9 + 296), v8);
      FigSimpleMutexUnlock();
    }

    figPlaybackCoordinator_checkForCommandCompletion(a2);
    v14 = *(v7 + 208);
    if (v14)
    {
      v15 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v17 = CFDateCreate(v15, Current);
      *(v7 + 208) = v17;
      if (v17)
      {
        CFRetain(v17);
      }

      CFRelease(v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

void figPlaybackCoordinator_hlsInterstitialEventsChanged()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_28_20(DerivedStorage);
  cf = 0;
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(v3, 0, &cf);
      v5 = cf;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == *(v0 + 48))
    {
      figPlaybackCoordinator_updateHLSInterstitialStartTimes();
      v5 = cf;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

void figPlaybackCoordinator_hlsCurrentInterstitialEventChanged()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = OUTLINED_FUNCTION_28_20(DerivedStorage);
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(v3, 0, &v6);
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    if (!*(v0 + 496) && v5 == *(v0 + 48))
    {
      figPlaybackCoordinator_recordCurrentHLSInterstitialEventCoordinationStatus();
      v5 = v6;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else if (!v5)
    {
LABEL_9:
      CFRelease(v3);
      return;
    }

    CFRelease(v5);
    goto LABEL_9;
  }
}

void figPlaybackCoordinator_checkForCommandCompletion(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 224))
  {
    goto LABEL_20;
  }

  v5 = DerivedStorage;
  Rate = CMTimebaseGetRate(*(DerivedStorage + 56));
  if (*(v5 + 244))
  {
    if (!dword_1ED4CBE70)
    {
      goto LABEL_20;
    }

    v15 = OUTLINED_FUNCTION_4_99(v6, v7, v8, v9, v10, v11, v12, v13, v61, v65, v69, SBYTE2(v69), SBYTE3(v69), SHIDWORD(v69));
    v23 = OUTLINED_FUNCTION_437_1(v15, v16, v17, v18, v19, v20, v21, v22, v62, v66, v70, v73, v76, v79);
    if (!OUTLINED_FUNCTION_109_0(v23))
    {
      goto LABEL_19;
    }

    v83 = 136315650;
    OUTLINED_FUNCTION_9_45();
    goto LABEL_10;
  }

  v24 = Rate;
  if (*(v5 + 248) != v24)
  {
    if (!dword_1ED4CBE70)
    {
      goto LABEL_20;
    }

    v25 = OUTLINED_FUNCTION_4_99(v6, v7, v8, v9, v10, v11, v12, v13, v61, v65, v69, SBYTE2(v69), SBYTE3(v69), SHIDWORD(v69));
    v33 = OUTLINED_FUNCTION_437_1(v25, v26, v27, v28, v29, v30, v31, v32, v63, v67, v71, v74, v77, v80);
    if (!OUTLINED_FUNCTION_109_0(v33))
    {
      goto LABEL_19;
    }

    v34 = *(v5 + 496);
    v35 = *(v5 + 248);
    v83 = 136316162;
    v84 = "figPlaybackCoordinator_checkForCommandCompletion";
    v85 = 2048;
    v86 = a1;
    v87 = 1024;
    v88 = v34;
    v89 = 2048;
    v90 = v24;
    v91 = 2048;
    v92 = v35;
    goto LABEL_10;
  }

  if (!*(v5 + 252))
  {
    goto LABEL_15;
  }

  FigPlaybackItemGetFigBaseObject();
  v1 = v42;
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v43)
  {
    v43(v1, @"WillKeepUpPrediction", *MEMORY[0x1E695E480], &cf);
  }

  v44 = FigCFEqual();
  if (v44)
  {
LABEL_15:
    figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 1);
    goto LABEL_20;
  }

  if (dword_1ED4CBE70)
  {
    v52 = OUTLINED_FUNCTION_4_99(v44, v45, v46, v47, v48, v49, v50, v51, v61, v65, v69, SBYTE2(v69), SBYTE3(v69), SHIDWORD(v69));
    v60 = OUTLINED_FUNCTION_437_1(v52, v53, v54, v55, v56, v57, v58, v59, v64, v68, v72, v75, v78, v81);
    if (!OUTLINED_FUNCTION_109_0(v60))
    {
      goto LABEL_19;
    }

    v83 = 136315650;
    OUTLINED_FUNCTION_9_45();
LABEL_10:
    OUTLINED_FUNCTION_108();
    _os_log_send_and_compose_impl(v36, v37, v38, v39, v40, v1, v2, v41);
LABEL_19:
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void figPlaybackCoordinator_updateInterstitialStateMachine(const void *a1, int a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v133 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  epoch = v5;
  v115 = v133;
  *&v132.value = v133;
  v132.epoch = v5;
  v6 = *(DerivedStorage + 368);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v15 = (DerivedStorage + 392);
      v16 = *(DerivedStorage + 384);
      v17 = MEMORY[0x1E6960C98];
      while (1)
      {
        do
        {
          while (1)
          {
            if (v16 < 2)
            {
              v130 = v115;
              v131 = v5;
              v41 = *(DerivedStorage + 48);
              v42 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v42)
              {
                v42(v41, &v130);
              }

              v107 = v17[1];
              v112 = *v17;
              v127 = *v17;
              v128 = v107;
              v102 = v17[2];
              v129 = v102;
              FigPlaybackCoordinatorGetCMBaseObject();
              v43 = CMBaseObjectGetDerivedStorage();
              *&range.start.value = v115;
              range.start.epoch = v5;
              LODWORD(lhs.start.value) = 0;
              v44 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v44)
              {
                v45 = v44;
                v46 = *(v43 + 48);
                v47 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v47)
                {
                  v47(v46, &range);
                }

                v48 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (!v48 || (v48(v45, &lhs), *&lhs.start.value == 0.0))
                {
                  CFRelease(v45);
                }

                else
                {
                  OUTLINED_FUNCTION_29_20();
                  isTimeInInterstitialRange = figPlaybackCoordinator_isTimeInInterstitialRange(a1, &v136.start, &v127);
                  CFRelease(v45);
                  if (isTimeInInterstitialRange)
                  {
                    if ((*(DerivedStorage + 404) & 1) == 0 || (*(DerivedStorage + 428) & 1) == 0 || *(DerivedStorage + 432) || (*(DerivedStorage + 416) & 0x8000000000000000) != 0)
                    {
                      v50 = v128;
                      *v15 = v127;
                      *(DerivedStorage + 408) = v50;
                      *(DerivedStorage + 424) = v129;
                    }

                    v51 = *(DerivedStorage + 408);
                    *&range.start.value = *v15;
                    *&range.start.epoch = v51;
                    *&range.duration.timescale = *(DerivedStorage + 424);
                    CMTimeRangeGetEnd(&v136.start, &range);
                    OUTLINED_FUNCTION_27_20(&range.start);
                    CMTimeAdd(&v132, &v136.start, &range.start);
                    range.start = v132;
                    v52 = OUTLINED_FUNCTION_24_21();
                    figPlaybackCoordinator_primeNextInterstitialEventTimer(v52, v53, 1);
                    OUTLINED_FUNCTION_12_42();
                    OUTLINED_FUNCTION_24_21();
                    figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v54, v55);
                    FigPlaybackCoordinatorGetCMBaseObject();
                    v56 = CMBaseObjectGetDerivedStorage();
                    if (!*(v56 + 440))
                    {
                      v57 = v56;
                      if (!FigTimelineCoordinatorSuspensionCreate())
                      {
                        v58 = *(v57 + 440);
                        if (v58)
                        {
                          figPlaybackCoordinator_BeginSuspension(a1, v58);
                        }
                      }
                    }

                    v59 = 3;
LABEL_64:
                    *(DerivedStorage + 384) = v59;
                    return;
                  }
                }
              }

              else
              {
                OUTLINED_FUNCTION_239();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102.n128_u64[0], v102.n128_u32[2], v107.n128_u32[0]);
              }

              OUTLINED_FUNCTION_12_42();
              OUTLINED_FUNCTION_24_21();
              figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v60, v61);
              OUTLINED_FUNCTION_27_20(&v136.start);
              *&lhs.start.value = v133;
              lhs.start.epoch = epoch;
              CMTimeAdd(&range.start, &lhs.start, &v136.start);
              v62 = OUTLINED_FUNCTION_24_21();
              figPlaybackCoordinator_endDiscontinuitiyBasedInterstitialSuspensionProposingNewTime(v62, v63);
              v119 = v130;
              v123 = v131;
              FigPlaybackCoordinatorGetCMBaseObject();
              v64 = CMBaseObjectGetDerivedStorage();
              v65 = *(v64 + 368);
              if (v65)
              {
                v66 = CFArrayGetCount(v65);
              }

              else
              {
                v66 = 0;
              }

              *&lhs.start.value = v112;
              *&lhs.start.epoch = v107;
              *&lhs.duration.timescale = v102;
              v138 = 0.0;
              v67 = FigCFWeakReferenceHolderCopyReferencedObject();
              if (v67)
              {
                v68 = v67;
                v69 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v69)
                {
                  v69(v68, &v138);
                }

                if (v66 >= 1)
                {
                  v70 = 0;
                  while (1)
                  {
                    memset(&range, 0, sizeof(range));
                    ValueAtIndex = CFArrayGetValueAtIndex(*(v64 + 368), v70);
                    v72 = CMTimeRangeMakeFromDictionary(&range, ValueAtIndex);
                    v136 = range;
                    v80 = OUTLINED_FUNCTION_19_31(v72, v73, v74, v75, v76, v77, v78, v79, v102.n128_i64[0], v102.n128_i64[1], v107.n128_i64[0], v107.n128_i64[1], v112.n128_i64[0], v112.n128_i64[1], v115, *(&v115 + 1), v119, v123);
                    if (figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(v80, v81))
                    {
                      if (v138 == 0.0)
                      {
                        break;
                      }
                    }

                    OUTLINED_FUNCTION_29_20();
                    v90 = OUTLINED_FUNCTION_19_31(v82, v83, v84, v85, v86, v87, v88, v89, v103, v104, v108, v109, v113, v114, v116, v117, v120, v124);
                    if ((CMTimeCompare(v90, v91) & 0x80000000) == 0)
                    {
                      break;
                    }

                    if (v66 == ++v70)
                    {
                      goto LABEL_56;
                    }
                  }

                  lhs = range;
                }

LABEL_56:
                CFRelease(v68);
              }

              else
              {
                OUTLINED_FUNCTION_239();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v102.n128_u64[0], v102.n128_u32[2], v107.n128_u32[0]);
              }

              v92 = *&lhs.start.epoch;
              *v15 = *&lhs.start.value;
              *(DerivedStorage + 408) = v92;
              *(DerivedStorage + 424) = *&lhs.duration.timescale;
              if ((*(DerivedStorage + 404) & 1) == 0 || (*(DerivedStorage + 428) & 1) == 0 || *(DerivedStorage + 432) || (*(DerivedStorage + 416) & 0x8000000000000000) != 0)
              {
                figPlaybackCoordinator_clearInterstitialEventTimer();
              }

              else
              {
                OUTLINED_FUNCTION_12_42();
                v93 = OUTLINED_FUNCTION_24_21();
                figPlaybackCoordinator_primeNextInterstitialEventTimer(v93, v94, 0);
              }

              v59 = 2;
              goto LABEL_64;
            }

            if (v16 != 2)
            {
              break;
            }

            if (a2 == 2)
            {
              goto LABEL_23;
            }

            v16 = 2;
            if (a2 == 1)
            {
              v21 = v17[1];
              *v15 = *v17;
              *(DerivedStorage + 408) = v21;
              *(DerivedStorage + 424) = v17[2];
              goto LABEL_23;
            }
          }
        }

        while (v16 != 3);
        v127 = v115;
        v128.n128_u64[0] = v5;
        v18 = *v17;
        v19 = v17[1];
        *&range.start.value = *v17;
        *&range.start.epoch = v19;
        v20 = v17[2];
        *&range.duration.timescale = v20;
        if (a2 == 1)
        {
          break;
        }

        if (a2 == 3)
        {
LABEL_18:
          if (v127.n128_u8[12])
          {
            OUTLINED_FUNCTION_30_18(Count, v8, v9, v10, v11, v12, v13, v14, v18, v100, *(&v100 + 1), v105, *(&v105 + 1), v110, *(&v110 + 1), v115, *(&v115 + 1), v118, v121, v122, v125, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v19, v127.n128_i64[0]);
            OUTLINED_FUNCTION_35_14();
            figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v37, v38);
          }

          else
          {
            *&v136.start.value = *v15;
            v136.start.epoch = *(DerivedStorage + 408);
            OUTLINED_FUNCTION_35_14();
            figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(v35, v36);
            OUTLINED_FUNCTION_27_20(&rhs);
            CMTimeAdd(&v136.start, &lhs.start, &rhs);
            v133 = *&v136.start.value;
            epoch = v136.start.epoch;
          }

          *&v136.start.value = v133;
          v136.start.epoch = epoch;
          v39 = OUTLINED_FUNCTION_35_14();
          figPlaybackCoordinator_endDiscontinuitiyBasedInterstitialSuspensionProposingNewTime(v39, v40);
          if (*(DerivedStorage + 104))
          {
            Count = figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
          }

LABEL_23:
          v16 = 1;
          *(DerivedStorage + 384) = 1;
        }

        else
        {
          v16 = 3;
        }
      }

      v101 = v20;
      v106 = v19;
      v111 = v18;
      v22 = *(DerivedStorage + 48);
      v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v23)
      {
        v23(v22, &v127);
      }

      v24 = *(DerivedStorage + 408);
      *&v136.start.value = *v15;
      *&v136.start.epoch = v24;
      *&v136.duration.timescale = *(DerivedStorage + 424);
      *&lhs.start.value = v127;
      lhs.start.epoch = v128.n128_u64[0];
      started = figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(&v136, &lhs.start);
      if (started)
      {
        return;
      }

      OUTLINED_FUNCTION_30_18(started, v26, v27, v28, v29, v30, v31, v32, v33, v101.n128_i64[0], v101.n128_i64[1], v106.n128_i64[0], v106.n128_i64[1], v111.n128_i64[0], v111.n128_i64[1], v115, *(&v115 + 1), v118, v121, v122, v125, lhs.start.value, *&lhs.start.timescale, lhs.start.epoch, lhs.duration.value, *&lhs.duration.timescale, lhs.duration.epoch, v34, v127.n128_i64[0]);
      Count = figPlaybackCoordinator_isTimeInInterstitialRange(a1, &v136.start, &range);
      if (Count)
      {
        v95 = *&range.start.value;
        v96 = *&range.start.epoch;
        *v15 = *&range.start.value;
        *(DerivedStorage + 408) = v96;
        v97 = *&range.duration.timescale;
        *(DerivedStorage + 424) = *&range.duration.timescale;
        *&v136.start.value = v95;
        *&v136.start.epoch = v96;
        *&v136.duration.timescale = v97;
        CMTimeRangeGetEnd(&lhs.start, &v136);
        OUTLINED_FUNCTION_27_20(&v136.start);
        CMTimeAdd(&v132, &lhs.start, &v136.start);
        v136.start = v132;
        v98 = OUTLINED_FUNCTION_35_14();
        figPlaybackCoordinator_primeNextInterstitialEventTimer(v98, v99, 1);
        return;
      }

      v19 = v110;
      *v15 = v110;
      *(DerivedStorage + 408) = v105;
      v18 = v100;
      *(DerivedStorage + 424) = v100;
      goto LABEL_18;
    }
  }
}

void figPlaybackCoordinator_clearInterstitialEventTimer()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 368);
  if (v1 && CFArrayGetCount(v1) >= 1)
  {
    v2 = *(DerivedStorage + 376);
    if (v2)
    {
      dispatch_source_cancel(v2);
      dispatch_release(*(DerivedStorage + 376));
      *(DerivedStorage + 376) = 0;
    }
  }
}

uint64_t figPlaybackCoordinator_BeginSuspension(const void *a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigTimelineCoordinatorBeginSuspension();
  if (!v4)
  {
    v5 = malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL);
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *v5 = v6;
    v5[8] = 1;
    dispatch_async_f(*(DerivedStorage + 280), v5, playbackCoordinator_completePendingStartupTaskOnQueue);
  }

  return v4;
}

uint64_t figPlaybackCoordinator_copyTimebaseAndAddOffset(OpaqueCMTimebase *a1, CMTime *a2, CMTimebaseRef *a3)
{
  timebaseOut = 0;
  v6 = CMTimebaseCopySource(a1);
  v7 = v6;
  outRelativeRate = 0.0;
  outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960C70];
  outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
  if (a1)
  {
    if (v6 && (v8 = CFGetTypeID(v6), v8 == CMTimebaseGetTypeID()))
    {
      RelativeRateAndAnchorTime = CMTimebaseCreateWithSourceTimebase(*MEMORY[0x1E695E480], v7, &timebaseOut);
      if (RelativeRateAndAnchorTime)
      {
        goto LABEL_9;
      }
    }

    else
    {
      RelativeRateAndAnchorTime = CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], v7, &timebaseOut);
      if (RelativeRateAndAnchorTime)
      {
        goto LABEL_9;
      }
    }

    RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(a1, v7, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
    if (!RelativeRateAndAnchorTime)
    {
      v10 = timebaseOut;
      v11 = outRelativeRate;
      lhs = outOfClockOrTimebaseAnchorTime;
      v14 = *a2;
      CMTimeAdd(&timebaseTime, &lhs, &v14);
      lhs = outRelativeToClockOrTimebaseAnchorTime;
      RelativeRateAndAnchorTime = CMTimebaseSetRateAndAnchorTime(v10, v11, &timebaseTime, &lhs);
    }

LABEL_9:
    v12 = RelativeRateAndAnchorTime;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (a3)
  {
LABEL_10:
    *a3 = timebaseOut;
  }

LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  return v12;
}