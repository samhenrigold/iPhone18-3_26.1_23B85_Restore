uint64_t sub_10C92C(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, int *a4, uint64_t a5)
{
  if (sub_160EF0(0xCu, 7))
  {
    v10 = sub_160F34(0xCu);
    v11 = sub_175AE4();
    v12 = sub_160F68(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", v11, 12, v12, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v257 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v13, 12, v257);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v11, 12, v12);
    }
  }

  if (a4)
  {
    v14 = a1 + 104640;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v15 = *(a1 + 1160);
    v16 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v15;
    *(a3 + 111) = v16;
    *(a1 + 104640) = 0;
    *(a4 + 1357) = *(a1 + 10788) == 4;
    *(a4 + 1358) = *(a1 + 10848);
    *(a4 + 1359) = *(a1 + 10849);
    *(a3 + 28) = *(a1 + 688) & 2;
    a4[342] = *(a1 + 10808);
    *(a4 + 1362) = *(a1 + 10204);
    v17 = *(a1 + 106088);
    if (!v17)
    {
      v17 = *(a1 + 1440);
    }

    v18 = a4 + 133;
    a4[140] = v17;
    v19 = *(a1 + 106092);
    if (!v19)
    {
      v19 = *(a1 + 1444);
    }

    a4[141] = v19;
    *(a4 + 1356) = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
      goto LABEL_58;
    }

    v20 = *(a1 + 1444);
    v21 = *(a1 + 1440);
    *(a3 + 242) = *(a1 + 4 * *(a5 + 188) + 108008);
    if (*(a1 + 11810) == 1)
    {
      v22 = sub_1502C8()[263];
      if (v22 >= 1)
      {
        v23 = *(a1 + 104648);
        if (v23 <= 3)
        {
          v24 = *a3 | 4;
          *a3 = v24;
          *(a1 + 108016) |= 4uLL;
          goto LABEL_22;
        }

        v60 = v23 % v22;
        v24 = *(a1 + 108016);
        if (!v60)
        {
          v24 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v24 >> 2) & 1))) ^ 4;
          *a3 = v24;
          *(a1 + 108016) = v24;
LABEL_22:
          v30 = *(a5 + 136);
          v31 = *(v30 + 56);
          v32 = 1.0;
          if (v31 == 0.0)
          {
            v31 = 1.0;
          }

          *(a4 + 175) = v31;
          v33 = *(v30 + 80);
          a4[352] = v33;
          v34 = *(a1 + 76);
          if (v34 <= 26)
          {
            if (v33 != 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v35 = *(v30 + 64);
            v38 = v35 == 2418 && v33 == 2 || v33 == 1;
            if (v34 < 0x1E)
            {
              if (!v38)
              {
                goto LABEL_47;
              }
            }

            else if (v35 != 2419 && !v38)
            {
              goto LABEL_47;
            }
          }

          v39 = ((v21 + 15) >> 4) * ((v20 + 15) >> 4);
          if (v39 > 3600)
          {
            if (v39 > 0x1FE0)
            {
LABEL_46:
              *(a4 + 175) = v32;
              goto LABEL_47;
            }

            if (v31 > 0.5)
            {
              goto LABEL_47;
            }
          }

          else if (v31 >= 0.39)
          {
LABEL_47:
            if (*(a1 + 104648) <= 5u)
            {
              *a3 = v24 | 4;
            }

            if (sub_160EF0(0x10u, 8))
            {
              v40 = sub_160F34(0x10u);
              v41 = sub_175AE4();
              v42 = sub_160F68(8);
              v43 = *(a1 + 104648);
              v44 = *a3;
              if (v40)
              {
                printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v41, 16, v42, v43, *(*(a5 + 136) + 72), v44);
                v45 = sub_175AE4();
                v46 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v45, 16, v46, *(a1 + 104648), *(*(a5 + 136) + 72), *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v41, 16, v42, v43, *(*(a5 + 136) + 72), v44);
              }
            }

            v47 = a1 + 108024;
            v48 = *(a5 + 188);
            v49 = *(a1 + 108024 + 4 * v48);
            if ((*a3 & 4) == 0)
            {
              if ((v49 - 1) > 4)
              {
                *(v47 + 4 * v48) = 0;
LABEL_58:
                *a4 = 0;
                *(a4 + 1392) = 0;
                *(a4 + 2374) = 0;
                *(a4 + 3) = 0;
                *(a4 + 30) = 0;
                v287 = a5;
                *(a5 + 64) = 0;
                *(a4 + 48) = 0;
                a4[13] = -1;
                *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
                *&v50 = -1;
                *(&v50 + 1) = -1;
                *(a4 + 17) = v50;
                v51 = a4 + 17;
                *(a4 + 15) = 0;
                *(a4 + 21) = v50;
                *v18 = 0;
                a4[135] = -1;
                *(a4 + 343) = v50;
                if (!a2)
                {
                  v57 = 0;
                  a5 = v287;
                  goto LABEL_271;
                }

                v283 = a4 + 343;
                if (sub_160EF0(0x1Du, 6))
                {
                  v52 = sub_160F34(0x1Du);
                  v53 = sub_175AE4();
                  v54 = sub_160F68(6);
                  v55 = *(a1 + 104648);
                  if (v52)
                  {
                    printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v53, 29, v54, v55);
                    v56 = sub_175AE4();
                    v259 = sub_160F68(6);
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v56, 29, v259, *(a1 + 104648));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v53, 29, v54, v55);
                  }
                }

                Value = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceKeyFrame);
                if (Value && CFEqual(Value, kCFBooleanTrue))
                {
                  if (*(a1 + 10532))
                  {
                    v59 = 3;
                  }

                  else
                  {
                    v59 = (*(a1 + 1241) & 1) != 0 ? 1 : 2;
                  }

                  *a4 = v59;
                  *(a3 + 230) |= 1u;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v61 = sub_160F34(0x1Du);
                    v62 = sub_175AE4();
                    v63 = sub_160F68(6);
                    v64 = *(a3 + 230);
                    if (v61)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v62, 29, v63, *a4, v64);
                      v65 = sub_175AE4();
                      v66 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v65, 29, v66, *a4, *(a3 + 230));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v62, 29, v63, *a4, v64);
                    }
                  }
                }

                v67 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FirstMbInRecvSlices);
                if (v67)
                {
                  v68 = v67;
                  TypeID = CFDataGetTypeID();
                  if (TypeID == CFGetTypeID(v68))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v70 = sub_160F34(0x1Du);
                      v71 = sub_175AE4();
                      v72 = sub_160F68(6);
                      if (v70)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v71, 29, v72);
                        v73 = sub_175AE4();
                        v260 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v73, 29, v260);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v71, 29, v72);
                      }
                    }
                  }
                }

                v74 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ForceRefresh);
                if (v74)
                {
                  if (CFEqual(v74, kCFBooleanTrue))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v75 = sub_160F34(0x1Du);
                      v76 = sub_175AE4();
                      v77 = sub_160F68(6);
                      v78 = *(a3 + 232);
                      if (v75)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v76, 29, v77, v78);
                        v79 = sub_175AE4();
                        v261 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v79, 29, v261, *(a3 + 232));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v76, 29, v77, v78);
                      }
                    }
                  }
                }

                v80 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RepeatedFrame);
                if (v80)
                {
                  if (CFEqual(v80, kCFBooleanTrue))
                  {
                    *a3 |= 8uLL;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v81 = sub_160F34(0x1Du);
                      v82 = sub_175AE4();
                      v83 = sub_160F68(6);
                      v84 = *a3;
                      if (v81)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v82, 29, v83, v84);
                        v85 = sub_175AE4();
                        v262 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v85, 29, v262, *a3);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v82, 29, v83, v84);
                      }
                    }
                  }
                }

                v86 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_UserQpMap);
                a4[8] = 0;
                *(a4 + 3) = 0;
                *(a3 + 234) &= ~0x10000u;
                if (*(a1 + 1338))
                {
                  v87 = v86;
                  if (v86)
                  {
                    a4[8] = CFDataGetLength(v86);
                    *(a4 + 3) = CFDataGetBytePtr(v87);
                    *(a3 + 234) |= 0x10000u;
                  }
                }

                v88 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_VRAUsedDimension);
                if (v88)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v88, kCFNumberSInt32Type, &valuePtr);
                  v89 = valuePtr;
                  a4[2] = WORD1(valuePtr);
                  a4[3] = v89;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v90 = sub_160F34(0x1Du);
                    v91 = sub_175AE4();
                    v92 = sub_160F68(6);
                    v93 = a4[3];
                    if (v90)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v91, 29, v92, a4[2], v93);
                      v94 = sub_175AE4();
                      v95 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v94, 29, v95, a4[2], a4[3]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v91, 29, v92, a4[2], v93);
                    }
                  }
                }

                v96 = CFDictionaryGetValue(a2, @"AttachDPB");
                if (v96 && CFEqual(v96, kCFBooleanTrue))
                {
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v97 = sub_160F34(0x1Du);
                    v98 = sub_175AE4();
                    v99 = sub_160F68(6);
                    v100 = *(a1 + 104648);
                    if (v97)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v98, 29, v99, v100);
                      v101 = sub_175AE4();
                      v263 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v101, 29, v263, *(a1 + 104648));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v98, 29, v99, v100);
                    }
                  }

                  *(a4 + 36) = 1;
                }

                v102 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SetDPB);
                if (v102)
                {
                  if (*(a1 + 104648))
                  {
                    v103 = v102;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v104 = sub_160F34(0x1Du);
                      v105 = sub_175AE4();
                      v106 = sub_160F68(6);
                      v107 = *(a1 + 104648);
                      if (v104)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v105, 29, v106, v107);
                        v108 = sub_175AE4();
                        v264 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v108, 29, v264, *(a1 + 104648));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v105, 29, v106, v107);
                      }

                      v14 = a1 + 104640;
                      v18 = a4 + 133;
                    }

                    *(a4 + 37) = 1;
                    *(v287 + 64) = v103;
                  }

                  else
                  {
                    if (sub_160EF0(0x10u, 5))
                    {
                      v109 = sub_160F34(0x10u);
                      v110 = sub_175AE4();
                      v111 = sub_160F68(5);
                      if (v109)
                      {
                        printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v110, 16, v111);
                        v112 = sub_175AE4();
                        v265 = sub_160F68(5);
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v112, 16, v265);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v110, 16, v111);
                      }
                    }

                    if (sub_160EF0(0x10u, 5))
                    {
                      v113 = sub_160F34(0x10u);
                      v114 = sub_175AE4();
                      v115 = sub_160F68(5);
                      if (v113)
                      {
                        printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v114, 16, v115);
                        v116 = sub_175AE4();
                        v266 = sub_160F68(5);
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v116, 16, v266);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v114, 16, v115);
                      }
                    }
                  }
                }

                v117 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ExtraInLoopChromaFilter);
                if (v117 && CFEqual(v117, kCFBooleanTrue))
                {
                  *a3 |= 0x8000uLL;
                }

                v118 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_CalculateYUVChecksum);
                if (v118)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v118, kCFNumberSInt32Type, &valuePtr);
                  if (valuePtr)
                  {
                    *a3 |= 0x10000uLL;
                  }
                }

                v119 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
                if (v119)
                {
                  if (CFEqual(v119, kCFBooleanTrue))
                  {
                    *(a4 + 48) = 1;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v120 = sub_160F34(0x1Du);
                      v121 = sub_175AE4();
                      v122 = sub_160F68(6);
                      if (v120)
                      {
                        printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v121, 29, v122);
                        v123 = sub_175AE4();
                        v267 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v123, 29, v267);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v121, 29, v122);
                      }
                    }
                  }
                }

                v124 = CFDictionaryGetValue(a2, @"RVRADimension");
                if (v124)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v124, kCFNumberSInt32Type, &valuePtr);
                  v125 = valuePtr;
                  a4[15] = WORD1(valuePtr);
                  a4[16] = v125;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v126 = sub_160F34(0x1Du);
                    v127 = sub_175AE4();
                    v128 = sub_160F68(6);
                    v129 = a4[16];
                    if (v126)
                    {
                      printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v127, 29, v128, a4[15], v129);
                      v130 = sub_175AE4();
                      v131 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v130, 29, v131, a4[15], a4[16]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v127, 29, v128, a4[15], v129);
                    }
                  }
                }

                v132 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
                if (v132)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v132, kCFNumberSInt32Type, &valuePtr);
                  a4[13] = valuePtr;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v133 = sub_160F34(0x1Du);
                    v134 = sub_175AE4();
                    v135 = sub_160F68(6);
                    v136 = a4[13];
                    if (v133)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v134, 29, v135, v136);
                      v137 = sub_175AE4();
                      v268 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v137, 29, v268, a4[13]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v134, 29, v135, v136);
                    }
                  }
                }

                v138 = CFDictionaryGetValue(a2, @"UserFrameType");
                if (v138)
                {
                  LODWORD(valuePtr) = 5;
                  CFNumberGetValue(v138, kCFNumberSInt32Type, &valuePtr);
                  a4[10] = valuePtr;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v139 = sub_160F34(0x1Du);
                    v140 = sub_175AE4();
                    v141 = sub_160F68(6);
                    v142 = a4[10];
                    if (v139)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v140, 29, v141, v142);
                      v143 = sub_175AE4();
                      v269 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v143, 29, v269, a4[10]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v140, 29, v141, v142);
                    }
                  }
                }

                v144 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_ReferenceL0);
                v285 = v14;
                v286 = a3;
                if (v144)
                {
                  v145 = v144;
                  v146 = CFArrayGetTypeID();
                  if (v146 == CFGetTypeID(v145))
                  {
                    LODWORD(valuePtr) = 4;
                    sub_1702C8(v145, a4 + 17, &valuePtr);
                    *(a4 + 56) = valuePtr;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v147 = sub_160F34(0x1Du);
                      v148 = sub_175AE4();
                      v149 = sub_160F68(6);
                      v150 = *(a4 + 56);
                      if (v147)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v148, 29, v149, v150);
                        v151 = sub_175AE4();
                        v270 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v151, 29, v270, *(a4 + 56));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v148, 29, v149, v150);
                      }
                    }

                    if (*(a4 + 56))
                    {
                      v152 = 0;
                      do
                      {
                        if ((*v51 & 0x80000000) == 0 && sub_160EF0(0x1Eu, 6))
                        {
                          v153 = sub_160F34(0x1Eu);
                          v154 = sub_175AE4();
                          v155 = sub_160F68(6);
                          v156 = *v51;
                          if (v153)
                          {
                            printf("%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d\n", v154, 30, v155, v152, v156);
                            v154 = sub_175AE4();
                            v155 = sub_160F68(6);
                            v156 = *v51;
                          }

                          syslog(3, "%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d", v154, 30, v155, v152, v156);
                          v14 = v285;
                          a3 = v286;
                        }

                        ++v152;
                        v51 += 2;
                      }

                      while (v152 < *(a4 + 56));
                    }
                  }
                }

                v157 = CFDictionaryGetValue(a2, @"SliceTcOffsetDiv2");
                if (v157)
                {
                  v158 = a4 + 134;
                  CFNumberGetValue(v157, kCFNumberSInt32Type, a4 + 134);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v159 = sub_160F34(0x1Du);
                    v160 = sub_175AE4();
                    v161 = sub_160F68(6);
                    v162 = *v158;
                    if (v159)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)\n", v160, 29, v161, v162);
                      v163 = sub_175AE4();
                      v271 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v163, 29, v271, *v158);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v160, 29, v161, v162);
                    }
                  }
                }

                v164 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
                if (v164)
                {
                  CFNumberGetValue(v164, kCFNumberSInt32Type, v18);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v165 = sub_160F34(0x1Du);
                    v166 = sub_175AE4();
                    v167 = sub_160F68(6);
                    v168 = *v18;
                    if (v165)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v166, 29, v167, v168);
                      v169 = sub_175AE4();
                      v272 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v169, 29, v272, *v18);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v166, 29, v167, v168);
                    }
                  }
                }

                if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
                {
                  v284 = sub_170D74(a2, *(a4 + 56), a4 + 25);
                  if (v284)
                  {
                    goto LABEL_186;
                  }

                  valuePtr = 0u;
                  v289 = 0u;
                  sub_172100(&valuePtr, 32, "%llu %d", *(a1 + 56), *(v14 + 8));
                  sub_171244(a4 + 25, 0xD7u, 6, &valuePtr, 0);
                }

                v284 = 0;
LABEL_186:
                v170 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_FinalFrame);
                if (v170)
                {
                  if (CFEqual(v170, kCFBooleanTrue))
                  {
                    *a3 |= 2uLL;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v171 = sub_160F34(0x1Du);
                      v172 = sub_175AE4();
                      v173 = sub_160F68(6);
                      if (v171)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v172, 29, v173);
                        v174 = sub_175AE4();
                        v273 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v174, 29, v273);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v172, 29, v173);
                      }
                    }
                  }
                }

                v175 = CFDictionaryGetValue(a2, @"ResetRCState");
                if (v175)
                {
                  v176 = CFEqual(v175, kCFBooleanTrue);
                  *(a4 + 4) = v176 != 0;
                  if (v176)
                  {
                    v177 = *(a1 + 1132);
                    if (v177 == 1)
                    {
                      sub_1544C0(*(v14 + 64));
                      *a4 = 2;
                      if (sub_160EF0(0x1Du, 6))
                      {
                        v181 = sub_160F34(0x1Du);
                        v182 = sub_175AE4();
                        v183 = sub_160F68(6);
                        if (v181)
                        {
                          printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v182, 29, v183, *(a4 + 4));
                          sub_175AE4();
                          sub_160F68(6);
                        }

                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
                      }
                    }

                    else if (v177 == 20)
                    {
                      *(a4 + 4) = 0;
                      if (sub_160EF0(0x1Du, 5))
                      {
                        v178 = sub_160F34(0x1Du);
                        v179 = sub_175AE4();
                        v180 = sub_160F68(5);
                        if (v178)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v179, 29, v180);
                          sub_175AE4();
                          sub_160F68(5);
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
                      }
                    }

                    else
                    {
                      *(a4 + 4) = 0;
                      if (sub_160EF0(0x1Du, 5))
                      {
                        v184 = sub_160F34(0x1Du);
                        v185 = sub_175AE4();
                        v186 = sub_160F68(5);
                        if (v184)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v185, 29, v186);
                          sub_175AE4();
                          sub_160F68(5);
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
                      }
                    }
                  }
                }

                v187 = CFDictionaryGetValue(a2, @"RPSInfo");
                if (v187)
                {
                  v188 = v187;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v189 = sub_160F34(0x1Du);
                    v190 = sub_175AE4();
                    v191 = sub_160F68(6);
                    if (v189)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kRPSInfo found \n", v190, 29, v191);
                      v192 = sub_175AE4();
                      v274 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v192, 29, v274);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v190, 29, v191);
                    }
                  }

                  v193 = a4[10];
                  if (v193 <= 6 && ((1 << v193) & 0x47) != 0)
                  {
                    sub_1574C0(v188, (a4 + 142));
                  }
                }

                v194 = kVTEncodeFrameOptionKey_SliceQP;
                v195 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_SliceQP);
                if (v195 && (v196 = v195, v197 = CFNumberGetTypeID(), v197 == CFGetTypeID(v196)))
                {
                  CFNumberGetValue(v196, kCFNumberSInt32Type, a4 + 11);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v198 = sub_160F34(0x1Du);
                    v199 = sub_175AE4();
                    v200 = sub_160F68(6);
                    v201 = a4[11];
                    if (v198)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v199, 29, v200, v201);
                      v202 = sub_175AE4();
                      v275 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v202, 29, v275, a4[11]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v199, 29, v200, v201);
                    }
                  }
                }

                else
                {
                  v203 = CFDictionaryGetValue(a2, v194);
                  if (v203)
                  {
                    v204 = v203;
                    v205 = CFArrayGetTypeID();
                    if (v205 == CFGetTypeID(v204))
                    {
                      Count = CFArrayGetCount(v204);
                      LODWORD(valuePtr) = 0;
                      if (Count >= 1)
                      {
                        v207 = Count;
                        for (i = 0; i < v207; i = (i + 1))
                        {
                          sub_14AE14(v204, i, &valuePtr);
                          if (!i)
                          {
                            a4[11] = valuePtr;
                          }

                          if (sub_160EF0(0x1Du, 6))
                          {
                            v209 = sub_160F34(0x1Du);
                            v210 = sub_175AE4();
                            v211 = sub_160F68(6);
                            if (v209)
                            {
                              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v210, 29, v211, i, valuePtr);
                              v210 = sub_175AE4();
                              v211 = sub_160F68(6);
                            }

                            syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v210, 29, v211, i, valuePtr);
                          }
                        }
                      }

                      v14 = v285;
                      a3 = v286;
                    }
                  }
                }

                v212 = CFDictionaryGetValue(a2, @"POCLsb");
                a5 = v287;
                if (v212)
                {
                  CFNumberGetValue(v212, kCFNumberSInt32Type, v283);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v213 = sub_160F34(0x1Du);
                    v214 = sub_175AE4();
                    v215 = sub_160F68(6);
                    v216 = *v283;
                    if (v213)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v214, 29, v215, v216);
                      v217 = sub_175AE4();
                      v276 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v217, 29, v276, *v283);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v214, 29, v215, v216);
                    }
                  }
                }

                v218 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_PicParameterSetId);
                if (v218)
                {
                  v219 = a4 + 135;
                  CFNumberGetValue(v218, kCFNumberSInt32Type, a4 + 135);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v220 = sub_160F34(0x1Du);
                    v221 = sub_175AE4();
                    v222 = sub_160F68(6);
                    v223 = *v219;
                    if (v220)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v221, 29, v222, v223);
                      v224 = sub_175AE4();
                      v277 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v224, 29, v277, *v219);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v221, 29, v222, v223);
                    }
                  }
                }

                v225 = CFDictionaryGetValue(a2, @"UserSaoMap");
                if (v225)
                {
                  *(a4 + 1356) = CFEqual(v225, kCFBooleanTrue) != 0;
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v226 = sub_160F34(0x1Du);
                    v227 = sub_175AE4();
                    v228 = sub_160F68(6);
                    v229 = *(a4 + 1356);
                    if (v226)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)\n", v227, 29, v228, v229);
                      v230 = sub_175AE4();
                      v278 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v230, 29, v278, *(a4 + 1356));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v227, 29, v228, v229);
                    }
                  }
                }

                v231 = CFDictionaryGetValue(a2, @"NaluType");
                if (v231)
                {
                  v232 = a4 + 344;
                  CFNumberGetValue(v231, kCFNumberSInt32Type, a4 + 344);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v233 = sub_160F34(0x1Du);
                    v234 = sub_175AE4();
                    v235 = sub_160F68(6);
                    v236 = *v232;
                    if (v233)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)\n", v234, 29, v235, v236);
                      v237 = sub_175AE4();
                      v279 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v237, 29, v279, *v232);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v234, 29, v235, v236);
                    }
                  }
                }

                v238 = CFDictionaryGetValue(a2, @"TemporalID");
                if (v238)
                {
                  v239 = a4 + 345;
                  CFNumberGetValue(v238, kCFNumberSInt32Type, a4 + 345);
                  if (sub_160EF0(0x1Du, 6))
                  {
                    v240 = sub_160F34(0x1Du);
                    v241 = sub_175AE4();
                    v242 = sub_160F68(6);
                    v243 = *v239;
                    if (v240)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)\n", v241, 29, v242, v243);
                      v244 = sub_175AE4();
                      v280 = sub_160F68(6);
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v244, 29, v280, *v239);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v241, 29, v242, v243);
                    }
                  }
                }

                v245 = CFDictionaryGetValue(a2, kVTEncodeFrameOptionKey_RequestNonReferenceFrame);
                if (v245)
                {
                  if (CFEqual(v245, kCFBooleanTrue))
                  {
                    *(a4 + 1392) = 1;
                    if (sub_160EF0(0x1Du, 6))
                    {
                      v246 = sub_160F34(0x1Du);
                      v247 = sub_175AE4();
                      v248 = sub_160F68(6);
                      v249 = *(a4 + 1392);
                      if (v246)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v247, 29, v248, v249);
                        v250 = sub_175AE4();
                        v281 = sub_160F68(6);
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v250, 29, v281, *(a4 + 1392));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v247, 29, v248, v249);
                      }
                    }
                  }
                }

                v251 = a3 + 100;
                if ((*(a1 + 1337) & 4) != 0)
                {
                  if (!sub_13D92C(a2, a3 + 200))
                  {
                    valuePtr = 0u;
                    v289 = 0u;
                    sub_172100(&valuePtr, 32, "%llu %d %d", *(a1 + 56), *(v14 + 8), *v251);
                    sub_13D890(a3 + 200, 50, 6, &valuePtr, 0);
                  }
                }

                else
                {
                  *v251 = 0;
                }

                v57 = v284;
                goto LABEL_271;
              }

              *a3 |= 4uLL;
            }

            *(v47 + 4 * v48) = v49 + 1;
            goto LABEL_58;
          }

          v32 = v31 + v31;
          goto LABEL_46;
        }

LABEL_21:
        *a3 = v24;
        goto LABEL_22;
      }

      v29 = *a3;
      if (*(*(a5 + 136) + 72) > 254)
      {
        v24 = v29 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v29 = *a3;
    }

    v24 = v29 | 4;
    goto LABEL_21;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v25 = sub_160F34(0xCu);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
      v28 = sub_175AE4();
      v258 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v28, 12, v258, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }
  }

  v57 = 4294966295;
LABEL_271:
  if (sub_160EF0(0xCu, 7))
  {
    v252 = sub_160F34(0xCu);
    v253 = sub_175AE4();
    v254 = sub_160F68(7);
    if (v252)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v253, 12, v254, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, v57);
      v255 = sub_175AE4();
      v282 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v255, 12, v282, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v253, 12, v254, "AVE_GetPerFrameData");
    }
  }

  return v57;
}

void sub_10E85C(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  v8 = sub_1502C8();
  if (*(a1 + 10892))
  {
    return;
  }

  v10 = (a1 + 104648);
  if (*(a1 + 76) >= 4)
  {
    v11 = v8[402];
    if (*(a1 + 10804) == 2)
    {
      if ((*(a1 + 10853) & 1) == 0 && v11 <= 0)
      {
        goto LABEL_84;
      }
    }

    else if (v11 < 1)
    {
      goto LABEL_84;
    }

    v12 = a4;
    if (*v10)
    {
      v9 = 0.25;
      v12 = (a4 + *(a1 + 104744) * 3.0) * 0.25;
    }

    v13 = *(a2 + 864);
    *(a1 + 104744) = v12;
    if (v11 >= 1)
    {
      v12 = v11;
      *(a1 + 104744) = v11;
      if (v11 <= 0x19)
      {
        *a2 |= 0x10uLL;
      }
    }

    v14 = *(a1 + 1440);
    v15 = *(a1 + 1444);
    v16 = *(a1 + 1112);
    v17 = v16;
    v18 = v15 * v14;
    v19 = (v15 * v14) >> 12 > 0x7E8;
    v20 = v16 > 120 || (v15 * v14) >> 12 > 0x7E8;
    if (v16 <= 90)
    {
      v19 = 0;
    }

    v21 = v14;
    v22 = v15;
    if (v18 > 0x8CA00)
    {
      v26 = v21 * v22;
      if (v18 > 0x15F900)
      {
        if (v18 > 0x473100)
        {
          v23 = v26 / 8294400.0;
          if (v16 < 28)
          {
            v24 = 24.0;
            v25 = 18000000.0;
            goto LABEL_43;
          }

          if (v16 < 0x2E)
          {
            v24 = 30.0;
            v25 = 22500000.0;
            goto LABEL_43;
          }

          v27 = v16 >= 0x5B;
          v25 = dbl_185A40[v16 < 0x5B];
          v24 = 120.0;
          v30 = 60.0;
LABEL_41:
          if (!v27)
          {
            v24 = v30;
          }

LABEL_43:
          v31 = (v25 * v17 / v24);
          if (*(a1 + 10772) == 2)
          {
            v32 = *(a1 + 24732) == 2;
            v33 = 1.1;
            if (*(a1 + 24732) != 2)
            {
              v33 = 1.0;
            }
          }

          else
          {
            v32 = 0;
            v33 = 1.0;
          }

          v34 = v23 * v31 * v33;
          if (v20)
          {
            if (v19)
            {
              if (v12 <= 8.0)
              {
                v43 = 125.0;
              }

              else
              {
                if (v12 > 18.0)
                {
                  if (v12 <= 22.0)
                  {
                    v35 = v34 * 125.0;
LABEL_102:
                    v58 = v35 / 100.0;
                    if (v58 <= v13)
                    {
                      v58 = v13;
                    }

                    v39 = v58;
                    v38 = 1;
                    goto LABEL_77;
                  }

                  goto LABEL_62;
                }

                v43 = 150.0;
              }

              v44 = v34 * v43;
            }

            else
            {
              if (v12 > 18.0)
              {
                if (v12 <= 23.0)
                {
                  v57 = 125.0;
                  if (v32)
                  {
                    v57 = 150.0;
                  }

                  v35 = v57 * v34;
                  goto LABEL_102;
                }

LABEL_62:
                v38 = 0;
                v39 = v13;
LABEL_77:
                a3[5] = v38;
                if (v39 >= 2 * v13)
                {
                  v39 = 2 * v13;
                }

                *(a2 + 864) = v39;
                *(a1 + 104760) = v39;
                if (sub_160EF0(0x30u, 6))
                {
                  v47 = sub_160F34(0x30u);
                  v48 = sub_175AE4();
                  v49 = sub_160F68(6);
                  if (v47)
                  {
                    printf("%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d\n", v48, 48, v49, *v10, a4, 0, *(a1 + 104744), v13, *(a2 + 864));
                    v48 = sub_175AE4();
                    sub_160F68(6);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d", v48);
                }

                goto LABEL_84;
              }

              v45 = 175.0;
              if (v32)
              {
                v45 = 200.0;
              }

              v44 = v45 * v34;
            }
          }

          else
          {
            LODWORD(v9) = *(a1 + 10560);
            v36 = v9;
            if (v12 <= 20.0)
            {
              v40 = !v32;
              v41 = 175.0;
              v42 = 200.0;
            }

            else
            {
              if (v12 > 23.0)
              {
                if (v12 <= 25.0)
                {
                  v37 = 125.0;
                  if (v32)
                  {
                    v37 = 150.0;
                  }

                  v35 = v37 * (v34 * v36);
                  goto LABEL_102;
                }

                goto LABEL_62;
              }

              v40 = !v32;
              v41 = 150.0;
              v42 = 175.0;
            }

            if (!v40)
            {
              v41 = v42;
            }

            v44 = v41 * (v34 * v36);
          }

          v46 = v44 / 100.0;
          if (v46 <= v13)
          {
            v46 = v13;
          }

          v39 = v46;
          v38 = 2;
          goto LABEL_77;
        }

        v23 = v26 / 2073600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 7700000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 11700000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_185A50;
      }

      else
      {
        v23 = v26 / 921600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 4900000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 8600000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_185A60;
      }
    }

    else
    {
      v23 = v21 * v22 / 307200.0;
      if (v16 < 46)
      {
        v24 = 30.0;
        v25 = 2500000.0;
        goto LABEL_43;
      }

      if (v16 < 0x5B)
      {
        v24 = 60.0;
        v25 = 4400000.0;
        goto LABEL_43;
      }

      v27 = v16 >= 0xB5;
      v28 = v16 < 0xB5;
      v29 = &unk_185A70;
    }

    v25 = v29[v28];
    v24 = 240.0;
    v30 = 120.0;
    goto LABEL_41;
  }

LABEL_84:
  if (sub_160EF0(0x30u, 6))
  {
    v50 = sub_160F34(0x30u);
    v51 = sub_175AE4();
    v52 = sub_160F68(6);
    v53 = *v10;
    if (v50)
    {
      printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", v51, 48, v52, v53, 25.0, a4);
      v54 = sub_175AE4();
      v55 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v54, 48, v55, *v10, 25.0, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v51, 48, v52, v53, 25.0, a4);
    }
  }

  v56 = *(a1 + 10804);
  if (*(a1 + 692) == 1)
  {
    if (v56 != 2)
    {
      goto LABEL_94;
    }

    if (*(a1 + 10847) == 1)
    {
      a3[135] = a4 <= 25.0;
      a3[342] = *(a1 + 4 * (a4 <= 25.0) + 10808);
    }
  }

  else if (v56 != 2)
  {
    goto LABEL_94;
  }

  if ((*(a1 + 10851) & 1) == 0)
  {
LABEL_94:
    if (*(a1 + 10852) != 1)
    {
      return;
    }
  }

  if (a4 <= 25.0 || *(a1 + 10852) == 1)
  {
    *a2 |= 0x10uLL;
  }
}

uint64_t sub_10EF18(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = a1 + 102400;
  if (!*(a1 + 104648))
  {
    v9 = a2[2];
    *(a1 + 104676) = *a2;
    *(a1 + 104684) = a2[1];
    *(a1 + 104692) = v9;
    if (sub_160EF0(0xD8u, 6))
    {
      v10 = sub_160F34(0xD8u);
      v11 = sub_175AE4();
      v12 = sub_160F68(6);
      v13 = *(v3 + 2248);
      if (v10)
      {
        printf("%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d\n", v11, 216, v12, v13);
        v14 = sub_175AE4();
        v36 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", v14, 216, v36, *(v3 + 2248));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", v11, 216, v12, v13);
      }
    }

    if (sub_160EF0(0xD8u, 6))
    {
      v20 = sub_160F34(0xD8u);
      v21 = sub_175AE4();
      v22 = sub_160F68(6);
      if (v20)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v21, 216, v22, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        v21 = sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v21);
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v23 = sub_160F34(3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v24, 3, v25, "AVE_MultipassDataFetch", 6975, "err == noErr", *(v3 + 2248), *a2, *(a2 + 2));
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v41 = *a2;
        v42 = *(a2 + 2);
        v39 = "err == noErr";
        v40 = *(v3 + 2248);
        v38 = 6975;
      }

      else
      {
        v41 = *a2;
        v42 = *(a2 + 2);
        v40 = *(v3 + 2248);
        v38 = 6975;
        v39 = "err == noErr";
      }

      v37 = v25;
      v26 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v27 = sub_160F34(3u);
      v24 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v24, 3, v28, "AVE_MultipassDataFetch", 6976, "data != __null", *(v3 + 2248), *a2, *(a2 + 2));
        v24 = sub_175AE4();
        v28 = sub_160F68(4);
        v41 = *a2;
        v42 = *(a2 + 2);
        v39 = "data != __null";
        v40 = *(v3 + 2248);
        v38 = 6976;
      }

      else
      {
        v41 = *a2;
        v42 = *(a2 + 2);
        v40 = *(v3 + 2248);
        v38 = 6976;
        v39 = "data != __null";
      }

      v37 = v28;
      v26 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v26, v24, 3, v37, "AVE_MultipassDataFetch", v38, v39, v40, v41, v42);
    return 4294954394;
  }

  if (VTMultiPassStorageGetTimeStamp())
  {
    if (sub_160EF0(3u, 4))
    {
      v4 = sub_160F34(3u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (!v4)
      {
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v7 = 7030;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v5, 3, v6, "AVE_MultipassDataFetch", v7, "err == noErr");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_20;
    }

    return 4294954394;
  }

  if ((*(v3 + 2288) & 0x1D) == 1)
  {
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v15 = sub_160F34(3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        v18 = 7035;
LABEL_15:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v16, 3, v17, "AVE_MultipassDataFetch", v18, "err == noErr");
        sub_175AE4();
        sub_160F68(4);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v30 = sub_160F34(3u);
    v31 = sub_175AE4();
    v32 = sub_160F68(4);
    if (v30)
    {
      v33 = 7036;
LABEL_50:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v31, 3, v32, "AVE_MultipassDataFetch", v33, "d != __null");
      sub_175AE4();
      sub_160F68(4);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v3 + 2288) & 0x1D) != 1)
    {
      return 0;
    }

    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!sub_160EF0(3u, 4))
      {
        return 4294954394;
      }

      v29 = sub_160F34(3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v29)
      {
        v18 = 7060;
        goto LABEL_15;
      }

LABEL_45:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!sub_160EF0(3u, 4))
    {
      return 4294954394;
    }

    v35 = sub_160F34(3u);
    v31 = sub_175AE4();
    v32 = sub_160F68(4);
    if (v35)
    {
      v33 = 7061;
      goto LABEL_50;
    }

LABEL_54:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (sub_160EF0(3u, 4))
  {
    v19 = sub_160F34(3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(4);
    if (!v19)
    {
      goto LABEL_20;
    }

    v7 = 7055;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t sub_10FE10(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const __CFDictionary *a7)
{
  if (sub_160EF0(0xCu, 7))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v15, 12, v16, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7);
      v17 = sub_175AE4();
      v36 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v17, 12, v36, "AVE_Session_HEVC_Process", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v15, 12, v16, "AVE_Session_HEVC_Process", a1);
    }
  }

  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      sub_13FDC0(*(a1 + 104712));
    }

    if (*(a1 + 104648))
    {
      goto LABEL_14;
    }

    v23 = sub_173E4(*(a1 + 104736), *(a1 + 1096));
    if (!v23)
    {
      v33 = *(a1 + 104712);
      v34 = sub_175AE4();
      sub_140028(v33, 5u, v34);
      if (*(a1 + 1112) >= 1)
      {
        v35 = *(a1 + 1112);
      }

      else
      {
        v35 = 30;
      }

      sub_153F28(*(a1 + 104704), v35, 0, 0);
LABEL_14:
      v18 = sub_FF9C0(a1, a2, a3, a4, a5, a6, a7, 0);
      goto LABEL_24;
    }

    v18 = v23;
    if (sub_160EF0(3u, 4))
    {
      v24 = sub_160F34(3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
        v27 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v27, 3, v38, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }
    }
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v19 = sub_160F34(0xCu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v22 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v22, 12, v37, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v18 = 4294966295;
  }

LABEL_24:
  if (sub_160EF0(0xCu, 7))
  {
    v28 = sub_160F34(0xCu);
    v29 = sub_175AE4();
    v30 = sub_160F68(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7, v18);
      v31 = sub_175AE4();
      v39 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v31, 12, v39, "AVE_Session_HEVC_Process", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2);
    }
  }

  return v18;
}

uint64_t sub_11027C(uint64_t a1, const void *a2, OpaqueCMTaggedBufferGroup *a3, const void *a4, const void *a5, const void *a6, const __CFDictionary *a7)
{
  if (sub_160EF0(0xCu, 7))
  {
    v12 = sub_160F34(0xCu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v13, 12, v14, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, a6, a7);
      v15 = sub_175AE4();
      v80 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v15, 12, v80, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v13, 12, v14, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }
  }

  v91 = a7;
  v92 = a6;
  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      sub_13FDC0(*(a1 + 104712));
    }

    if (!*(a1 + 104648))
    {
      v32 = sub_173E4(*(a1 + 104736), *(a1 + 1096));
      if (v32)
      {
        v33 = v32;
        if (sub_160EF0(3u, 4))
        {
          v34 = sub_160F34(3u);
          v35 = sub_175AE4();
          v36 = sub_160F68(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v35, 3, v36, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
            v37 = sub_175AE4();
            v82 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v37, 3, v82, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v35, 3, v36, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }
        }

        goto LABEL_79;
      }

      v55 = *(a1 + 104712);
      v56 = sub_175AE4();
      sub_140028(v55, 5u, v56);
      if (*(a1 + 1112) >= 1)
      {
        v57 = *(a1 + 1112);
      }

      else
      {
        v57 = 30;
      }

      sub_153F28(*(a1 + 104704), v57, 0, 0);
    }

    if (*(a1 + 10556) == 2)
    {
      v90 = a2;
      Count = CMTaggedBufferGroupGetCount(a3);
      v17 = Count;
      if (*(a1 + 10556) > Count)
      {
        if (sub_160EF0(0xCu, 4))
        {
          v18 = sub_160F34(0xCu);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | no enough buffers %d %d\n", v19, 12, v20, "AVE_Session_HEVC_ProcessMultiFrame", 8225, "num >= pINS->VideoParams.iLayerNum", v17, *(a1 + 10556));
            v21 = sub_175AE4();
            v22 = sub_160F68(4);
            v87 = v17;
            v88 = *(a1 + 10556);
            v85 = 8225;
            v86 = "num >= pINS->VideoParams.iLayerNum";
            v81 = v22;
            v23 = "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d";
LABEL_74:
            syslog(3, v23, v21, 12, v81, "AVE_Session_HEVC_ProcessMultiFrame", v85, v86, v87, v88, p_tagBuffer);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d", v19);
          }
        }

LABEL_77:
        v33 = 4294965288;
        goto LABEL_78;
      }

      if (Count < 1)
      {
        v33 = 0;
LABEL_78:
        a2 = v90;
        goto LABEL_79;
      }

      v38 = 0;
      v39 = a1 + 15575;
      v40 = Count & 0x7FFFFFFF;
      v41 = &kCMTagInvalid;
      while (2)
      {
        v42 = 0;
        v43 = v41;
        v96 = *v41;
        tagBuffer = v96;
        numberOfTagsCopied = 0;
        do
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a3, v42);
          TagsWithCategory = CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied);
          if (TagsWithCategory || numberOfTagsCopied != 1)
          {
            if (!sub_160EF0(0xCu, 4))
            {
              goto LABEL_77;
            }

            v58 = sub_160F34(0xCu);
            v59 = sub_175AE4();
            v60 = sub_160F68(4);
            if (v58)
            {
              printf("%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p\n", v59, 12, v60, "AVE_Session_HEVC_ProcessMultiFrame", 8245, "ret == 0 && numOfTags == 1", TagsWithCategory, numberOfTagsCopied, &tagBuffer);
              v21 = sub_175AE4();
              v61 = sub_160F68(4);
              v88 = numberOfTagsCopied;
              p_tagBuffer = &tagBuffer;
              v86 = "ret == 0 && numOfTags == 1";
              v87 = TagsWithCategory;
              v85 = 8245;
              v81 = v61;
              v23 = "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p";
              goto LABEL_74;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p", v59, 12);
            goto LABEL_77;
          }

          ++v42;
        }

        while (CMTagGetSInt64Value(tagBuffer) != *(v39 + v38) && v42 < v40);
        if (!*(a1 + 10556))
        {
LABEL_71:
          if (!sub_160EF0(0xCu, 4))
          {
            goto LABEL_77;
          }

          v62 = sub_160F34(0xCu);
          v63 = sub_175AE4();
          v64 = sub_160F68(4);
          SInt64Value = CMTagGetSInt64Value(tagBuffer);
          if (v62)
          {
            printf("%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer\n", v63, 12, v64, "AVE_Session_HEVC_ProcessMultiFrame", 8279, "storedLayerID != -1", SInt64Value);
            v21 = sub_175AE4();
            v66 = sub_160F68(4);
            v86 = "storedLayerID != -1";
            v87 = CMTagGetSInt64Value(tagBuffer);
            v85 = 8279;
            v81 = v66;
            v23 = "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer";
            goto LABEL_74;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer", v63);
          goto LABEL_77;
        }

        v47 = 0;
        while (1)
        {
          v48 = *(a1 + 10900) ? v47 << (*(a1 + 15770) == 1) : v47;
          v49 = *(v39 + v48);
          if (CMTagGetSInt64Value(tagBuffer) == v49)
          {
            break;
          }

          if (++v47 >= *(a1 + 10556))
          {
            goto LABEL_71;
          }
        }

        v50 = *(a1 + 15640 + v47);
        if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_StereoView, &v96, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
        {
          FlagsValue = CMTagGetFlagsValue(v96);
          v52 = 11808;
          if (FlagsValue != 1)
          {
            v52 = 11809;
          }

          v53 = *(a1 + v52);
          if (v50 != v53)
          {
            if (sub_160EF0(0xCu, 4))
            {
              v76 = sub_160F34(0xCu);
              v77 = sub_175AE4();
              v78 = sub_160F68(4);
              if (v76)
              {
                printf("%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d\n", v77, 12, v78, "AVE_Session_HEVC_ProcessMultiFrame", 8294, "storedViewID == curViewID", 0, v50, v53);
                v79 = sub_175AE4();
                sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v79, 12);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v77, 12);
              }
            }

            v33 = 4294965287;
            goto LABEL_78;
          }
        }

        CVPixelBufferForTag = CMTaggedBufferGroupGetCVPixelBufferForTag(a3, tagBuffer, 0);
        if (CVPixelBufferForTag)
        {
          a2 = v90;
          v33 = sub_FF9C0(a1, v90, CVPixelBufferForTag, a4, a5, v92, v91, v38);
          if (!v33)
          {
            ++v38;
            v41 = v43;
            if (v38 != v40)
            {
              continue;
            }
          }
        }

        else
        {
          a2 = v90;
          if (sub_160EF0(0xCu, 4))
          {
            v72 = sub_160F34(0xCu);
            v73 = sub_175AE4();
            v74 = sub_160F68(4);
            if (v72)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer\n", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
              v75 = sub_175AE4();
              v84 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v75, 12, v84, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }
          }

          v33 = 4294965288;
        }

        break;
      }
    }

    else
    {
      if (sub_160EF0(0xCu, 4))
      {
        v29 = sub_160F34(0xCu);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid number of video layers %d\n", v30, 12, v31, "AVE_Session_HEVC_ProcessMultiFrame", 8220, "pINS->VideoParams.iLayerNum > 1 && pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556));
          v30 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid number of video layers %d", v30);
      }

      v33 = 4294965291;
    }
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v24 = sub_160F34(0xCu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v28, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v33 = 4294966295;
  }

LABEL_79:
  if (sub_160EF0(0xCu, 7))
  {
    v67 = sub_160F34(0xCu);
    v68 = sub_175AE4();
    v69 = sub_160F68(7);
    if (v67)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, v92, v91, v33);
      v70 = sub_175AE4();
      v83 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v70, 12, v83, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }
  }

  return v33;
}

uint64_t sub_110DC8(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", v3, 12, v4, "AVE_Session_HEVC_Complete", a1);
      v5 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v23, "AVE_Session_HEVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", v3, 12, v4, "AVE_Session_HEVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = sub_175AE4();
    sub_140028(v6, 6u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v26 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 120), &v26);
      if (v8 && sub_160EF0(0xCu, 4))
      {
        v9 = sub_160F34(0xCu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_HEVC_Complete", 8341, "ret == 0", a1, *(a1 + 56), v8);
          v12 = sub_175AE4();
          v24 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v12, 12, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v10, 12, v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v16 = *(a1 + 104712);
    v17 = sub_175AE4();
    sub_1403FC(v16, 6u, v17);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v13 = sub_160F34(0xCu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v14, 12, v15, "AVE_Session_HEVC_Complete", 8329, "pINS != __null", 0);
        v14 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v14);
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v18 = sub_160F34(0xCu);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v19, 12, v20, "AVE_Session_HEVC_Complete", a1, v8);
      v21 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v21, 12, v25, "AVE_Session_HEVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v19, 12, v20, "AVE_Session_HEVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_111160(uint64_t a1, void *a2)
{
  if (sub_160EF0(0xCu, 8))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
      v7 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v23, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (a1 + 8 * v8 + 80);
    }

    else
    {
      v9 = (a1 + 88);
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = CFGetRetainCount(*v9);
      if (v11 != 1 && sub_160EF0(0xCu, 5))
      {
        v12 = sub_160F34(0xCu);
        v13 = sub_175AE4();
        v14 = sub_160F68(5);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d\n", v13, 12, v14, "AVE_Session_HEVC_GetPropertyDict", 8384, a1, *(a1 + 56), v11);
          v13 = sub_175AE4();
          sub_160F68(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d", v13, 12);
      }

      CFRetain(v10);
      v18 = 0;
    }

    else
    {
      v18 = 4294966288;
    }

    *a2 = v10;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v15 = sub_160F34(0xCu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v16, 12, v17, "AVE_Session_HEVC_GetPropertyDict", 8364, "pINS != __null && ppDict != __null", a1, a2);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v16, 12);
    }

    v18 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v20, 12, v21, "AVE_Session_HEVC_GetPropertyDict", a1, a2, v18);
      v20 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v20);
  }

  return v18;
}

uint64_t sub_1114E8(const void *a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (sub_160EF0(0xCu, 8))
  {
    v8 = sub_160F34(0xCu);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 12, v10, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 12);
  }

  if (a1 && a3 && a4)
  {
    v11 = sub_83D6C(a1, a2, a3, a4);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v12 = sub_160F34(0xCu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_HEVC_GetProperty", 8411, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_HEVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_HEVC_GetProperty");
      }
    }

    v11 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(8);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4, v11);
      v19 = sub_175AE4();
      v22 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 12, v18);
    }
  }

  return v11;
}

uint64_t sub_1117B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  if (sub_160EF0(0xCu, 6))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v10, 12, v11, "AVE_Session_HEVC_Prepare", v8);
      v12 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v12, 12, v35, "AVE_Session_HEVC_Prepare", v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v10, 12, v11, "AVE_Session_HEVC_Prepare", v8);
    }
  }

  if (v8)
  {
    if (*(v8 + 104644) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v40, 0x8C8uLL);
    v13 = sub_10A628(v8);
    if (v13)
    {
      v14 = v13;
      if (sub_160EF0(0xCu, 4))
      {
        v15 = sub_160F34(0xCu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v16, 12, v17, "AVE_Session_HEVC_Prepare", 8443, "err == 0", v8, *(v8 + 56));
          v16 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v16, 12);
      }

      goto LABEL_26;
    }

    *(v8 + 10760) = 1;
    v21 = sub_175AE4();
    v37[0] = v8 + 672;
    v37[1] = v8 + 1440;
    v37[2] = v8 + 10752;
    v38 = *(v8 + 104712);
    v39 = *(v8 + 104728);
    v40[281] = v8 + 12000;
    v40[282] = v8 + 24236;
    v40[284] = v8 + 39844;
    v40[283] = v8 + 32040;
    v40[285] = v8 + 49476;
    v40[286] = v8 + 59112;
    v40[287] = v8 + 80600;
    memcpy(v41, (v8 + 106112), sizeof(v41));
    v42 = v21;
    if (!sub_1296B0(*(v8 + 120), v37, v8 + 160, v22, v23, v24, v25, v26))
    {
LABEL_20:
      v14 = 0;
      *(v8 + 104644) = 30567;
      goto LABEL_26;
    }

    if (sub_160EF0(0xCu, 4))
    {
      v27 = sub_160F34(0xCu);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v28, 12, v29, "AVE_Session_HEVC_Prepare", 8455, "err == noErr", v8, *(v8 + 56));
        v28 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v28, 12);
    }

    v14 = 4294966296;
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v18 = sub_160F34(0xCu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v19, 12, v20, "AVE_Session_HEVC_Prepare", 8432, "pINS != __null", 0);
        v19 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v19);
    }

    v14 = 4294966295;
  }

LABEL_26:
  if (sub_160EF0(0xCu, 6))
  {
    v30 = sub_160F34(0xCu);
    v31 = sub_175AE4();
    v32 = sub_160F68(6);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v31, 12, v32, "AVE_Session_HEVC_Prepare", v8, v14);
      v33 = sub_175AE4();
      v36 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v33, 12, v36, "AVE_Session_HEVC_Prepare", v8, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v31, 12, v32, "AVE_Session_HEVC_Prepare", v8, v14);
    }
  }

  return v14;
}

uint64_t sub_111D00(uint64_t a1, unsigned int *a2)
{
  cf = 0;
  memset(v79, 0, sizeof(v79));
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_HEVC_StartTileSession", a1, a2);
      v7 = sub_175AE4();
      v69 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v69, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v24 = sub_160F34(0xCu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v25, 12, v26, "AVE_Session_HEVC_StartTileSession", 8842, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v27 = sub_175AE4();
          v71 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v27, 12, v71);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v25, 12, v26);
        }
      }

      Mutable = 0;
      v28 = 4294965295;
      goto LABEL_48;
    }

    v8 = a1 + 104644;
    v9 = *(a1 + 104712);
    v10 = sub_175AE4();
    sub_140028(v9, 3u, v10);
    v11 = *a2;
    v12 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v12;
    *(a1 + 11452) = v11;
    *(a1 + 11456) = v12;
    *(a1 + 764) = 2;
    v13 = sub_14E470(*(a1 + 68), 1, 2);
    sub_FD500(a1);
    v14 = v13[1];
    if (*(a1 + 1440) <= *v13)
    {
      v15 = *v13;
    }

    else
    {
      v15 = *(a1 + 1440);
    }

    if (*(a1 + 1444) <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = *(a1 + 1444);
    }

    sub_FD844(a1);
    if (sub_160EF0(0xCu, 7))
    {
      v75 = v16;
      v17 = sub_160F34(0xCu);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
      if (v17)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v18, 12, v19);
        v20 = sub_175AE4();
        v70 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v20, 12, v70);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v18, 12, v19);
      }

      v8 = a1 + 104644;
      v16 = v75;
    }

    *(a1 + 10752) = 2;
    *(a1 + 10764) = 1;
    *(a1 + 10855) = *(a1 + 76) > 3;
    *(a1 + 10788) = 4;
    *(a1 + 59393) = 257;
    *(a1 + 39892) = 2;
    *(a1 + 39924) = 2;
    *(a1 + 10808) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    v30 = *(a1 + 1240);
    *(a1 + 10176) = 2;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0xF0000000FLL;
    *(a1 + 1152) = 15;
    *(a1 + 1112) = 0;
    *(a1 + 1352) = 30;
    *(a1 + 1448) |= 0x10000000uLL;
    v31 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v31 & 0xFEFF7E89 | 0x1000000;
    *(a1 + 688) |= 0x100u;
    *(a1 + 10796) = 0x100000000;
    *(a1 + 1096) = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 1;
    *(a1 + 39886) = 1;
    *(a1 + 10522) = 0;
    *(a1 + 1240) = v30 & 0xFFFFFAFF;
    if (sub_160EF0(0xCu, 7))
    {
      v32 = v16;
      v33 = v15;
      v34 = v8;
      v35 = sub_160F34(0xCu);
      v36 = sub_175AE4();
      v37 = sub_160F68(7);
      if (v35)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v36, 12, v37);
        v38 = sub_175AE4();
        v72 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v38, 12, v72);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v36, 12, v37);
      }

      v8 = v34;
      v15 = v33;
      v16 = v32;
    }

    if (sub_158978(*(a1 + 68), *(a1 + 64), 62, 2, *a2, a2[1], v15, v16, 0x414C4C20u, 1, v79, &cf))
    {
      if (sub_160EF0(0xCu, 4))
      {
        v39 = sub_160F34(0xCu);
        v40 = sub_175AE4();
        v41 = sub_160F68(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v40, 12, v41, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v40, 12, v41, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_46:
      Mutable = 0;
LABEL_47:
      v28 = 4294966296;
LABEL_48:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_52;
    }

    if (*(a1 + 16) == 1)
    {
      if (sub_160EF0(0xCu, 7))
      {
        v49 = sub_160F34(0xCu);
        v50 = sub_175AE4();
        v51 = sub_160F68(7);
        if (v49)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v50, 12, v51);
          v52 = sub_175AE4();
          v73 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v52, 12, v73);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v50, 12, v51);
        }
      }
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (sub_160EF0(3u, 4))
        {
          v42 = sub_160F34(3u);
          v43 = sub_175AE4();
          v44 = sub_160F68(4);
          if (v42)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v43, 3, v44, "AVE_Session_HEVC_StartTileSession", 8895, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_46;
      }

      if (*(a1 + 76) >= 4)
      {
        v76 = 2;
        valuePtr = 2;
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          if (sub_160EF0(3u, 4))
          {
            v65 = sub_160F34(3u);
            v66 = sub_175AE4();
            v67 = sub_160F68(4);
            if (v65)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v66, 3, v67, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
              v68 = sub_175AE4();
              v74 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v68, 3, v74, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v66, 3, v67, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }
          }

          v28 = 4294966293;
          goto LABEL_48;
        }

        v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_HorizontalOffsetAlignment, v53);
        if (v53)
        {
          CFRelease(v53);
        }

        v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v76);
        CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_VerticalOffsetAlignment, v54);
        if (v54)
        {
          CFRelease(v54);
        }

        if (*(a1 + 76) >= 12)
        {
          CFDictionaryAddValue(Mutable, kVTTileEncoderRequirement_EncoderSupportsSourcePadding, kCFBooleanTrue);
        }

        if (VTTileEncoderSessionSetTileEncodeRequirements())
        {
          if (sub_160EF0(3u, 4))
          {
            v55 = sub_160F34(3u);
            v56 = sub_175AE4();
            v57 = sub_160F68(4);
            if (v55)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v56, 3, v57, "AVE_Session_HEVC_StartTileSession", 8930, "err == noErr", "AVE_Session_HEVC_StartTileSession", 8930);
              v56 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v56, 3);
          }

          goto LABEL_47;
        }

LABEL_76:
        *v8 = 30566;
        if (*(a1 + 16) == 1)
        {
          v58 = 1;
        }

        else
        {
          v58 = 3;
        }

        v59 = sub_16960(*(v8 + 92), *(a1 + 56), 0, 0, 2, v58);
        if (v59)
        {
          v28 = v59;
          if (sub_160EF0(0xCu, 4))
          {
            v60 = sub_160F34(0xCu);
            v61 = sub_175AE4();
            v62 = sub_160F68(4);
            if (v60)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v61, 12, v62, "AVE_Session_HEVC_StartTileSession", 8948, "ret == 0", a1, *(a1 + 56));
              v61 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v61, 12);
          }
        }

        else
        {
          v63 = *(v8 + 68);
          v64 = sub_175AE4();
          sub_1403FC(v63, 3u, v64);
          v28 = 0;
        }

        goto LABEL_48;
      }
    }

    Mutable = 0;
    goto LABEL_76;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v22, 12, v23, "AVE_Session_HEVC_StartTileSession", 8838, "pINS != __null && pDim != __null", a1, a2);
      v22 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v22, 12);
  }

  v28 = 4294966295;
LABEL_52:
  if (sub_160EF0(0xCu, 6))
  {
    v45 = sub_160F34(0xCu);
    v46 = sub_175AE4();
    v47 = sub_160F68(6);
    if (v45)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v46, 12, v47, "AVE_Session_HEVC_StartTileSession", a1, a2, v28);
      v46 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v46);
  }

  return v28;
}

uint64_t sub_112998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v139 = v9;
  theDict = v10;
  v12 = v11;
  v138 = v13;
  v15 = v14;
  v17 = v16;
  v141 = v8;
  pixelBuffer = v14;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v18 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v20, 12, v21, "AVE_Session_HEVC_ProcessTile", v141, v17, v15, v138, v139, v12, theDict);
      v22 = sub_175AE4();
      v124 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v22, 12, v124, "AVE_Session_HEVC_ProcessTile", v141);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v20, 12, v21, "AVE_Session_HEVC_ProcessTile", v141);
    }
  }

  if (v12 && v139 && v141 && pixelBuffer)
  {
    v23 = (v141 + 104644);
    if (theDict && CFDictionaryContainsKey(theDict, @"SessionIndicator"))
    {
      sub_13FDC0(*(v141 + 104712));
    }

    if (!*(v141 + 104648))
    {
      v34 = sub_173E4(*(v141 + 104736), *(v141 + 1096));
      if (v34)
      {
        v35 = v34;
        if (sub_160EF0(3u, 4))
        {
          v36 = sub_160F34(3u);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v37, 3, v38, "AVE_Session_HEVC_ProcessTile", 9013, "ret == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_97;
      }

      v62 = *(v141 + 104712);
      v63 = sub_175AE4();
      sub_140028(v62, 5u, v63);
    }

    v137 = sub_175AE4();
    if (*(v141 + 1112) >= 1)
    {
      v24 = *(v141 + 1112);
    }

    else
    {
      v24 = 30;
    }

    v25 = (v141 + 106096);
    sub_172A38(v24, v141 + 106096);
    if (sub_160EF0(0x33u, 7))
    {
      v26 = sub_160F34(0x33u);
      v27 = sub_175AE4();
      v28 = sub_160F68(7);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v27, 51, v28, "AVE_Session_HEVC_ProcessTile", 9025, *(v141 + 56), *(v141 + 104648), *v25, *(v141 + 106104));
        v29 = sub_175AE4();
        v125 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v29, 51, v125);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v27, &stru_20.segname[11], v28);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v141 + 108000) = PixelFormatType;
    if (!*(v141 + 104648))
    {
      v168 = *(v141 + 1440);
      v40 = sub_167CD8(PixelFormatType);
      if (!v40)
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v64 = sub_160F34(3u);
        v59 = sub_175AE4();
        v65 = sub_160F68(4);
        if (v64)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v59, 3, v65, "AVE_Session_HEVC_ProcessTile", 9040, "pPixelFmt != __null", v141, *(v141 + 56), *(v141 + 108000));
          v59 = sub_175AE4();
          v65 = sub_160F68(4);
        }

        v135 = *(v141 + 56);
        v136 = *(v141 + 108000);
        v133 = "pPixelFmt != __null";
        v134 = v141;
        v132 = 9040;
        v127 = v65;
        v61 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_77;
      }

      if (*(v18 + 420))
      {
        v41 = (v18 + 105);
      }

      else
      {
        v41 = 0;
      }

      sub_CC848(*(v141 + 104720), v41, *(v141 + 64), *(v141 + 10772), v18[103], v18[104], &v168, 1, *(v40 + 3), *(v40 + 1), *(v141 + 1136));
      sub_CCF60(*(v141 + 104720), -1, pixelBuffer);
    }

    v42 = *v23;
    if (*v23 == 30566)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      *(v141 + 10804) = v53;
      v54 = sub_10A628(v141);
      if (v54)
      {
        v35 = v54;
        if (sub_160EF0(3u, 4))
        {
          v55 = sub_160F34(3u);
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
          if (v55)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v56, 3, v57, "AVE_Session_HEVC_ProcessTile", 9134, "err == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_97;
      }

      v49 = (v141 + 106096);
      v50 = v17;
      sub_102728(v141, pixelBuffer);
      if (sub_1020A4(v141, &pixelBuffer, &v162, &v161, &v160 + 1, &v160, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v72 = sub_160F34(3u);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
          if (!v72)
          {
LABEL_95:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_96;
          }

          v46 = v12;
          v47 = v17;
          v48 = 9144;
LABEL_73:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v44, 3, v45, "AVE_Session_HEVC_ProcessTile", v48, "err == noErr");
          sub_175AE4();
          v12 = v46;
          v17 = v47;
          sub_160F68(4);
          goto LABEL_95;
        }

LABEL_93:
        v35 = 4294966296;
        v17 = v50;
        goto LABEL_97;
      }

      sub_10298C(v141, *(v141 + 10804) == 2);
      if (sub_102AD4(v141))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_93;
        }

        v78 = sub_160F34(3u);
        v67 = sub_175AE4();
        v68 = sub_160F68(4);
        if (v78)
        {
          v69 = v12;
          v70 = v17;
          v71 = 9154;
          goto LABEL_92;
        }

LABEL_139:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_96;
      }

      v73 = v12;
      sub_107808(v141, pixelBuffer);
      sub_10A354(v141);
      bzero(v173, 0x8C8uLL);
      v168 = v141 + 672;
      v169 = v141 + 1440;
      v171 = *(v141 + 104712);
      v172 = *(v141 + 104728);
      v170 = v141 + 10752;
      v175 = v141 + 12000;
      v176 = v141 + 24236;
      v178 = v141 + 39844;
      v177 = v141 + 32040;
      v179 = v141 + 49476;
      v180 = v141 + 59112;
      v181 = v141 + 80600;
      memcpy(v182, (v141 + 106112), sizeof(v182));
      v183 = v137;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v168 + 624) |= 0x100u;
      }

      if (sub_12A644(*(v141 + 120), &v168, v141 + 128, *(v141 + 16), *(v141 + 112), *(v141 + 104652), *(v141 + 104656), v141 + 160, (v141 + 11772), (v141 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v84 = sub_160F34(3u);
        v75 = sub_175AE4();
        v76 = sub_160F68(4);
        if (v84)
        {
          v77 = 9189;
          goto LABEL_113;
        }

LABEL_181:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_96;
      }
    }

    else
    {
      if (v42 != 30567)
      {
        if (v42 == 30568)
        {
          if (sub_1020A4(v141, &pixelBuffer, &v162, &v161, &v160 + 1, &v160, 0))
          {
            if (sub_160EF0(3u, 4))
            {
              v43 = sub_160F34(3u);
              v44 = sub_175AE4();
              v45 = sub_160F68(4);
              if (!v43)
              {
                goto LABEL_95;
              }

              v46 = v12;
              v47 = v17;
              v48 = 9059;
              goto LABEL_73;
            }

LABEL_96:
            v35 = 4294966296;
LABEL_97:
            if (v162 == 1 && pixelBuffer)
            {
              CVPixelBufferRelease(pixelBuffer);
            }

            ++*(v141 + 104648);
            goto LABEL_101;
          }

LABEL_115:
          *v23 = 30568;
          bzero(v164, 0x1738uLL);
          v158 = 0u;
          v159 = 0u;
          *&v155[16] = 0u;
          v156 = 0;
          v154 = 0u;
          *v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v151 = 0u;
          v150 = 0u;
          v149 = 0u;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0;
          bzero(&v168, 0x4A40uLL);
          v85 = pixelBuffer;
          v148[0] = v17;
          v148[1] = pixelBuffer;
          v157 = v164;
          *&v158 = v137;
          DWORD2(v158) = *(v141 + 104668);
          *&v155[8] = *v25;
          v156 = &v168;
          if (*(v141 + 10804) == 2)
          {
            sub_15F768(pixelBuffer, &v142);
            sub_CD91C(*(v141 + 104720), *(v141 + 104668), *(v141 + 104648), &v142);
            v85 = pixelBuffer;
          }

          *&v155[24] = &v142;
          v86 = CMGetAttachment(v85, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
          if (v86)
          {
            sub_1C324(*(v141 + 104736), *(v141 + 104648), v86);
          }

          sub_207A4(*(v141 + 104736), *(v141 + 104648));
          sub_20464(*(v141 + 104736), *(v141 + 104648), *(v141 + 56));
          sub_1D808(*(v141 + 104736), *(v141 + 104648), *&v143);
          sub_1DC50(*(v141 + 104736), *(v141 + 104648), *&v142);
          sub_1CE6C(*(v141 + 104736), *(v141 + 104648), SDWORD1(v146));
          sub_1F124(*(v141 + 104736), *(v141 + 104648), v139[2], *v139);
          if (sub_160EF0(0xCu, 7))
          {
            v87 = sub_160F34(0xCu);
            v88 = sub_175AE4();
            v89 = sub_160F68(7);
            if (v87)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v88, 12, v89);
              v90 = sub_175AE4();
              v129 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v90, 12, v129);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v88, 12, v89);
            }
          }

          v173[1301] = *(v141 + 10788) == 4;
          v91 = *(v141 + 10808);
          v173[1305] = *(v141 + 10845);
          *(v141 + 10845) = 0;
          v173[1306] = *(v141 + 10204);
          v174 = v91;
          DWORD2(v171) = 0;
          *&v171 = 0;
          if (theDict)
          {
            if (CFDictionaryContainsKey(theDict, @"SessionIndicator"))
            {
              sub_13FDC0(*(v141 + 104712));
            }

            Value = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_UserQpMap);
            DWORD2(v171) = 0;
            *&v171 = 0;
            v167 &= ~0x10000u;
            if (*(v141 + 1338))
            {
              v93 = Value;
              if (Value)
              {
                DWORD2(v171) = CFDataGetLength(Value);
                *&v171 = CFDataGetBytePtr(v93);
                v167 |= 0x10000u;
              }
            }

            v94 = CFDictionaryGetValue(theDict, @"ForceNonRefFrame");
            if (v94 && CFEqual(v94, kCFBooleanTrue))
            {
              v166 |= 2u;
            }

            else
            {
              v95 = CFDictionaryGetValue(theDict, kVTEncodeFrameOptionKey_ForceKeyFrame);
              if (v95 && CFEqual(v95, kCFBooleanTrue))
              {
                if (*(v141 + 10532))
                {
                  v96 = 3;
                }

                else
                {
                  v96 = (*(v141 + 1241) & 1) != 0 ? 1 : 2;
                }

                LODWORD(v168) = v96;
                v165 |= 1u;
                if (sub_160EF0(0x1Du, 6))
                {
                  v97 = sub_160F34(0x1Du);
                  v98 = sub_175AE4();
                  v99 = sub_160F68(6);
                  if (v97)
                  {
                    printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v98, 29, v99, v168, v165);
                    v98 = sub_175AE4();
                    v99 = sub_160F68(6);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v98, 29, v99, v168, v165);
                }
              }
            }

            if (*(v141 + 1297))
            {
              v100 = CFDictionaryGetValue(theDict, @"ReconstructedPixelBuffer");
              if (!v100)
              {
                if (sub_160EF0(3u, 4))
                {
                  v118 = sub_160F34(3u);
                  v119 = sub_175AE4();
                  v120 = sub_160F68(4);
                  if (v118)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p\n", v119, 3, v120, "AVE_GetPerTileData", 8560, "pUseReconBuffer != __null", 0);
                    v119 = sub_175AE4();
                    sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p", v119);
                }

                v101 = 0;
LABEL_150:
                if (sub_160EF0(0xCu, 7))
                {
                  v102 = sub_160F34(0xCu);
                  v103 = sub_175AE4();
                  v104 = sub_160F68(7);
                  if (v102)
                  {
                    printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v103, 12, v104);
                    v105 = sub_175AE4();
                    v130 = sub_160F68(7);
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v105, 12, v130);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v103, 12, v104);
                  }
                }

                if (v101)
                {
                  if (sub_114384(v141, &v168, v138))
                  {
                    if (sub_160EF0(3u, 4))
                    {
                      v106 = sub_160F34(3u);
                      v107 = sub_175AE4();
                      v108 = sub_160F68(4);
                      if (v106)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v107, 3, v108, "AVE_Session_HEVC_ProcessTile", 9266, "err == noErr");
                        sub_175AE4();
                        sub_160F68(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
                    }
                  }

                  else
                  {
                    *(&v159 + 1) = *(v141 + 104648);
                    if (v161)
                    {
                      v112 = pixelBuffer;
                    }

                    else
                    {
                      v112 = 0;
                    }

                    *(&v151 + 1) = v112;
                    v113 = sub_12D95C(*(v141 + 120), v148);
                    v35 = v113;
                    if (!v113)
                    {
                      goto LABEL_97;
                    }

                    if (v113 == -536870173)
                    {
                      if (sub_160EF0(0x10u, 5))
                      {
                        v114 = sub_160F34(0x10u);
                        v115 = sub_175AE4();
                        v116 = sub_160F68(5);
                        if (v114)
                        {
                          printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v115, 16, v116);
                          v117 = sub_175AE4();
                          v131 = sub_160F68(5);
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v117, 16, v131);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v115, 16, v116);
                        }
                      }

                      v35 = 0;
                      goto LABEL_97;
                    }

                    if (sub_160EF0(3u, 4))
                    {
                      v121 = sub_160F34(3u);
                      v122 = sub_175AE4();
                      v123 = sub_160F68(4);
                      if (v121)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v122, 3, v123, "AVE_Session_HEVC_ProcessTile", 9290, "err == noErr");
                        sub_175AE4();
                        sub_160F68(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
                    }
                  }
                }

                else if (sub_160EF0(3u, 4))
                {
                  v109 = sub_160F34(3u);
                  v110 = sub_175AE4();
                  v111 = sub_160F68(4);
                  if (v109)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.\n", v110, 3, v111, "AVE_Session_HEVC_ProcessTile", 9261, "err == noErr");
                    sub_175AE4();
                    sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.");
                }

                goto LABEL_96;
              }

              v184 = v100;
            }
          }

          v101 = 1;
          goto LABEL_150;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v58 = sub_160F34(3u);
        v59 = sub_175AE4();
        v60 = sub_160F68(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v59, 3, v60, "AVE_Session_HEVC_ProcessTile", 9196, "false", *v23);
          v59 = sub_175AE4();
          v60 = sub_160F68(4);
          v133 = "false";
          v134 = *v23;
          v132 = 9196;
        }

        else
        {
          v134 = *v23;
          v132 = 9196;
          v133 = "false";
        }

        v127 = v60;
        v61 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_77:
        syslog(3, v61, v59, 3, v127, "AVE_Session_HEVC_ProcessTile", v132, v133, v134, v135, v136);
        goto LABEL_96;
      }

      v49 = (v141 + 106096);
      v50 = v17;
      if (sub_15F5D0(pixelBuffer))
      {
        v51 = 1;
      }

      else
      {
        v51 = 2;
      }

      *(v141 + 10804) = v51;
      sub_102728(v141, pixelBuffer);
      if (sub_1020A4(v141, &pixelBuffer, &v162, &v161, &v160 + 1, &v160, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v52 = sub_160F34(3u);
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
          if (!v52)
          {
            goto LABEL_95;
          }

          v46 = v12;
          v47 = v17;
          v48 = 9076;
          goto LABEL_73;
        }

        goto LABEL_93;
      }

      sub_10298C(v141, *(v141 + 10804) == 2);
      if (sub_102AD4(v141))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_93;
        }

        v66 = sub_160F34(3u);
        v67 = sub_175AE4();
        v68 = sub_160F68(4);
        if (v66)
        {
          v69 = v12;
          v70 = v17;
          v71 = 9084;
LABEL_92:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v67, 3, v68, "AVE_Session_HEVC_ProcessTile", v71, "err == noErr");
          sub_175AE4();
          v12 = v69;
          v17 = v70;
          sub_160F68(4);
          goto LABEL_139;
        }

        goto LABEL_139;
      }

      v73 = v12;
      sub_107808(v141, pixelBuffer);
      sub_10A354(v141);
      bzero(v173, 0x8C8uLL);
      v168 = v141 + 672;
      v169 = v141 + 1440;
      v171 = *(v141 + 104712);
      v172 = *(v141 + 104728);
      v170 = v141 + 10752;
      v175 = v141 + 12000;
      v176 = v141 + 24236;
      v178 = v141 + 39844;
      v177 = v141 + 32040;
      v179 = v141 + 49476;
      v180 = v141 + 59112;
      v181 = v141 + 80600;
      memcpy(v182, (v141 + 106112), sizeof(v182));
      v183 = v137;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v168 + 624) |= 0x100u;
      }

      if (sub_12A644(*(v141 + 120), &v168, v141 + 128, *(v141 + 16), *(v141 + 112), *(v141 + 104652), *(v141 + 104656), v141 + 160, (v141 + 11772), (v141 + 11464)))
      {
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_96;
        }

        v74 = sub_160F34(3u);
        v75 = sub_175AE4();
        v76 = sub_160F68(4);
        if (v74)
        {
          v77 = 9120;
LABEL_113:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v75, 3, v76, "AVE_Session_HEVC_ProcessTile", v77, "err == noErr");
          sub_175AE4();
          v12 = v73;
          v17 = v50;
          sub_160F68(4);
          goto LABEL_181;
        }

        goto LABEL_181;
      }
    }

    v25 = v49;
    goto LABEL_115;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v30 = sub_160F34(0xCu);
    v31 = sub_175AE4();
    v32 = sub_160F68(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v31, 12, v32, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v141, v17, pixelBuffer, v138, v139, v12, theDict);
      v33 = sub_175AE4();
      v126 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v33, 12, v126, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v141);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v31, 12, v32, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v141);
    }
  }

  v35 = 4294966295;
LABEL_101:
  if (sub_160EF0(0xCu, 7))
  {
    v79 = sub_160F34(0xCu);
    v80 = sub_175AE4();
    v81 = sub_160F68(7);
    if (v79)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v80, 12, v81, "AVE_Session_HEVC_ProcessTile", v141, v17, pixelBuffer, v138, v139, v12, theDict, v35);
      v82 = sub_175AE4();
      v128 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v82, 12, v128, "AVE_Session_HEVC_ProcessTile", v141, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v80, 12, v81, "AVE_Session_HEVC_ProcessTile", v141, v17);
    }
  }

  return v35;
}

uint64_t sub_114384(int32x2_t *a1, uint64_t a2, unsigned int *a3)
{
  v6 = &a1[1271] + 3;
  v7 = *a3;
  v8 = *(a3 + 2);
  if (sub_160EF0(0xCu, 7))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    v12 = a1[1359].i32[0];
    if (v9)
    {
      printf("%lld %d AVE %s: FIG: Pixelbuffer width %d height %d\n", v10, 12, v11, a1[1358].i32[1], v12);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", v13, 12, v14, a1[1358].i32[1], a1[1359].i32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", v10, 12, v11, a1[1358].i32[1], v12);
    }
  }

  v15 = v6[684];
  v16 = *a3;
  if (v6[684])
  {
    v17 = a3[1];
    goto LABEL_7;
  }

  if (v16 != ((v16 + 63) & 0xFFFFFFC0))
  {
    if (!sub_160EF0(3u, 4))
    {
      return 4294966296;
    }

    v28 = sub_160F34(3u);
    v25 = sub_175AE4();
    v29 = sub_160F68(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", v25, 3, v29, "AVE_GetTileInfo", 8588, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
      v25 = sub_175AE4();
      v29 = sub_160F68(4);
      v99 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
      v101 = *a3;
      v97 = 8588;
    }

    else
    {
      v101 = *a3;
      v97 = 8588;
      v99 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
    }

    v92 = v29;
    v27 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned";
    goto LABEL_66;
  }

  v17 = a3[1];
  if (v17 != ((v17 + 15) & 0xFFFFFFF0))
  {
    if (!sub_160EF0(3u, 4))
    {
      return 4294966296;
    }

    v24 = sub_160F34(3u);
    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v25, 3, v26, "AVE_GetTileInfo", 8591, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      v99 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
      v101 = a3[1];
      v97 = 8591;
    }

    else
    {
      v101 = a3[1];
      v97 = 8591;
      v99 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
    }

    v92 = v26;
    v27 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned";
LABEL_66:
    syslog(3, v27, v25, 3, v92, "AVE_GetTileInfo", v97, v99, v101);
    return 4294966296;
  }

LABEL_7:
  v18 = vadd_s32(v8, v7);
  v19 = *&vadd_s32(v8, 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
  *(a2 + 552) = v16;
  *(a2 + 556) = v17;
  v108 = v19;
  if (a1[9].i32[1] < 12)
  {
    *(a2 + 560) = *(v6 + 697);
    v23 = v18.i32[0];
    v22 = v18.u32[1];
  }

  else if (v15)
  {
    v20 = vceq_s32(a1[180], v19);
    v21 = *(v6 + 697);
    *(a2 + 560) = vbsl_s8(v20, v21, vmin_u32(v18, v21));
    v22 = v21.u32[1];
    v23 = v21.i32[0];
  }

  else
  {
    v30 = a1[1358].u32[1];
    if (v18.i32[0] <= v30)
    {
      v31 = a3[2];
    }

    else
    {
      v31 = v30 - v16;
    }

    *(a2 + 560) = v31;
    v23 = v31 + v16;
    v32 = a1[1359].u32[0];
    if (v18.i32[1] <= v32)
    {
      v33 = a3[3];
    }

    else
    {
      v33 = v32 - v17;
    }

    *(a2 + 564) = v33;
    v22 = v33 + v17;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v34 = sub_160F34(0xCu);
    v35 = sub_175AE4();
    v36 = sub_160F68(7);
    v37 = a1[180].u32[0];
    if (v34)
    {
      printf("%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n\n", v35, 12, v36, v37, a1[180].i32[1], a1[1358].i32[1], a1[1359].i32[0], v108, HIDWORD(v108), *(a2 + 560), *(a2 + 564), v23, v22);
      v38 = sub_175AE4();
      v39 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v38, 12, v39, a1[180].u32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v35, 12, v36, v37);
    }
  }

  if (v6[33] != 1)
  {
    if (*v6)
    {
      v51 = a1[1274].i32[0] == 10;
      if ((v23 << v51) > a1[1358].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v52 = sub_160F34(3u);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          v55 = 8711;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v53, 3, v54, "AVE_GetTileInfo", 8711, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
LABEL_47:
          v53 = sub_175AE4();
          v57 = sub_160F68(4);
          v103 = a3[2];
          v104 = a1[1358].u32[0];
          v100 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
          v102 = *a3;
          v98 = v55;
          v94 = v57;
          v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
          goto LABEL_98;
        }

        v103 = a3[2];
        v104 = a1[1358].u32[0];
        v102 = *a3;
        v91 = 8711;
        goto LABEL_97;
      }

      if (v22 > a1[1359].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v62 = sub_160F34(3u);
        v53 = sub_175AE4();
        v63 = sub_160F68(4);
        if (v62)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v53, 3, v63, "AVE_GetTileInfo", 8716, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v53 = sub_175AE4();
          v63 = sub_160F68(4);
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v102 = a3[1];
          v98 = 8716;
        }

        else
        {
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v102 = a3[1];
          v98 = 8716;
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v94 = v63;
        v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
LABEL_98:
        syslog(3, v58, v53, 3, v94, "AVE_GetTileInfo", v98, v100, v102, v103, v104, v105, v106, v107);
        return 4294966296;
      }

      result = 0;
      v67 = a3[1];
      v68 = *a3 << v51;
    }

    else
    {
      if (((2 * ((2863311531u * (v23 + 2)) >> 32)) & 0xFFFFFFFC) > a1[1358].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v56 = sub_160F34(3u);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v56)
        {
          v55 = 8691;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v53, 3, v54, "AVE_GetTileInfo", 8691, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
          goto LABEL_47;
        }

        v103 = a3[2];
        v104 = a1[1358].u32[0];
        v102 = *a3;
        v91 = 8691;
LABEL_97:
        v98 = v91;
        v100 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v94 = v54;
        v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
        goto LABEL_98;
      }

      if (v22 > a1[1359].i32[0])
      {
        if (!sub_160EF0(3u, 4))
        {
          return 4294966296;
        }

        v64 = sub_160F34(3u);
        v53 = sub_175AE4();
        v65 = sub_160F68(4);
        if (v64)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)\n", v53, 3, v65, "AVE_GetTileInfo", 8696, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v53 = sub_175AE4();
          v65 = sub_160F68(4);
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v102 = a3[1];
          v98 = 8696;
        }

        else
        {
          v103 = a3[3];
          v104 = a1[1359].u32[0];
          v102 = a3[1];
          v98 = 8696;
          v100 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v94 = v65;
        v58 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)";
        goto LABEL_98;
      }

      result = 0;
      v67 = a3[1];
      v68 = (*a3 / 48) << 6;
    }

    *(a2 + 544) = v68;
    *(a2 + 548) = v67;
    return result;
  }

  if (a1[9].i32[1] < 12)
  {
LABEL_103:
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  v40.i32[0] = a1[1358].i32[1];
  v40.i32[1] = *(a2 + 560);
  v41 = vadd_s32(v40, 0x1F0000001FLL);
  v42.i32[0] = a1[1359].i32[0];
  v42.i32[1] = *(a2 + 564);
  v43 = vadd_s32(v42, 0x1F0000001FLL);
  v44 = vand_s8(vmin_u32(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v43, 5uLL))), vbic_s8(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v41, 5uLL))), vcgt_u32(0x4000000040, v41))), vcgt_u32(v43, 0x3F0000003FLL));
  v45 = v44.i32[1];
  v46 = v44.i32[0];
  if (v44.i32[0] == v44.i32[1])
  {
    if (sub_160EF0(0xCu, 7))
    {
      v47 = sub_160F34(0xCu);
      v48 = sub_175AE4();
      v49 = sub_160F68(7);
      if (v47)
      {
        printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d\n", v48, 12, v49, v46, v46);
        v50 = sub_175AE4();
        v93 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v50, 12, v93, v46, v46);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v48, 12, v49, v46, v46);
      }
    }

    v69 = a1[3086].i32[0];
    if (v69 > 3)
    {
      v72 = 0;
      v71 = 0;
    }

    else
    {
      v70 = (&unk_1A2B74 + 8 * v69);
      v72 = *v70;
      v71 = v70[1];
    }

    v73 = a1[1358].i32[1] / v72 + 15;
    v74 = 32 - __clz((v73 >> 4) - 1);
    if (v73 >= 0x20)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v76 = a1[1359].i32[0] / v71 + 15;
    v77 = 32 - __clz((v76 >> 4) - 1);
    if (v77 < v75)
    {
      v75 = v77;
    }

    if (v76 <= 0x1F)
    {
      v78 = 0;
    }

    else
    {
      v78 = v75;
    }

    v79 = *(a2 + 560) / v72 + 15;
    v80 = 32 - __clz((v79 >> 4) - 1);
    if (v79 >= 0x20)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v82 = *(a2 + 564) / v71 + 15;
    v83 = 32 - __clz((v82 >> 4) - 1);
    if (v83 < v81)
    {
      v81 = v83;
    }

    if (v82 <= 0x1F)
    {
      v84 = 0;
    }

    else
    {
      v84 = v81;
    }

    if (v78 == v84)
    {
      if (sub_160EF0(0xCu, 7))
      {
        v85 = sub_160F34(0xCu);
        v86 = sub_175AE4();
        v87 = sub_160F68(7);
        if (v85)
        {
          printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d\n", v86, 12, v87, v78, v78);
          v88 = sub_175AE4();
          v95 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v88, 12, v95, v78, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v86, 12, v87, v78, v78);
        }
      }

      goto LABEL_103;
    }

    if (sub_160EF0(3u, 4))
    {
      v89 = sub_160F34(3u);
      v60 = sub_175AE4();
      v61 = sub_160F68(4);
      if (v89)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v60, 3, v61, "AVE_GetTileInfo", 8677, "uiPixelBufferTwiddleBitsChroma == uiEncodedRegionTwiddleBitsChroma", a1[1358].i32[1], a1[1359].i32[0], v78, *(a2 + 560), *(a2 + 564), v84);
        goto LABEL_94;
      }

      goto LABEL_104;
    }
  }

  else if (sub_160EF0(3u, 4))
  {
    v59 = sub_160F34(3u);
    v60 = sub_175AE4();
    v61 = sub_160F68(4);
    if (v59)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v60, 3, v61, "AVE_GetTileInfo", 8663, "uiPixelBufferTwiddleBitsLuma == uiEncodedRegionTwiddleBitsLuma", a1[1358].i32[1], a1[1359].i32[0], v46, *(a2 + 560), *(a2 + 564), v45);
LABEL_94:
      v90 = sub_175AE4();
      v96 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v90, 3, v96);
      return 4294966296;
    }

LABEL_104:
    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v60, 3, v61);
  }

  return 4294966296;
}

uint64_t sub_114FC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 104636;
  v5 = (a1 + 760);
  v6 = sub_175AE4();
  if (sub_160EF0(0xCu, 6))
  {
    v7 = sub_160F34(0xCu);
    v8 = sub_175AE4();
    v9 = sub_160F68(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, v9, "AVE_Session_HEVC_Create", a1, a2);
      v10 = sub_175AE4();
      v26 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v26, "AVE_Session_HEVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, v9, "AVE_Session_HEVC_Create", a1, a2);
    }
  }

  v11 = sub_1502C8();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10772) = 2;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 776) = 1;
  *v5 = xmmword_185A80;
  *(a1 + 712) = v11[103];
  v12 = sub_1289FC(1, 2, (a1 + 120));
  if (!v12)
  {
    *(a1 + 68) = sub_129100(*(a1 + 120));
    *(a1 + 72) = sub_12910C(*(a1 + 120));
    *(a1 + 56) = sub_129118(*(a1 + 120));
    *(a1 + 76) = *(sub_16FD90(*(a1 + 68)) + 1);
    sub_DE2C4(a1 + 106112, *(a1 + 56));
    operator new();
  }

  v13 = v12;
  if (sub_160EF0(0xCu, 4))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d\n", v15, 12, v16, "AVE_Session_HEVC_Create", 9358, "ret == 0", a1, 0, v13);
      v17 = sub_175AE4();
      v27 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v17, 12, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v15, 12, v16);
    }
  }

  v18 = *(v4 + 68);
  if (v18)
  {
    sub_153A34(v18);
    operator delete();
  }

  v19 = *(v4 + 100);
  if (v19)
  {
    sub_16934(v19);
    operator delete();
  }

  v20 = sub_175AE4() - v6;
  if (sub_160EF0(0xCu, 4))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v22, 12, v23, "AVE_Session_HEVC_Create", a1, a2, 0, v20, v13);
      v24 = sub_175AE4();
      v28 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v24, 12, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v22, 12, v23);
    }
  }

  return v13;
}

void sub_11565C(uint64_t a1)
{
  v2 = sub_1502C8();
  v3 = v2[221];
  if (v3 <= 3)
  {
    *(a1 + 1256) = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 1252) = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    *(a1 + 1288) = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    *(a1 + 1308) = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    *(a1 + 1312) = v7;
  }

  if (*(a1 + 1256) < 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (sub_160EF0(0x1Eu, 6))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(6);
      if (v11)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", v12, 30, v13);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (*(a1 + 1132) != 20)
    {
      *(a1 + 10764) = 1;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v8 = sub_160F34(0x1Eu);
      v9 = sub_175AE4();
      v10 = sub_160F68(6);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
        v9 = sub_175AE4();
        v10 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
    }
  }

  *(a1 + 39880) = *(a1 + 1144) - 26;
  if (*(a1 + 1338))
  {
    *(a1 + 39886) = 1;
    *(a1 + 10205) = 0;
  }

  if (*(a1 + 39959) == 1)
  {
    *(a1 + 1132) = 3;
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1240) &= ~0x400u;
    v14 = *(a1 + 24732);
    *(a1 + 39886) = 0;
    v14 *= -6;
    *(a1 + 1348) = v14;
    *(a1 + 1344) = v14;
    *(a1 + 1152) = v14;
    *(a1 + 1148) = v14;
    *(a1 + 1144) = v14;
    *(a1 + 1232) = *(a1 + 1344);
    *(a1 + 1336) = 0;
    *(a1 + 10604) = 0;
  }
}

void H9EncoderRegister()
{
  v0 = sub_15B650();
  if (!v0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v2 = Mutable;
      CFDictionaryAddValue(Mutable, kVTVideoEncoder_IsHardwareAccelerated, kCFBooleanTrue);
      CFDictionaryAddValue(v2, kVTVideoEncoder_IsParavirtualizationAware, kCFBooleanTrue);
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
      if (MutableCopy)
      {
        v4 = MutableCopy;
        CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.hevc");
        v0 = VTRegisterVideoEncoderWithInfo();
        if (!v0)
        {
          CFDictionaryAddValue(v4, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.ohvc");
          CFDictionaryAddValue(v4, kVTVideoEncoder_Hide, kCFBooleanTrue);
          v0 = VTRegisterVideoEncoderWithInfo();
        }

        CFRelease(v2);
      }

      else
      {
        v0 = 0;
        v4 = v2;
      }

      CFRelease(v4);
    }

    else
    {
      v0 = 0;
    }
  }

  if (sub_160EF0(2u, 5))
  {
    v5 = sub_160F34(2u);
    v6 = sub_175AE4();
    v7 = sub_160F68(5);
    if (v5)
    {
      printf("%lld %d AVE %s: Register HEVC video encoder of AVE %d\n", v6, 2, v7, v0);
      v8 = sub_175AE4();
      v9 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", v8, 2, v9, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", v6, 2, v7, v0);
    }
  }
}

uint64_t sub_115AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 137792;
  v5 = a1 + 25784;
  sub_1285DC(a1 + 16);
  *(a1 + 29328) = *(a2 + 16);
  *(v5 + 3552) = *a2;
  *(a1 + 29352) = *(a2 + 32);
  *(a1 + 29312) = *(a2 + 72);
  *(v4 + 16) = *(a2 + 204);
  *(v4 + 12) = *(a2 + 200);
  *(v4 + 24) = *(a2 + 208);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v4 = *(a2 + 216);
  v6 = *(a2 + 40);
  *(a1 + 29296) = *(a2 + 56);
  *(a1 + 29280) = v6;
  v7 = *(a2 + 80);
  if (v7)
  {
    memcpy((a1 + 29368), v7, 0x300uLL);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    memcpy((a1 + 30136), v8, 0x2460uLL);
  }

  memcpy((a1 + 39448), *(a2 + 96), 0x4E0uLL);
  v9 = *(a2 + 96);
  *(a1 + 40696) = *(a2 + 104);
  v10 = *(v9 + 20);
  if (v10 == 2)
  {
    v16 = *(a2 + 144);
    if (v16)
    {
      memcpy((a1 + 45152), v16, 0x2FCCuLL);
    }

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(a2 + 152 + 8 * v17);
      if (v20)
      {
        memcpy((a1 + 57388 + 7804 * v17), v20, 0x1E7CuLL);
      }

      v21 = *(a2 + 168 + 8 * v17);
      if (v21)
      {
        memcpy((a1 + 72996 + 9632 * v17), v21, 0x25A0uLL);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v22 = *(a2 + 184);
    if (v22)
    {
      memcpy((a1 + 92264), v22, 0x53F0uLL);
    }

    v13 = *(a2 + 192);
    if (v13)
    {
      v14 = (a1 + 113752);
      v15 = 24024;
      goto LABEL_25;
    }
  }

  else if (v10 == 1)
  {
    v11 = *(a2 + 120);
    if (v11)
    {
      memcpy((a1 + 40712), v11, 0x6B4uLL);
    }

    v12 = *(a2 + 128);
    if (v12)
    {
      memcpy((a1 + 42428), v12, 0x180uLL);
    }

    v13 = *(a2 + 136);
    if (v13)
    {
      v14 = (a1 + 42812);
      v15 = 2340;
LABEL_25:
      memcpy(v14, v13, v15);
    }
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    if (sub_160F34(0x2Eu))
    {
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      printf("%lld %d AVE %s: codectype not recognized! %d\n", v23, 46, v24, *(*(a2 + 96) + 20));
    }

    v25 = sub_175AE4();
    v26 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: codectype not recognized! %d", v25, 46, v26, *(*(a2 + 96) + 20));
  }

  *(a1 + 29100) = 0;
  *(a1 + 29084) = 0u;
  *(a1 + 29112) = 0u;
  bzero((a1 + 28032), 0x418uLL);
  *(v5 + 3488) = -1;
  *(v5 + 3492) = 0;
  *(a1 + 29360) = 0;
  *v5 = 0;
  *(a1 + 143688) = 0;
  *(a1 + 25792) = 0u;
  *(a1 + 25808) = 0u;
  *(a1 + 25824) = 0u;
  *(a1 + 25840) = 0u;
  *(a1 + 25856) = 0u;
  *(a1 + 25872) = 0u;
  *(a1 + 25888) = 0u;
  *(a1 + 25904) = 0u;
  *(a1 + 25920) = 0u;
  *(a1 + 25936) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25984) = 0u;
  *(a1 + 26000) = 0u;
  *(a1 + 26016) = 0u;
  *(a1 + 26032) = 0u;
  *(a1 + 26048) = 0u;
  *(a1 + 26064) = 0u;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26920) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 26888) = 0u;
  *(a1 + 26904) = 0u;
  *(a1 + 26856) = 0u;
  *(a1 + 26872) = 0u;
  *(a1 + 26824) = 0u;
  *(a1 + 26840) = 0u;
  *(a1 + 26792) = 0u;
  *(a1 + 26808) = 0u;
  *(a1 + 26760) = 0u;
  *(a1 + 26776) = 0u;
  *(a1 + 26728) = 0u;
  *(a1 + 26744) = 0u;
  *(a1 + 26696) = 0u;
  *(a1 + 26712) = 0u;
  *(a1 + 26664) = 0u;
  *(a1 + 26680) = 0u;
  *(a1 + 26632) = 0u;
  *(a1 + 26648) = 0u;
  *(a1 + 26600) = 0u;
  *(a1 + 26616) = 0u;
  *(a1 + 26568) = 0u;
  *(a1 + 26584) = 0u;
  *(a1 + 26536) = 0u;
  *(a1 + 26552) = 0u;
  *(a1 + 26504) = 0u;
  *(a1 + 26520) = 0u;
  *(a1 + 26472) = 0u;
  *(a1 + 26488) = 0u;
  bzero((a1 + 27072), 0x3C0uLL);
  *(a1 + 143680) = 0;
  *(a1 + 143664) = 0u;
  *(a1 + 143696) = *(a2 + 232);
  return a1;
}

uint64_t sub_115F10(uint64_t a1)
{
  v2 = -240;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 + 26272);
    if (v4)
    {
      IOSurfaceUnlock(v4, 0, 0);
      CFRelease(*(v3 + 26272));
      *(v3 + 26272) = 0;
    }

    v5 = *(v3 + 26952);
    if (v5)
    {
      IOSurfaceUnlock(v5, 0, 0);
      CFRelease(*(v3 + 26952));
      *(v3 + 26952) = 0;
    }

    v6 = a1 + v2;
    v7 = *(a1 + v2 + 27552);
    if (v7)
    {
      IOSurfaceUnlock(v7, 0, 0);
      CFRelease(*(v6 + 27552));
      *(v6 + 27552) = 0;
    }

    v8 = *(v6 + 28032);
    if (v8)
    {
      IOSurfaceUnlock(v8, 0, 0);
      CFRelease(*(v6 + 28032));
      *(v6 + 28032) = 0;
    }

    v2 += 8;
  }

  while (v2);
  if (*(a1 + 29360))
  {
    FigFormatDescriptionRelease();
    *(a1 + 29360) = 0;
  }

  v9 = *(a1 + 29112);
  if (v9)
  {
    free(v9);
    *(a1 + 29112) = 0;
    *(a1 + 29120) = 0;
  }

  sub_1287C0((a1 + 25448));
  sub_1287C0((a1 + 25400));
  v10 = *(a1 + 25368);
  if (v10)
  {
    *(a1 + 25376) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_11602C(uint64_t a1, const void *a2, char *a3, unsigned int *a4, int *a5)
{
  v136[0] = 0;
  v134 = 0;
  v135 = 0;
  if (sub_160EF0(0x2Eu, 7))
  {
    v9 = sub_160F34(0x2Eu);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %p %p %p\n", v10, 46, v11, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5);
      v12 = sub_175AE4();
      v115 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v12, 46, v115);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v10, 46, v11);
    }
  }

  if (a5 && *a5)
  {
    v129 = a1 + 39252;
    if (sub_160EF0(0x2Eu, 8))
    {
      v13 = sub_160F34(0x2Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d\n", v14, 46, v15, "AVE_FrameRecv", "CreateVideoFormatDesc", 244, *a5);
        v14 = sub_175AE4();
        sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d", v14);
    }

    v131 = a2;
    v127 = (a1 + 30136);
    v128 = a1;
    v133 = a5;
    if (*a5 >= 1)
    {
      v26 = 0;
      v27 = a5 + 4;
      do
      {
        if (sub_160EF0(0x2Eu, 8))
        {
          v28 = sub_160F34(0x2Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(8);
          v31 = *(v27 - 3);
          v32 = *(v27 - 2);
          v33 = *(v27 - 1);
          v34 = *v27;
          if (v28)
          {
            printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v29, 46, v30, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v26, v31, v32, *(v27 - 1), v34);
            v29 = sub_175AE4();
            v30 = sub_160F68(8);
            v31 = *(v27 - 3);
            v32 = *(v27 - 2);
            v33 = *(v27 - 1);
            v34 = *v27;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v29, 46, v30, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v26, v31, v32, v33, v34);
          a5 = v133;
        }

        ++v26;
        v27 += 4;
      }

      while (v26 < *a5);
    }

    v35 = (a1 + 39448);
    v36 = *(a1 + 39468);
    if (v36 == 1)
    {
      v45 = (a1 + 40712);
      v20 = sub_16A75C(0, a3, a5, (a1 + 40712), &v135);
      a2 = v131;
      if (v135)
      {
        if (*(a1 + 41808))
        {
          CFDictionarySetValue(v135, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
        }

        v46 = *v127;
        v47 = *(a1 + 40748);
        if (v47 > 3)
        {
          v49 = 0;
        }

        else
        {
          v48 = (&unk_1A2B74 + 8 * v47);
          v50 = *v48;
          v49 = v48[1];
          v46 -= v50 * *(a1 + 41896);
        }

        v58 = *(a1 + 30140) - *(a1 + 41904) * v49;
        if (sub_160EF0(0x2Eu, 8))
        {
          v59 = sub_160F34(0x2Eu);
          v60 = sub_175AE4();
          v61 = sub_160F68(8);
          if (v59)
          {
            printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v60, 46, v61, "AVE_FrameRecv", "CreateVideoFormatDesc", 277, *(a1 + 30136), *(a1 + 30140), v46, v58, *(a1 + 41896), *(a1 + 41904));
            v62 = sub_175AE4();
            v118 = sub_160F68(8);
            syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v62, 46, v118);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v60, 46, v61);
          }

          a2 = v131;
        }

        if (*v35 == 2)
        {
          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        v67 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          v19 = 0;
LABEL_137:
          a5 = v133;
          goto LABEL_17;
        }

        if (sub_160EF0(0x2Eu, 4))
        {
          v68 = sub_160F34(0x2Eu);
          v69 = sub_175AE4();
          v70 = sub_160F68(4);
          if (v68)
          {
            a2 = v131;
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d\n", v69, 46, v70, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr", *v35, v131, v46, v58, v135, (a1 + 29360), v67);
            v71 = sub_175AE4();
            v119 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v71, 46, v119, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
          }

          else
          {
            a2 = v131;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v69, 46, v70, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
          }
        }

        v19 = 0;
LABEL_108:
        v20 = 4294966296;
        goto LABEL_137;
      }

      if (sub_160EF0(0x2Eu, 4))
      {
        v54 = sub_160F34(0x2Eu);
        v55 = sub_175AE4();
        v56 = sub_160F68(4);
        if (v54)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d\n", v55, 46, v56, "AVE_FrameRecv", "CreateVideoFormatDesc", 261, "pCFDict != __null", a3, a5, v45, &v135, v20);
          v57 = sub_175AE4();
          v117 = sub_160F68(4);
          a5 = v133;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v57, 46, v117, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v55, 46, v56, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }
      }

      v19 = 0;
    }

    else
    {
      a2 = v131;
      v37 = a1;
      if (v36 == 2)
      {
        v38 = *(a1 + 30144);
        v39 = sub_21ECC(*(v128 + 143696), a4[10], 64);
        if (v39 >= 1)
        {
          v40 = v39;
          v41 = malloc_type_malloc(v39, 0x100004077774924uLL);
          if (!v41)
          {
            if (sub_160EF0(0x2Eu, 4))
            {
              v63 = sub_160F34(0x2Eu);
              v64 = sub_175AE4();
              v65 = sub_160F68(4);
              if (v63)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d\n", v64, 46, v65, "AVE_FrameRecv", "CreateVideoFormatDesc", 323, "piSEIData != __null", v40);
                v64 = sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d", v64, 46);
            }

            v19 = 0;
            goto LABEL_114;
          }

          v19 = v41;
          if (sub_160EF0(0x2Eu, 7))
          {
            v42 = sub_160F34(0x2Eu);
            v43 = sub_175AE4();
            v44 = sub_160F68(7);
            if (v42)
            {
              printf("%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment\n", v43, 46, v44, "AVE_FrameRecv", "CreateVideoFormatDesc", 326, v40);
              v43 = sub_175AE4();
              sub_160F68(7);
              v37 = v128;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment", v43);
            a5 = v133;
          }

          v72 = sub_17AF8(*(v37 + 143696), a4[10], 64, v19, v40, v136);
          if (v72)
          {
            v20 = v72;
            if (!sub_160EF0(0x2Eu, 4))
            {
              goto LABEL_17;
            }

            v73 = sub_160F34(0x2Eu);
            v74 = sub_175AE4();
            v75 = sub_160F68(4);
            if (v73)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d\n", v74, 46, v75, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0", v40, v19, v35, a4, v136, v20);
              v76 = sub_175AE4();
              a2 = v131;
              v120 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v76, 46, v120, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v74, 46, v75, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            goto LABEL_137;
          }

          if (v136[0])
          {
LABEL_83:
            if (*v129 >= 2u)
            {
              MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults = VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults();
              if (sub_160EF0(0x2Eu, 4))
              {
                v92 = sub_160F34(0x2Eu);
                v93 = sub_175AE4();
                v94 = sub_160F68(4);
                if (v92)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d\n", v93, 46, v94, "AVE_FrameRecv", "CreateVideoFormatDesc", 354, "pSEI3D != __null", v131, *(v129 + 1252), *(v129 + 1253), &v134, MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults);
                  v95 = sub_175AE4();
                  v124 = sub_160F68(4);
                  a5 = v133;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v95, 46, v124, "AVE_FrameRecv", "CreateVideoFormatDesc");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v93, 46, v94, "AVE_FrameRecv", "CreateVideoFormatDesc");
                }
              }

LABEL_114:
              v20 = 4294966293;
              goto LABEL_17;
            }

            v20 = sub_16B828(0, a3, v133, v19, v136[0], 0, 0, (v37 + 57388), &v135);
            v78 = v135;
            if (v135)
            {
              if (*v129 < 2u)
              {
                a2 = v131;
                a5 = v133;
              }

              else
              {
                a5 = v133;
                v20 = sub_16C9A8(1, a3, v133, (v37 + 57388), v135);
                v78 = v135;
                a2 = v131;
                if (!v135)
                {
                  if (sub_160EF0(0x2Eu, 4))
                  {
                    v79 = sub_160F34(0x2Eu);
                    v80 = sub_175AE4();
                    v81 = sub_160F68(4);
                    if (v79)
                    {
                      a5 = v133;
                      printf("%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d\n", v80, 46, v81, "AVE_FrameRecv", "CreateVideoFormatDesc", 373, "pCFDict != __null", a3, v133, (v37 + 57388), v135, v20);
                      v82 = sub_175AE4();
                      v121 = sub_160F68(4);
                      a2 = v131;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v82, 46, v121, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }

                    else
                    {
                      a5 = v133;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v80, 46, v81, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }
                  }

                  goto LABEL_17;
                }
              }

              if (*(v37 + 64508))
              {
                CFDictionarySetValue(v78, kCMFormatDescriptionExtension_FullRangeVideo, kCFBooleanTrue);
              }

              if ((v38 & 0x800) != 0)
              {
                v20 = sub_1606EC(a2, (v37 + 40676), *(v129 + 216), v135);
                if (v20)
                {
                  if (!sub_160EF0(0x2Eu, 4))
                  {
                    goto LABEL_17;
                  }

                  v88 = sub_160F34(0x2Eu);
                  v89 = sub_175AE4();
                  v90 = sub_160F68(4);
                  if (v88)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d\n", v89, 46, v90, "AVE_FrameRecv", "CreateVideoFormatDesc", 392, "ret == 0", a2, (v37 + 40676), *(v129 + 216), v135, v20);
                    v91 = sub_175AE4();
                    v123 = sub_160F68(4);
                    a2 = v131;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v91, 46, v123, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v89, 46, v90, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  }

                  goto LABEL_137;
                }

                v87 = 1902671459;
              }

              else
              {
                v87 = 1752589105;
              }

              v130 = v87;
              v96 = *v127;
              v97 = *(v37 + 57840);
              if (v97 > 3)
              {
                v99 = 0;
              }

              else
              {
                v98 = (&unk_1A2B74 + 8 * v97);
                v100 = *v98;
                v99 = v98[1];
                v96 -= v100 * *(v37 + 57872);
              }

              v101 = v127[1] - *(v37 + 57880) * v99;
              if (sub_160EF0(0x2Eu, 8))
              {
                v102 = sub_160F34(0x2Eu);
                v126 = sub_175AE4();
                v103 = sub_160F68(8);
                if (v102)
                {
                  printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v126, 46, v103, "AVE_FrameRecv", "CreateVideoFormatDesc", 403, *v127, v127[1], v96, v101, *(v37 + 57872), *(v37 + 57880));
                  v104 = sub_175AE4();
                  v105 = sub_160F68(8);
                  v37 = v128;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v104, 46, v105);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v126, 46, v103);
                }
              }

              v106 = (v37 + 29360);
              if (*v35 == 2)
              {
                v107 = VTTileEncoderSessionCreateVideoFormatDescription();
              }

              else
              {
                v107 = VTEncoderSessionCreateVideoFormatDescription();
              }

              v108 = v107;
              if (v107)
              {
                if (sub_160EF0(0x2Eu, 4))
                {
                  v109 = sub_160F34(0x2Eu);
                  v110 = sub_175AE4();
                  v111 = sub_160F68(4);
                  v112 = *v35;
                  if (v109)
                  {
                    v125 = v96;
                    a2 = v131;
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d\n", v110, 46, v111, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v112, v131, v130, v125, v101, v135, v106, v108);
                    v113 = sub_175AE4();
                    v114 = sub_160F68(4);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", *v35);
                  }

                  else
                  {
                    a2 = v131;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v110, 46, v111, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v112);
                  }

                  goto LABEL_108;
                }

                v20 = 4294966296;
              }
            }

            else if (sub_160EF0(0x2Eu, 4))
            {
              v83 = sub_160F34(0x2Eu);
              v84 = sub_175AE4();
              v85 = sub_160F68(4);
              if (v83)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d\n", v84, 46, v85, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19, v136[0], 0, 0, (v37 + 57388), &v135, v20);
                v86 = sub_175AE4();
                a5 = v133;
                v122 = sub_160F68(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v86, 46, v122, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19);
              }

              else
              {
                a5 = v133;
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v84, 46, v85, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v133, v19);
              }

              a2 = v131;
              goto LABEL_17;
            }

            a2 = v131;
            goto LABEL_137;
          }

          free(v19);
        }

        v19 = 0;
        goto LABEL_83;
      }

      if (sub_160EF0(0x2Eu, 4))
      {
        v51 = sub_160F34(0x2Eu);
        v52 = sub_175AE4();
        v53 = sub_160F68(4);
        if (v51)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.\n", v52, 46, v53, "AVE_FrameRecv", "CreateVideoFormatDesc", 437, "false", *(a1 + 39468));
          v52 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.", v52, 46);
      }

      v19 = 0;
      v20 = 4294966281;
    }
  }

  else
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v16 = sub_160F34(0x2Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p\n", v17, 46, v18, "AVE_FrameRecv", "CreateVideoFormatDesc", 241, "(psInfo != __null) && (psInfo->iNum != 0)", a5);
        v17 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p", v17, 46);
    }

    v19 = 0;
    v20 = 4294966295;
  }

LABEL_17:
  if (v135)
  {
    CFRelease(v135);
    v135 = 0;
  }

  if (v19)
  {
    free(v19);
  }

  if (v134)
  {
    CFRelease(v134);
    v134 = 0;
  }

  if (sub_160EF0(0x2Eu, 7))
  {
    v21 = sub_160F34(0x2Eu);
    v22 = sub_175AE4();
    v23 = sub_160F68(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %p %p %p %d\n", v22, 46, v23, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5, v20);
      v24 = sub_175AE4();
      v116 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v24, 46, v116, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v22, 46, v23, "AVE_FrameRecv");
    }
  }

  return v20;
}

uint64_t sub_117768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a2 + 3180);
    if (v4 >= 0x1E)
    {
      v11 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v15 = sub_160F34(0x2Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v16, 46, v17, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v16, 46, v17, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 27072);
      if (v6)
      {
        v7 = a3;
        if (sub_160EF0(0x2Eu, 7))
        {
          v8 = sub_160F34(0x2Eu);
          v9 = sub_175AE4();
          v10 = sub_160F68(7);
          if (v8)
          {
            printf("%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d\n", v9, 46, v10, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 483, *(a2 + 3180), *(v6 + 288));
            v9 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d", v9);
        }

        sub_CE3A0(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (v6 + 45320));
        sub_CE6DC(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (a2 + 72664));
        v22 = sub_CBC74(*(a1 + 40704), 7u, *(a2 + 20));
        sub_156920((v6 + 42608), v22, *(a2 + 40));
        v23 = sub_CBC74(*(a1 + 40704), 6u, *(a2 + 20));
        sub_15600C((v6 + 4720), (a2 + 33012), v23, *(a2 + 40), v7);
        sub_CE05C(*(a1 + 40704), *(a2 + 20), (v6 + 42760));
        bzero(v6, 0xBAA8uLL);
      }

      else if (sub_160EF0(3u, 4))
      {
        v11 = sub_160F34(3u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (!v11)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL");
          return v11;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v18, 3, v19, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v20, 3, v21, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
      }

      return 0;
    }
  }

  else
  {
    v11 = 3758097084;
    if (sub_160EF0(3u, 4))
    {
      v12 = sub_160F34(3u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL\n", v13, 3, v14, "DoneWithThisFrameFromTheHW", 473, "Frame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL");
    }
  }

  return v11;
}

uint64_t sub_117BCC(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  if (sub_160EF0(0x2Eu, 7))
  {
    v6 = sub_160F34(0x2Eu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", v7, 46, v8, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", v7);
  }

  if (a2 >= 0x1E)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v18 = sub_160F34(0x2Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v19, 46, v20, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a1, a2);
        v19 = sub_175AE4();
        v49 = sub_160F68(4);
      }

      else
      {
        v49 = v20;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v19, 46, v49);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v21 = sub_160F34(0x2Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v22, 46, v23, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", a1, a3);
        v22 = sub_175AE4();
        v50 = sub_160F68(4);
      }

      else
      {
        v50 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v22, 46, v50);
    }

    goto LABEL_46;
  }

  v9 = *&a1[2 * a2 + 6768];
  if (!v9)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v24 = sub_160F34(0x2Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v25, 46, v26, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", a1, a2);
        v27 = sub_175AE4();
        v51 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v27, 46, v51);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v25, 46, v26);
      }
    }

    goto LABEL_46;
  }

  v10 = a1 + 7008;
  v11 = v9 + 12 * a3;
  v12 = &a1[3 * a3];
  v13 = *(v11 + 144);
  v14 = v12 + 7271;
  v12[7273] = *(v11 + 152);
  *(v12 + 7271) = v13;
  if (sub_160EF0(0x2Eu, 7))
  {
    v15 = sub_160F34(0x2Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, *(v14 + 7), v14[2]);
      v16 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  a1[7270] = 3 * *(v9 + 140);
  memcpy(a1 + 7008, (v9 + 280), 0x204uLL);
  if (sub_160EF0(0x2Eu, 7))
  {
    v28 = sub_160F34(0x2Eu);
    v29 = sub_175AE4();
    v30 = sub_160F68(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v29, 46, v30, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v29 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v29);
  }

  if (*v10 > 0x20)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v41 = sub_160F34(0x2Eu);
      v42 = sub_175AE4();
      v43 = sub_160F68(4);
      if (v41)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
        v42 = sub_175AE4();
        v43 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v42, 46, v43, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", a1, *v10);
    }

LABEL_46:
    v40 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v31 = 0;
    v32 = a1 + 7012;
    do
    {
      if (sub_160EF0(0x2Eu, 7))
      {
        v33 = sub_160F34(0x2Eu);
        v34 = sub_175AE4();
        v35 = sub_160F68(7);
        v36 = *(v32 - 3);
        v37 = *(v32 - 2);
        v38 = *(v32 - 1);
        v39 = *v32;
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, *(v32 - 1), v39);
          v34 = sub_175AE4();
          v35 = sub_160F68(7);
          v36 = *(v32 - 3);
          v37 = *(v32 - 2);
          v38 = *(v32 - 1);
          v39 = *v32;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v34, 46, v35, "AVE_FrameRecv", "CollectSlicesInfo", 548, v31, v36, v37, v38, v39);
      }

      ++v31;
      v32 += 4;
    }

    while (v31 < *v10);
    v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_47:
  if (sub_160EF0(0x2Eu, 7))
  {
    v44 = sub_160F34(0x2Eu);
    v45 = sub_175AE4();
    v46 = sub_160F68(7);
    if (v44)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v45, 46, v46, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v40);
      v47 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v45);
    }
  }

  return v40;
}

uint64_t sub_11846C(void **a1, unsigned int *a2, char *a3, int a4, int a5, int a6)
{
  v31 = a1 + 17227;
  if (sub_160EF0(0x2Eu, 7))
  {
    v12 = sub_160F34(0x2Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d\n", v13, 46, v14, "AVE_FrameRecv", "AddAllSEIs", a1, *v31, a2, a3, a4, a5, a6);
      v15 = sub_175AE4();
      v30 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", v15, 46, v30, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", v13, 46, v14, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  if (a2 && a3)
  {
    if (a2[795] >= 0x1E)
    {
      v16 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v21 = sub_160F34(0x2Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v22, 46, v23, "AVE_FrameRecv", "AddAllSEIs", 579, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a2[795]);
          v22 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v22, 46);
      }
    }

    else
    {
      *(v31 + 2) = 0;
      if (!a6 || (v16 = 0, (a5 & 1) == 0))
      {
        v32 = 0;
        sub_11891C(a1, &v32, a2);
        v17 = sub_17AF8(a1[17962], a2[10], v32, a3, a4, v31 + 2);
        v16 = sub_175994(v17);
      }
    }
  }

  else
  {
    v16 = 3758097084;
    if (sub_160EF0(3u, 4))
    {
      v18 = sub_160F34(3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR\n", v19, 3, v20, "AVE_FrameRecv", "AddAllSEIs", 575, "pFrame != __null && pBuf != __null");
        v19 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR", v19);
    }
  }

  if (sub_160EF0(0x2Eu, 7))
  {
    v24 = sub_160F34(0x2Eu);
    v25 = sub_175AE4();
    v26 = sub_160F68(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d\n", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs", a1, *v31, a2, a3, a4, a5, a6, v16);
      v27 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v27, 46, v28, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  return v16;
}

uint64_t sub_11891C(void *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 39468;
  if (sub_160EF0(0xD3u, 7))
  {
    v7 = sub_160F34(0xD3u);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v8, 211, v9, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3);
      v10 = sub_175AE4();
      v21 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v10, 211, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v8, 211, v9);
    }
  }

  v11 = a3[614];
  if (v11)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || !a3[10])
  {
    if (a3[10])
    {
      v13 = 0x6B00000381;
    }

    else
    {
      v13 = 0x3FF000003E1;
    }

    v14 = 2;
    if (!a3[10])
    {
      v14 = 6;
    }
  }

  else
  {
    v13 = 0x6300000381;
    v14 = 2;
  }

  if (v6[156] == 1 && *v6 == 2)
  {
    v15 = v13 | v14;
    if (v11 == 3 || a3[7432] == 21)
    {
      v13 = v15 | 0x18;
    }

    else
    {
      v13 = v15 | 8;
    }
  }

  *a2 = v13;
  if (sub_160EF0(0xD3u, 7))
  {
    v16 = sub_160F34(0xD3u);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d\n", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3, v13, 0);
      v19 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v19, 211, v22, "AVE_FrameRecv", "DecideSEIBits");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits");
    }
  }

  return 0;
}

uint64_t sub_118BC0(void *a1, unsigned int *a2, int a3, char *a4)
{
  if (sub_160EF0(0x2Eu, 7))
  {
    v8 = sub_160F34(0x2Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p\n", v9, 46, v10, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4);
      v11 = sub_175AE4();
      v36 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", v11, 46, v36, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", v9, 46, v10, "AVE_FrameRecv");
    }
  }

  if (!a2 || a3 < 1 || !a4)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v20 = sub_160F34(0x2Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p\n", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709, "(psEncFrameInfo != __null) && (iSize > 0) && (piFinalBuf != __null)", a1, a1[17227], a2, a3, a4);
        v23 = sub_175AE4();
        v37 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v23, 46, v37, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
      }
    }

    goto LABEL_31;
  }

  v12 = *a2;
  if (v12 < 1)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = 6;
  do
  {
    v13 += a2[v14];
    v14 += 8;
    --v12;
  }

  while (v12);
  if (v13 != a3)
  {
LABEL_21:
    if (sub_160EF0(0x2Eu, 4))
    {
      v24 = sub_160F34(0x2Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d\n", v25, 46, v26, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize", a1, a1[17227], a2, a3, a4, v13);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d", v25, 46, v26, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize");
    }

    goto LABEL_31;
  }

  v15 = 0;
  v16 = a2 + 4;
  v17 = a4;
  while (*v16)
  {
    v18 = v16[2];
    if (v18 <= 0)
    {
      break;
    }

    memcpy(v17, *v16, v18);
    *(v16 + 2) = v17;
    v17 += v16[2];
    ++v15;
    v16 += 8;
    if (v15 >= *a2)
    {
      v19 = 0;
      goto LABEL_32;
    }
  }

  if (sub_160EF0(0x2Eu, 4))
  {
    v27 = sub_160F34(0x2Eu);
    v28 = sub_175AE4();
    v29 = sub_160F68(4);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d\n", v28, 46, v29, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727, "(psEncFrameInfo->saEntry[i].sBuf.pBuf != __null) && (psEncFrameInfo->saEntry[i].sBuf.iSize > 0)", a1, a1[17227], a2, v16, v16[2]);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d", v28, 46, v29, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727);
  }

LABEL_31:
  v19 = 4294966295;
LABEL_32:
  if (sub_160EF0(0x2Eu, 7))
  {
    v30 = sub_160F34(0x2Eu);
    v31 = sub_175AE4();
    v32 = sub_160F68(7);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d\n", v31, 46, v32, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4, v19);
      v33 = sub_175AE4();
      v34 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v33, 46, v34, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v31, 46, v32, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }
  }

  return v19;
}

uint64_t sub_1191C0(uint64_t a1, uint64_t a2)
{
  if (sub_160EF0(0x2Eu, 7))
  {
    v4 = sub_160F34(0x2Eu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v5, 46, v6, "AVE_FrameRecv", "SendPS", a2);
      v7 = sub_175AE4();
      v74 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v7, 46, v74, "AVE_FrameRecv", "SendPS", a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 46, v6, "AVE_FrameRecv", "SendPS", a2);
    }
  }

  if (!*(a1 + 29352))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v20 = sub_160F34(0x2Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it\n", v21, 46, v22, "AVE_FrameRecv", "SendPS", 757, "m_pSession != __null");
        v21 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it", v21);
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v23 = sub_160F34(0x2Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL\n", v24, 46, v25, "AVE_FrameRecv", "SendPS", 760, "psFrameInfo != __null");
        v24 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL", v24);
    }

    goto LABEL_33;
  }

  v8 = *(a2 + 3180);
  if (v8 >= 0x1E)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v26 = sub_160F34(0x2Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v27, 46, v28, "AVE_FrameRecv", "SendPS", 764, "0 <= psFrameInfo->PlaneNumber && psFrameInfo->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
        v27 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v27, 46);
    }

LABEL_33:
    v32 = 4294966295;
    goto LABEL_34;
  }

  v9 = a1 + 143664;
  v10 = *(a1 + 8 * v8 + 27072);
  if (v10)
  {
    v11 = v10 + 45056;
    v12 = (v10 + 45392);
    v13 = *(v10 + 45392);
    if (v13 > 0)
    {
      v14 = v10 + 16 * (v13 - 1) + 45396;
      v15 = *(v14 + 8);
      LODWORD(v14) = *(v14 + 12);
      v16 = __OFADD__(v14, v15);
      LODWORD(v14) = v14 + v15;
      *(a1 + 143680) = v14;
      if ((v14 < 0) ^ v16 | (v14 == 0))
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v40 = sub_160F34(0x2Eu);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d\n", v41, 46, v42, "AVE_FrameRecv", "SendPS", 777, "m_iPSSize > 0", *(a1 + 143680));
            v41 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d", v41, 46);
        }

        v32 = 4294966281;
        goto LABEL_58;
      }

      v79 = v10;
      v80 = (v10 + 45392);
      if (sub_160EF0(0x2Eu, 7))
      {
        v17 = sub_160F34(0x2Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(7);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d\n", v18, 46, v19, "AVE_FrameRecv", "SendPS", 780, *(a1 + 39468), *v12, *(a1 + 143680));
          v18 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d", v18, 46);
      }

      v43 = sub_11A0D0(a1, *(a1 + 143680), (a1 + 143672), *(a2 + 2552));
      *v9 = v43;
      if (!v43)
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v48 = sub_160F34(0x2Eu);
          v49 = sub_175AE4();
          v50 = sub_160F68(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p\n", v49, 46, v50, "AVE_FrameRecv", "SendPS", 785, "m_piPSOutput != __null", *(a1 + 143680), (a1 + 143672), *(a1 + 143672));
            v51 = sub_175AE4();
            v76 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v51, 46, v76, "AVE_FrameRecv");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v49, 46, v50, "AVE_FrameRecv");
          }
        }

        v32 = 4294966293;
        goto LABEL_58;
      }

      if (sub_160EF0(0x2Eu, 7))
      {
        v44 = sub_160F34(0x2Eu);
        v45 = sub_175AE4();
        v46 = sub_160F68(7);
        if (v44)
        {
          printf("%lld %d AVE %s: %s::%s:%d create buffer %p %d %p\n", v45, 46, v46, "AVE_FrameRecv", "SendPS", 788, *v9, *(a1 + 143680), *(a1 + 143672));
          v47 = sub_175AE4();
          v75 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v47, 46, v75);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v45, 46, v46);
        }
      }

      v78 = (a1 + 143664);
      if (*v12 >= 1)
      {
        v53 = 0;
        v54 = (v11 + 352);
        do
        {
          if (sub_160EF0(0x2Eu, 8))
          {
            v55 = sub_160F34(0x2Eu);
            v56 = sub_175AE4();
            v57 = sub_160F68(8);
            v58 = *(v54 - 3);
            v59 = *(v54 - 2);
            v60 = *(v54 - 1);
            v61 = *v54;
            if (v55)
            {
              printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v56, 46, v57, "AVE_FrameRecv", "SendPS", 793, v53, v58, v59, *(v54 - 1), v61);
              v56 = sub_175AE4();
              v57 = sub_160F68(8);
              v58 = *(v54 - 3);
              v59 = *(v54 - 2);
              v60 = *(v54 - 1);
              v61 = *v54;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v56, 46, v57, "AVE_FrameRecv", "SendPS", 793, v53, v58, v59, v60, v61);
            v12 = v80;
          }

          ++v53;
          v54 += 4;
        }

        while (v53 < *v12);
      }

      v9 = a1 + 143664;
      memcpy(*(a1 + 143664), (v79 + 45732), *(a1 + 143680));
      if (sub_160EF0(0x2Eu, 8))
      {
        v62 = sub_160F34(0x2Eu);
        v63 = sub_175AE4();
        v64 = sub_160F68(8);
        if (v62)
        {
          printf("%lld %d AVE %s: %s::%s:%d %d %p\n", v63, 46, v64, "AVE_FrameRecv", "SendPS", 800, *(a1 + 39448), *(a1 + 29352));
          v63 = sub_175AE4();
          sub_160F68(8);
          v12 = v80;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %d %p", v63, 46);
      }

      v65 = *(a1 + 29352);
      if (v65 == &dword_0 + 1)
      {
        if (*(a1 + 29288) && *(a1 + 29280))
        {
          if (sub_160EF0(0x2Eu, 7))
          {
            v71 = sub_160F34(0x2Eu);
            v72 = sub_175AE4();
            v73 = sub_160F68(7);
            if (v71)
            {
              printf("%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)\n", v72, 46, v73, "AVE_FrameRecv", "SendPS", 810, *(a1 + 143680));
              v72 = sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)", v72);
          }

          (*(a1 + 29288))(*(a1 + 29280), *(a1 + 143664), *(a1 + 143680), 0, *(a1 + 39468));
        }

        *(a1 + 25784) = 1;
      }

      else
      {
        if (*(a1 + 39252) >= 2u)
        {
          sub_1700F4(a1 + 57388, a1 + 137776, 4);
          sub_170148(a1 + 57388, (a1 + 137780), 6u);
          v65 = *(a1 + 29352);
        }

        v66 = sub_11602C(a1, v65, *v78, a2, v12);
        if (v66)
        {
          v32 = v66;
          if (sub_160EF0(0x2Eu, 4))
          {
            v67 = sub_160F34(0x2Eu);
            v68 = sub_175AE4();
            v69 = sub_160F68(4);
            if (v67)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d\n", v68, 46, v69, "AVE_FrameRecv", "SendPS", 831, "ret == 0", *(a1 + 29352), *v78, a2, v32);
              v70 = sub_175AE4();
              v77 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v70, 46, v77, "AVE_FrameRecv", "SendPS");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v68, 46, v69, "AVE_FrameRecv", "SendPS");
            }
          }

          goto LABEL_58;
        }
      }

      sub_CD240(*(a1 + 40704), *(a2 + 20), *(a1 + 143664), *(a1 + 143680));
      v32 = 0;
      goto LABEL_34;
    }

    if (sub_160EF0(0x2Eu, 4))
    {
      v37 = sub_160F34(0x2Eu);
      v38 = sub_175AE4();
      v39 = sub_160F68(4);
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
        v38 = sub_175AE4();
        v39 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d", v38, 46, v39, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
    }
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    v29 = sub_160F34(0x2Eu);
    v30 = sub_175AE4();
    v31 = sub_160F68(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL\n", v30, 46, v31, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL", v30, 46, v31, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
  }

  v32 = 4294966296;
LABEL_58:
  *(v9 + 16) = 0;
  if (*v9)
  {
    sub_11A5A0(a1, *v9);
    *v9 = 0;
  }

  v52 = *(v9 + 8);
  if (v52)
  {
    CFRelease(v52);
    *(v9 + 8) = 0;
  }

LABEL_34:
  if (sub_160EF0(0x2Eu, 7))
  {
    v33 = sub_160F34(0x2Eu);
    v34 = sub_175AE4();
    v35 = sub_160F68(7);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v34, 46, v35, "AVE_FrameRecv", "SendPS", a2, v32);
      v34 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v34);
  }

  return v32;
}

char *sub_11A0D0(uint64_t a1, size_t a2, CMBlockBufferRef *a3, uint64_t a4)
{
  dataPointerOut = 0;
  if (sub_160EF0(0x2Eu, 7))
  {
    v7 = sub_160F34(0x2Eu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %ld %p\n", v8, 46, v9, "AVE_FrameRecv", "CreateBuffer", a2, a3);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %ld %p", v8);
  }

  if (!a2)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v14 = sub_160F34(0x2Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld\n", v15, 46, v16, "AVE_FrameRecv", "CreateBuffer", 1600, "size != 0", a1, 0);
        v17 = sub_175AE4();
        v26 = sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v10 = sub_160F34(0x2Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
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
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
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
  if (sub_160EF0(0x2Eu, 7))
  {
    v21 = sub_160F34(0x2Eu);
    v22 = sub_175AE4();
    v23 = sub_160F68(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %ld %p %p %d\n", v22, 46, v23, "AVE_FrameRecv", "CreateBuffer", a2, a3, dataPointerOut, v20);
      v24 = sub_175AE4();
      v27 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v24, 46, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v22, 46, v23);
    }
  }

  return dataPointerOut;
}

void sub_11A5A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v4 = sub_160F34(0x2Eu);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec: DeleteBuffer %p\n", v5, 46, v6, a2);
        v7 = sub_175AE4();
        v15 = sub_160F68(7);
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

  else if (sub_160EF0(0x2Eu, 4))
  {
    v8 = sub_160F34(0x2Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.\n", v9, 46, v10);
      v11 = sub_175AE4();
      v16 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v11, 46, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v9, 46, v10);
    }
  }
}

uint64_t sub_11A7B8(uint64_t a1, uint64_t a2)
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
    if (sub_160EF0(3u, 4))
    {
      v17 = sub_160F34(3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.\n", v18, 3, v19, "ProcessAndEmitLrmeStats", 996, "false");
        sub_175AE4();
        LODWORD(v5) = -536870212;
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.");
    }

    goto LABEL_27;
  }

  if (*(a1 + 137804) != 2)
  {
    if (sub_160EF0(3u, 4))
    {
      v20 = sub_160F34(3u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.\n", v21, 3, v22, "ProcessAndEmitLrmeStats", 998, "false");
        sub_175AE4();
        LODWORD(v5) = -536870212;
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.");
    }

LABEL_27:
    sub_117768(a1, v2, 0);
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
      if (sub_160EF0(3u, 4))
      {
        v31 = sub_160F34(3u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (!v31)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
          v29 = 0;
          goto LABEL_68;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.\n", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        LODWORD(v5) = -536870212;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v39, 3, v40, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
      }

      v29 = 0;
LABEL_39:
      v31 = 0;
LABEL_68:
      sub_117768(a1, v2, 0);
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
        if (sub_160EF0(3u, 4))
        {
          v32 = sub_160F34(3u);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.\n", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
            v35 = sub_175AE4();
            v226 = sub_160F68(4);
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
                if (sub_160EF0(0x2Eu, 5))
                {
                  v93 = sub_160F34(0x2Eu);
                  v94 = sub_175AE4();
                  v95 = sub_160F68(5);
                  if (v93)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n\n", v94, 46, v95);
                    sub_175AE4();
                    sub_160F68(5);
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

                if (sub_160EF0(0x2Eu, 5))
                {
                  v61 = sub_160F34(0x2Eu);
                  v62 = sub_175AE4();
                  v63 = sub_160F68(5);
                  if (v61)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n\n", v62, 46, v63);
                    sub_175AE4();
                    sub_160F68(5);
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
            if (sub_160EF0(0xDu, 4))
            {
              v90 = sub_160F34(0xDu);
              v91 = sub_175AE4();
              v92 = sub_160F68(4);
              v29 = v252;
              if (v90)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path\n", v91, 13, v92, "ProcessAndEmitLrmeStats", 1236, "bVTOF == false");
                sub_175AE4();
                sub_160F68(4);
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
              if (sub_160EF0(0xDu, 4))
              {
                v70 = sub_160F34(0xDu);
                v71 = sub_175AE4();
                v72 = sub_160F68(4);
                v29 = v252;
                if (v70)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v71, 13, v72, "ProcessAndEmitLrmeStats", 1193, "bVTOF == false");
                  sub_175AE4();
                  sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path");
                goto LABEL_216;
              }

              goto LABEL_125;
            }

            goto LABEL_181;
          }

          v247 = AllocSize;
          v96 = sub_11A0D0(a1, 4 * v56 * v57, v253, *(v248 + 2552));
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

          if (sub_160EF0(3u, 4))
          {
            v160 = sub_160F34(3u);
            v161 = sub_175AE4();
            v162 = sub_160F68(4);
            v2 = v248;
            v8 = v96;
            if (v160)
            {
              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.\n", v161, 3, v162, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
              v163 = sub_175AE4();
              v232 = sub_160F68(4);
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
          v76 = sub_11A0D0(a1, 4 * v56 * v57, v253, *(v248 + 2552));
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
              if (sub_160EF0(0xDu, 7))
              {
                v237 = sub_160F34(0xDu);
                v134 = sub_175AE4();
                v135 = sub_160F68(7);
                if (v237)
                {
                  printf("%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v134, 13, v135, v56, v57, v250, v133);
                  v235 = sub_175AE4();
                  sub_160F68(7);
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

              if (sub_160EF0(0xDu, 7))
              {
                v152 = sub_160F34(0xDu);
                v153 = sub_175AE4();
                v154 = sub_160F68(7);
                v8 = v249;
                if (v152)
                {
                  printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n\n", v153, 13, v154, "ProcessAndEmitLrmeStats", v239, v136);
                  v155 = sub_175AE4();
                  v230 = sub_160F68(7);
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

            if (sub_160EF0(0xDu, 4))
            {
              v185 = sub_160F34(0xDu);
              v84 = sub_175AE4();
              v186 = sub_160F68(4);
              v2 = v248;
              v8 = v76;
              if (v185)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL\n", v84, 13, v186, "ProcessAndEmitLrmeStats", 1326, "psMVCostBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = sub_175AE4();
                v234 = "psMVCostBuffer != __null";
                v233 = 1326;
                v5 = 3758097084;
                v229 = sub_160F68(4);
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
            if (sub_160EF0(0xDu, 4))
            {
              v83 = sub_160F34(0xDu);
              v84 = sub_175AE4();
              v85 = sub_160F68(4);
              v2 = v248;
              v8 = v76;
              if (v83)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v84, 13, v85, "ProcessAndEmitLrmeStats", 1309, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                v84 = sub_175AE4();
                v234 = "MvStatsBuffer != __null";
                v233 = 1309;
                v5 = 3758097084;
                v229 = sub_160F68(4);
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
            v194 = sub_11A0D0(a1, v250, v253, *(v248 + 2552));
            v195 = CVPixelBufferGetBaseAddress(v194);
            if (!v195)
            {
              v8 = v194;
              if (sub_160EF0(0xDu, 4))
              {
                v200 = sub_160F34(0xDu);
                v201 = sub_175AE4();
                v202 = sub_160F68(4);
                if (v200)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v201, 13, v202, "ProcessAndEmitLrmeStats", 1387, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                  v201 = sub_175AE4();
                  sub_160F68(4);
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
            if (sub_160EF0(0xDu, 7))
            {
              v198 = sub_160F34(0xDu);
              v243 = sub_175AE4();
              v199 = sub_160F68(7);
              if (v198)
              {
                printf("%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v243, 13, v199, "ProcessAndEmitLrmeStats", v56, v57, v250, v197);
                v243 = sub_175AE4();
                sub_160F68(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v243, 13);
            }

            if (*(a1 + 137808) >= 23)
            {
              v203 = v196;
              v9 = 4 * v56 * v57;
              sub_11C4F0(v251, v203, v250, v56, v57, v197, *v4);
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
            if (sub_160EF0(0xDu, 7))
            {
              v222 = sub_160F34(0xDu);
              v223 = sub_175AE4();
              v224 = sub_160F68(7);
              if (v222)
              {
                printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v223, 13, v224, "ProcessAndEmitLrmeStats", v221, v205, v206);
                v223 = sub_175AE4();
                sub_160F68(7);
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
            if (sub_160EF0(0xDu, 4))
            {
              v156 = sub_160F34(0xDu);
              v157 = sub_175AE4();
              v158 = sub_160F68(4);
              if (v156)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v157, 13, v158, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
                v159 = sub_175AE4();
                v231 = sub_160F68(4);
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
              if (sub_160EF0(0x2Eu, 5))
              {
                v187 = sub_160F34(0x2Eu);
                v188 = sub_175AE4();
                v189 = sub_160F68(5);
                if (v187)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n\n", v188, 46, v189);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n");
              }

              goto LABEL_242;
            case 3:
              if (sub_160EF0(0x2Eu, 5))
              {
                v190 = sub_160F34(0x2Eu);
                v191 = sub_175AE4();
                v192 = sub_160F68(5);
                if (v190)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n\n", v191, 46, v192);
                  sub_175AE4();
                  sub_160F68(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n");
              }

              goto LABEL_242;
            case 4:
              if (sub_160EF0(0x2Eu, 5))
              {
                v87 = sub_160F34(0x2Eu);
                v88 = sub_175AE4();
                v89 = sub_160F68(5);
                if (v87)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n\n", v88, 46, v89);
                  sub_175AE4();
                  sub_160F68(5);
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

      if (!sub_160EF0(3u, 4))
      {
        LODWORD(v5) = 0;
        v31 = 0;
LABEL_126:
        v29 = v252;
        goto LABEL_68;
      }

      v64 = sub_160F34(3u);
      v65 = sub_175AE4();
      v66 = sub_160F68(4);
      v29 = v252;
      if (v64)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.\n", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
        v67 = sub_175AE4();
        v228 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v67, 3, v228, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      LODWORD(v5) = 0;
      goto LABEL_39;
    }

    if (sub_160EF0(3u, 4))
    {
      v31 = sub_160F34(3u);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (!v31)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
        v29 = 0;
        goto LABEL_67;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.\n", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
      v49 = sub_175AE4();
      v50 = sub_160F68(4);
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
  sub_CD240(*(v4 + 185), *(v2 + 20), v7, v9);
  if (sub_160EF0(0x2Eu, 7))
  {
    v11 = v2;
    v12 = sub_160F34(0x2Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    v15 = *(v11 + 40);
    if (v12)
    {
      printf("%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d\n", v13, 46, v14, v15);
      v16 = sub_175AE4();
      v225 = sub_160F68(7);
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
      if (sub_160EF0(3u, 4))
      {
        v43 = sub_160F34(3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped\n", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
          v46 = sub_175AE4();
          v5 = 3758097084;
          v227 = sub_160F68(4);
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
  sub_117768(a1, v2, 0);
  if (v8)
  {
    sub_11A5A0(a1, v8);
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

void sub_11C4F0(uint64_t a1, char *a2, size_t a3, int a4, int a5, int a6, int a7)
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

  if (sub_160EF0(0xDu, 7))
  {
    v35 = sub_160F34(0xDu);
    v36 = sub_175AE4();
    v37 = sub_160F68(7);
    if (v35)
    {
      printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v36, 13, v37, "AVE_LRME_FillFSResultsBestMV", v16, v15, v14);
      v36 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v36);
  }
}

uint64_t sub_11C71C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sub_160EF0(0x2Eu, 6))
    {
      v4 = sub_160F34(0x2Eu);
      v5 = sub_175AE4();
      v6 = sub_160F68(6);
      v7 = *(a2 + 40);
      v8 = *(a2 + 2568);
      if (v4)
      {
        printf("%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p\n", v5, 46, v6, v7, *(a1 + 29280), v8);
        v9 = sub_175AE4();
        v10 = sub_160F68(6);
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
      if (sub_160EF0(3u, 4))
      {
        v17 = sub_160F34(3u);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped\n", v18, 3, v19, "SendOutputFrameDMV", 1579, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped");
      }
    }
  }

  else
  {
    v11 = 3758097084;
    if (sub_160EF0(3u, 4))
    {
      v12 = sub_160F34(3u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL\n", v13, 3, v14, "SendOutputFrameDMV", 1564, "pFrame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL");
    }
  }

  sub_117768(a1, a2, 0);
  return v11;
}

void *sub_11C9CC(uint64_t a1, const void *a2)
{
  result = sub_11CA40(a1 + 16);
  if (result)
  {
    v5 = result;
    memcpy(result, a2, 0x626uLL);

    return sub_163A30((a1 + 16), v5, 0);
  }

  return result;
}

uint64_t sub_11CA40(uint64_t a1)
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
    if (sub_160EF0(0xD8u, 4))
    {
      v4 = sub_160F34(0xD8u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get free spot \n", v5, 216, v6, "new_stats", 56, "free_pool_available > 0");
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
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

uint64_t sub_11CB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
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

  if (sub_160EF0(0x2Eu, 5))
  {
    v12 = sub_160F34(0x2Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(5);
    if (v12)
    {
      v15 = 3;
      printf("%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p\n", v13, 46, v14, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
      v13 = sub_175AE4();
      v14 = sub_160F68(5);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v20 = sub_160F34(0x2Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d\n", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788, a2, a3, a6, v11, v15, v16, v19);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_11CE6C(uint64_t a1, uint64_t a2)
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
    v14 = sub_160EF0(0x2Eu, 7);
    if (v14)
    {
      v15 = sub_160F34(0x2Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d\n", v16, 46, v17, "DropFrame", 1824, *v10, *(a2 + 44), *(a2 + 40), *(a1 + 29112), *v13, v13[38], *(a1 + 29276));
        v18 = sub_175AE4();
        v41 = sub_160F68(7);
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
        if (sub_160EF0(0x2Eu, 7))
        {
          v23 = sub_160F34(0x2Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(7);
          if (v23)
          {
            printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes\n", v24, 46, v25, 0);
            v26 = sub_175AE4();
            v42 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v26, 46, v42, 0);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v24, 46, v25, 0);
          }
        }

        (*(a1 + 29288))(*(a1 + 29280), 0, 0, 0, *(a1 + 39468));
      }

      else if (sub_160EF0(0x2Eu, 7))
      {
        v27 = sub_160F34(0x2Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(7);
        if (v27)
        {
          printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v28, 46, v29);
          v30 = sub_175AE4();
          v43 = sub_160F68(7);
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
      v22 = sub_11CB54(v14, *(v3 + 12), *(a1 + 39448), v21, *(a2 + 2552), *(a2 + 40), -1000, 0);
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

    *(v9 + 3324) = sub_175AE4();
    sub_175D4(*(a1 + 143696), *(a2 + 40));
    v31 = *(a2 + 3180);
    if ((v31 & 0x80000000) == 0)
    {
      if (v31 >= 0x1E)
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v33 = sub_160F34(0x2Eu);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v34, 46, v35, "AVE_FrameRecv", "DropFrame", 1884, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
            v34 = sub_175AE4();
            sub_160F68(4);
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

        else if (sub_160EF0(3u, 4))
        {
          v36 = sub_160F34(3u);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v37, 3, v38, "DropFrame", 1886, "codedHeader != __null");
            v39 = sub_175AE4();
            v44 = sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 7))
    {
      v4 = sub_160F34(0x2Eu);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v5, 46, v6);
        v7 = sub_175AE4();
        v40 = sub_160F68(7);
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

__CFDictionary *sub_11D464(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v15 = sub_160F34(0x2Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL\n", v16, 46, v17, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1911, "TemporalLevelInfoDict != __null");
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL", v16);
    }

    return 0;
  }

  v7 = Mutable;
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_TemporalLevel, v3, Mutable);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_ProfileSpace, *a2, v7);
  v8 = sub_17D658(a2[1]);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_TierFlag, v8, v7);
  v9 = sub_17D4BC(a2[2]);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_ProfileIndex, v9, v7);
  v10 = CFDataCreate(0, (a1 + 137776), 4);
  if (!v10)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v18 = sub_160F34(0x2Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL\n", v19, 46, v20, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1922, "cf_profileCompatibilityFlags != __null");
        v19 = sub_175AE4();
        sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v21 = sub_160F34(0x2Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL\n", v22, 46, v23, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1929, "cf_constraintIndicatorFlags != __null");
        v22 = sub_175AE4();
        sub_160F68(4);
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
  v14 = sub_17DA3C(a2[15]);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_LevelIndex, v14, v7);
  CFRelease(v11);
  CFRelease(v13);
  return v7;
}

uint64_t sub_11D888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v7 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v11 = sub_160F34(0x2Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v12, 46, v13, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v12 = sub_175AE4();
          v13 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v12, 46, v13, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (sub_160EF0(0x2Eu, 6))
      {
        v4 = sub_160F34(0x2Eu);
        v5 = sub_175AE4();
        v6 = sub_160F68(6);
        if (v4)
        {
          printf("%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p\n", v5, 46, v6, *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
          v5 = sub_175AE4();
          sub_160F68(6);
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
    if (sub_160EF0(3u, 4))
    {
      v8 = sub_160F34(3u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL\n", v9, 3, v10, "SendFrameMCTF", 1966, "pFrame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL");
    }
  }

  return v7;
}

uint64_t sub_11DB70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v8 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v12 = sub_160F34(0x2Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong plane number %d\n", v13, 46, v14, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong plane number %d", v13, 46, v14, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (sub_160EF0(0x2Eu, 6))
      {
        v4 = sub_160F34(0x2Eu);
        v5 = sub_175AE4();
        v6 = sub_160F68(6);
        if (v4)
        {
          printf("%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p\n", v5, 46, v6, "SendFrameGGM", *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2576), *(a2 + 2568));
          v7 = sub_175AE4();
          v16 = sub_160F68(6);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v9 = sub_160F34(0x2Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameters\n", v10, 46, v11, "SendFrameGGM", 1996, "psFrame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters");
    }
  }

  return v8;
}

uint64_t sub_11DEB4(void *a1, uint64_t a2, void *a3, char *a4)
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
  if (sub_160EF0(0x2Eu, 6))
  {
    v11 = sub_160F34(0x2Eu);
    v12 = sub_175AE4();
    v13 = sub_160F68(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d\n", v12, 46, v13, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4);
      v12 = sub_175AE4();
      v13 = sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d", v12, 46, v13, "AVE_FrameRecv");
  }

  if (!a2)
  {
    v713 = 3758097084;
    v712 = v9;
    if (sub_160EF0(3u, 4))
    {
      v23 = sub_160F34(3u);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL\n", v24, 3, v25, "SendFrame", 2137, "Frame != __null");
      sub_175AE4();
      sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v23 = sub_160F34(0x2Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v26, 46);
        goto LABEL_44;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v26, 46, v27, "AVE_FrameRecv", "SendFrame", 2140, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      v28 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v28, 46);
    }

    goto LABEL_24;
  }

  v14 = a4;
  if (!a1[3669])
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v43 = a2;
      v44 = sub_160F34(0x2Eu);
      v45 = sub_175AE4();
      v46 = sub_160F68(7);
      if (v44)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v45, 46, v46);
        v47 = sub_175AE4();
        sampleSizeArrayf = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v47, 46, sampleSizeArrayf);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v45, 46, v46);
      }

      a2 = v43;
    }

    sub_175D4(v6[4], *(a2 + 40));
    sub_117768(a1, a2, 0);
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
    if (sub_160EF0(0x2Eu, 8))
    {
      v19 = sub_160F34(0x2Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d\n", v20, 46, v21, "AVE_FrameRecv", "SendFrame", 2169, a1, v711[3], a1[3639], *(v9 + 542));
        v22 = sub_175AE4();
        sampleSizeArraye = sub_160F68(8);
        v17 = a2;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v22, 46, sampleSizeArraye, "AVE_FrameRecv");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v20, 46, v21, "AVE_FrameRecv");
      }
    }

    if (sub_124F68(a1[3639], *(v9 + 542), 1u, v722))
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v23 = sub_160F34(0x2Eu);
        v200 = sub_175AE4();
        v201 = sub_160F68(4);
        v84 = v711;
        v202 = v711[3];
        v203 = *(v17 + 40);
        v204 = a1[3639];
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p\n", v200, 46, v201, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v202, v203, v204, *(v9 + 542), v722);
          v205 = sub_175AE4();
          v206 = sub_160F68(4);
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
    sub_1E098(v6[4], *(v17 + 40), v712[719]);
    sub_1E500(v6[4], *(v17 + 40), v712[778]);
    sub_1E96C(v6[4], *(v17 + 40), v712[720]);
    if ((*(a1 + 29819) & 0x80) != 0)
    {
      v48 = v712[718];
    }

    else
    {
      v48 = -1;
    }

    sub_1EDD8(v6[4], *(v17 + 40), v48);
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
        v94 = dword_185C70[v93];
      }

      sub_20C4C(v6[4], *(v17 + 40), *(a1 + 14459));
      sub_20F94(v6[4], *(v17 + 40), v94, v82, *(v17 + 2464), *(v17 + 29728));
      sub_21478(v6[4], *(v17 + 40), *(a1 + 14459));
      v23 = v705;
    }

    sub_1CB40(v6[4], *(v17 + 40));
    sub_20050(v6[4], *(v17 + 40), *(v17 + 4708), *(v17 + 4704), *(v17 + 6116), *(v17 + 4672), *(v17 + 4656), *(v17 + 4664), *(v17 + 4680), *(v17 + 4688));
    v95 = sub_21ECC(v6[4], *(v17 + 40), -1);
    v31 = malloc_type_malloc(v95, 0x100004077774924uLL);
    if (sub_160EF0(0xD3u, 8))
    {
      v703 = v31;
      v96 = a3;
      v97 = sub_160F34(0xD3u);
      v98 = sub_175AE4();
      v99 = sub_160F68(8);
      if (v97)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer\n", v98, 211, v99, "AVE_FrameRecv", "SendFrame", 2254, a1, v711[3], v95);
        v98 = sub_175AE4();
        v99 = sub_160F68(8);
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
      if (!sub_160EF0(3u, 4))
      {
        v49 = 0;
        v31 = 0;
        v713 = 3758097085;
        goto LABEL_45;
      }

      v707 = a3;
      v106 = sub_160F34(3u);
      v107 = sub_175AE4();
      v108 = sub_160F68(4);
      if (v106)
      {
        v109 = v95;
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d\n", v107, 3, v108, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v95);
        v110 = sub_175AE4();
        v111 = sub_160F68(4);
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

    v713 = sub_11846C(a1, a2, v31, v95, v29, a4);
    if (v713)
    {
      if (!sub_160EF0(3u, 4))
      {
        v49 = 0;
        goto LABEL_45;
      }

      v100 = v711;
      v699 = v6;
      v101 = sub_160F34(3u);
      v102 = sub_175AE4();
      v103 = sub_160F68(4);
      if (v101)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d\n", v102, 3, v103, "SendFrame", 2264, "err == 0", *(a2 + 40), v713);
        v104 = sub_175AE4();
        v105 = sub_160F68(4);
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

    if (sub_160EF0(0x2Eu, 7))
    {
      v112 = sub_160F34(0x2Eu);
      v113 = sub_175AE4();
      v114 = sub_160F68(7);
      v115 = *(v711 + 8);
      if (v112)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer\n", v113, 46, v114, "AVE_FrameRecv", "SendFrame", 2267, a1, v711[3], v115);
        v116 = sub_175AE4();
        v117 = sub_160F68(7);
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
      if (sub_124F68(v31, v133, 2u, v722))
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v706 = a3;
          v134 = v7;
          v135 = sub_160F34(0x2Eu);
          v136 = sub_175AE4();
          v137 = sub_160F68(4);
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
          v90 = sub_175AE4();
          v140 = sub_160F68(4);
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
            if (!sub_160EF0(0x2Eu, 4))
            {
              goto LABEL_140;
            }

            v118 = sub_160F34(0x2Eu);
            v119 = sub_175AE4();
            v120 = sub_160F68(4);
            v100 = v711;
            v121 = v711[3];
            v31 = v702;
            if (v118)
            {
              v7 = v711;
              printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v119, 46, v120, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v121, *(a2 + 3180), v60);
              v122 = sub_175AE4();
              v123 = sub_160F68(4);
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
          if (sub_160EF0(0x2Eu, 8))
          {
            v66 = sub_160F34(0x2Eu);
            v67 = sub_175AE4();
            v68 = sub_160F68(8);
            v69 = v711[3];
            if (v66)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
              v70 = sub_175AE4();
              v71 = sub_160F68(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v70, 46, v71, "AVE_FrameRecv", "SendFrame", 2355, a1, v711[3], v60, (v63 + v59), v62);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v67, 46, v68, "AVE_FrameRecv", "SendFrame", 2355, a1, v69, v60, (v63 + v59), v62);
            }

            v65 = v710;
            v6 = v698;
          }

          if (sub_124F68((v63 + v59), v62, 3u, v722))
          {
            a2 = v65;
            if (sub_160EF0(0x2Eu, 4))
            {
              v124 = (v63 + v59);
              v125 = sub_160F34(0x2Eu);
              v126 = sub_175AE4();
              v127 = sub_160F68(4);
              v7 = v711;
              if (v125)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0", a1, v711[3], *(v65 + 40), v124, v62, v722);
                v126 = sub_175AE4();
                v127 = sub_160F68(4);
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
            if (sub_160EF0(0x2Eu, 4))
            {
              v128 = sub_160F34(0x2Eu);
              v129 = sub_175AE4();
              v130 = sub_160F68(4);
              v7 = v711;
              v31 = v702;
              if (v128)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v129, 46, v130, "AVE_FrameRecv", "SendFrame", 2375, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v711[3], *(a2 + 3180), v60);
                v131 = sub_175AE4();
                v132 = sub_160F68(4);
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
          if (sub_160EF0(0x2Eu, 8))
          {
            v75 = v61;
            v76 = sub_160F34(0x2Eu);
            v77 = sub_175AE4();
            v78 = sub_160F68(8);
            v79 = v711[3];
            if (v76)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
              v80 = sub_175AE4();
              v81 = sub_160F68(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v80, 46, v81, "AVE_FrameRecv", "SendFrame", 2377, a1, v711[3], v60, v74, v72);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v77, 46, v78, "AVE_FrameRecv", "SendFrame", 2377, a1, v79, v60, v74, v72);
            }

            a2 = v710;
            v61 = v75;
          }

          if (sub_124F68(v74, v72, 3u, v722))
          {
            v141 = v711;
            if (sub_160EF0(0x2Eu, 4))
            {
              v142 = sub_160F34(0x2Eu);
              v143 = sub_175AE4();
              v144 = sub_160F68(4);
              v145 = v711[3];
              v146 = *(a2 + 40);
              if (v142)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v143, 46, v144, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v145, v146, v74, v72, v722);
                v147 = sub_175AE4();
                v148 = sub_160F68(4);
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
          if ((*(a2 + 9) & 1) != 0 && sub_15F8B8(dataLength, v72, memoryBlock))
          {
            if (!sub_160EF0(0x2Eu, 4))
            {
              goto LABEL_315;
            }

            v252 = sub_160F34(0x2Eu);
            v253 = sub_175AE4();
            v254 = sub_160F68(4);
            if (!v252)
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0");
              goto LABEL_315;
            }

            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v253, 46, v254, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0", a1, v711[3], *(a2 + 40), v60, dataLength, v72, memoryBlock);
            v147 = sub_175AE4();
            v255 = sub_160F68(4);
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
      if (sub_160EF0(0x2Eu, 8))
      {
        v701 = v31;
        v36 = sub_160F34(0x2Eu);
        v37 = v7;
        v38 = sub_175AE4();
        v39 = sub_160F68(8);
        if (v36)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v38, 46, v39, "AVE_FrameRecv", "SendFrame", 2297, a1, v37[3], a4, v35, v33);
          v40 = v35;
          v41 = sub_175AE4();
          v42 = sub_160F68(8);
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

      if (sub_124F68(v35, v33, 3u, v722))
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v699 = v6;
          v150 = sub_160F34(0x2Eu);
          v151 = sub_175AE4();
          v152 = sub_160F68(4);
          if (v150)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v151, 46, v152, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0", a1, v7[3], *(a2 + 40), v35, v33, v722);
            v153 = sub_175AE4();
            sampleSizeArrayh = sub_160F68(4);
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

    if (sub_160EF0(0x2Eu, 4))
    {
      v706 = a3;
      v84 = v7;
      v85 = sub_160F34(0x2Eu);
      v86 = sub_175AE4();
      v87 = sub_160F68(4);
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
      v90 = sub_175AE4();
      v91 = sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v195 = v23;
      v84 = v7;
      v196 = sub_160F34(0x2Eu);
      v197 = sub_175AE4();
      v198 = sub_160F68(4);
      if (v196)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v197, 46, v198, "AVE_FrameRecv", "SendFrame", 2315, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v84[3], *(a2 + 3180), a4);
        v199 = sub_175AE4();
        v195 = v705;
        sampleSizeArrayj = sub_160F68(4);
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
  if (sub_160EF0(0x2Eu, 8))
  {
    v708 = a3;
    v157 = v7;
    v158 = sub_160F34(0x2Eu);
    v159 = sub_175AE4();
    v160 = sub_160F68(8);
    if (v158)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v159, 46, v160, "AVE_FrameRecv", "SendFrame", 2317, a1, v157[3], a4, v156, v72);
      v161 = sub_175AE4();
      v61 = v154;
      sampleSizeArrayi = sub_160F68(8);
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

  if (sub_124F68(v156, v72, 3u, v722))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v699 = v6;
      v237 = sub_160F34(0x2Eu);
      v238 = sub_175AE4();
      v239 = sub_160F68(4);
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
      v242 = sub_175AE4();
      v243 = sub_160F68(4);
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

  if ((*(a2 + 9) & 1) != 0 && sub_15F8B8(dataLength, v72, a1 + 7137))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v699 = v6;
      v244 = sub_160F34(0x2Eu);
      v245 = sub_175AE4();
      v246 = sub_160F68(4);
      if (v244)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v245, 46, v246, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0", a1, v7[3], *(a2 + 40), a4, dataLength, v72, a1 + 28548);
        v247 = sub_175AE4();
        sampleSizeArrayl = sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v248 = sub_160F34(0x2Eu);
      v249 = sub_175AE4();
      v250 = sub_160F68(4);
      if (v248)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size\n", v249, 46, v250, "AVE_FrameRecv", "SendFrame", 2402, "totalSize != 0", a1, v7[3], *(a2 + 40));
        v251 = sub_175AE4();
        v23 = v705;
        sampleSizeArraym = sub_160F68(4);
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
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v189 = sub_160F34(0x2Eu);
    v190 = sub_175AE4();
    v191 = sub_160F68(4);
    if (!v189)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d", v190, 46, v191, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d\n", v190, 46, v191, "AVE_FrameRecv", "SendFrame", 2412, "m_numCABACzeroWordToBeInserted % 3 == 0", a1, v7[3], *(a2 + 40), v712[532]);
    v192 = sub_175AE4();
    v193 = sub_160F68(4);
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
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v297 = sub_160F34(0x2Eu);
    v298 = sub_175AE4();
    v299 = sub_160F68(4);
    if (!v297)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld", v298, 46, v299);
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld\n", v298, 46, v299, "AVE_FrameRecv", "SendFrame", 2414, "piLastOutputSliceSize != __null", a1, v7[3]);
    v192 = sub_175AE4();
    v300 = sub_160F68(4);
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
  if (sub_160EF0(0x2Eu, 8))
  {
    v692 = v61;
    v233 = sub_160F34(0x2Eu);
    v234 = sub_175AE4();
    v235 = sub_160F68(8);
    if (v233)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld\n", v234, 46, v235, "AVE_FrameRecv", "SendFrame", 2417, a1, v7[3], v712[532], dataLength);
      v236 = sub_175AE4();
      sampleSizeArrayk = sub_160F68(8);
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
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_322;
    }

    v342 = sub_160F34(0x2Eu);
    v343 = sub_175AE4();
    v344 = sub_160F68(4);
    if (!v342)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d", v343, 46, v344, "AVE_FrameRecv");
      goto LABEL_322;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d\n", v343, 46, v344, "AVE_FrameRecv", "SendFrame", 2423, "piCABACZeroWordInsertBuf != __null", a1, v7[3], *(a2 + 3180), v712[532]);
    v192 = sub_175AE4();
    v345 = sub_160F68(4);
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

  if (sub_124F68(v338, v341, 4u, v722))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v346 = v23;
      v347 = sub_160F34(0x2Eu);
      v348 = a2;
      v349 = sub_175AE4();
      v350 = sub_160F68(4);
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
      v353 = sub_175AE4();
      v354 = sub_160F68(4);
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
  if (sub_160EF0(0x2Eu, 8))
  {
    v358 = sub_160F34(0x2Eu);
    v359 = sub_175AE4();
    v360 = sub_160F68(8);
    v361 = *v355;
    if (v358)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes\n", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2440, a1, v356[3], v361);
      v362 = sub_175AE4();
      v363 = sub_160F68(8);
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
  if (sub_160EF0(0x2Eu, 8))
  {
    v408 = sub_160F34(0x2Eu);
    v409 = sub_175AE4();
    v410 = sub_160F68(8);
    v411 = v356[3];
    v412 = *v355;
    if (v408)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes\n", v409, 46, v410, "AVE_FrameRecv", "SendFrame", 2444, a1, v411, v412);
      v413 = sub_175AE4();
      v414 = sub_160F68(8);
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

    if (sub_160EF0(0x2Eu, 7))
    {
      v228 = sub_160F34(0x2Eu);
      v229 = sub_175AE4();
      v230 = sub_160F68(7);
      if (v228)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d\n", v229, 46, v230, "AVE_FrameRecv", "SendFrame", 2505, a1, v711[3], *(v710 + 40), a1 + 39627, *(v700 + 299));
        v231 = sub_175AE4();
        v232 = sub_160F68(7);
        v23 = v705;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v231, 46, v232, "AVE_FrameRecv", "SendFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v229, 46, v230, "AVE_FrameRecv", "SendFrame");
      }
    }

    v301 = a1 + 39627;
    if (sub_124F68(a1 + 39627, *(v700 + 299), 6u, v722))
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v302 = sub_160F34(0x2Eu);
        v303 = sub_175AE4();
        v304 = sub_160F68(4);
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
        v307 = sub_175AE4();
        v308 = sub_160F68(4);
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

      if (sub_160EF0(0x2Eu, 7))
      {
        v309 = sub_160F34(0x2Eu);
        v310 = sub_175AE4();
        v311 = sub_160F68(7);
        v312 = v711[3];
        v313 = *(v710 + 40);
        v314 = *(v700 + 299);
        if (v309)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d\n", v310, 46, v311, "AVE_FrameRecv", "SendFrame", 2519, a1, v312, v313, v301, dataLength, v314);
          v315 = sub_175AE4();
          v316 = sub_160F68(7);
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
      if (!sub_15F8B8(dataLength, 0, a1 + 7137))
      {
LABEL_179:
        v699 = v6;
        v164 = dataLength;
        v165 = v712[542];
        a2 = v710;
        sub_15FD9C(a1 + 7137, 46, 8, 0, *(v710 + 40));
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
          if (sub_160EF0(0x2Eu, 7))
          {
            v174 = v168;
            v175 = sub_160F34(0x2Eu);
            v176 = sub_175AE4();
            v177 = sub_160F68(7);
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
              v186 = sub_175AE4();
              v187 = sub_160F68(7);
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
            v256 = sub_11A0D0(a1, dataLength, &cf, *(a2 + 2552));
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

            if (sub_160EF0(3u, 4))
            {
              v266 = v168;
              v267 = sub_160F34(3u);
              v268 = sub_175AE4();
              v269 = sub_160F68(4);
              if (v267)
              {
                printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld\n", v268, 3, v269, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v694, v266);
                v270 = sub_175AE4();
                v271 = sub_160F68(4);
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
            if (sub_160EF0(0x2Eu, 4))
            {
              v288 = v168;
              v289 = sub_160F34(0x2Eu);
              v290 = sub_175AE4();
              v291 = sub_160F68(4);
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
              v295 = sub_175AE4();
              v296 = sub_160F68(4);
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

            v260 = sub_118BC0(a1, v722, dataLength, v257);
            if (v260)
            {
              v261 = v260;
              if (sub_160EF0(0x2Eu, 4))
              {
                v262 = sub_160F34(0x2Eu);
                v263 = sub_175AE4();
                v264 = sub_160F68(4);
                if (v262)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d\n", v263, 46, v264, "AVE_FrameRecv", "SendFrame", 2589, "ret == 0", v722, dataLength, v257, v261);
                  v265 = sub_175AE4();
                  v23 = v705;
                  sampleSizeArrayn = sub_160F68(4);
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
                if (sub_160EF0(3u, 4))
                {
                  v367 = sub_160F34(3u);
                  v368 = sub_175AE4();
                  v369 = sub_160F68(4);
                  v31 = v702;
                  if (v367)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v368, 3, v369, "SendFrame", 2616, "codedHeader != __null");
                    v370 = sub_175AE4();
                    sampleSizeArrayo = sub_160F68(4);
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
                v382 = sub_11C9CC(a1, (v278 + 1980));
                if (v382)
                {
                  v383 = v382;
                  memcpy((v710 + 31438), v382, 0x626uLL);
                  *(v711 + 8) = 1;
                  v384 = sub_CBC74(*(v700 + 220), 4u, *(v710 + 20));
                  if (v384)
                  {
                    v385 = v384;
                    fseeko(v384, 1574 * v383[11] + 264, 0);
                    fwrite(v383, 1uLL, 0x626uLL, v385);
                  }
                }

                else if (sub_160EF0(0xD8u, 6))
                {
                  v419 = sub_160F34(0xD8u);
                  v420 = sub_175AE4();
                  v421 = sub_160F68(6);
                  v422 = *v694;
                  if (v419)
                  {
                    printf("%lld %d AVE %s:   F %d pMpStats NULL \n", v420, 216, v421, v422);
                    v423 = sub_175AE4();
                    sampleSizeArrays = sub_160F68(6);
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

              sub_117768(a1, v710, v280);
            }

            v7 = v711;
            v6 = v699;
            v281 = v700;
            if (v702)
            {
              free(v702);
            }

            v282 = vshr_n_u32(vadd_s32(a1[3767], 0xF0000000FLL), 4uLL);
            sub_CDC60(*(v700 + 220), *(v710 + 24), a1[*(v710 + 3180) + 3224], 432 * v282.i32[0] * v282.i32[1]);
            v283 = *(v710 + 23720);
            if (v283)
            {
              sub_CEA24(*(v700 + 220), v283);
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

            sub_CD240(*(v700 + 220), *(v710 + 24), &memoryBlocka[v688], v286);
            *(v697 + 3376) = sub_175AE4();
            if (a1[3669] != 1)
            {
              if (allocator)
              {
                v713 = 0;
LABEL_542:
                v31 = 0;
                *(v697 + 3368) = sub_175AE4();
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

                      if (sub_160EF0(0x2Eu, 7))
                      {
                        v430 = sub_160F34(0x2Eu);
                        v431 = sub_175AE4();
                        v432 = sub_160F68(7);
                        v433 = *v426;
                        if (v430)
                        {
                          printf("%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x\n", v431, 46, v432, "AVE_FrameRecv", "SendFrame", 2827, v429, v429 - 4, *(v710 + 3180), v433);
                          v434 = sub_175AE4();
                          v435 = sub_160F68(7);
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

                    if (!sub_160EF0(3u, 4))
                    {
                      goto LABEL_698;
                    }

                    v461 = sub_160F34(3u);
                    v462 = sub_175AE4();
                    v463 = sub_160F68(4);
                    if (!v461)
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)", v462);
                      goto LABEL_698;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)\n", v462, 3, v463, "SendFrame", 2835, "*(uint32_t *)&pSliceAddr[0] == 0x01000000", *v426);
                    v464 = sub_175AE4();
                    v465 = sub_160F68(4);
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
                        if (sub_160EF0(0x2Eu, 8))
                        {
                          v446 = sub_160F34(0x2Eu);
                          v447 = sub_175AE4();
                          v448 = sub_160F68(8);
                          if (v446)
                          {
                            printf("%lld %d AVE %s: %s:%d %d %p 0x%x\n", v447, 46, v448, "SendFrame", 2861, v445, v442, *v442);
                            v449 = sub_175AE4();
                            sub_160F68(8);
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

                        if (!sub_160EF0(3u, 4))
                        {
                          goto LABEL_698;
                        }

                        v524 = sub_160F34(3u);
                        v525 = sub_175AE4();
                        v526 = sub_160F68(4);
                        if (!v524)
                        {
                          syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)", v525);
                          goto LABEL_698;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)\n", v525, 3, v526, "SendFrame", 2864, "*pFillerAddr == 0x01000000", *v442);
                        v464 = sub_175AE4();
                        v527 = sub_160F68(4);
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
                if (sub_160EF0(0x2Eu, 7))
                {
                  v450 = sub_160F34(0x2Eu);
                  v451 = sub_175AE4();
                  v452 = sub_160F68(7);
                  if (v450)
                  {
                    printf("%lld %d AVE %s: BAIL for first layer\n", v451, 46, v452);
                    sub_175AE4();
                    sub_160F68(7);
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
                  sub_11CB54(v366, v364[3], *(v700 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
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
                if (sub_160EF0(0x2Eu, 8))
                {
                  v392 = sub_160F34(0x2Eu);
                  v393 = sub_175AE4();
                  v394 = sub_160F68(8);
                  if (v392)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID\n", v393, 46, v394);
                    v395 = sub_175AE4();
                    sampleSizeArrayq = sub_160F68(8);
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

              if (sub_160EF0(0x33u, 7))
              {
                v467 = sub_160F34(0x33u);
                v468 = sub_175AE4();
                v469 = sub_160F68(7);
                v470 = v364[3];
                v471 = *(a2 + 40);
                if (v467)
                {
                  printf("%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v468, 51, v469, "SendFrame", 2931, v470, v471, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value, sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.flags, sampleTimingArray.presentationTimeStamp.epoch, *(a2 + 4608), *(a2 + 4616), sampleTimingArray.duration.value, sampleTimingArray.duration.timescale, sampleTimingArray.duration.flags, sampleTimingArray.duration.epoch);
                  v472 = sub_175AE4();
                  v473 = sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v472, 51, v473, "SendFrame", 2931, v364[3], *(a2 + 40), sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v468, 51, v469, "SendFrame", 2931, v470, v471, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                v6 = v699;
              }

              v474 = CMSampleBufferCreate(kCFAllocatorDefault, cf, 1u, 0, 0, a1[3670], 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
              v475 = sub_160EF0(0x2Eu, 7);
              if (v475)
              {
                v476 = sub_160F34(0x2Eu);
                v477 = sub_175AE4();
                v478 = sub_160F68(7);
                v479 = a1[3670];
                if (v476)
                {
                  printf("%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p\n", v477, 46, v478, v474, sampleBufferOut, v479);
                  v480 = sub_175AE4();
                  v481 = sub_160F68(7);
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
                sub_11CB54(v475, v364[3], *(v700 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
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
                  if (sub_160EF0(0x2Eu, 7))
                  {
                    v489 = sub_160F34(0x2Eu);
                    v490 = sub_175AE4();
                    v491 = sub_160F68(7);
                    v492 = *(v710 + 2456);
                    if (v489)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d\n", v490, 46, v491, v492, v487, v488);
                      v493 = sub_175AE4();
                      sampleSizeArrayv = sub_160F68(7);
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
                    Mutable = sub_160EF0(0x2Eu, 4);
                    if (Mutable)
                    {
                      v503 = sub_160F34(0x2Eu);
                      v504 = sub_175AE4();
                      v505 = sub_160F68(4);
                      if (v503)
                      {
                        printf("%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.\n", v504, 46, v505, "SendFrame", 3376);
                        v506 = sub_175AE4();
                        sampleSizeArrayw = sub_160F68(4);
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

                  if (sub_160EF0(0x2Eu, 7))
                  {
                    v498 = sub_160F34(0x2Eu);
                    v499 = sub_175AE4();
                    v500 = sub_160F68(7);
                    if (v498)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d IsHierarchical %d\n", v499, 46, v500, "AVE_FrameRecv", "SendFrame", 2999, v712[758] > 1);
                      v501 = sub_175AE4();
                      sub_160F68(7);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v501);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v499);
                    }
                  }

                  Mutable = sub_160EF0(0x2Eu, 7);
                  if (Mutable)
                  {
                    v507 = sub_160F34(0x2Eu);
                    v508 = sub_175AE4();
                    v509 = sub_160F68(7);
                    v510 = *(v710 + 40);
                    v511 = *(v697 + 40);
                    if (v507)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d\n", v508, 46, v509, v510, *(v710 + 2456), v511);
                      v512 = sub_175AE4();
                      v513 = sub_160F68(7);
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
                    v514 = sub_11D464(a1, time1, *(v697 + 36));
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
                      if (sub_160EF0(0x2Eu, 7))
                      {
                        v519 = sub_160F34(0x2Eu);
                        v520 = sub_175AE4();
                        v521 = sub_160F68(7);
                        v522 = *v694;
                        if (v519)
                        {
                          printf("%lld %d AVE %s: H264FrameRec: F %d NUT CRA\n", v520, 46, v521, v522);
                          v523 = sub_175AE4();
                          sampleSizeArrayx = sub_160F68(7);
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
                      v530 = sub_160270(a1 + 28548, v496);
                      bzero(a1 + 28548, 0x214uLL);
                      if (v530)
                      {
                        if (sub_160EF0(0x2Eu, 4))
                        {
                          v531 = sub_160F34(0x2Eu);
                          v532 = sub_175AE4();
                          v533 = sub_160F68(4);
                          if (v531)
                          {
                            printf("%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d\n", v532, 46, v533, "AVE_FrameRecv", "SendFrame", 3116, "ret == 0", a1, v711[3], *(v710 + 8), v496, v530);
                            v534 = sub_175AE4();
                            sampleSizeArrayy = sub_160F68(4);
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
                          if (sub_160EF0(0x2Eu, 7))
                          {
                            v548 = sub_160F34(0x2Eu);
                            v549 = sub_175AE4();
                            v550 = sub_160F68(7);
                            v551 = *(v710 + 20);
                            if (v551 >= 2)
                            {
                              v551 = 2;
                            }

                            if (v548)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d\n", v549, 46, v550, v551);
                              v552 = sub_175AE4();
                              v553 = sub_160F68(7);
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
                          if (sub_160EF0(0xD8u, 7))
                          {
                            v582 = sub_160F34(0xD8u);
                            v583 = sub_175AE4();
                            v584 = sub_160F68(7);
                            if (v582)
                            {
                              printf("%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v583, 216, v584, *(v710 + 4560), *(v710 + 4568), *(v710 + 4572), *(v710 + 4576));
                              v585 = sub_175AE4();
                              sub_160F68(7);
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
                          if (v713 && sub_160EF0(0x2Eu, 4))
                          {
                            v586 = sub_160F34(0x2Eu);
                            v587 = sub_175AE4();
                            v588 = sub_160F68(4);
                            if (v586)
                            {
                              printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v587, 46, v588);
                              v589 = sub_175AE4();
                              sampleSizeArrayz = sub_160F68(4);
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
                        v555 = sub_11CB54(Mutable, v711[3], *(v700 + 126), a1[3669], *(v710 + 2552), *(v710 + 40), 0, sampleBufferOut);
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
                        sub_14A220(*v570, v568);
                        sub_14A220(*(v570 - 4), v569);
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
                          sub_14A220(*(v592 - 8), v590);
                          sub_14A220(*(v592 - 4), v591);
                          v594 = *v592++;
                          sub_14A220(v594, v574);
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
                          if (sub_160EF0(3u, 4))
                          {
                            v608 = sub_160F34(3u);
                            v609 = sub_175AE4();
                            v610 = sub_160F68(4);
                            if (v608)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.\n", v609, 3, v610, "SendFrame", 3247, "false", *(v700 + 131));
                              v611 = sub_175AE4();
                              sub_160F68(4);
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
                          sub_14A220(*(v575 - 8), v573);
                          v577 = *v575++;
                          sub_14A220(v577, v574);
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
                        sub_14A220(*(v710 + 29828 + i), v595);
                      }

                      if (v595)
                      {
                        CFDictionarySetValue(v496, kVTSampleAttachmentQualityMetricsKey_CodedFrameResidualBits, v595);
                        CFRelease(v595);
                      }

                      v597 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      for (j = 0; j != 16; j += 4)
                      {
                        Mutable = sub_14A220(*(v710 + 29844 + j), v597);
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
                            if (!sub_16F950((v710 + 3184), Mutable))
                            {
                              CFDictionarySetValue(v496, kVTSampleAttachment_GetDPB, v545);
                              v617 = *(v710 + 23728);
                              if ((v617 & 0x8000) != 0)
                              {
                                v618 = v699[3];
                                if (v618)
                                {
                                  sub_D8F04(v618, v545, *(v710 + 40), *(v710 + 4764));
                                  v617 = *(v710 + 23728);
                                }
                              }

                              if ((v617 & 0x10000) != 0)
                              {
                                v619 = v699[3];
                                if (v619)
                                {
                                  sub_D93A4(v619, v545, *v694, v496);
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
                          if (sub_160EF0(0x2Eu, 7))
                          {
                            v604 = sub_160F34(0x2Eu);
                            v605 = sub_175AE4();
                            v606 = sub_160F68(7);
                            if (v604)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out\n", v605, 46, v606, v603);
                              v607 = sub_175AE4();
                              sampleSizeArrayba = sub_160F68(7);
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
                      if (!sub_160EF0(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v612 = sub_160F34(3u);
                      v613 = sub_175AE4();
                      v614 = sub_160F68(4);
                      if (v612)
                      {
                        v615 = 3281;
LABEL_735:
                        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.\n", v613, 3, v614, "SendFrame", v615, "stat != __null");
                        sub_175AE4();
                        sub_160F68(4);
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
                        if (sub_160EF0(0x2Eu, 7))
                        {
                          v563 = sub_160F34(0x2Eu);
                          v564 = sub_175AE4();
                          v565 = sub_160F68(7);
                          if (v563)
                          {
                            printf("%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n\n", v564, 46, v565, *(v700 + 132), v562);
                            v566 = sub_175AE4();
                            v567 = sub_160F68(7);
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
                      if (!sub_160EF0(3u, 4))
                      {
                        goto LABEL_516;
                      }

                      v616 = sub_160F34(3u);
                      v613 = sub_175AE4();
                      v614 = sub_160F68(4);
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
                    v537 = sub_17215C(a1 + 3641, *(v700 + 77), v535);
                    if (!v537)
                    {
                      CFDictionarySetValue(v496, @"QualityMetrics", v536);
                      CFRelease(v536);
                      goto LABEL_619;
                    }

                    v538 = v537;
                    if (sub_160EF0(0x2Eu, 4))
                    {
                      v539 = sub_160F34(0x2Eu);
                      v540 = sub_175AE4();
                      v541 = sub_160F68(4);
                      if (!v539)
                      {
                        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d", v540, 46);
                        goto LABEL_695;
                      }

                      printf("%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d\n", v540, 46, v541, "AVE_FrameRecv", "SendFrame", 3085, "ret == 0", v538);
                      v542 = sub_175AE4();
                      v661 = "ret == 0";
                      v662 = v538;
                      v657 = 3085;
                      sampleSizeArrayd = sub_160F68(4);
                      v543 = "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d";
                      goto LABEL_660;
                    }
                  }

                  else if (sub_160EF0(0x2Eu, 4))
                  {
                    v556 = sub_160F34(0x2Eu);
                    v557 = sub_175AE4();
                    v558 = sub_160F68(4);
                    if (!v556)
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v557);
                      goto LABEL_695;
                    }

                    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v557, 46, v558, "AVE_FrameRecv", "SendFrame", 3081, "pMSEDict != __null");
                    v542 = sub_175AE4();
                    v657 = 3081;
                    v661 = "pMSEDict != __null";
                    sampleSizeArrayd = sub_160F68(4);
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
              if (sub_160EF0(0x2Eu, 7))
              {
                v378 = sub_160F34(0x2Eu);
                v379 = sub_175AE4();
                v380 = sub_160F68(7);
                if (v378)
                {
                  printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v379, 46, v380);
                  v381 = sub_175AE4();
                  sampleSizeArrayp = sub_160F68(7);
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
              sub_11A5A0(a1, memoryBlocka);
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
                    if (sub_160EF0(0x2Eu, 4))
                    {
                      v457 = sub_160F34(0x2Eu);
                      v458 = sub_175AE4();
                      v459 = sub_160F68(4);
                      if (v457)
                      {
                        printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v458, 46, v459);
                        v460 = sub_175AE4();
                        sampleSizeArrayu = sub_160F68(4);
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

              if (sub_160EF0(0x2Eu, 7))
              {
                v438 = sub_160F34(0x2Eu);
                v439 = sub_175AE4();
                v440 = sub_160F68(7);
                if (v438)
                {
                  printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes\n", v439, 46, v440, memoryBlocka, v424);
                  v441 = sub_175AE4();
                  sampleSizeArrayt = sub_160F68(7);
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

          if (!sub_160EF0(0x2Eu, 4))
          {
            v713 = 4294954394;
LABEL_351:
            v7 = v711;
            goto LABEL_396;
          }

          v415 = sub_160F34(0x2Eu);
          v416 = sub_175AE4();
          v417 = sub_160F68(4);
          if (v415)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d\n", v416, 46, v417, "AVE_FrameRecv", "SendFrame", 2571, "m_sMVBuf.pBuf != __null", a1[3639], *v694);
            v418 = sub_175AE4();
            sampleSizeArrayr = sub_160F68(4);
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

        if (!sub_160EF0(3u, 4))
        {
          v713 = 0;
          a3 = v706;
          v6 = v699;
          v31 = v702;
          goto LABEL_258;
        }

        v223 = sub_160F34(3u);
        v224 = sub_175AE4();
        v225 = sub_160F68(4);
        v6 = v699;
        v31 = v702;
        if (v223)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v224, 3, v225, "SendFrame", 2536, "codedHeader != __null");
          v226 = sub_175AE4();
          v227 = sub_160F68(4);
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

      if (sub_160EF0(0x2Eu, 4))
      {
        v397 = v6;
        v398 = sub_160F34(0x2Eu);
        v399 = sub_175AE4();
        v400 = sub_160F68(4);
        v401 = v711[3];
        v402 = *(v710 + 40);
        if (v398)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p\n", v399, 46, v400, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v401, v402, dataLength, v396);
          v403 = sub_175AE4();
          v404 = sub_160F68(4);
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
      if (!sub_160EF0(0x2Eu, 4))
      {
        v713 = 0;
        a3 = v706;
        v6 = v699;
        v23 = v705;
        goto LABEL_429;
      }

      v319 = sub_160F34(0x2Eu);
      v320 = sub_175AE4();
      v321 = sub_160F68(4);
      v100 = v711;
      v23 = v705;
      v31 = v702;
      if (v319)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i\n", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v711[3], v207);
        v322 = sub_175AE4();
        v323 = sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 7))
    {
      v214 = sub_160F34(0x2Eu);
      v684 = sub_175AE4();
      v215 = sub_160F68(7);
      v216 = v711[3];
      v217 = v212[7];
      if (v214)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld\n", v684, 46, v215, "AVE_FrameRecv", "SendFrame", 2467, a1, v216, v207, v217, *(v212 + 2), dataLength);
        v218 = sub_175AE4();
        v219 = sub_160F68(7);
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
      if (sub_124F68(v212, v220 - 1, 5u, v722))
      {
        break;
      }
    }

    v221 = malloc_type_malloc(*(v212 + 2) + 1, 0x100004077774924uLL);
    *v209 = v221;
    if (!v221)
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v324 = sub_160F34(0x2Eu);
        v325 = sub_175AE4();
        v326 = sub_160F68(4);
        v141 = v711;
        v31 = v702;
        if (v324)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d\n", v325, 46, v326, "AVE_FrameRecv", "SendFrame", 2483, "piFillerBuf[i] != __null", a1, v711[3], *(v710 + 3180), v207, *(v212 + 2));
          v327 = sub_175AE4();
          v328 = sub_160F68(4);
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
    if (sub_124F68(v222, *(v212 + 2) + 1, 5u, v722))
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v329 = sub_160F34(0x2Eu);
        v330 = sub_175AE4();
        v331 = sub_160F68(4);
        if (v329)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p\n", v330, 46, v331, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0", a1, v711[3], *(v710 + 40), v207, v222, *(v212 + 2), v722);
          v332 = sub_175AE4();
          v333 = sub_160F68(4);
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

  if (!sub_160EF0(0x2Eu, 4))
  {
LABEL_401:
    v713 = 0;
    a3 = v706;
    a2 = v710;
    goto LABEL_402;
  }

  v371 = sub_160F34(0x2Eu);
  v372 = sub_175AE4();
  v373 = sub_160F68(4);
  v141 = v711;
  v374 = v711[3];
  v277 = v710;
  v375 = *(v710 + 40);
  if (v371)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p\n", v372, 46, v373, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v374, v375, v207, v212, v212[7], v722);
    v376 = sub_175AE4();
    v377 = sub_160F68(4);
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
  sub_175D4(v6[4], *(a2 + 40));
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
    sub_11A5A0(a1, *v6);
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

  if (sub_160EF0(0x2Eu, 7))
  {
    v55 = sub_160F34(0x2Eu);
    v56 = sub_175AE4();
    v57 = sub_160F68(7);
    if (v55)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d\n", v56, 46, v57, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4, v713);
      v58 = sub_175AE4();
      sampleSizeArrayg = sub_160F68(7);
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