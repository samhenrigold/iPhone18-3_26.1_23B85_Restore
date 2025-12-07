void NK_SV_Res_RTests_FDist(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65[128] = *MEMORY[0x29EDCA608];
  if (*(a4 + 20) < 6)
  {
    return;
  }

  v7 = (a4 + 61824);
  v8 = (a4 + 6771);
  v60 = a1 - 8;
  bzero(v65, 0x400uLL);
  v9 = 0;
  v10 = v8 + 309;
  v11 = a4 + 57;
  v12 = a4 + 12072;
  memset(v64, 0, sizeof(v64));
  do
  {
    v13 = *(a2 + 736 + v9);
    if (v13 == 255)
    {
      LOBYTE(v16) = 1;
      v13 = v9;
      goto LABEL_20;
    }

    if (v9 > v13)
    {
      goto LABEL_21;
    }

    if (v10[v9] == 1 && *(v11 + v9) == 1)
    {
      if (v10[v13] == 1 && *(v11 + v13) == 1 && ((v14 = fabs(*(v12 + 8 * v9)), v14 >= 50.0) || fabs(*(v12 + 8 * v13)) >= 50.0) && (v14 < 50.0 || fabs(*(v12 + 8 * v13)) < 50.0))
      {
        v15 = 1;
        LOBYTE(v16) = 1;
      }

      else
      {
        LOBYTE(v16) = 0;
        v15 = 1;
      }

LABEL_19:
      *(v64 + v9) = v15;
LABEL_20:
      *(v64 + v13) = v16;
      goto LABEL_21;
    }

    if (v10[v13] == 1)
    {
      v16 = *(v11 + v13);
      if (v16 == 1)
      {
        v15 = 0;
        goto LABEL_19;
      }
    }

LABEL_21:
    ++v9;
  }

  while (v9 != 128);
  v62 = a3;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0.0;
  do
  {
    if (v10[v17] == 1 && *(v11 + v17) == 1)
    {
      v23 = *(v12 + 8 * v17);
      *&v65[v17] = v23 * v23;
      v24 = fabs(v23);
      if (v23 > -50.0)
      {
        v25 = v21;
      }

      else
      {
        v25 = v21 + 1;
      }

      if (v23 < 50.0)
      {
        v26 = v20;
      }

      else
      {
        v25 = v21;
        v26 = v20 + 1;
      }

      if (v24 >= 50.0)
      {
        v27 = v19;
      }

      else
      {
        v25 = v21;
        v26 = v20;
        v27 = v19 + 1;
      }

      v22 = v22 + v23 * v23;
      if (*(v64 + v17) == 1)
      {
        v21 = v25;
        v20 = v26;
        v19 = v27;
      }

      ++v18;
    }

    ++v17;
  }

  while (v17 != 128);
  v28 = 0;
  if (v60 >= 0xFFFFFFFD)
  {
    v29 = 5;
  }

  else
  {
    v29 = 7;
  }

  if (v60 >= 0xFFFFFFFD)
  {
    v30 = 7;
  }

  else
  {
    v30 = 9;
  }

  v59 = v20 + v21;
  v31 = v21 > 1 && v20 > 1;
  v32 = v20 >> 1;
  v33 = *v7;
  v34 = v7[1];
  if (!v31)
  {
    v32 = 0;
  }

  v35 = v32 + v29;
  v36 = v7;
  v37 = v32 + v30;
  v58 = *(a4 + 1872) == 1 && v32 + v30 < 0xA;
  if (v58)
  {
    v38 = 8;
  }

  else
  {
    v38 = v35;
  }

  v61 = v38;
  v39 = v36[2];
  memset(v63, 0, sizeof(v63));
  v40 = (a2 + 96);
  while (2)
  {
    if (v10[v28] != 1 || *(v11 + v28) != 1)
    {
      goto LABEL_67;
    }

    v41 = *v40;
    if (v41 > 3)
    {
      if (v41 - 5 < 2)
      {
        goto LABEL_65;
      }

      if (v41 != 4)
      {
        if (v41 != 7)
        {
          goto LABEL_67;
        }

        goto LABEL_62;
      }

      if (v39 >= 160000.0)
      {
        goto LABEL_67;
      }

LABEL_66:
      *(v63 + v28) = 1;
      goto LABEL_67;
    }

    if (*v40 > 1u)
    {
      if (v41 != 2)
      {
        if (v41 == 3)
        {
          goto LABEL_65;
        }

        goto LABEL_67;
      }

      if (v34 >= 160000.0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (!*v40)
    {
LABEL_62:
      EvCrt_Illegal_switch_case("NK_SV_Res_RTests_FDist", 851);
      goto LABEL_67;
    }

LABEL_65:
    if (v33 < 160000.0)
    {
      goto LABEL_66;
    }

LABEL_67:
    ++v28;
    v40 += 4;
    if (v28 != 128)
    {
      continue;
    }

    break;
  }

  v42 = v59 + v19;
  if (v58)
  {
    v43 = 10;
  }

  else
  {
    v43 = v37;
  }

  if (v42 > 0x30)
  {
    v42 = 47;
  }

  if ((*(v62 + 241) & 1) != 0 || *(v62 + 27120) > *(v62 + 16) || *(a4 + 1872) != 1)
  {
    goto LABEL_88;
  }

  v44 = *(v62 + 148);
  if (v44 >= *(v62 + 152))
  {
    v44 = *(v62 + 152);
  }

  if (v44 >= *(v62 + 156))
  {
    v44 = *(v62 + 156);
  }

  if (v44 < 0xB || *(a4 + 20) <= 9)
  {
LABEL_88:
    v45 = 1000.0;
    if (v19 > 0xE)
    {
      v45 = 100.0;
    }
  }

  else
  {
    v45 = 100.0;
  }

  if (v19 >= v61)
  {
    do
    {
      if (v42 < v43)
      {
        break;
      }

      v46 = 0;
      v47 = v64;
      v48 = v65;
      v49 = v63;
      v50 = (a4 + 12072);
      v51 = v8 + 309;
      v52 = (a4 + 7336);
      v53 = 128;
      do
      {
        if (v42 >= v43)
        {
          v54 = *v8;
          if (*v8)
          {
            if (*v49 == 1 && (*v50 < -50.0 || *v50 > v45))
            {
              v56 = v22 - *v48;
              if (*v48 / (v56 / (v18 - 1)) > NK_SV_Res_RTests_FDist(e_CTXT_SES,s_DB_Track_Meas const*,s_Nav_Kalman_SD *,s_Nav_Kalman_WD *)::F_table[v42 - 1])
              {
                *v51 = 0;
                *v52 = 18;
                v57 = *v47;
                ++v8[1];
                *v8 = v54 - 1;
                if (v57)
                {
                  --v42;
                }

                v46 = 1;
                v22 = v56;
                --v18;
              }
            }
          }
        }

        ++v47;
        ++v52;
        ++v51;
        ++v48;
        ++v50;
        ++v49;
        --v53;
      }

      while (v53);
    }

    while ((v46 & 1) != 0);
  }
}

uint64_t Init_DB_Sensor(uint64_t result)
{
  v1 = 0;
  v2 = result + 26056;
  *(result + 280) = result + 456;
  *(result + 288) = result + 26056;
  *(result + 240) = result + 456;
  *(result + 296) = 0x32000000020;
  *(result + 304) = 25600;
  v3 = result + 308;
  do
  {
    *(v3 + 8 * v1 - 60) = result + 456;
    *(v3 + v1++) = 0;
  }

  while (v1 != 4);
  v4 = 0;
  v5 = result + 51656;
  *(result + 352) = v2;
  *(result + 360) = result + 51656;
  *(result + 312) = v2;
  *(result + 368) = 0x32000000020;
  *(result + 376) = 25600;
  v6 = result + 380;
  do
  {
    *(v6 + 8 * v4 - 60) = v2;
    *(v6 + v4++) = 0;
  }

  while (v4 != 4);
  v7 = 0;
  *(result + 424) = v5;
  *(result + 432) = result + 55256;
  *(result + 384) = v5;
  *(result + 440) = 0x9600000018;
  *(result + 448) = 3600;
  v8 = result + 452;
  do
  {
    *(v8 + 8 * v7 - 60) = v5;
    *(v8 + v7++) = 0;
  }

  while (v7 != 4);
  return result;
}

double GNSS_HL_System_Run_Update(const void **a1)
{
  SV_Data_Decode_Update_Wrapper(a1);
  SV_Gen_Meas_Update_Wrapper(a1);
  SV_State_Update_Wrapper(a1);
  Nav_Kalman_Update_Wrapper(a1);

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
  v36 = *MEMORY[0x29EDCA608];
  v3 = a2 + 60000;
  v19 = 0.0;
  v4 = 0.0;
  if ((*(a1 + 136) & 1) == 0)
  {
    if (*(a2 + 62545) == 1)
    {
      v6 = *(a2 + 61472);
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
        v7 = *(a2 + 62592) * *(a2 + 62592);
        v8 = *(a2 + 61864);
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
              if (*v3 == 1 && *(a2 + 60004) == 1)
              {
                v11 = *(a2 + 60032);
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
        *(v3 + 1472) = v6 + v4;
      }
    }

    if ((*(a2 + 24) & 1) == 0 && *(v3 + 4) == 1 && ((*v3 & 1) != 0 || *(v3 + 16) == 1))
    {
      v12 = *(v3 + 24) - *(a2 + 1672);
      v13 = v12 * v12;
      if (v13 > 100.0)
      {
        v14 = *(v3 + 1472);
        v15 = *(v3 + 40) + v14;
        if (v13 > v15 * 16.0)
        {
          v4 = v13 / 9.0 - v15;
          v19 = v4;
          *(v3 + 1472) = v14 + v4;
        }
      }
    }
  }

  *&v20[0] = 0;
  result = R8_EQ(&v19, v20);
  if ((result & 1) == 0)
  {
    memset(v20, 0, sizeof(v20));
    v21 = 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = 0x3FF0000000000000;
    if (v4 > 0.0)
    {
      result = rnk1_core((a1 + 976), 6u, v4, v20, &v18);
    }

    v17 = *(v3 + 1472);
    *(v3 + 1568) = v17;
    *(v3 + 1664) = sqrt(v17);
  }

  return result;
}

void DD_Assist_NVIC_Data(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  v4 = a1;
  v5 = 0;
  v67 = *MEMORY[0x29EDCA608];
  v6 = &a3[2973].f64[1];
  v65 = a3 + 2981;
  v64 = a1 - 241;
  v7 = a3 + 3114;
  v8 = a2 + 165;
  v9 = &unk_2A13ED000;
  do
  {
    if (*(v8 + v5) <= 0xA5u && (*(*(v6 + 8) + v5) != 1 || (v64 - *(v65->f64 + 19 * v5)) <= 0xFFFFF806))
    {
      memset(v66, 0, 76);
      v10 = v4;
      if (!Core_Get_NVIC_Eph((v5 + 1), v4, v66))
      {
        goto LABEL_9;
      }

      v11 = *(v6 + 8);
      if (*(v11 + v5) == 1)
      {
        v12 = v65 + 19 * v5;
        if (SLODWORD(v66[0]) <= *v12 && v10 - *v12 >= -1800)
        {
LABEL_9:
          v13 = *(v6 + 3);
          *(*(v6 + 2) + 20 * v5 + 8) = 0;
          *(v13 + 20 * v5 + 8) = 0;
          v4 = v10;
          goto LABEL_31;
        }

        v14 = BYTE10(v66[0]);
        if (LODWORD(v66[0]) - *v12 <= 10799 && Is_NVIC_IntEph_Real(v12) && !Is_NVIC_IntEph_Real(v66))
        {
          v4 = v10;
          *(v65->f64 + 19 * v5) = v10;
          v9 = &unk_2A13ED000;
          goto LABEL_31;
        }
      }

      else
      {
        v14 = BYTE10(v66[0]);
      }

      v15 = v14 == 0;
      v16 = *v6;
      if ((*(*v6 + v5) & 1) == 0 && !v14)
      {
        v15 = *(*(v6 + 10) + v5) != 1 || *(&v7->f64[1] + 52 * v5 + 1) == 0;
      }

      v17 = v65 + 76 * v5;
      v18 = v66[3];
      *(v17 + 2) = v66[2];
      *(v17 + 3) = v18;
      *(v17 + 60) = *(&v66[3] + 12);
      v19 = v66[1];
      *v17 = v66[0];
      *(v17 + 1) = v19;
      *(*(v6 + 4) + v5) = 1;
      *(v11 + v5) = 1;
      *(v16 + v5) = 0;
      v20 = *(v6 + 1);
      v21 = v15;
      *(v20 + v5) = v21;
      if (v21)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      v23 = *(v6 + 2);
      if (*(v17 + 1) == 5)
      {
        *(v23 + 20 * v5 + 8) = v22;
        v24 = (*(v6 + 3) + 20 * v5 + 8);
      }

      else
      {
        *(v23 + 20 * v5 + 12) = v22;
        v24 = (*(v6 + 3) + 20 * v5 + 12);
      }

      v9 = &unk_2A13ED000;
      v4 = v10;
      *v24 = v22;
      if (v10 >= 1)
      {
        *(*(v6 + 11) + v5) = 1;
        Core_Save_NVIC_Eph((v5 + 1), 0, v17);
        v20 = *(v6 + 1);
      }

      v25 = 0;
      LODWORD(v26) = 0;
      v27 = p_NV;
      v28 = *(v20 + 6);
      *(p_NV + 26980) = *v20;
      *(v27 + 26986) = v28;
      v29 = 55665;
      do
      {
        v30 = *(v27 + 26976 + v25) ^ BYTE1(v29);
        v29 = 52845 * (v29 + v30) + 22719;
        v26 = (v26 + v30);
        ++v25;
      }

      while (v25 != 24);
      *(v27 + 26968) = v26;
    }

LABEL_31:
    ++v5;
  }

  while (v5 != 14);
  if (v4 >= 1)
  {
    v31 = 0;
    v32 = v6 + 1184;
    do
    {
      if (*(*(v6 + 1) + v31) == 1 && (*(*(a4 + 1656) + v31) & 1) == 0 && *(v8 + v31) <= 0xA5u && (*(*(v6 + 9) + v31) != 1 || v4 - *v32 >= 241))
      {
        memset(v66, 0, 76);
        NVIC_IntEph = EE_Get_NVIC_IntEph((v31 + 1), v4, v66);
        v34 = *(v6 + 9);
        if (!NVIC_IntEph || *(v34 + v31) == 1 && SLODWORD(v66[0]) <= *v32)
        {
          *(v34 + v31) = 0;
        }

        else
        {
          *(v32 + 60) = *(&v66[3] + 12);
          v35 = v66[3];
          v32[2] = v66[2];
          v32[3] = v35;
          v36 = v66[1];
          *v32 = v66[0];
          v32[1] = v36;
          *(*(v6 + 4) + v31) = 1;
          *(v34 + v31) = 1;
          Debug_Log_NVC_Eph(2, v66);
        }
      }

      ++v31;
      v32 = (v32 + 76);
    }

    while (v31 != 14);
  }

  v37 = 0;
  HIDWORD(v66[0]) = 0;
  LOWORD(v66[1]) = 0;
  DWORD1(v66[1]) = 0;
  WORD4(v66[1]) = 0;
  *&v66[0] = 0;
  *(v66 + 7) = 0;
  memset(&v66[1] + 12, 0, 21);
  do
  {
    if ((*(*(v6 + 10) + v37) != 1 || v4 - *(v7->f64 + 13 * v37) >= 1801) && Core_Get_NVIC_Alm((v37 + 1), v4, v66))
    {
      v38 = *(v6 + 10);
      if (*(v38 + v37) != 1 || SLODWORD(v66[0]) > *(v7->f64 + 13 * v37))
      {
        v39 = BYTE9(v66[0]) == 0;
        v40 = *(v6 + 1);
        if ((*(v40 + v37) & 1) == 0 && !BYTE9(v66[0]))
        {
          v41 = *(v6 + 8);
          if (*(v41 + v37) == 1)
          {
            v42 = v65 + 76 * v37;
            v43 = v42[10];
            v44 = *v42;
            if (v43)
            {
              v45 = v44 + 3600 <= v4;
            }

            else
            {
              v45 = 1;
            }

            if (v45)
            {
              if (v44 + 100 < v4)
              {
                *(*(v6 + 4) + v37) = 0;
                *(v41 + v37) = 0;
              }
            }

            else
            {
              v39 = 0;
            }
          }
        }

        v46 = v7 + 52 * v37;
        v47 = v66[1];
        *v46 = v66[0];
        *(v46 + 1) = v47;
        *(v46 + 2) = v66[2];
        *(v46 + 12) = v66[3];
        *(*(v6 + 5) + v37) = 1;
        *(v38 + v37) = 1;
        *(*v6 + v37) = 0;
        *(v40 + v37) = v39;
        if (v4 >= 1)
        {
          Core_Save_NVIC_Alm((v37 + 1), 0, v46);
          v40 = *(v6 + 1);
        }

        v48 = 0;
        LODWORD(v49) = 0;
        v50 = v9[492];
        v51 = *(v40 + 6);
        *(v50 + 26980) = *v40;
        *(v50 + 26986) = v51;
        v52 = 55665;
        do
        {
          v53 = *(v50 + v48 + 26976) ^ BYTE1(v52);
          v52 = 52845 * (v52 + v53) + 22719;
          v49 = (v49 + v53);
          ++v48;
        }

        while (v48 != 24);
        v50[3371] = v49;
      }
    }

    ++v37;
  }

  while (v37 != 14);
  *(v66 + 14) = 0;
  *&v66[0] = 0;
  *(v66 + 5) = 0;
  if (Core_Get_NVIC_NGTO(v4, v66))
  {
    v54 = *(v6 + 745);
    v55 = *(v6 + 744);
    if (v54 < 4 || SLODWORD(v66[0]) > v55)
    {
      EvLog_v("DD_Assist_NVIC_NGTO:  New NGTO:  Source %d > %d  or  GPS_secs %d > %d , A0G %d %d", DWORD1(v66[0]), v54, LODWORD(v66[0]), v55, SWORD4(v66[0]), *(v6 + 1492));
      *(v6 + 186) = v66[0];
      *(v6 + 748) = v66[1];
      *(v6 + 375) = *(v6 + 372);
      *(v6 + 376) = *(v6 + 1492) * 2.91038305e-11;
      v56.f64[0] = *(v6 + 1493);
      v56.f64[1] = v6[2988];
      a3[3162] = vmulq_f64(v56, xmmword_299050CC0);
      *(v6 + 758) = 16 * *(v6 + 1495);
      *(v6 + 1518) = *(v6 + 1496);
      if (v4 >= 1)
      {
        v57 = 0;
        LODWORD(v58) = 0;
        v59 = v9[492];
        *(v59 + 27008) = v66[0];
        *(v59 + 27024) = v66[1];
        v60 = 55665;
        do
        {
          v61 = *(v59 + 27008 + v57) ^ BYTE1(v60);
          v60 = 52845 * (v60 + v61) + 22719;
          v58 = (v58 + v61);
          ++v57;
        }

        while (v57 != 24);
        *(v59 + 27000) = v58;
      }
    }
  }
}

double SBAS_EphInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = 16 * *(a1 + 8);
  v2 = *(a1 + 12);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299052500);
  v5 = *(a1 + 20);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  *(a2 + 16) = v4;
  *(a2 + 32) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3FB47AE147AE147BuLL));
  v4.f64[0] = *(a1 + 28);
  v3.i64[0] = SLODWORD(v4.f64[0]);
  v3.i64[1] = SHIDWORD(v4.f64[0]);
  v6 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299052510);
  v7 = *(a1 + 36);
  v3.i64[0] = v7;
  v3.i64[1] = SHIDWORD(v7);
  *(a2 + 12) = *(a1 + 10);
  *(a2 + 48) = v6;
  *(a2 + 64) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299052520);
  v6.f64[0] = *(a1 + 44);
  v3.i64[0] = SLODWORD(v6.f64[0]);
  v3.i64[1] = SHIDWORD(v6.f64[0]);
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3EEA36E2EB1C432DuLL));
  result = *(a1 + 52) * 0.0000625;
  *(a2 + 96) = result;
  return result;
}

float64x2_t NVIC_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 9) = *(a1 + 9);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = 16 * *(a1 + 14);
  LOWORD(v2) = *(a1 + 16);
  v3.f64[0] = v2;
  v3.f64[1] = *(a1 + 20);
  HIDWORD(v4) = 1050673152;
  *(a2 + 24) = vmulq_f64(v3, xmmword_299052540);
  v3.f64[0] = *(a1 + 24);
  LODWORD(v4) = *(a1 + 28);
  v3.f64[1] = v4;
  *(a2 + 40) = vmulq_f64(v3, xmmword_299052550);
  v3.f64[0] = *(a1 + 32);
  v5.i64[0] = SLODWORD(v3.f64[0]);
  v5.i64[1] = SHIDWORD(v3.f64[0]);
  *(a2 + 56) = vmulq_f64(vcvtq_f64_s64(v5), vdupq_n_s64(0x3E9921FB54442D28uLL));
  v3.f64[0] = *(a1 + 40);
  v3.f64[1] = *(a1 + 44);
  *(a2 + 72) = vmulq_f64(v3, xmmword_299052560);
  v3.f64[0] = *(a1 + 46);
  v3.f64[1] = *(a1 + 48);
  result = vmulq_f64(v3, xmmword_299052570);
  *(a2 + 88) = result;
  return result;
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
    v14 = 6328;
    v15 = a3 + 6328;
    v16 = vdupq_n_s64(0x41124C41D4FDF3B6uLL);
    v17 = vdupq_n_s64(0x41024C41D4FDF3B6uLL);
    v18 = vdupq_n_s64(0xC1124C41D4FDF3B6);
    do
    {
      v19 = vmlsq_f64(*(v15 + v13), v16, vrndmq_f64(vdivq_f64(*(v15 + v13), v16)));
      *(v15 + v13) = vbslq_s8(vcgtq_f64(v19, v17), vaddq_f64(v19, v18), v19);
      v13 += 16;
    }

    while (v13 != 1024);
  }

  else
  {
    v14 = 5304;
  }

  v20 = v10 * 0.25;
  if (a1 >= 4)
  {
    gn_report_assertion_failure("NK_Meas_ARP_Check: index fail");
  }

  v21 = 0;
  v22 = v10 * v10;
  v23 = v20 * v20;
  v24 = a3 + v14;
  v25 = (a3 + 9528);
  do
  {
    if (*(a3 + v21 + 312) == 1)
    {
      v26 = a3 + 4 * v21;
      if ((*(v26 + 568) - 1) >= 0x1E)
      {
        v27 = v12 >= 100.0;
        if (*a2 != 2)
        {
          v27 = v11 >= 100.0;
        }

        if (!v27)
        {
          v28 = v25[144] * 9.0;
          v29 = *(v24 + 8 * v21) * *(v24 + 8 * v21);
          if (v28 <= v22)
          {
            v30 = v22;
          }

          else
          {
            v30 = v25[144] * 9.0;
          }

          if (v28 <= v23)
          {
            v31 = v23;
          }

          else
          {
            v31 = v25[144] * 9.0;
          }

          if (v29 >= v30)
          {
            *(a3 + v21 + 312) = 0;
            *(v26 + 568) = 22;
            --*(a3 + 3);
            ++*(a3 + 4);
          }

          else if (v29 > v31)
          {
            v32 = *v25;
            NK_Get_Smooth_Excl_Weight(v29, v31, v30);
            *v25 = v32 / v33;
            *(a3 + 10552 + v21) = 1;
          }
        }
      }
    }

    ++v21;
    ++v25;
    a2 += 4;
  }

  while (v21 != 128);
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

void NK_Meas_Outlier_Check(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a1;
  v48[128] = *MEMORY[0x29EDCA608];
  if (a1 != 1)
  {
    if (a5)
    {
      v11 = 0;
      v16 = 0;
      v17 = a5 + 568;
      do
      {
        if (*(v17 + v16 - 256) == 1 && (*(v17 + 4 * v16) - 1) >= 0x1E)
        {
          v47[v11++] = v16;
        }

        ++v16;
      }

      while (v16 != 128);
      if (v11 >= 1)
      {
        v18 = v11;
        v19 = v47;
        do
        {
          v20 = *v19++;
          v48[v20] = *(a5 + 5304 + 8 * v20);
          --v18;
        }

        while (v18);
      }

      if (a6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pDO");
      v11 = 0;
      if (v6)
      {
LABEL_22:
        v21 = 0;
        v22 = v6 + 568;
        v23 = v11;
        do
        {
          if (*(v22 + v21 - 256) == 1 && (*(v22 + 4 * v21) - 1) >= 0x1E)
          {
            v47[v23++] = v21;
          }

          ++v21;
        }

        while (v21 != 128);
        if (v11 < v23)
        {
          v24 = v23 - v11;
          v25 = &v47[v11];
          do
          {
            v26 = *v25++;
            v48[v26] = *(v6 + 5304 + 8 * v26);
            --v24;
          }

          while (v24);
        }

        v10 = 0;
        v11 = v23;
        goto LABEL_34;
      }
    }

    gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pDR");
    v10 = 0;
    goto LABEL_34;
  }

  v10 = a4;
  if (!a4)
  {
    gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad pPR");
    v27 = 0;
    v11 = 0;
    goto LABEL_35;
  }

  v11 = 0;
  for (i = 0; i != 128; ++i)
  {
    if (*(a4 + i + 312) == 1 && (*(a4 + 4 * i + 568) - 1) >= 0x1E)
    {
      v47[v11++] = i;
    }
  }

  if (v11 >= 1)
  {
    v13 = v11;
    v14 = v47;
    do
    {
      v15 = *v14++;
      v48[v15] = *(a4 + 6328 + 8 * v15);
      --v13;
    }

    while (v13);
  }

LABEL_34:
  v27 = v48;
  VecSortIndexAscR8(v48, v11, v47, 1);
LABEL_35:
  if (a3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v9 == 1;
  }

  if (v28)
  {
    v29 = 6;
  }

  else
  {
    v29 = 5;
  }

  v30 = (v11 - 1);
  if (v30 > v29)
  {
    v46 = v7 + 312;
    for (j = v11 - 3; ; --j)
    {
      v32 = v47[v30];
      v33 = v27[v32];
      v34 = fabs(v33 / v27[v47[j + 1]]);
      v35 = fabs(v33 / v27[v47[j]]);
      v36 = (v34 + v34) * 0.333333333 + -1.0;
      v37 = (v35 + v35) * 0.25 + -1.0;
      if (v36 <= 0.0 && v37 <= 0.0)
      {
        return;
      }

      if (v7 && v9 != 1 && (*(v46 + v32) & 1) != 0)
      {
        break;
      }

      if (v9 == 1)
      {
        v9 = 1;
      }

      else
      {
        v10 = v6;
        v9 = 3;
      }

      if (v10)
      {
        goto LABEL_53;
      }

      gn_report_assertion_failure("NK_Meas_Outlier_Check:  Bad p_SM");
LABEL_66:
      if (--v30 <= v29)
      {
        return;
      }
    }

    v9 = 2;
    v10 = v7;
LABEL_53:
    if (fabs(v33) > cOutlierMinResid[v9 - 1])
    {
      v38 = v9;
      v39 = v29;
      v40 = v7;
      v41 = v6;
      if (v36 < 1.0 && v37 < 1.0)
      {
        v43 = v10 + 8 * v32;
        v44 = *(v43 + 9528);
        if (v36 <= v37)
        {
          v36 = v37;
        }

        NK_Get_Smooth_Excl_Weight(v36, 0.0, 1.0);
        *(v43 + 9528) = v44 / v45;
        *(v10 + v32 + 10552) = 1;
      }

      else
      {
        if ((*(v10 + 312 + v32) & 1) == 0)
        {
          gn_report_assertion_failure("NK_Meas_Outlier_Check:  Exclusion index fail");
        }

        *(v10 + 312 + v32) = 0;
        *(v10 + 4 * v32 + 568) = 21;
        --*(v10 + 3);
        ++*(v10 + 4);
      }

      v6 = v41;
      v7 = v40;
      v29 = v39;
      v9 = v38;
    }

    goto LABEL_66;
  }
}

BOOL NK_Reject_DO_For_Rejected_PR(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = 0;
  v27[13] = *MEMORY[0x29EDCA608];
  v7 = a4 + 7336;
  v23 = a4 + 17320;
  v24 = 0.0;
  v8 = a4 + 36888;
  v19 = a4 + 36576;
  v22 = a4 + 21984;
  v18 = a4 + 21672;
  v9 = (a4 + 22240);
  v17 = a4 + 16296;
  v10 = 9528;
  do
  {
    v11 = *(v7 + 4 * v6);
    if (v11 != 12 && ((v11 - 1) < 0x1E || *(v23 + v6) == 1))
    {
      if (*(v8 + v6) == 1 && (v9[3726] - 1) > 0x1D)
      {
        v13 = 3;
        v12 = 1;
        v14 = v19;
      }

      else
      {
        if (*(v22 + v6) != 1 || (*v9 - 1) < 0x1E)
        {
          goto LABEL_16;
        }

        v12 = 0;
        v13 = 2;
        v14 = v18;
      }

      NK_Obs_Equ_SV(v13, *(v14 + v6 + 440), *(a2 + 4 * v6), v5, v27, *(a4 + 1552));
      v27[12] = *(v14 + 8 * v6 + 5304);
      v15 = *(v14 + v10 + 1152);
      v16 = *(v14 + v10);
      result = umeas(a3 + 976, 0xCu, -(v15 * v16), v27, v26, v25, &v24, 1.0e20);
      if ((*(v7 + 4 * v6) - 1) >= 0x1E && *(v23 + v6) == 1)
      {
        if ((v12 & 1) == 0)
        {
          result = umeas(a3 + 976, 0xCu, v15 * v16 * *(v17 + 8 * v6), v27, v26, v25, &v24, 1.0e20);
          *(v14 + v6 + 10552) = 1;
        }
      }

      else
      {
        *(v14 + v6 + 312) = 0;
        *(v14 + 4 * v6 + 568) = 26;
        --*(v14 + 3);
        ++*(v14 + 4);
      }
    }

LABEL_16:
    ++v6;
    v10 += 8;
    v5 += 7;
    ++v9;
  }

  while (v6 != 128);
  return result;
}

void GPS_State_Update_Init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v7 = a7;
  v40 = *MEMORY[0x29EDCA608];
  *(a1 + 402) = 0;
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
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  v11 = xmmword_299050360;
  v12 = xmmword_299050240;
  v13 = 180;
  v14 = vdupq_n_s64(4uLL);
  v15 = a7;
  v16 = vdupq_n_s64(0xB3uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v12)), *v11.i8).u8[0])
    {
      v15[44] = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xB3uLL), *&v12)), *&v11).i8[2])
    {
      v15[92] = 0;
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xB3uLL), *&v11))).i32[1])
    {
      v15[140] = 0;
      v15[188] = 0;
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
      if (*(a4 + v17 + 62171) == 1)
      {
        v38 = 0u;
        memset(v39, 0, 31);
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        ST_Update_Table(v17, v19, v18, &v29, a2, a1, a5, a4, a6);
        v20 = *(a2 + 12);
        if ((v20 - 1) <= 1)
        {
          *(a1 + 402) = 1;
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

    while (v17 != 197);
    if (*(a1 + 402))
    {
      *(a1 + 4) = *(a2 + 8);
      *a1 = *(a2 + 4);
    }
  }
}

uint64_t ST_Get_Time(uint64_t a1, __int16 *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  v4 = *a1;
  *a2 = *(a1 + 32);
  *a3 = *(a1 + 40);
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
    v8 = *(a1 + 24);
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
  v215[4] = *MEMORY[0x29EDCA608];
  if (a1 >= 0xC5)
  {
    gn_report_assertion_failure("ST_Update_Table : sv < NUM_POS");
  }

  Constell_Pos = Get_Constell_Pos(a1);
  if (!Constell_Pos)
  {
    return;
  }

  v17 = Constell_Pos;
  if (Constell_Pos == 7)
  {
    return;
  }

  v198 = 0u;
  v199 = 0u;
  memset(v197, 0, sizeof(v197));
  v189 = Constell_Pos - 1;
  v190 = Num_Pos[Constell_Pos - 1];
  v192 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
  *(a4 + 176) = 0;
  v18 = a6 + 6;
  *(v18 + 2 * a1) = 0;
  if (a1 >= 0xC5)
  {
    gn_report_assertion_failure("ST_Get_GPS_Orbit : sv < NUM_POS");
  }

  v200 = Get_Constell_Pos(a1);
  v19 = Num_Pos_Idx_To_Num_Prn_Idx(a1);
  v20 = v19;
  v193 = LongPrnIdx_To_ShortPrnIdx(v19, &v200);
  v21 = Num_Pos_Idx_To_GNSS_Id(a1);
  v22 = v21;
  *(a5 + 12) = 0;
  v23 = v200;
  if (v200 == 6)
  {
    v188 = v18;
    v24 = v20;
LABEL_15:
    if (*(a8 + v24 + 50834) != 1 || (*(a7 + v24 + 544) & 1) != 0)
    {
      return;
    }

    v24 = v20;
    goto LABEL_22;
  }

  if (!v200)
  {
    return;
  }

  v188 = v18;
  v24 = v20;
  if (*(a8 + v20 + 50616) != 1 || *(a7 + v20 + 265) == 1)
  {
    if (v200 < 6 || v200 == 7)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v200 == 2)
  {
    v25 = a8 + v20;
    if (v25[59990] != 1)
    {
      return;
    }

    v26 = v25 + 59772;
    if (v25[59772])
    {
      *(a5 + 12) = 1;
      goto LABEL_59;
    }

    goto LABEL_25;
  }

LABEL_22:
  v26 = a8 + v24 + 59772;
  if (*v26)
  {
    goto LABEL_26;
  }

  if ((*(a8 + v24 + 59990) & 1) == 0 && *(a8 + v24 + 60208) != 1)
  {
    return;
  }

LABEL_25:
  if (*(a8 + v24 + 59990) != 1)
  {
    goto LABEL_174;
  }

LABEL_26:
  v185 = v26;
  v27 = a8 + 60426;
  *(a8 + v24 + 60426) = 0;
  *(a8 + v24 + 60644) = 0;
  *(a5 + 12) = 1;
  if (v23 > 3)
  {
    if (v23 != 4)
    {
      if (v23 != 5)
      {
        if (v23 != 6)
        {
          goto LABEL_169;
        }

        v36 = *(a8[5955] + v193);
        v37 = *(a8[5956] + v193);
        v38 = v193;
        *&v201[16] = 0;
        *&v201[20] = 0;
        *v201 = 0;
        *&v201[7] = 0;
        memset(&v201[32], 0, 152);
        if (v36 == 1 && v37)
        {
          v181 = v21;
          memset(v213, 0, 36);
          memset(&v213[40], 0, 160);
          v214 = 0uLL;
          memset(v215, 0, 24);
          v202 = 0uLL;
          memset(v203, 0, 20);
          memset(&v203[24], 0, 64);
          v204 = 0uLL;
          v205 = 0uLL;
          v206 = 0uLL;
          v207 = 0uLL;
          v208 = 0uLL;
          v209 = 0uLL;
          v210 = 0uLL;
          v211 = 0uLL;
          v212 = 0;
          NVIC_EphInt2Real(a8 + 76 * v193 + 48760, v201);
          NVIC_EphReal2Kep(v201, &v202);
          v39 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v202);
          v170 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v39, &v202);
          if (!v170)
          {
            *(a8[5956] + v193) = 0;
          }

          NVIC_EphInt2Real(a8 + 76 * v193 + 47696, v201);
          NVIC_EphReal2Kep(v201, v213);
          v40 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), !v170, v213);
          if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v40, v213))
          {
            if (!v170 || ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v213, &v202, 1) || *&v213[4] == 5)
            {
              v171 = 0;
              v166 = 0;
              v162 = 1;
              v42 = 5962;
            }

            else
            {
              *v185 = 0;
              *(a8 + v24 + 60862) = 1;
              v41 = *(a8 + 19 * v193 + 11925);
              if ((v41 == 5 || v41 == 3) && (v181 - 15) >= 0xF2u)
              {
                *(p_NA + v181 - 1 + 348) = 0;
                EvLog_d("Core_Set_NVIC_Eph_Invalid:  Deleted SV", v181);
              }

              v162 = 0;
              v171 = 1;
              v42 = 6095;
              v166 = 1;
            }

            v38 = v193;
LABEL_194:
            NVIC_EphInt2Real(a8 + 76 * v38 + 8 * v42, v201);
            *(a8[5959] + v38) = v171;
            NVIC_EphReal2Kep(v201, v197);
            v96 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 1, v197);
            if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(NVC)", v96, v197))
            {
              v27 = a8 + 60426;
              if (v162)
              {
                *(a8[5955] + v38) = 0;
                v97 = *(a8 + 19 * v38 + 11925);
                if ((v97 == 5 || v97 == 3) && (v181 - 15) >= 0xF2u)
                {
                  *(p_NA + v181 - 1 + 348) = 0;
                  EvLog_d("Core_Set_NVIC_Eph_Invalid:  Deleted SV", v181);
                  v27 = a8 + 60426;
                }
              }

              if (v166)
              {
                *(a8[5956] + v38) = 0;
              }

              goto LABEL_169;
            }

            goto LABEL_209;
          }

          v38 = v193;
          *(a8[5955] + v193) = 0;
          v83 = *(a8 + 19 * v193 + 11925);
          if ((v83 == 5 || v83 == 3) && (v181 - 15) >= 0xF2u)
          {
            *(p_NA + v181 - 1 + 348) = 0;
            EvLog_d("Core_Set_NVIC_Eph_Invalid:  Deleted SV", v181);
          }

          v27 = a8 + 60426;
          if (!v170)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (v36)
          {
            v166 = v37;
            v181 = v21;
            v171 = 0;
            v162 = 1;
            v42 = 5962;
            goto LABEL_194;
          }

          if (!v37)
          {
            goto LABEL_169;
          }

          v181 = v21;
        }

        v162 = 0;
        v171 = 1;
        v42 = 6095;
        v166 = 1;
        goto LABEL_194;
      }

      v178 = a8 + 60426;
      v69 = 0;
      memset(v213, 0, 36);
      memset(&v213[40], 0, 160);
      v214 = 0u;
      memset(v215, 0, 24);
      v202 = 0u;
      memset(v203, 0, 20);
      memset(&v203[24], 0, 64);
      v204 = 0u;
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0;
      v213[19] = 99;
      v203[3] = 99;
      v53 = v193;
      v184 = v21;
      if (*(a8[1138] + v193) == 1)
      {
        Get_GPS_Kep_Ephemeris(5, v21, a8 + 116 * v193 + 10312, &v202);
        v70 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v202);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v70, &v202))
        {
          v69 = 1;
        }

        else
        {
          v69 = 0;
          *(a8[1138] + v193) = 0;
        }

        v22 = v184;
      }

      if (*(a8[1137] + v193) == 1)
      {
        v75 = v69;
        Get_GPS_Kep_Ephemeris(v200, v22, a8 + 116 * v193 + 9152, v213);
        v76 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), v75 ^ 1u, v213);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v76, v213))
        {
          if (v75)
          {
            v77 = v213;
            v78 = ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v213, &v202, 1);
            v60 = 0;
            if (!v78)
            {
              v53 = v193;
              if (*&v213[4] == 5)
              {
LABEL_207:
                v106 = v77[13];
                v197[12] = v77[12];
                v198 = v106;
                v199 = v77[14];
                v107 = v77[9];
                v197[8] = v77[8];
                v197[9] = v107;
                v108 = v77[11];
                v197[10] = v77[10];
                v197[11] = v108;
                v109 = v77[5];
                v197[4] = v77[4];
                v197[5] = v109;
                v110 = v77[7];
                v197[6] = v77[6];
                v197[7] = v110;
                v111 = v77[1];
                v197[0] = *v77;
                v197[1] = v111;
                v112 = v77[3];
                v197[2] = v77[2];
                v197[3] = v112;
                v105 = a8[1141];
                goto LABEL_208;
              }

              *(a8[1137] + v193) = 0;
              v60 = 1;
              *(a8[1135] + v193) = 1;
              v79 = *(a8 + 29 * v193 + 2289);
              if (v79 != 5 && v79 != 3)
              {
LABEL_137:
                v77 = &v202;
                goto LABEL_207;
              }

              if ((v184 + 53) >= 0xF6u)
              {
                *(p_NA + v184 - 193 + 76) = 0;
                EvLog_d("Core_Set_QZSS_Eph_Invalid:  Deleted SV", v184);
              }

LABEL_136:
              v60 = 1;
              goto LABEL_137;
            }
          }

          else
          {
            v60 = 0;
            v77 = v213;
          }

          v53 = v193;
          goto LABEL_207;
        }

        *(a8[1137] + v193) = 0;
        v80 = *(a8 + 29 * v193 + 2289);
        v69 = v75;
        v53 = v193;
        if ((v80 == 5 || v80 == 3) && (v184 + 53) >= 0xF6u)
        {
          *(p_NA + v184 - 193 + 76) = 0;
          v81 = v69;
          EvLog_d("Core_Set_QZSS_Eph_Invalid:  Deleted SV", v184);
          v69 = v81;
          v53 = v193;
        }
      }

      if (!v69)
      {
        goto LABEL_168;
      }

      goto LABEL_136;
    }

    v62 = *(a8[3182] + v193);
    v63 = *(a8[3183] + v193);
    v64 = v193;
    memset(v213, 0, 18);
    memset(&v213[20], 0, 178);
    v214 = 0u;
    memset(v215, 0, 23);
    if (v62 == 1 && v63)
    {
      v183 = v21;
      v202 = 0uLL;
      memset(v203, 0, 20);
      memset(&v203[24], 0, 64);
      v204 = 0uLL;
      v205 = 0uLL;
      v206 = 0uLL;
      v207 = 0uLL;
      v208 = 0uLL;
      v209 = 0uLL;
      v210 = 0uLL;
      v211 = 0uLL;
      v212 = 0;
      memset(v201, 0, 36);
      memset(&v201[40], 0, 200);
      BDS_EphInt2Real(&a8[19 * v193 + 4386], v213);
      BDS_EphReal2Kep(v213, v201);
      v65 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, v201);
      v172 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v65, v201);
      if (!v172)
      {
        *(a8[3183] + v193) = 0;
      }

      BDS_EphInt2Real(&a8[19 * v193 + 3189], v213);
      BDS_EphReal2Kep(v213, &v202);
      v66 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), !v172, &v202);
      if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v66, &v202))
      {
        if (!v172 || ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), &v202, v201, 1) || DWORD1(v202) == 5)
        {
          v173 = 0;
          v167 = 0;
          v163 = 1;
          v68 = 3189;
        }

        else
        {
          *v185 = 0;
          *(a8 + v24 + 60862) = 1;
          v67 = HIDWORD(a8[19 * v193 + 3189]);
          if ((v67 == 5 || v67 == 3) && (v183 - 64) >= 0xC1u)
          {
            *(p_NA + v183 - 1 + 221) = 0;
            EvLog_d("Core_Set_BDS_Eph_Invalid:  Deleted SV", v183);
          }

          v163 = 0;
          v173 = 1;
          v68 = 4386;
          v167 = 1;
        }

        v64 = v193;
LABEL_152:
        BDS_EphInt2Real(&a8[19 * v64 + v68], v213);
        *(a8[3186] + v64) = v173;
        BDS_EphReal2Kep(v213, v197);
        v84 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 1, v197);
        if (!ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(BDS)", v84, v197))
        {
          v85 = v193;
          v27 = a8 + 60426;
          if (v163)
          {
            *(a8[3182] + v193) = 0;
            v86 = HIDWORD(a8[19 * v193 + 3189]);
            if ((v86 == 5 || v86 == 3) && (v183 - 64) >= 0xC1u)
            {
              *(p_NA + v183 - 1 + 221) = 0;
              EvLog_d("Core_Set_BDS_Eph_Invalid:  Deleted SV", v183);
              v85 = v193;
              v27 = a8 + 60426;
            }
          }

          if (v167)
          {
            *(a8[3183] + v85) = 0;
          }

          goto LABEL_169;
        }

LABEL_209:
        v89 = 1;
LABEL_210:
        v71 = *(a5 + 12);
        if (v71 == 2)
        {
          goto LABEL_214;
        }

        if (v71)
        {
          goto LABEL_238;
        }

LABEL_212:
        v113 = a8 + v24;
        if (*(a8 + v24 + 60208) != 1)
        {
          return;
        }

        v113[60644] = 0;
        v113[61516] = 0;
        *(a5 + 12) = 2;
LABEL_214:
        *v203 = 0;
        *&v202 = 0;
        *(&v202 + 7) = 0;
        memset(&v203[4], 0, 76);
        if (v200 > 3)
        {
          if (v200 <= 5)
          {
            if (v200 == 4)
            {
              memset(v213, 0, 88);
              BDS_AlmInt2Real(a8 + 44 * v193 + 44664, v213);
              *&v202 = *v213;
              *&v203[56] = *&v213[16];
              *&v203[72] = *&v213[32];
              v114 = 0.942477796;
              if (v213[11] - 59 < 0xFFFFFFCB)
              {
                v114 = 0.0;
              }

              *&v203[24] = *&v213[24];
              *&v203[32] = *&v213[64] + v114;
              *&v203[48] = *&v213[40];
              *&v203[40] = *&v213[56];
              *&v203[8] = *&v213[72];
              *&v203[4] = *&v213[12] + 14;
              *v203 = *&v213[8] + 1356;
              if (*&v213[12] + 14 > 604799)
              {
                *&v203[4] = *&v213[12] - 604786;
                *v203 = *&v213[8] + 1357;
              }

              *&v203[64] = *&v213[48] + 0.0010208961;
              DWORD2(v202) = 4;
              BYTE12(v202) = v213[11];
              BYTE13(v202) = v213[10] ^ 1;
            }

            else
            {
              Get_QZSS_Kep_Almanac(a8 + 44 * v193 + 11472, &v202);
            }

            goto LABEL_234;
          }

          if (v200 == 6)
          {
            *&v213[12] = 0;
            *&v213[16] = 0;
            *v213 = 0;
            *&v213[7] = 0;
            memset(&v213[24], 0, 80);
            NVIC_AlmInt2Real(a8 + 52 * v193 + 49824, v213);
            *&v202 = *v213;
            *&v203[8] = *&v213[80];
            *&v203[24] = *&v213[24];
            *&v203[40] = *&v213[40];
            *&v203[48] = *&v213[72];
            *&v203[56] = *&v213[48];
            DWORD2(v202) = 6;
            WORD6(v202) = *&v213[8];
            BYTE14(v202) = (0x101010102 * (*&v213[16] / 0x15180u - *&v213[12] + 8 * *&v213[12])) >> 32;
            *v203 = *&v213[12] + 1024;
            *&v203[4] = *&v213[16];
            *&v203[72] = *&v213[64];
            goto LABEL_234;
          }

          if (v200 == 7)
          {
            goto LABEL_236;
          }
        }

        else
        {
          if (v200 > 1)
          {
            if (v200 == 2)
            {
              goto LABEL_236;
            }

            memset(v213, 0, 91);
            GAL_AlmInt2Real(a8 + 36 * v193 + 24044, v213);
            *&v203[8] = *&v213[72];
            *&v203[24] = *&v213[24];
            *&v203[32] = *&v213[32] + 0.977384381;
            *&v203[40] = *&v213[48];
            *&v203[48] = *&v213[64];
            *(&v202 + 4) = *&v213[4] | 0x300000000;
            BYTE12(v202) = v213[8];
            BYTE13(v202) = v213[90] | (8 * v213[89]);
            BYTE14(v202) = v213[9];
            *v203 = *&v213[10] + 1024;
            *&v203[4] = *&v213[12];
            *&v203[56] = *&v213[16] + 5440.5882;
            *&v203[64] = *&v213[40];
            *&v203[72] = *&v213[56];
            goto LABEL_234;
          }

          if (!v200)
          {
            goto LABEL_236;
          }

          if (v200 == 1)
          {
            Get_GPS_Kep_Almanac(a8 + 44 * v193 + 7544, &v202);
            goto LABEL_234;
          }
        }

        if (!v89)
        {
LABEL_236:
          gn_report_assertion_failure("ST_Get_GPS_Orbit : status == TRUE");
          v71 = 0;
          *(a5 + 12) = 0;
          v116 = a8 + v24;
          if (!*(a8 + v24 + 60644))
          {
            v71 = 0;
            v116[60208] = 0;
            v116[61080] = 1;
          }

          goto LABEL_238;
        }

LABEL_234:
        v115 = Kep_Check_Almanac(*(a5 + 8), &v202);
        if (ST_Check_Alm_Kep_Err("ST_Get_GPS_Orbit", v115, &v202))
        {
          *(&v197[11] + 8) = 0u;
          memset(&v197[3] + 8, 0, 120);
          *(&v197[1] + 8) = 0u;
          *(v197 + 8) = 0u;
          *&v197[0] = v202;
          v197[11] = *&v203[48];
          *(&v197[12] + 1) = *&v203[64];
          *&v198 = *&v203[32];
          *(&v198 + 1) = *&v203[72];
          *&v199 = *&v203[24];
          *(&v199 + 1) = *&v203[40];
          *(&v197[2] + 8) = *&v203[8];
          DWORD2(v197[1]) = *&v203[4];
          HIDWORD(v197[1]) = *&v203[4];
          LODWORD(v197[2]) = *&v203[4];
          WORD3(v197[1]) = *v203;
          DWORD2(v197[0]) = DWORD2(v202);
          BYTE14(v197[0]) = BYTE13(v202);
          BYTE12(v197[0]) = BYTE12(v202);
          v71 = *(a5 + 12);
          goto LABEL_238;
        }

        goto LABEL_236;
      }

      v64 = v193;
      *(a8[3182] + v193) = 0;
      v74 = HIDWORD(a8[19 * v193 + 3189]);
      if ((v74 == 5 || v74 == 3) && (v183 - 64) >= 0xC1u)
      {
        *(p_NA + v183 - 1 + 221) = 0;
        EvLog_d("Core_Set_BDS_Eph_Invalid:  Deleted SV", v183);
        v64 = v193;
      }

      v27 = a8 + 60426;
      if (!v172)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v62)
      {
        v167 = v63;
        v183 = v21;
        v173 = 0;
        v163 = 1;
        v68 = 3189;
        goto LABEL_152;
      }

      if (!v63)
      {
        goto LABEL_169;
      }

      v183 = v21;
    }

    v163 = 0;
    v173 = 1;
    v68 = 4386;
    v167 = 1;
    goto LABEL_152;
  }

  if (v23 == 1)
  {
    v178 = a8 + 60426;
    v52 = 0;
    memset(v213, 0, 36);
    memset(&v213[40], 0, 160);
    v214 = 0u;
    memset(v215, 0, 24);
    v202 = 0u;
    memset(v203, 0, 20);
    memset(&v203[24], 0, 64);
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0;
    v213[19] = 99;
    v203[3] = 99;
    v53 = v193;
    v182 = v21;
    if (*(a8[9] + v193) == 1)
    {
      Get_GPS_Kep_Ephemeris(1, v21, a8 + 116 * v193 + 3832, &v202);
      v54 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v202);
      v55 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v54, &v202);
      v52 = 1;
      v22 = v182;
      if (!v55)
      {
        v52 = 0;
        *(a8[9] + v193) = 0;
      }
    }

    if (*(a8[8] + v193) == 1)
    {
      v56 = v52;
      Get_GPS_Kep_Ephemeris(v200, v22, a8 + 116 * v193 + 120, v213);
      v57 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), v56 ^ 1u, v213);
      if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v57, v213))
      {
        if (v56)
        {
          v58 = v213;
          v59 = ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v213, &v202, 1);
          v60 = 0;
          if (!v59)
          {
            v53 = v193;
            if (*&v213[4] == 5)
            {
LABEL_204:
              v98 = v58[13];
              v197[12] = v58[12];
              v198 = v98;
              v199 = v58[14];
              v99 = v58[9];
              v197[8] = v58[8];
              v197[9] = v99;
              v100 = v58[11];
              v197[10] = v58[10];
              v197[11] = v100;
              v101 = v58[5];
              v197[4] = v58[4];
              v197[5] = v101;
              v102 = v58[7];
              v197[6] = v58[6];
              v197[7] = v102;
              v103 = v58[1];
              v197[0] = *v58;
              v197[1] = v103;
              v104 = v58[3];
              v197[2] = v58[2];
              v197[3] = v104;
              v105 = a8[12];
LABEL_208:
              *(v105 + v53) = v60;
              goto LABEL_209;
            }

            *(a8[8] + v193) = 0;
            v60 = 1;
            *(a8[6] + v193) = 1;
            v61 = *(a8 + 29 * v193 + 31);
            if (v61 != 5 && v61 != 3)
            {
LABEL_109:
              v58 = &v202;
              goto LABEL_204;
            }

            if ((v182 - 33) >= 0xE0u)
            {
              *(p_NA + v182 - 1 + 12) = 0;
              EvLog_d("Core_Set_GPS_Eph_Invalid:  Deleted SV", v182);
            }

LABEL_108:
            v60 = 1;
            goto LABEL_109;
          }
        }

        else
        {
          v60 = 0;
          v58 = v213;
        }

        v53 = v193;
        goto LABEL_204;
      }

      *(a8[8] + v193) = 0;
      v72 = *(a8 + 29 * v193 + 31);
      LOBYTE(v52) = v56;
      v53 = v193;
      if ((v72 == 5 || v72 == 3) && (v182 - 33) >= 0xE0u)
      {
        *(p_NA + v182 - 1 + 12) = 0;
        v73 = v52;
        EvLog_d("Core_Set_GPS_Eph_Invalid:  Deleted SV", v182);
        LOBYTE(v52) = v73;
        v53 = v193;
      }
    }

    if (v52)
    {
      goto LABEL_108;
    }

LABEL_168:
    v27 = v178;
    goto LABEL_169;
  }

  if (v23 != 2)
  {
    if (v23 == 3)
    {
      v28 = *(a8[2202] + v193);
      v29 = *(a8[2203] + v193);
      v30 = v193;
      memset(v201, 0, 20);
      memset(&v201[24], 0, 124);
      memset(&v201[152], 0, 41);
      *&v201[194] = 0;
      v201[202] = 0;
      if (v28 == 1 && v29)
      {
        v178 = a8 + 60426;
        v180 = v21;
        memset(v213, 0, 36);
        memset(&v213[40], 0, 160);
        v214 = 0uLL;
        memset(v215, 0, 24);
        v202 = 0uLL;
        memset(v203, 0, 20);
        memset(&v203[24], 0, 64);
        v204 = 0uLL;
        v205 = 0uLL;
        v206 = 0uLL;
        v207 = 0uLL;
        v208 = 0uLL;
        v209 = 0uLL;
        v210 = 0uLL;
        v211 = 0uLL;
        v212 = 0;
        GAL_EphInt2Real(&a8[11 * v193 + 2609] + 4, v201);
        GAL_EphReal2Kep(v201, &v202);
        v31 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, &v202);
        v169 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v31, &v202);
        if (!v169)
        {
          *(a8[2203] + v193) = 0;
        }

        GAL_EphInt2Real(&a8[11 * v193 + 2213] + 4, v201);
        GAL_EphReal2Kep(v201, v213);
        v32 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), !v169, v213);
        if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(Eph)", v32, v213))
        {
          if (!v169 || ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v213, &v202, 1) || *&v213[4] == 5)
          {
            v34 = 0;
            v160 = 0;
            v161 = 1;
            v35 = 17708;
          }

          else
          {
            *v185 = 0;
            *(a8 + v24 + 60862) = 1;
            v33 = a8[11 * v193 + 2214];
            if ((v33 == 5 || v33 == 3) && (v180 - 37) >= 0xDCu)
            {
              *(p_NA + v180 - 1 + 147) = 0;
              EvLog_d("Core_Set_GAL_Eph_Invalid:  Deleted SV", v180);
            }

            v34 = 1;
            v35 = 20876;
            v160 = 1;
            v161 = 0;
          }

          v30 = v193;
          goto LABEL_162;
        }

        v30 = v193;
        *(a8[2202] + v193) = 0;
        v82 = a8[11 * v193 + 2214];
        if ((v82 == 5 || v82 == 3) && (v180 - 37) >= 0xDCu)
        {
          *(p_NA + v180 - 1 + 147) = 0;
          EvLog_d("Core_Set_GAL_Eph_Invalid:  Deleted SV", v180);
          v30 = v193;
        }

        v27 = a8 + 60426;
        if (v169)
        {
          goto LABEL_143;
        }
      }

      else
      {
        if (v28)
        {
          v178 = a8 + 60426;
          v180 = v21;
          v34 = 0;
          v160 = v29;
          v161 = 1;
          v35 = 17708;
          goto LABEL_162;
        }

        if (v29)
        {
          v178 = a8 + 60426;
          v180 = v21;
LABEL_143:
          v34 = 1;
          v35 = 20876;
          v160 = 1;
          v161 = 0;
LABEL_162:
          GAL_EphInt2Real(&a8[11 * v30] + v35, v201);
          *(a8[2206] + v193) = v34;
          if (v201[201] != 2 && v201[198] != 1 && v201[15] != 255)
          {
            v174 = 0;
            v164 = 0;
            *(a8 + v201[14] + 17671) = 0;
LABEL_180:
            GAL_EphReal2Kep(v201, v197);
            v93 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 1, v197);
            if (ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(GAL)", v93, v197))
            {
              if (v174)
              {
                BYTE3(v197[1]) = v164;
              }

              goto LABEL_209;
            }

            v94 = v193;
            if (v161)
            {
              *(a8[2202] + v193) = 0;
              v95 = a8[11 * v193 + 2214];
              if ((v95 == 5 || v95 == 3) && (v180 - 37) >= 0xDCu)
              {
                *(p_NA + v180 - 1 + 147) = 0;
                EvLog_d("Core_Set_GAL_Eph_Invalid:  Deleted SV", v180);
                v94 = v193;
              }
            }

            if (v160)
            {
              *(a8[2203] + v94) = 0;
            }

            v27 = v178;
            if (v174)
            {
              BYTE3(v197[1]) = v164;
            }

            goto LABEL_169;
          }

          v165 = v201[15];
          v168 = v201[201];
          v175 = v201[198];
          *v213 = 0x4050000000000000;
          v87 = v201[14];
          *(a8 + v201[14] + 17671) = 1;
          *&v202 = 0;
          if (!R8_EQ(v213, &v202))
          {
            v91 = v165 == 255;
            v92 = 70;
            if (v165 == 255)
            {
              v92 = 64;
            }

            v164 = 8;
            EvLog_v("ST_Get_GPS_Orbit: USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d FOM %d Sigma %d", *(a5 + 4), v87, v168, v175, v91, 8, v92);
            v174 = 1;
            goto LABEL_180;
          }

          EvLog_v("ST_Get_GPS_Orbit: DO NOT USE GAL SV with Marginal Health t %d SV %d HS %d DVS %d NAPA %d Sigma %d", *(a5 + 4), v87, v168, v175, v165 == 255, 64);
          goto LABEL_168;
        }
      }
    }

LABEL_169:
    if (BYTE2(v197[1]) == 255 && ((v200 - 3) < 4 || v200 == 1))
    {
      v88 = v27;
      EvLog_v("ST_Get_GPS_Orbit:  %c %d  Alm looking Eph timed-out", byte_2990525F0[v200], v193);
      v27 = v88;
    }

    *(a5 + 12) = 0;
    if ((v27[v24] & 1) == 0)
    {
      if (Get_Constell_Prn(v20) == 2)
      {
        __assert_rtn("ST_Get_GPS_Orbit", "GPS_State_Update.cpp", 2195, "Get_Constell_Prn( (U1)i) != GLON_CONSTELL");
      }

      v89 = 0;
      *v185 = 0;
      v90 = a8 + v24;
      v90[61516] = 0;
      v90[60862] = 1;
      goto LABEL_210;
    }

LABEL_174:
    v89 = 0;
    goto LABEL_212;
  }

LABEL_59:
  if (*(a8[2147] + v193) == 1)
  {
    v43 = v21;
    Get_GPS_Kep_Ephemeris(2, v21, a8 + 116 * v193 + 13464, v197);
    v44 = Kep_Check_Ephemeris(*(a5 + 8), *(a5 + 4), 0, v197);
    v45 = ST_Check_Eph_Kep_Err("ST_Get_GPS_Orbit(EE)", v44, v197);
    v46 = a8[2147];
    if (v45)
    {
      if (*(v46 + v193))
      {
        v47 = a8[2146];
        if (*(v47 + v193) == 1)
        {
          v48 = v43;
          v49 = &a8[8 * v193];
          v50 = *(v49 + 2995);
          if ((~v50 & 0xF00) != 0)
          {
            v51 = ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::glonURE_table[(v50 >> 8) & 0xF];
          }

          else
          {
            v51 = 0xFFFF;
          }

          v133 = a8 + 2154;
          v134 = *(a8 + v193 + 4308);
          if (v134 >= 0)
          {
            v135 = *(a8 + v193 + 4308);
          }

          else
          {
            v135 = -v134;
          }

          v136 = v51;
          if (v135 >= 0x385)
          {
            v137 = v135 * 0.000277777778 * (v135 * 0.000277777778 * (v135 * 0.000277777778)) * 73.3333333 + v135 * 0.000277777778 * (v135 * 0.000277777778) * -20.0;
            v136 = fmin(sqrt((v51 * v51) + v137 * v137), 65535.0);
          }

          if ((SBYTE3(v197[1]) & 0x8000000000000000) != 0)
          {
            v138 = 1;
          }

          else if (SBYTE3(v197[1]) > 0xB)
          {
            v138 = 0xFFFF;
          }

          else
          {
            v138 = ST_Get_GPS_Orbit(unsigned char,s_SV_State_Update_WD *,s_DB_Sys_Status *,s_DB_SV_Nav_Mess *,s_Eph_Kep *)::gpsURE_table[SBYTE3(v197[1])];
          }

          if (v138 <= v136)
          {
            v158 = v49 + 1491;
            v159 = *(v49 + 2983);
            if ((v159 == 5 || v159 == 3) && (v48 - 25) >= 0xE8u)
            {
              *(p_NA + (v48 - 1) + 96) = 0;
              v187 = v135;
              v177 = v138;
              v179 = v136;
              EvLog_d("Core_Set_GLON_Eph_Invalid:  Deleted SV", v48);
              v138 = v177;
              v136 = v179;
              v133 = a8 + 2154;
              v135 = v187;
              v47 = a8[2146];
            }

            *(v47 + v193) = 0;
            *(a8[2152] + v193) = 0;
            *(v158 + 46) = 0u;
            v158[1] = 0u;
            v158[2] = 0u;
            *v158 = 0u;
            *(v133 + v193) = 0;
            *(a8[2145] + v193) = 1;
            *(a8[2153] + v193) = 0;
            EvLog_v("ST_Get_GPS_Orbit:  Delete glonEph in favour of glonExtEph:  %d  Age %d  URE %d %d  EE URE %d  [0.1m]", v193 + 1, v135, v51, v136, v138);
          }

          else
          {
            *(a5 + 12) = 0;
          }
        }
      }
    }

    else
    {
      *(a5 + 12) = 0;
      *(v46 + v193) = 0;
    }
  }

  v71 = *(a5 + 12);
  *(a8[2151] + v193) = v71 == 1;
LABEL_238:
  if (!v71)
  {
    return;
  }

  if (v71 != 1 || (DWORD1(v197[0]) - 5) < 2 || (*(a8 + v192 + 61734) & 1) != 0)
  {
    goto LABEL_242;
  }

  v123 = a1 - v190;
  v124 = v192;
  if (*(a8 + v192 + 60208) != 1)
  {
    goto LABEL_291;
  }

  if (v17 != 6)
  {
    if (*(a8 + v192 + 50616) == 1 && *(a7 + v192 + 265) != 1)
    {
      goto LABEL_268;
    }

    if (v189 < 7 && ((0x5Fu >> v189) & 1) != 0)
    {
      goto LABEL_291;
    }
  }

  if (*(a8 + v192 + 50834) != 1 || (*(a7 + v192 + 544) & 1) != 0)
  {
    goto LABEL_291;
  }

LABEL_268:
  if (v17 <= 3)
  {
    if (v17 == 1)
    {
      v130 = *(a8 + 22 * v123 + 3777);
      goto LABEL_292;
    }

    if (v17 != 2)
    {
      v131 = a8 + 36 * v123;
      v132 = 24054;
LABEL_289:
      v130 = *&v131[v132] + 1024;
      goto LABEL_292;
    }

    goto LABEL_290;
  }

  if (v17 > 5)
  {
    if (v17 == 6)
    {
      v131 = a8 + 52 * v123;
      v132 = 49836;
      goto LABEL_289;
    }

LABEL_290:
    EvCrt_Illegal_switch_case("ST_Update_Table", 921);
    v123 = a1 - v190;
    v124 = v192;
LABEL_291:
    v130 = 0x7FFF;
    goto LABEL_292;
  }

  v125 = a8 + 44 * v123;
  if (v17 == 4)
  {
    v126 = v125 + 44664;
    v127 = v126[11];
    v128 = *(v126 + 4);
    if (v127 <= 0x93)
    {
      v129 = 1356;
    }

    else
    {
      v129 = 1357;
    }

    v130 = v129 + v128;
  }

  else
  {
    v130 = *(v125 + 5741);
  }

LABEL_292:
  v139 = *(a5 + 8);
  v140 = v139 - v130;
  if (v140 < 0)
  {
    v140 = -v140;
  }

  if (v140 > 2)
  {
    if (v17 <= 3)
    {
      if (v17 == 1)
      {
        v191 = 0;
        v186 = 0;
        v176 = 0;
        v141 = a8 + 116 * v123 + 120;
        goto LABEL_327;
      }

      if (v17 != 2)
      {
        v141 = 0;
        v186 = 0;
        v176 = 0;
        v191 = &a8[11 * v123 + 2213] + 4;
LABEL_327:
        v145 = 0;
        v195 = a8 + 59772;
        v146 = 1;
        while (1)
        {
          v147 = Get_Constell_Pos(v145);
          if (v147)
          {
            if (v145 == a1)
            {
              goto LABEL_354;
            }

            v148 = v145 - Num_Pos[v147 - 1];
            v149 = Num_Prn[v147 - 1];
          }

          else
          {
            if (v145 == a1)
            {
              goto LABEL_354;
            }

            v149 = 0;
            v148 = v145;
          }

          if (v195[v149 + v148] != 1)
          {
            goto LABEL_354;
          }

          if ((v17 & 3) == 1)
          {
            if (v147 == 5)
            {
              v150 = a8 + 1144;
            }

            else
            {
              if (v147 != 1)
              {
                goto LABEL_343;
              }

              v150 = a8 + 15;
            }

            v151 = v150 + 116 * v148;
            v152 = 8;
            while (*&v141[v152] == *&v151[v152])
            {
              v152 += 4;
              if (v152 == 104)
              {
                goto LABEL_356;
              }
            }
          }

LABEL_343:
          if (v17 == 3 && v147 == 3)
          {
            if (Is_GAL_IntEph_Same(v191, &a8[11 * v148 + 2213] + 4))
            {
              goto LABEL_356;
            }
          }

          else if (v17 == 4 && v147 == 4)
          {
            if (Is_BDS_IntEph_Same(v186, &a8[19 * v148 + 3189]))
            {
              goto LABEL_356;
            }
          }

          else if (v17 == 6 && v147 == 6 && Is_NVIC_IntEph_Same(v176, a8 + 76 * v148 + 47696))
          {
LABEL_356:
            if (v146)
            {
              v153 = Num_Pos_Idx_To_GNSS_Id(a1);
              v213[0] = v153;
              v154 = Num_Pos_Idx_To_GNSS_Id(v145);
              v213[1] = v154;
              if (ST_Get_SNR_Levels(a9, v17, v213, &v202))
              {
                if (BYTE1(v202) + 15 < v202)
                {
                  goto LABEL_361;
                }

                if (v202 + 15 < BYTE1(v202))
                {
                  v154 = v153;
LABEL_361:
                  v155 = GNSS_SVId_Constell_To_Num_Pos_Idx(v154, v17);
                  v156 = v155;
                  v157 = Num_Pos_Idx_To_Num_Prn_Idx(v155);
                  if (Get_Constell_Prn(v157) == 2)
                  {
                    __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 1079, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
                  }

                  *(a8 + v157 + 60862) = 1;
                  v195[v157] = 0;
                  if (a1 == v156)
                  {
LABEL_363:
                    *(a5 + 12) = 0;
                  }
                }
              }
            }

            goto LABEL_242;
          }

LABEL_354:
          v146 = v145++ < 0xC4;
          if (v145 == 197)
          {
            goto LABEL_242;
          }
        }
      }
    }

    else
    {
      if (v17 <= 5)
      {
        if (v17 == 4)
        {
          v141 = 0;
          v191 = 0;
          v176 = 0;
          v186 = &a8[19 * v123 + 3189];
        }

        else
        {
          v191 = 0;
          v186 = 0;
          v176 = 0;
          v141 = a8 + 116 * v123 + 9152;
        }

        goto LABEL_327;
      }

      if (v17 == 6)
      {
        v141 = 0;
        v191 = 0;
        v186 = 0;
        v176 = a8 + 76 * v123 + 47696;
        goto LABEL_327;
      }
    }

    EvCrt_Illegal_switch_case("ST_Check_Duplicate_Eph", 3018);
    v141 = 0;
    v191 = 0;
    v186 = 0;
    v176 = 0;
    goto LABEL_327;
  }

  *v203 = 0;
  *&v202 = 0;
  *(&v202 + 7) = 0;
  memset(&v203[4], 0, 76);
  v194 = v124;
  if (v17 <= 3)
  {
    switch(v17)
    {
      case 1:
        Get_GPS_Kep_Almanac(a8 + 44 * v123 + 7544, &v202);
        break;
      case 3:
        memset(v213, 0, 91);
        GAL_AlmInt2Real(a8 + 36 * v123 + 24044, v213);
        *&v203[8] = *&v213[72];
        *&v203[24] = *&v213[24];
        *&v203[32] = *&v213[32] + 0.977384381;
        *&v203[40] = *&v213[48];
        *&v203[48] = *&v213[64];
        *(&v202 + 4) = *&v213[4] | 0x300000000;
        BYTE12(v202) = v213[8];
        BYTE13(v202) = v213[90] | (8 * v213[89]);
        BYTE14(v202) = v213[9];
        *v203 = *&v213[10] + 1024;
        *&v203[4] = *&v213[12];
        *&v203[56] = *&v213[16] + 5440.5882;
        *&v203[64] = *&v213[40];
        *&v203[72] = *&v213[56];
        break;
      case 2:
        __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 943, "FALSE");
      default:
        goto LABEL_242;
    }
  }

  else
  {
    switch(v17)
    {
      case 4:
        memset(v213, 0, 88);
        BDS_AlmInt2Real(a8 + 44 * v123 + 44664, v213);
        *&v202 = *v213;
        *&v203[56] = *&v213[16];
        *&v203[72] = *&v213[32];
        v142 = 0.942477796;
        if (v213[11] - 59 < 0xFFFFFFCB)
        {
          v142 = 0.0;
        }

        *&v203[24] = *&v213[24];
        *&v203[32] = *&v213[64] + v142;
        *&v203[48] = *&v213[40];
        *&v203[40] = *&v213[56];
        *&v203[8] = *&v213[72];
        *&v203[4] = *&v213[12] + 14;
        *v203 = *&v213[8] + 1356;
        if (*&v213[12] + 14 > 604799)
        {
          *&v203[4] = *&v213[12] - 604786;
          *v203 = *&v213[8] + 1357;
        }

        *&v203[64] = *&v213[48] + 0.0010208961;
        DWORD2(v202) = 4;
        BYTE12(v202) = v213[11];
        BYTE13(v202) = v213[10] ^ 1;
        break;
      case 5:
        Get_QZSS_Kep_Almanac(a8 + 44 * v123 + 11472, &v202);
        break;
      case 6:
        *&v213[12] = 0;
        *&v213[16] = 0;
        *v213 = 0;
        *&v213[7] = 0;
        memset(&v213[24], 0, 80);
        NVIC_AlmInt2Real(a8 + 52 * v123 + 49824, v213);
        *&v202 = *v213;
        *&v203[8] = *&v213[80];
        *&v203[24] = *&v213[24];
        *&v203[40] = *&v213[40];
        *&v203[48] = *&v213[72];
        *&v203[56] = *&v213[48];
        DWORD2(v202) = 6;
        WORD6(v202) = *&v213[8];
        BYTE14(v202) = (0x101010102 * (*&v213[16] / 0x15180u - *&v213[12] + 8 * *&v213[12])) >> 32;
        *v203 = *&v213[12] + 1024;
        *&v203[4] = *&v213[16];
        *&v203[72] = *&v213[64];
        break;
      default:
        goto LABEL_242;
    }
  }

  v143 = Kep_Check_Almanac(v139, &v202);
  if (ST_Check_Alm_Kep_Err("ST_Update_Table", v143, &v202))
  {
    *&v213[184] = 0u;
    memset(&v213[56], 0, 120);
    *&v213[24] = 0u;
    *&v213[8] = 0u;
    *v213 = v202;
    *&v213[176] = *&v203[48];
    *&v214 = *&v203[64];
    *(&v214 + 1) = *&v203[32];
    v215[0] = *&v203[72];
    v215[1] = *&v203[24];
    v215[2] = *&v203[40];
    *&v213[40] = *&v203[8];
    *&v213[28] = *&v203[4];
    *&v213[24] = *&v203[4];
    *&v213[32] = *&v203[4];
    *&v213[22] = *v203;
    *&v213[8] = DWORD2(v202);
    v213[14] = BYTE13(v202);
    v213[12] = BYTE12(v202);
    if (!ST_Cross_Check_Eph_Kep_vs_Eph_Kep(*(a5 + 8), *(a5 + 4), v197, v213, 2))
    {
      if (Get_Constell_Prn(v192) == 2)
      {
        __assert_rtn("ST_Update_Table", "GPS_State_Update.cpp", 1020, "Get_Constell_Prn( (U1)j_NUM_PRN) != GLON_CONSTELL");
      }

      v144 = a8 + v194;
      v144[60862] = 1;
      v144[59772] = 0;
      goto LABEL_363;
    }

    *(a8 + v194 + 61734) = 1;
  }

LABEL_242:
  v117 = *(a5 + 12);
  if ((v117 - 1) <= 1)
  {
    v118 = a3;
    if (v117 == 1)
    {
      v118 = a2;
    }

    v119 = -v118;
    *(v188 + 2 * a1) = v119;
    v120 = *(a5 + 4) - v119;
    if (v120 <= 604799)
    {
      v121 = v120;
    }

    else
    {
      v121 = v120 - 604800;
    }

    if (v120 <= 604799)
    {
      v122 = *(a5 + 8);
    }

    else
    {
      v122 = *(a5 + 8) + 1;
    }

    if (DWORD2(v197[0]) == 4 && v117 == 1 && BYTE12(v197[0]) <= 5u)
    {
      Kep_Calc_SV_Ref_State_BDS_GEO(1, v122, v121, v197, a4);
    }

    else
    {
      Kep_Calc_SV_Ref_State(v117, v122, v121, v197, a4);
    }

    if (*(a5 + 12) == 1 && DWORD1(v197[0]) == 6)
    {
      *(a4 + 166) += 1000;
    }
  }
}

void GPS_State_Update(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v94 = *MEMORY[0x29EDCA608];
  if (!ST_Get_Time(a3, (a2 + 8), (a2 + 4)))
  {
    return;
  }

  *a2 = 0;
  if (!*(a1 + 402))
  {
    goto LABEL_7;
  }

  v14 = *(a2 + 4);
  v15 = v14 - *a1;
  *a2 = v15;
  v16 = *(a2 + 8);
  if (v16 != *(a1 + 4))
  {
    if (*(a1 + 4) + 1 != v16)
    {
LABEL_7:

      GPS_State_Update_Init(a1, a2, a3, a4, a6, a7, a8);
      return;
    }

    v15 += 604800;
    *a2 = v15;
  }

  if ((v15 - 101) < 0xFFFFFF91)
  {
    goto LABEL_7;
  }

  v17 = 0;
  *(a1 + 4) = v16;
  v18 = a4 + 62171;
  *a1 = v14;
  v19 = a4 + 59772;
  v77 = a4 + 59990;
  v73 = a4 + 7526;
  v72 = a4 + 6327;
  v75 = a4 + 50834;
  v69 = a6 + 265;
  v70 = a6 + 544;
  v79 = a1 + 6;
  v20 = a8 + 11;
  do
  {
    if (v18[v17] != 1 || !*v20)
    {
      goto LABEL_25;
    }

    v21 = Num_Pos_Idx_To_Num_Prn_Idx(v17);
    if ((v19[v21] & 1) == 0 && (v77[v21] & 1) == 0 && *(v73 + v21) != 1 || (v22 = v20[2]) == 0)
    {
LABEL_24:
      *v20 = 0;
      *(v79 + 2 * v17) = 0;
      goto LABEL_25;
    }

    if (v22 == 6)
    {
      goto LABEL_18;
    }

    if (*(v72 + v21) != 1 || *(v69 + v21) == 1)
    {
      if (v22 < 6 || v22 == 7)
      {
        goto LABEL_24;
      }

LABEL_18:
      if (v75[v21] != 1 || (*(v70 + v21) & 1) != 0)
      {
        goto LABEL_24;
      }
    }

    v23 = (*(v79 + 2 * v17) + *a2);
    *(v79 + 2 * v17) += *a2;
    if (v23 > 450)
    {
      goto LABEL_7;
    }

LABEL_25:
    ++v17;
    v20 += 48;
  }

  while (v17 != 197);
  v24 = 0;
  v25 = 0;
  v71 = a5;
  v26 = a8 + 11;
  memset(v93, 0, 197);
  while (2)
  {
    *(v93 + v24) = 0;
    if (v18[v24] != 1 || *(a6 + v24 + 265) == 1 && (*(a6 + v24 + 544) & 1) != 0)
    {
      goto LABEL_72;
    }

    Constell_Pos = Get_Constell_Pos(v24);
    if (Constell_Pos)
    {
      v28 = v24 - Num_Pos[Constell_Pos - 1];
      v29 = Num_Prn[Constell_Pos - 1];
    }

    else
    {
      v29 = 0;
      v28 = v24;
    }

    v30 = v29 + v28;
    if (!*v26)
    {
      v33 = 1;
      goto LABEL_46;
    }

    if (*v26 != 1)
    {
      if (*(v79 + 2 * v24) > 60)
      {
        goto LABEL_71;
      }

      v33 = 0;
LABEL_46:
      if ((v19[v30] & 1) != 0 || v77[v30] == 1)
      {
        if (!Constell_Pos)
        {
          goto LABEL_57;
        }

        if (Constell_Pos != 6)
        {
          if (*(v72 + v30) == 1 && *(v69 + v30) != 1)
          {
            goto LABEL_71;
          }

          goto LABEL_57;
        }

        if ((v75[v30] & 1) == 0)
        {
LABEL_57:
          if ((v33 & 1) == 0)
          {
            goto LABEL_72;
          }

LABEL_58:
          v34 = *(v73 + v30) != 1 || Constell_Pos == 0;
          if (!v34)
          {
            if (Constell_Pos == 6)
            {
              if (v75[v30] == 1 && (*(v70 + v30) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            else if (*(v72 + v30) == 1 && *(v69 + v30) != 1)
            {
              goto LABEL_71;
            }
          }

          goto LABEL_72;
        }

        if (*(v70 + v30) != 1)
        {
          goto LABEL_71;
        }
      }

      if (!v33)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }

    if (*(a4 + v30 + 60426))
    {
      goto LABEL_71;
    }

    v31 = *(v71 + v30);
    v32 = *(v79 + 2 * v24);
    if (v31 >= -2)
    {
      if (v32 <= 5)
      {
        goto LABEL_72;
      }

LABEL_71:
      *(v93 + v24) = 1;
      ++v25;
      goto LABEL_72;
    }

    if (v32 > 60)
    {
      goto LABEL_71;
    }

LABEL_72:
    ++v24;
    v26 += 48;
    if (v24 != 197)
    {
      continue;
    }

    break;
  }

  if (v25 == 1)
  {
LABEL_122:
    v55 = 0;
    do
    {
      v56 = v55;
      if (*(v93 + v55) == 1)
      {
        v91 = 0u;
        memset(v92, 0, 31);
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        ST_Update_Table(v55, 15, 60, &v82, a2, a1, a6, a4, a7);
        if (*(a2 + 12))
        {
          *(a1 + 402) = 1;
        }

        else
        {
          *&v92[16] = 0;
          *(v79 + 2 * v56) = 0;
        }

        if (Get_Constell_Pos(v56) != 2 || *&v92[16] || (v57 = &a8[12 * v56], (v58 = *(v57 + 44)) == 0) || (v58 != 1 ? (v59 = 203) : (v59 = 10), *(a2 + 4) - *(v57 + 40) + 604800 * (*(a2 + 8) - *(v57 + 82)) >= v59))
        {
          v60 = v91;
          v61 = &a8[12 * v56];
          v61[8] = v90;
          v61[9] = v60;
          v62 = *&v92[16];
          v61[10] = *v92;
          v61[11] = v62;
          v63 = v87;
          v61[4] = v86;
          v61[5] = v63;
          v64 = v89;
          v61[6] = v88;
          v61[7] = v64;
          v65 = v83;
          *v61 = v82;
          v61[1] = v65;
          v66 = v85;
          v61[2] = v84;
          v61[3] = v66;
        }

        --v25;
      }

      v55 = v56 + 1;
    }

    while (v25);
    goto LABEL_137;
  }

  if (v25)
  {
    EvLog_d("GPS_State_Update: Immediate Updates = ", v25);
    goto LABEL_122;
  }

  v35 = 0;
  v36 = *(v71 + 654);
  v37 = a8 + 11;
  v76 = 20;
  v78 = 90;
  v74 = 5;
  v38 = -1;
  v39 = 15;
LABEL_76:
  v40 = &v37[12 * v35];
  do
  {
    if (*(a6 + v35 + 265) != 1 || (*(a6 + v35 + 544) & 1) == 0)
    {
      v41 = Get_Constell_Pos(v35);
      v42 = *v40;
      if (*v40)
      {
        if (v18[v35] == 1)
        {
          if (!v36 || (!v41 ? (v44 = 0, v43 = v35) : (v43 = v35 - Num_Pos[v41 - 1], v44 = Num_Prn[v41 - 1]), (v45 = *(v71 + v44 + v43), v45 > -3) || v45 == -99))
          {
            v46 = *(v79 + 2 * v35);
            if (v46 >= 0)
            {
              v47 = *(v79 + 2 * v35);
            }

            else
            {
              v47 = -v46;
            }

            if (v42 == 1)
            {
              if (v47 <= v76)
              {
                if (v39 >= 8 && v46 > v74)
                {
                  v38 = v35;
                  v39 = 8;
                  v74 = *(v79 + 2 * v35);
                  v34 = v35++ == 196;
                  v37 = a8 + 11;
                  if (!v34)
                  {
                    goto LABEL_76;
                  }

                  v38 = 196;
                  goto LABEL_112;
                }
              }

              else
              {
                v39 = 5;
                v76 = v47;
                v38 = v35;
              }
            }

            else if (v42 == 2 && v39 >= 6)
            {
              v48 = v78;
              v49 = v47 > v78;
              if (v47 > v78)
              {
                v48 = v47;
              }

              v78 = v48;
              if (v49)
              {
                v38 = v35;
              }

              if (v49)
              {
                v39 = 6;
              }
            }
          }
        }
      }
    }

    ++v35;
    v40 += 48;
  }

  while (v35 != 197);
  if (v39 <= 7)
  {
    goto LABEL_120;
  }

LABEL_112:
  v50 = 0;
  v51 = (a8 + 11);
  v52 = 90;
  do
  {
    v53 = *v51;
    v51 += 48;
    if (v53 && v18[v50] == 1)
    {
      v54 = *(v79 + 2 * v50);
      if (v54 < 0)
      {
        v54 = -v54;
      }

      if (v54 > v52)
      {
        v52 = v54;
        v38 = v50;
      }
    }

    ++v50;
  }

  while (v50 != 197);
LABEL_120:
  if ((v38 & 0x80000000) == 0)
  {
    v25 = 1;
    *(v93 + v38) = 1;
    goto LABEL_122;
  }

LABEL_137:
  v67 = 0;
  *(a1 + 402) = 0;
  for (i = a8 + 11; v18[v67] != 1 || !*i; i += 48)
  {
    if (++v67 == 197)
    {
      return;
    }
  }

  *(a1 + 402) = 1;
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
    if (g_Logging_Cfg >= 6)
    {
      v29 = *(a1 + 176);
      if (v29 > 2)
      {
        v30 = 120;
      }

      else
      {
        v30 = dword_299052630[v29];
      }

      v37 = *(a2 + 176);
      if (v37 > 2)
      {
        v38 = 120;
      }

      else
      {
        v38 = dword_299052630[v37];
      }

      v39 = *(a1 + 184) - 1;
      if (v39 > 6)
      {
        v40 = 88;
      }

      else
      {
        v40 = dword_29905263C[v39];
      }

      EvLog_v("ST_Cross_Check_SVRS:  %c vs %c  PASS:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v30, v38, *(a1 + 160), v40, *(a1 + 188), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
    }
  }

  else
  {
    v31 = *(a1 + 176);
    if (v31 > 2)
    {
      v32 = 120;
    }

    else
    {
      v32 = dword_299052630[v31];
    }

    v33 = *(a2 + 176);
    if (v33 > 2)
    {
      v34 = 120;
    }

    else
    {
      v34 = dword_299052630[v33];
    }

    v35 = *(a1 + 184) - 1;
    if (v35 > 6)
    {
      v36 = 88;
    }

    else
    {
      v36 = dword_29905263C[v35];
    }

    EvCrt_v("ST_Cross_Check_SVRS:  %c vs %c  FAIL:  T %d  SV %c %d %d %d  BR %f %f %f  D %f %f  P %f %f  V %f %f  var %f %f", v32, v34, *(a1 + 160), v36, *(a1 + 188), *(a1 + 166), *(a2 + 166), v11, v17, v26, v6, v26 * 0.05, v22, v26 * 10.0, v23, v26 * 5.0, sqrt(v24), sqrt(v25));
  }

  return v28;
}

BOOL ST_Check_Alm_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 1;
    do
    {
      if ((v5 & a2) != 0)
      {
        v6 = 0.0;
        if (v5 <= 7u)
        {
          if (v5 > 1u)
          {
            if (v5 == 2)
            {
              v6 = *(a3 + 20);
            }

            else if (v5 == 4)
            {
              v6 = *(a3 + 72);
            }
          }

          else if (v5)
          {
            v6 = *(a3 + 20);
          }
        }

        else if (v5 <= 0x1Fu)
        {
          if (v5 == 8)
          {
            v6 = *(a3 + 72);
          }

          else if (v5 == 16)
          {
            v6 = *(a3 + 40);
          }
        }

        else
        {
          switch(v5)
          {
            case 0x20u:
              v6 = *(a3 + 40);
              break;
            case 0x40u:
              v6 = *(a3 + 56);
              break;
            case 0x80u:
              v6 = *(a3 + 56);
              break;
          }
        }

        if (fabs(v6) >= 0.000001)
        {
          EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %g");
        }

        else
        {
          EvLog_v("%s:  Kep Almanac Error:  Rejected:  SV %c %d  Too %s = %e");
        }
      }

      v7 = v5 >= 0x8000;
      v5 *= 2;
    }

    while (!v7);
  }

  return a2 == 0;
}

BOOL ST_Check_Eph_Kep_Err(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = 1;
    do
    {
      if ((v5 & a2) != 0)
      {
        v6 = 0.0;
        if (v5 <= 0x1Fu)
        {
          if (v5 > 3u)
          {
            switch(v5)
            {
              case 4u:
                v6 = *(a3 + 24);
                break;
              case 8u:
                v6 = *(a3 + 24);
                break;
              case 0x10u:
                v6 = *(a3 + 28);
                break;
            }
          }

          else if (v5)
          {
            if (v5 == 1)
            {
              v6 = *(a3 + 24);
            }

            else if (v5 == 2)
            {
              v6 = *(a3 + 24);
            }
          }
        }

        else if (v5 <= 0xFFu)
        {
          switch(v5)
          {
            case 0x20u:
              v6 = *(a3 + 28);
              break;
            case 0x40u:
              v6 = *(a3 + 184);
              break;
            case 0x80u:
              v6 = *(a3 + 184);
              break;
          }
        }

        else if (v5 > 0x3FFu)
        {
          if (v5 == 1024)
          {
            v6 = *(a3 + 232);
          }

          else if (v5 == 2048)
          {
            v6 = *(a3 + 232);
          }
        }

        else if (v5 == 256)
        {
          v6 = *(a3 + 224);
        }

        else if (v5 == 512)
        {
          v6 = *(a3 + 224);
        }

        if (fabs(v6) >= 0.000001)
        {
          EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %g");
        }

        else
        {
          EvLog_v("%s:  Kep Ephemeris Error:  Rejected:  SV %c %d  Too %s = %e");
        }
      }

      v7 = v5 >= 0x8000;
      v5 *= 2;
    }

    while (!v7);
  }

  return a2 == 0;
}

BOOL ST_Cross_Check_Eph_Kep_vs_Eph_Kep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = a1;
  v13 = *MEMORY[0x29EDCA608];
  memset(v12, 0, 191);
  if (*(a3 + 8) == 4 && *(a3 + 12) <= 5u)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, a1, a2, a3, v12);
  }

  else
  {
    Kep_Calc_SV_Ref_State(1, a1, a2, a3, v12);
  }

  memset(v11, 0, 191);
  if (*(a3 + 8) == 4 && a5 == 1 && *(a3 + 12) - 59 <= 0xFFFFFFCA)
  {
    Kep_Calc_SV_Ref_State_BDS_GEO(1, v9, v8, a4, v11);
  }

  else
  {
    Kep_Calc_SV_Ref_State(a5, v9, v8, a4, v11);
  }

  return ST_Cross_Check_SVRS_vs_SVRS(v12, v11);
}

uint64_t ST_Get_SNR_Levels(uint64_t a1, int a2, unsigned __int8 *a3, _WORD *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a1 + 32);
  *a4 = 0;
  v7 = (a1 + 1000);
  v8 = (a1 + 2152);
  v9 = 128;
  do
  {
    if (*v7 != a2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 2);
    if (v10 == *a3 && v7[160] > 3)
    {
      v4 = 1;
      v11 = a4;
LABEL_9:
      *v11 = *v8;
      goto LABEL_10;
    }

    if (v10 == a3[1] && v7[160] >= 4)
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

uint64_t GM_Get_Best_SyncSV(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  v9 = 0;
  v40 = *MEMORY[0x29EDCA608];
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  *a5 = -1;
  *a6 = -1;
  do
  {
    v10 = (a2 + 36 * v9);
    v11 = *v10;
    if (Is_Legal(*v10) && (~*(v10 + 4) & 0x208) == 0)
    {
      v12 = a3 + 48 * v9;
      if (*(v12 + 4) == 1 && *(v12 + 15) == 1)
      {
        v13 = a3;
        v14 = (a1 + 56 * v9);
        v15 = *v14 - *(v12 + 28);
        if (fabs(v15) > 21.0)
        {
          GNSS_SV_Str = Get_GNSS_SV_Str(v11);
          EvLog_v("GM_Get_Best_SyncSV:  %3d  %7s  Large (Meas - AA) Z-Count diff !  %d  (%d - %d)", v9, GNSS_SV_Str, v15, *v14, *(v12 + 28));
          a3 = v13;
        }

        else
        {
          v16 = 0;
          v17 = v14[1] - *(v12 + 32) + 1534500 * v15;
          if (v17 < 0)
          {
            v18 = -511;
          }

          else
          {
            v18 = 511;
          }

          v19 = (v18 + v17) / 1023;
          *(v37 + v9) = v19;
          *(v36 + v9) = 1;
          a3 = v13;
          while (*(v39 + v16) != v19)
          {
            if (++v16 == 32)
            {
              goto LABEL_18;
            }
          }

          if (v16 < 0x20)
          {
            v21 = *(v38 + v16);
            if (v21 >= 1)
            {
              v22 = v21 + 1;
LABEL_24:
              *(v38 + v16) = v22;
              goto LABEL_25;
            }
          }

LABEL_18:
          v16 = 0;
          while (*(v38 + v16))
          {
            if (++v16 == 32)
            {
              goto LABEL_25;
            }
          }

          if (v16 <= 0x1F)
          {
            *(v39 + v16) = v19;
            v22 = 1;
            goto LABEL_24;
          }
        }
      }
    }

LABEL_25:
    ++v9;
  }

  while (v9 != 128);
  v23 = 0;
  v24 = 0;
  v25 = 0x8000;
  do
  {
    if (*(v38 + v23) > v25)
    {
      v25 = *(v38 + v23);
      v24 = v23;
    }

    ++v23;
  }

  while (v23 != 32);
  if (v25 >= 1 && v24 < 0x80)
  {
    v26 = 0;
    v27 = *(v39 + v24);
    v28 = (a2 + 8);
    while (1)
    {
      if (*a5 != -1 || *a6 != -1 || *(v36 + v26) != 1 || *(v37 + v26) != v27)
      {
        goto LABEL_41;
      }

      v29 = *v28 & 0x300;
      v30 = a5;
      if (v29 == 768)
      {
        goto LABEL_40;
      }

      if (v29 == 512)
      {
        break;
      }

LABEL_41:
      ++v26;
      v28 += 18;
      if (v26 == 128)
      {
        goto LABEL_42;
      }
    }

    v30 = a6;
LABEL_40:
    *v30 = v26;
    goto LABEL_41;
  }

LABEL_42:
  result = *a5;
  if (result != -1 || (result = GM_Get_Best_SSS(a2, a3, a4, 128), *a5 = result, result != -1))
  {
    if (*(a3 + 48 * result + 4))
    {
      goto LABEL_45;
    }
  }

  Best_ASSS = *a6;
  if (*a6 == -1)
  {
    Best_ASSS = GM_Get_Best_ASSS(a2, a3, a4, 128);
    *a6 = Best_ASSS;
    result = *a5;
  }

  if (Best_ASSS < 0 && (result & 0x80000000) == 0)
  {
    *a6 = result;
    Best_ASSS = result;
    result = *a5;
  }

  if (result != -1 && (*(a3 + 48 * result + 4) & 1) == 0 && Best_ASSS != result && (*(a3 + 48 * Best_ASSS + 4) & 1) == 0)
  {
LABEL_45:
    *a6 = result;
  }

  return result;
}

uint64_t Init_DB_Time_Sync_NV(int *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v32 = 0;
  v30 = 0.0;
  v31 = 0.0;
  v29 = 0;
  v5 = *a1;
  v6 = a1[4];
  v7 = *(a1 + 3);
  if (Core_Load_ApxTime(v6, &v32, &v31, &v33))
  {
    v8 = v33;
    *(a2 + 108) = v33;
    v9 = v32;
    *(a2 + 112) = -v32;
    v10 = v31;
    *(a2 + 120) = v31;
    if (v9 >= 1025 && v8 > *a2)
    {
      *a2 = v8;
      *(a2 + 16) = 1;
      *(a2 + 40) = v10;
      *(a2 + 32) = v9;
      EvLog_v("Init_DBts_NV: ApxG %u %d %g %d", v6, v9, v10, v8);
      v11 = *a2;
      if ((*a2 - 4) <= 4)
      {
        v12 = *(a2 + 40) * 1000.0;
        v13 = -0.5;
        if (v12 > 0.0)
        {
          v13 = 0.5;
        }

        v14 = v12 + v13;
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
          v15 = 0x7FFFFFFF;
        }

        v16 = *(a2 + 24);
        v17 = *(a2 + 28);
        v18 = v15 - v16;
        LODWORD(v28) = 0;
        BYTE4(v27) = 0;
        if (Core_Load_TTick_Cal(v16, v17, v15 - v16, &v28, &v27 + 4))
        {
          v19 = BYTE4(v27);
          if (BYTE4(v27) >= 0x5Au)
          {
            v20 = 6;
          }

          else
          {
            v20 = 7;
          }

          if (BYTE4(v27) < 0x1Eu)
          {
            v20 = 8;
          }

          if (v20 >= v11)
          {
            v21 = LODWORD(v28);
            v26 = v20;
            Inc_GPS_TOW(SLODWORD(v28) * 0.001, (a2 + 40), (a2 + 32));
            *a2 = v26;
            EvLog_v("Init_DBts_NV: Calib %d %g %d %d", v21, *(a2 + 40), v18, v19);
          }
        }
      }

      v27 = 0;
      v28 = 0.0;
      API_Get_UTC_Cor(1, &v28);
      GPS_To_Glon_Time(0, *(a2 + 32), *(a2 + 40), v28, &v27, &v27 + 1, (a2 + 88));
      v23 = v27;
      v22 = WORD2(v27);
      *(a2 + 84) = WORD2(v27);
      *(a2 + 82) = v23;
      *(a2 + 80) = 1;
      v24 = *a2;
      *(a2 + 76) = *a2;
      EvLog_v("Init_DBts_NV: Glon %d %d %g %d", v23, v22, *(a2 + 88), v24);
      *(a2 + 112) = -*(a2 + 112);
    }
  }

  v28 = 0.0;
  *a3 = v5;
  *(a3 + 4) = v6;
  *(a3 + 8) = v7;
  result = Core_Get_Ref_Time(v6, &v30, &v29, &v28);
  if (result)
  {
    return API_Set_Ref_Time(v6, v30, v29, v28);
  }

  return result;
}

void NK_Crude_Apx_Pos(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v81 = v8;
  v9 = v1;
  v105 = *MEMORY[0x29EDCA608];
  v10 = (v6 + 68304);
  v11 = mach_continuous_time();
  v12 = *&g_MacClockTicksToMsRelation;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 1) = 0;
  *(v10 + 9) = 0;
  v13 = *v10;
  bzero(v103, 0x600uLL);
  memset(v102, 0, 128);
  if (v5[5] <= 2)
  {
    *(v7 + 240) = 0;
    return;
  }

  v71 = v3;
  v72 = v13;
  v76 = v10;
  v73 = (v5 + 15054);
  v74 = (v12 * v11);
  if (*(v7 + 240) == 1 && *(v5 + 4) + 604800 * *(v5 + 13) - *(v7 + 272) > 60 || *(v7 + 20104) != 1 || (*(v7 + 20105) & 1) == 0)
  {
    *(v7 + 240) = 0;
  }

  v78 = v5;
  v75 = v7;
  v82 = 0;
  v79 = 0;
  v14 = v9 + 96;
  v15 = v9 + 1248;
  v16 = v9 + 864;
  v17 = v9 + 992;
  v80 = v9 + 3424;
  v77 = v9 + 4448;
  v18 = 3;
  memset(v104, 0, 128);
  do
  {
    v19 = 0;
    v20 = v18;
    do
    {
      v21 = v14 + 4 * v19;
      v22 = *v21;
      if (Is_Legal(*v21) && *(v15 + 4 * v19) >= 10 && *(v16 + v19) >= 0x40u)
      {
        v23 = *(v17 + 2 * v19 + 1) & 3;
        if (v20 == v23)
        {
          v100 = 0u;
          memset(v101, 0, 31);
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v91 = 0u;
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v84 = 0u;
          memset(v83, 0, sizeof(v83));
          v90[0] = 0;
          *(v90 + 3) = 0;
          if (v22 != 7 && (BYTE1(v22) > 0xFu || ((1 << SBYTE1(v22)) & 0xE6CC) == 0 || v22 == 6))
          {
            v24 = (v81 + 192 * GNSS_Id_To_Num_Pos_Idx(v22));
            v25 = v24[9];
            v99 = v24[8];
            v100 = v25;
            v26 = v24[11];
            *v101 = v24[10];
            *&v101[16] = v26;
            v27 = v24[5];
            v95 = v24[4];
            v96 = v27;
            v28 = v24[7];
            v97 = v24[6];
            v98 = v28;
            v29 = v24[1];
            v91 = *v24;
            v92 = v29;
            v30 = v24[3];
            v93 = v24[2];
            v94 = v30;
            if ((*&v101[16] - 1) <= 1)
            {
              v31 = *(v80 + 8 * v19);
              if (v31 < 329771.704)
              {
                v31 = v31 + API_Get_Default_PR_ms_Amb(*v21) * 299792.458;
              }

              if (Comp_CurrState(0x258u, *(v78 + 13), &v91, v83, *(v78 + 4), v31))
              {
                v32 = *(v21 + 1);
                if (v32 > 0xF || ((1 << v32) & 0xDD77) == 0)
                {
                  *(&v84 + 1) = *(&v84 + 1) - (*&v87 - *&v88);
                }

                *(v104 + v82) = v23;
                *&v101[4 * v82 + 32] = DWORD2(v88);
                v33 = &v103[12 * v82 + 8];
                v34 = &v84;
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

                  *(&v102[8] + 6 * v82 + i) = v43;
                  --v34;
                  --v33;
                }

                *(v102 + v82) = *v21;
                v44 = *(v80 + 8 * v19);
                if (v23 <= 1)
                {
                  v44 = v44 + (API_Get_Default_PR_ms_Amb(*v21) - (v44 * 0.00000333564095)) * 299792.458;
                }

                v45 = *&v85;
                v46 = v44 + *(&v84 + 1) * 299792458.0;
                if (v46 <= 0.0)
                {
                  v47 = -0.5;
                }

                else
                {
                  v47 = 0.5;
                }

                v48 = v46 + v47;
                v49 = v48;
                if (v48 < -2147483650.0)
                {
                  v49 = 0x80000000;
                }

                if (v48 > 2147483650.0)
                {
                  v49 = 0x7FFFFFFF;
                }

                *(&v104[24] + v82) = v49;
                v50 = (v45 * 299792458.0 - *(v77 + 8 * v19)) * 5.25503547;
                if (v50 <= 0.0)
                {
                  v51 = -0.5;
                }

                else
                {
                  v51 = 0.5;
                }

                v52 = v50 + v51;
                if (v52 <= 2147483650.0)
                {
                  if (v52 >= -2147483650.0)
                  {
                    v53 = v52;
                  }

                  else
                  {
                    LOWORD(v53) = 0;
                  }
                }

                else
                {
                  LOWORD(v53) = -1;
                }

                ++v79;
                *(&v104[8] + v82++) = v53;
              }
            }
          }
        }
      }

      ++v19;
    }

    while (v19 != 128);
    v18 = v20 - 1;
  }

  while (v20);
  v76[1] = v79;
  v54 = v104[0];
  *(v76 + 1) = v104[0];
  if (v79 < 3 || v79 == 3 && (v54 & 0xFE00) == 0)
  {
    *(v75 + 240) = 0;
    return;
  }

  v55 = NK_Crude_Apx_Pos_Core(v103);
  v56 = v55;
  v57 = vmovn_s64(vcvtq_n_s64_f64(*(v75 + 248), 0xFuLL));
  *(v76 + 1) = v57;
  v76[16] = v55;
  *(v76 + 20) = v57;
  *(v75 + 272) = *(v78 + 4) + 604800 * *(v78 + 13);
  v58 = *v73 == 1 && (*(v73 + 2) - 3) < 2;
  v59 = v79 < 5 || v55;
  if ((v59 & 1) == 0)
  {
    ++*(v75 + 276);
  }

  v60 = !v55 && !v58 && *(v75 + 276) > 9u;
  if ((v55 || v60) && (v72 & 1) == 0)
  {
    v61 = *(v78 + 215);
    *(v75 + 264) = v61;
    *&v91 = 0;
    if (R8_EQ((v75 + 264), &v91) || v61 < -500.0 || v61 > 6000.0)
    {
      *(v75 + 264) = qword_299052660[*(v75 + 20) < 5u];
    }

    *(v78 + 1864) = v56;
    *(v75 + 240) = v56;
    if (Horiz_Diff_Sqd(v78 + 213, (v75 + 248)) <= 5625000000.0)
    {
      LOBYTE(v63) = *v73;
    }

    else
    {
      if (v56)
      {
        v62 = *(v75 + 248);
        *(v78 + 215) = *(v75 + 264);
        *(v78 + 426) = v62;
        Geo2ECEF((v78 + 426), &WGS84_Datum, (v78 + 390));
        *(v75 + 244) = 5;
      }

      v63 = *v73;
      if (((v58 | v63 ^ 1) & 1) == 0)
      {
        *(v78 + 840) = 0;
        *(v78 + 1682) = 0;
        *(v78 + 208) = 0;
        *(v78 + 454) = 0u;
        *(v78 + 458) = 0u;
        *(v78 + 462) = 0u;
        *(v78 + 99) = 0u;
        *(v78 + 100) = 0u;
        *(v78 + 101) = 0u;
        *(v78 + 102) = 0u;
        *(v78 + 206) = 0;
        *(v75 + 136) = 1;
        *(v75 + 140) = 35;
        if (*(v73 + 226) < 30000.0 || v63)
        {
          for (j = 0; j != 128; ++j)
          {
            v65 = v17 + 4 * j;
            if (*(v65 + 256) >= 11 && (~*(v17 + 2 * j) & 0x300) != 0)
            {
              *(v65 + 256) = 10;
            }
          }
        }
      }
    }

    if (v58 || (v63 & 1) == 0)
    {
      goto LABEL_106;
    }

    if (*(v73 + 6) >= 900000000.0)
    {
      if (v79 < 5)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v66 = Horiz_Diff_Sqd(v78 + 7530, (v75 + 248));
      if (v66 < 5625000000.0 || v79 < 5)
      {
        v56 = (v66 >= 5625000000.0) & v56;
        goto LABEL_106;
      }
    }

    *v73 = 0;
    *(p_NA + 8) = 0;
    *(v73 + 540) = 22;
    EvLog_v("NK_Crude_Apx_Pos: CAP Discrepancy, Clearing Not Trusted Ext Ref Pos");
LABEL_106:
    if (!v58 && v60)
    {
      *v73 = 0;
      *(p_NA + 8) = 0;
      *(v73 + 540) = 23;
      *(v71 + 17472) = 0x7F7F7F7F7F7F7F7FLL;
      *&v68 = 0x7F7F7F7F7F7F7F7FLL;
      *(&v68 + 1) = 0x7F7F7F7F7F7F7F7FLL;
      *(v71 + 17456) = v68;
      *(v71 + 17440) = v68;
      *(v71 + 17424) = v68;
      *(v71 + 17480) = 0u;
      *(v71 + 17496) = 0u;
      *(v71 + 17512) = 0u;
      *(v71 + 17528) = 0;
      EvLog_v("NK_Crude_Apx_Pos: CAP Repeated Fail, Clearing Not Trusted Ext Ref Pos & GLO Slot Number mapping");
    }
  }

  if (*(v75 + 240) == 1)
  {
    if (v56)
    {
      if ((v72 & 1) == 0)
      {
        *v73 = 1;
        v69 = *v78;
        *(v73 + 5) = *v78;
        *(v73 + 4) = 0x300000002;
        *(v73 + 3) = *(v75 + 248);
        *(v73 + 4) = *(v75 + 256);
        *(v73 + 3) = vdupq_n_s64(0x41C9105220000000uLL);
        *(v73 + 8) = 0;
        *(v73 + 13) = 0x4039000000000000;
        *(v73 + 3) = 2;
        v70 = dbl_299051050[*(v75 + 20) < 5u];
        if (v73[128] != 1 || v70 < *(v73 + 20))
        {
          v73[128] = 1;
          *(v73 + 37) = v69;
          *(v73 + 132) = 0x300000002;
          *(v73 + 19) = *(v75 + 264);
          *(v73 + 20) = v70;
          *(v73 + 23) = 0x4039000000000000;
          *(v73 + 35) = 2;
        }
      }
    }
  }

  *(v76 + 1) = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v74;
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
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncS03_07PosEventUpdate", 48, 1, 0x30uLL);
  if (v2)
  {
    v3 = v2;
    v4 = *a1;
    v5 = a1[1];
    *(v2 + 31) = *(a1 + 31);
    *v2 = v4;
    v2[1] = v5;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT =>GNCP Client,%hhu,ID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS03_07PosEventUpdate", *(v3 + 12), *(v3 + 7));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 132, 8522243, v3);
  }
}

void GncS03_08SessRespSentInd(int a1, int a2, __int16 a3, char a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS03_08SessRespSentInd", 70, 1, 0x18uLL);
  if (v8)
  {
    v9 = v8;
    v8[12] = a4;
    *(v8 + 7) = a3;
    *(v8 + 4) = a1;
    *(v8 + 5) = a2;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND =>GNCP ID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncS03_08SessRespSentInd", *(v9 + 7), v9[12]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(130, 132, 8522499, v9);
  }
}

double GM_Apply_LT_Slew(double *a1, __int16 *a2, double *a3, _WORD *a4)
{
  v6 = *a1 * 1000.0;
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
    v9 = 0x7FFFFFFF;
  }

  Inc_Local_Time(-v9, 604800, a3, a2);
  result = *a1 + v9 * -0.001;
  *a1 = result;
  a4[1] = v9;
  *a4 = 256;
  a4[2] = v9;
  return result;
}

void NK_Transform_State(uint64_t a1)
{
  ECEF2Geo(a1 + 48, &WGS84_Datum, a1 + 192);
  v2 = STANAG_WGS84_Mean_Sea_Level((a1 + 192));
  v3 = __sincos_stret(*(a1 + 192));
  *(a1 + 240) = v3.__cosval;
  v4 = (a1 + 240);
  *(a1 + 216) = v2;
  v5 = __sincos_stret(*(a1 + 200));
  *(a1 + 224) = -(v3.__sinval * v5.__cosval);
  *(a1 + 232) = -(v3.__sinval * v5.__sinval);
  *(a1 + 248) = -v5.__sinval;
  *(a1 + 256) = v5.__cosval;
  *(a1 + 264) = 0;
  *(a1 + 272) = -(v3.__cosval * v5.__cosval);
  *(a1 + 280) = -(v3.__cosval * v5.__sinval);
  *(a1 + 288) = -v3.__sinval;
  *(a1 + 296) = v3.__cosval;
  v6 = (a1 + 304);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = 3;
  do
  {
    v11 = *(v4 - 1) * v8 + *(v4 - 2) * v7;
    v12 = *v4;
    v4 += 3;
    *v6++ = v11 + v12 * v9;
    --v10;
  }

  while (v10);
  v13 = *(a1 + 304) * *(a1 + 304) + *(a1 + 312) * *(a1 + 312);
  *(a1 + 328) = sqrt(v13 + *(a1 + 320) * *(a1 + 320));
  *(a1 + 336) = sqrt(v13);
}

double GAL_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v2 = vcvtd_n_f64_u32(*(a1 + 16), 0x10uLL);
  *(a2 + 16) = vcvtd_n_f64_s32(*(a1 + 14), 9uLL);
  *(a2 + 24) = v2;
  v3 = *(a1 + 24) * 0.0000958737992;
  v4 = *(a1 + 26) * 0.0000958737992;
  v5 = *(a1 + 20) * 0.0000958737992;
  *(a2 + 48) = *(a1 + 22) * 3.6572952e-10;
  *(a2 + 56) = v3;
  v6 = *(a1 + 18) * 0.000191747598;
  *(a2 + 12) = 600 * *(a1 + 12);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  v7 = vcvtd_n_f64_s32(*(a1 + 28), 0x13uLL);
  v8 = *(a1 + 30);
  *(a2 + 64) = v4;
  *(a2 + 72) = v7;
  result = v8 * 3.63797881e-12;
  *(a2 + 80) = v8 * 3.63797881e-12;
  *(a2 + 89) = *(a1 + 33);
  *(a2 + 90) = *(a1 + 34);
  return result;
}

uint64_t GN_ExtA_Set_Device_Motion_State(unsigned int *a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Device_Motion_State"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v4 = p_NA;
        v2 = 1;
        *(p_NA + 378) = 1;
        v5 = a1[2];
        *(v4 + 26744) = *a1;
        *(v4 + 26752) = v5;
        Debug_Log_ExtA_DMS(a1);
        return v2;
      }

      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_State = %d > GN_EXTA_DMS_MOVING, Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_User_Activity_Context(unsigned int *a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Activity_Context"))
  {
    if (a1[1] < 12)
    {
      if (a1[2] < 4)
      {
        v4 = p_NA;
        v2 = 1;
        *(p_NA + 379) = 1;
        v4 += 26756;
        v5 = a1[2];
        *v4 = *a1;
        *(v4 + 8) = v5;
        Debug_Log_ExtA_UAC(a1);
        return v2;
      }

      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Context = %d > GN_EXTA_UAC_SKY_DIVING, Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Fixed_In_Vehicle(unsigned int *a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Fixed_In_Vehicle"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v4 = p_NA;
        v2 = 1;
        *(p_NA + 380) = 1;
        v5 = a1[2];
        *(v4 + 26768) = *a1;
        *(v4 + 26776) = v5;
        Debug_Log_ExtA_FIV(a1);
        return v2;
      }

      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Ind = %d > GN_EXTA_FIV_KNOWN_FIXED, Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Sig_Env_Sev(uint64_t a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Sig_Env_Sev"))
  {
    if (a1 < 8)
    {
      v3 = p_NA;
      v2 = 1;
      *(p_NA + 381) = 1;
      *(v3 + 26780) = a1;
      Debug_Log_ExtA_SES(a1);
      return v2;
    }

    EvCrt_v("GN_ExtA_Set_Sig_Env_Sev:    FAILED:  SES_Ind = %d  > GN_EXTA_SES_D_URBAN_CAN, Out of range !", a1);
  }

  return 0;
}

uint64_t GN_ExtA_Set_Altitude(uint64_t a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Altitude"))
  {
    v2 = *(a1 + 8);
    if (v2 < -500.0 || v2 > 9000.0)
    {
      EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Altitude = %g <%d or >%d, Out of range!");
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0.01 || v3 > 650.0)
      {
        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Sigma_Altitude = %g <=0.01m or >650m, Out of range!");
      }

      else
      {
        if (*(a1 + 24) < 4)
        {
          v6 = p_NA;
          v4 = 1;
          *(p_NA + 382) = 1;
          v7 = *(a1 + 16);
          *(v6 + 26784) = *a1;
          *(v6 + 26800) = v7;
          Debug_Log_ExtA_Alt(a1);
          return v4;
        }

        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Trust = %d > GN_EXTA_TRUST_HIGH, Out of range!");
      }
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Map_Vector_Seg(uint64_t a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Map_Vector_Seg"))
  {
    return 0;
  }

  if (fabs(*(a1 + 8)) > 90.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 < -180.0 || v2 > 360.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v3 < -500.0 || v3 > 6000.0)
    {
      EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Height = %g <%d or >%d, Out of range!");
      return 0;
    }
  }

  v4 = *(a1 + 40);
  if (v4 < -180.0 || v4 > 360.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Direction = %d <-180 or >+360, Out of range!");
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5 <= 0.0 || v5 > 9999.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Length = %g < 0 or > 9999, Out of range!");
    return 0;
  }

  v6 = *(a1 + 56);
  if (v6 <= 0.0 || v6 > 999.0)
  {
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Width = %g < 0 or > 999, Out of range!");
    return 0;
  }

  v7 = p_NA;
  v8 = 1;
  *(p_NA + 383) = 1;
  *(v7 + 26816) = *a1;
  v10 = *(a1 + 32);
  v9 = *(a1 + 48);
  v11 = *(a1 + 64);
  *(v7 + 26832) = *(a1 + 16);
  *(v7 + 26880) = v11;
  *(v7 + 26864) = v9;
  *(v7 + 26848) = v10;
  Debug_Log_ExtA_MapV(a1);
  return v8;
}

uint64_t GN_ExtA_Set_Speed_Constraint(uint64_t a1)
{
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Speed_Constraint"))
  {
    if (*(a1 + 4) < 86400001)
    {
      v2 = *(a1 + 8);
      if (v2 >= 0.0)
      {
        v3 = *(a1 + 16);
        if (v3 >= 0.0 && v3 <= 100.0)
        {
          if (v3 >= v2)
          {
            v7 = p_NA;
            v5 = 1;
            *(p_NA + 384) = 1;
            v8 = *(a1 + 16);
            *(v7 + 26888) = *a1;
            *(v7 + 26904) = v8;
            Debug_Log_ExtA_SpdC(a1);
            return v5;
          }

          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g Speed_Upper = %g , Mis-match!");
        }

        else
        {
          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Upper = %g < 0 or > 100 m/s , Out of range!");
        }
      }

      else
      {
        EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g < 0, Out of range!");
      }
    }

    else
    {
      EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Duration = %d , Out of range!");
    }
  }

  return 0;
}

uint64_t GN_ExtA_Set_Along_Track_Vel(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Along_Track_Vel"))
  {
    return 0;
  }

  if (fabs(a1[1]) > 100.0)
  {
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: Velocity = %g > +/-100.0 m/s, Out of range!");
    return 0;
  }

  if (a1[2] <= 0.0)
  {
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    return 0;
  }

  v2 = p_NA;
  v3 = 1;
  *(p_NA + 385) = 1;
  v4 = *(a1 + 2);
  *(v2 + 26912) = *a1;
  *(v2 + 26928) = v4;
  Debug_Log_ExtA_AT_Vel(a1);
  return v3;
}

uint64_t GN_ExtA_Set_Vertical_Vel(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Vertical_Vel"))
  {
    return 0;
  }

  if (fabs(a1[1]) > 100.0)
  {
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: Velocity = %g > +/-100 m/s, Out of range!");
    return 0;
  }

  if (a1[2] <= 0.0)
  {
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    return 0;
  }

  v2 = p_NA;
  v3 = 1;
  *(p_NA + 386) = 1;
  v4 = *(a1 + 2);
  *(v2 + 26936) = *a1;
  *(v2 + 26952) = v4;
  Debug_Log_ExtA_V_Vel(a1);
  return v3;
}

uint64_t GN_ExtA_Set_User_Heading(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Heading"))
  {
    return 0;
  }

  if (fabs(a1[1]) > 360.0)
  {
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: Heading = %g > +/-360.0, Out of range!");
    return 0;
  }

  if (a1[2] <= 0.0)
  {
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: RMS_Heading = %g <=0, Out of range!");
    return 0;
  }

  v2 = p_NA;
  v3 = 1;
  *(p_NA + 387) = 1;
  v4 = *(a1 + 2);
  *(v2 + 26960) = *a1;
  *(v2 + 26976) = v4;
  Debug_Log_ExtA_Heading(a1);
  return v3;
}

uint64_t GN_ExtA_Set_Tunnel_End_Point(double *a1)
{
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Tunnel_End_Point"))
  {
    return 0;
  }

  if (fabs(a1[1]) <= 90.0)
  {
    v2 = a1[2];
    if (v2 < -180.0 || v2 > 360.0)
    {
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    }

    else if (a1[3] <= 0.0)
    {
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Sig = %g <=0.0, Out of range!");
    }

    else if (a1[4] <= 0.0)
    {
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMin_Sig = %g <=0.0, Out of range!");
    }

    else
    {
      if (*(a1 + 20) < 0xB4)
      {
        if (*(a1 + 42) == 1)
        {
          v5 = a1[6];
          if (v5 < -500.0 || v5 > 6000.0)
          {
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height = %g <%d or >%d, Out of range!");
            return 0;
          }

          if (a1[7] <= 0.0)
          {
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height_Sig = %g <=0.0, Out of range!");
            return 0;
          }
        }

        v6 = p_NA;
        v3 = 1;
        *(p_NA + 388) = 1;
        v6 = (v6 + 26984);
        v7 = *(a1 + 3);
        v9 = *a1;
        v8 = *(a1 + 1);
        v6[2] = *(a1 + 2);
        v6[3] = v7;
        *v6 = v9;
        v6[1] = v8;
        Debug_Log_ExtA_Tunnel_End_Point(a1);
        return v3;
      }

      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Brg = %d <0 or >=180, Out of range!");
    }
  }

  else
  {
    EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
  }

  return 0;
}

double Comp_SVrange_Sag_Corr(float64x2_t *a1, double *a2, float64x2_t *a3, float64x2_t *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = vsubq_f64(*a4, *a3);
  v17 = v4;
  v5 = a4[1].f64[0] - a3[1].f64[0];
  v18 = v5;
  v6 = 0.0;
  v7 = 2;
  do
  {
    v6 = v6 + v17.f64[v7] * v17.f64[v7];
    v8 = v7-- + 1;
  }

  while (v8 > 1);
  v9 = 0;
  v10 = sqrt(v6);
  *a1 = vdivq_f64(v4, vdupq_lane_s64(*&v10, 0));
  a1[1].f64[0] = v5 / v10;
  v11 = vmulq_f64(*a4, xmmword_299052690);
  v15 = vextq_s8(v11, v11, 8uLL);
  v16 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + *&v15.i64[v9] * v17.f64[v9];
    ++v9;
  }

  while (v9 != 3);
  v13 = v12 * 0.00000000333564095;
  *a2 = v13;
  return v10 - v13;
}

uint64_t Comp_CurrState(unsigned int a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = *(a3 + 176);
  if (v6)
  {
    *(a4 + 136) = *(a3 + 188);
    *(a4 + 132) = *(a3 + 184);
    *(a4 + 120) = v6;
    *(a4 + 128) = *(a3 + 166);
    *(a4 + 137) = *(a3 + 189);
    v7 = a5 - (*(a3 + 160) + 604800 * (*(a3 + 164) - a2));
    if (fabs(a6) > 0.1)
    {
      v7 = v7 + a6 / -299792458.0 - *(a3 + 96);
    }

    *a4 = v7;
    v8 = fabs(v7);
    if (v8 >= a1)
    {
      return 0;
    }

    else
    {
      v9 = v7 * v7;
      v10 = v7 * v7 * 0.5;
      v11 = (a3 + 48);
      v12 = (a4 + 32);
      v13 = 3;
      do
      {
        *(v12 - 3) = *(v11 - 6) + *(v11 - 3) * v7 + *v11 * v10 + v11[3] * (v7 * v10 * 0.333333333);
        *v12++ = *(v11 - 3) + *v11 * v7 + v11[3] * v10;
        ++v11;
        --v13;
      }

      while (v13);
      v15 = *(a3 + 96);
      v14 = *(a3 + 104);
      *(a4 + 64) = v14;
      v16 = v15 + v7 * v14;
      *(a4 + 80) = *(a3 + 120);
      *(a4 + 96) = *(a3 + 136);
      v17 = *(a3 + 152);
      *(a4 + 112) = v17;
      *(a4 + 56) = v16 - v17;
      if (v8 <= 30.0)
      {
        v18 = *(a3 + 112);
      }

      else
      {
        v18 = *(a3 + 112) + v9 * (v9 * 8.0e-10 + 0.00003) * (v9 * (v9 * 8.0e-10 + 0.00003));
      }

      *(a4 + 72) = v18;
      return 1;
    }
  }

  else
  {
    result = 0;
    *(a4 + 123) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

BOOL NK_Predict_State(int *a1, int *a2)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 - *a2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 * 0.001;
  *(a2 + 5) = v7;
  a2[8] = v5;
  *a2 = v4;
  *(a2 + 2) = *(a1 + 4);
  a2[6] = a1[5];
  *(a2 + 15) = *(a1 + 13);
  *(a2 + 28) = *(a1 + 25);
  a2[43] = a1[47];
  *(a2 + 176) = *(a1 + 192);
  *(a2 + 89) = *(a1 + 97);
  *(a2 + 90) = *(a1 + 98);
  *(a2 + 23) = *(a1 + 25);
  v8 = (a2 + 12);
  v9 = 3;
  do
  {
    *v8 = *v8 + v8[3] * v7;
    ++v8;
    --v9;
  }

  while (v9);
  v12[0] = 0.0;
  if (!R8_EQ(a2 + 15, v12))
  {
    *(a2 + 15) = *(a2 + 15) + *(a2 + 19) * v7;
  }

  v12[0] = 0.0;
  if (!R8_EQ(a2 + 16, v12))
  {
    *(a2 + 16) = *(a2 + 16) + *(a2 + 19) * v7;
  }

  v12[0] = 0.0;
  result = R8_EQ(a2 + 17, v12);
  if (!result)
  {
    *(a2 + 17) = *(a2 + 17) + *(a2 + 19) * v7;
  }

  v11 = a1[13];
  if (v11)
  {
    v12[0] = 0.0;
    if (!R8_EQ(a2 + 15, v12))
    {
      *(a2 + 15) = *(a2 + 15) + v11 * -0.001;
    }

    v12[0] = 0.0;
    if (!R8_EQ(a2 + 16, v12))
    {
      *(a2 + 16) = *(a2 + 16) + v11 * -0.001;
    }

    v12[0] = 0.0;
    result = R8_EQ(a2 + 17, v12);
    if (!result)
    {
      *(a2 + 17) = *(a2 + 17) + v11 * -0.001;
    }
  }

  return result;
}

void NK_Set_Constell_Clock_Bias(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = a4;
  v14 = 0;
  v54 = *MEMORY[0x29EDCA608];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  *v53 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = (a2 + 12072);
  v16 = a2;
  v44 = 0.0;
  v45 = 0.0;
  do
  {
    if (*(v16 + 7080) == 1 && *(v16 + 57) == 1)
    {
      v17 = result[v14];
      v18 = 1.0 / v15[672];
      *(&v50 + v17) = *(&v50 + v17) + *v15 * v18;
      *(&v46 + v17) = v18 + *(&v46 + v17);
    }

    v14 += 4;
    ++v15;
    ++v16;
  }

  while (v14 != 512);
  v19 = *(&v50 + 1) + *(&v51 + 1) + *(&v52 + 1) + v53[0];
  v20 = *(&v46 + 1) + *(&v47 + 1) + *(&v48 + 1) + *&v49;
  if (v20 > 0.0)
  {
    v19 = fabs(v19) / v20;
  }

  v21 = *&v47;
  if (*&v47 > 0.0)
  {
    *&v51 = fabs(*&v51) / *&v47;
  }

  v22 = *&v48;
  if (*&v48 > 0.0)
  {
    *&v52 = fabs(*&v52) / *&v48;
  }

  v23 = *(a2 + 1680);
  if (v23 == 1 && v19 > 0.0)
  {
    LOBYTE(v24) = *(a2 + 1681);
    v25 = *(a2 + 1632) * 299792458.0;
    v26 = 1;
    v27 = 0.0;
    if (v24)
    {
      v28 = 0;
      v29 = 0.0;
      LOBYTE(v30) = *(a2 + 1680);
      goto LABEL_30;
    }

    v32 = 0;
    LOBYTE(v31) = 0;
    v28 = 0;
    LOBYTE(v30) = *(a2 + 1680);
  }

  else
  {
    v24 = *(a2 + 1681);
    if (v24 == 1 && *&v51 > 0.0)
    {
      LOBYTE(v31) = 0;
      v25 = *(a2 + 1640) * 299792458.0;
      v32 = 1;
      v26 = 2;
      v28 = 1;
      LOBYTE(v30) = *(a2 + 1681);
    }

    else
    {
      v30 = *(a2 + 1682);
      if (v30 != 1 || *&v52 <= 0.0)
      {
        return;
      }

      v25 = *(a2 + 1648) * 299792458.0;
      v26 = 4;
      v28 = 2;
      v27 = 0.0;
      v31 = 1;
      if (v24)
      {
        v29 = 0.0;
LABEL_32:
        v33 = 0.0;
        if (*(a3 + 47436) >= 1)
        {
          v34 = *(a3 + 47452);
          if (v34)
          {
            v33 = (v34 * 2.91038305e-11 + *(a3 + 47460) * 2.91038305e-11) * 299792458.0;
            if (*(a2 + 20) >= 1 && *(a2 + 25) == 1)
            {
              LODWORD(a10) = *(a3 + 47448);
              v35 = *(a2 + 32) - *&a10 + (604800 * (*(a2 + 26) - *(a3 + 47444)));
              v36 = v35;
              if (v35 < 0)
              {
                v36 = -v36;
              }

              if (v36 >> 5 <= 0xE0)
              {
                v33 = v33 + *(a3 + 47456) * 4.4408921e-16 * v35 * 299792458.0;
                if (v31)
                {
                  v29 = v33;
                }
              }
            }
          }
        }

        goto LABEL_41;
      }

      v32 = 0;
    }
  }

  v29 = 0.0;
  v27 = 0.0;
  if (*(a3 + 17192) == 1)
  {
    v27 = vcvtd_n_f64_s32(*(a3 + 17132), 0x1EuLL) * 299792458.0;
    if (v32)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0.0;
    }
  }

  if (v31)
  {
    v26 = 4;
    v31 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v33 = 0.0;
  if ((*(a2 + 1682) & 1) == 0)
  {
    v31 = 0;
    goto LABEL_32;
  }

LABEL_41:
  if (v20 > 0.0 && (v23 & 1) == 0)
  {
    LOWORD(v43) = 1;
    v44 = *(a2 + 1632) * 299792458.0;
    v45 = 0.0;
    BYTE2(v43) = v23;
    v38 = v26;
    v39 = v28;
    v40 = v30;
    v41 = v25;
    v42 = v29;
    NK_Adjust_Constell(&v38, &v43, result, a2, a4, a5);
    *(a2 + 1632) = v44 * 0.00000000333564095;
    *(a2 + 1680) = BYTE2(v43);
    LOBYTE(v24) = *(a2 + 1681);
  }

  if (v21 > 0.0 && (v24 & 1) == 0)
  {
    LOWORD(v43) = 258;
    v44 = *(a2 + 1640) * 299792458.0;
    v45 = v27;
    BYTE2(v43) = v24;
    v38 = v26;
    v39 = v28;
    v40 = v30;
    v41 = v25;
    v42 = v29;
    NK_Adjust_Constell(&v38, &v43, result, a2, v11, a5);
    *(a2 + 1640) = v44 * 0.00000000333564095;
    *(a2 + 1681) = BYTE2(v43);
  }

  if (v22 > 0.0)
  {
    v37 = *(a2 + 1682);
    if ((v37 & 1) == 0)
    {
      LOWORD(v43) = 516;
      v44 = *(a2 + 1648) * 299792458.0;
      v45 = v33;
      BYTE2(v43) = v37;
      v38 = v26;
      v39 = v28;
      v40 = v30;
      v41 = v25;
      v42 = v29;
      NK_Adjust_Constell(&v38, &v43, result, a2, v11, a5);
      *(a2 + 1648) = v44 * 0.00000000333564095;
      *(a2 + 1682) = BYTE2(v43);
    }
  }
}

void NK_Adjust_Constell(uint64_t a1, double *a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6)
{
  v45[128] = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 8) - *(a1 + 16) + a2[2];
  v10 = v9 - a2[1];
  bzero(v45, 0x400uLL);
  v11 = 0;
  v12 = 0;
  v43 = a2;
  v13 = *a2;
  v14 = v13 == 2;
  v15 = v13 == 1;
  v16 = a4 + 7080;
  v17 = a4 + 51608;
  v18 = a4 + 12072;
  v19 = a4 + 13096;
  v20 = a4 + 14120;
  v21 = a3;
  do
  {
    v23 = *v21;
    v21 += 4;
    v22 = v23;
    if (v23 > 6)
    {
      goto LABEL_13;
    }

    v24 = v13 == 1;
    if (((1 << v22) & 0x6A) == 0)
    {
      v24 = v13 == 2;
      if (v22 != 2)
      {
        if (v22 != 4)
        {
          goto LABEL_13;
        }

        v24 = v13 == 4;
      }
    }

    if (*(v16 + v11) == 1 && v24)
    {
      *(v17 + 8 * v11) = v10 + *(v17 + 8 * v11);
      v26 = v10 + *(v18 + 8 * v11);
      *(v18 + 8 * v11) = v26;
      *(v19 + 8 * v11) = v26;
      *(v20 + 8 * v11) = v26;
      if (*(a4 + v11 + 57) == 1)
      {
        v45[v12++] = v26;
      }
    }

LABEL_13:
    ++v11;
  }

  while (v11 != 128);
  if (!v12)
  {
    v29 = v43;
    goto LABEL_36;
  }

  v40 = v13 == 4;
  VecSortAscR8(v45, 0, v12 - 1);
  v27 = v12 >> 1;
  if (v12)
  {
    v28 = v45[v27];
  }

  else
  {
    v28 = (v45[v27 - 1] + v45[v27]) * 0.5;
  }

  v29 = v43;
  v43[1] = v9;
  if (fabs(v28) < 586.104512)
  {
    v30 = 0;
    v31 = a4 + 17448;
    while (1)
    {
      v33 = *a3;
      a3 += 4;
      v32 = v33;
      if (v33 <= 6)
      {
        v34 = v15;
        if (((1 << v32) & 0x6A) != 0)
        {
          goto LABEL_23;
        }

        v34 = v14;
        if (v32 == 2)
        {
          goto LABEL_23;
        }

        if (v32 == 4)
        {
          break;
        }
      }

LABEL_34:
      if (++v30 == 128)
      {
        v9 = v43[1] - v28;
LABEL_36:
        v29[1] = v9;
        goto LABEL_37;
      }
    }

    v34 = v40;
LABEL_23:
    if (*(v16 + v30) == 1 && v34)
    {
      *(v17 + 8 * v30) = *(v17 + 8 * v30) - v28;
      v36 = *(v18 + 8 * v30) - v28;
      *(v18 + 8 * v30) = v36;
      *(v19 + 8 * v30) = v36;
      *(v20 + 8 * v30) = v36;
      if ((a5 & 1) == 0)
      {
        v37 = v36 * 0.5 * (v36 * 0.5);
        if (*(v31 + 8 * v30) > v37)
        {
          v37 = *(v31 + 8 * v30);
        }

        *(v31 + 8 * v30) = v37;
      }
    }

    goto LABEL_34;
  }

LABEL_37:
  v38 = *(a1 + 1);
  v39 = *(v29 + 1);
  *(a6 + 8 * ((v39 + 2 + (v39 + 2) * v39) >> 1) - 8) = fmax(*(a6 + 8 * ((v38 + 2 + (v38 + 2) * v38) >> 1) - 8), 62500.0);
  *(a6 + 8 * v39 + 48) = *(a6 + 8 * v38 + 48);
}

uint64_t ByteS_Ext_8(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1)++;
  v3 = v1[1];
  *a1 = v1 + 2;
  v4 = v1[2];
  *a1 = v1 + 3;
  v5 = v1[3];
  *a1 = v1 + 4;
  v6 = v1[4];
  *a1 = v1 + 5;
  v7 = v1[5];
  *a1 = v1 + 6;
  v8 = v1[6];
  *a1 = v1 + 7;
  v9 = v1[7];
  *a1 = v1 + 8;
  return v2 | (v3 << 8) | (v4 << 16) | (v5 << 24) | (v6 << 32) | (v7 << 40) | (v8 << 48) | (v9 << 56);
}

uint64_t NK_Check_State(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 27120);
  if (v3 >= 0x258)
  {
    v4 = 0;
    while (*(a3 + 7080 + v4) != 1 || *(result + v4) < 0x21u)
    {
      if (++v4 == 128)
      {
        return result;
      }
    }

    *(a3 + 1864) = 0;
    *(a2 + 241) = 1;
    *(a3 + 1868) = 0;
    *(a2 + 243) = 0;
    if (*(a3 + 20) >= 10)
    {
      *(a3 + 20) = 9;
    }

    if (v3 >= 0x384)
    {
      *(a2 + 27136) = 0;
    }
  }

  return result;
}

double Trop_Elev_MapF(uint64_t a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0.0;
  v2 = R8_EQ((a1 + 16), v4);
  result = 1.0;
  if (!v2)
  {
    return 1.0 / (*(a1 + 8) + 0.00143 / (*(a1 + 8) / *(a1 + 16) + 0.0445));
  }

  return result;
}

void Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, double a4, int a5)
{
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a4, a5);
  if (*(this + 66) == 1 && a3 >= -500.0 && a3 <= 18000.0)
  {
    sin(a2 * 0.0174532925);
  }
}

void Trop_Niell_MappingFunc::Set_MappingFunc_Params(uint64_t this, double a2, int a3)
{
  v4 = a3 - 1;
  if ((a3 - 1) > 0x16D)
  {
    v5 = 0;
    *(this + 65) = 0;
  }

  else if (*(this + 8) == a3 && (*(this + 65) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    *(this + 65) = 1;
    *(this + 8) = a3;
  }

  if (fabs(a2) > 90.0)
  {
    v6 = 0;
    *(this + 64) = 0;
LABEL_18:
    *(this + 66) = v6;
    return;
  }

  if (vabdd_f64(*this, a2) > 0.004 || (*(this + 64) & 1) == 0)
  {
    *(this + 64) = 1;
    *this = a2;
    if (v4 >= 0x16E)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = v4 > 0x16D;
  v8 = v5 ^ 1;
  if (v7)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
LABEL_17:
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Dry_Avg, NMF_a_Dry_Amp);
    *(this + 40) = v9;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Dry_Avg, NMF_b_Dry_Amp);
    *(this + 48) = v10;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Dry_Avg, NMF_c_Dry_Amp);
    *(this + 56) = v11;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Wet_Avg, 0);
    *(this + 16) = v12;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Wet_Avg, 0);
    *(this + 24) = v13;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Wet_Avg, 0);
    *(this + 32) = v14;
    v6 = 1;
    goto LABEL_18;
  }
}

void Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, int a4)
{
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a3, a4);
  if (*(this + 66) == 1)
  {
    fmax(sin(a2 * 0.0174532925), 0.001);
  }
}

void Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(Trop_Niell_MappingFunc *this, const double *a2, const double *a3)
{
  if (a2)
  {
    v3 = *(this + 2);
    if (*this < 0.0)
    {
      v3 = v3 + 182.625;
    }

    cos((v3 + -28.0) * 0.0172024238);
  }
}

double NVIC_EphInt2Real(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 14);
  v2.f64[0] = *(a1 + 20);
  v3 = 16 * *(a1 + 18);
  v2.f64[1] = *(a1 + 24);
  *(a2 + 20) = 16 * *(a1 + 16);
  *(a2 + 24) = v3;
  v4.f64[0] = *(a1 + 26);
  v4.f64[1] = *(a1 + 28);
  v5 = vmulq_f64(v4, xmmword_2990528B0);
  *(a2 + 32) = vmulq_f64(v2, xmmword_2990528A0);
  *(a2 + 48) = v5;
  v2.f64[0] = *(a1 + 30);
  LODWORD(v5.f64[0]) = *(a1 + 32);
  v2.f64[1] = *&v5.f64[0];
  v5.f64[0] = *(a1 + 36);
  v6.i64[0] = LODWORD(v5.f64[0]);
  v6.i64[1] = HIDWORD(v5.f64[0]);
  *&v4.f64[0] = *&vcvtq_f64_u64(v6);
  v6.i64[0] = SLODWORD(v5.f64[0]);
  v6.i64[1] = SHIDWORD(v5.f64[0]);
  v4.f64[1] = vcvtq_f64_s64(v6).f64[1];
  *(a2 + 64) = vmulq_f64(v2, xmmword_2990528C0);
  *(a2 + 80) = vmulq_f64(v4, xmmword_2990528D0);
  v2.f64[0] = *(a1 + 44);
  v6.i64[0] = SLODWORD(v2.f64[0]);
  v6.i64[1] = SHIDWORD(v2.f64[0]);
  v7 = vmulq_f64(vcvtq_f64_s64(v6), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v5.f64[0] = *(a1 + 52);
  v6.i64[0] = SLODWORD(v5.f64[0]);
  v6.i64[1] = SHIDWORD(v5.f64[0]);
  *(a2 + 96) = v7;
  *(a2 + 112) = vmulq_f64(vcvtq_f64_s64(v6), xmmword_2990528E0);
  v7.f64[0] = *(a1 + 60);
  v7.f64[1] = *(a1 + 64);
  v8 = vmovl_s16(*(a1 + 66));
  v6.i64[0] = v8.i32[2];
  v6.i64[1] = v8.i32[3];
  v9 = vcvtq_f64_s64(v6);
  v6.i64[0] = v8.i32[0];
  v6.i64[1] = v8.i32[1];
  *(a2 + 14) = *(a1 + 27);
  *(a2 + 144) = vmulq_f64(vcvtq_f64_s64(v6), vdupq_n_s64(0x3E20000000000000uLL));
  *(a2 + 160) = vmulq_f64(v9, xmmword_299052900);
  *(a2 + 128) = vmulq_f64(v7, xmmword_2990528F0);
  result = vcvtd_n_f64_s32(*(a1 + 74), 5uLL);
  *(a2 + 176) = result;
  return result;
}

void GLON_Alm_Apply_Corrns(uint64_t a1, double *a2, uint64_t a3, double a4, float64_t a5, double a6)
{
  v11 = a2[7];
  v12 = __sincos_stret(a2[8]);
  v13 = *(a1 + 8) + v11 * v12.__sinval;
  v14 = *(a1 + 16) + v11 * v12.__cosval;
  v15 = a2[4] + 1.09955743;
  v16 = sqrt(v14 * v14 + v13 * v13);
  *a3 = *a1 + a4;
  *(a3 + 8) = v16;
  v17.f64[0] = a5;
  v17.f64[1] = v15;
  *(a3 + 16) = vaddq_f64(v17, *(a1 + 24));
  if (fabs(v16) <= 2.22044605e-16)
  {
    *(a3 + 40) = 0;
    v18 = 0.0;
  }

  else if (fabs(v14) <= 2.22044605e-16)
  {
    if (v13 <= 0.0)
    {
      *(a3 + 40) = 0xBFF921FB54442D28;
      v18 = -1.57079633;
    }

    else
    {
      *(a3 + 40) = 0x3FF921FB54442D28;
      v18 = 1.57079633;
    }
  }

  else
  {
    v18 = atan2(v13, v14);
    *(a3 + 40) = v18;
  }

  *(a3 + 32) = *(a1 + 40) + a6 - v18;
}

void DD_Assist_GAL_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v102 = *MEMORY[0x29EDCA608];
  v82 = a4 + 25340;
  v8 = a4 + 20876;
  v96 = a4 + 17708;
  v92 = a2 - 241;
  v95 = a1 + 11416;
  v94 = a4 + 24044;
  v89 = a1 + 6520;
  v88 = a1 + 6556;
  v87 = a1 + 10552;
  v91 = a1 + 6628;
  v90 = (a1 + 6916);
  v86 = a1 + 6988;
  v9 = (a1 + 7240);
  v85 = a1 + 7240;
  do
  {
    if (*(*(a4 + 17616) + v7) == 1 && (v92 - *(v96 + 88 * v7)) > 0xFFFFF806)
    {
      goto LABEL_46;
    }

    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    memset(v98, 0, sizeof(v98));
    v97 = 0u;
    if (!Core_Get_GAL_Eph((v7 + 1), a2, &v97))
    {
      goto LABEL_8;
    }

    v10 = *(a4 + 17616);
    if (*(v10 + v7) == 1)
    {
      v11 = (v96 + 88 * v7);
      if (v97 <= *v11 && a2 - *v11 > -1801)
      {
LABEL_8:
        *(*(a4 + 17568) + 20 * v7 + 8) = 0;
        goto LABEL_46;
      }

      if (v97 - *v11 <= 10799 && Is_GAL_IntEph_Real(v96 + 88 * v7) && !Is_GAL_IntEph_Real(&v97))
      {
        *v11 = a2;
        goto LABEL_46;
      }
    }

    v12 = *(v95 + v7);
    if (v12 == 1 && (v101 & 0x1000000000000) != 0)
    {
      v13 = 0;
      v14 = (v101 & 0x100000000) == 0;
    }

    else if (v12 == 3 || !*(v95 + v7))
    {
      v13 = ((BYTE4(v101) | BYTE6(v101)) & 1) == 0;
      v14 = v13;
    }

    else
    {
      v13 = BYTE6(v101) ^ 1;
      v14 = BYTE4(v101) ^ 1;
    }

    v15 = *(a4 + 17552);
    if ((*(v15 + v7) & 1) == 0 && ((v13 | v14) & 1) != 0 && (v16 = *(a4 + 17632), *(v16 + v7) == 1))
    {
      v17 = (v94 + 36 * v7);
      v18 = *v17;
      if (*v17 + 3600 > a2)
      {
        v19 = *(v17 + 34);
        v20 = *(v17 + 32);
        if (v12 == 1 && (v19 & 1) != 0)
        {
LABEL_33:
          v28 = 0;
          *(v15 + v7) = 0;
          v22 = v96 + 88 * v7;
          v26 = *(v22 + 4);
          v27 = *(a4 + 17568);
          v25 = 2;
          goto LABEL_34;
        }

        if (v12 == 3 || !*(v95 + v7))
        {
          v21 = ((v19 | v20) & 1) == 0;
          LOBYTE(v13) = v21 & v13;
          LOBYTE(v14) = v21 & v14;
        }
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v18 + 100 < a2)
      {
        *(*(a4 + 17592) + v7) = 0;
        *(v16 + v7) = 0;
        *(v89 + v7) = -1;
        *(v88 + 2 * v7) = 2048;
        *(v87 + 36 * gal_E1B_AlmSvId2SubframeId[v7] - 4) = 0;
        v15 = *(a4 + 17552);
        v10 = *(a4 + 17616);
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_33;
    }

    v22 = v96 + 88 * v7;
    v23 = v99;
    *(v22 + 32) = v98[1];
    *(v22 + 48) = v23;
    *(v22 + 64) = v100;
    *(v22 + 80) = v101;
    v24 = v98[0];
    *v22 = v97;
    *(v22 + 16) = v24;
    v25 = 1;
    *(*(a4 + 17584) + v7) = 1;
    *(v10 + v7) = 1;
    *(v15 + v7) = 1;
    v26 = *(v22 + 4);
    v27 = *(a4 + 17568);
    v28 = 1;
LABEL_34:
    if (v26 == 5)
    {
      *(v27 + 20 * v7 + 8) = v25;
      v29 = v14 & 1;
      *(*(a4 + 17560) + v7) = v29;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      *(*(a4 + 17576) + 20 * v7 + 8) = v30;
    }

    else
    {
      *(v27 + 20 * v7 + 12) = v25;
    }

    if (a2 >= 1 && v28)
    {
      *(*(a4 + 17640) + v7) = 1;
      Core_Save_GAL_Eph((v7 + 1), 0, v22);
      v15 = *(a4 + 17552);
    }

    v31 = 0;
    LODWORD(v32) = 0;
    v33 = p_NV;
    v34 = (p_NV + 7956);
    v36 = *v15;
    v35 = v15[1];
    *(p_NV + 7988) = *(v15 + 8);
    *v34 = v36;
    v34[1] = v35;
    v37 = 55665;
    do
    {
      v38 = *(v33 + 7952 + v31) ^ BYTE1(v37);
      v37 = 52845 * (v37 + v38) + 22719;
      v32 = (v32 + v38);
      ++v31;
    }

    while (v31 != 40);
    *(v33 + 7944) = v32;
    *(v91 + 8 * v7) = 0x400040004000400;
    v90[v7] = 1024;
    *(v86 + 2 * v7) = 1024;
    *(v95 + v7) = 0;
    v39 = (v85 + 92 * v7);
    *(v39 + 76) = 0u;
    v39[3] = 0u;
    v39[4] = 0u;
    v39[1] = 0u;
    v39[2] = 0u;
    *v39 = 0u;
LABEL_46:
    ++v7;
  }

  while (v7 != 36);
  v40 = a5;
  if (a2 >= 1)
  {
    v41 = 0;
    v42 = v90;
    do
    {
      if (*(*(a4 + 17552) + v41) == 1 && (*(*(v40 + 1648) + v41) & 1) == 0 && *(a3 + 56 + v41) <= 0xA5u && (*(*(a4 + 17624) + v41) != 1 || a2 - *v8 >= 241))
      {
        v101 = 0;
        v99 = 0u;
        v100 = 0u;
        memset(v98, 0, sizeof(v98));
        v97 = 0u;
        GAL_IntEph = EE_Get_GAL_IntEph((v41 + 1), a2, &v97);
        v44 = *(a4 + 17624);
        if (!GAL_IntEph || *(v44 + v41) == 1 && v97 <= *v8)
        {
          *(v44 + v41) = 0;
        }

        else
        {
          v45 = v98[0];
          *v8 = v97;
          *(v8 + 16) = v45;
          *(v8 + 80) = v101;
          v46 = v100;
          *(v8 + 48) = v99;
          *(v8 + 64) = v46;
          *(v8 + 32) = v98[1];
          *(*(a4 + 17584) + v41) = 1;
          *(v44 + v41) = 1;
          Debug_Log_GAL_Eph(2, &v97);
          *(v91 + 8 * v41) = 0x400040004000400;
          *v42 = 1024;
          v42[36] = 1024;
          *(v95 + v41) = 0;
          *(v9 + 76) = 0u;
          v9[3] = 0u;
          v9[4] = 0u;
          v9[1] = 0u;
          v9[2] = 0u;
          *v9 = 0u;
        }

        v40 = a5;
      }

      ++v41;
      v9 = (v9 + 92);
      ++v42;
      v8 += 88;
    }

    while (v41 != 36);
  }

  v47 = 0;
  v48 = a2 / 604800 - 1024;
  v97 = 0u;
  memset(v98, 0, 19);
  v49 = v48 + ((v48 >> 29) & 3);
  v93 = v49 >> 2;
  v84 = (v48 - (v49 & 0xFFFC));
  while (2)
  {
    if (*(*(a4 + 17632) + v47) == 1 && a2 - *(v94 + 36 * v47) < 1801 || !Core_Get_GAL_Alm((v47 + 1), a2, &v97) || *(*(a4 + 17632) + v47) == 1 && v97 <= *(v94 + 36 * v47))
    {
      goto LABEL_81;
    }

    v50 = *(v95 + v47);
    v51 = v50 != 1 || (BYTE2(v98[1]) & 1) == 0;
    if (!v51 || v50 == 2 && (BYTE1(v98[1]) & 1) != 0)
    {
      v52 = *(a4 + 17552);
      v53 = v52 + v47;
      goto LABEL_77;
    }

    if (v50 != 3 && *(v95 + v47))
    {
      v62 = 1;
    }

    else
    {
      v62 = (BYTE1(v98[1]) | BYTE2(v98[1])) ^ 1;
    }

    v52 = *(a4 + 17552);
    v53 = v52 + v47;
    if ((v62 & 1) == 0 || (*v53 & 1) != 0 || (v63 = *(a4 + 17616), *(v63 + v47) != 1))
    {
      if (v62)
      {
        goto LABEL_101;
      }

      goto LABEL_77;
    }

    v64 = (v96 + 88 * v47);
    v65 = *v64;
    if (*v64 + 3600 > a2)
    {
      if (v66 = *(v64 + 86), v50 == 1) && (v66 & 1) != 0 || (v67 = *(v64 + 85), v50 == 2) && (v67 & 1) != 0 || (v50 == 3 || !*(v95 + v47)) && ((v67 | v66))
      {
LABEL_77:
        *v53 = 0;
        goto LABEL_78;
      }
    }

    if (v65 + 100 < a2)
    {
      *(*(a4 + 17584) + v47) = 0;
      *(v63 + v47) = 0;
      *(v91 + 8 * v47) = 0x400040004000400;
      v90[v47] = 1024;
      *(v86 + 2 * v47) = 1024;
      *(v95 + v47) = 0;
      v68 = (v85 + 92 * v47);
      *(v68 + 76) = 0u;
      v68[3] = 0u;
      v68[4] = 0u;
      v68[1] = 0u;
      v68[2] = 0u;
      *v68 = 0u;
    }

LABEL_101:
    if (v84 > 1)
    {
      if (v84 == 2)
      {
        v69 = v93;
        if (!WORD5(v97))
        {
          v69 = v93 + 1;
        }
      }

      else if (v84 == 3)
      {
        v69 = v93;
        if (SWORD5(v97) < 2)
        {
          v69 = v93 + 1;
        }
      }

      else
      {
        EvCrt_Illegal_switch_default("DD_Assist_GAL_Alm", 668);
        v69 = v93;
      }
    }

    else if (v84)
    {
      v69 = v93;
    }

    else
    {
      v69 = v93 - (WORD5(v97) == 3);
    }

    WORD5(v97) += 4 * v69;
    v70 = v94 + 36 * v47;
    v71 = v98[0];
    *v70 = v97;
    *(v70 + 16) = v71;
    *(v70 + 32) = v98[1];
    *(*(a4 + 17592) + v47) = 1;
    *(*(a4 + 17632) + v47) = 1;
    v52 = *(a4 + 17552);
    *(v52 + v47) = 1;
    if (a2 >= 1)
    {
      Core_Save_GAL_Alm((v47 + 1), 0, v70);
      v52 = *(a4 + 17552);
    }

LABEL_78:
    v54 = 0;
    LODWORD(v55) = 0;
    v56 = p_NV;
    v57 = (p_NV + 7956);
    v59 = *v52;
    v58 = v52[1];
    *(p_NV + 7988) = *(v52 + 8);
    *v57 = v59;
    v57[1] = v58;
    v60 = 55665;
    do
    {
      v61 = *(v56 + 7952 + v54) ^ BYTE1(v60);
      v60 = 52845 * (v60 + v61) + 22719;
      v55 = (v55 + v61);
      ++v54;
    }

    while (v54 != 40);
    *(v56 + 7944) = v55;
    *(v89 + v47) = -1;
    *(v88 + 2 * v47) = 2048;
    *(v87 + 36 * gal_E1B_AlmSvId2SubframeId[v47] - 4) = 0;
LABEL_81:
    if (++v47 != 36)
    {
      continue;
    }

    break;
  }

  *(&v97 + 6) = 0;
  *&v97 = 0;
  if ((*(v82 + 4) - 4) > 2 || a2 - *v82 >= 1801)
  {
    if (Core_Get_GAL_GGTO(a2, &v97))
    {
      v73 = *v82;
      v72 = *(v82 + 4);
      if ((v72 - 7) < 0xFFFFFFFD || v97 > v73)
      {
        EvLog_v("DD_Assist_GAL_GGTO:  New GGTO:  Source %d > %d  or  GPS_secs %d > %d , A0G %d %d", DWORD1(v97), v72, v97, v73, SWORD4(v97), *(v82 + 8));
        *v82 = v97;
        *(a4 + 25360) = *v82;
        v74 = *(v82 + 10);
        *(a4 + 25368) = *(v82 + 8) * 2.91038305e-11;
        *(a4 + 25376) = v74 * 4.4408921e-16;
        *(v82 + 44) = 3600 * *(v82 + 12);
        *(v82 + 48) = *(v82 + 13);
        if (a2 >= 1)
        {
          v75 = 0;
          LODWORD(v76) = 0;
          v77 = p_NV;
          v78 = p_NV + 8000;
          *(p_NV + 8000) = v97;
          v79 = 55665;
          do
          {
            v80 = *(v78 + v75) ^ BYTE1(v79);
            v79 = 52845 * (v79 + v80) + 22719;
            v76 = (v76 + v80);
            ++v75;
          }

          while (v75 != 16);
          *(v77 + 7992) = v76;
        }
      }
    }
  }
}

void NK_Set_Accuracy(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v110 = a4;
  v144 = *MEMORY[0x29EDCA608];
  v11 = (a6 + 27116);
  v12 = a7 + 61568;
  if (*(a7 + 62539) == 1)
  {
    if (*(a7 + 61672) > 30000.0)
    {
      *(a7 + 61672) = 0x40DD4C0000000000;
    }

    if (*(a7 + 61680) > 30000.0)
    {
      *(a7 + 61680) = 0x40DD4C0000000000;
    }

    if (*(a7 + 61688) > 30000.0)
    {
      *(a7 + 61688) = 0x40DD4C0000000000;
    }

    if (*(a7 + 61576) > 900000000.0)
    {
      *(a7 + 61576) = 0x41CAD27480000000;
    }

    if (*(a7 + 61584) > 900000000.0)
    {
      *(a7 + 61584) = 0x41CAD27480000000;
    }

    if (*(a7 + 61592) > 900000000.0)
    {
      *(a7 + 61592) = 0x41CAD27480000000;
    }
  }

  v13 = *(a7 + 61624);
  if (v13 >= *(a7 + 61632))
  {
    v13 = *(a7 + 61632);
  }

  if (v13 <= *(a7 + 61640))
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a7 + 61640);
  }

  v15 = a7 + 61992;
  *(a7 + 62032) = v14;
  v16 = v14;
  if ((*(a7 + 24) & 1) == 0)
  {
    if (*(a6 + 27136) || (v17 = 0.0, *(a7 + 20) >= 9))
    {
      v17 = v14;
    }

    v16 = sqrt(v17 + *v12 * 8.98755179e10);
  }

  v18 = 0;
  v19 = *(a7 + 61600);
  v20 = *(a7 + 61648);
  v21 = *(a7 + 61656);
  *(a7 + 62040) = v16;
  *(a7 + 62048) = v20;
  *(a7 + 62088) = v21;
  *v15 = *(a7 + 61672);
  v22 = *(a7 + 61688);
  v23 = *(a7 + 61576);
  v24 = *(a7 + 61584);
  v25 = (a7 + 62008);
  *(a7 + 62008) = sqrt(v23 + v24);
  *(a7 + 62016) = v22;
  v109 = (a7 + 62024);
  *(a7 + 62024) = sqrt(v23 + v24 + *(a7 + 61592));
  v26 = 0.0;
  v27 = *(a7 + 61608);
  v28 = *(a7 + 61712);
  *(a7 + 62056) = sqrt(v19 + 0.0 + v27);
  *(a7 + 62064) = v28;
  do
  {
    v26 = v26 + *(a7 + 61600 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  *(a7 + 62072) = sqrt(v26);
  v29 = *(a7 + 62080);
  v30 = *(a7 + 1824) * *(a7 + 1824);
  v31 = *(a7 + 1816) * *(a7 + 1816);
  if (v30 < 0.000001 && v31 < 0.000001)
  {
    v31 = 0.000001;
    v30 = 0.000001;
  }

  v32 = 57.2957795 / (v31 + v30) * ((v19 * v30 + v27 * v31) * (57.2957795 / (v31 + v30)));
  v33 = 0.5;
  if (!*(a6 + 27249))
  {
    v33 = 1.0;
  }

  v34 = 20.0;
  if (*(a7 + 1840) >= v33)
  {
    v34 = 10.0;
  }

  v35 = sqrt(v32);
  v36 = *(a7 + 1848);
  if (v36 >= 4.0 || v35 >= v34 || *(a7 + 62124) > 7u)
  {
    if (v35 >= 180.0)
    {
      v37 = *(a6 + 27232) < v33;
      v38 = v35;
      if (v37)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    *(a7 + 79844) = 1;
    v35 = v34;
  }

  v39 = v35 - v29;
  if (*(a6 + 27204) != 3 || (v38 = v29, v29 < 180.0) && (v38 = v29, v39 <= 1.0))
  {
    if (v36 >= 4.0)
    {
      v38 = v35;
    }

    else
    {
      v38 = v35;
      if (v39 > 5.0)
      {
        v38 = v29 + fmin(0.93 / fmax(fabs(v39), 2.22044605e-16) + 0.07, 0.25) * v39;
      }
    }
  }

LABEL_45:
  v108 = (a6 + 68160);
  if (v29 < 180.0)
  {
    v40 = fabs(*(a6 + 27288));
    if (v40 > 3.0)
    {
      v41 = v40 * 0.5;
      if (v38 < v41)
      {
        *(a7 + 79845) = 1;
        v38 = v41;
      }
    }
  }

  *(a7 + 62080) = fmin(v38, 180.0);
  v42 = (a7 + 62096);
  v43 = (a7 + 62104);
  Comp_ErrorEllipse(v23, v24, *(a7 + 61720), (a7 + 62096), (a7 + 62104), (a7 + 62112));
  if (*(a7 + 1868) <= 1 && *(a7 + 1864) == 1)
  {
    v44 = *v42;
    if (*v42 < 9999000.0 && v44 > 1000.0)
    {
      v45 = v44 / *v43;
      if (v45 > 50.0)
      {
        *v43 = *v43 * v45 * 0.04;
      }
    }
  }

  if (!a1 || *a7 <= a1)
  {
    EvLog_v("TTick_Restart Test: %u %u", 2, a1);
  }

  if ((*(a6 + 241) & 1) == 0 && !*(a7 + 1872) && (*v11 - 3) >= 0xFFFFFFFE)
  {
    v46 = *v42;
    if (*v42 > 18.0 && *(a7 + 6800) <= 0.03 && (*a7 - a1) <= 4999)
    {
      if (v11[5] || (v47 = 0.0, *(a7 + 20) >= 9))
      {
        v47 = v14 * 1.11265006e-17;
      }

      if ((*(a7 + 24) & 1) == 0)
      {
        v47 = v47 + *v12 * 0.000001;
      }

      v48 = sqrt(v47) * 1000000.0;
      v49 = -0.5;
      if (v48 > 0.0)
      {
        v49 = 0.5;
      }

      v50 = v48 + v49;
      if (v50 <= 2147483650.0 && (v50 < -2147483650.0 || v50 <= 99900))
      {
        v52 = 0;
        v53 = 0;
        v54 = a7 + 7080;
        do
        {
          if (*(v54 + v52) == 1 && (*(v54 + 4 * v52 + 256) - 1) >= 0x1E && *(a2 + v52) > 0x23u)
          {
            ++v53;
          }

          ++v52;
        }

        while (v52 != 128);
        if (v53 >= 6)
        {
          v55 = dbl_299052930[*v11 == 1] * v46;
          if (v55 < 18.0)
          {
            v55 = 18.0;
          }

          *v42 = v55;
          if (v55 < *v43)
          {
            *v43 = v55;
          }

          v56 = *(v12 + 448);
          v57 = v56;
          if (v56 > 50.0)
          {
            v57 = v56 * 0.8;
            *(v12 + 448) = v56 * 0.8;
            if (v56 * 0.8 < 50.0)
            {
              *(v12 + 448) = 0x4049000000000000;
              v57 = 50.0;
            }
          }

          EvLog_v("NK_Set_Accuracy: Reset pos acc H %g %g V %g %g", v46, v55, v56, v57);
        }
      }
    }
  }

  v58 = *(a7 + 6800);
  if (*(v12 + 553) <= 5u && v58 <= *(a6 + 26976))
  {
    v58 = *(a6 + 26976);
  }

  v59 = fmin(v58, 100.0);
  if (v59 > 25.0)
  {
    v60 = 0;
    v61 = (a7 + 7336);
    v62 = (v110 + 736);
    v63 = (a7 + 12072);
    v64 = 128;
    memset(v143, 0, 128);
    v65 = 0.0;
    v66 = a7;
    v67 = v143;
    do
    {
      if (((*(v66 + 7080) & 1) != 0 || *v61) && *(v66 + 57) == 1)
      {
        v68 = *v67;
        *v67 = 1;
        v69 = *v62;
        if (v69 != 255)
        {
          *(v143 + v69) = 1;
        }

        v60 += v68 ^ 1;
        v70 = fabs(*v63);
        if (v70 > v65)
        {
          v65 = v70;
        }
      }

      ++v63;
      ++v62;
      ++v67;
      ++v66;
      ++v61;
      --v64;
    }

    while (v64);
    v71 = sqrt(v59);
    v72 = *v15;
    v73 = *v25;
    v74 = *v109;
    v75 = v65 / v109->f64[0];
    if (v60 <= 7)
    {
      v75 = 9999999.0;
    }

    if (v71 >= v75)
    {
      v71 = v75;
    }

    *(v12 + 480) = v71 * *(v12 + 480);
    *v15 = vmulq_n_f64(v72, v71);
    *v25 = vmulq_n_f64(v73, v71);
    *v109 = vmulq_n_f64(v74, v71);
    *(v12 + 528) = vmulq_n_f64(*(v12 + 528), v71);
  }

  if (*(a5 + 45) != 1 || *(a5 + 1854) == 1)
  {
    v76 = v25->f64[0];
    if (v25->f64[0] < 100.0)
    {
      v77 = *(a7 + 6792);
      if (v77 <= 10.0)
      {
        v78 = 1.0;
      }

      else
      {
        *&v143[0] = 0;
        v78 = 1.0;
        if (!R8_EQ((a7 + 6792), v143))
        {
          v78 = log10(v77);
        }
      }

      v79 = *(v12 + 554);
      if (v79 - 1 <= 0xD)
      {
        v78 = v78 * (((15.0 - v79) / 15.0 + 1.0) * ((15.0 - v79) / 15.0 + 1.0));
      }

      bzero(v143, 0x400uLL);
      v80 = 0;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v81 = (a7 + 7336);
      v113 = 0u;
      v114 = 0u;
      v82 = (a7 + 12072);
      v83 = 242;
      v84 = a7;
      *v111 = 0u;
      v112 = 0u;
      do
      {
        if (((*(v84 + 7080) & 1) != 0 || *v81 && *v82 > 0.0) && *(v84 + 57) == 1)
        {
          *(v143 + v80) = v82[944] * *(a6 + 8 * v83);
          v111[v80] = v80;
          ++v80;
        }

        ++v84;
        v83 += 5;
        ++v82;
        ++v81;
      }

      while (v83 != 882);
      if (v80)
      {
        VecSortIndexAscR8(v143, v80, v111, 1);
        if (v80 >= 16)
        {
          v85 = v80 >= 0x15 ? (75 * v80 + 99) / 0x64u : 15;
          v86 = v80 >= 0x19 ? 25 : v80;
          v80 = (75 * v80 + 99) / 0x64u;
          if (v85 < v86)
          {
            v87 = &v111[v85];
            v88 = v86 - v85;
            v89 = v85 + 1;
            v80 = v85;
            do
            {
              v90 = *v87++;
              if (*(v143 + v90) > 0.0)
              {
                v80 = v89;
              }

              ++v89;
              --v88;
            }

            while (v88);
          }
        }

        v91 = fabs(*(v143 + v111[v80 - 1])) / (v78 * (*v42 + *v43) * 0.5);
        if (v91 > 1.0)
        {
          v78 = v78 * v91;
        }
      }

      if ((*(a6 + 241) & 1) != 0 || v11[1] > *(a6 + 16) || *(a7 + 1872) != 1)
      {
        v93 = 0;
      }

      else
      {
        v92 = *(a6 + 148);
        if (v92 >= *(a6 + 152))
        {
          v92 = *(a6 + 152);
        }

        if (v92 >= *(a6 + 156))
        {
          v92 = *(a6 + 156);
        }

        v93 = v92 > 0xA;
      }

      v94 = v93 && *(a7 + 20) > 9;
      v95 = 1.2;
      if (!v94)
      {
        v95 = 2.0;
      }

      v96 = 8.0;
      if ((v94 & (a3 < 6)) != 0)
      {
        v96 = 4.0;
      }

      if (v78 < v96)
      {
        v96 = v78;
      }

      *(v12 + 936) = v96;
      if (v78 < v95)
      {
        v95 = v78;
      }

      *(v12 + 944) = v95;
      if (v79)
      {
        v97 = v95 * 0.1 + v108[1] * 0.9;
        *v108 = v96 * 0.1 + *v108 * 0.9;
        v108[1] = v97;
      }

      v98 = (v79 > 2u) & v94;
      if (v79 > 5u)
      {
        v98 = 1;
      }

      v99 = *v108;
      if (v77 < 100.0)
      {
        if (v98)
        {
          if (v76 * v99 >= 399.0)
          {
            v99 = 399.0 / v76;
            *v108 = 399.0 / v76;
            if (v108[1] > 399.0 / v76)
            {
              v108[1] = v99;
            }
          }
        }
      }

      *(v12 + 464) = v99 * *(v12 + 464);
      *v15 = vmulq_n_f64(*v15, v99);
      v100 = v76 * v99;
      *(v12 + 440) = v76 * v99;
      *(v12 + 528) = vmulq_n_f64(*(v12 + 528), v99);
      v101 = v108[1] * *(v12 + 448);
      *(v12 + 448) = v101;
      *(v12 + 456) = sqrt(v101 * v101 + v100 * v100);
    }
  }

  v102 = *(v12 + 464);
  if (*(v12 + 472) < v102)
  {
    *(v12 + 472) = v102;
  }

  v103 = 16;
  v104 = vdupq_n_s64(0x4163125300000000uLL);
  do
  {
    v105 = vmovn_s64(vcgtq_f64(*v15, v104));
    if (v105.i8[0])
    {
      *v15 = 0x4163125300000000;
    }

    if (v105.i8[4])
    {
      *(v15 + 8) = 0x4163125300000000;
    }

    v15 += 16;
    v103 -= 2;
  }

  while (v103);
}

uint64_t XofBaseType::ValidateUnsignedRange(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, const char *a6)
{
  v16 = *MEMORY[0x29EDCA608];
  v7 = a3 >= a2 && a4 <= a2 || a5 == a2;
  v8 = v7;
  if (!v7 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a6[23] < 0)
    {
      a6 = *a6;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Range error. Field Name: [ %s ], Valid Range: [ %llu .. %llu ] and value: [ %llu ]\n", v13, "GNC", 87, "ValidateUnsignedRange", a6, a4, a3, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return v8;
}

uint64_t XofBaseType::ValidateSignedRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v16 = *MEMORY[0x29EDCA608];
  v7 = a3 >= a2 && a4 <= a2 || a5 == a2;
  v8 = v7;
  if (!v7 && g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (a6[23] < 0)
    {
      a6 = *a6;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Range error. Field Name: [%s], Valid Range: [ %lld .. %lld ] and value: [ %lld ]\n", v13, "GNC", 87, "ValidateSignedRange", a6, a4, a3, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return v8;
}

uint64_t XofBaseType::CopyDataFromBuffer(int a1, void *a2, unsigned int a3, size_t __n, unint64_t *a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (__n >= 9)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Invalid param: length of param is %d, which is > %lu\n", v7);
LABEL_7:
      gnssOsa_PrintLog(__str, 2, 1, 0);
      return 0;
    }

    return 0;
  }

  if (a2[1] - (*a2 + a3) < __n)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Insufficient data to decode, in the buffer!\n");
      goto LABEL_7;
    }

    return 0;
  }

  memcpy(a5 - __n + 8, (*a2 + a3), __n);
  *a5 = bswap64(*a5);
  return 1;
}

uint64_t GLON_EphInt2Real(uint64_t result, uint64_t a2)
{
  *a2 = *result;
  v2 = 900 * *(result + 13);
  *(a2 + 8) = *(result + 8);
  *(a2 + 12) = v2;
  v3 = *(result + 12);
  v4 = *(result + 32);
  v5 = *(result + 36);
  v6.f64[0] = *(result + 40);
  v7 = *(result + 52);
  *(a2 + 24) = *(result + 28) * 0.48828125;
  v6.f64[1] = v7;
  *(a2 + 32) = vmulq_f64(v6, xmmword_299052940);
  *(a2 + 48) = v4 * 0.48828125;
  v8 = *(result + 48);
  v6.f64[0] = *(result + 44);
  v6.f64[1] = *(result + 53);
  *(a2 + 56) = vmulq_f64(v6, xmmword_299052940);
  v6.f64[0] = v8;
  v9 = *(result + 54);
  *(a2 + 20) = v3;
  v6.f64[1] = v9;
  v10.f64[0] = *(result + 56);
  *(a2 + 72) = v5 * 0.48828125;
  v10.f64[1] = *(result + 60);
  *(a2 + 80) = vmulq_f64(v6, xmmword_299052940);
  *(a2 + 96) = vmulq_f64(v10, xmmword_299052950);
  *(a2 + 112) = vcvtd_n_f64_s32(*(result + 55), 0x1EuLL);
  *(a2 + 120) = *(result + 18);
  *(a2 + 124) = *(result + 22);
  *(a2 + 126) = *(result + 16);
  v11 = *(result + 14);
  v12 = (v11 >> 7) & 0x1F;
  v13 = (v11 >> 1) & 0x3F;
  if (v11)
  {
    v14 = 30;
  }

  else
  {
    v14 = 0;
  }

  *(a2 + 16) = v14 + 60 * v13 + 3600 * v12;
  return result;
}

__n128 NK_Publish_Nav_Soln(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2 + 61920;
  *a4 = *(a2 + 61920);
  *(a4 + 4) = *(a2 + 61924);
  if (*(a4 + 16) == 1)
  {
    v9 = *(a3 + 136) ^ 1;
LABEL_3:
    *(a4 + 16) = v9;
    goto LABEL_7;
  }

  if ((*(a3 + 136) & 1) == 0 && *(a3 + 148) >= 2u && !*(a3 + 160))
  {
    v9 = 1;
    goto LABEL_3;
  }

LABEL_7:
  *(a4 + 17) = *(a2 + 61933);
  *(a4 + 19) = *(a2 + 61934);
  *(a4 + 24) = *(a3 + 20);
  memcpy((a4 + 32), (a2 + 1512), 0x160uLL);
  v10 = *(a4 + 376);
  if (v10 < 0.0)
  {
    do
    {
      v10 = v10 + 360.0;
    }

    while (v10 < 0.0);
    *(a4 + 376) = v10;
  }

  if (v10 > 360.0)
  {
    do
    {
      v10 = v10 + -360.0;
    }

    while (v10 > 360.0);
    *(a4 + 376) = v10;
  }

  v11 = (a3 + 24576);
  v12 = *(a4 + 352);
  *(a4 + 952) = *(a4 + 336);
  *(a4 + 968) = v12;
  *(a4 + 984) = *(a4 + 368);
  *(a4 + 992) = v10;
  *(a4 + 18) = *(a2 + 1864);
  *(a4 + 12) = *(a2 + 1868);
  memcpy((a4 + 384), (a2 + 62120), 0x17CuLL);
  v13 = *(a2 + 61936);
  v14 = *(a2 + 61952);
  v15 = *(a2 + 61968);
  *(a4 + 816) = *(a2 + 61984);
  *(a4 + 784) = v14;
  *(a4 + 800) = v15;
  *(a4 + 768) = v13;
  v16 = *(a2 + 62024);
  v17 = *(a2 + 62040);
  v18 = *(a2 + 62008);
  *(a4 + 824) = *(a2 + 61992);
  *(a4 + 840) = v18;
  *(a4 + 856) = v16;
  *(a4 + 872) = v17;
  v20 = *(a2 + 62088);
  v19 = *(a2 + 62104);
  v21 = *(a2 + 62072);
  *(a4 + 888) = *(a2 + 62056);
  *(a4 + 904) = v21;
  *(a4 + 920) = v20;
  *(a4 + 936) = v19;
  *(a4 + 912) = fmin(fmax(*(a4 + 912), 1.0), 180.0);
  *(a4 + 888) = fmax(*(a4 + 888), 0.01);
  v22 = a3 + 16136;
  v23 = a2 + 7336;
  v24 = (a1 + 2400);
  bzero((a4 + 1000), 0x700uLL);
  v25 = 0;
  v26 = 1000;
  do
  {
    v27 = a1 + 4 * v25;
    if (*(v27 + 1248) != 3)
    {
      v28 = (a4 + v26);
      *v28 = *(v27 + 96);
      v29 = (a4 + v25);
      v29[1512] = *(a1 + v25 + 736);
      v28[160] = *(v27 + 1248);
      v29[2152] = *(a1 + v25 + 1760);
      v29[2664] = *(a2 + v25 + 2416);
      if (*(v22 + 4 * v25) == 1)
      {
        v30 = *(v23 + v25 - 256) == 1 && (*(v23 + 4 * v25) - 31) < 0xFFFFFFE2;
        *(a4 + v25 + 2536) = v30;
      }

      v31 = *(v27 + 1248);
      if (v31 < 15)
      {
        if (v31 < 13)
        {
          v32 = *v24;
        }

        else
        {
          v32 = v24[128];
        }
      }

      else
      {
        v32 = v24[256];
      }

      *(a4 + 2 * v25 + 2280) = v32;
    }

    ++v25;
    ++v24;
    v26 += 4;
  }

  while (v25 != 128);
  if (!*(v8 + 4))
  {
    *(v8 + 201) = 0;
    *(v8 + 207) = 0;
    *(v8 + 212) = 0;
    *(v8 + 217) = 0;
    *(a4 + 385) = 0;
    *(a4 + 391) = 0;
    *(a4 + 396) = 0;
    *(a4 + 401) = 0;
    *(a4 + 2536) = 0u;
    *(a4 + 2552) = 0u;
    *(a4 + 2568) = 0u;
    *(a4 + 2584) = 0u;
    *(a4 + 2600) = 0u;
    *(a4 + 2616) = 0u;
    *(a4 + 2632) = 0u;
    *(a4 + 2648) = 0u;
  }

  memcpy((a4 + 2792), (a2 + 19624), 0x400uLL);
  *(a4 + 3816) = *(a2 + 6784);
  *(a4 + 3832) = v11[1248];
  *(a4 + 3840) = *(a2 + 21688);
  *(a4 + 3856) = v11[1249];
  result = *(a2 + 36592);
  *(a4 + 3864) = result;
  *(a4 + 3880) = v11[1250];
  return result;
}

__n128 SV_Data_Decode_Init(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v17 = *MEMORY[0x29EDCA608];
  v2 = (v1 + 52128);
  v3 = (v1 + 11419);
  bzero(__src, 0xCF84uLL);
  v4 = &__src[5668];
  v5 = 392;
  do
  {
    *(v4 - 3) = 0;
    *(v4 - 8) = 0;
    *(v4 - 3) = 0;
    *(v4 - 8) = 0;
    *(v4 - 1) = 0;
    *v4 = 0;
    v4 += 28;
    v5 -= 28;
  }

  while (v5);
  memset(&__src[6036], 0, 427);
  bzero(&__src[6464], 0x1461uLL);
  bzero(&__src[11682], 0xA1E0uLL);
  bzero(&__src[53124], 0x498uLL);
  memcpy(v1, __src, 0xD41CuLL);
  memset_pattern16(v1, &unk_299052980, 0xC0uLL);
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *(v1 + 192) = v6;
  *(v1 + 208) = v6;
  memset_pattern16((v1 + 224), &unk_299052980, 0x40uLL);
  *(v1 + 3584) = 0u;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(v1 + 3616) = v7;
  *(v1 + 3600) = 0u;
  *(v1 + 3632) = v7;
  memset_pattern16((v1 + 3648), &unk_299052980, 0x3CuLL);
  *(v1 + 3716) = -1;
  *(v1 + 3708) = -1;
  memset_pattern16((v1 + 3718), &unk_299052980, 0x14uLL);
  *(v1 + 6552) = -1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(v1 + 6520) = v8;
  *(v1 + 6536) = v8;
  memset_pattern16((v1 + 6556), &unk_299052960, 0x48uLL);
  memset_pattern16((v1 + 6628), &unk_299052970, 0x120uLL);
  memset_pattern16((v1 + 6916), &unk_299052970, 0x48uLL);
  memset_pattern16((v1 + 6988), &unk_299052970, 0x48uLL);
  v9 = xmmword_299050360;
  v10 = xmmword_299050240;
  v11 = vdupq_n_s64(4uLL);
  v12 = 36;
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), v10)), *v9.i8).u8[0])
    {
      *(v3 - 3) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v10)), *&v9).i8[2])
    {
      *(v3 - 2) = 0;
    }

    if (vuzp1_s16(*&v9, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x24uLL), *&v9))).i32[1])
    {
      *(v3 - 1) = 0;
      *v3 = 0;
    }

    v9 = vaddq_s64(v9, v11);
    v10 = vaddq_s64(v10, v11);
    v3 += 4;
    v12 -= 4;
  }

  while (v12);
  *(v1 + 11488) = -1;
  memset_pattern16((v1 + 11492), &unk_299052980, 0x7EuLL);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *(v1 + 11665) = v13;
  *(v1 + 11634) = v13;
  *(v1 + 11650) = v13;
  *(v1 + 11618) = v13;
  memset_pattern16((v1 + 11682), &unk_299052980, 0x7EuLL);
  for (i = 0; i != 252; i += 4)
  {
    *(v1 + 51876 + i) = -1;
    *v2 = -1;
    v2[756] = 0;
    v2[819] = -1;
    ++v2;
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(v1 + 53090) = result;
  *(v1 + 53106) = result;
  *(v1 + 53058) = result;
  *(v1 + 53074) = result;
  *(v1 + 53026) = result;
  *(v1 + 53042) = result;
  *(v1 + 53010) = result;
  return result;
}

uint64_t GN_GPS_Write_NMEA(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(1u, 4u, 1, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_NMEA", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return a1;
}

uint64_t GN_GPS_Write_GNB_Debug(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(0, 4u, 1, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_GNB_Debug", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return a1;
}

uint64_t GN_GPS_Write_Nav_Debug(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(2u, 4u, 1, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_Nav_Debug", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return a1;
}

uint64_t GN_GPS_Write_Event_Log(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    LbsOsaTrace_PrintAsciiBuf(3u, 4u, 0, a2, a1);
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 87, "GN_GPS_Write_Event_Log", 515, 0);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return a1;
}

uint64_t GN_GPS_Write_GNB_Ctrl(int a1, char *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Len,%u\n", v10);
LABEL_15:
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

LABEL_16:
    LOWORD(v3) = 0;
    return v3;
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v3 = a1;
  if (g_GncPStateInfo != 6 && g_GncPStateInfo != 9)
  {
    for (i = 0; i != v3; i += v7)
    {
      if (v3 - i >= 2043)
      {
        v7 = 2043;
      }

      else
      {
        v7 = v3 - i;
      }

      if (!Hal_SendAidingData(&a2[i]))
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v8 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx TotalLen,%u,Written,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GN_GPS_Write_GNB_Ctrl", 774, v3, i);
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        LOWORD(v3) = i;
        return v3;
      }
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      return v3;
    }

    bzero(__str, 0x3C6uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ReqLen,%u,SentLen,%u\n", v11);
    goto LABEL_10;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GncState,%hhu,IgnoredBytes,%hu\n", v9);
LABEL_10:
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  return v3;
}

BOOL GN_GPS_Hard_Reset_GNB(void)
{
  v4 = *MEMORY[0x29EDCA608];
  v0 = g_GncPStateInfo;
  if (g_GncPStateInfo == 9)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FWReset not done\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 73, "GN_GPS_Hard_Reset_GNB");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    Hal_GnssBaseBandReset(2);
  }

  return v0 != 9;
}

uint64_t GN_GPS_Wassenaar_ITAR_Speed_Exceeded(double a1, double a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Nav Output Inhibited:  Wassenaar / ITAR Export License speed exceeded:  %f > %f m/s\n\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 87, "GN_GPS_Wassenaar_ITAR_Speed_Exceeded", a1, a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  return 0;
}

_OWORD *Get_SS_Order(_OWORD *result)
{
  *(result + 202) = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[2] = 0u;
  v1 = 32;
  *result = PP_GPS_SS_Order_Table;
  result[1] = unk_2990529A0;
  do
  {
    if (v1 <= 0xD9)
    {
      *(result + v1) = v1 + 1;
    }

    ++v1;
  }

  while (v1 != 56);
  for (i = 0; i != 36; ++i)
  {
    if ((i + 56) <= 0xD9)
    {
      *(result + i + 56) = PP_GAL_SS_Order_Table[i] + 56;
    }
  }

  for (j = 0; j != 63; ++j)
  {
    if ((j + 92) <= 0xD9)
    {
      *(result + j + 92) = PP_BDS_SS_Order_Table[j] + 92;
    }
  }

  for (k = 155; k != 165; ++k)
  {
    if (k <= 0xD9)
    {
      *(result + k) = k + 1;
    }
  }

  do
  {
    if (k <= 0xD9)
    {
      *(result + k) = k + 1;
    }

    ++k;
  }

  while (k != 179);
  return result;
}

void NK_Limited_Reset(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v100 = *MEMORY[0x29EDCA608];
  v7 = a2 + 60072;
  *(a1 + 176) = 0;
  if ((*(a1 + 136) & 1) == 0)
  {
    if ((*(a2 + 1864) & 1) == 0 && *(a2 + 62122) <= 2u && (!*(a1 + 27136) || *(a1 + 27120) >= 0x1Fu))
    {
      Comp_ErrorEllipse(*(a2 + 61576), *(a2 + 61584), *(a2 + 61720), &v91, &v92, &v93);
      v10 = v91 * v91;
      v91 = v91 * v91;
      v11 = *(v7 + 1456);
      v12 = *(v7 + 1464);
      if (v11 < v12)
      {
        v12 = *(v7 + 1456);
      }

      if (v12 > *(v7 + 1472))
      {
        v12 = *(v7 + 1472);
      }

      if (v10 + v12 >= 1600000000.0)
      {
        v13 = *(v7 + 72);
        if (v13 == 1 && *(v7 + 1488) < *(v7 + 112) * 0.25 || (v13 & 1) == 0 && *(v7 + 1488) < a4 * 99930819.3 * (a4 * 99930819.3) * 0.25)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (*v7 == 1 && v11 < *(v7 + 40) * 0.25)
        {
          goto LABEL_25;
        }

        if (*(v7 + 144) == 1)
        {
          if (!*v7 || v10 < *(v7 + 216) * 0.25)
          {
LABEL_25:
            for (i = 2; i != 14; ++i)
            {
              *(a1 + 976 + 8 * ((((i - 1) * i) >> 1) - 1)) = *(a1 + 976 + 8 * ((((i - 1) * i) >> 1) - 1)) * 1.15;
            }

            v15 = 0;
            v16 = vdupq_n_s64(0x3FF2666666666666uLL);
            do
            {
              *(a2 + 61512 + v15) = vmulq_f64(*(a2 + 61512 + v15), v16);
              v15 -= 16;
            }

            while (v15 != -96);
            v17 = 0;
            v18 = vdupq_n_s64(0x3FF2666666666666uLL);
            do
            {
              *(a2 + 61608 + v17) = vmulq_f64(*(a2 + 61608 + v17), v18);
              v17 -= 16;
            }

            while (v17 != -96);
            v19 = 0;
            v20 = vdupq_n_s64(0x3FF11EB851EB851FuLL);
            do
            {
              *(a2 + 61704 + v19) = vmulq_f64(*(a2 + 61704 + v19), v20);
              v19 -= 16;
            }

            while (v19 != -96);
          }
        }

        else if (!*v7 || !*(v7 + 144))
        {
          goto LABEL_25;
        }
      }
    }

    v8 = *(a1 + 136);
    if ((v8 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  v8 = 1;
LABEL_34:
  v21 = *(a1 + 140) - 61;
  if (v21 <= 4 && v21 != 2)
  {
    v23 = *(a1 + 168);
    Comp_NEDvar_UDU(a1 + 352, 0xCu, 6, (a2 + 1736), &v89);
    *(v7 + 1648) = v24;
    Comp_ErrorEllipse(*&v89, *(&v89 + 1), v24, &v91, &v92, &v93);
    v25 = v91 * v91;
    ud2var(a1 + 352, 0xCu, 1, 0xCu, (a2 + 61432));
    v26 = v90;
    if (v90 <= v25)
    {
      v26 = v25;
    }

    if (*(v7 + 1408) > v26)
    {
      v26 = *(v7 + 1408);
    }

    if (*(v7 + 1416) > v26)
    {
      v26 = *(v7 + 1416);
    }

    if (*(v7 + 1424) > v26)
    {
      v26 = *(v7 + 1424);
    }

    *(v7 + 1424) = v26;
    *(v7 + 1416) = v26;
    *(v7 + 1408) = v26;
    v27 = *(v7 + 1432);
    if (*(v7 + 1440) > v27)
    {
      v27 = *(v7 + 1440);
    }

    v28 = *(v7 + 1448);
    if (v28 <= v27)
    {
      v28 = v27;
    }

    v29 = fmax(v23, 9.0);
    if (a3 == 2)
    {
      v30 = *(a1 + 20);
      if (v30 <= 3)
      {
        v31 = 100.0;
        if (v30 != 3)
        {
          v31 = 4.0;
        }

        if (v29 * v28 > v31)
        {
          v32 = dbl_299052A40[v30];
          *(a1 + 20) = dword_299052A30[v30];
          v33 = v32 / v29;
          if (v28 > v33)
          {
            v28 = v33;
          }
        }
      }
    }

    v34 = 0;
    *(v7 + 1448) = v28;
    *(v7 + 1440) = v28;
    *(v7 + 1432) = v28;
    do
    {
      *(a2 + 61512 + v34) = vmulq_n_f64(*(a2 + 61512 + v34), v29);
      v34 -= 16;
    }

    while (v34 != -96);
    v35 = 2;
    do
    {
      *(&v89 + v35) = v29 * *(&v89 + v35);
      v36 = v35-- + 1;
    }

    while (v36 > 1);
    *(v7 + 1648) = v29 * *(v7 + 1648);
    bzero((a1 + 976), 0x270uLL);
    for (j = 0; j != 12; ++j)
    {
      *(a1 + 976 + 8 * ((((j + 1) * (j + 2)) >> 1) - 1)) = *(a2 + 61432 + 8 * j);
    }

    *(v7 + 1408) = v89;
    *(v7 + 1424) = v90;
    NK_Recompute_Sigmas(a1, a2);
    *(a1 + 136) = 0;
    *(a1 + 176) = 2;
    return;
  }

LABEL_64:
  if (v8)
  {
    return;
  }

  v75 = a3;
  v38 = 0;
  v39 = (a2 + 1736);
  v40 = (v7 + 1360);
  do
  {
    *(&v84 + v38) = *(a2 + 62540 + v38) ^ 1;
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        if (*(v7 + 1376) > 1000000000.0)
        {
          BYTE2(v84) = 0;
        }
      }

      else if (v38 == 3 && *(v7 + 1384) > 9.0)
      {
        HIBYTE(v84) = 0;
      }
    }

    else if (v38)
    {
      if (v38 == 1 && *(v7 + 1368) > 1000000000.0)
      {
        BYTE1(v84) = 0;
      }
    }

    else if (*v40 > 1000000000.0)
    {
      LOBYTE(v84) = 0;
    }

    if (*(&v84 + v38) == 1)
    {
      EvLog_v("NK_Limited_Reset: Partial reset requested for %d", v38);
    }

    ++v38;
  }

  while (v38 != 12);
  v41 = *(v7 + 2676);
  if (v41 > 0x1D4C0)
  {
    *(a2 + 1680) = 0;
    *(a2 + 1682) = 0;
    v84 = 16843009;
    v86 = 16843009;
LABEL_85:
    v42 = *(a2 + 1848);
    EvLog_v("NK_Limited_Reset: Partial reset velocity: %d  %d  ", v41, v42);
    v43 = v42 * v42;
    if (*(v7 + 2676) / 0xFA0u > v42)
    {
      *(a2 + 1616) = 0u;
      *(a2 + 1600) = 0u;
      *(a2 + 1584) = 0u;
      *(a2 + 1816) = 0u;
      *(a2 + 1832) = 0u;
      *(a2 + 1848) = 0u;
    }

    v85 = 1;
    v87 = 257;
    v88 = 1;
    goto LABEL_89;
  }

  if (v41 >= 0xFA0)
  {
    goto LABEL_85;
  }

  v43 = 0;
LABEL_89:
  v44 = 0;
  v45 = 0;
  v98 = 0u;
  *v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v46 = (v7 + 1360);
  do
  {
    if (*(&v84 + v44) == 1)
    {
      v47 = v46[49];
      if (*(a2 + 1872))
      {
        v47 = v47 + v47;
      }

      if (((v44 - 9) < 3 || v44 == 4) && v43 != 0)
      {
        v47 = v47 + v43;
      }

      *(&v94 + v44) = v47;
      ++v45;
      ++*(a1 + 27048 + 2 * v44);
      *v46 = v47;
    }

    ++v44;
    ++v46;
  }

  while (v44 != 12);
  v50 = *(&v95 + 1);
  if ((HIBYTE(v84) & (*(&v95 + 1) > 9.0)) != 0)
  {
    v50 = 9.0;
  }

  *(&v95 + 1) = v50;
  if ((v86 & 0x100) != 0)
  {
    Comp_NEDvar_UDU(a1 + 352, 0xCu, 6, (a2 + 1736), &v89);
    *(v7 + 1648) = v51;
    Comp_ErrorEllipse(*&v89, *(&v89 + 1), v51, &v91, &v92, &v93);
    v52 = v91 * v91;
    v91 = v52;
    if (v90 > v52)
    {
      v52 = v90;
    }

    *(&v97 + 1) = v52;
    *&v98 = v52;
    *&v97 = v52;
    *(a2 + 61480) = v89;
    *(a2 + 61496) = v90;
  }

  if (v87 == 1)
  {
    v53 = *(v7 + 1824);
    if (*(v7 + 1832) > v53)
    {
      v53 = *(v7 + 1832);
    }

    if (*(v7 + 1840) > v53)
    {
      v53 = *(v7 + 1840);
    }

    v54 = v53 + v53;
    if (v75 == 2)
    {
      v55 = *(a1 + 20);
      if (v55 <= 3)
      {
        v56 = 100.0;
        if (v55 != 3)
        {
          v56 = 4.0;
        }

        if (v54 > v56)
        {
          v76 = v54;
          Dynamics_Mode::Promote_Dynamic_Level((a1 + 20));
          v54 = v76;
        }
      }
    }

    v99[0] = v54;
    v99[1] = v54;
    *(&v98 + 1) = v54;
    *(v7 + 1448) = v54;
    *(a2 + 61504) = vdupq_lane_s64(*&v54, 0);
  }

  if (v86 == 1)
  {
    v57 = *(&v96 + 1) - *(v7 + 1496);
    if (v57 > 100.0)
    {
      v58 = 0;
      v59 = v57 * 0.25;
      do
      {
        if ((*(&v84 + v58) & 1) == 0)
        {
          v60 = v40[v58];
          if (v60 < 2.24688795e10)
          {
            v61 = v59 + v60 >= *(a2 + 61824 + 8 * v58) ? *(a2 + 61824 + 8 * v58) : v59 + v60;
            v62 = v61 - v60;
            if (v61 - v60 > 25.0)
            {
              v40[v58] = v61;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              *(&v78 + v58) = 0x3FF0000000000000;
              rnk1_core((a1 + 976), v58, v61 - v60, &v78, &v77);
              EvLog_v("NK_Limited_Reset:  dT_Sync partial reset - Q-Boost Clk:  %d  %d  new_sig %d", v58, sqrt(v62), sqrt(v61));
            }
          }
        }

        ++v58;
      }

      while (v58 != 3);
      v63 = 0;
      v64 = (v7 + 1408);
      do
      {
        if ((*(&v86 + v63 + 1) & 1) == 0)
        {
          v65 = *v64;
          if (*v64 < 2.24688795e10)
          {
            v66 = v59 + v65 >= v64[49] ? v64[49] : v59 + v65;
            v67 = v66 - v65;
            if (v66 - v65 > 25.0)
            {
              *v64 = v66;
              v82 = 0u;
              v83 = 0u;
              v78 = 0u;
              v79 = 0u;
              v68 = *v39;
              v80 = 0u;
              v81 = v68;
              *&v82 = *(v39 + 2);
              rnk1_core((a1 + 976), 9u, v67, &v78, &v77);
              EvLog_v("NK_Limited_Reset:  dT_Sync partial reset - Q-Boost Pos:  %d  %d  new_sig %d", v63, sqrt(v67), sqrt(v66));
            }
          }
        }

        ++v63;
        v39 = (v39 + 24);
        ++v64;
      }

      while (v63 != 3);
    }
  }

  if (v45)
  {
    if (v45 > 0xA)
    {
      if (v45 == 11)
      {
        v69 = -12;
        v70 = &v94;
        do
        {
          *&v78 = 0;
          if (R8_EQ(v70, &v78))
          {
            ud2var(a1 + 976, 0xCu, v69 + 13, 1u, v70);
          }

          ++v70;
        }

        while (!__CFADD__(v69++, 1));
      }

      bzero((a1 + 976), 0x270uLL);
      v72 = &v94;
      for (k = 2; k != 14; ++k)
      {
        v74 = *v72++;
        *(a1 + 976 + 8 * ((((k - 1) * k) >> 1) - 1)) = v74;
      }
    }

    else
    {
      Partial_Reset(12, &v94, (a1 + 976));
    }

    *(a1 + 68184) = *(a2 + 1512);
    *(a1 + 176) = 1;
    *(a1 + 152) = 0;
    NK_Recompute_Sigmas(a1, a2);
  }
}

_DWORD *Dynamics_Mode::Promote_Dynamic_Level(_DWORD *this)
{
  v1 = *this;
  if (v1 <= 6)
  {
    *this = dword_299052A60[v1];
  }

  return this;
}

double *NK_Recompute_Sigmas(double *result, double *a2)
{
  v2 = -12;
  v3 = a2 + 7679;
  do
  {
    v4 = v2 + 12;
    if (v2 + 12 > 5)
    {
      if (v4 > 8)
      {
        if (v2 == -3)
        {
          a2[7700] = a2[7688] + a2[194] * 0.0001;
        }

        else if (v2 == -2)
        {
          a2[7701] = a2[7689] + a2[194] * 0.0001;
        }

        else
        {
          a2[7702] = a2[7690] + a2[194] * 0.0001;
        }
      }

      else if (v2 == -6)
      {
        a2[7715] = a2[7715] + result[1940];
        a2[7697] = a2[7685] + result[1937];
      }

      else if (v2 == -5)
      {
        a2[7698] = a2[7686] + result[1938];
      }

      else
      {
        a2[7699] = a2[7687] + result[1939];
      }
    }

    else
    {
      if (v4 > 2)
      {
        if (v2 == -9)
        {
          v5 = *v3 + result[1936] * 0.0001;
        }

        else if (v2 == -8)
        {
          v5 = *v3 + a2[194] * 0.01;
        }

        else
        {
          v5 = *v3;
        }
      }

      else
      {
        v5 = *v3 + result[1936];
      }

      v3[12] = v5;
    }

    v3[24] = sqrt(v3[12]);
    ++v3;
  }

  while (!__CFADD__(v2++, 1));
  return result;
}

uint64_t Gnm01_01DefaultMsgHandler(unsigned __int8 *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 69, "Gnm01_01DefaultMsgHandler", 517);
    v6 = 1;
LABEL_10:
    gnssOsa_PrintLog(__str, v6, 1, 0);
    return 0;
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FSM:MID,%X,Srce,%u,Dest,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 87, "Gnm01_01DefaultMsgHandler", 519, *(a1 + 1), *a1, a1[1]);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v3 = *(a1 + 1);
  if (v3 <= 8520706)
  {
    if (v3 == 8389379)
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        return 0;
      }

      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNM_CLEAR_GNSS_CACHE discarded\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm01_01DefaultMsgHandler");
      v6 = 2;
      goto LABEL_10;
    }

    if (v3 == 8405248)
    {
      Gnm11_00ApiStatusCB(11, 0, 0, 18);
      return 0;
    }

    if (v3 != 8520195)
    {
      goto LABEL_28;
    }

    v7 = *(a1 + 3);
    if (v7[42])
    {
      free(v7[42]);
      v7 = *(a1 + 3);
    }

    v7[42] = 0;
    if (v7[12])
    {
      free(v7[12]);
      v7 = *(a1 + 3);
    }

    v7[12] = 0;
    if (v7[44])
    {
      free(v7[44]);
      v7 = *(a1 + 3);
    }

    goto LABEL_31;
  }

  if (v3 <= 8653570)
  {
    if (v3 != 8520707)
    {
      v4 = 8521475;
      goto LABEL_22;
    }

    v7 = *(a1 + 3);
    if (!v7)
    {
LABEL_32:
      *(a1 + 3) = 0;
      return 0;
    }

LABEL_31:
    free(v7);
    goto LABEL_32;
  }

  if (v3 != 8653571)
  {
    v4 = 8653827;
LABEL_22:
    if (v3 == v4)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (g_LbsOsaTrace_Config < 4)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No memory free done\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm01_01DefaultMsgHandler");
    v6 = 4;
    goto LABEL_10;
  }

LABEL_23:
  v8 = *(a1 + 2);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 2) = 0;
  return 0;
}

uint64_t UnCompact_GPS_BinEph(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 9) = *(a2 + 9);
  v2 = (a2 + 11);
  *(result + 10) = *(a2 + 10);
  v3 = result + 24;
  *(result + 11) = 0;
  *(result + 16) = 0;
  for (i = 21; i > 1; --i)
  {
    *v3 = *v2;
    *(v3 + 1) = v2[1];
    *(v3 + 2) = v2[2];
    v3 += 4;
    v2 += 3;
  }

  *(result + 104) = 0xFFFFFF;
  *(result + 108) = *(a2 + 71);
  *(result + 110) = *(a2 + 74);
  *(result + 114) = *(a2 + 78);
  return result;
}

uint64_t Vert_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v20[33] = *MEMORY[0x29EDCA608];
  if (*(a4 + 1) >= 1 && (*(a4 + 16) = 0, *a4 == 1))
  {
    v10 = a4[4];
    v11 = a7 - a4[3];
    a4[6] = v11;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v12 = a2[7];
    *(v17 + a1) = -a2[6];
    *(v17 + a1 + 1) = -v12;
    *(&v17[1] + a1) = -a2[8];
    v16 = 0.0;
    *(v17 + a3) = v11;
    umeas(a5, a3, v10, v17, v20, v19, &v16, a4[7]);
    v13 = v16;
    if (v16 <= 0.0)
    {
      v14 = 0;
      *a4 = 0;
      *(a4 + 16) = 1;
      ++*a6;
    }

    else
    {
      v13 = a4[4] * (v16 * (v20[a3] * v20[a3]));
      v14 = *a4;
    }

    a4[8] = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void Corr_Old_PR_Est(unsigned __int8 *a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, uint64_t a19, unsigned __int8 *a20, double *a21)
{
  v57 = *MEMORY[0x29EDCA608];
  v21 = a9 <= 5.0;
  v22 = a9 <= 5.0;
  v23 = fabs(a10);
  if (v21)
  {
    v24 = a6;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 <= 5995849.16 && v22;
  v26 = fabs(a11) <= 5995849.16 && v22;
  v27 = fabs(a12) <= 5995849.16 && v22;
  if (fabs(a13) > 30.0)
  {
    v22 = 0;
  }

  if (a7)
  {
    v28 = v25 & a2;
    v29 = v26 & a3;
    v30 = v27 & a4;
    v31 = v22 & a5;
    v32 = a7;
    v33 = a20;
    v34 = a1;
    v35 = a21;
    v36 = a7;
    while (1)
    {
      v37 = *v33++;
      if (v37 == 1)
      {
        v38 = *v34;
        if (v38 <= 3)
        {
          v39 = a14;
          if (v38 != 2)
          {
            v39 = a16;
            if (v38 != 3)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_25;
        }

        v39 = a15;
        if (v38 == 4)
        {
          goto LABEL_25;
        }

        if (v38 == 6)
        {
          v39 = a17;
LABEL_25:
          *v35 = *v35 - v39;
        }
      }

LABEL_26:
      ++v35;
      v34 += 4;
      if (!--v36)
      {
        if (v24)
        {
          v40 = 0;
          v41 = a19;
          while (a20[v40] != 1)
          {
LABEL_50:
            ++v40;
            v41 += 24;
            if (v40 == v32)
            {
              return;
            }
          }

          v42 = 0;
          v43 = *(a8 + 8 * v40);
          v44 = a19 + 24 * v40;
          v45 = 0.0;
          do
          {
            v45 = v45 + *(a18 + v42) * *(v41 + v42);
            v42 += 8;
          }

          while (v42 != 24);
          v46 = 0;
          v55 = 0uLL;
          v56 = 0;
          do
          {
            *(&v55 + v46) = *(v41 + v46) - -(*(a18 + v46) - v45 * *(v41 + v46)) / v43;
            v46 += 8;
          }

          while (v46 != 24);
          v47 = 0;
          v48 = 0.0;
          do
          {
            v48 = v48 + *(a18 + v47) * (*(v41 + v47) + *(&v55 + v47));
            v47 += 8;
          }

          while (v47 != 24);
          *v44 = v55;
          *(v44 + 16) = v56;
          v49 = v48 * 0.5 + a21[v40];
          a21[v40] = v49;
          v50 = &a1[4 * v40];
          v51 = *v50;
          if (v51 == 4)
          {
            if (!v30)
            {
              goto LABEL_45;
            }

            v49 = v49 - a12;
          }

          else
          {
            if (v51 == 2)
            {
              if (v29)
              {
                v49 = v49 - a11;
                goto LABEL_44;
              }

LABEL_45:
              a20[v40] = 0;
LABEL_46:
              v52 = v50[1];
              v21 = v52 > 0xF;
              v53 = (1 << v52) & 0xDD77;
              if (v21 || v53 == 0)
              {
                if (v31)
                {
                  a21[v40] = v49 - a13;
                }

                else
                {
                  a20[v40] = 0;
                }
              }

              goto LABEL_50;
            }

            if (!v28)
            {
              goto LABEL_45;
            }

            v49 = v49 - a10;
          }

LABEL_44:
          a21[v40] = v49;
          goto LABEL_46;
        }

LABEL_57:

        bzero(a20, v32);
        return;
      }
    }
  }

  if ((v24 & 1) == 0)
  {
    v32 = 0;
    goto LABEL_57;
  }
}

void *Init_DB_Acq_Aid_Table(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 184);
  v7 = *(a1 + 920);
  v8 = *(a1 + 904);
  *a3 = *(a1 + 32);
  v9 = *(a1 + 160);
  v10 = (*(a1 + 48) - *(a1 + 152)) * 1000.0;
  if (v10 <= 0.0)
  {
    v11 = -0.5;
  }

  else
  {
    v11 = 0.5;
  }

  v12 = v10 + v11;
  if (v12 >= -2147483650.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x80000000;
  }

  if (v12 <= 2147483650.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  *(a3 + 36) = v14;
  *(a3 + 44) = *(a1 + 56);
  v15 = (*(a1 + 216) - v9) * 1000.0;
  if (v15 <= 0.0)
  {
    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = v15 + v16;
  if (v17 <= 2147483650.0)
  {
    if (v17 >= -2147483650.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0x80000000;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  *(a3 + 48) = v18;
  v35[0] = 0.0;
  API_Get_UTC_Cor(1, v35);
  if (v35[0] <= 0.0)
  {
    v19 = -0.5;
  }

  else
  {
    v19 = 0.5;
  }

  v20 = v35[0] + v19;
  if (v35[0] + v19 <= 2147483650.0)
  {
    if (v20 >= -2147483650.0)
    {
      v21 = v20;
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = -1;
  }

  *(a3 + 52) = v21;
  v22 = (a3 + 72);
  v23 = 123;
  do
  {
    *(v22 + 30) = 0uLL;
    *v22 = 0uLL;
    v22[1] = 0uLL;
    v22 += 3;
    --v23;
  }

  while (v23);
  result = memset((a3 + 5976), 255, 0x5F6uLL);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *(a3 + 8592) = 0;
  *(a3 + 8596) = 0;
  do
  {
    v29 = v28 + 1;
    if (*(a2 + 50616 + v27) == 1)
    {
      v30 = 0;
      *(a3 + 6630 + 2 * v25++) = v29;
      *(a3 + 8593) = v25;
    }

    else
    {
      *(a3 + 7066 + 2 * v26++) = v29;
      *(a3 + 8595) = v26;
      v30 = 3;
    }

    *(a3 + 7720 + 4 * v27++) = v30;
    v28 = v27;
  }

  while (v27 != 218);
  v31 = fabs(v6);
  v32 = sqrt(v8 * v8 + v7 * v7);
  v33 = (v6 * 1000000000.0);
  v34 = 3 * (v32 + 1313.75887);
  if (v32 >= 21500.0)
  {
    LOWORD(v34) = -536;
  }

  if (v31 >= 0.000032768)
  {
    LOWORD(v33) = 0;
  }

  *(a3 + 4) = v34;
  *(a3 + 6) = -1;
  *(a3 + 14) = 0x7FFF7FFF7FFFFFFFLL;
  *(a3 + 22) = -256;
  *(a3 + 24) = v33;
  *(a3 + 26) = 0xFFFF;
  *(a3 + 30) = -154;
  *(a3 + 56) = 0;
  *(a3 + 60) = *(a1 + 24);
  *(a3 + 8670) = 3584;
  *(a3 + 8600) = 0u;
  *(a3 + 8616) = 0u;
  *(a3 + 8632) = 0u;
  *(a3 + 8648) = 0u;
  *(a3 + 8662) = 0;
  *(a3 + 8680) = a2 + 17328;
  *(a3 + 8688) = a2 + 17424;
  return result;
}

__int128 *Comp_Cur_Acq_Aid(__int128 *result, uint64_t a2)
{
  *(a2 + 4) = 0;
  *(a2 + 8) = *(result + 2);
  *(a2 + 16) = *(result + 8);
  if (*(result + 4) == 1)
  {
    v3 = result;
    v4 = *a2 - *result;
    if (*a2 == *result)
    {
      v5 = *result;
      v6 = result[2];
      *(a2 + 16) = result[1];
      *(a2 + 32) = v6;
      *a2 = v5;
    }

    else if (v4 <= 150000)
    {
      *(a2 + 12) = *(result + 3);
      v7 = *(result + 10);
      *(a2 + 41) = *(result + 41);
      v8 = *(result + 7);
      *(a2 + 32) = *(result + 8) - v4 + (v4 << 10);
      v9 = (a2 + 32);
      *(a2 + 20) = v7;
      *(a2 + 18) = *(result + 9);
      *(a2 + 26) = *(result + 13);
      *(a2 + 24) = *(result + 24);
      *(a2 + 38) = *(result + 19);
      v10 = v4 * v7;
      if (v4 * v7 < 0)
      {
        HIWORD(v10) = (v4 * v7 + 0xFFFF) >> 16;
      }

      v11 = *(result + 11);
      *(a2 + 22) = v11 + HIWORD(v10);
      *(a2 + 28) = v8;
      v12 = (*(result + 11) + (v11 + HIWORD(v10))) * v4;
      *(a2 + 40) = *(result + 40);
      v13 = (v12 / 2) * 0.000000649350649;
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
          v16 = v15;
        }

        else
        {
          v16 = 0x80000000;
        }
      }

      else
      {
        v16 = 0x7FFFFFFF;
      }

      v17 = vcvtd_n_s64_f64(v13 - v16, 0x10uLL) + *(result + 18);
      v18 = v17 - 0x1FFFF;
      if (v17 < 0x1FFFF)
      {
        v18 = 0;
      }

      v19 = v18 + 0xFFFF;
      v20 = v17 - (v19 & 0x7FFF0000) - 0x10000;
      v21 = v16 + HIWORD(v19);
      if (v17 >= 0x10000)
      {
        v16 = v21 + 1;
        v17 = v20;
      }

      v22 = -65536 - v17;
      if (v17 > 0xFFFF0000)
      {
        v22 = 0;
      }

      if (v17 < 0)
      {
        v23 = v16 + ~((v22 + 0xFFFF) >> 16);
      }

      else
      {
        v23 = v16;
      }

      v24 = v17;
      result = Inc_CA_Chips(v23, v9, (a2 + 28));
      *(a2 + 36) = v24;
      *(a2 + 43) = *(v3 + 43);
      *(a2 + 44) = *(v3 + 44);
      *(a2 + 4) = 1;
    }
  }

  return result;
}

uint64_t GncP12_41HandleClearPosData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    memset(&v18, 0, sizeof(v18));
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ,Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP12_41HandleClearPosData", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 12);
    g_GnssDataClrMask = v5;
    if ((v5 & 0x40000) != 0)
    {
      v7 = "FACT";
    }

    else if ((v5 & 0x10000) != 0)
    {
      v7 = "COLD";
    }

    else
    {
      if ((v5 & 0x20000) == 0)
      {
        if ((v5 & 4) != 0)
        {
          std::string::push_back(&v18, 80);
          v5 = *(a1 + 12);
        }

        if ((v5 & 8) != 0)
        {
          std::string::push_back(&v18, 84);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x80) != 0)
        {
          std::string::push_back(&v18, 70);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x10) != 0)
        {
          std::string::push_back(&v18, 73);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x20) != 0)
        {
          std::string::push_back(&v18, 85);
          v5 = *(a1 + 12);
        }

        if (v5)
        {
          std::string::push_back(&v18, 69);
          v5 = *(a1 + 12);
        }

        if ((v5 & 2) != 0)
        {
          std::string::push_back(&v18, 65);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x40) != 0)
        {
          std::string::push_back(&v18, 72);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x800) != 0)
        {
          std::string::push_back(&v18, 67);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x200) != 0)
        {
          GncP24_02XofDeleteData(2);
          v5 = *(a1 + 12);
        }

        if ((v5 & 0x400) != 0)
        {
          GncP24_02XofDeleteData(1);
        }

LABEL_35:
        v8 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        v9 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        size = v18.__r_.__value_.__l.__size_;
        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = v18.__r_.__value_.__l.__size_;
        }

        if (v11)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v12 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &v18;
            }

            else
            {
              v13 = v18.__r_.__value_.__r.__words[0];
            }

            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ValidClearReq DeleteReq,%s\n", v12, "GNC", 73, "GncP12_41HandleClearPosData", v13);
            gnssOsa_PrintLog(__str, 4, 1, 0);
            v8 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
            size = v18.__r_.__value_.__l.__size_;
            v9 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
          }

          if (v9 >= 0)
          {
            v14 = &v18;
          }

          else
          {
            v14 = v18.__r_.__value_.__r.__words[0];
          }

          if (v9 >= 0)
          {
            v15 = v8;
          }

          else
          {
            v15 = size;
          }

          GncP16_27UpdateStateClearNVReqRcvd(v14, v15, a3);
          if (g_GncPStateInfo > 0x10u)
          {
            goto LABEL_53;
          }

          v16 = 1;
          if (((1 << g_GncPStateInfo) & 0x10C08) != 0)
          {
            goto LABEL_56;
          }

          if (((1 << g_GncPStateInfo) & 0x14) == 0)
          {
LABEL_53:
            v16 = 0;
          }

          GncP04_21SendClearGnssAck(v16);
        }

        else
        {
          GncP04_21SendClearGnssAck(1);
        }

LABEL_56:
        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }

        return 0;
      }

      v7 = "WARM";
    }

    MEMORY[0x29C296100](&v18, v7);
    goto LABEL_35;
  }

  if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP12_41HandleClearPosData", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  return 0;
}

void sub_298FE3670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP12_04HandleGpsRefTime(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_04HandleGpsRefTime");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = *(a1 + 12);
    v5 = *(a1 + 32);
    v4 = *(a1 + 36);
    v15[0] = v5;
    v15[1] = v3;
    v16 = 0;
    v6 = *(a1 + 24);
    LOWORD(v16) = *(a1 + 24);
    if ((v4 - 3) < 4 || v4 == 8)
    {
      v8 = *(a1 + 16);
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v14 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Src\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP12_04HandleGpsRefTime", 770);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      v8 = 0xFFFF;
    }

    HIWORD(v16) = v8;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v9 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G RefTime OSTime,%u,TOW,%d,WeekNo,%d,RMS,%d\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP12_04HandleGpsRefTime", v5, v3, v6, v8);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    if ((GN_AGPS_Set_Ref_Time(v15) & 1) == 0 && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v10 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:G Time\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP12_04HandleGpsRefTime", 257);
      v11 = 2;
LABEL_17:
      gnssOsa_PrintLog(__str, v11, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v12 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_04HandleGpsRefTime", 517);
    v11 = 1;
    goto LABEL_17;
  }

  return 0;
}

uint64_t GncP12_02HandleGpsNavModel(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_02HandleGpsNavModel");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a1)
  {
    if (!g_LbsOsaTrace_Config)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP12_02HandleGpsNavModel", 517);
    v14 = 1;
LABEL_22:
    gnssOsa_PrintLog(__str, v14, 1, 0);
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      return 0;
    }

    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP12_02HandleGpsNavModel", 513);
    v14 = 2;
    goto LABEL_22;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = g_LbsOsaTrace_Config;
  v6 = v3 + 38;
  do
  {
    memset(&v24[16], 0, 20);
    *v24 = 0u;
    v23 = 0u;
    *&v22[1] = 0u;
    v17 = *(v6 - 38) + 1;
    v18 = *(v6 - 37);
    v19 = *(v6 - 18);
    v20 = *(v6 + 10);
    v21 = *(v6 - 34);
    *v22 = *(v6 - 5);
    *&v22[5] = *(v6 - 15);
    *&v22[7] = *(v6 + 9);
    *&v22[9] = *(v6 - 16);
    *&v22[11] = *(v6 - 4);
    *&v22[13] = *v6;
    *&v22[15] = *(v6 + 17);
    LOWORD(v23) = *(v6 - 1);
    WORD1(v23) = *(v6 + 18);
    WORD2(v23) = *(v6 + 4);
    WORD3(v23) = *(v6 + 3);
    WORD4(v23) = *(v6 + 12);
    WORD5(v23) = *(v6 + 11);
    HIDWORD(v23) = *(v6 - 6);
    *v24 = *(v6 + 2);
    *&v7 = *(v6 + 10);
    *(&v7 + 1) = *(v6 + 26);
    *&v24[4] = v7;
    *&v24[20] = *(v6 + 38);
    *&v24[28] = 0;
    *&v24[31] = 0;
    if (v5 >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Eph SvId,%d,CodeOnL2,%d,URA,%d,SVHealth,%d,FitIntFlag,%d,AODA,%d,L2PFlag,%d,TGD,%d,AF2,%d,Week,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_02HandleGpsNavModel", v17, v18, v19, HIBYTE(v19), v20, HIBYTE(v20), v21, v22[0], v22[1], *&v22[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v9 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Eph TOC,%d,TOE,%d,IODC,%d,Af1,%d,dn,%d,IDot,%d,Crs,%d,Crc,%d,Cus,%d,Cuc,%d\n", (*&g_MacClockTicksToMsRelation * v9), "GNC", 73, "GncP12_02HandleGpsNavModel", *&v22[5], *&v22[7], *&v22[9], *&v22[11], *&v22[13], *&v22[15], v23, SWORD1(v23), SWORD2(v23), SWORD3(v23));
        gnssOsa_PrintLog(__str, 4, 1, 0);
        if (g_LbsOsaTrace_Config >= 4)
        {
          bzero(__str, 0x3C6uLL);
          v10 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: ASST:G Eph Cis,%d,Cic,%d,af0,%d,M0,%d,e,%d,APowHalf,%d,Omega0,%d,I0,%d,W,%d,OmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP12_02HandleGpsNavModel", SWORD4(v23), SWORD5(v23), HIDWORD(v23), *v24, *&v24[4], *&v24[8], *&v24[12], *&v24[16], *&v24[20], *&v24[24]);
          gnssOsa_PrintLog(__str, 4, 1, 0);
        }
      }
    }

    v11 = GN_AGPS_Set_Eph_El(&v17);
    v5 = g_LbsOsaTrace_Config;
    if ((v11 & 1) == 0 && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v12 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ASST:G EPH SatID,%u\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 87, "GncP12_02HandleGpsNavModel", 257, v17);
      gnssOsa_PrintLog(__str, 2, 1, 0);
      v5 = g_LbsOsaTrace_Config;
    }

    ++v4;
    v6 += 84;
  }

  while (v4 < *(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
LABEL_16:
    free(v3);
  }

  *(a1 + 16) = 0;
  return 0;
}