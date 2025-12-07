@interface VideoReceiver
@end

@implementation VideoReceiver

void ___VideoReceiver_SendRTCP_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *(a1 + 200);
  if ((v2 & 0x40) != 0)
  {
    v5 = RTPSendControlPacket(v4, v3);
  }

  else
  {
    v5 = RTPSendRTCP(v4);
  }

  v6 = v5;
  if (v5 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 208);
        v11 = 136316418;
        v12 = v7;
        v13 = 2080;
        v14 = "_VideoReceiver_SendRTCP_block_invoke";
        v15 = 1024;
        v16 = 2032;
        v17 = 1024;
        v18 = 2032;
        v19 = 2048;
        v20 = v10;
        v21 = 1024;
        v22 = v6;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoReceiver.c:%d: VideoReceiver[%p] send rtcp failed (%08X)", &v11, 0x32u);
      }
    }
  }

  else
  {
    _VideoReceiver_HandleSendRTCPSuccess(*(a1 + 216), v3, *(a1 + 224));
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    VCMemoryPool_Free(*(*(a1 + 208) + 43144), v9);
  }
}

__n128 ___VideoReceiver_RegisterStatistics_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a2 + 176);
  v10[10] = *(a2 + 160);
  v10[11] = v3;
  v11 = *(a2 + 192);
  v4 = *(a2 + 112);
  v10[6] = *(a2 + 96);
  v10[7] = v4;
  v5 = *(a2 + 144);
  v10[8] = *(a2 + 128);
  v10[9] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  v7 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v7;
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  _VideoReceiver_ProcessRTTStatistics(v2, v10);
  return result;
}

unsigned int *___VideoReceiver_ReportingRegisterPeriodicTask_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v310 = *MEMORY[0x1E69E9840];
  v5 = micro(v1, v2);
  v305 = 0.0;
  result = CheckInHandleDebug();
  if (result)
  {
    v7 = result;
    alloc = v3;
    v8 = result + 10225;
    VideoReceiver_GetFramerate(*(v4 + 32), &v305, 1.0);
    v10 = v305;
    if (v305 > 0.0)
    {
      ++*(v8 + 896);
      LOWORD(v9) = *(v8 + 895);
      *(v8 + 895) = (v10 + v9);
      if (*(v8 + 475) < v10)
      {
        *(v8 + 475) = v10;
      }

      if (*(v8 + 477) > v10)
      {
        *(v8 + 477) = v10;
      }
    }

    v304 = 0.0;
    VideoReceiver_GetBitrate(*(v4 + 32), &v304, 0, 0, 0, 0, 1.0);
    v11 = v304;
    if (*(v8 + 481) < v304)
    {
      *(v8 + 481) = v304;
    }

    v282 = (v8 + 481);
    v272 = (v8 + 483);
    if (*(v8 + 483) > v11)
    {
      *v272 = v11;
    }

    v302 = 0.0;
    v303 = 0.0;
    v300 = 0.0;
    v301 = 0.0;
    v276 = v8;
    v270 = v8 + 479;
    VideoReceiver_GetBitrate(*(v4 + 32), (v8 + 479), &v303, &v302, &v301, &v300, v8[572]);
    if (*v7)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 436;
      do
      {
        LODWORD(v308[0]) = -1431655766;
        __dst[0] = -1431655766;
        LODWORD(v290[0]) = -1431655766;
        v19 = v15;
        v20 = v16;
        RTPGetPacketLossMetrics(*&v7[v18], v308, __dst, v290);
        v13 += __dst[0];
        v14 += LODWORD(v290[0]);
        memset(v309, 0, 24);
        RTPGetDownlinkReportingStats(*&v7[v18], v309);
        v15 = *(&v309[0] + 1) + v19;
        v16 = *&v309[1] + v20;
        v17 += *&v309[0];
        ++v12;
        v18 += 1088;
      }

      while (v12 < *v7);
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
    }

    v271 = v14;
    v274 = v17;
    v275 = v7;
    v21 = v276;
    v22 = v276[449];
    v23 = v13 - v22;
    v24 = v13;
    if (v13 >= v22)
    {
      v25 = v271 - v276[450];
    }

    else
    {
      v276[449] = v13;
      v25 = v271;
      v276[450] = v271;
      v23 = v13;
    }

    v273 = v15;
    if (v15 <= *(v276 + 453))
    {
      LODWORD(v26) = 0;
    }

    else
    {
      v26 = *(v276 + 453);
    }

    v27 = *(v276 + 455);
    if (v16 > v27)
    {
      LODWORD(v27) = v16 - v27;
    }

    v267 = v27;
    v268 = v16;
    v28 = (v276 + 457);
    v29 = *(v276 + 457);
    if (v274 <= v29)
    {
      LODWORD(v29) = 0;
    }

    theDict = v29;
    if (v23 < 1 || (v25 & 0x80000000) != 0)
    {
      v32 = 0.0;
      if (!alloc)
      {
        return CheckOutHandleDebug();
      }
    }

    else
    {
      v30 = v25 / v23;
      if (v30 <= 1.0)
      {
        v31 = v30 * 100.0;
        v32 = v31;
      }

      else
      {
        v32 = 100.0;
      }

      v33 = (v276 + 391);
      v34 = *(v276 + 391);
      v35 = v34 == 0.0;
      v36 = v32 * 0.5 + v34 * 0.5;
      if (v35)
      {
        v36 = v32;
      }

      *v33 = v36;
      if (*v276 == 1 && (v23 > 0xA || v36 > 0.0))
      {
        memset(&v309[2], 0, 40);
        memset(&v309[5], 0, 120);
        v37 = *(v275 + 162);
        v38 = *(v276 + 563);
        *&v309[0] = 3;
        *(v309 + 1) = v5;
        *&v309[1] = 0;
        *(&v309[1] + 1) = v36;
        *(&v309[4] + 1) = v37;
        VCRateControlSetStatistics(v38, v309);
      }

      if (!alloc)
      {
        return CheckOutHandleDebug();
      }

      v39 = *(v275 + 172);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v39)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(*(v275 + 172), 0x8000100u);
            v44 = *v33;
            v45 = FourccToCStr(v275[348]);
            LODWORD(v309[0]) = 136317442;
            *(v309 + 4) = v41;
            WORD6(v309[0]) = 2080;
            *(v309 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
            WORD3(v309[1]) = 1024;
            DWORD2(v309[1]) = 5351;
            WORD6(v309[1]) = 2048;
            *(&v309[1] + 14) = v275;
            WORD3(v309[2]) = 2080;
            *(&v309[2] + 1) = CStringPtr;
            v28 = (v276 + 457);
            LOWORD(v309[3]) = 2048;
            *(&v309[3] + 2) = v44;
            WORD5(v309[3]) = 2048;
            *(&v309[3] + 12) = v32;
            WORD2(v309[4]) = 1024;
            *(&v309[4] + 6) = v23;
            WORD5(v309[4]) = 1024;
            HIDWORD(v309[4]) = v25;
            LOWORD(v309[5]) = 2080;
            *(&v309[5] + 2) = v45;
            v46 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC health report for participantId:%s with PLR percentage:%.2f, current percentage:%.2f (exp:%d, loss:%d) streamGroupID:%s";
            v47 = v42;
            v48 = 90;
LABEL_48:
            _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, v46, v309, v48);
            goto LABEL_49;
          }

          goto LABEL_49;
        }
      }

      else if (ErrorLogLevelForModule >= 7)
      {
        v49 = VRTraceErrorLogLevelToCSTR();
        v50 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v51 = *(v275 + 162);
          v52 = *v33;
          LODWORD(v309[0]) = 136317186;
          *(v309 + 4) = v49;
          WORD6(v309[0]) = 2080;
          *(v309 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
          WORD3(v309[1]) = 1024;
          DWORD2(v309[1]) = 5353;
          WORD6(v309[1]) = 2048;
          *(&v309[1] + 14) = v275;
          WORD3(v309[2]) = 2048;
          *(&v309[2] + 1) = v51;
          LOWORD(v309[3]) = 2048;
          *(&v309[3] + 2) = v52;
          WORD5(v309[3]) = 2048;
          *(&v309[3] + 12) = v32;
          WORD2(v309[4]) = 1024;
          *(&v309[4] + 6) = v23;
          WORD5(v309[4]) = 1024;
          HIDWORD(v309[4]) = v25;
          v46 = "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC health report for participantId:%llu with PLR percentage:%.2f, current percentage:%.2f (exp:%d, loss:%d)";
          v47 = v50;
          v48 = 80;
          goto LABEL_48;
        }

LABEL_49:
        v21 = v276;
      }
    }

    v265 = v28;
    v264 = v24;
    v53 = selectDestinationForRTMetrics();
    if (*(v275 + 1558))
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    LODWORD(v309[0]) = v54;
    v55 = *MEMORY[0x1E695E480];
    v56 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"CodecLayers", v56);
    CFRelease(v56);
    v57 = (v302 / 1000.0 + 0.5);
    v259 = (*v270 / 1000.0 + 0.5);
    LODWORD(v309[0]) = v259;
    v58 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxR", v58);
    CFRelease(v58);
    LODWORD(v309[0]) = (*v282 / 1000.0 + 0.5);
    v59 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxRMax", v59);
    CFRelease(v59);
    v60 = 0.0;
    LODWORD(v309[0]) = (*v272 / 1000.0 + 0.5);
    v61 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxRMin", v61);
    CFRelease(v61);
    LODWORD(v309[0]) = (v303 / 1000.0 + 0.5);
    v62 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRFECRxR", v62);
    CFRelease(v62);
    v260 = v57;
    LODWORD(v309[0]) = v57;
    v63 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxMetadataOverhead", v63);
    CFRelease(v63);
    LODWORD(v309[0]) = (v301 / 1000.0 + 0.5);
    v64 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxMR", v64);
    CFRelease(v64);
    LODWORD(v309[0]) = (v300 / 1000.0 + 0.5);
    v65 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxDMR", v65);
    CFRelease(v65);
    _VideoReceiver_CheckIfVideoStalling(v275, v66);
    v68 = 0.0;
    if (v21[896])
    {
      LOWORD(v67) = v21[895];
      v68 = v67 / v21[896];
    }

    v69 = *(v21 + 954);
    *v309 = v68;
    v70 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v53, @"ARFr", v70);
    CFRelease(v70);
    v258 = (v21 + 950);
    LODWORD(v309[0]) = *(v21 + 950);
    v71 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"XRFr", v71);
    CFRelease(v71);
    LODWORD(v309[0]) = v69;
    v72 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"NRFr", v72);
    CFRelease(v72);
    v73 = *(v21 + 970);
    *v309 = v73;
    v74 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v53, @"VST", v74);
    CFRelease(v74);
    v266 = (v21 + 970);
    v263 = v21 + 974;
    v75 = *(v21 + 974);
    v76 = *(v21 + 970) - v75;
    LODWORD(v75) = *(v21 + 572);
    *&v76 = v76 / *&v75;
    LODWORD(v309[0]) = LODWORD(v76);
    v77 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v53, @"iVSP", v77);
    CFRelease(v77);
    v256 = (v21 + 994);
    v78 = *(v21 + 994);
    *v309 = v78;
    v79 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v53, @"VSTSM", v79);
    CFRelease(v79);
    LODWORD(v309[0]) = *(v21 + 491);
    v80 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VSTCNT", v80);
    CFRelease(v80);
    *(v21 + 491) = 0;
    v81 = *(v21 + 602);
    v82 = v81 - *(v21 + 603);
    *(v21 + 603) = v81;
    v257 = v82;
    LODWORD(v309[0]) = v82;
    v83 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VFrErCnt", v83);
    CFRelease(v83);
    v255 = v21[806];
    PlaybackTimeOffset = VCVideoPlayer_GetPlaybackTimeOffset(*(v21 + 38));
    v298 = 0u;
    v299 = 0u;
    v297 = 0u;
    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v291 = 0u;
    v292 = 0u;
    memset(v290, 0, sizeof(v290));
    VCVideoPlayer_CollectVideoPlayerStatsForReporting(*(v21 + 38), v290, v5);
    _VideoReceiver_ReportVideoPlayerStatsForReporting(v290, v53);
    VCVideoPlayer_ResetVideoPlayerStatsForReporting(*(v21 + 38), v5);
    v85 = v274;
    if (*(v275 + 1324) == 1)
    {
      v86 = v26;
      v87 = (v21 + 802);
      v26 = v21;
      v88 = (v21 + 794);
      v89 = *v88;
      *v309 = v89;
      v90 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
      CFDictionaryAddValue(v53, @"VJ", v90);
      CFRelease(v90);
      LODWORD(v309[0]) = v26[806];
      v91 = CFNumberCreate(v55, kCFNumberIntType, v309);
      CFDictionaryAddValue(v53, @"VJBTC", v91);
      CFRelease(v91);
      v26[806] = 0;
      v92 = v5 - *(v26 + 810);
      v93 = *v87;
      v94 = (v26 + 814);
      v95 = *(v26 + 814);
      if (v93 != 0.0)
      {
        v95 = v92 + v95;
        *v94 = v95;
      }

      v96 = v95;
      *v309 = v96;
      v97 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
      CFDictionaryAddValue(v53, @"VJBTNZT", v97);
      CFRelease(v97);
      v254 = *v94;
      v98 = *v88;
      v21 = v276;
      v99 = *(v276 + 409);
      v100 = v99 + v92 * v98;
      *(v276 + 409) = v100;
      LODWORD(v99) = v276[572];
      v101 = v100 / *&v99;
      *&v100 = v101;
      LODWORD(v309[0]) = LODWORD(v100);
      v102 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
      CFDictionaryAddValue(v53, @"VJBTWA", v102);
      CFRelease(v102);
      *v94 = 0.0;
      *(v26 + 818) = 0;
      *(v26 + 810) = v5;
      v103 = PlaybackTimeOffset;
      *v309 = v103;
      v104 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
      CFDictionaryAddValue(v53, @"VPO", v104);
      CFRelease(v104);
      LODWORD(v26) = v86;
      if (*(v275 + 1360) == 1 && *(v275 + 1361) == 1)
      {
        LODWORD(v309[0]) = *&v291;
        v105 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v53, @"AVSyncOffsetMin", v105);
        CFRelease(v105);
        LODWORD(v309[0]) = *(&v291 + 1);
        v106 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v53, @"AVSyncOffsetMax", v106);
        CFRelease(v106);
        v107 = v293;
        if (v293)
        {
          v107 = (*&v292 / v293);
        }

        LODWORD(v309[0]) = v107;
        v108 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v53, @"AVSyncOffset", v108);
        CFRelease(v108);
      }

      v60 = v101 * 1000.0;
      v85 = v274;
    }

    else
    {
      v254 = 0.0;
    }

    LODWORD(v309[0]) = *&v299;
    v109 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VPFDC", v109);
    CFRelease(v109);
    *&v309[0] = *(&v299 + 1);
    v110 = CFNumberCreate(v55, kCFNumberDoubleType, v309);
    CFDictionaryAddValue(v53, @"VPFDCD", v110);
    CFRelease(v110);
    v111 = *(v21 + 1238);
    if (v111)
    {
      VCNACKGenerator_GetStatistics(v111, v53);
    }

    bzero(v308, 0xC820uLL);
    _VideoReceiver_GetVPBStats(v275);
    v112 = *v275;
    if (v112)
    {
      v113 = 0;
      v114 = 456;
      do
      {
        v115 = *&v275[v114];
        if (v115)
        {
          VideoPacketBuffer_ResetStatistics(v115);
          v112 = *v275;
        }

        ++v113;
        v114 += 1088;
      }

      while (v113 < v112);
    }

    v261 = v273 - v26;
    v262 = v85 - theDict;
    if (LODWORD(v308[1197]))
    {
      v308[1194] = v308[1193] / LODWORD(v308[1197]);
    }

    Mutable = CFArrayCreateMutable(0, 23, MEMORY[0x1E695E9C0]);
    v117 = 0;
    v118 = &v308[1181] + 4;
    do
    {
      v119 = CFNumberCreate(0, kCFNumberIntType, v118);
      CFArraySetValueAtIndex(Mutable, v117, v119);
      if (v119)
      {
        CFRelease(v119);
      }

      ++v117;
      v118 += 4;
    }

    while (v117 != 23);
    CFDictionaryAddValue(v53, @"VFEVLtPktDelayHist", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    LODWORD(v309[0]) = HIDWORD(v308[1196]);
    v120 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VFEVTrCnt", v120);
    CFRelease(v120);
    v121 = v308[1194];
    *v309 = v121;
    v122 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v53, @"VFEVLtPktDelay", v122);
    CFRelease(v122);
    v123 = v308[1195];
    *v309 = v123;
    v124 = CFNumberCreate(v55, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v53, @"VFEVMaxLtPktDelay", v124);
    CFRelease(v124);
    LODWORD(v309[0]) = LODWORD(v308[1196]);
    v125 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VFrLateCount", v125);
    CFRelease(v125);
    LODWORD(v309[0]) = LODWORD(v308[1197]);
    v126 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VFEVRecoveredCnt", v126);
    CFRelease(v126);
    LODWORD(v309[0]) = LODWORD(v308[1199]);
    v127 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"NacksFrmsSchWithRTX", v127);
    CFRelease(v127);
    LODWORD(v309[0]) = HIDWORD(v308[1199]);
    v128 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"NacksFrmsAssemWithRTX", v128);
    CFRelease(v128);
    LODWORD(v309[0]) = LODWORD(v308[1200]);
    v129 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"NacksFrmsFailedAssemWithRTX", v129);
    CFRelease(v129);
    LODWORD(v309[0]) = HIDWORD(v308[6402]);
    v130 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"VRxIDRC", v130);
    CFRelease(v130);
    LODWORD(v309[0]) = LODWORD(v308[6403]);
    v131 = CFNumberCreate(v55, kCFNumberIntType, v309);
    CFDictionaryAddValue(v53, @"LKFASC", v131);
    CFRelease(v131);
    LODWORD(v309[0]) = HIDWORD(v308[6403]);
    v132 = CFNumberCreate(v55, kCFNumberIntType, v309);
    v269 = v53;
    CFDictionaryAddValue(v53, @"LPFASC", v132);
    CFRelease(v132);
    v133 = MEMORY[0x1E695E9D8];
    v134 = MEMORY[0x1E695E9E8];
    v278 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    memcpy(__dst, v308, sizeof(__dst));
    theDicta = CFDictionaryCreateMutable(v55, 0, v133, v134);
    v283 = CFDictionaryCreateMutable(v55, 0, v133, v134);
    v280 = CFDictionaryCreateMutable(v55, 0, v133, v134);
    v135 = CFDictionaryCreateMutable(v55, 0, v133, v134);
    v136 = CFDictionaryCreateMutable(v55, 0, v133, v134);
    alloca = v55;
    v137 = CFDictionaryCreateMutable(v55, 0, v133, v134);
    v138 = 0;
    v139 = &__dst[131];
    do
    {
      v140 = *(v139 - 3);
      if (v140)
      {
        v141 = CFStringCreateWithFormat(v55, 0, @"%u", v138);
        LODWORD(v309[0]) = *(v139 - 7);
        v142 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(theDicta, v141, v142);
        CFRelease(v142);
        LODWORD(v309[0]) = *(v139 - 5);
        v143 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v283, v141, v143);
        CFRelease(v143);
        LODWORD(v309[0]) = v140;
        v144 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v280, v141, v144);
        CFRelease(v144);
        LODWORD(v309[0]) = *(v139 - 2);
        v145 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v135, v141, v145);
        CFRelease(v145);
        LODWORD(v309[0]) = *(v139 - 1);
        v146 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v136, v141, v146);
        CFRelease(v146);
        LODWORD(v309[0]) = *v139;
        v147 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v137, v141, v147);
        CFRelease(v147);
        CFRelease(v141);
      }

      ++v138;
      v139 += 12;
    }

    while (v138 != 101);
    CFDictionaryAddValue(v278, @"VFecDB", theDicta);
    CFDictionaryAddValue(v278, @"VFecPB", v283);
    CFDictionaryAddValue(v278, @"VFecTF", v280);
    CFDictionaryAddValue(v278, @"VFecCF", v135);
    CFDictionaryAddValue(v278, @"VFecNF", v136);
    CFDictionaryAddValue(v278, @"VFecFF", v137);
    CFRelease(theDicta);
    CFRelease(v283);
    CFRelease(v280);
    CFRelease(v135);
    CFRelease(v136);
    CFRelease(v137);
    v148 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 102; ++i)
    {
      v150 = *(&__dst[2312] + i);
      if (*(&__dst[2312] + i))
      {
        v151 = CFStringCreateWithFormat(v55, 0, @"%d", i);
        LODWORD(v309[0]) = v150;
        v152 = CFNumberCreate(v55, kCFNumberIntType, v309);
        CFDictionaryAddValue(v148, v151, v152);
        CFRelease(v152);
        CFRelease(v151);
      }
    }

    CFDictionaryAddValue(v278, @"VRLossPattern", v148);
    CFRelease(v148);
    memcpy(v309, __dst, sizeof(v309));
    v153 = MEMORY[0x1E695E9D8];
    v154 = MEMORY[0x1E695E9E8];
    v155 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v156 = CFDictionaryCreateMutable(v55, 0, v153, v154);
    v157 = CFDictionaryCreateMutable(v55, 0, v153, v154);
    v158 = CFDictionaryCreateMutable(v55, 0, v153, v154);
    v159 = 0;
    v160 = 334;
    do
    {
      v161 = &v309[v160];
      v162 = *(&v309[v160] + 1);
      if (v162)
      {
        v163 = CFStringCreateWithFormat(alloca, 0, @"%u", v159);
        valuePtr = v162;
        v164 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v156, v163, v164);
        CFRelease(v164);
        valuePtr = *v161;
        v165 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v155, v163, v165);
        CFRelease(v165);
        valuePtr = v161[3];
        v166 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v157, v163, v166);
        CFRelease(v166);
        valuePtr = v161[2];
        v167 = CFNumberCreate(alloca, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v158, v163, v167);
        CFRelease(v167);
        if (v163)
        {
          CFRelease(v163);
        }
      }

      ++v159;
      v160 += 2;
    }

    while (v159 != 122);
    CFDictionaryAddValue(v278, @"VFecSVPC", v155);
    CFDictionaryAddValue(v278, @"VFecSVFC", v156);
    CFDictionaryAddValue(v278, @"VFecSVDPL", v157);
    CFDictionaryAddValue(v278, @"VFecSVFAC", v158);
    if (v155)
    {
      CFRelease(v155);
    }

    if (v156)
    {
      CFRelease(v156);
    }

    if (v157)
    {
      CFRelease(v157);
    }

    v168 = v276;
    if (v158)
    {
      CFRelease(v158);
    }

    _VideoReceiver_ComputePacketLoss2DHistogram(v278, @"VRLossHistogram", &__dst[2401]);
    _VideoReceiver_ComputePacketLoss2DHistogram(v278, @"VRLossFecHistogram", &__dst[7603]);
    CFDictionaryAddValue(v269, @"VFecStats", v278);
    CFRelease(v278);
    v169 = 0;
    v276[626] = 0;
    v170 = &v308[6];
    v171 = MEMORY[0x1E6986650];
    do
    {
      if (*(v170 - 4) || *(v170 - 4))
      {
        v172 = FECUtil_GranularLevelToPrecentage(v169);
        *(v168 + 626) = v169;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v173 = VRTraceErrorLogLevelToCSTR();
          v174 = *v171;
          if (os_log_type_enabled(*v171, OS_LOG_TYPE_DEFAULT))
          {
            v175 = CFStringGetCStringPtr(*(v275 + 172), 0x8000100u);
            v177 = *(v170 - 4);
            v176 = *(v170 - 3);
            v277 = *(v170 - 4);
            v279 = *(v170 - 3);
            v281 = *(v170 - 2);
            v284 = *(v170 - 1);
            theDictb = *v170;
            v178 = FourccToCStr(v275[348]);
            LODWORD(v309[0]) = 136318466;
            *(v309 + 4) = v173;
            WORD6(v309[0]) = 2080;
            *(v309 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
            WORD3(v309[1]) = 1024;
            DWORD2(v309[1]) = 5504;
            WORD6(v309[1]) = 2048;
            *(&v309[1] + 14) = v275;
            WORD3(v309[2]) = 2048;
            *(&v309[2] + 1) = v172;
            LOWORD(v309[3]) = 2080;
            *(&v309[3] + 2) = v175;
            WORD5(v309[3]) = 2048;
            *(&v309[3] + 12) = v177;
            v168 = v276;
            WORD2(v309[4]) = 2048;
            *(&v309[4] + 6) = v176;
            v171 = MEMORY[0x1E6986650];
            HIWORD(v309[4]) = 1024;
            LODWORD(v309[5]) = v277;
            WORD2(v309[5]) = 1024;
            *(&v309[5] + 6) = v279;
            WORD5(v309[5]) = 1024;
            HIDWORD(v309[5]) = v281;
            LOWORD(v309[6]) = 1024;
            *(&v309[6] + 2) = v284;
            WORD3(v309[6]) = 1024;
            DWORD2(v309[6]) = theDictb;
            WORD6(v309[6]) = 2080;
            *(&v309[6] + 14) = v178;
            _os_log_impl(&dword_1DB56E000, v174, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC health report: fecLevel:%.2f participantID:%s data:%llu, parity:%llu, totalFrame:%d complete:%d, notRecoverable:%d, failedToRecover:%d, recovered:%d streamGroupId:%s", v309, 0x76u);
          }
        }
      }

      ++v169;
      v170 += 6;
    }

    while (v169 != 10);
    if (*(v275 + 653))
    {
      v179 = v168[944] / *(v275 + 653);
    }

    else
    {
      v179 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v180 = VRTraceErrorLogLevelToCSTR();
      v181 = *v171;
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
      {
        v182 = CFStringGetCStringPtr(*(v275 + 172), 0x8000100u);
        v183 = v275[290];
        v184 = FourccToCStr(v275[348]);
        v185 = *v258;
        v186 = *v266 * 1000.0;
        v187 = *v256 * 1000.0;
        v188 = *(v276 + 397) * 1000.0;
        v189 = v276[451];
        v190 = v276[578];
        v191 = v276[577];
        v192 = *(v276 + 944);
        LODWORD(v309[0]) = 136321026;
        *(v309 + 4) = v180;
        WORD6(v309[0]) = 2080;
        *(v309 + 14) = "_VideoReceiver_ReportingRegisterPeriodicTask_block_invoke";
        WORD3(v309[1]) = 1024;
        DWORD2(v309[1]) = 5510;
        WORD6(v309[1]) = 2080;
        *(&v309[1] + 14) = v182;
        WORD3(v309[2]) = 1024;
        DWORD2(v309[2]) = v183;
        WORD6(v309[2]) = 2080;
        *(&v309[2] + 14) = v184;
        WORD3(v309[3]) = 2048;
        *(&v309[3] + 1) = v68;
        LOWORD(v309[4]) = 2048;
        *(&v309[4] + 2) = v69;
        WORD5(v309[4]) = 2048;
        *(&v309[4] + 12) = v185;
        WORD2(v309[5]) = 1024;
        *(&v309[5] + 6) = v259;
        WORD5(v309[5]) = 2048;
        *(&v309[5] + 12) = v186;
        WORD2(v309[6]) = 2048;
        *(&v309[6] + 6) = v187;
        HIWORD(v309[6]) = 2048;
        *&v309[7] = v188;
        WORD4(v309[7]) = 2048;
        *(&v309[7] + 10) = PlaybackTimeOffset * 1000.0;
        WORD1(v309[8]) = 1024;
        DWORD1(v309[8]) = v255;
        WORD4(v309[8]) = 2048;
        *(&v309[8] + 10) = v254;
        WORD1(v309[9]) = 2048;
        *(&v309[9] + 4) = v60;
        WORD6(v309[9]) = 1024;
        *(&v309[9] + 14) = v257;
        WORD1(v309[10]) = 1024;
        DWORD1(v309[10]) = v189;
        WORD4(v309[10]) = 1024;
        *(&v309[10] + 10) = v190;
        HIWORD(v309[10]) = 1024;
        LODWORD(v309[11]) = v191;
        WORD2(v309[11]) = 1024;
        *(&v309[11] + 6) = v260;
        WORD5(v309[11]) = 1024;
        HIDWORD(v309[11]) = v192;
        LOWORD(v309[12]) = 1024;
        *(&v309[12] + 2) = v179;
        _os_log_impl(&dword_1DB56E000, v181, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d @=@ Health: VideoReceiver participantID=%s, mode=%d, streamGroupId=%s, videoRxAvgFrameRate=%.2f, videoRxMinFrameRate=%.2f, videoRxMaxFrameRate=%.2f, videoRxBitrate=%d kbps, videoStallTime=%.1f ms, videoSegmentMaxStall=%.1f ms, videoJitterQueueSize=%.1f ms, playbackOffset=%f ms, numOfJitterQueueSizeChanges=%d, timeSpentInNonZeroJBQueueSize=%f s, averageJitterQueueSize=%f ms, frameErasureCount=%u, packetReceived=%u, callbackCount=%u significantOutOfOrderPacketCount=%d, metadataRxBitrateKbps=%u, decodedFrameCount=%d, decodedFullFrameCount=%d,", v309, 0xC6u);
      }
    }

    if (*(v275 + 1325) == 1)
    {
      VCVideoJitterBuffer_HealthPrint(*(v276 + 593));
    }

    v193 = *(v276 + 391);
    *v309 = v193;
    v194 = CFNumberCreate(alloca, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v269, @"VRxAvgPktLoss", v194);
    CFRelease(v194);
    *v309 = v32;
    v195 = CFNumberCreate(alloca, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v269, @"VRxPktLoss", v195);
    CFRelease(v195);
    LODWORD(v309[0]) = 0;
    v196 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VPktRx", v196);
    CFRelease(v196);
    v197 = *(v276 + 938);
    v198 = 0.0;
    v199 = v197;
    v200 = 0.0;
    if ((v197 - *(v276 + 937)) >= 1)
    {
      v200 = (v197 - *(v276 + 937)) / v199;
    }

    v201 = (v197 - *(v276 + 936));
    if (v201 >= 1)
    {
      v198 = v201 / v199;
    }

    *v309 = v200;
    v202 = CFNumberCreate(alloca, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v269, @"VRFrLoss", v202);
    CFRelease(v202);
    *v309 = v198;
    v203 = CFNumberCreate(alloca, kCFNumberFloat32Type, v309);
    CFDictionaryAddValue(v269, @"VRFrShown", v203);
    CFRelease(v203);
    LODWORD(v309[0]) = *(v276 + 938);
    v204 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VRFrExpected", v204);
    CFRelease(v204);
    v206 = *(v276 + 1056);
    if (*(v276 + 1056))
    {
      v207 = *(v276 + 896);
      if (*(v276 + 896))
      {
        LOWORD(v205) = *(v276 + 1055);
        v208 = (*(v276 + 1054) / v206);
        v209 = -v205 / v206;
        v210 = (1.0 - expf((v209 * (*(v276 + 895) / v207 - 1)) / 30.0)) * v208;
        v211 = v210 / (1.0 - expf(v209));
        if (v211 <= 0xA)
        {
          LOBYTE(v207) = 5 * v211 + 50;
        }

        else
        {
          LOBYTE(v207) = 100;
        }

        v207 = v207;
        *(v276 + 1054) = 0;
        *(v276 + 1056) = 0;
      }
    }

    else
    {
      v207 = 0;
    }

    LODWORD(v309[0]) = v207;
    v212 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VQS", v212);
    CFRelease(v212);
    LODWORD(v309[0]) = v276[577];
    v213 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VRSOOOCnt", v213);
    CFRelease(v213);
    LODWORD(v309[0]) = LODWORD(v308[0]);
    v214 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFIRDCnt", v214);
    CFRelease(v214);
    LODWORD(v309[0]) = v276[459];
    v215 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFIRCnt", v215);
    CFRelease(v215);
    LODWORD(v309[0]) = v276[461];
    v216 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFIRFSCnt", v216);
    CFRelease(v216);
    LODWORD(v309[0]) = v276[470];
    v217 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFDBSCnt", v217);
    CFRelease(v217);
    LODWORD(v309[0]) = HIDWORD(v308[0]);
    v218 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFTICnt", v218);
    CFRelease(v218);
    LODWORD(v309[0]) = *(v276 + 944);
    v219 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"DecOutFrameCnt", v219);
    CFRelease(v219);
    LODWORD(v309[0]) = *(v276 + 936);
    v220 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"DVFECnt", v220);
    CFRelease(v220);
    LODWORD(v309[0]) = *(v276 + 937);
    v221 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFRxCnt", v221);
    CFRelease(v221);
    LODWORD(v309[0]) = HIDWORD(v308[1]);
    v222 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VNoFecTF", v222);
    CFRelease(v222);
    LODWORD(v309[0]) = LODWORD(v308[1]);
    v223 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VNoFecCF", v223);
    CFRelease(v223);
    LODWORD(v309[0]) = v276[473];
    v224 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"DecNoShowFrameCnt", v224);
    CFRelease(v224);
    LODWORD(v309[0]) = v276[416];
    v225 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"Width", v225);
    CFRelease(v225);
    LODWORD(v309[0]) = v276[417];
    v226 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"Height", v226);
    CFRelease(v226);
    _VideoReceiver_AddMLStatsToReportingDictionary(v275, v269);
    LODWORD(v309[0]) = (*(v276 + 931) - *(v276 + 932));
    v227 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VFExCnt", v227);
    CFRelease(v227);
    LODWORD(v309[0]) = v276[471];
    v228 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VRxSinglePktFrame", v228);
    CFRelease(v228);
    LODWORD(v309[0]) = 0;
    v229 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"APRL", v229);
    CFRelease(v229);
    LODWORD(v309[0]) = 0;
    v230 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"AVDL", v230);
    CFRelease(v230);
    LODWORD(v309[0]) = 0;
    v231 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"ADL", v231);
    CFRelease(v231);
    LODWORD(v309[0]) = 0;
    v232 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"ATRL", v232);
    CFRelease(v232);
    LODWORD(v309[0]) = 0;
    v233 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"MPRL", v233);
    CFRelease(v233);
    LODWORD(v309[0]) = 0;
    v234 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"MVDL", v234);
    CFRelease(v234);
    LODWORD(v309[0]) = 0;
    v235 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"MDL", v235);
    CFRelease(v235);
    LODWORD(v309[0]) = 0;
    v236 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"MTRL", v236);
    CFRelease(v236);
    LODWORD(v309[0]) = (_VideoReceiver_GetTotalPLR(v275) * 10000.0);
    v237 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"VRxPLR", v237);
    CFRelease(v237);
    LODWORD(v309[0]) = v261;
    v238 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"RTPDownlinkIngressVideoPkts", v238);
    CFRelease(v238);
    LODWORD(v309[0]) = v267;
    v239 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"RTPDownlinkEgressVideoPkts", v239);
    CFRelease(v239);
    LODWORD(v309[0]) = v262;
    v240 = CFNumberCreate(alloca, kCFNumberIntType, v309);
    CFDictionaryAddValue(v269, @"RTPDownlinkIngressNonDupMediaPkts", v240);
    CFRelease(v240);
    v241 = *v275;
    if (v241)
    {
      v242 = 0;
      v243 = 0;
      v244 = v275 + 1494;
      v245 = v273;
      do
      {
        v242 += *(v244 - 1);
        v243 += *v244;
        v244 += 1088;
        --v241;
      }

      while (v241);
      if (v242)
      {
        LODWORD(v309[0]) = v242;
        v246 = CFNumberCreate(alloca, kCFNumberIntType, v309);
        CFDictionaryAddValue(v269, @"LTRAckTx", v246);
        CFRelease(v246);
        v245 = v273;
      }

      if (v243)
      {
        LODWORD(v309[0]) = v243;
        v247 = CFNumberCreate(alloca, kCFNumberIntType, v309);
        CFDictionaryAddValue(v269, @"LossFbTx", v247);
        CFRelease(v247);
        v245 = v273;
      }

      LODWORD(v241) = *v275;
      if (*v275)
      {
        v248 = 0;
        v249 = 1495;
        v250 = *v275;
        do
        {
          v248 += v275[v249];
          v249 += 1088;
          --v250;
        }

        while (v250);
        if (v248)
        {
          LODWORD(v309[0]) = v248;
          v251 = CFNumberCreate(alloca, kCFNumberIntType, v309);
          CFDictionaryAddValue(v269, @"RtcpAppLTRAckTx", v251);
          CFRelease(v251);
          v245 = v273;
          LODWORD(v241) = *v275;
        }
      }
    }

    else
    {
      v245 = v273;
    }

    *(v276 + 932) = *(v276 + 931);
    v276[459] = 0;
    v276[461] = 0;
    *(v276 + 470) = 0u;
    *(v276 + 1790) = 0;
    *(v275 + 2675) = xmmword_1DBD480B0;
    v276[468] = 0;
    *v270 = 0;
    *(v270 + 1) = 0;
    *v272 = NAN;
    v276[577] = 0;
    *v263 = *v266;
    v276[449] = v264;
    v276[450] = v271;
    *(v276 + 453) = v245;
    *(v276 + 455) = v268;
    *v265 = v274;
    if (v241)
    {
      v252 = v275;
      v241 = v241;
      do
      {
        v252[468] = v252[467];
        *(v252 + 930) = v252[466];
        *(v252 + 1493) = 0;
        v252[1495] = 0;
        v252 += 1088;
        --v241;
      }

      while (v241);
    }

    if (!*(v276 + 627))
    {
      if (VCOverlayManager_isOverlayEnabled())
      {
        OverlaySourceForToken = VCOverlayManager_createOverlaySourceForToken(*(v275 + 187), 1u);
        *(v276 + 627) = OverlaySourceForToken;
        VCOverlaySource_SetParticipantID(OverlaySourceForToken, *(v275 + 172));
      }
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t ___VideoReceiver_RegisterTransportCallbacks_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 42947) == 1)
  {
    v5 = *(*(a1 + 32) + 42952);
    if (v5)
    {
      _VideoReceiverUtil_LogRtpMediaPacket(a3 + 8, v5, *(a1 + 40));
    }
  }

  return _VideoReceiver_RTPPacketCallback(a2, a3);
}

uint64_t ___VideoReceiver_RegisterTransportCallbacks_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CheckInHandleDebug();
  if (result)
  {
    _VideoReceiver_ProcessVideoRTCPInternal(result, a2, a3);

    return CheckOutHandleDebug();
  }

  return result;
}

@end