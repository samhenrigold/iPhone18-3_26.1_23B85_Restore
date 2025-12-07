_BYTE *PP_BDS_D2_Set_Not_Visible(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v18 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v8 = result;
          if (*result)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              v17 = 0;
              v11 = *(a3 + 2 * v9);
              v12 = v11 - 1;
              if (v11 >= 1)
              {
                result = LongPrnIdx_To_Prn(v11 - 1, &v17);
                if (v17 == 4 && result - 59 <= 0xFFFFFFCA)
                {
                  *(a3 + 2 * v9) = -1;
                  *(a4 + 4 * v12) = 2;
                  ++v10;
                }
              }

              ++v9;
              v13 = *v8;
            }

            while (v9 < v13);
            if (v10)
            {
              if (*v8)
              {
                v14 = 0;
                LODWORD(v15) = 0;
                do
                {
                  v16 = *(a3 + 2 * v14);
                  if (v16 >= 1)
                  {
                    *(a3 + 2 * v15) = v16;
                    LODWORD(v15) = v15 + 1;
                    LOBYTE(v13) = *v8;
                  }

                  ++v14;
                }

                while (v14 < v13);
              }

              else
              {
                LODWORD(v15) = 0;
              }

              if (v15 < v13)
              {
                v15 = v15;
                do
                {
                  if (*(a3 + 2 * v15) >= 1)
                  {
                    *(a3 + 2 * v15) = -1;
                    LOBYTE(v13) = *v8;
                  }

                  ++v15;
                }

                while (v15 < v13);
              }

              *v8 = v13 - v10;
              *a2 += v10;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t NK_VVel_Aiding_Required(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = a2 + 60176;
  if ((!*(a1 + 27136) || *(a2 + 20) < 8 || *(a1 + 241) == 1) && *(a2 + 60416) == 1 || (v7 = *(a1 + 20), (v7 - 5) < 4) || v7 == 4 && *(a2 + 1840) > 50.0)
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  v24[0] = 0.0;
  v24[1] = 0.0;
  v25 = 0.0;
  Comp_NEDvar_UDU(a1 + 976, 0xCu, 9, (a2 + 1736), v24);
  v9 = *(a1 + 27136);
  v10 = v9 && (*(a1 + 241) & 1) == 0 && (*(a1 + 20) & 0xFFFFFFFE) == 2 && *(a2 + 1848) < 2.0;
  if (*(a2 + 20) > 8)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  if (*(v6 + 2008) == 1 && *(v6 + 272) < 4.0)
  {
    v11 = 0;
  }

  else if (v10 && *(v6 + 1948) < 4u)
  {
    v11 = 0x80;
  }

  else if (*(v6 + 1992) == 1 && *v6 < 1.0e-16)
  {
    --v11;
  }

  v12 = v25;
  if (*(v6 + 1949) < v11 || *(a2 + 21712) + *(a2 + 36616) < 1.5 || ((v13 = *(a1 + 20), v13 > 8) ? (v14 = 1000000.0) : (v14 = dbl_299050318[v13]), v25 > v14))
  {
    if (*(v6 + 1949) || *(v6 + 2012) || *(v6 + 2020) || *(v6 + 2036) || *(v6 + 2040))
    {
      *a3 = 1;
    }
  }

  if (*a3 != 1)
  {
    return 0;
  }

  if (v9 && *(a1 + 241) != 1)
  {
    v17 = *(a2 + 1832);
    *(a3 + 24) = -v17;
    if (v10 && ((v18 = *(a2 + 1848), v18 < 1.0) ? (v19 = *(v6 + 1948) >= 3u) : (v19 = 1), !v19 || v18 < 0.2) || v17 * v17 > v12 * 9.0)
    {
      *(a3 + 24) = 0;
    }

    v20 = *(a1 + 20);
    if (v20 > 8)
    {
      v21 = 9000000.0;
    }

    else
    {
      v21 = dbl_2990502D0[v20];
    }

    if (v12 <= v21)
    {
      Dynamics_Mode::Get_Vert_Vel_Aid_Var(v20);
      v21 = v22 * 0.25;
      if (v12 >= v21)
      {
LABEL_61:
        if (v20 > 8)
        {
          v23 = 1000000.0;
        }

        else
        {
          v23 = dbl_299050318[v20];
        }

        v16 = v12 + v23;
        goto LABEL_65;
      }
    }

    else
    {
      *(a3 + 24) = 0;
    }

    v12 = v21;
    goto LABEL_61;
  }

  *(a3 + 24) = 0;
  v15 = *(a1 + 20);
  if (v15 > 8)
  {
    v16 = 1000000.0;
  }

  else
  {
    v16 = dbl_299050318[v15];
  }

LABEL_65:
  *(a3 + 32) = v16;
  *(a3 + 4) = 2;
  *(a3 + 20) = *a2;
  *(a3 + 16) = 0;
  *(a3 + 48) = xmmword_2990502C0;
  *(a3 + 64) = 0;
  return 1;
}

__n128 GN_GPS_Get_LibVersion(char *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(qword_2A14541A0 + 476);
  v3 = *(qword_2A14541A0 + 478);
  v4 = *(qword_2A14541A0 + 480);
  v5 = *(qword_2A14541A0 + 484);
  v6 = *(qword_2A14541A0 + 485);
  v7 = *(qword_2A14541A0 + 486);
  v8 = *(qword_2A14541A0 + 487);
  v9 = qword_2A1454200;
  if (__PAIR64__(*(qword_2A1454200 + 14), *(qword_2A1454200 + 8)) != __PAIR64__(v3, v2) || *(qword_2A1454200 + 16) != v4 || *(qword_2A1454200 + 20) != v5 || *(qword_2A1454200 + 21) != v6 || *(qword_2A1454200 + 22) != v7 || *(qword_2A1454200 + 23) != v8)
  {
    *(qword_2A1454200 + 8) = v2;
    *(v9 + 14) = v3;
    *(v9 + 16) = v4;
    *(v9 + 20) = v5;
    *(v9 + 21) = v6;
    *(v9 + 22) = v7;
    *(v9 + 23) = v8;
    v10 = (v2 >> 10) & 0x1F | 0x40;
    *(v9 + 10) = (v2 >> 10) & 0x1F | 0x40;
    *(v9 + 11) = (v2 >> 5) & 0x1F | 0x40;
    v11 = (v9 + 11);
    *(v9 + 12) = v2 & 0x1F | 0x40;
    *(v9 + 13) = 0;
    v12 = *v9;
    v13 = *v9 + 33;
    v27 = v12;
    v28 = v13;
    v26[1] = v12;
    do
    {
      v26[0] = v12 + 1;
      *v12 = v10;
      v12 = v26[0];
      if (v26[0] >= v28)
      {
        v12 = v27;
        v26[0] = v27;
      }

      v14 = *v11++;
      LOBYTE(v10) = v14;
    }

    while (v14);
    v26[0] = v12 + 1;
    *v12 = 58;
    if (v26[0] >= v28)
    {
      v26[0] = v27;
    }

    sprintf_03x(v26, *(v9 + 14));
    v15 = v26[0]++;
    *v15 = 45;
    if (v26[0] >= v28)
    {
      v26[0] = v27;
    }

    sprintf_08x(v26, *(v9 + 16));
    v16 = v26[0]++;
    *v16 = 45;
    if (v26[0] >= v28)
    {
      v26[0] = v27;
    }

    sprintf_02d(v26, *(v9 + 20));
    v17 = v26[0]++;
    *v17 = 46;
    if (v26[0] >= v28)
    {
      v26[0] = v27;
    }

    sprintf_02d(v26, *(v9 + 21));
    v18 = v26[0]++;
    *v18 = 46;
    if (v26[0] >= v28)
    {
      v26[0] = v27;
    }

    sprintf_02d(v26, *(v9 + 22));
    v19 = v26[0]++;
    *v19 = 46;
    if (v26[0] >= v28)
    {
      v26[0] = v27;
    }

    sprintf_02d(v26, *(v9 + 23));
  }

  v20 = *(v9 + 24);
  v21 = *(v9 + 40);
  v22 = *(v9 + 72);
  *(a1 + 2) = *(v9 + 56);
  *(a1 + 3) = v22;
  *a1 = v20;
  *(a1 + 1) = v21;
  result = *(v9 + 88);
  v24 = *(v9 + 104);
  v25 = *(v9 + 136);
  *(a1 + 6) = *(v9 + 120);
  *(a1 + 7) = v25;
  *(a1 + 4) = result;
  *(a1 + 5) = v24;
  return result;
}

char **GN_GPS_Initialise(uint64_t a1)
{
  MEMORY[0x2A1C7C4A8](a1);
  v44 = *MEMORY[0x29EDCA608];
  v1 = mach_continuous_time();
  v2 = 0;
  v3 = (*&g_MacClockTicksToMsRelation * v1);
  v4 = &v42[24];
  v5 = vdupq_n_s64(0xBuLL);
  do
  {
    v6 = vdupq_n_s64(v2);
    v7 = vorrq_s8(v6, xmmword_299050240);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v7)), 2).u8[0])
    {
      *v4 = v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v7)), 2).i8[2])
    {
      *(v4 - 1) = v3;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), vorrq_s8(v6, xmmword_299050360)))).i32[1])
    {
      *(v4 - 2) = v3;
      *(v4 - 3) = v3;
    }

    v2 += 4;
    v4 -= 4;
  }

  while (v2 != 12);
  Last_Published_Nav_Data_TTag = 0;
  Last_Published_Raw_Meas_TTag = 0;
  _MergedGlobals_1 = 0;
  inited = GNSS_Init_p_list();
  GNSS_Clear_DataAreas(inited);
  v9 = *(&g_GN_GPS_Data_p_list + 1);
  **(&g_GN_GPS_Data_p_list + 1) = 0u;
  *(v9 + 16) = 0u;
  GNSS_HL_Data_Bases_Clear(&g_GN_GPS_Data_p_list);
  EvCrt_v("GN_GPS_Initialise: ");
  g_Logging_Cfg = 4;
  v10 = qword_2A1454200;
  *(qword_2A1454200 + 8) = 0;
  *(v10 + 14) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0x7375646E6962696CLL;
  LOBYTE(v11) = 32;
  *(v10 + 32) = 32;
  __src[3] = v10 + 42;
  __src[2] = v10 + 32;
  __src[1] = v10 + 32;
  v12 = (v10 + 33);
  strcpy(v43, " 2");
  v13 = 1;
  do
  {
    __src[0] = v12 + 1;
    *v12 = v11;
    v12 = __src[0];
    v14 = __src[3];
    if (__src[0] >= __src[3])
    {
      v12 = __src[2];
      __src[0] = __src[2];
    }

    v11 = v43[v13++];
  }

  while (v11);
  __src[0] = v12 + 1;
  *v12 = 46;
  if ((v12 + 1) >= v14)
  {
    __src[0] = __src[2];
  }

  nzet(__src, 0x6Fu, v43, 0, 0, 0);
  v15 = __src[0]++;
  *v15 = 46;
  if (__src[0] >= __src[3])
  {
    v16 = __src[2];
  }

  else
  {
    v16 = __src[0];
  }

  __src[0] = v16 + 1;
  *v16 = 51;
  if (__src[0] >= __src[3])
  {
    v17 = __src[2];
  }

  else
  {
    v17 = __src[0];
  }

  __src[0] = v17 + 1;
  *v17 = 45;
  strcpy((v10 + 42), "250711-000:0000-00000000-00.00.00.00  Oct 10 2025 21:35:48");
  *v10 = v10 + 49;
  *(v10 + 152) = 0;
  *&word_2A14544AE = 0;
  if (byte_2A14544AC == 1)
  {
    v18 = word_2A14544B2 + 1;
  }

  else
  {
    v18 = 1;
    byte_2A14544AC = 1;
  }

  word_2A14544B2 = v18;
  GNSS_Mark_Restart(0);
  v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  DWORD1(v41) = v39;
  EvLog("GN_GPS_Initialise:  Read NV_Store NO Data");
  bzero(__src, 0x8290uLL);
  s_NV_Ram::s_NV_Ram(__src);
  v19 = qword_2A1454220;
  memcpy(qword_2A1454220, __src, 0x828CuLL);
  NV_Ram_Init(v19);
  Debug_Log_NonVol(0, qword_2A1454220);
  v38 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  DWORD2(v41) = v38;
  v20 = qword_2A1454228;
  EvLog("NA_Ram_Init:");
  p_NA = v20;
  bzero(__src, 0x69F8uLL);
  s_NA_Ram::s_NA_Ram(__src);
  memcpy(p_NA, __src, 0x69F8uLL);
  GNSS_HL_Data_Bases_Init(&g_GN_GPS_Data_p_list);
  *(*(&xmmword_2A1454168 + 1) + 1664) = -1169279272;
  Nav_Kalman_Update_Init(qword_2A14541B0);
  v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  HIDWORD(v41) = v37;
  API_Query_Config(qword_2A1454208);
  g_GN_GNSS_Nav_Debug_Port = 1;
  v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  *v42 = v36;
  v21 = qword_2A14541A0;
  v22 = *(qword_2A14541A0 + 440);
  *(qword_2A14541A0 + 512) = v22;
  *(v21 + 504) = 0;
  EvLog_v("GN_GPS_Initialise:  GNB ME HW 0x%x 0x%x   ME FW Checksum 0x%x   TTick %u", *(v21 + 476), *(v21 + 478), *(v21 + 480), v22);
  v34 = *(*(&xmmword_2A1454168 + 1) + 12);
  v35 = *(*(&xmmword_2A1454168 + 1) + 1854);
  v32 = *(*(&xmmword_2A1454168 + 1) + 1853);
  v33 = *(*(&xmmword_2A1454168 + 1) + 1855);
  v30 = *(*(&xmmword_2A1454168 + 1) + 1844);
  v31 = *(*(&xmmword_2A1454168 + 1) + 1852);
  v29 = *(*(&xmmword_2A1454168 + 1) + 1736);
  v28 = *(*(&xmmword_2A1454168 + 1) + 1732);
  EvLog_v("GN_GPS_Initialise:  %d %d  %d %d %d %d %d %d %d  %d %d %d %d %d %d %d  %d %d %d %d %d %d %d  %d %d %d %d %d %d %d  %d %d %d  %d %d  %d %d %d  %d %d %d %d  %d  %d %d  %d %d  %d %d %d  %d  %d", *(*(&xmmword_2A1454168 + 1) + 4), *(*(&xmmword_2A1454168 + 1) + 65), *(*(&xmmword_2A1454168 + 1) + 14), *(*(&xmmword_2A1454168 + 1) + 15), *(*(&xmmword_2A1454168 + 1) + 16), *(*(&xmmword_2A1454168 + 1) + 17), *(*(&xmmword_2A1454168 + 1) + 18), *(*(&xmmword_2A1454168 + 1) + 19), *(*(&xmmword_2A1454168 + 1) + 20), *(*(&xmmword_2A1454168 + 1) + 21), *(*(&xmmword_2A1454168 + 1) + 22), *(*(&xmmword_2A1454168 + 1) + 23), *(*(&xmmword_2A1454168 + 1) + 24), *(*(&xmmword_2A1454168 + 1) + 25), *(*(&xmmword_2A1454168 + 1) + 26), *(*(&xmmword_2A1454168 + 1) + 27), *(*(&xmmword_2A1454168 + 1) + 28), *(*(&xmmword_2A1454168 + 1) + 29), *(*(&xmmword_2A1454168 + 1) + 30), *(*(&xmmword_2A1454168 + 1) + 31), *(*(&xmmword_2A1454168 + 1) + 32), *(*(&xmmword_2A1454168 + 1) + 33), *(*(&xmmword_2A1454168 + 1) + 34), *(*(&xmmword_2A1454168 + 1) + 35), *(*(&xmmword_2A1454168 + 1) + 36), *(*(&xmmword_2A1454168 + 1) + 37), *(*(&xmmword_2A1454168 + 1) + 38), *(*(&xmmword_2A1454168 + 1) + 39), *(*(&xmmword_2A1454168 + 1) + 40), *(*(&xmmword_2A1454168 + 1) + 41), *(*(&xmmword_2A1454168 + 1) + 42), *(*(&xmmword_2A1454168 + 1) + 43), *(*(&xmmword_2A1454168 + 1) + 44), *(*(&xmmword_2A1454168 + 1) + 45), *(*(&xmmword_2A1454168 + 1) + 46), *(*(&xmmword_2A1454168 + 1) + 1668), *(*(&xmmword_2A1454168 + 1) + 1768), *(*(&xmmword_2A1454168 + 1) + 1760), *(*(&xmmword_2A1454168 + 1) + 1680), *(*(&xmmword_2A1454168 + 1) + 1688), *(*(&xmmword_2A1454168 + 1) + 1696), *(*(&xmmword_2A1454168 + 1) + 1704), v28, *(*(&xmmword_2A1454168 + 1) + 1734), v29, *(*(&xmmword_2A1454168 + 1) + 1840), v30, v31, v32, v33, v34, v35);
  v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  *&v42[4] = v23;
  *&v42[8] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  EvLog_v("GN_GPS_Initialise: OS Time Waypoints: %u %d %d %d %d %d %d", v41, v39 - v41, v38 - v41, v37 - v41, v36 - v41, v23 - v41, *&v42[8] - v41);
  v24 = *(&xmmword_2A1454168 + 1);
  v25 = *(&xmmword_2A1454168 + 1) + 1792;
  v26 = *v42;
  *(*(&xmmword_2A1454168 + 1) + 1792) = v41;
  *(v24 + 1808) = v26;
  *(v25 + 28) = *&v42[12];
  return GNSS_Event_Log_Ctl(qword_2A1454250);
}

void GNSS_Mark_Restart(int a1)
{
  v43 = *MEMORY[0x29EDCA608];
  GNSS_Write_NMEA(qword_2A1454240);
  GNSS_Write_GNB_Ctrl(qword_2A1454238);
  GNSS_GNB_Debug_Ctl(qword_2A1454258);
  GNSS_Event_Log_Ctl(qword_2A1454250);
  GNSS_Nav_Debug_Ctl(qword_2A1454248);
  API_Query_Config(v41);
  v2 = qword_2A1454238;
  v3 = *(qword_2A1454238 + 16);
  *qword_2A1454238 = v3;
  *(v2 + 8) = v3;
  if (a1 == 2)
  {
    GN_GPS_Get_LibVersion(&v39);
    v4 = 0;
    v5 = *v2;
    v6 = 10;
    do
    {
      *v2 = v5 + 1;
      *v5 = v6;
      v5 = *v2;
      if (*v2 >= *(v2 + 24))
      {
        v5 = *(v2 + 16);
        *v2 = v5;
      }

      v6 = aPeGnLibVer[++v4];
    }

    while (v4 != 16);
    v7 = v39;
    if (v39)
    {
      v8 = v40;
      do
      {
        *v2 = v5 + 1;
        *v5 = v7;
        v5 = *v2;
        if (*v2 >= *(v2 + 24))
        {
          v5 = *(v2 + 16);
          *v2 = v5;
        }

        v9 = *v8++;
        v7 = v9;
      }

      while (v9);
    }

    v10 = 32;
    v11 = 1u;
    do
    {
      *v2 = v5 + 1;
      *v5 = v10;
      v5 = *v2;
      if (*v2 >= *(v2 + 24))
      {
        v5 = *(v2 + 16);
        *v2 = v5;
      }

      v10 = aOsms[v11++];
    }

    while (v11 != 7);
    v12 = mach_continuous_time();
    sprintf_10u(v2, (*&g_MacClockTicksToMsRelation * v12));
    v13 = *v2;
    goto LABEL_47;
  }

  v14 = 10;
  v15 = 1u;
  do
  {
    *v2 = v3 + 1;
    *v3 = v14;
    v3 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v3 = *(v2 + 16);
      *v2 = v3;
    }

    v14 = asc_29905F65B[v15++];
  }

  while (v15 != 46);
  switch(a1)
  {
    case 0:
      v16 = &word_2A14544B2;
      v17 = "GN_GPS_Initialise ";
      goto LABEL_26;
    case 3:
      v16 = &word_2A14544B0;
      v17 = "WAKE ";
      goto LABEL_26;
    case 1:
      v16 = &word_2A14544AE;
      v17 = "RESTART ";
LABEL_26:
      v18 = *v17;
      if (*v17)
      {
        v19 = (v17 + 1);
        do
        {
          *v2 = v3 + 1;
          *v3 = v18;
          v3 = *v2;
          if (*v2 >= *(v2 + 24))
          {
            v3 = *(v2 + 16);
            *v2 = v3;
          }

          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }

      sprintf1da(v2, *v16, &v39, 0, 0);
      v3 = *v2;
      break;
  }

  v21 = 32;
  v22 = 1u;
  do
  {
    *v2 = v3 + 1;
    *v3 = v21;
    v3 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v3 = *(v2 + 16);
      *v2 = v3;
    }

    v21 = asc_29905F6AB[v22++];
  }

  while (v22 != 45);
  v23 = mach_continuous_time();
  sprintf_10u(v2, (*&g_MacClockTicksToMsRelation * v23));
  v24 = (*v2)++;
  *v24 = 10;
  if (*v2 >= *(v2 + 24))
  {
    *v2 = *(v2 + 16);
  }

  GN_GPS_Get_LibVersion(&v39);
  v25 = 0;
  v13 = *v2;
  v26 = 10;
  do
  {
    *v2 = v13 + 1;
    *v13 = v26;
    v13 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v13 = *(v2 + 16);
      *v2 = v13;
    }

    v26 = aPeGnLibVer[++v25];
  }

  while (v25 != 16);
  v27 = v39;
  if (v39)
  {
    v28 = v40;
    do
    {
      *v2 = v13 + 1;
      *v13 = v27;
      v13 = *v2;
      if (*v2 >= *(v2 + 24))
      {
        v13 = *(v2 + 16);
        *v2 = v13;
      }

      v29 = *v28++;
      v27 = v29;
    }

    while (v29);
  }

LABEL_47:
  if (*(qword_2A1454200 + 152))
  {
    v30 = 10;
    v31 = 1u;
    do
    {
      *v2 = v13 + 1;
      *v13 = v30;
      v13 = *v2;
      if (*v2 >= *(v2 + 24))
      {
        v13 = *(v2 + 16);
        *v2 = v13;
      }

      v30 = aHostversion[v31++];
    }

    while (v31 != 15);
    v32 = *(qword_2A1454200 + 152);
    if (v32)
    {
      v33 = (qword_2A1454200 + 153);
      do
      {
        *v2 = v13 + 1;
        *v13 = v32;
        v13 = *v2;
        if (*v2 >= *(v2 + 24))
        {
          v13 = *(v2 + 16);
          *v2 = v13;
        }

        v34 = *v33++;
        v32 = v34;
      }

      while (v34);
    }
  }

  v35 = 0;
  v36 = 10;
  do
  {
    *v2 = v13 + 1;
    *v13 = v36;
    v13 = *v2;
    if (*v2 >= *(v2 + 24))
    {
      v13 = *(v2 + 16);
      *v2 = v13;
    }

    v36 = asc_29905F6FF[++v35];
  }

  while (v35 != 2);
  v37 = *(v2 + 16);
  if (v42 >= 1)
  {
    v38 = v13 - *(v2 + 8);
    GN_GPS_Write_Event_Log(v38, v37);
    GNSS_Write_NMEA(v2);
    v37 = *(v2 + 16);
    if (v42 >= 4)
    {
      GN_GPS_Write_GNB_Debug(v38, v37);
      GN_GPS_Write_Nav_Debug(v38, *(v2 + 16));
      v37 = *(v2 + 16);
    }
  }

  *v2 = v37;
  *(v2 + 8) = v37;
  if (a1)
  {
    GNSS_Nav_Debug_InitWrite(&g_GN_GPS_Data_p_list);
  }
}

void GN_GPS_Update(void)
{
  v97 = *MEMORY[0x29EDCA608];
  v0 = *(&xmmword_2A1454168 + 1);
  v1 = mach_continuous_time();
  v2 = 0;
  v3 = (*&g_MacClockTicksToMsRelation * v1);
  v4 = v0 + 458;
  v5 = vdupq_n_s64(0xBuLL);
  do
  {
    v6 = vdupq_n_s64(v2);
    v7 = vorrq_s8(v6, xmmword_299050240);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v7)), 2).u8[0])
    {
      *v4 = v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v7)), 2).i8[2])
    {
      *(v4 - 1) = v3;
    }

    if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), vorrq_s8(v6, xmmword_299050360)))).i32[1])
    {
      *(v4 - 2) = v3;
      *(v4 - 3) = v3;
    }

    v2 += 4;
    v4 -= 4;
  }

  while (v2 != 12);
  if (g_GN_GPS_Data_p_list != 1)
  {
    if (*(*(&xmmword_2A1454168 + 1) + 46) == 1)
    {
      if (g_GN_GPS_Data_p_list)
      {
        if (g_GN_GPS_Data_p_list == 7 || g_GN_GPS_Data_p_list == 4)
        {
          v0[449] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          GNSS_Write_GNB_Ctrl(qword_2A1454238);
          GNSS_GNB_Debug_Ctl(qword_2A1454258);
          GNSS_Event_Log_Ctl(qword_2A1454250);
          v0[450] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          EvLog_v("Sensor in Sleep or Coma Mode: OS Time Waypoints, %u %d %d");
          return;
        }

        goto LABEL_25;
      }
    }

    else if (g_GN_GPS_Data_p_list)
    {
      if (g_GN_GPS_Data_p_list == 7 || g_GN_GPS_Data_p_list == 4)
      {
        v8 = "GN_GPS_Update:  ERROR:  Called while in Sleep/Coma !";
        goto LABEL_11;
      }

LABEL_25:
      G5K_Read_GNB_Meas(qword_2A1454230);
      v0[451] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      G5K_ME_Decode_Meas(qword_2A1454230, qword_2A14541A0);
      v9 = qword_2A14541A0;
      *(qword_2A14541A0 + 516) = 0;
      if (g_GN_GPS_Data_p_list == 5 || g_GN_GPS_Data_p_list == 8)
      {
        v10 = v9[128];
        v11 = *(&xmmword_2A1454168 + 1);
        if (v10)
        {
          v9[129] = *(*(&xmmword_2A1454168 + 1) + 1668) + v10;
        }

        v9[141] = 0;
        if (!*(v11 + 1868))
        {
          if (*(v11 + 1856) == 1)
          {
            *(v11 + 1856) = 0;
            *(v11 + 1868) = *(v11 + 1872);
          }

          else
          {
            v12 = mach_continuous_time();
            v11 = *(&xmmword_2A1454168 + 1);
            *(*(&xmmword_2A1454168 + 1) + 1868) = (*&g_MacClockTicksToMsRelation * v12);
            v9 = qword_2A14541A0;
          }
        }
      }

      else
      {
        v11 = *(&xmmword_2A1454168 + 1);
      }

      v96 = 0;
      if (G5K_ME_Poll_New_Meas(v9, v11, *(&g_GN_GPS_Data_p_list + 1), qword_2A1454138, qword_2A1454140, &v96))
      {
        v13 = qword_2A1454228;
        v14 = xmmword_2A1454168;
        *(xmmword_2A1454168 + 444) = 0;
        v14[28] = 0u;
        v14[29] = 0u;
        v14[30] = 0u;
        v14[31] = 0u;
        v14[32] = 0u;
        v14[33] = 0u;
        v14[34] = 0u;
        v14[35] = 0u;
        GNSS_GNB_Debug_Ctl(qword_2A1454258);
        if (g_GN_GPS_Data_p_list != 11)
        {
          EvCrt_d("GN_GPS_Update: GNSS_Exe_State = ", g_GN_GPS_Data_p_list);
        }

        v15 = v96;
        if (v96)
        {
          *(v13 + 2) = 0;
          *(v13 + 4) = 0;
          *(v13 + 6) = 0;
          *(v13 + 8) = 0;
          EvLog("GN_GPS_Update:  Cleared NA data because ME_Reset_Detected");
          v15 = v96;
        }

        else
        {
          v26 = *(qword_2A14541A0 + 520);
          v27 = *(qword_2A14541A0 + 564);
          if (v26 + 10 < v27 && v26 + 10000 < v27)
          {
            EvLog_v("GN_GPS_Update:  Warning - possible throughput problem  %u  %u  %u  %u");
            return;
          }
        }

        if (v15)
        {
          v16 = qword_2A14541A0;
        }

        else
        {
          v28 = g_GN_GPS_Data_p_list;
          v16 = qword_2A14541A0;
          if (g_GN_GPS_Data_p_list != 2)
          {
            v40 = *(qword_2A14541A0 + 452);
            if (g_GN_GPS_Data_p_list == 5 || v40)
            {
              if (g_GN_GPS_Data_p_list != 5)
              {
                EvLog_v("GN_GPS_Update:  Unexpected Coma_Ticks (%d) > 0 for GNSS_Exe_State (%d)", v40, g_GN_GPS_Data_p_list);
                DbgLog_v(1, "GN_GPS_Update:  Unexpected Coma_Ticks (%d) > 0 for GNSS_Exe_State (%d)", *(qword_2A14541A0 + 452), g_GN_GPS_Data_p_list);
                v40 = *(qword_2A14541A0 + 452);
              }

              if (!v40)
              {
                EvCrt_v("GN_GPS_Update: WARNING Coma Ticks = 0 even though Coma wakeup %d", g_GN_GPS_Data_p_list);
                DbgLog_v(1, "GN_GPS_Update: WARNING Coma Ticks = 0 even though Coma wakeup %d", g_GN_GPS_Data_p_list);
              }

              v28 = 6;
              LODWORD(g_GN_GPS_Data_p_list) = 6;
              v15 = v96;
            }

            else if (g_GN_GPS_Data_p_list == 8)
            {
              v28 = 9;
              LODWORD(g_GN_GPS_Data_p_list) = 9;
            }

LABEL_64:
            v29 = *(&xmmword_2A1454168 + 1);
            v93 = xmmword_2A1454168;
            *(*(&xmmword_2A1454168 + 1) + 2048) = v28;
            *(v29 + 2046) = v15;
            v30 = qword_2A1454158;
            v31 = qword_2A1454138;
            *(qword_2A1454158 + 104) = 0;
            v32 = *v30;
            if (*v30)
            {
              v33 = *(v30 + 40) * 1000.0;
              v34 = -0.5;
              if (v33 > 0.0)
              {
                v34 = 0.5;
              }

              v35 = v33 + v34;
              if (v35 <= 2147483650.0)
              {
                if (v35 >= -2147483650.0)
                {
                  v36 = v35;
                }

                else
                {
                  v36 = 0x80000000;
                }
              }

              else
              {
                v36 = 0x7FFFFFFF;
              }

              v41 = *(v30 + 24);
              v42 = *v31 + v36;
              v95 = v42 - 75 - v41;
              v89 = v0;
              if (v32 > 0xB)
              {
                v43 = 604800000;
              }

              else
              {
                v43 = dword_299050390[v32 - 1];
              }

              v94 = v43;
              v44 = 0;
              v45 = 0;
              v92 = v41 - v42 + 75;
              v46 = 10;
              v47 = 1803;
              v90 = v42 - 75 - v41;
              v91 = v41 + 86400000 - v42 + 74;
              do
              {
                v48 = &v31[v44];
                if (v31[v44 + 1802] && (~*(v48 + 3608) & 0x208) == 0)
                {
                  v49 = v31[v44 + 1802];
                  v50 = v49 == 4 || v49 == 2;
                  if (v50)
                  {
                    v51 = 1500 * v31[v46];
                    v52 = v31[v46 + 1] / 1023;
                    v53 = v52 + v51;
                    v54 = v52 + v51 - v95;
                    if (v49 == 2)
                    {
                      if (v54 >= 43199999)
                      {
                        v55 = 43199999;
                      }

                      else
                      {
                        v55 = v52 + v51 - v95;
                      }

                      v56 = 86400000 * ((v91 + v51 + v52 - v55) / 0x5265C00u);
                      v57 = v92 + v51 + v52 - v56;
                      if (v57 <= -43200000)
                      {
                        v58 = -43200000;
                      }

                      else
                      {
                        v58 = v92 + v51 + v52 - v56;
                      }

                      v59 = v90 - v52 + v56 + v58;
                      v50 = v59 == v51;
                      v60 = (v59 - v51 - (v59 != v51)) / 0x5265C00;
                      if (!v50)
                      {
                        ++v60;
                      }

                      v54 = v57 + 86400000 * v60;
                    }

                    if (v54 >= 0)
                    {
                      v61 = v54;
                    }

                    else
                    {
                      v61 = -v54;
                    }

                    if (v61 > v94)
                    {
                      *(v93 + v45 + 448) = 3;
                      *(v93 + 576 + 4 * v45) = *v31;
                      GNSS_SV_Str = Get_GNSS_SV_Str(v48[1802]);
                      EvCrt_v("ChanReset %d : SF_Sync_Spoofing  %s  %d  SNR %d  %x  d_Sig_ToT_ms  %d(%d - %d) > %d", v45, GNSS_SV_Str, SHIBYTE(v31[v47 - 1]), LOBYTE(v31[v47]), *(v48 + 3608), v54, v53, v95, v94);
                      *(v48 + 3608) &= 0xFDF7u;
                      *(v30 + 104) = 0;
                    }
                  }
                }

                ++v45;
                v46 += 14;
                v47 += 9;
                v44 += 9;
              }

              while (v45 != 128);
              v28 = g_GN_GPS_Data_p_list;
              v0 = v89;
            }

            if (v28 > 8)
            {
              if (v28 == 9)
              {
LABEL_117:
                API_Set_Config(qword_2A1454208);
                GNSS_HL_System_Re_Start(&g_GN_GPS_Data_p_list);
                g_GN_GNSS_Nav_Debug_Port = 1;
                ++word_2A14544B0;
                GNSS_Mark_Restart(3);
                *(*(&xmmword_2A1454168 + 1) + 1772) = **(&g_GN_GPS_Data_p_list + 1);
                v63 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v64 = *(&xmmword_2A1454168 + 1);
                *(*(&xmmword_2A1454168 + 1) + 1776) = v63;
                *(v64 + 1836) = v63;
                goto LABEL_122;
              }

              if (v28 != 11)
              {
LABEL_118:
                EvLog_d("GN_GPS_Update: Unexpected GNSS_Exe_State state - restarting ", v28);
LABEL_121:
                GNSS_Starting_NotInitialised();
                goto LABEL_122;
              }

              GNSS_Nav_Debug_InitWrite(&g_GN_GPS_Data_p_list);
              API_Set_Config(qword_2A1454208);
              GNSS_HL_System_Run_Update(&g_GN_GPS_Data_p_list);
            }

            else
            {
              if (v28 != 3)
              {
                if (v28 != 6)
                {
                  goto LABEL_118;
                }

                goto LABEL_117;
              }

              if (*(*(&xmmword_2A1454168 + 1) + 1664) != -1169279272)
              {
                goto LABEL_121;
              }

              GNSS_Starting_Initialised();
            }

LABEL_122:
            *(*(&xmmword_2A1454168 + 1) + 1664) = 0;
            v0[454] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_GN_GPS_Data_p_list != 11)
            {
              goto LABEL_154;
            }

            G5K_ME_Send_Ctrl(qword_2A1454238, qword_2A1454238, qword_2A14541A0, *(&xmmword_2A1454168 + 1), qword_2A1454150, xmmword_2A1454168);
            if (*(*(&xmmword_2A1454168 + 1) + 1836))
            {
              v65 = mach_continuous_time();
              v68 = *&g_MacClockTicksToMsRelation * v65;
              v69 = v68;
              v70 = *(*(&xmmword_2A1454168 + 1) + 1836);
              v71 = v68 - v70;
              if (v68 < v70)
              {
                EvCrt_nd("GN_GPS_Update: Detected OS ms Time has gone backwards", 2, v67, v68, v70);
                *(*(&xmmword_2A1454168 + 1) + 1836) = 0;
                goto LABEL_142;
              }

              v72 = v71 / 1000;
              if (v71 / 1000 >= *(*(&xmmword_2A1454168 + 1) + 1840))
              {
                v73 = *(*(&xmmword_2A1454168 + 1) + 1848);
                if (v73)
                {
                  v74 = (v69 - v73) / 1000;
                  if (v74 >= v72 && v74 < *(*(&xmmword_2A1454168 + 1) + 1844))
                  {
                    goto LABEL_142;
                  }
                }

                else
                {
                  v74 = 0;
                }

                GncP16_34HandleRestartAcq(v65, v66, v67);
                v75 = *(&xmmword_2A1454168 + 1);
                *(*(&xmmword_2A1454168 + 1) + 1848) = v69;
                *(v75 + 1836) = 0;
                EvCrt_v("GN_GPS_Restart_Acquisition(): API call due to No Fix within %d s; Time since last call %d s", v72, v74);
              }
            }

LABEL_142:
            v0[455] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (*(*(p_api + 80) + 360) > 600.0)
            {
              v78 = qword_2A1454178;
              EvCrt_v("WARNING:  Nav Output Inhibited:  Wassenaar / ITAR Export License speed exceeded:  %f > %f m/s", *(qword_2A1454178 + 360), 600.0);
              GNSS_Event_Log_Ctl(qword_2A1454250);
              GN_GPS_Wassenaar_ITAR_Speed_Exceeded(*(v78 + 360), 600.0);
            }

            else
            {
              if (API_Get_Nav_Data(qword_2A1454210))
              {
                if (g_Logging_Cfg >= 1)
                {
                  NMEA_Encode(qword_2A1454240, qword_2A1454210, qword_2A1454218);
                  GNSS_Write_NMEA(qword_2A1454240);
                }

                v0[456] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v76 = v0[440];
                if (v76)
                {
                  v77 = v0[417] + v0[441];
                  v0[441] = v77;
                  if (v77 >= v76)
                  {
                    if (g_GncPStateInfo != 8)
                    {
                      GncP07_08WriteNVStore(0x8290uLL, qword_2A1454220);
                    }

                    EvLog("GN_GPS_Write_NV_Store:  1");
                    v0[441] = 0;
                  }
                }

                v0[457] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              }

              GNSS_Nav_Debug_Screens(&g_GN_GPS_Data_p_list);
              GNSS_Event_Log_Ctl(qword_2A1454250);
              GNSS_GNB_Debug_Ctl(qword_2A1454258);
              v0[458] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            }

LABEL_154:
            if (*qword_2A1454158 == 11)
            {
              v79 = *(xmmword_2A1454188 + 88);
              if (v79 >= 3 && (v80 = *(xmmword_2A1454188 + 87), v79 >= 2 * v80))
              {
                v82 = *(xmmword_2A1454188 + 89);
                v81 = *(xmmword_2A1454188 + 90);
              }

              else
              {
                v81 = *(xmmword_2A1454188 + 90);
                if (v81 < 3)
                {
                  goto LABEL_162;
                }

                v82 = *(xmmword_2A1454188 + 89);
                if (v81 < 2 * v82)
                {
                  goto LABEL_162;
                }

                v80 = *(xmmword_2A1454188 + 87);
              }

              EvCrt_v("GN_GPS_Update:  WARNING:  Sub-ms Time Verification failed !  Exact_Bit_Sync %d pass vs %d fail , SF_Sync %d pass vs %d fail , Bit_ms_offset %d", v80, v79, v82, v81, *(xmmword_2A1454188 + 91));
              EvCrt_v("GN_GPS_Update:  WARNING:  Deprecating Time status to +/- 100ms and calling GN_GPS_Restart_Acquisition()");
              v83 = qword_2A1454158;
              *qword_2A1454158 = 7;
              *(v83 + 76) = 7;
              v84 = qword_2A1454178;
              *(qword_2A1454178 + 56) = 7;
              *(v84 + 204) = 7;
              *(v84 + 872) = 0x4163125300000000;
              v85 = p_NV + 0x8000;
              *(p_NV + 33192) = 0xFFFFFFFFLL;
              *(v85 + 432) = 0;
              *(v85 + 440) = 0;
              GncP16_34HandleRestartAcq(v86, v87, v88);
            }

LABEL_162:
            EvLog_v("OS Time Waypoints: %u %u %d %d %d %d %d %d %d %d %d %d %d", *qword_2A1454210, *(qword_2A14541A0 + 460), (v0[448] - *(qword_2A14541A0 + 460)));
            return;
          }
        }

        v28 = 3;
        LODWORD(g_GN_GPS_Data_p_list) = 3;
        *(v16 + 394) = 0;
        *(v16 + 564) = 0;
        goto LABEL_64;
      }

      if (*(qword_2A1454238 + 8) != *qword_2A1454238)
      {
        GNSS_Write_GNB_Ctrl(qword_2A1454238);
      }

      if (*(qword_2A1454240 + 8) != *qword_2A1454240)
      {
        GNSS_Write_NMEA(qword_2A1454240);
      }

      if (*(qword_2A1454248 + 8) != *qword_2A1454248)
      {
        GNSS_Nav_Debug_Ctl(qword_2A1454248);
      }

      if (*(qword_2A1454250 + 8) != *qword_2A1454250)
      {
        GNSS_Event_Log_Ctl(qword_2A1454250);
      }

      if (*(qword_2A1454258 + 8) != *qword_2A1454258)
      {
        GNSS_GNB_Debug_Ctl(qword_2A1454258);
      }

      ++_MergedGlobals_1;
      v17 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v18 = v17;
      v19 = *(qword_2A1454138 + 4);
      v20 = v17 - v19;
      _MergedGlobals_1 = 0;
      v21 = *(*(&xmmword_2A1454168 + 1) + 1668);
      if (g_GN_GPS_Data_p_list <= 8 && ((1 << g_GN_GPS_Data_p_list) & 0x124) != 0)
      {
        v22 = *(qword_2A14541A0 + 504);
        if (v22 && v18 - v22 < 501)
        {
          goto LABEL_139;
        }

        v23 = 10 * v21;
        if (v23 <= 10000)
        {
          v23 = 10000;
        }

        if (v20 >= v23)
        {
          EvLog_v("GN_GPS_Hard_Reset_GNB:  %d > %d ms gap!, >>>POWEROFF_WAKE_UP  (%u)", v17 - v19, v23, v19);
          LODWORD(g_GN_GPS_Data_p_list) = 2;
          GN_GPS_Hard_Reset_GNB();
          *(qword_2A1454138 + 4) = v18;
          v39 = qword_2A14541A0;
          *(qword_2A14541A0 + 480) = 0;
          *(v39 + 488) = 0;
LABEL_139:
          GNSS_Event_Log_Ctl(qword_2A1454250);
          GNSS_GNB_Debug_Ctl(qword_2A1454258);
          return;
        }

        EvLog_v("No valid comms :  %u  %d", v19, v17 - v19);
        v24 = qword_2A1454238;
        v25 = qword_2A1454258;
      }

      else
      {
        v37 = 5 * v21;
        if (v37 <= 3000)
        {
          v37 = 3000;
        }

        if (v20 < v37)
        {
          goto LABEL_139;
        }

        if (v20 <= 0x3E418)
        {
          EvLog_v("GN_GPS_Update:  Lost BB Coms for %d > %d ms, >>>SLEEP_WAKE_UP  (%u)", v17 - v19, v37, v19);
          v38 = 8;
        }

        else
        {
          EvLog_v("GN_GPS_Update:  Lost BB Coms for %d > %d ms, >>>COMA_WAKE_UP  (%u)", v17 - v19, 255000, v19);
          v38 = 5;
        }

        LODWORD(g_GN_GPS_Data_p_list) = v38;
        v24 = qword_2A1454238;
        v25 = qword_2A1454258;
      }

      G5K_ME_Send_WakeUp(v24, v25);
      goto LABEL_139;
    }

    if (*(*(&xmmword_2A1454168 + 1) + 1664) != -1169279272)
    {
      EvCrt_v("GN_GPS_Update:  WARNING:  Called with unexpected GNSS_INVALID_EXE_STATE", COERCE_DOUBLE(2), 0.0);
    }

    goto LABEL_25;
  }

  v8 = "GN_GPS_Update:  ERROR:  Called while in PowerOff !";
LABEL_11:

  EvCrt_v(v8, COERCE_DOUBLE(2), 0.0);
}

BOOL GNSS_Starting_Initialised(void)
{
  EvLog("GN_GPS_Update: Starting after initialisation");
  GNSS_Mark_Restart(2);
  v0 = qword_2A14541A0;
  v1 = *(qword_2A14541A0 + 476);
  v2 = *(qword_2A14541A0 + 440);
  *(*(&xmmword_2A1454168 + 1) + 1772) = v2;
  v3 = *(v0 + 484);
  v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v5 = *(&xmmword_2A1454168 + 1);
  *(*(&xmmword_2A1454168 + 1) + 1776) = v4;
  *(v5 + 1836) = v4;
  *(qword_2A1454158 + 128) = v2;
  GNSS_HL_System_Start_Up(&g_GN_GPS_Data_p_list);
  v6 = qword_2A14541A0;
  *(qword_2A14541A0 + 476) = v1;
  *(v6 + 484) = v3;
  result = API_Set_Config(qword_2A1454208);
  LODWORD(g_GN_GPS_Data_p_list) = 11;
  return result;
}

BOOL GNSS_Starting_NotInitialised(void)
{
  EvLog("GN_GPS_Update: Starting from Power Off but without having been initialised");
  g_GN_GNSS_Nav_Debug_Port = 1;
  ++word_2A14544AE;
  word_2A14544B0 = 0;
  GNSS_Mark_Restart(1);
  v0 = *(qword_2A14541A0 + 476);
  v1 = *(qword_2A14541A0 + 480);
  v2 = *(qword_2A14541A0 + 440);
  v3 = *(*(&xmmword_2A1454168 + 1) + 1868);
  v4 = *(*(&xmmword_2A1454168 + 1) + 1872);
  v5 = *(*(&xmmword_2A1454168 + 1) + 2046);
  v6 = *(*(&xmmword_2A1454168 + 1) + 2048);
  v7 = *(qword_2A1454160 + 62170);
  GNSS_HL_System_Start_Up(&g_GN_GPS_Data_p_list);
  v8 = qword_2A14541A0;
  *(qword_2A14541A0 + 476) = v0;
  *(v8 + 480) = v1;
  v9 = *(&xmmword_2A1454168 + 1);
  *(*(&xmmword_2A1454168 + 1) + 1868) = v3;
  *(v9 + 1872) = v4;
  *(v9 + 2046) = v5;
  *(v9 + 2048) = v6;
  *(qword_2A1454160 + 62170) = v7;
  *(v9 + 1772) = v2;
  v10 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v11 = *(&xmmword_2A1454168 + 1);
  *(*(&xmmword_2A1454168 + 1) + 1776) = v10;
  *(v11 + 1836) = v10;
  v12 = qword_2A1454208;
  if (*(qword_2A1454208 + 28) == 1)
  {
    EvLog_v("GNSS_Starting_NotInitialised:  Cleared Disabling L1 Band Family signals");
    v12 = qword_2A1454208;
  }

  *(v12 + 28) = 0;

  return API_Set_Config(v12);
}

double GN_GPS_Shutdown(void)
{
  EvLog("GN_GPS_Shutdown: ");
  if (g_GN_GPS_Data_p_list > 7 || ((1 << g_GN_GPS_Data_p_list) & 0x92) == 0)
  {
    G5K_ME_Send_Sleep(qword_2A1454238, qword_2A1454258, 0, 0xFFFFLL, *(*(&xmmword_2A1454168 + 1) + 1855));
    EvLog("GN_GPS_Shutdown: Send ME to Coma ");
    *(*(&xmmword_2A1454168 + 1) + 1764) = 0;
    *(qword_2A14541A0 + 504) = 0;
    LODWORD(g_GN_GPS_Data_p_list) = 4;
    if (g_GncPStateInfo != 8)
    {
      GncP07_08WriteNVStore(0x8290uLL, qword_2A1454220);
    }

    Debug_Log_NonVol(1, qword_2A1454220);
    EvLog_nd("GN_GPS_Shutdown: GN_GPS_Write_NV_Store ", 4, v1, *(qword_2A1454220 + 4), *(qword_2A1454220 + 33416), 33424, 22);
  }

  else
  {
    EvLog_d("GN_GPS_Shutdown: GNSS already Idle or Off ", g_GN_GPS_Data_p_list);
  }

  v2 = qword_2A1454250;

  GNSS_Event_Log_Ctl(v2);
  return result;
}

double GN_GPS_WakeUp(void)
{
  v14[3] = *MEMORY[0x29EDCA608];
  EvCrt_v("GN_GPS_WakeUp: ");
  v0 = qword_2A14541A0;
  *(qword_2A14541A0 + 512) = *(qword_2A14541A0 + 440);
  G5K_ME_Flush_Data(v0);
  if (g_GN_GPS_Data_p_list != 11)
  {
    *qword_2A1454138 = 0;
    v1 = mach_continuous_time();
    v2 = qword_2A1454138;
    *(qword_2A1454138 + 4) = (*&g_MacClockTicksToMsRelation * v1);
    *(v2 + 8) = 0;
    v3 = -4608;
    do
    {
      v4 = qword_2A1454138 + v3 + 11816;
      *(v4 + 32) = 0;
      *v4 = 0uLL;
      *(v4 + 16) = 0uLL;
      v3 += 36;
    }

    while (v3);
    v5 = qword_2A1454230;
    v6 = *(qword_2A1454230 + 16);
    *qword_2A1454230 = v6;
    *(v5 + 8) = v6;
    G5K_Read_GNB_Meas(v5);
    v7 = *qword_2A1454230 - *(qword_2A1454230 + 8);
    if (v7)
    {
      EvLog_v("%s: Flushed bytes  %d", "GN_GPS_WakeUp", v7);
      v8 = qword_2A1454230;
      v9 = *(qword_2A1454230 + 16);
      *qword_2A1454230 = v9;
      *(v8 + 8) = v9;
    }
  }

  G5K_ME_Send_WakeUp(qword_2A1454238, qword_2A1454258);
  EvLog_v("%s:  Read NV_Store NO Data", "GN_GPS_WakeUp");
  Debug_Log_NonVol(1, qword_2A1454220);
  memset(v14, 0, 24);
  Debug_Log_ApxTime(v14);
  _MergedGlobals_1 = 0;
  if ((g_GN_GPS_Data_p_list - 4) < 3)
  {
    LODWORD(g_GN_GPS_Data_p_list) = 5;
    if (*qword_2A1454158 >= 11)
    {
      *qword_2A1454158 = 10;
    }
  }

  else if ((g_GN_GPS_Data_p_list - 7) > 2)
  {
    LODWORD(g_GN_GPS_Data_p_list) = 2;
    v10 = qword_2A1454158;
    *qword_2A1454158 = 0;
    *(v10 + 16) = 0;
  }

  else
  {
    LODWORD(g_GN_GPS_Data_p_list) = 8;
  }

  *(qword_2A1454228 + 3) = 0;
  v11 = *(&xmmword_2A1454168 + 1);
  if (*(*(&xmmword_2A1454168 + 1) + 42) == 1)
  {
    EvLog_v("%s:  Cleared Disabling L1 Band Family signals", "GN_GPS_WakeUp");
    v11 = *(&xmmword_2A1454168 + 1);
  }

  *(v11 + 42) = 0;
  v12 = qword_2A1454250;

  GNSS_Event_Log_Ctl(v12);
  return result;
}

char **GN_GPS_Sleep(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  EvCrt_nd("GN_GPS_Sleep: ", 2, a3, a1, a2);
  if (v4 >= 0x100)
  {
    v4 = 255;
    EvLog_v("GN_GPS_Sleep:  SleepModeTimeOut limited to %d s", 255);
  }

  if (g_GN_GPS_Data_p_list > 0xB)
  {
    goto LABEL_7;
  }

  if (((1 << g_GN_GPS_Data_p_list) & 0xF80) != 0)
  {
    if (v4)
    {
      v5 = 7;
LABEL_13:
      LODWORD(g_GN_GPS_Data_p_list) = v5;
      goto LABEL_14;
    }

LABEL_11:
    v5 = 4;
    goto LABEL_13;
  }

  if (((1 << g_GN_GPS_Data_p_list) & 0xE) != 0)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if (((1 << g_GN_GPS_Data_p_list) & 0x70) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!g_GN_GPS_Data_p_list)
  {
    LODWORD(g_GN_GPS_Data_p_list) = 1;
    EvCrt_Illegal_switch_case("GN_GPS_Sleep", 1540);
  }

LABEL_14:
  G5K_ME_Send_Sleep(qword_2A1454238, qword_2A1454258, v4, a2, *(*(&xmmword_2A1454168 + 1) + 1855));
  if (g_GncPStateInfo != 8)
  {
    GncP07_08WriteNVStore(0x8290uLL, qword_2A1454220);
  }

  v7 = *(&xmmword_2A1454168 + 1);
  *(*(&xmmword_2A1454168 + 1) + 1764) = 0;
  *(qword_2A14541A0 + 504) = 0;
  EvLog_nd("GN_GPS_Sleep:  GN_GPS_Write_NV_Store ", 4, v6, *(qword_2A1454220 + 4), *(qword_2A1454220 + 33416), 33424, 22);
  v8 = qword_2A1454178;
  if (*(qword_2A1454178 + 1) == 1 && *(qword_2A1454178 + 56) == 11 && *(qword_2A1454178 + 872) <= 300.0)
  {
    *(v7 + 248) = *(qword_2A1454178 + 32);
    *(v7 + 256) = *(v8 + 48) - *(v8 + 152);
  }

  *(*(&xmmword_2A1454168 + 1) + 12) = 0;
  if (*(qword_2A1454240 + 8) != *qword_2A1454240)
  {
    GNSS_Write_NMEA(qword_2A1454240);
  }

  if (*(qword_2A1454250 + 8) != *qword_2A1454250)
  {
    GNSS_Event_Log_Ctl(qword_2A1454250);
  }

  if (*(qword_2A1454248 + 8) != *qword_2A1454248)
  {
    GNSS_Nav_Debug_Ctl(qword_2A1454248);
  }

  if (*(qword_2A1454238 + 8) != *qword_2A1454238)
  {
    GNSS_Write_GNB_Ctrl(qword_2A1454238);
  }

  result = qword_2A1454258;
  if (*(qword_2A1454258 + 8) != *qword_2A1454258)
  {

    return GNSS_GNB_Debug_Ctl(result);
  }

  return result;
}

void EvLog_GN_GNSS_Config(const char *a1, double *a2)
{
  v2 = a2[7] * 1000000.0;
  v3 = -0.5;
  if (v2 <= 0.0)
  {
    v4 = -0.5;
  }

  else
  {
    v4 = 0.5;
  }

  v5 = v2 + v4;
  if (v5 <= 2147483650.0)
  {
    if (v5 >= -2147483650.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x80000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  v7 = a2[8] * 1000000.0;
  if (v7 > 0.0)
  {
    v3 = 0.5;
  }

  v8 = v7 + v3;
  if (v8 <= 2147483650.0)
  {
    if (v8 >= -2147483650.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x80000000;
    }
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  v11 = a2[9];
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

  v10 = *(a2 + 26);
  EvLog_v("%s  %d %d %d %d %d %d %d  %d %d %d %d %d %d %d  %d %d %d %d %d %d %d  %d %d %d %d %d %d %d  %d %d %d  %d %d %d  %d  %d  %d  %d %d  %d %d %d  %d %d  %d %d  %d", a1, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7), *(a2 + 8), *(a2 + 9), *(a2 + 10), *(a2 + 11), *(a2 + 12), *(a2 + 13), *(a2 + 14), *(a2 + 15), *(a2 + 16), *(a2 + 17), *(a2 + 18), *(a2 + 19), *(a2 + 20), *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), v10, *(a2 + 27), *(a2 + 28), *(a2 + 29), *(a2 + 30), *(a2 + 31), *(a2 + 32), *(a2 + 17), *(a2 + 36), *(a2 + 10), *(a2 + 22), *(a2 + 23), *(a2 + 24), v6, v9, v14, *(a2 + 20), *(a2 + 21), *(a2 + 88), *(a2 + 89), *(a2 + 90));
}

uint64_t GN_GPS_Set_Config(uint64_t a1)
{
  if (!a1)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: No changes applied");
    return 0;
  }

  v2 = g_Logging_Cfg;
  g_Logging_Cfg = 5;
  EvLog_GN_GNSS_Config("GN_GPS_Set_Config: ", a1);
  if (*(a1 + 48) > 0x2000u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Birth_GPS_WeekNo = %d > %d, Out of range!");
    return 0;
  }

  if (*(a1 + 34) <= 0x63u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: FixInterval = %d <100, Out of range!");
    return 0;
  }

  if (*(a1 + 36) == 255)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: ForceCold_Timeout = %d ==255, Out of range!");
    return 0;
  }

  if (*(a1 + 46) >= 0x2000u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Earliest_GPS_WeekNo = %d > 8191, Out of range!");
    return 0;
  }

  if (fabs(*(a1 + 56)) > 90.0)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Reference_LLH[0] = %g <-90.0 or >90.0, Out of range!");
    return 0;
  }

  v3 = *(a1 + 64);
  if (v3 < -180.0 || v3 > 360.0)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Reference_LLH[1] = %g <-180.0 or >360.0, Out of range!");
    return 0;
  }

  v4 = *(a1 + 72);
  if (v4 < -1000.0 || v4 > 20000.0)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: Reference_LLH[2] = %g <-1000.0 or >20000.0, Out of range!");
    return 0;
  }

  if (*(a1 + 80) >= 0xE11u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: NoFixTime_to_RestartAcq_s = %d >SECS_IN_HOUR, Out of range!");
    return 0;
  }

  if (*(a1 + 84) >= 0xE11u)
  {
    EvCrt_v("GN_GPS_Set_Config: FAILED: ReAcq_Call_Interval_s = %d >SECS_IN_HOUR, Out of range!");
    return 0;
  }

  if ((*a1 & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: GPS has been disabled");
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: GLONASS has been disabled");
  }

  if ((*(a1 + 4) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: BeiDou has been disabled");
  }

  if ((*(a1 + 5) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Galileo has been disabled");
  }

  if ((*(a1 + 2) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: QZSS has been disabled");
  }

  if ((*(a1 + 6) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: NavIC has been disabled");
  }

  if ((*(a1 + 3) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: SBAS has been disabled");
  }

  if (*(a1 + 21) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of GPS Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 22) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of GLONASS Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 25) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of BeiDou Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 26) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of Galileo Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 23) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of QZSS Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 27) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of NavIC Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 24) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Use of SBAS Over the Air decoded SV Nav Message data has been disabled");
  }

  if (*(a1 + 28) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: L1 Band Family signals have been disabled");
  }

  if ((*(a1 + 29) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: L5 Band Family signals have been disabled");
  }

  if (*(a1 + 30) & 1) != 0 || (EvCrt_v("GN_GPS_Set_Config: WARNING: Galileo E5b tracking jointly with E5a has been disabled"), (*(a1 + 30)))
  {
    if (*(a1 + 29) & 1) != 0 || (EvCrt_v("GN_GPS_Set_Config: WARNING: Galileo E5b tracking jointly with E5a has been enabled when L5 band tracking is disabled!"), (*(a1 + 30)))
    {
      if ((*(a1 + 5) & 1) == 0)
      {
        EvCrt_v("GN_GPS_Set_Config: WARNING: Galileo E5b tracking jointly with E5a has been enabled when Galileo is disabled!");
      }
    }
  }

  if (*(a1 + 40) <= 3)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Logging Level < 'Info' disables GNB and Nav Debug");
    if (!*(a1 + 40))
    {
      EvCrt_v("GN_GPS_Set_Config: WARNING: Diagnostic Logging has been disabled");
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Avg Doppler Usage has been disabled");
  }

  if (*(a1 + 89) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: WARNING: Broadcast Navigation Message Data Use disabled to test XOF Data");
  }

  if (*(a1 + 90) == 1)
  {
    EvCrt_v("GN_GPS_Set_Config: Beidou Consistency behaviours required");
  }

  g_Logging_Cfg = v2;
  if (API_Set_Config(a1))
  {
    API_Query_Config(qword_2A1454208);
  }

  else
  {
    EvCrt_v("GN_GPS_Set_Config: API_Set_Config() FAILED");
  }

  GNSS_Event_Log_Ctl(qword_2A1454250);
  return 1;
}

uint64_t GN_GPS_Set_FixInterval(unsigned int a1)
{
  if (a1 > 0x63)
  {
    result = API_Set_FixInterval(a1);
    if (result)
    {
      v2 = *(p_api + 72);
      v3 = *(v2 + 1672);
      if (!v3)
      {
        v3 = *(v2 + 1668);
      }

      *(qword_2A1454208 + 34) = v3;
      return 1;
    }
  }

  else
  {
    EvCrt_v("GN_GPS_Set_FixInterval:  FAILED:  FixInterval = %d  < 100, Out of range !", a1);
    return 0;
  }

  return result;
}

uint64_t GN_GPS_Set_CrossCorr_Params(double *a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v2 = *a1 >= 6.0 && *a1 <= 60.0;
  if (v2 || (v12[0] = 0.0, R8_EQ(a1, v12)))
  {
    v3 = a1[1];
    v4 = v3 >= 6.0 && v3 <= 60.0;
    if (v4 || (v12[0] = 0.0, R8_EQ(a1 + 1, v12)))
    {
      v5 = a1[2];
      v6 = v5 >= 6.0 && v5 <= 60.0;
      if (v6 || (v12[0] = 0.0, R8_EQ(a1 + 2, v12)))
      {
        v7 = a1[3];
        v8 = v7 >= 6.0 && v7 <= 60.0;
        if (v8 || (v12[0] = 0.0, R8_EQ(a1 + 3, v12)))
        {
          v9 = *(&xmmword_2A1454168 + 1);
          v10 = *(a1 + 1);
          *(*(&xmmword_2A1454168 + 1) + 2112) = *a1;
          *(v9 + 2128) = v10;
          result = 1;
          *(v9 + 2144) = 1;
          return result;
        }

        EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: XCorr_Margin_BDS_B1 = %f [0, 6..60 dB], Out of range!");
      }

      else
      {
        EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: XCorr_Margin_GAL_E1 = %f [0, 6..60 dB], Out of range!");
      }
    }

    else
    {
      EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: XCorr_Margin_GPS_L1 = %f [0, 6..60 dB], Out of range!");
    }
  }

  else
  {
    EvCrt_v("GN_GPS_Set_CrossCorr_Params: FAILED: Strong_Signal_Threshold = %f [0, 6..60 dBHz], Out of range!");
  }

  return 0;
}

uint64_t GN_GPS_Set_XOF_Time(unsigned int a1, unsigned int a2)
{
  EvLog_v("GN_GPS_Set_XOF_Time: %u %u", a1, a2);
  if (a1 >= 0x2000)
  {
    EvCrt_v("GN_GPS_Set_XOF_Time: FAILED: XOF_GPS_WeekNo = %d >8191, Out of range!");
    return 0;
  }

  if (a2 > 0x93A7F)
  {
    EvCrt_v("GN_GPS_Set_XOF_Time: FAILED: XOF_GPS_TOW = %d >604799, Out of range!");
    return 0;
  }

  *(*(&xmmword_2A1454168 + 1) + 1740) = 604800 * a1 + a2;
  return 1;
}

uint64_t GN_GPS_Set_RTI_Time(unsigned int a1, unsigned int a2)
{
  EvLog_v("GN_GPS_Set_RTI_Time: %u %u", a1, a2);
  if (a1 >= 0x2000)
  {
    EvCrt_v("GN_GPS_Set_RTI_Time: FAILED: RTI_GPS_WeekNo = %d >8191, Out of range!");
    return 0;
  }

  if (a2 > 0x93A7F)
  {
    EvCrt_v("GN_GPS_Set_RTI_Time: FAILED: RTI_GPS_TOW = %d >604799, Out of range!");
    return 0;
  }

  *(*(&xmmword_2A1454168 + 1) + 1744) = 604800 * a1 + a2;
  return 1;
}

uint64_t GN_GPS_Set_EE_Start_Time(uint64_t a1, uint64_t a2)
{
  EvLog_v("GN_GPS_Set_EE_Start_Time: %u %u", a1, a2);
  if (a1 < 0x2000)
  {
    if (a2 >= 0x93A80)
    {
      EvCrt_v("GN_GPS_Set_EE_Start_Time: FAILED: EE_Start_GPS_TOW = %d >604799, Out of range!");
      return 0;
    }

    v6 = *(&xmmword_2A1454168 + 1);
    v7 = a2 + 604800 * a1;
    Debug_Log_GPS_EE_Start_Time(a1, a2);
    v4 = 1;
    if (v7 == *(v6 + 1752))
    {
      return v4;
    }

    v8 = 0;
    *(v6 + 1752) = v7;
    while (1)
    {
      Constell_Prn = Get_Constell_Prn(v8);
      if (Constell_Prn <= 7)
      {
        if (((1 << Constell_Prn) & 0x38) != 0)
        {
          v10 = v6 + v8;
          if (*(v6 + v8 + 265))
          {
            v12 = 1;
          }

          else
          {
            v12 = *(v10 + 544);
          }

          v11 = v12 & 1;
          goto LABEL_19;
        }

        if (((1 << Constell_Prn) & 0x86) != 0)
        {
          v10 = v6 + v8;
          v11 = *(v6 + v8 + 265);
LABEL_19:
          *(v10 + 1384) = v11;
          goto LABEL_20;
        }

        if (Constell_Prn == 6)
        {
          v10 = v6 + v8;
          v11 = *(v6 + v8 + 544);
          goto LABEL_19;
        }
      }

LABEL_20:
      if (++v8 == 218)
      {
        Core_Save_Inhib_EE((v6 + 1384), *(v6 + 1752));
        return 1;
      }
    }
  }

  EvCrt_v("GN_GPS_Set_EE_Start_Time: FAILED: EE_Start_GPS_WeekNo = %d >8191, Out of range!");
  return 0;
}

uint64_t GN_GPS_Encode_NMEA(unsigned int a1, char *a2, int a3, _DWORD *a4, _DWORD *a5)
{
  v5 = 0;
  v12 = *MEMORY[0x29EDCA608];
  if (a1 >= 4 && a2)
  {
    if (!a5 || *a5 == *a4 && a5[1] == a4[1])
    {
      if (a3)
      {
        v10 = a2;
        v11 = &a2[a1];
        v8 = a2;
        v9 = a2;
        NMEA_Encode(&v8, a4, a5);
        v6 = v8;
        v5 = v8++ - v9;
        *v6 = 0;
      }

      else
      {
        v5 = 0;
        *a2 = 0;
      }
    }

    else
    {
      EvCrt_v("GN_GPS_Encode_NMEA:  FAILED:  Incompatible Nav & Debug Data Local_TTag or OS_Time_ms");
      return 0;
    }
  }

  return v5;
}

void *GN_GPS_Mark_Single_Pos_Used(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(qword_2A1454238);
  GNSS_GNB_Debug_Ctl(qword_2A1454258);
  GNSS_Event_Log_Ctl(qword_2A1454250);
  GNSS_Nav_Debug_Ctl(qword_2A1454248);
  v8 = __src;
  v43 = __src;
  v44 = v46;
  v42 = __src;
  v9 = 10;
  v10 = 1u;
  do
  {
    v41 = v8 + 1;
    *v8 = v9;
    v8 = v41;
    v11 = v44;
    if (v41 >= v44)
    {
      v8 = v43;
      v41 = v43;
    }

    v9 = str_96[v10++];
  }

  while (v10 != 36);
  if (a1)
  {
    v12 = 70;
  }

  else
  {
    v12 = 66;
  }

  *v8 = v12;
  v13 = v8 + 1;
  if (v13 >= v11)
  {
    v13 = v43;
  }

  v41 = v13 + 1;
  *v13 = 32;
  if ((v13 + 1) >= v11)
  {
    v41 = v43;
  }

  sprintf_2d(&v41, a2);
  v14 = v41++;
  *v14 = 32;
  if (v41 >= v44)
  {
    v41 = v43;
  }

  sprintf_10u(&v41, a3);
  v15 = v41++;
  *v15 = 32;
  if (v41 >= v44)
  {
    v41 = v43;
  }

  sprintf_10u(&v41, a4);
  v16 = 0;
  v17 = 32;
  v18 = v41;
  do
  {
    v41 = v18 + 1;
    *v18 = v17;
    v18 = v41;
    if (v41 >= v44)
    {
      v18 = v43;
      v41 = v43;
    }

    v17 = str_97[++v16];
  }

  while (v16 != 8);
  API_Query_Config(v46);
  v19 = qword_2A1454258;
  v20 = (v41 - v42);
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
    v26 = __OFSUB__(v20, v25);
    v20 -= v25;
  }

  while (!((v20 < 0) ^ v26 | (v20 == 0)));
  v27 = qword_2A1454250;
  v28 = (v41 - v42);
  v29 = *(qword_2A1454250 + 24);
  v30 = *qword_2A1454250;
  v31 = __src;
  do
  {
    v32 = v29 - v30;
    if (v28 >= v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = v28;
    }

    memcpy(v30, v31, v33);
    v30 = (*v27 + v33);
    *v27 = v30;
    v29 = v27[3];
    if (v30 >= v29)
    {
      v30 = v27[2];
      *v27 = v30;
    }

    v31 += v33;
    v26 = __OFSUB__(v28, v33);
    v28 -= v33;
  }

  while (!((v28 < 0) ^ v26 | (v28 == 0)));
  v34 = qword_2A1454248;
  v35 = (v41 - v42);
  v36 = *(qword_2A1454248 + 24);
  result = *qword_2A1454248;
  v38 = __src;
  do
  {
    v39 = v36 - result;
    if (v35 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v35;
    }

    memcpy(result, v38, v40);
    result = (*v34 + v40);
    *v34 = result;
    v36 = v34[3];
    if (result >= v36)
    {
      result = v34[2];
      *v34 = result;
    }

    v38 += v40;
    v26 = __OFSUB__(v35, v40);
    v35 -= v40;
  }

  while (!((v35 < 0) ^ v26 | (v35 == 0)));
  return result;
}

uint64_t GN_GPS_Set_TM_FSP_OS_Time_ms(uint64_t a1, uint64_t a2)
{
  EvLog_v("GN_GPS_Set_TM_FSP_OS_Time_ms: %u %u %d", a1, a2, a1 - a2);
  Debug_Log_TM_FCP_OS_Time_ms(a1, a2);
  v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  if ((v4 - a1) >= 0)
  {
    v5 = v4 - a1;
  }

  else
  {
    v5 = a1 - v4;
  }

  if (v5 < 0x1389)
  {
    result = Is_GN_API_Set_Allowed("API_Set_TM_FSP_OS_Time_ms");
    if (result)
    {
      v7 = *(p_api + 256);
      result = 1;
      *v7 = 1;
      *(v7 + 392) = a1;
      *(v7 + 396) = a2;
    }
  }

  else
  {
    EvLog_v("GN_GPS_Set_TM_FSP_OS_Time_ms: REJECTED: OS_Time too different %d", v4 - a1);
    return 0;
  }

  return result;
}

BOOL GN_GPS_Set_Platform_Calibration_GLONASS_Group_Delays(double *a1)
{
  EvLog_v("GN_GPS_Set_Platform_Calibration_GLONASS_Group_Delays:  %f  %f  %f  %f  %f  %f  %f  %f  %f  %f  %f  %f  %f  %f", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13]);
  Debug_Log_Platform_Calibration_GLONASS_Group_Delays(a1);

  return API_Set_Platform_Calibration_GLONASS_Group_Delays(a1);
}

BOOL GN_GPS_Set_Platform_Calibration_L5_Group_Delay(double a1)
{
  EvLog_v("GN_GPS_Set_Platform_Calibration_L5_Group_Delay:  %f", a1);
  Debug_Log_Platform_Calibration_L5_Group_Delay(a1);
  v2 = fabs(a1);
  if (v2 > 100.0)
  {
    EvCrt_v("API_Set_Platform_Calibration_L5_Group_Delays:  FAILED  Group Delay %f larger than +/-100m", a1);
  }

  else
  {
    v3 = *(p_api + 72);
    *(v3 + 2008) = a1;
    *(v3 + 2016) = 1;
  }

  return v2 <= 100.0;
}

BOOL GN_GPS_Set_Test_Mode(unsigned int a1)
{
  if (a1 >= 2)
  {
    EvCrt_v("GN_GPS_Set_Test_Mode:  Illegal Test Mode  %d  >  %d");
  }

  else
  {
    g_Test_Mode_Cfg = a1;
    EvCrt_v("GN_GPS_Set_Test_Mode:  Test Mode  %d  :  %s");
  }

  return a1 < 2;
}

uint64_t GN_GPS_Set_RTI_Bad_SV_List(uint64_t a1, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v37 = *MEMORY[0x29EDCA608];
  memset(v36, 0, 218);
  result = Is_GN_API_Set_Allowed("GN_GPS_Set_RTI_Bad_SV_List");
  if (!result)
  {
    return result;
  }

  Debug_Log_GPS_RTI_Bad_SV_List(a1, a2, a3, a4);
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
    EvCrt_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED:  %s  RTI_Num_Bad_SV = %d >%d, Out of range!");
    return 0;
  }

  if (!a2)
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_81;
  }

  v11 = 0;
  v12 = a2;
  do
  {
    v13 = 0;
    v14 = a3[v11];
    if (v14 > 7)
    {
      if (v14 > 31)
      {
        if (v14 == 32)
        {
          v15 = 63;
          v14 = 1;
          v17 = 3;
          goto LABEL_30;
        }

        v15 = 0;
        v16 = 0;
        if (v14 == 64)
        {
          v15 = 14;
          v14 = 1;
          v17 = 5;
          goto LABEL_30;
        }
      }

      else
      {
        if (v14 == 8)
        {
          v15 = 158;
          v14 = 120;
          v17 = 6;
          goto LABEL_30;
        }

        v15 = 0;
        v16 = 0;
        if (v14 == 16)
        {
          v15 = 36;
          v14 = 1;
          v17 = 2;
          goto LABEL_30;
        }
      }
    }

    else if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = 24;
        v17 = 1;
        v14 = 1;
        goto LABEL_30;
      }

      v15 = 0;
      v16 = 0;
      if (v14 == 4)
      {
        v15 = 202;
        v14 = 193;
        v17 = 4;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v14)
      {
        EvCrt_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED:  %s  RTI_Bad_SV_Type_List[%d] = 0x%x, Out of range!", v10, v11, 0);
        goto LABEL_37;
      }

      v15 = 0;
      v16 = 0;
      if (v14 == 1)
      {
        v17 = 0;
        v15 = 32;
LABEL_30:
        v16 = Num_Prn[v17];
        v13 = v14;
      }
    }

    v18 = a4[v11];
    if (v13 > v18 || v15 < v18)
    {
      EvCrt_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED:  %s  RTI_Bad_SV_Id_List[%d] = %d <%d or >%d, Out of range!");
      return 0;
    }

    *(v36 + (v16 - v13 + v18)) = 1;
LABEL_37:
    ++v11;
  }

  while (a2 != v11);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  do
  {
    v28 = *a3++;
    v27 = v28;
    if (v28 == 64)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v20;
    }

    if (v27 == 32)
    {
      v30 = v21 + 1;
    }

    else
    {
      v30 = v21;
    }

    if (v27 == 32)
    {
      v29 = v20;
    }

    if (v27 == 16)
    {
      v31 = v22 + 1;
    }

    else
    {
      v31 = v22;
    }

    if (v27 == 8)
    {
      v32 = v24 + 1;
    }

    else
    {
      v32 = v24;
    }

    if (v27 == 8)
    {
      v31 = v22;
    }

    if (v27 <= 31)
    {
      v30 = v21;
    }

    else
    {
      v32 = v24;
      v31 = v22;
    }

    if (v27 <= 31)
    {
      v29 = v20;
    }

    if (v27 == 4)
    {
      v33 = v23 + 1;
    }

    else
    {
      v33 = v23;
    }

    if (v27 == 2)
    {
      v34 = v25 + 1;
    }

    else
    {
      v34 = v25;
    }

    if (v27 == 2)
    {
      v33 = v23;
    }

    if (v27 == 1)
    {
      v35 = v26 + 1;
    }

    else
    {
      v35 = v26;
    }

    if (v27 == 1)
    {
      v34 = v25;
      v33 = v23;
    }

    if (v27 > 7)
    {
      v24 = v32;
    }

    else
    {
      v26 = v35;
      v25 = v34;
      v23 = v33;
    }

    if (v27 > 7)
    {
      v22 = v31;
      v21 = v30;
      v20 = v29;
    }

    --v12;
  }

  while (v12);
LABEL_81:
  EvLog_v("GN_GPS_Set_RTI_Bad_SV_List:  %s  G %d R %d Q %d S %d B %d E %d N %d", v10, v26, v25, v23, v24, v21, v22, v20);
  if (API_Set_RTI_Bad_SV_List(a1, v36))
  {
    return 1;
  }

  EvLog_v("GN_GPS_Set_RTI_Bad_SV_List: FAILED:   %s", v10);
  return 0;
}

void s_NV_Ram::s_NV_Ram(s_NV_Ram *this)
{
  *(this + 8) = 0;
  v2 = this + 27022;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  v3 = 192;
  *(this + 182) = 0;
  do
  {
    v4 = this + v3;
    *(v4 + 12) = 0;
    *(v4 + 1) = 0uLL;
    *(v4 + 2) = 0uLL;
    *v4 = 0uLL;
    v3 += 56;
  }

  while (v3 != 1984);
  do
  {
    v5 = (this + v3);
    *(v5 + 107) = 0uLL;
    v5[5] = 0uLL;
    v5[6] = 0uLL;
    v5[3] = 0uLL;
    v5[4] = 0uLL;
    v5[1] = 0uLL;
    v5[2] = 0uLL;
    v3 += 128;
    *v5 = 0uLL;
  }

  while (v3 != 6080);
  *(this + 380) = 0u;
  *(this + 6094) = 0;
  v6 = -560;
  do
  {
    *(this + v6 + 6712) = 0;
    v7 = (this + v6 + 6664);
    v7[1] = 0uLL;
    v7[2] = 0uLL;
    *v7 = 0uLL;
    v6 += 56;
  }

  while (v6);
  v8 = -1280;
  do
  {
    v9 = (this + v8 + 7944);
    *(v9 + 107) = 0uLL;
    v9[5] = 0uLL;
    v9[6] = 0uLL;
    v9[3] = 0uLL;
    v9[4] = 0uLL;
    v9[1] = 0uLL;
    v9[2] = 0uLL;
    *v9 = 0uLL;
    v8 += 128;
  }

  while (v8);
  *(this + 8006) = 0;
  *(this + 7976) = 0u;
  *(this + 7992) = 0u;
  *(this + 7944) = 0u;
  *(this + 7960) = 0u;
  v10 = -1728;
  do
  {
    v11 = this + v10;
    *(v11 + 610) = 0uLL;
    *(v11 + 609) = 0uLL;
    *(this + v10 + 9771) = 0uLL;
    v10 += 48;
  }

  while (v10);
  *(this + 6656) = 0;
  *(this + 13300) = 0;
  *(this + 13307) = 0;
  *(this + 830) = 0u;
  *(this + 6648) = 0;
  *(this + 6676) = 0;
  *(this + 13340) = 0;
  *(this + 13347) = 0;
  *(this + 13320) = 0u;
  *(this + 6668) = 0;
  bzero(this + 9744, 0xDCBuLL);
  v12 = -3528;
  do
  {
    v13 = this + v12 + 16888;
    *(v13 + 47) = 0;
    *(v13 + 1) = 0uLL;
    *(v13 + 2) = 0uLL;
    *v13 = 0uLL;
    v12 += 56;
  }

  while (v12);
  v14 = this + 16888;
  v15 = 10080;
  do
  {
    *(v14 + 90) = 0uLL;
    *(v14 + 76) = 0uLL;
    *(v14 + 60) = 0uLL;
    *(v14 + 44) = 0uLL;
    *(v14 + 28) = 0uLL;
    *(v14 + 108) = 0uLL;
    *(v14 + 124) = 0uLL;
    *(v14 + 140) = 0uLL;
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = 0;
    *(v14 + 12) = 0;
    v14 += 160;
    v15 -= 160;
  }

  while (v15);
  v16 = 0;
  *(this + 3373) = 0;
  *(this + 13496) = 0;
  *(this + 26968) = 0u;
  *v2 = 0;
  *(this + 27000) = 0u;
  *(this + 27013) = 0;
  v17 = this + 27052;
  do
  {
    *&v17[v16] = 0;
    v18 = &v17[v16];
    *(v18 + 1) = 0;
    *(v18 + 2) = 0;
    *(v18 + 2) = 0;
    *(v18 + 6) = 0;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 29) = 0;
    *(v18 - 12) = 0;
    *(v18 - 20) = 0;
    v16 += 64;
    *(v18 - 5) = 0;
  }

  while (v16 != 896);
  v19 = -1232;
  do
  {
    v20 = this + v19 + 29160;
    *(v20 + 20) = 0;
    *(v20 + 3) = 0uLL;
    *(v20 + 4) = 0uLL;
    *(v20 + 1) = 0uLL;
    *(v20 + 2) = 0uLL;
    *v20 = 0uLL;
    v19 += 88;
  }

  while (v19);
  *(this + 7298) = 0;
  *(this + 29160) = 0u;
  *(this + 29176) = 0u;
  *(v2 + 2198) = 0;
  v2[2202] = 0;
  *(v2 + 2206) = 0;
  v2[2210] = 0;
  *(this + 1825) = 0u;
  v21 = this + 29240;
  v22 = 1152;
  *(this + 14608) = 0;
  do
  {
    *(v21 + 28) = 0;
    *(v21 + 20) = 0;
    *(v21 + 36) = 0;
    *v21 = 0;
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v21 += 48;
    v22 -= 48;
  }

  while (v22);
  v23 = -1728;
  do
  {
    v24 = this + v23 + 32120;
    *(v24 + 62) = 0;
    *(v24 + 2) = 0uLL;
    *(v24 + 3) = 0uLL;
    *v24 = 0uLL;
    *(v24 + 1) = 0uLL;
    v23 += 72;
  }

  while (v23);
  v25 = -576;
  do
  {
    *(this + v25 + 32712) = 0;
    v26 = this + v25 + 32696;
    *(v26 + 6) = 0;
    *v26 = 0uLL;
    v25 += 32;
  }

  while (v25);
  *(this + 4089) = 0;
  *(this + 32718) = 0;
  *(this + 32696) = 0u;
  *(this + 33170) = 0u;
  *(this + 32728) = 0u;
  *(this + 32744) = 0u;
  *(this + 32760) = 0u;
  *(this + 32776) = 0u;
  *(this + 32792) = 0u;
  *(this + 32808) = 0u;
  *(this + 32824) = 0u;
  *(this + 32840) = 0u;
  *(this + 32856) = 0u;
  *(this + 32872) = 0u;
  *(this + 32888) = 0u;
  *(this + 32904) = 0u;
  *(this + 32920) = 0u;
  *(this + 32936) = 0u;
  *(this + 32952) = 0u;
  *(this + 32968) = 0u;
  *(this + 32984) = 0u;
  *(this + 33000) = 0u;
  *(this + 33016) = 0u;
  *(this + 33032) = 0u;
  *(this + 33048) = 0u;
  *(this + 33064) = 0u;
  *(this + 33080) = 0u;
  *(this + 33096) = 0u;
  *(this + 33112) = 0u;
  *(this + 33128) = 0u;
  *(this + 33144) = 0u;
  *(this + 33160) = 0u;
  *(this + 8302) = 0;
  *(this + 33192) = 0u;
  *(this + 2076) = 0u;
  *(this + 2077) = 0u;
  *(this + 2078) = 0u;
  *(this + 2079) = 0u;
  *(this + 2080) = 0u;
  *(this + 2081) = 0u;
  *(this + 2082) = 0u;
  *(this + 2083) = 0u;
  *(this + 2084) = 0u;
  *(this + 2085) = 0u;
  *(this + 2086) = 0u;
  *(this + 2087) = 0u;
  *(this + 33404) = 0u;
}

uint64_t HalFactory_Init(void)
{
  v8 = *MEMORY[0x29EDCA608];
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  v2 = v0 / v1;
  *&g_MacClockTicksToMsRelation = v2 * 0.000001;
  g_MacClockTicksToNs = *&v2;
  Hal22_InitializeConn();
  if (!Hal35_Is_HW_SPI_EN_Default() || (Ga05_GetDebugFeaturesBitmask() & 0x10) != 0)
  {
    if (Hal34_InitPciGnssDevice(&v6))
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(&info, 0x3C6uLL);
        mach_continuous_time();
        snprintf(&info, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
        goto LABEL_15;
      }

      return 0;
    }
  }

  else
  {
    Hal35_Set_SPI_InUse(1);
    if ((Hal35_BaseBandSPMI_GNSSWake() & 1) == 0)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(&info, 0x3C6uLL);
        mach_continuous_time();
        snprintf(&info, 0x3C5uLL, "%10u %s%c %s: SPMI wake trigger failed\n");
        goto LABEL_15;
      }

      return 0;
    }

    if (!Hal35_InitSPI())
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(&info, 0x3C6uLL);
        mach_continuous_time();
        snprintf(&info, 0x3C5uLL, "%10u %s%c %s: SPI Init failed\n");
LABEL_15:
        gnssOsa_PrintLog(&info, 1, 1, 0);
        return 0;
      }

      return 0;
    }
  }

  g_RouteZxData = HalFactory_ProcessData;
  if (g_LbsOsaTrace_Config < 3)
  {
    return 1;
  }

  bzero(&info, 0x3C6uLL);
  v3 = mach_continuous_time();
  snprintf(&info, 0x3C5uLL, "%10u %s%c %s: Hal factory interface init success\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 77, "HalFactory_Init");
  v4 = 1;
  gnssOsa_PrintLog(&info, 3, 1, 0);
  return v4;
}

void HalFactory_ProcessData(uint64_t result, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (a2 > 7)
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Data,MC,%c,MID,%c,MIDX,%c\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "HalFactory_ProcessData", *(result + 2), *(result + 3), *(result + 4));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      if (*(result + 2) != 68)
      {
        v8 = 0;
        __dst = 0;
        do
        {
          p_dst = (result + v8);
          if ((a2 - v8) <= 7)
          {
            memcpy(&__dst, (result + v8), (a2 - v8));
            p_dst = &__dst;
          }

          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v10 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s%02hhX %02hhX %02hhX %02hhX %02hhX %02hhX %02hhX %02hhX\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "HalFactory_ProcessData", "Rcvd data ", *p_dst, p_dst[1], p_dst[2], p_dst[3], p_dst[4], p_dst[5], p_dst[6], p_dst[7]);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          v8 = (v8 + 8);
        }

        while (v8 < a2);
        v11 = *(result + 2);
        if (v11 == 84)
        {
          v12 = *(result + 3);
          if (v12 == 66)
          {
            if (*(result + 8) == 32)
            {
              if (g_LbsOsaTrace_Config >= 4)
              {
                bzero(__str, 0x3C6uLL);
                v13 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Test mode indication success\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 73, "HalFactory_ProcessData");
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }

              if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
              {
                bzero(__str, 0x3C6uLL);
                v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v15 = __error();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v14, "HAL", 69, "HalFactory_ProcessData", 1542, *v15);
                gnssOsa_PrintLog(__str, 1, 1, 0);
              }
            }

            v12 = *(result + 3);
          }

          if (v12 == 76)
          {
            if (*(result + 4) == 32 && *(result + 8) == 83)
            {
              if (g_LbsOsaTrace_Config >= 4)
              {
                v16 = *(result + 9);
                v17 = *(result + 13);
                bzero(__str, 0x3C6uLL);
                v18 = mach_continuous_time();
                snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TSync success ME TTick=%u, SubMs=%u\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 73, "HalFactory_ProcessData", v16, v17);
                gnssOsa_PrintLog(__str, 4, 1, 0);
              }

              g_TSyncEventReceived = 1;
            }
          }

          else if (v12 == 80 && *(result + 4) == 77)
          {
            if (*(result + 9) == 1)
            {
              HalFactory_HandleCWResponse(result);
            }

            else if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v19 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid testID %u\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 87, "HalFactory_ProcessData", *(result + 9));
              v3 = 2;
              goto LABEL_8;
            }
          }

          return;
        }

        if (v11 != 68)
        {
          if (v11 == 66)
          {
            if (*(result + 3) - 83 > 1)
            {
              Hal02_HandleResp(result, a2);
            }

            else
            {
              HalFactory_SleepAckHandler(result);
            }
          }

          return;
        }
      }

      v6 = *(result + 3);
      if (v6 == 80)
      {
        v7 = a2;
      }

      else
      {
        if (v6 != 71)
        {
          return;
        }

        v7 = a2;
      }

      GnssDbgMgr_HandleDbgData(v7);
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx len\n");
LABEL_7:
      v3 = 1;
LABEL_8:
      gnssOsa_PrintLog(__str, v3, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_7;
  }
}

void HalFactory_SleepAckHandler(unsigned __int8 *result)
{
  v16 = *MEMORY[0x29EDCA608];
  v1 = result[3];
  if (v1 != 84)
  {
    if (v1 == 83 && result[4] == 80)
    {
      v2 = result[8];
      switch(v2)
      {
        case 'm':
LABEL_7:
          HalFactory_SleepAckHandler(unsigned char *,unsigned short)::v_SleepAckRcvd = 1;
          return;
        case 'M':
          if (g_LbsOsaTrace_Config >= 3)
          {
            bzero(__str, 0x3C6uLL);
            v6 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS Sleep idle state\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 77, "HalFactory_SleepAckHandler");
            gnssOsa_PrintLog(__str, 3, 1, 0);
          }

          g_SleepStatus = 1;
          if (gnssOsa_SemRelease(g_HandleAckSem) || !g_LbsOsaTrace_Config)
          {
            goto LABEL_28;
          }

          bzero(__str, 0x3C6uLL);
          v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v13 = *__error();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v7, "HAL", 69, "HalFactory_SleepAckHandler", 1542, v13);
          break;
        case ' ':
          goto LABEL_7;
        default:
          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v8 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS sleep ack err %u\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "HalFactory_SleepAckHandler", v2);
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }

          g_SleepStatus = 0;
          if (gnssOsa_SemRelease(g_HandleAckSem) || !g_LbsOsaTrace_Config)
          {
            goto LABEL_28;
          }

          bzero(__str, 0x3C6uLL);
          v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v14 = *__error();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v9, "HAL", 69, "HalFactory_SleepAckHandler", 1542, v14);
          break;
      }

      gnssOsa_PrintLog(__str, 1, 1, 0);
LABEL_28:
      HalFactory_SleepAckHandler(unsigned char *,unsigned short)::v_SleepAckRcvd = 0;
      return;
    }

    goto LABEL_14;
  }

  if (result[4] != 32 || HalFactory_SleepAckHandler(unsigned char *,unsigned short)::v_SleepAckRcvd != 1)
  {
LABEL_14:
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS Sleep, Invalid message\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "HalFactory_SleepAckHandler");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return;
  }

  v3 = result[8];
  if (v3 == 77)
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS sleep idle state event\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 77, "HalFactory_SleepAckHandler");
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }

    g_SleepStatus = 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS sleep event err %u\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 69, "HalFactory_SleepAckHandler", v3);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    g_SleepStatus = 0;
  }

  if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v11, "HAL", 69, "HalFactory_SleepAckHandler", 1542, *v12);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  HalFactory_SleepAckHandler(unsigned char *,unsigned short)::v_SleepAckRcvd = 0;
}

void HalFactory_HandleCWResponse(unsigned __int8 *a1)
{
  v2[5] = *MEMORY[0x29EDCA608];
  v1 = *(g_TestObject + 16);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___Z27HalFactory_HandleCWResponsePht_block_invoke;
  v2[3] = &__block_descriptor_tmp_1;
  v2[4] = a1;
  dispatch_async(v1, v2);
}

uint64_t HalFactory_ComsPing(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (Hal15_ReadHwRevision(80) || Hal15_ReadHwRevision(77))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: read rev failed\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 69, "HalFactory_ComsPing");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  else
  {
    Hal15_GetGNSSVersionString(__str);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = *__str;
    *(a1 + 16) = v10;
    if (g_LbsOsaTrace_Config < 3)
    {
      return 1;
    }

    else
    {
      bzero(__str, 0x3C6uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      Hal15_GetGNSSVersionString(__p);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Rev %s\n", v5, "HAL", 77, "HalFactory_ComsPing", v6);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v3 = 1;
      gnssOsa_PrintLog(__str, 3, 1, 0);
    }
  }

  return v3;
}

uint64_t HalFactory_PowerMode(char a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (HalFactory_SendEnterSleepCmd())
    {
      v1 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1F4u);
      if (v1 == 2)
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GNSS Sleep\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "HalFactory_PowerMode", 1541);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }

      else
      {
        if (v1 != 1)
        {
          return g_SleepStatus;
        }

        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v2 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GNSS Sleep\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 69, "HalFactory_PowerMode", 1543);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: sleep cmd send failed\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "HalFactory_PowerMode");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    return 0;
  }

  else
  {
    *__str = 0;
    v8 = 0;
    v9 = 0;
    v3 = HalFactory_ComsPing(__str);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(*__str);
    }
  }

  return v3;
}

BOOL HalFactory_SendEnterSleepCmd(void)
{
  v0 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v13 = 0;
  *v12 = 0xE0009507342787ALL;
  memset(&v12[8], 0, 7);
  for (i = 8; i != 15; ++i)
  {
    v0 += v12[i];
  }

  v2 = 0;
  v13 = v0;
  v3 = 18;
  v14 = 10;
  __dst = 0;
  do
  {
    p_dst = &v12[v2];
    if (v2 >= 0xB)
    {
      memcpy(&__dst, &v12[v2], v3);
      p_dst = &__dst;
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s%02hhX %02hhX %02hhX %02hhX %02hhX %02hhX %02hhX %02hhX\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "HalFactory_SendEnterSleepCmd", "factory_zx_sleep_cmd ", *p_dst, p_dst[1], p_dst[2], p_dst[3], p_dst[4], p_dst[5], p_dst[6], p_dst[7]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v3 -= 8;
    v6 = v2 >= 0xA;
    v2 += 8;
  }

  while (!v6);
  v7 = Hal22_ZxSendToChip(v12, 0x12uLL);
  if (v7 <= 0 && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx LP cmd\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 69, "HalFactory_SendEnterSleepCmd", 1282);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return v7 > 0;
}

uint64_t HalFactory_EnableTestMode(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 0x90003506254787ALL;
  v3 = 167772417;
  if (Hal22_ZxSendToChip(&v2, 0xCuLL) <= 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx test mode indication\n");
      goto LABEL_7;
    }

    return 0;
  }

  if (gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0xC8u))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: test mode indication failed\n");
LABEL_7:
      gnssOsa_PrintLog(__str, 1, 1, 0);
      return 0;
    }

    return 0;
  }

  usleep(0xF4240u);
  return 1;
}

uint64_t HalFactory_RunCWTest(int a1, int a2, double a3, uint64_t a4, int a5, uint64_t a6)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    g_TestObject = a6;
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    if ((HalFactory_ComsPing(__p) & 1) == 0)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CW test not started, failed to ping GNSS HW \n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 69, "HalFactory_RunCWTest");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      goto LABEL_23;
    }

    if ((HalFactory_EnableTestMode() & 1) == 0)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v15 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CW test not started, set factory test mode failed \n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "HalFactory_RunCWTest");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      goto LABEL_23;
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Input CW params: duration %u seconds, band %u, searchRange %f kHz, integrationtime %d msec\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "HalFactory_RunCWTest", a1, a2, a3, a5);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    memset(v28, 0, 15);
    *v26 = 0x20000F4D7054787ALL;
    v27 = 1;
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v11 = 0;
          goto LABEL_29;
        }

        if (a2 != 2)
        {
LABEL_30:
          v18 = 0;
          *(v28 + 1) = 0;
          BYTE3(v28[0]) = 0;
          strcpy(&v28[1], "\n");
          BYTE2(v28[1]) = -56;
          for (i = 8; i != 23; ++i)
          {
            v18 += v26[i];
          }

          v20 = 0;
          WORD2(v28[1]) = v18;
          BYTE6(v28[1]) = 10;
          do
          {
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v21 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s%02hhX %02hhX %02hhX %02hhX %02hhX %02hhX %02hhX %02hhX\n", (*&g_MacClockTicksToMsRelation * v21), "HAL", 73, "HalFactory_RunCWTest", "cw command ", v26[v20], v26[v20 + 1], v26[v20 + 2], v26[v20 + 3], v26[v20 + 4], v26[v20 + 5], v26[v20 + 6], v26[v20 + 7]);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            v22 = v20 >= 0x10;
            v20 += 8;
          }

          while (!v22);
          if (Hal22_ZxSendToChip(v26, 0x18uLL) > 0)
          {
            usleep(1000000 * a1);
            v13 = 1;
LABEL_24:
            if (SHIBYTE(v25) < 0)
            {
              operator delete(__p[0]);
            }

            return v13;
          }

          if (g_LbsOsaTrace_Config)
          {
            bzero(__str, 0x3C6uLL);
            v23 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CW test command\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 69, "HalFactory_RunCWTest", 1282);
            gnssOsa_PrintLog(__str, 1, 1, 0);
          }

LABEL_23:
          v13 = 0;
          goto LABEL_24;
        }
      }
    }

    else if ((a2 - 5) >= 6)
    {
      if (a2 == 3)
      {
        v11 = 6;
        goto LABEL_29;
      }

      if (a2 == 4)
      {
        v11 = 3;
LABEL_29:
        LOBYTE(v28[0]) = v11;
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v16 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Incorrect band %u\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 69, "HalFactory_RunCWTest", a2);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_23;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: callback nullptr\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "HalFactory_RunCWTest");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void sub_298F39B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HalFactory_TriggerTSync(void)
{
  v14 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  if (HalFactory_ComsPing(__p))
  {
    if (HalFactory_EnableTestMode())
    {
      *v11 = 0x1200054D6C54787ALL;
      v12 = 16842752;
      v13 = 2560;
      if (Hal22_ZxSendToChip(v11, 0xEuLL) <= 0)
      {
        if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v4 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TimeMark test command\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "HalFactory_SendTimeMarkCmd", 1282);
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }

      else
      {
        v9 = 0;
        if (Hal25_TriggerTimeMarkStrobe(&v9))
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v0 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s:  TimeMark PulseOSTime %u\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "HalFactory_SendTimeMarkCmd", v9);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          usleep(0x7A120u);
          if (g_TSyncEventReceived == 1)
          {
            g_TSyncEventReceived = 0;
            v1 = 1;
            goto LABEL_18;
          }
        }

        else if (g_LbsOsaTrace_Config)
        {
          bzero(__str, 0x3C6uLL);
          v5 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimeMark pulse trigger failed\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "HalFactory_SendTimeMarkCmd");
          gnssOsa_PrintLog(__str, 1, 1, 0);
        }
      }
    }

    else if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TSync test not started, set factory test mode failed \n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "HalFactory_TriggerTSync");
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TSync test not started, failed to ping GNSS HW \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 69, "HalFactory_TriggerTSync");
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v1 = 0;
LABEL_18:
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_298F3A178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void GncP25_02StopTimemarkSessTimer(void)
{
  v2 = *MEMORY[0x29EDCA608];
  if (g_TimemarkTimerStatus == 1)
  {
    if (AgpsFsmStopTimer(8656902))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v0 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP25_02StopTimemarkSessTimer", 1545);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }
    }

    else
    {
      g_TimemarkTimerStatus = 0;
    }
  }
}

void GncP25_04HandleTimeMarkEvent(uint64_t result)
{
  v33 = *MEMORY[0x29EDCA608];
  if (g_TimeMarkState == 1)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Pulse not processed\n");
LABEL_10:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    return;
  }

  if (*(result + 8) != 83)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return;
    }

    bzero(__str, 0x3C6uLL);
    v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Status,%u\n", v30);
    goto LABEL_10;
  }

  __dst = 0;
  v1 = *(result + 9);
  v2 = *(result + 14);
  v3 = *(result + 13) | (v2 << 8);
  if (*(result + 3) == 66)
  {
    v4 = *(result + 15);
    if (*(result + 17))
    {
      memcpy_s("GncP25_04HandleTimeMarkEvent", 184, &__dst, 8u, (result + 18), 8uLL);
      v5 = (__dst * 6.51041667);
    }

    else
    {
      v5 = 0;
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      v7 = 125;
    }

    else
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      v7 = 125;
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TMEvent BBTICK,%u,SubMs,%u,SequenceNum,%u,BCTTtick,%llu,BCTNs,%llu,BCTUncNs,%llu\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP25_04HandleTimeMarkEvent", v1, v3, v4, __dst, v5, 125);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TMEvent BBTICK,%u,SubMs,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP25_04HandleTimeMarkEvent", v1, v3);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v7 = 0;
    v5 = 0;
  }

  v9 = gnssOsa_Calloc("GncP25_04HandleTimeMarkEvent", 197, 1, 0x50uLL);
  if (v9)
  {
    v10 = v9;
    v9[2] = 0u;
    v9[3] = 0u;
    v9[1] = 0u;
    *(v9 + 14) = v1;
    *(v9 + 8) = v5;
    *(v9 + 9) = v7;
    if (g_GncP_PEUpdate[0])
    {
      if (byte_2A13EC679)
      {
        *&v11 = v3;
        LODWORD(v11) = dword_2A13EC668;
        v12 = v1 + v3 * 0.0000152587891 - v11;
        v13 = v12 * (1.0 - *&qword_2A13EC6A8);
        v14 = v13 + *&qword_2A13EC690 * 1000.0;
        v15 = sqrt(*&qword_2A13EC718 * (v13 * (v13 * *&qword_2A13EC718)) + *&qword_2A13EC708 * 1000.0 * (*&qword_2A13EC708 * 1000.0));
        if (g_LbsOsaTrace_Config >= 5)
        {
          bzero(__str, 0x3C6uLL);
          v16 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: DeltaToW,%.12f,DeltaTick,%.12f,Clk_drift,%.12f\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 68, "GncP25_06CalculateTOW", v13, v12, *&qword_2A13EC6A8);
          gnssOsa_PrintLog(__str, 5, 1, 0);
        }

        v17 = 0;
        v18 = 0;
        v19 = word_2A13EC688;
        v20 = v14 + -604800000.0;
        if (v14 < 604800000.0)
        {
          v20 = v14;
        }

        else
        {
          v19 = word_2A13EC688 + 1;
        }

        *(v10 + 9) = v19;
        *(v10 + 16) = 1;
        *(v10 + 3) = v20;
        *(v10 + 4) = v15;
        v21 = unk_2A13EC6B0;
        if (!byte_2A13EC661)
        {
          v21 = 0.0;
        }

        *(v10 + 40) = byte_2A13EC661;
        *(v10 + 6) = v21;
        if (dword_2A13EC79C == 4)
        {
          v22 = 5;
        }

        else
        {
          v22 = 0;
        }

        if (dword_2A13EC79C == 2)
        {
          v23 = 3;
        }

        else
        {
          v23 = v22;
        }

        *(v10 + 60) = v23;
        while (1)
        {
          if (g_GncP_PEUpdate[v17 + 6120] == 1)
          {
            v24 = &g_GncP_PEUpdate[4 * v17];
            v25 = *(v24 + 89);
            if (v25 <= 2)
            {
              if (!v25)
              {
                if (g_LbsOsaTrace_Config >= 2)
                {
                  bzero(__str, 0x3C6uLL);
                  v28 = mach_continuous_time();
                  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Const,%u,Idx,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 87, "GncP25_05GetConstellationUsed", 770, *(v24 + 89), v17);
                  gnssOsa_PrintLog(__str, 2, 1, 0);
                }

                goto LABEL_47;
              }

              if (v25 != 1)
              {
                v26 = v25 == 2;
                v27 = v18 | 0x20;
                goto LABEL_45;
              }

              v18 |= 1u;
            }

            else if (v25 > 4)
            {
              if (v25 != 5)
              {
                v26 = v25 == 6;
                v27 = v18 | 0x80;
LABEL_45:
                if (v26)
                {
                  v18 = v27;
                }

                goto LABEL_47;
              }

              v18 |= 2u;
            }

            else
            {
              if (v25 != 3)
              {
                v26 = v25 == 4;
                v27 = v18 | 0x40;
                goto LABEL_45;
              }

              v18 |= 0x10u;
            }
          }

LABEL_47:
          if (++v17 == 128)
          {
            *(v10 + 31) = v18;
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v29 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND =>GNM\n", (*&g_MacClockTicksToMsRelation * v29), "GNC", 73, "GncP25_04HandleTimeMarkEvent");
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            AgpsSendFsmMsg(132, 128, 8651779, v10);
            GncP25_09UpdateTimeMarkInfo(0, 1, 0, v1 + (v2 >> 7));
            return;
          }
        }
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsTime NA,date_set,false,TimeMark event posted\n");
        goto LABEL_61;
      }
    }

    else if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsTime NA,TimeMark event posted\n");
LABEL_61:
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 128, 8651779, v10);
  }
}

void GncP25_09UpdateTimeMarkInfo(uint64_t result, int a2, int a3, int a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (result)
  {
    _MergedGlobals_2 = a3;
    GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 1;
  }

  if (a2)
  {
    dword_2A14544CC = a4;
    dword_2A14544D0 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 1;
  }

  else if (GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick != 1)
  {
    return;
  }

  if (GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime == 1)
  {
    GncP25_02StopTimemarkSessTimer();
    v4 = _MergedGlobals_2;
    if ((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v4 > 0x1F3 || (v5 = dword_2A14544D0, (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v5 > 0x1F3))
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid OStime %u,BBtick,%u,BBTickRx,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP25_09UpdateTimeMarkInfo", _MergedGlobals_2, dword_2A14544CC, dword_2A14544D0);
        v8 = 2;
        goto LABEL_16;
      }
    }

    else
    {
      if ((GN_GPS_Set_TM_FSP_OS_Time_ms(_MergedGlobals_2, dword_2A14544CC) & 1) == 0)
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_17;
        }

        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GN_GPS_Set_TM_FSP_OS_Time_ms\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP25_09UpdateTimeMarkInfo", 257);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TMInfo OStime %u,BBtick,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 73, "GncP25_09UpdateTimeMarkInfo", _MergedGlobals_2, dword_2A14544CC);
        v8 = 4;
LABEL_16:
        gnssOsa_PrintLog(__str, v8, 1, 0);
      }
    }

LABEL_17:
    GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
    GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
    g_TimeMarkState = 1;
  }
}

uint64_t GncP25_01HandleStartTimeMarkReq(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_REQ\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncP25_01HandleStartTimeMarkReq");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v2 = gnssOsa_Calloc("GncP25_01HandleStartTimeMarkReq", 346, 1, 0x10uLL);
    if (v2)
    {
      v3 = v2;
      if (g_TimeMarkState)
      {
        v4 = g_GncPStateInfo;
        if (g_GncPStateInfo == 7)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v5 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TM started ME ON\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP25_03HandleStartTimeMark");
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          g_TimeMarkState = 0;
          GncP25_02StopTimemarkSessTimer();
          if (AgpsFsmStartTimer(8656902, 0x3E8u))
          {
            if (g_LbsOsaTrace_Config >= 2)
            {
              bzero(__str, 0x3C6uLL);
              v6 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Dur,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP25_03StartTimemarkSessTimer", 1544, 1000);
              gnssOsa_PrintLog(__str, 2, 1, 0);
            }
          }

          else
          {
            g_TimemarkTimerStatus = 1;
          }

          Hal_TriggerTimeMarkPulse(GncP25_07TimeMarkPulseCb);
          v3[12] = 1;
        }

        else
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v9 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TM ReqRejected MEState,%hhu\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP25_03HandleStartTimeMark", 2049, v4);
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          g_TimeMarkState = 1;
          v3[12] = 0;
        }
      }

      else
      {
        v2[12] = 0;
        if (g_LbsOsaTrace_Config < 2)
        {
LABEL_23:
          AgpsSendFsmMsg(132, 128, 8389124, v3);
          return 0;
        }

        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP25_01HandleStartTimeMarkReq", 2056);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_START_TIMEMARK_RSP =>GNM Status,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP25_01HandleStartTimeMarkReq", v3[12]);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      goto LABEL_23;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP25_01HandleStartTimeMarkReq", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void GncP25_07TimeMarkPulseCb(_DWORD *result, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = result;
    v3 = gnssOsa_Calloc("GncP25_07TimeMarkPulseCb", 389, 1, 0x10uLL);
    if (v3)
    {
      v4 = v3;
      *(v3 + 3) = v2;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_PULSE_IND =>GNCP\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP25_07TimeMarkPulseCb");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 132, 8657411, v4);
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: TimeMark Trig fail\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 87, "GncP25_07TimeMarkPulseCb");
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }
}

uint64_t GncP25_08HandleTimeMarkPulseInd(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_PULSE_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP25_08HandleTimeMarkPulseInd");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if ((g_TimeMarkState & 1) == 0)
    {
      GncP25_09UpdateTimeMarkInfo(1uLL, 0, *(a1 + 12), 0);
      return 0;
    }

    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Session Stopped\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GncP25_08HandleTimeMarkPulseInd", 262);
      v4 = 2;
LABEL_9:
      gnssOsa_PrintLog(__str, v4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP25_08HandleTimeMarkPulseInd", 517);
    v4 = 1;
    goto LABEL_9;
  }

  return 0;
}

void GncP25_10TimemarkSessTimerExpiry(void)
{
  v5 = *MEMORY[0x29EDCA608];
  g_TimemarkTimerStatus = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidOSTime = 0;
  GncP25_09UpdateTimeMarkInfo(BOOL,BOOL,BOOL,unsigned int,unsigned int)::v_IsValidBBTick = 0;
  g_TimeMarkState = 1;
  v0 = gnssOsa_Calloc("GncP25_10TimemarkSessTimerExpiry", 493, 1, 0x50uLL);
  if (v0)
  {
    v1 = v0;
    v0[3] = 0u;
    v0[4] = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GpsTime NotAvail\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP25_10TimemarkSessTimerExpiry");
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_TIMEMARK_EVENT_IND =>GNM\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 73, "GncP25_10TimemarkSessTimerExpiry");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }

    AgpsSendFsmMsg(132, 128, 8651779, v1);
  }
}

uint64_t sprintf_eR8(void *a1, double a2)
{
  v3 = -a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 <= 0.0)
  {
    i = 0;
    v9 = 0;
  }

  else
  {
    for (i = 0; v3 < 0.00001; v3 = v3 * 10000.0)
    {
      i = (i - 4);
    }

    for (; v3 < 0.1; v3 = v3 * 10.0)
    {
      i = (i - 1);
    }

    for (; v3 > 10000.0; v3 = v3 * 0.0001)
    {
      i = (i + 4);
    }

    while (v3 > 10.0)
    {
      i = (i + 1);
      v3 = v3 * 0.1;
    }

    v5 = v3 * 10000000.0;
    v6 = -0.5;
    if (v5 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v5 + v6;
    if (v7 <= 2147483650.0)
    {
      if (v7 >= -2147483650.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x80000000;
      }
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (a2 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }
  }

  sprintf_9f(a1, v9, 8);
  v10 = (*a1)++;
  *v10 = 101;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return sprintf_03d(a1, i);
}

char **sprintf_gR8(char **a1, double a2)
{
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 7;
LABEL_67:

    return sprintf_9f(a1, v7, v14);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100000.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 6;
    goto LABEL_67;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10000.0;
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
        v7 = v13;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 5;
    goto LABEL_67;
  }

  if (v2 < 99999.0)
  {
    v15 = a2 * 1000.0;
    v16 = -0.5;
    if (v15 > 0.0)
    {
      v16 = 0.5;
    }

    v17 = v15 + v16;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v7 = v17;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 4;
    goto LABEL_67;
  }

  if (v2 < 999999.0)
  {
    v18 = a2 * 100.0;
    v19 = -0.5;
    if (v18 > 0.0)
    {
      v19 = 0.5;
    }

    v20 = v18 + v19;
    if (v20 <= 2147483650.0)
    {
      if (v20 >= -2147483650.0)
      {
        v7 = v20;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 3;
    goto LABEL_67;
  }

  if (v2 < 9999999.0)
  {
    v21 = a2 * 10.0;
    v22 = -0.5;
    if (v21 > 0.0)
    {
      v22 = 0.5;
    }

    v23 = v21 + v22;
    if (v23 <= 2147483650.0)
    {
      if (v23 >= -2147483650.0)
      {
        v7 = v23;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 2;
    goto LABEL_67;
  }

  if (v2 >= 99999999.0)
  {

    return sprintf_eR8(a1, a2);
  }

  else
  {
    v24 = -0.5;
    if (a2 > 0.0)
    {
      v24 = 0.5;
    }

    v25 = v24 + a2;
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

    return sprintf_10d(a1, v26);
  }
}

char **sprintf_seR8(char **a1, double a2)
{
  v3 = -a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 <= 0.0)
  {
    i = 0;
    v9 = 0;
  }

  else
  {
    for (i = 0; v3 < 0.0001; v3 = v3 * 1000.0)
    {
      i = (i - 3);
    }

    for (; v3 < 0.1; v3 = v3 * 10.0)
    {
      i = (i - 1);
    }

    for (; v3 > 1000.0; v3 = v3 * 0.001)
    {
      i = (i + 3);
    }

    while (v3 > 9.999)
    {
      i = (i + 1);
      v3 = v3 * 0.1;
    }

    v5 = v3 * 1000.0;
    v6 = -0.5;
    if (v5 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v5 + v6;
    if (v7 <= 2147483650.0)
    {
      if (v7 >= -2147483650.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0x80000000;
      }
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (a2 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }
  }

  sprintf_5f(a1, v9, 4);
  v10 = (*a1)++;
  *v10 = 101;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  return sprintf_02d(a1, i);
}

char **sprintf_sgR8(char **a1, double a2)
{
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 4;
LABEL_40:

    return sprintf_6f(a1, v7, v14);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 3;
    goto LABEL_40;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10.0;
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
        v7 = v13;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 2;
    goto LABEL_40;
  }

  if (v2 >= 99999.0)
  {

    return sprintf_seR8(a1, a2);
  }

  else
  {
    v15 = -0.5;
    if (a2 > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v15 + a2;
    if (v16 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0x80000000;
      }
    }

    else
    {
      v17 = 0x7FFFFFFFLL;
    }

    return sprintf_7d(a1, v17);
  }
}

char **sprintf_sgR8F(char **a1, double a2)
{
  v2 = fabs(a2);
  v3 = (*a1)++;
  *v3 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  if (v2 < 99.0)
  {
    v4 = a2 * 1000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 4;
LABEL_40:

    return sprintf_8f(a1, v7, v14);
  }

  if (v2 < 999.0)
  {
    v8 = a2 * 100.0;
    v9 = -0.5;
    if (v8 > 0.0)
    {
      v9 = 0.5;
    }

    v10 = v8 + v9;
    if (v10 <= 2147483650.0)
    {
      if (v10 >= -2147483650.0)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 3;
    goto LABEL_40;
  }

  if (v2 < 9999.0)
  {
    v11 = a2 * 10.0;
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
        v7 = v13;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    v14 = 2;
    goto LABEL_40;
  }

  if (v2 >= 99999.0)
  {

    return sprintf_seR8(a1, a2);
  }

  else
  {
    v15 = -0.5;
    if (a2 > 0.0)
    {
      v15 = 0.5;
    }

    v16 = v15 + a2;
    if (v16 <= 2147483650.0)
    {
      if (v16 >= -2147483650.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0x80000000;
      }
    }

    else
    {
      v17 = 0x7FFFFFFFLL;
    }

    return sprintf_9d(a1, v17);
  }
}

double sprintf_ACC(uint64_t a1, double result)
{
  if (result <= 99999.0)
  {
    if (result <= 9.9)
    {
      if (result <= 0.99)
      {
        if (result <= 0.099)
        {
          v13 = result * 1000.0;
          v14 = -0.5;
          if (v13 > 0.0)
          {
            v14 = 0.5;
          }

          v15 = v13 + v14;
          if (v15 <= 2147483650.0)
          {
            if (v15 >= -2147483650.0)
            {
              v9 = v15;
            }

            else
            {
              v9 = 0x80000000;
            }
          }

          else
          {
            v9 = 0x7FFFFFFFLL;
          }

          v16 = 4;
        }

        else
        {
          v10 = result * 100.0;
          v11 = -0.5;
          if (v10 > 0.0)
          {
            v11 = 0.5;
          }

          v12 = v10 + v11;
          if (v12 <= 2147483650.0)
          {
            if (v12 >= -2147483650.0)
            {
              v9 = v12;
            }

            else
            {
              v9 = 0x80000000;
            }
          }

          else
          {
            v9 = 0x7FFFFFFFLL;
          }

          v16 = 3;
        }
      }

      else
      {
        v6 = result * 10.0;
        v7 = -0.5;
        if (v6 > 0.0)
        {
          v7 = 0.5;
        }

        v8 = v6 + v7;
        if (v8 <= 2147483650.0)
        {
          if (v8 >= -2147483650.0)
          {
            v9 = v8;
          }

          else
          {
            v9 = 0x80000000;
          }
        }

        else
        {
          v9 = 0x7FFFFFFFLL;
        }

        v16 = 2;
      }

      sprintf_4f(a1, v9, v16);
    }

    else
    {
      v5 = result + 0.5;
      if (v5 >= 2147483650.0)
      {
        v5 = 2147483650.0;
      }

      sprintf_5d(a1, v5);
    }
  }

  else
  {
    v2 = *a1;
    v3 = 57;
    v4 = 1u;
    do
    {
      *a1 = v2 + 1;
      *v2 = v3;
      v2 = *a1;
      if (*a1 >= *(a1 + 24))
      {
        v2 = *(a1 + 16);
        *a1 = v2;
      }

      v3 = str_6[v4++];
    }

    while (v4 != 6);
  }

  return result;
}

void sprintf_v(char **a1, char *a2, double *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*a2)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      if (v4 != 37 && (v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      if ((v6 & 1) == 0)
      {
        v8 = *++v5;
        v4 = v8;
        if (!v8)
        {
          return;
        }
      }

      if (v4 <= 100)
      {
        if (v4 <= 87)
        {
          if (v4 == 68)
          {
            v16 = a3++;
            sprintf_1D(a1, *v16);
            goto LABEL_7;
          }

          if (v4 == 85)
          {
            v15 = a3++;
            sprintf_1U(a1, *v15);
            goto LABEL_7;
          }
        }

        else
        {
          switch(v4)
          {
            case 'X':
              v20 = a3++;
              sprintf_1X(a1, *v20);
              goto LABEL_7;
            case 'c':
              v17 = a3++;
              v4 = *v17;
LABEL_5:
              v7 = (*a1)++;
              *v7 = v4;
              goto LABEL_6;
            case 'd':
              v11 = a3++;
              v12 = *v11;
              if (v12 >= 0)
              {
                v13 = v12;
              }

              else
              {
                v13 = -v12;
              }

              sprintf1da(a1, v13, v33, 0, v12 >> 31);
              goto LABEL_7;
          }
        }
      }

      else if (v4 > 114)
      {
        switch(v4)
        {
          case 's':
            v22 = a3++;
            v23 = *v22;
            v24 = *v23;
            if (*v23)
            {
              v25 = *a1;
              v26 = v23 + 1;
              do
              {
                *a1 = v25 + 1;
                *v25 = v24;
                v25 = *a1;
                if (*a1 >= a1[3])
                {
                  v25 = a1[2];
                  *a1 = v25;
                }

                v27 = *v26++;
                v24 = v27;
              }

              while (v27);
            }

            goto LABEL_7;
          case 'u':
            v19 = a3++;
            sprintf_1u(a1, *v19);
            goto LABEL_7;
          case 'x':
            v14 = a3++;
            sprintf_1x(a1, *v14);
            goto LABEL_7;
        }
      }

      else
      {
        switch(v4)
        {
          case 'e':
            v21 = a3++;
            sprintf_eR8(a1, *v21);
            goto LABEL_7;
          case 'f':
            v18 = a3++;
            sprintf_sgR8(a1, *v18);
            goto LABEL_7;
          case 'g':
            v9 = a3++;
            sprintf_gR8(a1, *v9);
            goto LABEL_7;
        }
      }

      if ((v4 - 48) < 0xA || v4 <= 0x2E && ((1 << v4) & 0x680800000000) != 0)
      {
        v6 = 1;
        goto LABEL_17;
      }

      v28 = (*a1)++;
      *v28 = 37;
      v29 = *a1;
      if (*a1 >= a1[3])
      {
        v29 = a1[2];
        *a1 = v29;
      }

      v30 = *v5;
      *a1 = v29 + 1;
      *v29 = v30;
LABEL_6:
      if (*a1 >= a1[3])
      {
        v6 = 0;
        *a1 = a1[2];
        goto LABEL_17;
      }

LABEL_7:
      v6 = 0;
LABEL_17:
      v10 = *++v5;
      v4 = v10;
    }

    while (v10);
  }

  v31 = (*a1)++;
  *v31 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }
}

uint64_t GncP04_05HandlePosEventInd(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP04_05HandlePosEventInd", 517);
      v13 = 1;
LABEL_16:
      gnssOsa_PrintLog(__str, v13, 1, 0);
      return 0;
    }

    return 0;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT SMClient,%hhu,Ses,%u,PosOp,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP04_05HandlePosEventInd", *(a1 + 12), *(a1 + 14), *(a1 + 16));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  if (!*(a1 + 16))
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v15;
      v17 = &g_GncPCntxtInfo + 36 * v14;
      if (v17[8] == 1 && v17[4] == v3 && *(v17 + 3) == v4)
      {
        break;
      }

      v15 = 0;
      v14 = 1;
      if ((v16 & 1) == 0)
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_43;
        }

        bzero(__str, 0x3C6uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v42 = *(a1 + 14);
        v43 = *(a1 + 16);
        v40 = 2050;
        v41 = *(a1 + 12);
        v10 = "GncP04_06HandleStopPosEvent";
        v11 = "%10u %s%c %s: #%04hx Client,%hhu,Ses,%u,PosOp,%u\n";
LABEL_24:
        snprintf(__str, 0x3C5uLL, v11, v9, "GNC", 87, v10, v40, v41, v42, v43);
        goto LABEL_42;
      }
    }

    if (v3 != 1)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClientID,%hhu\n", v39);
LABEL_42:
        gnssOsa_PrintLog(__str, 2, 1, 0);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    *(v17 + 35) = 0;
    *(v17 + 20) = 0u;
    *(v17 + 4) = 0u;
    if ((g_GncPCntxtInfo - 3) > 0xFDu)
    {
      LOBYTE(g_GncPCntxtInfo) = g_GncPCntxtInfo - 1;
      if (g_LbsOsaTrace_Config < 4)
      {
        goto LABEL_72;
      }

      bzero(__str, 0x3C6uLL);
      v30 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Instance,%u\n", (*&g_MacClockTicksToMsRelation * v30), "GNC", 73, "GncP04_04DecreaseInstnCount", g_GncPCntxtInfo);
      v29 = 4;
    }

    else
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_72;
      }

      bzero(__str, 0x3C6uLL);
      v28 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Count,%u\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 87, "GncP04_04DecreaseInstnCount", 770, g_GncPCntxtInfo);
      v29 = 2;
    }

    gnssOsa_PrintLog(__str, v29, 1, 0);
LABEL_72:
    v31 = 0;
    v32 = 1;
    while (1)
    {
      v33 = v32;
      v34 = &g_GncPCntxtInfo + 36 * v31;
      if (v34[8] == 1 && !v34[36])
      {
        break;
      }

      v32 = 0;
      v31 = 1;
      if ((v33 & 1) == 0)
      {
        GncP16_23UpdateStateFGSession(0);
        break;
      }
    }

    v35 = 0;
    v36 = 1;
    while (1)
    {
      v37 = v36;
      v38 = &g_GncPCntxtInfo + 36 * v35;
      if (v38[8] == 1 && (v38[9] & 2) != 0)
      {
        goto LABEL_43;
      }

      v36 = 0;
      v35 = 1;
      if ((v37 & 1) == 0)
      {
        if (qword_2A13EDF58)
        {
          free(qword_2A13EDF58);
        }

        qword_2A13EDF58 = 0;
        goto LABEL_43;
      }
    }
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &g_GncPCntxtInfo + 36 * v5;
    if (v8[8] == 1 && v8[4] == v3 && *(v8 + 3) == v4)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      if (BYTE8(g_GncPCntxtInfo))
      {
        if (byte_2A13EC2DC)
        {
          if (g_LbsOsaTrace_Config < 2)
          {
            goto LABEL_43;
          }

          bzero(__str, 0x3C6uLL);
          v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v42 = *(a1 + 14);
          v43 = *(a1 + 16);
          v40 = 2054;
          v41 = *(a1 + 12);
          v10 = "GncP04_07ProcessPosEvent";
          v11 = "%10u %s%c %s: #%04hx Client,%hhu,ID,%u,PosOp,%u\n";
          goto LABEL_24;
        }

        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      if (g_GncPCntxtInfo < 2u)
      {
        LOBYTE(g_GncPCntxtInfo) = g_GncPCntxtInfo + 1;
        if (g_LbsOsaTrace_Config < 4)
        {
          break;
        }

        bzero(__str, 0x3C6uLL);
        v20 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Instance,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncP04_03IncreaseInstnCount", g_GncPCntxtInfo);
        v19 = 4;
      }

      else
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          break;
        }

        bzero(__str, 0x3C6uLL);
        v18 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Count,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncP04_03IncreaseInstnCount", 770, g_GncPCntxtInfo);
        v19 = 2;
      }

      gnssOsa_PrintLog(__str, v19, 1, 0);
      break;
    }
  }

  v21 = &g_GncPCntxtInfo + 36 * v5;
  v21[4] = *(a1 + 12);
  v22 = (v21 + 4);
  v22[4] = 1;
  *(v22 + 1) = *(a1 + 14);
  v22[5] = *(a1 + 16);
  *(v22 + 8) = *(a1 + 20);
  *(v22 + 12) = *(a1 + 36);
  *(v22 + 26) = *(a1 + 38);
  *(v22 + 30) = *(a1 + 42);
  v22[34] = *(a1 + 46);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v23 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Client,%hhu,ID,%u,Output,%u,ReqRcvd,%u,Deadline,%u,Emergency,%u\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncP04_07ProcessPosEvent", 2057, *v22, *(v22 + 1), v22[5], *(v22 + 2), *(v22 + 3), v22[33]);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StartTime,%u,Int,%u,HAcc,%u,Vacc,%u,ConstMask,%u,PrefFtaMeasTime,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 73, "GncP04_07ProcessPosEvent", 2057, *(v22 + 4), *(v22 + 5), *(v22 + 12), *(v22 + 13), v22[30], v22[34]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if (*v22 == 1)
  {
    GncP16_23UpdateStateFGSession(1);
    goto LABEL_43;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid ClientID,%hhu\n");
    goto LABEL_42;
  }

LABEL_43:
  if (g_GncPStateInfo <= 2u)
  {
    if (!g_GncPStateInfo)
    {
      return 0;
    }

    if (g_GncPStateInfo != 1)
    {
      if (g_GncPStateInfo != 2)
      {
LABEL_57:
        if (g_LbsOsaTrace_Config < 2)
        {
          return 0;
        }

        bzero(__str, 0x3C6uLL);
        v26 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v26), "GNC", 87, "GncP04_05HandlePosEventInd", 770);
        v13 = 2;
        goto LABEL_16;
      }

LABEL_52:
      v25 = 3;
      goto LABEL_61;
    }

LABEL_59:
    v25 = 2;
    goto LABEL_61;
  }

  if (g_GncPStateInfo > 0x10u)
  {
LABEL_55:
    if (g_GncPStateInfo != 3)
    {
      if (g_GncPStateInfo != 4)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    goto LABEL_59;
  }

  if (((1 << g_GncPStateInfo) & 0xC380) != 0)
  {
    if (*(a1 + 16))
    {
      v25 = 6;
    }

    else
    {
      v25 = 1;
    }

    goto LABEL_61;
  }

  if (((1 << g_GncPStateInfo) & 0x10C20) == 0)
  {
    if (g_GncPStateInfo == 6)
    {
      v25 = 7;
LABEL_61:
      GncP04_19SendPosEvntResp(v25);
      return 0;
    }

    goto LABEL_55;
  }

  return 0;
}

void GncP04_19SendPosEvntResp(char a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncP04_19SendPosEvntResp", 494, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v2[12] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT_RSP =>GNCS Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP04_19SendPosEvntResp", v3[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 130, 8653315, v3);
  }
}

uint64_t GncP04_08GetNextSessInstn(unsigned int a1, void *__dst, unsigned __int8 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (__dst)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = &g_GncPCntxtInfo + 36 * v3;
      if (v7[8] == 1 && (v7[9] & a3) != 0 && a1 < ++v4)
      {
        break;
      }

      v5 = 0;
      v8 = 0;
      v3 = 1;
      if ((v6 & 1) == 0)
      {
        return v8;
      }
    }

    memcpy_s("GncP04_08GetNextSessInstn", 389, __dst, 0x24u, v7 + 4, 0x24uLL);
    return 1;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 87, "GncP04_08GetNextSessInstn", 513);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 0;
  }
}

void GncP04_21SendClearGnssAck(uint64_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = g_GnssDataClrMask;
  if (g_GnssDataClrMask)
  {
    v2 = result;
    v3 = gnssOsa_Calloc("GncP04_21SendClearGnssAck", 522, 1, 0x14uLL);
    if (v3)
    {
      v4 = v3;
      v3[12] = v2;
      *(v3 + 4) = v1;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP =>GNM Status,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP04_21SendClearGnssAck", v4[12]);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      AgpsSendFsmMsg(132, 128, 8653316, v4);
      g_GnssDataClrMask = 0;
    }
  }
}

void NK_IntConstel_TO_IntMeas(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v31 = *MEMORY[0x29EDCA608];
  v8 = (a2 + 60488);
  if ((*(result + 241) & 1) != 0 || *(result + 27120) > *(result + 16) || *(a2 + 1872) != 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = *(result + 148);
    if (v9 >= *(result + 152))
    {
      v9 = *(result + 152);
    }

    if (v9 >= *(result + 156))
    {
      v9 = *(result + 156);
    }

    v10 = v9 > 0xA;
  }

  v11 = *v8;
  if (v11 == 4)
  {
    v16 = *(a2 + 60492);
    if (v16 == 5)
    {
      if (*(a3 + 47536) >= 1 && *(a3 + 47544))
      {
        v12 = *(a3 + 47552) * 299792458.0;
        if (fabs(v12) > 50.0)
        {
          EvLog_v("NK_IntConstel_TO_IntMeas:  Large BDS-GLO Time Offset  %d > 50 m");
          return;
        }

        v14 = 1.0;
        v13 = 1;
        if (v10)
        {
          v14 = 9.0;
        }

        v15 = 2;
      }

      else
      {
        if (v10)
        {
          return;
        }

        v13 = 1;
        v15 = 2;
        v12 = 0.0;
        v14 = 100.0;
      }

      v19 = 27086;
      v20 = 1648;
      v21 = 1640;
      goto LABEL_51;
    }

    if (v16 != 4)
    {
      return;
    }

    if (*(a3 + 47496) >= 1 && *(a3 + 47504))
    {
      v12 = *(a3 + 47512) * 299792458.0;
      if (*(a2 + 20) >= 1 && *(a2 + 25) == 1)
      {
        LODWORD(a7) = *(a3 + 47508);
        v17 = *(a2 + 32) - *&a7 + (604800 * (*(a2 + 26) - *(a3 + 47504)));
        v18 = v17;
        if (v17 < 0)
        {
          v18 = -v18;
        }

        if (v18 >> 5 <= 0xE0)
        {
          v12 = v12 + v17 * *(a3 + 47520) * 299792458.0;
        }
      }

      if (fabs(v12) > 30.0)
      {
        EvLog_v("NK_IntConstel_TO_IntMeas:  Large BDS-GPS Time Offset  %d m > 30 m");
        return;
      }

      v13 = 0;
      v14 = 1.0;
      if (v10)
      {
        v14 = 9.0;
      }

      *(result + 15560) = v12;
      *(result + 15568) = v14;
      v15 = 2;
    }

    else
    {
      if (v10)
      {
        return;
      }

      v13 = 0;
      v15 = 2;
      v12 = 0.0;
      v14 = 100.0;
    }

    v19 = 27084;
    v20 = 1648;
  }

  else
  {
    if (v11 != 2 || *(a2 + 60492) != 1)
    {
      return;
    }

    if (*(a3 + 17192) == 1)
    {
      v12 = vcvtd_n_f64_s32(*(a3 + 17132), 0x1EuLL) * -299792458.0;
      if (fabs(v12) > 40.0)
      {
        EvLog_v("NK_IntConstel_TO_IntMeas:  Large GLO-GPS Time Offset  %d m > 40m");
        return;
      }

      v13 = 0;
      v14 = 1.0;
      if (v10)
      {
        v14 = 9.0;
      }

      *(result + 15528) = v12;
      *(result + 15536) = v14;
      v15 = 1;
    }

    else
    {
      if (v10)
      {
        return;
      }

      v13 = 0;
      v15 = 1;
      v12 = 0.0;
      v14 = 100.0;
    }

    v19 = 27082;
    v20 = 1640;
  }

  v21 = 1632;
LABEL_51:
  v22 = (*(a2 + v21) - *(a2 + v20)) * 299792458.0;
  v26 = 0;
  v25[1] = 0.0;
  v27 = 0;
  *&v28[12] = 0u;
  v29 = 0u;
  v30 = 0;
  *v28 = v12;
  *&v28[8] = v14;
  LOBYTE(v25[0]) = 1;
  HIDWORD(v25[0]) = 2;
  *(&v29 + 4) = 0x4415AF1D78B58C40;
  if (KFSt_DMeas_Update(v13, v15, 0xCu, v25, (result + 976), (result + v19), v22))
  {
    v23 = *v8;
    if (v23 == 4)
    {
      *(v8 + 419) = HIDWORD(v25[0]);
      v24 = *(v8 + 1);
      if (v24 == 5)
      {
        v8[1738] = 1;
      }

      else if (v24 == 4)
      {
        v8[1737] = 1;
        v8[32] = 1;
        *(a2 + 60528) = *v28;
      }
    }

    else if (v23 == 2)
    {
      *(v8 + 418) = HIDWORD(v25[0]);
      v8[1736] = 1;
      v8[8] = 1;
      *(v8 + 1) = *v28;
    }

    if (g_Logging_Cfg >= 7)
    {
      EvLog_v("NK_IntConstel_TO_IntMeas: Time Offset applied:  %d  %d");
    }
  }
}

unsigned __int16 *Gnm02_13ReqNewNafInstn(int a1, const char *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (Gnm02_32GetInstnFromNafId(a1))
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx %s\n", v17);
LABEL_27:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    return 0;
  }

  v4 = 2u;
  do
  {
    if (!*&g_GnmInstances[v4])
    {
      v6 = gnssOsa_Calloc("Gnm02_11ReqNewInstn", 139, 1, 0x10uLL);
      *&g_GnmInstances[v4] = v6;
      if (!v6)
      {
LABEL_25:
        if (g_LbsOsaTrace_Config < 2)
        {
          return 0;
        }

        bzero(__str, 0x3C6uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NewInstn %s\n", v18);
        goto LABEL_27;
      }

      v7 = v6;
      v8 = LOWORD(g_GnmInstances[0]);
LABEL_11:
      if (v8 >> 2 < 0xFFF)
      {
        ++v8;
      }

      else
      {
        v8 = 1;
      }

      v9 = 2u;
      do
      {
        v10 = *&g_GnmInstances[v9];
        if (v10 && *v10 == v8)
        {
          goto LABEL_11;
        }

        v9 += 2;
      }

      while (v9 != 8);
      g_GnmInstances[0] = __PAIR32__(HIWORD(g_GnmInstances[0]), v8) + 0x10000;
      *v6 = v8;
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm02_11ReqNewInstn", 2057, *v7);
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v12 = 2u;
      while (*&g_GnmInstances[v12] != v7)
      {
        v12 += 2;
        if (v12 == 8)
        {
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn\n");
            goto LABEL_34;
          }

LABEL_37:
          Gnm02_21DeleteInstn(v7);
          return 0;
        }
      }

      if (*(v7 + 2))
      {
        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_37;
        }

        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType\n");
      }

      else
      {
        if (!*(v7 + 1))
        {
          v15 = gnssOsa_Calloc("Gnm02_04AddNafParams", 100, 1, 0x50uLL);
          *(v7 + 1) = v15;
          if (v15)
          {
            *(v7 + 2) = 1;
            *v15 = a1;
            if (g_LbsOsaTrace_Config >= 4)
            {
              bzero(__str, 0x3C6uLL);
              v16 = mach_continuous_time();
              snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx %s GNMInstn,%u,NaftInstn,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm02_13ReqNewNafInstn", 2057, a2, *v7, a1);
              gnssOsa_PrintLog(__str, 4, 1, 0);
            }

            return v7;
          }

LABEL_35:
          if (g_LbsOsaTrace_Config >= 2)
          {
            bzero(__str, 0x3C6uLL);
            v13 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NewNafInst %s\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm02_13ReqNewNafInstn", 2049, a2);
            gnssOsa_PrintLog(__str, 2, 1, 0);
          }

          goto LABEL_37;
        }

        if (g_LbsOsaTrace_Config < 2)
        {
          goto LABEL_37;
        }

        bzero(__str, 0x3C6uLL);
        mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      }

LABEL_34:
      gnssOsa_PrintLog(__str, 2, 1, 0);
      goto LABEL_35;
    }

    v4 += 2;
  }

  while (v4 != 8);
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm02_11ReqNewInstn", 2054);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    goto LABEL_25;
  }

  return 0;
}

uint64_t Gnm02_32GetInstnFromNafId(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = 2u;
  while (1)
  {
    result = *&g_GnmInstances[v2];
    if (result)
    {
      v4 = *(result + 8);
      if (v4)
      {
        if (*(result + 2) == 1 && *v4 == a1)
        {
          break;
        }
      }
    }

    v2 += 2;
    if (v2 == 8)
    {
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NafId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 68, "Gnm02_32GetInstnFromNafId", 2052, a1);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      return 0;
    }
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNMInstn,%u,NafInstn,%u found\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm02_32GetInstnFromNafId", **&g_GnmInstances[v2], a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
    return *&g_GnmInstances[v2];
  }

  return result;
}

BOOL Gnm02_21DeleteInstn(unsigned __int16 *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = 2u;
    while (*&g_GnmInstances[v2] != a1)
    {
      v2 += 2;
      if (v2 == 8)
      {
        goto LABEL_5;
      }
    }

    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Deleted GNMInstn,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm02_21DeleteInstn", *a1);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v7 = *(a1 + 1);
    if (v7)
    {
      if (*(a1 + 2) == 1)
      {
        v8 = *(v7 + 72);
        if (v8)
        {
          free(v8);
        }

        *(v7 + 72) = 0;
        v4 = (*(v7 + 4) & 7) != 0;
      }

      else
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm02_21DeleteInstn", 2050, *(a1 + 2));
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        v4 = 0;
      }

      v11 = *(a1 + 1);
      if (v11)
      {
        free(v11);
      }

      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnInfo\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm02_21DeleteInstn", 2050);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v4 = 0;
    }

    v12 = 2u;
    while (*&g_GnmInstances[v12] != a1)
    {
      v12 += 2;
      if (v12 == 8)
      {
        return v4;
      }
    }

    free(a1);
    *&g_GnmInstances[v12] = 0;
    if (HIWORD(g_GnmInstances[0]))
    {
      --HIWORD(g_GnmInstances[0]);
    }
  }

  else
  {
LABEL_5:
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm02_21DeleteInstn", 2050);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    return 0;
  }

  return v4;
}

BOOL Gnm02_23StopNafSession(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Clearing Instance NafID,%u,PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 73, "Gnm02_23StopNafSession", *v2, *(v2 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v4 = *(v2 + 4);
  v5 = v4 > 4;
  v6 = (1 << v4) & 0x16;
  if (!v5 && v6 != 0)
  {
    return Gnm10_28StopPositioning(a1);
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v9 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx PosnType,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm02_23StopNafSession", 770, *(v2 + 4));
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 0;
}

uint64_t Gnm02_24AbortAllNafSessions(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Aborting all NAF sessions\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm02_24AbortAllNafSessions");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = 2u;
  do
  {
    result = *&g_GnmInstances[v3];
    if (result)
    {
      v5 = *(result + 8);
      if (v5)
      {
        if (*(result + 2) == 1)
        {
          if ((v5[1] & 7) != 0 && *(v5 + 64) == 1)
          {
            v6 = *(v5 + 7);
            v7 = *v5;
            *__str = 0;
            v9 = 0;
            v10 = 0;
            v11 = 1;
            v6(a1, v7, __str);
            result = *&g_GnmInstances[v3];
          }

          Gnm02_23StopNafSession(result);
          result = Gnm02_21DeleteInstn(*&g_GnmInstances[v3]);
        }
      }
    }

    v3 += 2;
  }

  while (v3 != 8);
  return result;
}

unsigned __int16 *Gnm02_31GetInstnFromInstnId(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = 2u;
  while (1)
  {
    result = *&g_GnmInstances[v2];
    if (result)
    {
      if (*result == a1)
      {
        break;
      }
    }

    v2 += 2;
    if (v2 == 8)
    {
      if (g_LbsOsaTrace_Config >= 5)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm02_31GetInstnFromInstnId", 2052, a1);
        gnssOsa_PrintLog(__str, 5, 1, 0);
      }

      return 0;
    }
  }

  return result;
}

double GAL_EphReal2Kep(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = 3;
  *(a2 + 12) = *(a1 + 14);
  v2 = *(a1 + 15);
  if (v2 <= 0x31)
  {
    if (v2 < 2)
    {
      v3 = -15;
      goto LABEL_59;
    }

    if (v2 == 2)
    {
      v3 = -14;
      goto LABEL_59;
    }

    if (v2 < 4)
    {
      v3 = -13;
      goto LABEL_59;
    }

    if (v2 == 4)
    {
      v3 = -12;
      goto LABEL_59;
    }

    if (v2 < 7)
    {
      v3 = -11;
      goto LABEL_59;
    }

    if (v2 < 9)
    {
      v3 = -10;
      goto LABEL_59;
    }

    if (v2 < 0xC)
    {
      v3 = -9;
      goto LABEL_59;
    }

    if (v2 < 0x10)
    {
      v3 = -8;
      goto LABEL_59;
    }

    if (v2 < 0x16)
    {
      v3 = -7;
      goto LABEL_59;
    }

    if (v2 < 0x1F)
    {
      v3 = -6;
      goto LABEL_59;
    }

    v4 = v2 >= 0x2C;
    v3 = -5;
    goto LABEL_13;
  }

  if (v2 <= 0x4B)
  {
    if (v2 < 0x38)
    {
      v3 = -4;
      goto LABEL_59;
    }

    v4 = v2 >= 0x44;
    v3 = -3;
    goto LABEL_13;
  }

  if (v2 <= 0x64)
  {
    if (v2 >= 0x51)
    {
      if (v2 >= 0x5D)
      {
        v3 = 0;
      }

      else
      {
        v3 = -1;
      }
    }

    else
    {
      v3 = -2;
    }

    goto LABEL_59;
  }

  if (v2 <= 0x7D)
  {
    if (v2 < 0x67)
    {
      v3 = 0;
      goto LABEL_59;
    }

    if (v2 < 0x6D)
    {
      v3 = 1;
      goto LABEL_59;
    }

    v4 = v2 >= 0x76;
    v3 = 2;
    goto LABEL_13;
  }

  if (v2 <= 0x96)
  {
    if (v2 < 0x82)
    {
      v3 = 3;
      goto LABEL_59;
    }

    if (v2 < 0x8B)
    {
      v3 = 4;
      goto LABEL_59;
    }

    v5 = v2 == 150;
    v3 = 5;
    goto LABEL_43;
  }

  if (v2 <= 0xAF)
  {
    v4 = v2 >= 0xA6;
    v3 = 6;
    goto LABEL_13;
  }

  if (v2 <= 0xC8)
  {
    v4 = v2 >= 0xBE;
    v3 = 7;
    goto LABEL_13;
  }

  if (v2 <= 0xE1)
  {
    v4 = v2 >= 0xD6;
    v3 = 8;
    goto LABEL_13;
  }

  if (v2 <= 0xFA)
  {
    v4 = v2 >= 0xEE;
    v3 = 9;
LABEL_13:
    if (v4)
    {
      ++v3;
    }

    goto LABEL_59;
  }

  v5 = v2 == 255;
  v3 = 14;
LABEL_43:
  if (v5)
  {
    ++v3;
  }

LABEL_59:
  *(a2 + 19) = v3;
  *(a2 + 18) = *(a1 + 202);
  v6 = v2 == 255;
  *(a2 + 14) = v6 << 6;
  v7 = *(a1 + 201);
  v8 = *(a1 + 198);
  v9 = *(a1 + 199);
  v10 = *(a1 + 196);
  *(a2 + 14) = (4 * v8) | (8 * v9) | (32 * v10) | (v6 << 6) | v7;
  *(a2 + 15) = v9 == 0;
  *(a2 + 16) = (v7 | v8) == 0;
  *(a2 + 17) = (v9 | v10) == 0;
  *(a2 + 20) = *(a1 + 194);
  *(a2 + 22) = *(a1 + 12) + 1024;
  v11 = *(a1 + 16);
  *(a2 + 24) = *(a1 + 144);
  *(a2 + 28) = v11;
  *(a2 + 40) = *(a1 + 152);
  v12 = *(a1 + 184);
  *(a2 + 56) = *(a1 + 168);
  *(a2 + 64) = v12;
  *(a2 + 72) = v12;
  *(a2 + 80) = v12 * 1.79327032;
  *(a2 + 88) = v12 * 1.79327032;
  *(a2 + 96) = v12;
  *(a2 + 104) = *(a1 + 88);
  *(a2 + 120) = *(a1 + 112);
  *(a2 + 136) = *(a1 + 96);
  *(a2 + 152) = *(a1 + 128);
  v13 = *(a1 + 24);
  *(a2 + 168) = *(a1 + 80);
  *(a2 + 176) = v13;
  *(a2 + 184) = *(a1 + 40);
  *(a2 + 200) = *(a1 + 48);
  result = *(a1 + 32);
  v15 = *(a1 + 72);
  *(a2 + 216) = *(a1 + 64);
  *(a2 + 224) = result;
  *(a2 + 232) = v15;
  return result;
}

double *NK_Comp_DOPS(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  v43 = *MEMORY[0x29EDCA608];
  v34 = 0u;
  v36 = 0;
  memset(&v33[1], 0, 32);
  v35 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33[0] = 20000.0;
  *&v34 = 0x40D3880000000000;
  v37 = 0x40D3880000000000;
  v40 = 0x40D3880000000000;
  memset(&v26[1], 0, 32);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = 1.99960002e14;
  if (*(a1 + 15411) == 1)
  {
    v4 = *(a1 + 15440) + fabs((*a2 - *(a1 + 15432)) * 0.001);
  }

  *&v27 = v4;
  v26[0] = v4;
  v5 = 1.99960002e14;
  if (*(a1 + 15412) == 1)
  {
    v5 = *(a1 + 15456) + fabs((*a2 - *(a1 + 15448)) * 0.001);
  }

  *(&v29 + 1) = v5;
  v6 = 1.99960002e14;
  if (*(a1 + 15410) == 1)
  {
    v6 = *(a1 + 15424) + fabs((*a2 - *(a1 + 15416)) * 0.001);
  }

  v7 = 0;
  v32 = v6;
  do
  {
    if (v26[v7] > 1.99960002e14)
    {
      v26[v7] = 1.99960002e14;
    }

    v7 += 5;
  }

  while (v7 != 20);
  v24 = a1 + 12288;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a1 + 14208;
  v12 = (a1 + 13184);
  v13 = 0.0;
  do
  {
    if (*(v11 + v8) == 1)
    {
      v14 = vmulq_n_f64(*(v3 + 7048), *(v3 + 1936));
      v41 = vextq_s8(v14, v14, 8uLL);
      v42 = *(v3 + 1928);
      v15 = *(a2 + v8 + 2416) ? a2 + 924 : v12;
      v16 = *&v15[2 * v8] >= 0.0001 ? *&v15[2 * v8] : 0.0001;
      DOP4_Upd_W_Meas(v41.i64, v16, v26);
      if (v16 < 800000.0)
      {
        ++v9;
        v13 = v13 + v16;
        if (*(a2 + v8 + 7080) == 1)
        {
          DOP4_Upd_U_Meas(&v41, v33);
          ++v10;
        }
      }
    }

    ++v8;
    v3 += 40;
  }

  while (v8 != 128);
  if (v10 <= 3)
  {
    DOP4_Upd_U_Elem(2, v33);
  }

  result = DOP4_Calc_U(v33, a2 + 7742);
  if (v9)
  {
    v18 = v13 / v9;
  }

  else
  {
    v18 = 0.0;
  }

  *(a1 + 14336) = v18;
  v19 = v32 * 8.0;
  *(a1 + 15488) = v32 * 8.0;
  v20.f64[0] = *(&v29 + 1);
  v21 = *&v27;
  v22 = v26[0] + v26[0];
  *(a1 + 15496) = v26[0] + v26[0];
  *(a1 + 15504) = v21 + v21;
  v20.f64[1] = v26[1];
  v23 = vmulq_f64(v20, xmmword_299050490);
  *(v24 + 3224) = v23;
  if (v19 > 3600.0)
  {
    *(a1 + 15488) = 0x40AC200000000000;
  }

  if (v23.f64[0] > 3600.0)
  {
    *(v24 + 3224) = 0x40AC200000000000;
  }

  if (v22 > 900.0 || v21 + v21 > 900.0)
  {
    *(v24 + 3208) = vdupq_n_s64(0x408C200000000000uLL);
    *(a1 + 15520) = 0;
  }

  return result;
}

BOOL NK_Get_Ext_Time(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = (a2 + 59982);
  *(a2 + 60000) = 0;
  *(a2 + 60016) = 0;
  *(a2 + 60072) = 0;
  *(a2 + 60088) = 0;
  v4 = *(a2 + 32);
  if (v4 > 3.0 && v4 < 604797.0)
  {
    v7 = result;
    v24 = 0;
    result = Get_FSP_Time(result, (a2 + 59982), (a2 + 59984), (a2 + 59992), &v24);
    if (result)
    {
      v8 = *(v3 + 1);
      v9 = *(a2 + 1528);
      v10 = v8 - (v9 - *(a2 + 1632));
      *(v3 + 1945) = v10;
      v11 = *(v3 + 5);
      v12 = *(a2 + 20);
      if (v11 < g_TOW_Stat_Var99_Table[v12])
      {
        v13 = v10 * 1000.0;
        v14 = -0.5;
        if (v13 > 0.0)
        {
          v14 = 0.5;
        }

        v15 = v13 + v14;
        v16 = 2147483650.0;
        if (v15 <= 2147483650.0)
        {
          v16 = -2147483650.0;
          if (v15 >= -2147483650.0)
          {
            v16 = v15;
          }
        }

        *(v3 + 18) = 1;
        *(v3 + 11) = 1;
        *(v3 + 19) = v7;
        *(v3 + 21) = v16;
        *(v3 + 25) = v11 * 1000000.0;
        v17 = *(a3 + 241);
        v18 = 36.0;
        if (*(a3 + 241))
        {
          v18 = 1.0e20;
        }

        *(v3 + 37) = v18;
        v19 = v24;
        *(v3 + 15) = v24;
        if (v11 <= 0.00000025 || v12 <= 8)
        {
          v20.f64[0] = v9 + v16 * 0.001 - v8;
          *(v3 + 90) = 1;
          *(v3 + 47) = 1;
          *(v3 + 55) = v7;
          v20.f64[1] = v11;
          *(a2 + 60096) = vmulq_f64(v20, xmmword_2990504C0);
          v21 = 16.0;
          if (v17)
          {
            v21 = 1.0e20;
          }

          *(v3 + 73) = v21;
          *(v3 + 51) = v19;
        }

        v22 = *v3;
        *(a2 + 1542) = *v3;
        *(a2 + 26) = v22;
      }
    }

    if (*(v3 + 90) == 1 && (v23 = *(v3 + 61), v23 < 2.25e10))
    {
      *(a3 + 15410) = 1;
      *(a3 + 15416) = *(v3 + 55);
      *(a3 + 15424) = v23;
    }

    else if (*(a3 + 15410) == 1 && (v7 - *(a3 + 15416)) >= 0x1D4C1)
    {
      *(a3 + 15410) = 0;
    }
  }

  return result;
}

uint64_t NK_Prop_Cov_Mat(double a1, double *a2)
{
  v10[12] = *MEMORY[0x29EDCA608];
  v3 = 1;
  v10[0] = a1;
  v10[1] = a1;
  v4 = 16843009;
  v5 = 1;
  v10[2] = a1;
  v10[3] = a1;
  *v6 = 117637633;
  *v8 = 168101125;
  v7 = 2312;
  v9 = 3083;
  v10[4] = a1;
  v10[5] = a1;
  return stphiu(a2, 0xCu, v10, v8, 6, v6, &v3);
}

uint64_t Gnm14_11HandleStartPosResp(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_START_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_11HandleStartPosResp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm14_11HandleStartPosResp", 517);
    v9 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v9, 1, 0);
    return 0;
  }

  v3 = *(a1 + 14);
  v4 = *(a1 + 12);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm14_11HandleStartPosResp", v4, *(a1 + 14));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v4);
  if (!InstnFromInstnId)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm14_11HandleStartPosResp", 2052, v4);
    v9 = 2;
    goto LABEL_14;
  }

  v7 = InstnFromInstnId;
  if (!*(InstnFromInstnId + 1))
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", v12);
LABEL_19:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_20:
    Gnm02_21DeleteInstn(v7);
    return 0;
  }

  if (*(InstnFromInstnId + 2) != 1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", v13);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  Gnm11_07StartPosResp(InstnFromInstnId, v3 == 255);
  return 0;
}

uint64_t Gnm14_12HandleStopPosResp(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_STOP_POS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_12HandleStopPosResp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 69, "Gnm14_12HandleStopPosResp", 517);
    v9 = 1;
LABEL_14:
    gnssOsa_PrintLog(__str, v9, 1, 0);
    return 0;
  }

  v3 = *(a1 + 14);
  v4 = *(a1 + 12);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SessId,%u,RespCode,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm14_12HandleStopPosResp", v4, *(a1 + 14));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  InstnFromInstnId = Gnm02_31GetInstnFromInstnId(v4);
  if (!InstnFromInstnId)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Instn SessId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v4);
    v9 = 2;
    goto LABEL_14;
  }

  v7 = InstnFromInstnId;
  if (*(InstnFromInstnId + 1))
  {
    if (*(InstnFromInstnId + 2) == 1)
    {
      Gnm11_08StopPosResp(InstnFromInstnId, v3 == 255);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 87, "Gnm14_12HandleStopPosResp", 770, *(v7 + 2));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      Gnm02_21DeleteInstn(v7);
    }

    gnssOsa_flushNv();
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InstnInfo SessId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm14_12HandleStopPosResp", 2052, v4);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    Gnm02_21DeleteInstn(v7);
  }

  return 0;
}

uint64_t Gnm14_13HandleClearGNSSRsp(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_RSP\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm14_13HandleClearGNSSRsp");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = 78;
      if (v3)
      {
        v5 = 89;
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,%c,Mask0x%X\n", v4, "GNM", 73, "Gnm14_13HandleClearGNSSRsp", v5, *(a1 + 16));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if (v3 && ((*(a1 + 17) & 0x401) == 0 || (Gnm55_ClearVar_GNSS_FW_NV() & 1) != 0))
    {
      if (byte_2A13EE541 == 1)
      {
        byte_2A13EE541 = 0;
        v6 = 0;
LABEL_15:
        Gnm11_00ApiStatusCB(v6, 0, 0, 16);
      }
    }

    else if (byte_2A13EE541 == 1)
    {
      byte_2A13EE541 = 0;
      v6 = 11;
      goto LABEL_15;
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 69, "Gnm14_13HandleClearGNSSRsp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void Comp_AzEl(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _WORD *a5, _DWORD *a6, unsigned int *a7)
{
  v31 = *MEMORY[0x29EDCA608];
  if (*(a3 + 120))
  {
    v11 = 0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    do
    {
      *(&v28 + v11) = *(a3 + 8 + v11) - *(result + v11);
      v11 += 8;
    }

    while (v11 != 24);
    v12 = 0.0;
    v13 = 2;
    do
    {
      v12 = v12 + *(&v28 + v13) * *(&v28 + v13);
      v14 = v13-- + 1;
    }

    while (v14 > 1);
    v15 = 0;
    v16 = sqrt(v12);
    do
    {
      *(&v28 + v15) = *(&v28 + v15) / v16;
      v15 += 8;
    }

    while (v15 != 24);
    v17 = 0;
    memset(v27, 0, sizeof(v27));
    v18 = v28;
    v19 = v29;
    v20 = (a2 + 16);
    v21 = v30;
    do
    {
      v22 = *(v20 - 1) * v19 + *(v20 - 2) * v18;
      v23 = *v20;
      v20 += 3;
      v27[v17++] = v22 + v23 * v21;
    }

    while (v17 != 3);
    AzEl_SinCos(v27, a7, a6);
    AzEl_RadDeg(a7, a6);
    v24 = *a7;
    if ((*a7 & 0x80000000) != 0)
    {
      v25 = -360 - v24;
      if (v24 > 0xFFFFFE98)
      {
        v25 = 0;
      }

      v26 = ((__PAIR64__(v25, v24) - 4294966936u) >> 32) / 0x168;
      if (v24 < 0xFFFFFE98)
      {
        ++v26;
      }

      *a7 = v24 + 360 * v26 + 360;
    }

    *a4 = *a6;
    *a5 = *a7;
  }
}

int8x8_t Decode_GPS_Health_From_AS_Subfr(const unsigned int *a1, int8x8_t *a2)
{
  v2 = a1[8];
  v3 = a1[9];
  v4.i8[0] = a1[7] & 0x1F;
  v4.i8[1] = (v2 >> 18) & 0x1F;
  v4.i8[2] = (v2 >> 12) & 0x1F;
  v4.i8[3] = (v2 >> 6) & 0x1F;
  v4.i8[4] = v2 & 0x1F;
  v4.i8[5] = (v3 >> 18) & 0x1F;
  v4.i8[6] = (v3 >> 12) & 0x1F;
  v4.i8[7] = (v3 >> 6) & 0x1F;
  v5 = vmovl_u8(v4);
  v6 = vmovl_high_u16(v5);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v8 = v7;
  v9 = vmovl_u16(*v5.i8);
  v7.i64[0] = v9.u32[0];
  v7.i64[1] = v9.u32[1];
  v10 = vdupq_n_s64(0xE4FE7F3uLL);
  result = vand_s8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v7)), vshlq_u64(v10, vsubw_high_u32(0, v9))), vuzp1q_s32(vshlq_u64(v10, vnegq_s64(v8)), vshlq_u64(v10, vsubw_high_u32(0, v6))))), 0x101010101010101);
  *a2 = result;
  return result;
}

double *Comp_Track_velLOS(double a1, double a2, double *result, double *a4)
{
  if (fabs(a1) > 0.0001 || fabs(a2) > 0.0001)
  {
    v10 = 57.2957795 / (a1 * a1 + a2 * a2);
    *a4 = v10 * (result[3] * a1 - *result * a2);
    a4[1] = v10 * (result[4] * a1 - result[1] * a2);
    v9 = v10 * -(result[2] * a2);
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *a4 = _Q0;
    v9 = 1.0;
  }

  a4[2] = v9;
  return result;
}

uint64_t GN_ABDS_Set_CNAV_Eph_El(unsigned __int8 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_CNAV_Eph_El"))
  {
    return 0;
  }

  if (g_Logging_Cfg < 5)
  {
    EvLog_d("GN_ABDS_Set_CNAV_Eph_El: ", *a1);
  }

  else
  {
    EvLog_ABDS_CNAV_Eph_El(a1);
  }

  v2 = *a1;
  if ((v2 - 64) <= 0xFFFFFFC0)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SVid = %d <%d or >%d, Out of range!");
    return 0;
  }

  v3 = a1[1];
  if (v3 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SatH1 = %d >1, Out of range!");
    return 0;
  }

  v4 = a1[2];
  if (v4 >= 4)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SV_type = %d >3, Out of range!");
    return 0;
  }

  v5 = a1[3];
  if (v5 >= 7)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Fit_hours = %d >6, Out of range!");
    return 0;
  }

  v6 = *(a1 + 1);
  if (v6 >> 7 >= 0x627)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: sSOW = %d >201599, Out of range!");
    return 0;
  }

  v7 = *(a1 + 4);
  if (v7 >= 0x2000)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Week = %d >=8191, Out of range!");
    return 0;
  }

  v8 = *(a1 + 5);
  if (v8 >= 0x83B)
  {
    goto LABEL_18;
  }

  v9 = *(a1 + 6);
  if (v9 >= 0x83B)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: toc = %d >2106, Out of range!");
    return 0;
  }

  v12 = *(a1 + 7);
  if (v12 >= 0x83B)
  {
LABEL_18:
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: toe = %d >2106, Out of range!");
    return 0;
  }

  v13 = *(a1 + 4);
  if ((v13 - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: delta_A = %d <-2^25 or >=2^25, Out of range!");
    return 0;
  }

  v14 = *(a1 + 5);
  if ((v14 - 0x1000000) >> 25 != 127)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: A_dot = %d <-2^24 or >=2^24, Out of range!");
    return 0;
  }

  v15 = *(a1 + 6);
  if ((v15 - 0x2000000) >> 26 != 63)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dN = %d <-2^25 or >=2^25, Out of range!");
    return 0;
  }

  v16 = *(a1 + 7);
  if ((v16 - 0x400000) >> 23 != 511)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dN_dot = %d <-2^22 or >=2^22, Out of range!");
    return 0;
  }

  v17 = *(a1 + 4);
  if ((v17 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: M0 = %d <-2^32 or >=2^32, Out of range!");
    return 0;
  }

  v18 = *(a1 + 5);
  if (v18 >> 33)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: e = %d >=2^33, Out of range!");
    return 0;
  }

  if (vcvtd_n_f64_u64(v18, 0x22uLL) > dbl_2990504E0[(v2 - 6) < 0x35])
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: e = %g > %g, Unrealistic value!");
    return 0;
  }

  v19 = *(a1 + 6);
  if ((v19 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: w = %d <-2^32 or >=2^32, Out of range!");
    return 0;
  }

  v20 = *(a1 + 7);
  if ((v20 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega0 = %d <-2^32 or >=2^32, Out of range!");
    return 0;
  }

  v21 = *(a1 + 8);
  if ((v21 - 0x100000000) <= 0xFFFFFFFDFFFFFFFFLL)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: i0 = %d <-2^32 or >=2^32, Out of range!");
    return 0;
  }

  v22 = *(a1 + 18);
  if ((v22 - 0x40000) <= 0xFFF7FFFF)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega_dot = %d <-2^18 or >=2^18, Out of range!");
    return 0;
  }

  v23 = v22 * 1.78578867e-13;
  if (v23 < -0.00000198862815)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega_dot = %e < %e, Unrealistic value!");
    return 0;
  }

  if (v23 > 0.000000314159265)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Omega_dot = %e > %e, Unrealistic value!");
    return 0;
  }

  v24 = *(a1 + 38);
  if (((v24 - 0x4000) & 0x8000) == 0)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: i_dot = %d <-2^14 or >=2^14, Out of range!");
    return 0;
  }

  v25 = *(a1 + 21);
  if ((v25 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Crs = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v26 = *(a1 + 22);
  if ((v26 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Crc = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v27 = *(a1 + 23);
  if ((v27 - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Cus = %d <-2^20 or >=2^20, Out of range!");
    return 0;
  }

  v28 = *(a1 + 24);
  if ((v28 - 0x100000) >> 21 != 2047)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: Cuc = %d <-2^20 or >=2^20, Out of range!");
    return 0;
  }

  v29 = *(a1 + 25);
  if ((v29 - 0x1000000) >> 25 != 127)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: af0 = %d <-2^24 or >=2^24, Out of range!");
    return 0;
  }

  v53 = *(a1 + 26);
  if ((v53 - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: af1 = %d <-2^21 or >=2^21, Out of range!");
    return 0;
  }

  v52 = *(a1 + 54);
  if (((v52 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: af2 = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v51 = a1[112];
  if (v51 >= 0x20)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Ocb = %d >31, Out of range!");
    return 0;
  }

  v50 = a1[113];
  if (v50 >= 8)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Oc1 = %d >7, Out of range!");
    return 0;
  }

  v49 = a1[114];
  if (v49 >= 8)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Oc2 = %d >7, Out of range!");
    return 0;
  }

  v48 = a1[115];
  if (v48 >= 0x20)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: SISA_Oce = %d >31, Out of range!");
    return 0;
  }

  v47 = *(a1 + 58);
  if (((v47 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: TGD_B1C_p = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v46 = *(a1 + 59);
  if (((v46 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: TGD_B2a_p = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v45 = *(a1 + 60);
  if (((v45 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: ISC_B1C_d = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v44 = *(a1 + 61);
  if (((v44 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: ISC_B2a_d = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v43 = a1[124];
  if (v43 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dif_B1C = %d >1, Out of range!");
    return 0;
  }

  v42 = a1[125];
  if (v42 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: sif_B1C = %d >1, Out of range!");
    return 0;
  }

  v41 = a1[126];
  if (v41 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: aif_B1C = %d >1, Out of range!");
    return 0;
  }

  v40 = a1[127];
  if (v40 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: dif_B2a = %d >1, Out of range!");
    return 0;
  }

  v39 = a1[128];
  if (v39 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: sif_B2a = %d >1, Out of range!");
    return 0;
  }

  v38 = a1[129];
  if (v38 >= 2)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: aif_B2a = %d >1, Out of range!");
    return 0;
  }

  v37 = a1[130];
  if ((v37 - 16) <= 0xDFu)
  {
    EvCrt_v("GN_ABDS_Set_CNAV_Eph_El: FAILED: URAI = %d <-16 or >15, Out of range!");
    return 0;
  }

  v36 = p_NA;
  v35 = v2 - 1;
  v30 = p_NA + 152 * (v2 - 1);
  *(v30 + 10120) = v2;
  *(v30 + 10121) = v3;
  *(v30 + 10122) = v4;
  if (v5 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v5;
  }

  *(v30 + 10123) = v31;
  *(v30 + 10124) = v6;
  *(v30 + 10128) = v7;
  *(v30 + 10132) = v8;
  *(v30 + 10136) = v9;
  *(v30 + 10140) = v12;
  *(v30 + 10144) = v13;
  *(v30 + 10148) = v14;
  *(v30 + 10152) = v15;
  *(v30 + 10156) = v16;
  *(v30 + 10160) = v17;
  *(v30 + 10168) = v18;
  *(v30 + 10176) = v19;
  *(v30 + 10184) = v20;
  *(v30 + 10192) = v21;
  *(v30 + 10200) = v22;
  *(v30 + 10204) = v24;
  *(v30 + 10206) = *(a1 + 78);
  *(v30 + 10212) = v25;
  *(v30 + 10216) = v26;
  *(v30 + 10220) = v27;
  *(v30 + 10224) = v28;
  *(v30 + 10228) = v29;
  *(v30 + 10232) = v53;
  if (a1[132])
  {
    v32 = 5;
  }

  else
  {
    v32 = 3;
  }

  *(v30 + 10116) = v32;
  *(v30 + 10236) = v52;
  *(v30 + 10238) = *(a1 + 55);
  *(v30 + 10240) = v51;
  *(v30 + 10241) = v50;
  *(v30 + 10242) = v49;
  *(v30 + 10243) = v48;
  *(v30 + 10244) = v47;
  *(v30 + 10246) = v46;
  *(v30 + 10248) = v45;
  *(v30 + 10250) = v44;
  *(v30 + 10252) = v43;
  *(v30 + 10253) = v42;
  *(v30 + 10254) = v41;
  *(v30 + 10255) = v40;
  *(v30 + 10256) = v39;
  *(v30 + 10257) = v38;
  *(v30 + 10258) = v37;
  *(v30 + 10259) = a1[131];
  *(v36 + v35 + 221) = 1;
  v33 = *(p_api + 48);
  if (*(v33 + 16) == 1 && *v33 >= 3)
  {
    v34 = *(v33 + 40) + 604800 * *(v33 + 32);
  }

  else
  {
    v34 = 0;
  }

  *(v30 + 10112) = v34;
  v10 = 1;
  Debug_Log_BDS_Eph(1, (v30 + 10112));
  return v10;
}

uint64_t GN_ABDS_Set_Alm_El(unsigned __int8 *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ABDS_Set_Alm"))
  {
    return 0;
  }

  EvLog_d("GN_ABDS_Set_Alm: ", a1[1]);
  v2 = a1[1];
  if ((v2 - 64) <= 0xFFFFFFC0)
  {
    EvCrt_v("GN_ABDS_Set_Alm: SVid = %d <%d or >%d, Out of range!");
    return 0;
  }

  v3 = *(a1 + 15);
  if (((v3 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: af0 = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v4 = *(a1 + 16);
  if (((v4 - 1024) >> 11) <= 0x1Eu)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: af1 = %d <-2^10 or >=2^10, Out of range!");
    return 0;
  }

  v5 = dbl_2990504E0[(v2 - 6) < 0x35];
  if ((v2 - 59) >= 0xFFFFFFCB)
  {
    v5 = 0.1;
  }

  v6 = 7000.0;
  if ((v2 - 59) < 0xFFFFFFCB)
  {
    v6 = dbl_2990504F0[(v2 - 6) < 0x35];
  }

  v7 = *(a1 + 1);
  v8 = vcvtd_n_f64_u32(v7, 0xBuLL);
  if (v8 < dbl_299050500[(v2 - 59) < 0xFFFFFFCB])
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: sqrtA = %g < %g, Unrealistic value!");
    return 0;
  }

  if (v8 > v6)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: sqrtA = %g > %g, Unrealistic value!");
    return 0;
  }

  v9 = *(a1 + 2);
  if (vcvtd_n_f64_u32(v9, 0x15uLL) > v5)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: e = %g > %g, Unrealistic value!");
    return 0;
  }

  v10 = *(a1 + 5);
  if ((v10 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: Omega0 = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v11 = *(a1 + 6);
  v12 = v11 * 1.14290475e-11;
  if (v12 < -0.00000198862815)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: OmegaDot = %e < %e, Unrealistic value!");
    return 0;
  }

  if (v12 > 0.000000314159265)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: OmegaDot = %e > %e, Unrealistic value!");
    return 0;
  }

  v13 = *(a1 + 3);
  if ((v13 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: w = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v14 = *(a1 + 4);
  if ((v14 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: M0 = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v15 = *(a1 + 17);
  if (v15 == 0xFFFF)
  {
    if (v2 <= 0x1E)
    {
      EvCrt_v("GN_ABDS_Set_Alm: FAILED: SVHealth Unknown for SV %d in range 1..30, Out of range!");
      return 0;
    }
  }

  else if (v15 >= 0x200)
  {
    EvCrt_v("GN_ABDS_Set_Alm: FAILED: SVHealth = %x > 0x1FF or < 0xFFFF, Out of range!");
    return 0;
  }

  v18 = p_NA;
  v25 = p_NA + 19688;
  v26 = v2 - 1;
  v19 = p_NA + 19688 + 44 * (v2 - 1);
  *(v19 + 8) = *a1;
  *(v19 + 10) = v2;
  *(v19 + 11) = a1[2];
  *(v19 + 12) = v7;
  *(v19 + 16) = v9;
  *(v19 + 20) = v13;
  *(v19 + 24) = v14;
  *(v19 + 28) = v10;
  *(v19 + 32) = v11;
  *(v19 + 36) = *(a1 + 14);
  *(v19 + 38) = v3;
  *(v19 + 40) = v4;
  v20 = v15 != 0xFFFF && Decode_BDS_Alm_Health_Sts(v15) > 3;
  *(v25 + 44 * v26 + 42) = v20;
  *(v18 + v26 + 284) = 1;
  v21 = *(p_api + 48);
  if (*(v21 + 16) == 1 && *v21 >= 3)
  {
    v22 = *(v21 + 40) + 604800 * *(v21 + 32);
  }

  else
  {
    v22 = 0;
  }

  v23 = (v25 + 44 * v26);
  if (a1[36])
  {
    v24 = 5;
  }

  else
  {
    v24 = 3;
  }

  *v23 = v22;
  v23[1] = v24;
  v16 = 1;
  Debug_Log_BDS_Alm(1, v23);
  return v16;
}

uint64_t GN_ABDS_Set_BGTO(int a1, unsigned __int16 *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  result = Is_GN_API_Set_Allowed("GN_ABDS_Set_BGTO");
  if (result)
  {
    v6 = *(a2 + 2);
    if ((v6 - 0x10000) <= 0xFFFDFFFF)
    {
      EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A0 = %d < -2^16 or >= 2^16, Out of range!");
      return 0;
    }

    v7 = a2[6];
    if (v7 != 0x7FFF && ((a2[6] - 0x2000) >> 14) <= 2u)
    {
      EvCrt_v("GN_ABDS_Set_BGTO: FAILED: A1 = %d < -2^13 or >= 2^13, Out of range!");
      return 0;
    }

    v9 = *(p_api + 48);
    if (*(v9 + 16) == 1 && *v9 >= 3)
    {
      v10 = *(v9 + 40) + 604800 * *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 14);
    v14 = a2[8];
    if (*(a2 + 18))
    {
      v15 = 5;
    }

    else
    {
      v15 = 3;
    }

    v16 = p_NA;
    v17 = p_NA + 0x2000;
    if (a1)
    {
      *(p_NA + 10052) = v10;
      *(v16 + 10056) = v15;
      *(v17 + 1868) = v11;
      *(v16 + 10064) = v12;
      *(v16 + 10068) = v6;
      *(v17 + 1880) = v7;
      *(v17 + 1882) = v13;
      *(v17 + 1884) = v14;
      *(v16 + 219) = 1;
    }

    else
    {
      *(p_NA + 10080) = v10;
      *(v16 + 10084) = v15;
      *(v17 + 1896) = v11;
      *(v16 + 10092) = v12;
      *(v16 + 10096) = v6;
      *(v17 + 1908) = v7;
      *(v17 + 1910) = v13;
      *(v17 + 1912) = v14;
      *(v16 + 220) = 1;
    }

    EvLog_nd("GN_ABDS_Set_BGTO: ", 7, v5, *a2, *(a2 + 1), *(a2 + 2), a2[6], *(a2 + 14), a2[8], *(a2 + 18), v18);
    return 1;
  }

  return result;
}

uint64_t stphiu(uint64_t result, unsigned int a2, const double *a3, const unsigned __int8 *a4, int a5, const unsigned __int8 *a6, const unsigned __int8 *a7)
{
  if (a2 >= 2 && a5)
  {
    v7 = 0;
    v8 = result - 8;
    v9 = a3 - 1;
    v10 = a4 - 1;
    v11 = a6 - 1;
    v12 = a7 - 1;
    if ((a5 + 1) > 2)
    {
      v13 = (a5 + 1);
    }

    else
    {
      v13 = 2;
    }

    v14 = 1;
    do
    {
      v15 = v12[v14];
      if (v12[v14])
      {
        result = v11[v14];
        v16 = 1;
        v17 = v7;
        do
        {
          v18 = v9[++v17];
          v19 = v10[v17];
          v20 = (v19 - 1) * v19;
          v21 = result + (v20 >> 1);
          *(v8 + 8 * v21) = v18 + *(v8 + 8 * v21);
          if (v19 < a2)
          {
            v22 = (v20 >> 1) + v19;
            do
            {
              v21 += v19;
              v22 += v19;
              *(v8 + 8 * v21) = *(v8 + 8 * v21) + v18 * *(v8 + 8 * v22);
              ++v19;
            }

            while (a2 != v19);
          }
        }

        while (v16++ != v15);
      }

      v7 += v15;
      ++v14;
    }

    while (v14 != v13);
  }

  return result;
}

void Debug_Log_Platform_Calibration_GLONASS_Group_Delays(uint64_t result)
{
  if (g_Logging_Cfg)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = str_8[v4++];
    }

    while (v4 != 6);
    for (i = 0; i != 112; i += 8)
    {
      v6 = g_CB_GDbg++;
      *v6 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v7 = *(result + i) * 1000.0;
      if (v7 <= 0.0)
      {
        v8 = -0.5;
      }

      else
      {
        v8 = 0.5;
      }

      v9 = v7 + v8;
      if (v9 <= 2147483650.0)
      {
        if (v9 >= -2147483650.0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0x80000000;
        }
      }

      else
      {
        v10 = 0x7FFFFFFFLL;
      }

      sprintf_4f(&g_CB_GDbg, v10, 4);
    }

    v11 = g_CB_GDbg++;
    *v11 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_Platform_Calibration_L5_Group_Delay(double a1)
{
  if (g_Logging_Cfg)
  {
    v1 = g_CB_GDbg;
    v2 = 36;
    v3 = 1u;
    do
    {
      g_CB_GDbg = (v1 + 1);
      *v1 = v2;
      v1 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v1 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v2 = str_1_1[v3++];
    }

    while (v3 != 7);
    v4 = a1 * 1000.0;
    v5 = -0.5;
    if (v4 > 0.0)
    {
      v5 = 0.5;
    }

    v6 = v4 + v5;
    if (v6 <= 2147483650.0)
    {
      if (v6 >= -2147483650.0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0x80000000;
      }
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    sprintf_4f(&g_CB_GDbg, v7, 4);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ApxTime(unsigned __int16 *result)
{
  if (g_Logging_Cfg)
  {
    v2 = g_CB_GDbg;
    v3 = 36;
    v4 = 1u;
    do
    {
      g_CB_GDbg = (v2 + 1);
      *v2 = v3;
      v2 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v2 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v3 = str_2_1[v4++];
    }

    while (v4 != 6);
    v5 = *result;
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = result[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = result[3];
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = result[4];
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = result[5];
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = result[6];
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(result + 4);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = *(result + 5);
    v21 = g_CB_GDbg++;
    *v21 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v20);
    v22 = g_CB_GDbg++;
    *v22 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_NonVol(uint64_t result, s_NV_Ram *a2)
{
  v247 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v2 = result;
    v3 = 0;
    v4 = *(a2 + 1);
    v5 = *(a2 + 8354);
    v6 = *(a2 + 4149);
    v7 = *(a2 + 8300);
    v8 = 36;
    v9 = *(a2 + 8301);
    v229 = *(a2 + 8302);
    v10 = g_CB_GDbg;
    do
    {
      g_CB_GDbg = (v10 + 1);
      *v10 = v8;
      v10 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v10 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v8 = aNg[++v3];
    }

    while (v3 != 4);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v4);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v229);
    v19 = g_CB_GDbg++;
    *v19 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
    if (v2)
    {
      v245 = 0;
      v246 = 0;
      memset(v244, 0, sizeof(v244));
      v243 = 0;
      memset(v242, 0, sizeof(v242));
      memset(v235, 0, 99);
      v234 = 0u;
      v240 = 0u;
      memset(v241, 0, 28);
      memset(v239, 0, sizeof(v239));
      memset(v233, 0, 22);
      v20 = 1;
      v232 = 0uLL;
      do
      {
        if (Core_Load_GPS_Eph(v20, &v234) && v234 >= 1)
        {
          *v244 = v234;
          v244[8] = BYTE8(v234);
          *&v244[9] = *(&v234 + 9);
          v21 = 21;
          v22 = 11;
          v23 = v235 + 8;
          do
          {
            v24 = &v244[v22];
            *v24 = *v23;
            *(v24 + 1) = *(v23 + 1);
            v23 += 4;
            --v21;
            v22 += 3;
          }

          while (v21 > 1);
          *&v244[71] = WORD6(v235[5]);
          v245 = *(&v235[5] + 14);
          v246 = BYTE2(v235[6]);
          Debug_Log_GPS_Eph(0, v20, v244);
        }

        v20 = (v20 + 1);
      }

      while (v20 != 33);
      v25 = 1;
      do
      {
        if (Core_Load_GPS_Alm(v25, &v240) && v240 >= 1)
        {
          *&v242[0] = v240;
          WORD4(v242[0]) = WORD5(v240);
          v26 = 9;
          v27 = 10;
          v28 = &v240 | 0xC;
          do
          {
            v29 = v242 + v27;
            *v29 = *v28;
            *(v29 + 1) = *(v28 + 1);
            v28 += 4;
            --v26;
            v27 += 3;
          }

          while (v26 > 1);
          Debug_Log_GPS_Alm(0, v25, v242);
        }

        v25 = (v25 + 1);
      }

      while (v25 != 33);
      v30 = 0;
      v31 = p_NV;
      v32 = 55665;
      for (i = 96; i != 136; ++i)
      {
        v34 = *(p_NV + i) ^ BYTE1(v32);
        v32 = 52845 * (v32 + v34) + 22719;
        v30 += v34;
      }

      if (*(p_NV + 88) == v30)
      {
        v35 = *(p_NV + 116);
        v239[0] = *(p_NV + 100);
        v239[1] = v35;
        Debug_Log_GNSS_Health(1, v239);
        v31 = p_NV;
      }

      v36 = 0;
      v37 = 55665;
      for (j = 168; j != 192; ++j)
      {
        v39 = *(v31 + j) ^ BYTE1(v37);
        v37 = 52845 * (v37 + v39) + 22719;
        v36 += v39;
      }

      if (*(v31 + 160) == v36)
      {
        *v233 = *(v31 + 168);
        *&v233[16] = *(v31 + 184);
        if (*v233 >= 1)
        {
          Debug_Log_GPS_UTC(0, v233);
          v31 = p_NV;
        }
      }

      v40 = 0;
      v41 = 0;
      v42 = 55665;
      do
      {
        v43 = *(v31 + 144 + v40) ^ BYTE1(v42);
        v42 = 52845 * (v42 + v43) + 22719;
        v41 += v43;
        ++v40;
      }

      while (v40 != 16);
      if (*(v31 + 136) == v41)
      {
        v232 = *(v31 + 144);
        if (v232 >= 1)
        {
          Debug_Log_GPS_Klob(0, &v232);
        }
      }

      v245 = 0;
      v246 = 0;
      memset(&v244[8], 0, 65);
      v243 = 0;
      memset(v242, 0, sizeof(v242));
      memset(v235, 0, 99);
      v234 = 0u;
      v240 = 0u;
      memset(v241, 0, 28);
      WORD4(v239[0]) = 0;
      v44 = 193;
      *&v239[0] = 0;
      do
      {
        if (Core_Load_QZSS_Eph(v44, &v234) && v234 >= 1)
        {
          *v244 = v234;
          v244[8] = BYTE8(v234);
          *&v244[9] = *(&v234 + 9);
          v45 = 21;
          v46 = 11;
          v47 = v235 + 8;
          do
          {
            v48 = &v244[v46];
            *v48 = *v47;
            *(v48 + 1) = *(v47 + 1);
            v47 += 4;
            --v45;
            v46 += 3;
          }

          while (v45 > 1);
          *&v244[71] = WORD6(v235[5]);
          v245 = *(&v235[5] + 14);
          v246 = BYTE2(v235[6]);
          Debug_Log_GPS_Eph(0, v44, v244);
        }

        v44 = (v44 + 1);
      }

      while (v44 != 203);
      v49 = 193;
      do
      {
        if (Core_Load_QZSS_Alm(v49, &v240) && v240 >= 1)
        {
          *&v242[0] = v240;
          WORD4(v242[0]) = WORD5(v240);
          v50 = 9;
          v51 = 10;
          v52 = &v240 | 0xC;
          do
          {
            v53 = v242 + v51;
            *v53 = *v52;
            *(v53 + 1) = *(v52 + 1);
            v52 += 4;
            --v50;
            v51 += 3;
          }

          while (v50 > 1);
          Debug_Log_GPS_Alm(0, v49, v242);
        }

        v49 = (v49 + 1);
      }

      while (v49 != 203);
      v54 = 0;
      v55 = 0;
      v56 = 55665;
      do
      {
        v57 = *(p_NV + 6088 + v54) ^ BYTE1(v56);
        v56 = 52845 * (v56 + v57) + 22719;
        v55 += v57;
        ++v54;
      }

      while (v54 != 16);
      if (*(p_NV + 6080) == v55)
      {
        WORD4(v239[0]) = *(p_NV + 6100);
        *&v239[0] = *(p_NV + 6092);
        Debug_Log_GNSS_Health(3, v239);
      }

      memset(v235, 0, 46);
      v234 = 0u;
      *v244 = 0;
      *&v244[8] = 0;
      memset(&v244[12], 0, 24);
      v58 = 1;
      do
      {
        if (Core_Load_GLON_Eph(v58, &v234) && v234 >= 1)
        {
          Debug_Log_GLO_Eph(0, v58, &v234);
        }

        v58 = (v58 + 1);
      }

      while (v58 != 25);
      v59 = 1;
      do
      {
        if (Core_Load_GLON_Alm(v59, v244) && *v244 >= 1)
        {
          Debug_Log_GLO_Alm(0, v59, v244);
        }

        v59 = (v59 + 1);
      }

      while (v59 != 25);
      v60 = 0;
      v61 = 0;
      v62 = p_NV;
      v63 = 55665;
      do
      {
        v64 = *(p_NV + 29168 + v60) ^ BYTE1(v63);
        v63 = 52845 * (v63 + v64) + 22719;
        v61 += v64;
        ++v60;
      }

      while (v60 != 32);
      if (*(p_NV + 29160) == v61)
      {
        v240 = *(p_NV + 29172);
        *&v241[0] = *(p_NV + 29188);
        Debug_Log_GNSS_Health(2, &v240);
        v62 = p_NV;
      }

      v65 = 0;
      v66 = 0;
      v67 = 55665;
      do
      {
        v68 = *(v62 + 29208 + v65) ^ BYTE1(v67);
        v67 = 52845 * (v67 + v68) + 22719;
        v66 += v68;
        ++v65;
      }

      while (v65 != 32);
      if (*(v62 + 29200) == v66)
      {
        v69 = *(v62 + 29208);
        if (v69 >= 1)
        {
          if (g_Logging_Cfg)
          {
            v230 = *(v62 + 29212);
            v70 = *(v62 + 29216);
            v71 = *(v62 + 29220);
            v72 = *(v62 + 29224);
            v73 = *(v62 + 29228);
            v74 = *(v62 + 29232);
            sprintf_NA_x_header(0, "C-");
            v75 = g_CB_GDbg++;
            *v75 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v69);
            v76 = g_CB_GDbg++;
            *v76 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v70);
            v77 = g_CB_GDbg++;
            *v77 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v71);
            v78 = g_CB_GDbg++;
            *v78 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v72);
            v79 = g_CB_GDbg++;
            *v79 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v73);
            v80 = g_CB_GDbg++;
            *v80 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v74);
            sprintf_sp1d(&g_CB_GDbg, v230);
            v81 = g_CB_GDbg++;
            *v81 = 10;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      memset(v235, 0, 72);
      v234 = 0u;
      v82 = 1;
      memset(v244, 0, 35);
      do
      {
        v83 = v82;
        if (Core_Load_GAL_Eph(v82, &v234) && v234 >= 1)
        {
          Debug_Log_GAL_Eph(0, &v234);
        }

        ++v82;
      }

      while (v83 < 0x24);
      v84 = 1;
      do
      {
        v85 = v84;
        if (Core_Load_GAL_Alm(v84, v244) && *v244 >= 1)
        {
          Debug_Log_GAL_Alm(0, v244);
        }

        ++v84;
      }

      while (v85 < 0x24);
      v86 = 0;
      v87 = 0;
      v88 = p_NV;
      v89 = 55665;
      do
      {
        v90 = *(p_NV + 7952 + v86) ^ BYTE1(v89);
        v89 = 52845 * (v89 + v90) + 22719;
        v87 += v90;
        ++v86;
      }

      while (v86 != 40);
      if (*(p_NV + 7944) == v87)
      {
        LODWORD(v241[1]) = *(p_NV + 7988);
        v91 = *(p_NV + 7972);
        v240 = *(p_NV + 7956);
        v241[0] = v91;
        Debug_Log_GNSS_Health(5, &v240);
        v88 = p_NV;
      }

      v92 = 0;
      v93 = 0;
      v94 = 55665;
      do
      {
        v95 = *(v88 + 8000 + v92) ^ BYTE1(v94);
        v94 = 52845 * (v94 + v95) + 22719;
        v93 += v95;
        ++v92;
      }

      while (v92 != 16);
      if (*(v88 + 7992) == v93)
      {
        v96 = *(v88 + 8000);
        if (v96 >= 1)
        {
          if (g_Logging_Cfg)
          {
            v231 = *(v88 + 8004);
            v97 = *(v88 + 8008);
            v98 = *(v88 + 8010);
            v99 = *(v88 + 8012);
            v100 = *(v88 + 8013);
            sprintf_NA_x_header(0, "OE");
            v101 = g_CB_GDbg++;
            *v101 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v96);
            v102 = g_CB_GDbg++;
            *v102 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v97);
            v103 = g_CB_GDbg++;
            *v103 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v98);
            v104 = g_CB_GDbg++;
            *v104 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v99);
            v105 = g_CB_GDbg++;
            *v105 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v100);
            sprintf_sp1d(&g_CB_GDbg, v231);
            v106 = g_CB_GDbg++;
            *v106 = 10;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      v234 = 0uLL;
      LOWORD(v235[0]) = 0;
      memset(v235 + 4, 0, 64);
      *(&v235[4] + 2) = 0u;
      memset(&v235[5] + 4, 0, 48);
      v107 = 1;
      v240 = 0u;
      memset(v241, 0, 27);
      do
      {
        v108 = v107;
        if (Core_Load_BDS_Eph(v107, &v234) && v234 >= 1)
        {
          Debug_Log_BDS_Eph(0, &v234);
        }

        ++v107;
      }

      while (v108 < 0x3F);
      v109 = 1;
      do
      {
        v110 = v109;
        if (Core_Load_BDS_Alm(v109, &v240) && v240 >= 1)
        {
          Debug_Log_BDS_Alm(0, &v240);
        }

        ++v109;
      }

      while (v110 < 0x3F);
      v111 = 0;
      v112 = 0;
      v113 = 55665;
      do
      {
        v114 = *(p_NV + 13208 + v111) ^ BYTE1(v113);
        v113 = 52845 * (v113 + v114) + 22719;
        v112 += v114;
        ++v111;
      }

      while (v111 != 72);
      if (*(p_NV + 13200) == v112)
      {
        v115 = *(p_NV + 13228);
        *v244 = *(p_NV + 13212);
        *&v244[16] = v115;
        *&v244[32] = *(p_NV + 13244);
        *&v244[47] = *(p_NV + 13259);
        Debug_Log_GNSS_Health(4, v244);
      }

      *&v242[0] = 0;
      WORD4(v242[0]) = 0;
      WORD4(v242[1]) = 0;
      *(v242 + 12) = 0;
      *(&v242[1] + 3) = 0;
      *&v239[0] = 0;
      WORD4(v239[0]) = 0;
      WORD4(v239[1]) = 0;
      *(v239 + 12) = 0;
      *(&v239[1] + 3) = 0;
      if (Core_Load_BDS_BGTO(v242, v239))
      {
        if (SLODWORD(v242[0]) >= 1)
        {
          Debug_Log_BDS_BGTO(v242, 1);
        }

        if (SLODWORD(v239[0]) >= 1)
        {
          Debug_Log_BDS_BGTO(v239, 2);
        }
      }

      v234 = 0u;
      memset(v235, 0, 60);
      *&v244[12] = 0;
      *&v244[16] = 0;
      *&v244[20] = 0;
      *&v244[24] = 0;
      *v244 = 0;
      *&v244[7] = 0;
      memset(&v244[28], 0, 21);
      v116 = 1;
      do
      {
        v117 = v116;
        if (Core_Load_NVIC_Eph(v116, &v234) && v234 >= 1)
        {
          Debug_Log_NVC_Eph(0, &v234);
        }

        ++v116;
      }

      while (v117 < 0xE);
      v118 = 1;
      do
      {
        v119 = v118;
        if (Core_Load_NVIC_Alm(v118, v244) && *v244 >= 1)
        {
          Debug_Log_NVC_Alm(0, v244);
        }

        ++v118;
      }

      while (v119 < 0xE);
      v120 = 0;
      v121 = 0;
      v122 = p_NV;
      v123 = 55665;
      do
      {
        v124 = *(p_NV + 26976 + v120) ^ BYTE1(v123);
        v123 = 52845 * (v123 + v124) + 22719;
        v121 += v124;
        ++v120;
      }

      while (v120 != 24);
      if (*(p_NV + 26968) == v121)
      {
        *&v240 = *(p_NV + 26980);
        *(&v240 + 6) = *(p_NV + 26986);
        Debug_Log_GNSS_Health(6, &v240);
        v122 = p_NV;
      }

      v125 = 0;
      v126 = 0;
      v127 = 55665;
      do
      {
        v128 = *(v122 + 27008 + v125) ^ BYTE1(v127);
        v127 = 52845 * (v127 + v128) + 22719;
        v126 += v128;
        ++v125;
      }

      while (v125 != 24);
      if (*(v122 + 27000) == v126)
      {
        v129 = *(v122 + 27008);
        if (v129 >= 1)
        {
          if (g_Logging_Cfg)
          {
            v130 = *(v122 + 27012);
            v131 = *(v122 + 27016);
            v132 = *(v122 + 27018);
            v133 = *(v122 + 27020);
            v134 = *(v122 + 27022);
            v135 = *(v122 + 27024);
            sprintf_NA_x_header(0, "ON");
            v136 = g_CB_GDbg++;
            *v136 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v129);
            v137 = g_CB_GDbg++;
            *v137 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v131);
            v138 = g_CB_GDbg++;
            *v138 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v132);
            v139 = g_CB_GDbg++;
            *v139 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v133);
            v140 = g_CB_GDbg++;
            *v140 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v134);
            v141 = g_CB_GDbg++;
            *v141 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v135);
            sprintf_sp1d(&g_CB_GDbg, v130);
            v142 = g_CB_GDbg++;
            *v142 = 10;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            GNB_Debug_Flush_Check();
          }
        }
      }

      DWORD2(v234) = 0;
      *&v234 = 0;
      v143 = 120;
      *v244 = 0;
      do
      {
        if (Core_Load_SBAS_Apx(v143, v244, &v234))
        {
          v144 = *v244;
          if (*v244 >= 1 && g_Logging_Cfg != 0)
          {
            sprintf_NA_A_header(0, 83);
            v146 = g_CB_GDbg++;
            *v146 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_3d(&g_CB_GDbg, v143);
            v147 = g_CB_GDbg++;
            *v147 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_10d(&g_CB_GDbg, v144);
            v148 = v234;
            v149 = g_CB_GDbg++;
            *v149 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_9d(&g_CB_GDbg, v148);
            v150 = DWORD1(v234);
            v151 = g_CB_GDbg++;
            *v151 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_9d(&g_CB_GDbg, v150);
            v152 = DWORD2(v234);
            v153 = g_CB_GDbg++;
            *v153 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_8d(&g_CB_GDbg, v152);
            v154 = g_CB_GDbg++;
            *v154 = 10;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            GNB_Debug_Flush_Check();
          }
        }

        v143 = (v143 + 1);
      }

      while (v143 != 159);
      *v244 = 0;
      *&v234 = 0;
      if (Core_Load_Clk_Drift(v244, &v234) && g_Logging_Cfg)
      {
        v155 = 0;
        v156 = *&v234;
        v157 = *v244;
        v158 = 36;
        v159 = g_CB_GDbg;
        do
        {
          g_CB_GDbg = (v159 + 1);
          *v159 = v158;
          v159 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v159 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v158 = aNd[++v155];
        }

        while (v155 != 4);
        g_CB_GDbg = (v159 + 1);
        *v159 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v157);
        v160 = g_CB_GDbg++;
        *v160 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_11f9(&g_CB_GDbg, v156 * 1000000.0);
        v161 = g_CB_GDbg++;
        *v161 = 10;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        GNB_Debug_Flush_Check();
      }

      v237 = 0u;
      memset(v238, 0, sizeof(v238));
      v236 = 0u;
      memset(v235, 0, sizeof(v235));
      v234 = 0u;
      if (Core_Load_Not_Brd_SV(0, &v234))
      {
        Debug_Log_NV_Not_Brd_SV(0, &v234);
      }

      v237 = 0u;
      memset(v238, 0, sizeof(v238));
      v236 = 0u;
      memset(v235, 0, sizeof(v235));
      v234 = 0u;
      if (Core_Load_Not_Brd_SV(1, &v234))
      {
        Debug_Log_NV_Not_Brd_SV(1, &v234);
      }

      *v244 = 0;
      v237 = 0u;
      memset(v238, 0, sizeof(v238));
      v236 = 0u;
      memset(v235, 0, sizeof(v235));
      v234 = 0u;
      Inhib_EE = Core_Load_Inhib_EE(&v234, v244);
      v163 = g_Logging_Cfg;
      if (Inhib_EE && g_Logging_Cfg)
      {
        v164 = 0;
        v165 = *v244;
        v166 = g_CB_GDbg;
        v167 = 36;
        do
        {
          g_CB_GDbg = (v166 + 1);
          *v166 = v167;
          v166 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v166 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v167 = aNi[++v164];
        }

        while (v164 != 4);
        v168 = 0;
        v169 = 0;
        v170 = 1;
        do
        {
          if (*(&v235[-1] + v168))
          {
            v171 = v170;
          }

          else
          {
            v171 = 0;
          }

          v169 |= v171;
          v170 *= 2;
          ++v168;
        }

        while (v168 != 32);
        v172 = 0;
        v173 = 0;
        v174 = 1;
        do
        {
          if (*(&v235[1] + v172))
          {
            v175 = v174;
          }

          else
          {
            v175 = 0;
          }

          v173 |= v175;
          v174 *= 2;
          ++v172;
        }

        while (v172 != 24);
        v176 = 0;
        v177 = 0;
        v178 = 1;
        do
        {
          if (*(&v235[8] + v176 + 11))
          {
            v179 = v178;
          }

          else
          {
            v179 = 0;
          }

          v177 |= v179;
          v178 *= 2;
          ++v176;
        }

        while (v176 != 10);
        v180 = 0;
        v181 = 0;
        v182 = 1;
        do
        {
          if (v238[v180 - 13])
          {
            v183 = v182;
          }

          else
          {
            v183 = 0;
          }

          v181 |= v183;
          v182 *= 2;
          ++v180;
        }

        while (v180 != 39);
        v184 = 0;
        v185 = 0;
        v186 = 1;
        do
        {
          if (*(&v235[4] + v184 + 12))
          {
            v187 = v186;
          }

          else
          {
            v187 = 0;
          }

          v185 |= v187;
          v186 *= 2;
          ++v184;
        }

        while (v184 != 63);
        v188 = 0;
        v189 = 0;
        v190 = 1;
        do
        {
          if (*(&v235[2] + v188 + 8))
          {
            v191 = v190;
          }

          else
          {
            v191 = 0;
          }

          v189 |= v191;
          v190 *= 2;
          ++v188;
        }

        while (v188 != 36);
        v192 = 0;
        v193 = 0;
        v194 = 1;
        do
        {
          if (*(&v236 + v192 + 5))
          {
            v195 = v194;
          }

          else
          {
            v195 = 0;
          }

          v193 |= v195;
          v194 *= 2;
          ++v192;
        }

        while (v192 != 14);
        g_CB_GDbg = (v166 + 1);
        *v166 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v165);
        v196 = 0;
        v197 = g_CB_GDbg;
        v198 = 32;
        do
        {
          g_CB_GDbg = (v197 + 1);
          *v197 = v198;
          v197 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v197 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v198 = aG[++v196];
        }

        while (v196 != 4);
        sprintf_1X(&g_CB_GDbg, v169);
        v199 = 0;
        v200 = g_CB_GDbg;
        v201 = 32;
        do
        {
          g_CB_GDbg = (v200 + 1);
          *v200 = v201;
          v200 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v200 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v201 = aR[++v199];
        }

        while (v199 != 4);
        sprintf_1X(&g_CB_GDbg, v173);
        v202 = 0;
        v203 = g_CB_GDbg;
        v204 = 32;
        do
        {
          g_CB_GDbg = (v203 + 1);
          *v203 = v204;
          v203 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v203 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v204 = aQ[++v202];
        }

        while (v202 != 4);
        sprintf_1X(&g_CB_GDbg, v177);
        v205 = 0;
        v206 = g_CB_GDbg;
        v207 = 32;
        do
        {
          g_CB_GDbg = (v206 + 1);
          *v206 = v207;
          v206 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v206 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v207 = aS[++v205];
        }

        while (v205 != 4);
        sprintf_1X(&g_CB_GDbg, v181);
        v208 = 0;
        v209 = g_CB_GDbg;
        v210 = 32;
        do
        {
          g_CB_GDbg = (v209 + 1);
          *v209 = v210;
          v209 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v209 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v210 = aB[++v208];
        }

        while (v208 != 4);
        sprintf_1X(&g_CB_GDbg, v185);
        v211 = 0;
        v212 = g_CB_GDbg;
        v213 = 32;
        do
        {
          g_CB_GDbg = (v212 + 1);
          *v212 = v213;
          v212 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v212 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v213 = aE[++v211];
        }

        while (v211 != 4);
        sprintf_1X(&g_CB_GDbg, v189);
        v214 = 0;
        v215 = g_CB_GDbg;
        v216 = 32;
        do
        {
          g_CB_GDbg = (v215 + 1);
          *v215 = v216;
          v215 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v215 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v216 = aN[++v214];
        }

        while (v214 != 4);
        sprintf_1X(&g_CB_GDbg, v193);
        v217 = g_CB_GDbg++;
        *v217 = 10;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        GNB_Debug_Flush_Check();
        v163 = g_Logging_Cfg;
      }

      *v244 = 0;
      *&v234 = 0;
      if (Core_Load_Clk_L5L1(v244, &v234) && v163)
      {
        v218 = 0;
        v219 = *&v234;
        v220 = *v244;
        v221 = 36;
        v222 = g_CB_GDbg;
        do
        {
          g_CB_GDbg = (v222 + 1);
          *v222 = v221;
          v222 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v222 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v221 = aN55[++v218];
        }

        while (v218 != 4);
        g_CB_GDbg = (v222 + 1);
        *v222 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v220);
        v223 = g_CB_GDbg++;
        *v223 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        v224 = v219 * 299792458.0 * 1000.0;
        v225 = -0.5;
        if (v224 > 0.0)
        {
          v225 = 0.5;
        }

        v226 = v224 + v225;
        if (v226 <= 2147483650.0)
        {
          if (v226 >= -2147483650.0)
          {
            v227 = v226;
          }

          else
          {
            v227 = 0x80000000;
          }
        }

        else
        {
          v227 = 0x7FFFFFFFLL;
        }

        sprintf_6f(&g_CB_GDbg, v227, 4);
        v228 = g_CB_GDbg++;
        *v228 = 10;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        GNB_Debug_Flush_Check();
      }

      Debug_Log_NV_End();
      if (*&dword_2A1453F88 != g_CB_GDbg)
      {
        GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
      }
    }

    else
    {
      Debug_Log_NV_End();
      if (*&dword_2A1453F88 != g_CB_GDbg)
      {

        GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
      }
    }
  }
}

void Debug_Log_NV_End(void)
{
  if (g_Logging_Cfg)
  {
    v0 = g_CB_GDbg;
    v1 = 36;
    v2 = 1u;
    do
    {
      g_CB_GDbg = (v0 + 1);
      *v0 = v1;
      v0 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v0 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v1 = aN_0[v2++];
    }

    while (v2 != 6);
    g_CB_GDbg = (v0 + 1);
    *v0 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}