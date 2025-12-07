uint64_t H264VideoEncoderFrameReceiver::ProcessAndEmitLrmeStats(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 39224);
  v5 = 3758097084;
  v253[0] = 0;
  if (*(a1 + 39224))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.\n", CurrTime, 3, LevelStr, "ProcessAndEmitLrmeStats", 996, "false");
        AVE_GetCurrTime();
        LODWORD(v5) = -536870212;
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.");
    }

    goto LABEL_27;
  }

  if (*(a1 + 137804) != 2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v20 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.\n", v21, 3, v22, "ProcessAndEmitLrmeStats", 998, "false");
        AVE_GetCurrTime();
        LODWORD(v5) = -536870212;
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.");
    }

LABEL_27:
    H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
    v31 = 0;
    v29 = 0;
    goto LABEL_28;
  }

  if (*(a2 + 2456) != 3)
  {
    v23 = 26432;
    if (!*(a1 + 39227))
    {
      v23 = 26392;
    }

    v24 = *(a1 + v23 + 4 * *(a2 + 3180));
    if (!v24)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v31 = AVE_Log_CheckConsole(3u);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        if (!v31)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
          v29 = 0;
          goto LABEL_68;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.\n", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        LODWORD(v5) = -536870212;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v39, 3, v40, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
      }

      v29 = 0;
LABEL_39:
      v31 = 0;
LABEL_68:
      H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
      goto LABEL_28;
    }

    v25 = (a1 + 30136);
    v26 = *(a1 + 30136);
    v27 = *(a1 + 30140);
    v28 = IOSurfaceLookup(v24);
    if (v28)
    {
      v29 = v28;
      v30 = IOSurfaceLock(v28, 0, 0);
      if (v30)
      {
        v31 = v30;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v32 = AVE_Log_CheckConsole(3u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.\n", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
            v35 = AVE_GetCurrTime();
            v226 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v35, 3, v226, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }
        }

        LODWORD(v5) = v31;
        goto LABEL_68;
      }

      v252 = v29;
      if (v4[3])
      {
        if (*(a1 + 137808) < 30)
        {
          v51 = v4[3];
          v52 = (IOSurfaceGetAllocSize(v29) >> 1) * ((v51 & 1) == 0);
        }

        else if (v4[3])
        {
          v52 = ((2 * (*v25 << v6) + 254) & 0xFFFFFF00) * (((*(a1 + 30140) << v6) + 127) >> 7);
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
      }

      BaseAddress = IOSurfaceGetBaseAddress(v252);
      if (BaseAddress)
      {
        v248 = v2;
        v54 = v26 << v6;
        v55 = v27 << v6;
        v241 = v54;
        v244 = v54 + 15;
        v56 = (v54 + 15) >> 4;
        v246 = v55 + 15;
        v57 = (v55 + 15) >> 4;
        v251 = &BaseAddress[v52];
        AllocSize = IOSurfaceGetAllocSize(v252);
        v59 = *(a1 + 137808);
        if (v59 <= 8)
        {
          v10 = 0;
          v7 = 0;
          v60 = *(v4 + 309);
          if (v60 > 1)
          {
            if (v60 != 2)
            {
              v2 = v248;
              if (v60 == 3)
              {
                v5 = 3758097084;
                if (AVE_Log_CheckLevel(0x2Eu, 5))
                {
                  v93 = AVE_Log_CheckConsole(0x2Eu);
                  v94 = AVE_GetCurrTime();
                  v95 = AVE_Log_GetLevelStr(5);
                  if (v93)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n\n", v94, 46, v95);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              else
              {
                v5 = 3758097084;
                if (v60 != 4)
                {
                  v8 = 0;
                  v9 = 0;
                  goto LABEL_8;
                }

                if (AVE_Log_CheckLevel(0x2Eu, 5))
                {
                  v61 = AVE_Log_CheckConsole(0x2Eu);
                  v62 = AVE_GetCurrTime();
                  v63 = AVE_Log_GetLevelStr(5);
                  if (v61)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n\n", v62, 46, v63);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              v7 = 0;
              v8 = 0;
              v9 = 0;
              v10 = 0;
              goto LABEL_8;
            }

            v2 = v248;
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v90 = AVE_Log_CheckConsole(0xDu);
              v91 = AVE_GetCurrTime();
              v92 = AVE_Log_GetLevelStr(4);
              v29 = v252;
              if (v90)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path\n", v91, 13, v92, "ProcessAndEmitLrmeStats", 1236, "bVTOF == false");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path");
LABEL_216:
              LODWORD(v5) = 0;
              v31 = 4294954394;
              goto LABEL_68;
            }

LABEL_125:
            LODWORD(v5) = 0;
            v31 = 4294954394;
            goto LABEL_126;
          }

          if (v60)
          {
            if (v60 == 1)
            {
              v2 = v248;
              if (AVE_Log_CheckLevel(0xDu, 4))
              {
                v70 = AVE_Log_CheckConsole(0xDu);
                v71 = AVE_GetCurrTime();
                v72 = AVE_Log_GetLevelStr(4);
                v29 = v252;
                if (v70)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v71, 13, v72, "ProcessAndEmitLrmeStats", 1193, "bVTOF == false");
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path");
                goto LABEL_216;
              }

              goto LABEL_125;
            }

            goto LABEL_181;
          }

          v247 = AllocSize;
          Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, 4 * v56 * v57, v253, *(v248 + 2552));
          v97 = CVPixelBufferGetBaseAddress(Buffer);
          v249 = Buffer;
          if (v97)
          {
            v7 = v97;
            v98 = v55 + 31;
            v250 = 4 * v56 * v57;
            bzero(v97, v250);
            BytesPerRow = CVPixelBufferGetBytesPerRow(Buffer);
            if (*v4)
            {
              v100 = 0;
            }

            else
            {
              v100 = 2;
            }

            if (v98 >= 0x20)
            {
              v101 = 0;
              v102 = 0;
              v103 = 0;
              v104 = v241 + 31;
              v105 = (v241 + 31) >> 5;
              v245 = BytesPerRow >> 3;
              v106 = (96 * v105 + 63) & 0xFFFFFFC0;
              v107 = v56 * v57 - 1;
              v108 = 2 * v105;
              v109 = 2 * (BytesPerRow >> 3);
              v110 = 8 * v105;
              v111 = 8 * (BytesPerRow >> 3);
              v112 = v109;
              v113 = 2 * v105;
              do
              {
                if (v104 >= 0x20)
                {
                  v114 = 0;
                  v115 = v103 * v106;
                  do
                  {
                    if (v102 + v114 <= v107)
                    {
                      v116 = &v251[v115];
                      if (v114 < v56)
                      {
                        _S0 = (*v116 << 25 >> 25 << v100);
                        __asm { FCVT            H0, S0 }

                        v122 = &v7[4 * v101 + 4 * v114];
                        *v122 = LOWORD(_S0);
                        _S0 = (*v116 << 19 >> 26 << v100);
                        __asm { FCVT            H0, S0 }

                        *(v122 + 1) = LOWORD(_S0);
                      }

                      if (v114 + 1 < v56)
                      {
                        _S0 = (v116[9] << 25 >> 25 << v100);
                        __asm { FCVT            H0, S0 }

                        v125 = &v7[4 * v101 + 4 + 4 * v114];
                        *v125 = LOWORD(_S0);
                        _S0 = (v116[9] << 19 >> 26 << v100);
                        __asm { FCVT            H0, S0 }

                        *(v125 + 1) = LOWORD(_S0);
                      }

                      if (v113 + v114 <= v107 && ((4 * v103) | 1u) < v57)
                      {
                        if (v114 < v56)
                        {
                          _S0 = (v116[18] << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v128 = &v7[4 * v112 + 4 * v114];
                          *v128 = LOWORD(_S0);
                          _S0 = (v116[18] << 19 >> 26 << v100);
                          __asm { FCVT            H0, S0 }

                          *(v128 + 1) = LOWORD(_S0);
                        }

                        if (v114 + 1 < v56)
                        {
                          _S0 = (v116[27] << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v131 = &v7[4 * v112 + 4 + 4 * v114];
                          *v131 = LOWORD(_S0);
                          _S0 = (v116[27] << 19 >> 26 << v100);
                          __asm { FCVT            H0, S0 }

                          *(v131 + 1) = LOWORD(_S0);
                        }
                      }
                    }

                    v115 += 96;
                    v114 += 2;
                  }

                  while (v108 != v114);
                }

                ++v103;
                v113 += v110;
                v102 += v110;
                v112 += v111;
                v101 += v111;
              }

              while (v103 != ((v98 >> 5) + 1) >> 1);
              if (v98 >= 0x40)
              {
                v164 = 0;
                v165 = v98 >> 6;
                v9 = 4 * v56 * v57;
                v166 = 4 * v245;
                v167 = 6 * v105;
                v168 = 4 * v105;
                v169 = v109 + 4 * v245;
                v8 = v249;
                do
                {
                  if (v104 >= 0x20)
                  {
                    v170 = 0;
                    v171 = v164 * v106;
                    do
                    {
                      if (v168 + v170 <= v107)
                      {
                        v172 = &v251[(v247 >> 1) + v171];
                        if (v170 < v56)
                        {
                          _S0 = (*v172 << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v174 = &v7[4 * v166 + 4 * v170];
                          *v174 = LOWORD(_S0);
                          _S0 = (*v172 << 19 >> 26 << v100);
                          __asm { FCVT            H0, S0 }

                          *(v174 + 1) = LOWORD(_S0);
                        }

                        if (v170 + 1 < v56)
                        {
                          _S0 = (v172[9] << 25 >> 25 << v100);
                          __asm { FCVT            H0, S0 }

                          v177 = &v7[4 * v166 + 4 + 4 * v170];
                          *v177 = LOWORD(_S0);
                          _S0 = (v172[9] << 19 >> 26 << v100);
                          v8 = v249;
                          __asm { FCVT            H0, S0 }

                          *(v177 + 1) = LOWORD(_S0);
                        }

                        v9 = 4 * v56 * v57;
                        if (v167 + v170 <= v107 && ((4 * v164) | 3u) < v57)
                        {
                          if (v170 < v56)
                          {
                            _S0 = (v172[18] << 25 >> 25 << v100);
                            __asm { FCVT            H0, S0 }

                            v180 = &v7[4 * v169 + 4 * v170];
                            *v180 = LOWORD(_S0);
                            _S0 = (v172[18] << 19 >> 26 << v100);
                            v8 = v249;
                            __asm { FCVT            H0, S0 }

                            *(v180 + 1) = LOWORD(_S0);
                            v9 = 4 * v56 * v57;
                          }

                          if (v170 + 1 < v56)
                          {
                            _S0 = (v172[27] << 25 >> 25 << v100);
                            __asm { FCVT            H0, S0 }

                            v183 = &v7[4 * v169 + 4 + 4 * v170];
                            *v183 = LOWORD(_S0);
                            _S0 = (v172[27] << 19 >> 26 << v100);
                            __asm { FCVT            H0, S0 }

                            *(v183 + 1) = LOWORD(_S0);
                          }
                        }
                      }

                      v171 += 96;
                      v170 += 2;
                    }

                    while (v108 != v170);
                  }

                  ++v164;
                  v167 += v110;
                  v168 += v110;
                  v169 += v111;
                  v166 += v111;
                }

                while (v164 != v165);
                goto LABEL_243;
              }
            }

            goto LABEL_281;
          }

          if (AVE_Log_CheckLevel(3u, 4))
          {
            v160 = AVE_Log_CheckConsole(3u);
            v161 = AVE_GetCurrTime();
            v162 = AVE_Log_GetLevelStr(4);
            v2 = v248;
            v8 = Buffer;
            if (v160)
            {
              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.\n", v161, 3, v162, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
              v163 = AVE_GetCurrTime();
              v232 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v163, 3, v232, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v161, 3, v162, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            v10 = 0;
          }

          else
          {
            v10 = 0;
            v2 = v248;
            v8 = Buffer;
          }

LABEL_278:
          v5 = 3758097084;
          goto LABEL_47;
        }

        if (v4[3])
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(4.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          v242 = -64;
          v69 = 63;
          goto LABEL_100;
        }

        v73 = *(v4 + 309);
        if (v59 >= 0x1E && !v73)
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(0.25);
          }

          v242 = -128;
          v69 = 127;
LABEL_100:
          v240 = v69;
          v74 = *v25;
          v75 = v56 * v57;
          v76 = H264VideoEncoderFrameReceiver::CreateBuffer(a1, 4 * v56 * v57, v253, *(v248 + 2552));
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v76, 0);
          if (BaseAddressOfPlane)
          {
            v78 = BaseAddressOfPlane;
            v238 = v74;
            bzero(BaseAddressOfPlane, (4 * v75));
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v76, 0);
            v5 = 3758097084;
            v249 = v76;
            v250 = (4 * v75);
            v239 = v56 * v57;
            if (v4[1240] != 1)
            {
              v81 = 0;
              LODWORD(v82) = 0;
              goto LABEL_152;
            }

            v236 = BytesPerRowOfPlane;
            if (CVPixelBufferGetPlaneCount(v76) != 2)
            {
              v81 = 0;
              LODWORD(v82) = 0;
              goto LABEL_151;
            }

            v80 = CVPixelBufferGetBaseAddressOfPlane(v76, 1uLL);
            if (v80)
            {
              v81 = v80;
              v82 = CVPixelBufferGetBytesPerRowOfPlane(v76, 1uLL) >> 1;
LABEL_151:
              BytesPerRowOfPlane = v236;
LABEL_152:
              v133 = BytesPerRowOfPlane >> 2;
              if (AVE_Log_CheckLevel(0xDu, 7))
              {
                v237 = AVE_Log_CheckConsole(0xDu);
                v134 = AVE_GetCurrTime();
                v135 = AVE_Log_GetLevelStr(7);
                if (v237)
                {
                  printf("%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v134, 13, v135, v56, v57, v250, v133);
                  v235 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v235);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v134);
                }
              }

              if (v246 >= 0x10)
              {
                v137 = 0;
                v138 = 0;
                v136 = 0;
                __asm { FCVT            S0, H8 }

                do
                {
                  if (v244 >= 0x10)
                  {
                    v140 = 0;
                    v141 = &v251[(((v238 << v6) + v240) & v242) * v138];
                    v142 = 4 * v138 * v82;
                    v143 = 4 * v138 * v133;
                    do
                    {
                      v144 = 4;
                      v145 = v137;
                      v146 = v142;
                      v147 = v143;
                      do
                      {
                        if (v145 < v57)
                        {
                          _S1 = ((*v141 << 21) >> 21) / _S0;
                          __asm { FCVT            H1, S1 }

                          v149 = &v78[4 * v147];
                          *v149 = LOWORD(_S1);
                          _S1 = ((*v141 << 11) >> 22) / _S0;
                          __asm { FCVT            H1, S1 }

                          *(v149 + 1) = LOWORD(_S1);
                          if (v81)
                          {
                            _D1 = (2048.0 - (*v141 >> 21)) * 0.00048828125;
                            __asm { FCVT            H1, D1 }

                            v81[v146] = LOWORD(_D1);
                          }

                          if ((*v141 & 0x1FFFFF) != 0)
                          {
                            ++v136;
                          }
                        }

                        v141 += 4;
                        v147 += v133;
                        v146 += v82;
                        ++v145;
                        --v144;
                      }

                      while (v144);
                      ++v140;
                      ++v143;
                      ++v142;
                    }

                    while (v140 != v56);
                  }

                  ++v138;
                  v137 += 4;
                }

                while (v138 != (v57 + 3) >> 2);
              }

              else
              {
                v136 = 0;
              }

              if (AVE_Log_CheckLevel(0xDu, 7))
              {
                v152 = AVE_Log_CheckConsole(0xDu);
                v153 = AVE_GetCurrTime();
                v154 = AVE_Log_GetLevelStr(7);
                v8 = v249;
                if (v152)
                {
                  printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n\n", v153, 13, v154, "ProcessAndEmitLrmeStats", v239, v136);
                  v155 = AVE_GetCurrTime();
                  v230 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v155, 13, v230, "ProcessAndEmitLrmeStats", v239, v136);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v153, 13, v154, "ProcessAndEmitLrmeStats", v239, v136);
                }

                v7 = 0;
                v10 = 0;
                v2 = v248;
                goto LABEL_282;
              }

              goto LABEL_280;
            }

            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v185 = AVE_Log_CheckConsole(0xDu);
              v84 = AVE_GetCurrTime();
              v186 = AVE_Log_GetLevelStr(4);
              v2 = v248;
              v8 = v76;
              if (v185)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL\n", v84, 13, v186, "ProcessAndEmitLrmeStats", 1326, "psMVCostBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = AVE_GetCurrTime();
                v234 = "psMVCostBuffer != __null";
                v233 = 1326;
                v5 = 3758097084;
                v229 = AVE_Log_GetLevelStr(4);
              }

              else
              {
                v234 = "psMVCostBuffer != __null";
                v233 = 1326;
                v229 = v186;
              }

              v86 = "%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL";
LABEL_183:
              syslog(3, v86, v84, 13, v229, "ProcessAndEmitLrmeStats", v233, v234, "ProcessAndEmitLrmeStats");
              v10 = 0;
              goto LABEL_47;
            }
          }

          else
          {
            v5 = 3758097084;
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v83 = AVE_Log_CheckConsole(0xDu);
              v84 = AVE_GetCurrTime();
              v85 = AVE_Log_GetLevelStr(4);
              v2 = v248;
              v8 = v76;
              if (v83)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v84, 13, v85, "ProcessAndEmitLrmeStats", 1309, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = AVE_GetCurrTime();
                v234 = "MvStatsBuffer != __null";
                v233 = 1309;
                v5 = 3758097084;
                v229 = AVE_Log_GetLevelStr(4);
              }

              else
              {
                v234 = "MvStatsBuffer != __null";
                v233 = 1309;
                v229 = v85;
              }

              v86 = "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL";
              goto LABEL_183;
            }
          }

          v10 = 0;
          v2 = v248;
          v8 = v76;
          goto LABEL_47;
        }

        v10 = 0;
        v7 = 0;
        if (v73 <= 1)
        {
          if (!v73)
          {
            if (*v4)
            {
              v193 = 0;
            }

            else
            {
              v193 = 2;
            }

            v250 = 4 * v56 * v57;
            v194 = H264VideoEncoderFrameReceiver::CreateBuffer(a1, v250, v253, *(v248 + 2552));
            v195 = CVPixelBufferGetBaseAddress(v194);
            if (!v195)
            {
              v8 = v194;
              if (AVE_Log_CheckLevel(0xDu, 4))
              {
                v200 = AVE_Log_CheckConsole(0xDu);
                v201 = AVE_GetCurrTime();
                v202 = AVE_Log_GetLevelStr(4);
                if (v200)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v201, 13, v202, "ProcessAndEmitLrmeStats", 1387, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                  v201 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL", v201);
              }

              v10 = 0;
              v2 = v248;
              goto LABEL_278;
            }

            v196 = v195;
            v249 = v194;
            v197 = CVPixelBufferGetBytesPerRow(v194) >> 2;
            if (AVE_Log_CheckLevel(0xDu, 7))
            {
              v198 = AVE_Log_CheckConsole(0xDu);
              v243 = AVE_GetCurrTime();
              v199 = AVE_Log_GetLevelStr(7);
              if (v198)
              {
                printf("%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v243, 13, v199, "ProcessAndEmitLrmeStats", v56, v57, v250, v197);
                v243 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v243, 13);
            }

            if (*(a1 + 137808) >= 23)
            {
              v203 = v196;
              v9 = 4 * v56 * v57;
              AVE_LRME_FillFSResultsBestMV(v251, v203, v250, v56, v57, v197, *v4);
              v7 = 0;
              v10 = 0;
              v2 = v248;
              v8 = v249;
              goto LABEL_245;
            }

            bzero(v196, v250);
            if (v246 >= 0x10)
            {
              v207 = 0;
              v206 = 0;
              v205 = 0;
              v204 = 0;
              v208 = v251;
              do
              {
                if (v244 >= 0x10)
                {
                  v209 = 0;
                  do
                  {
                    v210 = 0;
                    v211 = v209 + 4 * v197 * v207;
                    v212 = v208;
                    do
                    {
                      for (i = 0; i != 7; ++i)
                      {
                        if (*&v212[2 * i] < 0)
                        {
                          break;
                        }
                      }

                      v214 = &v208[16 * v210];
                      v215 = *&v214[2 * i];
                      if (v215 < 0 && v211 < v57 * v197)
                      {
                        _S0 = (v215 << v193);
                        __asm { FCVT            H0, S0 }

                        v217 = &v196[4 * v211];
                        *v217 = LOWORD(_S0);
                        _S1 = (*&v214[2 * i] << 17 >> 25 << v193);
                        __asm { FCVT            H1, S1 }

                        *(v217 + 1) = LOWORD(_S1);
                        ++v205;
                        __asm { FCMP            H0, #0 }

                        if (_ZF)
                        {
                          v219 = 0;
                        }

                        else
                        {
                          v219 = 1;
                        }

                        __asm { FCMP            H1, #0 }

                        if (!_ZF)
                        {
                          v219 = 1;
                        }

                        v206 += v219;
                      }

                      v211 += v197;
                      ++v210;
                      v212 += 16;
                    }

                    while (v210 != 4);
                    v208 += 64;
                    ++v209;
                  }

                  while (v209 != v56);
                  v204 += 4 * v56;
                }

                ++v207;
              }

              while (v207 != (v57 + 3) >> 2);
            }

            else
            {
              v204 = 0;
              v205 = 0;
              v206 = 0;
            }

            v221 = v204;
            if (AVE_Log_CheckLevel(0xDu, 7))
            {
              v222 = AVE_Log_CheckConsole(0xDu);
              v223 = AVE_GetCurrTime();
              v224 = AVE_Log_GetLevelStr(7);
              if (v222)
              {
                printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v223, 13, v224, "ProcessAndEmitLrmeStats", v221, v205, v206);
                v223 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v223);
            }

LABEL_280:
            v7 = 0;
LABEL_281:
            v10 = 0;
            v2 = v248;
            v8 = v249;
LABEL_282:
            v5 = 3758097084;
            v9 = v250;
            goto LABEL_8;
          }

          if (v73 == 1)
          {
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v156 = AVE_Log_CheckConsole(0xDu);
              v157 = AVE_GetCurrTime();
              v158 = AVE_Log_GetLevelStr(4);
              if (v156)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v157, 13, v158, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
                v159 = AVE_GetCurrTime();
                v231 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v159, 13, v231, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v157, 13, v158, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }
            }

            LODWORD(v5) = 0;
            v31 = 4294954394;
            v2 = v248;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v73)
          {
            case 2:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v187 = AVE_Log_CheckConsole(0x2Eu);
                v188 = AVE_GetCurrTime();
                v189 = AVE_Log_GetLevelStr(5);
                if (v187)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n\n", v188, 46, v189);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n");
              }

              goto LABEL_242;
            case 3:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v190 = AVE_Log_CheckConsole(0x2Eu);
                v191 = AVE_GetCurrTime();
                v192 = AVE_Log_GetLevelStr(5);
                if (v190)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n\n", v191, 46, v192);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n");
              }

              goto LABEL_242;
            case 4:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v87 = AVE_Log_CheckConsole(0x2Eu);
                v88 = AVE_GetCurrTime();
                v89 = AVE_Log_GetLevelStr(5);
                if (v87)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n\n", v88, 46, v89);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n");
              }

LABEL_242:
              v7 = 0;
              v8 = 0;
              v9 = 0;
LABEL_243:
              v10 = 0;
              goto LABEL_244;
          }
        }

LABEL_181:
        v8 = 0;
        v9 = 0;
LABEL_244:
        v2 = v248;
LABEL_245:
        v5 = 3758097084;
        goto LABEL_8;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        LODWORD(v5) = 0;
        v31 = 0;
LABEL_126:
        v29 = v252;
        goto LABEL_68;
      }

      v64 = AVE_Log_CheckConsole(3u);
      v65 = AVE_GetCurrTime();
      v66 = AVE_Log_GetLevelStr(4);
      v29 = v252;
      if (v64)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.\n", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
        v67 = AVE_GetCurrTime();
        v228 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v67, 3, v228, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      LODWORD(v5) = 0;
      goto LABEL_39;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v31 = AVE_Log_CheckConsole(3u);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (!v31)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
        v29 = 0;
        goto LABEL_67;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.\n", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v49, 3, v50, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
    }

    v29 = 0;
    v31 = 0;
LABEL_67:
    LODWORD(v5) = -536870212;
    goto LABEL_68;
  }

  v7 = 0;
  v252 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -536870212;
LABEL_8:
  AVE_Dump_WriteOutput(*(v4 + 185), *(v2 + 20), v7, v9);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v11 = v2;
    v12 = AVE_Log_CheckConsole(0x2Eu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    v15 = *(v11 + 40);
    if (v12)
    {
      printf("%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d\n", v13, 46, v14, v15);
      v16 = AVE_GetCurrTime();
      v225 = AVE_Log_GetLevelStr(7);
      v5 = 3758097084;
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v16, 46, v225, *(v11 + 40));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v13, 46, v14, v15);
    }

    v2 = v11;
  }

  if (*(v2 + 2456) != 3)
  {
    v41 = *(a1 + 29288);
    if (!v41 || (v42 = *(a1 + 29280)) == 0)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped\n", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
          v46 = AVE_GetCurrTime();
          v5 = 3758097084;
          v227 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v46, 3, v227, "ProcessAndEmitLrmeStats", 1522, "false");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
        }
      }

      goto LABEL_47;
    }

    v41(v42, v8, v9, v2, *(v4 + 61));
  }

  v5 = 0;
LABEL_47:
  H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
  if (v8)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, v8);
  }

  v31 = v5;
  LODWORD(v5) = v10;
  v29 = v252;
LABEL_28:
  if (v253[0])
  {
    CFRelease(v253[0]);
    v253[0] = 0;
  }

  if (v29)
  {
    if (!v5)
    {
      IOSurfaceUnlock(v29, 0, 0);
    }

    CFRelease(v29);
  }

  return v31;
}

void AVE_LRME_FillFSResultsBestMV(char *a1, char *a2, size_t a3, int a4, int a5, int a6, int a7)
{
  bzero(a2, a3);
  if (a5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (a5 + 3) >> 2;
    if (a7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      if (a4)
      {
        v19 = 0;
        do
        {
          v20 = 0;
          v21 = v19 + 4 * a6 * v13;
          v22 = a1;
          do
          {
            v23 = 0;
            v24 = &a1[20 * v20];
            do
            {
              if (*&v22[2 * v23] < 0)
              {
                break;
              }

              ++v23;
            }

            while (v23 != 7);
            v25 = *&v24[2 * v23];
            if (v25 < 0 && v21 < a6 * a5)
            {
              _S0 = (v25 << v18);
              __asm { FCVT            H0, S0 }

              v31 = &a2[4 * v21];
              *v31 = LOWORD(_S0);
              _S1 = (*&v24[2 * v23] << 17 >> 25 << v18);
              __asm { FCVT            H1, S1 }

              *(v31 + 1) = LOWORD(_S1);
              ++v15;
              __asm { FCMP            H0, #0 }

              if (_ZF)
              {
                v33 = 0;
              }

              else
              {
                v33 = 1;
              }

              __asm { FCMP            H1, #0 }

              if (!_ZF)
              {
                v33 = 1;
              }

              v14 += v33;
            }

            v21 += a6;
            ++v20;
            v22 += 20;
          }

          while (v20 != 4);
          a1 += 80;
          ++v19;
        }

        while (v19 != a4);
        v16 += 4 * a4;
      }

      ++v13;
    }

    while (v13 != v17);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  if (AVE_Log_CheckLevel(0xDu, 7))
  {
    v35 = AVE_Log_CheckConsole(0xDu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v35)
    {
      printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", CurrTime, 13, LevelStr, "AVE_LRME_FillFSResultsBestMV", v16, v15, v14);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", CurrTime);
  }
}

uint64_t H264VideoEncoderFrameReceiver::SendOutputFrameDMV(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 6))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v7 = *(a2 + 40);
      v8 = *(a2 + 2568);
      if (v4)
      {
        printf("%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p\n", CurrTime, 46, LevelStr, v7, *(a1 + 29280), v8);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v9, 46, v10, *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", CurrTime, 46, LevelStr, v7, *(a1 + 29280), v8);
      }
    }

    v15 = *(a1 + 29288);
    if (v15 && (v16 = *(a1 + 29280)) != 0)
    {
      v15(v16, 0, 0, a2, *(a1 + 39468));
      v11 = 0;
    }

    else
    {
      v11 = 3758097084;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v17 = AVE_Log_CheckConsole(3u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped\n", v18, 3, v19, "SendOutputFrameDMV", 1579, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped");
      }
    }
  }

  else
  {
    v11 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v12 = AVE_Log_CheckConsole(3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL\n", v13, 3, v14, "SendOutputFrameDMV", 1564, "pFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL");
    }
  }

  H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, a2, 0);
  return v11;
}

void *H264VideoEncoderFrameReceiver::MultiPass_EnqueueStats(uint64_t a1, const void *a2)
{
  result = AVE_MultiPass::new_stats((a1 + 16));
  if (result)
  {
    v5 = result;
    memcpy(result, a2, 0x626uLL);

    return AVE_MultiPass::enqueue_first_pass((a1 + 16), v5, 0);
  }

  return result;
}

uint64_t AVE_MultiPass::new_stats(AVE_MultiPass *this)
{
  v1 = *(this + 6330);
  if (v1)
  {
    v2 = v1 - 1;
    *(this + 6330) = v2;
    return *(this + v2 + 3149);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD8u, 4))
    {
      v4 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get free spot \n", CurrTime, 216, LevelStr, "new_stats", 56, "free_pool_available > 0");
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v7, 216, v8, "new_stats", 56, "free_pool_available > 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", CurrTime, 216, LevelStr, "new_stats", 56, "free_pool_available > 0");
      }
    }

    return 0;
  }
}

uint64_t H264VideoEncoderFrameReceiver::Emit(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  if (a7)
  {
    v11 = 0;
  }

  else
  {
    v16 = a8;
    if (a8)
    {
      v11 = 0;
      v17 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v11 = -12904;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 5))
  {
    v12 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v12)
    {
      v15 = 3;
      printf("%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(5);
    }

    else
    {
      v15 = 3;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p", CurrTime, 46, LevelStr, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
    v16 = 0;
    v17 = 4294966271;
  }

  else
  {
    v16 = 0;
    v17 = 4294966271;
    v15 = 3;
  }

LABEL_11:
  kdebug_trace();
  if (a3 == 2)
  {
    v18 = VTEncoderSessionEmitEncodedTile();
  }

  else
  {
    v18 = VTEncoderSessionEmitEncodedFrame();
  }

  v19 = v18;
  kdebug_trace();
  if (v19)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d\n", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788, a2, a3, a6, v11, v15, v16, v19);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d", v23, 46, v24, "AVE_FrameRecv", "Emit", 1788);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788);
      }
    }

    return 4294966283;
  }

  return v17;
}

uint64_t H264VideoEncoderFrameReceiver::DropFrame(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 29352) && (v3 = a1 + 137804, *(a1 + 137804) != 2))
  {
    v9 = a2 + 29732;
    v10 = (a1 + 39252);
    v11 = a1 + 16 * *(a2 + 40) + 139568;
    *(v11 + 8) = *(a2 + 4608);
    v12 = *(a2 + 29732);
    v13 = (a1 + 29120);
    *v11 = 0;
    *(v11 + 4) = v12;
    v14 = AVE_Log_CheckLevel(0x2Eu, 7);
    if (v14)
    {
      v15 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d\n", CurrTime, 46, LevelStr, "DropFrame", 1824, *v10, *(a2 + 44), *(a2 + 40), *(a1 + 29112), *v13, v13[38], *(a1 + 29276));
        v18 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", v18, 46, v41, "DropFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", CurrTime, 46, LevelStr, "DropFrame");
      }
    }

    *(a1 + 29272) = -1;
    *(a1 + 29276) = 0;
    if (*v10 >= 2u && !*(a2 + 44))
    {
      *(a1 + 29277) = 1;
    }

    v21 = *(a1 + 29352);
    if (v21 == 1)
    {
      kdebug_trace();
      if (*(a1 + 29288) && *(a1 + 29280))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v23 = AVE_Log_CheckConsole(0x2Eu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(7);
          if (v23)
          {
            printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes\n", v24, 46, v25, 0);
            v26 = AVE_GetCurrTime();
            v42 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v26, 46, v42, 0);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v24, 46, v25, 0);
          }
        }

        (*(a1 + 29288))(*(a1 + 29280), 0, 0, 0, *(a1 + 39468));
      }

      else if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v27 = AVE_Log_CheckConsole(0x2Eu);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(7);
        if (v27)
        {
          printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v28, 46, v29);
          v30 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v30, 46, v43);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v28, 46, v29);
        }
      }

      kdebug_trace();
      v19 = 0;
    }

    else
    {
      v22 = H264VideoEncoderFrameReceiver::Emit(v14, *(v3 + 12), *(a1 + 39448), v21, *(a2 + 2552), *(a2 + 40), -1000, 0);
      if (v22 == -1025)
      {
        v19 = 0;
      }

      else
      {
        v19 = v22;
      }

      ++*a1;
      ++*(a1 + 8);
    }

    *(v9 + 3324) = AVE_GetCurrTime();
    AVE_SEI::DeleteFrame(*(a1 + 143696), *(a2 + 40));
    v31 = *(a2 + 3180);
    if ((v31 & 0x80000000) == 0)
    {
      if (v31 >= 0x1E)
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v33 = AVE_Log_CheckConsole(0x2Eu);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v34, 46, v35, "AVE_FrameRecv", "DropFrame", 1884, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
            v34 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v34, 46);
        }

        return 4294966296;
      }

      else
      {
        v32 = *(a1 + 8 * v31 + 27072);
        if (v32)
        {
          bzero(v32, 0xBAA8uLL);
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v36 = AVE_Log_CheckConsole(3u);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v37, 3, v38, "DropFrame", 1886, "codedHeader != __null");
            v39 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v39, 3, v44, "DropFrame", 1886, "codedHeader != __null");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v37, 3, v38, "DropFrame", 1886, "codedHeader != __null");
          }
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      v5 = AVE_GetCurrTime();
      v6 = AVE_Log_GetLevelStr(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v5, 46, v6);
        v7 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v7, 46, v40);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v5, 46, v6);
      }
    }

    return 0;
  }

  return v19;
}

__CFDictionary *H264VideoEncoderFrameReceiver::CreateTemporalLevelInfoDictionary(uint64_t a1, int *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1911, "TemporalLevelInfoDict != __null");
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL", CurrTime);
    }

    return 0;
  }

  v7 = Mutable;
  AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9340], a3, Mutable);
  AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9338], *a2, v7);
  v8 = *MEMORY[0x29EDB9348];
  TierFlag = HEVC_FindTierFlag(a2[1]);
  AVE_CFDict_AddSInt32(v8, TierFlag, v7);
  v10 = *MEMORY[0x29EDB9330];
  ProfileIdc = HEVC_FindProfileIdc(a2[2]);
  AVE_CFDict_AddSInt32(v10, ProfileIdc, v7);
  v12 = CFDataCreate(0, (a1 + 137776), 4);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x2Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL\n", v22, 46, v23, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1922, "cf_profileCompatibilityFlags != __null");
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL", v22);
    }

    v27 = v7;
    goto LABEL_21;
  }

  v13 = v12;
  CFDictionaryAddValue(v7, *MEMORY[0x29EDB9328], v12);
  v14 = CFDataCreate(0, (a1 + 137780), 6);
  if (!v14)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x2Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL\n", v25, 46, v26, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1929, "cf_constraintIndicatorFlags != __null");
        v25 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL", v25);
    }

    CFRelease(v7);
    v27 = v13;
LABEL_21:
    CFRelease(v27);
    return 0;
  }

  v15 = v14;
  CFDictionaryAddValue(v7, *MEMORY[0x29EDB9318], v14);
  v16 = *MEMORY[0x29EDB9320];
  LevelIdc = HEVC_FindLevelIdc(a2[15]);
  AVE_CFDict_AddSInt32(v16, LevelIdc, v7);
  CFRelease(v13);
  CFRelease(v15);
  return v7;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrameMCTF(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v7 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v11 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x2Eu, 6))
      {
        v4 = AVE_Log_CheckConsole(0x2Eu);
        v5 = AVE_GetCurrTime();
        v6 = AVE_Log_GetLevelStr(6);
        if (v4)
        {
          printf("%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p\n", v5, 46, v6, *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
          v5 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p", v5);
      }

      v14 = *(a1 + 29296);
      if (v14 && *(a1 + 29280) && *(a2 + 2568))
      {
        v14();
      }

      return 0;
    }
  }

  else
  {
    v7 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v8 = AVE_Log_CheckConsole(3u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL\n", v9, 3, v10, "SendFrameMCTF", 1966, "pFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL");
    }
  }

  return v7;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrameGGM(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v8 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v12 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong plane number %d\n", CurrTime, 46, LevelStr, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong plane number %d", CurrTime, 46, LevelStr, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x2Eu, 6))
      {
        v4 = AVE_Log_CheckConsole(0x2Eu);
        v5 = AVE_GetCurrTime();
        v6 = AVE_Log_GetLevelStr(6);
        if (v4)
        {
          printf("%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p\n", v5, 46, v6, "SendFrameGGM", *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2576), *(a2 + 2568));
          v7 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(6);
          syslog(3, "%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p", v7, 46, v16);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p", v5, 46, v6);
        }
      }

      if (*(a1 + 29296) && *(a1 + 29280))
      {
        kdebug_trace();
        (*(a1 + 29296))(*(a1 + 29280), a2, 0);
        kdebug_trace();
      }

      return 0;
    }
  }

  else
  {
    v8 = 3758097084;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x2Eu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameters\n", v10, 46, v11, "SendFrameGGM", 1996, "psFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters");
    }
  }

  return v8;
}

uint64_t AVE_EncFrameInfo_AddBuf(const void *a1, int a2, unsigned int a3, unsigned int *a4)
{
  if (a1 && a2 >= 1 && a4)
  {
    v7 = *a4;
    if (v7 < 0x4A)
    {
      result = 0;
      v9 = &a4[8 * v7];
      v9[2] = a3;
      *(v9 + 2) = a1;
      v9[6] = a2;
      *a4 = v7 + 1;
      return result;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d\n", CurrTime, 46, LevelStr, "AVE_EncFrameInfo_AddBuf", 2098, "0 <= psEncFrameInfo->iNum && psEncFrameInfo->iNum < (2 * ((32) < (256) ? (32) : (256)) + 10)", a1, a2, a4, *a4);
        v16 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v16, 46, v18, "AVE_EncFrameInfo_AddBuf");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", CurrTime, 46, LevelStr, "AVE_EncFrameInfo_AddBuf");
      }
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x2Eu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v11, 46, v12, "AVE_EncFrameInfo_AddBuf", 2093, "(pBuf != __null) && (iSize > 0) && (psEncFrameInfo != __null)", a1, a2, a4);
      v11 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
    }

    else
    {
      v17 = v12;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v11, 46, v17);
  }

  return 4294966295;
}

void AVE_MultiPass::AVE_MultiPass(AVE_MultiPass *this)
{
  *(this + 25352) = 0u;
  *(this + 3171) = 0;
  v2 = this + 24576;
  *(this + 25384) = 0u;
  *(this + 25400) = 0u;
  *(this + 25416) = 0u;
  *(this + 25432) = 0u;
  *(this + 25448) = 0u;
  *(this + 25464) = 0u;
  AVE_MultiPass::empty_queues(this);
  *(v2 + 226) = 0;
  *(this + 3186) = 0;
  *(this + 3220) = 0;
  bzero(this + 25496, 0x108uLL);
  *(v2 + 249) = 0;
  *(this + 3168) = 0;
}

void AVE_MultiPass::empty_queues(AVE_MultiPass *this)
{
  v2 = (this + 25352);
  v3 = *(this + 3169);
  if (v3)
  {
    *(this + 3170) = v3;
    operator delete(v3);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v4 = *(this + 3174);
  v5 = *(this + 3175);
  *(this + 3178) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(this + 3174) + 8);
      *(this + 3174) = v4;
      v6 = (*(this + 3175) - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v7 = 512;
  }

  *(this + 3177) = v7;
LABEL_10:
  v8 = *(this + 3180);
  v9 = *(this + 3181);
  *(this + 3184) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v8 = (*(this + 3180) + 8);
      *(this + 3180) = v8;
      v10 = (*(this + 3181) - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_16;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_16:
    *(this + 3183) = v11;
  }

  v12 = 0;
  v13 = xmmword_2954EBA50;
  v14 = vdupq_n_s64(this + 2);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v16.i64[0] = 1574 * v13.i64[0];
    v16.i64[1] = 1574 * v13.i64[1];
    *(this + v12 + 25192) = vaddq_s64(v14, v16);
    v13 = vaddq_s64(v13, v15);
    v12 += 16;
  }

  while (v12 != 128);
  *(this + 6330) = 16;
}

uint64_t std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<_S_AVE_MultiPassStats **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<_S_AVE_MultiPassStats **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void AVE_MultiPass::~AVE_MultiPass(AVE_MultiPass *this)
{
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3179);
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3173);
  v2 = *(this + 3169);
  if (v2)
  {
    *(this + 3170) = v2;
    operator delete(v2);
  }
}

uint64_t AVE_USL_CalcSurfaceInfo(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 20);
  v6 = a2[2995];
  v7 = a2[662];
  v8 = a2[663];
  *(a3 + 16) = AVE_CalcBufNumOfMBInputCtrl(*(a1 + 8), v6, HIWORD(a2[166]) & 1, a4);
  *(a3 + 20) = AVE_CalcBufSizeOfMBInputCtrl(v5, v6, v7, v8);
  return 0;
}

uint64_t AVE_USL_Drv_Create(uint64_t a1, int a2, void *a3)
{
  v4 = a1;
  v17 = *MEMORY[0x29EDCA608];
  bzero(v16, 0x7A0uLL);
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v5 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %d %d\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_Create", v4, a2);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d", CurrTime, 40, LevelStr, "AVE_USL_Drv_Create", v4, a2);
  }

  v8 = malloc_type_malloc(0x19E98uLL, 0x10200409CA022ABuLL);
  if (v8)
  {
    bzero(v8, 0x19E98uLL);
    operator new();
  }

  if (AVE_Log_CheckLevel(0x28u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x28u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to allocate %d %d\n", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to allocate %d %d", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
  }

  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v12 = AVE_Log_CheckConsole(0x28u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d\n", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d %d", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
  }

  return 4294966293;
}

uint64_t AVE_USL_Drv_GetDevID(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t AVE_USL_Drv_GetDevRevision(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t AVE_USL_Drv_GetClientID(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t AVE_USL_Drv_GetProcCnt(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USL_Drv_GetDropCnt(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USL_Drv_Destroy(const void ***a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 40, v27, "AVE_USL_Drv_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 40, LevelStr, "AVE_USL_Drv_Destroy", a1);
    }
  }

  if (a1)
  {
    if (a1[3])
    {
      *&v33 = *a1;
      *(&v34 + 1) = 118000000;
      v35 = AVE_GetCurrTime();
      v6 = AVE_DAL::UCClose(a1[3], &v33, v32);
      if (v6)
      {
        v7 = v6;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
LABEL_30:
          free(a1);
          goto LABEL_31;
        }

        v8 = AVE_Log_CheckConsole(0x28u);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %d\n", v9, 40, v10, "AVE_USL_Drv_Destroy", 528, "ret == 0", v7);
          v11 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %d", v11);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 528;
        v28 = v10;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close client %d";
LABEL_29:
        syslog(3, v19, v9, 40, v28, "AVE_USL_Drv_Destroy", v30, "ret == 0", v31);
        goto LABEL_30;
      }

      AVE_DAL::TearDownIPC(a1[3]);
      v15 = AVE_DAL::UCDestroy(a1[3]);
      if (v15)
      {
        v7 = v15;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
          goto LABEL_30;
        }

        v16 = AVE_Log_CheckConsole(0x28u);
        v9 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %d\n", v9, 40, v17, "AVE_USL_Drv_Destroy", 534, "ret == 0", v7);
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %d", v18);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 534;
        v28 = v17;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close driver %d";
        goto LABEL_29;
      }

      v20 = a1[3];
      if (v20)
      {
        AVE_DAL::~AVE_DAL(v20);
        MEMORY[0x29C24DA40]();
      }

      a1[3] = 0;
    }

    AppleAVEVA_CleanMem(a1);
    v21 = a1[13266];
    if (v21)
    {
      CVPixelBufferPoolRelease(v21);
    }

    v7 = 0;
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0x28u, 4))
  {
    v12 = AVE_Log_CheckConsole(0x28u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v13, 40, v14, "AVE_USL_Drv_Destroy", 518, "pDrv != __null", 0);
      v13 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v13);
  }

  v7 = 4294966295;
LABEL_31:
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v22 = AVE_Log_CheckConsole(0x28u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 40, v29, "AVE_USL_Drv_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t AppleAVEVA_CleanMem(uint64_t a1)
{
  v2 = (a1 + 102400);
  v3 = *(a1 + 106064);
  if (v3)
  {
    H264VideoEncoderFrameReceiver::~H264VideoEncoderFrameReceiver(v3);
    MEMORY[0x29C24DA40]();
    v2[458] = 0;
  }

  v4 = v2[459];
  if (v4)
  {
    Connection::~Connection(v4);
    MEMORY[0x29C24DA40]();
    v2[459] = 0;
  }

  v5 = v2[460];
  if (v5)
  {
    Connection::~Connection(v5);
    MEMORY[0x29C24DA40]();
    v2[460] = 0;
  }

  AVE_DestroyDataUSurfaces(a1 + 136);

  return AVE_DestroyInUSurfaces(a1 + 128);
}

uint64_t AVE_USL_Drv_Prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v109 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v14 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.\n", CurrTime, 40, LevelStr);
      v17 = AVE_GetCurrTime();
      v90 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v17, 40, v90);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", CurrTime, 40, LevelStr);
    }
  }

  if (!v13)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v23 = AVE_Log_CheckConsole(3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.\n", v24, 3, v25, "AVE_USL_Drv_Prepare", 569, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.");
    }

    goto LABEL_100;
  }

  if (!v12)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.\n", v27, 3, v28, "AVE_USL_Drv_Prepare", 570, "pInitSettings");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.");
    }

    goto LABEL_100;
  }

  if (!*v12)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.\n", v30, 3, v31, "AVE_USL_Drv_Prepare", 572, "pInitSettings->psSessionCfg");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.");
    }

    goto LABEL_100;
  }

  if (!*(v12 + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.\n", v33, 3, v34, "AVE_USL_Drv_Prepare", 573, "pInitSettings->pVideoParams");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.");
    }

    goto LABEL_100;
  }

  v18 = *(v12 + 16);
  if (!v18)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.\n", v36, 3, v37, "AVE_USL_Drv_Prepare", 574, "pInitSettings->pVideoParamsDriver");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.");
    }

    goto LABEL_100;
  }

  v19 = *(v18 + 20);
  if (v19 == 2)
  {
    if (!*(v12 + 2304))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v50 = AVE_Log_CheckConsole(3u);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.\n", v51, 3, v52, "AVE_USL_Drv_Prepare", 588, "pInitSettings->VPSHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2312))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v57 = AVE_Log_CheckConsole(3u);
        v58 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        if (v57)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.\n", v58, 3, v59, "AVE_USL_Drv_Prepare", 589, "pInitSettings->psaHEVC_SPS[0]");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2328))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v60 = AVE_Log_CheckConsole(3u);
        v61 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(4);
        if (v60)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.\n", v61, 3, v62, "AVE_USL_Drv_Prepare", 590, "pInitSettings->psaHEVC_PPS[0]");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2344))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v63 = AVE_Log_CheckConsole(3u);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(4);
        if (v63)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.\n", v64, 3, v65, "AVE_USL_Drv_Prepare", 591, "pInitSettings->SHHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 2352))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v66 = AVE_Log_CheckConsole(3u);
        v67 = AVE_GetCurrTime();
        v68 = AVE_Log_GetLevelStr(4);
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.\n", v67, 3, v68, "AVE_USL_Drv_Prepare", 592, "pInitSettings->RPSHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.");
      }

      goto LABEL_100;
    }
  }

  else
  {
    if (v19 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v42 = AVE_Log_CheckConsole(3u);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        if (v42)
        {
          v45 = 597;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v43, 3, v44, "AVE_USL_Drv_Prepare", 597, "false", *(*(v12 + 16) + 20));
LABEL_48:
          v43 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          v93 = *(*(v12 + 16) + 20);
          v92 = v45;
          v91 = v46;
LABEL_59:
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d", v43, 3, v91, "AVE_USL_Drv_Prepare", v92, "false", v93);
          goto LABEL_100;
        }

        v93 = *(*(v12 + 16) + 20);
        v53 = 597;
LABEL_58:
        v92 = v53;
        v91 = v44;
        goto LABEL_59;
      }

LABEL_100:
      v74 = 4294966295;
      goto LABEL_101;
    }

    if (!*(v12 + 808))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v47 = AVE_Log_CheckConsole(3u);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.\n", v48, 3, v49, "AVE_USL_Drv_Prepare", 580, "pInitSettings->SPSParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 816))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v54 = AVE_Log_CheckConsole(3u);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.\n", v55, 3, v56, "AVE_USL_Drv_Prepare", 581, "pInitSettings->PPSParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v12 + 824))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.\n", v21, 3, v22, "AVE_USL_Drv_Prepare", 582, "pInitSettings->SHParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.");
      }

      goto LABEL_100;
    }
  }

  memcpy((v13 + 232), *v12, 0x300uLL);
  memcpy((v13 + 2880), *(v12 + 8), 0x2460uLL);
  memcpy((v13 + 12192), *(v12 + 16), 0x4E0uLL);
  if ((*(v13 + 8) - 2) >= 4)
  {
    v38 = *(*(v12 + 16) + 20);
    if (v38 == 2)
    {
      memcpy((v13 + 13440), *(v12 + 2304), 0x2FCCuLL);
      memcpy((v13 + 25676), *(v12 + 2312), 0x1E7CuLL);
      memcpy((v13 + 41284), *(v12 + 2328), 0x25A0uLL);
      memcpy((v13 + 33480), *(v12 + 2320), 0x1E7CuLL);
      memcpy((v13 + 50916), *(v12 + 2336), 0x25A0uLL);
      memcpy((v13 + 60552), *(v12 + 2344), 0x53F0uLL);
      v39 = *(v12 + 2352);
      v40 = (v13 + 82040);
      v41 = 24024;
      goto LABEL_80;
    }

    if (v38 == 1)
    {
      memcpy((v13 + 13440), *(v12 + 808), 0x6B4uLL);
      memcpy((v13 + 15156), *(v12 + 816), 0x180uLL);
      v39 = *(v12 + 824);
      v40 = (v13 + 15540);
      v41 = 2340;
LABEL_80:
      memcpy(v40, v39, v41);
      goto LABEL_81;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v85 = AVE_Log_CheckConsole(3u);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      if (v85)
      {
        v45 = 637;
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v43, 3, v44, "AVE_USL_Drv_Prepare", 637, "false", *(*(v12 + 16) + 20));
        goto LABEL_48;
      }

      v93 = *(*(v12 + 16) + 20);
      v53 = 637;
      goto LABEL_58;
    }

    goto LABEL_100;
  }

LABEL_81:
  bzero(v96, 0x1A098uLL);
  v95 = *v13;
  v69 = &unk_2954B8F4E;
  if (v10)
  {
    v69 = v10;
  }

  AVE_SNPrintf(v97, 512, "%s", v69);
  v70 = *(v13 + 13280);
  v71 = *(v13 + 13312);
  v100 = *(v13 + 13296);
  v101 = v71;
  v98 = *(v13 + 13264);
  v99 = v70;
  v102 = *(v13 + 13328);
  v72 = *(v13 + 13380);
  v105 = *(v13 + 13364);
  v106 = v72;
  v107 = *(v13 + 13396);
  v73 = *(v13 + 13348);
  v103 = *(v13 + 13332);
  v104 = v73;
  v96[2] = 118000000;
  v96[3] = AVE_GetCurrTime();
  memcpy(v108, (v13 + 232), sizeof(v108));
  memset(v94, 0, sizeof(v94));
  v74 = AVE_DAL::UCPrepare(*(v13 + 24), &v95, v94);
  if (v74)
  {
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v75 = AVE_Log_CheckConsole(0x28u);
      v76 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(4);
      if (v75)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %d\n", v76, 40, v77, "AVE_USL_Drv_Prepare", 665, "ret == 0", v74);
        v76 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %d", v76);
    }
  }

  else
  {
    v78 = 0;
    v79 = *(v12 + 16) + 1072;
    v80 = 1;
    do
    {
      v81 = 0;
      v82 = 17 * v78;
      v83 = v80;
      v84 = v13 + 13264 + 68 * v78;
      do
      {
        *(v79 + 4 * v82 + v81) = *(v84 + v81);
        v81 += 4;
      }

      while (v81 != 68);
      v80 = 0;
      v78 = 1;
    }

    while ((v83 & 1) != 0);
  }

LABEL_101:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v86 = AVE_Log_CheckConsole(0x28u);
    v87 = AVE_GetCurrTime();
    v88 = AVE_Log_GetLevelStr(7);
    if (v86)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d\n", v87, 40, v88, *(v13 + 44), v74);
      v87 = AVE_GetCurrTime();
      v88 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d", v87, 40, v88, *(v13 + 44), v74);
  }

  return v74;
}

uint64_t AVE_USL_Drv_Start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, void *__dst)
{
  v10 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v145 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v177 = *MEMORY[0x29EDCA608];
  v162 = -1;
  bzero(v163, 0x1A0B0uLL);
  memset(v161, 0, sizeof(v161));
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v17 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Start.\n", CurrTime, 40, LevelStr);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Start.", CurrTime, 40, LevelStr);
  }

  if (!v16)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.\n", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
    }

    goto LABEL_170;
  }

  if (!v15)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.\n", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
    }

    goto LABEL_170;
  }

  v20 = *v15;
  if (!*v15)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.\n", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
    }

    goto LABEL_170;
  }

  if (!v15[1])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.\n", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
    }

    goto LABEL_170;
  }

  v21 = v15[2];
  if (!v21)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v38 = AVE_Log_CheckConsole(3u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.\n", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
    }

    goto LABEL_170;
  }

  v22 = v21[5];
  if (v22 == 2)
  {
    if (!v15[288])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v49 = AVE_Log_CheckConsole(3u);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.\n", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[289])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v55 = AVE_Log_CheckConsole(3u);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.\n", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[291])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v58 = AVE_Log_CheckConsole(3u);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.\n", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
          v59 = AVE_GetCurrTime();
          v60 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[293])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v74 = AVE_Log_CheckConsole(3u);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.\n", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
          v75 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[294])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v88 = AVE_Log_CheckConsole(3u);
        v89 = AVE_GetCurrTime();
        v90 = AVE_Log_GetLevelStr(4);
        if (v88)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.\n", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
          v89 = AVE_GetCurrTime();
          v90 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
      }

      goto LABEL_170;
    }
  }

  else
  {
    if (v22 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    if (!v15[101])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.\n", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[102])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v52 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.\n", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[103])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v23 = AVE_Log_CheckConsole(3u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.\n", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
      }

LABEL_170:
      SurfacePool = 4294966295;
      goto LABEL_171;
    }
  }

  v41 = v16 + 12800;
  v16[13261] = v13;
  memcpy(v16 + 29, v20, 0x300uLL);
  memcpy(v16 + 360, v15[1], 0x2460uLL);
  memcpy(v16 + 1524, v15[2], 0x4E0uLL);
  v42 = *(v15[2] + 5);
  v142 = v16 + 12800;
  if (v42 == 2)
  {
    __src = v16 + 29;
    memcpy(v16 + 1680, v15[288], 0x2FCCuLL);
    v61 = v15;
    v62 = 0;
    v63 = v61 + 289;
    v140 = v61;
    v64 = v61 + 291;
    v144 = v16 + 25676;
    v65 = v16;
    v143 = v16 + 41284;
    v66 = 1;
    do
    {
      v67 = v66;
      v68 = v63[v62];
      if (v68)
      {
        memcpy(&v144[7804 * v62], v68, 0x1E7CuLL);
      }

      v69 = v64[v62];
      if (v69)
      {
        memcpy(&v143[9632 * v62], v69, 0x25A0uLL);
      }

      v66 = 0;
      v62 = 1;
    }

    while ((v67 & 1) != 0);
    v15 = v140;
    v16 = v65;
    memcpy(v65 + 7569, v140[293], 0x53F0uLL);
    memcpy(v65 + 10255, v140[294], 0x5DD8uLL);
    memcpy(v65 + 125, v140 + 295, 0x758uLL);
    v41 = v142;
  }

  else
  {
    if (v42 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v71 = AVE_Log_CheckConsole(3u);
        v72 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(4);
        if (v71)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
          v72 = AVE_GetCurrTime();
          v73 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    __src = v16 + 29;
    memcpy(v16 + 1680, v15[101], 0x6B4uLL);
    memcpy(v16 + 15156, v15[102], 0x180uLL);
    memcpy(v16 + 15540, v15[103], 0x924uLL);
    memcpy(v16 + 125, v15 + 104, 0x5C0uLL);
  }

  v70 = *(v16 + 2);
  if (v70 == 4)
  {
    v77 = *(v15 + 48);
    v78 = *(v15 + 49);
    v16[129] = v15[100];
    *(v16 + 125) = v77;
    *(v16 + 127) = v78;
  }

  else if (v70 == 3)
  {
    memcpy(v16 + 125, v15 + 7, 0x2C8uLL);
  }

  *(v41 + 232) = *(v15 + 5);
  if (!v41[458])
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v84 = 48;
    *v146 = 0u;
    if (v70 <= 2)
    {
      if (v70 == 1)
      {
        if ((*(v16 + 683) & 0x80) != 0)
        {
          v106 = *(v16 + 172);
        }

        else
        {
          v106 = -1;
        }

        v100 = AVE_Enc_DecideInputQueueMaxCnt(*(v16 + 80), *(v16 + 81), *(v16 + 82), *(v16 + 83), v106);
        goto LABEL_154;
      }

      if (v70 != 2)
      {
LABEL_155:
        v110 = AVE_DAL::SetUpIPC(v16[3], (v84 + 1), 72736);
        if (!v110)
        {
          operator new();
        }

        SurfacePool = v110;
        if (AVE_Log_CheckLevel(0xEu, 4))
        {
          v111 = AVE_Log_CheckConsole(0xEu);
          v112 = AVE_GetCurrTime();
          v113 = AVE_Log_GetLevelStr(4);
          if (v111)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d\n", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, SurfacePool);
            v112 = AVE_GetCurrTime();
            v113 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, SurfacePool);
        }

        goto LABEL_171;
      }
    }

    else if (v70 != 3 && v70 != 4 && v70 != 5)
    {
      goto LABEL_155;
    }

    v100 = AVE_MCTF_DecideInputQueueMaxCnt();
LABEL_154:
    v84 = v100;
    goto LABEL_155;
  }

  v146[0] = 0;
  AVE_DAL::Alloc(v16[3], 72736, v146);
  AVE_DAL::Addr2Idx(v16[3], v146[0], &v162);
  v79 = v146[0];
  if (!v146[0])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v85 = AVE_Log_CheckConsole(3u);
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(4);
      if (v85)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
    }

    goto LABEL_164;
  }

  bzero((v146[0] + 8), 0x11C18uLL);
  v80 = v162;
  *v79 = v162;
  *(v79 + 4) = 5;
  *(v79 + 40) = *(v16 + 11);
  *(v79 + 33048) = v15[530];
  *(v79 + 16) = v142[461] != 0;
  *(v79 + 20) = *(v142 + 924);
  *&v148 = 0;
  *v146 = 0u;
  v147 = 0u;
  LODWORD(v146[0]) = v80;
  if (Connection::writePacketBlock(v142[460], v146))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v81 = AVE_Log_CheckConsole(3u);
      v82 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(4);
      if (v81)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
        v82 = AVE_GetCurrTime();
        v83 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
    }

LABEL_135:
    SurfacePool = 4294966296;
    v101 = v16;
LABEL_136:
    v146[0] = v15[530];
    AVE_USL_Drv_Stop(v101, v146, 0);
    goto LABEL_171;
  }

  v163[0] = *v16;
  v91 = &unk_2954B8F4E;
  if (v145)
  {
    v91 = v145;
  }

  AVE_SNPrintf(v164, 512, "%s", v91);
  v176 = v162;
  v92 = *(v16 + 830);
  v93 = *(v16 + 832);
  v167 = *(v16 + 831);
  v168 = v93;
  v165 = *(v16 + 829);
  v166 = v92;
  v169 = *(v16 + 3332);
  v94 = *(v16 + 13380);
  v172 = *(v16 + 13364);
  v173 = v94;
  v95 = *(v16 + 13348);
  v170 = *(v16 + 13332);
  v171 = v95;
  v174 = *(v16 + 3349);
  v163[3] = 118000000;
  v163[4] = AVE_GetCurrTime();
  memcpy(v175, __src, sizeof(v175));
  *(v79 + 33072) = AVE_GetCurrTime();
  SurfacePool = AVE_DAL::UCStart(v16[3], v163, v161);
  if (SurfacePool)
  {
    Connection::dropLastPacketBlock(v142[460]);
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v97 = AVE_Log_CheckConsole(0x28u);
      v98 = AVE_GetCurrTime();
      v99 = AVE_Log_GetLevelStr(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to start %d\n", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", SurfacePool);
        v98 = AVE_GetCurrTime();
        v99 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %d", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", SurfacePool);
    }

    goto LABEL_163;
  }

  *&v148 = 0;
  *v146 = 0u;
  v147 = 0u;
  PacketBlock = Connection::readPacketBlock(v142[459], v146, 120000000);
  if (LODWORD(v146[0]) != v162)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v107 = AVE_Log_CheckConsole(3u);
      v108 = AVE_GetCurrTime();
      v109 = AVE_Log_GetLevelStr(4);
      if (v107)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.\n", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
        v108 = AVE_GetCurrTime();
        v109 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
    }

    goto LABEL_135;
  }

  if (v148)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v103 = AVE_Log_CheckConsole(3u);
      v104 = AVE_GetCurrTime();
      v105 = AVE_Log_GetLevelStr(4);
      if (v103)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.\n", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
        v104 = AVE_GetCurrTime();
        v105 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
    }

    goto LABEL_135;
  }

  if (PacketBlock)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v114 = AVE_Log_CheckConsole(3u);
      v115 = AVE_GetCurrTime();
      v116 = AVE_Log_GetLevelStr(4);
      if (v114)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
        v115 = AVE_GetCurrTime();
        v116 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
    }

    goto LABEL_135;
  }

  v121 = v161[2];
  v122 = DWORD1(v161[2]);
  *(v142 + 925) = v161[2];
  *(v142 + 926) = v122;
  v123 = *a9;
  if (*a9)
  {
    if (v123 != -1 && v123 > v122)
    {
      v122 = *a9;
    }
  }

  else
  {
    v122 = v121;
  }

  *a9 = v122;
  if (Connection::connectionSize(v142[460], v122))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v124 = AVE_Log_CheckConsole(3u);
      v125 = AVE_GetCurrTime();
      v126 = AVE_Log_GetLevelStr(4);
      if (v124)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
        v125 = AVE_GetCurrTime();
        v126 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (Connection::connectionSize(v142[459], *a9))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v127 = AVE_Log_CheckConsole(3u);
      v128 = AVE_GetCurrTime();
      v129 = AVE_Log_GetLevelStr(4);
      if (v127)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
        v128 = AVE_GetCurrTime();
        v129 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (__dst)
  {
    memcpy(__dst, &v161[2] + 8, 0x128uLL);
  }

  AVE_USL_CalcSurfaceInfo(v16, __src, (v16 + 6), *a9);
  if ((*(*v15 + 666) & 1) != 0 && !v142[466])
  {
    SurfacePool = AVE_PixelBuf_CreateSurfacePool(*(v16 + 17), *(v16 + 16), v142 + 466);
    if (SurfacePool)
    {
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v133 = AVE_Log_CheckConsole(0x28u);
        v134 = AVE_GetCurrTime();
        v135 = AVE_Log_GetLevelStr(4);
        v137 = *(v16 + 16);
        v136 = *(v16 + 17);
        if (v133)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d\n", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, SurfacePool);
          v138 = AVE_GetCurrTime();
          v139 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v138, 40, v139, "AVE_USL_Drv_Start", 1036, "ret == 0", *(v16 + 17), *(v16 + 16), *v16, SurfacePool);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, SurfacePool);
        }
      }

      goto LABEL_163;
    }
  }

  SurfacePool = AVE_CreateInUSurfaces(v16 + 6, *v16, v16 + 16);
  if (SurfacePool)
  {
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v130 = AVE_Log_CheckConsole(0x28u);
      v131 = AVE_GetCurrTime();
      v132 = AVE_Log_GetLevelStr(4);
      if (v130)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, SurfacePool);
        v131 = AVE_GetCurrTime();
        v132 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, SurfacePool);
    }

LABEL_163:
    v101 = v16;
    if (SurfacePool != -1003)
    {
      goto LABEL_136;
    }

LABEL_164:
    SurfacePool = 4294966293;
    goto LABEL_171;
  }

  *(v16 + 40) = 1;
LABEL_171:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v117 = AVE_Log_CheckConsole(0x28u);
    v118 = AVE_GetCurrTime();
    v119 = AVE_Log_GetLevelStr(7);
    if (v117)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.\n", v118, 40, v119, SurfacePool);
      v118 = AVE_GetCurrTime();
      v119 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.", v118, 40, v119, SurfacePool);
  }

  return SurfacePool;
}

void Connection::Connection(Connection *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_cond_init((this + 112), 0);
  *(this + 12) = vdupq_n_s64(0x80uLL);
  *(this + 26) = 0;
  *(this + 27) = 0;
  operator new[]();
}

uint64_t Connection::dropLastPacketBlock(pthread_mutex_t *this)
{
  pthread_mutex_lock(this);
  v2 = *&this[3].__opaque[16];
  if (v2 >= 1 && v2 > *&this[3].__opaque[8])
  {
    *&this[3].__opaque[16] = v2 - 1;
  }

  pthread_mutex_unlock(this);
  return 0;
}

uint64_t Connection::readPacketBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(a1);
  v6 = a3 / 1000000;
  v7 = a3 % 1000000;
  while (1)
  {
    v8 = *(a1 + 208);
    if (*(a1 + 216) > v8)
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v9 = 1000 * (v7 + *(a1 + 184));
    *(a1 + 160) = *(a1 + 176) + v6;
    *(a1 + 168) = v9;
    if (pthread_cond_timedwait((a1 + 64), a1, (a1 + 160)) == 60)
    {
      v10 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = *(a1 + 224) + 40 * (v8 % *(a1 + 192));
  v12 = *v11;
  v13 = *(v11 + 16);
  *(a2 + 32) = *(v11 + 32);
  *a2 = v12;
  *(a2 + 16) = v13;
  v14 = *(a1 + 200);
  v15 = *(a1 + 208) + 1;
  *(a1 + 208) = v15;
  v16 = *(a1 + 216);
  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if ((v18 < 0) ^ v17 | (v18 == 0))
  {
    v18 = 0;
  }

  if (v18 < v14)
  {
    pthread_cond_signal((a1 + 112));
  }

  v10 = 0;
LABEL_11:
  pthread_mutex_unlock(a1);
  return v10;
}

uint64_t Connection::connectionSize(pthread_mutex_t *this, unsigned int a2)
{
  pthread_mutex_lock(this);
  if (this[3].__sig >= a2)
  {
    v11 = 0;
    *this[3].__opaque = a2;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Au, 4))
    {
      v4 = AVE_Log_CheckConsole(0x2Au);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v8 = *&this[3].__opaque[8];
      v7 = *&this[3].__opaque[16];
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", CurrTime, 42, LevelStr, this[3].__sig, *this[3].__opaque, a2, v10);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", CurrTime);
    }

    v11 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(this);
  return v11;
}

uint64_t AVE_USL_Drv_Stop(uint64_t a1, uint64_t *a2, int a3)
{
  v49 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", CurrTime, 40, LevelStr);
      v9 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    v48 = *a2;
    if (AVE_USL_Drv_Complete(a1, &v48) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      v47[0] = 0;
      AVE_DAL::Alloc(*(a1 + 24), 72736, v47);
      AVE_DAL::Addr2Idx(*(a1 + 24), v47[0], &v49);
      v15 = v47[0];
      if (!v47[0])
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v20 = AVE_Log_CheckConsole(3u);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v23, 3, v45, "AVE_USL_Drv_Stop", 1103, "Frame");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
          }
        }

        v10 = 4294966293;
        goto LABEL_32;
      }

      bzero((v47[0] + 8), 0x11C18uLL);
      v16 = v49;
      *v15 = v49;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, 40);
      LODWORD(v47[0]) = v16;
      if (Connection::writePacketBlock(*(a1 + 106080), v47))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v17 = AVE_Log_CheckConsole(3u);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[3] = 0u;
        *&v47[1] = 0u;
        memset(v46, 0, sizeof(v46));
        v47[0] = *a1;
        v47[5] = v49;
        v47[3] = 118000000;
        v47[4] = AVE_GetCurrTime();
        v24 = AVE_DAL::UCStop(*(a1 + 24), v47, v46);
        if (v24)
        {
          v10 = v24;
          v25 = *(a1 + 106080);
          pthread_mutex_lock(v25);
          v26 = *(v25 + 216);
          if (v26 >= 1 && v26 > *(v25 + 208))
          {
            *(v25 + 216) = v26 - 1;
          }

          pthread_mutex_unlock(v25);
          if (AVE_Log_CheckLevel(0x28u, 4))
          {
            v27 = AVE_Log_CheckConsole(0x28u);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, 40);
        PacketBlock = Connection::readPacketBlock(*(a1 + 106072), v47, 120000000);
        if (LODWORD(v47[0]) == v49)
        {
          if (!PacketBlock)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (AVE_Log_CheckLevel(3u, 4))
          {
            v37 = AVE_Log_CheckConsole(3u);
            v38 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v40 = AVE_Log_CheckConsole(3u);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      AppleAVEVA_CleanMem(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v11 = AVE_Log_CheckConsole(3u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v30 = AVE_Log_CheckConsole(0x28u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(7);
    if (v30)
    {
      if (a1)
      {
        v33 = *(a1 + 44);
      }

      else
      {
        v33 = 0;
      }

      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d\n", v31, 40, v32, v33, v10);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      if (!a1)
      {
        goto LABEL_43;
      }
    }

    else if (!a1)
    {
LABEL_43:
      v34 = 0;
      goto LABEL_44;
    }

    v34 = *(a1 + 44);
LABEL_44:
    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d", v31, 40, v32, v34, v10);
  }

  return v10;
}

uint64_t AVE_USL_Drv_SetInternalThreadPriority(void *a1, int a2)
{
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v7, 40, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      AVE_DAL::UpdatePriorityPolicy(*(a1 + 3), a2, *(a1 + 168));
    }

    v8 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v9 = AVE_Log_CheckConsole(3u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.\n", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
        v12 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v12, 3, v18, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v13 = AVE_Log_CheckConsole(0x28u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d\n", v14, 40, v15, *(a1 + 11), v8);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d", v14, 40, v15, *(a1 + 11), v8);
  }

  return v8;
}

uint64_t AVE_USL_Drv_SetQueueSize(_DWORD *a1, signed int a2)
{
  if (AVE_Log_CheckLevel(0x28u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_SetQueueSize", a1, a2);
      v7 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 40, v36, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 40, LevelStr, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }
  }

  if (a1)
  {
    if (a2 == -1)
    {
      v8 = a1[26526];
    }

    else if (a2)
    {
      v8 = a2;
      if (a1[26526] > a2)
      {
        if (AVE_Log_CheckLevel(0x28u, 5))
        {
          v12 = AVE_Log_CheckConsole(0x28u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(5);
          if (v12)
          {
            printf("%lld %d AVE %s: %s below minimum value %p %d [%d, %d]\n", v13, 40, v14, "AVE_USL_Drv_SetQueueSize", a1, a2, a1[26526], 48);
            v13 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
          }

          syslog(3, "%lld %d AVE %s: %s below minimum value %p %d [%d, %d]", v13);
        }

LABEL_43:
        v27 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v8 = a1[26525];
    }

    v15 = *(a1 + 13260);
    if (v15)
    {
      if (Connection::connectionSize(v15, v8))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v16 = AVE_Log_CheckConsole(3u);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v17, 3, v18, "AVE_USL_Drv_SetQueueSize", 1635, "ret == 0", v8);
            v17 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v17);
        }

LABEL_36:
        v27 = 4294966296;
        goto LABEL_44;
      }

      v22 = *(a1 + 13259);
      if (v22)
      {
        if (Connection::connectionSize(v22, v8))
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v23 = AVE_Log_CheckConsole(3u);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
            if (v23)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v24, 3, v25, "AVE_USL_Drv_SetQueueSize", 1640, "ret == 0", v8);
              v26 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v26);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v24);
            }
          }

          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v28 = AVE_Log_CheckConsole(3u);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.\n", v29, 3, v30, "AVE_USL_Drv_SetQueueSize", 1637, "pDriverInstance->FrameReceiverOutput");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.");
      }
    }

    else if (AVE_Log_CheckLevel(3u, 4))
    {
      v19 = AVE_Log_CheckConsole(3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.\n", v20, 3, v21, "AVE_USL_Drv_SetQueueSize", 1632, "pDriverInstance->FrameReceiverInput");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.");
    }

    v27 = 4294966293;
    goto LABEL_44;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v9 = AVE_Log_CheckConsole(3u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d\n", v10, 3, v11, "AVE_USL_Drv_SetQueueSize", 1600, "pDrv != __null", 0, a2);
      v10 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d", v10, 3);
  }

  v27 = 4294966295;
LABEL_44:
  if (AVE_Log_CheckLevel(0x28u, 8))
  {
    v31 = AVE_Log_CheckConsole(0x28u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(8);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v32, 40, v33, "AVE_USL_Drv_SetQueueSize", a1, a2, v27);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v32);
    }
  }

  return v27;
}

uint64_t AVE_USL_Drv_Reset(uint64_t a1, int a2)
{
  v53 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v7, 40, v45);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", CurrTime, 40, LevelStr);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Reset", 1659, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.");
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v16 = AVE_Log_CheckConsole(3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.\n", v17, 3, v18, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
        v17 = AVE_GetCurrTime();
        v46 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v46 = v18;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.", v17, 3, v46, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
    }

LABEL_26:
    v9 = 4294966295;
    goto LABEL_27;
  }

  v52 = AVE_GetCurrTime();
  v8 = AVE_USL_Drv_Complete(a1, &v52);
  if (v8)
  {
    v9 = v8;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v10 = AVE_Log_CheckConsole(3u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.\n", v11, 3, v12, "AVE_USL_Drv_Reset", 1669, "ret == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.");
    }

    goto LABEL_27;
  }

  *(a1 + 44) = 0;
  *(a1 + 106096) = a2;
  v51[0] = 0;
  AVE_DAL::Alloc(*(a1 + 24), 72736, v51);
  AVE_DAL::Addr2Idx(*(a1 + 24), v51[0], &v53);
  v19 = v51[0];
  if (v51[0])
  {
    bzero((v51[0] + 8), 0x11C18uLL);
    v20 = v53;
    *v19 = v53;
    *(v19 + 4) = 10;
    *(v19 + 40) = *(a1 + 44);
    *(v19 + 16) = *(a1 + 106088) != 0;
    *(v19 + 20) = *(a1 + 106096);
    memset(v51, 0, 40);
    LODWORD(v51[0]) = v20;
    if (Connection::writePacketBlock(*(a1 + 106080), v51))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v21 = AVE_Log_CheckConsole(3u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v22, 3, v23, "AVE_USL_Drv_Reset", 1705, "res == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

      goto LABEL_44;
    }

    *&v51[3] = 0u;
    *&v51[1] = 0u;
    memset(v50, 0, sizeof(v50));
    v51[0] = *a1;
    v51[5] = v53;
    v51[3] = 118000000;
    v51[4] = AVE_GetCurrTime();
    v32 = AVE_DAL::UCReset(*(a1 + 24), v51, v50);
    if (!v32)
    {
      memset(v51, 0, 40);
      PacketBlock = Connection::readPacketBlock(*(a1 + 106072), v51, 120000000);
      if (LODWORD(v51[0]) == v53)
      {
        if (!PacketBlock)
        {
          v9 = 0;
          goto LABEL_27;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v39 = AVE_Log_CheckConsole(3u);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v40, 3, v41, "AVE_USL_Drv_Reset", 1736, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }
      }

      else if (AVE_Log_CheckLevel(3u, 4))
      {
        v42 = AVE_Log_CheckConsole(3u);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v43, 3, v44, "AVE_USL_Drv_Reset", 1735, "status.counter == counter");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
      }

LABEL_44:
      v9 = 4294966296;
      goto LABEL_27;
    }

    v9 = v32;
    v33 = *(a1 + 106080);
    pthread_mutex_lock(v33);
    v34 = *(v33 + 216);
    if (v34 >= 1 && v34 > *(v33 + 208))
    {
      *(v33 + 216) = v34 - 1;
    }

    pthread_mutex_unlock(v33);
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v35 = AVE_Log_CheckConsole(0x28u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v36, 40, v37, "AVE_USL_Drv_Reset", 1722, "ret == 0", v9);
        v36 = AVE_GetCurrTime();
        v49 = v9;
        v48 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v49 = v9;
        v48 = v37;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v36, 40, v48, "AVE_USL_Drv_Reset", 1722, "ret == 0", v49);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v28 = AVE_Log_CheckConsole(3u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v29, 3, v30, "AVE_USL_Drv_Reset", 1685, "Frame");
        v31 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v31, 3, v47, "AVE_USL_Drv_Reset", 1685, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v29, 3, v30, "AVE_USL_Drv_Reset", 1685, "Frame");
      }
    }

    v9 = 4294966293;
  }

LABEL_27:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v24 = AVE_Log_CheckConsole(0x28u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x\n", v25, 40, v26, *(a1 + 44), v9);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x", v25, 40, v26, *(a1 + 44), v9);
  }

  return v9;
}

void Connection::~Connection(Connection *this)
{
  pthread_mutex_lock(this);
  if (*(this + 27) > *(this + 26) && AVE_Log_CheckLevel(0x2Au, 5))
  {
    if (AVE_Log_CheckConsole(0x2Au))
    {
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(5);
      v5 = *(this + 26);
      v4 = *(this + 27);
      v6 = v4 <= v5;
      v7 = v4 - v5;
      if (v6)
      {
        v7 = 0;
      }

      printf("%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left\n", CurrTime, 42, LevelStr, this, v7);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(5);
    }

    else
    {
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(5);
    }

    v11 = *(this + 26);
    v10 = *(this + 27);
    v6 = v10 <= v11;
    v12 = v10 - v11;
    if (v6)
    {
      v12 = 0;
    }

    syslog(3, "%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left", v8, 42, v9, this, v12);
  }

  v13 = *(this + 28);
  if (v13)
  {
    MEMORY[0x29C24DA10](v13, 0x1000C807607B2BCLL);
    *(this + 28) = 0;
  }

  pthread_cond_destroy((this + 112));
  pthread_cond_destroy((this + 64));
  pthread_mutex_unlock(this);
  pthread_mutex_destroy(this);
}

uint64_t AVC_FindProfile(int a1)
{
  v1 = &dword_29EDCB93C;
  v2 = 9;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t AVC_FindProfileIdc(int a1)
{
  if ((a1 - 1) < 9)
  {
    return gsc_sAVC_Profiles[6 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD0u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD0u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 208, LevelStr, "AVC_FindProfileIdc", 65, "(AVC_Profile_Invalid < eProfile) && (eProfile < AVC_Profile_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

int *AVC_FindProfileEntry(int a1)
{
  result = gsc_sAVC_Profiles;
  v3 = 9;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVC_FindLevel(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", CurrTime, 209, LevelStr, "AVC_FindLevel", a1, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", CurrTime, 209);
  }

  if (a2 <= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a2;
  }

  if (a5 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v16 = a1 - 2;
    if ((a1 - 2) >= 8 || ((0xD5u >> v16) & 1) == 0)
    {
      if (AVE_Log_CheckLevel(0xD1u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD1u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d unsupported profile (%d)\n", v19, 209, v20, "AVC_FindLevel", 222, a1);
          v21 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v21, 209, v40, "AVC_FindLevel", 222, a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v19, 209, v20, "AVC_FindLevel", 222, a1);
        }
      }

      v26 = 0;
      goto LABEL_46;
    }

    v17 = dbl_2954EBD50[v16];
  }

  v22 = 0;
  v23 = (a3 >> 4) * (a2 >> 4);
  v24 = gsc_saAVC_LevelLimits;
  while (1)
  {
    if (v23 * a4 <= v24[2] && v23 <= v24[3] && v15 <= v24[6] && v17 * v24[5] >= a5)
    {
      v25 = v24[4] / v23;
      if (v25 >= 16)
      {
        v25 = 16;
      }

      if (v25 >= a6)
      {
        break;
      }
    }

    ++v22;
    v24 += 9;
    if (v22 == 20)
    {
      v24 = &dword_2954EBD2C;
      break;
    }
  }

  v26 = *v24;
  v27 = a1 >= 7 || a1 == 1;
  if (v27 && v26 <= 17 && v23 >= 1621 && v22 <= 0x13)
  {
    v28 = 4 * v23;
    v29 = v22;
    v30 = &gsc_saAVC_LevelLimits[9 * v22];
    do
    {
      v26 = *v30;
      v31 = v30[3];
      v30 += 9;
    }

    while (v28 > v31 && v29++ <= 0x12 && v26 <= 17);
  }

LABEL_46:
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v34 = AVE_Log_CheckConsole(0xD1u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(6);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d\n", v35, 209, v36, "AVC_FindLevel", a1, a2, a3, a4, a5, a6, v26);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v37, 209, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v35, 209, v36);
    }
  }

  return v26;
}

uint64_t AVC_FindLevel(int a1)
{
  v1 = &dword_2954EBA84;
  v2 = 20;
  while (*v1 != a1)
  {
    v1 += 9;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t AVC_FindLevelIdc(int a1)
{
  if ((a1 - 1) < 0x14)
  {
    return gsc_saAVC_LevelLimits[9 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v2 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "AVC_FindLevelIdc", 295, "(AVC_Level_Invalid < eLevel) && (eLevel < AVC_Level_Max)", 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t AVC_FindMaxMvsPer2Mb(int a1)
{
  v2 = gsc_saAVC_LevelLimits;
  v3 = 20;
  do
  {
    if (*v2 == a1)
    {
      return v2[7];
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  if (AVE_Log_CheckLevel(0xD1u, 4))
  {
    v4 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v4)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", CurrTime, 209, LevelStr, "AVC_FindMaxMvsPer2Mb", 363, "psLimit != __null", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", CurrTime);
  }

  return 64;
}

uint64_t AVC_FindMaxSubMbRectSize(int a1)
{
  v2 = &dword_2954EBAA0;
  v3 = 20;
  do
  {
    if (*(v2 - 8) == a1)
    {
      return *v2;
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v5 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v5)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", CurrTime, 209, LevelStr, "AVC_FindMaxSubMbRectSize", 385, "psLimit != __null", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t AVE_TimeStats_Create(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %lld %d %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Create", a1, v4, 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %lld %d %p", CurrTime);
  }

  if ((v4 & 0x80000000) != 0 || !a3)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x3Cu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p\n", v17, 60, v18, "AVE_TimeStats_Create", 29, "num >= 0 && ppTS != __null", a1, v4, a3);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v19, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v17, 60, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  else
  {
    v9 = malloc_type_malloc(0xD8uLL, 0x10A0040F185B927uLL);
    if (v9)
    {
      v10 = v9;
      v11 = AVE_TimeStats_Init(v9, a1, v4);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x3Cu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x3Cu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d\n", v13, 60, v14, "AVE_TimeStats_Create", 37, "ret == 0", v10, a1, v4, v11);
            v15 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v15, 60, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v13, 60, v14);
          }
        }

        AVE_TimeStats_Uninit(v10);
        free(v10);
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x3Cu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p\n", v21, 60, v22, "AVE_TimeStats_Create", 33, "pTS != __null", a1, v4, a3);
          v23 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v23, 60, v31);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v21, 60, v22);
        }
      }

      v10 = 0;
      v11 = 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v24 = AVE_Log_CheckConsole(0x3Cu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(6);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %lld %d %p %d\n", v25, 60, v26, "AVE_TimeStats_Create", a1, v4, v10, v11);
      v27 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v27, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v25, 60);
    }
  }

  return v11;
}

uint64_t AVE_TimeStats_Init(_OWORD *a1, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Init", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d", CurrTime);
  }

  if (!a1 || (a3 & 0x80000000) != 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Cu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d\n", v14, 60, v15, "AVE_TimeStats_Init", 104, "pTS != __null && num >= 0", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v16, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v14, 60, v15);
      }
    }

    v12 = 4294966295;
  }

  else
  {
    *(a1 + 26) = 0;
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
    *a1 = 0u;
    v9 = AVE_Mutex_Create();
    if (v9)
    {
      v10 = v9;
      if (!a3)
      {
        a3 = 2;
      }

      v11 = malloc_type_malloc(16 * a3, 0x1000040451B5BE8uLL);
      if (v11)
      {
        v12 = 0;
        *a1 = a2;
        *(a1 + 2) = a3;
        *(a1 + 2) = v11;
        *(a1 + 22) = v10;
        goto LABEL_28;
      }

      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x3Cu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d\n", v22, 60, v23, "AVE_TimeStats_Init", 119, "pTP != __null", a1, a2, a3);
          v24 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v24, 60, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v22, 60, v23);
        }
      }

      AVE_Mutex_Destroy(v10);
    }

    else if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d\n", v18, 60, v19, "AVE_TimeStats_Init", 110, "pMutex != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v20, 60, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v18, 60, v19);
      }
    }

    v12 = 4294966293;
  }

LABEL_28:
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v25 = AVE_Log_CheckConsole(0x3Cu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d\n", v26, 60, v27, "AVE_TimeStats_Init", a1, a2, a3, v12);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v26);
    }
  }

  return v12;
}

uint64_t AVE_TimeStats_Uninit(_OWORD *a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Uninit", a1);
      v5 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v17, "AVE_TimeStats_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
      *(a1 + 2) = 0;
    }

    v7 = *(a1 + 22);
    if (v7)
    {
      AVE_Mutex_Destroy(v7);
    }

    v8 = 0;
    *(a1 + 26) = 0;
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
    *a1 = 0u;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x3Cu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v10, 60, v11, "AVE_TimeStats_Uninit", 166, "pTS != __null", 0);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v10);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v12 = AVE_Log_CheckConsole(0x3Cu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
      v15 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 60, v18, "AVE_TimeStats_Uninit", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_TimeStats_Destroy(_OWORD *a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = AVE_TimeStats_Uninit(a1);
    free(a1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x3Cu);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Destroy", 73, "pTS != __null", 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v10 = AVE_Log_CheckConsole(0x3Cu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
      v13 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Destroy", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
    }
  }

  return v6;
}

uint64_t AVE_TimeStats_Calc(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Calc", a1);
      v5 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v28, "AVE_TimeStats_Calc", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Calc", a1);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v18, 60, v19, "AVE_TimeStats_Calc", 326, "pTS != __null", 0);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v18);
    }

    v16 = 4294966295;
    goto LABEL_38;
  }

  AVE_Mutex_Lock(*(a1 + 176));
  v6 = *(a1 + 16);
  if (!v6)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x3Cu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p\n", v21, 60, v22, "AVE_TimeStats_Calc", 331, "pTS->psTP != __null", a1);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p", v21);
    }

    v16 = 4294966285;
    goto LABEL_37;
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v7 = (a1 + 184);
  *(a1 + 200) = 0;
  v8 = *(a1 + 24);
  LODWORD(v9) = *(a1 + 8);
  if (v8 < v9)
  {
    v9 = (v8 + 1);
  }

  else
  {
    v9 = v9;
  }

  if (v9 < 1)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v6 + 8);
  do
  {
    v15 = *v14 - *(v14 - 1);
    if (v15 < 1)
    {
      goto LABEL_21;
    }

    if (v12)
    {
      if (v15 < v11)
      {
        *v7 = v15;
        v11 = v15;
      }

      if (v15 <= v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v7 = v15;
      v11 = v15;
    }

    *(a1 + 200) = v15;
    v10 = v15;
LABEL_20:
    v13 += v15;
    ++v12;
LABEL_21:
    v14 += 2;
    --v9;
  }

  while (v9);
  if (v12)
  {
    v16 = 0;
    *(a1 + 192) = v13 / v12;
    *(a1 + 208) = v12;
    goto LABEL_37;
  }

LABEL_28:
  v16 = 0;
LABEL_37:
  AVE_Mutex_Unlock(*(a1 + 176));
LABEL_38:
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v23 = AVE_Log_CheckConsole(0x3Cu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(7);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 60, v29, "AVE_TimeStats_Calc", a1, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
    }
  }

  return v16;
}

uint64_t AVE_TimeStats_Print(void *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v34 = *MEMORY[0x29EDCA608];
  memset(v33, 0, sizeof(v33));
  if (a1)
  {
    v10 = a3;
    result = AVE_Log_CheckLevel(a2, a3);
    if (result)
    {
      AVE_ComposePosStr(a4, a5, v33, 32);
      AVE_Mutex_Lock(a1[22]);
      if (AVE_Log_CheckLevel(a2, a3))
      {
        v12 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (v12 && (-a3 & 0x20) == 0)
          {
            printf("TimeStats ID: %lld %s | Session: %lld Process: %lld\n", *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
          }

          syslog(3, "TimeStats ID: %lld %s | Session: %lld Process: %lld");
        }

        else
        {
          v13 = v12 ^ 1;
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(a3);
          if (((v13 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld\n", CurrTime, a2, LevelStr, *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld", CurrTime, a2, LevelStr, *a1, v33, a1[7] - a1[4], a1[15] - a1[14]);
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v20 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (!v20 || (-a3 & 0x20) != 0)
          {
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v33, a1[5] - a1[4], a1[7] - a1[6]);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v33, a1[5] - a1[4], a1[7] - a1[6]);
          }
        }

        else
        {
          v21 = v20 ^ 1;
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(a3);
          if (((v21 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", v22, a2, v23, *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", v22, a2, v23, *a1, v33, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v24 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (v24 && (-a3 & 0x20) == 0)
          {
            printf("TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", *a1, v33, a1[23], a1[24], a1[25], *(a1 + 52));
          }

          syslog(3, "TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d");
        }

        else
        {
          v25 = a3 & 0x20;
          v26 = v24 ^ 1;
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(v10);
          if ((v26 | (v25 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v27, a2, v28);
          }

          else
          {
            v29 = a2;
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", v27, a2, v28, *a1, v33, a1[23], a1[24], a1[25], *(a1 + 52));
            v30 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(v10);
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v30, v29, v32);
          }
        }
      }

      AVE_Mutex_Unlock(a1[22]);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x3Cu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d\n", v17, 60, v18, "AVE_TimeStats_Print", 404, "pTS != __null", 0, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v19, 60, v31, "AVE_TimeStats_Print");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v17, 60, v18, "AVE_TimeStats_Print");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_ANFD_RetrieveEntry(CFDictionaryRef theDict, int *a2)
{
  v41 = 0.0;
  if (theDict && a2)
  {
    SInt32 = AVE_CFDict_GetSInt32(theDict, @"AnfdModality", a2);
    if (!SInt32)
    {
      v13 = AVE_CFDict_GetSInt32(theDict, @"FaceID", a2 + 1);
      if (v13)
      {
        v5 = v13;
        if (!AVE_Log_CheckLevel(0x2Fu, 4))
        {
          return v5;
        }

        v14 = AVE_Log_CheckConsole(0x2Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v14)
        {
          goto LABEL_30;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 40, "ret == 0", theDict, a2, v5);
      }

      else
      {
        v15 = AVE_CFDict_GetSInt32(theDict, @"ConfidenceLevel", a2 + 2);
        if (v15)
        {
          v5 = v15;
          if (!AVE_Log_CheckLevel(0x2Fu, 4))
          {
            return v5;
          }

          v16 = AVE_Log_CheckConsole(0x2Fu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v16)
          {
            goto LABEL_30;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 45, "ret == 0", theDict, a2, v5);
        }

        else
        {
          Value = CFDictionaryGetValue(theDict, @"Rect");
          if (!Value)
          {
            if (AVE_Log_CheckLevel(0x2Fu, 4))
            {
              v22 = AVE_Log_CheckConsole(0x2Fu);
              v23 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(4);
              if (v22)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v23, 47, v24, "AVE_ANFD_RetrieveEntry", 50, "pRect != __null", theDict, a2, 0);
                v25 = AVE_GetCurrTime();
                v40 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v25, 47, v40);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 47, v24);
              }
            }

            return 4294966288;
          }

          v18 = Value;
          Double = AVE_CFDict_GetDouble(Value, @"X", &v41);
          if (Double)
          {
            v5 = Double;
            if (!AVE_Log_CheckLevel(0x2Fu, 4))
            {
              return v5;
            }

            v20 = AVE_Log_CheckConsole(0x2Fu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v20)
            {
              goto LABEL_30;
            }

            printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 54, "ret == 0", theDict, a2, v5);
          }

          else
          {
            a2[4] = vcvtd_n_s64_f64(v41, 0x13uLL);
            v26 = AVE_CFDict_GetDouble(v18, @"Y", &v41);
            if (v26)
            {
              v5 = v26;
              if (!AVE_Log_CheckLevel(0x2Fu, 4))
              {
                return v5;
              }

              v27 = AVE_Log_CheckConsole(0x2Fu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (!v27)
              {
                goto LABEL_30;
              }

              printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 60, "ret == 0", theDict, a2, v5);
            }

            else
            {
              a2[5] = vcvtd_n_s64_f64(v41, 0x13uLL);
              v28 = AVE_CFDict_GetDouble(v18, @"Width", &v41);
              if (v28)
              {
                v5 = v28;
                if (!AVE_Log_CheckLevel(0x2Fu, 4))
                {
                  return v5;
                }

                v29 = AVE_Log_CheckConsole(0x2Fu);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (!v29)
                {
                  goto LABEL_30;
                }

                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 66, "ret == 0", theDict, a2, v5);
              }

              else
              {
                a2[6] = vcvtd_n_s64_f64(v41, 0x13uLL);
                v30 = AVE_CFDict_GetDouble(v18, @"Height", &v41);
                if (v30)
                {
                  v5 = v30;
                  if (!AVE_Log_CheckLevel(0x2Fu, 4))
                  {
                    return v5;
                  }

                  v31 = AVE_Log_CheckConsole(0x2Fu);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(4);
                  if (!v31)
                  {
                    goto LABEL_30;
                  }

                  printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 72, "ret == 0", theDict, a2, v5);
                }

                else
                {
                  a2[7] = vcvtd_n_s64_f64(v41, 0x13uLL);
                  a2[3] = 0x80000;
                  v32 = AVE_CFDict_GetSInt32(theDict, @"AngleInfoRoll", a2 + 8);
                  if (v32)
                  {
                    v5 = v32;
                    if (!AVE_Log_CheckLevel(0x2Fu, 4))
                    {
                      return v5;
                    }

                    v33 = AVE_Log_CheckConsole(0x2Fu);
                    CurrTime = AVE_GetCurrTime();
                    LevelStr = AVE_Log_GetLevelStr(4);
                    if (!v33)
                    {
                      goto LABEL_30;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 82, "ret == 0", theDict, a2, v5);
                  }

                  else
                  {
                    v34 = AVE_CFDict_GetSInt32(theDict, @"AngleInfoYaw", a2 + 9);
                    if (v34)
                    {
                      v5 = v34;
                      if (!AVE_Log_CheckLevel(0x2Fu, 4))
                      {
                        return v5;
                      }

                      v35 = AVE_Log_CheckConsole(0x2Fu);
                      CurrTime = AVE_GetCurrTime();
                      LevelStr = AVE_Log_GetLevelStr(4);
                      if (!v35)
                      {
                        goto LABEL_30;
                      }

                      printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 87, "ret == 0", theDict, a2, v5);
                    }

                    else
                    {
                      SInt64 = AVE_CFDict_GetSInt64(theDict, @"OriginalTimestamp", a2 + 5);
                      if (SInt64)
                      {
                        v5 = SInt64;
                        if (!AVE_Log_CheckLevel(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v37 = AVE_Log_CheckConsole(0x2Fu);
                        CurrTime = AVE_GetCurrTime();
                        LevelStr = AVE_Log_GetLevelStr(4);
                        if (!v37)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 92, "ret == 0", theDict, a2, v5);
                      }

                      else
                      {
                        v5 = AVE_CFDict_GetSInt64(theDict, @"Timestamp", a2 + 6);
                        if (!v5 || !AVE_Log_CheckLevel(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v38 = AVE_Log_CheckConsole(0x2Fu);
                        CurrTime = AVE_GetCurrTime();
                        LevelStr = AVE_Log_GetLevelStr(4);
                        if (!v38)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 96, "ret == 0", theDict, a2, v5);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      goto LABEL_23;
    }

    v5 = SInt32;
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v6 = AVE_Log_CheckConsole(0x2Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 35, "ret == 0", theDict, a2, v5);
        v9 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
LABEL_23:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v9, 47, v39);
        return v5;
      }

LABEL_30:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", CurrTime, 47, LevelStr);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Fu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_RetrieveEntry", 30, "pDict != __null && psEntry != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t AVE_ANFD_RetrieveArray(CFArrayRef theArray, _DWORD *a2)
{
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10)
    {
      v5 = 10;
    }

    else
    {
      v5 = Count;
    }

    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = a2 + 2;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        Entry = AVE_ANFD_RetrieveEntry(ValueAtIndex, v7);
        if (Entry)
        {
          v11 = Entry;
          if (AVE_Log_CheckLevel(0x2Fu, 4))
          {
            v20 = AVE_Log_CheckConsole(0x2Fu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v20)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveArray", 225, "ret == 0", theArray, a2, v11);
              v23 = AVE_GetCurrTime();
              v25 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v23, 47, v25);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 47, LevelStr);
            }
          }

          return v11;
        }

        ++*a2;
        ++v6;
        v7 += 16;
        if (v8 == v6)
        {
          return 0;
        }
      }

      if (AVE_Log_CheckLevel(0x2Fu, 4))
      {
        v16 = AVE_Log_CheckConsole(0x2Fu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d\n", v17, 47, v18, "AVE_ANFD_RetrieveArray", 220, "pDict != __null", theArray, a2, theArray, v5, v6);
          v19 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v19, 47, v24, "AVE_ANFD_RetrieveArray");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v17, 47, v18, "AVE_ANFD_RetrieveArray");
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x2Fu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 47, v14, "AVE_ANFD_RetrieveArray", 211, "pArray != __null && pInfo != __null", theArray, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 47);
    }

    return 4294966295;
  }
}

uint64_t AVE_ANFD_Print(unsigned int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v22 = *MEMORY[0x29EDCA608];
  memset(v21, 0, sizeof(v21));
  AVE_ComposePosStr(a4, a5, v21, 32);
  v8 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v9 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v21, *a1, a1[1]);
      }

      else
      {
        v19 = a1[3];
        printf("ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v21, *a1, a1[1], a1[2], a1[4] / v19, a1[5] / v19, a1[6] / v19, a1[7] / v19, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v21, *a1, a1[1]);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      v14 = a1[3];
      v15 = a1[4] / v14;
      v16 = a1[5] / v14;
      v17 = a1[6] / v14;
      v18 = a1[7] / v14;
      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", CurrTime, a2, LevelStr, v21, *a1, a1[1], a1[2], v15, v16, v17, v18, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v8);
      }

      syslog(3, "%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", CurrTime, a2, LevelStr, v21, *a1);
    }
  }

  return 0;
}

uint64_t AVE_ANFD_PrintInfo(int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 2);
    do
    {
      AVE_ANFD_Print(v11, a2, a3, a4, a5);
      ++v10;
      v11 += 16;
    }

    while (v10 < *a1);
  }

  return 0;
}

uint64_t AVE_ANFD_GetInfo(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    bzero(a2, 0x288uLL);
    Value = CFDictionaryGetValue(a1, @"StabilizedDetectedFacesArray");
    if (Value)
    {
      Array = AVE_ANFD_RetrieveArray(Value, a2);
      if (Array && AVE_Log_CheckLevel(0x2Fu, 4))
      {
        v6 = AVE_Log_CheckConsole(0x2Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v6)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_GetInfo", 365, "ret == 0", a1, a2, Array);
          v9 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 47, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 47, LevelStr);
        }
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 6))
    {
      v10 = AVE_Log_CheckConsole(0x2Fu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(6);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_GetInfo", 354, "pProperty != NULL && pInfo != NULL", a1, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return Array;
}

uint64_t AVE_BlkBuf_Make(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v10 = a1 + 128;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  bzero(a2, 24 * a4);
  AVE_DLList_Init_Node(a1, v12);
  *(a1 + 64) = a3;
  *(a1 + 72) = a5 * a4;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  AVE_DLList_Init(v11, v13);
  AVE_DLList_Init(v10, v14);
  if (a4 >= 1)
  {
    v15 = 0;
    do
    {
      AVE_DLList_PushBack(v11, (*(a1 + 88) + v15));
      v15 += 24;
    }

    while (24 * a4 != v15);
  }

  *(a1 + 164) = a4;
  return 0;
}

uint64_t AVE_BlkBuf_Create(int a1, int a2, unsigned int a3, uint64_t *a4)
{
  result = 4294966295;
  if (a1 >= 1 && a2 >= 1)
  {
    v6 = a3;
    if (a3 <= 0x40)
    {
      if (a3)
      {
        if (!a4 || ((a3 + 127) & a3) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v6 = 64;
      }

      *a4 = 0;
      v8 = (v6 - 1 + a2) & -v6;
      v9 = (v6 - 1 + v8) & -v6;
      if (0x7FFFFFFF / v9 <= a1)
      {
        return 4294966281;
      }

      else
      {
        v10 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
        if (v10)
        {
          v11 = v10;
          v12 = malloc_type_malloc(24 * a1, 0x20040960023A9uLL);
          if (v12)
          {
            v13 = v12;
            v14 = v6 - 1 + v9 * a1;
            v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
            if (v15)
            {
              v16 = v15;
              AVE_BlkBuf_Make(v11, v13, (v15 + v6 - 1) & -v6, a1, v8);
              result = 0;
              *(v11 + 24) = v11;
              *(v11 + 32) = v13;
              *(v11 + 48) = 168;
              *(v11 + 52) = 24 * a1;
              *(v11 + 40) = v16;
              *(v11 + 56) = v14;
              *a4 = v11;
              return result;
            }

            free(v11);
            v17 = v13;
          }

          else
          {
            v17 = v11;
          }

          free(v17);
        }

        return 4294966293;
      }
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_CreateWithMem(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  v16 = a1;
  v15 = a2;
  result = 4294966295;
  if (a2 >= 1 && a3 >= 1 && a4 >= 1 && a5 <= 0x40)
  {
    if (a5)
    {
      if (!a6 || ((a5 + 127) & a5) != 0)
      {
        return result;
      }
    }

    else
    {
      if (!a6)
      {
        return result;
      }

      a5 = 64;
    }

    *a6 = 0;
    v9 = (a4 + a5 - 1) & -a5;
    AVE_AlignMem(&v16, &v15, a5, a5);
    if (v15 / v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v15 / v9;
    }

    v11 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(24 * v10, 0x20040960023A9uLL);
      if (v13)
      {
        v14 = v13;
        AVE_BlkBuf_Make(v12, v13, v16, v10, v9);
        result = 0;
        *(v12 + 24) = v12;
        *(v12 + 32) = v14;
        *(v12 + 48) = 168;
        *(v12 + 52) = 24 * v10;
        *a6 = v12;
        return result;
      }

      free(v12);
    }

    return 4294966293;
  }

  return result;
}

uint64_t AVE_BlkBuf_Destroy(void *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (!AVE_DLList_Empty(a1 + 16))
  {
    return 4294966280;
  }

  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  result = a1[3];
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

uint64_t AVE_CalcBufNumOfMBInputCtrl(int a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  if (((a1 == 1) & a3) != 0)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t AVE_CalcBufSizeOfMBInputCtrl(int a1, int a2, int a3, int a4)
{
  if (a2 == 2)
  {
    v6 = ((a3 + 31) & 0xFFFFFFE0) * ((a4 + 31) >> 5);
    if (a1 >= 30)
    {
      v6 = (((a4 + 63) >> 5) & 0x3FFFFFE) * ((a3 + 63) & 0xFFFFFFC0);
    }
  }

  else if (a2 == 1)
  {
    v4 = (a3 + 15) & 0xFFFFFFF0;
    if (a1 < 30)
    {
      v5 = (a4 + 15) >> 4;
    }

    else
    {
      v4 = (v4 + 63) & 0x3FFFFFC0;
      v5 = ((a4 + 63) >> 4) & 0xFFFFFFFC;
    }

    v6 = v4 * v5;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 4095) & 0xFFFFF000;
}

uint64_t AVE_CFArray_AddSInt32(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddSInt32", 83, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt32", 79, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddFloat64(double a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v4 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(a2, v4);
      CFRelease(v5);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddFloat64", 138, "pNum != __null", a1, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", CurrTime);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddFloat64", 134, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddDouble(double a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddDouble", 165, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", CurrTime);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddDouble", 161, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_GetChar(CFArrayRef theArray, CFIndex idx, char *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetChar", 191, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt32(CFArrayRef theArray, CFIndex idx, int *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt32", 253, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt64(CFArrayRef theArray, CFIndex idx, uint64_t *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt64", 284, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetFloat64(CFArrayRef theArray, CFIndex idx, double *a3)
{
  v4 = idx;
  valuePtr = 0;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0.0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &valuePtr))
        {
          result = 0;
        }

        else
        {
          result = 4294966288;
        }

        *a3 = valuePtr;
        return result;
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_26;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_26;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_26:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetFloat64", 316, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_AddDouble(const __CFString *a1, double a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddDouble", 493, "pNum != __null", a1, valuePtr, a3);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x14u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p\n", v10, 20, v11, "AVE_CFDict_AddDouble", 489, "pKey != __null && pDict != __null", a1, a2, a3);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p", v10, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_GetDouble(CFDictionaryRef theDict, const __CFString *key, double *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0.0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberDoubleType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetDouble", 788, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

const char *AVE_CFStr_GetStr(const __CFString *a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    result = CFStringGetCStringPtr(a1, 0);
    if (a3 >= 1 && a2 && !result)
    {
      CFStringGetCString(a1, a2, a3, 0);
      return a2;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 20, LevelStr, "AVE_CFStr_GetStr", 975, "pStr != __null", 0, a2, a3);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 20, v11);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 20, LevelStr);
      }
    }

    return 0;
  }

  return result;
}

uint64_t AVE_CFPref_GetStr(CFStringRef applicationID, CFStringRef key, char *a3, uint64_t a4)
{
  if (applicationID && key && a3 && a4 > 0)
  {
    v8 = CFPreferencesCopyAppValue(key, applicationID);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        Str = AVE_CFStr_GetStr(v9, a3, a4);
        if (Str != a3)
        {
          AVE_SNPrintf(a3, a4, "%s", Str);
        }

        v12 = 0;
      }

      else
      {
        v12 = 4294966296;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetStr", 1006, "pAppID != __null && pKey != __null && pVal != __null && num > 0", applicationID, key, a3, a4);
        v16 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v16, 20, v18, "AVE_CFPref_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", CurrTime, 20, LevelStr, "AVE_CFPref_GetStr");
      }
    }

    return 4294966295;
  }

  return v12;
}

uint64_t AVE_CFPref_GetBool(CFStringRef applicationID, CFStringRef key, BOOL *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = CFEqual(v7, *MEMORY[0x29EDB8F00]) != 0;
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"yes", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"1", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        if (CFStringCompare(v7, @"false", 1uLL) && CFStringCompare(v7, @"no", 1uLL) && CFStringCompare(v7, @"0", 1uLL))
        {
LABEL_19:
          v10 = 4294966296;
          goto LABEL_20;
        }

        v9 = 0;
      }

LABEL_7:
      v10 = 0;
      *a3 = v9;
LABEL_20:
      CFRelease(v7);
      return v10;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetBool", 1047, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v14 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetUInt32(CFStringRef applicationID, CFStringRef key, unsigned int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          v19 = 0;
          valuePtr = 0;
          Str = AVE_CFStr_GetStr(v7, &valuePtr, 0xCu);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetUInt32", 1151, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetUInt64(CFStringRef applicationID, CFStringRef key, unint64_t *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v19 = 0;
          Str = AVE_CFStr_GetStr(v7, valuePtr, 0x14u);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetUInt64", 1202, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetInt32(CFStringRef applicationID, CFStringRef key, int *a3)
{
  valuePtr[2] = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr[0]) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          memset(valuePtr, 0, 13);
          Str = AVE_CFStr_GetStr(v7, valuePtr, 0xDu);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetInt32", 1252, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetInt64(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  v19[2] = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr = 0;
          v19[0] = 0;
          *(v19 + 5) = 0;
          Str = AVE_CFStr_GetStr(v7, &valuePtr, 0x15u);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetInt64", 1303, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetDouble(CFStringRef applicationID, CFStringRef key, double *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v19 = 0;
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberDoubleType, valuePtr))
        {
          v9 = *valuePtr;
LABEL_19:
          v14 = 0;
          *a3 = v9;
LABEL_21:
          CFRelease(v7);
          return v14;
        }

        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &v19))
        {
          v9 = v19;
          goto LABEL_19;
        }
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v21 = 0;
          Str = AVE_CFStr_GetStr(v7, valuePtr, 0x14u);
          if (Str)
          {
            v9 = strtod(Str, 0);
            goto LABEL_19;
          }
        }
      }

      v14 = 4294966296;
      goto LABEL_21;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetDouble", 1353, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DW_GetStr(const char *a1, const char *a2, char *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3 || a4 <= 0)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", CurrTime, 44, LevelStr, "AVE_DW_GetStr", 63, "pKey != __null && pVal != __null && num > 0", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v18, 44, v26, "AVE_DW_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", CurrTime, 44, LevelStr, "AVE_DW_GetStr");
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.coremedia";
  }

  v9 = CFStringCreateWithCString(0, v8, 0);
  v10 = CFStringCreateWithCString(0, a2, 0);
  v11 = v10;
  if (!v9 || !v10)
  {
    v13 = 4294966293;
    if (!v9)
    {
      if (!v10)
      {
        return v13;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  Str = AVE_CFPref_GetStr(v9, v10, a3, a4);
  if (Str)
  {
    v13 = Str;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *cStr = 0u;
    v31 = 0u;
    AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
    CFRelease(v11);
    v11 = CFStringCreateWithCString(0, cStr, 0);
    if (!v11)
    {
      goto LABEL_31;
    }

    v14 = AVE_CFPref_GetStr(v9, v11, a3, a4);
    if (v14)
    {
      v13 = v14;
      goto LABEL_31;
    }

    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %s\n", v23, 44, v24, cStr, a3);
        v23 = AVE_GetCurrTime();
        v29 = a3;
        v28 = AVE_Log_GetLevelStr(6);
      }

      else
      {
        v29 = a3;
        v28 = v24;
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v23, 44, v28, cStr, v29);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Cu, 6))
  {
    v13 = AVE_Log_CheckConsole(0x2Cu);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(6);
    if (!v13)
    {
      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v19, 44, v20, a2, a3);
      goto LABEL_31;
    }

    printf("%lld %d AVE %s: defaults write %s = %s\n", v19, 44, v20, a2, a3);
    v21 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %s", v21, 44, v27, a2, a3);
  }

  v13 = 0;
LABEL_31:
  CFRelease(v9);
  if (v11)
  {
LABEL_32:
    CFRelease(v11);
  }

  return v13;
}

uint64_t AVE_DW_GetBool(const char *a1, const char *a2, BOOL *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetBool", 134, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Bool = AVE_CFPref_GetBool(v7, v8, a3);
  if (!Bool)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Bool;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetBool(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetUInt32(const char *a1, const char *a2, unsigned int *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetUInt32", 276, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  UInt32 = AVE_CFPref_GetUInt32(v7, v8, a3);
  if (!UInt32)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = UInt32;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetUInt32(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetUInt64(const char *a1, const char *a2, unint64_t *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetUInt64", 348, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  UInt64 = AVE_CFPref_GetUInt64(v7, v8, a3);
  if (!UInt64)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = UInt64;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetUInt64(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetInt32(const char *a1, const char *a2, int *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetInt32", 419, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Int32 = AVE_CFPref_GetInt32(v7, v8, a3);
  if (!Int32)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Int32;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetInt32(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetInt64(const char *a1, const char *a2, uint64_t *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetInt64", 491, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Int64 = AVE_CFPref_GetInt64(v7, v8, a3);
  if (!Int64)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %lld\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Int64;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetInt64(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %lld\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_GetDouble(const char *a1, const char *a2, double *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetDouble", 562, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Double = AVE_CFPref_GetDouble(v7, v8, a3);
  if (!Double)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v17 = AVE_Log_CheckConsole(0x2Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %lf\n", v18, 44, v19, a2, *a3);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = Double;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = AVE_CFPref_GetDouble(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = AVE_Log_CheckConsole(0x2Cu);
  v20 = AVE_GetCurrTime();
  v21 = AVE_Log_GetLevelStr(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %lf\n", v20, 44, v21, cStr, *a3);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t AVE_DW_Cfg_Init(_DWORD *a1)
{
  bzero(a1, 0x650uLL);
  *a1 = -1;
  a1[20] = -2;
  for (i = 31; i != 103; i += 12)
  {
    *&a1[i] = -1;
  }

  v3 = 0;
  a1[18] = -2;
  *(a1 + 420) = 0;
  a1[189] = -1;
  *(a1 + 98) = 0xC0000000CLL;
  a1[198] = -2;
  a1[201] = -13;
  *(a1 + 101) = 0xC0000000CLL;
  *(a1 + 102) = 0xBFF0000000000000;
  *(a1 + 105) = 0xBFF0000000000000;
  *(a1 + 110) = -1;
  *(a1 + 112) = -1;
  *(a1 + 113) = 0xBFF0000000000000;
  *(a1 + 114) = 0xBFF0000000000000;
  a1[261] = -1;
  *(a1 + 133) = 0xBFF0000000000000;
  *(a1 + 134) = 0xBFF0000000000000;
  v4 = a1 + 278;
  *(a1 + 120) = 0xC0000000CLL;
  *(a1 + 136) = -1;
  do
  {
    v5 = 0;
    a1[24 * v3 + 276] = 1;
    do
    {
      *&v4[v5] = -NAN;
      v5 += 3;
    }

    while (v5 != 21);
    ++v3;
    v4 += 24;
  }

  while (v3 != 5);
  a1[255] = -1;
  *(a1 + 395) = 0xFFFFFFFFLL;
  *(a1 + 257) = -1;
  *(a1 + 259) = -1;
  *(a1 + 199) = -1;
  return 0;
}

uint64_t AVE_Prop_Cfg_AVC_Init(uint64_t *a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v4 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Init", a1, a2);
      v7 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v19, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }
  }

  bzero(a1 + 4, 0x568uLL);
  *a1 = a2;
  *(a1 + 1) = xmmword_2954EBDA0;
  a1[3] = -101;
  *(a1 + 9) = -1;
  *&v8 = 0xC0000000CLL;
  *(&v8 + 1) = 0xC0000000CLL;
  *(a1 + 21) = v8;
  *(a1 + 46) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 31) = _Q0;
  a1[33] = 0xBFF0000000000000;
  *(a1 + 68) = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 35) = v14;
  *(a1 + 37) = v14;
  *(a1 + 78) = -1;
  *(a1 + 20) = _Q0;
  a1[43] = 0xFFFFFFFEFFFFFFFFLL;
  *(a1 + 95) = -1;
  *(a1 + 99) = -1;
  a1[50] = -1;
  a1[44] = -1;
  a1[45] = -1;
  a1[46] = -1;
  *(a1 + 116) = -1;
  *(a1 + 27) = v14;
  *(a1 + 28) = v14;
  *(a1 + 26) = v14;
  a1[59] = 0xBFF0000000000000;
  *(a1 + 30) = xmmword_2954EBDB0;
  a1[62] = -1;
  *(a1 + 676) = -1;
  a1[153] = 0xC0000000CLL;
  *(a1 + 308) = -13;
  *(a1 + 314) = -1;
  *(a1 + 317) = -1;
  a1[160] = 0xBFF0000000000000;
  a1[162] = -1;
  *(a1 + 337) = -1;
  *(a1 + 340) = -1;
  *(a1 + 1404) = -1;
  a1[183] = -1;
  *(a1 + 179) = v14;
  *(a1 + 181) = v14;
  *(a1 + 177) = v14;
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v15 = AVE_Log_CheckConsole(0x1Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v16, 30, v17, "AVE_Prop_Cfg_AVC_Init", a1, a2, 0);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v16);
  }

  return 0;
}

uint64_t AVE_Prop_Cfg_AVC_Uninit(uint64_t *a1)
{
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v2 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
      v5 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", CurrTime, 30, LevelStr, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }
  }

  v6 = *a1;
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v7 = AVE_Log_CheckConsole(0x1Eu);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_AVC_Uninit", a1, v6, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

uint64_t AVE_DW_RetrieveDeprecatedKeys(int *a1)
{
  v7 = 0;
  v6 = 0;
  if (!AVE_DW_GetBool(0, "AVE_EnableLossless", &v7))
  {
    v2 = 10;
    if (v7)
    {
      v2 = 8;
    }

    *&a1[v2] |= 0x200uLL;
  }

  if (!AVE_DW_GetInt32(0, "AVE_FrameQP", &v6))
  {
    v3 = v6;
    a1[201] = v6;
    a1[202] = v3;
    a1[203] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaximizePowerEfficiency", &v6))
  {
    if (v6)
    {
      a1[16] |= 2u;
    }

    else
    {
      a1[17] |= 2u;
    }
  }

  if (!AVE_DW_GetInt32(0, "AVE_UseCAVLCBits", &v6))
  {
    if (v6)
    {
      a1[16] |= 0x100u;
    }

    else
    {
      a1[17] |= 0x100u;
    }
  }

  if (!AVE_DW_GetInt32(0, "AVE_EnableMCTF", &v6))
  {
    v4 = 8;
    if (!v6)
    {
      v4 = 10;
    }

    *&a1[v4] |= 0x20uLL;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Bframes", &v6))
  {
    a1[221] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_BaseFrameRate", &v6))
  {
    *a1 = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPI", &v6))
  {
    a1[201] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPP", &v6))
  {
    a1[202] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_InitialQPB", &v6))
  {
    a1[203] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SoftMinQP", &v6))
  {
    a1[196] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SoftMaxQP", &v6))
  {
    a1[197] = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_HardMinQP", &v6))
  {
    a1[240] = v6;
  }

  result = AVE_DW_GetInt32(0, "AVE_HardMaxQP", &v6);
  if (!result)
  {
    a1[241] = v6;
  }

  return result;
}

uint64_t AVE_DW_RetrieveFeature(void *a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_CfgOn", &v3))
  {
    a1[2] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_CfgOff", &v3))
  {
    a1[3] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SwFeatureOn", &v3))
  {
    a1[4] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SwFeatureOff", &v3))
  {
    a1[5] = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_HwFeatureOn", &v3))
  {
    a1[6] = v3;
  }

  result = AVE_DW_GetUInt64(0, "AVE_HwFeatureOff", &v3);
  if (!result)
  {
    a1[7] = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDPM(int *a1)
{
  v9 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DPM_Mode", &v9))
  {
    *a1 = v9 | 0x100;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_IOPMin", &v9))
  {
    v2 = v9;
    if (v9 <= 1)
    {
      v2 = 1;
    }

    if (v2 >= 4)
    {
      v2 = 4;
    }

    a1[1] |= 1u;
    a1[2] = v2;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_IOPMax", &v9))
  {
    v3 = v9;
    if (v9 <= 1)
    {
      v3 = 1;
    }

    if (v3 >= 4)
    {
      v3 = 4;
    }

    a1[3] = v3;
    a1[1] |= 0x10000u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_DCSMin", &v9))
  {
    v4 = v9;
    if (v9 <= 1)
    {
      v4 = 1;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    a1[4] = v4;
    a1[1] |= 2u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_DCSMax", &v9))
  {
    v5 = v9;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    if (v5 >= 4)
    {
      v5 = 4;
    }

    a1[5] = v5;
    a1[1] |= 0x20000u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DPM_PL_FABMin", &v9))
  {
    v6 = v9;
    if (v9 <= 1)
    {
      v6 = 1;
    }

    if (v6 >= 4)
    {
      v6 = 4;
    }

    a1[6] = v6;
    a1[1] |= 4u;
  }

  result = AVE_DW_GetInt32(0, "AVE_DPM_PL_FABMax", &v9);
  if (!result)
  {
    v8 = v9;
    if (v9 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v8 = 4;
    }

    a1[7] = v8;
    a1[1] |= 0x40000u;
  }

  return result;
}

uint64_t AVE_DW_RetrieveDLB(int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v4 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_DLB_AllocMode", &v4))
  {
    a1[1] = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_Type", &v4))
  {
    a1[2] = v4;
    *a1 = 1;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_SVESchedMode", &v4))
  {
    a1[3] = v4;
    *a1 = 1;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DLB_SVENum", &v4))
  {
    a1[4] = v4;
    *a1 = 1;
  }

  if (!AVE_DW_GetStr(0, "AVE_DLB_SVEMap", v5, 128))
  {
    AVE_DLB_ParseCfg(v5, a1);
  }

  Str = AVE_DW_GetStr(0, "AVE_DLB_Cfg", v5, 128);
  if (!Str)
  {
    AVE_DLB_ParseCfg(v5, a1);
  }

  return Str;
}

uint64_t AVE_DW_RetrievePerf(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_PerfFeatureOn", &v3[1]))
  {
    a1[16] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_PerfFeatureOff", &v3[1]))
  {
    a1[17] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_InputQueueMaxCount", v3))
  {
    a1[18] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaxFrameRate", v3))
  {
    a1[19] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_Realtime", v3))
  {
    a1[20] = v3[0];
  }

  AVE_DW_RetrieveDPM(a1 + 21);
  return AVE_DW_RetrieveDLB(a1 + 29);
}

uint64_t AVE_DW_RetrieveDump(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__src = 0u;
  v6 = 0u;
  if (!AVE_DW_GetUInt32(0, "AVE_DumpFeature", &v4))
  {
    *(a1 + 412) = v4;
  }

  if (!AVE_DW_GetUInt32(0, "AVE_DumpMode", &v4))
  {
    *(a1 + 416) = v4;
  }

  Str = AVE_DW_GetStr(0, "AVE_OutputPath", __src, 128);
  if (!Str)
  {
    strncpy((a1 + 420), __src, 0x7FuLL);
  }

  return Str;
}

uint64_t AVE_DW_RetrieveLog(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v4 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  if (!AVE_DW_GetUInt64(0, "AVE_Verbose", &v5))
  {
    *(a1 + 8) = v5;
    *a1 |= 0x100u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_KernelVerbose", &v5))
  {
    *(a1 + 16) = v5;
    *a1 |= 0x200u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_FirmwareVerbose", &v5))
  {
    *(a1 + 24) = v5;
    *a1 |= 0x300u;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_AlgVerbose", &v5))
  {
    *(a1 + 32) = v5;
    *a1 |= 0x400u;
  }

  if (!AVE_DW_GetInt32(0, "AVE_LogConsole", &v4))
  {
    *(a1 + 40) = v4;
  }

  Str = AVE_DW_GetStr(0, "AVE_LogPath", __src, 128);
  if (!Str)
  {
    strncpy((a1 + 44), __src, 0x7FuLL);
  }

  return Str;
}

uint64_t AVE_DW_RetrieveRC(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_RCFeatureOn", &v4))
  {
    *(a1 + 768) = v4;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_RCFeatureOff", &v4))
  {
    *(a1 + 776) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMinQP", &v6))
  {
    *(a1 + 784) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMaxQP", &v6))
  {
    *(a1 + 788) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_LookAheadFrameCount", &v6))
  {
    *(a1 + 792) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_RCMode", &v6))
  {
    *(a1 + 796) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Bitrate", &v6))
  {
    *(a1 + 800) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPI", &v6))
  {
    *(a1 + 804) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPP", &v6))
  {
    *(a1 + 808) = v6;
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPB", &v6))
  {
    *(a1 + 812) = v6;
  }

  if (!AVE_DW_GetDouble(0, "AVE_CRFScale", &v3))
  {
    *(a1 + 816) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_VBVMaxBitRate", &v6))
  {
    *(a1 + 824) = v6;
  }

  if (!AVE_DW_GetDouble(0, "AVE_VBVBufferSize", &v3))
  {
    *(a1 + 832) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_VBVInitialDelay", &v3))
  {
    *(a1 + 840) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Parallel_Limit", &v6))
  {
    *(a1 + 848) = v6;
  }

  if (!AVE_DW_GetInt64(0, "AVE_Parallel_MinFrameCnt", &v5))
  {
    *(a1 + 856) = v5;
  }

  result = AVE_DW_GetInt64(0, "AVE_Parallel_MinDuration", &v5);
  if (!result)
  {
    *(a1 + 864) = v5;
  }

  return result;
}

uint64_t AVE_DW_RetrieveGOP(uint64_t a1)
{
  v3 = 0;
  *v4 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_GOPFeatureOn", &v4[1]))
  {
    *(a1 + 872) = v4[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_GOPFeatureOff", &v4[1]))
  {
    *(a1 + 876) = v4[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfPFrame", v4))
  {
    *(a1 + 880) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfBFrame", v4))
  {
    *(a1 + 884) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_NumOfGOPLayer", v4))
  {
    *(a1 + 888) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_MaxKeyFrameInterval", v4))
  {
    *(a1 + 896) = v4[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_StrictKeyFrameInterval", v4))
  {
    *(a1 + 900) = v4[0];
  }

  if (!AVE_DW_GetDouble(0, "AVE_MaxKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 904) = v3;
  }

  if (!AVE_DW_GetDouble(0, "AVE_StrictKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 912) = v3;
  }

  result = AVE_DW_GetInt32(0, "AVE_NumOfTemporalLayer", v4);
  if (!result)
  {
    *(a1 + 892) = v4[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveRef(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_RefFeatureOn", &v3[1]))
  {
    a1[230] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_RefFeatureOff", &v3[1]))
  {
    a1[231] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefNumOfPFrame", v3))
  {
    a1[232] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefNumOfBFrame", v3))
  {
    a1[233] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefGapOfPFrame", v3))
  {
    a1[234] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_RefGapOfBFrameL0", v3))
  {
    a1[235] = v3[0];
  }

  result = AVE_DW_GetInt32(0, "AVE_RefGapOfBFrameL1", v3);
  if (!result)
  {
    a1[236] = v3[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveQPMod(_DWORD *a1)
{
  *v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_QPModFeatureOn", &v3[1]))
  {
    a1[237] = v3[1];
  }

  if (!AVE_DW_GetUInt32(0, "AVE_QPModFeatureOff", &v3[1]))
  {
    a1[238] = v3[1];
  }

  if (!AVE_DW_GetInt32(0, "AVE_QPModLevel", v3))
  {
    a1[239] = v3[0];
  }

  if (!AVE_DW_GetInt32(0, "AVE_BlkMinQP", v3))
  {
    a1[240] = v3[0];
  }

  result = AVE_DW_GetInt32(0, "AVE_BlkMaxQP", v3);
  if (!result)
  {
    a1[241] = v3[0];
  }

  return result;
}

uint64_t AVE_DW_RetrieveLambdaMod(uint64_t a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_LambdaModFeatureOn", &v3))
  {
    *(a1 + 968) = v3;
  }

  result = AVE_DW_GetUInt32(0, "AVE_LambdaModFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 972) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveModeDec(uint64_t a1)
{
  v3 = 0;
  if (!AVE_DW_GetUInt32(0, "AVE_ModeDecFeatureOn", &v3))
  {
    *(a1 + 976) = v3;
  }

  result = AVE_DW_GetUInt32(0, "AVE_ModeDecFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 980) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveAlg(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!AVE_DW_GetUInt64(0, "AVE_AlgFeatureOn", &v3))
  {
    *(a1 + 728) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_AlgFeatureOff", &v3))
  {
    *(a1 + 736) = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Profile", &v4))
  {
    *(a1 + 744) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Level", &v4))
  {
    *(a1 + 748) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_Tier", &v4))
  {
    *(a1 + 752) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_ScalingMatrix", &v4))
  {
    *(a1 + 756) = v4;
  }

  if (!AVE_DW_GetInt32(0, "AVE_FrameRate", &v4))
  {
    *(a1 + 760) = v4;
  }

  AVE_DW_RetrieveRC(a1);
  AVE_DW_RetrieveGOP(a1);
  AVE_DW_RetrieveRef(a1);
  AVE_DW_RetrieveQPMod(a1);
  AVE_DW_RetrieveLambdaMod(a1);
  AVE_DW_RetrieveModeDec(a1);
  if (!AVE_DW_GetUInt64(0, "AVE_SEIFeatureOn", &v3))
  {
    *(a1 + 984) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_SEIFeatureOff", &v3))
  {
    *(a1 + 992) = v3;
  }

  if (!AVE_DW_GetUInt64(0, "AVE_VUIFeatureOn", &v3))
  {
    *(a1 + 1000) = v3;
  }

  result = AVE_DW_GetUInt64(0, "AVE_VUIFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 1008) = v3;
  }

  return result;
}

uint64_t AVE_DW_RetrieveHw(_DWORD *a1)
{
  v3 = 0;
  if (!AVE_DW_GetInt32(0, "AVE_SliceNum", &v3))
  {
    a1[254] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SearchRangeMode", &v3))
  {
    a1[255] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_ThroughputMode", &v3))
  {
    a1[256] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_MergeCandidateNum", &v3))
  {
    a1[257] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_DeblockMode", &v3))
  {
    a1[258] = v3;
  }

  if (!AVE_DW_GetInt32(0, "AVE_SAOMode", &v3))
  {
    a1[259] = v3;
  }

  result = AVE_DW_GetInt32(0, "AVE_EdgeReplication", &v3);
  if (!result)
  {
    a1[260] = v3;
  }

  return result;
}