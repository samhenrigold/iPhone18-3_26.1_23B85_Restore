BOOL NK_Least_Squares_Update(double *a1, signed int a2, int a3, int a4, _OWORD *a5, uint64_t a6)
{
  v26[8] = *MEMORY[0x29EDCA608];
  *(a6 + 112) = 0u;
  v11 = a6 + 112;
  *(a6 + 368) = 0u;
  *(a6 + 384) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  if (a3)
  {
    v12 = 1.0e20;
  }

  else
  {
    v12 = -1.0;
  }

  *(a6 + 304) = 0uLL;
  *(a6 + 320) = 0uLL;
  *(a6 + 272) = 0uLL;
  *(a6 + 288) = 0uLL;
  *(a6 + 240) = 0uLL;
  *(a6 + 256) = 0uLL;
  *(a6 + 208) = 0uLL;
  *(a6 + 224) = 0uLL;
  *(a6 + 176) = 0uLL;
  *(a6 + 192) = 0uLL;
  *(a6 + 144) = 0uLL;
  *(a6 + 160) = 0uLL;
  *(a6 + 128) = 0uLL;
  if (a2 >= 1)
  {
    v13 = 0;
    v14 = vdup_n_s32(a2 - 1);
    do
    {
      v15 = vcge_u32(v14, vorr_s8(vdup_n_s32(v13), 0x100000000));
      if (v15.i8[0])
      {
        *(v11 + 8 * (((v13 + 2 + (v13 + 2) * v13) >> 1) - 1)) = 0x426D1A94A2000000;
      }

      if (v15.i8[4])
      {
        *(v11 + 8 * ((((v13 + 2) * (v13 + 3)) >> 1) - 1)) = 0x426D1A94A2000000;
      }

      v13 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFE) != v13);
  }

  if (a4)
  {
    v16 = *(a6 + 494);
    if (v16 >= 1)
    {
      *(v11 + 8 * (((v16 + 2 + (v16 + 2) * v16) >> 1) - 1)) = 0x4039000000000000;
    }
  }

  if (*(a6 + 408) > 0.0)
  {
    a5[2] = 0u;
    a5[3] = 0u;
    *a5 = 0u;
    a5[1] = 0u;
    *a5 = *(a6 + 416);
    *(a5 + 2) = *(a6 + 432);
    *(a5 + a2) = *(a6 + 400);
    v24[0] = 0.0;
    umeas(v11, a2, *(a6 + 408), a5, v26, v25, v24, 1.0e20);
  }

  v17 = 0;
  v18 = (a6 + 592);
  do
  {
    if (*(*(a6 + 520) + v17) == 1)
    {
      v6 = v6 & 0xFFFFFFFF00000000 | *(a6 + 496);
      NK_Least_Obs_Equ_SV(v17 != *(a6 + 512), *(a6 + 488), v6, *v18, *(a6 + 516), a1, a5, *(*(a6 + 528) + 8 * v17));
      v24[0] = 0.0;
      umeas(v11, a2, *(*(a6 + 536) + 8 * v17), a5, v26, v25, v24, v12);
    }

    ++v17;
    a1 += 7;
    v18 += 4;
  }

  while (v17 != 128);
  v19 = 1;
  ud2var(v11, a2, 1, a2, v24);
  if (a2 >= 1)
  {
    if (v24[0] <= 1000000000.0)
    {
      v20 = 1;
      do
      {
        v21 = v20;
        if (a2 == v20)
        {
          break;
        }

        v22 = v24[v20++];
      }

      while (v22 <= 1000000000.0);
      return v21 >= a2;
    }

    else
    {
      return 0;
    }
  }

  return v19;
}

void NK_Least_Obs_Equ_SV(int a1, unint64_t a2, int a3, int a4, int a5, double *a6, double *a7, double a8)
{
  v15 = HIBYTE(a2);
  bzero(a7, 8 * HIBYTE(a2) + 8);
  *a7 = -*a6;
  a7[1] = -a6[1];
  a7[2] = -a6[2];
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a5 != 1)
  {
    a7[v15 - 1] = 1.0;
    goto LABEL_21;
  }

  if (a4 > 3)
  {
    LODWORD(v16) = a2;
    if ((a4 - 5) >= 2)
    {
      if (a4 != 4)
      {
        if (a4 != 7)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v16 = a2 >> 16;
    }

LABEL_17:
    v17 = v16 >> 24;
    if (v17 >= 1)
    {
      a7[v17] = 1.0;
    }

    goto LABEL_19;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v16 = a2 >> 8;
    }

    else
    {
      LODWORD(v16) = a2;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_12:
    EvCrt_Illegal_switch_case("NK_Least_Obs_Equ_SV", 2583);
    goto LABEL_19;
  }

  LODWORD(v16) = a2;
  if (a4 == 1)
  {
    goto LABEL_17;
  }

LABEL_19:
  if ((a2 >> 24) >> 24 >= 1)
  {
    a7[HIWORD(a2) & 0x7F] = -a6[6];
  }

LABEL_21:
  a7[v15] = a8;
}

void NK_Least_Squares_Cross_Check(unsigned __int8 *result, uint64_t a2, uint64_t a3, double *a4, __n128 a5, __n128 a6)
{
  v8 = *(a2 + 27584);
  v9 = a4[1071];
  *(a3 + 79672) = 0;
  v10 = *(a4 + 8719);
  v11 = 0.0;
  if (v10 < 1 || a4[v10 + 285] >= 9999000.0 || *(a3 + 61824) >= 1.3e11)
  {
    v15 = 0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v12 = a4[262];
    v13 = *(a3 + 1632) * 299792458.0;
    v14 = v12 - v13;
    v15 = 1;
  }

  v16 = *(a4 + 8720);
  if (v16 < 1 || a4[v16 + 285] >= 9999000.0 || *(a3 + 61832) >= 1.3e11)
  {
    v19 = 0;
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    v17 = a4[264];
    v18 = *(a3 + 1640) * 299792458.0;
    v11 = v17 - v18;
    v19 = 1;
  }

  v20 = *(a4 + 8721);
  v21 = 0.0;
  if (v20 < 1 || a4[v20 + 285] >= 9999000.0 || *(a3 + 61840) >= 1.3e11)
  {
    v24 = 0;
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v22 = a4[266];
    v23 = *(a3 + 1648) * 299792458.0;
    v21 = v22 - v23;
    v24 = 1;
  }

  if (*a4 >= 5u && *(a4 + 8584) == 1)
  {
    v25 = v8 + v9;
    v26 = fabs(v14);
    v27 = v26 > v25 ? v15 : 0;
    if ((v27 & 1) != 0 || (fabs(v11) > v25 ? (v28 = v19) : (v28 = 0), (v28 & 1) != 0 || (fabs(v21) > v25 ? (v29 = v24) : (v29 = 0), v29 == 1)))
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 12072;
      v38 = 7080;
      do
      {
        if (*(a3 + v38) == 1 && (*(a3 + v30 + 7336) - 1) >= 0x1E)
        {
          v39 = result[v30];
          if (v39 == 4)
          {
            if (v24)
            {
              ++v31;
              if (fabs(v21 + *(a3 + v37)) - fabs(*(a3 + v37)) <= 0.0)
              {
                ++v34;
              }

              else
              {
                --v34;
              }
            }
          }

          else if (v39 == 2)
          {
            if (v19)
            {
              ++v32;
              if (fabs(v11 + *(a3 + v37)) - fabs(*(a3 + v37)) <= 0.0)
              {
                ++v35;
              }

              else
              {
                --v35;
              }
            }
          }

          else if (v15)
          {
            ++v33;
            if (fabs(v14 + *(a3 + v37)) - fabs(*(a3 + v37)) <= 0.0)
            {
              ++v36;
            }

            else
            {
              --v36;
            }
          }
        }

        v30 += 4;
        v37 += 8;
        ++v38;
      }

      while (v30 != 512);
      if (v26 < 10000.0)
      {
        v40 = v15;
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0)
      {
        v41 = fabs(v11) < 10000.0 ? v19 : 0;
        if ((v41 & 1) == 0)
        {
          v42 = fabs(v21) < 10000.0 ? v24 : 0;
          if ((v42 & 1) == 0)
          {
            if (v15)
            {
              v44 = v36 >= 0 && v33 != 0;
              if (!(v32 + v31) || v32 >= 1 && v35 > 0 || (v45 = 0, v31 >= 1) && v34 >= 1)
              {
                v45 = 1;
                *(a3 + 79672) = 1;
              }

              v52 = v45;
              NK_Least_Squares_Cross_Check_Adj(result, a3, 1, v44, v45, v13, v12, v14);
              v46 = v52;
            }

            else
            {
              v46 = 0;
            }

            if (v19)
            {
              v48 = v35 >= 0 && v32 != 0;
              if (!(v33 + v31) || v33 >= 1 && v36 > 0 || v31 >= 1 && v34 >= 1)
              {
                v46 = 1;
                *(a3 + 79672) = 1;
              }

              NK_Least_Squares_Cross_Check_Adj(result, a3, 2, v48, v46, v18, v17, v11);
            }

            if (v24)
            {
              v50 = v34 >= 0 && v31 != 0;
              if (!(v33 + v32) || v33 >= 1 && v36 > 0 || (v51 = 0, v32 >= 1) && v35 >= 1)
              {
                v51 = 1;
                *(a3 + 79672) = 1;
              }

              NK_Least_Squares_Cross_Check_Adj(result, a3, 4, v50, v51, v23, v22, v21);
            }
          }
        }
      }
    }
  }
}

void NK_Least_Squares_Cross_Check_Adj(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8)
{
  if (a4 && a5)
  {
    v10 = a3;
    EvLog_nd("NK_LSq_Cross_Check:  KF Clock bias change : ", 4, a3, a3, a6, a7, a8);
    switch(v10)
    {
      case 1:
        v13 = 1632;
        goto LABEL_9;
      case 4:
        v13 = 1648;
        goto LABEL_9;
      case 2:
        v13 = 1640;
LABEL_9:
        v14 = 0;
        *(a2 + v13) = a7 * 0.00000000333564095;
        while (1)
        {
          if ((*(a2 + 7080 + v14) & 1) == 0 && (*(a2 + 7336 + 4 * v14) - 1) > 0x1D)
          {
            goto LABEL_16;
          }

          if (v10 != 4 && v10 != 2)
          {
            break;
          }

          if (*a1 == v10)
          {
            goto LABEL_15;
          }

LABEL_16:
          ++v14;
          a1 += 4;
          if (v14 == 128)
          {
            return;
          }
        }

        v15 = *a1;
        if (v15 == 2 || v15 == 4)
        {
          goto LABEL_16;
        }

LABEL_15:
        *(a2 + 12072 + 8 * v14) = *(a2 + 12072 + 8 * v14) + a8;
        *(a2 + 51608 + 8 * v14) = *(a2 + 51608 + 8 * v14) + a8;
        *(a2 + 13096 + 8 * v14) = *(a2 + 13096 + 8 * v14) + a8;
        *(a2 + 14120 + 8 * v14) = *(a2 + 14120 + 8 * v14) + a8;
        goto LABEL_16;
    }
  }
}

void NK_Least_Squares_Check(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v117 = v4;
  v118 = v5;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v171[1] = *MEMORY[0x29EDCA608];
  v171[0] = 0;
  v115 = v8 + 60344;
  v112 = (v8 + 6771);
  v114 = (v8 + 1784);
  v11 = v2 + 512;
  memset(v170, 0, sizeof(v170));
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  v163 = 0u;
  v162 = 0u;
  memset(v161, 0, sizeof(v161));
  v143 = 0;
  v142 = 0;
  v144 = 0;
  memset(v137, 0, sizeof(v137));
  memset(v138, 0, sizeof(v138));
  v139 = 0u;
  v140 = 0u;
  memset(v141, 0, 25);
  v146 = 0;
  v145 = 0;
  v147 = 0;
  bzero(&v148, 0x254uLL);
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0;
  LODWORD(__src[0]) = 0;
  WORD2(__src[0]) = 0;
  LODWORD(v160[0]) = 0;
  *(v160 + 3) = 0;
  bzero(__src + 6, 0x213CuLL);
  *(v160 + 15) = 0;
  *(v160 + 7) = 0;
  *(&v160[1] + 7) = 0;
  LOWORD(v3->f64[0]) = 0;
  memcpy(v3->f64 + 2, __src, 0x213EuLL);
  *(&v3[532] + 4) = 0u;
  *(&v3[533] + 4) = 0u;
  *(&v3[534] + 4) = 0u;
  *(&v3[535] + 4) = 0u;
  *(&v3[536] + 4) = 0u;
  *(&v3[537] + 4) = 0u;
  *(&v3[538] + 4) = 0u;
  *(&v3[539] + 4) = 0u;
  *(&v3[540] + 4) = 0u;
  *(&v3[541] + 4) = 0u;
  *(&v3[542] + 4) = 0u;
  HIDWORD(v3[543].f64[0]) = 0;
  *(v3 + 8697) = v160[0];
  *(v3 + 8712) = *(v160 + 15);
  LODWORD(v3[532].f64[0]) = -1;
  v3[534].f64[1] = 10000000.0;
  v12 = vdupq_n_s64(0x416312D000000000uLL);
  v3[535] = v12;
  v3[536].f64[0] = 10000000.0;
  LOBYTE(v11[25].f64[1]) = -1;
  LODWORD(v3[538].f64[0]) = -1;
  v3[540].f64[1] = 10000000.0;
  v3[541] = v12;
  v3[542].f64[0] = 10000000.0;
  v121 = v11;
  LOBYTE(v11[31].f64[1]) = -1;
  memset_pattern16(&v3[142].f64[1], &unk_299051A90, 0x38uLL);
  memset_pattern16(&v3[146], &unk_299051A90, 0x20uLL);
  v113 = v3 + 141;
  v3[141] = vdupq_n_s64(0x4163125300000000uLL);
  v120 = *(v9 + 56);
  xmmword_2A145C501 = 0u;
  unk_2A145C511 = 0u;
  xmmword_2A145C561 = 0u;
  unk_2A145C571 = 0u;
  xmmword_2A145C541 = 0u;
  unk_2A145C551 = 0u;
  xmmword_2A145C521 = 0u;
  unk_2A145C531 = 0u;
  memcpy(__src, (v9 + 26976), 0x400uLL);
  v13 = v9 + 32352;
  memcpy(v160, (v9 + 32352), sizeof(v160));
  v14 = 0;
  v15 = 0;
  v16 = v9 + 21984;
  v17 = v9 + 36888;
  v18 = (v10 + 96);
  v119 = v10;
  v19 = v10 + 736;
  v122 = (v10 + 96);
  do
  {
    if (*(v16 + v15) == 1)
    {
      v20 = *v18;
      if (v20 != 7)
      {
        v21 = v7 == 1 && v20 == 5;
        v22 = v21;
        if (!v7 || (v20 != v7 ? (v23 = !v22) : (v23 = 0), !v23))
        {
          *(v161 + v15) = 1;
          *(v160 + v15) = *v13;
          if ((*(&v129 + v15) & 1) == 0)
          {
            BYTE1(v3->f64[0]) = ++v14;
            ++*(&v128 + *v18);
            *(&v129 + v15) = 1;
            v24 = *(v19 + v15);
            if (v24 != 255)
            {
              *(&v129 + v24) = 1;
            }
          }
        }
      }
    }

    if (*(v17 + v15) == 1)
    {
      v25 = *v18;
      if (v25 != 7)
      {
        v26 = v7 == 1 && v25 == 5;
        v27 = v26;
        if (!v7 || v25 == v7 || v27)
        {
          if ((*(v161 + v15) & 1) == 0)
          {
            *(v161 + v15) = 1;
            if ((*(&v129 + v15) & 1) == 0)
            {
              BYTE1(v3->f64[0]) = ++v14;
              ++*(&v128 + *v18);
              *(&v129 + v15) = 1;
              v28 = *(v19 + v15);
              if (v28 != 255)
              {
                *(&v129 + v28) = 1;
              }
            }
          }

          *&__src[v15] = *(v13 + 9528) / *(v9 + 1552);
          *(v160 + v15) = *(v13 + 14904);
          _MergedGlobals_4[v15 + 1] = 1;
        }
      }
    }

    ++v15;
    v18 += 4;
    v13 += 8;
  }

  while (v15 != 128);
  if (v120 == 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  if (v120 == 2)
  {
    v29 = 0;
  }

  v116 = v29;
  HIDWORD(v146) = v29;
  *(&v145 + 3) = -1;
  LODWORD(v145) = 50462976;
  HIBYTE(v145) = 4;
  LODWORD(v146) = 1;
  *&v3[544].f64[0] = v145;
  LODWORD(v3[544].f64[1]) = v146;
  v148 = 4;
  LOBYTE(v121[31].f64[1]) = v14 - 4;
  if (((v14 - 4) & 0x80) == 0)
  {
    memcpy(v159, v122, sizeof(v159));
    v150 = v161;
    v151 = __src;
    v152 = v160;
    v153 = &v3[65].f64[1];
    v154 = &v3[129].f64[1];
    v149 = 0x2FFFFFFFFLL;
    f64 = v3[130].f64;
    v156 = v3 + 340;
    v157 = v3 + 404;
    v158 = v3 + 468;
    v147 = 0;
    v139 = 0u;
    v140 = 0u;
    *v141 = 0;
    if ((v14 - 5) <= 2u && v118)
    {
      if (*(v115 + 72) == 1 && *(v115 + 76) == 1 && (v30 = *(v115 + 104), v30 < 9.0) && *v9 - *(v115 + 92) <= 4999)
      {
        v31 = -*(v9 + 1832) - *(v115 + 96);
      }

      else
      {
        v31 = -*(v9 + 1832);
        v30 = 9.0;
      }

      *&v139 = v31;
      *(&v139 + 1) = v30;
      v140 = vnegq_f64(*v114);
      *v141 = -*(v9 + 1800);
    }

    if (NK_Least_Squares_Core((v9 + 52776), (v9 + 1736), 4, v118, v117, v10 + 1760, v170, v171, v137))
    {
      v32 = SBYTE3(v145);
      v33 = v145;
      if (_MergedGlobals_4[0] == 1)
      {
        for (i = 0; i != 128; ++i)
        {
          if (*(v17 + i) == 1)
          {
            GNSS_SV_Str = Get_GNSS_SV_Str(v122[i]);
            EvLog_v("NK_Least_Squares_Check:  %d  %s  Inflate DR.ResVar ", i, GNSS_SV_Str);
            *(v9 + 47256 + 8 * i) = *(v9 + 47256 + 8 * i) + 1.0;
          }
        }
      }

      if (!v7 && *f64 < 4.0)
      {
        v96 = LODWORD(v171[0]);
        if ((v171[0] & 0x80000000) == 0)
        {
          v97 = v150;
          *(v150 + LODWORD(v171[0])) = 0;
          v98 = (v17 + v96);
          if (*(v17 + v96))
          {
            v99 = 36580;
            v100 = 36579;
            v101 = 37144;
            v102 = (v17 + v96);
          }

          else
          {
            v102 = (v16 + v96);
            v99 = 21676;
            v100 = 21675;
            v101 = 22240;
          }

          *v102 = 0;
          *(v9 + v101 + 4 * v96) = 12;
          --*(v9 + v100);
          ++*(v9 + v99);
          *(v170 + v96) = 1;
          v108 = HIDWORD(v171[0]);
          if ((v171[0] & 0x8000000000000000) == 0)
          {
            *(v97 + HIDWORD(v171[0])) = 0;
            if (*v98)
            {
              v109 = 36580;
              v110 = 36579;
              v111 = 37144;
            }

            else
            {
              v98 = (v16 + v108);
              v109 = 21676;
              v110 = 21675;
              v111 = 22240;
              v96 = v108;
            }

            *v98 = 0;
            *(v9 + v111 + 4 * v96) = 12;
            --*(v9 + v110);
            ++*(v9 + v109);
            *(v170 + v108) = 1;
          }
        }
      }

      v36 = HIBYTE(v145);
      if (HIBYTE(v145))
      {
        v37 = 0;
        v38 = v137;
        do
        {
          if (v32 == v37)
          {
            v3[137].f64[1] = -*(v137 + v32);
          }

          else if (v37 >= v33 && v37 < v33 + 3)
          {
            *(&v124 + v37 - v33) = *(v9 - 8 * v33 + 1584 + 8 * v37) - *v38;
          }

          v3[146].f64[v37++] = sqrt(v38[7]);
          ++v38;
        }

        while (v36 != v37);
      }

      if (*f64 > 1.0)
      {
        v39 = sqrt(*f64);
        v3[147] = vmulq_n_f64(v3[147], v39);
        v3[146] = vmulq_n_f64(v3[146], v39);
        EvLog_v("NK_LSq: DO VarFact scaling %f", v39);
      }

      v40 = 0;
      v3[138].f64[0] = v3[137].f64[1] + *(v9 + 1664) * 299792458.0;
      v41 = &v3[138].f64[1];
      v42 = v124;
      v43 = v125;
      v44 = v126;
      v45 = (v9 + 1752);
      do
      {
        v46 = *(v45 - 1) * v43 + *(v45 - 2) * v42;
        v47 = *v45;
        v45 += 3;
        v41[v40++] = v46 + v47 * v44;
      }

      while (v40 != 3);
      v3[140].f64[0] = sqrt(v3[139].f64[0] * v3[139].f64[0] + 0.0 + v3[138].f64[1] * v3[138].f64[1]);
      Comp_Track8(v41);
      v3[140].f64[1] = v48;
      if (*f64 <= 1.0)
      {
        NK_ARP_Calc_Slopes(v9 + 52776, v9 + 1736, HIBYTE(v145), v137, &v3[538]);
        v49 = SLOBYTE(v121[31].f64[1]);
        v50 = __OFSUB__(v49, 1);
        v51 = v49 - 1;
        if (v51 < 0 == v50)
        {
          v52 = 0.0;
          v53 = 128;
          v54 = v3;
          do
          {
            v55 = v54[404].f64[0];
            if (v55 > 0.0)
            {
              v52 = v52 + v54[65].f64[1] * v54[65].f64[1] / v55;
            }

            v54 = (v54 + 8);
            --v53;
          }

          while (v53);
          if (v51 >= 9)
          {
            v51 = 9;
          }

          v56 = sqrt(v52) / g_ARP_cTd_Table[v51 + 10];
          v3[543].f64[0] = v56;
          LOBYTE(v121[30].f64[1]) = v56 <= 1.0;
        }

        ARP_Calc(&v3[538]);
      }
    }
  }

  bzero(v137, 0x450uLL);
  xmmword_2A145C561 = 0u;
  unk_2A145C571 = 0u;
  xmmword_2A145C541 = 0u;
  unk_2A145C551 = 0u;
  xmmword_2A145C521 = 0u;
  unk_2A145C531 = 0u;
  xmmword_2A145C501 = 0u;
  unk_2A145C511 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v57 = v9 + 7080;
  v133 = 0u;
  v134 = 0u;
  v58 = &v162;
  v59 = 96;
  v60 = 736;
  v135 = 0u;
  v136 = 0u;
  v61 = v9;
  v62 = &v129;
  v128 = 0;
  do
  {
    if (*(v61 + 7080) == 1 && *(v61 + 57) == 1)
    {
      v63 = *(v10 + v59);
      if (v63 != 7)
      {
        v64 = v7 == 1 && v63 == 5;
        v65 = v64;
        if (!v7 || (v63 != v7 ? (v66 = !v65) : (v66 = 0), !v66))
        {
          *v58 = 1;
          if ((*v62 & 1) == 0)
          {
            ++LOBYTE(v3->f64[0]);
            ++*(&v128 + *(v10 + v59));
            *v62 = 1;
            v67 = *(v10 + v60);
            if (v67 != 255)
            {
              *(&v129 + v67) = 1;
            }
          }
        }
      }
    }

    v59 += 4;
    ++v60;
    v62 = (v62 + 1);
    v58 = (v58 + 1);
    ++v61;
  }

  while (v59 != 608);
  HIDWORD(v146) = v116;
  LODWORD(v146) = 0;
  v145 = 0x3FFFFFFFF020100;
  v68 = 3;
  if (BYTE1(v128) || BYTE5(v128) || __PAIR16__(BYTE6(v128), 0) != BYTE3(v128))
  {
    BYTE3(v145) = 3;
    v68 = 4;
    HIBYTE(v145) = 4;
  }

  if (BYTE2(v128))
  {
    BYTE4(v145) = v68;
    v68 = (v68 + 1);
    HIBYTE(v145) = v68;
  }

  if (BYTE4(v128))
  {
    BYTE5(v145) = v68;
    v68 = (v68 + 1);
    HIBYTE(v145) = v68;
  }

  if (v120 != 2)
  {
    BYTE6(v145) = v68;
    v68 = (v68 + 1);
    HIBYTE(v145) = v68;
  }

  LODWORD(v146) = 2;
  *(&v3[544].f64[1] + 4) = v145;
  HIDWORD(v3[545].f64[0]) = v146;
  v148 = v68;
  v69 = LOBYTE(v3->f64[0]);
  LOBYTE(v121[25].f64[1]) = v69 - v68;
  if (((v69 - v68) & 0x80) == 0)
  {
    memcpy(v159, v122, sizeof(v159));
    v150 = &v162;
    v151 = (v9 + 12072);
    v152 = (v9 + 17448);
    v153 = &v3->f64[1];
    v154 = &v3[64].f64[1];
    v149 = 0x1FFFFFFFFLL;
    f64 = v3[65].f64;
    v156 = v3 + 148;
    v157 = v3 + 212;
    v158 = v3 + 276;
    v147 = 1;
    v139 = 0u;
    v140 = 0u;
    *v141 = 0;
    v70 = v118;
    if (!v118 || v69 == v68 || (v69 - v68) > 3u)
    {
      goto LABEL_128;
    }

    v123 = 0.0;
    v124 = 0.0;
    if (*v115 == 1 && *(v115 + 4) == 1 && (v71 = *(v115 + 32), v71 < 625.0) && *v9 - *(v115 + 20) <= 4999)
    {
      v72 = *(v9 + 1720);
      v73 = *(v115 + 24);
    }

    else
    {
      Pos_H = Core_Get_Pos_H(*v9, 150000, &v124, &v123);
      v70 = v118;
      if (!Pos_H || v123 > 500.0)
      {
        goto LABEL_127;
      }

      v75 = 4.0;
      if (v123 < 350.0)
      {
        v75 = 3.0;
        if (v123 < 250.0)
        {
          v75 = 2.0;
          if (v123 < 150.0)
          {
            v75 = 1.5;
          }
        }
      }

      v71 = v123 * v75;
      if (v123 * v75 < 5625.0)
      {
        v71 = 5625.0;
      }

      v72 = *(v9 + 1720);
      v73 = v124;
    }

    *&v139 = v72 - v73;
    *(&v139 + 1) = v71;
    v140 = vnegq_f64(*v114);
    *v141 = -*(v9 + 1800);
LABEL_127:
    v68 = HIBYTE(v145);
LABEL_128:
    memset(&v141[8], 0, 24);
    if (!NK_Least_Squares_Core((v9 + 52776), (v9 + 1736), v68, v70, v117, v119 + 1760, v170, v171, v137))
    {
      return;
    }

    v76 = v145;
    v77 = SBYTE3(v145);
    v78 = SBYTE4(v145);
    v79 = SBYTE5(v145);
    v80 = SBYTE6(v145);
    if (!v7 && *f64 < 4.0)
    {
      v103 = v171[0];
      if ((v171[0] & 0x80000000) == 0)
      {
        v104 = v150;
        *(v150 + LODWORD(v171[0])) = 0;
        *(v57 + v103) = 0;
        *(v9 + 7336 + 4 * v103) = 12;
        v105 = (*v112)--;
        v106 = v112[1];
        v112[1] = v106 + 1;
        v107 = HIDWORD(v171[0]);
        if ((v171[0] & 0x8000000000000000) == 0)
        {
          *(v104 + HIDWORD(v171[0])) = 0;
          *(v57 + v107) = 0;
          *(v9 + 7336 + 4 * v107) = 12;
          *v112 = v105 - 2;
          v112[1] = v106 + 2;
        }
      }
    }

    v81 = &v3[134].f64[1];
    v82 = 488;
    while (1)
    {
      v83 = *(v137 + v82);
      if ((v83 & 0x80000000) == 0)
      {
        if (v83 == v77)
        {
          v3[130].f64[1] = -*(v137 + v83);
        }

        else if (v83 == v78)
        {
          v3[131].f64[1] = -*(v137 + v83);
        }

        else if (v83 == v79)
        {
          v3[132].f64[1] = -*(v137 + v83);
        }

        else if (v83 == v80)
        {
          v3[133].f64[1] = -*(v137 + v83);
        }

        else
        {
          if (v83 < v76 || v76 + 2 < v83)
          {
            goto LABEL_144;
          }

          *(v81 + 8 * v83) = *(v9 + 1560 + 8 * v83) - *(v137 + v83);
        }

        v3[142].f64[v83 + 1] = sqrt(*(&v137[3] + v83 + 1));
      }

LABEL_144:
      if (++v82 == 495)
      {
        if (v77 > 0)
        {
          v3[131].f64[0] = v3[130].f64[1] + *(v9 + 1632) * 299792458.0;
        }

        if (v78 >= 1)
        {
          v3[132].f64[0] = v3[131].f64[1] + *(v9 + 1640) * 299792458.0;
        }

        if (v79 >= 1)
        {
          v3[133].f64[0] = v3[132].f64[1] + *(v9 + 1648) * 299792458.0;
        }

        if (v80 >= 1)
        {
          v3[134].f64[0] = *(v9 + 1672) + v3[133].f64[1];
        }

        ECEF2Geo(v81, &WGS84_Datum, &v3[136]);
        Comp_NEDvar_UDU(v138, HIBYTE(v145), v76, (v9 + 1736), &v124);
        Comp_ErrorEllipse(v124, v125, v84, v113->f64, &v3[141].f64[1], v3[142].f64);
        v85 = *f64;
        if (*f64 > 1.0)
        {
          v86 = sqrt(v85);
          if (v148 >= 1)
          {
            v87 = v148 + 1;
            v88 = &v3[142].f64[v148];
            do
            {
              *v88 = v86 * *v88;
              --v88;
              --v87;
            }

            while (v87 > 1);
          }

          *v113 = vmulq_n_f64(*v113, v86);
          EvLog_v("NK_LSq: PR VarFact scaling %f", v86);
          v85 = *f64;
        }

        if (v85 <= 1.0)
        {
          NK_ARP_Calc_Slopes(v9 + 52776, v9 + 1736, HIBYTE(v145), v137, &v3[532]);
          v89 = SLOBYTE(v121[25].f64[1]);
          v50 = __OFSUB__(v89, 1);
          v90 = v89 - 1;
          if (v90 < 0 == v50)
          {
            v91 = 0.0;
            v92 = 128;
            v93 = v3;
            do
            {
              v94 = v93[212].f64[0];
              if (v94 > 0.0)
              {
                v91 = v91 + v93->f64[1] * v93->f64[1] / v94;
              }

              v93 = (v93 + 8);
              --v92;
            }

            while (v92);
            if (v90 >= 9)
            {
              v90 = 9;
            }

            v95 = sqrt(v91) / g_ARP_cTd_Table[v90 + 10];
            v3[537].f64[0] = v95;
            LOBYTE(v121[24].f64[1]) = v95 <= 1.0;
          }

          ARP_Calc(&v3[532]);
        }

        return;
      }
    }
  }
}

void NK_ARP_Calc_Slopes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v77 = *MEMORY[0x29EDCA608];
  *(a5 + 8) = 0u;
  v62 = (a5 + 8);
  *(a5 + 24) = 0u;
  ud2cov((a4 + 112), v75, a3);
  v9 = 0;
  v60 = a2;
  v61 = (a2 + 16);
  do
  {
    if (*(*(a4 + 520) + v9) != 1)
    {
      goto LABEL_41;
    }

    v10 = *(a4 + 488);
    v67 = *(a4 + 491);
    v63 = *(a4 + 492);
    v65 = *(a4 + 493);
    v68 = *(a4 + 494);
    v11 = *(a4 + 592 + 4 * v9);
    v5 = v5 & 0xFFFFFFFF00000000 | *(a4 + 496);
    NK_Least_Obs_Equ_SV(1, *(a4 + 488), v5, v11, *(a4 + 516), (a1 + 56 * v9), v76, *(*(a4 + 528) + 8 * v9));
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    v12 = *(*(a4 + 536) + 8 * v9);
    if (a3)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v15 = *(v73 + v13);
        v16 = v13 + 1;
        do
        {
          v17 = v14 + 1;
          v18 = *(v76 + v14);
          if (v14 < v13)
          {
            v19 = v14 + (((v13 + 1) * v13) >> 1);
          }

          else
          {
            v17 = v14 + 1;
            v19 = v13 + (((v14 + 1) * v14) >> 1);
          }

          v15 = v15 + v75[v19] * v18;
          v14 = v17;
        }

        while (v17 != a3);
        *(v73 + v13++) = v15 / v12;
      }

      while (v16 != a3);
    }

    v69 = 0.0;
    invtst((a4 + 112), v76, a3, 0.0, 0.0, 1.0e20, &v69);
    v20 = 1.0 - v69 / v12;
    v69 = v20;
    if (v20 < 0.0001)
    {
      if (*(a5 + 88) >= 1)
      {
        EvLog_v("NK_ARP_Calc_Slopes: Matrix B too small %f %d", v20, *(a5 + 88));
        --*(a5 + 88);
      }

      goto LABEL_41;
    }

    v21 = 0;
    v22 = fmax(v20, 0.0001);
    v69 = v22;
    v23 = v73 + v10;
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v61;
    do
    {
      v28 = *(v27 - 1) * v25 + *(v27 - 2) * v24;
      v29 = *v27;
      v27 += 3;
      *(&v70 + v21) = v28 + v29 * v26;
      v21 += 8;
    }

    while (v21 != 24);
    v30 = v12 / v22;
    v31 = v30 * (v71 * v71 + v70 * v70);
    if (v31 > *v62)
    {
      *(a5 + 8) = v31;
      *a5 = v9;
    }

    v32 = v30 * (v72 * v72);
    if (v32 > *(a5 + 16))
    {
      *(a5 + 16) = v32;
      *(a5 + 1) = v9;
    }

    v33 = *(a4 + 496);
    if (v33 == 2)
    {
      if (v11 <= 3)
      {
        if (v11 > 1)
        {
          v34 = v63;
          if (v11 != 2)
          {
            v34 = v67;
          }

          goto LABEL_34;
        }

        if (v11)
        {
          v34 = v67;
          goto LABEL_34;
        }

LABEL_30:
        EvCrt_Illegal_switch_case("NK_ARP_Calc_Slopes", 1932);
        goto LABEL_31;
      }

      v34 = v67;
      if ((v11 - 5) < 2)
      {
        goto LABEL_34;
      }

      v34 = v65;
      if (v11 == 4)
      {
        goto LABEL_34;
      }

      if (v11 == 7)
      {
        goto LABEL_30;
      }
    }

    else if (v33 == 1)
    {
      v34 = v67;
LABEL_34:
      v35 = v68;
      if (v34 >= 1)
      {
        v32 = v30 * (*(v73 + v34) * *(v73 + v34));
      }

      goto LABEL_36;
    }

LABEL_31:
    v35 = v68;
LABEL_36:
    if (v32 > *(a5 + 24))
    {
      *(a5 + 24) = v32;
      *(a5 + 2) = v9;
    }

    if (v35 >= 1)
    {
      v36 = v30 * (*(v73 + v35) * *(v73 + v35));
      if (v36 > *(a5 + 32))
      {
        *(a5 + 32) = v36;
        *(a5 + 3) = v9;
      }
    }

LABEL_41:
    ++v9;
  }

  while (v9 != 128);
  v37 = *(a4 + 408);
  if (v37 > 0.0)
  {
    memset(v76, 0, sizeof(v76));
    v38 = *(a4 + 488);
    v39 = v76 + 8 * v38;
    *v39 = *(a4 + 416);
    *(v39 + 2) = *(a4 + 432);
    *(v76 + a3) = *(a4 + 400);
    if (a3)
    {
      v40 = 0;
      do
      {
        v41 = 0;
        v42 = v40 + 1;
        v43 = 0.0;
        do
        {
          v44 = v41 + 1;
          v45 = *(v76 + v41);
          if (v41 < v40)
          {
            v46 = v41 + (((v40 + 1) * v40) >> 1);
          }

          else
          {
            v44 = v41 + 1;
            v46 = v40 + (((v41 + 1) * v41) >> 1);
          }

          v43 = v43 + v75[v46] * v45;
          v41 = v44;
        }

        while (v44 != a3);
        *(v73 + v40++) = v43 / v37;
      }

      while (v42 != a3);
    }

    v69 = 0.0;
    invtst((a4 + 112), v76, a3, 0.0, 0.0, 1.0e20, &v69);
    v47 = 1.0 - v69 / v37;
    if (v47 >= 0.0000001)
    {
      v48 = 0;
      v49 = fmax(v47, 0.0000001);
      v50 = v73 + v38;
      v51 = *v50;
      v52 = v50[1];
      v53 = v50[2];
      v54 = (v60 + 16);
      do
      {
        v55 = *(v54 - 1) * v52 + *(v54 - 2) * v51;
        v56 = *v54;
        v54 += 3;
        *(&v70 + v48) = v55 + v56 * v53;
        v48 += 8;
      }

      while (v48 != 24);
      v57 = v37 / v49;
      v58 = v57 * (v71 * v71 + v70 * v70);
      if (v58 > *v62)
      {
        *(a5 + 8) = v58;
        *a5 = 0x80;
      }

      v59 = v57 * (v72 * v72);
      if (v59 > *(a5 + 16))
      {
        *(a5 + 16) = v59;
        *(a5 + 1) = 0x80;
      }
    }

    else if (*(a5 + 88) >= 1)
    {
      EvLog_v("NK_ARP_Calc_Slopes: Vert Matrix B too small %f %d", 1.0 - v69 / v37, *(a5 + 88));
      --*(a5 + 88);
    }
  }
}

uint64_t NK_ARP_Kalman(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v73 = *MEMORY[0x29EDCA608];
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v35 = (a3 + 62540);
  v69 = 0u;
  v7 = a3 + 41880;
  v68 = 0u;
  v8 = (a3 + 22240);
  v67 = 0u;
  v34 = a4 + 24576;
  v66 = 0u;
  v65 = 0u;
  bzero(__dst, 0x400uLL);
  bzero(v63, 0x400uLL);
  v49[5] = 0;
  v49[4] = 0;
  v50 = 0;
  memset(v46, 0, sizeof(v46));
  v47 = 0u;
  v48 = 0u;
  memset(v49, 0, 25);
  v52 = 0;
  v51 = 0;
  v53 = 0;
  bzero(&v54, 0x254uLL);
  v9 = 0;
  v10 = 0;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = a3 + 7336;
  v12 = (a3 + 57);
  v39 = 0u;
  v40 = 0u;
  v13 = &v65;
  v14 = 128;
  v37 = 0u;
  v38 = 0u;
  __src = a1;
  v15 = a2;
  v36 = 0;
  do
  {
    v17 = *a1;
    a1 += 4;
    v16 = v17;
    if (v17 != 7 && *(v11 + v9 - 256) == 1 && (*(&v37 + v9) & 1) == 0 && (*(v11 + 4 * v9) - 1) >= 0x1E && *v12 == 1)
    {
      ++*(&v36 + v16);
      ++v10;
      *v13 = 1;
      *(&v37 + v9) = 1;
      v18 = *v15;
      if (v18 != 255)
      {
        *(&v37 + v18) = 1;
      }
    }

    ++v9;
    ++v15;
    v13 = (v13 + 1);
    ++v12;
    --v14;
  }

  while (v14);
  v19 = *(a3 + 56);
  if (v19 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v19 == 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  bzero(v46, 0x450uLL);
  HIDWORD(v52) = v21;
  LODWORD(v52) = 0;
  v51 = 0x3FFFFFFFF020100;
  v22 = 3;
  if (BYTE1(v36) || BYTE5(v36) || __PAIR16__(BYTE6(v36), 0) != BYTE3(v36))
  {
    BYTE3(v51) = 3;
    v22 = 4;
    HIBYTE(v51) = 4;
  }

  if (BYTE2(v36))
  {
    BYTE4(v51) = v22++;
    HIBYTE(v51) = v22;
  }

  if (BYTE4(v36))
  {
    BYTE5(v51) = v22++;
    HIBYTE(v51) = v22;
  }

  if (v19 != 2)
  {
    BYTE6(v51) = v22++;
    HIBYTE(v51) = v22;
  }

  LODWORD(v52) = 2;
  *(v34 + 3040) = v10 - v22;
  if ((v10 - v22) > 0 && v35[6] == 1 && ((*v35 & 1) != 0 || (v35[1] & 1) != 0 || v35[2] == 1))
  {
    v49[0] = 0;
    v47 = 0u;
    v48 = 0u;
    memcpy(v62, __src, sizeof(v62));
    v53 = 1;
    v55 = 0x1FFFFFFFFLL;
    v56 = &v65;
    v57 = (a3 + 12072);
    v58 = (a3 + 17448);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    if (NK_Least_Squares_Update((a3 + 52776), v22, 0, 0, v45, v46))
    {
      NK_ARP_Calc_Slopes(a3 + 52776, a3 + 1736, HIBYTE(v51), v46, a4 + 27528);
      ARP_Calc(a4 + 27528);
    }
  }

  memcpy(__dst, (a3 + 26976), sizeof(__dst));
  result = memcpy(v63, (a3 + 32352), sizeof(v63));
  v24 = 0;
  v25 = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = __src;
  v36 = 0;
  do
  {
    v28 = *v26;
    v26 += 4;
    v27 = v28;
    if (v28 != 7)
    {
      if (*(a3 + 21984 + v24) == 1 && (*v8 - 1) >= 0x1E)
      {
        *(&v65 + v24) = 1;
        if ((*(&v37 + v24) & 1) == 0)
        {
          ++*(&v36 + v27);
          ++v25;
          *(&v37 + v24) = 1;
          v29 = a2[v24];
          if (v29 != 255)
          {
            *(&v37 + v29) = 1;
          }
        }
      }

      result = *(a3 + 36888 + v24);
      if (result == 1)
      {
        result = (v8[3726] - 1);
        if (result >= 0x1E)
        {
          *(&v65 + v24) = 1;
          __dst[v24] = *v7 / *(a3 + 1552);
          v63[v24] = *(v7 + 5376);
          result = *(&v37 + v24);
          if ((result & 1) == 0)
          {
            result = (*(&v36 + v27))++ + 1;
            ++v25;
            *(&v37 + v24) = 1;
            v30 = a2[v24];
            if (v30 != 255)
            {
              *(&v37 + v30) = 1;
            }
          }
        }
      }
    }

    ++v24;
    v7 += 8;
    ++v8;
  }

  while (v24 != 128);
  HIDWORD(v52) = v21;
  *(&v51 + 3) = -1;
  LODWORD(v51) = 50462976;
  HIBYTE(v51) = 4;
  LODWORD(v52) = 1;
  v31 = v25 - 4;
  *(v34 + 3136) = v31;
  if (v31 > 0 && v35[9] == 1 && v35[4] == 1)
  {
    v49[0] = 0;
    v47 = 0u;
    v48 = 0u;
    memcpy(v62, __src, sizeof(v62));
    v53 = 0;
    v55 = 0x2FFFFFFFFLL;
    v56 = &v65;
    v57 = __dst;
    v58 = v63;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    result = NK_Least_Squares_Update((a3 + 52776), 4, 0, 0, v45, v46);
    if (result)
    {
      NK_ARP_Calc_Slopes(a3 + 52776, a3 + 1736, HIBYTE(v51), v46, a4 + 27624);
      return ARP_Calc(a4 + 27624);
    }
  }

  return result;
}

__n128 NK_Least_Squares_Publish_Soln(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1032);
  *(a1 + 24) = *(a2 + 2072);
  *(a1 + 40) = *(a2 + 2088);
  *(a1 + 56) = *(a2 + 2104);
  *(a1 + 72) = *(a2 + 2120);
  *(a1 + 88) = *(a2 + 2136);
  *(a1 + 152) = *(a2 + 2200);
  *(a1 + 192) = *(a2 + 2240);
  v2 = *(a2 + 8716);
  *(a1 + 532) = *(a2 + 8724);
  *(a1 + 524) = v2;
  v3 = *(a2 + 8704);
  *(a1 + 520) = *(a2 + 8712);
  *(a1 + 512) = v3;
  v4 = *(a2 + 2152);
  *(a1 + 120) = *(a2 + 2168);
  *(a1 + 104) = v4;
  v5 = *(a2 + 2176);
  *(a1 + 144) = *(a2 + 2192);
  *(a1 + 128) = v5;
  v6 = *(a2 + 2216);
  *(a1 + 184) = *(a2 + 2232);
  *(a1 + 168) = v6;
  v7 = *(a2 + 2280);
  v8 = *(a2 + 2296);
  v9 = *(a2 + 2312);
  *(a1 + 280) = *(a2 + 2328);
  *(a1 + 264) = v9;
  *(a1 + 248) = v8;
  *(a1 + 232) = v7;
  v10 = *(a2 + 2352);
  *(a1 + 288) = *(a2 + 2336);
  *(a1 + 304) = v10;
  v11 = *(a2 + 2256);
  *(a1 + 224) = *(a2 + 2272);
  *(a1 + 208) = v11;
  v12 = *(a2 + 8528);
  *(a1 + 320) = *(a2 + 8512);
  *(a1 + 336) = v12;
  v13 = *(a2 + 8544);
  v14 = *(a2 + 8560);
  v15 = *(a2 + 8592);
  *(a1 + 384) = *(a2 + 8576);
  *(a1 + 400) = v15;
  *(a1 + 352) = v13;
  *(a1 + 368) = v14;
  v16 = *(a2 + 8624);
  *(a1 + 416) = *(a2 + 8608);
  *(a1 + 432) = v16;
  result = *(a2 + 8640);
  v18 = *(a2 + 8656);
  v19 = *(a2 + 8688);
  *(a1 + 480) = *(a2 + 8672);
  *(a1 + 496) = v19;
  *(a1 + 448) = result;
  *(a1 + 464) = v18;
  return result;
}

unsigned __int16 *BDS_B1C_EphBin2Int(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = bswap32(*result) >> 19;
  *(a3 + 126) = (*(result + 3) | ((result[1] & 3u) << 8)) >> 1;
  *(a3 + 20) = (((*(result + 4) << 16) | (*(result + 5) << 8) | *(result + 6)) >> 6) & 0x7FF;
  *(a3 + 10) = (*(result + 6) >> 4) & 3;
  *(a3 + 32) = (*(result + 6) << 28 >> 31) & 0xFC000000 | (_byteswap_ulong(*(result + 3)) >> 2) & 0x3FFFFFF;
  *(a3 + 36) = (*(result + 9) << 30 >> 31) & 0xFE000000 | (_byteswap_ulong(*(result + 9)) >> 1) & 0x1FFFFFF;
  v3 = *(result + 13);
  v4 = __rev16(v3);
  HIDWORD(v5) = *(result + 12);
  LODWORD(v5) = bswap32(v3);
  v6 = (v5 >> 16) | 0xFFFE0000;
  if (result[6])
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  *(a3 + 40) = v7;
  v8 = *(result + 15);
  v9 = v8;
  v10 = (*(result + 17) | (v8 << 16) | (*(result + 16) << 8)) >> 1;
  if (v9 < 0)
  {
    v10 |= 0xFF800000;
  }

  *(a3 + 44) = v10;
  v11 = *(result + 17);
  v12 = bswap32(*(result + 9));
  if (v11)
  {
    v13 = v12 | (v11 << 32) | 0xFFFFFFFE00000000;
  }

  else
  {
    v13 = v12;
  }

  *(a3 + 48) = v13;
  *(a3 + 56) = ((*(result + 22) << 32) | (*(result + 23) << 24) | (*(result + 24) << 16) | (*(result + 25) << 8) | *(result + 26)) >> 7;
  *(a3 + 64) = ((*(result + 26) << 57) >> 63) & 0xFFFFFFFE00000000 | (((*(result + 26) << 32) | (*(result + 27) << 24) | (*(result + 28) << 16) | *(result + 30) | (*(result + 29) << 8)) >> 6) & 0x1FFFFFFFFLL;
  *(a3 + 72) = ((*(result + 30) << 58) >> 63) & 0xFFFFFFFE00000000 | (((*(result + 30) << 32) | (*(result + 31) << 24) | (*(result + 32) << 16) | *(result + 34) | (*(result + 33) << 8)) >> 5) & 0x1FFFFFFFFLL;
  *(a3 + 80) = ((*(result + 34) << 59) >> 63) & 0xFFFFFFFE00000000 | (((*(result + 34) << 32) | (*(result + 35) << 24) | (*(result + 36) << 16) | *(result + 38) | (*(result + 37) << 8)) >> 4) & 0x1FFFFFFFFLL;
  *(a3 + 88) = (*(result + 38) << 28 >> 31) & 0xFFF80000 | ((*(result + 40) | (*(result + 38) << 16) | (*(result + 39) << 8)) >> 1) & 0x7FFFF;
  *(a3 + 92) = (*(result + 40) << 15) | ((*(result + 42) | (*(result + 40) << 16) | (*(result + 41) << 8)) >> 2) & 0x7FFF;
  *(a3 + 94) = (*(result + 44) | (*(result + 42) << 16) | (*(result + 43) << 8)) >> 2;
  *(a3 + 96) = (*(result + 46) | (*(result + 44) << 16) | (*(result + 45) << 8)) >> 2;
  *(a3 + 100) = (*(result + 46) << 30 >> 31) & 0xFF000000 | (_byteswap_ulong(*(result + 23)) >> 2) & 0xFFFFFF;
  *(a3 + 104) = (*(result + 49) << 30 >> 31) & 0xFF000000 | (_byteswap_ulong(*(result + 49)) >> 2) & 0xFFFFFF;
  *(a3 + 108) = (*(result + 52) << 30 >> 31) & 0xFFE00000 | (_byteswap_ulong(*(result + 13)) >> 5) & 0x1FFFFF;
  HIDWORD(v14) = *(result + 55);
  LODWORD(v14) = bswap32(result[28]);
  v15 = (v14 >> 16) & 0x1FFFFF;
  v16 = (v14 >> 16) & 0x1FFFFF | 0xFFE00000;
  if ((*(result + 55) & 0x10) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  *(a3 + 112) = v17;
  *(a3 + 24) = bswap32(result[29]) >> 21;
  *(a3 + 116) = (*(result + 59) << 27 >> 31) & 0xFE000000 | (_byteswap_ulong(*(result + 59)) >> 4) & 0x1FFFFFF;
  *(a3 + 120) = (*(result + 62) << 28 >> 31) & 0xFFC00000 | (_byteswap_ulong(*(result + 31)) >> 6) & 0x3FFFFF;
  *(a3 + 124) = ((*(result + 65) << 15) >> 15) & 0xFFC0 | ((*(result + 66) | (*(result + 65) << 8)) >> 3) & 0x3F;
  *(a3 + 134) = ((*(result + 66) << 13) >> 15) & 0xF000 | ((*(result + 68) | (*(result + 66) << 16) | (*(result + 67) << 8)) >> 7) & 0xFFF;
  *(a3 + 136) = ((*(result + 68) << 9) >> 15) & 0xF000 | ((*(result + 69) | (*(result + 68) << 8)) >> 3) & 0xFFF;
  *(a3 + 132) = ((*(result + 69) << 13) >> 15) & 0xF000 | ((*(result + 71) | (*(result + 69) << 16) | (*(result + 70) << 8)) >> 7) & 0xFFF;
  *(a3 + 140) = *(a2 + 1) >> 7;
  *(a3 + 141) = (*(a2 + 1) & 0x40) != 0;
  *(a3 + 142) = (*(a2 + 1) & 0x20) != 0;
  return result;
}

_DWORD *NVIC_L5_AlmBin2Int(_DWORD *result, uint64_t a2)
{
  v2 = result[1];
  v3 = result[2];
  *(a2 + 12) = (v2 >> 18) & 0x3FF;
  *(a2 + 16) = v2 >> 2;
  HIDWORD(v4) = v3;
  LODWORD(v4) = result[3];
  *(a2 + 14) = __PAIR64__(v2, v3) >> 18;
  v5 = (v4 >> 26) & 0xFFFFFF;
  v6 = (v4 >> 26) & 0xFFFFFF | 0xFF000000;
  if ((v3 >> 17))
  {
    LODWORD(v5) = v6;
  }

  *(a2 + 20) = v5;
  v7 = result[3];
  v8 = result[4];
  *(a2 + 24) = v7 >> 10;
  *(a2 + 28) = (__PAIR64__(v7, v8) >> 18) & 0xFFFFFF;
  HIDWORD(v9) = result[4];
  LODWORD(v9) = result[5];
  v10 = (v9 >> 26) & 0xFFFFFF;
  v11 = (v9 >> 26) & 0xFFFFFF | 0xFF000000;
  if ((HIDWORD(v9) >> 17))
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *(a2 + 32) = v12;
  v13 = result[5];
  if ((v13 >> 25))
  {
    v14 = -16777216;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 36) = v14 & 0xFF000000 | (v13 >> 2) & 0xFFFFFF;
  HIDWORD(v15) = result[5];
  LODWORD(v15) = result[6];
  v16 = (v15 >> 10) & 0xFFFFFF;
  v17 = (v15 >> 10) & 0xFFFFFF | 0xFF000000;
  if ((HIDWORD(v15) >> 1))
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  *(a2 + 40) = v18;
  v19 = result[7];
  HIDWORD(v20) = result[6];
  LODWORD(v20) = v19;
  v21 = (v20 >> 31) & 0x7FF;
  v22 = (v20 >> 31) & 0x7FF | 0xF800;
  if (((2 * HIDWORD(v20)) & 0x400) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  *(a2 + 44) = v23;
  if (((v19 >> 20) & 0x400) != 0)
  {
    v24 = -2048;
  }

  else
  {
    v24 = 0;
  }

  *(a2 + 46) = v24 & 0xF800 | (v19 >> 20) & 0x7FF;
  *(a2 + 8) = (v19 >> 14) & 0x3F;
  *(a2 + 48) = v19 >> 6;
  return result;
}

uint64_t Track_Meas_Update(int a1, double *a2, unsigned int a3, char *a4, _BOOL8 a5, _WORD *a6, double a7, double a8, double a9)
{
  v29[3] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) > 1 || (a4[12] = 0, *a4 != 1))
  {
    v18 = 0;
    return v18 & 1;
  }

  v24 = 0.0;
  v16 = *(a4 + 5) - *(a4 + 3) * a9;
  *(a4 + 6) = v16;
  if (v16 >= 180.0)
  {
    v17 = -360.0;
  }

  else
  {
    if (v16 >= -180.0)
    {
      goto LABEL_10;
    }

    v17 = 360.0;
  }

  v16 = v16 + v17;
  *(a4 + 6) = v16;
LABEL_10:
  v20 = __sincos_stret(a7 * 0.0174532925);
  Comp_Track_velLOS(v20.__cosval * a8, v20.__sinval * a8, a2, v29);
  v26 = 0;
  v21 = a1 + 2;
  v22 = 2;
  memset(v25, 0, sizeof(v25));
  do
  {
    *(v25 + v21--) = v29[v22--];
  }

  while (v22 != -1);
  *(v25 + a3) = v16;
  umeas(a5, a3, *(a4 + 4), v25, v28, v27, &v24, *(a4 + 7));
  v23 = v24;
  if (v24 <= 0.0)
  {
    v18 = 0;
    *a4 = 0;
    a4[12] = 1;
    ++*a6;
    *(a4 + 8) = v23 + *(a4 + 8);
  }

  else
  {
    *(a4 + 8) = *(a4 + 4) * (v24 * (v28[a3] * v28[a3]));
    v18 = *a4;
  }

  return v18 & 1;
}

uint64_t NK_Comp_ith_DR_Res(uint64_t result, uint64_t a2, uint64_t a3, double *a4, double a5, double a6, double a7, double a8, double a9)
{
  *a4 = a6 - a9;
  *(a3 + result + 184) = 1;
  ++*(a3 + 2);
  v9 = a7 * 0.000025 * a8;
  *(a3 + 8 * result + 4280) = v9;
  v10 = *a4 - a5;
  *(a3 + 5304 + 8 * result) = v10;
  v11 = *(a3 + 24 * result + 1208) + *(a3 + 24 * result + 1216);
  *(a3 + 10680 + 8 * result) = v11;
  if (*(a2 + result + 384) == 1)
  {
    v12 = a2 + 8 * result;
    v10 = v10 - *(v12 + 2560) * a8;
    *(a3 + 5304 + 8 * result) = v10;
    v13 = v11 + *(v12 + 3584) * a8 * a8;
  }

  else
  {
    v13 = v9 + v11;
  }

  *(a3 + 10680 + 8 * result) = v13;
  *(a3 + 8 * result + 7352) = v10;
  if (fabs(v10) < 150000.0)
  {
    *(a3 + result + 312) = 1;
    ++*(a3 + 3);
  }

  return result;
}

uint64_t GPS_To_Glon_Time(uint64_t result, int a2, double a3, double a4, int *a5, int *a6, double *a7)
{
  v7 = a3 / 86400 - (a2 + (result << 10)) + 8 * (a2 + (result << 10));
  v8 = (v7 - 5839) / 1461;
  *a5 = v8;
  *a6 = v7 - 1461 * v8 - 5838;
  ++*a5;
  v9 = -86400.0;
  v10 = a3 + floor(a3 / 86400.0) * -86400.0 + 10800.0 - a4;
  *a7 = v10;
  if (v10 >= 86400.0)
  {
    v11 = 1;
    goto LABEL_5;
  }

  if (v10 < 0.0)
  {
    v11 = -1;
    v9 = 86400.0;
LABEL_5:
    *a7 = v10 + v9;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = *a6 + v11;
  *a6 = v12;
  if (v12 <= 1461)
  {
    if (v12 > 0)
    {
      return result;
    }

    v13 = 1461;
    v14 = -1;
  }

  else
  {
    v13 = -1461;
    v14 = 1;
  }

  *a5 += v14;
  *a6 += v13;
  return result;
}

uint64_t Glon_To_GPS_Time(uint64_t result, int a2, double a3, double a4, int *a5, int *a6, double *a7)
{
  v7 = -0.5;
  if (a4 > 0.0)
  {
    v7 = 0.5;
  }

  v8 = v7 + a4;
  v9 = 2147483650.0;
  v10 = -2147483650.0;
  if (v8 >= -2147483650.0)
  {
    v10 = v8;
  }

  if (v8 <= 2147483650.0)
  {
    v9 = v10;
  }

  v11 = a2 + 1461 * result + 4377;
  *a5 = v11 / 7168;
  v12 = v11 % 7168;
  v13 = v11 % 7168 / 7;
  *a6 = v13;
  v14 = 86400.0;
  v15 = a3 + -10800.0 + v9 + a4 - v9;
  if (v15 >= 86400.0)
  {
    v15 = v15 + -86400.0;
  }

  else
  {
    v14 = 0.0;
    if (v15 < 0.0)
    {
      v15 = v15 + 86400.0;
      v14 = -86400.0;
    }
  }

  v16 = v14 + (-7 * v13 + v12) * 86400.0 + v15;
  *a7 = v16;
  v17 = 604800.0;
  if (v16 >= 604800.0)
  {
    v18 = 1;
    v17 = -604800.0;
  }

  else
  {
    if (v16 >= 0.0)
    {
      return result;
    }

    v18 = -1;
  }

  *a6 = v18 + v13;
  *a7 = v16 + v17;
  return result;
}

BOOL Is_Future_Leap_Sec_Date_Not_Valid(int a1, int a2, unsigned int a3, unsigned __int8 a4)
{
  if (a1 < 1024)
  {
    return 0;
  }

  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        a3 |= 0x400u;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (a2 == 4)
    {
      a3 += 1356;
      goto LABEL_14;
    }

    if (a2 != 6 && a2 != 5)
    {
      goto LABEL_14;
    }
  }

  a3 |= 0x400u;
LABEL_14:
  v5 = 0;
  v6 = (a1 - 127);
  v7 = v6 >= a3;
  v8 = v6 - a3;
  if (!v7)
  {
    v8 = 0;
  }

  if (a2 == 4)
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = (3257812231 * (86400 * v9 - 43200)) >> 32;
  v11 = ((v10 >> 16) + (v10 >> 31) - (((v8 + 255) & 0xFF00) + a3) + 8 * (((v8 + 255) & 0xFF00) + a3) - 5839) % 1461 + 1;
  do
  {
    v12 = Glon_Day_Num_of_Quarter_Year_Change[v5];
    result = v11 != v12;
    if (v11 == v12)
    {
      break;
    }
  }

  while (v5++ != 15);
  return result;
}

uint64_t VecSortIndexAscR8(uint64_t result, unsigned int a2, int *a3, int a4)
{
  if (a2 >= 2)
  {
    v4 = 0;
    for (i = 1; i != a2; ++i)
    {
      v6 = a3[i];
      v7 = i;
      if (i - 1 >= 0)
      {
        v7 = i;
        v8 = v4;
        do
        {
          v9 = a3[v8];
          v10 = *(result + 8 * v9);
          if (a4)
          {
            if (fabs(v10) <= fabs(*(result + 8 * v6)))
            {
              v7 = v8 + 1;
              goto LABEL_11;
            }
          }

          else if (v10 <= *(result + 8 * v6))
          {
            goto LABEL_11;
          }

          a3[v8-- + 1] = v9;
          --v7;
        }

        while (v8 + 1 > 0);
        v7 = 0;
      }

LABEL_11:
      a3[v7] = v6;
      ++v4;
    }
  }

  return result;
}

int *VecSortIndexAscI4(int *result, unsigned __int8 *a2, int a3, signed int a4)
{
  if (a4 > a3 && ((a4 | a3) & 0x80000000) == 0)
  {
    v6 = result;
    do
    {
      v7 = a3;
      for (i = a4; ; ++i)
      {
        v9 = v6[a3];
        v10 = v7 - 1;
        v11 = &v6[v7];
        do
        {
          v13 = *v11++;
          v12 = v13;
          ++v10;
          v14 = v7 + 1;
          if (v7 >= a4)
          {
            break;
          }

          ++v7;
        }

        while (v12 <= v9);
        v7 = v14 - 1;
        do
        {
          v15 = i;
          v16 = v6[i--];
        }

        while (v15 > a3 && v16 > v9);
        if ((i + 1) <= v7)
        {
          break;
        }

        *(v11 - 1) = v16;
        v6[v15] = v12;
        v17 = a2[v10];
        a2[v10] = a2[v15];
        a2[v15] = v17;
      }

      v6[v15] = v9;
      v6[a3] = v16;
      v18 = a2[v15];
      a2[v15] = a2[a3];
      a2[a3] = v18;
      result = VecSortIndexAscI4(v6, a2, a3, i);
      a3 = i + 2;
    }

    while ((i + 2) < a4 && ((a3 | a4) & 0x80000000) == 0);
  }

  return result;
}

uint64_t VecSortDscU1(uint64_t result, unsigned int a2, signed __int8 *a3)
{
  if (a2)
  {
    v3 = vdupq_n_s64(a2 - 1);
    v4 = xmmword_299052000;
    v5 = xmmword_299052010;
    v6 = xmmword_299052020;
    v7 = xmmword_299052030;
    v8 = xmmword_299051FE0;
    v9 = xmmword_299051FF0;
    v10 = xmmword_299050360;
    v11 = xmmword_299050240;
    v12 = a3 + 7;
    v13 = 15;
    v14 = vdupq_n_s64(0x10uLL);
    do
    {
      v15 = v13 - 15;
      v16 = vmovn_s64(vcgeq_u64(v3, v11));
      if (vuzp1_s8(vuzp1_s16(v16, *v3.i8), *v3.i8).u8[0])
      {
        *(v12 - 7) = v15;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v3), *&v3).i8[1])
      {
        *(v12 - 6) = v15 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v10))), *&v3).i8[2])
      {
        *(v12 - 5) = v15 | 2;
        *(v12 - 4) = v15 | 3;
      }

      v17 = vmovn_s64(vcgeq_u64(v3, v9));
      if (vuzp1_s8(*&v3, vuzp1_s16(v17, *&v3)).i32[1])
      {
        *(v12 - 3) = v15 | 4;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(v17, *&v3)).i8[5])
      {
        *(v12 - 2) = v15 | 5;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v8)))).i8[6])
      {
        *(v12 - 1) = v15 | 6;
        *v12 = v15 | 7;
      }

      v18 = vmovn_s64(vcgeq_u64(v3, v7));
      if (vuzp1_s8(vuzp1_s16(v18, *v3.i8), *v3.i8).u8[0])
      {
        v12[1] = v15 | 8;
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v3), *&v3).i8[1])
      {
        v12[2] = v15 | 9;
      }

      if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v6))), *&v3).i8[2])
      {
        v12[3] = v15 | 0xA;
        v12[4] = v15 | 0xB;
      }

      v19 = vmovn_s64(vcgeq_u64(v3, v5));
      if (vuzp1_s8(*&v3, vuzp1_s16(v19, *&v3)).i32[1])
      {
        v12[5] = v15 | 0xC;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(v19, *&v3)).i8[5])
      {
        v12[6] = v15 | 0xD;
      }

      if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4)))).i8[6])
      {
        v12[7] = v15 | 0xE;
        v12[8] = v15 | 0xF;
      }

      v9 = vaddq_s64(v9, v14);
      v10 = vaddq_s64(v10, v14);
      v11 = vaddq_s64(v11, v14);
      v8 = vaddq_s64(v8, v14);
      v7 = vaddq_s64(v7, v14);
      v6 = vaddq_s64(v6, v14);
      v5 = vaddq_s64(v5, v14);
      v4 = vaddq_s64(v4, v14);
      v13 += 16;
      v12 += 16;
    }

    while (v13 - ((a2 + 15) & 0x1FFFFFFF0) != 15);
    if (a2 != 1)
    {
      for (i = 1; i != a2; ++i)
      {
        v21 = a3[i];
        v22 = i - 1;
        if (i - 1 >= 0)
        {
          while (1)
          {
            v23 = &a3[v22];
            v24 = *v23;
            if (*(result + v21) <= *(result + v24))
            {
              break;
            }

            v23[1] = v24;
            if (v22-- <= 0)
            {
              v22 = -1;
              break;
            }
          }
        }

        a3[v22 + 1] = v21;
      }
    }
  }

  return result;
}

double *VecSortAscR8(double *result, int a2, signed int a3)
{
  if (a3 > a2 && ((a3 | a2) & 0x80000000) == 0)
  {
    v4 = result;
    do
    {
      v5 = a2;
      for (i = a3; ; ++i)
      {
        v7 = v4[a2];
        v8 = &v4[v5];
        do
        {
          v9 = *v8++;
          v10 = v9;
          v11 = v5 + 1;
          if (v5 >= a3)
          {
            break;
          }

          ++v5;
        }

        while (v10 <= v7);
        v5 = v11 - 1;
        do
        {
          v12 = i;
          v13 = v4[i--];
        }

        while (v12 > a2 && v13 > v7);
        if ((i + 1) <= v5)
        {
          break;
        }

        *(v8 - 1) = v13;
        v4[v12] = v10;
      }

      v4[v12] = v7;
      v4[a2] = v13;
      result = VecSortAscR8(v4, a2, i);
      a2 = i + 2;
    }

    while ((i + 2) < a3 && ((a2 | a3) & 0x80000000) == 0);
  }

  return result;
}

double *VecMedian8(double *result, int a2)
{
  if (a2)
  {
    return VecSortAscR8(result, 0, a2 - 1);
  }

  return result;
}

uint64_t GN_AGNSS_Set_Not_Brd_SV_List(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(v35, 0, 218);
  result = Is_GN_API_Set_Allowed("GN_AGNSS_Set_Not_Brd_SV_List");
  if (!result)
  {
    return result;
  }

  Debug_Log_AGNSS_Not_Brd_SV_List(a1, a2, a3, a4);
  v9 = "--";
  if (a1 == 1)
  {
    v9 = "L5";
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = "L1";
  }

  if (a2 > 0xDA)
  {
    EvCrt_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED:  %s  Num_Not_Brd_SV = %d >%d, Out of range!");
    return 0;
  }

  if (!a2)
  {
    v34 = v10;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_73;
  }

  v11 = 0;
  v12 = a2;
  do
  {
    v13 = 0;
    v14 = a3[v11];
    if (v14 <= 7)
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = 36;
          v14 = 1;
          v17 = 2;
          goto LABEL_31;
        }

        v15 = 0;
        v16 = 0;
        if (v14 == 4)
        {
          v15 = 158;
          v14 = 120;
          v17 = 6;
          goto LABEL_31;
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_27;
        }

        v15 = 0;
        v16 = 0;
        if (v14 == 1)
        {
          v17 = 0;
          v15 = 32;
          goto LABEL_31;
        }
      }
    }

    else if (v14 <= 31)
    {
      if (v14 == 8)
      {
LABEL_27:
        v18 = str_AGNSS_PM(a3[v11]);
        EvCrt_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED:  %s  Not_Brd_SV_Type_List[%d] = 0x%x (%s), Out of range!", v10, v11, v14, v18);
        goto LABEL_38;
      }

      v15 = 0;
      v16 = 0;
      if (v14 == 16)
      {
        v15 = 202;
        v14 = 193;
        v17 = 4;
        goto LABEL_31;
      }
    }

    else
    {
      if (v14 == 32)
      {
        v15 = 24;
        v17 = 1;
        v14 = 1;
        goto LABEL_31;
      }

      if (v14 == 64)
      {
        v15 = 63;
        v14 = 1;
        v17 = 3;
        goto LABEL_31;
      }

      v15 = 0;
      v16 = 0;
      if (v14 == 128)
      {
        v15 = 14;
        v14 = 1;
        v17 = 5;
LABEL_31:
        v16 = Num_Prn[v17];
        v13 = v14;
      }
    }

    v19 = a4[v11];
    if (v13 > v19 || v15 < v19)
    {
      EvCrt_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED:  %s  Not_Brd_SV_Id_List[%d] = %d <%d or >%d, Out of range!");
      return 0;
    }

    *(v35 + (v16 - v13 + v19)) = 1;
LABEL_38:
    ++v11;
  }

  while (a2 != v11);
  v34 = v10;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  LODWORD(a2) = 0;
  do
  {
    v28 = *a3++;
    v27 = v28;
    if (v28 > 15)
    {
      if (v27 == 128)
      {
        v29 = v21 + 1;
      }

      else
      {
        v29 = v21;
      }

      if (v27 == 64)
      {
        v30 = v22 + 1;
      }

      else
      {
        v30 = v22;
      }

      if (v27 == 64)
      {
        v29 = v21;
      }

      if (v27 == 32)
      {
        v31 = v26 + 1;
      }

      else
      {
        v31 = v26;
      }

      if (v27 == 16)
      {
        v31 = v26;
        v32 = v24 + 1;
      }

      else
      {
        v32 = v24;
      }

      if (v27 > 63)
      {
        v22 = v30;
        v21 = v29;
      }

      else
      {
        v26 = v31;
        v24 = v32;
      }
    }

    else if (v27 > 1)
    {
      if (v27 == 4)
      {
        v33 = v25 + 1;
      }

      else
      {
        v33 = v25;
      }

      if (v27 == 2)
      {
        ++v23;
      }

      else
      {
        v25 = v33;
      }
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        LODWORD(a2) = a2 + 1;
      }
    }

    else
    {
      EvCrt_Illegal_switch_case("GN_AGNSS_Set_Not_Brd_SV_List", 262);
    }

    --v12;
  }

  while (v12);
LABEL_73:
  EvLog_v("GN_AGNSS_Set_Not_Brd_SV_List:  %s  G %d Q %d R %d S %d B %d E %d N %d", v34, a2, v24, v26, v25, v22, v23, v21);
  if (API_Set_Not_Broadcast_SVID(a1, v35))
  {
    return 1;
  }

  EvLog_v("GN_AGNSS_Set_Not_Brd_SV_List: FAILED:  %s", v34);
  return 0;
}

const char *str_AGNSS_PM(int a1)
{
  v1 = "N";
  if (a1 != 128)
  {
    v1 = 0;
  }

  if (a1 == 64)
  {
    v1 = "B";
  }

  if (a1 == 32)
  {
    v1 = "R";
  }

  v2 = "M";
  v3 = "Q";
  if (a1 != 16)
  {
    v3 = 0;
  }

  if (a1 != 8)
  {
    v2 = v3;
  }

  if (a1 <= 31)
  {
    v1 = v2;
  }

  v4 = "E";
  v5 = "S";
  if (a1 != 4)
  {
    v5 = 0;
  }

  if (a1 != 2)
  {
    v4 = v5;
  }

  v6 = "X";
  v7 = "G";
  if (a1 != 1)
  {
    v7 = 0;
  }

  if (a1)
  {
    v6 = v7;
  }

  if (a1 <= 1)
  {
    v4 = v6;
  }

  if (a1 <= 7)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t GN_AGNSS_Set_Time_Model(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGNSS_Set_Time_Model");
  if (result)
  {
    v3 = str_AGNSS_PM(*a1);
    v4 = str_AGNSS_PM(*(a1 + 24));
    EvLog_v("GN_AGNSS_Set_Time_Model: %s->%s  %d %d  %d %d %d  %d  %d  %d", v3, v4, *(a1 + 4), *(a1 + 8), *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 21), *(a1 + 22), *(a1 + 28));
    if (*a1 <= 0x10u && ((1 << *a1) & 0x10113) != 0)
    {
      str_AGNSS_PM(*a1);
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: GNSS_Type_From = 0x%x (%s), Out of range!");
      return 0;
    }

    v5 = *(a1 + 24);
    if (v5 <= 8 && ((1 << v5) & 0x111) != 0)
    {
      str_AGNSS_PM(*(a1 + 24));
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: GNSS_Type_To = 0x%x (%s), Out of range!");
      return 0;
    }

    if (*(a1 + 4) >= 0x240C840u)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: Ref_GNSS_TOW = %d >=604800000/16, Out of range!");
      return 0;
    }

    v6 = *(a1 + 16);
    if (v6 != 0x7FFFFFFF && (v6 - 0x800000) >> 24 != 255)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: tA1 = %d <-2^23 or >=2^23, Out of range!");
      return 0;
    }

    v7 = *(a1 + 20);
    if (v7 != 127 && ((v7 - 64) & 0x80000000) == 0)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: tA2 = %d <-64 or >=64, Out of range!");
      return 0;
    }

    v8 = *(a1 + 8);
    if (v8 != 0x7FFF && v8 >= 0x2000)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model:  FAILED:  Ref_GNSS_Week = %d >=8192, Out of range!");
      return 0;
    }

    v9 = *(a1 + 21);
    if (v9 != 127 && ((v9 - 64) & 0x80000000) == 0)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model:  FAILED:  deltaT = %d <-64 or >=64, Out of range!");
      return 0;
    }

    if (v6 >= 0)
    {
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = -v6;
    }

    if (v6 != 0x7FFFFFFF && v10 >= 0x2845)
    {
      EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED: tA1 = %d  outside +/- 10308 (300ns), Unrealistic!");
      return 0;
    }

    Debug_Log_AGNSS_Time_Model(a1);
    result = 0;
    v11 = *a1;
    if (*a1 > 63)
    {
      if (v11 == 64)
      {
        v22 = *(a1 + 24);
        if (v22 == 32 || v22 == 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v23 = *(a1 + 8);
          if (v23 > 0x54B)
          {
            LOWORD(v23) = v23 - 1356;
          }

          LOWORD(v32) = v23;
          v24 = *(a1 + 12);
          v25 = *(a1 + 16);
          HIDWORD(v32) = 16 * *(a1 + 4) / 0x3E8u;
          LODWORD(v33) = v24;
          WORD2(v33) = v25;
          BYTE6(v33) = *(a1 + 20);
          LOWORD(v34) = *(a1 + 22);
          BYTE2(v34) = *(a1 + 28);
          if ((GN_ABDS_Set_BGTO(1, &v32) & 1) == 0)
          {
            EvCrt_v("GN_AGNSS_Set_Time_Model:  FAILED,  A-Beidou BGTO");
          }
        }

        return 1;
      }

      else if (v11 == 128)
      {
        if (*(a1 + 24) != 1)
        {
          return 0;
        }

        v17 = *(p_api + 48);
        if (*(v17 + 16) == 1 && *v17 >= 3)
        {
          v18 = *(v17 + 40) + 604800 * *(v17 + 32);
        }

        else
        {
          v18 = 0;
        }

        v26 = p_NA;
        v27 = p_NA + 20480;
        *(p_NA + 22460) = v18;
        *(v27 + 1988) = *(a1 + 12);
        *(v27 + 1990) = *(a1 + 16);
        *(v27 + 1992) = *(a1 + 20);
        *(v27 + 1994) = *(a1 + 4) / 0x3E8u;
        *(v27 + 1996) = *(a1 + 8);
        if (*(a1 + 28))
        {
          v28 = 5;
        }

        else
        {
          v28 = 3;
        }

        *(v27 + 1984) = v28;
        result = 1;
        *(v26 + 347) = 1;
      }
    }

    else
    {
      if (v11 == 2)
      {
        v19 = *(a1 + 24);
        if (v19 != 16 && v19 != 1)
        {
          return 0;
        }

        v20 = *(a1 + 16);
        LOWORD(v32) = *(a1 + 12);
        WORD1(v32) = v20;
        BYTE4(v32) = 16 * *(a1 + 4) / 0x36EE80u;
        LOWORD(v21) = (*(a1 + 8) - 1024) & 0x3F;
        if (1024 - *(a1 + 8) >= 0)
        {
          v21 = -((1024 - *(a1 + 8)) & 0x3F);
        }

        BYTE5(v32) = v21;
        BYTE6(v32) = *(a1 + 28);
        v16 = GN_AGAL_Set_GGTO(&v32);
        if ((v16 & 1) == 0)
        {
          EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED, A-Galileo GGTO");
        }

        return v16;
      }

      if (v11 == 32)
      {
        v12 = *(a1 + 24);
        if (v12 != 16 && v12 != 1)
        {
          return 0;
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        *v30 = 0;
        v31 = 0.0;
        v13 = *(a1 + 8);
        v14 = 16 * *(a1 + 4) / 0x3E8u;
        API_Get_UTC_Cor(1, &v31);
        GPS_To_Glon_Time(0, v13, v14, v31, v30, &v30[1], &v29);
        LOBYTE(v33) = v30[0];
        v15 = vcvtd_n_f64_s32(*(a1 + 12), 5uLL);
        LOWORD(v32) = v30[1];
        HIDWORD(v33) = v15;
        HIDWORD(v32) = 0;
        LOBYTE(v34) = 1;
        BYTE1(v34) = *(a1 + 28);
        v16 = GN_AGLON_Set_Clk1(&v32);
        if ((v16 & 1) == 0)
        {
          EvCrt_v("GN_AGNSS_Set_Time_Model: FAILED, A-Glonass Clk1");
        }

        return v16;
      }
    }
  }

  return result;
}

uint64_t GN_AGNSS_Set_SH_Iono_Model(uint64_t a1)
{
  result = Is_GN_API_Set_Allowed("GN_AGNSS_Set_SH_Iono_Model");
  if (result)
  {
    EvLog_v("GN_AGNSS_Set_SH_Iono_Model: Week %u  Tow %u  Layers %u", *(a1 + 4), *a1, *(a1 + 6));
    if (*(a1 + 6))
    {
      if (*(a1 + 6) <= 3u)
      {
        v3 = 0;
        v22 = a1;
        v23 = a1 + 8;
        v4 = (a1 + 32);
        for (i = a1 + 1112; ; i += 2072)
        {
          v6 = (v23 + 2072 * v3);
          if (!*v6)
          {
            EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Layer_Num = %d, Invalid layer!");
            return 0;
          }

          if (*v6 >= 3u)
          {
            EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Layer_Num = %d > %d, Out of range!");
            return 0;
          }

          v7 = *(v6 + 2);
          if (v7 >= 0x10)
          {
            EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Degree_N = %d > %d, Out of range!");
            return 0;
          }

          v8 = *(v6 + 3);
          if (v8 >= 0x10)
          {
            EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Order_M = %d > %d, Out of range!");
            return 0;
          }

          v9 = *(v6 + 4);
          if (v9 >= 0x89)
          {
            EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Cosine Coefficient Number = %u > %u, Too many coefficients!");
            return 0;
          }

          v10 = v7 + 1;
          v11 = ((v7 + 1) * (v7 + 2)) >> 1;
          v12 = v7 - v8 + (v7 - v8) * (v7 - v8);
          v13 = v11 - v12 / 2;
          v14 = (v11 - v12 / 2);
          if (v14 != v9)
          {
            EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Cosine Coefficient Number = %u <> %u, Not expected number!");
            return 0;
          }

          if (v6[2] <= 0.0)
          {
            break;
          }

          if (v14 < 2)
          {
            v17 = 1;
          }

          else
          {
            v15 = 1;
            v16 = v4;
            v17 = 1;
            do
            {
              v18 = v6[2];
              if (fabs(*v16) > v18)
              {
                EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED: %d-th Cosine Coefficient = %f > %f (First Cos Item), Too large!", v15, *v16, v18);
                v17 = 0;
              }

              ++v15;
              ++v16;
            }

            while (v14 != v15);
          }

          if (v13 == v10)
          {
            v20 = 1;
          }

          else
          {
            v19 = 0;
            v20 = 1;
            do
            {
              v21 = v6[2];
              if (fabs(*(i + 8 * v19)) > v21)
              {
                EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED: %d-th Sine Coefficient = %f > %f (First Cos Item), Too large!", v19, *(i + 8 * v19), v21);
                v20 = 0;
              }

              ++v19;
            }

            while ((v13 - v10) != v19);
          }

          if ((v17 & v20 & 1) == 0)
          {
            return 0;
          }

          ++v3;
          v4 += 259;
          if (v3 >= *(v22 + 6))
          {
            Debug_Log_AGNSS_SH_Iono_Model(v22);
            API_Set_SH_Iono_Model(v22);
            return 1;
          }
        }

        EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  First Cosine Coefficient, Mean Global TEC = %f < 0.0, Must be positive!");
      }

      else
      {
        EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Num_Layers = %d > %d, Too many layers!");
      }
    }

    else
    {
      EvCrt_v("GN_AGNSS_Set_SH_Iono_Model:  FAILED:  Num_Layers = %d , Empty!");
    }

    return 0;
  }

  return result;
}

uint64_t GM_Get_Best_SSS(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = (a4 - 1);
  if (a4 - 1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = (a1 + 36 * v4 + 8);
  v8 = (a2 + 48 * v4 + 12);
  v9 = 0xFFFFFFFFLL;
  do
  {
    if (Is_Legal(*(v7 - 2)))
    {
      v10 = *(v7 - 4);
      if (v10 >= a3 && (~*v7 & 0x308) == 0)
      {
        if (*(v8 - 8) == 1)
        {
          if (*v8)
          {
            v11 = 70;
          }

          else
          {
            v11 = 64;
          }

          v10 += v11;
          if (v8[3])
          {
            v10 += 128;
          }
        }

        if (v10 <= v6)
        {
          v9 = v9;
        }

        else
        {
          v6 = v10;
          v9 = v4;
        }
      }
    }

    v7 -= 18;
    v8 -= 48;
  }

  while (v4-- > 0);
  return v9;
}

void GncP24_02XofDeleteData(XofSvcsIf *a1)
{
  v1 = a1;
  Instance = XofSvcsIf::GetInstance(a1);
  v3 = Instance;
  if (v1)
  {
    XofSvcsIf::ClrOrbData(Instance);
    XofSvcsIf::ClrBceOrbData(v3);
    g_OrbitDataAvailable = 0;
    g_BceOrbitDataInjected = 0;
  }

  if ((v1 & 2) != 0)
  {
    std::mutex::lock((v3 + 1200));
    *(v3 + 1064) = 0u;
    *(v3 + 1080) = 0u;
    *(v3 + 1096) = 0u;
    *(v3 + 1112) = 0u;
    *(v3 + 1000) = v4;
    *(v3 + 1016) = 0u;
    *(v3 + 1032) = 0u;
    *(v3 + 1048) = 0u;
    *(v3 + 283) = 0;

    std::mutex::unlock((v3 + 1200));
  }
}

void GncP24_55UpdateBceOrbitAssistance(XofSvcsIf *a1)
{
  v337 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable == 1)
  {
    v294[0] = 0;
    v295 = 0;
    if ((a1 & 1) == 0 && g_BceOrbitDataInjected == 1)
    {
      if (g_GncP_PEUpdate[0] != 1 || (dword_2A13EC790 & 0xC) == 0)
      {
        return;
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v1 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time Jump detected, Re-injecting broadcast data\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

    Instance = XofSvcsIf::GetInstance(a1);
    if (g_GncP_PEUpdate[0] == 1)
    {
      v3 = word_2A13EC688;
      if (byte_2A13EC678 == 1 && word_2A13EC688 != 0)
      {
        v5 = Instance;
        v6 = *&qword_2A13EC690;
        if (XofSvcsIf::GetXofExtEphStartTime(Instance, v294) == 1)
        {
          v7 = v6 + 604800 * v3;
          v8 = v295 + 604800 * v294[0];
          v9 = v8 - v7;
          v284 = v8;
          v285 = v7;
          v10 = v7 >= v8;
          v11 = v7 - v8;
          if (v11 == 0 || !v10)
          {
            v11 = v9;
          }

          if (v11 <= 0x93A7F)
          {
            v286 = v11;
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v12 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: AgeCheckOK for Iono,Utc,TM,ChanMap,Gpstime,%llu,EEStartTime,%llu\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", v285, v284);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            GncP24_18UpdtXofAssistNotBrdSv(0);
            GncP24_18UpdtXofAssistNotBrdSv(1);
            __str[0] = 0;
            v336 = 0;
            *v314 = 0;
            *&v314[4] = 0;
            v14 = XofSvcsIf::GetInstance(v13);
            if (XofSvcsIf::GetXofInjctTime(v14, v314) != 1 || XofSvcsIf::GetRtiInjctTime(v14, __str) != 1 || *&v314[4] + 604800 * *v314 >= v336 + 604800 * __str[0])
            {
              GncP24_63UpdateXofAssistDoNotUseSV(0);
              GncP24_63UpdateXofAssistDoNotUseSV(1);
            }

            v293 = 0;
            IonoModel = XofSvcsIf::GetIonoModel(v5, &v293);
            if (IonoModel == 1)
            {
              *v314 = GncP24_GetXofInjectFileTime_GPS_Seconds(IonoModel);
              *&v314[4] = v293;
              v314[12] = 1;
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v16 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Iono GPS_secs,%d,A0,%d,A1,%d,A2,%d,A3,%d,B0,%d,B1,%d,B2,%d,B3,%d\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", *v314, v314[4], v314[5], v314[6], v314[7], v314[8], v314[9], v314[10], v314[11]);
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }

              v17 = GN_AGPS_Set_Ion(v314);
              if (g_LbsOsaTrace_Config < 5)
              {
                v18 = 1;
              }

              else
              {
                v18 = v17;
              }

              if ((v18 & 1) == 0)
              {
                bzero(__str, 0x3C6uLL);
                v19 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G Iono\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }

            else if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v20 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G Iono\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 769);
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }

            v290 = 0;
            v291 = 0;
            v292 = 0;
            GpsUTCModel = XofSvcsIf::GetGpsUTCModel(v5, &v290);
            if (GpsUTCModel != 1)
            {
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v23 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC Model\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 769);
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }

              goto LABEL_68;
            }

            *&v314[16] = 0x10000;
            *v314 = 0;
            *&v314[8] = 0;
            *v314 = GncP24_GetXofInjectFileTime_GPS_Seconds(GpsUTCModel);
            *&v314[4] = v290;
            v22 = v291;
            if (v291 > 0xFFu)
            {
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v24 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC sTot,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 772, v22);
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }

            else
            {
              v314[12] = v291;
            }

            v25 = WORD1(v291);
            if (WORD1(v291) > 0xFFu)
            {
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v26 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC WNt,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 772, v25);
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }

            else
            {
              v314[13] = BYTE2(v291);
            }

            v27 = SWORD2(v291);
            if (WORD2(v291) == SBYTE4(v291))
            {
              v314[14] = BYTE4(v291);
            }

            else if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v28 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC DELTAls,%d\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 772, v27);
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }

            v29 = HIWORD(v291);
            if (HIWORD(v291) > 0xFFu)
            {
              if (g_LbsOsaTrace_Config >= 5)
              {
                bzero(__str, 0x3C6uLL);
                v30 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC WNlsf,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 772, v29);
                gnssOsa_PrintLog(__str, 5, 1, 0);
              }
            }

            else
            {
              v314[15] = BYTE6(v291);
            }

            v31 = v292;
            if (v292 == v292)
            {
              v314[16] = v292;
            }

            else if (g_LbsOsaTrace_Config >= 5)
            {
              bzero(__str, 0x3C6uLL);
              v32 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC DN,%d\n", (*&g_MacClockTicksToMsRelation * v32), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 772, v31);
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }

            v33 = SHIWORD(v292);
            if (HIWORD(v292) == SBYTE2(v292))
            {
              v314[17] = BYTE2(v292);
            }

            else
            {
              v34 = g_LbsOsaTrace_Config;
              if (g_LbsOsaTrace_Config < 5)
              {
LABEL_61:
                if (v34 >= 4)
                {
                  bzero(__str, 0x3C6uLL);
                  v36 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:UTC GPS_secs,%d,A1,%d,A0,%d,Tot,%d,Wnt,%d,dtLs,%d,WNLSF,%d,DN,%d,dtLSF,%d\n", (*&g_MacClockTicksToMsRelation * v36), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", *v314, *&v314[4], *&v314[8], v314[12], v314[13], v314[14], v314[15], v314[16], v314[17]);
                  gnssOsa_PrintLog(__str, 4, 1, 0);
                }

                v37 = GN_AGPS_Set_UTC(v314);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v38 = 1;
                }

                else
                {
                  v38 = v37;
                }

                if ((v38 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v39 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G UTC Correction\n", (*&g_MacClockTicksToMsRelation * v39), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

LABEL_68:
                updated = GncP24_60UpdateTimeMod(1);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v41 = 1;
                }

                else
                {
                  v41 = updated;
                }

                if ((v41 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v42 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model,SBAS\n", (*&g_MacClockTicksToMsRelation * v42), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v43 = GncP24_60UpdateTimeMod(2);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v44 = 1;
                }

                else
                {
                  v44 = v43;
                }

                if ((v44 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v45 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model,QZSS\n", (*&g_MacClockTicksToMsRelation * v45), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v46 = GncP24_60UpdateTimeMod(3);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = v46;
                }

                if ((v47 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v48 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model,GAL\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v49 = GncP24_60UpdateTimeMod(4);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = v49;
                }

                if ((v50 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v51 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model,GLO\n", (*&g_MacClockTicksToMsRelation * v51), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v52 = GncP24_60UpdateTimeMod(5);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v53 = 1;
                }

                else
                {
                  v53 = v52;
                }

                if ((v53 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v54 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model,BDS\n", (*&g_MacClockTicksToMsRelation * v54), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v55 = GncP24_60UpdateTimeMod(6);
                if (g_LbsOsaTrace_Config < 5)
                {
                  v56 = 1;
                }

                else
                {
                  v56 = v55;
                }

                if ((v56 & 1) == 0)
                {
                  bzero(__str, 0x3C6uLL);
                  v57 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model,NavIC\n", (*&g_MacClockTicksToMsRelation * v57), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                v58 = 1;
                v289 = 0;
                do
                {
                  GloChannelMap = XofSvcsIf::GetGloChannelMap(v5, v58, &v289);
                  if (GloChannelMap == 7)
                  {
                    if (g_LbsOsaTrace_Config >= 4)
                    {
                      bzero(__str, 0x3C6uLL);
                      v62 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GloChanMap not included/Unknown\n", (*&g_MacClockTicksToMsRelation * v62), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance");
                      gnssOsa_PrintLog(__str, 4, 1, 0);
                    }
                  }

                  else if (GloChannelMap == 1)
                  {
                    GloChannelMap = GN_AGLON_Set_Chan_Num(v58, v289);
                    if (g_LbsOsaTrace_Config < 5)
                    {
                      v60 = 1;
                    }

                    else
                    {
                      v60 = GloChannelMap;
                    }

                    if ((v60 & 1) == 0)
                    {
                      bzero(__str, 0x3C6uLL);
                      v61 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLO Chan map SatId,%u\n", (*&g_MacClockTicksToMsRelation * v61), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 257, v58);
                      gnssOsa_PrintLog(__str, 5, 1, 0);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v63 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLO Chan map Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v63), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 769, v58);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  v289 = 0;
                  ++v58;
                }

                while (v58 != 25);
                v287 = XofSvcsIf::GetInstance(GloChannelMap);
                v311 = 0;
                v312 = 0;
                v313 = 0;
                if (XofSvcsIf::GetGpsAlmData(v287, &v311) == 1)
                {
                  v64.i32[1] = HIDWORD(v311);
                  v65 = v312;
                  v66 = v311;
                  if (v312 != v311 && (v312 - v311) <= 0x400)
                  {
                    do
                    {
                      v64.i32[0] = *v66;
                      v67 = vrev32_s16(*&vmovl_u8(v64));
                      *v314 = vuzp1_s8(v67, v67).u32[0];
                      *&v314[4] = *(v66 + 7);
                      *&v314[8] = *(v66 + 2);
                      *&v314[10] = *(v66 + 6);
                      *&v314[16] = *(v66 + 12);
                      v314[32] = 1;
                      v68 = GN_AGPS_Set_Alm_El(v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v69 = 1;
                      }

                      else
                      {
                        v69 = v68;
                      }

                      if ((v69 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v70 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v70), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v314[1]);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v66 += 32;
                    }

                    while (v66 != v65);
                  }
                }

                v308 = 0;
                v309 = 0;
                v310 = 0;
                if (XofSvcsIf::GetQzssAlmData(v287, &v308) == 1)
                {
                  v71.i32[1] = HIDWORD(v308);
                  v72 = v309;
                  v73 = v308;
                  if (v309 != v308 && (v309 - v308) <= 0x15F)
                  {
                    do
                    {
                      v71.i32[0] = *v73;
                      v74 = vrev32_s16(*&vmovl_u8(v71));
                      *v314 = vuzp1_s8(v74, v74).u32[0];
                      *&v314[4] = *(v73 + 7);
                      *&v314[8] = *(v73 + 2);
                      *&v314[10] = *(v73 + 6);
                      *&v314[16] = *(v73 + 12);
                      v314[32] = 1;
                      v75 = GN_AGPS_Set_Alm_El(v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v76 = 1;
                      }

                      else
                      {
                        v76 = v75;
                      }

                      if ((v76 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v77 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Q Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v77), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v314[1]);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v73 += 32;
                    }

                    while (v73 != v72);
                  }
                }

                v305 = 0;
                v306 = 0;
                v307 = 0;
                if (XofSvcsIf::GetGloAlmData(v287, &v305) == 1)
                {
                  v78 = v306;
                  v79 = v305;
                  if (v306 != v305 && 0x8E38E38E38E38E39 * ((v306 - v305) >> 2) <= 0x18)
                  {
                    do
                    {
                      *v314 = *(v79 + 2);
                      v314[2] = *v79;
                      v314[3] = v79[6];
                      *&v314[4] = *(v79 + 8);
                      v314[20] = v79[24];
                      *&v314[22] = *(v79 + 13);
                      *&v314[24] = *(v79 + 7);
                      *&v314[28] = *(v79 + 16);
                      v314[30] = 1;
                      v81 = GN_AGLON_Set_Alm_El(v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v82 = 1;
                      }

                      else
                      {
                        v82 = v81;
                      }

                      if ((v82 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v83 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx R Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v83), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v314[2]);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v79 += 36;
                    }

                    while (v79 != v78);
                  }
                }

                v302 = 0;
                v303 = 0;
                v304 = 0;
                if (XofSvcsIf::GetGalAlmData(v287, &v302) == 1)
                {
                  v84 = v303;
                  v85 = v302;
                  if (v303 != v302 && (0x6DB6DB6DB6DB6DB7 * ((v303 - v302) >> 2)) <= 0x24)
                  {
                    do
                    {
                      *v314 = *v85;
                      v86 = *(v85 + 1);
                      v314[2] = (v86 / 0x93A80) & 3;
                      *&v314[4] = v86 % 0x93A80 / 0x258;
                      *&v314[6] = *(v85 + 8);
                      LODWORD(v87) = *(v85 + 2);
                      WORD2(v87) = *(v85 + 9);
                      WORD3(v87) = *(v85 + 6);
                      *(&v87 + 1) = *(v85 + 20);
                      *&v314[8] = v87;
                      v314[24] = v85[15] & 3;
                      LOBYTE(v86) = v85[14];
                      v314[25] = (v86 >> 2) & 3;
                      v314[26] = v86 & 3;
                      v314[27] = 1;
                      v88 = GN_AGAL_Set_Alm_El(v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v89 = 1;
                      }

                      else
                      {
                        v89 = v88;
                      }

                      if ((v89 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v90 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx E Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v90), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v314[0]);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v85 += 28;
                    }

                    while (v85 != v84);
                  }
                }

                v300[0] = 0;
                v300[1] = 0;
                v301 = 0;
                if (XofSvcsIf::GetBdsAlmData(v287, v300) == 1)
                {
                  v91 = v300[1];
                  v92 = v300[0];
                  if (v300[1] != v300[0] && 0xCCCCCCCCCCCCCCCDLL * ((v300[1] - v300[0]) >> 3) <= 0x3F)
                  {
                    do
                    {
                      v314[0] = v92[1];
                      v314[1] = *v92;
                      v314[2] = v92[4];
                      *&v314[32] = *(v92 + 9);
                      *&v314[8] = *(v92 + 3);
                      *&v314[28] = *(v92 + 8);
                      *&v314[4] = *(v92 + 2);
                      *&v314[12] = *(v92 + 1);
                      v314[36] = 1;
                      v93 = GN_ABDS_Set_Alm_El(v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v94 = 1;
                      }

                      else
                      {
                        v94 = v93;
                      }

                      if ((v94 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v95 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx B Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v95), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v314[1]);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v92 += 40;
                    }

                    while (v92 != v91);
                  }
                }

                v298[0] = 0;
                v298[1] = 0;
                v299 = 0;
                if (XofSvcsIf::GetNavicAlmData(v287, v298) == 1)
                {
                  v96 = v298[1];
                  v97 = v298[0];
                  if (v298[1] != v298[0] && 0x8E38E38E38E38E39 * ((v298[1] - v298[0]) >> 2) <= 0xE)
                  {
                    do
                    {
                      v314[0] = *v97;
                      *&v314[1] = v97[7];
                      *&v314[4] = v97[1];
                      *&v314[6] = *(v97 + 1);
                      *&v314[12] = *(v97 + 2);
                      *&v314[16] = v97[6];
                      *&v314[20] = *(v97 + 1);
                      *&v314[36] = v97[16];
                      *&v314[38] = v97[17];
                      v314[40] = *(v97 + 1);
                      v314[41] = 1;
                      v98 = GN_ANVIC_Set_Alm_El(v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v99 = 1;
                      }

                      else
                      {
                        v99 = v98;
                      }

                      if ((v99 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v100 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx N Alm SatID,%u\n", (*&g_MacClockTicksToMsRelation * v100), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v314[0]);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v97 += 18;
                    }

                    while (v97 != v96);
                  }
                }

                __p[0] = 0;
                __p[1] = 0;
                v297 = 0;
                if (XofSvcsIf::GetSbasBrdCstEphData(v287, __p) == 1)
                {
                  v101 = __p[1];
                  v102 = __p[0];
                  if (__p[1] == __p[0] || 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 3) > 0x27)
                  {
                    if (g_LbsOsaTrace_Config >= 5)
                    {
                      bzero(__str, 0x3C6uLL);
                      v117 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx S BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v117), "GNC", 68, "GncP24_57UpdateAlmAssist", 514, 0xCCCCCCCCCCCCCCCDLL * ((__p[1] - __p[0]) >> 3));
                      gnssOsa_PrintLog(__str, 5, 1, 0);
                    }
                  }

                  else
                  {
                    do
                    {
                      v103 = *v102;
                      v104 = *(v102 + 2);
                      v105 = v102[6];
                      v106 = v102[7];
                      v107 = *(v102 + 16);
                      v108 = *(v102 + 17);
                      v109 = *(v102 + 18);
                      v110 = v102[38];
                      v111 = *(v102 + 8);
                      v112 = *(v102 + 3);
                      *v314 = *(v102 + 1);
                      v314[2] = v106;
                      *&v314[4] = v104;
                      *&v314[8] = v105;
                      *&v314[12] = v111;
                      *&v314[28] = v112;
                      *&v314[36] = v107;
                      *&v314[40] = v108;
                      *&v314[44] = v109;
                      v314[48] = 1;
                      v113 = GN_ASBAS_Set_Eph_El(v103, v110, v314);
                      if (g_LbsOsaTrace_Config < 5)
                      {
                        v114 = 1;
                      }

                      else
                      {
                        v114 = v113;
                      }

                      if ((v114 & 1) == 0)
                      {
                        bzero(__str, 0x3C6uLL);
                        v115 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx S BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v115), "GNC", 68, "GncP24_57UpdateAlmAssist", 257, v103);
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }

                      v102 += 40;
                    }

                    while (v102 != v101);
                  }
                }

                else if (g_LbsOsaTrace_Config >= 5)
                {
                  bzero(__str, 0x3C6uLL);
                  v116 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx S BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v116), "GNC", 68, "GncP24_57UpdateAlmAssist", 769);
                  gnssOsa_PrintLog(__str, 5, 1, 0);
                }

                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                if (v298[0])
                {
                  v298[1] = v298[0];
                  operator delete(v298[0]);
                }

                if (v300[0])
                {
                  v300[1] = v300[0];
                  operator delete(v300[0]);
                }

                if (v302)
                {
                  v303 = v302;
                  operator delete(v302);
                }

                if (v305)
                {
                  v306 = v305;
                  operator delete(v305);
                }

                if (v308)
                {
                  v309 = v308;
                  operator delete(v308);
                }

                v118 = v311;
                if (v311)
                {
                  v312 = v311;
                  operator delete(v311);
                }

                if (v286 >> 4 < 0x7E9)
                {
                  v288 = XofSvcsIf::GetInstance(v118);
                  v311 = 0;
                  v312 = 0;
                  v313 = 0;
                  if (XofSvcsIf::GetGpsBrdCstEphData(v288, &v311) == 1)
                  {
                    v119 = v312;
                    v120 = v311;
                    if (v312 == v311 || 0x8E38E38E38E38E39 * ((v312 - v311) >> 3) > 0x20)
                    {
                      if (g_LbsOsaTrace_Config >= 5)
                      {
                        bzero(__str, 0x3C6uLL);
                        v146 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v146), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 514, 0x8E38E38E38E38E39 * ((v312 - v311) >> 3));
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }
                    }

                    else
                    {
                      do
                      {
                        v121 = *(v120 + 1);
                        v122 = *(v120 + 2);
                        v123 = v120[2];
                        v124 = v120[3];
                        v125 = *(v120 + 2);
                        v126 = v120[6];
                        v127 = *(v120 + 14);
                        v128 = v120[9];
                        v129 = v120[10];
                        v130 = *(v120 + 22);
                        v131 = *(v120 + 23);
                        v132 = v120[12];
                        v133 = *(v120 + 13);
                        v134 = llround(v120[8] * 2.91038305e-11 * 2147483650.0);
                        if (v134 != v134)
                        {
                          LOBYTE(v134) = 0;
                        }

                        v135 = vuzp2q_s32(vextq_s8(*(v120 + 14), *(v120 + 14), 4uLL), *(v120 + 14));
                        v136 = *(v120 + 22);
                        v137 = *(v120 + 28);
                        v314[0] = *v120;
                        v314[1] = 0;
                        v314[2] = v122;
                        v314[3] = v121;
                        *&v314[4] = 0;
                        v314[6] = 0;
                        v314[7] = v134;
                        v314[8] = v127;
                        *&v314[10] = v123;
                        *&v314[12] = v124;
                        *&v314[14] = v124;
                        *&v314[16] = v132;
                        *&v314[18] = v126;
                        *&v314[20] = vqtbl1q_s8(v137, xmmword_299052040);
                        *&v314[36] = v125;
                        *&v314[40] = v135;
                        *&v314[56] = v136;
                        *&v314[64] = v133;
                        if (v130 == 255)
                        {
                          v138 = 0;
                        }

                        else
                        {
                          v138 = v130;
                        }

                        v314[68] = v138;
                        if (v131 == 255)
                        {
                          v139 = 0;
                        }

                        else
                        {
                          v139 = v131;
                        }

                        v314[69] = v139;
                        if (v128 == 0x7FFF)
                        {
                          v140 = 0;
                        }

                        else
                        {
                          v140 = v128;
                        }

                        *&v314[70] = v140;
                        if (v129 == 0x7FFF)
                        {
                          v141 = 0;
                        }

                        else
                        {
                          v141 = v129;
                        }

                        LOWORD(v315) = v141;
                        BYTE2(v315) = 1;
                        v142 = GN_AGPS_Set_Eph_El(v314);
                        if (g_LbsOsaTrace_Config < 5)
                        {
                          v143 = 1;
                        }

                        else
                        {
                          v143 = v142;
                        }

                        if ((v143 & 1) == 0)
                        {
                          bzero(__str, 0x3C6uLL);
                          v144 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v144), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 257, v314[0]);
                          gnssOsa_PrintLog(__str, 5, 1, 0);
                        }

                        v120 += 36;
                      }

                      while (v120 != v119);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v145 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx G BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v145), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 769);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  v308 = 0;
                  v309 = 0;
                  v310 = 0;
                  if (XofSvcsIf::GetQzssBrdCstEphData(v288, &v308) == 1)
                  {
                    v147 = v309;
                    v148 = v308;
                    if (v309 == v308 || 0x8E38E38E38E38E39 * ((v309 - v308) >> 3) > 0xA)
                    {
                      if (g_LbsOsaTrace_Config >= 5)
                      {
                        bzero(__str, 0x3C6uLL);
                        v174 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Q BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v174), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 514, 0x8E38E38E38E38E39 * ((v309 - v308) >> 3));
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }
                    }

                    else
                    {
                      do
                      {
                        v149 = *(v148 + 1);
                        v150 = *(v148 + 2);
                        v151 = v148[2];
                        v152 = v148[3];
                        v153 = *(v148 + 2);
                        v154 = v148[6];
                        v155 = *(v148 + 14);
                        v156 = v148[9];
                        v157 = v148[10];
                        v158 = *(v148 + 22);
                        v159 = *(v148 + 23);
                        v160 = v148[12];
                        v161 = *(v148 + 13);
                        v162 = llround(v148[8] * 2.91038305e-11 * 2147483650.0);
                        if (v162 != v162)
                        {
                          LOBYTE(v162) = 0;
                        }

                        v163 = vuzp2q_s32(vextq_s8(*(v148 + 14), *(v148 + 14), 4uLL), *(v148 + 14));
                        v164 = *(v148 + 22);
                        v165 = *(v148 + 28);
                        v314[0] = *v148;
                        v314[1] = 0;
                        v314[2] = v150;
                        v314[3] = v149;
                        *&v314[4] = 0;
                        v314[6] = 0;
                        v314[7] = v162;
                        v314[8] = v155;
                        *&v314[10] = v151;
                        *&v314[12] = v152;
                        *&v314[14] = v152;
                        *&v314[16] = v160;
                        *&v314[18] = v154;
                        *&v314[20] = vqtbl1q_s8(v165, xmmword_299052040);
                        *&v314[36] = v153;
                        *&v314[40] = v163;
                        *&v314[56] = v164;
                        *&v314[64] = v161;
                        BYTE2(v315) = 1;
                        if (v158 == 255)
                        {
                          v166 = 0;
                        }

                        else
                        {
                          v166 = v158;
                        }

                        v314[68] = v166;
                        if (v159 == 255)
                        {
                          v167 = 0;
                        }

                        else
                        {
                          v167 = v159;
                        }

                        v314[69] = v167;
                        if (v156 == 0x7FFF)
                        {
                          v168 = 0;
                        }

                        else
                        {
                          v168 = v156;
                        }

                        *&v314[70] = v168;
                        if (v157 == 0x7FFF)
                        {
                          v169 = 0;
                        }

                        else
                        {
                          v169 = v157;
                        }

                        LOWORD(v315) = v169;
                        v170 = GN_AGPS_Set_Eph_El(v314);
                        if (g_LbsOsaTrace_Config < 5)
                        {
                          v171 = 1;
                        }

                        else
                        {
                          v171 = v170;
                        }

                        if ((v171 & 1) == 0)
                        {
                          bzero(__str, 0x3C6uLL);
                          v172 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Q BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v172), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 257, v314[0]);
                          gnssOsa_PrintLog(__str, 5, 1, 0);
                        }

                        v148 += 36;
                      }

                      while (v148 != v147);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v173 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Q BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v173), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 769);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  v305 = 0;
                  v306 = 0;
                  v307 = 0;
                  if (XofSvcsIf::GetGloBrdCstEphData(v288, &v305) == 1)
                  {
                    v175 = v306;
                    v176 = v305;
                    if (v306 == v305 || (0x2E8BA2E8BA2E8BA3 * ((v306 - v305) >> 2)) > 0x18)
                    {
                      if (g_LbsOsaTrace_Config >= 5)
                      {
                        bzero(__str, 0x3C6uLL);
                        v201 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx R BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v201), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 514, 0x2E8BA2E8BA2E8BA3 * ((v306 - v305) >> 2));
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }
                    }

                    else
                    {
                      do
                      {
                        v177 = *v176;
                        v178 = *(v176 + 1);
                        if (v178 < 0x60)
                        {
                          v180 = v176[1];
                          v181 = *(v176 + 1);
                          v182 = *(v176 + 4);
                          v183 = v176[10];
                          v184 = v176[11];
                          v185 = v176[12];
                          v186 = v176[13];
                          v187 = v176[14];
                          v188 = v176[15];
                          v189 = *(v176 + 4);
                          v190 = *(v176 + 20);
                          v191 = *(v176 + 9);
                          v192 = v176[40];
                          v193 = v176[41];
                          v194 = v176[42];
                          v314[0] = *v176;
                          v314[2] = v178;
                          *&v314[4] = 0;
                          v314[6] = v180;
                          v314[7] = v188;
                          v314[8] = v184;
                          v314[9] = v185;
                          v314[10] = v186 != 0;
                          v314[11] = v187;
                          *&v314[12] = v189;
                          *&v314[16] = vuzp2q_s32(v190, vrev64q_s32(v190));
                          *&v314[32] = v191;
                          v314[36] = v192;
                          v314[37] = v193;
                          v314[38] = v194;
                          v314[39] = v183;
                          *&v314[40] = v181;
                          *&v314[44] = v182;
                          v314[46] = 1;
                          LOBYTE(v302) = 0;
                          v195 = XofSvcsIf::GetGloChannelMap(v288, v177, &v302);
                          v196 = v302;
                          if (v195 != 1)
                          {
                            v196 = 127;
                          }

                          v314[1] = v196;
                          v197 = GN_AGLON_Set_Eph_El(v314);
                          if (g_LbsOsaTrace_Config < 5)
                          {
                            v198 = 1;
                          }

                          else
                          {
                            v198 = v197;
                          }

                          if ((v198 & 1) == 0)
                          {
                            bzero(__str, 0x3C6uLL);
                            v199 = mach_continuous_time();
                            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx R BCE gloN,%u\n", (*&g_MacClockTicksToMsRelation * v199), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 257, v314[0]);
                            gnssOsa_PrintLog(__str, 5, 1, 0);
                          }
                        }

                        else if (g_LbsOsaTrace_Config >= 5)
                        {
                          bzero(__str, 0x3C6uLL);
                          v179 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GloTb,%u SatID,%u\n", (*&g_MacClockTicksToMsRelation * v179), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 770, v178, v177);
                          gnssOsa_PrintLog(__str, 5, 1, 0);
                        }

                        v176 += 44;
                      }

                      while (v176 != v175);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v200 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx R BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v200), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 769);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  v302 = 0;
                  v303 = 0;
                  v304 = 0;
                  if (XofSvcsIf::GetGalBrdCstEphData(v288, &v302) == 1)
                  {
                    v202 = v303;
                    v203 = v302;
                    if (v303 == v302 || 0x8E38E38E38E38E39 * ((v303 - v302) >> 3) > 0x24)
                    {
                      if (g_LbsOsaTrace_Config >= 5)
                      {
                        bzero(__str, 0x3C6uLL);
                        v224 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx E BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v224), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 514, 0x8E38E38E38E38E39 * ((v303 - v302) >> 3));
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }
                    }

                    else
                    {
                      do
                      {
                        v204 = *v203;
                        v205 = v203[1];
                        v206 = v203[2];
                        v207 = v203[3];
                        v208 = v203[4];
                        v209 = *(v203 + 3);
                        v210 = *(v203 + 4);
                        v211 = v203[20];
                        v212 = v203[21];
                        v213 = *(v203 + 11);
                        HIDWORD(v214) = *(v203 + 6);
                        LODWORD(v214) = HIDWORD(v214);
                        v215 = *(v203 + 13);
                        v216 = *(v203 + 12);
                        v217 = vuzp2q_s32(vextq_s8(*(v203 + 28), *(v203 + 28), 4uLL), *(v203 + 28));
                        v218 = *(v203 + 44);
                        v219 = *(v203 + 56);
                        *v314 = 0;
                        *&v314[4] = v209;
                        v314[6] = v204;
                        v314[7] = v208;
                        *&v314[8] = v213;
                        *&v314[10] = v210;
                        *&v314[12] = v217;
                        *&v314[28] = v218;
                        *&v314[36] = v215;
                        *&v314[40] = vqtbl1q_s8(v219, xmmword_299052050);
                        *&v314[56] = v216;
                        *&v314[64] = v211;
                        *&v314[66] = v210;
                        *&v314[68] = v214 >> 16;
                        LOBYTE(v315) = v207;
                        BYTE1(v315) = v205 & 1;
                        BYTE2(v315) = (v205 & 2) != 0;
                        HIBYTE(v315) = (v205 & 4) != 0;
                        LOBYTE(v316) = v206 & 3;
                        HIBYTE(v316) = (v206 >> 2) & 3;
                        LOBYTE(v317) = (v206 >> 4) & 3;
                        LOBYTE(v318) = 1;
                        HIBYTE(v317) = v212;
                        v220 = GN_AGAL_Set_Eph_El(v314);
                        if (g_LbsOsaTrace_Config < 5)
                        {
                          v221 = 1;
                        }

                        else
                        {
                          v221 = v220;
                        }

                        if ((v221 & 1) == 0)
                        {
                          bzero(__str, 0x3C6uLL);
                          v222 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx E BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v222), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 257, v314[6]);
                          gnssOsa_PrintLog(__str, 5, 1, 0);
                        }

                        v203 += 72;
                      }

                      while (v203 != v202);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v223 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx E BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v223), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 769);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  v300[0] = 0;
                  v300[1] = 0;
                  v301 = 0;
                  if (XofSvcsIf::GetBdsBrdCstEphData(v288, v300) == 1)
                  {
                    v225 = v300[1];
                    v226 = v300[0];
                    if (v300[1] == v300[0] || 0xF0F0F0F0F0F0F0F1 * ((v300[1] - v300[0]) >> 3) > 0x3F)
                    {
                      if (g_LbsOsaTrace_Config >= 5)
                      {
                        bzero(__str, 0x3C6uLL);
                        v260 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx B BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v260), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 514, 0xF0F0F0F0F0F0F0F1 * ((v300[1] - v300[0]) >> 3));
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }
                    }

                    else
                    {
                      do
                      {
                        v227 = *(v226 + 1);
                        v228 = *(v226 + 1);
                        v229 = *(v226 + 4);
                        v230 = v226[10];
                        v231 = *(v226 + 6);
                        v232 = v226[14];
                        v233 = v226[15];
                        v234 = *(v226 + 8);
                        v235 = *(v226 + 9);
                        v236 = *(v226 + 10);
                        v237 = *(v226 + 9);
                        v238 = *(v226 + 20);
                        v239 = *(v226 + 42);
                        v240 = *(v226 + 43);
                        v241 = *(v226 + 44);
                        v242 = *(v226 + 45);
                        v243 = *(v226 + 58);
                        v244 = *(v226 + 59);
                        v245 = *(v226 + 60);
                        v246 = *(v226 + 61);
                        v247 = *(v226 + 62);
                        v248 = v226[126];
                        v249 = *(v226 + 64);
                        v250 = vrev64q_s32(*(v226 + 92));
                        v251 = *(v226 + 108);
                        v252 = *(v226 + 40);
                        v253 = *(v226 + 56);
                        v254 = *(v226 + 24);
                        v255 = *(v226 + 130);
                        *v314 = *v226;
                        *&v314[2] = v236;
                        *&v314[4] = v228;
                        *&v314[8] = v227;
                        *&v314[10] = v235;
                        *&v314[12] = v240;
                        *&v314[14] = v249;
                        *&v314[16] = v254;
                        *&v314[32] = v252;
                        *&v314[48] = v253;
                        *&v314[64] = v237;
                        v315 = v238;
                        v316 = v239;
                        v317 = v242;
                        v318 = v241;
                        v319 = v250;
                        v320 = v251;
                        v321 = v243;
                        v322 = v234;
                        v323 = v255;
                        v324 = v246;
                        v325 = v244;
                        v333 = v248;
                        v326 = v247;
                        v327 = v245;
                        v328 = v231;
                        v329 = v232;
                        v330 = v229;
                        v331 = v230;
                        v332 = v233;
                        v334 = 1;
                        v256 = GN_ABDS_Set_CNAV_Eph_El(v314);
                        if (g_LbsOsaTrace_Config < 5)
                        {
                          v257 = 1;
                        }

                        else
                        {
                          v257 = v256;
                        }

                        if ((v257 & 1) == 0)
                        {
                          bzero(__str, 0x3C6uLL);
                          v258 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx B BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v258), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 257, v314[0]);
                          gnssOsa_PrintLog(__str, 5, 1, 0);
                        }

                        v226 += 136;
                      }

                      while (v226 != v225);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v259 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx B BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v259), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 769);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  v298[0] = 0;
                  v298[1] = 0;
                  v299 = 0;
                  if (XofSvcsIf::GetNavicBrdCstEphData(v288, v298) == 1)
                  {
                    v262 = v298[1];
                    v263 = v298[0];
                    if (v298[1] == v298[0] || 0xF0F0F0F0F0F0F0F1 * ((v298[1] - v298[0]) >> 2) > 0xE)
                    {
                      if (g_LbsOsaTrace_Config >= 5)
                      {
                        bzero(__str, 0x3C6uLL);
                        v282 = mach_continuous_time();
                        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx N BCE NumSats,%lu\n", (*&g_MacClockTicksToMsRelation * v282), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 514, 0xF0F0F0F0F0F0F0F1 * ((v298[1] - v298[0]) >> 2));
                        gnssOsa_PrintLog(__str, 5, 1, 0);
                      }
                    }

                    else
                    {
                      do
                      {
                        v264 = *(v263 + 1);
                        v265 = *(v263 + 2);
                        v266 = v263[10];
                        v267 = v263[11];
                        v268 = *(v263 + 3);
                        v269 = *(v263 + 8);
                        v270 = v263[18];
                        v271 = *(v263 + 5);
                        HIDWORD(v272) = *(v263 + 14);
                        LODWORD(v272) = HIDWORD(v272);
                        v273 = *(v263 + 60);
                        v274 = *(v263 + 24);
                        v275 = *(v263 + 40);
                        v261.i32[0] = *(v263 + 6);
                        v276 = vmovl_u8(v261).u64[0];
                        v277 = v276;
                        v277.i16[0] = HIWORD(v276);
                        v277.i16[3] = v276;
                        v314[0] = *v263;
                        *&v314[1] = vuzp1_s8(v277, v273).u32[0];
                        v314[5] = v267;
                        *&v314[6] = v264;
                        *&v314[8] = v265;
                        *&v314[10] = v265;
                        *&v314[12] = v268;
                        *&v314[16] = v269;
                        v314[18] = v270;
                        v314[19] = v266;
                        *&v314[20] = v271;
                        *&v314[24] = v274;
                        *&v314[40] = v275;
                        *&v314[56] = v272 >> 16;
                        *&v314[60] = vrev64_s16(v273);
                        v314[68] = 1;
                        v278 = GN_ANVIC_Set_Eph_El(v314);
                        if (g_LbsOsaTrace_Config < 5)
                        {
                          v279 = 1;
                        }

                        else
                        {
                          v279 = v278;
                        }

                        if ((v279 & 1) == 0)
                        {
                          bzero(__str, 0x3C6uLL);
                          v280 = mach_continuous_time();
                          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx N BCE SatID,%u\n", (*&g_MacClockTicksToMsRelation * v280), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 257, v314[0]);
                          gnssOsa_PrintLog(__str, 5, 1, 0);
                        }

                        v263 += 68;
                      }

                      while (v263 != v262);
                    }
                  }

                  else if (g_LbsOsaTrace_Config >= 5)
                  {
                    bzero(__str, 0x3C6uLL);
                    v281 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx N BCE data not available!\n", (*&g_MacClockTicksToMsRelation * v281), "GNC", 68, "GncP24_58UpdateBrdCstEphAssist", 769);
                    gnssOsa_PrintLog(__str, 5, 1, 0);
                  }

                  if (v298[0])
                  {
                    v298[1] = v298[0];
                    operator delete(v298[0]);
                  }

                  if (v300[0])
                  {
                    v300[1] = v300[0];
                    operator delete(v300[0]);
                  }

                  if (v302)
                  {
                    v303 = v302;
                    operator delete(v302);
                  }

                  if (v305)
                  {
                    v306 = v305;
                    operator delete(v305);
                  }

                  if (v308)
                  {
                    v309 = v308;
                    operator delete(v308);
                  }

                  if (v311)
                  {
                    v312 = v311;
                    operator delete(v311);
                  }

                  if (g_LbsOsaTrace_Config >= 4)
                  {
                    bzero(__str, 0x3C6uLL);
                    v283 = mach_continuous_time();
                    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: BCEAgeCheckOK Gpstime,%llu,EEStartTime,%llu\n", (*&g_MacClockTicksToMsRelation * v283), "GNC", 73, "GncP24_55UpdateBceOrbitAssistance", v285, v284);
                    gnssOsa_PrintLog(__str, 4, 1, 0);
                  }
                }

                g_BceOrbitDataInjected = 1;
                return;
              }

              bzero(__str, 0x3C6uLL);
              v35 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UTC DELTAlsf,%d\n", (*&g_MacClockTicksToMsRelation * v35), "GNC", 68, "GncP24_55UpdateBceOrbitAssistance", 772, v33);
              gnssOsa_PrintLog(__str, 5, 1, 0);
            }

            v34 = g_LbsOsaTrace_Config;
            goto LABEL_61;
          }
        }
      }
    }
  }
}

void sub_298FCC08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a43)
  {
    operator delete(a43);
  }

  v46 = *v44;
  if (*v44)
  {
    *(v44 + 8) = v46;
    operator delete(v46);
  }

  v47 = *(v44 + 32);
  if (v47)
  {
    *(v44 + 40) = v47;
    operator delete(v47);
  }

  v48 = *(v44 + 64);
  if (v48)
  {
    *(v44 + 72) = v48;
    operator delete(v48);
  }

  v49 = *(v44 + 96);
  if (v49)
  {
    *(v44 + 104) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP24_GetXofInjectFileTime_GPS_Seconds(XofSvcsIf *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  v6 = 0;
  Instance = XofSvcsIf::GetInstance(a1);
  if (XofSvcsIf::GetXofInjctTime(Instance, v5) == 1)
  {
    if (v5[0] <= 0xFFFu && v6 < 0x93A81)
    {
      return v6 + 604800 * v5[0];
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx XOF Inject time\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP24_GetXofInjectFileTime_GPS_Seconds", 770);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  return 0;
}

uint64_t GncP24_60UpdateTimeMod(XofSvcsIf *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  Instance = XofSvcsIf::GetInstance(a1);
  HIWORD(v15) = 0;
  *&v15 = 0;
  *(&v15 + 5) = 0;
  TimeModel = XofSvcsIf::GetTimeModel(Instance, a1, &v15);
  if (TimeModel == 7)
  {
    return 1;
  }

  v4 = TimeModel;
  if (TimeModel == 1)
  {
    v9[0] = GncP24_51ConvertAGnssType(a1);
    v9[1] = 1000 * v15;
    v9[2] = WORD1(v15);
    v13 = HIWORD(v15);
    v10 = *(&v15 + 4);
    v11 = BYTE12(v15);
    v12 = 127;
    v14 = 0x100000001;
    v5 = GN_AGNSS_Set_Time_Model(v9);
    if ((v5 & 1) == 0 && g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Time model ConstelType,%d\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GncP24_60UpdateTimeMod", 257, a1);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeModelCheckErrCode,%d\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP24_60UpdateTimeMod", 770, v4);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    return 0;
  }

  return v5;
}

uint64_t GN_EE_Get_GPS_Eph_El(XofSvcsIf *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable != 1)
  {
    return 0;
  }

  v8 = (a1 - 33) < 0xE0u && (a1 + 53) < 0xF6u;
  if (a2 > 0xFFF || a3 > 0x93A7F || v8 || !a4)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,TOW,%u,WeekNo,%u\n", v14, "GNC");
LABEL_25:
      v17 = 5;
LABEL_26:
      gnssOsa_PrintLog(__str, v17, 1, 0);
    }

    return 0;
  }

  v10 = (a1 - 33);
  v30 = 0xFFFF7FFF7FFF0000;
  memset(v29, 0, 15);
  v31 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  Instance = XofSvcsIf::GetInstance(a1);
  v12 = Instance;
  if (v10 < 0xE0)
  {
    if ((a1 + 63) >= 0xAu)
    {
LABEL_16:
      v13 = 2;
      goto LABEL_29;
    }

    if (XofSvcsIf::GetQzssSvOrbData(Instance, a2 | (a3 << 32), a1, v29) == 1)
    {
      if (!BYTE1(v29[0]))
      {
        goto LABEL_16;
      }

LABEL_21:
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,Health,%u,WeekNo,%u,TOW,%u\n", v15, "GNC");
        goto LABEL_25;
      }

      return 0;
    }

LABEL_23:
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u\n", v16, "GNC");
      goto LABEL_25;
    }

    return 0;
  }

  if (XofSvcsIf::GetGpsSvOrbData(Instance, a2 | (a3 << 32), a1, v29) != 1)
  {
    goto LABEL_23;
  }

  if (BYTE1(v29[0]))
  {
    goto LABEL_21;
  }

  v13 = 0;
LABEL_29:
  BlockLen = XofSvcsIf::GetBlockLen(v12, v13);
  v20 = WORD2(v29[0]);
  v21 = HIWORD(v29[0]);
  v22 = 604800 * a2 + a3 - (604800 * WORD2(v29[0]) + 16 * HIWORD(v29[0]));
  if (v22 < 0)
  {
    v22 = 604800 * WORD2(v29[0]) + 16 * HIWORD(v29[0]) - (604800 * a2 + a3);
  }

  if (v22 > 1800 * BlockLen)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u,EE GpsWeek,%u,sTOC,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 69, "GN_EE_Get_GPS_Eph_El", 770, a1, a2, a3, WORD2(v29[0]), HIWORD(v29[0]));
    v17 = 1;
    goto LABEL_26;
  }

  *a4 = v29[0];
  *(a4 + 1) = 0;
  *(a4 + 2) = BYTE2(v29[0]);
  *(a4 + 3) = BYTE1(v29[0]);
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  v24 = llround(v30 * 2.91038305e-11 * 2147483650.0);
  if (v24 != v24)
  {
    LOBYTE(v24) = 0;
  }

  *(a4 + 7) = v24;
  *(a4 + 8) = 0;
  *(a4 + 9) = BYTE6(v29[1]);
  *(a4 + 10) = v20;
  *(a4 + 12) = v21;
  *(a4 + 14) = v21;
  *(a4 + 16) = v31;
  *(a4 + 18) = WORD2(v29[1]);
  *(a4 + 20) = vqtbl1q_s8(*&v33[12], xmmword_299052040);
  *(a4 + 36) = v29[1];
  *(a4 + 40) = vuzp2q_s32(vextq_s8(v32, v32, 4uLL), v32);
  *(a4 + 56) = *v33;
  *(a4 + 64) = *&v33[8];
  v25 = BYTE6(v30);
  if (BYTE6(v30) == 255)
  {
    v25 = 0;
  }

  *(a4 + 68) = v25;
  v26 = HIBYTE(v30);
  if (HIBYTE(v30) == 255)
  {
    v26 = 0;
  }

  *(a4 + 69) = v26;
  v27 = WORD1(v30);
  if (WORD1(v30) == 0x7FFF)
  {
    v27 = 0;
  }

  *(a4 + 70) = v27;
  v28 = WORD2(v30);
  if (WORD2(v30) == 0x7FFF)
  {
    v28 = 0;
  }

  *(a4 + 72) = v28;
  return 1;
}

uint64_t GN_EE_Get_GAL_Eph_El(XofSvcsIf *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable != 1)
  {
    return 0;
  }

  if (a2 <= 0xFFF && a3 <= 0x93A7F && (a1 - 37) >= 0xDCu && a4)
  {
    v8 = a2 + 1024;
    Instance = XofSvcsIf::GetInstance(a1);
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    if (XofSvcsIf::GetGalSvOrbData(Instance, v8 | (a3 << 32), a1, &v23) == 1)
    {
      if (BYTE2(v23))
      {
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,SigHs,%u,WeekNo,%u,TOW,%u\n", v10, "GNC");
LABEL_14:
          v13 = 5;
LABEL_15:
          gnssOsa_PrintLog(__str, v13, 1, 0);
        }
      }

      else
      {
        BlockLen = XofSvcsIf::GetBlockLen(Instance, 3);
        v16 = v25;
        v17 = HIWORD(v25);
        v18 = 604800 * a2 + a3 - (604800 * v25 + 60 * HIWORD(v25));
        if (v18 < 0)
        {
          v18 = 604800 * v25 + 60 * HIWORD(v25) - (604800 * a2 + a3);
        }

        if (v18 <= 1800 * BlockLen)
        {
          *a4 = a3;
          *(a4 + 4) = v16;
          *(a4 + 6) = v23;
          *(a4 + 7) = v24;
          *(a4 + 8) = WORD5(v26);
          *(a4 + 10) = v17;
          *(a4 + 12) = vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27);
          *(a4 + 28) = *v28;
          *(a4 + 36) = *&v28[8];
          *(a4 + 40) = vqtbl1q_s8(*&v28[12], xmmword_299052050);
          *(a4 + 56) = v26;
          *(a4 + 64) = SBYTE8(v26);
          *(a4 + 66) = v17;
          HIDWORD(v20) = HIDWORD(v26);
          LODWORD(v20) = HIDWORD(v26);
          *(a4 + 68) = v20 >> 16;
          *(a4 + 72) = HIBYTE(v23);
          v21 = BYTE1(v23);
          *(a4 + 73) = BYTE1(v23) & 1;
          *(a4 + 74) = (v21 & 2) != 0;
          *(a4 + 75) = (v21 & 4) != 0;
          v22 = BYTE2(v23);
          *(a4 + 76) = BYTE2(v23) & 3;
          *(a4 + 77) = (v22 >> 2) & 3;
          *(a4 + 78) = (v22 >> 4) & 3;
          result = 1;
          *(a4 + 79) = BYTE9(v26);
          return result;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v19 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u,EE GalWeek,%u,TOE,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 69, "GN_EE_Get_GAL_Eph_El", 770, a1, a2, a3, v25, HIWORD(v25));
          v13 = 1;
          goto LABEL_15;
        }
      }
    }

    else if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u\n", v12, "GNC");
      goto LABEL_14;
    }
  }

  else if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,TOW,%u,WeekNo,%u\n", v11, "GNC");
    goto LABEL_14;
  }

  return 0;
}

uint64_t GN_EE_Get_BDS_CNAV_Eph_El(XofSvcsIf *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable != 1)
  {
    return 0;
  }

  if (a2 <= 0xFFF && a3 <= 0x93A7F && (a1 - 64) >= 0xC1u && a4)
  {
    v8 = a2 + 1356;
    Instance = XofSvcsIf::GetInstance(a1);
    memset(v22, 0, 22);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v27, 0, 39);
    memset(&v27[2].u64[1], 0, 6);
    if (XofSvcsIf::GetBdsSvOrbData(Instance, v8 | (a3 << 32), a1, v22) == 1)
    {
      if (BYTE1(v22[0]))
      {
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,Health,%u,WeekNo,%u,TOW,%u\n", v10, "GNC");
LABEL_14:
          v13 = 5;
LABEL_15:
          gnssOsa_PrintLog(__str, v13, 1, 0);
        }
      }

      else
      {
        BlockLen = XofSvcsIf::GetBlockLen(Instance, 5);
        v16 = WORD1(v22[0]);
        v17 = WORD1(v22[2]);
        v18 = (604800 * v8 + a3) - (300 * WORD1(v22[2]) + 604800 * WORD1(v22[0]) + 820108800);
        if (v18 < 0)
        {
          v18 = 300 * WORD1(v22[2]) + 604800 * WORD1(v22[0]) + 820108800 - (604800 * v8 + a3);
        }

        if (v18 <= 1800 * BlockLen)
        {
          *a4 = v22[0];
          *(a4 + 2) = WORD2(v22[2]);
          *(a4 + 4) = HIDWORD(v22[0]);
          *(a4 + 8) = v16;
          *(a4 + 10) = v17;
          *(a4 + 12) = HIWORD(v26);
          *(a4 + 14) = v27[2].i16[4];
          v20 = v24;
          *(a4 + 16) = v23;
          *(a4 + 32) = v20;
          *(a4 + 48) = v25;
          *(a4 + 64) = v26;
          *(a4 + 72) = DWORD2(v26);
          *(a4 + 76) = WORD6(v26);
          HIDWORD(v21) = v27[0].i32[0];
          LODWORD(v21) = v27[0].i32[0];
          *(a4 + 78) = v21 >> 16;
          *(a4 + 84) = vrev64q_s32(*(v27 + 4));
          *(a4 + 100) = *(v27[1].i64 + 4);
          *(a4 + 108) = v27[1].i16[6];
          *(a4 + 110) = v22[2];
          *(a4 + 112) = *(&v27[2].i32[2] + 2);
          *(a4 + 116) = v27[2].i16[1];
          *(a4 + 118) = v27[1].i16[7];
          *(a4 + 131) = v27[2].i8[6];
          *(a4 + 120) = v27[2].i16[2];
          *(a4 + 122) = v27[2].i16[0];
          *(a4 + 124) = BYTE4(v22[1]);
          *(a4 + 125) = *(&v22[1] + 5);
          *(a4 + 127) = v22[1];
          *(a4 + 129) = BYTE2(v22[1]);
          result = 1;
          *(a4 + 130) = HIBYTE(v22[1]);
          return result;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v19 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u,EE BdsWeek,%u,TOE,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 69, "GN_EE_Get_BDS_CNAV_Eph_El", 770, a1, a2, a3, WORD1(v22[0]), WORD1(v22[2]));
          v13 = 1;
          goto LABEL_15;
        }
      }
    }

    else if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u\n", v12, "GNC");
      goto LABEL_14;
    }
  }

  else if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,TOW,%u,WeekNo,%u\n", v11, "GNC");
    goto LABEL_14;
  }

  return 0;
}

uint64_t GN_EE_Get_GLON_GPS_Eph_El(XofSvcsIf *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable != 1)
  {
    return 0;
  }

  if (a2 > 0xFFF || a3 > 0x93A7F || (a1 - 25) < 0xE8u || !a4)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,TOW,%u,WeekNo,%u\n", v10, "GNC");
      goto LABEL_14;
    }

    return 0;
  }

  Instance = XofSvcsIf::GetInstance(a1);
  v25 = 0xFFFF7FFF7FFF0000;
  memset(v24, 0, 15);
  v26 = 0;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  if (XofSvcsIf::GetGloSvOrbData(Instance, a2 | (a3 << 32), a1, v24) != 1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u\n", v11, "GNC");
      goto LABEL_14;
    }

    return 0;
  }

  if (BYTE1(v24[0]))
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,Health,%u,WeekNo,%u,TOW,%u\n", v9, "GNC");
LABEL_14:
      v12 = 5;
LABEL_15:
      gnssOsa_PrintLog(__str, v12, 1, 0);
      return 0;
    }

    return 0;
  }

  BlockLen = XofSvcsIf::GetBlockLen(Instance, 4);
  v15 = WORD2(v24[0]);
  v16 = HIWORD(v24[0]);
  v17 = 604800 * a2 + a3 - (604800 * WORD2(v24[0]) + 16 * HIWORD(v24[0]));
  if (v17 < 0)
  {
    v17 = 604800 * WORD2(v24[0]) + 16 * HIWORD(v24[0]) - (604800 * a2 + a3);
  }

  if (v17 > 1800 * BlockLen)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v18 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u,EE GpsWeek,%u,sTOC,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 69, "GN_EE_Get_GLON_GPS_Eph_El", 770, a1, a2, a3, WORD2(v24[0]), HIWORD(v24[0]));
    v12 = 1;
    goto LABEL_15;
  }

  *a4 = v24[0];
  *(a4 + 1) = 0;
  *(a4 + 2) = BYTE2(v24[0]);
  *(a4 + 3) = BYTE1(v24[0]);
  *(a4 + 4) = 0;
  *(a4 + 6) = 0;
  v19 = llround(v25 * 2.91038305e-11 * 2147483650.0);
  if (v19 != v19)
  {
    LOBYTE(v19) = 0;
  }

  *(a4 + 7) = v19;
  *(a4 + 8) = 0;
  *(a4 + 9) = BYTE6(v24[1]);
  *(a4 + 10) = v15;
  *(a4 + 12) = v16;
  *(a4 + 14) = v16;
  *(a4 + 16) = v26;
  *(a4 + 18) = WORD2(v24[1]);
  *(a4 + 20) = vqtbl1q_s8(*&v28[12], xmmword_299052040);
  *(a4 + 36) = v24[1];
  *(a4 + 40) = vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27);
  *(a4 + 56) = *v28;
  *(a4 + 64) = *&v28[8];
  v20 = BYTE6(v25);
  if (BYTE6(v25) == 255)
  {
    v20 = 0;
  }

  *(a4 + 68) = v20;
  v21 = HIBYTE(v25);
  if (HIBYTE(v25) == 255)
  {
    v21 = 0;
  }

  *(a4 + 69) = v21;
  v22 = WORD1(v25);
  if (WORD1(v25) == 0x7FFF)
  {
    v22 = 0;
  }

  *(a4 + 70) = v22;
  v23 = WORD2(v25);
  if (WORD2(v25) == 0x7FFF)
  {
    v23 = 0;
  }

  *(a4 + 72) = v23;
  return 1;
}

uint64_t GN_EE_Get_NVIC_Eph_El(XofSvcsIf *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x29EDCA608];
  if (g_OrbitDataAvailable != 1)
  {
    return 0;
  }

  if (a2 <= 0xFFF && a3 <= 0x93A7F && (a1 - 15) >= 0xF2u && a4)
  {
    v8 = a2 + 1024;
    Instance = XofSvcsIf::GetInstance(a1);
    v24[0] = 0;
    v26 = 0;
    v25 = 0;
    v27 = 0;
    memset(v28, 0, sizeof(v28));
    if (XofSvcsIf::GetNavicSvOrbData(Instance, v8 | (a3 << 32), a1, v24) == 1)
    {
      if (BYTE5(v25))
      {
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,Health,%u,WeekNo,%u,TOW,%u\n", v10, "GNC");
LABEL_14:
          v13 = 5;
LABEL_15:
          gnssOsa_PrintLog(__str, v13, 1, 0);
        }
      }

      else
      {
        BlockLen = XofSvcsIf::GetBlockLen(Instance, 5);
        v17 = v25;
        v18 = WORD1(v25);
        v19 = (604800 * v8 + a3) - (604800 * v25 + 16 * WORD1(v25) + 619315200);
        if (v19 < 0)
        {
          v19 = 604800 * v25 + 16 * WORD1(v25) + 619315200 - (604800 * v8 + a3);
        }

        if (v19 <= 1800 * BlockLen)
        {
          *a4 = v24[0];
          v16.i32[0] = HIDWORD(v25);
          v21 = vmovl_u8(v16).u64[0];
          v22 = v21;
          v22.i16[0] = v21.i16[3];
          v22.i16[3] = v21.i16[0];
          *(a4 + 1) = vuzp1_s8(v22, v21).u32[0];
          *(a4 + 5) = BYTE1(v26);
          *(a4 + 6) = v17;
          *(a4 + 8) = v18;
          *(a4 + 10) = v18;
          *(a4 + 12) = *(&v26 + 2);
          *(a4 + 16) = HIWORD(v26);
          *(a4 + 18) = v27;
          *(a4 + 19) = v26;
          *(a4 + 20) = v28[0];
          *(a4 + 24) = *(v28 + 4);
          HIDWORD(v23) = DWORD1(v28[2]);
          LODWORD(v23) = DWORD1(v28[2]);
          *(a4 + 40) = *(&v28[1] + 4);
          *(a4 + 56) = v23 >> 16;
          *(a4 + 60) = vrev64_s16(*(&v28[2] + 8));
          return 1;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v20 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u,EE BdsWeek,%u,TOE,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 69, "GN_EE_Get_NVIC_Eph_El", 770, a1, a2, a3, v25, WORD1(v25));
          v13 = 1;
          goto LABEL_15;
        }
      }
    }

    else if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,WeekNo,%u,TOW,%u\n", v12, "GNC");
      goto LABEL_14;
    }
  }

  else if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SV,%u,TOW,%u,WeekNo,%u\n", v11, "GNC");
    goto LABEL_14;
  }

  return 0;
}

uint64_t GncP24_50HandleEeDataInd(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v22 = 0;
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND Type,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP24_50HandleEeDataInd", *(a1 + 16));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *(a1 + 16);
      v20 = *(a1 + 12);
      v21 = v4;
      v23 = 0;
      v24 = 0uLL;
      if (v4 == 2)
      {
        v9 = *(a1 + 32);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Processing RTI Data Start\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP24_12HandleRtiInd");
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        if (v9)
        {
          XofSvcsIf::GetInstance(a1);
          __p = 0;
          v26 = 0;
          v27 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&__p, v3, &v3[v9], v9);
        }

        v14 = g_LbsOsaTrace_Config;
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v15 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx DataLen\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "GncP24_12HandleRtiInd", 515);
          gnssOsa_PrintLog(__str, 5, 1, 0);
          v14 = g_LbsOsaTrace_Config;
        }

        if (v14 >= 3)
        {
          bzero(__str, 0x3C6uLL);
          v17 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:API_STATUS =>EeCB,Api,%u,Id,%u,Status,%u,DataIntValid,%u,StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 77, "GncP24_50HandleEeDataInd", v21, v20, v22, v23, v24, *(&v24 + 1));
          gnssOsa_PrintLog(__str, 3, 1, 0);
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (g_LbsOsaTrace_Config >= 5)
          {
            bzero(__str, 0x3C6uLL);
            v11 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EeType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GncP24_50HandleEeDataInd", 770, *(a1 + 16));
            gnssOsa_PrintLog(__str, 5, 1, 0);
          }

          goto LABEL_31;
        }

        v5 = *(a1 + 32);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Processing XOF Data Start\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP24_11HandleOrbitDataInd");
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }

        if (v5)
        {
          XofSvcsIf::GetInstance(a1);
          __p = 0;
          v26 = 0;
          v27 = 0;
          std::vector<unsigned char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&__p, v3, &v3[v5], v5);
        }

        v12 = g_LbsOsaTrace_Config;
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v13 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx DataLen,0\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncP24_11HandleOrbitDataInd", 515);
          gnssOsa_PrintLog(__str, 5, 1, 0);
          v12 = g_LbsOsaTrace_Config;
        }

        if (v12 >= 3)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:API_STATUS =>EeCB,Api,%u,Id,%u,Status,%u,DataIntValid,%u,StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 77, "GncP24_50HandleEeDataInd", v21, v20, v22, v23, v24, *(&v24 + 1));
          gnssOsa_PrintLog(__str, 3, 1, 0);
        }
      }

      g_GnsEeCallback(0, 40, &v20);
LABEL_31:
      v18 = *(a1 + 24);
      if (v18)
      {
        free(v18);
      }

      *(a1 + 24) = 0;
      return 0;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EE Data\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP24_50HandleEeDataInd", 769);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP24_50HandleEeDataInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void sub_298FCE79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP24_49HandleEeCbInit(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP24_49HandleEeCbInit", 517);
    v5 = 1;
LABEL_8:
    gnssOsa_PrintLog(__str, v5, 1, 0);
    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EE_CB_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP24_49HandleEeCbInit");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    goto LABEL_5;
  }

  if (!g_GnsEeCallback)
  {
    if (g_LbsOsaTrace_Config < 5)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP24_49HandleEeCbInit", 513);
    v5 = 5;
    goto LABEL_8;
  }

  if (g_LbsOsaTrace_Config < 4)
  {
    v3 = 0;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP24_49HandleEeCbInit", 513);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    v3 = *(a1 + 16);
  }

LABEL_5:
  g_GnsEeCallback = v3;
  return 0;
}

uint64_t GNS_EeInitialize(uint64_t a1)
{
  v2 = gnssOsa_Calloc("GNS_EeInitialize", 2783, 1, 0x18uLL);
  if (!v2)
  {
    return 6;
  }

  v2[2] = a1;
  AgpsSendFsmMsg(132, 132, 8658179, v2);
  return 1;
}

uint64_t GNS_EeInjectOrbitData(int a1, signed __int8 *a2, size_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GNS_EeInjectOrbitData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 5)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ORB\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GNS_EeInjectOrbitData", 513);
    gnssOsa_PrintLog(__str, 5, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 2;
    }

LABEL_10:
    bzero(__str, 0x3C6uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v9, "GNC", 68, "GNS_EeInjectOrbitData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    return 2;
  }

  if ((a3 - 583897) < 0xFFF717A7)
  {
    if (g_LbsOsaTrace_Config < 5)
    {
      return 2;
    }

    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ORBLen,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GNS_EeInjectOrbitData", 514, a3);
    gnssOsa_PrintLog(__str, 5, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return 2;
    }

    goto LABEL_10;
  }

  v11 = gnssOsa_Calloc("GNS_EeInjectOrbitData", 2833, 1, 0x28uLL);
  if (v11)
  {
    v12 = v11;
    v13 = gnssOsa_Calloc("GNS_EeInjectOrbitData", 2841, a3, 1uLL);
    v12[3] = v13;
    if (v13)
    {
      memcpy_s("GNS_EeInjectOrbitData", 2850, v13, a3, a2, a3);
      *(v12 + 8) = a3;
      *(v12 + 3) = a1;
      *(v12 + 4) = 1;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND =>GNC,ORB,DataLen,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GNS_EeInjectOrbitData", *(v12 + 8), *(v12 + 3));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8651011, v12);
      if (g_LbsOsaTrace_Config < 5)
      {
        return 1;
      }

      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 68, "GNS_EeInjectOrbitData");
      v10 = 1;
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v10;
    }

    free(v12);
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v16 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 68, "GNS_EeInjectOrbitData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

uint64_t GNS_EeInjectRtiData(int a1, signed __int8 *a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GNS_EeInjectRtiData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RTI\n");
      goto LABEL_15;
    }

    return 2;
  }

  if (a3 != 128)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RTILen,%d\n", v16);
LABEL_15:
      gnssOsa_PrintLog(__str, 5, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GNS_EeInjectRtiData");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      return 2;
    }

    return 2;
  }

  v7 = gnssOsa_Calloc("GNS_EeInjectRtiData", 2901, 1, 0x28uLL);
  if (v7)
  {
    v8 = v7;
    v9 = gnssOsa_Calloc("GNS_EeInjectRtiData", 2909, 128, 1uLL);
    v8[3] = v9;
    if (v9)
    {
      memcpy_s("GNS_EeInjectRtiData", 2918, v9, 0x80u, a2, 0x80uLL);
      *(v8 + 8) = 128;
      *(v8 + 3) = a1;
      *(v8 + 4) = 2;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND =>GNC,RTI,DataLen,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GNS_EeInjectRtiData", *(v8 + 8), *(v8 + 3));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8651011, v8);
      if (g_LbsOsaTrace_Config < 5)
      {
        return 1;
      }

      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 68, "GNS_EeInjectRtiData");
      v12 = 1;
      gnssOsa_PrintLog(__str, 5, 1, 0);
      return v12;
    }

    free(v8);
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v14 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 68, "GNS_EeInjectRtiData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 6;
}

void GncP24_63UpdateXofAssistDoNotUseSV(XofSvcsIf *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v11 = 0;
  bzero(v14, 0x3FCuLL);
  memset(v13, 0, 255);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Updating Bad SV List from XOF for Signal Band Group %d\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP24_63UpdateXofAssistDoNotUseSV", a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 0, 1, 32, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GPS\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 1, 120, 39, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SBAS\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 2, 193, 10, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx QZSS\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 3, 1, 36, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GAL\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 4, 1, 24, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLO\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 5, 1, 63, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx BDS\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_64UpdateXofBadSvList(a1, 6, 1, 14, v14, v13, &v11) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NavIC\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GN_GPS_Set_RTI_Bad_SV_List(a1, v11, v14, v13) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RTI data %d\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 68, "GncP24_63UpdateXofAssistDoNotUseSV", 257, a1);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

uint64_t GncP24_64UpdateXofBadSvList(XofSvcsIf *a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a5 && a6 && a7 && *a7 != 255)
  {
    v12 = a2;
    v13 = a1;
    v23 = 0uLL;
    Instance = XofSvcsIf::GetInstance(a1);
    if (XofSvcsIf::GetXofDoNotUseSvBitMask(Instance, v12, &v23) != 1)
    {
      if (g_LbsOsaTrace_Config < 5)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Constel,%d\n", v21);
      goto LABEL_16;
    }

    v15 = &v23 + 1;
    if (!v13)
    {
      v15 = &v23;
    }

    v16 = *v15;
    v17 = Gncp24_56ConvertGnssType(v12);
    v18 = 0;
    v19 = *a7;
    while (v19 != 0xFF)
    {
      if ((v16 >> v18))
      {
        *(a5 + 4 * v19) = v17;
        *(a6 + *a7) = v18 + a3;
        v19 = *a7 + 1;
        *a7 = v19;
      }

      if (a4 == ++v18)
      {
        return 1;
      }
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx BadSvCnt,%u\n", v22);
      goto LABEL_16;
    }
  }

  else if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
LABEL_16:
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 0;
}

void GncP24_18UpdtXofAssistNotBrdSv(XofSvcsIf *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v10 = 0;
  bzero(v12, 0x4FBuLL);
  if ((GncP24_16XofGetNotBrdCstSvs(a1, 0, 1, 32, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GPS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_16XofGetNotBrdCstSvs(a1, 1, 120, 39, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SBAS\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_16XofGetNotBrdCstSvs(a1, 2, 193, 10, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx QZSS\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_16XofGetNotBrdCstSvs(a1, 3, 1, 36, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GAL\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_16XofGetNotBrdCstSvs(a1, 4, 1, 24, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLO\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_16XofGetNotBrdCstSvs(a1, 5, 1, 63, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx BDS\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_16XofGetNotBrdCstSvs(a1, 6, 1, 14, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NavIC\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GN_AGNSS_Set_Not_Brd_SV_List(a1, v10, v12, v13) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NotBrd SV list for GNSS Signal Band %d\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GncP24_18UpdtXofAssistNotBrdSv", 257, a1);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

uint64_t GncP24_16XofGetNotBrdCstSvs(XofSvcsIf *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a5 && a6 && *a6 != 255)
  {
    v10 = a2;
    v11 = a1;
    Instance = XofSvcsIf::GetInstance(a1);
    v30 = 0uLL;
    XofBrdSvBitMask = XofSvcsIf::GetXofBrdSvBitMask(Instance, v10, &v30);
    if (XofBrdSvBitMask == 7)
    {
      return 1;
    }

    if (XofBrdSvBitMask == 1)
    {
      v14 = &v30;
      if (v11)
      {
        v14 = &v30 + 1;
      }

      v15 = *v14;
      v16 = GncP24_51ConvertAGnssType(v10);
      v17 = 0;
      if ((a4 - 1) >= 0x3F)
      {
        v18 = 63;
      }

      else
      {
        v18 = (a4 - 1);
      }

      v19 = (v18 + 1);
      v20 = *a6;
      while (v20 != 0xFF)
      {
        if (((v15 >> v17) & 1) == 0)
        {
          *(a5 + 4 * v20) = v16;
          *(a5 + 1020 + *a6) = v17 + a3;
          v20 = *a6 + 1;
          *a6 = v20;
        }

        if (v19 == ++v17)
        {
          return 1;
        }
      }

      if (g_LbsOsaTrace_Config < 5)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      v26 = 772;
      v27 = *a6;
      v25 = (*&g_MacClockTicksToMsRelation * v24);
      v23 = "%10u %s%c %s: #%04hx NotBrdSvCnt,%u\n";
    }

    else
    {
      if (g_LbsOsaTrace_Config < 5)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v26 = 770;
      v27 = v10;
      v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v23 = "%10u %s%c %s: #%04hx Constel,%u\n";
    }

    goto LABEL_19;
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v28 = *a6;
    v29 = a4;
    v26 = 515;
    v27 = 255;
    v23 = "%10u %s%c %s: #%04hx MaxCnt,%u,NotBrdSvCnt,%u,MaxSvCnt,%u\n";
    v25 = v22;
LABEL_19:
    snprintf(__str, 0x3C5uLL, v23, v25, "GNC", 68, "GncP24_16XofGetNotBrdCstSvs", v26, v27, v28, v29);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 0;
}

void GncP24_14UpdateRtiAssistDoNotUseSV(XofSvcsIf *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v10 = 0;
  bzero(v13, 0x3FCuLL);
  memset(v12, 0, 255);
  if ((GncP24_13UpdateBadSvList(a1, 0, 1, 32, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GPS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_13UpdateBadSvList(a1, 1, 120, 39, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SBAS\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_13UpdateBadSvList(a1, 2, 193, 10, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx QZSS\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_13UpdateBadSvList(a1, 3, 1, 36, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GAL\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_13UpdateBadSvList(a1, 4, 1, 24, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLO\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_13UpdateBadSvList(a1, 5, 1, 63, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx BDS\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GncP24_13UpdateBadSvList(a1, 6, 1, 14, v13, v12, &v10) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NavIC\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((GN_GPS_Set_RTI_Bad_SV_List(a1, v10, v13, v12) & 1) == 0 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RTI data %d\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 68, "GncP24_14UpdateRtiAssistDoNotUseSV", 257, a1);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

uint64_t GncP24_13UpdateBadSvList(XofSvcsIf *a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a5 && a6 && a7 && *a7 != 255)
  {
    v12 = a2;
    v13 = a1;
    v23 = 0uLL;
    Instance = XofSvcsIf::GetInstance(a1);
    if (XofSvcsIf::GetRtiData(Instance, v12, &v23) != 1)
    {
      if (g_LbsOsaTrace_Config < 5)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Constel,%d\n", v21);
      goto LABEL_16;
    }

    v15 = &v23 + 1;
    if (!v13)
    {
      v15 = &v23;
    }

    v16 = *v15;
    v17 = Gncp24_56ConvertGnssType(v12);
    v18 = 0;
    v19 = *a7;
    while (v19 != 0xFF)
    {
      if ((v16 >> v18))
      {
        *(a5 + 4 * v19) = v17;
        *(a6 + *a7) = v18 + a3;
        v19 = *a7 + 1;
        *a7 = v19;
      }

      if (a4 == ++v18)
      {
        return 1;
      }
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx BadSvCnt,%u\n", v22);
      goto LABEL_16;
    }
  }

  else if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
LABEL_16:
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  return 0;
}

void sub_298FD0D74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Compute_Ionospheric_Pierce_Point(double *a1, double *a2, uint64_t a3, double a4)
{
  v8 = 0;
  v44 = *MEMORY[0x29EDCA608];
  *a3 = a4;
  do
  {
    v9 = a3 + v8 * 8;
    *(v9 + 56) = a1[v8];
    *(v9 + 80) = a2[v8++];
  }

  while (v8 != 3);
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0;
  if (!ECEF2Geocentric((a3 + 56), &v41))
  {
    return 0;
  }

  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v10 = *a2 - *a1;
  v11 = a2[1] - a1[1];
  v12 = a2[2] - a1[2];
  v13 = __sincos_stret(v41);
  v14 = v42;
  v15 = __sincos_stret(v42);
  v16 = 0;
  v35 = -(v13.__sinval * v15.__cosval);
  v36 = -(v13.__sinval * v15.__sinval);
  v17 = v37;
  v37[0] = *&v13.__cosval;
  *&v37[1] = -v15.__sinval;
  v37[2] = *&v15.__cosval;
  v37[3] = 0;
  *&v37[4] = -(v13.__cosval * v15.__cosval);
  *&v37[5] = -(v13.__cosval * v15.__sinval);
  *&v37[6] = -v13.__sinval;
  do
  {
    v18 = v11 * *(v17 - 1) + *(v17 - 2) * v10;
    v19 = *v17;
    v17 += 3;
    *(&v38 + v16) = v18 + v19 * v12;
    v16 += 8;
  }

  while (v16 != 24);
  v20 = v38;
  v21 = v39;
  v22 = sqrt(v21 * v21 + v20 * v20);
  if (v22 <= 0.000000015)
  {
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    v24 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v23 = atan2(v22, -v40);
    *(a3 + 8) = v23;
    v24 = atan2(v21, v20);
    *(a3 + 24) = v24;
    if (v24 < 0.0)
    {
      v24 = v24 + 6.28318531;
      *(a3 + 24) = v24;
    }
  }

  v25 = sqrt(a1[1] * a1[1] + *a1 * *a1 + a1[2] * a1[2]) * 0.001;
  *(a3 + 48) = v25;
  if (a4 < 0.0)
  {
    return 0;
  }

  v26 = a4 + 6371.009;
  if (v26 < v25)
  {
    return 0;
  }

  v28 = sin(v23);
  v29 = asin(v28 * v25 / v26);
  *(a3 + 16) = v29;
  v30 = __sincos_stret(v23 - v29);
  v31 = cos(v24);
  v32 = asin(v31 * (v13.__cosval * v30.__sinval) + v13.__sinval * v30.__cosval);
  *(a3 + 32) = v32;
  if (fabs(fabs(v32) + -1.57079633) > 0.000000015)
  {
    v33 = sin(v24) * v30.__sinval;
    v34 = cos(v32);
    v14 = v14 + asin(v33 / v34);
  }

  *(a3 + 40) = v14;
  return 1;
}

BOOL Is_SH_Iono_Model_Valid(int a1, uint64_t a2, int *a3, double a4)
{
  *a3 = -604800;
  if (*(a2 + 6) - 4 < 0xFFFFFFFD || !*(a2 + 4) || *a2 > 0x93A7Fu)
  {
    return 0;
  }

  v5 = a4 - *a2 + 604800 * (a1 - *(a2 + 4));
  *a3 = v5;
  if (v5 < 0)
  {
    v5 = -v5;
  }

  return v5 < 0x1C21;
}

uint64_t Get_SH_Ionospheric_Delay(double *a1, uint64_t a2, uint64_t a3, double *a4, long double a5, double a6)
{
  v61 = *MEMORY[0x29EDCA608];
  if (*(a3 + 6))
  {
    v52 = a3 + 8;
    v9 = 0;
    v51 = fmod(a5, 86400.0) + -50400.0;
    v10 = a3;
    v11 = 0.0;
    while (1)
    {
      v12 = (v52 + 3176 * v9);
      v60 = 0;
      memset(__x, 0, sizeof(__x));
      v58 = 0u;
      v57 = 0u;
      if (!Compute_Ionospheric_Pierce_Point(a1, (a2 + 8), &v57, v12[1]))
      {
        return 0;
      }

      v13 = *&v58;
      if (*&v58 < 0.0 || *&v58 >= 1.57079633)
      {
        return 0;
      }

      v14 = fmod(*(__x + 1) + v51 * 0.0000727220522, 6.28318531);
      v15 = __sincos_stret(v14);
      memset(v56, 0, sizeof(v56));
      memset(v55, 0, sizeof(v55));
      v16 = v12[3];
      if (v12[3])
      {
        v17 = 1.0;
        v18 = 0.0;
        v19 = v56 + 1;
        v20 = v55 + 1;
        v21 = v12[3];
        do
        {
          v22 = v18 * -v15.__sinval + v15.__cosval * v17;
          *v19++ = v22;
          v18 = v15.__sinval * v17 + v15.__cosval * v18;
          *v20++ = v18;
          v17 = v22;
          --v21;
        }

        while (v21);
      }

      v23 = sin(*__x);
      v24 = sqrt(1.0 - v23 * v23);
      bzero(v54, 0x430uLL);
      v53[0] = 0x3FF0000000000000;
      *&v53[1] = v23;
      *&v54[14] = v24;
      v25 = v12[2];
      if (v25 >= 2)
      {
        v26 = 2;
        v27 = 1;
        v28 = 1;
        do
        {
          v29 = (2 * v26 - 1);
          v30 = v23 * v29;
          v31 = *&v53[(17 * v26 - (((v26 - 1) * v26) >> 1) - 17)] * v29;
          *&v53[(17 * v26 - (((v26 + 1) * v26) >> 1))] = v24 * v31;
          *&v53[(v26 + 16 * (v26 - 1) - (((v26 - 1) * v26) >> 1))] = v23 * v31;
          v32 = 2;
          v33 = v27;
          v34 = v28;
          do
          {
            --v34;
            v35 = v34 * v34 + v34;
            *&v53[(v26 + 16 * v34 - (v35 >> 1))] = 1.0 / v32++ * (v30 * *&v53[(v26 - 1 + 16 * v34 - (v35 >> 1))] - *&v53[(v26 - 2 + 16 * v34 - (v35 >> 1))] * v33--);
          }

          while (v34 > 0);
          ++v28;
          v27 += 2;
        }

        while (v26++ != v25);
      }

      if (((v25 + 1) & 0xFFFE) != 0)
      {
        v37 = (v25 + 1);
      }

      else
      {
        v37 = 1;
      }

      v38 = 0.0;
      v39 = v53;
      v40 = v10;
      v41 = v37;
      do
      {
        v42 = *v39++;
        v38 = v38 + *(v40 + 24) * (v42 * *(v40 + 2096));
        v40 += 8;
        --v41;
      }

      while (v41);
      if (v16)
      {
        v43 = 0;
        if ((v16 + 1) <= 2u)
        {
          v44 = 2;
        }

        else
        {
          v44 = (v16 + 1);
        }

        v45 = 1;
        do
        {
          if (v45 <= v25)
          {
            v46 = v45;
            do
            {
              v38 = v38 + (*(v55 + v45) * *&v12[4 * v43 + 556] + *&v12[4 * v37 + 8] * *(v56 + v45)) * (*&v53[v37] * *&v12[4 * v37 + 1044]);
              LODWORD(v37) = v37 + 1;
              ++v43;
              ++v46;
            }

            while (v25 >= v46);
          }

          ++v45;
        }

        while (v45 != v44);
      }

      if (v38 >= 0.0)
      {
        v47 = v38;
      }

      else
      {
        v47 = 0.0;
      }

      v11 = v11 + v47 * (1.0 / cos(v13));
      ++v9;
      v10 += 3176;
      if (v9 >= *(a3 + 6))
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v11 = 0.0;
LABEL_36:
    *a4 = 4.0308193e17 / (a6 * a6) * v11;
    return 1;
  }
}

uint64_t Hal_BaseBandSPMI_GNSSTriggerTrap(void)
{
  Controller = TelephonyBasebandCreateController();
  v1 = TelephonyBasebandGNSSTrapTrigger();
  if (Controller)
  {
    CFRelease(Controller);
  }

  return v1;
}

void sub_298FD15D4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_298FD165C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Hal35_BaseBandSPMI_GNSSWake(void)
{
  v0 = 0;
  v8 = *MEMORY[0x29EDCA608];
  do
  {
    Controller = TelephonyBasebandCreateController();
    if (!Controller && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Failed to create basebandController obj\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 87, "Hal35_IsBasebandAlive");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    if (TelephonyBasebandGetReset())
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Baseband is in reset,iter %d\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal35_IsBasebandAlive", v0);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Failed to get baseband reset state\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal35_IsBasebandAlive");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    usleep(0x3B920u);
    if (Controller)
    {
      CFRelease(Controller);
    }

    ++v0;
  }

  while (v0 != 5);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Baseband is in reset, status check for 5seconds failed\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal35_IsBasebandAlive");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return 0;
}

void sub_298FD19F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void NK_Add_SV_ARes_PN(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v137[128] = *MEMORY[0x29EDCA608];
  if (!*(a4 + 148))
  {
    return;
  }

  v8 = a3;
  v9 = (a5 + 61824);
  v10 = (a5 + 6768);
  v134 = 0;
  v11 = 0.0;
  v12 = *(a5 + 6769) >= 4u && a2 == 0;
  if (!v12 && ((*(a4 + 20) - 6) > 2 || a1 > 4 || *v10 <= 3u))
  {
    if (*(a5 + 1872))
    {
      v11 = 16.0;
    }

    else
    {
      v11 = 4.0;
    }
  }

  v131 = (a5 + 36579);
  if (*(a4 + 241) == 1 && *(a5 + 20) <= 7)
  {
    v124 = (a5 + 6768);
    v128 = (a5 + 61824);
    v130 = 0;
    v13 = 0;
    v132 = 0;
    v14 = a3 + 7520;
    v15 = (a5 + 52776);
    do
    {
      if (*(v14 + 2 * v13) && *(a5 + 7080 + v13) == 1 && *(a5 + 17448 + 8 * v13) < 10000.0)
      {
        v16 = *(v14 + 2 * v13);
        v17 = v16 * v16;
        v18 = v8;
        v19 = v8 + 4 * v13;
        NK_Obs_Equ_SV(1, 0, *(v19 + 96), v15, v135, *(a5 + 1552));
        LODWORD(v137[0]) = 0;
        if (v16 * v16 > 0.0)
        {
          rnk1_core((a4 + 352), 0, v16 * v16, v135, v137);
          v20 = v130;
          if (LODWORD(v137[0]))
          {
            v20 = v130 + 1;
          }

          v130 = v20;
        }

        v132 = 1;
        *(a4 + 182) = 1;
        *(a4 + 232) = v17;
        GNSS_SV_Str = Get_GNSS_SV_Str(*(v19 + 96));
        EvLog_v("NK_Add_SV_ARes_PN:  %d  %s  Q-Boost[5]  %g  Code_PPC %d  Res %g", v13, GNSS_SV_Str, sqrt(v17), *(v14 + 2 * v13), v16);
        v8 = v18;
      }

      ++v13;
      v15 += 7;
    }

    while (v13 != 128);
    v134 = v130;
    v9 = v128;
    v10 = v124;
  }

  else
  {
    v132 = 0;
  }

  v22 = *v9;
  v23 = v9[1];
  v24 = v9[2];
  bzero(v137, 0x400uLL);
  v25 = 0;
  v26 = 0;
  v27 = v10;
  v28 = v10 + 312;
  v29 = a5 + 12072;
  memset(v136, 0, 512);
  do
  {
    v30 = *(a5 + 79673 + v25);
    if (v28[v30] == 1)
    {
      v137[v26] = *(v29 + 8 * v30);
      *(v136 + v26) = v26;
      ++v26;
    }

    if (v25 > 0x7E)
    {
      break;
    }

    ++v25;
  }

  while (v26 < 9);
  if (v22 >= v23)
  {
    v31 = v23;
  }

  else
  {
    v31 = v22;
  }

  if (v31 >= v24)
  {
    v32 = v24;
  }

  else
  {
    v32 = v31;
  }

  v33 = 0.0;
  v34 = 0.0;
  if (v26 >= 5 && ((VecSortIndexAscR8(v137, v26, v136, 0), v35 = v26 >> 1, v36 = *(v136 + (v26 >> 1) - 1), v37 = v137[*(v136 + (v26 >> 1) + 1)], (v26 & 1) != 0) ? (v34 = v137[*(v136 + v35)]) : (v34 = (v137[*(v136 + v35)] + v37) * 0.5), (v133 = v34, v38 = v137[v36], v37 * v38 >= 0.0) && (v39 = fabs(v34), vabdd_f64(v37, v38) <= v39 * 0.5) && ((v40 = v137[*(&v136[-1] + v35)], v41 = v137[*(&v136[1] + v35)], v42 = vabdd_f64(v40, v41), v40 * v41 >= 0.0) ? (v43 = v42 <= v39) : (v43 = 0), v43)))
  {
    v52 = 0;
    v122 = (v41 + v37 + v34 + v38 + v40) / 5.0;
    v123 = ((v38 - v122) * (v38 - v122) + (v40 - v122) * (v40 - v122) + (v34 - v122) * (v34 - v122) + (v37 - v122) * (v37 - v122) + (v41 - v122) * (v41 - v122)) / 5.0;
    v50 = v32 + v123;
    v49 = v123 * 25.0;
  }

  else
  {
    v44 = 128;
    v45 = v28;
    v46 = (a5 + 12072);
    do
    {
      v47 = *v45++;
      if (v47 == 1)
      {
        v48 = 1.0 / v46[672];
        v34 = v34 + *v46 * v48;
        v33 = v33 + v48;
      }

      ++v46;
      --v44;
    }

    while (v44);
    v133 = v34;
    v137[0] = v33;
    v136[0] = 0.0;
    v49 = 0.0;
    if (R8_EQ(v137, v136))
    {
      v50 = 0.0;
    }

    else
    {
      *&v51 = 1.0 / v33;
      v34 = v34 * (1.0 / v33);
      v133 = v34;
      LOBYTE(v51) = v27[3];
      v50 = v32 + v33 / v51;
    }

    v52 = 1;
  }

  v137[0] = 0.0;
  if (!R8_EQ(&v133, v137))
  {
    v57 = 0;
    v58 = 0;
    v59 = 128;
    v60 = v28;
    v61 = (a5 + 12072);
    do
    {
      v62 = *v60++;
      if (v62 == 1)
      {
        if ((*v61 - v34) * (*v61 - v34) <= v61[672] * 25.0)
        {
          ++v58;
        }

        else
        {
          ++v57;
        }
      }

      ++v61;
      --v59;
    }

    while (v59);
    v63 = 0.0;
    if (v57 >= v58 || v57 && v58 < 3)
    {
      v64 = 0;
      goto LABEL_88;
    }
  }

  if (v34 != 0.0)
  {
    v53 = fabs(v34);
    v54 = v53 >= 149896.229 || *(a5 + 1872) == 0;
    v55 = v34 * v34;
    if (v54 && v55 >= v11 * v50)
    {
      v64 = 1;
LABEL_82:
      v65 = -(v50 - v34 * v34);
      if (v65 > 0.0)
      {
        v66 = v64;
        Apply_Q_Boost(-(v50 - v34 * v34), 0, 1u, (a4 + 352), &v134, v137);
        Apply_Q_Boost(-(v50 - v34 * v34), 1u, 1u, (a4 + 352), &v134, v137);
        Apply_Q_Boost(-(v50 - v34 * v34), 2u, 1u, (a4 + 352), &v134, v137);
        if (v65 >= 10000.0)
        {
          v66 = 1;
        }

        v132 = 1;
        *(a4 + 177) = 1;
        *(a4 + 192) = v65;
        EvLog_v("NK_Add_SV_ARes_PN:  Q-Boost[0]  %g  ClkB %g  Sigs %g  %g %g %g  %g", sqrt(v65), v34, sqrt(v32), sqrt(*v9), sqrt(v9[1]), sqrt(v9[2]), sqrt(v50));
        v64 = v66;
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if ((v52 & 1) == 0 && ((a6 & 0xFFFFFFFE) != 6 || v55 >= v49 || (*(a4 + 20) - 4) <= 4))
    {
      v64 = 0;
      if (v53 < 3.0 || v55 < v50)
      {
        goto LABEL_87;
      }

      goto LABEL_82;
    }
  }

LABEL_86:
  v64 = 0;
LABEL_87:
  v63 = v34;
LABEL_88:
  if (v27[3] < 3u)
  {
LABEL_157:
    v98 = a4 + 24576;
    goto LABEL_158;
  }

  v129 = v9;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = -9999.0;
  v72 = -1;
  v73 = (a5 + 12072);
  do
  {
    if (v28[v67] == 1 && v73[672] < 10000.0)
    {
      v74 = (*v73 - v63) * (*v73 - v63) / v73[800];
      if (v74 <= v11 || (++v69, v68 += *(a5 + 2010 + v67), v74 <= v71))
      {
        v74 = v71;
      }

      else
      {
        v72 = v67;
      }

      ++v70;
      v71 = v74;
    }

    ++v67;
    ++v73;
  }

  while (v67 != 128);
  v127 = v8;
  if (*v131 + *(a5 + 21675) < 3)
  {
    v78 = 0;
    v77 = 0;
    v76 = 0;
    v79 = -1;
    if ((v72 & 0x80000000) != 0)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = -1;
    v80 = -9999.0;
    v81 = 128;
    v82 = a5;
    v83 = a5;
    do
    {
      v84 = v83[36888];
      if (v83[21984] & 1) != 0 || (v83[36888])
      {
        if (v84 & 1 | ((v83[21984] & 1) == 0))
        {
          v85 = 41880;
        }

        else
        {
          v85 = 26976;
        }

        v86 = *(v82 + v85);
        if (v84 & 1 | ((v83[21984] & 1) == 0))
        {
          v87 = 48280;
        }

        else
        {
          v87 = 33376;
        }

        v88 = v86 * v86 / *(v82 + v87);
        if (v88 <= v11 || (++v77, v76 += v83[2010], v88 <= v80))
        {
          v88 = v80;
        }

        else
        {
          v79 = v75;
        }

        ++v78;
        v80 = v88;
      }

      ++v75;
      ++v83;
      v82 += 8;
      --v81;
    }

    while (v81);
    if ((v72 & 0x80000000) != 0)
    {
      goto LABEL_134;
    }
  }

  if (v70 >= 3 && *(a5 + 1872) != 1)
  {
    v89 = v69 <= 2 && v68 == 0;
    v90 = !v89;
    if (!v89 || (*(a4 + 241) & 1) != 0)
    {
      v91 = 0.0816326531;
      if (*(a4 + 241) & 1 | ((v90 & 1) == 0))
      {
        v91 = 1.0;
      }
    }

    else
    {
      if (*(a5 + 20) >= 8)
      {
        goto LABEL_134;
      }

      v91 = 0.0816326531;
    }

    v92 = *(v29 + 8 * v72);
    v93 = *(a5 + 18472 + 8 * v72);
    v94 = -(v93 - v92 * v92 * v91);
    v95 = v94 * 0.5;
    if (v94 * 0.5 > 0.0)
    {
      v96 = v72;
      v125 = v72;
      Apply_Q_Boost(v94 * 0.5, 0, 1u, (a4 + 352), &v134, v137);
      Apply_Q_Boost(v95, 1u, 1u, (a4 + 352), &v134, v137);
      Apply_Q_Boost(v95, 2u, 1u, (a4 + 352), &v134, v137);
      Apply_Q_Boost(v95 * 0.000001, 3u, 1u, (a4 + 352), &v134, v137);
      Apply_Q_Boost(v95, 6u, 3u, (a4 + 352), &v134, v137);
      Apply_Q_Boost(v95 + v95, 5u, 1u, (a4 + 352), &v134, v137);
      v132 = 1;
      *(a4 + 178) = 1;
      *(a4 + 200) = v95;
      v97 = Get_GNSS_SV_Str(*(v127 + 4 * v96 + 96));
      EvLog_v("NK_Add_SV_ARes_PN:  Q-Boost[1]  %g  i_Worse %d %s  PR.Res %g %g  tested %d  fail %d %d", sqrt(v95), v125, v97, v92, sqrt(v93), v70, v69, v68);
      v64 = 1;
    }
  }

LABEL_134:
  if ((v79 & 0x80000000) != 0)
  {
    v9 = v129;
    goto LABEL_157;
  }

  v9 = v129;
  v98 = a4 + 24576;
  if (v78 >= 3 && *(a5 + 1872) != 1)
  {
    v99 = v77 <= 2 && v76 == 0;
    v100 = !v99;
    v101 = v100 ^ 1 | *(a4 + 241);
    if (v99 && (*(a4 + 241) & 1) == 0)
    {
      if (*(a5 + 20) > 7)
      {
        goto LABEL_158;
      }

      v101 = 0;
    }

    v102 = 33376;
    if (*(a5 + v79 + 36888))
    {
      v102 = 48280;
      v103 = 82;
    }

    else
    {
      v103 = 79;
    }

    v104 = 26976;
    if (*(a5 + v79 + 36888))
    {
      v104 = 41880;
    }

    v105 = *(a5 + v104 + 8 * v79);
    v106 = *(a5 + v102 + 8 * v79);
    if ((v101 & 1) != 0 || !*(a4 + 27136))
    {
      v107 = 1.0;
    }

    else
    {
      v107 = 0.0816326531;
    }

    v119 = -(v106 - v105 * v105 * v107);
    v120 = v119 * 0.5;
    if (v119 * 0.5 > 0.0)
    {
      Apply_Q_Boost(v119 * 0.5, 4u, 1u, (a4 + 352), &v134, v137);
      Apply_Q_Boost(v120, 9u, 3u, (a4 + 352), &v134, v137);
      *(a4 + 179) = 1;
      *(a4 + 208) = v120;
      v9 = v129;
      v98 = a4 + 24576;
      v121 = Get_GNSS_SV_Str(*(v127 + 4 * v79 + 96));
      EvLog_v("NK_Add_SV_ARes_PN:  Q-Boost[2]  %g  i_Worse %d %s  D%c.Res %g %g  tested %d  fail %d %d", sqrt(v120), v79, v121, v103, v105, sqrt(v106), v78, v77, v76);
      if (!v134)
      {
LABEL_162:
        *(a4 + 152) = 0;
LABEL_163:
        ud2var(a4 + 352, 0xCu, 1, 0xCu, v9);
        Comp_NEDvar_UDU(a4 + 352, 0xCu, 6, (a5 + 1736), (a5 + 61872));
        Comp_NEDvar_UDU(a4 + 352, 0xCu, 9, (a5 + 1736), (a5 + 61896));
        goto LABEL_166;
      }

      goto LABEL_159;
    }
  }

LABEL_158:
  if (!v134)
  {
    if ((v132 & 1) == 0)
    {
      v108 = *(a4 + 152);
      if (v108 <= 0x5F5E0FF)
      {
        *(a4 + 152) = v108 + 1;
      }

      goto LABEL_166;
    }

    if (!v64)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_159:
  *(a4 + 136) = 1;
  *(a4 + 140) = 22;
  *(a4 + 152) = 0;
LABEL_166:
  if ((*(a4 + 241) & 1) != 0 || *(v98 + 2544) > *(a4 + 16) || *(a5 + 1872) != 1)
  {
    goto LABEL_174;
  }

  v109 = *(a4 + 148);
  if (v109 >= *(a4 + 152))
  {
    v109 = *(a4 + 152);
  }

  if (v109 >= *(a4 + 156))
  {
    v109 = *(a4 + 156);
  }

  if (v109 <= 0xA)
  {
LABEL_174:
    v110 = 0;
    v111 = (a5 + 6816);
    v112 = vld1q_dup_f64(v111);
    do
    {
      *(a5 + 18456 + v110) = vmulq_f64(v112, *(a5 + 18456 + v110));
      v110 -= 16;
    }

    while (v110 != -1024);
  }

  v113 = 0;
  v114 = (a5 + 21720);
  v115 = vld1q_dup_f64(v114);
  do
  {
    *(a5 + 33360 + v113) = vmulq_f64(v115, *(a5 + 33360 + v113));
    v113 -= 16;
  }

  while (v113 != -1024);
  v116 = 0;
  v117 = (v131 + 45);
  v118 = vld1q_dup_f64(v117);
  do
  {
    *(a5 + 48264 + v116) = vmulq_f64(v118, *(a5 + 48264 + v116));
    v116 -= 16;
  }

  while (v116 != -1024);
  if (*(a4 + 152) >= 4u)
  {
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 192) = 0u;
  }
}

void NK_Add_SV_ARes_PN_ClkDrift(uint64_t a1, uint64_t a2, double a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 148))
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a2 + 36888);
  v12 = (a2 + 21984);
  v13 = *(a2 + 61856);
  v14 = sqrt(v13);
  v15 = v14 * 0.5;
  v16 = -1.79769313e308;
  v17 = (a2 + 26976);
  v18 = 0.0;
  do
  {
    v19 = *(a2 + 79673 + v6);
    if (v12[v19])
    {
      if (v7 > 2)
      {
        goto LABEL_17;
      }
    }

    else if (v11[v19] != 1 || v7 >= 3)
    {
      goto LABEL_17;
    }

    v21 = v17[v19];
    ++v7;
    if (v21 >= 0.0)
    {
      ++v8;
    }

    else
    {
      ++v9;
    }

    v18 = v18 + v21;
    v22 = fabs(v21);
    if (v22 > v15)
    {
      ++v10;
    }

    if (v22 > v16)
    {
      v16 = v22;
    }

LABEL_17:
    ++v6;
  }

  while (v6 != 128);
  if (v8)
  {
    v23 = v9 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 && v10)
  {
    v24 = v16 + v16;
    v25 = -(v13 - v24 * v24);
    if (v25 > 0.0)
    {
      memset(v31, 0, sizeof(v31));
      v30 = 0;
      Apply_Q_Boost(-(v13 - v24 * v24), 4u, 1u, (a1 + 352), &v30, v31);
      if (v30)
      {
        *(a1 + 140) = 22;
        *(a1 + 136) = 1;
      }

      else
      {
        ud2var(a1 + 352, 0xCu, 1, 0xCu, (a2 + 61824));
        Comp_NEDvar_UDU(a1 + 352, 0xCu, 6, (a2 + 1736), (a2 + 61872));
        Comp_NEDvar_UDU(a1 + 352, 0xCu, 9, (a2 + 1736), (a2 + 61896));
      }

      EvCrt_v("NK_Add_SV_ARes_PN_ClkDrift:  Q-Boost %f   Max_DO_Res %f   old_OrigSig %f   new_OrigSig %f   TempRate %f", sqrt(v25), v16, v14, sqrt(*(a2 + 61856)), a3);
    }

    if (fabs(a3) > 1.25)
    {
      v26 = v18 / v7;
      if (fabs(v26) > v15)
      {
        EvCrt_v("NK_Add_SV_ARes_PN_ClkDrift:  Applied ClkDrift_Stress %f m/s   Num_Res %d   TempRate %f", v18 / v7, v7, a3);
        *(a2 + 1664) = *(a2 + 1664) + v26 * -0.00000000333564095;
        v27 = 128;
        do
        {
          v28 = *v12++;
          if (v28 == 1)
          {
            *v17 = *v17 - v26;
            v17[256] = v17[256] - v26;
          }

          if (*v11 == 1)
          {
            v29 = v26 * *(a2 + 1552);
            v17[1863] = v17[1863] - v29;
            v17[2119] = v17[2119] - v29;
          }

          ++v17;
          ++v11;
          --v27;
        }

        while (v27);
      }
    }
  }
}

uint64_t Hal15_ReadHwRevision(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  *v11 = 1984067706;
  v11[4] = a1;
  v12 = 0;
  v13 = a1 - 72;
  v14 = 10;
  if (a1 == 77)
  {
    v2 = 3;
  }

  else
  {
    if (a1 != 80)
    {
      goto LABEL_6;
    }

    v2 = 2;
  }

  g_HalState = v2;
LABEL_6:
  if (Hal22_ZxSendToChip(v11, 9uLL) <= 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx rev cmd,%c\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 69, "Hal15_ReadHwRevision", 1282, a1);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 4294967293;
  }

  else
  {
    v3 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1F4u);
    if (v3 == 2)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RevResp, CPU,%c\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal15_ReadHwRevision", 1541, a1);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      return 4294967289;
    }

    else if (v3 == 1)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RevResp, CPU,%c\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal15_ReadHwRevision", 1543, a1);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      return 4294967291;
    }

    else if (byte_2A13EC5F0 == 32)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RevResp rcvd\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal15_ReadHwRevision");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      return 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RevResp status,%c, CPU,%c\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 69, "Hal15_ReadHwRevision", 770, byte_2A13EC5F0, a1);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      return 4294967292;
    }
  }
}

void Hal15_HandleRevResp(unsigned __int8 *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v10 = 513;
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = "%10u %s%c %s: #%04hx data\n";
    goto LABEL_19;
  }

  if (a1[2] != 66 || a1[3] != 86)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Packet MC,%c,MID,%c,MIDEx,%c\n", v5, "HAL", 69);
    goto LABEL_20;
  }

  if (a1[8] == 32)
  {
    byte_2A13EC5F0 = 32;
    v1 = a1[4];
    if (v1 == 77)
    {
      v2 = &unk_2A13EC585;
      v3 = a1 + 9;
      v4 = 144;
      goto LABEL_13;
    }

    if (v1 == 80)
    {
      v2 = &g_RawRevRespCntxt;
      v3 = a1 + 9;
      v4 = 142;
LABEL_13:
      memcpy_s("Hal15_HandleRevResp", v4, v2, 0x6Bu, v3, 0x6BuLL);
      goto LABEL_16;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal15_HandleRevResp", 519);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

LABEL_16:
  if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = 1542;
    v11 = *__error();
    v9 = v8;
    v6 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
LABEL_19:
    snprintf(__str, 0x3C5uLL, v6, v9, "HAL", 69, "Hal15_HandleRevResp", v10, v11);
LABEL_20:
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

unint64_t Hal15_GetGNSSVersionString@<X0>(void *a1@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 0;
  v4 = unk_2A13EC536;
  snprintf(__str, 0x40uLL, "HWID:0x%0x,HW:%u,FW:%hhu.%hhu.%hhu.%hhu,%s", word_2A13EC520, *&word_2A13EC520, g_RawRevRespCntxt, byte_2A13EC51B, byte_2A13EC51C, byte_2A13EC51D, &v4);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, __str, result);
  }

  *(a1 + v3) = 0;
  return result;
}

uint64_t NVIC_L5_NGTOBin2Int(_DWORD *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  *(a2 + 8) = HIWORD(v3);
  if (((v3 >> 3) & 0x1000) != 0)
  {
    v4 = -8192;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 10) = v4 & 0xE000 | (v3 >> 3);
  if (((16 * v3) & 0x40) != 0)
  {
    v5 = (__PAIR64__(v3, v2) >> 28) & 0x7F | 0x80;
  }

  else
  {
    v5 = (__PAIR64__(v3, v2) >> 28) & 0x7F;
  }

  *(a2 + 12) = v5;
  *(a2 + 14) = v2 >> 12;
  *(a2 + 16) = (v2 >> 2) & 0x3FF;
  return (a1[6] >> 31) | (4 * (v2 & 3));
}

void GM_Cross_Constell(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  v5 = 0;
  v112[1] = *MEMORY[0x29EDCA608];
  v6 = a2 + 0x2000;
  v7 = a1 + 4484;
  v8 = a1 + 2;
  v9 = 128;
  do
  {
    if ((~*v8 & 0x208) == 0)
    {
      v10 = *(v8 - 8);
      if (v10 == 7)
      {
        v11 = 1;
      }

      else
      {
        v11 = v4;
      }

      if (v10 == 6)
      {
        v11 = 1;
      }

      if (v10 == 5)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4;
      }

      if (v10 == 4)
      {
        v12 = 1;
      }

      if (*(v8 - 8) <= 5u)
      {
        v11 = v12;
      }

      if (v10 == 3)
      {
        v13 = 1;
      }

      else
      {
        v13 = v4;
      }

      if (v10 == 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = v5;
      }

      if (v10 == 2)
      {
        v13 = v4;
      }

      if (v10 == 1)
      {
        v14 = v5;
        v13 = 1;
      }

      if (*(v8 - 8) > 3u)
      {
        v4 = v11;
      }

      else
      {
        v5 = v14;
        v4 = v13;
      }
    }

    v8 += 9;
    --v9;
  }

  while (v9);
  if ((*(a1 + 17958) & 1) == 0 && *(a1 + 17940) == 1 && *v7 >= 1)
  {
    *v111 = 0;
    v112[0] = 0.0;
    API_Get_UTC_Cor(1, v112);
    GPS_To_Glon_Time(0, *(v7 + 3), *(v3 + 2243), v112[0], &v111[1], v111, v110);
    v15 = v111[0];
    *(v7 + 10) = v111[1];
    *(v7 + 12) = v15;
    *(v7 + 22) = 1;
  }

  v16 = v7[4];
  if (((v16 == 0) & v5) == 1)
  {
    v17 = 10799999;
    v112[0] = 0.0;
    v18 = v3 + 1153;
    v19 = (v3 + 2);
    v20 = 128;
    while (*(v19 - 8) != 2 || (~*v19 & 0x208) != 0)
    {
      v18 += 14;
      v19 += 18;
      if (!--v20)
      {
        goto LABEL_40;
      }
    }

    v17 = 1500 * *(v18 - 1) + 10799999 + *v18 / 1023 + 1;
LABEL_40:
    API_Get_UTC_Cor(1, v112);
    v21 = -0.5;
    if (v112[0] > 0.0)
    {
      v21 = 0.5;
    }

    v22 = v112[0] + v21;
    if (v112[0] + v21 <= 2147483650.0)
    {
      if (v22 >= -2147483650.0)
      {
        v23 = -1000 * v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 1000;
    }

    *(v3 + 2246) = ((v23 + v17) % 86400000) * 0.001;
    v16 = 3;
    v7[4] = 3;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_55;
  }

  if ((v3[2947] & 1) == 0)
  {
    v25 = v3 + 2;
    v26 = 128;
    do
    {
      if (*(v25 - 8) == 2)
      {
        *v25 &= ~0x200u;
      }

      v25 += 18;
      --v26;
    }

    while (v26);
LABEL_55:
    v24 = 1;
    goto LABEL_56;
  }

  v24 = 0;
LABEL_56:
  v27 = *v7;
  if (*v7 && (v7[1] & 1) != 0)
  {
    goto LABEL_71;
  }

  if (*(v7 + 22) == 1 && v16 >= 1 && *(v7 + 10))
  {
    *v111 = 0;
    v112[0] = 0.0;
    *v110 = 0;
    API_Get_UTC_Cor(1, v110);
    Glon_To_GPS_Time(*(v7 + 10), *(v7 + 12), *(v3 + 2246), *v110, &v111[1], v111, v112);
    v27 = *v7;
    if (*v7 <= 2)
    {
      v28 = v7[4];
      if (v27 < v28)
      {
        *(v3 + 2243) = v112[0];
        if (v28 >= 3)
        {
          v27 = 3;
        }

        else
        {
          v27 = v28;
        }

        *v7 = v27;
      }
    }

    v29 = LOWORD(v111[0]) + (LOWORD(v111[1]) << 10);
    if ((v7[1] & 1) == 0)
    {
      *(v7 + 3) = v29;
      *(v7 + 4) = 1;
      if (v27)
      {
        goto LABEL_71;
      }

      goto LABEL_92;
    }

    if (v29 != *(v7 + 3))
    {
      EvLog_v("GM_Cross_Constell: WeekNo Changing from %d to %d !!", *(v7 + 3), v29);
      *(v7 + 3) = v29;
      v27 = *v7;
    }
  }

  if (v27)
  {
LABEL_71:
    v30 = *(v3 + 2243) * 0.666666667;
    v31 = -0.5;
    if (v30 > 0.0)
    {
      v31 = 0.5;
    }

    v32 = v30 + v31;
    if (v32 <= 2147483650.0)
    {
      if (v32 >= -2147483650.0)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0x80000000;
      }
    }

    else
    {
      v33 = 0x7FFFFFFF;
    }

    v34 = (v3 + 1152);
    v35 = (v3 + 2);
    v36 = 128;
    do
    {
      if (*(v35 - 8) == 2 && (~*v35 & 0x208) == 0)
      {
        v37 = *v34;
        v38 = v33 - *v34;
        if (v38 >= 28800)
        {
          v39 = 28800;
        }

        else
        {
          v39 = v33 - *v34;
        }

        v40 = 57600 * ((v33 + 57599 - (v37 + v39)) / 0xE100u);
        v41 = v38 - v40;
        if (v41 <= -28800)
        {
          v41 = -28800;
        }

        v43 = v37 - v33 + v40 + v41;
        v42 = v43 == 0;
        v44 = v40 + v37;
        v45 = (v43 - (v43 != 0)) / 0xE100;
        if (!v42)
        {
          ++v45;
        }

        *v34 = v44 - 57600 * v45;
      }

      v34 += 14;
      v35 += 18;
      --v36;
    }

    while (v36);
    v46 = 0;
    goto LABEL_97;
  }

LABEL_92:
  v47 = v3 + 2;
  v48 = 128;
  do
  {
    if (*(v47 - 8) == 2)
    {
      *v47 &= ~0x200u;
    }

    v47 += 18;
    --v48;
  }

  while (v48);
  v46 = 1;
LABEL_97:
  v49 = 0;
  v50 = v24 | v46;
  if ((*(v2 + 8972) - 4) >= 3 && ((v4 ^ 1) & 1) == 0 && ((v24 | v46) & 1) == 0)
  {
    v107 = v7;
    v108 = v2;
    v109 = v6;
    v51 = v3;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    LODWORD(v112[0]) = -1000;
    v110[0] = -1000;
    v55 = v51 + 1153;
    v106 = v51;
    do
    {
      if (!*v51 || (~*(v51 + 4) & 0x208) != 0)
      {
        v57 = v54;
      }

      else
      {
        v56 = v53 + 1;
        if (*v51 == 2)
        {
          v57 = v54;
        }

        else
        {
          v57 = (v54 + 1);
        }

        if (*v51 == 2)
        {
          ++v53;
          v58 = v110;
        }

        else
        {
          v58 = v112;
        }

        if (*v51 == 2)
        {
          v59 = v56;
        }

        else
        {
          v59 = v54 + 1;
        }

        v60 = *v55 / 1023 + 1500 * *(v55 - 1);
        if (*v58 < 1)
        {
          goto LABEL_119;
        }

        v61 = *v58 - v60;
        if (v61 < 0)
        {
          v61 = v60 - *v58;
        }

        if (v61 < 0x1F5 || (v62 = Get_GNSS_SV_Str(*v51), EvLog_v("GLO_TIM:  %d  %s  %d  Bad ToT_ms  %d %d", v52, v62, *(v51 + 3), *v58, v60), v59 < 2))
        {
LABEL_119:
          *v58 = v60;
        }

        else
        {
          GNSS_SV_Str = Get_GNSS_SV_Str(*v51);
          EvLog_v("GLO_TIM:  %d  %s  %d  Ignoring ToT_ms", v52, GNSS_SV_Str, *(v51 + 3));
        }
      }

      ++v52;
      v51 += 9;
      v55 += 14;
      v54 = v57;
    }

    while (v52 != 128);
    if (SLODWORD(v112[0]) % 86400000 > v110[0] % 86400000)
    {
      v64 = 500;
    }

    else
    {
      v64 = -500;
    }

    v65 = v64 + SLODWORD(v112[0]) % 86400000 - v110[0] % 86400000;
    v66 = v65 / 1000;
    if (v65 / 1000 <= -43200)
    {
      v67 = -43200;
    }

    else
    {
      v67 = v65 / 1000;
    }

    if (v65 >= -43200999)
    {
      v68 = 0;
    }

    else
    {
      v68 = -1;
    }

    v69 = v65 < -43200999;
    v70 = (v68 - v66 + v67) / 0x15180u;
    if (v69)
    {
      ++v70;
    }

    v71 = 86400 * v70 + v66;
    if (v71 >= 43199)
    {
      v72 = 43199;
    }

    else
    {
      v72 = v71;
    }

    v73 = (v71 + 86399 - v72) % 0x15180u - (86399 - v72);
    if (v73 >= 0)
    {
      v74 = (v71 + 86399 - v72) % 0x15180u - (86399 - v72);
    }

    else
    {
      v74 = 86399 - v72 - (v71 + 86399 - v72) % 0x15180u;
    }

    if (v74 >= 0x20)
    {
      EvCrt_v("GM_Get_GPS_GLON_Int_Sec_Offset:  ERROR:  Offset  %d (%d - %d) way too big !", v73, SLODWORD(v112[0]) % 86400000, v110[0] % 86400000);
      if (v73 >= 127)
      {
        v75 = 127;
      }

      else
      {
        v75 = v73;
      }

      if (v75 <= -127)
      {
        LOBYTE(v73) = -127;
      }

      else
      {
        LOBYTE(v73) = v75;
      }
    }

    v76 = v73;
    if (v76 >= 0)
    {
      v77 = v73;
    }

    else
    {
      v77 = -v76;
    }

    v2 = v108;
    v6 = v109;
    v3 = v106;
    v7 = v107;
    if (v77 >= 0x21)
    {
      v78 = "GLO_TIM: Rejecting Bad (GPS-UTC) integer second offset %d ";
LABEL_153:
      EvLog_d(v78, v76);
      v49 = 0;
      goto LABEL_154;
    }

    if (!v73)
    {
      *(v108 + 8972) = 2;
      v76 = *(v109 + 794);
      v78 = "GLO_TIM: Verifying (GPS-UTC) dtLS ";
      goto LABEL_153;
    }

    v79 = *(v109 + 794) + v73;
    *(v109 + 794) = v79;
    *(v109 + 797) = v79;
    *(v108 + 8972) = 2;
    EvLog_d("GLO_TIM: Updating (GPS-UTC) dtLS ", v79);
    v49 = 1;
  }

LABEL_154:
  v80 = v7[4];
  v81 = *v7;
  if (v80 > *v7 && ((*(v7 + 22) | v4) & 1) != 0)
  {
    v110[0] = 0;
    v111[1] = 0;
    v112[0] = 0.0;
    API_Get_UTC_Cor(1, v112);
    Glon_To_GPS_Time(*(v7 + 10), *(v7 + 12), *(v3 + 2246), v112[0], v110, &v111[1], v3 + 2243);
    if (*(v7 + 22))
    {
      v83 = LOWORD(v111[1]) + (LOWORD(v110[0]) << 10);
      if (v7[1])
      {
        if (v83 != *(v7 + 3))
        {
          EvLog_v("GM_Cross_Constell: WeekNo Changing from %d to %d !!", *(v7 + 3), v83);
          *(v7 + 3) = v83;
        }
      }

      else
      {
        *(v7 + 3) = v83;
        *(v7 + 4) = 1;
      }
    }

    else
    {
      v84 = v3 + 1153;
      v85 = (v3 + 2);
      v86 = 128;
      while ((*(v85 - 8) | 2) == 2 || (~*v85 & 0x208) != 0)
      {
        v84 += 14;
        v85 += 18;
        if (!--v86)
        {
          v87 = 0.0;
          goto LABEL_167;
        }
      }

      v87 = (*v84 / 1023 + 1500 * *(v84 - 1)) * 0.001;
LABEL_167:
      v88 = *(v3 + 2243);
      if (v88 - v87 >= 43200.0)
      {
        do
        {
          v88 = v88 + -86400.0;
        }

        while (v88 - v87 >= 43200.0);
        *(v3 + 2243) = v88;
      }

      if (v87 - v88 >= 43200.0)
      {
        do
        {
          v88 = v88 + 86400.0;
        }

        while (v87 - v88 >= 43200.0);
        *(v3 + 2243) = v88;
      }

      EvLog_nd("GLO_TIM: Setting day number ", 2, v82, v88, *&v87);
    }

    v81 = *v7;
    v80 = v7[4];
    *v7 = v80;
    v89 = v80;
    if (v80 >= 5)
    {
      v89 = v80;
      if ((((*(v2 + 8972) - 2) < 5) & v4) == 0)
      {
        if (v81 <= 4)
        {
          v89 = 4;
        }

        else
        {
          v89 = v81;
        }

        *v7 = v89;
      }
    }

    if (v89 != v81)
    {
      EvLog_v("GLO_TIM: Glo->GPS Time transfer:  %d -> %d", v80, v89);
      v81 = *v7;
      v80 = v7[4];
    }
  }

  if (v81 > v80)
  {
    v110[0] = 0;
    v111[1] = 0;
    v112[0] = 0.0;
    API_Get_UTC_Cor(1, v112);
    GPS_To_Glon_Time(0, *(v7 + 3), *(v3 + 2243), v112[0], v110, &v111[1], v3 + 2246);
    v91 = *v7;
    v7[4] = v91;
    if (v91 < 5)
    {
      goto LABEL_188;
    }

    v92 = v50 ^ 1;
    if ((*(v2 + 8972) - 7) <= 0xFFFFFFFA)
    {
      v92 = 0;
    }

    if (v92)
    {
LABEL_188:
      EvLog_nd("GLO_TIM: GPS->Glo Time transfer", 2, v90, v91, v91);
    }

    else
    {
      v7[4] = 4;
    }

    if (*(v7 + 4) == 1)
    {
      v93 = *(v7 + 3);
      if (v93 >= 1025)
      {
        v94 = v111[1];
        if (*(v7 + 22) != 1 || v111[1] != *(v7 + 12))
        {
          v95 = v110[0];
          *(v7 + 10) = v110[0];
          *(v7 + 12) = v94;
          *(v7 + 22) = 1;
          EvLog_nd("GLO_TIM: GPS->Glo Date transfer", 2, v90, v93, v95, v94);
        }
      }
    }
  }

  if (v49)
  {
    v96 = (v2 + 8968);
    v97 = *(p_api + 48);
    if (*(v97 + 16) == 1 && *v97 >= 3)
    {
      v98 = *(v97 + 40) + 604800 * *(v97 + 32);
    }

    else
    {
      v98 = 0;
    }

    v99 = 0;
    LODWORD(v100) = 0;
    *v96 = v98;
    v101 = p_NV;
    v102 = p_NV + 168;
    v103 = *(v2 + 8984);
    *(p_NV + 168) = *v96;
    *(v101 + 184) = v103;
    v104 = 55665;
    do
    {
      v105 = *(v102 + v99) ^ BYTE1(v104);
      v104 = 52845 * (v104 + v105) + 22719;
      v100 = (v100 + v105);
      ++v99;
    }

    while (v99 != 24);
    *(v101 + 160) = v100;
    EvLog_v("GM_Cross_Constell: Saving Estimated (GPS-UTC) LeapSec %d to NV_Store", *(v6 + 794));
  }
}

char **GNSS_Event_Log_Ctl(char **result)
{
  if (result)
  {
    if (g_Logging_Cfg)
    {
      v1 = result;
      **result = 0;
      v3 = *result;
      v2 = result[1];
      if (v2 != *result)
      {
        v4 = *result;
        if (v2 > *result)
        {
          v4 = result[3];
        }

        v5 = v4 - v2;
        if (v4 == v2)
        {
          if (v2 < result[3])
          {
            goto LABEL_13;
          }

          v2 = result[2];
          result[1] = v2;
        }

        else
        {
          result = GN_GPS_Write_Event_Log((v4 - v2), v2);
          v2 = &v1[1][result];
          v1[1] = v2;
          if (v2 < v1[3])
          {
            goto LABEL_13;
          }

          v2 = v1[2];
          v1[1] = v2;
          if (result != v5)
          {
            goto LABEL_13;
          }

          v3 = *v1;
        }

        result = GN_GPS_Write_Event_Log((v3 - v2), v2);
        v2 = &v1[1][result];
        v1[1] = v2;
LABEL_13:
        if (v2 == *v1)
        {
          v6 = v1[2];
          *v1 = v6;
          v1[1] = v6;
        }
      }
    }
  }

  return result;
}

const double *ud2cov(const double *a1, double *a2, unsigned int a3)
{
  v4 = *a1;
  result = a1 - 1;
  *a2 = v4;
  v5 = a2 - 1;
  if (a3 >= 2)
  {
    if (a3 + 1 > 3)
    {
      v6 = a3 + 1;
    }

    else
    {
      v6 = 3;
    }

    v7 = 1;
    v8 = 2;
    v9 = 2;
    v10 = 1;
    do
    {
      v11 = 0;
      v12 = v10 + v9;
      v13 = result[(v10 + v9)];
      v5[(v10 + v9)] = v13;
      v14 = v8;
      v15 = v7;
      v16 = 1;
      do
      {
        v11 += v16;
        v17 = v13 * result[(v10 + v16)];
        v18 = v14;
        v19 = v16;
        v20 = v15;
        v21 = v11;
        do
        {
          v5[v21] = v5[v21] + v17 * result[v18];
          v21 += v19++;
          ++v18;
          --v20;
        }

        while (v20);
        v5[(v10 + v16++)] = v17;
        --v15;
        ++v14;
      }

      while (v16 != v9);
      v8 += v9;
      ++v7;
      ++v9;
      v10 = v12;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t DOP4_Upd_U_Meas(uint64_t result, double (*a2)[4])
{
  v2 = 0;
  v18[4] = *MEMORY[0x29EDCA608];
  v3 = a2;
  do
  {
    v4 = 0;
    v5 = (*a2)[v2 + 12];
    v6 = v3;
    do
    {
      v7 = *v6;
      v6 += 4;
      v5 = v5 + *(result + v4) * v7;
      v4 += 8;
    }

    while (v4 != 24);
    v18[v2++] = v5;
    v3 = (v3 + 8);
  }

  while (v2 != 4);
  v8 = 0;
  v9 = v18[3];
  do
  {
    v9 = v9 + v18[v8] * *(result + v8 * 8);
    ++v8;
  }

  while (v8 != 3);
  v10 = 0;
  v11 = a2;
  v12 = a2;
  v13 = -1.0 / (v9 + 1.0);
  do
  {
    v14 = v18[v10];
    (*a2)[4 * v10 + v10] = (*a2)[4 * v10 + v10] + v13 * v14 * v14;
    if (v10)
    {
      v15 = 0;
      v16 = v12;
      do
      {
        v17 = (*v11)[v15] + v13 * v14 * v18[v15];
        (*v11)[v15] = v17;
        *v16 = v17;
        v16 += 4;
        ++v15;
      }

      while (v10 != v15);
    }

    ++v10;
    v12 = (v12 + 8);
    ++v11;
  }

  while (v10 != 4);
  return result;
}

BOOL DOP4_Upd_W_Meas(double *a1, double a2, double (*a3)[4])
{
  v4 = 0;
  v23[5] = *MEMORY[0x29EDCA608];
  v5 = a3;
  do
  {
    v6 = 0;
    v7 = (*a3)[v4 + 12];
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 4;
      v7 = v7 + a1[v6++] * v9;
    }

    while (v6 != 3);
    v23[++v4] = v7;
    v5 = (v5 + 8);
  }

  while (v4 != 4);
  v10 = 0;
  v11 = v23[4];
  do
  {
    v11 = v11 + v23[v10 + 1] * a1[v10];
    ++v10;
  }

  while (v10 != 3);
  v12 = v11 + a2;
  v23[0] = v11 + a2;
  v22 = 0.0;
  result = R8_EQ(v23, &v22);
  v14 = 0;
  v15 = -1.0 / v12;
  if (result)
  {
    v15 = -0.0;
  }

  v16 = a3;
  v17 = a3;
  do
  {
    v18 = v23[v14 + 1];
    (*a3)[4 * v14 + v14] = (*a3)[4 * v14 + v14] + v15 * v18 * v18;
    if (v14)
    {
      v19 = 0;
      v20 = v17;
      do
      {
        v21 = (*v16)[v19] + v15 * v18 * v23[v19 + 1];
        (*v16)[v19] = v21;
        *v20 = v21;
        v20 += 4;
        ++v19;
      }

      while (v14 != v19);
    }

    ++v14;
    v17 = (v17 + 8);
    ++v16;
  }

  while (v14 != 4);
  return result;
}

uint64_t DOP4_Upd_U_Elem(uint64_t result, double (*a2)[4])
{
  v2 = 0;
  v13[4] = *MEMORY[0x29EDCA608];
  v3 = &(*a2)[result + 4];
  do
  {
    *&v4 = *(v3 - 4);
    *(&v4 + 1) = *v3;
    *&v13[v2] = v4;
    v3 += 8;
    v2 += 2;
  }

  while (v2 != 4);
  v5 = 0;
  v6 = -1.0 / ((*a2)[4 * result + result] + 1.0);
  v7 = a2;
  v8 = a2;
  do
  {
    v9 = v13[v5];
    (*a2)[4 * v5 + v5] = (*a2)[4 * v5 + v5] + v6 * v9 * v9;
    if (v5)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = (*v7)[v10] + v6 * v9 * v13[v10];
        (*v7)[v10] = v12;
        *v11 = v12;
        v11 += 4;
        ++v10;
      }

      while (v5 != v10);
    }

    ++v5;
    v8 = (v8 + 8);
    ++v7;
  }

  while (v5 != 4);
  return result;
}

double *DOP4_Calc_U(double *result, double *a2)
{
  v2 = 0.0;
  v3 = 0.0;
  if (*result > 0.0)
  {
    v3 = sqrt(*result);
    if (v3 > 99.99)
    {
      v3 = 99.99;
    }
  }

  *a2 = v3;
  v4 = result[5];
  if (v4 > 0.0)
  {
    v2 = sqrt(v4);
    if (v2 > 99.99)
    {
      v2 = 99.99;
    }
  }

  a2[1] = v2;
  v5 = *result + result[5];
  v6 = 0.0;
  v7 = 0.0;
  if (v5 > 0.0)
  {
    v7 = sqrt(v5);
    if (v7 > 99.99)
    {
      v7 = 99.99;
    }
  }

  a2[2] = v7;
  v8 = result[10];
  if (v8 > 0.0)
  {
    v6 = sqrt(v8);
    if (v6 > 99.99)
    {
      v6 = 99.99;
    }
  }

  a2[3] = v6;
  v9 = *result + result[5] + result[10];
  v10 = 0.0;
  v11 = 0.0;
  if (v9 > 0.0)
  {
    v11 = sqrt(v9);
    if (v11 > 99.99)
    {
      v11 = 99.99;
    }
  }

  a2[4] = v11;
  v12 = *result + result[5] + result[10] + result[15];
  if (v12 > 0.0)
  {
    v10 = sqrt(v12);
    if (v10 > 99.99)
    {
      v10 = 99.99;
    }
  }

  a2[6] = v10;
  v13 = result[15];
  v14 = 0.0;
  if (v13 > 0.0)
  {
    v14 = sqrt(v13);
    if (v14 > 99.99)
    {
      v14 = 99.99;
    }
  }

  a2[5] = v14;
  return result;
}

uint64_t NK_SV_Res_RTests(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = *MEMORY[0x29EDCA608];
  if (*(a2 + 241))
  {
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v94 = 0u;
  v95 = 0u;
  v73 = (a3 + 36579);
  v92 = 0u;
  v93 = 0u;
  v74 = (a3 + 21675);
  v78 = (a3 + 6771);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  memset(v84, 0, sizeof(v84));
  memset(v83, 0, sizeof(v83));
  v10 = (a3 + 7080);
  v11 = 12072;
  v80 = a3 + 12072;
  v12 = result + 736;
  v13 = 7984;
  memset(v82, 0, sizeof(v82));
  do
  {
    *(v84 + v6) = 0x7FFFFFFF;
    *(v83 + v6) = 0x7FFFFFFF;
    *(v82 + v6) = 0x7FFFFFFF;
    if (*(v10 + v6) == 1)
    {
      *(&v88 + v6) = 1;
      v14 = *(a3 + v11);
      v15 = v14 >= 0 ? v14 : -v14;
      *(v84 + v6) = v15;
      v16 = v14 * v14;
      v17 = *(a3 + v11 + 6400);
      if (v16 / v17 >= 2147483650.0)
      {
        v19 = 0;
      }

      else
      {
        v18 = (v16 / v17);
        *(v83 + v6) = v18;
        v19 = v18 < 9;
      }

      v20 = v16 / (v17 - *(a3 + v13));
      if (v20 >= 2147483650.0)
      {
        v21 = 0;
      }

      else
      {
        *(v82 + v6) = v20;
        v21 = v20 < 9;
      }

      if (*(a3 + v6 + 57) == 1)
      {
        if (v15 > 0x3E7)
        {
          if (v15 > 0xBB7)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(v87 + v6) = 1;
          v22 = *(v12 + v6);
          if (v22 == 255 || (*(v87 + v22) & 1) == 0)
          {
            ++v7;
          }
        }

        if (v19)
        {
          *(v86 + v6) = 1;
          v23 = *(v12 + v6);
          if (v23 == 255 || (*(v86 + v23) & 1) == 0)
          {
            ++v8;
          }
        }

        if (v21)
        {
          *(v85 + v6) = 1;
          v24 = *(v12 + v6);
          if (v24 == 255 || (*(v85 + v24) & 1) == 0)
          {
            ++v9;
          }
        }
      }
    }

LABEL_27:
    ++v6;
    v13 += 24;
    v11 += 8;
  }

  while (v6 != 128);
  memset(v81, 0, sizeof(v81));
  if (v7 <= 0)
  {
    v50 = 0;
    v51.i64[0] = 0xC0000000C0000000;
    v51.i64[1] = 0xC0000000C0000000;
    v52.i64[0] = 0xC0000000C0000000;
    v52.i64[1] = 0xC0000000C0000000;
    v53 = v84;
    v54.i64[0] = 0xC0000000C0000000;
    v54.i64[1] = 0xC0000000C0000000;
    v55.i64[0] = 0xC0000000C0000000;
    v55.i64[1] = 0xC0000000C0000000;
    v56.i64[0] = 0xC0000000C0000000;
    v56.i64[1] = 0xC0000000C0000000;
    v57.i64[0] = 0xC0000000C0000000;
    v57.i64[1] = 0xC0000000C0000000;
    v58.i64[0] = 0xC0000000C0000000;
    v58.i64[1] = 0xC0000000C0000000;
    v59.i64[0] = 0xC0000000C0000000;
    v59.i64[1] = 0xC0000000C0000000;
    do
    {
      v60 = *(&v88 + v50);
      v61 = v53[1];
      v63 = v53[2];
      v62 = v53[3];
      v64 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v60.i8, *v51.i8)), 0x1FuLL));
      v57 = vbslq_s8(v64, vmaxq_s32(v61, v57), v57);
      v65 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v60.i8, *v51.i8)), 0x1FuLL));
      v51 = vbslq_s8(v65, vmaxq_s32(*v53, v51), v51);
      v60.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
      v66 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v60.i8, *v51.i8)), 0x1FuLL));
      v59 = vbslq_s8(v66, vmaxq_s32(v62, v59), v59);
      v67 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v60.i8, *v51.i8)), 0x1FuLL));
      v58 = vbslq_s8(v67, vmaxq_s32(v63, v58), v58);
      v54 = vbslq_s8(v64, vminq_s32(v61, v54), v54);
      v52 = vbslq_s8(v65, vminq_s32(*v53, v52), v52);
      v56 = vbslq_s8(v66, vminq_s32(v62, v56), v56);
      v55 = vbslq_s8(v67, vminq_s32(v63, v55), v55);
      v50 += 16;
      v53 += 4;
    }

    while (v50 != 128);
    if (vmaxvq_s32(vmaxq_s32(vmaxq_s32(v51, v58), vmaxq_s32(v57, v59))) - vminvq_s32(vminq_s32(vminq_s32(v52, v55), vminq_s32(v54, v56))) > 250000)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      if (*(&v88 + v25) == 1)
      {
        v27 = *(v84 + v25);
        v28 = v7 <= 2 || v27 <= 50000;
        v29 = !v28;
        if (v27 > 250000 || v29 || v7 >= 4 && (v27 > 30000 || v7 != 4 && (v27 > 20000 || v7 >= 6 && (v7 != 6 ? (v31 = v27 <= 10000) : (v31 = 1), v31 ? (v32 = 0) : (v32 = 1), v27 > 15000 || v32))))
        {
          *(v81 + v25) = 1;
          v30 = *(v12 + v25);
          if (v30 == 255 || (*(v81 + v30) & 1) == 0)
          {
            ++v26;
          }

          *(&v88 + v25) = 0;
        }
      }

      ++v25;
    }

    while (v25 != 128);
    if (v26 >= 1 && v7 < v26 + 3)
    {
LABEL_61:
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
    }
  }

  v79 = result;
  v72 = v9;
  v71 = v7;
  if (v8 >= 7)
  {
    if (*(a3 + 20) <= 7)
    {
      goto LABEL_81;
    }

LABEL_67:
    v33 = 0;
    while (2)
    {
      if (*(&v88 + v33) == 1)
      {
        v34 = *(v80 + 8 * v33);
        if (v34 < -35.0 || v34 > 350.0)
        {
          v35 = *(v83 + v33);
          v36 = *(v82 + v33);
          if (v35 > 80 || v36 > 255)
          {
LABEL_79:
            *(&v88 + v33) = 0;
            GNSS_SV_Str = Get_GNSS_SV_Str(*(result + 4 * v33 + 96));
            EvCrt_v("NK_SV_Res_RTests:  %d  %s  Reasonableness Fail, PR Ratios  T %d  xS %d", v33, GNSS_SV_Str, v35, v36);
            result = v79;
          }

          else if (v72 < 5 || v35 < 36)
          {
            if (v35 >= 16)
            {
              goto LABEL_78;
            }
          }

          else
          {
            if ((*(a3 + v33 + 2010) & 1) == 0)
            {
              goto LABEL_79;
            }

LABEL_78:
            if (*(result + v33 + 1760) - 1 <= *(result + v33 + 2016))
            {
              goto LABEL_79;
            }
          }
        }
      }

      if (++v33 == 128)
      {
        goto LABEL_81;
      }

      continue;
    }
  }

  if (v8 == 6 && *(a3 + 20) >= 9)
  {
    goto LABEL_67;
  }

LABEL_81:
  v38 = 0;
  v39 = (a3 + 21984);
  v40 = v74 + 565;
  v41 = (a3 + 36888);
  v76 = a2 + 14208;
  v75 = a4 + 576;
  do
  {
    if (*(v10 + v38) == 1 && (*(&v88 + v38) & 1) == 0)
    {
      *(v10 + v38) = 0;
      *(a3 + 7336 + 4 * v38) = 16;
      --*v78;
      ++v78[1];
      v42 = *(v39 + v38);
      if (v42 == 1)
      {
        *(v39 + v38) = 0;
        *v40 = 16;
        --*v74;
        ++v74[1];
      }

      if (*(v41 + v38) == 1)
      {
        *(v41 + v38) = 0;
        v40[3726] = 16;
        --*v73;
        ++v73[1];
      }

      v43 = result + v38;
      if (*(result + v38 + 2016) >= *(result + v38 + 1760))
      {
        *(v76 + v38) = 0;
        if (v42)
        {
          v44 = 13;
        }

        else
        {
          v44 = 9;
        }

        *(a4 + v38 + 448) = v44;
        *(v75 + 4 * v38) = *a3;
        v45 = Get_GNSS_SV_Str(*(result + 4 * v38 + 96));
        EvCrt_v("ChanReset %d : NKSVRT3  %s  JNR %d >= SNR %d   PR_Res %d   DO_Res %d", v38, v45, *(v43 + 2016), *(v43 + 1760), *(v10 + v38), *(v39 + v38));
        v41 = (a3 + 36888);
        result = v79;
      }

      if (fabs(*(v80 + 8 * v38)) > 150000.0 && (~*(result + 2 * v38 + 992) & 0x300) == 0)
      {
        *(v76 + v38) = 0;
        *(a4 + v38 + 448) = 11;
        *(v75 + 4 * v38) = *a3;
        v46 = Get_GNSS_SV_Str(*(result + 4 * v38 + 96));
        EvCrt_v("ChanReset %d : NKSVRT4  %s  Exact_SF_Sync  Int_PR_Res %d ms   Num_Fit %d %d", v38, v46, *(v84 + v38), v8, v72);
        v41 = (a3 + 36888);
        result = v79;
      }
    }

    ++v38;
    ++v40;
  }

  while (v38 != 128);
  if ((*(a2 + 241) & 1) == 0 && *(a2 + 27120) <= *(a2 + 16) && *(a3 + 1872) == 1)
  {
    v47 = *(a2 + 148);
    if (v47 >= *(a2 + 152))
    {
      v47 = *(a2 + 152);
    }

    if (v47 >= *(a2 + 156))
    {
      v47 = *(a2 + 156);
    }

    if (v47 >= 0xB)
    {
      if (v71 >= 3 && v72 >= 3)
      {
        if (v72 <= 5)
        {
          if (v72 == 5)
          {
            v48 = 3;
            v49 = 16;
          }

          else
          {
            if (v72 <= 3)
            {
              v49 = 25;
            }

            else
            {
              v49 = 20;
            }

            if (v72 > 3)
            {
              v48 = 4;
            }

            else
            {
              v48 = 5;
            }
          }
        }

        else
        {
          v48 = 2;
          v49 = 13;
        }

        for (i = 0; i != 128; ++i)
        {
          if (*(v10 + i) == 1 && *(v82 + i) > v49 && *(v83 + i) > v48 && (*(a3 + i + 2010) & 1) == 0)
          {
            v69 = *(v80 + 8 * i);
            if (v69 < -35.0 || v69 > 350.0)
            {
              *(v10 + i) = 0;
              *(v10 + i + 64) = 17;
              --*v78;
              ++v78[1];
            }
          }
        }
      }

      if (*v78 <= 3u && (*(a2 + 241) & 1) == 0)
      {
        v70 = 0;
        while (*(v10 + v70) != 1 || (*(a3 + 2010 + v70) & 1) != 0 || *(result + 2400 + 2 * v70) > 0x7CFu || *(v83 + v70) <= 36 && *(v82 + v70) < 401)
        {
          if (++v70 == 128)
          {
            return result;
          }
        }

        v10[6] = 0u;
        v10[7] = 0u;
        v10[4] = 0u;
        v10[5] = 0u;
        v10[2] = 0u;
        v10[3] = 0u;
        *v10 = 0u;
        v10[1] = 0u;
        *v39 = 0u;
        *(a3 + 22000) = 0u;
        *(a3 + 22016) = 0u;
        *(a3 + 22032) = 0u;
        *(a3 + 22048) = 0u;
        *(a3 + 22064) = 0u;
        *(a3 + 22080) = 0u;
        *(a3 + 22096) = 0u;
        *v41 = 0u;
        v41[1] = 0u;
        v41[2] = 0u;
        v41[3] = 0u;
        v41[4] = 0u;
        v41[5] = 0u;
        v41[6] = 0u;
        v41[7] = 0u;
        *v78 = 0;
        *v74 = 0;
        *v73 = 0;
      }
    }
  }

  return result;
}

BOOL NK_SV_Res_RTests_Riskier_SVs(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = (a2 + 36579);
  v4 = (a2 + 21675);
  v27 = (a2 + 6771);
  if (*(a2 + 1868) >= 3 && *(a2 + 62024) <= 100.0 && *(a2 + 62040) <= 100.0)
  {
    v12 = 0;
    v13 = 36888;
    v25 = a2 + 36888;
    v14 = 22240;
    v15 = 21984;
    v16 = 7336;
    v17 = 12072;
    for (i = 7080; ; ++i)
    {
      v19 = v2;
      v20 = v4;
      v21 = v3;
      v22 = a2;
      result = NK_Is_Riskier_SV(v12, v19);
      a2 = v22;
      v3 = v21;
      v4 = v20;
      if (result)
      {
        if (*(a2 + i) == 1 && (v23 = *(a2 + v17 + 6400), v23 > 0.0) && *(a2 + v12 + 57) == 1)
        {
          if (*(a2 + v17) * *(a2 + v17) / fmin(v23, 10000.0) <= 9.0)
          {
            goto LABEL_29;
          }

          *(a2 + i) = 0;
          *(a2 + v16) = 16;
          --*v27;
          ++v27[1];
          if (*(a2 + v15) == 1)
          {
            *(a2 + v15) = 0;
            *(a2 + v14) = 16;
            --*v20;
            ++v20[1];
          }

          if ((*(a2 + v13) & 1) == 0)
          {
            goto LABEL_29;
          }

          v24 = (v25 + v12);
        }

        else
        {
          if (*(a2 + v12 + 57))
          {
            goto LABEL_29;
          }

          if (*(a2 + v15) == 1)
          {
            *(a2 + v15) = 0;
            *(a2 + v14) = 16;
            --*v20;
            ++v20[1];
          }

          v24 = (a2 + v13);
          if (*(a2 + v13) != 1)
          {
            goto LABEL_29;
          }
        }

        *v24 = 0;
        *(a2 + v14 + 14904) = 16;
        --*v3;
        ++v3[1];
      }

LABEL_29:
      ++v12;
      ++v13;
      v14 += 4;
      ++v15;
      v16 += 4;
      v17 += 8;
      v2 = a1;
      if (v12 == 128)
      {
        return result;
      }
    }
  }

  v5 = 0;
  v6 = a2 + 7080;
  v7 = a2 + 7336;
  v8 = a2 + 21984;
  v9 = (a2 + 22240);
  v10 = a2 + 36888;
  do
  {
    result = NK_Is_Riskier_SV(v5, v2);
    if (result)
    {
      if (*(v6 + v5) == 1)
      {
        *(v6 + v5) = 0;
        *(v7 + 4 * v5) = 20;
        --*v27;
        ++v27[1];
      }

      if (*(v8 + v5) == 1)
      {
        *(v8 + v5) = 0;
        *v9 = 20;
        --*v4;
        ++v4[1];
      }

      if (*(v10 + v5) == 1)
      {
        *(v10 + v5) = 0;
        v9[3726] = 20;
        --*v3;
        ++v3[1];
      }
    }

    ++v5;
    ++v9;
  }

  while (v5 != 128);
  return result;
}

BOOL NK_Is_Riskier_SV(int a1, uint64_t a2)
{
  v2 = a2 + 4 * a1;
  v5 = *(v2 + 96);
  v3 = v2 + 96;
  v4 = v5;
  result = 0;
  if (v5)
  {
    if (v4 == 3)
    {
      v6 = *(v3 + 2);
      if (v6 == 14 || v6 == 18)
      {
        return 1;
      }
    }

    if (!*(v3 + 1) && *(a2 + 4 * a1 + 1248) >= 10 && *(a2 + a1 + 1760) + 20 <= *(a2 + 92) && fabs(*(a2 + 8 * a1 + 4448)) <= 38.0587346)
    {
      return 1;
    }
  }

  return result;
}