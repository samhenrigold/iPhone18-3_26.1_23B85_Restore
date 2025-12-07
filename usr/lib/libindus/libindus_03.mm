void Debug_Log_GPS_Eph(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Logging_Cfg)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_E_header(result, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    for (i = 0; i != 63; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + i + 8));
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v11 = *(a3 + 71);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    sprintf_sp1d(&g_CB_GDbg, *(a3 + 72));
    v13 = *(a3 + 37);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v13);
    v15 = *(a3 + 38);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v15);
    v17 = *(a3 + 78);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v17);
    v19 = g_CB_GDbg++;
    *v19 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_Alm(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Logging_Cfg)
  {
    if (a2 <= 192)
    {
      v5 = 71;
    }

    else
    {
      v5 = 81;
    }

    sprintf_NA_A_header(result, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a2);
    v7 = *a3;
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a3 + 4);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    for (i = 0; i != 24; ++i)
    {
      sprintf_02x(&g_CB_GDbg, *(a3 + i + 10));
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v13 = g_CB_GDbg++;
    *v13 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GNSS_Health(uint64_t result, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_Logging_Cfg)
  {
    v3 = result;
    sprintf_NA_x_header(0, "H");
    v4 = v3 - 1;
    v5 = qword_299050530[v4];
    v6 = g_CB_GDbg++;
    *v6 = 0x4E4542515247uLL >> (8 * v4);
    v7 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v7 = qword_2A1453F90;
    }

    g_CB_GDbg = (v7 + 1);
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    do
    {
      v8 = *a2++;
      sprintf1da(&g_CB_GDbg, v8, v10, 0, 0);
      --v5;
    }

    while (v5);
    v9 = g_CB_GDbg++;
    *v9 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_UTC(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(result, "UG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = a2[2];
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = a2[3];
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 16);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 17);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 18);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 19);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 20);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 21);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GPS_Klob(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(result, "KG");
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 10);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 11);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = *(a2 + 12);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(a2 + 13);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(a2 + 14);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(a2 + 15);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GLO_Eph(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(result, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = a3[2];
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(a3 + 30);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    for (i = 3; i != 15; ++i)
    {
      v13 = g_CB_GDbg++;
      *v13 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_08x(&g_CB_GDbg, a3[i]);
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v14 = g_CB_GDbg++;
    *v14 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GLO_Alm(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(result, 82);
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v6 = *a3;
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = *(a3 + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    for (i = 0; i != 6; ++i)
    {
      v11 = g_CB_GDbg++;
      *v11 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_08x(&g_CB_GDbg, a3[i + 3]);
    }

    sprintf_sp1d(&g_CB_GDbg, a3[1]);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GAL_Eph(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(result, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = a2[2];
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 6);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v7);
    v9 = *(a2 + 14);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 15);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v11);
    v13 = *(a2 + 8);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v13);
    v15 = *(a2 + 9);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v15);
    sprintf_sp11d(&g_CB_GDbg, a2[5], v17);
    v18 = a2[6];
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v18);
    v20 = a2[7];
    v21 = g_CB_GDbg++;
    *v21 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v20);
    sprintf_sp11d(&g_CB_GDbg, a2[8], v22);
    sprintf_sp11d(&g_CB_GDbg, a2[9], v23);
    sprintf_sp11d(&g_CB_GDbg, a2[10], v24);
    v25 = a2[11];
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v25);
    v27 = *(a2 + 24);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 25);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v29);
    v31 = *(a2 + 26);
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v31);
    v33 = *(a2 + 27);
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v33);
    v35 = *(a2 + 28);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v35);
    v37 = *(a2 + 29);
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v37);
    v39 = *(a2 + 30);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v39);
    v41 = *(a2 + 31);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v41);
    sprintf_sp11d(&g_CB_GDbg, a2[16], v43);
    v44 = a2[17];
    v45 = g_CB_GDbg++;
    *v45 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v44);
    v46 = *(a2 + 36);
    v47 = g_CB_GDbg++;
    *v47 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v46);
    v48 = *(a2 + 37);
    v49 = g_CB_GDbg++;
    *v49 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v48);
    v50 = *(a2 + 38);
    v51 = g_CB_GDbg++;
    *v51 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v50);
    v52 = *(a2 + 39);
    v53 = g_CB_GDbg++;
    *v53 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v52);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 80));
    v54 = *(a2 + 81);
    v55 = g_CB_GDbg++;
    *v55 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v54);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 82));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 83));
    v56 = *(a2 + 84);
    v57 = g_CB_GDbg++;
    *v57 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v56);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 85));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 86));
    v58 = a2[1];
    v59 = g_CB_GDbg++;
    *v59 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v58);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 87));
    v60 = g_CB_GDbg++;
    *v60 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_GAL_Alm(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(result, 69);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(a2 + 9);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 5);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v9);
    v11 = *(a2 + 6);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a2 + 7);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v13);
    v15 = *(a2 + 8);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v15);
    v17 = *(a2 + 9);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v17);
    v19 = *(a2 + 10);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v19);
    v21 = *(a2 + 11);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v21);
    v23 = *(a2 + 12);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v23);
    v25 = *(a2 + 13);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v25);
    v27 = *(a2 + 14);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 15);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v29);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 32));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 33));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 34));
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v31 = g_CB_GDbg++;
    *v31 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_BDS_Eph(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(result, 66);
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 32;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = aC_1[++v3];
    }

    while (v3 != 2);
    v6 = *a2;
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v6);
    v7 = *(a2 + 8);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 9));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 10));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 11));
    v9 = a2[3];
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v9);
    v11 = *(a2 + 8);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = a2[5];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v13);
    v15 = a2[6];
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v15);
    v17 = a2[7];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v17);
    v19 = a2[8];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_9d(&g_CB_GDbg, v19);
    v21 = a2[9];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v21);
    v23 = a2[10];
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v23);
    v25 = a2[11];
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v25);
    v28 = *(a2 + 6);
    v29 = g_CB_GDbg++;
    *v29 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v28, v27);
    sprintf_sp10U(&g_CB_GDbg, *(a2 + 7), v30);
    v32 = *(a2 + 8);
    v33 = g_CB_GDbg++;
    *v33 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v32, v31);
    v35 = *(a2 + 9);
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v35, v34);
    v38 = *(a2 + 10);
    v39 = g_CB_GDbg++;
    *v39 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11D(&g_CB_GDbg, v38, v37);
    v40 = a2[22];
    v41 = g_CB_GDbg++;
    *v41 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_7d(&g_CB_GDbg, v40);
    v42 = *(a2 + 46);
    v43 = g_CB_GDbg++;
    *v43 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v42);
    v44 = *(a2 + 47);
    v45 = g_CB_GDbg++;
    *v45 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v44);
    v46 = *(a2 + 48);
    v47 = g_CB_GDbg++;
    *v47 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v46);
    v48 = a2[25];
    v49 = g_CB_GDbg++;
    *v49 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v48);
    v50 = a2[26];
    v51 = g_CB_GDbg++;
    *v51 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v50);
    v52 = a2[27];
    v53 = g_CB_GDbg++;
    *v53 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v52);
    v54 = a2[28];
    v55 = g_CB_GDbg++;
    *v55 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v54);
    v56 = a2[29];
    v57 = g_CB_GDbg++;
    *v57 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_9d(&g_CB_GDbg, v56);
    v58 = a2[30];
    v59 = g_CB_GDbg++;
    *v59 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v58);
    v60 = *(a2 + 62);
    v61 = g_CB_GDbg++;
    *v61 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v60);
    v62 = *(a2 + 63);
    v63 = g_CB_GDbg++;
    *v63 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v62);
    v64 = *(a2 + 128);
    v65 = g_CB_GDbg++;
    *v65 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v64);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 129));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 130));
    v66 = *(a2 + 131);
    v67 = g_CB_GDbg++;
    *v67 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v66);
    v68 = *(a2 + 66);
    v69 = g_CB_GDbg++;
    *v69 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v68);
    v70 = *(a2 + 67);
    v71 = g_CB_GDbg++;
    *v71 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v70);
    v72 = *(a2 + 68);
    v73 = g_CB_GDbg++;
    *v73 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v72);
    v74 = *(a2 + 69);
    v75 = g_CB_GDbg++;
    *v75 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v74);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 140));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 141));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 142));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 143));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 144));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 145));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 146));
    v76 = *(a2 + 147);
    v77 = g_CB_GDbg++;
    *v77 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v76);
    sprintf_sp1u(&g_CB_GDbg, a2[1]);
    v78 = g_CB_GDbg++;
    *v78 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_BDS_Alm(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(result, 66);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 4);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v5);
    v7 = *(a2 + 10);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    v9 = *(a2 + 11);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v9);
    v11 = a2[3];
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v11);
    v13 = a2[4];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v13);
    v15 = a2[5];
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v15);
    v17 = a2[6];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v17);
    v19 = a2[7];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v19);
    v21 = a2[8];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_7d(&g_CB_GDbg, v21);
    v23 = *(a2 + 18);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_7d(&g_CB_GDbg, v23);
    v25 = *(a2 + 19);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v25);
    v27 = *(a2 + 20);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 42);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v29);
    sprintf_sp1d(&g_CB_GDbg, 0);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v31 = g_CB_GDbg++;
    *v31 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_BDS_BGTO(unsigned int *result, int a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_x_header(0, "OB");
    v4 = *result;
    v5 = g_CB_GDbg++;
    *v5 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v4);
    if (a2 == 1)
    {
      v6 = 71;
    }

    else
    {
      v6 = 82;
    }

    v7 = g_CB_GDbg++;
    *v7 = 32;
    v8 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v8 = qword_2A1453F90;
    }

    g_CB_GDbg = (v8 + 1);
    *v8 = v6;
    v9 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v9 = qword_2A1453F90;
    }

    v10 = *(result + 4);
    g_CB_GDbg = (v9 + 1);
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v11 = result[3];
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v11);
    v13 = result[4];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = *(result + 10);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = *(result + 22);
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(result + 12);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, result[1]);
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_NVC_Eph(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(result, 78);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 9));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 10));
    sprintf_sp1u(&g_CB_GDbg, *(a2 + 11));
    v7 = *(a2 + 12);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v7);
    v9 = *(a2 + 13);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v9);
    v11 = *(a2 + 7);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a2 + 8);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v13);
    v15 = *(a2 + 9);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v15);
    v17 = a2[5];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_9d(&g_CB_GDbg, v17);
    v19 = *(a2 + 12);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v19);
    v21 = *(a2 + 26);
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v21);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 27));
    v23 = *(a2 + 14);
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v23);
    v25 = *(a2 + 15);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v25);
    v27 = a2[8];
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v27);
    v29 = a2[9];
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10u(&g_CB_GDbg, v29);
    sprintf_sp11d(&g_CB_GDbg, a2[10], v31);
    sprintf_sp11d(&g_CB_GDbg, a2[11], v32);
    sprintf_sp11d(&g_CB_GDbg, a2[12], v33);
    sprintf_sp11d(&g_CB_GDbg, a2[13], v34);
    v35 = a2[14];
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v35);
    v37 = a2[15];
    v38 = g_CB_GDbg++;
    *v38 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v37);
    v39 = *(a2 + 32);
    v40 = g_CB_GDbg++;
    *v40 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v39);
    v41 = *(a2 + 33);
    v42 = g_CB_GDbg++;
    *v42 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v41);
    v43 = *(a2 + 34);
    v44 = g_CB_GDbg++;
    *v44 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v43);
    v45 = *(a2 + 35);
    v46 = g_CB_GDbg++;
    *v46 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v45);
    v47 = *(a2 + 36);
    v48 = g_CB_GDbg++;
    *v48 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v47);
    v49 = *(a2 + 37);
    v50 = g_CB_GDbg++;
    *v50 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v49);
    sprintf_sp1u(&g_CB_GDbg, a2[1]);
    v51 = g_CB_GDbg++;
    *v51 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_NVC_Alm(uint64_t result, unsigned int *a2)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_A_header(result, 78);
    v3 = *a2;
    v4 = g_CB_GDbg++;
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v3);
    v5 = *(a2 + 8);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 9));
    sprintf_sp1d(&g_CB_GDbg, *(a2 + 10));
    v7 = *(a2 + 6);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v7);
    v9 = *(a2 + 7);
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v9);
    v11 = *(a2 + 8);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v11);
    v13 = a2[5];
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v13);
    v15 = *(a2 + 12);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v15);
    v17 = a2[7];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v17);
    v19 = a2[8];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v19);
    v21 = a2[9];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v21);
    v23 = a2[10];
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v23);
    v25 = *(a2 + 22);
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v25);
    v27 = *(a2 + 23);
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v27);
    v29 = *(a2 + 48);
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v29);
    sprintf_sp1d(&g_CB_GDbg, a2[1]);
    v31 = g_CB_GDbg++;
    *v31 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_NV_Not_Brd_SV(uint64_t result, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    v3 = g_CB_GDbg;
    v4 = 36;
    v5 = 1u;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = aNb[v5++];
    }

    while (v5 != 6);
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      if (*(a2 + v6))
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v7 |= v9;
      v8 *= 2;
      ++v6;
    }

    while (v6 != 32);
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      if (*(a2 + 32 + v10))
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v11 |= v13;
      v12 *= 2;
      ++v10;
    }

    while (v10 != 24);
    v14 = 0;
    v15 = 0;
    v16 = 1;
    do
    {
      if (*(a2 + 155 + v14))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v15 |= v17;
      v16 *= 2;
      ++v14;
    }

    while (v14 != 10);
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      if (*(a2 + 179 + v18))
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v19 |= v21;
      v20 *= 2;
      ++v18;
    }

    while (v18 != 39);
    v22 = 0;
    v23 = 0;
    v24 = 1;
    do
    {
      if (*(a2 + 92 + v22))
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v23 |= v25;
      v24 *= 2;
      ++v22;
    }

    while (v22 != 63);
    v26 = 0;
    v27 = 0;
    v28 = 1;
    do
    {
      if (*(a2 + 56 + v26))
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v27 |= v29;
      v28 *= 2;
      ++v26;
    }

    while (v26 != 36);
    v30 = 0;
    v31 = 0;
    v32 = a2 + 165;
    v33 = 1;
    do
    {
      if (*(v32 + v30))
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v31 |= v34;
      v33 *= 2;
      ++v30;
    }

    while (v30 != 14);
    v35 = "L5";
    if (!result)
    {
      v35 = "L1";
    }

    v36 = *v35;
    if (*v35)
    {
      v37 = (v35 + 1);
      do
      {
        g_CB_GDbg = (v3 + 1);
        *v3 = v36;
        v3 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v3 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v38 = *v37++;
        v36 = v38;
      }

      while (v38);
    }

    v39 = 0;
    v40 = 32;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v40;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v40 = aG[++v39];
    }

    while (v39 != 4);
    sprintf_1X(&g_CB_GDbg, v7);
    v41 = 0;
    v42 = g_CB_GDbg;
    v43 = 32;
    do
    {
      g_CB_GDbg = (v42 + 1);
      *v42 = v43;
      v42 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v42 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v43 = aR[++v41];
    }

    while (v41 != 4);
    sprintf_1X(&g_CB_GDbg, v11);
    v44 = 0;
    v45 = g_CB_GDbg;
    v46 = 32;
    do
    {
      g_CB_GDbg = (v45 + 1);
      *v45 = v46;
      v45 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v45 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v46 = aQ[++v44];
    }

    while (v44 != 4);
    sprintf_1X(&g_CB_GDbg, v15);
    v47 = 0;
    v48 = g_CB_GDbg;
    v49 = 32;
    do
    {
      g_CB_GDbg = (v48 + 1);
      *v48 = v49;
      v48 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v48 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v49 = aS[++v47];
    }

    while (v47 != 4);
    sprintf_1X(&g_CB_GDbg, v19);
    v50 = 0;
    v51 = g_CB_GDbg;
    v52 = 32;
    do
    {
      g_CB_GDbg = (v51 + 1);
      *v51 = v52;
      v51 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v51 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v52 = aB[++v50];
    }

    while (v50 != 4);
    sprintf_1X(&g_CB_GDbg, v23);
    v53 = 0;
    v54 = g_CB_GDbg;
    v55 = 32;
    do
    {
      g_CB_GDbg = (v54 + 1);
      *v54 = v55;
      v54 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v54 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v55 = aE[++v53];
    }

    while (v53 != 4);
    sprintf_1X(&g_CB_GDbg, v27);
    v56 = 0;
    v57 = g_CB_GDbg;
    v58 = 32;
    do
    {
      g_CB_GDbg = (v57 + 1);
      *v57 = v58;
      v57 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v57 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v58 = aN[++v56];
    }

    while (v56 != 4);
    sprintf_1X(&g_CB_GDbg, v31);
    v59 = g_CB_GDbg++;
    *v59 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

uint64_t sprintf_NA_x_header(uint64_t result, char *a2)
{
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v3 = qword_2A1453F90;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v5 = qword_2A1453F90;
    g_CB_GDbg = qword_2A1453F90;
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      g_CB_GDbg = (v5 + 1);
      *v5 = v6;
      v5 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v5 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sprintf_NA_E_header(uint64_t result, char a2)
{
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v3 = qword_2A1453F90;
  }

  if (result == 1)
  {
    v4 = 65;
  }

  else
  {
    v4 = 69;
  }

  if (!result)
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v5 = qword_2A1453F90;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 69;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v6 = qword_2A1453F90;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  return result;
}

void Debug_Log_SBA_Eph(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (g_Logging_Cfg)
  {
    sprintf_NA_E_header(result, 83);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a2);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, a3);
    v9 = *a4;
    v10 = g_CB_GDbg++;
    *v10 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v9);
    v11 = *(a4 + 4);
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v11);
    v13 = *(a4 + 10);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v13);
    v15 = a4[3];
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_5d(&g_CB_GDbg, v15);
    v17 = a4[4];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v17);
    v19 = a4[5];
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v19);
    v21 = a4[6];
    v22 = g_CB_GDbg++;
    *v22 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v21);
    v23 = a4[7];
    v24 = g_CB_GDbg++;
    *v24 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_10d(&g_CB_GDbg, v23);
    v25 = a4[8];
    v26 = g_CB_GDbg++;
    *v26 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v25);
    v27 = a4[9];
    v28 = g_CB_GDbg++;
    *v28 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v27);
    v29 = a4[10];
    v30 = g_CB_GDbg++;
    *v30 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v29);
    v31 = a4[11];
    v32 = g_CB_GDbg++;
    *v32 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v31);
    v33 = a4[12];
    v34 = g_CB_GDbg++;
    *v34 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v33);
    v35 = a4[13];
    v36 = g_CB_GDbg++;
    *v36 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v35);
    sprintf_sp1d(&g_CB_GDbg, a4[1]);
    v37 = g_CB_GDbg++;
    *v37 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

uint64_t sprintf_NA_A_header(uint64_t result, char a2)
{
  v2 = g_CB_GDbg++;
  *v2 = 36;
  v3 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v3 = qword_2A1453F90;
  }

  if (result)
  {
    v4 = 65;
  }

  else
  {
    v4 = 78;
  }

  g_CB_GDbg = (v3 + 1);
  *v3 = v4;
  v5 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v5 = qword_2A1453F90;
  }

  g_CB_GDbg = (v5 + 1);
  *v5 = 65;
  v6 = g_CB_GDbg;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    v6 = qword_2A1453F90;
  }

  g_CB_GDbg = (v6 + 1);
  *v6 = a2;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  return result;
}

void Debug_Log_TM_FCP_OS_Time_ms(uint64_t result, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = str_12_2[++v3];
    }

    while (v3 != 4);
    sprintf_sp1u(&g_CB_GDbg, result);
    sprintf_sp1u(&g_CB_GDbg, a2);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGPS_Ref_Time(unsigned int *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_13_2[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
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
    v8 = *(result + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(result + 5);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGPS_Ref_Pos(uint64_t result)
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

      v3 = str_16_1[v4++];
    }

    while (v4 != 6);
    sprintf_gR8(&g_CB_GDbg, *(result + 8));
    sprintf_gR8(&g_CB_GDbg, *(result + 16));
    sprintf_gR8(&g_CB_GDbg, *(result + 24));
    sprintf_gR8(&g_CB_GDbg, *(result + 32));
    v5 = *(result + 40);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v7 = *(result + 42);
    v8 = g_CB_GDbg++;
    *v8 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v7);
    sprintf_gR8(&g_CB_GDbg, *(result + 48));
    sprintf_gR8(&g_CB_GDbg, *(result + 56));
    sprintf_sp1d(&g_CB_GDbg, *(result + 64));
    sprintf_sp1d(&g_CB_GDbg, *(result + 68));
    sprintf_sp1d(&g_CB_GDbg, *result);
    v9 = g_CB_GDbg;
    v10 = 32;
    v11 = 1u;
    do
    {
      g_CB_GDbg = (v9 + 1);
      *v9 = v10;
      v9 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v9 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v10 = str_17_0[v11++];
    }

    while (v11 != 4);
    sprintf_1X(&g_CB_GDbg, *(result + 72));
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGNSS_Time_Model(unsigned int *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_18_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v5);
    v6 = result[1];
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v6);
    v8 = *(result + 4);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v8);
    sprintf_sp11d(&g_CB_GDbg, result[3], v10);
    v11 = result[4];
    v12 = g_CB_GDbg++;
    *v12 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_8d(&g_CB_GDbg, v11);
    v13 = *(result + 20);
    v14 = g_CB_GDbg++;
    *v14 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_3d(&g_CB_GDbg, v13);
    v15 = *(result + 21);
    v16 = g_CB_GDbg++;
    *v16 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v15);
    v17 = result[6];
    v18 = g_CB_GDbg++;
    *v18 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v17);
    v19 = *(result + 11);
    v20 = g_CB_GDbg++;
    *v20 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v19);
    sprintf_sp1d(&g_CB_GDbg, *(result + 28));
    v21 = g_CB_GDbg++;
    *v21 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGNSS_Not_Brd_SV_List(uint64_t result, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    return;
  }

  v6 = a2;
  v7 = result;
  v8 = g_CB_GDbg;
  if (*&dword_2A1453F88 != g_CB_GDbg)
  {
    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
    v8 = g_CB_GDbg;
  }

  v9 = 0;
  v10 = 36;
  do
  {
    g_CB_GDbg = (v8 + 1);
    *v8 = v10;
    v8 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v8 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v10 = str_19_0[++v9];
  }

  while (v9 != 4);
  if (!v7)
  {
    v11 = " L1 ";
LABEL_13:
    v12 = *v11;
    if (*v11)
    {
      v13 = (v11 + 1);
      do
      {
        g_CB_GDbg = (v8 + 1);
        *v8 = v12;
        v8 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v8 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v14 = *v13++;
        v12 = v14;
      }

      while (v14);
    }

    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v11 = " L5 ";
    goto LABEL_13;
  }

LABEL_18:
  sprintf_sp1d(&g_CB_GDbg, v6);
  if (v6)
  {
    v15 = 0;
    v16 = v6;
    do
    {
      v17 = g_CB_GDbg++;
      *v17 = 32;
      v18 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v18 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v19 = *a3;
      if (*a3 <= 7)
      {
        if (v19 > 1)
        {
          if (v19 == 4)
          {
            v22 = 83;
          }

          else
          {
            v22 = v15;
          }

          if (v19 == 2)
          {
            v15 = 69;
          }

          else
          {
            v15 = v22;
          }
        }

        else if (v19)
        {
          if (v19 == 1)
          {
            v15 = 71;
          }
        }

        else
        {
          EvCrt_Illegal_switch_case("Debug_Log_AGNSS_Not_Brd_SV_List", 2015);
          v18 = g_CB_GDbg;
          v15 = 88;
        }
      }

      else
      {
        if (v19 == 128)
        {
          v20 = 78;
        }

        else
        {
          v20 = v15;
        }

        if (v19 == 64)
        {
          v20 = 66;
        }

        if (v19 == 32)
        {
          v20 = 82;
        }

        if (v19 == 16)
        {
          v21 = 81;
        }

        else
        {
          v21 = v15;
        }

        if (v19 == 8)
        {
          v21 = 77;
        }

        if (v19 <= 31)
        {
          v15 = v21;
        }

        else
        {
          v15 = v20;
        }
      }

      g_CB_GDbg = (v18 + 1);
      *v18 = v15;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v23 = *a4++;
      sprintf1da(&g_CB_GDbg, v23, v25, 0, 0);
      ++a3;
      --v16;
    }

    while (v16);
  }

  v24 = g_CB_GDbg++;
  *v24 = 10;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  GNB_Debug_Flush_Check();
}

void Debug_Log_GPS_RTI_Bad_SV_List(uint64_t result, uint64_t a2, int *a3, unsigned __int8 *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!g_Logging_Cfg)
  {
    return;
  }

  v6 = a2;
  v7 = result;
  v8 = g_CB_GDbg;
  if (*&dword_2A1453F88 != g_CB_GDbg)
  {
    GNSS_GNB_Debug_Ctl(&g_CB_GDbg);
    v8 = g_CB_GDbg;
  }

  v9 = 0;
  v10 = 36;
  do
  {
    g_CB_GDbg = (v8 + 1);
    *v8 = v10;
    v8 = g_CB_GDbg;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      v8 = qword_2A1453F90;
      g_CB_GDbg = qword_2A1453F90;
    }

    v10 = str_22_1[++v9];
  }

  while (v9 != 4);
  if (!v7)
  {
    v11 = " L1 ";
LABEL_13:
    v12 = *v11;
    if (*v11)
    {
      v13 = (v11 + 1);
      do
      {
        g_CB_GDbg = (v8 + 1);
        *v8 = v12;
        v8 = g_CB_GDbg;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          v8 = qword_2A1453F90;
          g_CB_GDbg = qword_2A1453F90;
        }

        v14 = *v13++;
        v12 = v14;
      }

      while (v14);
    }

    goto LABEL_18;
  }

  if (v7 == 1)
  {
    v11 = " L5 ";
    goto LABEL_13;
  }

LABEL_18:
  sprintf_sp1d(&g_CB_GDbg, v6);
  if (v6)
  {
    v15 = v6;
    do
    {
      v16 = g_CB_GDbg++;
      *v16 = 32;
      v17 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v17 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v18 = *a3;
      if (*a3 > 7)
      {
        if (v18 == 64)
        {
          v20 = 78;
        }

        else
        {
          v20 = 88;
        }

        if (v18 == 32)
        {
          v20 = 66;
        }

        if (v18 == 16)
        {
          v21 = 69;
        }

        else
        {
          v21 = 88;
        }

        if (v18 == 8)
        {
          v21 = 83;
        }

        if (v18 <= 31)
        {
          v19 = v21;
        }

        else
        {
          v19 = v20;
        }
      }

      else if (v18 > 1)
      {
        if (v18 == 4)
        {
          v22 = 81;
        }

        else
        {
          v22 = 88;
        }

        if (v18 == 2)
        {
          v19 = 82;
        }

        else
        {
          v19 = v22;
        }
      }

      else if (v18)
      {
        if (v18 == 1)
        {
          v19 = 71;
        }

        else
        {
          v19 = 88;
        }
      }

      else
      {
        EvCrt_Illegal_switch_case("Debug_Log_GPS_RTI_Bad_SV_List", 2073);
        v17 = g_CB_GDbg;
        v19 = 88;
      }

      g_CB_GDbg = (v17 + 1);
      *v17 = v19;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      v23 = *a4++;
      sprintf1da(&g_CB_GDbg, v23, v25, 0, 0);
      ++a3;
      --v15;
    }

    while (v15);
  }

  v24 = g_CB_GDbg++;
  *v24 = 10;
  if (g_CB_GDbg >= qword_2A1453F98)
  {
    g_CB_GDbg = qword_2A1453F90;
  }

  GNB_Debug_Flush_Check();
}

void Debug_Log_GPS_EE_Start_Time(uint64_t result, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = str_23_0[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, result);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGLON_ChanNum(uint64_t result, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    v3 = 0;
    v4 = g_CB_GDbg;
    v5 = 36;
    do
    {
      g_CB_GDbg = (v4 + 1);
      *v4 = v5;
      v4 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v4 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v5 = str_24_0[++v3];
    }

    while (v3 != 4);
    g_CB_GDbg = (v4 + 1);
    *v4 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, result);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, a2);
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_DMS(unsigned int *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_25_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
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
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_UAC(unsigned int *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_26_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
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
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_FIV(unsigned int *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_27_1[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
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
    v10 = g_CB_GDbg++;
    *v10 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_SES(uint64_t result)
{
  if (g_Logging_Cfg)
  {
    v1 = 0;
    v2 = g_CB_GDbg;
    v3 = 36;
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

      v3 = str_28_1[++v1];
    }

    while (v1 != 4);
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, result);
    v4 = g_CB_GDbg++;
    *v4 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_Alt(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_29_2[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = *(result + 6);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_MapV(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_30_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    for (i = 1; i != 4; ++i)
    {
      v7 = g_CB_GDbg++;
      *v7 = 32;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        g_CB_GDbg = qword_2A1453F90;
      }

      sprintf_11f9(&g_CB_GDbg, result[i]);
    }

    v8 = *(result + 32);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    sprintf_gR8(&g_CB_GDbg, result[5]);
    sprintf_gR8(&g_CB_GDbg, result[6]);
    sprintf_gR8(&g_CB_GDbg, result[7]);
    v10 = *(result + 64);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    v12 = *(result + 65);
    v13 = g_CB_GDbg++;
    *v13 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v12);
    v14 = *(result + 66);
    v15 = g_CB_GDbg++;
    *v15 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v14);
    v16 = *(result + 67);
    v17 = g_CB_GDbg++;
    *v17 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v16);
    v18 = *(result + 68);
    v19 = g_CB_GDbg++;
    *v19 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v18);
    v20 = g_CB_GDbg++;
    *v20 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_SpdC(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_31_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = *(result + 1);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v6);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v8 = g_CB_GDbg++;
    *v8 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_AT_Vel(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_32_0[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_V_Vel(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_33[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_Heading(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_34[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    sprintf_gR8(&g_CB_GDbg, result[1]);
    sprintf_gR8(&g_CB_GDbg, result[2]);
    v6 = g_CB_GDbg++;
    *v6 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_ExtA_Tunnel_End_Point(double *result)
{
  if (g_Logging_Cfg)
  {
    v2 = 0;
    v3 = g_CB_GDbg;
    v4 = 36;
    do
    {
      g_CB_GDbg = (v3 + 1);
      *v3 = v4;
      v3 = g_CB_GDbg;
      if (g_CB_GDbg >= qword_2A1453F98)
      {
        v3 = qword_2A1453F90;
        g_CB_GDbg = qword_2A1453F90;
      }

      v4 = str_35[++v2];
    }

    while (v2 != 4);
    v5 = *result;
    g_CB_GDbg = (v3 + 1);
    *v3 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v5);
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11f9(&g_CB_GDbg, result[1]);
    v7 = g_CB_GDbg++;
    *v7 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_11f9(&g_CB_GDbg, result[2]);
    sprintf_gR8(&g_CB_GDbg, result[3]);
    sprintf_gR8(&g_CB_GDbg, result[4]);
    v8 = *(result + 20);
    v9 = g_CB_GDbg++;
    *v9 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v8);
    v10 = *(result + 42);
    v11 = g_CB_GDbg++;
    *v11 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_2d(&g_CB_GDbg, v10);
    sprintf_gR8(&g_CB_GDbg, result[6]);
    sprintf_gR8(&g_CB_GDbg, result[7]);
    v12 = g_CB_GDbg++;
    *v12 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
  }
}

void Debug_Log_AGNSS_SH_Iono_Model(unsigned int *result)
{
  if (g_Logging_Cfg)
  {
    v1 = 0;
    v2 = g_CB_GDbg;
    v3 = 36;
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

      v3 = aAiT[++v1];
    }

    while (v1 != 8);
    v4 = *(result + 2);
    g_CB_GDbg = (v2 + 1);
    *v2 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_4d(&g_CB_GDbg, v4);
    v5 = *result;
    v6 = g_CB_GDbg++;
    *v6 = 32;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    sprintf_6d(&g_CB_GDbg, v5);
    sprintf_sp1d(&g_CB_GDbg, *(result + 3));
    v7 = g_CB_GDbg++;
    *v7 = 10;
    if (g_CB_GDbg >= qword_2A1453F98)
    {
      g_CB_GDbg = qword_2A1453F90;
    }

    GNB_Debug_Flush_Check();
    if (*(result + 3))
    {
      v8 = 0;
      v62 = result + 278;
      v63 = result + 6;
      do
      {
        v9 = 0;
        v10 = g_CB_GDbg;
        v11 = 36;
        do
        {
          g_CB_GDbg = (v10 + 1);
          *v10 = v11;
          v10 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v10 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v11 = aAi[++v9];
        }

        while (v9 != 4);
        v12 = &result[518 * v8 + 2];
        v13 = *v12;
        g_CB_GDbg = (v10 + 1);
        *v10 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v13);
        v14 = 0;
        v15 = g_CB_GDbg;
        v16 = 32;
        do
        {
          g_CB_GDbg = (v15 + 1);
          *v15 = v16;
          v15 = g_CB_GDbg;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            v15 = qword_2A1453F90;
            g_CB_GDbg = qword_2A1453F90;
          }

          v16 = aH_0[++v14];
        }

        while (v14 != 2);
        v17 = v12[1];
        g_CB_GDbg = (v15 + 1);
        *v15 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_4d(&g_CB_GDbg, v17);
        v18 = v12[2];
        v19 = g_CB_GDbg++;
        *v19 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        sprintf_2d(&g_CB_GDbg, v18);
        v20 = v12[3];
        v21 = g_CB_GDbg++;
        *v21 = 32;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        v61 = v8;
        sprintf_2d(&g_CB_GDbg, v20);
        v22 = g_CB_GDbg++;
        *v22 = 10;
        if (g_CB_GDbg >= qword_2A1453F98)
        {
          g_CB_GDbg = qword_2A1453F90;
        }

        GNB_Debug_Flush_Check();
        v23 = 0;
        v24 = 0;
        v25 = -1;
        do
        {
          v26 = 0;
          v27 = g_CB_GDbg;
          v28 = 36;
          do
          {
            g_CB_GDbg = (v27 + 1);
            *v27 = v28;
            v27 = g_CB_GDbg;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              v27 = qword_2A1453F90;
              g_CB_GDbg = qword_2A1453F90;
            }

            v28 = aAi[++v26];
          }

          while (v26 != 4);
          v29 = *v12;
          g_CB_GDbg = (v27 + 1);
          *v27 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v29);
          v30 = 0;
          v31 = g_CB_GDbg;
          v32 = 32;
          do
          {
            g_CB_GDbg = (v31 + 1);
            *v31 = v32;
            v31 = g_CB_GDbg;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              v31 = qword_2A1453F90;
              g_CB_GDbg = qword_2A1453F90;
            }

            v32 = aC_1[++v30];
          }

          while (v30 != 2);
          g_CB_GDbg = (v31 + 1);
          *v31 = 32;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          sprintf_2d(&g_CB_GDbg, v23);
          if (v23 <= v12[2])
          {
            v33 = &v63[2 * v24];
            v34 = v25;
            do
            {
              v35 = g_CB_GDbg++;
              *v35 = 32;
              if (g_CB_GDbg >= qword_2A1453F98)
              {
                g_CB_GDbg = qword_2A1453F90;
              }

              v36 = *v33 * 1000.0;
              if (v36 <= 0.0)
              {
                v37 = -0.5;
              }

              else
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

              sprintf_7f(&g_CB_GDbg, v39, 4);
              ++v33;
              ++v24;
              ++v34;
            }

            while (v34 < v12[2]);
          }

          v40 = g_CB_GDbg++;
          *v40 = 10;
          if (g_CB_GDbg >= qword_2A1453F98)
          {
            g_CB_GDbg = qword_2A1453F90;
          }

          GNB_Debug_Flush_Check();
          ++v25;
          v41 = v23 >= v12[3];
          v23 = (v23 + 1);
        }

        while (!v41);
        if (v12[3])
        {
          v42 = 0;
          v43 = 0;
          v44 = 1;
          do
          {
            v45 = 0;
            v46 = g_CB_GDbg;
            v47 = 36;
            do
            {
              g_CB_GDbg = (v46 + 1);
              *v46 = v47;
              v46 = g_CB_GDbg;
              if (g_CB_GDbg >= qword_2A1453F98)
              {
                v46 = qword_2A1453F90;
                g_CB_GDbg = qword_2A1453F90;
              }

              v47 = aAi[++v45];
            }

            while (v45 != 4);
            v48 = *v12;
            g_CB_GDbg = (v46 + 1);
            *v46 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v48);
            v49 = 0;
            v50 = g_CB_GDbg;
            v51 = 32;
            do
            {
              g_CB_GDbg = (v50 + 1);
              *v50 = v51;
              v50 = g_CB_GDbg;
              if (g_CB_GDbg >= qword_2A1453F98)
              {
                v50 = qword_2A1453F90;
                g_CB_GDbg = qword_2A1453F90;
              }

              v51 = aS_0[++v49];
            }

            while (v49 != 2);
            g_CB_GDbg = (v50 + 1);
            *v50 = 32;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            sprintf_2d(&g_CB_GDbg, v44);
            if (v44 <= v12[2])
            {
              v52 = &v62[2 * v43];
              v53 = v42;
              do
              {
                v54 = g_CB_GDbg++;
                *v54 = 32;
                if (g_CB_GDbg >= qword_2A1453F98)
                {
                  g_CB_GDbg = qword_2A1453F90;
                }

                v55 = *v52 * 1000.0;
                if (v55 <= 0.0)
                {
                  v56 = -0.5;
                }

                else
                {
                  v56 = 0.5;
                }

                v57 = v55 + v56;
                if (v57 <= 2147483650.0)
                {
                  if (v57 >= -2147483650.0)
                  {
                    v58 = v57;
                  }

                  else
                  {
                    v58 = 0x80000000;
                  }
                }

                else
                {
                  v58 = 0x7FFFFFFFLL;
                }

                sprintf_7f(&g_CB_GDbg, v58, 4);
                ++v52;
                ++v43;
                ++v53;
              }

              while (v53 < v12[2]);
            }

            v59 = g_CB_GDbg++;
            *v59 = 10;
            if (g_CB_GDbg >= qword_2A1453F98)
            {
              g_CB_GDbg = qword_2A1453F90;
            }

            GNB_Debug_Flush_Check();
            ++v42;
            v41 = v44 >= v12[3];
            v44 = (v44 + 1);
          }

          while (!v41);
        }

        v8 = v61 + 1;
        v62 += 518;
        v63 += 518;
      }

      while (v61 + 1 < *(result + 3));
    }
  }
}

void SB_SBAS_PrePos(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v54 = *MEMORY[0x29EDCA608];
  v9 = (a5 + 5548);
  if (*(a3 + 17) && (*a1 & 1) != 0)
  {
    memset(v53, 0, 39);
    memset(v52, 0, 39);
    if (*(a2 + 208) == *(a3 + 1772))
    {
      a1[48] = 0;
    }

    v10 = (a5 + 8696);
    *(a5 + 8824) = 0;
    *(a5 + 8792) = 0uLL;
    *(a5 + 8808) = 0uLL;
    *(a5 + 8760) = 0uLL;
    *(a5 + 8776) = 0uLL;
    *(a5 + 8728) = 0uLL;
    *(a5 + 8744) = 0uLL;
    *(a5 + 8696) = 0uLL;
    *(a5 + 8712) = 0uLL;
    *(a5 + 5544) = 0;
    *v9 = 0;
    *(a5 + 5549) = 0;
    v11 = 9;
    *(a5 + 5569) = 0;
    do
    {
      *(a5 + 5565) = 0;
      *(a5 + 5557) = 0;
      *(a5 + 5577) = 0;
      *(a5 + 5582) = 0;
      --v11;
    }

    while (v11);
    v12 = (a5 + 8705);
    *(a5 + 6186) = -1;
    *&v13 = -1;
    *(&v13 + 1) = -1;
    *v39 = a6 + 218;
    *(a5 + 6155) = v13;
    *(a5 + 6171) = v13;
    v36 = a6 + 9376;
    v37 = a6 + 656;
    v14 = a4 + 34368;
    v15 = 18;
    do
    {
      if (v9[3274] > 8u)
      {
        break;
      }

      if (*(v14 + 176) == 1)
      {
        v16 = *(v14 + 188);
        v17 = v16 - 120;
        if ((v16 - 120) <= 0x26)
        {
          v49 = 0u;
          memset(v46, 0, 32);
          v18 = *(v14 + 16);
          *&v46[8] = *v14;
          v19 = v16 + 59;
          memset(&v46[40], 0, 40);
          v50 = 0;
          v47 = 0u;
          v48 = 0u;
          v51[0] = 0;
          *(v51 + 3) = 0;
          DWORD2(v49) = 2;
          *&v46[24] = v18;
          *&v46[40] = *(v14 + 32);
          *&v46[56] = *(v14 + 96);
          v20 = *(a6 + v16 + 59);
          if (v20 == 157 || v17 == v8[48])
          {
            Comp_AzEl((v8 + 24), a2 + 136, v46, (a6 + v19), (*v39 + 2 * v19), (v37 + 40 * v19), (v36 + 40 * v19));
            v8 = a1;
            LOBYTE(v20) = *(a6 + v19);
          }

          if (v20 < 1)
          {
            ++v9[3277];
            v21 = v52;
          }

          else
          {
            Comp_AA(v46, v20, *(*v39 + 2 * v19), v8, a2, a5, v16);
            v8 = a1;
            v21 = v53;
          }

          v21[v17] = 1;
        }
      }

      v14 += 192;
      --v15;
    }

    while (v15);
    v22 = 0;
    v23 = 16536;
    v24 = 7816;
    v25 = 576;
    v26 = a2;
    do
    {
      if (v9[3274] > 8u)
      {
        break;
      }

      v45 = 0;
      *v44 = 0;
      if ((v53[v22] & 1) == 0 && (v52[v22] & 1) == 0)
      {
        v40 = v22 + 120;
        if (Core_Load_SBAS_Apx((v22 + 120), &v43, v44))
        {
          v49 = 0u;
          *v46 = 0;
          v50 = 0;
          v47 = 0u;
          v48 = 0u;
          memset(&v46[32], 0, 48);
          v51[0] = 0;
          *(v51 + 3) = 0;
          v27.i64[0] = v44[0];
          v27.i64[1] = v44[1];
          *&v46[8] = vcvtq_f64_s64(v27);
          DWORD2(v49) = 2;
          *&v46[24] = v45;
          v28 = *(a6 + v22 + 179);
          v29 = a1;
          if (v28 == 157 || v22 == a1[48])
          {
            Comp_AzEl((a1 + 24), a2 + 136, v46, (a6 + v22 + 179), (a6 + v25), (a6 + v24), (a6 + v23));
            v29 = a1;
            LOBYTE(v28) = *(a6 + v22 + 179);
          }

          if (v28 < 1)
          {
            v52[v22] = 1;
            ++v9[3277];
            v26 = a2;
          }

          else
          {
            v26 = a2;
            Comp_AA(v46, v28, *(a6 + 2 * v22 + 576), v29, a2, a5, (v22 + 120));
            v53[v22] = 1;
          }

          if (*(a3 + 1772) == *(v26 + 208))
          {
            EvLog_d("SBAS_PrePos: Loaded NV almanac ", v40);
          }
        }

        else if (*(a3 + 1772) == *(v26 + 208))
        {
          EvLog_d("SBAS_PrePos: Failed to load NV almanac ", v40);
        }
      }

      ++v22;
      v23 += 40;
      v24 += 40;
      v25 += 2;
    }

    while (v22 != 39);
    v30 = 0;
    while (*(*(a3 + 1072) + v30) != 1)
    {
      if (v52[v30])
      {
        goto LABEL_39;
      }

LABEL_40:
      if (++v30 == 39)
      {
        for (i = 0; i != 39; ++i)
        {
          if ((v53[i] & 1) == 0 && (v52[i] & 1) == 0)
          {
            v12[v9[3275]++] = i + 120;
          }
        }

        v32 = a1[48];
        if ((v32 + 1) <= 0x26u)
        {
          v33 = v32 + 1;
        }

        else
        {
          v33 = 0;
        }

        a1[48] = v33;
        return;
      }
    }

    ++v9[3277];
    v52[v30] = 1;
LABEL_39:
    SB_SBAS_Remove_SV_in_List((v30 + 120), v9 + 3274, v10, 9u);
    SB_SBAS_Remove_SV_in_List((v30 + 120), v9 + 3275, v12, 0x27u);
    goto LABEL_40;
  }

  *(a5 + 8822) = 0;
  if (*(a3 + 17) == 1 && (*a1 & 1) == 0)
  {
    v34 = 0;
    for (j = 0; j != 39; ++j)
    {
      if ((*(*(a3 + 1072) + j) & 1) == 0)
      {
        *(a5 + 8705 + v34) = j + 120;
        v34 = *(a5 + 8823) + 1;
        *(a5 + 8823) = v34;
      }
    }
  }

  memset((a6 + 179), 157, 18);

  memset_pattern16((a6 + 576), &unk_299050270, 0x24uLL);
}

void Comp_AA(uint64_t a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v39 = *MEMORY[0x29EDCA608];
  v13 = *(a1 + 120);
  v14 = *(a6 + 8822) + 114;
  v37 = 0uLL;
  v38 = 0;
  v15 = Comp_SVrange_Sag_Corr(&v37, v36, (a4 + 24), (a1 + 8));
  v16 = 0;
  v17 = ((*(a5 + 96) - *(a1 + 56)) * 299792458.0);
  memset(v36, 0, sizeof(v36));
  do
  {
    v36[v16 + 2] = *(a1 + 48 + 8 * v16) - *(a5 + 48 + 8 * v16);
    v18 = v16 + 3;
    --v16;
  }

  while (v18 > 1);
  v19 = 0;
  v20 = v15;
  v21 = 0.0;
  do
  {
    v21 = v21 + v37.f64[v19] * v36[v19];
    ++v19;
  }

  while (v19 != 3);
  v22 = a6 + 72 + 48 * v14;
  v23 = (v21 + (*(a5 + 104) - *(a1 + 64)) * 299792458.0) / -0.190293673;
  v24 = (v17 + v20) / 299792458.0;
  v25 = *(a5 + 128) - v24;
  *v22 = *(a5 + 208);
  *(v22 + 4) = 1;
  *(v22 + 10) = a7;
  *(v22 + 8) = 7;
  *(v22 + 12) = v13 == 1;
  *(v22 + 13) = v13 == 2;
  *(v22 + 14) = 256;
  *(v22 + 16) = (v24 * 2000.0 + 0.5);
  *(v22 + 18) = 200;
  v26 = -0.5;
  if (v23 > 0.0)
  {
    v26 = 0.5;
  }

  v27 = v23 + v26;
  v28 = v27;
  if (v27 < -2147483650.0)
  {
    LOWORD(v28) = 0;
  }

  if (v27 <= 2147483650.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = -1;
  }

  *(v22 + 22) = v29;
  *(v22 + 24) = -1;
  v30 = v25 / 1.5;
  if (v25 / 1.5 <= 0.0)
  {
    v30 = v25 / 1.5 + -1.0;
  }

  v31 = v30;
  *(v22 + 26) = 5115;
  v32 = (v25 + v30 * -1.5) * 1023000.0;
  *(v22 + 28) = v31;
  *(v22 + 32) = v32;
  *(v22 + 36) = vcvtd_n_s64_f64(v32 - v32, 0x10uLL);
  if (v31 < 0)
  {
    *(v22 + 28) = v31 + 403200;
  }

  *(v22 + 38) = 0;
  *(v22 + 40) = -1;
  *(v22 + 41) = a2;
  v33 = a3 >> 1;
  if (a3 >= 0x169)
  {
    LOBYTE(v33) = -1;
  }

  *(v22 + 42) = v33;
  *(v22 + 43) = 0;
  *(v22 + 44) = 0;
  if (a7 >= 0x78)
  {
    if (v13 == 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    *(a6 + a7 - 120 + 8783) += v34;
    v35 = *(a6 + 8822);
    *(a6 + a7 + 6035) = v35 + 114;
    *(a6 + v35 + 8696) = a7;
    ++*(a6 + 8822);
  }
}

uint64_t SB_SBAS_Remove_SV_in_List(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a2 && a3)
  {
    v4 = *a2;
    if (*a2 && v4 <= a4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        while (a3[v6] == result)
        {
          a3[v6] = 0;
          v8 = *a2;
          ++v6;
          v7 = 1;
          LOBYTE(v4) = *a2;
          if (v6 >= v8)
          {
            goto LABEL_14;
          }
        }

        ++v6;
      }

      while (v6 < v4);
      LOBYTE(v8) = v4;
      if ((v7 & 1) == 0)
      {
        return result;
      }

LABEL_14:
      if (v8)
      {
        v9 = 0;
        LODWORD(v10) = 0;
        v11 = v8;
        do
        {
          if (a3[v9])
          {
            a3[v10] = a3[v9];
            LODWORD(v10) = v10 + 1;
            v11 = *a2;
          }

          ++v9;
        }

        while (v9 < v11);
      }

      else
      {
        v11 = 0;
        LODWORD(v10) = 0;
      }

      if (v10 < v11)
      {
        v10 = v10;
        do
        {
          if (a3[v10])
          {
            a3[v10] = 0;
            v11 = *a2;
          }

          ++v10;
        }

        while (v10 < v11);
      }

      *a2 = v11 - 1;
    }
  }

  return result;
}

void GNSS_Write_GNB_Ctrl(char **result)
{
  if (result)
  {
    v3 = *result;
    v2 = result[1];
    if (v2 != *result)
    {
      if (v2 > *result)
      {
        v3 = result[3];
      }

      v4 = v3 - v2;
      v5 = GN_GPS_Write_GNB_Ctrl((v3 - v2), v2);
      GNB_Debug_BlockMove(result[1], v5);
      v6 = &result[1][v5];
      result[1] = v6;
      if (v6 >= result[3])
      {
        v6 = result[2];
        result[1] = v6;
        if (v5 == v4)
        {
          v7 = GN_GPS_Write_GNB_Ctrl((*result - v6), v6);
          GNB_Debug_BlockMove(result[1], v7);
          v6 = &result[1][v7];
          result[1] = v6;
        }
      }

      if (v6 == *result)
      {
        v8 = result[2];
        *result = v8;
        result[1] = v8;
      }
    }
  }
}

char **G5K_ME_Send_WakeUp(char **a1, char **a2)
{
  v4 = (*a1)++;
  *v4 = 10;
  v5 = *a1;
  if (*a1 >= a1[3])
  {
    v5 = a1[2];
  }

  *a1 = v5 + 1;
  *v5 = 35;
  v6 = *a1;
  if (*a1 >= a1[3])
  {
    v6 = a1[2];
  }

  v7 = 0;
  v8 = 87;
  v9 = v6;
  do
  {
    *a1 = v9 + 1;
    *v9 = v8;
    v9 = *a1;
    if (*a1 >= a1[3])
    {
      v9 = a1[2];
      *a1 = v9;
    }

    v8 = str_9[++v7];
  }

  while (v7 != 4);
  v10 = mach_continuous_time();
  sprintf_sp1u(a1, (*&g_MacClockTicksToMsRelation * v10));
  v11 = (*a1)++;
  *v11 = 32;
  v12 = *a1;
  if (*a1 >= a1[3])
  {
    v12 = a1[2];
  }

  for (i = 0; i != 10; ++i)
  {
    v14 = 91;
    v15 = 1u;
    do
    {
      *a1 = v12 + 1;
      *v12 = v14;
      v12 = *a1;
      if (*a1 >= a1[3])
      {
        v12 = a1[2];
        *a1 = v12;
      }

      v14 = str_1_2[v15++];
    }

    while (v15 != 10);
  }

  *a1 = v12 + 1;
  *v12 = 32;
  v16 = *a1;
  v17 = a1[3];
  if (*a1 >= v17)
  {
    v16 = a1[2];
    *a1 = v16;
  }

  if (v6 == v16)
  {
    v21 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v20 = *v6++;
      v19 = v20;
      if (v6 >= v17)
      {
        v6 = a1[2];
      }

      v18 += v19;
    }

    while (v6 != v16);
    v21 = v18;
  }

  *a1 = v16 + 1;
  *v16 = 38;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_02x(a1, v21);
  v22 = (*a1)++;
  *v22 = 10;
  v23 = *a1;
  if (*a1 >= a1[3])
  {
    v23 = a1[2];
  }

  *a1 = v23 + 1;
  *v23 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  GNSS_Write_GNB_Ctrl(a1);

  return GNSS_GNB_Debug_Ctl(a2);
}

char **G5K_ME_Send_Sleep(char **a1, char **a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *MEMORY[0x29EDCA608];
  GNSS_Write_GNB_Ctrl(a1);
  GNSS_GNB_Debug_Ctl(a2);
  if (g_Logging_Cfg >= 1)
  {
    v10 = (*a2)++;
    *v10 = 10;
    v11 = *a2;
    if (*a2 >= a2[3])
    {
      v11 = a2[2];
    }

    v12 = 35;
    v13 = 1u;
    do
    {
      *a2 = v11 + 1;
      *v11 = v12;
      v11 = *a2;
      if (*a2 >= a2[3])
      {
        v11 = a2[2];
        *a2 = v11;
      }

      v12 = str_2_2[v13++];
    }

    while (v13 != 8);
    sprintf_sp1u(a2, a3);
    sprintf_sp1u(a2, a4);
    v14 = (*a2)++;
    *v14 = 10;
    if (*a2 >= a2[3])
    {
      *a2 = a2[2];
    }
  }

  if (a5)
  {
    v17 = 0;
    v16[0] = BYTE1(a3);
    v16[1] = a3;
    v16[2] = BYTE1(a4);
    v16[3] = a4;
    STEU_Encode_c(a1, 83, 12, v16);
  }

  GNSS_Write_GNB_Ctrl(a1);
  return GNSS_GNB_Debug_Ctl(a2);
}

char **G5K_ME_Send_Ctrl(char **a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1;
  v275 = *MEMORY[0x29EDCA608];
  v10 = (*a1)++;
  *v10 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  v11 = *(a4 + 1672);
  v12 = *(a4 + 1668);
  if (v11)
  {
    EvLog_nd("G5K_ME_Send_Ctrl: Fix_Int Updated ", 2, a3, v12, v11);
    LODWORD(v12) = *(a4 + 1672);
    *(a4 + 1668) = v12;
  }

  v267 = a5;
  v13 = a5 + 0x2000;
  v14 = *(*(p_api + 80) + 32);
  if (v12 >= 0x1F4)
  {
    v15 = 100;
  }

  else
  {
    v15 = 50;
  }

  v16 = -API_Get_Est_ME_TTick();
  do
  {
    v14 += v12;
  }

  while (v16 + v14 <= v15);
  v18 = *(a4 + 1668);
  HIDWORD(v19) = 652835029 * v18;
  LODWORD(v19) = 652835029 * v18;
  if ((v19 >> 3) >= 0x418938 && 0x3E8 % v18)
  {
    v258 = 0;
    v252 = 0;
  }

  else
  {
    v20 = *(p_api + 80);
    LOWORD(v17) = *(*(p_api + 72) + 2044);
      ;
    }

    v22 = *(v20 + 184);
    while (i < 0.0)
    {
      i = i + 604800.0;
    }

    v23 = *(v20 + 872) / 299792458.0;
    v24 = *(v20 + 32);
    v25 = i + *(a4 + 1732) * 0.000000001;
    v26 = v25 - v25;
    v27 = (v12 / 0x3E8);
    if (v12 < 2000)
    {
      v27 = 1.0;
    }

    if (v26 >= 0.7)
    {
      v27 = v27 + 1.0;
    }

    v28 = (v22 + 1.0) * (v27 - v26) * 1000.0;
    v29 = vcvtd_n_u64_f64(v28 - v28, 0x10uLL);
    v258 = v24 + v28;
    v252 = v29;
    if (v23 < 0.004)
    {
      v30 = v24 + v28 - v14 + (v29 >> 15);
      v31 = v14 - v12 - (v28 + v24 + (v29 >> 15));
      do
      {
        v32 = v30;
        v30 -= v12;
        v31 += v12;
      }

      while (v32 > 10);
      if (v12 < 500)
      {
        if (v32 < 0)
        {
          v32 = 10;
        }
      }

      else
      {
        v33 = 1 - v12;
        if (v32 > 1 - v12)
        {
          v33 = v32;
        }

        v34 = v33 + v31;
        v58 = v34 == 0;
        v35 = (v34 - (v34 != 0)) / v12;
        if (!v58)
        {
          ++v35;
        }

        v32 += v35 * v12;
        if (v32 <= -50)
        {
          v32 = -50;
        }
      }

      if (v32 >= 0)
      {
        v36 = v32;
      }

      else
      {
        v36 = -v32;
      }

      if (v36 <= 2 && v23 >= 0.0001)
      {
        v32 = 0;
      }

      v14 += v32;
    }
  }

  *(a3 + 564) = v14;
  G5K_ME_enc_n(v9, v14, v18);
  *v274 = *a5;
  *&v274[4] = *(a5 + 4);
  *&v274[6] = *(a5 + 6);
  *&v274[14] = *(a5 + 16);
  *&v274[18] = *(a5 + 20);
  *&v274[20] = *(a5 + 14);
  *&v274[22] = *(a5 + 22);
  *&v274[26] = *(a5 + 26);
  *&v274[28] = *(a5 + 28);
  v38 = *(a5 + 56);
  v274[32] = *(a5 + 60);
  v274[33] = v38;
  v274[34] = *(a5 + 8822) + *(a5 + 8596);
  *&v274[35] = *(a5 + 36);
  v39 = *(a5 + 48);
  v274[39] = *(a5 + 44);
  *&v274[40] = v39;
  v274[44] = *(a5 + 52);
  *&v274[45] = *(a5 + 40);
  v274[47] = *(a5 + 68);
  *&v274[48] = *(a5 + 32);
  *v273 = &v274[50];
  STEU_Encode(v9, 97, v274, v273);
  if (*v273 - v274 != 51)
  {
    gn_report_assertion_failure("ME_enc_a: Wrong Length!");
  }

  v40 = *(v9 + 2) - *v9;
  if (v40 <= 0)
  {
    v40 += *(v9 + 6) - *(v9 + 4);
  }

  v270 = (a5 + 0x2000);
  v264 = a3;
  v266 = a4;
  if (v40 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  v41 = 0;
  v42 = 0;
  LOBYTE(v272) = 0;
  v43 = *(&xmmword_2A1454168 + 1);
  v269 = v267 + 6194;
  v261 = *(&xmmword_2A1454168 + 1) + 1880;
  do
  {
    v44 = *(v269 + 2 * v41);
    if (v44 >= 1)
    {
      v45 = *(v267 + 5976 + (v44 - 1));
      if ((v45 & 0x8000000000000000) == 0)
      {
        v46 = v267 + 72 + 48 * v45;
        if (*(v46 + 4) == 1)
        {
          v47 = *(v46 + 14);
          if (*(v46 + 12))
          {
            v47 |= 0x10u;
          }

          if (*(v46 + 13))
          {
            v48 = v47 | 0x20;
          }

          else
          {
            v48 = v47;
          }

          *&v49 = *(v46 + 32) * 0.000000977517107;
          v50 = *&v49 + *(v46 + 28) * 1.5;
          LOWORD(v49) = *(v46 + 36);
          v51 = v50 + v49 * 1.49157273e-11;
          v52 = *(v46 + 8);
          v53 = *(v46 + 10);
          if (v52 == 2)
          {
            v53 = v53;
            if ((v53 - 7) < 0xF2u)
            {
              goto LABEL_95;
            }

            v51 = v51 + (10800 - *(v267 + 52)) + *(v261 + 8 * (v53 + 7)) * -0.00000000333564095;
            v54 = 86400.0;
          }

          else
          {
            if (v52 == 4)
            {
              v51 = v51 + -14.0;
              if (*(v46 + 9) == 12)
              {
                v51 = v51 + *(v43 + 2000) * -0.00000000333564095;
              }
            }

            v54 = 604800.0;
          }

          if (v51 >= 0.0)
          {
            v55 = v51;
          }

          else
          {
            v55 = v54 + v51;
          }

          while (v55 > v54)
          {
            v55 = v55 - v54;
          }

          v56 = Encode_SVid_STE(*(v46 + 8), v53, &v272);
          if (v272)
          {
            v58 = v56 == 0;
          }

          else
          {
            v58 = 1;
          }

          if (v58)
          {
            EvCrt_nd("ME_enc_s: Invalid Constel / SV ID ", 2, v57, v272, v56);
          }

          else
          {
            v274[0] = v272;
            v274[1] = v56;
            v274[2] = v48;
            v59 = (*(v46 + 22) * 48.7151802);
            *&v274[3] = v59;
            v274[5] = BYTE2(v59);
            *&v274[6] = (v55 * 1000.0);
            v274[8] = (v55 * 1000.0) >> 16;
            v60 = v55 * 1000.0 - (v55 * 1000.0);
            v274[9] = (v55 * 1000.0) >> 24;
            *&v274[10] = vcvtd_n_s64_f64(v60, 0x10uLL);
            LOWORD(v60) = *(v46 + 18);
            *&v274[12] = (*&v60 * 1.90293673);
            v61 = *(v46 + 26);
            if (v61 < 0x13FB)
            {
              v65 = 3439332561 * (v61 << 16);
              v63 = v65 >> 45;
              v64 = v65 >> 53;
            }

            else
            {
              if (v52 == 3)
              {
                v62 = 65280;
              }

              else
              {
                v62 = 0x8000;
              }

              if (v52 == 3)
              {
                LOBYTE(v63) = -1;
              }

              else
              {
                LOBYTE(v63) = 0;
              }

              LODWORD(v64) = v62 >> 8;
            }

            v274[14] = v63;
            v274[15] = v64;
            *&v66 = *(v46 + 38) * 0.475734182;
            v67 = *&v66;
            v274[16] = *(v46 + 24);
            LOBYTE(v66) = *(v46 + 40);
            v68 = (v66 * 1.90293673);
            *&v274[17] = v67;
            if (v68 >= 0xFF)
            {
              LOBYTE(v68) = -1;
            }

            v274[19] = v68;
            *&v274[20] = *(v46 + 41);
            *&v274[22] = 0;
            v274[26] = *(v46 + 43);
            *&v274[27] = *(v46 + 44);
            *v273 = &v274[29];
            STEU_Encode(v9, 115, v274, v273);
            if (*v273 - v274 != 30)
            {
              gn_report_assertion_failure("ME_enc_s: Wrong Length!");
            }

            if ((++v42 & 7) == 0)
            {
              v69 = *(v9 + 2) - *v9;
              if (v69 <= 0)
              {
                v69 += *(v9 + 6) - *(v9 + 4);
              }

              if (v69 <= 0x1FF)
              {
                GNSS_Write_GNB_Ctrl(v9);
              }

              GNB_Debug_Flush_Check();
            }
          }
        }
      }
    }

LABEL_95:
    ++v41;
  }

  while (v41 != 218);
  if (*(v13 + 630))
  {
    v70 = 0;
    v71 = (v267 + 5588);
    do
    {
      v72 = v9;
      if ((*(v71 - 20) & 1) == 0)
      {
        gn_report_assertion_failure("ME_enc_s: SBAS AA not valid!");
      }

      v73 = *(v71 - 30);
      v74 = *(v71 - 32);
      v75 = *(v71 - 31);
      v76 = Encode_SVid_STE(*(v71 - 36), *(v71 - 34), &v272);
      if (v272 != 2 || v76 == 0)
      {
        EvCrt_nd("ME_enc_s: S Invalid STE SV / Constel ID ", 2, v77, v272, v76);
        v9 = v72;
      }

      else
      {
        v79 = v73 | 0x10;
        if (!v74)
        {
          v79 = v73;
        }

        if (v75)
        {
          v79 |= 0x20u;
        }

        v274[0] = 2;
        v274[1] = v76;
        v274[2] = v79;
        v80 = (*(v71 - 11) * 48.7151802);
        *&v274[3] = v80;
        v81 = *(v71 - 4);
        v82 = *(v71 - 3);
        v274[5] = BYTE2(v80);
        *&v83 = v82 * 0.000000977517107;
        v84 = *&v83 + v81 * 1.5;
        LOWORD(v83) = *(v71 - 4);
        v85 = (v84 + v83 * 1.49157273e-11) * 1000.0;
        *&v274[6] = v85;
        v274[8] = v85 >> 16;
        v274[9] = v85 >> 24;
        v86 = v85 - v85;
        *&v274[10] = vcvtd_n_s64_f64(v86, 0x10uLL);
        LOWORD(v86) = *(v71 - 13);
        *&v274[12] = (*&v86 * 1.90293673);
        *&v274[14] = (3439332561u * (*(v71 - 9) << 16)) >> 45;
        *&v87 = *(v71 - 3) * 0.475734182;
        v88 = *&v87;
        v274[16] = *(v71 - 20);
        LOBYTE(v87) = *(v71 - 4);
        v89 = (v87 * 1.90293673);
        *&v274[17] = v88;
        if (v89 >= 0xFF)
        {
          LOBYTE(v89) = -1;
        }

        v274[19] = v89;
        *&v274[20] = *(v71 - 3);
        *&v274[22] = 0;
        v274[26] = *(v71 - 1);
        *&v274[27] = *v71;
        *v273 = &v274[29];
        v9 = v72;
        STEU_Encode(v72, 115, v274, v273);
        if (*v273 - v274 != 30)
        {
          gn_report_assertion_failure("ME_enc_s: S Wrong Length!");
        }

        if ((++v42 & 7) == 0)
        {
          v90 = *(v72 + 2) - *v72;
          if (v90 <= 0)
          {
            v90 += *(v72 + 6) - *(v72 + 4);
          }

          if (v90 <= 0x1FF)
          {
            GNSS_Write_GNB_Ctrl(v72);
          }

          GNB_Debug_Flush_Check();
        }
      }

      ++v70;
      v71 += 24;
    }

    while (v70 < *(v13 + 630));
  }

  v91 = *(v9 + 2) - *v9;
  v92 = v267 + 6194;
  if (v91 <= 0)
  {
    v91 += *(v9 + 6) - *(v9 + 4);
  }

  if (v91 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  LODWORD(v272) = 0;
  if (*(v13 + 400))
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    do
    {
      Constell_Prn = Get_Constell_Prn((*(v269 + 2 * v93) - 1));
      if (Constell_Prn == 6)
      {
        v100 = v94 + 1;
      }

      else
      {
        v100 = v94;
      }

      if (Constell_Prn == 5)
      {
        v101 = v95 + 1;
      }

      else
      {
        v101 = v95;
      }

      if (Constell_Prn == 5)
      {
        v100 = v94;
      }

      if (Constell_Prn == 4)
      {
        v102 = v96 + 1;
      }

      else
      {
        v102 = v96;
      }

      if (Constell_Prn == 4)
      {
        v101 = v95;
        v100 = v94;
      }

      if (Constell_Prn == 3)
      {
        v103 = v97 + 1;
      }

      else
      {
        v103 = v97;
      }

      if (Constell_Prn == 1)
      {
        v104 = v98 + 1;
      }

      else
      {
        v104 = v98;
      }

      if (Constell_Prn == 1)
      {
        v103 = v97;
      }

      if (Constell_Prn > 3)
      {
        v96 = v102;
        v95 = v101;
        v94 = v100;
      }

      else
      {
        v98 = v104;
        v97 = v103;
      }

      ++v93;
    }

    while (v93 < v270[400]);
    LODWORD(v272) = Constell_Prn;
  }

  else
  {
    LOBYTE(v98) = 0;
    LOBYTE(v97) = 0;
    LOBYTE(v96) = 0;
    LOBYTE(v95) = 0;
    LOBYTE(v94) = 0;
  }

  v253 = v97;
  v255 = v96;
  v260 = v95;
  v265 = v94;
  v263 = v9;
  if (v270[401])
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    do
    {
      v111 = Get_Constell_Prn((*(v267 + 6630 + 2 * v105) - 1));
      if (v111 == 6)
      {
        v112 = v106 + 1;
      }

      else
      {
        v112 = v106;
      }

      if (v111 == 5)
      {
        v113 = v107 + 1;
      }

      else
      {
        v113 = v107;
      }

      if (v111 == 5)
      {
        v112 = v106;
      }

      if (v111 == 4)
      {
        v114 = v108 + 1;
      }

      else
      {
        v114 = v108;
      }

      if (v111 == 4)
      {
        v113 = v107;
        v112 = v106;
      }

      if (v111 == 3)
      {
        v115 = v109 + 1;
      }

      else
      {
        v115 = v109;
      }

      if (v111 == 1)
      {
        v116 = v110 + 1;
      }

      else
      {
        v116 = v110;
      }

      if (v111 == 1)
      {
        v115 = v109;
      }

      if (v111 > 3)
      {
        v108 = v114;
        v107 = v113;
        v106 = v112;
      }

      else
      {
        v110 = v116;
        v109 = v115;
      }

      ++v105;
    }

    while (v105 < v270[401]);
    v256 = v107;
    LODWORD(v272) = v111;
    v9 = v263;
  }

  else
  {
    LOBYTE(v110) = 0;
    LOBYTE(v109) = 0;
    LOBYTE(v108) = 0;
    v256 = 0;
    LOBYTE(v106) = 0;
  }

  v254 = v108;
  v262 = v106;
  if (v270[403])
  {
    v117 = 0;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v122 = 0;
    do
    {
      v123 = v119;
      v124 = v118;
      v125 = Get_Constell_Prn((*(v267 + 7066 + 2 * v117) - 1));
      v118 = v124;
      if (v125 == 6)
      {
        v126 = v124 + 1;
      }

      else
      {
        v126 = v124;
      }

      if (v125 == 5)
      {
        v127 = v123 + 1;
      }

      else
      {
        v127 = v123;
      }

      if (v125 == 5)
      {
        v126 = v124;
      }

      if (v125 == 4)
      {
        v128 = v120 + 1;
      }

      else
      {
        v128 = v120;
      }

      if (v125 == 4)
      {
        v127 = v123;
        v126 = v124;
      }

      if (v125 == 3)
      {
        v129 = v121 + 1;
      }

      else
      {
        v129 = v121;
      }

      if (v125 == 1)
      {
        v130 = v122 + 1;
      }

      else
      {
        v130 = v122;
      }

      if (v125 == 1)
      {
        v129 = v121;
      }

      if (v125 > 3)
      {
        v120 = v128;
        v119 = v127;
      }

      else
      {
        v122 = v130;
        v121 = v129;
        v119 = v123;
      }

      if (v125 > 3)
      {
        v118 = v126;
      }

      ++v117;
    }

    while (v117 < v270[403]);
    v251 = v120;
    v268 = v118;
    LODWORD(v272) = v125;
    v9 = v263;
    v92 = v267 + 6194;
  }

  else
  {
    LOBYTE(v122) = 0;
    LOBYTE(v121) = 0;
    v251 = 0;
    LOBYTE(v119) = 0;
    v268 = 0;
  }

  v131 = &v274[2];
  memset(&v274[2], 0, 258);
  v274[0] = 1;
  v274[1] = v98;
  *v273 = &v274[2];
  v132 = &v274[2];
  if (v270[400])
  {
    v133 = 0;
    do
    {
      v134 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v133) - 1), &v272);
      if (v272 == 1)
      {
        **v273 = v134 + 1;
        ++*v273;
      }

      ++v133;
    }

    while (v133 < v270[400]);
    v132 = *v273;
  }

  *v132 = v110;
  ++*v273;
  if (v270[401])
  {
    v135 = 0;
    do
    {
      v136 = LongPrnIdx_To_ShortPrnIdx((*(v267 + 6630 + 2 * v135) - 1), &v272);
      if (v272 == 1)
      {
        **v273 = v136 + 1;
        ++*v273;
      }

      ++v135;
    }

    while (v135 < v270[401]);
  }

  if (v266[14])
  {
    **v273 = v122;
    ++*v273;
    if (v270[403])
    {
      v137 = 0;
      do
      {
        v138 = LongPrnIdx_To_ShortPrnIdx((*(v267 + 7066 + 2 * v137) - 1), &v272);
        if (v272 == 1)
        {
          **v273 = v138 + 1;
          ++*v273;
        }

        ++v137;
      }

      while (v137 < v270[403]);
    }
  }

  else
  {
    **v273 = 0;
    ++*v273;
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: G Too Long!");
  }

  memset(&v274[2], 0, 258);
  v274[0] = 4;
  v274[1] = v270[478];
  v139 = &v274[2];
  *v273 = &v274[2];
  if (v274[1] >= 1)
  {
    v140 = 0;
    v139 = &v274[2];
    do
    {
      *v139 = *(v267 + 8656 + v140) + 8;
      v139 = ++*v273;
      ++v140;
    }

    while (v140 < v270[478]);
  }

  *v139 = v270[479];
  v141 = ++*v273;
  for (j = 2150; j != 2164; ++j)
  {
    if (!*(v267 + 4 * j))
    {
      *v141 = j - 101;
      v141 = ++*v273;
    }
  }

  if (v266[15])
  {
    v143 = 0;
    *v141 = v270[480];
    v144 = ++*v273;
    do
    {
      if (*(v267 + 8600 + 4 * v143) == 3)
      {
        *v144 = v143 + 1;
        v144 = ++*v273;
      }

      ++v143;
    }

    while (v143 != 14);
  }

  else
  {
    *v141 = 0;
    ++*v273;
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: R Too Long!");
  }

  memset(&v274[2], 0, 258);
  v274[0] = 5;
  v274[1] = v253;
  *v273 = &v274[2];
  v145 = &v274[2];
  v146 = v270;
  if (v270[400])
  {
    v147 = 0;
    do
    {
      v148 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v147) - 1), &v272);
      if (v272 == 3)
      {
        **v273 = v148 + 65;
        ++*v273;
      }

      ++v147;
    }

    while (v147 < v270[400]);
    v145 = *v273;
  }

  *v145 = v109;
  ++*v273;
  v149 = v266;
  v150 = v264;
  if (v270[401])
  {
    v151 = 0;
    do
    {
      v152 = LongPrnIdx_To_ShortPrnIdx((*(v267 + 6630 + 2 * v151) - 1), &v272);
      if (v272 == 3)
      {
        **v273 = v152 + 65;
        ++*v273;
      }

      ++v151;
    }

    while (v151 < v270[401]);
  }

  if (v266[19])
  {
    **v273 = v121;
    ++*v273;
    v153 = v267;
    if (v270[403])
    {
      v154 = 0;
      do
      {
        v155 = LongPrnIdx_To_ShortPrnIdx((*(v267 + 7066 + 2 * v154) - 1), &v272);
        if (v272 == 3)
        {
          **v273 = v155 + 65;
          ++*v273;
        }

        ++v154;
      }

      while (v154 < v270[403]);
    }
  }

  else
  {
    **v273 = 0;
    ++*v273;
    v153 = v267;
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: E Too Long!");
  }

  memset(&v274[2], 0, 258);
  v274[0] = 6;
  v274[1] = v255;
  *v273 = &v274[2];
  v156 = &v274[2];
  if (v270[400])
  {
    v157 = 0;
    do
    {
      v158 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v157) - 1), &v272);
      if (v272 == 4)
      {
        **v273 = v158 - 127;
        ++*v273;
      }

      ++v157;
    }

    while (v157 < v270[400]);
    v156 = *v273;
  }

  *v156 = v254;
  ++*v273;
  if (v270[401])
  {
    v159 = 0;
    do
    {
      v160 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 6630 + 2 * v159) - 1), &v272);
      if (v272 == 4)
      {
        **v273 = v160 - 127;
        ++*v273;
      }

      ++v159;
    }

    while (v159 < v270[401]);
  }

  if (v266[18])
  {
    **v273 = v251;
    ++*v273;
    if (v270[403])
    {
      v161 = 0;
      do
      {
        v162 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 7066 + 2 * v161) - 1), &v272);
        if (v272 == 4)
        {
          **v273 = v162 - 127;
          ++*v273;
        }

        ++v161;
      }

      while (v161 < v270[403]);
    }
  }

  else
  {
    **v273 = 0;
    ++*v273;
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: B Too Long!");
  }

  memset(&v274[2], 0, 258);
  v274[0] = 3;
  v274[1] = v260;
  *v273 = &v274[2];
  v163 = &v274[2];
  if (v270[400])
  {
    v164 = 0;
    do
    {
      v165 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v164) - 1), &v272);
      if (v272 == 5)
      {
        **v273 = v165 - 63;
        ++*v273;
      }

      ++v164;
    }

    while (v164 < v270[400]);
    v163 = *v273;
  }

  *v163 = v256;
  ++*v273;
  if (v270[401])
  {
    v166 = 0;
    do
    {
      v167 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 6630 + 2 * v166) - 1), &v272);
      if (v272 == 5)
      {
        **v273 = v167 - 63;
        ++*v273;
      }

      ++v166;
    }

    while (v166 < v270[401]);
  }

  if (v266[16])
  {
    **v273 = v119;
    ++*v273;
    if (v270[403])
    {
      v168 = 0;
      do
      {
        v169 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 7066 + 2 * v168) - 1), &v272);
        if (v272 == 5)
        {
          **v273 = v169 - 63;
          ++*v273;
        }

        ++v168;
      }

      while (v168 < v270[403]);
    }
  }

  else
  {
    **v273 = 0;
    ++*v273;
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: Q Too Long!");
  }

  memset(&v274[2], 0, 258);
  v274[0] = 7;
  v274[1] = v265;
  *v273 = &v274[2];
  v170 = &v274[2];
  if (v270[400])
  {
    v171 = 0;
    do
    {
      v172 = LongPrnIdx_To_ShortPrnIdx((*(v92 + 2 * v171) - 1), &v272);
      if (v272 == 6)
      {
        **v273 = v172 + 101;
        ++*v273;
      }

      ++v171;
    }

    while (v171 < v270[400]);
    v170 = *v273;
  }

  *v170 = v262;
  ++*v273;
  if (v270[401])
  {
    v173 = 0;
    do
    {
      v174 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 6630 + 2 * v173) - 1), &v272);
      if (v272 == 6)
      {
        **v273 = v174 + 101;
        ++*v273;
      }

      ++v173;
    }

    while (v173 < v270[401]);
  }

  if (v266[20])
  {
    **v273 = v268;
    ++*v273;
    if (v270[403])
    {
      v175 = 0;
      do
      {
        v176 = LongPrnIdx_To_ShortPrnIdx((*(v153 + 7066 + 2 * v175) - 1), &v272);
        if (v272 == 6)
        {
          **v273 = v176 + 101;
          ++*v273;
        }

        ++v175;
      }

      while (v175 < v270[403]);
    }
  }

  else
  {
    **v273 = 0;
    ++*v273;
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: N Too Long!");
  }

  v274[0] = 2;
  v274[1] = v270[630];
  *v273 = &v274[2];
  if (v274[1])
  {
    v177 = 0;
    do
    {
      *v131 = *(v153 + 8696 + v177);
      v131 = ++*v273;
      ++v177;
    }

    while (v177 < v270[630]);
  }

  v178 = v270[631];
  *v131 = v178;
  v179 = ++*v273;
  if (v178)
  {
    v180 = 0;
    do
    {
      *v179 = *(v153 + 8705 + v180);
      v179 = ++*v273;
      ++v180;
    }

    while (v180 < v270[631]);
  }

  v181 = v270[632];
  *v179 = v181;
  v182 = ++*v273;
  if (v181)
  {
    v183 = 0;
    do
    {
      *v182 = *(v153 + 8744 + v183);
      v182 = ++*v273;
      ++v183;
    }

    while (v183 < v270[632]);
  }

  STEU_Encode(v9, 118, v274, v273);
  if ((*v273 - v274) >= 70)
  {
    gn_report_assertion_failure("ME_enc_v: S Too Long!");
  }

  v184 = *(v9 + 2) - *v9;
  if (v184 <= 0)
  {
    v184 += *(v9 + 6) - *(v9 + 4);
  }

  if (v184 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  v185 = &v274[1];
  memset(v274, 0, sizeof(v274));
  *v273 = &v274[1];
  v186 = v270[400];
  if (!v186)
  {
    v189 = 0;
    goto LABEL_368;
  }

  v187 = v153;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = v187 + 8656;
  while (2)
  {
    v192 = *(v269 + 2 * v188);
    if (v192 >= 1)
    {
      LODWORD(v272) = 0;
      v271 = 0;
      v193 = LongPrnIdx_To_ShortPrnIdx((v192 - 1), &v272);
      if (v272 == 2)
      {
        if (v190 <= 13 && v270[478] > v190)
        {
          v194 = (*(v191 + v190) + 8);
          v271 = 4;
          ++v190;
          goto LABEL_358;
        }
      }

      else
      {
        v194 = Encode_SVid_STE(v272, Prn_Offset[v272] + v193, &v271);
LABEL_358:
        if ((v194 - 256) > 0xFFFFFF00)
        {
          v196 = v271;
          if (v271)
          {
            *v185 = v194;
            v185[1] = v196;
            v185 += 2;
            ++v189;
            goto LABEL_364;
          }

          v195 = "ME_enc_o:  Illegal STE Constel ID ";
          v194 = 0;
        }

        else
        {
          v195 = "ME_enc_o:  Illegal STE SV ID ";
        }

        EvLog_d(v195, v194);
      }

LABEL_364:
      v186 = v270[400];
    }

    if (++v188 < v186)
    {
      continue;
    }

    break;
  }

  *v273 = v185;
  v149 = v266;
  v153 = v267;
  v150 = v264;
  v146 = v270;
LABEL_368:
  v274[0] = v189;
  if (v146[404] != v189 || v189 != v186)
  {
    EvLog_v("ME_enc_o:  num_Priority_SV  %d   !=  num_AA %d  or  num_vis %d", v189, v146[404], v186);
  }

  STEU_Encode(v9, 111, v274, v273);
  if ((*v273 - v274) >= 258)
  {
    gn_report_assertion_failure("ME_enc_o: Too long!");
  }

  v197 = *(v9 + 2) - *v9;
  if (v197 <= 0)
  {
    v197 += *(v9 + 6) - *(v9 + 4);
  }

  if (v197 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  v198 = *(v150 + 28240);
  if (!v198)
  {
    goto LABEL_381;
  }

  v199 = *(v150 + 440) - v198;
  if (v199 < 0)
  {
    v199 = -v199;
  }

  if (v199 >> 5 >= 0x753)
  {
LABEL_381:
    v200 = 0;
    *&v274[6] = 0;
    *v274 = 0;
    v201 = *(v153 + 8680);
    while (*(v201 + v200) != 2139062143)
    {
      v200 += 4;
      if (v200 == 96)
      {
        v202 = 0;
        *&v274[6] = 0x101010101010101;
        *v274 = 0x101010101010101;
        v203 = *(v149 + 132);
        do
        {
          if ((*(v203 + v202) & 1) == 0)
          {
            v274[*(v201 + 4 * v202) + 7] = 0;
          }

          ++v202;
        }

        while (v202 != 24);
        break;
      }
    }

    Encode_b(v9, 1, 0, 1, 0x20u, *(v149 + 131));
    Encode_b(v9, 1, 3, 1, 0x20u, *(v149 + 166));
    Encode_b(v9, 2, 4, 4294967289, 0xEu, v274);
    Encode_b(v9, 3, 8, 1, 0x24u, *(v149 + 136));
    Encode_b(v9, 4, 11, 1, 0x3Fu, *(v149 + 135));
    Encode_b(v9, 5, 0, 193, 0xAu, *(v149 + 133));
    Encode_b(v9, 6, 3, 1, 0xEu, *(v149 + 172));
    Encode_b(v9, 7, 0, 120, 0x27u, *(v149 + 134));
    *(v150 + 28240) = *(v150 + 440);
    v204 = *(v9 + 2) - *v9;
    if (v204 <= 0)
    {
      v204 += *(v9 + 6) - *(v9 + 4);
    }

    if (v204 <= 0x1FF)
    {
      GNSS_Write_GNB_Ctrl(v9);
    }

    GNB_Debug_Flush_Check();
  }

  if (*(a6 + 444))
  {
    goto LABEL_397;
  }

  v205 = 0;
  v206 = a6 + 448;
  v207 = 0uLL;
  v208.i64[0] = 0x100000001;
  v208.i64[1] = 0x100000001;
  v209 = 0uLL;
  v210 = 0uLL;
  v211 = 0uLL;
  do
  {
    v212 = vtstq_s8(*(v206 + v205), *(v206 + v205));
    v213 = vmovl_u8(*v212.i8);
    v214 = vmovl_high_u8(v212);
    v211 = vaddq_s32(v211, vandq_s8(vmovl_high_u16(v214), v208));
    v210 = vaddq_s32(v210, vandq_s8(vmovl_u16(*v214.i8), v208));
    v209 = vaddq_s32(v209, vandq_s8(vmovl_high_u16(v213), v208));
    v207 = vaddq_s32(v207, vandq_s8(vmovl_u16(*v213.i8), v208));
    v205 += 16;
  }

  while (v205 != 128);
  v215 = vaddvq_s32(vaddq_s32(vaddq_s32(v207, v210), vaddq_s32(v209, v211)));
  if (v215 == 128)
  {
LABEL_397:
    v274[0] = -1;
    *v273 = &v274[1];
    goto LABEL_398;
  }

  if ((v215 - 1) <= 0x7E)
  {
    v216 = 0;
    v274[0] = v215;
    v217 = &v274[1];
    do
    {
      if (*(v206 + v216))
      {
        *v217 = v216;
        v217[1] = *(v206 + v216);
        v217 += 2;
      }

      ++v216;
    }

    while (v216 != 128);
    *v273 = v217;
    if (v217 > v274)
    {
LABEL_398:
      STEU_Encode(v9, 105, v274, v273);
      if ((*v273 - v274) >= 260)
      {
        gn_report_assertion_failure("ME_enc_i: Too long!");
      }
    }
  }

  v218 = *(v9 + 2) - *v9;
  if (v218 <= 0)
  {
    v218 += *(v9 + 6) - *(v9 + 4);
  }

  if (v218 <= 0x1FF)
  {
    GNSS_Write_GNB_Ctrl(v9);
  }

  GNB_Debug_Flush_Check();
  *&v274[8] = 0;
  *&v274[1] = 0;
  v274[0] = v149[12];
  STEU_Encode_c(v9, 80, 12, v274);
  if (v258)
  {
    *&v274[10] = 0;
    *&v274[6] = 0;
    v274[0] = HIBYTE(v258);
    v274[1] = BYTE2(v258);
    v274[2] = BYTE1(v258);
    v274[3] = v258;
    v274[4] = HIBYTE(v252);
    v274[5] = v252;
    STEU_Encode_c(v9, 79, 12, v274);
  }

  *v274 = 0;
  *&v274[8] = 0;
  v219 = *(v149 + 1);
  *&v274[1] = v219;
  if (v219 == 2)
  {
    if (*(v153 + 60) < 3u || !*v149)
    {
      v274[1] = 0;
      v220 = (v153 + 84);
      v221 = 123;
      v222 = 123;
      while (1)
      {
        if (*v220 != 1 || *(v220 - 8) != 1 || (*(v220 - 1) ? (v223 = *(v220 - 1) == 7) : (v223 = 1), v223))
        {
          if (--v222 < 6)
          {
            break;
          }
        }

        v220 += 48;
        if (!--v221)
        {
          LOBYTE(v219) = 0;
          goto LABEL_427;
        }
      }
    }

    LOBYTE(v219) = 1;
    v274[1] = 1;
  }

LABEL_427:
  *(v149 + 2) = v219;
  v224 = v149[65];
  v274[2] = v224;
  v225 = v149[14];
  if (v225 == 1 && v149[21] == 1)
  {
    v274[2] = ++v224;
  }

  v226 = v149[17];
  if (v226 == 1 && v149[24] == 1)
  {
    v224 += 2;
    v274[2] = v224;
  }

  v227 = v149[16];
  if (v227 == 1 && v149[23] == 1)
  {
    v224 += 4;
    v274[2] = v224;
  }

  v228 = v149[15];
  if (v228 == 1 && v149[22] == 1)
  {
    v224 += 8;
    v274[2] = v224;
  }

  v229 = v149[19];
  if (v229 == 1 && v149[26] == 1)
  {
    v224 += 16;
    v274[2] = v224;
  }

  v230 = v149[18];
  if (v230 == 1 && v149[25] == 1)
  {
    v224 += 32;
    v274[2] = v224;
  }

  v231 = v149[20];
  if (v231 == 1 && v149[27] == 1)
  {
    v274[2] = v224 + 64;
  }

  if (!v225)
  {
    v232 = 0;
    if (!v226)
    {
      goto LABEL_453;
    }

    goto LABEL_452;
  }

  v232 = 1;
  v274[3] = 1;
  if (v226)
  {
LABEL_452:
    v232 |= 2u;
    v274[3] = v232;
  }

LABEL_453:
  if (v227)
  {
    v232 |= 4u;
    v274[3] = v232;
    if (!v228)
    {
      goto LABEL_455;
    }

LABEL_463:
    v232 |= 8u;
    v274[3] = v232;
    if (!v229)
    {
      goto LABEL_464;
    }

LABEL_456:
    v232 |= 0x10u;
    v274[3] = v232;
    if (!v230)
    {
      goto LABEL_457;
    }

LABEL_465:
    v232 |= 0x20u;
    v274[3] = v232;
    if (!v231)
    {
      goto LABEL_466;
    }

LABEL_458:
    v274[3] = v232 | 0x40;
    if (!v225)
    {
      goto LABEL_459;
    }

LABEL_467:
    v225 = v149[28];
    if (v225 == 1)
    {
      v274[4] = 1;
      if (!v226)
      {
        goto LABEL_471;
      }

LABEL_460:
      if (v149[31] == 1)
      {
        LOBYTE(v225) = v225 | 2;
        v274[4] = v225;
      }
    }

    else
    {
      LOBYTE(v225) = 0;
      if (v226)
      {
        goto LABEL_460;
      }
    }
  }

  else
  {
    if (v228)
    {
      goto LABEL_463;
    }

LABEL_455:
    if (v229)
    {
      goto LABEL_456;
    }

LABEL_464:
    if (v230)
    {
      goto LABEL_465;
    }

LABEL_457:
    if (v231)
    {
      goto LABEL_458;
    }

LABEL_466:
    if (v225)
    {
      goto LABEL_467;
    }

LABEL_459:
    if (v226)
    {
      goto LABEL_460;
    }
  }

LABEL_471:
  if (v227 && v149[30] == 1)
  {
    LOBYTE(v225) = v225 | 4;
    v274[4] = v225;
  }

  if (v228 && v149[29] == 1)
  {
    LOBYTE(v225) = v225 | 8;
    v274[4] = v225;
  }

  if (v229 && v149[33] == 1)
  {
    LOBYTE(v225) = v225 | 0x10;
    v274[4] = v225;
  }

  if (v230 && v149[32] == 1)
  {
    LOBYTE(v225) = v225 | 0x20;
    v274[4] = v225;
  }

  if (v231 && v149[34] == 1)
  {
    v274[4] = v225 | 0x40;
  }

  if (v149[43] == 1)
  {
    v274[5] = 1;
  }

  if (v149[44] == 1)
  {
    v274[6] = 1;
  }

  if (v149[42] == 1)
  {
    v274[7] = 1;
  }

  if (v149[45] == 1)
  {
    v274[8] = 1;
  }

  v233 = v149[35];
  if (v233 == 1)
  {
    v274[9] = 1;
  }

  else
  {
    LOBYTE(v233) = 0;
  }

  if (v149[38] == 1)
  {
    LOBYTE(v233) = v233 | 2;
    v274[9] = v233;
  }

  if (v149[37] == 1)
  {
    LOBYTE(v233) = v233 | 4;
    v274[9] = v233;
  }

  if (v149[36] == 1)
  {
    LOBYTE(v233) = v233 | 8;
    v274[9] = v233;
  }

  if (v149[40] == 1)
  {
    LOBYTE(v233) = v233 | 0x10;
    v274[9] = v233;
  }

  if (v149[39] == 1)
  {
    LOBYTE(v233) = v233 | 0x20;
    v274[9] = v233;
  }

  if (v149[41] == 1)
  {
    v274[9] = v233 | 0x40;
  }

  STEU_Encode_c(v9, 67, 12, v274);
  v234 = 0;
  *&v274[10] = 0;
  *&v274[6] = 0;
  v235 = *(v149 + 521) - 1;
  if (v235 <= 0xA)
  {
    v234 = byte_2990505B0[v235];
  }

  v274[0] = v234;
  v236 = *(v149 + 523);
  if (v236 >= 4)
  {
    v237 = -1;
  }

  else
  {
    v237 = 0x4B3219FFu >> (8 * v236);
  }

  v274[1] = v237;
  v238 = *(v149 + 518);
  if (v238 >= 4)
  {
    LOBYTE(v238) = 0;
  }

  v274[2] = v238;
  v239 = *(v149 + 520);
  if (v239 >= 4)
  {
    v240 = -1;
  }

  else
  {
    v240 = 0x4B3219FFu >> (8 * v239);
  }

  v274[3] = v240;
  v241 = *(v149 + 524);
  if (v241 >= 4)
  {
    v242 = 0;
  }

  else
  {
    v242 = 0x1010300u >> (8 * v241);
  }

  v274[4] = v242;
  v243 = *(v149 + 526);
  if (v243 >= 4)
  {
    v244 = -1;
  }

  else
  {
    v244 = 0x4B3219FFu >> (8 * v243);
  }

  v274[5] = v244;
  if (v149[45])
  {
    LOBYTE(v245) = 1;
    goto LABEL_529;
  }

  if (*(p_NA + 381) == 1)
  {
    v245 = *(p_NA + 26780);
LABEL_529:
    v274[6] = v245;
  }

  STEU_Encode_c(v9, 65, 12, v274);
  if (v149[2144] == 1)
  {
    *&v273[4] = 0;
    v246 = *(v149 + 132);
    v247 = *(v149 + 133);
    v248 = vmovn_s32(vuzp1q_s32(vcgtzq_f64(v246), vcgtzq_f64(v247)));
    *&v246.f64[0] = vorn_s8(vand_s8(vmovn_s32(vuzp1q_s32(vcvtq_n_s64_f64(v246, 2uLL), vcvtq_n_s64_f64(v247, 2uLL))), v248), v248);
    *v273 = vuzp1_s8(*&v246.f64[0], *&v246.f64[0]).u32[0];
    STEU_Encode_c(v9, 90, 12, v273);
  }

  *&v273[8] = 0;
  *&v273[1] = 0;
  v273[0] = v149[13];
  STEU_Encode_c(v9, 69, 12, v273);
  *v274 = *v153;
  v272 = &v274[4];
  STEU_Encode(v9, 116, v274, &v272);
  if (v272 - v274 != 6)
  {
    gn_report_assertion_failure("ME_enc_t: Wrong Length!");
  }

  v249 = (*v9)++;
  *v249 = 10;
  if (*v9 >= v9[3])
  {
    *v9 = v9[2];
  }

  GNSS_Write_GNB_Ctrl(v9);
  return GNSS_GNB_Debug_Ctl(a2);
}

double G5K_ME_enc_n(char **a1, int a2, __int16 a3)
{
  *&v7[254] = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  v4 = v7;
  STEU_Encode(a1, 110, &v5, &v4);
  if (v4 - &v5 != 6)
  {
    return gn_report_assertion_failure("ME_enc_n: Wrong Length!");
  }

  return result;
}

double Encode_b(char **a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, unsigned __int8 *a6)
{
  v7 = a4;
  v9 = a2;
  v11 = 0;
  v21 = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  v17 = 0;
  v12 = a5;
  v13 = a4;
  do
  {
    v14 = *a6++;
    if (v14 == 1)
    {
      *(__src + v11++) = Encode_SVid_STE(v9, v13, &v17);
    }

    ++v13;
    --v12;
  }

  while (v12);
  if (!v11)
  {
    Encode_SVid_STE(v9, v7 + 1, &v17);
  }

  memset(v19, 0, sizeof(v19));
  v18[0] = a3 | (16 * v17);
  v18[1] = v11;
  v16 = v19;
  if (v11 >= 1)
  {
    memcpy(v19, __src, v11);
    v16 = v19 + v11;
  }

  STEU_Encode(a1, 98, v18, &v16);
  if (v16 - v18 >= 67)
  {
    return gn_report_assertion_failure("ME_enc_b: Wrong Length!");
  }

  return result;
}

uint64_t GncS02_09UpdatedPosAval(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GncS02_09UpdatedPosAval");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    GncS04_72SendUpdates(1);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_09UpdatedPosAval", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncS02_21FGSchedTimExp(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_FG_SCHED_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_21FGSchedTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncS04_73FGPosTimerExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_21FGSchedTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncS02_22SessStopAckTimExp(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESS_STOP_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_22SessStopAckTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncS04_33SessStopAckTimrExpiry();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_22SessStopAckTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

uint64_t GncS02_23SessStartAckTimExp(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 5)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESS_START_ACK_TIMER_EXPIRY\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 68, "GncS02_23SessStartAckTimExp");
      gnssOsa_PrintLog(__str, 5, 1, 0);
    }

    GncS04_36SessStartAckTimrExp();
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 69, "GncS02_23SessStartAckTimExp", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

__int128 *GM_Prop_AAD(__int128 *result, int a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (a2 - 1);
  if (a2 - 1 >= 0)
  {
    v4 = result;
    v5 = v3 + 1;
    v6 = a3 + 48 * v3;
    do
    {
      if (*(v6 + 8))
      {
        if (*(v6 + 4) == 1)
        {
          v7 = *(v6 + 16);
          v9[0] = *v6;
          v9[1] = v7;
          v9[2] = *(v6 + 32);
          *v6 = v4;
          result = Comp_Cur_Acq_Aid(v9, v6);
        }
      }

      v6 -= 48;
    }

    while (v5-- > 1);
  }

  return result;
}

double Nav_Kalman_Update_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v19 = *MEMORY[0x29EDCA608];
  v7 = v1 + 68160;
  v8 = v1 + 27224;
  bzero(v17, 0x10EF0uLL);
  s_Nav_Kalman_SD::s_Nav_Kalman_SD(v17);
  *v6 = *v17;
  *(v6 + 20) = *&v17[5];
  memcpy((v6 + 28), v18, 0x10ED4uLL);
  *v6 = 167870469;
  *(v6 + 4) = 279;
  *(v6 + 8) = 0x10001000105DCLL;
  *(v6 + 16) = 655366;
  *(v6 + 1704) = 1;
  v9 = *(v3 + 52);
  *(v6 + 20) = v9;
  NK_Set_Dynamics(v9, v6 + 32);
  *(v6 + 136) = 1;
  *(v6 + 140) = 1;
  *(v6 + 160) = -1;
  *(v8 + 25) = 1;
  *v8 = -1;
  *(v8 + 304) = -1;
  v10 = vdupq_n_s64(0x416312D000000000uLL);
  *(v6 + 27568) = v10;
  *(v6 + 27584) = v10;
  *(v8 + 392) = -1;
  *(v8 + 400) = -1;
  *(v6 + 27664) = v10;
  *(v6 + 27680) = v10;
  *(v8 + 488) = -1;
  v11 = dbl_299050620[*(v3 + 52) < 5u];
  *(v6 + 280) = *(v5 + 240);
  *(v6 + 288) = v11;
  if (*(v5 + 18) == 1)
  {
    *(v6 + 288) = v11 * 0.5;
  }

  *(v6 + 336) = 0x4163125300000000;
  *(v6 + 312) = 0x4163125300000000;
  *(v6 + 15408) = 4626;
  *(v6 + 241) = 513;
  *(v6 + 244) = 5;
  *v7 = xmmword_299050630;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  Geo2ECEF(v7 + 56, &WGS84_Datum, (v6 + 68192));
  v12 = __sincos_stret(*(v7 + 56));
  *(v7 + 112) = v12;
  v13 = 1.0 / sqrt(v12.__sinval * v12.__sinval * -0.00669437999 + 1.0);
  v14 = *(v7 + 72);
  v15 = v12.__cosval * (v14 + v13 * 6378137.0);
  if (v15 < 1.0)
  {
    v15 = 1.0;
  }

  result = v14 + v13 * (v13 * v13) * 6335439.33;
  *(v7 + 128) = result;
  *(v7 + 136) = v15;
  return result;
}

uint64_t NK_Set_Dynamics(uint64_t result, uint64_t a2)
{
  *a2 = xmmword_299050640;
  *(a2 + 16) = xmmword_299050650;
  *(a2 + 32) = xmmword_299050660;
  if (result <= 4)
  {
    if (result > 2)
    {
      if (result == 3)
      {
        v3 = 4.0;
        v4 = 0.01;
      }

      else
      {
        v3 = 9.0;
        v4 = 0.00694444444;
      }

      v5 = 0.100489;
      goto LABEL_19;
    }

    v2 = 0;
    if (result < 2)
    {
      goto LABEL_21;
    }

    if (result == 2)
    {
      v3 = 0.25;
      v4 = 0.0204081633;
      v5 = 0.04;
LABEL_19:
      *(a2 + 48) = v5;
      *(a2 + 56) = v5;
      *(a2 + 64) = 0x3FF0000000000000;
      *(a2 + 80) = v3;
      *(a2 + 96) = v4;
LABEL_29:
      *(a2 + 88) = v4 * v3;
      *(a2 + 72) = v4;
      *(a2 + 56) = v5 * 0.5;
      return result;
    }

LABEL_20:
    v2 = 0x4202A05F20000000;
LABEL_21:
    v5 = 1.0e10;
    if (result < 2)
    {
      v5 = 0.0;
    }

    *(a2 + 48) = v2;
    *(a2 + 56) = v5;
    *(a2 + 64) = 0x3FF0000000000000;
    v12 = 1000000.0;
    if (result < 2)
    {
      v12 = 0.0;
    }

    goto LABEL_25;
  }

  if (result > 6)
  {
    if (result == 7)
    {
      v5 = 25.0;
      v12 = 400.0;
    }

    else
    {
      if (result != 8)
      {
        goto LABEL_20;
      }

      v12 = 1000000.0;
      v5 = 1.0e10;
    }

    *(a2 + 48) = v5;
    *(a2 + 56) = v5;
    *(a2 + 64) = 0x3FF0000000000000;
LABEL_25:
    *(a2 + 80) = v12;
    *(a2 + 96) = 0x3FF0000000000000;
    v3 = 0.0;
    v4 = 1.0;
    if (result < 2)
    {
      goto LABEL_29;
    }

    if (result != 7)
    {
      if (result == 8)
      {
        *(a2 + 88) = 0x412E848000000000;
        *(a2 + 72) = 0x3FF0000000000000;
        *(a2 + 24) = xmmword_299050670;
        return result;
      }

      v13 = 1000000.0;
      goto LABEL_33;
    }

    v11 = 0x4079000000000000;
    goto LABEL_31;
  }

  if (result != 5)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a2 + 48) = _Q0;
    *(a2 + 64) = 0x3FF0000000000000;
    v11 = 0x4059000000000000;
    *(a2 + 80) = 0x4059000000000000;
    *(a2 + 96) = 0x3FD0000000000000;
    v4 = 0.25;
LABEL_31:
    v13 = *&v11;
    goto LABEL_33;
  }

  *(a2 + 48) = vdupq_n_s64(0x3FB9B9A5A89B951DuLL);
  *(a2 + 64) = 0x3FF0000000000000;
  *(a2 + 80) = 0x4039000000000000;
  *(a2 + 96) = 0x3FB0000000000000;
  v13 = 25.0;
  v4 = 0.0625;
LABEL_33:
  *(a2 + 88) = v4 * v13;
  *(a2 + 72) = v4;
  return result;
}

uint64_t NK_Set_XO_PN(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = xmmword_299050680;
  if (*(result + 240))
  {
    v2 = xmmword_299050690;
    *(a2 + 24) = xmmword_299050690;
    v3 = fabs(*(result + 112)) + -0.1;
    if (v3 > 0.0)
    {
      v2 = vmulq_n_f64(xmmword_299050690, fmin(v3 * 19.375 + 1.0, 32.0));
      *(a2 + 24) = v2;
    }

    v4 = *(result + 72);
    if ((v4 - 71) <= 0xFFFFFFAE)
    {
      if ((v4 - 101) >= 0xFFFFFF73)
      {
        if ((v4 - 96) >= 0xFFFFFF7D)
        {
          if ((v4 - 91) >= 0xFFFFFF87)
          {
            if ((v4 - 86) >= 0xFFFFFF91)
            {
              if ((v4 - 81) >= 0xFFFFFF9B)
              {
                v6 = vdup_n_s32((v4 - 76) < 0xFFFFFFA5);
                v7.i64[0] = v6.u32[0];
                v7.i64[1] = v6.u32[1];
                v5 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), xmmword_299050700, xmmword_2990506F0);
              }

              else
              {
                v5 = xmmword_2990506E0;
              }
            }

            else
            {
              v5 = xmmword_2990506D0;
            }
          }

          else
          {
            v5 = xmmword_2990506C0;
          }
        }

        else
        {
          v5 = xmmword_2990506B0;
        }
      }

      else
      {
        v5 = xmmword_2990506A0;
      }

      *(a2 + 24) = vmulq_f64(v2, v5);
    }
  }

  return result;
}

void s_Nav_Kalman_SD::s_Nav_Kalman_SD(s_Nav_Kalman_SD *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 20) = 0x500000002;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 140) = 0;
  *(this + 148) = 0u;
  *(this + 168) = 0u;
  *(this + 181) = 0;
  *(this + 19) = 0u;
  *(this + 80) = 0;
  *(this + 86) = 0;
  *(this + 328) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 121) = 0u;
  *(this + 248) = 0u;
  v2 = this + 248;
  v3 = this + 68088;
  v4 = this + 27224;
  v5 = this + 20120;
  v6 = (this + 1712);
  *(this + 238) = 0;
  *(this + 14) = 0u;
  *(this + 13) = 0u;
  *(this + 12) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 74) = 0;
  bzero(this + 352, 0x54CuLL);
  *(v2 + 185) = 0;
  *v6 = 0u;
  *(v2 + 372) = -1;
  *(v2 + 187) = 0;
  *(v2 + 94) = 0u;
  *(v2 + 1517) = 0;
  *(v2 + 1528) = 0u;
  *(v2 + 1544) = 0u;
  *(v2 + 1560) = 0u;
  *(v2 + 1576) = 0u;
  v2[1592] = 0;
  *(v2 + 200) = 0;
  *(v2 + 402) = -1;
  *(v2 + 101) = 0u;
  *(v2 + 102) = 0u;
  *(v2 + 103) = 0u;
  v7 = -5120;
  *(v2 + 1663) = 0;
  do
  {
    *(this + v7 + 7040) = 0;
    v8 = (this + v7 + 7048);
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v7 += 40;
  }

  while (v7);
  v9 = -5120;
  do
  {
    *(this + v9 + 12160) = 0;
    v10 = (this + v9 + 12168);
    *v10 = 0uLL;
    v10[1] = 0uLL;
    v9 += 40;
  }

  while (v9);
  *(this + 3854) = 0;
  *(this + 1928) = 0;
  *(this + 3858) = 0;
  *(this + 1930) = 0;
  *(this + 3862) = 0;
  *(this + 2514) = 0;
  *v5 = 0;
  *(this + 2516) = 0;
  v5[16] = 0;
  *(this + 3402) = 0;
  *v4 = 0;
  *(this + 3416) = 0;
  *(v4 + 28) = 0;
  *(this + 3451) = 0;
  v4[392] = 0;
  *(this + 1721) = 0u;
  *(this + 1722) = 0u;
  *(this + 1723) = 0u;
  *(this + 1724) = 0u;
  *(this + 27600) = 0;
  *(this + 3463) = 0;
  v4[488] = 0;
  *(v4 + 100) = 0;
  *(this + 1727) = 0u;
  *(this + 1728) = 0u;
  *(this + 1729) = 0u;
  *(this + 1730) = 0u;
  *(this + 27696) = 0;
  v4[496] = 0;
  *v3 = 0;
  *(v3 + 92) = 0;
  *(v3 + 236) = 0;
  bzero(this + 68336, 0x400uLL);
  bzero(this + 12160, 0xCB5uLL);
  *(this + 15596) = 0u;
  *(this + 974) = 0u;
  *(this + 973) = 0u;
  *(this + 972) = 0u;
  *(this + 971) = 0u;
  *(this + 970) = 0u;
  *(this + 969) = 0u;
  *(this + 968) = 0u;
  *(this + 967) = 0u;
  *(this + 966) = 0u;
  bzero(this + 15616, 0x118BuLL);
  bzero(this + 20144, 0x1B5CuLL);
  *(this + 27176) = 0;
  *(this + 3396) = 0;
  *(this + 1697) = 0u;
  *(this + 27180) = 0u;
  *(this + 27196) = 0u;
  *(this + 1702) = 0u;
  *(this + 27247) = 0;
  *(this + 27252) = 0u;
  *(this + 27266) = 0;
  *(this + 27276) = 0;
  *(this + 27284) = 0u;
  *(this + 27304) = 0u;
  *(this + 27320) = 0;
  *(this + 27516) = 0u;
  *(this + 1719) = 0u;
  *(this + 1718) = 0u;
  *(this + 1717) = 0u;
  *(this + 1716) = 0u;
  *(this + 1715) = 0u;
  *(this + 1714) = 0u;
  *(this + 1713) = 0u;
  *(this + 1712) = 0u;
  *(this + 1711) = 0u;
  *(this + 1710) = 0u;
  *(this + 1709) = 0u;
  bzero(this + 27724, 0x9D68uLL);
  *(this + 68048) = 0;
  *(this + 8505) = 0;
  *(this + 68024) = 0u;
  *(this + 8507) = 0;
  *(this + 4254) = 0u;
  *(this + 68077) = 0;
  *(this + 4256) = 0u;
  *(this + 4257) = 0u;
  *(this + 4258) = 0u;
  *(this + 4259) = 0u;
  *(this + 4260) = 0u;
  *(this + 68176) = 0;
  *(this + 4262) = 0u;
  *(this + 4263) = 0u;
  *(this + 4264) = 0u;
  *(this + 4265) = 0u;
  *(this + 68249) = 0u;
  *(this + 68320) = 0;
  *(this + 4268) = 0u;
  *(this + 4269) = 0u;
  *(this + 4267) = 0u;
}

uint64_t STEU_Checksum_OK(char *a1)
{
  v1 = 0;
  v9 = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v3 = 3;
  do
  {
    if (!v2)
    {
      return 0;
    }

    v4 = a1[v3 - 1];
    if (v4 == 10 || v4 == 13)
    {
      return 0;
    }

    v1 += v2;
    ++v3;
    v2 = v4;
  }

  while (v4 != 125);
  v7 = 0;
  v8[0] = a1[v3 - 1];
  v8[1] = a1[v3];
  result = AscToU1(v8, &v7);
  if (result)
  {
    return v7 == v1;
  }

  return result;
}

uint64_t Comp_NEDvar_UDU(uint64_t result, unsigned int a2, int a3, double (*a4)[3], double *a5)
{
  v5 = 0;
  v38[9] = *MEMORY[0x29EDCA608];
  v6 = a3;
  do
  {
    v7 = v6++;
    v8 = (v7 * v7 + v7) >> 1;
    v9 = (v5 + a3);
    v10 = (v9 * v9 + v9) >> 1;
    v11 = &v38[3 * v5];
    v12 = v5;
    v13 = v6;
    do
    {
      v14 = (v12 + a3);
      if (v5 == v12)
      {
        v15 = *(result + 8 * (v10 + (v5 + a3)));
        v16 = v14 + 1;
      }

      else
      {
        v16 = v14 + 1;
        v17 = v9 + (((v14 + 1) * v14) >> 1);
        if (v9 >= v14)
        {
          v17 = v10 + v14;
        }

        v15 = *(result + 8 * (v14 + ((v16 * v14) >> 1))) * *(result + 8 * v17);
      }

      v18 = v13;
      *&v11[v12] = v15;
      if (a2 > v16)
      {
        v19 = v13;
        v20 = v13 * v13 + v13;
        v21 = 2 * v18 + 2;
        v22 = v18 + ((v16 * v7) >> 1);
        do
        {
          v23 = v19 + (v20 >> 1);
          v24 = v19 + v19 * v19;
          v25 = v8 + v19;
          if (v19 > v9)
          {
            v25 = v9 + (v24 >> 1);
          }

          v26 = v19 > v14;
          v27 = v19 + 1;
          v28 = v14 + (v24 >> 1);
          if (!v26)
          {
            v28 = v22;
          }

          v15 = v15 + *(result + 8 * v23) * *(result + 8 * v25) * *(result + 8 * v28);
          ++v22;
          v20 += v21;
          v21 += 2;
          v19 = v27;
        }

        while (v27 < a2);
        *&v11[v12] = v15;
      }

      *&v38[3 * v12++ + v5] = v15;
      v13 = v18 + 1;
      ++v7;
    }

    while (v12 != 3);
    ++v5;
  }

  while (v5 != 3);
  v29 = 0;
  v30 = 0.0;
  v31 = a4;
  do
  {
    v32 = 0;
    v33 = v38;
    v34 = 0.0;
    do
    {
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + *&v33[v35] * (*v31)[v35];
        ++v35;
      }

      while (v35 != 3);
      if (!v29)
      {
        v30 = v30 + v36 * (*a4)[v32 + 3];
      }

      v34 = v34 + v36 * (*a4)[3 * v29 + v32++];
      v33 += 3;
    }

    while (v32 != 3);
    a5[v29++] = v34;
    ++v31;
  }

  while (v29 != 3);
  for (i = 0; i != 3; ++i)
  {
    if (a5[i] <= 0.00000001)
    {
      a5[i] = 0.00000001;
    }
  }

  return result;
}

uint64_t GM_Get_Best_NSSS(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  v4 = 0;
  v5 = (a1 + 8);
  v6 = (a2 + 12);
  v7 = 0xFFFFFFFFLL;
  v8 = a3;
  do
  {
    if (Is_Legal(*(v5 - 2)) && (*v5 & 8) != 0 && (*v5 & 0x300) != 0x300 && *(v6 - 8) == 1 && v6[3] == 1)
    {
      if (*(v5 - 4) + 6 * *v6 <= v4)
      {
        v7 = v7;
      }

      else
      {
        v4 = *(v5 - 4) + 6 * *v6;
        v7 = v3;
      }
    }

    ++v3;
    v5 += 18;
    v6 += 48;
  }

  while (v8 != v3);
  return v7;
}

uint64_t GncP27_30PopulateRawMeas(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 88);
  if (*(a1 + 88))
  {
    if (v4 >= 0x101)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v5 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SigMeas Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 88));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      return 0;
    }

    result = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 423, v4, 0xC0uLL);
    *(a2 + 96) = result;
    if (!result)
    {
      return result;
    }
  }

  v7 = *(a1 + 57664);
  if (*(a1 + 57664))
  {
    if (v7 >= 0x101)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *(a1 + 57664));
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      goto LABEL_16;
    }

    v9 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 441, v7, 0x68uLL);
    *(a2 + 336) = v9;
    if (!v9)
    {
LABEL_16:
      v13 = *(a2 + 96);
      if (v13)
      {
        free(v13);
      }

      result = 0;
      *(a2 + 96) = 0;
      return result;
    }
  }

  v10 = (a1 + 84296);
  v11 = *(a1 + 84296);
  if (*(a1 + 84296))
  {
    if (v11 >= 0x101)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx SvUsg Cnt,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP27_30PopulateRawMeas", 514, *v10);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      goto LABEL_71;
    }

    v14 = gnssOsa_Calloc("GncP27_30PopulateRawMeas", 461, v11, 0x108uLL);
    *(a2 + 352) = v14;
    if (!v14)
    {
LABEL_71:
      v66 = *(a2 + 96);
      if (v66)
      {
        free(v66);
      }

      *(a2 + 96) = 0;
      v67 = *(a2 + 336);
      if (v67)
      {
        free(v67);
      }

      result = 0;
      *(a2 + 336) = 0;
      return result;
    }
  }

  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v15 = *(a1 + 88);
  *(a2 + 88) = v15;
  if (v15)
  {
    v16 = 0;
    if (v15 >= 0x100)
    {
      v15 = 256;
    }

    v17 = 224 * v15;
    v18 = (*(a2 + 96) + 190);
    do
    {
      v19 = a1 + v16;
      *(v18 - 95) = *(a1 + v16 + 96);
      *(v18 - 188) = GncP07_01PopulateSigId(*(a1 + v16 + 100));
      *(v18 - 187) = GncP07_09PopulateConstellId(*(a1 + v16 + 104));
      *(v18 - 93) = *(a1 + v16 + 108);
      *(v18 - 91) = *(a1 + v16 + 112);
      *(v18 - 83) = *(a1 + v16 + 128);
      *(v18 - 158) = *(a1 + v16 + 136);
      *(v18 - 75) = *(a1 + v16 + 144);
      *(v18 - 67) = *(a1 + v16 + 160);
      *(v18 - 63) = *(a1 + v16 + 176);
      *(v18 - 118) = *(a1 + v16 + 184);
      *(v18 - 58) = *(a1 + v16 + 186);
      *(v18 - 55) = *(a1 + v16 + 192);
      *(v18 - 47) = *(a1 + v16 + 208);
      *(v18 - 39) = *(a1 + v16 + 224);
      v20 = *(a1 + v16 + 240);
      if (v20 >= 5)
      {
        LOBYTE(v20) = 0;
      }

      *(v18 - 62) = v20;
      v21 = *(v19 + 244);
      if (v21 >= 5)
      {
        LOBYTE(v21) = 0;
      }

      *(v18 - 61) = v21;
      *(v18 - 30) = *(v19 + 248);
      *(v18 - 29) = *(v19 + 250);
      *(v18 - 56) = *(v19 + 252);
      *(v18 - 27) = *(v19 + 256);
      v22 = *(v19 + 264);
      if (v22 == 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = v22 == 1;
      }

      *(v18 - 46) = v23;
      *(v18 - 19) = *(v19 + 272);
      *(v18 - 11) = *(v19 + 288);
      v24 = *(v19 + 304);
      if (v24 == 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      if (v24)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      *(v18 - 6) = v26;
      *(v18 - 2) = *(v19 + 308);
      *(v18 - 1) = *(v19 + 310);
      *v18 = *(v19 + 312);
      v18 += 96;
      v16 += 224;
    }

    while (v17 != v16);
  }

  v68 = a1 + 160080;
  *(a2 + 104) = *(a1 + 57440);
  *(a2 + 108) = *(a1 + 57444);
  *(a2 + 110) = *(a1 + 57446);
  *(a2 + 112) = *(a1 + 57448);
  *(a2 + 120) = *(a1 + 57456);
  *(a2 + 176) = *(a1 + 57512);
  *(a2 + 256) = *(a1 + 57592);
  *(a2 + 264) = *(a1 + 57600);
  *(a2 + 280) = *(a1 + 57616);
  *(a2 + 116) = *(a1 + 57452);
  *(a2 + 118) = *(a1 + 57454);
  *(a2 + 119) = *(a1 + 57455);
  *(a2 + 128) = *(a1 + 57464);
  *(a2 + 132) = *(a1 + 57468);
  *(a2 + 136) = *(a1 + 57472);
  *(a2 + 152) = *(a1 + 57488);
  *(a2 + 160) = *(a1 + 57496);
  *(a2 + 162) = *(a1 + 57498);
  *(a2 + 168) = *(a1 + 57504);
  *(a2 + 184) = *(a1 + 57520);
  *(a2 + 188) = *(a1 + 57524);
  *(a2 + 192) = *(a1 + 57528);
  *(a2 + 208) = *(a1 + 57544);
  *(a2 + 212) = *(a1 + 57548);
  *(a2 + 216) = *(a1 + 57552);
  *(a2 + 232) = *(a1 + 57568);
  *(a2 + 236) = *(a1 + 57572);
  *(a2 + 240) = *(a1 + 57576);
  *(a2 + 296) = *(a1 + 57632);
  *(a2 + 312) = *(a1 + 57648);
  *(a2 + 320) = *(a1 + 57656);
  v27 = *(a1 + 57664);
  *(a2 + 328) = v27;
  if (v27)
  {
    v28 = 0;
    if (v27 >= 0x100)
    {
      v29 = 256;
    }

    else
    {
      v29 = v27;
    }

    v30 = a1 + 57672;
    v31 = *(a2 + 336);
    v32 = 104 * v29;
    v33 = a1 + 57720;
    do
    {
      v34 = v31 + v28;
      *(v31 + v28) = *(v30 + v28);
      v35 = *(a1 + 57676 + v28);
      if (v35 >= 5)
      {
        LOBYTE(v35) = 1;
      }

      *(v34 + 2) = v35;
      *(v34 + 8) = *(a1 + v28 + 57680);
      v36 = *(a1 + 57696 + v28);
      if (v36 >= 5)
      {
        LOBYTE(v36) = 1;
      }

      *(v34 + 24) = v36;
      *(v34 + 25) = *(v30 + v28 + 28);
      *(v34 + 32) = *(v33 + v28 - 16);
      *(v34 + 48) = *(v33 + v28);
      *(v34 + 64) = *(v33 + v28 + 16);
      *(v34 + 80) = *(v33 + v28 + 32);
      *(v34 + 96) = *(a1 + 57768 + v28);
      v28 += 104;
    }

    while (v32 != v28);
  }

  v37 = *v10;
  *(a2 + 344) = v37;
  if (v37)
  {
    v38 = 0;
    v69 = a1 + 84304;
    v70 = a2;
    v39 = a1 + 84516;
    v40 = a1 + 84592;
    v74 = v10 + 132;
    v75 = 0;
    v41 = v10 + 52;
    v42 = 48;
    do
    {
      v71 = v42;
      v72 = v41;
      v43 = v69 + 296 * v38;
      v73 = *(a2 + 352);
      v44 = v73 + 264 * v38;
      *v44 = GncP07_09PopulateConstellId(*v43);
      *(v44 + 2) = *(v43 + 4);
      *(v44 + 4) = *(v43 + 6);
      *(v44 + 144) = *(v43 + 144);
      v45 = *(v43 + 160);
      v46 = *(v43 + 176);
      v47.i64[0] = 0x200000002;
      v47.i64[1] = 0x200000002;
      v48 = vmovn_s16(vuzp1q_s16(vceqq_s32(v45, v47), vceqq_s32(v46, v47)));
      *(v44 + 160) = vbic_s8(vsub_s8(vand_s8(v48, 0x202020202020202), vmvn_s8(v48)), vmovn_s16(vuzp1q_s16(vceqzq_s32(v45), vceqzq_s32(v46))));
      v49 = *(v43 + 192);
      if (v49 == 2)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

      if (v49)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      *(v44 + 168) = v51;
      *(v44 + 176) = *(v43 + 200);
      v52 = *(v43 + 208);
      *(v44 + 184) = v52;
      if (v52)
      {
        v53 = 0;
        if (v52 >= 2)
        {
          v54 = 2;
        }

        else
        {
          v54 = v52;
        }

        v55 = v74;
        v56 = v73 + v75;
        v57 = 192;
        do
        {
          v58 = GncP07_01PopulateSigId(*(v39 + 4 * v53));
          v59 = v56 + v53;
          *(v59 + 186) = v58;
          v60 = (v56 + v57);
          *v60 = *(v55 - 4);
          v60[2] = *(v55 - 2);
          v60[4] = *v55;
          v60[6] = *(v55 + 2);
          *(v59 + 256) = *(v40 + v53++);
          v57 += 8;
          v55 += 4;
        }

        while (v54 != v53);
      }

      v61 = *(v43 + 8);
      if (v61 >= 5)
      {
        LOBYTE(v61) = 0;
      }

      *(v44 + 8) = v61;
      *(v44 + 16) = *(v43 + 16);
      *(v44 + 120) = *(v43 + 120);
      *(v44 + 136) = *(v43 + 136);
      v62 = (v73 + v71);
      v63 = v72;
      v64 = 3;
      do
      {
        *(v62 - 3) = *(v63 - 9);
        *v62 = *(v63 - 6);
        v62[3] = *(v63 - 3);
        v65 = *v63;
        v63 += 4;
        v62[6] = v65;
        ++v62;
        --v64;
      }

      while (v64);
      a2 = v70;
      if (v38 > 0xFE)
      {
        break;
      }

      ++v38;
      v39 += 296;
      v40 += 296;
      v74 += 148;
      v75 += 264;
      v42 = v71 + 264;
      v41 = v72 + 148;
    }

    while (v38 < *(v70 + 344));
  }

  if (*(v68 + 72))
  {
    *(a2 + 360) = *v68;
    *(a2 + 368) = *(v68 + 8);
    *(a2 + 384) = *(v68 + 24);
    *(a2 + 400) = *(v68 + 40);
    *(a2 + 416) = *(v68 + 56);
  }

  return 1;
}

uint64_t GncP07_01PopulateSigId(unsigned int a1)
{
  if (a1 >= 0xA)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

unint64_t GncP07_09PopulateConstellId(unsigned int a1)
{
  v1 = 0x7060503020100uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 7;
}

BOOL R8_EQ(const double *a1, const double *a2)
{
  v2 = *a1;
  v3 = *a1 | 0x8000000000000000;
  if (*a1 < 0)
  {
    v3 = -v2;
  }

  v4 = *a2;
  v5 = *a2 | 0x8000000000000000;
  if (*a2 < 0)
  {
    v5 = -v4;
  }

  v6 = ~v2 & 0x7FF0000000000000;
  v7 = v2 & 0xFFFFFFFFFFFFFLL;
  v8 = ~v4 & 0x7FF0000000000000;
  v9 = v4 & 0xFFFFFFFFFFFFFLL;
  v10 = v5 - v3;
  v11 = v3 >= v5;
  v12 = v3 - v5;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v12 < 4;
  if (v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 == 0;
  }

  if (!v14)
  {
    v13 = 0;
  }

  if (v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = v7 == 0;
  }

  return v15 && v13;
}

uint64_t Core_Get_TM_FSP_Time(unsigned int *a1, unsigned int *a2)
{
  *a1 = 0;
  *a2 = 0;
  if (*p_NA != 1)
  {
    return 0;
  }

  v4 = *(p_NA + 392);
  v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v6 = p_NA;
  v7 = *(p_NA + 396);
  v8 = **(p_api + 8) - v7;
  if (v5 - v4 > 0xDBBA0 || (v8 - 900001) < 0xFFF230D7)
  {
    EvCrt_v("Core_Get_TM_FSP_Time: WARNING: Deleted OS_Time %u Age %d TTick %u Age %d ms", *(p_NA + 392), v5 - v4, v7, v8);
    result = 0;
    v11 = p_NA;
    *p_NA = 0;
    *(v11 + 392) = 0;
    return result;
  }

  if ((*p_NA & 1) == 0)
  {
    return 0;
  }

  *a1 = *(p_NA + 392);
  *a2 = *(v6 + 396);
  return 1;
}

uint64_t Core_Get_Ref_Time(int a1, double *a2, __int16 *a3, double *a4)
{
  v4 = p_NA;
  if (*(p_NA + 2) != 1)
  {
    return 0;
  }

  v5 = a1 - *(p_NA + 404);
  if ((v5 - 900001) >= 0xFFF238A7)
  {
    *a2 = *(p_NA + 408);
    *a3 = *(v4 + 416);
    *a4 = *(v4 + 424);
    v8 = v5;
    Inc_GPS_TOW(v5 * 0.001, a2, a3);
    *a4 = *a4 + v8 * 0.00000001;
    return 1;
  }

  else
  {
    result = 0;
    *(p_NA + 2) = 0;
  }

  return result;
}

BOOL Get_FSP_Time(unsigned int a1, __int16 *a2, double *a3, double *a4, unsigned __int8 *a5)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(p_NA + 3) != 1)
  {
    return 0;
  }

  *v36 = 0;
  v35 = 0;
  v34 = 0;
  result = API_Get_FS_Pulse_TTick(&v35, &v34, &v36[1], v36);
  if (!result)
  {
    return result;
  }

  v11 = v36[1];
  v12 = (v36[1] - v35) + v34 * -0.0000152587891;
  if (fabs(v12) > 60000.0)
  {
    EvCrt_v("Get_FSP_Time:  ERROR:  fabs(DeltaTTick) = fabs(%g) > %d", (v36[1] - v35) + v34 * -0.0000152587891, 60000);
    return 0;
  }

  v33 = v35;
  v13 = *(p_api + 80);
  v14 = *(v13 + 920) / 299792458.0;
  v32 = v34;
  if (v14 > 0.000001)
  {
    EvLog("Get_FSP_Time:  Neglecting Clock Drift in FSP Time propogation!");
    v15 = 0.0;
    v14 = 0.000001;
  }

  else
  {
    v15 = *(v13 + 184);
  }

  v16 = 0;
  v17 = v36[0];
  v18 = v36[0] - v12;
  v19 = p_NA;
  v20 = p_NA + 456;
  v21 = 1;
  while (1)
  {
    v22 = v21;
    if (*(v19 + 3 + v16) == 1 && *(v20 + 8 * v16) > 0.0)
    {
      v23 = *(v19 + 448 + 2 * v16);
      *a3 = *(v19 + 432 + 8 * v16);
      v24 = *(v20 + 8 * v16);
      *a2 = v23;
      v25 = v24 * v24;
      *a4 = v25;
      v26 = *(v19 + 488 + 4 * v16);
      if (!*(v19 + 5))
      {
        break;
      }

      if (v26 >= v18 - 500 && v26 <= v18 + 400)
      {
        break;
      }
    }

    v21 = 0;
    v16 = 1;
    if ((v22 & 1) == 0)
    {
      v28 = "Get_FSP_Time:  WARNING:  No pulse found !";
LABEL_19:
      EvLog(v28);
      return 0;
    }
  }

  v29 = a1 - v11;
  if (a1 == v11)
  {
    v30 = v17;
  }

  else
  {
    if (a1 < v11)
    {
      v28 = "Get_FSP_Time:  ReqTTick earlier than FSP FS_DBTT_TTick !";
      goto LABEL_19;
    }

    v30 = v17;
    v12 = v12 + v29;
  }

  v31 = (1.0 - v15) * (v12 * 0.001);
  *a4 = v25 + v14 * v31 * (v14 * v31);
  Inc_GPS_TOW(v31, a3, a2);
  EvLog_v("Get_FSP_Time:  %d %d %d %d %d %d %g %d %g %d %d %g %g", a1, v16, v33, v32, v30, v18, *(p_NA + 8 * v16 + 432), v26, v31, *a2, *a3, *a3 - *a3, *a4 * 1000000.0 * 1000000.0);
  *a5 = 2;
  return 1;
}

uint64_t Core_Get_GPS_TimePos(uint64_t a1, _BYTE *a2, char *a3, int *a4, double *a5, double *a6, uint64_t a7, double *a8, double *a9)
{
  v15 = a1;
  v26[3] = *MEMORY[0x29EDCA608];
  v23 = 0;
  v20 = 0.0;
  *a2 = 0;
  *a3 = 0;
  *a8 = 0.0;
  *a9 = 0.0;
  *a6 = 0.0;
  if (Get_FSP_Time(a1, &v23, a5, &v20, &v24))
  {
    *a6 = sqrt(v20) * 3.0;
    *a2 = 1;
  }

  v25 = 0;
  v21 = 0.0;
  if (Core_Get_Pos_LLH(v15, 150000, 1, v22, a7, v26, &v21, &v25, &v24, v19, a4))
  {
    v16 = v25;
    if (v25 == 1)
    {
      *a8 = sqrt(v26[0]) * 3.0;
      *a9 = sqrt(v21) * 3.0;
      *a3 = v16;
    }
  }

  if (*a2)
  {
    v17 = 1;
  }

  else
  {
    v17 = *a3;
  }

  return v17 & 1;
}

uint64_t Core_Get_Pos_LLH(int a1, int a2, int a3, int *a4, uint64_t a5, uint64_t a6, double *a7, _BYTE *a8, _BYTE *a9, int *a10, int *a11)
{
  v11 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v12 = p_NA;
  if (*(p_NA + 8) != 1)
  {
    return v11;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    *(p_NA + 632) = 1;
  }

  v13 = *(p_api + 8);
  if (*v13)
  {
    v14 = *(v12 + 544) + *v13 - v13[4];
  }

  else
  {
    v14 = 0;
  }

  v15 = a1 - v14;
  if (a1 - v14 <= -3001)
  {
    v34 = a3;
    v16 = a6;
    v17 = a7;
    v18 = a4;
    v19 = a5;
    v20 = a2;
    v21 = a8;
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_LLH [0]", a1 - v14, a1, v14);
    a8 = v21;
    a2 = v20;
    a5 = v19;
    a4 = v18;
    a7 = v17;
    a6 = v16;
    a3 = v34;
    v15 = 999999000;
  }

  if (v15 > a2)
  {
    v11 = 0;
    *(p_NA + 8) = 0;
    return v11;
  }

  *a4 = v14;
  v22 = p_NA;
  v23 = *(p_NA + 568);
  *a5 = *(p_NA + 552);
  *(a5 + 16) = v23;
  v24 = *(v22 + 592);
  *a6 = *(v22 + 576);
  *(a6 + 16) = v24;
  *a7 = *(v22 + 624);
  *a8 = *(v22 + 9);
  *a9 = *(v22 + 656);
  v25 = *(v22 + 640);
  *a10 = v25;
  v26 = *(v22 + 632);
  if (v26)
  {
    *a11 = v26;
    if ((v25 - 7) < 2)
    {
      goto LABEL_41;
    }

LABEL_32:
    if (*(v22 + 9) == 1)
    {
      v28 = 0x412E848000000000;
      if (*a7 > 1000000.0 || (v28 = 0x4059000000000000, *a7 < 100.0))
      {
        *a7 = v28;
      }
    }

    if (*(v22 + 8) == 1 && *(a6 + 8) < 250000.0)
    {
      v29 = *a6;
      *(a6 + 8) = *a6;
      if (v29 < 250000.0)
      {
        *a6 = vdupq_n_s64(0x410E848000000000uLL);
      }

      *(a6 + 16) = 0;
    }

    goto LABEL_41;
  }

  *a11 = 0;
  v27 = 1;
  if (v25 <= 3)
  {
    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_31;
      }

      if (v25 != 1)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v27 = 4;
    goto LABEL_31;
  }

  if (v25 <= 5)
  {
    if (v25 != 4)
    {
      goto LABEL_29;
    }

LABEL_30:
    v27 = 3;
    goto LABEL_31;
  }

  if (v25 == 6)
  {
LABEL_31:
    *a11 = v27;
    goto LABEL_32;
  }

  if (v25 != 7 && v25 != 8)
  {
    goto LABEL_32;
  }

  *a11 = 2;
LABEL_41:
  v30 = *a6;
  v31 = *(a6 + 8);
  if (*a6 < v31)
  {
    *(a6 + 8) = v30;
    *(a6 + 16) = 0;
    v31 = v30;
  }

  if (a3)
  {
    v32 = v15 * 0.015 * (v15 * 0.015);
    if (v31 < v32)
    {
      *(a6 + 8) = v30;
      if (v30 < v32)
      {
        *a6 = v32;
        *(a6 + 8) = v32;
      }

      *(a6 + 16) = 0;
    }
  }

  return 1;
}

uint64_t Core_Get_Clk_Drift(int a1, int a2, unsigned int *a3, double *a4, double *a5, unsigned __int8 *a6)
{
  if (*(p_NA + 6) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10)
  {
    EvLog("Core_Get_Clk_Drift: Ext Freq Assist skipped in Airborne mode");
    return 0;
  }

  v12 = *(p_api + 8);
  if (*v12)
  {
    v13 = *(p_NA + 496) + *v12 - v12[4];
  }

  else
  {
    v13 = 0;
  }

  v14 = a1 - v13;
  if (a1 - v13 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Clk_Drift", a1 - v13, a1, v13);
    v14 = 999999000;
  }

  if (v14 / 1000 <= a2)
  {
    *a3 = v13;
    v15 = p_NA;
    *a4 = *(p_NA + 504);
    *a5 = *(v15 + 512);
    *a6 = *(v15 + 520);
    v16 = 9.0e-16;
    if (*a5 < 9.0e-16 || (v16 = *a5, *a5 < 2.77777778e-14))
    {
      if (v14 > 899999)
      {
        *a5 = 2.77777778e-14;
      }

      else
      {
        *a5 = v16 + (2.77777778e-14 - v16) * (-((900 - v14 / 1000) * 0.00111111111 * ((900 - v14 / 1000) * 0.00111111111)) * ((900 - v14 / 1000) * 0.00111111111) + 1.0);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    *(p_NA + 6) = 0;
  }

  return result;
}

uint64_t Core_Get_Pos_H(int a1, int a2, double *a3, double *a4)
{
  v4 = p_NA;
  if (*(p_NA + 9) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    *(p_NA + 632) = 1;
  }

  v8 = *(p_api + 8);
  v9 = *v8;
  if (*v8)
  {
    v9 = *(v4 + 544) + v9 - v8[4];
  }

  v10 = a1 - v9;
  if (a1 - v9 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Pos_H", a1 - v9, a1, v9);
    v4 = p_NA;
    v10 = 999999000;
  }

  if (v10 <= a2)
  {
    *a3 = *(v4 + 568);
    *a4 = *(v4 + 624);
    return 1;
  }

  else
  {
    result = 0;
    *(v4 + 9) = 0;
  }

  return result;
}

uint64_t Core_Get_Static_Status(unsigned __int8 *a1)
{
  v1 = p_NA;
  if (*(p_NA + 376) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) != 1 || *(p_NA + 26760) != 10 || *(p_NA + 26764) < 2)
  {
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v1 = p_NA;
    v4 = *(p_NA + 26724);
    v5 = v3 - v4;
    if (v5 > -3001)
    {
      if (v5 < 2001)
      {
        *a1 = *(p_NA + 26728);
        return 1;
      }
    }

    else
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Static_Status", v3 - v4, v3, v4);
      v1 = p_NA;
    }
  }

  result = 0;
  *(v1 + 376) = 0;
  return result;
}

uint64_t Core_Get_Ped_Status(_DWORD *a1, _BYTE *a2)
{
  v2 = p_NA;
  if (*(p_NA + 377) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) != 1 || *(p_NA + 26760) != 10 || *(p_NA + 26764) < 2)
  {
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v2 = p_NA;
    v6 = *(p_NA + 26732);
    v7 = v5 - v6;
    if (v7 > -3001)
    {
      if (v7 < 2001)
      {
        *a1 = *(p_NA + 26736);
        *a2 = *(v2 + 26740);
        return 1;
      }
    }

    else
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Ped_Status", v5 - v6, v5, v6);
      v2 = p_NA;
    }
  }

  result = 0;
  *(v2 + 377) = 0;
  return result;
}

uint64_t Core_Get_ExtA_DMS(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 378) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26744);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_DMS", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 378) = 0;
    return result;
  }

  if (v7 >= 43200001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26744);
  *(a2 + 8) = *(p_NA + 26752);
  *a2 = v9;
  return 1;
}

uint64_t Core_Get_ExtA_UAC(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 379) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 26756);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_UAC", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 379) = 0;
    return result;
  }

  if (v7 >= 43200001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26756);
  *(a2 + 8) = *(p_NA + 26764);
  *a2 = v9;
  return 1;
}

uint64_t Core_Get_ExtA_FIV_Ind(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 380) != 1)
  {
    return 0;
  }

  v5 = *(p_NA + 26768);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_FIV_Ind", v6 - v5, v6, v5);
LABEL_5:
    result = 0;
    *(v2 + 380) = 0;
    return result;
  }

  if (v7 >= 43200001)
  {
    goto LABEL_5;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26768);
  *(a2 + 8) = *(p_NA + 26776);
  *a2 = v9;
  return 1;
}

uint64_t Core_Get_ExtA_Alt(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 382) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26784);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Alt", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 382) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26800);
  *a2 = *(p_NA + 26784);
  a2[1] = v9;
  return 1;
}

uint64_t Core_Get_ExtA_MapV(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 383) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26816);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_MapV", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 383) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = p_NA;
  *a2 = *(p_NA + 26816);
  v10 = *(v9 + 26848);
  v11 = *(v9 + 26864);
  v12 = *(v9 + 26832);
  *(a2 + 64) = *(v9 + 26880);
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  *(a2 + 16) = v12;
  return 1;
}

uint64_t Core_Get_ExtA_SpdC(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 384) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26888);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_SpdC", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 384) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26904);
  *a2 = *(p_NA + 26888);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_AT_Vel(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 385) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26912);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_AT_Vel", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 385) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26928);
  *a2 = *(p_NA + 26912);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_V_Vel(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 386) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26936);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_V_Vel", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 386) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26952);
  *a2 = *(p_NA + 26936);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_Heading(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 387) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26960);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_Heading", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 387) = 0;
    return result;
  }

  if (v7 >= 120001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 26976);
  *a2 = *(p_NA + 26960);
  *(a2 + 16) = v9;
  return 1;
}

uint64_t Core_Get_ExtA_TunnelEP(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 388) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) == 1 && *(p_NA + 26760) == 10 && *(p_NA + 26764) >= 2)
  {
    goto LABEL_8;
  }

  v5 = *(p_NA + 26984);
  v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
  v7 = v6 - v5;
  if (v7 <= -3001)
  {
    EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "ExtA_TunnelEP", v6 - v5, v6, v5);
LABEL_8:
    result = 0;
    *(v2 + 388) = 0;
    return result;
  }

  if (v7 >= 30001)
  {
    goto LABEL_8;
  }

  if (v7 > a1)
  {
    return 0;
  }

  v9 = *(p_NA + 27032);
  v11 = *(p_NA + 26984);
  v10 = *(p_NA + 27000);
  a2[2] = *(p_NA + 27016);
  a2[3] = v9;
  *a2 = v11;
  a2[1] = v10;
  return 1;
}

uint64_t Core_Get_Speed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v5 = p_NA;
  if (*(p_NA + 389) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) != 1 || *(p_NA + 26760) != 10 || *(p_NA + 26764) < 2)
  {
    v6 = *(p_api + 8);
    if (*v6)
    {
      v7 = *(p_NA + 27048) + *v6 - v6[4];
    }

    else
    {
      v7 = 0;
    }

    if (a1 - v7 > -3001)
    {
      if (a1 - v7 < 3001)
      {
        *a2 = v7;
        *a3 = *(v5 + 27056);
        *a4 = *(v5 + 27064);
        *a5 = 0.0;
        return 1;
      }
    }

    else
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Speed", a1 - v7, a1, v7);
      v5 = p_NA;
    }
  }

  result = 0;
  *(v5 + 389) = 0;
  return result;
}

uint64_t Core_Get_GSpeed(int a1, unsigned int *a2, double *a3, double *a4, double *a5)
{
  v5 = p_NA;
  if (*(p_NA + 390) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) != 1 || *(p_NA + 26760) != 10 || *(p_NA + 26764) < 2)
  {
    v6 = *(p_api + 8);
    if (*v6)
    {
      v7 = *(p_NA + 27072) + *v6 - v6[4];
    }

    else
    {
      v7 = 0;
    }

    if (a1 - v7 > -3001)
    {
      if (a1 - v7 < 3001)
      {
        *a2 = v7;
        *a3 = *(v5 + 27080);
        *a4 = *(v5 + 27088);
        *a5 = 0.0;
        return 1;
      }
    }

    else
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "GSpeed", a1 - v7, a1, v7);
      v5 = p_NA;
    }
  }

  result = 0;
  *(v5 + 390) = 0;
  return result;
}

uint64_t Core_Get_Track(int a1, unsigned int *a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = p_NA;
  if (*(p_NA + 391) != 1)
  {
    return 0;
  }

  if (*(p_NA + 379) != 1 || *(p_NA + 26760) != 10 || *(p_NA + 26764) < 2)
  {
    v7 = *(p_api + 8);
    if (*v7)
    {
      v8 = *(p_NA + 27096) + *v7 - v7[4];
    }

    else
    {
      v8 = 0;
    }

    if (a1 - v8 > -3001)
    {
      if (a1 - v8 < 3001)
      {
        *a2 = v8;
        *a3 = *(v6 + 27112);
        *a4 = *(v6 + 27104);
        *a5 = *(v6 + 27120);
        *a6 = 0.0;
        return 1;
      }
    }

    else
    {
      EvCrt_v("NA_Age:  ERROR:  %s  Assistance Age in the Future by %d  ms  (%u -%u)", "Track", a1 - v8, a1, v8);
      v6 = p_NA;
    }
  }

  result = 0;
  *(v6 + 391) = 0;
  return result;
}

uint64_t Core_Get_GPS_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 44 + v4))
  {
    v5 = *(p_NA + 36 * v4 + 3260);
    if (v5 >= 619315201 && a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 44 + v4) = 0;
      return result;
    }
  }

  else
  {
    if (!*(p_NA + 44 + v4))
    {
      return 0;
    }

    v5 = *(p_NA + 36 * v4 + 3260);
  }

  v7 = p_NA + 36 * v4;
  v8 = *(v7 + 3264);
  *a3 = v5;
  *(a3 + 4) = v8;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v7 + 3268);
  v9 = (v7 + 3270);
  v10 = 9;
  v11 = 12;
  do
  {
    v12 = a3 + v11;
    *v12 = *v9;
    *(v12 + 1) = v9[1];
    *(v12 + 2) = v9[2];
    --v10;
    v11 += 4;
    v9 += 3;
  }

  while (v10 > 1);
  v13 = *a3;
  if (a2 >= 1 && !v13)
  {
    *a3 = a2;
    v13 = a2;
  }

  if (a2)
  {
    v14 = v13 < a2 + 50;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (v13)
  {
    v16 = v13 < 619315201;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t Core_Get_QZSS_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    return 0;
  }

  v4 = (a1 - 193);
  if (a2 >= 619315201 && *(p_NA + 86 + v4))
  {
    v5 = *(p_NA + 36 * v4 + 5212);
    if (v5 >= 619315201 && a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 86 + v4) = 0;
      return result;
    }
  }

  else
  {
    if (!*(p_NA + 86 + v4))
    {
      return 0;
    }

    v5 = *(p_NA + 36 * v4 + 5212);
  }

  v7 = p_NA + 36 * v4;
  v8 = *(v7 + 5216);
  *a3 = v5;
  *(a3 + 4) = v8;
  *(a3 + 8) = 0;
  *(a3 + 10) = *(v7 + 5220);
  v9 = (v7 + 5222);
  v10 = 9;
  v11 = 12;
  do
  {
    v12 = a3 + v11;
    *v12 = *v9;
    *(v12 + 1) = v9[1];
    *(v12 + 2) = v9[2];
    --v10;
    v11 += 4;
    v9 += 3;
  }

  while (v10 > 1);
  v13 = *a3;
  if (a2 >= 1 && !v13)
  {
    *a3 = a2;
    v13 = a2;
  }

  if (a2)
  {
    v14 = v13 < a2 + 50;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (v13)
  {
    v16 = v13 < 619315201;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

BOOL Core_Get_GLON_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 120 + v4))
  {
    v5 = *(p_NA + 36 * v4 + 25808);
    if (v5 >= 619315201 && a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 120 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 120 + v4))
  {
    return 0;
  }

  v7 = p_NA + 36 * v4;
  v8 = *(v7 + 25824);
  v9 = *(v7 + 25808);
  *(a3 + 32) = *(v7 + 25840);
  *a3 = v9;
  *(a3 + 16) = v8;
  v10 = *a3;
  if (a2 >= 1 && !v10)
  {
    *a3 = a2;
    v10 = a2;
  }

  if (v10 && v10 < 619315201)
  {
    return 0;
  }

  return !a2 || v10 < a2 + 50;
}

BOOL Core_Get_GAL_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 183 + v4))
  {
    v5 = *(p_NA + 36 * v4 + 8756);
    if (v5 >= 619315201 && a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 183 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 183 + v4))
  {
    return 0;
  }

  v7 = p_NA + 36 * v4;
  v9 = *(v7 + 8756);
  v8 = *(v7 + 8772);
  *(a3 + 32) = *(v7 + 8788);
  *a3 = v9;
  *(a3 + 16) = v8;
  v10 = *a3;
  if (a2 >= 1 && !v10)
  {
    *a3 = a2;
    v10 = a2;
  }

  if (v10 && v10 < 619315201)
  {
    return 0;
  }

  return !a2 || v10 < a2 + 50;
}

BOOL Core_Get_BDS_Alm(int a1, int a2, _OWORD *a3)
{
  if ((a1 - 64) < 0xFFFFFFC1)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 284 + v4))
  {
    v5 = *(p_NA + 44 * v4 + 19688);
    if (v5 >= 619315201 && a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 284 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 284 + v4))
  {
    return 0;
  }

  v7 = (p_NA + 44 * v4 + 19688);
  v9 = *v7;
  v8 = v7[1];
  *(a3 + 28) = *(v7 + 28);
  *a3 = v9;
  a3[1] = v8;
  v10 = *a3;
  if (a2 >= 1 && !v10)
  {
    *a3 = a2;
    v10 = a2;
  }

  if (v10 && v10 < 619315201)
  {
    return 0;
  }

  return !a2 || v10 < a2 + 50;
}