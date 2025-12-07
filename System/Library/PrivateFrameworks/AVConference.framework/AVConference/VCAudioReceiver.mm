@interface VCAudioReceiver
@end

@implementation VCAudioReceiver

void __VCAudioReceiver_Finalize_block_invoke(uint64_t a1)
{
  VCRealTimeThread_Finalize(*(*(a1 + 32) + 576));
  v2 = *(a1 + 32);

  _VCAudioReceiver_Cleanup(v2);
}

double __VCAudioReceiver_PullAudioSamples_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3, BOOL *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3 + 8;
  v12 = a3 + 5;
  v13 = xmmword_1DBD50EC0;
  *(a3 + 21) = 16;
  *(a3 + 4) = 0;
  v9 = a3 + 1;
  VCAudioBufferList_GetTimestamp(a2);
  kdebug_trace();
  v10 = *(a1 + 32);
  ++*(v10 + 9176);
  if (v8 <= a3)
  {
    __break(0x5519u);
  }

  VCJitterBuffer_PlaybackGetSamples(*(v10 + 448), a2, a3, v9, &v12, a3 + 6, a3 + 7);
  *(a3 + 21) = BYTE8(v13);
  *a4 = a3[6] != 0;
  kdebug_trace();
  return result;
}

void *___VCAudioReceiver_RegisterReportingTask_block_invoke(void *result, uint64_t a2)
{
  v192 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = result[5];
  if (v3)
  {
    v4 = v3 < v2[6] && v3 >= v2[7];
    if (!v4)
    {
      goto LABEL_79;
    }
  }

  result = CheckInHandleDebug();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = result[56];
  if (!v6)
  {
    if (v5[152])
    {
      v6 = 0;
    }

    else
    {
      *(v5 + 608) = 1;
      reportingSymptom();
      v6 = *(v5 + 56);
    }
  }

  if (!VCJitterBuffer_GetIsRunning(v6))
  {
    v77 = v2[5];
    if (v77 && (v77 >= v2[6] || v77 < v2[7]))
    {
      goto LABEL_79;
    }

    return CheckOutHandleDebug();
  }

  v180 = 0;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  VCJitterBuffer_GetPlaybackReportingMetrics(*(v5 + 56), &v170);
  v7 = selectDestinationForRTMetrics();
  *valuePtr = v170;
  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"AAL", v9);
  CFRelease(v9);
  *valuePtr = DWORD1(v170);
  v10 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"AWL", v10);
  CFRelease(v10);
  *valuePtr = HIDWORD(v170);
  v11 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"AJQS", v11);
  CFRelease(v11);
  *valuePtr = *(&v170 + 2) * 1000.0;
  v12 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"XJoW", v12);
  CFRelease(v12);
  *valuePtr = DWORD1(v171);
  v13 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureRate", v13);
  CFRelease(v13);
  *valuePtr = DWORD2(v171);
  v14 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureRateAlt", v14);
  CFRelease(v14);
  *valuePtr = HIDWORD(v171);
  v15 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"FrameSpeechErasureRate", v15);
  CFRelease(v15);
  *valuePtr = v172;
  v16 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"JitterErasureRate", v16);
  CFRelease(v16);
  *valuePtr = DWORD1(v172);
  v17 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"WindowedFrameErasureRate", v17);
  CFRelease(v17);
  *valuePtr = DWORD2(v172);
  v18 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"RedErasureCompensationRate", v18);
  CFRelease(v18);
  *valuePtr = (*(&v172 + 3) * 1000.0);
  v19 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"MaxRedFrameRecoveryDepth", v19);
  CFRelease(v19);
  *valuePtr = v173;
  v20 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxPlayedCount", v20);
  CFRelease(v20);
  *valuePtr = DWORD1(v173);
  v21 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxPlayedBytes", v21);
  CFRelease(v21);
  *valuePtr = DWORD2(v173);
  v22 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"FramesPlayedCount", v22);
  CFRelease(v22);
  *valuePtr = DWORD2(v174);
  v23 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureCount", v23);
  CFRelease(v23);
  *valuePtr = HIDWORD(v174);
  v24 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"FrameErasureCountAlt", v24);
  CFRelease(v24);
  *valuePtr = HIDWORD(v175);
  v25 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"MaxConsecutiveAudioErasures", v25);
  CFRelease(v25);
  *valuePtr = BYTE12(v178);
  v26 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"EnhancedJBAdaptationsEnabled", v26);
  CFRelease(v26);
  *valuePtr = v179;
  v27 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"JBJumpSpikeCount", v27);
  CFRelease(v27);
  *valuePtr = DWORD1(v179);
  v28 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"JBSlopeSpikeCount", v28);
  CFRelease(v28);
  v29 = *(&v179 + 1);
  *valuePtr = v29;
  v30 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"JBSpikeSizeDelta", v30);
  CFRelease(v30);
  *valuePtr = DWORD1(v177);
  v31 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"TimescaleRate", v31);
  CFRelease(v31);
  *valuePtr = DWORD2(v177);
  v32 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"SpeechTimescaleRate", v32);
  CFRelease(v32);
  *valuePtr = HIDWORD(v177);
  v33 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"SilenceTimescaleRate", v33);
  CFRelease(v33);
  *valuePtr = v176;
  v34 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalTimescaleCount", v34);
  CFRelease(v34);
  *valuePtr = HIDWORD(v176);
  v35 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalExpandTimescaleCount", v35);
  CFRelease(v35);
  *valuePtr = v177;
  v36 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalCompressTimescaleCount", v36);
  CFRelease(v36);
  *valuePtr = DWORD2(v176);
  v37 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalSpeechTimescaleCount", v37);
  CFRelease(v37);
  *valuePtr = DWORD1(v176);
  v38 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"TotalSilenceTimescaleCount", v38);
  CFRelease(v38);
  memcpy(v5 + 2470, v5 + 2342, 0x200uLL);
  *(v5 + 2342) = 0u;
  *(v5 + 2346) = 0u;
  *(v5 + 2350) = 0u;
  *(v5 + 2354) = 0u;
  *(v5 + 2358) = 0u;
  *(v5 + 2362) = 0u;
  *(v5 + 2366) = 0u;
  *(v5 + 2370) = 0u;
  *(v5 + 2374) = 0u;
  *(v5 + 2378) = 0u;
  *(v5 + 2382) = 0u;
  *(v5 + 2386) = 0u;
  *(v5 + 2390) = 0u;
  *(v5 + 2394) = 0u;
  *(v5 + 2398) = 0u;
  *(v5 + 2402) = 0u;
  *(v5 + 2406) = 0u;
  *(v5 + 2410) = 0u;
  *(v5 + 2414) = 0u;
  *(v5 + 2418) = 0u;
  *(v5 + 2422) = 0u;
  *(v5 + 2426) = 0u;
  *(v5 + 2430) = 0u;
  *(v5 + 2434) = 0u;
  *(v5 + 2438) = 0u;
  *(v5 + 2442) = 0u;
  *(v5 + 2446) = 0u;
  *(v5 + 2450) = 0u;
  *(v5 + 2454) = 0u;
  *(v5 + 2458) = 0u;
  *(v5 + 2462) = 0u;
  *(v5 + 2466) = 0u;
  StringForPayloadData = _VCAudioReceiver_CreateStringForPayloadData(v5);
  if (StringForPayloadData)
  {
    v41 = StringForPayloadData;
    CFDictionaryAddValue(v7, @"Payload", StringForPayloadData);
    CFRelease(v41);
  }

  *(v5 + 2590) = 0u;
  *(v5 + 2594) = 0u;
  *(v5 + 2582) = 0u;
  *(v5 + 2586) = 0u;
  *(v5 + 2574) = 0u;
  *(v5 + 2578) = 0u;
  *(v5 + 2566) = 0u;
  *(v5 + 2570) = 0u;
  *(v5 + 2558) = 0u;
  *(v5 + 2562) = 0u;
  *(v5 + 2550) = 0u;
  *(v5 + 2554) = 0u;
  *(v5 + 2542) = 0u;
  *(v5 + 2546) = 0u;
  *(v5 + 2534) = 0u;
  *(v5 + 2538) = 0u;
  *(v5 + 2526) = 0u;
  *(v5 + 2530) = 0u;
  *(v5 + 2518) = 0u;
  *(v5 + 2522) = 0u;
  *(v5 + 2510) = 0u;
  *(v5 + 2514) = 0u;
  *(v5 + 2502) = 0u;
  *(v5 + 2506) = 0u;
  *(v5 + 2494) = 0u;
  *(v5 + 2498) = 0u;
  *(v5 + 2486) = 0u;
  *(v5 + 2490) = 0u;
  *(v5 + 2478) = 0u;
  *(v5 + 2482) = 0u;
  *(v5 + 2470) = 0u;
  *(v5 + 2474) = 0u;
  v169 = 0;
  v167 = 0u;
  v168 = 0u;
  v166 = 0u;
  VCJitterBuffer_GetReportingMetrics(*(v5 + 56), &v166, 0.0, v40);
  *valuePtr = *(&v166 + 1) * 1000.0;
  v42 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"NJB", v42);
  CFRelease(v42);
  *valuePtr = *(&v166 + 2) * 1000.0;
  v43 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"UJBL", v43);
  CFRelease(v43);
  v44 = *(&v168 + 1);
  *valuePtr = v44;
  v45 = CFNumberCreate(v8, kCFNumberFloat32Type, valuePtr);
  CFDictionaryAddValue(v7, @"RedOverheadDelay", v45);
  CFRelease(v45);
  *valuePtr = HIDWORD(v166);
  v46 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxCount", v46);
  CFRelease(v46);
  *valuePtr = v167;
  v47 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxBytes", v47);
  CFRelease(v47);
  *valuePtr = DWORD1(v167);
  v48 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxDiscardCount", v48);
  CFRelease(v48);
  *valuePtr = DWORD2(v167);
  v49 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"RedRxDiscardBytes", v49);
  CFRelease(v49);
  *valuePtr = HIDWORD(v167);
  v50 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v7, @"JitterBufferTargetChanges", v50);
  CFRelease(v50);
  *valuePtr = v5[123];
  v51 = CFNumberCreate(v8, kCFNumberIntType, valuePtr);
  theDict = v7;
  CFDictionaryAddValue(v7, @"ARCC", v51);
  CFRelease(v51);
  v52 = atomic_exchange(v5 + 194, 0);
  v53 = atomic_exchange(v5 + 207, 0);
  v56 = micro(v54, v55);
  v142 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = v56 - *(v5 + 528);
  *(v5 + 528) = v56;
  if (v60 >= 0.5)
  {
    v59 = ((8 * v52) / v60 / 1000.0 + 0.5);
    v58 = ((8 * v53) / v60 / 1000.0 + 0.5);
    v57 = ((8 * (v53 - v167)) / v60 / 1000.0 + 0.5);
    v142 = ((8 * v167) / v60 / 1000.0 + 0.5);
  }

  v139 = v57;
  v140 = v59;
  allocator = v8;
  v141 = v2;
  v5[1058] = v59;
  v138 = v58;
  v5[1059] = v58;
  v61 = *(&v170 + 1);
  if (*v5)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = (v5 + 2);
    while (1)
    {
      v185 = 0;
      v184 = 0;
      if (v69 >= (v5 + 58) || v69 < (v5 + 2))
      {
        break;
      }

      v70 = v65;
      RTPGetPacketLossMetrics(*v69, &v185 + 1, &v185, &v184);
      v160 = HIDWORD(v185);
      v162 = v185;
      v164 = v184;
      v181 = 0;
      v182 = 0;
      v183 = 0;
      RTPGetDownlinkReportingStats(*v69, &v181);
      v71 = v182;
      v152 = v181;
      v156 = v183;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v146 = VRTraceErrorLogLevelToCSTR();
        v72 = *MEMORY[0x1E6986650];
        log = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
            v74 = *(v69 + 8);
            *valuePtr = 136317186;
            *&valuePtr[4] = v146;
            *&valuePtr[12] = 2080;
            *&valuePtr[14] = "_VCAudioReceiver_GetRTPMetricsFromStreams";
            *&valuePtr[22] = 1024;
            *&valuePtr[24] = 547;
            *&valuePtr[28] = 2048;
            *&valuePtr[30] = v5;
            *&valuePtr[38] = 2080;
            *&valuePtr[40] = CStringPtr;
            *&valuePtr[48] = 1024;
            *&valuePtr[50] = v74;
            *&valuePtr[54] = 1024;
            *&valuePtr[56] = HIDWORD(v185);
            *&valuePtr[60] = 1024;
            *&valuePtr[62] = v185;
            *&valuePtr[66] = 1024;
            *&valuePtr[68] = v184;
            _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s idsStreamID=%u Total(Received=%u expected=%u lost=%u)", valuePtr, 0x48u);
          }
        }

        else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v75 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
          v76 = *(v69 + 8);
          *valuePtr = 136317186;
          *&valuePtr[4] = v146;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VCAudioReceiver_GetRTPMetricsFromStreams";
          *&valuePtr[22] = 1024;
          *&valuePtr[24] = 547;
          *&valuePtr[28] = 2048;
          *&valuePtr[30] = v5;
          *&valuePtr[38] = 2080;
          *&valuePtr[40] = v75;
          *&valuePtr[48] = 1024;
          *&valuePtr[50] = v76;
          *&valuePtr[54] = 1024;
          *&valuePtr[56] = HIDWORD(v185);
          *&valuePtr[60] = 1024;
          *&valuePtr[62] = v185;
          *&valuePtr[66] = 1024;
          *&valuePtr[68] = v184;
          _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s idsStreamID=%u Total(Received=%u expected=%u lost=%u)", valuePtr, 0x48u);
        }
      }

      v62 += v160;
      v63 += v162;
      v64 += v164;
      v65 = (v70 + v71);
      v66 += v156;
      v67 += v152;
      ++v68;
      v69 += 56;
      if (v68 >= *v5)
      {
        goto LABEL_37;
      }
    }

LABEL_79:
    __break(0x5519u);
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
LABEL_37:
  v78 = v5[197];
  v4 = v63 >= v78;
  v79 = v63 - v78;
  loga = v65;
  v165 = v62;
  v163 = v66;
  if (v4)
  {
    v158 = v79;
    v62 -= v5[195];
    v150 = v64 - v5[198];
    v161 = v65 - *(v5 + 100);
    v82 = v67 - *(v5 + 101);
    v81 = v66 - *(v5 + 102);
    v86 = allocator;
    v85 = theDict;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v90 = VRTraceErrorLogLevelToCSTR();
      v91 = *MEMORY[0x1E6986650];
      v154 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
          *valuePtr = 136317698;
          *&valuePtr[4] = v90;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
          *&valuePtr[22] = 1024;
          *&valuePtr[24] = 578;
          *&valuePtr[28] = 2048;
          *&valuePtr[30] = v5;
          *&valuePtr[38] = 2080;
          *&valuePtr[40] = v92;
          *&valuePtr[48] = 1024;
          *&valuePtr[50] = v165;
          *&valuePtr[54] = 1024;
          *&valuePtr[56] = v63;
          *&valuePtr[60] = 1024;
          *&valuePtr[62] = v64;
          *&valuePtr[66] = 1024;
          *&valuePtr[68] = v62;
          *&valuePtr[72] = 1024;
          *&valuePtr[74] = v158;
          *&valuePtr[78] = 1024;
          v93 = v150;
          *v187 = v150;
          _os_log_impl(&dword_1DB56E000, v154, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Total(Received=%u expected=%u lost=%u) Reporting interval(Received=%u expected=%u lost=%u)", valuePtr, 0x54u);
LABEL_47:
          v84 = v158;
          v83 = v93;
          goto LABEL_52;
        }
      }

      else if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        v136 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
        *valuePtr = 136317698;
        *&valuePtr[4] = v90;
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
        *&valuePtr[22] = 1024;
        *&valuePtr[24] = 578;
        *&valuePtr[28] = 2048;
        *&valuePtr[30] = v5;
        *&valuePtr[38] = 2080;
        *&valuePtr[40] = v136;
        *&valuePtr[48] = 1024;
        *&valuePtr[50] = v165;
        *&valuePtr[54] = 1024;
        *&valuePtr[56] = v63;
        *&valuePtr[60] = 1024;
        *&valuePtr[62] = v64;
        *&valuePtr[66] = 1024;
        *&valuePtr[68] = v62;
        *&valuePtr[72] = 1024;
        *&valuePtr[74] = v158;
        *&valuePtr[78] = 1024;
        v93 = v150;
        *v187 = v150;
        _os_log_debug_impl(&dword_1DB56E000, v154, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Total(Received=%u expected=%u lost=%u) Reporting interval(Received=%u expected=%u lost=%u)", valuePtr, 0x54u);
        goto LABEL_47;
      }
    }

    v83 = v150;
    v84 = v158;
    goto LABEL_52;
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  LODWORD(v81) = v66;
  LODWORD(v82) = v67;
  LODWORD(v161) = v65;
  v83 = v64;
  v84 = v63;
  v86 = allocator;
  v85 = theDict;
  if (ErrorLogLevelForModule < 8)
  {
    goto LABEL_52;
  }

  v153 = VRTraceErrorLogLevelToCSTR();
  v87 = *MEMORY[0x1E6986650];
  v157 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
    LODWORD(v81) = v163;
    LODWORD(v82) = v67;
    LODWORD(v161) = v65;
    v83 = v64;
    v84 = v63;
    if (!v88)
    {
      goto LABEL_52;
    }

    v89 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
    *valuePtr = 136316930;
    *&valuePtr[4] = v153;
    *&valuePtr[12] = 2080;
    *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
    *&valuePtr[22] = 1024;
    *&valuePtr[24] = 587;
    *&valuePtr[28] = 2048;
    *&valuePtr[30] = v5;
    *&valuePtr[38] = 2080;
    *&valuePtr[40] = v89;
    *&valuePtr[48] = 1024;
    *&valuePtr[50] = v62;
    *&valuePtr[54] = 1024;
    *&valuePtr[56] = v63;
    *&valuePtr[60] = 1024;
    *&valuePtr[62] = v64;
    _os_log_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Expected packet count decreased, resetting counts. Received=%u expected=%u lost=%u", valuePtr, 0x42u);
    goto LABEL_42;
  }

  v94 = os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG);
  LODWORD(v81) = v163;
  LODWORD(v82) = v67;
  LODWORD(v161) = v65;
  v83 = v64;
  v84 = v63;
  if (v94)
  {
    v95 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
    *valuePtr = 136316930;
    *&valuePtr[4] = v153;
    *&valuePtr[12] = 2080;
    *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
    *&valuePtr[22] = 1024;
    *&valuePtr[24] = 587;
    *&valuePtr[28] = 2048;
    *&valuePtr[30] = v5;
    *&valuePtr[38] = 2080;
    *&valuePtr[40] = v95;
    *&valuePtr[48] = 1024;
    *&valuePtr[50] = v62;
    *&valuePtr[54] = 1024;
    *&valuePtr[56] = v63;
    *&valuePtr[60] = 1024;
    *&valuePtr[62] = v64;
    _os_log_debug_impl(&dword_1DB56E000, v157, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d [%p] participantID=%s Expected packet count decreased, resetting counts. Received=%u expected=%u lost=%u", valuePtr, 0x42u);
LABEL_42:
    LODWORD(v81) = v163;
    LODWORD(v82) = v67;
    LODWORD(v161) = v65;
    v83 = v64;
    v84 = v63;
  }

LABEL_52:
  v96 = 0;
  v97 = 0.0;
  v147 = v63;
  v145 = v64;
  v137 = v67;
  v155 = v62;
  v98 = v82;
  if (v84 && v83)
  {
    v99 = (v83 / v84);
    v100 = 100.0;
    if (v99 * 100.0 <= 100.0)
    {
      v100 = v99 * 100.0;
    }

    v97 = v100;
    v96 = (v99 * 10000.0);
  }

  v159 = v84;
  v151 = v83;
  *valuePtr = v96;
  v101 = CFNumberCreate(v86, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v85, @"ARxPLR", v101);
  CFRelease(v101);
  *valuePtr = v161;
  v102 = CFNumberCreate(v86, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v85, @"RTPDownlinkIngressAudioPkts", v102);
  CFRelease(v102);
  *valuePtr = v98;
  v103 = CFNumberCreate(v86, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v85, @"RTPDownlinkIngressNonDupMediaPkts", v103);
  CFRelease(v103);
  *valuePtr = v81;
  v104 = CFNumberCreate(v86, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(v85, @"RTPDownlinkEgressAudioPkts", v104);
  CFRelease(v104);
  v105 = atomic_exchange(v5 + 208, 0);
  v106 = atomic_exchange(v5 + 211, 0);
  v107 = atomic_exchange(v5 + 212, 0);
  v108 = atomic_exchange(v5 + 210, 0);
  v109 = atomic_exchange(v5 + 209, 0);
  v110 = atomic_exchange(v5 + 213, 0);
  v111 = atomic_exchange(v5 + 214, 0);
  VCUtil_ExponentialMovingAverage(v5 + 206, v97, 3.0);
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v112 = VRTraceErrorLogLevelToCSTR();
    v113 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v114 = CFStringGetCStringPtr(*(v5 + 35), 0x8000100u);
      *valuePtr = 136319234;
      v115 = *(v5 + 206);
      *&valuePtr[4] = v112;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "_VCAudioReceiver_CalculateAndReportRTPMetrics";
      *&valuePtr[22] = 1024;
      *&valuePtr[24] = 624;
      *&valuePtr[28] = 2080;
      *&valuePtr[30] = v114;
      *&valuePtr[38] = 2048;
      *&valuePtr[40] = v61 * 100.0;
      *&valuePtr[48] = 2048;
      *&valuePtr[50] = v115;
      *&valuePtr[58] = 2048;
      *&valuePtr[60] = v97;
      *&valuePtr[68] = 1024;
      *&valuePtr[70] = v155;
      *&valuePtr[74] = 1024;
      *&valuePtr[76] = v159;
      *v187 = 1024;
      *&v187[2] = v151;
      *&v187[6] = 1024;
      *&v187[8] = v105;
      *&v187[12] = 1024;
      *&v187[14] = v106;
      *&v187[18] = 1024;
      *&v187[20] = v107;
      *&v187[24] = 1024;
      *&v187[26] = v108;
      *&v187[30] = 1024;
      LODWORD(v188) = v109;
      WORD2(v188) = 1024;
      *(&v188 + 6) = v110;
      WORD5(v188) = 1024;
      HIDWORD(v188) = v111;
      _os_log_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d @=@ Health: VCAudioReceiver ParticipantID=%s erasure percentage=%.2f%% PLR percentage=%.2f%% current percentage:%.2f%% (rec:%u exp:%u, loss:%u) receiver(rtp=%u, bb=%u, unk=%u, dup=%u, drop=%u) jb(enc=%u, drop=%u)", valuePtr, 0x80u);
    }
  }

  v5[195] = v165;
  v5[196] += v155;
  v5[197] = v147;
  v5[198] = v145;
  *(v5 + 100) = loga;
  *(v5 + 101) = v137;
  *(v5 + 102) = v163;
  *valuePtr = v140;
  v116 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"ARxR", v116);
  CFRelease(v116);
  *valuePtr = v5[196];
  v117 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"APktRx", v117);
  CFRelease(v117);
  *valuePtr = v138;
  v118 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"AMRR", v118);
  CFRelease(v118);
  *valuePtr = v139;
  v119 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"ARxDecodeBitrate", v119);
  CFRelease(v119);
  *valuePtr = v142;
  v120 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
  CFDictionaryAddValue(theDict, @"RedRxBitrate", v120);
  CFRelease(v120);
  if (*(v5 + 9168) == 1)
  {
    *valuePtr = v5[2334];
    v121 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
    CFDictionaryAddValue(theDict, @"MSTC", v121);
    CFRelease(v121);
    v5[2334] = 0;
    v122 = *(v5 + 1165);
    *valuePtr = v122;
    v123 = CFNumberCreate(allocator, kCFNumberFloat32Type, valuePtr);
    CFDictionaryAddValue(theDict, @"MSTT", v123);
    CFRelease(v123);
    *(v5 + 1165) = 0;
    v124 = *(v5 + 1166);
    *valuePtr = v124;
    v125 = CFNumberCreate(allocator, kCFNumberFloat32Type, valuePtr);
    CFDictionaryAddValue(theDict, @"MMST", v125);
    CFRelease(v125);
    *(v5 + 1166) = 0;
  }

  v126 = *(v5 + 1169);
  if (v126)
  {
    *valuePtr = 0;
    VCAudioIssueDetector_GetReportingStats(v126, valuePtr);
  }

  if ((v5[69] & 1) == 0 && *v5)
  {
    v127 = 0;
    v128 = (v5 + 2);
    while (v128 < v5 + 29 && v128 >= v5 + 1)
    {
      v129 = *v128;
      v128 += 7;
      v189 = v178;
      v190 = v179;
      v191 = v180;
      *&valuePtr[64] = v174;
      *v187 = v175;
      *&v187[16] = v176;
      v188 = v177;
      *valuePtr = v170;
      *&valuePtr[16] = v171;
      *&valuePtr[32] = v172;
      *&valuePtr[48] = v173;
      _VCAudioReceiver_ReportAWDMetrics(v5, v129, valuePtr);
      if (++v127 >= *v5)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_79;
  }

LABEL_70:
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v130 = VRTraceErrorLogLevelToCSTR();
    v131 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v132 = v5[2341];
      v133 = *(v5 + 4586);
      v134 = v5[196];
      *valuePtr = 136318210;
      *&valuePtr[4] = v130;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "_VCAudioReceiver_RegisterReportingTask_block_invoke";
      *&valuePtr[22] = 1024;
      *&valuePtr[24] = 815;
      *&valuePtr[28] = 2048;
      *&valuePtr[30] = v5;
      *&valuePtr[38] = 1024;
      *&valuePtr[40] = v140;
      *&valuePtr[44] = 1024;
      *&valuePtr[46] = v138;
      *&valuePtr[50] = 1024;
      *&valuePtr[52] = v132;
      *&valuePtr[56] = 1024;
      *&valuePtr[58] = v133;
      *&valuePtr[62] = 1024;
      *&valuePtr[64] = v142;
      *&valuePtr[68] = 1024;
      *&valuePtr[70] = v134;
      *&valuePtr[74] = 1024;
      *&valuePtr[76] = v139;
      *v187 = 1024;
      *&v187[2] = ((8 * DWORD1(v173)) / v60 / 1000.0 + 0.5);
      *&v187[6] = 1024;
      *&v187[8] = ((8 * DWORD2(v167)) / v60 / 1000.0 + 0.5);
      _os_log_impl(&dword_1DB56E000, v131, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d @=@ Health: VCAudioReceiver [%p] audioRxBitrate=%ukbps, primaryAudioRxRate=%ukbps payload=%d streamID=%d redReceivedBitrate=%ukbps totalPacketsReceived=%d mediaBitrateNoRed=%ukbps redPlayedRate=%ukbps redDiscardedRate=%ukbps", valuePtr, 0x5Cu);
    }
  }

  v135 = v141[5];
  if (v135 && (v135 >= v141[6] || v135 < v141[7]))
  {
    goto LABEL_79;
  }

  return CheckOutHandleDebug();
}

void ___VCAudioReceiver_RegisterStatistics_block_invoke(uint64_t a1, int *a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *a2;
    if (*a2 == 11)
    {
      v5 = *(a2 + 50);
      if (v5 != 0xFFFF)
      {
        v6 = *(a2 + 97);
        v7 = *(a2 + 49);
        *&v17 = *(a2 + 4);
        *(&v17 + 1) = v6;
        WORD5(v17) = v7;
        WORD6(v17) = v5;
        VCJitterBuffer_ProcessWiFiNetworkNotification(*(v3 + 448), &v17, a3);
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        WORD6(v17) = v15;
        OUTLINED_FUNCTION_6();
        v18 = 139;
        v19 = v16;
        v20 = v4;
        v8 = &dword_1DB56E000;
        v11 = "VCAudioReceiver [%s] %s:%d Wrong type of statistics message is processed by VCAudioStream type=%d";
        v12 = &v17;
        v9 = v14;
        v10 = OS_LOG_TYPE_ERROR;
        v13 = 34;
        goto LABEL_12;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v18 = 138;
      OUTLINED_FUNCTION_2_0();
LABEL_12:
      _os_log_error_impl(v8, v9, v10, v11, v12, v13);
    }
  }
}

@end