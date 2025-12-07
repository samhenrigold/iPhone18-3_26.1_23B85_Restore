double SUPL_indicate_trigger_UT_expiry(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = SUPL_Message_Init();
  if (v2)
  {
    *(v2 + 5) = a1;
    v2[16] = 6;
    v4 = qword_2A14BEA08;
    v5 = (qword_2A14BEA08 + 8);
    if (!qword_2A14BEA08)
    {
      v5 = &SUPL_Queue;
    }

    *v5 = v2;
    qword_2A14BEA08 = v2;
    *v2 = v4;
    *(v2 + 1) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SUPL_indicate_trigger_UT_expiry", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
  }

  return result;
}

uint64_t GN_SUPL_Mobile_Info_Ind_In(int *a1)
{
  v1 = a1;
  v162 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_LocationId(a1);
  if (v1)
  {
    v135[0] = 0;
    v136 = 0;
    v137 = 0xFFFFFFFFLL;
    v139 = 0;
    v140 = 0;
    __src = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = -1;
    v146 = 0;
    v147 = 0xFFFF000000000000;
    v148 = 0;
    v149 = 0;
    v150[0] = 0;
    *(v150 + 6) = 0;
    v150[2] = 0;
    v150[3] = 0;
    v151 = 0;
    v152 = 1;
    v2 = v1[1];
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v59 = *(v1 + 6);
          if (v59 <= 0x3E7)
          {
            v60 = *(v1 + 7);
            if (v60 <= 0x3E7)
            {
              v61 = v1[4];
              if (!HIWORD(v61))
              {
                v62 = v1[5];
                if (!HIWORD(v62))
                {
                  v135[0] = 1;
                  LOWORD(v137) = v59;
                  WORD1(v137) = v60;
                  WORD2(v137) = v61;
                  HIWORD(v137) = v62;
                  if (*(v1 + 12) <= 0xFFu)
                  {
                    v141 = *(v1 + 12);
                    HIBYTE(v136) = 1;
                  }

                  if (*(v1 + 26))
                  {
                    v63 = 0;
                    if (*(v1 + 26) >= 0xFu)
                    {
                      v64 = 15;
                    }

                    else
                    {
                      v64 = *(v1 + 26);
                    }

                    v65 = v1 + 31;
                    do
                    {
                      v66 = *(v65 - 3);
                      if (v66 <= 0x3FF)
                      {
                        v67 = *(v65 - 1);
                        if (v67 <= 0x3F)
                        {
                          v68 = *v65;
                          if (v68 <= 0x3F)
                          {
                            if (v63 >= v140)
                            {
                              v69 = __src;
                              v70 = v63 - __src;
                              v71 = 0xAAAAAAAAAAAAAAABLL * ((v63 - __src) >> 2);
                              v72 = v71 + 1;
                              if (v71 + 1 > 0x1555555555555555)
                              {
                                std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                              }

                              if (0x5555555555555556 * ((v140 - __src) >> 2) > v72)
                              {
                                v72 = 0x5555555555555556 * ((v140 - __src) >> 2);
                              }

                              if (0xAAAAAAAAAAAAAAABLL * ((v140 - __src) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                              {
                                v73 = 0x1555555555555555;
                              }

                              else
                              {
                                v73 = v72;
                              }

                              if (v73)
                              {
                                std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_NMRelement>>(&__src, v73);
                              }

                              v74 = 12 * v71;
                              *v74 = v66;
                              *(v74 + 4) = v67;
                              *(v74 + 8) = v68;
                              v63 = (12 * v71 + 12);
                              v75 = (v74 - v70);
                              memcpy((v74 - v70), v69, v70);
                              v76 = __src;
                              __src = v75;
                              v139 = v63;
                              v140 = 0;
                              if (v76)
                              {
                                operator delete(v76);
                              }
                            }

                            else
                            {
                              *v63 = v66;
                              v63[1] = v67;
                              v63[2] = v68;
                              v63 += 3;
                            }

                            v139 = v63;
                          }
                        }
                      }

                      v65 += 4;
                      --v64;
                    }

                    while (v64);
                    if (__src != v63)
                    {
                      LOBYTE(v136) = 1;
                    }
                  }

                  goto LABEL_201;
                }
              }
            }
          }

          goto LABEL_151;
        }

        if (v2 == 2)
        {
          v3 = *(v1 + 6);
          if (v3 <= 0x3E7)
          {
            v4 = *(v1 + 7);
            if (v4 <= 0x3E7)
            {
              v5 = v1[5];
              if (!(v5 >> 28))
              {
                v135[0] = 2;
                LOWORD(v144) = v3;
                WORD1(v144) = v4;
                HIDWORD(v144) = v5;
                v6 = *(v1 + 12);
                v7 = *(v1 + 13);
                v145 = 0;
                WORD1(v147) = v6;
                if ((v7 & 0xC000) == 0)
                {
                  LOWORD(v147) = v7;
                  v146 = 1;
                }

                LOBYTE(v142) = v6 < 0x4000;
                if (*(v1 + 14) <= 0x1FFu)
                {
                  HIWORD(v147) = *(v1 + 14);
                  HIBYTE(v142) = 1;
                }

                if (*(v1 + 30))
                {
                  v8 = 0;
                  if (*(v1 + 30) >= 8u)
                  {
                    v9 = 8;
                  }

                  else
                  {
                    v9 = *(v1 + 30);
                  }

                  v116 = v1;
                  v10 = v1 + 12;
                  do
                  {
                    *(&v124 + 1) = 0;
                    BYTE6(v124) = 0;
                    LOWORD(v125[0]) = 0;
                    BYTE6(v125[0]) = -1;
                    v126[0] = 0;
                    v126[1] = 0;
                    v125[1] = 0;
                    v11 = &v1[98 * v8 + 8];
                    v12 = *v11;
                    v13 = *(v11 + 1);
                    BYTE4(v124) = 0;
                    *(v125 + 2) = v12;
                    if ((v13 & 0xC000) == 0)
                    {
                      LOWORD(v125[0]) = v13;
                      BYTE6(v124) = 1;
                    }

                    LOBYTE(v124) = v12 < 0x4000;
                    if ((v11[1] & 0x80000000) == 0)
                    {
                      BYTE6(v125[0]) = *(v11 + 4);
                      BYTE1(v124) = 1;
                    }

                    v14 = *(v11 + 5);
                    if (v14)
                    {
                      if (v14 >= 0x20)
                      {
                        v15 = 32;
                      }

                      else
                      {
                        v15 = v14;
                      }

                      v16 = v10;
                      do
                      {
                        __str[0] = 0;
                        *&__str[4] = -1;
                        LOWORD(v155) = 0;
                        BYTE2(v155) = 0;
                        DWORD1(v155) = -1;
                        *(&v155 + 7) = -1;
                        *&v156 = 0xFFFFFFFF00000000;
                        BYTE8(v156) = -1;
                        *&v158 = 0;
                        v17 = *(v16 - 2);
                        v157 = 0uLL;
                        if (!(v17 >> 28))
                        {
                          *&__str[4] = v17;
                          __str[0] = 1;
                        }

                        v18 = *(v16 - 2);
                        if (v18 <= 0x1FF)
                        {
                          v154[0] = 0;
                          WORD2(v155) = v18;
                          if (*(v16 - 2) <= 0x3Fu)
                          {
                            WORD3(v155) = *(v16 - 2);
                            LOBYTE(v155) = 1;
                          }

                          if ((*(v16 - 1) & 0x80000000) == 0)
                          {
                            WORD4(v155) = *(v16 - 1);
                            BYTE1(v155) = 1;
                          }

                          if (((*v16 - 46) & 0x80) == 0)
                          {
                            BYTE10(v155) = *v16;
                            BYTE2(v155) = 1;
                          }

                          std::vector<ASN1T_CellMeasuredResults>::push_back[abi:ne200100](&v125[1], __str);
                        }

                        v16 += 3;
                        --v15;
                      }

                      while (v15);
                      if (v125[1] != v126[0])
                      {
                        BYTE2(v124) = 1;
                      }
                    }

                    if (v124 == 1 || BYTE1(v124) == 1)
                    {
                      std::vector<ASN1T_MeasuredResults>::push_back[abi:ne200100](&v148, &v124);
                    }

                    *__str = &v125[1];
                    std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
                    ++v8;
                    v10 += 98;
                  }

                  while (v8 != v9);
LABEL_199:
                  v1 = v116;
                  if (v148 != v149)
                  {
                    v143 = 1;
                  }

                  goto LABEL_201;
                }

                if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v114 = mach_continuous_time();
                  v115 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA Serving Cell Info FrequncyInfo is not set\n", (*&g_MacClockTicksToMsRelation * v114), "SPL", 73, "FillLocationIDInfo");
                  LbsOsaTrace_WriteLog(0x12u, __str, v115, 4, 1);
                }

                goto LABEL_201;
              }
            }
          }

          goto LABEL_151;
        }

LABEL_103:
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v57 = mach_continuous_time();
          v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RatType,%u\n", (*&g_MacClockTicksToMsRelation * v57), "SPL", 69, "FillLocationIDInfo", 515, v1[1]);
          LbsOsaTrace_WriteLog(0x12u, __str, v58, 0, 1);
        }

        goto LABEL_201;
      }

LABEL_96:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v50 = mach_continuous_time();
        v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RatType is either CDMA or not Set\n", (*&g_MacClockTicksToMsRelation * v50), "SPL", 69, "FillLocationIDInfo", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v51, 0, 1);
      }

      goto LABEL_201;
    }

    if (v2 == 3)
    {
      v52 = *(v1 + 6);
      if (v52 <= 0x3E7)
      {
        v53 = *(v1 + 7);
        if (v53 <= 0x3E7)
        {
          v54 = v1[5];
          if (!(v54 >> 28))
          {
            v135[0] = 2;
            LOWORD(v144) = v52;
            WORD1(v144) = v53;
            HIDWORD(v144) = v54;
            v55 = *(v1 + 12);
            if ((v55 & 0xC000) != 0)
            {
              v56 = 0;
            }

            else
            {
              v56 = 1;
              v145 = 1;
              WORD2(v147) = v55;
            }

            v142 = v56;
            if (*(v1 + 28))
            {
              v85 = 0;
              if (*(v1 + 28) >= 8u)
              {
                v86 = 8;
              }

              else
              {
                v86 = *(v1 + 28);
              }

              v116 = v1;
              v118 = v86;
              v87 = v1 + 45;
              do
              {
                v88 = 0;
                *(&v124 + 1) = 0;
                BYTE6(v124) = 0;
                LODWORD(v125[0]) = 0;
                WORD2(v125[0]) = 0;
                BYTE6(v125[0]) = -1;
                v126[0] = 0;
                v126[1] = 0;
                v125[1] = 0;
                v89 = &v1[193 * v85 + 8];
                v90 = *v89;
                if ((*v89 & 0xC000) == 0)
                {
                  v88 = 1;
                  BYTE4(v124) = 1;
                  WORD2(v125[0]) = v90;
                }

                LOBYTE(v124) = v88;
                if ((*(v89 + 2) & 0x80000000) == 0)
                {
                  BYTE6(v125[0]) = *(v89 + 2);
                  BYTE1(v124) = 1;
                }

                if (*(v89 + 3))
                {
                  v119 = v87;
                  v120 = v85;
                  v91 = 0;
                  if (*(v89 + 3) >= 0x20u)
                  {
                    v92 = 32;
                  }

                  else
                  {
                    v92 = *(v89 + 3);
                  }

                  v93 = v89 + 4;
                  do
                  {
                    __str[0] = 0;
                    *&__str[4] = -1;
                    LOWORD(v155) = 0;
                    BYTE2(v155) = 0;
                    DWORD1(v155) = -1;
                    *(&v155 + 7) = -1;
                    *&v156 = 0xFFFFFFFF00000000;
                    BYTE8(v156) = -1;
                    *&v158 = 0;
                    v157 = 0uLL;
                    v154[0] = -1;
                    v94 = v93 + 24 * v91;
                    if (!(*v94 >> 28))
                    {
                      *&__str[4] = *v94;
                      __str[0] = 1;
                    }

                    v95 = *(v94 + 4);
                    if (v95 < 0)
                    {
                      goto LABEL_187;
                    }

                    v154[0] = 1;
                    BYTE4(v156) = v95;
                    if (*(v94 + 5) <= 0xEu)
                    {
                      BYTE5(v156) = *(v94 + 5);
                      LOBYTE(v156) = 1;
                    }

                    if ((*(v94 + 6) & 0x80000000) == 0)
                    {
                      WORD3(v156) = *(v94 + 6);
                      BYTE1(v156) = 1;
                    }

                    if (((*(v94 + 7) - 46) & 0x80) == 0)
                    {
                      BYTE8(v156) = *(v94 + 7);
                      BYTE2(v156) = 1;
                    }

                    v96 = *(v94 + 8);
                    if (!v96)
                    {
LABEL_187:
                      v98 = 0;
                    }

                    else
                    {
                      v97 = 0;
                      while (1)
                      {
                        v99 = *(&v157 + 1);
                        v98 = v157;
                        if (*(&v157 + 1) - v157 >= 0xEuLL)
                        {
                          break;
                        }

                        if ((v87[v97] & 0x80000000) == 0)
                        {
                          std::vector<unsigned char>::push_back[abi:ne200100](&v157, &v87[v97]);
                          v96 = *(v94 + 8);
                        }

                        if (v97 <= 0xC && ++v97 < v96)
                        {
                          continue;
                        }

                        v99 = *(&v157 + 1);
                        v98 = v157;
                        break;
                      }

                      if (v98 != v99)
                      {
                        BYTE3(v156) = 1;
                      }
                    }

                    if (v154[0] != 255)
                    {
                      std::vector<ASN1T_CellMeasuredResults>::push_back[abi:ne200100](&v125[1], __str);
                      v98 = v157;
                    }

                    if (v98)
                    {
                      *(&v157 + 1) = v98;
                      operator delete(v98);
                    }

                    ++v91;
                    v87 += 24;
                  }

                  while (v91 != v92);
                  v87 = v119;
                  v85 = v120;
                  if (v125[1] != v126[0])
                  {
                    BYTE2(v124) = 1;
                  }
                }

                if (v124 == 1 || BYTE1(v124) == 1)
                {
                  std::vector<ASN1T_MeasuredResults>::push_back[abi:ne200100](&v148, &v124);
                }

                *__str = &v125[1];
                std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](__str);
                ++v85;
                v87 += 772;
              }

              while (v85 != v118);
              goto LABEL_199;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v112 = mach_continuous_time();
              v113 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No measured results exists\n", (*&g_MacClockTicksToMsRelation * v112), "SPL", 87, "FillLocationIDInfo", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v113, 2, 1);
            }

LABEL_201:
            v100 = *v1;
            if (*v1)
            {
              if (v100 != 2)
              {
                if (v100 == 1)
                {
                  v152 = 0;
                }

                else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v107 = mach_continuous_time();
                  v108 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx locIdStatus,%u\n", (*&g_MacClockTicksToMsRelation * v107), "SPL", 69, "FillLocationIDInfo", 770, *v1);
                  LbsOsaTrace_WriteLog(0x12u, __str, v108, 0, 1);
                }

                goto LABEL_208;
              }

              v101 = 1;
            }

            else
            {
              v101 = 2;
            }

            v152 = v101;
LABEL_208:
            v102 = SUPL_Message_Init();
            if (v102)
            {
              v103 = v102;
              v104 = operator new(0x90uLL, MEMORY[0x29EDC9418]);
              if (v104)
              {
                *v104 = 0;
                *(v104 + 4) = 0;
                *(v104 + 10) = 0xFFFFFFFFLL;
                *(v104 + 4) = 0;
                *(v104 + 5) = 0;
                *(v104 + 3) = 0;
                v104[48] = 0;
                *(v104 + 28) = 0;
                v104[58] = 0;
                *(v104 + 60) = -1;
                v104[70] = 0;
                *(v104 + 9) = 0xFFFF000000000000;
                *(v104 + 11) = 0;
                *(v104 + 12) = 0;
                *(v104 + 10) = 0;
                *(v104 + 102) = 0;
                *(v104 + 15) = 0;
                *(v104 + 16) = 0;
                *(v104 + 14) = 0;
                v104[136] = 1;
                *(v103 + 128) = v104;
                ASN1T_LocationId::operator=(v104, v135);
              }

              else
              {
                *(v103 + 128) = 0;
              }

              *(v103 + 16) = 7;
              *(v103 + 32) = *(v1 + 8);
              v109 = qword_2A14BEA08;
              v110 = (qword_2A14BEA08 + 8);
              if (!qword_2A14BEA08)
              {
                v110 = &SUPL_Queue;
              }

              *v110 = v103;
              qword_2A14BEA08 = v103;
              *v103 = v109;
              *(v103 + 8) = 0;
              v19 = 1;
              goto LABEL_220;
            }

            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v105 = mach_continuous_time();
              v106 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v105), "SPL", 69, "GN_SUPL_Mobile_Info_Ind_In", 1537);
              LbsOsaTrace_WriteLog(0x12u, __str, v106, 0, 1);
            }

LABEL_213:
            v19 = 0;
LABEL_220:
            ASN1T_CellInfo::~ASN1T_CellInfo(v135);
            return v19;
          }
        }
      }

LABEL_151:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v83 = mach_continuous_time();
        v84 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx status of LocID is FALSE\n", (*&g_MacClockTicksToMsRelation * v83), "SPL", 69, "GN_SUPL_Mobile_Info_Ind_In", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v84, 0, 1);
      }

      goto LABEL_213;
    }

    if (v2 == 4)
    {
      goto LABEL_96;
    }

    if (v2 != 5)
    {
      goto LABEL_103;
    }

    if (*(v1 + 10) >= 0x1F8u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v77 = mach_continuous_time();
        v78 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Physical Cell Id Out of Range %d\n", (*&g_MacClockTicksToMsRelation * v77), "SPL", 69, "FillLocationIDInfo", 514, *(v1 + 10));
        LbsOsaTrace_WriteLog(0x12u, __str, v78, 0, 1);
      }

      goto LABEL_151;
    }

    LOBYTE(v124) = 0;
    *v125 = 0u;
    *v126 = 0u;
    v127 = 0u;
    *v128 = 0u;
    v129 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    if (ConvertIntValsToASN1T_CellGlobalIdEUTRA(&v124, &v121, *(v1 + 6), *(v1 + 7), v1[4], *(v1 + 12)))
    {
      v135[0] = 4;
      v22 = operator new(0xA0uLL, MEMORY[0x29EDC9418]);
      if (v22)
      {
        v23 = v22;
        *(v22 + 13) = 0;
        v24 = (v22 + 104);
        *(v22 + 17) = 0;
        v25 = v22 + 136;
        *(v22 + 2) = 0;
        *(v22 + 18) = 0;
        *(v22 + 19) = 0;
        *(v22 + 40) = 0u;
        *(v22 + 56) = 0u;
        *(v22 + 72) = 0u;
        *(v22 + 11) = 0;
        *(v22 + 24) = 0u;
        *(v22 + 14) = 0;
        *(v22 + 15) = 0;
        *(v22 + 32) = 0;
        *v22 = 3;
        *(v22 + 48) = *(v1 + 10);
        v22[16] = v124;
        v151 = v22;
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v22 + 3, v125[0], v125[1], v125[1] - v125[0]);
        std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(v23 + 6, v126[1], v127, v127 - v126[1]);
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v23 + 9, v128[0], v128[1], v128[1] - v128[0]);
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v24, v121, v122, v122 - v121);
        v26 = *(v1 + 28);
        if (v26 <= 0x61)
        {
          v23[128] = v26;
          v23[8] = 1;
        }

        v27 = *(v1 + 29);
        if (v27 <= 0x22)
        {
          v23[129] = v27;
          v23[9] = 1;
        }

        v28 = *(v1 + 18);
        if (v28 <= 0x502)
        {
          *(v23 + 65) = v28;
          v23[10] = 1;
        }

        v117 = v1;
        v29 = *(v1 + 38);
        if (*(v1 + 38))
        {
          v30 = 0;
          if (v29 >= 8)
          {
            v31 = 8;
          }

          else
          {
            v31 = v29;
          }

          do
          {
            __str[0] = 0;
            *&__str[2] = 0;
            v154[0] = 0;
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            v161 = 0;
            v32 = &v117[5 * v30 + 10];
            if (*(v32 + 4) <= 0x1F7u)
            {
              *&__str[2] = *(v32 + 4);
              if (*(v32 + 10) <= 0x61u)
              {
                BYTE2(v161) = *(v32 + 10);
                LOBYTE(v161) = 1;
              }

              if (*(v32 + 11) <= 0x22u)
              {
                HIBYTE(v161) = *(v32 + 11);
                BYTE1(v161) = 1;
              }

              __str[0] = ConvertIntValsToASN1T_CellGlobalIdEUTRA(v154, &v159 + 8, *v32, *(v32 + 1), v32[1], *(v32 + 6));
              v34 = *(v23 + 18);
              v33 = *(v23 + 19);
              if (v34 >= v33)
              {
                v37 = 0xEEEEEEEEEEEEEEEFLL * ((v34 - *v25) >> 3);
                v38 = v37 + 1;
                if (v37 + 1 > 0x222222222222222)
                {
                  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
                }

                v39 = 0xEEEEEEEEEEEEEEEFLL * ((v33 - *v25) >> 3);
                if (2 * v39 > v38)
                {
                  v38 = 2 * v39;
                }

                if (v39 >= 0x111111111111111)
                {
                  v40 = 0x222222222222222;
                }

                else
                {
                  v40 = v38;
                }

                v134 = v25;
                if (v40)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasResultEUTRA>>(v25, v40);
                }

                v41 = 120 * v37;
                v130 = 0;
                v131 = v41;
                v132 = v41;
                v133 = 0;
                *v41 = *__str;
                v42 = v154[0];
                *(v41 + 16) = 0;
                *(v41 + 8) = v42;
                *(v41 + 24) = 0;
                *(v41 + 32) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v41 + 16), v155, *(&v155 + 1), *(&v155 + 1) - v155);
                *(v41 + 40) = 0;
                *(v41 + 48) = 0;
                *(v41 + 56) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v41 + 40), *(&v156 + 1), v157, v157 - *(&v156 + 1));
                *(v41 + 64) = 0;
                *(v41 + 72) = 0;
                *(v41 + 80) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v41 + 64), v158, *(&v158 + 1), *(&v158 + 1) - v158);
                *(v41 + 88) = 0;
                *(v41 + 96) = 0;
                *(v41 + 104) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v41 + 88), *(&v159 + 1), v160, v160 - *(&v159 + 1));
                *(v41 + 112) = v161;
                v36 = v132 + 15;
                v132 += 15;
                v43 = *(v23 + 17);
                v44 = *(v23 + 18);
                v45 = v131 + v43 - v44;
                if (v43 != v44)
                {
                  v46 = v131 + v43 - v44;
                  v47 = *(v23 + 17);
                  do
                  {
                    *v46 = *v47;
                    v46[8] = *(v47 + 8);
                    *(v46 + 3) = 0;
                    *(v46 + 4) = 0;
                    *(v46 + 2) = 0;
                    *(v46 + 1) = *(v47 + 16);
                    *(v46 + 4) = *(v47 + 32);
                    *(v47 + 16) = 0;
                    *(v47 + 24) = 0;
                    *(v47 + 32) = 0;
                    *(v46 + 5) = 0;
                    *(v46 + 6) = 0;
                    *(v46 + 7) = 0;
                    *(v46 + 40) = *(v47 + 40);
                    *(v46 + 7) = *(v47 + 56);
                    *(v47 + 40) = 0;
                    *(v47 + 48) = 0;
                    *(v47 + 56) = 0;
                    *(v46 + 8) = 0;
                    *(v46 + 9) = 0;
                    *(v46 + 10) = 0;
                    *(v46 + 4) = *(v47 + 64);
                    *(v46 + 10) = *(v47 + 80);
                    *(v47 + 64) = 0;
                    *(v47 + 72) = 0;
                    *(v47 + 80) = 0;
                    *(v46 + 11) = 0;
                    *(v46 + 12) = 0;
                    *(v46 + 13) = 0;
                    *(v46 + 88) = *(v47 + 88);
                    *(v46 + 13) = *(v47 + 104);
                    *(v47 + 88) = 0;
                    *(v47 + 96) = 0;
                    *(v47 + 104) = 0;
                    *(v46 + 28) = *(v47 + 112);
                    v47 += 120;
                    v46 += 120;
                  }

                  while (v47 != v44);
                  do
                  {
                    std::allocator_traits<std::allocator<ASN1T_MeasResultEUTRA>>::destroy[abi:ne200100]<ASN1T_MeasResultEUTRA,0>(v43);
                    v43 += 120;
                  }

                  while (v43 != v44);
                  v43 = *v25;
                  v36 = v132;
                }

                *(v23 + 17) = v45;
                *(v23 + 18) = v36;
                v48 = *(v23 + 19);
                *(v23 + 19) = v133;
                v132 = v43;
                v133 = v48;
                v130 = v43;
                v131 = v43;
                std::__split_buffer<ASN1T_MeasResultEUTRA>::~__split_buffer(&v130);
              }

              else
              {
                *v34 = *__str;
                v35 = v154[0];
                *(v34 + 16) = 0;
                *(v34 + 8) = v35;
                *(v34 + 24) = 0;
                *(v34 + 32) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v34 + 16), v155, *(&v155 + 1), *(&v155 + 1) - v155);
                *(v34 + 40) = 0;
                *(v34 + 48) = 0;
                *(v34 + 56) = 0;
                std::vector<ASN1T_MCC_MNC_Digit>::__init_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>((v34 + 40), *(&v156 + 1), v157, v157 - *(&v156 + 1));
                *(v34 + 64) = 0;
                *(v34 + 72) = 0;
                *(v34 + 80) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v34 + 64), v158, *(&v158 + 1), *(&v158 + 1) - v158);
                *(v34 + 88) = 0;
                *(v34 + 96) = 0;
                *(v34 + 104) = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v34 + 88), *(&v159 + 1), v160, v160 - *(&v159 + 1));
                *(v34 + 112) = v161;
                v36 = (v34 + 120);
                *(v23 + 18) = v34 + 120;
              }

              *(v23 + 18) = v36;
              if (*(&v159 + 1))
              {
                *&v160 = *(&v159 + 1);
                operator delete(*(&v159 + 1));
              }
            }

            if (v158)
            {
              *(&v158 + 1) = v158;
              operator delete(v158);
            }

            if (*(&v156 + 1))
            {
              *&v157 = *(&v156 + 1);
              operator delete(*(&v156 + 1));
            }

            if (v155)
            {
              *(&v155 + 1) = v155;
              operator delete(v155);
            }

            ++v30;
          }

          while (v30 != v31);
        }

        v49 = 1;
        if (*(v23 + 17) != *(v23 + 18))
        {
          v23[11] = 1;
        }

        v1 = v117;
LABEL_142:
        if (v121)
        {
          v122 = v121;
          operator delete(v121);
        }

        if (v128[0])
        {
          v128[1] = v128[0];
          operator delete(v128[0]);
        }

        if (v126[1])
        {
          *&v127 = v126[1];
          operator delete(v126[1]);
        }

        if (v125[0])
        {
          v125[1] = v125[0];
          operator delete(v125[0]);
        }

        if (v49)
        {
          goto LABEL_201;
        }

        goto LABEL_151;
      }

      v151 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v81 = mach_continuous_time();
        v82 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo Ver2\n", (*&g_MacClockTicksToMsRelation * v81), "SPL", 69, "FillLocationIDInfo", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v82, 0, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v79 = mach_continuous_time();
      v80 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConvertIntValsToASN1T_CellGlobalIdEUTRA function returned error\n", (*&g_MacClockTicksToMsRelation * v79), "SPL", 69, "FillLocationIDInfo", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v80, 0, 1);
    }

    v49 = 0;
    goto LABEL_142;
  }

  v19 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "GN_SUPL_Mobile_Info_Ind_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
    return 0;
  }

  return v19;
}

void sub_299627BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  gnss::Emergency::Supl::LocationId::~LocationId(&a24);
  ASN1T_CellInfo::~ASN1T_CellInfo(&a39);
  _Unwind_Resume(a1);
}

BOOL GN_SUPL_AidRequest_In(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v87 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_AidRequest_In(a1, a2, a3);
  v6 = SUPL_Message_Init();
  if (v6)
  {
    *&v85[5] = 0;
    *&v85[2] = 0;
    if (!v3)
    {
      v75 = 0;
      v76 = 0;
      v78 = 0;
      v79 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v77 = 0;
      v74 = 0;
      v73 = 0;
      v10 = -254;
      goto LABEL_51;
    }

    v8 = *(v3 + 8);
    v7 = *(v3 + 12);
    if (v8 == 2)
    {
      v9 = -255;
    }

    else
    {
      v9 = -254;
    }

    if (v8 == 1)
    {
      v10 = -256;
    }

    else
    {
      v10 = v9;
    }

    if (v7 > 3)
    {
      if (v7 > 15)
      {
        if (v7 == 16)
        {
          v77 = 0;
          v78 = 0;
          v76 = 0;
          v10 &= 0x903u;
          if (*(v3 + 16) == 2)
          {
            v24 = *(v3 + 20) | 0x800000;
          }

          else
          {
            v24 = *(v3 + 20);
          }

          v17 = *(v3 + 24);
          if (*(v3 + 36) == 2)
          {
            v16 = *(v3 + 28) | 0x8000;
          }

          else
          {
            v16 = *(v3 + 28);
          }

          v13 = *(v3 + 40);
          v15 = *(v3 + 30);
          v14 = *(v3 + 31);
          v25 = *(v3 + 41);
          if (v25 == 255)
          {
            LOBYTE(v25) = 0;
          }

          LODWORD(v79) = v24;
          BYTE4(v79) = v25;
          goto LABEL_50;
        }

        if (v7 == 32)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (v7 == 4)
        {
          v79 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v10 &= 0x303u;
          if (*(v3 + 16) == 2)
          {
            v22 = *(v3 + 20) | 0x800000;
          }

          else
          {
            v22 = *(v3 + 20);
          }

          LODWORD(v76) = v22;
          HIDWORD(v76) = *(v3 + 24);
          LODWORD(v77) = *(v3 + 30);
          HIDWORD(v77) = *(v3 + 31);
          if (*(v3 + 41) == 255)
          {
            v23 = 0;
          }

          else
          {
            v23 = *(v3 + 41);
          }

          LOBYTE(v78) = *(v3 + 32);
          BYTE4(v78) = v23;
          goto LABEL_50;
        }

        if (v7 == 8)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }
      }

LABEL_29:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape,%u\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "GN_SUPL_AidRequest_In", 515, *(v3 + 12));
        LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
      }

      return v6 != 0;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
LABEL_48:
          bzero(__str, 0x410uLL);
          v26 = mach_continuous_time();
          v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape,%u\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 69, "GN_SUPL_AidRequest_In", 770, *(v3 + 12));
          LbsOsaTrace_WriteLog(0x12u, __str, v27, 0, 1);
        }

LABEL_49:
        v78 = 0;
        v79 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v76 = 0;
        v77 = 0;
LABEL_50:
        v73 = *(v3 + 54);
        v74 = *(v3 + 52);
        LOBYTE(v75) = *(v3 + 62);
        WORD2(v75) = *(v3 + 64);
        LODWORD(v3) = *(v3 + 68);
LABEL_51:
        v6[16] = 4;
        *(v6 + 5) = a1;
        v28 = operator new(0x10uLL, MEMORY[0x29EDC9418]);
        if (!v28)
        {
          *(v6 + 15) = 0;
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v34 = mach_continuous_time();
            v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AID Req\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "GN_SUPL_AidRequest_In", 1537);
            LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
          }

          goto LABEL_125;
        }

        v29 = v28;
        v72 = v3;
        *v28 = 0;
        v28[1] = 0;
        *(v6 + 15) = v28;
        LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v80, 937, "ConvertAidReq");
        if (a2)
        {
          v30 = *(a2 + 8);
          if (v30)
          {
            v31 = 0;
            v81 = 0;
            *v82 = 0u;
            v83 = 0u;
            memset(__p, 0, 25);
            v32 = *v30;
            if (v32 == 1)
            {
              v31 = 32;
              LODWORD(v82[0]) = 32;
            }

            v33 = v30[1];
            if (v33 == 1)
            {
              v31 |= 0x10u;
              LODWORD(v82[0]) = v31;
            }

            if (v30[2] == 1)
            {
              v31 |= 4u;
              LODWORD(v82[0]) = v31;
            }

            else if ((v32 & 1) == 0 && !v33)
            {
              goto LABEL_70;
            }

            v81 = 1;
LABEL_70:
            if (v30[3] == 1)
            {
              v41 = *(a2 + 16);
              if (v41)
              {
                if (*v41 == 1)
                {
                  if (*(v41 + 4) == 1)
                  {
                    v31 |= 2u;
                    LODWORD(v82[0]) = v31;
                  }

                  if (*(v41 + 5) == 1)
                  {
                    v31 |= 0x80u;
                    LODWORD(v82[0]) = v31;
                  }

                  if (*(v41 + 6) == 1)
                  {
                    v31 |= 1u;
                    LODWORD(v82[0]) = v31;
                  }

                  if (*(v41 + 7) == 1)
                  {
                    v31 |= 8u;
                    LODWORD(v82[0]) = v31;
                  }

                  if (*(v41 + 8) == 1)
                  {
                    LODWORD(v82[0]) = v31 | 0x40;
                  }

                  if (*(v41 + 16) - 1 <= 0x3FE)
                  {
                    WORD2(v82[0]) = *(v41 + 16);
                  }

                  if (*(v41 + 18) - 1 <= 0xA6)
                  {
                    BYTE6(v82[0]) = *(v41 + 18);
                  }

                  if (*(v41 + 19) - 1 <= 9)
                  {
                    LOBYTE(__p[3]) = *(v41 + 19);
                  }

                  if (*(v41 + 20))
                  {
                    if (*(v41 + 20) >= 0x21u)
                    {
                      v70 = v16;
                      v71 = 0;
                      v46 = 0;
                      v47 = 32;
                      HIBYTE(v82[0]) = 32;
                      v68 = v10;
                      v69 = v13;
                      v67 = v17;
                      do
                      {
                        v48 = *(a2 + 16);
                        if (*(v48 + v46 + 21) <= 0x3Fu && *(v48 + 2 * v46 + 86) <= 0xFFu)
                        {
                          std::vector<unsigned char>::push_back[abi:ne200100](&v82[1], (v48 + v46 + 21));
                          v49 = __p[1];
                          if (__p[1] >= __p[2])
                          {
                            v51 = __p[0];
                            v52 = (__p[1] - __p[0]);
                            v53 = __p[1] - __p[0] + 1;
                            if (v53 < 0)
                            {
                              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                            }

                            v54 = __p[2] - __p[0];
                            if (2 * (__p[2] - __p[0]) > v53)
                            {
                              v53 = 2 * v54;
                            }

                            if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
                            {
                              v55 = 0x7FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v55 = v53;
                            }

                            if (v55)
                            {
                              operator new();
                            }

                            v56 = __p[1] - __p[0];
                            *v52 = *(*(a2 + 16) + 2 * v46 + 86);
                            v50 = v52 + 1;
                            memcpy(0, v51, v56);
                            __p[0] = 0;
                            __p[1] = v52 + 1;
                            __p[2] = 0;
                            if (v51)
                            {
                              operator delete(v51);
                            }

                            v10 = v68;
                            v13 = v69;
                            v17 = v67;
                          }

                          else
                          {
                            *__p[1] = *(*(a2 + 16) + 2 * v46 + 86);
                            v50 = v49 + 1;
                          }

                          __p[1] = v50;
                          v16 = v70;
                          ++v71;
                          v47 = HIBYTE(v82[0]);
                        }

                        ++v46;
                      }

                      while (v46 < v47);
                    }

                    else
                    {
                      v71 = 0;
                    }

                    HIBYTE(v82[0]) = v71;
                  }

                  v81 = 1;
                }
              }

              else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v44 = mach_continuous_time();
                v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Assistance\n", (*&g_MacClockTicksToMsRelation * v44), "SPL", 87, "ConvertAidReq", 770);
                LbsOsaTrace_WriteLog(0x12u, __str, v45, 2, 1);
              }
            }

            else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v42 = mach_continuous_time();
              v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AGPS Assistance not requested\n", (*&g_MacClockTicksToMsRelation * v42), "SPL", 87, "ConvertAidReq", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v43, 2, 1);
            }

            v57 = operator new(0x48uLL, MEMORY[0x29EDC9418]);
            v40 = v57;
            if (v57)
            {
              *(v57 + 64) = 0;
              *(v57 + 2) = 0u;
              *(v57 + 3) = 0u;
              *(v57 + 1) = 0u;
              *v57 = v81;
              v58 = v82[1];
              v57[1] = v82[0];
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v57 + 2, v58, v83, v83 - v58);
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v40 + 5, __p[0], __p[1], __p[1] - __p[0]);
              *(v40 + 64) = __p[3];
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v82[1])
            {
              *&v83 = v82[1];
              operator delete(v82[1]);
            }

            goto LABEL_122;
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v38 = mach_continuous_time();
            v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Asst Req\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 87, "ConvertAidReq", 770);
            LbsOsaTrace_WriteLog(0x12u, __str, v39, 2, 1);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v36 = mach_continuous_time();
          v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "ConvertAidReq", 513);
          LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
        }

        v40 = 0;
LABEL_122:
        LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v80);
        *v29 = v40;
        v59 = operator new(0xE8uLL, MEMORY[0x29EDC9418]);
        if (v59)
        {
          v60 = v59;
          *(v59 + 112) = 0;
          v61 = v59 + 224;
          v62 = v17;
          *(v59 + 57) = 0;
          v63 = v59 + 228;
          *(v59 + 25) = 0;
          *(v59 + 26) = 0;
          *(v59 + 215) = 0;
          *(v59 + 24) = 0;
          v29[1] = v59;
          *v59 = v10;
          *(v59 + 2) = 0;
          *(v59 + 6) = 0;
          *(v59 + 4) = 0;
          *(v59 + 10) = 0;
          *(v59 + 6) = 0;
          *(v59 + 14) = 0;
          *(v59 + 8) = v76;
          *(v59 + 18) = 0;
          *(v59 + 10) = HIDWORD(v76);
          *(v59 + 22) = 0;
          *(v59 + 12) = v77;
          *(v59 + 26) = 0;
          *(v59 + 14) = HIDWORD(v77);
          *(v59 + 30) = 0;
          v59[64] = v78;
          v59[65] = BYTE4(v78);
          *(v59 + 17) = v79;
          *(v59 + 36) = 0;
          *(v59 + 19) = v62;
          *(v59 + 40) = 0;
          *(v59 + 21) = v16;
          *(v59 + 44) = 0;
          *(v59 + 23) = v15;
          *(v59 + 48) = 0;
          *(v59 + 25) = v14;
          *(v59 + 52) = 0;
          *(v59 + 27) = v13;
          *(v59 + 56) = 0;
          v59[116] = 0;
          v59[117] = BYTE4(v79);
          *(v59 + 30) = 0;
          *(v59 + 62) = 0;
          *(v59 + 32) = 0;
          *(v59 + 66) = 0;
          *(v59 + 34) = 0;
          *(v59 + 70) = 0;
          *(v59 + 142) = *v85;
          v59[150] = v85[8];
          *(v59 + 38) = 0;
          *(v59 + 78) = 0;
          *(v59 + 40) = 0;
          *(v59 + 82) = 0;
          *(v59 + 42) = 0;
          *(v59 + 86) = 0;
          *(v59 + 44) = 0;
          *(v59 + 90) = 0;
          *(v59 + 46) = 0;
          *(v59 + 94) = 0;
          std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>(v59 + 24, 0, 0, 0);
          *(v60 + 108) = v74;
          *(v60 + 218) = vuzp1_s8(v73, v73).u32[0];
          v60[222] = v75;
          *v61 = WORD2(v75);
          *v63 = v72;
        }

        else
        {
          v29[1] = 0;
        }

LABEL_125:
        v64 = qword_2A14BEA08;
        v65 = (qword_2A14BEA08 + 8);
        if (!qword_2A14BEA08)
        {
          v65 = &SUPL_Queue;
        }

        *v65 = v6;
        qword_2A14BEA08 = v6;
        *v6 = v64;
        *(v6 + 1) = 0;
        return v6 != 0;
      }

      if (v7 == 2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      goto LABEL_29;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Shape is not set\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "GN_SUPL_AidRequest_In", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "GN_SUPL_AidRequest_In", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
  }

  return v6 != 0;
}

void sub_299628AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(va);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(&a27);
  _Unwind_Resume(a1);
}

uint64_t GN_SUPL_PPDU_Delivery_In(int a1, unsigned int a2, char *a3, int a4, int a5, int a6, BOOL a7)
{
  v63 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_PPDU_Delivery_In(a1, a2, a3, a4, a5, a6, a7);
  if (a4 == 1)
  {
    __p = 0;
    v58 = 0;
    v60 = 0;
    v59 = 0;
    BYTE4(v56) = a6 != 2;
    if (a3)
    {
      LODWORD(v56) = a1;
      v60 = a7;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a3, &a3[a2], a2);
    }

    else
    {
      BYTE4(v56) = 1;
      LODWORD(v56) = a1;
      v60 = a7;
    }

    v27 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v27)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v36 = mach_continuous_time();
        v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LPP Caps Rsp\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "SUPL_Handle_LPP_Cap_Rsp_Cb", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
      }

      goto LABEL_32;
    }

    v28 = v27;
    *v27 = 0;
    v27[4] = 1;
    *(v27 + 1) = 0;
    v29 = (v27 + 8);
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    v27[32] = 0;
    v30 = SUPL_Message_Init();
    if (!v30)
    {
      MEMORY[0x29C29EB20](v28, 0x1010C40D464F2E8);
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v42 = mach_continuous_time();
        v43 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v42), "SPL", 69, "SUPL_Handle_LPP_Cap_Rsp_Cb", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v43, 0, 1);
      }

      goto LABEL_32;
    }

    v26 = v30;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v29, __p, v58, v58 - __p);
    *v28 = v56;
    v28[4] = BYTE4(v56);
    *(v26 + 16) = 10;
    *(v26 + 104) = v28;
    goto LABEL_29;
  }

  if (a4 == 2)
  {
    __p = 0;
    v58 = 0;
    v59 = 0;
    v60 = a6 != 2;
    if (a3)
    {
      LODWORD(v56) = a1;
      v61 = a7;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a3, &a3[a2], a2);
    }

    else
    {
      v60 = 1;
      LODWORD(v56) = a1;
      v61 = a7;
    }

    v22 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v22)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v34 = mach_continuous_time();
        v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v34), "SPL", 69, "SUPL_Handle_LPP_Ad_Rsp_Cb", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v35, 0, 1);
      }

      goto LABEL_32;
    }

    v23 = v22;
    *v22 = 0;
    v22[1] = 0;
    v24 = v22 + 1;
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 16) = 1;
    v25 = SUPL_Message_Init();
    if (!v25)
    {
      MEMORY[0x29C29EB20](v23, 0x1010C4039DDA56CLL);
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v40 = mach_continuous_time();
        v41 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v40), "SPL", 69, "SUPL_Handle_LPP_Ad_Rsp_Cb", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v41, 0, 1);
      }

      goto LABEL_32;
    }

    v26 = v25;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v24, __p, v58, v58 - __p);
    *v23 = v56;
    *(v23 + 32) = v60;
    *(v26 + 16) = 8;
    *(v26 + 88) = v23;
LABEL_29:
    v31 = qword_2A14BEA08;
    v32 = (qword_2A14BEA08 + 8);
    if (!qword_2A14BEA08)
    {
      v32 = &SUPL_Queue;
    }

    *v32 = v26;
    qword_2A14BEA08 = v26;
    *v26 = v31;
    *(v26 + 8) = 0;
LABEL_32:
    v33 = __p;
    if (!__p)
    {
      return 1;
    }

    v58 = __p;
LABEL_34:
    operator delete(v33);
    return 1;
  }

  if (a4 != 3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU ContentType Unknown\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 87, "GN_SUPL_PPDU_Delivery_In", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 2, 1);
    return 0;
  }

  if (a5 == 3)
  {
    v56 = 0;
    __p = 0;
    v58 = 0;
    LOBYTE(v59) = a6 != 2;
    if (a3)
    {
      HIDWORD(v59) = a1;
      v60 = a7;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v56, a3, &a3[a2], a2);
    }

    else
    {
      LOBYTE(v59) = 1;
      HIDWORD(v59) = a1;
      v60 = a7;
    }

    v46 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (v46)
    {
      v47 = v46;
      *v46 = 0;
      v46[1] = 0;
      v46[2] = 0;
      *(v46 + 24) = v59;
      *(v46 + 7) = HIDWORD(v59);
      *(v46 + 32) = v60;
      v48 = SUPL_Message_Init();
      if (v48)
      {
        v49 = v48;
        if (v56 != __p)
        {
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v47, v56, __p, __p - v56);
        }

        *(v49 + 16) = 9;
        *(v49 + 96) = v47;
        v50 = qword_2A14BEA08;
        v51 = (qword_2A14BEA08 + 8);
        if (!qword_2A14BEA08)
        {
          v51 = &SUPL_Queue;
        }

        *v51 = v49;
        qword_2A14BEA08 = v49;
        *v49 = v50;
        *(v49 + 8) = 0;
      }

      else
      {
        MEMORY[0x29C29EB20](v47, 0x1010C4005AEBDE9);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL POS Ind\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 69, "SUPL_Handle_LPP_Pos_Cb", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v53, 0, 1);
    }

    v33 = v56;
    if (!v56)
    {
      return 1;
    }

    __p = v56;
    goto LABEL_34;
  }

  if (a5 != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PduType,%u\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 69, "GN_SUPL_PPDU_Delivery_In", 770, a5);
      LbsOsaTrace_WriteLog(0x12u, __str, v39, 0, 1);
    }

    return 1;
  }

  v14 = SUPL_Message_Init();
  if (v14)
  {
    v15 = v14;
    v14[16] = 5;
    *(v14 + 5) = a1;
    v16 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (v16)
    {
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v15[14] = v16;
      *(v16 + 6) = 3;
      *(v16 + 7) = a6;
      *(v16 + 32) = a7;
      if (a2 && a3)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v16, a3, &a3[a2], a2);
      }

      v17 = qword_2A14BEA08;
      v18 = (qword_2A14BEA08 + 8);
      if (!qword_2A14BEA08)
      {
        v18 = &SUPL_Queue;
      }

      *v18 = v15;
      qword_2A14BEA08 = v15;
      *v15 = v17;
      v15[1] = 0;
      return 1;
    }

    v15[14] = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v54 = mach_continuous_time();
      v55 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PPDU Rsp\n", (*&g_MacClockTicksToMsRelation * v54), "SPL", 69, "GN_SUPL_PPDU_Delivery_In", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v55, 0, 1);
    }

    SUPL_Message_Free(v15);
    return 0;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v44 = mach_continuous_time();
    v45 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL msg\n", (*&g_MacClockTicksToMsRelation * v44), "SPL", 69, "GN_SUPL_PPDU_Delivery_In", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v45, 0, 1);
    return 0;
  }

  return result;
}

void sub_29962943C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GN_SUPL_PPDU_SessionEnd_In()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PPDU Session Ended\n", (*&g_MacClockTicksToMsRelation * v0), "SPL", 73, "GN_SUPL_PPDU_SessionEnd_In");
    LbsOsaTrace_WriteLog(0x12u, __str, v1, 4, 1);
  }

  return 1;
}

uint64_t *std::vector<ASN1T_CellMeasuredResults>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v11 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 3);
    if (v11 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v13;
    }

    v34 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_CellMeasuredResults>>(a1, v14);
    }

    v15 = 72 * v11;
    v31 = 0;
    v32 = v15;
    v33 = 72 * v11;
    *v15 = *a2;
    *(v15 + 8) = *(a2 + 8);
    v16 = *(a2 + 16);
    *(v15 + 24) = *(a2 + 24);
    *(v15 + 16) = v16;
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    *(v15 + 48) = 0;
    v19 = (72 * v11 + 48);
    *(v19 - 8) = v18;
    *(v19 - 2) = v17;
    v19[1] = 0;
    v19[2] = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v19, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    *&v33 = v33 + 72;
    v21 = *a1;
    v20 = a1[1];
    v37[0] = a1;
    v37[1] = &v35;
    v37[2] = &v36;
    v22 = v32 + v21 - v20;
    v35 = v22;
    v36 = v22;
    if (v21 == v20)
    {
      v38 = 1;
    }

    else
    {
      v23 = v32 + v21 - v20;
      v24 = v21;
      do
      {
        *v23 = *v24;
        *(v23 + 8) = *(v24 + 8);
        v25 = *(v24 + 16);
        *(v23 + 24) = *(v24 + 24);
        *(v23 + 16) = v25;
        v26 = *(v24 + 32);
        *(v23 + 40) = *(v24 + 40);
        *(v23 + 32) = v26;
        *(v23 + 56) = 0;
        *(v23 + 64) = 0;
        *(v23 + 48) = 0;
        *(v23 + 48) = *(v24 + 48);
        *(v23 + 64) = *(v24 + 64);
        *(v24 + 48) = 0;
        *(v24 + 56) = 0;
        *(v24 + 64) = 0;
        v24 += 72;
        v23 += 72;
      }

      while (v24 != v20);
      v36 = v23;
      v38 = 1;
      do
      {
        v27 = *(v21 + 48);
        if (v27)
        {
          *(v21 + 56) = v27;
          operator delete(v27);
        }

        v21 += 72;
      }

      while (v21 != v20);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_CellMeasuredResults>,ASN1T_CellMeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v37);
    v28 = *a1;
    *a1 = v22;
    v29 = a1[2];
    v30 = v33;
    *(a1 + 1) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    result = std::__split_buffer<ASN1T_CellMeasuredResults>::~__split_buffer(&v31);
    v10 = v30;
  }

  else
  {
    *v5 = *a2;
    *(v5 + 8) = *(a2 + 8);
    v6 = *(a2 + 16);
    *(v5 + 24) = *(a2 + 24);
    *(v5 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    *(v5 + 48) = 0;
    *(v5 + 40) = v8;
    *(v5 + 32) = v7;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v5 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    v10 = v5 + 72;
    a1[1] = v5 + 72;
  }

  a1[1] = v10;
  return result;
}

void sub_2996297FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__split_buffer<ASN1T_CellMeasuredResults>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ASN1T_MeasuredResults>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v27 = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ASN1T_MeasuredResults>>(a1, v12);
    }

    v13 = 40 * v9;
    v24 = 0;
    v25 = v13;
    v26 = 40 * v9;
    v14 = *a2;
    *(v13 + 7) = *(a2 + 7);
    *v13 = v14;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 16) = 0;
    std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>((40 * v9 + 16), a2[2], a2[3], 0x8E38E38E38E38E39 * ((a2[3] - a2[2]) >> 3));
    *&v26 = v26 + 40;
    v16 = *a1;
    v15 = a1[1];
    v31[0] = a1;
    v31[1] = &v28;
    v31[2] = &v29;
    v17 = (v25 + v16 - v15);
    v28 = v17;
    v29 = v17;
    if (v16 == v15)
    {
      v32 = 1;
    }

    else
    {
      v18 = v16;
      v19 = (v25 + v16 - v15);
      do
      {
        v20 = *v18;
        *(v19 + 7) = *(v18 + 7);
        *v19 = v20;
        v19[3] = 0;
        v19[4] = 0;
        v19[2] = 0;
        *(v19 + 1) = *(v18 + 1);
        v19[4] = v18[4];
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = 0;
        v18 += 5;
        v19 += 5;
      }

      while (v18 != v15);
      v29 = v19;
      v32 = 1;
      do
      {
        v30 = (v16 + 2);
        std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](&v30);
        v16 += 5;
      }

      while (v16 != v15);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASN1T_MeasuredResults>,ASN1T_MeasuredResults*>>::~__exception_guard_exceptions[abi:ne200100](v31);
    v21 = *a1;
    *a1 = v17;
    v22 = a1[2];
    v23 = v26;
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    result = std::__split_buffer<ASN1T_MeasuredResults>::~__split_buffer(&v24);
    v8 = v23;
  }

  else
  {
    v6 = *a2;
    *(v5 + 7) = *(a2 + 7);
    *v5 = v6;
    v5[3] = 0;
    v5[4] = 0;
    v5[2] = 0;
    result = std::vector<ASN1T_CellMeasuredResults>::__init_with_size[abi:ne200100]<ASN1T_CellMeasuredResults*,ASN1T_CellMeasuredResults*>(v5 + 2, a2[2], a2[3], 0x8E38E38E38E38E39 * ((a2[3] - a2[2]) >> 3));
    v8 = v5 + 5;
    a1[1] = v5 + 5;
  }

  a1[1] = v8;
  return result;
}

void sub_299629A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ASN1T_MeasuredResults>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ConvertIntValsToASN1T_CellGlobalIdEUTRA(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v8 = a4;
  v9 = a3;
  v30 = *MEMORY[0x29EDCA608];
  if (a3 > 0x3E7 || a4 > 0x3E7 || a5 >> 28)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either MCC %d, MNC %d, CID %d, TAC %d is not in range\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ConvertIntValsToASN1T_CellGlobalIdEUTRA", 514, v9, v8, a5, a6);
      LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
      return 0;
    }
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = (a1 + 56);
    v14 = *(a1 + 64) - v12;
    if (v14 > 3)
    {
      if (v14 != 4)
      {
        *(a1 + 64) = v12 + 4;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 56), 4 - v14);
      v12 = *v13;
    }

    v19 = 0;
    *v12 = a5 >> 20;
    *(*(a1 + 56) + 1) = a5 >> 12;
    *(*(a1 + 56) + 2) = a5 >> 4;
    *(*(a1 + 56) + 3) = 16 * a5;
    *(*(a1 + 56) + 3) >>= 4;
    do
    {
      do
      {
        v20 = v19;
        v21 = v9;
        v22 = v9;
        LOWORD(v9) = v9 / 0xAu;
        __str[0] = v21 - 10 * v9;
        std::vector<ASN1T_MCC_MNC_Digit>::insert((a1 + 8), *(a1 + 8), __str);
        v19 = v20 + 1;
      }

      while (v22 > 9);
    }

    while (v20 < 2);
    v23 = 0;
    do
    {
      do
      {
        v24 = v8;
        v25 = v23;
        v26 = v8;
        LOWORD(v8) = v8 / 0xAu;
        __str[0] = v24 - 10 * v8;
        std::vector<ASN1T_MCC_MNC_Digit>::insert((a1 + 32), *(a1 + 32), __str);
        v23 = v25 - 1;
      }

      while (v26 > 9);
    }

    while (!v25);
    *a1 = 1;
    v27 = *a2;
    v28 = *(a2 + 8) - *a2;
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        *(a2 + 8) = v27 + 2;
      }
    }

    else
    {
      std::vector<unsigned char>::__append(a2, 2 - v28);
      v27 = *a2;
    }

    *v27 = BYTE1(a6);
    *(*a2 + 1) = a6;
    return 1;
  }

  return result;
}

BOOL GN_SUPL_DecodeSuplInit_In(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PDU_Size,%u,Handle,%u\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 73, "GN_SUPL_DecodeSuplInit_In", a3, a1);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v10, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT PDU is NULL\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
    }

    return 0;
  }

  if (!a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT Length is 0\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v21, 0, 1);
    }

    return 0;
  }

  if (!a4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Decoded SUPL INIT mesage is NULL\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    }

    return 0;
  }

  Instance = LcsUtils::GetInstance(IsLoggingAllowed);
  LcsUtils::TraceBuffer(Instance, a2, a3);
  __p = 0;
  v26 = 0;
  v27 = 0;
  v12 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, a2, &a2[a3], a3);
  v13 = SuplUtils::GetInstance(v12);
  v14 = SuplUtils::DecodeSUPL_INIT(v13, a1, &__p, a4);
  v15 = v14 == 0;
  if (v14)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL INIT Decode failed\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "GN_SUPL_DecodeSuplInit_In", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
    }
  }

  else
  {
    Trace_GN_SUPL_SuplInitInfo(a4);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v15;
}

void sub_29962A0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(LcsFunctionEntryExitTrace *this, int a2, const char *__s)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v5;
  if (v5)
  {
    memmove(this, __s, v5);
  }

  *(this + v6) = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s:Enter\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 68, "LcsFunctionEntryExitTrace", __s);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 5, 1);
  }
}

void sub_29962A294(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(void **this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = this;
    if (*(this + 23) < 0)
    {
      v3 = *this;
    }

    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s:Exit\n", v2, "SPL", 68, "~LcsFunctionEntryExitTrace", v3);
    LbsOsaTrace_WriteLog(0x12u, __str, v4, 5, 1);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_29962A3B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void **std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<UtaLcsShapePoint>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<UtaLcsShapePoint>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<UtaLcsShapePoint>>(a1, a2);
  }

  std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<UtaLcsShapePoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ASN1T_MeasResultEUTRA::~ASN1T_MeasResultEUTRA(ASN1T_MeasResultEUTRA *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

void std::vector<ASN1T_MCC_MNC_Digit>::insert(char **a1, char *__src, char *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = v6 - *a1 + 1;
    if (v11 < 0)
    {
      std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = (__src - v10);
    if (__src == v10)
    {
      operator new();
    }

    *v14 = *a3;
    memcpy(v14 + 1, __src, a1[1] - __src);
    v17 = *a1;
    v18 = &v14[a1[1] - __src + 1];
    a1[1] = __src;
    v19 = &v14[v17 - __src];
    memcpy(v19, v17, __src - v17);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v18;
    a1[2] = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 1);
    }

    else
    {
      v9 = 0;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
      v9 = a1[1];
    }

    v16 = __src <= a3 && v9 > a3;
    *__src = a3[v16];
  }
}

void sub_29962A8F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ASN1T_CellMeasuredResults>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 72;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<ASN1T_MeasuredResults>::~__split_buffer(uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v5[0] = (i - 24);
    std::vector<ASN1T_CellMeasuredResults>::__destroy_vector::operator()[abi:ne200100](v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<ASN1T_MeasResultEUTRA>>::destroy[abi:ne200100]<ASN1T_MeasResultEUTRA,0>(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<ASN1T_MeasResultEUTRA>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    std::allocator_traits<std::allocator<ASN1T_MeasResultEUTRA>>::destroy[abi:ne200100]<ASN1T_MeasResultEUTRA,0>((i - 120));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void NK_SV_Res_RTests(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x29EDCA608];
  if (*(a2 + 233))
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v65 = (a3 + 13963);
  v64 = (a3 + 8387);
  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v10 = 4832;
  v61 = (a3 + 2960);
  v62 = a3 + 4832;
  v11 = 3304;
  do
  {
    v70[v6] = 16711680;
    *&v69[4 * v6 + 192] = 16711680;
    *&v69[4 * v6] = 16711680;
    if (*(a3 + v6 + 2960) == 1)
    {
      *(&v71 + v6) = 1;
      v12 = *(a3 + v10);
      v13 = v12;
      if (v12 < 0)
      {
        v13 = -v13;
      }

      v70[v6] = v13;
      v14 = v12 * v12;
      v15 = *(a3 + v10 + 2400);
      v16 = v14 / v15;
      if (v14 / v15 >= 16711680.0)
      {
        v17 = 0;
      }

      else
      {
        *&v69[4 * v6 + 192] = v16;
        v17 = v16 < 9;
      }

      v18 = v14 / (v15 - *(a3 + v11));
      if (v18 >= 16711680.0)
      {
        v19 = 0;
      }

      else
      {
        *&v69[4 * v6] = v18;
        v19 = v18 < 9;
      }

      if (*(a3 + v6 + 49) == 1)
      {
        if (v13 < 0x3E8)
        {
          ++v9;
        }

        if (v13 <= 0xBB7)
        {
          v8 += v17;
          v7 += v19;
        }
      }
    }

    ++v6;
    v11 += 24;
    v10 += 8;
  }

  while (v6 != 48);
  if (v9 <= 0)
  {
    v38 = 0;
    v39 = vdupq_n_s32(0xC0000001);
    v40.i64[0] = 0xC0000000C0000000;
    v40.i64[1] = 0xC0000000C0000000;
    v41 = v70;
    v42.i64[0] = 0xC0000000C0000000;
    v42.i64[1] = 0xC0000000C0000000;
    v43.i64[0] = 0xC0000000C0000000;
    v43.i64[1] = 0xC0000000C0000000;
    v44.i64[0] = 0xC0000000C0000000;
    v44.i64[1] = 0xC0000000C0000000;
    v45 = v39;
    v46 = v39;
    v47 = v39;
    do
    {
      v48 = *(&v71 + v38);
      v49 = v41[1];
      v51 = v41[2];
      v50 = v41[3];
      v52 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v48.i8, *v39.i8)), 0x1FuLL));
      v45 = vbslq_s8(v52, vmaxq_s32(v49, v45), v45);
      v53 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v48.i8, *v39.i8)), 0x1FuLL));
      v39 = vbslq_s8(v53, vmaxq_s32(*v41, v39), v39);
      v48.i64[0] = vextq_s8(v48, v48, 8uLL).u64[0];
      v54 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v48.i8, *v39.i8)), 0x1FuLL));
      v47 = vbslq_s8(v54, vmaxq_s32(v50, v47), v47);
      v55 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v48.i8, *v39.i8)), 0x1FuLL));
      v46 = vbslq_s8(v55, vmaxq_s32(v51, v46), v46);
      v42 = vbslq_s8(v52, vminq_s32(v49, v42), v42);
      v40 = vbslq_s8(v53, vminq_s32(*v41, v40), v40);
      v44 = vbslq_s8(v54, vminq_s32(v50, v44), v44);
      v43 = vbslq_s8(v55, vminq_s32(v51, v43), v43);
      v38 += 16;
      v41 += 4;
    }

    while (v38 != 48);
    if (vmaxvq_s32(vmaxq_s32(vmaxq_s32(v39, v46), vmaxq_s32(v45, v47))) - vminvq_s32(vminq_s32(vminq_s32(v40, v43), vminq_s32(v42, v44))) > 250000)
    {
LABEL_48:
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      if (*(&v71 + v20) == 1)
      {
        v22 = v70[v20];
        v23 = v9 <= 2 || v22 <= 50000;
        v24 = !v23;
        if (v22 > 250000 || v24 || v9 >= 4 && (v22 > 30000 || v9 != 4 && (v22 > 20000 || v9 >= 6 && (v9 != 6 ? (v25 = v22 <= 10000) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v22 > 15000 || v26))))
        {
          ++v21;
          *(&v71 + v20) = 0;
        }
      }

      ++v20;
    }

    while (v20 != 48);
    if (v21 >= 1 && v9 < v21 + 3)
    {
      goto LABEL_48;
    }
  }

  v66 = v7;
  v63 = v8;
  if (v8 < 7)
  {
    if (v8 != 6 || *(a3 + 12) < 9)
    {
      goto LABEL_66;
    }

    goto LABEL_54;
  }

  if (*(a3 + 12) > 7)
  {
LABEL_54:
    for (i = 0; i != 48; ++i)
    {
      if (*(&v71 + i) == 1)
      {
        v28 = *&v69[4 * i + 192];
        v29 = *&v69[4 * i];
        if (v28 > 80 || v29 > 255)
        {
LABEL_64:
          *(&v71 + i) = 0;
          EvCrt_v("Reasonable fail Ch%d %d %d", i, v28, v29);
          continue;
        }

        if (v66 < 5 || v28 < 36)
        {
          if (v28 < 16)
          {
            continue;
          }
        }

        else if ((*(a3 + 1026 + i) & 1) == 0)
        {
          goto LABEL_64;
        }

        if (*(a1 + 700 + i - 96) - 1 <= *(a1 + 700 + i))
        {
          goto LABEL_64;
        }
      }
    }
  }

LABEL_66:
  v30 = 0;
  v31 = 0;
  v32 = (a3 + 8536);
  v33 = (a3 + 14112);
  v34 = a2 + 6696;
  v35 = a4 + 416;
  do
  {
    if (*(a3 + v31 + 2960) == 1 && (*(&v71 + v31) & 1) == 0)
    {
      *(a3 + v31 + 2960) = 0;
      *(a3 + 4 * v31 + 3056) = 15;
      --*(a3 + 2811);
      ++*(a3 + 2812);
      if (*(v32 + v31) == 1)
      {
        *(v32 + v31) = 0;
        *(a3 + v30 + 8632) = 15;
        --*v64;
        ++v64[1];
      }

      if (*(v33 + v31) == 1)
      {
        *(v33 + v31) = 0;
        *(a3 + v30 + 14208) = 15;
        --*v65;
        ++v65[1];
      }

      if (*(a1 + v31 + 700) >= *(a1 + v31 + 604))
      {
        *(v34 + v31) = 0;
        *(a4 + v31 + 365) |= 1u;
        *(v35 + 4 * v31) = *a3;
        EvCrt_v("ChanReset %2d : NKSVRT3  C %d SV %3d   JNR %2d >=SNR %2d ", v31, *(a1 + v30 + 76), *(a1 + v30 + 78), *(a1 + v31 + 700), *(a1 + v31 + 604));
      }

      if (fabs(*(v32 + v31 - 463)) > 150000.0 && (~*(a1 + 2 * v31 + 316) & 0x300) == 0)
      {
        *(v34 + v31) = 0;
        *(a4 + v31 + 365) |= 1u;
        *(v35 + 4 * v31) = *a3;
        EvCrt_v("ChanReset %2d : NKSVRT4  C %d SV %3d   Int_ms %8d   Num_Fit %2d %2d", v31, *(a1 + v30 + 76), *(a1 + v30 + 78), v70[v31], v63, v66);
      }
    }

    ++v31;
    v30 += 4;
  }

  while (v31 != 48);
  if (*(a3 + 968) == 1 && (*(a2 + 233) & 1) == 0)
  {
    if (v9 >= 3 && v66 >= 3)
    {
      if (v66 <= 5)
      {
        if (v66 == 5)
        {
          v36 = 3;
          v37 = 16;
        }

        else
        {
          if (v66 <= 3)
          {
            v37 = 25;
          }

          else
          {
            v37 = 20;
          }

          if (v66 > 3)
          {
            v36 = 4;
          }

          else
          {
            v36 = 5;
          }
        }
      }

      else
      {
        v36 = 2;
        v37 = 13;
      }

      for (j = 0; j != 48; ++j)
      {
        if (*(a3 + j + 2960) == 1 && *&v69[4 * j] > v37 && *&v69[4 * j + 192] > v36 && (*(a3 + j + 1026) & 1) == 0)
        {
          v57 = *(v62 + 8 * j);
          if (v57 < -35.0 || v57 > 150.0)
          {
            *(a3 + j + 2960) = 0;
            *(a3 + 4 * j + 3056) = 16;
            --*(a3 + 2811);
            ++*(a3 + 2812);
          }
        }
      }
    }

    if (*(a3 + 2811) <= 3u && (*(a2 + 233) & 1) == 0)
    {
      v58 = 0;
      v59 = (a1 + 844);
      for (k = a3; *(k + 2960) != 1 || (*(k + 1026) & 1) != 0 || *v59 > 0x7CFu || *&v69[v58 + 192] <= 36 && *&v69[v58] < 401; ++k)
      {
        v58 += 4;
        ++v59;
        if (v58 == 192)
        {
          return;
        }
      }

      v61[1] = 0u;
      v61[2] = 0u;
      *v61 = 0u;
      *v32 = 0u;
      *(a3 + 8552) = 0u;
      *(a3 + 8568) = 0u;
      *v33 = 0u;
      *(a3 + 14128) = 0u;
      *(a3 + 14144) = 0u;
      *(a3 + 2811) = 0;
      *v64 = 0;
      *v65 = 0;
    }
  }
}

uint64_t NK_SV_Res_RTests_Riskier_SVs(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 13963);
  v3 = (a2 + 8387);
  if (*(a2 + 964) >= 3 && *(a2 + 24688) <= 100.0 && *(a2 + 24704) <= 100.0)
  {
    v9 = 0;
    v10 = result + 76;
    v11 = 14112;
    v12 = 8632;
    v13 = 8536;
    v14 = 4832;
    do
    {
      v15 = *(v10 + 4 * v9);
      result = v15;
      if (v15 == 4 || v15 == 3 && ((BYTE2(v15) - 14) & 0xFFFFFFFB) == 0)
      {
        result = *(a2 + v9 + 2960);
        if (result == 1)
        {
          result = a2 + v14;
          v16 = *(a2 + v14 + 2400);
          if (v16 > 0.0)
          {
            result = *(a2 + v9 + 49);
            if (result == 1 && *(a2 + v14) * *(a2 + v14) / fmin(v16, 10000.0) > 9.0)
            {
              *(a2 + v9 + 2960) = 0;
              *(a2 + 4 * v9 + 3056) = 15;
              --*(a2 + 2811);
              ++*(a2 + 2812);
              if (*(a2 + v13) == 1)
              {
                *(a2 + v13) = 0;
                *(a2 + v12) = 15;
                --*v3;
                ++*(a2 + 8388);
              }

              if (*(a2 + v11) == 1)
              {
                *(a2 + v11) = 0;
                *(a2 + v12 + 5576) = 15;
                --*v2;
                ++*(a2 + 13964);
              }
            }
          }
        }
      }

      ++v9;
      ++v11;
      v12 += 4;
      ++v13;
      v14 += 8;
    }

    while (v9 != 48);
  }

  else
  {
    v4 = 0;
    v5 = a2 + 8536;
    v6 = (a2 + 8632);
    v7 = a2 + 14112;
    do
    {
      v8 = *(result + 76 + 4 * v4);
      if (v8 == 4 || v8 == 3 && ((BYTE2(v8) - 14) & 0xFFFFFFFB) == 0)
      {
        if (*(a2 + v4 + 2960) == 1)
        {
          *(a2 + v4 + 2960) = 0;
          *(a2 + 4 * v4 + 3056) = 18;
          --*(a2 + 2811);
          ++*(a2 + 2812);
        }

        if (*(v5 + v4) == 1)
        {
          *(v5 + v4) = 0;
          *v6 = 18;
          --*v3;
          ++*(a2 + 8388);
        }

        if (*(v7 + v4) == 1)
        {
          *(v7 + v4) = 0;
          v6[1394] = 18;
          --*v2;
          ++*(a2 + 13964);
        }
      }

      ++v4;
      ++v6;
    }

    while (v4 != 48);
  }

  return result;
}

uint64_t NK_SV_Res_RTests_FDist(uint64_t result, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(a3 + 12) >= 6)
  {
    if (result >= 8)
    {
      EvCrt_Illegal_Default("NK_SV_Res_RTests_FDist", 611);
      v6 = 9;
      v5 = 7;
    }

    else
    {
      v5 = dword_29975CE68[result];
      v6 = dword_29975CE88[result];
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a2 + 7744;
    v13 = a3 + 4832;
    memset(v35, 0, sizeof(v35));
    v14 = 0.0;
    result = 0x4049000000000000;
    do
    {
      if (*(a3 + v7 + 2960) == 1 && *(a3 + v7 + 49) == 1 && *(v12 + 2 * v7))
      {
        v15 = *(v13 + 8 * v7);
        *(v35 + v7) = v15 * v15;
        v14 = v14 + v15 * v15;
        v16 = fabs(v15);
        if (v15 > -50.0)
        {
          v17 = v8;
        }

        else
        {
          v17 = v8 + 1;
        }

        if (v15 < 50.0)
        {
          v18 = v9;
        }

        else
        {
          v18 = v9 + 1;
        }

        if (v15 >= 50.0)
        {
          v17 = v8;
        }

        if (v16 >= 50.0)
        {
          v9 = v18;
        }

        else
        {
          ++v10;
        }

        if (v16 >= 50.0)
        {
          v8 = v17;
        }

        ++v11;
      }

      ++v7;
    }

    while (v7 != 48);
    v19 = v8 > 1 && v9 > 1;
    v20 = v9 >> 1;
    if (!v19)
    {
      v20 = 0;
    }

    v21 = v20 + v5;
    v22 = v20 + v6;
    v23 = *(a3 + 968) == 1;
    v24 = v22 < 0xC;
    v25 = !v23 || !v24;
    if (v23 && v24)
    {
      v26 = 10;
    }

    else
    {
      v26 = v21;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = 12;
    }

    if (v10 >= v26)
    {
      if (v11 <= 0x30)
      {
        v28 = v11;
      }

      else
      {
        v28 = 47;
      }

      do
      {
        if (v28 < v27)
        {
          break;
        }

        v29 = 0;
        result = 0;
        do
        {
          if (v28 >= v27)
          {
            v30 = *(a3 + 2811);
            if (v30)
            {
              v31 = a3 + v29;
              if (*(a3 + v29 + 2960) == 1 && *(v31 + 49) == 1 && *(v12 + 2 * v29))
              {
                v32 = *(v13 + 8 * v29);
                if (v32 < -50.0 || v32 > 100.0)
                {
                  v34 = *(v35 + v29);
                  if (v34 / ((v14 - v34) / (v28 - 1)) > NK_SV_Res_RTests_FDist(e_CTXT_SES,s_Nav_Kalman_SD *,s_Nav_Kalman_WD *)::F_table[v28 - 1])
                  {
                    *(v31 + 2960) = 0;
                    *(a3 + 4 * v29 + 3056) = 17;
                    ++*(a3 + 2812);
                    *(a3 + 2811) = v30 - 1;
                    result = 1;
                    --v28;
                    v14 = v14 - v34;
                  }
                }
              }
            }
          }

          ++v29;
        }

        while (v29 != 48);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void SuplAsn1Logger::TraceError(unsigned int a1, int a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if (a1 >= 7)
  {
    v5 = "UNDEFINED_STATUS";
  }

  else
  {
    v5 = off_29EF5E780[a1];
  }

  MEMORY[0x29C29E950](__p, v5);
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = __p;
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Status,%s,CurByte,%u,NextBit,%u\n", v6, "SPL", 69, "TraceError", 770, v7, a2, a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29962BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Asn1Coder::AddBitToBuffer(uint64_t **a1, int a2)
{
  v3 = *(a1 + 2);
  v4 = **a1;
  if ((*a1)[1] - v4 <= v3)
  {
    *(a1 + 16) = 2;
    v11 = *(a1 + 3);

    SuplAsn1Logger::TraceError(2u, v3, v11);
  }

  else
  {
    v5 = *(a1 + 3);
    v6 = *(v4 + v3);
    v7 = v6 & (-129 >> v5);
    v8 = v6 | (0x80u >> v5);
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    *(v4 + v3) = v9;
    v10 = *(a1 + 3) + 1;
    *(a1 + 3) = v10;
    if (v10 >= 8)
    {
      a1[1] = (*(a1 + 2) + 1);
    }
  }
}

uint64_t Asn1Coder::GetBitFromBuffer(uint64_t **a1)
{
  v1 = *(a1 + 2);
  v2 = **a1;
  if ((*a1)[1] - v2 <= v1)
  {
    *(a1 + 16) = 2;
    SuplAsn1Logger::TraceError(2u, v1, *(a1 + 3));
    return 0;
  }

  else
  {
    v3 = *(a1 + 3);
    v4 = ((*(v2 + v1) << v3++) >> 7) & 1;
    *(a1 + 3) = v3;
    if (v3 >= 8)
    {
      a1[1] = (v1 + 1);
    }
  }

  return v4;
}

uint64_t Asn1Coder::EncodeInteger(uint64_t a1, int a2, int a3, int a4)
{
  if (a3 < a2)
  {
    v5 = 1;
LABEL_3:
    *(a1 + 16) = v5;
    SuplAsn1Logger::TraceError(v5, *(a1 + 8), *(a1 + 12));
    return *(a1 + 16);
  }

  v5 = 4;
  v7 = a4 - a2;
  if (a4 < a2 || a4 > a3)
  {
    goto LABEL_3;
  }

  if (a3 != a2)
  {
    v8 = 1 << (__clz(a3 - a2) ^ 0x1F);
    do
    {
      Asn1Coder::AddBitToBuffer(a1, v8 & v7);
      v9 = v8 >= 2;
      v8 >>= 1;
    }

    while (v9);
  }

  return *(a1 + 16);
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  if ((a3 - a2) < 1)
  {
    v12 = 5;
LABEL_12:
    SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
    return v12;
  }

  v7 = a2;
  v8 = 0;
  v9 = 1 << -__clz((a3 - a2) >> 1);
  do
  {
    if (Asn1Coder::GetBitFromBuffer(a1))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v11 = v9 > 1;
    v9 >>= 1;
  }

  while (v11);
  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    goto LABEL_12;
  }

  *a4 = v7 + v8;
  v12 = 4;
  if (((v7 + v8) & 0x100) != 0 || a3 < (v7 + v8))
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((a3 - a2) < 1)
  {
    LODWORD(result) = 5;
    v13 = 5;
LABEL_12:
    SuplAsn1Logger::TraceError(result, *(a1 + 8), *(a1 + 12));
    return v13;
  }

  v8 = 0;
  v9 = 1 << -__clz((a3 - a2) >> 1);
  do
  {
    if (Asn1Coder::GetBitFromBuffer(a1))
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v8 |= v10;
    v11 = v9 > 1;
    v9 >>= 1;
  }

  while (v11);
  result = *(a1 + 16);
  v13 = result;
  if (*(a1 + 16))
  {
    goto LABEL_12;
  }

  v14 = a2 + v8;
  *a4 = a2 + v8;
  v13 = 4;
  if ((v14 & 0x10000) != 0 || a3 < v14)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (a3 - a2 < 1)
  {
    v12 = 5;
  }

  else
  {
    v8 = 0;
    v9 = 1 << -__clz((a3 - a2) >> 1);
    do
    {
      if (Asn1Coder::GetBitFromBuffer(a1))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v8 |= v10;
      v11 = v9 > 1;
      v9 >>= 1;
    }

    while (v11);
    v12 = *(a1 + 16);
    if (!*(a1 + 16))
    {
      *a4 = v8 + a2;
      if (v8 + a2 <= a3)
      {
        return 0;
      }

      v12 = 4;
    }
  }

  SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
  return v12;
}

uint64_t Asn1Coder::DecodeInteger(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  if ((a3 - a2) < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1 << -__clz((a3 - a2) >> 1);
    do
    {
      if (Asn1Coder::GetBitFromBuffer(a1))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v8 |= v10;
      v11 = v9 > 1;
      v9 >>= 1;
    }

    while (v11);
    v12 = *(a1 + 16);
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }
  }

  v12 = 4;
  *a4 = v8 + a2;
  if (__CFADD__(v8, a2) || v8 + a2 > a3)
  {
LABEL_13:
    SuplAsn1Logger::TraceError(v12, *(a1 + 8), *(a1 + 12));
    return v12;
  }

  return 0;
}

uint64_t Asn1Coder::EncodeBitString(uint64_t a1, int a2, int a3, uint64_t a4, void *a5, int a6)
{
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v10 = (a1 + 16);
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
    v9 = v10;
  }

  else
  {
    v8 = a4;
    if (!a6)
    {
      Asn1Coder::EncodeInteger(a1, a2, a3, a4);
    }

    v9 = (a1 + 16);
    if (!*(a1 + 16))
    {
      Asn1Coder::AddBitStringToBuffer(a1, v8, a5, 0);
    }
  }

  return *v9;
}

void Asn1Coder::AddBitStringToBuffer(uint64_t **a1, unsigned int a2, void *a3, int a4)
{
  v7 = a2 >> 3;
  v8 = a2 & 7;
  if (a2 >= 8)
  {
    v9 = 0;
    do
    {
      if (v9 >= a3[1] - *a3)
      {
        break;
      }

      v10 = 0;
      v11 = *(*a3 + v9);
      if (a4)
      {
        v11 = (*(*a3 + v9) >> 4) | (16 * *(*a3 + v9));
      }

      v12 = v11;
      do
      {
        Asn1Coder::AddBitToBuffer(a1, (0x80u >> v10++) & v12);
      }

      while (v10 != 8);
      ++v9;
    }

    while (v9 != v7);
  }

  if (v8 && a3[1] - *a3 > v7)
  {
    v13 = *(*a3 + v7);
    if (a4)
    {
      v13 = (*(*a3 + v7) >> 4) | (16 * *(*a3 + v7));
    }

    v14 = v13;
    v15 = 8 - v8;
    do
    {
      Asn1Coder::AddBitToBuffer(a1, (0x80u >> v15++) & v14);
      --v8;
    }

    while (v8);
  }
}

uint64_t **Asn1Coder::GetBitStringFromBuffer(uint64_t **result, unsigned int a2, void *a3, int a4)
{
  v6 = a2;
  v7 = result;
  v21 = *MEMORY[0x29EDCA608];
  v8 = a2 >> 3;
  a3[1] = *a3;
  if (a2 >= 8)
  {
    v9 = 0;
    do
    {
      v20 = 0;
      std::vector<unsigned char>::push_back[abi:ne200100](a3, &v20);
      for (i = 0; i != 8; ++i)
      {
        result = Asn1Coder::GetBitFromBuffer(v7);
        v11 = *(*a3 + v9);
        v12 = v11 | (0x80u >> i);
        v13 = v11 & (-129 >> i);
        if (result)
        {
          LOBYTE(v13) = v12;
        }

        *(*a3 + v9) = v13;
      }

      if (a4)
      {
        *(*a3 + v9) = (*(*a3 + v9) >> 4) | (16 * *(*a3 + v9));
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v14 = v6 & 7;
  if (v14)
  {
    v19 = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](a3, &v19);
    v15 = 8 - v14;
    do
    {
      result = Asn1Coder::GetBitFromBuffer(v7);
      v16 = *(*a3 + v8);
      v17 = v16 | (0x80u >> v15);
      v18 = v16 & (-129 >> v15);
      if (result)
      {
        LOBYTE(v18) = v17;
      }

      *(*a3 + v8) = v18;
      ++v15;
      --v14;
    }

    while (v14);
    if (a4)
    {
      *(*a3 + v8) = (*(*a3 + v8) >> 4) | (16 * *(*a3 + v8));
    }
  }

  return result;
}

uint64_t Asn1Coder::EncodeOctetString(uint64_t a1, int a2, int a3, int a4, void *a5, int a6, int a7)
{
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v11 = (a1 + 16);
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    if (!a6)
    {
      Asn1Coder::EncodeInteger(a1, a2, a3, a4);
    }

    Asn1Coder::AddBitStringToBuffer(a1, 8 * a4, a5, a7);
    v11 = (a1 + 16);
  }

  return *v11;
}

uint64_t Asn1Coder::EncodeVisibleStringSubType(uint64_t a1, int a2, unsigned int a3, int a4, void *a5, int a6, uint64_t a7, int a8)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a3 > 0xFF || !a7 || !a6 || *a5 == a5[1])
  {
    v12 = 1;
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
    return v12;
  }

  if (a8)
  {
    return 5;
  }

  v15 = Asn1Coder::EncodeInteger(a1, a2, a3, a4);
  v12 = v15;
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (a4 && !v15)
  {
    v16 = 0;
    do
    {
      if (v16 >= a5[1] - *a5)
      {
        break;
      }

      v17 = 0;
      while (*(*a5 + v16) != *(a7 + v17))
      {
        if (a6 == ++v17)
        {
          v12 = 4;
          SuplAsn1Logger::TraceError(4u, *(a1 + 8), *(a1 + 12));
          goto LABEL_23;
        }
      }

      v19 = v17;
      std::vector<unsigned char>::push_back[abi:ne200100](&__p, &v19);
      ++v16;
    }

    while (v16 != a4);
    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:
    v18 = 32 - __clz(a6 - 1);
    if (a6 == 1)
    {
      LOBYTE(v18) = 0;
    }

    Asn1Coder::AddVisibleStringToBuffer(a1, v18 * a4, v18, &__p);
    v12 = *(a1 + 16);
  }

LABEL_23:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_29962C7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Asn1Coder::AddVisibleStringToBuffer(uint64_t **a1, unsigned int a2, char a3, void *a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = 1 << (a3 - 1);
    v8 = a2;
    v9 = v7;
    do
    {
      if (a4[1] - *a4 <= v6)
      {
        break;
      }

      v10 = v6;
      Asn1Coder::AddBitToBuffer(a1, v9 & *(*a4 + v6));
      v11 = v9 >> 1 == 0;
      if (v9 >> 1)
      {
        v9 >>= 1;
      }

      else
      {
        v9 = v7;
      }

      v6 = v11 ? v10 + 1 : v10;
      --v8;
    }

    while (v8);
  }
}

uint64_t Asn1Coder::DecodeVisibleStringSubType(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, void *a5, unsigned int a6, uint64_t a7, int a8)
{
  v8 = a1;
  v30 = *MEMORY[0x29EDCA608];
  if (a3 <= 0xFF && a6 && a7)
  {
    if (!a8)
    {
      Asn1Coder::DecodeInteger(a1, a2, a3, a4);
    }

    if (a6 != 1)
    {
      v13 = (32 - __clz(a6 - 1));
      __p = 0;
      v28 = 0;
      v29 = 0;
      v26 = v8;
      Asn1Coder::GetVisibleStringFromBuffer(v8, *a4 * v13, v13, &__p);
      v14 = *a5;
      a5[1] = *a5;
      if (*a4)
      {
        v15 = 0;
        while (1)
        {
          v16 = __p;
          if (v15 >= v28 - __p)
          {
            break;
          }

          if (*(__p + v15) > a6)
          {
            *(v26 + 16) = 4;
            SuplAsn1Logger::TraceError(4u, *(v26 + 8), *(v26 + 12));
            goto LABEL_27;
          }

          v17 = *(a7 + *(__p + v15));
          v18 = a5[2];
          if (v14 >= v18)
          {
            v19 = *a5;
            v20 = &v14[-*a5];
            v21 = (v20 + 1);
            if ((v20 + 1) < 0)
            {
              std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - v19;
            if (2 * v22 > v21)
            {
              v21 = 2 * v22;
            }

            if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v23 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              operator new();
            }

            v24 = &v14[-*a5];
            *v20 = v17;
            v14 = v20 + 1;
            memcpy(0, v19, v24);
            *a5 = 0;
            a5[1] = v20 + 1;
            a5[2] = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v14++ = v17;
          }

          a5[1] = v14;
          if (++v15 >= *a4)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        v16 = __p;
      }

      if (v16)
      {
        v28 = v16;
        operator delete(v16);
      }

      v8 = v26;
    }
  }

  else
  {
    *(a1 + 16) = 1;
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  }

  return *(v8 + 16);
}

void sub_29962CAF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **Asn1Coder::GetVisibleStringFromBuffer(uint64_t **result, unsigned int a2, int a3, void *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    a4[1] = *a4;
    if (a2)
    {
      v5 = result;
      v6 = 0;
      v7 = (1 << (a3 - 1));
      v8 = a2;
      v9 = v7;
      do
      {
        v12 = 0;
        std::vector<unsigned char>::push_back[abi:ne200100](a4, &v12);
        result = Asn1Coder::GetBitFromBuffer(v5);
        if (result)
        {
          v10 = *(*a4 + v6) | v9;
        }

        else
        {
          v10 = *(*a4 + v6) & ~v9;
        }

        *(*a4 + v6) = v10;
        v11 = v9 >= 2;
        if (v9 >= 2)
        {
          v9 >>= 1;
        }

        else
        {
          v9 = v7;
        }

        if (!v11)
        {
          ++v6;
        }

        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t Asn1Coder::EncodeVisibleString7(uint64_t a1, int a2, int a3, int a4, void *a5, int a6)
{
  if (*a5 == a5[1])
  {
    *(a1 + 16) = 1;
    v9 = (a1 + 16);
    SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
  }

  else
  {
    if (!a6)
    {
      Asn1Coder::EncodeInteger(a1, a2, a3, a4);
    }

    Asn1Coder::AddVisibleStringToBuffer(a1, 7 * a4, 7, a5);
    v9 = (a1 + 16);
  }

  return *v9;
}

uint64_t Asn1Coder::DecodeVisibleString7(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, void *a5, int a6)
{
  if (!a6)
  {
    Asn1Coder::DecodeInteger(a1, a2, a3, a4);
  }

  Asn1Coder::GetVisibleStringFromBuffer(a1, 7 * *a4, 7, a5);
  return *(a1 + 16);
}

void Asn1Coder::SkipOpenTypeField(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = 0;
  Asn1Coder::DecodeOpenTypeFieldStart(a1, &v7);
  if (!v2)
  {
    v3 = v8;
    if (v8)
    {
      v4 = 1;
      do
      {
        if (Asn1Coder::DecodeInteger(a1, 0, 0xFFu, &v6))
        {
          break;
        }
      }

      while (v4++ < v3);
    }
  }
}

int32x2_t Asn1Coder::DecodeOpenTypeFieldStart(uint64_t a1, int32x2_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v6 = *(a1 + 16);
  v8 = 0;
  if (!v6)
  {
    if (BitFromBuffer)
    {
      Asn1Coder::GetBitFromBuffer(a1);
      if (*(a1 + 16))
      {
        return result;
      }

      v7 = 0x3FFF;
    }

    else
    {
      v7 = 127;
    }

    if (!Asn1Coder::DecodeInteger(a1, 0, v7, &v8))
    {
      a2[1].i32[0] = v8;
      result = vrev64_s32(*(a1 + 8));
      *a2 = result;
    }
  }

  return result;
}

uint64_t Asn1Coder::SkipSequenceExtensionAddition(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3;
  v4 = *a2;
  if (a3 < v4)
  {
    v7 = ~a3;
    do
    {
      if ((*(a2 + 1) >> (v7 + v4)))
      {
        Asn1Coder::SkipOpenTypeField(a1);
        if (v8)
        {
          v9 = v8;
          SuplAsn1Logger::TraceError(v8, *(a1 + 8), *(a1 + 12));
          return v9;
        }

        v4 = *a2;
      }

      ++v3;
      --v7;
    }

    while (v3 < v4);
  }

  return 0;
}

uint64_t Asn1Coder::SkipSequenceExtension(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v3[0] = 0;
  v4 = 0;
  result = Asn1Coder::DecodeSequenceExtension(a1, v3);
  if (!result)
  {
    return Asn1Coder::SkipSequenceExtensionAddition(a1, v3, 0);
  }

  return result;
}

uint64_t Asn1Coder::DecodeSequenceExtension(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  v7 = 0;
  if (!result)
  {
    result = Asn1Coder::DecodeInteger(a1, 1, 0x40u, &v7);
    v6 = 0;
    if (!result)
    {
      v5 = v7;
      *a2 = v7;
      result = Asn1Coder::DecodeInteger(a1, 0, ~(-1 << v5), &v6);
      if (!result)
      {
        *(a2 + 4) = v6;
      }
    }
  }

  return result;
}

void Asn1Coder::SkipChoiceExtension(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  if (!Asn1Coder::DecodeChoiceExtension(a1, &v2))
  {

    Asn1Coder::SkipOpenTypeField(a1);
  }
}

uint64_t Asn1Coder::DecodeChoiceExtension(uint64_t a1, _BYTE *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  v5 = 0;
  if (!result)
  {
    result = Asn1Coder::DecodeInteger(a1, 0, 0x3Fu, &v5);
    if (!result)
    {
      *a2 = v5;
    }
  }

  return result;
}

uint64_t Asn1Coder::EncodeOpenTypeFieldStart(uint64_t a1, int32x2_t *a2)
{
  *a2 = vrev64_s32(*(a1 + 8));
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 64;
    do
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      v5 = v4 > 1;
      v4 >>= 1;
    }

    while (v5);
    return *(a1 + 16);
  }

  return result;
}

uint64_t Asn1Coder::EncodeOpenTypeFieldEnd(uint64_t a1, int32x2_t *a2)
{
  v4 = *(a1 + 12);
  v5 = a2->i32[0] - v4;
  if (a2->i32[0] <= v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 255;
  }

  v7 = v6 & v5;
  if (!v7 || (result = Asn1Coder::EncodeInteger(a1, 0, ~(-1 << v7), 0), !result))
  {
    v9 = *(a1 + 8) - a2->i32[1];
    if ((v9 - 1) >= 0x80)
    {
      v10 = *(a1 + 12);
      v11 = 128;
      do
      {
        Asn1Coder::AddBitToBuffer(a1, 0);
        v12 = v11 > 1;
        v11 >>= 1;
      }

      while (v12);
      result = *(a1 + 16);
      if (*(a1 + 16))
      {
        return result;
      }

      if (v10)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = v9;
      }

      v14 = (v13 + 1);
      if (v13 != -1)
      {
        v15 = 0;
        v16 = -v14;
        do
        {
          v17 = (**a1 + *(a1 + 8) + v15);
          *v17 = *(v17 - 1);
          --v15;
        }

        while (v16 != v15);
      }
    }

    v18 = *(a1 + 8);
    *(a1 + 8) = vrev64_s32(*a2);
    if ((v9 - 1) <= 0x7F)
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      result = *(a1 + 16);
      if (*(a1 + 16))
      {
        return result;
      }

      v19 = 127;
      goto LABEL_22;
    }

    Asn1Coder::AddBitToBuffer(a1, 1);
    result = *(a1 + 16);
    if (!*(a1 + 16))
    {
      Asn1Coder::AddBitToBuffer(a1, 0);
      result = *(a1 + 16);
      if (!*(a1 + 16))
      {
        v19 = 0x3FFF;
LABEL_22:
        Asn1Coder::EncodeInteger(a1, 0, v19, v9 - 1);
        result = 0;
        *(a1 + 8) = v18;
      }
    }
  }

  return result;
}

uint64_t Asn1Coder::EncodeSequenceExtension(uint64_t a1, int a2, int a3)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    result = Asn1Coder::EncodeInteger(a1, 1, 64, a2);
    if (!result)
    {
      return Asn1Coder::EncodeInteger(a1, 0, ~(-1 << a2), a3);
    }
  }

  return result;
}

uint64_t Asn1Coder::EncodeChoiceExtension(uint64_t a1, unsigned __int8 *a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v5 = *a2;

    return Asn1Coder::EncodeInteger(a1, 0, 63, v5);
  }

  return result;
}

uint64_t Asn1Coder::EncodeChoiceExtension(uint64_t a1, int a2)
{
  Asn1Coder::AddBitToBuffer(a1, 0);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {

    return Asn1Coder::EncodeInteger(a1, 0, 63, a2);
  }

  return result;
}

uint64_t Asn1Coder::DecodeEnumerationExtension(uint64_t a1, _BYTE *a2)
{
  Asn1Coder::GetBitFromBuffer(a1);
  result = *(a1 + 16);
  if (!*(a1 + 16))
  {

    return Asn1Coder::DecodeInteger(a1, 0, 0x3Fu, a2);
  }

  return result;
}

uint64_t Init_DB_Sensor(uint64_t result)
{
  v1 = 0;
  v2 = result + 26128;
  *(result + 296) = result + 528;
  *(result + 304) = result + 26128;
  *(result + 240) = result + 528;
  *(result + 312) = 0x32000000020;
  *(result + 320) = 25600;
  v3 = result + 324;
  do
  {
    *(v3 + 8 * v1 - 76) = result + 528;
    *(v3 + v1++) = 0;
  }

  while (v1 != 6);
  v4 = 0;
  v5 = result + 51728;
  *(result + 392) = v2;
  *(result + 400) = result + 51728;
  *(result + 336) = v2;
  *(result + 408) = 0x32000000020;
  *(result + 416) = 25600;
  v6 = result + 420;
  do
  {
    *(v6 + 8 * v4 - 76) = v2;
    *(v6 + v4++) = 0;
  }

  while (v4 != 6);
  v7 = 0;
  *(result + 488) = v5;
  *(result + 496) = result + 55328;
  *(result + 432) = v5;
  *(result + 504) = 0x9600000018;
  *(result + 512) = 3600;
  v8 = result + 516;
  do
  {
    *(v8 + 8 * v7 - 76) = v5;
    *(v8 + v7++) = 0;
  }

  while (v7 != 6);
  return result;
}

void Gnm17_12SendClearNv(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm17_12SendClearNv", 54, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm17_12SendClearNv");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8393216, v3);
  }
}

void Gnm17_13SendPollAssistStatus(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("Gnm17_13SendPollAssistStatus", 76, 1, 0xCuLL);
  if (v0)
  {
    v1 = v0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm17_13SendPollAssistStatus");
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8393728, v1);
  }
}

uint64_t Gnm17_31HandleAssistStatus(_BYTE *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm17_31HandleAssistStatus");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    Gnm13_07SendAidStatusCnf(a1);
    Gnm13_13HandleAssistStatus(a1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm17_31HandleAssistStatus", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  return 0;
}

char **GNSS_HL_System_Run_Update(uint64_t a1)
{
  SV_Data_Decode_Update_Wrapper(a1);
  SV_Gen_Meas_Update_Wrapper(a1);
  SV_State_Update_Wrapper(a1);
  Nav_Kalman_Update_Wrapper(a1);
  v2 = mach_continuous_time();
  *(*(a1 + 72) + 1088) = (*&g_MacClockTicksToMsRelation * v2);
  if (!gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v2))
  {
    goto LABEL_13;
  }

  v3 = *(a1 + 4);
  if (!v3)
  {
    if (*a1 != 11)
    {
      goto LABEL_13;
    }

    EvLog_v("Set_Sens_Aug_FPE_Exe_State:  NOT Initialised YET, TOW %10.3f");
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    if (*a1 == 11)
    {
      goto LABEL_12;
    }

    *(a1 + 4) = 1;
    EvLog_v("Set_Sens_Aug_FPE_Exe_State:  Leaving Co-Running Nav mode, TOW %10.3f");
LABEL_11:
    if (*(a1 + 4) != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v3 != 1)
  {
    __assert_rtn("Set_Sens_Aug_FPE_Exe_State", "System_Run_Update.cpp", 201, "FALSE");
  }

  if (*a1 == 11)
  {
    EvLog_v("Set_Sens_Aug_FPE_Exe_State:  Entering Co-Running Nav mode, TOW %10.3f", *(*(a1 + 48) + 24));
    *(a1 + 4) = 2;
LABEL_12:
    v4 = *(a1 + 72);
    v5 = *(a1 + 136);
    *v5 = *(v4 + 948);
    *(v5 + 6) = *(v4 + 43);
    *(v5 + 4) = g_Enable_LCD_Debug;
    GN_GPS_Get_LibVersion((v5 + 7));
    Sen_Aug_FPE_Update_Wrapper(a1);
  }

LABEL_13:
  *(*(a1 + 72) + 1092) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Fused_Nav_Update_Wrapper(a1);

  return Pre_Positioning_Update_Wrapper(a1);
}

double STANAG_WGS84_Mean_Sea_Level(double *a1)
{
  v1 = a1[1];
  v2 = 1.57079633 - *a1;
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 3.14159265)
  {
    v2 = 3.14159265;
  }

  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  v3 = v2 * 5.72957795;
  v4 = vcvtmd_s64_f64(v2 * 5.72957795);
  v5 = v1 * 5.72957795;
  v6 = vcvtmd_s64_f64(v5);
  if (v4 <= 0)
  {
    v10 = 37 * v4;
    LODWORD(v11) = v6 + 1;
    v8 = 13.0;
    v9 = 13.0;
    goto LABEL_14;
  }

  v7 = -30.0;
  if (v4 <= 0x11)
  {
    v12 = 37 * v4 - 37;
    v11 = v6 + 1;
    v9 = STANAG_Geoid_Table[v12 + v6];
    v8 = STANAG_Geoid_Table[v12 + v11];
    if (v4 == 17)
    {
      goto LABEL_12;
    }

    v10 = 37 * v4;
LABEL_14:
    v7 = STANAG_Geoid_Table[v10 + v6];
    v13 = STANAG_Geoid_Table[v10 + v11];
    goto LABEL_15;
  }

  v8 = -30.0;
  v9 = -30.0;
LABEL_12:
  v13 = -30.0;
LABEL_15:
  v14 = v3 - floor(v3);
  v15 = v5 - floor(v5);
  return (1.0 - v15) * v14 * ((1.0 - v15) * v14) * ((1.0 - v15 + v14) * -6.0 + 9.0 + (1.0 - v15) * v14 * 4.0) * v7 + (1.0 - v15) * (1.0 - v14) * ((1.0 - v15) * (1.0 - v14)) * ((1.0 - v15 + 1.0 - v14) * -6.0 + 9.0 + (1.0 - v15) * (1.0 - v14) * 4.0) * v9 + v15 * (1.0 - v14) * (v15 * (1.0 - v14)) * ((v15 + 1.0 - v14) * -6.0 + 9.0 + v15 * (1.0 - v14) * 4.0) * v8 + v15 * v14 * (v15 * v14) * ((v15 + v14) * -6.0 + 9.0 + v15 * v14 * 4.0) * v13;
}

double *NK_DT_Synch_ProcNoise(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0.0;
  v4 = 0.0;
  if ((*(a1 + 128) & 1) == 0)
  {
    v5 = (a2 + 22776);
    if (*(a2 + 25170) == 1)
    {
      v6 = *(a2 + 24168);
      if (v6 <= 1.0)
      {
        if (v6 < 0.0000000025)
        {
          v19 = 0.0000000025;
          v4 = 0.0000000025;
        }
      }

      else
      {
        v7 = *(a2 + 25216) * *(a2 + 25216);
        v8 = *(a2 + 24528);
        if (v7 <= v8 * 4.0)
        {
          if (v8 < 40000.0)
          {
            v9 = v8 - v6;
            if (v8 - v6 > 0.0)
            {
              v10 = v7 <= 1.0 ? v9 * 0.15 : v9 * 0.15 + v7 * 0.02;
              v4 = v10 <= v9 ? v10 : v8 - v6;
              v19 = v4;
              if (*v5 == 1 && *(a2 + 22780) == 1)
              {
                v11 = *(a2 + 22808);
                if (v11 < v8 && v11 > v6 && v4 > v11 - v6)
                {
                  v19 = v11 - v6;
                  v4 = v11 - v6;
                }
              }
            }
          }
        }

        else
        {
          v4 = v7 / 2.25 - v6;
          v19 = v4;
          if (v4 < 0.0)
          {
            v19 = 0.0;
            v4 = 0.0;
          }
        }

        if (v6 + v4 < 4.0)
        {
          v4 = 4.0 - v6;
          v19 = 4.0 - v6;
        }
      }

      *&v20[0] = 0;
      if (!R8_EQ(&v19, v20))
      {
        *(a2 + 24168) = v6 + v4;
      }
    }

    if ((*(a2 + 16) & 1) == 0 && *(a2 + 22780) == 1 && ((*v5 & 1) != 0 || *(a2 + 22792) == 1))
    {
      v12 = *(a2 + 22800) - *(a2 + 792);
      v13 = v12 * v12;
      if (v13 > 100.0)
      {
        v14 = *(a2 + 24168);
        v15 = *(a2 + 22816) + v14;
        if (v13 > v15 * 16.0)
        {
          v4 = v13 / 9.0 - v15;
          v19 = v4;
          *(a2 + 24168) = v14 + v4;
        }
      }
    }
  }

  *&v20[0] = 0;
  result = R8_EQ(&v19, v20);
  if ((result & 1) == 0)
  {
    memset(v20, 0, 32);
    memset(&v20[3], 0, 208);
    v20[2] = 0x3FF0000000000000uLL;
    if (v4 > 0.0)
    {
      result = rnk1_core((a1 + 872), 5u, v4, v20, &v18);
    }

    v17 = *(a2 + 24168);
    *(a2 + 24256) = v17;
    *(a2 + 24344) = sqrt(v17);
  }

  return result;
}

double SBAS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = 16 * *(a1 + 8);
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29975D150);
  v5 = *(a1 + 20);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  *(a2 + 16) = v4;
  *(a2 + 32) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3FB47AE147AE147BuLL));
  v4.f64[0] = *(a1 + 28);
  v3.i64[0] = SLODWORD(v4.f64[0]);
  v3.i64[1] = SHIDWORD(v4.f64[0]);
  v6 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29975D160);
  v7 = *(a1 + 36);
  v3.i64[0] = v7;
  v3.i64[1] = SHIDWORD(v7);
  *(a2 + 12) = *(a1 + 10);
  *(a2 + 48) = v6;
  *(a2 + 64) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_29975D170);
  v6.f64[0] = *(a1 + 44);
  v3.i64[0] = SLODWORD(v6.f64[0]);
  v3.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3EEA36E2EB1C432DuLL));
  result = *(a1 + 52) * 0.0000625;
  *(a2 + 96) = result;
  return result;
}

char *FpeEnabler_UpdateFlags(char *result, int a2, uint64_t *a3)
{
  v4 = result;
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v34 = *a3;
        *(result + 17) = *(a3 + 2);
        *(result + 60) = v34;
        result[144] = 1;
        result[2] = 1;
        *(result + 46) = 0;
        *(result + 188) = *(a3 + 4);
        return result;
      }

      if (a2 != 4)
      {
        v5 = *a3;
        if (*a3)
        {
          *(result + 49) = 0;
          *(result + 50) = v5;
          *(result + 51) = 0;
        }

        return result;
      }

      v35 = *a3;
      *(result + 23) = *(a3 + 2);
      *(result + 84) = v35;
      v36 = 1;
      result[145] = 1;
      v37 = *(a3 + 1);
      if (v37 != 1)
      {
        if (v37 != 3)
        {
          if (v37 == 2)
          {
            v38 = 0;
            v36 = *(a3 + 2) == 3;
LABEL_68:
            result[7] = v38;
            *result = v36 && !v38;
            v43 = *(a3 + 2);
            *(result + 40) = 0;
            *(result + 41) = v37;
            *(result + 42) = v43;
            result[220] = 1;
            result[221] = result[56] ^ 1;
            return result;
          }

          v36 = 0;
        }

        v38 = 0;
        goto LABEL_68;
      }

      v36 = 0;
      v38 = *(a3 + 2) == 3;
      goto LABEL_68;
    }

    if (!a2)
    {
      result[3] = 1;
      result[9] = 0;
      *(result + 53) = *(a3 + 6);
      return result;
    }

    if (a2 == 1)
    {
      result[4] = 1;
      result[10] = 0;
      *(result + 54) = *(a3 + 6);
      return result;
    }

    goto LABEL_54;
  }

  if (a2 <= 11)
  {
    if (a2 == 6)
    {
      v29 = *a3;
      *(result + 20) = *(a3 + 2);
      *(result + 9) = v29;
      result[146] = 1;
      v30 = *(a3 + 1);
      if (v30 == 8)
      {
        v31 = 0;
        v32 = *(a3 + 2);
        v33 = v32 == 3;
      }

      else
      {
        v33 = 0;
        v31 = v30 > 1;
        v32 = *(a3 + 2);
      }

      result[8] = v31;
      result[1] = v33 && !v31;
      *(result + 43) = 0;
      *(result + 44) = v30;
      *(result + 45) = v32;
      *(result + 111) = 257;
      return result;
    }

    if (a2 != 10)
    {
LABEL_54:
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        return LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %s");
      }

      return result;
    }

    v26 = *(a3 + 4);
    if (v26 == 11)
    {
      v27 = (result + 48);
      v28 = *(result + 6);
      result[5] = *(a3 + 784);
    }

    else
    {
      v27 = (result + 48);
      v28 = *(result + 6);
      result[5] = 0;
      if (v26 < 9)
      {
LABEL_73:
        v4[26].i32[0] = *a3;
        v4[6] = a3[1];
        v4[19] = vadd_s32(v4[19], 0x100000001);
        ++v4[20].i32[0];
        ++v4[21].i32[1];
        ++v4[23].i32[0];
        ++v4[24].i32[1];
        return result;
      }
    }

    if (v28 > -999.0)
    {
      v39 = *(a3 + 1) - v28;
      if (v39 > 1.5 || v39 < 0.0)
      {
        v40 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v42 = *(g_TCU + 8);
          }

          else
          {
            v42 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Time Diff between EPOCH = %f sec at TOW=%f (TOWstat=%d)", "FpeEnabler_UpdateFlags", 266, v41, v42, *(a3 + 1) - *v27, *(a3 + 1), *(a3 + 4));
          v40 = g_FPE_LogSeverity;
        }

        if ((v40 & 0x200) != 0)
        {
          result = LC_LOG_NMEA_GENERIC("%s,FPENW1,%.2f,%.1f,%d", "$PFPEX", *(a3 + 1) - *v27, *(a3 + 1), *(a3 + 4));
        }
      }
    }

    goto LABEL_73;
  }

  if (a2 == 14)
  {
    return result;
  }

  if (a2 == 13)
  {
    result[13] = 1;
    return result;
  }

  if (a2 != 12)
  {
    goto LABEL_54;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = result[v6 + 37];
    result[v6 + 38] = v8;
    v7 += v8;
    --v6;
  }

  while (v6 != -24);
  v9 = 0;
  v10 = result[8];
  result[14] = v10;
  for (i = 39; i != 45; ++i)
  {
    v9 += result[i];
  }

  if ((g_FPE_LogSeverity & 0x200) != 0)
  {
    v12 = v10 + v7;
    v13 = result[56];
    v15 = *(result + 38);
    v14 = *(result + 39);
    if (v14 >= 0x3E7)
    {
      v14 = 999;
    }

    if (v15 >= 0x3E7)
    {
      v15 = 999;
    }

    v17 = *(result + 40);
    v16 = *(result + 41);
    if (v17 >= 0x63)
    {
      v17 = 99;
    }

    v19 = *(result + 42);
    v18 = *(result + 43);
    if (v18 >= 0x63)
    {
      v18 = 99;
    }

    v20 = *(result + 46);
    if (v20 >= 0x63)
    {
      v20 = 99;
    }

    if (v4[24].i32[1] >= 0x63u)
    {
      v21 = 99;
    }

    else
    {
      v21 = v4[24].i32[1];
    }

    result = LC_LOG_NMEA_GENERIC("%s,FPEN,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d", "$PFPEX", v13, v14, v15, v16, v19, v17, v4[22].i32[0], v4[22].i32[1], v18, v4[23].i32[1], v4[24].i32[0], v20, v4[25].i32[0], v21, v4->u8[0], v4->u8[1], v4->u8[2], v4->u8[3], v4->u8[4], v12, v4->u8[6], v4[1].u8[3], v9);
  }

  v22 = v4[26].i32[1];
  if (v22 && (v4[1].i8[1] & 1) == 0)
  {
    v23 = v4[26].i32[0] - v22;
    if (v23 < 0)
    {
      v23 = -v23;
    }

    if (v23 >= 0x7D1 && (g_FPE_LogSeverity & 4) != 0)
    {
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v25 = *(g_TCU + 8);
      }

      else
      {
        v25 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f OS time difference between EPOCH and last ACCL: %d msec", "FpeEnabler_UpdateFlags", 383, v24, v25, v4[26].i32[0] - v4[26].i32[1]);
    }
  }

  v44 = v4[27].i32[0];
  if (v44 && (v4[1].i8[2] & 1) == 0)
  {
    v45 = v4[26].i32[0] - v44;
    if (v45 < 0)
    {
      v45 = -v45;
    }

    if (v45 >= 0x7D1 && (g_FPE_LogSeverity & 4) != 0)
    {
      mach_continuous_time();
      return LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f OS time difference between EPOCH and last GYRO: %d msec");
    }
  }

  return result;
}

const char *FpeEnabler_UpdateState(const char *result, _BYTE *a2, _BYTE *a3)
{
  v3 = result;
  *a2 = 0;
  *a3 = 0;
  if (result[56] == 1)
  {
    v5 = 0;
    for (i = 14; i != 39; ++i)
    {
      v5 += result[i];
    }

    v7 = result + 6;
    if (result[6])
    {
      if (result[13] != 1)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          mach_continuous_time();
          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f Sensor Problem --> stopWorking");
        }

        goto LABEL_33;
      }

LABEL_29:
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f REINIT by external --> stopWorking");
      }

      goto LABEL_33;
    }

    if (result[11] == 1)
    {
      if ((result[12] & 1) != 0 || v5 > 0x13)
      {
        if (result[13])
        {
          goto LABEL_29;
        }

        if (result[12])
        {
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f too many epochs without sensors --> stopWorking");
          }

          goto LABEL_33;
        }

        if (v5 < 0x14)
        {
LABEL_33:
          *(v3 + 3) = 0;
          *(v3 + 5) = 0;
          if (v3[13] == 1)
          {
            *v3 = 0;
            *(v3 + 2) = 0;
            *(v3 + 111) = 0;
          }

          *(v3 + 13) = 0;
          *(v3 + 152) = 0u;
          *(v3 + 168) = 0u;
          *(v3 + 184) = 0u;
          *(v3 + 25) = 0;
          *v7 = 0;
          *(v3 + 10) = 0;
          *(v3 + 56) = 0;
          *a3 = 1;
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            mach_continuous_time();
            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FPE En: %f WrkState --> False");
          }

          goto LABEL_37;
        }

        goto LABEL_26;
      }
    }

    else if (v5 > 0x13)
    {
      if (result[13])
      {
        goto LABEL_29;
      }

LABEL_26:
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f %u events exceed UAC not-driving events threshold in %u events window");
      }

      goto LABEL_33;
    }

    if ((result[13] & 1) == 0)
    {
      *(result + 56) = 1;
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if (*result == 1 && result[1] == 1 && result[3] == 1 && result[4] == 1 && (result[2] & 1) != 0)
  {
    v8 = *(result + 5);
    *(result + 56) = v8;
    if (v8 == 1)
    {
      *a2 = 1;
      *(result + 39) = 0;
      if ((g_FPE_LogSeverity & 8) != 0)
      {
        mach_continuous_time();
        result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FPE En: %f WrkState --> True");
      }
    }
  }

  else
  {
    *(result + 56) = 0;
  }

LABEL_37:
  if ((g_FPE_LogSeverity & 8) != 0)
  {
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v9 = *(g_TCU + 8);
    }

    else
    {
      v9 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f FpeEnablerState: => %u startFlags=[FIV:%u,UAC:%u,DMS:%u,GNSS:%u,ACCL:%u,GYRO:%u] stopFlags=[FIV:%u,UAC:%u,ACCL:%u,GYRO:%u,sensCurGap:%u,sensPrevGap:%u,sensErr:%u,reinit:%u,uacCycBuf:[%u,%u,%u,%u,%u,%u,%u,%u,%u,%u]], sensCycBuf[%u,%u,%u,%u,%u,%u] FpelastRecordTble: [%u,%u,%u,%u,%u,%u]", "FpeEnabler_printState", 551, v10, v9, *(v3 + 56), *v3, *(v3 + 1), *(v3 + 2), *(v3 + 5), *(v3 + 3), *(v3 + 4), *(v3 + 7), *(v3 + 8), *(v3 + 9), *(v3 + 10), *(v3 + 11), *(v3 + 12), *(v3 + 6), *(v3 + 13), *(v3 + 14), *(v3 + 15), *(v3 + 16), *(v3 + 17), *(v3 + 18), *(v3 + 19), *(v3 + 20), *(v3 + 21), *(v3 + 22), *(v3 + 23), *(v3 + 39), *(v3 + 40), *(v3 + 41), *(v3 + 42), *(v3 + 43), *(v3 + 44), *(v3 + 144), *(v3 + 145), *(v3 + 146), *(v3 + 147), *(v3 + 148), *(v3 + 149));
  }

  *(v3 + 3) = 0;
  *(v3 + 5) = 0;
  *(v3 + 9) = 257;
  return result;
}

uint64_t FpeEnabler_UpdateStopFlags(uint64_t a1, char a2)
{
  v2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  *(a1 + 6) = a2;
  v3 = 1;
  do
  {
    v4 = *(a1 + v2 + 43);
    *(a1 + v2 + 44) = v4;
    v3 &= v4;
    --v2;
  }

  while (v2 != -5);
  v5 = *(a1 + 11);
  *(a1 + 39) = v5;
  *(a1 + 12) = v3 & v5;
  if (*(a1 + 9))
  {
    v6 = *(a1 + 10);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 11) = v6 & 1;
  v8 = 0;
  FpeEnabler_UpdateState(a1, &v9, &v8);
  return v8;
}

void NK_Meas_ARP_Check(unsigned int a1, _BYTE *a2, uint64_t a3, double *a4, double *a5)
{
  v7 = a5[5];
  if (a5[6] > v7)
  {
    v7 = a5[6];
  }

  if (a5[7] > v7)
  {
    v7 = a5[7];
  }

  v8 = v7 * 0.769230769;
  v9 = cARPCheckMinDynThresh[a1 - 1];
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *a4;
  v12 = a4[1];
  if (a1 == 1)
  {
    v13 = 0;
    v14 = a3 + 2408;
    v15 = vdupq_n_s64(0x41124C41D4FDF3B6uLL);
    v16 = vdupq_n_s64(0x41024C41D4FDF3B6uLL);
    v17 = vdupq_n_s64(0xC1124C41D4FDF3B6);
    v18 = 2408;
    do
    {
      v19 = vmlsq_f64(*(v14 + v13), v15, vrndmq_f64(vdivq_f64(*(v14 + v13), v15)));
      *(v14 + v13) = vbslq_s8(vcgtq_f64(v19, v16), vaddq_f64(v19, v17), v19);
      v13 += 16;
    }

    while (v13 != 384);
  }

  else
  {
    v18 = 2024;
  }

  v20 = v10 * 0.25;
  if (a1 >= 4)
  {
    gn_report_assertion_failure("NK_Meas_ARP_Check: index fail");
  }

  v21 = 0;
  v22 = v10 * v10;
  v23 = v20 * v20;
  for (i = 3608; i != 3992; i += 8)
  {
    if (*(a3 + v21 + 152) == 1)
    {
      v25 = a3 + 4 * v21;
      v26 = *(v25 + 248);
      if ((v26 - 1) >= 0x1D)
      {
        if (v26)
        {
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        }

        else
        {
          v27 = v12 >= 100.0;
          if (*a2 != 2)
          {
            v27 = v11 >= 100.0;
          }

          if (!v27)
          {
            v28 = *(a3 + i + 432) * 9.0;
            v29 = *(a3 + v18) * *(a3 + v18);
            if (v28 <= v22)
            {
              v30 = v22;
            }

            else
            {
              v30 = *(a3 + i + 432) * 9.0;
            }

            if (v28 <= v23)
            {
              v31 = v23;
            }

            else
            {
              v31 = *(a3 + i + 432) * 9.0;
            }

            if (v29 >= v30)
            {
              *(a3 + v21 + 152) = 0;
              *(v25 + 248) = 20;
              --*(a3 + 3);
              ++*(a3 + 4);
            }

            else if (v29 > v31)
            {
              v32 = *(a3 + i);
              NK_Get_Smooth_Excl_Weight(v29, v31, v30);
              *(a3 + i) = v32 / v33;
              *(a3 + v21 + 3992) = 1;
            }
          }
        }
      }
    }

    ++v21;
    v18 += 8;
    a2 += 4;
  }
}

void NK_Get_Smooth_Excl_Weight(double a1, double a2, double a3)
{
  if (a1 <= a2)
  {
    gn_report_assertion_failure("NK_Get_Smooth_Excl_Weight:  i<=l");
  }

  else if (a1 >= a3)
  {
    gn_report_assertion_failure("NK_Get_Smooth_Excl_Weight:  i>=u");
  }

  else if ((1.0 / (exp(((a1 - a2) / (a3 - a2) + -0.5) * 10.0) + 1.0) + -0.00669285092) / 0.986614298 <= 0.0000001)
  {
    gn_report_assertion_failure("NK_Get_Smooth_Excl_Weight:  w<=0");
  }
}

void NK_Meas_Outlier_Check(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a1;
  v50[48] = *MEMORY[0x29EDCA608];
  if (a1 != 1)
  {
    if (a4)
    {
      v10 = 0;
      v13 = 0;
      v14 = a4 + 152;
      do
      {
        if (*(v14 + v13) == 1)
        {
          v15 = *(v14 + 4 * v13 + 96);
          if ((v15 - 1) >= 0x1D)
          {
            if (v15)
            {
              EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
            }

            else
            {
              v49[v10++] = v13;
            }
          }
        }

        ++v13;
      }

      while (v13 != 48);
      if (v10 >= 1)
      {
        v19 = v49;
        v20 = v10;
        do
        {
          v21 = *v19++;
          v50[v21] = *(v6 + 2024 + 8 * v21);
          --v20;
        }

        while (v20);
      }

      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pDO");
      v10 = 0;
      if (a5)
      {
LABEL_28:
        v22 = 0;
        v23 = a5 + 152;
        v24 = v10;
        do
        {
          if (*(v23 + v22) == 1)
          {
            v25 = *(v23 + 4 * v22 + 96);
            if ((v25 - 1) >= 0x1D)
            {
              if (v25)
              {
                EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
              }

              else
              {
                v49[v24++] = v22;
              }
            }
          }

          ++v22;
        }

        while (v22 != 48);
        if (v10 < v24)
        {
          v26 = v24 - v10;
          v27 = &v49[v10];
          do
          {
            v28 = *v27++;
            v50[v28] = *(a5 + 2024 + 8 * v28);
            --v26;
          }

          while (v26);
        }

        v9 = 0;
        v10 = v24;
        goto LABEL_43;
      }
    }

    gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pDR");
    v9 = 0;
    goto LABEL_43;
  }

  v9 = a3;
  if (!a3)
  {
    gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pPR");
    v29 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v10 = 0;
  for (i = 0; i != 48; ++i)
  {
    if (*(v9 + i + 152) == 1)
    {
      v12 = *(v9 + 4 * i + 248);
      if ((v12 - 1) >= 0x1D)
      {
        if (v12)
        {
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        }

        else
        {
          v49[v10++] = i;
        }
      }
    }
  }

  if (v10 >= 1)
  {
    v16 = v49;
    v17 = v10;
    do
    {
      v18 = *v16++;
      v50[v18] = *(v9 + 2408 + 8 * v18);
      --v17;
    }

    while (v17);
  }

LABEL_43:
  v29 = v50;
  VecSortIndexAscR8(v50, v10, v49, 1);
LABEL_44:
  if (a2)
  {
    v30 = 0;
  }

  else
  {
    v30 = v8 == 1;
  }

  if (v30)
  {
    v31 = 6;
  }

  else
  {
    v31 = 5;
  }

  v32 = (v10 - 1);
  if (v32 > v31)
  {
    v48 = v6 + 152;
    for (j = v10 - 3; ; --j)
    {
      v34 = v49[v32];
      v35 = v29[v34];
      v36 = fabs(v35 / v29[v49[j + 1]]);
      v37 = fabs(v35 / v29[v49[j]]);
      v38 = (v36 + v36) * 0.333333333 + -1.0;
      v39 = (v37 + v37) * 0.25 + -1.0;
      if (v38 <= 0.0 && v39 <= 0.0)
      {
        return;
      }

      if (v6 && v8 != 1 && (*(v48 + v34) & 1) != 0)
      {
        break;
      }

      if (v8 == 1)
      {
        v8 = 1;
      }

      else
      {
        v9 = a5;
        v8 = 3;
      }

      if (v9)
      {
        goto LABEL_62;
      }

      gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad p_SM");
LABEL_75:
      if (--v32 <= v31)
      {
        return;
      }
    }

    v8 = 2;
    v9 = v6;
LABEL_62:
    if (fabs(v35) > cOutlierMinResid[v8 - 1])
    {
      v40 = v8;
      v41 = v31;
      v42 = v6;
      v43 = a5;
      if (v38 < 1.0 && v39 < 1.0)
      {
        v45 = v9 + 8 * v34;
        v46 = *(v45 + 3608);
        if (v38 <= v39)
        {
          v38 = v39;
        }

        NK_Get_Smooth_Excl_Weight(v38, 0.0, 1.0);
        *(v45 + 3608) = v46 / v47;
        *(v9 + v34 + 3992) = 1;
      }

      else
      {
        if ((*(v9 + 152 + v34) & 1) == 0)
        {
          gn_report_assertion_failure("NK_Meas_Outlier_Check:  Exclusion index fail");
        }

        *(v9 + 152 + v34) = 0;
        *(v9 + 4 * v34 + 248) = 19;
        --*(v9 + 3);
        ++*(v9 + 4);
      }

      a5 = v43;
      v6 = v42;
      v31 = v41;
      v8 = v40;
    }

    goto LABEL_75;
  }
}

void NK_Reject_DO_For_Rejected_PR(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v28[12] = *MEMORY[0x29EDCA608];
  v24 = a4 + 6800;
  v25 = 0.0;
  v8 = a4 + 14112;
  v22 = a4 + 13960;
  v9 = a4 + 8536;
  v21 = a4 + 8384;
  v10 = (a4 + 8632);
  do
  {
    v11 = a4 + 4 * v7;
    v12 = *(v11 + 3056);
    if (v12 > 0x1D)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
    }

    else if (((1 << v12) & 0x3FFFF7FE) == 0 && (v12 || *(v24 + v7) != 1))
    {
      goto LABEL_8;
    }

    if (*(v8 + v7) != 1)
    {
      goto LABEL_6;
    }

    v13 = v10[1394];
    if ((v13 - 1) < 0x1D)
    {
      goto LABEL_6;
    }

    if (v13)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
LABEL_6:
      if (*(v9 + v7) != 1 || (*v10 - 1) < 0x1D)
      {
        goto LABEL_8;
      }

      if (*v10)
      {
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        goto LABEL_8;
      }

      v20 = 0;
      v14 = 2;
      v15 = v21;
      goto LABEL_18;
    }

    v14 = 3;
    v20 = 1;
    v15 = v22;
LABEL_18:
    NK_Obs_Equ_SV(v14, *(v15 + v7 + 200), *a2, a1, v28, *(a4 + 656));
    v16 = (v15 + 8 * v7);
    v28[11] = v16[253];
    v17 = v16[505];
    v18 = v16[451];
    umeas(a3 + 872, 0xBu, -(v17 * v18), v28, v27, v26, &v25, 1.0e20);
    v19 = *(v11 + 3056);
    if ((v19 - 1) < 0x1D)
    {
      goto LABEL_19;
    }

    if (v19)
    {
      EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
LABEL_19:
      *(v15 + v7 + 152) = 0;
      *(v15 + 4 * v7 + 248) = 24;
      --*(v15 + 3);
      ++*(v15 + 4);
      goto LABEL_8;
    }

    if (*(v24 + v7) != 1)
    {
      goto LABEL_19;
    }

    if ((v20 & 1) == 0)
    {
      umeas(a3 + 872, 0xBu, v17 * v18 * *(v9 + 8 * v7 - 2120), v28, v27, v26, &v25, 1.0e20);
      *(v15 + v7 + 3992) = 1;
    }

LABEL_8:
    ++v7;
    a1 += 56;
    a2 += 4;
    ++v10;
  }

  while (v7 != 48);
}

void GPS_State_Update_Init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v7 = a7;
  v40 = *MEMORY[0x29EDCA608];
  *(a1 + 306) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  v11 = xmmword_299729020;
  v12 = xmmword_299728F20;
  v13 = 140;
  v14 = vdupq_n_s64(4uLL);
  v15 = a7;
  v16 = vdupq_n_s64(0x8BuLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v12)), *v11.i8).u8[0])
    {
      v15[46] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x8BuLL), *&v12)), *&v11).i8[2])
    {
      v15[94] = 0;
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x8BuLL), *&v11))).i32[1])
    {
      v15[142] = 0;
      v15[190] = 0;
    }

    v11 = vaddq_s64(v11, v14);
    v12 = vaddq_s64(v12, v14);
    v15 += 192;
    v13 -= 4;
  }

  while (v13);
  if (ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    v17 = 0;
    v18 = 60;
    v19 = 15;
    do
    {
      if (*(a4 + v17 + 39303) == 1)
      {
        *&v39[24] = 0;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        memset(v39, 0, 21);
        ST_Update_Table(v17, v19, v18, &v29, a2, a1, a5, a4, a6);
        v20 = *(a2 + 12);
        if ((v20 - 1) <= 1)
        {
          *(a1 + 306) = 1;
          if (v20 == 1)
          {
            if (v19 <= 0)
            {
              v19 = 15;
            }

            else
            {
              --v19;
            }
          }

          else if (v18 <= 0)
          {
            v18 = 59;
          }

          else
          {
            v18 -= 3;
          }

          v21 = v38;
          v7[8] = v37;
          v7[9] = v21;
          v22 = *&v39[16];
          v7[10] = *v39;
          v7[11] = v22;
          v23 = v34;
          v7[4] = v33;
          v7[5] = v23;
          v24 = v36;
          v7[6] = v35;
          v7[7] = v24;
          v25 = v30;
          *v7 = v29;
          v7[1] = v25;
          v26 = v32;
          v7[2] = v31;
          v7[3] = v26;
        }
      }

      ++v17;
      v7 += 12;
    }

    while (v17 != 149);
    if (*(a1 + 306))
    {
      *(a1 + 4) = *(a2 + 8);
      *a1 = *(a2 + 4);
    }
  }
}

uint64_t ST_Get_Time(uint64_t a1, __int16 *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 5);
  v4 = *a1;
  *a2 = *(a1 + 16);
  *a3 = *(a1 + 24);
  if (v3)
  {
    v5 = v4 <= 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = *(a1 + 8);
    v15 = 0;
    v13 = 0.0;
    v14 = 0.0;
    if (Get_FSP_Time(v8, &v15, &v13, &v14, &v16))
    {
      if (v14 <= 40000.0)
      {
        v10 = v14;
        if (v14 >= 2)
        {
          if (v10 >= 0x190)
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }

          if (v10 >= 9)
          {
            v9 = v11;
          }

          else
          {
            v9 = 3;
          }
        }

        else
        {
          v9 = 4;
        }
      }

      else
      {
        v9 = 0;
      }

      if (v9 > v4)
      {
        *a2 = v15;
        *a3 = v13;
        LOBYTE(v3) = 1;
        v4 = v9;
      }
    }

    return (v4 > 0) & v3;
  }

  return v3;
}

void ST_Update_Table(unsigned int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v174 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x95)
  {
    gn_report_assertion_failure("ST_Update_Table : sv < NUM_POS");
  }

  Constell_Pos = Get_Constell_Pos(a1);
  if ((Constell_Pos - 1) <= 4)
  {
    v18 = Constell_Pos;
    v135 = a3;
    v136 = a2;
    v153 = 0;
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v140 = 0u;
    v130 = Num_Pos[Constell_Pos - 1];
    v133 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
    *(a4 + 184) = 0;
    v134 = a6 + 6;
    *(a6 + 6 + 2 * a1) = 0;
    if (a1 >= 0x95)
    {
      gn_report_assertion_failure("ST_Get_GPS_Orbit : sv < NUM_POS");
    }

    v137 = Get_Constell_Pos(a1);
    v19 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
    v20 = v19;
    v132 = LongPrnIdx_To_ShortPrnIdx(v19, &v137);
    v21 = Num_Pos_Idx_To_GNSS_Id(a1);
    *(a5 + 12) = 0;
    if (*(a8 + v20 + 33605) != 1 || (*(a7 + v20 + 253) & 1) != 0)
    {
      goto LABEL_236;
    }

    v22 = v21;
    v23 = v137;
    if (v137 == 2)
    {
      v24 = a8 + v20;
      if (v24[37522] != 1)
      {
        goto LABEL_236;
      }

      v24[37878] = 0;
      v24[38056] = 0;
      *(a5 + 12) = 1;
      if (*(a8[2035] + v132))
      {
        *(a5 + 16) = 1;
        Get_GPS_Kep_Ephemeris(2, v21, a8 + 108 * v132 + 12760, &v140);
        v25 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v140);
        v26 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v25, &v140);
        v27 = a8[2035];
        if (v26)
        {
          if ((*(v27 + v132) & 1) != 0 && *(a8[2034] + v132) == 1)
          {
            v28 = HIDWORD(a8[8 * v132 + 1409]);
            v29 = (~v28 & 0xF00) != 0 ? ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::glonURE_table[(v28 >> 8) & 0xF] : 0xFFFF;
            v70 = SHIBYTE(v140) > 11 ? 0xFFFF : ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::gpsURE_table[SHIBYTE(v140)];
            if (v70 > v29)
            {
              *(a5 + 12) = 0;
            }
          }
        }

        else
        {
          *(a5 + 12) = 0;
          *(v27 + v132) = 0;
        }
      }

      v37 = *(a5 + 12);
      *(a8[2039] + v132) = v37 == 1;
LABEL_166:
      if (v37 == 1)
      {
        v82 = a2;
        if (*(a5 + 16) & 1) != 0 || (*(a8 + v133 + 38946))
        {
          v83 = a3;
          goto LABEL_237;
        }

        v84 = a1 - v130;
        if (*(a8 + v133 + 37700) == 1 && *(a8 + v133 + 33605) == 1)
        {
          if (v18 > 3)
          {
            if (v18 == 4)
            {
              if (*(a8 + 44 * v84 + 31931) <= 0x93u)
              {
                v113 = 1356;
              }

              else
              {
                v113 = 1357;
              }

              v85 = v113 + *(a8 + 22 * v84 + 15964);
              goto LABEL_182;
            }

            if (v18 == 5)
            {
              v85 = *(a8 + 22 * v84 + 5389);
              goto LABEL_182;
            }
          }

          else
          {
            if (v18 == 1)
            {
              v85 = *(a8 + 22 * v84 + 3513);
              goto LABEL_182;
            }

            if (v18 == 3)
            {
              v85 = *(a8 + 18 * v84 + 11541) + 1024;
LABEL_182:
              v86 = *(a5 + 8) - v85;
              if (v86 < 0)
              {
                v86 = -v86;
              }

              if (v86 <= 2)
              {
                v87 = *(a5 + 8);
                *v155 = 0;
                *&v154 = 0;
                *(&v154 + 7) = 0;
                memset(&v155[4], 0, 76);
                if (v18 > 3)
                {
                  if (v18 == 4)
                  {
                    memset(v165, 0, 72);
                    v164 = 0uLL;
                    BDS_AlmInt2Real(a8 + 44 * v84 + 31920, &v164);
                    *&v154 = v164;
                    *&v155[72] = *&v165[16];
                    v89 = 0.942477796;
                    if (BYTE11(v164) <= 5u)
                    {
                      v89 = 0.0;
                    }

                    *&v155[24] = *&v165[8];
                    *&v155[32] = *&v165[48] + v89;
                    *&v155[48] = *&v165[24];
                    *&v155[56] = *v165;
                    *&v155[40] = *&v165[40];
                    *&v155[8] = *&v165[56];
                    *&v155[4] = HIDWORD(v164) + 14;
                    *v155 = WORD4(v164) + 1356;
                    if (HIDWORD(v164) + 14 > 604799)
                    {
                      *&v155[4] = HIDWORD(v164) - 604786;
                      *v155 = WORD4(v164) + 1357;
                    }

                    *&v155[64] = *&v165[32] + 0.0010208961;
                    DWORD2(v154) = 4;
                    BYTE12(v154) = BYTE11(v164);
                    BYTE13(v154) = BYTE10(v164) ^ 1;
                  }

                  else
                  {
                    Get_QZSS_Kep_Almanac(a8 + 44 * v84 + 10768, &v154);
                    v87 = *(a5 + 8);
                  }
                }

                else if (v18 == 1)
                {
                  Get_GPS_Kep_Almanac(a8 + 44 * v84 + 7016, &v154);
                }

                else
                {
                  if (v18 != 3)
                  {
                    __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 862, "FALSE");
                  }

                  memset(v165, 0, 75);
                  v164 = 0uLL;
                  GAL_AlmInt2Real(a8 + 36 * v84 + 23072, &v164);
                  *&v155[8] = *&v165[56];
                  *&v155[24] = *&v165[8];
                  *&v155[32] = *&v165[16] + 0.977384381;
                  *&v155[40] = *&v165[32];
                  *&v155[48] = *&v165[48];
                  *(&v154 + 4) = DWORD1(v164) | 0x300000000;
                  BYTE12(v154) = BYTE8(v164);
                  BYTE13(v154) = v165[74] | (8 * v165[73]);
                  BYTE14(v154) = BYTE9(v164);
                  *v155 = WORD5(v164) + 1024;
                  *&v155[4] = HIDWORD(v164);
                  *&v155[56] = *v165 + 5440.5882;
                  *&v155[64] = *&v165[24];
                  *&v155[72] = *&v165[40];
                }

                v82 = v136;
                v90 = Kep_Check_Almanac(v87, &v154);
                v83 = a3;
                if (!ST_Check_Alm_Kep_Err("ST_Update_Table", v90, &v154))
                {
                  goto LABEL_237;
                }

                v168 = 0u;
                v169 = 0u;
                v166 = 0u;
                v167 = 0u;
                memset(&v165[32], 0, 48);
                v164 = 0u;
                *v165 = 0u;
                v170 = *&v155[48];
                *&v171 = *&v155[64];
                *(&v171 + 1) = *&v155[32];
                *&v172 = *&v155[72];
                *(&v172 + 1) = *&v155[24];
                v173 = *&v155[40];
                *&v165[16] = *&v155[8];
                *&v165[8] = *&v155[4];
                *&v165[2] = *v155;
                *(&v164 + 4) = *(&v154 + 4);
                WORD6(v164) = WORD6(v154);
                if (ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v140, &v164, 2))
                {
                  *(a8 + v133 + 38946) = 1;
                  goto LABEL_237;
                }

                if (Get_Constell_Prn(v133) == 2)
                {
                  __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 939, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
                }

                v91 = a8 + v133;
                v91[38234] = 1;
                v91[37344] = 0;
                goto LABEL_208;
              }

              if (v18 <= 2)
              {
                if (v18 == 1)
                {
                  v129 = 0;
                  v131 = 0;
                  v88 = a8 + 108 * v84 + 104;
                }

                else
                {
                  v88 = 0;
                  v129 = 0;
                  v131 = 0;
                }
              }

              else if (v18 == 3)
              {
                v88 = 0;
                v129 = 0;
                v131 = &a8[11 * v84 + 2092];
              }

              else if (v18 == 4)
              {
                v88 = 0;
                v129 = a8 + 100 * v84 + 24520;
                v131 = 0;
              }

              else
              {
                v129 = 0;
                v131 = 0;
                v88 = a8 + 108 * v84 + 8608;
              }

              v92 = 0;
              v93 = a8 + 4668;
              v94 = 1;
              while (1)
              {
                v95 = Get_Constell_Pos(v92);
                v96 = v95 - 1;
                if ((v95 - 1) > 6)
                {
                  if (v92 == a1)
                  {
                    goto LABEL_235;
                  }

                  v98 = 0;
                  v97 = v92;
                }

                else
                {
                  if (v92 == a1)
                  {
                    goto LABEL_235;
                  }

                  v97 = v92 - Num_Pos[v96];
                  v98 = Num_Prn[v96];
                }

                if (*(v93 + v98 + v97) != 1)
                {
                  goto LABEL_235;
                }

                if ((v18 & 3) == 1)
                {
                  if (v95 == 5)
                  {
                    v99 = a8 + 1076;
                  }

                  else
                  {
                    if (v95 != 1)
                    {
                      goto LABEL_228;
                    }

                    v99 = a8 + 13;
                  }

                  v100 = v99 + 108 * v97;
                  v101 = 8;
                  while (*&v88[v101] == *&v100[v101])
                  {
                    v101 += 4;
                    if (v101 == 104)
                    {
                      goto LABEL_256;
                    }
                  }
                }

LABEL_228:
                if (v18 == 3 && v95 == 3)
                {
                  if (Is_GAL_IntEph_Same(v131, &a8[11 * v97 + 2092]))
                  {
                    goto LABEL_256;
                  }
                }

                else if (v18 == 4 && v95 == 4 && Is_BDS_IntEph_Same(v129, a8 + 100 * v97 + 24520))
                {
LABEL_256:
                  v83 = v135;
                  v82 = v136;
                  if (!v94)
                  {
                    goto LABEL_237;
                  }

                  v108 = Num_Pos_Idx_To_GNSS_Id(a1);
                  LOBYTE(v164) = v108;
                  v109 = Num_Pos_Idx_To_GNSS_Id(v92);
                  BYTE1(v164) = v109;
                  if (!ST_Get_SNR_Levels(a9, v18, &v164, &v154))
                  {
                    goto LABEL_237;
                  }

                  if (BYTE1(v154) + 15 < v154)
                  {
                    goto LABEL_261;
                  }

                  if (v154 + 15 >= BYTE1(v154))
                  {
                    goto LABEL_237;
                  }

                  v109 = v108;
LABEL_261:
                  v110 = GNSS_SVId_Constell_To_Num_Pos_Idx(v109, v18);
                  v111 = v110;
                  v112 = Num_Pos_Idx_To_Num_Prn_Idx(v110);
                  if (Get_Constell_Prn(v112) == 2)
                  {
                    __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 998, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
                  }

                  *(a8 + v112 + 38234) = 1;
                  v133 = v112;
                  *(v93 + v112) = 0;
                  if (a1 != v111)
                  {
LABEL_237:
                    v102 = *(a5 + 12);
                    if ((v102 - 1) <= 1)
                    {
                      if (v102 == 1)
                      {
                        v103 = v82;
                      }

                      else
                      {
                        v103 = v83;
                      }

                      v104 = -v103;
                      *(v134 + 2 * a1) = v104;
                      v105 = *(a5 + 4) - v104;
                      if (v105 <= 604799)
                      {
                        v106 = v105;
                      }

                      else
                      {
                        v106 = v105 - 604800;
                      }

                      if (v105 <= 604799)
                      {
                        v107 = *(a5 + 8);
                      }

                      else
                      {
                        v107 = *(a5 + 8) + 1;
                      }

                      if (DWORD2(v140) == 4 && v102 == 1 && BYTE12(v140) <= 5u)
                      {
                        Kep_Calc_SV_Ref_State_BDS_GEO(1, v107, v106, &v140, a4);
                      }

                      else
                      {
                        Kep_Calc_SV_Ref_State(v102, v107, v106, &v140, a4);
                      }

                      if (*(a5 + 12) == 1 && *(a8 + v133 + 38768) == 1)
                      {
                        *(a4 + 166) += 1000;
                      }
                    }

                    return;
                  }

LABEL_208:
                  *(a5 + 12) = 0;
                  goto LABEL_237;
                }

LABEL_235:
                v94 = v92++ < 0x94;
                if (v92 == 149)
                {
                  goto LABEL_236;
                }
              }
            }
          }

          EvCrt_Illegal_Default("ST_Update_Table", 841);
        }

        v85 = 0x7FFF;
        goto LABEL_182;
      }

LABEL_236:
      v83 = v135;
      v82 = v136;
      goto LABEL_237;
    }

    v128 = a8 + 4668;
    if ((*(a8 + v20 + 37344) & 1) == 0 && (*(a8 + v20 + 37522) & 1) == 0)
    {
      if ((*(a8 + v20 + 37700) & 1) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_142;
    }

    *(a8 + v20 + 37878) = 0;
    *(a8 + v20 + 38056) = 0;
    *(a5 + 12) = 1;
    if (v23 <= 3)
    {
      if (v23)
      {
        if (v23 != 1)
        {
          if (v23 == 3)
          {
            v30 = *(a8[2076] + v132);
            v31 = *(a8[2077] + v132);
            memset(v138, 0, 20);
            memset(&v138[24], 0, 124);
            memset(&v138[152], 0, 41);
            v139 = 0;
            if (v30 == 1 && v31)
            {
              v32 = &a8[11 * v132];
              v33 = 2488;
              v34 = (v32 + 2488);
              if (*(v32 + 19919) <= *(v32 + 16751))
              {
                v114 = 0;
                v120 = 1;
                goto LABEL_86;
              }

              v164 = 0uLL;
              *&v165[8] = 0;
              *v165 = 0;
              memset(&v165[16], 0, 64);
              v166 = 0uLL;
              v167 = 0uLL;
              v168 = 0uLL;
              v169 = 0uLL;
              v170 = 0uLL;
              v171 = 0uLL;
              v172 = 0uLL;
              v173 = 0;
              v154 = 0uLL;
              *&v155[8] = 0;
              *v155 = 0;
              memset(&v155[16], 0, 64);
              v156 = 0uLL;
              v157 = 0uLL;
              v158 = 0uLL;
              v159 = 0uLL;
              v160 = 0uLL;
              v161 = 0uLL;
              v162 = 0uLL;
              v163 = 0;
              GAL_EphInt2Real((v32 + 2092), v138);
              GAL_EphReal2Kep(v138, &v164);
              v35 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v164);
              v119 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v35, &v164);
              if (!v119)
              {
                *(a8[2076] + v132) = 0;
              }

              GAL_EphInt2Real(v34, v138);
              GAL_EphReal2Kep(v138, &v154);
              v36 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v154);
              if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v36, &v154))
              {
                *(a8[2077] + v132) = 0;
                if (!v119)
                {
                  goto LABEL_119;
                }

LABEL_111:
                v120 = 0;
                v115 = 0;
                goto LABEL_112;
              }

              if (v119)
              {
                if (!ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v164, &v154, 1))
                {
                  v114 = 0;
                  *(v128 + v20) = 0;
                  v120 = 1;
                  *(a8 + v20 + 38234) = 1;
LABEL_71:
                  v33 = 2488;
LABEL_86:
                  v115 = 1;
                  goto LABEL_113;
                }

                goto LABEL_111;
              }
            }

            else
            {
              if (v30)
              {
                v115 = v31;
                v120 = 0;
LABEL_112:
                v114 = 1;
                v33 = 2092;
LABEL_113:
                GAL_EphInt2Real(&a8[11 * v132 + v33], v138);
                *(a8[2080] + v132) = v120;
                if (HIBYTE(v139) != 2 && BYTE4(v139) != 1 && v138[15] != 255)
                {
                  v72 = 0;
                  v123 = 0;
                  *(a8 + v138[14] + 16699) = 0;
LABEL_124:
                  GAL_EphReal2Kep(v138, &v140);
                  v76 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v140);
                  if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(GAL)", v76, &v140))
                  {
                    v54 = 1;
                  }

                  else
                  {
                    if (v114)
                    {
                      *(a8[2076] + v132) = 0;
                    }

                    v54 = v115;
                    if (v115)
                    {
                      v54 = 0;
                      *(a8[2077] + v132) = 0;
                    }
                  }

                  if (v72)
                  {
                    HIBYTE(v140) = v123;
                  }

LABEL_132:
                  if (v54)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_133;
                }

                v116 = v138[15];
                v118 = BYTE4(v139);
                v124 = HIBYTE(v139);
                *&v164 = 0x4050000000000000;
                v73 = v138[14];
                *(a8 + v138[14] + 16699) = 1;
                *&v154 = 0;
                if (!R8_EQ(&v164, &v154))
                {
                  if (v116 == 255)
                  {
                    v74 = 64;
                  }

                  else
                  {
                    *&v164 = 0x4051800000000000;
                    v74 = 70;
                  }

                  v75 = v124;
                  v123 = 8;
                  EvLog_v("ST_Get_GPS_Orbit: USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d FOM %d Sigma %d", *(a5 + 4), v73, v75, v118, v116 == 255, 8, v74);
                  v72 = 1;
                  goto LABEL_124;
                }

                EvLog_v("ST_Get_GPS_Orbit: DO NOT USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d Sigma %d", *(a5 + 4), v73, v124, v118, v116 == 255, 64);
LABEL_119:
                v54 = 0;
                goto LABEL_132;
              }

              if (!v31)
              {
                goto LABEL_119;
              }
            }

            v114 = 0;
            v120 = 1;
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        v45 = 0;
        *&v164 = 0;
        *(&v164 + 1) = 0x6300000000000000;
        *&v165[8] = 0;
        *v165 = 0;
        memset(&v165[16], 0, 64);
        v166 = 0u;
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0;
        *&v154 = 0;
        *(&v154 + 1) = 0x6300000000000000;
        *&v155[8] = 0;
        *v155 = 0;
        memset(&v155[16], 0, 64);
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0;
        v46 = v132;
        if (*(a8[6] + v132) == 1)
        {
          Get_GPS_Kep_Ephemeris(1, v21, a8 + 108 * v132 + 104, &v164);
          v47 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v164);
          v48 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v47, &v164);
          v45 = 1;
          if (!v48)
          {
            v45 = 0;
            *(a8[6] + v132) = 0;
          }
        }

        if (*(a8[7] + v132) == 1)
        {
          v126 = v45;
          Get_GPS_Kep_Ephemeris(v137, v22, a8 + 108 * v132 + 3560, &v154);
          v49 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v154);
          if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v49, &v154))
          {
            if (v126 && SHIBYTE(v154) > SHIBYTE(v164))
            {
              v50 = &v164;
              if (ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v164, &v154, 1))
              {
                v51 = 0;
LABEL_89:
                v57 = v50[11];
                v150 = v50[10];
                v151 = v57;
                v152 = v50[12];
                v153 = *(v50 + 26);
                v58 = v50[7];
                v146 = v50[6];
                v147 = v58;
                v59 = v50[9];
                v148 = v50[8];
                v149 = v59;
                v60 = v50[3];
                v142 = v50[2];
                v143 = v60;
                v61 = v50[5];
                v144 = v50[4];
                v145 = v61;
                v62 = v50[1];
                v140 = *v50;
                v141 = v62;
                v54 = 1;
                v63 = a8[10];
LABEL_93:
                *(v63 + v46) = v51;
                goto LABEL_132;
              }

              *(v128 + v20) = 0;
              v51 = 1;
              *(a8 + v20 + 38234) = 1;
            }

            else
            {
              v51 = 1;
            }

            v50 = &v154;
            goto LABEL_89;
          }

          *(a8[7] + v132) = 0;
          LOBYTE(v45) = v126;
        }

        v54 = 0;
        if ((v45 & 1) == 0)
        {
          goto LABEL_132;
        }

        v51 = 0;
        v50 = &v164;
        goto LABEL_89;
      }

LABEL_133:
      if (BYTE14(v140) == 255)
      {
        if (v137 > 6)
        {
          EvCrt_Illegal_Default("ST_Get_GPS_Orbit", 1820);
        }

        else if (((1 << v137) & 0x3A) != 0)
        {
          EvLog_v("ST_Get_GPS_Orbit:  %c %d  Alm looking Eph timed-out", aXgrebqs[v137], v132);
        }
      }

      *(a5 + 12) = 0;
      if (*(a8 + v20 + 37878))
      {
        goto LABEL_142;
      }

      if (Get_Constell_Prn(v20) == 2)
      {
        __assert_rtn("ST_Get_GPS_Orbit", "GPS_State_Update.cpp", 1844, "Get_Constell_Prn( (U1)i) != GLON_CONSTELL");
      }

      *(v128 + v20) = 0;
      v77 = a8 + v20;
      v77[38768] = 0;
      v77[38234] = 1;
LABEL_140:
      v37 = *(a5 + 12);
      if (v37 == 2)
      {
        goto LABEL_144;
      }

      if (v37)
      {
        goto LABEL_166;
      }

LABEL_142:
      v78 = a8 + v20;
      if (v78[37700] != 1)
      {
        goto LABEL_236;
      }

      v78[38056] = 0;
      v78[38768] = 0;
      *(a5 + 12) = 2;
LABEL_144:
      *v165 = 0;
      *&v164 = 0;
      *(&v164 + 7) = 0;
      memset(&v165[4], 0, 76);
      if (v137 <= 2)
      {
        if (v137)
        {
          if (v137 == 1)
          {
            Get_GPS_Kep_Almanac(a8 + 44 * v132 + 7016, &v164);
            goto LABEL_162;
          }

          if (v137 != 2)
          {
            goto LABEL_158;
          }
        }
      }

      else
      {
        if (v137 <= 4)
        {
          if (v137 == 3)
          {
            memset(v155, 0, 75);
            v154 = 0uLL;
            GAL_AlmInt2Real(a8 + 36 * v132 + 23072, &v154);
            *&v165[8] = *&v155[56];
            *&v165[24] = *&v155[8];
            *&v165[32] = *&v155[16] + 0.977384381;
            *&v165[40] = *&v155[32];
            *&v165[48] = *&v155[48];
            *(&v164 + 4) = DWORD1(v154) | 0x300000000;
            BYTE12(v164) = BYTE8(v154);
            BYTE13(v164) = v155[74] | (8 * v155[73]);
            BYTE14(v164) = BYTE9(v154);
            *v165 = WORD5(v154) + 1024;
            *&v165[4] = HIDWORD(v154);
            *&v165[56] = *v155 + 5440.5882;
            *&v165[64] = *&v155[24];
            *&v165[72] = *&v155[40];
          }

          else
          {
            memset(v155, 0, 72);
            v154 = 0uLL;
            BDS_AlmInt2Real(a8 + 44 * v132 + 31920, &v154);
            *&v164 = v154;
            *&v165[72] = *&v155[16];
            v79 = 0.942477796;
            if (BYTE11(v154) <= 5u)
            {
              v79 = 0.0;
            }

            *&v165[24] = *&v155[8];
            *&v165[32] = *&v155[48] + v79;
            *&v165[48] = *&v155[24];
            *&v165[56] = *v155;
            *&v165[40] = *&v155[40];
            *&v165[8] = *&v155[56];
            *&v165[4] = HIDWORD(v154) + 14;
            *v165 = WORD4(v154) + 1356;
            if (HIDWORD(v154) + 14 > 604799)
            {
              *&v165[4] = HIDWORD(v154) - 604786;
              *v165 = WORD4(v154) + 1357;
            }

            *&v165[64] = *&v155[32] + 0.0010208961;
            DWORD2(v164) = 4;
            BYTE12(v164) = BYTE11(v154);
            BYTE13(v164) = BYTE10(v154) ^ 1;
          }

LABEL_162:
          v80 = Kep_Check_Almanac(*(a5 + 8), &v164);
          if (ST_Check_Alm_Kep_Err("ST_Get_GPS_Orbit", v80, &v164))
          {
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v150 = *&v165[48];
            *&v151 = *&v165[64];
            *(&v151 + 1) = *&v165[32];
            *&v152 = *&v165[72];
            *(&v152 + 1) = *&v165[24];
            v153 = *&v165[40];
            v142 = *&v165[8];
            DWORD2(v141) = *&v165[4];
            WORD1(v141) = *v165;
            *(&v140 + 4) = *(&v164 + 4);
            WORD6(v140) = WORD6(v164);
            v37 = *(a5 + 12);
            goto LABEL_166;
          }

          goto LABEL_164;
        }

        if (v137 == 5)
        {
          Get_QZSS_Kep_Almanac(a8 + 44 * v132 + 10768, &v164);
          goto LABEL_162;
        }

        if (v137 != 6)
        {
LABEL_158:
          EvCrt_Illegal_Default("ST_Get_GPS_Orbit", 1921);
        }
      }

LABEL_164:
      gn_report_assertion_failure("ST_Get_GPS_Orbit : status == TRUE");
      v37 = 0;
      *(a5 + 12) = 0;
      v81 = a8 + v20;
      if (!v81[38056])
      {
        v37 = 0;
        v81[37700] = 0;
        v81[38412] = 1;
      }

      goto LABEL_166;
    }

    if (v23 != 4)
    {
      if (v23 != 5)
      {
        if (v23 != 6)
        {
LABEL_34:
          EvCrt_Illegal_Default("ST_Get_GPS_Orbit", 1792);
          goto LABEL_133;
        }

        goto LABEL_133;
      }

      v52 = 0;
      *&v164 = 0;
      *(&v164 + 1) = 0x6300000000000000;
      *&v165[8] = 0;
      *v165 = 0;
      memset(&v165[16], 0, 64);
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0;
      *&v154 = 0;
      *(&v154 + 1) = 0x6300000000000000;
      *&v155[8] = 0;
      *v155 = 0;
      memset(&v155[16], 0, 64);
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v163 = 0;
      v46 = v132;
      if (*(a8[1069] + v132) == 1)
      {
        Get_GPS_Kep_Ephemeris(5, v21, a8 + 108 * v132 + 8608, &v164);
        v53 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v164);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v53, &v164))
        {
          v52 = 1;
        }

        else
        {
          v52 = 0;
          *(a8[1069] + v132) = 0;
        }
      }

      if (*(a8[1070] + v132) == 1)
      {
        v127 = v52;
        Get_GPS_Kep_Ephemeris(v137, v22, a8 + 108 * v132 + 9688, &v154);
        v55 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v154);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v55, &v154))
        {
          if (v127 && SHIBYTE(v154) > SHIBYTE(v164))
          {
            v56 = &v164;
            if (ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v164, &v154, 1))
            {
              v51 = 0;
LABEL_92:
              v64 = v56[11];
              v150 = v56[10];
              v151 = v64;
              v152 = v56[12];
              v153 = *(v56 + 26);
              v65 = v56[7];
              v146 = v56[6];
              v147 = v65;
              v66 = v56[9];
              v148 = v56[8];
              v149 = v66;
              v67 = v56[3];
              v142 = v56[2];
              v143 = v67;
              v68 = v56[5];
              v144 = v56[4];
              v145 = v68;
              v69 = v56[1];
              v140 = *v56;
              v141 = v69;
              v54 = 1;
              v63 = a8[1073];
              goto LABEL_93;
            }

            *(v128 + v20) = 0;
            v51 = 1;
            *(a8 + v20 + 38234) = 1;
          }

          else
          {
            v51 = 1;
          }

          v56 = &v154;
          goto LABEL_92;
        }

        *(a8[1070] + v132) = 0;
        LOBYTE(v52) = v127;
      }

      v54 = 0;
      if ((v52 & 1) == 0)
      {
        goto LABEL_132;
      }

      v51 = 0;
      v56 = &v164;
      goto LABEL_92;
    }

    v38 = *(a8[3058] + v132);
    v39 = *(a8[3059] + v132);
    *&v138[7] = 0;
    *v138 = 0;
    memset(&v138[16], 0, 168);
    if (v38 == 1 && v39)
    {
      v40 = a8 + 100 * v132;
      v41 = 28220;
      v42 = (v40 + 28220);
      if (v40[28241] <= v40[24541])
      {
        v125 = v132;
        v117 = 0;
        v122 = 1;
        goto LABEL_68;
      }

      v164 = 0uLL;
      *&v165[8] = 0;
      *v165 = 0;
      memset(&v165[16], 0, 64);
      v166 = 0uLL;
      v167 = 0uLL;
      v168 = 0uLL;
      v169 = 0uLL;
      v170 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v173 = 0;
      v154 = 0uLL;
      *&v155[8] = 0;
      *v155 = 0;
      memset(&v155[16], 0, 64);
      v156 = 0uLL;
      v157 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v162 = 0uLL;
      v163 = 0;
      BDS_EphInt2Real((v40 + 24520), v138);
      BDS_EphReal2Kep(v138, &v164);
      v43 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v164);
      v121 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v43, &v164);
      if (!v121)
      {
        *(a8[3058] + v132) = 0;
      }

      BDS_EphInt2Real(v42, v138);
      BDS_EphReal2Kep(v138, &v154);
      v44 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v154);
      if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v44, &v154))
      {
        *(a8[3059] + v132) = 0;
        if (!v121)
        {
          goto LABEL_119;
        }

        v125 = v132;
LABEL_102:
        v122 = 0;
        v39 = 0;
        goto LABEL_103;
      }

      v125 = v132;
      if (v121)
      {
        v39 = 1;
        if (!ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v164, &v154, 1))
        {
          v117 = 0;
          *(v128 + v20) = 0;
          v122 = 1;
          *(a8 + v20 + 38234) = 1;
          v41 = 28220;
          goto LABEL_104;
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (v38)
      {
        v125 = v132;
        v122 = 0;
LABEL_103:
        v117 = 1;
        v41 = 24520;
LABEL_104:
        BDS_EphInt2Real(a8 + 100 * v125 + v41, v138);
        *(a8[3062] + v125) = v122;
        BDS_EphReal2Kep(v138, &v140);
        v71 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), &v140);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(BDS)", v71, &v140))
        {
          v54 = 1;
          goto LABEL_132;
        }

        if (v117)
        {
          *(a8[3058] + v125) = 0;
        }

        if (v39)
        {
          v54 = 0;
          *(a8[3059] + v125) = 0;
          goto LABEL_132;
        }

        goto LABEL_119;
      }

      if (!v39)
      {
        goto LABEL_119;
      }

      v125 = v132;
    }

    v117 = 0;
    v122 = 1;
    v41 = 28220;
LABEL_68:
    v39 = 1;
    goto LABEL_104;
  }
}

void GPS_State_Update(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v90 = *MEMORY[0x29EDCA608];
  if (!ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    return;
  }

  v73 = a5;
  *a2 = 0;
  if (!*(a1 + 306))
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 4);
  v14 = v13 - *a1;
  *a2 = v14;
  v15 = *(a2 + 8);
  if (v15 != *(a1 + 4))
  {
    if (*(a1 + 4) + 1 != v15)
    {
LABEL_7:

      GPS_State_Update_Init(a1, a2, a3, a4, a6, a7, a8);
      return;
    }

    v14 += 604800;
    *a2 = v14;
  }

  if ((v14 - 101) < 0xFFFFFF91)
  {
    goto LABEL_7;
  }

  v16 = 0;
  v74 = a1 + 6;
  *(a1 + 4) = v15;
  v17 = a4 + 39303;
  *a1 = v13;
  v18 = a4 + 4668;
  v69 = a4 + 37700;
  v19 = a4 + 33605;
  v71 = a6 + 253;
  v20 = a8 + 46;
  do
  {
    if (v17[v16] == 1 && *v20)
    {
      v21 = Num_Pos_Idx_To_Num_Prn_Idx(v16);
      v22 = a1 + 2 * v16;
      if (((*(v18 + v21) & 1) != 0 || (*(a4 + v21 + 37522) & 1) != 0 || v69[v21] == 1) && v19[v21] == 1 && (*(v71 + v21) & 1) == 0)
      {
        v23 = (*(v22 + 6) + *a2);
        *(v22 + 6) += *a2;
        if (v23 > 450)
        {
          goto LABEL_7;
        }
      }

      else
      {
        *v20 = 0;
        *(v22 + 6) = 0;
      }
    }

    ++v16;
    v20 += 48;
  }

  while (v16 != 149);
  v24 = 0;
  v25 = 0;
  v26 = a8 + 46;
  memset(v89, 0, 149);
  do
  {
    *(v89 + v24) = 0;
    if (v17[v24] != 1)
    {
      goto LABEL_45;
    }

    v27 = Get_Constell_Pos(v24) - 1;
    if (v27 >= 7)
    {
      v29 = 0;
      v28 = v24;
    }

    else
    {
      v28 = v24 - Num_Pos[v27];
      v29 = Num_Prn[v27];
    }

    v30 = v29 + v28;
    if (!*v26)
    {
      v33 = 1;
      goto LABEL_34;
    }

    if (*v26 != 1)
    {
      if (*(a1 + 2 * v24 + 6) > 60)
      {
        goto LABEL_44;
      }

      v33 = 0;
LABEL_34:
      if (((*(v18 + v30) & 1) != 0 || *(a4 + v30 + 37522) == 1) && v19[v30] == 1 && !*(v71 + v30) || v33 && v69[v30] == 1 && v19[v30] == 1 && (*(v71 + v30) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    v31 = *(v73 + v30);
    v32 = *(a1 + 2 * v24 + 6);
    if (v31 < -2)
    {
      if (v32 <= 60)
      {
        goto LABEL_45;
      }

LABEL_44:
      *(v89 + v24) = 1;
      ++v25;
      goto LABEL_45;
    }

    if (v32 > 5)
    {
      goto LABEL_44;
    }

LABEL_45:
    ++v24;
    v26 += 48;
  }

  while (v24 != 149);
  if (v25 == 1)
  {
    goto LABEL_90;
  }

  if (v25)
  {
    EvLog_d("SV_State_Update: Immediate Updates = ", v25);
LABEL_90:
    v57 = 0;
    do
    {
      v58 = v57;
      if (*(v89 + v57) == 1)
      {
        *&v88[24] = 0;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        memset(v88, 0, 21);
        ST_Update_Table(v57, 15, 60, &v78, a2, a1, a6, a4, a7);
        if (*(a2 + 12))
        {
          *(a1 + 306) = 1;
        }

        else
        {
          *&v88[24] = 0;
          *(v74 + 2 * v58) = 0;
        }

        v59 = v87;
        v60 = &a8[12 * v58];
        v60[8] = v86;
        v60[9] = v59;
        v61 = *&v88[16];
        v60[10] = *v88;
        v60[11] = v61;
        v62 = v83;
        v60[4] = v82;
        v60[5] = v62;
        v63 = v85;
        v60[6] = v84;
        v60[7] = v63;
        v64 = v79;
        *v60 = v78;
        v60[1] = v64;
        v65 = v81;
        --v25;
        v60[2] = v80;
        v60[3] = v65;
      }

      v57 = v58 + 1;
    }

    while (v25);
    goto LABEL_97;
  }

  v34 = 0;
  v35 = *(v73 + 534);
  v36 = a8 + 184;
  v37 = 15;
  v70 = 20;
  v72 = 90;
  v68 = 5;
  v38 = -1;
LABEL_49:
  v39 = &v36[192 * v34];
  do
  {
    Constell_Pos = Get_Constell_Pos(v34);
    v42 = *v39;
    v39 += 192;
    v41 = v42;
    if (v42 && v17[v34] == 1)
    {
      if (!v35 || ((v43 = Constell_Pos - 1, (Constell_Pos - 1) >= 7) ? (v45 = 0, v44 = v34) : (v44 = v34 - Num_Pos[v43], v45 = Num_Prn[v43]), (v46 = *(v73 + v45 + v44), v46 > -3) || v46 == -99))
      {
        v47 = *(v74 + 2 * v34);
        if (v47 >= 0)
        {
          v48 = *(v74 + 2 * v34);
        }

        else
        {
          v48 = -v47;
        }

        if (v41 == 1)
        {
          if (v48 <= v70)
          {
            if (v37 >= 8 && v47 > v68)
            {
              v38 = v34;
              v37 = 8;
              v68 = *(v74 + 2 * v34);
              v51 = v34++ == 148;
              v36 = a8 + 184;
              if (!v51)
              {
                goto LABEL_49;
              }

              v38 = 148;
              goto LABEL_80;
            }
          }

          else
          {
            v37 = 5;
            v70 = v48;
            v38 = v34;
          }
        }

        else if (v41 == 2 && v37 >= 6)
        {
          v49 = v72;
          v50 = v48 > v72;
          if (v48 > v72)
          {
            v37 = 6;
            v49 = v48;
          }

          v72 = v49;
          if (v50)
          {
            v38 = v34;
          }
        }
      }
    }

    ++v34;
  }

  while (v34 != 149);
  if (v37 < 8)
  {
    goto LABEL_88;
  }

LABEL_80:
  v52 = 0;
  v53 = a8 + 46;
  v54 = 90;
  do
  {
    v55 = *v53;
    v53 += 48;
    if (v55 && v17[v52] == 1)
    {
      v56 = *(v74 + 2 * v52);
      if (v56 < 0)
      {
        v56 = -v56;
      }

      if (v56 > v54)
      {
        v54 = v56;
        v38 = v52;
      }
    }

    ++v52;
  }

  while (v52 != 149);
LABEL_88:
  if ((v38 & 0x80000000) == 0)
  {
    v25 = 1;
    *(v89 + v38) = 1;
    goto LABEL_90;
  }

LABEL_97:
  v66 = 0;
  *(a1 + 306) = 0;
  for (i = a8 + 46; v17[v66] != 1 || !*i; i += 48)
  {
    if (++v66 == 149)
    {
      return;
    }
  }

  *(a1 + 306) = 1;
}

BOOL ST_Cross_Check_SVRS_vs_SVRS(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v5 = *v2--;
    v3 = v3 + v5 * v5;
  }

  v6 = (*(a1 + 104) - *(a2 + 104)) * 2.99792458e11;
  v7 = (a2 + 16);
  v8 = 0.0;
  for (j = 4; j > 1; --j)
  {
    v10 = *v7--;
    v8 = v8 + v10 * v10;
  }

  v11 = (*(a1 + 96) - *(a2 + 96)) * 299792458.0;
  v12 = 0.0;
  v13 = 2;
  v14 = sqrt(v8);
  do
  {
    v15 = *(a1 + 8 * v13) - *(a2 + 8 * v13);
    v12 = v12 + v15 * v15;
    v16 = v13-- + 1;
  }

  while (v16 > 1);
  v17 = sqrt(v3) - v14;
  v18 = 0.0;
  v19 = 5;
  do
  {
    v20 = *(a1 + 8 * v19) - *(a2 + 8 * v19);
    v18 = v18 + v20 * v20;
    v21 = v19 - 2;
    --v19;
  }

  while (v21 > 1);
  v22 = sqrt(v12);
  v23 = sqrt(v18) * 1000.0;
  v24 = *(a1 + 112);
  v25 = *(a2 + 112);
  v26 = sqrt(v24 + v25) * 5.0;
  v27 = fabs(v11) <= v26;
  if (fabs(v6) > v26 * 0.05)
  {
    v27 = 0;
  }

  if (fabs(v17) > v26)
  {
    v27 = 0;
  }

  if (v22 > v26 * 10.0)
  {
    v27 = 0;
  }

  v28 = v23 <= v26 * 5.0 && v27;
  if (v28)
  {
    if (g_Enable_Event_Log >= 4u)
    {
      v29 = *(a1 + 184);
      if (v29 > 2)
      {
        v30 = 120;
      }

      else
      {
        v30 = *&asc_29975D220[4 * v29];
      }

      v37 = *(a2 + 184);
      if (v37 > 2)
      {
        v38 = 120;
      }

      else
      {
        v38 = *&asc_29975D220[4 * v37];
      }

      v39 = *(a1 + 176);
      if (v39 > 6)
      {
        v40 = 42;
      }

      else
      {
        v40 = *&aX_1[4 * v39];
      }

      EvLog_v("ST_Cross_Check_SVRS:  %c vs %c  PASS:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v30, v38, *(a1 + 160), v40, *(a1 + 180), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
    }
  }

  else
  {
    v31 = *(a1 + 184);
    if (v31 > 2)
    {
      v32 = 120;
    }

    else
    {
      v32 = *&asc_29975D220[4 * v31];
    }

    v33 = *(a2 + 184);
    if (v33 > 2)
    {
      v34 = 120;
    }

    else
    {
      v34 = *&asc_29975D220[4 * v33];
    }

    v35 = *(a1 + 176);
    if (v35 > 6)
    {
      v36 = 42;
    }

    else
    {
      v36 = *&aX_1[4 * v35];
    }

    EvCrt_v("ST_Cross_Check_SVRS:  %c vs %c  FAIL:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v32, v34, *(a1 + 160), v36, *(a1 + 180), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
  }

  return v28;
}

BOOL ST_Check_Alm_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    for (i = 1; (i & a2) == 0; i *= 2)
    {
LABEL_27:
      if (i >= 0x8000)
      {
        return a2 == 0;
      }
    }

    if (i > 0xFu)
    {
      if (i > 0x3Fu)
      {
        if (i == 64)
        {
          v6 = *(a3 + 56);
          goto LABEL_24;
        }

        if (i == 128)
        {
          v6 = *(a3 + 56);
          goto LABEL_24;
        }
      }

      else
      {
        if (i == 16)
        {
          v6 = *(a3 + 40);
          goto LABEL_24;
        }

        if (i == 32)
        {
          v6 = *(a3 + 40);
          goto LABEL_24;
        }
      }
    }

    else if (i > 3u)
    {
      if (i == 4)
      {
        v6 = *(a3 + 72);
        goto LABEL_24;
      }

      if (i == 8)
      {
        v6 = *(a3 + 72);
        goto LABEL_24;
      }
    }

    else
    {
      if (i == 1)
      {
        v6 = *(a3 + 20);
        goto LABEL_24;
      }

      if (i == 2)
      {
        v6 = *(a3 + 20);
        goto LABEL_24;
      }
    }

    EvCrt_Illegal_Default("ST_Check_Alm_Kep_Err", 2775);
    v6 = 0.0;
LABEL_24:
    if (fabs(v6) >= 0.000001)
    {
      EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %g");
    }

    else
    {
      EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %e");
    }

    goto LABEL_27;
  }

  return a2 == 0;
}

BOOL ST_Check_Eph_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    for (i = 1; (i & a2) == 0; i *= 2)
    {
LABEL_35:
      if (i >= 0x8000)
      {
        return a2 == 0;
      }
    }

    if (i > 0x3Fu)
    {
      if (i > 0x1FFu)
      {
        switch(i)
        {
          case 0x200u:
            v6 = *(a3 + 200);
            goto LABEL_32;
          case 0x400u:
            v6 = *(a3 + 208);
            goto LABEL_32;
          case 0x800u:
            v6 = *(a3 + 208);
            goto LABEL_32;
        }
      }

      else
      {
        switch(i)
        {
          case 0x40u:
            v6 = *(a3 + 168);
            goto LABEL_32;
          case 0x80u:
            v6 = *(a3 + 168);
            goto LABEL_32;
          case 0x100u:
            v6 = *(a3 + 200);
            goto LABEL_32;
        }
      }
    }

    else if (i > 7u)
    {
      switch(i)
      {
        case 8u:
          v6 = *(a3 + 20);
          goto LABEL_32;
        case 0x10u:
          v6 = *(a3 + 24);
          goto LABEL_32;
        case 0x20u:
          v6 = *(a3 + 24);
          goto LABEL_32;
      }
    }

    else
    {
      switch(i)
      {
        case 1u:
          v6 = *(a3 + 20);
          goto LABEL_32;
        case 2u:
          v6 = *(a3 + 20);
          goto LABEL_32;
        case 4u:
          v6 = *(a3 + 20);
          goto LABEL_32;
      }
    }

    EvCrt_Illegal_Default("ST_Check_Eph_Kep_Err", 2845);
    v6 = 0.0;
LABEL_32:
    if (fabs(v6) >= 0.000001)
    {
      EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %g");
    }

    else
    {
      EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %e");
    }

    goto LABEL_35;
  }

  return a2 == 0;
}

BOOL ST_Cross_Check_Eph_Kep_vs_Eph_Kep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = a1;
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (*(a3 + 8) == 4 && *(a3 + 12) <= 5u)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, a1, a2, a3, v13);
  }

  else
  {
    Kep_Calc_SV_Ref_State(1, a1, a2, a3, v13);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (*(a3 + 8) == 4 && a5 == 1 && *(a3 + 12) <= 5u)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, v9, v8, a4, v11);
  }

  else
  {
    Kep_Calc_SV_Ref_State(a5, v9, v8, a4, v11);
  }

  return ST_Cross_Check_SVRS_vs_SVRS(v13, v11);
}

uint64_t ST_Get_SNR_Levels(uint64_t a1, int a2, unsigned __int8 *a3, _WORD *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 32);
  *a4 = 0;
  v7 = (a1 + 1160);
  v8 = (a1 + 1352);
  v9 = 48;
  do
  {
    if (*(v7 - 192) != a2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 - 190);
    if (v10 == *a3 && *v7 > 3)
    {
      v4 = 1;
      v11 = a4;
LABEL_9:
      *v11 = *v8;
      goto LABEL_10;
    }

    if (v10 == a3[1] && *v7 >= 4)
    {
      v5 = 1;
      v11 = a4 + 1;
      goto LABEL_9;
    }

LABEL_10:
    ++v8;
    ++v7;
    --v9;
  }

  while (v9);
  return (v6 == *(a1 + 32)) & v4 & v5;
}

uint64_t GM_Get_Best_SyncSV(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v41 = *MEMORY[0x29EDCA608];
  *a6 = -1;
  *a7 = -1;
  memset(v40, 0, sizeof(v40));
  memset(v38, 0, sizeof(v38));
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v39[0] = v9;
  v39[1] = v9;
  v39[2] = v9;
  v39[3] = v9;
  v39[4] = v9;
  v39[5] = v9;
  memset(v37, 0, sizeof(v37));
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v11 = a2 + 36 * i;
      v12 = *v11;
      if (Is_Legal(*v11) && (~*(v11 + 8) & 0x208) == 0)
      {
        v13 = a3 + 48 * i;
        if (*(v13 + 4) == 1 && *(v13 + 15) == 1)
        {
          v14 = (a1 + 56 * i);
          v15 = *v14;
          v16 = *(v13 + 28);
          if (v12 == 2)
          {
            v16 %= 57600;
            v15 %= 57600;
          }

          v17 = 0;
          v18 = v14[1] - *(v13 + 32) + 1534500 * (v15 - v16);
          if (v18 < 0)
          {
            v19 = -511;
          }

          else
          {
            v19 = 511;
          }

          v20 = (v19 + v18) / 1023;
          *(v37 + i) = 1;
          *(v38 + i) = v20;
          while (*(v40 + v17) != v20)
          {
            if (++v17 == 48)
            {
              goto LABEL_18;
            }
          }

          if (v17 < 0x30)
          {
            v21 = *(v39 + v17);
            if (v21 != 0xFFFF)
            {
              v22 = v21 + 1;
              goto LABEL_25;
            }
          }

LABEL_18:
          v17 = 0;
          while (*(v39 + v17) != -1)
          {
            if (++v17 == 48)
            {
              goto LABEL_26;
            }
          }

          if (v17 <= 0x2F)
          {
            *(v40 + v17) = v20;
            v22 = 1;
LABEL_25:
            *(v39 + v17) = v22;
          }
        }
      }

LABEL_26:
      ;
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = 0x8000;
  do
  {
    if (*(v39 + v23) > v25)
    {
      v25 = *(v39 + v23);
      v24 = v23;
    }

    ++v23;
  }

  while (v23 != 48);
  if (a5 && v25 >= 1 && v24 <= 0x2F)
  {
    v26 = 0;
    v27 = (a2 + 8);
    while (1)
    {
      if (*a6 != -1 || *a7 != -1 || *(v37 + v26) != 1 || *(v38 + v26) != *(v40 + v24))
      {
        goto LABEL_43;
      }

      v28 = *v27 & 0x300;
      v29 = a6;
      if (v28 == 768)
      {
        goto LABEL_42;
      }

      if (v28 == 512)
      {
        break;
      }

LABEL_43:
      ++v26;
      v27 += 18;
      if (a5 == v26)
      {
        goto LABEL_44;
      }
    }

    v29 = a7;
LABEL_42:
    *v29 = v26;
    goto LABEL_43;
  }

LABEL_44:
  result = *a6;
  if (result != -1 || (result = GM_Get_Best_SSS(a2, a3, a4, a5), *a6 = result, result != -1))
  {
    if (*(a3 + 48 * result + 4))
    {
      goto LABEL_47;
    }
  }

  Best_ASSS = *a7;
  if (*a7 == -1)
  {
    Best_ASSS = GM_Get_Best_ASSS(a2, a3, a4, a5);
    *a7 = Best_ASSS;
    result = *a6;
  }

  if (Best_ASSS < 0 && (result & 0x80000000) == 0)
  {
    *a7 = result;
    Best_ASSS = result;
    result = *a6;
  }

  if (result != -1 && (*(a3 + 48 * result + 4) & 1) == 0 && Best_ASSS != result && (*(a3 + 48 * Best_ASSS + 4) & 1) == 0)
  {
LABEL_47:
    *a7 = result;
  }

  return result;
}

uint64_t Init_DB_Time_Sync_NV(int *a1, int *a2, _DWORD *a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v44 = 0;
  v43 = 0;
  v41 = 0.0;
  v42 = 0.0;
  v40 = 0;
  v38 = 0.0;
  *v36 = 0;
  *v37 = 0;
  *v34 = 0;
  *v35 = 0;
  v33 = 0;
  v5 = *a1;
  v6 = a1[4];
  if (Core_Load_ApxTime(v6, &v43, &v42, &v44))
  {
    v7 = v44;
    a2[22] = v44;
    v8 = v43;
    *(a2 + 46) = -v43;
    v9 = v42;
    a2[24] = (v42 * 1000.0);
    if (v8 >= 1025 && v7 > *a2)
    {
      *a2 = v7;
      *(a2 + 5) = 1;
      *(a2 + 3) = v9;
      *(a2 + 8) = v8;
      EvLog_v("Init_DBts_NV: ApxG %u %d %g %d", v6, v8, v9, v7);
      v10 = *a2;
      if ((*a2 - 4) <= 4)
      {
        v11 = *(a2 + 3) * 1000.0;
        v12 = -0.5;
        if (v11 > 0.0)
        {
          v12 = 0.5;
        }

        v13 = v11 + v12;
        if (v13 <= 2147483650.0)
        {
          if (v13 >= -2147483650.0)
          {
            v14 = v13;
          }

          else
          {
            v14 = 0x80000000;
          }
        }

        else
        {
          v14 = 0x7FFFFFFF;
        }

        v15 = a2[2];
        v16 = a2[3];
        v17 = v14 - v15;
        LODWORD(v26) = 0;
        LOBYTE(v39) = 0;
        if (Core_Load_TTick_Cal(v15, v16, v14 - v15, &v26, &v39))
        {
          v18 = LOBYTE(v39);
          v19 = LOBYTE(v39) >= 0x5Au ? 6 : 7;
          v20 = LOBYTE(v39) >= 0x1Eu ? v19 : 8;
          if (v20 >= v10)
          {
            v21 = LODWORD(v26);
            Inc_GPS_TOW(SLODWORD(v26) * 0.001, a2 + 3, a2 + 8);
            *a2 = v20;
            EvLog_v("Init_DBts_NV: Calib %d %g %d %d", v21, *(a2 + 3), v17, v18);
          }
        }
      }

      LODWORD(v39) = 0;
      v32 = 0;
      v26 = 0.0;
      API_Get_UTC_Cor(1, &v26);
      GPS_To_Glon_Time(0, *(a2 + 8), *(a2 + 3), v26, &v32, &v39, a2 + 9);
      v22 = LOWORD(v39);
      *(a2 + 34) = LOWORD(v39);
      v23 = v32;
      *(a2 + 33) = v32;
      *(a2 + 64) = 1;
      v24 = *a2;
      a2[15] = *a2;
      EvLog_v("Init_DBts_NV: Glon %d %d %g %d", v23, v22, *(a2 + 9), v24);
      *(a2 + 46) = -*(a2 + 46);
    }
  }

  v39 = 0.0;
  *a3 = v5;
  a3[1] = v6;
  if (Core_Get_Ref_Time(v6, &v41, &v40, &v39))
  {
    return API_Set_Ref_Time(v6, v41, v40, v39);
  }

  if (Core_Get_Glon_Ref_Time(v6, v37, &v37[1], &v38, &v39))
  {
    return API_Set_Ref_Glon_Time(v6, v37[0], v37[1], v38, v39);
  }

  result = Core_Get_UTC_Ref_Time(v6, &v36[1], v36, &v35[1], v35, &v34[1], v34, &v33, &v39);
  if (result)
  {
    LOWORD(v26) = v36[1];
    WORD1(v26) = v36[0];
    WORD2(v26) = v35[1];
    HIWORD(v26) = v35[0];
    v27 = v34[1];
    v28 = v34[0];
    v29 = v33;
    v30 = (v39 * 1000.0);
    v31 = v6;
    return API_Set_Ref_UTC_Time(&v26);
  }

  return result;
}

void NK_Crude_Apx_Pos(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5)
{
  v106 = *MEMORY[0x29EDCA608];
  v9 = (a3 + 27088);
  v10 = mach_continuous_time();
  v11 = *&g_MacClockTicksToMsRelation;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 1) = 0;
  *(v9 + 9) = 0;
  v12 = *v9;
  bzero(v104, 0x240uLL);
  memset(v103, 0, 48);
  if (*(a4 + 3) > 2)
  {
    v73 = v12;
    v77 = v9;
    v74 = (a4 + 2874);
    v75 = (v11 * v10);
    if (*(a3 + 232) == 1 && a4[3] + 604800 * *(a4 + 9) - *(a3 + 264) > 60 || *(a3 + 8272) != 1 || (*(a3 + 8273) & 1) == 0)
    {
      *(a3 + 232) = 0;
    }

    v79 = a4;
    v76 = a3;
    v80 = 0;
    v13 = a1 + 76;
    v14 = a1 + 412;
    v15 = a1 + 268;
    v84 = a1 + 316;
    v81 = a1 + 1232;
    v82 = 0;
    memset(v105, 0, 48);
    v78 = a1 + 1616;
    v16 = 3;
    do
    {
      v17 = 0;
      v18 = v16;
      do
      {
        v19 = (v13 + 4 * v17);
        v20 = *v19;
        if (Is_Legal(*v19) && *(v14 + 4 * v17) >= 10 && *(v15 + v17) >= 0x40u)
        {
          v21 = *(v84 + 2 * v17 + 1) & 3;
          if (v18 == v21)
          {
            *&v102[24] = 0;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            memset(v102, 0, 21);
            v90 = 0;
            v91 = 0;
            memset(v85, 0, sizeof(v85));
            v86 = 0u;
            v87 = 0u;
            v88 = 0u;
            memset(v89, 0, 30);
            if (v20 != 6)
            {
              v22 = (a2 + 192 * GNSS_Id_To_Num_Pos_Idx(v20));
              v23 = v22[9];
              v100 = v22[8];
              v101 = v23;
              v24 = v22[11];
              *v102 = v22[10];
              *&v102[16] = v24;
              v25 = v22[5];
              v96 = v22[4];
              v97 = v25;
              v26 = v22[7];
              v98 = v22[6];
              v99 = v26;
              v27 = v22[1];
              v92 = *v22;
              v93 = v27;
              v28 = v22[3];
              v94 = v22[2];
              v95 = v28;
              if ((*&v102[24] - 1) <= 1)
              {
                v29 = *(v81 + 8 * v17);
                if (v29 < 329771.704)
                {
                  v30 = *v19;
                  if (v30 <= 3)
                  {
                    if (v30 == 2)
                    {
                      v31 = 21884849.4;
                    }

                    else
                    {
                      v31 = 23084019.3;
                      if (v30 == 3)
                      {
                        v31 = 26081943.8;
                      }
                    }
                  }

                  else if (v30 == 4)
                  {
                    if ((*v19 & 0xFF0000u) <= 0xA0000)
                    {
                      v32 = 129;
                    }

                    else
                    {
                      v32 = 81;
                    }

                    v31 = v32 * 299792.458;
                  }

                  else if (v30 == 5 || (v31 = 23084019.3, v30 == 6))
                  {
                    v31 = 38673227.1;
                  }

                  v29 = v29 + v31;
                }

                if (Comp_CurrState(0x258u, *(v79 + 9), &v92, v85, v79[3], v29))
                {
                  *(v105 + v82) = v21;
                  *&v102[4 * v82 + 32] = DWORD2(v89[1]);
                  v33 = &v104[12 * v82 + 8];
                  v34 = &v86;
                  for (i = 4; i != -2; i -= 2)
                  {
                    v36 = *(v34 - 3);
                    if (v36 <= 0.0)
                    {
                      v37 = -0.5;
                    }

                    else
                    {
                      v37 = 0.5;
                    }

                    v38 = v36 + v37;
                    v39 = v38;
                    if (v38 < -2147483650.0)
                    {
                      v39 = 0x80000000;
                    }

                    if (v38 > 2147483650.0)
                    {
                      v39 = 0x7FFFFFFF;
                    }

                    *v33 = v39;
                    v40 = *v34 * 5.25503547;
                    if (v40 <= 0.0)
                    {
                      v41 = -0.5;
                    }

                    else
                    {
                      v41 = 0.5;
                    }

                    v42 = v40 + v41;
                    if (v42 <= 2147483650.0)
                    {
                      if (v42 >= -2147483650.0)
                      {
                        v43 = v42;
                      }

                      else
                      {
                        LOWORD(v43) = 0;
                      }
                    }

                    else
                    {
                      LOWORD(v43) = -1;
                    }

                    *(&v103[3] + 6 * v82 + i) = v43;
                    --v34;
                    --v33;
                  }

                  *(v103 + v82) = *v19;
                  v44 = *(v81 + 8 * v17);
                  if (v21 <= 1)
                  {
                    v45 = *v19;
                    if ((*v19 & 0xFF0000u) <= 0xA0000)
                    {
                      v46 = 129;
                    }

                    else
                    {
                      v46 = 81;
                    }

                    if (v45 == 6)
                    {
                      v47 = 129;
                    }

                    else
                    {
                      v47 = 77;
                    }

                    if (v45 == 5)
                    {
                      v47 = 129;
                    }

                    if (v45 != 4)
                    {
                      v46 = v47;
                    }

                    if (v45 == 3)
                    {
                      v48 = 87;
                    }

                    else
                    {
                      v48 = 77;
                    }

                    if (v45 == 2)
                    {
                      v48 = 73;
                    }

                    if (*v19 <= 3u)
                    {
                      v46 = v48;
                    }

                    v44 = v44 + (v46 - (v44 * 0.00000333564095)) * 299792.458;
                  }

                  v49 = *&v87;
                  v50 = v44 + *(&v86 + 1) * 299792458.0;
                  if (v50 <= 0.0)
                  {
                    v51 = -0.5;
                  }

                  else
                  {
                    v51 = 0.5;
                  }

                  v52 = v50 + v51;
                  v53 = v52;
                  if (v52 < -2147483650.0)
                  {
                    v53 = 0x80000000;
                  }

                  if (v52 > 2147483650.0)
                  {
                    v53 = 0x7FFFFFFF;
                  }

                  *(&v105[9] + v82) = v53;
                  v54 = v49 * 1575420000.0 - *(v78 + 8 * v17);
                  if (v54 <= 0.0)
                  {
                    v55 = -0.5;
                  }

                  else
                  {
                    v55 = 0.5;
                  }

                  v56 = v54 + v55;
                  if (v56 <= 2147483650.0)
                  {
                    if (v56 >= -2147483650.0)
                    {
                      v57 = v56;
                    }

                    else
                    {
                      LOWORD(v57) = 0;
                    }
                  }

                  else
                  {
                    LOWORD(v57) = -1;
                  }

                  ++v80;
                  *(&v105[3] + v82++) = v57;
                }
              }
            }
          }
        }

        ++v17;
      }

      while (v17 != 48);
      v16 = v18 - 1;
    }

    while (v18);
    v77[1] = v80;
    v58 = v105[0];
    *(v77 + 1) = v105[0];
    if (v80 >= 3 && (v80 != 3 || (v58 & 0xFE00) != 0))
    {
      v59 = NK_Crude_Apx_Pos_Core(v104);
      v60 = v59;
      v61 = vmovn_s64(vcvtq_n_s64_f64(*(a3 + 240), 0xFuLL));
      *(a3 + 27096) = v61;
      v77[16] = v59;
      *(v77 + 20) = v61;
      *(a3 + 264) = v79[3] + 604800 * *(v79 + 9);
      v62 = *v74 == 1 && (v74[2] - 3) < 2;
      v63 = v80 < 5 || v59;
      if ((v63 & 1) == 0)
      {
        ++*(a3 + 268);
      }

      v64 = !v59 && !v62 && *(a3 + 268) > 9u;
      if ((v59 || v64) && (v73 & 1) == 0)
      {
        v65 = v79[102];
        *(v76 + 256) = v65;
        *&v92 = 0;
        if (R8_EQ((v76 + 256), &v92) || v65 < -500.0 || v65 > 6000.0)
        {
          *(v76 + 256) = qword_29975D270[*(v76 + 20) < 5u];
        }

        *(v79 + 960) = v60;
        *(v76 + 232) = v60;
        if (Horiz_Diff_Sqd(v79 + 100, (v76 + 240)) <= 5625000000.0)
        {
          LOBYTE(v67) = *v74;
        }

        else
        {
          if (v60)
          {
            v66 = *(v76 + 240);
            v79[102] = *(v76 + 256);
            *(v79 + 50) = v66;
            Geo2ECEF((v79 + 100), &WGS84_Datum, (v79 + 83));
          }

          v67 = *v74;
          if (((v62 | v67 ^ 1) & 1) == 0)
          {
            *(v79 + 58) = 0u;
            *(v79 + 59) = 0u;
            *(v79 + 57) = 0u;
            *(v79 + 43) = 0u;
            *(v79 + 44) = 0u;
            *(v79 + 45) = 0u;
            *(v79 + 46) = 0u;
            *(v79 + 47) = 0u;
            *(v79 + 767) = 0;
            *(v76 + 128) = 1;
            *(v76 + 132) = 35;
            if (v79[3086] < 30000.0 || v67)
            {
              for (j = 0; j != 48; ++j)
              {
                v69 = v84 + 4 * j;
                if (*(v69 + 96) >= 11 && (~*(v84 + 2 * j) & 0x300) != 0)
                {
                  *(v69 + 96) = 10;
                }
              }
            }
          }
        }

        if (!v62 && (v67 & 1) != 0)
        {
          if (v79[2880] >= 900000000.0 || Horiz_Diff_Sqd(v79 + 2877, (v76 + 240)) >= 5625000000.0)
          {
            if (v80 >= 5)
            {
              *v74 = 0;
              *(p_NA + 10) = 0;
              v74[508] = 21;
              EvLog_v("NK_Crude_Apx_Pos: CAP Discrepancy, Clearing Not Trusted Ext Ref Pos");
            }
          }

          else
          {
            v60 = 0;
          }
        }

        if (!v62 && v64)
        {
          *v74 = 0;
          *(p_NA + 10) = 0;
          v74[508] = 22;
          *(a5 + 16480) = 0x7F7F7F7F7F7F7F7FLL;
          *&v70 = 0x7F7F7F7F7F7F7F7FLL;
          *(&v70 + 1) = 0x7F7F7F7F7F7F7F7FLL;
          *(a5 + 16464) = v70;
          *(a5 + 16448) = v70;
          *(a5 + 16432) = v70;
          *(a5 + 16488) = 0u;
          *(a5 + 16504) = 0u;
          *(a5 + 16520) = 0u;
          *(a5 + 16536) = 0;
          EvLog_v("NK_Crude_Apx_Pos: CAP Repeated Fail, Clearing Not Trusted Ext Ref Pos & GLO Slot Number mapping");
        }
      }

      if (*(v76 + 232) == 1 && v60 && (v73 & 1) == 0)
      {
        *v74 = 1;
        v71 = *v79;
        v74[5] = *v79;
        *(v74 + 1) = 0x300000002;
        v79[2877] = *(v76 + 240);
        v79[2878] = *(v76 + 248);
        *(v79 + 1440) = vdupq_n_s64(0x41C9105220000000uLL);
        v79[2882] = 0.0;
        v79[2887] = 25.0;
        v74[3] = 2;
        v72 = dbl_29972AED0[*(v76 + 20) < 5u];
        if (*(v74 + 128) != 1 || v72 < v79[2894])
        {
          *(v74 + 128) = 1;
          v74[37] = v71;
          *(v74 + 33) = 0x300000002;
          v79[2893] = *(v76 + 256);
          v79[2894] = v72;
          v79[2897] = 25.0;
          v74[35] = 2;
        }
      }

      *(v77 + 1) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v75;
    }

    else
    {
      *(a3 + 232) = 0;
    }
  }

  else
  {
    *(a3 + 232) = 0;
  }
}

uint64_t GSpeed_Meas_Update(int a1, double *a2, unsigned int a3, double *a4, _BOOL8 a5, _WORD *a6, double a7, double a8, double a9, double a10)
{
  v30[3] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) <= 1 && (*(a4 + 12) = 0, *a4 == 1))
  {
    v25 = 0.0;
    v18 = a7 - a4[3] * a9;
    a4[5] = a7;
    a4[6] = v18;
    v19 = __sincos_stret(a8 * 0.0174532925);
    Comp_GSpeed_Partial(v19.__cosval * a7, v19.__sinval * a7, a2, v30);
    v27 = 0;
    v20 = a1 + 2;
    v21 = 2;
    memset(v26, 0, sizeof(v26));
    do
    {
      *(v26 + v20--) = v30[v21--];
    }

    while (v21 != -1);
    *(v26 + a3) = v18;
    umeas(a5, a3, a10 * a10 * a4[4], v26, v29, v28, &v25, a4[7]);
    v22 = v25;
    if (v25 <= 0.0)
    {
      v23 = 0;
      *a4 = 0;
      *(a4 + 12) = 1;
      ++*a6;
      a4[8] = v22 + a4[8];
    }

    else
    {
      a4[8] = a4[4] * (v25 * (v29[a3] * v29[a3]));
      v23 = *a4;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void GncS03_07PosEventUpdate(__int128 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncS03_07PosEventUpdate", 48, 1, 0x30uLL);
  if (v2)
  {
    v3 = v2;
    v4 = *a1;
    v5 = a1[1];
    *(v2 + 31) = *(a1 + 31);
    *v2 = v4;
    v2[1] = v5;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT =>GNCP Client,%hhu,ID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS03_07PosEventUpdate", *(v3 + 12), *(v3 + 7));
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(130, 134, 8522243, v3);
  }
}

void GncS03_08SessRespSentInd(int a1, int a2, unsigned __int16 a3, char a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS03_08SessRespSentInd", 70, 1, 0x18uLL);
  if (v8)
  {
    v9 = v8;
    v8[12] = a4;
    *(v8 + 7) = a3;
    *(v8 + 4) = a1;
    *(v8 + 5) = a2;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND =>GNCP ID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncS03_08SessRespSentInd", *(v9 + 7), v9[12]);
      LbsOsaTrace_WriteLog(8u, __str, v11, 4, 1);
    }

    AgpsSendFsmMsg(130, 134, 8522499, v9);
  }
}

double Hal18_HandleBaudResp(unsigned __int8 *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v10 = 513;
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_14;
  }

  if (a2 <= 0xF)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v10 = 515;
    v11 = a2;
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = "%10u %s%c %s: #%04hx len,%u\n";
    goto LABEL_14;
  }

  if (a1[2] != 66 || a1[3] != 85)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = a1[3];
    v13 = a1[4];
    v10 = 1312;
    v11 = a1[2];
    v4 = "%10u %s%c %s: #%04hx resp MC,%u,MID,%u,MIDEx,%u\n";
    v9 = v7;
    goto LABEL_14;
  }

  if (!gnssOsa_SemRelease(g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = 1542;
    v11 = *__error();
    v9 = v6;
    v4 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
LABEL_14:
    v8 = snprintf(__str, 0x40FuLL, v4, v9, "HAL", 69, "Hal18_HandleBaudResp", v10, v11, v12, v13);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
  }

  return result;
}

double pos_protocol_PospCallback(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v14[20660] = *MEMORY[0x29EDCA608];
  if (!v3 || (v5 = v2) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u or msg\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "pos_protocol_PospCallback", 513, v4);
    v10 = __str;
    goto LABEL_9;
  }

  v6 = v1;
  *__str = 0;
  memset_s(v14, 0x285A0uLL, 0, 0x285A0uLL);
  if ((v6 - 1) <= 3)
  {
    *&__str[4] = v4;
    *__str = v6;
    memcpy_s("pos_protocol_PospCallback", 61, v14, v4, v5, v4);
    return Process_POSP_Response(__str);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(v12, 0x410uLL);
    v11 = mach_continuous_time();
    v9 = snprintf(v12, 0x40FuLL, "%10u %s%c %s: #%04hx message,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 69, "pos_protocol_PospCallback", 770, v6);
    v10 = v12;
LABEL_9:
    LbsOsaTrace_WriteLog(0x13u, v10, v9, 0, 1);
  }

  return result;
}

double Process_POSP_Response(unsigned __int8 *a1)
{
  v82 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "Process_POSP_Response");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "Process_POSP_Response", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

LABEL_114:
    bzero(__str, 0x410uLL);
    v76 = mach_continuous_time();
    v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v76), "PSP", 68, "Process_POSP_Response");
    LbsOsaTrace_WriteLog(0x13u, __str, v77, 5, 1);
    return result;
  }

  v4 = *a1;
  if (*a1 == 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: API,%u,status,%u,sessionId,%u\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 77, "TracePOSPContents", *(a1 + 3), *(a1 + 4), *(a1 + 2));
      LbsOsaTrace_WriteLog(0x13u, __str, v30, 3, 1);
    }
  }

  else if (v4 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: eAIDREQ SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 73, "TracePOSPContents", *(a1 + 2));
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 4, 1);
    }

    if (*(a1 + 2))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v19 = *(a1 + 2);
        v20 = v19[2];
        v21 = v19[1];
        v22 = *v19;
        v23 = v19[3] == 0;
        v24 = 70;
        if (v23)
        {
          v25 = 70;
        }

        else
        {
          v25 = 84;
        }

        if (v22)
        {
          v26 = 84;
        }

        else
        {
          v26 = 70;
        }

        if (v21)
        {
          v27 = 84;
        }

        else
        {
          v27 = 70;
        }

        if (v20)
        {
          v24 = 84;
        }

        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IONO,%c,REFPOS,%c,REFTIME,%c,GPS req,%c\n", v18, "PSP", 77, "TracePOSPContents", v24, v27, v26, v25);
        LbsOsaTrace_WriteLog(0x13u, __str, v28, 3, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v33 = mach_continuous_time();
      v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx General Assistance\n", (*&g_MacClockTicksToMsRelation * v33), "PSP", 87, "TracePOSPContents", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v34, 2, 1);
    }

    v35 = *(a1 + 3);
    if (v35)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v36 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(v35 + 4))
        {
          v37 = 84;
        }

        else
        {
          v37 = 70;
        }

        if (*(v35 + 5))
        {
          v38 = 84;
        }

        else
        {
          v38 = 70;
        }

        if (*(v35 + 8))
        {
          v39 = 84;
        }

        else
        {
          v39 = 70;
        }

        if (*(v35 + 7))
        {
          v40 = 84;
        }

        else
        {
          v40 = 70;
        }

        if (*(v35 + 9))
        {
          v41 = 84;
        }

        else
        {
          v41 = 70;
        }

        if (*(v35 + 10))
        {
          v42 = 84;
        }

        else
        {
          v42 = 70;
        }

        if (*(v35 + 6))
        {
          v43 = 84;
        }

        else
        {
          v43 = 70;
        }

        v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS AlmModelId,%u,ALM req,%c,AUX req,%c,Databits req,%c,EPHModelId,%u,EPHreq,%c,gpswk,%u,refMeasreq,%c,RTIreq,%c,SVType,%u,TOE,%u,TOELIMIT,%u,UTCreq,%c,NoOfSats,%u\n", v36, "PSP", 77, "TracePOSPContents", *(v35 + 13), v43, v42, v41, *(v35 + 14), v40, *(v35 + 16), v39, v38, *v35, *(v35 + 18), *(v35 + 19), v37, *(v35 + 20));
        LbsOsaTrace_WriteLog(0x13u, __str, v44, 3, 1);
      }

      if (*(v35 + 20))
      {
        v45 = 0;
        do
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v46 = mach_continuous_time();
            v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS index,%zu,SATID,%u,IODE,%u\n", (*&g_MacClockTicksToMsRelation * v46), "PSP", 77, "TracePOSPContents", v45, *(v35 + v45 + 21), *(v35 + 2 * v45 + 86));
            LbsOsaTrace_WriteLog(0x13u, __str, v47, 3, 1);
          }

          ++v45;
        }

        while (v45 < *(v35 + 20));
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Assistance\n", (*&g_MacClockTicksToMsRelation * v48), "PSP", 87, "TracePOSPContents", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v49, 2, 1);
    }
  }

  else if (v4 == 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ePOSN v_FinalReport,%u,v_GnssMask,%u,v_SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 77, "TracePOSPContents", a1[12], a1[13], *(a1 + 2));
      LbsOsaTrace_WriteLog(0x13u, __str, v6, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_Altitude,%u,v_AxisBearing,%u,v_Confidence,%u,v_DirectOfAlt,%u,v_FixType,%u,v_IncludedAngle,%u,v_InnerRadius,%u,v_Latitude,%u,v_Longitude,%d,v_OffsetAngle,%u,v_ShapeType,%u,v_SignOfLat,%u,v_Status,%u,v_UncertAltitude,%u,v_UncertSemiMajor,%u,v_UncertSemiMinor,%u,v_SpoofingMask,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 73, "TracePOSPContents", *(a1 + 26), a1[56], a1[65], *(a1 + 15), *(a1 + 8), a1[66], *(a1 + 17), *(a1 + 11), *(a1 + 12), a1[67], *(a1 + 9), *(a1 + 10), *(a1 + 7), a1[64], a1[54], a1[55], *(a1 + 4));
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_VelType,%u,v_Bearing,%u,v_HorSpeed,%u,v_HorSpeedUnc,%u,v_VertDir,%u,v_VertSpeed,%u,v_VertSpeedUnc,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 77, "TracePOSPContents", *(a1 + 19), *(a1 + 40), *(a1 + 41), *(a1 + 44), a1[84], *(a1 + 43), *(a1 + 45));
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_DeltaGnssTod,%u,v_GnssTimeId,%u,v_GnssTodFrac,%u,v_GnssTodMs,%u,v_GnssTodUnc,%u,v_GpsTowMs,%u,v_GpsTowUnc,%u,v_RefDeltaCellTime,%u,GpsWkNum,%u,GpsLeapSec,%d,LocalBBTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 77, "TracePOSPContents", a1[107], *(a1 + 28), *(a1 + 52), *(a1 + 25), a1[106], *(a1 + 23), a1[96], *(a1 + 27), *(a1 + 59), *(a1 + 30), *(a1 + 31));
      LbsOsaTrace_WriteLog(0x13u, __str, v12, 3, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%d\n", (*&g_MacClockTicksToMsRelation * v31), "PSP", 69, "TracePOSPContents", 770, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v32, 0, 1);
  }

  if ((*a1 - 2) >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v63 = mach_continuous_time();
      v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v63), "PSP", 69, "Process_POSP_Response", 770, *a1);
      LbsOsaTrace_WriteLog(0x13u, __str, v64, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    goto LABEL_114;
  }

  v50 = *(a1 + 2);
  v78 = 1794;
  v80 = v50;
  v51 = operator new(0x285A8uLL, MEMORY[0x29EDC9418]);
  if (!v51)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v65 = mach_continuous_time();
      v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v65), "PSP", 69, "Process_POSP_Response", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v66, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    goto LABEL_114;
  }

  v52 = v51;
  *v51 = 0;
  memset_s(v51 + 1, 0x285A0uLL, 0, 0x285A0uLL);
  v79 = v52;
  memcpy_s("Process_POSP_Response", 139, v52, 0x285A8u, a1, 0x285A8uLL);
  if (*a1 != 3)
  {
    goto LABEL_86;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v53 = mach_continuous_time();
    v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v53), "PSP", 68, "copyGnssAidReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v54, 5, 1);
  }

  *(v52 + 2) = *(a1 + 2);
  if (*(a1 + 2))
  {
    v55 = gnssOsa_Calloc("copyGnssAidReq", 190, 1, 8uLL);
    v52[2] = v55;
    if (!v55)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v67 = mach_continuous_time();
        v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx General Assistance\n", (*&g_MacClockTicksToMsRelation * v67), "PSP", 69, "copyGnssAidReq", 1537);
        LbsOsaTrace_WriteLog(0x13u, __str, v68, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
      {
        goto LABEL_110;
      }

      goto LABEL_111;
    }

    memcpy_s("copyGnssAidReq", 194, v55, 8u, *(a1 + 2), 8uLL);
  }

  if (!*(a1 + 3))
  {
    goto LABEL_84;
  }

  v56 = gnssOsa_Calloc("copyGnssAidReq", 206, 1, 0xD8uLL);
  v52[3] = v56;
  if (!v56)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v69 = mach_continuous_time();
      v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Assistance\n", (*&g_MacClockTicksToMsRelation * v69), "PSP", 69, "copyGnssAidReq", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v70, 0, 1);
    }

    v71 = v52[2];
    if (v71)
    {
      free(v71);
    }

    v52[2] = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
LABEL_110:
      bzero(__str, 0x410uLL);
      v72 = mach_continuous_time();
      v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v72), "PSP", 68, "copyGnssAidReq");
      LbsOsaTrace_WriteLog(0x13u, __str, v73, 5, 1);
    }

LABEL_111:
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v74 = mach_continuous_time();
      v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Req\n", (*&g_MacClockTicksToMsRelation * v74), "PSP", 69, "Process_POSP_Response", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v75, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      return result;
    }

    goto LABEL_114;
  }

  memcpy_s("copyGnssAidReq", 210, v56, 0xD8u, *(a1 + 3), 0xD8uLL);
LABEL_84:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v57 = mach_continuous_time();
    v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v57), "PSP", 68, "copyGnssAidReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v58, 5, 1);
  }

LABEL_86:
  if (SuplPospPostMessage(&v78))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v59 = mach_continuous_time();
      v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v59), "PSP", 69, "Process_POSP_Response", 1548, *a1);
      LbsOsaTrace_WriteLog(0x13u, __str, v60, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
    {
      goto LABEL_90;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
LABEL_90:
    bzero(__str, 0x410uLL);
    v61 = mach_continuous_time();
    v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v61), "PSP", 68, "Process_POSP_Response");
    LbsOsaTrace_WriteLog(0x13u, __str, v62, 5, 1);
  }

  return result;
}