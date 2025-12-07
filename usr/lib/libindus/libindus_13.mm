void GNS_AsstGpsNavModel(uint64_t a1, int a2, int a3, const void *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 68, "GNS_AsstGpsNavModel");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (a3 && a4)
  {
    if ((a2 - 1) >= 2)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v13 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GNS_AsstGpsNavModel", 515, a2);
        gnssOsa_PrintLog(__str, 2, 1, 0);
        if (g_LbsOsaTrace_Config >= 5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 390, 1, 0x20uLL);
      if (!v8)
      {
        if (g_LbsOsaTrace_Config < 5)
        {
          return;
        }

        goto LABEL_19;
      }

      v9 = v8;
      *(v8 + 3) = a2;
      *(v8 + 24) = a3;
      v10 = gnssOsa_Calloc("GNS_AsstGpsNavModel", 401, a3, 0x54uLL);
      v9[2] = v10;
      if (!v10)
      {
        free(v9);
        return;
      }

      memcpy_s("GNS_AsstGpsNavModel", 412, v10, 84 * a3, a4, (84 * a3));
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GNS_AsstGpsNavModel");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8657923, v9);
      if (g_LbsOsaTrace_Config >= 5)
      {
LABEL_19:
        bzero(__str, 0x3C6uLL);
        v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v14, "GNC", 68, "GNS_AsstGpsNavModel");
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:NavModelElm NumSv,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GNS_AsstGpsNavModel", 513, a3);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 5)
    {
      goto LABEL_19;
    }
  }
}

void GNS_AsstGpsRefTime(uint64_t a1, int a2, __int128 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 68, "GNS_AsstGpsRefTime");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  if (!a3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:RefTime\n");
    goto LABEL_12;
  }

  if ((a2 & 0xFFFFFFFE) != 4)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:AsstSrc,%u\n", v12);
LABEL_12:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return;
    }

    goto LABEL_18;
  }

  if (*a3 >= 0x240C8400u)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:GpsTow,%u\n", v11);
    goto LABEL_17;
  }

  if (*(a3 + 6) >= 0x2000u)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:GpsWkNum,%u\n", v13);
LABEL_17:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config < 5)
    {
      return;
    }

    goto LABEL_18;
  }

  v7 = gnssOsa_Calloc("GNS_AsstGpsRefTime", 493, 1, 0x28uLL);
  if (v7)
  {
    v8 = v7;
    v9 = *a3;
    *(v7 + 28) = *(a3 + 2);
    *(v7 + 12) = v9;
    *(v7 + 9) = a2;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND =>GNCP,Src,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GNS_AsstGpsRefTime", *(v8 + 9));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8657667, v8);
    if (g_LbsOsaTrace_Config >= 5)
    {
LABEL_18:
      bzero(__str, 0x3C6uLL);
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v6, "GNC", 68, "GNS_AsstGpsRefTime");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }
}

BOOL G5K_ME_Poll_New_Meas(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  result = 0;
  v63[1] = *MEMORY[0x29EDCA608];
  v63[0] = 0.0;
  *a6 = 0;
  if (*(a1 + 402) == 1)
  {
    v13 = (a1 + 28216);
    API_Get_UTC_Cor(1, v63);
    v15 = -0.5;
    if (v63[0] > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v63[0] + v15;
    if (v63[0] + v15 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = -1;
    }

    if (*a3 && *(a1 + 440) - *a3 < 0 || *(a1 + 403) == 1 && *a4 && *(a1 + 520) - *a4 < 0 || *(a1 + 407) == 1 && (v18 = a5[3968]) != 0 && *v13 - v18 < 0 || *(a1 + 411) == 1 && (v19 = a5[3969]) != 0 && *(a1 + 28220) - v19 < 0 || *(a1 + 415) == 1 && (v20 = a5[3970]) != 0 && *(a1 + 28224) - v20 < 0 || *(a1 + 419) == 1 && (v21 = a5[3971]) != 0 && *(a1 + 28228) - v21 < 0 || *(a1 + 423) == 1 && (v22 = a5[3972]) != 0 && *(a1 + 28232) - v22 < 0)
    {
      *(a1 + 403) = 0;
      *(a1 + 407) = 0;
      *(a1 + 411) = 0;
      *(a1 + 415) = 0;
      *(a1 + 419) = 0;
      *(a1 + 423) = 0;
      *(a1 + 457) = 0;
      *(a1 + 472) = 0;
      *(a1 + 28240) = 0;
      *(a4 + 11820) = 0;
      *a6 = 1;
    }

    v23 = *(a1 + 516);
    if (v23 && v23 == *(a1 + 440) && *(a1 + 452) > *(a2 + 1668))
    {
      EvCrt_d("ME_Poll_New: Invalid TTick", v23);
    }

    else
    {
      *(a1 + 516) = 0;
      v24 = *(a1 + 520);
      if (*(a1 + 403) == 1 && v24 == *(a1 + 440))
      {
        v25 = a4 + 7208;
        memcpy((a4 + 7208), (a1 + 7736), 0x1200uLL);
        memcpy((a4 + 40), (a1 + 568), 0x1C00uLL);
        *a4 = *(a1 + 520);
        *(a4 + 8) = *(a1 + 528);
        *(a4 + 16) = *(a1 + 536);
        *(a4 + 24) = *(a1 + 544);
        *(a4 + 32) = *(a1 + 552);
        *(a4 + 34) = *(a1 + 556);
        *(a4 + 38) = *(a1 + 560);
        *(a4 + 11816) = *(a1 + 28236);
        *(a2 + 2044) = *(a1 + 554);
        if (*(a1 + 452))
        {
          ++*(a4 + 11820);
        }

        v27 = *(a1 + 404);
        v28 = *(a1 + 405);
        v29 = (v27 - v28);
        if (v29 < 1)
        {
          if ((v29 & 0x80000000) != 0)
          {
            v59 = (v29 + 128);
            v60 = *(a1 + 400) + v59;
            *(a1 + 400) = v60;
            v61 = *(a1 + 396) + 1;
            *(a1 + 396) = v61;
            EvLog_nd("G5K_ME_Poll_New_Meas: Missed {M & {T", 3, v26, v59, v60, v61);
            bzero((a4 + 40), 0x1C00uLL);
            v62 = 128;
            do
            {
              *(v25 + 32) = 0;
              *v25 = 0uLL;
              *(v25 + 16) = 0uLL;
              v25 += 36;
              --v62;
            }

            while (v62);
            EvCrt_v("ME_Poll_New: Flushing due to missed {T");
          }
        }

        else
        {
          v30 = *(a1 + 400) + v27 - v28;
          *(a1 + 400) = v30;
          EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {M", 4, v26, v29, v30, v27, v28);
        }
      }

      else
      {
        if (v24)
        {
          v31 = *(a1 + 398) + 1;
          *(a1 + 398) = v31;
          EvLog_nd("G5K_ME_Poll_New_Meas: Missed {H", 5, v14, v31, *(a1 + 405), *(a1 + 400), v24, *(a1 + 440));
        }

        v32 = *(a1 + 460);
        *a4 = *(a1 + 440);
        *(a4 + 4) = v32;
        *(a4 + 8) = *(a1 + 464);
        v33 = a4 + 7208;
        v34 = 128;
        do
        {
          *(v33 + 32) = 0;
          *v33 = 0uLL;
          *(v33 + 16) = 0uLL;
          v33 += 36;
          --v34;
        }

        while (v34);
        *(a4 + 11816) = 0;
        *(a4 + 11817) = v17;
      }

      if (*(a1 + 407) == 1 && *v13 == *(a1 + 440) || *(a1 + 411) == 1 && *(a1 + 28220) == *(a1 + 440) || *(a1 + 415) == 1 && *(a1 + 28224) == *(a1 + 440) || *(a1 + 419) == 1 && *(a1 + 28228) == *(a1 + 440) || *(a1 + 423) == 1 && *(a1 + 28232) == *(a1 + 440))
      {
        memcpy(a5, (a1 + 12344), 0x3E00uLL);
        if (*(a1 + 407) == 1)
        {
          a5[3968] = *v13;
          v36 = *(a1 + 408);
          v37 = *(a1 + 409);
          v38 = (v36 - v37);
          if (v38 >= 1)
          {
            v39 = *(a1 + 410) + v36 - v37;
            *(a1 + 410) = v39;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {G", 4, v35, v38, v39, v36, v37);
          }
        }

        if (*(a1 + 411) == 1)
        {
          a5[3969] = *(a1 + 28220);
          v40 = *(a1 + 412);
          v41 = *(a1 + 413);
          v42 = (v40 - v41);
          if (v42 >= 1)
          {
            v43 = *(a1 + 414) + v40 - v41;
            *(a1 + 414) = v43;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {F", 4, v35, v42, v43, v40, v41);
          }
        }

        if (*(a1 + 415) == 1)
        {
          a5[3970] = *(a1 + 28224);
          v44 = *(a1 + 416);
          v45 = *(a1 + 417);
          v46 = (v44 - v45);
          if (v46 >= 1)
          {
            v47 = *(a1 + 418) + v44 - v45;
            *(a1 + 418) = v47;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {A I", 4, v35, v46, v47, v44, v45);
          }
        }

        if (*(a1 + 419) == 1)
        {
          a5[3971] = *(a1 + 28228);
          v48 = *(a1 + 420);
          v49 = *(a1 + 421);
          v50 = (v48 - v49);
          if (v50 >= 1)
          {
            v51 = *(a1 + 422) + v48 - v49;
            *(a1 + 422) = v51;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {C", 4, v35, v50, v51, v48, v49);
          }
        }

        if (*(a1 + 423) == 1)
        {
          a5[3972] = *(a1 + 28232);
          v52 = *(a1 + 424);
          v53 = *(a1 + 425);
          v54 = (v52 - v53);
          if (v54 >= 1)
          {
            v55 = *(a1 + 426) + v52 - v53;
            *(a1 + 426) = v55;
            EvCrt_nd("G5K_ME_Poll_New_Meas: Missed {I", 4, v35, v54, v55, v52, v53);
          }
        }
      }

      *a3 = *(a1 + 440);
      *(a3 + 16) = *(a1 + 460);
      *(a3 + 24) = *(a1 + 464);
      *(a2 + 244) = *(a1 + 472);
    }

    *(a1 + 411) = 0;
    *(a1 + 415) = 0;
    *(a1 + 419) = 0;
    *(a1 + 423) = 0;
    *(a1 + 413) = 0;
    *(a1 + 416) = 0;
    *(a1 + 420) = 0;
    *(a1 + 424) = 0;
    v56 = a1 + 7736;
    v57 = (a1 + 12344);
    *(a1 + 402) = 0;
    bzero((a1 + 568), 0x1C00uLL);
    v58 = 128;
    do
    {
      *(v56 + 32) = 0;
      *v56 = 0uLL;
      *(v56 + 16) = 0uLL;
      *(v57 + 105) = 0uLL;
      v57[5] = 0uLL;
      v57[6] = 0uLL;
      v57[3] = 0uLL;
      v57[4] = 0uLL;
      v57[1] = 0uLL;
      v57[2] = 0uLL;
      *v57 = 0uLL;
      v57 = (v57 + 124);
      v56 += 36;
      --v58;
    }

    while (v58);
    *(a1 + 28236) = 0;
    *(a1 + 28237) = v17;
    *(a1 + 28216) = 0u;
    *(a1 + 28232) = 0;
    return *(a1 + 516) == 0;
  }

  return result;
}

void *G5K_ME_Flush_Data(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  __src[3532] = *MEMORY[0x29EDCA608];
  *(v1 + 411) = 0;
  *(v1 + 415) = 0;
  *(v1 + 419) = 0;
  *(v1 + 423) = 0;
  *(v1 + 508) = 0;
  *(v1 + 413) = 0;
  *(v1 + 416) = 0;
  *(v1 + 420) = 0;
  *(v1 + 424) = 0;
  *(v1 + 504) = 0;
  *(v1 + 457) = 0;
  *(v1 + 472) = 0;
  *(v1 + 28240) = 0;
  *(v1 + 402) = 0;
  v2 = *(v1 + 512);
  v3 = *(v1 + 394);
  v4 = *(v1 + 410);
  v5 = *(v1 + 414);
  v6 = *(v1 + 418);
  v7 = *(v1 + 422);
  v8 = *(v1 + 426);
  bzero(__src, 0x6E60uLL);
  v9 = 0x1FFFFFFFFFFFFC80;
  do
  {
    v10 = &__src[v9];
    v10[967] = 0;
    *(v10 + 7748) = 0;
    *(v10 + 3872) = 0;
    v10[973] = 0;
    *(v10 + 485) = 0uLL;
    *(&__src[v9 + 971] + 6) = 0;
    v9 += 7;
  }

  while (v9 * 8);
  v11 = &__src[971];
  v12 = 4608;
  do
  {
    *(v11 - 2) = 0;
    *(v11 - 3) = 0;
    *(v11 - 2) = 0;
    *(v11 - 4) = 0;
    *(v11 - 11) = 0;
    v11 = (v11 + 36);
    v12 -= 36;
  }

  while (v12);
  v13 = -15872;
  do
  {
    v14 = (&__src[3527] + v13);
    *(v14 + 105) = 0uLL;
    v14[5] = 0uLL;
    v14[6] = 0uLL;
    v14[3] = 0uLL;
    v14[4] = 0uLL;
    v14[1] = 0uLL;
    v14[2] = 0uLL;
    *v14 = 0uLL;
    v13 += 124;
  }

  while (v13);
  __src[3530] = 0;
  LODWORD(__src[3531]) = 0;
  memset(&__src[3527], 0, 22);
  result = memcpy(v1, __src, 0x6E5CuLL);
  *(v1 + 384) = v1;
  *(v1 + 512) = v2;
  *(v1 + 394) = v3;
  *(v1 + 410) = v4;
  *(v1 + 414) = v5;
  *(v1 + 418) = v6;
  *(v1 + 422) = v7;
  *(v1 + 426) = v8;
  return result;
}

void Gnm_SendFWExtendedDbgConfig(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v18 = *MEMORY[0x29EDCA608];
  v1 = fopen("/var/db/gpsd/zxDfP.bin", "rb");
  if (!v1)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_11;
    }

    bzero(__ptr, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__ptr, 0x3C5uLL, "%10u %s%c %s: CP extended debug disabled\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    v6 = __ptr;
    v7 = 4;
LABEL_10:
    gnssOsa_PrintLog(v6, v7, 1, 0);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = fread(__ptr, 1uLL, 0x1000uLL, v1);
  fclose(v2);
  if ((Hal_SendData(__ptr, v3) & 1) == 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_11;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CP extended debug send failed\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm_SendFWExtendedDbgConfig");
    v6 = __str;
    v7 = 1;
    goto LABEL_10;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CP extended debug CFG\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  g_LbsOsaTrace_Config = 5;
LABEL_11:
  v9 = fopen("/var/db/gpsd/zxDmM.bin", "rb");
  if (!v9)
  {
    if (g_LbsOsaTrace_Config < 4)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME extended debug disabled\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    v14 = 4;
LABEL_20:
    gnssOsa_PrintLog(__str, v14, 1, 0);
    return;
  }

  v10 = v9;
  v11 = fread(__ptr, 1uLL, 0x1000uLL, v9);
  fclose(v10);
  if ((Hal_SendData(__ptr, v11) & 1) == 0)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME extended debug send failed\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 69, "Gnm_SendFWExtendedDbgConfig");
    v14 = 1;
    goto LABEL_20;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME extended debug CFG\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_SendFWExtendedDbgConfig");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  g_LbsOsaTrace_Config = 5;
}

void Gnm35_15SendDbgCfg(void)
{
  v8[5] = *MEMORY[0x29EDCA608];
  *v8 = xmmword_299052AB0;
  *(&v8[1] + 3) = *(&xmmword_299052AB0 + 11);
  *v7 = xmmword_299052ACB;
  *&v7[11] = *(&xmmword_299052ACB + 11);
  if (g_LbsOsaTrace_Config >= 6uLL)
  {
    v0 = 0;
  }

  else
  {
    v0 = 0x40403020100uLL >> (8 * g_LbsOsaTrace_Config);
  }

  if (((*(*gp_Logger + 72))(gp_Logger) & 4) != 0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  BYTE4(v8[2]) = v1;
  v7[20] = v1;
  BYTE5(v8[2]) = v0;
  LOWORD(v8[3]) = vaddvq_s16(vpaddlq_u8(*&v8[1]));
  Hal00_06ReadBufNtf(0x1BuLL, v8);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (((*(*gp_Logger + 72))(gp_Logger) & 4) != 0)
    {
      v3 = "EN";
    }

    else
    {
      v3 = "DIS";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GCPU DEBUG CFG, mixedmode logging %s,loglevel %d\n", v2, "GNM", 73, "Gnm35_15SendDbgCfg", v3, v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v7[21] = v0;
  *&v7[24] = vaddvq_s16(vpaddlq_u8(*&v7[8]));
  Hal00_06ReadBufNtf(0x1BuLL, v7);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (((*(*gp_Logger + 72))(gp_Logger) & 4) != 0)
    {
      v5 = "EN";
    }

    else
    {
      v5 = "DIS";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ME DEBUG CFG, mixedmode logging %s,loglevel %d\n", v4, "GNM", 73, "Gnm35_15SendDbgCfg", v5, v0);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

uint64_t Gnm35_zxFirmwareDebugConf(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a1[8] == 32)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a1[4] == 80)
      {
        v3 = "GNSSCPCFG";
      }

      else
      {
        v3 = "GNSSMECFG";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s Success\n", v2, "GNM", 73, "Gnm35_zxFirmwareDebugConf", v3);
      v4 = 4;
LABEL_11:
      gnssOsa_PrintLog(__str, v4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = "GNSSMECFG";
    if (a1[4] == 80)
    {
      v6 = "GNSSCPCFG";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx %s Status,%u\n", v5, "GNM", 87, "Gnm35_zxFirmwareDebugConf", 257, v6, a1[8]);
    v4 = 2;
    goto LABEL_11;
  }

  return 0;
}

void Gnm35_EnableBCTInTimeMarkMessage(void)
{
  v3 = *MEMORY[0x29EDCA608];
  *v2 = __const__Z32Gnm35_EnableBCTInTimeMarkMessagev_a_ConfigurationCommand;
  *&v2[12] = *(&__const__Z32Gnm35_EnableBCTInTimeMarkMessagev_a_ConfigurationCommand + 12);
  Hal00_06ReadBufNtf(0x1CuLL, v2);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: BCT-TimeMark enabled\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm35_EnableBCTInTimeMarkMessage");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

void gncP01_01DeInitPeUpdate(void)
{
  GN_GPS_Shutdown();
  gnssOsa_MacDeinitCriticalSection("gncP01_01DeInitPeUpdate", 93, &g_PosUpdateCritic);
  if (qword_2A13EDF58)
  {
    free(qword_2A13EDF58);
  }

  qword_2A13EDF58 = 0;
}

uint64_t GncP01_32ExecutePE(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v36[271] = *MEMORY[0x29EDCA608];
  GN_GPS_Update();
  memset_s(__s, 0x18E0uLL, 0, 0x18E0uLL);
  if (*qword_2A1454210)
  {
    v1 = *qword_2A1454210 == Last_Published_Nav_Data_TTag;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  memcpy(__s, qword_2A1454210, sizeof(__s));
  Last_Published_Nav_Data_TTag = __s[0];
  if (*(*(p_api + 80) + 32) != __s[0])
  {
    memcpy(__s, qword_2A1454210, sizeof(__s));
    Last_Published_Nav_Data_TTag = __s[0];
  }

  if (gnssOsa_MacEnterCriticalSection("GncP01_31Update", 336, &g_PosUpdateCritic))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(v34, 0x3C6uLL);
      v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = 1550;
LABEL_33:
      snprintf(v34, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v2, "GNC", 69, "GncP01_31Update", v3);
      gnssOsa_PrintLog(v34, 1, 1, 0);
      return 0;
    }

    return 0;
  }

  v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  LOWORD(v34[0]) = 0;
  BYTE2(v34[0]) = 0;
  HIDWORD(v34[0]) = 0;
  v34[797] = 0;
  memset_s(v34, 0x18F0uLL, 0, 0x18F0uLL);
  HIDWORD(v34[0]) = v4;
  LOBYTE(v34[0]) = 0;
  if (qword_2A1454210 && *qword_2A1454210)
  {
    memcpy(&v34[1], qword_2A1454210, 0x18E0uLL);
    LOBYTE(v34[0]) = WORD1(v34[3]) != 0;
    BYTE1(v34[0]) = *(*(p_api + 56) + 8972) != 0;
  }

  v5 = 0;
  v6 = BYTE5(v34[42]);
  LOBYTE(v36[0]) = 0;
  *(v36 + 2) = 0;
  memset(&v36[1], 0, 27);
  v7 = 1;
  while (1)
  {
    v8 = v7;
    if (!GncP04_08GetNextSessInstn(v5, v36, 1u))
    {
      break;
    }

    v7 = 0;
    v9 = &v34[797] + 4 * v5;
    v9[1] = v36[0];
    *(v9 + 1) = WORD1(v36[0]);
    *v9 = v6;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      LOBYTE(v5) = 2;
      break;
    }
  }

  BYTE2(v34[0]) = v5;
  if ((v34[0] & 1) == 0 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(v36, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(v36, 0x3C5uLL, "%10u %s%c %s: No Valid Nav\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP01_18UpdateNavData");
    gnssOsa_PrintLog(v36, 2, 1, 0);
  }

  memcpy(g_GncP_PEUpdate, v34, 0x18F0uLL);
  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      v13 = v12;
      v14 = &g_GncPCntxtInfo + 36 * v11;
      if (v14[8] == 1)
      {
        break;
      }

      v12 = 0;
      v11 = 1;
      if ((v13 & 1) == 0)
      {
        v16 = qword_2A13EDF58;
LABEL_27:
        if (v16)
        {
          free(v16);
        }

        qword_2A13EDF58 = 0;
        goto LABEL_30;
      }
    }

    v12 = 0;
    v15 = v14[9];
    v11 = 1;
  }

  while ((v13 & ((v15 & 2) == 0)) != 0);
  v16 = qword_2A13EDF58;
  if ((v15 & 2) == 0)
  {
    goto LABEL_27;
  }

  if (qword_2A13EDF58 || (v16 = gnssOsa_Calloc("GncP01_28UpdateRawMeas", 301, 1, 0x271A0uLL), (qword_2A13EDF58 = v16) != 0))
  {
    v24 = *(*(p_api + 80) + 32);
    if (v24)
    {
      v25 = v24 == Last_Published_Raw_Meas_TTag;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    if (!v25)
    {
      API_Get_Raw_Meas_Data(v16);
      Last_Published_Raw_Meas_TTag = v24;
    }

    byte_2A13EDF50 = v26;
    if (g_LbsOsaTrace_Config >= 5)
    {
      v27 = qword_2A13EDF58;
      bzero(v34, 0x3C6uLL);
      v28 = mach_continuous_time();
      snprintf(v34, 0x3C5uLL, "%10u %s%c %s: Klobuchar GPS_secs,%10d,alpha,%10.3e,%10.3e,%10.3e,%10.3e,beta,%9.1f,%9.1f,%9.1f,%9.1f\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 68, "GncP01_28UpdateRawMeas", *(v27 + 160080), *(v27 + 160088), *(v27 + 160096), *(v27 + 160104), *(v27 + 160112), *(v27 + 160120), *(v27 + 160128), *(v27 + 160136), *(v27 + 160144));
      gnssOsa_PrintLog(v34, 5, 1, 0);
    }
  }

LABEL_30:
  if (!gnssOsa_MacExitCriticalSection("GncP01_31Update", 347, &g_PosUpdateCritic))
  {
    GncP03_10SndNewUpdtSM();
    v18 = word_2A13C3B68;
    if (word_2A13C3B68)
    {
      if (qword_2A1454210)
      {
        if (*qword_2A1454210)
        {
          memcpy(v34, qword_2A1454210, 0x18E0uLL);
          v19 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 498, 1, 0x18uLL);
          if (v19)
          {
            v20 = v19;
            v21 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 504, 20480, 1uLL);
            v20[2] = v21;
            if (v21)
            {
              v22 = v21;
              if ((v18 & 0x200) != 0 && qword_2A1454218 && *qword_2A1454218)
              {
                v23 = v36;
                memcpy(v36, qword_2A1454218, 0x878uLL);
              }

              else
              {
                v23 = 0;
              }

              v29 = GN_GPS_Encode_NMEA(0x5000u, v22, v18, v34, v23);
              *(v20 + 6) = v29;
              if (v29)
              {
                if (g_LbsOsaTrace_Config >= 4)
                {
                  bzero(v35, 0x3C6uLL);
                  v30 = mach_continuous_time();
                  snprintf(v35, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 73, "GncP01_51SndNmeaUpdt", *(v20 + 6));
                  gnssOsa_PrintLog(v35, 4, 1, 0);
                }

                AgpsSendFsmMsg(132, 128, 8653571, v20);
                goto LABEL_67;
              }

              if (g_LbsOsaTrace_Config >= 2)
              {
                bzero(v35, 0x3C6uLL);
                v31 = mach_continuous_time();
                snprintf(v35, 0x3C5uLL, "%10u %s%c %s: Encode Failed\n", (*&g_MacClockTicksToMsRelation * v31), "GNC", 87, "GncP01_51SndNmeaUpdt");
                gnssOsa_PrintLog(v35, 2, 1, 0);
              }

              v32 = v20[2];
              if (v32)
              {
                free(v32);
              }
            }

            free(v20);
          }
        }
      }
    }

LABEL_67:
    GncP24_55UpdateBceOrbitAssistance(0);
    return 1;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(v34, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = 1551;
    goto LABEL_33;
  }

  return 0;
}

uint64_t GncP01_34HandleRespSentInd(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND ID,%u,Type,%u,OSTtag,%u,BBTtag,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP01_34HandleRespSentInd", *(a1 + 14), *(a1 + 12), *(a1 + 16), *(a1 + 20));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 = *(a1 + 12);
    if ((v3 | 2) == 3)
    {
      GN_AGPS_Mark_Response_Sent(*(a1 + 16), *(a1 + 20));
    }

    else
    {
      GN_GPS_Mark_Single_Pos_Used(v3 != 2, *(a1 + 14), *(a1 + 16), *(a1 + 20));
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP01_34HandleRespSentInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void *GncP01_50GetNavData(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_GncP_PEUpdate[0] != 1)
  {
    *a1 = dword_2A13EC664;
    goto LABEL_9;
  }

  *a1 = dword_2A13EC66C;
  if (!GncP11_30CheckUtcValidity(word_2A13EC67A, word_2A13EC67C, word_2A13EC67E, word_2A13EC680, word_2A13EC682, word_2A13EC684, word_2A13EC686))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid UTC Y,%u,M,%u,D,%u,H,%u,M,%u,S,%u,MS,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, word_2A13EC67A, word_2A13EC67C, word_2A13EC67E, word_2A13EC680, word_2A13EC682, word_2A13EC684, word_2A13EC686);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_9;
  }

  *(a1 + 8) = *&dword_2A13EC668;
  *(a1 + 16) = *&byte_2A13EC678;
  *(a1 + 18) = byte_2A13EC661;
  *(a1 + 20) = *&word_2A13EC67A;
  *(a1 + 28) = word_2A13EC682;
  *(a1 + 30) = *&word_2A13EC684;
  *(a1 + 36) = word_2A13EC688;
  *(a1 + 40) = unk_2A13EC670;
  *(a1 + 48) = qword_2A13EC708;
  *(a1 + 56) = *&qword_2A13EC690;
  *(a1 + 72) = unk_2A13EC6A0;
  *(a1 + 80) = vextq_s8(*&qword_2A13EC6A8, *&qword_2A13EC6A8, 8uLL);
  *(a1 + 96) = unk_2A13EC6B8;
  *(a1 + 112) = unk_2A13EC6C8;
  *(a1 + 128) = unk_2A13EC6D8;
  *(a1 + 144) = unk_2A13EC6E8;
  *(a1 + 160) = unk_2A13EC6F8;
  *(a1 + 176) = unk_2A13EC710;
  *(a1 + 192) = unk_2A13EC720;
  *(a1 + 208) = unk_2A13EC730;
  *(a1 + 224) = unk_2A13EC740;
  *(a1 + 240) = unk_2A13EC750;
  *(a1 + 256) = unk_2A13EC760;
  *(a1 + 296) = qword_2A13EC770;
  *(a1 + 272) = xmmword_2A13EC778;
  *(a1 + 288) = qword_2A13EC788;
  *(a1 + 312) = dword_2A13EC790 & 0x3373F;
  v2 = dword_2A13EC79C;
  if (dword_2A13EC79C > 3)
  {
    if ((dword_2A13EC79C - 4) >= 2)
    {
      goto LABEL_27;
    }

    v2 = 3;
    goto LABEL_15;
  }

  if ((dword_2A13EC79C - 2) < 2)
  {
    v2 = 2;
    goto LABEL_15;
  }

  if (!dword_2A13EC79C)
  {
    *(a1 + 304) = 0;
    goto LABEL_16;
  }

  if (dword_2A13EC79C == 1)
  {
LABEL_15:
    *(a1 + 304) = v2;
    goto LABEL_16;
  }

LABEL_27:
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v16 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FixType,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, dword_2A13EC79C);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

LABEL_16:
  *(a1 + 305) = *algn_2A13EC7B5;
  *(a1 + 307) = byte_2A13EC7B4;
  *(a1 + 308) = GncP11_23ConvertUsrState(dword_2A13EC798);
  *(a1 + 309) = GncP11_24ConvertGnssContent(dword_2A13EC7A0);
  *(a1 + 320) = GncP11_25ConvertReliab(dword_2A13EC7A4);
  *(a1 + 322) = GncP11_32ConvertEstimatedTech(dword_2A13EC7A8);
  *(a1 + 316) = dword_2A13EC7B0 & 0x7707FFFF;
  *(a1 + 323) = word_2A13EC7C0;
  *(a1 + 321) = GncP11_25ConvertReliab(dword_2A13EC7AC);
  if (*(a1 + 323))
  {
    v5 = 0;
    v6 = 0x564u;
    v7 = 0xA48u;
    while (1)
    {
      v8 = &g_GncP_PEUpdate[4 * v5];
      v9 = a1 + v5;
      *(a1 + v5 + 325) = GncP11_01ConvertGnssID(*(v8 + 89));
      v10 = GncP11_05ConvertGnssSignalID(*(v8 + 217));
      v11 = a1 + 4 * v5;
      *(v11 + 456) = v10;
      *(v9 + 1352) = g_GncP_PEUpdate[v5 + 1764];
      *(v9 + 1480) = g_GncP_PEUpdate[v5 + 1892];
      v12 = &g_GncP_PEUpdate[8 * v5];
      *(a1 + 8 * v5 + 1608) = *(v12 + 253);
      v13 = (a1 + v7);
      *v13 = *&g_GncP_PEUpdate[v7 + 416];
      v13[128] = *&g_GncP_PEUpdate[v7 + 1440];
      v13[256] = *&g_GncP_PEUpdate[v7 + 2464];
      v14 = a1 + 3656 + v5;
      *(v14 + 2048) = g_GncP_PEUpdate[v5 + 6120];
      *(v14 + 2176) = g_GncP_PEUpdate[v5 + 6248];
      LOBYTE(v14) = g_GncP_PEUpdate[v6 + 2];
      *(a1 + v6 - 412) = *&g_GncP_PEUpdate[v6];
      *(a1 + v6 - 410) = *(a1 + v6 - 410) & 0xE0 | v14 & 0x1F;
      if (*(a1 + v5 + 325))
      {
        break;
      }

      if (g_LbsOsaTrace_Config >= 2)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((++v5 & 0x80) == 0)
      {
        v6 += 3;
        v7 += 8;
        if (v5 < *(a1 + 323))
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    if (*(v11 + 456) || g_LbsOsaTrace_Config <= 1)
    {
      goto LABEL_22;
    }

LABEL_21:
    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ConstID,%u,SVId,%u,SigID,%u,FreqCh,%u,SNR,%.2f,Used,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, *(v8 + 89), g_GncP_PEUpdate[v5 + 1764], *(v8 + 217), g_GncP_PEUpdate[v5 + 1892], *(v12 + 253), g_GncP_PEUpdate[v5 + 6120], g_GncP_PEUpdate[v5 + 6248]);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    goto LABEL_22;
  }

LABEL_9:
  result = memcpy_s("GncP01_50GetNavData", 472, (a1 + 5960), 8u, &byte_2A13EC662 + 6374, 8uLL);
  *(a1 + 5968) = byte_2A13EC662;
  return result;
}

void GncP_GetNavData(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetNavData", 555, &g_PosUpdateCritic))
  {
    if (!g_LbsOsaTrace_Config)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = 1550;
    goto LABEL_7;
  }

  GncP01_50GetNavData(a1);
  if (gnssOsa_MacExitCriticalSection("GncP_GetNavData", 563, &g_PosUpdateCritic) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = 1551;
LABEL_7:
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", v2, "GNC", 69, "GncP_GetNavData", v3);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }
}

uint64_t GncP_GetLatestUpdtOsTime(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetLatestUpdtOsTime", 575, &g_PosUpdateCritic))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 69, "GncP_GetLatestUpdtOsTime", 1550);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  else
  {
    v2 = 4;
    if (g_GncP_PEUpdate[0])
    {
      v2 = 12;
    }

    v1 = *&g_GncP_PEUpdate[v2];
    if (gnssOsa_MacExitCriticalSection("GncP_GetLatestUpdtOsTime", 590, &g_PosUpdateCritic) && g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP_GetLatestUpdtOsTime", 1551);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  return v1;
}

uint64_t GncP_GetDetailedMeasData(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetDetailedMeasData", 605, &g_PosUpdateCritic))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncP_GetDetailedMeasData", 1550);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  else
  {
    if (byte_2A13EDF50 != 1 || qword_2A13EDF58 == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = GncP27_30PopulateRawMeas(qword_2A13EDF58, a1);
    }

    if (gnssOsa_MacExitCriticalSection("GncP_GetDetailedMeasData", 617, &g_PosUpdateCritic) && g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP_GetDetailedMeasData", 1551);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  return v3;
}

uint64_t NK_Comp_ith_DO_Res(uint64_t result, double *a2, uint64_t a3, uint64_t a4, double *a5, double a6)
{
  v6 = a4 + 8 * result;
  *(v6 + 64264) = *(a3 + 40) * a2[1] + *(a3 + 32) * *a2 + *(a3 + 48) * a2[2] - *(a3 + 64) * 299792458.0;
  *a5 = (*(a3 + 40) - *(a4 + 1592)) * a2[1] + (*(a3 + 32) - *(a4 + 1584)) * *a2 + (*(a3 + 48) - *(a4 + 1600)) * a2[2] + (*(a4 + 1664) - *(a3 + 64)) * 299792458.0;
  v7 = *(a3 + 72) * dbl_299052B10[*(a3 + 120) == 1];
  *(v6 + 25952) = v7;
  v8 = a4 + result;
  *(v8 + 21856) = 1;
  ++*(a4 + 21674);
  v9 = *(v8 + 21728);
  if ((v9 & 1) != 0 || *(a4 + result + 36632) == 1)
  {
    v10 = *a5 + a6;
    *(a4 + 26976 + 8 * result) = v10;
    v11 = *(a4 + 24 * result + 22880) + *(a4 + 24 * result + 22888);
    v12 = (a4 + 8 * result);
    if (*(a4 + result + 2544) == 1)
    {
      v10 = v10 - v12[590];
      *(a4 + 26976 + 8 * result) = v10;
      v7 = v12[718];
    }

    *(a4 + 32352 + 8 * result) = v11 + v7;
    v12[3628] = v10;
    if (v9)
    {
      if (fabs(v10) < 6000.0)
      {
        v13 = a4 + result;
        *(v13 + 21984) = 1;
        ++*(a4 + 21675);
        *(v13 + 63880) = 1;
      }
    }
  }

  return result;
}

void DD_Assist_BDS_Data(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  v6 = 0;
  v84 = *MEMORY[0x29EDCA608];
  v76 = a3 + 47436;
  v7 = a3 + 4386;
  v80 = a3 + 3189;
  v78 = a1;
  v79 = a1 - 241;
  v81 = a3 + 5583;
  do
  {
    if (*(a3[3182] + v6) != 1 || (v79 - LODWORD(v80[19 * v6])) <= 0xFFFFF806)
    {
      memset(v82, 0, 18);
      memset(&v82[20], 0, 78);
      memset(&v82[100], 0, 48);
      if (Core_Get_BDS_Eph((v6 + 1), v5, v82))
      {
        v8 = a3[3182];
        if (*(v8 + v6) == 1)
        {
          v9 = &v80[19 * v6];
          if (*v82 <= *v9 && v5 - *v9 >= -1800)
          {
            goto LABEL_29;
          }

          v10 = v82[9];
          if (*v82 - *v9 <= 10799 && Is_BDS_IntEph_Real(&v80[19 * v6]) && !Is_BDS_IntEph_Real(v82))
          {
            v5 = v78;
            *v9 = v78;
            goto LABEL_29;
          }
        }

        else
        {
          v10 = v82[9];
        }

        v11 = v10 == 0;
        v12 = a3[3174];
        if ((*(v12 + v6) & 1) == 0 && !v10)
        {
          if (*(a3[3184] + v6) == 1)
          {
            v11 = *(v81 + 44 * v6 + 42);
          }

          else
          {
            v11 = 1;
          }
        }

        v13 = &v80[19 * v6];
        v14 = *&v82[112];
        *(v13 + 6) = *&v82[96];
        *(v13 + 7) = v14;
        *(v13 + 8) = *&v82[128];
        v13[18] = *&v82[144];
        v15 = *&v82[48];
        *(v13 + 2) = *&v82[32];
        *(v13 + 3) = v15;
        v16 = *&v82[80];
        *(v13 + 4) = *&v82[64];
        *(v13 + 5) = v16;
        v17 = *&v82[16];
        *v13 = *v82;
        *(v13 + 1) = v17;
        *(a3[3178] + v6) = 1;
        *(v8 + v6) = 1;
        v18 = v11 & 1;
        *(v12 + v6) = v18;
        *(a3[3175] + v6) = v18;
        if (v18)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v20 = a3[3176] + 20 * v6;
        if (*(v13 + 1) == 5)
        {
          *(v20 + 8) = v19;
          v21 = (a3[3177] + 20 * v6 + 8);
        }

        else
        {
          *(v20 + 12) = v19;
          v21 = (a3[3177] + 20 * v6 + 12);
        }

        v5 = v78;
        *v21 = v19;
        if (v78 >= 1)
        {
          *(a3[3185] + v6) = 1;
          Core_Save_BDS_Eph((v6 + 1), 0, v13);
          v12 = a3[3174];
        }

        v22 = 0;
        LODWORD(v23) = 0;
        v24 = p_NV;
        v25 = (p_NV + 13212);
        v27 = v12[1];
        v26 = v12[2];
        v28 = *v12;
        *(p_NV + 13259) = *(v12 + 47);
        v25[1] = v27;
        v25[2] = v26;
        *v25 = v28;
        v29 = 55665;
        do
        {
          v30 = *(v24 + 13208 + v22) ^ BYTE1(v29);
          v29 = 52845 * (v29 + v30) + 22719;
          v23 = (v23 + v30);
          ++v22;
        }

        while (v22 != 72);
        *(v24 + 13200) = v23;
      }
    }

LABEL_29:
    ++v6;
  }

  while (v6 != 63);
  if (v5 >= 1)
  {
    for (i = 0; i != 63; ++i)
    {
      if (*(a3[3174] + i) == 1 && (*(*(a4 + 1640) + i) & 1) == 0 && *(a2 + 92 + i) <= 0xA5u && (*(a3[3183] + i) != 1 || v5 - *v7 >= 241))
      {
        memset(v82, 0, 18);
        memset(&v82[20], 0, 78);
        memset(&v82[100], 0, 48);
        BDS_CNAV_IntEph = EE_Get_BDS_CNAV_IntEph((i + 1), v5, v82);
        v33 = a3[3183];
        if (!BDS_CNAV_IntEph || *(v33 + i) == 1 && *v82 <= *v7)
        {
          *(v33 + i) = 0;
        }

        else
        {
          v34 = *&v82[80];
          *(v7 + 4) = *&v82[64];
          *(v7 + 5) = v34;
          v35 = *&v82[48];
          *(v7 + 2) = *&v82[32];
          *(v7 + 3) = v35;
          v7[18] = *&v82[144];
          v36 = *&v82[128];
          *(v7 + 7) = *&v82[112];
          *(v7 + 8) = v36;
          *(v7 + 6) = *&v82[96];
          v37 = *&v82[16];
          *v7 = *v82;
          *(v7 + 1) = v37;
          *(a3[3178] + i) = 1;
          *(v33 + i) = 1;
          Debug_Log_BDS_Eph(2, v82);
        }
      }

      v7 += 19;
    }
  }

  v38 = 0;
  memset(v82, 0, 43);
  while (2)
  {
    if ((*(a3[3184] + v38) != 1 || v5 - *(v81 + 11 * v38) >= 1801) && Core_Get_BDS_Alm((v38 + 1), v5, v82))
    {
      v39 = a3[3184];
      if (*(v39 + v38) != 1 || *v82 > *(v81 + 11 * v38))
      {
        v40 = a3[3174];
        v41 = *(v40 + v38) & v82[42];
        if (*(v40 + v38) & 1) == 0 && (v82[42])
        {
          v42 = a3[3182];
          if (*(v42 + v38) == 1)
          {
            v43 = &v80[19 * v38];
            v44 = *(v43 + 9);
            v45 = *v43;
            if (v44)
            {
              v46 = v45 + 3600 <= v5;
            }

            else
            {
              v46 = 1;
            }

            if (!v46)
            {
              v41 = 0;
              goto LABEL_60;
            }

            if (v45 + 100 < v5)
            {
              *(a3[3178] + v38) = 0;
              *(v42 + v38) = 0;
            }
          }

          v41 = 1;
        }

LABEL_60:
        v47 = (v81 + 44 * v38);
        v48 = *&v82[16];
        *v47 = *v82;
        v47[1] = v48;
        *(v47 + 28) = *&v82[28];
        *(a3[3179] + v38) = 1;
        *(v39 + v38) = 1;
        *(v40 + v38) = v41;
        if (v5 >= 1)
        {
          Core_Save_BDS_Alm((v38 + 1), 0, v47);
          v40 = a3[3174];
        }

        v49 = 0;
        LODWORD(v50) = 0;
        v51 = p_NV;
        v52 = (p_NV + 13212);
        v54 = v40[1];
        v53 = v40[2];
        v55 = *v40;
        *(p_NV + 13259) = *(v40 + 47);
        v52[1] = v54;
        v52[2] = v53;
        *v52 = v55;
        v56 = 55665;
        do
        {
          v57 = *(v51 + 13208 + v49) ^ BYTE1(v56);
          v56 = 52845 * (v56 + v57) + 22719;
          v50 = (v50 + v57);
          ++v49;
        }

        while (v49 != 72);
        *(v51 + 13200) = v50;
      }
    }

    if (++v38 != 63)
    {
      continue;
    }

    break;
  }

  *v82 = 0;
  *&v82[8] = 0;
  *&v82[24] = 0;
  *&v82[12] = 0;
  *&v82[19] = 0;
  *v83 = 0;
  *&v83[8] = 0;
  *&v83[24] = 0;
  *&v83[12] = 0;
  *&v83[19] = 0;
  if (Core_Get_BDS_BGTO(v5, v82, v83))
  {
    if (*&v82[4] >= 3 && ((v59 = *v76, v58 = *(v76 + 1), v58 < 4) || *v82 > v59))
    {
      EvLog_v("DD_Assist_BDS_BGTO:  New BGTO: ->GPS  Source %d > %d  or  GPS_secs %d > %d , A0 %d %d", *&v82[4], v58, *v82, v59, *&v82[16], *(v76 + 4));
      *v76 = *v82;
      *(v76 + 12) = *&v82[12];
      BDS_BGTOInt2Real(v76, (a3 + 5937));
      if (v5 >= 1)
      {
        v70 = 0;
        v64 = 0;
        v65 = (p_NV + 13280);
        v71 = *(v76 + 12);
        v72 = p_NV + 13288;
        *(p_NV + 13288) = *v76;
        *(v72 + 12) = v71;
        v73 = 55665;
        do
        {
          v74 = *(v72 + v70) ^ BYTE1(v73);
          v73 = 52845 * (v73 + v74) + 22719;
          v64 += v74;
          ++v70;
        }

        while (v70 != 32);
LABEL_80:
        *v65 = v64;
      }
    }

    else if (*&v83[4] >= 3)
    {
      v61 = *(v76 + 7);
      v60 = *(v76 + 8);
      v62 = v76 + 28;
      if (v60 < 4 || *v83 > v61)
      {
        EvLog_v("DD_Assist_BDS_BGTO:  New BGTO: ->GLO Source %d > %d  or  GPS_secs %d > %d , A0 %d %d", *&v83[4], v60, *v83, v61, *&v83[16], *(v76 + 11));
        *v62 = *v83;
        *(v76 + 40) = *&v83[12];
        BDS_BGTOInt2Real(v62, (a3 + 5942));
        if (v5 >= 1)
        {
          v63 = 0;
          v64 = 0;
          v65 = (p_NV + 13320);
          v66 = *(v76 + 40);
          v67 = p_NV + 13328;
          *(p_NV + 13328) = *v62;
          *(v67 + 12) = v66;
          v68 = 55665;
          do
          {
            v69 = *(v67 + v63) ^ BYTE1(v68);
            v68 = 52845 * (v68 + v69) + 22719;
            v64 += v69;
            ++v63;
          }

          while (v63 != 32);
          goto LABEL_80;
        }
      }
    }
  }
}

void NK_Set_TTFF(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 27116);
  v6 = (a2 + 60216);
  v7 = 0.0;
  do
  {
    v7 = v7 + *(a2 + 61576 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  if (*(a2 + 62546) == 1 && v7 < 40000.0 && *(a2 + 62748) <= 0x13u && *v5 >= 2u)
  {
    *(a2 + 1864) = 1;
    if (!*(a1 + 27136))
    {
      *(a1 + 27136) = *a2 - *(a1 + 68180);
    }
  }

  if (!*(a1 + 27136))
  {
    *(a2 + 62539) = 0;
    if (*(a1 + 240) == 1 && *(a2 + 61672) < 30000.0 && *(a2 + 61680) < 30000.0 && *(a2 + 61688) < 30000.0)
    {
      *(a2 + 62539) = 1;
    }

    v8 = 100000;
    if (!*(a2 + 1864))
    {
      *(a1 + 136) = 1;
      *(a1 + 140) = 93;
      *(a1 + 160) = -1;
      goto LABEL_48;
    }

    if (*(a2 + 62176) || *(a2 + 20) > 8 || *(a2 + 62122) >= 2u && v7 <= 3600000000.0)
    {
      v9 = *v6;
      if (v9 == 1 && *(a2 + 60288) > 900000000.0 && (*(a2 + 62122) < 2u || *(a2 + 62748) > 0x64u))
      {
        *(a1 + 136) = 1;
        *(a1 + 140) = 93;
        *(a1 + 160) = -1;
LABEL_42:
        v13 = *(a2 + 60288);
        if (v13 >= 4.8e10 || v13 <= 900000000.0)
        {
          v8 = 100000;
        }

        else
        {
          v8 = 600000;
        }

        goto LABEL_48;
      }

      if (*(a2 + 62748) <= 0x186A0u)
      {
        v12 = *(a2 + 20);
        if (v12 >= 2 && (*(a2 + 1872) || (*(a1 + 241) != 1 || *(a1 + 160) <= 2) && (v12 > 0xA || *(a2 + 62032) >= 90000.0 || *(a2 + 62120) || *(a2 + 62156) == 1)))
        {
          if (*v6)
          {
            goto LABEL_42;
          }

LABEL_48:
          v15 = *(a2 + 62748);
          if (v15 > v8)
          {
            *(a2 + 1864) = 0;
            *(a1 + 241) = 1;
            memset_pattern16((a2 + 61528), &unk_299052B40, 0x60uLL);
            memset_pattern16((a2 + 61624), &unk_299052B50, 0x60uLL);
            v7 = 1.00979801e14;
          }

          if (v15 >= 0x3E9 && (*(a1 + 136) & 1) == 0)
          {
            v16 = sqrt(v6[207] + v6[208] + v6[209]);
            if (v15 / v16 > 2.5)
            {
              EvCrt_v("NK_Set_TTFF:  Trigger KF Reset 93 at start of next epoch,  Mag_Pos_Cor %d  Pos_Orig_Sig %f  PosCor_Sigma_Ratio %f", v15, v16, v15 / v16);
              *(a1 + 7) = 1;
            }
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
      LOBYTE(v9) = *v6;
    }

    *(a1 + 136) = 1;
    *(a1 + 140) = 93;
    *(a1 + 160) = -1;
    if (v9)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

LABEL_10:
  if (v7 <= 100000000.0 && v5[1] <= 0x1Eu)
  {
    v10 = 0;
    v11 = a1 + 14208;
    do
    {
      if (*(v11 + v10) == 1 && *a2 - *(v11 + 4 * v10 - 1536) >= 60001)
      {
        *(v11 + v10) = 0;
      }

      ++v10;
    }

    while (v10 != 128);
  }

  else
  {
    *(a1 + 14320) = 0u;
    *(a1 + 14304) = 0u;
    *(a1 + 14288) = 0u;
    *(a1 + 14272) = 0u;
    *(a1 + 14256) = 0u;
    *(a1 + 14240) = 0u;
    *(a1 + 14224) = 0u;
    *(a1 + 14208) = 0u;
  }
}

uint64_t DD_Delete_Bad_GPS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v5 = a4 + 15;
  v6 = a4 + 943;
  v7 = (a1 + 4);
  result = 255;
  do
  {
    v9 = a4[6];
    if (*(v9 + v4) == 1)
    {
      *(v7 - 1) = 16777472;
      *v7 = 256;
      *(a2 + 2 * v4) = 256;
      *(v9 + v4) = 0;
      *(a4[4] + v4) = 0;
      *(a4[8] + v4) = 0;
      *(v5 + 111) = 0;
      *(v5 + 5) = 0uLL;
      *(v5 + 6) = 0uLL;
      *(v5 + 3) = 0uLL;
      *(v5 + 4) = 0uLL;
      *(v5 + 1) = 0uLL;
      *(v5 + 2) = 0uLL;
      *v5 = 0uLL;
      *(a4[14] + v4) = 0;
      *(a4[11] + v4) = 1;
      if ((v4 & 0xE0) == 0)
      {
        v10 = p_NV + ((v4 & 0xFFFFFF1F) << 7);
        *(v10 + 1984) = 0xFFFFFFFFLL;
        v10 += 1984;
        *(v10 + 8) = 0uLL;
        *(v10 + 24) = 0uLL;
        *(v10 + 40) = 0uLL;
        *(v10 + 56) = 0uLL;
        *(v10 + 72) = 0uLL;
        *(v10 + 88) = 0uLL;
        *(v10 + 104) = 0uLL;
        *(v10 + 119) = 0;
      }
    }

    if (*(a4[7] + v4) == 1)
    {
      *(a3 + v4) = -1;
      *(a4[7] + v4) = 0;
      *(a4[5] + v4) = 0;
      *(a4[10] + v4) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a4[14] + v4) = 0;
      if ((v4 & 0xE0) == 0)
      {
        v11 = p_NV + 56 * (v4 & 0xFFFFFF1F);
        *(v11 + 192) = 0xFFFFFFFFLL;
        *(v11 + 200) = 0uLL;
        *(v11 + 216) = 0uLL;
        *(v11 + 228) = 0uLL;
      }
    }

    ++v4;
    v6 = (v6 + 44);
    v5 = (v5 + 116);
    v7 += 3;
  }

  while (v4 != 32);
  return result;
}

uint64_t DD_Delete_Inhib_GPS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v6 = a5 + 943;
  v7 = (a2 + 4);
  v8 = 1992;
  v9 = a5;
  do
  {
    if (*(result + v5) == 1)
    {
      *(v7 - 1) = 16777472;
      *v7 = 256;
      *(a3 + 2 * v5) = 256;
      *(a5[6] + v5) = 0;
      *(a5[4] + v5) = 0;
      *(a5[8] + v5) = 0;
      *(v9 + 231) = 0;
      *(v9 + 27) = 0uLL;
      *(v9 + 25) = 0uLL;
      *(v9 + 23) = 0uLL;
      *(v9 + 21) = 0uLL;
      *(v9 + 19) = 0uLL;
      *(v9 + 17) = 0uLL;
      *(v9 + 15) = 0uLL;
      *(a5[9] + v5) = 0;
      *(v9 + 3943) = 0;
      *(v9 + 489) = 0uLL;
      *(v9 + 491) = 0uLL;
      *(v9 + 485) = 0uLL;
      *(v9 + 487) = 0uLL;
      *(v9 + 481) = 0uLL;
      *(v9 + 483) = 0uLL;
      *(v9 + 479) = 0uLL;
      *(a5[14] + v5) = 0;
      *(a5[11] + v5) = 1;
      if ((v5 & 0xE0) == 0)
      {
        v10 = p_NV + v8;
        *(v10 - 8) = 0xFFFFFFFFLL;
        *v10 = 0uLL;
        *(v10 + 16) = 0uLL;
        *(v10 + 32) = 0uLL;
        *(v10 + 48) = 0uLL;
        *(v10 + 64) = 0uLL;
        *(v10 + 80) = 0uLL;
        *(v10 + 96) = 0uLL;
        *(v10 + 111) = 0;
      }

      *(a4 + v5) = -1;
      *(a5[7] + v5) = 0;
      *(a5[5] + v5) = 0;
      *(a5[10] + v5) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      if ((v5 & 0xE0) == 0)
      {
        v11 = p_NV + 56 * (v5 & 0xFFFFFF1F);
        *(v11 + 192) = 0xFFFFFFFFLL;
        *(v11 + 200) = 0uLL;
        *(v11 + 216) = 0uLL;
        *(v11 + 228) = 0uLL;
      }
    }

    ++v5;
    v8 += 128;
    v6 = (v6 + 44);
    v9 = (v9 + 116);
    v7 += 3;
  }

  while (v5 != 32);
  return result;
}

uint64_t DD_Check_Age_GPS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result < 1)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v41 = result + 900;
  if (result <= 0x384)
  {
    v10 = 900;
  }

  else
  {
    v10 = result;
  }

  v11 = v10 - 900;
  if (result <= 0x15180)
  {
    v12 = 86400;
  }

  else
  {
    v12 = result;
  }

  v13 = v12 - 86400;
  v14 = *(a5 + 64);
  v15 = (a5 + 120);
  do
  {
    if (*(v14 + v7) != 1)
    {
      goto LABEL_19;
    }

    v16 = *v15;
    if (*v15 >= 1 && v16 < v13)
    {
LABEL_17:
      v9 = 1;
      *(*(a5 + 48) + v7) = 1;
      goto LABEL_19;
    }

    if (v16)
    {
      if (v16 > v41)
      {
        ++v8;
        if ((*(a5 + 62170) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      *v15 = v11;
    }

LABEL_19:
    ++v7;
    v15 += 29;
  }

  while (v7 != 32);
  if (v8 >= 1)
  {
    if (*(a5 + 62170))
    {
      v18 = "(Skipped)";
    }

    else
    {
      v18 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_GPS_Data:  Deleting Future EPH, %d SVs  %s", v8, v18);
  }

  v19 = 0;
  v20 = 0;
  if (v6 <= 15724800)
  {
    v21 = 15724800;
  }

  else
  {
    v21 = v6;
  }

  v22 = v21 - 15724800;
  v23 = 7544;
  do
  {
    if (*(*(a5 + 80) + v19) == 1)
    {
      v24 = *(a5 + v23);
      if (v24 >= 1 && v24 < v22)
      {
        v9 = 1;
        *(*(a5 + 56) + v19) = 1;
        EvLog_v("DD_Check_Age_GPS_Data:  Old ALM deleted SV %d age %d thresh %d", v19 + 1, (v6 - v24) / 604800, (v6 - v22) / 604800);
      }

      else if (v24)
      {
        if (v24 > v41)
        {
          ++v20;
          v26 = (v6 - v24) / 604800;
          v27 = &unk_299066A3A;
          if (*(a5 + 62170))
          {
            v27 = "(Skipped)";
          }

          EvLog_v("DD_Check_Age_GPS_Data:  Future ALM deleted SV %d age %d thresh %d  %s", v19 + 1, v26, 0, v27);
          if ((*(a5 + 62170) & 1) == 0)
          {
            v9 = 1;
            *(*(a5 + 56) + v19) = 1;
          }
        }
      }

      else
      {
        *(a5 + v23) = v11;
      }
    }

    ++v19;
    v23 += 44;
  }

  while (v19 != 32);
  if (v20 >= 1)
  {
    if (*(a5 + 62170))
    {
      v28 = "(Skipped)";
    }

    else
    {
      v28 = &unk_299066A3A;
    }

    EvLog_v("DD_Check_Age_GPS_Data:  Deleting Future ALM, %d SVs  %s", v20, v28);
  }

  if (v6 <= 2419200)
  {
    v29 = 2419200;
  }

  else
  {
    v29 = v6;
  }

  v30 = v29 - 2419200;
  if (*(a5 + 8956))
  {
    v31 = (a5 + 8952);
    v32 = *(a5 + 8952);
    if (v32 >= 1 && v32 < v30)
    {
LABEL_63:
      *v31 = 0;
      *(a5 + 8960) = 0;
    }

    else if (v32)
    {
      if (v32 > v41)
      {
        v34 = *(a5 + 62170) ? "(Skipped)" : &unk_299066A3A;
        EvLog_v("DD_Check_Age_GPS_Data:  Deleting Future Iono Model, %d  %d  %s", v32, v41, v34);
        if ((*(a5 + 62170) & 1) == 0)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      *v31 = v11;
    }
  }

  if (*(a5 + 8972))
  {
    v35 = (a5 + 8968);
    v36 = *(a5 + 8968);
    if (v36 >= 1 && v36 < v30)
    {
      goto LABEL_68;
    }

    if (v36)
    {
      if (v36 > v41)
      {
        v37 = *(a5 + 62170) ? "(Skipped)" : &unk_299066A3A;
        EvLog_v("DD_Check_Age_GPS_Data:  Deleting Future UTC Model, %d  %d  %s", v36, v41, v37);
        if ((*(a5 + 62170) & 1) == 0)
        {
LABEL_68:
          *v35 = 0;
          *(a5 + 8976) = 0;
          *(a5 + 8982) = 0;
        }
      }
    }

    else
    {
      *v35 = v11;
    }
  }

  result = a2;
  if (v9)
  {

    return DD_Delete_Bad_GPS_Data(a2, a3, a4, a5);
  }

  return result;
}

void DD_Proc_GPS_Data(unsigned __int8 *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v49 = *MEMORY[0x29EDCA608];
  v9 = a5 + 15;
  v10 = *(a2 + 8);
  v11 = *(a5 + 29 * v10 + 56);
  if (!v11)
  {
    *(a5[14] + v10) = 0;
  }

  v12 = *(a2 + 60);
  if ((v12 & 1) != 0 && (*(a2 + 20) & 0xFF0000) != 0x8B0000)
  {
    EvCrt_v("DD_Proc_GPS_Data:  Preamble Test Fail.  SV %d  Word_Mask %x  Word_1 %x");
    return;
  }

  if ((v12 & 2) == 0)
  {
    *(a2 + 12) = 0;
    return;
  }

  v13 = *(a2 + 24);
  v14 = (v13 >> 2) & 7;
  *(a2 + 12) = (v13 >> 2) & 7;
  if (v14)
  {
    if (v14 >= 6)
    {
      EvCrt_v("DD_Proc_GPS_Data:  Invalid GPS Subframe Number.  SV %d  %d");
      return;
    }

    if ((v13 & 0xFFFF80) >= 0xC4DF81)
    {
      EvCrt_v("DD_Proc_GPS_Data:  Subframe HOW TOW Error.  SV %d  TOW %d");
      return;
    }

    v15 = ((3 * (v13 & 0xFFFF80)) >> 6) - 30 * ((143165577 * ((3 * (v13 & 0xFFFF80)) >> 6)) >> 32);
    if (v15 <= 5)
    {
      v16 = 5;
    }

    else
    {
      v16 = (43 * v15) >> 8;
    }

    if (v16 != v14)
    {
      EvCrt_v("DD_Proc_GPS_Data:  Subframe Number Error.  SV %d  decoded %d  expected %d  HOW TOW %d");
      return;
    }

    v47 = 0;
    if (DD_Predict_Subframe_Number(a3, &v47) && v47 >= 1 && v14 != v47)
    {
      v17 = v47 - 1;
      if (v47 <= 1)
      {
        v17 = 5;
      }

      if (v14 != v17)
      {
        EvCrt_v("DD_Proc_GPS_Data:  Subframe Number Error.  SV %d  decoded %d  predicted %d  or previous %d");
        return;
      }
    }

    v48 = 0;
    if ((v13 & 0x18) == 0x10)
    {
      v18 = a1;
      if ((~v12 & 0x3FE) == 0 && *(a3 + 16) == 1)
      {
        v19 = *(a3 + 32);
        if (v19 >= 1025)
        {
          v20 = *(a2 + 28);
          v21 = HIWORD(v20) & 0x3F;
          *(a2 + 13) = BYTE2(v20) & 0x3F;
          v22 = (v20 >> 22) & 3;
          *(a2 + 14) = v22;
          if (v22 == 1)
          {
            v23 = (v21 - 1);
            if (v23 <= 0x1F)
            {
              if (Decode_GPS_Check_Alm_TOA((a2 + 20), *(*a5 + v23), v19, &a1[v23 + 192], (a2 + 10), &v48))
              {
                DD_Proc_GPS_Alm_Subframe(*(a2 + 13), *(a2 + 10), a2 + 20, *a4, a1, (a1 + 224), a5);
                v18 = a1;
              }

              else
              {
                v18 = a1;
                if (v48)
                {
                  v32 = *(a2 + 13);
                  v33 = a5 + 44 * *(a2 + 13);
                  v34 = *(v33 + 1875);
                  v35 = *a4;
                  *(v33 + 1875) = *a4;
                  if (!v34 && v35 >= 1)
                  {
                    Core_Save_GPS_Alm(v32, 0, (v33 + 7500));
                    v18 = a1;
                  }
                }
              }

              v21 = *(a2 + 13);
            }

            if (v21 == 51)
            {
              DD_Proc_GPS_Health_Subframe((a2 + 20), *a4, v18, (v18 + 224), (v18 + 192), a5);
              v18 = a1;
              *(a5 + 4496) = 0;
              *&v36 = 0x101010101010101;
              *(&v36 + 1) = 0x101010101010101;
              *(a5 + 8994) = v36;
              *(a5 + 9010) = v36;
              *(a1 + 225) = 0u;
              *(a1 + 224) = 0u;
              *&v37 = -1;
              *(&v37 + 1) = -1;
              *(a1 + 226) = v37;
              *(a1 + 227) = v37;
              v38 = a5[14];
              *v38 = 0u;
              v38[1] = 0u;
              v21 = *(a2 + 13);
            }

            if (v21 == 56)
            {
              DD_Proc_GPS_ION_UTC_Subframe(*(a2 + 8), (a2 + 20), *a4, v19, a5[14], a5);
              v18 = a1;
              v21 = *(a2 + 13);
            }

            if (v21 == 63)
            {
              DD_Proc_GPS_AS_SV_Config_Subframe((a2 + 20), *a4, v18 + 3584, v18, (v18 + 224), (v18 + 192), a5);
              v39 = *a5;
              v40 = *(a2 + 8);
              if (*(*a5 + v40) == 1)
              {
                v41 = 0;
                v42 = a5 + 8994;
                while (1)
                {
                  v43 = &a1[v41];
                  v44 = a1[v41 + 3584];
                  if ((v44 & 7u) - 5 >= 0xFFFFFFFC)
                  {
                    v45 = v43[3616];
                    if (v45 >= 2)
                    {
                      if (*(v39 + v41) == 1 && *(a5 + v41 + 59772) == 1)
                      {
                        v42[v41] = (v44 & 8) != 0;
                      }

                      goto LABEL_66;
                    }
                  }

                  else
                  {
                    *(a5[14] + v40) = 1;
                    v45 = v43[3616];
                    if (v45 > 1)
                    {
                      goto LABEL_66;
                    }
                  }

                  v42[v41] = v45;
LABEL_66:
                  if (++v41 == 32)
                  {
                    return;
                  }
                }
              }
            }
          }

          else
          {
            EvLog_v("DD_Proc_GPS_Data:  SV %2d  SF %d  Page_ID %d  Ignored, Unexpected Data_ID %d != 1", v10 + 1, (v13 >> 2) & 7, v21, v22);
          }
        }
      }

      return;
    }

    *(a2 + 13) = 0;
    v24 = *a5;
    v25 = v11 == 0xFFFFFF;
    v26 = v11 != 0xFFFFFF;
    v27 = a1;
    if (v25)
    {
      goto LABEL_38;
    }

    if (*(v24 + v10) == 1 && *(a5[8] + v10) == 1)
    {
      DD_Proc_Eph_Bit_Validation(v10, (v13 >> 2) & 7, a2 + 20, v12, a5);
      v10 = *(a2 + 8);
      v24 = *a5;
      if (*(v9 + 29 * v10 + 26) == 0xFFFFFF)
      {
        v27 = a1;
LABEL_38:
        if (*(v24 + v10) == 1 && (*(a2 + 60) & 2) != 0)
        {
          v27[v10 + 3616] = (*(a2 + 24) & 0x20) != 0;
          LODWORD(v10) = *(a2 + 8);
          v24 = *a5;
        }

        goto LABEL_43;
      }

      v26 = 0;
      v27 = a1;
    }

    else
    {
      v26 = 0;
    }

LABEL_43:
    if (DD_Proc_GPS_Eph_Subframe(v10, *(a2 + 12), a2 + 20, *(a2 + 60), *(v24 + v10), a5, v27, (v27 + 224), (v27 + 288), (v27 + 3360), a3, a4, (v27 + 3552)))
    {
      v28 = *(a2 + 8);
      v29 = v9 + 116 * v28;
      v30 = *v29 != 0;
      v31 = *a4;
      *v29 = *a4;
      *(v29 + 1) = 4;
      if ((v30 & ~v26 & 1) == 0 && v31 >= 1)
      {
        *(a5[11] + v28) = 1;
        Core_Save_GPS_Eph((v28 + 1), 0, v29);
      }
    }
  }
}

BOOL DD_Predict_Subframe_Number(uint64_t a1, _BYTE *a2)
{
  if (*a1 < 4)
  {
    LOBYTE(v3) = -1;
  }

  else
  {
    v2 = ((*(a1 + 40) + 0.5) % 30) / 6.0 + 4.5;
    v3 = v2 - 5 * ((((103 * v2) >> 15) & 1) + ((103 * v2) >> 9)) + 1;
  }

  result = *a1 > 3;
  *a2 = v3;
  return result;
}

void DD_Proc_Eph_Bit_Validation(unsigned int a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 0;
    v8 = a5 + 116 * a1 + 120;
    v9 = v8 + 4 * (8 * a2 - 8) + 8;
    v10 = a3 + 8;
    v11 = a1 + 1;
    v12 = 8 * a2 - 8;
    do
    {
      v13 = *(v8 + 104);
      v14 = 1 << (v12 + v7);
      if (v13 & v14) == 0 && ((a4 >> v7))
      {
        v15 = *(v9 + 4 * v7);
        if (*(v10 + 4 * v7) == v15)
        {
          *(v8 + 104) = v13 | v14;
        }

        else if (g_Logging_Cfg >= 7)
        {
          EvLog_v("DD_Proc_Eph_Bit_Validation:  Fail SV %d SF %d Wd %d 0x%x 0x%x", v11, a2, v7 + 2, *(v10 + 4 * v7), v15);
        }
      }

      ++v7;
    }

    while (v7 != 8);
  }
}

{
  if (a2)
  {
    v7 = 0;
    v8 = a5 + 116 * a1 + 9152;
    v9 = v8 + 4 * (8 * a2 - 8) + 8;
    v10 = a3 + 8;
    v11 = a1 + 193;
    v12 = 8 * a2 - 8;
    do
    {
      v13 = *(v8 + 104);
      v14 = 1 << (v12 + v7);
      if (v13 & v14) == 0 && ((a4 >> v7))
      {
        v15 = *(v9 + 4 * v7);
        if (*(v10 + 4 * v7) == v15)
        {
          *(v8 + 104) = v13 | v14;
        }

        else if (g_Logging_Cfg >= 7)
        {
          EvLog_v("DD_Proc_Eph_Bit_Validation:  Fail SV %d SF %d Wd %d 0x%x 0x%x", v11, a2, v7 + 2, *(v10 + 4 * v7), v15);
        }
      }

      ++v7;
    }

    while (v7 != 8);
  }
}

BOOL DD_Proc_GPS_Eph_Subframe(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a9;
  *(&v120[1] + 4) = *MEMORY[0x29EDCA608];
  v95 = a1;
  v89 = a2;
  v20 = a2 - 1;
  v21 = a10 + 6 * a1;
  v96 = a1 + 1;
  v87 = a1;
  v22 = 32 * a2 + 96 * a1 - 32;
  for (i = 2; i != 10; ++i)
  {
    if (((1 << i) & *(v21 + 2 * v20)) != 0)
    {
      ++v15;
    }

    if (((1 << i) & a4) != 0)
    {
      ++v16;
      v24 = ((1 << i) & *(v21 + 2 * v20)) == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      ++v17;
      v25 = *(v19 + v22);
      if (*(a3 + 4 * i) != v25)
      {
        v26 = v18 + 1;
        v85 = *(a3 + 4 * i);
        v27 = a4;
        v28 = a3;
        v29 = v20;
        EvLog_v("DD_Proc_GPS_Eph_Subframe: SV %d SF %d Diff Wd %d 0x%x 0x%x", v96, a2, i, v85, v25);
        v18 = v26;
        v20 = v29;
        a3 = v28;
        a4 = v27;
        v19 = a9;
      }
    }

    v22 += 4;
  }

  if (v18 > 0)
  {
    if (v18 == 1 && v17 >= 4 && (a2 == 1 && (a4 & 0x3C4) != 0x3C4 || a2 >= 2 && (a4 & 0x3FC) != 0x3FC))
    {
      return 0;
    }

    v15 = 0;
    v30 = 2 * a2 - 2;
    *(a10 + 6 * v95 + v30) = 0;
    *(a7 + 6 * v95 + v30) = 256;
  }

  if (v17 - v18 < 2)
  {
    v43 = v16 < v15;
    v38 = a11;
    v37 = a6;
    if (!v43)
    {
      *(a10 + 6 * v95 + 2 * (v89 - 1)) = a4;
      v44 = *(a3 + 24);
      v45 = (v19 + 96 * v95 + 32 * (v89 - 1));
      *v45 = *(a3 + 8);
      v45[1] = v44;
    }
  }

  else
  {
    v31 = a10 + 6 * v95 + 2 * a2;
    v34 = *(v31 - 2);
    v32 = (v31 - 2);
    v33 = v34;
    v35 = (32 * a2 + 96 * v95 + v19 - 32);
    v36 = 2;
    v38 = a11;
    v37 = a6;
    do
    {
      v39 = (1 << v36) & a4;
      v40 = (1 << v36) & v33;
      if (v39)
      {
        v41 = v40 == 0;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        *v35 = *(a3 + 4 * v36);
        v33 |= (1 << v36);
        *v32 = v33;
      }

      else
      {
        if (v39)
        {
          v42 = 1;
        }

        else
        {
          v42 = v40 == 0;
        }

        if (!v42)
        {
          *(a3 + 4 * v36) = *v35;
          LODWORD(a4) = a4 | (1 << v36);
        }
      }

      ++v36;
      ++v35;
    }

    while (v36 != 10);
  }

  v46 = a2 - 1;
  if (a2 != 1 || (a4 & 7) != 7)
  {
    goto LABEL_91;
  }

  v47 = *(v19 + 96 * v95);
  LOBYTE(v48) = 7;
  if (((0xE4FE7F3uLL >> ((v47 >> 2) & 0x1F)) & 1) == 0 || !a5)
  {
    goto LABEL_93;
  }

  v93 = a3;
  v49 = (v47 >> 14) & 0x3FF;
  v50 = *(v38 + 40);
  if (*(v38 + 16))
  {
    v51 = *(v38 + 32);
    v52 = *(v38 + 32);
    do
    {
      v53 = v49;
      v49 += 1024;
    }

    while (v51 - 512 > v53);
    v54 = v53;
    if (v52 != v53)
    {
      v55 = v20;
      EvLog_v("DD_Proc_GPS_Eph_Subframe:  WARNING:  Different Week Number detected  %d != %d  SV %d", v53, *(v38 + 32), v96);
      v20 = v55;
      v19 = a9;
      v51 = *(v38 + 32);
      v52 = *(v38 + 32);
    }

    if (v52 == v53)
    {
      *(v38 + 68) = -1;
      *(v38 + 64) = -1;
      *(v38 + 70) = 0;
      *(v38 + 74) = 0;
      *(v38 + 20) = *(v38 + 24);
      goto LABEL_70;
    }

    if (*v38 < 3 || (v50 - 32) >= 0x93A41)
    {
      *(v38 + 68) = -1;
      *(v38 + 64) = -1;
      *(v38 + 70) = 0;
      *(v38 + 74) = 0;
LABEL_70:
      a3 = v93;
      if (g_Logging_Cfg >= 7)
      {
        v61 = v20;
        EvLog_v("DD_Proc_GPS_Eph_Subframe:  Week Num Candidates  %d %d  %d %d  %d %d", -1, 0, -1, 0, -1, 0);
        v20 = v61;
        v19 = a9;
      }

      goto LABEL_91;
    }

    v86 = v50;
    v90 = v20;
    EvCrt_v("DD_Proc_GPS_Eph_Subframe:  WARNING:  Different Week Number detected, possible GPS Spoofing,  %d != %d  SV %d", v53, v51, v96);
    *(v38 + 105) = 1;
    v56 = *(v38 + 32);
    if (v56 == v53)
    {
      *(v38 + 20) = *(v38 + 24);
      LOWORD(v56) = v53;
    }
  }

  else
  {
    v86 = *(v38 + 40);
    v90 = v20;
    v56 = *(*(p_api + 72) + 1734);
    if (v49 > v56)
    {
      LOWORD(v56) = v49;
    }

    v53 = ((v49 ^ 0x3FF) + v56) & 0xFC00 | v49;
    LOWORD(v56) = *(v38 + 32);
    v54 = v53;
  }

  EvLog_v("DD_Proc_GPS_Eph_Subframe:  Submitting WeekNum  %d  SV %d  DBts %d  %d", v54, v96, *(v38 + 16), v56);
  v57 = *(*(v37 + 64) + (v96 - 1)) != 1 || DD_Check_New_GPS_Eph((v96 - 1), a9, v37);
  if ((*(v38 + 16) & 1) == 0)
  {
    EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num initialised to %d from SV %d");
LABEL_61:
    *(v38 + 32) = v53;
    *(v38 + 16) = 1;
    *(v38 + 20) = *(v38 + 24);
    *(v38 + 64) = -1;
    *(v38 + 68) = -1;
    *(v38 + 70) = 0;
    *(v38 + 74) = 0;
    EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Submit %d %d from SV %d", 1, v54, v96);
    EvLog_v("DD_Proc_GPS_Eph_Subframe:  Submitted  WeekNum  %d  SV %d  DBts %d  %d", v54, v96, *(v38 + 16), *(v38 + 32));
    if (*v38 < 3)
    {
      *a12 = 0;
    }

    else
    {
      *a12 = v86 + 604800 * v54;
    }

    goto LABEL_90;
  }

  v58 = *(v38 + 32);
  if (v58 == v53 || v57)
  {
    if (v58 != v53 && v57)
    {
      v59 = 0;
      v60 = (v38 + 70);
      while (*(v60 - 3) != v53)
      {
        ++v59;
        ++v60;
        if (v59 == 3)
        {
          goto LABEL_80;
        }
      }

      if (v59 >= 3)
      {
LABEL_80:
        v67 = 0;
        v68 = (v38 + 64);
        while (*v68 != -1)
        {
          --v67;
          ++v68;
          if (v67 == -3)
          {
            goto LABEL_88;
          }
        }

        if (-v67 < 3)
        {
          *v68 = v53;
          v68[3] = 1;
          EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d found on SV %d");
          goto LABEL_89;
        }

LABEL_88:
        *(v38 + 68) = -1;
        *(v38 + 64) = -1;
        *(v38 + 70) = 0;
        *(v38 + 74) = 0;
        EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate overflow, %d >= %d");
        goto LABEL_89;
      }

      v69 = *v60 + 1;
      *v60 = v69;
      EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d observed (%d) on SV %d", v54, v69, v96);
      if (*v60 < 3)
      {
        goto LABEL_89;
      }

      EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d accepted based on %d observations");
      goto LABEL_61;
    }

    if (v58 == v53)
    {
      v62 = (v38 + 70);
      v63 = 3;
      do
      {
        v64 = *v62;
        v65 = __OFSUB__(v64, 1);
        v66 = v64 - 1;
        if (v66 < 0 == v65)
        {
          *v62 = v66;
          if (!v66)
          {
            *(v62 - 3) = -1;
          }
        }

        ++v62;
        --v63;
      }

      while (v63);
    }
  }

  else
  {
    EvCrt_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Candidate %d found on SV %d which fails bit validation check", v54, v96);
  }

LABEL_89:
  EvLog_v("GPS DD_Proc_Submit_GPS_WeekNo:  Week Num Submit %d %d from SV %d", 0, v54, v96);
LABEL_90:
  v19 = a9;
  v20 = v90;
  a3 = v93;
LABEL_91:
  if (v46 > 2)
  {
    return 0;
  }

  v48 = 0x90207u >> (8 * (v46 & 0x1F));
LABEL_93:
  if (((a4 >> v48) & 1) == 0)
  {
    return 0;
  }

  v70 = *(a3 + 4 * v48 + 2);
  if (a2 == 1 && (a4 & 0x3C4) != 0x3C4)
  {
    return 0;
  }

  if (a2 >= 2 && (a4 & 0x3FC) != 0x3FC)
  {
    return 0;
  }

  v71 = (a7 + 6 * v95);
  v72 = v71[v20];
  if (v70 != v72)
  {
    v71[v20] = v70;
  }

  if (v70 != *(a8 + 2 * v95))
  {
    for (j = 0; j != 6; j += 2)
    {
      if (2 * v20 != j)
      {
        *(a10 + 6 * v95 + j) = 0;
      }
    }

    *(a8 + 2 * v95) = v70;
  }

  v74 = (a10 + 6 * v95);
  v75 = *v74;
  if ((~v75 & 0x3C4) == 0 && (~v74[1] & 0x3FC) == 0 && (~v74[2] & 0x3FC) == 0)
  {
    v76 = *v71;
    if (v76 == v71[1] && v76 == v71[2])
    {
      v77 = (v19 + 96 * v95);
      v78 = v77[3];
      v116 = v77[2];
      v117 = v78;
      v79 = v77[5];
      v118 = v77[4];
      v119 = v79;
      v80 = v77[1];
      v114 = *v77;
      *(v120 + 7) = 0;
      v120[0] = 0;
      v113[0] = *a12;
      v113[1] = 4;
      v115 = v80;
      v99 = 0;
      memset(v98, 0, sizeof(v98));
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0;
      Get_GPS_Kep_Ephemeris(1, v87 + 1, v113, v98);
      v81 = Kep_Check_Ephemeris(*a12 / 604800, *a12 % 604800, 1, v98);
      v82 = v81;
      if (!ST_Check_Eph_Kep_Err("DD_Proc_GPS_Eph_Subframe:", v81, v98))
      {
        if ((v82 & 0xC) != 0)
        {
          *v74 = 0;
        }

        if ((v82 & 0x3F0) != 0)
        {
          v74[1] = 0;
        }

        if ((v82 & 0xC00) != 0)
        {
          v74[2] = 0;
LABEL_119:
          *(*(a6 + 112) + v95) = 1;
          goto LABEL_120;
        }

        if ((v82 & 0x3FC) != 0)
        {
          goto LABEL_119;
        }
      }

LABEL_120:
      v75 = *v74;
      v19 = a9;
    }
  }

  if ((~v75 & 0x3C4) != 0)
  {
    return 0;
  }

  if ((~v74[1] & 0x3FC) != 0)
  {
    return 0;
  }

  if ((~v74[2] & 0x3FC) != 0)
  {
    return 0;
  }

  v83 = *v71;
  if (v83 != v71[1] || v83 != v71[2])
  {
    return 0;
  }

  if (v70 == v72 && *(a6 + 116 * v95 + 224) == 0xFFFFFF && ((a5 & 1) != 0 || ((0xE4FE7F3uLL >> ((*(v19 + 96 * v95) >> 2) & 0x1F)) & 1) == 0))
  {
    result = *(a13 + v95) == 0;
  }

  else
  {
    result = 0;
    *(a13 + v95) = 1;
  }

  *v74 = 0;
  v74[2] = 0;
  return result;
}

BOOL DD_Proc_GPS_Alm_Subframe(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a1;
  v44 = *MEMORY[0x29EDCA608];
  v12 = ((*(a3 + 16) & 0xE0) == 0) & (0xE4FE7F3uLL >> *(a3 + 16));
  v13 = (a1 - 1);
  v14 = *(*a7 + v13);
  if (v14 == 1 && v12 == 0)
  {
    goto LABEL_9;
  }

  if (((v14 == 0) & v12) != 1)
  {
    goto LABEL_13;
  }

  v16 = a7[8];
  if (*(v16 + v13) == 1)
  {
    v17 = a7 + 116 * (a1 - 1);
    v18 = *(v17 + 30);
    if (((0xE4FE7F3uLL >> ((*(v17 + 32) >> 2) & 0x1F)) & 1) == 0 && v18 + 3600 > a4)
    {
LABEL_9:
      v12 = 0;
      goto LABEL_13;
    }

    if (v18 + 100 < a4)
    {
      *(a7[4] + v13) = 0;
      *(v16 + v13) = 0;
      v19 = a5 + 6 * (a1 - 1);
      *v19 = 16777472;
      *(v19 + 4) = 256;
      *(a6 + 2 * v13) = 256;
    }
  }

  v12 = 1;
LABEL_13:
  v41 = 0;
  v40 = a4;
  v42 = *(a3 + 8);
  v43 = *(a3 + 24);
  v35 = 0;
  memset(v34, 0, 15);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  Get_GPS_Kep_Almanac(&v40, v34);
  v20 = Kep_Check_Almanac(a4 / 604800, v34);
  if (v20)
  {
    *(a7[14] + v13) = 1;
  }

  result = ST_Check_Alm_Kep_Err("DD_Proc_GPS_Alm_Subframe:", v20, v34);
  if (result)
  {
    v22 = *a7;
    *(v22 + v13) = v12;
    v23 = a7 + 44 * v13;
    *(v23 + 3777) = a2;
    v24 = *(a3 + 8);
    *(v23 + 7572) = *(a3 + 24);
    *(v23 + 7556) = v24;
    *(a7[5] + v13) = 1;
    *(a7[10] + v13) = 1;
    if (*(v22 + v13))
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = a7[3];
    *(a7[2] + 20 * v13 + 4) = v25;
    *(v23 + 1887) = 4;
    *(v23 + 1886) = a4;
    if (!*(v26 + 20 * v13 + 8))
    {
      *(a7[1] + v13) = v12;
      if (v12)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      *(v26 + 20 * v13 + 4) = v27;
    }

    if (a4 >= 1)
    {
      result = Core_Save_GPS_Alm(v11, 0, (v23 + 7544));
      v22 = *a7;
    }

    v28 = 0;
    LODWORD(v29) = 0;
    v30 = p_NV;
    v31 = v22[1];
    *(p_NV + 100) = *v22;
    *(v30 + 116) = v31;
    v32 = 55665;
    do
    {
      v33 = *(v30 + 96 + v28) ^ BYTE1(v32);
      v32 = 52845 * (v32 + v33) + 22719;
      v29 = (v29 + v33);
      ++v28;
    }

    while (v28 != 40);
    *(v30 + 88) = v29;
  }

  return result;
}

uint64_t DD_Proc_GPS_Health_Subframe(const unsigned int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 **a6)
{
  v32 = *MEMORY[0x29EDCA608];
  Decode_GPS_Health_Subframe(a1, &v30);
  v11 = 0;
  v12 = 0;
  v13 = (a3 + 4);
  v14 = 7564;
  v15 = 128;
  do
  {
    v16 = *(&v30 + v12);
    if ((*(*a6 + v12) & 1) != 0 || (*(&v30 + v12) & 1) == 0)
    {
      goto LABEL_17;
    }

    v17 = a6 + v15;
    v18 = a6[8];
    if (*(v18 + v12) == 1 && ((0xE4FE7F3uLL >> ((*(a6 + v15) >> 2) & 0x1F)) & 1) == 0 && *(v17 - 2) + 3600 > a2)
    {
LABEL_10:
      v16 = 0;
      *(&v30 + v12) = 0;
      goto LABEL_17;
    }

    v19 = a6[10];
    if (*(v19 + v12) != 1)
    {
      goto LABEL_14;
    }

    v20 = *(a6 + v14 - 20);
    if (((0xE4FE7F3uLL >> (*(a6 + v14) & 0x1F)) & 1) == 0 && v20 + 3600 > a2)
    {
      goto LABEL_10;
    }

    if (v20 + 100 < a2)
    {
      *(a6[5] + v12) = 0;
      *(v19 + v12) = 0;
      *(a5 + v12) = -1;
      v18 = a6[8];
      if ((*(v18 + v12) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_14:
      if (!*(v18 + v12))
      {
        goto LABEL_17;
      }
    }

    if (*(v17 - 2) + 100 < a2)
    {
      *(a6[4] + v12) = 0;
      *(v18 + v12) = 0;
      *(v13 - 1) = 16777472;
      *v13 = 256;
      *(a4 + 2 * v12) = 256;
    }

LABEL_17:
    if (v16)
    {
      result = 1;
    }

    else
    {
      result = 2;
    }

    v22 = a6[3];
    *(a6[2] + v11 + 4) = result;
    if (!*(v22 + v11 + 8))
    {
      *(a6[1] + v12) = v16;
      *(v22 + v11 + 4) = result;
    }

    ++v12;
    v11 += 20;
    v13 += 3;
    v14 += 44;
    v15 += 116;
  }

  while (v12 != 24);
  v23 = 0;
  LODWORD(v24) = 0;
  v25 = *a6;
  *v25 = v30;
  *(v25 + 2) = v31;
  v26 = p_NV;
  v27 = **a6;
  *(p_NV + 116) = (*a6)[1];
  *(v26 + 100) = v27;
  v28 = 55665;
  do
  {
    v29 = *(v26 + 96 + v23) ^ BYTE1(v28);
    v28 = 52845 * (v28 + v29) + 22719;
    v24 = (v24 + v29);
    ++v23;
  }

  while (v23 != 40);
  *(v26 + 88) = v24;
  return result;
}

void DD_Proc_GPS_ION_UTC_Subframe(unsigned int a1, _DWORD *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v48[3] = *MEMORY[0x29EDCA608];
  v9 = a2[7];
  v8 = a2[8];
  v10 = a2[9];
  v11 = HIWORD(v10);
  v12 = v8 << 8 >> 24;
  v13 = SBYTE2(v10);
  if (BYTE2(v8) > 0x20u)
  {
    goto LABEL_5;
  }

  v14 = v12 - 18;
  if (v12 - 18 < 0)
  {
    v14 = 18 - v12;
  }

  if (v14 > 4)
  {
    goto LABEL_5;
  }

  v15 = v12 - SBYTE2(v10);
  if (v15 < 0)
  {
    v15 = SBYTE2(v10) - v12;
  }

  if ((v8 - 8) < 0xF9u || v15 > 1 || BYTE1(v9) >= 0x93u)
  {
LABEL_5:
    EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  Invalid UTC Model  %d %d %d  %d %d %d", a2[7], BYTE1(a2[7]), (a2[8] << 8) >> 24, SBYTE2(v10), BYTE1(a2[8]), a2[8]);
    *(a5 + a1) = 1;
  }

  else
  {
    v18 = a3;
    v46 = a2[2];
    v47 = a2[3];
    v20 = a2[4];
    v19 = a2[5];
    v21 = a2[6];
    if (BYTE2(v10) != BYTE2(v8))
    {
      v42 = a2[6];
      v22 = a2[5];
      v23 = a2[4];
      v24 = Is_Future_Leap_Sec_Date_Not_Valid(a3 / 604800, 1, BYTE1(v8), v8);
      v20 = v23;
      v21 = v42;
      v18 = a3;
      v19 = v22;
      if (v24)
      {
        EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  Invalid UTC Future Leap Second date  %d  %d %d %d");
        return;
      }
    }

    v43 = v19 << 8 >> 8;
    v45 = v20;
    v41 = (v21 << 8) | BYTE2(v9);
    memset(v48, 0, 22);
    if (!Core_Get_GPS_UTC(v18, v48))
    {
      goto LABEL_26;
    }

    if (BYTE2(v48[2]) != BYTE2(v8))
    {
      goto LABEL_20;
    }

    v25 = SBYTE5(v48[2]) - v13;
    if (v25 < 0)
    {
      v25 = v13 - SBYTE5(v48[2]);
    }

    if (v25 >= 2)
    {
LABEL_20:
      *(a6 + 8992) = 1;
      EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  OTA UTC Leap Seconds  %d  %d  incompatible with Assistance  %d  %d");
      return;
    }

    v26 = a4 - 1024 - BYTE1(v48[2]);
    if (v26 >= 127)
    {
      v26 = 127;
    }

    v27 = a4 - 1024 - v9;
    if (v27 >= 127)
    {
      v27 = 127;
    }

    if (vabdd_f64(v43 * 8.8817842e-16 * (v18 - 619315200 - (BYTE1(v9) << 12) - 604800 * ((a4 - 769 - (v27 + v9)) & 0x1FFFF00 | v9)) + v41 * 9.31322575e-10, SLODWORD(v48[1]) * 8.8817842e-16 * (v18 - 619315200 - (LOBYTE(v48[2]) << 12) - 604800 * ((a4 - 769 - BYTE1(v48[2]) - v26) & 0x1FFFF00 | BYTE1(v48[2]))) + SHIDWORD(v48[1]) * 9.31322575e-10) > 0.000001)
    {
      *(a6 + 8993) = 1;
      EvCrt_v("DD_Proc_GPS_ION_UTC_Subframe:  Rejected:  OTA UTC Correction  %d ns incompatible with Assistance %d ns");
    }

    else
    {
LABEL_26:
      *(a6 + 8952) = v18;
      *(a6 + 8960) = BYTE1(v46);
      *(a6 + 8961) = v46;
      *(a6 + 8962) = BYTE2(v47);
      *(a6 + 8963) = BYTE1(v47);
      *(a6 + 8964) = v47;
      *(a6 + 8965) = BYTE2(v45);
      *(a6 + 8966) = BYTE1(v45);
      *(a6 + 8967) = v45;
      *(a6 + 8956) = 4;
      if (v18 >= 1)
      {
        v28 = 0;
        LODWORD(v29) = 0;
        v30 = p_NV;
        v31 = p_NV + 144;
        *(p_NV + 144) = *(a6 + 8952);
        v32 = 55665;
        do
        {
          v33 = *(v31 + v28) ^ BYTE1(v32);
          v32 = 52845 * (v32 + v33) + 22719;
          v29 = (v29 + v33);
          ++v28;
        }

        while (v28 != 16);
        *(v30 + 136) = v29;
      }

      if (*(a6 + 8972) > 4)
      {
        EvVrb_v("DD_Proc_GPS_ION_UTC_Subframe:  Ignoring OTA UTC Params, prefer source XOF, PRN %d", a1);
      }

      else
      {
        EvLog_v("DD_Proc_GPS_ION_UTC_Subframe:  Adopting OTA UTC Params, PRN %d", a1);
        *(a6 + 8968) = v18;
        *(a6 + 8976) = v43;
        *(a6 + 8980) = v41;
        *(a6 + 8984) = BYTE1(v9);
        *(a6 + 8985) = v9;
        *(a6 + 8986) = BYTE2(v8);
        *(a6 + 8987) = BYTE1(v8);
        *(a6 + 8988) = v8;
        *(a6 + 8989) = v11;
        *(a6 + 8972) = 4;
        if (v18 >= 1)
        {
          v34 = 0;
          LODWORD(v35) = 0;
          v36 = p_NV;
          v37 = *(a6 + 8984);
          v38 = p_NV + 168;
          *(p_NV + 168) = *(a6 + 8968);
          *(v36 + 184) = v37;
          v39 = 55665;
          do
          {
            v40 = *(v38 + v34) ^ BYTE1(v39);
            v39 = 52845 * (v39 + v40) + 22719;
            v35 = (v35 + v40);
            ++v34;
          }

          while (v34 != 24);
          *(v36 + 160) = v35;
        }
      }
    }
  }
}

uint64_t DD_Proc_GPS_AS_SV_Config_Subframe(const unsigned int *a1, int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD **a7)
{
  v31[1] = *MEMORY[0x29EDCA608];
  Decode_GPS_AS_SV_Config_Subframe(a1, a3);
  Decode_GPS_Health_From_AS_Subfr(a1, v31);
  v13 = (a4 + 148);
  v14 = 24;
  v15 = 484;
  v16 = 8620;
  v17 = 2912;
  do
  {
    v18 = v31[-3].i8[v14];
    if ((*(*a7 + v14) & 1) != 0 || (v31[-3].i8[v14] & 1) == 0)
    {
      goto LABEL_17;
    }

    v19 = a7 + v17;
    v20 = a7[8];
    if (*(v20 + v14) == 1 && ((0xE4FE7F3uLL >> ((*(a7 + v17) >> 2) & 0x1F)) & 1) == 0 && *(v19 - 2) + 3600 > a2)
    {
LABEL_10:
      v18 = 0;
      v31[-3].i8[v14] = 0;
      goto LABEL_17;
    }

    v21 = a7[10];
    if (*(v21 + v14) != 1)
    {
      goto LABEL_14;
    }

    v22 = *(a7 + v16 - 20);
    if (((0xE4FE7F3uLL >> (*(a7 + v16) & 0x1F)) & 1) == 0 && v22 + 3600 > a2)
    {
      goto LABEL_10;
    }

    if (v22 + 100 < a2)
    {
      *(a7[5] + v14) = 0;
      *(v21 + v14) = 0;
      *(a6 + v14) = -1;
      v20 = a7[8];
      if ((*(v20 + v14) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_14:
      if (!*(v20 + v14))
      {
        goto LABEL_17;
      }
    }

    if (*(v19 - 2) + 100 < a2)
    {
      *(a7[4] + v14) = 0;
      *(v20 + v14) = 0;
      *(v13 - 1) = 16777472;
      *v13 = 256;
      *(a5 + 2 * v14) = 256;
    }

LABEL_17:
    if (v18)
    {
      result = 1;
    }

    else
    {
      result = 2;
    }

    v24 = a7[3];
    *(a7[2] + v15) = result;
    if (!*(v24 + v15 + 4))
    {
      *(a7[1] + v14) = v18;
      *(v24 + v15) = result;
    }

    ++v14;
    v15 += 20;
    v13 += 3;
    v16 += 44;
    v17 += 116;
  }

  while (v14 != 32);
  v25 = 0;
  LODWORD(v26) = 0;
  *(*a7 + 3) = v31[0];
  v27 = p_NV;
  v28 = (*a7)[1];
  *(p_NV + 100) = **a7;
  *(v27 + 116) = v28;
  v29 = 55665;
  do
  {
    v30 = *(v27 + 96 + v25) ^ BYTE1(v29);
    v29 = 52845 * (v29 + v30) + 22719;
    v26 = (v26 + v30);
    ++v25;
  }

  while (v25 != 40);
  *(v27 + 88) = v26;
  return result;
}

uint64_t DD_Save_New_GPS_Eph(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = -3712;
  v12 = 7564;
  do
  {
    if (*(a3 + v10) != 1)
    {
      goto LABEL_23;
    }

    v13 = (a2 + v8);
    v14 = *(a2 + v8);
    if (!DD_Check_New_GPS_Eph(v10, a2, a5))
    {
      *(a3 + v10) = 0;
      v13[4] = 0u;
      v13[5] = 0u;
      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
      goto LABEL_23;
    }

    v15 = (*a5 + v10);
    v16 = (0xE4FE7F3uLL >> ((v14 >> 2) & 0x1F)) & 1;
    if (!v16 || (*v15 & 1) != 0)
    {
      *v15 = v16;
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = a5[10];
      if (*(v17 + v10) != 1)
      {
        goto LABEL_15;
      }

      v18 = *(a5 + v12 - 20);
      if (((0xE4FE7F3uLL >> (*(a5 + v12) & 0x1F)) & 1) != 0 || v18 + 3600 <= a1)
      {
        if (v18 + 100 < a1)
        {
          *(a5[5] + v10) = 0;
          *(v17 + v10) = 0;
          *(a4 + v10) = -1;
          v15 = (*a5 + v10);
        }

LABEL_15:
        *v15 = 1;
LABEL_16:
        LOBYTE(v16) = 1;
        v19 = 1;
        goto LABEL_17;
      }

      LOBYTE(v16) = 0;
      *v15 = 0;
    }

    v19 = 2;
LABEL_17:
    *(a5[2] + v9) = v19;
    v20 = a5 + v11;
    v21 = v13[4];
    v22 = v13[5];
    v23 = v13[3];
    *(v20 + 242) = v13[2];
    *(v20 + 245) = v22;
    *(v20 + 244) = v21;
    *(v20 + 243) = v23;
    v24 = *v13;
    *(v20 + 241) = v13[1];
    *(v20 + 240) = v24;
    if (*(a5[9] + v10) == 1)
    {
      *(v20 + 1970) = *(v20 + 3826);
      *(v20 + 3942) = *(v20 + 7654);
    }

    v25 = a5[3];
    if (!*(v25 + v9 + 8))
    {
      *(a5[1] + v10) = v16;
      *(v25 + v9) = v19;
    }

    *(v20 + 958) = a1;
    v26 = a5 + v11;
    *(v26 + 959) = 4;
    *(a5[4] + v10) = 1;
    *(a5[8] + v10) = 1;
    *(v26 + 984) = 0;
    *(a5[13] + v10) = 0;
    *(a3 + v10) = 0;
    if (a1 >= 1)
    {
      *(a5[11] + v10) = 1;
      Core_Save_GPS_Eph((v10 + 1), 0, (v20 + 3832));
    }

LABEL_23:
    ++v10;
    v9 += 20;
    v11 += 116;
    v8 += 96;
    v12 += 44;
  }

  while (v10 != 32);
  return 1;
}

BOOL DD_Check_New_GPS_Eph(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(*(a3 + 64) + a1);
  v4 = a3 + 116 * a1;
  v5 = *(v4 + 176);
  v16 = *(v4 + 160);
  v17 = v5;
  v6 = *(v4 + 208);
  v18 = *(v4 + 192);
  v19 = v6;
  v7 = *(v4 + 144);
  v14 = *(v4 + 128);
  v15 = v7;
  if (v3 != 1)
  {
    return 1;
  }

  v8 = a2 + 96 * a1;
  if (((*(v8 + 20) ^ DWORD1(v15)) & 0xFF0000) != 0)
  {
    return 1;
  }

  v10 = 0;
  v11 = *(v4 + 224);
  v12 = 0uLL;
  do
  {
    v12 = vsubq_s32(v12, vmvnq_s8(vceqq_s32(*(&v14 + v10), *(v8 + v10))));
    v10 += 16;
  }

  while (v10 != 96);
  if (vaddvq_s32(v12))
  {
    v13 = v11 == 0xFFFFFF;
  }

  else
  {
    v13 = 0;
  }

  return !v13;
}

void Comp_Track8(long double *a1)
{
  if (fabs(*a1) > 0.0005 || fabs(a1[1]) > 0.0005)
  {
    atan2(a1[1], *a1);
  }
}

uint64_t ds_Config(char **a1, uint64_t a2, uint64_t a3, double *a4)
{
  v169 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = 83;
  v10 = 1u;
  do
  {
    *a1 = v8 + 1;
    *v8 = v9;
    v8 = *a1;
    if (*a1 >= a1[3])
    {
      v8 = a1[2];
      *a1 = v8;
    }

    v9 = aSoftwareConfig[v10++];
  }

  while (v10 != 32);
  *a1 = v8 + 1;
  *v8 = 10;
  v11 = *a1;
  if (*a1 >= a1[3])
  {
    v11 = a1[2];
  }

  v12 = 83;
  v13 = 1u;
  do
  {
    *a1 = v11 + 1;
    *v11 = v12;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v12 = aSystemStatus[v13++];
  }

  while (v13 != 16);
  v14 = 32;
  v15 = 1u;
  do
  {
    *a1 = v11 + 1;
    *v11 = v14;
    v11 = *a1;
    if (*a1 >= a1[3])
    {
      v11 = a1[2];
      *a1 = v11;
    }

    v14 = aFixInt[v15++];
  }

  while (v15 != 10);
  sprintf_4f(a1, *(a2 + 1668), 4);
  v16 = 0;
  v17 = *a1;
  v18 = 32;
  do
  {
    *a1 = v17 + 1;
    *v17 = v18;
    v17 = *a1;
    if (*a1 >= a1[3])
    {
      v17 = a1[2];
      *a1 = v17;
    }

    v18 = aRunTimeout[++v16];
  }

  while (v16 != 16);
  sprintf_4f(a1, *(a2 + 1676), 4);
  v19 = 0;
  v20 = *a1;
  v21 = 32;
  do
  {
    *a1 = v20 + 1;
    *v20 = v21;
    v20 = *a1;
    if (*a1 >= a1[3])
    {
      v20 = a1[2];
      *a1 = v20;
    }

    v21 = aBirthGpsWn[++v19];
  }

  while (v19 != 16);
  sprintf_5d(a1, *(a2 + 1736));
  v22 = *a1;
  v23 = 32;
  v24 = 1u;
  do
  {
    *a1 = v22 + 1;
    *v22 = v23;
    v22 = *a1;
    if (*a1 >= a1[3])
    {
      v22 = a1[2];
      *a1 = v22;
    }

    v23 = aAccMasks[v24++];
  }

  while (v24 != 14);
  sprintf_ACC(a1, *(a2 + 1680));
  sprintf_ACC(a1, *(a2 + 1696));
  sprintf_ACC(a1, *(a2 + 1688));
  sprintf_ACC(a1, *(a2 + 1704));
  v25 = (*a1)++;
  *v25 = 10;
  v26 = *a1;
  if (*a1 >= a1[3])
  {
    v26 = a1[2];
  }

  v27 = 32;
  v28 = 1u;
  do
  {
    *a1 = v26 + 1;
    *v26 = v27;
    v26 = *a1;
    if (*a1 >= a1[3])
    {
      v26 = a1[2];
      *a1 = v26;
    }

    v27 = aNomclkdriftNsS[v28++];
  }

  while (v28 != 36);
  v29 = *(a2 + 1712) * 1000000000.0;
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
      v32 = v31;
    }

    else
    {
      v32 = 0x80000000;
    }
  }

  else
  {
    v32 = 0x7FFFFFFFLL;
  }

  sprintf_6d(a1, v32);
  v33 = *a1;
  v34 = 32;
  v35 = 1u;
  do
  {
    *a1 = v33 + 1;
    *v33 = v34;
    v33 = *a1;
    if (*a1 >= a1[3])
    {
      v33 = a1[2];
      *a1 = v33;
    }

    v34 = aNomclkdriftdev[v35++];
  }

  while (v35 != 25);
  v36 = *(a2 + 1720) * 1000000000.0;
  v37 = -0.5;
  if (v36 > 0.0)
  {
    v37 = 0.5;
  }

  v38 = v36 + v37;
  if (v38 <= 2147483650.0)
  {
    if (v38 >= -2147483650.0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0x80000000;
    }
  }

  else
  {
    v39 = 0x7FFFFFFFLL;
  }

  sprintf_6d(a1, v39);
  v40 = *a1;
  v41 = 32;
  v42 = 1u;
  do
  {
    *a1 = v40 + 1;
    *v40 = v41;
    v40 = *a1;
    if (*a1 >= a1[3])
    {
      v40 = a1[2];
      *a1 = v40;
    }

    v41 = aDynamics[v42++];
  }

  while (v42 != 13);
  sprintf_2d(a1, *(a2 + 52));
  v43 = *a1;
  if (*(a2 + 1854) == 1)
  {
    v44 = 32;
    v45 = 1u;
    do
    {
      *a1 = v43 + 1;
      *v43 = v44;
      v43 = *a1;
      if (*a1 >= a1[3])
      {
        v43 = a1[2];
        *a1 = v43;
      }

      v44 = aRequireBdsCons[v45++];
    }

    while (v45 != 28);
  }

  *a1 = v43 + 1;
  *v43 = 10;
  v46 = *a1;
  if (*a1 >= a1[3])
  {
    v46 = a1[2];
  }

  v47 = 80;
  v48 = 1u;
  do
  {
    *a1 = v46 + 1;
    *v46 = v47;
    v46 = *a1;
    if (*a1 >= a1[3])
    {
      v46 = a1[2];
      *a1 = v46;
    }

    v47 = aProcessNoiseBo[v48++];
  }

  while (v48 != 27);
  sprintf_sgR8(a1, a4[4]);
  v49 = *a1;
  v50 = 32;
  v51 = 1u;
  do
  {
    *a1 = v49 + 1;
    *v49 = v50;
    v49 = *a1;
    if (*a1 >= a1[3])
    {
      v49 = a1[2];
      *a1 = v49;
    }

    v50 = aClkGSens[v51++];
  }

  while (v51 != 14);
  sprintf_sgR8(a1, a4[5]);
  v52 = *a1;
  v53 = 32;
  v54 = 1u;
  do
  {
    *a1 = v52 + 1;
    *v52 = v53;
    v52 = *a1;
    if (*a1 >= a1[3])
    {
      v52 = a1[2];
      *a1 = v52;
    }

    v53 = aClkPhase[v54++];
  }

  while (v54 != 14);
  sprintf_sgR8(a1, a4[7]);
  v55 = *a1;
  v56 = 32;
  v57 = 1u;
  do
  {
    *a1 = v55 + 1;
    *v55 = v56;
    v55 = *a1;
    if (*a1 >= a1[3])
    {
      v55 = a1[2];
      *a1 = v55;
    }

    v56 = aClkFreq[v57++];
  }

  while (v57 != 14);
  sprintf_sgR8(a1, a4[8]);
  v58 = (*a1)++;
  *v58 = 10;
  v59 = *a1;
  if (*a1 >= a1[3])
  {
    v59 = a1[2];
  }

  v60 = 32;
  v61 = 1u;
  do
  {
    *a1 = v59 + 1;
    *v59 = v60;
    v59 = *a1;
    if (*a1 >= a1[3])
    {
      v59 = a1[2];
      *a1 = v59;
    }

    v60 = aHorzPos[v61++];
  }

  while (v61 != 27);
  sprintf_sgR8(a1, a4[10]);
  v62 = *a1;
  v63 = 32;
  v64 = 1u;
  do
  {
    *a1 = v62 + 1;
    *v62 = v63;
    v62 = *a1;
    if (*a1 >= a1[3])
    {
      v62 = a1[2];
      *a1 = v62;
    }

    v63 = aVertPos[v64++];
  }

  while (v64 != 14);
  sprintf_sgR8(a1, a4[11]);
  v65 = *a1;
  v66 = 32;
  v67 = 1u;
  do
  {
    *a1 = v65 + 1;
    *v65 = v66;
    v65 = *a1;
    if (*a1 >= a1[3])
    {
      v65 = a1[2];
      *a1 = v65;
    }

    v66 = aHorzAcc[v67++];
  }

  while (v67 != 14);
  sprintf_sgR8(a1, a4[14]);
  v68 = *a1;
  v69 = 32;
  v70 = 1u;
  do
  {
    *a1 = v68 + 1;
    *v68 = v69;
    v68 = *a1;
    if (*a1 >= a1[3])
    {
      v68 = a1[2];
      *a1 = v68;
    }

    v69 = aVertAcc[v70++];
  }

  while (v70 != 14);
  sprintf_sgR8(a1, a4[15]);
  v71 = (*a1)++;
  *v71 = 10;
  v72 = *a1;
  if (*a1 >= a1[3])
  {
    v72 = a1[2];
  }

  v73 = 82;
  v74 = 1u;
  do
  {
    *a1 = v72 + 1;
    *v72 = v73;
    v72 = *a1;
    if (*a1 >= a1[3])
    {
      v72 = a1[2];
      *a1 = v72;
    }

    v73 = aReferencePosit[v74++];
  }

  while (v74 != 24);
  v167 = a3;
  v75 = 0;
  v76 = a4 + 8527;
  v77 = 1;
  while (1)
  {
    v78 = v76[v75] * 57.2957795;
    v79 = -v78;
    if (v78 >= 0.0)
    {
      v79 = v76[v75] * 57.2957795;
    }

    v80 = v79;
    v81 = (v79 - v80) * 60.0;
    v82 = v81;
    v83 = (v81 - v82) * 60.0;
    sprintf_3d(a1, v80);
    sprintf_3d(a1, v82);
    v84 = v83 * 100000.0 <= 0.0 ? -0.5 : 0.5;
    v85 = v83 * 100000.0 + v84;
    if (v85 <= 2147483650.0)
    {
      v86 = v85 >= -2147483650.0 ? v85 : 0x80000000;
    }

    else
    {
      v86 = 0x7FFFFFFFLL;
    }

    sprintf_8f(a1, v86, 6);
    v87 = v76[v75];
    if ((v77 & 1) == 0)
    {
      break;
    }

    v77 = 0;
    if (v87 >= 0.0)
    {
      v88 = " N ";
    }

    else
    {
      v88 = " S ";
    }

    v89 = *v88;
    v75 = 1;
    if (*v88)
    {
      v90 = *a1;
      v91 = (v88 + 1);
      do
      {
        *a1 = v90 + 1;
        *v90 = v89;
        v90 = *a1;
        if (*a1 >= a1[3])
        {
          v90 = a1[2];
          *a1 = v90;
        }

        v92 = *v91++;
        v89 = v92;
      }

      while (v92);
      v77 = 0;
      v75 = 1;
    }
  }

  v93 = " E ";
  if (v87 < 0.0)
  {
    v93 = " W ";
  }

  v94 = *v93;
  if (*v93)
  {
    v95 = *a1;
    v96 = (v93 + 1);
    do
    {
      *a1 = v95 + 1;
      *v95 = v94;
      v95 = *a1;
      if (*a1 >= a1[3])
      {
        v95 = a1[2];
        *a1 = v95;
      }

      v97 = *v96++;
      v94 = v97;
    }

    while (v97);
  }

  sprintf_sgR8(a1, a4[8529]);
  v98 = (*a1)++;
  *v98 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Nav_Debug_Flush_Check(a1);
  v99 = *a1;
  v100 = 71;
  v101 = 1u;
  do
  {
    *a1 = v99 + 1;
    *v99 = v100;
    v99 = *a1;
    if (*a1 >= a1[3])
    {
      v99 = a1[2];
      *a1 = v99;
    }

    v100 = aGlonassL1ofInt[v101++];
  }

  while (v101 != 37);
  if (*(a2 + 1992))
  {
    v102 = "External_API";
  }

  else
  {
    v102 = &ICB_Model_Name[12 * *(a2 + 1876)];
  }

  v103 = *v102;
  if (*v102)
  {
    v104 = (v102 + 1);
    do
    {
      *a1 = v99 + 1;
      *v99 = v103;
      v99 = *a1;
      if (*a1 >= a1[3])
      {
        v99 = a1[2];
        *a1 = v99;
      }

      v105 = *v104++;
      v103 = v105;
    }

    while (v105);
  }

  v106 = 32;
  v107 = 1u;
  do
  {
    *a1 = v99 + 1;
    *v99 = v106;
    v99 = *a1;
    if (*a1 >= a1[3])
    {
      v99 = a1[2];
      *a1 = v99;
    }

    v106 = asc_29907417D[v107++];
  }

  while (v107 != 4);
  strcpy(v168, "-7");
  LOBYTE(v108) = 45;
  v109 = 1;
  do
  {
    *a1 = v99 + 1;
    *v99 = v108;
    v99 = *a1;
    if (*a1 >= a1[3])
    {
      v99 = a1[2];
      *a1 = v99;
    }

    v108 = v168[v109++];
  }

  while (v108);
  v110 = 46;
  v111 = 1u;
  do
  {
    *a1 = v99 + 1;
    *v99 = v110;
    v99 = *a1;
    if (*a1 >= a1[3])
    {
      v99 = a1[2];
      *a1 = v99;
    }

    v110 = asc_299074181[v111++];
  }

  while (v111 != 4);
  LOBYTE(v112) = 54;
  strcpy(v168, "6");
  v113 = 1;
  do
  {
    *a1 = v99 + 1;
    *v99 = v112;
    v99 = *a1;
    if (*a1 >= a1[3])
    {
      v99 = a1[2];
      *a1 = v99;
    }

    v112 = v168[v113++];
  }

  while (v112);
  *a1 = v99 + 1;
  *v99 = 93;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  for (i = 0; i != 112; i += 8)
  {
    v115 = *(a2 + 1880 + i) * 100.0;
    if (v115 <= 2147483650.0)
    {
      if (v115 >= -2147483650.0)
      {
        v116 = v115;
      }

      else
      {
        v116 = 0x80000000;
      }
    }

    else
    {
      v116 = 0x7FFFFFFFLL;
    }

    sprintf_9f(a1, v116, 3);
  }

  v117 = (*a1)++;
  *v117 = 10;
  v118 = *a1;
  if (*a1 >= a1[3])
  {
    v118 = a1[2];
  }

  v119 = 66;
  v120 = 1u;
  do
  {
    *a1 = v118 + 1;
    *v118 = v119;
    v118 = *a1;
    if (*a1 >= a1[3])
    {
      v118 = a1[2];
      *a1 = v118;
    }

    v119 = aBeidouB1iInter[v120++];
  }

  while (v120 != 37);
  v121 = ICB_Model_Name[12 * *(a2 + 1876)];
  if (v121)
  {
    v122 = &ICB_Model_Name[12 * *(a2 + 1876) + 1];
    do
    {
      *a1 = v118 + 1;
      *v118 = v121;
      v118 = *a1;
      if (*a1 >= a1[3])
      {
        v118 = a1[2];
        *a1 = v118;
      }

      v123 = *v122++;
      v121 = v123;
    }

    while (v123);
  }

  v124 = *(a2 + 2000) * 100.0;
  if (v124 <= 2147483650.0)
  {
    if (v124 >= -2147483650.0)
    {
      v125 = v124;
    }

    else
    {
      v125 = 0x80000000;
    }
  }

  else
  {
    v125 = 0x7FFFFFFFLL;
  }

  sprintf_9f(a1, v125, 3);
  v126 = (*a1)++;
  *v126 = 10;
  v127 = *a1;
  if (*a1 >= a1[3])
  {
    v127 = a1[2];
  }

  v128 = 76;
  v129 = 1u;
  do
  {
    *a1 = v127 + 1;
    *v127 = v128;
    v127 = *a1;
    if (*a1 >= a1[3])
    {
      v127 = a1[2];
      *a1 = v127;
    }

    v128 = aL5BandFamilyIn[v129++];
  }

  while (v129 != 37);
  if (*(a2 + 2016))
  {
    v130 = "External_API";
  }

  else
  {
    v130 = &ICB_Model_Name[12 * *(a2 + 1876)];
  }

  v131 = *v130;
  if (*v130)
  {
    v132 = (v130 + 1);
    do
    {
      *a1 = v127 + 1;
      *v127 = v131;
      v127 = *a1;
      if (*a1 >= a1[3])
      {
        v127 = a1[2];
        *a1 = v127;
      }

      v133 = *v132++;
      v131 = v133;
    }

    while (v133);
  }

  v134 = *(a2 + 2008) * 100.0;
  if (v134 <= 2147483650.0)
  {
    if (v134 >= -2147483650.0)
    {
      v135 = v134;
    }

    else
    {
      v135 = 0x80000000;
    }
  }

  else
  {
    v135 = 0x7FFFFFFFLL;
  }

  sprintf_9f(a1, v135, 3);
  v136 = (*a1)++;
  *v136 = 10;
  v137 = *a1;
  if (*a1 >= a1[3])
  {
    v137 = a1[2];
  }

  v138 = 0;
  v139 = 69;
  do
  {
    *a1 = v137 + 1;
    *v137 = v139;
    v137 = *a1;
    if (*a1 >= a1[3])
    {
      v137 = a1[2];
      *a1 = v137;
    }

    v139 = aEstL5GroupDela[++v138];
  }

  while (v138 != 32);
  v140 = *(a2 + 2032) * 1000.0;
  if (v140 <= 2147483650.0)
  {
    if (v140 >= -2147483650.0)
    {
      v141 = v140;
    }

    else
    {
      v141 = 0x80000000;
    }
  }

  else
  {
    v141 = 0x7FFFFFFFLL;
  }

  sprintf_4f(a1, v141, 4);
  v142 = *a1;
  v143 = 32;
  v144 = 1u;
  do
  {
    *a1 = v142 + 1;
    *v142 = v143;
    v142 = *a1;
    if (*a1 >= a1[3])
    {
      v142 = a1[2];
      *a1 = v142;
    }

    v143 = aM_2[v144++];
  }

  while (v144 != 7);
  v145 = *(a2 + 2040);
  if (v145 >= 0)
  {
    v146 = v145;
  }

  else
  {
    v146 = -v145;
  }

  sprintf1da(a1, v146, v168, 0, v145 >> 31);
  v147 = (*a1)++;
  *v147 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Nav_Debug_Flush_Check(a1);
  v148 = *a1;
  v149 = 73;
  v150 = 1u;
  do
  {
    *a1 = v148 + 1;
    *v148 = v149;
    v148 = *a1;
    if (*a1 >= a1[3])
    {
      v148 = a1[2];
      *a1 = v148;
    }

    v149 = aInitialData[v150++];
  }

  while (v150 != 16);
  for (j = 3; j > 1; --j)
  {
    *a1 = v148 + 1;
    *v148 = 32;
    v148 = *a1;
    if (*a1 >= a1[3])
    {
      v148 = a1[2];
      *a1 = v148;
    }
  }

  sprintf_6d(a1, *(a2 + 2052));
  sprintf_sgR8(a1, *(a2 + 2064));
  sprintf_sgR8(a1, *(a2 + 2056));
  v152 = *a1;
  for (k = 3; k > 1; --k)
  {
    *a1 = v152 + 1;
    *v152 = 32;
    v152 = *a1;
    if (*a1 >= a1[3])
    {
      v152 = a1[2];
      *a1 = v152;
    }
  }

  v154 = &g_TOW_Stat_As_String[10 * *(v167 + 108) + 1];
  v155 = 32;
  do
  {
    *a1 = v152 + 1;
    *v152 = v155;
    v152 = *a1;
    if (*a1 >= a1[3])
    {
      v152 = a1[2];
      *a1 = v152;
    }

    v156 = *v154++;
    v155 = v156;
  }

  while (v156);
  sprintf_10u(a1, *(v167 + 128));
  sprintf_6d(a1, *(v167 + 112));
  sprintf_12f3(a1, *(v167 + 120));
  v157 = (*a1)++;
  *v157 = 10;
  v158 = *a1;
  if (*a1 >= a1[3])
  {
    v158 = a1[2];
  }

  v159 = 83;
  v160 = 1u;
  do
  {
    *a1 = v158 + 1;
    *v158 = v159;
    v158 = *a1;
    if (*a1 >= a1[3])
    {
      v158 = a1[2];
      *a1 = v158;
    }

    v159 = aSbasNv[v160++];
  }

  while (v160 != 11);
  v161 = &dword_2A144501C;
  v162 = 18;
  do
  {
    v163 = *v161;
    if (v163 && *(v161 - 1) >= 1)
    {
      sprintf_4d(a1, v163);
    }

    v161 += 8;
    --v162;
  }

  while (v162);
  v164 = (*a1)++;
  *v164 = 10;
  v165 = *a1;
  if (*a1 >= a1[3])
  {
    v165 = a1[2];
  }

  *a1 = v165 + 1;
  *v165 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return GNSS_Nav_Debug_Flush_Check(a1);
}

void gnss::GnssAdaptDevice::Ga06_00GnssPeriodicFixCB(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v101 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v6 = DeviceInstance;
    v7 = *a3;
    v8 = a3[1];
    v9 = *(a3 + 4);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Result,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga06_01ReportPvtm", v4, v9);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (v4)
    {
      if (v4 == 8)
      {
        v11 = *(v6 + 152);
        block = MEMORY[0x29EDCA5F8];
        v90 = 0x40000000;
        v91 = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke;
        v92 = &__block_descriptor_tmp_3;
        v93 = v6;
        v94 = 8;
        dispatch_async(v11, &block);
      }

      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PVTM Resp,%u\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga06_01ReportPvtm", 769, v4);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }

    else if (v9 == 2)
    {
      if (v7)
      {
        operator new();
      }

      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v48 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v48), "ADP", 69, "Ga06_01ReportPvtm", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }

    else if (v9 == 4)
    {
      if (v8)
      {
        v13 = &v52;
        v52 = 0;
        v53 = &v52;
        v54 = 0x1E002000000;
        v55 = __Block_byref_object_copy__0;
        v56 = __Block_byref_object_dispose__0;
        v63 = 0;
        v66 = 0;
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0;
        memset(&v64, 0, 13);
        *(v65 + 7) = 0;
        v65[0] = 0;
        v68 = 0;
        v67 = 0;
        *(&v69[1] + 3) = 0;
        *v69 = 0;
        *&v69[5] = 0;
        *&v69[7] = 0;
        v70 = 0;
        *(v72 + 6) = 0;
        v71 = 0;
        v72[0] = 0;
        *(v73 + 6) = 0;
        v73[0] = 0;
        v72[2] = 0;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        v88 = 0;
        v63 = *(v8 + 44);
        v14 = v63;
        if (v63)
        {
          v15 = operator new[](192 * v63, MEMORY[0x29EDC9418]);
          if (!v15)
          {
            v64 = 0;
            snprintf(&block, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 99, "Memory allocation failed for SigMeas ");
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v49 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v49), "OSA", 69, "Ga06_01ReportPvtm", &block);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 99, "false && Memory allocation failed for SigMeas ");
          }

          v16 = v15;
          do
          {
            *v16 = 0xFFFF;
            *(v16 + 2) = 0;
            *(v16 + 37) = 0;
            *(v16 + 17) = 0;
            v16[144] = 0;
            *(v16 + 186) = 0;
            *(v16 + 95) = 0;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = 0;
            v16[32] = 0;
            *(v16 + 40) = 0uLL;
            *(v16 + 56) = 0uLL;
            v16[72] = 0;
            *(v16 + 5) = 0uLL;
            *(v16 + 6) = 0uLL;
            *(v16 + 7) = 0uLL;
            *(v16 + 127) = 0;
            v16[184] = 0;
            *(v16 + 168) = 0uLL;
            *(v16 + 152) = 0uLL;
            v16 += 192;
          }

          while (v16 != &v15[192 * v14]);
          v64 = v15;
          memcpy_s("Ga06_01ReportPvtm", 106, v15, 192 * v14, *(v8 + 12), 192 * *(v8 + 44));
          v13 = v53;
        }

        v17 = *(v8 + 164);
        *(v13 + 184) = v17;
        if (v17)
        {
          v18 = operator new[](104 * v17, MEMORY[0x29EDC9418]);
          if (!v18)
          {
            v13[47] = 0;
            snprintf(&block, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 116, "Memory allocation failed for SVUsage");
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v50 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v50), "OSA", 69, "Ga06_01ReportPvtm", &block);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 116, "false && Memory allocation failed for SVUsage");
          }

          v19 = v18;
          do
          {
            *v19 = 0;
            v19[2] = 0;
            *(v19 + 1) = 0;
            *(v19 + 2) = 0;
            *(v19 + 12) = 0;
            *(v19 + 2) = 0uLL;
            *(v19 + 3) = 0uLL;
            *(v19 + 4) = 0uLL;
            *(v19 + 5) = 0uLL;
            *(v19 + 12) = 0;
            v19 += 104;
          }

          while (v19 != &v18[104 * v17]);
          v13[47] = v18;
          memcpy_s("Ga06_01ReportPvtm", 125, v18, 104 * *(v13 + 184), *(v8 + 42), 104 * *(v8 + 164));
          v13 = v53;
        }

        v20 = *(v8 + 172);
        *(v13 + 192) = v20;
        if (v20)
        {
          v21 = operator new[](264 * v20, MEMORY[0x29EDC9418]);
          if (!v21)
          {
            v13[49] = 0;
            snprintf(&block, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_01ReportPvtm", 135, "Memory allocation failed for SVState");
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v51 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v51), "OSA", 69, "Ga06_01ReportPvtm", &block);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_01ReportPvtm", "ga06GnssPvtmUtils.cpp", 135, "false && Memory allocation failed for SVState");
          }

          v22 = v21;
          do
          {
            *v22 = 0;
            *(v22 + 1) = 0;
            v22[4] = 0;
            v22[8] = 0;
            *(v22 + 22) = 0;
            *(v22 + 46) = 0;
            *(v22 + 1) = 0uLL;
            *(v22 + 2) = 0uLL;
            *(v22 + 3) = 0uLL;
            *(v22 + 4) = 0uLL;
            *(v22 + 5) = 0uLL;
            *(v22 + 6) = 0uLL;
            *(v22 + 7) = 0uLL;
            *(v22 + 8) = 0uLL;
            *(v22 + 9) = 0uLL;
            *(v22 + 153) = 0uLL;
            *(v22 + 12) = 0uLL;
            *(v22 + 13) = 0uLL;
            *(v22 + 14) = 0uLL;
            *(v22 + 15) = 0uLL;
            *(v22 + 128) = 0;
            v22 += 264;
          }

          while (v22 != &v21[264 * v20]);
          v13[49] = v21;
          memcpy_s("Ga06_01ReportPvtm", 146, v21, 264 * *(v13 + 192), *(v8 + 44), (264 * v20));
          v13 = v53;
        }

        v23 = *v8;
        *(v13 + 7) = v8[1];
        *(v13 + 5) = v23;
        v24 = v8[2];
        v25 = v8[3];
        v26 = v8[4];
        *(v13 + 30) = *(v8 + 20);
        *(v13 + 13) = v26;
        *(v13 + 11) = v25;
        *(v13 + 9) = v24;
        v27 = *(v8 + 152);
        v28 = *(v8 + 184);
        v29 = *(v8 + 136);
        *(v13 + 13) = *(v8 + 168);
        *(v13 + 14) = v28;
        *(v13 + 11) = v29;
        *(v13 + 12) = v27;
        v30 = *(v8 + 216);
        v31 = *(v8 + 248);
        v32 = *(v8 + 200);
        *(v13 + 17) = *(v8 + 232);
        *(v13 + 18) = v31;
        *(v13 + 15) = v32;
        *(v13 + 16) = v30;
        v34 = *(v8 + 280);
        v33 = *(v8 + 296);
        v35 = *(v8 + 264);
        *(v13 + 348) = *(v8 + 308);
        *(v13 + 20) = v34;
        *(v13 + 21) = v33;
        *(v13 + 19) = v35;
        v36 = *(v8 + 120);
        *(v13 + 9) = *(v8 + 104);
        *(v13 + 10) = v36;
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v37 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: L5GroupDelayAnalyticsData,Est,%.3fm,Est_Unc,%.3f,NonVolatile,%.3fm,Age,%ds\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "Ga06_01ReportPvtm", *(v53 + 42), *(v53 + 43), *(v53 + 44), *(v53 + 90));
          gnssOsa_PrintLog(__str, 5, 1, 0);
          v13 = v53;
        }

        if ((*(v6 + 93) & 1) == 0 && *(v13 + 43) <= 0.25)
        {
          v38 = *(v13 + 42);
          v39 = *(v13 + 44);
          block = v38;
          v90 = *&v39;
          v40 = *(v13 + 90);
          LODWORD(v91) = v40;
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v41 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GPSD-L5GroupDelayAnalyticsData,Est,%.3fm,Est_Unc,%.3f,NonVolatile,%.3fm,Age,%ds\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 73, "Ga06_01ReportPvtm", v38, *(v53 + 43), v39, v40);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(v6);
          (*(*HalExtensions + 48))(HalExtensions, &block);
          *(v6 + 93) = 1;
          v13 = v53;
        }

        *(v13 + 25) = *(v8 + 360);
        v43 = *(v8 + 376);
        v44 = *(v8 + 392);
        v45 = *(v8 + 424);
        *(v13 + 28) = *(v8 + 408);
        *(v13 + 29) = v45;
        *(v13 + 26) = v43;
        *(v13 + 27) = v44;
        v46 = *(v6 + 152);
        *__str = MEMORY[0x29EDCA5F8];
        v96 = 0x40000000;
        v97 = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_16;
        v98 = &unk_29EF065C0;
        v100 = v6;
        v99 = &v52;
        dispatch_async(v46, __str);
        _Block_object_dispose(&v52, 8);
      }

      else if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v47 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx MeasData\n", (*&g_MacClockTicksToMsRelation * v47), "ADP", 69, "Ga06_01ReportPvtm", 770);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }
  }
}

void sub_298FEC344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Positioning Session Aborted,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga06_01ReportPvtm_block_invoke", 1025, *(a1 + 40));
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  *(v1 + 89) = 0;
}

void *__Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 40);
  v3 = (a2 + 40);

  return memcpy(v2, v3, 0x1B8uLL);
}

uint64_t *___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_16(uint64_t a1)
{
  v1 = a1;
  v247 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v225 = 0;
  v226 = &v225;
  v227 = 0x3002000000;
  v228 = __Block_byref_object_copy__17;
  v229 = __Block_byref_object_dispose__18;
  v230 = 0;
  v219 = 0;
  v220 = &v219;
  v221 = 0x3002000000;
  v222 = __Block_byref_object_copy__19;
  v223 = __Block_byref_object_dispose__20;
  v224 = 0;
  v3 = *(v2 + 144);
  v200 = v2;
  if ((v3 & 2) == 0)
  {
    goto LABEL_161;
  }

  v204 = *(v2 + 144);
  v4 = *(*(a1 + 32) + 8);
  v5 = operator new(0x88uLL, MEMORY[0x29EDC9418]);
  if (!v5)
  {
    v213 = 0;
    snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_04GetMeasReport", 605, "Memory allocation failed for Measurement Report");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v198 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v198), "OSA", 69, "Ga06_04GetMeasReport", v244);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (gp_Logger)
    {
      (*(*gp_Logger + 48))(gp_Logger);
    }

    __assert_rtn("Ga06_04GetMeasReport", "ga06GnssPvtmUtils.cpp", 605, "false && Memory allocation failed for Measurement Report");
  }

  *v5 = -1;
  _Q0 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v5 + 1) = _Q0;
  *(v5 + 3) = _Q0;
  *(v5 + 20) = 0;
  v203 = _Q0;
  *(v5 + 3) = _Q0;
  v7 = vneg_f32(0x3F0000003FLL);
  v5[8] = v7;
  *(v5 + 18) = 2143289344;
  v5[10] = 0x8000000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  v5[11] = _Q0.i64[0];
  v5[12] = 0x7FF8000000000000;
  *(v5 + 26) = -1082130432;
  v5[15] = 0;
  v5[16] = 0;
  v5[14] = 0;
  v213 = v5;
  v11 = &unk_2A13EC000;
  if (*(v4 + 128))
  {
    v12 = 0;
    if (*(v4 + 128) >= 0x100u)
    {
      v13 = 256;
    }

    else
    {
      v13 = *(v4 + 128);
    }

    v205 = v13;
    v14.i64[0] = 0x3F0000003FLL;
    v14.i64[1] = 0x3F0000003FLL;
    v202 = vnegq_f32(v14);
    while (1)
    {
      *v233 = 0;
      *&v233[4] = 0;
      v233[6] = 127;
      *&v233[8] = 0;
      *&v233[15] = 0;
      memset(&v233[24], 255, 24);
      *&v234 = 0x7FF8000000000000;
      DWORD2(v234) = -1082130432;
      v235 = xmmword_299052C00;
      v236 = xmmword_299052C00;
      v237 = xmmword_299052C00;
      v238[0] = 1;
      *&v238[8] = -1;
      *&v238[16] = -1;
      *&v238[24] = xmmword_299052C00;
      v238[40] = 0;
      v239 = 0;
      v240 = -1.0;
      v241 = 0;
      v15 = *(v4 + 136);
      if (!v15)
      {
        std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v239, 0);
        goto LABEL_137;
      }

      if (*(v4 + 128) <= v12)
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v20 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Indx\n", (v11[140] * v20), "ADP", 69, "Ga06_05GetMeasSvId", 514);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }

        goto LABEL_118;
      }

      v16 = (v15 + 192 * v12);
      v17 = *(v16 + 2);
      if (v17 > 4)
      {
        if (v17 - 5 >= 3)
        {
          if (v17 - 8 >= 2)
          {
            goto LABEL_44;
          }

          v18 = *(v15 + 192 * v12 + 4);
          if ((v18 - 1) > 0x31)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v27 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GAL SvId,%d\n", (v11[140] * v27), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 136) + 192 * v12 + 4));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_118;
          }

          v21 = 8;
        }

        else
        {
          v18 = *(v15 + 192 * v12 + 4);
          if ((v18 - 1) > 0x3E)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v26 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx BEID SvID,%d\n", (v11[140] * v26), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 136) + 192 * v12 + 4));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_118;
          }

          v21 = 4;
        }

        *v233 = v21;
        goto LABEL_43;
      }

      if (v17 - 1 >= 3)
      {
        break;
      }

      v18 = *(v15 + 192 * v12 + 3);
      switch(v18)
      {
        case 7:
          v18 = 32;
LABEL_42:
          *v233 = v18;
          LOBYTE(v18) = *(v15 + 192 * v12 + 4);
LABEL_43:
          v233[4] = v18;
          goto LABEL_44;
        case 3:
          v18 = 16;
          goto LABEL_42;
        case 1:
          goto LABEL_42;
      }

      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PRN,%d,Signal,%u\n", (v11[140] * v19), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 136) + 192 * v12 + 4), *(*(v4 + 136) + 192 * v12 + 2));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

LABEL_118:
      std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v239, 0);
      if (++v12 == v205)
      {
        goto LABEL_137;
      }
    }

    if (!*(v16 + 2))
    {
      *v233 = 0;
      goto LABEL_44;
    }

    if (v17 == 4)
    {
      v22 = v16[2];
      if ((v22 + 7) > 0xDu)
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v53 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLON SvID,%d\n", (v11[140] * v53), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 136) + 192 * v12 + 4));
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        goto LABEL_118;
      }

      *v233 = 2;
      v233[6] = v22;
      v23 = *v16;
      if ((v23 & 0x8000000000000000) == 0 && *(v4 + 368) > v23)
      {
        v24 = *(v4 + 376);
        if (v24)
        {
          if (*(v24 + 104 * v23 + 1) - 25 <= 0xFFFFFFE7)
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v25 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLON SlotNum,%u\n", (v11[140] * v25), "ADP", 87, "Ga06_05GetMeasSvId", 772, *(*(v4 + 376) + 104 * v23 + 1));
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }

            goto LABEL_118;
          }

          v233[4] = *(v24 + 104 * v23 + 1);
          v99 = *(v24 + 104 * v23 + 2);
          if (v99 > 2)
          {
            if (v99 == 3)
            {
              v100 = 2;
            }

            else
            {
              if (v99 != 4)
              {
                v233[5] = 0;
                if (g_LbsOsaTrace_Config >= 2)
                {
                  bzero(__str, 0x3C6uLL);
                  v101 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GLON SlotNum,%u\n", (v11[140] * v101), "ADP", 87, "Ga06_05GetMeasSvId", 770, *(*(v4 + 376) + 104 * v23 + 2));
                  gnssOsa_PrintLog(__str, 2, 1, 0);
                  v15 = *(v4 + 136);
                  if (!v15)
                  {
                    if (g_LbsOsaTrace_Config)
                    {
                      bzero(__str, 0x3C6uLL);
                      v102 = mach_continuous_time();
                      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SVMeasElem\n", (v11[140] * v102), "ADP", 69, "Ga06_06GetMeasSyncState", 513);
                      gnssOsa_PrintLog(__str, 1, 1, 0);
                    }

                    goto LABEL_118;
                  }
                }

                goto LABEL_44;
              }

              v100 = 3;
            }
          }

          else
          {
            if (v99 < 2)
            {
              v233[5] = 0;
              goto LABEL_44;
            }

            v100 = 1;
          }

          v233[5] = v100;
        }
      }
    }

LABEL_44:
    v28 = (v15 + 192 * v12);
    v29 = *(v28 + 2);
    v233[8] = gnss::GnssAdaptDevice::Ga06_22GetBand(v29, *(v28 + 3));
    if (v29 > 4)
    {
      if (v29 <= 6)
      {
        v30 = v204;
      }

      else
      {
        v30 = v204;
        if (v29 != 7 && v29 != 8)
        {
          if (v29 == 9)
          {
            v233[10] = v28[16] & 1;
            v233[13] = (v28[16] & 2) != 0;
            v233[17] = (v28[16] & 4) != 0;
            v233[18] = (v28[16] & 8) != 0;
            v233[15] = (v28[16] & 8) != 0;
          }

LABEL_59:
          v31 = v15 + 192 * v12;
          *&v233[24] = *(v31 + 8);
          *&v233[40] = *(v31 + 24);
          HIBYTE(v241) = *(v31 + 134);
          *&v234 = *(v31 + 40);
          v32 = *(v31 + 48);
          *(&v234 + 2) = v32;
          v235 = *(v31 + 80);
          v33 = *(v28 + 13);
          if (v33 <= 0.0)
          {
            v35 = *(v28 + 15);
            if (v35 <= 0.0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v34 = *(v28 + 12);
            *&v236 = v34;
            *(&v236 + 1) = v33;
            v35 = *(v28 + 15);
            if (v35 <= 0.0)
            {
              if (*(v28 + 129) != 4)
              {
                goto LABEL_66;
              }

              v36 = 1;
              goto LABEL_65;
            }
          }

          v36 = 0;
          v34 = *(v28 + 14);
          v33 = v35;
LABEL_65:
          *&v237 = v34;
          *(&v237 + 1) = v33;
          v238[0] = v36;
LABEL_66:
          if (*(v28 + 144) == 2)
          {
            *&v238[8] = vcvtq_u64_f64(*(v28 + 76));
            *&v238[24] = *(v15 + 192 * v12 + 168);
            v238[40] = 0;
          }

          v37 = v15 + 192 * v12;
          v38 = *(v37 + 56);
          v240 = v38;
          v39 = *(v37 + 184);
          if (v39 <= 2)
          {
            LOBYTE(v241) = v39;
          }

          if ((v30 & 4) == 0)
          {
            goto LABEL_99;
          }

          v40 = operator new(0x98uLL, MEMORY[0x29EDC9418]);
          if (!v40)
          {
            v207 = 0;
            snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_07GetMeasExtn", 1263, "Memory allocation failed for MeasExtn");
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v197 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v197), "OSA", 69, "Ga06_07GetMeasExtn", v244);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            if (gp_Logger)
            {
              (*(*gp_Logger + 48))(gp_Logger);
            }

            __assert_rtn("Ga06_07GetMeasExtn", "ga06GnssPvtmUtils.cpp", 1263, "false && Memory allocation failed for MeasExtn");
          }

          v41 = v40;
          *v40 = v7;
          *(v40 + 8) = v203;
          v40[24] = 0;
          *(v40 + 2) = v202;
          *(v40 + 3) = v202;
          *(v40 + 8) = 0xFFFF7FC00000;
          v40[72] = 0;
          v40[76] = 0;
          v40[80] = 0;
          v40[84] = 0;
          v40[88] = 0;
          *(v40 + 46) = 0;
          v40[124] = 0;
          *(v40 + 17) = 0;
          *(v40 + 18) = 0;
          *(v40 + 16) = 0;
          *(v40 + 12) = 0;
          *(v40 + 13) = 0;
          v40[120] = 0;
          *(v40 + 14) = 0;
          v207 = v40;
          if (*(v4 + 128) <= v12)
          {
            if (g_LbsOsaTrace_Config)
            {
              bzero(__str, 0x3C6uLL);
              v52 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Indx\n", (v11[140] * v52), "ADP", 69, "Ga06_07GetMeasExtn", 514);
              gnssOsa_PrintLog(__str, 1, 1, 0);
            }

            v41 = 0;
            goto LABEL_98;
          }

          v42 = v15 + 192 * v12;
          *(v40 + 34) = *(v42 + 130);
          *v40 = 0;
          v43 = *(v42 + 64);
          *(v40 + 1) = v43;
          *(v40 + 35) = *(v42 + 74);
          v40[72] = *(v42 + 72);
          v44 = *(v42 + 128);
          if (v44 >= 5)
          {
            LOBYTE(v44) = 0;
          }

          v40[92] = v44;
          v45 = *(v42 + 129);
          if (v45 >= 5)
          {
            LOBYTE(v45) = 0;
          }

          v40[93] = v45;
          LOWORD(v43) = *(v42 + 186);
          *&v46 = LODWORD(v43) * 0.001;
          *(v40 + 19) = *&v46;
          v40[80] = 1;
          LOWORD(v46) = *(v42 + 188);
          *(v40 + 21) = v46 * 0.001;
          v40[88] = 1;
          v47 = *v28;
          if (v47 < 0 || *(v4 + 368) <= v47 || (v48 = *(v4 + 376)) == 0)
          {
LABEL_97:
            v207 = 0;
LABEL_98:
            std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v207, 0);
            v232 = 0;
            std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v239, v41);
            std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&v232, 0);
LABEL_99:
            v65 = v213;
            v67 = v213[15];
            v66 = v213[16];
            if (v67 >= v66)
            {
              v77 = v213[14];
              v78 = 0x2E8BA2E8BA2E8BA3 * ((v67 - v77) >> 4) + 1;
              if (v78 > 0x1745D1745D1745DLL)
              {
                std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
              }

              v79 = 0x2E8BA2E8BA2E8BA3 * ((v66 - v77) >> 4);
              if (2 * v79 > v78)
              {
                v78 = 2 * v79;
              }

              if (v79 >= 0xBA2E8BA2E8BA2ELL)
              {
                v80 = 0x1745D1745D1745DLL;
              }

              else
              {
                v80 = v78;
              }

              if (v80)
              {
                if (v80 <= 0x1745D1745D1745DLL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v81 = *v238;
              v82 = 16 * ((v67 - v77) >> 4);
              *(v82 + 96) = v237;
              *(v82 + 112) = v81;
              *(v82 + 128) = *&v238[16];
              *(v82 + 137) = *&v238[25];
              v83 = v234;
              *(v82 + 32) = *&v233[32];
              *(v82 + 48) = v83;
              v84 = v236;
              *(v82 + 64) = v235;
              *(v82 + 80) = v84;
              v85 = *&v233[16];
              *v82 = *v233;
              *(v82 + 16) = v85;
              v86 = v239;
              v239 = 0;
              *(v82 + 160) = v86;
              *(v82 + 168) = v240;
              v87 = v82 - (v67 - v77);
              *(v82 + 172) = v241;
              if (v77 != v67)
              {
                v88 = v77;
                v89 = 16 * ((v67 - v77) >> 4) - (v67 - v77);
                do
                {
                  v90 = *(v88 + 1);
                  *v89 = *v88;
                  *(v89 + 16) = v90;
                  v91 = *(v88 + 2);
                  v92 = *(v88 + 3);
                  v93 = *(v88 + 5);
                  *(v89 + 64) = *(v88 + 4);
                  *(v89 + 80) = v93;
                  *(v89 + 32) = v91;
                  *(v89 + 48) = v92;
                  v94 = *(v88 + 6);
                  v95 = *(v88 + 7);
                  v96 = *(v88 + 8);
                  *(v89 + 137) = *(v88 + 137);
                  *(v89 + 112) = v95;
                  *(v89 + 128) = v96;
                  *(v89 + 96) = v94;
                  v97 = v88[20];
                  v88[20] = 0;
                  *(v89 + 160) = v97;
                  LODWORD(v97) = *(v88 + 42);
                  *(v89 + 172) = *(v88 + 86);
                  *(v89 + 168) = v97;
                  v88 += 22;
                  v89 += 176;
                }

                while (v88 != v67);
                do
                {
                  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](v77 + 20, 0);
                  v77 += 22;
                }

                while (v77 != v67);
                v77 = v65[14];
              }

              v76 = v82 + 176;
              v65[14] = v87;
              v65[15] = v76;
              v65[16] = 0;
              if (v77)
              {
                operator delete(v77);
              }
            }

            else
            {
              v68 = *&v233[16];
              *v67 = *v233;
              *(v67 + 16) = v68;
              v69 = *&v233[32];
              v70 = v234;
              v71 = v236;
              *(v67 + 64) = v235;
              *(v67 + 80) = v71;
              *(v67 + 32) = v69;
              *(v67 + 48) = v70;
              v72 = v237;
              v73 = *v238;
              v74 = *&v238[16];
              *(v67 + 137) = *&v238[25];
              *(v67 + 112) = v73;
              *(v67 + 128) = v74;
              *(v67 + 96) = v72;
              v75 = v239;
              v239 = 0;
              *(v67 + 160) = v75;
              *&v75 = v240;
              *(v67 + 172) = v241;
              *(v67 + 168) = v75;
              v76 = v67 + 176;
            }

            v65[15] = v76;
            v11 = &unk_2A13EC000;
            goto LABEL_118;
          }

          v49 = v48 + 104 * *v28;
          *(v40 + 1) = *(v49 + 8);
          v50 = *(v49 + 80);
          *(v40 + 2) = v50;
          v51 = *(v49 + 24);
          if (v51 <= 1)
          {
            if (!v51)
            {
              v40[24] = 0;
              goto LABEL_94;
            }

            LOBYTE(v51) = 2;
          }

          else if (v51 == 2)
          {
            LOBYTE(v51) = 1;
          }

          else if (v51 != 3 && v51 != 4)
          {
            v40[24] = 0;
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v98 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ToTsource,%u\n", (v11[140] * v98), "ADP", 87, "Ga06_07GetMeasExtn", 770, *(*(v4 + 376) + 104 * v47 + 24));
              gnssOsa_PrintLog(__str, 2, 1, 0);
              v48 = *(v4 + 376);
              v50 = *(v48 + 104 * v47 + 80);
            }

            goto LABEL_94;
          }

          v40[24] = v51;
LABEL_94:
          v54 = (v48 + 104 * v47);
          v55 = v54[12];
          if (v55 >= 3.40282347e38)
          {
            v55 = 3.40282347e38;
          }

          v56 = v55;
          v41[16] = v56;
          v57 = v54[4];
          v41[8] = v57;
          v58 = v54[7];
          v59 = v50;
          v41[9] = v58;
          v41[10] = v59;
          v60 = v54[5];
          v41[11] = v60;
          v61 = v54[8];
          v41[12] = v61;
          v62 = v54[11];
          v41[13] = v62;
          v63 = v54[6];
          v41[14] = v63;
          v64 = v54[9];
          v41[15] = v64;
          goto LABEL_97;
        }
      }

LABEL_58:
      v233[9] = v28[16] & 1;
      v233[10] = (v28[16] & 2) != 0;
      v233[11] = (v28[16] & 4) != 0;
      v233[12] = (v28[16] & 8) != 0;
      goto LABEL_59;
    }

    if (v29 > 2)
    {
      v30 = v204;
      if (v29 == 3)
      {
        goto LABEL_58;
      }

      *&v233[9] = v28[16] & 1;
    }

    else
    {
      v30 = v204;
      if (v29 == 1)
      {
        goto LABEL_58;
      }

      if (v29 != 2)
      {
        goto LABEL_59;
      }

      v233[9] = v28[16] & 1;
      v233[10] = v28[16] & 1;
    }

    v233[11] = (v28[16] & 2) != 0;
    v233[12] = (v28[16] & 4) != 0;
    v233[13] = (v28[16] & 8) != 0;
    goto LABEL_59;
  }

LABEL_137:
  v103 = v213;
  *v213 = *(v4 + 40);
  *(v103 + 8) = *(v4 + 88);
  *(v103 + 24) = *(v4 + 104);
  *(v103 + 48) = *(v4 + 48);
  *(v103 + 64) = vcvt_f32_f64(*(v4 + 64));
  v104 = *(v4 + 80);
  *(v103 + 72) = v104;
  v105 = *(v4 + 312);
  if (v105 <= 0.0)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v110 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsBiasUncns is unknown\n", (v11[140] * v110), "ADP", 68, "Ga06_04GetMeasReport");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

  else
  {
    *(v103 + 80) = *(v4 + 296);
    v106 = *(v4 + 304);
    if (fabs(v106) > 0.5 && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v107 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GpsBiassubns,%f\n", (v11[140] * v107), "ADP", 87, "Ga06_04GetMeasReport", 514, *(v4 + 304));
      gnssOsa_PrintLog(__str, 2, 1, 0);
      v106 = *(v4 + 304);
      v105 = *(v4 + 312);
    }

    v108 = v106;
    *(v103 + 88) = v108;
    if (v105 <= 3.40282347e38)
    {
      v111 = v105;
      *(v103 + 92) = v111;
    }

    else
    {
      *(v103 + 92) = 2139095039;
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_149;
      }

      bzero(__str, 0x3C6uLL);
      v109 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RxGpsBiasUncns larger than float max,limiting to float max,%f\n", (v11[140] * v109), "ADP", 68, "Ga06_04GetMeasReport", *(v4 + 312));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v112 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: OffsetNs,%lld,SubOffsetNs,%f,OffsetUncNs,%f\n", (v11[140] * v112), "ADP", 68, "Ga06_04GetMeasReport", *(v103 + 80), *(v103 + 88), *(v103 + 92));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }
  }

LABEL_149:
  *(v103 + 96) = *(v4 + 320);
  v113 = *(v4 + 328);
  if (v113 <= 3.40282347e38)
  {
    v115 = v113;
    *(v103 + 104) = v115;
LABEL_153:
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v116 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DriftPpb,%f,DriftUncPpb,%f\n", (v11[140] * v116), "ADP", 68, "Ga06_04GetMeasReport", *(v103 + 96), *(v103 + 104));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    goto LABEL_155;
  }

  *(v103 + 104) = 2139095039;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v114 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RxGpsFrqUncppb larger than float max,limiting to float max,%f\n", (v11[140] * v114), "ADP", 68, "Ga06_04GetMeasReport", *(v4 + 328));
    gnssOsa_PrintLog(__str, 5, 1, 0);
    goto LABEL_153;
  }

LABEL_155:
  v213 = 0;
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v213, 0);
  *&v231 = 0;
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](v226 + 5, v103);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v231, 0);
  v1 = a1;
  v117 = *(*(a1 + 32) + 8);
  v118 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
  if (!v118)
  {
    snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_GetKlobucharIono", 575, "Memory allocation failed for Klobuchar parameters");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v191 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v191), "OSA", 69, "Ga06_GetKlobucharIono", v244);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (gp_Logger)
    {
      (*(*gp_Logger + 48))(gp_Logger);
    }

    __assert_rtn("Ga06_GetKlobucharIono", "ga06GnssPvtmUtils.cpp", 575, "false && Memory allocation failed for Klobuchar parameters");
  }

  v119 = v118;
  *(v118 + 4) = 0;
  *v118 = 0u;
  *(v118 + 1) = 0u;
  *v118 = 1000000000 * *(v117 + 400);
  *(v118 + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v117 + 408)), *(v117 + 424));
  *(v118 + 24) = vcvt_hight_f32_f64(vcvt_f32_f64(*(v117 + 440)), *(v117 + 456));
  v2 = v200;
  if (g_LbsOsaTrace_Config > 4)
  {
    bzero(__str, 0x3C6uLL);
    v120 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Klobuchar GPS_ns,%llu,alpha,%10.3e,%10.3e,%10.3e,%10.3e,beta,%9.1f,%9.1f,%9.1f,%9.1f\n", (v11[140] * v120), "ADP", 68, "Ga06_GetKlobucharIono", *v119, v119[2], v119[3], v119[4], v119[5], v119[6], v119[7], v119[8], v119[9]);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v121 = v220[5];
  v220[5] = v119;
  if (v121)
  {
    MEMORY[0x29C296280](v121, 0x1000C400A747E1ELL);
  }

  v3 = *(v200 + 144);
LABEL_161:
  *v233 = 0;
  *&v233[8] = v233;
  *&v233[16] = 0x4002000000;
  *&v233[24] = __Block_byref_object_copy__21;
  *&v233[32] = __Block_byref_object_dispose__22;
  *&v233[40] = 0;
  v234 = 0uLL;
  if ((v3 & 0x10) != 0)
  {
    v122 = *(*(v1 + 32) + 8);
    v123 = *(v122 + 384);
    if (*(v122 + 384))
    {
      v124 = 0;
      v125 = 0;
      v126 = 0;
      v127 = 0;
      v128 = 0;
      v129 = *(v122 + 392);
      v206 = v122;
      do
      {
        v130 = (v129 + 264 * v127);
        if (*(v130 + 92))
        {
          v131 = 0;
          do
          {
            v132 = v131;
            Band = gnss::GnssAdaptDevice::Ga06_22GetBand(v130[v131 + 186], *v130);
            v134 = 1 << Band;
            if (Band)
            {
              _ZF = ((1 << Band) & v128) == 0;
            }

            else
            {
              _ZF = 0;
            }

            if (_ZF)
            {
              v136 = Band;
              v137 = v129 + 264 * v127;
              v138 = v137 + 8 * v132;
              v139 = *(v138 + 208) * 3.33564095;
              v140 = *(v138 + 224) * 3.33564095;
              v141 = *(v137 + v132 + 256);
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v142 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: BAND,%u,RfTimeBiasNs,%f,RfTimeBiasUncNs,%f,AGCdB,%d\n", (*&g_MacClockTicksToMsRelation * v142), "ADP", 73, "Ga06_08GetRxBandCorrection", v136, v139, v140, v141);
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }

              v143 = v126 - v124;
              v144 = 0xAAAAAAAAAAAAAAABLL * (v143 >> 3) + 1;
              if (v144 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * (-v124 >> 3) > v144)
              {
                v144 = 0x5555555555555556 * (-v124 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v124 >> 3) >= 0x555555555555555)
              {
                v145 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v145 = v144;
              }

              if (v145)
              {
                if (v145 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v146 = 8 * (v143 >> 3);
              *v146 = v139;
              *(v146 + 8) = v140;
              *(v146 + 12) = v141;
              *(v146 + 16) = v136;
              v125 = v146 + 24;
              v147 = (v146 + 24 * (v143 / -24));
              memcpy(v147, v124, v143);
              if (v124)
              {
                operator delete(v124);
              }

              v124 = v147;
              v128 |= v134;
              v129 = *(v206 + 392);
              v126 = v125;
            }

            v131 = v132 + 1;
            v130 = (v129 + 264 * v127);
          }

          while (*(v130 + 92) > (v132 + 1));
          v123 = *(v206 + 384);
        }

        ++v127;
      }

      while (v127 < v123);
      v148 = *&v233[8];
      v150 = (*&v233[8] + 40);
      v149 = *(*&v233[8] + 40);
      v2 = v200;
      if (v149)
      {
        *(*&v233[8] + 48) = v149;
        operator delete(v149);
        *v150 = 0;
        v150[1] = 0;
        v150[2] = 0;
      }

      v1 = a1;
    }

    else
    {
      v125 = 0;
      v124 = 0;
      v148 = v233;
    }

    v148[5] = v124;
    v148[6] = v125;
    v148[7] = 0;
    v3 = *(v2 + 144);
  }

  v213 = 0;
  v214 = &v213;
  v215 = 0x3002000000;
  v216 = __Block_byref_object_copy__23;
  v217 = __Block_byref_object_dispose__24;
  v218 = 0;
  if ((v3 & 0x20) != 0)
  {
    v151 = *(*(v1 + 32) + 8);
    v152 = operator new(0x28uLL, MEMORY[0x29EDC9418]);
    if (!v152)
    {
      v207 = 0;
      snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_09GetTimeConv", 1436, "Memory allocation failed for TimeConversion");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v192 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v192), "OSA", 69, "Ga06_09GetTimeConv", v244);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_09GetTimeConv", "ga06GnssPvtmUtils.cpp", 1436, "false && Memory allocation failed for TimeConversion");
    }

    v153 = v152;
    v152[4] = 0;
    *v152 = 0u;
    *(v152 + 1) = 0u;
    v207 = v152;
    v154 = operator new(0x40uLL, MEMORY[0x29EDC9418]);
    if (!v154)
    {
      snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_10GetTimeConvGPS", 1466, "Memory allocation failed for GpsTimeInfo");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v193 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v193), "OSA", 69, "Ga06_10GetTimeConvGPS", v244);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_10GetTimeConvGPS", "ga06GnssPvtmUtils.cpp", 1466, "false && Memory allocation failed for GpsTimeInfo");
    }

    v155 = v154;
    *(v154 + 10) = 0;
    *(v154 + 2) = 0;
    v154[12] = 0x8000;
    *(v154 + 4) = 0;
    *(v154 + 20) = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v154 + 7) = 0x7FF8000000000000;
    *v154 = *(v151 + 144);
    v156 = *(v151 + 160);
    v154[4] = v156;
    v157 = *(v151 + 156);
    if (*(v151 + 156) && (v158 = *(v151 + 158), *(v151 + 158)) && (v159 = *(v151 + 159), *(v151 + 159)))
    {
      if (v156 == v159)
      {
        *(v154 + 10) = 1;
      }

      else
      {
        *(v154 + 10) = 2;
        *(v154 + 2) = 604800000000000 * v157 + 86400000000000 * v158;
        v154[12] = v159;
      }
    }

    else
    {
      *(v154 + 10) = 0;
    }

    *(v154 + 4) = 604800000000000 * *(v151 + 168) + 1000000000 * *(v151 + 172);
    *(v154 + 20) = *(v151 + 176);
    *(v154 + 7) = *(v151 + 192);
    if (g_LbsOsaTrace_Config <= 4)
    {
      *v153 = v154;
    }

    else
    {
      bzero(__str, 0x3C6uLL);
      v160 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Week,%u,CurLeapSec,%d,NewLeapSecKnwdg,%hhu,TimeOfChangeNs,%llu,NewLeapSec,%d,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f,AccelPpbPerSec,%f\n", (*&g_MacClockTicksToMsRelation * v160), "ADP", 68, "Ga06_10GetTimeConvGPS", *v155, v155[4], *(v155 + 10), *(v155 + 2), v155[12], *(v155 + 4), *(v155 + 5), *(v155 + 6), *(v155 + 7));
      gnssOsa_PrintLog(__str, 5, 1, 0);
      v161 = *v153;
      *v153 = v155;
      if (v161)
      {
        MEMORY[0x29C296280](v161, 0x1000C4079AA8B5ELL);
      }
    }

    v162 = operator new(0x18uLL, MEMORY[0x29EDC9418]);
    if (!v162)
    {
      snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_11GetTimeConvGlonass", 1532, "Memory allocation failed for GlonTimeInfo");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v199 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v199), "OSA", 69, "Ga06_11GetTimeConvGlonass", v244);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_11GetTimeConvGlonass", "ga06GnssPvtmUtils.cpp", 1532, "false && Memory allocation failed for GlonTimeInfo");
    }

    v163 = v162;
    v164 = *(v151 + 148);
    *v162 = v164;
    v165 = *(v151 + 146);
    v162[1] = v165;
    *(v162 + 1) = 126230400000000000 * v164 + 86400000000000 * v165;
    *(v162 + 2) = -*(v151 + 216);
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v166 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: 4YrPeriod,%u,Day,%u,CollecnTimeNs,%llu,OffsetNs,%f\n", (*&g_MacClockTicksToMsRelation * v166), "ADP", 68, "Ga06_11GetTimeConvGlonass", *v163, v163[1], *(v163 + 1), *(v163 + 2));
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v167 = v153[1];
    v153[1] = v163;
    if (v167)
    {
      MEMORY[0x29C296280](v167, 0x1000C40D315E998);
    }

    v168 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v168)
    {
      snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_12GetTimeConvBeidou", 1566, "Memory allocation failed for BeidouTimeInfo");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v194 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v194), "OSA", 69, "Ga06_12GetTimeConvBeidou", v244);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_12GetTimeConvBeidou", "ga06GnssPvtmUtils.cpp", 1566, "false && Memory allocation failed for BeidouTimeInfo");
    }

    v169 = v168;
    *v168 = *(v151 + 150);
    *(v168 + 1) = 604800000000000 * *(v151 + 248) + 1000000000 * *(v151 + 252);
    *(v168 + 1) = *(v151 + 256);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v170 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Week,%u,GpsTimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v170), "ADP", 73, "Ga06_12GetTimeConvBeidou", *v169, *(v169 + 1), *(v169 + 2), *(v169 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v171 = v153[2];
    v153[2] = v169;
    if (v171)
    {
      MEMORY[0x29C296280](v171, 0x1000C4095D96C66);
    }

    v172 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v172)
    {
      snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_13GetTimeConvGalileo", 1600, "Memory allocation failed for GalTimeInfo");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v195 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v195), "OSA", 69, "Ga06_13GetTimeConvGalileo", v244);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_13GetTimeConvGalileo", "ga06GnssPvtmUtils.cpp", 1600, "false && Memory allocation failed for GalTimeInfo");
    }

    v173 = v172;
    *v172 = *(v151 + 152);
    *(v172 + 1) = 604800000000000 * *(v151 + 224) + 1000000000 * *(v151 + 228);
    *(v172 + 1) = *(v151 + 232);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v174 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Week,%u,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v174), "ADP", 73, "Ga06_13GetTimeConvGalileo", *v173, *(v173 + 1), *(v173 + 2), *(v173 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v175 = v153[3];
    v153[3] = v173;
    if (v175)
    {
      MEMORY[0x29C296280](v175, 0x1000C4095D96C66);
    }

    v176 = operator new(0x20uLL, MEMORY[0x29EDC9418]);
    if (!v176)
    {
      snprintf(v244, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_GetTimeConvNavIC", 1636, "Memory allocation failed for NavICTimeInfo");
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v196 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v196), "OSA", 69, "Ga06_GetTimeConvNavIC", v244);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("Ga06_GetTimeConvNavIC", "ga06GnssPvtmUtils.cpp", 1636, "false && Memory allocation failed for NavICTimeInfo");
    }

    v177 = v176;
    *v176 = *(v151 + 154);
    *(v176 + 1) = 604800000000000 * *(v151 + 272) + 1000000000 * *(v151 + 276);
    *(v176 + 1) = *(v151 + 280);
    v2 = v200;
    v1 = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v178 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Week,%u,TimeNs,%llu,OffsetNs,%f,DriftPpb,%f\n", (*&g_MacClockTicksToMsRelation * v178), "ADP", 73, "Ga06_GetTimeConvNavIC", *v177, *(v177 + 1), *(v177 + 2), *(v177 + 3));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v179 = v153[4];
    v153[4] = v177;
    if (v179)
    {
      MEMORY[0x29C296280](v179, 0x1000C4095D96C66);
    }

    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v180 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time info populated\n", (*&g_MacClockTicksToMsRelation * v180), "ADP", 68, "Ga06_09GetTimeConv");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    v207 = 0;
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v207, 0);
    v232 = 0;
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v214 + 5, v153);
    std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v232, 0);
    v3 = *(v200 + 144);
  }

  v207 = 0;
  v208 = &v207;
  v209 = 0x4002000000;
  v210 = __Block_byref_object_copy__25;
  v211 = __Block_byref_object_dispose__26;
  memset(v212, 0, sizeof(v212));
  if ((v3 & 8) != 0)
  {
    if (*(*(*(v1 + 32) + 8) + 384) >= 0x100u)
    {
      v182 = 256;
    }

    else
    {
      v182 = *(*(*(v1 + 32) + 8) + 384);
    }

    if (*(*(*(v1 + 32) + 8) + 384))
    {
      v246 = v212;
      std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SvInfo>>(v182);
    }

    v181 = -252645135 * ((v208[6] - v208[5]) >> 3);
    v2 = v200;
    v1 = a1;
  }

  else
  {
    v181 = 0;
  }

  v183 = *(*(v1 + 32) + 8);
  v184 = v183[17];
  if (v184)
  {
    MEMORY[0x29C296260](v184, 0x1000C80D072DB78);
    v183 = *(*(v1 + 32) + 8);
  }

  v185 = v183[47];
  if (v185)
  {
    MEMORY[0x29C296260](v185, 0x1000C80F973AAC2);
    v183 = *(*(v1 + 32) + 8);
  }

  v186 = v183[49];
  if (v186)
  {
    MEMORY[0x29C296260](v186, 0x1000C8055456DDCLL);
    v183 = *(*(v1 + 32) + 8);
  }

  v183[17] = 0;
  *(*(*(v1 + 32) + 8) + 376) = 0;
  *(*(*(v1 + 32) + 8) + 392) = 0;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v244, v2 + 168);
  v187 = *(v2 + 160);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_27;
  block[3] = &unk_2A1F2AB10;
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v243, v244);
  block[4] = &v225;
  block[5] = &v207;
  block[6] = v233;
  block[7] = &v213;
  block[8] = &v219;
  dispatch_async(v187, block);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v188 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Meas update,SvInfo Size,%u\n", (*&g_MacClockTicksToMsRelation * v188), "ADP", 73, "Ga06_01ReportPvtm_block_invoke", v181);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v243);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v244);
  _Block_object_dispose(&v207, 8);
  *__str = v212;
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](__str);
  _Block_object_dispose(&v213, 8);
  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v218, 0);
  _Block_object_dispose(v233, 8);
  if (*&v233[40])
  {
    *&v234 = *&v233[40];
    operator delete(*&v233[40]);
  }

  _Block_object_dispose(&v219, 8);
  v189 = v224;
  v224 = 0;
  if (v189)
  {
    MEMORY[0x29C296280](v189, 0x1000C400A747E1ELL);
  }

  _Block_object_dispose(&v225, 8);
  return std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v230, 0);
}

void sub_298FEFAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](&a35, 0);
  std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100]((v60 + 160), 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a43, 0);
  _Block_object_dispose(&a49, 8);
  v62 = a54;
  a54 = 0;
  if (v62)
  {
    MEMORY[0x29C296280](v62, 0x1000C400A747E1ELL);
  }

  _Block_object_dispose(&a55, 8);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a60, 0);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t *__Block_byref_object_dispose__18(uint64_t a1)
{
  v1 = (a1 + 40);

  return std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](v1, 0);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__20(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C296280);
  }

  return result;
}

__n128 __Block_byref_object_copy__21(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t **__Block_byref_object_dispose__24(uint64_t a1)
{
  v1 = (a1 + 40);

  return std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](v1, 0);
}

__n128 __Block_byref_object_copy__25(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__26(uint64_t a1)
{
  v1[1] = *MEMORY[0x29EDCA608];
  v1[0] = (a1 + 40);
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_27(void *a1)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v14 = v2;
  v15[0] = 0;
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  v13 = v6;
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
  v12 = v8;
  v9 = a1[12];
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v9 + 48))(v9, v15, &v14, v3 + 40, v4 + 40, &v13, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    MEMORY[0x29C296280](v10, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v13, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v14, 0);
  result = v15[0];
  v15[0] = 0;
  if (result)
  {
    return MEMORY[0x29C296280](result, 0x1000C4043D32D5CLL);
  }

  return result;
}

void sub_298FF024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    MEMORY[0x29C296280](a10, 0x1000C400A747E1ELL, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a11, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a13, 0);
  v14 = a14;
  a14 = 0;
  if (v14)
  {
    MEMORY[0x29C296280](v14, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 72;
  v3 = a2 + 72;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_72c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 72;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2(void *a1)
{
  v67 = *MEMORY[0x29EDCA608];
  v1 = a1[4];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3002000000;
  v54 = __Block_byref_object_copy__34;
  v55 = __Block_byref_object_dispose__35;
  v56 = 0;
  if ((*(v1 + 144) & 1) == 0)
  {
LABEL_111:
    *v60 = 0;
    v61 = v60;
    v62 = 0x4002000000;
    v63 = __Block_byref_object_copy__25;
    v64 = __Block_byref_object_dispose__26;
    memset(v65, 0, 24);
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x4002000000;
    v47[3] = __Block_byref_object_copy__21;
    v47[4] = __Block_byref_object_dispose__22;
    __p = 0;
    v49 = 0;
    v50 = 0;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v59, v1 + 168);
    v42 = *(v1 + 160);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2_38;
    block[3] = &unk_2A1F2AB48;
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v58, v59);
    block[4] = &v51;
    block[5] = v60;
    block[6] = v47;
    dispatch_async(v42, block);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v43 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: PVT update Sent out\n", (*&g_MacClockTicksToMsRelation * v43), "ADP", 73, "Ga06_01ReportPvtm_block_invoke");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v58);
    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v59);
    _Block_object_dispose(v47, 8);
    if (__p)
    {
      v49 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(v60, 8);
    *__str = v65;
    std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](__str);
    goto LABEL_116;
  }

  v3 = a1[5];
  v2 = a1[6];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = operator new(0xC8uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    snprintf(v60, 0x3B6uLL, "ASSERT,%s,%d,%s", "Ga06_02GetPvtmInfo", 303, "Memory allocation failed for FixData");
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v46 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v46), "OSA", 69, "Ga06_02GetPvtmInfo", v60);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (gp_Logger)
    {
      (*(*gp_Logger + 48))(gp_Logger);
    }

    __assert_rtn("Ga06_02GetPvtmInfo", "ga06GnssPvtmUtils.cpp", 303, "false && Memory allocation failed for FixData");
  }

  v5 = v4;
  *(v4 + 2) = -1082130432;
  v4[12] = 0;
  *(v4 + 4) = 0;
  *(v4 + 2) = 0u;
  v6 = v4 + 32;
  *(v4 + 3) = -1;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 5) = _Q0;
  *(v4 + 6) = _Q0;
  *(v4 + 14) = 0;
  v12 = v4 + 112;
  *(v4 + 32) = 0;
  *(v4 + 15) = 0;
  *(v4 + 136) = _Q0;
  *(v4 + 152) = xmmword_299052C00;
  *(v4 + 168) = _Q0;
  *(v4 + 23) = 0;
  *(v4 + 48) = 0;
  *v4 = vcvtad_u64_f64(*(v3 + 6) * 1000000000.0) + 604800000000000 * *(v3 + 14);
  v13 = *(v3 + 5) * 1000000000.0;
  *(v4 + 4) = (*(v3 + 4) * 6.51041667);
  *(v4 + 5) = 125;
  if (*(v3 + 9) == 1 && (v3[2] & 1) != 0)
  {
    if (*(v3 + 313) < 2u)
    {
      v13 = v13 + 500000.0;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: BCT not set,GPS week not valid, BCTNs,%llu\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "Ga06_02GetPvtmInfo", *v6);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    *v6 = 0;
    v6[1] = 0;
  }

  if (v13 <= 3.40282347e38)
  {
    v15 = v13;
    if (!*(v3 + 9))
    {
      v15 = 3.4028e38;
    }
  }

  else
  {
    v15 = 3.4028e38;
  }

  v5[2] = v15;
  if (*(v3 + 10) == 1)
  {
    v16 = *(v3 + 9);
  }

  else
  {
    v16 = 0;
  }

  *(v5 + 12) = v16 & 1;
  v17 = *(v3 + 9);
  if (v17 > 2147483650.0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v18 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UtcCorr,%.9f\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 69, "Ga06_02GetPvtmInfo", 770, v17);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    MEMORY[0x29C296280](v5, 0x1000C4043D32D5CLL);
    v5 = 0;
    goto LABEL_104;
  }

  v19 = -0.5;
  if (v17 > 0.0)
  {
    v19 = 0.5;
  }

  *(v5 + 4) = (v17 + v19);
  v20 = g_LbsOsaTrace_Config;
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v21 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: LeapSec BeforeRound,%.9f,AfterRound,%d\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "Ga06_02GetPvtmInfo", v17, *(v5 + 4));
    gnssOsa_PrintLog(__str, 5, 1, 0);
    v20 = g_LbsOsaTrace_Config;
  }

  v22 = v17 - v17;
  if (v22 > 0.0000005 && v22 < 0.9999995 && v20 >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx UtcCorr beyond 500ns from seconds boundary,%.9f\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 87, "Ga06_02GetPvtmInfo", 770, v17);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  *(v5 + 3) = 1000000 * *v3;
  *(v5 + 3) = *(v3 + 7);
  v24 = *(v3 + 16);
  *(v5 + 8) = v24;
  *(v5 + 9) = v24 - *(v3 + 17);
  *(v5 + 5) = *(v3 + 50);
  *(v5 + 6) = *(v3 + 54);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    *v12 = gnss::GnssAdaptDevice::Ga06_03GetConstlUsedInFix(v3);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    *v12 = gnss::GnssAdaptDevice::Ga06_03GetConstlUsedInFix(v3);
  }

  v25 = *(v3 + 312);
  if (v25 <= 4)
  {
    v5[29] = flt_299052D18[v25];
  }

  v26 = v3[77];
  if (!v26)
  {
    *(v5 + 15) = 0;
    goto LABEL_84;
  }

  if (v26)
  {
    *(v5 + 15) |= 2uLL;
    if ((v26 & 2) == 0)
    {
LABEL_40:
      if ((v26 & 4) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_64;
    }
  }

  else if ((v26 & 2) == 0)
  {
    goto LABEL_40;
  }

  *(v5 + 15) |= 1uLL;
  if ((v26 & 4) == 0)
  {
LABEL_41:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 15) |= 4uLL;
  if ((v26 & 0x40) == 0)
  {
LABEL_42:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 15) |= 8uLL;
  if ((v26 & 0x80) == 0)
  {
LABEL_43:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 15) |= 0x10uLL;
  if ((v26 & 0x100) == 0)
  {
LABEL_44:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 15) |= 0x400uLL;
  if ((v26 & 0x200) == 0)
  {
LABEL_45:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 15) |= 0x800uLL;
  if ((v26 & 0x400) == 0)
  {
LABEL_46:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 15) |= 0x1000uLL;
  if ((v26 & 0x800) == 0)
  {
LABEL_47:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 15) |= 0x200000uLL;
  if ((v26 & 0x1000) == 0)
  {
LABEL_48:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 15) |= 0x2000uLL;
  if ((v26 & 0x2000) == 0)
  {
LABEL_49:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 15) |= 0x100uLL;
  if ((v26 & 0x4000) == 0)
  {
LABEL_50:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 15) |= 0x200uLL;
  if ((v26 & 0x8000) == 0)
  {
LABEL_51:
    if ((v26 & 0x10000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 15) |= 0x4000uLL;
  if ((v26 & 0x10000) == 0)
  {
LABEL_52:
    if ((v26 & 0x20000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 15) |= 0x8000uLL;
  if ((v26 & 0x20000) == 0)
  {
LABEL_53:
    if ((v26 & 0x40000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 15) |= 0x20000uLL;
  if ((v26 & 0x40000) == 0)
  {
LABEL_54:
    if ((v26 & 0x1000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 15) |= 0x10000uLL;
  if ((v26 & 0x1000000) == 0)
  {
LABEL_55:
    if ((v26 & 0x2000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 15) |= 0x20uLL;
  if ((v26 & 0x2000000) == 0)
  {
LABEL_56:
    if ((v26 & 0x4000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 15) |= 0x40uLL;
  if ((v26 & 0x4000000) == 0)
  {
LABEL_57:
    if ((v26 & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_81:
    *(v5 + 15) |= 0x40000uLL;
    if ((v26 & 0x20000000) == 0)
    {
LABEL_59:
      if ((v26 & 0x40000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_80:
  *(v5 + 15) |= 0x80uLL;
  if ((v26 & 0x10000000) != 0)
  {
    goto LABEL_81;
  }

LABEL_58:
  if ((v26 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_82:
  *(v5 + 15) |= 0x80000uLL;
  if ((v26 & 0x40000000) != 0)
  {
LABEL_83:
    *(v5 + 15) |= 0x100000uLL;
  }

LABEL_84:
  v27 = *(v3 + 301);
  if (v27 <= 4)
  {
    *(v5 + 32) = v27;
  }

  *(v5 + 17) = *(v3 + 18);
  *(v5 + 18) = *(v3 + 29);
  *(v5 + 19) = *(v3 + 20);
  *(v5 + 20) = *(v3 + 30);
  v28 = *(v3 + 19);
  if (v28 < 0.0 || v28 >= 360.0 || (v29 = *(v3 + 31), v29 <= 0.0))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v30 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Course,%f,Uncertainty,%f\n", (*&g_MacClockTicksToMsRelation * v30), "ADP", 69, "Ga06_02GetPvtmInfo", 515, *(v3 + 19), *(v3 + 31));
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else
  {
    *(v5 + 21) = v28;
    *(v5 + 22) = v29;
  }

  v31 = v3[76];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v32 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GnsAsstSpoofMask,%u,Spoofing Flag,%llu\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 73, "Ga06_18GetGnssSpoofingFlag", v31, v31 & 0x20F | (((v31 >> 4) & 1) << 6) | (v31 >> 4) & 0x10 | (v31 >> 3) & 0x80 | (v31 >> 7) & 0x20 | (v31 >> 5) & 0x100);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  *(v5 + 23) = v31 & 0x20F | (((v31 >> 4) & 1) << 6) | (v31 >> 4) & 0x10 | (v31 >> 3) & 0x80 | (v31 >> 7) & 0x20 | (v31 >> 5) & 0x100;
  v33 = *(v3 + 314);
  if (v33 <= 3)
  {
    *(v5 + 48) = v33;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v34 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: spoofingFlags,%llu,Rel,%u,AssisUsed,%llu,GnssContentInFix,%u,EstimTech,%u\n", (*&g_MacClockTicksToMsRelation * v34), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 23), *(v5 + 29), *(v5 + 15), *(v5 + 32), *(v5 + 48));
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v35 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Lat,%f,Lon,%f,Alt,%f\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 6), *(v5 + 7), *(v5 + 8));
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v36 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsTime_ns,%llu,GpsTimeUnc_ns,%f,LeapSec,%d,Clk_ns,%llu,BCTNs,%llu,BCTUncNs,%llu\n", (*&g_MacClockTicksToMsRelation * v36), "ADP", 73, "Ga06_02GetPvtmInfo", *v5, v5[2], *(v5 + 4), *(v5 + 3), *(v5 + 4), *(v5 + 5));
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v38 = 70;
          if (*(v5 + 12))
          {
            v38 = 84;
          }

          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: LeapSecValid,%c,VUnc,%f,HMajUnc,%f,HMinUnc,%f,HAzmBrg,%f,HS,%f,HSpeedUnc,%f,VVel,%f,VVelUnc,%f\n", v37, "ADP", 73, "Ga06_02GetPvtmInfo", v38, *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13), *(v5 + 17), *(v5 + 18), *(v5 + 19), *(v5 + 20));
          gnssOsa_PrintLog(__str, 4, 1, 0);
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v39 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: U,%f,S,%u,C,%f,CUnc,%f\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 73, "Ga06_02GetPvtmInfo", *(v5 + 9), *(v5 + 28), *(v5 + 21), *(v5 + 22));
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }
        }
      }
    }
  }

LABEL_104:
  v40 = v52[5];
  v52[5] = v5;
  if (v40)
  {
    MEMORY[0x29C296280](v40, 0x1000C4043D32D5CLL);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v52[5])
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v41 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Reporting PVTM\n", (*&g_MacClockTicksToMsRelation * v41), "ADP", 68, "Ga06_01ReportPvtm_block_invoke");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    goto LABEL_111;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v45 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Fix\n", (*&g_MacClockTicksToMsRelation * v45), "ADP", 69, "Ga06_01ReportPvtm_block_invoke", 770);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

LABEL_116:
  _Block_object_dispose(&v51, 8);
  result = v56;
  v56 = 0;
  if (result)
  {
    return MEMORY[0x29C296280](result, 0x1000C4043D32D5CLL);
  }

  return result;
}

void sub_298FF129C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  MEMORY[0x29C296280](v38, v36, a3, a4, a5, a6, a7, a8);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Block_object_dispose(&a31, 8);
  v40 = a36;
  a36 = 0;
  if (v40)
  {
    MEMORY[0x29C296280](v40, v36);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__35(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {

    JUMPOUT(0x29C296280);
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_01ReportPvtmE11e_Gnm_Error16s_Gnm_AppNavData_block_invoke_2_38(void *a1)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
  v10 = 0;
  v11[0] = v2;
  v3 = *(a1[5] + 8);
  v4 = *(a1[6] + 8);
  v8 = 0;
  v9 = 0;
  v5 = a1[10];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, v11, &v10, v3 + 40, v4 + 40, &v9, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    MEMORY[0x29C296280](v6, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&v9, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&v10, 0);
  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    return MEMORY[0x29C296280](result, 0x1000C4043D32D5CLL);
  }

  return result;
}

void sub_298FF156C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    MEMORY[0x29C296280](a10, 0x1000C400A747E1ELL, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a11, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](&a13, 0);
  v14 = a14;
  a14 = 0;
  if (v14)
  {
    MEMORY[0x29C296280](v14, 0x1000C4043D32D5CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_56c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 56;
  v3 = a2 + 56;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_56c304_ZTSNSt3__18functionIFvNS_10unique_ptrIN4gnss3FixENS_14default_deleteIS3_EEEENS1_INS2_17MeasurementReportENS4_IS7_EEEEONS_6vectorINS2_6SvInfoENS_9allocatorISB_EEEEONSA_INS2_23ReceiverBandCorrectionsENSC_ISG_EEEENS1_INS2_18TimeConversionInfoENS4_ISK_EEEENS1_INS2_24KlobucharModelParametersENS4_ISN_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 56;

  return std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v1);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19s_Gnm_AppCStructNavEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrI19s_Gnm_AppCStructNavEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t gnss::GnssAdaptDevice::Ga06_03GetConstlUsedInFix(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 5696;
  v5 = a1 + 317;
  do
  {
    if (*(v4 + v2) == 1)
    {
      v6 = *(v5 + v2);
      v7 = result | 4;
      v8 = result | 8;
      v9 = result | 0x20;
      if (v6 != 6)
      {
        v9 = result;
      }

      if (v6 != 5)
      {
        v8 = v9;
      }

      if (v6 != 4)
      {
        v7 = v8;
      }

      v10 = result | 1;
      v11 = result | 2;
      v12 = result | 0x10;
      if (v6 != 3)
      {
        v12 = result;
      }

      if (v6 != 2)
      {
        v11 = v12;
      }

      if (v6 != 1)
      {
        v10 = v11;
      }

      if (*(v5 + v2) <= 3u)
      {
        result = v10;
      }

      else
      {
        result = v7;
      }
    }

    ++v2;
  }

  while (v2 != 128);
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga06_22GetBand(int a1, unsigned int a2)
{
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3 && a2 < 8)
      {
        return (0xA00000003000300uLL >> (8 * (a2 & 0x1F)));
      }

      else
      {
        LOBYTE(v3) = 4;
      }
    }

    else
    {
      if (a1 == 2)
      {
        LOBYTE(v3) = 2;
      }

      else
      {
        LOBYTE(v3) = 1;
      }

      if (!a1)
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  else
  {
    if (a1 == 9)
    {
      v2 = 9;
    }

    else
    {
      v2 = 1;
    }

    if (a1 == 8)
    {
      v2 = 8;
    }

    if (a1 == 7)
    {
      v2 = 7;
    }

    if (a1 == 6)
    {
      LOBYTE(v3) = 6;
    }

    else
    {
      LOBYTE(v3) = 1;
    }

    if (a1 == 5)
    {
      LOBYTE(v3) = 5;
    }

    if (a1 > 6)
    {
      LOBYTE(v3) = v2;
    }
  }

  return v3;
}

void gnss::GnssAdaptDevice::Ga06_15GnssRegisterNmeaCB(gnss::GnssAdaptDevice *a1, const void *a2, unsigned __int16 a3)
{
  v5 = a1;
  v19 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    if (v5)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Report Err,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 69, "Ga06_16ReportNmea", 769, v5);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }
    }

    else if (a2)
    {
      v8 = DeviceInstance;
      if (a3 >= 0x17uLL)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      __dst.__r_.__value_.__s.__data_[a3] = 0;
      v10 = *(v8 + 152);
      *__str = MEMORY[0x29EDCA5F8];
      v14 = 1174405120;
      v15 = ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke;
      v16 = &__block_descriptor_tmp_108;
      v17 = v8;
      v11 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __dst;
      }

      dispatch_async(v10, __str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v11 < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NMEA Payload\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 87, "Ga06_16ReportNmea", 770);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }
  }
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v63[6] = 0;
  v3 = MEMORY[0x29EDC95A0] + 64;
  v63[0] = MEMORY[0x29EDC95A0] + 64;
  v4 = *(MEMORY[0x29EDC9530] + 16);
  v56[0] = *(MEMORY[0x29EDC9530] + 8);
  *(v56 + *(v56[0] - 24)) = v4;
  v56[1] = 0;
  v5 = (v56 + *(v56[0] - 24));
  std::ios_base::init(v5, &v57);
  v6 = MEMORY[0x29EDC95A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v56[0] = v6;
  v63[0] = v3;
  v43 = MEMORY[0x29EDC9568] + 16;
  v57 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2961F0](&v58);
  memset(v59, 0, sizeof(v59));
  v7 = MEMORY[0x29EDC9570] + 16;
  v57 = MEMORY[0x29EDC9570] + 16;
  v60 = 0u;
  v61 = 0u;
  v62 = 8;
  std::string::operator=(&v60, (a1 + 40));
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v57);
  v46 = 0;
  v47 = &v46;
  v48 = 0x4002000000;
  v49 = __Block_byref_object_copy__103;
  v50 = __Block_byref_object_dispose__104;
  memset(v51, 0, 24);
  memset(&v45, 0, sizeof(v45));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v56, &v45);
  if ((*(v59 + *(v56[0] - 24)) & 5) != 0)
  {
    first = 0;
  }

  else
  {
    first = v56;
  }

  v9 = v47;
  v52 = first;
  v42 = v7;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
    first = v52;
  }

  else
  {
    v53 = v45;
  }

  size = v53.__r_.__value_.__l.__size_;
  v11 = v53.__r_.__value_.__r.__words[0];
  v64[0] = v53.__r_.__value_.__r.__words[2];
  *(v64 + 3) = *(&v53.__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
  memset(&v53, 0, sizeof(v53));
  v54 = first;
  v41 = v11;
  v44 = v12;
  if (v12 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11, size);
    first = v54;
    size = __p.__r_.__value_.__l.__size_;
    v11 = __p.__r_.__value_.__r.__words[0];
    LOBYTE(v12) = *(&__p.__r_.__value_.__s + 23);
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = __PAIR128__(size, v11);
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v64[0];
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v64 + 3);
  }

  LODWORD(v65) = __p.__r_.__value_.__r.__words[2];
  *(&v65 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
  memset(&__p, 0, sizeof(__p));
  v75.__first_ = first;
  if ((v12 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v75.__begin_, v11, size);
    first = v75.__first_;
    begin = v75.__begin_;
    value_high = HIBYTE(v75.__end_cap_.__value_);
  }

  else
  {
    v75.__begin_ = v11;
    v75.__end_ = size;
    LODWORD(v75.__end_cap_.__value_) = v65;
    *(&v75.__end_cap_.__value_ + 3) = *(&v65 + 3);
    value_high = v12;
    begin = v11;
  }

  v71[1] = v75.__end_;
  *(&v71[1] + 7) = *(&v75.__end_ + 7);
  *__str = first;
  v71[0] = begin;
  HIBYTE(v71[2]) = value_high;
  v71[3] = 0;
  if ((v12 & 0x80) != 0)
  {
    operator delete(v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __s = *v71;
  v65 = first;
  v67 = v71[2];
  memset(v71, 0, 24);
  v73 = 0;
  v74 = 0;
  v72 = 0;
  if (first)
  {
    v15 = v9 + 5;
    while (1)
    {
      v17 = v9[6];
      v16 = v9[7];
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v15) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v15) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v75.__end_cap_.__value_ = (v9 + 5);
        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v24 = (24 * v19);
        v75.__first_ = 0;
        v75.__begin_ = v24;
        value = 0;
        v75.__end_ = v24;
        v75.__end_cap_.__value_ = 0;
        if (SHIBYTE(v67) < 0)
        {
          std::string::__init_copy_ctor_external(v24, __s, *(&__s + 1));
          v24 = v75.__begin_;
          end = v75.__end_;
          value = v75.__end_cap_.__value_;
        }

        else
        {
          *&v24->__r_.__value_.__l.__data_ = __s;
          v24->__r_.__value_.__r.__words[2] = v67;
          end = v24;
        }

        v23 = end + 1;
        v27 = v9[5];
        v28 = v9[6] - v27;
        v29 = v24 - v28;
        memcpy(v24 - v28, v27, v28);
        v30 = v9[5];
        v9[5] = v29;
        v9[6] = v23;
        v31 = v9[7];
        v9[7] = value;
        v75.__end_ = v30;
        v75.__end_cap_.__value_ = v31;
        v75.__first_ = v30;
        v75.__begin_ = v30;
        std::__split_buffer<std::string>::~__split_buffer(&v75);
      }

      else
      {
        if (SHIBYTE(v67) < 0)
        {
          std::string::__init_copy_ctor_external(v9[6], __s, *(&__s + 1));
        }

        else
        {
          v18 = __s;
          *(v17 + 16) = v67;
          *v17 = v18;
        }

        v23 = (v17 + 24);
        v9[6] = v17 + 24;
      }

      v9[6] = v23;
      v32 = std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v65, &__s);
      if ((*(v32 + *(*v32 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (!v65)
      {
        goto LABEL_41;
      }
    }

    v65 = 0;
  }

LABEL_41:
  v33 = __s;
  v34 = SHIBYTE(v67);
  __s = 0uLL;
  v67 = 0;
  if (v44 < 0)
  {
    operator delete(v41);
  }

  v35 = MEMORY[0x29EDC9530];
  if (SHIBYTE(v74) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v71[2]) < 0)
  {
    operator delete(v71[0]);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v33);
LABEL_47:
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](&v75, v2 + 264);
  if (v75.__end_cap_.__value_)
  {
    v36 = *(v2 + 160);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke_2;
    block[3] = &unk_2A1F2ABB0;
    std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v69, &v75);
    block[4] = &v46;
    dispatch_async(v36, block);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v37 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v38 = *(a1 + 63);
      if (v38 < 0)
      {
        v38 = *(a1 + 48);
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NMEA Sent len,%zu\n", v37, "ADP", 73, "Ga06_16ReportNmea_block_invoke", v38);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v69);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v39 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NMEA\n", (*&g_MacClockTicksToMsRelation * v39), "ADP", 69, "Ga06_16ReportNmea_block_invoke", 516);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](&v75);
  _Block_object_dispose(&v46, 8);
  *__str = v51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__str);
  v56[0] = *v35;
  *(v56 + *(v56[0] - 24)) = v35[3];
  v57 = v42;
  if (SBYTE7(v61) < 0)
  {
    operator delete(v60);
  }

  v57 = v43;
  std::locale::~locale(&v58);
  std::istream::~istream();
  return MEMORY[0x29C296240](v63);
}

void sub_298FF247C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__103(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__104(uint64_t a1)
{
  v1[1] = *MEMORY[0x29EDCA608];
  v1[0] = (a1 + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v1);
}

uint64_t ___ZN4gnss15GnssAdaptDevice17Ga06_16ReportNmeaE11e_Gnm_Error17s_Gnm_AppNmeaData_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v2 = *(*v1 + 48);

  return v2();
}

uint64_t __copy_helper_block_e8_40c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40;
  v3 = a2 + 40;

  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v2, v3);
}

uint64_t __destroy_helper_block_e8_40c108_ZTSNSt3__18functionIFvONS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEE(uint64_t a1)
{
  v1 = a1 + 40;

  return std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v1);
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    v3 = *(a2 + 48);
    v4 = (a1 + 40);
    v5 = *(a2 + 40);

    std::string::__init_copy_ctor_external(v4, v5, v3);
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    v1 = *(a1 + 40);

    operator delete(v1);
  }
}

void std::vector<gnss::SvPositionAtTime>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<gnss::Measurement>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void gnss::SvInfo::~SvInfo(gnss::SvInfo *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    MEMORY[0x29C296280](v3, 0x1000C40AC4F46D1);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9530];
  v3 = *MEMORY[0x29EDC9530];
  *a1 = *MEMORY[0x29EDC9530];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      v4 = *(v2 + 120);
      v5 = *(v2 + 112);
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 176;
          std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100]((v4 - 16), 0);
          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 112);
      }

      *(v2 + 120) = v3;
      operator delete(v5);
    }

    JUMPOUT(0x29C296280);
  }

  return result;
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      MEMORY[0x29C296280](v3, 0x1000C4095D96C66);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      MEMORY[0x29C296280](v4, 0x1000C4095D96C66);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      MEMORY[0x29C296280](v5, 0x1000C4095D96C66);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      MEMORY[0x29C296280](v6, 0x1000C40D315E998);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      MEMORY[0x29C296280](v7, 0x1000C4079AA8B5ELL);
    }

    JUMPOUT(0x29C296280);
  }

  return result;
}

void std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 17;
        std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::~__shared_ptr_pointer(std::__shared_weak_count *this)
{

  std::__shared_weak_count::~__shared_weak_count(this);
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C296280);
}

uint64_t std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {

    JUMPOUT(0x29C296280);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<s_Gnm_AppCStructNav *,std::shared_ptr<s_Gnm_AppCStructNav>::__shared_ptr_default_delete<s_Gnm_AppCStructNav,s_Gnm_AppCStructNav>,std::allocator<s_Gnm_AppCStructNav>>::__on_zero_shared_weak(void *__p)
{

  operator delete(__p);
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[16];
    if (v3)
    {
      v2[17] = v3;
      operator delete(v3);
    }

    v4 = v2[12];
    if (v4)
    {
      v2[13] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x29C296280);
  }

  return result;
}

void std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    MEMORY[0x29C296280](v3, 0x1000C40AC4F46D1);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::SvInfo>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<gnss::SvInfo>,gnss::SvInfo*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      *(a3 + 24) = *(v5 + 3);
      v7 = v5[6];
      *(a3 + 40) = v5[5];
      v5[3] = 0;
      v5[4] = 0;
      v5[5] = 0;
      v5[6] = 0;
      *(a3 + 48) = v7;
      v8 = *(v5 + 7);
      v9 = *(v5 + 9);
      v10 = *(v5 + 11);
      *(a3 + 104) = *(v5 + 52);
      *(a3 + 88) = v10;
      *(a3 + 72) = v9;
      *(a3 + 56) = v8;
      *(a3 + 120) = 0;
      *(a3 + 128) = 0;
      *(a3 + 112) = 0;
      *(a3 + 112) = *(v5 + 7);
      *(a3 + 128) = v5[16];
      v5[14] = 0;
      v5[15] = 0;
      v5[16] = 0;
      v5 += 17;
      a3 += 136;
    }

    while (v5 != a2);
    do
    {
      std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      v4 += 17;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gnss::SvInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  MEMORY[0x29C296140](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x29EDC93D0]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_298FF3ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (a2)
  {
    std::locale::~locale(&a10);
    __cxa_begin_catch(exception_object);
    v12 = *v10;
    *(v10 + *(*v10 - 24) + 32) |= 1u;
    if ((*(v10 + *(v12 - 24) + 36) & 1) == 0)
    {
      __cxa_end_catch();
      JUMPOUT(0x298FF3A60);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::pair<std::istream_iterator<std::string,char,std::char_traits<char>,long>,std::istream_iterator<std::string,char,std::char_traits<char>,long>>::~pair(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t GncP00_04HandleInitInd()
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_INIT_IND\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 73, "GncP00_04HandleInitInd");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  inited = gnssOsa_InitCriticalSection("GncP01_00InitPeUpdate", 80, &g_PosUpdateCritic);
  v2 = 0;
  g_GncP_PEUpdate[0] = 0;
  g_GncP_PEUpdate[6384] = 0;
  qword_2A13EDF58 = 0;
  v8 = 0u;
  memset(v9, 0, 28);
  *__str = 0u;
  v7 = 0u;
  do
  {
    v3 = &__str[v2];
    v3[4] = 0;
    *(v3 + 6) = 0;
    *(v3 + 12) = 0;
    *(v3 + 28) = 0;
    *(v3 + 20) = 0;
    v2 += 36;
    *(v3 + 35) = 0;
  }

  while (v2 != 72);
  unk_2A13EC2D0 = v8;
  unk_2A13EC2E0 = v9[0];
  unk_2A13EC2EC = *(v9 + 12);
  g_GncPCntxtInfo = *__str;
  unk_2A13EC2C0 = v7;
  g_GnssDataClrMask = 0;
  g_GncPStateInfo = 0u;
  *&byte_2A13EC4F0 = 0u;
  *&dword_2A13EC4FC = 0u;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  g_GncPMeData = 0;
  Instance = XofSvcsIf::GetInstance(inited);
  XofSvcsIf::Init(Instance);
  g_OrbitDataAvailable = 0;
  g_BceOrbitDataInjected = 0;
  g_TimeMarkState = 1;
  return 0;
}

uint64_t GncP00_06HandleDeInitInd(XofSvcsIf *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v1 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_DEINIT_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncP00_06HandleDeInitInd");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  Instance = XofSvcsIf::GetInstance(a1);
  XofSvcsIf::Init(Instance);
  g_OrbitDataAvailable = 0;
  g_BceOrbitDataInjected = 0;
  GncP02_13ClearMEBuf();
  if (g_GncPMeData == 1)
  {
    AgpsFsmStopTimer(8656134);
  }

  GncP25_02StopTimemarkSessTimer();
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
  g_TimeMarkState = 1;
  GncP16_99DeInitStateHndlr(v3, v4, v5);
  gncP01_01DeInitPeUpdate();
  return 0;
}

uint64_t GncP00_03DefaultMessage(unsigned __int8 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FSM:MID,%x, Srce,%u, Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP00_03DefaultMessage", 520, *(a1 + 1), *a1, a1[1]);
      v3 = 2;
LABEL_6:
      gnssOsa_PrintLog(__str, v3, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP00_03DefaultMessage", 517);
    v3 = 1;
    goto LABEL_6;
  }

  return 0;
}

void GncP00_01Init(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP00_01Init", 119, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_INIT_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_01Init");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8655619, v1);
  }
}

void GncP00_02DeInit(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP00_02DeInit", 138, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_DEINIT_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_02DeInit");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 132, 8655875, v1);
  }
}

void GncP00_07DestMissingHandler(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP00_07DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 4);
  if (v3 <= 8653826)
  {
    if (v3 == 8651011)
    {
      v6 = *(a1 + 24);
      if (v6)
      {
        free(v6);
      }

      *(a1 + 24) = 0;
      return;
    }

    v4 = 2819;
  }

  else
  {
    if (v3 == 8653827 || v3 == 8657923)
    {
LABEL_10:
      v5 = *(a1 + 16);
      if (v5)
      {
        free(v5);
      }

      *(a1 + 16) = 0;
      return;
    }

    v4 = 4611;
  }

  if (v3 == (v4 | 0x840000))
  {
    goto LABEL_10;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP00_07DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }
}

double Zen_Trop_Delay_STANAG_4294(double a1)
{
  v1 = a1 * 0.001;
  if (v1 <= 1.0)
  {
    return v1 * -0.3248 + 2.4644043 + v1 * 0.0223957 * v1;
  }

  if (v1 <= 9.0)
  {
    return (0.375 - exp((1.0 - v1) * 0.1226)) * -2.2838 + 0.732;
  }

  return exp((v1 + -9.0) * -0.1424) * 0.7374;
}

void UNB_TropModel::Set_UNB_TropModel_Params(UNB_TropModel *this, double a2, double a3, int a4)
{
  v5 = 0;
  if (a2 >= -500.0 && a2 <= 18000.0)
  {
    if (vabdd_f64(*(this + 3), a2) > 40.0 || (*(this + 33) & 1) == 0)
    {
      *(this + 35) = 1;
    }

    *(this + 2) = a2;
    v5 = 1;
  }

  *(this + 33) = v5;
  v6 = fabs(a3);
  if (v6 > 90.0)
  {
    v7 = 0;
    *(this + 32) = 0;
    *(this + 104) = 0;
  }

  else if (vabdd_f64(*(this + 1), a3) > 0.004 || (v7 = *(this + 32), (v7 & 1) == 0))
  {
    v7 = 1;
    *(this + 32) = 1;
    *(this + 35) = 1;
    *(this + 1) = a3;
  }

  if ((a4 - 1) > 0x16D)
  {
    *(this + 34) = 0;
    *(this + 104) = 0;
  }

  else
  {
    if (*this == a4 && *(this + 34) == 1)
    {
      v8 = *(this + 35);
    }

    else
    {
      *(this + 17) = 257;
      *this = a4;
      v8 = 1;
    }

    if (v6 <= 90.0 && (v8 & 1) != 0)
    {
      if (v7)
      {
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenT0, UNB_ZenTa);
        v10 = v9;
        *(this + 8) = v9;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenP0, UNB_ZenPa);
        v12 = v11;
        *(this + 7) = v11;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenW0, UNB_ZenWa);
        *(this + 12) = v13;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenB0, UNB_ZenBa);
        *(this + 9) = v14;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenL0, UNB_ZenLa);
        v16 = v15;
        *(this + 10) = v15;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenW0_T, UNB_ZenWa_T);
        v18 = v17;
        UNB_TropModel::Get_Weather_Param(this, UNB_ZenB0_T, UNB_ZenBa_T);
        v20 = v19 * 0.001;
        *(this + 9) = v19 * 0.001;
        v21 = (v12 * 0.00000314 + 1.00062 + (v10 + -273.15) * (v10 + -273.15) * 0.00000056) * (exp(v10 * -0.019121316 + v10 * v10 * 0.000012378847 + 33.9371105 + -6343.1645 / v10) * 0.01 * (v18 * 0.01));
        *(this + 12) = v21;
        *(this + 36) = 0;
        if (v5)
        {
          v22 = v20 * 287.053763;
          v23 = 9.80665 / (v20 * 287.053763);
          v24 = *(this + 2);
          v25 = v10 - v20 * v24;
          v26 = v25 / v10;
          v27 = v12 * pow(v26, v23);
          v28 = v16 + 1.0;
          *(this + 12) = v21 * pow(v26, v28 * v23);
          *(this + 7) = v27;
          *(this + 8) = v25;
          v29 = tan(*(this + 1) * 0.0174532925);
          v30 = atan(v29 * 0.99330562);
          *(this + 11) = v25 * (v22 / (v28 * ((cos(v30 + v30) * -0.00266 + 1.0 + v24 * -0.00000028) * -9.784)) + 1.0);
          *(this + 36) = 1;
        }
      }

      *(this + 104) = v7;
      *(this + 35) = 0;
      *(this + 3) = *(this + 2);
    }
  }

  v31 = (cos(*(this + 1) * 0.0174532925 + *(this + 1) * 0.0174532925) * -0.00266 + 1.0 + *(this + 2) * -0.00000028) * 9.784;
  *(this + 5) = v31;
  *(this + 6) = 0.0222765202 / v31;
}

BOOL UNB_TropModel::Get_Zenith_Delays_Meter(UNB_TropModel *this, double a2, double a3, int a4, double *a5, double *a6)
{
  *a5 = 0.0;
  *a6 = 0.0;
  UNB_TropModel::Set_UNB_TropModel_Params(this, a2, a3, a4);
  return UNB_TropModel::Get_Dry_Zenith_Delay(this, a5) && (UNB_TropModel::Get_Wet_Zenith_Delay(this, a6) & 1) != 0;
}

uint64_t UNB_TropModel::Get_Dry_Zenith_Delay(UNB_TropModel *this, double *a2)
{
  *a2 = 0.0;
  if (*(this + 104) != 1 || *(this + 33) != 1)
  {
    return 0;
  }

  v3 = *(this + 6) * *(this + 7);
  *a2 = v3;
  v4 = 1.0;
  if ((*(this + 36) & 1) == 0)
  {
    v5 = *(this + 9);
    v6 = log(1.0 - v5 * *(this + 2) / *(this + 8));
    v4 = exp(v6 * 9.80665 / (v5 * 287.053763));
  }

  *a2 = v3 * v4;
  return 1;
}

uint64_t UNB_TropModel::Get_Wet_Zenith_Delay(UNB_TropModel *this, double *a2)
{
  *a2 = 0.0;
  if (*(this + 104) != 1 || *(this + 33) != 1)
  {
    return 0;
  }

  v3 = 1.0;
  v4 = *(this + 10) + 1.0;
  v5 = (*(this + 11) * 16.5220718 + 377600.0) * 0.000001 * 287.053763 / (*(this + 9) * -287.053763 + *(this + 5) * v4);
  *a2 = v5;
  v6 = v5 * (*(this + 12) / *(this + 8));
  *a2 = v6;
  if ((*(this + 36) & 1) == 0)
  {
    v7 = *(this + 9);
    v8 = log(1.0 - v7 * *(this + 2) / *(this + 8));
    v3 = exp((v4 * 9.80665 / (v7 * 287.053763) + -1.0) * v8);
  }

  *a2 = v6 * v3;
  return 1;
}

void UNB_TropModel::Get_Weather_Param(UNB_TropModel *this, const double *a2, const double *a3)
{
  if (a2 && a3)
  {
    v3 = *this;
    v4 = *(this + 1);
    if (v4 < 0.0)
    {
      v3 = v3 + 182.625;
    }

    cos((v3 + -28.0) * 0.0172024238);
  }
}

void Gnm15_09UpdateNmeaData(char *a1, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NmeaLen,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm15_09UpdateNmeaData", a2);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NmeaData\n");
LABEL_15:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    return;
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NmeaLen\n");
    goto LABEL_15;
  }

  v5 = qword_2A13EE520;
  if (!qword_2A13EE520)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_15;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NmeaCB Succ\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm15_09UpdateNmeaData");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    v5 = qword_2A13EE520;
  }

  v5(0, a1, a2);
}

uint64_t Gnm15_10HandleGncSNmeaData(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_NMEA_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_10HandleGncSNmeaData");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm15_09UpdateNmeaData(*(a1 + 16), *(a1 + 12));
    v3 = *(a1 + 16);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm15_10HandleGncSNmeaData", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm15_11HandleNavData(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_NAV_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_11HandleNavData");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    v4 = *(a1 + 18);
    v5 = *(a1 + 16);
    v6 = *(a1 + 19);
    v7 = *(a1 + 24);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v9 = 78;
      if (v6)
      {
        v9 = 89;
      }

      v20 = v9;
      v10 = 70;
      if (v4)
      {
        v10 = 84;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Time,%u,Final,%c,SessId,%u,Valid,%c\n", v8, "GNM", 73, "Gnm15_11HandleNavData", v3, v10, v5, v20);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (v6 && !v7)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NavData\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm15_11HandleNavData", 513);
        v12 = 2;
LABEL_16:
        gnssOsa_PrintLog(__str, v12, 1, 0);
        return 0;
      }

      return 0;
    }

    InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v5);
    if (InstnFromInstnId)
    {
      v15 = InstnFromInstnId;
      v16 = *(InstnFromInstnId + 1);
      if (v16)
      {
        if (*(InstnFromInstnId + 2) == 1)
        {
          if ((*(v16 + 4) & 2) != 0)
          {
            Gnm11_01UpdateNavData(InstnFromInstnId, v7, v4, v6, v3);
            if (v4)
            {
              Gnm02_23StopNafSession(v15);
              Gnm02_21DeleteInstn(v15);
            }
          }

          goto LABEL_30;
        }

        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", v19);
          goto LABEL_29;
        }

LABEL_30:
        v17 = *(a1 + 24);
        if (v17)
        {
          free(v17);
        }

        *(a1 + 24) = 0;
        return 0;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_30;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnInfo\n");
    }

    else
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_30;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn\n");
    }

LABEL_29:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    goto LABEL_30;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 69, "Gnm15_11HandleNavData", 517);
    v12 = 1;
    goto LABEL_16;
  }

  return 0;
}

uint64_t Gnm15_12HandleGncPNmeaData(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_12HandleGncPNmeaData");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    Gnm15_09UpdateNmeaData(*(a1 + 16), *(a1 + 12));
    v3 = *(a1 + 16);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 16) = 0;
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm15_12HandleGncPNmeaData", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t Gnm15_15HandleRawMeasData(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_RAWMEAS_DATA_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm15_15HandleRawMeasData");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm15_15HandleRawMeasData", 517);
    v6 = 1;
LABEL_24:
    gnssOsa_PrintLog(__str, v6, 1, 0);
    return 0;
  }

  if (!*(a1 + 24))
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Meas\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm15_15HandleRawMeasData", 513);
    v6 = 2;
    goto LABEL_24;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RawMeasData SessId,%u,UpdtTime,%u,FinaUpdt,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm15_15HandleRawMeasData", *(a1 + 16), *(a1 + 12), *(a1 + 18));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(*(a1 + 16));
  if (InstnFromInstnId && *(InstnFromInstnId + 1) && *(InstnFromInstnId + 2) == 1)
  {
    Gnm11_04SendAppMeasData(InstnFromInstnId, *(a1 + 12), *(a1 + 24), *(a1 + 18));
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm15_15HandleRawMeasData", 2052);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v8 = *(a1 + 24);
  if (v8[42])
  {
    free(v8[42]);
    v8 = *(a1 + 24);
  }

  v8[42] = 0;
  if (v8[12])
  {
    free(v8[12]);
    v8 = *(a1 + 24);
  }

  v8[12] = 0;
  if (v8[44])
  {
    free(v8[44]);
    v8 = *(a1 + 24);
  }

  free(v8);
  *(a1 + 24) = 0;
  return 0;
}