void *print_line_LS(void *result, int a2)
{
  v2 = result[36];
  v3 = result[10];
  v4 = result[17];
  v5 = result[26];
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (g_Logging_Cfg < 5)
      {
        return result;
      }

      v6 = v5 + 195;
      v7 = v5 + 203;
      v8 = "LS_Glo ";
      goto LABEL_26;
    }

    if (a2 == 4)
    {
      if (g_Logging_Cfg < 5)
      {
        return result;
      }

      v6 = v5 + 262;
      v7 = v5 + 268;
      v8 = "LS_GAL ";
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (g_Logging_Cfg < 5)
      {
        return result;
      }

      v6 = v5 + 128;
      v7 = v5 + 134;
      v8 = "LS_GPS ";
      goto LABEL_26;
    }

LABEL_10:
    if (g_Logging_Cfg < 5)
    {
      return result;
    }

    v6 = v5 + 329;
    v7 = v5 + 339;
    v8 = "LS_BDS ";
    goto LABEL_26;
  }

  v9 = result[22];
  v10 = *(v9 + 63855);
  v11 = *(v9 + 63856);
  v12 = *(v9 + 63857);
  v13 = 0.0;
  if (v10 < 0)
  {
    v14 = 9999000.0;
  }

  else
  {
    v14 = 9999000.0;
    if (*(v9 + 8 * v10 + 63560) <= 9999000.0)
    {
      v13 = *(v9 + 63376);
      v14 = *(v9 + 8 * v10 + 63560);
    }
  }

  v6 = (v9 + 63328);
  if ((v11 & 0x80000000) == 0 && v14 >= *(v9 + 8 * v11 + 63560))
  {
    v13 = *(v9 + 63392);
    v14 = *(v9 + 8 * v11 + 63560);
  }

  if ((v12 & 0x80000000) == 0 && v14 >= *(v9 + 8 * v12 + 63560))
  {
    v7 = (v9 + 63408);
    v8 = "LS_All ";
LABEL_26:
    v13 = *v7;
    goto LABEL_27;
  }

  v8 = "LS_All ";
LABEL_27:
  v15 = *v8;
  if (*v8)
  {
    v16 = *v2;
    v17 = (v8 + 1);
    do
    {
      *v2 = v16 + 1;
      *v16 = v15;
      v16 = *v2;
      if (*v2 >= *(v2 + 24))
      {
        v16 = *(v2 + 16);
        *v2 = v16;
      }

      v18 = *v17++;
      v15 = v18;
    }

    while (v18);
  }

  v19 = 0;
  v20 = v3 + 224;
  v21 = v4 + 68288;
  do
  {
    if (v6[51] < 0)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = v6[v19 + 16] - *(v20 + 8 * v19);
    }

    if (v19 != 2)
    {
      if (v19 == 1)
      {
        v23 = -6.28318531;
        if (v22 >= 3.14159265 || (v23 = 6.28318531, v22 < -3.14159265))
        {
          v22 = v22 + v23;
        }
      }

      v22 = v22 * *(v21 + 8 * v19);
    }

    v24 = (*v2)++;
    *v24 = 32;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_12f3(v2, v22);
    ++v19;
  }

  while (v19 != 3);
  v25 = (*v2)++;
  *v25 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_sgR8(v2, v6[24]);
  sprintf_sgR8(v2, -v6[23]);
  sprintf_6d(v2, v6[25]);
  v26 = *v2;
  v27 = 32;
  v28 = 1u;
  do
  {
    *v2 = v26 + 1;
    *v26 = v27;
    v26 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v26 = *(v2 + 16);
      *v2 = v26;
    }

    v27 = aClk[v28++];
  }

  while (v28 != 6);
  sprintf_8d(v2, v13);
  sprintf_sgR8(v2, v6[20]);
  sprintf_sgR8(v2, v6[12]);
  v29 = (*v2)++;
  *v29 = 32;
  v30 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v30 = *(v2 + 16);
  }

  *v2 = v30 + 1;
  *v30 = 80;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_2d(v2, *(v6 + 392));
  sprintf_3d(v2, *(v6 + 408));
  v31 = fmin(v6[50], 9.89999962) * 10.0;
  v32 = -0.5;
  if (v31 > 0.0)
  {
    v32 = 0.5;
  }

  v33 = v31 + v32;
  if (v33 <= 2147483650.0)
  {
    if (v33 >= -2147483650.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0x80000000;
    }
  }

  else
  {
    v34 = 0x7FFFFFFFLL;
  }

  sprintf_3f(v2, v34, 2);
  sprintf_3d(v2, *v6);
  v35 = 0;
  v36 = *v2;
  v37 = 32;
  do
  {
    *v2 = v36 + 1;
    *v36 = v37;
    v36 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v36 = *(v2 + 16);
      *v2 = v36;
    }

    v37 = aEl[++v35];
  }

  while (v35 != 4);
  sprintf_ACC(v2, v6[26]);
  v38 = (*v2)++;
  *v38 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_ACC(v2, v6[27]);
  v39 = (*v2)++;
  *v39 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_ACC(v2, v6[28]);
  v40 = 0;
  v41 = *v2;
  v42 = 32;
  do
  {
    *v2 = v41 + 1;
    *v41 = v42;
    v41 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v41 = *(v2 + 16);
      *v2 = v41;
    }

    v42 = aVf[++v40];
  }

  while (v40 != 4);
  sprintf_sgR8(v2, sqrt(v6[2]));
  sprintf_sgR8(v2, v6[1]);
  v43 = (*v2)++;
  *v43 = 32;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_sgR8(v2, sqrt(v6[4]));
  sprintf_sgR8(v2, v6[3]);
  v44 = (*v2)++;
  *v44 = 32;
  v45 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v45 = *(v2 + 16);
  }

  *v2 = v45 + 1;
  *v45 = 72;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[45], 99999.0));
  v46 = (*v2)++;
  *v46 = 32;
  v47 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v47 = *(v2 + 16);
  }

  *v2 = v47 + 1;
  *v47 = 86;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[46], 99999.0));
  v48 = (*v2)++;
  *v48 = 32;
  v49 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v49 = *(v2 + 16);
  }

  *v2 = v49 + 1;
  *v49 = 66;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[47], 99999.0));
  v50 = (*v2)++;
  *v50 = 32;
  v51 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v51 = *(v2 + 16);
  }

  *v2 = v51 + 1;
  *v51 = 83;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_6d(v2, fmin(v6[48], 99999.0));
  v52 = (*v2)++;
  *v52 = 32;
  v53 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v53 = *(v2 + 16);
  }

  *v2 = v53 + 1;
  *v53 = 72;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 320));
  v54 = (*v2)++;
  *v54 = 32;
  v55 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v55 = *(v2 + 16);
  }

  *v2 = v55 + 1;
  *v55 = 86;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 321));
  v56 = (*v2)++;
  *v56 = 32;
  v57 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v57 = *(v2 + 16);
  }

  *v2 = v57 + 1;
  *v57 = 66;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 322));
  v58 = (*v2)++;
  *v58 = 32;
  v59 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v59 = *(v2 + 16);
  }

  *v2 = v59 + 1;
  *v59 = 83;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_3d(v2, *(v6 + 323));
  v60 = (*v2)++;
  *v60 = 32;
  v61 = *v2;
  if (*v2 >= *(v2 + 24))
  {
    v61 = *(v2 + 16);
  }

  *v2 = v61 + 1;
  *v61 = 86;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  sprintf_2d(v2, *(v6 + 488));
  sprintf_3d(v2, *(v6 + 504));
  v62 = fmin(v6[62], 9.98999977) * 100.0;
  v63 = -0.5;
  if (v62 > 0.0)
  {
    v63 = 0.5;
  }

  v64 = v62 + v63;
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
    v65 = 0x7FFFFFFFLL;
  }

  sprintf_4f(v2, v65, 3);
  if (g_Logging_Cfg >= 6)
  {
    v66 = (*v2)++;
    *v66 = 32;
    v67 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v67 = *(v2 + 16);
    }

    *v2 = v67 + 1;
    *v67 = 72;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[57], 99.0));
    v68 = (*v2)++;
    *v68 = 32;
    v69 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v69 = *(v2 + 16);
    }

    *v2 = v69 + 1;
    *v69 = 86;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[58], 99.0));
    v70 = (*v2)++;
    *v70 = 32;
    v71 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v71 = *(v2 + 16);
    }

    *v2 = v71 + 1;
    *v71 = 66;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[59], 99.0));
    v72 = (*v2)++;
    *v72 = 32;
    v73 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v73 = *(v2 + 16);
    }

    *v2 = v73 + 1;
    *v73 = 83;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_3d(v2, fmin(v6[60], 99.0));
    v74 = (*v2)++;
    *v74 = 32;
    v75 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v75 = *(v2 + 16);
    }

    *v2 = v75 + 1;
    *v75 = 72;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_4d(v2, *(v6 + 416));
    v76 = (*v2)++;
    *v76 = 32;
    v77 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v77 = *(v2 + 16);
    }

    *v2 = v77 + 1;
    *v77 = 86;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_4d(v2, *(v6 + 417));
    v78 = (*v2)++;
    *v78 = 32;
    v79 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v79 = *(v2 + 16);
    }

    *v2 = v79 + 1;
    *v79 = 66;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_4d(v2, *(v6 + 418));
    v80 = (*v2)++;
    *v80 = 32;
    v81 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v81 = *(v2 + 16);
    }

    *v2 = v81 + 1;
    *v81 = 83;
    if (*v2 >= *(v2 + 24))
    {
      *v2 = *(v2 + 16);
    }

    sprintf_4d(v2, *(v6 + 419));
  }

  v82 = (*v2)++;
  *v82 = 10;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  return GNSS_Nav_Debug_Flush_Check(v2);
}

uint64_t sprintf_LaLo(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(a2 + 8 * v4) * 57.2957795;
    v8 = -v7;
    if (v7 >= 0.0)
    {
      v8 = *(a2 + 8 * v4) * 57.2957795;
    }

    v9 = v8;
    v10 = (v8 - v9) * 60.0;
    v11 = v10;
    v12 = (v10 - v11) * 60.0;
    sprintf_4d(a1, v9);
    sprintf_3d(a1, v11);
    if (v12 * 100000.0 <= 0.0)
    {
      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = v12 * 100000.0 + v13;
    if (v14 <= 2147483650.0)
    {
      if (v14 >= -2147483650.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0x80000000;
      }
    }

    else
    {
      v15 = 0x7FFFFFFFLL;
    }

    result = sprintf_8f(a1, v15, 6);
    v17 = &ch_NSEW[8 * v4];
    if (*(a2 + 8 * v4) < 0.0)
    {
      v17 += 4;
    }

    v18 = *v17;
    if (*v17)
    {
      v19 = *a1;
      v20 = (v17 + 1);
      do
      {
        *a1 = v19 + 1;
        *v19 = v18;
        v19 = *a1;
        if (*a1 >= *(a1 + 24))
        {
          v19 = *(a1 + 16);
          *a1 = v19;
        }

        v21 = *v20++;
        v18 = v21;
      }

      while (v21);
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t Get_Char_Ass_Status_Edit(unsigned int a1)
{
  if (a1 >= 0x29)
  {
    gn_report_assertion_failure("Ass_Status_Edit_Char");
    return 120;
  }

  else
  {
    return aCghkmnpqrstvya[a1 + 31];
  }
}

uint64_t GN_AGLON_Set_Alm_El(unsigned __int16 *a1)
{
  v39 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGLON_Set_Alm_El");
  if (result)
  {
    if (g_Logging_Cfg < 5)
    {
      EvLog_d("GN_AGLON_Set_Alm_El: ", *(a1 + 2));
    }

    else
    {
      EvLog_v("GN_AGLON_Set_Alm_El: %4d %2d %2d %8d %7d %7d %8d %3d %5d %4d %d %d %d %d", *a1, *(a1 + 2), *(a1 + 3), *(a1 + 1), *(a1 + 2), *(a1 + 3), *(a1 + 4), *(a1 + 20), a1[11], a1[12], a1[13], *(a1 + 28), *(a1 + 29), *(a1 + 30));
    }

    v3 = *(a1 + 2);
    if ((v3 - 25) <= 0xFFFFFFE7)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: Sat_ID = %d <%d or >%d, Out of range!");
      return 0;
    }

    v4 = *a1;
    if ((v4 - 1462) <= 0xFFFFFA4A)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmNA = %d <1 or >%d, Out of range!");
      return 0;
    }

    v5 = *(a1 + 3);
    if (v5 >= 0x20)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmHA = %d >31, Out of range!");
      return 0;
    }

    v6 = *(a1 + 1);
    if ((v6 - 0x100000) >> 21 != 2047)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmLambdaA = %d <-2^20 or >=2^20, Out of range!");
      return 0;
    }

    v7 = *(a1 + 2);
    if (v7 >= 0x200000)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmtlambdaA = %d >=2^21, Out of range!");
      return 0;
    }

    v8 = *(a1 + 3);
    if ((v8 - 0x20000) <= 0xFFFBFFFF)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmDeltaIa = %d <-2^17 or >=2^17, Out of range!");
      return 0;
    }

    v9 = *(a1 + 4);
    if ((v9 - 0x200000) >> 22 != 1023)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmDeltaTA = %d <-2^21 or >=2^21, Out of range!");
      return 0;
    }

    v10 = *(a1 + 20);
    if (((v10 - 64) & 0x80) == 0)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmDeltaTdotA = %d <-2^6 or >=2^6, Out of range!");
      return 0;
    }

    v11 = a1[11];
    if (v11 < 0)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmEpsilonA = %d >=2^15, Out of range!");
      return 0;
    }

    v12 = a1[13];
    if (((v12 - 512) >> 10) <= 0x3Eu)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmTauA = %d <-2^9 or >=2^9, Out of range!");
      return 0;
    }

    v13 = *(a1 + 28);
    if (v13 >= 2)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmCA = %d >1, Out of range!");
      return 0;
    }

    v14 = *(a1 + 29);
    if (v14 >= 4)
    {
      EvCrt_v("GN_AGLON_Set_Alm_El: FAILED: gloAlmMA = %d >3, Out of range!");
      return 0;
    }

    if (*(a1 + 30))
    {
      v15 = 5;
    }

    else
    {
      v15 = 3;
    }

    v16[0] = 0;
    v16[1] = v15;
    v17 = v4;
    v18 = v3;
    v19 = v5;
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v26 = a1[12];
    v27 = v12;
    v30 = 1;
    v28 = v13;
    v29 = v14;
    v35 = 0;
    v36 = 0;
    v37 = 0uLL;
    v38 = 0;
    GLON_AlmInt2Bin(v16, &v35);
    v31 = 0;
    v32 = v37;
    v33 = v38;
    v34 = HIDWORD(v35) == 5;
    WORD2(v31) = v36;
    return GN_AGLON_Set_Alm(*(a1 + 2), &v31);
  }

  return result;
}

void Init_DB_SV_AzEl(uint64_t a1)
{
  *&v2 = 0x9D9D9D9D9D9D9D9DLL;
  *(&v2 + 1) = 0x9D9D9D9D9D9D9D9DLL;
  *(a1 + 202) = v2;
  *(a1 + 176) = v2;
  *(a1 + 192) = v2;
  *(a1 + 144) = v2;
  *(a1 + 160) = v2;
  *(a1 + 112) = v2;
  *(a1 + 128) = v2;
  *(a1 + 80) = v2;
  *(a1 + 96) = v2;
  *(a1 + 48) = v2;
  *(a1 + 64) = v2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v2;
  *a1 = v2;
  memset_pattern16((a1 + 218), &memset_pattern, 0x1B4uLL);
  v3 = 218;
  v4 = a1;
  do
  {
    *(v4 + 656) = -99;
    *(v4 + 688) = 0xC058C00000000000;
    *(v4 + 9376) = -400;
    *(v4 + 9408) = 0xC079000000000000;
    v4 += 40;
    --v3;
  }

  while (v3);
  *(a1 + 654) = 0;
}

void GncP07_06SendPENVRestoreResp(int a1, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP07_06SendPENVRestoreResp", 47, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[12] = a1;
    v4[13] = a2;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_RSP =>GNM Code,%hhu,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP07_06SendPENVRestoreResp", a1, a2);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 128, 8654084, v5);
  }
}

uint64_t GncP07_07HandlePENVRestore(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_RESTORE_REQ NVSize,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP07_07HandlePENVRestore", *(a1 + 12), *(a1 + 24));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 = *(a1 + 12);
    if (*(a1 + 12) && (v4 = *(a1 + 16)) != 0)
    {
      if (v3 == 33424)
      {
        if (qword_2A1454220)
        {
          memcpy_s("GncP07_07HandlePENVRestore", 107, qword_2A1454220, 0x8290u, v4, v3);
          v5 = *(a1 + 16);
          if (v5)
          {
            free(v5);
          }

          v6 = 0;
          *(a1 + 16) = 0;
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v12 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP07_07HandlePENVRestore", 769);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          v6 = 3;
        }
      }

      else if (g_LbsOsaTrace_Config < 2)
      {
        v6 = 1;
      }

      else
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NVSize Mismatch PESize,%u,GNMSize,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP07_07HandlePENVRestore", 33424, *(a1 + 12));
        v6 = 1;
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v8 = *(a1 + 24);
      v9 = v6;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 87, "GncP07_07HandlePENVRestore", 513);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v8 = *(a1 + 24);
      v9 = 2;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 69, "GncP07_07HandlePENVRestore", 517);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v9 = 2;
    v8 = 255;
  }

  GncP07_06SendPENVRestoreResp(v9, v8);
  return 0;
}

void GncP07_08WriteNVStore(size_t a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NVStore\n");
LABEL_12:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    return;
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NVSize,0\n");
    goto LABEL_12;
  }

  v4 = gnssOsa_Calloc("GncP07_08WriteNVStore", 134, 1, 0x18uLL);
  if (v4)
  {
    v5 = v4;
    v6 = gnssOsa_Calloc("GncP07_08WriteNVStore", 140, a1, 1uLL);
    v5[2] = v6;
    if (v6)
    {
      *(v5 + 6) = a1;
      memcpy_s("GncP07_08WriteNVStore", 148, v6, a1, a2, a1);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_PE_NV_BACKUP_IND =>GNM NVSize,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP07_08WriteNVStore", a1);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 128, 8653827, v5);
    }

    else
    {

      free(v5);
    }
  }
}

uint64_t GN_AGAL_Set_Eph_El(uint64_t a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGAL_Set_Eph"))
  {
    return 0;
  }

  EvLog_d("GN_AGAL_Set_Eph: ", *(a1 + 6));
  if (*a1 > 0x93A7Fu)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: TOW = %d >604800, Out of range!");
    return 0;
  }

  v2 = *(a1 + 4);
  if (v2 >= 0x1000)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: Week = %d >=4096, Out of range!");
    return 0;
  }

  v3 = *(a1 + 6);
  if (v3 >= 0x40)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: SVid = %d >=64, Out of range!");
    return 0;
  }

  if (v3 >= 0x25)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: SVid = %d >36, Unrealistic value!");
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4 >= 0x400)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: IODnav = %d >=1024, Out of range!");
    return 0;
  }

  v5 = *(a1 + 10);
  if (v5 >> 5 >= 0x13B)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: toe = %d >=10080, Out of range!");
    return 0;
  }

  v6 = 0.03;
  if (((v3 - 14) & 0xFB) == 0)
  {
    v6 = 0.25;
  }

  v7 = *(a1 + 16);
  if (v7 * 1.16415322e-10 > v6)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: e = %g > %g, Unrealistic value!");
    return 0;
  }

  v8 = *(a1 + 20);
  v9 = vcvtd_n_f64_u32(v8, 0x13uLL);
  if (v9 < 4800.0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: sqrtA = %g < %g, Unrealistic value!");
    return 0;
  }

  if (v9 > 5800.0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: sqrtA = %g > %g, Unrealistic value!");
    return 0;
  }

  if (((*(a1 + 40) - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: IDot = %d <-2^13 or >=2^13, Out of range!");
    return 0;
  }

  v10 = *(a1 + 36);
  if ((v10 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v11 = v10 * 3.57157734e-13;
  if (v11 < -0.00000198862815)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: OmegaDot = %e < %e, Unrealistic value!");
    return 0;
  }

  if (v11 > 0.0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: OmegaDot = %e > %e, Unrealistic value!");
    return 0;
  }

  v12 = *(a1 + 56);
  if (v12 - 0x40000000 >= 0)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: af0 = %d <-2^30 or >=2^30, Out of range!");
    return 0;
  }

  v13 = *(a1 + 60);
  if ((v13 - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: af1 = %d <-2^20 or >=2^20, Out of range!");
    return 0;
  }

  if (((*(a1 + 64) - 32) >> 6) <= 0x3FEu)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: af2 = %d <-2^5 or >=2^5, Out of range!");
    return 0;
  }

  v14 = *(a1 + 66);
  if (v14 >> 5 >= 0x13B)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: toc = %d >=10080, Out of range!");
    return 0;
  }

  if (((*(a1 + 68) - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: bgdE1E5b = %d <-2^9 or >=2^9, Out of range!");
    return 0;
  }

  v15 = *(a1 + 70);
  if (((v15 - 512) >> 10) <= 0x3Eu)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: bgdE1E5a = %d <-2^9 or >=2^9, Out of range!");
    return 0;
  }

  v16 = *(a1 + 72);
  if (v16 >= 2)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: Model_ID = %d >1, Out of range!");
    return 0;
  }

  v17 = *(a1 + 73);
  if (v17 >= 2)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5a_Nav_DVS = %d >1, Out of range!");
    return 0;
  }

  v18 = *(a1 + 74);
  if (v18 >= 2)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5b_Nav_DVS = %d >1, Out of range!");
    return 0;
  }

  v19 = *(a1 + 75);
  if (v19 >= 2)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E1B_Nav_DVS = %d >1, Out of range!");
    return 0;
  }

  v20 = *(a1 + 76);
  if (v20 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5a_Sig_HS = %d >3, Out of range!");
    return 0;
  }

  v21 = *(a1 + 77);
  if (v21 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E5b_Sig_HS = %d >3, Out of range!");
    return 0;
  }

  v22 = *(a1 + 78);
  if (v22 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: E1B_Sig_HS = %d >3, Out of range!");
    return 0;
  }

  v23 = *(a1 + 79);
  if (v23 >= 7)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: Fit_hours = %d >6, Out of range!");
    return 0;
  }

  v24 = v3 - 1;
  if (v24 > 0x23)
  {
    EvCrt_v("GN_AGAL_Set_Eph: FAILED: SVid = %d <%d or >%d, Out of range!");
    return 0;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 64);
  v27 = *(a1 + 68);
  v28 = p_NA;
  v29 = p_NA + 5588;
  v30 = p_NA + 5588 + 88 * v24;
  *(v30 + 8) = *a1;
  *(v30 + 12) = v2;
  *(v30 + 14) = v3;
  *(v30 + 15) = *(a1 + 7);
  *(v30 + 16) = v4;
  *(v30 + 18) = v5;
  *(v30 + 20) = *(a1 + 12);
  *(v30 + 24) = v7;
  *(v30 + 28) = v8;
  *(v30 + 32) = *(a1 + 24);
  *(v30 + 40) = *(a1 + 32);
  *(v30 + 44) = v10;
  *(v30 + 48) = v25;
  *(v30 + 50) = *(a1 + 42);
  *(v30 + 58) = *(a1 + 50);
  *(v30 + 60) = *(a1 + 52);
  if (v23 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v23;
  }

  *(v30 + 87) = v31;
  v32 = (v30 + 87);
  *(v32 - 23) = v12;
  *(v32 - 19) = v13;
  *(v32 - 15) = v26;
  *(v32 - 13) = v14;
  *(v32 - 11) = v27;
  *(v32 - 9) = v15;
  *(v32 - 7) = v16;
  *(v32 - 6) = v17;
  *(v32 - 5) = v18;
  *(v32 - 4) = v19;
  *(v32 - 3) = v20;
  *(v32 - 2) = v21;
  *(v32 - 1) = v22;
  if ((v3 == 18 || v3 == 14) && v23 >= 3)
  {
    *v32 = 2;
  }

  if (*(a1 + 80))
  {
    v33 = 5;
  }

  else
  {
    v33 = 3;
  }

  *(v29 + 88 * v24 + 4) = v33;
  *(v28 + v24 + 147) = 1;
  v34 = *(p_api + 48);
  if (*(v34 + 16) == 1 && *v34 >= 3)
  {
    v35 = 604800 * *(v34 + 32) + *(v34 + 40);
  }

  else
  {
    v35 = 0;
  }

  v38 = (v29 + 88 * v24);
  *v38 = v35;
  v36 = 1;
  Debug_Log_GAL_Eph(1, v38);
  return v36;
}

uint64_t GN_AGAL_Set_Alm_El(unsigned __int8 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGAL_Set_Alm"))
  {
    return 0;
  }

  EvLog_d("GN_AGAL_Set_Alm: ", *a1);
  v2 = *a1;
  if (v2 >= 0x40)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: SVid = %d >=64, Out of range!");
    return 0;
  }

  if (v2 >= 0x25)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: SVid = %d >36, Unrealistic value!");
    return 0;
  }

  v3 = a1[1];
  if (v3 >= 0x10)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: IODa = %d > 15, Out of range!");
    return 0;
  }

  v4 = a1[2];
  if (v4 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: WNa = %d > 3, Out of range!");
    return 0;
  }

  v5 = *(a1 + 2);
  if (v5 >= 0x400)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: toa = %d > 1023, Out of range!");
    return 0;
  }

  v6 = *(a1 + 3);
  if ((v6 - 4097) <= 0xDFFEu)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: dsqrtA = %d <-2^12 or >=2^12, Out of range!");
    return 0;
  }

  v7 = vcvtd_n_f64_s32(v6, 9uLL);
  if (v7 < -640.588203)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: dsqrtA = %g < %g, Unrealistic value!");
    return 0;
  }

  if (v7 > 359.411797)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: dsqrtA = %g > %g, Unrealistic value!");
    return 0;
  }

  v8 = *(a1 + 4);
  if (v8 >= 0x800)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: e = %d >= 2^11, Out of range!");
    return 0;
  }

  v9 = 0.03;
  if (((v2 - 14) & 0xFB) == 0)
  {
    v9 = 0.25;
  }

  if (vcvtd_n_f64_u32(v8, 0x10uLL) > v9)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: e = %g > %g, Unrealistic value!");
    return 0;
  }

  if ((*(a1 + 5) - 1025) <= 0xF7FEu)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: di0 = %d <-2^10 or >2^10, Out of range!");
    return 0;
  }

  if ((*(a1 + 7) - 1025) <= 0xF7FEu)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: OmegaDot = %d <-2^10 or >2^10, Out of range!");
    return 0;
  }

  v10 = *(a1 + 7);
  v11 = v10 * 3.6572952e-10;
  if (v11 < -0.00000198862815)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: OmegaDot = %e < %e, Unrealistic value!");
    return 0;
  }

  if (v11 > 0.0)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: OmegaDot = %e > %e, Unrealistic value!");
    return 0;
  }

  v12 = *(a1 + 11);
  if (((v12 - 4096) >> 13) <= 6u)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: af1 = %d <-2^12 or >=2^12, Out of range!");
    return 0;
  }

  v13 = a1[24];
  if (v13 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: E5a_Sig_HS = %d >3, Out of range!");
    return 0;
  }

  v14 = a1[25];
  if (v14 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: E5b_Sig_HS = %d >3, Out of range!");
    return 0;
  }

  v15 = a1[26];
  if (v15 >= 4)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: E1B_Sig_HS = %d >3, Out of range!");
    return 0;
  }

  v16 = v2 - 1;
  if (v16 > 0x23)
  {
    EvCrt_v("GN_AGAL_Set_Alm: FAILED: SVid = %d <%d or >%d, Out of range!");
    return 0;
  }

  v17 = *(a1 + 5);
  v18 = p_NA;
  v19 = p_NA + 8756;
  v20 = p_NA + 8756 + 36 * v16;
  *(v20 + 8) = v2;
  *(v20 + 9) = v3;
  *(v20 + 10) = v4;
  *(v20 + 12) = v5;
  *(v20 + 14) = v6;
  *(v20 + 16) = v8;
  *(v20 + 18) = v17;
  *(v20 + 20) = *(a1 + 6);
  *(v20 + 22) = v10;
  *(v20 + 24) = *(a1 + 8);
  *(v20 + 26) = *(a1 + 18);
  *(v20 + 30) = v12;
  *(v20 + 32) = v13;
  *(v20 + 33) = v14;
  *(v20 + 34) = v15;
  if (a1[27])
  {
    v21 = 5;
  }

  else
  {
    v21 = 3;
  }

  *(v20 + 4) = v21;
  *(v18 + v16 + 183) = 1;
  v22 = *(p_api + 48);
  if (*(v22 + 16) == 1 && *v22 >= 3)
  {
    v23 = *(v22 + 40) + 604800 * *(v22 + 32);
  }

  else
  {
    v23 = 0;
  }

  v26 = (v19 + 36 * v16);
  *v26 = v23;
  v24 = 1;
  Debug_Log_GAL_Alm(1, v26);
  return v24;
}

uint64_t GN_AGAL_Set_GGTO(__int16 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGAL_Set_GGTO"))
  {
    return 0;
  }

  v3 = a1[1];
  if ((a1[1] - 2049) <= 0xEFFEu)
  {
    EvCrt_v("GN_AGAL_Set_GGTO: FAILED: A1G = %d < -2^11 or >= 2^11, Out of range!");
    return 0;
  }

  v4 = *(a1 + 4);
  if (v4 >= 0xA9)
  {
    EvCrt_v("GN_AGAL_Set_GGTO: FAILED: ToG = %d > 168, Out of range!");
    return 0;
  }

  v5 = *(a1 + 5);
  if (v5 >= 0x40)
  {
    EvCrt_v("GN_AGAL_Set_GGTO: FAILED: WNoG = %d > 63, Out of range!");
    return 0;
  }

  v8 = *(p_api + 48);
  if (*(v8 + 16) == 1 && *v8 >= 3)
  {
    v9 = *(v8 + 40) + 604800 * *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = p_NA;
  v11 = p_NA + 4096;
  *(p_NA + 5572) = v9;
  if (*(a1 + 6))
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *(v10 + 5576) = v12;
  v13 = *a1;
  *(v10 + 5580) = v13;
  *(v10 + 5582) = v3;
  *(v11 + 1488) = v4;
  *(v11 + 1489) = v5;
  v6 = 1;
  *(v10 + 146) = 1;
  EvLog_nd("GN_AGAL_Set_GGTO: ", 4, v2, v13, v3, v4, v5);
  return v6;
}

BOOL umeas(_BOOL8 result, unsigned int a2, double a3, double *a4, double *a5, double *a6, double *a7, double a8)
{
  v63[1] = *MEMORY[0x29EDCA608];
  v10 = result - 8;
  v11 = a4 - 1;
  v12 = a2 + 1;
  v62 = (v12 * a2) >> 1;
  if (a2)
  {
    v13 = a6;
    v14 = a5;
    v60 = result;
    v61 = a7;
    v17 = a6 - 1;
    v18 = a5 - 1;
    v19 = 1;
    while (1)
    {
      v63[0] = 0.0;
      result = R8_EQ(&v11[v19], v63);
      if (!result)
      {
        break;
      }

      if (++v19 > a2)
      {
        goto LABEL_9;
      }
    }

    if (!v19)
    {
LABEL_9:
      if (v12 <= 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v12;
      }

      v23 = v22 - 1;
      a7 = v61;
      do
      {
        *v13++ = 0.0;
        *v14++ = 0.0;
        --v23;
      }

      while (v23);
      goto LABEL_14;
    }

    if (a2 == 1)
    {
      v20 = 0;
      v21 = v60;
    }

    else
    {
      if (v19 <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      v21 = v60;
      if (v19 > a2)
      {
        v24 = v20;
        goto LABEL_34;
      }

      v25 = a2;
      v26 = v62;
      v27 = v62 - a2 + 1;
      v28 = 1 - a2;
      do
      {
        v29 = v11[v25];
        v30 = v25 - 1;
        if (v25 != 1)
        {
          v31 = 0;
          do
          {
            v29 = v29 + *(v10 + 8 * (v27 + v31)) * a4[v31];
            v32 = (v31++ + 2);
          }

          while (v32 != v25);
        }

        v18[v25] = v29;
        v33 = *(v10 + 8 * v26);
        v26 -= v25;
        v17[v25] = v29 * v33;
        v27 += v28++;
        --v25;
      }

      while (v20 <= v30);
    }

    if (v19 == 1)
    {
      v34 = *a4;
      *v14 = *a4;
      *v13 = v34 * *v21;
      LODWORD(v35) = 1;
      v36 = v62;
LABEL_36:
      if (a8 >= 0.0)
      {
        v39 = 0.0;
        v40 = a3;
        if (v19 <= a2)
        {
          v41 = v19;
          v40 = a3;
          do
          {
            v40 = v40 + v18[v41] * v17[v41];
            v39 = v39 + v11[v41] * *(v10 + 8 * (v36 + v41));
            ++v41;
          }

          while (v41 <= a2);
        }

        v42 = v11[v12] - v39;
        *(v10 + 8 * (v36 + v12)) = v42;
        if (a3 >= 0.0 && v42 * v42 > v40 * a8)
        {
          a3 = -v40;
          a7 = v61;
          goto LABEL_17;
        }
      }

      if (v35)
      {
        v43 = a3 + *v13 * *v14;
        if (fabs(v43) <= 6.0e-38)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = 1.0 / v43;
        }

        *v21 = *v21 * (v44 * a3);
        if (a2 == 1)
        {
LABEL_63:
          *v61 = v43;
          if (a8 > 0.0)
          {
            v56 = v44 * *(v10 + 8 * (v36 + v12));
            v18[v12] = v56;
            v57 = v12 - 1;
            v58 = v36 + 1;
            do
            {
              v59 = *v13++;
              *(v10 + 8 * v58) = *(v10 + 8 * v58) + v59 * v56;
              ++v58;
              --v57;
            }

            while (v57);
          }

          return result;
        }

        v45 = 2;
      }

      else
      {
        v45 = (((v19 - 1) * v19) >> 1) + 1;
        v44 = 0.0;
        v43 = a3;
        if (fabs(a3) > 6.0e-38)
        {
          v44 = 1.0 / a3;
        }
      }

      if (v20 <= a2)
      {
        do
        {
          v46 = v43;
          v47 = v17[v20];
          v48 = v18[v20];
          v49 = v20;
          if (v20 >= 2)
          {
            v50 = v20 - 1;
            v51 = -(v48 * v44);
            v52 = v13;
            do
            {
              v53 = *(v10 + 8 * v45);
              *(v10 + 8 * v45) = v53 + v51 * *v52;
              *v52 = *v52 + v47 * v53;
              ++v52;
              ++v45;
              --v50;
            }

            while (v50);
            v48 = v18[v49];
          }

          v43 = v43 + v47 * v48;
          if (fabs(v43) > 6.0e-38)
          {
            v44 = 1.0 / v43;
            *(v10 + 8 * v45) = v46 * (1.0 / v43) * *(v10 + 8 * v45);
          }

          v63[0] = 0.0;
          result = R8_EQ((v10 + 8 * v45), v63);
          if (v49 && result)
          {
            v54 = v45;
            v55 = v49;
            do
            {
              *(v10 + 8 * v54--) = 0;
              --v55;
            }

            while (v55);
          }

          ++v45;
          v20 = v49 + 1;
        }

        while (v49 + 1 <= a2);
      }

      goto LABEL_63;
    }

    if (v19 <= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v19;
    }

LABEL_34:
    v35 = v24 - 1;
    v37 = v14;
    v38 = v13;
    v36 = v62;
    do
    {
      *v37++ = 0.0;
      *v38++ = 0.0;
      --v35;
    }

    while (v35);
    goto LABEL_36;
  }

LABEL_14:
  if (fabs(a3) > 6.0e-38 && a8 >= 0.0)
  {
    *(v10 + 8 * (v62 + v12)) = v11[v12] / a3;
  }

LABEL_17:
  *a7 = a3;
  return result;
}

void Hal_GetMEAnalyticsData(void)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(v8, 0, 22);
  v7 = 0u;
  v6 = 0u;
  v5 = 0x2A00364D6344787ALL;
  v8[22] = 10;
  if (Hal22_ZxSendToChip(&v5, 0x3FuLL) <= 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_13;
  }

  v0 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x96u);
  if (v0 == 1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

LABEL_12:
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err\n");
LABEL_13:
    v2 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v2, 1, 0);
    return;
  }

  if (v0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    goto LABEL_12;
  }

  if (g_GetAnalyticsResponseStatus == 32)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Success\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 73, "Hal_GetMEAnalyticsData");
    v2 = 4;
    goto LABEL_14;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx err,%u\n", v3);
    goto LABEL_13;
  }
}

void Hal_GetMEAnalyticsDataResponse(uint64_t result, int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_26;
  }

  if (*(result + 2) != 68 || *(result + 3) != 67)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDEx,%u\n", v17, "HAL");
LABEL_26:
    gnssOsa_PrintLog(__str, 1, 1, 0);
    return;
  }

  g_GetAnalyticsResponseStatus = *(result + 8);
  if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v4, "HAL", 69, "Hal_GetMEAnalyticsDataResponse", 1542, *v5);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if ((a2 - 57) <= 0xFFFFFFCE && g_GetAnalyticsResponseStatus == 32)
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_Analytics METTickMs %u-%u: ver,%u,L1rssimaxdB,%u,L1rssimeandB,%u,L5rssimaxdB,%u,L5rssimeandB,%u,GLOrssimaxdB,%u,GLOrssimeandB,%u,L1rssiper,%u,L5rssiper,%u,GLOrssiper,%u\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 77, "Hal_LogMEAnalyticsData", *(result + 36), *(result + 40), *(result + 9), *(result + 10), *(result + 11), *(result + 12), *(result + 13), *(result + 14), *(result + 15), *(result + 16), *(result + 17), *(result + 18));
      gnssOsa_PrintLog(__str, 3, 1, 0);
      if (g_LbsOsaTrace_Config >= 3)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_Analytics METTickMs %u-%u: freq0Hz,%5.3f,freq1Hz,%5.3f,freq2Hz,%5.3f,CN0_0dBHz,%u,CN0_1dBHz,%u,CN0_2dBHz,%u\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 77, "Hal_LogMEAnalyticsData", *(result + 36), *(result + 40), vcvtd_n_f64_s32(*(result + 19), 3uLL), vcvtd_n_f64_s32(*(result + 21), 3uLL), vcvtd_n_f64_s32(*(result + 23), 3uLL), *(result + 25), *(result + 26), *(result + 27));
        gnssOsa_PrintLog(__str, 3, 1, 0);
        if (g_LbsOsaTrace_Config >= 3)
        {
          bzero(__str, 0x3C6uLL);
          v8 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_Analytics METTickMs %u-%u: AggPow4gdBm,%d,Agg4gtimeS,%u,AggPow5gdBm,%d,Agg5gtimeS,%u,L5stateper,%u,NumInterfaceTeardown,%u,outages,%u,PEAidper,%u\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 77, "Hal_LogMEAnalyticsData", *(result + 36), *(result + 40), *(result + 28), *(result + 29), *(result + 34), *(result + 35), *(result + 30), *(result + 31), *(result + 32), *(result + 33));
          gnssOsa_PrintLog(__str, 3, 1, 0);
          if (g_LbsOsaTrace_Config >= 3)
          {
            bzero(__str, 0x3C6uLL);
            *&v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v10 = *&v9;
            LOBYTE(v9) = *(result + 45);
            LOWORD(v11) = *(result + 46);
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_Analytics METTickMs %u-%u: DutyCycle_percent,%u,Max_temperature_rate,%.1fC/s,Duration_high_temperature_rate,%.1fs,Min_temperature,%dC,Max_temperature,%dC\n", v10, "HAL", 77, "Hal_LogMEAnalyticsData", *(result + 36), *(result + 40), *(result + 44), v9 * 0.1, v11 * 0.1, *(result + 48), *(result + 49));
            gnssOsa_PrintLog(__str, 3, 1, 0);
          }
        }
      }
    }

    v12 = *(result + 9);
    if (v12 >= 2)
    {
      v13 = g_LbsOsaTrace_Config;
      if (*(result + 52) != 255 && g_LbsOsaTrace_Config >= 3)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_Analytics METTickMs %u-%u: LPO_Offset,%u,LPO_Residual_Offset,%u,SleepTime,%u\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 77, "Hal_LogMEAnalyticsData", *(result + 36), *(result + 40), *(result + 50), *(result + 51), *(result + 52));
        gnssOsa_PrintLog(__str, 3, 1, 0);
        v12 = *(result + 9);
        v13 = g_LbsOsaTrace_Config;
      }

      if (v12 >= 3 && v13 >= 3)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_Analytics METTickMs %u-%u: L5_Best,%u,L5_Normal,%u,L5_Worst,%u,L5_Unknown,%u\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 77, "Hal_LogMEAnalyticsData", *(result + 36), *(result + 40), *(result + 53), *(result + 54), *(result + 30), *(result + 55));
        gnssOsa_PrintLog(__str, 3, 1, 0);
      }
    }

    v16 = (*(result + 40) - *(result + 36));
    *__str = MEMORY[0x29EDCA5F8];
    v19 = 0x40000000;
    v20 = ___ZL22Hal_LogMEAnalyticsDataPht_block_invoke;
    v21 = &__block_descriptor_tmp_70;
    v22 = v16;
    v23 = result + 8;
    analytics_send_event_lazy();
  }
}

void Hal_ProcessFTAAnalyticsData(uint64_t __src)
{
  v25 = *MEMORY[0x29EDCA608];
  if (*(__src + 77) || (g_GncP_PEUpdate[0] == 1 ? (v2 = dword_2A13EC7A4 < 2) : (v2 = 1), !v2))
  {
    v3 = *(__src + 36) / 1966080000.0;
    *&v4 = *__src / 307200000.0 + *(__src + 44) / 153600000.0 - v3;
    *&v5 = vcvtd_n_f64_s32(*(__src + 32), 0x20uLL) + 1.0;
    v6 = v3 + *&v4 * *&v5;
    LODWORD(v4) = *(__src + 52);
    LODWORD(v5) = *(__src + 56);
    v7 = v4 / 1966080000.0;
    v8 = v5;
    HIDWORD(v5) = -1039795968;
    *&v9 = v7 + v8 / -1.179648e10;
    v10 = v6 - *&v9;
    LODWORD(v9) = *(__src + 20);
    *&v11 = vcvtd_n_f64_u32(*(__src + 24), 0x10uLL);
    v12 = *&v11 + v9;
    LODWORD(v5) = *(__src + 8);
    LODWORD(v11) = *(__src + 12);
    v13 = v12 - v11 + vcvtd_n_f64_u32(*(__src + 16), 0x20uLL) + v5;
    if (*(&g_GNSSME_FTA_Session_Data + 1) == 0.0)
    {
      *&g_GNSSME_FTA_Session_Data = v10;
      *(&g_GNSSME_FTA_Session_Data + 1) = v13;
      return;
    }

    v14 = v10 - *&g_GNSSME_FTA_Session_Data;
    v15 = v10 - *&g_GNSSME_FTA_Session_Data + (v13 - *(&g_GNSSME_FTA_Session_Data + 1)) * -0.001;
    if (v15 >= 0.0)
    {
      v16 = v10 - *&g_GNSSME_FTA_Session_Data + (v13 - *(&g_GNSSME_FTA_Session_Data + 1)) * -0.001;
    }

    else
    {
      v16 = -v15;
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FTA-Evnt, METtick,%u, SleepTimeSec,%10.10lf, FTA-TimeErrUSec,%10.15lf\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 68, "Hal_ProcessFTAAnalyticsData", *(__src + 20), v14, v16 * 1000000.0);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    if (g_ReportingFTAData)
    {
      if (*&g_ReportingFTAData >= v16)
      {
        goto LABEL_20;
      }

      v19 = *(__src + 64);
      v18 = *(__src + 68);
      g_ReportingFTAData = v18 & 7;
      g_ReportingFTAData = byte_2A13EC1E1 != *(__src + 74);
      g_ReportingFTAData = byte_2A13EC1E0 != *(__src + 62);
      g_ReportingFTAData = byte_2A13EC1E8 != *(__src + 75);
      g_ReportingFTAData = *&v16;
      g_ReportingFTAData = *&v14;
      v20 = 1;
      g_ReportingFTAData = 1;
      g_ReportingFTAData = dword_2A13EC1E4 != v19;
      g_ReportingFTAData = byte_2A13EC1E9 != *(__src + 63);
      if (dword_2A13EC1EC == ((v18 >> 3) & 0x1FFFFF))
      {
        v20 = word_2A13EC1F0 != *(__src + 60);
      }

      g_ReportingFTAData = v20;
      v21 = 347;
    }

    else
    {
      g_ReportingFTAData = *&v16;
      g_ReportingFTAData = *&v14;
      g_ReportingFTAData = *(__src + 68) & 7;
      g_ReportingFTAData = 1;
      v21 = 327;
    }

    memcpy_s("Hal_ProcessFTAAnalyticsData", v21, &g_GNSSME_FTA_Rcvd_Data, 0x4Eu, __src, 0x4EuLL);
LABEL_20:
    byte_2A13EC1E1 = *(__src + 74);
    byte_2A13EC1E0 = *(__src + 62);
    byte_2A13EC1E8 = *(__src + 75);
    v22 = *(__src + 68);
    dword_2A13EC1E4 = *(__src + 64);
    byte_2A13EC1E9 = *(__src + 63);
    dword_2A13EC1EC = (v22 >> 3) & 0x1FFFFF;
    word_2A13EC1F0 = *(__src + 60);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v23 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FTA-CA,Mode,DRX,%u, Conn,%u, Dup,%u,RAT,%u,ULSync,%u,ARFCN,%u\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 68, "Hal_ProcessFTAAnalyticsData", *(__src + 74), *(__src + 62), *(__src + 75), *(__src + 64), *(__src + 63), dword_2A13EC1EC);
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }
}

void Hal_ReportFTAAnalyticsData(void)
{
  v10 = *MEMORY[0x29EDCA608];
  g_GNSSME_FTA_Session_Data = 0u;
  *&byte_2A13EC1E0 = 0u;
  word_2A13EC1F0 = 0;
  if (g_ReportingFTAData == 1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FTA-CA,METTickMs,%u,SleepTimeSec,%8.19lf,TimeErrUSec,%10.15lf\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_ReportFTAAnalyticsData", dword_2A13EC20C, *&g_ReportingFTAData, *&g_ReportingFTAData * 1000000.0);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v1 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (g_ReportingFTAData)
        {
          v2 = 89;
        }

        else
        {
          v2 = 78;
        }

        if (g_ReportingFTAData)
        {
          v3 = 89;
        }

        else
        {
          v3 = 78;
        }

        if (g_ReportingFTAData)
        {
          v4 = 89;
        }

        else
        {
          v4 = 78;
        }

        if (g_ReportingFTAData)
        {
          v5 = 89;
        }

        else
        {
          v5 = 78;
        }

        if (g_ReportingFTAData)
        {
          v6 = 89;
        }

        else
        {
          v6 = 78;
        }

        v8 = v6;
        if (g_ReportingFTAData)
        {
          v7 = 89;
        }

        else
        {
          v7 = 78;
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FTA-CA, ConnMode,%u,%c, UL_SyncState,%u,%c, RAT_Ind,%u,%c, CellId,%u, SNR,%d, DupMode,%u,%c, DrxState,%u,%c, SubCarrieSpacing,%u, SimId,%u, BaseStationChanged,%c\n", v1, "HAL", 73, "Hal_ReportFTAAnalyticsData", byte_2A13EC236, v7, byte_2A13EC237, v8, dword_2A13EC238, v5, word_2A13EC234, word_2A13EC240, byte_2A13EC243, v4, byte_2A13EC242, v3, g_ReportingFTAData, byte_2A13EC244, v2);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

    g_ReportingFTAData = 0;
    analytics_send_event_lazy();
  }
}

xpc_object_t ___Z26Hal_ReportFTAAnalyticsDatav_block_invoke()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "METTickMs", dword_2A13EC20C);
  xpc_dictionary_set_double(empty, "SleepTimeSec", *&g_ReportingFTAData);
  xpc_dictionary_set_double(empty, "FTAErrorUSec", *&g_ReportingFTAData * 1000000.0);
  xpc_dictionary_set_uint64(empty, "ConnectionMode", byte_2A13EC236);
  xpc_dictionary_set_uint64(empty, "ULSyncState", byte_2A13EC237);
  xpc_dictionary_set_uint64(empty, "RATInd", dword_2A13EC238);
  xpc_dictionary_set_uint64(empty, "CellId", word_2A13EC234);
  xpc_dictionary_set_int64(empty, "SNR", word_2A13EC240);
  xpc_dictionary_set_uint64(empty, "DuplexMode", byte_2A13EC243);
  xpc_dictionary_set_uint64(empty, "DRXMode", byte_2A13EC242);
  xpc_dictionary_set_uint64(empty, "SubCarrierSpacing", g_ReportingFTAData);
  xpc_dictionary_set_uint64(empty, "SIMID", byte_2A13EC244);
  xpc_dictionary_set_BOOL(empty, "ConnectionModeChanged", g_ReportingFTAData);
  xpc_dictionary_set_BOOL(empty, "ULSyncStateeChanged", g_ReportingFTAData);
  xpc_dictionary_set_BOOL(empty, "RATIndChanged", g_ReportingFTAData);
  xpc_dictionary_set_BOOL(empty, "DuplexModeChanged", g_ReportingFTAData);
  xpc_dictionary_set_BOOL(empty, "DRXModeChanged", g_ReportingFTAData);
  xpc_dictionary_set_BOOL(empty, "BaseStationIDChanged", g_ReportingFTAData);
  return empty;
}

xpc_object_t ___ZL22Hal_LogMEAnalyticsDataPht_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "SessionDuration", *(a1 + 32));
  xpc_dictionary_set_uint64(empty, "Version", *(*(a1 + 40) + 1));
  xpc_dictionary_set_uint64(empty, "L1rssimaxdB", *(*(a1 + 40) + 2));
  xpc_dictionary_set_uint64(empty, "L1rssimeandB", *(*(a1 + 40) + 3));
  xpc_dictionary_set_uint64(empty, "L5rssimaxdB", *(*(a1 + 40) + 4));
  xpc_dictionary_set_uint64(empty, "L5rssimeandB", *(*(a1 + 40) + 5));
  xpc_dictionary_set_uint64(empty, "GLOrssimaxdB", *(*(a1 + 40) + 6));
  xpc_dictionary_set_uint64(empty, "GLOrssimeandB", *(*(a1 + 40) + 7));
  xpc_dictionary_set_uint64(empty, "L1rssipercent", *(*(a1 + 40) + 8));
  xpc_dictionary_set_uint64(empty, "L5rssipercent", *(*(a1 + 40) + 9));
  xpc_dictionary_set_uint64(empty, "GLOrssipercent", *(*(a1 + 40) + 10));
  xpc_dictionary_set_int64(empty, "AggPow4gdBm", *(*(a1 + 40) + 20));
  xpc_dictionary_set_uint64(empty, "Agg4gtimeS", *(*(a1 + 40) + 21));
  xpc_dictionary_set_int64(empty, "AggPow5gdBm", *(*(a1 + 40) + 26));
  xpc_dictionary_set_uint64(empty, "Agg5gtimeS", *(*(a1 + 40) + 27));
  xpc_dictionary_set_uint64(empty, "L5statepercent", *(*(a1 + 40) + 22));
  xpc_dictionary_set_uint64(empty, "NumInterfaceTeardown", *(*(a1 + 40) + 23));
  xpc_dictionary_set_uint64(empty, "outages", *(*(a1 + 40) + 24));
  xpc_dictionary_set_uint64(empty, "PEAidTrustedpercent", *(*(a1 + 40) + 25));
  xpc_dictionary_set_uint64(empty, "DutyCyclepercent", *(*(a1 + 40) + 36));
  xpc_dictionary_set_uint64(empty, "MaxTempRate_0p1C_s", *(*(a1 + 40) + 37));
  xpc_dictionary_set_uint64(empty, "DurationHighTempRate_0p1s", *(*(a1 + 40) + 38));
  xpc_dictionary_set_int64(empty, "MinTempC", *(*(a1 + 40) + 40));
  xpc_dictionary_set_int64(empty, "MaxTempC", *(*(a1 + 40) + 41));
  v3 = *(a1 + 40);
  v4 = v3[1];
  if (v4 >= 2)
  {
    if (v3[44] != 255)
    {
      xpc_dictionary_set_uint64(empty, "LPO_Offset", v3[42]);
      xpc_dictionary_set_uint64(empty, "LPO_Residual", *(*(a1 + 40) + 43));
      xpc_dictionary_set_uint64(empty, "SleepTime", *(*(a1 + 40) + 44));
      v3 = *(a1 + 40);
      v4 = v3[1];
    }

    if (v4 >= 3)
    {
      xpc_dictionary_set_uint64(empty, "L5BestDurationPercentage", v3[45]);
      xpc_dictionary_set_uint64(empty, "L5NormalDurationPercentage", *(*(a1 + 40) + 46));
      xpc_dictionary_set_uint64(empty, "L5WorstDurationPercentage", *(*(a1 + 40) + 22));
      xpc_dictionary_set_uint64(empty, "L5UnknownDurationPercentage", *(*(a1 + 40) + 47));
    }
  }

  return empty;
}

uint64_t Gnm55_SendVar_GNSS_FW_NV_Data(char a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if ((a1 & 1) == 0)
  {
    v6 = word_2A1454292;
    v5 = qword_2A1454298;
    goto LABEL_10;
  }

  NvSize = gnssOsa_getNvSize(1, &qword_2A1454298);
  v2 = qword_2A1454298;
  if (!NvSize)
  {
    goto LABEL_29;
  }

  if (!qword_2A1454298)
  {
    v14 = 1;
    goto LABEL_30;
  }

  v3 = gnssOsa_Calloc("Gnm55_01Read_GNSS_FW_NV", 122, 1, qword_2A1454298);
  g_GNSS_FW_NV_Context = v3;
  v2 = qword_2A1454298;
  if (!v3)
  {
LABEL_29:
    v14 = 2;
LABEL_30:
    word_2A1454292 = v2;
    _MergedGlobals_0 = 0;
    ++byte_2A13EC289;
    if (Hal_SendNoFirmwareNVData(v14))
    {
      if (!AgpsFsmStartTimer(8400390, 0x7D0u))
      {
        result = 1;
        byte_2A13EC288 = 1;
        return result;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
LABEL_37:
        v12 = g_GNSS_FW_NV_Context;
        if (!g_GNSS_FW_NV_Context)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm55_SendVar_GNSS_FW_NV_Data", 1544);
      v16 = 2;
    }

    else
    {
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_37;
      }

      bzero(__str, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No GNSS FW NV restore failed\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 69, "Gnm55_SendVar_GNSS_FW_NV_Data");
      v16 = 1;
    }

    gnssOsa_PrintLog(__str, v16, 1, 0);
    goto LABEL_37;
  }

  if (!gnssOsa_readNv(1, v3, qword_2A1454298))
  {
    v2 = qword_2A1454298;
    goto LABEL_29;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Read GNSS FW NV success, size,%lu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm55_01Read_GNSS_FW_NV", qword_2A1454298);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v5 = qword_2A1454298;
  _MergedGlobals_0 = 0;
  ++byte_2A13EC289;
  v6 = qword_2A1454298;
LABEL_10:
  if (v6 < 0xFF8u)
  {
    v8 = 0;
    byte_2A13EC28A = 1;
    v7 = -1;
  }

  else
  {
    v7 = _MergedGlobals_0 + 1;
    v8 = v6 - 4087;
  }

  _MergedGlobals_0 = v7;
  word_2A1454292 = v8;
  if (!Hal_SendFirmwareNVData((g_GNSS_FW_NV_Context + (v5 - v6))))
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS FW NV restore failed\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 69, "Gnm55_SendVar_GNSS_FW_NV_Data");
    v10 = 1;
LABEL_19:
    gnssOsa_PrintLog(__str, v10, 1, 0);
LABEL_20:
    v12 = g_GNSS_FW_NV_Context;
    if (!g_GNSS_FW_NV_Context)
    {
LABEL_22:
      result = 0;
      *(&g_GNSS_FW_NV_Context + 7) = 0;
      g_GNSS_FW_NV_Context = 0;
      return result;
    }

LABEL_21:
    free(v12);
    goto LABEL_22;
  }

  if (AgpsFsmStartTimer(8400390, 0x7D0u))
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_20;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm55_SendVar_GNSS_FW_NV_Data", 1544);
    v10 = 2;
    goto LABEL_19;
  }

  result = 1;
  byte_2A13EC288 = 1;
  if (_MergedGlobals_0 == 255)
  {
    if (g_GNSS_FW_NV_Context)
    {
      free(g_GNSS_FW_NV_Context);
      g_GNSS_FW_NV_Context = 0;
      return 1;
    }
  }

  return result;
}

void Gnm55_HandleRespNo_GNSS_FW_NV_ACK(unsigned __int8 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (byte_2A13EC288 == 1)
  {
    if (AgpsFsmStopTimer(8400390) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm55_HandleRespNo_GNSS_FW_NV_ACK", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EC288 = 0;
  }

  if (Gnm55_CheckRestoreStatus(a1[8], "No GNSS FW NV Ack"))
  {
    if ((Ga05_GetDebugFeaturesBitmask() & 0x80) != 0)
    {
      Gnm35_EnableBCTInTimeMarkMessage();
    }

    HSW_SessionStartConfiguration();
    v3 = (*(*gp_Logger + 72))(gp_Logger);
    if ((v3 & 2) != 0)
    {
      Gnm_SendFWExtendedDbgConfig(v3);
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ExtDbg Config not enabled\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm55_HandleRespNo_GNSS_FW_NV_ACK");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if ((Hal_GNSS_SessionStart() & 1) == 0)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS session start failed\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm55_HandleRespNo_GNSS_FW_NV_ACK");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }
  }

  else
  {
    if (g_GNSS_FW_NV_Context)
    {
      free(g_GNSS_FW_NV_Context);
    }

    *(&g_GNSS_FW_NV_Context + 7) = 0;
    g_GNSS_FW_NV_Context = 0;
  }
}

uint64_t Gnm55_CheckRestoreStatus(int a1, const char *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1 <= 70)
  {
    switch(a1)
    {
      case ' ':
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Success\n");
          goto LABEL_25;
        }

        return 1;
      case 'A':
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v7 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: CLK TCXO, TCXO not defined in SSF\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm55_CheckRestoreStatus", a2);
          v5 = 4;
          goto LABEL_29;
        }

        return 0;
      case 'C':
        if (!g_LbsOsaTrace_Config)
        {
          return 0;
        }

        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: CS error\n");
LABEL_22:
        v5 = 1;
        goto LABEL_29;
    }

LABEL_18:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx %s: RespStatus,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm55_CheckRestoreStatus", 770, a2, a1);
      v5 = 2;
LABEL_29:
      gnssOsa_PrintLog(__str, v5, 1, 0);
    }

    return 0;
  }

  if (a1 > 82)
  {
    if (a1 == 83)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Success,Session-ongoing\n");
        goto LABEL_25;
      }

      return 1;
    }

    if (a1 == 84)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: TCXO defined in SSF\n");
        goto LABEL_25;
      }

      return 1;
    }

    goto LABEL_18;
  }

  if (a1 == 71)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Gen failure\n");
    goto LABEL_22;
  }

  if (a1 != 78)
  {
    goto LABEL_18;
  }

  if (g_LbsOsaTrace_Config < 4)
  {
    return 1;
  }

  bzero(__str, 0x3C6uLL);
  mach_continuous_time();
  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Fallback to fixed GNSS FW NV\n");
LABEL_25:
  v6 = 1;
  gnssOsa_PrintLog(__str, 4, 1, 0);
  return v6;
}

void Gnm55_HandleRespVar_GNSS_FW_NV_ACK(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (byte_2A13EC288 == 1)
  {
    if (AgpsFsmStopTimer(8400390) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm55_HandleRespVar_GNSS_FW_NV_ACK", 1545);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    byte_2A13EC288 = 0;
  }

  if (Gnm55_CheckRestoreStatus(a1[8], "GNSS FW NV Var Ack"))
  {
    if (byte_2A13EC28A == 1)
    {
      if ((Ga05_GetDebugFeaturesBitmask() & 0x80) != 0)
      {
        Gnm35_EnableBCTInTimeMarkMessage();
      }

      HSW_SessionStartConfiguration();
      v3 = (*(*gp_Logger + 72))(gp_Logger);
      if ((v3 & 2) != 0)
      {
        Gnm_SendFWExtendedDbgConfig(v3);
      }

      else if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ExtDbg Config not enabled\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm55_HandleRespVar_GNSS_FW_NV_ACK");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if ((Hal_GNSS_SessionStart() & 1) == 0)
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS session start failed\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 69, "Gnm55_HandleRespVar_GNSS_FW_NV_ACK");
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }
    }

    else
    {
      Gnm55_SendVar_GNSS_FW_NV_Data(0);
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Response error, NV Var Ack\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm55_HandleRespVar_GNSS_FW_NV_ACK");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (g_GNSS_FW_NV_Context)
    {
      free(g_GNSS_FW_NV_Context);
    }

    *(&g_GNSS_FW_NV_Context + 7) = 0;
    g_GNSS_FW_NV_Context = 0;
  }
}

uint64_t Gnm55_HandleVar_GNSS_FW_NV_RestoreNoAck(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_VAR_ME_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm55_HandleVar_GNSS_FW_NV_RestoreNoAck");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    if (byte_2A13EC288 == 1)
    {
      byte_2A13EC288 = 0;
      if (byte_2A13EC289 > 2u)
      {
        *(&g_GNSS_FW_NV_Context + 7) = 0;
        g_GNSS_FW_NV_Context = 0;
        Gnm03_60BaseBandResetReq(4);
      }

      else
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v3 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS FW NV Restore failed, retry %u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm55_HandleVar_GNSS_FW_NV_RestoreNoAck", byte_2A13EC289);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        Gnm55_SendVar_GNSS_FW_NV_Data(1);
      }
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm55_HandleVar_GNSS_FW_NV_RestoreNoAck", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void Gnm55_HandleBackupVar_GNSS_FW_NV(unsigned __int8 *a1, unsigned int a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 8)
    {
      v5 = p_MEBackupNVData;
      if (!p_MEBackupNVData)
      {
        operator new();
      }

      v6 = *p_MEBackupNVData;
      v7 = a1[9];
      v8 = a1 + 11;
      v9 = &a1[a2];
      v10 = a2 - 14;
      if (v10 >= 1)
      {
        v12 = *(p_MEBackupNVData + 8);
        v11 = *(p_MEBackupNVData + 16);
        if (v11 - v12 >= v10)
        {
          if (v8 != v9 - 3)
          {
            memmove(*(p_MEBackupNVData + 8), v8, a2 - 14);
          }

          v5[1] = &v12[v10];
        }

        else
        {
          v13 = (v12 - v6);
          v14 = v12 - v6 + v10;
          if (v14 < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v15 = v11 - v6;
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            operator new();
          }

          v27 = *(p_MEBackupNVData + 8);
          memcpy(v13, v8, a2 - 14);
          v17 = &v13[v10];
          memcpy(v17, v12, v27 - v12);
          v5[1] = v12;
          memcpy(0, v6, v12 - v6);
          *v5 = 0;
          v5[1] = &v17[v27 - v12];
          v5[2] = 0;
          if (v6)
          {
            operator delete(v6);
          }
        }
      }

      if (v7 == 255)
      {
        v19 = *(v9 - 5);
        if ((gnssOsa_clearNV(1) & 1) == 0 && g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v20 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx clear\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 87, "Gnm55_HandleBackupVar_GNSS_FW_NV", 1570);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        v21 = gnssOsa_storeBufferToNv(1, *p_MEBackupNVData, *(p_MEBackupNVData + 8) - *p_MEBackupNVData);
        if (g_LbsOsaTrace_Config < 2)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        if ((v22 & 1) == 0)
        {
          bzero(__str, 0x3C6uLL);
          v23 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GNSS GNSS FW NV:ReqWrite,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNM", 87, "Gnm55_HandleBackupVar_GNSS_FW_NV", 1570, a2 - 14);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        v24 = p_MEBackupNVData;
        v25 = *p_MEBackupNVData;
        *(p_MEBackupNVData + 8) = *p_MEBackupNVData;
        if (v25)
        {
          operator delete(v25);
        }

        MEMORY[0x29C296280](v24, 0x10C402FEFCB83);
        p_MEBackupNVData = 0;
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v26 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FW NV:WriteSuccess Len,%uB, NVChecksum,%u\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 73, "Gnm55_HandleBackupVar_GNSS_FW_NV", a2 - 14, v19);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }
      }

      else if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v18 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FW NV:WriteSuccess Len,%uB\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm55_HandleBackupVar_GNSS_FW_NV", a2 - 14);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx length err\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 69, "Gnm55_HandleBackupVar_GNSS_FW_NV", 1570);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx null buffer\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm55_HandleBackupVar_GNSS_FW_NV", 1570);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t Gnm55_HandleXMessages(unsigned __int8 *a1, unsigned int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: X class response\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm55_HandleXMessages");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v5 = a1[3];
  if (v5 > 0x4D)
  {
    if (v5 == 86)
    {
      Gnm55_HandleRespVar_GNSS_FW_NV_ACK(a1);
    }

    else if (v5 == 78)
    {
      Gnm55_HandleRespNo_GNSS_FW_NV_ACK(a1);
    }
  }

  else
  {
    if (v5 == 69)
    {
      Gnm55_HandleBackupVar_GNSS_FW_NV(a1, a2);
    }

    else if (v5 != 77)
    {
      return 0;
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Fixed NV response\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm55_HandleXMessages");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  return 0;
}

void Gnm55_RestoreVar_GNSS_FW_NV(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS FW NV data resotre,%hhu\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm55_RestoreVar_GNSS_FW_NV", a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS FW NV:GOOH Occured\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm55_RestoreVar_GNSS_FW_NV");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    gnssOsa_clearNV(1);
  }

  *(&g_GNSS_FW_NV_Context + 7) = 0;
  g_GNSS_FW_NV_Context = 0;
  if ((Gnm55_SendVar_GNSS_FW_NV_Data(1) & 1) == 0 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS FW NV:Sending error\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 87, "Gnm55_RestoreVar_GNSS_FW_NV");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }
}

uint64_t Gnm55_ClearVar_GNSS_FW_NV(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS FW NV:Clearing GNSS FW NV file\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm55_ClearVar_GNSS_FW_NV");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = gnssOsa_clearNV(1);
  if ((v1 & 1) == 0 && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GNSS FW NV File\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 69, "Gnm55_ClearVar_GNSS_FW_NV", 1573);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return v1;
}

uint64_t GN_AGPS_Set_Eph_El(unsigned __int8 *a1)
{
  v29[15] = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_Eph_El"))
  {
    return 0;
  }

  v2 = *(p_api + 48);
  if (*(v2 + 16) == 1 && *v2 >= 3)
  {
    v3 = *(v2 + 40) + 604800 * *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v17 = *(a1 + 17);
  v20 = *(a1 + 17);
  v21 = *(a1 + 36);
  v4 = a1[74] ? 5 : 3;
  v14 = *(a1 + 1);
  v15 = *(a1 + 10);
  v16 = *(a1 + 26);
  v18 = *(a1 + 36);
  v19 = *(a1 + 52);
  v13[0] = v3;
  v13[1] = v4;
  v5 = *a1;
  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_AGPS_Set_Eph_El: ", v5);
  }

  else
  {
    EvLog_GPS_IntEph("GN_AGPS_Set_Eph_El: ", v5, v13);
  }

  v6 = *a1;
  if (!Is_GPS_IntEph_Valid("GN_AGPS_Set_Eph_El: ", v6, v13))
  {
    return 0;
  }

  memset(v29, 0, 115);
  GPS_EphInt2Bin(v13, v29);
  v23 = 0u;
  *v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v22 = v29[0];
  LOBYTE(v23) = v29[1];
  *(&v23 + 1) = *(&v29[1] + 1);
  v7 = 21;
  v8 = 11;
  v9 = 24;
  do
  {
    v10 = &v22 + v8;
    *v10 = *(v29 + v9);
    *(v10 + 1) = *(v29 + v9 + 1);
    --v7;
    v8 += 3;
    v9 += 4;
  }

  while (v7 > 1);
  *&v26[15] = WORD2(v29[13]);
  v27 = *(&v29[13] + 6);
  v28 = BYTE2(v29[14]);
  v11 = API_Set_GPS_CBinEph("GN_AGPS_Set_Eph_El: ", v6, &v22);
  if (v11)
  {
    Debug_Log_GPS_Eph(1, v6, &v22);
  }

  return v11;
}

uint64_t GN_AGPS_Set_Alm(uint64_t a1, uint64_t a2)
{
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_Alm"))
  {
    return 0;
  }

  if ((a1 - 1) < 0x20u)
  {
    v4 = p_NA + 36 * (a1 - 1);
    v5 = *(a2 + 22);
    *(v4 + 3270) = *(a2 + 6);
    *(v4 + 3286) = v5;
    *(v4 + 3260) = *a2;
    *(v4 + 3268) = *(a2 + 4);
    if (*(a2 + 30))
    {
      v6 = 5;
    }

    else
    {
      v6 = 3;
    }

    *(v4 + 3264) = v6;
    v7 = 1;
    Debug_Log_GPS_Alm(1, a1, (v4 + 3260));
    EvLog_nd("GN_AGPS_Set_Alm: ", 2, v8, a1, *(p_NA + 36 * (a1 - 1) + 3260));
    v9 = *(a2 + 4);
    if (v9 <= 0x3FF)
    {
      if (v9 < 0x100)
      {
        v15 = *(*(p_api + 72) + 1734);
        v16 = *(p_api + 48);
        if (*(v16 + 16) == 1 && *v16 >= 3 && (v17 = *(v16 + 40) + 604800 * *(v16 + 32), v17 > 619315199))
        {
          v18 = v17 / 0x93A80u;
        }

        else
        {
          v18 = v15 + 128;
        }

        v19 = (v15 + (v15 >> 23)) & 0xFF00;
        v20 = v19 | v9;
        v21 = v18 - 128;
        if (v20 > v21)
        {
          LOWORD(v21) = v19 | v9;
        }

        LOWORD(v9) = (((v21 - v20 + 255) & 0xFF00) + v19) | v9;
      }

      else
      {
        LOWORD(v9) = Complete_WeekNo(v9);
      }
    }

    v22 = p_NA;
    *(p_NA + 36 * (a1 - 1) + 3268) = v9;
    *(v22 + (a1 - 1) + 44) = 1;
    return v7;
  }

  if ((a1 + 63) >= 0xAu)
  {
    EvCrt_v("GN_AGPS_Set_Alm:  FAILED:  SV = %d, Out of range !", a1);
    return 0;
  }

  v10 = p_NA + 36 * (a1 + 63);
  v11 = *(a2 + 22);
  *(v10 + 5222) = *(a2 + 6);
  *(v10 + 5238) = v11;
  *(v10 + 5212) = *a2;
  *(v10 + 5220) = *(a2 + 4);
  if (*(a2 + 30))
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *(v10 + 5216) = v12;
  v7 = 1;
  Debug_Log_GPS_Alm(1, a1, (v10 + 5212));
  EvLog_nd("GN_AGPS_Set_Alm: ", 2, v13, a1, *(p_NA + 36 * (a1 + 63) + 5212));
  v14 = *(a2 + 4);
  if (v14 <= 0x3FF)
  {
    if (v14 < 0x100)
    {
      v23 = *(*(p_api + 72) + 1734);
      v24 = *(p_api + 48);
      if (*(v24 + 16) == 1 && *v24 >= 3 && (v25 = *(v24 + 40) + 604800 * *(v24 + 32), v25 > 619315199))
      {
        v26 = v25 / 0x93A80u;
      }

      else
      {
        v26 = v23 + 128;
      }

      v27 = (v23 + (v23 >> 23)) & 0xFF00;
      v28 = v27 | v14;
      v29 = v26 - 128;
      if (v28 > v29)
      {
        LOWORD(v29) = v27 | v14;
      }

      LOWORD(v14) = (((v29 - v28 + 255) & 0xFF00) + v27) | v14;
    }

    else
    {
      LOWORD(v14) = Complete_WeekNo(v14);
    }
  }

  v30 = p_NA;
  *(p_NA + 36 * (a1 + 63) + 5220) = v14;
  *(v30 + (a1 + 63) + 86) = 1;
  return v7;
}

uint64_t Complete_WeekNo(unsigned int a1)
{
  if (a1 > 0x3FF)
  {
    v5 = a1;
  }

  else
  {
    v1 = *(p_api + 48);
    if (*(v1 + 16) == 1 && *v1 >= 3 && (v2 = *(v1 + 40) + 604800 * *(v1 + 32), v2 > 619315199))
    {
      v3 = v2 / 0x93A80u;
    }

    else
    {
      v3 = *(*(p_api + 72) + 1734) + 512;
    }

    v4 = v3 - 512;
    do
    {
      v5 = a1;
      a1 += 1024;
    }

    while (v4 > v5);
  }

  return v5;
}

uint64_t GN_AGPS_Set_Ion(unsigned int *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_Ion"))
  {
    return 0;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 2))
  {
    v4 = *(a1 + 5);
  }

  else
  {
    if (!*(a1 + 6))
    {
      if (!*(a1 + 7) && !*(a1 + 8) && !*(a1 + 9) && !*(a1 + 10) && !*(a1 + 11))
      {
        v7 = "GN_AGPS_Set_Ion: Rejected: ALL ZERO";
        goto LABEL_15;
      }

      v3 = 0;
    }

    v4 = 0;
  }

  EvLog_nd("GN_AGPS_Set_Ion: ", 10, v2, *a1, *(a1 + 4), v4, v3, *(a1 + 7), *(a1 + 8), *(a1 + 9), *(a1 + 10), *(a1 + 11), *(a1 + 12));
  v5 = p_NA;
  *(p_NA + 660) = *a1;
  *(v5 + 668) = *(a1 + 1);
  if (*(a1 + 12) != 1)
  {
    v7 = "GN_AGPS_Set_Ion: Rejected: Assisted source not allowed";
LABEL_15:
    EvLog(v7);
    return 0;
  }

  *(v5 + 664) = 5;
  v6 = 1;
  Debug_Log_GPS_Klob(1, (v5 + 660));
  *(p_NA + 10) = 1;
  return v6;
}

uint64_t GN_AGPS_Set_UTC(unsigned int *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_AGPS_Set_UTC"))
  {
    return 0;
  }

  EvLog_nd("GN_AGPS_Set_UTC: ", 10, v2, *a1, a1[1], a1[2], *(a1 + 12), *(a1 + 13), *(a1 + 14), *(a1 + 15), *(a1 + 16), *(a1 + 17), *(a1 + 18));
  v3 = *(a1 + 12);
  if (v3 < 0x94)
  {
    v4 = *(a1 + 14);
    if (v4 >= 0x21)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: dtLS = %d <0 or >32, Unrealistic value!");
      return 0;
    }

    v5 = *(a1 + 16);
    if (v5 >= 8)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: DN = %d >7, Out of range!");
      return 0;
    }

    v6 = *(a1 + 17);
    if (v6 >= 0x21)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: dtLSF = %d <0 or >32, Unrealistic value!");
      return 0;
    }

    v7 = *(a1 + 14);
    v8 = *(a1 + 17);
    v9 = (v6 - v4);
    if (v9 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    if (v10 >= 2)
    {
      EvCrt_v("GN_AGPS_Set_UTC: FAILED: (dtLSF-dtLS) = %d <-1 or >+1, Unrealistic difference!");
      return 0;
    }

    if (v8 != v7)
    {
      v13 = *(p_api + 48);
      if (*(v13 + 16) == 1 && *v13 >= 3)
      {
        v14 = 1861606989 * (*(v13 + 40) + 604800 * *(v13 + 32));
        v15 = (v14 >> 63) + (SHIDWORD(v14) >> 18);
      }

      else
      {
        v15 = 0;
      }

      if (Is_Future_Leap_Sec_Date_Not_Valid(v15, 1, *(a1 + 15), *(a1 + 16)))
      {
        EvCrt_v("GN_AGPS_Set_UTC: FAILED: Invalid UTC Future Leap Second date %d  %d %d %d");
        return 0;
      }
    }

    v16 = a1[1];
    v17 = a1[2];
    if (v16)
    {
      v18 = *(a1 + 13);
    }

    else
    {
      v18 = *(a1 + 13);
      if (!(v7 | v3 | v8) && !v17 && !*(a1 + 13))
      {
        if (!(*(a1 + 15) | v5))
        {
          v20 = "GN_AGPS_Set_UTC: Rejected: ALL ZERO";
LABEL_29:
          EvLog(v20);
          return 0;
        }

        v18 = 0;
      }
    }

    v19 = p_NA;
    *(p_NA + 676) = *a1;
    *(v19 + 684) = v16;
    *(v19 + 688) = v17;
    *(v19 + 692) = v3;
    *(v19 + 693) = v18;
    *(v19 + 694) = v7;
    *(v19 + 695) = *(a1 + 15);
    *(v19 + 696) = v5;
    *(v19 + 697) = v8;
    if (*(a1 + 18) == 1)
    {
      *(v19 + 680) = 5;
      v11 = 1;
      Debug_Log_GPS_UTC(1, (v19 + 676));
      *(p_NA + 11) = 1;
      return v11;
    }

    v20 = "GN_AGPS_Set_UTC: Rejected: Assisted source not allowed";
    goto LABEL_29;
  }

  EvCrt_v("GN_AGPS_Set_UTC: FAILED: Tot = %d >=148, >604800s, Out of range!");
  return 0;
}

uint64_t GN_AGPS_Set_Ref_Time(unsigned int *a1)
{
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Ref_Time");
  if (result)
  {
    EvLog_v("GN_AGPS_Set_Ref_Time:  %u  %u  %d  %d", *a1, a1[1], *(a1 + 4), *(a1 + 5));
    v3 = *a1;
    v4 = p_NA;
    *(p_NA + 404) = *a1;
    v5 = Complete_WeekNo(*(a1 + 4));
    v6 = a1[1];
    *(v4 + 416) = v5;
    *(v4 + 408) = v6 * 0.001;
    v7 = *(a1 + 5);
    *(v4 + 424) = v7 * 0.001;
    *(v4 + 2) = 1;
    if (v3)
    {
      if (v6 <= 0x240C83FF)
      {
        if (v5 > 1023)
        {
          if (v7)
          {
            if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v3) < 180001)
            {
              API_Set_Ref_Time(*(p_NA + 404), *(p_NA + 408), *(p_NA + 416), *(p_NA + 424));
              Debug_Log_AGPS_Ref_Time(a1);
              return 1;
            }

            *(p_NA + 2) = 0;
            EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: OS_Time_ms = %u, too old by %d ms");
          }

          else
          {
            *(v4 + 2) = 0;
            EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: RMS_ms = %d ==0, Out of range!");
          }
        }

        else
        {
          *(v4 + 2) = 0;
          EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: WeekNo = %d <1024, Out of range!");
        }
      }

      else
      {
        *(v4 + 2) = 0;
        EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: TOW_ms = %d >%d, Out of range!");
      }
    }

    else
    {
      *(v4 + 2) = 0;
      EvCrt_v("GN_AGPS_Set_Ref_Time: FAILED: OS_Time_ms = %u ==0, Out of range!");
    }

    return 0;
  }

  return result;
}

uint64_t GN_AGPS_Set_Ref_Pos(uint64_t a1)
{
  v44[1] = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_AGPS_Set_Ref_Pos");
  if (result)
  {
    EvLog_v("GN_AGPS_Set_Ref_Pos: %u LL %g %g Sigma %d %d %d Ht %d %g %d C %d  S %d 0x%X", *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 42), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 68), *(a1 + 72));
    v3 = *(a1 + 8);
    if (fabs(v3) > 90.0)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
      return 0;
    }

    v4 = *(a1 + 16);
    if (v4 < -180.0 || v4 > 360.0)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
      return 0;
    }

    v44[0] = 0.0;
    if (R8_EQ((a1 + 24), v44))
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_SMaj = %g ==0, Out of range!");
      return 0;
    }

    v44[0] = 0.0;
    if (R8_EQ((a1 + 32), v44))
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_SMin = %g ==0, Out of range!");
      return 0;
    }

    if ((*(a1 + 40) - 361) <= 0xFDE2u)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_SMajBrg = %d <-180 or >+360, Out of range!");
      return 0;
    }

    v5 = *(a1 + 42);
    if (v5 == 1)
    {
      v6 = *(a1 + 48);
      if (v6 < -500.0 || v6 > 6000.0)
      {
        EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Height = %g <%d or >%d, Out of range!");
        return 0;
      }

      if (*(a1 + 56) <= 0.0)
      {
        EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: RMS_Height = %g <=0, Invalid value!");
        return 0;
      }
    }

    v7 = *(a1 + 64);
    if (v7 >= 5)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Trust = %d <GN_AGPS_TRUST_UNKNOWN or >GN_AGPS_TRUST_HIGH, Out of range!");
      return 0;
    }

    v8 = *(a1 + 68);
    if (v8 >= 9)
    {
      EvCrt_v("GN_AGPS_Set_Ref_Pos: FAILED: Source = %d <GN_AGPS_SRC_UNKNOWN or >GN_AGPS_SRC_EXT, Out of range!");
      return 0;
    }

    v9 = v3 * 0.0174532925;
    v10 = v4 * 0.0174532925;
    v11 = *(a1 + 24);
    v12 = v11 * v11;
    v13 = p_NA;
    LODWORD(v14) = *a1;
    if (*(p_NA + 8) == 1)
    {
      v15 = *(p_NA + 552);
      v16 = (v9 - v15) * 6378137.0;
      v17 = (v10 - *(p_NA + 560)) * 6378137.0;
      v18 = cos(v15);
      v19 = v18 * v17 * (v18 * v17) + v16 * v16;
      v20 = v14 - *(v13 + 544);
      v21 = *(v13 + 600);
      v22 = v21 + v20 * 0.015 * (v20 * 0.015);
      v23 = (v12 + v22) * 9.0;
      if (v7 <= 2)
      {
        v24 = *(v13 + 636);
        if (v7 < v24)
        {
          EvCrt_v("GN_AGPS_Set_Ref_Pos: Ignored: Trust %d worse than existing, %d dAge %d dPos %f Sig %f %f %f", v7, v24, v20, sqrt(v19), v11, sqrt(v21), sqrt(v22));
          v25 = v19 < 160000.0 && v19 < v23;
          if (!v25 || *(a1 + 64) <= 1 || *(a1 + 42) != 1)
          {
            goto LABEL_64;
          }

          if (*(p_NA + 9) != 1)
          {
            goto LABEL_67;
          }

LABEL_40:
          if (*(a1 + 68) != 7)
          {
LABEL_64:
            Debug_Log_AGPS_Ref_Pos(a1);
            return 1;
          }

          v26 = *a1 - *(p_NA + 544);
          v27 = *(p_NA + 624);
          v28 = v27 + v26 * 0.0005 * (v26 * 0.0005);
          v29 = *(a1 + 56);
          if (v29 * v29 <= v28)
          {
            goto LABEL_66;
          }

          v30 = *(a1 + 48) - *(p_NA + 568);
          v31 = v30 * v30;
          v32 = (v29 * v29 + v28) * 9.0;
          v33 = sqrt(v31);
          v34 = sqrt(v27);
          v35 = sqrt(v28);
          if (v31 < v32)
          {
            EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude Ignored: Worse but consistent, dAge %d dAlt %f Sig %f %f %f", v26, v33, v29, v34, v35);
            goto LABEL_64;
          }

          EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude replacing inconsistent Prev Altitude, dAge %d dAlt %f Sig %f %f %f", v26, v33, v29, v34, v35);
          if (*(p_NA + 9))
          {
LABEL_66:
            EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude replacing previous one, PrevAlt %f Sig %f CurrentAlt %f Sig %f");
          }

          else
          {
LABEL_67:
            EvCrt_v("GN_AGPS_Set_Ref_Pos: New Altitude replacing previously missing one, CurrentAlt %f Sig %f");
          }

          v43 = p_NA;
          *(p_NA + 9) = 1;
          *(v43 + 568) = *(a1 + 48);
          *(v43 + 624) = *(a1 + 56) * *(a1 + 56);
          goto LABEL_64;
        }
      }

      if (v12 > v22)
      {
        if (v19 < v23)
        {
          EvCrt_v("GN_AGPS_Set_Ref_Pos: Ignored: Worse but consistent, dAge %d dPos %f Sig %f %f %f", v20, sqrt(v19), v11, sqrt(v21), sqrt(v22));
          if (!v5 || v19 >= 160000.0)
          {
            goto LABEL_64;
          }

          goto LABEL_40;
        }

        if ((v8 == 4 || v8 == 2) && *(v13 + 640) == 7)
        {
          EvCrt_v("GN_AGPS_Set_Ref_Pos: E911 Ref Pos replacing inconsistent OS Ref Pos, dAge %d dPos %f Sig %f %f %f", v20, sqrt(v19), v11, sqrt(v21), sqrt(v22));
          v13 = p_NA;
          LODWORD(v14) = *a1;
        }
      }
    }

    *(v13 + 8) = 1;
    if (!v14)
    {
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = p_NA;
    }

    *(v13 + 544) = v14;
    *(v13 + 552) = v9;
    *(v13 + 560) = v10;
    *(v13 + 576) = v12;
    v36 = *(a1 + 32) * *(a1 + 32);
    *(v13 + 584) = v36;
    v37 = *(a1 + 40) * 0.0174532925;
    *(v13 + 592) = v37;
    *(v13 + 600) = v12;
    *(v13 + 608) = v36;
    *(v13 + 616) = v37;
    if (*(a1 + 42) == 1)
    {
      *(v13 + 9) = 1;
      *(v13 + 568) = *(a1 + 48);
      *(v13 + 624) = *(a1 + 56) * *(a1 + 56);
    }

    v38 = *(a1 + 64);
    if (!**(&xmmword_2A1454168 + 1))
    {
      v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v40 = v39 - *a1;
      v13 = p_NA;
      *(p_NA + 544) = v39;
      *(v13 + 576) = vaddq_f64(*(v13 + 576), vdupq_lane_s64(COERCE__INT64(v40 * 0.015 * (v40 * 0.015)), 0));
      *(v13 + 624) = v40 * 0.0005 * (v40 * 0.0005) + *(v13 + 624);
      v41 = v40 >= 0 ? v40 : -v40;
      if (v41 >= 0x249F1 && v38 >= 2)
      {
        EvCrt_v("GN_AGPS_Set_Ref_Pos: Very old Reference Position demoted to Very Low Trust, Age_ms %d", v40);
        v13 = p_NA;
        v38 = 1;
      }
    }

    *(v13 + 632) = v38;
    *(v13 + 636) = v38;
    v42 = *(a1 + 68);
    *(v13 + 640) = v42;
    *(v13 + 648) = *(a1 + 72);
    if (v42 == 7 && *(a1 + 24) < 400.0)
    {
      *(v13 + 656) = 0;
    }

    else
    {
      *(v13 + 656) = 2;
    }

    goto LABEL_64;
  }

  return result;
}

unint64_t GN_AGPS_Mark_Response_Sent(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(qword_2A1454238);
  GNSS_GNB_Debug_Ctl(qword_2A1454258);
  GNSS_Event_Log_Ctl(qword_2A1454250);
  GNSS_Nav_Debug_Ctl(qword_2A1454248);
  v4 = __src;
  v34 = __src;
  v35 = v37;
  v33 = __src;
  v5 = 10;
  v6 = 1u;
  do
  {
    v32 = v4 + 1;
    *v4 = v5;
    v4 = v32;
    if (v32 >= v35)
    {
      v4 = v34;
      v32 = v34;
    }

    v5 = str_58_0[v6++];
  }

  while (v6 != 35);
  sprintf_10u(&v32, a1);
  v7 = v32++;
  *v7 = 32;
  if (v32 >= v35)
  {
    v32 = v34;
  }

  sprintf_10u(&v32, a2);
  v8 = 0;
  v9 = 32;
  v10 = v32;
  do
  {
    v32 = v10 + 1;
    *v10 = v9;
    v10 = v32;
    if (v32 >= v35)
    {
      v10 = v34;
      v32 = v34;
    }

    v9 = str_59_0[++v8];
  }

  while (v8 != 8);
  result = API_Query_Config(v37);
  if (v38 >= 1)
  {
    v12 = qword_2A1454250;
    v13 = (v32 - v33);
    v14 = *(qword_2A1454250 + 24);
    result = *qword_2A1454250;
    v15 = __src;
    do
    {
      v16 = v14 - result;
      if (v13 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v13;
      }

      memcpy(result, v15, v17);
      result = *v12 + v17;
      *v12 = result;
      v14 = v12[3];
      if (result >= v14)
      {
        result = v12[2];
        *v12 = result;
      }

      v15 += v17;
      v18 = __OFSUB__(v13, v17);
      v13 -= v17;
    }

    while (!((v13 < 0) ^ v18 | (v13 == 0)));
    if (v38 >= 4)
    {
      v19 = qword_2A1454258;
      v20 = (v32 - v33);
      v21 = *(qword_2A1454258 + 24);
      v22 = *qword_2A1454258;
      v23 = __src;
      do
      {
        v24 = v21 - v22;
        if (v20 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v20;
        }

        memcpy(v22, v23, v25);
        v22 = (*v19 + v25);
        *v19 = v22;
        v21 = v19[3];
        if (v22 >= v21)
        {
          v22 = v19[2];
          *v19 = v22;
        }

        v23 += v25;
        v18 = __OFSUB__(v20, v25);
        v20 -= v25;
      }

      while (!((v20 < 0) ^ v18 | (v20 == 0)));
      v26 = qword_2A1454248;
      v27 = (v32 - v33);
      v28 = *(qword_2A1454248 + 24);
      result = *qword_2A1454248;
      v29 = __src;
      do
      {
        v30 = v28 - result;
        if (v27 >= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v27;
        }

        memcpy(result, v29, v31);
        result = *v26 + v31;
        *v26 = result;
        v28 = v26[3];
        if (result >= v28)
        {
          result = v26[2];
          *v26 = result;
        }

        v29 += v31;
        v18 = __OFSUB__(v27, v31);
        v27 -= v31;
      }

      while (!((v27 < 0) ^ v18 | (v27 == 0)));
    }
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::decodeSuplInit()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v1), "ADP", 68, "decodeSuplInit");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v0 = g_LbsOsaTrace_Config;
  }

  if (v0 >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SUPL not supported\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 87, "decodeSuplInit", 1026);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "decodeSuplInit");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  return 0;
}

void gnss::GnssAdaptDevice::setSuplInit(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "setSuplInit");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(a4 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a4);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v10, "setSuplInit");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "setSuplInit", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "setSuplInit");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "setSuplInit", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F24E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setSuplLocationIdNeededReport(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v6, "setSuplLocationIdNeededReport");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setSuplLocationIdNeededReport", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setSuplLocationIdNeededReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F25014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setSuplLocationId(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v6, "setSuplLocationId");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setSuplLocationId", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setSuplLocationId", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F251B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::abortSuplSession(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v5, a2);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v5, "abortSuplSession");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "abortSuplSession", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "abortSuplSession", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F25358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setSuplSessionStatusReport(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v6, "setSuplSessionStatusReport");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setSuplSessionStatusReport", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setSuplSessionStatusReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F254FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setSuplWlanMeasurementNeededReport(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v6, "setSuplWlanMeasurementNeededReport");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setSuplWlanMeasurementNeededReport", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setSuplWlanMeasurementNeededReport", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F256A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::setSuplWlanMeasurements(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(result, 7, v6, "setSuplWlanMeasurements");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "setSuplWlanMeasurements", 1026);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "setSuplWlanMeasurements", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void sub_298F25844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t NK_Check_Num_SV_Res(uint64_t result, int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v10 = 0;
  v11 = (a7 + 312);
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v16 = v11[v10];
    v17 = vmovl_u8(*v16.i8);
    v18 = vmovl_high_u8(v16);
    v15 = vaddw_high_u16(v15, v18);
    v14 = vaddw_u16(v14, *v18.i8);
    v13 = vaddw_high_u16(v13, v17);
    v12 = vaddw_u16(v12, *v17.i8);
    ++v10;
  }

  while (v10 != 8);
  v19 = 0;
  *(a7 + 3) = vaddvq_s32(vaddq_s32(vaddq_s32(v12, v14), vaddq_s32(v13, v15)));
  v20 = (a10 + 312);
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  do
  {
    v25 = v20[v19];
    v26 = vmovl_u8(*v25.i8);
    v27 = vmovl_high_u8(v25);
    v24 = vaddw_high_u16(v24, v27);
    v23 = vaddw_u16(v23, *v27.i8);
    v22 = vaddw_high_u16(v22, v26);
    v21 = vaddw_u16(v21, *v26.i8);
    ++v19;
  }

  while (v19 != 8);
  v28 = 0;
  *(a10 + 3) = vaddvq_s32(vaddq_s32(vaddq_s32(v21, v23), vaddq_s32(v22, v24)));
  v29 = (a8 + 312);
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  do
  {
    v34 = v29[v28];
    v35 = vmovl_u8(*v34.i8);
    v36 = vmovl_high_u8(v34);
    v33 = vaddw_high_u16(v33, v36);
    v32 = vaddw_u16(v32, *v36.i8);
    v31 = vaddw_high_u16(v31, v35);
    v30 = vaddw_u16(v30, *v35.i8);
    ++v28;
  }

  while (v28 != 8);
  LOBYTE(v37) = vaddvq_s32(vaddq_s32(vaddq_s32(v30, v32), vaddq_s32(v31, v33)));
  *(a8 + 3) = v37;
  v38 = *(a7 + 3);
  if (v38 < a3 || v38 <= 2 && (a4 & 1) == 0 && (!result || !a6 && a2))
  {
    *(a7 + 3) = 0;
    *v11 = 0u;
    *(a7 + 328) = 0u;
    *(a7 + 344) = 0u;
    *(a7 + 360) = 0u;
    *(a7 + 376) = 0u;
    *(a7 + 392) = 0u;
    *(a7 + 408) = 0u;
    *(a7 + 424) = 0u;
    v37 = *(a8 + 3);
    if (v37 + *(a10 + 3) < 3 || (a9 <= 100000000.0 ? (v39 = a4 == 0) : (v39 = 1), !v39 ? (v40 = a5 <= 2) : (v40 = 1), v40))
    {
      LOBYTE(v37) = 0;
      *(a10 + 3) = 0;
      *v20 = 0uLL;
      *(a10 + 328) = 0uLL;
      *(a10 + 344) = 0uLL;
      *(a10 + 360) = 0uLL;
      *(a10 + 376) = 0uLL;
      *(a10 + 392) = 0uLL;
      *(a10 + 408) = 0uLL;
      *(a10 + 424) = 0uLL;
      *(a8 + 3) = 0;
      *v29 = 0uLL;
      *(a8 + 328) = 0uLL;
      *(a8 + 344) = 0uLL;
      *(a8 + 360) = 0uLL;
      *(a8 + 376) = 0uLL;
      *(a8 + 392) = 0uLL;
      *(a8 + 408) = 0uLL;
      *(a8 + 424) = 0uLL;
    }
  }

  if (a3 > (*(a10 + 3) + v37))
  {
    *(a10 + 3) = 0;
    *v20 = 0u;
    *(a10 + 328) = 0u;
    *(a10 + 344) = 0u;
    *(a10 + 360) = 0u;
    *(a10 + 376) = 0u;
    *(a10 + 392) = 0u;
    *(a10 + 408) = 0u;
    *(a10 + 424) = 0u;
    *(a8 + 3) = 0;
    *v29 = 0u;
    *(a8 + 328) = 0u;
    *(a8 + 344) = 0u;
    *(a8 + 360) = 0u;
    *(a8 + 376) = 0u;
    *(a8 + 392) = 0u;
    *(a8 + 408) = 0u;
    *(a8 + 424) = 0u;
  }

  return result;
}

uint64_t ARP_Calc(uint64_t result)
{
  v1 = *(result + 88);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 != v2)
  {
    v5 = vdupq_n_s64(0x416312D000000000uLL);
    v6 = v5;
  }

  else
  {
    if (v3 >= 9)
    {
      v3 = 9;
    }

    v4 = g_ARP_cBiasP_Table[v3 + 10];
    v5 = vmulq_n_f64(vsqrtq_f64(*(result + 8)), v4);
    v6 = vmulq_n_f64(vsqrtq_f64(*(result + 24)), v4);
  }

  *(result + 40) = v5;
  *(result + 56) = v6;
  return result;
}

uint64_t HSW_SetPEConfig(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = GN_GPS_Set_Config(a1);
  if ((v3 & 1) == 0 && g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PE set config failed,%s\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 77, "HSW_SetPEConfig", a2);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  return v3;
}

void HSW_InitConfiguration(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  g_HSWConfiguration = 0;
  dword_2A13C3B30 = 0;
  byte_2A13C3B34 = 1;
  *&byte_2A13C3B35 = 0u;
  *(&qword_2A13C3B40 + 5) = 0u;
  *&qword_2A13C3B50 = 0u;
  dword_2A13C3B60 = 240;
  *&word_2A13C3B64 = 0x100000003E8000ALL;
  GN_GPS_Initialise(a1);
  LODWORD(g_HSWConfiguration) = 16843009;
  IsStandaloneBeiDouSupportRequired = Ga05_GetIsStandaloneBeiDouSupportRequired();
  LOBYTE(dword_2A13C3B30) = 1;
  BYTE1(dword_2A13C3B30) = IsStandaloneBeiDouSupportRequired;
  DebugFeaturesBitmask = Ga05_GetDebugFeaturesBitmask();
  BYTE6(g_HSWConfiguration) = 1;
  HIBYTE(g_HSWConfiguration) = (DebugFeaturesBitmask & 2) != 0;
  WORD2(g_HSWConfiguration) = 257;
  HIWORD(dword_2A13C3B30) = 0;
  v3 = *(qword_2A1454208 + 16);
  *__str = *qword_2A1454208;
  v35 = v3;
  v4 = *(qword_2A1454208 + 80);
  v6 = *(qword_2A1454208 + 32);
  v5 = *(qword_2A1454208 + 48);
  v38 = *(qword_2A1454208 + 64);
  v39 = v4;
  v36 = v6;
  v37 = v5;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", __str);
  __str[14] = 1;
  WORD1(v36) = 200;
  BYTE8(v39) = 1;
  HSW_SetPEConfig(__str, "HSW_InitializePEDefaultsConfig");
  HSW_SetPEConstelCfg();
  HSW_InternalSetRequireBDSConsistency();
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Setting Platform group delay\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 68, "HSW_SetPlatformGroupDelay");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  PlatformCalibrationL5GroupDelayMeters = Ga05_GetPlatformCalibrationL5GroupDelayMeters();
  v9 = GN_GPS_Set_Platform_Calibration_L5_Group_Delay(PlatformCalibrationL5GroupDelayMeters);
  v10 = g_LbsOsaTrace_Config < 2 || v9;
  if ((v10 & 1) == 0)
  {
    bzero(__str, 0x3C6uLL);
    v11 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: L5 GroupDelay set failed \n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "HSW_SetPlatformGroupDelay");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  Ga05_GetPlatformCalibrationGlonassGroupDelayMeters();
  if (v33 == __p || v33 - __p != 112)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass GroupDelay not set, data invalid\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "HSW_SetPlatformGroupDelay");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }
  }

  else
  {
    v12 = GN_GPS_Set_Platform_Calibration_GLONASS_Group_Delays(__p);
    v13 = g_LbsOsaTrace_Config < 2 || v12;
    if ((v13 & 1) == 0)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Glonass GroupDelay set failed\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "HSW_SetPlatformGroupDelay");
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  v16 = *(qword_2A1454208 + 16);
  *__str = *qword_2A1454208;
  v35 = v16;
  v17 = *(qword_2A1454208 + 80);
  v19 = *(qword_2A1454208 + 32);
  v18 = *(qword_2A1454208 + 48);
  v38 = *(qword_2A1454208 + 64);
  v39 = v17;
  v36 = v19;
  v37 = v18;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", __str);
  DWORD2(v36) = 0;
  if (g_LbsOsaTrace_Config == 1 && g_LbsOsaTrace_Config <= 5)
  {
    DWORD2(v36) = g_LbsOsaTrace_Config;
  }

  HSW_SetPEConfig(__str, "HSW_SetPELogCfg");
  HSW_SetRfBandCfg(1, 1);
  HSW_InternalSetE5bTracking();
  if ((Ga05_GetDebugFeaturesBitmask() & 0x400) != 0)
  {
    PETestMode = Get_PETestMode();
    GN_GPS_Set_Test_Mode(PETestMode);
  }

  HSW_InternalSetRFDutyCyclingCfg();
  HSW_SetReceivingFTAConfig();
  byte_2A13C3B6B = (Ga05_GetDebugFeaturesBitmask() & 0x4000) == 0;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v21 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v22 = byte_2A13C3B36 ? 89 : 78;
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:SimulatedMode,%c\n", v21, "GNM", 73, "HSW_InitConfiguration", v22);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v23 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v24 = 78;
      if (byte_2A13C3B37)
      {
        v24 = 89;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:ExternalClock,%c\n", v23, "GNM", 73, "HSW_InitConfiguration", v24);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v25 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:EarliestGpsWkNo,%u\n", (*&g_MacClockTicksToMsRelation * v25), "GNM", 73, "HSW_InitConfiguration", word_2A13C3B38);
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v26 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v27 = 78;
          if (byte_2A13C3B34)
          {
            v27 = 89;
          }

          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:L1_Enable,%c\n", v26, "GNM", 73, "HSW_InitConfiguration", v27);
          gnssOsa_PrintLog(__str, 4, 1, 0);
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v28 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v29 = 78;
            if (byte_2A13C3B34)
            {
              v29 = 89;
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:L5_Enable,%c\n", v28, "GNM", 73, "HSW_InitConfiguration", v29);
            gnssOsa_PrintLog(__str, 4, 1, 0);
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v30 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:SWBuildGPSWeekNum,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNM", 73, "HSW_InitConfiguration", word_2A13C3B3A);
              gnssOsa_PrintLog(__str, 4, 1, 0);
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v31 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:EarliestGpsWkNo,%u\n", (*&g_MacClockTicksToMsRelation * v31), "GNM", 73, "HSW_InitConfiguration", word_2A13C3B38);
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }
            }
          }
        }
      }
    }
  }
}

void sub_298F264D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HSW_SetPEConstelCfg(void)
{
  v26 = *MEMORY[0x29EDCA608];
  v0 = *(qword_2A1454208 + 16);
  v25[0] = *qword_2A1454208;
  v25[1] = v0;
  v1 = *(qword_2A1454208 + 80);
  v3 = *(qword_2A1454208 + 32);
  v2 = *(qword_2A1454208 + 48);
  v25[4] = *(qword_2A1454208 + 64);
  v25[5] = v1;
  v25[2] = v3;
  v25[3] = v2;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v25);
  BYTE7(v25[0]) = BYTE1(g_HSWConfiguration);
  LOBYTE(v25[0]) = g_HSWConfiguration;
  BYTE8(v25[0]) = BYTE3(g_HSWConfiguration);
  BYTE1(v25[0]) = BYTE2(g_HSWConfiguration);
  BYTE11(v25[0]) = BYTE1(dword_2A13C3B30);
  BYTE4(v25[0]) = dword_2A13C3B30;
  BYTE12(v25[0]) = HIBYTE(g_HSWConfiguration);
  BYTE5(v25[0]) = BYTE6(g_HSWConfiguration);
  BYTE9(v25[0]) = BYTE5(g_HSWConfiguration);
  BYTE2(v25[0]) = BYTE4(g_HSWConfiguration);
  BYTE13(v25[0]) = HIBYTE(dword_2A13C3B30);
  BYTE6(v25[0]) = BYTE2(dword_2A13C3B30);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:Constel Constellation  Search\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "HSW_SetPEConstelCfg");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = BYTE1(g_HSWConfiguration) ? 89 : 78;
      v7 = g_HSWConfiguration ? 89 : 78;
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:GPS          %c          %c\n", v5, "GNM", 73, "HSW_SetPEConstelCfg", v7, v6);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v9 = 78;
        if (BYTE3(g_HSWConfiguration))
        {
          v10 = 89;
        }

        else
        {
          v10 = 78;
        }

        if (BYTE2(g_HSWConfiguration))
        {
          v9 = 89;
        }

        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:GLON         %c          %c\n", v8, "GNM", 73, "HSW_SetPEConstelCfg", v9, v10);
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
          v12 = 78;
          if (BYTE5(g_HSWConfiguration))
          {
            v13 = 89;
          }

          else
          {
            v13 = 78;
          }

          if (BYTE4(g_HSWConfiguration))
          {
            v12 = 89;
          }

          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:QZSS         %c          %c\n", v11, "GNM", 73, "HSW_SetPEConstelCfg", v12, v13);
          gnssOsa_PrintLog(__str, 4, 1, 0);
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v14 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v15 = 78;
            if (HIBYTE(g_HSWConfiguration))
            {
              v16 = 89;
            }

            else
            {
              v16 = 78;
            }

            if (BYTE6(g_HSWConfiguration))
            {
              v15 = 89;
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:GAL          %c          %c\n", v14, "GNM", 73, "HSW_SetPEConstelCfg", v15, v16);
            gnssOsa_PrintLog(__str, 4, 1, 0);
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v17 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
              v18 = 78;
              if (BYTE1(dword_2A13C3B30))
              {
                v19 = 89;
              }

              else
              {
                v19 = 78;
              }

              if (dword_2A13C3B30)
              {
                v18 = 89;
              }

              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:BDS          %c          %c\n", v17, "GNM", 73, "HSW_SetPEConstelCfg", v18, v19);
              gnssOsa_PrintLog(__str, 4, 1, 0);
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v20 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
                v21 = 78;
                if (HIBYTE(dword_2A13C3B30))
                {
                  v22 = 89;
                }

                else
                {
                  v22 = 78;
                }

                if (BYTE2(dword_2A13C3B30))
                {
                  v21 = 89;
                }

                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:NVC          %c          %c\n", v20, "GNM", 73, "HSW_SetPEConstelCfg", v21, v22);
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }
            }
          }
        }
      }
    }
  }

  return HSW_SetPEConfig(v25, "HSW_SetPEConstelCfg");
}

uint64_t HSW_InternalSetRequireBDSConsistency(void)
{
  v12 = *MEMORY[0x29EDCA608];
  v0 = *(qword_2A1454208 + 16);
  v10[0] = *qword_2A1454208;
  v10[1] = v0;
  v1 = *(qword_2A1454208 + 80);
  v3 = *(qword_2A1454208 + 32);
  v2 = *(qword_2A1454208 + 48);
  v10[4] = *(qword_2A1454208 + 64);
  v11 = v1;
  v10[2] = v3;
  v10[3] = v2;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v10);
  IsBeiDouConsistencyRequired = Ga05_GetIsBeiDouConsistencyRequired();
  BYTE10(v11) = IsBeiDouConsistencyRequired;
  if (g_LbsOsaTrace_Config >= 4)
  {
    v5 = IsBeiDouConsistencyRequired;
    bzero(__str, 0x3C6uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = 78;
    if (v5)
    {
      v7 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:Require_BDS_Consistency,%c\n", v6, "GNM", 73, "HSW_InternalSetRequireBDSConsistency", v7);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return HSW_SetPEConfig(v10, "HSW_InternalSetRequireBDSConsistency");
}

uint64_t HSW_SetRfBandCfg(char a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if ((Ga05_GetDebugFeaturesBitmask() & 0x200) == 0)
  {
    if (g_LbsOsaTrace_Config <= 3)
    {
      byte_2A13C3B34 = a1;
      byte_2A13C3B35 = 1;
      goto LABEL_14;
    }

    bzero(__str, 0x3C6uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = 78;
    if (a2)
    {
      v5 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: L5 disable not allowed, GPSD - EnableL5,%c\n", v4, "GNM", 73, "HSW_SetRfBandCfg", v5);
    LOBYTE(a2) = 1;
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  byte_2A13C3B34 = a1;
  byte_2A13C3B35 = a2;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = 78;
    if (byte_2A13C3B34)
    {
      v7 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:L1_Enable,%c\n", v6, "GNM", 73, "HSW_SetRfBandCfg", v7);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v9 = 78;
      if (byte_2A13C3B35)
      {
        v9 = 89;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:L5_Enable,%c\n", v8, "GNM", 73, "HSW_SetRfBandCfg", v9);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

LABEL_14:
  v10 = *(qword_2A1454208 + 16);
  *__str = *qword_2A1454208;
  v16 = v10;
  v11 = *(qword_2A1454208 + 80);
  v13 = *(qword_2A1454208 + 32);
  v12 = *(qword_2A1454208 + 48);
  v19 = *(qword_2A1454208 + 64);
  v20 = v11;
  v17 = v13;
  v18 = v12;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", __str);
  WORD6(v16) = *&byte_2A13C3B34 ^ 1;
  return HSW_SetPEConfig(__str, "HSW_SetRfBandCfg");
}

uint64_t HSW_InternalSetE5bTracking(void)
{
  v15 = *MEMORY[0x29EDCA608];
  v0 = *(qword_2A1454208 + 16);
  v9 = *qword_2A1454208;
  v10 = v0;
  v1 = *(qword_2A1454208 + 80);
  v3 = *(qword_2A1454208 + 32);
  v2 = *(qword_2A1454208 + 48);
  v13 = *(qword_2A1454208 + 64);
  v14 = v1;
  v11 = v3;
  v12 = v2;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", &v9);
  DebugFeaturesBitmask = Ga05_GetDebugFeaturesBitmask();
  BYTE14(v10) = (DebugFeaturesBitmask & 0x1000) != 0;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 78;
    if ((DebugFeaturesBitmask >> 12))
    {
      v6 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:E5b tracking,%c\n", v5, "GNM", 73, "HSW_InternalSetE5bTracking", v6);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return HSW_SetPEConfig(&v9, "HSW_InternalSetE5bTracking");
}

void HSW_InternalSetRFDutyCyclingCfg(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (byte_2A13C3B3C)
    {
      v1 = 89;
    }

    else
    {
      v1 = 78;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:RFDutyCyclingAllowed,%c\n", v0, "GNM", 73, "HSW_InternalSetRFDutyCyclingCfg", v1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v2 = byte_2A13C3B3C;
  *(*(&xmmword_2A1454168 + 1) + 12) = byte_2A13C3B3C;
  if (v2)
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  EvCrt_v("GN_GPS_Set_RF_Duty_Cycling_Allowed:  %s", v3);
}

void HSW_SetReceivingFTAConfig(void)
{
  v3 = *MEMORY[0x29EDCA608];
  byte_2A13C3B6A = Ga05_IsReceivingFTAEnabled();
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (byte_2A13C3B6A)
    {
      v1 = 89;
    }

    else
    {
      v1 = 78;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:EnableReceivingFineTimeAssistance,%c\n", v0, "GNM", 73, "HSW_SetReceivingFTAConfig", v1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

uint64_t HSW_SetSimulatorModeCfg(int a1, __int16 a2, char a3)
{
  v19 = *MEMORY[0x29EDCA608];
  byte_2A13C3B36 = a1;
  byte_2A13C3B37 = a3;
  if (a1)
  {
    word_2A13C3B38 = a2;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 78;
    if (byte_2A13C3B36)
    {
      v4 = 89;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:SimulatedMode,%c\n", v3, "GNM", 73, "HSW_SetSimulatorModeCfg", v4);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = 78;
      if (byte_2A13C3B37)
      {
        v6 = 89;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:ExternalClock,%c\n", v5, "GNM", 73, "HSW_SetSimulatorModeCfg", v6);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:EarliestGpsWkNo,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "HSW_SetSimulatorModeCfg", word_2A13C3B38);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }
  }

  v8 = *(qword_2A1454208 + 16);
  *__str = *qword_2A1454208;
  v14 = v8;
  v9 = *(qword_2A1454208 + 80);
  v11 = *(qword_2A1454208 + 32);
  v10 = *(qword_2A1454208 + 48);
  v17 = *(qword_2A1454208 + 64);
  v18 = v9;
  v15 = v11;
  v16 = v10;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", __str);
  HIBYTE(v14) = byte_2A13C3B36;
  HIWORD(v15) = word_2A13C3B38;
  return HSW_SetPEConfig(__str, "HSW_SetSimulatorModeCfg");
}

uint64_t HSW_SetConstellationCfg(char a1)
{
  if ((a1 & 4) != 0)
  {
    IsStandaloneBeiDouSupportRequired = Ga05_GetIsStandaloneBeiDouSupportRequired();
    v2 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    IsStandaloneBeiDouSupportRequired = 0;
    if ((a1 & 8) != 0)
    {
LABEL_3:
      v4 = (Ga05_GetDebugFeaturesBitmask() >> 1) & 1;
      v5 = 1;
      goto LABEL_6;
    }
  }

  v5 = 0;
  LOBYTE(v4) = 0;
LABEL_6:
  LOBYTE(g_HSWConfiguration) = a1 & 1;
  BYTE1(g_HSWConfiguration) = a1 & 1;
  BYTE2(g_HSWConfiguration) = (a1 & 2) != 0;
  BYTE3(g_HSWConfiguration) = (a1 & 2) != 0;
  BYTE4(g_HSWConfiguration) = (a1 & 0x10) != 0;
  BYTE5(g_HSWConfiguration) = (a1 & 0x10) != 0;
  BYTE6(g_HSWConfiguration) = v5;
  HIBYTE(g_HSWConfiguration) = v4;
  LOBYTE(dword_2A13C3B30) = v2;
  BYTE1(dword_2A13C3B30) = IsStandaloneBeiDouSupportRequired;
  BYTE2(dword_2A13C3B30) = (a1 & 0x20) != 0;
  HIBYTE(dword_2A13C3B30) = (a1 & 0x20) != 0;

  return HSW_SetPEConstelCfg();
}

void HSW_SessionStartConfiguration(void)
{
  BYTE1(dword_2A13C3B30) = Ga05_GetIsStandaloneBeiDouSupportRequired();
  HSW_SetPEConstelCfg();
  HSW_InternalSetRequireBDSConsistency();
  HSW_InternalSetE5bTracking();
  HSW_InternalSetRFDutyCyclingCfg();

  HSW_SetReceivingFTAConfig();
}

uint64_t HSW_SetSWBuildGPSWKNum(__int16 a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((Ga05_GetDebugFeaturesBitmask() & 0x100) != 0)
  {
    word_2A13C3B3A = 2049;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:SWBuildGPSWeekNum (default override),%u\n");
      goto LABEL_6;
    }
  }

  else
  {
    word_2A13C3B3A = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:SWBuildGPSWeekNum,%u\n");
LABEL_6:
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v2 = *(qword_2A1454208 + 16);
  *__str = *qword_2A1454208;
  v8 = v2;
  v3 = *(qword_2A1454208 + 80);
  v5 = *(qword_2A1454208 + 32);
  v4 = *(qword_2A1454208 + 48);
  v11 = *(qword_2A1454208 + 64);
  v12 = v3;
  v9 = v5;
  v10 = v4;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", __str);
  LOWORD(v10) = word_2A13C3B3A;
  HIWORD(v9) = word_2A13C3B3A;
  return HSW_SetPEConfig(__str, "HSW_SetSWBuildGPSWKNum");
}

uint64_t HSW_SetCrossCorrelationCfg(double a1, double a2, double a3, double a4)
{
  v9 = *MEMORY[0x29EDCA608];
  qword_2A13C3B40 = *&a1;
  *algn_2A13C3B48 = a2;
  qword_2A13C3B50 = *&a3;
  unk_2A13C3B58 = *&a4;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v4 = GN_GPS_Set_CrossCorr_Params(v7);
  if ((v4 & 1) == 0 && g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PE SetCrossCorr failed\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 77, "HSW_SetCrossCorrelationCfg");
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  return v4;
}

uint64_t HSW_SetEarliestGPSWKNum(__int16 a1)
{
  v13 = *MEMORY[0x29EDCA608];
  word_2A13C3B38 = a1;
  v1 = *(qword_2A1454208 + 16);
  v8[0] = *qword_2A1454208;
  v8[1] = v1;
  v2 = *(qword_2A1454208 + 80);
  v4 = *(qword_2A1454208 + 32);
  v3 = *(qword_2A1454208 + 48);
  v11 = *(qword_2A1454208 + 64);
  v12 = v2;
  v9 = v4;
  v10 = v3;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v8);
  HIWORD(v9) = word_2A13C3B38;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Config:EarliestGpsWkNo,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "HSW_SetEarliestGPSWKNum", word_2A13C3B38);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return HSW_SetPEConfig(v8, "HSW_SetEarliestGPSWKNum");
}

unint64_t HSW_GetSleepTimeout(void)
{
  if ((Ga05_GetDebugFeaturesBitmask() & 0x40) == 0)
  {
    return dword_2A13C3B60;
  }

  return Get_TestConfigurationSleepTimeoutSeconds();
}

void HSW_SetFixInterval(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  if (result <= 0x64)
  {
    v1 = 100;
  }

  else
  {
    v1 = result;
  }

  if (word_2A13C3B66 != v1 && GN_GPS_Set_FixInterval(v1))
  {
    word_2A13C3B66 = v1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: MEUpdtInt,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "HSW_SetFixInterval", v1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }
}

void Gnm31_04SendClearNv(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm31_04SendClearNv", 587, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ =>GNCP\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm31_04SendClearNv");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(128, 132, 8391168, v3);
  }
}

uint64_t GM_Get_Best_ASSS(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
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
      if (v10 >= a3 && (*v7 & 0x308) == 0x208)
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

BOOL SV_Gen_Meas(uint64_t a1, char *__dst, int *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11)
{
  v11 = a8;
  v14 = __dst;
  v321 = *MEMORY[0x29EDCA608];
  v306 = __dst + 17936;
  v15 = a5 + 2954;
  v317 = 0;
  v316 = 0;
  if ((a5[2954] & 1) == 0)
  {
    *&v320[0] = 0;
    UTC_Cor = API_Get_UTC_Cor(1, v320);
    v17 = -0.5;
    if (*v320 > 0.0)
    {
      v17 = 0.5;
    }

    v18 = *v320 + v17;
    if (v18 <= 2147483650.0)
    {
      if (v18 >= -2147483650.0)
      {
        v19 = v18;
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = -1;
    }

    v14 = __dst;
    if (UTC_Cor)
    {
      v20 = *(v15 + 1);
      v21 = v19 - v20;
      if (v19 != v20)
      {
        v22 = a5 + 1802;
        v23 = v21 * 1023000.0;
        v24 = -0.5;
        if (v23 > 0.0)
        {
          v24 = 0.5;
        }

        v25 = v23 + v24;
        v307 = v19;
        if (v25 <= 2147483650.0)
        {
          if (v25 >= -2147483650.0)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0x80000000;
          }
        }

        else
        {
          v26 = 0x7FFFFFFFLL;
        }

        v27 = 0;
        v28 = a5 + 10;
        do
        {
          if (*v22 == 2 && (*v28 || v28[1] || *(v28 + 4)))
          {
            Inc_CA_Chips(v26, v28 + 1, v28);
            GNSS_SV_Str = Get_GNSS_SV_Str(*v22);
            EvLog_v("SV_Gen_Meas: Adj GLO ZC&CP  %d  %s  dUTC %3d  Chip_Inc %6d", v27, GNSS_SV_Str, v21, v26 / 1000);
            v14 = __dst;
          }

          ++v27;
          v28 += 14;
          v22 += 9;
        }

        while (v27 != 128);
        *(v15 + 1) = v307;
        v11 = a8;
      }

      *v15 = 1;
    }
  }

  v303 = *a5;
  v290 = a5[1];
  v288 = *(a5 + 1);
  memcpy(v14, a5 + 1802, 0x1200uLL);
  v30 = a5 + 10;
  v282 = __dst + 4608;
  memcpy(__dst + 4608, a5 + 10, 0x1C00uLL);
  v31 = __dst;
  __dst[11788] = *v15;
  *(__dst + 1472) = *(a5 + 27);
  *(__dst + 2946) = *(a5 + 35);
  v32 = __dst + 8;
  v33 = 128;
  do
  {
    if (*(v32 - 8) == 2)
    {
      v34 = *(v11 + 17424 + 4 * *(v32 - 5) + 28);
      if (v34 == 2139062143)
      {
        *(v32 - 6) = 0;
        if ((*v32 & 0x200) != 0)
        {
          *v32 &= 0xFCFFu;
        }
      }

      else
      {
        *(v32 - 6) = v34;
      }
    }

    v32 += 36;
    --v33;
  }

  while (v33);
  v35 = 0;
  v36 = v11 + 50616;
  v308 = v11 + 50834;
  v37 = 128;
  do
  {
    v38 = *&v31[v35];
    if (v38)
    {
      v39 = &v31[v35];
      if ((*&v31[v35 + 8] & 0x200) != 0)
      {
        v40 = *&v31[v35];
        if (v40 <= 3)
        {
          if (v40 == 1)
          {
            if (*(a6 + 35))
            {
              goto LABEL_64;
            }
          }

          else if (v40 == 2)
          {
            if (*(a6 + 36))
            {
              goto LABEL_64;
            }
          }

          else if (v40 == 3 && (*(a6 + 40) & 1) != 0)
          {
LABEL_64:
            v44 = *(v39 + 4) & 0xFCFF | 0x100;
            *(v39 + 4) = v44;
            LOWORD(a5[v35 / 4 + 1804]) = v44;
            goto LABEL_65;
          }
        }

        else if (*&v31[v35] > 5u)
        {
          if (v40 == 6)
          {
            if (*(a6 + 41))
            {
              goto LABEL_64;
            }
          }

          else if (v40 == 7 && (*(a6 + 38) & 1) != 0)
          {
            goto LABEL_64;
          }
        }

        else if (v40 == 4)
        {
          if (*(a6 + 39))
          {
            goto LABEL_64;
          }
        }

        else if (v40 == 5 && (*(a6 + 37) & 1) != 0)
        {
          goto LABEL_64;
        }

        v41 = Is_Legal(*&v31[v35]);
        v31 = __dst;
        if (!v41)
        {
          goto LABEL_65;
        }

        v42 = GNSS_Id_To_Num_Prn_Idx(v38);
        v31 = __dst;
        v43 = __dst[v35 + 1];
        if (v43 <= 0xF && ((1 << v43) & 0xDD77) != 0)
        {
          if (*(v36 + v42) != 1 || *(a6 + 265 + v42) == 1)
          {
            goto LABEL_64;
          }
        }

        else if (*(v308 + v42) != 1 || (*(a6 + 544 + v42) & 1) != 0)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_65:
    v35 += 36;
    --v37;
  }

  while (v37);
  v45 = 0;
  v46 = v31 + 8;
  memset(v319, 0, sizeof(v319));
  while (2)
  {
    v47 = *(v46 - 2);
    if (!Is_Legal(v47) || (*v46 & 8) == 0)
    {
      goto LABEL_97;
    }

    if (v47 > 3u)
    {
      if (v47 > 5u)
      {
        if (v47 == 6)
        {
          if (*(a6 + 20))
          {
            goto LABEL_97;
          }
        }

        else if (v47 != 7 || (*(a6 + 17) & 1) != 0)
        {
          goto LABEL_97;
        }
      }

      else if (v47 == 4)
      {
        if (*(a6 + 18))
        {
          goto LABEL_97;
        }
      }

      else if (v47 != 5 || (*(a6 + 16) & 1) != 0)
      {
        goto LABEL_97;
      }

LABEL_96:
      *v46 &= ~8u;
      *(v319 + v45) = 1;
      goto LABEL_97;
    }

    if (v47 > 1u)
    {
      if (v47 == 2)
      {
        if (*(a6 + 15))
        {
          goto LABEL_97;
        }
      }

      else if (v47 != 3 || (*(a6 + 19) & 1) != 0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    if (!v47)
    {
      EvCrt_Illegal_switch_case("SV_Gen_Meas", 374);
      goto LABEL_97;
    }

    if ((*(a6 + 14) & 1) == 0)
    {
      goto LABEL_96;
    }

LABEL_97:
    ++v45;
    v46 += 18;
    if (v45 != 128)
    {
      continue;
    }

    break;
  }

  if (*(a6 + 42) == 1)
  {
    v48 = 0;
    v49 = __dst + 8;
    do
    {
      v50 = *(v49 - 2);
      if (Is_Legal(v50))
      {
        v51 = BYTE1(v50) > 0xFu || ((1 << SBYTE1(v50)) & 0xE6CC) == 0;
        if (v51 && (*v49 & 8) != 0)
        {
          *v49 &= ~8u;
          *(v319 + v48) = 1;
        }
      }

      ++v48;
      v49 += 36;
    }

    while (v48 != 128);
  }

  if ((*(a6 + 43) & 1) == 0)
  {
    v125 = 0;
    v126 = __dst + 8;
    do
    {
      v127 = *(v126 - 2);
      if (Is_Legal(v127))
      {
        v128 = BYTE1(v127) > 0xFu || ((1 << SBYTE1(v127)) & 0xDD77) == 0;
        if (v128 && (*v126 & 8) != 0)
        {
          *v126 &= ~8u;
          *(v319 + v125) = 1;
        }
      }

      ++v125;
      v126 += 36;
    }

    while (v125 != 128);
  }

  v52 = 0;
  v53 = __dst + 8;
  do
  {
    v54 = *(v53 - 2);
    v55 = Is_Legal(v54) && v54 == 4;
    if (v55 && BYTE2(v54) - 59 <= 0xFFFFFFCA && (*v53 & 8) != 0)
    {
      *v53 &= ~8u;
      *(v319 + v52) = 1;
    }

    ++v52;
    v53 += 36;
  }

  while (v52 != 128);
  v56 = 0;
  v57 = __dst + 4;
  v58 = 128;
  do
  {
    if (Is_Legal(*(v57 - 1)) && (*(v57 + 2) & 8) != 0 && *v57 > v56)
    {
      v56 = *v57;
    }

    v57 += 36;
    --v58;
  }

  while (v58);
  GM_CA_Jammer_Protection(0, *a5, v282, __dst, v319, a11);
  GM_CA_Jammer_Protection(4u, *a5, v282, __dst, v319, a11);
  GM_CA_Jammer_Protection(3u, *a5, v282, __dst, v319, a11);
  v280 = v56;
  if (v56 > 0x1Du)
  {
    v59 = 0;
    v60 = (v56 - 21);
    v61 = (v56 - 24);
    v62 = __dst;
    do
    {
      v63 = *v62;
      if (!Is_Legal(*v62) || (*(v62 + 4) & 8) == 0 || (*(v319 + v59) & 1) != 0 || v62[4] >= v60)
      {
        goto LABEL_143;
      }

      switch(v63)
      {
        case 5u:
          goto LABEL_135;
        case 4u:
          goto LABEL_137;
        case 1u:
LABEL_135:
          if (BYTE1(v63))
          {
            if (v63 == 4)
            {
LABEL_137:
              if (BYTE1(v63) != 12 || BYTE2(v63) - 6 > 0x34 || !GM_CrossCorr_Protection(4, v61, v62, v30, a7))
              {
                break;
              }

LABEL_142:
              *(v319 + v59) = 1;
              v64 = Get_GNSS_SV_Str(*v62);
              EvVrb_v("SV_Gen_Meas: Cross-Corr, Rej !  %d  %s  SNR %d  Thr %d %d", v59, v64, v62[4], v60, v61);
            }
          }

          else if (GM_CrossCorr_Protection(7, v61, v62, v30, a7))
          {
            goto LABEL_142;
          }

          break;
      }

LABEL_143:
      ++v59;
      v30 += 14;
      v62 += 36;
    }

    while (v59 != 128);
  }

  *v306 = *a9;
  v306[56] = *(a9 + 4);
  v306[4] = *(a9 + 16);
  v65 = *(a9 + 24);
  v66 = __dst;
  *(__dst + 2247) = v65;
  *(__dst + 2248) = *(a9 + 8);
  *(v306 + 3) = *(a9 + 32);
  v279 = (v306 + 6);
  *(__dst + 2243) = *(a9 + 40);
  v67 = *(a9 + 48);
  *(v306 + 4) = *(a9 + 76);
  v68 = *(a9 + 82);
  *(v306 + 12) = *(a9 + 84);
  *(v306 + 10) = v68;
  v283 = (v306 + 24);
  v306[22] = *(a9 + 80);
  *(__dst + 2246) = *(a9 + 88);
  *(__dst + 2250) = v67 + *(a9 + 56) * ((v303 - v65) * 0.001);
  v287 = __dst + 11792;
  v69 = -6144;
  do
  {
    v70 = &__dst[v69];
    *(v70 + 1122) = 0uLL;
    *(v70 + 1121) = 0uLL;
    *&__dst[v69 + 17966] = 0uLL;
    v69 += 48;
  }

  while (v69);
  v71 = 0;
  v309 = 0;
  v72 = __dst;
  v73 = __dst + 11792;
  while (2)
  {
    v74 = *v72;
    if (*v72)
    {
      v75 = v74 == 7;
    }

    else
    {
      v75 = 1;
    }

    if (!v75)
    {
      if (v72[2])
      {
        v76 = *(a7 + 5976 + GNSS_Id_To_Num_Prn_Idx(*v72));
        if ((v76 & 0x8000000000000000) == 0)
        {
          v77 = (a7 + 72 + 48 * v76);
          v78 = v77[2];
          v79 = *v77;
          *(v73 + 1) = v77[1];
          *(v73 + 2) = v78;
          *v73 = v79;
          v66 = __dst;
          if (v73[4] == 1)
          {
            v309 |= v73[15];
          }

          goto LABEL_152;
        }
      }

      else
      {
        if (v74 == 2)
        {
          goto LABEL_152;
        }

        EvCrt_v("SV_Gen_Meas:  %d  SVid zero for non-GLONASS constelation %d ", v71, v74);
      }

      v66 = __dst;
    }

LABEL_152:
    ++v71;
    v73 += 48;
    v72 += 36;
    if (v71 != 128)
    {
      continue;
    }

    break;
  }

  *(v66 + 18492) = 0u;
  *(v66 + 18508) = 0u;
  *(v66 + 18460) = 0u;
  *(v66 + 18476) = 0u;
  *(v66 + 18428) = 0u;
  *(v66 + 18444) = 0u;
  *(v66 + 18396) = 0u;
  *(v66 + 18412) = 0u;
  *(v66 + 18364) = 0u;
  *(v66 + 18380) = 0u;
  *(v66 + 18332) = 0u;
  *(v66 + 18348) = 0u;
  *(v66 + 18300) = 0u;
  *(v66 + 18316) = 0u;
  *(v66 + 18268) = 0u;
  *(v66 + 18284) = 0u;
  *(v66 + 18236) = 0u;
  *(v66 + 18252) = 0u;
  *(v66 + 18204) = 0u;
  *(v66 + 18220) = 0u;
  *(v66 + 18172) = 0u;
  *(v66 + 18188) = 0u;
  *(v66 + 18140) = 0u;
  *(v66 + 18156) = 0u;
  *(v66 + 18108) = 0u;
  *(v66 + 18124) = 0u;
  *(v66 + 18076) = 0u;
  *(v66 + 18092) = 0u;
  *(v66 + 18044) = 0u;
  *(v66 + 18060) = 0u;
  *(v66 + 18012) = 0u;
  *(v66 + 18028) = 0u;
  v278 = (v66 + 18012);
  bzero(v66 + 18528, 0x1000uLL);
  GM_Inc_Local_Time(v303, __dst);
  v80 = __dst;
  *(v306 + 11) = v290;
  *(__dst + 2248) = v288;
  v81 = *(__dst + 2250);
  if (fabs(v81) > 0.0005001)
  {
    *(a1 + 4) = 1;
  }

  if (v306[4] == 1 && *(a1 + 4) == 1)
  {
    v82 = v81 * 1000.0;
    v83 = -0.5;
    if (v82 > 0.0)
    {
      v83 = 0.5;
    }

    v84 = v82 + v83;
    if (v84 <= 2147483650.0)
    {
      if (v84 >= -2147483650.0)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0x80000000;
      }
    }

    else
    {
      v85 = 0x7FFFFFFF;
    }

    Inc_Local_Time(-v85, 86400, __dst + 2246, v283);
    v141 = *(v306 + 12);
    v142 = *(v306 + 10);
    if (v141 >= 1462)
    {
      v143 = v141 - 2922;
      if (*(v306 + 12) < 0xB6Au)
      {
        v143 = 0;
      }

      v141 = v141 - 1461 * ((v143 + 1460) / 0x5B5u) - 1461;
      v142 += (v143 + 1460) / 0x5B5u + 1;
      *(v306 + 12) = v141;
      *(v306 + 10) = v142;
    }

    if (v141 <= 0)
    {
      if (v141 <= -1460)
      {
        v147 = -1460;
      }

      else
      {
        v147 = v141;
      }

      v148 = (v147 - v141 - (v141 < -1460)) / 0x5B5u;
      if (v141 < -1460)
      {
        ++v148;
      }

      v149 = v142 + ~v148;
      *(v306 + 12) = v141 + 1461 * v148 + 1461;
      *(v306 + 10) = v149;
      if (v149 < 0)
      {
        goto LABEL_287;
      }
    }

    else
    {
      if ((v142 & 0x8000) == 0)
      {
        goto LABEL_274;
      }

LABEL_287:
      *(v306 + 10) = 0;
    }

LABEL_274:
    GM_Apply_LT_Slew(__dst + 2250, v279, __dst + 2243, (a1 + 4));
    v80 = __dst;
    if (*(a1 + 5) == 1)
    {
      v144 = *(a1 + 6);
      if (*(a1 + 6))
      {
        v145 = 0;
        v146 = a1 + 1040;
        do
        {
          if (*(v146 + v145) == 1)
          {
            *(v146 + 4 * v145 - 1024) -= *(v146 + 4 * v145 - 512) * v144;
          }

          ++v145;
        }

        while (v145 != 128);
      }
    }
  }

  else
  {
    *(a1 + 6) = 0;
    *(a1 + 5) = 0;
  }

  v299 = (a7 + 72);
  Min_SNR = GM_Get_Min_SNR(v80, 128);
  GM_Prop_AAD(*(v306 + 10), 128, v287);
  v87 = __dst;
  if (v306[4] == 1 && *v306 >= 7 && *(a4 + 1) == 1 && *(a4 + 12) == 3)
  {
    for (i = 0; i != 128; ++i)
    {
      v89 = &v87[9 * i];
      v90 = GM_Gen_SV_Meas_QI(v89);
      v91 = *(v89 + 4);
      v92 = *v89;
      v93 = Is_Legal(*v89);
      v87 = __dst;
      if (v93 && v90 >= 8 && (v91 & 0x300u) >= 0x200)
      {
        v95 = &v287[48 * i];
        if (v95[4] == 1 && v95[15] == 1)
        {
          v96 = &v282[56 * i];
          v97 = *v96;
          LODWORD(v96) = (2149582851 * *(v96 + 1)) >> 32;
          v98 = ((v96 >> 9) + (v96 >> 31) + 1500 * v97) * 0.001;
          v99 = *(__dst + 2243);
          v100 = v99 - v98;
          if (v92 == 2)
          {
            while (v100 >= 43200.0)
            {
              v98 = v98 + 86400.0;
              v100 = v99 - v98;
            }

            while (v100 < -43200.0)
            {
              v98 = v98 + -86400.0;
              v100 = v99 - v98;
            }
          }

          if (v100 >= 302400.0)
          {
            v100 = v100 + -604800.0;
          }

          else if (v100 < -302400.0)
          {
            v100 = v100 + 604800.0;
          }

          if (fabs(v100) > 3.0)
          {
            *(v89 + 4) = v91 & 0xFCFF;
            v101 = Get_GNSS_SV_Str(v92);
            v102 = (v91 & 0x300) >> 8;
            EvLog_v("SV_Gen_Meas: SF Sync Rej !  %d  %s  SF Sync %d  d_TOW %g", i, v101, v102, v100);
            *(a11 + 448 + i) = 3;
            *(a11 + 576 + 4 * i) = *(v306 + 10);
            v103 = Get_GNSS_SV_Str(*v89);
            EvCrt_v("ChanReset %d : SVGM  %s  SNR %d  QI %d  Bad SF Sync %d  d_TOW %g", i, v103, *(v89 + 4), v90, v102, v100);
            v87 = __dst;
          }
        }
      }
    }
  }

  GM_Cross_Constell(v87, a8);
  GM_Get_Best_SyncSV(v282, __dst, v287, Min_SNR, &v317 + 1, &v317);
  Best_NSSS = GM_Get_Best_NSSS(__dst, v287, 0x80u);
  v104 = GM_Adjust_AAD(v317, Best_NSSS, v282, 128, v287);
  v105 = __dst;
  v106 = 0;
  v107 = 0;
  *(v306 + 18) = v104;
  v108 = a3 + 192;
  v109 = 11836;
  v110 = 11824;
  do
  {
    v111 = *&v105[4 * v107];
    v112 = Is_Legal(v111);
    v105 = __dst;
    if (v112)
    {
      v113 = *(v306 + 18) - *&__dst[v110] + *&__dst[v106 + 4612];
      v114 = (v113 + (v113 < 0 ? 0x176A24 : 0)) % 1023;
      if (v114 > 511)
      {
        v114 -= 1023;
      }

      v115 = (v114 + (*&__dst[v106 + 4616] - *&__dst[v109 - 8]) * 0.0000152587891) * 293.052256;
      if (BYTE1(v111) > 0xFu || ((1 << SBYTE1(v111)) & 0xDD77) == 0)
      {
        v115 = v115 + *&__dst[v109] * 0.125;
      }

      if (v115 <= 0.0)
      {
        v116 = -0.5;
      }

      else
      {
        v116 = 0.5;
      }

      v117 = v115 + v116;
      if (v117 <= 2147483650.0)
      {
        if (v117 >= -2147483650.0)
        {
          v118 = v117;
        }

        else
        {
          v118 = 0x80000000;
        }
      }

      else
      {
        v118 = 0x7FFFFFFF;
      }

      *a3 = v118;
      *(v108 - 128) = *&__dst[v106 + 4620] / 12470 - *&__dst[v109 - 22];
      *v108 = *&__dst[v106 + 4624] / 12470 - *&__dst[v109 - 22];
    }

    v107 += 9;
    v108 = (v108 + 2);
    ++a3;
    v109 += 48;
    v106 += 56;
    v110 += 48;
  }

  while (v107 != 1152);
  v316 = 0;
  v119 = *(a1 + 12);
  v120 = *(v306 + 3) > *(a9 + 32);
  if (v280)
  {
    v121 = *a6 == 0;
  }

  else
  {
    v121 = 0;
  }

  v122 = !v121;
  v123 = *v306;
  if (v119 <= 4)
  {
    v124 = v299;
    if (v119 >= 3)
    {
      v286 = 1;
      goto LABEL_236;
    }

    v286 = 0;
  }

  else
  {
    v124 = v299;
    if (v123 >= 9 && (v317 >= 0) | v122 & 1)
    {
      v286 = 2;
      goto LABEL_237;
    }

    v286 = 0;
    v306[56] = 0;
    v119 = 4;
    *(a1 + 12) = 4;
    v120 = 1;
LABEL_236:
    if (v123 < 9)
    {
LABEL_238:
      v286 = 0;
      v306[56] = 0;
      v119 = 2;
      *(a1 + 12) = 2;
      v120 = 1;
    }

    else
    {
LABEL_237:
      if (!((v317 >= 0) | v122 & 1))
      {
        goto LABEL_238;
      }
    }
  }

  if (v123 == 11)
  {
    v120 = 0;
    v306[56] = 1;
    *(a1 + 12) = 6;
    goto LABEL_336;
  }

  if (v317 < 0)
  {
    v129 = v317;
    if (v119 <= 2 && (v317 & 0x80000000) == 0)
    {
      goto LABEL_250;
    }

    if ((Best_NSSS & 0x80000000) == 0 && !v119)
    {
      goto LABEL_249;
    }
  }

  else
  {
    if (v119 >= 5)
    {
      goto LABEL_336;
    }

    v129 = v317;
LABEL_249:
    if ((v129 & 0x80000000) == 0)
    {
LABEL_250:
      v130 = v129;
      v131 = &v287[48 * v129];
      if (v131[4] == 1)
      {
        v132 = vcvtd_n_f64_u32(*(v131 + 8), 1uLL);
      }

      else
      {
        Default_PR_ms_Amb = API_Get_Default_PR_ms_Amb(*&__dst[36 * v129]);
        v105 = __dst;
        v132 = Default_PR_ms_Amb;
      }

      GM_Set_MSec_TOT_SSS(&v282[56 * v130], v132, 604800.0, *(v105 + 2243));
      v135 = *v306;
      if (*v306)
      {
LABEL_258:
        v136 = __dst;
      }

      else
      {
        if (v134 < 0.0)
        {
          v134 = v134 + 604800.0;
          goto LABEL_258;
        }

        v136 = __dst;
        if (v134 >= 604800.0)
        {
          v134 = v134 + -604800.0;
        }
      }

      v137 = (v134 - *(v136 + 2243)) * 1000.0;
      v138 = -0.5;
      if (v137 > 0.0)
      {
        v138 = 0.5;
      }

      v139 = v137 + v138;
      if (v139 <= 2147483650.0)
      {
        if (v139 >= -2147483650.0)
        {
          v140 = v139;
        }

        else
        {
          v140 = 0x80000000;
        }
      }

      else
      {
        v140 = 0x7FFFFFFF;
      }

      v316 = v140;
      *(v136 + 2243) = v134;
      if (v140 >= 0)
      {
        v150 = v140;
      }

      else
      {
        v150 = -v140;
      }

      v151 = v135 > 1 && v150 > 0xEA60;
      v152 = v151;
      if (!v151)
      {
        v156 = v306[4];
        v157 = *(a9 + 24);
        if (v309)
        {
          v160 = 8;
        }

        else
        {
          v160 = 9;
        }

        goto LABEL_317;
      }

      *(v306 + 4) = 0;
      v153 = 128;
      v154 = __dst + 11792;
      do
      {
        *(v154 + 30) = 0uLL;
        *v154 = 0uLL;
        *(v154 + 1) = 0uLL;
        v154 += 48;
        --v153;
      }

      while (v153);
      v155 = 123;
      do
      {
        *(v124 + 30) = 0uLL;
        *v124 = 0uLL;
        v124[1] = 0uLL;
        v124 += 3;
        --v155;
      }

      while (v155);
      v156 = v306[4];
      v157 = *(a9 + 24);
      if ((v156 & 1) != 0 && *(a9 + 20) != v157)
      {
        if (v140 >= 302400000)
        {
          v158 = v306 + 6;
          v159 = *v279 - 1;
          goto LABEL_315;
        }

        if (v140 <= -302400001)
        {
          v158 = v306 + 6;
          v159 = *v279 + 1;
LABEL_315:
          *v158 = v159;
        }
      }

      v160 = 9;
LABEL_317:
      EvLog_v("GLO_TIM: SV_Gen_Meas GPS set %g   TOW_adjust %d ms   WeekNo %d %d %d", *(v136 + 2243), v140, v156, *(a9 + 20) != v157, *(v306 + 3));
      v161 = v317;
      if (v287[48 * v317 + 4])
      {
        v162 = 9;
      }

      else
      {
        v162 = v160;
      }

      *v306 = v162;
      if (__dst[36 * v161] == 2)
      {
        *&v320[0] = 0;
        API_Get_UTC_Cor(1, v320);
        v163 = -86400.0;
        v164 = *(__dst + 2243) + floor(*(__dst + 2243) / 86400.0) * -86400.0 + 10800.0 - *v320;
        *(__dst + 2246) = v164;
        if (v164 >= 86400.0 || (v163 = 86400.0, v164 < 0.0))
        {
          v164 = v164 + v163;
          *(__dst + 2246) = v164;
        }

        if (*(v306 + 4) < *v306 && (*(a8 + 8972) - 2) <= 4)
        {
          *(v306 + 4) = *v306;
        }

        EvLog_v("GLO_TIM: SV_Gen_Meas GPS->Glon set Glon_TOD  %g", v164);
        v162 = *v306;
      }

      if (v162 == 9)
      {
        if ((v317 & 0x8000000000000000) == 0 && HIDWORD(v317) == v317)
        {
          *(a1 + 12) = 5;
          v120 = 1;
          v306[56] = 1;
          v286 = 2;
          goto LABEL_336;
        }

        *(a1 + 12) = 3;
        v306[56] = 0;
        v286 = 1;
      }

      else if ((v152 & 1) == 0)
      {
        GM_Prop_AAD((*(v306 + 10) + v140), 128, v287);
        v316 = 0;
      }

      v120 = 1;
      goto LABEL_336;
    }

    v120 = 1;
    if ((Best_NSSS & 0x80000000) == 0)
    {
      GM_Set_MSec_TOW_NSSS(&v282[56 * Best_NSSS], &v287[48 * Best_NSSS], __dst + 2243, &v316, 604800.0);
      v306[56] = 0;
      *(a1 + 12) = 1;
    }
  }

LABEL_336:
  if (v306[4] == 1 && *v306 >= 1 && *v306 >= *(v306 + 4))
  {
    LODWORD(v318[0]) = 0;
    LODWORD(v313) = 0;
    *&v320[0] = 0;
    API_Get_UTC_Cor(1, v320);
    GPS_To_Glon_Time(0, *(v306 + 3), *(__dst + 2243), *v320, &v313, v318, __dst + 2246);
    v165 = LOWORD(v318[0]);
    if (v306[22] != 1 || LODWORD(v318[0]) != *v283)
    {
      if (g_Logging_Cfg >= 4)
      {
        EvLog_v("SV_Gen_Meas: GPS_GLO %d %d ", *v283, LODWORD(v318[0]));
      }

      *(v306 + 10) = LOWORD(v313);
      *(v306 + 12) = v165;
      v306[22] = 1;
    }

    if (*(v306 + 4) < *v306 && (*(a8 + 8972) - 2) <= 4)
    {
      *(v306 + 4) = *v306;
    }
  }

  v277 = v120;
  v289 = v303 - *a1;
  v315 = 0;
  v314 = 0;
  v312 = 0;
  v313 = 0.0;
  Pos_LLH = Core_Get_Pos_LLH(*(v306 + 10), 150000, 0, &v314, v320, v318, &v313, &v315 + 1, &v315, &v312, &v312 + 1);
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v284 = 0;
  if ((HIDWORD(v312) - 3) < 2)
  {
    v170 = Pos_LLH;
  }

  else
  {
    v170 = 0;
  }

  v275 = v170;
  memset(v320, 0, sizeof(v320));
  v274 = a11 + 576;
  v276 = a1 + 1040;
  v171 = 18528;
  v172 = 18012;
  v310 = 11792;
  v173 = 11814;
  v174 = 11796;
  v175 = 4608;
  v176 = __dst;
  while (2)
  {
    v177 = &v176[v167];
    if (v176[v167] == 7)
    {
      v178 = 5;
      goto LABEL_389;
    }

    if (*(v319 + v169))
    {
      v178 = 8;
      goto LABEL_389;
    }

    v179 = v174;
    v180 = v173;
    v178 = GM_Gen_SV_Meas_QI(&v176[v167]);
    if (v178 < 0xB)
    {
      goto LABEL_387;
    }

    v176 = __dst;
    v173 = v180;
    v174 = v179;
    if (*(a6 + 52) <= 4u && __dst[v179] == 1 && ((v275 & 1) != 0 || *a6 == 1))
    {
      v181 = *&__dst[v168 + 4620];
      v182 = *&__dst[v168 + 4624];
      v183 = *&__dst[v180];
      LODWORD(v184) = *&__dst[v180 - 4];
      v185 = __dst[v167 + 1];
      if (v185 <= 0xF && ((1 << v185) & 0xDD77) != 0)
      {
        if (((1 << v185) & 0xBBBF) != 0)
        {
          v186 = v182 / 12470;
          v187 = v181 / 12470;
        }

        else
        {
          v187 = v181 / 16275;
          v186 = v182 / 16275;
          v183 = 118 * v183 / 154;
          v184 = (27889399 * (118 * v184)) >> 32;
        }
      }

      else
      {
        v187 = v181 / 16700;
        v186 = v182 / 16700;
        v183 = 115 * v183 / 154;
        v184 = (27889399 * (115 * v184)) >> 32;
      }

      v174 = v179;
      v188 = (3 * v184) <= 0x226 ? 550 : 3 * v184;
      v189 = v182 ? v187 - v186 : 0;
      v190 = *(a6 + 1852) ? v189 : 0;
      v191 = v190 >= 0 ? v190 : -v190;
      v192 = v191 <= v188 && v187 <= (v188 + v183);
      if (!v192 || v187 < (v183 - v188))
      {
        v272 = v190;
        v273 = v188;
        v291 = v186;
        v294 = v187;
        v300 = v184;
        if (Is_Legal(*v177))
        {
          *(a11 + v169 + 448) = 5;
          *(v274 + 4 * v169) = *(v306 + 10);
          v194 = Get_GNSS_SV_Str(*&__dst[v167]);
          EvCrt_v("ChanReset %d : SVGM  %s   Dopp %d %d %d   AA %d %d %d   SNR %d  JNR %d", v169, v194, v294, v291, v272, v183, v300, v273, __dst[v167 + 4], __dst[v167 + 5]);
          v176 = __dst;
          v178 = 4;
LABEL_388:
          v173 = v180;
          v174 = v179;
          goto LABEL_389;
        }

        v178 = 4;
LABEL_387:
        v176 = __dst;
        goto LABEL_388;
      }
    }

LABEL_389:
    v195 = &v176[v168];
    v196 = *(v177 + 4) & 0x308;
    LOBYTE(v197) = v196 == 776;
    *(v320 + v169) = v196 == 776;
    v318[0] = 0.0;
    v198 = &v176[v171];
    *(v198 + 128) = vcvtd_n_f64_s32(*&v176[v168 + 4620], 0x10uLL);
    *(v198 + 256) = vcvtd_n_f64_s32(*&v176[v168 + 4624], 0x10uLL);
    v199 = 0.0;
    if (!*v177 || *v177 == 7)
    {
      goto LABEL_391;
    }

    v304 = v174;
    if (v178 >= 0xB)
    {
      v301 = v178;
      v292 = v173;
      v200 = *(v176 + 2243);
      if (v196 == 776)
      {
        v201 = 1;
        goto LABEL_403;
      }

      if (GM_Aid_NSSS_Meas(&v176[v310], 3u, &v176[v175]) & 1) != 0 || (Best_NSSS & 0x80000000) == 0 && *(a1 + 12) >= 1 && (GM_Aid_NSSS_Meas(&__dst[v310], 0, &__dst[v175]))
      {
        v201 = 1;
        v176 = __dst;
        goto LABEL_403;
      }

      v176 = __dst;
      if ((*(v177 + 4) & 0x308) == 0x208)
      {
        v201 = 0;
LABEL_403:
        v203 = *(v195 + 1152);
        v204 = v176;
        v205 = Comp_Sig_TOT(v203, *&v176[v168 + 4612], *&v176[v168 + 4616], v200, 604800.0);
        *(v320 + v169) = v201;
        v197 = v201;
        if (v205 < -1.0)
        {
          v176 = v204;
          goto LABEL_405;
        }

        v199 = (*(v204 + 2243) - v205) * 299792458.0;
        v318[0] = v199;
        if (fabs(v199) >= 2130706430.0)
        {
          v206 = 2130706432;
        }

        else
        {
          v206 = v199;
        }

        v176 = v204;
        v173 = v292;
        if (*v177 - 4 > 2)
        {
          v209 = 40000000;
          v208 = 5000000;
        }

        else
        {
          v207 = (*v177 - 4);
          v208 = dword_299050030[v207];
          v209 = dword_29905003C[v207];
        }

        v295 = v197;
        if (v197 && v286 && (v306[4] & 1) != 0 && (v206 >= v208 ? (v210 = v206 <= v209) : (v210 = 0), !v210))
        {
          v318[0] = 0.0;
          v199 = 0.0;
          ++v284;
          if ((v317 & 0x80000000) != 0 || v287[48 * v317 + 4] != 1)
          {
            v178 = 6;
          }

          else
          {
            if (Is_Legal(*v177))
            {
              *(a11 + v169 + 448) = 11;
              *(v274 + 4 * v169) = *(v306 + 10);
              v211 = Get_GNSS_SV_Str(*&__dst[v167]);
              EvCrt_v("ChanReset %d : SVGM  %s  SNR %d  QI %d  Sync %d %d  PR %d  iBest %d %d %d", v169, v211, __dst[v167 + 4], 6, v295, v286, v206, HIDWORD(v317), v317, Best_NSSS);
            }

            v178 = 6;
            v176 = __dst;
            v173 = v292;
          }
        }

        else if (v206 >= v208 && v206 <= v209)
        {
          v178 = v301;
        }

        else
        {
          v213 = Get_GNSS_SV_Str(*&v204[v167]);
          EvCrt_v("SV_Gen_Meas: QI_REJECTED4  %d  %s  SNR %d  QI %d  Sync %d %d  PR %d  iBest %d %d %d", v169, v213, v204[v167 + 4], v301, v295, v286, v206, HIDWORD(v317), v317, Best_NSSS);
          v173 = v292;
          v176 = __dst;
          ++v284;
          v318[0] = 0.0;
          v178 = 7;
          v199 = 0.0;
        }

        v214 = *v177;
        if (v214 == 5)
        {
          v215 = 20000000;
          v216 = 50000000;
          LOBYTE(v197) = v295;
        }

        else
        {
          v215 = 18000000;
          v216 = 50000000;
          LOBYTE(v197) = v295;
          if (v214 != 4)
          {
            v216 = 27000000;
          }
        }

        if (v306[4] == 1 && *v306 >= 9)
        {
          v217 = v206 >= v215 && v206 <= v216;
          v174 = v304;
          if (!v217)
          {
            *(a1 + 4) = 1;
          }
        }

        else
        {
          v174 = v304;
        }
      }

      else
      {
        LOBYTE(v197) = 0;
        LOWORD(v202) = *&__dst[v168 + 4616];
        v199 = ((1023 * (*&__dst[v168 + 4612] / 1023) - *&__dst[v168 + 4612] + 1023) + v202 * -0.0000152587891) * 293.052256;
        v318[0] = v199;
        *(v320 + v169) = 0;
LABEL_405:
        v173 = v292;
        v178 = v301;
        v174 = v304;
      }
    }

    if (v289 > *&v176[v167 + 14])
    {
      *(a1 + v169 + 1040) = 0;
    }

    if (v178 < 0xF)
    {
      if (v178 >= 0xB)
      {
        if ((v197 & 1) == 0)
        {
          goto LABEL_456;
        }

        goto LABEL_449;
      }

LABEL_391:
      *&v176[v172] = v178;
      *&v176[v171] = v199;
      if (v178 <= 1)
      {
        *(v198 + 128) = 0;
        *(v198 + 256) = 0;
      }
    }

    else
    {
      v296 = v197;
      v302 = v178;
      v218 = v173;
      v219 = *&v176[v168 + 4632];
      v220 = &v176[v171];
      *&v176[v171 + 3072] = v219;
      SV_Carrier_Freq_I4 = Get_SV_Carrier_Freq_I4(*v177);
      v222 = 299792458.0 / SV_Carrier_Freq_I4;
      if (*(a1 + v169 + 1040) == 1)
      {
        v223 = *(a1 + 4 * v169 + 16);
      }

      else
      {
        v229 = v199 + 8993773.74;
        if (v199 > 329771.704)
        {
          v229 = v199;
        }

        v223 = ((v229 - v219) / v222);
        v230 = a1 + 4 * v169;
        *(v230 + 16) = v223;
        *(v230 + 528) = SV_Carrier_Freq_I4 / 1000;
        *(a1 + v169 + 1040) = 1;
      }

      v173 = v218;
      v178 = v302;
      v174 = v304;
      *(v220 + 384) = v219 + v223 * v222;
      v176 = __dst;
      if ((v296 & 1) == 0)
      {
LABEL_456:
        v228 = 10;
        goto LABEL_457;
      }

LABEL_449:
      v313 = 0.0;
      v224 = v178;
      v225 = v173;
      v226 = v174;
      v227 = R8_EQ(v318, &v313);
      v174 = v226;
      v173 = v225;
      v176 = __dst;
      if (v227)
      {
        v228 = 9;
      }

      else
      {
        v228 = v224;
      }

LABEL_457:
      *&v176[v172] = v228;
      *&v176[v171] = v199;
    }

    if (*(v319 + v169) == 1)
    {
      *(v177 + 4) |= 8u;
    }

    ++v169;
    v171 += 8;
    v172 += 4;
    v310 += 48;
    v173 += 48;
    v174 += 48;
    v168 += 56;
    v167 += 36;
    v175 += 56;
    if (v169 != 128)
    {
      continue;
    }

    break;
  }

  v231 = v176;
  GM_Reject_Rep_SV(v176, 0x80u, v278);
  GM_Conv_Lock_Units(128, v231, v282);
  GM_Cross_Check_Meas_Aiding(v231);
  v232 = 0;
  v233 = a10;
  v234 = v277;
  do
  {
    if (v278[v232] > 14)
    {
      if ((*(v320 + v232) & 1) == 0)
      {
        v236 = a1 + 4 * v232;
        *(v236 + 16) = 0;
        *(v236 + 528) = 0;
        *(v276 + v232) = 0;
        v278[v232] = 15;
      }
    }

    else
    {
      v235 = a1 + 4 * v232;
      *(v235 + 16) = 0;
      *(v235 + 528) = 0;
      *(v276 + v232) = 0;
    }

    ++v232;
  }

  while (v232 != 128);
  v237 = *v306;
  if (v284 <= 2)
  {
    v238 = __dst;
  }

  else
  {
    v238 = __dst;
    if (v237 >= 4)
    {
      v237 = 3;
      *v306 = 3;
      v234 = 1;
    }

    *(a1 + 12) = 0;
    *(a1 + 4) = 1;
  }

  v239 = *(v238 + 2247);
  *(a9 + 24) = v239;
  v240 = *(v238 + 2248);
  *(a9 + 8) = v240;
  v241 = *(v306 + 3);
  *(a9 + 32) = v241;
  v242 = *(v238 + 2243);
  *(a9 + 40) = v242;
  v243 = *(v238 + 2250);
  *(a9 + 48) = v243;
  *a9 = v237;
  v244 = v306[56];
  *(a9 + 4) = v244;
  v245 = v306[4];
  *(a9 + 16) = v245;
  *(a9 + 76) = *(v306 + 4);
  *(a9 + 80) = v306[22];
  *(a9 + 82) = *(v306 + 10);
  *(a9 + 84) = *(v306 + 12);
  *(a9 + 88) = *(v238 + 2246);
  if (v234 && v237 >= 7)
  {
    Core_Save_ApxTime(v245, v237, v241, SHIDWORD(v239), v242);
    v238 = __dst;
    v233 = a10;
    v239 = *(__dst + 2247);
    v240 = *(__dst + 2248);
    v237 = *v306;
    LOBYTE(v245) = v306[4];
    v241 = *(v306 + 3);
    v244 = v306[56];
    v242 = *(__dst + 2243);
    v243 = *(__dst + 2250);
  }

  *v233 = v239;
  *(v233 + 1) = v240;
  *(v233 + 4) = v237;
  *(v233 + 22) = v245;
  *(v233 + 12) = v241;
  *(v233 + 20) = v244;
  *(v233 + 4) = v242;
  *(v233 + 5) = v243;
  if (v316)
  {
    *(v233 + 12) += v316;
  }

  if (*(a1 + 5) == 1)
  {
    *(v233 + 13) = *(a1 + 6);
  }

  v246 = 0;
  v247 = 0;
  *(v233 + 21) = v286;
  *(v233 + 14) = *(v306 + 4);
  *(v233 + 60) = v306[22];
  *(v233 + 31) = *(v306 + 10);
  *(v233 + 32) = *(v306 + 12);
  *(v233 + 9) = *(v238 + 2246);
  *(v233 + 10) = *(v238 + 1472);
  *(v233 + 22) = *(v238 + 2946);
  *(v233 + 92) = v280;
  v248 = v233 + 6;
  v249 = 7520;
  v250 = 4640;
  v251 = 4653;
  v252 = 8416;
  v253 = 7776;
  do
  {
    v254 = &v238[v246];
    *(v233 + v247 + 24) = *&v238[v246];
    if (v238[v246 + 1] - 2 > 0xC)
    {
      v255 = 0;
    }

    else
    {
      v255 = byte_299050048[(v238[v246 + 1] - 2)];
    }

    v256 = v233 + v247;
    v256[608] = v255;
    v256[864] = v254[6];
    v257 = v233 + v247;
    v257[496] = *(v254 + 4);
    v256[1760] = v254[4];
    v256[1888] = v254[18];
    v256[2016] = v254[5];
    v256[2144] = v254[19];
    v257[1456] = *(v254 + 7);
    v257[1200] = *(v254 + 5);
    v257[1328] = *(v254 + 6);
    v258 = v233 + v253;
    *v258 = v254[7];
    *(v233 + v252) = *(v254 + 6);
    v259 = (v233 + v249);
    v259[704] = *(v254 + 10);
    v258[1408] = v254[22];
    v256[2272] = v238[v251 - 3];
    v257[1584] = *&v238[v250 + 6];
    v258[128] = v238[v251 - 2];
    v258[256] = v238[v251 - 1];
    v259[320] = v238[v251];
    v259[896] = *&v238[v250];
    v259[1024] = *&v238[v250 + 2];
    v259[1152] = *&v238[v250 + 4];
    if (*&v238[v250 + 8])
    {
      *(v233 + v249) = *&v238[v250 + 8];
    }

    ++v247;
    v249 += 2;
    v250 += 56;
    v251 += 56;
    v252 += 4;
    ++v253;
    v246 += 36;
  }

  while (v247 != 128);
  v260 = (v233 + 78);
  v261 = v238;
  memcpy(v233 + 78, v278, 0x200uLL);
  memcpy(a10 + 214, v261 + 18528, 0x400uLL);
  memcpy(a10 + 278, v261 + 19552, 0x400uLL);
  memcpy(a10 + 342, v261 + 20576, 0x400uLL);
  memcpy(a10 + 406, v261 + 21600, 0x400uLL);
  v262 = 0;
  v263 = 0;
  *&v264 = -1;
  *(&v264 + 1) = -1;
  a10[46] = v264;
  a10[47] = v264;
  a10[48] = v264;
  a10[49] = v264;
  a10[50] = v264;
  a10[51] = v264;
  a10[52] = v264;
  a10[53] = v264;
  while (2)
  {
    if (v263 <= 0x7E)
    {
      v265 = 126;
    }

    else
    {
      v265 = v263;
    }

    v266 = *(v248 + v263);
    result = Is_Legal(v266);
    if (!result || v260[v263] < 10 || (v266 <= 7u ? (v268 = ((1 << v266) & 0xC5) == 0) : (v268 = 1), !v268))
    {
LABEL_500:
      ++v263;
      v262 += 4;
      if (v263 == 128)
      {
        goto LABEL_511;
      }

      continue;
    }

    break;
  }

  if (v263 != 127)
  {
    v269 = v262;
    v270 = v263;
    do
    {
      v271 = v270 + 1;
      if (*(a10 + v270 + 737) == 255 && *(a10 + v269 + 102) == BYTE2(v266) && *(a10 + v269 + 100) == v266 && *(a10 + v270 + 313) >= 10)
      {
        *(a10 + v263 + 736) = v271;
        *(a10 + v270 + 737) = v263;
      }

      v269 += 4;
      ++v270;
    }

    while (v265 + 1 != v271);
    goto LABEL_500;
  }

LABEL_511:
  *a1 = *(v306 + 10);
  return result;
}

void GM_CA_Jammer_Protection(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v55[758] = *MEMORY[0x29EDCA608];
  bzero(v53, 0x300uLL);
  v10 = 12470;
  if (a1 <= 0xF)
  {
    if (((1 << a1) & 0xEFE6) != 0)
    {

      EvCrt_Illegal_switch_case("GM_CA_Jammer_Protection", 2158);
      return;
    }

    if (a1 == 4)
    {
      v11 = 12264;
    }

    else
    {
      v11 = 12470;
    }

    if (a1 == 3)
    {
      v10 = 16700;
    }

    else
    {
      v10 = v11;
    }
  }

  bzero(v51, 0x320uLL);
  v12 = 0;
  v13 = 0;
  v14 = (a3 + 12);
  v15 = (a4 + 8);
  do
  {
    v16 = *(v15 - 2);
    if (!v16 || a1 != BYTE1(v16) || (*v15 & 8) == 0)
    {
      goto LABEL_35;
    }

    v17 = *(v15 - 2);
    v18 = a1 != 3 || v17 == 6;
    v19 = v18;
    if (v17 == 7 || !v19)
    {
      goto LABEL_35;
    }

    v21 = (v16 >> 22) & 0xFFFFFFFC;
    if (v17 != 2)
    {
      v21 = 0;
    }

    v22 = *v14 / (v10 - v21);
    v23 = v22 % 1000 + (v22 % 1000 < 0 ? 0x3E8 : 0);
    v24 = v23 / 5uLL;
    ++v51[v24];
    if (v23 <= 4)
    {
      ++v52;
LABEL_32:
      ++v51[(v24 + 1)];
      goto LABEL_33;
    }

    ++v51[(v24 - 1)];
    if (v23 - 995 > 4)
    {
      goto LABEL_32;
    }

    ++v51[0];
LABEL_33:
    v25 = &v53[12 * v13];
    *v25 = v12;
    *(v25 + 2) = v22;
    *(v25 + 3) = v23;
    v25[3] = v24;
    v26 = v13 + 1;
    if (v13 >= 63)
    {
      EvCrt_v("GM_CA_Jammer_Protection:  WARNING:  num_Dopplers >= DOPPLER_STORE_SIZE,  %d >= %d", v26, 64);
      v13 = v26;
      goto LABEL_37;
    }

    ++v13;
LABEL_35:
    ++v12;
    v14 += 14;
    v15 += 18;
  }

  while (v12 != 128);
  if (v13 < 6)
  {
    return;
  }

LABEL_37:
  v27 = 0;
  v28 = 0;
  v29 = v13;
  while (2)
  {
    v30 = v51[v27];
    if (v30 >= 6)
    {
      v31 = 5 * v27;
      EvCrt_v("GM_CA_Jammer_Protection:  Jammer detected at Doppler % 1000Hz = %d   count %d", (5 * v27), v30);
      v32 = v55;
      for (i = v29; i; --i)
      {
        v34 = *(v32 - 2) - v31;
        v35 = v34 + 1000;
        if (v34 >= -500)
        {
          v35 = *(v32 - 2) - v31;
        }

        if (v34 <= 499)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34 - 1000;
        }

        if (v36 >= 0)
        {
          v37 = v36;
        }

        else
        {
          v37 = -v36;
        }

        if (v37 > 0xA)
        {
          goto LABEL_56;
        }

        if (*(v32 - 4))
        {
          v38 = *v32;
          if (v38 < 0)
          {
            v38 = -v38;
          }

          if (v37 >= v38)
          {
            goto LABEL_56;
          }

          *(v32 - 1) = v31;
        }

        else
        {
          *(v32 - 8) = 1;
          *(v32 - 1) = v31;
          ++v28;
        }

        *v32 = v36;
LABEL_56:
        v32 += 6;
      }
    }

    if (++v27 != 200)
    {
      continue;
    }

    break;
  }

  if (v28 >= 1)
  {
    v39 = a6 + 448;
    v40 = a6 + 576;
    v41 = &v54;
    do
    {
      if (*(v41 - 4) == 1)
      {
        v42 = *(v41 - 3);
        v43 = a4;
        v44 = (a4 + 36 * v42);
        v45 = v44[2] & 0xFFF7;
        *(a5 + v42) = 1;
        *(v44 + 4) = v45;
        *(v39 + v42) = 33;
        *(v40 + 4 * v42) = a2;
        GNSS_SV_Str = Get_GNSS_SV_Str(*v44);
        v47 = *(v44 + 4);
        v48 = *(v44 + 5);
        a4 = v43;
        EvCrt_v("ChanReset %d : SVGM  %s  Doppler %d  modKHz %d  Jammer %d  diff %d  SNR %d  JNR %d", v42, GNSS_SV_Str, *(v41 - 1), *v41, v41[1], v41[2], v47, v48);
      }

      v41 += 6;
      --v29;
    }

    while (v29);
  }
}

uint64_t GM_CrossCorr_Protection(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (((1 << a1) & 0x6E) == 0)
  {
    v6 = 63;
    if (a1 == 4)
    {
      v7 = 1;
    }

    else
    {
      v6 = 39;
      v7 = 0;
    }

    v8 = 0;
    v9 = ((1473445877 * *(a4 + 12)) >> 32) - *(a4 + 12);
    v10 = (v9 >> 13) + (v9 >> 31);
    while (1)
    {
      v11 = v8 - 5 < 0x35 ? v7 : 0;
      if ((v11 & 1) == 0 && (*(Num_Prn[a1 - 1] + a5 + 5976 + v8) & 0x8000000000000000) == 0)
      {
        v12 = (v10 + *(a5 + 72 + 48 * *(Num_Prn[a1 - 1] + a5 + 5976 + v8) + 22)) % 1000;
        v13 = v12 + 1000;
        if (v12 >= -500)
        {
          v13 = (v10 + *(a5 + 72 + 48 * *(Num_Prn[a1 - 1] + a5 + 5976 + v8) + 22)) % 1000;
        }

        v14 = v12 <= 499 ? v13 : v12 - 1000;
        if (v14 < 0)
        {
          v14 = -v14;
        }

        if (v14 < 0xF || v14 <= 0x18 && *(a3 + 4) < a2)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        return 0;
      }
    }

    *(a3 + 8) &= ~8u;
    return 1;
  }

  return v5;
}

uint64_t GnssDbgMgr_DebugClassInd(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v10 = *MEMORY[0x29EDCA608];
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      if (*(v3 + 5) <= 0xFF7u)
      {
        if ((*(*gp_Logger + 72))(gp_Logger))
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            v7 = LbsOsaTrace_FormatBuffer(0xBu, 4u, *(v2 + 16), *(v2 + 24), __s, 0x1010u);
            gnssOsa_PrintLog(__s, 4, 0, v7);
          }
        }

        else
        {
          v4 = *(v2 + 16);
          v5 = v4[3];
          if (v5 == 80)
          {
            v6 = *(v2 + 24);
          }

          else
          {
            if (v5 != 71)
            {
              goto LABEL_13;
            }

            v6 = *(v2 + 24);
          }

          GnssDbgMgr_HandleDbgData(v6);
        }

        v4 = *(v2 + 16);
        if (!v4)
        {
LABEL_14:
          *(v2 + 16) = 0;
          return 0;
        }

LABEL_13:
        free(v4);
        goto LABEL_14;
      }
    }
  }

  return 0;
}

void GnssDbgMgr_HandleDbgData(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v16 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = v1;
    v7 = GnssDbgMgr_LogSeverity(*(v2 + 4));
    v8 = v7;
    if ((v7 & 6) == 4)
    {
      if (g_LbsOsaTrace_Config >= v7)
      {
        v9 = LbsOsaTrace_FormatBuffer(v4, v7, (v5 + 8), (v6 - 8), __str, 0x1010u);
        gnssOsa_PrintLog(__str, v8, 0, v9);
      }
    }

    else if (g_LbsOsaTrace_Config >= v7)
    {
      v10 = *(v5 + 5);
      if (v10 <= 0x3B5)
      {
        bzero(__dst, 0x3B7uLL);
        memcpy_s("GnssDbgMgr_HandleDbgData", 253, __dst, 0x3B7u, (v5 + 8), v10);
        bzero(__str, 0x3E8uLL);
        v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v12 = LbsOsaTrace_ModuleString(v4);
        SeverityString = LbsOsaTrace_GetSeverityString(v8);
        snprintf(__str, 0x3E7uLL, "%10u %s%c %s\n", v11, v12, SeverityString, __dst);
        gnssOsa_PrintLog(__str, v8, 1, 0);
        if (v4 == 1 && (word_2A13C3B68 & 0x200) != 0)
        {
          Gnm15_09UpdateNmeaData(__dst, v10);
        }
      }
    }
  }
}

void GnssDbgMgr_DestMissingHandler(uint64_t a1)
{
  if (*(a1 + 4) == 8585216)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    *(a1 + 16) = 0;
  }
}

void GnssDbgMgr_WriteLog(size_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v4 = gnssOsa_Calloc("GnssDbgMgr_WriteLog", 175, 1, 0x20uLL);
    if (v4)
    {
      v5 = v4;
      v6 = gnssOsa_Calloc("GnssDbgMgr_WriteLog", 182, 1, a1);
      v5[2] = v6;
      if (v6)
      {
        *(v5 + 12) = a1;
        memcpy_s("GnssDbgMgr_WriteLog", 192, v6, a1, a2, a1);

        AgpsSendFsmMsg(131, 131, 8585216, v5);
      }

      else
      {

        free(v5);
      }
    }
  }
}

uint64_t GnssDbgMgr_LogSeverity(int a1)
{
  if (a1 <= 77)
  {
    if (a1 != 65)
    {
      if (a1 != 69)
      {
        return 4;
      }

      return 1;
    }

    return 3;
  }

  if (a1 == 78)
  {
    return 3;
  }

  if (a1 != 86)
  {
    if (a1 == 87)
    {
      return 2;
    }

    return 4;
  }

  return 5;
}

uint64_t std::function<void ()(gnss::Result)>::operator()(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t ___ZN4gnss15GnssAdaptDeviceC2ENSt3__110unique_ptrIN7GnssHal4GpioENS1_14default_deleteIS4_EEEENS2_INS3_4CommENS5_IS8_EEEENS2_INS3_6LoggerENS5_ISB_EEEENS2_INS3_9NvStorageENS5_ISE_EEEENS2_INS3_10ExtensionsENS5_ISH_EEEENS2_INS_9Emergency4Supl17ConnectionManagerENS5_ISM_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  std::function<void ()(gnss::Result)>::operator=(v1 + 7, a1 + 40);
  v4 = 0;
  Ga05_GetPlatformType(&v4);
  if (v4 && !*(v1 + 1))
  {
    gnssOsa_FlushLog();
    __assert_rtn("GnssAdaptDevice_block_invoke_2", "ga00GnssDevice.cpp", 90, "false && Invalid GPIO pointer");
  }

  gp_Comm = gnss::GnssAdaptDevice::getComm(*(v1 + 2));
  gp_Logger = gnss::GnssAdaptDevice::getLogger(*(v1 + 3));
  v2 = (*(*gp_Logger + 56))(gp_Logger);
  LbsOsaTrace_Init(v2);
  gp_NvStorage = gnss::GnssAdaptDevice::getNvStore(*(v1 + 4));
  gp_HalExtensionIndusInstance = gnss::GnssAdaptDevice::getHalExtensions(v1);

  return gnss::GnssAdaptDevice::Ga00_04HandleDeviceInit(v1, 0);
}

void *std::function<void ()(gnss::Result)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t gnss::GnssAdaptDevice::getComm(uint64_t this)
{
  if (!this)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getComm", "gaGnssAdaptDevice.h", 303, "false && Comm null");
  }

  return this;
}

uint64_t gnss::GnssAdaptDevice::getLogger(uint64_t this)
{
  if (!this)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getLogger", "gaGnssAdaptDevice.h", 304, "false && Logger null");
  }

  return this;
}

uint64_t gnss::GnssAdaptDevice::getNvStore(uint64_t this)
{
  if (!this)
  {
    gnssOsa_FlushLog();
    __assert_rtn("getNvStore", "gaGnssAdaptDevice.h", 305, "false && NvStorage null");
  }

  return this;
}

void *gnss::GnssAdaptDevice::getHalExtensions(gnss::GnssAdaptDevice *this)
{
  v1 = *(this + 5);
  {
    gnssOsa_FlushLog();
    __assert_rtn("getHalExtensions", "gaGnssAdaptDevice.h", 309, "false && Failed to dynamic cast HalExtensions");
  }

  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga00_04HandleDeviceInit(gnss::GnssAdaptDevice *this, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *(this + 88) = 0;
  if (!a2)
  {
    result = gnss::GnssAdaptDevice::Ga00_01GnssInit(this);
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  *(this + 90) = 1;
  if ((gnss::GnssAdaptDevice::Ga00_02GnssDeInit(this) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga00_03GnssReset", 1296);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_12;
  }

  gp_Logger = gnss::GnssAdaptDevice::getLogger(*(this + 3));
  v3 = (*(*gp_Logger + 56))(gp_Logger);
  LbsOsaTrace_Init(v3);
  __str[0] = 0;
  Ga05_GetPlatformType(__str);
  if (__str[0] && !*(this + 1))
  {
    gnssOsa_FlushLog();
    __assert_rtn("Ga00_03GnssReset", "ga00GnssDevice.cpp", 568, "false && Invalid GPIO pointer");
  }

  gp_Comm = gnss::GnssAdaptDevice::getComm(*(this + 2));
  gp_NvStorage = gnss::GnssAdaptDevice::getNvStore(*(this + 4));
  result = gnss::GnssAdaptDevice::Ga00_01GnssInit(this);
  if ((result & 1) == 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "Ga00_03GnssReset", 1293);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

LABEL_12:
    gnss::GnssAdaptDevice::Ga07_06SetDefaultState(this, 0);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](__str, this + 56);
    v7 = *(this + 20);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice23Ga00_04HandleDeviceInitENS_17e_Ga_GnssInitTypeE_block_invoke;
    block[3] = &__block_descriptor_tmp_67;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, __str);
    dispatch_async(v7, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
    return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](__str);
  }

  return result;
}

void sub_298F2B4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1);
}

void gnss::GnssAdaptDevice::~GnssAdaptDevice(gnss::GnssAdaptDevice *this)
{
  v14 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F29B10;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Destructor\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 73, "~GnssAdaptDevice");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(this + 19);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN4gnss15GnssAdaptDeviceD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = this;
  dispatch_sync(v3, block);
  dispatch_sync(g_GnssGlobalStaticQueue, &__block_literal_global_0);
  v4 = *(this + 20);
  if (v4)
  {
    dispatch_release(v4);
    *(this + 20) = 0;
  }

  if (g_GnssGlobalStaticQueue)
  {
    dispatch_release(g_GnssGlobalStaticQueue);
    g_GnssGlobalStaticQueue = 0;
  }

  v5 = *(this + 19);
  if (v5)
  {
    dispatch_release(v5);
    *(this + 19) = 0;
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](this + 328);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](this + 296);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](this + 264);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](this + 232);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](this + 200);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](this + 168);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(this + 120, *(this + 16));
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(this + 96, *(this + 13));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](this + 56);
  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 4);
  *(this + 4) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 3);
  *(this + 3) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 1);
  *(this + 1) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

{

  gnss::GnssAdaptDevice::~GnssAdaptDevice(this);
}

{
  gnss::GnssAdaptDevice::~GnssAdaptDevice(this);

  JUMPOUT(0x29C296280);
}

void sub_298F2B8A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN4gnss15GnssAdaptDeviceD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);

  return gnss::GnssAdaptDevice::Ga00_02GnssDeInit(v1);
}

uint64_t gnss::GnssAdaptDevice::Ga00_02GnssDeInit(dispatch_semaphore_s **this)
{
  v7 = *MEMORY[0x29EDCA608];
  gnss::GnssAdaptDevice::Ga01_06GnssReportPower(this, 0);
  gnss::GnssAdaptDevice::Ga00_08GnssStopPositioning(this, 1);
  GNS_EaInitialize(0);
  GNS_EeInitialize(0);
  Gnm_RegisterApiStatusCb(0);
  if (!gnssOsa_DeinitCountingSem(this + 45) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StopSem\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 69, "Ga00_02GnssDeInit", 1540);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (g_GnsInit == 1 && (g_GnsInit = 0, (AgpsShutdownAllFsm() & 1) != 0))
  {
    *__str = this + 18;
    v6 = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(__str, 8uLL);
    return 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "Ga00_02GnssDeInit", 1296);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }
}

void sub_298F2BAE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::reset(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_12;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v5, a2);
    dispatch_async(v2, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "reset", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (*(v1 + 90) == 1)
  {
    v2 = *(v1 + 160);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2;
    block[3] = &__block_descriptor_tmp_8;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a1 + 40);
    dispatch_async(v2, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6);
  }

  else
  {
    std::function<void ()(gnss::Result)>::operator=((v1 + 56), a1 + 40);
    gnss::GnssAdaptDevice::Ga00_04HandleDeviceInit(v1, 1);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Reset Triggered\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 73, "reset_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice5resetENSt3__18functionIFvNS_6ResultEEEE_block_invoke_2(uint64_t a1)
{
  v1 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v1, 0);
}

uint64_t __copy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 32;
  v3 = a2 + 32;

  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_32c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v1 = a1 + 32;

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1);
}

void gnss::GnssAdaptDevice::clear(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24))
  {
    v2 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5clearENSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_21_0;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v5, a2);
    dispatch_async(v2, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v5);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "clear", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice5clearENSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "clear_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v15, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v15, "clear_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v15);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "clear_block_invoke", 2056);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 68, "clear_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }

      return;
    }

    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a1 + 40);
    v14[3] = 0;
    gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x10u, v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    v8 = Gnm_ClearGNSSCache(0x10000);
    if (v8)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClearCache,%u\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "clear_block_invoke", 257, v8);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v8, 0x10u);
      if (g_LbsOsaTrace_Config >= 5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (!gnssOsa_SemWaitTimeOut(*(v2 + 360), 0x1F4u))
      {
        if (g_LbsOsaTrace_Config < 4)
        {
          return;
        }

        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: COLD\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "clear_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config < 5)
        {
          return;
        }

LABEL_23:
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "clear_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
        return;
      }

      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClearCache\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 69, "clear_block_invoke", 257);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, 11, 0x10u);
      if (g_LbsOsaTrace_Config >= 5)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v16, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v16, "clear_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "clear_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "clear_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F2C738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::start(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 24))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(a4 + 24))
  {
    v6 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice5startEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
    block[3] = &__block_descriptor_tmp_25;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a4);
    v10[4] = a2;
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
    return;
  }

  if (g_LbsOsaTrace_Config)
  {
LABEL_7:
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "start", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice5startEyNSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "start_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (v3 >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    v6 = *&g_MacClockTicksToMsRelation;
    snprintf(getVersionString::a_Version, 0x200uLL, "Device Interface %.2f,host,%s,FW,%s", 25.07, "v2.111.3.2025-07-11", ga_HwVersion);
    v7 = (*(**(v2 + 24) + 72))(*(v2 + 24));
    v8 = (*(**(v2 + 40) + 104))(*(v2 + 40));
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #SessionStart,%s ,logmask,%llu, dbgmask,%llu\n", (v6 * v5), "ADP", 77, "start_block_invoke", getVersionString::a_Version, v7, v8);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v23, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 0, v23, "start_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v23);
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "start_block_invoke", 2056);
        gnssOsa_PrintLog(__str, 1, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 68, "start_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else
    {
      v13 = *(v2 + 144);
      if ((v13 & 0x40) != 0)
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 40);
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 72);
        gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 2u, v20);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
        v16 = *(a1 + 104);
        *__str = 0;
        v26 = 1000;
        *v27 = 0;
        *(&v27[1] + 2) = 0;
        *&v27[5] = v16;
        v28 = 0;
        v17 = Gnm_RegisterPeriodicFix(0, 0, gnss::GnssAdaptDevice::Ga06_00GnssPeriodicFixCB, (2 * (v13 & 1)) | (4 * ((v13 & 0x3A) != 0)), __str);
        if (v17)
        {
          gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v17, 2u);
          if (!g_LbsOsaTrace_Config)
          {
            return;
          }

          bzero(__str, 0x3C6uLL);
          v18 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RegPeriodicFix,%u\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "start_block_invoke", 257, v17);
          gnssOsa_PrintLog(__str, 1, 1, 0);
          if (g_LbsOsaTrace_Config < 5)
          {
            return;
          }
        }

        else
        {
          *(v2 + 89) = 1;
          *(v2 + 93) = 0;
          if (g_LbsOsaTrace_Config < 5)
          {
            return;
          }
        }

        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "start_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
        return;
      }

      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v22, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 8, v22, "start_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v22);
      if (g_LbsOsaTrace_Config > 1)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid PVTM Config\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 87, "start_block_invoke", 258);
        gnssOsa_PrintLog(__str, 2, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v15 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 68, "start_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v24, "start_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "start_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "start_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F2D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v16 + 32);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 72);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::stop(uint64_t result, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!*(a2 + 24))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(a3 + 24))
  {
    v4 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice4stopENSt3__18functionIFvNS_6ResultEEEES5__block_invoke;
    block[3] = &__block_descriptor_tmp_31;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a2);
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
    return;
  }

  if (g_LbsOsaTrace_Config)
  {
LABEL_7:
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "stop", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice4stopENSt3__18functionIFvNS_6ResultEEEES5__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 68, "stop_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v3 = g_LbsOsaTrace_Config;
  }

  if (v3 >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    v6 = *&g_MacClockTicksToMsRelation;
    snprintf(getVersionString::a_Version, 0x200uLL, "Device Interface %.2f,host,%s,FW,%s", 25.07, "v2.111.3.2025-07-11", ga_HwVersion);
    v7 = (*(**(v2 + 24) + 72))(*(v2 + 24));
    v8 = (*(**(v2 + 40) + 104))(*(v2 + 40));
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #SessionStop,%s ,logmask,%llu, dbgmask,%llu\n", (v6 * v5), "ADP", 77, "stop_block_invoke", getVersionString::a_Version, v7, v8);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  if (*(v2 + 88))
  {
    if (*(v2 + 89))
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v17, a1 + 40);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v18, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 1u, v17);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v17);
      v9 = gnss::GnssAdaptDevice::Ga00_08GnssStopPositioning(v2, 0);
      if (g_LbsOsaTrace_Config > 3)
      {
        v10 = v9;
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: StopResp,%u\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "stop_block_invoke", v10);
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v12 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 68, "stop_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v20, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v20, "stop_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v20);
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a1 + 72);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 1, v19, "stop_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
      if (g_LbsOsaTrace_Config > 3)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Stop Rcvd,session inactive\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "stop_block_invoke");
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 68, "stop_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v21, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v21, "stop_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v21);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "stop_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 68, "stop_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }
}

void sub_298F2DA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga00_08GnssStopPositioning(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 89) != 1)
  {
    return 14;
  }

  if (a2 == 1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Internal Stop Request\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga00_08GnssStopPositioning");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    atomic_store(1u, (a1 + 91));
  }

  v4 = Gnm_StopPosnReq(0);
  if (v4)
  {
    v5 = v4;
    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(a1, v4, 1u);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StopPosReq,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "Ga00_08GnssStopPositioning", 257, v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Processed\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 73, "Ga00_08GnssStopPositioning");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (gnssOsa_SemWaitTimeOut(*(a1 + 360), 0x1F4u))
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StopReq\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga00_08GnssStopPositioning", 257);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v5 = 11;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 89) = 0;
  }

  return v5;
}

void gnss::GnssAdaptDevice::deleteGnssData(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v4 = *(result + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice14deleteGnssDataEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_51;
    block[4] = result;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    v7[4] = a2;
    dispatch_async(v4, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "deleteGnssData", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

void ___ZN4gnss15GnssAdaptDevice14deleteGnssDataEyNSt3__18functionIFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "deleteGnssData_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if ((*(v2 + 88) & 1) == 0)
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v33, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v33, "deleteGnssData_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v33);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "deleteGnssData_block_invoke", 1302);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 68, "deleteGnssData_block_invoke");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }

    return;
  }

  v4 = *(a1 + 72);
  if (g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Flags,%llu\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 77, "deleteGnssData_block_invoke", v4);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  if ((v4 & 0x4000) == 0)
  {
    v6 = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Eph\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 73, "deleteGnssData_block_invoke");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v6 = 1;
  if ((v4 & 2) != 0)
  {
LABEL_15:
    v6 |= 2u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Alm\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

LABEL_17:
  if ((v4 & 4) != 0)
  {
    v6 |= 4u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Pos\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 8) != 0)
  {
    v6 |= 8u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x10) != 0)
  {
    v6 |= 0x10u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Iono\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x20) != 0)
  {
    v6 |= 0x20u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: UTC\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x40) != 0)
  {
    v6 |= 0x40u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SvHealth\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x80) != 0)
  {
    v6 |= 0x100u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v16 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Clear_GNSS_FW_NV_Data\n", (*&g_MacClockTicksToMsRelation * v16), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x400) != 0)
  {
    v6 |= 0x10000u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v17 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Cold\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x800) != 0)
  {
    v6 |= 0x20000u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Warm\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x1000) != 0)
  {
    v6 |= 0x40000u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v19 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Factory\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x100) != 0)
  {
    v6 |= 0x200u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v20 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RTI\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x200) != 0)
  {
    v6 |= 0x400u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v21 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ORB\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 73, "deleteGnssData_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if ((v4 & 0x2000) == 0)
  {
    if (!v6)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v32, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v32, "deleteGnssData_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v32);
      if (g_LbsOsaTrace_Config > 1)
      {
        bzero(__str, 0x3C6uLL);
        v22 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx field 0\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 87, "deleteGnssData_block_invoke", 770);
        gnssOsa_PrintLog(__str, 2, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v23 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "deleteGnssData_block_invoke");
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }
      }

      return;
    }

    goto LABEL_57;
  }

  v6 |= 0x800u;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v24 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME_TTICK\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "deleteGnssData_block_invoke");
    gnssOsa_PrintLog(__str, 4, 1, 0);
LABEL_57:
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v25 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Fields,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "deleteGnssData_block_invoke", v6);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v30, a1 + 40);
  v31[3] = 0;
  gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(v2, 0x10u, v30);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v31);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v30);
  v26 = Gnm_ClearGNSSCache(v6);
  if (v26)
  {
    gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v26, 0x10u);
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v27 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClearCache,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "deleteGnssData_block_invoke", 257, v26);
    gnssOsa_PrintLog(__str, 1, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return;
    }

    goto LABEL_69;
  }

  if (!gnssOsa_SemWaitTimeOut(*(v2 + 360), 0x1F4u))
  {
    if (g_LbsOsaTrace_Config < 5)
    {
      return;
    }

    goto LABEL_69;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v28 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClearCache\n", (*&g_MacClockTicksToMsRelation * v28), "ADP", 69, "deleteGnssData_block_invoke", 257);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, 11, 0x10u);
  if (g_LbsOsaTrace_Config >= 5)
  {
LABEL_69:
    bzero(__str, 0x3C6uLL);
    v29 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "deleteGnssData_block_invoke");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }
}

void sub_298F2EBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(gnss::GnssAdaptDevice *this)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN4gnss15GnssAdaptDevice24Ga00_00GetDeviceInstanceEv_block_invoke;
  v3[3] = &unk_29EF06358;
  v3[4] = &v4;
  dispatch_sync(g_GnssGlobalStaticQueue, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t gnss::GnssAdaptDevice::Ga00_01GnssInit(dispatch_semaphore_s **this)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!GNS_Initialize())
  {
    return 0;
  }

  if (GNS_EaInitialize(gnss::GnssAdaptDevice::Ga03_00RegisterGnsEaStatusResponse) != 1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EaInit Resp,%u\n", v9);
      goto LABEL_14;
    }

    return 0;
  }

  if (GNS_EeInitialize(gnss::GnssAdaptDevice::Ga04_00RegisterGnsEeStatusResponse) != 1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx EeInit Resp,%u\n", v10);
      goto LABEL_14;
    }

    return 0;
  }

  v12 = 0;
  if ((Ga05_GetPlatformType(&v12) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid Pltfm Type\n");
      goto LABEL_14;
    }

    return 0;
  }

  if (Gnm_HwInitialize(v12, gnss::GnssAdaptDevice::Ga00_07RegisterHWStatusInd, 0))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InitStatusCb Resp,%u\n", v8);
LABEL_14:
      gnssOsa_PrintLog(__str, 1, 1, 0);
      return 0;
    }

    return 0;
  }

  if (Gnm_RegisterApiStatusCb(gnss::GnssAdaptDevice::Ga07_17RegisterGnmStatusResponse))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ApiStatusCb Resp,%u\n", v11);
    goto LABEL_14;
  }

  if (!gnssOsa_SemInit(this + 45, 0))
  {
    snprintf(v13, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga00_01GnssInit", 507, "Semaphore creation failed");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 69, "Ga00_01GnssInit", v13);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Ga00_01GnssInit", "ga00GnssDevice.cpp", 507, "false && Semaphore creation failed");
  }

  if (g_LbsOsaTrace_Config < 3)
  {
    return 1;
  }

  bzero(__str, 0x3C6uLL);
  v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  snprintf(getVersionString::a_Version, 0x200uLL, "Device Interface %.2f,host,%s,FW,%s", 25.07, "v2.111.3.2025-07-11", ga_HwVersion);
  v5 = (*(*this[3] + 72))(this[3]);
  v6 = (*(*this[5] + 104))(this[5]);
  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #Init,%s ,logmask,%llu, dbgmask,%llu\n", v4, "ADP", 77, "Ga00_01GnssInit", getVersionString::a_Version, v5, v6);
  v2 = 1;
  gnssOsa_PrintLog(__str, 3, 1, 0);
  return v2;
}

void gnss::GnssAdaptDevice::Ga00_07RegisterHWStatusInd(gnss::GnssAdaptDevice *a1, int a2, char *a3)
{
  v5 = a1;
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {

    gnss::GnssAdaptDevice::Ga07_05HandleGnssHwStatusInd(DeviceInstance, v5, a2, a3);
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice23Ga00_04HandleDeviceInitENS_17e_Ga_GnssInitTypeE_block_invoke(uint64_t a1)
{
  v1 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v1, 8);
}

void gnss::GnssAdaptDevice::Ga00_10GnssSetHwVersionInfo(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 0;
  Ga05_GetPlatformType(&v4);
  if (v4)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid Pltfm,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga00_10GnssSetHwVersionInfo", 770, v4);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else
  {
    snprintf(ga_HwVersion, 0x200uLL, "%s", (a2 + 2));
  }
}

uint64_t newGnssDevice(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    operator new();
  }

  return 0;
}

void sub_298F2F728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  v22 = v20;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v18 + 328);
  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v18 + 296);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v18 + 264);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v18 + 232);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v18 + 200);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v18 + 168);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v21, *(v18 + 128));
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(v22, *(v18 + 104));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v18 + 56);
  v24 = *(v18 + 48);
  *(v18 + 48) = 0;
  if (v24)
  {
    (*(*v24 + 48))(v24);
  }

  v25 = *(v18 + 40);
  *(v18 + 40) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(v18 + 32);
  *(v18 + 32) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v18 + 24);
  *(v18 + 24) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(v18 + 16);
  *(v18 + 16) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(v18 + 8);
  *(v18 + 8) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  MEMORY[0x29C296280](v18, v19);
  _Unwind_Resume(a1);
}

uint64_t gnss::Device::setEmergencyConfig(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::Device::startEmergencyPositionRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::Device::setSuplInit(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::Device::injectSphericalHarmonicIonosphereModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return std::function<void ()(gnss::Result)>::operator()(a4, 7);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(a1, a2[1]);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 9));
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(a1, a2[1]);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a2 + 5));

    operator delete(a2);
  }
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__value_func<void ()(gnss::Result)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298F30454(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t KFSt_Meas_Update(unsigned int a1, unsigned int a2, double *a3, double *a4, _WORD *a5, double a6)
{
  v18[33] = *MEMORY[0x29EDCA608];
  if (*(a3 + 1) >= 1 && (*(a3 + 16) = 0, *a3 == 1))
  {
    v9 = a3[4];
    v10 = a6 - a3[3];
    memset(v15, 0, sizeof(v15));
    v14 = 0.0;
    a3[6] = v10;
    v16 = 0;
    *(v15 + a1) = 0x3FF0000000000000;
    *(v15 + a2) = v10;
    umeas(a4, a2, v9, v15, v18, v17, &v14, a3[7]);
    v11 = v14;
    if (v14 <= 0.0)
    {
      v12 = 0;
      *a3 = 0;
      *(a3 + 16) = 1;
      ++*a5;
    }

    else
    {
      v11 = a3[4] * (v14 * (v18[a2] * v18[a2]));
      v12 = *a3;
    }

    a3[8] = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t Taylor_sin_cos(uint64_t result, int *a2, int *a3)
{
  if (result < 1)
  {
    if (result >= -51472)
    {
      v12 = (1029 - result) / 0x80Bu;
      v13 = g_Table_sinQ15[v12];
      v9 = g_Table_sinQ15[25 - v12];
      v6 = result + ((16471 * v12) >> 3);
      v4 = -v13;
      goto LABEL_9;
    }

    v7 = (result + 103973) / 2059;
    v8 = g_Table_sinQ15[v7];
    v5 = g_Table_sinQ15[25 - v7];
    v6 = result + 103973 - ((16471 * v7) >> 3) - 1029;
    v4 = -v8;
  }

  else
  {
    if (result <= 0xC910)
    {
      v10 = (result + 1029) / 0x80Bu;
      v4 = g_Table_sinQ15[v10];
      v11 = 16471 * v10;
      v9 = g_Table_sinQ15[25 - v10];
      v6 = result - (v11 >> 3);
      goto LABEL_9;
    }

    v3 = (103973 - result) / 2059;
    v4 = g_Table_sinQ15[v3];
    v5 = g_Table_sinQ15[25 - v3];
    v6 = result + ((16471 * v3) >> 3) - 102944;
  }

  v9 = -v5;
LABEL_9:
  v14 = (v6 * v6) >> 16;
  *a2 = v4 + ((v6 * v9 - v14 * v4) >> 15);
  *a3 = v9 - ((v6 * v4 + v14 * v9) >> 15);
  return result;
}

BOOL HswUtil_AddNmeaCS(char *a1, unsigned int a2, unsigned __int16 *a3)
{
  v4 = *a3;
  v5 = v4 + 4;
  if (v4 + 4 <= a2)
  {
    if (v4 < 2)
    {
      v7 = 0;
    }

    else
    {
      LOBYTE(v7) = 0;
      v8 = v4 - 1;
      v9 = a1 + 1;
      do
      {
        v10 = *v9++;
        LOBYTE(v7) = v10 ^ v7;
        --v8;
      }

      while (v8);
      v7 = v7;
    }

    snprintf(&a1[v4], a2 - v4, "*%02x\n", v7);
    *a3 += 4;
  }

  return v5 <= a2;
}

void Pre_Positioning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v383 = v13;
  v15 = v14;
  v17 = v16;
  v405 = v18;
  v20 = v19;
  v21 = v11;
  v449 = *MEMORY[0x29EDCA608];
  *(v19 + 332) = 0;
  v400 = *(v11 + 6);
  v22 = *(v11 + 16);
  v425[2] = *(v11 + 24);
  v23 = *(v11 + 40);
  v392 = v24;
  v25 = *v24;
  *v11 = *(v16 + 18);
  *(v11 + 6) = *(v16 + 62);
  *(v19 + 324) = *(v16 + 56);
  *(v19 + 208) = *(v16 + 32);
  *(v19 + 128) = *(v16 + 48);
  *(v19 + 328) = *(v16 + 204);
  *v19 = *(v16 + 224);
  *(v19 + 8) = *(v16 + 232);
  v26 = *(v16 + 240);
  *(v19 + 16) = v26;
  *(v19 + 24) = v26 - *(v16 + 248);
  v27 = *(v16 + 80);
  *(v11 + 40) = *(v16 + 96);
  *(v11 + 24) = v27;
  v28 = *(v16 + 120);
  *(v19 + 32) = *(v16 + 104);
  *(v19 + 48) = v28;
  *(v19 + 136) = *(v16 + 256);
  v30 = *(v16 + 288);
  v29 = *(v16 + 304);
  v31 = *(v16 + 320);
  *(v19 + 152) = *(v16 + 272);
  *(v19 + 200) = v31;
  *(v19 + 184) = v29;
  *(v19 + 168) = v30;
  v32 = *(v16 + 336);
  *(v19 + 72) = *(v16 + 352);
  *(v19 + 56) = v32;
  v33 = *(v16 + 152);
  *(v19 + 96) = v33;
  v34 = v19 + 96;
  v426[0] = v23;
  v395 = v12;
  *&__src[0] = 0;
  *(v19 + 80) = *(v16 + 360);
  *(v19 + 88) = *(v16 + 992);
  v35 = *(v16 + 160);
  *(v19 + 112) = v35;
  v36 = (v19 + 112);
  v37 = *(v16 + 168);
  *(v19 + 120) = v37;
  v38 = (v19 + 120);
  *(v19 + 104) = *(v16 + 184);
  v39 = 0.0;
  v40 = 0.0;
  if (*(v12 + 17192) == 1)
  {
    v40 = vcvtd_n_f64_s32(-*(v12 + 17132), 0x1EuLL);
  }

  if (*(v12 + 47496) >= 1)
  {
    v39 = *(v12 + 47512) * 0.000000001;
  }

  v380 = v12 + 47496;
  *&__b[0] = 0;
  if (R8_EQ(v34, __b))
  {
    *&__b[0] = 0;
    if (R8_EQ(v36, __b))
    {
      *&__b[0] = 0;
      v41 = 0.0;
      if (R8_EQ(v38, __b))
      {
        goto LABEL_12;
      }

      v41 = v37 + v39;
    }

    else
    {
      v41 = v35 + v40;
    }

    *__src = v41;
  }

  else
  {
    *__src = v33;
    v41 = v33;
  }

LABEL_12:
  *&__b[0] = 0;
  if (!R8_EQ(__src, __b))
  {
    *&__b[0] = 0;
    if (R8_EQ(v34, __b))
    {
      *v34 = v41;
      v33 = v41;
    }

    *&__b[0] = 0;
    if (R8_EQ(v36, __b))
    {
      v35 = v41 - v40;
      *v36 = v41 - v40;
    }

    *&__b[0] = 0;
    if (R8_EQ(v38, __b))
    {
      *v38 = v41 - v39;
    }
  }

  *&__b[0] = 0;
  if (R8_EQ(__src, __b))
  {
    v42 = 0.0;
  }

  else
  {
    *&v435[0] = 0;
    v42 = 0.0;
    if (!R8_EQ(v34, v435))
    {
      *&__b[0] = 0;
      if (!R8_EQ(v36, __b))
      {
        v43 = v33 - v35;
        v44 = vabdd_f64(v33 - v35, v40);
        if (v44 > 0.0000000333564095)
        {
          *v36 = v41 - v40;
          EvCrt_v("PP_SetReceiverPos:  ClkGlon deviation %f m,  New ClkGlon %f m", (v43 - v40) * 299792458.0, (v41 - v40) * 299792458.0);
          v42 = v44;
        }
      }

      *&__b[0] = 0;
      if (!R8_EQ(v38, __b))
      {
        v45 = *v34 - *v38;
        v46 = vabdd_f64(v45, v39);
        if (v46 > 0.0000000333564095)
        {
          *v38 = v41 - v39;
          v42 = v42 + v46;
          EvCrt_v("PP_SetReceiverPos:  ClkBDS deviation %f m,  New ClkBDS %f m", (v45 - v39) * 299792458.0, (v41 - v39) * 299792458.0);
        }
      }
    }
  }

  *(v20 + 312) = Zen_Trop_Delay_STANAG_4294(*(v20 + 24));
  v47 = *(v17 + 864);
  *(v20 + 216) = v47;
  v48 = *(v17 + 872);
  *(v20 + 224) = v48;
  *(v20 + 232) = *(v17 + 840);
  v49 = *(v17 + 920);
  v50 = *(v17 + 904);
  v51.f64[0] = *(v17 + 888);
  v52 = *(v17 + 896);
  *(v20 + 280) = *(v17 + 912);
  *(v20 + 296) = *(v17 + 12);
  *(v34 + 204) = *(v17 + 24);
  if (v42 > 0.0)
  {
    v53 = v42 * 0.5 * 299792458.0 * (v42 * 0.5 * 299792458.0);
    v54 = sqrt(v53 + v47 * v47);
    v55 = sqrt(v53 + v48 * v48);
    *(v20 + 216) = v54;
    *(v20 + 224) = v55;
    v406 = v52;
    v408 = v51.f64[0];
    EvCrt_v("PP_SetReceiverPos:  New  B_Acc %f -> %f  T_Acc %f -> %f", v47, v54, v48, v55);
    v52 = v406;
    v51.f64[0] = v408;
  }

  if (*(v17 + 388))
  {
    v56 = (v17 + 144);
    v57 = 0.0;
    for (i = 4; i > 1; --i)
    {
      v59 = *v56--;
      v57 = v57 + v59 * v59;
    }

    v60 = sqrt(v57) * *(v17 + 72);
    v50 = v50 + v60;
    v51.f64[0] = v51.f64[0] + v60;
  }

  v61 = *(v21 + 8);
  if (!v61)
  {
    v61 = *(v20 + 208);
    *(v21 + 8) = v61;
  }

  *(v20 + 336) = v61;
  *(v21 + 16) = *(v20 + 128) - *(v20 + 96);
  v62 = *(v405 + 1720) * 99930819.3;
  if (!*v405 && !*(v405 + 8))
  {
    v65 = xmmword_2990501D0;
    v64 = 5.0;
    goto LABEL_58;
  }

  v63 = *(v34 + 204);
  if (v63 > 4)
  {
    if (v63 > 6)
    {
      if (v63 == 7)
      {
        v65 = xmmword_2990501F0;
        v64 = 350.0;
        goto LABEL_58;
      }

      if (v63 == 8)
      {
        v65 = vdupq_n_s64(0x412E848000000000uLL);
        v64 = 1000000.0;
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (v63 == 5)
    {
      v65 = xmmword_299050210;
      *&v66 = 50.0;
    }

    else
    {
      v65 = xmmword_299050200;
      *&v66 = 200.0;
    }

    v64 = *&v66;
  }

  else
  {
    if (v63 <= 2)
    {
      v64 = 5.0;
      if (v63 < 2)
      {
LABEL_57:
        v67 = vdup_n_s32(v63 < 2);
        v68.i64[0] = v67.u32[0];
        v68.i64[1] = v67.u32[1];
        v65 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v68, 0x3FuLL)), xmmword_2990501D0, vdupq_n_s64(0x412E848000000000uLL));
        goto LABEL_58;
      }

      if (v63 == 2)
      {
        v65 = xmmword_2990501E0;
        v64 = 10.0;
        goto LABEL_58;
      }

LABEL_56:
      v64 = 1000000.0;
      goto LABEL_57;
    }

    if (v63 == 3)
    {
      v65 = xmmword_299050230;
      v64 = 15.0;
    }

    else
    {
      v65 = xmmword_299050220;
      v64 = 25.0;
    }
  }

LABEL_58:
  if (v49 > v62)
  {
    *(v20 + 104) = *(v405 + 1712);
    v49 = v62;
  }

  *(v20 + 256) = v49 * 5.25503547;
  if (v50 > v64)
  {
    if (*(v34 + 204) < 4u || *(v20 + 80) < v64 + v64)
    {
      *(v20 + 80) = 0;
      *(v20 + 48) = 0u;
      *(v20 + 64) = 0u;
      *(v20 + 32) = 0u;
    }

    v50 = v64;
  }

  v69 = sqrt(v50 * v50 + 0.0 + v49 * v49) * 5.25503547;
  if (v69 <= 1.0)
  {
    v69 = 1.0;
  }

  *(v20 + 248) = v69;
  v51.f64[1] = v52;
  *(v34 + 168) = vmulq_f64(vbslq_s8(vcgtq_f64(v51, v65), v65, v51), vdupq_n_s64(0x4015052804935343uLL));
  if (v69 < 21840.0)
  {
    v70 = (v69 * 3.0) + 1;
  }

  else
  {
    v70 = -1;
  }

  *(v20 + 288) = v70;
  if (v49 < 4156.01381)
  {
    v71 = (v49 * 15.7651064) + 1;
  }

  else
  {
    v71 = -1;
  }

  *(v20 + 290) = v71;
  if (v50 < 4156.01381)
  {
    v72 = (v50 * 15.7651064) + 1;
  }

  else
  {
    v72 = -1;
  }

  *(v20 + 292) = v72;
  *(v34 + 264) = vdupq_n_s64(0xC023CCCCCCCCCCCDLL);
  v73 = *(v20 + 216);
  v74 = *(v20 + 232);
  *(v20 + 344) = v73;
  *(v20 + 352) = v74;
  *(v20 + 376) = 0;
  v404 = v21;
  v409 = v34 + 168;
  if (v74 <= 1000.0 && v73 <= 1000.0 && *(v20 + 296) >= 3 && !v25)
  {
    v391 = 0;
    goto LABEL_123;
  }

  v411 = 0;
  v410 = 0;
  *&v435[0] = 0;
  *v433 = 0;
  *&v431[0] = 0;
  *&v413 = 0;
  v391 = 0;
  if (!Core_Get_GPS_TimePos(*(v20 + 208), &v411 + 1, &v411, &v410, v435, v433, __b, v431, &v413))
  {
    goto LABEL_123;
  }

  *&v430[0] = 0;
  *&v427[0] = 0;
  v75 = v410 - 3;
  v391 = (v410 - 3) < 2;
  v76 = HIBYTE(v411);
  v77 = *v433;
  v78 = *v431;
  if (*v431 > 150000.0)
  {
    v79 = v411;
  }

  else
  {
    v79 = 0;
  }

  v80 = v79 ^ v411;
  if (*(v20 + 296) > 2 || *(v404 + 4) > 0x63u || ((*(v20 + 232) < 1000.0) & v80) != 1)
  {
    goto LABEL_98;
  }

  if (v25)
  {
    *(v20 + 332) = 1;
  }

  else if (v75 <= 1)
  {
    v81 = Horiz_Diff_Sqd(v20, __b);
    if (v81 > 193229.156)
    {
      v82 = v78 * (v78 * 4.0);
      if (v82 <= *(v20 + 232) * (*(v20 + 232) * 9.0))
      {
        v82 = *(v20 + 232) * (*(v20 + 232) * 9.0);
      }

      if (v81 > v82)
      {
        *(v20 + 332) = 1;
        EvCrt_v("PrePos:  PosDisc = TRUE    Between Nav Pos and Ref Pos");
      }
    }
  }

  if (*(v20 + 332) == 1)
  {
    *(v20 + 232) = 0x4163125300000000;
    *(v20 + 216) = 0x4163125300000000;
    v83 = 9999000.0;
  }

  else
  {
LABEL_98:
    v83 = *(v20 + 216);
    v84 = 0.0;
    if (v83 <= 1000.0)
    {
      goto LABEL_104;
    }
  }

  v84 = 0.0;
  if (v76)
  {
    if (v77 <= 0.0005 && v77 < 0.001)
    {
      v84 = v77 * 99930819.3;
      *v430 = v77 * 99930819.3;
      *(v20 + 360) = v77 * 99930819.3;
      *(v20 + 368) = 0xBFF199999999999ALL;
      if (v77 * 99930819.3 >= v83 * 1.5)
      {
        *&v430[0] = 0;
        v84 = 0.0;
      }
    }
  }

LABEL_104:
  v85 = 0.0;
  if (v75 > 1)
  {
    v21 = v404;
  }

  else
  {
    v86 = *(v20 + 232);
    v21 = v404;
    if (((v86 > 1000.0) & v80) == 1)
    {
      v85 = v78 / 3.0;
      *v427 = v78 / 3.0;
      *(v20 + 360) = 0xBFF199999999999ALL;
      *(v20 + 368) = v78 / 3.0;
      if (v78 / 3.0 >= v86 * 1.5)
      {
        *&v427[0] = 0;
        v85 = 0.0;
      }
    }
  }

  v412 = 0.0;
  if (R8_EQ(v430, &v412))
  {
    goto LABEL_121;
  }

  v87 = *(v20 + 128);
  v88 = (*v435 - v87) * 1000.0;
  v89 = -0.5;
  if (v88 > 0.0)
  {
    v89 = 0.5;
  }

  v90 = v88 + v89;
  v91 = 2147483650.0;
  if (v90 <= 2147483650.0)
  {
    v91 = -2147483650.0;
    if (v90 >= -2147483650.0)
    {
      v91 = v90;
    }
  }

  v92 = v87 + v91 / 1000.0 - *v435;
  v93 = *v34 - v92;
  if (v93 > 0.0005)
  {
    v94 = 0.001;
LABEL_119:
    v92 = v92 + v94;
    goto LABEL_120;
  }

  if (v93 < -0.0005)
  {
    v94 = -0.001;
    goto LABEL_119;
  }

LABEL_120:
  *(v20 + 96) = v92;
  *(v20 + 216) = v84;
  *(v20 + 376) = 1;
LABEL_121:
  v412 = 0.0;
  if (!R8_EQ(v427, &v412))
  {
    Geo2ECEF(__b, &WGS84_Datum, (v21 + 24));
    *v20 = __b[0];
    v95 = *&__b[1];
    *(v20 + 16) = *&__b[1];
    *(v20 + 24) = v95 - *(v17 + 248);
    v96 = *&v413 / 3.0;
    *(v20 + 232) = v85;
    *(v20 + 240) = v96;
    *(v20 + 377) = 1;
  }

LABEL_123:
  v97 = 0;
  v98 = *(v20 + 324);
  v99 = *(v21 + 6);
  if (v98 >= 1 && v99 >= 1024)
  {
    v97 = *v21;
  }

  *a10 = *(v20 + 208);
  *(a10 + 32) = v99;
  v100 = *(v21 + 16);
  v101 = (v100 * 1000.0);
  *(a10 + 36) = v101;
  v102 = -(v101 - v100 * 1000.0) * 65536.0;
  v103 = -0.5;
  if (v102 > 0.0)
  {
    v103 = 0.5;
  }

  v104 = v102 + v103;
  if (v104 <= 2147483650.0)
  {
    if (v104 >= -2147483650.0)
    {
      v105 = v104;
    }

    else
    {
      LOWORD(v105) = 0;
    }
  }

  else
  {
    LOWORD(v105) = -1;
  }

  v403 = v15;
  *(a10 + 40) = v105;
  *(a10 + 44) = v98;
  *(a10 + 48) = ((*(v17 + 216) - *(v17 + 160)) * 1000.0);
  *&__b[0] = 0;
  API_Get_UTC_Cor(1, __b);
  *(a10 + 52) = *__b;
  v106 = *(v20 + 104);
  v107 = (v106 * 1575420000.0);
  if (fabs(v106) >= 0.0000207995328)
  {
    LOWORD(v107) = 0;
  }

  *(v20 + 320) = v107;
  v108 = *(v20 + 248);
  v379 = v38;
  if (v108 >= 20500.0)
  {
    *(v20 + 322) = -536;
    v115 = v405;
  }

  else
  {
    v109 = *(v20 + 208);
    v110 = *(v20 + 336);
    if (v109 <= v110 + 60000 && v109 >= v110 + 3000)
    {
      v112 = 1600;
    }

    else
    {
      v112 = 3941;
    }

    v113 = (v112 + (v108 * 3.0));
    if (v113 <= 0xDAC)
    {
      LOWORD(v114) = 3500;
    }

    else
    {
      LOWORD(v114) = v112 + (v108 * 3.0);
    }

    *(v20 + 322) = v114;
    v115 = v405;
    if (v113 < 0xFA1)
    {
      v116 = v15;
      goto LABEL_179;
    }
  }

  v407 = v97;
  v117 = v115 + 265;
  v118 = v383;
  v119 = (v383 + 4448);
  v120 = 128;
  v121 = 999999;
  v122 = -999999;
  do
  {
    v123 = *(v118 + 96);
    if (Is_Legal(v123) && *(v118 + 1248) >= 10)
    {
      v124 = BYTE1(v123) > 0xFu || ((1 << SBYTE1(v123)) & 0xE6CC) == 0;
      v125 = v124 || v123 == 6;
      if (v125 && (v117[GNSS_Id_To_Num_Prn_Idx(v123)] & 1) == 0)
      {
        v126 = (*v119 * 5.25503547);
        if (v121 >= v126)
        {
          v121 = (*v119 * 5.25503547);
        }

        if (v122 <= v126)
        {
          v122 = (*v119 * 5.25503547);
        }
      }
    }

    ++v119;
    v118 += 4;
    --v120;
  }

  while (v120);
  v127 = *(v20 + 320);
  LOWORD(v107) = *(v20 + 320);
  v114 = *(v20 + 322);
  if (v121 == 999999)
  {
    v116 = v15;
    v115 = v405;
    v97 = v407;
  }

  else
  {
    v116 = v15;
    v115 = v405;
    v97 = v407;
    if (v122 != -999999)
    {
      if (v122 - 8000 <= -(v127 + v114))
      {
        v128 = -(v127 + v114);
      }

      else
      {
        v128 = v122 - 8000;
      }

      v129 = v114 - v127;
      if ((v114 - v127) >= v121 + 8000)
      {
        v129 = v121 + 8000;
      }

      v130 = v129 - v128;
      if (v129 - v128 < 8001)
      {
        if (v130 <= 3999)
        {
          EvCrt_v("PP_Update_SS_Data:  Warning:  Out of range Sky Search Dopp_Low/High %d %d   min/max_Dopp %d %d   SS_Dopp_SR %d   OscFreq %d", v128, v129, v121, v122, *(v20 + 322), v127);
          LOWORD(v107) = *(v20 + 320);
          LOWORD(v114) = *(v20 + 322);
        }
      }

      else
      {
        v114 = (v130 + 1) >> 1;
        *(v20 + 322) = v114;
        v107 = (~(v128 + v129) + (v128 + v129 >= 0)) >> 1;
        v131 = v107 - v127;
        *(v20 + 320) = v107;
        if (v131 < 0)
        {
          v131 = -v131;
        }

        *(v20 + 290) += v131;
      }
    }
  }

LABEL_179:
  *(a10 + 24) = (v107 * 0.634751368);
  *(a10 + 4) = (v114 * 0.190293673);
  v132 = *v115;
  *(a10 + 56) = *v115;
  v133 = *(v409 + 36);
  *(a10 + 60) = v133;
  LOWORD(v133) = *(v20 + 290);
  *&v134 = v133 * 0.634751368;
  *(a10 + 26) = *&v134;
  LOWORD(v134) = *(v20 + 292);
  *(a10 + 14) = (v134 * 19.0293673);
  *(a10 + 68) = v132 == 1 || v391;
  v135 = *(v20 + 224) * 0.0100069229;
  v136 = -0.5;
  if (v135 > 0.0)
  {
    v136 = 0.5;
  }

  v137 = v135 + v136;
  if (v137 <= 2147483650.0)
  {
    if (v137 >= -2147483650.0)
    {
      v138 = v137;
    }

    else
    {
      v138 = 0x80000000;
    }
  }

  else
  {
    v138 = 0x7FFFFFFF;
  }

  if (!v132)
  {
    v140 = *(v405 + 248);
    if (v140)
    {
      v141 = *(v20 + 208) - v140;
      if (v141 - 1 <= 0x5265BFE)
      {
        v142 = *(v20 + 128) - *(v20 + 96) - *(v405 + 256);
        if (v142 < -302400.0)
        {
          v142 = v142 + 604800.0;
        }

        v143 = fabs(v141 - v142 * 1000.0) * 1000.0;
        v144 = 3 * v141 / 0x3E8;
        v145 = v144 + 5;
        if (v143 >= (v144 + 5))
        {
          EvCrt_v("Pre_Positioning:  Clearing Sleep_Sub_us_Time, time_diff %d --> %d us", LODWORD(v143), v144 + 5);
          *(v405 + 248) = 0;
          *(v405 + 256) = 0;
        }

        else if (v145 < v138)
        {
          v146 = *(v20 + 324) - 7;
          if (v146 > 4)
          {
            v147 = 0xFFFF;
          }

          else
          {
            v147 = dword_299050280[v146];
          }

          EvCrt_v("Pre_Positioning:  Reducing Time_Unc  %d --> %d us  floor %d us  time_diff %f us", v138, v145, v147, v143);
          if (v145 <= v147)
          {
            v138 = v147;
          }

          else
          {
            v138 = v145;
          }

          goto LABEL_188;
        }
      }
    }
  }

  if (v138 < 1)
  {
    v139 = 1;
    goto LABEL_200;
  }

LABEL_188:
  if (v138 >= 0xFFFF)
  {
    v139 = -1;
  }

  else
  {
    v139 = v138;
  }

LABEL_200:
  *(a10 + 6) = v139;
  v148 = 3 * *(v20 + 232) / 5;
  if (v148 >= 65534)
  {
    LOWORD(v148) = -2;
  }

  *(a10 + 8) = v148 + 1;
  v149 = 3 * *(v20 + 240);
  if (v149 >= 65534)
  {
    LOWORD(v149) = -2;
  }

  *(a10 + 10) = v149 + 1;
  v150 = *(v20 + 80) * 100.0;
  v151 = -0.5;
  if (v150 > 0.0)
  {
    v151 = 0.5;
  }

  v152 = v150 + v151;
  if (v152 > 2147483650.0)
  {
    goto LABEL_207;
  }

  if (v152 >= -2147483650.0)
  {
    v153 = v152;
    if (v152 >= 0xFFFF)
    {
LABEL_207:
      LOWORD(v153) = -1;
      *(a10 + 14) = -1;
      goto LABEL_213;
    }
  }

  else
  {
    v153 = 0x80000000;
  }

  if (v153 <= 1)
  {
    LOWORD(v153) = 1;
  }

LABEL_213:
  *(a10 + 12) = v153;
  v154 = *(v20 + 56) * 100.0;
  v155 = -0.5;
  if (v154 <= 0.0)
  {
    v156 = -0.5;
  }

  else
  {
    v156 = 0.5;
  }

  v157 = v154 + v156;
  v158 = v157;
  if (v157 < -2147483650.0)
  {
    LOWORD(v158) = 0;
  }

  if (v157 <= 2147483650.0)
  {
    v159 = v158;
  }

  else
  {
    v159 = -1;
  }

  *(a10 + 18) = v159;
  v160 = *(v20 + 64) * 100.0;
  if (v160 <= 0.0)
  {
    v161 = -0.5;
  }

  else
  {
    v161 = 0.5;
  }

  v162 = v160 + v161;
  v163 = v162;
  if (v162 < -2147483650.0)
  {
    LOWORD(v163) = 0;
  }

  if (v162 <= 2147483650.0)
  {
    v164 = v163;
  }

  else
  {
    v164 = -1;
  }

  *(a10 + 16) = v164;
  v165 = *(v20 + 72) * 100.0;
  if (v165 > 0.0)
  {
    v155 = 0.5;
  }

  v166 = v165 + v155;
  if (v166 <= 2147483650.0)
  {
    if (v166 >= -2147483650.0)
    {
      v167 = v166;
    }

    else
    {
      LOWORD(v167) = 0;
    }
  }

  else
  {
    LOWORD(v167) = -1;
  }

  *(a10 + 20) = v167;
  *(a10 + 22) = *(v20 + 88) >> 1;
  v168 = 3 * *(v20 + 280);
  if (v168 >= 254)
  {
    LOBYTE(v168) = -2;
  }

  *(a10 + 23) = v168 + 1;
  if ((v97 & 1) == 0)
  {
    v218 = (a10 + 72);
    v219 = 123;
    do
    {
      *(v218 + 30) = 0uLL;
      *v218 = 0uLL;
      v218[1] = 0uLL;
      v218 += 3;
      --v219;
    }

    while (v219);
    *(a10 + 7704) = 0u;
    *(a10 + 7678) = 0u;
    *(a10 + 7694) = 0u;
    *(a10 + 7646) = 0u;
    *(a10 + 7662) = 0u;
    *(a10 + 7614) = 0u;
    *(a10 + 7630) = 0u;
    *(a10 + 7582) = 0u;
    *(a10 + 7598) = 0u;
    *(a10 + 7550) = 0u;
    *(a10 + 7566) = 0u;
    *(a10 + 7518) = 0u;
    *(a10 + 7534) = 0u;
    *(a10 + 7502) = 0u;
    memset((a10 + 5976), 255, 0x5F6uLL);
    *(a10 + 8592) = 0;
    *(a10 + 8596) = 0;
    memset(__b, 0, 218);
    Get_SS_Order(__b);
    v220 = 0;
    v221 = v405 + 824;
    v222 = a10 + 7720;
    while (1)
    {
      if (*(__b + v220))
      {
        Constell_Prn = Get_Constell_Prn(v220);
        if (Constell_Prn > 3)
        {
          if (Constell_Prn > 5)
          {
            v224 = (v405 + 20);
            if (Constell_Prn != 6)
            {
              goto LABEL_376;
            }
          }

          else
          {
            v224 = (v405 + 18);
            if (Constell_Prn != 4)
            {
              v224 = (v405 + 16);
            }
          }
        }

        else if (Constell_Prn > 1)
        {
          v224 = (v405 + 15);
          if (Constell_Prn != 2)
          {
            v224 = (v405 + 19);
          }
        }

        else
        {
          v224 = (v405 + 14);
          if (!Constell_Prn)
          {
            EvCrt_Illegal_switch_case("PP_invalidate_AAdata", 2686);
            goto LABEL_376;
          }
        }

        v225 = *v224;
        if (Constell_Prn == 2)
        {
          v226 = v220;
        }

        else
        {
          v226 = *(__b + v220) - 1;
        }

        if (*(v221 + v226) == 1 && *(v405 + 1104 + v226) == 1 || !v225)
        {
          goto LABEL_375;
        }

        if (Constell_Prn == 6)
        {
          if (*(v395 + 50834 + v226) == 1 && (*(v405 + 544 + v226) & 1) == 0)
          {
            v227 = *(__b + v220);
LABEL_379:
            v229 = *(a10 + 8593);
            *(a10 + 6630 + 2 * v229) = v227;
            *(a10 + 8593) = v229 + 1;
            *(v222 + 4 * v226) = 0;
            goto LABEL_376;
          }
        }

        else if (*(v395 + 50616 + v226) == 1 && (*(v405 + 265 + v226) & 1) == 0)
        {
          v227 = v226 + 1;
          goto LABEL_379;
        }

        if (Constell_Prn == 2 || *(v221 + v226))
        {
LABEL_375:
          ++*(a10 + 8594);
          *(v222 + 4 * v226) = 2;
        }

        else
        {
          v228 = *(a10 + 8595);
          *(a10 + 7066 + 2 * v228) = *(__b + v220);
          *(a10 + 8595) = v228 + 1;
          *(v222 + 4 * v226) = 3;
        }
      }

LABEL_376:
      if (++v220 == 218)
      {
        *&v237 = 0x9D9D9D9D9D9D9D9DLL;
        *(&v237 + 1) = 0x9D9D9D9D9D9D9D9DLL;
        *(a11 + 202) = v237;
        *(a11 + 176) = v237;
        *(a11 + 192) = v237;
        *(a11 + 144) = v237;
        *(a11 + 160) = v237;
        *(a11 + 112) = v237;
        *(a11 + 128) = v237;
        *(a11 + 80) = v237;
        *(a11 + 96) = v237;
        *(a11 + 48) = v237;
        *(a11 + 64) = v237;
        *(a11 + 16) = v237;
        *(a11 + 32) = v237;
        *a11 = v237;
        memset_pattern16((a11 + 218), &unk_299050270, 0x1B4uLL);
        *(a11 + 654) = 0;
        v232 = v404;
        v231 = a10;
        *(v404 + 2) = -1;
        *v404 = 0;
        v175 = v405;
        goto LABEL_487;
      }
    }
  }

  v424 = 0u;
  memset(v425, 0, 26);
  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  v418 = 0u;
  v419 = 0u;
  v416 = 0u;
  v417 = 0u;
  v414 = 0u;
  v415 = 0u;
  v413 = 0u;
  if ((*(a10 + 8592) || *(a10 + 8594)) && (*(a11 + 655) & 1) == 0)
  {
    v169 = *(v404 + 2);
    if (v169 != 0xFFFF)
    {
      v170 = v22 - *(v404 + 16) + 604800 * (v400 - *(v404 + 6));
      if (v170 < 0)
      {
        v170 = -v170;
      }

      if (v170 <= 4)
      {
        v171 = 0;
        v172 = 0.0;
        do
        {
          v172 = v172 + (v426[v171] - *(v404 + 40 + 8 * v171)) * (v426[v171] - *(v404 + 40 + 8 * v171));
          v173 = v171 + 3;
          --v171;
        }

        while (v173 > 1);
        if (v172 <= 1.0e10)
        {
          v369 = 0;
          v370 = (v380 + 3120);
          v371 = (v116 + 176);
          v372 = &v413;
          v373 = v405;
          v374 = (v380 + 3120);
          do
          {
            v375 = *v374++;
            if ((v375 == 1 && *(v373 + 265) != 1 || v370[218] == 1 && (*(v373 + 544) & 1) == 0) && *v371 && *(a10 + 7720 + v369) <= 1u)
            {
              *v372 = 1;
            }

            v372 = (v372 + 1);
            v369 += 4;
            v371 += 48;
            ++v373;
            v370 = v374;
          }

          while (v369 != 716);
          v376 = 54;
          while (1)
          {
            if ((v169 + 1) <= 217)
            {
              v377 = v169 + 1;
            }

            else
            {
              v377 = 0;
            }

            *(v404 + 2) = v377;
            v378 = Get_Constell_Prn(v377);
            if ((*(v405 + 14) & 1) != 0 || v378 != 1)
            {
              if ((*(v405 + 15) & 1) != 0 || v378 != 2)
              {
                if ((*(v405 + 19) & 1) != 0 || v378 != 3)
                {
                  if ((*(v405 + 18) & 1) != 0 || v378 != 4)
                  {
                    if ((*(v405 + 16) & 1) != 0 || v378 != 5)
                    {
                      if ((*(v405 + 17) & 1) != 0 || v378 != 7)
                      {
                        LOWORD(v169) = *(v404 + 2);
                        *(&v413 + v169) = 1;
                        goto LABEL_652;
                      }

                      LOWORD(v169) = 217;
                    }

                    else
                    {
                      LOWORD(v169) = 164;
                    }
                  }

                  else
                  {
                    LOWORD(v169) = 154;
                  }
                }

                else
                {
                  LOWORD(v169) = 91;
                }
              }

              else
              {
                LOWORD(v169) = 55;
              }
            }

            else
            {
              LOWORD(v169) = 31;
            }

            *(v404 + 2) = v169;
LABEL_652:
            if (!--v376)
            {
              goto LABEL_250;
            }
          }
        }
      }
    }
  }

  *(a11 + 655) = 0;
  *&v174 = 0x101010101010101;
  *(&v174 + 1) = 0x101010101010101;
  v413 = v174;
  v414 = v174;
  v415 = v174;
  v416 = v174;
  v417 = v174;
  v418 = v174;
  v419 = v174;
  v420 = v174;
  v421 = v174;
  v422 = v174;
  v423 = v174;
  v424 = v174;
  v425[0] = v174;
  *(v425 + 10) = v174;
  *(v404 + 2) = 218;
LABEL_250:
  LODWORD(v412) = 0;
  memset(__b, 255, sizeof(__b));
  memset_pattern16(__src, &unk_299050250, 0x368uLL);
  memset(v446, 0, sizeof(v446));
  v445 = 0u;
  v444 = 0u;
  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v438 = 0u;
  v437 = 0u;
  v436 = 0u;
  memset(v435, 0, sizeof(v435));
  memset(v434, 0, 202);
  *v433 = 0u;
  Get_SS_Order(v433);
  v175 = v405;
  if ((*(v405 + 14) & 1) == 0)
  {
    *&v176 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v176 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *a11 = v176;
    *(a11 + 16) = v176;
    memset_pattern16((a11 + 218), &unk_299050270, 0x40uLL);
  }

  if ((*(v405 + 15) & 1) == 0)
  {
    memset((a11 + 32), 157, 24);
    memset_pattern16((a11 + 282), &unk_299050270, 0x30uLL);
  }

  if ((*(v405 + 19) & 1) == 0)
  {
    *(a11 + 88) = -1650614883;
    *&v177 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v177 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 72) = v177;
    *(a11 + 56) = v177;
    memset_pattern16((a11 + 330), &unk_299050270, 0x48uLL);
  }

  if ((*(v405 + 18) & 1) == 0)
  {
    *&v178 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v178 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 139) = v178;
    *(a11 + 124) = v178;
    *(a11 + 108) = v178;
    *(a11 + 92) = v178;
    memset_pattern16((a11 + 402), &unk_299050270, 0x7EuLL);
  }

  if ((*(v405 + 16) & 1) == 0)
  {
    *(a11 + 155) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 163) = -25187;
    memset_pattern16((a11 + 528), &unk_299050270, 0x14uLL);
  }

  if ((*(v405 + 20) & 1) == 0)
  {
    *(a11 + 171) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 165) = 0x9D9D9D9D9D9D9D9DLL;
    memset_pattern16((a11 + 548), &unk_299050270, 0x1CuLL);
  }

  if ((*(v405 + 17) & 1) == 0)
  {
    *(a11 + 210) = 0x9D9D9D9D9D9D9D9DLL;
    *&v179 = 0x9D9D9D9D9D9D9D9DLL;
    *(&v179 + 1) = 0x9D9D9D9D9D9D9D9DLL;
    *(a11 + 195) = v179;
    *(a11 + 179) = v179;
    memset_pattern16((a11 + 576), &unk_299050270, 0x4EuLL);
  }

  v180 = 0;
  v181 = 0;
  v386 = 0;
  v384 = 0;
  v182 = *(a11 + 176);
  v431[10] = *(a11 + 160);
  v431[11] = v182;
  v432[0] = *(a11 + 192);
  *(v432 + 10) = *(a11 + 202);
  v183 = *(a11 + 112);
  v431[6] = *(a11 + 96);
  v431[7] = v183;
  v184 = *(a11 + 144);
  v431[8] = *(a11 + 128);
  v431[9] = v184;
  v388 = a11 + 218;
  v185 = *(a11 + 48);
  v431[2] = *(a11 + 32);
  v431[3] = v185;
  v393 = v405 + 1104;
  v186 = *(a11 + 80);
  v187 = a10 + 7502;
  v431[4] = *(a11 + 64);
  v431[5] = v186;
  v188 = *(a11 + 16);
  v431[0] = *a11;
  v431[1] = v188;
  do
  {
    if (!v433[v180])
    {
LABEL_289:
      v198 = 2;
      v193 = v180;
      goto LABEL_290;
    }

    v189 = Get_Constell_Prn(v180);
    v190 = v189;
    if (v189 > 3)
    {
      switch(v189)
      {
        case 4:
          v192 = *(v405 + 18);
          break;
        case 5:
          v192 = *(v405 + 16);
          break;
        case 6:
          v192 = *(v405 + 20);
          break;
        default:
          goto LABEL_291;
      }

      goto LABEL_281;
    }

    switch(v189)
    {
      case 1:
        v192 = *(v405 + 14);
LABEL_281:
        if (v192 != 1)
        {
          goto LABEL_289;
        }

        v191 = v433[v180] - 1;
        break;
      case 2:
        if (*(v405 + 15) != 1)
        {
          goto LABEL_289;
        }

        LongPrnIdx_To_ShortPrnIdx(v180, 0);
        v191 = v180;
        break;
      case 3:
        if (*(v405 + 19) != 1)
        {
          goto LABEL_289;
        }

        v191 = v433[v180] - 1;
        LongPrnIdx_To_ShortPrnIdx(v191, 0);
        break;
      default:
        goto LABEL_291;
    }

    v193 = v191;
    if (*(v395 + 50616 + v191) == 1 && *(v405 + 265 + v191) != 1)
    {
      if (*(&v413 + v191) == 1)
      {
        v195 = (a11 + v191);
        *v195 = -99;
        v196 = (v388 + 2 * v191);
        *v196 = -400;
LABEL_297:
        v199 = (v403 + 192 * v193);
        if (*(v199 + 44))
        {
          v428 = 0;
          memset(v427, 0, sizeof(v427));
          v429[0] = 0;
          *(v429 + 3) = 0;
          v200 = v199[9];
          v430[8] = v199[8];
          v430[9] = v200;
          v201 = v199[11];
          v430[10] = v199[10];
          v430[11] = v201;
          v202 = v199[5];
          v430[4] = v199[4];
          v430[5] = v202;
          v203 = v199[7];
          v430[6] = v199[6];
          v430[7] = v203;
          v204 = v199[1];
          v430[0] = *v199;
          v430[1] = v204;
          v205 = v199[3];
          v430[2] = v199[2];
          v430[3] = v205;
          if (Comp_CurrState(0x258u, *(v404 + 6), v430, v427, *(v404 + 16), 22000000.0))
          {
            Comp_AzEl(v404 + 24, v20 + 136, v427, v195, v196, (a11 + 656 + 40 * v193), (a11 + 9376 + 40 * v193));
          }
        }

        v197 = 1;
        goto LABEL_306;
      }

      v197 = 1;
      goto LABEL_304;
    }

    if (*(v395 + 50834 + v191) != 1)
    {
      if (*(&v413 + v191) == 1)
      {
        v197 = 0;
        *(a11 + v191) = -99;
        *(v388 + 2 * v191) = -400;
        goto LABEL_306;
      }

      v197 = 0;
LABEL_304:
      if (!*(v403 + 192 * v191 + 176))
      {
        *(a11 + v191) = -99;
      }

      goto LABEL_306;
    }

    v194 = *(v405 + 544 + v191);
    if ((*(&v413 + v191) & 1) == 0)
    {
      v197 = v194 ^ 1;
      goto LABEL_304;
    }

    v195 = (a11 + v191);
    *v195 = -99;
    v196 = (v388 + 2 * v191);
    *v196 = -400;
    if ((v194 & 1) == 0)
    {
      goto LABEL_297;
    }

    v197 = 0;
LABEL_306:
    if (*(v405 + 824 + v193) == 1 && *(v393 + v193) == 1)
    {
LABEL_329:
      v211 = BYTE2(v412);
      *(&__b[54] + BYTE2(v412) + 4) = v193 + 1;
      BYTE2(v412) = v211 + 1;
      v198 = 2;
      goto LABEL_290;
    }

    if (v197)
    {
      v206 = *(a11 + v193);
      if (v206 < -90)
      {
        v198 = 0;
        *(__b + v384++) = v193 + 1;
      }

      else
      {
        v207 = v386;
        if (v206 > 1)
        {
          v207 = v386 + 1;
        }

        v386 = v207;
        if (v206 > 1)
        {
          v198 = 1;
        }

        else
        {
          v198 = 2;
        }

        if (v206 >= 2)
        {
          v208 = *(v403 + 192 * v193 + 176);
          if (v190 == 2)
          {
            v209 = 15;
          }

          else
          {
            v209 = 10;
          }

          if (v208 == 2)
          {
            if (((v209 > v206) & *(v187 + v193)) != 0)
            {
              v210 = *(a11 + v193);
            }

            else
            {
              v210 = v206 + 9;
            }
          }

          else if (v208 == 1)
          {
            if (v209 > v206 && *(v187 + v193))
            {
              v210 = v206 + 9;
            }

            else
            {
              v210 = v206 + 100;
            }
          }

          else
          {
            v210 = 0;
          }

          *(v435 + v193) = v210;
          v212 = BYTE1(v412);
          if (BYTE1(v412))
          {
            v213 = 0;
            while (*(v435 + *(&__b[27] + v213 + 2) - 1) >= v210)
            {
              if (BYTE1(v412) == ++v213)
              {
                goto LABEL_344;
              }
            }
          }

          else
          {
            LODWORD(v213) = 0;
          }

          if (v213 < BYTE1(v412))
          {
            v214 = v213;
            v215 = &__b[27] + BYTE1(v412) + 2;
            v216 = v215;
            do
            {
              --v212;
              v217 = *--v216;
              *v215 = v217;
              v215 = v216;
            }

            while (v212 > v214);
          }

LABEL_344:
          *(&__b[27] + v212 + 2) = v193 + 1;
        }

        ++*(&v412 + v198);
      }

      goto LABEL_290;
    }

    if ((v190 - 1) >= 5)
    {
      if (*(v393 + v193))
      {
        goto LABEL_329;
      }
    }

    else if (*(v405 + 824 + v193))
    {
      goto LABEL_329;
    }

    *(&__b[81] + v181++ + 6) = v193 + 1;
    v198 = 3;
LABEL_290:
    *(__src + v193) = v198;
LABEL_291:
    ++v180;
  }

  while (v180 != 218);
  v230 = 0;
  v232 = v404;
  v231 = a10;
  while (2)
  {
    v233 = *(v431 + v230);
    if (v233 < -90 || ((v234 = *(a11 + v230), v234 >= -90) ? (v235 = v233 < v234) : (v235 = 1), v235))
    {
      v236 = 0;
      goto LABEL_387;
    }

    if (v233 > v234)
    {
      v236 = 1;
LABEL_387:
      *(v187 + v230) = v236;
    }

    if (++v230 != 218)
    {
      continue;
    }

    break;
  }

  memcpy((a10 + 7720), __src, 0x368uLL);
  memcpy((a10 + 7066), &__b[81] + 12, 0x1B4uLL);
  memcpy((a10 + 6630), __b, 0x1B4uLL);
  memcpy((a10 + 6194), &__b[27] + 4, 0x1B4uLL);
  v238 = BYTE1(v412);
  *(a10 + 8592) = BYTE1(v412);
  *(a10 + 8594) = BYTE2(v412);
  *(a10 + 8595) = v181;
  *(a10 + 8593) = v384;
  *(a11 + 654) = v386;
  if (!v238 && !*(a10 + 8596))
  {
    *&v254 = -1;
    *(&v254 + 1) = -1;
    *(a10 + 6178) = v254;
    *(a10 + 6152) = v254;
    *(a10 + 6168) = v254;
    *(a10 + 6120) = v254;
    *(a10 + 6136) = v254;
    *(a10 + 6088) = v254;
    *(a10 + 6104) = v254;
    *(a10 + 6056) = v254;
    *(a10 + 6072) = v254;
    *(a10 + 6024) = v254;
    *(a10 + 6040) = v254;
    *(a10 + 5992) = v254;
    *(a10 + 6008) = v254;
    *(a10 + 5976) = v254;
    v116 = v403;
    goto LABEL_487;
  }

  LOBYTE(v435[0]) = 0;
  *(&v435[1] + 1) = 0;
  LODWORD(v436) = 0;
  *&v438 = 0;
  *(v435 + 4) = 0uLL;
  *&v437 = 0;
  *(&v436 + 1) = 0;
  *(&v437 + 5) = 0;
  memset(__src, 0, 191);
  *&v239 = -1;
  *(&v239 + 1) = -1;
  *(a10 + 5976) = v239;
  *(a10 + 5992) = v239;
  *(a10 + 6008) = v239;
  *(a10 + 6024) = v239;
  *(a10 + 6040) = v239;
  *(a10 + 6056) = v239;
  *(a10 + 6072) = v239;
  *(a10 + 6088) = v239;
  *(a10 + 6104) = v239;
  *(a10 + 6120) = v239;
  *(a10 + 6136) = v239;
  *(a10 + 6152) = v239;
  *(a10 + 6168) = v239;
  v240 = (a10 + 72);
  v241 = 123;
  *(a10 + 6178) = v239;
  do
  {
    *(v240 + 30) = 0uLL;
    *v240 = 0uLL;
    v240[1] = 0uLL;
    v240 += 3;
    --v241;
  }

  while (v241);
  *(a10 + 8596) = 0;
  v242 = 0.0;
  v243 = 0.0;
  if ((*(v395 + 25344) - 2) <= 4)
  {
    if (*(v395 + 25388) - *(v404 + 6) >= 0)
    {
      v244 = -((*(v395 + 25388) - *(v404 + 6)) & 0x3F);
    }

    else
    {
      v244 = (*(v404 + 6) - *(v395 + 25388)) & 0x3F;
    }

    if (v244 > 31)
    {
      v244 -= 64;
    }

    v243 = *(v395 + 25368) + *(v395 + 25376) * (*(v404 + 16) - *(v395 + 25384) + 604800 * v244);
  }

  if ((*(v380 + 3060) - 2) <= 4)
  {
    if (*(v380 + 3116) - *(v404 + 6) >= 0)
    {
      v245 = -((*(v380 + 3116) - *(v404 + 6)) & 0x3FF);
    }

    else
    {
      v245 = (*(v404 + 6) - *(v380 + 3116)) & 0x3FF;
    }

    if (v245 > 511)
    {
      v245 -= 1024;
    }

    if (v245 < -512)
    {
      v245 += 1024;
    }

    v246 = *(v404 + 16) - *(v380 + 3112) + (604800 * v245);
    v242 = *(v380 + 3088) + *(v380 + 3096) * v246 + *(v380 + 3104) * (v246 * v246);
  }

  bzero(__b, 0x6D0uLL);
  v247 = 0;
  while (2)
  {
    v248 = Get_Constell_Prn(v247);
    if (v248 > 3)
    {
      if (v248 > 5)
      {
        if (v248 == 6)
        {
          v249 = 0x4181277DB7AE147BLL;
          goto LABEL_426;
        }
      }

      else if (v248 == 4)
      {
        v249 = 0x4177288351916873;
        goto LABEL_426;
      }

      v249 = 0x418270DA58A7EF9ELL;
      goto LABEL_426;
    }

    if (v248 > 1)
    {
      if (v248 == 2)
      {
        v249 = 0x4174DEFB16F1A9FCLL;
      }

      else
      {
        v249 = 0x4178DFA97D89374CLL;
      }

      goto LABEL_426;
    }

    v249 = 0x417603BF34418937;
    if (v248)
    {
LABEL_426:
      *(__b + v247) = v249;
    }

    if (++v247 != 218)
    {
      continue;
    }

    break;
  }

  v250 = 0;
  v251 = v383 + 3424;
  do
  {
    v252 = v251 + 4 * v250;
    v253 = *(v252 - 3328);
    if (Is_Legal(v253) && *(v252 - 2176) >= 11)
    {
      *(__b + GNSS_Id_To_Num_Prn_Idx(v253)) = *(v251 + 8 * v250);
    }

    ++v250;
  }

  while (v250 != 128);
  if (*(a9 + 6) - 4 >= 0xFFFFFFFD)
  {
    v116 = v403;
    v175 = v405;
    if (*(a9 + 4) && *a9 <= 0x93A7Fu)
    {
      v255 = *(v404 + 16) + 604800 * (*(v404 + 6) - *(a9 + 4)) - *a9;
      if (v255 < 0)
      {
        v255 = *a9 - (*(v404 + 16) + 604800 * (*(v404 + 6) - *(a9 + 4)));
      }

      v401 = v255 < 0x1C21;
    }

    else
    {
      v401 = 0;
    }
  }

  else
  {
    v401 = 0;
    v116 = v403;
    v175 = v405;
  }

  v256 = 0;
  v398 = v395 + 59772;
  v257 = 656;
  v258 = 9376;
  v259 = v116;
  while (2)
  {
    v260 = Get_Constell_Prn(v256);
    LODWORD(v431[0]) = v260;
    if (v260 == 7)
    {
      goto LABEL_483;
    }

    if (*(a10 + 8596) <= 0x7Au)
    {
      v262 = v260;
      if (*(v175 + v256 + 824) == 1 && (*(v175 + v256 + 1104) & 1) != 0)
      {
        goto LABEL_483;
      }

      if (*(a11 + v256) < 2)
      {
        goto LABEL_483;
      }

      v263 = v259[9];
      __src[8] = v259[8];
      __src[9] = v263;
      v264 = v259[11];
      __src[10] = v259[10];
      __src[11] = v264;
      v265 = v259[5];
      __src[4] = v259[4];
      __src[5] = v265;
      v266 = v259[7];
      __src[6] = v259[6];
      __src[7] = v266;
      v267 = v259[1];
      __src[0] = *v259;
      __src[1] = v267;
      v261 = v259[2];
      v268 = v259[3];
      __src[2] = v261;
      __src[3] = v268;
      if (!LODWORD(__src[11]))
      {
        goto LABEL_483;
      }

      v269 = 0;
      v270 = *(v20 + 324);
      v271 = *(v20 + 96);
      v272 = *(v20 + 224);
      if (v262 > 3)
      {
        if (v262 == 4)
        {
          v271 = *v379;
          goto LABEL_462;
        }

        if (v262 != 5)
        {
          v273 = (v380 + 3060);
          v274 = v242;
          if (v262 != 6)
          {
            goto LABEL_468;
          }

          goto LABEL_457;
        }

LABEL_459:
        if (*(v175 + 43) != 1)
        {
          goto LABEL_467;
        }

        v276 = v175 + v256;
      }

      else
      {
        if (v262 != 1)
        {
          if (v262 != 2)
          {
            v273 = (v395 + 25344);
            v274 = v243;
            if (v262 != 3)
            {
LABEL_468:
              v278 = Comp_PrePos(v270, *(v404 + 6), __src, (v404 + 24), v20 + 32, a11 + v258, (a11 + v257), v269 & 1, v271, *(v20 + 104), *(v20 + 216), v272, *(v20 + 232), *(v20 + 240), *(v20 + 256), *(v20 + 264), *(v20 + 272), *(v404 + 16), v20, *(__b + v256), *(v20 + 312), v401, (v395 + 8952), a9, *(v175 + 60), v435);
              LOBYTE(v435[0]) = v278;
              if (!v278)
              {
                goto LABEL_483;
              }

              *v433 = 0;
              v433[4] = 0;
              *&v433[8] = 0;
              *&v434[0] = 0;
              BYTE8(v434[0]) = 0;
              memset(v434 + 10, 0, 20);
              v279 = LongPrnIdx_To_Prn(v256, v431);
              v433[10] = v279;
              v433[8] = v431[0];
              if (LODWORD(v431[0]) == 2)
              {
                v280 = *(*(a10 + 8680) + 4 * v279 - 4);
                v433[11] = v280;
                if ((v280 - 7) < 0xFFFFFFF2)
                {
                  EvCrt_v("PP_Update_AcqAid:  %d  Skipping AA for R %d  Freq Id not known %d", v256, v256 - 31, v280);
                  goto LABEL_483;
                }

                v433[10] = v280;
              }

              BYTE8(v434[1]) = -1;
              BYTE10(v434[1]) = -1;
              BYTE9(v434[1]) = *(a11 + v256);
              v281 = *(a11 + 2 * v256 + 218);
              if (v281 <= 0x168)
              {
                BYTE10(v434[1]) = v281 >> 1;
              }

              v282 = Comp_AcqAid(*(v20 + 208), *(v20 + 320), *(v20 + 322), v435, v433, *(v20 + 128));
              v433[4] = v282;
              if (*(v398 + v256))
              {
                v283 = 1;
              }

              else
              {
                v283 = *(v398 + v256 + 218);
              }

              v433[12] = v283 & 1;
              v433[13] = *(v398 + v256 + 436);
              if (*(v20 + 296) <= 1 && v433[14] >= 2u)
              {
                v433[14] = 1;
              }

              if (v282)
              {
                v284 = *(a10 + 8596);
                v285 = (a10 + 72 + 48 * v284);
                v286 = v434[0];
                *v285 = *v433;
                v285[1] = v286;
                v261 = v434[1];
                v285[2] = v434[1];
                *(a10 + 5976 + v256) = v284;
                ++*(a10 + 8596);
              }

LABEL_483:
              ++v256;
              v257 += 40;
              v258 += 40;
              v259 += 12;
              if (v256 == 179)
              {
                goto LABEL_486;
              }

              continue;
            }

LABEL_457:
            v275 = v271 - v274;
            if ((*v273 - 2) < 5)
            {
              v271 = v275;
            }

            goto LABEL_459;
          }

          v271 = *(v20 + 112);
          v277 = *(v20 + 328);
          if (v277 < v270)
          {
            v269 = 0;
            v272 = sqrt((g_TOW_Stat_Var99_Table[v270] * -299792458.0 + g_TOW_Stat_Var99_Table[v277] * 299792458.0) * 299792458.0 + v272 * v272);
            v270 = *(v20 + 328);
            goto LABEL_468;
          }

LABEL_467:
          v269 = 0;
          goto LABEL_468;
        }

LABEL_462:
        if (*(v175 + 43) != 1)
        {
          goto LABEL_467;
        }

        v276 = v175 + v256;
        if (*(v175 + v256 + 1104))
        {
          goto LABEL_467;
        }
      }

      v269 = *(v276 + 544) ^ 1;
      goto LABEL_468;
    }

    break;
  }

  v261.n128_f64[0] = gn_report_assertion_failure("PP_Update_AcqAid: num_AA overflow caught");
LABEL_486:
  v231 = a10;
  PP_BDS_D2_Set_Not_Visible((a10 + 8592), (a10 + 8594), a10 + 6194, a10 + 7720, v261);
  PP_BDS_D2_Set_Not_Visible((a10 + 8593), (a10 + 8594), v231 + 6630, (v231 + 965), v287);
  PP_BDS_D2_Set_Not_Visible((a10 + 8595), (a10 + 8594), v231 + 7066, (v231 + 965), v288);
  v232 = v404;
LABEL_487:
  v289 = v392;
  if (*(v20 + 332) == 1)
  {
    v290 = *(v232 + 4);
    if (v290 <= 0xC7)
    {
      *(v232 + 4) = v290 + 1;
    }

    if (*v392)
    {
      *(v20 + 332) = 0;
      goto LABEL_492;
    }

    v292 = v392 + 4;
    v291 = *(v392 + 1);
    v293 = 1;
LABEL_495:
    if (*(a10 + 8592) || *(a10 + 8596))
    {
      if (v291 == 2 || (v391 & v293) != 0)
      {
        if ((v392[444] & 1) == 0)
        {
          ++*(v392 + 223);
        }

        v392[444] = 1;
        *&v294 = 0x1111111111111111;
        *(&v294 + 1) = 0x1111111111111111;
        *(v392 + 28) = v294;
        *(v392 + 29) = v294;
        *(v392 + 30) = v294;
        *(v392 + 31) = v294;
        *(v392 + 32) = v294;
        *(v392 + 33) = v294;
        *(v392 + 34) = v294;
        *(v392 + 35) = v294;
        v295 = (v20 + 208);
        v296 = 1072;
        v297 = vld1q_dup_f32(v295);
        do
        {
          *&v392[v296] = v297;
          v296 -= 16;
        }

        while (v296 != 560);
        EvCrt_v("ChanReset ALL : PrePos2  BadNav %d  PosDisc %d  NavProbs %d  NavDiscrep %d  Count %d", v291, *(v20 + 332), *(v232 + 4), *v392, *(v392 + 223));
        v291 = *(v392 + 1);
      }

      if (v291 && !v391 && (*(v20 + 332) & 1) != 0)
      {
        v298 = 0;
        v299 = v383 + 96;
        v300 = v383 + 1760;
        do
        {
          if (Is_Legal(*(v299 + 4 * v298)) && *(v300 + v298) <= 0x18u)
          {
            v392[v298 + 448] = 17;
            v301 = (v20 + 208);
            v302 = vld1q_dup_f32(v301);
            for (j = 1072; j != 560; j -= 16)
            {
              *&v392[j] = v302;
            }

            GNSS_SV_Str = Get_GNSS_SV_Str(*(v299 + 4 * v298));
            EvCrt_v("ChanReset %d : PrePos3  %s  NavProbs %d  NavDiscrep %d  SNR %d", v298, GNSS_SV_Str, *(v404 + 4), *v392, *(v300 + v298));
          }

          ++v298;
        }

        while (v298 != 128);
      }
    }

    else
    {
      memcpy(__b, v231 + 6630, 0x1B4uLL);
      v305 = v231;
      v306 = 0;
      v307 = 0;
      v390 = -*(v20 + 320);
      v308 = v392 + 8;
      v389 = *(v20 + 208);
      v309 = v305 + 965;
      v387 = *(v20 + 322);
      v382 = v305 + 747;
      v381 = v305 + 6194;
      v385 = v305 + 9;
      do
      {
        if (v308[v306] == 1)
        {
          if (*(v309 + v306) || v307 > 0x7A)
          {
            goto LABEL_527;
          }

          LODWORD(__src[0]) = 0;
          v310 = LongPrnIdx_To_Prn(v306, __src);
          v311 = __src[0];
          if (LODWORD(__src[0]) == 2)
          {
            v310 = *(*(a10 + 8680) + 4 * v310 - 4);
          }

          v312 = 0;
          v313 = 217;
          v314 = __b + 2;
          do
          {
            if (v306 + 1 == *(__b + v312))
            {
              v315 = v313;
              v316 = v314;
              if (v312 <= 0xD8)
              {
                do
                {
                  *(v316 - 1) = *v316;
                  ++v316;
                  --v315;
                }

                while (v315);
              }

              WORD1(__b[27]) = -1;
            }

            ++v312;
            v314 += 2;
            --v313;
          }

          while (v312 != 218);
          v317 = v311 | (v310 << 16);
          Default_PR_ms_Amb = API_Get_Default_PR_ms_Amb(v317);
          v319 = &v385[6 * v307];
          *v319 = v389;
          *(v319 + 4) = 1;
          *(v319 + 2) = v317;
          *(v319 + 3) = 0;
          *(v319 + 8) = 2 * Default_PR_ms_Amb;
          *(v319 + 9) = v387;
          *(v319 + 10) = 0;
          *(v319 + 11) = v390;
          *(v319 + 24) = -1;
          *(v319 + 13) = 5115;
          *(v319 + 28) = 0;
          *(v319 + 9) = 0;
          *(v319 + 10) = 157;
          *(v319 + 22) = 0;
          memcpy((a10 + 6630), __b, 0x1B4uLL);
          *(v382 + v306) = v307;
          *&v381[2 * v307] = v306 + 1;
          *(v309 + v306) = 1;
          *(a10 + 8596) = ++v307;
          *(a10 + 8592) = v307;
          --*(a10 + 8593);
          if (v308[v306])
          {
LABEL_527:
            v320 = v392[v306 + 226];
            v392[v320 + 448] = 17;
            *&v392[4 * v320 + 576] = *(v20 + 208);
            v321 = Get_GNSS_SV_Str(*(v383 + 96 + 4 * v320));
            EvCrt_v("ChanReset %d : PrePos1  %s  BadNav %d  PosDisc %d  NavProbs %d  NavDiscrep %d  SNR %d", v320, v321, *(v392 + 1), *(v20 + 332), *(v404 + 4), *v392, *(v383 + 1760 + v306));
          }
        }

        ++v306;
      }

      while (v306 != 218);
      v289 = v392;
    }

    if (*v292)
    {
      *(v289 + 8) = 0u;
      *(v289 + 110) = 0;
      *(v289 + 408) = 0u;
      *(v289 + 424) = 0u;
      *(v289 + 376) = 0u;
      *(v289 + 392) = 0u;
      *(v289 + 344) = 0u;
      *(v289 + 360) = 0u;
      *(v289 + 312) = 0u;
      *(v289 + 328) = 0u;
      *(v289 + 280) = 0u;
      *(v289 + 296) = 0u;
      *(v289 + 248) = 0u;
      *(v289 + 264) = 0u;
      *(v289 + 216) = 0u;
      *(v289 + 232) = 0u;
      *(v289 + 184) = 0u;
      *(v289 + 200) = 0u;
      *(v289 + 152) = 0u;
      *(v289 + 168) = 0u;
      *(v289 + 120) = 0u;
      *(v289 + 136) = 0u;
      *(v289 + 88) = 0u;
      *(v289 + 104) = 0u;
      *(v289 + 56) = 0u;
      *(v289 + 72) = 0u;
      *(v289 + 24) = 0u;
      *(v289 + 40) = 0u;
      *(v289 + 1) = 0;
    }

    v116 = v403;
    v231 = a10;
    v175 = v405;
    if (*(v20 + 332) == 1)
    {
      *v289 = 1;
    }
  }

  else
  {
LABEL_492:
    v292 = v392 + 4;
    v291 = *(v392 + 1);
    if (v291)
    {
      v293 = 0;
      goto LABEL_495;
    }
  }

  v322 = *(v175 + 15);
  *(a10 + 8670) = 0;
  if (v322 == 1)
  {
    v323 = 0;
    *(a10 + 8671) = 14;
    v231[1082] = 0;
    v394 = v231 + 1082;
    *(v231 + 8662) = 0;
    do
    {
      if ((*(*(v175 + 496) + v323) & 1) == 0 && *(*(v175 + 1056) + v323) != 1)
      {
        v324 = 0;
        goto LABEL_543;
      }

      ++v323;
    }

    while (v323 != 24);
    *(a10 + 8671) = 3584;
    v324 = 3;
LABEL_543:
    v397 = v20;
    v325 = v231 + 1075;
    v326 = v231 + 2151;
    v327 = xmmword_299050240;
    v328 = vdupq_n_s64(2uLL);
    v329 = 14;
    do
    {
      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v327)).u8[0])
      {
        *(v326 - 1) = v324;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), *&v327)).i32[1])
      {
        *v326 = v324;
      }

      v327 = vaddq_s64(v327, v328);
      v326 += 2;
      v329 -= 2;
    }

    while (v329);
    v330 = 0;
    v331 = v231 + 3097;
    v402 = v231 + 965;
    v399 = v395 + 17480;
    v332 = v231 + 747;
    v396 = v231 + 9;
    while (2)
    {
      LODWORD(__b[0]) = 0;
      v333 = v331[v330];
      v334 = v333 - 1;
      if (v333 >= 1)
      {
        v335 = LongPrnIdx_To_ShortPrnIdx((v333 - 1), __b);
        if (LODWORD(__b[0]) == 2)
        {
          v337 = v335;
          v338 = *(v231[1085] + 4 * v335);
          if (v338 != 2139062143)
          {
            v339 = v338 + 7;
            v340 = *(v402 + v334);
            if (v340 == 3)
            {
              if (!*(v325 + v339))
              {
                --*(a10 + 8671);
              }

              ++*(a10 + 8672);
              *(v325 + v339) = 3;
              *(v231[1086] + 4 * v339) = v335 + 1;
              *(v399 + 4 * v339) = 3;
LABEL_576:
              v175 = v405;
            }

            else
            {
              if (v340 != 1)
              {
                goto LABEL_576;
              }

              v341 = *(v325 + v339);
              if (v341 != 1)
              {
                v342 = *(a10 + 8670);
                if (v342 <= 13)
                {
                  if (!v341)
                  {
                    --*(a10 + 8671);
                  }

                  *(v394 + v342) = v338;
                  ++*(a10 + 8670);
                  *(v325 + v339) = 1;
                  *(v231[1086] + 4 * v339) = v335 + 1;
                  *(v399 + 4 * v339) = 3;
                  goto LABEL_576;
                }
              }

              *(v402 + v334) = 2;
              v343 = *(a10 + 8592);
              if (v343 == *(a10 + 8596))
              {
                EvLog_v("PP_Update_Glonass: num_viz & num_AA miss-match,  %d  %d   FrqId %d   Slot %d", *(a10 + 8592), v343, v339, v335 + 1);
                v343 = *(a10 + 8592);
              }

              v344 = 0;
              if (v343)
              {
                v345 = v343;
                v346 = v331;
                do
                {
                  v348 = *v346++;
                  v347 = v348;
                  if (v348 != v333)
                  {
                    v331[v344] = v347;
                    v344 = (v344 + 1);
                  }

                  --v345;
                }

                while (v345);
              }

              if (v344 != (v343 - 1))
              {
                EvLog_nd("PP_Update_Glonass: num_vis not decremented", 2, v336, v344, v343);
              }

              v331[v344] = -1;
              *(a10 + 8592) = v344;
              v349 = *(a10 + 8596) - 1;
              if (v349 == v344)
              {
                v350 = *(v332 + v334);
                *(a10 + 8596) = v349;
                v231 = a10;
                if ((v350 & 0x8000000000000000) == 0)
                {
                  v351 = &v396[6 * v350];
                  *(v351 + 30) = 0u;
                  *v351 = 0u;
                  v351[1] = 0u;
                  *(v332 + v334) = -1;
                }

                v330 -= v330 > 0;
                EvCrt_v("PP_Update_Glonass:  Error:  Two Glonass SVs visible on same freq,  FrqId %d  Slot %d", v339, v337 + 1);
                goto LABEL_576;
              }

              v231 = a10;
              v175 = v405;
            }
          }
        }
      }

      v235 = v330++ < 217;
      if (v235)
      {
        continue;
      }

      break;
    }

    v352 = 0;
    v353 = v231 + 981;
    v116 = v403;
    v20 = v397;
    while (2)
    {
      if (*(v325 + v352))
      {
LABEL_581:
        if (++v352 == 14)
        {
          goto LABEL_541;
        }

        continue;
      }

      break;
    }

    v354 = 0;
    v355 = 0;
    *&__b[0] = 0;
    v356 = v231[1085];
    v357 = 1;
    do
    {
      v358 = *(v356 + 4 * v354);
      if (v358 == v352 - 7)
      {
        *(__b + v355++) = v354;
      }

      else
      {
        v357 &= v358 != 2139062143;
      }

      if (v354 > 0x16)
      {
        break;
      }

      ++v354;
    }

    while (v355 < 2);
    if (v355 == 2)
    {
      v359 = *(v353 + SLODWORD(__b[0]));
      if (v359 == 3)
      {
        v360 = *(v353 + SDWORD1(__b[0]));
        if (v360 == 3)
        {
          *(v325 + v352) = 3;
          v361 = a10 + 0x2000;
          ++*(a10 + 8672);
LABEL_601:
          --*(v361 + 479);
          goto LABEL_581;
        }

LABEL_595:
        v362 = v360 > 1;
        if ((v357 & 1) == 0)
        {
LABEL_602:
          v363 = 0;
          goto LABEL_603;
        }

LABEL_598:
        if (v355 != 1)
        {
          if (!v355)
          {
            *(v325 + v352) = 2;
            v361 = a10 + 0x2000;
            goto LABEL_601;
          }

          goto LABEL_602;
        }

        v363 = *(v353 + SLODWORD(__b[0])) > 1;
LABEL_603:
        if (v362 || v363)
        {
          *(v325 + v352) = 2;
          --*(a10 + 8671);
          if (v355 == 2 && (v357 & 1) != 0)
          {
            v364 = __b[0];
            v365 = *(SLODWORD(__b[0]) + a11 + 32);
            v366 = *(SDWORD1(__b[0]) + a11 + 32);
            if (v366 <= -5)
            {
              v367 = __b[0];
            }

            else
            {
              v367 = DWORD1(__b[0]);
            }

            if (v365 <= -5)
            {
              v368 = DWORD1(__b[0]);
            }

            else
            {
              v368 = __b[0];
            }

            if (v365 < v366)
            {
              v364 = DWORD1(__b[0]);
            }

            if (v366 == -99)
            {
              v364 = v368;
            }

            if (v365 == -99)
            {
              v364 = v367;
            }

            *(v231[1086] + 4 * v352) = v364 + 1;
            *(v399 + 4 * v352) = 3;
          }
        }

        goto LABEL_581;
      }

      if (v359 >= 2)
      {
        v360 = *(v353 + SDWORD1(__b[0]));
        goto LABEL_595;
      }
    }

    v362 = 0;
    if ((v357 & 1) == 0)
    {
      goto LABEL_602;
    }

    goto LABEL_598;
  }

  *(a10 + 8671) = 0;
  memset_pattern16(v231 + 1075, &unk_299050260, 0x38uLL);
LABEL_541:
  SB_SBAS_PrePos(v404, v20, v175, v116, v231, a11);
}