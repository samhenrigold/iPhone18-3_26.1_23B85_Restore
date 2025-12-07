void segPumpMediaFileMemoryRequestCallback()
{
  OUTLINED_FUNCTION_629();
  v21 = v0;
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_570();
  OUTLINED_FUNCTION_198_1();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v12)
  {
    if (segPumpGetStreamFromMediaHTTPRequest(v19, v11, v9, &v18))
    {
      v13 = v18;
      if (v18)
      {
        if (v18[1])
        {
          v14 = v18[17];
          if (v7 - 1 >= 0x20000 - v14 && v14 > 0x10000)
          {
            v15 = v18[16];
            if (v15)
            {
              CFRelease(v15);
              v13 = v18;
              v18[16] = 0;
            }

            v13[17] = 0;
          }

          v16 = v13[16];
          if (v16)
          {
            goto LABEL_13;
          }

          segPumpGetMediaDataMemoryPool(v19);
          if (!FigMemoryPoolCreateBlockBuffer())
          {
            v17 = v18;
            v18[17] = 0;
            v16 = v17[16];
            if (!v16)
            {
LABEL_14:
              *v5 = v16;
              *v3 = v17[17];
              goto LABEL_15;
            }

LABEL_13:
            v16 = CFRetain(v16);
            v17 = v18;
            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_15:
  FigRetainProxyUnlockMutex();
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_345_1();
}

void segPumpMediaFileReadCallback(uint64_t a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  number = 0;
  v13 = 0;
  OUTLINED_FUNCTION_381_1();
  FigRetainProxyRetain();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (v5)
  {
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(a3, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_341_1();
    segPumpGetStreamFromMediaHTTPRequest(v6, v7, a2, v8);
  }

  segPumpUnlockAndSendAllPendingNotifications(a3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  FigRetainProxyRelease();
  if (v15)
  {
    CFRelease(v15);
  }
}

void segPumpHandleMediaFileData()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  v610 = v2;
  v4 = v3;
  v6 = v5;
  v606 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v628[16] = *MEMORY[0x1E69E9840];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v589 = *(v11 + 880);
  v602 = v13;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v593 = *DerivedStorage;
  v22 = *(v9 + 8);
  if (v22)
  {
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(*(v9 + 8), v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    MediaFilePrivateData = 0;
  }

  v23 = *(v9 + 64);
  v24 = v610;
  if (!v23)
  {
    v25 = UpTimeNanoseconds - *(v9 + 40);
    *(v9 + 64) = UpTimeNanoseconds;
    *(v9 + 72) = v25;
    v23 = UpTimeNanoseconds;
  }

  if (v1)
  {
    v70 = *(v11 + 776);
    if (v70 < 1)
    {
LABEL_80:
      if (*(v11 + 792) == v9)
      {
        v72 = OUTLINED_FUNCTION_193_0();
        segPumpStreamCancelPreloadReadAndResetData(v72, v73);
      }

      else if (*(v11 + 800) == v9)
      {
        v76 = OUTLINED_FUNCTION_193_0();
        segPumpStreamCancelPreloadMapReadAndResetData(v76, v77);
      }

      else
      {
        v474 = *(v9 + 8);
        if (v474 && segPumpHandleMediaFileNetworkError(v602, v11, v9 + 16, v474, v1, 0))
        {
          goto LABEL_386;
        }
      }
    }

    else
    {
      v71 = 0;
      while (*(*(v11 + 768) + 8 * v71) != v9)
      {
        if (v70 == ++v71)
        {
          goto LABEL_80;
        }
      }

      v105 = OUTLINED_FUNCTION_193_0();
      segPumpStreamCancelReadAheadAndResetDataAtIndex(v105, v106, v107);
    }

    FigHTTPStopAndReleaseTimer((v9 + 112));
    OUTLINED_FUNCTION_298();
    segPumpPerformReportingForMediaFileReadOverHTTP();
    goto LABEL_386;
  }

  v26 = *(v11 + 296);
  if (v26)
  {
    CFRelease(v26);
    *(v11 + 296) = 0;
    v23 = *(v9 + 64);
  }

  v573 = *(v9 + 40);
  v577 = *(v9 + 72);
  if (!v22)
  {
    v32 = (v9 + 224);
    v36 = 136;
    v35 = v6;
    v31 = DerivedStorage;
LABEL_21:
    *v32 += v6;
    *(v9 + v36) += v6;
    v6 = v35;
    v24 = v610;
    goto LABEL_23;
  }

  if (!*(v9 + 210))
  {
    *(v9 + 210) = 1;
    if (!*(v9 + 256))
    {
      if (!FigMediaSegmentSpecifierGetBytesToRead(v22))
      {
        *(MediaFilePrivateData + 5) += v4;
        v27 = MEMORY[0x1E6960C98];
        v28 = *(MEMORY[0x1E6960C98] + 16);
        *(DerivedStorage + 9096) = *MEMORY[0x1E6960C98];
        *(DerivedStorage + 9112) = v28;
        *(DerivedStorage + 9128) = *(v27 + 32);
      }

      *(v9 + 256) = v4;
    }
  }

  *(v9 + 224) += v6;
  *(v9 + 136) += v6;
  if (*(v9 + 296) < 1)
  {
    v31 = DerivedStorage;
    goto LABEL_23;
  }

  StartOffset = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8));
  v30 = *(v9 + 296) + *(v9 + 240);
  v31 = DerivedStorage;
  if (StartOffset > v30)
  {
    v32 = (v9 + 296);
    v33 = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8));
    v34 = v6;
    if (v33 - v30 < v6)
    {
      v34 = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8)) - v30;
    }

    v606 += v34;
    v35 = v6 - v34;
    v36 = 216;
    v6 = v34;
    goto LABEL_21;
  }

LABEL_23:
  v581 = v23;
  if ((v24 & 1) != 0 || (DataLength = CMBlockBufferGetDataLength(*(v9 + 272)), segPumpReadCompletesMediaRange(v22, DataLength + v6)))
  {
    OUTLINED_FUNCTION_732();
    HIDWORD(v585) = v56;
    segPumpPerformReportingForMediaFileReadOverHTTP();
    v39 = 0;
    v38 = 1;
    if (v24)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v38 = 0;
    v39 = 1;
    HIDWORD(v585) = v24;
    if (v24)
    {
      goto LABEL_27;
    }
  }

  if (v6 < 1)
  {
    goto LABEL_383;
  }

LABEL_27:
  if (!*(v9 + 232))
  {
    *(v9 + 232) = v6;
  }

  LODWORD(v597) = v39;
  *(v9 + 216) += v6;
  if (v24)
  {
    *(v9 + 56) = UpTimeNanoseconds;
  }

  if (v22)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v611 = v11;
  if (v40 == 1)
  {
    v628[0] = 0;
    v618 = 0.0;
    *v619 = 0;
    v616 = 0;
    v617 = 0;
    v614 = 0;
    *type = 0;
    v613 = 0;
    v612 = 0;
    v41 = *(v9 + 32);
    if (v41)
    {
      v42 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v42)
      {
        v557 = 0;
        v561 = 0;
        v553 = &v612;
        v545 = &v613;
        v549 = &v614;
        if (!v42(v41, v628, v619, 0, &v618, &v617, &v616, type))
        {
          v43 = *v619;
          MediaFilePrivateData[17] = *v628;
          *(MediaFilePrivateData + 18) = v43;
          v44 = v617;
          MediaFilePrivateData[19] = v618;
          *(MediaFilePrivateData + 20) = v44;
          v45 = *type;
          *(MediaFilePrivateData + 21) = v616;
          *(MediaFilePrivateData + 22) = v45;
          *(MediaFilePrivateData + 184) = v613;
          *(MediaFilePrivateData + 24) = v614;
          *(MediaFilePrivateData + 50) = v612;
        }
      }
    }
  }

  else if (!v22)
  {
    goto LABEL_99;
  }

  v46 = FigMediaSegmentSpecifierGetType(v22);
  v47 = v38 ^ 1;
  if (v46)
  {
    v47 = 1;
  }

  if ((v47 & 1) == 0)
  {
    v48 = *(MediaFilePrivateData + 6) + v6;
    v49 = CMBaseObjectGetDerivedStorage();
    v50 = v11;
    v51 = v49;
    LODWORD(v569) = segPumpStreamBitRateRequiredForStream(v49, v50);
    if (v48 < 1 || FigMediaSegmentSpecifierGetTimeInSeconds(v22) <= 0.5)
    {
      goto LABEL_98;
    }

    v52 = ((8 * v48) / FigMediaSegmentSpecifierGetTimeInSeconds(v22));
    *(v611 + 1104) = FigMediaSegmentSpecifierGetTimeInSeconds(v22) + *(v611 + 1104);
    v53 = *(v611 + 1096);
    v54 = v53 ? (9 * v53 + v52) / 0xAu : v52;
    *(v611 + 1096) = v54;
    *(v611 + 1100) = v52;
    if (!*(v51 + 8328))
    {
      goto LABEL_98;
    }

    if (*(v51 + 7880))
    {
      v55 = *(v51 + 16 * *v611 + 400) == v611;
    }

    else
    {
      v55 = 0;
    }

    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v22);
    LODWORD(v58) = *(v51 + 8);
    v59 = v58;
    if (TimeInSeconds >= v58)
    {
      v60 = 0;
      v62 = (v51 + 400);
      v63 = 3;
      do
      {
        if (*(*(v62 - 1) + 16))
        {
          if (!v55 || (v64 = *v62) == 0)
          {
            v64 = *(v62 - 1);
          }

          v65 = *(v64 + 1100);
          if (!v65)
          {
            goto LABEL_98;
          }

          v60 += v65;
        }

        v62 += 2;
        --v63;
      }

      while (v63);
      if (v60 <= v569)
      {
        goto LABEL_98;
      }
    }

    else
    {
      LODWORD(v617) = 0;
      v618 = 0.0;
      if (!segPumpGetAverageEstimatedMediaBitrate(v51, v55, &v617, &v618) || ((v60 = v617, v618 > v59) ? (v61 = v617 > v569) : (v61 = 0), !v61))
      {
LABEL_98:
        v31 = DerivedStorage;
        v11 = v611;
        v38 = v38;
        LOBYTE(v24) = v610;
        goto LABEL_99;
      }
    }

    if (!*(v51 + 8222))
    {
      DeclaredPeakBitRate = FigAlternateGetDeclaredPeakBitRate(*(*(v51 + 8328) + 8));
      if (DeclaredPeakBitRate)
      {
        if (DeclaredPeakBitRate / 10 + DeclaredPeakBitRate < v60)
        {
          OUTLINED_FUNCTION_214_1(v51, v611, (*(v611 + 696) + 16), -12318, @"CoreMediaErrorDomain", @"Segment exceeds specified bandwidth for variant", v67, v68, 0x300000002);
          *(v51 + 8222) = 1;
        }
      }
    }

    LODWORD(v616) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v69 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    if (OUTLINED_FUNCTION_186_0(v69))
    {
      OUTLINED_FUNCTION_264_0();
      if (v611)
      {
        v75 = *v611;
      }

      else
      {
        v75 = -1;
      }

      *v619 = 136316162;
      *&v619[4] = "segPumpVerifyMediaBitrateIsBelowAlternatePeakBitrate";
      v620 = 2114;
      v621 = v74;
      v622 = 2048;
      v623 = v75;
      v624 = 1024;
      v625 = v569;
      v626 = 1024;
      v627 = v60;
      LODWORD(v549) = 44;
      v545 = v619;
      OUTLINED_FUNCTION_19_1();
      _os_log_send_and_compose_impl(v78, v79, v80, v81, v82, v83, v84, v85);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_635(v86, v87, v88, v89, v90);
    v91 = 8328;
    if (v55)
    {
      v91 = 7880;
    }

    v92 = *(v51 + v91);
    *(v92 + 24) = v60;
    FigAlternateSetPeakBitRate(*(v92 + 8), v60);
    for (i = *(v51 + 8280); i; i = *i)
    {
      if (i != v92)
      {
        v94 = *(v92 + 28);
        v95 = *(i + 7) - v94;
        if (v95 < 0)
        {
          v95 = v94 - *(i + 7);
        }

        if (v95 / v94 <= 0.01)
        {
          *(i + 6) = v60;
          FigAlternateSetPeakBitRate(i[1], v60);
        }
      }
    }

    segPumpReadyNotification(v51, @"FBPAL_AlternateListChanged", 0);
    segPumpInitAlternateSelectionBoss(v51, v96);
    goto LABEL_98;
  }

LABEL_99:
  *(v31 + 8720) += v6;
  *(v11 + 1112) += v6;
  if (!*v11)
  {
    v97 = 8816;
    goto LABEL_103;
  }

  if (*v11 == 1)
  {
    v97 = 8824;
LABEL_103:
    *(v31 + v97) += v6;
  }

  v98 = v31 + 0x2000;
  if (v24)
  {
    *(v9 + 104) = 0;
    FigHTTPStopAndReleaseTimer((v9 + 112));
    *(v9 + 80) = 0;
    v99 = *(v9 + 88);
    if (v99)
    {
      CFRelease(v99);
      *(v9 + 88) = 0;
    }

    if (*(v31 + 8896))
    {
      v100 = 9024;
      if (UpTimeNanoseconds > *(v9 + 280))
      {
        v100 = 9032;
      }

      ++*(v31 + v100);
    }

    *(v9 + 280) = 0x7FFFFFFFFFFFFFFFLL;
    v101 = *(v9 + 32);
    if (v101)
    {
      if (!*(v9 + 145) || (segPumpStreamDontReuseHTTPRequest(v31, v9), (v101 = *(v9 + 32)) != 0))
      {
        *(v9 + 152) = *(v9 + 24);
        *(v9 + 160) = v101;
        *(v9 + 104) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        ++*(v9 + 192);
      }
    }
  }

  if (v40 && !*(v31 + 8896) && !*(v11 + 873) && !FigMediaSegmentSpecifierGetType(v22) && !segPumpStreamHasPreloadConnectionForSegment(v11, v22, 1))
  {
    ElapsedTimeForConnectionOnMedia = segPumpGetElapsedTimeForConnectionOnMedia(v11, v9);
    if (ElapsedTimeForConnectionOnMedia <= FigMediaSegmentSpecifierGetTimeInSeconds(v22))
    {
      if (*(v11 + 874))
      {
        v108 = *(v11 + 752);
        if (v108 < 1)
        {
          goto LABEL_132;
        }

        v109 = v11 + 696;
        v110 = 1;
        do
        {
          if (*v109 && *(*v109 + 32))
          {
            v110 = 0;
          }

          v109 += 8;
          --v108;
        }

        while (v108);
        if (v110)
        {
LABEL_132:
          *(v11 + 874) = 0;
        }
      }
    }

    else
    {
      v103 = OUTLINED_FUNCTION_732();
      segPumpSetCurrentSegmentTooSlow(v103, v104);
    }
  }

  if (segPumpShouldDoSegmentReadAheads(v31) && *(v11 + 776) >= 1)
  {
    v111 = *(v11 + 768);
    do
    {
      if (*v111)
      {
        *(*v111 + 40) = UpTimeNanoseconds;
      }

      OUTLINED_FUNCTION_309_1();
    }

    while (!v216);
  }

  if (!v22 || !FigMediaSegmentSpecifierGetContentKeySpecifier(v22) || *(v11 + 256) != v22 && *(v11 + 264) != v22)
  {
    goto LABEL_142;
  }

  v628[0] = 0;
  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v22);
  if (segPumpGetCryptKeyCommonData(ContentKeySpecifier, 0, v628))
  {
    goto LABEL_383;
  }

  if (*(v628[0] + 152))
  {
    v112 = 0;
    HIDWORD(v597) = 1;
    v11 = v611;
    goto LABEL_144;
  }

  if (!*(v31 + 9792))
  {
    *(v31 + 9792) = FigGetUpTimeNanoseconds();
  }

  v116 = FigMediaSegmentSpecifierGetContentKeySpecifier(v22);
  v11 = v611;
  if (FigContentKeySpecifierGetEncryptionMethod(v116) - 3 < 0xFFFFFFFE || FigMediaSegmentSpecifierGetType(v22) != 1)
  {
    v112 = *(v31 + 330) != 0;
    if (*(v31 + 330))
    {
      v113 = v597;
    }

    else
    {
      v113 = 1;
    }
  }

  else
  {
LABEL_142:
    v112 = 0;
    v113 = 1;
  }

  HIDWORD(v597) = v113;
LABEL_144:
  if (*(v31 + 8896) || *(v11 + 696) != v9)
  {
    v112 = 1;
    if (!v597)
    {
LABEL_147:
      if (!v22)
      {
        goto LABEL_179;
      }

      goto LABEL_168;
    }
  }

  else if (!v597)
  {
    goto LABEL_147;
  }

  if ((v610 & 1) == 0 || (v114 = *(v11 + 696)) != 0 && (*(v114 + 32) || *(v114 + 104)))
  {
    v38 = 0;
    if (!v22)
    {
      goto LABEL_179;
    }
  }

  else
  {
    v38 = *(v11 + 704) == 0;
    if (!v22)
    {
      goto LABEL_179;
    }
  }

LABEL_168:
  if (v38)
  {
    if (FigMediaSegmentSpecifierGetType(v22) != 1)
    {
      v124 = *(v9 + 8);
      if (v124)
      {
        if (*(segPumpGetMediaFilePrivateData(v124, v117, v118, v119, v120, v121, v122, v123) + 2))
        {
          v132 = segPumpGetMediaFilePrivateData(*(v9 + 8), v125, v126, v127, v128, v129, v130, v131);
          CFRelease(v132[2]);
          *(segPumpGetMediaFilePrivateData(*(v9 + 8), v133, v134, v135, v136, v137, v138, v139) + 2) = 0;
        }
      }
    }

    v140 = 64;
    if (!*(v9 + 211))
    {
      v140 = 40;
    }

    v141 = *(v9 + v140);
    if (*(v9 + 288) <= 0)
    {
      v142 = v141;
    }

    else
    {
      v142 = *(v9 + 288);
    }

    MediaFilePrivateData[10] = *(v11 + 808) + (FigGetUpTimeNanoseconds() - v142) / 1000000000.0;
  }

LABEL_179:
  if (v22 && !v112)
  {
    v143 = *(v9 + 8);
    if (v143 && FigMediaSegmentSpecifierGetBytesToRead(v143))
    {
      v156 = *(v9 + 240);
      v157 = *(v9 + 216);
      v158 = FigMediaSegmentSpecifierGetStartOffset(*(v9 + 8));
      v159 = FigMediaSegmentSpecifierGetBytesToRead(*(v9 + 8));
      v144 = (v157 + v156 - (v158 + v159)) & ~((v157 + v156 - (v158 + v159)) >> 63);
    }

    else
    {
      v144 = 0;
    }

    v160 = OUTLINED_FUNCTION_105_0();
    appended = segPumpAccumConnCompletesMediaRange(v160, v161);
    v170 = appended;
    if (appended)
    {
      appended = segPumpAppendBytesToMediaConnectionBuffer();
      if (appended)
      {
        goto LABEL_383;
      }
    }

    v171 = OUTLINED_FUNCTION_206_1(appended, v163, v164, v165, v166, v167, v168, v169, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v31 + 0x2000, v573, v577, v581, v585, v589, v593, v597, v602);
    if (segPumpDeliverAccumulatedBuffer(v171, v172, v611, v9, v22, v170, v173, v174, v546, v550, v554, v558, v562, v566, v570, v574, v578, v582, v586, v590, v594, v598, v603, v606, MediaFilePrivateData, DerivedStorage))
    {
      goto LABEL_383;
    }

    if (FigRetainProxyIsInvalidated())
    {
      goto LABEL_383;
    }

    OUTLINED_FUNCTION_377_1();
    if (!v216)
    {
      goto LABEL_383;
    }

    if (v170)
    {
      v155 = 0;
      v98 = v569;
LABEL_242:
      v153 = v610;
      if (v610)
      {
        if (v177[88])
        {
          v472 = v155;
          v473 = OUTLINED_FUNCTION_206_1(v175, v176, v177, v178, v179, v180, v181, v182, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
          if (segPumpMoveToNextParallelConnection(v473))
          {
            goto LABEL_383;
          }

          if (FigRetainProxyIsInvalidated())
          {
            goto LABEL_383;
          }

          v155 = v472;
          v153 = v610;
          if (v589 != *(v611 + 880))
          {
            goto LABEL_383;
          }
        }
      }

LABEL_244:
      if (v38)
      {
        goto LABEL_251;
      }

      goto LABEL_245;
    }

    v183 = v6 - v144;
    v184 = (v6 - v144) & ~((v6 - v144) >> 63);
    if (v610)
    {
      v185 = v177[88];
      if (v185)
      {
        v186 = HIDWORD(v585);
        if (*(v9 + 8) == *(v185 + 8))
        {
          v186 = HIDWORD(v585) & 0xFFFFFFFE;
        }

        HIDWORD(v585) = v186;
      }
    }

    if (*(MediaFilePrivateData + 13))
    {
      OUTLINED_FUNCTION_166_0();
      v175 = segPumpAppendBytesToCache(v187, v188, v189, v190, v607, v184, v38, v191);
      if (v175)
      {
        goto LABEL_383;
      }
    }

    v192 = *(v9 + 8);
    v155 = (*(v611 + 256) == v192 || *(v611 + 264) == v192) && *(v611 + 404) != 0;
    if (v144)
    {
      v475 = v155;
      v175 = segPumpAppendBytesToMediaConnectionBuffer();
      v155 = v475;
      if (v175)
      {
        goto LABEL_383;
      }
    }

    if (HIDWORD(v597) && v38)
    {
      v476 = *(v9 + 8);
      v98 = v569;
      if (v476)
      {
        v477 = v155;
        CFRelease(v476);
        v155 = v477;
        *(v9 + 8) = 0;
      }
    }

    else
    {
      v98 = v569;
      if (!v38)
      {
        goto LABEL_225;
      }
    }

    v478 = v155;
    segPumpStreamUnchainMediaConnIfChaining(v602, v611, v9);
    v155 = v478;
    if (v175)
    {
      goto LABEL_383;
    }

LABEL_225:
    if (v155 && (v183 > 0 || (v585 & 0x100000000) != 0))
    {
      v193 = FigMediaSegmentSpecifierGetContentKeySpecifier(v22);
      if (v193 && *(v31 + 330))
      {
        v199 = OUTLINED_FUNCTION_304_1(v193, v194, v611, v195, *(v9 + 128), v196, v197, v198, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
        v207 = segPumpMediaFileHandleCryptData(v199, v200, v201, v202, v203, v204, v205, v206);
        if (v207 == -12465)
        {
          segPumpHandleMediaFileNetworkError(v602, v611, 0, v22, 4294954831, 0);
          goto LABEL_383;
        }

        if (v207 == -12463)
        {
          OUTLINED_FUNCTION_206_1(v207, v208, v209, v210, v211, v212, v213, v214, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
          segPumpHandleCryptFailure();
          goto LABEL_383;
        }

        if (v207)
        {
          goto LABEL_383;
        }
      }

      else
      {
        LODWORD(v545) = 0;
        v482 = OUTLINED_FUNCTION_304_1(v193, v194, v611, v195, *(v9 + 128), v196, v197, v198, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
        segPumpSendMediaCallback(v482, v483, v484, v485, v486, v487, v488, v489, v547, v551, v555, v559, v563, v567, v571, v575, v579, v583, v587, v591, v595, v599, v604);
        if (v490)
        {
          goto LABEL_383;
        }
      }

      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_383;
      }

      OUTLINED_FUNCTION_377_1();
      if (!v216 || v177[32] != v22 && v177[33] != v22)
      {
        goto LABEL_383;
      }

      v155 = 1;
    }

    else
    {
      *(MediaFilePrivateData + 6) += v184;
      v177 = v611;
    }

    goto LABEL_242;
  }

  v145 = segPumpAppendBytesToMediaConnectionBuffer();
  if (v145)
  {
    goto LABEL_383;
  }

  v153 = v610;
  if ((v610 & 1) != 0 && v22 && *(v31 + 8896) && HIDWORD(v597) && *(v611 + 696) == v9)
  {
    v479 = *(v9 + 8);
    if (v479)
    {
      v481 = v611;
      if (FigMediaSegmentSpecifierGetType(*(v9 + 8)) == 1)
      {
LABEL_410:
        v499 = *(v9 + 8);
        if (v499)
        {
          CFRelease(v499);
          *(v9 + 8) = 0;
        }

        v500 = OUTLINED_FUNCTION_206_1(v499, v146, v147, v148, v149, v150, v151, v152, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
        if (segPumpDeliverAccumulatedBuffer(v500, v501, v481, v9, v22, 1, v502, v503, v548, v552, v556, v560, v564, v568, v572, v576, v580, v584, v588, v592, v596, v600, v605, v606, MediaFilePrivateData, DerivedStorage))
        {
          goto LABEL_383;
        }

        v153 = v610;
        if (FigRetainProxyIsInvalidated())
        {
          goto LABEL_383;
        }

        if (v479 != v22 || v589 != *(v611 + 880))
        {
          goto LABEL_383;
        }

        v155 = 1;
        HIDWORD(v597) = 1;
        goto LABEL_244;
      }

      v480 = *(v9 + 8);
    }

    else
    {
      v480 = 0;
      v481 = v611;
    }

    if (*(segPumpGetMediaFilePrivateData(v480, v146, v147, v148, v149, v150, v151, v152) + 2))
    {
      v491 = segPumpGetMediaFilePrivateData(*(v9 + 8), v146, v147, v148, v149, v150, v151, v152);
      CFRelease(v491[2]);
      *(segPumpGetMediaFilePrivateData(*(v9 + 8), v492, v493, v494, v495, v496, v497, v498) + 2) = 0;
    }

    goto LABEL_410;
  }

  if (v38)
  {
    if (!v9 || !*(v31 + 8896))
    {
      HIDWORD(v597) = 0;
      v155 = 0;
      goto LABEL_251;
    }

    if (*(v611 + 776) < 1)
    {
      HIDWORD(v597) = 0;
      v155 = 0;
      goto LABEL_251;
    }

    v154 = *(v611 + 768);
    while (*v154 != v9)
    {
      OUTLINED_FUNCTION_309_1();
      if (v216)
      {
        v155 = 0;
        HIDWORD(v597) = 0;
        goto LABEL_244;
      }
    }

    OUTLINED_FUNCTION_206_1(v145, v146, v147, v148, v149, v150, v151, v152, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
    segPumpCheckAndTryToAdoptStepAhead();
    OUTLINED_FUNCTION_322_1();
    if (v216)
    {
      LODWORD(v38) = 1;
      goto LABEL_383;
    }

    v155 = 0;
    HIDWORD(v597) = 0;
    goto LABEL_244;
  }

  HIDWORD(v597) = 0;
  v155 = 0;
LABEL_245:
  LODWORD(v38) = (v153 & 1) != 0 && ((v215 = *(v611 + 696)) == 0 || !*(v215 + 32) && !*(v215 + 104)) && *(v611 + 704) == 0;
LABEL_251:
  if (v22)
  {
    v216 = v38 && *(v98 + 704) == 0;
    if (v216 || (v153 & (*(v98 + 704) != 0)) != 0)
    {
      v218 = v155;
      IsConnectedWithHighSpeedHighPower = FigMediaSegmentSpecifierGetType(v22);
      if (IsConnectedWithHighSpeedHighPower)
      {
        goto LABEL_381;
      }

      v227 = v98;
      v619[0] = 0;
      IsConnectedWithHighSpeedHighPower = segPumpIsConnectedWithHighSpeedHighPower(v31, v619);
      if (!IsConnectedWithHighSpeedHighPower)
      {
        v426 = v619[0];
        if (*(v31 + 9232))
        {
          VTable = CMBaseObjectGetVTable();
          v428 = *(VTable + 16);
          IsConnectedWithHighSpeedHighPower = VTable + 16;
          if (*(v428 + 56))
          {
            OUTLINED_FUNCTION_310();
            IsConnectedWithHighSpeedHighPower = v429();
          }
        }

        v31 = DerivedStorage;
        if (v426)
        {
          v430 = *(DerivedStorage + 9232);
          IsConnectedWithHighSpeedHighPower = segPumpGetMediaFilePrivateData(v22, v220, v221, v222, v223, v224, v225, v226);
          if (v430)
          {
            v153 = *(IsConnectedWithHighSpeedHighPower + 40);
            v431 = CMBaseObjectGetVTable();
            v432 = *(v431 + 16);
            IsConnectedWithHighSpeedHighPower = v431 + 16;
            if (*(v432 + 32))
            {
              v433 = OUTLINED_FUNCTION_61_1();
              IsConnectedWithHighSpeedHighPower = v434(v433);
            }
          }
        }
      }

      if (*v611 != 1)
      {
        if (*v611)
        {
LABEL_380:
          v31 = DerivedStorage;
LABEL_381:
          v470 = OUTLINED_FUNCTION_206_1(IsConnectedWithHighSpeedHighPower, v220, v221, v222, v223, v224, v225, v226, v545, v549, v553, v557, v561, os_log_and_send_and_compose_flags_and_os_log_type, v569, v573, v577, v581, v585, v589, v593, v597, v602);
          if (!segPumpStreamProceedAfterMediaAndKeyArrival(v470, v471, v611, v22, v218, v601))
          {
            FigRetainProxyIsInvalidated();
          }

          goto LABEL_383;
        }

        segPumpGetMediaFilePrivateData(v22, v220, v221, v222, v223, v224, v225, v226);
        segPumpRTCReportingUpdateBandwidthStats(DerivedStorage);
        v228 = v577 / 0xF4240;
        FigReportingAgentStatsUpdateSampleValueWithBool(*(DerivedStorage + 9232));
        v236 = *(DerivedStorage + 9232);
        if (v236)
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v237 = OUTLINED_FUNCTION_198_0();
            v238(v237);
          }

          OUTLINED_FUNCTION_94_0();
        }

        else
        {
          v228 = 0;
        }

        segPumpGetMediaFilePrivateData(v22, v229, v230, v231, v232, v233, v234, v235);
        if (v228 && *(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v239 = OUTLINED_FUNCTION_373();
          v240(v239);
        }

        v241 = OUTLINED_FUNCTION_22_1();
        v249 = segPumpGetMediaFilePrivateData(v241, v242, v243, v244, v245, v246, v247, v248);
        if (v228)
        {
          v236 = v249[17];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v250 = OUTLINED_FUNCTION_27_1();
            v251(v250);
          }
        }

        v252 = OUTLINED_FUNCTION_22_1();
        v260 = segPumpGetMediaFilePrivateData(v252, v253, v254, v255, v256, v257, v258, v259);
        if (v228)
        {
          v236 = v260[18];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v261 = OUTLINED_FUNCTION_27_1();
            v262(v261);
          }
        }

        v263 = OUTLINED_FUNCTION_22_1();
        v271 = segPumpGetMediaFilePrivateData(v263, v264, v265, v266, v267, v268, v269, v270);
        if (v228)
        {
          v236 = v271[19];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v272 = OUTLINED_FUNCTION_27_1();
            v273(v272);
          }
        }

        v274 = OUTLINED_FUNCTION_22_1();
        v282 = segPumpGetMediaFilePrivateData(v274, v275, v276, v277, v278, v279, v280, v281);
        if (v228)
        {
          v236 = v282[21];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v283 = OUTLINED_FUNCTION_27_1();
            v284(v283);
          }
        }

        v285 = OUTLINED_FUNCTION_22_1();
        v293 = segPumpGetMediaFilePrivateData(v285, v286, v287, v288, v289, v290, v291, v292);
        if (v228)
        {
          v236 = v293[20];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v294 = OUTLINED_FUNCTION_27_1();
            v295(v294);
          }
        }

        v296 = OUTLINED_FUNCTION_22_1();
        v304 = segPumpGetMediaFilePrivateData(v296, v297, v298, v299, v300, v301, v302, v303);
        if (v228)
        {
          v236 = v304[22];
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v305 = OUTLINED_FUNCTION_27_1();
            v306(v305);
          }
        }

        OUTLINED_FUNCTION_94_0();
        if (v228)
        {
          v236 = *(v611 + 1128);
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v307 = OUTLINED_FUNCTION_373();
            v308(v307);
          }
        }

        v309 = OUTLINED_FUNCTION_22_1();
        FigMediaSegmentSpecifierGetTimeInSeconds(v309);
        if (v228 && *(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v310 = OUTLINED_FUNCTION_373();
          v311(v310);
        }

        OUTLINED_FUNCTION_94_0();
        v312 = v22;
        IsConnectedWithHighSpeedHighPower = segPumpGetMediaFilePrivateData(v22, v313, v314, v315, v316, v317, v318, v319);
        if (v228)
        {
          v236 = *(IsConnectedWithHighSpeedHighPower + 48);
          v320 = CMBaseObjectGetVTable();
          v321 = *(v320 + 16);
          IsConnectedWithHighSpeedHighPower = v320 + 16;
          if (*(v321 + 40))
          {
            v322 = OUTLINED_FUNCTION_61_1();
            IsConnectedWithHighSpeedHighPower = v323(v322);
          }
        }

        v324 = v227;
        v325 = *(DerivedStorage + 9252);
        if (*(v227 + 1113))
        {
          if (!v325)
          {
            goto LABEL_442;
          }
        }

        else if (v325 != 2)
        {
          goto LABEL_442;
        }

        IsConnectedWithHighSpeedHighPower = segPumpShouldIssueVerboseEvent(DerivedStorage, v611, v312);
        if (IsConnectedWithHighSpeedHighPower)
        {
          v628[0] = 0;
          OUTLINED_FUNCTION_146_1();
          if (v236)
          {
            v228 = *(v611 + 752);
            v512 = v312;
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              v513 = OUTLINED_FUNCTION_198_0();
              v514(v513);
            }

            OUTLINED_FUNCTION_94_0();
          }

          else
          {
            v228 = 0;
            v512 = v312;
          }

          v515 = segPumpGetMediaFilePrivateData(v512, v505, v506, v507, v508, v509, v510, v511);
          if (v228)
          {
            v236 = v515[184];
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v516 = OUTLINED_FUNCTION_61_1();
              v517(v516);
            }
          }

          OUTLINED_FUNCTION_94_0();
          v525 = segPumpGetMediaFilePrivateData(v512, v518, v519, v520, v521, v522, v523, v524);
          if (v228)
          {
            v236 = v525[24];
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v526 = OUTLINED_FUNCTION_61_1();
              v527(v526);
            }
          }

          FigSymptomsManagerTriggerScorecardsUpdate();
          v324 = v227;
          if (FigSymptomsManagerGetBandwidthPredictionFromLastUpdate(v628, 0))
          {
            goto LABEL_436;
          }

          OUTLINED_FUNCTION_146_1();
          if (v236)
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              v543 = OUTLINED_FUNCTION_198_0();
              v544(v543);
            }

LABEL_436:
            OUTLINED_FUNCTION_146_1();
            if (v236 && *(*(CMBaseObjectGetVTable() + 16) + 40))
            {
              OUTLINED_FUNCTION_165_1();
              v528 = OUTLINED_FUNCTION_198_0();
              v529(v528);
            }

            OUTLINED_FUNCTION_146_1();
            if (v236)
            {
              v530 = CMBaseObjectGetVTable();
              v531 = *(v530 + 16);
              IsConnectedWithHighSpeedHighPower = v530 + 16;
              if (*(v531 + 8))
              {
                OUTLINED_FUNCTION_198_0();
                OUTLINED_FUNCTION_305();
                IsConnectedWithHighSpeedHighPower = v532();
              }
            }
          }
        }

LABEL_442:
        v533 = *(v324 + 36);
        v22 = v312;
        if (!v533)
        {
          goto LABEL_380;
        }

        v534 = *(DerivedStorage + 8328);
        if (v534)
        {
          if (FigAlternateGetDeclaredPeakBitRate(*(v534 + 8)))
          {
            OUTLINED_FUNCTION_94_0();
            if (!v228)
            {
              goto LABEL_380;
            }

            v236 = IsConnectedWithHighSpeedHighPower;
            if (*(*(CMBaseObjectGetVTable() + 16) + 56))
            {
              v535 = OUTLINED_FUNCTION_373();
              v536(v535);
            }
          }
        }

        else
        {
          v236 = *(DerivedStorage + 9232);
          if (!v236)
          {
            goto LABEL_380;
          }

          if (*(*(CMBaseObjectGetVTable() + 16) + 64))
          {
            v537 = OUTLINED_FUNCTION_198_0();
            v538(v537);
          }
        }

        OUTLINED_FUNCTION_146_1();
        if (!v236)
        {
          goto LABEL_380;
        }

        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v539 = OUTLINED_FUNCTION_198_0();
          v540(v539);
        }

        OUTLINED_FUNCTION_146_1();
        v541 = CMBaseObjectGetVTable();
        v542 = *(v541 + 16);
        IsConnectedWithHighSpeedHighPower = v541 + 16;
        if (!*(v542 + 8))
        {
          goto LABEL_380;
        }

        goto LABEL_379;
      }

      if (*(v31 + 8600) == 1)
      {
        segPumpGetMediaFilePrivateData(v22, v220, v221, v222, v223, v224, v225, v226);
        segPumpRTCReportingUpdateBandwidthStats(v31);
      }

      v326 = *(v31 + 9232);
      memset(v628, 0, 88);
      v327 = *(v611 + 960);
      if (v327 < 1)
      {
        if (!v326)
        {
          goto LABEL_311;
        }
      }

      else
      {
        segPumpGetObservedNetworkStats(v31, v327, v628);
        if (!v326)
        {
          goto LABEL_311;
        }
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v328 = OUTLINED_FUNCTION_373();
        v329(v328);
      }

LABEL_311:
      OUTLINED_FUNCTION_146_1();
      if (v153)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v337 = OUTLINED_FUNCTION_198_0();
          v338(v337);
        }

        OUTLINED_FUNCTION_94_0();
      }

      else
      {
        v326 = 0;
      }

      segPumpGetMediaFilePrivateData(v22, v330, v331, v332, v333, v334, v335, v336);
      if (v326 && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v339 = OUTLINED_FUNCTION_373();
        v340(v339);
      }

      v341 = OUTLINED_FUNCTION_22_1();
      v349 = segPumpGetMediaFilePrivateData(v341, v342, v343, v344, v345, v346, v347, v348);
      if (v326)
      {
        v153 = v349[17];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v350 = OUTLINED_FUNCTION_27_1();
          v351(v350);
        }
      }

      v352 = OUTLINED_FUNCTION_22_1();
      v360 = segPumpGetMediaFilePrivateData(v352, v353, v354, v355, v356, v357, v358, v359);
      if (v326)
      {
        v153 = v360[18];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v361 = OUTLINED_FUNCTION_27_1();
          v362(v361);
        }
      }

      v363 = OUTLINED_FUNCTION_22_1();
      v371 = segPumpGetMediaFilePrivateData(v363, v364, v365, v366, v367, v368, v369, v370);
      if (v326)
      {
        v153 = v371[19];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v372 = OUTLINED_FUNCTION_27_1();
          v373(v372);
        }
      }

      v374 = OUTLINED_FUNCTION_22_1();
      v382 = segPumpGetMediaFilePrivateData(v374, v375, v376, v377, v378, v379, v380, v381);
      if (v326)
      {
        v153 = v382[21];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v383 = OUTLINED_FUNCTION_27_1();
          v384(v383);
        }
      }

      v385 = OUTLINED_FUNCTION_22_1();
      v393 = segPumpGetMediaFilePrivateData(v385, v386, v387, v388, v389, v390, v391, v392);
      if (v326)
      {
        v153 = v393[20];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v394 = OUTLINED_FUNCTION_27_1();
          v395(v394);
        }
      }

      v396 = OUTLINED_FUNCTION_22_1();
      v404 = segPumpGetMediaFilePrivateData(v396, v397, v398, v399, v400, v401, v402, v403);
      if (v326)
      {
        v153 = v404[22];
        if (*(*(CMBaseObjectGetVTable() + 16) + 40))
        {
          v405 = OUTLINED_FUNCTION_27_1();
          v406(v405);
        }
      }

      OUTLINED_FUNCTION_94_0();
      if (v326)
      {
        v153 = *(v611 + 1128);
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v407 = OUTLINED_FUNCTION_373();
          v408(v407);
        }
      }

      v409 = OUTLINED_FUNCTION_22_1();
      FigMediaSegmentSpecifierGetTimeInSeconds(v409);
      if (v326 && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v410 = OUTLINED_FUNCTION_373();
        v411(v410);
      }

      v412 = OUTLINED_FUNCTION_22_1();
      IsConnectedWithHighSpeedHighPower = segPumpGetMediaFilePrivateData(v412, v413, v414, v415, v416, v417, v418, v419);
      if (v326)
      {
        v153 = *(IsConnectedWithHighSpeedHighPower + 40);
        v420 = CMBaseObjectGetVTable();
        v421 = *(v420 + 16);
        IsConnectedWithHighSpeedHighPower = v420 + 16;
        if (*(v421 + 40))
        {
          v422 = OUTLINED_FUNCTION_61_1();
          IsConnectedWithHighSpeedHighPower = v423(v422);
        }
      }

      v424 = v227;
      v425 = *(DerivedStorage + 9252);
      if (*(v227 + 1113))
      {
        if (!v425)
        {
          goto LABEL_374;
        }
      }

      else if (v425 != 2)
      {
        goto LABEL_374;
      }

      IsConnectedWithHighSpeedHighPower = segPumpShouldIssueVerboseEvent(DerivedStorage, v611, v22);
      if (IsConnectedWithHighSpeedHighPower)
      {
        OUTLINED_FUNCTION_146_1();
        if (v153)
        {
          v445 = *(v611 + 752);
          if (*(*(CMBaseObjectGetVTable() + 16) + 40))
          {
            v446 = OUTLINED_FUNCTION_198_0();
            v447(v446);
          }

          OUTLINED_FUNCTION_94_0();
        }

        else
        {
          v445 = 0;
        }

        v448 = segPumpGetMediaFilePrivateData(v22, v438, v439, v440, v441, v442, v443, v444);
        if (v445)
        {
          v153 = v448[184];
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v449 = OUTLINED_FUNCTION_61_1();
            v450(v449);
          }
        }

        v451 = OUTLINED_FUNCTION_22_1();
        v459 = segPumpGetMediaFilePrivateData(v451, v452, v453, v454, v455, v456, v457, v458);
        if (v445)
        {
          v153 = v459[24];
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v460 = OUTLINED_FUNCTION_61_1();
            v461(v460);
          }
        }

        OUTLINED_FUNCTION_146_1();
        v424 = v227;
        if (v153)
        {
          v462 = CMBaseObjectGetVTable();
          v463 = *(v462 + 16);
          IsConnectedWithHighSpeedHighPower = v462 + 16;
          if (*(v463 + 8))
          {
            OUTLINED_FUNCTION_198_0();
            OUTLINED_FUNCTION_305();
            IsConnectedWithHighSpeedHighPower = v464();
          }
        }
      }

LABEL_374:
      if (!*(v424 + 36))
      {
        goto LABEL_380;
      }

      OUTLINED_FUNCTION_146_1();
      if (!v153)
      {
        goto LABEL_380;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v465 = OUTLINED_FUNCTION_198_0();
        v466(v465);
      }

      OUTLINED_FUNCTION_146_1();
      v467 = CMBaseObjectGetVTable();
      v468 = *(v467 + 16);
      IsConnectedWithHighSpeedHighPower = v467 + 16;
      if (!*(v468 + 8))
      {
        goto LABEL_380;
      }

LABEL_379:
      OUTLINED_FUNCTION_198_0();
      OUTLINED_FUNCTION_305();
      IsConnectedWithHighSpeedHighPower = v469();
      goto LABEL_380;
    }
  }

  if (!*(v98 + 31) && *v611 == *(v31 + 8600) && v22 && !*(v98 + 704))
  {
    if (FigMediaSegmentSpecifierGetBytesToRead(v22) < 1)
    {
      v217 = *(MediaFilePrivateData + 5);
      if (!v217)
      {
        goto LABEL_383;
      }
    }

    else
    {
      v217 = FigMediaSegmentSpecifierGetBytesToRead(v22);
      if (!v217)
      {
        goto LABEL_383;
      }
    }

    v435 = (UpTimeNanoseconds - v581) / 1000000.0;
    v436 = *(MediaFilePrivateData + 6);
    v437 = FigMediaSegmentSpecifierGetTimeInSeconds(v22);
    if (v435 >= 2000.0 && v435 - v437 * (v436 / v217) * 1000.0 >= 1000.0)
    {
      *(v98 + 31) = 1;
      segPumpAddMediaSegmentNoResponseErrorIfNecessary(v31, v611, *(v611 + 696));
    }
  }

LABEL_383:
  if (*(v31 + 337) && v38)
  {
    segPumpResumeRoundTripMonitoring(v31);
  }

LABEL_386:
  OUTLINED_FUNCTION_191();
}

void segPumpPerformReportingForMediaFileReadOverHTTP()
{
  OUTLINED_FUNCTION_381_1();
  if (*(v2 + 32))
  {
    v5 = v4;
    v6 = v3;
    v7 = v2;
    OUTLINED_FUNCTION_400();
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v8 = OUTLINED_FUNCTION_187_1();
      v9(v8);
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v10 = OUTLINED_FUNCTION_187_1();
      v11(v10);
    }

    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_127_1();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v12 = OUTLINED_FUNCTION_187_1();
      v13(v12);
    }

    FigCFDictionaryGetInt64IfPresent();
    FigCFDictionaryGetInt64IfPresent();
    if (v6)
    {
      v14 = *(v0 + 9252);
      if (*(v0 + 9305))
      {
        v15 = v14 != 0;
      }

      else
      {
        v15 = v14 == 2;
      }

      FigNetworkInterfaceReporterSamplePhysicalStatistics(*(v0 + 9312), *(v7 + 32), *(v0 + 9232), 0x1F0B64538, v15);
      segPumpRTCReportingUpdatePrivateAppleCDNInfo(v0, *(v7 + 32), v16, v17, v18, v19, v20, v21, v42, v43, v44, v45, v46, v47, 0, v49, v51, cf, v53, v54, v55, v56, v57, v58, v59[0], v59[1]);
      FigReportingAgentUpdateFinalTransactionMetrics(*(v0 + 9232), *(v7 + 32), 0, 0);
      v59[0] = 0;
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        OUTLINED_FUNCTION_279_1();
        OUTLINED_FUNCTION_26_1();
        v22();
      }

      if (*(v0 + 9232))
      {
        v23 = CFURLCopyHostName(*(v7 + 16));
        if (v23)
        {
          v24 = v23;
          if (*(v0 + 9264) && *(*(CMBaseObjectGetVTable() + 16) + 48))
          {
            v25 = OUTLINED_FUNCTION_489();
            v26(v25);
          }

          CFRelease(v24);
        }
      }

      v58 = 0;
      v59[0] = 0;
      if (v53)
      {
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCFDictionaryGetDoubleIfPresent();
        FigCreateErrorForOSStatus(v5, v59);
        if (!v27)
        {
          v28 = (*(v0 + 16 * *(v0 + 8600) + 392) + 680);
          while (1)
          {
            v28 = *v28;
            if (!v28)
            {
              break;
            }

            v29 = v28[22];
            if (v29)
            {
              goto LABEL_34;
            }
          }

          v29 = 0;
LABEL_34:
          v30 = FigCFHTTPCreateAddressString(v29);
          v31 = *(v7 + 8);
          if (v31)
          {
            TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v31);
          }

          else
          {
            TimeInSeconds = 0.0;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          v34 = *(v7 + 16);
          v35 = v1[2];
          v36 = v59[0];
          if (*v1 > 2uLL)
          {
            v37 = 0;
          }

          else
          {
            v37 = dword_196E7291C[*v1];
          }

          v38 = *(v7 + 8);
          if (v38)
          {
            v39 = FigMediaSegmentSpecifierGetType(v38) == 1;
          }

          else
          {
            v39 = 0;
          }

          v40 = FigMetricHLSMediaSegmentRequestEventCreate(AllocatorForMedia, v34, v35, v30, v50, v48, 0, v36, 0.0, 0.0, 0.0, 0.0, TimeInSeconds, v51, v37, v39, &v58);
          v41 = v58;
          if (!v40)
          {
            segPumpPublishMetricEvent(v0, v58);
            v41 = v58;
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (v30)
          {
            CFRelease(v30);
          }
        }
      }

      if (v59[0])
      {
        CFRelease(v59[0]);
      }

      segPumpSetWiFiStatsOnNetworkPredictor(v0, v7 + 16);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v51)
  {
    CFRelease(v51);
  }
}

uint64_t segPumpSetCurrentSegmentTooSlow(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 873))
  {
    ++*(result + 8680);
    v3 = *(result + 9232);
    if (v3)
    {
      VTable = CMBaseObjectGetVTable();
      v5 = *(VTable + 16);
      result = VTable + 16;
      v6 = *(v5 + 32);
      if (v6)
      {
        result = v6(v3, 0x1F0B64538, 0x1F0B42378, 1);
      }
    }
  }

  *(a2 + 873) = 257;
  return result;
}

uint64_t segPumpAppendBytesToMediaConnectionBuffer()
{
  OUTLINED_FUNCTION_207();
  if (*(v1 + 272) || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_296(), result = CMBlockBufferCreateEmpty(v2, v3, v4, v5), !result))
  {
    if (v0)
    {
      OUTLINED_FUNCTION_606();

      return CMBlockBufferAppendBufferReference(v7, v8, v9, v10, v11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MediaKeyStreamHandleDownloadTimer(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v3)
  {
    segPumpCheckAndTryToAdoptStepAhead();
  }

  segPumpUnlockAndSendAllPendingNotifications(a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

void segPumpRTCReportingUpdateBandwidthStats(uint64_t a1)
{
  OUTLINED_FUNCTION_112_0();
  v3 = *(v2 + 960);
  if (v3 >= 1)
  {
    segPumpGetObservedNetworkStats(a1, v3, v13);
  }

  if (*(a1 + 9232))
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v4 = OUTLINED_FUNCTION_293();
      v5(v4);
    }

    if (*(a1 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v6 = OUTLINED_FUNCTION_293();
        v7(v6);
      }

      if (!*(a1 + 9232))
      {
        v10 = 0;
        goto LABEL_13;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v8 = OUTLINED_FUNCTION_293();
        v9(v8);
      }
    }
  }

  v10 = *(a1 + 9232);
LABEL_13:
  FigGlobalNetworkBandwidthTrackerGetAggregateBandwidth();
  if (v10 && *(*(CMBaseObjectGetVTable() + 16) + 40))
  {
    v11 = OUTLINED_FUNCTION_171();
    v12(v11);
  }

  segPumpRTCReportingSetCurrentAlternateIndexAndBitRate(a1);
}

void segPumpCustomURLLoaderGetURLGuts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_845();
  if (!v26)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A28, 4294954656, "<SEGPUMP>", 30066, v25);
    goto LABEL_32;
  }

  v27 = v23;
  if (!v23[10])
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16A28, 4294954651, "<SEGPUMP>", 30067, v25);
    goto LABEL_32;
  }

  v28 = v24;
  FigGetAllocatorForMedia();
  if (!FigCustomURLRequestInfoCreateMutable() && !FigCustomURLRequestInfoSetCryptor() && !FigCustomURLRequestInfoSetIsRenewalRequest() && !FigCustomURLRequestInfoSetIsPingRequest() && !FigCustomURLRequestInfoSetCryptorKeyRequestID() && !FigCustomURLRequestInfoSetHTTPHeaders() && !FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers() && !FigCustomURLRequestInfoSetIsSecureStopSupported() && !FigCustomURLRequestInfoSetNetworkHistory() && !FigCustomURLRequestInfoSetExpectedToBlock())
  {
    if (!v28 || !v27[1098] || (segPumpGetCurrentRTT(v27), OUTLINED_FUNCTION_399(), !FigCustomURLRequestInfoSetDefaultLatency()))
    {
      v29 = FigCFHTTPCreateUserAgent();
      if (FigCustomURLRequestInfoSetUserAgent() || a21 && FigCustomURLRequestInfoSetAcceptEncoding() || (a22 <= 0 ? (v30 = a23 < 1) : (v30 = 0), !v30 && FigCustomURLRequestInfoSetByteRange()))
      {
LABEL_28:
        if (!v29)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (!v27[19])
      {
        v31 = v27[8];
        v27[19] = v31;
        dispatch_retain(v31);
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 24))
      {
        v32 = OUTLINED_FUNCTION_284();
        v33(v32);
        goto LABEL_28;
      }

      if (v29)
      {
LABEL_31:
        CFRelease(v29);
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_843();
}

void segPumpCustomURLLoaderDataCallback()
{
  OUTLINED_FUNCTION_193();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v400[16] = *MEMORY[0x1E69E9840];
  v388 = 0;
  v389 = 0;
  v386 = 0;
  v387 = 0;
  v384 = 0;
  v385 = 0;
  v382 = 0;
  v383 = 0;
  v380 = 0;
  cf = 0;
  segPumpLockAndCopyPumpFromRetainProxy();
  if (v15)
  {
    goto LABEL_257;
  }

  CFDataWithBlockBuffer = FigCustomURLResponseInfoCopyRequestInfo();
  if (CFDataWithBlockBuffer)
  {
    goto LABEL_236;
  }

  FigGetAllocatorForMedia();
  if (v8)
  {
    OUTLINED_FUNCTION_496();
    CFDataWithBlockBuffer = FigCreateCFDataWithBlockBuffer();
    if (CFDataWithBlockBuffer)
    {
      goto LABEL_236;
    }

    v17 = v386;
  }

  else
  {
    OUTLINED_FUNCTION_613();
    v17 = CFDataCreate(v18, v19, v20);
    v386 = v17;
  }

  Length = CFDataGetLength(v17);
  if ((v6 & 1) == 0 && !Length)
  {
LABEL_257:
    v24 = 0;
    goto LABEL_166;
  }

  CFDataWithBlockBuffer = FigCustomURLRequestInfoCopyURL();
  if (CFDataWithBlockBuffer)
  {
    goto LABEL_236;
  }

  if (FigCustomURLResponseInfoCopyUniversalTypeIdentifier())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v52)
    {
      goto LABEL_237;
    }
  }

  if (FigCustomURLResponseInfoCopyContentRenewalDate())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v52)
    {
      goto LABEL_237;
    }
  }

  if (FigCustomURLResponseInfoCopyHTTPHeaders())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v52)
    {
      goto LABEL_237;
    }
  }

  if (FigCustomURLResponseInfoGetHTTPStatusCode())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v52)
    {
      goto LABEL_237;
    }
  }

  if (FigCustomURLResponseInfoGetContentLength())
  {
    OUTLINED_FUNCTION_125_1();
    if (!v52)
    {
      goto LABEL_237;
    }
  }

  FigCustomURLResponseInfoGetRoundTripTime();
  v23 = v22;
  CFDataWithBlockBuffer = FigCustomURLResponseInfoCopyFinalURL();
  if (CFDataWithBlockBuffer)
  {
LABEL_236:
    v0 = CFDataWithBlockBuffer;
LABEL_237:
    v24 = 0;
    goto LABEL_238;
  }

  v24 = FigCFHTTPCreateURLString(v385);
  if (!v24)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, v341, v343);
    v0 = v277;
    if (!v277)
    {
      goto LABEL_166;
    }

LABEL_238:
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v14, v0);
    goto LABEL_166;
  }

  if (!v4)
  {
    v25 = FigCFHTTPCreateCFErrorFromHTTPStatusCode(0, &v380);
    if (v25)
    {
      v0 = v25;
      goto LABEL_238;
    }

    v4 = v380;
  }

  v26 = v389;
  v27 = v386;
  v358 = v383;
  v360 = v384;
  v354 = v382;
  v378 = cf;
  v366 = 0;
  v371 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  theBuffer = 0;
  v350 = @"CoreMediaErrorDomain";
  if (v4)
  {
    Domain = CFErrorGetDomain(v4);
    Code = CFErrorGetCode(v4);
    v377 = CFErrorCopyDescription(v4);
  }

  else
  {
    v377 = 0;
    Code = 0;
    Domain = @"CoreMediaErrorDomain";
  }

  v375 = v24;
  v376 = v14;
  v368 = v26;
  HIDWORD(v373) = v6;
  theDict = v2;
  v348 = v10;
  if (v27 && CFDataGetLength(v27) >= 1)
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_496();
    BlockBufferWithCFDataNoCopy = FigCreateBlockBufferWithCFDataNoCopy();
    if (BlockBufferWithCFDataNoCopy)
    {
      v0 = BlockBufferWithCFDataNoCopy;
      v12 = 0;
      v105 = 0;
      v33 = v377;
      goto LABEL_157;
    }

    DataLength = CMBlockBufferGetDataLength(theBuffer);
  }

  else
  {
    DataLength = 0;
  }

  HIDWORD(v362) = v4 != 0;
  v374 = FigCFHTTPCopyRedirectLocationFromHTTPHeaders(v378);
  v31 = 0;
  v32 = DerivedStorage;
  v33 = DerivedStorage + 392;
  key = *MEMORY[0x1E6962B28];
  v346 = *MEMORY[0x1E69610E0];
  v34 = 1;
LABEL_39:
  v35 = 0;
  LODWORD(v373) = v34;
  while (1)
  {
    v36 = (v33 + 16 * v35);
    if (v31)
    {
      ++v36;
    }

    v37 = *v36;
    v400[0] = 0;
    v395[0] = 0;
    if (*(v37 + 56))
    {
      break;
    }

LABEL_57:
    for (i = 0; i != 3; ++i)
    {
      v48 = *(v33 + 16 * i);
      v49 = (v48 + 680);
      while (1)
      {
        v49 = *v49;
        if (!v49)
        {
          break;
        }

        if (v49[13] == v12)
        {
          goto LABEL_68;
        }
      }

      v48 = *(v33 + 16 * i + 8);
      v49 = (v48 + 680);
      while (1)
      {
        v49 = *v49;
        if (!v49)
        {
          break;
        }

        if (v49[13] == v12)
        {
          goto LABEL_68;
        }
      }
    }

    v49 = 0;
    v48 = 0;
LABEL_68:
    if (v37 == v48)
    {
      v74 = v49[1];
      v76 = dword_1EAF16A30 <= 2 && *(v32 + 335) != 0 || dword_1EAF16A30 == 0;
      v24 = v375;
      if (!v76)
      {
        OUTLINED_FUNCTION_334_0();
        v84 = OUTLINED_FUNCTION_217_0(qword_1EAF16A28, v77, v78, v79, v80, v81, v82, v83, v339, v341, v343, v346, v348, @"CoreMediaErrorDomain", key, v354, Domain, v358, v360, v362, theDict, 0, v26, DataLength, 0, Code, v373, v374, v375, v14, v377, v378, 0, 0, v380, cf, v382, v383, v384, v385, v386, v387, v388, v389, theBuffer, v391, type[0], v393, v394);
        v85 = type[0];
        v86 = os_log_type_enabled(v84, type[0]);
        if (OUTLINED_FUNCTION_28_1(v86))
        {
          OUTLINED_FUNCTION_76_1();
          OUTLINED_FUNCTION_333_0();
          OUTLINED_FUNCTION_332_1();
          OUTLINED_FUNCTION_8_0(v149);
          OUTLINED_FUNCTION_56_0();
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl(v150, v151, v152, v153, v154, v84, v85, v155);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v156, v157, v158, v159, v160);
      }

      v12 = v374;
      if (FigCFHTTPIsStatusCodeRedirect(v371) && !*(v32 + 335) && v374)
      {
        v184 = *(v37 + 792);
        v185 = CMBaseObjectGetDerivedStorage();
        segPumpCustomURLLoaderCancelRequest(v185);
        v49[13] = 0;
        v33 = v377;
        if (v74)
        {
          OUTLINED_FUNCTION_182_1();
          segPumpReadMediaFileURL();
          if (appended)
          {
            goto LABEL_154;
          }
        }

        if (v49 == v184)
        {
          v186 = OUTLINED_FUNCTION_770();
          segPumpSetMediaConnectionIsDormant(v186, v187, 1);
        }

        goto LABEL_192;
      }

      v33 = v377;
      if (!*(v32 + 335) && (!v74 || FigMediaSegmentSpecifierGetType(v74) != 1))
      {
        OUTLINED_FUNCTION_175_0();
        v188 = OUTLINED_FUNCTION_617();
        OUTLINED_FUNCTION_214_1(v188, v189, v190, -12881, Domain, v191, v192, v193, v339);
        segPumpResetConnection(v32, (v49 + 2));
        v194 = *(v37 + 24);
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v74, v195, v196, v197, v198, v199, v200, v201);
        v203 = OUTLINED_FUNCTION_171();
        segPumpEnsureMediaSegmentURLs(v203, v204, v194, v205, v206, v207, v208, v209);
        v210 = MediaFilePrivateData[2];
        if (v210)
        {
          v210 = CFRetain(v210);
        }

        v14 = v376;
        v105 = 0;
        v49[2] = v210;
        v0 = 4294954415;
        goto LABEL_157;
      }

      *(v32 + 8648) = 0;
      segPumpUpdateNetworkCostHasHighSpeedHighPower(v32);
      if (v49[16] || (FigGetAllocatorForMedia(), OUTLINED_FUNCTION_296(), appended = CMBlockBufferCreateEmpty(v161, v162, v163, v49 + 16), !appended))
      {
        if (!theBuffer || !DataLength || (OUTLINED_FUNCTION_39_1(), appended = CMBlockBufferAppendBufferReference(v164, v165, v166, v167, v168), !appended))
        {
          if ((v373 & 0x100000000) != 0)
          {
            FigReportingAgentUpdateFinalReportFromCustomURLResponse(*(v32 + 9232), theDict, SHIDWORD(v362));
          }

          OUTLINED_FUNCTION_182_1();
          segPumpHandleMediaFileData();
        }
      }

LABEL_154:
      v0 = appended;
      goto LABEL_155;
    }

    if (*(v37 + 496) == v12)
    {
      OUTLINED_FUNCTION_331_1();
      if (!v87)
      {
        v0 = 0;
        v105 = 0;
        v24 = v375;
        goto LABEL_157;
      }

      v88 = FigCFHTTPIsStatusCodeRedirect(0);
      v24 = v375;
      if (v88)
      {
        if (v12)
        {
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_334_0();
            v102 = OUTLINED_FUNCTION_217_0(qword_1EAF16A28, v95, v96, v97, v98, v99, v100, v101, v339, v341, v343, v346, v348, @"CoreMediaErrorDomain", key, v354, Domain, v358, v360, v362, theDict, 0, v26, DataLength, 0, Code, v373, v374, v375, v14, v377, v378, 0, 0, v380, cf, v382, v383, v384, v385, v386, v387, v388, v389, theBuffer, v391, type[0], v393, v394);
            v103 = type[0];
            v104 = os_log_type_enabled(v102, type[0]);
            if (OUTLINED_FUNCTION_124_0(v104))
            {
              if (v32)
              {
                OUTLINED_FUNCTION_409_0();
              }

              OUTLINED_FUNCTION_332_1();
              OUTLINED_FUNCTION_8_0(v169);
              v397 = 1024;
              v398 = 0;
              v399 = v170;
              *(v171 + 50) = v12;
              OUTLINED_FUNCTION_66_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl(v172, v173, v174, v175, v176, v177, v103, v178);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_345_0(v179, v180, v181, v182, v183);
          }

          segPumpStreamUpdateIndexFileURLWithResponse(v32, v37, v12);
          appended = segPumpSendIndexFileRequest(v32, v37, 1);
          goto LABEL_154;
        }

        goto LABEL_309;
      }

      if (!*(v37 + 456))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v107 = UpTimeNanoseconds - *(v37 + 432);
        *(v37 + 456) = UpTimeNanoseconds;
        *(v37 + 464) = v107;
        *(v32 + 8644) = 0;
        segPumpUpdateNetworkCostHasHighSpeedHighPower(v32);
      }

      if (!Code)
      {
        v108 = OUTLINED_FUNCTION_617();
        segPumpStreamUpdateIndexFileURLWithResponse(v108, v109, v360);
        if (theBuffer)
        {
          if (!*(v37 + 520))
          {
            FigGetAllocatorForMedia();
            OUTLINED_FUNCTION_296();
            CMBlockBufferCreateEmpty(v110, v111, v112, (v37 + 520));
          }

          if (DataLength)
          {
            OUTLINED_FUNCTION_39_1();
            appended = CMBlockBufferAppendBufferReference(v113, v114, v115, v116, v117);
            if (appended)
            {
              goto LABEL_154;
            }
          }

          v119 = OUTLINED_FUNCTION_617();
          v121 = segPumpVerifyM3UPlaylist(v119, v120);
          if (v121)
          {
            v0 = v121;
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_334_0();
              v320 = OUTLINED_FUNCTION_217_0(qword_1EAF16A28, v313, v314, v315, v316, v317, v318, v319, v339, v341, v343, v346, v348, @"CoreMediaErrorDomain", key, v354, Domain, v358, v360, v362, theDict, 0, v26, DataLength, 0, Code, v373, v374, v375, v14, v377, v378, 0, 0, v380, cf, v382, v383, v384, v385, v386, v387, v388, v389, theBuffer, v391, type[0], v393, v394);
              v321 = type[0];
              v322 = os_log_type_enabled(v320, type[0]);
              if (OUTLINED_FUNCTION_124_0(v322))
              {
                v323 = &stru_1F0B1AFB8;
                if (v32)
                {
                  OUTLINED_FUNCTION_409_0();
                  if (!v52)
                  {
                    v323 = v324;
                  }
                }

                LODWORD(v395[0]) = 136315650;
                OUTLINED_FUNCTION_229_1(v323);
                OUTLINED_FUNCTION_66_0();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl(v325, v326, v327, v328, v329, v330, v321, v331);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_345_0(v332, v333, v334, v335, v336);
            }

            goto LABEL_203;
          }
        }

        if ((v373 & 0x100000000) != 0)
        {
          if (*(v37 + 520))
          {
            v105 = FigCFHTTPCreateHTTPMessageFromHTTPResponseHeaders(v378);
            *(v37 + 859) = 0;
            *(v37 + 448) = FigGetUpTimeNanoseconds();
            *(v37 + 472) = 0;
            v122 = *(v37 + 480);
            if (v122)
            {
              CFRelease(v122);
              *(v37 + 480) = 0;
            }

            *(v37 + 858) = 1;
            *(v37 + 867) = 0;
            FigHTTPStopAndReleaseTimer((v37 + 504));
            segPumpCheckAndUpdateLowLatencyServerCompliance();
            OUTLINED_FUNCTION_186();
            segPumpParseIndexFile();
            v0 = v123;
            goto LABEL_156;
          }

LABEL_309:
          OUTLINED_FUNCTION_43_1();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          goto LABEL_154;
        }

LABEL_192:
        v0 = 0;
        goto LABEL_155;
      }

      *(v37 + 859) = 0;
      OUTLINED_FUNCTION_206_1(v88, v89, v90, Code, v91, v92, v93, v94, v339, v341, v343, v346, v348, @"CoreMediaErrorDomain", key, v354, Domain, v358, v360, v362, theDict, 0, v26);
      segPumpHandleIndexFileNetworkError();
      goto LABEL_154;
    }

    if (*(v32 + 8808) == v12)
    {
      segPumpPongCallback(*v32, v23, v30, Code);
      v0 = 0;
      v105 = 0;
      *(v32 + 8808) = 0;
      v24 = v375;
      goto LABEL_204;
    }

    if (++v35 == 3)
    {
      v34 = 0;
      v31 = 1;
      if ((v373 & 1) == 0)
      {
        v54 = v32;
        CryptKeyCommonDataForRequestID = segPumpFindCryptKeyCommonDataForRequestID(v32, v12);
        v24 = v375;
        if (CryptKeyCommonDataForRequestID)
        {
          v56 = CryptKeyCommonDataForRequestID;
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_334_0();
            v64 = OUTLINED_FUNCTION_217_0(qword_1EAF16A28, v57, v58, v59, v60, v61, v62, v63, v339, v341, v343, v346, v348, @"CoreMediaErrorDomain", key, v354, Domain, v358, v360, v362, theDict, 0, v26, DataLength, 0, Code, v373, v374, v375, v14, v377, v378, 0, 0, v380, cf, v382, v383, v384, v385, v386, v387, v388, v389, theBuffer, v391, type[0], v393, v394);
            v65 = type[0];
            v379 = v64;
            v66 = os_log_type_enabled(v64, type[0]);
            if (OUTLINED_FUNCTION_124_0(v66))
            {
              OUTLINED_FUNCTION_76_1();
              OUTLINED_FUNCTION_333_0();
              OUTLINED_FUNCTION_332_1();
              OUTLINED_FUNCTION_8_0(v67);
              OUTLINED_FUNCTION_56_0();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v379, v65, v73);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_345_0(v253, v254, v255, v256, v257);
          }

          *(v56 + 153) = 0;
          CryptKeyReleaseAndClearVideoDecryptor(v56);
          CryptKeyReleaseAndClearAudioDecryptor(v56);
        }

        if (segPumpFindSessionDataEntryForRequestID(*v33, v12))
        {
          LOBYTE(v400[0]) = 0;
          OUTLINED_FUNCTION_331_1();
          if (v258)
          {
            if (Code)
            {
              segPumpHandleSessionDataNetworkError();
              if (!Empty)
              {
                goto LABEL_253;
              }

              goto LABEL_317;
            }

            if (theBuffer && !CMBlockBufferIsEmpty(theBuffer))
            {
              if (!*(v32 + 8088))
              {
                FigGetAllocatorForMedia();
                OUTLINED_FUNCTION_296();
                Empty = CMBlockBufferCreateEmpty(v259, v260, v261, v262);
                if (Empty)
                {
                  goto LABEL_317;
                }
              }

              OUTLINED_FUNCTION_333();
              Empty = CMBlockBufferAppendBufferReference(v264, v265, v266, v267, v268);
              if (Empty)
              {
                goto LABEL_317;
              }
            }

            if ((v373 & 0x100000000) == 0)
            {
              v269 = 0;
              v14 = v376;
              goto LABEL_255;
            }

            if (*(v32 + 8088))
            {
              OUTLINED_FUNCTION_617();
              segPumpParseSessionDataFromConnection();
LABEL_253:
              v269 = 0;
              v14 = v376;
              if ((v373 & 0x100000000) == 0 || LOBYTE(v400[0]))
              {
                goto LABEL_255;
              }

              *(segPumpEnsureAndGetSessionDataPrivateData(*(v32 + 8112), v270, v271, v272, v273, v274, v275, v276) + 16) = 1;
              *(v32 + 8040) = 0;
              v305 = *(v32 + 8048);
              if (v305)
              {
                CFRelease(v305);
                *(v32 + 8048) = 0;
              }

              Empty = segPumpSendNextSessionDataRequest(v32, *(v32 + 392), v400);
              if (!Empty)
              {
                if (LOBYTE(v400[0]))
                {
                  v269 = 0;
                  goto LABEL_255;
                }

                segPumpResetConnection(v32, v32 + 7976);
                if (*(v32 + 9824) >= 1)
                {
                  if (FigGetUpTimeNanoseconds() - *(v32 + 9824) < 1)
                  {
                    v269 = 1;
                    OUTLINED_FUNCTION_331_1();
                    v54 = v32;
                    goto LABEL_255;
                  }

                  v54 = v32;
                  FigReportingAgentStatsSetIntValueWithOptions_0(*(v32 + 9232));
                }

                v269 = 1;
                OUTLINED_FUNCTION_331_1();
LABEL_255:
                v0 = 0;
                if (v269)
                {
LABEL_256:
                  dispatch_group_leave(*(v54 + 7960));
                }

LABEL_298:
                v105 = 0;
                goto LABEL_157;
              }

LABEL_317:
              v0 = Empty;
              v337 = 1;
LABEL_318:
              v14 = v376;
              v33 = v377;
              v12 = v374;
              v54 = v32;
              if (v337)
              {
                goto LABEL_256;
              }

              goto LABEL_298;
            }

            v337 = 1;
          }

          else
          {
            v337 = 0;
          }

          OUTLINED_FUNCTION_43_1();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v339, v341, v343);
          v0 = v338;
          goto LABEL_318;
        }

LABEL_202:
        v0 = 0;
LABEL_203:
        v105 = 0;
        v14 = v376;
LABEL_204:
        v33 = v377;
LABEL_205:
        v12 = v374;
        goto LABEL_157;
      }

      goto LABEL_39;
    }
  }

  v38 = 0;
  do
  {
    ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(*(v37 + 56));
    if (ContentKeySpecifiers)
    {
      ContentKeySpecifiers = CFArrayGetCount(ContentKeySpecifiers);
    }

    if (v38 >= ContentKeySpecifiers)
    {
      goto LABEL_57;
    }

    v40 = FigMediaPlaylistGetContentKeySpecifiers(*(v37 + 56));
    ValueAtIndex = CFArrayGetValueAtIndex(v40, v38);
    if (segPumpGetCryptKeyCommonData(ValueAtIndex, v400, v395))
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_289_1();
    if (v52)
    {
      break;
    }

    if (*(v42 + 128) == v12)
    {
      break;
    }

    ++v38;
  }

  while (*(v400[0] + 6) != v12);
  if (!ValueAtIndex)
  {
    goto LABEL_57;
  }

  if (*(v32 + 8600) != 1 || !*(v42 + 155))
  {
    goto LABEL_131;
  }

  v43 = *(v32 + 408);
  v44 = *(v43 + 248);
  if (v44)
  {
    if (segPumpGetCryptKeyCommonData(v44, v400, v395))
    {
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_289_1();
    if (v52 || *(v50 + 128) == v12)
    {
      if (v43 == v37)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v52 = v43 != v37 && *(v400[0] + 6) == v12;
      if (!v52)
      {
        goto LABEL_55;
      }
    }

    ValueAtIndex = 0;
  }

LABEL_55:
  v45 = *(v32 + 416);
  v46 = *(v45 + 248);
  if (!v46 || segPumpGetCryptKeyCommonData(v46, v400, v395))
  {
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_289_1();
  if (!v52 && *(v51 + 128) != v12)
  {
    if (v45 == v37 || *(v400[0] + 6) != v12)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (v45 != v37)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (!ValueAtIndex)
  {
    goto LABEL_57;
  }

LABEL_131:
  v124 = FigCFEqual();
  LODWORD(v378) = v124;
  v24 = v375;
  v344 = v32;
  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_334_0();
    v138 = OUTLINED_FUNCTION_217_0(qword_1EAF16A28, v131, v132, v133, v134, v135, v136, v137, v339, v341, v32, v346, v348, @"CoreMediaErrorDomain", key, v354, Domain, v358, v360, v362, theDict, 0, v26, DataLength, 0, Code, v373, v374, v375, v14, v377, v378, 0, 0, v380, cf, v382, v383, v384, v385, v386, v387, v388, v389, theBuffer, v391, type[0], v393, v394);
    v33 = v394;
    v139 = type[0];
    v140 = os_log_type_enabled(v138, type[0]);
    if (OUTLINED_FUNCTION_16_1(v140))
    {
      OUTLINED_FUNCTION_332_1();
      OUTLINED_FUNCTION_8_0(v141);
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v142, v143, v144, v145, v146, v147, v139, v148);
      v33 = v394;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v211, v212, v213, v214, v215);
  }

  if (!*(v37 + 592))
  {
    v124 = FigGetUpTimeNanoseconds();
    *(v37 + 592) = v124;
    *(v37 + 600) = v124 - *(v37 + 568);
  }

  v216 = Code;
  if (Code)
  {
    if (Code != -17296 || (v124 = FigCFEqual(), v216 = Code, !v124))
    {
      v224 = OUTLINED_FUNCTION_206_1(v124, v125, v126, v216, v127, v128, v129, v130, v339, v341, v344, v346, v348, v350, key, v354, Domain, v358, v360, v362, theDict, v366, v368);
      v33 = v377;
      v0 = segPumpHandleCryptKeyNetworkError(v224, v225, ValueAtIndex, v226, v357, v377, v227, v228, v340, v342, v345, v347, v349, v351, keya, v355, v357, v359, v361, v363, theDicta, v367, v369, DataLength, v371, Code);
      v105 = 0;
      v14 = v376;
      goto LABEL_205;
    }

    v394 = 0;
    HIBYTE(v393) = 0;
    CryptKeyCommonData = segPumpGetCryptKeyCommonData(ValueAtIndex, 0, &v394);
    if (!CryptKeyCommonData)
    {
      FigHTTPStopAndReleaseTimer((v37 + 640));
      if (dword_1EAF16A30)
      {
        *type = 0;
        HIBYTE(v391) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v33 = HIBYTE(v391);
        v244 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v391));
        if (OUTLINED_FUNCTION_77_0(v244))
        {
          OUTLINED_FUNCTION_332_1();
          OUTLINED_FUNCTION_8_0(v245);
          OUTLINED_FUNCTION_66_0();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v246, v247, v248, v249, v250, v251, v33, v252);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420(v278, v279, v280, v281, v282);
      }

      if (*(v394 + 88) == v12)
      {
        v283 = 96;
        v284 = 72;
      }

      else
      {
        if (*(v394 + 128) != v12)
        {
          if (dword_1EAF16A30)
          {
            *type = 0;
            HIBYTE(v391) = 0;
            v292 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v293 = HIBYTE(v391);
            v294 = os_log_type_enabled(v292, HIBYTE(v391));
            if (OUTLINED_FUNCTION_77_0(v294))
            {
              OUTLINED_FUNCTION_325_0();
              if (v52)
              {
                v295 = &stru_1F0B1AFB8;
              }

              LODWORD(v395[0]) = 136315906;
              OUTLINED_FUNCTION_229_1(v295);
              v396 = v296;
              *(v297 + 34) = v12;
              OUTLINED_FUNCTION_66_0();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl(v298, v299, v300, v301, v302, v303, v293, v304);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_420(v308, v309, v310, v311, v312);
          }

          v0 = 4294951673;
          goto LABEL_297;
        }

        v283 = 136;
        v284 = 112;
      }

      if (!*(v394 + v283))
      {
        goto LABEL_274;
      }

      v285 = *(v394 + v284);
      v286 = *(CMBaseObjectGetVTable() + 16);
      if (*v286 < 6uLL || !v286[20])
      {
        v0 = 4294954514;
LABEL_297:
        v14 = v376;
        v33 = v377;
        v12 = v374;
        goto LABEL_298;
      }

      OUTLINED_FUNCTION_284_1();
      CryptKeyCommonData = v287();
      if (!CryptKeyCommonData)
      {
        if (HIBYTE(v393))
        {
          v400[0] = 0;
          FigCreateErrorForOSStatus(-16229, v400);
          v288 = v400[0];
          v289 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v289)
          {
            v289(v285, v346, v288);
          }

          if (v400[0])
          {
            CFRelease(v400[0]);
          }
        }

LABEL_274:
        if (*(v394 + 88) == v12)
        {
          CryptKeyReleaseAndClearVideoDecryptor(v394);
          v290 = v394;
          *(v394 + 88) = 0;
          *(v290 + 96) = 0;
          v291 = (v290 + 104);
        }

        else
        {
          if (*(v394 + 128) != v12)
          {
LABEL_293:
            OUTLINED_FUNCTION_331_1();
            *(v307 + 152) = 0;
            appended = segPumpSendCryptKeyRequest(v368, v344, v37, *(v37 + 248));
            goto LABEL_154;
          }

          CryptKeyReleaseAndClearAudioDecryptor(v394);
          v306 = v394;
          *(v394 + 128) = 0;
          *(v306 + 136) = 0;
          v291 = (v306 + 144);
        }

        *v291 = 0;
        goto LABEL_293;
      }
    }

    v0 = CryptKeyCommonData;
    goto LABEL_297;
  }

  if (!theBuffer)
  {
    goto LABEL_201;
  }

  v400[0] = 0;
  v218 = segPumpGetCryptKeyCommonData(ValueAtIndex, 0, v400);
  if (v218)
  {
    goto LABEL_310;
  }

  if (!*(v37 + 656) || !*(v400[0] + 20))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_296();
    v218 = CMBlockBufferCreateEmpty(v233, v234, v235, (v37 + 656));
    if (v218)
    {
      goto LABEL_310;
    }
  }

  if (DataLength)
  {
    OUTLINED_FUNCTION_39_1();
    v218 = CMBlockBufferAppendBufferReference(v236, v237, v238, v239, v240);
    if (v218)
    {
      goto LABEL_310;
    }
  }

  v241 = CMBlockBufferGetDataLength(theBuffer);
  *(v400[0] + 20) += v241;
LABEL_201:
  if ((v373 & 0x100000000) == 0)
  {
    goto LABEL_202;
  }

  v400[0] = 0;
  *(v37 + 584) = FigGetUpTimeNanoseconds();
  *(v37 + 608) = 0;
  v217 = *(v37 + 616);
  if (v217)
  {
    CFRelease(v217);
    *(v37 + 616) = 0;
  }

  if (*(v37 + 656))
  {
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_496();
    v218 = FigCreateCFDataWithBlockBuffer();
    if (v218)
    {
LABEL_310:
      v0 = v218;
      goto LABEL_203;
    }
  }

  if (v400[0])
  {
    if (v354)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, key, v354);
      OUTLINED_FUNCTION_315_1();
      segPumpCryptSetKey();
      v0 = v231;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      OUTLINED_FUNCTION_315_1();
      segPumpCryptSetKey();
      v0 = v223;
    }

    v33 = v377;
  }

  else
  {
    v219 = OUTLINED_FUNCTION_182_1();
    v33 = v377;
    v0 = segPumpHandleCryptKeyNetworkError(v219, v220, ValueAtIndex, -15622, Domain, v377, v221, v222, v339, v341, v344, v346, v348, v350, key, v354, Domain, v358, v360, v362, theDict, v366, v368, DataLength, v371, Code);
  }

  v12 = v374;
  if (v400[0])
  {
    CFRelease(v400[0]);
  }

  v232 = *(v37 + 656);
  if (v232)
  {
    CFRelease(v232);
    *(v37 + 656) = 0;
  }

LABEL_155:
  v105 = 0;
LABEL_156:
  v14 = v376;
LABEL_157:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (v0)
  {
    goto LABEL_238;
  }

LABEL_166:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v385)
  {
    CFRelease(v385);
  }

  if (v382)
  {
    CFRelease(v382);
  }

  if (v383)
  {
    CFRelease(v383);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v387)
  {
    CFRelease(v387);
  }

  if (v386)
  {
    CFRelease(v386);
  }

  if (v384)
  {
    CFRelease(v384);
  }

  if (v380)
  {
    CFRelease(v380);
  }

  segPumpUnlockAndSendAllPendingNotifications(v14);
  if (v389)
  {
    CFRelease(v389);
  }

  OUTLINED_FUNCTION_191();
}

void segPumpCryptSetKey()
{
  OUTLINED_FUNCTION_428_1();
  v63 = v0;
  v64 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v62[0] = 0;
  CryptKeyCommonData = segPumpGetCryptKeyCommonData(v8, 0, v62);
  if (CryptKeyCommonData)
  {
    goto LABEL_35;
  }

  FigHTTPStopAndReleaseTimer((v11 + 640));
  if (!v9 || FigContentKeySpecifierGetKeySystem(v9) != 2)
  {
    KeySystem = FigContentKeySpecifierGetKeySystem(v9);
    v17 = v62[0];
    if (KeySystem != 1)
    {
      goto LABEL_12;
    }

    HIBYTE(v61) = 0;
    v18 = (v62[0] + 88);
    if (*(v62[0] + 88) == v7)
    {
      v19 = 104;
      v20 = 96;
      v21 = 72;
    }

    else
    {
      v18 = (v62[0] + 128);
      if (*(v62[0] + 128) != v7)
      {
        goto LABEL_28;
      }

      v19 = 144;
      v20 = 136;
      v21 = 112;
    }

    v24 = *(v62[0] + v21);
    *v18 = 0;
    *(v17 + v20) = 0;
    *(v17 + v19) = 0;
    if (v24)
    {
      if (v5)
      {
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v25)
        {
LABEL_49:
          v28 = -12782;
          goto LABEL_50;
        }

        CryptKeyCommonData = v25(v24, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
        if (CryptKeyCommonData)
        {
LABEL_35:
          v28 = CryptKeyCommonData;
          goto LABEL_50;
        }

        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v26 = OUTLINED_FUNCTION_187_1();
          v28 = v27(v26);
        }

        else
        {
          v28 = -12782;
        }

        if (!*(v13 + 330) || !v28)
        {
          if (*(v13 + 296))
          {
            if (*(v13 + 329))
            {
              if (!*(v62[0] + 154))
              {
                FigContentKeySpecifierGetIdentifier(v9);
                v47 = OUTLINED_FUNCTION_201_0();
                CryptKeyCommonData = segPumpSaveCryptKeyToCache(v47, v48, v3);
                if (CryptKeyCommonData)
                {
                  goto LABEL_35;
                }
              }
            }
          }

LABEL_43:
          v49 = *(CMBaseObjectGetVTable() + 16);
          if (*v49 >= 6uLL)
          {
            v50 = v49[20];
            if (v50)
            {
              CryptKeyCommonData = v50(v24, 2, 3, &v61 + 7, 0);
              if (CryptKeyCommonData)
              {
                goto LABEL_35;
              }

              if (!*(v62[0] + 88) && !*(v62[0] + 128))
              {
                *(v62[0] + 152) = 1;
                if (*(v13 + 330))
                {
                  if (segPumpCryptKeyIsLowValueFairPlayStreamingKey(v9))
                  {
                    FigGetAllocatorForMedia();
                    v51 = OUTLINED_FUNCTION_732();
                    if (CMBaseObjectCopyProperty(v51, v52, v53, v54) || (FigGetAllocatorForMedia(), v55 = OUTLINED_FUNCTION_732(), CMBaseObjectCopyProperty(v55, v56, v57, v58)))
                    {
                      OUTLINED_FUNCTION_303();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                      goto LABEL_35;
                    }
                  }
                }
              }

              v17 = v62[0];
              goto LABEL_12;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v29 = *(CMBaseObjectGetVTable() + 16);
        if (*v29 >= 4uLL && v29[12])
        {
          v30 = OUTLINED_FUNCTION_732();
          v28 = v31(v30);
        }

        else
        {
          v28 = -12782;
        }

        if (!*(v13 + 330) || !v28)
        {
          goto LABEL_43;
        }
      }

LABEL_50:
      if (v28 == -15626)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_28:
    v28 = 0;
    goto LABEL_50;
  }

  if (v3)
  {
    v15 = CFRetain(v3);
  }

  else
  {
    v15 = 0;
  }

  *(v62[0] + 56) = v15;
  Length = CFDataGetLength(v3);
  if (Length != FigContentKeySpecifierGetCryptKeySize(v9))
  {
    v40 = OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_214_1(v40, v41, v42, -12885, v43, v44, v45, v46, 0x100000003);
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_35;
  }

  v17 = v62[0];
  *(v62[0] + 152) = 1;
LABEL_12:
  if (*(v17 + 152))
  {
    OUTLINED_FUNCTION_255_1();
    segPumpContinueAfterKeyFetched(v32, v33, v34, v35, v36, v37, v38, v39, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6]);
    goto LABEL_35;
  }

LABEL_13:
  if (*(v13 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    OUTLINED_FUNCTION_408_0();
    v23();
  }

LABEL_16:
  OUTLINED_FUNCTION_439_1();
}

void segPumpPongCallback(uint64_t a1, double a2, uint64_t a3, int a4)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_154_0(UpTimeNanoseconds, v8, v9, v10, v11, v12, v13, v14, 0, 0);
  if (!v15)
  {
    if (a4)
    {
      *(v21 + 8768) = 0;
      *(v21 + 8784) = 0u;
      if (*(v21 + 9760) && *(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v19 = OUTLINED_FUNCTION_340_1();
        v20(v19);
      }
    }

    else
    {
      *(v21 + 8792) = UpTimeNanoseconds;
      *(v21 + 8776) = (*(v21 + 8768) + 2 * *(v21 + 8776)) / 3;
      *(v21 + 8768) = (a2 * 1000000000.0);
      if (*(v21 + 9760))
      {
        v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, (v21 + 8768));
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v17 = OUTLINED_FUNCTION_308();
          v18(v17);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

    segPumpResumeRoundTripMonitoring(v21);
  }

  segPumpUnlockAndSendAllPendingNotifications(a1);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t segPumpMediaFileCreateDecryptedData(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, char *a6, uint64_t a7, OpaqueCMBlockBuffer *a8)
{
  dataPointerOut[16] = *MEMORY[0x1E69E9840];
  v214 = 0;
  v215 = 0;
  v213 = 0;
  dataLength = 0;
  v212 = 0;
  v209 = 0;
  v210 = 0;
  if (!a3 || !a8)
  {
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return CryptKeyCommonData;
  }

  OUTLINED_FUNCTION_207();
  ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v16);
  CryptKeyCommonData = segPumpGetCryptKeyCommonData(ContentKeySpecifier, &v210, &v209);
  if (CryptKeyCommonData)
  {
    return CryptKeyCommonData;
  }

  HIDWORD(v197) = a7 & 1;
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(v8, v19, v20, v21, v22, v23, v24, v25);
  v27 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
  v194 = v8;
  if (FigContentKeySpecifierGetEncryptionMethod(v27) == 4)
  {
    TagSize = FigCryptGetTagSize(3);
    FigGetAllocatorForMedia();
    OUTLINED_FUNCTION_296();
    CryptKeyCommonData = CMBlockBufferCreateEmpty(v29, v30, v31, v32);
    if (CryptKeyCommonData)
    {
      return CryptKeyCommonData;
    }

    v33 = TagSize;
    v34 = a4;
    v35 = (MediaFilePrivateData + 216);
    if (*(MediaFilePrivateData + 27))
    {
      OUTLINED_FUNCTION_39_1();
      CryptKeyCommonData = CMBlockBufferAppendBufferReference(v36, v37, v38, v39, v40);
      if (CryptKeyCommonData)
      {
        return CryptKeyCommonData;
      }

      if (*v35)
      {
        CFRelease(*v35);
        *v35 = 0;
      }
    }

    if (a6)
    {
      CryptKeyCommonData = CMBlockBufferAppendBufferReference(0, v34, a5, a6, 0);
      if (CryptKeyCommonData)
      {
        return CryptKeyCommonData;
      }
    }

    if (a7)
    {
      FigGetAllocatorForMedia();
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_197();
      v53 = 0;
    }

    else
    {
      v41 = CMBlockBufferGetDataLength(0);
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_408_0();
      CryptKeyCommonData = CMBlockBufferCreateWithBufferReference(v42, v43, v44, v45, v46, MediaFilePrivateData + 27);
      if (CryptKeyCommonData)
      {
        return CryptKeyCommonData;
      }

      if (v41 <= v33)
      {
        return 0;
      }

      FigGetAllocatorForMedia();
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_197();
      v53 = v41 - v33;
    }

    CryptKeyCommonData = CMBlockBufferCreateContiguous(v47, v48, v49, v50, v51, v53, 0, v52);
    if (CryptKeyCommonData)
    {
      return CryptKeyCommonData;
    }

    a4 = 0;
    a6 = CMBlockBufferGetDataLength(0);
    a5 = 0;
    v8 = v194;
  }

  if (MediaFilePrivateData[72])
  {
    if (!a6)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (!*(v210 + 24))
  {
    v130 = a4;
    BytePtr = CFDataGetBytePtr(*(v209 + 56));
    Length = CFDataGetLength(*(v209 + 56));
    v132 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
    if (FigContentKeySpecifierGetEncryptionMethod(v132) == 4)
    {
      v133 = 3;
    }

    else
    {
      v133 = FigContentKeySpecifierGetEncryptionMethod(v132) == 3 ? 1 : -1;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    v135 = FigGetAllocatorForMedia();
    CryptKeyCommonData = FigCryptCreateForDecrypt(v133, AllocatorForMedia, 0, v135, BytePtr, Length, (v210 + 24));
    v8 = v194;
    a4 = v130;
    if (CryptKeyCommonData)
    {
      return CryptKeyCommonData;
    }
  }

  v54 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
  if (FigContentKeySpecifierGetKeySystem(v54) == 1)
  {
    v55 = v8;
    v56 = *(v209 + 64);
  }

  else
  {
    IV = FigMediaSegmentSpecifierGetIV(v8);
    v55 = v8;
    v56 = IV;
  }

  v58 = FigMediaSegmentSpecifierGetContentKeySpecifier(v55);
  if (FigContentKeySpecifierGetEncryptionMethod(v58) == 4)
  {
    dataPointerOut[0] = 0;
    lengthAtOffsetOut[0] = 0;
    IVSize = FigCryptGetIVSize(3);
    CryptKeyCommonData = CMBlockBufferGetDataPointer(a4, a5, lengthAtOffsetOut, 0, dataPointerOut);
    if (CryptKeyCommonData)
    {
      return CryptKeyCommonData;
    }

    if (lengthAtOffsetOut[0] > IVSize)
    {
      FigCryptSetIV(*(v210 + 24), dataPointerOut[0], IVSize);
      v61 = v60;
      a5 += IVSize;
      a6 -= IVSize;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_43_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return CryptKeyCommonData;
  }

  CFDataGetBytePtr(v56);
  CFDataGetLength(v56);
  v62 = OUTLINED_FUNCTION_246_0();
  FigCryptSetIV(v62, v63, v64);
  v61 = v65;
LABEL_31:
  v8 = v194;
  if (v61)
  {
    return v61;
  }

  MediaFilePrivateData[72] = 1;
  if (a6)
  {
LABEL_33:
    dataPointerOut[0] = 0;
    CryptKeyCommonData = CMBlockBufferGetDataPointer(a4, a5, dataPointerOut, 0, &v215);
    if (CryptKeyCommonData)
    {
      return CryptKeyCommonData;
    }

    if (dataPointerOut[0] < a6)
    {
      goto LABEL_104;
    }
  }

LABEL_35:
  v66 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
  CryptBlockSize = FigContentKeySpecifierGetCryptBlockSize(v66);
  v75 = CryptBlockSize;
  v189 = v10;
  if (a7)
  {
    v76 = FigMediaSegmentSpecifierGetContentKeySpecifier(v8);
    if (FigContentKeySpecifierGetEncryptionMethod(v76) == 4)
    {
      v77 = FigCryptGetTagSize(3);
      v78 = a6 >= v77;
      a6 -= v77;
      if (!v78)
      {
        goto LABEL_104;
      }
    }

    goto LABEL_40;
  }

  if (!a6)
  {
    v142 = OUTLINED_FUNCTION_252_1(CryptBlockSize, v68, v69, v70, v71, v72, v73, v74, v164, v168, v172, v175, v11, v180, a5, v10, v194, v197, v200, SBYTE2(v200), SBYTE3(v200), SHIDWORD(v200));
    v150 = OUTLINED_FUNCTION_445_0(v142, v143, v144, v145, v146, v147, v148, v149, v167, v171, v174, v177, v179, v183, offsetToDatad, v192, v196, v199, v202, v204, v206, v208);
    if (OUTLINED_FUNCTION_109_0(v150))
    {
      if (v193)
      {
        OUTLINED_FUNCTION_202_1();
      }

      LODWORD(lengthAtOffsetOut[0]) = 136316162;
      OUTLINED_FUNCTION_63_0();
      v217 = v151;
      v218 = offsetToDatab;
      v219 = v151;
      v220 = 0;
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl(v152, v153, v154, v155, v156, v157, a7, v158);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524(v159, v160, v161, v162, v163);
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    return CryptKeyCommonData;
  }

LABEL_40:
  v181 = a8;
  v79 = v10 + 0x2000;
  v80 = (v9 + 840);
  offsetToDataa = 2 * v75;
  v81 = 0x20000 - 2 * v75;
  do
  {
    dataPointerOut[0] = 0;
    v213 = 0;
    v82 = *v80;
    if (*v80)
    {
      v83 = *(v9 + 848);
      if (v81 >= v83)
      {
        goto LABEL_46;
      }

      CFRelease(v82);
      *v80 = 0;
    }

    segPumpGetMediaDataMemoryPool(v10);
    BlockBuffer = FigMemoryPoolCreateBlockBuffer();
    if (BlockBuffer)
    {
      return BlockBuffer;
    }

    v83 = 0;
    *(v9 + 848) = 0;
    v82 = *(v9 + 840);
LABEL_46:
    BlockBuffer = CMBlockBufferGetDataPointer(v82, v83, dataPointerOut, 0, &v214);
    if (BlockBuffer)
    {
      return BlockBuffer;
    }

    if (*(v79 + 704))
    {
      v85 = FigMediaSegmentSpecifierGetBytesToRead(v194) > 0;
    }

    else
    {
      v85 = 0;
    }

    FigCryptDecryptMemory(*(v210 + 24), SHIDWORD(v197), v85, v215, a6, &v212, v214, dataPointerOut[0], &dataLength, &v213);
    v61 = v92;
    if (v92)
    {
      v106 = OUTLINED_FUNCTION_171();
      OUTLINED_FUNCTION_214_1(v106, v107, v108, v109, @"CoreMediaErrorDomain", @"Decryption error", v110, v111, 0x200000000);
      a6 = 0;
      continue;
    }

    v78 = a6 >= v212;
    a6 -= v212;
    if (!v78)
    {
      OUTLINED_FUNCTION_43_1();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v165, v169, v172);
      return BlockBuffer;
    }

    v215 += v212;
    if (v213)
    {
      v93 = 0;
    }

    else
    {
      v93 = a6 == 0;
    }

    v94 = v93;
    v95 = v94 & a7;
    MediaFilePrivateData[97] = v95;
    v96 = dataLength;
    if ((a7 & 1) == 0 && !dataLength)
    {
      if (!v95)
      {
        goto LABEL_85;
      }

      goto LABEL_86;
    }

    v97 = *(v9 + 880);
    if (!*(v79 + 184))
    {
      goto LABEL_73;
    }

    v98 = FigMediaSegmentSpecifierGetContentKeySpecifier(v194);
    if (FigContentKeySpecifierGetEncryptionMethod(v98) != 4)
    {
      v96 = dataLength;
LABEL_73:
      if (v96)
      {
        appended = CMBlockBufferAppendBufferReference(v181, *(v9 + 840), *(v9 + 848), v96, 0);
        goto LABEL_82;
      }

      v105 = 0;
LABEL_78:
      *(v9 + 848) += v105;
      goto LABEL_83;
    }

    if (!*(MediaFilePrivateData + 26))
    {
      FigGetAllocatorForMedia();
      OUTLINED_FUNCTION_296();
      BlockBuffer = CMBlockBufferCreateEmpty(v99, v100, v101, v102);
      if (BlockBuffer)
      {
        return BlockBuffer;
      }
    }

    v96 = dataLength;
    if (dataLength)
    {
      BlockBuffer = CMBlockBufferAppendBufferReference(*(MediaFilePrivateData + 26), *(v9 + 840), *(v9 + 848), dataLength, 0);
      if (BlockBuffer)
      {
        return BlockBuffer;
      }
    }

    if (!MediaFilePrivateData[97])
    {
      v105 = dataLength;
      goto LABEL_78;
    }

    v103 = CMBlockBufferGetDataLength(*(MediaFilePrivateData + 26));
    if (v103)
    {
      appended = CMBlockBufferAppendBufferReference(v181, *(MediaFilePrivateData + 26), 0, v103, 0);
    }

    else
    {
      appended = 0;
    }

    v113 = *(MediaFilePrivateData + 26);
    if (v113)
    {
      CFRelease(v113);
      *(MediaFilePrivateData + 26) = 0;
    }

LABEL_82:
    *(v9 + 848) += dataLength;
    if (appended)
    {
      return appended;
    }

LABEL_83:
    if (v97 != *(v9 + 880))
    {
      return 0;
    }

    v10 = v189;
    if (!MediaFilePrivateData[97])
    {
LABEL_85:
      v112 = CMBlockBufferGetDataLength(*(v9 + 840));
      if (&a6[offsetToDataa] < &v112[-*(v9 + 848)])
      {
        continue;
      }
    }

LABEL_86:
    v112 = *v80;
    if (*v80)
    {
      CFRelease(v112);
      *v80 = 0;
    }

    *(v9 + 848) = 0;
  }

  while (a6 || v213);
  if ((a7 & 1) != 0 && !MediaFilePrivateData[97])
  {
    v114 = OUTLINED_FUNCTION_252_1(v112, v86, v87, v96, v88, v89, v90, v91, v165, v169, v172, @"CoreMediaErrorDomain", v11, v181, offsetToDataa, v189, v194, v197, v200, SBYTE2(v200), SBYTE3(v200), SHIDWORD(v200));
    v122 = OUTLINED_FUNCTION_445_0(v114, v115, v116, v117, v118, v119, v120, v121, v166, v170, v173, v176, v178, v182, offsetToDatac, v190, v195, v198, v201, v203, v205, v207);
    if (OUTLINED_FUNCTION_109_0(v122))
    {
      OUTLINED_FUNCTION_264_0();
      LODWORD(lengthAtOffsetOut[0]) = 136315650;
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl(v123, v124, v125, v126, v127, v128, a7, v129);
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_524(v136, v137, v138, v139, v140);
    v93 = v61 == -12465;
    v61 = 4294954831;
    if (!v93)
    {
LABEL_104:
      OUTLINED_FUNCTION_429();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      return CryptKeyCommonData;
    }
  }

  return v61;
}

uint64_t segPumpDispatchAsyncMediaDelivery(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v12 = OUTLINED_FUNCTION_347_1();
  if (!v12)
  {
    return 4294954655;
  }

  v13 = v12;
  *v12 = FigRetainProxyRetain();
  v13[1] = a2;
  v14 = *(a2 + 880);
  v13[2] = *(a2 + 1176);
  v13[3] = v14;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = -1;
  if (a5)
  {
    v15 = CFRetain(a5);
  }

  else
  {
    v15 = 0;
  }

  v13[7] = v15;
  v13[8] = a6;
  dispatch_async_f(*(a1 + 72), v13, segPumpDispatchAsyncMediaDeliveryFunc);
  return 0;
}

void segPumpReplaceMediaFileWithDiscontinuity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_140_0();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v8)
  {
    v9 = 0;
    v10 = MEMORY[0x2198];
    do
    {
      if (v10 && *(*(v9 + 392) + 16))
      {
        goto LABEL_12;
      }

      v9 += 16;
      --v10;
    }

    while (v9 != 48);
    v11 = *(v6 + 56);
    if (!v11 || (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v11)) == 0 || CFArrayGetCount(MediaSegmentSpecifiers) <= 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_13;
    }

    MediaEntryForMediaSequence = segPumpGetMediaEntryForMediaSequence(*(v6 + 56), a5);
    if (MediaEntryForMediaSequence)
    {
      if (MEMORY[0x22C0])
      {
        OUTLINED_FUNCTION_307_1();
        segPumpMakeDataCallback(v21, v6, v22, 0, 0x20u, v23, MEMORY[0x1E6960C70], 0, v34, v35, v36, v37);
      }

      else
      {
        v24 = MediaEntryForMediaSequence;
        *(segPumpGetMediaFilePrivateData(MediaEntryForMediaSequence, v14, v15, v16, v17, v18, v19, v20) + 99) = 1;
        if (*(v6 + 256) == v24 || *(v6 + 264) == v24)
        {
          segPumpSetDeliveryStatusForMediaFileAndParts(v24, 1, v25, v26, v27, v28, v29, v30);
        }

        if (MEMORY[0x201A] && MEMORY[0x188] == v6)
        {
          *(v6 + 96) = *(v6 + 96) - FigMediaSegmentSpecifierGetTimeInSeconds(v24);
          MEMORY[0x160] = MEMORY[0x160] - FigMediaSegmentSpecifierGetTimeInSeconds(v24);
          segPumpReadyNotification(0, @"FBPAL_SeekableTimeRangeChanged", 0);
          segPumpReadyNotification(0, @"FBP_DurationChanged", 0);
        }

        OUTLINED_FUNCTION_494();
        segPumpCancelMediaFileReadAndResetData(v31, v32, v33, 0);
        *(v6 + 403) = 1;
        segPumpDeliverNextMediaForSingleStream(0, 0, v6);
      }
    }
  }

LABEL_13:
  segPumpUnlockAndSendAllPendingNotifications(v5);
}

uint64_t segPumpEnsureAndSetupBasicAESProtector(uint64_t a1)
{
  v1 = a1 + 248;
  if (*(a1 + 248) || (AllocatorForMedia = FigGetAllocatorForMedia(), result = FigCPEProtectorCreateForScheme(AllocatorForMedia, @"com.apple.basicAES", 0, v1), !result))
  {
    if (*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
      v4 = OUTLINED_FUNCTION_236();

      return v5(v4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

void segPumpCopyMapEntryFromCache()
{
  OUTLINED_FUNCTION_629();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_358_1();
  v7 = v6;
  OUTLINED_FUNCTION_570();
  *v8 = 0;
  if (!segPumpCreateCacheNameFromSegment(v9, v0, &v22, cf))
  {
    if (!*(v7 + 296) || !*(v1 + 64) || (v10 = cf[0], v11 = FigMediaSegmentSpecifierGetStartOffset(v0), FigMediaSegmentSpecifierGetMediaSequence(v0), v12 = OUTLINED_FUNCTION_618(), FigStreamingCacheCopyMediaMap(v12, v13, v10, v11, v14, v15)) || (v16 = v21) == 0)
    {
      v17 = v22;
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(v0);
      v19 = FigMediaSegmentSpecifierGetBytesToRead(v0);
      SavedEntry = segPumpFindSavedEntry(v7, v17, StartOffset, v19);
      if (!SavedEntry)
      {
        goto LABEL_10;
      }

      v16 = *(SavedEntry + 16);
      if (v16)
      {
        v16 = CFRetain(v16);
      }
    }

    *v5 = v16;
  }

LABEL_10:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  OUTLINED_FUNCTION_345_1();
}

void segPumpMoveToNextMedia()
{
  OUTLINED_FUNCTION_216_0();
  v3 = v2 + 0x2000;
  if (!v4)
  {
    v13 = OUTLINED_FUNCTION_311_1();
    if (v13 && *(segPumpGetMediaFilePrivateData(v13, v14, v15, v16, v17, v18, v19, v20) + 2))
    {
      v21 = OUTLINED_FUNCTION_311_1();
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(v21, v22, v23, v24, v25, v26, v27, v28);
      CFRelease(MediaFilePrivateData[2]);
      v30 = OUTLINED_FUNCTION_311_1();
      *(segPumpGetMediaFilePrivateData(v30, v31, v32, v33, v34, v35, v36, v37) + 2) = 0;
    }

    if (*(v3 + 704))
    {
      goto LABEL_10;
    }

LABEL_11:
    v38 = *(v0 + 696);
    v39 = v38[1];
    if (!v39 || (CFRelease(v39), *(*(v0 + 696) + 8) = 0, (v38 = *(v0 + 696)) != 0))
    {
      if (v38[4] || v38[13])
      {
LABEL_23:
        OUTLINED_FUNCTION_198_0();
        OUTLINED_FUNCTION_860();

        segPumpDeliverNextMediaForSingleStream(v41, v42, v43);
        return;
      }
    }

    else
    {
      v38 = *(v0 + 680);
    }

    v40 = v38;
    while (1)
    {
      v40 = *v40;
      if (!v40)
      {
        v40 = *(v0 + 680);
      }

      if (!segPumpMediaConnectionIsActive(v40))
      {
        break;
      }

      if (v40 == v38)
      {
        v40 = v38;
        break;
      }
    }

    *(v0 + 696) = v40;
    goto LABEL_23;
  }

  if (!*(v2 + 8896))
  {
    goto LABEL_11;
  }

  if (*(v2 + 8952))
  {
    *(v2 + 8952) = 0;
    v5 = OUTLINED_FUNCTION_198_0();
    NextIFrame = segPumpRetrieveNextIFrame(v5, v6);
    if (NextIFrame)
    {
      v49 = NextIFrame;
      v8 = OUTLINED_FUNCTION_298();
      segPumpMakeDataCallbackWithOSStatus(v8, v9, v10, 0, 0x20u, v11, v12, 0, 0, v49, 0, 0);
    }

LABEL_10:
    OUTLINED_FUNCTION_860();
    return;
  }

  if (**(v0 + 768))
  {
    OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_197();
    segPumpAdoptReadAhead(v46);
    if (*(v1 + 8920) != 0.0)
    {
      v47 = OUTLINED_FUNCTION_627();
      segPumpDoAllStepAheads(v47, v48);
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_860();

  segPumpDoNextStep();
}

double segPumpDoAllStepAheads(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HIDWORD(_48[0]) = 0;
  v84 = 0;
  v15 = *(DerivedStorage + 392);
  v16 = v15[98];
  if (v16 >= 1)
  {
    v17 = 0;
    while (1)
    {
      v18 = *(v15[96] + 8 * v17);
      if (!v18)
      {
        break;
      }

      if (*(v18 + 8))
      {
        a2 = *(v18 + 8);
      }

      if (v16 == ++v17)
      {
        return *v14.i64;
      }
    }

    if (v17 < v16)
    {
      v81 = v3;
      v82 = a1;
      v19 = 0;
      v83 = 0;
      do
      {
        segPumpGetMediaFilePrivateData(a2, v6, v7, v8, v9, v10, v11, v12);
        FigMediaPlaylistGetPlaylistActiveDurationSecs(v15[7]);
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_135_1();
        segPumpChooseNextStep(v20, v21, v22, v23, v24, v25, v26, v27, _48 + 6, _48 + 7, _48 + 4, &v83, v80, v81, v82, v83, v84, _48[0], _48[1], _48[2], _48[3], _48[4], _48[5], _48[6], _48[7], _48[8], _48[9], _48[10], _48[11], _48[12], _48[13], vars8);
        if (!v28)
        {
          break;
        }

        a2 = v28;
        MediaFilePrivateData = segPumpGetMediaFilePrivateData(v28, v29, v30, v31, v32, v33, v34, v35);
        OUTLINED_FUNCTION_440_1(MediaFilePrivateData, v37, v38, v39, v40, v41, v42, v43);
        if (!*(v2 + 16))
        {
          OUTLINED_FUNCTION_120();

          *v14.i64 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          return *v14.i64;
        }

        if (BYTE5(_48[0]))
        {
          return *v14.i64;
        }

        v51 = segPumpGetMediaFilePrivateData(a2, v44, v45, v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_440_1(v51, v52, v53, v54, v55, v56, v57, v58);
        if (!segPumpShouldRequestURLAsHTTPURL(DerivedStorage, *(v2 + 16)))
        {
          return *v14.i64;
        }

        if (HIBYTE(_48[0]))
        {
          ++v19;
        }

        else
        {
          if (FigMediaSegmentSpecifierGetContentKeySpecifier(a2))
          {
            FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
            if (segPumpDoesCryptKeyRequireFetch())
            {
              return *v14.i64;
            }
          }

          v68 = segPumpGetMediaFilePrivateData(a2, v61, v62, v63, v64, v65, v66, v67);
          v68[6] = 0;
          v68[7] = 0;
          OUTLINED_FUNCTION_119_0();
          segPumpReadMediaFile(v69, v70, v71, v72, v73, v74, v75, v76);
          OUTLINED_FUNCTION_322_1();
          if (v77)
          {
            return *v14.i64;
          }

          v14 = vaddq_s64(*(DerivedStorage + 9048), vdupq_n_s64(1uLL));
          *(DerivedStorage + 9048) = v14;
          v78 = *(v15[96] + 8 * v17);
          if (!v78)
          {
            return *v14.i64;
          }

          *(v78 + 280) = v83;
          ++v17;
        }

        v59 = v15[98];
      }

      while (v17 < v59 && v19 < v59);
    }
  }

  return *v14.i64;
}

uint64_t segPumpFetchOrDispatchMediaSegment(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t Ahead, _BYTE *a6, NSObject *a7, uint64_t a8)
{
  v9 = a7;
  v10 = a6;
  v11 = Ahead;
  v12 = a4;
  v14 = a2;
  v413 = a1;
  v459 = *MEMORY[0x1E69E9840];
  MediaFilePrivateData = segPumpGetMediaFilePrivateData(a4, a2, a3, a4, Ahead, a6, a7, a8);
  v441 = 0;
  cf2 = 0;
  v440 = 0;
  if (!v12)
  {
    goto LABEL_75;
  }

  if (*(a3 + 256))
  {
    goto LABEL_171;
  }

  if (*(a3 + 264))
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v388, v391, v394);
    goto LABEL_175;
  }

  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v419 = v11;
  cf = v12;
  if (dword_1EAF16A30 >= 3)
  {
    OUTLINED_FUNCTION_153_0();
    v8 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v16, v17, v18, v19, v20, v21, v22, v388, v391, v394, v397, v400, v404, v409, v413, MediaFilePrivateData, v11, v12, *v426, v426[4], type_2, v438);
    if (os_log_type_enabled(v8, v426[4]))
    {
      v30 = v438;
    }

    else
    {
      v30 = v438 & 0xFFFFFFFE;
    }

    if (v30)
    {
      v404 = v9;
      v409 = v10;
      if (v14)
      {
        OUTLINED_FUNCTION_222_0();
      }

      v400 = *a3;
      v397 = *(segPumpGetMediaFilePrivateData(v15, v23, v24, v25, v26, v27, v28, v29) + 4);
      URLString = FigMediaSegmentSpecifierGetURLString(v15);
      v32 = v14;
      if (*(v14 + 347))
      {
        v33 = URLString;
      }

      else
      {
        v33 = @"[]";
      }

      StartOffset = FigMediaSegmentSpecifierGetStartOffset(v15);
      v35 = FigMediaSegmentSpecifierGetStartOffset(v15);
      v36 = FigMediaSegmentSpecifierGetBytesToRead(v15) + v35;
      FigMediaSegmentSpecifierIsMarkedAsGap(v15);
      v442 = 136316930;
      OUTLINED_FUNCTION_172_0();
      v446 = 2048;
      v447 = v400;
      v448 = 2048;
      v449 = v397;
      v450 = v37;
      v451 = v33;
      v14 = v32;
      v452 = 2048;
      v453 = StartOffset;
      v454 = 2048;
      v455 = v36;
      v456 = 1024;
      v457 = v38;
      OUTLINED_FUNCTION_145();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v39, v40, v41, v42, v43, v8, v426[4], v44);
      v10 = v409;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_420(v45, v46, v47, v48, v49);
    v11 = v419;
    v12 = cf;
  }

  if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v12))
  {
    v458 = 0;
    FigMediaSegmentSpecifierGetMapSegmentSpecifier(v12);
    v50 = OUTLINED_FUNCTION_105_0();
    IsMapEntryCached = segPumpIsMapEntryCached(v50, v51, v52, v53, v54, v55, v56, v57);
    if (IsMapEntryCached)
    {
      goto LABEL_175;
    }

    v59 = v15;
    v60 = v458 != 0;
    v11 = v419;
    if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v12) && FigMediaSegmentSpecifierGetMapSegmentSpecifier(v12) != *(a3 + 288) && FigMediaPlaylistUtilityGetDiscontinuityDomainForSegment(*(a3 + 312), v12) == *(a3 + 304))
    {
      *(a3 + 403) = 1;
    }
  }

  else
  {
    v59 = v15;
    v60 = 1;
  }

  v61 = v14 + 0x2000;
  if (*(a3 + 401))
  {
    if (!MediaFilePrivateData[6] && !*(v14 + 8896))
    {
      v8 = v9;
      v62 = *(a3 + 376) + 1;
      v111 = v62 == FigMediaSegmentSpecifierGetMediaSequence(v12);
      v9 = v8;
      if (!v111)
      {
        *(a3 + 403) = 1;
        if (dword_1EAF16A30)
        {
          OUTLINED_FUNCTION_153_0();
          v404 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v63, v64, v65, v66, v67, v68, v69, v388, v391, v394, v397, v400, v404, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[4], type_2, v438);
          LODWORD(v397) = v426[4];
          if (os_log_type_enabled(v404, v426[4]))
          {
            v70 = v438;
          }

          else
          {
            v70 = v438 & 0xFFFFFFFE;
          }

          if (v70)
          {
            OUTLINED_FUNCTION_222_0();
            v400 = v14;
            v71 = *a3;
            v409 = v10;
            v394 = *(a3 + 376);
            MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(cf);
            FigMediaSegmentSpecifierIsDiscontinuity(cf);
            v442 = 136316418;
            OUTLINED_FUNCTION_172_0();
            v9 = v8;
            v446 = 2048;
            v447 = v71;
            v14 = v400;
            v448 = 2048;
            v449 = v394;
            v450 = 2048;
            v451 = MediaSequence;
            v452 = 1024;
            LODWORD(v453) = v73;
            OUTLINED_FUNCTION_145();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v74, v75, v76, v77, v78, v79, v426[4], v80);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420(v95, v96, v97, v98, v99);
          v11 = v419;
          v12 = cf;
        }
      }
    }

    v100 = OUTLINED_FUNCTION_89_1();
    segPumpSetStreamDiscontinuityDomain(v100, v101, v102);
    *(a3 + 944) = -1;
    if (v60)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a3 + 376) = FigMediaSegmentSpecifierGetMediaSequence(v12) - 1;
    if (v60)
    {
      *(a3 + 401) = 1;
      v81 = OUTLINED_FUNCTION_89_1();
      segPumpSetStreamDiscontinuityDomain(v81, v82, v83);
      *(a3 + 944) = -1;
LABEL_41:
      v103 = v59;
      if (!*(a3 + 869))
      {
        goto LABEL_198;
      }

      if (!v11)
      {
LABEL_180:
        v119 = 0;
        LOBYTE(v12) = 0;
        goto LABEL_181;
      }

      FigMediaSegmentSpecifierGetPartialSegments(v12);
      FirstValue = FigCFArrayGetFirstValue();
      if (FirstValue != v11)
      {
LABEL_198:
        if (*(v14 + 8600) == *a3)
        {
          *(v61 + 31) = 0;
        }

        if (!*(v14 + 296))
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_372_1(FirstValue, v85, v86, v87, v88, v89, v90, v91, v388, v391, v394, v397, v400, v404, v409, v413);
        IsMapEntryCached = segPumpEnsureDiskBackedCacheForStreamPossiblyEndingStream();
        if (IsMapEntryCached)
        {
          goto LABEL_175;
        }

        v11 = v419;
        if (!*(a3 + 1152))
        {
LABEL_47:
          v104 = *(a3 + 776);
          v105 = &off_196E72000;
          if (v11)
          {
            if (v104 >= 1)
            {
              v106 = 0;
              do
              {
                v107 = *(*(a3 + 768) + 8 * v106);
                if (v107)
                {
                  if (*(v107 + 8) == v11)
                  {
                    goto LABEL_111;
                  }
                }
              }

              while (v104 != ++v106);
            }
          }

          else if (v104 >= 1)
          {
            v108 = 0;
            while (1)
            {
              v109 = *(*(a3 + 768) + 8 * v108);
              if (v109)
              {
                if (*(v109 + 8) == v12)
                {
                  break;
                }
              }

              if (v104 == ++v108)
              {
                goto LABEL_59;
              }
            }

LABEL_111:
            v211 = OUTLINED_FUNCTION_89_1();
            IsMapEntryCached = segPumpAdoptReadAhead(v211);
            if (!IsMapEntryCached)
            {
              v116 = 0;
              v103 = 0;
              LOBYTE(v12) = 1;
              v11 = v419;
              goto LABEL_67;
            }

            goto LABEL_175;
          }

LABEL_59:
          if (!*(v14 + 296) || !*(a3 + 64) || (OUTLINED_FUNCTION_89_1(), segPumpSeeIfMediaFileIsInCache(), !v187))
          {
            v110 = *(*(a3 + 696) + 8);
            if (v110)
            {
              v111 = v110 == v103;
            }

            else
            {
              v111 = 1;
            }

            if (!v111)
            {
              OUTLINED_FUNCTION_105_0();
              OUTLINED_FUNCTION_265_0();
              segPumpCancelMediaFileReadAndResetData(v112, v113, v114, v115);
            }

            LOBYTE(v12) = 0;
            v116 = 0;
            *(a3 + 404) = 1;
LABEL_67:
            v117 = *(a3 + 256);
            *(a3 + 256) = cf;
            CFRetain(cf);
            if (v117)
            {
              CFRelease(v117);
            }

            v118 = *(a3 + 264);
            *(a3 + 264) = v11;
            if (v11)
            {
              CFRetain(v11);
            }

            if (v118)
            {
              CFRelease(v118);
            }

            if (!v103)
            {
              if (!v116)
              {
LABEL_75:
                v119 = 0;
LABEL_76:
                v11 = 0;
                goto LABEL_181;
              }

LABEL_116:
              MediaFilePrivateData[14] = 0;
              FigMediaSegmentSpecifierGetMediaSequence(v116);
              OUTLINED_FUNCTION_142_1();
              v220 = OUTLINED_FUNCTION_105_0();
              NetworkURLFromPumpCache = segPumpDispatchAsyncMediaDelivery(v220, v221, v222, -1, 0, v223);
              if (!NetworkURLFromPumpCache)
              {
                v119 = dword_1EAF16A30;
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_153_0();
                  v231 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v224, v225, v226, v227, v228, v229, v230, v388, v391, v394, v397, v14, v404, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[4], type_2, v438);
                  v232 = v438;
                  if (os_log_type_enabled(v231, typea))
                  {
                    v240 = v232;
                  }

                  else
                  {
                    v240 = v232 & 0xFFFFFFFE;
                  }

                  if (v240)
                  {
                    v405 = v9;
                    v410 = v10;
                    v241 = &stru_1F0B1AFB8;
                    if (v401)
                    {
                      OUTLINED_FUNCTION_392_1();
                      if (!v111)
                      {
                        v241 = v242;
                      }
                    }

                    v243 = *a3;
                    v244 = *(segPumpGetMediaFilePrivateData(v116, v233, v234, v235, v236, v237, v238, v239) + 4);
                    v245 = FigMediaSegmentSpecifierGetURLString(v116);
                    if (*(v401 + 347))
                    {
                      v246 = v245;
                    }

                    else
                    {
                      v246 = @"[]";
                    }

                    v247 = FigMediaSegmentSpecifierGetStartOffset(v116);
                    v248 = FigMediaSegmentSpecifierGetStartOffset(v116);
                    v249 = FigMediaSegmentSpecifierGetBytesToRead(v116);
                    v442 = 136316674;
                    v443 = "segPumpFetchOrDispatchMediaSegment";
                    v444 = 2114;
                    v445 = v241;
                    v446 = 2048;
                    v447 = v243;
                    v448 = 2048;
                    v449 = v244;
                    v450 = 2114;
                    v451 = v246;
                    v452 = 2048;
                    v453 = v247;
                    v454 = 2048;
                    v455 = v249 + v248;
                    OUTLINED_FUNCTION_145();
                    OUTLINED_FUNCTION_23();
                    _os_log_send_and_compose_impl(v250, v251, v252, v253, v254, v255, typea, v256);
                    v9 = v405;
                    v10 = v410;
                  }

                  OUTLINED_FUNCTION_109();
                  LOBYTE(v12) = 1;
                  OUTLINED_FUNCTION_417(v257, 1, 1, v258, v259);
                  v119 = 0;
                  v11 = 0;
                  v14 = v401;
                }

                else
                {
                  v11 = 0;
                  LOBYTE(v12) = 1;
                }

                goto LABEL_181;
              }

LABEL_89:
              v11 = NetworkURLFromPumpCache;
              v119 = 0;
              goto LABEL_181;
            }

            IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(v103);
            if (IsMarkedAsGap)
            {
              v204 = OUTLINED_FUNCTION_372_1(IsMarkedAsGap, v160, v161, v162, v163, v164, v165, v166, v388, v391, v394, v397, v400, v404, v409, v413);
              NetworkURLFromPumpCache = segPumpHandleMediaFileNetworkError(v204, v205, 0, v103, 4294951877, 0);
              if (NetworkURLFromPumpCache)
              {
                goto LABEL_89;
              }

              if (*(v14 + 8328) || !*(v14 + 8280))
              {
                v206 = FigMediaSegmentSpecifierGetMediaSequence(v103);
                segPumpGetFragmentNumber(cf, v419);
                v207 = OUTLINED_FUNCTION_105_0();
                NetworkURLFromPumpCache = segPumpDispatchAsyncMediaDelivery(v207, v208, v206, v209, 0, v210);
                if (NetworkURLFromPumpCache)
                {
                  goto LABEL_89;
                }
              }
            }

            else
            {
              v167 = OUTLINED_FUNCTION_105_0();
              NetworkURLFromPumpCache = segPumpCopyAndCreateNetworkURLFromPumpCache(v167, v168, v169);
              if (NetworkURLFromPumpCache)
              {
                goto LABEL_89;
              }

              v170 = FigCFHTTPCompareURLs(*(a3 + 24), cf2);
              if (!v170)
              {
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_153_0();
                  v185 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v178, v179, v180, v181, v182, v183, v184, v388, v391, v394, v397, v400, v404, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[4], type_2, v438);
                  v186 = os_log_type_enabled(v185, type);
                  if (OUTLINED_FUNCTION_115_1(v186))
                  {
                    v442 = *(v105 + 134);
                    v443 = "segPumpFetchOrDispatchMediaSegment";
                    OUTLINED_FUNCTION_4_1();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl(v260, v261, v262, v263, v264, v265, type, v266);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_414(v267, v268, v269, v270, v271);
                }

                *(a3 + 136) = *(a3 + 376);
                v272 = OUTLINED_FUNCTION_105_0();
                segPumpStopStream(v272, v273, 1);
                v274 = *(a3 + 256);
                if (v274)
                {
                  CFRelease(v274);
                  *(a3 + 256) = 0;
                }

                v275 = *(a3 + 264);
                if (v275)
                {
                  CFRelease(v275);
                  *(a3 + 264) = 0;
                }

                v276 = OUTLINED_FUNCTION_105_0();
                v11 = segPumpSendIndexFileRequest(v276, v277, 0);
                v119 = 1;
                goto LABEL_181;
              }

              OUTLINED_FUNCTION_372_1(v170, v171, v172, v173, v174, v175, v176, v177, v388, v391, v394, v397, v400, v404, v409, v413);
              OUTLINED_FUNCTION_119_0();
              NetworkURLFromPumpCache = segPumpReadMediaFile(v213, v214, v215, v216, v217, v218, v219, 0);
              if (NetworkURLFromPumpCache)
              {
                goto LABEL_89;
              }
            }

            LOBYTE(v12) = 1;
            if (!v116)
            {
              goto LABEL_75;
            }

            goto LABEL_116;
          }

          if (!v11)
          {
            if (FigMediaSegmentSpecifierGetContentKeySpecifier(v12))
            {
              v438 = 0;
              ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v12);
              IsMapEntryCached = segPumpGetCryptKeyCommonData(ContentKeySpecifier, 0, &v438);
              if (IsMapEntryCached)
              {
                goto LABEL_175;
              }

              v342 = v438;
              if (!*(v438 + 152))
              {
                v343 = *(a3 + 256);
                if (v343)
                {
                  CFRelease(v343);
                  *(a3 + 256) = 0;
                  v342 = v438;
                }

                if (*(v342 + 153) || (v344 = *(a3 + 248), v344 == FigMediaSegmentSpecifierGetContentKeySpecifier(v12)))
                {
                  v11 = 0;
                }

                else
                {
                  v8 = &off_196E72000;
                  OUTLINED_FUNCTION_105_0();
                  segPumpCancelCryptReadAndResetData();
                  v382 = *(a3 + 248);
                  v383 = FigMediaSegmentSpecifierGetContentKeySpecifier(v12);
                  *(a3 + 248) = v383;
                  if (v383)
                  {
                    CFRetain(v383);
                  }

                  if (v382)
                  {
                    CFRelease(v382);
                  }

                  OUTLINED_FUNCTION_166_0();
                  v11 = segPumpSendCryptKeyRequest(v384, v385, v386, v387);
                  OUTLINED_FUNCTION_322_1();
                  v12 = cf;
                  v105 = &off_196E72000;
                  if (v111)
                  {
                    v11 = 4294951670;
                    goto LABEL_180;
                  }
                }

                if (*(v14 + 330))
                {
                  if (dword_1EAF16A30)
                  {
                    v345 = v14;
                    OUTLINED_FUNCTION_201_1();
                    v353 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v346, v347, v348, v349, v350, v351, v352, v388, v391, v394, v397, v400, v9, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[2], v426[3], v426[4]);
                    if (OUTLINED_FUNCTION_443_0(v353, v354, v355, v356, v357, v358, v359, v360, v390, v393, v396, v399, v403, v407, v412, v415, v418, v421, cfc, v428, v430, v432, typec))
                    {
                      v361 = v12;
                    }

                    else
                    {
                      v361 = v12 & 0xFFFFFFFE;
                    }

                    if (v361)
                    {
                      OUTLINED_FUNCTION_254_0();
                      v362 = *a3;
                      FigMediaSegmentSpecifierGetContentKeySpecifier(cfa);
                      v442 = 136316162;
                      OUTLINED_FUNCTION_172_0();
                      v446 = 2048;
                      v447 = v362;
                      v448 = 2112;
                      v449 = cfa;
                      v450 = 2112;
                      v451 = v363;
                      OUTLINED_FUNCTION_145();
                      OUTLINED_FUNCTION_44_0();
                      _os_log_send_and_compose_impl(v364, v365, v366, v367, v368, v369, v8, v370);
                    }

                    OUTLINED_FUNCTION_7();
                    OUTLINED_FUNCTION_420(v376, v377, v378, v379, v380);
                    v14 = v345;
                    v9 = v408;
                  }

                  *(a3 + 405) = 1;
                  goto LABEL_180;
                }
              }
            }

            if (*(a3 + 405))
            {
              if (dword_1EAF16A30)
              {
                OUTLINED_FUNCTION_153_0();
                v195 = OUTLINED_FUNCTION_107_0(qword_1EAF16A28, v188, v189, v190, v191, v192, v193, v194, v388, v391, v394, v397, v400, v404, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[4], type_2, v438);
                v8 = v426[4];
                v196 = os_log_type_enabled(v195, v426[4]);
                if (OUTLINED_FUNCTION_77_0(v196))
                {
                  OUTLINED_FUNCTION_222_0();
                  v442 = 136315650;
                  v443 = "segPumpFetchOrDispatchMediaSegment";
                  OUTLINED_FUNCTION_4_1();
                  OUTLINED_FUNCTION_44_0();
                  _os_log_send_and_compose_impl(v197, v198, v199, v200, v201, v202, v426[4], v203);
                }

                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_420(v278, v279, v280, v281, v282);
                v12 = cf;
              }

              *(a3 + 405) = 0;
            }

            MediaFilePrivateData[13] = v440;
            v283 = OUTLINED_FUNCTION_89_1();
            IsMapEntryCached = segPumpSetMediaFilePumpTimeOffsetsArray(v283, v284, v285, v286, v287, v288, v289, v290);
            if (!IsMapEntryCached)
            {
              v11 = v419;
              if (v441)
              {
                v116 = v12;
                LOBYTE(v12) = 0;
                v103 = 0;
                goto LABEL_67;
              }

              v438 = 0;
              v291 = *(*(a3 + 696) + 8);
              if (v291 == v12)
              {
                v292 = 0;
              }

              else
              {
                v292 = v12;
                if (v291)
                {
                  OUTLINED_FUNCTION_105_0();
                  OUTLINED_FUNCTION_265_0();
                  segPumpCancelMediaFileReadAndResetData(v293, v294, v295, v296);
                  v292 = v12;
                }
              }

              v297 = v292;
              FigStreamingCacheMediaSegmentGetLength(*(v14 + 296), *(a3 + 64), v440, 0, &v438);
              if (v438 && v438 != MediaFilePrivateData[7])
              {
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_201_1();
                  v321 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v314, v315, v316, v317, v318, v319, v320, v388, v391, v394, v397, v400, v404, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[2], v426[3], v426[4]);
                  v329 = OUTLINED_FUNCTION_443_0(v321, v322, v323, v324, v325, v326, v327, v328, v389, v392, v395, v398, v402, v406, v411, v414, v417, v420, cfb, v427, v429, v431, typeb);
                  if (OUTLINED_FUNCTION_77_0(v329))
                  {
                    OUTLINED_FUNCTION_222_0();
                    v442 = 136315906;
                    v443 = "segPumpFetchOrDispatchMediaSegment";
                    v444 = 2114;
                    OUTLINED_FUNCTION_6_1();
                    OUTLINED_FUNCTION_228_0();
                    OUTLINED_FUNCTION_145();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl(v330, v331, v332, v333, v334, v335, v8, v336);
                  }

                  v103 = v297;
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_420(v371, v372, v373, v374, v375);
                  v337 = 0;
                  v116 = cf;
                  goto LABEL_177;
                }

                v337 = 0;
                v116 = v12;
              }

              else
              {
                if (dword_1EAF16A30)
                {
                  OUTLINED_FUNCTION_201_1();
                  v305 = OUTLINED_FUNCTION_141_1(qword_1EAF16A28, v298, v299, v300, v301, v302, v303, v304, v388, v391, v394, v397, v400, v404, v409, v413, MediaFilePrivateData, v419, cf, *v426, v426[2], v426[3], v426[4]);
                  v306 = os_log_type_enabled(v305, v426[3]);
                  if (OUTLINED_FUNCTION_288_1(v306))
                  {
                    OUTLINED_FUNCTION_222_0();
                    v442 = 136315906;
                    v443 = "segPumpFetchOrDispatchMediaSegment";
                    v444 = 2114;
                    OUTLINED_FUNCTION_6_1();
                    OUTLINED_FUNCTION_228_0();
                    OUTLINED_FUNCTION_145();
                    OUTLINED_FUNCTION_44_0();
                    _os_log_send_and_compose_impl(v307, v308, v309, v310, v311, v312, v426[3], v313);
                  }

                  v103 = v297;
                  OUTLINED_FUNCTION_109();
                  v337 = 1;
                  OUTLINED_FUNCTION_454(v338, 1, 1, v339, v340);
                  v116 = 0;
                  v11 = v419;
                  goto LABEL_177;
                }

                v116 = 0;
                v337 = 1;
              }

              v103 = v297;
LABEL_177:
              v105 = &off_196E72000;
              LOBYTE(v12) = 0;
              *(a3 + 404) = v337;
              goto LABEL_67;
            }

LABEL_175:
            v11 = IsMapEntryCached;
            goto LABEL_180;
          }
        }
      }

LABEL_171:
      v119 = 0;
      LOBYTE(v12) = 0;
      goto LABEL_76;
    }

    v92 = OUTLINED_FUNCTION_89_1();
    segPumpSetStreamDiscontinuityDomain(v92, v93, v94);
    *(a3 + 944) = -1;
  }

  CMBaseObjectGetDerivedStorage();
  MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v12);
  v128 = segPumpGetMediaFilePrivateData(v12, v121, v122, v123, v124, v125, v126, v127);
  v136 = segPumpGetMediaFilePrivateData(MapSegmentSpecifier, v129, v130, v131, v132, v133, v134, v135);
  if (!MapSegmentSpecifier)
  {
    v140 = *(a3 + 256);
    *(a3 + 256) = 0;
    goto LABEL_84;
  }

  v137 = *(a3 + 776);
  if (v137 < 1)
  {
LABEL_83:
    v140 = *(a3 + 256);
    *(a3 + 256) = MapSegmentSpecifier;
    CFRetain(MapSegmentSpecifier);
LABEL_84:
    if (v140)
    {
      CFRelease(v140);
    }

    v141 = *(a3 + 264);
    if (v141)
    {
      CFRelease(v141);
      *(a3 + 264) = 0;
    }

    LOBYTE(v12) = 1;
    *(a3 + 404) = 1;
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(cf);
    v143 = FigMediaSegmentSpecifierSetTimeInSeconds(MapSegmentSpecifier, TimeInSeconds);
    v136[4] = v128[4];
    v136[6] = 0;
    v136[7] = 0;
    OUTLINED_FUNCTION_372_1(v143, v144, v145, v146, v147, v148, v149, v150, v388, v391, v394, v397, v400, v404, v409, v413);
    OUTLINED_FUNCTION_119_0();
    NetworkURLFromPumpCache = segPumpReadMediaFile(v151, v152, v153, v154, v155, v156, v157, 0);
    goto LABEL_89;
  }

  v138 = 0;
  while (1)
  {
    v139 = *(*(a3 + 768) + 8 * v138);
    if (v139)
    {
      if (*(v139 + 8) == MapSegmentSpecifier)
      {
        break;
      }
    }

    if (v137 == ++v138)
    {
      goto LABEL_83;
    }
  }

  v212 = OUTLINED_FUNCTION_105_0();
  v11 = segPumpAdoptReadAhead(v212);
  v119 = 0;
  LOBYTE(v12) = 1;
LABEL_181:
  if (v9)
  {
    LOBYTE(v9->isa) = v12;
  }

  if (v10)
  {
    *v10 = v119;
  }

  segPumpUpdateBufferingDoneState(v14);
  if (cf2)
  {
    CFRelease(cf2);
  }

  return v11;
}

uint64_t segPumpCopyAndCreateNetworkURLFromPumpCache(uint64_t a1, uint64_t a2, void *a3)
{
  URLString = 0;
  v5 = *(a1 + 296);
  if (!v5)
  {
    goto LABEL_10;
  }

  if (*(a1 + 8896))
  {
    if (*(a1 + 8212) && *(a1 + 392) == a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = *(a2 + 24);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    goto LABEL_12;
  }

  if (!*(a1 + 8213))
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!*(a2 + 64))
  {
    goto LABEL_10;
  }

  v6 = FigStreamingCacheMediaStreamCopyNetworkURL(v5, *(a2 + 64), &URLString);
  if (!v6)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v8 = CFURLCreateWithString(AllocatorForMedia, URLString, 0);
LABEL_12:
    v9 = 0;
    *a3 = v8;
    goto LABEL_13;
  }

  v9 = v6;
LABEL_13:
  if (URLString)
  {
    CFRelease(URLString);
  }

  return v9;
}

void segPumpChooseNextStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, uint64_t *a32)
{
  OUTLINED_FUNCTION_813();
  v34 = v33;
  v231 = v35;
  v229 = v36;
  LODWORD(v222) = v37;
  HIDWORD(v219) = v38;
  v224 = v39;
  v217 = v40;
  v42 = v41;
  MediaEntryForTimeFromEnd = v43;
  v45 = v32;
  v47 = v46;
  v278 = *MEMORY[0x1E69E9840];
  v48 = *(v46 + 392);
  v236 = *(v48 + 857);
  v216 = a29;
  *a29 = 0;
  v218 = a30;
  *a30 = 0;
  *a31 = 0;
  if (!v43)
  {
    MediaEntryForTimeFromEnd = segPumpGetMediaEntryForTimeFromEnd(*(v48 + 56), 0, 0, v32);
  }

  v56 = segPumpGetMediaEntryForTimeFromEnd(*(v48 + 56), v45 > v42, 0, v42);
  if (!v56)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(*(v48 + 56));
    if (v45 > v42)
    {
      LastValue = FigCFArrayGetLastValue();
    }

    else
    {
      LastValue = FigCFArrayGetFirstValue();
    }

    v56 = LastValue;
  }

  v220 = v47 + 0x2000;
  if (*(v47 + 8218))
  {
    v58 = v47;
    v59 = v34;
    v60 = MediaEntryForTimeFromEnd;
    v61 = 0;
    v62 = 0;
    goto LABEL_19;
  }

  v58 = v47;
  segPumpGetLiveBoundary(v47, *(v48 + 56));
  v63 = OUTLINED_FUNCTION_198();
  v62 = segPumpGetMediaEntryForTimeFromEnd(v63, v64, 0, v65);
  if (v62)
  {
    v59 = v34;
    if (MediaEntryForTimeFromEnd)
    {
      FigMediaSegmentSpecifierGetMediaSequence(MediaEntryForTimeFromEnd);
      v60 = MediaEntryForTimeFromEnd;
      v66 = OUTLINED_FUNCTION_199();
      if (MediaEntryForTimeFromEnd > FigMediaSegmentSpecifierGetMediaSequence(v66))
      {
        v60 = v62;
      }

      if (!v56)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v60 = 0;
      if (!v56)
      {
LABEL_17:
        v61 = 1;
        goto LABEL_19;
      }
    }

    FigMediaSegmentSpecifierGetMediaSequence(v56);
    v67 = OUTLINED_FUNCTION_199();
    if (MediaEntryForTimeFromEnd > FigMediaSegmentSpecifierGetMediaSequence(v67))
    {
      v56 = v62;
    }

    goto LABEL_17;
  }

  v59 = v34;
  v60 = MediaEntryForTimeFromEnd;
  v61 = 0;
LABEL_19:
  v68 = a32;
  v69 = v60 != v56 || v60 == 0;
  if (v69 || v236 != 0)
  {
    goto LABEL_34;
  }

  if (v45 <= v42)
  {
    PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(v56);
LABEL_33:
    v56 = PreviousSegment;
    goto LABEL_34;
  }

  v72 = v61 ^ 1;
  if (v56 == v62)
  {
    v72 = 1;
  }

  if ((v72 & 1) == 0)
  {
    PreviousSegment = FigMediaSegmentSpecifierGetNextSegment(v56);
    goto LABEL_33;
  }

LABEL_34:
  if (v56)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  if (v73 == 1 && ((FigMediaSegmentSpecifierGetMediaSequence(v56), v74 = OUTLINED_FUNCTION_199(), MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v74), v45 > v42) ? (v76 = v61 >= MediaSequence) : (v76 = 0), v76))
  {
    v79 = v60;
    if (*(segPumpGetMediaFilePrivateData(v62, v49, v50, v51, v52, v53, v54, v55) + 73))
    {
      LOBYTE(v81) = 0;
      *a31 = 1;
      v80 = 0;
      goto LABEL_55;
    }
  }

  else
  {
    if (v62)
    {
      v77 = 1;
    }

    else
    {
      v77 = v56 == 0;
    }

    if (!v77 && v45 > v42)
    {
      v79 = v60;
      if (!*(segPumpGetMediaFilePrivateData(v56, v49, v50, v51, v52, v53, v54, v55) + 73))
      {
        goto LABEL_56;
      }

      goto LABEL_52;
    }

    v79 = v60;
    if (!v56)
    {
LABEL_52:
      v80 = 0;
      LOBYTE(v81) = 0;
LABEL_55:
      v82 = 0.0;
      v83 = v59;
      v84 = v231;
      goto LABEL_161;
    }
  }

LABEL_56:
  v83 = v59;
  if (!v79)
  {
    FigMediaPlaylistGetMediaSegmentSpecifiers(*(v48 + 56));
    v79 = FigCFArrayGetLastValue();
  }

  v212 = a32;
  if (v56 == v79)
  {
    v89 = 1;
    v88 = v56;
  }

  else
  {
    if (v45 > v42)
    {
      NextSegment = FigMediaSegmentSpecifierGetNextSegment(v79);
      if (!NextSegment)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v48 + 56));
        NextSegment = FigCFArrayGetLastValue();
      }

      v86 = v56;
      v88 = NextSegment;
    }

    else
    {
      FirstValue = FigMediaSegmentSpecifierGetPreviousSegment(v79);
      if (!FirstValue)
      {
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v48 + 56));
        FirstValue = FigCFArrayGetFirstValue();
      }

      v86 = FirstValue;
      NextSegment = v56;
      v88 = v86;
    }

    v89 = 1;
    if (v88 != v56 && NextSegment && NextSegment != v86)
    {
      v89 = 1;
      do
      {
        NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
        ++v89;
      }

      while (NextSegment && NextSegment != v86);
    }
  }

  v90 = *(v58 + 8920);
  if (v90 == 0.0)
  {
    v91 = 1.0;
  }

  else
  {
    v91 = 1.0 / fabsf(v90);
  }

  v92 = *(v58 + 8928);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v101 = (v224 - UpTimeNanoseconds) / 1000000000.0;
  v82 = 0.0;
  if (v101 < 0.0)
  {
    v101 = 0.0;
  }

  *&v214 = v101;
  v226 = v48;
  v81 = 0;
  if (!v88)
  {
    v80 = 0;
    v233 = 1;
    v103 = 0.0;
    goto LABEL_121;
  }

  v102 = v91 * (vabdd_f64(v42, v45) / v92);
  v209 = v89 - 1;
  v103 = 0.0;
  v233 = 1;
  while (1)
  {
    if (*(v58 + 296) && *(v48 + 64) && (OUTLINED_FUNCTION_313_1(), segPumpSeeIfMediaFileIsInCache(), v107))
    {
      v104 = v58;
      v106 = 0;
      v82 = 0.0;
      v105 = 1;
    }

    else
    {
      FigMediaSegmentSpecifierGetBytesToRead(v88);
      v104 = v58;
      v82 = segPumpPredictIFrameDownload();
      v105 = 0;
      v106 = 1;
    }

    UpTimeNanoseconds = v88;
    if (v45 <= v42 || (UpTimeNanoseconds = FigMediaSegmentSpecifierGetPreviousSegment(v88)) != 0)
    {
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(UpTimeNanoseconds);
    }

    else
    {
      TimeInSeconds = 0.0;
    }

    v103 = v103 + v91 * TimeInSeconds;
    v109 = v106 ^ 1;
    if (v229)
    {
      v109 = 0;
    }

    if (v109)
    {
      goto LABEL_108;
    }

    v110 = v82 < *&v214 + v103;
    if (v103 < v102)
    {
      v110 = 0;
    }

    if (v88 != v56 && !v110)
    {
      goto LABEL_108;
    }

    v208 = v79;
    v210 = v83;
    v112 = *(v226 + 16);
    v111 = *(v226 + 24);
    segPumpGetMediaFilePrivateData(v88, v94, v95, v96, v97, v98, v99, v100);
    v113 = OUTLINED_FUNCTION_230_1();
    segPumpEnsureMediaSegmentURLs(v113, v112, v111, v114, v115, v116, v117, v118);
    if (!*(v83 + 16))
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v205, v206, v208);
      v80 = 0;
      goto LABEL_139;
    }

    v79 = v208;
    if (!v81)
    {
      UpTimeNanoseconds = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v88);
      if (!UpTimeNanoseconds)
      {
        goto LABEL_103;
      }

      LOBYTE(v242) = 0;
      MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v88);
      UpTimeNanoseconds = segPumpIsMapEntryCached(v104, v226, MapSegmentSpecifier, &v242, v121, v122, v123, v124);
      if (UpTimeNanoseconds)
      {
        v80 = 0;
LABEL_127:
        LOBYTE(v81) = 0;
        goto LABEL_139;
      }

      if (v242)
      {
LABEL_103:
        v81 = 0;
        goto LABEL_104;
      }

      v81 = 1;
    }

    if (!HIDWORD(v219))
    {
      v80 = 0;
      goto LABEL_139;
    }

    v119 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v88);
    FigMediaSegmentSpecifierGetBytesToRead(v119);
    OUTLINED_FUNCTION_171_1();
    v82 = v82 + segPumpPredictIFrameDownload();
LABEL_104:
    if (v88 == v56 || v82 < *&v214 + v103)
    {
      break;
    }

LABEL_108:
    if (v236)
    {
      if (!v106)
      {
        if (!v105)
        {
          OUTLINED_FUNCTION_335_0();
          LODWORD(v235) = v168;
          v58 = v104;
          v80 = v169;
          goto LABEL_123;
        }

LABEL_163:
        v224 = 0;
        goto LABEL_164;
      }
    }

    else
    {
      v126 = v105 ^ 1;
      if (v209 > v233)
      {
        v126 = 1;
      }

      if ((v126 & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    if (v45 > v42)
    {
      UpTimeNanoseconds = FigMediaSegmentSpecifierGetNextSegment(v88);
    }

    else
    {
      UpTimeNanoseconds = FigMediaSegmentSpecifierGetPreviousSegment(v88);
    }

    v88 = UpTimeNanoseconds;
    v48 = v226;
    v58 = v104;
    ++v233;
    if (!UpTimeNanoseconds)
    {
      v80 = 0;
LABEL_121:
      v127 = v222 != 0;
LABEL_122:
      LODWORD(v235) = v127;
      goto LABEL_123;
    }
  }

  v224 = (v224 + v103 * 1000000000.0);
  if (v105)
  {
LABEL_164:
    v58 = v104;
    *a30 = 1;
    v80 = v224;
    goto LABEL_121;
  }

  if (v222)
  {
    v170 = v106;
  }

  else
  {
    v170 = 0;
  }

  if ((v170 & 1) == 0)
  {
    LODWORD(v235) = v222 != 0;
    v58 = v104;
    v80 = v224;
    goto LABEL_123;
  }

  v171 = v226;
  v58 = v104;
  if (!**(v226 + 768))
  {
    LODWORD(v235) = 1;
    goto LABEL_180;
  }

  v172 = *(v226 + 696);
  v80 = v224;
  if (v172 && (v173 = *(v172 + 8)) != 0 && (UpTimeNanoseconds = FigMediaSegmentSpecifierGetType(v173), UpTimeNanoseconds == 1) || ((v174 = *(v58 + 8920), v174 == 0.0) ? (v175 = 1.0) : (v175 = 1.0 / v174), UpTimeNanoseconds = segPumpGetMediaFilePrivateData(v88, v94, v95, v96, v97, v98, v99, v100), *(v226 + 776) <= 0))
  {
    v127 = 1;
    goto LABEL_122;
  }

  v177 = 0;
  v178 = *(UpTimeNanoseconds + 32);
  *&v176 = 136315650;
  v235 = v176;
  HIDWORD(v228) = v81;
  while (2)
  {
    v179 = **(v171 + 768);
    if (!v179)
    {
LABEL_203:
      LODWORD(v235) = 1;
      v79 = v208;
      goto LABEL_123;
    }

    v180 = *(v179 + 8);
    if (!v180)
    {
      if (dword_1EAF16A30)
      {
        v183 = OUTLINED_FUNCTION_293_1(UpTimeNanoseconds, v94, v95, v96, v97, v98, v99, v100, v205, v206, v208, v209, v210, v212, v214, v216, v217, v218, v219, v220, v222, v224, v226, v228, v231, v233, v235, *(&v235 + 1), v238, v239, SBYTE2(v239), SBYTE3(v239), SHIDWORD(v239));
        v184 = os_log_type_enabled(v183, BYTE3(v239));
        if (OUTLINED_FUNCTION_186_0(v184))
        {
          OUTLINED_FUNCTION_205_0();
          if (v69)
          {
            v185 = &stru_1F0B1AFB8;
          }

          v186 = *v226;
          v272 = v235;
          v273 = "segPumpChooseNextStep";
          v274 = 2114;
          v275 = v185;
          v276 = 2048;
          v277 = v186;
          OUTLINED_FUNCTION_82_1();
          v205 = &v272;
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_282();
          _os_log_send_and_compose_impl(v187, v188, v189, v190, v191, v192, v193, "<SEGPUMP> %s: %{public}@:%ld: WARNING: NULL mediaFile with NOT-NULL readAheadConnections[0]");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_635(v197, v198, v199, v200, v201);
        v171 = v226;
        v81 = HIDWORD(v228);
      }

      v202 = OUTLINED_FUNCTION_313_1();
      segPumpStreamCancelReadAheadAndResetDataAtIndex(v202, v203, 0);
      v83 = v210;
LABEL_202:
      if (++v177 >= *(v171 + 776))
      {
        goto LABEL_203;
      }

      continue;
    }

    break;
  }

  MediaFilePrivateData = segPumpGetMediaFilePrivateData(*(v179 + 8), v94, v95, v96, v97, v98, v99, v100);
  if (v88 == v180)
  {
    goto LABEL_209;
  }

  v182 = MediaFilePrivateData[4];
  v83 = v210;
  if (v182 <= v178)
  {
    UpTimeNanoseconds = FigMediaSegmentSpecifierGetPreviousSegment(v88);
  }

  else
  {
    UpTimeNanoseconds = FigMediaSegmentSpecifierGetNextSegment(v88);
  }

  v95 = UpTimeNanoseconds;
  if (UpTimeNanoseconds != *(**(v171 + 768) + 8))
  {
    v194 = v182 > v178;
    if (v45 <= v42)
    {
      v194 = v182 < v178;
    }

    if (v194)
    {
      goto LABEL_203;
    }

    v195 = OUTLINED_FUNCTION_313_1();
    segPumpStreamCancelReadAheadAndResetDataAtIndex(v195, v196, 0);
    ++*(v58 + 9040);
    v80 = v224;
    goto LABEL_202;
  }

  v224 = (v80 + v175 * (v182 - v178) * 1000000000.0);
  v88 = UpTimeNanoseconds;
LABEL_209:
  OUTLINED_FUNCTION_197();
  UpTimeNanoseconds = segPumpAdoptReadAhead(v204);
  LODWORD(v235) = 1;
  *v216 = 1;
  v83 = v210;
  v79 = v208;
  v81 = HIDWORD(v228);
LABEL_180:
  v80 = v224;
LABEL_123:
  if (v81 && v88)
  {
    UpTimeNanoseconds = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v88);
    if (UpTimeNanoseconds)
    {
      LOBYTE(v242) = 0;
      FigMediaSegmentSpecifierGetMapSegmentSpecifier(v88);
      v128 = OUTLINED_FUNCTION_313_1();
      UpTimeNanoseconds = segPumpIsMapEntryCached(v128, v129, v130, v131, v132, v133, v134, v135);
      if (UpTimeNanoseconds)
      {
        goto LABEL_127;
      }

      v81 = v242 == 0;
    }

    else
    {
      v81 = 0;
    }
  }

  if (*(v58 + 296))
  {
    v136 = 1;
    if (*(v220 + 20))
    {
      if (*(v220 + 21))
      {
        v136 = 1;
      }

      else
      {
        v136 = 2;
      }
    }
  }

  else
  {
    v136 = 1;
  }

  if (v136 <= dword_1EAF16A30)
  {
    HIDWORD(v228) = v81;
    v225 = OUTLINED_FUNCTION_293_1(UpTimeNanoseconds, v94, v95, v96, v97, v98, v99, v100, v205, v206, v208, v209, v83, v212, v214, v216, v217, v218, v219, v220, v222, v224, v226, v228, v231, v233, v235, *(&v235 + 1), v238, v239, SBYTE2(v239), SBYTE3(v239), SHIDWORD(v239));
    os_log_type_enabled(v225, type);
    OUTLINED_FUNCTION_101_0();
    if (v69)
    {
      v138 = v137;
    }

    else
    {
      v138 = v241;
    }

    if (v138)
    {
      OUTLINED_FUNCTION_392_1();
      if (v69)
      {
        v139 = &stru_1F0B1AFB8;
      }

      v223 = v139;
      if (v227)
      {
        v140 = *v227;
      }

      else
      {
        v140 = -1;
      }

      v221 = v140;
      PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v227 + 56));
      if (v79)
      {
        StartOffset = FigMediaSegmentSpecifierGetStartOffset(v79);
      }

      else
      {
        StartOffset = -1;
      }

      v143 = PlaylistActiveDurationSecs - v45;
      v144 = FigMediaPlaylistGetPlaylistActiveDurationSecs(*(v227 + 56)) - v42;
      v152 = FigMediaSegmentSpecifierGetStartOffset(v56);
      if (v237)
      {
        v153 = "_IR";
      }

      else
      {
        v153 = "_SA";
      }

      if (v88)
      {
        v154 = *(segPumpGetMediaFilePrivateData(v88, v145, v146, v147, v148, v149, v150, v151) + 4) - *(v227 + 88);
        v155 = FigMediaSegmentSpecifierGetBytesToRead(v88);
      }

      else
      {
        v155 = 0;
        v154 = -1.0;
      }

      v242 = 136318722;
      v243 = "segPumpChooseNextStep";
      v244 = 2114;
      v245 = v223;
      v246 = 2048;
      v247 = v221;
      v248 = 2048;
      v249 = v143;
      v250 = 2048;
      v251 = StartOffset;
      v252 = 2048;
      v253 = v144;
      v254 = 2048;
      v255 = v152;
      v256 = 1024;
      v257 = v89;
      v258 = 2082;
      v259 = v153;
      v260 = 1024;
      v261 = v234;
      v262 = 2048;
      v263 = v154;
      v264 = 2048;
      v265 = v215 + v103;
      v266 = 2048;
      v267 = v82;
      v268 = 1024;
      v269 = v230;
      v270 = 1024;
      v271 = v155;
      LODWORD(v207) = 136;
      OUTLINED_FUNCTION_108();
      LOBYTE(v81) = v156;
      _os_log_send_and_compose_impl(v157, v158, v159, v160, v161, v225, type, v162, &v242, v207);
      v83 = v211;
      v68 = v213;
      v84 = v232;
    }

    else
    {
      v68 = v213;
      v84 = v232;
      LOBYTE(v81) = v230;
      v83 = v211;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_449(v163, v164, v165, v166, v167);
  }

  else
  {
LABEL_139:
    v84 = v231;
    v68 = v212;
  }

LABEL_161:
  *v84 = v81;
  *v83 = v82;
  *v68 = v80;
  OUTLINED_FUNCTION_812();
}

double segPumpPredictIFrameDownload()
{
  OUTLINED_FUNCTION_187();
  bzero(&__src[1], 0xD8uLL);
  segPumpMakeNetworkPredictionInput(v1, __src);
  OUTLINED_FUNCTION_112_0();
  __src[0] = *(v1 + 112);
  __src[4] = v0;
  __src[21] |= 8uLL;
  FigGetUpTimeNanoseconds();
  OUTLINED_FUNCTION_200_1();
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  v3 = 0.0;
  if (v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v4 = OUTLINED_FUNCTION_266();
    if (!v2(v4))
    {
      v5 = v8 * v7;
      if (v5 > 0.0)
      {
        return (8 * v0) / v5;
      }
    }
  }

  return v3;
}

void segPumpRTCReportingUpdateCryptorErrorKeys(int a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFIndex valuePtr, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    OUTLINED_FUNCTION_653();
    a17 = v18;
    a18 = v19;
    v21 = v20;
    v23 = v22;
    valuePtr = CFErrorGetCode(v20);
    v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
    if (*(v23 + 9232))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 120))
      {
        v25 = OUTLINED_FUNCTION_293();
        v26(v25);
      }

      v27 = *(v23 + 9232);
      CFErrorGetDomain(v21);
      if (v27)
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 120))
        {
          v28 = OUTLINED_FUNCTION_104_0();
          v29(v28);
        }
      }

      if (!v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      CFErrorGetDomain(v21);
      if (!v24)
      {
        goto LABEL_10;
      }
    }

    CFRelease(v24);
LABEL_10:
    OUTLINED_FUNCTION_652();
  }
}

_BYTE *CryptKeyRemoveKeyFromPlaylist()
{
  OUTLINED_FUNCTION_216_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_265();
  result = segPumpGetCryptKeyCommonData(v3, v4, v5);
  if (result)
  {
    if (v0)
    {
      v12 = OUTLINED_FUNCTION_171();
      return FigMediaPlaylistRemoveContentKeySpecifier(v12, v13);
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_171();
    FigMediaPlaylistRemoveContentKeySpecifier(v7, v8);
    v9 = *(v2 + 8328);
    if (!v9)
    {
      result = CFGetRetainCount(0);
      if (result != 1)
      {
        return result;
      }

      return FigCFArrayRemoveLastElementOfValue();
    }

    v10 = MEMORY[0xA8];
    v11 = *(v9 + 8);
    result = CFGetRetainCount(0);
    if (result == 1 && (v10 == v11 || !*(v2 + 8218)))
    {
      return FigCFArrayRemoveLastElementOfValue();
    }
  }

  return result;
}

void segPumpMediaExpiryTimerCallback()
{
  OUTLINED_FUNCTION_158_1();
  v1 = v0;
  OUTLINED_FUNCTION_179_1();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (v2)
  {
    goto LABEL_50;
  }

  v41 = v1;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v42 = 0;
  v6 = 0;
  v7 = 8073216000.0;
  do
  {
    v8 = *(v43 + 16 * v3 + 392);
    v9 = *(v8 + 56);
    if (!v9)
    {
      goto LABEL_40;
    }

    FigMediaPlaylistGetMediaSegmentSpecifiers(v9);
    LastValue = FigCFArrayGetLastValue();
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v12 = *(v8 + 88);
    v6 = 0;
    if (!LastValue)
    {
LABEL_34:
      if (!v3)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    while (1)
    {
      PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(LastValue);
      MediaFilePrivateData = segPumpGetMediaFilePrivateData(LastValue, v14, v15, v16, v17, v18, v19, v20);
      if (!MediaFilePrivateData[96])
      {
        break;
      }

LABEL_33:
      LastValue = PreviousSegment;
      if (!PreviousSegment)
      {
        goto LABEL_34;
      }
    }

    v22 = MediaFilePrivateData;
    v23 = *(MediaFilePrivateData + 11);
    if (UpTimeNanoseconds < v23 && v6 == 0)
    {
      v6 = 0;
      if (v5)
      {
        v26 = v23 < v4;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        v5 = 1;
        v4 = *(MediaFilePrivateData + 11);
      }

      goto LABEL_33;
    }

    if (MediaFilePrivateData[73])
    {
      FigMediaPlaylistGetMediaSegmentSpecifiers(*(v8 + 56));
      v25 = LastValue == FigCFArrayGetLastValue();
    }

    else
    {
      v25 = 1;
    }

    v42 = *(v43 + 8218);
    v22[96] = 1;
    *(v8 + 88) = FigMediaSegmentSpecifierGetTimeInSeconds(LastValue) + *(v8 + 88);
    *(v8 + 96) = *(v8 + 96) - FigMediaSegmentSpecifierGetTimeInSeconds(LastValue);
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(LastValue);
    v29 = 0;
    if (PartialSegments)
    {
LABEL_23:
      Count = CFArrayGetCount(PartialSegments);
      goto LABEL_25;
    }

    while (1)
    {
      Count = 0;
LABEL_25:
      if (v29 >= Count)
      {
        break;
      }

      v31 = OUTLINED_FUNCTION_284();
      ValueAtIndex = CFArrayGetValueAtIndex(v31, v32);
      *(segPumpGetMediaFilePrivateData(ValueAtIndex, v34, v35, v36, v37, v38, v39, v40) + 96) = 1;
      ++v29;
      if (PartialSegments)
      {
        goto LABEL_23;
      }
    }

    if (!*(v43 + 8211) || *(v43 + 8600) != v3 || !v25 || *(v8 + 400) || !*(v8 + 424))
    {
      v6 = 1;
      goto LABEL_33;
    }

    segPumpStopPlaylistReadsAndResetAllData(v43);
    if (*(v8 + 504) && *(v8 + 867))
    {
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v41, 4294954412);
    }

    v5 = 0;
    v6 = 1;
    if (!v3)
    {
LABEL_35:
      if (*(v43 + 8897))
      {
        OUTLINED_FUNCTION_336_0(v43 + 0x2000, COERCE__INT64(*(v8 + 88) - v12));
      }
    }

LABEL_37:
    if (v5)
    {
      v7 = (v4 - UpTimeNanoseconds) / 1000000000.0 + CFAbsoluteTimeGetCurrent();
    }

    else
    {
      v5 = 0;
      v7 = 8073216000.0;
    }

LABEL_40:
    ++v3;
  }

  while (v3 != 3);
  segPumpSetMediaFileExpireTimer(v43, v7);
  v1 = v41;
  if (v6)
  {
    segPumpReadyNotification(v43, @"FBPAL_SeekableTimeRangeChanged", 0);
    if (v42)
    {
      segPumpReadyNotification(v43, @"FBP_DurationChanged", 0);
    }
  }

LABEL_50:
  segPumpUnlockAndSendAllPendingNotifications(v1);
  if (cf)
  {
    CFRelease(cf);
  }

  OUTLINED_FUNCTION_156_1();
}

void segPumpContentSteeringAlternateListChangedCallback()
{
  OUTLINED_FUNCTION_570();
  if (!v1)
  {
    goto LABEL_23;
  }

  v2 = v1;
  OUTLINED_FUNCTION_187();
  if (CFArrayGetCount(v3) < 1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_198_1();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (v4)
  {
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    FigGetAllocatorForMedia();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      goto LABEL_17;
    }

    v5 = OUTLINED_FUNCTION_104_0();
    v4 = v6(v5);
    if (v4)
    {
LABEL_16:
      v13 = v4;
LABEL_18:
      segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v0, v13);
      goto LABEL_19;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    FigAlternateGetPathwayID(ValueAtIndex);
    if (*(v15 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 48))
    {
      v8 = OUTLINED_FUNCTION_502();
      v9(v8);
    }

    if (FigCFEqual())
    {
      goto LABEL_19;
    }

    if (*(v15 + 9232) && *(*(CMBaseObjectGetVTable() + 16) + 32))
    {
      v10 = OUTLINED_FUNCTION_502();
      v11(v10);
    }

    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
LABEL_17:
      v13 = 4294954514;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_100_0();
    v4 = v12();
    if (v4)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  segPumpUnlockAndSendAllPendingNotifications(v0);
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_23:
  OUTLINED_FUNCTION_860();
}

void segPumpContentSteeringAlternatesAddedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_257_0();
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      OUTLINED_FUNCTION_154_0(Count, v7, v8, v9, v10, v11, v12, v13, 0, 0);
      if (valid || (valid = segPumpAddNewAlternatesToValidAlternatesQueue(v15, v4), valid))
      {
        segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v3, valid);
      }

      segPumpUnlockAndSendAllPendingNotifications(v3);
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t segPumpAddNewAlternatesToValidAlternatesQueue(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_187();
  if (CFArrayGetCount(v3) < 1 || CFArrayGetCount(v2) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = OUTLINED_FUNCTION_198_0();
    CFArrayGetValueAtIndex(v5, v6);
    v7 = OUTLINED_FUNCTION_399();
    result = segPumpAddFigAlternate(v7, v8);
    if (result)
    {
      break;
    }

    if (++v4 >= CFArrayGetCount(v2))
    {
      return 0;
    }
  }

  return result;
}

double segPumpPlaylistGetEndDate(uint64_t a1)
{
  v1 = 0.0;
  if (a1 && FigMediaPlaylistGetDateStampCount(a1) >= 1)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      Count = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    else
    {
      Count = 0;
    }

    while (1)
    {
      v1 = 0.0;
      if (Count-- < 1)
      {
        break;
      }

      v6 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(v6, Count);
      if (FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
        v9 = MEMORY[0x19A8CCD90](DateStamp);
        v17 = *(segPumpGetMediaFilePrivateData(ValueAtIndex, v10, v11, v12, v13, v14, v15, v16) + 4);
        goto LABEL_10;
      }
    }

    v9 = 0.0;
    v17 = 0.0;
LABEL_10:
    FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      v19 = LastValue;
      FigMediaSegmentSpecifierGetPartialSegments(LastValue);
      v20 = FigCFArrayGetLastValue();
      if (v20)
      {
        v19 = v20;
      }

      v28 = v9 + *(segPumpGetMediaFilePrivateData(v19, v21, v22, v23, v24, v25, v26, v27) + 4) - v17;
      return FigMediaSegmentSpecifierGetTimeInSeconds(v19) + v28;
    }
  }

  return v1;
}

void segPumpCreateDiscoInfoList()
{
  OUTLINED_FUNCTION_428_1();
  v4 = v3;
  v5 = *(v3 + 56);
  if (v5)
  {
    v6 = v2;
    v7 = v1;
    v8 = v0;
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v5);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && FigMediaPlaylistGetDateStampCount(*(v4 + 56)) >= 1)
      {
        segPumpFreeDiscoQueue(v8);
        v10 = *(v4 + 56);
        if (!v10)
        {
          goto LABEL_21;
        }

        v11 = FigMediaPlaylistGetMediaSegmentSpecifiers(v10);
        if (!v11)
        {
          goto LABEL_21;
        }

        if (CFArrayGetCount(v11) < 1)
        {
          goto LABEL_21;
        }

        if (FigMediaPlaylistGetDateStampCount(*(v4 + 56)) < 1)
        {
          goto LABEL_21;
        }

        NextMediaFileWithDate = segPumpGetNextMediaFileWithDate(*(v4 + 56), 0);
        if (!NextMediaFileWithDate)
        {
          goto LABEL_21;
        }

        segPumpGetMediaFilePrivateData(NextMediaFileWithDate, v13, v14, v15, v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_127_1();
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(v20);
        v22 = MEMORY[0x19A8CCD90](DateStamp) - *(v6 + 32) + *(v4 + 88);
        FigMediaPlaylistGetMediaSegmentSpecifiers(*(v4 + 56));
        FirstValue = FigCFArrayGetFirstValue();
        v24 = 0;
        v25 = 0;
        v26 = v7 + FigMediaSegmentSpecifierGetDiscontinuityDomain(FirstValue) - 1;
        v27 = 0.0;
        while (1)
        {
          Count = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v4 + 56));
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (v25 >= Count)
          {
            break;
          }

          v29 = FigMediaPlaylistGetMediaSegmentSpecifiers(*(v4 + 56));
          ValueAtIndex = CFArrayGetValueAtIndex(v29, v25);
          if (FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex))
          {
            v31 = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
            v22 = MEMORY[0x19A8CCD90](v31);
          }

          if (v26 != FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) + v7)
          {
            MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v32, v33, v34, v35, v36, v37, v38);
            v40 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040CA010D23uLL);
            if (!v40)
            {
              goto LABEL_25;
            }

            v41 = v40;
            v42 = MediaFilePrivateData[4];
            v40[2] = v22;
            *(v40 + 3) = v42;
            v26 = FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) + v7;
            *(v41 + 4) = v26;
            v41[5] = v27;
            v43 = *(v8 + 8);
            *v41 = 0.0;
            *(v41 + 1) = v43;
            *v43 = v41;
            *(v8 + 8) = v41;
            ++v24;
            v27 = 0.0;
          }

          v22 = v22 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          v27 = v27 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
          ++v25;
        }

        if (*v8)
        {
          goto LABEL_23;
        }

LABEL_25:
        OUTLINED_FUNCTION_239();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        if (v44)
        {
LABEL_21:
          segPumpFreeDiscoQueue(v8);
          v24 = 0;
LABEL_23:
          *v6 = v24;
        }
      }
    }
  }

  OUTLINED_FUNCTION_439_1();
}

uint64_t segPumpGetTimeRangeForDateWithSegmentOffset(const void *a1, uint64_t a2, const __CFDate *a3, CMTime *a4, CMTime *a5, void *a6)
{
  v7 = v6;
  v100 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v15 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v15, v16);
  if (v17)
  {
    goto LABEL_67;
  }

  if (!a4)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v85, v87, v89);
LABEL_67:
    v78 = v17;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
  }

  if (!a2 || FigMediaPlaylistGetPlaylistActiveDurationSecs(a2) == 0.0)
  {
    goto LABEL_55;
  }

  v18 = MEMORY[0x19A8CCD90](a3);
  FigMediaPlaylistGetMediaSegmentSpecifiers(a2);
  FirstValue = FigCFArrayGetFirstValue();
  v95 = FirstValue;
  if (!FirstValue && dword_1EAF16A30)
  {
    LODWORD(v91) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    OUTLINED_FUNCTION_362_1();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_124_0(v28))
    {
      v29 = &stru_1F0B1AFB8;
      if (DerivedStorage && DerivedStorage[1118])
      {
        v29 = DerivedStorage[1118];
      }

      *v96 = 136315394;
      *&v96[4] = "segPumpGetTimeRangeForDateWithSegmentOffset";
      v97 = 2114;
      v98 = v29;
      OUTLINED_FUNCTION_361_1();
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v30, v31, v32, v33, v34, v35, 0, v36);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v79, v80, v81, v82, v83);
    goto LABEL_55;
  }

  if (!FirstValue)
  {
LABEL_55:
    v78 = 4294954513;
    return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
  }

  v94 = 0;
  if (!OUTLINED_FUNCTION_430_1(FirstValue, v20, v21, v22, v23, v24, v25, v26, v85, v87))
  {
    v78 = 4294954647;
    v41 = 0;
    if (!a6)
    {
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
    }

    goto LABEL_64;
  }

  v90 = a5;
  OUTLINED_FUNCTION_398_0();
  v37 = 0;
  v38 = 0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  do
  {
    if (v18 <= v40 + v39 && DerivedStorage != 0)
    {
      v44 = v39;
      v42 = v43;
      v7 = DerivedStorage;
    }

    v46 = v93;
    FigMediaSegmentSpecifierGetPartialSegments(v94);
    if (v46 == FigCFArrayGetFirstValue() && FigMediaSegmentSpecifierGetDateStamp(v94))
    {
      if (v37 || (v47 = FigMediaSegmentSpecifierGetDateStamp(v94), CFDateCompare(a3, v47, 0) != kCFCompareLessThan))
      {
        DateStamp = FigMediaSegmentSpecifierGetDateStamp(v94);
        if (CFDateCompare(a3, DateStamp, 0) == kCFCompareLessThan)
        {
          DerivedStorage = 0;
          v38 = 1;
          goto LABEL_33;
        }
      }

      DerivedStorage = v94;
      v49 = FigMediaSegmentSpecifierGetDateStamp(v94);
      v40 = MEMORY[0x19A8CCD90](v49);
      v43 = *(segPumpGetMediaFilePrivateData(DerivedStorage, v50, v51, v52, v53, v54, v55, v56) + 4);
      v39 = 0.0;
      v38 = 1;
      v37 = 1;
    }

    if (DerivedStorage && v18 > v40 + v39)
    {
      v99.value = 0;
      *v96 = v94;
      v91 = v93;
      if (FigMediaPlaylistUtilityIterateMedia(a2, v96, &v91, &v99.value) && FigMediaSegmentSpecifierGetDateStamp(v99.value))
      {
        v57 = FigMediaSegmentSpecifierGetDateStamp(v99.value);
        v39 = MEMORY[0x19A8CCD90](v57) - v40;
      }

      else
      {
        v39 = v39 + FigMediaSegmentSpecifierGetTimeInSeconds(v95);
      }

      v41 = *(segPumpGetMediaFilePrivateData(v95, v58, v59, v60, v61, v62, v63, v64) + 4);
    }

LABEL_33:
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v95);
  }

  while (OUTLINED_FUNCTION_430_1(v66, v67, v68, v69, v70, v71, v72, v73, v86, v88, TimeInSeconds));
  v74 = v18 > v40 + v39 || DerivedStorage == 0;
  v75 = v74;
  if (v74)
  {
    v76 = v44;
  }

  else
  {
    v76 = v39;
  }

  if (v74)
  {
    v77 = v42;
  }

  else
  {
    v77 = v43;
  }

  if (!v38)
  {
    v78 = 4294954647;
    if (!a6)
    {
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
    }

    goto LABEL_64;
  }

  if (v7)
  {
    v75 = 0;
  }

  if (v75)
  {
    v78 = 4294954648;
    if (!a6)
    {
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
    }

LABEL_64:
    *a6 = v41;
  }

  else
  {
    CMTimeMakeWithSeconds(&v99, v77, 90000);
    *a4 = v99;
    if (v90)
    {
      CMTimeMakeWithSeconds(&v99, v77 + v76, 90000);
      v78 = 0;
      *v90 = v99;
      if (!a6)
      {
        return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
      }

      goto LABEL_64;
    }

    v78 = 0;
    if (a6)
    {
      goto LABEL_64;
    }
  }

  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v78);
}

uint64_t segPumpSyncTimeRolledPastToExistingStream(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDate *a4)
{
  OUTLINED_FUNCTION_471();
  v8 = v7;
  v70 = *MEMORY[0x1E69E9840];
  memset(&v55, 0, sizeof(v55));
  memset(&v54, 0, sizeof(v54));
  v53 = 0.0;
  result = segPumpGetTimeRangeForDateWithSegmentOffset(v7, *(v9 + 56), a4, &v55, &v54, &v53);
  if (result)
  {
    return result;
  }

  v11 = *v4;
  if (*(v4 + 864))
  {
    v12 = *(v5 + 16 * v11 + 392);
    if (!v12)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v11)
  {
LABEL_17:
    v12 = *(v5 + 408);
    if (*(v12 + 866))
    {
      return result;
    }

    goto LABEL_5;
  }

  v12 = *(v5 + 392);
  if (*(v12 + 866))
  {
    if (v11 == 1)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_5:
  if (!*(v5 + 8218))
  {
    if (v12[7])
    {
      v13 = OUTLINED_FUNCTION_188();
      result = segPumpGetTimeRangeForDateWithSegmentOffset(v13, v14, v15, v16, v17, v18);
      if (!result)
      {
        v19 = *(v4 + 88);
        v20 = v53 - v19;
        v21 = 0.0 - (v53 - v19);
        if (v19 != v21)
        {
          if (dword_1EAF16A30)
          {
            OUTLINED_FUNCTION_10_1();
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = OUTLINED_FUNCTION_116_0(os_log_and_send_and_compose_flags_and_os_log_type, v23, v24, v25, v26, v27, v28, v29, v48, v49, v51, v52, SBYTE2(v52), BYTE3(v52), SHIDWORD(v52));
            if (OUTLINED_FUNCTION_109_0(v30))
            {
              v31 = *(v5 + 8944);
              v32 = *v4;
              if (!v31)
              {
                v31 = &stru_1F0B1AFB8;
              }

              v33 = *(v4 + 88);
              v34 = *v12;
              v35 = v12[11];
              v56 = 136316674;
              v57 = "segPumpSyncTimeRolledPastToExistingStream";
              v58 = 2114;
              v59 = v31;
              v60 = 2048;
              v61 = v32;
              v62 = 2048;
              v63 = v33;
              v64 = 2048;
              v65 = v21;
              v66 = 1024;
              v67 = v34;
              v68 = 2048;
              v69 = v35;
              LODWORD(v50) = 68;
              OUTLINED_FUNCTION_38();
              _os_log_send_and_compose_impl(v36, v37, v38, v39, v40, v41, v8, v42, &v56, v50);
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v43, v44, v45, v46, v47);
            v20 = v53 - *(v4 + 88);
          }

          return segPumpStreamSyncTimeRolledPast(v4, v20, 0.0);
        }
      }
    }
  }

  return result;
}

void segPumpAPILockAndEnsureAPIStatus(uint64_t a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = OUTLINED_FUNCTION_199();
  CFRetain(v4);
  FigRetainProxyLockMutex();
  segPumpAPICheckStatus(v2, 0);
  if (a2 && v5 && v5 != -12883)
  {
    v6 = v2[1029];
    if (v6)
    {
      CFRelease(v6);
      v2[1029] = 0;
    }

    for (i = 49; i != 55; i += 2)
    {
      v8 = v2[i];
      if (*(v8 + 16))
      {
        *(v8 + 1152) = 0;
        v9 = *(v8 + 1160);
        if (v9)
        {
          CFRelease(v9);
          *(v8 + 1160) = 0;
        }

        *(v8 + 866) = 1;
        v10 = OUTLINED_FUNCTION_69_0();
        if (segPumpRestartStreamReads(v10, v11, v12))
        {
          break;
        }
      }
    }
  }
}

double segPumpAPICheckStatus(void *a1, uint64_t a2)
{
  if (!a2)
  {
    if (FigRetainProxyIsInvalidated())
    {
      OUTLINED_FUNCTION_303();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

    else if (segPumpSentEndCallbackForAnyStream(a1))
    {
      v4 = a1[1029];
      if (v4)
      {
        CFErrorGetCode(v4);
      }
    }
  }

  return result;
}

void RoundTripMonitorTimeoutTimer(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (!v3)
  {
    FigHTTPStopAndReleaseTimer((v4 + 8800));
    segPumpGetCurrentRTT(v4);
    segPumpResumeRoundTripMonitoring(v4);
  }

  segPumpUnlockAndSendAllPendingNotifications(a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t segPumpStepNextFrame(const void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, int *a6, float a7)
{
  v13 = OUTLINED_FUNCTION_351_0(a2[2], *a2, a2[1], v33);
  v14 = OUTLINED_FUNCTION_351_0(a4[2], *a4, a4[1], v34);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *(DerivedStorage + 392);
  v17 = OUTLINED_FUNCTION_198();
  segPumpAPILockAndEnsureAPIStatus(v17, v18);
  if (v19)
  {
    goto LABEL_36;
  }

  if (!*(DerivedStorage + 8896) || *(DerivedStorage + 8897))
  {
    goto LABEL_22;
  }

  v20 = *(v16 + 56);
  v21 = v20 ? FigMediaPlaylistGetPlaylistActiveDurationSecs(v20) : *(v16 + 96);
  if (!v21)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    v22 = *(v16 + 72) + 1;
    *(v16 + 72) = v22;
    *a6 = v22;
  }

  v23 = *(v16 + 56);
  if (v23)
  {
    PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v23);
  }

  else
  {
    PlaylistActiveDurationSecs = *(v16 + 96);
  }

  v25 = *(v16 + 88);
  v26 = v25 + PlaylistActiveDurationSecs;
  if (v13 >= v14)
  {
    v27 = v26 + -0.000001;
    if (v13 < v26)
    {
      v27 = v13;
    }

    if (v14 >= v25)
    {
      v28 = v14;
    }

    else
    {
      v28 = *(v16 + 88);
    }

    if (v27 < v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v13 >= v25)
    {
      v27 = v13;
    }

    else
    {
      v27 = *(v16 + 88);
    }

    v28 = v25 + 0.001;
    if (v14 > v25)
    {
      v28 = v14;
    }

    if (v28 >= v26)
    {
      v28 = v26 + -0.000001;
    }

    if (v27 >= v26)
    {
LABEL_22:
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_36:
      v31 = v19;
      return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v31);
    }
  }

  *(v16 + 871) = 0;
  *(v16 + 1152) = 0;
  *(DerivedStorage + 8904) = v26 - v27;
  *(DerivedStorage + 8912) = v26 - v28;
  *(DerivedStorage + 8928) = a5;
  *(DerivedStorage + 8920) = a7;
  *(DerivedStorage + 8936) = a3;
  v29 = *(v16 + 56);
  if (v29)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v29);
    if (MediaSegmentSpecifiers)
    {
      if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1 && !*(v16 + 869))
      {
        OUTLINED_FUNCTION_198_0();
        segPumpDoNextStep();
        goto LABEL_36;
      }
    }
  }

  v31 = 0;
  *(DerivedStorage + 8897) = 1;
  return segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(a1, v31);
}

double segPumpDetermineMediaSegmentToDeliver(uint64_t UpTimeNanoseconds, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v432 = a5;
  v7 = a2;
  v449 = *MEMORY[0x1E69E9840];
  v438 = 0;
  v439 = 0;
  LODWORD(v419) = segPumpStreamBitRateRequiredForStream(a2, a3);
  *&v437 = 0.0;
  v428 = a4;
  *a4 = 0;
  v9 = a3[7];
  if (!v9 || a3[32])
  {
    goto LABEL_193;
  }

  if (a3[33])
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_451_0();

    return FigSignalErrorAtGM(v358);
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(v9);
  FirstValue = FigCFArrayGetFirstValue();
  if (!FirstValue)
  {
    goto LABEL_193;
  }

  v17 = __src;
  v18 = a3 + 17;
  if (a3[17] == -1)
  {
    v31 = 1;
    goto LABEL_53;
  }

  for (i = 0; ; ++i)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a3[7]);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (i >= MediaSegmentSpecifiers)
    {
      ValueAtIndex = 0;
LABEL_32:
      v43 = 0;
      v31 = 1;
      goto LABEL_52;
    }

    v21 = FigMediaPlaylistGetMediaSegmentSpecifiers(a3[7]);
    ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
    MediaFilePrivateData = segPumpGetMediaFilePrivateData(ValueAtIndex, v23, v24, v25, v26, v27, v28, v29);
    if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) == a3[17])
    {
      MediaFilePrivateData[8] = a3[19];
    }

    if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) >= *v18)
    {
      break;
    }

    segPumpSetDeliveryStatusForMediaFileAndParts(ValueAtIndex, 1, v11, v12, v13, v14, v15, v16);
  }

  if (!ValueAtIndex)
  {
    goto LABEL_32;
  }

  PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(ValueAtIndex);
  a3[15] = 0xBFF0000000000000;
  a3[115] = 0;
  if (PreviousSegment && (DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(PreviousSegment), DiscontinuityDomain < FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex)) && !a3[19])
  {
    v112 = a3[36];
    if (v112)
    {
      CFRelease(v112);
      a3[36] = 0;
    }
  }

  else
  {
    v34 = a3[36];
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
    a3[36] = MapSegmentSpecifier;
    if (MapSegmentSpecifier)
    {
      CFRetain(MapSegmentSpecifier);
    }

    if (v34)
    {
      CFRelease(v34);
    }
  }

  a3[40] = FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex);
  v36 = OUTLINED_FUNCTION_770();
  segPumpSetStreamDiscontinuityDomain(v36, v37, ValueAtIndex);
  if ((a3[18] & 0x8000000000000000) == 0)
  {
    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(ValueAtIndex);
    v39 = 0;
    if (!PartialSegments)
    {
      goto LABEL_27;
    }

LABEL_26:
    for (j = CFArrayGetCount(PartialSegments); v39 < j; j = 0)
    {
      v41 = OUTLINED_FUNCTION_267_0();
      v43 = CFArrayGetValueAtIndex(v41, v42);
      v51 = segPumpGetMediaFilePrivateData(v43, v44, v45, v46, v47, v48, v49, v50);
      if (v39 == a3[18])
      {
        goto LABEL_34;
      }

      v51[73] = 1;
      ++v39;
      if (PartialSegments)
      {
        goto LABEL_26;
      }

LABEL_27:
      ;
    }
  }

  v43 = 0;
LABEL_34:
  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_302_1();
    v59 = OUTLINED_FUNCTION_258_1(qword_1EAF16A28, v52, v53, v54, v55, v56, v57, v58, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v7, v428, v432, type[0], v437, v438, v439, FirstValue, v441[0]);
    if (os_log_type_enabled(v59, type[0]))
    {
      v60 = v441[0];
    }

    else
    {
      v60 = v441[0] & 0xFFFFFFFE;
    }

    if (v60)
    {
      v61 = &stru_1F0B1AFB8;
      if (v424 && *(v424 + 8944))
      {
        v61 = *(v424 + 8944);
      }

      v414 = v59;
      if (a3)
      {
        v62 = *a3;
      }

      else
      {
        v62 = -1;
      }

      v409 = v62;
      v63 = a3[17];
      v64 = a3[19];
      URLString = FigMediaSegmentSpecifierGetURLString(ValueAtIndex);
      if (*(v424 + 347))
      {
        v66 = URLString;
      }

      else
      {
        v66 = @"[]";
      }

      LODWORD(__src[0]) = 136316418;
      *(__src + 4) = "segPumpPrimeRecoverySequenceNumberAndOffsetIfPending";
      WORD2(__src[1]) = 2114;
      *(&__src[1] + 6) = v61;
      HIWORD(__src[2]) = 2048;
      __src[3] = v409;
      LOWORD(__src[4]) = 2048;
      *(&__src[4] + 2) = v63;
      WORD1(__src[5]) = 2048;
      *(&__src[5] + 4) = v64;
      WORD2(__src[6]) = 2114;
      v17 = __src;
      *(&__src[6] + 6) = v66;
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v67, v68, v69, v70, v71, v414, type[0], v72);
      OUTLINED_FUNCTION_403_1();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_345_0(v73, v74, v75, v76, v77);
    v31 = 0;
    v7 = v424;
  }

  else
  {
    v31 = 0;
  }

LABEL_52:
  *v18 = -1;
  a3[18] = -1;
  a3[19] = 0;
  v439 = v43;
  FirstValue = ValueAtIndex;
LABEL_53:
  LODWORD(v424) = v31;
  if (*(a3 + 861))
  {
    *type = 0.0;
    if (segPumpGetSafeNetworkBandwidth(v7, type, 0, 1))
    {
      goto LABEL_193;
    }

    bzero(&__src[1], 0xD8uLL);
    segPumpMakeNetworkPredictionInput(v7, __src);
    v446 = 0;
    v444 = 0u;
    v445 = 0u;
    v442 = 0u;
    v443 = 0u;
    *v441 = 0u;
    v78 = *(v7 + 112);
    __src[2] = 60000000000;
    __src[0] = v78;
    __src[21] |= 8uLL;
    v79 = *(v7 + 96);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v80 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    v81 = 0.0;
    if (v80)
    {
      memcpy(__dst, __src, sizeof(__dst));
      if (!v80(v79, UpTimeNanoseconds, __dst, v441))
      {
        v81 = v443;
      }
    }

    if (!*(v7 + 8218) && *(a3 + 115) != 0.0 && *(a3 + 116) > 0.0)
    {
      *__dst = *(a3 + 12) - *(a3 + 113);
      v82 = OUTLINED_FUNCTION_280_0();
      matched = segPumpTryToMatchDate(v82, v83, v84, v85, v86, v87, v88);
      if (matched == -1 && *&v437 > 0.0)
      {
        if (*&v437 <= *(a3 + 117) - *(a3 + 115))
        {
          v90 = *&v437 + *__dst;
          v91 = *&v437 + *(a3 + 116);
          goto LABEL_94;
        }
      }

      else if (!matched)
      {
        v90 = *__dst;
        v91 = *(a3 + 116);
LABEL_94:
        segPumpStreamSyncTimeRolledPast(a3, v90, v91);
      }

      a3[116] = 0;
    }

    if (v31)
    {
      v113 = *(a3 + 12) - *(a3 + 113);
      *__dst = v113;
      if (*(v7 + 8328) && (v114 = *(v7 + 7880)) != 0 && *(a3 + 864))
      {
        PeakBitRate = FigAlternateGetPeakBitRate(*(v114 + 8));
        v116 = PeakBitRate > FigAlternateGetPeakBitRate(*(*(v7 + 8328) + 8));
      }

      else
      {
        v116 = 0;
      }

      if (*(a3 + 115) == 0.0)
      {
        v117 = -1;
      }

      else
      {
        v118 = OUTLINED_FUNCTION_280_0();
        v117 = segPumpTryToMatchDate(v118, v119, v120, v121, v122, v123, v113);
      }

      LODWORD(v414) = v116;
      if (v116)
      {
        LODWORD(v409) = 0;
        goto LABEL_113;
      }

      v124 = a3[7];
      if (v124 && ((PlaylistType = FigMediaPlaylistGetPlaylistType(a3[7]), !v117) || PlaylistType == 2) && !*a3)
      {
        v126 = v419;
        if (FigMediaPlaylistHasIndependentSegments(v124))
        {
          v337 = *(*(v7 + 408) + 16) == 0;
        }

        else
        {
          v337 = 1;
        }

        LODWORD(v409) = v337;
      }

      else
      {
        LODWORD(v409) = 1;
LABEL_113:
        v126 = v419;
      }

      UpTimeNanoseconds = &stru_1F0B1AFB8;
      v404 = a3[7];
      v127 = *__dst;
      v128 = a3[111];
      v129 = (v128 - FigGetUpTimeNanoseconds()) / 1000000000.0;
      v419 = v117;
      HIDWORD(v399) = v117 == 0;
      v130 = v126;
      v131 = *type;
      v132 = (a3[56] - a3[112]) / 1000000000.0;
      v133 = a3[118];
      v134 = a3[39];
      v135 = *type;
      v136 = v81 / 1000000000.0;
      v137 = !segPumpConnectedInterfaceIsWWAN(v7) && *a3 <= 1 && *(a3 + 864) == 0;
      DoesBandwidthAllowAggressiveWalkback = FigMediaPlaylistUtilityDoesBandwidthAllowAggressiveWalkback(v135, v126);
      v17 = *a3;
      OUTLINED_FUNCTION_325_0();
      if (!_ZF)
      {
        UpTimeNanoseconds = v139;
      }

      v140 = *(v7 + 347);
      MinimumPrebufferReservation = segPumpGetMinimumPrebufferReservation(v7, 0);
      v142 = FigMediaPlaylistUtilityDetermineSegmentToSwitchTo(v404, 0, SHIDWORD(v399), v133, v134, 1, DoesBandwidthAllowAggressiveWalkback & v137, v414, v127, v129, v130, *&v131, v132, v136, MinimumPrebufferReservation + *(v7 + 8176), *(v7 + 8888), v409, v17, UpTimeNanoseconds, v140, segPumpSetDeliveryStatusForMediaFileAndParts, &v439, &FirstValue);
      v92 = v419;
      if (v142)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v92 = -1;
    }

    a3[115] = 0;
    a3[15] = 0xBFF0000000000000;
    *(a3 + 861) = 0;
    a3[117] = 0;
    goto LABEL_122;
  }

  if (*(a3 + 115) == 0.0)
  {
    v92 = -1;
    goto LABEL_122;
  }

  v93 = a3 + 115;
  v94 = OUTLINED_FUNCTION_280_0();
  v101 = segPumpTryToMatchDate(v94, v95, v96, v97, v98, v99, v100);
  v92 = v101;
  if (v101 == -1 && *&v437 > 0.0)
  {
    v102 = *(a3 + 117) - *(a3 + 115);
    v103 = *&v437 > v102;
    if (*&v437 <= v102)
    {
      segPumpStreamSyncTimeRolledPast(a3, 0.0, *&v437 + *(a3 + 116));
    }

    *v93 = 0;
    a3[116] = 0;
    a3[117] = 0;
    if (!v103)
    {
      goto LABEL_122;
    }
  }

  else
  {
    if (!v101)
    {
      if (!*(v7 + 8218))
      {
        v111 = *(a3 + 116);
        if (v111 > 0.0)
        {
          segPumpStreamSyncTimeRolledPast(a3, *(a3 + 15), v111);
        }
      }

      *v93 = 0;
      a3[116] = 0;
      a3[117] = 0;
      goto LABEL_122;
    }

    *v93 = 0;
    a3[116] = 0;
    a3[117] = 0;
    if (v101 != -1)
    {
LABEL_122:
      v143 = *(a3 + 15);
      if (v143 <= 0.0)
      {
        goto LABEL_181;
      }

      v144 = &off_196E72000;
      if (v143 >= FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]))
      {
        v419 = v92;
        v145 = 1.0;
        if (!FigMediaPlaylistHasEndTag(a3[7]))
        {
          v145 = segPumpGetMinimumPrebufferReservation(v7, a3[7]) + *(v7 + 8176);
        }

        OUTLINED_FUNCTION_302_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v147 = v441[0];
        v17 = type[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
        {
          UpTimeNanoseconds = v147;
        }

        else
        {
          UpTimeNanoseconds = v147 & 0xFFFFFFFE;
        }

        if (UpTimeNanoseconds)
        {
          v148 = &stru_1F0B1AFB8;
          if (v7)
          {
            OUTLINED_FUNCTION_325_0();
            if (!_ZF)
            {
              v148 = v149;
            }
          }

          v150 = *a3;
          v151 = a3[15];
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]);
          LODWORD(__src[0]) = 136316162;
          *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
          WORD2(__src[1]) = 2114;
          *(&__src[1] + 6) = v148;
          HIWORD(__src[2]) = 2048;
          __src[3] = v150;
          LOWORD(__src[4]) = 2048;
          *(&__src[4] + 2) = v151;
          WORD1(__src[5]) = 2048;
          *(&__src[5] + 4) = PlaylistActiveDurationSecs;
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl(v153, v154, v155, v156, v157, v158, v17, v159);
          v144 = &off_196E72000;
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_417(v160, v161, v162, v163, v164);
        *(a3 + 15) = fmax(FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]) - v145, 0.0);
        a3[16] = 0xBFF0000000000000;
        v92 = v419;
      }

      if (dword_1EAF16A30)
      {
        OUTLINED_FUNCTION_302_1();
        v172 = OUTLINED_FUNCTION_258_1(qword_1EAF16A28, v165, v166, v167, v168, v169, v170, v171, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v428, v432, type[0], v437, v438, v439, FirstValue, v441[0]);
        v180 = OUTLINED_FUNCTION_237_0(v172, v173, v174, v175, v176, v177, v178, v179, v365, v370, v375, v380, v385, v390, v395, v400, v405, v410, v415, v420, v425, v429, v433, type[0], v437, v438, v439, FirstValue, v441[0]);
        if (OUTLINED_FUNCTION_124_0(v180))
        {
          v181 = &stru_1F0B1AFB8;
          if (v7)
          {
            OUTLINED_FUNCTION_409_0();
            if (!_ZF)
            {
              v181 = v182;
            }
          }

          LODWORD(__src[0]) = *(v144 + 135);
          *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
          WORD2(__src[1]) = 2114;
          *(&__src[1] + 6) = v181;
          OUTLINED_FUNCTION_173_1();
          *(v184 + 34) = v183;
          WORD1(__src[5]) = v185;
          *(v184 + 44) = v186;
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_38();
          _os_log_send_and_compose_impl(v187, v188, v189, v190, v191, v192, v17, v193);
          OUTLINED_FUNCTION_403_1();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_345_0(v194, v195, v196, v197, v198);
      }

      HasEndTag = FigMediaPlaylistHasEndTag(a3[7]);
      if (!HasEndTag)
      {
        v236 = *(a3 + 16);
        if (v236 > 0.0)
        {
          if (v92)
          {
            v237 = a3[56] / 1000000000.0 - v236;
            v238 = FigMediaPlaylistGetPlaylistActiveDurationSecs(a3[7]) - v237;
            *(a3 + 15) = v238;
            if (v7)
            {
              OUTLINED_FUNCTION_325_0();
              v240 = _ZF ? &stru_1F0B1AFB8 : v239;
            }

            else
            {
              v240 = &stru_1F0B1AFB8;
            }

            *(a3 + 15) = FigMediaPlaylistUtilityEnsureOffsetInDiscDomain(v238, v240, *(v7 + 347), *a3, a3[39], a3[7], a3[118]);
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_302_1();
              v306 = OUTLINED_FUNCTION_258_1(qword_1EAF16A28, v299, v300, v301, v302, v303, v304, v305, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v428, v432, type[0], v437, v438, v439, FirstValue, v441[0]);
              v314 = OUTLINED_FUNCTION_237_0(v306, v307, v308, v309, v310, v311, v312, v313, v368, v373, v378, v383, v388, v393, v398, v403, v408, v413, v418, v423, v427, v431, v435, type[0], v437, v438, v439, FirstValue, v441[0]);
              if (OUTLINED_FUNCTION_124_0(v314))
              {
                OUTLINED_FUNCTION_325_0();
                OUTLINED_FUNCTION_373_1();
                LODWORD(__src[0]) = 136316418;
                *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
                WORD2(__src[1]) = 2114;
                *(&__src[1] + 6) = v315;
                OUTLINED_FUNCTION_173_1();
                *(v316 + 34) = v237;
                WORD1(__src[5]) = v317;
                *(v316 + 44) = v318;
                WORD2(__src[6]) = v317;
                *(v316 + 54) = v319 / v320;
                OUTLINED_FUNCTION_51();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v321, v322, v323, v324, v325, v326, v17, v327);
                OUTLINED_FUNCTION_403_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_345_0(v332, v333, v334, v335, v336);
            }
          }
        }
      }

      if (!OUTLINED_FUNCTION_429_1(HasEndTag, v200, v201, v202, v203, v204, v205, v206, v364, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v428, v432, *type, v437, v438, v439, 0))
      {
        v207 = 0.0;
        goto LABEL_174;
      }

      OUTLINED_FUNCTION_260_1();
      v207 = 0.0;
      while (1)
      {
        IsFragment = segPumpGetMediaFilePrivateData(v438, v10, v11, v12, v13, v14, v15, v16);
        if (!*(IsFragment + 96))
        {
          if (FigMediaSegmentSpecifierIsMarkedIndependent(v438))
          {
            v17 = FirstValue;
            UpTimeNanoseconds = v438;
          }

          if (v207 + FigMediaSegmentSpecifierGetTimeInSeconds(v438) > *(a3 + 15))
          {
LABEL_154:
            if (v439)
            {
              _ZF = !UpTimeNanoseconds || v439 == UpTimeNanoseconds;
              if (!_ZF)
              {
                v218 = *(segPumpGetMediaFilePrivateData(v439, v10, v11, v12, v13, v14, v15, v16) + 4);
                v226 = *(segPumpGetMediaFilePrivateData(UpTimeNanoseconds, v219, v220, v221, v222, v223, v224, v225) + 4);
                if (v17 != FigMediaSegmentSpecifierGetNextSegment(FirstValue))
                {
                  NextSegment = v17;
                  do
                  {
                    segPumpSetDeliveryStatusForMediaFileAndParts(NextSegment, 0, v227, v228, v229, v230, v231, v232);
                    NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
                  }

                  while (NextSegment != FigMediaSegmentSpecifierGetNextSegment(FirstValue));
                }

                FigMediaSegmentSpecifierGetPartialSegments(v17);
                for (k = FigCFArrayGetFirstValue(); k != UpTimeNanoseconds; k = FigMediaSegmentSpecifierGetNextSegment(v235))
                {
                  v235 = k;
                  if (!k)
                  {
                    break;
                  }

                  segPumpSetDeliveryStatusForMediaFileAndParts(k, 1, v11, v12, v13, v14, v15, v16);
                }

                v207 = v207 - (v218 - v226);
                v439 = UpTimeNanoseconds;
                FirstValue = v17;
              }
            }

LABEL_174:
            if (dword_1EAF16A30)
            {
              OUTLINED_FUNCTION_302_1();
              v248 = OUTLINED_FUNCTION_258_1(qword_1EAF16A28, v241, v242, v243, v244, v245, v246, v247, v366, v371, v376, v381, v386, v391, v396, v401, v406, v411, v416, v421, v424, v428, v432, type[0], v437, v438, v439, FirstValue, v441[0]);
              v256 = OUTLINED_FUNCTION_237_0(v248, v249, v250, v251, v252, v253, v254, v255, v367, v372, v377, v382, v387, v392, v397, v402, v407, v412, v417, v422, v426, v430, v434, type[0], v437, v438, v439, FirstValue, v441[0]);
              if (OUTLINED_FUNCTION_124_0(v256))
              {
                v257 = &stru_1F0B1AFB8;
                if (v7)
                {
                  OUTLINED_FUNCTION_409_0();
                  if (!_ZF)
                  {
                    v257 = v258;
                  }
                }

                LODWORD(__src[0]) = 136315906;
                *(__src + 4) = "segPumpDetermineMediaSegmentToDeliver";
                WORD2(__src[1]) = 2114;
                *(&__src[1] + 6) = v257;
                OUTLINED_FUNCTION_173_1();
                *(v259 + 34) = v207;
                OUTLINED_FUNCTION_95_1();
                OUTLINED_FUNCTION_38();
                _os_log_send_and_compose_impl(v260, v261, v262, v263, v264, v265, v17, v266, __src);
                OUTLINED_FUNCTION_403_1();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_345_0(v267, v268, v269, v270, v271);
            }

LABEL_181:
            __asm { FMOV            V0.2D, #-1.0 }

            *(a3 + 15) = _Q0;
            if ((v424 & 1) == 0)
            {
              *(a3 + 863) = 1;
            }

            v276 = FirstValue;
            if (FirstValue)
            {
              while (1)
              {
                v277 = segPumpGetMediaFilePrivateData(v276, v10, v11, v12, v13, v14, v15, v16);
                if (!v277[73] && !v277[96] && !v277[99])
                {
                  break;
                }

                v276 = FigMediaSegmentSpecifierGetNextSegment(FirstValue);
                FirstValue = v276;
                if (!v276)
                {
                  goto LABEL_188;
                }
              }

              m = v439;
              if (v439)
              {
                goto LABEL_232;
              }

              v297 = FirstValue;
              v298 = FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
              if (FigMediaSegmentSpecifierIsFragment(v297))
              {
LABEL_196:
                m = v439;
                if (v439)
                {
                  goto LABEL_232;
                }

                FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
                for (m = FigCFArrayGetFirstValue(); ; m = FigMediaSegmentSpecifierGetNextSegment(v439))
                {
                  v439 = m;
                  if (!m)
                  {
                    break;
                  }

LABEL_232:
                  v363 = segPumpGetMediaFilePrivateData(m, v278, v279, v280, v281, v282, v283, v284);
                  if (!v363[73] && !v363[96] && !v363[99])
                  {
                    if (v439)
                    {
                      goto LABEL_237;
                    }

                    break;
                  }
                }

                FirstValue = 0;
                goto LABEL_188;
              }

              if (v298 && CFArrayGetCount(v298) >= 1)
              {
                v338 = FigCFArrayGetFirstValue();
                v346 = segPumpGetMediaFilePrivateData(v338, v339, v340, v341, v342, v343, v344, v345);
                if (v346[73] || v346[96] || v346[99])
                {
                  goto LABEL_210;
                }

                v360 = FigCFArrayGetFirstValue();
                if (v360 && a3[97] >= 1)
                {
                  v361 = a3[96];
                  while (!*v361 || *(*v361 + 8) != v360)
                  {
                    OUTLINED_FUNCTION_309_1();
                    if (_ZF)
                    {
                      goto LABEL_229;
                    }
                  }

                  goto LABEL_210;
                }

LABEL_229:
                v362 = FigCFArrayGetFirstValue();
                if (v362 == FigCFArrayGetLastValue())
                {
LABEL_210:
                  LastValue = FigCFArrayGetLastValue();
                  v355 = segPumpGetMediaFilePrivateData(LastValue, v348, v349, v350, v351, v352, v353, v354);
                  if (!v355[73] && !v355[96] && !v355[99])
                  {
                    goto LABEL_196;
                  }
                }
              }

LABEL_237:
              if (!FirstValue)
              {
                goto LABEL_188;
              }
            }

            else
            {
LABEL_188:
              FigMediaPlaylistGetMediaSegmentSpecifiers(a3[7]);
              v285 = FigCFArrayGetLastValue();
              v293 = segPumpGetMediaFilePrivateData(v285, v286, v287, v288, v289, v290, v291, v292);
              if (FigMediaPlaylistHasEndTag(a3[7]) && v293[73] && !*(a3 + 871))
              {
                v328 = OUTLINED_FUNCTION_770();
                segPumpDispatchAsyncMediaDelivery(v328, v329, -1, -1, v330, v331);
              }
            }

            v294 = v439;
            *v428 = FirstValue;
            *v432 = v294;
            goto LABEL_193;
          }

          segPumpSetDeliveryStatusForMediaFileAndParts(v438, 1, v11, v12, v13, v14, v15, v16);
          v207 = v207 + FigMediaSegmentSpecifierGetTimeInSeconds(v438);
          v216 = v438;
          if (v438 == v439)
          {
            FigMediaSegmentSpecifierGetPartialSegments(FirstValue);
            IsFragment = FigCFArrayGetLastValue();
            if (v216 == IsFragment)
            {
              IsFragment = FigMediaSegmentSpecifierIsFragment(FirstValue);
              if (!IsFragment)
              {
                IsFragment = segPumpSetDeliveryStatusForMediaFileAndParts(FirstValue, 1, v210, v211, v212, v213, v214, v215);
              }
            }
          }
        }

        if (!OUTLINED_FUNCTION_429_1(IsFragment, v209, v210, v211, v212, v213, v214, v215, v366, v371, v376, v381, v386, v391, v396, v401, v406, v411, v416, v421, v424, v428, v432, *type, v437, v438, v439, FirstValue))
        {
          goto LABEL_154;
        }
      }
    }
  }

  if (*(v7 + 8218))
  {
    goto LABEL_122;
  }

  v104 = 392;
  if (!*a3)
  {
    v104 = 408;
  }

  v105 = *(v7 + v104);
  v106 = *(v105 + 56);
  if (v106)
  {
    *&__dst[0] = 0;
    v107 = FigMediaPlaylistGetPlaylistActiveDurationSecs(v106);
    v108 = segPumpGetMinimumPrebufferReservation(v7, *(v105 + 56));
    segPumpGetLastDiscAndDateForTimeReadInPlaylist(*(v105 + 56), 0, __dst, v107 - (v108 + *(v7 + 8176)));
    if (*__dst != 0.0)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v357 = CFDateCreate(AllocatorForMedia, *__dst);
      segPumpSyncTimeRolledPastToExistingStream(UpTimeNanoseconds, v7, a3, v357);
      if (v357)
      {
        CFRelease(v357);
      }
    }
  }

  v109 = MEMORY[0x1E6960C70];
  while (1)
  {
    v110 = *(v7 + 392);
    if (v110[2])
    {
      if (segPumpMakeDataCallbackWithOSStatus(UpTimeNanoseconds, v110, *(v7 + 176), 0, 8u, v110[38], v109, 0, -1, 0, 0, 0))
      {
        break;
      }
    }

    OUTLINED_FUNCTION_408_1();
    if (_ZF)
    {
      __dst[0] = *MEMORY[0x1E6960C88];
      *&__dst[1] = *(MEMORY[0x1E6960C88] + 16);
      segPumpSetCurrentTime(UpTimeNanoseconds, __dst, MEMORY[0x1E6960C70], 0, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], 0, v369, v374, v379, v384, v389, v394, v399, v404, v409, v414, v419, v424, v428, v432, *type, v437, v438, v439, FirstValue, *v441);
      break;
    }
  }

LABEL_193:
  OUTLINED_FUNCTION_451_0();
  return result;
}

uint64_t segPumpStreamReadAheadPermitsNextRead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8896))
  {
    return 1;
  }

  if (*(a1 + 8393))
  {
    return 1;
  }

  v4 = *(a2 + 768);
  if (!*v4)
  {
    return 1;
  }

  if (a3)
  {
    v5 = *(a2 + 776);
    if (v5 >= 1)
    {
      while (!*v4 || *(*v4 + 8) != a3)
      {
        v4 += 8;
        if (!--v5)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t segPumpCheckCachedVariantsAndRequestSwitch(void *a1, uint64_t a2, const void *a3, NSObject *os_log_and_send_and_compose_flags_and_os_log_type)
{
  valuePtr[16] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_411_1();
  v10 = *(v9 + 9760);
  v11 = *(v9 + 9728);
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v11)
  {
    v82 = CFRetain(v11);
  }

  else
  {
    v82 = 0;
  }

  v84 = 0;
  if (!*(a1 + 8424) || (OUTLINED_FUNCTION_299_0(), !v12) || *(a2 + 256))
  {
    OUTLINED_FUNCTION_260_1();
    v25 = 0;
LABEL_80:
    LongestContiguousMediaStreamInCacheAtTime = 0;
LABEL_81:
    v60 = v82;
    if (!v82)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (a3)
  {
    v22 = *(segPumpGetMediaFilePrivateData(a3, v14, v15, v16, v17, v18, v19, v20) + 4);
  }

  else
  {
    v22 = 0.0;
  }

  v88 = v22;
  v23 = v22;
  if (!*(a2 + 872))
  {
    LODWORD(v21) = *(a1 + 2);
    v23 = v22 - v21;
    v88 = v23;
  }

  if (v23 < 0.0)
  {
    v88 = 0.0;
    v23 = 0.0;
  }

  v81 = v13;
  v24 = a1[1052];
  if (v24)
  {
    valuePtr[0] = 0.0;
    CFNumberGetValue(v24, kCFNumberDoubleType, valuePtr);
    if (valuePtr[0] <= v88)
    {
      v23 = v88;
    }

    else
    {
      v23 = valuePtr[0];
    }

    v88 = v23;
  }

  v25 = 0;
  v26 = 0;
  v4 = 0;
  while (1)
  {
    valuePtr[0] = 0.0;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    LongestContiguousMediaStreamInCacheAtTime = FigStreamingCacheGetLongestContiguousMediaStreamInCacheAtTime(a1[37], *a2, &v85, &v87, &cf, valuePtr, v23);
    if (LongestContiguousMediaStreamInCacheAtTime)
    {
      goto LABEL_102;
    }

    v28 = v88;
    v29 = valuePtr[0];
    if (v25)
    {
      v30 = 1;
    }

    else
    {
      v4 = v85;
      if (v87)
      {
        v25 = CFRetain(v87);
        v30 = 0;
      }

      else
      {
        v30 = 0;
        v25 = 0;
      }
    }

    *(a2 + 405) = v30;
    LODWORD(v31) = os_log_and_send_and_compose_flags_and_os_log_type == 0;
    if (!os_log_and_send_and_compose_flags_and_os_log_type)
    {
      LODWORD(v31) = 1;
      if (v87)
      {
        AlternateEntryFromURLForCacheLookup = segPumpGetAlternateEntryFromURLForCacheLookup(a1, v87, cf);
        if (!AlternateEntryFromURLForCacheLookup)
        {
          goto LABEL_102;
        }

        v31 = a1[1041];
        if (v31)
        {
          LODWORD(v31) = *(AlternateEntryFromURLForCacheLookup + 6) < *(v31 + 24);
        }
      }
    }

    v33 = v23 - v28 + v29;
    v34 = v85;
    if (v85 == v26 || !v87 || v31)
    {
      break;
    }

    v35 = v33 + v88;
    if (!*(a2 + 872))
    {
      v35 = v35 - (*(a1 + 2) >> 1);
    }

    if (v35 <= v23)
    {
      goto LABEL_102;
    }

    CFRelease(v87);
    v87 = 0;
    v23 = v35;
    v26 = v34;
    if (v33 > 60.0)
    {
      goto LABEL_51;
    }
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v25 = 0;
  v35 = v23;
LABEL_51:
  if (v35 + v33 <= v22 + 1.0)
  {
    segPumpClearSuggestedAlternate(a1, 1);
  }

  if (!v25 || v4 == *(a2 + 64))
  {
    OUTLINED_FUNCTION_260_1();
    goto LABEL_80;
  }

  if (dword_1EAF16A30)
  {
    OUTLINED_FUNCTION_297_1();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v4 = type;
    v36 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_16_1(v36))
    {
      OUTLINED_FUNCTION_392_1();
      v89 = 136316418;
      v90 = "segPumpCheckCachedVariantsAndRequestSwitch";
      v91 = 2114;
      OUTLINED_FUNCTION_37_0();
      v92 = v37;
      v93 = v38;
      v94 = v39;
      v95 = v40;
      v96 = v39;
      v97 = v33;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v41, v42, v43, v44, v45, v46, type, v47);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v48, v49, v50, v51, v52);
  }

  v53 = OUTLINED_FUNCTION_171();
  LongestContiguousMediaStreamInCacheAtTime = segPumpGetAlternateEntryFromURLForCacheLookup(v53, v54, v55);
  if (!LongestContiguousMediaStreamInCacheAtTime)
  {
    goto LABEL_102;
  }

  v56 = a1[1052];
  if (v56)
  {
    CFRelease(v56);
    a1[1052] = 0;
  }

  v57 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v88);
  a1[1052] = v57;
  if (!v57)
  {
    OUTLINED_FUNCTION_260_1();
LABEL_104:
    LongestContiguousMediaStreamInCacheAtTime = 4294954655;
    goto LABEL_81;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = a1[1051];
  v58 = *(LongestContiguousMediaStreamInCacheAtTime + 8);
  a1[1051] = v58;
  if (v58)
  {
    CFRetain(v58);
  }

  if (os_log_and_send_and_compose_flags_and_os_log_type)
  {
    CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
  }

  if (v81)
  {
    v59 = FigAlternateSkipEqualOrLowerBitratesFilterCreate(a1[7], a1[1051], @"PartialCache", 630, &v84);
    if (!v59)
    {
      v59 = FigAlternateSelectionBossAddFilter(a1[1216], v84);
      if (!v59)
      {
        v60 = v82;
        LongestContiguousMediaStreamInCacheAtTime = FigAlternateSelectionBossApplyFilters(v82);
        OUTLINED_FUNCTION_260_1();
        if (v82)
        {
          goto LABEL_82;
        }

        goto LABEL_83;
      }
    }

    LongestContiguousMediaStreamInCacheAtTime = v59;
LABEL_102:
    OUTLINED_FUNCTION_260_1();
    goto LABEL_81;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  os_log_and_send_and_compose_flags_and_os_log_type = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!os_log_and_send_and_compose_flags_and_os_log_type)
  {
    v4 = 0;
    goto LABEL_104;
  }

  v62 = a1[1052];
  if (v62)
  {
    v4 = CFRetain(v62);
  }

  else
  {
    v4 = 0;
  }

  CFDictionaryAddValue(os_log_and_send_and_compose_flags_and_os_log_type, @"FBP_AlternateValue", *(LongestContiguousMediaStreamInCacheAtTime + 8));
  v63 = OUTLINED_FUNCTION_406();
  CFDictionaryAddValue(v63, v64, v65);
  segPumpReadyNotification(a1, @"FBP_SuggestedAlternate", os_log_and_send_and_compose_flags_and_os_log_type);
  if (FigRetainProxyGetLockCount() < 2)
  {
    segPumpUnlockAndSendAllPendingNotifications(*a1);
    FigRetainProxyLockMutex();
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_297_1();
  v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v67 = os_log_type_enabled(v66, type);
  if (OUTLINED_FUNCTION_71_0(v67))
  {
    OUTLINED_FUNCTION_392_1();
    v89 = 136315650;
    v90 = "segPumpCheckCachedVariantsAndRequestSwitch";
    v91 = 2114;
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_51_0();
    _os_log_send_and_compose_impl(v68, v69, v70, v71, v72, v73, type, v74);
  }

  v60 = v82;
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_449(v76, v77, v78, v79, v80);
  LongestContiguousMediaStreamInCacheAtTime = 4294954651;
  if (v82)
  {
LABEL_82:
    CFRelease(v60);
  }

LABEL_83:
  if (v84)
  {
    CFRelease(v84);
  }

  if (v87)
  {
    CFRelease(v87);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (os_log_and_send_and_compose_flags_and_os_log_type)
  {
    CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return LongestContiguousMediaStreamInCacheAtTime;
}

uint64_t segPumpIsMediaSegmentWaitingOnCryptKey(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = FigMediaSegmentSpecifierGetContentKeySpecifier(result);
    if (result)
    {
      FigMediaSegmentSpecifierGetContentKeySpecifier(v1);
      OUTLINED_FUNCTION_152_1();
      return !segPumpGetCryptKeyCommonData(v2, v3, v4) && OUTLINED_FUNCTION_412_1(MEMORY[0x98]);
    }
  }

  return result;
}

void segPumpDeliverEnd()
{
  OUTLINED_FUNCTION_369();
  OUTLINED_FUNCTION_140_0();
  segPumpLockAndCopyPumpFromRetainProxy();
  if (DataCallback)
  {
    goto LABEL_6;
  }

  if (*(v1 + 857))
  {
    *(v1 + 857) = 0;
  }

  OUTLINED_FUNCTION_307_1();
  DataCallback = segPumpMakeDataCallback(v3, v1, v4, 0, v5, v6, MEMORY[0x1E6960C70], 0, v7, v8, v9, v10);
  *(v1 + 1152) = 1;
  if (DataCallback)
  {
LABEL_6:
    segPumpSendEndCallbackForAllActiveStreamsWithOSStatus(v0, DataCallback);
  }

  segPumpUnlockAndSendAllPendingNotifications(v0);
}

void segPumpSetCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int *a29)
{
  OUTLINED_FUNCTION_813();
  v30 = v29;
  v341 = v32;
  v345 = v31;
  v34 = v33;
  v36 = v35;
  v357 = v37;
  v39 = v38;
  v41 = v40;
  v403 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  flags = v39->flags;
  segPumpAPILockAndEnsureAPIStatus(v41, 1);
  if (v44)
  {
    goto LABEL_199;
  }

  if (v39->value < 0)
  {
    OUTLINED_FUNCTION_374();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", p_rhs, v288, v292);
LABEL_199:
    v258 = v44;
    goto LABEL_187;
  }

  MinTime = segPumpGetMinTime(DerivedStorage);
  MaxTime = segPumpGetMaxTime(DerivedStorage);
  v47 = OUTLINED_FUNCTION_249();
  v349 = segPumpGetMinimumPrebufferReservation(v47, v48) + *(DerivedStorage + 8176);
  LODWORD(v380) = flags & 5;
  if (v380 == 5 && !*(DerivedStorage + 8218))
  {
    LODWORD(rhs.value) = 0;
    segPumpCanContinueWithoutGap(DerivedStorage, &rhs);
    if (LODWORD(rhs.value) == 7 && (*(v357 + 12) & 1) != 0)
    {
      OUTLINED_FUNCTION_105(v357);
      if (CMTimeGetSeconds(&time) >= MaxTime - v349)
      {
        v258 = 4294950458;
        goto LABEL_187;
      }
    }
  }

  if (v34)
  {
    v49 = *(DerivedStorage + 392);
    if (!*(v49 + 872))
    {
      time = *v30;
      Seconds = CMTimeGetSeconds(&time);
      CMTimeMakeWithSeconds(&rhs, Seconds * 1.5, 1000);
      lhs = *v39;
      CMTimeSubtract(&time, &lhs, &rhs);
      *v39 = time;
      v49 = *(DerivedStorage + 392);
    }

    v51 = *(v49 + 56);
    v52 = v357;
    if (v51 && (MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v51)) != 0 && CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
    {
      v54 = 0;
      *(DerivedStorage + 8897) = 0;
      *(DerivedStorage + 8952) = 0;
    }

    else
    {
      v54 = 0;
    }

    HIDWORD(v326) = 1;
  }

  else
  {
    if ((*(v345 + 12) & 0x1D) == 1 && (*(v341 + 12) & 0x1D) == 1 && ((OUTLINED_FUNCTION_105(v345), *cf = *MEMORY[0x1E6960CC0], *&rhs.value = *MEMORY[0x1E6960CC0], v55 = *(MEMORY[0x1E6960CC0] + 16), rhs.epoch = v55, CMTimeCompare(&time, &rhs)) || (OUTLINED_FUNCTION_105(v341), *&rhs.value = *cf, rhs.epoch = v55, CMTimeCompare(&time, &rhs))))
    {
      HIDWORD(v326) = 0;
      v54 = 1;
    }

    else
    {
      v54 = 0;
      HIDWORD(v326) = 1;
    }

    v52 = v357;
  }

  v353 = v41;
  if (*(v52 + 12))
  {
    OUTLINED_FUNCTION_416_1();
    rhs = *v52;
    v56 = CMTimeCompare(&time, &rhs) > 0;
  }

  else
  {
    v56 = 0;
  }

  OUTLINED_FUNCTION_416_1();
  v57 = CMTimeGetSeconds(&time);
  time = *v52;
  v58 = CMTimeGetSeconds(&time);
  if (dword_1EAF16A30)
  {
    LODWORD(lhs.value) = 0;
    HIBYTE(v380) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v60 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_115_1(v60))
    {
      OUTLINED_FUNCTION_337_1();
      if (v91)
      {
        v61 = &stru_1F0B1AFB8;
      }

      LODWORD(rhs.value) = 136316162;
      *(&rhs.value + 4) = "segPumpSetCurrentTime";
      LOWORD(rhs.flags) = 2114;
      *(&rhs.flags + 2) = v61;
      HIWORD(rhs.epoch) = 2048;
      v395 = v57;
      v396 = 2048;
      v397 = v58;
      v398 = 1024;
      LODWORD(v399) = v56;
      LODWORD(v288) = 48;
      p_rhs = &rhs;
      OUTLINED_FUNCTION_65();
      _os_log_send_and_compose_impl(v62, v63, v64, v65, v66, v67, 0, v68);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v69, v70, v71, v72, v73);
  }

  v365 = a29;
  if (*(DerivedStorage + 8218))
  {
    if (v57 > MaxTime && (v74 = *(*(DerivedStorage + 392) + 56)) != 0 && (v75 = FigMediaPlaylistGetMediaSegmentSpecifiers(v74)) != 0 && CFArrayGetCount(v75) >= 1 || v57 == MaxTime)
    {
      v57 = MaxTime + -0.001;
    }
  }

  v76 = 0;
  v77 = DerivedStorage + 392;
  v78 = 1;
  do
  {
    v79 = v78;
    v80 = *(v77 + 16 * v76);
    v81 = *(v80 + 56);
    if (v81)
    {
      v82 = FigMediaPlaylistGetMediaSegmentSpecifiers(v81);
      if (v82)
      {
        if (CFArrayGetCount(v82) >= 1)
        {
          if (*(DerivedStorage + 8218))
          {
            if (v56)
            {
              v83 = *(v80 + 56);
              if (v83)
              {
                FigMediaPlaylistGetMediaSegmentSpecifiers(v83);
                LastValue = FigCFArrayGetLastValue();
                if (!LastValue || MaxTime - FigMediaSegmentSpecifierGetTimeInSeconds(LastValue) <= v58)
                {
LABEL_186:
                  OUTLINED_FUNCTION_374();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
                  v258 = v282;
                  goto LABEL_187;
                }
              }
            }
          }

          if (v57 < MinTime)
          {
            v57 = MinTime;
          }
        }
      }
    }

    v78 = 0;
    v76 = 1;
  }

  while ((v79 & 1) != 0);
  v85 = v57 <= v58 || (*(v357 + 12) & 1) == 0;
  v86 = v57 >= MinTime && v57 <= MaxTime;
  for (i = 392; i != 440; i += 16)
  {
    v88 = *(DerivedStorage + i);
    if (*(v88 + 16))
    {
      v89 = *(v88 + 56);
      if (v89)
      {
        v90 = FigMediaPlaylistGetMediaSegmentSpecifiers(v89);
        if (v90)
        {
          if (CFArrayGetCount(v90) >= 1)
          {
            OUTLINED_FUNCTION_269_0();
            v91 = !v91 && *(DerivedStorage + 8218) == 0;
            v92 = !v91;
            if (!v92 && !v86)
            {
              goto LABEL_186;
            }
          }
        }
      }
    }
  }

  *(DerivedStorage + 8864) = v36;
  segPumpClearSuggestedAlternate(DerivedStorage, 1);
  v93 = *(DerivedStorage + 296);
  if (v93)
  {
    FigStreamingCacheHintPlaybackTime(v93, v57);
  }

  segPumpClearStatistics(DerivedStorage);
  for (j = 0; j != 3; ++j)
  {
    OUTLINED_FUNCTION_317_0();
    if (v223 == v95)
    {
      do
      {
        OUTLINED_FUNCTION_167_1();
        segPumpStreamCancelReadAheadAndResetDataAtIndex(v96, v97, v98);
        OUTLINED_FUNCTION_283_1();
      }

      while (v223 != v95);
    }
  }

  for (k = 392; k != 440; k += 16)
  {
    segPumpStreamCancelPreloadReadAndResetData(DerivedStorage, *(DerivedStorage + k));
  }

  for (m = 392; m != 440; m += 16)
  {
    segPumpStreamCancelPreloadMapReadAndResetData(DerivedStorage, *(DerivedStorage + m));
  }

  v101 = 0;
  cf[0] = 0;
  if (MaxTime - v349 >= 0.0)
  {
    v102 = MaxTime - v349;
  }

  else
  {
    v102 = 0.0;
  }

  OUTLINED_FUNCTION_269_0();
  v104 = v54 | v85;
  if (v91)
  {
    v104 = 1;
  }

  HIDWORD(v361) = v104;
  v105 = 1000000000.0;
  *&v103 = 136315906;
  *v315 = v103;
  *&v103 = 136316162;
  *v330 = v103;
  v106 = -1000000000.0;
  *&v103 = 136316418;
  *v308 = v103;
  v107 = &unk_1EAF16000;
  do
  {
    v108 = *(v77 + 16 * v101);
    ++*(v108 + 880);
    OUTLINED_FUNCTION_246_0();
    OUTLINED_FUNCTION_265_0();
    segPumpCancelMediaFileReadAndResetData(v109, v110, v111, v112);
    v113 = OUTLINED_FUNCTION_246_0();
    segPumpSetStreamDiscontinuityDomain(v113, v114, 0);
    if (!*(*(v77 + 16 * v101) + 16))
    {
      goto LABEL_167;
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v115 = *(v108 + 56);
    if (!v115)
    {
      goto LABEL_111;
    }

    v116 = FigMediaPlaylistGetMediaSegmentSpecifiers(v115);
    if (!v116 || CFArrayGetCount(v116) < 1)
    {
      goto LABEL_111;
    }

    v117 = 0;
    v118 = 1;
    if (!*(DerivedStorage + 8218))
    {
      v119 = v57;
      if (v57 <= v102)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_269_0();
      if (!v91 && v107[652])
      {
        v128 = OUTLINED_FUNCTION_74_1(v120, v121, v122, v123, v124, v125, v126, v127, p_rhs, v288, v292, v296, v300, v304, v308[0], v308[1], v315[0], v315[1], v322, v326, v330[0], v330[1], v337, v341, v345, *&v349, v353, v357, v361, v365, cf[0], cf[1], v376, v380, SWORD2(v380), SBYTE6(v380), SHIBYTE(v380), lhs.value);
        v136 = OUTLINED_FUNCTION_242_1(v128, v129, v130, v131, v132, v133, v134, v135, v285, v289, v293, v297, v301, v305, v309, v312, v316, v319, v323, v327, v331, v334, v338, v342, v346, v350, v354, v358, v362, v366, cfa, cf_8, v377, v381, v384, v387, type, lhs.value);
        if (OUTLINED_FUNCTION_16_1(v136))
        {
          OUTLINED_FUNCTION_337_1();
          LODWORD(rhs.value) = v308[0];
          *(&rhs.value + 4) = "segPumpSetCurrentTime";
          LOWORD(rhs.flags) = 2114;
          OUTLINED_FUNCTION_124_1();
          v397 = v57;
          v398 = v137;
          v399 = MaxTime;
          v400 = v137;
          v401 = v349;
          OUTLINED_FUNCTION_97_1();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl(v138, v139, v140, v141, v142, v143, v144, "<SEGPUMP> %s: %{public}@:%ld: Seeking will wait for enough prebufferReservation. seekTime %g, endTime %g, needs prebufferReservation %g");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v145, v146, v147, v148, v149);
      }

      v150 = *(v108 + 1056) + 1000000000 * *(DerivedStorage + 8);
      if (FigGetUpTimeNanoseconds() >= v150 || *(v108 + 1184))
      {
        OUTLINED_FUNCTION_269_0();
        if (v91)
        {
          v118 = 0;
          v117 = 0;
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          v117 = CFDateCreate(*(DerivedStorage + 56), v57 + Current + (UpTimeNanoseconds - *(v108 + 1064)) / v106 - *(v108 + 96) - *(v108 + 88));
          v118 = 0;
        }

        goto LABEL_112;
      }

      OUTLINED_FUNCTION_269_0();
      if (v91)
      {
        if (v107[652])
        {
          v161 = OUTLINED_FUNCTION_74_1(v153, v154, v155, v156, v157, v158, v159, v160, p_rhs, v288, v292, v296, v300, v304, v308[0], v308[1], v315[0], v315[1], v322, v326, v330[0], v330[1], v337, v341, v345, *&v349, v353, v357, v361, v365, cf[0], cf[1], v376, v380, SWORD2(v380), SBYTE6(v380), SHIBYTE(v380), lhs.value);
          v169 = OUTLINED_FUNCTION_242_1(v161, v162, v163, v164, v165, v166, v167, v168, v286, v290, v294, v298, v302, v306, v310, v313, v317, v320, v324, v328, v332, v335, v339, v343, v347, v351, v355, v359, v363, v367, cfb, cf_8a, v378, v382, v385, v388, typea, lhs.value);
          if (OUTLINED_FUNCTION_16_1(v169))
          {
            OUTLINED_FUNCTION_337_1();
            LODWORD(rhs.value) = v330[0];
            *(&rhs.value + 4) = "segPumpSetCurrentTime";
            LOWORD(rhs.flags) = 2114;
            OUTLINED_FUNCTION_124_1();
            v397 = v57;
            v398 = v170;
            v399 = v102;
            OUTLINED_FUNCTION_97_1();
            OUTLINED_FUNCTION_108();
            OUTLINED_FUNCTION_160_1();
            _os_log_send_and_compose_impl(v171, v172, v173, v174, v175, v176, v177, "<SEGPUMP> %s: %{public}@:%ld: limiting seek time %1.5g to %1.5g");
          }

          OUTLINED_FUNCTION_109();
          v118 = 1;
          OUTLINED_FUNCTION_88_0(v277, v278, v279, v280, v281);
          v117 = 0;
        }

        else
        {
          v117 = 0;
          v118 = 1;
        }

        v119 = v102;
        goto LABEL_113;
      }

LABEL_111:
      v117 = 0;
      v118 = 1;
    }

LABEL_112:
    v119 = v57;
LABEL_113:
    *(v108 + 857) = 1;
    if (v365 && !*(DerivedStorage + 8896))
    {
      v178 = *(v108 + 72) + 1;
      *(v108 + 72) = v178;
      v365[v101] = v178;
    }

    *(v108 + 861) = 0;
    *(v108 + 401) = 256;
    OUTLINED_FUNCTION_269_0();
    cf[0] = v117;
    if (v91 && *(v108 + 866))
    {
      if (v107[652])
      {
        v187 = OUTLINED_FUNCTION_74_1(v179, v180, v181, v182, v183, v184, v185, v186, p_rhs, v288, v292, v296, v300, v304, v308[0], v308[1], v315[0], v315[1], v322, v326, v330[0], v330[1], v337, v341, v345, *&v349, v353, v357, v361, v365, v117, cf[1], v376, v380, SWORD2(v380), SBYTE6(v380), SHIBYTE(v380), lhs.value);
        value = lhs.value;
        os_log_type_enabled(v187, HIBYTE(v380));
        OUTLINED_FUNCTION_101_0();
        if (v91)
        {
          v190 = v189;
        }

        else
        {
          v190 = value;
        }

        if (v190)
        {
          OUTLINED_FUNCTION_337_1();
          if (v91)
          {
            v192 = &stru_1F0B1AFB8;
          }

          else
          {
            v192 = v191;
          }

          v193 = *v108;
          v194 = (FigGetUpTimeNanoseconds() - *(v108 + 1064));
          LODWORD(rhs.value) = v315[0];
          *(&rhs.value + 4) = "segPumpSetCurrentTime";
          LOWORD(rhs.flags) = 2114;
          *(&rhs.flags + 2) = v192;
          HIWORD(rhs.epoch) = 2048;
          v395 = v193;
          v396 = 2048;
          v397 = v194 / v105;
          OUTLINED_FUNCTION_95_1();
          p_rhs = &rhs;
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl(v195, v196, v197, v198, v199, v200, v201, "<SEGPUMP> %s: %{public}@:%ld: last received index file %g seconds ago, waiting for new index file to go live");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449(v248, v249, v250, v251, v252);
        v107 = &unk_1EAF16000;
      }

      goto LABEL_159;
    }

    if (!v118 || *(v108 + 1185))
    {
      if (v117)
      {
        v247 = CFRetain(v117);
      }

      else
      {
        v247 = 0;
      }

      *(v108 + 240) = v247;
      *(v108 + 866) = 1;
      segPumpResetConnection(DerivedStorage, v108 + 408);
      *(v108 + 859) = 0;
      v253 = OUTLINED_FUNCTION_246_0();
      segPumpStreamUpdateIndexExpectedArrival(v253, v254, 0);
      segPumpResetAllMediaFilePrivateDataForStream(v108);
      v255 = OUTLINED_FUNCTION_246_0();
      Frame = segPumpSendIndexFileRequest(v255, v256, 0);
      goto LABEL_158;
    }

    v202 = *(v108 + 56);
    if (!v202 || (v203 = FigMediaPlaylistGetMediaSegmentSpecifiers(v202)) == 0 || CFArrayGetCount(v203) <= 0)
    {
      *(v108 + 120) = v119 - *(v108 + 88);
      *(v108 + 128) = 0xBFF0000000000000;
      *(v108 + 920) = 0;
      v224 = *(v108 + 232);
      if (v224)
      {
        CFRelease(v224);
        *(v108 + 232) = 0;
      }

      if (v107[652])
      {
        v225 = OUTLINED_FUNCTION_74_1(v224, v180, v181, v182, v183, v184, v185, v186, p_rhs, v288, v292, v296, v300, v304, v308[0], v308[1], v315[0], v315[1], v322, v326, v330[0], v330[1], v337, v341, v345, *&v349, v353, v357, v361, v365, v117, cf[1], v376, v380, SWORD2(v380), SBYTE6(v380), SHIBYTE(v380), lhs.value);
        v233 = OUTLINED_FUNCTION_242_1(v225, v226, v227, v228, v229, v230, v231, v232, v287, v291, v295, v299, v303, v307, v311, v314, v318, v321, v325, v329, v333, v336, v340, v344, v348, v352, v356, v360, v364, v368, cfc, cf_8b, v379, v383, v386, v389, typeb, lhs.value);
        if (OUTLINED_FUNCTION_16_1(v233))
        {
          OUTLINED_FUNCTION_337_1();
          LODWORD(rhs.value) = v330[0];
          *(&rhs.value + 4) = "segPumpSetCurrentTime";
          LOWORD(rhs.flags) = 2114;
          OUTLINED_FUNCTION_124_1();
          v397 = v234;
          v398 = 1024;
          LODWORD(v399) = v101;
          OUTLINED_FUNCTION_97_1();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_160_1();
          _os_log_send_and_compose_impl(v235, v236, v237, v238, v239, v240, v241, "<SEGPUMP> %s: %{public}@:%ld: no current playlist; set current time with startOffsetInSeconds to %g for stream %d");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v242, v243, v244, v245, v246);
      }

      goto LABEL_159;
    }

    *(v108 + 120) = 0xBFF0000000000000;
    v204 = *(v108 + 56);
    segPumpResetAllMediaFilePrivateDataForStream(v108);
    v205 = 0;
    v206 = *(v108 + 88);
    while (1)
    {
      Count = FigMediaPlaylistGetMediaSegmentSpecifiers(v204);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v205 >= Count)
      {
        goto LABEL_162;
      }

      v208 = FigMediaPlaylistGetMediaSegmentSpecifiers(v204);
      ValueAtIndex = CFArrayGetValueAtIndex(v208, v205);
      if (!*(segPumpGetMediaFilePrivateData(ValueAtIndex, v210, v211, v212, v213, v214, v215, v216) + 96))
      {
        break;
      }

LABEL_146:
      ++v205;
    }

    if (v206 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex) <= v119 || (v361 & 0x100000000) == 0 && (*v108 == *(DerivedStorage + 8600) ? (v223 = v206 < v58) : (v223 = 0), v223))
    {
      segPumpSetDeliveryStatusForMediaFileAndParts(ValueAtIndex, 1, v217, v218, v219, v220, v221, v222);
      v206 = v206 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      goto LABEL_146;
    }

    if ((v326 & 0x100000000) != 0)
    {
LABEL_162:
      v107 = &unk_1EAF16000;
      goto LABEL_163;
    }

    *&v304 = v106;
    v261 = v105;
    OUTLINED_FUNCTION_105(v345);
    v262 = CMTimeGetSeconds(&time);
    v107 = &unk_1EAF16000;
    if (FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex))
    {
      *&v300 = v102;
      *&v296 = FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      OUTLINED_FUNCTION_105(v341);
      v263 = CMTimeGetSeconds(&time);
      v270 = v206 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      if (v206 < v262 || v263 < v270)
      {
        v223 = v263 < v270;
        v102 = *&v300;
        v105 = v261;
        if (!v223)
        {
LABEL_181:
          segPumpSetDeliveryStatusForMediaFileAndParts(ValueAtIndex, 1, v264, v265, v266, v267, v268, v269);
          v206 = v206 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        }
      }

      else
      {
        v102 = *&v300;
        v105 = v261;
        if (v119 - v206 > v206 + *&v296 - v119)
        {
          goto LABEL_181;
        }
      }
    }

    else
    {
      v105 = v261;
    }

    v106 = *&v304;
LABEL_163:
    *(v108 + 104) = v206;
    if (*(DerivedStorage + 8896))
    {
      v272 = v106;
      v273 = v105;
      v274 = *(DerivedStorage + 8880);
      v275 = FigGetUpTimeNanoseconds();
      CMTimeMakeWithSeconds(&time, v119, 1000);
      rhs = *v357;
      v276 = v274;
      v105 = v273;
      v106 = v272;
      Frame = segPumpStepNextFrame(v353, &rhs.value, v275, &time.value, 1, v365, v276);
LABEL_158:
      v258 = Frame;
      if (Frame)
      {
        *(v108 + 857) = 0;
LABEL_190:
        v41 = v353;
        goto LABEL_191;
      }

LABEL_159:
      v259 = *(DerivedStorage + 8896);
      *(v108 + 1185) = 0;
      if (!v259)
      {
        goto LABEL_165;
      }

      goto LABEL_167;
    }

    *(v108 + 1185) = 0;
LABEL_165:
    v260 = *(v108 + 288);
    if (v260)
    {
      CFRelease(v260);
      *(v108 + 288) = 0;
      *(v108 + 320) = -1;
    }

LABEL_167:
    ++v101;
  }

  while (v101 != 3);
  if (*(DerivedStorage + 8896))
  {
    v258 = 0;
    goto LABEL_190;
  }

  v41 = v353;
  OUTLINED_FUNCTION_395_0();
  segPumpDeliverNextMediaForAllStreams();
  v258 = v283;
LABEL_191:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_187:
  segPumpAPIUnlockAndSendNotificationThenCheckAPIStatus(v41, v258);
  OUTLINED_FUNCTION_812();
}

void segPumpDeliverNextMediaForAllStreams()
{
  OUTLINED_FUNCTION_369();
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  HIWORD(v54) = 0;
  if (v2[8896])
  {
    v3 = *(v1 + 392);
    if (!*(v3 + 866) && (*(v3 + 160) & 0xFFFFFFFE) == 4 && !*(v3 + 1152))
    {
      if (v2[8952] || v2[8897] || !*(v3 + 857) && !*(v3 + 862))
      {
        v4 = OUTLINED_FUNCTION_298();

        segPumpTryIFrameFetch(v4, v5);
      }

      else
      {
        v43 = *(v3 + 120);
        if (v43 >= 0.0)
        {
          v44 = *(v1 + 8920);
          if (v44 == 0.0)
          {
            v44 = *(v1 + 8880);
          }

          v45 = dbl_196E72890[v44 >= 0.0];
          CMTimeMakeWithSeconds((&v53.value + 4), v43, 1000);
          UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          CMTimeMakeWithSeconds((v48 + 4), v45 + *(v3 + 120), 1000);
          segPumpStepNextFrame(v0, (&v53.value + 4), UpTimeNanoseconds, (v48 + 4), 1, 0, v44);
        }
      }
    }
  }

  else
  {
    v6 = &v58;
    v7 = &v61;
    v8 = &v55;
    for (i = 392; i != 440; i += 16)
    {
      v10 = *(v1 + i);
      v11 = v10[7];
      if (v11)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v11);
        if (MediaSegmentSpecifiers)
        {
          if (CFArrayGetCount(MediaSegmentSpecifiers) >= 1)
          {
            *v8 = v10[10];
            if (v10[32])
            {
              *v7 = 0;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_298();
              segPumpDetermineMediaSegmentToDeliver(v13, v14, v10, v7, v6);
              if (v15)
              {
                return;
              }
            }
          }
        }
      }

      ++v6;
      ++v7;
      ++v8;
    }

    v16 = *(v1 + 8600);
    v17 = *(&v61 + v16);
    if (!v17 || !*(v1 + 296) || !segPumpCheckCachedVariantsAndRequestSwitch(v1, *(v1 + 392 + 16 * v16), v17, 1) && !FigRetainProxyIsInvalidated())
    {
      v18 = &v61;
      v19 = &v58;
      v20 = &v55;
      for (j = 392; j != 440; j += 16)
      {
        v22 = *(v1 + j);
        v23 = *(v22 + 56);
        if (v23)
        {
          v24 = FigMediaPlaylistGetMediaSegmentSpecifiers(v23);
          if (v24)
          {
            if (CFArrayGetCount(v24) >= 1 && (*(v22 + 160) & 0xFFFFFFFE) == 4 && !*(v22 + 866) && *(v22 + 80) == *v20)
            {
              v25 = OUTLINED_FUNCTION_266();
              if (!segPumpStreamShouldYieldToTrialSwitch(v25, v26))
              {
                v27 = *v19;
                v28 = OUTLINED_FUNCTION_266();
                if (segPumpStreamReadAheadPermitsNextRead(v28, v29, v30))
                {
                  if (!*(v22 + 1152))
                  {
                    HIBYTE(v54) = 0;
                    v31 = *v18;
                    if (*v18)
                    {
                      v38 = OUTLINED_FUNCTION_69_0();
                      if (segPumpFetchOrDispatchMediaSegment(v38, v39, v40, v31, v27, v41, v42))
                      {
                        return;
                      }
                    }

                    else
                    {
                      v31 = *(v22 + 256);
                      *v18 = v31;
                    }

                    if (!BYTE6(v54))
                    {
                      v32 = OUTLINED_FUNCTION_69_0();
                      if (segPumpStreamDoDeliveryFollowUp(v32, v33, v34, v35, v31, 0, v36, v37, v47, v48[0], v48[1], v49, v50, v51, v52, v53.value, *&v53.timescale, v53.epoch, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64))
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v18;
        ++v19;
        ++v20;
      }
    }
  }
}