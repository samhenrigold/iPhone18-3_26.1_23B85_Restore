uint64_t segPumpSendIndexFileRequest(uint64_t a1, uint64_t a2, int a3)
{
  v173 = *MEMORY[0x1E69E9840];
  v6 = (a1 + 0x2000);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v158 = 0;
  v159 = -1;
  if (v6[676] && *(a2 + 160) == 1)
  {
    *(a2 + 160) = 2;
    *(a2 + 168) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0;
  }

  v8 = *(a2 + 280);
  if (v8)
  {
    v151 = *(a2 + 272);
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    v151 = 0;
  }

  v153 = v6;
  if (v6[23])
  {
    v9 = 519;
  }

  else
  {
    v9 = 7;
  }

  v10 = *(a2 + 416);
  v11 = *(a2 + 424);
  v12 = *(a2 + 520);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 520) = 0;
  }

  *(a2 + 496) = 0;
  *(a2 + 416) = 0;
  *(a2 + 424) = 0;
  if (!a3)
  {
    *(a2 + 538) = 0;
  }

  if (*(a1 + 328))
  {
    v13 = *(a1 + 8328);
    if (v13)
    {
      PathwayID = FigAlternateGetPathwayID(*(v13 + 8));
    }

    else
    {
      PathwayID = @".";
    }

    v15 = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a1 + 320), (a2 + 8));
    if (v15)
    {
      v54 = v15;
      Mutable = 0;
      goto LABEL_140;
    }

    segPumpStreamUpdateIndexFile(a2, *(a2 + 8), *(a2 + 8), *(a2 + 24), *(a2 + 32), PathwayID);
  }

  if (*(a2 + 876) && UpTimeNanoseconds - *(a2 + 1064) > 1000000000 * (3 * *(a1 + 8)))
  {
    *(a2 + 876) = 0;
  }

  *(a2 + 440) = UpTimeNanoseconds;
  if (!*(a2 + 472))
  {
    *(a2 + 432) = UpTimeNanoseconds;
  }

  *(a2 + 1056) = UpTimeNanoseconds;
  *(a2 + 867) = 0;
  *(a2 + 360) = -1;
  *(a2 + 368) = -1;
  v16 = *(a2 + 56);
  if (!v16)
  {
    goto LABEL_144;
  }

  if (*(a2 + 160) == 3)
  {
    FigStreamPlaylistPredictMediaSequenceAndPartForAdvance(v16, &v159, &v158, *(a2 + 192));
    v17 = v159;
    goto LABEL_28;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v16);
  if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || !*(a1 + 336) || (*(a2 + 160) & 0xFFFFFFFE) != 4)
  {
LABEL_144:
    if (!*(a1 + 336))
    {
      goto LABEL_56;
    }

    if (!*(a2 + 862))
    {
      goto LABEL_56;
    }

    if (!*(a2 + 864))
    {
      goto LABEL_56;
    }

    v27 = a1 + 392;
    if (!*(*(a1 + 392 + 16 * *a2) + 56))
    {
      goto LABEL_56;
    }

    v143 = *(*(a1 + 392 + 16 * *a2) + 56);
    v145 = a1 + 392;
    v149 = v11;
    v28 = 0;
    v29 = *(a2 + 16);
    HIDWORD(v147) = v9;
    do
    {
      Count = OUTLINED_FUNCTION_432_1();
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v28 >= Count)
      {
        ValueAtIndex = 0;
        v141 = -1;
        v36 = 1;
        v38 = 1;
        MediaSequence = -1;
        goto LABEL_95;
      }

      v31 = OUTLINED_FUNCTION_432_1();
      ValueAtIndex = CFArrayGetValueAtIndex(v31, v28);
      URL = FigRenditionReportSpecifierGetURL(ValueAtIndex);
      ++v28;
    }

    while (!segPumpRenditionReportURLsAreEqual(v29, URL));
    LastMediaSequenceNumber = FigRenditionReportSpecifierGetLastMediaSequenceNumber(ValueAtIndex);
    LastPart = FigRenditionReportSpecifierGetLastPart(ValueAtIndex);
    v141 = LastPart;
    v36 = LastPart == -1;
    MediaSequence = LastMediaSequenceNumber;
    v39 = LastMediaSequenceNumber == -1;
    v38 = LastMediaSequenceNumber == -1;
    v39 = v39 || LastPart == -1;
    if (!v39)
    {
      v11 = v149;
      goto LABEL_103;
    }

LABEL_95:
    FigMediaPlaylistGetMediaSegmentSpecifiers(v143);
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v76 = LastValue;
      if (v38)
      {
        MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(LastValue);
      }

      v11 = v149;
      if (v36)
      {
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v76);
        if (PartialSegments)
        {
          v78 = CFArrayGetCount(PartialSegments) - 1;
        }

        else
        {
          v78 = -1;
        }

        v27 = a1 + 392;
        if (MediaSequence < 0)
        {
LABEL_129:
          Mutable = 0;
          v9 = HIDWORD(v147);
          goto LABEL_130;
        }

LABEL_104:
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, @"_HLS_msn=");
        FigCFArrayAppendInt64();
        if ((v78 & 0x8000000000000000) == 0)
        {
          CFArrayAppendValue(Mutable, @"_HLS_part=");
          FigCFArrayAppendInt64();
        }

        v9 = HIDWORD(v147);
        if (!ValueAtIndex && Mutable)
        {
          if (!*(a1 + 337))
          {
            v9 = HIDWORD(v147) | 0x400;
            goto LABEL_57;
          }

          *(a1 + 339) = 1;
          v120 = segPumpSetupBlockingReload(a1, *(v27 + 16 * *a2), v80, v81, v82, v83, v84, v85, v121, v123, v125, SWORD2(v125), SBYTE6(v125), HIBYTE(v125), v127, SHIDWORD(v127), v129, v131, v133, v135, v137, v139, v141, SHIDWORD(v141), v143, SHIDWORD(v143), v145, SBYTE4(v145), v147, v149, v151, v153, v154, v158, v159, v160, *(&v160 + 1), v161, v162, *v163, *&v163[8], *&v163[16], v164, v165, *(&v165 + 1), v166, *(&v166 + 1), v167, *(&v167 + 1), v168, *(&v168 + 1), v169, v170, *(&v170 + 1), v171, *(&v171 + 1), v172);
          if (!v120)
          {
LABEL_57:
            if (*(a2 + 876))
            {
              if (Mutable || (v40 = FigGetAllocatorForMedia(), (Mutable = CFArrayCreateMutable(v40, 0, MEMORY[0x1E695E9C0])) != 0))
              {
                v41 = *(a2 + 56);
                v42 = @"YES";
                if (v41 && FigMediaPlaylistCanSkipDATERANGES(v41))
                {
                  v42 = @"v2";
                }

                CFArrayAppendValue(Mutable, @"_HLS_skip=");
                CFArrayAppendValue(Mutable, v42);
              }
            }

            if (*(a1 + 232))
            {
              if (!v153[28] && !*(a2 + 56) && !*a2)
              {
                if (Mutable || (v43 = FigGetAllocatorForMedia(), (Mutable = CFArrayCreateMutable(v43, 0, MEMORY[0x1E695E9C0])) != 0))
                {
                  CFArrayAppendValue(Mutable, @"_HLS_primary_id=");
                  CFArrayAppendValue(Mutable, *(a1 + 232));
                }
              }
            }

            if (!*(a2 + 858) && segPumpShouldRequestURLAsHTTPURL(a1, *(a2 + 16)))
            {
              if (!v153[448])
              {
                v153[448] = 1;
                AttemptNetworkMonitorSetup(a1);
              }

              if (*(a2 + 56) || *a2)
              {
                v86 = 11;
              }

              else
              {
                v86 = 10;
              }

              v87 = *(a1 + 56);
              if (v8)
              {
                v88 = v8;
              }

              else
              {
                v88 = v11;
              }

              v89 = *(a2 + 16);
              v90 = *(a1 + 216);
              v91 = *(a1 + 240);
              v92 = *a1;
              v168 = 0u;
              v166 = 0u;
              v167 = 0u;
              v165 = 0u;
              v169 = 0x100000000;
              v170 = 0u;
              v171 = 0u;
              v172 = 0;
              v71 = v151;
              segPumpCreateHTTPRequest(a1, v87, a2, v151, v88, v89, v90, v91, Mutable, __SPAIR64__(v9, v86), &v165, 0, 0, 0, segPumpIndexFileReadCallback, v92, 0, a2 + 408, v141, v143, v145, v147, v149, v151, HIDWORD(v151), v153, v154, v158, v159, v160, *(&v160 + 1), v161, v162);
              v54 = v100;
              if (!dword_1EAF16A30)
              {
LABEL_78:
                if (*(a2 + 866) || !v153[26] && *(a1 + 8280))
                {
                  v72 = OUTLINED_FUNCTION_489();
                  segPumpScheduleIndexFileLongDownloadTimer(v72, v73);
                }

                *(a2 + 1184) = 0;
                *(a2 + 400) = 0;
                FigHTTPStopAndReleaseTimer((a2 + 392));
                if (v71)
                {
                  goto LABEL_82;
                }

                goto LABEL_83;
              }

              v101 = OUTLINED_FUNCTION_348_1(qword_1EAF16A28, v93, v94, v95, v96, v97, v98, v99, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v153, *v155, v155[2], 0, 0);
              v102 = os_log_type_enabled(v101, typea);
              if (OUTLINED_FUNCTION_71_0(v102))
              {
                LODWORD(v160) = 136316162;
                *(&v160 + 4) = "segPumpSendIndexFileRequest";
                WORD6(v160) = 2114;
                OUTLINED_FUNCTION_68_0();
                v162 = v103;
                *v163 = v104;
                *&v163[2] = v105;
                *&v163[10] = v106;
                *&v163[12] = v107;
                OUTLINED_FUNCTION_47_0();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v108, v109, v110, v111, v112, v113, typea, v114);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_449(v115, v116, v117, v118, v119);
            }

            else
            {
              v44 = OUTLINED_FUNCTION_489();
              v54 = segPumpPostIndexFileRequest(v44, v45, Mutable, v46);
              if (dword_1EAF16A30)
              {
                v55 = OUTLINED_FUNCTION_348_1(qword_1EAF16A28, v47, v48, v49, v50, v51, v52, v53, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v154, SBYTE2(v154), 0, 0);
                v56 = os_log_type_enabled(v55, type);
                if (OUTLINED_FUNCTION_77_0(v56))
                {
                  LODWORD(v160) = 136315906;
                  *(&v160 + 4) = "segPumpSendIndexFileRequest";
                  WORD6(v160) = 2114;
                  OUTLINED_FUNCTION_68_0();
                  v162 = v57;
                  *v163 = v58;
                  *&v163[2] = v59;
                  OUTLINED_FUNCTION_47_0();
                  OUTLINED_FUNCTION_108();
                  _os_log_send_and_compose_impl(v60, v61, v62, v63, v64, v55, type, v65);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_420(v66, v67, v68, v69, v70);
              }
            }

            v71 = v151;
            goto LABEL_78;
          }

          goto LABEL_139;
        }

        if (Mutable)
        {
          v9 = HIDWORD(v147) | 0x400;
        }

LABEL_130:
        if (ValueAtIndex && *(a1 + 337) && *(a2 + 160) != 4)
        {
          *(a2 + 160) = 4;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v11 = v149;
    }

    v27 = a1 + 392;
LABEL_103:
    v78 = v141;
    if (MediaSequence < 0)
    {
      goto LABEL_129;
    }

    goto LABEL_104;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
  v23 = FigCFArrayGetLastValue();
  IsFragment = FigMediaSegmentSpecifierIsFragment(v23);
  v25 = FigMediaSegmentSpecifierGetMediaSequence(v23);
  v17 = v25;
  if (IsFragment)
  {
    v159 = v25;
    v26 = FigMediaSegmentSpecifierGetPartialSegments(v23);
    if (v26)
    {
      v26 = CFArrayGetCount(v26);
    }

    v158 = v26;
  }

  else
  {
    v17 = v25 + 1;
    v159 = v25 + 1;
    if (*(a1 + 16) == 0.0)
    {
      v158 = -1;
    }
  }

  FigMediaSegmentSpecifierGetPartialSegments(v23);
LABEL_28:
  v9 |= 0x400u;
  if (v17 < 0)
  {
LABEL_56:
    Mutable = 0;
    goto LABEL_57;
  }

  v18 = FigGetAllocatorForMedia();
  v19 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
  Mutable = v19;
  if (v19)
  {
    CFArrayAppendValue(v19, @"_HLS_msn=");
    FigCFArrayAppendInt64();
    if ((v158 & 0x8000000000000000) == 0)
    {
      CFArrayAppendValue(Mutable, @"_HLS_part=");
      FigCFArrayAppendInt64();
    }

    if ((v159 & 0x8000000000000000) == 0)
    {
      v21 = v158;
      *(a2 + 360) = v159;
      *(a2 + 368) = v21;
    }

    goto LABEL_57;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, v123, v125);
LABEL_139:
  v54 = v120;
LABEL_140:
  v71 = v151;
  if (v151)
  {
LABEL_82:
    CFRelease(v71);
  }

LABEL_83:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v54;
}

void AttemptNetworkMonitorSetup(uint64_t a1)
{
  if (!*(a1 + 8624))
  {
    OUTLINED_FUNCTION_261();
    if (FigCFHTTPIsHTTPBasedURL(v3))
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v6 = Mutable;
        FigCFDictionarySetValueFromKeyInDict();
        v7 = v1[1133];
        if (v7)
        {
          CFDictionarySetValue(v6, @"kFigNetworkPathEvaluatorCreateOption_InterfaceName", v7);
        }

        v8 = v1[1134];
        if (v8)
        {
          CFDictionarySetValue(v6, @"kFigNetworkPathEvaluatorCreateOption_ClientAuditToken", v8);
        }

        OUTLINED_FUNCTION_206_0();
        if (!FigNetworkPathEvaluatorCreate())
        {
          v9 = v1[1079];
          if (v9)
          {
            CFRelease(v9);
            v1[1079] = 0;
          }

          v10 = v1[1078];
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v11)
          {
            v12 = v11(v10);
          }

          else
          {
            v12 = 0;
          }

          v1[1079] = v12;
          segPumpUpdateNetworkCostHasHighSpeedHighPower(v1);
          v13 = v1[1077];
          v1[1077] = v2;
          if (v2)
          {
            CFRetain(v2);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (FigNetworkPathInformationIsHostLocal(v1[1079]))
          {
            v14 = v1[1078];
            if (v14)
            {
              CFRelease(v14);
              v1[1078] = 0;
            }
          }
        }

        CFRelease(v6);
      }

      else
      {
        OUTLINED_FUNCTION_243();

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }
}

void segPumpIndexFileReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a8;
  OUTLINED_FUNCTION_308_1();
  v13 = v12;
  v15 = v14;
  v135[16] = *MEMORY[0x1E69E9840];
  v121 = 0;
  cf = 0;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  FigRetainProxyRetain();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v16)
  {
    if ((v17 = *(v121 + 392), OUTLINED_FUNCTION_327_1(), v19) && (OUTLINED_FUNCTION_326_1(), v19) || (v17 = *(v18 + 408), OUTLINED_FUNCTION_327_1(), v19) && (OUTLINED_FUNCTION_326_1(), v19) || (v17 = *(v20 + 424), OUTLINED_FUNCTION_327_1(), v19) && (OUTLINED_FUNCTION_326_1(), v19) || (v17 = *(v21 + 400), OUTLINED_FUNCTION_327_1(), v19) && (OUTLINED_FUNCTION_326_1(), v19) || (v17 = *(v22 + 416), OUTLINED_FUNCTION_327_1(), v19) && (OUTLINED_FUNCTION_326_1(), v19) || (v17 = *(v23 + 432), *(v17 + 424) == v15) && *(v17 + 488) == v13)
    {
      if (v15)
      {
        *(v17 + 867) = 0;
        if (!*(v17 + 456))
        {
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v25 = UpTimeNanoseconds - *(v17 + 432);
          *(v17 + 456) = UpTimeNanoseconds;
          *(v17 + 464) = v25;
        }

        AllocatorForMedia = FigGetAllocatorForMedia();
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v27)
        {
          v27(v15, @"FHRP_CFNetworkTimingData", AllocatorForMedia, &v118);
        }

        if (v11)
        {
          FigCreateErrorForOSStatus(v11, &v119);
          segPumpPublishPlaylistRequestEvent(v121, *(v17 + 408), v17, v118, v15, v119, 0, 0);
          OUTLINED_FUNCTION_494();
          segPumpHandleIndexFileNetworkError();
          goto LABEL_44;
        }

        if (v9)
        {
          v135[0] = 0;
          v39 = FigGetAllocatorForMedia();
          v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v40)
          {
            v28 = v40(v15, @"FHRP_HTTPFinalURL", v39, v135);
            segPumpRTCReportingUpdatePreLTKUStats_HeadersAvailable();
            if (!v28)
            {
              segPumpStreamUpdateIndexFileURLWithResponse(v121, v17, v135[0]);
            }
          }

          else
          {
            segPumpRTCReportingUpdatePreLTKUStats_HeadersAvailable();
            v28 = 4294954514;
          }

          if (v118)
          {
            InterfaceTypeFromCFNStats = FigNetworkInterfaceGetInterfaceTypeFromCFNStats(v118);
            v42 = v121;
            *(v121 + 8644) = InterfaceTypeFromCFNStats;
            segPumpUpdateNetworkCostHasHighSpeedHighPower(v42);
          }

          if (v135[0])
          {
            CFRelease(v135[0]);
          }
        }

        else
        {
          v28 = 0;
        }

        if (v10)
        {
          if (!*(v17 + 520) && (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_296(), Empty = CMBlockBufferCreateEmpty(v29, v30, v31, (v17 + 520)), Empty) || (OUTLINED_FUNCTION_310(), Empty = CMBlockBufferAppendBufferReference(v33, v34, v35, v36, v37), Empty))
          {
            v28 = Empty;
          }

          else
          {
            v28 = segPumpVerifyM3UPlaylist(v121, v17);
            if (!v28)
            {
              goto LABEL_32;
            }

            if (dword_1EAF16A30)
            {
              LODWORD(v126) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              OUTLINED_FUNCTION_251_1();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v85 = type[0];
              v86 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
              if (OUTLINED_FUNCTION_109_0(v86))
              {
                if (v121)
                {
                  OUTLINED_FUNCTION_202_1();
                }

                v127 = 136315650;
                v128 = "segPumpIndexFileReadCallback";
                OUTLINED_FUNCTION_4_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v87, v88, v89, v90, v91, v92, v85, v93);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_524(v94, v95, v96, v97, v98);
            }
          }

LABEL_136:
          segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v8, v28);
          goto LABEL_34;
        }

LABEL_32:
        if ((v9 & 2) == 0)
        {
          goto LABEL_33;
        }

        if (!*(v121 + 48) && (segPumpIsProtocolUsedByRequest(v15) || segPumpIsProtocolUsedByRequest(v15)))
        {
          v43 = *(v17 + 416);
          if (v43)
          {
            v44 = v121;
            if (!*(v121 + 48))
            {
              *(v121 + 48) = 1;
              v45 = *(v44 + 40);
              *(v44 + 40) = v43;
              CFRetain(v43);
              if (v45)
              {
                CFRelease(v45);
              }
            }
          }
        }

        FigHTTPStopAndReleaseTimer((v17 + 504));
        v46 = FigGetUpTimeNanoseconds();
        FigGetAllocatorForMedia();
        if (*(*(OUTLINED_FUNCTION_356_1() + 8) + 48))
        {
          v47 = OUTLINED_FUNCTION_406();
          v48(v47);
        }

        FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v121 + 9312), v15, *(v121 + 9232), 0x1F0B64538, 0);
        segPumpCheckAndUpdateLowLatencyServerCompliance();
        v38 = segPumpSetWiFiStatsOnNetworkPredictor(v121, v17 + 408);
        if (!v38)
        {
          v49 = *(v17 + 280);
          if (v49)
          {
            CFRelease(v49);
            *(v17 + 280) = 0;
          }

          v50 = *(v17 + 272);
          if (v50)
          {
            CFRelease(v50);
            *(v17 + 272) = 0;
          }

          v51 = *(v17 + 424);
          if (*(v17 + 537))
          {
            if (v51)
            {
              CFRelease(v51);
              *(v17 + 424) = 0;
            }

            v52 = *(v17 + 416);
            if (v52)
            {
              CFRelease(v52);
            }

            *(v17 + 537) = 0;
          }

          else
          {
            *(v17 + 272) = *(v17 + 416);
            *(v17 + 280) = v51;
          }

          *(v17 + 496) = 0;
          *(v17 + 416) = 0;
          *(v17 + 424) = 0;
          *(v17 + 448) = v46;
          *(v17 + 472) = 0;
          v53 = *(v17 + 480);
          if (v53)
          {
            CFRelease(v53);
            *(v17 + 480) = 0;
          }

          if (*(v17 + 280))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 24))
            {
              v54 = OUTLINED_FUNCTION_173_0();
              if (!v55(v54))
              {
                v56 = *(v17 + 1080);
                if (v56)
                {
                  v57 = v56 / 2;
                }

                else
                {
                  v57 = 0;
                }

                *(v17 + 1072) = v57;
                *(v17 + 1080) = 0;
              }
            }
          }

          segPumpParseIndexFile();
          if (!v38)
          {
            if (FigRetainProxyIsInvalidated())
            {
              goto LABEL_34;
            }

            v58 = v121;
            v135[0] = 0;
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              OUTLINED_FUNCTION_279_1();
              OUTLINED_FUNCTION_26_1();
              v59();
              if (v135[0] >= 1)
              {
                if (*(v58 + 9232))
                {
                  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                  {
                    v60 = OUTLINED_FUNCTION_502();
                    v61(v60);
                  }

                  if (*(v58 + 9232))
                  {
                    OUTLINED_FUNCTION_319_1();
                    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
                    {
                      v62 = OUTLINED_FUNCTION_502();
                      v63(v62);
                    }

                    if (*(v58 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                    {
                      v64 = OUTLINED_FUNCTION_502();
                      v65(v64);
                    }
                  }
                }
              }
            }

            if (*(v121 + 337) && *v17 == *(v121 + 8600))
            {
              segPumpResumeRoundTripMonitoring(v121);
            }

            v66 = *(v17 + 56);
            if (!v66 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v66)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) < 1 || FigMediaPlaylistHasEndTag(*(v17 + 56)) || !*(v121 + 8280) || !*(v17 + 875) || !segPumpIsIndexFileResponseOutOfDate(v121, v17, v120) || (OUTLINED_FUNCTION_494(), segPumpHandleIndexFileNetworkError(), !v38))
            {
              v68 = v121;
              if (*(v121 + 337))
              {
                OUTLINED_FUNCTION_286_1();
                if (v19)
                {
                  if (!*(v68 + 346))
                  {
                    v69 = 0;
                    *type = 0.0;
                    v126 = 0.0;
                    v70 = *(v68 + 392);
                    if (v70)
                    {
                      v71 = *(v68 + 408);
                      if (v71)
                      {
                        OUTLINED_FUNCTION_292_1();
                        if (!v72 || (v73 = *(v70 + 56)) == 0 || FigMediaPlaylistGetDateStampCount(v73) < 1 || (OUTLINED_FUNCTION_292_1(), !v74) || (v75 = *(v71 + 56)) == 0 || FigMediaPlaylistGetDateStampCount(v75) < 1 || segPumpPlaylistGetImputedLiveEdgeDate(v70, &v126) || segPumpPlaylistGetImputedLiveEdgeDate(v71, type) || v126 == 0.0 || *type == 0.0 || (v76 = vabdd_f64(v126, *type), v76 <= *(v68 + 16) + *(v68 + 16)))
                        {
                          v69 = 0;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_175_0();
                          v77 = OUTLINED_FUNCTION_284();
                          OUTLINED_FUNCTION_214_1(v77, v78, v79, -15621, v80, v81, v82, v83, v117);
                          if (dword_1EAF16A30)
                          {
                            v124 = 0;
                            v123 = OS_LOG_TYPE_DEFAULT;
                            OUTLINED_FUNCTION_407_0();
                            v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                            v100 = v123;
                            v101 = os_log_type_enabled(v99, v123);
                            if (OUTLINED_FUNCTION_16_1(v101))
                            {
                              OUTLINED_FUNCTION_393_1();
                              if (!v19)
                              {
                                v102 = v103;
                              }

                              v104 = *(v68 + 16);
                              v127 = 136315906;
                              v128 = "segPumpAreLiveEdgesOutOfSync";
                              v129 = 2114;
                              v130 = v102;
                              v131 = 2048;
                              v132 = v76;
                              v133 = 2048;
                              v134 = v104;
                              OUTLINED_FUNCTION_145();
                              OUTLINED_FUNCTION_23();
                              _os_log_send_and_compose_impl(v105, v106, v107, v108, v109, v110, v100, v111);
                            }

                            OUTLINED_FUNCTION_109();
                            v69 = 1;
                            OUTLINED_FUNCTION_88_0(v112, v113, v114, v115, v116);
                          }

                          else
                          {
                            v69 = 1;
                          }
                        }
                      }
                    }

                    v68 = v121;
                    *(v121 + 346) = v69;
                  }
                }
              }

              segPumpPublishPlaylistRequestEvent(v68, *(v17 + 408), v17, v118, v15, v119, 0, 0);
              v28 = 0;
LABEL_33:
              if (!v28)
              {
                goto LABEL_34;
              }

              goto LABEL_136;
            }
          }
        }

LABEL_44:
        v28 = v38;
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  segPumpUnlockAndSendAllPendingNotifications(v8);
  FigRetainProxyRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v120)
  {
    CFRelease(v120);
  }

  if (v119)
  {
    CFRelease(v119);
  }

  if (v118)
  {
    CFRelease(v118);
  }
}

BOOL segPumpRenditionReportURLsAreEqual(const __CFURL *a1, uint64_t a2)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  CFURLCopyAbsoluteURL(a1);
  v4 = OUTLINED_FUNCTION_199();
  v5 = CFURLCopyAbsoluteURL(v4);
  v6 = v5;
  if (v2 && v5)
  {
    v7 = CFURLCopyPath(v2);
    v8 = CFURLCopyPath(v6);
    OUTLINED_FUNCTION_178();
    if (FigCFEqual())
    {
      v9 = OUTLINED_FUNCTION_177();
      v11 = FigCFHTTPDoURLHostsAndPortsMatch(v9, v10) != 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v7 = 0;
    v3 = 0;
    v12 = 0;
    v13 = 0;
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  CFRelease(v2);
  v3 = v11;
  v12 = v8;
  v13 = v7;
LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v3;
}

BOOL segPumpPlaylistIsCompliantWithBlockingReloadPolicy()
{
  OUTLINED_FUNCTION_187();
  if (FigMediaPlaylistDoesServerSupportsBlockingReload(*(v2 + 56)))
  {
    if (FigMediaPlaylistHasEndTag(*(v1 + 56)))
    {
      v3 = -15413;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = -15411;
  }

  *v0 = v3;
  return OUTLINED_FUNCTION_412_1(v3);
}

void segPumpCanContinueWithLowLatencyMode()
{
  OUTLINED_FUNCTION_629();
  v3 = v2;
  OUTLINED_FUNCTION_400();
  if (!*(v4 + 340) && *(v0 + 341) == 1)
  {
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_214_1(v27, v28, v29, -15410, v30, v31, v32, v33, v46);
    *(v0 + 340) = 1;
  }

  if (!*(v0 + 338))
  {
    v5 = -15410;
    goto LABEL_8;
  }

  if (*(v1 + 160) == 6)
  {
    v5 = -15417;
    goto LABEL_8;
  }

  if (!segPumpPlaylistIsCompliantWithBlockingReloadPolicy())
  {
    goto LABEL_42;
  }

  if (FigMediaPlaylistGetDateStampCount(*(v1 + 56)) < 1)
  {
    v5 = -15412;
    goto LABEL_8;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(*(v1 + 56));
  LastValue = FigCFArrayGetLastValue();
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(LastValue);
  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v1 + 56));
  if (!MediaSegmentSpecifiers)
  {
LABEL_32:
    v5 = -15620;
    goto LABEL_8;
  }

  Count = CFArrayGetCount(MediaSegmentSpecifiers);
  v5 = -15620;
  if (Count && PartialSegments)
  {
    if (CFArrayGetCount(PartialSegments) && FigMediaPlaylistGetPartTargetDuration(*(v1 + 56)) > 0.0)
    {
      if (!FigMediaPlaylistHasEndTag(*(v1 + 56)) && !segPumpStreamHasPreloadHint(v1))
      {
        v5 = -15415;
        goto LABEL_8;
      }

      if (!*(v0 + 345))
      {
        v10 = *(v0 + 8280);
        AllocatorForMedia = FigGetAllocatorForMedia();
        Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v10)
        {
          v13 = MEMORY[0x1E695E9C0];
          do
          {
            PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v10[1]);
            v15 = CFURLCopyHostName(PlaylistAlternateURL);
            if (v15)
            {
              v16 = v15;
              v17 = OUTLINED_FUNCTION_182_1();
              if (CFDictionaryGetValueIfPresent(v17, v18, v19))
              {
                CFArrayAppendValue(0, v10[1]);
              }

              else
              {
                v20 = FigGetAllocatorForMedia();
                theArray = CFArrayCreateMutable(v20, 0, v13);
                CFArrayAppendValue(theArray, v10[1]);
                v21 = OUTLINED_FUNCTION_182_1();
                CFDictionaryAddValue(v21, v22, v23);
                CFRelease(theArray);
              }

              CFRelease(v16);
            }

            v10 = *v10;
          }

          while (v10);
        }

        v24 = FigCFDictionaryCopyArrayOfValues();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v25 = *(v1 + 48);
        if (v25)
        {
          FigMultivariantPlaylistGetVideoGroups(v25);
          AudioGroups = FigMultivariantPlaylistGetAudioGroups(*(v1 + 48));
          FigMultivariantPlaylistGetSubtitleGroups(*(v1 + 48));
        }

        else
        {
          AudioGroups = 0;
        }

        v34 = OUTLINED_FUNCTION_502();
        *(v0 + 343) = FigAlternateAreAllAlternatesOnSameHost(v34, v35, AudioGroups, v36);
        HaveMatchingAlternates = FigAlternateDoAllHostsHaveMatchingAlternates(v24);
        *(v0 + 344) = HaveMatchingAlternates;
        if (v24)
        {
          CFRelease(v24);
          HaveMatchingAlternates = *(v0 + 344);
        }

        if (!HaveMatchingAlternates)
        {
          OUTLINED_FUNCTION_114_1();
          OUTLINED_FUNCTION_613();
          OUTLINED_FUNCTION_214_1(v39, v40, v41, -15410, v42, v43, v44, v45, v46);
        }

        *(v0 + 345) = 1;
      }

      if (!*(v0 + 343))
      {
        v5 = -15414;
        goto LABEL_8;
      }

LABEL_42:
      OUTLINED_FUNCTION_412_1(*(v0 + 339));
      if (v38)
      {
        v5 = 0;
      }

      else
      {
        v5 = -15418;
      }

      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_8:
  *v3 = v5;
  OUTLINED_FUNCTION_345_1();
}

void segPumpSetPartTargetDuration(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  if (*(a1 + 337))
  {
    if (FigMediaPlaylistGetPartTargetDuration(a2) <= 0.0)
    {
      return;
    }

    PartTargetDuration = v5;
    if (v5 <= FigMediaPlaylistGetPartTargetDuration(a2))
    {
      PartTargetDuration = FigMediaPlaylistGetPartTargetDuration(a2);
    }
  }

  else
  {
    PartTargetDuration = 0.0;
  }

  *v4 = PartTargetDuration;
  if (vabdd_f64(v5, PartTargetDuration) >= 2.22044605e-16 && dword_1EAF16A30 != 0)
  {
    OUTLINED_FUNCTION_147();
    v9 = OUTLINED_FUNCTION_251_1();
    v17 = OUTLINED_FUNCTION_126(v9, v10, v11, v12, v13, v14, v15, v16, v46, v48, v50, *v52, v52[2], v52[3], v52[4]);
    v25 = OUTLINED_FUNCTION_116_0(v17, v18, v19, v20, v21, v22, v23, v24, v47, v49, v51, v53, v54, v55, v56);
    if (OUTLINED_FUNCTION_109_0(v25))
    {
      OUTLINED_FUNCTION_264_0();
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v26, v27, v28, v29, v30, v31, v2, v32);
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v33, v34, v35, v36, v37);
  }

  v38 = vabdd_f64(PartTargetDuration, v5);
  if (*(a1 + 9760))
  {
    v39 = v38 < 2.22044605e-16;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v4);
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v41 = OUTLINED_FUNCTION_308();
      v42(v41);
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }

  v43 = *(a1 + 9232);
  if (v43)
  {
    v44 = *(a1 + 16);
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v45)
    {
      v45(v43, 0x1F0B64538, 0x1F0B43218, (v44 * 1000.0), 0);
    }
  }
}

void segPumpSetActiveHoldBack()
{
  OUTLINED_FUNCTION_369();
  v4 = *(v3 + 8168);
  if (*(v3 + 337))
  {
    v5 = v4 <= FigMediaPlaylistGetPartHoldBackDuration(v1);
    PartHoldBackDuration = v4;
    if (v5)
    {
      PartHoldBackDuration = FigMediaPlaylistGetPartHoldBackDuration(v1);
    }
  }

  else if (FigMediaPlaylistHasHoldBackDuration(v1))
  {
    v5 = v4 <= FigMediaPlaylistGetHoldBackDuration(v1);
    PartHoldBackDuration = v4;
    if (v5)
    {
      PartHoldBackDuration = FigMediaPlaylistGetHoldBackDuration(v1);
    }
  }

  else
  {
    PartHoldBackDuration = 0.0;
  }

  if (PartHoldBackDuration >= 0.0)
  {
    v7 = PartHoldBackDuration;
  }

  else
  {
    v7 = 0.0;
  }

  if (v4 != v7 && v7 > *(v0 + 8184))
  {
    *(v0 + 8184) = v7;
    v8 = OUTLINED_FUNCTION_270();
    segPumpReadyNotification(v8, v9, v10);
  }

  *(v0 + 8168) = v7;
  if (vabdd_f64(v4, v7) >= 2.22044605e-16 && dword_1EAF16A30 != 0)
  {
    OUTLINED_FUNCTION_147();
    v12 = OUTLINED_FUNCTION_362_1();
    v20 = OUTLINED_FUNCTION_126(v12, v13, v14, v15, v16, v17, v18, v19, v43, v45, v47, *v49, v49[2], v49[3], v49[4]);
    v28 = OUTLINED_FUNCTION_180_0(v20, v21, v22, v23, v24, v25, v26, v27, v44, v46, v48, v50, v51, v52, v53);
    if (OUTLINED_FUNCTION_124_0(v28))
    {
      OUTLINED_FUNCTION_264_0();
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v29, v30, v31, v32, v33, v34, v2, v35);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v36, v37, v38, v39, v40);
  }

  v41 = *(v0 + 9232);
  if (v41)
  {
    v42 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v42)
    {
      v42(v41, 0x1F0B64538, 0x1F0B43238, (v7 * 1000.0), 0);
    }
  }
}

void segPumpPublishPlaylistRequestEvent(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, const void *a6, char a7, char a8)
{
  v30 = 0;
  OUTLINED_FUNCTION_381_1();
  cf = 0;
  v25 = 0.0;
  if (v16)
  {
    v8 = v16;
    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
  }

  if (a5)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_230_1();
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v17(a5, @"FHRP_CFNetworkTransactionMetrics", v8, &cf);
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_230_1();
    v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v18)
    {
      v18(a5, 0x1F0B5D218, v8, &v29);
    }

    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt64IfPresent();
  }

  v19 = (*(a1 + 16 * *(a1 + 8600) + 392) + 680);
  while (1)
  {
    v19 = *v19;
    if (!v19)
    {
      break;
    }

    v20 = v19[22];
    if (v20)
    {
      goto LABEL_14;
    }
  }

  v20 = 0;
LABEL_14:
  v21 = FigCFHTTPCreateAddressString(v20);
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (*a3 > 2uLL)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_196E7291C[*a3];
  }

  FigMetricHLSPlaylistRequestEventCreate(AllocatorForMedia, a2, v21, 0, 0, a8, a6, cf, v28, v27, v26, v25, v23, a7, &v30);
  segPumpPublishMetricEvent(a1, v30);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v30)
  {
    CFRelease(v30);
  }
}

void segPumpHandleIndexFileNetworkError()
{
  OUTLINED_FUNCTION_218_1();
  v78 = v0;
  v79 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v72 = v8;
  v10 = v9;
  v70 = v11;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  ++*(v10 + 472);
  if (FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(*(v10 + 424), v7, v5, v3, &cf))
  {
    goto LABEL_91;
  }

  v13 = *(v10 + 480);
  v14 = cf;
  *(v10 + 480) = cf;
  if (v14)
  {
    CFRetain(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v15 = cf;
  v16 = *(v10 + 424);
  v74 = 0;
  *v75 = 0;
  if (*v10)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(*(DerivedStorage + 392) + 56) != 0;
  }

  CFErrorGetCode(cf);
  v18 = OUTLINED_FUNCTION_127_1();
  CFErrorGetDomain(v18);
  v19 = CFErrorCopyUserInfo(v15);
  if (!*(*(DerivedStorage + 392 + 16 * *v10) + 16))
  {
    OUTLINED_FUNCTION_398_0();
    v31 = 0;
    goto LABEL_56;
  }

  if (!v72 && *(v10 + 538))
  {
    v20 = 0;
    *v75 = 0;
    goto LABEL_16;
  }

  if (v7 >> 1 == 2147477204)
  {
    v20 = 0;
    v21 = 7;
LABEL_15:
    *v75 = v21;
    v74 = 2;
    goto LABEL_16;
  }

  switch(v7)
  {
    case 0xFFFFBB1F:
      v20 = 0;
      v74 = 3;
      *v75 = 3;
      goto LABEL_16;
    case 0xFFFFBE39:
      v20 = 0;
      v21 = 3;
      goto LABEL_15;
    case 0xFFFFC2FA:
    case 0xFFFFC3C7:
LABEL_39:
      v20 = 0;
      *v75 = 8;
      goto LABEL_40;
    case 0xFFFFC3C8:
      v20 = 0;
      if (*(v10 + 384) >= 2u)
      {
        v61 = 6;
      }

      else
      {
        v61 = 3;
      }

      v74 = 1;
      *v75 = v61;
LABEL_16:
      v22 = OUTLINED_FUNCTION_177();
      segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate(v22, v23, v24, v25);
      if (!*(v10 + 384) && *(v10 + 875) && *v75 == 3 && v7 == -12888)
      {
        *v75 = 0;
      }

LABEL_40:
      if (v17)
      {
        v7 = *v75;
        if (*(v10 + 868))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v7 = *v75;
      }

      if (v7 == 3)
      {
        if (*(DerivedStorage + 392 + 16 * *v10) == v10)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

LABEL_47:
      if (*(DerivedStorage + 8360) || (v7 - 9) < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v7 != 3)
        {
          goto LABEL_54;
        }
      }

      else
      {
        *v75 = 3;
      }

LABEL_51:
      if (*(DerivedStorage + 8361))
      {
        v7 = 3;
        goto LABEL_54;
      }

LABEL_53:
      v7 = 6;
      *v75 = 6;
LABEL_54:
      v30 = 0;
      v31 = 0;
      if (!v20)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    case 0xFFFFCDAB:
    case 0xFFFFCE9E:
    case 0xFFFFCE9A:
      goto LABEL_39;
  }

  OUTLINED_FUNCTION_140_0();
  CommonActionForNetworkError = segPumpGetCommonActionForNetworkError();
  if (CommonActionForNetworkError)
  {
    v31 = CommonActionForNetworkError;
LABEL_114:
    OUTLINED_FUNCTION_398_0();
    goto LABEL_56;
  }

  v20 = 0;
  v63 = *v75;
  if (v16 || *v75 != 1)
  {
    goto LABEL_109;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v65 = CFErrorCreate(AllocatorForMedia, @"CoreMediaErrorDomain", -12938, v19);
  if (v65)
  {
    v20 = v65;
    v76 = 0;
    v77[0] = 0;
    RecommendedAction = FigStreamingNetworkErrorGetRecommendedAction(v65, v77, &v76);
    if (RecommendedAction)
    {
      v30 = RecommendedAction;
      OUTLINED_FUNCTION_398_0();
LABEL_55:
      CFRelease(v20);
      v31 = v30;
      goto LABEL_56;
    }

    v63 = v77[0];
    if (v77[0] == 2)
    {
      v63 = 7;
    }

    *v75 = v63;
LABEL_109:
    if (v63 == 8)
    {
      goto LABEL_40;
    }

    goto LABEL_16;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v68, v70, v71);
  v31 = v67;
  if (v67)
  {
    goto LABEL_114;
  }

  v7 = *v75;
LABEL_56:
  if (v19)
  {
    CFRelease(v19);
  }

  if (!v31)
  {
    if (*(DerivedStorage + 336) && *v10 == *(DerivedStorage + 8600))
    {
      segPumpSendPlaylistUpdateNotification(DerivedStorage, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
    }

    if (!*(v10 + 538) || v7)
    {
      if (v7 == 1)
      {
        segPumpResetConnectionByPreservingConnectionStats(DerivedStorage, v10 + 408);
        v32 = OUTLINED_FUNCTION_177();
        if (!segPumpPostIndexFileRequest(v32, v33, 0, 0))
        {
          v34 = OUTLINED_FUNCTION_177();
          segPumpAppendErrorLogEntryWithCFError(v34, v35, v36, v37, 1, 3);
        }

        goto LABEL_91;
      }
    }

    else if (v72)
    {
      v7 = 6;
    }

    else
    {
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_156_0();
      segPumpCopyIndexFileFromCache();
      v39 = *(v10 + 520);
      if (!v38 && v39)
      {
        OUTLINED_FUNCTION_408_0();
        OUTLINED_FUNCTION_186();
        segPumpParseIndexFile();
      }

      if (v38 == 0 && v39 != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = 6;
      }
    }

    Code = CFErrorGetCode(cf);
    v41 = CFErrorGetCode(cf);
    if (Code == -17633 && v7 == 3)
    {
      OUTLINED_FUNCTION_114_1();
      v51 = OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_214_1(v51, v52, v53, v54, v55, v56, v57, v58, v68);
LABEL_89:
      v59 = OUTLINED_FUNCTION_177();
      segPumpSendIndexFileRequest(v59, v60, 0);
      goto LABEL_91;
    }

    if (v41 == -15416)
    {
      if (v7 == 3)
      {
        v43 = 3;
      }

      else
      {
        v43 = 1;
      }

      LODWORD(v69) = 1;
      HIDWORD(v69) = v43;
      OUTLINED_FUNCTION_613();
      OUTLINED_FUNCTION_214_1(v44, v45, v46, -15410, v47, v48, v49, v50, v69);
      if (v7 != 6)
      {
        if (v7 != 3)
        {
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      segPumpSendEndCallbackForAllActiveStreams();
    }

    else
    {
      segPumpHandleCommonNetworkError(v70);
    }
  }

LABEL_91:
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_209_1();
}

uint64_t segPumpRTCReportingUpdatePreLTKUStats_HeadersAvailable()
{
  OUTLINED_FUNCTION_369();
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  VTable = CMBaseObjectGetVTable();
  v4 = *(VTable + 16);
  result = VTable + 16;
  if (*(v4 + 40))
  {
    v5 = OUTLINED_FUNCTION_279_1();
    result = v6(v1, &v51, &v50, &v49, 0, &v48, 0, &v47, v5);
    if (v51 >= 1)
    {
      if (*(v0 + 9232))
      {
        v7 = OUTLINED_FUNCTION_355_1();
        v8 = *(v7 + 16);
        result = v7 + 16;
        if (*(v8 + 32))
        {
          v9 = OUTLINED_FUNCTION_171();
          result = v10(v9);
        }

        if (*(v0 + 9232))
        {
          v11 = CMBaseObjectGetVTable();
          v12 = *(v11 + 16);
          result = v11 + 16;
          if (*(v12 + 32))
          {
            v13 = OUTLINED_FUNCTION_171();
            result = v14(v13);
          }
        }
      }
    }
  }

  if (v50 >= 1 && *(v0 + 9232))
  {
    v15 = OUTLINED_FUNCTION_355_1();
    v16 = *(v15 + 16);
    result = v15 + 16;
    if (*(v16 + 32))
    {
      v17 = OUTLINED_FUNCTION_171();
      result = v18(v17);
    }

    if (*(v0 + 9232))
    {
      v19 = CMBaseObjectGetVTable();
      v20 = *(v19 + 16);
      result = v19 + 16;
      if (*(v20 + 32))
      {
        v21 = OUTLINED_FUNCTION_171();
        result = v22(v21);
      }
    }
  }

  if (v49 >= 1 && *(v0 + 9232))
  {
    v23 = OUTLINED_FUNCTION_355_1();
    v24 = *(v23 + 16);
    result = v23 + 16;
    if (*(v24 + 32))
    {
      v25 = OUTLINED_FUNCTION_171();
      result = v26(v25);
    }

    if (*(v0 + 9232))
    {
      v27 = CMBaseObjectGetVTable();
      v28 = *(v27 + 16);
      result = v27 + 16;
      if (*(v28 + 32))
      {
        v29 = OUTLINED_FUNCTION_171();
        result = v30(v29);
      }
    }
  }

  if (v48 >= 1 && *(v0 + 9232))
  {
    v31 = OUTLINED_FUNCTION_355_1();
    v32 = *(v31 + 16);
    result = v31 + 16;
    if (*(v32 + 32))
    {
      v33 = OUTLINED_FUNCTION_171();
      result = v34(v33);
    }

    if (*(v0 + 9232))
    {
      v35 = CMBaseObjectGetVTable();
      v36 = *(v35 + 16);
      result = v35 + 16;
      if (*(v36 + 32))
      {
        v37 = OUTLINED_FUNCTION_171();
        result = v38(v37);
      }
    }
  }

  if (v47 >= 1 && *(v0 + 9232))
  {
    v39 = OUTLINED_FUNCTION_355_1();
    v40 = *(v39 + 16);
    result = v39 + 16;
    if (*(v40 + 32))
    {
      v41 = OUTLINED_FUNCTION_171();
      result = v42(v41);
    }

    if (*(v0 + 9232))
    {
      v43 = CMBaseObjectGetVTable();
      v44 = *(v43 + 16);
      result = v43 + 16;
      if (*(v44 + 32))
      {
        v45 = OUTLINED_FUNCTION_298();
        return v46(v45);
      }
    }
  }

  return result;
}

void segPumpCheckAndUpdateLowLatencyServerCompliance()
{
  OUTLINED_FUNCTION_369();
  if (*(v3 + 8) && *(v0 + 16) <= 0.0)
  {
    return;
  }

  if (v1)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_200_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v4 = OUTLINED_FUNCTION_515();
      if (!v5(v4))
      {
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_362_1();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_124_0(v7))
          {
            OUTLINED_FUNCTION_253_1();
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_65();
            _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, 0, v14);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_345_0(v18, v19, v20, v21, v22);
        }

        *(v0 + 338) = 1;
        return;
      }
    }

    if (segPumpIsProtocolUsedByRequest(v1))
    {
      *(v0 + 338) = 1;
LABEL_16:
      if (!*(v0 + 340) && FigNetworkInterfaceReporterECNRefused(*(v0 + 9312)) && FigNetworkInterfaceReporterGetInterfaceType(*(v0 + 9312)))
      {
        *(v0 + 341) = 1;
      }

      if (!FigNetworkInterfaceReporterDoesSupportSACK(*(v0 + 9312)))
      {
        FigNetworkInterfaceReporterGetInterfaceType(*(v0 + 9312));
      }

      return;
    }

    if (!segPumpIsProtocolUsedByRequest(v1) || !*(v0 + 338))
    {
      *(v0 + 338) = 0;
      return;
    }

    v23 = segPumpCheckPriorityHeaderLowLatencyServerCompliance(v1);
    *(v0 + 338) = v23;
    if (v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v2 && (Value = CFDictionaryGetValue(v2, *MEMORY[0x1E69615E8])) != 0)
    {
      v16 = Value;
      v17 = 1;
      if (CFStringCompare(Value, @"h2", 1uLL))
      {
        v17 = CFStringCompare(v16, @"h3", 1uLL) == kCFCompareEqualTo;
      }
    }

    else
    {
      v17 = 1;
    }

    *(v0 + 338) = v17;
  }
}

void segPumpParseIndexFile()
{
  OUTLINED_FUNCTION_193();
  v1069 = v2;
  v1081 = v1;
  v4 = v3;
  LODWORD(v1045) = v5;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v12 = v11;
  v1181 = *MEMORY[0x1E69E9840];
  v13 = v11 + 0x2000;
  HIDWORD(v1172.info) = 0;
  v14 = (v0 + 48);
  StartOffset = !*(v0 + 48) && !*(v0 + 56) && *v0 == 0;
  v1171 = 0;
  v1172.isa = 0;
  v1169 = 0;
  valuePtr = 0;
  *(v0 + 860) = 1;
  v16 = OUTLINED_FUNCTION_266();
  segPumpStreamUpdateIndexExpectedArrival(v16, v17, 0);
  v18 = "segPumpParseIndexFile";
  v1132 = v14;
  v1143 = v13;
  if (CMBlockBufferGetDataLength(*(v10 + 520)) <= 1)
  {
    OUTLINED_FUNCTION_126_1();
    OUTLINED_FUNCTION_129_1();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = OUTLINED_FUNCTION_444_1(os_log_and_send_and_compose_flags_and_os_log_type, v20, v21, v22, v23, v24, v25, v26, v892, v909, v924, v939, v953, v966, v979, v991, message, v1016, v1031, v1045, v1057, v1069, v1081, v1093, v1106, v1119, v14, v13, v1154, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
    if (OUTLINED_FUNCTION_109_0(v27))
    {
      if (v12)
      {
        OUTLINED_FUNCTION_164_1();
      }

      LODWORD(v1172.data) = 136315650;
      *(&v1172.data + 4) = "segPumpParseIndexFile";
      WORD2(v1172.length) = 2114;
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_117();
      OUTLINED_FUNCTION_11_1();
      _os_log_send_and_compose_impl(v28, v29, v30, v31, v32, v33, v7, v34);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524(v37, v38, v39, v40, v41);
    if (!*(v10 + 820))
    {
      OUTLINED_FUNCTION_114_1();
      v154 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_214_1(v154, v155, v156, -12887, v157, v158, v159, v160, v893);
    }

    HasEndTag = *(v10 + 520);
    if (HasEndTag)
    {
      CFRelease(HasEndTag);
      *(v10 + 520) = 0;
    }

    v50 = *(v10 + 820) + 1;
    *(v10 + 820) = v50;
    if (v50 >= 3)
    {
      OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_129_1();
      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v59 = OUTLINED_FUNCTION_444_1(v51, v52, v53, v54, v55, v56, v57, v58, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1107, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      if (OUTLINED_FUNCTION_109_0(v59))
      {
        if (v12)
        {
          OUTLINED_FUNCTION_164_1();
        }

        LODWORD(v1172.data) = 136315906;
        *(&v1172.data + 4) = "segPumpParseIndexFile";
        WORD2(v1172.length) = 2114;
        OUTLINED_FUNCTION_5_1();
        *v1175 = 1024;
        *&v1175[2] = v60;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_11_1();
        _os_log_send_and_compose_impl(v61, v62, v63, v64, v65, v66, v7, v67);
      }

      OUTLINED_FUNCTION_418_1();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_524(v94, v95, v96, v97, v98);
      if (*(v12 + 8328))
      {
        OUTLINED_FUNCTION_57_0(v99, v100, v101, v102, @"CoreMediaErrorDomain", @"More than 2 empty playlists in a row.", v103, v104, v894, v911, v926, v941, v955, v968, v980, v992, messageb, v1018, v1033, v1046, v1058, v1070, v1082);
        segPumpHandleIndexFileNetworkError();
      }

      else
      {
        OUTLINED_FUNCTION_44_1();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v894, v911, v926);
      }

      LOBYTE(v18) = 0;
      v1108 = 0;
      v68 = 0;
      goto LABEL_681;
    }

    v68 = 0;
    v1108 = 0;
    v69 = 0;
    LODWORD(v18) = 0;
    v70 = 0;
    LODWORD(v1155) = 0;
LABEL_559:
    if ((v1172.info & 0x300000000) != 0)
    {
      goto LABEL_560;
    }

    HasEndTag = *(v10 + 56);
    if (!HasEndTag)
    {
      goto LABEL_560;
    }

    HasEndTag = FigMediaPlaylistHasEndTag(HasEndTag);
    if (HasEndTag)
    {
      goto LABEL_560;
    }

    if (*(v10 + 866))
    {
      v70 = 1;
    }

    ++*(v10 + 384);
    if (dword_1EAF16A30)
    {
      HIDWORD(v1045) = v18;
      StartOffset = v68;
      OUTLINED_FUNCTION_126_1();
      v708 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v701, v702, v703, v704, v705, v706, v707, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
      v716 = OUTLINED_FUNCTION_51_1(v708, v709, v710, v711, v712, v713, v714, v715, v904, v919, v934, v948, v961, v974, v986, v998, messageh, v1026, v1040, v1052, v1064, v1076, v1088, v1101, v1114, v1127, v1138, v1149, v1162, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      if (OUTLINED_FUNCTION_16_1(v716))
      {
        if (v12)
        {
          OUTLINED_FUNCTION_164_1();
        }

        OUTLINED_FUNCTION_174_1();
        LODWORD(v1172.data) = 136316162;
        *(&v1172.data + 4) = v717;
        WORD2(v1172.length) = 2114;
        OUTLINED_FUNCTION_5_1();
        *v1175 = v718;
        *&v1175[2] = v719;
        *&v1175[10] = 1024;
        *&v1175[12] = v720;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_11_1();
        _os_log_send_and_compose_impl(v721, v722, v723, v724, v725, v726, v4, v727);
        OUTLINED_FUNCTION_204_1();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v840, v841, v842, v843, v844);
      LODWORD(v18) = HIDWORD(v1045);
    }

    HasEndTag = *(v10 + 56);
    if (!HasEndTag)
    {
      goto LABEL_560;
    }

    if (*(v12 + 336))
    {
      goto LABEL_560;
    }

    if (*(v10 + 1056) - *(v10 + 1064) < 1500000000 * *(v12 + 8))
    {
      goto LABEL_560;
    }

    HasEndTag = FigMediaPlaylistHasEndTag(HasEndTag);
    if (HasEndTag)
    {
      goto LABEL_560;
    }

    OUTLINED_FUNCTION_57_0(HasEndTag, v42, v43, v44, @"CoreMediaErrorDomain", @"Playlist File unchanged for longer than 1.5 * target duration", v47, v48, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
    segPumpHandleIndexFileNetworkError();
    if (!HasEndTag)
    {
      goto LABEL_560;
    }

    v14 = v1132;
    goto LABEL_617;
  }

  *(v10 + 820) = 0;
  v35 = *(v12 + 8856);
  v1017 = v4;
  LODWORD(v1119) = v7;
  if (v35)
  {
    Count = CFArrayGetCount(v35);
  }

  else
  {
    Count = 0;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (FigCFHTTPCopyQueryParamsAsDict(*(v10 + 16), &v1169))
  {
    goto LABEL_667;
  }

  v1094 = Count;
  messagea = v9;
  OUTLINED_FUNCTION_319_1();
  v72 = (v10 + 56);
  v927 = *(v12 + 8344);
  v942 = v1169;
  v895 = v73;
  v912 = *(v12 + 8568);
  v1155 = v73;
  OUTLINED_FUNCTION_135_1();
  v82 = FigStreamPlaylistParse(v74, v75, v76, v77, v78, v79, v80, v81, v895, v912, v927, v942, v14, (v10 + 56));
  if (v82)
  {
LABEL_24:
    v83 = 0;
    goto LABEL_25;
  }

  if (!*v72)
  {
    v83 = 0;
    goto LABEL_53;
  }

  v84 = *(v12 + 9760);
  if (v84)
  {
    v85 = 0;
    v86 = 0;
    v87 = v12 + 392;
    do
    {
      if (*(*v87 + 16))
      {
        v88 = *(*v87 + 56);
        if (!v88)
        {
          break;
        }

        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v88);
        if (!MediaSegmentSpecifiers || CFArrayGetCount(MediaSegmentSpecifiers) < 1)
        {
          break;
        }
      }

      v85 = v86 > 1;
      v87 += 16;
      ++v86;
    }

    while (v86 != 3);
    if (v85)
    {
      v18 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v18 = MEMORY[0x1E695E4C0];
    }

    v90 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v90)
    {
      goto LABEL_164;
    }

    v90(v84, @"AfmfpbProperty_AllActiveStreamHadMediaFiles", *v18);
    v14 = v1132;
    OUTLINED_FUNCTION_319_1();
    if (v91)
    {
      goto LABEL_667;
    }
  }

  if (!*(v12 + 8328))
  {
    goto LABEL_24;
  }

  v92 = *v10 == 1 || *v10 == *(v12 + 8600);
  if (!v92)
  {
    goto LABEL_24;
  }

  if (FigMediaPlaylistGetPlaylistType(*v72) == 2)
  {
    v93 = OUTLINED_FUNCTION_249_1();
    v83 = FigMediaPlaylistUtilitySetFigAlternateBitrateCurve(v93, *(v10 + 56), *v10);
  }

  else
  {
    v83 = 0;
  }

  v165 = *(v12 + 9760);
  if (v165)
  {
    if (*v10 == *(v12 + 8600))
    {
      v166 = kFigAlternateMonitorForPlaybackBitrateProperty_MainStreamPlaylist;
    }

    else
    {
      v166 = kFigAlternateMonitorForPlaybackBitrateProperty_AudioStreamPlaylist;
    }

    v167 = *(v10 + 56);
    v168 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v168)
    {
      goto LABEL_164;
    }

    if (!v168(v165, *v166, v167))
    {
      v169 = *(v12 + 9760);
      if (segPumpConnectedInterfaceIsWWAN(v12))
      {
        v170 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v170 = MEMORY[0x1E695E4C0];
      }

      v171 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      v14 = v1132;
      if (v171)
      {
        v172 = v171(v169, @"AfmfpbProperty_ConnectedInterfaceIsWWAN", *v170);
        v18 = 0;
        if (!v172)
        {
          v83 = 0;
          OUTLINED_FUNCTION_319_1();
          goto LABEL_25;
        }

        goto LABEL_668;
      }

LABEL_164:
      LOBYTE(v18) = 0;
      v1108 = 0;
      v68 = 0;
LABEL_165:
      v4 = v1017;
      goto LABEL_681;
    }

LABEL_667:
    LOBYTE(v18) = 0;
LABEL_668:
    v1108 = 0;
    v68 = 0;
    goto LABEL_165;
  }

LABEL_25:
  if (*v72)
  {
    v1171 = FigMediaPlaylistGetMessagingDelayTime(*v72) / v18;
  }

LABEL_53:
  valuePtr = (FigGetUpTimeNanoseconds() - UpTimeNanoseconds) / v18;
  if (!v1143[1088])
  {
    v1143[1088] = 1;
    if (*(v12 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_333();
        v136();
      }

      if (*(v12 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_193_0();
        OUTLINED_FUNCTION_333();
        v137();
      }
    }
  }

  v105 = *MEMORY[0x1E695E480];
  v1032 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v111 = CFNumberCreate(v105, kCFNumberSInt64Type, &v1171);
  if (*(v12 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 120))
    {
      v112 = OUTLINED_FUNCTION_193_0();
      v113(v112);
    }

    if (*(v12 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 120))
    {
      v114 = OUTLINED_FUNCTION_193_0();
      v115(v114);
    }
  }

  v1108 = v111;
  if (StartOffset && *v72 && FigMediaPlaylistGetXPCClientObject(*v72))
  {
    FigMediaPlaylistGetXPCClientObject(*v72);
    LOBYTE(v18) = 0;
    if (FigStartForwardingMediaServicesProcessDeathNotification())
    {
      v4 = v1017;
      goto LABEL_670;
    }

    v83 = 0;
  }

  if (*v1155)
  {
    v116 = CFArrayGetCount(*v1155);
  }

  else
  {
    v116 = 0;
  }

  v117 = BYTE4(v1172.info);
  HIDWORD(v1045) = BYTE4(v1172.info) & 1;
  if (!v82)
  {
    if (*v72)
    {
      if ((v1172.info & 0x100000000) == 0)
      {
        v118 = OUTLINED_FUNCTION_266();
        v83 = segPumpSetupBlockingReload(v118, v119, v120, v121, v122, v123, v124, v125, v893, v910, v925, SWORD2(v925), SBYTE6(v925), HIBYTE(v925), v940, SHIDWORD(v940), v954, v967, v979, v991, messagea, v1017, v1032, SHIDWORD(v1032), v1045, 0, v1057, SBYTE4(v1057), v1069, v1081, v1094, v111, v1119, v1132, v1143, v1155, *v1167, type, v1169, valuePtr, v1171, v1172.isa, v1172.info, v1172.data, v1172.length, v1173, v1174, *v1175, *&v1175[8], *&v1175[16], v1176, v1177.value, *&v1177.timescale, v1177.epoch, v1178, v1179, v1180);
        if (v83)
        {
          goto LABEL_222;
        }
      }
    }
  }

  if (!*(v12 + 337))
  {
    v126 = OUTLINED_FUNCTION_266();
    segPumpStreamCancelPreloadReadAndResetData(v126, v127);
    v128 = OUTLINED_FUNCTION_266();
    segPumpStreamCancelPreloadMapReadAndResetData(v128, v129);
  }

  if (v82)
  {
    v135 = (v117 & 1) == 0;
LABEL_95:
    HIDWORD(v991) = v135;
    goto LABEL_96;
  }

  if (*v72 && FigMediaPlaylistHasSkipDeltaBoundary(*v72))
  {
    *(v10 + 876) = 1;
  }

  if ((v117 & 1) == 0)
  {
    if (*v72)
    {
      if (FigMediaPlaylistGetPlaylistType(*v72) == 2 && FigMediaPlaylistGetPlaylistActiveDurationSecs(*v72) < 300.0)
      {
        v130 = *(v12 + 96);
        v131 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v131)
        {
          goto LABEL_222;
        }

        v132 = 0x1F0B63558;
        v133 = *MEMORY[0x1E695E4C0];
        v134 = v130;
        goto LABEL_491;
      }

      if (FigMediaPlaylistGetPlaylistType(*v72) != 2)
      {
        v161 = *(v12 + 96);
        v162 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v162)
        {
          goto LABEL_222;
        }

        v163 = *MEMORY[0x1E695E4C0];
        if (v162(v161, 0x1F0B63558, *MEMORY[0x1E695E4C0]))
        {
          goto LABEL_222;
        }

        v164 = *(v12 + 96);
        v131 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v131)
        {
          goto LABEL_222;
        }

        v132 = 0x1F0B63578;
        v134 = v164;
        v133 = v163;
LABEL_491:
        v83 = v131(v134, v132, v133);
        if (v83)
        {
          goto LABEL_222;
        }

        goto LABEL_94;
      }
    }

    v83 = 0;
LABEL_94:
    v135 = 1;
    goto LABEL_95;
  }

  HIDWORD(v991) = 0;
LABEL_96:
  if (StartOffset)
  {
    v138 = *(v12 + 9232);
    if (v138)
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_165_1();
        v139(v138);
      }
    }
  }

  v140 = *(v10 + 1080);
  if (v140 > *(v12 + 9256))
  {
    *(v12 + 9256) = v140;
    v141 = *(v12 + 9232);
    if (v141)
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        OUTLINED_FUNCTION_165_1();
        v142(v141);
      }
    }
  }

  if (v82)
  {
    v14 = v1132;
    goto LABEL_182;
  }

  v14 = v1132;
  if (*v72 || *v1132)
  {
    if (messagea && v1119)
    {
      v143 = FigCFHTTPCreateURLString(*(v10 + 16));
      DataLength = CMBlockBufferGetDataLength(*(v10 + 520));
      v83 = FigCFHTTPCreateCacheHeaders(v143, DataLength, messagea, 0, &v1172);
      if (v143)
      {
        CFRelease(v143);
      }

      if (v83)
      {
        goto LABEL_222;
      }
    }

    if ((v991 & 0x100000000) != 0)
    {
      v145 = *(v12 + 296);
      if (!v145)
      {
        if (!*v72)
        {
          goto LABEL_167;
        }

        if (!FigMediaPlaylistHasEndTag(*v72))
        {
          goto LABEL_167;
        }

        v146 = segPumpStreamHasMediaFiles(v10);
        if (!v1119 || !v146)
        {
          goto LABEL_167;
        }

LABEL_127:
        segPumpEnsurePlaylistCache(v12);
        if (v149)
        {
          goto LABEL_222;
        }

        if (HIDWORD(v1045))
        {
          v83 = FigStreamingCacheSetMasterPlaylist(*(v12 + 304), *(v10 + 520), v1172.isa);
          if (v83)
          {
            LOBYTE(v18) = 1;
            v4 = v1017;
            v68 = v1032;
            goto LABEL_680;
          }
        }

        else if (!*(v10 + 64) && (OUTLINED_FUNCTION_515(), segPumpCreateCacheForStream()) || (segPumpSetPlaylistForStreamCache(*(v12 + 304), v10, *(v10 + 520), v1172.isa), (v83 = v150) != 0))
        {
          v4 = v1017;
          v68 = v1032;
LABEL_294:
          v382 = OUTLINED_FUNCTION_266();
          segPumpSetupCommonCryptKeyData(v382);
          LOBYTE(v18) = 0;
          goto LABEL_681;
        }

        goto LABEL_167;
      }
    }

    else
    {
      if (*v1132)
      {
        v147 = *(v12 + 8344);
        PlaylistVariables = FigMultivariantPlaylistGetPlaylistVariables(*v1132);
        *(v12 + 8344) = PlaylistVariables;
        if (PlaylistVariables)
        {
          CFRetain(PlaylistVariables);
        }

        if (v147)
        {
          CFRelease(v147);
        }
      }

      v145 = *(v12 + 296);
      if (!v145)
      {
        if (!v1119)
        {
          goto LABEL_167;
        }

        goto LABEL_127;
      }
    }

    v151 = (v12 + 296);
    v152 = StartOffset ^ 1;
    if (!v1119)
    {
      v152 = 1;
    }

    if ((v152 & 1) == 0)
    {
      v83 = FigStreamingCacheSetMasterPlaylist(v145, *(v10 + 520), v1172.isa);
      if (v83)
      {
        goto LABEL_222;
      }
    }

    if (!*v72)
    {
      goto LABEL_167;
    }

    if (!FigMediaPlaylistHasEndTag(*v72))
    {
      goto LABEL_167;
    }

    if (!*v72)
    {
      goto LABEL_167;
    }

    v153 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
    if (!v153 || CFArrayGetCount(v153) < 1 || !*v151)
    {
      goto LABEL_167;
    }

    if (v1143[704])
    {
      if (!v1143[20] || *(v12 + 392) != v10)
      {
LABEL_167:
        OUTLINED_FUNCTION_277_0();
        if (v92)
        {
          if (*v72)
          {
            v173 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
            if (v173)
            {
              if (CFArrayGetCount(v173) >= 1)
              {
                FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
                FirstValue = FigCFArrayGetFirstValue();
                StartOffset = FirstValue;
                if (*(v12 + 8608))
                {
                  v182 = *(v10 + 24);
                  v1120 = *(v10 + 16);
                  MediaFilePrivateData = segPumpGetMediaFilePrivateData(FirstValue, v175, v176, v177, v178, v179, v180, v181);
                  segPumpEnsureMediaSegmentURLs(StartOffset, v1120, v182, v184, v185, v186, v187, v188);
                  if (MediaFilePrivateData[3])
                  {
                    v1121 = *(v12 + 8608);
                    v189 = *(v10 + 16);
                    v1057 = *(v10 + 24);
                    v190 = segPumpGetMediaFilePrivateData(StartOffset, v175, v176, v177, v178, v179, v180, v181);
                    segPumpEnsureMediaSegmentURLs(StartOffset, v189, v1057, v191, v192, v193, v194, v195);
                    if (!FigCFHTTPURLHostEqual(v1121, v190[3]))
                    {
                      FigReportingAgentStatsAddToCountValue(*(v12 + 9232));
                    }
                  }

                  v1119 = *(v12 + 8608);
                }

                else
                {
                  v1119 = 0;
                }

                v197 = *(v10 + 16);
                v196 = *(v10 + 24);
                v198 = segPumpGetMediaFilePrivateData(StartOffset, v175, v176, v177, v178, v179, v180, v181);
                segPumpEnsureMediaSegmentURLs(StartOffset, v197, v196, v199, v200, v201, v202, v203);
                v204 = v198[3];
                *(v12 + 8608) = v204;
                if (v204)
                {
                  CFRetain(v204);
                }

                v14 = v1132;
                if (v1119)
                {
                  CFRelease(v1119);
                }
              }
            }
          }
        }

        goto LABEL_182;
      }
    }

    else if (!v1143[21])
    {
      goto LABEL_167;
    }

    if (segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream() || *(v10 + 1152))
    {
      goto LABEL_222;
    }

    if (v1119 && *(v10 + 64))
    {
      segPumpSetPlaylistForStreamCache(*v151, v10, *(v10 + 520), v1172.isa);
      v83 = v890;
      if (v890)
      {
        goto LABEL_222;
      }
    }

    else
    {
      v83 = 0;
    }

    goto LABEL_167;
  }

LABEL_182:
  v205 = *(v10 + 520);
  if (v205)
  {
    CFRelease(v205);
    *(v10 + 520) = 0;
  }

  if (v82)
  {
    goto LABEL_200;
  }

  if (!*v10)
  {
    v206 = *v72;
    if (!*v72)
    {
LABEL_227:
      if (*v14)
      {
        v279 = 0;
        v280 = 1;
        if (v83)
        {
          goto LABEL_222;
        }

        goto LABEL_231;
      }

      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v893, v910, v925);
LABEL_222:
      v4 = v1017;
LABEL_223:
      v68 = v1032;
      goto LABEL_292;
    }

    for (i = 0; ; ++i)
    {
      ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(v206);
      if (ContentKeySpecifiers)
      {
        ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
      }

      if (i >= ContentKeySpecifiers)
      {
        goto LABEL_226;
      }

      v209 = FigMediaPlaylistGetContentKeySpecifiers(*v72);
      ValueAtIndex = CFArrayGetValueAtIndex(v209, i);
      if (FigContentKeySpecifierGetKeySystem(ValueAtIndex) == 1 && (FigContentKeySpecifierGetEncryptionMethod(ValueAtIndex) == 2 || FigContentKeySpecifierGetEncryptionMethod(ValueAtIndex) == 1))
      {
        break;
      }

      v206 = *v72;
    }

    v211 = *(v12 + 8328);
    if (v211)
    {
      v212 = *(v211 + 8);
      if (v212)
      {
        FigAlternateSetIsFairPlayStreamingVideoAlternate(v212, 1);
        v213 = OUTLINED_FUNCTION_249_1();
        if (!FigAlternateHasValidCodecs(v213) || (v214 = OUTLINED_FUNCTION_249_1(), !FigAlternateWillPlayIfFairplayProtected(v214)))
        {
          OUTLINED_FUNCTION_44_1();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v893, v910, v925);
          v82 = v205;
LABEL_200:
          if ((v82 & 0xFFFFFFFB) == 0xFFFFCE9A)
          {
            v68 = v1032;
            if (v82 != -12646)
            {
              v215 = OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_214_1(v215, v216, v217, v218, v219, v220, v221, v222, 0x200000001);
            }

            if (*(v12 + 8280))
            {
              OUTLINED_FUNCTION_126_1();
              OUTLINED_FUNCTION_129_1();
              v239 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v240 = os_log_type_enabled(v239, HIBYTE(type));
              if (OUTLINED_FUNCTION_28_1(v240))
              {
                OUTLINED_FUNCTION_76_1();
                OUTLINED_FUNCTION_174_1();
                LODWORD(v1172.data) = 136315906;
                *(&v1172.data + 4) = "segPumpParseIndexFile";
                WORD2(v1172.length) = 2114;
                OUTLINED_FUNCTION_5_1();
                *v1175 = v251;
                *&v1175[2] = v252;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_11_1();
                _os_log_send_and_compose_impl(v253, v254, v255, v256, v257, v258, HIBYTE(type), v259);
              }

              LODWORD(v18) = HIDWORD(v1045);
              OUTLINED_FUNCTION_16();
              OUTLINED_FUNCTION_417(v260, v261, v262, v263, v264);
              OUTLINED_FUNCTION_57_0(v265, v266, v267, v268, @"CoreMediaErrorDomain", @"playlist parse error.", v269, v270, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
              segPumpHandleIndexFileNetworkError();
              v4 = v1020;
              v14 = v1132;
              goto LABEL_293;
            }

            v4 = v1017;
LABEL_292:
            LODWORD(v18) = HIDWORD(v1045);
            goto LABEL_293;
          }

          if (v82 == -17633)
          {
            if (*(v10 + 876))
            {
              *(v10 + 876) = 0;
              OUTLINED_FUNCTION_57_0(v205, v106, v107, v108, @"CoreMediaErrorDomain", @"Could not apply Playlist delta", v109, v110, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
              segPumpHandleIndexFileNetworkError();
            }

            else
            {
              OUTLINED_FUNCTION_360_1();
              v241 = OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_214_1(v241, v242, v243, -17633, v244, v245, v246, v247, v893);
              segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(*v12, 4294949663);
            }

            goto LABEL_222;
          }

          if (v82 == -12885)
          {
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_126_1();
              v230 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v223, v224, v225, v226, v227, v228, v229, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
              v238 = OUTLINED_FUNCTION_51_1(v230, v231, v232, v233, v234, v235, v236, v237, v896, v913, v928, v943, v956, v969, v981, v993, messagec, v1019, v1034, v1047, v1059, v1071, v1083, v1095, v1109, v1122, v1133, v1144, v1156, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
              if (OUTLINED_FUNCTION_16_1(v238))
              {
                OUTLINED_FUNCTION_76_1();
                OUTLINED_FUNCTION_174_1();
                LODWORD(v1172.data) = 136315906;
                *(&v1172.data + 4) = "segPumpParseIndexFile";
                WORD2(v1172.length) = 2114;
                OUTLINED_FUNCTION_5_1();
                *v1175 = v482;
                *&v1175[2] = v483;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_11_1();
                _os_log_send_and_compose_impl(v484, v485, v486, v487, v488, v489, v82, v490);
                OUTLINED_FUNCTION_204_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0(v491, v492, v493, v494, v495);
            }

            OUTLINED_FUNCTION_277_0();
            v4 = v1017;
            if (v92)
            {
              LODWORD(v18) = HIDWORD(v1045);
              if (*(v10 + 866) && (v496 = *v72) != 0)
              {
                PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v496);
                *(v10 + 96) = PlaylistActiveDurationSecs;
                *(v12 + 352) = PlaylistActiveDurationSecs;
                v70 = 1;
              }

              else
              {
                v70 = 0;
              }

              v68 = v1032;
            }

            else
            {
              v70 = 0;
              v68 = v1032;
              LODWORD(v18) = HIDWORD(v1045);
            }

            OUTLINED_FUNCTION_57_0(v496, v497, v498, v499, @"CoreMediaErrorDomain", @"unsupported crypt format.", v500, v501, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
            segPumpHandleIndexFileNetworkError();
            LODWORD(v1155) = 0;
            v69 = 1;
            goto LABEL_559;
          }

          if (v82)
          {
            if (*v1155 && v1094 < v116)
            {
              v248 = CFArrayGetValueAtIndex(*v1155, v116 - 1);
              if (v248)
              {
                v249 = v248;
                AllocatorForMedia = FigGetAllocatorForMedia();
                FigErrorLogSetSeverity(AllocatorForMedia, v249, 1);
              }
            }

            else
            {
              OUTLINED_FUNCTION_360_1();
              v271 = OUTLINED_FUNCTION_266();
              OUTLINED_FUNCTION_214_1(v271, v272, v273, v274, v275, v276, v277, v278, v893);
            }

            goto LABEL_222;
          }
        }
      }
    }
  }

LABEL_226:
  v279 = *v72;
  if (!*v72)
  {
    goto LABEL_227;
  }

  v280 = 0;
  if (v83)
  {
    goto LABEL_222;
  }

LABEL_231:
  if (v1143[704])
  {
    if ((v280 & 1) != 0 || (v292 = FigMediaPlaylistGetMediaSegmentSpecifiers(v279)) == 0 || CFArrayGetCount(v292) <= 0)
    {
      OUTLINED_FUNCTION_126_1();
      OUTLINED_FUNCTION_129_1();
      v293 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v301 = OUTLINED_FUNCTION_51_1(v293, v294, v295, v296, v297, v298, v299, v300, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
      if (OUTLINED_FUNCTION_16_1(v301))
      {
        OUTLINED_FUNCTION_76_1();
        LODWORD(v1172.data) = 136315650;
        *(&v1172.data + 4) = "segPumpParseIndexFile";
        WORD2(v1172.length) = 2114;
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_11_1();
        _os_log_send_and_compose_impl(v363, v364, v365, v366, v367, v368, v82, v369);
        OUTLINED_FUNCTION_204_1();
      }

      v4 = v1021;
      v68 = *v1035;
      OUTLINED_FUNCTION_418_1();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_238_0(v370, v371, v372, v373, v374);
      OUTLINED_FUNCTION_360_1();
      v375 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_214_1(v375, v376, v377, -12642, v378, v379, v380, v381, v897);
      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v898, v914, v929);
      goto LABEL_292;
    }
  }

  if (*(v10 + 861))
  {
    if (*(v10 + 864))
    {
      v281 = *(v12 + 16 * *(v12 + 8600) + 392);
      if (*(v281 + 56))
      {
        v1177.value = 0;
        v1172.data = 0;
        NextMediaFileWithDate = segPumpGetNextMediaFileWithDate(*v72, &v1177.value);
        v283 = segPumpGetNextMediaFileWithDate(*(v281 + 56), &v1172.data);
        if (NextMediaFileWithDate)
        {
          v284 = v283;
          if (v283)
          {
            DateStamp = FigMediaSegmentSpecifierGetDateStamp(NextMediaFileWithDate);
            v286 = MEMORY[0x19A8CCD90](DateStamp);
            v287 = FigMediaSegmentSpecifierGetDateStamp(v284);
            v288 = MEMORY[0x19A8CCD90](v287);
            *(v10 + 88) = *(v281 + 88) + v286 - *&v1177.value - (v288 - *&v1172.data);
            *(v10 + 928) = 0;
          }
        }
      }
    }
  }

  v289 = FigGetUpTimeNanoseconds();
  if (!*v72)
  {
    LODWORD(v1057) = 0;
    LODWORD(v1155) = 0;
    v290 = (v10 + 88);
    v291 = *(v10 + 88);
LABEL_251:
    OUTLINED_FUNCTION_415_1();
    v1119 = v305;
    goto LABEL_252;
  }

  if (FigMediaPlaylistGetPlaylistActiveDurationSecs(*v72) == 0.0)
  {
    v302 = 0;
  }

  else
  {
    v302 = 1000000000;
  }

  v290 = (v10 + 88);
  v291 = *(v10 + 88);
  v303 = *(v10 + 56);
  if (!v303 || (FigMediaPlaylistGetMediaSegmentSpecifiers(v303), (v304 = FigCFArrayGetFirstValue()) == 0))
  {
    LODWORD(v1057) = 0;
    LODWORD(v1155) = 0;
    goto LABEL_251;
  }

  v116 = v304;
  v1096 = (v10 + 88);
  LODWORD(v1155) = 0;
  LODWORD(v991) = 0;
  v1057 = (v302 + v289);
  OUTLINED_FUNCTION_415_1();
  v1119 = v442;
  do
  {
    NextSegment = FigMediaSegmentSpecifierGetNextSegment(v116);
    segPumpGetMediaFilePrivateData(v116, v444, v445, v446, v447, v448, v449, v450);
    v451 = OUTLINED_FUNCTION_230_1();
    if (FigMediaSegmentSpecifierAreFragmentsExpired(v451))
    {
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v116);
      v453 = 0;
      if (!PartialSegments)
      {
LABEL_366:
        v459 = 0;
        goto LABEL_367;
      }

      while (1)
      {
        v459 = CFArrayGetCount(PartialSegments);
LABEL_367:
        if (v453 >= v459)
        {
          break;
        }

        v454 = OUTLINED_FUNCTION_770();
        StartOffset = CFArrayGetValueAtIndex(v454, v455);
        v456 = *(v10 + 680);
        if (v456)
        {
          while (1)
          {
            v457 = OUTLINED_FUNCTION_178();
            if (segPumpMediaConnectionIncludesMedia(v457, v458, StartOffset))
            {
              break;
            }

            v456 = *v456;
            if (!v456)
            {
              goto LABEL_362;
            }
          }
        }

        else
        {
LABEL_362:
          if (*(v10 + 264) != StartOffset)
          {
            FigMediaPlaylistRemovePartSegmentSpecifier(*v72, v116, StartOffset);
            --v453;
          }
        }

        ++v453;
        if (!PartialSegments)
        {
          goto LABEL_366;
        }
      }
    }

    if (FigMediaSegmentSpecifierIsReadInCurrent(v116))
    {
      if (!FigMediaPlaylistHasEndTag(*v72))
      {
        if (*(v14 + 96))
        {
          *v1096 = *v1096 - FigMediaSegmentSpecifierGetTimeInSeconds(v116);
          *(v14 + 96) = 0;
        }

        v14[11] = v1057;
        OUTLINED_FUNCTION_415_1();
        if (v1119 == v460)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v1119 = (Current + FigMediaPlaylistGetPlaylistActiveDurationSecs(*v72));
        }

        LODWORD(v1155) = 1;
      }

      FigMediaSegmentSpecifierGetPartialSegments(v116);
      if (FigCFArrayGetLastValue())
      {
        LastValue = FigCFArrayGetLastValue();
        if (*(segPumpGetMediaFilePrivateData(LastValue, v463, v464, v465, v466, v467, v468, v469) + 73))
        {
          if (FigMediaSegmentSpecifierGetURLString(v116) && !FigMediaSegmentSpecifierIsFragment(v116) && !*(v14 + 73))
          {
            v470 = OUTLINED_FUNCTION_266();
            segPumpMarkMediaFileAsDelivered(v470, v471, v116);
          }
        }
      }

      goto LABEL_411;
    }

    if (!*(v14 + 96))
    {
      *v1096 = FigMediaSegmentSpecifierGetTimeInSeconds(v116) + *v1096;
    }

    v472 = *(v10 + 680);
    if (v472)
    {
LABEL_384:
      while (2)
      {
        if (segPumpMediaConnectionIncludesMedia(v10, v472, v116))
        {
          goto LABEL_405;
        }

        v473 = FigMediaSegmentSpecifierGetPartialSegments(v116);
        StartOffset = 0;
        while (1)
        {
          v474 = v473 ? CFArrayGetCount(v473) : 0;
          if (StartOffset >= v474)
          {
            break;
          }

          v475 = CFArrayGetValueAtIndex(v473, StartOffset++);
          if (segPumpMediaConnectionIncludesMedia(v10, v472, v475))
          {
            v472 = *v472;
            if (v472)
            {
              goto LABEL_384;
            }

            goto LABEL_405;
          }
        }

        v472 = *v472;
        if (v472)
        {
          continue;
        }

        break;
      }
    }

    if (*(v10 + 256) != v116 && *(v10 + 264) != v116)
    {
      if (!v1143[704])
      {
        v476 = v991;
        if (!*(v14 + 73))
        {
          v476 = 1;
        }

        LODWORD(v991) = v476;
      }

      for (j = *(v10 + 680); j; j = *j)
      {
        if (j[1] == v116)
        {
          v478 = OUTLINED_FUNCTION_177();
          segPumpResetMediaConnection(v478, v479, 1);
        }
      }

      FigMediaPlaylistRemoveMediaSegmentSpecifier(*(v10 + 56), v116);
      *(v10 + 76) = 1;
      goto LABEL_409;
    }

LABEL_405:
    *(v14 + 96) = 1;
    if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v116))
    {
      MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v116);
      FigMediaSegmentSpecifierSetIsReadInCurrent(MapSegmentSpecifier, 1);
    }

    if (FigMediaSegmentSpecifierGetContentKeySpecifier(v116))
    {
      ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v116);
      FigContentKeySpecifierSetIsReadInCurrent(ContentKeySpecifier, 1);
    }

LABEL_409:
    if (FigMediaPlaylistGetPlaylistType(*v72) == 1)
    {
      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v893, v910, v925);
      OUTLINED_FUNCTION_360_1();
      v507 = OUTLINED_FUNCTION_266();
      OUTLINED_FUNCTION_214_1(v507, v508, v509, v510, v511, v512, v513, v514, v899);
      v4 = v1017;
      v14 = v1132;
      goto LABEL_223;
    }

    LODWORD(v1155) = 1;
LABEL_411:
    v116 = NextSegment;
  }

  while (NextSegment);
  LODWORD(v1057) = v991 != 0;
  v14 = v1132;
  v290 = (v10 + 88);
LABEL_252:
  segPumpPlaylistRecalculatePumpTimeOffsets(*v72, *v290);
  if ((v991 & 0x100000000) != 0)
  {
    v306 = OUTLINED_FUNCTION_266();
    v307 = segPumpSetupCommonCryptKeyData(v306);
  }

  else
  {
    v307 = segPumpSetupCommonCryptKeyDataForSessionKeys(v12, *v14);
  }

  v1094 = v290;
  if (v307)
  {
    goto LABEL_673;
  }

  if (*v72)
  {
    FigMediaPlaylistGetMapSegmentSpecifiers(*v72);
    v308 = FigCFArrayGetFirstValue();
    if (v308)
    {
      v309 = v308;
      do
      {
        FigMediaSegmentSpecifierGetNextSegment(v309);
        v310 = OUTLINED_FUNCTION_127_1();
        if (!FigMediaSegmentSpecifierIsReadInCurrent(v310))
        {
          v318 = *(v10 + 696);
          if (!v318 || (v319 = *(v318 + 8)) == 0 || FigMediaSegmentSpecifierGetType(v319) != 1)
          {
            v1177.value = 0;
            v1172.data = 0;
            *(segPumpGetMediaFilePrivateData(v309, v311, v312, v313, v314, v315, v316, v317) + 98) = 0;
            if (!segPumpCreateCacheNameFromSegment(v10, v309, &v1172.data, &v1177))
            {
              if (*(v12 + 296))
              {
                value = v1177.value;
                StartOffset = FigMediaSegmentSpecifierGetStartOffset(v309);
                FigMediaSegmentSpecifierGetMediaSequence(v309);
                v321 = OUTLINED_FUNCTION_627();
                v322 = value;
                v14 = v1132;
                FigStreamingCacheRemoveMediaMap(v321, v323, v322, StartOffset, v324);
              }

              v325 = FigMediaSegmentSpecifierGetStartOffset(v309);
              FigMediaSegmentSpecifierGetBytesToRead(v309);
              v326 = OUTLINED_FUNCTION_177();
              if (segPumpFindSavedEntry(v326, v327, v325, v328))
              {
                v329 = OUTLINED_FUNCTION_399();
                segPumpFreeSavedEntry(v329, v330);
              }
            }

            if (v1172.data)
            {
              CFRelease(v1172.data);
            }

            if (v1177.value)
            {
              CFRelease(v1177.value);
            }

            FigMediaPlaylistRemoveMapSegmentSpecifier(*v72, v309);
          }
        }

        v309 = v116;
      }

      while (v116);
    }
  }

  if (!*(v12 + 296))
  {
    goto LABEL_309;
  }

  if (!*v72)
  {
    goto LABEL_309;
  }

  v331 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
  if (!v331)
  {
    goto LABEL_309;
  }

  if (CFArrayGetCount(v331) < 1)
  {
    goto LABEL_309;
  }

  if (!FigMediaPlaylistHasEndTag(*v72))
  {
    goto LABEL_309;
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
  v332 = FigCFArrayGetFirstValue();
  if (*(segPumpGetMediaFilePrivateData(v332, v333, v334, v335, v336, v337, v338, v339) + 16))
  {
    goto LABEL_309;
  }

  v340 = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(v340, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_44_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v893, v910, v925);
    v385 = v891;
    Copy = 0;
    if (!v891)
    {
      goto LABEL_297;
    }

    goto LABEL_306;
  }

  v342 = Mutable;
  v343 = 0;
  v344 = MEMORY[0x1E695E9C0];
  while (2)
  {
    v345 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
    if (v345)
    {
      v345 = CFArrayGetCount(v345);
    }

    if (v343 >= v345)
    {
      v383 = FigGetAllocatorForMedia();
      Copy = CFDictionaryCreateCopy(v383, v342);
      v385 = 0;
      goto LABEL_296;
    }

    v346 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
    v347 = CFArrayGetValueAtIndex(v346, v343);
    StartOffset = segPumpGetMediaFilePrivateData(v347, v348, v349, v350, v351, v352, v353, v354);
    URLString = FigMediaSegmentSpecifierGetURLString(v347);
    v356 = FigMediaSegmentSpecifierGetStartOffset(v347);
    v357 = FigGetAllocatorForMedia();
    v893 = URLString;
    v910 = v356;
    v358 = CFStringCreateWithFormat(v357, 0, @"%@-%lld");
    if (!v358)
    {
      OUTLINED_FUNCTION_44_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", URLString, v356, v925);
      v385 = v888;
      goto LABEL_672;
    }

    v359 = v358;
    if (CFDictionaryGetValue(v342, v358))
    {
LABEL_289:
      FigCFArrayAppendDouble();
      CFRelease(v359);
      ++v343;
      continue;
    }

    break;
  }

  v360 = FigGetAllocatorForMedia();
  v361 = CFArrayCreateMutable(v360, 0, v344);
  if (v361)
  {
    v362 = v361;
    CFDictionarySetValue(v342, v359, v361);
    CFRelease(v362);
    goto LABEL_289;
  }

  OUTLINED_FUNCTION_44_1();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", URLString, v910, v925);
  v385 = v889;
  CFRelease(v359);
LABEL_672:
  Copy = 0;
LABEL_296:
  CFRelease(v342);
  if (!v385)
  {
LABEL_297:
    for (k = 0; ; ++k)
    {
      v387 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
      if (v387)
      {
        v387 = CFArrayGetCount(v387);
      }

      if (k >= v387)
      {
        v385 = 0;
        goto LABEL_306;
      }

      v388 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
      v389 = CFArrayGetValueAtIndex(v388, k);
      v397 = segPumpGetMediaFilePrivateData(v389, v390, v391, v392, v393, v394, v395, v396);
      StartOffset = FigMediaSegmentSpecifierGetURLString(v389);
      v398 = FigMediaSegmentSpecifierGetStartOffset(v389);
      v399 = FigGetAllocatorForMedia();
      v893 = StartOffset;
      v910 = v398;
      v400 = CFStringCreateWithFormat(v399, 0, @"%@-%lld");
      if (!v400)
      {
        break;
      }

      StartOffset = v400;
      v401 = CFDictionaryGetValue(Copy, v400);
      if (v401)
      {
        v401 = CFRetain(v401);
      }

      v397[16] = v401;
      CFRelease(StartOffset);
    }

    OUTLINED_FUNCTION_44_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", StartOffset, v398, v925);
    v385 = v887;
  }

LABEL_306:
  v14 = v1132;
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v385)
  {
LABEL_673:
    v4 = v1017;
LABEL_654:
    v68 = v1032;
    LOBYTE(v18) = BYTE4(v1045);
    goto LABEL_681;
  }

LABEL_309:
  v4 = v1017;
  if (!v1143[19] || (OUTLINED_FUNCTION_335_0(), (v402 & v1057) != 1))
  {
    v403 = *v10;
    LODWORD(v18) = HIDWORD(v1045);
LABEL_315:
    if (!v403 && v1143[705])
    {
      OUTLINED_FUNCTION_336_0(v1143, COERCE__INT64(*v1094 - v291));
    }

    OUTLINED_FUNCTION_415_1();
    if (v1119 != v404)
    {
      segPumpSetMediaFileExpireTimer(v12, v1119);
    }

    if (!v1143[676] && !v1143[677] && *v72 && FigMediaPlaylistHasStartTime(*v72))
    {
      v1143[677] = 1;
      v1143[678] = FigMediaPlaylistIsStartTimePrecise(*v72);
      *(v12 + 8872) = FigMediaPlaylistGetStartTimeValue(*v72);
    }

    if ((v1172.info & 0x100000000) != 0)
    {
      Alternates = FigMultivariantPlaylistGetAlternates(*v14);
      if (Alternates)
      {
        v406 = CFArrayGetCount(Alternates);
        v407 = v406 < 1;
        if (v406 >= 1)
        {
          v408 = v406;
          v409 = 0;
          while (1)
          {
            v410 = FigMultivariantPlaylistGetAlternates(*v14);
            CFArrayGetValueAtIndex(v410, v409);
            v411 = OUTLINED_FUNCTION_399();
            if (segPumpAddFigAlternate(v411, v412))
            {
              break;
            }

            if (v408 == ++v409)
            {
              v4 = v1017;
              LODWORD(v18) = HIDWORD(v1045);
              goto LABEL_330;
            }
          }

          v4 = v1017;
          goto LABEL_654;
        }
      }

      v407 = 1;
LABEL_330:
      if (FigMultivariantPlaylistGetMediaSelectionArray(*v14))
      {
        v413 = *(v12 + 8560);
        MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(*v14);
        *(v12 + 8560) = MediaSelectionArray;
        if (MediaSelectionArray)
        {
          CFRetain(MediaSelectionArray);
        }

        if (v413)
        {
          CFRelease(v413);
        }
      }

      HasIndependentSegments = FigMultivariantPlaylistHasIndependentSegments(*v14);
      v1143[32] = HasIndependentSegments;
      *(*(v12 + 392) + 872) = HasIndependentSegments;
      *(*(v12 + 408) + 872) = HasIndependentSegments;
      *(*(v12 + 424) + 872) = HasIndependentSegments;
      if (!v407 && (v423 = OUTLINED_FUNCTION_340_1(), segPumpReadyNotification(v423, v424, v425), HasIndependentSegments = segPumpInitAlternateSelectionBoss(v12, v426), HasIndependentSegments) || v1143[18] && (v503 = OUTLINED_FUNCTION_92_1(HasIndependentSegments, v416, v417, v418, v419, v420, v421, v422, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081), segPumpReadNextCryptKeyForStream(v503, v504, v505), v506))
      {
LABEL_670:
        v68 = v1032;
        goto LABEL_681;
      }
    }

    else
    {
      if (*(v10 + 866))
      {
        if (*v10 == 1 || *v10 == *(v12 + 8600))
        {
          segPumpSetTargetDurationAndType(v12, *(v10 + 56));
          OUTLINED_FUNCTION_88_1();
          if (v92)
          {
            OUTLINED_FUNCTION_266();
            segPumpRTCReportingRespondToFirstIndexFileWithMedia();
          }
        }
      }

      segPumpSetPartTargetDuration(v12, *v72);
      segPumpSetActiveHoldBack();
    }

    if (!*v72)
    {
      goto LABEL_451;
    }

    if (FigMediaPlaylistHasEndTag(*v72) && (*(v10 + 360) & 0x8000000000000000) == 0)
    {
      *(v10 + 360) = -1;
      *(v10 + 368) = -1;
    }

    v427 = *(v10 + 56);
    if (!v427)
    {
      goto LABEL_451;
    }

    v428 = FigMediaPlaylistGetMediaSegmentSpecifiers(v427);
    if (!v428)
    {
      goto LABEL_451;
    }

    v429 = CFArrayGetCount(v428);
    if (v429 < 1 || (*(v10 + 160) - 4) < 3)
    {
      goto LABEL_451;
    }

    if (!*(v12 + 337))
    {
      *(v10 + 160) = 5;
      goto LABEL_451;
    }

    IntValue = 0.0;
    if (!messagea)
    {
      v439 = 0;
      v441 = 0;
      goto LABEL_438;
    }

    StartOffset = v4;
    v438 = CFHTTPMessageCopyHeaderFieldValue(messagea, @"Age");
    v429 = CFHTTPMessageCopyHeaderFieldValue(messagea, @"ms-in-cache");
    v439 = v429 != 0;
    if (v429)
    {
      v440 = v429;
      IntValue = CFStringGetIntValue(v429) / 1000.0;
      if (v438)
      {
        CFRelease(v438);
        v441 = 1;
      }

      else
      {
        v441 = 0;
      }
    }

    else
    {
      if (!v438)
      {
        v439 = 0;
        v441 = 0;
        v4 = StartOffset;
LABEL_438:
        v515 = *(v10 + 160);
        if (v515)
        {
          if (v515 != 2)
          {
            goto LABEL_442;
          }

          if (((v439 | v441) & 1) == 0)
          {
LABEL_441:
            *(v10 + 160) = 4;
            v516 = OUTLINED_FUNCTION_92_1(v429, v430, v431, v432, v433, v434, v435, v436, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
            segPumpSetStartingOffset(v516, v517, v518);
            v515 = *(v10 + 160);
LABEL_442:
            LODWORD(v18) = HIDWORD(v1045);
            if (v515 == 3)
            {
              goto LABEL_443;
            }

LABEL_451:
            if ((v1172.info & 0x200000000) == 0)
            {
              v70 = 0;
              goto LABEL_535;
            }

            if (*(v10 + 352) >= 1)
            {
              v530 = OUTLINED_FUNCTION_266();
              if (segPumpCalculateDiscoDomainOffset(v530, v531, v532))
              {
                goto LABEL_670;
              }

              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_126_1();
                v540 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v533, v534, v535, v536, v537, v538, v539, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
                v548 = OUTLINED_FUNCTION_51_1(v540, v541, v542, v543, v544, v545, v546, v547, v900, v915, v930, v944, v957, v970, v982, v994, messaged, v1022, v1036, v1048, v1060, v1072, v1084, v1097, v1110, v1123, v1134, v1145, v1157, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
                if (OUTLINED_FUNCTION_16_1(v548))
                {
                  OUTLINED_FUNCTION_76_1();
                  LODWORD(v1172.data) = 136315906;
                  *(&v1172.data + 4) = "segPumpParseIndexFile";
                  WORD2(v1172.length) = 2114;
                  OUTLINED_FUNCTION_5_1();
                  *v1175 = 1024;
                  *&v1175[2] = v549;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_11_1();
                  _os_log_send_and_compose_impl(v550, v551, v552, v553, v554, v555, v4, v556);
                  OUTLINED_FUNCTION_204_1();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0(v557, v558, v559, v560, v561);
                LODWORD(v18) = HIDWORD(v1045);
              }

              segPumpFreeDiscoQueue((v10 + 336));
              *(v10 + 352) = 0;
            }

            v562 = *(v10 + 56);
            StartOffset = &off_196E72000;
            if (*v10 == *(v12 + 8600) && (segPumpSetTargetDurationAndType(v12, v562), v562 = *v72, (*(v12 + 376) & 0x8000000000000000) != 0))
            {
              v563 = v4;
              *(v12 + 376) = *(v10 + 448);
              *(v12 + 376) = (*(v12 + 376) + FigMediaPlaylistGetPlaylistActiveDurationSecs(v562) * -1000000000.0);
              *(v12 + 384) = 0;
              v562 = *(v10 + 56);
            }

            else
            {
              v563 = v4;
            }

            segPumpSetPartTargetDuration(v12, v562);
            segPumpSetActiveHoldBack();
            if (!v1143[32])
            {
              v4 = 1;
              do
              {
                v564 = *(v12 + 392);
                v565 = *(v564 + 56);
                if (v565)
                {
                  v566 = FigMediaPlaylistHasIndependentSegments(v565);
                  *(v564 + 872) = v566;
                  if (v566)
                  {
                    v4 = v4;
                  }

                  else
                  {
                    v4 = 0;
                  }
                }

                OUTLINED_FUNCTION_408_1();
              }

              while (!v92);
              LODWORD(v18) = HIDWORD(v1045);
              if (v4)
              {
                v1143[32] = 1;
              }
            }

            if (FigMediaPlaylistHasEndTag(*v72))
            {
              if (!v1143[26])
              {
                v1143[26] = 1;
                if (!*(v10 + 866))
                {
                  v1143[27] = 1;
                  if (dword_1EAF16A30)
                  {
                    OUTLINED_FUNCTION_126_1();
                    v574 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v567, v568, v569, v570, v571, v572, v573, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
                    v582 = OUTLINED_FUNCTION_51_1(v574, v575, v576, v577, v578, v579, v580, v581, v901, v916, v931, v945, v958, v971, v983, v995, messagee, v1023, v1037, v1049, v1061, v1073, v1085, v1098, v1111, v1124, v1135, v1146, v1158, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
                    if (OUTLINED_FUNCTION_16_1(v582))
                    {
                      OUTLINED_FUNCTION_76_1();
                      LODWORD(v1172.data) = 136315394;
                      OUTLINED_FUNCTION_54_1();
                      OUTLINED_FUNCTION_117();
                      OUTLINED_FUNCTION_11_1();
                      _os_log_send_and_compose_impl(v583, v584, v585, v586, v587, v588, v4, v589);
                      OUTLINED_FUNCTION_204_1();
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_238_0(v591, v592, v593, v594, v595);
                    LODWORD(v18) = HIDWORD(v1045);
                  }
                }
              }
            }

            *(v10 + 1064) = *(v10 + 448);
            *(v10 + 384) = 0;
            if (*(v12 + 336))
            {
              OUTLINED_FUNCTION_88_1();
              if (v92)
              {
                *v1167 = 0.0;
                v596 = segPumpGetNextMediaFileWithDate(*v72, v1167);
                if (v596)
                {
                  v597 = FigMediaSegmentSpecifierGetDateStamp(v596);
                  v598 = MEMORY[0x19A8CCD90](v597);
                  v599 = FigMediaPlaylistGetPlaylistActiveDurationSecs(*v72);
                  CMTimeMake(&v1177, ((v598 + v599 - *v1167) * 1000000000.0), 1000000000);
                  HostTimeClock = CMClockGetHostTimeClock();
                  CMClockGetTime(&v1172.data, HostTimeClock);
                  segPumpSendPlaylistUpdateNotification(v12, &v1177.value, &v1172.data);
                }
              }
            }

            v601 = *(v10 + 96);
            v4 = v563;
            if (v601 == FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v10 + 56)))
            {
              goto LABEL_508;
            }

            *(v10 + 96) = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v10 + 56));
            OUTLINED_FUNCTION_277_0();
            if (!v92)
            {
              goto LABEL_508;
            }

            v611 = *(v12 + 352);
            if (v611 == v609)
            {
              goto LABEL_508;
            }

            if (v609 > v611 || (LODWORD(v610) = *(v12 + 8), v609 <= v611 - v610))
            {
              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_126_1();
                v821 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v814, v815, v816, v817, v818, v819, v820, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
                v829 = OUTLINED_FUNCTION_51_1(v821, v822, v823, v824, v825, v826, v827, v828, v908, v923, v938, v952, v965, v978, v990, v1002, messagel, v1030, v1044, v1056, v1068, v1080, v1092, v1105, v1118, v1131, v1142, v1153, v1166, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
                if (OUTLINED_FUNCTION_16_1(v829))
                {
                  OUTLINED_FUNCTION_76_1();
                  LODWORD(v1172.data) = 136316162;
                  *(&v1172.data + 4) = "segPumpParseIndexFile";
                  WORD2(v1172.length) = 2114;
                  OUTLINED_FUNCTION_5_1();
                  *v1175 = v830;
                  *&v1175[2] = v831;
                  *&v1175[10] = v830;
                  *&v1175[12] = v832;
                  OUTLINED_FUNCTION_117();
                  OUTLINED_FUNCTION_11_1();
                  _os_log_send_and_compose_impl(v833, v834, v835, v836, v837, v838, v563, v839);
                  OUTLINED_FUNCTION_204_1();
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_238_0(v860, v861, v862, v863, v864);
                v609 = *(v10 + 96);
                LODWORD(v18) = HIDWORD(v1045);
              }

              *(v12 + 352) = v609;
              v70 = 1;
              LODWORD(v1155) = 1;
              goto LABEL_509;
            }

            if (!dword_1EAF16A30)
            {
LABEL_508:
              v70 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_126_1();
              v619 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v612, v613, v614, v615, v616, v617, v618, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
              v627 = OUTLINED_FUNCTION_51_1(v619, v620, v621, v622, v623, v624, v625, v626, v902, v917, v932, v946, v959, v972, v984, v996, messagef, v1024, v1038, v1050, v1062, v1074, v1086, v1099, v1112, v1125, v1136, v1147, v1159, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
              if (OUTLINED_FUNCTION_16_1(v627))
              {
                OUTLINED_FUNCTION_76_1();
                LODWORD(v1172.data) = 136316162;
                *(&v1172.data + 4) = "segPumpParseIndexFile";
                WORD2(v1172.length) = 2114;
                OUTLINED_FUNCTION_5_1();
                *v1175 = v628;
                *&v1175[2] = v629;
                *&v1175[10] = v628;
                *&v1175[12] = v630;
                OUTLINED_FUNCTION_117();
                OUTLINED_FUNCTION_11_1();
                _os_log_send_and_compose_impl(v631, v632, v633, v634, v635, v636, v563, v637);
                OUTLINED_FUNCTION_204_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0(v882, v883, v884, v885, v886);
              v70 = 0;
              LODWORD(v18) = HIDWORD(v1045);
            }

LABEL_509:
            v638 = *(v12 + 296);
            if (v638)
            {
              v639 = 0;
              v640 = 0.0;
              v641 = INFINITY;
              do
              {
                v642 = *(v12 + 392 + v639);
                if (*(v642 + 16))
                {
                  v643 = *(v642 + 88);
                  if (v641 > v643)
                  {
                    v641 = *(v642 + 88);
                  }

                  v644 = v643 + *(v642 + 96);
                  if (v640 < v644)
                  {
                    v640 = v644;
                  }
                }

                v639 += 16;
              }

              while (v639 != 48);
              v638 = FigStreamingCacheSetCacheTimeRange(v638, v641, v640);
            }

            if (*(v10 + 866) && v1143[676])
            {
              v645 = OUTLINED_FUNCTION_92_1(v638, v602, v603, v604, v605, v606, v607, v608, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
              segPumpSetStartingOffset(v645, v646, v647);
            }

            OUTLINED_FUNCTION_88_1();
            if (v92)
            {
              if (*(v12 + 384))
              {
                *(v12 + 384) = 0;
                if (!v1143[26] && !*(v12 + 24))
                {
                  v649 = *v1094;
                  if (*v1094 > 0.0)
                  {
                    v648 = *(v10 + 448) + (v649 + *(v10 + 96)) * -1000000000.0;
                    v650 = v648;
                    v651 = *(v12 + 376);
                    v652 = *(v12 + 8);
                    v653 = v651 + 1000000000 * v652;
                    v654 = v651 - 1000000000 * v652;
                    if (v653 < v648 || v654 > v650)
                    {
                      v648 = (v650 - v651) / 1000000000.0;
                      *v1094 = v649 + v648;
                    }
                  }
                }
              }
            }

            if (!*(v10 + 875))
            {
              LODWORD(v648) = *(v12 + 8);
              if (*v1094 > *&v648 * 3.0)
              {
                v865 = OUTLINED_FUNCTION_266();
                if (!segPumpIsIndexFileResponseOutOfDate(v865, v866, messagea))
                {
                  *(v10 + 875) = 1;
                }
              }
            }

LABEL_535:
            if ((*(v10 + 360) & 0x8000000000000000) == 0)
            {
              if (*v72)
              {
                v656 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
                if (v656)
                {
                  if (CFArrayGetCount(v656) >= 1 && (*(v10 + 360) & 0x8000000000000000) == 0)
                  {
                    FigMediaPlaylistGetMediaSegmentSpecifiers(*v72);
                    v657 = FigCFArrayGetLastValue();
                    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v657);
                    v659 = FigMediaSegmentSpecifierGetPartialSegments(v657);
                    if (v659)
                    {
                      v659 = CFArrayGetCount(v659);
                    }

                    v665 = *(v10 + 360);
                    if (MediaSequence < v665 || MediaSequence == v665 && v659 <= *(v10 + 368))
                    {
                      OUTLINED_FUNCTION_57_0(v659, v660, v661, v662, @"CoreMediaErrorDomain", @"Blocking Playlist Reload failed", v663, v664, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
                      segPumpHandleIndexFileNetworkError();
                      goto LABEL_558;
                    }
                  }
                }
              }

              *(v10 + 360) = -1;
              *(v10 + 368) = -1;
            }

            if (*(v10 + 792))
            {
              if (segPumpStreamHasPreloadHint(v10))
              {
                FigMediaPlaylistGetPreloadHint(*(v10 + 56));
                v854 = OUTLINED_FUNCTION_171_1();
                v845 = segPumpStreamHasPreloadConnectionForSegment(v854, v855, 0) == 0;
              }

              else
              {
                v845 = 1;
              }

              segPumpRealizePreload(v1081, v10);
              if (v856)
              {
                goto LABEL_670;
              }

              OUTLINED_FUNCTION_400_1();
              if ((v857 & v845) == 1)
              {
                v858 = OUTLINED_FUNCTION_266();
                segPumpStreamCancelPreloadReadAndResetData(v858, v859);
              }
            }

            if (*(v10 + 800))
            {
              if (segPumpStreamHasPreloadMapHint(v10))
              {
                FigMediaPlaylistGetPreloadMapHint(*(v10 + 56));
                v846 = OUTLINED_FUNCTION_171_1();
                v666 = segPumpStreamHasPreloadConnectionForMap(v846, v847, v848, v849, v850, v851, v852, v853) == 0;
              }

              else
              {
                v666 = 1;
              }

              v667 = OUTLINED_FUNCTION_266();
              if (segPumpRealizeMapPreload(v667, v668))
              {
                goto LABEL_670;
              }

              OUTLINED_FUNCTION_400_1();
              if ((v669 & v666) == 1)
              {
                v670 = OUTLINED_FUNCTION_266();
                segPumpStreamCancelPreloadMapReadAndResetData(v670, v671);
              }
            }

            if (*v72)
            {
              RenditionReportSpecifiers = FigMediaPlaylistGetRenditionReportSpecifiers(*v72);
              if (RenditionReportSpecifiers)
              {
                if (CFArrayGetCount(RenditionReportSpecifiers) >= 1)
                {
                  FigMediaPlaylistGetRenditionReportSpecifiers(*v72);
                  v673 = OUTLINED_FUNCTION_399();
                  segPumpReconcileGapRenditionReports(v673, v674);
                }
              }
            }

            HasEndTag = segPumpSetEstimatedGOPInterval(v12);
            if (HasEndTag)
            {
              goto LABEL_670;
            }

LABEL_558:
            v69 = 0;
            v68 = v1032;
            goto LABEL_559;
          }
        }

        else
        {
          if ((v439 | v441) == 1 && !v1143[676])
          {
            *(v10 + 160) = 1;
            LODWORD(v18) = HIDWORD(v1045);
            goto LABEL_451;
          }

          *(v10 + 160) = 2;
          *(v10 + 168) = 0u;
          *(v10 + 184) = 0u;
          *(v10 + 200) = 0;
          if (!(v439 | v441))
          {
            goto LABEL_441;
          }
        }

        *(v10 + 176) = FigGetUpTimeNanoseconds();
        *(v10 + 184) = IntValue;
        if (!v439 && FigMediaPlaylistGetPartTargetDuration(*v72) < 1.0)
        {
          *(v10 + 184) = *(v10 + 184) + 1.0;
        }

        *(v10 + 168) = segPumpPlaylistGetEndDate(*(v10 + 56));
        LODWORD(v18) = HIDWORD(v1045);
        if (*(v10 + 160) != 3)
        {
          *(v10 + 160) = 3;
        }

LABEL_443:
        if (*(v10 + 200) > 5)
        {
          *(v10 + 160) = 6;
          v867 = OUTLINED_FUNCTION_266();
          v875 = segPumpSetupBlockingReload(v867, v868, v869, v870, v871, v872, v873, v874, v893, v910, v925, SWORD2(v925), SBYTE6(v925), HIBYTE(v925), v940, SHIDWORD(v940), v954, v967, v979, v991, messagea, v1017, v1032, SHIDWORD(v1032), v1045, SHIDWORD(v1045), v1057, SBYTE4(v1057), v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, *v1167, type, v1169, valuePtr, v1171, v1172.isa, v1172.info, v1172.data, v1172.length, v1173, v1174, *v1175, *&v1175[8], *&v1175[16], v1176, v1177.value, *&v1177.timescale, v1177.epoch, v1178, v1179, v1180);
          if (v875)
          {
            OUTLINED_FUNCTION_57_0(v875, v876, v877, v875, @"CoreMediaErrorDomain", @"tuneIn failed", v878, v879, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
            segPumpHandleIndexFileNetworkError();
            if (v880)
            {
              goto LABEL_670;
            }
          }
        }

        else if (IntValue < floor(FigMediaPlaylistGetPartTargetDuration(*v72)) || (v881 = *(v10 + 184) - (segPumpPlaylistGetEndDate(*(v10 + 56)) - *(v10 + 168)), *(v10 + 192) = v881, v881 <= FigMediaPlaylistGetPartTargetDuration(*(v10 + 56))))
        {
          if (*(v10 + 160) != 4)
          {
            *(v10 + 160) = 4;
          }

          v527 = OUTLINED_FUNCTION_92_1(v519, v520, v521, v522, v523, v524, v525, v526, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
          segPumpSetStartingOffset(v527, v528, v529);
        }

        else
        {
          ++*(v10 + 200);
          *(v10 + 192) = *(v10 + 192) + (FigGetUpTimeNanoseconds() - *(v10 + 176)) / 1000000000.0;
        }

        goto LABEL_451;
      }

      IntValue = CFStringGetIntValue(v438);
      v441 = 1;
      v440 = v438;
    }

    v4 = StartOffset;
    CFRelease(v440);
    goto LABEL_438;
  }

  OUTLINED_FUNCTION_88_1();
  LODWORD(v18) = HIDWORD(v1045);
  if (!v92)
  {
    goto LABEL_315;
  }

  segPumpStopPlaylistReadsAndResetAllData(v12);
  v69 = 0;
  v70 = 0;
  v68 = v1032;
LABEL_560:
  if (!*(v10 + 868))
  {
    HasEndTag = *(v10 + 56);
    if (HasEndTag)
    {
      HasEndTag = FigMediaPlaylistGetMediaSegmentSpecifiers(HasEndTag);
      if (HasEndTag)
      {
        HasEndTag = CFArrayGetCount(HasEndTag);
        if (HasEndTag >= 1)
        {
          *(v10 + 868) = 1;
        }
      }
    }
  }

  if (v70)
  {
    v675 = OUTLINED_FUNCTION_340_1();
    segPumpReadyNotification(v675, v676, v677);
  }

  if (v1155)
  {
    v678 = OUTLINED_FUNCTION_340_1();
    segPumpReadyNotification(v678, v679, v680);
  }

  v14 = v1132;
  if ((v1172.info & 0x800000000) != 0)
  {
    OUTLINED_FUNCTION_88_1();
    if (v92)
    {
      v681 = OUTLINED_FUNCTION_340_1();
      segPumpReadyNotification(v681, v682, v683);
    }
  }

  if (*(v10 + 866) || (OUTLINED_FUNCTION_266(), segPumpReadOrScheduleIndexFileRead(), !HasEndTag))
  {
    if (v1143[676])
    {
      v804 = OUTLINED_FUNCTION_92_1(HasEndTag, v42, v43, v44, v45, v46, v47, v48, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
      MediaForSingleStream = segPumpDeliverNextMediaForSingleStream(v804, v805, v806);
      if (MediaForSingleStream != -12644)
      {
        if (MediaForSingleStream == -12642)
        {
          OUTLINED_FUNCTION_57_0(MediaForSingleStream, v808, v809, v810, @"CoreMediaErrorDomain", @"No matching mediaFile found from playlist", v811, v812, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081);
          segPumpHandleIndexFileNetworkError();
          if (v813)
          {
            goto LABEL_617;
          }
        }

        else if (MediaForSingleStream == -15626)
        {
          goto LABEL_617;
        }
      }
    }

    OUTLINED_FUNCTION_88_1();
    if (!v92 || v1143[29] || (v744 = *(v10 + 56)) == 0 || (DateStampCount = FigMediaPlaylistGetDateStampCount(v744), DateStampCount < 1) || !*(v12 + 168) || (v753 = *(v10 + 880), v754 = OUTLINED_FUNCTION_92_1(DateStampCount, v746, v747, v748, v749, v750, v751, v752, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081), !segPumpSendDateMapping(v754, v755, v756, v757)) && v753 == *(v10 + 880))
    {
      segPumpUpdateNetworkCostHasEndTag(v12);
      v684 = *(v10 + 56);
      if (v684)
      {
        if (FigMediaPlaylistGetPlaylistType(*(v10 + 56)) == 2)
        {
          if (!dword_1EAF16A30)
          {
            goto LABEL_617;
          }

          OUTLINED_FUNCTION_36_1();
          v692 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v685, v686, v687, v688, v689, v690, v691, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
          v700 = OUTLINED_FUNCTION_51_1(v692, v693, v694, v695, v696, v697, v698, v699, v903, v918, v933, v947, v960, v973, v985, v997, messageg, v1025, v1039, v1051, v1063, v1075, v1087, v1100, v1113, v1126, v1137, v1148, v1160, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (OUTLINED_FUNCTION_16_1(v700))
          {
            OUTLINED_FUNCTION_76_1();
            LODWORD(v1172.data) = 136315650;
            OUTLINED_FUNCTION_54_1();
            HIWORD(v1173) = 2080;
            v1174 = "VOD";
            OUTLINED_FUNCTION_117();
            goto LABEL_615;
          }

LABEL_616:
          v4 = v68;
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_238_0(v799, v800, v801, v802, v803);
          v68 = StartOffset;
          LODWORD(v18) = v69;
          v69 = v1161;
          goto LABEL_617;
        }

        if (FigMediaPlaylistGetPlaylistType(v684) == 1)
        {
          if (!dword_1EAF16A30)
          {
            goto LABEL_617;
          }

          OUTLINED_FUNCTION_36_1();
          v735 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v728, v729, v730, v731, v732, v733, v734, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
          v743 = OUTLINED_FUNCTION_51_1(v735, v736, v737, v738, v739, v740, v741, v742, v905, v920, v935, v949, v962, v975, v987, v999, messagei, v1027, v1041, v1053, v1065, v1077, v1089, v1102, v1115, v1128, v1139, v1150, v1163, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (!OUTLINED_FUNCTION_16_1(v743))
          {
            goto LABEL_616;
          }

          OUTLINED_FUNCTION_76_1();
          LODWORD(v1172.data) = 136315650;
          OUTLINED_FUNCTION_54_1();
          HIWORD(v1173) = 2080;
          v1174 = "Event";
          OUTLINED_FUNCTION_117();
          goto LABEL_615;
        }

        PlaylistType = FigMediaPlaylistGetPlaylistType(v684);
        if (!PlaylistType && *(v10 + 76))
        {
          if (!dword_1EAF16A30)
          {
            goto LABEL_617;
          }

          OUTLINED_FUNCTION_36_1();
          v766 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v759, v760, v761, v762, v763, v764, v765, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
          v774 = OUTLINED_FUNCTION_51_1(v766, v767, v768, v769, v770, v771, v772, v773, v906, v921, v936, v950, v963, v976, v988, v1000, messagej, v1028, v1042, v1054, v1066, v1078, v1090, v1103, v1116, v1129, v1140, v1151, v1164, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (!OUTLINED_FUNCTION_16_1(v774))
          {
            goto LABEL_616;
          }

          OUTLINED_FUNCTION_76_1();
          LODWORD(v1172.data) = 136315650;
          OUTLINED_FUNCTION_54_1();
          HIWORD(v1173) = 2080;
          v1174 = "Live";
          OUTLINED_FUNCTION_117();
          goto LABEL_615;
        }

        if (*(v10 + 76))
        {
          v775 = PlaylistType == 0;
        }

        else
        {
          v775 = 1;
        }

        if (v775 && dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_36_1();
          v783 = OUTLINED_FUNCTION_123_1(qword_1EAF16A28, v776, v777, v778, v779, v780, v781, v782, v893, v910, v925, v940, v954, v967, v979, v991, messagea, v1017, v1032, v1045, v1057, v1069, v1081, v1094, v1108, v1119, v1132, v1143, v1155, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), SHIBYTE(type));
          v791 = OUTLINED_FUNCTION_51_1(v783, v784, v785, v786, v787, v788, v789, v790, v907, v922, v937, v951, v964, v977, v989, v1001, messagek, v1029, v1043, v1055, v1067, v1079, v1091, v1104, v1117, v1130, v1141, v1152, v1165, v1167[0], v1167[1], type, SWORD2(type), SBYTE6(type), HIBYTE(type));
          if (!OUTLINED_FUNCTION_16_1(v791))
          {
            goto LABEL_616;
          }

          OUTLINED_FUNCTION_76_1();
          LODWORD(v1172.data) = 136315394;
          OUTLINED_FUNCTION_54_1();
          OUTLINED_FUNCTION_117();
LABEL_615:
          OUTLINED_FUNCTION_11_1();
          _os_log_send_and_compose_impl(v792, v793, v794, v795, v796, v797, v4, v798);
          OUTLINED_FUNCTION_204_1();
          goto LABEL_616;
        }
      }
    }
  }

LABEL_617:
  if (v69)
  {
LABEL_293:
    if (!v18)
    {
      goto LABEL_294;
    }

LABEL_680:
    segPumpSetupCommonCryptKeyDataForSessionKeys(v12, *v14);
  }

LABEL_681:
  if (v4)
  {
    *v4 = v18;
  }

  if (v1172.isa)
  {
    CFRelease(v1172.isa);
  }

  if (v1108)
  {
    CFRelease(v1108);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v1169)
  {
    CFRelease(v1169);
  }

  OUTLINED_FUNCTION_191();
}

double segPumpResumeRoundTripMonitoring(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 0.0)
  {
    LODWORD(v2) = *(a1 + 8);
    v2 = *&v2;
  }

  v3 = v2 * 0.5 * 1000000000.0;
  if (v3 <= 1100000000)
  {
    v4 = 1100000000;
  }

  else
  {
    v4 = v3;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v7 = *(a1 + 16 * *(a1 + 8600) + 392);
  if (!*(v7 + 1185))
  {
    v8 = UpTimeNanoseconds;
    v9 = *(a1 + 8784);
    if (v9 > *(a1 + 8792))
    {
      v10 = v9 + v4;
      if (v9 + v4 <= UpTimeNanoseconds + 5000000)
      {
        v11 = UpTimeNanoseconds + 5000000;
      }

      else
      {
        v11 = v9 + v4;
      }

      if (v9 + v4 >= UpTimeNanoseconds + 5000000)
      {
        v12 = v9 + v4;
      }

      else
      {
        v12 = v10 + 1;
      }

      v13 = (v11 - v12) / v4;
      if (v10 < UpTimeNanoseconds + 5000000)
      {
        ++v13;
      }

      v14 = v9 + v4 + v4 * v13;
      goto LABEL_24;
    }

    if (UpTimeNanoseconds - v9 <= v4)
    {
LABEL_23:
      v14 = v8 + v4 + 5000000;
LABEL_24:
      if (v14 >= 1 && !*(a1 + 8800))
      {
        v19 = *a1;
        v20 = *(a1 + 64);

        return FigHTTPCreateTimer(v19, RoundTripMonitorTimeoutTimer, v20, (a1 + 8800), (v14 - v8) / 1000000000.0);
      }

      return result;
    }

    v15 = 0;
    v16 = (a1 + 400);
    do
    {
      if (segPumpStreamHasActiveMediaRequest(*(v16 - 1)))
      {
        goto LABEL_23;
      }

      v17 = *v16;
      v16 += 2;
      HasActiveMediaRequest = segPumpStreamHasActiveMediaRequest(v17);
      if (v15 > 1)
      {
        break;
      }

      ++v15;
    }

    while (!HasActiveMediaRequest);
    if (HasActiveMediaRequest)
    {
      goto LABEL_23;
    }

    if (!*(a1 + 335))
    {
      v21 = *(a1 + 40);
      if (v21 && FigHTTPRequestSessionSendPingWithPongHandler(v21, *(a1 + 56), *(a1 + 240), *(a1 + 64), *a1))
      {
        return result;
      }

LABEL_33:
      *(a1 + 8784) = v8;
      return result;
    }

    if (segPumpStreamHasPreloadHint(v7))
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(*(v7 + 56));
      v23 = *(v7 + 24);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(PreloadHint, v24, v25, v26, v27, v28, v29, v30);
      v32 = OUTLINED_FUNCTION_292();
      segPumpEnsureMediaSegmentURLs(v32, v33, v23, v34, v35, v36, v37, v38);
      if (MediaFilePrivateData[2])
      {
        v39 = FigMediaPlaylistGetPreloadHint(*(v7 + 56));
        v40 = *(v7 + 24);
        segPumpGetMediaFilePrivateData(v39, v41, v42, v43, v44, v45, v46, v47);
        v48 = OUTLINED_FUNCTION_284();
        segPumpEnsureMediaSegmentURLs(v48, v49, v40, v50, v51, v52, v53, v54);
      }
    }

    LOBYTE(v61) = 0;
    OUTLINED_FUNCTION_627();
    OUTLINED_FUNCTION_39_1();
    segPumpCustomURLLoaderGetURLGuts(v55, v56, v57, v58, v59, 1, 0, 0, v61, 0, 0, a1 + 8808, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, vars0);
    if (!v60)
    {
      goto LABEL_33;
    }
  }

  return result;
}

void segPumpCopyIndexFileFromCache()
{
  OUTLINED_FUNCTION_218_1();
  v42 = v0;
  v43 = v6;
  v8 = v7;
  v9 = v5;
  v10 = v4;
  v38 = 0;
  v39[0] = 0;
  v36 = 0;
  cf2 = 0;
  v11 = *(v1 + 296);
  v35 = 0;
  if (!v4)
  {
    OUTLINED_FUNCTION_183_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_48;
  }

  v12 = v3;
  v13 = v2;
  v14 = v1;
  *v4 = 0;
  if (v5)
  {
    *v5 = 0;
  }

  URLString = 0;
  cf[0] = 0;
  v15 = *(v1 + 304);
  if (!v15)
  {
LABEL_18:
    if (v11)
    {
      if (v38)
      {
        CFRelease(v38);
        v38 = 0;
      }

      if (cf2)
      {
        CFRelease(cf2);
        cf2 = 0;
      }

      if (v12)
      {
        if (FigStreamingCacheCopyMasterPlaylist(*(v14 + 296), v39, &v38) || FigStreamingCacheCopyStreamNetworkURL(*(v14 + 296), &cf2))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v14 + 8896) || *(v14 + 8212))
      {
        v26 = *(v13 + 64);
        if (v26)
        {
          goto LABEL_70;
        }

        CacheForStream = segPumpCreateCacheForStream();
        if (*(v14 + 8400) && CacheForStream)
        {
          goto LABEL_56;
        }

        v26 = *(v13 + 64);
        if (v26)
        {
LABEL_70:
          if (FigStreamingCacheMediaStreamCopyPlaylist(*(v14 + 296), v26, v39, &v38) || FigStreamingCacheMediaStreamCopyNetworkURL(*(v14 + 296), *(v13 + 64), &v36))
          {
            goto LABEL_56;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          cf2 = CFURLCreateWithString(AllocatorForMedia, v36, 0);
          if (!cf2)
          {
            OUTLINED_FUNCTION_183_1();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_48;
          }

          if (FigStreamingCacheMediaStreamIsComplete(*(v14 + 296), *(v13 + 64), &v35))
          {
            goto LABEL_56;
          }
        }
      }
    }

LABEL_34:
    v28 = FigCFHTTPCompareURLs(*(v13 + 24), cf2);
    if (!(v28 | v35))
    {
      goto LABEL_56;
    }

    if (!v38 || !FigCFHTTPCompareURLs(*(v13 + 24), cf2))
    {
LABEL_49:
      Value = 0;
      goto LABEL_50;
    }

    Value = CFDictionaryGetValue(v38, @"URL");
    if (!Value)
    {
LABEL_50:
      *v10 = v39[0];
      v39[0] = 0;
      if (v9)
      {
        *v9 = v38;
        v38 = 0;
      }

      if (v8)
      {
        *v8 = cf2;
        cf2 = 0;
      }

      if (Value)
      {
        CFRelease(Value);
      }

      goto LABEL_56;
    }

    v30 = FigGetAllocatorForMedia();
    v31 = CFURLCreateWithString(v30, Value, 0);
    if (v31)
    {
      Value = v31;
      if (!FigCFHTTPCompareURLs(*(v13 + 16), v31))
      {
        v32 = *(v13 + 16);
        *(v13 + 16) = Value;
        CFRetain(Value);
        if (v32)
        {
          CFRelease(v32);
        }
      }

      goto LABEL_50;
    }

    OUTLINED_FUNCTION_183_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_48:
    if (v34)
    {
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (v3)
  {
    v16 = FigStreamingCacheCopyMasterPlaylist(v15, v39, &v38);
    if (!v16)
    {
      v16 = FigStreamingCacheCopyStreamNetworkURL(*(v14 + 304), &cf2);
    }

    v17 = v16;
  }

  else
  {
    v39[1] = 0;
    URLAndString = segPumpCreateURLAndString(*(v2 + 24), 0, cf);
    if (URLAndString || (OUTLINED_FUNCTION_135_1(), (URLAndString = FigStreamingCacheCreateMediaStream(v19, v20, v21, v22, v23, v24, v25)) != 0))
    {
      v17 = URLAndString;
    }

    else
    {
      v17 = 0;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  if (URLString)
  {
    CFRelease(URLString);
  }

  if (!v17)
  {
    if (v39[0])
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

LABEL_56:
  if (v39[0])
  {
    CFRelease(v39[0]);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (cf2)
  {
    CFRelease(cf2);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  OUTLINED_FUNCTION_209_1();
}

uint64_t segPumpCreateCacheForStream()
{
  OUTLINED_FUNCTION_257_0();
  v3 = v2;
  OUTLINED_FUNCTION_152_1();
  URLAndString = segPumpCreateURLAndString(v4, v5, v6);
  if (URLAndString)
  {
    return URLAndString;
  }

  v8 = 0;
  v9 = *(v3 + 8328);
  v10 = *v1;
  if (v9 && !v10)
  {
    v8 = *(v9 + 28);
  }

  v1[8] = 0;
  v11 = v1 + 8;
  URLAndString = FigStreamingCacheCreateMediaStream(v0, v10, 0, *(v11 - 4), v8, v10 == 2, v11);
  if (URLAndString)
  {
    return URLAndString;
  }

  if (*(v3 + 296) == v0 && *(v3 + 8227))
  {
    return FigStreamingCacheMediaStreamSetPersistent(v0, *v11, *MEMORY[0x1E695E4D0]);
  }

  return 0;
}

uint64_t segPumpIsProtocolUsedByRequest(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_187();
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_200_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v1 = OUTLINED_FUNCTION_515();
      v2(v1);
    }
  }

  return 0;
}

uint64_t segPumpCheckPriorityHeaderLowLatencyServerCompliance(uint64_t a1)
{
  cf = 0;
  v4 = 0;
  FigGetAllocatorForMedia();
  OUTLINED_FUNCTION_200_1();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v1 = OUTLINED_FUNCTION_515();
    v2(v1);
  }

  return 0;
}

uint64_t segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream()
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*(DerivedStorage + 296))
  {
    return 0;
  }

  v2 = DerivedStorage + 0x2000;
  if (*(DerivedStorage + 8896))
  {
    if (!*(DerivedStorage + 8212) || *(DerivedStorage + 392) != v0)
    {
      return 0;
    }
  }

  else if (!*(DerivedStorage + 8213))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    return 0;
  }

  result = segPumpCreateCacheForStream();
  if (!*(v2 + 208))
  {
    return 0;
  }

  if (result == -15642)
  {
    FigCreateErrorForOSStatus(-15642, &cf);
    v4 = OUTLINED_FUNCTION_177();
    segPumpSendEndCallbackForActiveStream(v4, v5, v6);
    result = cf;
    if (cf)
    {
      CFRelease(cf);
      return 0;
    }
  }

  return result;
}

double segPumpSetPlaylistForStreamCache(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v5 = *(a2 + 64);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (FigStreamingCacheMediaStreamSetPlaylist(a1, v5, a3, a4))
  {
    return result;
  }

  v8 = FigCFHTTPCreateURLString(*(a2 + 24));
  if (v8)
  {
    v9 = v8;
    if (!FigStreamingCacheMediaStreamSetNetworkURL(a1, *(a2 + 64), v8))
    {
      *(a2 + 538) = 0;
    }

    CFRelease(v9);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_303();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double segPumpEnsurePlaylistCache(uint64_t a1)
{
  if (!*(a1 + 304))
  {
    Mutable = CFDictionaryCreateMutable(*(a1 + 56), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_MemoryBacking");
      FigStreamingCacheCreate(*(a1 + 56), *(a1 + 320), v3, (a1 + 304));
      CFRelease(v3);
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void segPumpMarkMediaFileAsDelivered(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return;
  }

  OUTLINED_FUNCTION_369();
  segPumpSetDeliveryStatusForMediaFileAndParts(v6, 1, v6, v7, v8, v9, v10, v11);
  if (FigMediaSegmentSpecifierGetType(a3) != 1 && !FigMediaSegmentSpecifierIsFragment(a3))
  {
    v4[47] = FigMediaSegmentSpecifierGetMediaSequence(a3);
  }

  OUTLINED_FUNCTION_388_0();
  if (v12)
  {
    v15 = v4[32];
    if (v15)
    {
      if (!FigMediaSegmentSpecifierIsFragment(v15))
      {
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v4[32]);
        v24 = 0;
        while (1)
        {
          v25 = PartialSegments ? CFArrayGetCount(PartialSegments) : 0;
          if (v24 >= v25)
          {
            break;
          }

          v26 = OUTLINED_FUNCTION_284();
          ValueAtIndex = CFArrayGetValueAtIndex(v26, v27);
          ++v24;
          if (!*(segPumpGetMediaFilePrivateData(ValueAtIndex, v29, v30, v31, v32, v33, v34, v35) + 73))
          {
            if (ValueAtIndex)
            {
              goto LABEL_6;
            }

            break;
          }
        }

        *(segPumpGetMediaFilePrivateData(v4[32], v16, v17, v18, v19, v20, v21, v22) + 73) = 1;
        v4[47] = FigMediaSegmentSpecifierGetMediaSequence(v4[32]);
      }
    }
  }

LABEL_6:
  v13 = v4[32];
  if (v13 == a3 || (OUTLINED_FUNCTION_388_0(), v12))
  {
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v13)
  {
LABEL_11:
    CFRelease(v13);
    v4[32] = 0;
LABEL_12:
    v14 = v4[33];
    if (v14)
    {
      CFRelease(v14);
      v4[33] = 0;
    }
  }

  segPumpUpdateBufferingDoneState(v3);
}

uint64_t segPumpPlaylistRecalculatePumpTimeOffsets(uint64_t result, double a2)
{
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (v4 >= MediaSegmentSpecifiers)
      {
        break;
      }

      v7 = FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v4);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v9, v10, v11, v12, v13, v14, v15);
      if (!*(MediaFilePrivateData + 96))
      {
        MediaFilePrivateData[4] = a2;
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
        v18 = 0;
        v5 = 0.0;
        if (PartialSegments)
        {
LABEL_8:
          Count = CFArrayGetCount(PartialSegments);
          goto LABEL_10;
        }

        while (1)
        {
          Count = 0;
LABEL_10:
          if (v18 >= Count)
          {
            break;
          }

          v20 = OUTLINED_FUNCTION_284();
          v22 = CFArrayGetValueAtIndex(v20, v21);
          *(segPumpGetMediaFilePrivateData(v22, v23, v24, v25, v26, v27, v28, v29) + 4) = a2 + v5;
          v5 = v5 + FigMediaSegmentSpecifierGetTimeInSeconds(v22);
          ++v18;
          if (PartialSegments)
          {
            goto LABEL_8;
          }
        }

        a2 = a2 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      }

      ++v4;
    }

    result = FigMediaPlaylistGetPreloadHint(v3);
    if (result)
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(v3);
      result = FigMediaSegmentSpecifierIsReadInCurrent(PreloadHint);
      if (result)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
        if (FigCFArrayGetLastValue())
        {
          FigMediaPlaylistGetMediaSegmentSpecifiers(v3);
          LastValue = FigCFArrayGetLastValue();
          a2 = a2 - FigMediaSegmentSpecifierGetTimeInSeconds(LastValue);
        }

        v32 = FigMediaPlaylistGetPreloadHint(v3);
        result = segPumpGetMediaFilePrivateData(v32, v33, v34, v35, v36, v37, v38, v39);
        *(result + 32) = v5 + a2;
      }
    }
  }

  return result;
}

void segPumpStopPlaylistReadsAndResetAllData(uint64_t a1)
{
  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_147();
    v3 = OUTLINED_FUNCTION_362_1();
    v11 = OUTLINED_FUNCTION_126(v3, v4, v5, v6, v7, v8, v9, v10, v39, v41, v43, *v45, v45[2], v45[3], v45[4]);
    v19 = OUTLINED_FUNCTION_180_0(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v47, v48, v49);
    if (OUTLINED_FUNCTION_124_0(v19))
    {
      if (a1)
      {
        OUTLINED_FUNCTION_253_1();
      }

      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v20, v21, v22, v23, v24, v25, v1, v26);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v27, v28, v29, v30, v31);
  }

  *(a1 + 384) = 1;
  *(a1 + 8221) = 0;
  v32 = *(a1 + 296);
  if (v32)
  {
    FigStreamingCacheSetCacheTimeRange(v32, 0.0, 0.0);
  }

  do
  {
    segPumpStopStream(a1, *(a1 + 392), 0);
    *(*(a1 + 392) + 1185) = 1;
    OUTLINED_FUNCTION_383_0();
  }

  while (!v33);
  for (i = 392; i != 440; i += 16)
  {
    v35 = *(a1 + i);
    if ((*(v35 + 160) - 2) <= 2)
    {
      *(v35 + 160) = 1;
    }
  }

  v36 = OUTLINED_FUNCTION_270();
  segPumpReadyNotification(v36, v37, v38);
}

void segPumpReadNextCryptKeyForStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 248))
  {
    OUTLINED_FUNCTION_653();
    OUTLINED_FUNCTION_207();
    v5 = *(v4 + 48);
    if (v5)
    {
      ContentKeySpecifiers = FigMultivariantPlaylistGetContentKeySpecifiers(v5);
      v7 = 0;
      while (1)
      {
        v8 = ContentKeySpecifiers ? CFArrayGetCount(ContentKeySpecifiers) : 0;
        if (v7 >= v8)
        {
          break;
        }

        OUTLINED_FUNCTION_292();
        ValueAtIndex = FigCFArrayGetValueAtIndex();
        ++v7;
        if (segPumpDoesCryptKeyRequireFetch())
        {
          goto LABEL_35;
        }
      }
    }

    if (!v3[7])
    {
      goto LABEL_36;
    }

    v10 = v3[32];
    if (v10)
    {
      if (FigMediaSegmentSpecifierGetContentKeySpecifier(v10))
      {
        ValueAtIndex = FigMediaSegmentSpecifierGetContentKeySpecifier(v3[32]);
        if (segPumpDoesCryptKeyRequireFetch())
        {
          if (ValueAtIndex)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v11 = 0;
    for (i = 0; ; ++i)
    {
      Count = FigMediaPlaylistGetContentKeySpecifiers(v3[7]);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      FigMediaPlaylistGetContentKeySpecifiers(v3[7]);
      ValueAtIndex = FigCFArrayGetValueAtIndex();
      OUTLINED_FUNCTION_152_1();
      if (segPumpGetCryptKeyCommonData(v14, v15, v16))
      {
        goto LABEL_36;
      }

      if (segPumpDoesCryptKeyRequireFetch())
      {
        v17 = OUTLINED_FUNCTION_177();
        if (segPumpStreamWaitingForCryptKey(v17, v18, v19))
        {
          goto LABEL_24;
        }
      }

      if (segPumpDoesCryptKeyRequireFetch())
      {
        v11 = 1;
      }
    }

    ValueAtIndex = 0;
LABEL_24:
    if (!ValueAtIndex && v11)
    {
      OUTLINED_FUNCTION_310_1();
      while (1)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v3[7]);
        if (MediaSegmentSpecifiers)
        {
          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
        }

        if (i >= MediaSegmentSpecifiers)
        {
          goto LABEL_36;
        }

        v21 = FigMediaPlaylistGetMediaSegmentSpecifiers(v3[7]);
        v22 = CFArrayGetValueAtIndex(v21, i);
        if (!*(segPumpGetMediaFilePrivateData(v22, v23, v24, v25, v26, v27, v28, v29) + 73))
        {
          if (FigMediaSegmentSpecifierGetContentKeySpecifier(v22))
          {
            if (FigMediaSegmentSpecifierGetContentKeySpecifier(v22) != ValueAtIndex)
            {
              ValueAtIndex = FigMediaSegmentSpecifierGetContentKeySpecifier(v22);
              if (segPumpDoesCryptKeyRequireFetch())
              {
                break;
              }
            }
          }
        }

        ++i;
      }
    }

LABEL_35:
    if (ValueAtIndex)
    {
LABEL_39:
      v30 = v3[31];
      v3[31] = ValueAtIndex;
      CFRetain(ValueAtIndex);
      if (v30)
      {
        CFRelease(v30);
      }

      v31 = OUTLINED_FUNCTION_171();
      segPumpSendCryptKeyRequest(v31, v32, v3, v33);
    }

LABEL_36:
    OUTLINED_FUNCTION_652();
  }
}

void segPumpRTCReportingRespondToFirstIndexFileWithMedia()
{
  OUTLINED_FUNCTION_369();
  if (!*(v2 + 9240))
  {
    if (*v1 == 1)
    {
      HasEndTag = FigMediaPlaylistHasEndTag(v1[7]);
      v8 = @"AOD";
      v9 = @"ALIVE";
    }

    else
    {
      if (*v1)
      {
        goto LABEL_2;
      }

      HasEndTag = FigMediaPlaylistHasEndTag(v1[7]);
      v8 = @"VOD";
      v9 = @"LIVE";
    }

    if (HasEndTag)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    *(v0 + 9240) = v12;
    v13 = *(v0 + 9232);
    if (v13)
    {
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v14)
      {
        v14(v13, 0x1F0B64538, 0x1F0B655F8, v12, 0);
      }
    }
  }

LABEL_2:
  v3 = *(v0 + 8);
  v4 = *(v0 + 9232);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v5)
    {
      v5(v4, 0x1F0B64538, 0x1F0B653B8, 1000 * v3, 0);
    }

    v4 = *(v0 + 9232);
  }

  if (v4 && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_310();
    v6();
  }

  if (FigMediaPlaylistHasEndTag(v1[7]))
  {
    if (!*v1)
    {
      FigMediaPlaylistGetPlaylistActiveDurationSecs(v1[7]);
      if (*(v0 + 9232))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v10 = OUTLINED_FUNCTION_198_0();

          v11(v10);
        }
      }
    }
  }
}

BOOL segPumpIsIndexFileResponseOutOfDate(uint64_t a1, uint64_t a2, __CFHTTPMessage *a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (FigMediaPlaylistHasEndTag(*(a2 + 56)))
      {
        return 0;
      }

      v6 = FigCFHTTPCopyDateFromHTTPResponse(a3);
      if (!v6)
      {
        return 0;
      }

      else
      {
        v7 = v6;
        ModifiedDateFromHTTPResponse = FigCFHTTPCopyLastModifiedDateFromHTTPResponse(a3);
        if (ModifiedDateFromHTTPResponse)
        {
          v9 = ModifiedDateFromHTTPResponse;
          v10 = OUTLINED_FUNCTION_198_0();
          v3 = CFDateGetTimeIntervalSinceDate(v10, v11) > v4 * 3.0;
          CFRelease(v9);
        }

        else
        {
          v3 = 0;
        }

        CFRelease(v7);
      }
    }
  }

  return v3;
}

uint64_t segPumpStreamHasPreloadConnectionForSegment(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  result = FigMediaSegmentSpecifierGetURLString(v6);
  if (!result)
  {
    return result;
  }

  if (!*(v4 + 792))
  {
    return 0;
  }

  v15 = *(v4 + 24);
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v3, v8, v9, v10, v11, v12, v13, v14);
  v17 = OUTLINED_FUNCTION_627();
  segPumpEnsureMediaSegmentURLs(v17, v18, v15, v19, v20, v21, v22, v23);
  if (!MediaFilePrivateData[2])
  {
    return 0;
  }

  v31 = *(v4 + 24);
  segPumpGetMediaFilePrivateData(v3, v24, v25, v26, v27, v28, v29, v30);
  v32 = OUTLINED_FUNCTION_627();
  segPumpEnsureMediaSegmentURLs(v32, v33, v31, v34, v35, v36, v37, v38);
  result = FigCFEqual();
  if (a3 && result)
  {
    v39 = *(v4 + 792);

    return segPumpMediaConnectionRangeIncludesMedia(v39, v3);
  }

  return result;
}

double segPumpRealizePreload(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (segPumpShouldDoSegmentReadAheads(DerivedStorage))
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(a2[7]);
    for (i = FigCFArrayGetLastValue(); ; i = FigMediaSegmentSpecifierGetPreviousSegment(v13))
    {
      v13 = i;
      if (!i)
      {
LABEL_15:
        ValueAtIndex = 0;
        goto LABEL_16;
      }

      if (*(segPumpGetMediaFilePrivateData(i, v5, v6, v7, v8, v9, v10, v11) + 73))
      {
        break;
      }

      for (j = 0; ; ++j)
      {
        PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v13);
        if (PartialSegments)
        {
          PartialSegments = CFArrayGetCount(PartialSegments);
        }

        if (j >= PartialSegments)
        {
          break;
        }

        v16 = FigMediaSegmentSpecifierGetPartialSegments(v13);
        ValueAtIndex = CFArrayGetValueAtIndex(v16, j);
        if (!*(segPumpGetMediaFilePrivateData(ValueAtIndex, v18, v19, v20, v21, v22, v23, v24) + 73))
        {
          v25 = OUTLINED_FUNCTION_415_0();
          if (segPumpStreamHasPreloadConnectionForSegment(v25, v26, 1))
          {
            if (ValueAtIndex)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      v27 = OUTLINED_FUNCTION_627();
      if (segPumpStreamHasPreloadConnectionForSegment(v27, v28, 1))
      {
        goto LABEL_15;
      }
    }

    ValueAtIndex = 0;
    v13 = 0;
LABEL_16:
    if (ValueAtIndex)
    {
      v13 = ValueAtIndex;
    }

    if (v13)
    {
      if (FigMediaSegmentSpecifierIsMarkedAsGap(v13))
      {
        v39 = OUTLINED_FUNCTION_235();
        segPumpHandleMediaFileNetworkError(v39, v40, 0, v13, 4294951877, 0);
      }

      else if (segPumpMediaConnectionRangeIncludesMedia(a2[99], v13))
      {
        v29 = OUTLINED_FUNCTION_273_1();
        segPumpSetMediaConnectionIsDormant(v29, v30, v31);
        *(a2[99] + 40) = FigGetUpTimeNanoseconds();
        if (a2[97] >= 1)
        {
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v34 = *(a2[96] + 8 * v33);
            if (!v34)
            {
              break;
            }

            v35 = *(v34 + 8);
            if (v35)
            {
              if (FigMediaSegmentSpecifierGetType(v35) == 1)
              {
                ++v32;
              }
            }

            if (++v33 >= a2[97])
            {
              return result;
            }
          }

          if (*(DerivedStorage + 337))
          {
            v36 = 1;
          }

          else
          {
            v36 = *(DerivedStorage + 8396);
          }

          if (v33 - v32 < v36)
          {
            v37 = a2[99];
            v38 = *(v37 + 8);
            *(v37 + 8) = v13;
            CFRetain(v13);
            if (v38)
            {
              CFRelease(v38);
            }

            *(a2[96] + 8 * v33) = a2[99];
            a2[99] = 0;
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t segPumpStreamHasPreloadConnectionForMap(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a1 + 800))
  {
    return 0;
  }

  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a2, a2, a3, a4, a5, a6, a7, a8);
  v10 = OUTLINED_FUNCTION_70_1();
  segPumpEnsureMediaSegmentURLs(v10, v11, v12, v13, v14, v15, v16, v17);
  if (!MediaFilePrivateData[2])
  {
    return 0;
  }

  segPumpGetMediaFilePrivateData(a2, v18, v19, v20, v21, v22, v23, v24);
  v25 = OUTLINED_FUNCTION_70_1();
  segPumpEnsureMediaSegmentURLs(v25, v26, v27, v28, v29, v30, v31, v32);

  return FigCFEqual();
}

uint64_t segPumpDecryptorReceivedKeyResponseCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  FigRetainProxyRetain();
  OUTLINED_FUNCTION_140_0();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v7)
  {
    if (dword_1EAF16A30)
    {
      OUTLINED_FUNCTION_147();
      v8 = OUTLINED_FUNCTION_251_1();
      v16 = OUTLINED_FUNCTION_126(v8, v9, v10, v11, v12, v13, v14, v15, v50, v52, v54, v56, SBYTE2(v56), SBYTE3(v56), SBYTE4(v56));
      v24 = OUTLINED_FUNCTION_116_0(v16, v17, v18, v19, v20, v21, v22, v23, v51, v53, v55, v57, v58, v59, v60);
      if (OUTLINED_FUNCTION_109_0(v24))
      {
        LODWORD(v62) = 136315650;
        OUTLINED_FUNCTION_181_0();
        OUTLINED_FUNCTION_168_1();
        v65 = a4;
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v25, v26, v27, v28, v29, v30, v4, v31);
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v32, v33, v34, v35, v36);
    }

    v37 = 392;
    while (1)
    {
      if (*(*v37 + 248))
      {
        v38 = OUTLINED_FUNCTION_173_0();
        if (segPumpGetCryptKeyCommonData(v38, v39, v40))
        {
          goto LABEL_14;
        }

        if (MEMORY[0x48] == a4 || MEMORY[0x70] == a4)
        {
          break;
        }
      }

      v37 += 16;
      if (v37 == 440)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_255_1();
    segPumpContinueIfCryptKeyResponseWasAlreadySet(v41, v42, v43, v44, v45, v46, v47, v48, v50, v52, v54, v56, 0, 0, v62, v63, v64, v65);
  }

LABEL_14:
  segPumpUnlockAndSendAllPendingNotifications(a2);
  if (cf)
  {
    CFRelease(cf);
  }

  return FigRetainProxyRelease();
}

void segPumpCryptKeyRenewalCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_570();
  OUTLINED_FUNCTION_198_1();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v6)
  {
    for (i = 0; i != 3; ++i)
    {
      v8 = *(v18 + 16 * i + 392);
      if (*(v8 + 56))
      {
        v9 = 0;
        while (1)
        {
          ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(*(v8 + 56));
          if (ContentKeySpecifiers)
          {
            ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
          }

          if (v9 >= ContentKeySpecifiers)
          {
            break;
          }

          v11 = FigMediaPlaylistGetContentKeySpecifiers(*(v8 + 56));
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v9);
          OUTLINED_FUNCTION_152_1();
          if (segPumpGetCryptKeyCommonData(v13, v14, v15))
          {
            goto LABEL_17;
          }

          ++v9;
          if (*(v17 + 72) == a4)
          {
            if (!ValueAtIndex)
            {
              break;
            }

            if (v17)
            {
              v16 = *(v8 + 248);
              *(v8 + 248) = ValueAtIndex;
              CFRetain(ValueAtIndex);
              if (v16)
              {
                CFRelease(v16);
              }

              *(v17 + 153) = 0;
              segPumpSendCryptKeyRequest(cf, v18, v8, ValueAtIndex);
            }

            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_17:
  segPumpUnlockAndSendAllPendingNotifications(a2);
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_860();
}

void segPumpDeferredDecryptorNativeCryptorInvalidatedCallback(int a1, int a2, int a3, uint64_t a4, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict && (Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6961038])) != 0)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v7 = valuePtr;
  }

  else
  {
    v7 = 0;
  }

  segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(a4, v7);
}

void segPumpContinueAfterKeyFetched(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_257_0();
  v23 = v22;
  a10 = 0;
  if (!segPumpGetCryptKeyCommonData(v24, 0, &a10))
  {
    v25 = *(v19 + 248);
    if (v25)
    {
      CFRelease(v25);
      *(v19 + 248) = 0;
    }

    v26 = 0;
    *(a10 + 153) = 0;
    while (!segPumpContinueStreamAfterCryptKeyArrival(v23, v18, *(v18 + v26 + 392), a10))
    {
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_17;
      }

      if (*(v18 + 7880))
      {
        if (segPumpContinueStreamAfterCryptKeyArrival(v23, v18, *(v18 + v26 + 400), a10))
        {
          break;
        }

        if (FigRetainProxyIsInvalidated())
        {
LABEL_17:
          OUTLINED_FUNCTION_239();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          break;
        }
      }

      v26 += 16;
      if (v26 == 48)
      {
        if (!*(v19 + 248))
        {
          OUTLINED_FUNCTION_330_1();
          segPumpReadNextCryptKeyForStream(v27, v28, v29);
          if (!*(v19 + 248))
          {
            segPumpResetConnection(v18, v19 + 544);
          }
        }

        break;
      }
    }
  }

  OUTLINED_FUNCTION_652();
}

uint64_t segPumpStreamWaitingForCryptKey(uint64_t a1, void *a2, uint64_t a3)
{
  result = 0;
  if (*(a1 + 330))
  {
    v5 = *(a2[87] + 8);
    if (v5)
    {
      if (a2[32] != v5 && a2[33] != v5)
      {
        return 0;
      }

      result = FigMediaSegmentSpecifierGetContentKeySpecifier(v5);
      if (!result)
      {
        return result;
      }

      v7 = result;
      OUTLINED_FUNCTION_152_1();
      if (segPumpGetCryptKeyCommonData(v8, v9, v10) || FigMediaSegmentSpecifierGetType(v5) == 1 && FigContentKeySpecifierGetEncryptionMethod(v7) - 1 < 2)
      {
        return 0;
      }

      return a3 == 0;
    }
  }

  return result;
}

double segPumpStreamUnchainMediaConnIfChaining(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_187();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = v3[7];
  if (v7 && FigMediaPlaylistGetPreloadHint(v7) && v3[87] == a3 && segPumpMediaConnectionIsActive(a3))
  {
    v8 = a3[34];
    v9 = v8 ? CMBlockBufferGetDataLength(v8) : 0;
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v11 = a3[27] - v9;
    a3[36] = UpTimeNanoseconds;
    a3[37] = v11;
    if (!v3[99])
    {
      v12 = a3[31];
      if (v11 < v12 || v12 <= 0)
      {
        v3[87] = 0;
        v14 = v3[85];
        v15 = v14;
        while (1)
        {
          v15 = *v15;
          if (!v15)
          {
            v15 = v3[85];
          }

          if (!segPumpMediaConnectionIsActive(v15))
          {
            break;
          }

          if (v15 == v14)
          {
            v15 = v14;
            break;
          }
        }

        v3[87] = v15;
        v3[99] = a3;
        v16 = OUTLINED_FUNCTION_177();
        result = segPumpRealizePreload(v16, v17);
        if (!v18)
        {
          if (v3[99])
          {
            if (segPumpStreamHasPreloadHint(v3) && (FigMediaPlaylistGetPreloadHint(v3[7]), v19 = OUTLINED_FUNCTION_201_0(), segPumpStreamHasPreloadConnectionForSegment(v19, v20, 0)))
            {
              v23 = *(v3[99] + 8);
              PreloadHint = FigMediaPlaylistGetPreloadHint(v3[7]);
              *(v3[99] + 8) = PreloadHint;
              if (PreloadHint)
              {
                CFRetain(PreloadHint);
              }

              if (v23)
              {
                CFRelease(v23);
              }

              segPumpSetMediaConnectionIsDormant(DerivedStorage, v3[99], 1);
            }

            else
            {
              v21 = OUTLINED_FUNCTION_235();
              segPumpStreamCancelPreloadReadAndResetData(v21, v22);
            }
          }

          OUTLINED_FUNCTION_177();
          return segPumpStreamSchedulePreloadHintRead();
        }
      }
    }
  }

  return result;
}

uint64_t segPumpHandleCryptFailure()
{
  OUTLINED_FUNCTION_207();
  v9 = *(*(v3 + 696) + 8);
  if (v9 && (MediaFilePrivateData = segPumpGetMediaFilePrivateData(v9, v2, v3, v4, v5, v6, v7, v8)) != 0)
  {
    v13 = MediaFilePrivateData;
    MediaFilePrivateData[99] = 1;
    v10 = *(v0 + 696);
    v11 = *(v10 + 8);
    if (*(v0 + 256) == v11 || *(v0 + 264) == v11)
    {
      v13[73] = 1;
    }

    v13[97] = 1;
  }

  else
  {
    OUTLINED_FUNCTION_243();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
    v10 = *(v0 + 696);
    v11 = *(v10 + 8);
  }

  *(v0 + 403) = 1;
  if (v11)
  {
    CFRelease(v11);
    *(*(v0 + 696) + 8) = 0;
    v10 = *(v0 + 696);
  }

  segPumpStreamDontReuseHTTPRequest(v1, v10);
  v14 = OUTLINED_FUNCTION_171();

  return segPumpDeliverNextMediaForSingleStream(v14, v15, v0);
}

uint64_t segPumpHandleMediaFileNetworkError(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t *a6)
{
  v8 = a5;
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    OUTLINED_FUNCTION_296_1();
    if (!v45 || v22)
    {
LABEL_39:
      FigCreateErrorForOSStatus(v8, &cf);
      if (ErrorFromHTTPRequestIfAvailable)
      {
        goto LABEL_40;
      }

LABEL_12:
      if (!a3)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

LABEL_11:
    ErrorFromHTTPRequestIfAvailable = FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(0, -1005, *MEMORY[0x1E695AD78], 0, &cf);
    if (ErrorFromHTTPRequestIfAvailable)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  ++*(a3 + 64);
  OUTLINED_FUNCTION_296_1();
  if (v45 && !v15)
  {
    goto LABEL_11;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_496();
  ErrorFromHTTPRequestIfAvailable = FigStreamingNetworkErrorCreateErrorFromHTTPRequestIfAvailable(v16, v17, v18, v19, v20);
  if (ErrorFromHTTPRequestIfAvailable)
  {
LABEL_40:
    v46 = ErrorFromHTTPRequestIfAvailable;
    v44 = 0;
    if (!a6)
    {
      goto LABEL_92;
    }

LABEL_91:
    *a6 = v44;
    goto LABEL_92;
  }

LABEL_13:
  v23 = *(a3 + 72);
  v24 = cf;
  *(a3 + 72) = cf;
  if (v24)
  {
    CFRetain(v24);
  }

  if (v23)
  {
    CFRelease(v23);
  }

LABEL_17:
  v25 = *(a2 + 296);
  v26 = cf;
  *(a2 + 296) = cf;
  if (v26)
  {
    CFRetain(v26);
  }

  v85 = a1;
  if (v25)
  {
    CFRelease(v25);
  }

  v27 = cf;
  *v94 = 0;
  *v89 = 0;
  CFErrorGetCode(cf);
  v28 = OUTLINED_FUNCTION_203_0();
  CFErrorGetDomain(v28);
  v29 = CFErrorCopyUserInfo(v27);
  OUTLINED_FUNCTION_292_1();
  if (!v30)
  {
    v44 = 0;
    goto LABEL_75;
  }

  *v89 = 32;
  if (*(DerivedStorage + 8896))
  {
LABEL_23:
    v31 = 5;
LABEL_24:
    *v94 = v31;
    goto LABEL_28;
  }

  if (FigMediaSegmentSpecifierIsMarkedAsGap(a4))
  {
    *v94 = 7;
    v32 = 48;
    goto LABEL_27;
  }

  if (FigCFEqual())
  {
    if ((v6 + 12939) < 2)
    {
      goto LABEL_52;
    }

    switch(v6)
    {
      case -15628:
        *v94 = 7;
        v32 = 96;
        goto LABEL_27;
      case -12889:
        v31 = 7;
        goto LABEL_24;
      case -12465:
        v31 = 8;
        goto LABEL_24;
      case -12668:
LABEL_52:
        v47 = 0;
        v48 = *(DerivedStorage + 8600);
        while (!v48 || !*(*(DerivedStorage + 392 + v47) + 16))
        {
          v47 += 16;
          --v48;
          if (v47 == 48)
          {
            if (!*(DerivedStorage + 8280))
            {
              goto LABEL_23;
            }

            goto LABEL_57;
          }
        }

        break;
    }
  }

LABEL_57:
  CommonActionForNetworkError = segPumpGetCommonActionForNetworkError();
  if (!CommonActionForNetworkError)
  {
    if (*v94 != 1)
    {
LABEL_28:
      v33 = OUTLINED_FUNCTION_104_0();
      segPumpModifyErrorActionIfCurrentAlternateIsLastValidAlternate(v33, v34, v35, v36);
      v44 = *v94;
      if (*(DerivedStorage + 8360))
      {
        v45 = *v94 == 6 || *v94 == 3;
        if (!v45)
        {
LABEL_62:
          v50 = *(a2 + 256);
          if (v50)
          {
            MediaFilePrivateData = segPumpGetMediaFilePrivateData(v50, v37, v38, v39, v40, v41, v42, v43);
            LOBYTE(v87) = 0;
            FigStreamingCacheMediaSegmentIsComplete(*(DerivedStorage + 296), *(a2 + 64), MediaFilePrivateData[13], &v87);
            if (*v94 == 3)
            {
              if (*(DerivedStorage + 296))
              {
                if (!*(a2 + 405))
                {
                  v52 = *(a2 + 680);
                  if (v52)
                  {
                    while (1)
                    {
                      v53 = OUTLINED_FUNCTION_341_1();
                      if (segPumpMediaConnectionIncludesMedia(v53, v54, a4))
                      {
                        break;
                      }

                      v52 = *v52;
                      if (!v52)
                      {
                        goto LABEL_74;
                      }
                    }

                    if (*(v52 + 209) && v87 && !FigCFEqual())
                    {
                      *v94 = 0;
                    }
                  }
                }
              }
            }

LABEL_74:
            v44 = *v94;
          }

LABEL_75:
          v46 = 0;
          if (!v29)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        if ((v89[0] & 0x10) != 0)
        {
          v44 = 9;
LABEL_61:
          *v94 = v44;
          goto LABEL_62;
        }
      }

      else if ((*v94 - 9) >= 0xFFFFFFFFFFFFFFFELL)
      {
        if ((v89[0] & 0x40) != 0)
        {
          goto LABEL_62;
        }

        *v94 = 3;
LABEL_44:
        if (*v86)
        {
          v44 = 3;
          goto LABEL_62;
        }

        v44 = 6;
        goto LABEL_61;
      }

      if (*v94 != 3)
      {
        goto LABEL_62;
      }

      goto LABEL_44;
    }

    *v94 = 7;
    v32 = *v89 | 1;
LABEL_27:
    *v89 = v32;
    goto LABEL_28;
  }

  v46 = CommonActionForNetworkError;
  v44 = 0;
  if (v29)
  {
LABEL_76:
    CFRelease(v29);
  }

LABEL_77:
  if (v46)
  {
    goto LABEL_98;
  }

  if (v44 == 9)
  {
    if (FigMediaSegmentSpecifierIsMarkedAsGap(a4))
    {
      if (dword_1EAF16A30)
      {
        v87 = 0;
        OUTLINED_FUNCTION_418_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v56 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_16_1(v56))
        {
          if (DerivedStorage)
          {
            OUTLINED_FUNCTION_393_1();
          }

          *v89 = 136315906;
          OUTLINED_FUNCTION_359_1();
          v90 = 2048;
          v91 = v57;
          v92 = 2048;
          v93 = a4;
          OUTLINED_FUNCTION_95_1();
          OUTLINED_FUNCTION_361_1();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v58, v59, v60, v61, v62, v63, 0, v64);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v76, v77, v78, v79, v80);
      }

      v46 = 0;
      v44 = 9;
      if (a6)
      {
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    v65 = OUTLINED_FUNCTION_104_0();
    segPumpAppendErrorLogEntryWithCFError(v65, v66, a3, v67, 2, 3);
    v46 = 0;
    v44 = 9;
  }

  else
  {
    if (v44 == 3)
    {
      v82 = OUTLINED_FUNCTION_104_0();
      segPumpCancelMediaFileReadAndResetData(v82, v83, 0, 1);
      v84 = v85;
    }

    else
    {
      if (v44 == 5)
      {
        FigMediaSegmentSpecifierGetMediaSequence(a4);
        v68 = OUTLINED_FUNCTION_104_0();
        segPumpDispatchAsyncMediaDelivery(v68, v69, v70, -1, v71, v72);
        v73 = OUTLINED_FUNCTION_104_0();
        segPumpAppendErrorLogEntryWithCFError(v73, v74, a3, v75, 2, 3);
        v46 = 0;
        goto LABEL_98;
      }

      v84 = v85;
    }

    v46 = segPumpHandleCommonNetworkError(v84);
  }

LABEL_98:
  if (a6)
  {
    goto LABEL_91;
  }

LABEL_92:
  if (cf)
  {
    CFRelease(cf);
  }

  return v46;
}

void segPumpCheckAndMarkStreamCacheComplete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  theArray = 0;
  cf = *MEMORY[0x1E695E4C0];
  if (*(a1 + 296))
  {
    if (*(a2 + 64))
    {
      v5 = *(a2 + 56);
      if (v5)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v5);
        if (MediaSegmentSpecifiers)
        {
          if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
          {
            FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
            FirstValue = FigCFArrayGetFirstValue();
            segPumpGetMediaFilePrivateData(FirstValue, v9, v10, v11, v12, v13, v14, v15);
            FigMediaPlaylistGetMediaSegmentSpecifiers(*(a2 + 56));
            if (FigCFArrayGetLastValue() == a3 && !FigStreamingCacheMediaStreamCopyPersistent(*(a1 + 296), *(a2 + 64), &cf))
            {
              v16 = cf;
              if (cf != *MEMORY[0x1E695E4D0])
              {
                goto LABEL_20;
              }

              if (!FigStreamingCacheMediaStreamCopyCachedTimeRanges(*(a1 + 296), *(a2 + 64), &theArray) && CFArrayGetCount(theArray) == 1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
                CMTimeRangeMakeFromDictionary(&v20, ValueAtIndex);
                value = v20.start.value;
                timescale = v20.start.timescale;
                if ((v20.start.flags & 1) == 0 || (v20.duration.flags & 1) == 0 || v20.duration.epoch || v20.duration.value < 0)
                {
                  OUTLINED_FUNCTION_239();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, LODWORD(v20.start.value), v20.start.timescale);
                }

                else
                {
                  v20.start.value = value;
                  v20.start.timescale = timescale;
                  CMTimeGetSeconds(&v20.start);
                  OUTLINED_FUNCTION_291_1();
                  if (v18)
                  {
                    FigStreamingCacheMediaStreamMarkComplete(*(a1 + 296), *(a2 + 64));
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v16 = cf;
LABEL_20:
  if (v16)
  {
    CFRelease(v16);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void segPumpSendMediaCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23)
{
  OUTLINED_FUNCTION_193();
  HIDWORD(v345) = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v332 = v34;
  v36 = v35;
  v38 = v37;
  v39 = a23;
  v360 = *MEMORY[0x1E69E9840];
  memset(&v356, 0, sizeof(v356));
  v354 = 0;
  blockBufferOut = 0;
  v353 = 0uLL;
  v40 = FigRetainProxyRetain();
  HIDWORD(v352) = 0;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v31, v41, v42, v43, v44, v45, v46, v47);
  v49 = MediaFilePrivateData;
  v339 = MediaFilePrivateData[8];
  v341 = MediaFilePrivateData[6];
  v50 = v339 - v341;
  if (v339 > v341)
  {
    if (v25 < v50)
    {
      v51 = 0;
      v52 = MediaFilePrivateData[7] + v25;
      MediaFilePrivateData[6] = v341 + v25;
      MediaFilePrivateData[7] = v52;
      goto LABEL_258;
    }

    v53 = MediaFilePrivateData[7] + v50;
    MediaFilePrivateData[6] = v339;
    MediaFilePrivateData[7] = v53;
    v25 -= v50;
    if (!v25)
    {
      v51 = 0;
      goto LABEL_258;
    }

    v27 += v50;
  }

  v334 = v38;
  if (FigMediaSegmentSpecifierGetBytesToRead(v31) < 1)
  {
    goto LABEL_16;
  }

  if (!FigMediaSegmentSpecifierGetContentKeySpecifier(v31))
  {
    goto LABEL_16;
  }

  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v31);
  if (FigContentKeySpecifierGetEncryptionMethod(ContentKeySpecifier) != 3)
  {
    goto LABEL_16;
  }

  if (!v31 || FigMediaSegmentSpecifierGetType(v31) != 1)
  {
    v57 = v49[8] + FigMediaSegmentSpecifierGetBytesToRead(v31);
    v58 = v49[6];
    v59 = v58 + v25;
    v60 = v57 - v58;
    if (v59 > v57)
    {
      v25 = v60;
    }

LABEL_16:
    dataLength = v25;
    goto LABEL_17;
  }

  dataLength = v25;
  v55 = *(v33 + 832);
  if (v55)
  {
    v56 = CMBlockBufferGetDataLength(v55);
  }

  else
  {
    v56 = 0;
  }

  if (v56 + dataLength > FigMediaSegmentSpecifierGetBytesToRead(v31))
  {
    dataLength = FigMediaSegmentSpecifierGetBytesToRead(v31) - v56;
  }

LABEL_17:
  if (v29 && dataLength)
  {
    if (CMBlockBufferCreateWithBufferReference(*(v36 + 56), v29, v27, dataLength, 0, &blockBufferOut))
    {
      goto LABEL_218;
    }
  }

  else
  {
    OUTLINED_FUNCTION_296();
    if (CMBlockBufferCreateEmpty(v61, v62, v63, v64))
    {
      goto LABEL_218;
    }
  }

  v65 = MEMORY[0x1E695E480];
  if ((a23 & 0x800) != 0)
  {
    v359[0] = COERCE_CFTYPEREF(FigMediaSegmentSpecifierGetTimeInSeconds(v31));
    v66 = CFNumberCreate(*v65, kCFNumberDoubleType, v359);
    if (!v66)
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_218;
    }

    v67 = v66;
    CMSetAttachment(blockBufferOut, @"FBPAKey_ApproximateDuration", v66, 1u);
    CFRelease(v67);
  }

  if (*(v49 + 74))
  {
    goto LABEL_26;
  }

  if (v31 && FigMediaSegmentSpecifierGetType(v31) == 1)
  {
LABEL_44:
    LODWORD(v330) = 0;
    OUTLINED_FUNCTION_335_0();
    v39 = v75 | a23;
    goto LABEL_27;
  }

  if (blockBufferOut)
  {
    if (!FigMediaSegmentSpecifierIsMarkedAsGap(v31))
    {
      v70 = *(v33 + 288);
      if (v70 != FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31) || *(v33 + 320) != *(v33 + 304) || *(v33 + 403))
      {
        if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31))
        {
          FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31);
          v71 = OUTLINED_FUNCTION_104_0();
          if (segPumpCreateMapMediaBBuf(v71, v72, v73, v74))
          {
            goto LABEL_218;
          }
        }

        goto LABEL_44;
      }
    }

    if (blockBufferOut && *(v36 + 8896) && *(v33 + 862))
    {
      v39 = (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31) == 0) | a23;
    }
  }

LABEL_26:
  LODWORD(v330) = 1;
LABEL_27:
  if (!FigMediaSegmentSpecifierGetContentKeySpecifier(v31))
  {
    goto LABEL_28;
  }

  v76 = FigMediaSegmentSpecifierGetContentKeySpecifier(v31);
  *v350 = 0;
  *v351 = 0;
  if (segPumpGetCryptKeyCommonData(v76, v351, v350))
  {
    goto LABEL_218;
  }

  if (FigContentKeySpecifierGetKeySystem(v76) == 2 && FigContentKeySpecifierGetEncryptionMethod(v76) == 1 && (!v31 || FigMediaSegmentSpecifierGetType(v31) != 1))
  {
    v88 = *v351;
    if (*(*v351 + 40))
    {
      FigMediaSegmentSpecifierGetIV(v31);
      OUTLINED_FUNCTION_201_0();
      if (FigCFEqual())
      {
        goto LABEL_65;
      }

      v88 = *v351;
      v214 = *(*v351 + 40);
      if (v214)
      {
        CFRelease(v214);
        v88 = *v351;
        *(*v351 + 40) = 0;
      }
    }

    v215 = *(v88 + 32);
    IV = FigMediaSegmentSpecifierGetIV(v31);
    *(*v351 + 32) = IV;
    if (IV)
    {
      CFRetain(IV);
    }

    if (v215)
    {
      CFRelease(v215);
    }

    if (segPumpEnsureAndSetupBasicAESProtector(v36))
    {
      goto LABEL_218;
    }

    v217 = *(v36 + 248);
    cfb = FigGetAllocatorForMedia();
    v325 = *v351;
    v218 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v218)
    {
      goto LABEL_218;
    }

    v219 = v218(v217, cfb, 1, 0, v325 + 40);
    if (v219)
    {
      goto LABEL_218;
    }

    if (dword_1EAF16A30)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v235 = OUTLINED_FUNCTION_438_1(os_log_and_send_and_compose_flags_and_os_log_type, v228, v229, v230, v231, v232, v233, v234, p_valuePtr, v300, v303, v306, v308, v310, v312, v314, v316, v318, v325, v326, v328, v330, v332, v38, cfb, v339, v341, dataLength, v345, v347, OS_LOG_TYPE_DEFAULT, 0);
      if (OUTLINED_FUNCTION_186_0(v235))
      {
        OUTLINED_FUNCTION_205_0();
        if (v89)
        {
          v236 = &stru_1F0B1AFB8;
        }

        LODWORD(valuePtr.value) = 136315906;
        *(&valuePtr.value + 4) = "segPumpSendMediaCallback";
        LOWORD(valuePtr.flags) = 2114;
        *(&valuePtr.flags + 2) = v236;
        OUTLINED_FUNCTION_247_1();
        OUTLINED_FUNCTION_95_1();
        p_valuePtr = &valuePtr;
        OUTLINED_FUNCTION_24_1();
        _os_log_send_and_compose_impl(v279, v280, v281, v282, v283, cfb, v325, v284);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_635(v285, v286, v287, v288, v289);
    }

    if (!*(*(OUTLINED_FUNCTION_350_0(v219, v220, v221, v222, v223, v224, v225, v226, p_valuePtr, v300, v303, v306, v308, v310, v312, v314, v316, v318, v325, v326, v328, v330, v332, v334, cfb, v339, v341, dataLength, v345, v347, *v349, *v350, *v351) + 8) + 56))
    {
      goto LABEL_218;
    }

    v290 = OUTLINED_FUNCTION_338_1();
    if (v291(v290) || !*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_218;
    }

    goto LABEL_56;
  }

  if (FigContentKeySpecifierGetKeySystem(v76) != 2)
  {
    goto LABEL_65;
  }

  EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(v76);
  if (EncryptionMethod != 2)
  {
    goto LABEL_65;
  }

  if (v31)
  {
    EncryptionMethod = FigMediaSegmentSpecifierGetType(v31);
    if (EncryptionMethod == 1)
    {
      goto LABEL_65;
    }
  }

  if (!*(*v351 + 40))
  {
    if (segPumpEnsureAndSetupBasicAESProtector(v36))
    {
      goto LABEL_218;
    }

    if (*(v36 + 8208) && !*v33)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      cf = CFDictionaryCreate(AllocatorForMedia, kFigCPEProtectorCryptorCreationOption_DecryptDestination, kFigCPEProtectorCryptorCreationOptionDecryptDestination_Nero, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      cf = 0;
    }

    FigGetAllocatorForMedia();
    v238 = OUTLINED_FUNCTION_338_1();
    EncryptionMethod = FigCPEProtectorCreateCryptor(v238, v239, v240, v241);
    v242 = EncryptionMethod;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v242)
    {
      goto LABEL_218;
    }

    if (dword_1EAF16A30)
    {
      v243 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v251 = OUTLINED_FUNCTION_438_1(v243, v244, v245, v246, v247, v248, v249, v250, p_valuePtr, v300, v303, v306, v308, v310, v312, v314, v316, v318, v321, v326, v328, v330, v332, v38, cf, v339, v341, dataLength, v345, v347, OS_LOG_TYPE_DEFAULT, 0);
      if (OUTLINED_FUNCTION_186_0(v251))
      {
        OUTLINED_FUNCTION_205_0();
        if (v89)
        {
          v252 = &stru_1F0B1AFB8;
        }

        LODWORD(valuePtr.value) = 136316162;
        *(&valuePtr.value + 4) = "segPumpSendMediaCallback";
        LOWORD(valuePtr.flags) = 2114;
        *(&valuePtr.flags + 2) = v252;
        OUTLINED_FUNCTION_247_1();
        *(v264 + 42) = 2112;
        *(v264 + 44) = v265;
        OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_24_1();
        _os_log_send_and_compose_impl(v266, v267, v268, v269, v270, v271, v272, v273);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_635(v274, v275, v276, v277, v278);
    }
  }

  if (!*(*(OUTLINED_FUNCTION_350_0(EncryptionMethod, v78, v79, v80, v81, v82, v83, v84, p_valuePtr, v300, v303, v306, v308, v310, v312, v314, v316, v318, v321, v326, v328, v330, v332, v334, cf, v339, v341, dataLength, v345, v347, *v349, *v350, *v351) + 8) + 56))
  {
LABEL_218:
    v51 = 0;
    goto LABEL_258;
  }

LABEL_56:
  v85 = OUTLINED_FUNCTION_338_1();
  if (v86(v85))
  {
    goto LABEL_218;
  }

  v87 = *(v36 + 264);
  if (v87)
  {
    if (CMBaseObjectSetProperty(*(*v351 + 40), *MEMORY[0x1E69610C0], v87))
    {
      goto LABEL_218;
    }
  }

LABEL_65:
  if (FigContentKeySpecifierGetEncryptionMethod(v76) != 3)
  {
    v69 = *(*v351 + 40);
    if (!v69)
    {
      v69 = *(*v350 + 72);
    }

    v68 = *(*v350 + 112);
    if (!v31)
    {
      goto LABEL_69;
    }

    goto LABEL_29;
  }

LABEL_28:
  v68 = 0;
  v69 = 0;
  if (!v31)
  {
    goto LABEL_69;
  }

LABEL_29:
  if (FigMediaSegmentSpecifierGetType(v31) == 1)
  {
    cfa = 0;
LABEL_77:
    v91 = dataLength;
LABEL_82:
    if (blockBufferOut && v69 && *(v36 + 330))
    {
      CMSetAttachment(blockBufferOut, @"FBPAKey_Decryptor", v69, 1u);
    }

LABEL_86:
    if (blockBufferOut && v68 && *(v36 + 330))
    {
      CMSetAttachment(blockBufferOut, @"FBPAKey_AudioDecryptor", v68, 1u);
    }

    v92 = OUTLINED_FUNCTION_618();
    IsLastMediaFileDelivering = segPumpIsLastMediaFileDelivering(v92, v93);
    if ((v345 & 0x100000000) != 0)
    {
      v95 = v36 + 0x2000;
      if (IsLastMediaFileDelivering && *(v36 + 8880) >= 0.0)
      {
        v39 |= 2u;
        v96 = OUTLINED_FUNCTION_104_0();
        segPumpCheckAndMarkStreamCacheComplete(v96, v97, v98);
      }
    }

    else
    {
      v95 = v36 + 0x2000;
    }

    if (*(v33 + 864))
    {
      v99 = v39 | 0x1000;
    }

    else
    {
      v99 = v39;
    }

    if (*(v33 + 865))
    {
      v39 = v99 | 0x2000;
    }

    else
    {
      v39 = v99;
    }

    if (*(v33 + 862))
    {
      *(v33 + 862) = 0;
      if (!*(v33 + 857))
      {
        v39 |= 4u;
      }
    }

    if (*(v33 + 863))
    {
      *(v33 + 863) = 0;
      v39 |= 0x200u;
    }

    if (*(v33 + 403))
    {
      v39 |= 1u;
      *(v33 + 403) = 0;
    }

    if (v31 && *(v33 + 856) && !FigMediaSegmentSpecifierGetType(v31))
    {
      *(v33 + 856) = 0;
      v39 |= 0x4000u;
    }

    if (*(v95 + 704))
    {
      if (v339 > v341 || !*(v49 + 74))
      {
        v39 |= 0x10u;
      }

      if (v31)
      {
        v100 = FigMediaSegmentSpecifierGetType(v31) != 0;
      }

      else
      {
        v100 = 1;
      }

      if ((v345 & 0x100000000) == 0)
      {
        v100 = 1;
      }

      if (!v100)
      {
        v39 |= 0x20u;
      }
    }

    if (!*(v49 + 74))
    {
      v39 |= 0x100u;
    }

    if (v31 && (v39 & 0x20) != 0 && !FigMediaSegmentSpecifierGetType(v31))
    {
      FigGetUpTimeNanoseconds();
      *(v36 + 9008) = 0u;
    }

    if ((v345 & 0x100000000) != 0)
    {
      v101 = *(v33 + 56);
      if (v101)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(v101);
        if (FigCFArrayGetLastValue() == v31)
        {
          v39 |= 0xC0u;
        }

        else
        {
          v39 |= 0x40u;
        }
      }

      else
      {
        v39 |= 0x40u;
      }

      v95 = v36 + 0x2000;
    }

    *v322 = *MEMORY[0x1E6960C70];
    *&v356.value = *MEMORY[0x1E6960C70];
    v319 = *(MEMORY[0x1E6960C70] + 16);
    v356.epoch = v319;
    if (*(v49 + 74))
    {
      LODWORD(v341) = 0;
      DateStamp = 0;
      goto LABEL_219;
    }

    dataLength = v91;
    if (v339 <= v341)
    {
      if (*(v95 + 704))
      {
        if (!v31)
        {
          v103 = 0;
          goto LABEL_155;
        }
      }

      else
      {
        if (!v31 || *(v36 + 8218))
        {
          goto LABEL_153;
        }

        if (!FigMediaSegmentSpecifierGetType(v31))
        {
          v103 = 1;
          goto LABEL_155;
        }

        if (!*(v36 + 8896))
        {
LABEL_153:
          v106 = *(v36 + 8218);
          v103 = v106 == 1;
          if (!v31 || v106 == 1)
          {
LABEL_155:
            *(v49 + 74) = 1;
            if (v330)
            {
LABEL_164:
              if (*(v33 + 857) && (*(v33 + 857) = 0, v39 |= 8u, *(v36 + 8600) == *v33))
              {
                LODWORD(v341) = *(v36 + 8864);
                *(v36 + 8864) = 0;
              }

              else
              {
                LODWORD(v341) = 0;
              }

              DateStamp = FigMediaSegmentSpecifierGetDateStamp(v31);
              if (v103)
              {
                CFAbsoluteTimeGetCurrent();
                if (DateStamp)
                {
                  MEMORY[0x19A8CCD90](DateStamp);
                }

                else
                {
                  FigMediaSegmentSpecifierGetImputedDate(v31);
                }

                CMTimeMakeWithSeconds(&v356, *(v49 + 4), 90000);
                *v350 = 0;
                *v351 = 0;
                *v349 = 0;
                segPumpGetCryptorInfoFromBBuf(blockBufferOut, @"FBPAKey_Decryptor", v351, &v349[4]);
                segPumpGetCryptorInfoFromBBuf(blockBufferOut, @"FBPAKey_AudioDecryptor", v350, v349);
                if (*(v36 + 296))
                {
                  v109 = 1;
                  if (*(v36 + 8212))
                  {
                    if (*(v36 + 8213))
                    {
                      v109 = 1;
                    }

                    else
                    {
                      v109 = 2;
                    }
                  }
                }

                else
                {
                  v109 = 1;
                }

                if (v109 <= dword_1EAF16A30)
                {
                  v339 = DateStamp;
                  v316 = v40;
                  HIDWORD(v347) = 0;
                  BYTE3(v347) = 0;
                  v330 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414(v132, v133, v134, v135, v136);
                }
              }

LABEL_219:
              if (*(v33 + 404))
              {
                v49[6] += v91;
              }

              if (!v31 || FigMediaSegmentSpecifierGetType(v31) != 1)
              {
                goto LABEL_256;
              }

              v316 = v40;
              if (blockBufferOut)
              {
                v137 = CMBlockBufferGetDataLength(blockBufferOut);
                v138 = DateStamp;
                if (FigMediaSegmentSpecifierGetBytesToRead(v31) >= 1)
                {
                  v139 = *(v33 + 832);
                  v140 = v139 ? CMBlockBufferGetDataLength(v139) : 0;
                  v91 = dataLength;
                  if (v140 + v137 > FigMediaSegmentSpecifierGetBytesToRead(v31))
                  {
                    v137 = FigMediaSegmentSpecifierGetBytesToRead(v31) - v140;
                  }
                }

                if (v137)
                {
                  v359[0] = 0;
                  segPumpGetMediaDataMemoryPool(v36);
                  p_valuePtr = v359;
                  if (FigMemoryPoolCreateContiguousBlockBuffer())
                  {
                    goto LABEL_257;
                  }

                  if (*(v33 + 832))
                  {
                    OUTLINED_FUNCTION_39_1();
                    appended = CMBlockBufferAppendBufferReference(v141, v142, v143, v144, v145);
                    CFRelease(v359[0]);
                    if (appended)
                    {
                      goto LABEL_257;
                    }
                  }

                  else
                  {
                    *(v33 + 832) = v359[0];
                  }
                }

                v39 |= 0x8000u;
                DateStamp = v138;
              }

              if ((v345 & 0x100000000) == 0)
              {
LABEL_256:
                if (*(v33 + 871))
                {
                  goto LABEL_257;
                }

                v353 = *v322;
                v354 = v319;
                ++*(v36 + 184);
                *v359 = v356;
                v173 = OUTLINED_FUNCTION_163_1();
                DataCallbackWithOSStatus = segPumpMakeDataCallbackWithOSStatus(v173, v174, v175, v176, v39, v177, v178, DateStamp, v341, 0, &v353, &v352 + 1);
                --*(v36 + 184);
                IsInvalidated = FigRetainProxyIsInvalidated();
                if (DataCallbackWithOSStatus != -15626 && !IsInvalidated)
                {
                  if (DataCallbackWithOSStatus)
                  {
                    goto LABEL_257;
                  }

                  v181 = BYTE4(v352);
                  if (*(v33 + 404) && (v352 & 0x100000000) == 0)
                  {
                    v49[7] += v91;
                  }

                  if ((v181 & 2) == 0)
                  {
                    if (!v31)
                    {
                      goto LABEL_280;
                    }

                    goto LABEL_279;
                  }

                  if ((v39 & 0x40) == 0)
                  {
LABEL_276:
                    if (!v31)
                    {
                      goto LABEL_280;
                    }

LABEL_279:
                    if (FigMediaSegmentSpecifierGetType(v31) == 1)
                    {
LABEL_284:
                      if (*(v36 + 296))
                      {
                        OUTLINED_FUNCTION_286_1();
                        if (v89)
                        {
                          if (BYTE12(v353))
                          {
                            OUTLINED_FUNCTION_397_1(v192, v193, v194, v195, v196, v197, v198, v199, v200, v298, v301, v304, v306, v308, v310, v312, v314, v316, v319, *v322, *&v322[2], v328, v330, v332, v334, cfa, v339, v341, dataLength, v345, v347, *v349, *v350, *v351, v352, v201, v353);
                            valuePtr = **&MEMORY[0x1E6960CC0];
                            v202 = CMTimeCompare(v359, &valuePtr);
                            if ((v202 & 0x80000000) == 0)
                            {
                              v212 = *(v36 + 296);
                              OUTLINED_FUNCTION_397_1(v202, v203, v204, v205, v206, v207, v208, v209, v210, v299, v302, v305, v307, v309, v311, v313, v315, v317, v320, v324, v327, v329, v331, v333, v335, cfa, v340, v342, dataLengtha, v346, v348, *v349, *v350, *v351, v352, v211, v353);
                              Seconds = CMTimeGetSeconds(v359);
                              FigStreamingCacheHintPlaybackTime(v212, Seconds);
                            }
                          }
                        }
                      }

                      goto LABEL_257;
                    }

LABEL_280:
                    v190 = *(v33 + 232);
                    if (v190)
                    {
                      CFRelease(v190);
                      *(v33 + 232) = 0;
                    }

                    v191 = *(v33 + 240);
                    if (v191)
                    {
                      CFRelease(v191);
                      *(v33 + 240) = 0;
                    }

                    goto LABEL_284;
                  }

                  HIDWORD(v352) = 0;
                  v39 = v39 & 0x1000 | 0x10000;
                  *v359 = v356;
                  v182 = OUTLINED_FUNCTION_163_1();
                  v188 = segPumpMakeDataCallbackWithOSStatus(v182, v183, v184, 0, v39, v185, v186, v187, 0, 0, &v353, &v352 + 1);
                  v189 = FigRetainProxyIsInvalidated();
                  if (v188 != -15626 && !v189)
                  {
                    if (v188)
                    {
                      v351[0] = 0;
                      v350[0] = OS_LOG_TYPE_DEFAULT;
                      v253 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v254 = os_log_type_enabled(v253, v350[0]);
                      if (OUTLINED_FUNCTION_16_1(v254))
                      {
                        OUTLINED_FUNCTION_205_0();
                        LODWORD(valuePtr.value) = 136315650;
                        OUTLINED_FUNCTION_406_1();
                        *(&valuePtr.flags + 2) = v255;
                        HIWORD(valuePtr.epoch) = 1024;
                        LODWORD(v358) = v188;
                        OUTLINED_FUNCTION_188_1();
                        OUTLINED_FUNCTION_24_1();
                        OUTLINED_FUNCTION_190_0();
                        _os_log_send_and_compose_impl(v256, v257, v258, v259, v260, v261, v262, v263);
                      }

                      OUTLINED_FUNCTION_16();
                      OUTLINED_FUNCTION_238_0(v292, v293, v294, v295, v296);
                      goto LABEL_257;
                    }

                    goto LABEL_276;
                  }
                }

                v51 = cfa;
                goto LABEL_260;
              }

              v339 = DateStamp;
              v147 = *(v33 + 832);
              v359[0] = 0;
              valuePtr.value = 0;
              v148 = OUTLINED_FUNCTION_618();
              CacheNameFromSegment = segPumpCreateCacheNameFromSegment(v148, v149, v150, v151);
              if (CacheNameFromSegment)
              {
                goto LABEL_333;
              }

              if (!*(v36 + 296) || (v153 = v359[0], v154 = FigMediaSegmentSpecifierGetStartOffset(v31), FigMediaSegmentSpecifierGetMediaSequence(v31), v155 = OUTLINED_FUNCTION_415_0(), FigStreamingCacheAddMediaMap(v155, v156, v153, v154, v157, v147)))
              {
                value = valuePtr.value;
                StartOffset = FigMediaSegmentSpecifierGetStartOffset(v31);
                v167 = FigMediaSegmentSpecifierGetBytesToRead(v31);
                if (v147)
                {
                  v168 = v167;
                  if (CMBlockBufferGetDataLength(v147))
                  {
                    if (!segPumpFindSavedEntry(v36, value, StartOffset, v168))
                    {
                      v169 = malloc_type_calloc(1uLL, 0x58uLL, 0x1070040389C493CuLL);
                      if (v169)
                      {
                        v170 = v169;
                        v169[1] = CFRetain(value);
                        v170[9] = 0;
                        *(v170 + 80) = 0;
                        v170[8] = CMBlockBufferGetDataLength(v147);
                        v170[3] = StartOffset;
                        v170[4] = v168;
                        v170[5] = 0;
                        if (!v170[6])
                        {
                          v170[2] = CFRetain(v147);
                        }

                        *v170 = 0;
                        **(v36 + 368) = v170;
                        *(v36 + 368) = v170;
                        goto LABEL_248;
                      }

                      OUTLINED_FUNCTION_120();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_valuePtr, v300, v303);
                      if (CacheNameFromSegment)
                      {
LABEL_333:
                        v171 = CacheNameFromSegment;
LABEL_249:
                        v91 = dataLength;
                        DateStamp = v339;
                        if (valuePtr.value)
                        {
                          CFRelease(valuePtr.value);
                        }

                        if (v359[0])
                        {
                          CFRelease(v359[0]);
                        }

                        v172 = *(v33 + 832);
                        if (v172)
                        {
                          CFRelease(v172);
                          *(v33 + 832) = 0;
                        }

                        if (v171)
                        {
                          goto LABEL_257;
                        }

                        goto LABEL_256;
                      }
                    }
                  }
                }
              }

LABEL_248:
              v171 = 0;
              *(segPumpGetMediaFilePrivateData(v31, v158, v159, v160, v161, v162, v163, v164) + 98) = 1;
              goto LABEL_249;
            }

            v107 = *(v33 + 288);
            if (v107)
            {
              CFRelease(v107);
              *(v33 + 288) = 0;
            }

            if (v31 && FigMediaSegmentSpecifierGetType(v31) == 1)
            {
              *(v33 + 288) = v31;
              MapSegmentSpecifier = v31;
            }

            else
            {
              MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v31);
              *(v33 + 288) = MapSegmentSpecifier;
              if (!MapSegmentSpecifier)
              {
LABEL_163:
                *(v33 + 320) = *(v33 + 304);
                goto LABEL_164;
              }
            }

            CFRetain(MapSegmentSpecifier);
            goto LABEL_163;
          }
        }
      }
    }

    else
    {
      v103 = 0;
      if (!v31 || !*(v95 + 704))
      {
        goto LABEL_155;
      }
    }

    v103 = FigMediaSegmentSpecifierGetType(v31) == 0;
    goto LABEL_155;
  }

LABEL_69:
  cfa = 0;
  OUTLINED_FUNCTION_286_1();
  if (!v89 || v69)
  {
    goto LABEL_77;
  }

  v90 = *(v36 + 264);
  if (!v90 && (*(v36 + 288) & 0x80000000) != 0)
  {
    cfa = 0;
    v91 = dataLength;
    goto LABEL_86;
  }

  if (*(v36 + 272))
  {
    if (v68)
    {
      cfa = 0;
LABEL_80:
      v91 = dataLength;
LABEL_81:
      v69 = *(v36 + 272);
      goto LABEL_82;
    }

    if (*(v36 + 280))
    {
      cfa = 0;
      v68 = *(v36 + 280);
      goto LABEL_80;
    }
  }

  v359[0] = 0;
  valuePtr.value = 0;
  v104 = *(v36 + 288);
  if (v104 == 1)
  {
    v105 = 2;
  }

  else
  {
    v105 = 0;
    if (v104)
    {
      goto LABEL_184;
    }

    v105 = 1;
  }

  valuePtr.value = v105;
LABEL_184:
  if (v90)
  {
    CFNumberGetValue(v90, kCFNumberSInt64Type, v359);
    v105 = valuePtr.value;
    v110 = v359[0];
  }

  else
  {
    v110 = 0;
  }

  if (v105 <= v110)
  {
    v112 = *(v36 + 264);
    if (!v112)
    {
LABEL_217:
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_218;
    }

    v111 = CFRetain(v112);
  }

  else
  {
    v111 = CFNumberCreate(*v65, kCFNumberSInt64Type, &valuePtr);
  }

  cfa = v111;
  if (!v111)
  {
    goto LABEL_217;
  }

  if (segPumpEnsureAndSetupBasicAESProtector(v36))
  {
    goto LABEL_257;
  }

  if (*(v36 + 8208) && !*v33)
  {
    v114 = FigGetAllocatorForMedia();
    v113 = CFDictionaryCreate(v114, kFigCPEProtectorCryptorCreationOption_DecryptDestination, kFigCPEProtectorCryptorCreationOptionDecryptDestination_Nero, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v113 = 0;
  }

  if (*(v36 + 272))
  {
    Cryptor = 0;
    if (!v113)
    {
      goto LABEL_200;
    }

    goto LABEL_199;
  }

  v130 = *(v36 + 248);
  v131 = FigGetAllocatorForMedia();
  Cryptor = FigCPEProtectorCreateCryptor(v130, v131, v113, v36 + 272);
  if (v113)
  {
LABEL_199:
    CFRelease(v113);
  }

LABEL_200:
  if (!Cryptor)
  {
    v116 = *(v36 + 272);
    if (!*(v36 + 8208))
    {
      v117 = OUTLINED_FUNCTION_338_1();
      if (CMBaseObjectSetProperty(v117, v118, v119))
      {
        goto LABEL_257;
      }

      v116 = *(v36 + 272);
    }

    v120 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v120)
    {
      goto LABEL_257;
    }

    v121 = *MEMORY[0x1E695E4D0];
    v323 = *MEMORY[0x1E6961118];
    if (v120(v116))
    {
      goto LABEL_257;
    }

    if (!*(v36 + 280))
    {
      FigGetAllocatorForMedia();
      v122 = OUTLINED_FUNCTION_270();
      if (FigCPEProtectorCreateCryptor(v122, v123, v124, v125))
      {
        goto LABEL_257;
      }
    }

    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      goto LABEL_257;
    }

    v126 = OUTLINED_FUNCTION_338_1();
    if (v127(v126))
    {
      goto LABEL_257;
    }

    v128 = *(v36 + 280);
    v129 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v129 || v129(v128, v323, v121))
    {
      goto LABEL_257;
    }

    v91 = dataLength;
    if (!v68)
    {
      v68 = *(v36 + 280);
    }

    goto LABEL_81;
  }

LABEL_257:
  v51 = cfa;
LABEL_258:
  if ((v39 & 2) != 0)
  {
    *(v33 + 871) = 1;
    *(v33 + 1152) = 1;
  }

LABEL_260:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  FigRetainProxyRelease();
  OUTLINED_FUNCTION_191();
}

double segPumpStreamSchedulePreloadHintRead()
{
  OUTLINED_FUNCTION_180_1();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (segPumpStreamHasPreloadHint(v0))
  {
    if (segPumpShouldDoSegmentReadAheads(DerivedStorage))
    {
      v3 = OUTLINED_FUNCTION_298();
      if (segPumpStreamGetFuturePreloadCount(v3, v4))
      {
        if (!segPumpMediaConnectionIsActive(*(v0 + 792)))
        {
          PreloadHint = FigMediaPlaylistGetPreloadHint(*(v0 + 56));
          v6 = *(v0 + 24);
          MediaFilePrivateData = segPumpGetMediaFilePrivateData(PreloadHint, v7, v8, v9, v10, v11, v12, v13);
          v15 = OUTLINED_FUNCTION_182_1();
          segPumpEnsureMediaSegmentURLs(v15, v16, v6, v17, v18, v19, v20, v21);
          if (MediaFilePrivateData[2])
          {
            v22 = *(v0 + 680);
            if (v22)
            {
              while (1)
              {
                v23 = OUTLINED_FUNCTION_618();
                if (segPumpMediaConnectionIncludesMedia(v23, v24, PreloadHint))
                {
                  break;
                }

                v22 = *v22;
                if (!v22)
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
LABEL_9:
              v25 = *(v0 + 696);
              if (v25)
              {
                v26 = *(v25 + 32);
              }

              else
              {
                v26 = 0;
              }

              OUTLINED_FUNCTION_317_0();
              if (v34 == v35)
              {
                do
                {
                  if (*(DerivedStorage + 337))
                  {
                    v36 = 1;
                  }

                  else
                  {
                    v36 = *(DerivedStorage + 8396);
                  }

                  if (v36 <= 0)
                  {
                    break;
                  }

                  v37 = **(v0 + 768);
                  if (!v37)
                  {
                    break;
                  }

                  if (!segPumpMediaConnectionIsActive(v37))
                  {
                    v26 = *(**(v0 + 768) + 32);
                  }

                  OUTLINED_FUNCTION_283_1();
                }

                while (v34 != v35);
              }

              *(segPumpGetMediaFilePrivateData(PreloadHint, v27, v28, v29, v30, v31, v32, v33) + 6) = 0;
              *(segPumpGetMediaFilePrivateData(PreloadHint, v38, v39, v40, v41, v42, v43, v44) + 7) = 0;
              OUTLINED_FUNCTION_171();
              OUTLINED_FUNCTION_135_1();
              if (!segPumpReadMediaFile(v45, v46, v47, v48, v49, v50, v26, (v0 + 792)))
              {
                segPumpSetMediaConnectionIsDormant(DerivedStorage, *(v0 + 792), 1);
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_111();

            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          }
        }
      }
    }
  }

  return result;
}

uint64_t segPumpReadMediaFile(uint64_t a1, uint64_t a2, void *a3, int a4, int a5, int a6, uint64_t a7, uint64_t *a8)
{
  HIDWORD(v141) = a6;
  HIDWORD(v139) = a5;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a3, v13, v14, v15, v16, v17, v18, v19);
  v21 = *(a2 + 752);
  cf[0] = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a8)
  {
    *a8 = 0;
  }

  dataLength = a8;
  v30 = *(a2 + 16);
  v31 = *(a2 + 24);
  v32 = segPumpGetMediaFilePrivateData(a3, v22, v23, v24, v25, v26, v27, v28);
  segPumpEnsureMediaSegmentURLs(a3, v30, v31, v33, v34, v35, v36, v37);
  if (!v32[2])
  {
LABEL_43:
    OUTLINED_FUNCTION_40_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_78;
  }

  *(a2 + 104) = MediaFilePrivateData[4];
  *(MediaFilePrivateData + 72) = 0;
  *(MediaFilePrivateData + 74) = 0;
  if (!*(DerivedStorage + 8392) || (v38 = *(a2 + 680)) == 0)
  {
LABEL_8:
    if (a4 || segPumpShouldDoSegmentReadAheads(DerivedStorage))
    {
      v48 = *(a2 + 776) + v21;
      v49 = v48 + segPumpStreamHasPreloadHint(a2);
      v21 = v49 + segPumpStreamHasPreloadMapHint(a2);
    }

    else if (!*(DerivedStorage + 8896) && FigMediaSegmentSpecifierGetBytesToRead(a3) >= 1 && *(a2 + 752) < *(a2 + 760))
    {
      OUTLINED_FUNCTION_299_0();
      if (v52 && *(a2 + 406) && !FigMediaSegmentSpecifierIsFragment(a3) && (!a3 || FigMediaSegmentSpecifierGetType(a3) != 1))
      {
        v124 = *(a2 + 760);
        v21 = v124 + 1;
        *(a2 + 752) = v124;
      }
    }

    v50 = *(a2 + 744);
    if (v21 <= v50)
    {
      v52 = v50 > v21 && (*(DerivedStorage + 8896) | a4) == 0;
      if (v52)
      {
        do
        {
          if (*(a2 + 680))
          {
            v53 = *(a2 + 688);
          }

          else
          {
            v53 = 0;
          }

          if (segPumpMediaConnectionIsActive(v53))
          {
            break;
          }

          v54 = OUTLINED_FUNCTION_235();
          segPumpDestroyMediaConnection(v54, v55, v53);
        }

        while (*(a2 + 744) > v21);
        v56 = *(a2 + 680);
        v57 = v56;
        while (1)
        {
          v57 = *v57;
          if (!v57)
          {
            v57 = *(a2 + 680);
          }

          if (!segPumpMediaConnectionIsActive(v57))
          {
            break;
          }

          if (v57 == v56)
          {
            v57 = v56;
            break;
          }
        }

        *(a2 + 696) = v57;
      }
    }

    else
    {
      while (*(a2 + 744) < v21)
      {
        MediaConnection = segPumpCreateMediaConnection(a2);
        if (MediaConnection)
        {
          goto LABEL_78;
        }
      }
    }

    if (a4)
    {
      v58 = *(a2 + 696);
      if (!v58)
      {
        v58 = *(a2 + 680);
      }

      v59 = v58;
      while (1)
      {
        v59 = *v59;
        if (!v59)
        {
          v59 = *(a2 + 680);
        }

        if (!segPumpMediaConnectionIsActive(v59))
        {
          break;
        }

        if (v59 == v58)
        {
          v59 = v58;
          break;
        }
      }

      if (!v59 || v59 == *(a2 + 696))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (!*(a2 + 1096))
      {
        v125 = FigMediaSegmentSpecifierGetBytesToRead(a3);
        if (a3)
        {
          if (v125 >= 1 && !FigMediaSegmentSpecifierGetType(a3))
          {
            v126 = (8 * FigMediaSegmentSpecifierGetBytesToRead(a3));
            *(a2 + 1096) = (v126 / FigMediaSegmentSpecifierGetTimeInSeconds(a3));
          }
        }
      }

      v59 = *(a2 + 696);
    }

    *(a2 + 960) = UpTimeNanoseconds;
    *(v59 + 144) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    *(v59 + 48) = UpTimeNanoseconds;
    *(v59 + 209) = BYTE4(v141);
    if (*(v59 + 80))
    {
      v60 = (UpTimeNanoseconds - *(v59 + 40)) / 1000000000.0;
    }

    else
    {
      *(v59 + 40) = UpTimeNanoseconds;
      *(v59 + 72) = 0;
      v60 = 0.0;
    }

    v61 = *(a2 + 24);
    v62 = segPumpGetMediaFilePrivateData(a3, v41, v42, v43, v44, v45, v46, v47);
    v63 = OUTLINED_FUNCTION_284();
    segPumpEnsureMediaSegmentURLs(v63, v64, v61, v65, v66, v67, v68, v69);
    v70 = v62[2];
    if (v70)
    {
      v71 = CFRetain(v70);
    }

    else
    {
      v71 = 0;
    }

    cf[0] = v71;
    if (*(DerivedStorage + 328))
    {
      MediaConnection = FigCFHTTPCopyURLAndInheritQueyComponentIfNotPresent(*(a2 + 8), cf);
      if (MediaConnection)
      {
        goto LABEL_78;
      }
    }

    segPumpReadMediaFileURL();
    if (MediaConnection)
    {
      goto LABEL_78;
    }

    if (a3 && !FigMediaSegmentSpecifierGetType(a3))
    {
      *(a2 + 402) = 0;
    }

    if (*(DerivedStorage + 8280) && !*(DerivedStorage + 8896))
    {
      v72 = OUTLINED_FUNCTION_178();
      DownloadTimerIntervalForMedia = segPumpGetDownloadTimerIntervalForMedia(v72, v73);
      MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a3);
      *(a2 + 808) = 0;
      if (MapSegmentSpecifier)
      {
        v83 = segPumpGetMediaFilePrivateData(MapSegmentSpecifier, v76, v77, v78, v79, v80, v81, v82);
        v84 = v83[10];
        if (v84 > 0.0 && DownloadTimerIntervalForMedia > v84)
        {
          DownloadTimerIntervalForMedia = DownloadTimerIntervalForMedia - v84;
          *(a2 + 808) = v84;
        }

        v83[10] = 0.0;
      }

      if (v60 < DownloadTimerIntervalForMedia && v60 > 0.0)
      {
        DownloadTimerIntervalForMedia = DownloadTimerIntervalForMedia - v60;
      }

      if (v59 == *(a2 + 696))
      {
        v127 = *(a2 + 752);
        if (v127 >= 1)
        {
          for (i = 0; i < v127; ++i)
          {
            if (*(a2 + 696 + 8 * i))
            {
              OUTLINED_FUNCTION_32_1();
              FigHTTPCreateTimer(v130, v131, v132, (v129 + 112), DownloadTimerIntervalForMedia);
              v127 = *(a2 + 752);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_1();
        FigHTTPCreateTimer(v87, v88, v89, (v59 + 112), DownloadTimerIntervalForMedia);
      }

      v133 = OUTLINED_FUNCTION_235();
      segPumpRTCReportingUpdateMediaTimerStats(DownloadTimerIntervalForMedia, v133, v134, v59);
    }

    if (dataLength)
    {
      v123 = 0;
      *dataLength = v59;
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  while (1)
  {
    v39 = OUTLINED_FUNCTION_415_0();
    if (segPumpMediaConnectionIncludesMedia(v39, v40, a3))
    {
      break;
    }

    v38 = *v38;
    if (!v38)
    {
      goto LABEL_8;
    }
  }

  CMBaseObjectGetDerivedStorage();
  v90 = segPumpAccumConnCompletesMediaRange(v38, a3);
  v91 = *(a2 + 24);
  segPumpGetMediaFilePrivateData(a3, v92, v93, v94, v95, v96, v97, v98);
  v99 = OUTLINED_FUNCTION_284();
  segPumpEnsureMediaSegmentURLs(v99, v100, v91, v101, v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_617();
  segPumpSetMediaFileForMediaConnection(v106, v107, a2, a3, v108, v109, v110, v111);
  if (v90)
  {
    v112 = *(a2 + 880);
    v113 = OUTLINED_FUNCTION_163_1();
    MediaConnection = segPumpDeliverAccumulatedBuffer(v113, v114, a2, v38, a3, 1, v115, v116, v136, v137, dataLength, v139, a7, v141, a1, cf[0], cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10]);
    if (!MediaConnection)
    {
      if (v112 == *(a2 + 880))
      {
        OUTLINED_FUNCTION_163_1();
        OUTLINED_FUNCTION_320_1();
        MediaConnection = segPumpStreamProceedAfterMediaAndKeyArrival(v117, v118, v119, v120, v121, v122);
        goto LABEL_78;
      }

      goto LABEL_101;
    }

LABEL_78:
    v123 = MediaConnection;
    goto LABEL_102;
  }

LABEL_101:
  v123 = 0;
LABEL_102:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v123;
}

double segPumpStreamGetTimeDeliveredFromBeginningForVOD(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = 0.0;
  if (v2 && FigMediaPlaylistHasEndTag(v2) && FigMediaPlaylistGetPlaylistType(*(a1 + 56)) == 2)
  {
    for (i = 0; ; ++i)
    {
      MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      if (MediaSegmentSpecifiers)
      {
        MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
      }

      if (i >= MediaSegmentSpecifiers)
      {
        break;
      }

      v6 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(a1 + 56));
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v8, v9, v10, v11, v12, v13, v14);
      if (!*(MediaFilePrivateData + 73))
      {
        break;
      }

      v3 = *(MediaFilePrivateData + 4);
    }
  }

  return v3;
}

void MediaHandleDownloadTimer()
{
  OUTLINED_FUNCTION_813();
  v3 = v2;
  v251 = *MEMORY[0x1E69E9840];
  v200 = 0;
  v199 = 0;
  v195 = 0;
  v196 = 0;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  v189 = 0;
  segPumpLockAndCopyPumpFromRetainProxy();
  if (v4)
  {
    goto LABEL_132;
  }

  v197 = 0;
  v198 = 0;
  while (1)
  {
    v5 = *(v199 + 49);
    v6 = OUTLINED_FUNCTION_266();
    if (findConnectionFromMediaDownloadTimer(v6, v7, v8, v9, v10))
    {
      break;
    }

    OUTLINED_FUNCTION_408_1();
    if (v11)
    {
      while (1)
      {
        v5 = *(v199 + 50);
        v12 = OUTLINED_FUNCTION_266();
        if (findConnectionFromMediaDownloadTimer(v12, v13, v14, v15, v16))
        {
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_408_1();
        if (v11)
        {
          goto LABEL_132;
        }
      }
    }
  }

LABEL_10:
  if (!v5)
  {
    goto LABEL_132;
  }

  if (*(v5 + 792) == v198)
  {
    goto LABEL_132;
  }

  if (*(v5 + 800) == v198)
  {
    goto LABEL_132;
  }

  v17 = *(v198 + 8);
  if (!v17 || !*(v198 + 40))
  {
    goto LABEL_132;
  }

  v18 = v199[2 * *v5 + 50];
  if (FigMediaSegmentSpecifierIsFragment(*(v198 + 8)))
  {
    v19 = v199[2] * 0.5;
  }

  else
  {
    v19 = v199[1025];
  }

  TimeInSeconds = 30.0;
  if (FigMediaSegmentSpecifierGetTimeInSeconds(v17) < 30.0)
  {
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v17);
  }

  v21 = segPumpStreamBitRateRequiredForStream(v199, v5);
  v22 = *(v199 + 2);
  if (v22 >= 0x1E)
  {
    v22 = 30;
  }

  HIDWORD(v186) = v22;
  if (FigMediaSegmentSpecifierIsFragment(v17))
  {
    v23 = v199[2];
  }

  else
  {
    v24 = *(v199 + 2);
    if (v24 <= 0xA)
    {
      v24 = 10;
    }

    v23 = v24;
  }

  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v25 = 64;
  if (!*(v198 + 211))
  {
    v25 = 40;
  }

  v26 = *(v198 + v25);
  if (*(v198 + 288) <= 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = *(v198 + 288);
  }

  v28 = FigGetUpTimeNanoseconds();
  v36 = *(v5 + 808) + (v28 - v27) / 1000000000.0;
  if (*(v198 + 248) < 1)
  {
    if (!dword_1EAF16A30)
    {
      goto LABEL_51;
    }

    v184 = OUTLINED_FUNCTION_215_1(v28, v29, v30, v31, v32, v33, v34, v35, v182, v183, v184, v185, v186, UpTimeNanoseconds, v188, SBYTE2(v188), SBYTE3(v188), SHIDWORD(v188));
    os_log_type_enabled(v184, BYTE3(v188));
    OUTLINED_FUNCTION_101_0();
    if (v11)
    {
      v55 = v54;
    }

    else
    {
      v55 = HIDWORD(v188);
    }

    if (v55)
    {
      *&v185 = v18;
      v56 = *v5;
      v57 = *(v198 + 184);
      if (v5 == v21)
      {
        v58 = ":t";
      }

      else
      {
        v58 = "";
      }

      v59 = OUTLINED_FUNCTION_232_0();
      v60 = *(v198 + 210);
      v61 = *(v198 + 216);
      v62 = *(v198 + 72);
      *v228 = 136317954;
      *&v228[4] = "MediaHandleDownloadTimer";
      v229 = 2114;
      v230 = &stru_1F0B1AFB8;
      v231 = 2048;
      v232 = v56;
      v17 = v21;
      v233 = 2048;
      v234 = v57;
      v235 = 2080;
      v236 = v58;
      v237 = 2048;
      v238 = v0;
      v239 = 2048;
      v240 = v1;
      v241 = 2048;
      v242 = v59;
      v243 = 1024;
      v244 = v60;
      v245 = 2048;
      v246 = v61;
      v247 = 2048;
      v248 = v36;
      v249 = 1024;
      v250 = v62 / 0xF4240;
      LODWORD(v183) = 114;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v63, v64, v65, v66, v67, v184, BYTE3(v188), v68, v228);
      v18 = *&v185;
    }
  }

  else
  {
    if (!dword_1EAF16A30)
    {
      goto LABEL_51;
    }

    v37 = OUTLINED_FUNCTION_215_1(v28, v29, v30, v31, v32, v33, v34, v35, v182, v183, v184, v185, v186, UpTimeNanoseconds, v188, SBYTE2(v188), SBYTE3(v188), SHIDWORD(v188));
    os_log_type_enabled(v37, BYTE3(v188));
    OUTLINED_FUNCTION_101_0();
    if (v11)
    {
      v39 = v38;
    }

    else
    {
      v39 = HIDWORD(v188);
    }

    if (v39)
    {
      *&v185 = v18;
      v40 = *v5;
      v41 = *(v198 + 184);
      v42 = "";
      if (v5 == v21)
      {
        v42 = ":t";
      }

      v184 = v42;
      v43 = OUTLINED_FUNCTION_232_0();
      v44 = *(v198 + 210);
      v45 = *(v198 + 216);
      v46 = *(v198 + 248);
      v47 = *(v198 + 72);
      *v201 = 136318466;
      *&v201[4] = "MediaHandleDownloadTimer";
      v202 = 2114;
      v203 = &stru_1F0B1AFB8;
      v204 = 2048;
      v205 = v40;
      v206 = 2048;
      v207 = v41;
      v17 = v21;
      v208 = 2080;
      v209 = v184;
      v210 = 2048;
      v211 = v0;
      v212 = 2048;
      v213 = v1;
      v214 = 2048;
      v215 = v43;
      v216 = 1024;
      v217 = v44;
      v218 = 2048;
      v219 = v45;
      v220 = 2048;
      v221 = v46;
      v222 = 2048;
      v223 = v45 * 100.0 / v46;
      v224 = 2048;
      v225 = v36;
      v226 = 1024;
      v227 = v47 / 0xF4240;
      LODWORD(v183) = 134;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v48, v49, v50, v51, v52, v37, BYTE3(v188), v53, v201);
      v18 = *&v185;
    }
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_449(v69, v70, v71, v72, v73);
  v3 = *&v18;
LABEL_51:
  if (v36 < TimeInSeconds || v36 < v19)
  {
    if (TimeInSeconds <= v19)
    {
      v75 = v19;
    }

    else
    {
      v75 = TimeInSeconds;
    }

    DownloadTimerIntervalForMedia = v75 - v36;
    goto LABEL_60;
  }

  v103 = *(v5 + 873);
  segPumpSetCurrentSegmentTooSlow(v199, v5);
  OUTLINED_FUNCTION_39_1();
  FigNetworkInterfaceReporterSamplePhysicalStatistics(v104, v105, v106, v107, v108);
  OUTLINED_FUNCTION_265_0();
  FigReportingAgentUpdateFinalTransactionMetrics(v109, v110, v111, v112);
  if (!v103)
  {
    segPumpAddMediaSegmentNoResponseErrorIfNecessary(v199, v5, v198);
  }

  v113 = (UpTimeNanoseconds - *(v198 + 48)) / 1000000000.0;
  v114 = fmax(vcvtd_n_f64_u32(*(v199 + 2), 1uLL), 2.0);
  if (v19 > v114)
  {
    v114 = v19;
  }

  if (v114 > 30.0)
  {
    v114 = 30.0;
  }

  if (v113 < v114)
  {
    DownloadTimerIntervalForMedia = v114 - v113;
LABEL_60:
    v77 = 1;
    goto LABEL_61;
  }

  DownloadTimerIntervalForMedia = fmin(v23, 30.0);
  if (*(v198 + 210) && *(v198 + 224) != *(v198 + 120))
  {
    if (v36 < TimeInSeconds + HIDWORD(v186) || *(v199 + 8392) || *(v198 + 144))
    {
      goto LABEL_60;
    }

    if (v198 == *(v5 + 696))
    {
      FigGetAllocatorForMedia();
      v172 = *(v5 + 696);
      if (v172)
      {
        v174 = *(v172 + 8);
        v173 = "Media file";
        if (v174 && FigMediaSegmentSpecifierGetType(v174) == 1)
        {
          v173 = "Map";
        }
      }

      else
      {
        v173 = "Media file";
      }

      v175 = FigMediaSegmentSpecifierGetTimeInSeconds(v17);
      LODWORD(v176) = *(v199 + 2);
      v183 = (v175 + v176);
      v177 = OUTLINED_FUNCTION_173_0();
      v180 = CFStringCreateWithFormat(v177, v178, v179);
      OUTLINED_FUNCTION_175_0();
      segPumpAppendErrorLogEntry(v181, v5, (v198 + 16), -16830, @"CoreMediaErrorDomain", v180, 0, 1, v173, SHIDWORD(v173));
      CFRelease(v180);
    }

    v77 = 1;
    *(v198 + 144) = 1;
  }

  else
  {
    if (*(v199 + 336) && FigMediaSegmentSpecifierIsFragment(v17))
    {
      goto LABEL_60;
    }

    v77 = 0;
  }

LABEL_61:
  v78 = *(v199 + 1220);
  if (!v78 || !FigAlternateFilterMonitorSubStreamHasCriticalStall(v78, *v5, TimeInSeconds))
  {
    goto LABEL_63;
  }

  v115 = v5;
  if (*v5 != 1)
  {
    v116 = *(v199 + 51);
    v115 = v5;
    if (*(v116 + 16))
    {
      v115 = v5;
      if (*(v116 + 874))
      {
        if (*(*(v116 + 696) + 8))
        {
          v115 = *(v199 + 51);
        }

        else
        {
          v115 = v5;
        }
      }
    }
  }

  segPumpHandleMediaFileNetworkError(v200, v115, 0, *(*(v115 + 696) + 8), 4294951668, &v189);
  if ((v189 & 7) == 0)
  {
LABEL_63:
    if (v77)
    {
      v79 = v198;
      *(v198 + 120) = *(v198 + 224);
LABEL_65:
      OUTLINED_FUNCTION_32_1();
      FigHTTPCreateTimer(v80, v81, v82, (v79 + 112), DownloadTimerIntervalForMedia);
      v84 = v83;
      OUTLINED_FUNCTION_166_0();
      segPumpRTCReportingUpdateMediaTimerStats(DownloadTimerIntervalForMedia, v85, v86, v87);
      goto LABEL_131;
    }

    v88 = v199;
    ++*(v199 + 1087);
    if (*(v88 + 1154) && *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v89 = OUTLINED_FUNCTION_284();
      v90(v89);
    }

    v79 = v198;
    if (!*(v198 + 210) && *(v199 + 1154) && *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v101 = OUTLINED_FUNCTION_489();
      v102(v101);
    }

    if (*(v79 + 224) <= *(v79 + 216))
    {
      goto LABEL_121;
    }

    *v201 = 0;
    if (!*(v79 + 32))
    {
      goto LABEL_121;
    }

    if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      goto LABEL_121;
    }

    v91 = OUTLINED_FUNCTION_292();
    if (v92(v91))
    {
      goto LABEL_121;
    }

    v93 = *v201;
    v94 = *(v79 + 136);
    v95 = *v201 - v94;
    if (*v201 == v94)
    {
      goto LABEL_121;
    }

    v96 = *(v79 + 216) + v95;
    if (*(v79 + 256) - 1 < v96)
    {
      goto LABEL_130;
    }

    v97 = *(v79 + 248);
    if (v97 >= 1 && v96 >= v97)
    {
      goto LABEL_130;
    }

    v99 = v199;
    *(v199 + 1090) += v95;
    *(v5 + 1112) += v95;
    *(v79 + 136) = v93;
    *(v79 + 216) = v96;
    if (*v5)
    {
      if (*v5 != 1)
      {
        goto LABEL_109;
      }

      v100 = 1103;
    }

    else
    {
      v100 = 1102;
    }

    *&v99[v100] += v95;
LABEL_109:
    if (v79 != *(v5 + 696))
    {
      goto LABEL_151;
    }

    if (FigMediaSegmentSpecifierGetContentKeySpecifier(v17))
    {
      *v228 = 0;
      ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v17);
      CryptKeyCommonData = segPumpGetCryptKeyCommonData(ContentKeySpecifier, 0, v228);
      if (CryptKeyCommonData)
      {
        goto LABEL_129;
      }

      if (!*(*v228 + 152))
      {
        v171 = FigMediaSegmentSpecifierGetContentKeySpecifier(v17);
        if (FigContentKeySpecifierGetEncryptionMethod(v171) - 3 < 0xFFFFFFFE || FigMediaSegmentSpecifierGetType(v17) != 1)
        {
          if (*(v199 + 330))
          {
LABEL_151:
            OUTLINED_FUNCTION_182_1();
            CryptKeyCommonData = segPumpAppendBytesToMediaConnectionBuffer();
            if (CryptKeyCommonData)
            {
              goto LABEL_129;
            }

            goto LABEL_121;
          }
        }
      }
    }

    if (*(segPumpGetMediaFilePrivateData(v17, v117, v118, v119, v120, v121, v122, v123) + 13))
    {
      OUTLINED_FUNCTION_100_0();
      CryptKeyCommonData = segPumpAppendBytesToCache(v124, v125, v126, v127, v94, v95, 0, v128);
      if (CryptKeyCommonData)
      {
        goto LABEL_129;
      }
    }

    v130 = *(v5 + 880);
    if (FigMediaSegmentSpecifierGetContentKeySpecifier(v17) && *(v199 + 330))
    {
      OUTLINED_FUNCTION_401_1();
      v139 = segPumpMediaFileHandleCryptData(v131, v132, v133, v134, v135, v136, v137, v138);
      if (v139 == -12465)
      {
        OUTLINED_FUNCTION_167_1();
        v152 = 4294954831;
LABEL_128:
        CryptKeyCommonData = segPumpHandleMediaFileNetworkError(v148, v150, v149, v151, v152, 0);
LABEL_129:
        v84 = CryptKeyCommonData;
        goto LABEL_131;
      }

      v84 = v139;
      if (v139 == -12463)
      {
        CryptKeyCommonData = segPumpHandleCryptFailure();
        goto LABEL_129;
      }

      if (v139)
      {
        goto LABEL_131;
      }
    }

    else
    {
      LODWORD(v182) = 0;
      OUTLINED_FUNCTION_401_1();
      segPumpSendMediaCallback(v161, v162, v163, v164, v165, v166, v167, v168, v182, v183, v184, v185, v186, UpTimeNanoseconds, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193);
      v84 = v169;
      if (v169)
      {
LABEL_131:
        if (!v84)
        {
          goto LABEL_132;
        }

        goto LABEL_156;
      }
    }

    if (!FigRetainProxyIsInvalidated() && v130 == *(v5 + 880) && *(v79 + 8) == v17)
    {
LABEL_121:
      *(v79 + 144) = 0;
      v140 = *(v79 + 80) + 1;
      segPumpStreamDontReuseHTTPRequest(v199, v79);
      *(v79 + 80) = v140;
      v141 = *(v79 + 216);
      v142 = *(v79 + 248);
      *(v79 + 240) += v141;
      if (v142)
      {
        *(v79 + 248) = v142 - v141;
      }

      v143 = v199;
      v144 = FigGetUpTimeNanoseconds();
      segPumpGetObservedNetworkStats(v143, (v144 + DownloadTimerIntervalForMedia * -1000000000.0), &v190);
      if (v140 <= 6)
      {
        v145 = *(v199 + 1041);
        if (!v145 || (v146 = v190, v146 < FigAlternateGetPeakBitRate(*(v145 + 8))) || (LODWORD(v147) = *(v199 + 2), v36 <= v147))
        {
          if (!FigMediaSegmentSpecifierGetStartOffset(v17))
          {
            FigMediaSegmentSpecifierGetBytesToRead(v17);
          }

          OUTLINED_FUNCTION_100_0();
          segPumpCreateMediaURLRequest(v153, v154, v155, v156, v79, v157, v158, v159, 0, v183, v184, v185, v186, UpTimeNanoseconds, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193);
          if (v160)
          {
            v84 = v160;
LABEL_156:
            segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v3, v84);
            goto LABEL_132;
          }

          DownloadTimerIntervalForMedia = segPumpGetDownloadTimerIntervalForMedia(v199, v17);
          goto LABEL_65;
        }
      }

      v148 = v200;
      v149 = v79 + 16;
      v150 = v5;
      v151 = v17;
      v152 = 4294954407;
      goto LABEL_128;
    }

LABEL_130:
    v84 = 0;
    goto LABEL_131;
  }

LABEL_132:
  segPumpUnlockAndSendAllPendingNotifications(v3);
  if (v200)
  {
    CFRelease(v200);
  }

  OUTLINED_FUNCTION_812();
}

void segPumpSeeIfMediaFileIsInCache()
{
  OUTLINED_FUNCTION_428_1();
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_358_1();
  v9 = v8;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v11, v10, v11, v12, v13, v14, v15, v16);
  v32 = 0;
  cf = 0;
  v31 = 0;
  if (*(v9 + 296))
  {
    if (*(v1 + 64))
    {
      v18 = MediaFilePrivateData;
      v19 = OUTLINED_FUNCTION_502();
      if (!segPumpCreateCacheNameFromSegment(v19, v20, 0, v21))
      {
        v22 = *(v9 + 296);
        v23 = *(v1 + 64);
        StartOffset = FigMediaSegmentSpecifierGetStartOffset(v0);
        MediaSegmentAtOffset = FigStreamingCacheMediaStreamGetMediaSegmentAtOffset(v22, v23, cf, StartOffset, &v31, &v32);
        if (MediaSegmentAtOffset == -16243)
        {
          FigMediaSegmentSpecifierGetMediaSequence(v0);
          v26 = OUTLINED_FUNCTION_489();
          MediaSegmentAtOffset = FigStreamingCacheMediaStreamGetMediaSegmentWithMediaSequenceNumber(v26, v27, v28, v29, v30);
        }

        CFRelease(cf);
        if (MediaSegmentAtOffset)
        {
          if (*(v18 + 13))
          {
            *(v18 + 6) = 0;
            *(v18 + 7) = 0;
            *(v18 + 71) = 0;
            *(v18 + 8) = 0;
            *(v18 + 14) = 0;
            *(v18 + 15) = 0;
            *(v18 + 13) = 0;
            if (!v5)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          if (v5)
          {
LABEL_15:
            *v5 = v31;
          }
        }

        else
        {
          if (v7)
          {
            *v7 = v32;
          }

          if (v5)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_439_1();
}

void segPumpCreateMediaURLRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_193();
  v24 = v23;
  v194 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v220[15] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v193 = v31;
  v196 = v35;
  if (segPumpShouldRequestURLAsHTTPURL(DerivedStorage, v31))
  {
    v37 = *(DerivedStorage + 7880);
    v38 = *v35;
    if (v37 && *(DerivedStorage + 16 * v38 + 400) == v35 && *(DerivedStorage + 8328))
    {
      FigAlternateGetPeakBitRate(*(v37 + 8));
      FigAlternateGetPeakBitRate(*(*(DerivedStorage + 8328) + 8));
      v38 = *v35;
    }

    v183 = *(DerivedStorage + 16 * v38 + 400);
    HIBYTE(v200) = 0;
    memset(v220, 0, 112);
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v33);
    CMTimeMakeWithSeconds((&v220[5] + 4), TimeInSeconds, 1000);
    v47 = *v35;
    if (*v35 == 2)
    {
      v48 = 6;
    }

    else if (v47 == 1)
    {
      v48 = 2;
    }

    else
    {
      if (v47)
      {
        goto LABEL_15;
      }

      if (*(DerivedStorage + 8576))
      {
        v48 = 3;
      }

      else
      {
        v48 = 4;
      }
    }

    HIDWORD(v220[8]) = v48;
LABEL_15:
    v49 = v35;
    v50 = v35[3];
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(v33, v40, v41, v42, v43, v44, v45, v46);
    v52 = OUTLINED_FUNCTION_171();
    segPumpEnsureMediaSegmentURLs(v52, v53, v50, v54, v55, v56, v57, v58);
    v220[11] = MediaFilePrivateData[2];
    if (FigMediaSegmentSpecifierGetNextSegment(v33))
    {
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v33);
      v60 = v49[2];
      v61 = v49[3];
      v69 = segPumpGetMediaFilePrivateData(NextSegment, v62, v63, v64, v65, v66, v67, v68);
      segPumpEnsureMediaSegmentURLs(NextSegment, v60, v61, v70, v71, v72, v73, v74);
      v220[12] = v69[2];
    }

    v220[13] = v33;
    if (*(DerivedStorage + 335))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v159, cf, v164);
      goto LABEL_65;
    }

    if (!*(v29 + 160) && *(v196 + 280) && !FigCFHTTPCanURLsBePersistent(*(v196 + 16), v193, &v200 + 7) && HIBYTE(v200))
    {
      *(v29 + 152) = *(v196 + 272);
      *(v196 + 272) = 0;
      *(v196 + 280) = 0;
    }

    v75 = *(v29 + 32);
    if (v75)
    {
      CFRelease(v75);
      *(v29 + 32) = 0;
    }

    v76 = (v29 + 16);
    v77 = *(v29 + 24);
    if (v77)
    {
      CFRelease(v77);
      *(v29 + 24) = 0;
    }

    v78 = *(v29 + 160);
    if (v78 && *v76)
    {
      if (FigCFHTTPCanURLsBePersistent(*v76, v193, &v200 + 7) || HIBYTE(v200))
      {
        v78 = *(v29 + 160);
      }

      else
      {
        v79 = *(v29 + 152);
        if (v79)
        {
          CFRelease(v79);
          *(v29 + 152) = 0;
        }

        v80 = *(v29 + 160);
        if (v80)
        {
          CFRelease(v80);
        }

        v78 = 0;
      }
    }

    v187 = v29 + 16;
    v81 = *(v29 + 152);
    *(v29 + 152) = 0;
    *(v29 + 160) = 0;
    if (*(v196 + 696) == v29 && *(v196 + 402))
    {
      v24 |= 0x20u;
    }

    if (*(DerivedStorage + 8215))
    {
      v82 = v24 | 0x200;
    }

    else
    {
      v82 = v24;
    }

    HIDWORD(v185) = v82;
    v180 = v33;
    v83 = v33;
    v190 = v29;
    v84 = v27;
    segPumpPrepareMediaConnectionForNewRequest(DerivedStorage, v196, v83, v193, v29, v27, v194, 1, v159, cf, v164, v165, v166, v168, v170, v172, v175, v177);
    if (!*(DerivedStorage + 8641))
    {
      *(DerivedStorage + 8641) = 1;
      AttemptNetworkMonitorSetup(DerivedStorage);
    }

    v85 = *(DerivedStorage + 56);
    v86 = *(DerivedStorage + 216);
    v87 = *(DerivedStorage + 240);
    v88 = *DerivedStorage;
    memcpy(__dst, v220, 0x70uLL);
    v173 = v88;
    v89 = v84;
    LODWORD(cfb) = 13;
    HIDWORD(cfb) = HIDWORD(v185);
    segPumpCreateHTTPRequest(DerivedStorage, v85, v196, v81, v78, v193, v86, v87, 0, cfb, __dst, v84, v194, segPumpMediaFileMemoryRequestCallback, segPumpMediaFileReadCallback, v173, a23, v187, v180, v183, v185, v187, v190, v193, HIDWORD(v193), v194, v196, v199, v200, *v201, *&v201[8], *&v201[16], v202);
    v91 = v90;
    if (v81)
    {
      CFRelease(v81);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    if (!v91 && dword_1EAF16A30)
    {
      LODWORD(v200) = 0;
      OUTLINED_FUNCTION_418_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_233();
      if (v94)
      {
        v95 = v93;
      }

      else
      {
        v95 = 0;
      }

      if (v95)
      {
        OUTLINED_FUNCTION_393_1();
        if (v94)
        {
          v105 = v103;
        }

        else
        {
          v105 = v104;
        }

        v106 = *v197;
        v107 = *(v191 + 184);
        if (v184 == v197)
        {
          v108 = ":t";
        }

        else
        {
          v108 = "";
        }

        *v198 = *(v191 + 24);
        v109 = *(segPumpGetMediaFilePrivateData(v181, v96, v97, v98, v99, v100, v101, v102) + 4);
        v110 = *(v191 + 16);
        if (!*(DerivedStorage + 347))
        {
          v110 = @"[]";
        }

        v111 = *(v191 + 96);
        *v201 = 136317698;
        *&v201[4] = "segPumpCreateMediaHTTPRequest";
        *&v201[12] = 2114;
        *&v201[14] = v105;
        *&v201[22] = 2048;
        v202 = v106;
        v203 = 2048;
        v204 = v107;
        v205 = 2080;
        v206 = v108;
        v207 = 2048;
        v208 = *v198;
        v209 = 2048;
        v210 = v109;
        v211 = 2114;
        v212 = v110;
        v213 = 2048;
        v214 = v89;
        v215 = 2048;
        v216 = v195 + v89;
        v217 = 1024;
        v218 = v111;
        OUTLINED_FUNCTION_47_0();
        OUTLINED_FUNCTION_51_0();
        _os_log_send_and_compose_impl(v112, v113, v114, v115, v116, v117, 0, v118);
      }

LABEL_64:
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467(v119, v120, v121, v122, v123);
      goto LABEL_65;
    }

    goto LABEL_65;
  }

  v124 = *(DerivedStorage + 16 * *v35 + 400);
  OUTLINED_FUNCTION_100_0();
  segPumpPrepareMediaConnectionForNewRequest(v125, v126, v127, v31, v29, v27, v194, 0, v159, cf, v164, v165, v166, v168, v170, v172, v175, v177);
  v128 = (v29 + 104);
  LOBYTE(v160) = (v24 & 4) != 0;
  OUTLINED_FUNCTION_39_1();
  segPumpCustomURLLoaderGetURLGuts(v129, v130, v131, v132, v133, 0, v134, 0, v160, v27, v194, v29 + 104, v167, v169, v171, v174, v176, v178, v179, v182, v185, v186, v189);
  if (!v135 && dword_1EAF16A30)
  {
    v136 = v124;
    *v201 = 0;
    LOBYTE(v200) = 0;
    v192 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_233();
    if (v94)
    {
      v145 = v144;
    }

    else
    {
      v145 = 0;
    }

    if (v145)
    {
      if (*(DerivedStorage + 8944))
      {
        v146 = *(DerivedStorage + 8944);
      }

      else
      {
        v146 = &stru_1F0B1AFB8;
      }

      v188 = *v196;
      v147 = v33;
      if (v136 == v196)
      {
        v148 = ":t";
      }

      else
      {
        v148 = "";
      }

      if ((v24 & 0x400) != 0)
      {
        v149 = "b";
      }

      else
      {
        v149 = "";
      }

      v150 = *(segPumpGetMediaFilePrivateData(v147, v137, v138, v139, v140, v141, v142, v143) + 4);
      v151 = v193;
      if (!*(DerivedStorage + 347))
      {
        v151 = @"[]";
      }

      v152 = *v128;
      LODWORD(v220[0]) = 136317442;
      *(v220 + 4) = "segPumpCreateMediaURLRequest";
      WORD2(v220[1]) = 2114;
      *(&v220[1] + 6) = v146;
      HIWORD(v220[2]) = 2048;
      v220[3] = v188;
      LOWORD(v220[4]) = 2080;
      *(&v220[4] + 2) = v148;
      WORD1(v220[5]) = 2080;
      *(&v220[5] + 4) = v149;
      WORD2(v220[6]) = 2048;
      *(&v220[6] + 6) = v150;
      HIWORD(v220[7]) = 2114;
      v220[8] = v151;
      LOWORD(v220[9]) = 2048;
      *(&v220[9] + 2) = v27;
      WORD1(v220[10]) = 2048;
      *(&v220[10] + 4) = &v27[v194];
      WORD2(v220[11]) = 1024;
      *(&v220[11] + 6) = v152;
      LODWORD(cfa) = 98;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v153, v154, v155, v156, v157, v192, 0, v158, v220, cfa);
    }

    goto LABEL_64;
  }

LABEL_65:
  OUTLINED_FUNCTION_191();
}

void segPumpPrepareMediaConnectionForNewRequest(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_653();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  segPumpSetMediaFileForMediaConnection(v28, v26, v30, v31, v32, v24, v22, v20);
  v27[15] = 0;
  *(v27 + 24) = 0;
  v27[27] = 0;
  v27[28] = 0;
  v27[29] = 0;
  v27[30] = v25;
  v27[31] = v23;
  v27[32] = 0;
  *(v27 + 105) = 0;
  v27[36] = 0;
  v27[37] = 0;
  ++*(v29 + 8688);
  if (!v21 || *(v27 + 208) != 1)
  {
    v33 = v27[16];
    if (v33)
    {
      CFRelease(v33);
      v27[16] = 0;
    }

    v27[17] = 0;
  }

  *(v27 + 208) = v21;
  v34 = *(v29 + 9232);
  if (v34)
  {
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v35)
    {
      v35(v34, 0x1F0B64538, 0x1F0B65598, 1);
    }
  }

  InterfaceType = *(v29 + 8648);
  if (!InterfaceType)
  {
    InterfaceType = *(v29 + 8644);
    if (!InterfaceType)
    {
      v37 = *(v29 + 8632);
      if (!v37)
      {
        goto LABEL_19;
      }

      InterfaceType = FigNetworkPathInformationGetInterfaceType(v37);
    }
  }

  if ((InterfaceType - 3) >= 2)
  {
    if (InterfaceType != 5)
    {
      goto LABEL_19;
    }

    cf = 0;
    FigNetworkWirelessReportingInterfaceCopyCellStats(&cf);
    FigNetworkWirelessReportingReportCellStats(*(v29 + 9232), cf);
  }

  else
  {
    cf = 0;
    FigNetworkWirelessReportingInterfaceCopyWifiStats(&cf);
    FigNetworkWirelessReportingReportWiFiStats(*(v29 + 9232), cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:
  OUTLINED_FUNCTION_652();
}