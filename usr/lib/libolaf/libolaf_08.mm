uint64_t PP_Acq_Ass_Replace_AA(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 300) & 0x80000000) != 0)
  {
    return 0;
  }

  *&__src[352] = -1;
  v40 = (a3 + 4096);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *&__src[320] = v8;
  *&__src[336] = v8;
  *&__src[288] = v8;
  *&__src[304] = v8;
  *&__src[256] = v8;
  *&__src[272] = v8;
  *&__src[224] = v8;
  *&__src[240] = v8;
  *&__src[192] = v8;
  *&__src[208] = v8;
  *&__src[160] = v8;
  *&__src[176] = v8;
  *&__src[128] = v8;
  *&__src[144] = v8;
  *&__src[96] = v8;
  *&__src[112] = v8;
  *&__src[64] = v8;
  *&__src[80] = v8;
  *&__src[32] = v8;
  *&__src[48] = v8;
  *__src = v8;
  *&__src[16] = v8;
  LODWORD(v45[22]) = -1;
  v45[20] = v8;
  v45[21] = v8;
  v45[18] = v8;
  v45[19] = v8;
  v45[16] = v8;
  v45[17] = v8;
  v45[14] = v8;
  v45[15] = v8;
  v45[12] = v8;
  v45[13] = v8;
  v45[10] = v8;
  v45[11] = v8;
  v45[8] = v8;
  v45[9] = v8;
  v45[6] = v8;
  v45[7] = v8;
  v45[4] = v8;
  v45[5] = v8;
  v45[2] = v8;
  v45[3] = v8;
  v45[0] = v8;
  v45[1] = v8;
  memset_pattern16(__b, &unk_299728F40, 0x2C8uLL);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v10 = 0;
  v11 = a1 + 308;
  v12 = 82;
  do
  {
    if (*(v11 + 6) && *v11 == 1)
    {
      v13 = GNSS_Id_To_Num_Prn_Idx(*(v11 + 4));
      __b[v13] = 1;
      *&__src[2 * v10] = v13 + 1;
      v10 = (v10 + 1);
      v14 = *(v11 + 4);
      if (v14 <= 2)
      {
        if (!*(v11 + 4))
        {
          goto LABEL_20;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            ++HIDWORD(v42);
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        LODWORD(v42) = v42 + 1;
      }

      else if (*(v11 + 4) > 4u)
      {
        if (v14 != 5)
        {
          if (v14 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        LODWORD(v43) = v43 + 1;
      }

      else
      {
        if (v14 != 3)
        {
          if (v14 == 4)
          {
            ++HIDWORD(v43);
            goto LABEL_20;
          }

LABEL_16:
          EvCrt_Illegal_Default("PP_Acq_Ass_Replace_AA", 677);
          goto LABEL_20;
        }

        ++v41;
      }
    }

LABEL_20:
    v11 += 48;
    --v12;
  }

  while (v12);
  if (*(a3 + 48))
  {
    v15 = 1;
  }

  else
  {
    v15 = v10 > 7;
  }

  if (!v15)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      Constell_Prn = Get_Constell_Prn(v16);
      if (Constell_Prn <= 2)
      {
        if (Constell_Prn)
        {
          if (Constell_Prn == 1)
          {
            if (v42 && (a2[31] & 1) != 0)
            {
              goto LABEL_47;
            }
          }

          else if (HIDWORD(v42) && (a2[32] & 1) != 0)
          {
LABEL_47:
            if (__b[v16] == 2)
            {
              __b[v16] = 0;
              *(v45 + v17++) = v16 + 1;
            }
          }
        }
      }

      else if (Constell_Prn > 4)
      {
        if (Constell_Prn == 5 && v43 && (a2[33] & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (Constell_Prn == 3)
      {
        if (v41 && (a2[36] & 1) != 0)
        {
          goto LABEL_47;
        }
      }

      else if (HIDWORD(v43) && (a2[35] & 1) != 0)
      {
        goto LABEL_47;
      }

      if (++v16 == 178)
      {
        goto LABEL_50;
      }
    }
  }

  LOBYTE(v17) = 0;
LABEL_50:
  EvLog_nd("PP_Acq_Ass_Replace_AA: ", 4, v9, *(a1 + 300), v10, *(a1 + 4952), *(a1 + 4956));
  if (!v10)
  {
    return 0;
  }

  memcpy((a3 + 60), (a1 + 304), 0xF60uLL);
  v19 = (a3 + 70);
  v20 = 82;
  do
  {
    if (*(v19 - 2) == 2)
    {
      if (*v19)
      {
        *v19 = *(*(a3 + 6216) + 4 * (*v19 - 1));
      }
    }

    v19 += 48;
    --v20;
  }

  while (v20);
  v21 = *(a1 + 4240);
  v22 = *(a1 + 4256);
  v23 = *(a1 + 4288);
  *(a3 + 4028) = *(a1 + 4272);
  *(a3 + 4044) = v23;
  *(a3 + 3996) = v21;
  *(a3 + 4012) = v22;
  v24 = *(a1 + 4304);
  v25 = *(a1 + 4320);
  v26 = *(a1 + 4352);
  *(a3 + 4092) = *(a1 + 4336);
  *(a3 + 4108) = v26;
  *(a3 + 4060) = v24;
  *(a3 + 4076) = v25;
  v27 = *(a1 + 4368);
  v28 = *(a1 + 4384);
  v29 = *(a1 + 4400);
  *(a3 + 4172) = *(a1 + 4416);
  *(a3 + 4140) = v28;
  *(a3 + 4156) = v29;
  *(a3 + 4124) = v27;
  memcpy((a3 + 5420), __b, 0x2C8uLL);
  memcpy((a3 + 4174), __src, 0x164uLL);
  memcpy((a3 + 4530), v45, 0x164uLL);
  v40[2036] = v10;
  v40[2037] = v17;
  v40[2038] = -78 - (v17 + v10);
  v40[2039] = 0;
  *(a3 + 6360) = *(a1 + 4952);
  v30 = *(a1 + 4466);
  v32 = *(a1 + 4418);
  v31 = *(a1 + 4434);
  *(a4 + 32) = *(a1 + 4450);
  *(a4 + 48) = v30;
  *a4 = v32;
  *(a4 + 16) = v31;
  v33 = *(a1 + 4530);
  v35 = *(a1 + 4482);
  v34 = *(a1 + 4498);
  *(a4 + 96) = *(a1 + 4514);
  *(a4 + 112) = v33;
  *(a4 + 64) = v35;
  *(a4 + 80) = v34;
  v37 = *(a1 + 4562);
  v36 = *(a1 + 4578);
  v38 = *(a1 + 4546);
  *(a4 + 176) = *(a1 + 4594);
  *(a4 + 144) = v37;
  *(a4 + 160) = v36;
  *(a4 + 128) = v38;
  memcpy((a4 + 178), (a1 + 4596), 0x164uLL);
  *(a4 + 534) = v10;
  result = 1;
  *(a4 + 535) = 1;
  return result;
}

uint64_t PP_Acq_Ass_Merge_AA(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 300);
  if ((v7 & 0x80000000) != 0)
  {
    return 0;
  }

  v8 = a3;
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  v90 = (a2 + 4096);
  if (!*(a2 + 6132))
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  a3 = v92;
  a4 = 1;
  a5 = 4294200046;
  a6 = 4293432796;
  a7 = 767250;
  v14 = 2130706432;
  do
  {
    v15 = *(a2 + 3996 + v10);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = a2 + 60 + 48 * *(a2 + 3996 + v10);
      if (*(v16 + 8))
      {
        if (*(v16 + 4) == 1)
        {
          *(v92 + v15) = 1;
          if ((*(a1 + 4240 + v10) & 0x8000000000000000) == 0)
          {
            v17 = a1 + 304 + 48 * *(a1 + 4240 + v10);
            if (*(v17 + 8))
            {
              if (*(v17 + 4) == 1)
              {
                v18 = vsub_s32(*(v17 + 28), *(v16 + 28));
                LODWORD(v19) = v18.i32[1] + 1534500 * v18.i32[0];
                if (v19 < -767250)
                {
                  LODWORD(v19) = v19 + 1534500;
                }

                if (v19 <= 767250)
                {
                  v19 = v19;
                }

                else
                {
                  v19 = (v19 - 1534500);
                }

                v20 = v19;
                if (v14 != 2130706432)
                {
                  if (v19 - v14 >= 511)
                  {
                    v21 = 511;
                  }

                  else
                  {
                    v21 = v19 - v14;
                  }

                  v22 = 1023 * ((v19 - v14 - v21 + 1022) / 0x3FFu);
                  v23 = v19 - v14 - v22;
                  if (v23 <= -511)
                  {
                    v23 = -511;
                  }

                  v24 = v22 + v14 + v23;
                  v25 = (v24 - v19 - (v24 != v19)) / 0x3FF;
                  if (v24 != v19)
                  {
                    ++v25;
                  }

                  LODWORD(v19) = v19 - v22 - v25 + (v25 << 10);
                  v20 = v14;
                }

                ++v13;
                v11 = v11 + *(v17 + 22) - *(v16 + 22);
                v12 += v19;
                v14 = v20;
              }
            }
          }
        }
      }
    }

    ++v10;
  }

  while (v10 != 178);
  if (v13 >= 1)
  {
    v84 = (v12 / v13);
    v26 = (v11 / v13);
  }

  else
  {
LABEL_28:
    v27 = (*(a1 + 64) - (*(a1 + 96) - v7 * 0.001)) * 1023000.0;
    v28 = -0.5;
    if (v27 <= 0.0)
    {
      v29 = -0.5;
    }

    else
    {
      v29 = 0.5;
    }

    v30 = v27 + v29;
    if (v30 <= 2147483650.0)
    {
      if (v30 >= -2147483650.0)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x80000000;
      }
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }

    v32 = (v31 + *(a1 + 4956));
    v33 = *(a1 + 72) * 1575420000.0;
    if (v33 > 0.0)
    {
      v28 = 0.5;
    }

    v34 = v33 + v28;
    if (v34 <= 2147483650.0)
    {
      if (v34 >= -2147483650.0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0x80000000;
      }
    }

    else
    {
      v35 = 0x7FFFFFFF;
    }

    v84 = v32;
    v26 = (v35 + *(a1 + 4952));
  }

  v86 = v26;
  v87 = 0;
  v36 = 0;
  v37 = 0;
  v38 = a1 + 304;
  v39 = a2 + 3996;
  v91 = a2 + 60;
  v40 = a2 + 5420;
  v88 = a2 + 4174;
  v89 = 0;
  do
  {
    v41 = (v38 + 48 * v36);
    if (!*(v41 + 10) || *(v41 + 4) != 1)
    {
      goto LABEL_68;
    }

    v42 = GNSS_Id_To_Num_Prn_Idx(*(v41 + 2));
    v43 = *(v39 + v42);
    if (v43 < 0 || (v44 = v91 + 48 * *(v39 + v42), !*(v44 + 10)) || *(v44 + 4) != 1)
    {
      v43 = 0;
      v50 = (a2 + 70);
      while (*(v50 - 2) || (*(v50 - 6) & 1) != 0)
      {
        ++v43;
        v50 += 48;
        if (v43 == 82)
        {
          goto LABEL_66;
        }
      }

      v52 = v41[1];
      v51 = v41[2];
      *(v50 - 10) = *v41;
      *(v50 + 22) = v51;
      *(v50 + 6) = v52;
      if (*(v50 - 2) == 2)
      {
        *v50 = *(*(a2 + 6216) + 4 * *v50 - 4);
      }

      v89 = (v89 + 1);
      *(v39 + v42) = v43;
      v49 = 3;
      goto LABEL_65;
    }

    v45 = *(v44 + 26);
    if (!*(v44 + 15))
    {
      goto LABEL_142;
    }

    if (v45 < 0x101)
    {
      if (!*(v44 + 12))
      {
        v54 = *(v41 + 13);
        if (v45 > v54)
        {
          LOWORD(v54) = *(v44 + 26);
        }

        *(v44 + 26) = v54;
      }

      goto LABEL_66;
    }

    if (!*(v44 + 12))
    {
LABEL_142:
      v46 = (*(v41 + 13) >> 4) + 1;
      if (v46 + v46 * (*(v41 + 9) >> 5) < (v45 >> 4) + 1 + ((v45 >> 4) + 1) * (*(v44 + 18) >> 5))
      {
        v47 = v41[2];
        v48 = *v41;
        *(v44 + 16) = v41[1];
        *(v44 + 32) = v47;
        *v44 = v48;
        if (*(v44 + 8) == 2)
        {
          *(v44 + 10) = *(*(a2 + 6216) + 4 * *(v44 + 10) - 4);
        }

        v87 = (v87 + 1);
        v49 = 2;
LABEL_65:
        *(v92 + v43) = v49;
      }
    }

LABEL_66:
    v37 = (v37 + 1);
    if (*(v40 + 4 * v42) != 1)
    {
      *(v40 + 4 * v42) = 1;
      v53 = v90[2036];
      *(v88 + 2 * v53) = v42 + 1;
      v90[2036] = v53 + 1;
    }

LABEL_68:
    ++v36;
  }

  while (v36 != 82);
  if (v87 > 0 || v89 >= 1)
  {
    v55 = 0;
    v56 = a2 + 64;
    v57 = 512;
    v58 = 512;
    do
    {
      if (*(v56 + 4) && *v56 == 1)
      {
        v59 = *(v56 + 22);
        v60 = v57;
        if (v57 >= v59)
        {
          v60 = *(v56 + 22);
        }

        if (v58 < v59)
        {
          LOWORD(v59) = v58;
        }

        if ((*(v92 + v55) & 0xFFFFFFFE) == 2)
        {
          v58 = v59;
        }

        else
        {
          v57 = v60;
        }
      }

      v55 += 4;
      v56 += 48;
    }

    while (v55 != 328);
    if (v58 != 512 || v57 != 512)
    {
      if (v58 >= v57)
      {
        v63 = 0;
        v64 = v92;
        do
        {
          if (*(a2 + v63 + 68) && *(a2 + v63 + 64) == 1 && (*v64 & 0xFFFFFFFE) == 2)
          {
            *(a2 + v63 + 82) -= v86;
            Inc_CA_Chips(-v84, (a2 + v63 + 92), (a2 + v63 + 88));
          }

          v63 += 48;
          ++v64;
        }

        while (v63 != 3936);
      }

      else
      {
        v61 = 0;
        v62 = v92;
        do
        {
          if (*(a2 + v61 + 68) && *(a2 + v61 + 64) == 1 && (*v62 & 0xFFFFFFFE) != 2)
          {
            *(a2 + v61 + 82) += v86;
            Inc_CA_Chips(v84, (a2 + v61 + 92), (a2 + v61 + 88));
          }

          v61 += 48;
          ++v62;
        }

        while (v61 != 3936);
      }
    }
  }

  if (*(a2 + 48))
  {
    v65 = 1;
  }

  else
  {
    v65 = v37 < 8;
  }

  if (v65 || v90[2037] < 7u)
  {
    v69 = 0;
    v68 = 0;
    v70 = a2 + 4530;
    do
    {
      v71 = *(v70 + v69);
      if (v71 >= 1 && !*(v40 + 4 * (v71 - 1)))
      {
        *(v70 + 2 * v68++) = v71;
      }

      v69 += 2;
    }

    while (v69 != 356);
    v90[2037] = v68;
    if (v68 <= 0xB1u)
    {
      memset((v70 + 2 * v68), 255, 356 - 2 * v68);
    }
  }

  else
  {
    v66 = 0;
    *(a2 + 4882) = -1;
    *&v67 = -1;
    *(&v67 + 1) = -1;
    *(a2 + 4530) = v67;
    *(a2 + 4546) = v67;
    *(a2 + 4562) = v67;
    *(a2 + 4578) = v67;
    *(a2 + 4594) = v67;
    *(a2 + 4610) = v67;
    *(a2 + 4626) = v67;
    *(a2 + 4642) = v67;
    *(a2 + 4658) = v67;
    *(a2 + 4674) = v67;
    *(a2 + 4690) = v67;
    *(a2 + 4706) = v67;
    *(a2 + 4722) = v67;
    *(a2 + 4738) = v67;
    *(a2 + 4754) = v67;
    *(a2 + 4770) = v67;
    *(a2 + 4786) = v67;
    *(a2 + 4802) = v67;
    *(a2 + 4818) = v67;
    *(a2 + 4834) = v67;
    *(a2 + 4850) = v67;
    *(a2 + 4866) = v67;
    v90[2037] = 0;
    do
    {
      if (!*(v40 + v66))
      {
        *(v40 + v66) = 2;
      }

      v66 += 4;
    }

    while (v66 != 712);
    LOBYTE(v68) = 0;
    *(v8 + 535) = 1;
  }

  v72 = 0;
  v90[2038] = -78 - v90[2039] - (v68 + v90[2036]);
  *(a2 + 6360) = *(a1 + 4952);
  v73 = a1 + 4418;
  do
  {
    v74 = *(v73 + v72);
    if ((v74 > 0 || *(v73 + 2 * v72 + 178) >= 1) && *(v8 + v72) < 0)
    {
      v75 = v8 + 2 * v72;
      if (*(v75 + 89) < 0)
      {
        *(v8 + v72) = v74;
        *(v75 + 89) = *(v73 + 2 * v72 + 178);
      }
    }

    ++v72;
  }

  while (v72 != 178);
  EvLog_nd("PP_Acq_Ass_Merge_AA: ", 10, a3, a4, a5, a6, a7, *(a1 + 300), v37, v87, v89, v90[2036], v90[2037], *(a1 + 4952), *(a1 + 4956), v86, v84);
  if (!v90[2036])
  {
    return 0;
  }

  if (g_Enable_Event_Log)
  {
    for (i = 0; i != 178; ++i)
    {
      v77 = *(v39 + i);
      if ((v77 & 0x8000000000000000) == 0 && (*(a1 + 4240 + i) & 0x80000000) == 0)
      {
        v78 = v91 + 48 * *(v39 + i);
        v79 = *(v78 + 8);
        v80 = *(v78 + 10);
        if (v79 == 2 || (v80 = *(v78 + 10), v79 <= 6))
        {
          v81 = PP_Acq_Ass_Merge_AA(s_Pre_Positioning_WD *,s_DB_Acq_Aid_Table *,s_DB_SV_AzEl *)::ch_CONSTELL_ID[*(v78 + 8)];
        }

        else
        {
          v81 = 88;
        }

        v82 = v38 + 48 * *(a1 + 4240 + i);
        EvLog_v("PP_Acq_Ass_Merge_AA:  %c %3d %2d %3d  %c   D %3d %3d %4d   C %3d %3d %5d   S %d %d  GR %d %d", v81, v80, *(v78 + 11), *(v82 + 10), PP_Acq_Ass_Merge_AA(s_Pre_Positioning_WD *,s_DB_Acq_Aid_Table *,s_DB_SV_AzEl *)::ch_MERGE_STATE[*(v92 + v77)], *(v78 + 18), *(v82 + 18), *(v78 + 22) - *(v82 + 22), *(v78 + 26), *(v82 + 26), *(v78 + 32) - *(v82 + 32), *(v78 + 14), *(v82 + 14), *(v78 + 15), *(v82 + 15));
      }
    }
  }

  return 1;
}

uint64_t Gnm07_06EncodeNSend(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  __s = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
  PlcGnssHw = Gnm03_64GetPlcGnssHw();
  plc00_05EncodeMsg(2, a1, a2, v17, 2048, &__s, &v18, PlcGnssHw);
  if (v18)
  {
    if (IsLoggingAllowed == 1)
    {
      if (!plc00_15GetExtErrAsString(&v18, &__s_2, 0x104uLL) || !LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
      {
        return 0;
      }

      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u,Err,%s\n", v7, "GNM", 87);
    }

    else
    {
      v12 = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
      result = 0;
      if (!v12)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDE,%u\n", v13, "GNM");
    }

    LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:zx%c%c,%u =>GNCorHW %s\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm07_06EncodeNSend", *a1, a1[1], a1[2], a3);
    LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
  }

  return Gnm07_01Send(*a1, a1[2], v17, __s);
}

uint64_t Gnm07_01Send(int a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  v11 = *MEMORY[0x29EDCA608];
  HIDWORD(v6) = a1 - 66;
  LODWORD(v6) = a1 - 66;
  v5 = v6 >> 1;
  if (v5 <= 8)
  {
    if (v5 <= 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 == 9 || v5 == 10)
    {
      goto LABEL_8;
    }

    if (v5 == 11)
    {
      if (a2 != 77)
      {
        return 0;
      }

LABEL_8:
      if (off_2A1939588)
      {
        off_2A1939588(a4, a3);
        return 1;
      }

      return 0;
    }
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0);
  if (!result)
  {
    return result;
  }

  bzero(__str, 0x410uLL);
  v8 = mach_continuous_time();
  v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm07_01Send", 777, a1);
  LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
  return 0;
}

uint64_t Gnm05_22PopulateGnssShapeType(uint64_t a1, int a2)
{
  v3 = *(a1 + 30);
  if ((a2 & 2) != 0 || a2 == 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v3 == 255)
  {
    v5 = 1;
  }

  v6 = *(a1 + 36);
  if ((a2 & 8) != 0 || a2 == 0)
  {
    v8 = 8;
  }

  else
  {
    v8 = v5;
  }

  if (v6)
  {
    result = v8;
  }

  else
  {
    result = v5;
  }

  if (v3 != 255 && *(a1 + 31) != 255 && *(a1 + 41) != 255 && *(a1 + 32) != 255)
  {
    if ((a2 & 4) != 0 || a2 == 0)
    {
      v11 = 4;
    }

    else
    {
      v11 = result;
    }

    v12 = *(a1 + 40);
    if ((a2 & 0x10) != 0 || a2 == 0)
    {
      v14 = 16;
    }

    else
    {
      v14 = v11;
    }

    if (v12 == 255)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v6)
    {
      return v15;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

uint64_t Gnm05_23PopulateGnssVelocityType(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 10) == -1)
  {
    goto LABEL_7;
  }

  if ((a2 & 8) != 0 && v2 != 0xFFFF)
  {
    return 8;
  }

  if ((a2 & 2) != 0)
  {
    return 2;
  }

LABEL_7:
  if ((a2 & 4) == 0 || v2 == 0xFFFF)
  {
    return a2 & (*(a1 + 2) != -1);
  }

  return 4;
}

uint64_t Gnm05_25PopulateGnssAidReq(_BYTE *a1, void *a2, int a3)
{
  v57 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AllwdGnss,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm05_25PopulateGnssAidReq", a3);
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
  }

  v8 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 407, 1, 8uLL);
  a2[1] = v8;
  if (!v8)
  {
    return 0;
  }

  if (a1[16] == 1 && (a1[19] & 1) == 0)
  {
    *v8 = 1;
  }

  if (a1[17] == 1)
  {
    v8[1] = 1;
  }

  if (a1[18] == 1 && (a1[21] & 1) == 0)
  {
    v8[2] = 1;
  }

  v9 = (*v8 & 1) != 0 || (v8[1] & 1) != 0 || v8[2] == 1;
  v10 = 0;
  if (a3 & 1) != 0 && (a1[24])
  {
    v11 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 442, 1, 0xD8uLL);
    a2[2] = v11;
    if (!v11)
    {
      v40 = a2[1];
      if (v40)
      {
        free(v40);
      }

      v20 = 0;
      a2[1] = 0;
      return v20;
    }

    v10 = Gnm05_24PopulateGnssAssistData(v11, 1, (a1 + 24), 8u, 0x18u, 8u);
    v8 = a2[1];
    v8[3] = 1;
  }

  v12 = 0;
  if (a3 & 0x20) != 0 && (a1[256])
  {
    v13 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 458, 1, 0xD8uLL);
    a2[3] = v13;
    if (!v13)
    {
      v41 = a2[1];
      if (v41)
      {
        free(v41);
      }

      a2[1] = 0;
      v42 = a2[2];
      if (v42)
      {
        free(v42);
      }

      v20 = 0;
      a2[2] = 0;
      return v20;
    }

    v12 = Gnm05_24PopulateGnssAssistData(v13, 32, (a1 + 256), 6u, 0x14u, 6u);
    v8 = a2[1];
    v8[4] = 1;
  }

  v14 = 0;
  if (a3 & 0x40) != 0 && (a1[952])
  {
    v15 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 477, 1, 0xD8uLL);
    a2[6] = v15;
    if (!v15)
    {
      v43 = a2[1];
      if (v43)
      {
        free(v43);
      }

      a2[1] = 0;
      v44 = a2[2];
      if (v44)
      {
        free(v44);
      }

      a2[2] = 0;
      v45 = a2[3];
      if (v45)
      {
        free(v45);
      }

      v20 = 0;
      a2[3] = 0;
      return v20;
    }

    v14 = Gnm05_24PopulateGnssAssistData(v15, 64, (a1 + 952), 6u, 0x14u, 6u);
    v8 = a2[1];
    v8[7] = 1;
  }

  v16 = 0;
  if (a3 & 0x10) != 0 && (a1[488])
  {
    v17 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 496, 1, 0xD8uLL);
    a2[4] = v17;
    if (!v17)
    {
      v46 = a2[1];
      if (v46)
      {
        free(v46);
      }

      a2[1] = 0;
      v47 = a2[2];
      if (v47)
      {
        free(v47);
      }

      a2[2] = 0;
      v48 = a2[3];
      if (v48)
      {
        free(v48);
      }

      a2[3] = 0;
      v49 = a2[6];
      if (v49)
      {
        free(v49);
      }

      v20 = 0;
      a2[6] = 0;
      return v20;
    }

    v16 = Gnm05_24PopulateGnssAssistData(v17, 16, (a1 + 488), 4u, 4u, 4u);
    v8 = a2[1];
    v8[5] = 1;
  }

  v18 = 0;
  if ((a3 & 4) == 0 || (a1[720] & 1) == 0)
  {
    goto LABEL_36;
  }

  v19 = gnssOsa_Calloc("Gnm05_25PopulateGnssAidReq", 517, 1, 0xD8uLL);
  a2[5] = v19;
  if (v19)
  {
    v18 = Gnm05_24PopulateGnssAssistData(v19, 4, (a1 + 720), 4u, 4u, 4u);
    v8 = a2[1];
    v8[6] = 1;
LABEL_36:
    v20 = v14 | v9 | v10 | v12 | v16 | v18;
    if (v20 == 1 && a1[18] == 1 && (v8[2] & 1) == 0)
    {
      v8[2] = 1;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v22 = a2[1];
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v27 = v22[4];
      v28 = v22[5];
      v29 = v22[6];
      v30 = v22[7] == 0;
      v31 = 78;
      if (v30)
      {
        v32 = 78;
      }

      else
      {
        v32 = 89;
      }

      if (v29)
      {
        v33 = 89;
      }

      else
      {
        v33 = 78;
      }

      if (v28)
      {
        v34 = 89;
      }

      else
      {
        v34 = 78;
      }

      if (v27)
      {
        v35 = 89;
      }

      else
      {
        v35 = 78;
      }

      if (v26)
      {
        v36 = 89;
      }

      else
      {
        v36 = 78;
      }

      if (v25)
      {
        v37 = 89;
      }

      else
      {
        v37 = 78;
      }

      if (v24)
      {
        v38 = 89;
      }

      else
      {
        v38 = 78;
      }

      if (v23)
      {
        v31 = 89;
      }

      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTime,%c,RefPos,%c,Iono,%c,Agps,%c,Aglon,%c,Aqzss,%c,Asbas,%c,Abds,%c\n", v21, "GNM", 73, "Gnm05_25PopulateGnssAidReq", v31, v38, v37, v36, v35, v34, v33, v32);
      LbsOsaTrace_WriteLog(0xBu, __str, v39, 4, 1);
    }

    return v20;
  }

  v50 = a2[2];
  if (v50)
  {
    free(v50);
  }

  a2[2] = 0;
  v51 = a2[3];
  if (v51)
  {
    free(v51);
  }

  a2[3] = 0;
  v52 = a2[6];
  if (v52)
  {
    free(v52);
  }

  a2[6] = 0;
  v53 = a2[1];
  if (v53)
  {
    free(v53);
  }

  a2[1] = 0;
  v54 = a2[4];
  if (v54)
  {
    free(v54);
  }

  v20 = 0;
  a2[4] = 0;
  return v20;
}

uint64_t Gnm05_24PopulateGnssAssistData(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v31 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  v8 = *(a3 + 16);
  *(a1 + 4) = v8;
  *(a1 + 10) = *(a3 + 22);
  if (*(a3 + 18) == 1 && *(a3 + 3) < a5)
  {
    *(a1 + 6) = 1;
    *(a1 + 13) = *(a3 + 25);
  }

  if (*(a3 + 19) == 1 && *(a3 + 1) < a4)
  {
    *(a1 + 7) = 1;
    *(a1 + 14) = *(a3 + 26);
  }

  if (*(a3 + 20) == 1 && *(a3 + 2) < a6)
  {
    *(a1 + 8) = 1;
  }

  *(a1 + 16) = *(a3 + 30);
  *(a1 + 18) = *(a3 + 28);
  LODWORD(v9) = *(a3 + 33);
  *(a1 + 20) = v9;
  *(a1 + 19) = *(a3 + 32);
  if (v9)
  {
    if (v9 >= 0x30)
    {
      v9 = 48;
    }

    else
    {
      v9 = v9;
    }

    v10 = (a1 + 21);
    v11 = (a1 + 86);
    v12 = (a3 + 36);
    do
    {
      *v10++ = *(v12 - 2);
      v13 = *v12;
      v12 += 2;
      *v11++ = v13;
      --v9;
    }

    while (v9);
  }

  if ((v8 & 1) != 0 || (*(a1 + 6) & 1) != 0 || (*(a1 + 7) & 1) != 0 || *(a1 + 8) == 1)
  {
    v14 = 1;
    *(a1 + 5) = 1;
    *(a1 + 12) = *(a3 + 24);
    if (a2 == 64)
    {
      *(a1 + 11) = *(a3 + 23);
    }
  }

  else
  {
    v14 = 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (v14)
    {
      v16 = 89;
    }

    else
    {
      v16 = 78;
    }

    if (*(a1 + 15))
    {
      v17 = 89;
    }

    else
    {
      v17 = 78;
    }

    if (*(a1 + 14))
    {
      v18 = 89;
    }

    else
    {
      v18 = 78;
    }

    if (*(a1 + 13))
    {
      v19 = 89;
    }

    else
    {
      v19 = 78;
    }

    if (*(a1 + 10))
    {
      v20 = 89;
    }

    else
    {
      v20 = 78;
    }

    if (*(a1 + 8))
    {
      v21 = 89;
    }

    else
    {
      v21 = 78;
    }

    if (*(a1 + 7))
    {
      v22 = 89;
    }

    else
    {
      v22 = 78;
    }

    if (*(a1 + 6))
    {
      v23 = 89;
    }

    else
    {
      v23 = 78;
    }

    if (*(a1 + 12))
    {
      v24 = 89;
    }

    else
    {
      v24 = 78;
    }

    if (*(a1 + 11))
    {
      v25 = 89;
    }

    else
    {
      v25 = 78;
    }

    if (*(a1 + 5))
    {
      v26 = 89;
    }

    else
    {
      v26 = 78;
    }

    if (*(a1 + 4))
    {
      v27 = 89;
    }

    else
    {
      v27 = 78;
    }

    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AssistReq GNSSID,%u,Utc,%c,Rti,%c,Grid,%c,TimeModel,%c,Alm,%c,Eph,%c,RefMeas,%c,AuxInfo,%c,AlmModId,%c,EphModId,%c,ClkModId,%c,AidReq,%c\n", v15, "GNM", 73, "Gnm05_24PopulateGnssAssistData", a2, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16);
    LbsOsaTrace_WriteLog(0xBu, __str, v28, 4, 1);
  }

  return v14;
}

uint64_t Gnm05_27PopulateDefaultGnssAidReq(void *a1, char a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm05_27PopulateDefaultGnssAidReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 655, 1, 8uLL);
  a1[1] = v6;
  if (!v6)
  {
    return 0;
  }

  *v6 = 257;
  v6[2] = 1;
  if (a2)
  {
    v7 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 668, 1, 0xD8uLL);
    a1[2] = v7;
    if (!v7)
    {
      goto LABEL_45;
    }

    *v7 = 0x101010100000001;
    *(v7 + 7) = 16843009;
    v7[20] = 0;
    v7[15] = 2;
    *(v7 + 11) = 33685760;
    *(a1[1] + 3) = 1;
  }

  if ((a2 & 0x20) != 0)
  {
    v8 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 682, 1, 0xD8uLL);
    a1[3] = v8;
    if (!v8)
    {
      v13 = a1[2];
      if (v13)
      {
        free(v13);
      }

      a1[2] = 0;
      goto LABEL_45;
    }

    *v8 = 0x101010100000020;
    *(v8 + 7) = 16843009;
    v8[20] = 0;
    v8[15] = 4;
    *(v8 + 11) = 67436800;
    *(a1[1] + 4) = 1;
  }

  if ((a2 & 0x40) != 0)
  {
    v9 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 699, 1, 0xD8uLL);
    a1[6] = v9;
    if (!v9)
    {
      v14 = a1[2];
      if (v14)
      {
        free(v14);
      }

      a1[2] = 0;
      v15 = a1[3];
      if (v15)
      {
        free(v15);
      }

      a1[3] = 0;
      goto LABEL_45;
    }

    *v9 = 0x101010100000040;
    *(v9 + 7) = 16843009;
    v9[20] = 0;
    v9[15] = 6;
    *(v9 + 11) = 101122304;
    *(a1[1] + 7) = 1;
  }

  if ((a2 & 0x10) != 0)
  {
    v10 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 717, 1, 0xD8uLL);
    a1[4] = v10;
    if (!v10)
    {
      v16 = a1[2];
      if (v16)
      {
        free(v16);
      }

      a1[2] = 0;
      v17 = a1[3];
      if (v17)
      {
        free(v17);
      }

      a1[3] = 0;
      v18 = a1[6];
      if (v18)
      {
        free(v18);
      }

      a1[6] = 0;
      goto LABEL_45;
    }

    Gnm05_26PopulateDefaultAssistData(v10, 16);
    *(a1[1] + 5) = 1;
  }

  if ((a2 & 4) == 0)
  {
    return 1;
  }

  v11 = 1;
  v12 = gnssOsa_Calloc("Gnm05_27PopulateDefaultGnssAidReq", 736, 1, 0xD8uLL);
  a1[5] = v12;
  if (v12)
  {
    Gnm05_26PopulateDefaultAssistData(v12, 4);
    *(a1[1] + 6) = 1;
    return v11;
  }

  v19 = a1[2];
  if (v19)
  {
    free(v19);
  }

  a1[2] = 0;
  v20 = a1[3];
  if (v20)
  {
    free(v20);
  }

  a1[3] = 0;
  v21 = a1[6];
  if (v21)
  {
    free(v21);
  }

  a1[6] = 0;
  v22 = a1[4];
  if (v22)
  {
    free(v22);
  }

  a1[4] = 0;
LABEL_45:
  v23 = a1[1];
  if (v23)
  {
    free(v23);
  }

  v11 = 0;
  a1[1] = 0;
  return v11;
}

double Gnm05_26PopulateDefaultAssistData(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  *(a1 + 4) = 16843009;
  *(a1 + 7) = 16843009;
  *(a1 + 20) = 0;
  *(a1 + 15) = 0;
  *(a1 + 11) = 256;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssType,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm05_26PopulateDefaultAssistData", 770, a2);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 2, 1);
  }

  return result;
}

double Gnm05_31PrintNavSoln(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (*(a1 + 10))
    {
      v3 = 89;
    }

    else
    {
      v3 = 78;
    }

    if (*(a1 + 9))
    {
      v4 = 89;
    }

    else
    {
      v4 = 78;
    }

    if (*(a1 + 8))
    {
      v5 = 89;
    }

    else
    {
      v5 = 78;
    }

    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NAV:OsTime,%ums,BBTick,%ums,DateSet,%c,TimeSet,%c,UtcValid,%c,Year,%u,Month,%u,Day,%u,Hours,%u,Min,%u,Sec,%u,Msec,%u,WkNo,%d,Tow,%.12f,TowUnc%.12f,UtcCorr,%.1f,ClkDrift,%.12f,ClkDriftUnc,%.12f\n", v2, "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *a1, v5, v4, v3, *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 18), *(a1 + 20), *(a1 + 22), *(a1 + 24), *(a1 + 28), *(a1 + 40), *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 168));
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NAV:OsTime,%ums,Lat,%.9f,Lon,%.9f,AltMSL,%f,Speed,%f,Course,%f,VerVel,%f,HAccMaj,%f,HAccMin,%f,PRRes,%f,FixT,%u,VSF,%u,VNM,%u,FixMode,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *(a1 + 104), *(a1 + 112), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 200), *(a1 + 208), *(a1 + 248), *(a1 + 288), *(a1 + 289), *(a1 + 290), *(a1 + 291));
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NAV:OsTime,%ums,SatView,%u,SatUsed,%u,UsrS,%u,GnssC,%u,Reliab,%u,AsstUsed,0x%X,SpoofMsk,0x%X\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm05_31PrintNavSoln", *(a1 + 4), *(a1 + 306), *(a1 + 307), *(a1 + 292), *(a1 + 293), *(a1 + 304), *(a1 + 300), *(a1 + 296));
    LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
  }

  return result;
}

double Gnm05_32PrintGadData(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:SessId,%u,Final,%u,GnssMask,%x,VelType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm05_32PrintGadData", *a1, *(a1 + 4), *(a1 + 5), *(a1 + 68));
      LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:Tow,%ums,TowUncK,%u,GnssTod,%ums,GnssTodFrac,%u(250ns),GnssTodUncK,%u,DeltaGnssTodK,%u,RefDeltaCellTime,%u,GnssTimeId,%u,GpsWkNo,%u,GPSLeapSec,%d,LocalBBTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm05_32PrintGadData", *(a1 + 84), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 98), *(a1 + 99), *(a1 + 100), *(a1 + 104), *(a1 + 110), *(a1 + 112), *(a1 + 116));
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:OsTime,%ums,Status,%u,FixType,%u,ShapeType,%u,LatSign,%u,Lat,%u,Lon,%d,Alt,%u,UncSemMajK,%u,UncSemMinK,%u,AxisB,%u,AltDir,%u,UncAltK,%u,Conf,%u,InclAngle,%u,OffsetAngle,%u,InRad,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm05_32PrintGadData", *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 46), *(a1 + 47), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 57), *(a1 + 58), *(a1 + 59), *(a1 + 60));
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD:Bearing,%u,HorSpeed,%u,VerDir,%u,VerSpeed,%u,HorSpeedUnc,%u,VerSpeedUnc,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 73, "Gnm05_32PrintGadData", *(a1 + 72), *(a1 + 74), *(a1 + 76), *(a1 + 78), *(a1 + 80), *(a1 + 82));
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 4, 1);
    }
  }

  return result;
}

void Gnm05_35PrintMeas(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:SessId,%u,FinalRep,%u,AsstMask,0x%X,MeasMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm05_35PrintMeas", *a1, *(a1 + 4), *(a1 + 12), *(a1 + 16));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GNSS:Status,%u,GpsTow,%ums,TowUncK,%u,Tod,%ums,TodFrac,%u(250ns),TodUncK,%u,DeltaTodK,%u,RefDeltaCellTime,%dus,NumGnssID,%u,GpsWkNo,%u,GPSLeapSec,%d,LocalBBTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm05_34PrintGnssMeas", *(a1 + 680), *(a1 + 684), *(a1 + 688), *(a1 + 692), *(a1 + 696), *(a1 + 698), *(a1 + 699), *(a1 + 700), *(a1 + 720), *(a1 + 710), *(a1 + 712), *(a1 + 716));
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  v6 = *(a1 + 720);
  if (*(a1 + 720))
  {
    v7 = 0;
    v23 = a1;
    v24 = a1 + 724;
    v8 = (a1 + 736);
    do
    {
      v9 = v24 + 10280 * v7;
      v10 = *(v9 + 4);
      if (v10)
      {
        v11 = 0;
        v26 = v7;
        v25 = v8;
        do
        {
          v12 = (v9 + 8 + 1284 * v11);
          if (v12[2])
          {
            v13 = 0;
            v14 = v8;
            do
            {
              if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v15 = mach_continuous_time();
                v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GNSS:GnssId,%u,SignalId,%u,SvId,%u,CPAmbig,%u,Snr,%u,MPathInd,%u,CarQualInd,%u,IntCodePh,%ums,CPRmsErr,%u,CodePh,%ums,Dopp,%dm/s,ADR,%um\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 73, "Gnm05_34PrintGnssMeas", *v9, *v12, *v14, v12[1], v14[1], v14[2], v14[3], v14[4], v14[5], *(v14 + 2), *(v14 + 6), *(v14 + 4));
                LbsOsaTrace_WriteLog(0xBu, __str, v16, 4, 1);
              }

              if (v13 > 0x3E)
              {
                break;
              }

              ++v13;
              v14 += 20;
            }

            while (v13 < v12[2]);
            v10 = *(v9 + 4);
          }

          if (v11 > 6)
          {
            break;
          }

          ++v11;
          v8 += 1284;
        }

        while (v11 < v10);
        a1 = v23;
        v6 = *(v23 + 720);
        v8 = v25;
        v7 = v26;
      }

      if (v7 > 0xE)
      {
        break;
      }

      ++v7;
      v8 += 10280;
    }

    while (v7 < v6);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GPS:Status,%u,GpsTow,%ums,GpsTowUncK,%u,RefDeltaCellTime,%dus,DeltaTowK,%u,NoSv,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm05_33PrintGpsMeas", *(a1 + 32), *(a1 + 20), *(a1 + 28), *(a1 + 24), *(a1 + 29), *(a1 + 37));
    LbsOsaTrace_WriteLog(0xBu, __str, v18, 4, 1);
  }

  if (*(a1 + 37))
  {
    v19 = 0;
    v20 = (a1 + 47);
    do
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: 3GPPMEAS:GPS:SatId,%u,Cno,%u,Doppler,%u,WholeChips,%u,FracChips,%u,MPathInd,%u,PsRmsErr,%u\n", (*&g_MacClockTicksToMsRelation * v21), "GNM", 73, "Gnm05_33PrintGpsMeas", *(v20 - 9), *(v20 - 8), *(v20 - 7), *(v20 - 5), *(v20 - 3), *(v20 - 1), *v20);
        LbsOsaTrace_WriteLog(0xBu, __str, v22, 4, 1);
      }

      if (v19 > 0x3E)
      {
        break;
      }

      ++v19;
      v20 += 10;
    }

    while (v19 < *(a1 + 37));
  }
}

void Gnm05_43ConvertNavToGpsGad(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v8 = 1;
  *a1 = a4;
  *(a1 + 4) = 1;
  v9 = *(a3 + 288);
  if (v9 != 2)
  {
    if (v9 == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
      *(a1 + 4) = 7;
    }
  }

  v10 = *(a3 + 104);
  v11 = *(a3 + 112);
  *(a1 + 8) = v8;
  v12 = (fabs(v10) * 93206.7444 + 0.5);
  if (v10 >= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *(a1 + 16) = v13;
  *(a1 + 20) = v12;
  v14 = (v11 * 46603.3778);
  if (v14 >= 0x800000)
  {
    v14 -= 0x1000000;
  }

  *(a1 + 24) = v14;
  v15 = (log(*(a3 + 200) / 10.0 + 1.0) / 0.0953101798 + 1.0);
  if (v15 >= 0x7F)
  {
    LOBYTE(v15) = 127;
  }

  *(a1 + 30) = v15;
  v16 = (log(*(a3 + 208) / 10.0 + 1.0) / 0.0953101798 + 1.0);
  if (v16 >= 0x7F)
  {
    LOBYTE(v16) = 127;
  }

  *(a1 + 31) = v16;
  v17 = *(a3 + 216);
  *(a1 + 32) = v17;
  v18 = *(a3 + 120);
  if (v18 >= 0.0)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0.0)
  {
    v18 = -v18;
  }

  *(a1 + 36) = v19;
  *(a1 + 28) = v18;
  v20 = (log(*(a3 + 192) / 45.0 + 1.0) / 0.0246926126 + 1.0);
  if (v20 >= 0x7F)
  {
    LOBYTE(v20) = 127;
  }

  *(a1 + 40) = v20;
  *(a1 + 44) = -1;
  *(a1 + 41) = -189;
  *(a1 + 43) = -1;
  if (v17 == 255)
  {
    v21 = 8;
  }

  else
  {
    v21 = 16;
  }

  *(a1 + 12) = v21;
  *(a2 + 16) = a4;
  *a2 = *(a3 + 12);
  *(a2 + 8) = *(a3 + 20);
  *(a2 + 10) = *(a3 + 22);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4u, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GAD Lat,%u,Long,%d\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 73, "Gnm05_43ConvertNavToGpsGad", *(a1 + 20), *(a1 + 24));
    LbsOsaTrace_WriteLog(0xBu, __str, v23, 4, 1);
  }
}

uint64_t Gnm05_55AssignAppInfo(_BYTE *a1, uint64_t a2)
{
  if (!a1 || *a1 != 1)
  {
    return 1;
  }

  v4 = 1;
  v5 = gnssOsa_Calloc("Gnm05_55AssignAppInfo", 1083, 1, 0xC4uLL);
  *a2 = v5;
  if (!v5)
  {
    return 0;
  }

  *v5 = 1;
  memcpy_s("Gnm05_55AssignAppInfo", 1091, v5 + 66, 0x41u, a1 + 66, 0x41uLL);
  memcpy_s("Gnm05_55AssignAppInfo", 1092, (*a2 + 1), 0x41u, a1 + 1, 0x41uLL);
  memcpy_s("Gnm05_55AssignAppInfo", 1093, (*a2 + 131), 0x41u, a1 + 131, 0x41uLL);
  return v4;
}

BOOL Gnm05_57GenerateInitCLT(__int16 *a1, unsigned int a2, double a3, double **a4, unsigned __int16 *a5)
{
  if (a2 <= 8)
  {
    v10 = gnssOsa_Calloc("Gnm05_57GenerateInitCLT", 1125, a2, 8uLL);
    v11 = v10;
    if (a2)
    {
      v12 = a2;
      v13 = v10;
      v14 = a2;
      do
      {
        v15 = *a1++;
        *v13++ = a3 + (a3 + a3) * v15 * 0.000000999999997;
        a3 = a3 + a3;
        --v14;
      }

      while (v14);
    }

    else
    {
      v12 = 0;
    }

    v16 = 1 << a2;
    v17 = gnssOsa_Calloc("Gnm05_57GenerateInitCLT", 1138, 1 << a2, 8uLL);
    v18 = 0;
    do
    {
      v19 = 0.0;
      if (a2)
      {
        v20 = v11;
        v21 = v12;
        v22 = v18;
        do
        {
          if (v22)
          {
            v19 = v19 + *v20;
          }

          if (v22 < 2u)
          {
            break;
          }

          v22 >>= 1;
          ++v20;
          --v21;
        }

        while (v21);
      }

      v17[v18++] = v19;
    }

    while (v16 > v18);
    *a4 = v17;
    *a5 = v16;
    if (v11)
    {
      free(v11);
    }
  }

  return a2 < 9;
}

uint64_t lsim25_01HandleEeApiStatus(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim25_01HandleEeApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("lsim25_01HandleEeApiStatus", 38, 1, 0x28uLL);
  if (v4)
  {
    v5 = v4;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEAPI_IND\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim25_01HandleEeApiStatus");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    if (g_GnsEeCallback)
    {
      *v5 = *(a1 + 12);
      *(v5 + 2) = *(a1 + 20);
      v5[16] = *(a1 + 24);
      *(v5 + 24) = *(a1 + 32);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>EeCB,Api,%u,Id,%u,Status,%u,DataIntValid,%u,StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 77, "lsim25_01HandleEeApiStatus", *(v5 + 1), *v5, *(v5 + 2), v5[16], *(v5 + 3), *(v5 + 4));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 3, 1);
      }

      g_GnsEeCallback(0, 40, v5, v8);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        goto LABEL_14;
      }

      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim25_01HandleEeApiStatus");
      v13 = 4;
    }

    else
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
      {
LABEL_14:
        free(v5);
        return 0;
      }

      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EE\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 68, "lsim25_01HandleEeApiStatus", 258);
      v13 = 5;
    }

    LbsOsaTrace_WriteLog(0xCu, __str, v12, v13, 1);
    goto LABEL_14;
  }

  return 0;
}

double lsim25_01EeCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsEeCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim25_01EeCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsEeCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim25_01EeCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

uint64_t GNS_EeInitialize(uint64_t a1)
{
  v2 = gnssOsa_Calloc("GNS_EeInitialize", 102, 1, 0x18uLL);
  if (!v2)
  {
    return 6;
  }

  v2[3] = 8;
  *(v2 + 2) = a1;
  AgpsSendFsmMsg(131, 131, 8635139, v2);
  return 1;
}

uint64_t GNS_EeInjectOrbitData(int a1, signed __int8 *a2, size_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_EeInjectOrbitData");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ORB\n");
      goto LABEL_9;
    }

LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "GNS_EeInjectOrbitData");
      LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
    }

    return 2;
  }

  if ((a3 - 427673) < 0xFFF979E7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ORBLen,%u\n", v22);
LABEL_9:
      LbsOsaTrace_WriteLog(0xCu, __str, v8, 2, 1);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v12 = gnssOsa_Calloc("GNS_EeInjectOrbitData", 153, 1, 0x28uLL);
  if (v12)
  {
    v13 = v12;
    v14 = gnssOsa_Calloc("GNS_EeInjectOrbitData", 161, a3, 1uLL);
    v13[3] = v14;
    if (v14)
    {
      memcpy_s("GNS_EeInjectOrbitData", 170, v14, a3, a2, a3);
      *(v13 + 8) = a3;
      *(v13 + 3) = a1;
      *(v13 + 4) = 1;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND =>GNC,ORB,DataLen,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "GNS_EeInjectOrbitData", *(v13 + 8), *(v13 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8783619, v13);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "GNS_EeInjectOrbitData");
      v11 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      return v11;
    }

    free(v13);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 73, "GNS_EeInjectOrbitData");
    LbsOsaTrace_WriteLog(0xCu, __str, v20, 4, 1);
  }

  return 6;
}

uint64_t GNS_EeInjectRtiData(int a1, signed __int8 *a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_EeInjectRtiData");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTI\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 87, "GNS_EeInjectRtiData", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v17, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

LABEL_18:
    bzero(__str, 0x410uLL);
    v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v20, "LSM", 73, "GNS_EeInjectRtiData");
    LbsOsaTrace_WriteLog(0xCu, __str, v21, 4, 1);
    return 2;
  }

  if (a3 != 160)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RTILen,%d\n", (*&g_MacClockTicksToMsRelation * v18), "LSM", 87, "GNS_EeInjectRtiData", 514, a3);
      LbsOsaTrace_WriteLog(0xCu, __str, v19, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 2;
    }

    goto LABEL_18;
  }

  v8 = gnssOsa_Calloc("GNS_EeInjectRtiData", 222, 1, 0x28uLL);
  if (v8)
  {
    v9 = v8;
    v10 = gnssOsa_Calloc("GNS_EeInjectRtiData", 230, 160, 1uLL);
    v9[3] = v10;
    if (v10)
    {
      memcpy_s("GNS_EeInjectRtiData", 239, v10, 0xA0u, a2, 0xA0uLL);
      *(v9 + 8) = 160;
      *(v9 + 3) = a1;
      *(v9 + 4) = 2;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_EEDATA_IND =>GNC,RTI,DataLen,%u,Id,%u\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "GNS_EeInjectRtiData", *(v9 + 8), *(v9 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
      }

      AgpsSendFsmMsg(131, 134, 8783619, v9);
      if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        return 1;
      }

      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "GNS_EeInjectRtiData");
      v15 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
      return v15;
    }

    free(v9);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 73, "GNS_EeInjectRtiData");
    LbsOsaTrace_WriteLog(0xCu, __str, v23, 4, 1);
  }

  return 6;
}

char **EvLog(char **result)
{
  if (g_Enable_Event_Log >= 2u)
  {
    v1 = result;
    v2 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v2));
    v3 = g_CB_ELog++;
    *v3 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v4 = g_CB_ELog++;
    *v4 = 32;
    v5 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v5 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v6 = *v1;
    if (*v1)
    {
      v7 = v1 + 1;
      do
      {
        g_CB_ELog = (v5 + 1);
        *v5 = v6;
        v5 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v5 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v8 = *v7++;
        v6 = v8;
      }

      while (v8);
    }

    g_CB_ELog = (v5 + 1);
    *v5 = 10;
    v9 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v9 = qword_2A1938F10;
    }

    v10 = dword_2A1938F08 - v9;
    v11 = qword_2A1938F18 - qword_2A1938F10;
    if (v10 > 0)
    {
      v11 = 0;
    }

    if ((v11 + v10) <= 0xFF)
    {

      return GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  return result;
}

char **EvLog_d(char **result, uint64_t a2)
{
  if (g_Enable_Event_Log >= 2u)
  {
    v2 = a2;
    v3 = result;
    v4 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v4));
    v5 = g_CB_ELog++;
    *v5 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v6 = g_CB_ELog++;
    *v6 = 32;
    v7 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v7 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v8 = *v3;
    if (*v3)
    {
      v9 = v3 + 1;
      do
      {
        g_CB_ELog = (v7 + 1);
        *v7 = v8;
        v7 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v7 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    result = sprintf_sp1d(&g_CB_ELog, v2);
    v11 = g_CB_ELog++;
    *v11 = 10;
    v12 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v12 = qword_2A1938F10;
    }

    v13 = dword_2A1938F08 - v12;
    v14 = qword_2A1938F18 - qword_2A1938F10;
    if (v13 > 0)
    {
      v14 = 0;
    }

    if ((v14 + v13) <= 0xFF)
    {

      return GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  return result;
}

char **EvLog_nd(char **result, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (g_Enable_Event_Log >= 2u)
  {
    v4 = result;
    v5 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v5));
    v6 = g_CB_ELog++;
    *v6 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v7 = g_CB_ELog++;
    *v7 = 32;
    v8 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v8 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v9 = *v4;
    if (*v4)
    {
      v10 = v4 + 1;
      do
      {
        g_CB_ELog = (v8 + 1);
        *v8 = v9;
        v8 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v8 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    va_copy(v17, va);
    for (; a2; --a2)
    {
      v12 = va_arg(v17, void);
      result = sprintf_sp1d(&g_CB_ELog, v12);
    }

    v13 = g_CB_ELog++;
    *v13 = 10;
    v14 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v14 = qword_2A1938F10;
    }

    v15 = dword_2A1938F08 - v14;
    v16 = qword_2A1938F18 - qword_2A1938F10;
    if (v15 > 0)
    {
      v16 = 0;
    }

    if ((v16 + v15) <= 0xFF)
    {
      return GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  return result;
}

char **EvLog_VecI4(char **result, unsigned int a2, unsigned int *a3)
{
  if (g_Enable_Event_Log >= 2u)
  {
    v5 = result;
    v6 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v6));
    v7 = g_CB_ELog++;
    *v7 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v8 = g_CB_ELog++;
    *v8 = 32;
    v9 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v9 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v10 = *v5;
    if (*v5)
    {
      v11 = v5 + 1;
      do
      {
        g_CB_ELog = (v9 + 1);
        *v9 = v10;
        v9 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v9 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v12 = *v11++;
        v10 = v12;
      }

      while (v12);
    }

    if (a2)
    {
      v13 = a2;
      do
      {
        v14 = *a3++;
        result = sprintf_sp1d(&g_CB_ELog, v14);
        --v13;
      }

      while (v13);
      v9 = g_CB_ELog;
    }

    g_CB_ELog = (v9 + 1);
    *v9 = 10;
    v15 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v15 = qword_2A1938F10;
    }

    v16 = dword_2A1938F08 - v15;
    v17 = qword_2A1938F18 - qword_2A1938F10;
    if (v16 > 0)
    {
      v17 = 0;
    }

    if ((v17 + v16) <= 0xFF)
    {

      return GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  return result;
}

void EvLog_v(char *a1, ...)
{
  va_start(va, a1);
  if (g_Enable_Event_Log >= 2u)
  {
    v2 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v2));
    v3 = g_CB_ELog++;
    *v3 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v4 = g_CB_ELog++;
    *v4 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_v(&g_CB_ELog, a1, va);
    v5 = qword_2A1938F18 - qword_2A1938F10;
    if (dword_2A1938F08 - g_CB_ELog > 0)
    {
      v5 = 0;
    }

    if ((v5 + dword_2A1938F08 - g_CB_ELog) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void DbgLog_v(int a1, char *a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  if (a1)
  {
    if (!g_Enable_Nav_Debug)
    {
      return;
    }

    v4 = g_CB_NDbg;
    v5 = 69;
    v6 = 1u;
    v7 = &g_CB_NDbg;
    do
    {
      g_CB_NDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_NDbg;
      if (g_CB_NDbg >= qword_2A1938ED8)
      {
        v4 = qword_2A1938ED0;
        g_CB_NDbg = qword_2A1938ED0;
      }

      v5 = str_3_6[v6++];
    }

    while (v6 != 4);
  }

  else
  {
    if (g_Enable_Event_Log < 2u)
    {
      return;
    }

    v8 = mach_continuous_time();
    v7 = &g_CB_ELog;
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v8));
    v9 = g_CB_ELog++;
    *v9 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }
  }

  sprintf_10u(v7, **(p_api + 8));
  v10 = (*v7)++;
  *v10 = 32;
  if (*v7 >= v7[3])
  {
    *v7 = v7[2];
  }

  sprintf_v(v7, a2, va);
  if ((v3 & 1) == 0)
  {
    v11 = *(v7 + 2) - *v7;
    if (v11 <= 0)
    {
      v11 += *(v7 + 6) - *(v7 + 4);
    }

    if (v11 <= 0xFF)
    {
      GNSS_Event_Log_Ctl(v7);
    }
  }
}

char **EvCrt_d(char **result, uint64_t a2)
{
  if (g_Enable_Event_Log)
  {
    v2 = a2;
    v3 = result;
    v4 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v4));
    v5 = g_CB_ELog++;
    *v5 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v6 = g_CB_ELog++;
    *v6 = 32;
    v7 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v7 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v8 = *v3;
    if (*v3)
    {
      v9 = v3 + 1;
      do
      {
        g_CB_ELog = (v7 + 1);
        *v7 = v8;
        v7 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v7 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    result = sprintf_sp1d(&g_CB_ELog, v2);
    v11 = g_CB_ELog++;
    *v11 = 10;
    v12 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v12 = qword_2A1938F10;
    }

    v13 = dword_2A1938F08 - v12;
    v14 = qword_2A1938F18 - qword_2A1938F10;
    if (v13 > 0)
    {
      v14 = 0;
    }

    if ((v14 + v13) <= 0xFF)
    {

      return GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  return result;
}

char **EvCrt_nd(char **result, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (g_Enable_Event_Log)
  {
    v4 = result;
    v5 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v5));
    v6 = g_CB_ELog++;
    *v6 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v7 = g_CB_ELog++;
    *v7 = 32;
    v8 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v8 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v9 = *v4;
    if (*v4)
    {
      v10 = v4 + 1;
      do
      {
        g_CB_ELog = (v8 + 1);
        *v8 = v9;
        v8 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v8 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    va_copy(v17, va);
    for (; a2; --a2)
    {
      v12 = va_arg(v17, void);
      result = sprintf_sp1d(&g_CB_ELog, v12);
    }

    v13 = g_CB_ELog++;
    *v13 = 10;
    v14 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v14 = qword_2A1938F10;
    }

    v15 = dword_2A1938F08 - v14;
    v16 = qword_2A1938F18 - qword_2A1938F10;
    if (v15 > 0)
    {
      v16 = 0;
    }

    if ((v16 + v15) <= 0xFF)
    {
      return GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }

  return result;
}

void EvCrt_v(char *a1, ...)
{
  va_start(va, a1);
  if (g_Enable_Event_Log)
  {
    v2 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v2));
    v3 = g_CB_ELog++;
    *v3 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v4 = g_CB_ELog++;
    *v4 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_v(&g_CB_ELog, a1, va);
    v5 = qword_2A1938F18 - qword_2A1938F10;
    if (dword_2A1938F08 - g_CB_ELog > 0)
    {
      v5 = 0;
    }

    if ((v5 + dword_2A1938F08 - g_CB_ELog) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvCrt_Illegal_Default(const char *a1, uint64_t a2)
{
  if (g_Enable_Event_Log)
  {
    v4 = mach_continuous_time();
    sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v4));
    v5 = g_CB_ELog++;
    *v5 = 32;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
    }

    sprintf_10u(&g_CB_ELog, **(p_api + 8));
    v6 = g_CB_ELog++;
    *v6 = 32;
    v7 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      v7 = qword_2A1938F10;
      g_CB_ELog = qword_2A1938F10;
    }

    v8 = *a1;
    if (*a1)
    {
      v9 = a1 + 1;
      do
      {
        g_CB_ELog = (v7 + 1);
        *v7 = v8;
        v7 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A1938F18)
        {
          v7 = qword_2A1938F10;
          g_CB_ELog = qword_2A1938F10;
        }

        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    v11 = 58;
    v12 = 1u;
    do
    {
      g_CB_ELog = (v7 + 1);
      *v7 = v11;
      v7 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A1938F18)
      {
        v7 = qword_2A1938F10;
        g_CB_ELog = qword_2A1938F10;
      }

      v11 = str_5_7[v12++];
    }

    while (v12 != 46);
    sprintf_1u(&g_CB_ELog, a2);
    v13 = g_CB_ELog++;
    *v13 = 10;
    v14 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A1938F18)
    {
      g_CB_ELog = qword_2A1938F10;
      v14 = qword_2A1938F10;
    }

    v15 = dword_2A1938F08 - v14;
    v16 = qword_2A1938F18 - qword_2A1938F10;
    if (v15 > 0)
    {
      v16 = 0;
    }

    if ((v16 + v15) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

double Comp_Sig_TOT(int a1, int a2, unsigned int a3, double a4, double a5)
{
    ;
  }

  while (i < 0.0)
  {
    i = i + a5;
  }

  v6 = a5 + -600.0;
  while (a4 - i > v6)
  {
    i = i + a5;
  }

  while (i - a4 > v6)
  {
    i = i - a5;
  }

  return i;
}

double *UTC_To_GPS_Time(__int16 *a1, double *a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8, double a9, unsigned __int16 a10)
{
  v10 = a3 - 1898;
  if (a3 >= 1901)
  {
    v10 = a3 - 1901;
  }

  v11 = (a3 & 3) == 0 && a4 > 2;
  v12 = 365 * (a3 - 1901) + (v10 >> 2) + a5;
  if (v11)
  {
    ++v12;
  }

  v13 = v12 + Days_to_Month[a4 - 1] - 28860;
  *a1 = v13 / 7;
  *a2 = (3600 * a6 + 60 * a7 + a8 + 86400 * (v13 % 7)) + a10 * 0.001;

  return Inc_GPS_TOW(a9, a2, a1);
}

uint64_t plc00_03DecodeMsg(int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned __int16 *a5, _WORD *a6, unsigned __int8 *a7, uint64_t a8)
{
  v8 = a8;
  v37 = *MEMORY[0x29EDCA608];
  v27 = 0;
  __s = 0;
  v34 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v26 = 0;
  result = memset_s(&__s, 0x98uLL, 0, 0x98uLL);
  if (a1 >= 3)
  {
    *a6 = 51;
    a6[3] = 0;
    return result;
  }

  v30 = a3;
  v28 = a2;
  v29 = 0;
  v31 = a4;
  v32 = 133955584;
  v35[138] = *(a6 + 144);
  plc01_01DecHeader(&v28, a7, &v27, &__s);
  if (__s)
  {
    goto LABEL_4;
  }

  if (v27 + 9 != a3)
  {
    __s = 7;
    if (v35[138] != 1)
    {
      goto LABEL_4;
    }

    snprintf(&v35[10], 0x80uLL, "D HDR PL %d != L %d", v27, a3 - 9);
    if (__s)
    {
      goto LABEL_4;
    }
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      goto LABEL_11;
    }

    if (a1)
    {
      goto LABEL_12;
    }
  }

  plc00_04GetPayloadFields(a7, g_ListAll_Chip2Host, &v26, &__s, v8);
  if (a1)
  {
    goto LABEL_12;
  }

  if (!__s)
  {
    goto LABEL_13;
  }

LABEL_11:
  plc00_04GetPayloadFields(a7, g_ListAll_Host2Chip, &v26, &__s, v8);
LABEL_12:
  if (!__s)
  {
LABEL_13:
    v29 = 8;
    v17 = v26;
    if (a3 <= 0xB)
    {
      v18 = -1;
    }

    else
    {
      v18 = -3;
    }

    if ((*(v26 + 4) & 0x1000) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = -1;
    }

    v30 = v19 + a3;
    plc00_13CodecProcess(1, &v28, v26, &v31, &__s);
    if (!__s && (*(v17 + 4) & 0xE000) != 0x2000 && a3 >= 0xA && (*(v17 + 4) & 0x1000) != 0)
    {
      __dst = 0;
      if (v30 - 3 <= v29)
      {
        v20 = v28;
        memcpy_s("plc00_03DecodeMsg", 222, &__dst, 2u, (v28 + v29), 2uLL);
        if (v27 < 3uLL)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = (v20 + 8);
          v23 = v27 - 2;
          do
          {
            v24 = *v22++;
            v21 += v24;
            --v23;
          }

          while (v23);
        }

        if (v21 != __dst)
        {
          __s = 21;
          if (v35[138] == 1)
          {
            snprintf(&v35[10], 0x80uLL, "D PL CS %d != %d\n", __dst, v21);
          }
        }
      }

      else
      {
        __s = 22;
      }
    }
  }

LABEL_4:
  result = memcpy_s("plc00_03DecodeMsg", 243, a6, 0x94u, &__s, 0x94uLL);
  *a5 = v29;
  return result;
}

uint64_t plc00_13CodecProcess(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 4) >> 13;
  if (v5 != 1)
  {
    v8 = result;
    if (v5 == 3)
    {
      v12 = *(a3 + 8);

      return v12(result, a4, a4, a5, a4);
    }

    else if (v5 == 2)
    {
      if (result == 1)
      {
        v9 = a4;
      }

      else
      {
        v9 = a2;
      }

      v10 = *(v9 + 8);
      result = plc03_06CodecFields(result, a2, *(a3 + 8), *(a3 + 3), a4, a5);
      if (!*a5)
      {
        v11 = (*(v9 + 8) - v10);
        if (v11 != (*(a3 + 4) & 0xFFF))
        {
          *a5 = 56;
          if (*(a5 + 144) == 1)
          {
            return snprintf((a5 + 16), 0x80uLL, "%c PL T %d != S %d\n", g_CodecChar[v8], v11, *(a3 + 4) & 0xFFF);
          }
        }
      }
    }

    else
    {
      *a5 = 53;
    }
  }

  return result;
}

unsigned __int8 *plc00_04GetPayloadFields(unsigned __int8 *result, unsigned __int8 *a2, void *a3, int *a4, int a5)
{
  *a3 = 0;
  if (!*(a2 + 1))
  {
    goto LABEL_17;
  }

  v5 = *result;
  do
  {
    v6 = *a2;
    a2 += 16 * (v6 != v5);
    v7 = *(a2 + 1);
  }

  while (v6 != v5 && v7 != 0);
  if (v6 == v5)
  {
    v9 = a2[1];
    if (a2[1])
    {
      while (v7[1] != result[1] || v7[2] && (v7[2] != result[2] || *v7 && *v7 != a5))
      {
        v7 += 16;
        if (!--v9)
        {
          goto LABEL_16;
        }
      }

      v10 = 0;
      *a3 = v7;
    }

    else
    {
LABEL_16:
      v10 = 5;
    }
  }

  else
  {
LABEL_17:
    v10 = 4;
  }

  *a4 = v10;
  return result;
}

double plc00_05EncodeMsg(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned __int16 *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v38 = *MEMORY[0x29EDCA608];
  *__s = 0;
  __s[4] = 0;
  memset(&__s[6], 0, 139);
  v37 = 0;
  v30 = 0;
  memset_s(__s, 0x98uLL, 0, 0x98uLL);
  if (a1 < 3)
  {
    __s[144] = *(a7 + 144);
    v34 = a3;
    v35 = 133955584;
    v31 = a4;
    v32 = 8;
    plc00_07GetPayloadFieldsEnc(a1, a2, &v30, __s, v8);
    v17 = a5 - 1;
    v33 = a5 - 1;
    v18 = *__s;
    v19 = v30;
    if (!*__s && v30)
    {
      if ((*(v30 + 4) & 0x1000) != 0)
      {
        v33 = a5 - 3;
      }

      plc00_13CodecProcess(0, &v34, v30, &v31, __s);
      v18 = *__s;
    }

    v20 = 0;
    if (!v18 && v19)
    {
      v21 = v32;
      *a6 = v32;
      v22 = v21 >= 8;
      v23 = v21 - 8;
      if (v23 != 0 && v22)
      {
        v24 = *(v19 + 4);
        v25 = (v24 >> 11) & 2 | 1;
      }

      else
      {
        LOWORD(v23) = 0;
        v24 = *(v19 + 4);
        LOWORD(v25) = 1;
      }

      plc00_10EncodeHdrPlCs(a2, v31, v17, v23, (v24 >> 12) & 1, __s);
      v20 = v32 + v25;
    }

    *a6 = v20;
    v26 = *&__s[112];
    *(a7 + 96) = *&__s[96];
    *(a7 + 112) = v26;
    *(a7 + 128) = *&__s[128];
    *(a7 + 144) = __s[144];
    v27 = *&__s[48];
    *(a7 + 32) = *&__s[32];
    *(a7 + 48) = v27;
    v28 = *&__s[80];
    *(a7 + 64) = *&__s[64];
    *(a7 + 80) = v28;
    result = *__s;
    v29 = *&__s[16];
    *a7 = *__s;
    *(a7 + 16) = v29;
  }

  else
  {
    *a7 = 51;
    *(a7 + 6) = 0;
  }

  return result;
}

unsigned __int8 *plc00_07GetPayloadFieldsEnc(unsigned __int8 *result, unsigned __int8 *a2, void *a3, int *a4, int a5)
{
  v9 = result;
  if (result == 2)
  {
    goto LABEL_4;
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

LABEL_4:
    result = plc00_04GetPayloadFields(a2, g_ListAll_Host2Chip, a3, a4, a5);
    if (v9 != 1 && (v9 || !*a4))
    {
      return result;
    }
  }

  return plc00_04GetPayloadFields(a2, g_ListAll_Chip2Host, a3, a4, a5);
}

_BYTE *plc00_10EncodeHdrPlCs(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v9 = a3;
  v23 = *MEMORY[0x29EDCA608];
  v13 = 0;
  v14 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(v22, 0, 27);
  v22[30] = 0;
  memset_s(&v13, 0x98uLL, 0, 0x98uLL);
  *a6 = 0;
  if (a4 && a5)
  {
    plc00_14AddPlCs((a2 + 8), (v9 - 8), a4);
    LOWORD(a4) = a4 + 2;
  }

  result = plc02_01EncHeader(a1, a4, a2, v9, &v13);
  *(a2 + a4 + 8) = 10;
  *a6 = v13;
  *(a6 + 6) = 0;
  return result;
}

uint64_t plc00_09GetPayloadLength(unsigned __int8 *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  __dst = 0;
  memcpy_s("plc00_09GetPayloadLength", 541, &__dst, 2u, a1 + 5, 2uLL);
  return (__dst + 1);
}

void *plc00_14AddPlCs(unsigned __int8 *a1, int a2, unsigned int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = 0;
    v4 = a3;
    v5 = a1;
    v6 = a3;
    do
    {
      v7 = *v5++;
      v3 += v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  __src = v3;
  return memcpy_s("plc00_14AddPlCs", 748, &a1[v4], a2 - a3, &__src, 2uLL);
}

BOOL plc00_15GetExtErrAsString(uint64_t a1, char *__s, rsize_t __smax)
{
  v3 = __smax;
  v25 = *MEMORY[0x29EDCA608];
  memset_s(__s, __smax, 0, __smax);
  if (v3 >= 0x104)
  {
    v6 = a1 + 8;
    snprintf(__str, 0x40uLL, "ErrCode,%u", *a1);
    v7 = strnlen(__str, 0x40uLL);
    memcpy_s("plc00_15GetExtErrAsString", 797, __s, 0x104u, __str, v7);
    v8 = 0;
    __s[v7] = 32;
    __s[(v7 + 1)] = 58;
    __s[(v7 + 2)] = 32;
    v9 = v7 + 4;
    __s[(v7 + 3)] = 80;
    v10 = v7 + 5;
    __s[v9] = 76;
    do
    {
      v11 = *(v6 + v8);
      if (*(v6 + v8))
      {
        v12 = v11 >> 6;
        __s[v10] = 45;
        __s[(v10 + 1)] = 62;
        v13 = v11 & 0x3F;
        if (v12 == 2)
        {
          v14 = 85;
        }

        else
        {
          v14 = 70;
        }

        if (v12 == 1)
        {
          v15 = 65;
        }

        else
        {
          v15 = v14;
        }

        __s[(v10 + 2)] = v15;
        __s[(v10 + 3)] = 40;
        if (v13 < 0xA)
        {
          v16 = v10 + 4;
        }

        else
        {
          v16 = v10 + 5;
          __s[(v10 + 4)] = ((26 * v13) >> 8) | 0x30;
          LOBYTE(v13) = v13 - 10 * ((26 * v13) >> 8);
        }

        __s[v16] = v13 + 48;
        v10 = v16 + 2;
        __s[(v16 + 1)] = 41;
      }

      ++v8;
    }

    while (v8 != 8);
    v17 = strnlen((a1 + 16), 0x80uLL);
    __s[v10] = 32;
    __s[(v10 + 1)] = 58;
    v18 = v10 + 3;
    __s[(v10 + 2)] = 32;
    v19 = &__s[(v10 + 3)];
    v20 = 260 - (v10 + 3);
    if (v17)
    {
      if (v17 >= 0x80u)
      {
        v21 = 128;
      }

      else
      {
        v21 = v17;
      }

      memcpy_s("plc00_15GetExtErrAsString", 877, v19, v20, (a1 + 16), v21);
      v22 = v18 + v21;
    }

    else
    {
      memcpy_s("plc00_15GetExtErrAsString", 884, v19, v20, "NO ERROR DETAIL", 0xFuLL);
      v22 = v10 + 18;
    }

    __s[v22] = 0;
  }

  return v3 > 0x103;
}

uint64_t send_is_supl_last_transaction(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = lpp_session_exists(a1);
  if (!v1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 69, "send_is_supl_last_transaction", 2052);
      v4 = 1;
      LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
      return v4;
    }

    return 1;
  }

  v2 = **(v1 + 40);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    if (*(v2 + 25) == 1)
    {
      v3 = 1;
    }

    v2 = *v2;
  }

  while (v2);
  return v3 ^ 1u;
}

void send_supl_caps_rsp(int a1, int a2, int a3, void *a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,result,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 73, "send_supl_caps_rsp", a1, a2);
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 4, 1);
  }

  v11 = a2 != 0;
  *__str = a1;
  v13 = a4;
  v12 = a3;
  is_supl_last_transaction = send_is_supl_last_transaction(a1);
  HandleLppCapsResponse(__str);
  if (a4)
  {
    free(a4);
  }
}

void send_supl_pos_ind(int a1, int a2, int a3, void *a4, char a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,result,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 73, "send_supl_pos_ind", a1, a2);
    LbsOsaTrace_WriteLog(0x13u, __str, v11, 4, 1);
  }

  v15 = a2 != 0;
  v16 = a1;
  *__str = a3;
  v13 = a4;
  v17 = a5;
  is_supl_last_transaction = send_is_supl_last_transaction(a1);
  HandleLppPosResponse(__str);
  if (a4)
  {
    free(a4);
  }
}

void send_lpm_supl_ad_rsp(int a1, int a2, unsigned int *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,result,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "send_lpm_supl_ad_rsp", a1, a2);
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
  }

  if (a2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = gnssOsa_Calloc("posp_alloc", 18, 1, *a3);
    memcpy_s("send_lpm_supl_ad_rsp", 92, v8, *a3, *(a3 + 1), *a3);
    v9 = *a3;
  }

  v13 = a2 != 0;
  v12 = v8;
  *__str = a1;
  v11 = v9;
  is_supl_last_transaction = send_is_supl_last_transaction(a1);
  HandleLppAdResponse(__str);
  if (v8)
  {
    free(v8);
  }
}

uint64_t PERDecode(unsigned int *a1, unsigned __int8 *a2, int *a3)
{
  v16[1] = *MEMORY[0x29EDCA608];
  result = *a1;
  if (!result)
  {
    v7 = setjmp(a1 + 1);
    *(a1 + 196) = 1;
    if (v7)
    {
      MMSRelease(a1);
    }

    else
    {
      *a1 = 0;
      v16[0] = 0;
      *(a1 + 25) = a2;
      *(a1 + 89) = 1;
      *(a1 + 130) = a2;
      *(a1 + 131) = a3;
      v8 = (*(a1 + 106))(a1, v16);
      *(a1 + 134) = v8;
      *(a1 + 135) = v8 + v16[0];
      v9 = (*(a1 + 110))(a1, a1 + 276);
      *(a1 + 136) = v9;
      if (*(a1 + 1104) != 7)
      {
        *(a1 + 136) = v9 + 1;
      }

      v10 = (*(a1 + 108))(a1, a1 + 1105);
      *(a1 + 137) = v10;
      v11 = *(a1 + 1105);
      if ((*(a1 + 1057) & 8) == 0)
      {
        *(a1 + 132) = 2080;
      }

      v12 = v11;
      *(a1 + 139) = 0;
      PERDecVal(a1, a2, a3, 0);
      if (*(a1 + 137) == v10 && *(a1 + 1105) == v12)
      {
        PERGetByte(a1);
      }

      if ((a1[264] & 0x10) != 0)
      {
        v14 = *(a1 + 137);
        v15 = *(a1 + 1105);
      }

      else
      {
        v13 = *(a1 + 1105);
        v14 = *(a1 + 137);
        if (v13 != 7)
        {
          *v14 &= -2 << v13;
          v14 = (*(a1 + 137) + 1);
          *(a1 + 137) = v14;
          *(a1 + 1105) = 7;
        }

        v15 = 7;
      }

      (*(a1 + 109))(a1, &v14[-v10], v15);
      *(a1 + 133) = v12 - *(a1 + 1105) + 8 * (*(a1 + 137) - v10);
      SDLFinalizeValue(a1, a2, a3);
    }

    *(a1 + 196) = 0;
    return *a1;
  }

  return result;
}

uint64_t lsim26_01HandleInitCalibReq(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim26_01HandleInitCalibReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_INIT_CALIB_REQ\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim26_01HandleInitCalibReq");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsXOCallback)
  {
    v6 = gnssOsa_Calloc("lsim26_01HandleInitCalibReq", 50, 1, 4uLL);
    if (v6)
    {
      v7 = v6;
      memcpy_s("lsim26_01HandleInitCalibReq", 60, v6, 1u, (a1 + 12), 1uLL);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:INIT_CAL_REQ =>XoCB\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim26_01HandleInitCalibReq");
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      g_GnsXOCallback(0, 4, v7, v8);
      free(v7);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
LABEL_28:
        bzero(__str, 0x410uLL);
        v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v25, "LSM", 73, "lsim26_01HandleInitCalibReq");
        LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitCalReq\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 69, "lsim26_01HandleInitCalibReq", 1537);
        LbsOsaTrace_WriteLog(0xCu, __str, v20, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoCal\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 87, "lsim26_01HandleInitCalibReq", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim26_02InitCalibErrRsp");
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
    }

    v15 = gnssOsa_Calloc("lsim26_02InitCalibErrRsp", 78, 1, 0x50uLL);
    if (v15)
    {
      v16 = v15;
      v15[3] = 12;
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_CALIB_RSP =>GNM,Status,%u\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim26_02InitCalibErrRsp", v16[3]);
        LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
      }

      AgpsSendFsmMsg(131, 128, 8604420, v16);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitCalRsp\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 69, "lsim26_02InitCalibErrRsp", 1537);
      LbsOsaTrace_WriteLog(0xCu, __str, v22, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "lsim26_02InitCalibErrRsp");
      LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      goto LABEL_28;
    }
  }

  return 0;
}

double lsim26_03XoCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsXOCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim26_03XoCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsXOCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim26_03XoCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

uint64_t GNS_XOSetCallback(uint64_t a1)
{
  v2 = gnssOsa_Calloc("GNS_XOSetCallback", 124, 1, 0x18uLL);
  if (!v2)
  {
    return 6;
  }

  v2[3] = 13;
  *(v2 + 2) = a1;
  AgpsSendFsmMsg(131, 131, 8635139, v2);
  return 1;
}

uint64_t GNS_XOInitCalInd(const void *a1, const void *a2, const void *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_XOInitCalInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InitCal\n");
LABEL_17:
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 2, 1);
    goto LABEL_18;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CurrSrcCal\n");
    goto LABEL_17;
  }

  if (a3)
  {
    v8 = gnssOsa_Calloc("GNS_XOInitCalInd", 185, 1, 0x50uLL);
    if (v8)
    {
      v9 = v8;
      memcpy_s("GNS_XOInitCalInd", 195, v8 + 12, 0x2Cu, a1, 0x2CuLL);
      memcpy_s("GNS_XOInitCalInd", 196, v9 + 56, 0x12u, a2, 0x12uLL);
      memcpy_s("GNS_XOInitCalInd", 197, v9 + 74, 4u, a3, 4uLL);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_CALIB_RSP =>GNM,Status,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 77, "GNS_XOInitCalInd", *(v9 + 3));
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 3, 1);
      }

      AgpsSendFsmMsg(131, 128, 8604420, v9);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_XOInitCalInd");
        v14 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoInitCal\n", (*&g_MacClockTicksToMsRelation * v19), "LSM", 87, "GNS_XOInitCalInd", 1537);
        LbsOsaTrace_WriteLog(0xCu, __str, v20, 2, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "LSM", 73, "GNS_XOInitCalInd");
        LbsOsaTrace_WriteLog(0xCu, __str, v22, 4, 1);
      }

      return 6;
    }

    return v14;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AdcPreCal\n");
    goto LABEL_17;
  }

LABEL_18:
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "LSM", 73, "GNS_XOInitCalInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v17, 4, 1);
  }

  return 2;
}

uint64_t GNS_XOLearntCurveInd()
{
  v4 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx XoLearntCurve\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 87, "GNS_XOLearntCurveInd", 1026);
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 2, 1);
  }

  return 3;
}

uint64_t Is_GN_API_Set_Allowed(const char *a1)
{
  v1 = *p_api;
  if (v1 > 7 || ((0x93u >> v1) & 1) == 0)
  {
    return 1;
  }

  EvCrt_v("%s:  FAILED:  Not allowed when in %s Mode", a1, off_29EF27BD0[v1]);
  return 0;
}

BOOL API_Set_Inter_Chan_Bias_Model(unsigned __int16 a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 6)
  {
    EvCrt_d("API_Set_Inter_Chan_Bias_Model:  FAILED  Illegal ME RF Type", a2);
  }

  else
  {
    Init_Set_Inter_Chan_Bias(*(p_api + 72), a2);
  }

  return v2 < 6;
}

uint64_t API_Set_TSX_ClkCorr_Params(double a1, double a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >= 0xFA1)
    {
      v5 = 4000;
      EvLog_v("API_Set_TSX_ClkCorr_Params: Offset Unc %d capped to %d ppb");
LABEL_6:
      LOWORD(a3) = v5;
      goto LABEL_7;
    }

    if (a3 <= 0xAE)
    {
      v5 = 175;
      EvLog_v("API_Set_TSX_ClkCorr_Params: Offset Unc %d increased to %d ppb");
      goto LABEL_6;
    }
  }

LABEL_7:
  v6 = *(p_api + 72);
  *(v6 + 232) = a1;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  return 1;
}

BOOL API_Set_Config(uint64_t a1)
{
  v16[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *(p_api + 72);
    *(v2 + 24) = *(a1 + 12);
    *(v2 + 28) = *(a1 + 16);
    *(v2 + 72) = *(a1 + 17);
    v3 = *(a1 + 8);
    *(v2 + 12) = v3;
    *(v2 + 73) = 0;
    if (v3 == 1 || v3 == 2)
    {
      *(v2 + 73) = v3;
    }

    if (*a1 == 1)
    {
      *(v2 + 4) = 0x100000001;
    }

    else if (*a1)
    {
      *(v2 + 4) = 2;
    }

    else
    {
      *(v2 + 4) = 0;
      *(v2 + 8) = 0;
    }

    if (*(a1 + 32))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 66) = v4;
    API_Set_FixInterval(*(a1 + 34));
    *(v2 + 1012) = *(a1 + 36);
    *(v2 + 1020) = *(a1 + 44);
    *(v2 + 1052) = 60000 * *(a1 + 48);
    *(v2 + 1024) = *(a1 + 58);
    v5 = *(a1 + 60);
    if (v5 < 0x400)
    {
      LOWORD(v5) = 1930;
    }

    *(v2 + 1026) = v5;
    *(v2 + 41) = *(a1 + 28);
    *(v2 + 39) = *(a1 + 26);
    *(v2 + 31) = *(a1 + 18);
    *(v2 + 40) = *(a1 + 27);
    *(v2 + 1028) = *(a1 + 62);
    *(v2 + 43) = *(a1 + 30);
    *(v2 + 46) = *(a1 + 31);
    *(v2 + 68) = *(a1 + 4);
    v6 = *(a1 + 46);
    if (v6 == 255)
    {
      v7 = -1;
    }

    else
    {
      v7 = 60000 * v6;
    }

    *(v2 + 1060) = v7;
    *(v2 + 1120) = *(a1 + 88);
    *(v2 + 1132) = *(a1 + 96);
    *(v2 + 1134) = *(a1 + 98);
    g_Enable_Nav_Debug = *(a1 + 50);
    g_Enable_GNB_Debug = *(a1 + 52);
    g_Enable_Event_Log = *(a1 + 54);
    g_Enable_LCD_Debug = *(a1 + 56);
    v16[0] = 0.0;
    if (!R8_EQ((a1 + 64), v16) || (v15 = 0.0, !R8_EQ((a1 + 72), &v15)) || (v14 = 0, !R8_EQ((a1 + 80), &v14)))
    {
      v8 = *(p_api + 176);
      *(v8 + 27032) = *(a1 + 64) * 0.0174532925;
      *(v8 + 27040) = *(a1 + 72) * 0.0174532925;
      *(v8 + 27048) = *(a1 + 80);
      Geo2ECEF(v8 + 27032, &WGS84_Datum, (v8 + 27008));
      v9 = __sincos_stret(*(v8 + 27032));
      *(v8 + 27056) = v9;
      v10 = 1.0 / sqrt(v9.__sinval * v9.__sinval * -0.00669437999 + 1.0);
      v11 = *(v8 + 27048);
      v12 = v9.__cosval * (v11 + v10 * 6378137.0);
      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      *(v8 + 27080) = v12;
      *(v8 + 27072) = v11 + v10 * (v10 * v10) * 6335439.33;
    }
  }

  return a1 != 0;
}

uint64_t API_Set_FixInterval(int a1)
{
  v2 = *(p_api + 72);
  v3 = *(v2 + 952);
  if (!v3)
  {
    v4 = *(v2 + 948);
    if (a1 == v4)
    {
      return 1;
    }

    v5 = *p_api;
    if (*p_api <= 0xBu)
    {
      if (((1 << v5) & 0xE48) != 0)
      {
        v7 = *(p_api + 160);
        v8 = v7[117];
        v9 = v7[134];
        v10 = v7[112];
        if ((v9 + v8 - v10 - (*&g_MacClockTicksToMsRelation * mach_continuous_time())) > 99)
        {
          v11 = v7[134] + a1 - *(v2 + 948);
          EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int %d %d", *p_api, *(v2 + 948), a1);
          *(v2 + 948) = a1;
          v7[134] = v11;
          G5K_ME_enc_n(*(p_api + 352), v11, a1);
          GNSS_Write_GNB_Ctrl(*(p_api + 352));
          return 1;
        }

        v5 = *p_api;
        v4 = *(v2 + 948);
      }

      else if (((1 << v5) & 0x93) != 0)
      {
        v6 = 0;
LABEL_9:
        EvLog_v("API_Set_FixInterval:  GNSS_Exe_State NOT RUNNING(%d) Fix_Int %d %d", v5, v6, a1);
        *(v2 + 948) = a1;
        *(v2 + 952) = 0;
        return 1;
      }

      *(v2 + 952) = a1;
      EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int To Be Updated %d %d", v5, v4, a1);
      return 1;
    }

    EvCrt_Illegal_Default("API_Set_FixInterval", 754);
    v5 = *p_api;
    v6 = *(v2 + 952);
    goto LABEL_9;
  }

  if (a1 != v3)
  {
    EvLog_v("API_Set_FixInterval:  Fix_Int Update Pending %d %d", *(v2 + 952), a1);
    *(v2 + 952) = a1;
  }

  return 1;
}

BOOL API_Query_Config(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v1 = p_api;
    v2 = *(p_api + 72);
    v3 = *(v2 + 4);
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v2 + 68);
    *a1 = v5;
    *(a1 + 4) = v6;
    v7 = *(v2 + 24);
    *(a1 + 8) = *(v2 + 12);
    *(a1 + 12) = v7;
    *(a1 + 16) = *(v2 + 28);
    *(a1 + 17) = *(v2 + 72) == 1;
    *(a1 + 26) = *(v2 + 39);
    *(a1 + 27) = *(v2 + 40);
    *(a1 + 28) = *(v2 + 41);
    *(a1 + 18) = *(v2 + 31);
    *(a1 + 29) = *(v2 + 42);
    *(a1 + 31) = *(v2 + 46);
    *(a1 + 32) = *(v2 + 66) != 0;
    v8 = *(v1 + 72);
    v9 = *(v8 + 952);
    if (!v9)
    {
      v9 = *(v8 + 948);
    }

    *(a1 + 34) = v9;
    *(a1 + 36) = *(v2 + 1012);
    *(a1 + 44) = *(v2 + 1020);
    v10 = *(v2 + 1060);
    if (v10 == 0xFFFFFFFFLL)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 / 0xEA60;
    }

    *(a1 + 46) = v11;
    *(a1 + 48) = *(v2 + 1052) / 0xEA60u;
    *(a1 + 58) = *(v2 + 1024);
    *(a1 + 60) = *(v2 + 1026);
    v12 = *(v1 + 176);
    *(a1 + 64) = *(v12 + 27032) * 57.2957795;
    v13 = *(v12 + 27040) * 57.2957795;
    v14 = *(v2 + 1120);
    *(a1 + 96) = *(v2 + 1132);
    *(a1 + 97) = *(v2 + 1133);
    *(a1 + 98) = *(v2 + 1134);
    *(a1 + 50) = g_Enable_Nav_Debug;
    *(a1 + 52) = g_Enable_GNB_Debug;
    *(a1 + 54) = g_Enable_Event_Log;
    *(a1 + 56) = g_Enable_LCD_Debug;
    *(a1 + 72) = v13;
    *(a1 + 80) = *(v12 + 27048);
    *(a1 + 88) = v14;
  }

  return a1 != 0;
}

uint64_t API_Set_Inhib_SVID(BOOL *a1, BOOL *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = *(p_api + 72);
  v7 = *(p_api + 96);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 1);
  *(v6 + 253) = *a1;
  *(v6 + 285) = v8;
  *(v6 + 301) = v9;
  *(v6 + 269) = v10;
  v11 = *(a1 + 7);
  v13 = *(a1 + 4);
  v12 = *(a1 + 5);
  *(v6 + 349) = *(a1 + 6);
  *(v6 + 365) = v11;
  *(v6 + 317) = v13;
  *(v6 + 333) = v12;
  v15 = *(a1 + 9);
  v14 = *(a1 + 10);
  v16 = *(a1 + 8);
  *(v6 + 429) = *(a1 + 88);
  *(v6 + 397) = v15;
  *(v6 + 413) = v14;
  *(v6 + 381) = v16;
  v17 = 1;
  do
  {
    if (*(*(v6 + 432) + v4))
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v5 |= v18;
    v17 *= 2;
    ++v4;
  }

  while (v4 != 32);
  v19 = 0;
  v20 = 0;
  v21 = 1;
  do
  {
    if (*(*(v6 + 448) + v19))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 *= 2;
    ++v19;
  }

  while (v19 != 10);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    if (*(*(v6 + 440) + v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 *= 2;
    ++v23;
  }

  while (v23 != 24);
  v27 = 0;
  v28 = 0;
  v29 = 1;
  do
  {
    if (*(*(v6 + 456) + v27))
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v28 |= v30;
    v29 *= 2;
    ++v27;
  }

  while (v27 != 39);
  v31 = 0;
  v32 = 0;
  v33 = 1;
  do
  {
    if (*(*(v6 + 464) + v31))
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v32 |= v34;
    v33 *= 2;
    ++v31;
  }

  while (v31 != 37);
  v35 = 0;
  v36 = 0;
  v37 = *(v6 + 472);
  v38 = 1;
  do
  {
    if (*(v37 + v35))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v36 |= v39;
    v38 *= 2;
    ++v35;
  }

  while (v35 != 36);
  EvLog_v("API_Set_Inhib_SVID: G %x Q %x R %x S %X B %X E %X", v5, v20, v24, v28, v32, v36);
  v40 = 0;
  v41 = *(p_api + 56) + 33784;
  do
  {
    if (a1[v40])
    {
      if (v40 >= 0x8B)
      {
        v44 = 10;
        v42 = (v7 + 26872);
        while (v40 - 19 != *(v42 - 4))
        {
          v42 += 48;
          if (!--v44)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v42 = (v7 + 192 * v40 + 184);
      }

      *v42 = 0;
LABEL_41:
      v43 = 2;
LABEL_42:
      *(v41 + 20 * v40 + 12) = v43;
      goto LABEL_43;
    }

    v43 = a2[v40];
    if (v43 == 1)
    {
      goto LABEL_42;
    }

LABEL_43:
    ++v40;
  }

  while (v40 != 178);
  return 1;
}

uint64_t API_Set_Not_Broadcast_SVID(BOOL *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(p_api + 72);
  v4 = *(a1 + 3);
  v6 = *a1;
  v5 = *(a1 + 1);
  *(v3 + 512) = *(a1 + 2);
  *(v3 + 528) = v4;
  *(v3 + 480) = v6;
  *(v3 + 496) = v5;
  v7 = *(a1 + 7);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  *(v3 + 576) = *(a1 + 6);
  *(v3 + 592) = v7;
  *(v3 + 544) = v9;
  *(v3 + 560) = v8;
  v11 = *(a1 + 9);
  v10 = *(a1 + 10);
  v12 = *(a1 + 8);
  *(v3 + 656) = *(a1 + 88);
  *(v3 + 624) = v11;
  *(v3 + 640) = v10;
  *(v3 + 608) = v12;
  v13 = 1;
  do
  {
    if (*(*(v3 + 664) + v1))
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v2 |= v14;
    v13 *= 2;
    ++v1;
  }

  while (v1 != 32);
  v15 = 0;
  v16 = 0;
  v17 = 1;
  do
  {
    if (*(*(v3 + 680) + v15))
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v16 |= v18;
    v17 *= 2;
    ++v15;
  }

  while (v15 != 10);
  v19 = 0;
  v20 = 0;
  v21 = 1;
  do
  {
    if (*(*(v3 + 672) + v19))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v20 |= v22;
    v21 *= 2;
    ++v19;
  }

  while (v19 != 24);
  v23 = 0;
  v24 = 0;
  v25 = 1;
  do
  {
    if (*(*(v3 + 688) + v23))
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v24 |= v26;
    v25 *= 2;
    ++v23;
  }

  while (v23 != 39);
  v27 = 0;
  v28 = 0;
  v29 = 1;
  do
  {
    if (*(*(v3 + 696) + v27))
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v28 |= v30;
    v29 *= 2;
    ++v27;
  }

  while (v27 != 37);
  v31 = 0;
  v32 = 0;
  v33 = *(v3 + 704);
  v34 = 1;
  do
  {
    if (*(v33 + v31))
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v32 |= v35;
    v34 *= 2;
    ++v31;
  }

  while (v31 != 36);
  EvLog_v("API_Set_Not_Broadcast_SVID: G %x Q %x R %x S %X B %X E %X", v2, v16, v20, v24, v28, v32);
  return 1;
}

uint64_t API_Set_RTI_Bad_SV_List(BOOL *a1)
{
  v1 = 0;
  v2 = p_api;
  v3 = *(p_api + 72);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 1);
  *(v3 + 253) = *a1;
  *(v3 + 285) = v4;
  *(v3 + 301) = v5;
  *(v3 + 269) = v6;
  v7 = *(a1 + 7);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  *(v3 + 349) = *(a1 + 6);
  *(v3 + 365) = v7;
  *(v3 + 317) = v9;
  *(v3 + 333) = v8;
  v11 = *(a1 + 9);
  v10 = *(a1 + 10);
  v12 = *(a1 + 8);
  *(v3 + 429) = *(a1 + 88);
  *(v3 + 397) = v11;
  *(v3 + 413) = v10;
  *(v3 + 381) = v12;
  v13 = *(v2 + 56) + 33800;
  v14 = v3;
  do
  {
    if (*(v14 + 253) == 1)
    {
      *(v14 + 712) = 1;
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    *(v13 + v1) = v15;
    v1 += 20;
    ++v14;
  }

  while (v1 != 3560);
  v16 = *(v3 + 1040);
  if (v16 > 0)
  {
    Core_Save_Inhib_EE((v3 + 712), v16);
  }

  return 1;
}

uint64_t API_Get_Est_ME_TTick(void)
{
  v0 = *(p_api + 8);
  if (!*v0)
  {
    return 0;
  }

  v2 = v0[4];
  v1 = *v0;
  return v1 - v2 + (*&g_MacClockTicksToMsRelation * mach_continuous_time());
}

BOOL API_Get_FS_Pulse_TTick(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *(p_api + 8);
  *a3 = *v4;
  *a1 = v4[1];
  *a2 = v4[2];
  v5 = v4[4];
  *a4 = v5;
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 > 0x10000)
  {
    EvLog_v("API_Get_FS_Pulse_TTick:  FS_TTick_Fract = %u, out of range!", *a2);
    return 0;
  }

  v9 = *a3 - v6;
  v7 = v9 < 60001;
  if (g_Enable_Event_Log >= 4u)
  {
    EvLog_v("API_Get_FS_Pulse_TTick:  valid %d,  age %d,  (%u, %u, %u, %u)", v9 < 60001, *a3 - v6, *a3, v6, *a2, v5);
  }

  if (v9 < 60001 != v9 < 63001)
  {
    EvCrt_v("API_Get_FS_Pulse_TTick:  Pulse invalidated, %d > 60s old", v9);
  }

  return v7;
}

uint64_t API_Get_TM_FSP_OS_Time_ms_for_TTick(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  *v5 = 0;
  TM_FSP_Time = Core_Get_TM_FSP_Time(&v5[1], v5);
  result = 0;
  if (TM_FSP_Time)
  {
    if (v5[1])
    {
      v4 = v5[0] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      return v5[1] + a1 - v5[0];
    }
  }

  return result;
}

uint64_t API_Get_Num_SV_and_Clock_Unknowns(unsigned int *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(p_api + 88);
  v8 = v7 + 1496;
  do
  {
    v9 = *(v8 + 4 * v2 - 528);
    if (Is_Legal(v9) && *(v8 + v2) == 1)
    {
      v3 = (v3 + 1);
      if (v9 <= 2u)
      {
        if (!v9)
        {
          goto LABEL_17;
        }

        if (v9 == 1)
        {
          goto LABEL_15;
        }

        if (v9 == 2)
        {
          v5 = 1;
          goto LABEL_17;
        }
      }

      else if (v9 > 4u)
      {
        if (v9 == 6)
        {
          goto LABEL_17;
        }

        if (v9 == 5)
        {
LABEL_15:
          v6 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (v9 == 3)
        {
          goto LABEL_15;
        }

        if (v9 == 4)
        {
          v4 = 1;
          goto LABEL_17;
        }
      }

      EvCrt_Illegal_Default("API_Get_Num_SV_and_Clock_Unknowns", 1532);
    }

LABEL_17:
    ++v2;
  }

  while (v2 != 48);
  v10 = v6;
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v5)
  {
    v10 = v11;
  }

  v12 = v10 + (v4 & 1);
  if (v12 > 1)
  {
    if ((*(v7 + 462) & (v6 & v5) & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v12 - 3 > 0xFFFFFFFD)
    {
      goto LABEL_32;
    }

    v12 = 2;
LABEL_27:
    if (*(v7 + 463) & (v6 & v4))
    {
      if (v12 - 3 <= 0xFFFFFFFD)
      {
        v12 = 2;
        goto LABEL_30;
      }

LABEL_32:
      v12 = 1;
    }

    else
    {
LABEL_30:
      if (*(v7 + 464) & v5)
      {
        v12 -= v4 & 1;
      }
    }
  }

  if (*(v7 + 48) < 8)
  {
    ++v12;
  }

  *a1 = v12;
  return v3;
}

uint64_t API_Get_Fix_Reliability(void)
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = *(p_api + 88);
  v1 = *(p_api + 232);
  v7 = 0;
  Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(&v7);
  if (*(v0 + 760) <= 10.0)
  {
    v3 = -3;
  }

  else
  {
    v3 = -4;
  }

  v4 = v3 + Num_SV_and_Clock_Unknowns - v7;
  if (*(v1 + 22992) == 1 && (*(v1 + 23008) & 1) == 0 && *(v1 + 22996) == 1 && *(v1 + 23040) <= 160000.0 && (*(v1 + 23000) - 3) < 2 || *(v1 + 23848) == 1 && (*(v1 + 23864) & 1) == 0 && *(v1 + 23852) == 1 && *(v1 + 23896) <= 160000.0)
  {
    v4 += 2;
  }

  if (*(v1 + 23120) == 1 && (*(v1 + 23136) & 1) == 0 && *(v1 + 23124) == 1 && *(v1 + 23152) <= 160000.0 && (*(v1 + 23000) - 3) < 2)
  {
    ++v4;
  }

  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4 == 3)
  {
    v5 = 3;
  }

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

double *API_Get_Dbg_Constell_ME_Data(double *result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v43 = *MEMORY[0x29EDCA608];
  v7 = *(p_api + 104);
  v8 = *(p_api + 72);
  if (result <= 3)
  {
    if (result != 1)
    {
      if (result == 2)
      {
        if ((v8[32] & 1) == 0)
        {
          return result;
        }

        v9 = 24;
        v10 = -1;
        v11 = 414;
      }

      else
      {
        if ((v8[36] & 1) == 0)
        {
          return result;
        }

        v9 = 36;
        v10 = -1;
        v11 = 418;
      }

      goto LABEL_17;
    }

    if ((v8[31] & 1) == 0)
    {
      return result;
    }

    v9 = 32;
    v10 = -1;
    goto LABEL_12;
  }

  if (result == 4)
  {
    if ((v8[35] & 1) == 0)
    {
      return result;
    }

    v9 = 37;
    v10 = -1;
    v11 = 422;
    goto LABEL_17;
  }

  if (result == 5)
  {
    if ((v8[33] & 1) == 0)
    {
      return result;
    }

    v9 = 10;
    v10 = -193;
LABEL_12:
    v11 = 410;
LABEL_17:
    v12 = *(*(p_api + 160) + v11);
    goto LABEL_18;
  }

  if ((v8[34] & 1) == 0)
  {
    return result;
  }

  v12 = 0;
  v9 = 39;
  v10 = -120;
LABEL_18:
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *(a2 + 17) = v12;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  v42 = 0;
  do
  {
    if (*(v7 + v13 + 76) == result)
    {
      v16 = v10 + *(v7 + v13 + 78);
      if (v16 < v9)
      {
        v17 = *(v7 + v13 + 412);
        if (v17 > 9 || v17 == 8)
        {
          ++*(v41 + v16);
          ++*(a2 + 2);
          v19 = (v7 + v14);
          LOBYTE(a5) = *(v7 + v14 + 604);
          LOBYTE(a6) = *(v7 + v14 + 652);
          *&v20 = *&a6;
          v21 = 0x3FB0000000000000;
          v22 = *&a5 + *&v20 * 0.0625;
          *(v40 + v15) = v22;
          LOBYTE(v22) = *(v7 + v14 + 700);
          LOBYTE(v20) = *(v7 + v14 + 748);
          v23 = *&v22 + v20 * 0.0625;
          *(v39 + v15) = v23;
          if ((*a2 & 1) == 0)
          {
            *a2 = 1;
          }

          v24 = *(v7 + 2 * v14 + 316);
          v25 = (v24 >> 8) & 3;
          if (*(a2 + 4) < v25)
          {
            *(a2 + 4) = v25;
          }

          v26 = v7 + 844;
          if ((v24 & 8) != 0)
          {
            v26 = (v24 & 0x30) != 0 ? v7 + 940 : v7 + 844;
            if ((v24 & 0xC0) != 0)
            {
              v26 = v7 + 1036;
            }
          }

          v27 = *(v26 + 2 * v14);
          if (*(a2 + 8) < v27)
          {
            *(a2 + 8) = v27;
          }

          LOWORD(v23) = *(a2 + 10);
          v28 = *&v23;
          LOBYTE(v23) = v19[700];
          LOBYTE(v21) = v19[748];
          v29 = v21;
          v30 = *&v23 + v29 * 0.0625;
          if (v30 > v28)
          {
            *(a2 + 10) = v30;
            LOBYTE(v30) = v19[700];
            LOBYTE(v28) = v19[748];
            v28 = *&v28;
            v29 = 0.0625;
            v30 = *&v30 + v28 * 0.0625;
          }

          LOBYTE(v28) = v19[604];
          LOBYTE(v29) = v19[652];
          a6 = *&v28 + *&v29 * 0.0625;
          a5 = a6 - v30;
          if (a5 <= 6.0)
          {
            ++*(a2 + 14);
            if (a5 <= 3.0)
            {
              ++*(a2 + 12);
            }
          }

          ++v15;
        }
      }
    }

    ++v14;
    v13 += 4;
  }

  while (v14 != 48);
  v31 = 0;
  *(a2 + 16) = v15;
  do
  {
    if (*(v41 + v31) >= 2u)
    {
      ++*(a2 + 6);
    }

    ++v31;
  }

  while (v9 != v31);
  if (v15 > 0)
  {
    if (v15 >= 5)
    {
      v32 = 5;
    }

    else
    {
      v32 = v15;
    }

    v33 = (v15 - 1);
    VecSortAscR8(v40, 0, v15 - 1);
    v34 = v15 + ~v32;
    v35 = v15 - 1;
    v36 = v34;
    v37 = 0.0;
    do
    {
      v37 = v37 + *(v40 + v35--);
    }

    while (v35 > v34);
    *(a2 + 24) = v37 / v32;
    result = VecSortAscR8(v39, 0, v33);
    v38 = 0.0;
    do
    {
      v38 = v38 + *(v39 + v33--);
    }

    while (v33 > v36);
    *(a2 + 32) = v38 / v32;
  }

  return result;
}

void API_Get_Dbg_Constell_PE_Data(int a1, uint64_t a2)
{
  v84 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 56);
  v5 = *(p_api + 232);
  v6 = *(p_api + 72);
  v7 = *(p_api + 104);
  v8 = *(p_api + 40);
  memset(v83, 0, sizeof(v83));
  memset(v82, 0, 39);
  memset(v81, 0, 39);
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (v6[31] != 1)
      {
        return;
      }

      v9 = v4[6];
      v10 = v4[7];
      v71 = 32;
      v72 = -1;
      v65 = v4[8];
      goto LABEL_22;
    }

    if (a1 == 2)
    {
      if (v6[32] != 1)
      {
        return;
      }

      v9 = v4[2034];
      v10 = v4[2035];
      v65 = v4[2036];
      v4 += 1401;
      v72 = -1;
      v11 = 24;
    }

    else
    {
      if (v6[36] != 1)
      {
        return;
      }

      v9 = v4[2076];
      v10 = v4[2077];
      v65 = v4[2078];
      v4 += 2070;
      v72 = -1;
      v11 = 36;
    }

LABEL_21:
    v71 = v11;
LABEL_22:
    v14 = v8 + 4096;
    v69 = *v4;
    if (*(v8 + 6132))
    {
      v15 = 0;
      do
      {
        LODWORD(v80[0]) = 0;
        v16 = LongPrnIdx_To_ShortPrnIdx((*(v8 + 4174 + 2 * v15) - 1), v80);
        if (LODWORD(v80[0]) == a1)
        {
          ++*(a2 + 112);
          if ((v9[v16] & 1) != 0 || *(v10 + v16) == 1)
          {
            ++*(a2 + 113);
          }
        }

        ++v15;
      }

      while (v15 < *(v8 + 6132));
    }

    if (*(v8 + 6135))
    {
      v17 = 0;
      v18 = v8 + 4886;
      do
      {
        LODWORD(v80[0]) = 0;
        LongPrnIdx_To_ShortPrnIdx((*(v18 + 2 * v17) - 1), v80);
        if (LODWORD(v80[0]) == a1)
        {
          ++*(a2 + 114);
        }

        ++v17;
      }

      while (v17 < *(v14 + 2039));
    }

    v66 = v10;
    v70 = v9;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v74 = 0;
    v73 = 0;
    memset(v80, 0, sizeof(v80));
    memset(v79, 0, sizeof(v79));
    memset(v78, 0, sizeof(v78));
    memset(v77, 0, sizeof(v77));
    memset(v76, 0, sizeof(v76));
    v23 = -384;
    v24 = 14112;
    v25 = 2960;
    v26 = 8536;
    memset(v75, 0, sizeof(v75));
    v28 = v71;
    v27 = v72;
    v67 = v7;
    v68 = v5;
    while (1)
    {
      if (*(v7 + v19 + 76) != a1)
      {
        goto LABEL_72;
      }

      if (*(v7 + v19 + 412) < 10)
      {
        goto LABEL_72;
      }

      v29 = v27 + *(v7 + v19 + 78);
      if (v29 >= v28)
      {
        goto LABEL_72;
      }

      if ((*a2 & 1) == 0)
      {
        *a2 = 1;
      }

      if ((v70[v29] & 1) != 0 || *(v66 + v29) == 1)
      {
        ++*(a2 + 1);
      }

      else if (*(v65 + v29) == 1)
      {
        ++*(a2 + 2);
      }

      if (*(v69 + v29) == 1)
      {
        ++*(a2 + 3);
      }

      else
      {
        ++*(a2 + 4);
      }

      if (*(v5 + v25) == 1)
      {
        *(v80 + v73) = fabs(*(v5 + v23 + 5600));
        *(v77 + v73++) = fabs(*(v5 + v23 + 8000));
      }

      v30 = *(v5 + v19 + 3056);
      if ((v30 - 1) >= 0x1D)
      {
        if (!v30)
        {
          goto LABEL_56;
        }

        v61 = v21;
        v62 = v20;
        v60 = v22;
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        v22 = v60;
        v21 = v61;
        v20 = v62;
        v28 = v71;
        v27 = v72;
      }

      if (v22 <= 15)
      {
        v31 = *(v5 + v19 + 3056);
        if (v31 >= 0x1D)
        {
          v33 = v20;
          v34 = v21;
          v35 = v22;
          gn_report_assertion_failure("SV_Meas_Edit_Char");
          LODWORD(v22) = v35;
          v21 = v34;
          v7 = v67;
          v5 = v68;
          v20 = v33;
          v28 = v71;
          v27 = v72;
          v32 = 120;
        }

        else
        {
          v32 = aGhkmnpqrstvyac_0[v31];
        }

        *(a2 + 9 + v22) = v32;
        v22 = (v22 + 1);
      }

LABEL_56:
      if (*(v5 + v26) == 1)
      {
        *(v79 + v74) = fabs(*(v5 + v23 + 11560));
        *(v76 + v74) = fabs(*(v5 + v23 + 13576));
        LODWORD(v74) = v74 + 1;
      }

      v36 = v5 + v19;
      v37 = *(v5 + v19 + 8632);
      if ((v37 - 1) >= 0x1D)
      {
        if (!v37)
        {
          goto LABEL_64;
        }

        v63 = v20;
        v50 = v21;
        v51 = v22;
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        v22 = v51;
        v21 = v50;
        v7 = v67;
        v5 = v68;
        v20 = v63;
        v28 = v71;
        v27 = v72;
      }

      if (v21 <= 15)
      {
        v38 = *(v36 + 8632);
        if (v38 >= 0x1D)
        {
          v40 = v20;
          v41 = v21;
          v42 = v22;
          gn_report_assertion_failure("SV_Meas_Edit_Char");
          v22 = v42;
          LODWORD(v21) = v41;
          v7 = v67;
          v5 = v68;
          v20 = v40;
          v28 = v71;
          v27 = v72;
          v39 = 120;
        }

        else
        {
          v39 = aGhkmnpqrstvyac_0[v38];
        }

        *(a2 + 25 + v21) = v39;
        v21 = (v21 + 1);
      }

LABEL_64:
      if (*(v5 + v24) == 1)
      {
        *(v78 + HIDWORD(v74)) = fabs(*(v5 + v23 + 17136));
        *(v75 + HIDWORD(v74)) = fabs(*(v5 + v23 + 19152));
        ++HIDWORD(v74);
      }

      v43 = v5 + v19;
      v44 = *(v5 + v19 + 14208);
      if ((v44 - 1) < 0x1D)
      {
        goto LABEL_67;
      }

      if (v44)
      {
        v64 = v20;
        v52 = v21;
        v53 = v22;
        EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
        v22 = v53;
        v21 = v52;
        v7 = v67;
        v5 = v68;
        v20 = v64;
        v28 = v71;
        v27 = v72;
LABEL_67:
        if (v20 <= 15)
        {
          v45 = *(v43 + 14208);
          if (v45 >= 0x1D)
          {
            v47 = v20;
            v48 = v21;
            v49 = v22;
            gn_report_assertion_failure("SV_Meas_Edit_Char");
            v22 = v49;
            v21 = v48;
            v7 = v67;
            v5 = v68;
            LODWORD(v20) = v47;
            v28 = v71;
            v27 = v72;
            v46 = 120;
          }

          else
          {
            v46 = aGhkmnpqrstvyac_0[v45];
          }

          *(a2 + 41 + v20) = v46;
          v20 = (v20 + 1);
        }
      }

LABEL_72:
      v19 += 4;
      ++v24;
      ++v25;
      v23 += 8;
      ++v26;
      if (v19 == 192)
      {
        if (v73)
        {
          *(a2 + 6) = v73;
          VecMedian8(v80, v73);
          *(a2 + 64) = v54;
          VecMedian8(v77, v73);
          *(a2 + 88) = v55;
        }

        if (v74)
        {
          *(a2 + 7) = v74;
          VecMedian8(v79, v74);
          *(a2 + 72) = v56;
          VecMedian8(v76, v74);
          *(a2 + 96) = v57;
        }

        if (HIDWORD(v74))
        {
          *(a2 + 8) = BYTE4(v74);
          VecMedian8(v78, SHIDWORD(v74));
          *(a2 + 80) = v58;
          VecMedian8(v75, SHIDWORD(v74));
          *(a2 + 104) = v59;
        }

        return;
      }
    }
  }

  if (a1 == 4)
  {
    if (v6[35] != 1)
    {
      return;
    }

    v9 = v4[3058];
    v10 = v4[3059];
    v65 = v4[3060];
    v4 += 3052;
    v72 = -1;
    v11 = 37;
    goto LABEL_21;
  }

  if (a1 == 5)
  {
    if (v6[33] != 1)
    {
      return;
    }

    v9 = v4[1069];
    v10 = v4[1070];
    v65 = v4[1071];
    v4 += 1063;
    v72 = -193;
    v11 = 10;
    goto LABEL_21;
  }

  if (v6[34] != 1)
  {
    return;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(v8 + 6316 + v12);
    if (v13 >= 3)
    {
      break;
    }

    v83[v12] = 0;
    *(v82 + v12) = 0x10100u >> (8 * (v13 & 0x1F));
    *(v81 + v12++) = 0;
    if (v12 == 39)
    {
      v4 += 2068;
      v9 = v83;
      v10 = v82;
      v65 = v81;
      v72 = -120;
      v11 = 39;
      goto LABEL_21;
    }
  }

  EvCrt_Illegal_Default("API_Get_Dbg_Constell_PE_Data", 2481);
}

void API_Get_Dbg_Constell_Orb_Data(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 56);
  v3 = *(p_api + 72);
  v4 = *(p_api + 40);
  *(a2 + 8) = 0u;
  *a2 = 0;
  *(a2 + 24) = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, 39);
  memset(v20, 0, 39);
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (v3[31] != 1)
      {
        return;
      }

      v5 = v2[6];
      v6 = v2[7];
      v8 = 32;
      v9 = 432;
      v7 = v2[8];
    }

    else if (a1 == 2)
    {
      if (v3[32] != 1)
      {
        return;
      }

      v5 = v2[2034];
      v6 = v2[2035];
      v7 = v2[2036];
      v2 += 1401;
      v8 = 24;
      v9 = 440;
    }

    else
    {
      if (v3[36] != 1)
      {
        return;
      }

      v5 = v2[2076];
      v6 = v2[2077];
      v7 = v2[2078];
      v2 += 2070;
      v8 = 36;
      v9 = 472;
    }

    goto LABEL_21;
  }

  if (a1 == 4)
  {
    if (v3[35] != 1)
    {
      return;
    }

    v5 = v2[3058];
    v6 = v2[3059];
    v7 = v2[3060];
    v2 += 3052;
    v8 = 37;
    v9 = 464;
    goto LABEL_21;
  }

  if (a1 == 5)
  {
    if (v3[33] != 1)
    {
      return;
    }

    v5 = v2[1069];
    v6 = v2[1070];
    v7 = v2[1071];
    v2 += 1063;
    v8 = 10;
    v9 = 448;
LABEL_21:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *v2;
    v19 = *&v3[v9];
    do
    {
      if (v5[v17] == 1)
      {
        v16 |= 1 << v17;
        *(a2 + 8) = v16;
      }

      if (*(v7 + v17) == 1)
      {
        v15 |= 1 << v17;
        *(a2 + 24) = v15;
      }

      if (*(v18 + v17) == 1)
      {
        v14 |= 1 << v17;
        *(a2 + 32) = v14;
      }

      if (*(v6 + v17) == 1)
      {
        v13 |= 1 << v17;
        *(a2 + 16) = v13;
      }

      if (*(v19 + v17) == 1)
      {
        *(a2 + 40) |= 1 << v17;
      }

      ++v17;
    }

    while (v8 != v17);
    if (v16 || v15 || v13 || *(a2 + 40))
    {
      *a2 = 1;
    }

    return;
  }

  if (v3[34] == 1)
  {
    v10 = 0;
    v11 = v4 + 6316;
    while (1)
    {
      v12 = *(v11 + v10);
      if (v12 >= 3)
      {
        break;
      }

      v22[v10] = 0;
      *(v21 + v10) = 0x10100u >> (8 * (v12 & 0x1F));
      *(v20 + v10++) = 0;
      if (v10 == 39)
      {
        v2 += 2068;
        v7 = v20;
        v6 = v21;
        v5 = v22;
        v8 = 39;
        v9 = 456;
        goto LABEL_21;
      }
    }

    EvCrt_Illegal_Default("API_Get_Dbg_Constell_Orb_Data", 2764);
  }
}

uint64_t API_Get_UTC_Cor(char a1, double *a2)
{
  v3 = *(p_api + 48);
  v4 = *(p_api + 56);
  v5 = *(v4 + 8444);
  if ((v5 - 1) > 5)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v6 = *(v4 + 8458);
    if (v6 >= 18)
    {
LABEL_4:
      if (*(v3 + 64) == 1 && (v7 = *(v3 + 66), v7 >= 1))
      {
        UTC_Leap_Second_For_GLON_Day_4yrBlk = Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(v7, *(v3 + 68), *(v3 + 72));
        if (UTC_Leap_Second_For_GLON_Day_4yrBlk == -99)
        {
          LOBYTE(v6) = 18;
        }

        else
        {
          LOBYTE(v6) = UTC_Leap_Second_For_GLON_Day_4yrBlk;
        }

LABEL_9:
        v9 = 1;
      }

      else
      {
        if (*(v3 + 5) == 1 && (v10 = *(v3 + 16), v10 >= 1025))
        {
          v11 = v10;
          v12 = &byte_299761B32;
          v13 = 8;
          while (v11 < *(v12 - 3) || v11 >= *(v12 + 3))
          {
            v12 += 12;
            if (!--v13)
            {
              goto LABEL_39;
            }
          }

          LOBYTE(v6) = *v12;
          if (*v12 != 157)
          {
            goto LABEL_9;
          }

LABEL_39:
          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        LOBYTE(v6) = 18;
      }

      v28 = *(v4 + 8458);
      if (v28 != v6)
      {
        EvLog_v("API_Get_UTC_Cor:  Default %d sec GPS-UTC Correction updated from %d sec", v6, v28);
        *(v4 + 8458) = v6;
        *(v4 + 8461) = v6;
        v4 = *(p_api + 56);
      }

      *(v4 + 8444) = 1;
      goto LABEL_44;
    }

LABEL_24:
    v9 = 1;
LABEL_44:
    v27 = v6;
LABEL_45:
    *a2 = v27;
    return v9;
  }

  v14 = v5 - 4;
  if (*(v3 + 5) != 1 || v14 >= 3)
  {
    LOBYTE(v6) = *(v4 + 8458);
    goto LABEL_24;
  }

  v16 = (*(v3 + 24) - *(v3 + 32) + 0.0005);
  v17 = *(v3 + 16);
  v18 = *(v4 + 8459);
  v19 = v17 - 127;
  v20 = v18 | 0x400;
  if (v17 - 127 > (v18 | 0x400))
  {
    v20 = v17 - 127;
  }

  v21 = (v20 - v18 - 769) & 0x1FFFF00 | v18;
  v22 = v16 + 604800 * v17;
  if (*(v4 + 8461) >= *(v4 + 8458))
  {
    v23 = *(v4 + 8458);
  }

  else
  {
    v23 = *(v4 + 8461);
  }

  if (86400 * *(v4 + 8460) - v22 + v23 + 604800 * v21 + 619315200 <= 0)
  {
    v24 = *(v4 + 8461);
  }

  else
  {
    v24 = *(v4 + 8458);
  }

  v25 = v24;
  *a2 = v25;
  if ((a1 & 1) == 0)
  {
    v26 = *(v4 + 8457);
    if (v19 <= (v26 | 0x400))
    {
      v19 = v26 | 0x400;
    }

    v27 = v25 + *(v4 + 8452) * 9.31322575e-10 + *(v4 + 8448) * 8.8817842e-16 * (v22 - (*(v4 + 8456) << 12) - 604800 * ((v19 - v26 - 769) & 0x1FFFF00 | v26) - 619315200);
    v9 = 1;
    goto LABEL_45;
  }

  return 1;
}

int *API_Get_Next_Leap_Second(int *result, signed __int8 *a2, int *a3)
{
  v3 = p_api;
  v4 = *(p_api + 48);
  v5 = *(p_api + 56);
  *result = 0;
  *a2 = 0;
  *a3 = 0x7FFFFFFF;
  if (*(v4 + 5) == 1 && *v4 >= 1 && (*(*(v3 + 56) + 8444) - 4) <= 2)
  {
    v6 = (v5 + 0x2000);
    v7 = v6[269];
    v8 = v6[266];
    if (v7 != v8)
    {
      v11 = result;
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = *(v4 + 16);
      v15 = v6[267];
      v16 = v6[268];
      result = Is_Future_Leap_Sec_Date_Not_Valid(v14, 1, v15, v6[268]);
      if ((result & 1) == 0)
      {
        v17 = v14 - 127;
        if (v14 - 127 <= (v15 | 0x400))
        {
          v17 = v15 | 0x400;
        }

        v18 = 604800 * ((v17 - v15 - 769) & 0x1FFFF00 | v15) + 86400 * v16 + 619315200;
        *v11 = v18;
        v19 = v8;
        if (v7 < v8)
        {
          v19 = v7;
        }

        *a3 = v19 - (v12 - v13 + 0.0005) - 604800 * v14 + v18;
        *v11 += v19;
        *a2 = v7 - v8;
      }
    }
  }

  return result;
}

uint64_t API_Get_Nav_Data(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v356 = *MEMORY[0x29EDCA608];
  v5 = p_api;
  v6 = *(p_api + 88);
  v299 = *(p_api + 72);
  v7 = *(p_api + 104);
  v8 = *(p_api + 328);
  v9 = *(p_api + 232);
  v10 = *(p_api + 176);
  v11 = *(p_api + 56);
  v273 = *(p_api + 48);
  v12 = *(p_api + 160);
  bzero(v1, 0x18C8uLL);
  bzero(v3, 0x30A8uLL);
  if (*(*(v5 + 88) + 344) > 600.0)
  {
    return 0;
  }

  v13 = 0;
  v289 = v11 + 33552;
  v274 = (v11 + 8458);
  v294 = v9 + 2840;
  v295 = v10;
  v280 = (v12 + 529);
  v281 = (v6 + 856);
  v279 = v8 + 5;
  v319 = v8 + 520;
  v305 = v8 + 512;
  v303 = v8 + 496;
  v284 = v8;
  v302 = v8 + 552;
  v297 = v9 + 92;
  v276 = v9 + 93;
  v277 = v10 + 175;
  v275 = v9 + 94;
  v14 = v11 + 16336;
  v317 = v7 + 79;
  v15 = (v7 + 76);
  v315 = v7 + 604;
  v313 = v7 + 652;
  v311 = v7 + 700;
  v278 = vdupq_n_s64(0x3E2CA726EB25F9DBuLL);
  v307 = v7 + 268;
  v309 = v7 + 748;
  v16 = v299;
  v323 = v6 + 968;
  v321 = v6 + 1160;
  v301 = v6 + 1496;
  v17 = *(v6 + 32);
  v282 = v12;
  v283 = v9;
  v285 = v4;
  v286 = v6;
  v287 = v11;
  v288 = v15;
  while (2)
  {
    v292 = v13;
    v293 = v17;
    v18 = *(v6 + 36);
    v4[1] = v18;
    v3[1] = v18;
    v19 = *(v6 + 48);
    *(v4 + 8) = v19 > 0;
    if (v19 < 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v6 + 52);
    }

    *(v4 + 9) = v20 & 1;
    *(v4 + 12) = *(v6 + 54);
    v21 = *(v6 + 40);
    *(v4 + 4) = v21;
    *(v4 + 5) = v21;
    *(v4 + 6) = *(v6 + 144);
    *(v4 + 7) = *(v6 + 168);
    *(v4 + 12) = *(v6 + 208) * 57.2957795;
    *(v4 + 13) = *(v6 + 216) * 57.2957795;
    v22 = *(v6 + 224);
    *(v4 + 14) = v22;
    *(v4 + 15) = v22 - *(v6 + 232);
    *(v4 + 9) = *(v6 + 72);
    *(v4 + 10) = *(v6 + 80);
    *(v4 + 11) = *(v6 + 88);
    v23 = 952;
    if (!*(v16 + 66))
    {
      v23 = 352;
    }

    v24 = 960;
    if (!*(v16 + 66))
    {
      v24 = 360;
    }

    v25 = 936;
    if (!*(v16 + 66))
    {
      v25 = 336;
    }

    *(v4 + 16) = *(v6 + v23);
    *(v4 + 17) = *(v6 + v24);
    *(v4 + 18) = -*(v6 + v25);
    v26 = *(v6 + 848);
    if (v26 >= 9499050.0)
    {
      v27 = g_TOW_stat_Sigma_Table[v19];
    }

    else
    {
      v27 = v26 * 0.00000000333564095;
    }

    *(v4 + 19) = v27;
    v28.f64[0] = *(v6 + 840);
    v28.f64[1] = *(v6 + 888);
    *(v4 + 10) = vmulq_f64(v28, v278);
    *(v4 + 11) = *(v6 + 800);
    *(v4 + 24) = *(v6 + 824);
    *(v4 + 50) = *(v6 + 896);
    *(v4 + 27) = *(v6 + 912);
    *(v4 + 14) = *v281;
    v28.f64[0] = *(v6 + 880);
    *(v4 + 30) = *&v28.f64[0];
    *(v4 + 31) = *(v6 + 1984);
    if (v28.f64[0] > 360.0)
    {
      *(v4 + 30) = 0x408F380000000000;
    }

    *(v4 + 32) = *(v6 + 784);
    *(v4 + 33) = *(v6 + 760);
    *(v4 + 17) = *(v6 + 768);
    v29 = *(p_api + 104);
    v30 = *(p_api + 48);
    v31 = *(p_api + 56);
    v32 = *(p_api + 232);
    if (*(v30 + 5) == 1)
    {
      v33 = *(p_api + 72);
      v34 = *(v30 + 16);
      v35 = v34 < *(v33 + 1028);
      if (*v30 >= 9 && *(v33 + 1040) > *(v30 + 24) + 604800 * v34)
      {
        v35 |= 2u;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v32 + 32);
    if (v36 > 100.0 && *(v32 + 12) > 8)
    {
      v35 |= 4u;
    }

    if (v36 < -100.0 && *(v32 + 12) > 8)
    {
      v35 |= 8u;
    }

    v291 = v35;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = (v29 + 844);
    v41 = v29 + 940;
    do
    {
      if (*(v41 + 4 * v37 - 528) >= 10 && *v40 >= 0xC8u)
      {
        v42 = *(v41 + v37 - 336);
        v43 = *(v41 + v37 - 240);
        v44 = v42 <= 0x2C ? v38 : v38 + 1;
        v45 = v43 - v42;
        v46 = v43 <= 0x2C && v45 <= 5;
        v47 = v46 ? v39 : v39 + 1;
        if (v40[48] >= 0xC8u)
        {
          v39 = v47;
          v38 = v44;
        }
      }

      ++v37;
      ++v40;
    }

    while (v37 != 48);
    v48 = 0;
    v49 = 0;
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v51 = veorq_s8(*(v31 + 8466), v50);
    v52 = veorq_s8(*(v31 + 8482), v50);
    v53 = vaddl_high_u8(v51, v52);
    v54 = vaddl_u8(*v51.i8, *v52.i8);
    v290 = vaddvq_s32(vaddq_s32(vaddl_u16(*v54.i8, *v53.i8), vaddl_high_u16(v54, v53)));
    do
    {
      v49 += *(v31 + 39124 + v48++);
    }

    while (v48 != 178);
    v55 = 0;
    v56 = 0;
    v57 = *(p_api + 88) + 968;
    do
    {
      v58 = *(v57 + v55);
      if (!Is_Legal(v58))
      {
        goto LABEL_66;
      }

      if (v58 <= 3u)
      {
        switch(v58)
        {
          case 1u:
            v61 = BYTE2(v58) - 1;
            if (*(*(v31 + 48) + v61) != 1)
            {
              goto LABEL_66;
            }

            v62 = v31 + 104;
LABEL_64:
            v60 = Is_GPS_BinEph_Real(v62 + 108 * v61);
            break;
          case 2u:
            goto LABEL_66;
          case 3u:
            v59 = BYTE2(v58) - 1;
            if (*(*(v31 + 16608) + v59) != 1)
            {
              goto LABEL_66;
            }

            v60 = Is_GAL_IntEph_Real(v31 + 16736 + 88 * v59);
            break;
          default:
            goto LABEL_57;
        }

LABEL_65:
        v56 += !v60;
        goto LABEL_66;
      }

      if (v58 == 4)
      {
        v63 = BYTE2(v58) - 1;
        if (*(*(v31 + 24464) + v63) != 1)
        {
          goto LABEL_66;
        }

        v60 = Is_BDS_IntEph_Real(v31 + 24520 + 100 * v63);
        goto LABEL_65;
      }

      if (v58 != 5)
      {
        if (v58 == 6)
        {
          goto LABEL_66;
        }

LABEL_57:
        EvCrt_Illegal_Default("API_Get_Spoofing_Flags", 2160);
        goto LABEL_66;
      }

      v61 = BYTE2(v58) - 193;
      if (*(*(v31 + 8552) + v61) == 1)
      {
        v62 = v31 + 8608;
        goto LABEL_64;
      }

LABEL_66:
      v55 += 4;
    }

    while (v55 != 192);
    v64 = v291 | 0x10;
    if (v38 <= 2)
    {
      v64 = v291;
    }

    if (v39 > 2)
    {
      v64 |= 0x20u;
    }

    if (v290 > 2)
    {
      v64 |= 0x100u;
    }

    if (v49 > 2)
    {
      v64 |= 0x200u;
    }

    if (v56 > 2)
    {
      v64 |= 0x400u;
    }

    if (*(v31 + 8464))
    {
      v64 |= 0x1000u;
    }

    if (*(v31 + 8465))
    {
      v64 |= 0x2000u;
    }

    v4 = v285;
    v285[72] = v64;
    v285[73] = *(v299 + 48);
    v65 = *(p_api + 88);
    v66 = *(v65 + 4);
    if (v66 > 3)
    {
      v67 = v287;
      v68 = v288;
      v69 = v277;
      if (v66 == 4)
      {
        v70 = *(v65 + 17) == 0;
        v66 = 2;
      }

      else
      {
        if (v66 != 5)
        {
          goto LABEL_88;
        }

        v70 = *(v65 + 17) == 0;
        v66 = 4;
      }

      if (!v70)
      {
        ++v66;
      }
    }

    else
    {
      v67 = v287;
      v68 = v288;
      v69 = v277;
      if ((v66 - 1) < 3)
      {
        v66 = 1;
        goto LABEL_92;
      }

      if (v66)
      {
LABEL_88:
        EvCrt_Illegal_Default("API_Get_Fix_Type", 1657);
        v66 = 0;
        v65 = *(p_api + 88);
      }
    }

LABEL_92:
    v285[74] = v66;
    v330[0] = 0;
    Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(v330);
    v72 = Num_SV_and_Clock_Unknowns - v330[0];
    if (Num_SV_and_Clock_Unknowns - v330[0] < 3)
    {
      if (v72 == 2)
      {
        goto LABEL_96;
      }

      if (v72 >= 1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (*(v65 + 776) < 10.0)
      {
        v73 = 4;
        goto LABEL_103;
      }

LABEL_96:
      if (*(v65 + 760) < 10.0)
      {
        v73 = 3;
        goto LABEL_103;
      }

LABEL_99:
      if (*(v65 + 784) < 10.0 && *(v65 + 4))
      {
        v73 = 2;
        goto LABEL_103;
      }
    }

    v73 = Num_SV_and_Clock_Unknowns > 0;
LABEL_103:
    v285[75] = v73;
    v285[76] = API_Get_Fix_Reliability();
    v76 = p_api;
    v77 = *(p_api + 88);
    if (*(v77 + 19) == 1)
    {
      v78 = *(v77 + 12);
      if (v78)
      {
        if (*(v77 + 896) > 30000.0)
        {
          goto LABEL_106;
        }

        if (*(v77 + 476) == 1 && (*(v77 + 492) & 1) != 0)
        {
          v78 = 3;
        }

        else if (*(v77 + 16))
        {
          v78 = 2;
        }

        else
        {
          v78 = 1;
        }
      }
    }

    else
    {
LABEL_106:
      v78 = 0;
    }

    v285[77] = v78;
    v79 = *(v76 + 48);
    v80 = 2 * (*(v77 + 4) != 0);
    if (*v79 <= 8)
    {
      v81 = v79[21];
      if (v81)
      {
        if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v81) < 300000)
        {
          v80 |= 4u;
        }
      }
    }

    if (*(v77 + 408) == 1)
    {
      v82 = v80 | 8;
    }

    else
    {
      v82 = v80;
    }

    if (*(v77 + 396) == 1)
    {
      v82 |= 0x10u;
    }

    if (*(v77 + 392) == 1)
    {
      v83 = v82 | 0x20;
    }

    else
    {
      v83 = v82;
    }

    if (*(v77 + 416) == 1)
    {
      v84 = v83 | 0x40;
      v83 |= 0x80u;
      if (*(v77 + 420) != 1)
      {
        v83 = v84;
      }
    }

    v85 = 0;
    if (*(v77 + 524))
    {
      v83 |= 0x100u;
    }

    if (*(v77 + 540))
    {
      v83 |= 0x200u;
    }

    if (*(v77 + 556))
    {
      v83 |= 0x400u;
    }

    if (*(v77 + 572))
    {
      v83 |= 0x800u;
    }

    if (*(v77 + 668))
    {
      v83 |= 0x1000u;
    }

    if (*(v77 + 604))
    {
      v83 |= 0x2000u;
    }

    if (*(v77 + 588))
    {
      v83 |= 0x4000u;
    }

    if (*(v77 + 732))
    {
      v83 |= 0x8000u;
    }

    if (*(v77 + 684))
    {
      v83 |= 0x10000u;
    }

    if (*(v77 + 700))
    {
      v83 |= 0x20000u;
    }

    if (*(v77 + 716))
    {
      v83 |= 0x40000u;
    }

    if (*(v77 + 508))
    {
      v83 |= 0x1000000u;
    }

    if (*(v77 + 492))
    {
      v83 |= 0x2000000u;
    }

    if (*(v77 + 476))
    {
      v83 |= 0x4000000u;
    }

    if (*(v77 + 652))
    {
      v83 |= 0x80000u;
    }

    v6 = v286;
    while (*(*(p_api + 72) + 253 + v85) != 1 || *(*(p_api + 32) + v85) < 1)
    {
      if (++v85 == 178)
      {
        goto LABEL_158;
      }
    }

    v83 |= 0x10000000u;
LABEL_158:
    v86 = 0;
    while (*(*(p_api + 56) + 38768 + v86) != 1)
    {
      if (++v86 == 178)
      {
        goto LABEL_163;
      }
    }

    v83 |= 0x20000000u;
LABEL_163:
    if (v83 <= 1)
    {
      v87 = 1;
    }

    else
    {
      v87 = v83;
    }

    v285[78] = v87;
    *(v285 + 316) = 2;
    v88 = 400.0;
    if (sqrt(*(v285 + 26) * *(v285 + 26) + *(v285 + 25) * *(v285 + 25)) >= 400.0)
    {
      goto LABEL_190;
    }

    v89 = v285[75];
    if (!(v89 | v87 & 2))
    {
      goto LABEL_190;
    }

    v90 = v285[76];
    if (!v90)
    {
      goto LABEL_190;
    }

    v91 = v89 >= 3;
    v92 = v89 - 3;
    if (v91)
    {
      if (v92 >= 2)
      {
        EvCrt_Illegal_Default("API_Get_Nav_Data", 3550);
        v90 = v285[76];
        goto LABEL_180;
      }

      v93 = 0;
    }

    else
    {
LABEL_180:
      v93 = 1;
    }

    if ((v90 - 2) >= 3)
    {
      if (v90 != 1)
      {
        EvCrt_Illegal_Default("API_Get_Nav_Data", 3565);
      }
    }

    else if ((v93 & 1) == 0)
    {
      *(v285 + 317) = 1;
    }

    v94 = v285[75];
    if (v94 - 2 < 3)
    {
LABEL_189:
      *(v285 + 318) = 1;
      goto LABEL_190;
    }

    if (v94 >= 2)
    {
      EvCrt_Illegal_Default("API_Get_Nav_Data", 3588);
      if ((v87 & 2) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_189;
    }

    if ((v87 & 2) != 0)
    {
      goto LABEL_189;
    }

LABEL_190:
    *(v3 + 73) = 0;
    *(v3 + 75) = 0;
    *(v3 + 38) = *(v282 + 520);
    HIDWORD(v95) = *(v282 + 522);
    LODWORD(v95) = HIDWORD(v95);
    *(v3 + 78) = v95 >> 16;
    *(v3 + 82) = *v280;
    *(v3 + 43) = *(v299 + 250);
    *(v3 + 88) = *(v282 + 527);
    *(v3 + 89) = *(v282 + 440);
    *(v3 + 45) = *(v282 + 444);
    *(v3 + 92) = *(v282 + 464);
    *(v3 + 94) = 0;
    *(v3 + 101) = 0;
    *(v3 + 14) = *(v299 + 96);
    *(v3 + 15) = *(v299 + 176);
    *(v3 + 16) = *(v299 + 232);
    v96 = *(v299 + 208);
    *(v3 + 17) = v96;
    *(v3 + 18) = 0;
    API_Get_Dbg_Constell_ME_Data(1, (v3 + 38), v96, v88, v74, v75);
    API_Get_Dbg_Constell_ME_Data(5, (v3 + 48), v97, v98, v99, v100);
    API_Get_Dbg_Constell_ME_Data(2, (v3 + 58), v101, v102, v103, v104);
    API_Get_Dbg_Constell_ME_Data(3, (v3 + 68), v105, v106, v107, v108);
    API_Get_Dbg_Constell_ME_Data(4, (v3 + 78), v109, v110, v111, v112);
    API_Get_Dbg_Constell_ME_Data(6, (v3 + 88), v113, v114, v115, v116);
    v117 = *(v299 + 1032);
    if (v117 < 1)
    {
      v120 = 0;
    }

    else
    {
      v118 = *(p_api + 48);
      if (*(v118 + 5) == 1 && *v118 >= 3)
      {
        v119 = *(v118 + 24) + 604800 * *(v118 + 16);
      }

      else
      {
        v119 = 0;
      }

      v120 = (v119 - v117) / 3600;
    }

    v3[98] = v120;
    v121 = *(v299 + 1036);
    if (v121 < 1)
    {
      *(v3 + 198) = 0;
      v122 = p_api;
    }

    else
    {
      v122 = p_api;
      v123 = *(p_api + 48);
      if (*(v123 + 5) == 1 && *v123 >= 3)
      {
        v124 = *(v123 + 24) + 604800 * *(v123 + 16);
      }

      else
      {
        LOBYTE(v124) = 0;
      }

      *(v3 + 198) = ((v124 - v121) / 16);
    }

    v125 = 0;
    v126 = *(v122 + 64) + 365;
    v127 = 0uLL;
    do
    {
      v127 = vsubq_s8(v127, vtstq_s8(*(v126 + v125), *(v126 + v125)));
      v125 += 16;
    }

    while (v125 != 48);
    *(v3 + 398) = vaddvq_s8(v127);
    if (*(v295 + 128) == 1)
    {
      v128 = *(v295 + 132);
    }

    else
    {
      v128 = 0;
    }

    v129 = 0;
    v3[100] = v128;
    do
    {
      *(v3 + v129 + 404) = *(v69 + v129);
      ++v129;
    }

    while (v129 != 6);
    *(v3 + 410) = *(v283 + 31344);
    v127.i32[0] = *(v295 + 11048);
    *(v3 + 52) = v127.u64[0] * 0.001;
    *(v3 + 53) = *(v286 + 1976);
    *(v3 + 54) = *(v286 + 2000);
    *(v3 + 55) = *(v286 + 2024);
    *(v3 + 448) = *(v286 + 19);
    *(v3 + 449) = *(v295 + 232);
    API_Get_Dbg_Constell_PE_Data(1, (v3 + 114));
    API_Get_Dbg_Constell_PE_Data(5, (v3 + 144));
    API_Get_Dbg_Constell_PE_Data(2, (v3 + 174));
    API_Get_Dbg_Constell_PE_Data(3, (v3 + 204));
    API_Get_Dbg_Constell_PE_Data(4, (v3 + 234));
    API_Get_Dbg_Constell_PE_Data(6, (v3 + 264));
    API_Get_Dbg_Constell_Orb_Data(1, (v3 + 308));
    API_Get_Dbg_Constell_Orb_Data(5, (v3 + 320));
    API_Get_Dbg_Constell_Orb_Data(2, (v3 + 332));
    API_Get_Dbg_Constell_Orb_Data(3, (v3 + 344));
    API_Get_Dbg_Constell_Orb_Data(4, (v3 + 356));
    API_Get_Dbg_Constell_Orb_Data(6, (v3 + 368));
    *(v3 + 8) = *(v286 + 532);
    *(v3 + 9) = *(v286 + 540);
    *(v3 + 10) = *(v286 + 536) != 0;
    v3[3] = *(v286 + 544);
    *(v3 + 16) = *(v294 + 3);
    *(v3 + 17) = *(v294 + 5);
    *(v3 + 18) = *(v286 + 516);
    *(v3 + 19) = *(v286 + 524);
    *(v3 + 20) = *(v286 + 520) != 0;
    v3[6] = *(v286 + 528);
    *(v3 + 28) = *v294;
    *(v3 + 29) = *(v294 + 2);
    *(v3 + 30) = *(v286 + 548);
    *(v3 + 31) = *(v286 + 556);
    *(v3 + 32) = *(v286 + 552) != 0;
    v3[9] = *(v286 + 560);
    *(v3 + 40) = *(v294 + 6);
    *(v3 + 41) = *(v294 + 8);
    *(v3 + 42) = *(v286 + 596);
    *(v3 + 43) = *(v286 + 604);
    *(v3 + 44) = *(v286 + 600) != 0;
    v3[12] = *(v286 + 608);
    memset(v330, 0, sizeof(v330));
    Core_Get_ExtA_Alt(6000, v330);
    *(v3 + 14) = *&v330[2];
    *(v3 + 72) = v330[6];
    *(v3 + 1176) = *(v286 + 580);
    *(v3 + 1177) = *(v286 + 588);
    *(v3 + 1178) = *(v286 + 584) != 0;
    v3[295] = *(v286 + 592);
    *(v3 + 1184) = *(v294 + 1088);
    *(v3 + 149) = -(*(v286 + 208) - v283[2973] * 0.0174532925) * 6378137.0;
    *(v3 + 150) = *(v286 + 312) * (-(*(v286 + 216) - v283[2974] * 0.0174532925) * 6378137.0);
    v130 = v283[2977];
    v131 = v130 - *(v286 + 360);
    *(v3 + 151) = v131;
    v132 = -360.0;
    if (v131 >= 180.0 || (v132 = 360.0, v131 < -180.0))
    {
      *(v3 + 151) = v131 + v132;
      v130 = v283[2977];
    }

    if (v130 <= 0.0)
    {
      v133 = -0.5;
    }

    else
    {
      v133 = 0.5;
    }

    v134 = v130 + v133;
    if (v134 <= 2147483650.0)
    {
      if (v134 >= -2147483650.0)
      {
        v135 = v134;
      }

      else
      {
        LOWORD(v135) = 0;
      }
    }

    else
    {
      LOWORD(v135) = -1;
    }

    *(v3 + 608) = v135;
    v136 = v283[2978];
    if (v136 <= 0.0)
    {
      v137 = -0.5;
    }

    else
    {
      v137 = 0.5;
    }

    v138 = v136 + v137;
    if (v138 <= 2147483650.0)
    {
      if (v138 >= -2147483650.0)
      {
        v139 = v138;
      }

      else
      {
        LOWORD(v139) = 0;
      }
    }

    else
    {
      LOWORD(v139) = -1;
    }

    *(v3 + 609) = v139;
    v140 = v283[2979];
    if (v140 <= 0.0)
    {
      v141 = -0.5;
    }

    else
    {
      v141 = 0.5;
    }

    v142 = v140 + v141;
    if (v142 <= 2147483650.0)
    {
      if (v142 >= -2147483650.0)
      {
        v143 = v142;
      }

      else
      {
        LOBYTE(v143) = 0;
      }
    }

    else
    {
      LOBYTE(v143) = -1;
    }

    *(v3 + 1220) = v143;
    *(v3 + 1221) = *(v294 + 280);
    *(v3 + 1225) = *(v294 + 1124);
    v329 = 0;
    memset(v330, 0, 24);
    memset(v341, 0, 24);
    *v325 = 0;
    v328 = 0;
    v327 = 0;
    Pos_LLH = Core_Get_Pos_LLH(*v283, 150000, 0, &v329, v330, v341, v325, v3 + 1530, &v328, &v327 + 1, &v327);
    *(v3 + 1520) = Pos_LLH;
    if (Pos_LLH)
    {
      v3[381] = *(v286 + 412);
      *(v3 + 1528) = BYTE4(v327);
      *(v3 + 1529) = v327;
      v145 = *(v286 + 416);
      v146 = v145 == 1 ? *(v286 + 620) : 0;
      *(v3 + 1521) = v146 & 1;
      *(v3 + 1522) = v145 == 1;
      *(v3 + 1523) = *(v286 + 616) != 0;
      v147 = *&v330[2];
      *(v3 + 192) = (*v330 - *(v286 + 208)) * 6378137.0;
      *(v3 + 193) = *(v286 + 312) * ((v147 - *(v286 + 216)) * 6378137.0);
      *(v3 + 195) = vmovn_s64(vcvtq_u64_f64(vsqrtq_f64(v341[0])));
      *(v3 + 1568) = (v341[1].f64[0] * 57.2957795);
      if (*(v3 + 1530) == 1)
      {
        *(v3 + 194) = *&v330[4];
        *(v3 + 785) = sqrt(*v325);
      }
    }

    *(v3 + 1572) = *(v286 + 660);
    *(v3 + 1573) = *(v286 + 668);
    *(v3 + 1574) = *(v286 + 664) != 0;
    *(v3 + 1575) = 0;
    if (*(p_NA + 319) == 1)
    {
      v148 = *(p_NA + 19388);
      *(v3 + 1572) = 1;
      *(v3 + 1575) = v148;
    }

    *(v3 + 1576) = *(v286 + 724);
    *(v3 + 1577) = *(v286 + 732);
    *(v3 + 1578) = *(v286 + 728) != 0;
    v3[395] = *(v286 + 736);
    *(v3 + 199) = v283[3014];
    memset(v330, 0, 24);
    if (Core_Get_ExtA_AT_Vel(120000, v330))
    {
      *(v3 + 1600) = *(v286 + 676);
      *(v3 + 1601) = *(v286 + 684);
      *(v3 + 1602) = *(v286 + 680) != 0;
      *(v3 + 402) = *&v330[2];
    }

    memset(v341, 0, 24);
    if (Core_Get_ExtA_Heading(120000, v341))
    {
      *(v3 + 1624) = *(v286 + 708);
      *(v3 + 1625) = *(v286 + 716);
      *(v3 + 1626) = *(v286 + 712) != 0;
      *(v3 + 102) = *(v341 + 8);
    }

    v326 = 0uLL;
    *v325 = 0;
    if (Core_Get_ExtA_V_Vel(120000, v325))
    {
      *(v3 + 1648) = *(v286 + 692);
      *(v3 + 1649) = *(v286 + 700);
      *(v3 + 1650) = *(v286 + 696) != 0;
      *(v3 + 414) = v326;
    }

    v149 = 0;
    v150 = *(v286 + 36);
    v3[418] = v150;
    v3[419] = *(v286 + 32);
    *(v3 + 1680) = 0;
    v151 = 1;
    do
    {
      v152 = v151;
      if (*(v279 + v149) == 1 && *(v319 + 8 * v149) > 0.0)
      {
        *(v3 + 1680) = 1;
        *(v3 + 841) = *(v305 + 2 * v149);
        *(v3 + 211) = *(v303 + 8 * v149);
        *(v3 + 212) = *(v319 + 8 * v149);
        v3[426] = v150 - *(v302 + 4 * v149);
      }

      v151 = 0;
      v149 = 1;
    }

    while ((v152 & 1) != 0);
    *(v3 + 1708) = *(v284 + 8);
    v153 = *(v284 + 568) * 1000000000.0;
    if (v153 <= 0.0)
    {
      v154 = -0.5;
    }

    else
    {
      v154 = 0.5;
    }

    v155 = v153 + v154;
    v156 = v155;
    if (v155 < -2147483650.0)
    {
      v156 = 0x80000000;
    }

    if (v155 > 2147483650.0)
    {
      v156 = 0x7FFFFFFF;
    }

    v3[428] = v156;
    v3[429] = (sqrt(*(v284 + 576)) * 1000000000.0);
    *(v3 + 1720) = *(v283 + 16);
    *(v3 + 1721) = *(v286 + 48);
    *(v3 + 216) = *(v286 + 40);
    *(v3 + 868) = *(v286 + 54);
    *(v3 + 1738) = *(v286 + 180);
    *(v3 + 218) = *(v286 + 192);
    HIDWORD(v157) = *(v286 + 186);
    LODWORD(v157) = HIDWORD(v157);
    v3[438] = v157 >> 16;
    *(v3 + 1756) = 0;
    if ((*(v286 + 52) & 1) != 0 && (*(v67 + 2111) - 4) <= 2)
    {
      v158 = *(*(p_api + 56) + 8456);
      v159 = *(*(p_api + 56) + 8457);
      v160 = *(*(p_api + 56) + 8459);
      v161 = *(*(p_api + 56) + 8460);
      *(v3 + 1756) = 1;
      v162 = v159 | 0x400;
      v163 = *(v273 + 16) - 127;
      do
      {
        v164 = v162;
        v162 += 256;
      }

      while (v163 > v164);
      *(v3 + 880) = v164;
      *(v3 + 1758) = (795365 * (v158 << 12)) >> 36;
      *(v3 + 1757) = *v274;
      v165 = v160 | 0x400;
      do
      {
        v166 = v165;
        v165 += 256;
      }

      while (v163 > v166);
      *(v3 + 882) = v166;
      *(v3 + 1763) = v161;
      *(v3 + 1762) = v274[3];
    }

    *(v3 + 883) = 0;
    if (*(v67 + 16296) == 1)
    {
      *(v3 + 883) = (vcvtd_n_f64_s32(*(v67 + 4059), 0x1EuLL) * 1000000000.0);
    }

    *(v3 + 884) = 0;
    *v330 = 0;
    if (!R8_EQ(v297, v330))
    {
      v341[0].f64[0] = 0.0;
      if (!R8_EQ(v276, v341[0].f64))
      {
        *(v3 + 884) = ((*v276 - *v297) * 1000000000.0);
      }
    }

    *(v3 + 885) = 0;
    if ((*v289 - 2) <= 4)
    {
      *(v3 + 885) = (*(v289 + 4) * 0.1);
    }

    *(v3 + 886) = 0;
    *v330 = 0;
    v167 = R8_EQ(v297, v330);
    if (!v167)
    {
      v341[0].f64[0] = 0.0;
      v167 = R8_EQ(v275, v341[0].f64);
      if (!v167)
      {
        *(v3 + 886) = ((*v275 - *v297) * 1000000000.0);
      }
    }

    *(v3 + 111) = *(v299 + 88);
    *(v3 + 112) = *(v299 + 104);
    *(v3 + 113) = *(v299 + 120);
    *(v3 + 114) = *(v299 + 136);
    *(v3 + 115) = *(v299 + 152);
    *(v3 + 116) = *(v299 + 168);
    *(v3 + 117) = *(v299 + 184);
    *(v3 + 118) = *(v299 + 232);
    *(v3 + 952) = *(v299 + 248);
    *(v3 + 478) = *(v299 + 200);
    *(v3 + 482) = *(v299 + 216);
    v168 = *(p_api + 288);
    *(v3 + 972) = *(v168 + 8);
    *(v3 + 1946) = *(v168 + 16);
    *(v3 + 1947) = *(v168 + 17);
    v3[487] = 1224998914;
    strcpy(v3 + 1952, "230302");
    *(v3 + 245) = vrev64_s32(vsub_s32(*(v286 + 32), *(v299 + 1064)));
    *(v3 + 1968) = *(v299 + 73);
    *(v3 + 1969) = *(v299 + 43);
    v169 = *(v299 + 31);
    *(v3 + 1970) = v169;
    if (*(v299 + 34) == 1)
    {
      v169 |= 2u;
      *(v3 + 1970) = v169;
    }

    if (*(v299 + 33) == 1)
    {
      v169 |= 4u;
      *(v3 + 1970) = v169;
    }

    if (*(v299 + 32) == 1)
    {
      v169 |= 8u;
      *(v3 + 1970) = v169;
    }

    if (*(v299 + 36) == 1)
    {
      v169 |= 0x10u;
      *(v3 + 1970) = v169;
    }

    if (*(v299 + 35) == 1)
    {
      *(v3 + 1970) = v169 | 0x20;
    }

    v170 = *(v299 + 37);
    *(v3 + 1971) = v170;
    if (*(v299 + 40) == 1)
    {
      v170 |= 2u;
      *(v3 + 1971) = v170;
    }

    if (*(v299 + 39) == 1)
    {
      v170 |= 4u;
      *(v3 + 1971) = v170;
    }

    if (*(v299 + 38) == 1)
    {
      v170 |= 8u;
      *(v3 + 1971) = v170;
    }

    if (*(v299 + 42) == 1)
    {
      v170 |= 0x10u;
      *(v3 + 1971) = v170;
    }

    if (*(v299 + 41) == 1)
    {
      *(v3 + 1971) = v170 | 0x20;
    }

    *(v3 + 1972) = *(v299 + 52);
    v171 = *(v299 + 1072);
    v172 = *(v299 + 1088);
    *(v3 + 501) = *(v299 + 1100);
    *(v3 + 494) = v171;
    *(v3 + 498) = v172;
    v174 = *(v299 + 1420);
    v173 = *(v299 + 1436);
    v175 = *(v299 + 1404);
    *(v3 + 521) = *(v299 + 1452);
    *(v3 + 513) = v174;
    *(v3 + 517) = v173;
    *(v3 + 509) = v175;
    *(v3 + 505) = *(v299 + 1388);
    v177 = *(v299 + 1540);
    v176 = *(v299 + 1556);
    v178 = *(v299 + 1524);
    *(v3 + 551) = *(v299 + 1572);
    *(v3 + 543) = v177;
    *(v3 + 547) = v176;
    *(v3 + 539) = v178;
    v179 = *(v299 + 1476);
    v180 = *(v299 + 1508);
    *(v3 + 531) = *(v299 + 1492);
    *(v3 + 535) = v180;
    *(v3 + 527) = v179;
    *(v3 + 523) = *(v299 + 1460);
    if (gnss::GnssAdaptDevice::Ga05_08CheckIfInertialFusionShouldBeEnabled(v167))
    {
      memcpy(v3 + 553, (*(p_api + 152) + 4), 0x2800uLL);
    }

    v355 = 0;
    memset(v354, 0, sizeof(v354));
    memset(v352, 0, sizeof(v352));
    v353 = 0;
    bzero(v351, 0x590uLL);
    bzero(v350, 0x590uLL);
    v181 = 0;
    v349 = 0;
    memset(v348, 0, sizeof(v348));
    *v345 = 0;
    *&v345[6] = 0;
    memset(v344, 0, sizeof(v344));
    memset(v343, 0, sizeof(v343));
    v342[0] = 0;
    *(v342 + 6) = 0;
    *&v182 = 0x8181818181818181;
    *(&v182 + 1) = 0x8181818181818181;
    v346[0] = v182;
    v346[1] = v182;
    v346[2] = v182;
    v346[3] = v182;
    v346[4] = v182;
    v346[5] = v182;
    v346[6] = v182;
    v346[7] = v182;
    v346[8] = v182;
    v346[9] = v182;
    v346[10] = v182;
    v347 = -32383;
    while (2)
    {
      Constell_Prn = Get_Constell_Prn(v181);
      if (Constell_Prn <= 3)
      {
        if (Constell_Prn != 1)
        {
          if (Constell_Prn == 2)
          {
            v354[v181] = 4;
          }

          else
          {
            if (Constell_Prn == 3)
            {
              v184 = 8;
              goto LABEL_313;
            }

LABEL_314:
            v354[v181] = 15;
            EvCrt_Illegal_Default("API_Get_Nav_Data", 4135);
          }

          goto LABEL_316;
        }

LABEL_310:
        v354[v181] = 0;
        goto LABEL_316;
      }

      if ((Constell_Prn - 5) < 2)
      {
        goto LABEL_310;
      }

      if (Constell_Prn != 4)
      {
        goto LABEL_314;
      }

      v184 = 12;
LABEL_313:
      v354[v181] = v184;
LABEL_316:
      if (++v181 != 178)
      {
        continue;
      }

      break;
    }

    *&v345[6] = 0x404040404040404;
    *v345 = 0x404040404040404;
    v185 = 47;
    do
    {
      v186 = v185;
      v187 = *(v323 + 4 * v185);
      v188 = HIWORD(v187);
      if ((v187 & 0xFF00FF) == 2)
      {
        v189 = 0;
        while (*(v14 + 4 * v189) != *(v317 + 4 * v186))
        {
          if (++v189 == 24)
          {
            goto LABEL_324;
          }
        }

        LOBYTE(v188) = v189 + 1;
      }

LABEL_324:
      v190 = v187 & 0xFF00FFFF | (v188 << 16);
      if (Is_Legal(v190))
      {
        v193 = GNSS_Id_To_Num_Prn_Idx(v190);
        if (*(v321 + 4 * v186) >= 10)
        {
          v196 = &v68[v186];
          v354[v193] = *(v196 + 1);
          LOBYTE(v194) = *(v315 + v186);
          LOBYTE(v195) = *(v313 + v186);
          *&v197 = v195;
          v198 = v194 + *&v197 * 0.0625;
          v351[v193] = v198;
          LOBYTE(v198) = *(v311 + v186);
          LOBYTE(v197) = *(v309 + v186);
          v350[v193] = *&v198 + v197 * 0.0625;
          v348[v193] = *(v307 + v186);
          if (*(v301 + v186) == 1)
          {
            v352[v193] = 1;
          }

          if (v187 == 2)
          {
            *(v346 + v193) = *(v196 + 3);
          }
        }
      }

      else if (*(v321 + 4 * v186) >= 10)
      {
        v199 = &v68[v186];
        if ((*(v199 + 3) + 7) <= 0xDu)
        {
          v200 = (*(v199 + 3) + 7);
          v345[v200] = *(v199 + 1);
          LOBYTE(v191) = *(v315 + v186);
          LOBYTE(v192) = *(v313 + v186);
          *&v201 = v192;
          v202 = v191 + *&v201 * 0.0625;
          v344[v200] = v202;
          LOBYTE(v202) = *(v311 + v186);
          LOBYTE(v201) = *(v309 + v186);
          v343[v200] = *&v202 + v201 * 0.0625;
          *(v342 + v200) = *(v307 + v186);
        }
      }

      v185 = v186 - 1;
    }

    while (v186);
    v17 = *(v286 + 32);
    if (v17 != v293)
    {
      v13 = v292 + 1;
      v16 = v299;
      if (v292 == 5)
      {
LABEL_531:
        bzero(v285, 0x18C8uLL);
        bzero(v3, 0x30A8uLL);
        return 0;
      }

      continue;
    }

    break;
  }

  if (v292 > 3)
  {
    goto LABEL_531;
  }

  Inc_GPS_TOW(-*(v285 + 6), v285 + 4, v285 + 12);
  API_Get_UTC_Cor(0, v285 + 8);
  GPS_To_UTC_Time(v285 + 5, v285 + 6, v285 + 7, v285 + 8, v285 + 9, v285 + 10, v285 + 11, *(v285 + 12), *(v285 + 4), *(v285 + 8));
  if (*(v285 + 9) == 1 && *(v285 + 8) == 23 && *(v285 + 9) == 59)
  {
    v203 = *(v285 + 10);
    if (v203 >= 0x3A)
    {
      v330[0] = 0;
      v325[0] = 0;
      LODWORD(v341[0].f64[0]) = 0;
      API_Get_Next_Leap_Second(v330, v325, v341);
      if (!LODWORD(v341[0].f64[0]) && v325[0] == 1)
      {
        *(v285 + 10) = v203 + 1;
      }
    }
  }

  v204 = 0;
  v205 = 0;
  v206 = *(p_api + 32);
  v337 = *(v206 + 128);
  v338 = *(v206 + 144);
  v339 = *(v206 + 160);
  v340 = *(v206 + 176);
  v333 = *(v206 + 64);
  v334 = *(v206 + 80);
  v335 = *(v206 + 96);
  v320 = v285 + 1554;
  v318 = v285 + 1266;
  v316 = v285 + 1522;
  v336 = *(v206 + 112);
  *v330 = *v206;
  *&v330[4] = *(v206 + 16);
  v331 = *(v206 + 32);
  v332 = *(v206 + 48);
  v300 = v67 + 33605;
  v324 = v285 + 433;
  v314 = v285 + 81;
  v310 = v285 + 465;
  v312 = v285 + 209;
  v306 = v285 + 754;
  v308 = v285 + 498;
  v296 = v206 + 178;
  v298 = (v67 + 37522);
  v304 = v285 + 1010;
  while (2)
  {
    v207 = 0;
    v208 = -100;
    LODWORD(v209) = -1;
    do
    {
      if (*(v330 + v207) <= v208)
      {
        v209 = v209;
      }

      else
      {
        v208 = *(v330 + v207);
        v209 = v207;
      }

      ++v207;
    }

    while (v207 != 178);
    if ((v209 & 0x80000000) == 0)
    {
      *(v330 + v209) = -120;
      if (*(v206 + v209) < 0 && v351[v209] <= 0.0)
      {
        goto LABEL_529;
      }

      v210 = v206;
      LODWORD(v341[0].f64[0]) = 0;
      v211 = 0;
      v212 = LongPrnIdx_To_Prn(v209, v341);
      *(v324 + v205) = v212;
      v213 = v354[v209];
      v322 = v204;
      if (SLODWORD(v341[0].f64[0]) > 3)
      {
        if (LODWORD(v341[0].f64[0]) == 4)
        {
          v217 = v213 - 12;
          v218 = v213 + 69;
          v211 = 5;
          if (v217 >= 3)
          {
            v214 = 0;
          }

          else
          {
            v214 = v218;
          }
        }

        else if (LODWORD(v341[0].f64[0]) == 5)
        {
          if (v354[v209])
          {
            if (v213 == 1)
            {
              v214 = 50;
            }

            else
            {
              v214 = 0;
            }
          }

          else
          {
            v214 = 49;
          }

          v211 = 3;
        }

        else
        {
          v214 = 0;
          if (LODWORD(v341[0].f64[0]) == 6)
          {
            if (v354[v209])
            {
              v214 = 0;
            }

            else
            {
              v214 = 65;
            }

            v211 = 4;
          }
        }
      }

      else if (LODWORD(v341[0].f64[0]) == 1)
      {
        if (v354[v209])
        {
          if (v213 == 1)
          {
            v214 = 18;
          }

          else
          {
            v214 = 0;
          }
        }

        else
        {
          v214 = 17;
        }

        v211 = 1;
      }

      else if (LODWORD(v341[0].f64[0]) == 2)
      {
        if (v213 >= 8)
        {
          v214 = 0;
        }

        else
        {
          v214 = *&asc_29972A558[4 * v354[v209]];
        }

        v211 = 2;
      }

      else
      {
        v214 = 0;
        if (LODWORD(v341[0].f64[0]) == 3)
        {
          v215 = v213 & 0xFC;
          v216 = v213 + 89;
          v211 = 6;
          if (v215 == 8)
          {
            v214 = v216;
          }

          else
          {
            v214 = 0;
          }
        }
      }

      *(v324 + v205) = LongPrnIdx_To_Prn(v209, v341);
      v314[v205] = v211;
      v312[v205] = v214;
      *(v310 + v205) = *(v346 + v209);
      *&v308[2 * v205] = v351[v209];
      *&v306[2 * v205] = v350[v209];
      *(v320 + v205) = v348[v209];
      v219 = 5928;
      v220 = 2120;
      while (1)
      {
        v222 = *v68++;
        v221 = v222;
        if (Is_Legal(v222) && GNSS_Id_To_Num_Prn_Idx(v221) == v209)
        {
          break;
        }

        v220 += 40;
        v219 += 4;
        if (v220 == 4040)
        {
          goto LABEL_401;
        }
      }

      v223 = *(p_api + 176);
      v224 = *(v223 + v219);
      if (v224)
      {
        v225 = *(v286 + 32) - v224;
      }

      else
      {
        v225 = 0x7FFFFFFF;
      }

      if (v225 < 0)
      {
        v225 = -v225;
      }

      if (v225 >> 5 <= 0x752)
      {
        v226 = v223 + v220;
        *&v304[2 * v205] = *(v226 + 1920);
        v227 = *v226;
        v68 = v288;
        v206 = v210;
        goto LABEL_404;
      }

LABEL_401:
      if ((*(v296 + 2 * v209) & 0x80000000) == 0)
      {
        *&v304[2 * v205] = *(v296 + 2 * v209);
      }

      v206 = v210;
      v227 = *(v210 + v209);
      v68 = v288;
LABEL_404:
      *&v318[2 * v205] = v227;
      v228 = v352[v209];
      *(v316 + v205) = v228;
      if (*(v67 + v209 + 37344))
      {
        v229 = 1;
      }

      else
      {
        v229 = *(v298 + v209);
      }

      v230 = v285 + 3 * v205 + 1348;
      v231 = *v230 & 0xFFFE | v229 & 1;
      *v230 = v231;
      v232 = v231 & 0xFFFD | (2 * (*(v298 + v209) & 1));
      *v230 = v232;
      if ((v229 & 1) == 0)
      {
        goto LABEL_444;
      }

      if (SLODWORD(v341[0].f64[0]) > 3)
      {
        if (LODWORD(v341[0].f64[0]) != 4)
        {
          if (LODWORD(v341[0].f64[0]) != 5)
          {
            if (LODWORD(v341[0].f64[0]) != 6)
            {
              goto LABEL_416;
            }

            goto LABEL_472;
          }

          v237 = v212 - 193;
          v234 = *(v67 + 27 * v237 + 2153);
          v238 = v287[1073];
          goto LABEL_424;
        }

        v233 = v287[3062] + v212;
        v234 = *(v67 + 25 * v212 + 6106);
LABEL_420:
        if (*(v233 - 1))
        {
          goto LABEL_421;
        }

LABEL_425:
        v236 = 0;
      }

      else
      {
        switch(LODWORD(v341[0].f64[0]))
        {
          case 1:
            v234 = *(v67 + 27 * v212);
            if (*(v287[10] + v212 - 1) != 1)
            {
              goto LABEL_425;
            }

            break;
          case 2:
            v237 = v212 - 1;
            v234 = HIDWORD(v67[8 * v237 + 1403]);
            v238 = v287[2039];
LABEL_424:
            if ((*(v238 + v237) & 1) == 0)
            {
              goto LABEL_425;
            }

            break;
          case 3:
            v233 = v287[2080] + v212;
            v234 = HIDWORD(v67[11 * v212 + 2081]);
            goto LABEL_420;
          default:
LABEL_416:
            v235 = 4483;
LABEL_443:
            EvCrt_Illegal_Default("API_Get_Nav_Data", v235);
LABEL_444:
            if (SLODWORD(v341[0].f64[0]) > 3)
            {
              if (LODWORD(v341[0].f64[0]) != 4)
              {
                if (LODWORD(v341[0].f64[0]) != 5)
                {
                  if (LODWORD(v341[0].f64[0]) == 6)
                  {
                    goto LABEL_472;
                  }

                  goto LABEL_453;
                }

                v241 = v212 - 193;
                if ((*(v284 + 79 + v241) & 1) == 0)
                {
                  goto LABEL_472;
                }

                v242 = v284 + 4304;
                goto LABEL_462;
              }

              v241 = v212 - 1;
              if ((*(v284 + 223 + v241) & 1) == 0)
              {
                goto LABEL_472;
              }

              v242 = v284 + 9884;
              v243 = 100;
            }

            else
            {
              if (LODWORD(v341[0].f64[0]) != 1)
              {
                if (LODWORD(v341[0].f64[0]) != 2)
                {
                  if (LODWORD(v341[0].f64[0]) == 3)
                  {
                    v241 = v212 - 1;
                    if (*(v284 + 150 + v241))
                    {
                      v242 = v284 + 5400;
                      v243 = 88;
                      goto LABEL_463;
                    }

LABEL_472:
                    if (*(v67 + v209 + 37700) != 1)
                    {
                      goto LABEL_501;
                    }

                    v249 = *v230;
                    *v230 |= 0x200u;
                    if (SLODWORD(v341[0].f64[0]) > 3)
                    {
                      if (LODWORD(v341[0].f64[0]) != 4)
                      {
                        if (LODWORD(v341[0].f64[0]) != 5)
                        {
                          if (LODWORD(v341[0].f64[0]) != 6)
                          {
                            goto LABEL_481;
                          }

                          goto LABEL_528;
                        }

                        v255 = v67 + 11 * v212 + 570;
                        goto LABEL_488;
                      }

                      v253 = v212;
                      v254 = v67 + 3990;
                    }

                    else
                    {
                      if (LODWORD(v341[0].f64[0]) != 1)
                      {
                        if (LODWORD(v341[0].f64[0]) != 2)
                        {
                          if (LODWORD(v341[0].f64[0]) == 3)
                          {
                            v250 = v212;
                            v251 = v67 + 2884;
                            goto LABEL_486;
                          }

LABEL_481:
                          v252 = 4588;
LABEL_497:
                          EvCrt_Illegal_Default("API_Get_Nav_Data", v252);
LABEL_501:
                          if (SLODWORD(v341[0].f64[0]) > 3)
                          {
                            if (LODWORD(v341[0].f64[0]) != 4)
                            {
                              if (LODWORD(v341[0].f64[0]) != 5)
                              {
                                if (LODWORD(v341[0].f64[0]) == 6)
                                {
                                  goto LABEL_528;
                                }

                                goto LABEL_510;
                              }

                              v258 = v212 - 193;
                              if ((*(v284 + 89 + v258) & 1) == 0)
                              {
                                goto LABEL_528;
                              }

                              v259 = v284 + 5024;
                              goto LABEL_519;
                            }

                            v258 = v212 - 1;
                            if ((*(v284 + 260 + v258) & 1) == 0)
                            {
                              goto LABEL_528;
                            }

                            v259 = v284 + 13584;
                            v261 = 44;
                          }

                          else
                          {
                            switch(LODWORD(v341[0].f64[0]))
                            {
                              case 1:
                                v258 = v212 - 1;
                                if (*(v284 + 47 + v258) != 1)
                                {
                                  goto LABEL_528;
                                }

                                v259 = v284 + 3152;
                                break;
                              case 2:
                                v258 = v212 - 1;
                                if ((*(v284 + 123 + v258) & 1) == 0)
                                {
                                  goto LABEL_528;
                                }

                                v259 = v284 + 16748;
                                break;
                              case 3:
                                v258 = v212 - 1;
                                if (*(v284 + 186 + v258))
                                {
                                  v259 = v284 + 8568;
                                  break;
                                }

LABEL_528:
                                v264 = *(v230 + 2) & 0xFE | v300[v209];
                                *(v230 + 2) = v264;
                                v265 = v264 & 0xFD | (2 * v300[v209]);
                                *(v230 + 2) = v265;
                                v266 = v265 & 0xFB | (4 * v300[v209]);
                                *(v230 + 2) = v266;
                                v267 = v266 & 0xF7 | (8 * v300[v209]);
                                *(v230 + 2) = v267;
                                *(v230 + 2) = v267 & 0xEF | (16 * v300[v209]);
                                ++v205;
                                v204 = v322 + v228;
LABEL_529:
                                if (v205 >= 0x80)
                                {
                                  goto LABEL_541;
                                }

                                continue;
                              default:
LABEL_510:
                                v260 = 4625;
LABEL_527:
                                EvCrt_Illegal_Default("API_Get_Nav_Data", v260);
                                goto LABEL_528;
                            }

LABEL_519:
                            v261 = 36;
                          }

                          v262 = *(v259 + v258 * v261 + 4);
                          if (v262 <= 6)
                          {
                            if (((1 << v262) & 0x57) == 0)
                            {
                              if (v262 == 3)
                              {
                                v263 = *v230 | 0x1000;
                              }

                              else
                              {
                                v263 = *v230 | 0x800;
                              }

                              *v230 = v263;
                            }

                            goto LABEL_528;
                          }

                          v260 = 4656;
                          goto LABEL_527;
                        }

                        v250 = v212;
                        v251 = v67 + 1919;
LABEL_486:
                        v255 = v251 + 9 * v250 - 8;
LABEL_488:
                        v256 = *v255;
                        if (v256 <= 2)
                        {
                          if (v256 < 3)
                          {
                            goto LABEL_501;
                          }
                        }

                        else
                        {
                          if (v256 <= 4)
                          {
                            if (v256 == 3)
                            {
                              v257 = -28160;
                            }

                            else
                            {
                              v257 = 9728;
                            }

                            goto LABEL_500;
                          }

                          if (v256 == 5)
                          {
                            v257 = 18944;
LABEL_500:
                            *v230 = v249 | v257;
                            goto LABEL_501;
                          }

                          if (v256 == 6)
                          {
                            goto LABEL_501;
                          }
                        }

                        v252 = 4607;
                        goto LABEL_497;
                      }

                      v253 = v212;
                      v254 = v67 + 877;
                    }

                    v255 = v254 + 11 * v253 - 10;
                    goto LABEL_488;
                  }

LABEL_453:
                  v244 = 4532;
LABEL_471:
                  EvCrt_Illegal_Default("API_Get_Nav_Data", v244);
                  goto LABEL_472;
                }

                v245 = v212 - 1;
                if ((*(v284 + 99 + v245) & 1) == 0)
                {
                  goto LABEL_472;
                }

                v246 = v284 + 15212 + (v245 << 6);
LABEL_464:
                v247 = *(v246 + 4);
                if (v247 <= 6)
                {
                  if (((1 << v247) & 0x57) == 0)
                  {
                    if (v247 == 3)
                    {
                      v248 = *v230 | 0x10;
                    }

                    else
                    {
                      v248 = *v230 | 8;
                    }

                    *v230 = v248;
                  }

                  goto LABEL_472;
                }

                v244 = 4563;
                goto LABEL_471;
              }

              v241 = v212 - 1;
              if (*(v284 + 15 + v241) != 1)
              {
                goto LABEL_472;
              }

              v242 = v284 + 848;
LABEL_462:
              v243 = 72;
            }

LABEL_463:
            v246 = v242 + v241 * v243;
            goto LABEL_464;
        }

LABEL_421:
        v232 |= 0x20u;
        *v230 = v232;
        v236 = 1;
      }

      if (v234 <= 2)
      {
        if (v234 < 3)
        {
          goto LABEL_444;
        }
      }

      else
      {
        if (v234 <= 4)
        {
          if (v234 == 3)
          {
            *v230 = v232 | 0x10;
            if (v236)
            {
              goto LABEL_444;
            }

            v239 = 272;
          }

          else
          {
            *v230 = v232 | 4;
            if (v236)
            {
              goto LABEL_444;
            }

            v239 = 68;
          }

          goto LABEL_440;
        }

        if (v234 == 5)
        {
          *v230 = v232 | 8;
          if (v236)
          {
            goto LABEL_444;
          }

          v239 = 136;
LABEL_440:
          v240 = v232 | v239;
LABEL_441:
          *v230 = v240;
          goto LABEL_444;
        }

        if (v234 == 6)
        {
          v240 = v232 | 2;
          goto LABEL_441;
        }
      }

      v235 = 4512;
      goto LABEL_443;
    }

    break;
  }

  v269 = 0;
  do
  {
    v270 = v344[v269];
    if (v270 > 0.0)
    {
      *(v310 + v205) = v269 - 7;
      v271 = v345[v269];
      if (v271 > 7)
      {
        v272 = 0;
      }

      else
      {
        v272 = *&asc_29972A558[4 * v271];
      }

      v314[v205] = 2;
      v312[v205] = v272;
      *&v308[2 * v205] = v270;
      *&v306[2 * v205] = v343[v269];
      *(v320 + v205) = *(v342 + v269);
      *&v304[2 * v205] = 0;
      *&v318[2 * v205] = 0xC058C00000000000;
      *(v316 + v205++) = 0;
    }

    if (v269 > 0xC)
    {
      break;
    }

    ++v269;
  }

  while (v205 < 0x80);
LABEL_541:
  *(v285 + 319) = v205;
  *(v285 + 320) = v204;
  *v285 = v293;
  result = 1;
  *v3 = v293;
  return result;
}

uint64_t API_Get_Raw_Meas_Data(void *a1)
{
  v207 = *MEMORY[0x29EDCA608];
  v167 = a1 + 6409;
  bzero(a1, 0x288F8uLL);
  v176 = *(p_api + 32);
  v2 = *(p_api + 72);
  v3 = *(p_api + 16);
  v4 = *(p_api + 56);
  v168 = v4 + 33548;
  v169 = *(p_api + 48);
  v165 = v4 + 24368;
  v164 = (v4 + 16224);
  v152 = (v4 + 8456);
  v166 = *(p_api + 88);
  v5 = *(p_api + 104);
  v179 = *(p_api + 96);
  v180 = v4;
  v6 = *(p_api + 176);
  v7 = *(p_api + 232);
  *a1 = 1000000 * *(v169 + 8);
  if (*(v2 + 248))
  {
    a1[1] = *(v2 + 160);
    a1[2] = *(v2 + 232);
    *(a1 + 3) = vmulq_f64(vsqrtq_f64(*(v6 + 56)), vdupq_n_s64(0x400AAF6485FFABE7uLL));
    *(a1 + 5) = *(v2 + 224) * *(v2 + 224);
    *(a1 + 6) = *(v2 + 208) * *(v2 + 208);
  }

  v177 = a1;
  v178 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 14) = 0;
  v162 = a1 + 9;
  v158 = a1 + 6430;
  v159 = v5 + 1232;
  v160 = v2;
  v156 = v7 + 4832;
  v11 = 10408;
  v157 = v7 + 10408;
  v153 = v7 + 7616;
  v163 = v7;
  v155 = v7 + 6848;
  v12 = -2688;
  v13 = 3296;
  v170 = v5;
  do
  {
    v14 = v3 + v9;
    v15 = *(v3 + v9 + 2720);
    if (!*(v3 + v9 + 2720))
    {
      goto LABEL_140;
    }

    v16 = *(v14 + 2722);
    if (v15 != 2 && v16 == 0)
    {
      goto LABEL_140;
    }

    if (v15 != *(v5 + v8 + 76))
    {
      goto LABEL_140;
    }

    v18 = v3 + v9;
    if (*(v3 + v9 + 2721) != *(v5 + v8 + 77) || *(v18 + 2723) != *(v5 + v8 + 79) || *(v14 + 2722) && v16 != *(v5 + v8 + 78))
    {
      goto LABEL_140;
    }

    v19 = v177[4].u16[0];
    if (v19 > 0xFF)
    {
      break;
    }

    v172 = (v14 + 2720);
    v20 = &v162[25 * v177[4].u16[0]];
    v177[4].i16[0] = v19 + 1;
    *v20 = -1;
    v161 = v5 + v8;
    v21 = 0;
    switch(*(v18 + 2721))
    {
      case 0:
        v22 = *v172;
        if (v22 >= 7)
        {
          v23 = 5136;
          goto LABEL_28;
        }

        v21 = dword_29972A578[v22];
        break;
      case 1:
        v21 = 1;
        break;
      case 2:
        v21 = 2;
        break;
      case 3:
        v21 = 3;
        break;
      case 4:
        v21 = 4;
        break;
      case 5:
      case 6:
      case 7:
      case 0xE:
        break;
      case 8:
        v21 = 7;
        break;
      case 9:
      case 0xA:
      case 0xB:
        v21 = 8;
        break;
      case 0xC:
        v21 = 5;
        break;
      case 0xD:
        v21 = 6;
        break;
      default:
        v23 = 5156;
LABEL_28:
        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", v23);
        v21 = 0;
        break;
    }

    *(v20 + 1) = v21;
    v24 = *v172;
    v154 = v3 + v9;
    if (v24 <= 2)
    {
      if (!*v172)
      {
        *(v20 + 2) = 0;
        goto LABEL_46;
      }

      if (v24 != 1 && v24 != 2)
      {
LABEL_42:
        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 5172);
        goto LABEL_46;
      }
    }

    else if (*v172 > 4u)
    {
      if (v24 == 5)
      {
        v24 = 3;
      }

      else
      {
        if (v24 != 6)
        {
          goto LABEL_42;
        }

        v24 = 4;
      }
    }

    else if (v24 == 3)
    {
      v24 = 6;
    }

    else
    {
      if (v24 != 4)
      {
        goto LABEL_42;
      }

      v24 = 5;
    }

    *(v20 + 2) = v24;
LABEL_46:
    v25 = GM_Gen_SV_Meas_QI(v172);
    if (*v172 == 2)
    {
      v27 = *(v154 + 2723);
    }

    else
    {
      v27 = *(v14 + 2722);
    }

    *(v20 + 6) = v27;
    v28 = *(v169 + 24) * 1000000000.0;
    v20[4] = v28;
    v29 = v3 + v12;
    v30 = *(v3 + v12 + 2754);
    v31 = v28 - 1000000 * v30;
    v20[3] = v31;
    v32 = v3 + v9;
    v33 = *(v3 + v9 + 2742);
    v34 = *(v3 + v9 + 2740);
    if (v34 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = *(v3 + v9 + 2740);
    }

    v20[2] = v31 - ((1000000 * v33 * v35) & 0xFFFFFFC0);
    v36 = *(v32 + 2728);
    if ((v36 & 0x200) != 0)
    {
      v37 = 9;
    }

    else
    {
      v37 = 1;
    }

    if ((~v36 & 0x300) != 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 15;
    }

    *(v20 + 40) = v38;
    v39 = *(v29 + 2768) * 1000000000.0;
    *(v20 + 6) = v39;
    if (v25 >= 0xA && *(v32 + 2730))
    {
      v150 = v25;
      GNSS_PR_Meas_Var = API_Get_GNSS_PR_Meas_Var(v172, v30, *(v3 + v12 + 2758), *(v163 + v10 + 978));
      v32 = v3 + v9;
      v41 = GNSS_PR_Meas_Var;
      v25 = v150;
      v39 = sqrt(v41) * 3.33564095;
      *(v20 + 7) = v39;
      LOBYTE(v33) = *(v3 + v9 + 2742);
      LOWORD(v34) = *(v3 + v9 + 2740);
    }

    else
    {
      v20[7] = 0x42374876E8000000;
    }

    v5 = v170;
    LOBYTE(v39) = *(v170 + v10 + 604);
    LOBYTE(v26) = *(v170 + v10 + 652);
    *&v42 = v26;
    v43 = *&v39 + *&v42 * 0.0625;
    *(v20 + 8) = v43;
    LOBYTE(v43) = *(v170 + v10 + 700);
    LOBYTE(v42) = *(v170 + v10 + 748);
    *(v20 + 9) = *&v43 + v42 * 0.0625;
    *(v20 + 88) = v33;
    *(v20 + 45) = v34;
    *(v20 + 12) = *(v3 + v12 + 2732) * 0.00247949753;
    v44 = *(v3 + v12 + 2736);
    *(v20 + 14) = v44 * 0.00247949753;
    if (v25 >= 0xA && (v45 = v3 + v9, *(v3 + v9 + 2732)))
    {
      v151 = v44;
      v46 = *(v29 + 2754);
      v47 = *(v45 + 2724);
      if (v47 >= 0x2B)
      {
        v48 = 43;
      }

      else
      {
        v48 = *(v45 + 2724);
      }

      v49 = v25;
      NK_Get_DO_Meas_Var(*v172, v48, (v48 - v47 + *(v45 + 2725)), *(v3 + v12 + 2758), (*(v3 + v9 + 2732) / 5u) & 0x3FFE, (*(v45 + 2734) / 5u) & 0x3FFE, *(v170 + 4 * v10 + 412), ((52429 * v46) >> 18) & 0x3FFE, *(v32 + 2728), v190);
      v44 = v151;
      v25 = v49;
      v5 = v170;
      v51 = sqrt(v50 * 0.25) * 3.33564095;
      if (v51 < 1.0)
      {
        v51 = 1.0;
      }

      *(v20 + 13) = v51;
    }

    else
    {
      v20[13] = 0x40F869FFFFFFFFFFLL;
      v51 = 100000.0;
    }

    v52 = -1.0;
    if (!v44)
    {
      v51 = -1.0;
    }

    *(v20 + 15) = v51;
    v20[16] = 0x300000002;
    *(v20 + 68) = v10;
    *(v20 + 140) = v25 > 9;
    *(v20 + 38) = 0;
    v53 = v161;
    if (v25 < 0xF || (v54 = *(v3 + v9 + 2734), v54 < 0x15))
    {
      v20[23] = 0x42374876E8000000;
    }

    else
    {
      *(v20 + 21) = v20[4];
      LOWORD(v52) = *(v3 + v12 + 2740);
      *(v20 + 22) = (*(v3 + v12 + 2744) + v52 * 0.0000152587891) * 0.634751368;
      if (*(v3 + v9 + 2724) >= 0x2Bu)
      {
        v55 = 43;
      }

      else
      {
        v55 = *(v3 + v9 + 2724);
      }

      DR_Meas_Var = NK_Get_DR_Meas_Var(*v172, v55, *(v3 + v12 + 2758), ((52429 * v54) >> 18) & 0x3FFE, v190);
      v53 = v161;
      v5 = v170;
      *(v20 + 23) = sqrt(DR_Meas_Var * 0.25) * 3.33564095;
      if (*(v160 + 948) + 100 >= v54)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      *(v20 + 38) = v57;
    }

    v58 = *(v3 + v12 + 2761);
    if (v58 == 255)
    {
      *(v20 + 48) = 0;
    }

    else
    {
      if (v58 > 9)
      {
        v59 = 1;
      }

      else
      {
        v59 = 2;
      }

      *(v20 + 48) = v59;
    }

    *(v20 + 49) = *(v3 + v9 + 2730);
    v60 = *v172;
    if (v60 != 6)
    {
      if (v60 == 2)
      {
        v61 = *(v53 + 78);
        if (!v61)
        {
          if (*(v180 + 16432 + 4 * *(v154 + 2723) + 28) == 2139062143)
          {
            goto LABEL_140;
          }

          v61 = *(v180 + 16432 + 4 * *(v154 + 2723) + 28);
          if (!v61)
          {
            goto LABEL_140;
          }
        }

        *(v14 + 2722) = v61;
      }

      else
      {
        v61 = 0;
      }

      v62 = GNSS_Id_To_Num_Pos_Idx(*v172);
      v5 = v170;
      if (!v179 || !*(v179 + 192 * v62 + 184))
      {
        goto LABEL_140;
      }

      v63 = *(v167 + 80);
      if (v63 > 0xFF)
      {
        break;
      }

      v64 = &v158[13 * *(v167 + 80)];
      *v64 = v177[4].i8[0] - 1;
      *v20 = v63;
      *(v167 + 80) = v63 + 1;
      *(v64 + 1) = v61;
      if (*v172 == 2)
      {
        v65 = *(v180 + 16488 + 4 * *(v154 + 2723) + 28);
        if (v65 > 1)
        {
          v66 = v163;
          if (v65 == 2)
          {
            v67 = 3;
          }

          else
          {
            if (v65 != 3)
            {
              goto LABEL_108;
            }

            v67 = 4;
          }

LABEL_111:
          *(v64 + 1) = v67;
        }

        else
        {
          v66 = v163;
          if (v65)
          {
            if (v65 == 1)
            {
              v67 = 2;
              goto LABEL_111;
            }

LABEL_108:
            *(v64 + 1) = 0;
            EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 5480);
            v5 = v170;
          }

          else
          {
            *(v64 + 1) = 0;
          }
        }
      }

      else
      {
        *(v64 + 1) = 1;
        v66 = v163;
      }

      v68 = *v172;
      if (v68 == 4)
      {
        v69 = *(v5 + 24) + -14.0 + *(v159 + 8 * v10) * -0.00000000333564095;
        v70 = 604800.0;
        goto LABEL_116;
      }

      if (v68 == 2)
      {
        v69 = *(v5 + 64) + *(v159 + 8 * v10) * -0.00000000333564095;
        v70 = 86400.0;
LABEL_116:
        v71 = v69 + v70;
        if (v69 < 0.0)
        {
          v69 = v71;
        }
      }

      else
      {
        v69 = *(v5 + 24) + *(v159 + 8 * v10) * -0.00000000333564095;
      }

      v72 = v69 * 1000000000.0;
      if (v72 < 0.0)
      {
        v72 = v72 + 6.048e14;
      }

      *(v64 + 1) = v72;
      v73 = v66 + v10;
      v74 = *(v66 + v10 + 2960);
      if (v74 == 1)
      {
        v75 = sqrt(*(v66 + v13) + *(v66 + v13 + 8));
        *(v64 + 10) = v75;
        *(v64 + 2) = v75 * 3.33564095;
        v64[4] = *(v156 + 8 * v10);
      }

      *(v64 + 6) = 0;
      v76 = v157 + v10;
      v77 = (v157 + v10 - 1872);
      v78 = *v77;
      if (v78 == 1)
      {
        v64[5] = *(v163 + v11);
      }

      if (*(v76 + 3704) == 1)
      {
        v64[6] = *(v163 + v11 + 5576);
      }

      if (v74 && (v79 = *(v163 + 4 * v10 + 3056), (v79 - 1) >= 0x1D))
      {
        if (v79)
        {
          v173 = v73;
          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          v73 = v173;
          v5 = v170;
          if (*v77)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v64[7] = *(v153 + 8 * v10);
          if (v78)
          {
            goto LABEL_131;
          }
        }
      }

      else if (v78)
      {
LABEL_131:
        v80 = *(v163 + v8 + 8632);
        if ((v80 - 1) >= 0x1D)
        {
          if (v80)
          {
            v174 = v73;
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
            v73 = v174;
            v5 = v170;
          }

          else
          {
            v64[8] = *(v163 + v11 + 2784);
          }
        }
      }

      if (*(v76 + 3704) == 1)
      {
        v81 = *(v163 + v8 + 14208);
        if ((v81 - 1) >= 0x1D)
        {
          if (v81)
          {
            v175 = v73;
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
            v73 = v175;
            v5 = v170;
          }

          else
          {
            v64[9] = *(v163 + v11 + 8360);
          }
        }
      }

      if (*(v73 + 2960) == 1)
      {
        *(v64 + 10) = sqrt(*(v155 + 8 * v10));
      }

      if (*v77 == 1)
      {
        *(v64 + 11) = sqrt(*(v163 + v11 + 2016));
      }

      if (*(v76 + 3704) == 1)
      {
        *(v64 + 12) = sqrt(*(v163 + v11 + 7592));
      }
    }

LABEL_140:
    ++v10;
    v9 += 36;
    v8 += 4;
    v11 += 8;
    v13 += 24;
    v12 += 56;
  }

  while (v10 != 48);
  v82 = 0;
  v83 = v177;
  v84 = (v168 + 252);
  v85 = 0.5;
  v171 = vdupq_n_s64(0x41CDCD6500000000uLL);
  do
  {
    Constell_Prn = Get_Constell_Prn(v82);
    v87 = Num_Prn_Idx_To_GNSS_Id(v82);
    v88 = v87;
    if (Constell_Prn == 2)
    {
      v89 = *(v180 + 16336 + 4 * v87 - 4);
      if (v89 == 2139062143)
      {
        goto LABEL_259;
      }
    }

    else
    {
      if (Constell_Prn == 6)
      {
        break;
      }

      LOBYTE(v89) = 0;
    }

    v90 = Num_Prn_Idx_To_Num_Pos_Idx(v82);
    if (v90 - 1 <= 0x93)
    {
      v91 = v179 + 192 * v90;
      if (*(v91 + 184))
      {
        v92 = v83[4879].u16[0];
        if (v92 > 0xFF)
        {
          break;
        }

        v93 = &v177[4879].i64[43 * v83[4879].u16[0] + 1];
        v83[4879].i16[0] = v92 + 1;
        v94 = Constell_Prn;
        if (Constell_Prn <= 2u)
        {
          if (Constell_Prn == 1)
          {
            goto LABEL_171;
          }

          if (Constell_Prn == 2)
          {
            *v93 = 2;
            v95 = v89;
            v96 = v88;
            goto LABEL_173;
          }
        }

        else
        {
          switch(Constell_Prn)
          {
            case 3u:
              v94 = 6;
              goto LABEL_171;
            case 4u:
              v94 = 5;
              goto LABEL_171;
            case 5u:
              v94 = 3;
LABEL_171:
              *v93 = v94;
LABEL_172:
              v96 = 0;
              v95 = v88;
LABEL_173:
              *(v93 + 4) = v95;
              *(v93 + 6) = v96;
              v97 = sqrt(*(v91 + 112) * v85);
              *(v93 + 144) = v97;
              *(v93 + 152) = v97 * 3.33564095;
              v98 = *(v84 - 4);
              if (v98 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 4920);
                v98 = 0;
              }

              *(v93 + 160) = v98;
              v99 = *(v84 - 3);
              if (v99 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 4920);
                v99 = 0;
              }

              *(v93 + 164) = v99;
              v100 = *(v84 - 2);
              if (v100 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 4920);
                v100 = 0;
              }

              *(v93 + 168) = v100;
              v101 = *(v84 - 1);
              if (v101 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 4920);
                v101 = 0;
              }

              *(v93 + 172) = v101;
              v102 = *v84;
              if (*v84 >= 3)
              {
                EvCrt_Illegal_Default("Set_e_GN_RM_HI_State", 4920);
                v102 = 0;
              }

              *(v93 + 176) = v102;
              v186 = *(v176 + v82);
              v103 = v176 + 8 * v82;
              v104 = *(v103 + 536);
              v105 = v104 * 57.2957795;
              v188 = v104;
              v189 = v104 * 57.2957795;
              v106 = __sincos_stret(v104);
              v187 = v106;
              v181 = *(v176 + 2 * v82 + 178);
              v184 = *(v103 + 1960);
              v185 = v184 * 57.2957795;
              v182 = sin(v184);
              cosval = v106.__cosval;
              v107 = *(v178 + 1496);
              if (v107 > 0.0 && v105 >= 0.0)
              {
                *(v93 + 184) = v107 * Trop_Elev_MapF(&v186);
              }

              *(v93 + 192) = 1;
              if ((Constell_Prn - 1) >= 5u)
              {
                EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 5757);
                v110 = 0;
                v109 = 15;
              }

              else
              {
                v108 = (Constell_Prn - 1);
                v109 = qword_29972A598[v108];
                v110 = dword_29972A5C0[v108];
              }

              *(v93 + 196) = v110;
              v111 = 0.0;
              v112 = 0.0;
              if (*(v180 + 8428))
              {
                v112 = 0.0;
                if (v189 >= 0.0)
                {
                  v112 = GPS_Klob_Iono_Delay((v166 + 208), &v181, &v186, (v180 + 8424), *(v169 + 24)) * g_GPS_L1_Iono_SF_Table[v109];
                }
              }

              *(v93 + 216) = v112;
              if (v110 > 4)
              {
                v83 = v177;
                if (v110 == 5)
                {
                  v113 = *(v178 + 7320);
                  v114 = *(v178 + 7328);
                  *&v190[0] = 0;
                  if (!R8_EQ((v166 + 160), v190))
                  {
                    v201 = 0.0;
                    v119 = R8_EQ((v166 + 144), &v201);
                    v116 = 0.0;
                    v117 = 0.0;
                    if (!v119)
                    {
                      v116 = (*(v166 + 160) - *(v166 + 144)) * 299792458.0;
                      *&v194 = 0;
                      v192 = 0u;
                      v193 = 0u;
                      v191 = 0u;
                      memset(v190, 0, sizeof(v190));
                      v206 = 0u;
                      v205 = 0u;
                      v204 = 0u;
                      v203 = 0u;
                      v202 = 0u;
                      *&v198[2] = 0;
                      *v198 = 0x3FF0000000000000;
                      v199 = 0xBFF0000000000000;
                      *v200 = 0.0;
                      v201 = -1.0;
                      mapu(v198, 1, 1u, 3, (v178 + 344), 0xBu, v190, 1, &v201, v200);
                      goto LABEL_208;
                    }

LABEL_209:
                    v111 = v113 - v116;
                    v118 = sqrt(v114 + v117);
                    v85 = 0.5;
LABEL_210:
                    *(v93 + 248) = v111;
                    *(v93 + 280) = v118;
                    *(v93 + 312) = *(v91 + 120) * 1000000000.0;
                    if (Constell_Prn <= 2u)
                    {
                      if (Constell_Prn == 1)
                      {
                        LODWORD(v120) = (v88 - 1);
                        v121 = *(v180 + 3560 + 108 * (v88 - 1) + 4);
                        v122 = *(v180 + 104 + 108 * (v88 - 1) + 4);
                        v123 = v180 + 7016;
                        goto LABEL_222;
                      }

                      if (Constell_Prn != 2)
                      {
                        goto LABEL_247;
                      }

                      v120 = (v88 - 1);
                      v121 = *(v180 + 12760 + 108 * v120 + 4);
                      v123 = v180 + 15352;
                      v122 = *(v180 + 11224 + (v120 << 6) + 4);
                    }

                    else
                    {
                      if (Constell_Prn != 3)
                      {
                        if (Constell_Prn == 4)
                        {
                          LODWORD(v120) = (v88 - 1);
                          v121 = *(v180 + 28220 + 100 * (v88 - 1) + 4);
                          v122 = *(v180 + 24520 + 100 * (v88 - 1) + 4);
                          v123 = v180 + 31920;
                          goto LABEL_222;
                        }

                        if (Constell_Prn == 5)
                        {
                          LODWORD(v120) = (v88 + 63);
                          v121 = *(v180 + 9688 + 108 * (v88 + 63) + 4);
                          v122 = *(v180 + 8608 + 108 * (v88 + 63) + 4);
                          v123 = v180 + 10768;
LABEL_222:
                          v124 = 44;
                          goto LABEL_223;
                        }

LABEL_247:
                        *(v93 + 8) = 0;
                        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 5955);
                        v133 = 0;
                        v128 = *(v91 + 164);
                        goto LABEL_250;
                      }

                      LODWORD(v120) = (v88 - 1);
                      v121 = *(v180 + 19904 + 88 * (v88 - 1) + 4);
                      v122 = *(v180 + 16736 + 88 * (v88 - 1) + 4);
                      v123 = v180 + 23072;
                    }

                    v124 = 36;
LABEL_223:
                    v125 = *(v123 + v120 * v124 + 4);
                    if (v122)
                    {
                      v125 = v122;
                    }

                    if (v121 == 6)
                    {
                      v126 = 4;
                    }

                    else if (v125 < 7 && ((0x79u >> v125) & 1) != 0)
                    {
                      v126 = dword_29972A5D4[v125];
                    }

                    else
                    {
                      EvCrt_Illegal_Default("Set_e_GN_RM_SV_Pos_Src", 5011);
                      v126 = 0;
                    }

                    *(v93 + 8) = v126;
                    v127 = *(v91 + 164);
                    v128 = *(v91 + 164);
                    if (Constell_Prn <= 2u)
                    {
                      if (Constell_Prn != 1)
                      {
                        v134 = *(v91 + 172);
                        v135 = *(v91 + 168);
                        if (v134 > 0 || v135 >= 1)
                        {
                          v136 = v134 + 1461 * *(v91 + 174);
                        }

                        else
                        {
                          *&v190[0] = 0;
                          API_Get_UTC_Cor(1, v190);
                          v198[0] = 0;
                          v200[0] = 0;
                          v201 = 0.0;
                          v128 = *(v91 + 164);
                          GPS_To_Glon_Time(0, v128, *(v91 + 160), *v190, v198, v200, &v201);
                          v136 = v200[0] + 1461 * v198[0];
                          v135 = v201;
                        }

                        v133 = v135 + 86400 * v136 - 126316800;
                        goto LABEL_250;
                      }
                    }

                    else if (Constell_Prn == 3)
                    {
                      v127 -= 1024;
                    }

                    else if (Constell_Prn == 4)
                    {
                      v129 = *(v91 + 160);
                      if (v129 < 14)
                      {
                        v130 = -1357;
                      }

                      else
                      {
                        v130 = -1356;
                      }

                      v131 = v130 + v127;
                      if (v129 >= 14)
                      {
                        v132 = -14;
                      }

                      else
                      {
                        v132 = 604786;
                      }

                      v133 = v132 + v129 + 604800 * v131;
                      goto LABEL_250;
                    }

                    v133 = *(v91 + 160) + 604800 * v127;
LABEL_250:
                    *(v93 + 16) = v133;
                    v196 = 0;
                    v197 = 0;
                    memset(v190, 0, sizeof(v190));
                    v191 = 0u;
                    v192 = 0u;
                    v193 = 0u;
                    v194 = 0u;
                    memset(v195, 0, sizeof(v195));
                    if (Comp_CurrState(0x1Eu, v128, v91, v190, *(v91 + 160) + -15.0, 0.0))
                    {
                      *(v93 + 24) = *(v190 + 8);
                      *(v93 + 40) = *(&v190[1] + 1);
                    }

                    if (Comp_CurrState(0x1Eu, *(v91 + 164), v91, v190, *(v91 + 160) + -5.0, 0.0))
                    {
                      *(v93 + 48) = *(v190 + 8);
                      *(v93 + 64) = *(&v190[1] + 1);
                    }

                    if (Comp_CurrState(0x1Eu, *(v91 + 164), v91, v190, *(v91 + 160) + 5.0, 0.0))
                    {
                      *(v93 + 72) = *(v190 + 8);
                      *(v93 + 88) = *(&v190[1] + 1);
                    }

                    if (Comp_CurrState(0x1Eu, *(v91 + 164), v91, v190, *(v91 + 160) + 15.0, 0.0))
                    {
                      *(v93 + 96) = *(v190 + 8);
                      *(v93 + 112) = *(&v190[1] + 1);
                    }

                    *(v93 + 120) = vmulq_f64(*(v91 + 96), v171);
                    *(v93 + 136) = 0;
                    goto LABEL_259;
                  }

LABEL_204:
                  v116 = 0.0;
                  v117 = 0.0;
                  goto LABEL_209;
                }

                if (v110 == 7)
                {
                  v111 = *(v178 + 7304);
                  v118 = sqrt(*(v178 + 7312));
                  goto LABEL_210;
                }
              }

              else
              {
                v83 = v177;
                if (v110 == 1)
                {
LABEL_202:
                  v118 = 0.0;
                  goto LABEL_210;
                }

                if (v110 == 4)
                {
                  v113 = *(v178 + 7288);
                  v114 = *(v178 + 7296);
                  *&v190[0] = 0;
                  if (!R8_EQ((v166 + 152), v190))
                  {
                    v201 = 0.0;
                    v115 = R8_EQ((v166 + 144), &v201);
                    v116 = 0.0;
                    v117 = 0.0;
                    if (!v115)
                    {
                      v116 = (*(v166 + 152) - *(v166 + 144)) * 299792458.0;
                      *&v194 = 0;
                      v192 = 0u;
                      v193 = 0u;
                      v191 = 0u;
                      memset(v190, 0, sizeof(v190));
                      v206 = 0u;
                      v205 = 0u;
                      v204 = 0u;
                      v203 = 0u;
                      v202 = 0u;
                      *v198 = xmmword_29972A490;
                      *v200 = 0.0;
                      v201 = -1.0;
                      mapu(v198, 1, 1u, 2, (v178 + 344), 0xBu, v190, 1, &v201, v200);
LABEL_208:
                      v117 = *v200 * *v200;
                      goto LABEL_209;
                    }

                    goto LABEL_209;
                  }

                  goto LABEL_204;
                }
              }

              EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 5871);
              goto LABEL_202;
          }
        }

        EvCrt_Illegal_Default("API_Get_Raw_Meas_Data", 5681);
        goto LABEL_172;
      }
    }

LABEL_259:
    ++v82;
    v84 += 5;
  }

  while (v82 != 178);
  v137 = *(v166 + 54);
  *v167 = *(v166 + 54);
  *(v167 + 1) = *(v166 + 188);
  *(v167 + 4) = *(v166 + 186);
  if (*(v166 + 52) == 1)
  {
    *(v167 + 3) = v137 - 1356;
    if (*(v166 + 40) < 14.0)
    {
      *(v167 + 3) = v137 - 1357;
    }

    *(v167 + 4) = v137 - 1024;
  }

  if ((*(v180 + 8444) - 3) <= 3)
  {
    v138 = v152[3];
    v139 = v137 - 127;
    if (v139 <= (v138 | 0x400))
    {
      LOWORD(v139) = v138 | 0x400;
    }

    v140 = ((v139 - v138 - 769) & 0xFF00 | v138) + 1024;
    *(v167 + 5) = v140;
    *(v167 + 6) = *(v152 + 2);
    *(v167 + 14) = v152[2];
    *(v167 + 8) = v140;
    *(v167 + 5) = *v152 << 12;
    v141 = *(v180 + 8448);
    v142.i64[0] = v141;
    v142.i64[1] = SHIDWORD(v141);
    v143 = vmulq_f64(vcvtq_f64_s64(v142), xmmword_29972A4A0);
    v83[3206] = vextq_s8(v143, v143, 8uLL);
  }

  if (v164[72] == 1)
  {
    *(v167 + 8) = *(v180 + 16236) * 0.931322575;
    *(v167 + 7) = -*(v180 + 16228) * 0.465661287;
    *(v167 + 50) = v164[8];
    *(v167 + 24) = *v164;
  }

  if ((*(v165 + 4) - 3) <= 3)
  {
    v144 = *(v165 + 13);
    v145 = *(v167 + 4) - 31;
    if (v145 <= v144)
    {
      LOWORD(v145) = *(v165 + 13);
    }

    *(v167 + 36) = ((v145 - v144 + 63) & 0xFFC0) + v144;
    *(v167 + 19) = *v165 % 604800;
    *(v167 + 10) = *(v165 + 8) * 0.0291038305;
    *(v167 + 11) = *(v165 + 10) * 0.00000044408921;
  }

  if ((*(v168 + 4) - 3) <= 3)
  {
    v146 = *v168 - 14;
    if (*v168 <= 14)
    {
      v146 = 0;
    }

    *(v167 + 48) = v146 / 0x93A80;
    *(v167 + 25) = v146 % 0x93A80;
    *(v167 + 13) = *(v168 + 8) * 0.1;
    *(v167 + 14) = *(v168 + 10) * 0.1;
  }

  if (*(v169 + 5) == 1 && *v169)
  {
    v147 = *(v169 + 32);
    v167[15] = llround((*(v169 + 24) - v147) * 1000000000.0) + 604800000000000 * *(v169 + 16) - 1000000 * *(v169 + 8);
    *(v167 + 16) = round(v147 * -1000000000.0) - v147 * -1000000000.0;
    *(v167 + 17) = *(v166 + 848) * 3.33564095;
  }

  v148.f64[0] = *(v169 + 40);
  v148.f64[1] = *(v166 + 888);
  *(v167 + 9) = vmulq_f64(v148, xmmword_29972A4B0);
  return 1;
}

uint64_t API_Get_GNSS_PR_Meas_Var(unsigned int *a1, unsigned __int16 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 4);
  if (v7 >= 0x2B)
  {
    v8 = 43;
  }

  else
  {
    v8 = *(a1 + 4);
  }

  v9 = v8 - v7 + *(a1 + 5);
  v12 = 999999;
  return NK_Get_PR_Meas_Var(*a1, *(*(p_api + 72) + 65), v8, v9, a3, ((52429 * v4) >> 18) & 0x3FFE, ((52429 * v5) >> 18) & 0x3FFE, ((52429 * v6) >> 18) & 0x3FFE, (a2 / 5u) & 0x3FFE, a4, 0xFFFFFF9D, *(*(p_api + 72) + 60), v11, &v12) >> 2;
}

BOOL API_Get_GAD_Data(_DWORD *a1, char a2, int *a3, _WORD *a4, char *a5, int *a6, int *a7, int *a8, _BYTE *a9, uint64_t a10)
{
  v119 = *MEMORY[0x29EDCA608];
  v10 = *(p_api + 88);
  if (a1)
  {
    v11 = *(v10 + 36);
    if (*a1)
    {
      v12 = *a1 == v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      return 0;
    }

    *a1 = v11;
  }

  v16 = 0;
  v17 = 0;
  v18 = (v10 + 968);
  do
  {
    if (*(v10 + 1496 + v16) != 1)
    {
      goto LABEL_25;
    }

    v19 = *v18;
    if (v19 <= 2)
    {
      if (!*v18)
      {
        goto LABEL_25;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          v17 |= 0x20u;
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      v17 |= 1u;
    }

    else if (*v18 > 4u)
    {
      if (v19 != 5)
      {
        if (v19 == 6)
        {
          v17 |= 4u;
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      v17 |= 0x10u;
    }

    else
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v17 |= 0x40u;
          goto LABEL_25;
        }

LABEL_21:
        EvCrt_Illegal_Default("API_Get_GAD_Data", 6430);
        goto LABEL_25;
      }

      v17 |= 2u;
    }

LABEL_25:
    ++v16;
    v18 += 4;
  }

  while (v16 != 48);
  *a9 = v17 & a2;
  v20 = *(v10 + 144);
  v21 = (*(v10 + 40) - v20) * 1000.0;
  if (v21 >= 0.0)
  {
    v22 = a7;
    v23 = a8;
    v24 = a6;
    if (v21 >= 604800000.0)
    {
      v21 = v21 + -604800000.0;
    }
  }

  else
  {
    v21 = v21 + 604800000.0;
    v22 = a7;
    v23 = a8;
    v24 = a6;
  }

  v25 = v21;
  *a3 = v21;
  v26 = ((v21 - v21) * 10000.0);
  v27 = *(v10 + 48);
  if (v27 != 11)
  {
    LOWORD(v26) = -1;
  }

  *a4 = v26;
  if ((*a9 & 0x20) != 0 && *(v10 + 180) > v27 || *(v10 + 380) && !*(v10 + 375))
  {
    v29 = (*(v10 + 192) - v20) * 1000.0;
    v30 = -0.5;
    if (v29 > 0.0)
    {
      v30 = 0.5;
    }

    v31 = v29 + v30;
    if (v31 <= 2147483650.0)
    {
      if (v31 >= -2147483650.0)
      {
        v25 = v31;
      }

      else
      {
        v25 = 0x80000000;
      }
    }

    else
    {
      v25 = 0x7FFFFFFF;
    }

    v27 = *(v10 + 180);
    v32 = 32;
    goto LABEL_50;
  }

  *v24 = 1;
  if ((*a9 & 0x15) != 0)
  {
    goto LABEL_51;
  }

  if ((*a9 & 2) != 0)
  {
    v32 = 2;
LABEL_50:
    *v24 = v32;
    goto LABEL_51;
  }

  if ((*a9 & 0x40) != 0)
  {
    *v24 = 64;
    v25 -= 14000;
  }

LABEL_51:
  if ((v25 & 0x80000000) != 0)
  {
    v33 = v25 + 86400000;
  }

  else
  {
    v33 = v25 % 0x5265C00;
  }

  *v22 = v33;
  if (v27 > 5)
  {
    if (v27 > 8)
    {
      switch(v27)
      {
        case 9:
          v34 = 92;
          break;
        case 10:
          v34 = 85;
          break;
        case 11:
          v34 = 78;
          goto LABEL_57;
        default:
          goto LABEL_167;
      }
    }

    else if (v27 == 6)
    {
      v34 = 113;
    }

    else if (v27 == 7)
    {
      v34 = 106;
    }

    else
    {
      v34 = 99;
    }

    goto LABEL_57;
  }

  if (v27 < 4)
  {
    v34 = 127;
    goto LABEL_57;
  }

  if (v27 == 4)
  {
    v34 = 126;
LABEL_57:
    *a5 = v34;
    goto LABEL_58;
  }

  if (v27 == 5)
  {
    v34 = 120;
    goto LABEL_57;
  }

LABEL_167:
  *a5 = 127;
  EvCrt_Illegal_Default("API_Get_GAD_Data", 6535);
LABEL_58:
  v35 = p_api;
  v36 = *(p_api + 8);
  v37 = *(p_api + 72);
  v38 = *(v36 + 4);
  if (!v38)
  {
    goto LABEL_65;
  }

  v39 = *(v36 + 8);
  if (v39 > 0x10000)
  {
    goto LABEL_65;
  }

  v40 = (*(v10 + 168) + 1.0) * (v39 * -0.0000000152587891 + (*(v10 + 32) - v38) * 0.001);
  HIDWORD(v41) = 1078984704;
  if (v40 > 64.0)
  {
    goto LABEL_65;
  }

  LODWORD(v41) = *(v37 + 948);
  if (v40 > v41 * 0.005)
  {
    goto LABEL_65;
  }

  v42 = v40 * 1000000.0;
  v43 = -0.5;
  if (v42 > 0.0)
  {
    v43 = 0.5;
  }

  v44 = v42 + v43;
  if (v44 <= 2147483650.0)
  {
    if (v44 >= -2147483650.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0x80000000;
    }
  }

  else
  {
LABEL_65:
    v45 = 0x7FFFFFFF;
  }

  *v23 = v45;
  if (*(v37 + 66))
  {
    v46 = (v10 + 952);
    v47 = *(v10 + 936);
  }

  else
  {
    v46 = (v10 + 352);
    v47 = *(v10 + 336);
  }

  v48 = -v47;
  v49 = *(v10 + 36);
  v51 = *(v10 + 208);
  v50 = *(v10 + 216);
  v52 = *(v10 + 224);
  v53 = *(v10 + 896);
  v109 = *(v10 + 904);
  v111 = *(v10 + 912);
  v113 = *(v10 + 824);
  v54 = *(v10 + 856);
  v55 = *(v10 + 864);
  v105 = *(v10 + 960);
  v107 = *v46;
  v56 = *(v35 + 328);
  v57 = *(v10 + 4);
  if (v57 < 3)
  {
    goto LABEL_88;
  }

  v28 = 0;
  if (!*a9 || v53 >= 400.0)
  {
    goto LABEL_89;
  }

  if (*(*(v35 + 232) + 25364) >> 4 > 0x752u)
  {
LABEL_88:
    v28 = 0;
    goto LABEL_89;
  }

  v28 = v57 != 3;
  if (*(v10 + 620) == 1 && *(v56 + 10) == 1 && *(v56 + 704) == 7 && *(v56 + 700) >= 2 && *(v56 + 664) <= 9000000.0)
  {
    *a9 |= 0x80u;
    v28 = 1;
  }

  if (*(v56 + 11) == 1 && *(v56 + 704) == 7 && *(v56 + 700) >= 2)
  {
    v58 = sqrt(*(v56 + 688));
    v101 = *(v56 + 632);
    EvCrt_v("API_Get_GAD_Data: HELO Altitude w.r.t Est Altitude: HELO Alt %f acc %f  Est Alt %f acc %f [1-sigma]", v101, v58, v52, v113);
    if (v58 <= 20.0)
    {
      EvLog_v("API_Get_GAD_Data: Override: Est Altitude Overridden with HELO Altitude.");
      *a9 |= 0x80u;
      v52 = v101;
      v113 = v58;
    }
  }

LABEL_89:
  if (a2 < 0 && !v28)
  {
    EvLog_v("GN_AGNSS_Get_GAD_Data:  No Valid GNSS Fix, but HELO is enabled, checking ...");
    if (*(v56 + 10) == 1 && *(v56 + 704) == 7 && (v59 = *(v56 + 700), v59 >= 2) && (v60 = *(v56 + 664), v60 <= 9000000.0))
    {
      if (v59 == 2)
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v114 = 0u;
        if (!Core_Get_Pos_E911(v49, &v114))
        {
          goto LABEL_95;
        }

        v103 = (*(v56 + 616) - *(&v114 + 1) * 0.0174532925) * 6378137.0;
        v88 = (*(v56 + 624) - *&v115 * 0.0174532925) * 6378137.0;
        v89 = cos(*(&v114 + 1) * 0.0174532925);
        v104 = sqrt(v89 * v88 * (v89 * v88) + v103 * v103);
        v90 = *(v56 + 664);
        v91 = (*(v56 + 608) - v114) * 0.015;
        v92 = sqrt(v90 + *(&v115 + 1) * *(&v115 + 1) + v91 * v91);
        EvCrt_v("API_Get_GAD_Data:  HELO check:  dAge %d  dPos %f  RelSig %f  Acc %f %f", *(v56 + 608) - v114, v104, v92, sqrt(v90), *(&v115 + 1));
        if (v104 > 2000.0 && v104 > v92 * 3.0)
        {
          EvCrt_v("API_Get_GAD_Data:  HELO Rejected:  Too far from E-911 Ref Pos,  diff %f > %f max", v104, 2000.0);
          EvCrt_v("API_Get_GAD_Data:  HELO Rejected:  Inconsistent with E-911 Ref Pos,  diff %f  rel_sig %f", v104, v92);
          goto LABEL_95;
        }

        v60 = *(v56 + 664);
      }

      v51 = *(v56 + 616);
      v50 = *(v56 + 624);
      v52 = *(v56 + 632);
      v53 = sqrt(v60);
      v94 = sqrt(*(v56 + 672));
      v111 = *(v56 + 680);
      v95 = *(v56 + 688);
      v96 = *(v10 + 36) - *(v56 + 608);
      v49 -= v96;
      v97 = *a3;
      if (*a3 < v96)
      {
        v97 = *a3 + 604800000;
      }

      v98 = v97 - v96;
      if (v98 > 0x240C83FF)
      {
        v98 -= 604800000;
      }

      *a3 = v98;
      v99 = *v22;
      if (*v22 < v96)
      {
        v99 = *v22 + 86400000;
      }

      v100 = v99 - v96;
      if (v100 > 0x5265BFF)
      {
        v100 -= 86400000;
      }

      *v22 = v100;
      *a9 = 0x80;
      v113 = sqrt(v95);
      v109 = v94;
      EvCrt_v("API_Get_GAD_Data:  HELO Inserted:  Age %d  Acc %f  %f  %f", v96, v53, v94, v113);
      v28 = 1;
      v55 = 2.0;
      v54 = 20.0;
      v105 = 0.0;
      v107 = 0.0;
      v48 = 0.0;
    }

    else
    {
LABEL_95:
      v28 = 0;
    }
  }

  *a10 = v49;
  *(a10 + 4) = v51 < 0.0;
  v61 = fabs(v51) * 5340353.08;
  v62 = -0.5;
  if (v61 <= 0.0)
  {
    v63 = -0.5;
  }

  else
  {
    v63 = 0.5;
  }

  v64 = v61 + v63;
  if (v64 <= 2147483650.0)
  {
    if (v64 >= -2147483650.0)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0x80000000;
    }
  }

  else
  {
    v65 = 0x7FFFFFFF;
  }

  *(a10 + 8) = v65;
  if (v50 * 2670176.86 > 0.0)
  {
    v62 = 0.5;
  }

  v66 = v50 * 2670176.86 + v62;
  if (v66 <= 2147483650.0)
  {
    if (v66 >= -2147483650.0)
    {
      v67 = v66;
      if (v66 >= 0x800000)
      {
        v67 -= 0x1000000;
      }
    }

    else
    {
      v67 = 0x80000000;
    }
  }

  else
  {
    v67 = 2130706431;
  }

  *(a10 + 12) = v67;
  *(a10 + 16) = v52 < 0.0;
  v68 = fabs(v52);
  v69 = -0.5;
  if (v52 < 0.0)
  {
    v69 = 0.5;
  }

  if (v52 > 0.0)
  {
    v69 = 0.5;
  }

  v70 = v68 + v69;
  v102 = v54;
  if (v70 <= 2147483650.0)
  {
    v71 = v48;
    v72 = v55;
    if (v70 >= -2147483650.0)
    {
      v73 = v70;
    }

    else
    {
      v73 = 0x80000000;
    }
  }

  else
  {
    v71 = v48;
    v72 = v55;
    v73 = 0x7FFFFFFF;
  }

  if (v73 >= 0x7FFF)
  {
    LOWORD(v73) = 0x7FFF;
  }

  *(a10 + 18) = v73;
  v74 = (log(v53 * 2.146 * 0.1 + 1.0) * 10.4920587);
  if (v74 >= 126)
  {
    LOBYTE(v74) = 126;
  }

  *(a10 + 20) = v74 + 1;
  v75 = (log(v109 * 2.146 * 0.1 + 1.0) * 10.4920587);
  if (v75 >= 126)
  {
    LOBYTE(v75) = 126;
  }

  *(a10 + 21) = v75 + 1;
  v76 = v111 >> 1;
  if (v111 > 0xB3)
  {
    LOBYTE(v76) = v76 - 90;
  }

  *(a10 + 22) = v76;
  v77 = (log(v113 * 1.645 * 0.0222222222 + 1.0) * 40.4979423);
  if (v77 >= 126)
  {
    LOBYTE(v77) = 126;
  }

  *(a10 + 23) = v77 + 1;
  *(a10 + 24) = 90;
  *(a10 + 25) = v71 > 0.0;
  *(a10 + 26) = v105;
  v78 = -0.5;
  if (v107 * 3.6 > 0.0)
  {
    v78 = 0.5;
  }

  v79 = v107 * 3.6 + v78;
  if (v79 <= 2147483650.0)
  {
    if (v79 >= -2147483650.0)
    {
      v80 = v79;
    }

    else
    {
      v80 = 0x80000000;
    }
  }

  else
  {
    v80 = 0x7FFFFFFF;
  }

  if (v80 >= 0x7FFF)
  {
    LOWORD(v80) = 0x7FFF;
  }

  *(a10 + 28) = v80;
  v81 = fabs(v71) * 3.6;
  v82 = -0.5;
  if (v81 > 0.0)
  {
    v82 = 0.5;
  }

  v83 = v81 + v82;
  if (v83 <= 2147483650.0)
  {
    if (v83 >= -2147483650.0)
    {
      v84 = v83;
    }

    else
    {
      v84 = 0x80000000;
    }
  }

  else
  {
    v84 = 0x7FFFFFFF;
  }

  if (v84 >= 127)
  {
    LOBYTE(v84) = 127;
  }

  *(a10 + 30) = v84;
  v85 = (v102 * 2.146 * 3.6);
  if (v85 >= 254)
  {
    LOBYTE(v85) = -2;
  }

  *(a10 + 31) = v85 + 1;
  v86 = (v72 * 1.645 * 3.6);
  if (v86 >= 254)
  {
    LOBYTE(v86) = -2;
  }

  *(a10 + 32) = v86 + 1;
  return v28;
}