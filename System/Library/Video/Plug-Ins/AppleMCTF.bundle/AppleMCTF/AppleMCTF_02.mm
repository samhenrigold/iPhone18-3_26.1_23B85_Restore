char *sub_2CED0(uint64_t a1, size_t a2, CMBlockBufferRef *a3, uint64_t a4)
{
  dataPointerOut = 0;
  if (sub_56A8C(0x2Eu, 7))
  {
    v7 = sub_56AD0(0x2Eu);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %ld %p\n", v8, 46, v9, "AVE_FrameRecv", "CreateBuffer", a2, a3);
      v8 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %ld %p", v8);
  }

  if (!a2)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v14 = sub_56AD0(0x2Eu);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld\n", v15, 46, v16, "AVE_FrameRecv", "CreateBuffer", 1600, "size != 0", a1, 0);
        v17 = sub_66A18();
        v26 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v17, 46, v26);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v15, 46, v16);
      }
    }

    goto LABEL_30;
  }

  if (!a3 || *a3)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v10 = sub_56AD0(0x2Eu);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        if (a3)
        {
          v13 = *a3;
        }

        else
        {
          v13 = 0;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p\n", v11, 46, v12, "AVE_FrameRecv", "CreateBuffer", 1603, "(bbuf != __null) && (*bbuf == __null)", a1, a3, v13);
        v11 = sub_66A18();
        v12 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p", v11, 46, v12, "AVE_FrameRecv");
    }

LABEL_30:
    v20 = -1001;
    goto LABEL_31;
  }

  v18 = *(a1 + 137804);
  if (*(a1 + 29352) == 1)
  {
    if (v18 != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v18 == 2)
  {
LABEL_23:
    if (*(a1 + 29304))
    {
      VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions();
      goto LABEL_37;
    }

LABEL_25:
    Typed = malloc_type_malloc(a2, 0x100004077774924uLL);
    goto LABEL_26;
  }

  if (*(a1 + 39448) == 2)
  {
    Typed = CFAllocatorAllocateTyped();
LABEL_26:
    v20 = 0;
    dataPointerOut = Typed;
    goto LABEL_31;
  }

  VTEncoderSessionCreateCMBlockBuffer();
  CMBlockBufferGetDataPointer(*a3, 0, 0, 0, &dataPointerOut);
LABEL_37:
  v20 = 0;
LABEL_31:
  if (sub_56A8C(0x2Eu, 7))
  {
    v21 = sub_56AD0(0x2Eu);
    v22 = sub_66A18();
    v23 = sub_56B04(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %ld %p %p %d\n", v22, 46, v23, "AVE_FrameRecv", "CreateBuffer", a2, a3, dataPointerOut, v20);
      v24 = sub_66A18();
      v27 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v24, 46, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v22, 46, v23);
    }
  }

  return dataPointerOut;
}

void sub_2D3A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (sub_56A8C(0x2Eu, 7))
    {
      v4 = sub_56AD0(0x2Eu);
      v5 = sub_66A18();
      v6 = sub_56B04(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec: DeleteBuffer %p\n", v5, 46, v6, a2);
        v7 = sub_66A18();
        v15 = sub_56B04(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", v7, 46, v15, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", v5, 46, v6, a2);
      }
    }

    v12 = *(a1 + 137804);
    if (*(a1 + 29352) != 1)
    {
      if (v12 != 2)
      {
        if (*(a1 + 39448) == 2)
        {
          v13 = *(a1 + 29312);

          CFAllocatorDeallocate(v13, a2);
        }

        return;
      }

      goto LABEL_16;
    }

    if (v12 == 2)
    {
LABEL_16:
      if (!CVPixelBufferUnlockBaseAddress(a2, 0))
      {
        CVPixelBufferRelease(a2);
        v14 = *(a1 + 29304);

        _VTMotionEstimationProcessorSessionCleanUpAfterProcessing(v14);
      }

      return;
    }

    free(a2);
  }

  else if (sub_56A8C(0x2Eu, 4))
  {
    v8 = sub_56AD0(0x2Eu);
    v9 = sub_66A18();
    v10 = sub_56B04(4);
    if (v8)
    {
      printf("%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.\n", v9, 46, v10);
      v11 = sub_66A18();
      v16 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v11, 46, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v9, 46, v10);
    }
  }
}

uint64_t sub_2D5B8(uint64_t a1, uint64_t a2)
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
    if (sub_56A8C(3u, 4))
    {
      v17 = sub_56AD0(3u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.\n", v18, 3, v19, "ProcessAndEmitLrmeStats", 996, "false");
        sub_66A18();
        LODWORD(v5) = -536870212;
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.");
    }

    goto LABEL_27;
  }

  if (*(a1 + 137804) != 2)
  {
    if (sub_56A8C(3u, 4))
    {
      v20 = sub_56AD0(3u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.\n", v21, 3, v22, "ProcessAndEmitLrmeStats", 998, "false");
        sub_66A18();
        LODWORD(v5) = -536870212;
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.");
    }

LABEL_27:
    sub_2A568(a1, v2, 0);
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
      if (sub_56A8C(3u, 4))
      {
        v31 = sub_56AD0(3u);
        v37 = sub_66A18();
        v38 = sub_56B04(4);
        if (!v31)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
          v29 = 0;
          goto LABEL_68;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.\n", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
        v39 = sub_66A18();
        v40 = sub_56B04(4);
        LODWORD(v5) = -536870212;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v39, 3, v40, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
      }

      v29 = 0;
LABEL_39:
      v31 = 0;
LABEL_68:
      sub_2A568(a1, v2, 0);
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
        if (sub_56A8C(3u, 4))
        {
          v32 = sub_56AD0(3u);
          v33 = sub_66A18();
          v34 = sub_56B04(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.\n", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
            v35 = sub_66A18();
            v226 = sub_56B04(4);
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
        v251 = BaseAddress + v52;
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
                if (sub_56A8C(0x2Eu, 5))
                {
                  v93 = sub_56AD0(0x2Eu);
                  v94 = sub_66A18();
                  v95 = sub_56B04(5);
                  if (v93)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n\n", v94, 46, v95);
                    sub_66A18();
                    sub_56B04(5);
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

                if (sub_56A8C(0x2Eu, 5))
                {
                  v61 = sub_56AD0(0x2Eu);
                  v62 = sub_66A18();
                  v63 = sub_56B04(5);
                  if (v61)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n\n", v62, 46, v63);
                    sub_66A18();
                    sub_56B04(5);
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
            if (sub_56A8C(0xDu, 4))
            {
              v90 = sub_56AD0(0xDu);
              v91 = sub_66A18();
              v92 = sub_56B04(4);
              v29 = v252;
              if (v90)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path\n", v91, 13, v92, "ProcessAndEmitLrmeStats", 1236, "bVTOF == false");
                sub_66A18();
                sub_56B04(4);
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
              if (sub_56A8C(0xDu, 4))
              {
                v70 = sub_56AD0(0xDu);
                v71 = sub_66A18();
                v72 = sub_56B04(4);
                v29 = v252;
                if (v70)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v71, 13, v72, "ProcessAndEmitLrmeStats", 1193, "bVTOF == false");
                  sub_66A18();
                  sub_56B04(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path");
                goto LABEL_216;
              }

              goto LABEL_125;
            }

            goto LABEL_181;
          }

          v247 = AllocSize;
          v96 = sub_2CED0(a1, 4 * v56 * v57, v253, *(v248 + 2552));
          v97 = CVPixelBufferGetBaseAddress(v96);
          v249 = v96;
          if (v97)
          {
            v7 = v97;
            v98 = v55 + 31;
            v250 = 4 * v56 * v57;
            bzero(v97, v250);
            BytesPerRow = CVPixelBufferGetBytesPerRow(v96);
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
                      v116 = (v251 + v115);
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
                        v172 = (v251 + (v247 >> 1) + v171);
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

          if (sub_56A8C(3u, 4))
          {
            v160 = sub_56AD0(3u);
            v161 = sub_66A18();
            v162 = sub_56B04(4);
            v2 = v248;
            v8 = v96;
            if (v160)
            {
              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.\n", v161, 3, v162, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
              v163 = sub_66A18();
              v232 = sub_56B04(4);
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
            v8 = v96;
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
          v76 = sub_2CED0(a1, 4 * v56 * v57, v253, *(v248 + 2552));
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
              if (sub_56A8C(0xDu, 7))
              {
                v237 = sub_56AD0(0xDu);
                v134 = sub_66A18();
                v135 = sub_56B04(7);
                if (v237)
                {
                  printf("%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v134, 13, v135, v56, v57, v250, v133);
                  v235 = sub_66A18();
                  sub_56B04(7);
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
                    v141 = (v251 + (((v238 << v6) + v240) & v242) * v138);
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

                        ++v141;
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

              if (sub_56A8C(0xDu, 7))
              {
                v152 = sub_56AD0(0xDu);
                v153 = sub_66A18();
                v154 = sub_56B04(7);
                v8 = v249;
                if (v152)
                {
                  printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n\n", v153, 13, v154, "ProcessAndEmitLrmeStats", v239, v136);
                  v155 = sub_66A18();
                  v230 = sub_56B04(7);
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

            if (sub_56A8C(0xDu, 4))
            {
              v185 = sub_56AD0(0xDu);
              v84 = sub_66A18();
              v186 = sub_56B04(4);
              v2 = v248;
              v8 = v76;
              if (v185)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL\n", v84, 13, v186, "ProcessAndEmitLrmeStats", 1326, "psMVCostBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = sub_66A18();
                v234 = "psMVCostBuffer != __null";
                v233 = 1326;
                v5 = 3758097084;
                v229 = sub_56B04(4);
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
            if (sub_56A8C(0xDu, 4))
            {
              v83 = sub_56AD0(0xDu);
              v84 = sub_66A18();
              v85 = sub_56B04(4);
              v2 = v248;
              v8 = v76;
              if (v83)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v84, 13, v85, "ProcessAndEmitLrmeStats", 1309, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = sub_66A18();
                v234 = "MvStatsBuffer != __null";
                v233 = 1309;
                v5 = 3758097084;
                v229 = sub_56B04(4);
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
            v194 = sub_2CED0(a1, v250, v253, *(v248 + 2552));
            v195 = CVPixelBufferGetBaseAddress(v194);
            if (!v195)
            {
              v8 = v194;
              if (sub_56A8C(0xDu, 4))
              {
                v200 = sub_56AD0(0xDu);
                v201 = sub_66A18();
                v202 = sub_56B04(4);
                if (v200)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v201, 13, v202, "ProcessAndEmitLrmeStats", 1387, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                  v201 = sub_66A18();
                  sub_56B04(4);
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
            if (sub_56A8C(0xDu, 7))
            {
              v198 = sub_56AD0(0xDu);
              v243 = sub_66A18();
              v199 = sub_56B04(7);
              if (v198)
              {
                printf("%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v243, 13, v199, "ProcessAndEmitLrmeStats", v56, v57, v250, v197);
                v243 = sub_66A18();
                sub_56B04(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v243, 13);
            }

            if (*(a1 + 137808) >= 23)
            {
              v203 = v196;
              v9 = 4 * v56 * v57;
              sub_2F2F0(v251, v203, v250, v56, v57, v197, *v4);
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
                        if (*(v212 + 2 * i) < 0)
                        {
                          break;
                        }
                      }

                      v214 = v208 + 16 * v210;
                      v215 = *(v214 + 2 * i);
                      if (v215 < 0 && v211 < v57 * v197)
                      {
                        _S0 = (v215 << v193);
                        __asm { FCVT            H0, S0 }

                        v217 = &v196[4 * v211];
                        *v217 = LOWORD(_S0);
                        _S1 = (*(v214 + 2 * i) << 17 >> 25 << v193);
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
            if (sub_56A8C(0xDu, 7))
            {
              v222 = sub_56AD0(0xDu);
              v223 = sub_66A18();
              v224 = sub_56B04(7);
              if (v222)
              {
                printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v223, 13, v224, "ProcessAndEmitLrmeStats", v221, v205, v206);
                v223 = sub_66A18();
                sub_56B04(7);
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
            if (sub_56A8C(0xDu, 4))
            {
              v156 = sub_56AD0(0xDu);
              v157 = sub_66A18();
              v158 = sub_56B04(4);
              if (v156)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v157, 13, v158, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
                v159 = sub_66A18();
                v231 = sub_56B04(4);
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
              if (sub_56A8C(0x2Eu, 5))
              {
                v187 = sub_56AD0(0x2Eu);
                v188 = sub_66A18();
                v189 = sub_56B04(5);
                if (v187)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n\n", v188, 46, v189);
                  sub_66A18();
                  sub_56B04(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n");
              }

              goto LABEL_242;
            case 3:
              if (sub_56A8C(0x2Eu, 5))
              {
                v190 = sub_56AD0(0x2Eu);
                v191 = sub_66A18();
                v192 = sub_56B04(5);
                if (v190)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n\n", v191, 46, v192);
                  sub_66A18();
                  sub_56B04(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n");
              }

              goto LABEL_242;
            case 4:
              if (sub_56A8C(0x2Eu, 5))
              {
                v87 = sub_56AD0(0x2Eu);
                v88 = sub_66A18();
                v89 = sub_56B04(5);
                if (v87)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n\n", v88, 46, v89);
                  sub_66A18();
                  sub_56B04(5);
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

      if (!sub_56A8C(3u, 4))
      {
        LODWORD(v5) = 0;
        v31 = 0;
LABEL_126:
        v29 = v252;
        goto LABEL_68;
      }

      v64 = sub_56AD0(3u);
      v65 = sub_66A18();
      v66 = sub_56B04(4);
      v29 = v252;
      if (v64)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.\n", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
        v67 = sub_66A18();
        v228 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v67, 3, v228, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      LODWORD(v5) = 0;
      goto LABEL_39;
    }

    if (sub_56A8C(3u, 4))
    {
      v31 = sub_56AD0(3u);
      v47 = sub_66A18();
      v48 = sub_56B04(4);
      if (!v31)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
        v29 = 0;
        goto LABEL_67;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.\n", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
      v49 = sub_66A18();
      v50 = sub_56B04(4);
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
  sub_1EA8C(*(v4 + 185), *(v2 + 20), v7, v9);
  if (sub_56A8C(0x2Eu, 7))
  {
    v11 = v2;
    v12 = sub_56AD0(0x2Eu);
    v13 = sub_66A18();
    v14 = sub_56B04(7);
    v15 = *(v11 + 40);
    if (v12)
    {
      printf("%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d\n", v13, 46, v14, v15);
      v16 = sub_66A18();
      v225 = sub_56B04(7);
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
      if (sub_56A8C(3u, 4))
      {
        v43 = sub_56AD0(3u);
        v44 = sub_66A18();
        v45 = sub_56B04(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped\n", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
          v46 = sub_66A18();
          v5 = 3758097084;
          v227 = sub_56B04(4);
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
  sub_2A568(a1, v2, 0);
  if (v8)
  {
    sub_2D3A0(a1, v8);
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

void sub_2F2F0(uint64_t a1, char *a2, size_t a3, int a4, int a5, int a6, int a7)
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
            v24 = a1 + 20 * v20;
            do
            {
              if (*(v22 + 2 * v23) < 0)
              {
                break;
              }

              ++v23;
            }

            while (v23 != 7);
            v25 = *(v24 + 2 * v23);
            if (v25 < 0 && v21 < a6 * a5)
            {
              _S0 = (v25 << v18);
              __asm { FCVT            H0, S0 }

              v31 = &a2[4 * v21];
              *v31 = LOWORD(_S0);
              _S1 = (*(v24 + 2 * v23) << 17 >> 25 << v18);
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

  if (sub_56A8C(0xDu, 7))
  {
    v35 = sub_56AD0(0xDu);
    v36 = sub_66A18();
    v37 = sub_56B04(7);
    if (v35)
    {
      printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v36, 13, v37, "AVE_LRME_FillFSResultsBestMV", v16, v15, v14);
      v36 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v36);
  }
}

uint64_t sub_2F51C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sub_56A8C(0x2Eu, 6))
    {
      v4 = sub_56AD0(0x2Eu);
      v5 = sub_66A18();
      v6 = sub_56B04(6);
      v7 = *(a2 + 40);
      v8 = *(a2 + 2568);
      if (v4)
      {
        printf("%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p\n", v5, 46, v6, v7, *(a1 + 29280), v8);
        v9 = sub_66A18();
        v10 = sub_56B04(6);
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v9, 46, v10, *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v5, 46, v6, v7, *(a1 + 29280), v8);
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
      if (sub_56A8C(3u, 4))
      {
        v17 = sub_56AD0(3u);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped\n", v18, 3, v19, "SendOutputFrameDMV", 1579, "false");
          sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped");
      }
    }
  }

  else
  {
    v11 = 3758097084;
    if (sub_56A8C(3u, 4))
    {
      v12 = sub_56AD0(3u);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL\n", v13, 3, v14, "SendOutputFrameDMV", 1564, "pFrame != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL");
    }
  }

  sub_2A568(a1, a2, 0);
  return v11;
}

void *sub_2F7CC(uint64_t a1, const void *a2)
{
  result = sub_2F840(a1 + 16);
  if (result)
  {
    v5 = result;
    memcpy(result, a2, 0x626uLL);

    return sub_59578((a1 + 16), v5, 0);
  }

  return result;
}

uint64_t sub_2F840(uint64_t a1)
{
  v1 = *(a1 + 25320);
  if (v1)
  {
    v2 = v1 - 1;
    *(a1 + 25320) = v2;
    return *(a1 + 8 * v2 + 25192);
  }

  else
  {
    if (sub_56A8C(0xD8u, 4))
    {
      v4 = sub_56AD0(0xD8u);
      v5 = sub_66A18();
      v6 = sub_56B04(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get free spot \n", v5, 216, v6, "new_stats", 56, "free_pool_available > 0");
        v7 = sub_66A18();
        v8 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v7, 216, v8, "new_stats", 56, "free_pool_available > 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v5, 216, v6, "new_stats", 56, "free_pool_available > 0");
      }
    }

    return 0;
  }
}

uint64_t sub_2F954(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
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

  if (sub_56A8C(0x2Eu, 5))
  {
    v12 = sub_56AD0(0x2Eu);
    v13 = sub_66A18();
    v14 = sub_56B04(5);
    if (v12)
    {
      v15 = 3;
      printf("%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p\n", v13, 46, v14, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
      v13 = sub_66A18();
      v14 = sub_56B04(5);
    }

    else
    {
      v15 = 3;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p", v13, 46, v14, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
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
    if (sub_56A8C(0x2Eu, 4))
    {
      v20 = sub_56AD0(0x2Eu);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d\n", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788, a2, a3, a6, v11, v15, v16, v19);
        v23 = sub_66A18();
        v24 = sub_56B04(4);
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

uint64_t sub_2FC6C(uint64_t a1, uint64_t a2)
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
    v14 = sub_56A8C(0x2Eu, 7);
    if (v14)
    {
      v15 = sub_56AD0(0x2Eu);
      v16 = sub_66A18();
      v17 = sub_56B04(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d\n", v16, 46, v17, "DropFrame", 1824, *v10, *(a2 + 44), *(a2 + 40), *(a1 + 29112), *v13, v13[38], *(a1 + 29276));
        v18 = sub_66A18();
        v41 = sub_56B04(7);
        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", v18, 46, v41, "DropFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", v16, 46, v17, "DropFrame");
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
        if (sub_56A8C(0x2Eu, 7))
        {
          v23 = sub_56AD0(0x2Eu);
          v24 = sub_66A18();
          v25 = sub_56B04(7);
          if (v23)
          {
            printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes\n", v24, 46, v25, 0);
            v26 = sub_66A18();
            v42 = sub_56B04(7);
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v26, 46, v42, 0);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v24, 46, v25, 0);
          }
        }

        (*(a1 + 29288))(*(a1 + 29280), 0, 0, 0, *(a1 + 39468));
      }

      else if (sub_56A8C(0x2Eu, 7))
      {
        v27 = sub_56AD0(0x2Eu);
        v28 = sub_66A18();
        v29 = sub_56B04(7);
        if (v27)
        {
          printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v28, 46, v29);
          v30 = sub_66A18();
          v43 = sub_56B04(7);
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
      v22 = sub_2F954(v14, *(v3 + 12), *(a1 + 39448), v21, *(a2 + 2552), *(a2 + 40), -1000, 0);
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

    *(v9 + 3324) = sub_66A18();
    sub_DD0(*(a1 + 143696), *(a2 + 40));
    v31 = *(a2 + 3180);
    if ((v31 & 0x80000000) == 0)
    {
      if (v31 >= 0x1E)
      {
        if (sub_56A8C(0x2Eu, 4))
        {
          v33 = sub_56AD0(0x2Eu);
          v34 = sub_66A18();
          v35 = sub_56B04(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v34, 46, v35, "AVE_FrameRecv", "DropFrame", 1884, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
            v34 = sub_66A18();
            sub_56B04(4);
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

        else if (sub_56A8C(3u, 4))
        {
          v36 = sub_56AD0(3u);
          v37 = sub_66A18();
          v38 = sub_56B04(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v37, 3, v38, "DropFrame", 1886, "codedHeader != __null");
            v39 = sub_66A18();
            v44 = sub_56B04(4);
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
    if (sub_56A8C(0x2Eu, 7))
    {
      v4 = sub_56AD0(0x2Eu);
      v5 = sub_66A18();
      v6 = sub_56B04(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v5, 46, v6);
        v7 = sub_66A18();
        v40 = sub_56B04(7);
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

__CFDictionary *sub_30264(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v15 = sub_56AD0(0x2Eu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL\n", v16, 46, v17, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1911, "TemporalLevelInfoDict != __null");
        v16 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL", v16);
    }

    return 0;
  }

  v7 = Mutable;
  sub_4671C(kCMHEVCTemporalLevelInfoKey_TemporalLevel, v3, Mutable);
  sub_4671C(kCMHEVCTemporalLevelInfoKey_ProfileSpace, *a2, v7);
  v8 = sub_72538(a2[1]);
  sub_4671C(kCMHEVCTemporalLevelInfoKey_TierFlag, v8, v7);
  v9 = sub_72410(a2[2]);
  sub_4671C(kCMHEVCTemporalLevelInfoKey_ProfileIndex, v9, v7);
  v10 = CFDataCreate(0, (a1 + 137776), 4);
  if (!v10)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v18 = sub_56AD0(0x2Eu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL\n", v19, 46, v20, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1922, "cf_profileCompatibilityFlags != __null");
        v19 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL", v19);
    }

    v24 = v7;
    goto LABEL_21;
  }

  v11 = v10;
  CFDictionaryAddValue(v7, kCMHEVCTemporalLevelInfoKey_ProfileCompatibilityFlags, v10);
  v12 = CFDataCreate(0, (a1 + 137780), 6);
  if (!v12)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v21 = sub_56AD0(0x2Eu);
      v22 = sub_66A18();
      v23 = sub_56B04(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL\n", v22, 46, v23, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1929, "cf_constraintIndicatorFlags != __null");
        v22 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL", v22);
    }

    CFRelease(v7);
    v24 = v11;
LABEL_21:
    CFRelease(v24);
    return 0;
  }

  v13 = v12;
  CFDictionaryAddValue(v7, kCMHEVCTemporalLevelInfoKey_ConstraintIndicatorFlags, v12);
  v14 = sub_7265C(a2[15]);
  sub_4671C(kCMHEVCTemporalLevelInfoKey_LevelIndex, v14, v7);
  CFRelease(v11);
  CFRelease(v13);
  return v7;
}

uint64_t sub_30688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v7 = 3758097084;
      if (sub_56A8C(0x2Eu, 4))
      {
        v11 = sub_56AD0(0x2Eu);
        v12 = sub_66A18();
        v13 = sub_56B04(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v12, 46, v13, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v12 = sub_66A18();
          v13 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v12, 46, v13, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (sub_56A8C(0x2Eu, 6))
      {
        v4 = sub_56AD0(0x2Eu);
        v5 = sub_66A18();
        v6 = sub_56B04(6);
        if (v4)
        {
          printf("%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p\n", v5, 46, v6, *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
          v5 = sub_66A18();
          sub_56B04(6);
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
    if (sub_56A8C(3u, 4))
    {
      v8 = sub_56AD0(3u);
      v9 = sub_66A18();
      v10 = sub_56B04(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL\n", v9, 3, v10, "SendFrameMCTF", 1966, "pFrame != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL");
    }
  }

  return v7;
}

uint64_t sub_30970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v8 = 3758097084;
      if (sub_56A8C(0x2Eu, 4))
      {
        v12 = sub_56AD0(0x2Eu);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong plane number %d\n", v13, 46, v14, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v13 = sub_66A18();
          v14 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong plane number %d", v13, 46, v14, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (sub_56A8C(0x2Eu, 6))
      {
        v4 = sub_56AD0(0x2Eu);
        v5 = sub_66A18();
        v6 = sub_56B04(6);
        if (v4)
        {
          printf("%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p\n", v5, 46, v6, "SendFrameGGM", *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2576), *(a2 + 2568));
          v7 = sub_66A18();
          v16 = sub_56B04(6);
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
    if (sub_56A8C(0x2Eu, 4))
    {
      v9 = sub_56AD0(0x2Eu);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameters\n", v10, 46, v11, "SendFrameGGM", 1996, "psFrame != __null");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters");
    }
  }

  return v8;
}

uint64_t sub_30CB4(void *a1, uint64_t a2, void *a3, char *a4)
{
  v6 = a1 + 17958;
  v7 = a1 + 17224;
  v8 = (a1 + 4868);
  v9 = a1 + 3369;
  dataLength = 0;
  v727 = 0;
  v726 = 0;
  cf = 0;
  v10 = *(a1 + 9737);
  bzero(v722, 0x948uLL);
  if (sub_56A8C(0x2Eu, 6))
  {
    v11 = sub_56AD0(0x2Eu);
    v12 = sub_66A18();
    v13 = sub_56B04(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d\n", v12, 46, v13, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4);
      v12 = sub_66A18();
      v13 = sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d", v12, 46, v13, "AVE_FrameRecv");
  }

  if (!a2)
  {
    v713 = 3758097084;
    v712 = v9;
    if (sub_56A8C(3u, 4))
    {
      v23 = sub_56AD0(3u);
      v24 = sub_66A18();
      v25 = sub_56B04(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL\n", v24, 3, v25, "SendFrame", 2137, "Frame != __null");
      sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
    }

LABEL_24:
    v23 = 0;
LABEL_44:
    v49 = 0;
    v31 = 0;
    goto LABEL_45;
  }

  if (*(a2 + 3180) >= 0x1Eu)
  {
    v713 = 3758097084;
    v712 = v9;
    if (sub_56A8C(0x2Eu, 4))
    {
      v23 = sub_56AD0(0x2Eu);
      v26 = sub_66A18();
      v27 = sub_56B04(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v26, 46);
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v26, 46, v27, "AVE_FrameRecv", "SendFrame", 2140, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      v28 = sub_66A18();
      sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v28, 46);
    }

    goto LABEL_24;
  }

  v14 = a4;
  if (!a1[3669])
  {
    if (sub_56A8C(0x2Eu, 7))
    {
      v43 = a2;
      v44 = sub_56AD0(0x2Eu);
      v45 = sub_66A18();
      v46 = sub_56B04(7);
      if (v44)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v45, 46, v46);
        v47 = sub_66A18();
        sampleSizeArrayf = sub_56B04(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v47, 46, sampleSizeArrayf);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v45, 46, v46);
      }

      a2 = v43;
    }

    sub_DD0(v6[4], *(a2 + 40));
    sub_2A568(a1, a2, 0);
    return 0;
  }

  v693 = v10;
  v15 = *v8;
  v16 = a4 >= 0;
  v710 = a2;
  v711 = v7;
  v17 = a2;
  v700 = v8;
  v712 = v9;
  if ((*(v8 + 77) < 2u || *(a2 + 44)) && (v18 = *(v9 + 580), (v18 & 0x80000000) == 0) && v18 == *(a2 + 40) - 1 && a1[3639] && *(v9 + 542) >= 1)
  {
    if (sub_56A8C(0x2Eu, 8))
    {
      v19 = sub_56AD0(0x2Eu);
      v20 = sub_66A18();
      v21 = sub_56B04(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d\n", v20, 46, v21, "AVE_FrameRecv", "SendFrame", 2169, a1, v711[3], a1[3639], *(v9 + 542));
        v22 = sub_66A18();
        sampleSizeArraye = sub_56B04(8);
        v17 = a2;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v22, 46, sampleSizeArraye, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v20, 46, v21, "AVE_FrameRecv");
      }
    }

    if (sub_37D68(a1[3639], *(v9 + 542), 1u, v722))
    {
      if (sub_56A8C(0x2Eu, 4))
      {
        v23 = sub_56AD0(0x2Eu);
        v200 = sub_66A18();
        v201 = sub_56B04(4);
        v84 = v711;
        v202 = v711[3];
        v203 = *(v17 + 40);
        v204 = a1[3639];
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p\n", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v722);
          v205 = sub_66A18();
          v206 = sub_56B04(4);
          a2 = v17;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v205, 46, v206, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v711[3], *(v17 + 40), a1[3639], *(v9 + 542), v722);
          v23 = 0;
        }

        else
        {
          a2 = v17;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v722);
        }

        v49 = 0;
        v31 = 0;
        v713 = 0;
        goto LABEL_304;
      }

      v23 = 0;
      v49 = 0;
      v31 = 0;
      v713 = 0;
      a2 = v17;
LABEL_258:
      v7 = v711;
      goto LABEL_45;
    }

    v688 = *(v9 + 542);
    dataLength = v688;
    v23 = 1;
    v14 = a4;
  }

  else
  {
    v23 = 0;
    v688 = 0;
  }

  a2 = v17;
  v697 = v17 + 29688;
  v29 = v16 & v15;
  if (v14)
  {
    v30 = v16 & v15;
  }

  else
  {
    v30 = 0;
  }

  v705 = v23;
  v689 = v30;
  if (v30)
  {
    v31 = 0;
    v7 = v711;
  }

  else
  {
    sub_6080(v6[4], *(v17 + 40), v712[719]);
    sub_64E8(v6[4], *(v17 + 40), v712[778]);
    sub_6954(v6[4], *(v17 + 40), v712[720]);
    if ((*(a1 + 29819) & 0x80) != 0)
    {
      v48 = v712[718];
    }

    else
    {
      v48 = -1;
    }

    sub_6DC0(v6[4], *(v17 + 40), v48);
    if (*(v8 + 131) == 2)
    {
      if (v712[758] <= 1)
      {
        v82 = v712[750] >= 3 && v712[751] > 2;
      }

      else
      {
        v82 = 1;
      }

      v93 = *(v17 + 2456);
      if (v93 > 6)
      {
        v94 = 0;
      }

      else
      {
        v94 = dword_B1D50[v93];
      }

      sub_7520(v6[4], *(v17 + 40), *(a1 + 14459));
      sub_7868(v6[4], *(v17 + 40), v94, v82, *(v17 + 2464), *(v17 + 29728));
      sub_7D4C(v6[4], *(v17 + 40), *(a1 + 14459));
      v23 = v705;
    }

    sub_5D54(v6[4], *(v17 + 40));
    sub_710C(v6[4], *(v17 + 40), *(v17 + 4708), *(v17 + 4704), *(v17 + 6116), *(v17 + 4672), *(v17 + 4656), *(v17 + 4664), *(v17 + 4680), *(v17 + 4688));
    v95 = sub_87A0(v6[4], *(v17 + 40), -1);
    v31 = malloc_type_malloc(v95, 0x100004077774924uLL);
    if (sub_56A8C(0xD3u, 8))
    {
      v703 = v31;
      v96 = a3;
      v97 = sub_56AD0(0xD3u);
      v98 = sub_66A18();
      v99 = sub_56B04(8);
      if (v97)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer\n", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v711[3], v95);
        v98 = sub_66A18();
        v99 = sub_56B04(8);
        v23 = v705;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v711[3], v95);
      a3 = v96;
      a2 = v710;
      v31 = v703;
    }

    v7 = v711;
    if (!v31)
    {
      if (!sub_56A8C(3u, 4))
      {
        v49 = 0;
        v31 = 0;
        v713 = 3758097085;
        goto LABEL_45;
      }

      v707 = a3;
      v106 = sub_56AD0(3u);
      v107 = sub_66A18();
      v108 = sub_56B04(4);
      if (v106)
      {
        v109 = v95;
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d\n", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
        v110 = sub_66A18();
        v111 = sub_56B04(4);
        a2 = v710;
        v7 = v711;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v110, 3, v111, "SendFrame", 2258, "pSEIBuffer != __null", *(v710 + 40), v109);
        v49 = 0;
        v31 = 0;
        v713 = 3758097085;
LABEL_121:
        a3 = v707;
        v23 = v705;
        goto LABEL_45;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
      v49 = 0;
      v31 = 0;
      v713 = 3758097085;
      v23 = v705;
      goto LABEL_258;
    }

    v713 = sub_2B26C(a1, a2, v31, v95, v29, a4);
    if (v713)
    {
      if (!sub_56A8C(3u, 4))
      {
        v49 = 0;
        goto LABEL_45;
      }

      v100 = v711;
      v699 = v6;
      v101 = sub_56AD0(3u);
      v102 = sub_66A18();
      v103 = sub_56B04(4);
      if (v101)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d\n", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v713);
        v104 = sub_66A18();
        v105 = sub_56B04(4);
        v7 = v711;
        v23 = v705;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v104, 3, v105, "SendFrame", 2264, "err == 0", *(a2 + 40), v713);
        v49 = 0;
LABEL_228:
        v6 = v699;
        goto LABEL_45;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v713);
      v49 = 0;
LABEL_128:
      v6 = v699;
      goto LABEL_313;
    }

    if (sub_56A8C(0x2Eu, 7))
    {
      v112 = sub_56AD0(0x2Eu);
      v113 = sub_66A18();
      v114 = sub_56B04(7);
      v115 = *(v711 + 8);
      if (v112)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer\n", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v711[3], v115);
        v116 = sub_66A18();
        v117 = sub_56B04(7);
        v7 = v711;
        v23 = v705;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v116, 46, v117, "AVE_FrameRecv", "SendFrame", 2267, a1, v711[3], *(v711 + 8));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v711[3], v115);
        v7 = v711;
      }
    }

    v133 = *(v7 + 8);
    if (v133 >= 1)
    {
      if (sub_37D68(v31, v133, 2u, v722))
      {
        if (sub_56A8C(0x2Eu, 4))
        {
          v706 = a3;
          v134 = v7;
          v135 = sub_56AD0(0x2Eu);
          v136 = sub_66A18();
          v137 = sub_56B04(4);
          v138 = v134[3];
          v139 = *(a2 + 40);
          if (!v135)
          {
            v100 = v134;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p", v136, 46, v137, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v138, v139, v31, *(v134 + 8), v722);
            v49 = 0;
            v713 = 0;
            goto LABEL_313;
          }

          v676 = *(v134 + 8);
          v89 = v6;
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p\n", v136, 46, v137, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v138, v139, v31, v676, v722);
          v90 = sub_66A18();
          v140 = sub_56B04(4);
          v675 = *(v711 + 8);
          v679 = v722;
          v670 = *(a2 + 40);
          v673 = v31;
          v663 = a1;
          v666 = v711[3];
          v653 = 2275;
          v658 = "ret == 0";
          v23 = v705;
          v7 = v711;
          sampleSizeArray = v140;
          v92 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p";
LABEL_147:
          v6 = v89;
          syslog(3, v92, v90, 46, sampleSizeArray, "AVE_FrameRecv", "SendFrame", v653, v658, v663, v666, v670, v673, v675, v679);
LABEL_159:
          v49 = 0;
LABEL_160:
          v713 = 0;
LABEL_161:
          a3 = v706;
          goto LABEL_45;
        }

LABEL_148:
        v49 = 0;
        goto LABEL_149;
      }

      dataLength += *(v7 + 8);
    }

    v14 = a4;
  }

  allocator = v16 & v15;
  if ((v29 & 1) == 0)
  {
    v702 = v31;
    if (v712[270] >= 1)
    {
      v59 = 0;
      v60 = 0;
      memoryBlock = a1 + 7137;
      v61 = (a1 + 3503);
      v707 = a3;
      v698 = v6;
      while (1)
      {
        v62 = v61[6];
        if (v62 >= 1)
        {
          v63 = a1[*(a2 + 3180) + 3444];
          if (!v63)
          {
            if (!sub_56A8C(0x2Eu, 4))
            {
              goto LABEL_140;
            }

            v118 = sub_56AD0(0x2Eu);
            v119 = sub_66A18();
            v120 = sub_56B04(4);
            v100 = v711;
            v121 = v711[3];
            v31 = v702;
            if (v118)
            {
              v7 = v711;
              printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
              v122 = sub_66A18();
              v123 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v122, 46, v123, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v711[3], *(a2 + 3180), v60);
              v49 = 0;
              v713 = 0;
              goto LABEL_121;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
            v49 = 0;
            v713 = 0;
            a3 = v707;
LABEL_312:
            v23 = v705;
LABEL_313:
            v7 = v100;
            goto LABEL_45;
          }

          v64 = v61;
          v65 = a2;
          if (sub_56A8C(0x2Eu, 8))
          {
            v66 = sub_56AD0(0x2Eu);
            v67 = sub_66A18();
            v68 = sub_56B04(8);
            v69 = v711[3];
            if (v66)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
              v70 = sub_66A18();
              v71 = sub_56B04(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v70, 46, v71, "AVE_FrameRecv", "SendFrame", 2355, a1, v711[3], v60, (v63 + v59), v62);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
            }

            v65 = v710;
            v6 = v698;
          }

          if (sub_37D68((v63 + v59), v62, 3u, v722))
          {
            a2 = v65;
            if (sub_56A8C(0x2Eu, 4))
            {
              v124 = (v63 + v59);
              v125 = sub_56AD0(0x2Eu);
              v126 = sub_66A18();
              v127 = sub_56B04(4);
              v7 = v711;
              if (v125)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0", a1, v711[3], *(v65 + 40), v124, v62, v722);
                v126 = sub_66A18();
                v127 = sub_56B04(4);
                v7 = v711;
                a2 = v65;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0");
LABEL_315:
              v49 = 0;
              v713 = 0;
              a3 = v707;
LABEL_437:
              v23 = v705;
LABEL_438:
              v31 = v702;
              goto LABEL_45;
            }

LABEL_140:
            v49 = 0;
            v713 = 0;
            a3 = v707;
            v7 = v711;
            goto LABEL_437;
          }

          dataLength += v62;
          a2 = v65;
          v61 = v64;
        }

        v72 = v61[4];
        if (v72 < 1)
        {
          a3 = v707;
          v7 = v711;
        }

        else
        {
          v73 = a1[*(a2 + 3180) + 3309];
          if (!v73)
          {
            if (sub_56A8C(0x2Eu, 4))
            {
              v128 = sub_56AD0(0x2Eu);
              v129 = sub_66A18();
              v130 = sub_56B04(4);
              v7 = v711;
              v31 = v702;
              if (v128)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v129, 46, v130, "AVE_FrameRecv", "SendFrame", 2375, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v711[3], *(a2 + 3180), v60);
                v131 = sub_66A18();
                v132 = sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v131, 46, v132, "AVE_FrameRecv");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v129, 46, v130, "AVE_FrameRecv");
              }

              v49 = 0;
              v713 = 0;
              a3 = v707;
              v23 = v705;
              goto LABEL_45;
            }

            goto LABEL_140;
          }

          v74 = (v73 + v61[3]);
          if (sub_56A8C(0x2Eu, 8))
          {
            v75 = v61;
            v76 = sub_56AD0(0x2Eu);
            v77 = sub_66A18();
            v78 = sub_56B04(8);
            v79 = v711[3];
            if (v76)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
              v80 = sub_66A18();
              v81 = sub_56B04(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v80, 46, v81, "AVE_FrameRecv", "SendFrame", 2377, a1, v711[3], v60, v74, v72);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
            }

            a2 = v710;
            v61 = v75;
          }

          if (sub_37D68(v74, v72, 3u, v722))
          {
            v141 = v711;
            if (sub_56A8C(0x2Eu, 4))
            {
              v142 = sub_56AD0(0x2Eu);
              v143 = sub_66A18();
              v144 = sub_56B04(4);
              v145 = v711[3];
              v146 = *(a2 + 40);
              if (v142)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v722);
                v147 = sub_66A18();
                v148 = sub_56B04(4);
                v677 = v72;
                v680 = v722;
                v671 = *(a2 + 40);
                v674 = v74;
                v664 = a1;
                v667 = v711[3];
                v7 = v711;
                v654 = 2383;
                sampleSizeArraya = v148;
                v149 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p";
                goto LABEL_256;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v722);
            }

            v49 = 0;
            v713 = 0;
            a3 = v707;
            v23 = v705;
            v31 = v702;
            goto LABEL_320;
          }

          v7 = v711;
          if ((*(a2 + 9) & 1) != 0 && sub_652E4(dataLength, v72, memoryBlock))
          {
            if (!sub_56A8C(0x2Eu, 4))
            {
              goto LABEL_315;
            }

            v252 = sub_56AD0(0x2Eu);
            v253 = sub_66A18();
            v254 = sub_56B04(4);
            if (!v252)
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0");
              goto LABEL_315;
            }

            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0", a1, v711[3], *(a2 + 40), v60, dataLength, v72, memoryBlock);
            v147 = sub_66A18();
            v255 = sub_56B04(4);
            v680 = v72;
            v682 = a1 + 28548;
            v674 = v60;
            v677 = dataLength;
            v667 = v711[3];
            v671 = *(a2 + 40);
            v664 = a1;
            v6 = v698;
            v654 = 2391;
            v149 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p";
            sampleSizeArraya = v255;
LABEL_256:
            syslog(3, v149, v147, 46, sampleSizeArraya, "AVE_FrameRecv", "SendFrame", v654, "ret == 0", v664, v667, v671, v674, v677, v680, v682);
            goto LABEL_315;
          }

          dataLength += v72;
          LODWORD(v72) = v61[4];
          a3 = v707;
        }

        ++v60;
        v61 += 4;
        v59 += 1024;
        if (v60 >= v712[270])
        {
          goto LABEL_169;
        }
      }
    }

    LODWORD(v72) = 0;
    v61 = 0;
LABEL_169:
    v23 = v705;
    if (!dataLength)
    {
      goto LABEL_248;
    }

    goto LABEL_170;
  }

  v32 = &a1[2 * v14 + 3504] + 1;
  v33 = v32[3];
  if (v33 >= 1)
  {
    v34 = a1[*(a2 + 3180) + 3444];
    if (v34)
    {
      v706 = a3;
      v35 = (v34 + (v14 << 10));
      if (sub_56A8C(0x2Eu, 8))
      {
        v701 = v31;
        v36 = sub_56AD0(0x2Eu);
        v37 = v7;
        v38 = sub_66A18();
        v39 = sub_56B04(8);
        if (v36)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendFrame", 2297, a1, v37[3], a4, v35, v33);
          v40 = v35;
          v41 = sub_66A18();
          v42 = sub_56B04(8);
          v23 = v705;
          blockBufferOut = v41;
          v35 = v40;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", blockBufferOut, 46, v42, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v38, 46, v39, "AVE_FrameRecv", "SendFrame");
        }

        v7 = v37;
        a2 = v710;
        v31 = v701;
      }

      if (sub_37D68(v35, v33, 3u, v722))
      {
        if (sub_56A8C(0x2Eu, 4))
        {
          v699 = v6;
          v150 = sub_56AD0(0x2Eu);
          v151 = sub_66A18();
          v152 = sub_56B04(4);
          if (v150)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0", a1, v7[3], *(a2 + 40), v35, v33, v722);
            v153 = sub_66A18();
            sampleSizeArrayh = sub_56B04(4);
            v23 = v705;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v153, 46, sampleSizeArrayh, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          }

          v49 = 0;
          v713 = 0;
          a3 = v706;
          goto LABEL_228;
        }

        goto LABEL_159;
      }

      dataLength += v33;
      goto LABEL_163;
    }

    if (sub_56A8C(0x2Eu, 4))
    {
      v706 = a3;
      v84 = v7;
      v85 = sub_56AD0(0x2Eu);
      v86 = sub_66A18();
      v87 = sub_56B04(4);
      v88 = v84[3];
      if (!v85)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v86, 46, v87, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v88, *(a2 + 3180), a4);
        v49 = 0;
        v713 = 0;
LABEL_304:
        v7 = v84;
        goto LABEL_45;
      }

      v7 = v84;
      v89 = v6;
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v86, 46, v87, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v88, *(a2 + 3180), a4);
      v90 = sub_66A18();
      v91 = sub_56B04(4);
      v670 = *(a2 + 3180);
      v673 = a4;
      v663 = a1;
      v666 = v84[3];
      v653 = 2295;
      v658 = "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null";
      v23 = v705;
      sampleSizeArray = v91;
      v92 = "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d";
      goto LABEL_147;
    }

    goto LABEL_148;
  }

LABEL_163:
  v702 = v31;
  v154 = v32 + 1;
  v72 = v32[1];
  if (v72 < 1)
  {
    v61 = v32 + 1;
    goto LABEL_169;
  }

  v155 = a1[*(a2 + 3180) + 3309];
  if (!v155)
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v195 = v23;
      v84 = v7;
      v196 = sub_56AD0(0x2Eu);
      v197 = sub_66A18();
      v198 = sub_56B04(4);
      if (v196)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v197, 46, v198, "AVE_FrameRecv", "SendFrame", 2315, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v84[3], *(a2 + 3180), a4);
        v199 = sub_66A18();
        v195 = v705;
        sampleSizeArrayj = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v199, 46, sampleSizeArrayj, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v197, 46, v198, "AVE_FrameRecv");
      }

      v49 = 0;
      v713 = 0;
      v31 = v702;
      v23 = v195;
      goto LABEL_304;
    }

    goto LABEL_322;
  }

  v156 = (v155 + *v32);
  v61 = v32 + 1;
  if (sub_56A8C(0x2Eu, 8))
  {
    v708 = a3;
    v157 = v7;
    v158 = sub_56AD0(0x2Eu);
    v159 = sub_66A18();
    v160 = sub_56B04(8);
    if (v158)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v159, 46, v160, "AVE_FrameRecv", "SendFrame", 2317, a1, v157[3], a4, v156, v72);
      v161 = sub_66A18();
      v61 = v154;
      sampleSizeArrayi = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v161, 46, sampleSizeArrayi, "AVE_FrameRecv", "SendFrame");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v159, 46, v160, "AVE_FrameRecv", "SendFrame");
    }

    a3 = v708;
    a2 = v710;
    v7 = v157;
    v23 = v705;
  }

  if (sub_37D68(v156, v72, 3u, v722))
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v699 = v6;
      v237 = sub_56AD0(0x2Eu);
      v238 = sub_66A18();
      v239 = sub_56B04(4);
      v240 = v7[3];
      v241 = *(a2 + 40);
      if (!v237)
      {
        v100 = v7;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v238, 46, v239, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v240, v241, v156, v72, v722);
        v49 = 0;
        v713 = 0;
        v6 = v699;
        v31 = v702;
        goto LABEL_312;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v238, 46, v239, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v240, v241, v156, v72, v722);
      v242 = sub_66A18();
      v243 = sub_56B04(4);
      v23 = v705;
      a2 = v710;
      blockBufferOuta = v242;
      v7 = v711;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", blockBufferOuta, 46, v243, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v711[3], *(v710 + 40), v156, v72, v722);
      v49 = 0;
      v713 = 0;
      goto LABEL_396;
    }

    goto LABEL_322;
  }

  if ((*(a2 + 9) & 1) != 0 && sub_652E4(dataLength, v72, a1 + 7137))
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v699 = v6;
      v244 = sub_56AD0(0x2Eu);
      v245 = sub_66A18();
      v246 = sub_56B04(4);
      if (v244)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0", a1, v7[3], *(a2 + 40), a4, dataLength, v72, a1 + 28548);
        v247 = sub_66A18();
        sampleSizeArrayl = sub_56B04(4);
        blockBufferOutb = v247;
        a2 = v710;
        v7 = v711;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", blockBufferOutb, 46, sampleSizeArrayl, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      v49 = 0;
      v713 = 0;
      goto LABEL_436;
    }

LABEL_322:
    v49 = 0;
LABEL_323:
    v713 = 0;
    goto LABEL_438;
  }

  dataLength += v72;
  LODWORD(v72) = *v61;
  if (!dataLength)
  {
LABEL_248:
    v713 = 3758097084;
    if (sub_56A8C(0x2Eu, 4))
    {
      v248 = sub_56AD0(0x2Eu);
      v249 = sub_66A18();
      v250 = sub_56B04(4);
      if (v248)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size\n", v249, 46, v250, "AVE_FrameRecv", "SendFrame", 2402, "totalSize != 0", a1, v7[3], *(a2 + 40));
        v251 = sub_66A18();
        v23 = v705;
        sampleSizeArraym = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v251, 46, sampleSizeArraym, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v249, 46, v250, "AVE_FrameRecv");
      }
    }

    v49 = 0;
    goto LABEL_438;
  }

LABEL_170:
  if (v693 - 1 == a4)
  {
    v162 = 0;
  }

  else
  {
    v162 = allocator;
  }

  if (v162)
  {
    v683 = v162;
    v706 = a3;
    v49 = 0;
    goto LABEL_175;
  }

  v188 = v712[532];
  if (!v188)
  {
    v683 = v162;
    v49 = 0;
    goto LABEL_202;
  }

  if (-1431655765 * v188 >= 0x55555556)
  {
    if (!sub_56A8C(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v189 = sub_56AD0(0x2Eu);
    v190 = sub_66A18();
    v191 = sub_56B04(4);
    if (!v189)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d", v190, 46, v191, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d\n", v190, 46, v191, "AVE_FrameRecv", "SendFrame", 2412, "m_numCABACzeroWordToBeInserted % 3 == 0", a1, v7[3], *(a2 + 40), v712[532]);
    v192 = sub_66A18();
    v193 = sub_56B04(4);
    v669 = *(a2 + 40);
    v672 = v712[532];
    v665 = a1;
    v668 = v7[3];
    v655 = 2412;
    v659 = "m_numCABACzeroWordToBeInserted % 3 == 0";
    v23 = v705;
    sampleSizeArrayb = v193;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d";
LABEL_188:
    syslog(3, v194, v192, 46, sampleSizeArrayb, "AVE_FrameRecv", "SendFrame", v655, v659, v665, v668, v669, v672);
    goto LABEL_322;
  }

  if (!v61)
  {
    if (!sub_56A8C(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v297 = sub_56AD0(0x2Eu);
    v298 = sub_66A18();
    v299 = sub_56B04(4);
    if (!v297)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld", v298, 46, v299);
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld\n", v298, 46, v299, "AVE_FrameRecv", "SendFrame", 2414, "piLastOutputSliceSize != __null", a1, v7[3]);
    v192 = sub_66A18();
    v300 = sub_56B04(4);
    v665 = a1;
    v668 = v7[3];
    v655 = 2414;
    v659 = "piLastOutputSliceSize != __null";
    v23 = v705;
    sampleSizeArrayb = v300;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld";
    goto LABEL_188;
  }

  v683 = v162;
  if (sub_56A8C(0x2Eu, 8))
  {
    v692 = v61;
    v233 = sub_56AD0(0x2Eu);
    v234 = sub_66A18();
    v235 = sub_56B04(8);
    if (v233)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld\n", v234, 46, v235, "AVE_FrameRecv", "SendFrame", 2417, a1, v7[3], v712[532], dataLength);
      v236 = sub_66A18();
      sampleSizeArrayk = sub_56B04(8);
      v23 = v705;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v236, 46, sampleSizeArrayk, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v234, 46, v235, "AVE_FrameRecv");
    }

    v61 = v692;
  }

  v338 = malloc_type_malloc(v712[532], 0x100004077774924uLL);
  if (!v338)
  {
    if (!sub_56A8C(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v342 = sub_56AD0(0x2Eu);
    v343 = sub_66A18();
    v344 = sub_56B04(4);
    if (!v342)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d", v343, 46, v344, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d\n", v343, 46, v344, "AVE_FrameRecv", "SendFrame", 2423, "piCABACZeroWordInsertBuf != __null", a1, v7[3], *(a2 + 3180), v712[532]);
    v192 = sub_66A18();
    v345 = sub_56B04(4);
    v669 = *(a2 + 3180);
    v672 = v712[532];
    v665 = a1;
    v668 = v7[3];
    v655 = 2423;
    v659 = "piCABACZeroWordInsertBuf != __null";
    v23 = v705;
    sampleSizeArrayb = v345;
    v194 = "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d";
    goto LABEL_188;
  }

  v49 = v338;
  if (v712[532])
  {
    v339 = 0;
    v340 = v338 + 2;
    do
    {
      *(v340 - 1) = 0;
      *v340 = 3;
      v340 += 3;
      v339 += 3;
      v341 = v712[532];
    }

    while (v339 < v341);
  }

  else
  {
    LODWORD(v341) = 0;
  }

  if (sub_37D68(v338, v341, 4u, v722))
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v346 = v23;
      v347 = sub_56AD0(0x2Eu);
      v348 = a2;
      v349 = sub_66A18();
      v350 = sub_56B04(4);
      v351 = v7[3];
      v352 = *(v348 + 40);
      if (!v347)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v349, 46, v350, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v351, v352, v49, v712[532], v722);
        v713 = 0;
        v31 = v702;
        a2 = v348;
        v23 = v346;
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p\n", v349, 46, v350, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v351, v352, v49, v712[532], v722);
      v353 = sub_66A18();
      v354 = sub_56B04(4);
      v23 = v705;
      a2 = v710;
      v7 = v711;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v353, 46, v354, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v711[3], *(v710 + 40), v49, v712[532], v722);
      v713 = 0;
      goto LABEL_438;
    }

    goto LABEL_323;
  }

  v355 = v61;
  v356 = v7;
  v357 = v712;
  dataLength += v712[532];
  if (sub_56A8C(0x2Eu, 8))
  {
    v358 = sub_56AD0(0x2Eu);
    v359 = sub_66A18();
    v360 = sub_56B04(8);
    v361 = *v355;
    if (v358)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes\n", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v362 = sub_66A18();
      v363 = sub_56B04(8);
      v23 = v705;
      v357 = v712;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v362, 46, v363, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], *v355);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v357 = v712;
    }
  }

  LODWORD(v72) = v357[532] + v72;
  if (sub_56A8C(0x2Eu, 8))
  {
    v408 = sub_56AD0(0x2Eu);
    v409 = sub_66A18();
    v410 = sub_56B04(8);
    v411 = v356[3];
    v412 = *v355;
    if (v408)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes\n", v409, 46, v410, "AVE_FrameRecv", "SendFrame", 2444, a1, v411, v412);
      v413 = sub_66A18();
      v414 = sub_56B04(8);
      v23 = v705;
      blockBufferOutc = v413;
      v61 = v355;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", blockBufferOutc, 46, v414, "AVE_FrameRecv", "SendFrame", 2444, a1, v711[3], *v355);
      a2 = v710;
      goto LABEL_202;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", v409, 46, v410, "AVE_FrameRecv", "SendFrame", 2444, a1, v411, v412);
    a2 = v710;
  }

  else
  {
    a2 = v710;
  }

  v61 = v355;
LABEL_202:
  v706 = a3;
  if (*(v700 + 77) >= 2u && !*(a2 + 44))
  {
LABEL_175:
    v690 = v61;
    if (v700[682] != 1)
    {
      goto LABEL_179;
    }

    v163 = v689;
    if (*(v700 + 299) < 1)
    {
      v163 = 1;
    }

    if (v163)
    {
      goto LABEL_179;
    }

    if (sub_56A8C(0x2Eu, 7))
    {
      v228 = sub_56AD0(0x2Eu);
      v229 = sub_66A18();
      v230 = sub_56B04(7);
      if (v228)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d\n", v229, 46, v230, "AVE_FrameRecv", "SendFrame", 2505, a1, v711[3], *(v710 + 40), a1 + 39627, *(v700 + 299));
        v231 = sub_66A18();
        v232 = sub_56B04(7);
        v23 = v705;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v231, 46, v232, "AVE_FrameRecv", "SendFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v229, 46, v230, "AVE_FrameRecv", "SendFrame");
      }
    }

    v301 = a1 + 39627;
    if (sub_37D68(a1 + 39627, *(v700 + 299), 6u, v722))
    {
      if (sub_56A8C(0x2Eu, 4))
      {
        v302 = sub_56AD0(0x2Eu);
        v303 = sub_66A18();
        v304 = sub_56B04(4);
        v305 = v711[3];
        v306 = *(v710 + 40);
        if (!v302)
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v303, 46, v304, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v305, v306, v301, *(v700 + 299), v722);
          v713 = 0;
          a3 = v706;
          v7 = v711;
          a2 = v710;
          v31 = v702;
          goto LABEL_45;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p\n", v303, 46, v304, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v305, v306, v301, *(v700 + 299), v722);
        v307 = sub_66A18();
        v308 = sub_56B04(4);
        v23 = v705;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v307, 46, v308, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v711[3], *(v710 + 40), v301, *(v700 + 299), v722);
        v713 = 0;
        a3 = v706;
        v7 = v711;
        a2 = v710;
        goto LABEL_438;
      }
    }

    else
    {
      dataLength += *(v700 + 299);
      if ((*(v710 + 9) & 1) == 0)
      {
        goto LABEL_179;
      }

      if (sub_56A8C(0x2Eu, 7))
      {
        v309 = sub_56AD0(0x2Eu);
        v310 = sub_66A18();
        v311 = sub_56B04(7);
        v312 = v711[3];
        v313 = *(v710 + 40);
        v314 = *(v700 + 299);
        if (v309)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d\n", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v315 = sub_66A18();
          v316 = sub_56B04(7);
          v23 = v705;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v315, 46, v316, "AVE_FrameRecv", "SendFrame", 2519, a1, v711[3], *(v710 + 40), v301, dataLength, *(v700 + 299));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v23 = v705;
        }
      }

      v396 = a1 + 28548;
      if (!sub_652E4(dataLength, 0, a1 + 7137))
      {
LABEL_179:
        v699 = v6;
        v164 = dataLength;
        v165 = v712[542];
        a2 = v710;
        sub_657C8(a1 + 7137, 46, 8, 0, *(v710 + 40));
        v166 = a1 + 3384;
        v167 = a1[*(v710 + 3180) + 3384];
        if (v167)
        {
          v694 = (v710 + 40);
          v168 = v164 - v165;
          v169 = v167 + 45320;
          v170 = &a1[9 * *(v710 + 44) + 3641];
          *v170 = *v169;
          v171 = *(v169 + 16);
          v172 = *(v169 + 32);
          v173 = *(v169 + 48);
          v170[8] = *(v169 + 64);
          *(v170 + 2) = v172;
          *(v170 + 3) = v173;
          *(v170 + 1) = v171;
          v7 = v711;
          if (sub_56A8C(0x2Eu, 7))
          {
            v174 = v168;
            v175 = sub_56AD0(0x2Eu);
            v176 = sub_66A18();
            v177 = sub_56B04(7);
            v178 = v711[3];
            v179 = *(v700 + 77);
            v181 = *(v710 + 40);
            v180 = *(v710 + 44);
            v182 = a1[3639];
            v183 = v712[542];
            v184 = v712[580];
            v185 = *(v712 + 2324);
            if (v175)
            {
              v168 = v174;
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld\n", v176, 46, v177, "AVE_FrameRecv", "SendFrame", 2540, a1, v178, v179, v180, v181, v182, v183, v184, v185, v174, dataLength);
              v186 = sub_66A18();
              v187 = sub_56B04(7);
              v23 = v705;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v186, 46, v187, "AVE_FrameRecv", "SendFrame", 2540, a1, v711[3], *(v700 + 77), *(v710 + 44), *(v710 + 40), a1[3639], v712[542], v712[580], *(v712 + 2324), v174, dataLength);
              a2 = v710;
              v7 = v711;
            }

            else
            {
              v168 = v174;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v176, 46, v177, "AVE_FrameRecv", "SendFrame", 2540, a1, v178, v179, v180, v181, v182, v183, v184, v185, v174, dataLength);
              a2 = v710;
              v7 = v711;
              v23 = v705;
            }

            v166 = a1 + 3384;
          }

          a3 = v706;
          if (*(v700 + 77) < 2u || *(a2 + 44))
          {
            v256 = sub_2CED0(a1, dataLength, &cf, *(a2 + 2552));
            v257 = v256;
            v712[580] = -1;
            v258 = *(v700 + 77);
            if (v258 <= 1)
            {
              *(v712 + 2324) = 0;
            }

            if (v256)
            {
              goto LABEL_267;
            }

            if (sub_56A8C(3u, 4))
            {
              v266 = v168;
              v267 = sub_56AD0(3u);
              v268 = sub_66A18();
              v269 = sub_56B04(4);
              if (v267)
              {
                printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld\n", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v694, v266);
                v270 = sub_66A18();
                v271 = sub_56B04(4);
                v23 = v705;
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v270, 3, v271, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v694, v266);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v694, v266);
              }

              v272 = 3758097085;
            }

            else
            {
              v272 = 3758097085;
            }

LABEL_395:
            v713 = v272;
            goto LABEL_396;
          }

          v287 = *v712;
          if (v168 > v287)
          {
            if (sub_56A8C(0x2Eu, 4))
            {
              v288 = v168;
              v289 = sub_56AD0(0x2Eu);
              v290 = sub_66A18();
              v291 = sub_56B04(4);
              v292 = v7[3];
              v293 = *(v700 + 77);
              v294 = *(a2 + 44);
              if (!v289)
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v290, 46, v291, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v292, v293, v294, *v712, v288);
                v713 = 4294954394;
                v6 = v699;
                v31 = v702;
                goto LABEL_161;
              }

              printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld\n", v290, 46, v291, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v292, v293, v294, *v712, v288);
              v295 = sub_66A18();
              v296 = sub_56B04(4);
              v23 = v705;
              a3 = v706;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v295, 46, v296, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v7[3], *(v700 + 77), *(a2 + 44), *v712, v288);
              v713 = 4294954394;
LABEL_396:
              v6 = v699;
              goto LABEL_438;
            }

            v272 = 4294954394;
            goto LABEL_395;
          }

          v257 = a1[3639];
          if (v257 || (v257 = malloc_type_malloc(v287, 0x100004077774924uLL), (a1[3639] = v257) != 0))
          {
            v712[542] = v168;
            v712[580] = *(a2 + 40);
            v318 = *(a2 + 2456) == 3 || *(v697 + 40) == 21;
            *(v712 + 2324) = v318;
            v258 = *(v700 + 77);
LABEL_267:
            v715 = v168;
            v259 = v706;
            if (v258 >= 2)
            {
              *(v712 + 2325) = 0;
            }

            v260 = sub_2B9C0(a1, v722, dataLength, v257);
            if (v260)
            {
              v261 = v260;
              if (sub_56A8C(0x2Eu, 4))
              {
                v262 = sub_56AD0(0x2Eu);
                v263 = sub_66A18();
                v264 = sub_56B04(4);
                if (v262)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d\n", v263, 46, v264, "AVE_FrameRecv", "SendFrame", 2589, "ret == 0", v722, dataLength, v257, v261);
                  v265 = sub_66A18();
                  v23 = v705;
                  sampleSizeArrayn = sub_56B04(4);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v265, 46, sampleSizeArrayn, "AVE_FrameRecv", "SendFrame");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v263, 46, v264, "AVE_FrameRecv", "SendFrame");
                }

                v713 = 0;
                a2 = v710;
                a3 = v706;
                goto LABEL_351;
              }

              v713 = 0;
              a2 = v710;
              v7 = v711;
              v6 = v699;
              v31 = v702;
LABEL_310:
              a3 = v706;
              goto LABEL_45;
            }

            if (v690)
            {
              *v690 = v72;
            }

            if ((v683 & 1) == 0 && (*(v700 + 77) < 2u || *(v710 + 44)))
            {
              v273 = 0;
              v274 = 1;
              do
              {
                v275 = v274;
                v276 = a1 + 12 * v273 + 29084;
                if (*(v276 + 2) >= 1)
                {
                  *(v276 + 2) = 0;
                  *v276 = 0;
                }

                v274 = 0;
                v273 = 1;
              }

              while ((v275 & 1) != 0);
            }

            if (*v711)
            {
              v277 = v710;
              v278 = v166[*(v710 + 3180)];
              if (!v278)
              {
                v141 = v711;
                if (sub_56A8C(3u, 4))
                {
                  v367 = sub_56AD0(3u);
                  v368 = sub_66A18();
                  v369 = sub_56B04(4);
                  v31 = v702;
                  if (v367)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v368, 3, v369, "SendFrame", 2616, "codedHeader != __null");
                    v370 = sub_66A18();
                    sampleSizeArrayo = sub_56B04(4);
                    v23 = v705;
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v370, 3, sampleSizeArrayo, "SendFrame", 2616, "codedHeader != __null");
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v368, 3, v369, "SendFrame", 2616, "codedHeader != __null");
                  }

                  v713 = 0;
                  a3 = v706;
                  v6 = v699;
                  goto LABEL_462;
                }

                v713 = 0;
                v6 = v699;
                v31 = v702;
                a2 = v710;
                v7 = v711;
                goto LABEL_310;
              }

              *(v711 + 8) = 0;
              v279 = *(v710 + 4560);
              *(v278 + 2000) = *(v710 + 4576);
              *(v278 + 1984) = v279;
              if (!*(v710 + 20))
              {
                v382 = sub_2F7CC(a1, (v278 + 1980));
                if (v382)
                {
                  v383 = v382;
                  memcpy((v710 + 31438), v382, 0x626uLL);
                  *(v711 + 8) = 1;
                  v384 = sub_1D4C0(*(v700 + 220), 4u, *(v710 + 20));
                  if (v384)
                  {
                    v385 = v384;
                    fseeko(v384, 1574 * v383[11] + 264, 0);
                    fwrite(v383, 1uLL, 0x626uLL, v385);
                  }
                }

                else if (sub_56A8C(0xD8u, 6))
                {
                  v419 = sub_56AD0(0xD8u);
                  v420 = sub_66A18();
                  v421 = sub_56B04(6);
                  v422 = *v694;
                  if (v419)
                  {
                    printf("%lld %d AVE %s:   F %d pMpStats NULL \n", v420, 216, v421, v422);
                    v423 = sub_66A18();
                    sampleSizeArrays = sub_56B04(6);
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v423, 216, sampleSizeArrays, *v694);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v420, 216, v421, v422);
                  }

                  v259 = v706;
                  v23 = v705;
                }
              }
            }

            memoryBlocka = v257;
            a2 = v710;
            if ((v683 & 1) == 0)
            {
              if (allocator)
              {
                v280 = a4;
              }

              else
              {
                v280 = 0;
              }

              sub_2A568(a1, v710, v280);
            }

            v7 = v711;
            v6 = v699;
            v281 = v700;
            if (v702)
            {
              free(v702);
            }

            v282 = vshr_n_u32(vadd_s32(a1[3767], 0xF0000000FLL), 4uLL);
            sub_1EE88(*(v700 + 220), *(v710 + 24), a1[*(v710 + 3180) + 3224], 432 * v282.i32[0] * v282.i32[1]);
            v283 = *(v710 + 23720);
            if (v283)
            {
              sub_1FC4C(*(v700 + 220), v283);
            }

            a3 = v259;
            if (*(v700 + 77) >= 2u && *(v710 + 44))
            {
              v284 = &a1[2 * *(v710 + 40) + 17446];
              v285 = HIDWORD(a1[2 * *(v710 + 40) + 17446]);
              v286 = v715;
              *v284 += 8 * v715;
              v284[1] = *(v710 + 4608);
              *(v284 + 1) = v285 + *(v697 + 44);
            }

            else
            {
              v286 = v715;
              v317 = &a1[2 * *(v710 + 40) + 17446];
              *v317 = 8 * v715;
              v317[1] = *(v710 + 4608);
              *(v317 + 1) = *(v697 + 44);
            }

            sub_1EA8C(*(v700 + 220), *(v710 + 24), &memoryBlocka[v688], v286);
            *(v697 + 3376) = sub_66A18();
            if (a1[3669] != 1)
            {
              if (allocator)
              {
                v713 = 0;
LABEL_542:
                v31 = 0;
                *(v697 + 3368) = sub_66A18();
                goto LABEL_45;
              }

              v704 = a1 + 3224;
              v364 = v711;
              sampleBufferOut = 0;
              v365 = memoryBlocka;
              if ((v700[508] & 1) == 0)
              {
                LODWORD(v405) = v722[0];
                if (v722[0] >= 1)
                {
                  v685 = v49;
                  v709 = a3;
                  v406 = v724;
                  v407 = v722[0];
                  while (*(v406 - 6) != 3)
                  {
                    v406 += 4;
                    if (!--v407)
                    {
                      goto LABEL_483;
                    }
                  }

                  v426 = *v406;
                  if (*v406)
                  {
                    v427 = v712 + 274;
                    v428 = 32;
                    while (1)
                    {
                      v429 = *v427 + *(v427 - 2);
                      if (!v429)
                      {
LABEL_482:
                        LODWORD(v405) = v722[0];
                        goto LABEL_483;
                      }

                      if (sub_56A8C(0x2Eu, 7))
                      {
                        v430 = sub_56AD0(0x2Eu);
                        v431 = sub_66A18();
                        v432 = sub_56B04(7);
                        v433 = *v426;
                        if (v430)
                        {
                          printf("%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x\n", v431, 46, v432, "AVE_FrameRecv", "SendFrame", 2827, v429, v429 - 4, *(v710 + 3180), v433);
                          v434 = sub_66A18();
                          v435 = sub_56B04(7);
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v434, 46, v435, "AVE_FrameRecv", "SendFrame", 2827, v429, v429 - 4, *(v710 + 3180), *v426);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v431, 46, v432, "AVE_FrameRecv", "SendFrame", 2827, v429, v429 - 4, *(v710 + 3180), v433);
                        }
                      }

                      if (*v426 != 0x1000000)
                      {
                        break;
                      }

                      v427 += 4;
                      *v426 = bswap32(v429 - 4);
                      v426 = (v426 + v429);
                      if (!--v428)
                      {
                        goto LABEL_482;
                      }
                    }

                    if (!sub_56A8C(3u, 4))
                    {
                      goto LABEL_698;
                    }

                    v461 = sub_56AD0(3u);
                    v462 = sub_66A18();
                    v463 = sub_56B04(4);
                    if (!v461)
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)", v462);
                      goto LABEL_698;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)\n", v462, 3, v463, "SendFrame", 2835, "*(uint32_t *)&pSliceAddr[0] == 0x01000000", *v426);
                    v464 = sub_66A18();
                    v465 = sub_56B04(4);
                    v656 = "*(uint32_t *)&pSliceAddr[0] == 0x01000000";
                    v660 = *v426;
                    v652 = 2835;
                    sampleSizeArrayc = v465;
                    v466 = "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)";
LABEL_606:
                    syslog(3, v466, v464, 3, sampleSizeArrayc, "SendFrame", v652, v656, v660);
LABEL_698:
                    v713 = 3758097085;
                    goto LABEL_516;
                  }

LABEL_483:
                  a3 = v709;
                  a2 = v710;
                  v364 = v711;
                  v6 = v699;
                  v365 = memoryBlocka;
                  if (v405 >= 1)
                  {
                    v405 = v405;
                    v436 = v724;
                    v437 = v405;
                    while (*(v436 - 6) != 5)
                    {
                      v436 += 4;
                      if (!--v437)
                      {
                        goto LABEL_386;
                      }
                    }

                    v442 = *v436;
                    if (*v436)
                    {
                      if (*(v700 + 77) < 2u || *(v710 + 44))
                      {
                        v443 = 0;
                        v444 = &v723;
                        do
                        {
                          if (*(v444 - 4) == 5)
                          {
                            v443 += *v444;
                          }

                          v444 += 4;
                          --v405;
                        }

                        while (v405);
                        v445 = v443 - 4;
                        if (sub_56A8C(0x2Eu, 8))
                        {
                          v446 = sub_56AD0(0x2Eu);
                          v447 = sub_66A18();
                          v448 = sub_56B04(8);
                          if (v446)
                          {
                            printf("%lld %d AVE %s: %s:%d %d %p 0x%x\n", v447, 46, v448, "SendFrame", 2861, v445, v442, *v442);
                            v449 = sub_66A18();
                            sub_56B04(8);
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v449, 46);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v447, 46);
                          }
                        }

                        if (*v442 == 0x1000000)
                        {
                          *v442 = bswap32(v445);
                          a3 = v709;
                          a2 = v710;
                          v364 = v711;
                          v6 = v699;
                          v365 = memoryBlocka;
                          goto LABEL_386;
                        }

                        if (!sub_56A8C(3u, 4))
                        {
                          goto LABEL_698;
                        }

                        v524 = sub_56AD0(3u);
                        v525 = sub_66A18();
                        v526 = sub_56B04(4);
                        if (!v524)
                        {
                          syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)", v525);
                          goto LABEL_698;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)\n", v525, 3, v526, "SendFrame", 2864, "*pFillerAddr == 0x01000000", *v442);
                        v464 = sub_66A18();
                        v527 = sub_56B04(4);
                        v656 = "*pFillerAddr == 0x01000000";
                        v660 = *v442;
                        v652 = 2864;
                        sampleSizeArrayc = v527;
                        v466 = "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)";
                        goto LABEL_606;
                      }

                      goto LABEL_507;
                    }
                  }
                }
              }

LABEL_386:
              if (*(v700 + 77) >= 2u && !*(a2 + 44))
              {
LABEL_507:
                v685 = v49;
                v709 = a3;
                if (sub_56A8C(0x2Eu, 7))
                {
                  v450 = sub_56AD0(0x2Eu);
                  v451 = sub_66A18();
                  v452 = sub_56B04(7);
                  if (v450)
                  {
                    printf("%lld %d AVE %s: BAIL for first layer\n", v451, 46, v452);
                    sub_66A18();
                    sub_56B04(7);
                  }

                  syslog(3, "%lld %d AVE %s: BAIL for first layer");
                }

                goto LABEL_515;
              }

              if (*(v700 + 126) == 2)
              {
                v366 = CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, v365, dataLength, a1[3664], 0, 0, dataLength, 1u, &cf);
                v713 = v366;
                if (v366)
                {
                  v7 = v364;
                  sub_2F954(v366, v364[3], *(v700 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                  ++*a1;
                  ++a1[1];
                  goto LABEL_540;
                }
              }

              sampleTimingArray.duration.value = *(a2 + 4584);
              v386 = *(a2 + 4600);
              v387 = *(a2 + 4596);
              sampleTimingArray.duration.timescale = *(a2 + 4592);
              sampleTimingArray.duration.flags = v387;
              v388 = *(a2 + 4560);
              sampleTimingArray.duration.epoch = v386;
              sampleTimingArray.presentationTimeStamp.value = v388;
              v389 = *(a2 + 4576);
              v390 = *(a2 + 4572);
              sampleTimingArray.presentationTimeStamp.timescale = *(a2 + 4568);
              sampleTimingArray.presentationTimeStamp.flags = v390;
              v391 = a3[1];
              sampleTimingArray.presentationTimeStamp.epoch = v389;
              sampleTimingArray.decodeTimeStamp.value = v391;
              *&sampleTimingArray.decodeTimeStamp.timescale = a3[2];
              sampleTimingArray.decodeTimeStamp.epoch = a3[3];
              *&time1[0].value = *&sampleTimingArray.presentationTimeStamp.value;
              time1[0].epoch = v389;
              time2 = sampleTimingArray.decodeTimeStamp;
              if (!CMTimeCompare(time1, &time2) && !v712[750])
              {
                sampleTimingArray.decodeTimeStamp = kCMTimeInvalid;
                if (sub_56A8C(0x2Eu, 8))
                {
                  v392 = sub_56AD0(0x2Eu);
                  v393 = sub_66A18();
                  v394 = sub_56B04(8);
                  if (v392)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID\n", v393, 46, v394);
                    v395 = sub_66A18();
                    sampleSizeArrayq = sub_56B04(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v395, 46, sampleSizeArrayq);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v393, 46, v394);
                  }

                  a2 = v710;
                  v364 = v711;
                  v6 = v699;
                }
              }

              if (sub_56A8C(0x33u, 7))
              {
                v467 = sub_56AD0(0x33u);
                v468 = sub_66A18();
                v469 = sub_56B04(7);
                v470 = v364[3];
                v471 = *(a2 + 40);
                if (v467)
                {
                  printf("%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v468, 51, v469, "SendFrame", 2931, v470, v471, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value, sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.flags, sampleTimingArray.presentationTimeStamp.epoch, *(a2 + 4608), *(a2 + 4616), sampleTimingArray.duration.value, sampleTimingArray.duration.timescale, sampleTimingArray.duration.flags, sampleTimingArray.duration.epoch);
                  v472 = sub_66A18();
                  v473 = sub_56B04(7);
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v472, 51, v473, "SendFrame", 2931, v364[3], *(a2 + 40), sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v468, 51, v469, "SendFrame", 2931, v470, v471, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                v6 = v699;
              }

              v474 = CMSampleBufferCreate(kCFAllocatorDefault, cf, 1u, 0, 0, a1[3670], 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
              v475 = sub_56A8C(0x2Eu, 7);
              if (v475)
              {
                v476 = sub_56AD0(0x2Eu);
                v477 = sub_66A18();
                v478 = sub_56B04(7);
                v479 = a1[3670];
                if (v476)
                {
                  printf("%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p\n", v477, 46, v478, v474, sampleBufferOut, v479);
                  v480 = sub_66A18();
                  v481 = sub_56B04(7);
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v480, 46, v481, v474, sampleBufferOut, a1[3670]);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v477, 46, v478, v474, sampleBufferOut, v479);
                }
              }

              v713 = v474;
              if (v474)
              {
                v7 = v364;
                sub_2F954(v475, v364[3], *(v700 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                ++*a1;
LABEL_539:
                ++a1[1];
LABEL_540:
                v23 = v705;
                if (sampleBufferOut)
                {
                  CFRelease(sampleBufferOut);
                }

                goto LABEL_542;
              }

              v685 = v49;
              v709 = a3;
              v482 = v712[758];
              v483 = *(a2 + 2456);
              v716 = (a2 + 4756);
              if (v483 == 3)
              {
                v484 = *(a2 + 6112);
              }

              else
              {
                if (*(v697 + 40) == 21)
                {
                  v485 = 1;
                }

                else if (*(v700 + 77) < 2u)
                {
                  v485 = 0;
                }

                else
                {
                  v485 = *(v712 + 2324);
                }

                if (v483 == 2)
                {
                  v484 = 1;
                }

                else
                {
                  v484 = *(a2 + 6112);
                  if ((v716[1356] & 1) == 0 && v482 >= 2)
                  {
                    v484 = v483 == 1 && *(v697 + 36) == v482 - 1;
                  }
                }

                if ((v485 & 1) == 0)
                {
                  v486 = 0;
                  v487 = 0;
                  v488 = v483 == 0;
LABEL_559:
                  if (sub_56A8C(0x2Eu, 7))
                  {
                    v489 = sub_56AD0(0x2Eu);
                    v490 = sub_66A18();
                    v491 = sub_56B04(7);
                    v492 = *(v710 + 2456);
                    if (v489)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d\n", v490, 46, v491, v492, v487, v488);
                      v493 = sub_66A18();
                      sampleSizeArrayv = sub_56B04(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v493, 46, sampleSizeArrayv, *(v710 + 2456), v487, v488);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v490, 46, v491, v492, v487, v488);
                    }
                  }

                  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
                  if (!ValueAtIndex)
                  {
                    Mutable = sub_56A8C(0x2Eu, 4);
                    if (Mutable)
                    {
                      v503 = sub_56AD0(0x2Eu);
                      v504 = sub_66A18();
                      v505 = sub_56B04(4);
                      if (v503)
                      {
                        printf("%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.\n", v504, 46, v505, "SendFrame", 3376);
                        v506 = sub_66A18();
                        sampleSizeArrayw = sub_56B04(4);
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v506, 46, sampleSizeArrayw, "SendFrame", 3376);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v504, 46, v505, "SendFrame", 3376);
                      }
                    }

                    goto LABEL_644;
                  }

                  v496 = ValueAtIndex;
                  if ((v486 & 1) == 0)
                  {
                    CFDictionarySetValue(ValueAtIndex, kCMSampleAttachmentKey_NotSync, kCFBooleanTrue);
                  }

                  if (v488)
                  {
                    v497 = &kCFBooleanFalse;
                  }

                  else
                  {
                    v497 = &kCFBooleanTrue;
                  }

                  CFDictionarySetValue(v496, kCMSampleAttachmentKey_DependsOnOthers, *v497);
                  if (v484)
                  {
                    CFDictionarySetValue(v496, kCMSampleAttachmentKey_IsDependedOnByOthers, kCFBooleanFalse);
                  }

                  if (sub_56A8C(0x2Eu, 7))
                  {
                    v498 = sub_56AD0(0x2Eu);
                    v499 = sub_66A18();
                    v500 = sub_56B04(7);
                    if (v498)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d IsHierarchical %d\n", v499, 46, v500, "AVE_FrameRecv", "SendFrame", 2999, v712[758] > 1);
                      v501 = sub_66A18();
                      sub_56B04(7);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v501);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v499);
                    }
                  }

                  Mutable = sub_56A8C(0x2Eu, 7);
                  if (Mutable)
                  {
                    v507 = sub_56AD0(0x2Eu);
                    v508 = sub_66A18();
                    v509 = sub_56B04(7);
                    v510 = *(v710 + 40);
                    v511 = *(v697 + 40);
                    if (v507)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d\n", v508, 46, v509, v510, *(v710 + 2456), v511);
                      v512 = sub_66A18();
                      v513 = sub_56B04(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v512, 46, v513, *(v710 + 40), *(v710 + 2456), *(v697 + 40));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v508, 46, v509, v510, *(v710 + 2456), v511);
                    }
                  }

                  if (v482 >= 2)
                  {
                    memcpy(time1, a1 + 7176, 0x1ACuLL);
                    v514 = sub_30264(a1, time1, *(v697 + 36));
                    if (v514)
                    {
                      v515 = v514;
                      CFDictionarySetValue(v496, kCMSampleAttachmentKey_HEVCTemporalLevelInfo, v514);
                      CFRelease(v515);
                    }

                    if ((*(v697 + 40) & 0xFFFFFFFE) == 2)
                    {
                      v516 = kCFBooleanTrue;
                    }

                    else
                    {
                      v516 = kCFBooleanFalse;
                    }

                    CFDictionarySetValue(v496, kCMSampleAttachmentKey_HEVCTemporalSubLayerAccess, v516);
                    if ((*(v697 + 40) & 0xFFFFFFFE) == 4)
                    {
                      v517 = kCFBooleanTrue;
                    }

                    else
                    {
                      v517 = kCFBooleanFalse;
                    }

                    CFDictionarySetValue(v496, kCMSampleAttachmentKey_HEVCStepwiseTemporalSubLayerAccess, v517);
                  }

                  if (*(v700 + 131) == 2 && (*(v697 + 40) - 19) <= 2)
                  {
                    Mutable = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (v697 + 40));
                    if (Mutable)
                    {
                      v518 = Mutable;
                      if (sub_56A8C(0x2Eu, 7))
                      {
                        v519 = sub_56AD0(0x2Eu);
                        v520 = sub_66A18();
                        v521 = sub_56B04(7);
                        v522 = *v694;
                        if (v519)
                        {
                          printf("%lld %d AVE %s: H264FrameRec: F %d NUT CRA\n", v520, 46, v521, v522);
                          v523 = sub_66A18();
                          sampleSizeArrayx = sub_56B04(7);
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v523, 46, sampleSizeArrayx, *v694);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v520, 46, v521, v522);
                        }
                      }

                      CFDictionarySetValue(v496, kCMSampleAttachmentKey_HEVCSyncSampleNALUnitType, v518);
                      CFRelease(v518);
                    }
                  }

                  if ((v712[760] & 2) != 0)
                  {
                    if (*v697 == 1)
                    {
                      Mutable = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v694);
                      if (Mutable)
                      {
                        v528 = Mutable;
                        CFDictionarySetValue(v496, kVTSampleAttachmentKey_RequireAcknowledgementToken, Mutable);
                        CFRelease(v528);
                      }
                    }

                    if (*(v697 + 48) == 1 && *(v700 + 161) != 1)
                    {
                      CFDictionarySetValue(v496, kVTSampleAttachmentKey_ReferenceWasRefreshed, kCFBooleanTrue);
                    }
                  }

                  if ((*(a1 + 30147) & 8) == 0)
                  {
LABEL_619:
                    if (*(v711 + 4) >= 17 && (v712[615] & 0x3C0) != 0)
                    {
                      Mutable = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (v710 + 6116));
                      if (Mutable)
                      {
                        v529 = Mutable;
                        CFDictionarySetValue(v496, kVTSampleAttachmentKey_TemporalNoiseReductionApplied, Mutable);
                        CFRelease(v529);
                      }
                    }

                    if (*(v710 + 9))
                    {
                      v530 = sub_65C9C(a1 + 28548, v496);
                      bzero(a1 + 28548, 0x214uLL);
                      if (v530)
                      {
                        if (sub_56A8C(0x2Eu, 4))
                        {
                          v531 = sub_56AD0(0x2Eu);
                          v532 = sub_66A18();
                          v533 = sub_56B04(4);
                          if (v531)
                          {
                            printf("%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d\n", v532, 46, v533, "AVE_FrameRecv", "SendFrame", 3116, "ret == 0", a1, v711[3], *(v710 + 8), v496, v530);
                            v534 = sub_66A18();
                            sampleSizeArrayy = sub_56B04(4);
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v534, 46, sampleSizeArrayy, "AVE_FrameRecv", "SendFrame", 3116);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v532, 46, v533, "AVE_FrameRecv", "SendFrame", 3116);
                          }
                        }

LABEL_515:
                        v713 = 0;
LABEL_516:
                        v31 = 0;
LABEL_517:
                        a3 = v709;
                        a2 = v710;
                        v7 = v711;
                        v6 = v699;
                        v23 = v705;
                        v49 = v685;
                        goto LABEL_45;
                      }
                    }

                    v544 = *(v700 + 161);
                    if (v544 > 36)
                    {
                      if ((v544 - 37) >= 2 && v544 != 10000)
                      {
                        goto LABEL_644;
                      }

                      goto LABEL_640;
                    }

                    if (v544)
                    {
                      if (v544 != 1)
                      {
                        if (v544 != 20)
                        {
                          goto LABEL_644;
                        }

LABEL_640:
                        LODWORD(time1[0].value) = *(v697 + 172);
                        Mutable = CFNumberCreate(0, kCFNumberSInt32Type, time1);
                        if (Mutable)
                        {
                          v545 = Mutable;
                          v546 = kVTSampleAttachmentKey_EncoderRetryCount;
LABEL_642:
                          CFDictionarySetValue(v496, v546, v545);
LABEL_643:
                          CFRelease(v545);
                        }

LABEL_644:
                        if (*v711 && *(v711 + 8) == 1 && (Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0)) != 0)
                        {
                          v547 = Mutable;
                          CFDataAppendBytes(Mutable, (v710 + 31438), 1574);
                          if (sub_56A8C(0x2Eu, 7))
                          {
                            v548 = sub_56AD0(0x2Eu);
                            v549 = sub_66A18();
                            v550 = sub_56B04(7);
                            v551 = *(v710 + 20);
                            if (v551 >= 2)
                            {
                              v551 = 2;
                            }

                            if (v548)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d\n", v549, 46, v550, v551);
                              v552 = sub_66A18();
                              v553 = sub_56B04(7);
                              v554 = *(v710 + 20);
                              if (v554 >= 2)
                              {
                                v554 = 2;
                              }

                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v552, 46, v553, v554);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v549, 46, v550, v551);
                            }
                          }

                          v579 = *(v697 + 1754);
                          v580 = *(v697 + 1770);
                          v581 = *(v697 + 1762);
                          if (sub_56A8C(0xD8u, 7))
                          {
                            v582 = sub_56AD0(0xD8u);
                            v583 = sub_66A18();
                            v584 = sub_56B04(7);
                            if (v582)
                            {
                              printf("%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v583, 216, v584, *(v710 + 4560), *(v710 + 4568), *(v710 + 4572), *(v710 + 4576));
                              v585 = sub_66A18();
                              sub_56B04(7);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v585);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v583);
                            }
                          }

                          time1[0].value = v579;
                          *&time1[0].timescale = v581;
                          time1[0].epoch = v580;
                          v713 = VTMultiPassStorageSetDataAtTimeStamp();
                          if (v713 && sub_56A8C(0x2Eu, 4))
                          {
                            v586 = sub_56AD0(0x2Eu);
                            v587 = sub_66A18();
                            v588 = sub_56B04(4);
                            if (v586)
                            {
                              printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v587, 46, v588);
                              v589 = sub_66A18();
                              sampleSizeArrayz = sub_56B04(4);
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v589, 46, sampleSizeArrayz);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v587, 46, v588);
                            }
                          }

                          CFRelease(v547);
                        }

                        else
                        {
                          v713 = 0;
                        }

                        a2 = v710;
                        v7 = v711;
                        v555 = sub_2F954(Mutable, v711[3], *(v700 + 126), a1[3669], *(v710 + 2552), *(v710 + 40), 0, sampleBufferOut);
                        ++*a1;
                        a3 = v709;
                        v6 = v699;
                        if (!v555)
                        {
                          goto LABEL_540;
                        }

                        goto LABEL_539;
                      }

                      v568 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      v569 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      v570 = (v697 + 68);
                      v571 = 4;
                      do
                      {
                        sub_45F00(*v570, v568);
                        sub_45F00(*(v570 - 4), v569);
                        ++v570;
                        --v571;
                      }

                      while (v571);
                      CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_FrameInterSumSATD, v568);
                      if (v568)
                      {
                        CFRelease(v568);
                      }

                      CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_FrameIntraSumSATD, v569);
                      if (v569)
                      {
                        CFRelease(v569);
                      }

                      v572 = *(v700 + 131);
                      if (v572 == 2)
                      {
                        v590 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v591 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v574 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v592 = (v697 + 124);
                        v593 = 4;
                        do
                        {
                          sub_45F00(*(v592 - 8), v590);
                          sub_45F00(*(v592 - 4), v591);
                          v594 = *v592++;
                          sub_45F00(v594, v574);
                          --v593;
                        }

                        while (v593);
                        CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_NumberOfIntra8x8Blocks, v590);
                        if (v590)
                        {
                          CFRelease(v590);
                        }

                        CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_NumberOfInter8x8Blocks, v591);
                        if (v591)
                        {
                          CFRelease(v591);
                        }

                        v578 = @"NumberOfSkipped8x8Blocks";
                      }

                      else
                      {
                        if (v572 != 1)
                        {
                          v713 = 3758097084;
                          if (sub_56A8C(3u, 4))
                          {
                            v608 = sub_56AD0(3u);
                            v609 = sub_66A18();
                            v610 = sub_56B04(4);
                            if (v608)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.\n", v609, 3, v610, "SendFrame", 3247, "false", *(v700 + 131));
                              v611 = sub_66A18();
                              sub_56B04(4);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v611);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v609);
                            }
                          }

                          goto LABEL_516;
                        }

                        v573 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v574 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v575 = (v697 + 124);
                        v576 = 4;
                        do
                        {
                          sub_45F00(*(v575 - 8), v573);
                          v577 = *v575++;
                          sub_45F00(v577, v574);
                          --v576;
                        }

                        while (v576);
                        CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_NumberOfIntraMB, v573);
                        if (v573)
                        {
                          CFRelease(v573);
                        }

                        v578 = kVTSampleAttachmentQualityMetricsKey_NumberOfSkippedMB;
                      }

                      CFDictionarySetValue(v496, v578, v574);
                      if (v574)
                      {
                        CFRelease(v574);
                      }

                      v595 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      for (i = 0; i != 16; i += 4)
                      {
                        sub_45F00(*(v710 + 29828 + i), v595);
                      }

                      if (v595)
                      {
                        CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_CodedFrameResidualBits, v595);
                        CFRelease(v595);
                      }

                      v597 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      for (j = 0; j != 16; j += 4)
                      {
                        Mutable = sub_45F00(*(v710 + 29844 + j), v597);
                      }

                      if (v597)
                      {
                        CFDictionarySetValue(v496, @"SliceDataLength", v597);
                        CFRelease(v597);
                      }

                      if (!v712[802] || *(v700 + 131) != 1)
                      {
LABEL_738:
                        if (*v716 == 1)
                        {
                          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (Mutable)
                          {
                            v545 = Mutable;
                            if (!sub_49DC0((v710 + 3184), Mutable))
                            {
                              CFDictionarySetValue(v496, kVTSampleAttachment_GetDPB, v545);
                              v617 = *(v710 + 23728);
                              if ((v617 & 0x8000) != 0)
                              {
                                v618 = v699[3];
                                if (v618)
                                {
                                  sub_4BEBC(v618, v545, *(v710 + 40), *(v710 + 4764));
                                  v617 = *(v710 + 23728);
                                }
                              }

                              if ((v617 & 0x10000) != 0)
                              {
                                v619 = v699[3];
                                if (v619)
                                {
                                  sub_4C35C(v619, v545, *v694, v496);
                                }
                              }
                            }

                            goto LABEL_643;
                          }
                        }

                        goto LABEL_644;
                      }

                      v599 = v704[*(v710 + 3180)];
                      if (v599)
                      {
                        v600 = v712[796];
                        v601 = v712[797];
                        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                        if (Mutable)
                        {
                          v602 = Mutable;
                          v603 = 432 * ((v600 + 15) >> 4) * ((v601 + 15) >> 4);
                          CFDataAppendBytes(Mutable, v599, v603);
                          if (sub_56A8C(0x2Eu, 7))
                          {
                            v604 = sub_56AD0(0x2Eu);
                            v605 = sub_66A18();
                            v606 = sub_56B04(7);
                            if (v604)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out\n", v605, 46, v606, v603);
                              v607 = sub_66A18();
                              sampleSizeArrayba = sub_56B04(7);
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v607, 46, sampleSizeArrayba, v603);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v605, 46, v606, v603);
                            }
                          }

                          CFDictionarySetValue(v496, @"MBStatistics", v602);
                          CFRelease(v602);
                        }

                        goto LABEL_738;
                      }

                      v713 = 3758097084;
                      if (!sub_56A8C(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v612 = sub_56AD0(3u);
                      v613 = sub_66A18();
                      v614 = sub_56B04(4);
                      if (v612)
                      {
                        v615 = 3281;
LABEL_735:
                        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.\n", v613, 3, v614, "SendFrame", v615, "stat != __null");
                        sub_66A18();
                        sub_56B04(4);
                      }
                    }

                    else
                    {
                      if (!v712[802] || *(v700 + 131) != 1 || *(v700 + 132) != 1)
                      {
                        goto LABEL_644;
                      }

                      v559 = v704[*(v710 + 3180)];
                      if (v559)
                      {
                        v560 = v712[796];
                        v561 = v712[797];
                        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                        if (!Mutable)
                        {
                          goto LABEL_644;
                        }

                        v545 = Mutable;
                        v562 = 432 * ((v560 + 15) >> 4) * ((v561 + 15) >> 4);
                        CFDataAppendBytes(Mutable, v559, v562);
                        if (sub_56A8C(0x2Eu, 7))
                        {
                          v563 = sub_56AD0(0x2Eu);
                          v564 = sub_66A18();
                          v565 = sub_56B04(7);
                          if (v563)
                          {
                            printf("%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n\n", v564, 46, v565, *(v700 + 132), v562);
                            v566 = sub_66A18();
                            v567 = sub_56B04(7);
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v566, 46, v567, *(v700 + 132), v562);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v564, 46, v565, *(v700 + 132), v562);
                          }
                        }

                        v546 = @"MBStatistics";
                        goto LABEL_642;
                      }

                      v713 = 3758097084;
                      if (!sub_56A8C(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v616 = sub_56AD0(3u);
                      v613 = sub_66A18();
                      v614 = sub_56B04(4);
                      if (v616)
                      {
                        v615 = 3340;
                        goto LABEL_735;
                      }
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.");
                    goto LABEL_516;
                  }

                  v535 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  if (v535)
                  {
                    v536 = v535;
                    v537 = sub_62EB0(a1 + 3641, *(v700 + 77), v535);
                    if (!v537)
                    {
                      CFDictionarySetValue(v496, @"QualityMetrics", v536);
                      CFRelease(v536);
                      goto LABEL_619;
                    }

                    v538 = v537;
                    if (sub_56A8C(0x2Eu, 4))
                    {
                      v539 = sub_56AD0(0x2Eu);
                      v540 = sub_66A18();
                      v541 = sub_56B04(4);
                      if (!v539)
                      {
                        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d", v540, 46);
                        goto LABEL_695;
                      }

                      printf("%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d\n", v540, 46, v541, "AVE_FrameRecv", "SendFrame", 3085, "ret == 0", v538);
                      v542 = sub_66A18();
                      v661 = "ret == 0";
                      v662 = v538;
                      v657 = 3085;
                      sampleSizeArrayd = sub_56B04(4);
                      v543 = "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d";
                      goto LABEL_660;
                    }
                  }

                  else if (sub_56A8C(0x2Eu, 4))
                  {
                    v556 = sub_56AD0(0x2Eu);
                    v557 = sub_66A18();
                    v558 = sub_56B04(4);
                    if (!v556)
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v557);
                      goto LABEL_695;
                    }

                    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v557, 46, v558, "AVE_FrameRecv", "SendFrame", 3081, "pMSEDict != __null");
                    v542 = sub_66A18();
                    v657 = 3081;
                    v661 = "pMSEDict != __null";
                    sampleSizeArrayd = sub_56B04(4);
                    v543 = "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary";
LABEL_660:
                    syslog(3, v543, v542, 46, sampleSizeArrayd, "AVE_FrameRecv", "SendFrame", v657, v661, v662);
                  }

LABEL_695:
                  v31 = 0;
                  v713 = 4294966293;
                  goto LABEL_517;
                }
              }

              v486 = 1;
              v487 = 1;
              v488 = 1;
              goto LABEL_559;
            }

            if (!a1[3661] || !a1[3660])
            {
              if (sub_56A8C(0x2Eu, 7))
              {
                v378 = sub_56AD0(0x2Eu);
                v379 = sub_66A18();
                v380 = sub_56B04(7);
                if (v378)
                {
                  printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v379, 46, v380);
                  v381 = sub_66A18();
                  sampleSizeArrayp = sub_56B04(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v381, 46, sampleSizeArrayp);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v379, 46, v380);
                }

                v713 = 0;
                v23 = v705;
              }

              else
              {
                v713 = 0;
              }

LABEL_495:
              sub_2D3A0(a1, memoryBlocka);
              bzero(a1 + 28548, 0x214uLL);
              goto LABEL_542;
            }

            memset(time1, 0, 32);
            if (*(v700 + 77) < 2u || *(v710 + 44))
            {
              if (allocator)
              {
                v334 = 0;
                v335 = -1;
                v336 = -1;
                v337 = a4;
              }

              else
              {
                v335 = *(v710 + 4560);
                v336 = *(v710 + 4568);
                v337 = -1;
                v334 = *(v710 + 23720);
              }

              time1[0].value = *v694;
              *&time1[0].timescale = v337;
              time1[0].epoch = v335;
              time1[1].value = v336;
              *&time1[1].timescale = v334;
              if (*v711)
              {
                v424 = v286;
                v425 = v49;
                if (*(v711 + 8) == 1)
                {
                  if (!*(v710 + 20) && (v453 = CFDataCreateMutable(kCFAllocatorDefault, 0)) != 0 && (v454 = v453, CFDataAppendBytes(v453, (v710 + 31438), 1574), v455 = *(v697 + 1770), sampleTimingArray.duration.value = *(v697 + 1754), *&sampleTimingArray.duration.timescale = *(v697 + 1762), sampleTimingArray.duration.epoch = v455, v456 = VTMultiPassStorageSetDataAtTimeStamp(), CFRelease(v454), v713 = v456, v456))
                  {
                    if (sub_56A8C(0x2Eu, 4))
                    {
                      v457 = sub_56AD0(0x2Eu);
                      v458 = sub_66A18();
                      v459 = sub_56B04(4);
                      if (v457)
                      {
                        printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v458, 46, v459);
                        v460 = sub_66A18();
                        sampleSizeArrayu = sub_56B04(4);
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v460, 46, sampleSizeArrayu);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v458, 46, v459);
                      }
                    }
                  }

                  else
                  {
                    v713 = 0;
                  }

                  a2 = v710;
                  v7 = v711;
                  v6 = v699;
                }

                else
                {
                  v713 = 0;
                }

                v49 = v425;
                v281 = v700;
              }

              else
              {
                v424 = v286;
                v713 = 0;
              }

              if (sub_56A8C(0x2Eu, 7))
              {
                v438 = sub_56AD0(0x2Eu);
                v439 = sub_66A18();
                v440 = sub_56B04(7);
                if (v438)
                {
                  printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes\n", v439, 46, v440, memoryBlocka, v424);
                  v441 = sub_66A18();
                  sampleSizeArrayt = sub_56B04(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v441, 46, sampleSizeArrayt, memoryBlocka, v424);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v439, 46, v440, memoryBlocka, v424);
                }
              }

              kdebug_trace();
              (a1[3661])(a1[3660], memoryBlocka, dataLength, time1, *(v281 + 131));
              ++*a1;
              kdebug_trace();
              v23 = v705;
              goto LABEL_495;
            }

            v31 = 0;
LABEL_149:
            v713 = 0;
            goto LABEL_45;
          }

          if (!sub_56A8C(0x2Eu, 4))
          {
            v713 = 4294954394;
LABEL_351:
            v7 = v711;
            goto LABEL_396;
          }

          v415 = sub_56AD0(0x2Eu);
          v416 = sub_66A18();
          v417 = sub_56B04(4);
          if (v415)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d\n", v416, 46, v417, "AVE_FrameRecv", "SendFrame", 2571, "m_sMVBuf.pBuf != __null", a1[3639], *v694);
            v418 = sub_66A18();
            sampleSizeArrayr = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v418, 46, sampleSizeArrayr);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v416, 46, v417);
          }

          v713 = 4294954394;
          a2 = v710;
          a3 = v706;
LABEL_402:
          v7 = v711;
LABEL_436:
          v6 = v699;
          goto LABEL_437;
        }

        if (!sub_56A8C(3u, 4))
        {
          v713 = 0;
          a3 = v706;
          v6 = v699;
          v31 = v702;
          goto LABEL_258;
        }

        v223 = sub_56AD0(3u);
        v224 = sub_66A18();
        v225 = sub_56B04(4);
        v6 = v699;
        v31 = v702;
        if (v223)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
          v226 = sub_66A18();
          v227 = sub_56B04(4);
          a2 = v710;
          v7 = v711;
          v23 = v705;
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v226, 3, v227, "SendFrame", 2536, "codedHeader != __null");
          goto LABEL_160;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
        v713 = 0;
        a3 = v706;
LABEL_430:
        a2 = v710;
        v7 = v711;
        goto LABEL_45;
      }

      if (sub_56A8C(0x2Eu, 4))
      {
        v397 = v6;
        v398 = sub_56AD0(0x2Eu);
        v399 = sub_66A18();
        v400 = sub_56B04(4);
        v401 = v711[3];
        v402 = *(v710 + 40);
        if (v398)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p\n", v399, 46, v400, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v401, v402, dataLength, v396);
          v403 = sub_66A18();
          v404 = sub_56B04(4);
          v23 = v705;
          a2 = v710;
          v7 = v711;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v403, 46, v404, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v711[3], *(v710 + 40), dataLength, a1 + 28548);
          v713 = 0;
          a3 = v706;
          v6 = v397;
          goto LABEL_438;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v399, 46, v400, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v401, v402, dataLength, v396);
        v713 = 0;
        a3 = v706;
        v6 = v397;
        goto LABEL_429;
      }
    }

    v713 = 0;
    a3 = v706;
LABEL_429:
    v31 = v702;
    goto LABEL_430;
  }

  v699 = v6;
  v207 = 0;
  v208 = a1 + 29084;
  v209 = &v727;
  v210 = 1;
  v691 = v61;
  while (1)
  {
    v211 = v210;
    v212 = &v208[12 * v207];
    v213 = v212[7];
    if (v213 < 1 || *(v212 + 2) < 1)
    {
      goto LABEL_218;
    }

    if (!v61)
    {
      if (!sub_56A8C(0x2Eu, 4))
      {
        v713 = 0;
        a3 = v706;
        v6 = v699;
        v23 = v705;
        goto LABEL_429;
      }

      v319 = sub_56AD0(0x2Eu);
      v320 = sub_66A18();
      v321 = sub_56B04(4);
      v100 = v711;
      v23 = v705;
      v31 = v702;
      if (v319)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i\n", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v711[3], v207);
        v322 = sub_66A18();
        v323 = sub_56B04(4);
        v7 = v711;
        a2 = v710;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v322, 46, v323, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v711[3], v207);
        v713 = 0;
        a3 = v706;
        goto LABEL_228;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v711[3], v207);
      v713 = 0;
      a3 = v706;
      a2 = v710;
      goto LABEL_128;
    }

    v695 = *(v212 + 2);
    v714 = v210;
    if (sub_56A8C(0x2Eu, 7))
    {
      v214 = sub_56AD0(0x2Eu);
      v684 = sub_66A18();
      v215 = sub_56B04(7);
      v216 = v711[3];
      v217 = v212[7];
      if (v214)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld\n", v684, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
        v218 = sub_66A18();
        v219 = sub_56B04(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v218, 46, v219, "AVE_FrameRecv", "SendFrame", 2467, a1, v711[3], v207, v212[7], *(v212 + 2), dataLength);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v684, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
      }

      v61 = v691;
    }

    v220 = v212[7];
    if (v220 >= 2)
    {
      if (sub_37D68(v212, v220 - 1, 5u, v722))
      {
        break;
      }
    }

    v221 = malloc_type_malloc(*(v212 + 2) + 1, 0x100004077774924uLL);
    *v209 = v221;
    if (!v221)
    {
      if (sub_56A8C(0x2Eu, 4))
      {
        v324 = sub_56AD0(0x2Eu);
        v325 = sub_66A18();
        v326 = sub_56B04(4);
        v141 = v711;
        v31 = v702;
        if (v324)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d\n", v325, 46, v326, "AVE_FrameRecv", "SendFrame", 2483, "piFillerBuf[i] != __null", a1, v711[3], *(v710 + 3180), v207, *(v212 + 2));
          v327 = sub_66A18();
          v328 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v327, 46, v328, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v325, 46, v326, "AVE_FrameRecv", "SendFrame");
        }

        v713 = 0;
        a3 = v706;
        v6 = v699;
        a2 = v710;
        v23 = v705;
        goto LABEL_320;
      }

      goto LABEL_401;
    }

    v222 = v221;
    memset(v221, 255, *(v212 + 2));
    v222[*(v212 + 2)] = 0x80;
    if (sub_37D68(v222, *(v212 + 2) + 1, 5u, v722))
    {
      if (sub_56A8C(0x2Eu, 4))
      {
        v329 = sub_56AD0(0x2Eu);
        v330 = sub_66A18();
        v331 = sub_56B04(4);
        if (v329)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p\n", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0", a1, v711[3], *(v710 + 40), v207, v222, *(v212 + 2), v722);
          v332 = sub_66A18();
          v333 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v332, 46, v333, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        v713 = 0;
        a2 = v710;
        a3 = v706;
        v7 = v711;
        goto LABEL_436;
      }

      goto LABEL_401;
    }

    dataLength += (v695 + v213);
    v208 = a1 + 29084;
    v211 = v714;
LABEL_218:
    v210 = 0;
    v209 = &v726;
    v207 = 1;
    if ((v211 & 1) == 0)
    {
      v6 = v699;
      v23 = v705;
      goto LABEL_175;
    }
  }

  if (!sub_56A8C(0x2Eu, 4))
  {
LABEL_401:
    v713 = 0;
    a3 = v706;
    a2 = v710;
    goto LABEL_402;
  }

  v371 = sub_56AD0(0x2Eu);
  v372 = sub_66A18();
  v373 = sub_56B04(4);
  v141 = v711;
  v374 = v711[3];
  v277 = v710;
  v375 = *(v710 + 40);
  if (v371)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p\n", v372, 46, v373, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v374, v375, v207, v212, v212[7], v722);
    v376 = sub_66A18();
    v377 = sub_56B04(4);
    v681 = v212[7];
    v678 = v212;
    a2 = v710;
    v7 = v711;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v376, 46, v377, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v711[3], *(v710 + 40), v207, v678, v681, v722);
    v713 = 0;
    a3 = v706;
    goto LABEL_436;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v372, 46, v373, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v374, v375, v207, v212, v212[7], v722);
  v713 = 0;
  a3 = v706;
  v6 = v699;
  v23 = v705;
  v31 = v702;
LABEL_462:
  a2 = v277;
LABEL_320:
  v7 = v141;
LABEL_45:
  sub_DD0(v6[4], *(a2 + 40));
  if (v31)
  {
    free(v31);
  }

  if (v23)
  {
    v712[542] = 0;
  }

  *(v6 + 4) = 0;
  if (*v6)
  {
    sub_2D3A0(a1, *v6);
    *v6 = 0;
  }

  v50 = v6[1];
  if (v50)
  {
    CFRelease(v50);
    v6[1] = 0;
  }

  v51 = &v727;
  v52 = 1;
  v53 = v713;
  do
  {
    v54 = v52;
    if (*v51)
    {
      free(*v51);
      *v51 = 0;
    }

    v52 = 0;
    v51 = &v726;
  }

  while ((v54 & 1) != 0);
  if (v49)
  {
    free(v49);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (sub_56A8C(0x2Eu, 7))
  {
    v55 = sub_56AD0(0x2Eu);
    v56 = sub_66A18();
    v57 = sub_56B04(7);
    if (v55)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d\n", v56, 46, v57, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4, v713);
      v58 = sub_66A18();
      sampleSizeArrayg = sub_56B04(7);
      v53 = v713;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v58, 46, sampleSizeArrayg, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v56, 46, v57, "AVE_FrameRecv");
    }
  }

  return v53;
}

uint64_t sub_37D68(const void *a1, int a2, unsigned int a3, unsigned int *a4)
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

    if (sub_56A8C(0x2Eu, 4))
    {
      v13 = sub_56AD0(0x2Eu);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d\n", v14, 46, v15, "AVE_EncFrameInfo_AddBuf", 2098, "0 <= psEncFrameInfo->iNum && psEncFrameInfo->iNum < (2 * ((32) < (256) ? (32) : (256)) + 10)", a1, a2, a4, *a4);
        v16 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v16, 46, v18, "AVE_EncFrameInfo_AddBuf");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v14, 46, v15, "AVE_EncFrameInfo_AddBuf");
      }
    }
  }

  else if (sub_56A8C(0x2Eu, 4))
  {
    v10 = sub_56AD0(0x2Eu);
    v11 = sub_66A18();
    v12 = sub_56B04(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v11, 46, v12, "AVE_EncFrameInfo_AddBuf", 2093, "(pBuf != __null) && (iSize > 0) && (psEncFrameInfo != __null)", a1, a2, a4);
      v11 = sub_66A18();
      v17 = sub_56B04(4);
    }

    else
    {
      v17 = v12;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v11, 46, v17);
  }

  return 4294966295;
}

uint64_t sub_37FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  if (a1)
  {
    sub_380F8(a1, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v10 = sub_56AD0(0x2Eu);
      v11 = sub_66A18();
      v12 = sub_56B04(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d\n", v11, 46, v12, "Recv", 3528, "pCtx != __null", 0, v8, v7, v6, v5);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v13, 46, v14);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v11, 46, v12);
      }
    }

    return 4294966295;
  }
}

void sub_380F8(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = (a1 + 137804);
  if (sub_56A8C(0x2Eu, 8))
  {
    v10 = sub_56AD0(0x2Eu);
    v11 = sub_66A18();
    v12 = sub_56B04(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d\n", v11, 46, v12, "FrameDone", a2, a3, v6, a5);
      v11 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d", v11);
  }

  if (!*(a1 + 29328) || !v9[1])
  {
    if (sub_56A8C(0x2Eu, 4))
    {
      v17 = sub_56AD0(0x2Eu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d\n", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(a1 + 29328), v9[1]);
        v18 = sub_66A18();
        v19 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(a1 + 29328), v9[1]);
    }

    goto LABEL_348;
  }

  if (a2 != -1023)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    if (a2 != -1004)
    {
      if (sub_56A8C(3u, 4))
      {
        v20 = sub_56AD0(3u);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.\n", v21, 3, v22, "FrameDone", 3568, "result == 0");
          sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.");
      }

      goto LABEL_348;
    }
  }

  if (sub_56A8C(0x2Eu, 4))
  {
    v13 = sub_56AD0(0x2Eu);
    v14 = sub_66A18();
    v15 = sub_56B04(4);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources\n", v14, 46, v15);
      v16 = sub_66A18();
      v331 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v16, 46, v331);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v14, 46, v15);
    }
  }

LABEL_22:
  v363 = (a1 + 137792);
  if (sub_56A8C(0x2Eu, 7))
  {
    v23 = a5;
    v24 = sub_56AD0(0x2Eu);
    v25 = sub_66A18();
    v26 = sub_56B04(7);
    if (v24)
    {
      printf("%lld %d AVE %s: \nH264FrameRec: counter received = %d\n", v25, 46, v26, v6);
      v27 = sub_66A18();
      v332 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v27, 46, v332, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v25, 46, v26, v6);
    }

    a5 = v23;
  }

  *&v368 = 0;
  sub_6CCB0(*(a1 + 29328), v6, &v368);
  v28 = v368;
  kdebug_trace();
  v367 = v28;
  v29 = *(v28 + 4);
  v364 = a5;
  v365 = v6;
  if (v29 <= 6)
  {
    if (v29 == 5)
    {
      if (a2 != -1023 && a2 != -1004)
      {
        v357 = a2;
        if (sub_56A8C(0x2Eu, 7))
        {
          v59 = sub_56AD0(0x2Eu);
          v60 = sub_66A18();
          v61 = sub_56B04(7);
          if (v59)
          {
            printf("%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d\n", v60, 46, v61, "FrameDone", 3788, v6, *(v28 + 40));
            v60 = sub_66A18();
            sub_56B04(7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d", v60);
        }

        v356 = v9;
        v215 = 0;
        v216 = v28 + 2620;
        v217 = (a1 + 26712);
        do
        {
          v218 = *(v216 + 4 * v215);
          if (v218)
          {
            v219 = IOSurfaceLookup(v218);
            *v217 = v219;
            IOSurfaceLock(v219, 0, 0);
            *(v217 - 30) = IOSurfaceGetBaseAddress(*v217);
            *(a1 + 26952 + 4 * v215) = IOSurfaceGetAllocSize(*v217);
            if (sub_56A8C(0x2Eu, 7))
            {
              v220 = sub_56AD0(0x2Eu);
              v221 = sub_66A18();
              v222 = sub_56B04(7);
              v223 = *(v216 + 4 * v215);
              v224 = *(v217 - 30);
              if (v220)
              {
                printf("%lld %d AVE %s: %s:%d CodedData %d %d %p %p\n", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
                v225 = sub_66A18();
                v226 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v225, 46, v226, "FrameDone", 3802, v215, *(v216 + 4 * v215), *v217, *(v217 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v221, 46, v222, "FrameDone", 3802, v215, v223, *v217, v224);
              }
            }
          }

          ++v215;
          ++v217;
        }

        while (v215 != 30);
        v227 = (v367 + 2740);
        v228 = (a1 + 27312);
        v229 = -30;
        do
        {
          if (*v227)
          {
            v230 = IOSurfaceLookup(*v227);
            *v228 = v230;
            IOSurfaceLock(v230, 0, 0);
            *(v228 - 30) = IOSurfaceGetBaseAddress(*v228);
            if (sub_56A8C(0x2Eu, 7))
            {
              v231 = sub_56AD0(0x2Eu);
              v232 = sub_66A18();
              v233 = sub_56B04(7);
              v234 = *v227;
              v235 = *(v228 - 30);
              if (v231)
              {
                printf("%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p\n", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
                v236 = sub_66A18();
                v237 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v236, 46, v237, "FrameDone", 3818, v229 + 30, *v227, *v228, *(v228 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v232, 46, v233, "FrameDone", 3818, v229 + 30, v234, *v228, v235);
              }
            }
          }

          ++v228;
          ++v227;
          v238 = __CFADD__(v229++, 1);
        }

        while (!v238);
        v239 = (v367 + 2860);
        v240 = (a1 + 27792);
        v241 = -30;
        do
        {
          if (*v239)
          {
            v242 = IOSurfaceLookup(*v239);
            *v240 = v242;
            IOSurfaceLock(v242, 0, 0);
            *(v240 - 30) = IOSurfaceGetBaseAddress(*v240);
            if (sub_56A8C(0x2Eu, 7))
            {
              v243 = sub_56AD0(0x2Eu);
              v244 = sub_66A18();
              v245 = sub_56B04(7);
              v246 = *v239;
              v247 = *(v240 - 30);
              if (v243)
              {
                printf("%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p\n", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
                v248 = sub_66A18();
                v249 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v248, 46, v249, "FrameDone", 3834, v241 + 30, *v239, *v240, *(v240 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v244, 46, v245, "FrameDone", 3834, v241 + 30, v246, *v240, v247);
              }
            }
          }

          ++v240;
          ++v239;
          v238 = __CFADD__(v241++, 1);
        }

        while (!v238);
        v250 = (v367 + 2980);
        v251 = (a1 + 26032);
        v252 = -30;
        do
        {
          if (*v250)
          {
            v253 = IOSurfaceLookup(*v250);
            *v251 = v253;
            IOSurfaceLock(v253, 0, 0);
            *(v251 - 30) = IOSurfaceGetBaseAddress(*v251);
            if (sub_56A8C(0x2Eu, 7))
            {
              v254 = sub_56AD0(0x2Eu);
              v255 = sub_66A18();
              v256 = sub_56B04(7);
              v257 = *v250;
              v258 = *(v251 - 30);
              if (v254)
              {
                printf("%lld %d AVE %s: %s:%d MBStats %d %d %p %p\n", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
                v259 = sub_66A18();
                v260 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v259, 46, v260, "FrameDone", 3850, v252 + 30, *v250, *v251, *(v251 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v255, 46, v256, "FrameDone", 3850, v252 + 30, v257, *v251, v258);
              }
            }
          }

          ++v251;
          ++v250;
          v238 = __CFADD__(v252++, 1);
        }

        while (!v238);
        v261 = 0;
        v262 = v367 + 3100;
        do
        {
          v263 = *(v262 + 4 * v261);
          if (v263)
          {
            *(a1 + 26392 + 4 * v261) = v263;
            if (sub_56A8C(0x2Eu, 7))
            {
              v264 = sub_56AD0(0x2Eu);
              v265 = sub_66A18();
              v266 = sub_56B04(7);
              v267 = *(v262 + 4 * v261);
              if (v264)
              {
                printf("%lld %d AVE %s: %s:%d iaLFSResult %d %d\n", v265, 46, v266, "FrameDone", 3864, v261, v267);
                v268 = sub_66A18();
                v269 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v268, 46, v269, "FrameDone", 3864, v261, *(v262 + 4 * v261));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v265, 46, v266, "FrameDone", 3864, v261, v267);
              }
            }
          }

          ++v261;
        }

        while (v261 != 10);
        v270 = 0;
        v271 = v367 + 3140;
        do
        {
          v272 = *(v271 + 4 * v270);
          if (v272)
          {
            *(a1 + 26432 + 4 * v270) = v272;
            if (sub_56A8C(0x2Eu, 7))
            {
              v273 = sub_56AD0(0x2Eu);
              v274 = sub_66A18();
              v275 = sub_56B04(7);
              v276 = *(v271 + 4 * v270);
              if (v273)
              {
                printf("%lld %d AVE %s: %s:%d iaLRSResult %d %d\n", v274, 46, v275, "FrameDone", 3876, v270, v276);
                v277 = sub_66A18();
                v278 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v277, 46, v278, "FrameDone", 3876, v270, *(v271 + 4 * v270));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v274, 46, v275, "FrameDone", 3876, v270, v276);
              }
            }
          }

          ++v270;
        }

        while (v270 != 10);
        *(a1 + 38940) = *(v367 + 4624);
        v9 = v356;
        a2 = v357;
      }

      sub_6C774(*(a1 + 29328), v367);
      v362 = -1;
      goto LABEL_104;
    }

    v30 = a2;
    if (v29 == 6)
    {
      v39 = v9;
      if (sub_56A8C(0x2Eu, 7))
      {
        v40 = sub_56AD0(0x2Eu);
        v41 = sub_66A18();
        v42 = sub_56B04(7);
        v43 = *(v9 + 3);
        if (v40)
        {
          printf("%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld \n", v41, 46, v42, *(v28 + 40), v43);
          v44 = sub_66A18();
          v45 = sub_56B04(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v44, 46, v45, *(v28 + 40), *(v9 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v41, 46, v42, *(v28 + 40), v43);
        }
      }

      v86 = (a1 + 26032);
      v87 = 30;
      do
      {
        if (*v86)
        {
          IOSurfaceUnlock(*v86, 0, 0);
          CFRelease(*v86);
          *v86 = 0;
        }

        v88 = v86[85];
        if (v88)
        {
          IOSurfaceUnlock(v88, 0, 0);
          CFRelease(v86[85]);
          v86[85] = 0;
        }

        v89 = v86[160];
        if (v89)
        {
          IOSurfaceUnlock(v89, 0, 0);
          CFRelease(v86[160]);
          v86[160] = 0;
        }

        v90 = v86[220];
        if (v90)
        {
          IOSurfaceUnlock(v90, 0, 0);
          CFRelease(v86[220]);
          v86[220] = 0;
        }

        ++v86;
        --v87;
      }

      while (v87);
      sub_6C774(*(a1 + 29328), v367);
      v362 = -1;
      v9 = v39;
      goto LABEL_103;
    }

    goto LABEL_51;
  }

  v30 = a2;
  v31 = (a1 + 25784);
  if (v29 == 10)
  {
    if (sub_56A8C(0x2Eu, 7))
    {
      v46 = sub_56AD0(0x2Eu);
      v47 = sub_66A18();
      v48 = sub_56B04(7);
      v49 = *(v28 + 40);
      if (v46)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d\n", v47, 46, v48, v49);
        v50 = sub_66A18();
        v333 = sub_56B04(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v50, 46, v333, *(v28 + 40));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v47, 46, v48, v49);
      }
    }

    if (*v363)
    {
      sub_5A640((a1 + 16), *v363, 0);
    }

    *v31 = 0;
    if (*(a1 + 29360))
    {
      FigFormatDescriptionRelease();
      *(a1 + 29360) = 0;
    }

    goto LABEL_62;
  }

  if (v29 == 8)
  {
    if (sub_56A8C(0x2Eu, 7))
    {
      v51 = v30;
      v52 = sub_56AD0(0x2Eu);
      v53 = sub_66A18();
      v54 = sub_56B04(7);
      v55 = *(v28 + 40);
      v56 = *(v9 + 3);
      if (v52)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld\n", v53, 46, v54, v55, v365, v56);
        v57 = sub_66A18();
        v58 = sub_56B04(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v57, 46, v58, *(v28 + 40), v365, *(v9 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v53, 46, v54, v55, v365, v56);
      }

      v30 = v51;
    }

LABEL_62:
    sub_6C774(*(a1 + 29328), v28);
LABEL_63:
    v362 = -1;
LABEL_103:
    a2 = v30;
    goto LABEL_104;
  }

  if (v29 != 7)
  {
LABEL_51:
    if (sub_56A8C(0x2Eu, 4))
    {
      v62 = sub_56AD0(0x2Eu);
      v63 = sub_66A18();
      v64 = sub_56B04(4);
      v65 = *(v28 + 4);
      if (v62)
      {
        printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v63, 46, v64, v65);
        v66 = sub_66A18();
        v334 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v66, 46, v334, *(v28 + 4));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v63, 46, v64, v65);
      }
    }

    goto LABEL_63;
  }

  v360 = a3;
  v32 = a1 + 38944;
  *(v28 + 33080) = sub_66A18();
  if (sub_56A8C(0x2Eu, 7))
  {
    v33 = a5;
    v34 = v6;
    v35 = v30;
    v36 = sub_56AD0(0x2Eu);
    v37 = sub_66A18();
    v38 = sub_56B04(7);
    if (v36)
    {
      printf("%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d\n", v37, 46, v38, *(v28 + 40), *(v28 + 2456), *(v9 + 3), v34);
      v37 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d", v37);
    v30 = v35;
    v6 = v34;
    a5 = v33;
    v32 = a1 + 38944;
  }

  if (!*(v28 + 40))
  {
    *(a1 + 29320) = *(v28 + 4608);
  }

  if (*(v32 + 308) >= 2u && *(v28 + 44) && *(a1 + 29277) == 1)
  {
    *(v28 + 2456) = 4;
  }

  v67 = *v9;
  if (*v9 == 5)
  {
    v76 = sub_2F51C(a1, v28);
    sub_6C774(*(a1 + 29328), v28);
    if (v76)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (sub_56A8C(3u, 4))
      {
        v77 = sub_56AD0(3u);
        v78 = sub_66A18();
        v79 = sub_56B04(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.\n", v78, 3, v79, "FrameDone", 3629, "err == noErr");
          sub_66A18();
          sub_56B04(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.");
      }

      goto LABEL_344;
    }

LABEL_86:
    v362 = -1;
    a3 = v360;
    goto LABEL_103;
  }

  if (v67 == 4)
  {
    v72 = sub_30970(a1, v28);
    sub_6C774(*(a1 + 29328), v28);
    if (v72)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (sub_56A8C(0x2Eu, 4))
      {
        v73 = sub_56AD0(0x2Eu);
        v74 = sub_66A18();
        v75 = sub_56B04(4);
        if (v73)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done\n", v74, 46, v75, "FrameDone", 3620, "err == noErr");
          sub_66A18();
          sub_56B04(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  if (v67 == 3)
  {
    v68 = sub_30688(a1, v28);
    sub_6C774(*(a1 + 29328), v28);
    if (v68)
    {
      a3 = v360;
      LODWORD(a5) = v364;
      a2 = v30;
      if (sub_56A8C(3u, 4))
      {
        v69 = sub_56AD0(3u);
        v70 = sub_66A18();
        v71 = sub_56B04(4);
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.\n", v70, 3, v71, "FrameDone", 3613, "err == noErr");
          sub_66A18();
          sub_56B04(4);
          a3 = v360;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.");
      }

      goto LABEL_344;
    }

    goto LABEL_86;
  }

  v80 = *(v28 + 2456);
  if (v80 >= 4)
  {
    if (v80 == 4)
    {
      a2 = v30;
      if (sub_56A8C(0x2Eu, 5))
      {
        v287 = sub_56AD0(0x2Eu);
        v288 = sub_66A18();
        v289 = sub_56B04(5);
        v290 = *(v28 + 40);
        v291 = *(v28 + 2456);
        if (v287)
        {
          printf("%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d\n", v288, 46, v289, v290, v291);
          v292 = sub_66A18();
          v293 = sub_56B04(5);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v292, 46, v293, *(v28 + 40), *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v288, 46, v289, v290, v291);
        }
      }

      v104 = sub_2FC6C(a1, v28);
      v297 = 0;
      v308 = 0;
      v319 = -1;
LABEL_367:
      v362 = v319;
      goto LABEL_368;
    }

    if (v80 != 6)
    {
      if (sub_56A8C(0x2Eu, 4))
      {
        a2 = v30;
        v210 = sub_56AD0(0x2Eu);
        v211 = sub_66A18();
        v212 = sub_56B04(4);
        v213 = *(v28 + 2456);
        if (v210)
        {
          printf("%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.\n", v211, 46, v212, v213);
          v214 = sub_66A18();
          v342 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v214, 46, v342, *(v28 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v211, 46, v212, v213);
        }

        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
      }

      else
      {
        v297 = 0;
        v308 = 0;
        v104 = 0;
        v362 = -1;
        a2 = v30;
      }

      goto LABEL_368;
    }
  }

  if (sub_56A8C(0x2Eu, 8))
  {
    v81 = v30;
    v82 = sub_56AD0(0x2Eu);
    v83 = sub_66A18();
    v84 = sub_56B04(8);
    if (v82)
    {
      printf("%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d\n", v83, 46, v84, "AVE_FrameRecv", "FrameDone", 3645, *v9, *(v28 + 40), *(v28 + 2456), *(a1 + 29360), *v31, *(v32 + 504), *(v28 + 6081));
      v85 = sub_66A18();
      v335 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v85, 46, v335, "AVE_FrameRecv", "FrameDone");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v83, 46, v84, "AVE_FrameRecv", "FrameDone");
    }

    v30 = v81;
    a5 = v364;
  }

  v279 = *(a1 + 29360);
  if (v279 || *v31 == 1)
  {
    a2 = v30;
    if (*(v32 + 504) == 2 && *(v28 + 6081) == 1)
    {
      if (v279)
      {
        FigFormatDescriptionRelease();
        *(a1 + 29360) = 0;
      }

      if (sub_2BFC0(a1, v28))
      {
        a3 = v360;
        if (sub_56A8C(0x2Eu, 4))
        {
          v280 = a5;
          v281 = sub_56AD0(0x2Eu);
          v282 = sub_66A18();
          v283 = sub_56B04(4);
          if (v281)
          {
            v284 = v367;
            v349 = v367;
            v285 = a1;
            v346 = a1;
            v286 = 3667;
LABEL_326:
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p\n", v282, 46, v283, "AVE_FrameRecv", "FrameDone", v286, "ret == 0", v346, v349);
            v282 = sub_66A18();
            v347 = v285;
            v350 = v284;
            v345 = v286;
            a2 = v30;
            a3 = v360;
            v343 = sub_56B04(4);
            v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
LABEL_386:
            syslog(3, v295, v282, 46, v343, "AVE_FrameRecv", "FrameDone", v345, "ret == 0", v347, v350, v352);
            LODWORD(a5) = v280;
            goto LABEL_344;
          }

          v350 = v367;
          v347 = a1;
          v330 = 3667;
          goto LABEL_385;
        }

        goto LABEL_344;
      }
    }
  }

  else
  {
    a2 = v30;
    if (*v9 == 1 && sub_2BFC0(a1, v28))
    {
      a3 = v360;
      if (sub_56A8C(0x2Eu, 4))
      {
        v280 = a5;
        v294 = sub_56AD0(0x2Eu);
        v282 = sub_66A18();
        v283 = sub_56B04(4);
        if (v294)
        {
          v284 = v367;
          v349 = v367;
          v285 = a1;
          v346 = a1;
          v286 = 3675;
          goto LABEL_326;
        }

        v350 = v367;
        v347 = a1;
        v330 = 3675;
LABEL_385:
        v345 = v330;
        v343 = v283;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
        goto LABEL_386;
      }

LABEL_344:
      v312 = *(v367 + 2600);
      if (v312)
      {
        CVPixelBufferRelease(v312);
        *(v367 + 2600) = 0;
      }

      v313 = *(v367 + 2608);
      if (v313)
      {
        CVPixelBufferRelease(v313);
        *(v367 + 2608) = 0;
      }

      goto LABEL_348;
    }
  }

  v296 = *(v32 + 4) - 1;
  v297 = v296 == a5;
  if ((a5 & 0x80000000) != 0 || !*v32)
  {
    v304 = *v9;
    if (*v9 == 2)
    {
      if (sub_2D5B8(a1, v367))
      {
        a3 = v360;
        if (sub_56A8C(3u, 4))
        {
          v305 = sub_56AD0(3u);
          v306 = sub_66A18();
          v307 = sub_56B04(4);
          if (v305)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed\n", v306, 3, v307, "FrameDone", 3704, "err == noErr");
            sub_66A18();
            sub_56B04(4);
            a3 = v360;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed");
        }

        goto LABEL_344;
      }

      v308 = 0;
      v319 = a5;
      v104 = 0;
    }

    else
    {
      if (*v32)
      {
        v308 = 0;
        v309 = a5;
        v104 = 0;
        v362 = v309;
LABEL_369:
        if (v304 == 1)
        {
          v322 = *(v32 + 1752);
          v323 = sub_66A18();
          sub_1FEEC(v322, 5u, v323);
        }

        a3 = v360;
        if (v104 && sub_56A8C(0x2Eu, 4))
        {
          v324 = v9;
          v325 = a2;
          v326 = sub_56AD0(0x2Eu);
          v327 = sub_66A18();
          v328 = sub_56B04(4);
          if (v326)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.\n", v327, 46, v328);
            v329 = sub_66A18();
            v344 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v329, 46, v344);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v327, 46, v328);
          }

          a2 = v325;
          v9 = v324;
        }

        sub_6C774(*(a1 + 29328), v367);
        if (v297 || (v308 & 1) == 0)
        {
          goto LABEL_104;
        }

        if (!v308)
        {
          goto LABEL_121;
        }

        goto LABEL_379;
      }

      if (sub_2A9CC(a1, *(v367 + 3180), *(v367 + 44)))
      {
        a3 = v360;
        if (!sub_56A8C(0x2Eu, 4))
        {
          goto LABEL_344;
        }

        v280 = a5;
        v318 = sub_56AD0(0x2Eu);
        v282 = sub_66A18();
        v299 = sub_56B04(4);
        if (v318)
        {
          v300 = v367;
          v351 = *(v367 + 3180);
          v353 = *(v367 + 44);
          v301 = a1;
          v348 = a1;
          v302 = 3716;
          goto LABEL_333;
        }

        v350 = *(v367 + 3180);
        v352 = *(v367 + 44);
        v347 = a1;
        v320 = 3716;
LABEL_361:
        v345 = v320;
        v343 = v299;
        v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
        goto LABEL_386;
      }

      v370 = 0;
      v368 = 0u;
      v369 = 0u;
      sub_3B1E8(*(a1 + 29336), &v368);
      v321 = sub_30CB4(a1, v367, &v368, 0xFFFFFFFFLL);
      v319 = a5;
      v104 = v321;
      v308 = 0;
    }

    goto LABEL_367;
  }

  if (sub_2A9CC(a1, *(v367 + 3180), *(v367 + 44)))
  {
    a3 = v360;
    if (!sub_56A8C(0x2Eu, 4))
    {
      goto LABEL_344;
    }

    v280 = a5;
    v298 = sub_56AD0(0x2Eu);
    v282 = sub_66A18();
    v299 = sub_56B04(4);
    if (v298)
    {
      v300 = v367;
      v351 = *(v367 + 3180);
      v353 = *(v367 + 44);
      v301 = a1;
      v348 = a1;
      v302 = 3692;
LABEL_333:
      printf("%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d\n", v282, 46, v299, "AVE_FrameRecv", "FrameDone", v302, "ret == 0", v348, v351, v353);
      v282 = sub_66A18();
      v303 = sub_56B04(4);
      v350 = *(v300 + 3180);
      v352 = *(v300 + 44);
      v347 = v301;
      v345 = v302;
      a2 = v30;
      v343 = v303;
      a3 = v360;
      v295 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
      goto LABEL_386;
    }

    v350 = *(v367 + 3180);
    v352 = *(v367 + 44);
    v347 = a1;
    v320 = 3692;
    goto LABEL_361;
  }

  v370 = 0;
  v368 = 0u;
  v369 = 0u;
  sub_3B1E8(*(a1 + 29336), &v368);
  v310 = sub_30CB4(a1, v367, &v368, a5);
  v311 = a5;
  v104 = v310;
  if (v296 == v311)
  {
    v297 = 1;
    v362 = v311;
    v308 = 1;
LABEL_368:
    v304 = *v9;
    goto LABEL_369;
  }

  v362 = v311;
  a3 = v360;
LABEL_379:
  if (*(v367 + 2456) != 4)
  {
LABEL_121:
    v105 = *(v367 + 4);
    if (v105 <= 6)
    {
      if (v105 == 5)
      {
        v368 = 0u;
        v369 = 0u;
        v6 = v365;
        LODWORD(v368) = v365;
        v370 = a2;
        v118 = sub_3B258(*(a1 + 29344), &v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!sub_56A8C(3u, 4))
          {
            goto LABEL_344;
          }

          v119 = sub_56AD0(3u);
          v113 = sub_66A18();
          v114 = sub_56B04(4);
          if (!v119)
          {
            goto LABEL_302;
          }

          v115 = 4018;
          goto LABEL_167;
        }

        if (!v118)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!sub_56A8C(3u, 4))
        {
          goto LABEL_344;
        }

        v129 = sub_56AD0(3u);
        v126 = sub_66A18();
        v127 = sub_56B04(4);
        if (!v129)
        {
          goto LABEL_343;
        }

        v128 = 4019;
      }

      else
      {
        v6 = v365;
        if (v105 != 6)
        {
          goto LABEL_146;
        }

        v368 = 0u;
        v369 = 0u;
        LODWORD(v368) = v365;
        v370 = a2;
        v111 = sub_3B258(*(a1 + 29344), &v368);
        if (v104)
        {
          LODWORD(a5) = v364;
          if (!sub_56A8C(3u, 4))
          {
            goto LABEL_344;
          }

          v112 = sub_56AD0(3u);
          v113 = sub_66A18();
          v114 = sub_56B04(4);
          if (!v112)
          {
            goto LABEL_302;
          }

          v115 = 4034;
LABEL_167:
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.\n", v113, 3, v114, "FrameDone", v115, "err == noErr");
          sub_66A18();
          sub_56B04(4);
          goto LABEL_302;
        }

        if (!v111)
        {
          goto LABEL_174;
        }

        LODWORD(a5) = v364;
        if (!sub_56A8C(3u, 4))
        {
          goto LABEL_344;
        }

        v130 = sub_56AD0(3u);
        v126 = sub_66A18();
        v127 = sub_56B04(4);
        if (!v130)
        {
          goto LABEL_343;
        }

        v128 = 4035;
      }
    }

    else
    {
      v6 = v365;
      if (v105 == 7)
      {
        goto LABEL_174;
      }

      if (v105 != 10)
      {
        if (v105 == 8)
        {
          v368 = 0u;
          v369 = 0u;
          LODWORD(v368) = v365;
          v370 = a2;
          if (sub_56A8C(0x2Eu, 7))
          {
            v106 = sub_56AD0(0x2Eu);
            v107 = sub_66A18();
            v108 = sub_56B04(7);
            if (v106)
            {
              printf("%lld %d AVE %s: H264FrameRec: writePacketBlock = %d\n", v107, 46, v108, v365);
              v109 = sub_66A18();
              v110 = sub_56B04(7);
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v109, 46, v110, v365);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v107, 46, v108, v365);
            }

            v6 = v365;
          }

          v131 = sub_3B258(*(a1 + 29344), &v368);
          if (v104)
          {
            LODWORD(a5) = v364;
            if (!sub_56A8C(3u, 4))
            {
              goto LABEL_344;
            }

            v132 = sub_56AD0(3u);
            v113 = sub_66A18();
            v114 = sub_56B04(4);
            if (v132)
            {
              v115 = 4002;
              goto LABEL_167;
            }

LABEL_302:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.");
            goto LABEL_344;
          }

          if (v131)
          {
            LODWORD(a5) = v364;
            if (!sub_56A8C(3u, 4))
            {
              goto LABEL_344;
            }

            v133 = sub_56AD0(3u);
            v126 = sub_66A18();
            v127 = sub_56B04(4);
            if (v133)
            {
              v128 = 4003;
              goto LABEL_172;
            }

LABEL_343:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread");
            goto LABEL_344;
          }

LABEL_174:
          LODWORD(a5) = v364;
          if ((*(sub_4C960() + 412) & 0x20) != 0)
          {
            v361 = a3;
            v134 = a1 + 139568;
            v135 = *(a1 + 139568 + 16 * *(v367 + 40) + 8);
            if (sub_56A8C(0x2Eu, 8))
            {
              v136 = sub_56AD0(0x2Eu);
              v137 = sub_66A18();
              v138 = sub_56B04(8);
              if (v136)
              {
                printf("%lld %d AVE %s: \n", v137, 46, v138);
                v139 = sub_66A18();
                v338 = sub_56B04(8);
                v134 = a1 + 139568;
                syslog(3, "%lld %d AVE %s: ", v139, 46, v338);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: ", v137, 46, v138);
              }
            }

            v140 = v135;
            v141 = *(v367 + 40) - 1;
            v355 = v9;
            v358 = a2;
            if (v141 < 0)
            {
              v151 = 0;
              LODWORD(v143) = 0;
              v152 = 0;
              *(v367 + 34744) = 0;
              v145 = 0.0;
            }

            else
            {
              v354 = *(v367 + 40);
              v142 = 0;
              LODWORD(v143) = 0;
              while (1)
              {
                v144 = (v134 + 16 * v141);
                v145 = (v140 - v144[1]) / *(v367 + 4616);
                if (sub_56A8C(0x2Eu, 8))
                {
                  v146 = sub_56AD0(0x2Eu);
                  v147 = sub_66A18();
                  v148 = sub_56B04(8);
                  v149 = *(v367 + 40);
                  if (v146)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v147, 46, v148, v149, v141, v143, v145, v142);
                    v150 = sub_66A18();
                    v134 = a1 + 139568;
                    v339 = sub_56B04(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v150, 46, v339, *(v367 + 40), v141, v143, v145, v142);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v147, 46, v148, v149, v141, v143, v145, v142);
                  }
                }

                v143 = *v144 + v143;
                if (v145 >= 0.1)
                {
                  break;
                }

                --v141;
                ++v142;
                if (v141 == -1)
                {
                  v151 = v354;
                  goto LABEL_190;
                }
              }

              v151 = v142 + 1;
LABEL_190:
              *(v367 + 34744) = v143;
              if (v145 == 0.0)
              {
                v152 = 0;
              }

              else
              {
                v152 = (v143 / v145);
              }
            }

            if (sub_56A8C(0x2Eu, 8))
            {
              v153 = sub_56AD0(0x2Eu);
              v154 = sub_66A18();
              v155 = sub_56B04(8);
              if (v153)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d\n", v154, 46, v155, *(v367 + 40), v151, v143, v145, v152);
                v156 = sub_66A18();
                sub_56B04(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v156);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v154);
              }
            }

            v157 = *(v367 + 40);
            v158 = v157 - 1;
            if (v157 - 1 < 0)
            {
              v160 = 0;
              LODWORD(v159) = 0;
              v168 = 0;
              *(v367 + 34752) = 0;
              v162 = 0.0;
            }

            else
            {
              LODWORD(v159) = 0;
              v160 = 1;
              while (1)
              {
                v161 = (v134 + 16 * v158);
                v162 = (v140 - v161[1]) / *(v367 + 4616);
                v159 = *v161 + v159;
                if (sub_56A8C(0x2Eu, 8))
                {
                  v163 = sub_56AD0(0x2Eu);
                  v164 = sub_66A18();
                  v165 = sub_56B04(8);
                  v166 = *(v367 + 40);
                  if (v163)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v164, 46, v165, v166, v158, v159, v162, v160);
                    v167 = sub_66A18();
                    v340 = sub_56B04(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v167, 46, v340, *(v367 + 40), v158, v159, v162, v160);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v164, 46, v165, v166, v158, v159, v162, v160);
                  }
                }

                if (v162 >= 0.5)
                {
                  break;
                }

                --v158;
                ++v160;
                if (v158 == -1)
                {
                  v160 = v157;
                  break;
                }
              }

              *(v367 + 34752) = v159;
              if (v162 == 0.0)
              {
                v168 = 0;
              }

              else
              {
                v168 = (v159 / v162);
              }
            }

            if (sub_56A8C(0x2Eu, 8))
            {
              v169 = sub_56AD0(0x2Eu);
              v170 = sub_66A18();
              v171 = sub_56B04(8);
              if (v169)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v170, 46, v171, *(v367 + 40), v160, v159, v162, v168);
                v172 = sub_66A18();
                sub_56B04(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v172);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v170);
              }
            }

            if (*(v367 + 40) - 1 <= 0)
            {
              v174 = 0;
              LODWORD(v173) = 0;
              v185 = 0;
              *(v367 + 34760) = 0;
              v177 = 0.0;
            }

            else
            {
              LODWORD(v173) = 0;
              v174 = 1;
              v359 = *(v367 + 40) - 1;
              v175 = v359;
              while (1)
              {
                v176 = (v134 + 16 * v175);
                v177 = (v140 - v176[1]) / *(v367 + 4616);
                v173 = *v176 + v173;
                if (sub_56A8C(0x2Eu, 8))
                {
                  v178 = sub_56AD0(0x2Eu);
                  v179 = sub_66A18();
                  v180 = sub_56B04(8);
                  v181 = *(v367 + 40);
                  v182 = *v176;
                  if (v178)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d\n", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                    v183 = sub_66A18();
                    v184 = sub_56B04(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v183, 46, v184, *(v367 + 40), v175, v173, *v176, v177, v174);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v179, 46, v180, v181, v175, v173, v182, v177, v174);
                  }
                }

                if (v177 >= 1.0)
                {
                  break;
                }

                ++v174;
                if (!--v175)
                {
                  v174 = v359;
                  break;
                }
              }

              *(v367 + 34760) = v173;
              if (v177 == 0.0)
              {
                v185 = 0;
              }

              else
              {
                v185 = (v173 / v177);
              }
            }

            if (sub_56A8C(0x2Eu, 8))
            {
              v186 = sub_56AD0(0x2Eu);
              v187 = sub_66A18();
              v188 = sub_56B04(8);
              if (v186)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######\n", v187, 46, v188, *(v367 + 40), v174, v173, v177, v185);
                v189 = sub_66A18();
                sub_56B04(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v189);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v187);
              }
            }

            v190 = *(v367 + 40);
            v191 = v190 - 1;
            if (v190 - 1 < 0)
            {
              v193 = 0;
              LODWORD(v192) = 0;
              v202 = 0;
              *(v367 + 34768) = 0;
              v195 = 0.0;
              v6 = v365;
              v201 = v355;
            }

            else
            {
              LODWORD(v192) = 0;
              v193 = 1;
              v6 = v365;
              while (1)
              {
                v194 = (v134 + 16 * v191);
                v195 = (v140 - v194[1]) / *(v367 + 4616);
                v192 = *v194 + v192;
                if (sub_56A8C(0x2Eu, 8))
                {
                  v196 = sub_56AD0(0x2Eu);
                  v197 = sub_66A18();
                  v198 = sub_56B04(8);
                  v199 = *(v367 + 40);
                  if (v196)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v197, 46, v198, v199, v191, v192, v195, v193);
                    v200 = sub_66A18();
                    v6 = v365;
                    v341 = sub_56B04(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v200, 46, v341, *(v367 + 40), v191, v192, v195, v193);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v197, 46, v198, v199, v191, v192, v195, v193);
                  }
                }

                if (v195 >= 2.0)
                {
                  break;
                }

                --v191;
                ++v193;
                if (v191 == -1)
                {
                  v193 = v190;
                  break;
                }
              }

              *(v367 + 34768) = v192;
              v201 = v355;
              if (v195 == 0.0)
              {
                v202 = 0;
              }

              else
              {
                v202 = (v192 / v195);
              }
            }

            if (sub_56A8C(0x2Eu, 8))
            {
              v203 = sub_56AD0(0x2Eu);
              v204 = sub_66A18();
              v205 = sub_56B04(8);
              if (v203)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v204, 46, v205, *(v367 + 40), v193, v192, v195, v202);
                v206 = sub_66A18();
                sub_56B04(8);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v206);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v204);
              }
            }

            v207 = *(a1 + 39588);
            *(a1 + 137852) = (*(a1 + 29992) & 2) != 0;
            v208 = v201[1];
            *(a1 + 137844) = v207;
            *(a1 + 137848) = v208;
            *(a1 + 137840) = *(sub_4C960() + 104) & 0x20;
            *(a1 + 137853) = *(a1 + 38944);
            *(a1 + 137856) = v362;
            v209 = sub_1D4C0(*(a1 + 40704), 5u, *(v367 + 24));
            sub_20428((a1 + 137840), v367, v209);
            memcpy((a1 + 137864), (v367 + 33048), 0x698uLL);
            *(a1 + 139552) = *(v367 + 4608);
            a2 = v358;
            a3 = v361;
            LODWORD(a5) = v364;
          }

          goto LABEL_344;
        }

LABEL_146:
        if (sub_56A8C(0x2Eu, 4))
        {
          v120 = sub_56AD0(0x2Eu);
          v121 = sub_66A18();
          v122 = sub_56B04(4);
          v123 = *(v367 + 4);
          if (v120)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v121, 46, v122, v123);
            v124 = sub_66A18();
            v337 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v124, 46, v337, *(v367 + 4));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v121, 46, v122, v123);
          }
        }

        goto LABEL_174;
      }

      v368 = 0u;
      v369 = 0u;
      LODWORD(v368) = v365;
      v370 = a2;
      v116 = sub_3B258(*(a1 + 29344), &v368);
      if (v104)
      {
        LODWORD(a5) = v364;
        if (!sub_56A8C(3u, 4))
        {
          goto LABEL_344;
        }

        v117 = sub_56AD0(3u);
        v113 = sub_66A18();
        v114 = sub_56B04(4);
        if (!v117)
        {
          goto LABEL_302;
        }

        v115 = 4050;
        goto LABEL_167;
      }

      if (!v116)
      {
        goto LABEL_174;
      }

      LODWORD(a5) = v364;
      if (!sub_56A8C(3u, 4))
      {
        goto LABEL_344;
      }

      v125 = sub_56AD0(3u);
      v126 = sub_66A18();
      v127 = sub_56B04(4);
      if (!v125)
      {
        goto LABEL_343;
      }

      v128 = 4051;
    }

LABEL_172:
    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread\n", v126, 3, v127, "FrameDone", v128, "ret == 0");
    sub_66A18();
    sub_56B04(4);
    goto LABEL_343;
  }

LABEL_104:
  a5 = *(a1 + 29336);
  pthread_mutex_lock(a5);
  do
  {
    v92 = *(a5 + 208);
    v91 = *(a5 + 216);
    if (v91 > v92)
    {
      v97 = v92 + 1;
      *(a5 + 208) = v97;
      v98 = v91 <= v97;
      v99 = v91 - v97;
      if (v98)
      {
        v99 = 0;
      }

      if (v99 < *(a5 + 200))
      {
        pthread_cond_signal((a5 + 112));
      }

      pthread_mutex_unlock(a5);
      if (sub_56A8C(0x2Eu, 7))
      {
        v100 = sub_56AD0(0x2Eu);
        v101 = sub_66A18();
        v102 = sub_56B04(7);
        if (v100)
        {
          printf("%lld %d AVE %s: H264FrameRec: readPacketBlock = %d\n", v101, 46, v102, v365);
          v103 = sub_66A18();
          v336 = sub_56B04(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v103, 46, v336, v365);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v101, 46, v102, v365);
        }
      }

      v104 = 0;
      goto LABEL_121;
    }

    gettimeofday((a5 + 176), 0);
    v93 = 1000 * *(a5 + 184);
    *(a5 + 160) = *(a5 + 176) + 120;
    *(a5 + 168) = v93;
  }

  while (pthread_cond_timedwait((a5 + 64), a5, (a5 + 160)) != 60);
  pthread_mutex_unlock(a5);
  LODWORD(a5) = v364;
  if (sub_56A8C(3u, 4))
  {
    v94 = sub_56AD0(3u);
    v95 = sub_66A18();
    v96 = sub_56B04(4);
    if (v94)
    {
      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d\n", v95, 3, v96, "FrameDone", 3978, "err == noErr", -1);
      v95 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d", v95);
  }

  v6 = v365;
  if (v367)
  {
    goto LABEL_344;
  }

LABEL_348:
  if (sub_56A8C(0x2Eu, 8))
  {
    v314 = sub_56AD0(0x2Eu);
    v315 = sub_66A18();
    v316 = sub_56B04(8);
    if (v314)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v315, 46, v316, "FrameDone", a2, a3, v6, a5);
      v317 = sub_66A18();
      sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v317);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v315);
    }
  }
}

uint64_t sub_3B1E8(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 208);
  if (*(a1 + 216) > v4)
  {
    v5 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
    v6 = *v5;
    v7 = *(v5 + 16);
    *(a2 + 32) = *(v5 + 32);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_3B258(uint64_t a1, __int128 *a2)
{
  pthread_mutex_lock(a1);
  while (1)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if ((v7 < 0) ^ v6 | (v7 == 0))
    {
      v7 = 0;
    }

    if (v7 < *(a1 + 200))
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v8 = 1000 * *(a1 + 184);
    *(a1 + 160) = *(a1 + 176) + 120;
    *(a1 + 168) = v8;
    if (pthread_cond_timedwait((a1 + 112), a1, (a1 + 160)) == 60)
    {
      if (sub_56A8C(0x2Au, 4))
      {
        v9 = sub_56AD0(0x2Au);
        v10 = sub_66A18();
        v11 = sub_56B04(4);
        v13 = *(a1 + 208);
        v12 = *(a1 + 216);
        v14 = v12 <= v13;
        v15 = v12 - v13;
        if (v14)
        {
          v15 = 0;
        }

        if (v9)
        {
          printf("%lld %d AVE %s: H264 Connection: connection full %lld\n", v10, 42, v11, v15);
          v10 = sub_66A18();
          v11 = sub_56B04(4);
          v17 = *(a1 + 208);
          v16 = *(a1 + 216);
          v14 = v16 <= v17;
          v15 = v16 - v17;
          if (v14)
          {
            v15 = 0;
          }
        }

        syslog(3, "%lld %d AVE %s: H264 Connection: connection full %lld", v10, 42, v11, v15);
      }

      v23 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }
  }

  v18 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
  v19 = *a2;
  v20 = a2[1];
  *(v18 + 32) = *(a2 + 4);
  *v18 = v19;
  *(v18 + 16) = v20;
  v22 = *(a1 + 208);
  v21 = *(a1 + 216);
  *(a1 + 216) = v21 + 1;
  if (v21 >= v22)
  {
    pthread_cond_signal((a1 + 64));
  }

  v23 = 0;
LABEL_20:
  pthread_mutex_unlock(a1);
  return v23;
}

uint64_t sub_3B3DC(uint64_t a1)
{
  *(a1 + 25352) = 0u;
  *(a1 + 25368) = 0;
  v2 = a1 + 24576;
  *(a1 + 25384) = 0u;
  *(a1 + 25400) = 0u;
  *(a1 + 25416) = 0u;
  *(a1 + 25432) = 0u;
  *(a1 + 25448) = 0u;
  *(a1 + 25464) = 0u;
  sub_3B454(a1);
  *(v2 + 904) = 0;
  *(a1 + 25488) = 0;
  *(a1 + 25760) = 0;
  bzero((a1 + 25496), 0x108uLL);
  *(v2 + 996) = 0;
  *(a1 + 25344) = 0;
  return a1;
}

void sub_3B454(uint64_t a1)
{
  v2 = (a1 + 25352);
  v3 = *(a1 + 25352);
  if (v3)
  {
    *(a1 + 25360) = v3;
    operator delete(v3);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v4 = *(a1 + 25392);
  v5 = *(a1 + 25400);
  *(a1 + 25424) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(a1 + 25392) + 8);
      *(a1 + 25392) = v4;
      v6 = (*(a1 + 25400) - v4) >> 3;
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

  *(a1 + 25416) = v7;
LABEL_10:
  v8 = *(a1 + 25440);
  v9 = *(a1 + 25448);
  *(a1 + 25472) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v8 = (*(a1 + 25440) + 8);
      *(a1 + 25440) = v8;
      v10 = (*(a1 + 25448) - v8) >> 3;
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
    *(a1 + 25464) = v11;
  }

  v12 = 0;
  v13 = xmmword_B1D40;
  v14 = vdupq_n_s64(a1 + 2);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v16.i64[0] = 1574 * v13.i64[0];
    v16.i64[1] = 1574 * v13.i64[1];
    *(a1 + 25192 + v12) = vaddq_s64(v14, v16);
    v13 = vaddq_s64(v13, v15);
    v12 += 16;
  }

  while (v12 != 128);
  *(a1 + 25320) = 16;
}

uint64_t sub_3B5C0(void *a1)
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

  return sub_3B66C(a1);
}

uint64_t sub_3B66C(uint64_t a1)
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

void *sub_3B6BC(void *a1)
{
  sub_3B5C0(a1 + 3179);
  sub_3B5C0(a1 + 3173);
  v2 = a1[3169];
  if (v2)
  {
    a1[3170] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_3B710(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 20);
  v6 = a2[2995];
  v7 = a2[662];
  v8 = a2[663];
  *(a3 + 16) = sub_44A14(*(a1 + 8), v6, HIWORD(a2[166]) & 1, a4);
  *(a3 + 20) = sub_44A28(v5, v6, v7, v8);
  return 0;
}

uint64_t sub_3B784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = sub_44AB8(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = sub_44ACC(v5, v6);
  return 0;
}

uint64_t sub_3B804(uint64_t a1, int a2, void *a3)
{
  v4 = a1;
  bzero(v16, 0x7A0uLL);
  if (sub_56A8C(0x28u, 6))
  {
    v5 = sub_56AD0(0x28u);
    v6 = sub_66A18();
    v7 = sub_56B04(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %d %d\n", v6, 40, v7, "AVE_USL_Drv_Create", v4, a2);
      v6 = sub_66A18();
      v7 = sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d", v6, 40, v7, "AVE_USL_Drv_Create", v4, a2);
  }

  v8 = malloc_type_malloc(0x19E98uLL, 0x10200409CA022ABuLL);
  if (v8)
  {
    bzero(v8, 0x19E98uLL);
    operator new();
  }

  if (sub_56A8C(0x28u, 4))
  {
    v9 = sub_56AD0(0x28u);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to allocate %d %d\n", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to allocate %d %d", v10, 40, v11, "AVE_USL_Drv_Create", 354, "pINS != __null", v4, a2);
  }

  if (sub_56A8C(0x28u, 6))
  {
    v12 = sub_56AD0(0x28u);
    v13 = sub_66A18();
    v14 = sub_56B04(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d\n", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
      v13 = sub_66A18();
      v14 = sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d %d", v13, 40, v14, "AVE_USL_Drv_Create", v4, a2, -1003);
  }

  return 4294966293;
}

uint64_t sub_3BF08(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_3BF14(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sub_3BF20(void *a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  if (sub_56A8C(0x28u, 6))
  {
    v2 = sub_56AD0(0x28u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 40, v4, "AVE_USL_Drv_Destroy", a1);
      v5 = sub_66A18();
      v27 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 40, v27, "AVE_USL_Drv_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 40, v4, "AVE_USL_Drv_Destroy", a1);
    }
  }

  if (a1)
  {
    if (a1[3])
    {
      *&v33 = *a1;
      *(&v34 + 1) = 118000000;
      v35 = sub_66A18();
      v6 = sub_6EA00(a1[3], &v33, v32);
      if (v6)
      {
        v7 = v6;
        if (!sub_56A8C(0x28u, 4))
        {
LABEL_30:
          free(a1);
          goto LABEL_31;
        }

        v8 = sub_56AD0(0x28u);
        v9 = sub_66A18();
        v10 = sub_56B04(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %d\n", v9, 40, v10, "AVE_USL_Drv_Destroy", 528, "ret == 0", v7);
          v11 = sub_66A18();
          sub_56B04(4);
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

      sub_6A884(a1[3]);
      v15 = sub_6E330(a1[3]);
      if (v15)
      {
        v7 = v15;
        if (!sub_56A8C(0x28u, 4))
        {
          goto LABEL_30;
        }

        v16 = sub_56AD0(0x28u);
        v9 = sub_66A18();
        v17 = sub_56B04(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %d\n", v9, 40, v17, "AVE_USL_Drv_Destroy", 534, "ret == 0", v7);
          v18 = sub_66A18();
          sub_56B04(4);
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
        sub_6A494(v20);
        operator delete();
      }

      a1[3] = 0;
    }

    sub_3C3B8(a1);
    v21 = a1[13266];
    if (v21)
    {
      CVPixelBufferPoolRelease(v21);
    }

    v7 = 0;
    goto LABEL_30;
  }

  if (sub_56A8C(0x28u, 4))
  {
    v12 = sub_56AD0(0x28u);
    v13 = sub_66A18();
    v14 = sub_56B04(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v13, 40, v14, "AVE_USL_Drv_Destroy", 518, "pDrv != __null", 0);
      v13 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v13);
  }

  v7 = 4294966295;
LABEL_31:
  if (sub_56A8C(0x28u, 6))
  {
    v22 = sub_56AD0(0x28u);
    v23 = sub_66A18();
    v24 = sub_56B04(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
      v25 = sub_66A18();
      v29 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 40, v29, "AVE_USL_Drv_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t sub_3C3B8(uint64_t a1)
{
  v2 = a1 + 102400;
  v3 = *(a1 + 106064);
  if (v3)
  {
    sub_28E28(v3);
    operator delete();
  }

  v4 = *(v2 + 3672);
  if (v4)
  {
    sub_41708(v4);
    operator delete();
  }

  v5 = *(v2 + 3680);
  if (v5)
  {
    sub_41708(v5);
    operator delete();
  }

  sub_45AE0((a1 + 136));

  return sub_45510(a1 + 128);
}

uint64_t sub_3C464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9, void *__dst)
{
  v10 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v145 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v162 = -1;
  bzero(v163, 0x1A0B0uLL);
  memset(v161, 0, sizeof(v161));
  if (sub_56A8C(0x28u, 7))
  {
    v17 = sub_56AD0(0x28u);
    v18 = sub_66A18();
    v19 = sub_56B04(7);
    if (v17)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Start.\n", v18, 40, v19);
      v18 = sub_66A18();
      v19 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Start.", v18, 40, v19);
  }

  if (!v16)
  {
    if (sub_56A8C(3u, 4))
    {
      v26 = sub_56AD0(3u);
      v27 = sub_66A18();
      v28 = sub_56B04(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.\n", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
        v27 = sub_66A18();
        v28 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
    }

    goto LABEL_170;
  }

  if (!v15)
  {
    if (sub_56A8C(3u, 4))
    {
      v29 = sub_56AD0(3u);
      v30 = sub_66A18();
      v31 = sub_56B04(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.\n", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
        v30 = sub_66A18();
        v31 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
    }

    goto LABEL_170;
  }

  v20 = *v15;
  if (!*v15)
  {
    if (sub_56A8C(3u, 4))
    {
      v32 = sub_56AD0(3u);
      v33 = sub_66A18();
      v34 = sub_56B04(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.\n", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
        v33 = sub_66A18();
        v34 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
    }

    goto LABEL_170;
  }

  if (!v15[1])
  {
    if (sub_56A8C(3u, 4))
    {
      v35 = sub_56AD0(3u);
      v36 = sub_66A18();
      v37 = sub_56B04(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.\n", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
        v36 = sub_66A18();
        v37 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
    }

    goto LABEL_170;
  }

  v21 = v15[2];
  if (!v21)
  {
    if (sub_56A8C(3u, 4))
    {
      v38 = sub_56AD0(3u);
      v39 = sub_66A18();
      v40 = sub_56B04(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.\n", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
        v39 = sub_66A18();
        v40 = sub_56B04(4);
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
      if (sub_56A8C(3u, 4))
      {
        v49 = sub_56AD0(3u);
        v50 = sub_66A18();
        v51 = sub_56B04(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.\n", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
          v50 = sub_66A18();
          v51 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[289])
    {
      if (sub_56A8C(3u, 4))
      {
        v55 = sub_56AD0(3u);
        v56 = sub_66A18();
        v57 = sub_56B04(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.\n", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
          v56 = sub_66A18();
          v57 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[291])
    {
      if (sub_56A8C(3u, 4))
      {
        v58 = sub_56AD0(3u);
        v59 = sub_66A18();
        v60 = sub_56B04(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.\n", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
          v59 = sub_66A18();
          v60 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[293])
    {
      if (sub_56A8C(3u, 4))
      {
        v74 = sub_56AD0(3u);
        v75 = sub_66A18();
        v76 = sub_56B04(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.\n", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
          v75 = sub_66A18();
          v76 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[294])
    {
      if (sub_56A8C(3u, 4))
      {
        v88 = sub_56AD0(3u);
        v89 = sub_66A18();
        v90 = sub_56B04(4);
        if (v88)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.\n", v89, 3, v90, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
          v89 = sub_66A18();
          v90 = sub_56B04(4);
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
      if (sub_56A8C(3u, 4))
      {
        v43 = sub_56AD0(3u);
        v44 = sub_66A18();
        v45 = sub_56B04(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
          v44 = sub_66A18();
          v45 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    if (!v15[101])
    {
      if (sub_56A8C(3u, 4))
      {
        v46 = sub_56AD0(3u);
        v47 = sub_66A18();
        v48 = sub_56B04(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.\n", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
          v47 = sub_66A18();
          v48 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[102])
    {
      if (sub_56A8C(3u, 4))
      {
        v52 = sub_56AD0(3u);
        v53 = sub_66A18();
        v54 = sub_56B04(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.\n", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
          v53 = sub_66A18();
          v54 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[103])
    {
      if (sub_56A8C(3u, 4))
      {
        v23 = sub_56AD0(3u);
        v24 = sub_66A18();
        v25 = sub_56B04(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.\n", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
          v24 = sub_66A18();
          v25 = sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
      }

LABEL_170:
      v96 = 4294966295;
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
      if (sub_56A8C(3u, 4))
      {
        v71 = sub_56AD0(3u);
        v72 = sub_66A18();
        v73 = sub_56B04(4);
        if (v71)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
          v72 = sub_66A18();
          v73 = sub_56B04(4);
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
    v146 = 0u;
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

        v100 = sub_637D4(*(v16 + 80), *(v16 + 81), *(v16 + 82), *(v16 + 83), v106);
        goto LABEL_154;
      }

      if (v70 != 2)
      {
LABEL_155:
        v110 = sub_6B100(v16[3], (v84 + 1), 72736);
        if (!v110)
        {
          operator new();
        }

        v96 = v110;
        if (sub_56A8C(0xEu, 4))
        {
          v111 = sub_56AD0(0xEu);
          v112 = sub_66A18();
          v113 = sub_56B04(4);
          if (v111)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d\n", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, v96);
            v112 = sub_66A18();
            v113 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d", v112, 14, v113, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, v96);
        }

        goto LABEL_171;
      }
    }

    else if (v70 != 3 && v70 != 4 && v70 != 5)
    {
      goto LABEL_155;
    }

    v100 = sub_3B708();
LABEL_154:
    v84 = v100;
    goto LABEL_155;
  }

  *&v146 = 0;
  sub_6C1C4(v16[3], 72736, &v146);
  sub_6D25C(v16[3], v146, &v162);
  v79 = v146;
  if (!v146)
  {
    if (sub_56A8C(3u, 4))
    {
      v85 = sub_56AD0(3u);
      v86 = sub_66A18();
      v87 = sub_56B04(4);
      if (v85)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
        v86 = sub_66A18();
        v87 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v86, 3, v87, "AVE_USL_Drv_Start", 926, "Frame");
    }

    goto LABEL_164;
  }

  bzero((v146 + 8), 0x11C18uLL);
  v80 = v162;
  *v79 = v162;
  *(v79 + 4) = 5;
  *(v79 + 40) = *(v16 + 11);
  *(v79 + 33048) = v15[530];
  *(v79 + 16) = v142[461] != 0;
  *(v79 + 20) = *(v142 + 924);
  *&v148 = 0;
  v146 = 0u;
  v147 = 0u;
  LODWORD(v146) = v80;
  if (sub_3B258(v142[460], &v146))
  {
    if (sub_56A8C(3u, 4))
    {
      v81 = sub_56AD0(3u);
      v82 = sub_66A18();
      v83 = sub_56B04(4);
      if (v81)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
        v82 = sub_66A18();
        v83 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread", v82, 3, v83, "AVE_USL_Drv_Start", 946, "res == 0");
    }

LABEL_135:
    v96 = 4294966296;
    v101 = v16;
LABEL_136:
    *&v146 = v15[530];
    sub_3E80C(v101, &v146, 0);
    goto LABEL_171;
  }

  v163[0] = *v16;
  v91 = &unk_7EA33;
  if (v145)
  {
    v91 = v145;
  }

  sub_63330(v164, 512, "%s", v91);
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
  v163[4] = sub_66A18();
  memcpy(v175, __src, sizeof(v175));
  *(v79 + 33072) = sub_66A18();
  v96 = sub_6EE74(v16[3], v163, v161);
  if (v96)
  {
    sub_3E590(v142[460]);
    if (sub_56A8C(0x28u, 4))
    {
      v97 = sub_56AD0(0x28u);
      v98 = sub_66A18();
      v99 = sub_56B04(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to start %d\n", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", v96);
        v98 = sub_66A18();
        v99 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %d", v98, 40, v99, "AVE_USL_Drv_Start", 973, "ret == 0", v96);
    }

    goto LABEL_163;
  }

  *&v148 = 0;
  v146 = 0u;
  v147 = 0u;
  v102 = sub_3E5D4(v142[459], &v146, 120000000);
  if (v146 != v162)
  {
    if (sub_56A8C(3u, 4))
    {
      v107 = sub_56AD0(3u);
      v108 = sub_66A18();
      v109 = sub_56B04(4);
      if (v107)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.\n", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
        v108 = sub_66A18();
        v109 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.", v108, 3, v109, "AVE_USL_Drv_Start", 984, "status.counter == counter");
    }

    goto LABEL_135;
  }

  if (v148)
  {
    if (sub_56A8C(3u, 4))
    {
      v103 = sub_56AD0(3u);
      v104 = sub_66A18();
      v105 = sub_56B04(4);
      if (v103)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.\n", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
        v104 = sub_66A18();
        v105 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.", v104, 3, v105, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v148);
    }

    goto LABEL_135;
  }

  if (v102)
  {
    if (sub_56A8C(3u, 4))
    {
      v114 = sub_56AD0(3u);
      v115 = sub_66A18();
      v116 = sub_56B04(4);
      if (v114)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Start", 986, "res == 0");
        v115 = sub_66A18();
        v116 = sub_56B04(4);
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
  if (sub_3E6EC(v142[460], v122))
  {
    if (sub_56A8C(3u, 4))
    {
      v124 = sub_56AD0(3u);
      v125 = sub_66A18();
      v126 = sub_56B04(4);
      if (v124)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
        v125 = sub_66A18();
        v126 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v125, 3, v126, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (sub_3E6EC(v142[459], *a9))
  {
    if (sub_56A8C(3u, 4))
    {
      v127 = sub_56AD0(3u);
      v128 = sub_66A18();
      v129 = sub_56B04(4);
      if (v127)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
        v128 = sub_66A18();
        v129 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v128, 3, v129, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (__dst)
  {
    memcpy(__dst, &v161[2] + 8, 0x128uLL);
  }

  sub_3B710(v16, __src, (v16 + 6), *a9);
  if ((*(*v15 + 666) & 1) != 0 && !v142[466])
  {
    v96 = sub_514A8(*(v16 + 17), *(v16 + 16), v142 + 466);
    if (v96)
    {
      if (sub_56A8C(0x28u, 4))
      {
        v133 = sub_56AD0(0x28u);
        v134 = sub_66A18();
        v135 = sub_56B04(4);
        v137 = *(v16 + 16);
        v136 = *(v16 + 17);
        if (v133)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d\n", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, v96);
          v138 = sub_66A18();
          v139 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v138, 40, v139, "AVE_USL_Drv_Start", 1036, "ret == 0", *(v16 + 17), *(v16 + 16), *v16, v96);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v134, 40, v135, "AVE_USL_Drv_Start", 1036, "ret == 0", v136, v137, *v16, v96);
        }
      }

      goto LABEL_163;
    }
  }

  v96 = sub_453DC(v16 + 6, *v16, v16 + 16);
  if (v96)
  {
    if (sub_56A8C(0x28u, 4))
    {
      v130 = sub_56AD0(0x28u);
      v131 = sub_66A18();
      v132 = sub_56B04(4);
      if (v130)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, v96);
        v131 = sub_66A18();
        v132 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d", v131, 40, v132, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, v96);
    }

LABEL_163:
    v101 = v16;
    if (v96 != -1003)
    {
      goto LABEL_136;
    }

LABEL_164:
    v96 = 4294966293;
    goto LABEL_171;
  }

  *(v16 + 40) = 1;
LABEL_171:
  if (sub_56A8C(0x28u, 7))
  {
    v117 = sub_56AD0(0x28u);
    v118 = sub_66A18();
    v119 = sub_56B04(7);
    if (v117)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.\n", v118, 40, v119, v96);
      v118 = sub_66A18();
      v119 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.", v118, 40, v119, v96);
  }

  return v96;
}

void sub_3E520(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_cond_init((a1 + 112), 0);
  *(a1 + 192) = vdupq_n_s64(0x80uLL);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  operator new[]();
}

uint64_t sub_3E590(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 216);
  if (v2 >= 1 && v2 > *(a1 + 208))
  {
    *(a1 + 216) = v2 - 1;
  }

  pthread_mutex_unlock(a1);
  return 0;
}

uint64_t sub_3E5D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_3E6EC(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 192) >= a2)
  {
    v11 = 0;
    *(a1 + 200) = a2;
  }

  else
  {
    if (sub_56A8C(0x2Au, 4))
    {
      v4 = sub_56AD0(0x2Au);
      v5 = sub_66A18();
      v6 = sub_56B04(4);
      v8 = *(a1 + 208);
      v7 = *(a1 + 216);
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", v5, 42, v6, *(a1 + 192), *(a1 + 200), a2, v10);
        v5 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", v5);
    }

    v11 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(a1);
  return v11;
}

uint64_t sub_3E80C(uint64_t a1, uint64_t *a2, int a3)
{
  v50 = -1;
  if (sub_56A8C(0x28u, 7))
  {
    v6 = sub_56AD0(0x28u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", v7, 40, v8);
      v9 = sub_66A18();
      v43 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v7, 40, v8);
    }
  }

  if (a1)
  {
    v49 = *a2;
    if (sub_3EF90(a1, &v49) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      *v47 = 0;
      sub_6C1C4(*(a1 + 24), 72736, v47);
      sub_6D25C(*(a1 + 24), *v47, &v50);
      v15 = *v47;
      if (!*v47)
      {
        if (sub_56A8C(3u, 4))
        {
          v20 = sub_56AD0(3u);
          v21 = sub_66A18();
          v22 = sub_56B04(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = sub_66A18();
            v45 = sub_56B04(4);
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

      bzero((*v47 + 8), 0x11C18uLL);
      v16 = v50;
      *v15 = v50;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, sizeof(v47));
      *v47 = v16;
      if (sub_3B258(*(a1 + 106080), v47))
      {
        if (sub_56A8C(3u, 4))
        {
          v17 = sub_56AD0(3u);
          v18 = sub_66A18();
          v19 = sub_56B04(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[24] = 0u;
        *&v47[8] = 0u;
        memset(v46, 0, sizeof(v46));
        *v47 = *a1;
        v48 = v50;
        *&v47[24] = 118000000;
        *&v47[32] = sub_66A18();
        v24 = sub_6F2F8(*(a1 + 24), v47, v46);
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
          if (sub_56A8C(0x28u, 4))
          {
            v27 = sub_56AD0(0x28u);
            v28 = sub_66A18();
            v29 = sub_56B04(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = sub_66A18();
              sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, sizeof(v47));
        v36 = sub_3E5D4(*(a1 + 106072), v47, 120000000);
        if (*v47 == v50)
        {
          if (!v36)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (sub_56A8C(3u, 4))
          {
            v37 = sub_56AD0(3u);
            v38 = sub_66A18();
            v39 = sub_56B04(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              sub_66A18();
              sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (sub_56A8C(3u, 4))
        {
          v40 = sub_56AD0(3u);
          v41 = sub_66A18();
          v42 = sub_56B04(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      sub_3C3B8(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (sub_56A8C(3u, 4))
  {
    v11 = sub_56AD0(3u);
    v12 = sub_66A18();
    v13 = sub_56B04(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = sub_66A18();
      v44 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (sub_56A8C(0x28u, 7))
  {
    v30 = sub_56AD0(0x28u);
    v31 = sub_66A18();
    v32 = sub_56B04(7);
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
      v31 = sub_66A18();
      v32 = sub_56B04(7);
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

uint64_t sub_3EF90(uint64_t a1, void *a2)
{
  v54 = -1;
  if (sub_56A8C(0x28u, 7))
  {
    v4 = sub_56AD0(0x28u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.\n", v5, 40, v6);
      v7 = sub_66A18();
      v47 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v7, 40, v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v5, 40, v6);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) != 1)
    {
      v17 = 4294966292;
      goto LABEL_32;
    }

    *v52 = 0;
    sub_6C1C4(*(a1 + 24), 72736, v52);
    sub_6D25C(*(a1 + 24), *v52, &v54);
    v8 = *v52;
    if (*v52)
    {
      bzero((*v52 + 8), 0x11C18uLL);
      v9 = v54;
      *v8 = v54;
      *(v8 + 4) = 8;
      *(v8 + 40) = *(a1 + 44);
      *(v8 + 33048) = *a2;
      *(v8 + 16) = *(a1 + 106088) != 0;
      *(v8 + 20) = *(a1 + 106096);
      memset(v52, 0, sizeof(v52));
      *v52 = v9;
      if (sub_3B258(*(a1 + 106080), v52))
      {
        if (sub_56A8C(3u, 4))
        {
          v10 = sub_56AD0(3u);
          v11 = sub_66A18();
          v12 = sub_56B04(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v11, 3, v12, "AVE_USL_Drv_Complete", 1215, "res == 0");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }

LABEL_29:
        v17 = 4294966296;
        goto LABEL_32;
      }

      *&v52[24] = 0u;
      *&v52[8] = 0u;
      v50 = 0u;
      v51 = 0u;
      *v52 = *a1;
      v53 = v54;
      *&v52[24] = 118000000;
      *&v52[32] = sub_66A18();
      v22 = sub_6FBE0(*(a1 + 24), v52, &v50);
      if (!v22)
      {
        v32 = *(a1 + 106072);
        pthread_mutex_lock(v32);
        do
        {
          v34 = *(v32 + 208);
          v33 = *(v32 + 216);
          if (v33 > v34)
          {
            v37 = *(v32 + 200);
            v36 = *(*(v32 + 224) + 40 * (v34 % *(v32 + 192)));
            v38 = v34 + 1;
            *(v32 + 208) = v38;
            v39 = v33 <= v38;
            v40 = v33 - v38;
            if (v39)
            {
              v40 = 0;
            }

            if (v40 < v37)
            {
              pthread_cond_signal((v32 + 112));
            }

            pthread_mutex_unlock(v32);
            if (v36 == v54)
            {
              v17 = 0;
              goto LABEL_32;
            }

            goto LABEL_50;
          }

          gettimeofday((v32 + 176), 0);
          v35 = 1000 * *(v32 + 184);
          *(v32 + 160) = *(v32 + 176) + 120;
          *(v32 + 168) = v35;
        }

        while (pthread_cond_timedwait((v32 + 64), v32, (v32 + 160)) != 60);
        pthread_mutex_unlock(v32);
        if (v54)
        {
          v36 = 0;
LABEL_50:
          if (sub_56A8C(3u, 4))
          {
            v41 = sub_56AD0(3u);
            v42 = sub_66A18();
            v43 = sub_56B04(4);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).\n", v42, 3, v43, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v36, v54);
              v42 = sub_66A18();
              v43 = sub_56B04(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).", v42, 3, v43, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v36, v54, v50, v51);
          }

          goto LABEL_29;
        }

        if (sub_56A8C(3u, 4))
        {
          v44 = sub_56AD0(3u);
          v45 = sub_66A18();
          v46 = sub_56B04(4);
          if (v44)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v45, 3, v46, "AVE_USL_Drv_Complete", 1244, "res == 0");
            sub_66A18();
            sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }

        goto LABEL_29;
      }

      v17 = v22;
      v23 = *(a1 + 106080);
      pthread_mutex_lock(v23);
      v24 = *(v23 + 216);
      if (v24 >= 1 && v24 > *(v23 + 208))
      {
        *(v23 + 216) = v24 - 1;
      }

      pthread_mutex_unlock(v23);
      if (sub_56A8C(0x28u, 4))
      {
        v25 = sub_56AD0(0x28u);
        v26 = sub_66A18();
        v27 = sub_56B04(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %d\n", v26, 40, v27, "AVE_USL_Drv_Complete", 1232, "ret == 0", v17);
          v26 = sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %d", v26);
      }
    }

    else
    {
      if (sub_56A8C(3u, 4))
      {
        v18 = sub_56AD0(3u);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
          v21 = sub_66A18();
          v49 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v49, "AVE_USL_Drv_Complete", 1195, "Frame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
        }
      }

      v17 = 4294966293;
    }
  }

  else
  {
    if (sub_56A8C(3u, 4))
    {
      v13 = sub_56AD0(3u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
        v16 = sub_66A18();
        v48 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v16, 3, v48, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }
    }

    v17 = 4294966295;
  }

LABEL_32:
  if (sub_56A8C(0x28u, 7))
  {
    v28 = sub_56AD0(0x28u);
    v29 = sub_66A18();
    v30 = sub_56B04(7);
    if (v28)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d\n", v29, 40, v30, *(a1 + 44), v17);
      v29 = sub_66A18();
      v30 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d", v29, 40, v30, *(a1 + 44), v17);
  }

  return v17;
}

uint64_t sub_3F77C(void *a1, uint64_t a2)
{
  v143[0] = -1;
  pixelBufferOut = 0;
  if (sub_56A8C(0x28u, 7))
  {
    v4 = sub_56AD0(0x28u);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame\n", v5, 40, v6);
      v7 = sub_66A18();
      v125 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v7, 40, v125);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v5, 40, v6);
    }
  }

  if (!a1)
  {
    if (sub_56A8C(3u, 4))
    {
      v14 = sub_56AD0(3u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.\n", v15, 3, v16, "AVE_USL_Drv_Process", 1268, "pDriverInstance");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.");
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    if (sub_56A8C(3u, 4))
    {
      v17 = sub_56AD0(3u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.\n", v18, 3, v19, "AVE_USL_Drv_Process", 1269, "pSettings");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.");
    }

    goto LABEL_58;
  }

  if ((a1[5] & 1) == 0)
  {
    if (sub_56A8C(3u, 4))
    {
      v20 = sub_56AD0(3u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.\n", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
        v23 = sub_66A18();
        v127 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v23, 3, v127, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }
    }

    v27 = 4294966285;
    goto LABEL_59;
  }

  if (!*(a2 + 8))
  {
    if (sub_56A8C(3u, 4))
    {
      v24 = sub_56AD0(3u);
      v25 = sub_66A18();
      v26 = sub_56B04(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL\n", v25, 3, v26, "AVE_USL_Drv_Process", 1271, "pSettings->CVImageBuffer");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL");
    }

    goto LABEL_58;
  }

  v8 = *(a1 + 2);
  if (v8 != 5 && v8 != 3)
  {
    goto LABEL_36;
  }

  if (!*(a2 + 24))
  {
    if (sub_56A8C(3u, 4))
    {
      v28 = sub_56AD0(3u);
      v29 = sub_66A18();
      v30 = sub_56B04(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL\n", v29, 3, v30, "AVE_USL_Drv_Process", 1276, "pSettings->CVImageBufferOutput");
        sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL");
    }

LABEL_58:
    v27 = 4294966295;
    goto LABEL_59;
  }

  if (sub_56A8C(0x28u, 7))
  {
    v9 = sub_56AD0(0x28u);
    v10 = sub_66A18();
    v11 = sub_56B04(7);
    v12 = *(a2 + 24);
    if (v9)
    {
      printf("%lld %d AVE %s: pSettings->CVImageBufferOutput = %p\n", v10, 40, v11, v12);
      v13 = sub_66A18();
      v126 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v13, 40, v126, *(a2 + 24));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v10, 40, v11, v12);
    }
  }

LABEL_36:
  *v140 = 0;
  sub_6C1C4(a1[3], 72736, v140);
  sub_6D25C(a1[3], *v140, v143);
  v31 = *v140;
  if (*v140)
  {
    v32 = a1 + 13260;
    bzero((*v140 + 8), 0x11C18uLL);
    *v31 = v143[0];
    *(v31 + 4) = 7;
    *(v31 + 40) = *(a1 + 11);
    *(v31 + 44) = *(a2 + 188);
    *(v31 + 16) = a1[13261] != 0;
    *(v31 + 20) = *(a1 + 26524);
    *(v31 + 2552) = *a2;
    *(v31 + 2600) = *(a2 + 56);
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8));
    *(v31 + 2508) = IOSurfaceGetID(IOSurface);
    v34 = CVPixelBufferGetIOSurface(*(a2 + 16));
    *(v31 + 2512) = IOSurfaceGetID(v34);
    v35 = *(*(a2 + 144) + 19000);
    if (v35)
    {
      v36 = CVPixelBufferGetIOSurface(v35);
      *(v31 + 2516) = IOSurfaceGetID(v36);
    }

    v37 = *(a1 + 2);
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        *(v31 + 2552) = *a2;
        *(v31 + 2560) = *(a2 + 8);
        if (sub_56A8C(0x28u, 7))
        {
          v48 = sub_56AD0(0x28u);
          v49 = sub_66A18();
          v50 = sub_56B04(7);
          if (v48)
          {
            printf("%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d\n", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
            v49 = sub_66A18();
            v50 = sub_56B04(7);
          }

          syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
        }

        v55 = *(a2 + 32);
        *(v31 + 2576) = v55;
        if (v55)
        {
          v56 = CVPixelBufferGetIOSurface(v55);
          *(v31 + 2536) = IOSurfaceGetID(v56);
          if (sub_56A8C(0x28u, 7))
          {
            v57 = sub_56AD0(0x28u);
            v58 = sub_66A18();
            v59 = sub_56B04(7);
            if (v57)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d\n", v58, 40, v59, "AVE_USL_Drv_Process", *(v31 + 2536));
              v58 = sub_66A18();
              v59 = sub_56B04(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d", v58, 40, v59, "AVE_USL_Drv_Process", *(v31 + 2536));
          }
        }

        v60 = 0;
        v61 = v31 + 2528;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *(a2 + 40 + 8 * v60);
          *(v31 + 2584 + 8 * v60) = v64;
          if (v64)
          {
            v65 = CVPixelBufferGetIOSurface(v64);
            *(v61 + 4 * v60) = IOSurfaceGetID(v65);
            if (sub_56A8C(0x28u, 7))
            {
              v66 = sub_56AD0(0x28u);
              v67 = sub_66A18();
              v68 = sub_56B04(7);
              v69 = *(v61 + 4 * v60);
              if (v66)
              {
                printf("%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d\n", v67, 40, v68, "AVE_USL_Drv_Process", v60, v69);
                v70 = sub_66A18();
                v71 = sub_56B04(7);
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v70, 40, v71, "AVE_USL_Drv_Process", v60, *(v61 + 4 * v60));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v67, 40, v68, "AVE_USL_Drv_Process", v60, v69);
              }
            }
          }

          v62 = 0;
          v60 = 1;
        }

        while ((v63 & 1) != 0);
        v72 = *(a2 + 24);
        v32 = a1 + 13260;
        *(v31 + 2568) = v72;
        if (v72)
        {
          v73 = CVPixelBufferGetIOSurface(v72);
          *(v31 + 2540) = IOSurfaceGetID(v73);
          if (sub_56A8C(0x28u, 7))
          {
            v74 = sub_56AD0(0x28u);
            v75 = sub_66A18();
            v76 = sub_56B04(7);
            if (v74)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d\n", v75, 40, v76, "AVE_USL_Drv_Process", *(v31 + 2540));
              v75 = sub_66A18();
              v76 = sub_56B04(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d", v75, 40, v76, "AVE_USL_Drv_Process", *(v31 + 2540));
          }
        }
      }

      else if (v37 == 5)
      {
        *(v31 + 2552) = *a2;
        v46 = *(a2 + 24);
        *(v31 + 2568) = v46;
        v47 = CVPixelBufferGetIOSurface(v46);
        *(v31 + 2544) = IOSurfaceGetID(v47);
      }
    }

    else if (v37 == 2)
    {
      *(v31 + 2552) = *a2;
    }

    else if (v37 == 3)
    {
      *(v31 + 2560) = *(a2 + 8);
      v38 = *(a2 + 24);
      *(v31 + 2568) = v38;
      *(v31 + 2584) = *(a2 + 40);
      v39 = CVPixelBufferGetIOSurface(v38);
      *(v31 + 2520) = IOSurfaceGetID(v39);
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = CVPixelBufferGetIOSurface(v40);
        *(v31 + 2524) = IOSurfaceGetID(v41);
      }
    }

    v77 = *(a2 + 72);
    *(v31 + 4576) = *(a2 + 88);
    *(v31 + 4560) = v77;
    v78 = *(a2 + 112);
    *(v31 + 4584) = *(a2 + 96);
    *(v31 + 4600) = v78;
    *(v31 + 4608) = *(a2 + 120);
    *(v31 + 33048) = *(a2 + 160);
    v79 = *(a2 + 136);
    v80 = *(v79 + 16);
    *(v31 + 4632) = *v79;
    *(v31 + 4648) = v80;
    v81 = *(v79 + 32);
    v82 = *(v79 + 48);
    v83 = *(v79 + 64);
    *(v31 + 4712) = *(v79 + 80);
    *(v31 + 4680) = v82;
    *(v31 + 4696) = v83;
    *(v31 + 4664) = v81;
    memcpy((v31 + 4720), *(a2 + 144), 0x4A40uLL);
    memcpy((v31 + 23728), *(a2 + 152), 0x1738uLL);
    if (*(a1 + 13256) == 1)
    {
      v85 = *(a2 + 64);
      if (v85)
      {
        if (*(a1 + 3351))
        {
          if (!v32[4])
          {
            if (sub_56A8C(0x28u, 4))
            {
              v107 = sub_56AD0(0x28u);
              v108 = sub_66A18();
              v109 = sub_56B04(4);
              if (v107)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v108, 40, v109, "AVE_USL_Drv_Process", 1413, "pDriverInstance->pcVCP != __null", a1);
                v108 = sub_66A18();
                sub_56B04(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v108);
            }

            v27 = 4294966281;
            goto LABEL_142;
          }

          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          if (!Mutable)
          {
            if (sub_56A8C(0x28u, 4))
            {
              v113 = sub_56AD0(0x28u);
              v114 = sub_66A18();
              v115 = sub_56B04(4);
              if (v113)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray\n", v114, 40, v115, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
                v116 = sub_66A18();
                v131 = sub_56B04(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v116, 40, v131, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v114, 40, v115, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }
            }

            v27 = 4294966293;
            goto LABEL_142;
          }

          v87 = Mutable;
          sub_62C14((v31 + 4788), *(v31 + 4776), Mutable);
          sub_4BA5C(v32[4], *(a2 + 64), v87);
          CFRelease(v87);
          v85 = *(a2 + 64);
        }

        sub_4981C(v85, (v31 + 3184));
      }
    }

    sub_3B784(a1, v84, v31, (a1 + 6));
    v88 = v32[6];
    if (v88)
    {
      v89 = CVPixelBufferPoolCreatePixelBuffer(0, v88, &pixelBufferOut);
      if (v89)
      {
        v27 = v89;
        if (!sub_56A8C(0x28u, 4))
        {
          goto LABEL_142;
        }

        v90 = sub_56AD0(0x28u);
        v91 = sub_66A18();
        v92 = sub_56B04(4);
        if (v90)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d\n", v91, 40, v92, "AVE_USL_Drv_Process", 1440, "ret == 0", v32[6], v27);
          v91 = sub_66A18();
          v92 = sub_56B04(4);
        }

        v135 = v32[6];
        v137 = v27;
        v133 = 1440;
        v129 = v92;
        v93 = "%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d";
        goto LABEL_112;
      }

      v95 = CVPixelBufferGetIOSurface(pixelBufferOut);
      if (!v95)
      {
        if (sub_56A8C(0x28u, 4))
        {
          v104 = sub_56AD0(0x28u);
          v105 = sub_66A18();
          v106 = sub_56B04(4);
          if (v104)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d\n", v105, 40, v106, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
            v105 = sub_66A18();
            v106 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d", v105, 40, v106, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
        }

        goto LABEL_141;
      }

      ID = IOSurfaceGetID(v95);
    }

    else
    {
      ID = 0;
    }

    v96 = sub_45724(a1 + 12, *a1, (a1 + 16), a1 + 17, ID);
    if (v96)
    {
      v27 = v96;
      if (!sub_56A8C(0x28u, 4))
      {
        goto LABEL_142;
      }

      v97 = sub_56AD0(0x28u);
      v98 = sub_66A18();
      v99 = sub_56B04(4);
      if (v97)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v98, 40, v99, "AVE_USL_Drv_Process", 1454, "ret == 0", *a1, *(v31 + 40));
        v98 = sub_66A18();
        v99 = sub_56B04(4);
      }

      v136 = *a1;
      v138 = *(v31 + 40);
      v134 = 1454;
      v130 = v99;
      v100 = "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d";
LABEL_129:
      syslog(3, v100, v98, 40, v130, "AVE_USL_Drv_Process", v134, "ret == 0", v136, v138);
      goto LABEL_142;
    }

    *(v31 + 2608) = pixelBufferOut;
    v101 = sub_40C94(a1, v31);
    if (v101)
    {
      v27 = v101;
      if (!sub_56A8C(0x28u, 4))
      {
        goto LABEL_142;
      }

      v102 = sub_56AD0(0x28u);
      v98 = sub_66A18();
      v103 = sub_56B04(4);
      if (v102)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d\n", v98, 40, v103, "AVE_USL_Drv_Process", 1462, "ret == 0", *a1, *(v31 + 40));
        v98 = sub_66A18();
        v103 = sub_56B04(4);
      }

      v136 = *a1;
      v138 = *(v31 + 40);
      v134 = 1462;
      v130 = v103;
      v100 = "%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d";
      goto LABEL_129;
    }

    sub_40ED4(a1, v31);
    sub_4561C(a1 + 17, (v31 + 2500));
    memset(v140, 0, sizeof(v140));
    *v140 = v143[0];
    *&v140[8] = *(v31 + 4560);
    *&v140[24] = *(v31 + 4576);
    if (sub_3B258(*v32, v140))
    {
      if (sub_56A8C(3u, 4))
      {
        v110 = sub_56AD0(3u);
        v111 = sub_66A18();
        v112 = sub_56B04(4);
        if (v110)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v111, 3, v112, "AVE_USL_Drv_Process", 1482, "res == 0");
          sub_66A18();
          sub_56B04(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

LABEL_141:
      v27 = 4294966296;
      goto LABEL_142;
    }

    *&v140[24] = 0u;
    *&v140[8] = 0u;
    memset(v139, 0, sizeof(v139));
    *v140 = *a1;
    v141 = v143[0];
    *&v140[16] = *(v31 + 40);
    *&v140[24] = 58000000;
    *&v140[32] = sub_66A18();
    *(v31 + 33072) = sub_66A18();
    v117 = sub_6F76C(a1[3], v140, v139);
    if (v117)
    {
      v27 = v117;
      sub_3E590(*v32);
      if (sub_56A8C(0x28u, 4))
      {
        v118 = sub_56AD0(0x28u);
        v91 = sub_66A18();
        v119 = sub_56B04(4);
        if (v118)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v91, 40, v119, "AVE_USL_Drv_Process", 1503, "ret == 0", v27);
          v91 = sub_66A18();
          v135 = v27;
          v133 = 1503;
          v129 = sub_56B04(4);
        }

        else
        {
          v135 = v27;
          v133 = 1503;
          v129 = v119;
        }

        v93 = "%lld %d AVE %s: %s:%d %s | fail to process %d";
LABEL_112:
        syslog(3, v93, v91, 40, v129, "AVE_USL_Drv_Process", v133, "ret == 0", v135, v137);
      }

LABEL_142:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      goto LABEL_59;
    }

    pixelBufferOut = 0;
    v120 = *(a1 + 11) + 1;
    *(a1 + 11) = v120;
    if (v120 != *(a1 + 2999) || *(a1 + 3048) == 2 || (*(a1 + 138) & 0x3C0) != 0)
    {
      v27 = 0;
    }

    else if ((*(a1 + 2) - 2) >= 4)
    {
      *v140 = sub_66A18();
      v27 = sub_3EF90(a1, v140);
      if (v27 && sub_56A8C(3u, 4))
      {
        v121 = sub_56AD0(3u);
        v122 = sub_66A18();
        v123 = sub_56B04(4);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.\n", v122, 3, v123, "AVE_USL_Drv_Process", 1535, "ret == 0");
          v124 = sub_66A18();
          v132 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v124, 3, v132, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v122, 3, v123, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (sub_56A8C(3u, 4))
    {
      v42 = sub_56AD0(3u);
      v43 = sub_66A18();
      v44 = sub_56B04(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.\n", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
        v45 = sub_66A18();
        v128 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v45, 3, v128, "AVE_USL_Drv_Process", 1293, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
      }
    }

    v27 = 4294966293;
  }

LABEL_59:
  sub_45AE0(a1 + 17);
  if (sub_56A8C(0x28u, 7))
  {
    v51 = sub_56AD0(0x28u);
    v52 = sub_66A18();
    v53 = sub_56B04(7);
    if (v51)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d\n", v52, 40, v53, *(a1 + 11) - 1, v27);
      v52 = sub_66A18();
      v53 = sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d", v52, 40, v53, *(a1 + 11) - 1, v27);
  }

  return v27;
}