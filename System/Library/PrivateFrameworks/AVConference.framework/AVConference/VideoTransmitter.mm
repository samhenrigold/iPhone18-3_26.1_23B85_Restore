@interface VideoTransmitter
@end

@implementation VideoTransmitter

uint64_t ___VideoTransmitter_HandleDataBuffer_block_invoke(uint64_t a1)
{
  _VideoTransmitter_TransmitFrame(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  _VideoTransmitter_ProcessEncoderArgs(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  return CheckOutHandleDebug();
}

uint64_t ___VideoTransmitter_RetransmitPacketDispatched_block_invoke(uint64_t a1)
{
  result = RTPTransportResendRTP(*(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 56), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke(uint64_t a1, uint64_t a2)
{
  v192 = *MEMORY[0x1E69E9840];
  result = CheckInHandleDebug();
  if (result)
  {
    v5 = result;
    v6 = (result + 23632);
    v7 = atomic_load((result + 23824));
    if (v7)
    {
      v8 = (result + 16886);
      v152 = 0.0;
      VideoTransmitter_GetFramerate(*(a1 + 32), &v152, 1.0);
      v10 = v152;
      if (v152 > 0.0)
      {
        ++*(v5 + 16958);
        LOWORD(v9) = *(v5 + 16952);
        *&v11 = v10 + v9;
        *(v5 + 16952) = *&v11;
        LOWORD(v11) = *(v5 + 16954);
        v12 = v11;
        if (v10 > v12)
        {
          *(v5 + 16954) = v10;
        }

        LOWORD(v12) = *(v5 + 16956);
        if (v10 < *&v12)
        {
          *(v5 + 16956) = v10;
        }
      }

      v151 = 0.0;
      VideoTransmitter_GetBitrate(*(a1 + 32), &v151, 1.0);
      v13 = v151;
      if (*(v5 + 368) < v151)
      {
        *(v5 + 368) = v151;
      }

      if (*(v5 + 376) > v13)
      {
        *(v5 + 376) = v13;
      }

      if (a2)
      {
        _VideoTransmitter_GetBitrates(v5, (v5 + 328), (v5 + 336), (v5 + 344), (v5 + 352), (v5 + 360), *(v5 + 12));
        v14 = selectDestinationForRTMetrics();
        v15 = *(v5 + 12);
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        if (v15)
        {
          v17 = *(v5 + 320) / v15;
          v18 = *(v5 + 324) / v15;
        }

        *valuePtr = (v17 / 1000.0 + 0.5);
        v19 = *MEMORY[0x1E695E480];
        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRHDRVCP", v20);
        CFRelease(v20);
        *valuePtr = (v18 / 1000.0 + 0.5);
        v21 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRFECVCP", v21);
        CFRelease(v21);
        v22 = *(v5 + 328);
        if (v22 > 0.0)
        {
          v16 = *(v5 + 344) * 100.0 / v22;
        }

        v23 = v16;
        *valuePtr = v23;
        v24 = CFNumberCreate(v19, kCFNumberFloat32Type, valuePtr);
        CFDictionaryAddValue(v14, @"VTxFECOverhead", v24);
        CFRelease(v24);
        *valuePtr = (*(v5 + 328) / 1000.0 + 0.5);
        v25 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRMedia", v25);
        CFRelease(v25);
        *valuePtr = (*(v5 + 336) / 1000.0 + 0.5);
        v26 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRHDR", v26);
        CFRelease(v26);
        *valuePtr = (*(v5 + 344) / 1000.0 + 0.5);
        v27 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRFEC", v27);
        CFRelease(v27);
        *valuePtr = (*(v5 + 360) / 1000.0 + 0.5);
        v28 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxR", v28);
        CFRelease(v28);
        *valuePtr = (*(v5 + 368) / 1000.0 + 0.5);
        v29 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRMax", v29);
        CFRelease(v29);
        *valuePtr = (*(v5 + 376) / 1000.0 + 0.5);
        v30 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRMin", v30);
        CFRelease(v30);
        *valuePtr = (*(v5 + 36) / 1000.0 + 0.5);
        v31 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxRTarget", v31);
        CFRelease(v31);
        *valuePtr = (*(v5 + 352) / 1000.0 + 0.5);
        v32 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxMetadataOverhead", v32);
        CFRelease(v32);
        *valuePtr = *(v5 + 16);
        v33 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"CodecPayload", v33);
        CFRelease(v33);
        if (*(v6 + 268))
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        *valuePtr = v34;
        v35 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"CodecLayers", v35);
        CFRelease(v35);
        *valuePtr = v6[3];
        v36 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"QID", v36);
        CFRelease(v36);
        if (*(v5 + 16958))
        {
          LOWORD(v37) = *(v5 + 16952);
          *&v37 = v37 / *(v5 + 16958);
        }

        else
        {
          LODWORD(v37) = 0;
        }

        *valuePtr = v37;
        v38 = CFNumberCreate(v19, kCFNumberFloat32Type, valuePtr);
        CFDictionaryAddValue(v14, @"ATFr", v38);
        CFRelease(v38);
        *valuePtr = *(v5 + 16954);
        v39 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"XTFr", v39);
        CFRelease(v39);
        v40 = *(v5 + 16956);
        if (v40 == 0xFFFF)
        {
          v40 = 0;
        }

        *valuePtr = v40;
        v41 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"NTFr", v41);
        CFRelease(v41);
        *valuePtr = *(v5 + 4832);
        v42 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VFEC", v42);
        CFRelease(v42);
        *valuePtr = *v8;
        v43 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"AFECL", v43);
        CFRelease(v43);
        *v8 = 0;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *valuePtr = (VCFECGeneratorCommon_GetProcessingAverageTime(DerivedStorage) * 10000000.0);
        v45 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VTxFECTime", v45);
        CFRelease(v45);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v48 = v6[46];
            v49 = v6[47];
            *valuePtr = 136316418;
            *&valuePtr[4] = v46;
            v154 = 2080;
            v155 = "_VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke";
            v156 = 1024;
            v157 = 889;
            v158 = 2048;
            *v159 = v5;
            *&v159[8] = 1024;
            *&v159[10] = v48;
            *&v159[14] = 1024;
            *&v159[16] = v49;
            _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p] numPSFBltrACKsReceived=%u, numAPPltrACKsReceived=%u", valuePtr, 0x32u);
          }
        }

        if (v6[46])
        {
          *valuePtr = v6[46];
          v50 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
          CFDictionaryAddValue(v14, @"LTRAckRx", v50);
          CFRelease(v50);
          v6[46] = 0;
        }

        if (v6[47])
        {
          *valuePtr = v6[47];
          v51 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
          CFDictionaryAddValue(v14, @"RtcpAppLTRAckRx", v51);
          CFRelease(v51);
          v6[47] = 0;
        }

        v52 = *(v5 + 23832);
        if (v52 && *(v6 + 114) == 1)
        {
          VCNACKConsumer_GetStatistics(v52, v14);
        }

        *(v5 + 368) = xmmword_1DBD480B0;
        *(v5 + 16952) = 0xFFFF00000000;
        if (*(v5 + 1928))
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v56 = (v5 + 560);
          do
          {
            v150 = 0;
            RTPGetPacketSent(*v56, &v150);
            v54 += v150;
            *valuePtr = 0;
            v57 = *v56;
            v56 += 19;
            RTPGetUplinkReportingStats(v57, valuePtr);
            v55 += *valuePtr;
            ++v53;
          }

          while (v53 < *(v5 + 1928));
        }

        else
        {
          v55 = 0;
          v54 = 0;
        }

        v58 = *(v5 + 23616);
        if (v55 <= v58)
        {
          LODWORD(v58) = 0;
        }

        v143 = v55;
        v59 = *(v5 + 264);
        theDict = v59 - *(v5 + 268);
        *(v5 + 268) = v59;
        *valuePtr = v55 - v58;
        v60 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"RTPUplinkIngressVideoPkts", v60);
        CFRelease(v60);
        *valuePtr = v54;
        v61 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VPS", v61);
        CFRelease(v61);
        *valuePtr = *(v5 + 16960);
        v62 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VMediaPktSent", v62);
        CFRelease(v62);
        *valuePtr = *(v5 + 16912);
        allocator = v19;
        v63 = CFNumberCreate(v19, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VNWET", v63);
        CFRelease(v63);
        v66 = v5 + 18232;
        v67 = *(v5 + 18232);
        if ((*(v5 + 18216) & 1) == 0)
        {
          v67 = (v67 / fmax((micro(v64, v65) - *(v5 + 18224)) / 5.0, 1.0));
          *(v5 + 18216) = 1;
        }

        *valuePtr = v67;
        v68 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"VFCCnt", v68);
        CFRelease(v68);
        *valuePtr = *(v5 + 18260);
        v69 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"IdleFrameCount", v69);
        CFRelease(v69);
        v70 = v14;
        v142 = (v5 + 18240);
        *valuePtr = *(v5 + 18240);
        v71 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v14, @"EncInFrameCnt", v71);
        CFRelease(v71);
        v72 = (v5 + 18244);
        *valuePtr = *(v5 + 18244);
        v73 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v70, @"EncOutFrameCnt", v73);
        CFRelease(v73);
        v74 = (v5 + 18256);
        *valuePtr = *(v5 + 18256);
        v75 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v70, @"VTxNoFecTF", v75);
        CFRelease(v75);
        v145 = v5 + 16886;
        *valuePtr = *(v5 + 16992);
        v76 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v70, @"VTxSinglePktFrame", v76);
        CFRelease(v76);
        *valuePtr = v59;
        v77 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v70, @"VTxKeyFramesSent", v77);
        CFRelease(v77);
        v148 = v5;
        *valuePtr = *(v5 + 272);
        v78 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v70, @"VTxTotalIDR", v78);
        CFRelease(v78);
        *valuePtr = theDict;
        v79 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        v144 = v70;
        CFDictionaryAddValue(v70, @"VTxDeltaKeyFramesSent", v79);
        CFRelease(v79);
        if (*(v6 + 376) == 1)
        {
          v80 = *(v6 + 95);
          if (v80 > 0.0 && (*(v6 + 96) / v80) > 1.0)
          {
            ++v6[97];
          }

          ++v6[98];
          *(v6 + 95) = 0;
        }

        v81 = *v72;
        v82 = *v6;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v83 = VRTraceErrorLogLevelToCSTR();
          v84 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v141 = *(v148 + 440);
            v85 = FourccToCStr(*(v148 + 528));
            v86 = *v66;
            v87 = *(v145 + 1350);
            v88 = *(v145 + 1362);
            v89 = *(v145 + 1378);
            v90 = *v142;
            v91 = *(v148 + 12);
            v92 = *v72;
            v93 = *(v145 + 1366);
            v94 = *v74;
            v95 = *(v145 + 106);
            *valuePtr = 136321026;
            v97 = *(v148 + 328);
            v96 = *(v148 + 336);
            v98 = *(v148 + 344);
            v99 = *(v148 + 360);
            v100 = *(v148 + 4780);
            *&valuePtr[4] = v83;
            v154 = 2080;
            v155 = "_VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke";
            v156 = 1024;
            v157 = 964;
            v158 = 1024;
            *v159 = v141;
            *&v159[4] = 2080;
            *&v159[6] = v85;
            *&v159[14] = 1024;
            *&v159[16] = v86;
            LOWORD(v160) = 1024;
            *(&v160 + 2) = v87;
            HIWORD(v160) = 1024;
            *v161 = v88;
            *&v161[4] = 1024;
            *&v161[6] = v89;
            v162 = 1024;
            v163 = v90;
            v164 = 1024;
            v165 = v81 / v82;
            v166 = 2048;
            v167 = ((v81 / v82) / v91);
            v168 = 1024;
            v169 = v92;
            v170 = 2048;
            v171 = (v92 / v91);
            v172 = 1024;
            v173 = v93;
            v174 = 1024;
            v175 = v94;
            v176 = 1024;
            v177 = v95;
            v178 = 2048;
            v179 = v97;
            v180 = 2048;
            v181 = v96;
            v182 = 2048;
            v183 = v98;
            v184 = 2048;
            v185 = v99;
            v186 = 2048;
            v187 = v16;
            v188 = 1024;
            v189 = v100;
            v190 = 1024;
            v191 = theDict;
            _os_log_impl(&dword_1DB56E000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VideoTransmitter streamID=%d, streamGroupId=%s, toBeBufferedFrameCount=%d, bufferedFrameCount=%d, encoderProcCount=%d, transmitterProcCount=%d toBeEncodedFrameCount=%d, encodedFullFrameCount=%d, encodedFullFrameRate=%f, encodedFrameCount=%d, encodedFrameRate=%f, transmittedFrameCount=%d, transmittedNonFECFrameCount=%d, singlePacketFrameCount=%d, currentMediaBitrate=%f, currentHeaderBitrate=%f, currentFECBitrate=%f, currentTotalBitrate=%f, currentFECOverhead=%2.4f targetBitrate=%d deltaKeyFramesSent=%d", valuePtr, 0xBAu);
          }
        }

        _VideoTransmitter_ReportInvalidVideoTxCaptureFrameCount(v148);
        *(v148 + 360) = 0;
        *(v145 + 106) = 0;
        *(v148 + 320) = 0u;
        *(v148 + 336) = 0u;
        *v66 = 0u;
        *(v66 + 16) = 0u;
        *(v66 + 32) = 0;
        v101 = MEMORY[0x1E695E9D8];
        v102 = MEMORY[0x1E695E9E8];
        theDicta = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        Mutable = CFDictionaryCreateMutable(allocator, 0, v101, v102);
        v104 = CFDictionaryCreateMutable(allocator, 0, v101, v102);
        v105 = CFDictionaryCreateMutable(allocator, 0, v101, v102);
        v106 = CFDictionaryCreateMutable(allocator, 0, v101, v102);
        v107 = CFDictionaryCreateMutable(allocator, 0, v101, v102);
        v108 = 0;
        v109 = (v145 + 1906);
        do
        {
          if (*(v109 - 6))
          {
            v110 = CFStringCreateWithFormat(allocator, 0, @"%u", v108);
            *valuePtr = *(v109 - 5);
            v111 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(Mutable, v110, v111);
            CFRelease(v111);
            *valuePtr = *(v109 - 4);
            v112 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v104, v110, v112);
            CFRelease(v112);
            *valuePtr = *(v109 - 6);
            v113 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v105, v110, v113);
            CFRelease(v113);
            *valuePtr = *v109;
            v114 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v106, v110, v114);
            CFRelease(v114);
            *valuePtr = *(v109 - 1);
            v115 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
            CFDictionaryAddValue(v107, v110, v115);
            CFRelease(v115);
            CFRelease(v110);
          }

          ++v108;
          v109 += 12;
        }

        while (v108 != 101);
        CFDictionaryAddValue(theDicta, @"VFecDB", Mutable);
        CFDictionaryAddValue(theDicta, @"VFecPB", v104);
        CFDictionaryAddValue(theDicta, @"VFecTF", v105);
        CFDictionaryAddValue(theDicta, @"VFecMPC", v106);
        CFDictionaryAddValue(theDicta, @"VFecPPC", v107);
        CFRelease(Mutable);
        CFRelease(v104);
        CFRelease(v105);
        CFRelease(v106);
        CFRelease(v107);
        CFDictionaryAddValue(v144, @"VTxFecStats", theDicta);
        CFRelease(theDicta);
        v116 = 0;
        v117 = (v145 + 1402);
        do
        {
          if (*v117)
          {
            v118 = FECUtil_GranularLevelToPrecentage(v116);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v119 = VRTraceErrorLogLevelToCSTR();
              v120 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v121 = *(v117 - 2);
                v122 = *(v117 - 1);
                v123 = *v117;
                *valuePtr = 136316930;
                *&valuePtr[4] = v119;
                v154 = 2080;
                v155 = "_VideoTransmitter_ReportingRegisterPeriodicTask_block_invoke";
                v156 = 1024;
                v157 = 994;
                v158 = 2048;
                *v159 = v148;
                *&v159[8] = 2048;
                *&v159[10] = v118;
                *&v159[18] = 2048;
                v160 = v121;
                *v161 = 2048;
                *&v161[2] = v122;
                v162 = 1024;
                v163 = v123;
                _os_log_impl(&dword_1DB56E000, v120, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter[%p] FEC health report: fecLevel:%.2f data:%llu, parity:%llu, totalFrame:%d", valuePtr, 0x4Au);
              }
            }
          }

          ++v116;
          v117 += 12;
        }

        while (v116 != 10);
        bzero((v148 + 18752), 0x12F0uLL);
        *(v148 + 18720) = 0u;
        *(v148 + 18736) = 0u;
        *(v148 + 18688) = 0u;
        *(v148 + 18704) = 0u;
        *(v148 + 18656) = 0u;
        *(v148 + 18672) = 0u;
        *(v148 + 18624) = 0u;
        *(v148 + 18640) = 0u;
        *(v148 + 18592) = 0u;
        *(v148 + 18608) = 0u;
        *(v148 + 18560) = 0u;
        *(v148 + 18576) = 0u;
        *(v148 + 18528) = 0u;
        *(v148 + 18544) = 0u;
        *(v148 + 18496) = 0u;
        *(v148 + 18512) = 0u;
        *(v148 + 18464) = 0u;
        *(v148 + 18480) = 0u;
        *(v148 + 18432) = 0u;
        *(v148 + 18448) = 0u;
        *(v148 + 18400) = 0u;
        *(v148 + 18416) = 0u;
        *(v148 + 18368) = 0u;
        *(v148 + 18384) = 0u;
        *(v148 + 18336) = 0u;
        *(v148 + 18352) = 0u;
        *(v148 + 18304) = 0u;
        *(v148 + 18320) = 0u;
        *(v148 + 18272) = 0u;
        *(v148 + 18288) = 0u;
        *valuePtr = 0;
        v124 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"AVPEL", v124);
        CFRelease(v124);
        *valuePtr = 0;
        v125 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"AVEL", v125);
        CFRelease(v125);
        *valuePtr = 0;
        v126 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"AVPL", v126);
        CFRelease(v126);
        *valuePtr = 0;
        v127 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"APSL", v127);
        CFRelease(v127);
        *valuePtr = 0;
        v128 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"ATSL", v128);
        CFRelease(v128);
        *valuePtr = 0;
        v129 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"MVPEL", v129);
        CFRelease(v129);
        *valuePtr = 0;
        v130 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"MVEL", v130);
        CFRelease(v130);
        *valuePtr = 0;
        v131 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"MVEL", v131);
        CFRelease(v131);
        *valuePtr = 0;
        v132 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"MPSL", v132);
        CFRelease(v132);
        *valuePtr = 0;
        v133 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"MTSL", v133);
        CFRelease(v133);
        pthread_mutex_lock((v148 + 17232));
        *valuePtr = *(v145 + 410);
        v134 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"AFL", v134);
        CFRelease(v134);
        *valuePtr = *(v145 + 414);
        v135 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"VFL", v135);
        CFRelease(v135);
        *(v148 + 17296) = 0;
        pthread_mutex_unlock((v148 + 17232));
        *valuePtr = *(v148 + 424);
        v136 = CFNumberCreate(allocator, kCFNumberIntType, valuePtr);
        CFDictionaryAddValue(v144, @"AVHTDCount", v136);
        CFRelease(v136);
        *valuePtr = *(v148 + 408);
        v137 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v144, @"AVHTDMax", v137);
        CFRelease(v137);
        *valuePtr = *(v148 + 416);
        v138 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v144, @"AVHTDMin", v138);
        CFRelease(v138);
        *valuePtr = *(v148 + 400);
        v139 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v144, @"AVHTDSum", v139);
        CFRelease(v139);
        *valuePtr = *(v148 + 392);
        v140 = CFNumberCreate(allocator, kCFNumberDoubleType, valuePtr);
        CFDictionaryAddValue(v144, @"AVHTDAbsSum", v140);
        CFRelease(v140);
        *(v148 + 424) = 0;
        *(v148 + 408) = xmmword_1DBD485F0;
        *(v148 + 392) = 0;
        *(v148 + 400) = 0;
        *(v148 + 23616) = v143;
      }

      return CheckOutHandleDebug();
    }

    else
    {

      return CheckOutHandleDebug();
    }
  }

  return result;
}

int32x2_t ___VideoTransmitter_RegisterStatistics_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    v2 = *(a2 + 48);
    v3 = *(a1 + 32);
    v3[2951].i32[0] = *(a2 + 40);
    result = vrev64_s32(v2);
    v3[2950] = result;
  }

  return result;
}

void ___VideoTransmitter_TransmitEncodedFrame_block_invoke(uint64_t a1)
{
  _VideoTransmitter_TransmitFrame(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  _VideoTransmitter_ProcessEncoderArgs(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

@end