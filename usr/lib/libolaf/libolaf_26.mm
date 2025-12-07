uint64_t DD_Delete_Bad_GAL_Data(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 17908;
  v7 = a2 + 2092;
  v8 = a1 + 13009;
  v9 = (a1 + 13046);
  v10 = a1 + 17044;
  v11 = a2 + 2884;
  result = 7680;
  do
  {
    if (*(a2[2074] + v5) == 1)
    {
      *(v8 + 8 * v5 + 109) = 0x400040004000400;
      v9[180] = 1024;
      v9[216] = 1024;
      *(v6 + v5) = 0;
      v13 = (v8 + v2 + 723);
      *(v13 + 76) = 0uLL;
      v13[3] = 0uLL;
      v13[4] = 0uLL;
      v13[1] = 0uLL;
      v13[2] = 0uLL;
      *v13 = 0uLL;
      *(a2[2074] + v5) = 0;
      *(a2[2072] + v5) = 0;
      *(a2[2076] + v5) = 0;
      *(v7 + 79) = 0;
      *(v7 + 3) = 0uLL;
      *(v7 + 4) = 0uLL;
      *(v7 + 1) = 0uLL;
      *(v7 + 2) = 0uLL;
      *v7 = 0uLL;
      *(a2[2082] + v5) = 0;
      *(a2[2079] + v5) = 1;
      v14 = p_NV + 8 * v3;
      *(v14 + 9400) = 0xFFFFFFFFLL;
      *(v14 + 9408) = 0uLL;
      *(v14 + 9424) = 0uLL;
      *(v14 + 9440) = 0uLL;
      *(v14 + 9456) = 0uLL;
      *(v14 + 9472) = 0uLL;
      *(v14 + 9487) = 0;
    }

    if (*(a2[2075] + v5) == 1)
    {
      *(v8 + v5) = -1;
      *v9 = 2048;
      *(v10 + 36 * gal_E1B_AlmSvId2SubframeId[v5] - 4) = 0;
      *(a2[2075] + v5) = 0;
      *(a2[2073] + v5) = 0;
      *(a2[2078] + v5) = 0;
      *(v11 + 31) = 0;
      *v11 = 0uLL;
      *(v11 + 1) = 0uLL;
      *(a2[2082] + v5) = 0;
      v15 = p_NV;
      *(p_NV + 8 * v4 + 7672) = 0xFFFFFFFFLL;
      v16 = v15 + result;
      *(v16 + 31) = 0;
      *v16 = 0uLL;
      *(v16 + 16) = 0uLL;
    }

    ++v5;
    result += 48;
    v4 += 6;
    v3 += 12;
    v11 = (v11 + 36);
    ++v9;
    v7 += 11;
    v2 += 92;
  }

  while (v5 != 36);
  return result;
}

uint64_t DD_Delete_Inhib_GAL_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 17908;
  v8 = a3 + 2092;
  v9 = a2 + 13009;
  v10 = (a2 + 13046);
  v11 = a2 + 17044;
  v12 = a3 + 2884;
  v13 = 7680;
  do
  {
    if (*(result + v6) == 1)
    {
      *(v9 + 8 * v6 + 109) = 0x400040004000400;
      v10[180] = 1024;
      v10[216] = 1024;
      *(v7 + v6) = 0;
      v14 = (v9 + v3 + 723);
      *(v14 + 76) = 0uLL;
      v14[3] = 0uLL;
      v14[4] = 0uLL;
      v14[1] = 0uLL;
      v14[2] = 0uLL;
      *v14 = 0uLL;
      *(a3[2074] + v6) = 0;
      *(a3[2072] + v6) = 0;
      *(a3[2076] + v6) = 0;
      *(v8 + 79) = 0;
      *(v8 + 3) = 0uLL;
      *(v8 + 4) = 0uLL;
      *(v8 + 1) = 0uLL;
      *(v8 + 2) = 0uLL;
      *v8 = 0uLL;
      *(a3[2077] + v6) = 0;
      *(v8 + 3247) = 0;
      *(v8 + 202) = 0uLL;
      *(v8 + 201) = 0uLL;
      *(v8 + 200) = 0uLL;
      *(v8 + 199) = 0uLL;
      *(v8 + 198) = 0uLL;
      *(a3[2082] + v6) = 0;
      *(a3[2079] + v6) = 1;
      v15 = p_NV + 8 * v5;
      *(v15 + 9400) = 0xFFFFFFFFLL;
      *(v15 + 9408) = 0uLL;
      *(v15 + 9424) = 0uLL;
      *(v15 + 9440) = 0uLL;
      *(v15 + 9456) = 0uLL;
      *(v15 + 9472) = 0uLL;
      *(v15 + 9487) = 0;
      *(v9 + v6) = -1;
      *v10 = 2048;
      *(v11 + 36 * gal_E1B_AlmSvId2SubframeId[v6] - 4) = 0;
      *(a3[2075] + v6) = 0;
      *(a3[2073] + v6) = 0;
      *(a3[2078] + v6) = 0;
      *(v12 + 31) = 0;
      *v12 = 0uLL;
      *(v12 + 1) = 0uLL;
      v16 = p_NV;
      *(p_NV + 8 * v4 + 7672) = 0xFFFFFFFFLL;
      v17 = v16 + v13;
      *(v17 + 31) = 0;
      *v17 = 0uLL;
      *(v17 + 16) = 0uLL;
    }

    ++v6;
    v5 += 12;
    v13 += 48;
    v4 += 6;
    v12 = (v12 + 36);
    ++v10;
    v8 += 11;
    v3 += 92;
  }

  while (v6 != 36);
  return result;
}

uint64_t DD_Check_Age_GAL_Data(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (a1 < 1)
  {
    v7 = 0;
    return v7 & 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v26 = a3 + 23072;
  v8 = (a3 + 16736);
  v9 = a1 + 900;
  if (a1 <= 0x15180)
  {
    v10 = 86400;
  }

  else
  {
    v10 = a1;
  }

  v11 = v10 - 86400;
  v12 = *(a3 + 16608);
  v27 = (a1 - a2 / 0x3E8) & ~((a1 - a2 / 0x3E8) >> 31);
  do
  {
    if (*(v12 + v5) != 1)
    {
      goto LABEL_17;
    }

    v13 = *v8;
    if (*v8 < v11 && v13 >= 1)
    {
LABEL_15:
      v7 = 1;
      *(*(a3 + 16592) + v5) = 1;
      goto LABEL_17;
    }

    if (v13)
    {
      if (v13 > v9)
      {
        ++v6;
        if ((*(a3 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *v8 = v27;
    }

LABEL_17:
    ++v5;
    v8 += 22;
  }

  while (v5 != 36);
  if (v6 >= 1)
  {
    EvLog_v("DD_Check_Age_GAL_Data: Deleting future EPH [%d]", v6);
    if (*(a3 + 39302) == 1)
    {
      EvLog_v("DD_Check_Age_GAL_Data: Deleting future EPH Skipped [%d]", v6);
    }
  }

  v15 = 0;
  v16 = 0;
  if (a1 <= 15724800)
  {
    v17 = 15724800;
  }

  else
  {
    v17 = a1;
  }

  v18 = v17 - 15724800;
  v19 = v26;
  do
  {
    if (*(*(a3 + 16624) + v15) == 1)
    {
      v20 = *v19;
      if (*v19 >= v18 || v20 < 1)
      {
        if (v20)
        {
          if (v20 > v9)
          {
            ++v16;
            EvLog_v("DD_Check_Age_GAL_Data:  Future ALM deleted SV %d age %d thresh %d", v15 + 1, (a1 - v20) / 604800, 0);
            if ((*(a3 + 39302) & 1) == 0)
            {
              v7 = 1;
              *(*(a3 + 16600) + v15) = 1;
            }
          }
        }

        else
        {
          *v19 = v27;
        }
      }

      else
      {
        v7 = 1;
        *(*(a3 + 16600) + v15) = 1;
        EvLog_v("DD_Check_Age_GAL_Data:  Old ALM deleted SV %d age %d thresh %d", v15 + 1, (a1 - v20) / 604800, (a1 - v18) / 604800);
      }
    }

    ++v15;
    v19 += 9;
  }

  while (v15 != 36);
  if (v16 >= 1)
  {
    EvLog_v("DD_Check_Age_GAL_Data: Deleting future ALM [%d]", v16);
    if (*(a3 + 39302) == 1)
    {
      EvLog_v("DD_Check_Age_GAL_Data: Deleting future ALM Skipped [%d]", v16);
    }
  }

  if (*(v26 + 1300))
  {
    v22 = (v26 + 1296);
    v23 = *(v26 + 1296);
    if (v23 >= (a1 - 604800) || v23 < 1)
    {
      if (v23)
      {
        if (v23 > v9)
        {
          EvLog_v("DD_Check_Age_GAL_Data: Deleting future GGTO %d  %d", *v22, v9);
          if ((*(a3 + 39302) & 1) == 0)
          {
            goto LABEL_51;
          }

          EvLog("DD_Check_Age_GAL_Data: Deleting future GGTO Skipped [1]");
        }
      }

      else
      {
        *v22 = v27;
      }
    }

    else
    {
LABEL_51:
      *(v26 + 1302) = 0;
      *v22 = 0;
      *(a3 + 24384) = 0;
      *(a3 + 24400) = 0;
      *(a3 + 24392) = 0;
      *(a3 + 24406) = 0;
    }
  }

  return v7 & 1;
}

void DD_Save_New_GAL_INAV_Eph(int a1, uint64_t a2, void *a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a2 + 17944;
  v7 = a2 + 13732;
  v33 = a2 + 13009;
  v32 = a2 + 13046;
  v31 = a2 + 17044;
  v8 = 2092;
  v9 = 23106;
  v10 = 23072;
  do
  {
    if (*(v6 + v5) != 1)
    {
      goto LABEL_35;
    }

    v11 = *(v7 + 80);
    v12 = v6 + v5;
    v13 = *(v6 + v5 - 36);
    v14 = v13 != 1 || (v11 & 0x200) == 0;
    if (!v14 || (v13 == 2 ? (v15 = (v11 & 0x800) == 0) : (v15 = 1), !v15))
    {
      v19 = (a3[2070] + v5);
LABEL_33:
      *v19 = 0;
LABEL_34:
      *(a3[2071] + v4) = 2;
      *(v7 + 88) = 0;
      *(v6 + v5) = 0;
      *(v12 - 36) &= 0xFCu;
      goto LABEL_35;
    }

    v16 = (*(v7 + 80) & 0xA00) != 0 && v13 == 3;
    v17 = !v16;
    v18 = a3[2070];
    v19 = (v18 + v5);
    if (v16 || (*v19 & 1) != 0 || (v20 = a3[2078], *(v20 + v5) != 1))
    {
      *v19 = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *(a3 + v10);
      if (v21 + 3600 > a1 && (v13 == 1 && (*(a3 + v9) & 1) != 0 || v13 == 2 && (*(a3 + v9 - 1) & 1) != 0 || v13 == 3 && ((*(a3 + v9 - 1) | *(a3 + v9)) & 1) != 0))
      {
        goto LABEL_33;
      }

      if (v21 + 100 < a1)
      {
        *(a3[2073] + v5) = 0;
        *(v20 + v5) = 0;
        *(v33 + v5) = -1;
        *(v32 + 2 * v5) = 2048;
        *(v31 + 36 * gal_E1B_AlmSvId2SubframeId[v5] - 4) = 0;
        v18 = a3[2070];
      }

      *(v18 + v5) = 1;
    }

    *(a3[2071] + v4) = 1;
    *(a2 + 13736) = 4;
    GAL_I_EphBin2Int(v7, &a3[v8]);
    *(a3[2072] + v5) = 1;
    *(a3[2076] + v5) = 1;
    LODWORD(a3[v8]) = a1;
    *(a3[2081] + v5) = 0;
    *(v7 + 88) = 0;
    *(v6 + v5) = 0;
    *(v12 - 36) &= 0xFCu;
    if (a1 >= 1)
    {
      *(a3[2079] + v5) = 1;
      Core_Save_GAL_Eph((v5 + 1), 0, &a3[v8]);
    }

LABEL_35:
    ++v5;
    v8 += 11;
    v4 += 20;
    v9 += 36;
    v10 += 36;
    v7 += 92;
  }

  while (v5 != 36);
  v22 = 0;
  LODWORD(v23) = 0;
  v24 = a3[2070];
  v25 = p_NV;
  v26 = p_NV + 7612;
  v27 = *(v24 + 32);
  v28 = *(v24 + 16);
  *(p_NV + 7612) = *v24;
  *(v26 + 16) = v28;
  *(v25 + 7644) = v27;
  v29 = 55665;
  do
  {
    v30 = *(v25 + 7608 + v22) ^ BYTE1(v29);
    v29 = 52845 * (v29 + v30) + 22719;
    v23 = (v23 + v30);
    ++v22;
  }

  while (v22 != 40);
  *(v25 + 7600) = v23;
}

void DD_Proc_GAL_INAV_Data(unsigned __int16 *a1, uint64_t a2, int a3, int *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = a7;
  v11 = a2;
  v219[2] = *MEMORY[0x29EDCA608];
  if (a3 == 8)
  {
    v13 = 1;
    goto LABEL_5;
  }

  if (a3 == 10)
  {
    v13 = 2;
LABEL_5:
    *(a5 + a2 + 17908) |= v13;
  }

  v14 = *a1;
  v15 = v14 >> 10;
  if (v15 >= 0xB && v15 != 63)
  {
    *(a7[2082] + a2) = 1;
    return;
  }

  if (v15 > 0xA)
  {
    EvLog_v("DD_Proc_GAL_INAV_Data:  SV %d WordType %d Dummy Message: 0x%x 0x%x 0x%x 0x%x ...");
    return;
  }

  v16 = a5 + 17908;
  v17 = *(a5 + 17908 + a2);
  if (v17 != 2)
  {
    if (v17 != 1 || *a6 < 5)
    {
      goto LABEL_49;
    }

    v18 = (*(a6 + 24) + 0.5);
    v19 = (v18 % 30 - 2) >> 1;
    if (v19 <= 3)
    {
      if ((v18 % 30 - 2) >> 1 <= 1)
      {
        if (v19)
        {
          if (v19 == 1)
          {
LABEL_17:
            v20 = 4;
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        goto LABEL_44;
      }

      if (v19 != 2)
      {
        if (v19 == 3)
        {
          goto LABEL_33;
        }

LABEL_41:
        if ((v18 % 30 - 28) >= 0xFFFFFFE6)
        {
          goto LABEL_49;
        }

LABEL_42:
        v20 = 0;
        goto LABEL_48;
      }

LABEL_47:
      v20 = 6;
      goto LABEL_48;
    }

    if ((v18 % 30 - 2) >> 1 <= 0xA)
    {
      if (v19 != 4)
      {
        if (v19 != 10)
        {
          goto LABEL_41;
        }

LABEL_21:
        v20 = 1;
        goto LABEL_48;
      }

LABEL_30:
      v22 = v18 % 720 + ((-30583 * (v18 % 720)) >> 16);
      v23 = (((v22 >> 4) + (v22 >> 15)) & 1) == 0;
      v20 = 10;
      v24 = 8;
      goto LABEL_34;
    }

    if (v19 != 11)
    {
      if (v19 != 12)
      {
        goto LABEL_41;
      }

LABEL_39:
      v20 = 5;
      goto LABEL_48;
    }

LABEL_40:
    v20 = 3;
    goto LABEL_48;
  }

  if (*a6 < 5)
  {
    goto LABEL_49;
  }

  v18 = (*(a6 + 24) + 0.5);
  v21 = v18 % 30;
  if ((v18 % 30) < 3)
  {
    goto LABEL_21;
  }

  if ((v18 % 30 - 3) < 2)
  {
    goto LABEL_40;
  }

  if (v21 - 5 < 2)
  {
    goto LABEL_39;
  }

  if (v21 - 7 >= 2)
  {
    if (v21 - 9 >= 2)
    {
      if (v21 - 21 < 2)
      {
LABEL_44:
        v20 = 2;
        goto LABEL_48;
      }

      if (v21 - 23 < 2)
      {
        goto LABEL_17;
      }

      if (v21 - 25 >= 2)
      {
        if (v21 <= 0x1A)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      goto LABEL_47;
    }

    goto LABEL_30;
  }

LABEL_33:
  v25 = v18 % 720 + ((-30583 * (v18 % 720)) >> 16);
  v23 = (((v25 >> 4) + (v25 >> 15)) & 1) == 0;
  v20 = 9;
  v24 = 7;
LABEL_34:
  if (v23)
  {
    v20 = v24;
  }

LABEL_48:
  if (v20 != v14 >> 10)
  {
    EvCrt_v("DD_Proc_GAL_INAV_Data: Decoded GAL SV [%d] sigID [%d] INAV WordType num error act:%d Predi:%d", a2 + 1, a3, v14 >> 10, v20);
    return;
  }

LABEL_49:
  v26 = a2;
  if (v14 >> 10 > 4)
  {
    v30 = v15 - 7;
    if ((v15 - 7) < 4)
    {
      v31 = *a4;
      v219[0] = 0;
      v219[1] = 0;
      v218[0] = 0;
      v218[1] = 0;
      v216 = 0u;
      v217 = 0u;
      if (v14 >> 10 > 8)
      {
        if (v15 != 9)
        {
          v192 = a2;
          DD_Proc_GAL_INAV_GGTO_Word(a2, a1, v31, a7);
          v16 = a5 + 17908;
          v26 = v192;
          v30 = v15 - 7;
          goto LABEL_105;
        }

        v32 = (a1[4] >> 3) & 0x3F;
      }

      else if (v15 == 7)
      {
        v32 = (a1[1] >> 4) & 0x3F;
      }

      else
      {
        v32 = (a1[3] >> 15) & 0xFFFFFFC1 | (2 * (a1[2] & 0x1F));
      }

      if (v32 - 1 <= 0x23)
      {
        v60 = gal_E1B_AlmSvId2SubframeId[v32 - 1];
        goto LABEL_122;
      }

LABEL_105:
      if ((v31 < 1 || *(a6 + 5) != 1 || (v61 = v31, *a6 <= 4)) && (v61 = *(a5 + 17980), (v61 & 0x80000000) != 0))
      {
        LOBYTE(v63) = 0;
        v64 = -11;
      }

      else
      {
        v62 = 2185 * (v61 % 0x2D0);
        v63 = HIWORD(v62) + 1;
        if ((v62 & 0x10000) != 0)
        {
          v64 = -11;
        }

        else
        {
          v64 = -9;
        }
      }

      if ((v64 + (v14 >> 10)) >= 0xFEu)
      {
        v60 = v63;
      }

      else
      {
        v60 = 0;
      }

      if (a3 == 10 && v60)
      {
        if (v60 > 0xCu)
        {
          v65 = -12;
        }

        else
        {
          v65 = 12;
        }

        v60 += v65;
      }

LABEL_122:
      if ((v60 - 25) <= 0xE7u)
      {
        EvLog_v("DD_Proc_GAL_INAV_Alm: For SV %d WordType %d Alm SVID %d sfID %d not found. Word Type is discarded.");
        return;
      }

      v189 = v31;
      if (v60 == 24)
      {
        v66 = v7[2082];
        *(v66 + 32) = 0;
        *v66 = 0u;
        *(v66 + 16) = 0u;
      }

      v67 = a5 + 17044;
      v68 = (v60 - 1);
      v69 = (a5 + 17044 + 36 * v68);
      v70 = *a1;
      if (v15 >= 9)
      {
        v71 = -9;
      }

      else
      {
        v71 = -7;
      }

      v72 = (v71 + (v14 >> 10));
      *&v69[16 * v72] = *a1;
      v69[v72 + 32] = 1;
      v73 = v69 + 34;
      v69[v72 + 34] = (v70 >> 6) & 0xF;
      if (*(a6 + 5) != 1)
      {
        return;
      }

      v74 = *(a6 + 16);
      if (v74 < 1025)
      {
        return;
      }

      v75 = v69[32];
      if (v30 > 1)
      {
        if (!v69[32])
        {
          return;
        }

        if (v69[33] == 1 && v69[34] == v69[35])
        {
          v219[0] = a5 + 17044 + 36 * (v60 - 1);
          v218[0] = v69 + 16;
          v69[33] = 0;
          v75 = 1;
        }

        else
        {
          v75 = 0;
        }

        if (v15 == 9)
        {
          v86 = v60 - 2;
          if (!v68)
          {
            v86 = 23;
          }

          v87 = (v67 + 36 * v86);
          if (v87[33] == 1)
          {
            v88 = *v73;
            if (v88 == v87[35])
            {
              v219[v75] = v87 + 16;
              v218[v75] = v69;
              v85 = v75 + 1;
              if (v87[34] == v88)
              {
                v87[33] = 0;
              }

              goto LABEL_182;
            }
          }
        }
      }

      else
      {
        if (v69[32])
        {
          if (v69[33] == 1 && v69[34] == v69[35])
          {
            v219[0] = a5 + 17044 + 36 * (v60 - 1);
            v218[0] = v69 + 16;
            v69[32] = 0;
            v75 = 1;
          }

          else
          {
            v75 = 0;
          }
        }

        if (v15 == 8 && v69[33] == 1)
        {
          v83 = v60 <= 0x17u ? v60 : v60 - 24;
          v84 = v67 + 36 * v83;
          if (*(v84 + 32) == 1 && *v73 == *(v84 + 34))
          {
            v219[v75] = v69 + 16;
            v218[v75] = v84;
            v85 = v75 + 1;
LABEL_182:
            v188 = a5 + 13046;
            v185 = a5 + 13009;
            v178 = v7 + 2884;
            v89 = v85;
            v175 = v74 - 1024;
            v182 = 16 * (v74 - 1024);
            v180 = v74 & 3;
            v90 = 1861606989 * v31;
            v176 = v90 >> 50;
            v177 = v90 >> 63;
            while (1)
            {
              v91 = v219[v89 - 1];
              v92 = *v91 >> 10;
              if (v92 == 9)
              {
                if (((v91[4] >> 3) & 0x3F) == 0)
                {
                  goto LABEL_204;
                }
              }

              else if (v92 == 8)
              {
                if (!((v91[3] >> 15) & 0xFFFFFFC1 | (2 * (v91[2] & 0x1F))))
                {
                  goto LABEL_204;
                }
              }

              else if (v92 != 7 || ((v91[1] >> 4) & 0x3F) == 0)
              {
LABEL_204:
                if (v92 == 8 && (v60 & 1) == 0)
                {
                  v109 = -2;
                }

                else
                {
                  v109 = -1;
                }

                v110 = v109 + gal_E1B_SubframeId2AlmSvId[v68];
                if (v110 <= 0x23)
                {
                  *(v7 + v110 + 16664) = 1;
                }

                goto LABEL_212;
              }

              v93 = v218[v89 - 1];
              if (v93)
              {
                v94 = v7[2070];
                v95 = *(v16 + v26);
                v96 = v16;
                v97 = v26;
                GAL_INAV_ALM = Extract_GAL_INAV_ALM(v91, v93, &v216);
                v26 = v97;
                v16 = v96;
                if (GAL_INAV_ALM)
                {
                  DWORD1(v216) = 4;
                  v99 = (WORD5(v216) >> 4) & 0x3F;
                  if (v99)
                  {
                    if (v99 <= 0x24)
                    {
                      v100 = WORD4(v216);
                      v101 = (WORD4(v216) >> 6) & 0xF;
                      v102 = (WORD5(v216) >> 10) & 0xFFFFFC3F | ((BYTE8(v216) & 0xF) << 6);
                      v103 = v99 - 1;
                      v104 = (v99 - 1);
                      v105 = *(v188 + 2 * v104);
                      if (v101 != *(v185 + v104))
                      {
                        if (v102 <= v105 && (v105 - v102) <= 500)
                        {
                          goto LABEL_212;
                        }

                        *(v185 + v104) = v101;
                        *(v188 + 2 * v104) = v102;
                        v106 = BYTE10(v217);
                        v107 = BYTE10(v217) & 0x20;
LABEL_217:
                        v111 = (v100 >> 4) & 3;
                        HIDWORD(v217) = v182;
                        if (v180 == v111)
                        {
                          v112 = 0;
                        }

                        else
                        {
                          v112 = v111;
                        }

                        v113 = *(v96 + v103);
                        if (v113 == 1 && v107 || v113 == 2 && v106 < 0)
                        {
                          v114 = (v7[2070] + v103);
                          goto LABEL_225;
                        }

                        v134 = (v106 & 0xA0) != 0 && v113 == 3;
                        v135 = !v134;
                        v114 = (v7[2070] + v103);
                        if (v134 || (*v114 & 1) != 0)
                        {
                          *v114 = v135;
                          if (v135)
                          {
                            goto LABEL_256;
                          }
                        }

                        else
                        {
                          v136 = v7[2076];
                          if (*(v136 + v103) != 1)
                          {
                            goto LABEL_254;
                          }

                          v137 = &v7[11 * v103 + 2092];
                          v138 = *v137;
                          if (*v137 + 3600 <= v189 || ((v139 = *(v137 + 86), v113 != 1) || (*(v137 + 86) & 1) == 0) && ((v140 = *(v137 + 85), v113 != 2) || (v140 & 1) == 0) && (v113 != 3 || ((v140 | v139) & 1) == 0))
                          {
                            if (v138 + 100 < v189)
                            {
                              *(v7[2072] + v103) = 0;
                              *(v136 + v103) = 0;
                              *(a5 + 13118 + 8 * v103) = 0x400040004000400;
                              *(a5 + 13406 + 2 * v103) = 1024;
                              *(a5 + 13478 + 2 * v103) = 1024;
                              *(v96 + v103) &= 0xFCu;
                              v141 = (a5 + 13732 + 92 * v103);
                              *(v141 + 76) = 0u;
                              v141[3] = 0u;
                              v141[4] = 0u;
                              v141[1] = 0u;
                              v141[2] = 0u;
                              *v141 = 0u;
                              v114 = (v7[2070] + v103);
                            }

LABEL_254:
                            *v114 = 1;
LABEL_256:
                            v173 = v112;
                            *(v7[2071] + 20 * v103 + 4) = 1;
                            v194 = 0u;
                            memset(v195, 0, 19);
                            v142 = v99 - 1;
                            GAL_AlmBin2Int(&v216, &v194);
                            v213 = 0u;
                            memset(v214, 0, 27);
                            v211 = 0u;
                            v212 = 0u;
                            v210 = 0u;
                            v174 = v178 + 36 * v142;
                            GAL_AlmInt2Real(v174, &v210);
                            v200 = *(v214 + 8);
                            *&v201 = *(&v211 + 1);
                            *(&v201 + 1) = *&v212 + 0.977384381;
                            *&v202 = v213;
                            *(&v202 + 1) = *&v214[0];
                            *&v203 = *&v211 + 5440.5882;
                            *(&v203 + 1) = *(&v212 + 1);
                            LODWORD(v196) = 0;
                            HIDWORD(v196) = DWORD1(v210);
                            LODWORD(v197) = 3;
                            BYTE4(v197) = BYTE8(v210);
                            BYTE5(v197) = BYTE10(v214[1]) | (8 * BYTE9(v214[1]));
                            BYTE6(v197) = BYTE9(v210);
                            LOWORD(v198) = WORD5(v210) + 1024;
                            v199 = HIDWORD(v210);
                            *&v204 = *(&v213 + 1);
                            v143 = Kep_Check_Almanac(v176 + v177, &v196);
                            if (v143)
                            {
                              *(v7[2082] + v142) = 1;
                            }

                            v172 = v99 - 1;
                            if (ST_Check_Alm_Kep_Err("DD_Proc_GAL_INAV_Alm_Data:", v143, &v196))
                            {
                              GAL_AlmBin2Int(&v216, v174);
                              *(v174 + 10) = v173 + v175;
                              *v174 = v189;
                              *(v174 + 4) = 4;
                              *(v7[2073] + v172) = 1;
                              *(v7[2078] + v172) = 1;
                            }

                            v16 = v96;
                            v26 = v97;
                            if (v189 >= 1)
                            {
                              v144 = 0;
                              LODWORD(v145) = 0;
                              v146 = p_NV + 48 * v99;
                              v147 = *v174;
                              v148 = *(v174 + 16);
                              *(v146 + 7664) = *(v174 + 32);
                              *(v146 + 7648) = v148;
                              *(v146 + 7632) = v147;
                              v149 = 55665;
                              do
                              {
                                v150 = *(v146 + 7632 + v144) ^ BYTE1(v149);
                                v149 = 52845 * (v149 + v150) + 22719;
                                v145 = (v145 + v150);
                                ++v144;
                              }

                              while (v144 != 40);
                              *(v146 + 7624) = v145;
                            }

LABEL_227:
                            v115 = 0;
                            LODWORD(v116) = 0;
                            v117 = v7[2070];
                            v118 = p_NV;
                            v119 = p_NV + 7612;
                            v120 = *(v117 + 32);
                            v121 = *(v117 + 16);
                            *(p_NV + 7612) = *v117;
                            *(v119 + 16) = v121;
                            *(v118 + 7644) = v120;
                            v122 = 55665;
                            do
                            {
                              v123 = *(v118 + 7608 + v115) ^ BYTE1(v122);
                              v122 = 52845 * (v122 + v123) + 22719;
                              v116 = (v116 + v123);
                              ++v115;
                            }

                            while (v115 != 40);
                            *(v118 + 7600) = v116;
                            goto LABEL_212;
                          }

LABEL_225:
                          *v114 = 0;
                        }

                        *(v7[2071] + 20 * v103 + 4) = 2;
                        goto LABEL_227;
                      }

                      if ((*(v94 + v104) & 1) == 0 && v102 == v105)
                      {
                        v106 = BYTE10(v217);
                        v107 = BYTE10(v217) & 0x20;
                        if ((v95 != 1 || (BYTE10(v217) & 0x20) != 0) && (v95 != 2 || (BYTE10(v217) & 0x80) != 0) && (v95 != 3 || (BYTE10(v217) & 0xA0) != 0))
                        {
LABEL_231:
                          v124 = v178 + 36 * (v99 - 1);
                          LODWORD(v125) = *v124;
                          *v124 = v189;
                          if (v189 >= 1 && !v125)
                          {
                            v126 = 0;
                            v127 = p_NV;
                            v128 = p_NV + 48 * (v99 - 1);
                            v129 = *v124;
                            v130 = *(v124 + 1);
                            *(v128 + 7712) = *(v124 + 8);
                            *(v128 + 7696) = v130;
                            *(v128 + 7680) = v129;
                            v131 = v127 + 48 * v99 + 7632;
                            v132 = 55665;
                            do
                            {
                              v133 = *(v131 + v126) ^ BYTE1(v132);
                              v132 = 52845 * (v132 + v133) + 22719;
                              v125 = (v125 + v133);
                              ++v126;
                            }

                            while (v126 != 40);
                            *(v128 + 7672) = v125;
                          }

                          goto LABEL_212;
                        }

                        goto LABEL_217;
                      }

                      if (v102 == v105)
                      {
                        goto LABEL_231;
                      }
                    }
                  }
                }
              }

LABEL_212:
              if (!--v89)
              {
                return;
              }
            }
          }
        }
      }

      if (!v75)
      {
        return;
      }

      v85 = 1;
      goto LABEL_182;
    }

    if (v15 == 6)
    {
      *(a5 + 17980) = (a1[7] >> 3) & 0xFFF01FFF | ((a1[6] & 0x7F) << 13);
      return;
    }

    v56 = a4;
    v57 = a1[4];
    v58 = (v57 >> 9) & 1;
    v59 = (v57 >> 11) & 1;
    if (v17 == 1 && (v58 & 1) != 0 || v17 == 2 && (v59 & 1) != 0 || v17 == 3 && v59 | v58)
    {
      *(a7[2070] + a2) = 0;
      *(a7[2071] + 20 * a2) = 2;
      *(v16 + a2) &= 0xFCu;
      EvLog_v("DD_Proc_GAL_INAV_Data:  GAL Health H->U: SV %d E1B_HS %d E5b_HS %d ", a2 + 1, v58, v59);
      v34 = v7[2082];
      a4 = v56;
      v35 = (a5 + 17980);
      v36 = v11;
      v37 = a1;
      v33 = 0;
      goto LABEL_98;
    }

    v151 = a7[2070];
    if ((*(v151 + a2) & 1) == 0 && *(a7[2078] + a2) == 1)
    {
      v152 = *(a7 + 36 * a2 + 23105);
      v153 = *(a7 + 36 * a2 + 23106);
      if (v17 != 1 || (v153 & 1) != 0)
      {
        if (v17 != 2 || (v152 & 1) != 0)
        {
          if (v17 != 3 || (v153 & 1) != 0 || (v152 & 1) != 0)
          {
            if (g_Enable_Event_Log < 4u)
            {
              goto LABEL_281;
            }

            v169 = (a2 + 1);
            v154 = "DD_Proc_GAL_INAV_Data:  GAL Health U->U: SV %d Alm still unhealthy";
          }

          else
          {
            *(v151 + a2) = 1;
            *(a7[2071] + 20 * a2) = 1;
            v170 = v153;
            v171 = v152;
            v169 = (a2 + 1);
            v154 = "DD_Proc_GAL_INAV_Data:  GAL E1B-E5b Health U->H: SV %d Alm.E1B_HS %d Alm.E5b_HS %d";
          }
        }

        else
        {
          *(v151 + a2) = 1;
          *(a7[2071] + 20 * a2) = 1;
          v169 = (a2 + 1);
          v170 = v152;
          v154 = "DD_Proc_GAL_INAV_Data:  GAL E5b Health U->H : SV %d Alm.E5b_HS %d";
        }
      }

      else
      {
        *(v151 + a2) = 1;
        *(a7[2071] + 20 * a2) = 1;
        v169 = (a2 + 1);
        v170 = v153;
        v154 = "DD_Proc_GAL_INAV_Data:  GAL E1-B Health U->H : SV %d Alm.E1B_HS %d";
      }

      EvLog_v(v154, v169, v170, v171);
      v26 = v11;
      v16 = a5 + 17908;
    }

LABEL_281:
    a4 = v56;
    v45 = *v56;
    v47 = v7[2082];
    *(a5 + 13550 + 5 * v26 + 4) = 1;
    *(a5 + 92 * v26 + 13804) = *a1;
    v46 = v7 + 2082;
    v155 = a5 + 2 * v26;
    v156 = *(v155 + 13406);
    if (v156 == 1024)
    {
      v44 = 0;
      v51 = 0;
      *(a5 + 13550 + 5 * v26) = 0;
      *(v155 + 13478) = 1024;
    }

    else
    {
      if (*(a5 + 13478 + 2 * v26) == v156)
      {
        v44 = 0;
        v76 = 1;
        goto LABEL_158;
      }

      v44 = 0;
      v51 = 0;
      *(a5 + 13478 + 2 * v26) = v156;
    }

    v76 = 1;
    goto LABEL_141;
  }

  v27 = v15 - 1;
  if (v14 >> 10 > 1)
  {
    v28 = a5 + 92 * a2;
    if (v15 == 2)
    {
      v29 = 13756;
    }

    else if (v15 == 3)
    {
      v29 = 13772;
    }

    else
    {
      v29 = 13788;
    }

    goto LABEL_68;
  }

  if (!v15)
  {
    v33 = *(a5 + 92 * a2 + 13820) == 15;
    v34 = a7[2082];
    v35 = (a5 + 17980);
    v36 = a2;
    v37 = a1;
LABEL_98:

    DD_Proc_GAL_INAV_GST(v36, v37, v33, a4, v35, v34, a6);
    return;
  }

  v28 = a5 + 92 * a2;
  v29 = 13740;
LABEL_68:
  v38 = v28 + v29;
  v39 = (v14 - 5120);
  v40 = v14 & 0x3FF;
  if (v39 >= 0xF000)
  {
    v41 = v40;
  }

  else
  {
    v41 = 1024;
  }

  if (v39 >= 0xF000)
  {
    v43 = a5 + 92 * a2;
    if (((*(v43 + 13820) >> v27) & 1) == 0 && *(a7[2070] + a2) == 1 && *(a7[2076] + a2) == 1 && *(a5 + 8 * a2 + 2 * v27 + 13118) == v40)
    {
      v186 = a4;
      v183 = v41;
      DD_Proc_GAL_INAV_Eph_Bit_Validation(v15, a1, v38, (v43 + 13820), v41);
      LOWORD(v41) = v183;
      a4 = v186;
      v16 = a5 + 17908;
      v26 = v11;
      v44 = *(v43 + 13820) == 15;
    }

    else
    {
      v44 = 0;
    }

    v45 = *a4;
    v7 = a7;
    v46 = a7 + 2082;
    v47 = a7[2082];
    v48 = (v15 - 1);
    v49 = a5 + 8 * v26 + 2 * v27;
    v50 = *(v49 + 13118);
    v51 = v50 == v40;
    if (v50 != v40)
    {
      if (*(a5 + 13406 + 2 * v26) != v40)
      {
        v55 = a5 + 13550 + 5 * v26;
        *(v55 + 4) = 0;
        *v55 = 0;
        *(a5 + 13406 + 2 * v26) = v40;
      }

      *(a5 + 5 * v26 + v48 + 13550) = 1;
LABEL_140:
      v76 = 0;
      *(v49 + 13118) = v41;
      *v38 = *a1;
LABEL_141:
      v77 = (a5 + 13550 + 5 * v26);
      if (*v77 != 1 || v77[1] != 1 || v77[2] != 1)
      {
        goto LABEL_306;
      }

      if (v77[3] != 1)
      {
        goto LABEL_292;
      }

      if (v77[4] != 1)
      {
        goto LABEL_292;
      }

      v78 = *(a5 + 8 * v26 + 13118);
      if (v78 != *(a5 + 8 * v26 + 13120) || v78 != *(a5 + 8 * v26 + 13122) || v78 != *(a5 + 8 * v26 + 13124) || v78 != *(a5 + 2 * v26 + 13478))
      {
        goto LABEL_292;
      }

      v179 = v47;
      v181 = v7;
      v184 = v44;
      v190 = v16;
      v193 = v46;
      v187 = a4;
      memset(v195, 0, 71);
      v194 = 0u;
      v79 = v26;
      v80 = v45;
      GAL_I_EphBin2Int(a5 + 92 * v26 + 13732, &v194);
      v196 = 0;
      v197 = 0;
      v198 = 0;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v203 = 0u;
      v204 = 0u;
      v205 = 0u;
      memset(v206, 0, sizeof(v206));
      v207 = 0u;
      memset(v208, 0, sizeof(v208));
      v209 = 0;
      GAL_EphInt2Real(&v194, &v196);
      v210 = 0uLL;
      DWORD2(v211) = 0;
      *&v211 = 0;
      v212 = 0u;
      v213 = 0u;
      memset(v214, 0, sizeof(v214));
      v215 = 0;
      GAL_EphReal2Kep(&v196, &v210);
      v81 = Kep_Check_Ephemeris(v80 / 604800, v80 % 604800, &v210);
      v82 = v81;
      if (!ST_Check_Eph_Kep_Err("DD_Proc_GAL_INAV_Eph:", v81, &v210))
      {
        if ((v82 & 0x3F0) != 0)
        {
          *v77 = 0;
        }

        if ((v82 & 0xC00) != 0)
        {
          v77[2] = 0;
        }

        if ((v82 & 0xC) != 0)
        {
          v77[3] = 0;
LABEL_288:
          *(v179 + v79) = 1;
          goto LABEL_289;
        }

        if ((v82 & 0xFF0) != 0)
        {
          goto LABEL_288;
        }
      }

LABEL_289:
      v7 = v181;
      a4 = v187;
      v16 = v190;
      v26 = v79;
      v46 = v193;
      v44 = v184;
      if ((*v77 & 1) == 0 || (v77[1] & 1) == 0 || (v77[2] & 1) == 0)
      {
        goto LABEL_306;
      }

LABEL_292:
      if (v77[3] != 1)
      {
        goto LABEL_306;
      }

      if (v77[4] != 1)
      {
        goto LABEL_306;
      }

      v157 = *(a5 + 8 * v26 + 13118);
      if (v157 != *(a5 + 8 * v26 + 13120) || v157 != *(a5 + 8 * v26 + 13122) || v157 != *(a5 + 8 * v26 + 13124) || v157 != *(a5 + 2 * v26 + 13478))
      {
        goto LABEL_306;
      }

      v158 = v46;
      v159 = a4;
      v191 = v16;
      if (v51)
      {
        v160 = v26;
        v161 = (a5 + v26 + 17944);
        if (*(a5 + 92 * v26 + 13820) == 15)
        {
          v162 = *v161;
          *v77 = 0;
          v77[4] = 0;
          if (!v162)
          {
            v163 = &v7[11 * v26];
            v164 = *a4;
            *(v163 + 4184) = *a4;
            if (v164 >= 1)
            {
              *(v7[2079] + v26) = 1;
              Core_Save_GAL_Eph((v11 + 1), 0, v163 + 1046);
            }

            *(v191 + v160) &= 0xFCu;
            v44 = 1;
            a4 = v159;
            v46 = v158;
LABEL_308:
            if (v76)
            {
              DD_Proc_GAL_INAV_GST(v11, a1, v44, a4, (a5 + 17980), *v46, a6);
            }

            return;
          }

LABEL_306:
          if (*(a5 + v26 + 17944) == 1)
          {
            v165 = v44;
            v166 = v7;
            v167 = a4;
            v168 = v46;
            DD_Save_New_GAL_INAV_Eph(*a4, a5, v166);
            v44 = v165;
            v46 = v168;
            a4 = v167;
          }

          goto LABEL_308;
        }
      }

      else
      {
        v160 = v26;
        v161 = (a5 + v26 + 17944);
      }

      *v161 = 1;
      *v77 = 0;
      v77[4] = 0;
      v26 = v160;
      goto LABEL_306;
    }

    v52 = 0;
    v53 = 1;
    while (v15 == 3 || v53 != 7)
    {
      if (a1[v53] != *(v38 + v53 * 2))
      {
        ++v52;
      }

      if (++v53 == 8)
      {
        goto LABEL_139;
      }
    }

    if ((*(v38 + 14) ^ a1[7]) > 3)
    {
      ++v52;
    }

LABEL_139:
    *(a5 + 5 * v26 + v48 + 13550) = 1;
    if (v52)
    {
      goto LABEL_140;
    }

    v76 = 0;
LABEL_158:
    v51 = 1;
    goto LABEL_141;
  }
}

void DD_Proc_GAL_INAV_GST(unsigned int a1, unsigned __int16 *a2, int a3, _DWORD *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v28 = *MEMORY[0x29EDCA608];
  v27 = 0;
  v26 = 0;
  if (Decode_GAL_INAV_GST(a2, &v26, &v27))
  {
    v13 = v26;
    if (v26 > 0x93A7F)
    {
      EvCrt_v("DD_Proc_GAL_INAV_GST:  Rejected:  TOW = %d  >=604800, Out of range!");
LABEL_6:
      *(a6 + a1) = 1;
      return;
    }

    v14 = v27;
    if (v27 >= 4096)
    {
      EvCrt_v("DD_Proc_GAL_INAV_GST:  Rejected:  Week = %d  >=4096, Out of range!");
      goto LABEL_6;
    }

    *a5 = v26;
    v15 = v14 + 1024;
    if (*(a7 + 5) != 1)
    {
      v16 = v15;
      v19 = a1 + 1;
      EvLog_v("WeekNum initialized to %d from GAL SV%d", v15, v19);
      v20 = v19;
LABEL_18:
      EvLog_v("WeekNum Submit %d %d GAL SV %d", 1, v16, v20);
      *(a7 + 16) = v15;
      *(a7 + 5) = 1;
      *(a7 + 48) = -1;
      *(a7 + 52) = -1;
      *(a7 + 54) = 0;
      *(a7 + 58) = 0;
      if (*a7 < 3)
      {
        *a4 = 0;
      }

      else
      {
        *a4 = v13 + 604800 * v15;
      }

      return;
    }

    if (*(a7 + 16) != v15 && *a7 >= 3 && v13 - 32 < 0x93A41)
    {
      v16 = v15;
      if (!a3)
      {
LABEL_32:
        EvLog_v("WeekNum Submit %d %d GAL SV %d", 0, v15, a1 + 1);
        return;
      }

      v17 = 0;
      v18 = (a7 + 54);
      while (*(v18 - 3) != v15)
      {
        ++v17;
        ++v18;
        if (v17 == 3)
        {
          goto LABEL_22;
        }
      }

      if (v17 >= 3)
      {
LABEL_22:
        v21 = 0;
        v22 = (a7 + 48);
        while (*v22 != -1)
        {
          --v21;
          ++v22;
          if (v21 == -3)
          {
            v23 = 3;
            goto LABEL_31;
          }
        }

        v24 = -v21;
        if (v24 < 3)
        {
          *v22 = v15;
          v22[3] = 1;
          goto LABEL_32;
        }

        v23 = v24;
LABEL_31:
        *(a7 + 52) = -1;
        *(a7 + 48) = -1;
        *(a7 + 54) = 0;
        *(a7 + 58) = 0;
        EvLog_v("DD_GAL_Submit_WeekNum: WeekNum Candidate overflow, %d >= %d", v23, 3);
        goto LABEL_32;
      }

      v25 = ++*v18;
      if (v25 < 3)
      {
        goto LABEL_32;
      }

      EvLog_v("DD_GAL_Submit_WeekNum: WeekNum Candidate %d accepted based on %d obs", v15, v25);
      v20 = a1 + 1;
      goto LABEL_18;
    }
  }
}

uint64_t DD_Proc_GAL_INAV_Eph_Bit_Validation(uint64_t result, uint64_t a2, const unsigned __int16 *a3, const unsigned __int16 *a4, unsigned int *a5)
{
  v5 = 0;
  LOBYTE(v6) = 1;
  while (result == 3 || v5 != 7)
  {
    v6 = (*(a2 + v5 * 2) == a3[v5]) & v6;
    if (++v5 == 8)
    {
      if (!v6)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  if ((((a3[7] ^ *(a2 + 14)) < 4) & v6) == 0)
  {
    return result;
  }

LABEL_8:
  *a4 |= 1 << (result - 1);
  return result;
}

void DD_Proc_GAL_INAV_GGTO_Word(unsigned int a1, unsigned __int16 *a2, int a3, uint64_t a4)
{
  v6 = a2[6];
  HIDWORD(v8) = a2[5];
  LODWORD(v8) = v6 << 16;
  v7 = v8 >> 26;
  v9 = a2[7];
  v10 = (v9 << 6) & 0x300000 | (v6 << 22);
  v11 = (v9 >> 6);
  v12 = v9 & 0x3F;
  if (v7 == 0xFFFF && v10 >> 20 == 4095 && v11 == 255)
  {
    if (v12 == 63)
    {
      EvCrt_v("DD_Proc_GAL_INAV_GGTO_Word: SVID %d gives Invalid GGTO (all ones), Skipped!", a1 + 1);
      return;
    }

LABEL_3:
    EvCrt_v("DD_Proc_GAL_INAV_GGTO_Word: FAILED: ToG = %d  > 167 , GGTO Skipped!", (v9 >> 6));
    *(*(a4 + 16656) + a1) = 1;
    return;
  }

  if (v11 >= 0xA8)
  {
    goto LABEL_3;
  }

  if (*(a4 + 24372) != 4)
  {
    goto LABEL_19;
  }

  v13 = v12 - *(a4 + 24381);
  if (!v13)
  {
    if (*(a4 + 24380) >= v11 && *(a4 + 24376) == v7 && *(a4 + 24378) == (v10 >> 20))
    {
      return;
    }

    goto LABEL_19;
  }

  if (v13 < -32)
  {
    v13 += 64;
  }

  if (v13 > 32)
  {
    v13 -= 64;
  }

  if ((v13 & 0x80000000) == 0)
  {
LABEL_19:
    v14 = v10 >> 20;
    *(a4 + 24368) = a3;
    *(a4 + 24376) = v7;
    *(a4 + 24378) = v14;
    *(a4 + 24380) = v11;
    *(a4 + 24381) = v12;
    *(a4 + 24372) = 4;
    *(a4 + 24384) = a3;
    *(a4 + 24388) = 4;
    *(a4 + 24392) = v7 * 2.91038305e-11;
    *(a4 + 24400) = v14 * 4.4408921e-16;
    *(a4 + 24408) = 3600 * v11;
    *(a4 + 24412) = v9 & 0x3F;
    if (a3 >= 1)
    {
      v15 = 0;
      LODWORD(v16) = 0;
      v17 = p_NV;
      v18 = p_NV + 7656;
      *(p_NV + 7656) = *(a4 + 24368);
      v19 = 55665;
      do
      {
        v20 = *(v18 + v15) ^ BYTE1(v19);
        v19 = 52845 * (v19 + v20) + 22719;
        v16 = (v16 + v20);
        ++v15;
      }

      while (v15 != 16);
      *(v17 + 7648) = v16;
    }
  }
}

void NK_Update_Intermediate_Residual(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((a1 - 1) >= 3)
  {

    gn_report_assertion_failure("NK_Update_Intermediate_Residual");
  }

  else
  {
    v7 = 0;
    v8 = a4 + (5576 * (a1 - 1));
    v9 = v8 + 2960;
    v10 = v8 + 3056;
    v17 = a4 + 20032;
    v18 = v8 + 3008;
    v11 = v8 + 4832;
    v12 = a3 + 1400;
    v13 = v8 + 5216;
    do
    {
      if (*(v9 + v7) == 1)
      {
        v14 = *(v10 + 4 * v7);
        if ((v14 - 1) >= 0x1D)
        {
          if (v14)
          {
            EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          }

          else
          {
            NK_Obs_Equ_SV(a1, *(v18 + v7), *(a2 + 4 * v7), v17 + 56 * v7, v19, *(a4 + 656));
            v15 = 0;
            v16 = 0.0;
            do
            {
              v16 = v16 + *&v19[v15] * *(v12 + v15);
              v15 += 8;
            }

            while (v15 != 88);
            *(v13 + 8 * v7) = *(v11 + 8 * v7) - v16;
          }
        }
      }

      ++v7;
    }

    while (v7 != 48);
  }
}

void Kep_Calc_SV_Ref_State_BDS_GEO(int a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v159 = *MEMORY[0x29EDCA608];
  if (*(a4 + 8) == 4 && *(a4 + 12) <= 5u)
  {
    v8 = a2;
    if (*(a4 + 18))
    {
      v10 = *(a4 + 24);
      v11 = a3 + 604800 * (a2 - *(a4 + 18)) - v10;
    }

    else
    {
      v10 = *(a4 + 24);
      v12 = a3 - v10;
      v13 = a3 - v10 - 604800;
      if (a3 - v10 <= 302399)
      {
        v13 = a3 - v10;
      }

      if (v12 < -302400)
      {
        v11 = v12 + 604800;
      }

      else
      {
        v11 = v13;
      }
    }

    v14 = v11;
    v15 = *(a4 + 168);
    v130 = v15 * v15;
    v141 = *(a4 + 96) + 19964980.4 / (v15 * (v15 * v15));
    v16 = *(a4 + 160) + v141 * v11;
    v17 = sin(v16);
    v18 = 0;
    v19 = *(a4 + 200);
    v20 = v16 + v19 * v17;
    do
    {
      v21 = v20;
      v20 = v16 + v19 * sin(v20);
    }

    while (vabdd_f64(v20, v21) > 1.0e-11 && v18++ < 0x13);
    v137 = 1.0 - v19 * v19;
    v23 = cos(v16);
    v24 = tan(v20 * 0.5);
    v25 = atan(sqrt((v19 + 1.0) / (1.0 - v19)) * v24);
    v26 = v25 + v25;
    if (v26 < 0.0)
    {
      v26 = v26 + 6.28318531;
    }

    v27 = __sincos_stret(v26);
    v28 = __sincos_stret(*(a4 + 192));
    v29 = v27.__cosval * v28.__sinval + v27.__sinval * v28.__cosval;
    v30 = v27.__cosval * v28.__cosval - v27.__sinval * v28.__sinval;
    v31 = v30 * (v29 + v29);
    if (a1 == 1)
    {
      v23 = v30 * v30 - v29 * v29;
      v32 = v23 * *(a4 + 120) + *(a4 + 128) * v31;
      v33 = v32 * v32 * -0.5 + 1.0;
      v34 = v30 * v32;
      v127 = v32;
      v35 = -(v29 * v32);
      v29 = v34 + v29 * v33;
      v30 = v35 + v30 * v33;
      v36 = v23 * *(a4 + 104) + *(a4 + 112) * v31;
    }

    else
    {
      v127 = 0.0;
      v36 = 0.0;
    }

    v133 = v30;
    v132 = v19 * v27.__cosval + 1.0;
    v124 = v31;
    v126 = v36;
    v37 = v130 * v137 / v132 + v36;
    v139 = v30 * v37;
    v38 = v37 * v29;
    v39 = *(a4 + 184);
    if (a1 == 1)
    {
      v128 = v23 * *(a4 + 136) + *(a4 + 144) * v31;
      v39 = v39 + v128 + *(a4 + 152) * v14;
    }

    else
    {
      v128 = 0.0;
    }

    v135 = sqrt(v137);
    v40 = __sincos_stret(v39);
    v41 = *(a4 + 208);
    v42 = __sincos_stret(*(a4 + 176) + v41 * v14 + v10 * -0.00007292115);
    v140 = v139 * v42.__cosval - v38 * v40.__cosval * v42.__sinval;
    v134 = v38 * v40.__cosval * v42.__cosval + v139 * v42.__sinval;
    v136 = v38 * v40.__sinval;
    v129 = v11;
    v43 = __sincos_stret(v14 * 0.00007292115);
    v44 = 0;
    cosval = v43.__cosval;
    v154 = vmulq_n_f64(xmmword_299761410, v43.__sinval);
    v155 = -v43.__sinval;
    v156 = vmulq_n_f64(xmmword_299761410, v43.__cosval);
    v157 = xmmword_299761420;
    v158 = 0x3FEFE0D3B41815ABLL;
    v45 = &v154.f64[1];
    do
    {
      v46 = v134 * *(v45 - 1) + *(v45 - 2) * v140;
      v47 = *v45;
      v45 += 3;
      *(a5 + v44) = v46 + v47 * v136;
      v44 += 8;
    }

    while (v44 != 24);
    v48 = v137 * v135;
    v49 = v132 * (v141 * v132) / (v137 * v135);
    v50 = v49 + v49;
    v51 = v141 * (v130 * *(a4 + 200) / v135);
    v52 = v27.__sinval * v51;
    if (a1 == 1)
    {
      v122 = *(a4 + 112) * v23 - *(a4 + 104) * v124;
      v123 = *(a4 + 128) * v23 - *(a4 + 120) * v124;
      v53 = v49 + v50 * v123;
      v52 = v52 + v50 * v122;
      v125 = *(a4 + 144) * v23 - *(a4 + 136) * v124;
      v54 = *(a4 + 152) + v50 * v125;
    }

    else
    {
      v122 = 0.0;
      v123 = 0.0;
      v53 = v132 * (v141 * v132) / (v137 * v135);
      v125 = 0.0;
      v54 = 0.0;
    }

    v55 = 0;
    v56 = v52 * v133 - v38 * v53;
    v57 = v139 * v53 + v52 * v29;
    v58 = v56 + -(v38 * v41) * v40.__cosval;
    v59 = v57 * v40.__cosval - v136 * v54 + v139 * v41;
    v60 = v58 * v42.__cosval - v59 * v42.__sinval;
    v61 = v42.__cosval * v59 + v58 * v42.__sinval;
    v62 = v40.__cosval * (v38 * v54) + v57 * v40.__sinval;
    v63 = v43.__cosval * 0.00007292115;
    v64 = vmulq_n_f64(xmmword_299761410, v43.__cosval * 0.00007292115);
    *&v66.f64[0] = vdupq_laneq_s64(v64, 1).u64[0];
    v65 = vdupq_lane_s64(v64.i64[0], 0);
    v65.f64[0] = -(v43.__sinval * 0.00007292115);
    v66.f64[1] = -(v43.__cosval * 0.00007292115);
    v67 = vextq_s8(v66, v66, 8uLL).u64[0];
    *&v68.f64[0] = vextq_s8(v65, v65, 8uLL).u64[0];
    v69 = vmulq_n_f64(xmmword_299761430, v43.__sinval * 0.00007292115);
    v138 = vextq_s8(v69, v69, 8uLL).u64[0];
    v70 = &v154.f64[1];
    do
    {
      v71 = v61 * *(v70 - 1) + *(v70 - 2) * v60;
      v72 = *v70;
      v70 += 3;
      *(&v151 + v55) = v71 + v72 * v62;
      v55 += 8;
    }

    while (v55 != 24);
    *(a5 + 24) = v151;
    *(a5 + 40) = v152;
    v73.f64[0] = -(v43.__sinval * 0.00007292115);
    v131 = v67;
    *&v73.f64[1] = v67;
    v74.f64[0] = v68.f64[0];
    *&v74.f64[1] = v69.i64[0];
    v75.f64[0] = v66.f64[0];
    *&v75.f64[1] = v138;
    *(a5 + 24) = vaddq_f64(*(a5 + 24), vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v74, v134), v73, v140), v75, v136));
    v76 = v132 * (v27.__sinval * (-(v50 * v141) * *(a4 + 200)) / v48);
    v77 = v27.__cosval;
    v78 = v27.__cosval * (v49 * v51);
    v79 = 0.0;
    if (a1 == 1)
    {
      v80 = v76 + v76;
      v81 = v50 * -v50;
      v78 = v78 + (v76 + v76) * v122 + v81 * v126;
      v76 = v76 + (v76 + v76) * v123 + v81 * v127;
      v79 = v81 * v128 + v80 * v125;
    }

    v82 = 0;
    v83 = v133 * (v52 * v53) + v78 * v29 + v56 * v53 + v76 * v139;
    v84 = v78 * v133 - v52 * v53 * v29 - v57 * v53 - v76 * v38 + -(v57 * v41) * v40.__cosval + v41 * (v38 * v54) * v40.__sinval;
    v85 = v40.__sinval * -(v57 * v54) + v83 * v40.__cosval - v62 * v54 + -v136 * v79 + v56 * v41;
    v86 = v42.__cosval * v84 - v41 * v61 - v85 * v42.__sinval;
    v87 = v42.__sinval * v84 + v41 * v60 + v85 * v42.__cosval;
    v88 = v40.__cosval * ((v57 + v57) * v54) + v83 * v40.__sinval + v38 * v79 * v40.__cosval + -(v54 * v54) * v136;
    v89.f64[1] = v63 * 0.00007292115;
    v89.f64[0] = v43.__sinval * 0.00007292115;
    v90 = vmulq_f64(v89, xmmword_299761440);
    v91 = vmulq_n_f64(xmmword_299761430, *v90.i64);
    v92 = vdupq_laneq_s64(v91, 1);
    v93 = vdupq_lane_s64(v91.i64[0], 0);
    v93.f64[0] = -(v63 * 0.00007292115);
    v94 = vdupq_laneq_s64(v90, 1).u64[0];
    v95 = vzip1q_s64(v92, v90);
    v96 = vextq_s8(v95, v95, 8uLL).u64[0];
    *&v97.f64[0] = vextq_s8(v93, v93, 8uLL).u64[0];
    v90.i64[0] = v94;
    *&v90.i64[1] = v89.f64[1] * 0.0871557427;
    v98 = vextq_s8(v90, v90, 8uLL).u64[0];
    v99 = &v154.f64[1];
    do
    {
      v100 = v87 * *(v99 - 1) + *(v99 - 2) * v86;
      v101 = *v99;
      v99 += 3;
      *(&v151 + v82) = v100 + v101 * v88;
      v82 += 8;
    }

    while (v82 != 24);
    *(a5 + 48) = v151;
    v102 = v152;
    *&v65.f64[1] = v131;
    *&v68.f64[1] = v69.i64[0];
    *&v66.f64[1] = v138;
    *&v93.f64[1] = v96;
    v103 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v68, v61), v65, v60), v66, v62);
    *&v97.f64[1] = v94;
    *&v95.f64[1] = v98;
    __asm { FMOV            V3.2D, #2.0 }

    *(a5 + 48) = vaddq_f64(vmlaq_f64(*(a5 + 48), _Q3, v103), vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v97, v134), v93, v140), v95, v136));
    *(a5 + 64) = v102;
    *(a5 + 72) = 0;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    v108 = v11;
    if (a1 != 1)
    {
      v111 = (v11 + 302400) / 1000 + 1200;
      if (v11 >= 31233600)
      {
        v111 = 65500;
      }

      if (v11 <= -301401)
      {
        v111 = 1200;
      }

      *(a5 + 112) = (v111 * v111);
      goto LABEL_62;
    }

    v109 = *(a4 + 15);
    if (v109 > 0xF)
    {
      v110 = 99980001.0;
    }

    else
    {
      v110 = BDS_Legacy_URA_Table[v109];
    }

    *(a5 + 112) = v110;
    v112 = v11 / 60;
    if (*(a4 + 14))
    {
      v113 = -180;
    }

    else
    {
      v113 = -120;
    }

    v114 = v113 + v112;
    if (v113 + v112 >= 1)
    {
      *&v151 = 0;
      if (R8_EQ((a4 + 208), &v151) && (v150 = 0.0, R8_EQ((a4 + 48), &v150)) && (v149 = 0.0, R8_EQ((a4 + 112), &v149)) && (v148 = 0.0, R8_EQ((a4 + 96), &v148)) && (v147 = 0.0, R8_EQ((a4 + 120), &v147)) && (v146 = 0.0, R8_EQ((a4 + 128), &v146)) && (v145 = 0.0, R8_EQ((a4 + 136), &v145)) && (v144 = 0.0, R8_EQ((a4 + 144), &v144)) && (v143 = 0.0, R8_EQ((a4 + 104), &v143)))
      {
        v142 = 0.0;
        v115 = R8_EQ((a4 + 152), &v142);
        v77 = v27.__cosval;
        if (v115)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v77 = v27.__cosval;
      }

      *(a5 + 112) = v110 + (2 * v114 * v114);
    }

LABEL_61:
    v108 = v129 + (*(a4 + 24) - *(a4 + 20));
LABEL_62:
    v116 = *(a4 + 200);
    v117 = v116 * -4.44280763e-10 * *(a4 + 168) / (v116 * v77 + 1.0);
    v118 = *(a4 + 40);
    v119 = v108 * *(a4 + 48);
    *(a5 + 96) = *(a4 + 32) + v135 * v117 * v27.__sinval + v108 * (v119 + v118);
    *(a5 + 104) = v118 + v141 * v117 * (v77 + v116) + v119 * 2.0;
    v120 = *(a4 + 56);
    v121 = *(a4 + 72);
    *(a5 + 152) = *(a4 + 88);
    *(a5 + 136) = v121;
    *(a5 + 120) = v120;
    *(a5 + 160) = a3;
    *(a5 + 164) = v8;
    *(a5 + 166) = *(a4 + 16);
    *(a5 + 184) = a1;
    *(a5 + 180) = *(a4 + 12);
    *(a5 + 176) = *(a4 + 8);
  }
}

double gnss::GnssAdaptDevice::setAssistanceAccel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice18setAssistanceAccelEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_17;
    block[4] = a1;
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(&__p, v5, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setAssistanceAccel", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  return result;
}

void ___ZN4gnss15GnssAdaptDevice18setAssistanceAccelEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceAccel_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v6 = a1[5];
  v5 = a1[6];
  if (v5 == v6 || (v7 = (v5 - v6) >> 3, v8 = -21845 * v7, 0xAAAAAAAAAAAAAAABLL * v7 >= 0x10000))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, (a1 + 8));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v48, "setAssistanceAccel_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sample Size,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceAccel_block_invoke", 515, -1431655765 * ((a1[6] - a1[5]) >> 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "setAssistanceAccel_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }
  }

  else
  {
    v9 = 0x5555555555555560 * v7;
    v10 = operator new[](0x5555555555555560 * v7, MEMORY[0x29EDC9418]);
    if (!v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 2, v47, "setAssistanceAccel_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
      snprintf(v46, 0x400uLL, "ASSERT,%s,%d,%s", "setAssistanceAccel_block_invoke", 63, "Memory allocation failed for Accel");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v39), "OSA", 69, "setAssistanceAccel_block_invoke", v46);
        LbsOsaTrace_WriteLog(0xEu, __str, v40, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("setAssistanceAccel_block_invoke", "ga02GnssDeviceSens.cpp", 63, "false && Memory allocation failed for Accel");
    }

    v41 = v2;
    v11 = 0;
    do
    {
      v12 = &v10[v11];
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 6) = 0;
      *(v12 + 2) = 0;
      v11 += 32;
    }

    while (v9 != v11);
    v13 = 0;
    v14 = 0;
    v42 = v10;
    v15 = (v10 + 24);
    do
    {
      v16 = *(v6 + v13);
      if (v16)
      {
        v17 = *(v6 + v13 + 16);
        *(v15 - 3) = vcvtq_f64_f32(*(v6 + v13 + 8));
        *(v15 - 1) = v17;
        *v15 = (v16 + 500000) / 0xF4240uLL;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AccelSampleVector Idx,%zd\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 87, "setAssistanceAccel_block_invoke", 515, v14);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 2, 1);
        }

        --v8;
        v6 = a1[5];
        v5 = a1[6];
      }

      ++v14;
      v15 += 4;
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3));
    if (v8)
    {
      v20 = v42;
      gnss::GnssAdaptDevice::Ga02_02PrintSensorData(v6, v5 - v6, 65);
      v21 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v41, v21, v44);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
      v22 = GNS_SenSetAccl(v21, v8, v42);
      if (v22 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "setAssistanceAccel_block_invoke", v8);
          LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setAssistanceAccel_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, (a1 + 8));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v41, v22, v43, "setAssistanceAccel_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v43);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v41, v21);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SenSetAccl,%u\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 69, "setAssistanceAccel_block_invoke", 257, v22);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "setAssistanceAccel_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
        }
      }
    }

    else
    {
      v20 = v42;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v41, 4, v45, "setAssistanceAccel_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No Valid Samples\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "setAssistanceAccel_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "setAssistanceAccel_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
      }
    }

    MEMORY[0x29C29EAF0](v20, 0x1000C80F6D918ACLL);
  }
}

void gnss::GnssAdaptDevice::Ga02_02PrintSensorData(gnss::GnssAdaptDevice *this, uint64_t a2, char a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v6 = 24;
  if (this)
  {
    *__str = 0;
    v9 = 0;
    v10 = 0;
    if (a2 != -5)
    {
      if (((a2 + 5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v7);
    v5 = -1;
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v5);
    v5 = -5;
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v5);
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v6);
    v5 = 10;
    std::vector<unsigned char>::push_back[abi:ne200100](__str, &v5);
    LbsOsaTrace_PrintBinaryBuf(0x19u, 5u, 0, *__str, (v9 - *__str));
    if (*__str)
    {
      v9 = *__str;
      operator delete(*__str);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Data\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 69, "Ga02_02PrintSensorData", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 0, 1);
  }
}

uint64_t __copy_helper_block_e8_40c66_ZTSNSt3__16vectorIN4gnss17SensorSample3AxisENS_9allocatorIS2_EEEE64c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(a1 + 5, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((v3 + 3), a2 + 64);
}

void sub_2996BE8B8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__16vectorIN4gnss17SensorSample3AxisENS_9allocatorIS2_EEEE64c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 64);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

double gnss::GnssAdaptDevice::setAssistanceGyro(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v5 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v6 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice17setAssistanceGyroEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_20_1;
    block[4] = a1;
    __p = 0;
    v12 = 0;
    v13 = 0;
    std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(&__p, v5, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3));
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v14, a3);
    dispatch_async(v6, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v14);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "setAssistanceGyro", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  return result;
}

void ___ZN4gnss15GnssAdaptDevice17setAssistanceGyroEONSt3__16vectorINS_17SensorSample3AxisENS1_9allocatorIS3_EEEENS1_8functionIFvNS_6ResultEEEE_block_invoke(void *a1)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "setAssistanceGyro_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  v6 = a1[5];
  v5 = a1[6];
  if (v5 == v6 || (v7 = (v5 - v6) >> 3, v8 = -21845 * v7, 0xAAAAAAAAAAAAAAABLL * v7 >= 0x10000))
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v48, (a1 + 8));
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v48, "setAssistanceGyro_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v48);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v27 = mach_continuous_time();
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Sample Size,%u\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "setAssistanceGyro_block_invoke", 515, -1431655765 * ((a1[6] - a1[5]) >> 3));
      LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 68, "setAssistanceGyro_block_invoke");
      LbsOsaTrace_WriteLog(0x18u, __str, v30, 5, 1);
    }
  }

  else
  {
    v9 = 0x5555555555555560 * v7;
    v10 = operator new[](0x5555555555555560 * v7, MEMORY[0x29EDC9418]);
    if (!v10)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v47, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 2, v47, "setAssistanceGyro_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v47);
      snprintf(v46, 0x400uLL, "ASSERT,%s,%d,%s", "setAssistanceGyro_block_invoke", 141, "Memory allocation failed for Gyro");
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v39 = mach_continuous_time();
        v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v39), "OSA", 69, "setAssistanceGyro_block_invoke", v46);
        LbsOsaTrace_WriteLog(0xEu, __str, v40, 0, 1);
      }

      if (gp_Logger)
      {
        (*(*gp_Logger + 48))(gp_Logger);
      }

      __assert_rtn("setAssistanceGyro_block_invoke", "ga02GnssDeviceSens.cpp", 141, "false && Memory allocation failed for Gyro");
    }

    v41 = v2;
    v11 = 0;
    do
    {
      v12 = &v10[v11];
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 6) = 0;
      *(v12 + 2) = 0;
      v11 += 32;
    }

    while (v9 != v11);
    v13 = 0;
    v14 = 0;
    v42 = v10;
    v15 = (v10 + 24);
    do
    {
      v16 = *(v6 + v13);
      if (v16)
      {
        v17 = *(v6 + v13 + 16);
        *(v15 - 3) = vcvtq_f64_f32(*(v6 + v13 + 8));
        *(v15 - 1) = v17;
        *v15 = (v16 + 500000) / 0xF4240uLL;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GyroSampleVector Idx,%zd\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 87, "setAssistanceGyro_block_invoke", 515, v14);
          LbsOsaTrace_WriteLog(0x18u, __str, v19, 2, 1);
        }

        --v8;
        v6 = a1[5];
        v5 = a1[6];
      }

      ++v14;
      v15 += 4;
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3));
    if (v8)
    {
      v20 = v42;
      gnss::GnssAdaptDevice::Ga02_02PrintSensorData(v6, v5 - v6, 71);
      v21 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v44, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v41, v21, v44);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v44);
      v22 = GNS_SenSetGyro(v21, v8, v42);
      if (v22 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v23 = mach_continuous_time();
          v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 73, "setAssistanceGyro_block_invoke", v8);
          LbsOsaTrace_WriteLog(0x18u, __str, v24, 4, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 68, "setAssistanceGyro_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v43, (a1 + 8));
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v41, 14, v43, "setAssistanceGyro_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v43);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v41, v21);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v35 = mach_continuous_time();
          v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SenSetGyro,%u\n", (*&g_MacClockTicksToMsRelation * v35), "ADP", 69, "setAssistanceGyro_block_invoke", 257, v22);
          LbsOsaTrace_WriteLog(0x18u, __str, v36, 0, 1);
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v37), "ADP", 68, "setAssistanceGyro_block_invoke");
          LbsOsaTrace_WriteLog(0x18u, __str, v38, 5, 1);
        }
      }
    }

    else
    {
      v20 = v42;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, (a1 + 8));
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v41, 4, v45, "setAssistanceGyro_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v31 = mach_continuous_time();
        v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No Valid Samples\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 69, "setAssistanceGyro_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v32, 0, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v33 = mach_continuous_time();
        v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "ADP", 68, "setAssistanceGyro_block_invoke");
        LbsOsaTrace_WriteLog(0x18u, __str, v34, 5, 1);
      }
    }

    MEMORY[0x29C29EAF0](v20, 0x1000C80F6D918ACLL);
  }
}

double gnss::GnssAdaptDevice::Ga02_00RegisterGnsSensStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1;
  v21 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v7 = DeviceInstance;
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "Ga02_01HandleGnsSensStatusResponse", v4);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
    }

    if (a3)
    {
      v10 = *(a3 + 2);
      v11 = *(v7 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v15 = 0x40000000;
      v16 = ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke;
      v17 = &__block_descriptor_tmp_26_1;
      v18 = v7;
      v19 = *a3;
      v20 = v10;
      dispatch_async(v11, __str);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SensResp\n", (*&g_MacClockTicksToMsRelation * v12), "ADP", 69, "Ga02_01HandleGnsSensStatusResponse", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v13, 0, 1);
    }
  }

  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v27 = 0;
  v2 = *(v1 + 264);
  if (!v2)
  {
    goto LABEL_28;
  }

  v4 = v1 + 264;
  v5 = *(a1 + 40);
  v6 = v1 + 264;
  v7 = *(v1 + 264);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v4 && v5 >= *(v6 + 32))
  {
    v13 = v1 + 264;
    do
    {
      v14 = *(v2 + 32);
      v9 = v14 >= v5;
      v15 = v14 < v5;
      if (v9)
      {
        v13 = v2;
      }

      v2 = *(v2 + 8 * v15);
    }

    while (v2);
    if (v13 == v4 || v5 < *(v13 + 32))
    {
      v13 = v1 + 264;
    }

    std::function<void ()(gnss::Result)>::operator=(v26, v13 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v1 + 256), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v27)
    {
      v16 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Type,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "Ga02_01HandleGnsSensStatusResponse_block_invoke", *(a1 + 40));
        LbsOsaTrace_WriteLog(0x18u, __str, v18, 4, 1);
      }

      v19 = *(v1 + 296);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke_2;
      block[3] = &__block_descriptor_tmp_25_3;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v24, v26);
      v24[8] = v16;
      dispatch_async(v19, block);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v24);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCb,API type,%d\n", (*&g_MacClockTicksToMsRelation * v20), "ADP", 87, "Ga02_01HandleGnsSensStatusResponse_block_invoke", 770, *(a1 + 40));
      LbsOsaTrace_WriteLog(0x18u, __str, v21, 2, 1);
    }
  }

  else
  {
LABEL_28:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnsStatusRespLut Handle\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 87, "Ga02_01HandleGnsSensStatusResponse_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 2, 1);
    }
  }

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
}

uint64_t ___ZN4gnss15GnssAdaptDevice34Ga02_01HandleGnsSensStatusResponseE12e_gnsSen_MsgjP18s_gnsSen_ApiStatus_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v2, v1);
}

void std::vector<gnss::SensorSample3Axis>::__init_with_size[abi:ne200100]<gnss::SensorSample3Axis*,gnss::SensorSample3Axis*>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2996BFB90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SuplPosInitSent::~SuplPosInitSent(SuplPosInitSent *this)
{
  v6[1] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F8AB30;
  if (*(this + 16) == 5)
  {
    v2 = *(this + 5);
    if (v2)
    {
      ASN1T_Velocity::U::~U((v2 + 152));
      v6[0] = (v2 + 120);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v6);
      v6[0] = (v2 + 96);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v6);
      v3 = *(v2 + 64);
      if (v3)
      {
        *(v2 + 72) = v3;
        operator delete(v3);
      }

      v4 = *(v2 + 40);
      if (v4)
      {
        *(v2 + 48) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 16);
      if (v5)
      {
        *(v2 + 24) = v5;
        operator delete(v5);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C40C2B5F699);
    }

    *(this + 5) = 0;
  }

  SuplState::~SuplState(this);
}

{

  SuplPosInitSent::~SuplPosInitSent(this);
}

{
  SuplPosInitSent::~SuplPosInitSent(this);

  JUMPOUT(0x29C29EB20);
}

void SuplPosInitSent::UpdateState(SuplPosInitSent *this)
{
  if (*(this + 360))
  {
    v2 = 5;
LABEL_5:
    SuplState::UpdateState(this, v2, *(this + 1));
    goto LABEL_6;
  }

  if (*(this + 17))
  {
    v2 = 7;
    goto LABEL_5;
  }

LABEL_6:
  *(this + 360) = 0;
  *(this + 17) = 0;
}

uint64_t SuplPosInitSent::ProcessSuplPos(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v4 = SuplState::ProcessSuplMessage(a1, a2);
  if (v4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ProcessSuplPos", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    LOBYTE(v7) = 3;
    goto LABEL_5;
  }

  Instance = SuplUtils::GetInstance(v4);
  v11 = *(a1 + 8);
  if (SuplUtils::ValidateSetSessionId(Instance, *(v11 + 72), *(a1 + 56)) && (IsLoggingAllowed = SuplUtils::ValidateSetId(Instance, (v11 + 80), (a1 + 64)), IsLoggingAllowed))
  {
    v7 = 0;
    v13 = 0;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ProcessSuplPos", 515);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    }

    v13 = 1;
    v7 = 12;
  }

  v16 = *(a1 + 8);
  v17 = SuplUtils::GetInstance(IsLoggingAllowed);
  v18 = SuplUtils::ValidateSlpSessionId(v17, a1 + 248, v16 + 264);
  v19 = v18;
  v20 = SuplUtils::GetInstance(v18);
  v21 = SuplUtils::ValidateSlpId(v20, (a1 + 272), (v16 + 288));
  if (!v19 || !v21)
  {
    v21 = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (v21)
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ProcessSuplPos", 515);
      v21 = LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    }

    v13 = 1;
    v7 = 12;
  }

  v24 = *(a1 + 26);
  v25 = SuplVersionNegotiation::GetInstance(v21);
  v26 = atomic_load(v25 + 1);
  v27 = v26 == 255;
  v28 = 1;
  if (v27)
  {
    v28 = 2;
  }

  v29 = atomic_load(&v25[v28]);
  if (v24 != v29 && *(a1 + 32) == 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v30), "SPL", 69, "ProcessSuplPos", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v31, 0, 1);
    }

    LOBYTE(v7) = 10;
    goto LABEL_5;
  }

  if (v13)
  {
    if (v7 == 12)
    {
      ASN1T_SessionID::operator=(*(a1 + 8) + 64, a1 + 48);
      LOBYTE(v7) = 12;
    }

    goto LABEL_5;
  }

  v32 = *(a1 + 32);
  if (v32 == 6)
  {
    *(a1 + 17) = 1;
    (*(*a1 + 16))(a1);
    SuplStateObject = SuplSession::GetSuplStateObject(*(a1 + 8));
    (*(*SuplStateObject + 40))(SuplStateObject, a2);
    return 1;
  }

  if (v32 != 5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v38 = mach_continuous_time();
      v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 69, "ProcessSuplPos", 514);
      LbsOsaTrace_WriteLog(0x12u, __str, v39, 0, 1);
    }

    LOBYTE(v7) = 2;
    goto LABEL_5;
  }

  v33 = LcsSuplGlueLayer::GetInstance(v25);
  v34 = LcsSuplGlueLayer::SendSuplMsgStatus(v33, *(*(a1 + 8) + 376), 4, 0, 0, 0);
  v35 = SuplPosPayloadHandler::GetInstance(v34);
  v36 = SuplPosPayloadHandler::ProcessPosPayload(v35, *(a1 + 40), *(a1 + 8));
  if (v36 == -7)
  {
    LOBYTE(v7) = 8;
  }

  else
  {
    if (!v36)
    {
      *(a1 + 360) = 1;
      (*(*a1 + 16))(a1);
      return 1;
    }

    LOBYTE(v7) = 0;
  }

LABEL_5:
  *(a1 + 17) = 1;
  (*(*a1 + 16))(a1);
  v8 = SuplSession::GetSuplStateObject(*(a1 + 8));
  *(v8[5] + 432) = v7;
  *(v8[5] + 1) = 1;
  std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
  v40[0] = __str;
  v40[1] = 0;
  v41 = 0;
  (*(*v8 + 32))(v8, v40);
  SuplEndRecd::TerminateSession(v8, -1, 3);
  if (*__str)
  {
    v43 = *__str;
    operator delete(*__str);
  }

  return 0;
}

void sub_2996C0420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplPosInitSent::ProcessSuplMessage(uint64_t a1)
{
  if ((*(*a1 + 48))(a1))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double Get_GPS_Kep_Almanac(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 10);
  v2 = *(a1 + 12);
  *(a2 + 12) = BYTE2(v2) & 0x3F;
  v3 = vcvtd_n_f64_u32(v2, 0x15uLL);
  *(a2 + 20) = *(a1 + 18) << 12;
  v4 = *(a1 + 16) * 0.00000599211245 + 0.942477796;
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 13) = v5 & 0x1F;
  *(a2 + 72) = vcvtd_n_f64_u32(v6 & 0xFFFFFF, 0xBuLL);
  v7 = vshl_n_s32(*(a1 + 28), 8uLL);
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v8), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v9 = *(a1 + 40);
  v10 = (*(a1 + 36) << 8) * 0.00000000146291808;
  *(a2 + 56) = (v5 >> 8) * 1.14290475e-11;
  *(a2 + 64) = v10;
  result = vcvtd_n_f64_s32(((v9 >> 8) & 0xFF00 | (32 * ((v9 >> 2) & 7))), 0x19uLL);
  *(a2 + 24) = result;
  *(a2 + 32) = (v9 & 0xFFFFFFE0) * 1.13686838e-13;
  *(a2 + 8) = 1;
  return result;
}

uint64_t lsim24_01HandleSensApiStatus(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim24_01HandleSensApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("lsim24_01HandleSensApiStatus", 38, 1, 0xCuLL);
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  if (v4)
  {
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_SENSAPI_IND\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim24_01HandleSensApiStatus");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    if (g_GnsSenCallback)
    {
      *v4 = *(a1 + 20);
      *(v4 + 4) = *(a1 + 12);
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>SensCB,Api,%u,Id,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim24_01HandleSensApiStatus", *(v4 + 1), *v4, *(v4 + 2));
        LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
      }

      g_GnsSenCallback(0, 12, v4, v8);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SENS\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 68, "lsim24_01HandleSensApiStatus", 258);
      LbsOsaTrace_WriteLog(0xCu, __str, v12, 5, 1);
    }

    free(v4);
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0);
  }

  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 73, "lsim24_01HandleSensApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v14, 4, 1);
  }

  return 0;
}

double lsim24_02SensCbInit(uint64_t (*a1)(void, void, void, __n128))
{
  v8 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    goto LABEL_2;
  }

  if (g_GnsSenCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim24_02SensCbInit", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

LABEL_2:
    g_GnsSenCallback = a1;
    return result;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim24_02SensCbInit", 513);
    LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

  return result;
}

uint64_t GNS_SenInitialize(uint64_t a1)
{
  v2 = gnssOsa_Calloc("GNS_SenInitialize", 98, 1, 0x18uLL);
  if (!v2)
  {
    return 6;
  }

  v2[3] = 12;
  *(v2 + 2) = a1;
  AgpsSendFsmMsg(131, 131, 8635139, v2);
  return 1;
}

uint64_t GNS_SenSetAccl(int a1, unsigned int a2, char *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SenSetAccl");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Accel\n");
LABEL_13:
      LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
    }

LABEL_14:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "GNS_SenSetAccl");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    return 2;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", v28);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a2 < 0xC9)
  {
    v10 = a2;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "GNS_SenSetAccl", 514, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
    }

    v10 = 200;
  }

  v15 = gnssOsa_Calloc("GNS_SenSetAccl", 214, 1, 0x10uLL);
  if (v15)
  {
    v16 = v15;
    v17 = gnssOsa_Calloc("GNS_SenSetAccl", 221, v10, 0x20uLL);
    *(v16 + 1) = v17;
    if (v17)
    {
      v18 = gnssOsa_Calloc("GNS_SenSetAccl", 229, 1, 0x20uLL);
      if (v18)
      {
        v19 = v18;
        *v16 = v10;
        if (a2 < 0xC9)
        {
          v21 = 250;
          v20 = a3;
        }

        else
        {
          v20 = &a3[32 * a2 - 6400];
          v21 = 246;
        }

        memcpy_s("GNS_SenSetAccl", v21, *(v16 + 1), 32 * (v10 & 0x7FF), v20, 32 * (v10 & 0x7FFu));
        v19[2] = v16;
        *(v19 + 6) = a1;
        AgpsSendFsmMsg(131, 134, 8782595, v19);
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "GNS_SenSetAccl");
        v14 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
        return v14;
      }

      v22 = *(v16 + 1);
      if (v22)
      {
        free(v22);
      }
    }

    free(v16);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_SenSetAccl");
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  }

  return 6;
}

uint64_t GNS_SenSetGyro(int a1, unsigned int a2, char *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_SenSetGyro");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (!a3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Gyro\n");
LABEL_14:
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 2, 1);
    }

LABEL_15:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "GNS_SenSetGyro");
      LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
    }

    return 2;
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", v28);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = gnssOsa_Calloc("GNS_SenSetGyro", 287, 1, 0x10uLL);
  if (v8)
  {
    v9 = v8;
    if (a2 < 0xC9)
    {
      v12 = a2;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx NumSamples,%u\n", (*&g_MacClockTicksToMsRelation * v10), "LSM", 87, "GNS_SenSetGyro", 514, a2);
        LbsOsaTrace_WriteLog(0xCu, __str, v11, 2, 1);
      }

      v12 = 200;
    }

    v17 = gnssOsa_Calloc("GNS_SenSetGyro", 303, v12, 0x20uLL);
    *(v9 + 1) = v17;
    if (v17)
    {
      v18 = gnssOsa_Calloc("GNS_SenSetGyro", 311, 1, 0x20uLL);
      if (v18)
      {
        v19 = v18;
        *v9 = v12;
        if (a2 < 0xC9)
        {
          v21 = 333;
          v20 = a3;
        }

        else
        {
          v20 = &a3[32 * a2 - 6400];
          v21 = 328;
        }

        memcpy_s("GNS_SenSetGyro", v21, *(v9 + 1), 32 * (v12 & 0x7FF), v20, 32 * (v12 & 0x7FFu));
        v19[2] = v9;
        *(v19 + 6) = a1;
        AgpsSendFsmMsg(131, 134, 8782851, v19);
        if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
        {
          return 1;
        }

        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "LSM", 73, "GNS_SenSetGyro");
        v16 = 1;
        LbsOsaTrace_WriteLog(0xCu, __str, v27, 4, 1);
        return v16;
      }

      v22 = *(v9 + 1);
      if (v22)
      {
        free(v22);
      }
    }

    free(v9);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "LSM", 73, "GNS_SenSetGyro");
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  }

  return 6;
}

double lsim11_01InitSessionMgmt(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim11_01InitSessionMgmt");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  byte_2A18CCF26 = 0;
  qword_2A18CCF1C = 0;
  byte_2A18CCF24 = 0;
  byte_2A18CCF36 = 0;
  qword_2A18CCF2C = 0;
  byte_2A18CCF34 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim11_01InitSessionMgmt");
    LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
  }

  return result;
}

uint64_t lsim11_02GnmCreateSession(int a1, int a2, int a3, char a4, char a5, char a6, _DWORD *a7)
{
  v36 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 73, "lsim11_02GnmCreateSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v15, 4, 1);
  }

  if (!a7)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSessId\n", (*&g_MacClockTicksToMsRelation * v20), "LSM", 87, "lsim11_02GnmCreateSession", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v21, 2, 1);
    }

LABEL_11:
    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 0;
    }

LABEL_16:
    bzero(__str, 0x410uLL);
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v24, "LSM", 73, "lsim11_02GnmCreateSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v25, 4, 1);
    return 0;
  }

  if ((a2 - 1) > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessType,%u\n", (*&g_MacClockTicksToMsRelation * v22), "LSM", 87, "lsim11_02GnmCreateSession", 515, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v23, 2, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      return 0;
    }

    goto LABEL_16;
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    v18 = v17;
    v19 = &g_lsimsm_GnmSession[4 * v16];
    if (!v19[1])
    {
      break;
    }

    v17 = 0;
    v16 = 1;
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  *(v19 + 12) = a4;
  *(v19 + 13) = a6;
  *(v19 + 14) = a5;
  *a7 = v16;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v28 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v29 = 78;
    if (v19[1] == 2)
    {
      v29 = 89;
    }

    if (*(v19 + 14))
    {
      v30 = 84;
    }

    else
    {
      v30 = 70;
    }

    if (*(v19 + 12))
    {
      v31 = 84;
    }

    else
    {
      v31 = 70;
    }

    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SId,%u,GnmSId,%u PosM,%u,Emer,%c,Asyc,%c,GnssIds,%X,CP,%c\n", v28, "LSM", 77, "lsim11_02GnmCreateSession", *v19, *a7, v19[2], v31, v30, *(v19 + 13), v29);
    LbsOsaTrace_WriteLog(0xCu, __str, v32, 3, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v33 = mach_continuous_time();
  v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "LSM", 73, "lsim11_02GnmCreateSession");
  v26 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v34, 4, 1);
  return v26;
}

uint64_t lsim11_03GnmUpdateSession(unsigned int a1, const BOOL *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim11_03GnmUpdateSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (!a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = 515;
LABEL_15:
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", v14, "LSM", 87, "lsim11_03GnmUpdateSession", v15, a1);
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 2, 1);
    }

    return 0;
  }

  if (a1 > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = 2052;
      goto LABEL_15;
    }

    return 0;
  }

  v6 = *a2;
  v7 = &g_lsimsm_GnmSession[4 * a1];
  *(v7 + 14) = v6;
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v9 = 70;
    if (*(v7 + 14))
    {
      v9 = 84;
    }

    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Updated SId,%u,GnmSId,%u,AsyncNeeded,%c\n", v8, "LSM", 77, "lsim11_03GnmUpdateSession", *v7, a1, v9);
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 3, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v11 = mach_continuous_time();
  v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim11_03GnmUpdateSession");
  v13 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  return v13;
}

BOOL lsim11_04GnmResetSession(unsigned int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim11_04GnmResetSession");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1 > 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim11_04GnmResetSession", 2052, a1);
      v10 = 2;
LABEL_13:
      LbsOsaTrace_WriteLog(0xCu, __str, v9, v10, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 3u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v5 = a1;
      v6 = 78;
      if (g_lsimsm_GnmSession[4 * a1 + 1] == 2)
      {
        v6 = 89;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Reset SId,%u,GnmSId,%u,CP,%c\n", v4, "LSM", 77, "lsim11_04GnmResetSession", g_lsimsm_GnmSession[4 * a1], a1, v6);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 3, 1);
    }

    else
    {
      v5 = a1;
    }

    v11 = &g_lsimsm_GnmSession[4 * v5];
    *(v11 + 11) = 0;
    *(v11 + 1) = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim11_04GnmResetSession");
      v10 = 4;
      goto LABEL_13;
    }
  }

  return a1 < 2;
}

uint64_t lsim11_05GnmGetSessionInfo(unsigned int a1, int *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5, char *a6)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim11_05GnmGetSessionInfo");
    LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
  }

  if (a1 >= 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v14), "LSM", 87, "lsim11_05GnmGetSessionInfo", 2052, a1);
      v16 = 2;
LABEL_36:
      LbsOsaTrace_WriteLog(0xCu, __str, v15, v16, 1);
      return 0;
    }

    return 0;
  }

  v17 = &g_lsimsm_GnmSession[4 * a1];
  v18 = v17[1];
  if (v18 == 1)
  {
    if (a6)
    {
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v18 != 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", (*&g_MacClockTicksToMsRelation * v28), "LSM", 73, "lsim11_05GnmGetSessionInfo", 2052, a1);
        v16 = 4;
        goto LABEL_36;
      }

      return 0;
    }

    if (a6)
    {
      v19 = 1;
LABEL_12:
      *a6 = v19;
    }
  }

  if (a3)
  {
    *a3 = v17[2];
  }

  if (a4)
  {
    *a4 = *(v17 + 12);
  }

  if (a5)
  {
    *a5 = *(v17 + 13);
  }

  if (a2)
  {
    *a2 = *v17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v21 = 78;
    if (v17[1] == 2)
    {
      v21 = 89;
    }

    if (*(v17 + 14))
    {
      v22 = 84;
    }

    else
    {
      v22 = 70;
    }

    if (*(v17 + 12))
    {
      v23 = 84;
    }

    else
    {
      v23 = 70;
    }

    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SId,%u,GnmSId,%u,PosM,%u,Emer,%c,Asyc,%c,GnssIdMask,%X,CP,%c\n", v20, "LSM", 73, "lsim11_05GnmGetSessionInfo", *v17, a1, v17[2], v23, v22, *(v17 + 13), v21);
    LbsOsaTrace_WriteLog(0xCu, __str, v24, 4, 1);
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    return 1;
  }

  bzero(__str, 0x410uLL);
  v25 = mach_continuous_time();
  v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v25), "LSM", 73, "lsim11_05GnmGetSessionInfo");
  v27 = 1;
  LbsOsaTrace_WriteLog(0xCu, __str, v26, 4, 1);
  return v27;
}

uint64_t lsim11_07GnmGetSessionFromNativeId(int a1, int a2, _DWORD *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim11_07GnmGetSessionFromNativeId");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  if (a3)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      if (a2)
      {
        v11 = &g_lsimsm_GnmSession[4 * v8];
        if (v11[1] == a2 && *v11 == a1)
        {
          break;
        }
      }

      v9 = 0;
      v12 = 0;
      v8 = 1;
      if ((v10 & 1) == 0)
      {
        return v12;
      }
    }

    *a3 = v8;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ExistingSession,SId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v15), "LSM", 73, "lsim11_07GnmGetSessionFromNativeId", a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v16, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "LSM", 73, "lsim11_07GnmGetSessionFromNativeId");
      v12 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v18, 4, 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v12 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSessIdPtr\n", (*&g_MacClockTicksToMsRelation * v13), "LSM", 87, "lsim11_07GnmGetSessionFromNativeId", 513);
      LbsOsaTrace_WriteLog(0xCu, __str, v14, 2, 1);
      return 0;
    }
  }

  return v12;
}

uint64_t lsim11_13GnmAsyncRspNeeded(unsigned int a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim11_13GnmAsyncRspNeeded");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (a1 >= 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u\n", v15);
LABEL_16:
      LbsOsaTrace_WriteLog(0xCu, __str, v4, 2, 1);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v5 = &g_lsimsm_GnmSession[4 * a1];
  if (!v5[1])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnmSId,%u unused\n", v16);
      goto LABEL_16;
    }

LABEL_17:
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "LSM", 73, "lsim11_13GnmAsyncRspNeeded");
      LbsOsaTrace_WriteLog(0xCu, __str, v13, 4, 1);
    }

    v11 = 0;
    return v11 & 1;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v7 = 70;
    if (*(v5 + 14))
    {
      v7 = 84;
    }

    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnmSId,%u,Asyc,%c\n", v6, "LSM", 73, "lsim11_13GnmAsyncRspNeeded", a1, v7);
    LbsOsaTrace_WriteLog(0xCu, __str, v8, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "LSM", 73, "lsim11_13GnmAsyncRspNeeded");
    LbsOsaTrace_WriteLog(0xCu, __str, v10, 4, 1);
  }

  v11 = *(v5 + 14);
  return v11 & 1;
}

__n128 Init_DB_SV_Nav_Mess(unint64_t a1)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v2 = a1 + 39124;
  *(a1 + 39300) = 0;
  *(a1 + 39268) = 0u;
  *(a1 + 39284) = 0u;
  v3 = a1 + 0x2000;
  *(a1 + 39236) = 0u;
  *(a1 + 39252) = 0u;
  *(a1 + 39204) = 0u;
  *(a1 + 39220) = 0u;
  *(a1 + 39172) = 0u;
  *(a1 + 39188) = 0u;
  *(a1 + 39140) = 0u;
  *(a1 + 39156) = 0u;
  *(a1 + 39124) = 0u;
  v4 = a1 + 33605;
  v5 = (a1 + 33784);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = vdupq_n_s64(a1);
  *(a1 + 48) = vaddq_s64(v6, xmmword_2997614F0);
  *(a1 + 16) = a1 + 37878;
  *(a1 + 24) = a1 + 38056;
  *(a1 + 32) = a1 + 38234;
  *(a1 + 40) = a1 + 38412;
  *(a1 + 64) = a1 + 37700;
  *(a1 + 72) = a1 + 38590;
  *(a1 + 80) = vaddq_s64(v6, xmmword_299761500);
  *(a1 + 96) = v2;
  *(v3 + 272) = 0;
  *&v7 = 0x101010101010101;
  *(&v7 + 1) = 0x101010101010101;
  *(a1 + 8466) = v7;
  *(a1 + 8482) = v7;
  *(a1 + 8504) = a1 + 33734;
  *(a1 + 8512) = a1 + 36364;
  *(a1 + 8552) = a1 + 37473;
  *(a1 + 8560) = a1 + 37651;
  *(a1 + 8568) = a1 + 37829;
  *(a1 + 8520) = a1 + 38007;
  *(a1 + 8528) = a1 + 38185;
  *(a1 + 8536) = a1 + 38363;
  *(a1 + 8544) = a1 + 38541;
  *(a1 + 8576) = a1 + 38719;
  *(a1 + 8584) = a1 + 38897;
  *(a1 + 8592) = a1 + 39075;
  *(a1 + 8600) = a1 + 39253;
  *(a1 + 11208) = a1 + 33637;
  *(a1 + 11216) = a1 + 34424;
  *(a1 + 16272) = vaddq_s64(v6, xmmword_299761510);
  *(a1 + 16288) = a1 + 37732;
  *(a1 + 16248) = a1 + 37910;
  *(a1 + 16264) = a1 + 38266;
  *(a1 + 16256) = a1 + 38088;
  *(a1 + 16304) = a1 + 38622;
  *(a1 + 16312) = a1 + 38800;
  *(a1 + 16320) = a1 + 38978;
  *(a1 + 16328) = a1 + 39156;
  *&v8 = 0x7F7F7F7F7F7F7F7FLL;
  *(&v8 + 1) = 0x7F7F7F7F7F7F7F7FLL;
  *(a1 + 16336) = v8;
  *(a1 + 16352) = v8;
  *(a1 + 16368) = v8;
  *(a1 + 0x4000) = v8;
  *(a1 + 16400) = v8;
  *(a1 + 16416) = v8;
  *(a1 + 16432) = v8;
  *(a1 + 16448) = v8;
  *(a1 + 16464) = v8;
  *(a1 + 16480) = 0x7F7F7F7F7F7F7F7FLL;
  *(a1 + 16536) = 0;
  *(a1 + 16504) = 0u;
  *(a1 + 16520) = 0u;
  *(a1 + 16488) = 0u;
  *(a1 + 16560) = a1 + 33661;
  *(a1 + 16568) = a1 + 34904;
  *(a1 + 16608) = a1 + 37400;
  *(a1 + 16616) = a1 + 37578;
  *(a1 + 16624) = a1 + 37756;
  *(a1 + 16576) = a1 + 37934;
  *(a1 + 16584) = a1 + 38112;
  *(a1 + 16592) = a1 + 38290;
  *(a1 + 16600) = a1 + 38468;
  *(a1 + 16632) = a1 + 38646;
  *(a1 + 16640) = a1 + 38824;
  *(a1 + 16648) = a1 + 39002;
  *(a1 + 16656) = a1 + 39180;
  *(a1 + 16728) = 0;
  *(a1 + 16696) = 0u;
  *(a1 + 16712) = 0u;
  *(a1 + 16664) = 0u;
  *(a1 + 16680) = 0u;
  *(a1 + 24416) = a1 + 33697;
  *(a1 + 24424) = a1 + 35624;
  *(a1 + 24464) = a1 + 37436;
  *(a1 + 24472) = a1 + 37614;
  *(a1 + 24432) = a1 + 37970;
  *(a1 + 24440) = a1 + 38148;
  *(a1 + 24448) = a1 + 38326;
  *(a1 + 24456) = a1 + 38504;
  *(a1 + 24480) = vaddq_s64(v6, xmmword_299761520);
  *(a1 + 24496) = a1 + 38860;
  *(a1 + 24504) = a1 + 39038;
  *(a1 + 24512) = a1 + 39216;
  *(a1 + 16544) = vaddq_s64(v6, xmmword_299761530);
  *(v4 + 176) = 257;
  *(v4 + 144) = v7;
  *(v4 + 160) = v7;
  *(v4 + 112) = v7;
  *(v4 + 128) = v7;
  *(v4 + 80) = v7;
  *(v4 + 96) = v7;
  *(v4 + 48) = v7;
  *(v4 + 64) = v7;
  *(v4 + 16) = v7;
  *(v4 + 32) = v7;
  *v4 = v7;
  bzero(v5, 0xDE8uLL);
  v13[0] = 0.0;
  *(a1 + 8440) = 0;
  *(a1 + 8456) = 0;
  *(a1 + 8448) = 0;
  API_Get_UTC_Cor(1, v13);
  v9 = -0.5;
  if (v13[0] > 0.0)
  {
    v9 = 0.5;
  }

  v10 = v13[0] + v9;
  if (v13[0] + v9 <= 2147483650.0)
  {
    if (v10 >= -2147483650.0)
    {
      v11 = v10;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = -1;
  }

  *(v3 + 266) = v11;
  *(v3 + 269) = v11;
  *(a1 + 8444) = 1;
  EvLog_v("Init_DBnm: Default GPS-UTC %d s applied", v11);
  result.n128_u64[0] = 0x101010101010101;
  result.n128_u64[1] = 0x101010101010101;
  *(a1 + 39426) = result;
  *(a1 + 39399) = result;
  *(a1 + 39415) = result;
  *(a1 + 39367) = result;
  *(a1 + 39383) = result;
  *(a1 + 39335) = result;
  *(a1 + 39351) = result;
  *(a1 + 39303) = result;
  *(a1 + 39319) = result;
  *(a1 + 39442) = 0;
  *(a1 + 39450) = 0;
  return result;
}

uint64_t Init_DB_SV_Nav_Mess_NV(uint64_t a1)
{
  v2 = 0;
  v144 = *MEMORY[0x29EDCA608];
  v3 = a1 + 33548;
  v4 = a1 + 24368;
  v5 = a1 + 16224;
  memset(v143, 0, 108);
  v6 = 104;
  do
  {
    v7 = v2 + 1;
    if (Core_Load_GPS_Eph((v2 + 1), v143))
    {
      v8 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = (a1 + v6);
      v10 = v143[5];
      v9[4] = v143[4];
      v9[5] = v10;
      *(v9 + 92) = *(&v143[5] + 12);
      v11 = v143[1];
      *v9 = v143[0];
      v9[1] = v11;
      v12 = v143[3];
      v9[2] = v143[2];
      v9[3] = v12;
      *(*(a1 + 16) + v2) = 1;
      *(*(a1 + 48) + v2) = 1;
    }

    v6 += 108;
    ++v2;
  }

  while (v7 != 32);
  v13 = 0;
  v14 = 8608;
  memset(v143, 0, 108);
  do
  {
    if (Core_Load_QZSS_Eph((v13 - 63), v143))
    {
      v15 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (a1 + v14);
      v17 = v143[5];
      v16[4] = v143[4];
      v16[5] = v17;
      *(v16 + 92) = *(&v143[5] + 12);
      v18 = v143[1];
      *v16 = v143[0];
      v16[1] = v18;
      v19 = v143[3];
      v16[2] = v143[2];
      v16[3] = v19;
      *(*(a1 + 8520) + v13) = 1;
      *(*(a1 + 8552) + v13) = 1;
    }

    ++v13;
    v14 += 108;
  }

  while (v13 != 10);
  memset(v143, 0, 62);
  v20 = 4084;
  v21 = 11224;
  do
  {
    if (Core_Load_GLON_Eph((v20 + 13), v143))
    {
      v22 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (a1 + v21);
      v24 = v143[1];
      *v23 = v143[0];
      v23[1] = v24;
      v25 = v143[3];
      v23[2] = v143[2];
      v23[3] = v25;
      *(*(a1 + 16248) + v20 - 4084) = 1;
      *(*(a1 + 16272) + v20 - 4084) = 1;
      *(a1 + 4 * v20) = DWORD2(v143[0]);
    }

    ++v20;
    v21 += 64;
  }

  while (v20 != 4108);
  v26 = 0;
  memset(v143, 0, 87);
  v27 = 16736;
  do
  {
    v28 = v26 + 1;
    if (Core_Load_GAL_Eph((v26 + 1), v143))
    {
      v29 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      v30 = a1 + v27;
      v31 = v143[3];
      *(v30 + 32) = v143[2];
      *(v30 + 48) = v31;
      *(v30 + 64) = v143[4];
      *(v30 + 80) = *&v143[5];
      v32 = v143[1];
      *v30 = v143[0];
      *(v30 + 16) = v32;
      *(*(a1 + 16576) + v26) = 1;
      *(*(a1 + 16608) + v26) = 1;
    }

    v27 += 88;
    ++v26;
  }

  while (v28 != 36);
  v33 = 0;
  LODWORD(v143[6]) = 0;
  memset(v143, 0, 23);
  memset(&v143[1] + 8, 0, 64);
  v34 = 24520;
  *(&v143[5] + 6) = 0;
  do
  {
    v35 = v33 + 1;
    if (Core_Load_BDS_Eph((v33 + 1), v143))
    {
      v36 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v36 = 1;
    }

    if (!v36)
    {
      v37 = a1 + v34;
      v38 = v143[5];
      *(v37 + 64) = v143[4];
      *(v37 + 80) = v38;
      *(v37 + 96) = v143[6];
      v39 = v143[1];
      *v37 = v143[0];
      *(v37 + 16) = v39;
      v40 = v143[3];
      *(v37 + 32) = v143[2];
      *(v37 + 48) = v40;
      *(*(a1 + 24432) + v33) = 1;
      *(*(a1 + 24464) + v33) = 1;
    }

    v34 += 100;
    ++v33;
  }

  while (v35 != 37);
  v41 = 0;
  memset(v143, 0, 44);
  v42 = 7016;
  do
  {
    v43 = v41 + 1;
    if (Core_Load_GPS_Alm((v41 + 1), v143))
    {
      v44 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v44 = 1;
    }

    if (!v44)
    {
      v45 = (a1 + v42);
      v46 = v143[1];
      *v45 = v143[0];
      v45[1] = v46;
      *(v45 + 28) = *(&v143[1] + 12);
      *(*(a1 + 24) + v41) = 1;
      *(*(a1 + 64) + v41) = 1;
    }

    v42 += 44;
    ++v41;
  }

  while (v43 != 32);
  v47 = 0;
  memset(v143, 0, 44);
  v48 = 10768;
  do
  {
    if (Core_Load_QZSS_Alm((v47 - 63), v143))
    {
      v49 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v49 = 1;
    }

    if (!v49)
    {
      v50 = (a1 + v48);
      v51 = v143[1];
      *v50 = v143[0];
      v50[1] = v51;
      *(v50 + 28) = *(&v143[1] + 12);
      *(*(a1 + 8528) + v47) = 1;
      *(*(a1 + 8568) + v47) = 1;
    }

    ++v47;
    v48 += 44;
  }

  while (v47 != 10);
  *v142 = 0;
  *&v142[8] = 0;
  memset(&v142[12], 0, 24);
  v52 = 4084;
  v53 = 15352;
  do
  {
    if (Core_Load_GLON_Alm((v52 + 13), v142))
    {
      v54 = *v142 < 1;
    }

    else
    {
      v54 = 1;
    }

    if (!v54)
    {
      v143[0] = 0uLL;
      *(&v143[1] + 5) = 0;
      *&v143[1] = 0;
      *(&v143[1] + 14) = 0;
      BYTE6(v143[2]) = 0;
      GLON_AlmBin2Int(v142, v143);
      if (BYTE4(v143[2]) == 1)
      {
        v55 = a1 + v53;
        v56 = *&v142[16];
        *v55 = *v142;
        *(v55 + 16) = v56;
        *(v55 + 32) = *&v142[32];
        *(*(a1 + 16256) + v52 - 4084) = 1;
      }

      *(*(a1 + 16288) + v52 - 4084) = 1;
      v57 = BYTE11(v143[0]);
      v58 = BYTE11(v143[0]) - 32;
      if (BYTE11(v143[0]) <= 0x18u)
      {
        v58 = 2139062143;
      }

      if (BYTE11(v143[0]) >= 7u)
      {
        v57 = v58;
      }

      if (v57 != 2139062143)
      {
        *(a1 + 4 * v52) = v57;
      }
    }

    ++v52;
    v53 += 36;
  }

  while (v52 != 4108);
  v59 = 0;
  memset(v143, 0, 35);
  v60 = 23072;
  do
  {
    v61 = v59 + 1;
    if (Core_Load_GAL_Alm((v59 + 1), v143))
    {
      v62 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v62 = 1;
    }

    if (!v62)
    {
      v63 = a1 + v60;
      v64 = v143[1];
      *v63 = v143[0];
      *(v63 + 16) = v64;
      *(v63 + 32) = v143[2];
      *(*(a1 + 16584) + v59) = 1;
      *(*(a1 + 16624) + v59) = 1;
    }

    v60 += 36;
    ++v59;
  }

  while (v61 != 36);
  v65 = 0;
  memset(v143, 0, 44);
  v66 = 31920;
  do
  {
    v67 = v65 + 1;
    if (Core_Load_BDS_Alm((v65 + 1), v143))
    {
      v68 = SLODWORD(v143[0]) < 1;
    }

    else
    {
      v68 = 1;
    }

    if (!v68)
    {
      v69 = (a1 + v66);
      v70 = v143[1];
      *v69 = v143[0];
      v69[1] = v70;
      *(v69 + 28) = *(&v143[1] + 12);
      *(*(a1 + 24440) + v65) = 1;
      *(*(a1 + 24480) + v65) = 1;
    }

    v66 += 44;
    ++v65;
  }

  while (v67 != 37);
  v71 = 0;
  v72 = 0;
  v73 = p_NV;
  v74 = p_NV + 0x4000;
  v75 = *a1;
  v76 = 55665;
  do
  {
    v77 = *(p_NV + 88 + v71) ^ BYTE1(v76);
    v76 = 52845 * (v76 + v77) + 22719;
    v72 += v77;
    ++v71;
  }

  while (v71 != 40);
  if (*(p_NV + 80) == v72)
  {
    v78 = *(p_NV + 92);
    v75[1] = *(p_NV + 108);
  }

  else
  {
    *&v78 = 0x101010101010101;
    *(&v78 + 1) = 0x101010101010101;
    v75[1] = v78;
  }

  *v75 = v78;
  v79 = 0;
  v80 = 0;
  v81 = *(a1 + 8504);
  v82 = 55665;
  do
  {
    v83 = *(v73 + 5824 + v79) ^ BYTE1(v82);
    v82 = 52845 * (v82 + v83) + 22719;
    v80 += v83;
    ++v79;
  }

  while (v79 != 16);
  if (*(v73 + 5816) == v80)
  {
    v84 = *(v73 + 5828);
    *(v81 + 8) = *(v73 + 5836);
    *v81 = v84;
  }

  else
  {
    *v81 = 0x101010101010101;
    *(v81 + 8) = 257;
  }

  v85 = 0;
  v86 = 0;
  v87 = *(a1 + 11208);
  v88 = 55665;
  do
  {
    v89 = *(v73 + 19168 + v85) ^ BYTE1(v88);
    v88 = 52845 * (v88 + v89) + 22719;
    v86 += v89;
    ++v85;
  }

  while (v85 != 32);
  if (*(v73 + 19160) == v86)
  {
    v90 = *(v73 + 19172);
    *(v87 + 16) = *(v73 + 19188);
    *v87 = v90;
  }

  else
  {
    *(v87 + 8) = 0x101010101010101;
    *(v87 + 16) = 0x101010101010101;
    *v87 = 0x101010101010101;
  }

  v91 = 0;
  v92 = 0;
  v93 = *(a1 + 16560);
  v94 = 55665;
  do
  {
    v95 = *(v73 + 7608 + v91) ^ BYTE1(v94);
    v94 = 52845 * (v94 + v95) + 22719;
    v92 += v95;
    ++v91;
  }

  while (v91 != 40);
  if (*(v73 + 7600) == v92)
  {
    v96 = *(v73 + 7612);
    v97 = *(v73 + 7628);
    *(v93 + 32) = *(v73 + 7644);
    *(v93 + 16) = v97;
  }

  else
  {
    *(v93 + 32) = 16843009;
    *&v96 = 0x101010101010101;
    *(&v96 + 1) = 0x101010101010101;
    *(v93 + 16) = v96;
  }

  *v93 = v96;
  v98 = 0;
  v99 = 0;
  v100 = *(a1 + 24416);
  v101 = 55665;
  do
  {
    result = BYTE1(v101);
    v103 = *(v73 + 12864 + v98) ^ BYTE1(v101);
    v101 = 52845 * (v101 + v103) + 22719;
    v99 += v103;
    ++v98;
  }

  while (v98 != 48);
  if (*(v73 + 12856) == v99)
  {
    v104 = *(v73 + 12868);
    v105 = *(v73 + 12884);
    *(v100 + 29) = *(v73 + 12897);
    *(v100 + 16) = v105;
  }

  else
  {
    *(v100 + 29) = 0x101010101010101;
    *&v104 = 0x101010101010101;
    *(&v104 + 1) = 0x101010101010101;
    *(v100 + 16) = v104;
  }

  *v100 = v104;
  v106 = 0;
  v107 = 0;
  v108 = *(a1 + 16544);
  *(v108 + 31) = 0x101010101010101;
  *&v109 = 0x101010101010101;
  *(&v109 + 1) = 0x101010101010101;
  *v108 = v109;
  *(v108 + 16) = v109;
  v110 = 55665;
  do
  {
    v111 = *(v73 + 160 + v106) ^ BYTE1(v110);
    v110 = 52845 * (v110 + v111) + 22719;
    v107 += v111;
    ++v106;
  }

  while (v106 != 24);
  if (*(v73 + 152) == v107 && (v112 = *(v73 + 160), v143[0] = *(v73 + 164), LODWORD(v143[1]) = *(v73 + 180), v112 >= 1))
  {
    *(a1 + 8440) = v112;
    *(a1 + 8444) = v143[0];
    *(a1 + 8460) = v143[1];
  }

  else
  {
    *(a1 + 8444) = 0;
  }

  v113 = 0;
  v114 = 0;
  v115 = 55665;
  do
  {
    v116 = *(v73 + 136 + v113) ^ BYTE1(v115);
    v115 = 52845 * (v115 + v116) + 22719;
    v114 += v116;
    ++v113;
  }

  while (v113 != 16);
  if (*(v73 + 128) == v114)
  {
    v117 = *(v73 + 136);
    *&v143[0] = *(v73 + 140);
    DWORD2(v143[0]) = *(v73 + 148);
    if (v117 >= 1)
    {
      *(a1 + 8424) = v117;
      *(a1 + 8428) = *&v143[0];
      *(a1 + 8436) = DWORD2(v143[0]);
      *(a1 + 8428) = 4;
    }
  }

  v118 = 0;
  v119 = 0;
  v120 = 55665;
  do
  {
    v121 = *(v73 + 7656 + v118) ^ BYTE1(v120);
    v120 = 52845 * (v120 + v121) + 22719;
    v119 += v121;
    ++v118;
  }

  while (v118 != 16);
  if (*(v73 + 7648) == v119)
  {
    v122 = *(v73 + 7656);
    DWORD2(v143[0]) = *(v73 + 7668);
    *&v143[0] = *(v73 + 7660);
    if (v122 >= 1)
    {
      *(v4 + 4) = *&v143[0];
      v123 = DWORD2(v143[0]);
      *v4 = v122;
      *(v4 + 4) = 4;
      *(v4 + 12) = v123;
      *(v4 + 16) = v122;
      v124 = *(v4 + 8);
      *(v4 + 20) = 4;
      *(a1 + 24392) = v124 * 2.91038305e-11;
      *(a1 + 24400) = *(v4 + 10) * 4.4408921e-16;
      *(v4 + 40) = 3600 * v123;
      *(v4 + 44) = *(v4 + 13);
    }
  }

  v125 = 0;
  v126 = 0;
  v127 = 55665;
  do
  {
    v128 = *(v73 + 12920 + v125) ^ BYTE1(v127);
    v127 = 52845 * (v127 + v128) + 22719;
    v126 += v128;
    ++v125;
  }

  while (v125 != 24);
  if (*(v73 + 12912) == v126)
  {
    v129 = *(v73 + 12920);
    v143[0] = *(v73 + 12924);
    if (v129 >= 1)
    {
      *v3 = v129;
      *(v3 + 4) = v143[0];
      *(v3 + 4) = 4;
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 55665;
  do
  {
    v133 = *(v73 + 19208 + v130) ^ BYTE1(v132);
    v132 = 52845 * (v132 + v133) + 22719;
    v131 += v133;
    ++v130;
  }

  while (v130 != 32);
  if (*(v73 + 19200) == v131)
  {
    v134 = *(v73 + 19208);
    v135 = *(v74 + 2832);
    v136 = *(v74 + 2834);
    v137 = *(v74 + 2836);
    v138 = *(v74 + 2840);
    LOWORD(v143[0]) = *(v73 + 19225);
    BYTE2(v143[0]) = *(v73 + 19227);
    v139 = *(v74 + 2844);
    v140 = *(v74 + 2848);
    v141 = v73 + 19233;
    *v142 = *v141;
    v142[2] = *(v141 + 2);
    if (v134 >= 1)
    {
      *(a1 + 16216) = v134;
      *v5 = v135;
      *(v5 + 2) = v136;
      *(a1 + 16228) = v137;
      *(v5 + 8) = v138;
      *(a1 + 16233) = v143[0];
      *(a1 + 16235) = BYTE2(v143[0]);
      *(a1 + 16236) = v139;
      *(v5 + 16) = v140;
      *(a1 + 16241) = *v142;
      *(a1 + 16243) = v142[2];
      *(v5 + 72) = 1;
    }
  }

  return result;
}

uint64_t NK_Map_Vector(int *a1, uint64_t a2, uint64_t a3)
{
  v139[1] = *MEMORY[0x29EDCA608];
  v6 = a1 + 5944;
  result = Core_Get_ExtA_MapV(6000, (a1 + 5944));
  if (!result)
  {
    return result;
  }

  *(a1 + 24988) = 1;
  a1[6248] = 0;
  v8 = a1[1];
  v9 = a1[5944];
  v10 = v8 - v9;
  a1[6250] = v8 - v9;
  v11 = a1[5684];
  v12 = v11 == 1 && a1[5683] == 8 && a1[5685] == 3;
  if (a1[5681] != 1)
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (v11 || a1[5683] == 8)
    {
      if (*(a2 + 11162))
      {
        goto LABEL_13;
      }
    }

    else if ((*(a2 + 11162) & 1) != 0 && v13 & 1 | (v10 < 3101))
    {
      a1[6248] = 11;
      goto LABEL_13;
    }

    result = 0;
    v73 = 12;
    goto LABEL_64;
  }

  v13 = *(a1 + 22756);
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_13:
  v129 = v13;
  if (*(p_NA + 319) == 1)
  {
    v14 = *(p_NA + 19388);
    if (v14)
    {
      v126 = 1;
      if ((a1[6269] & 1) == 0)
      {
        *(a1 + 25068) = 1;
        *(a1 + 25076) = 1;
      }
    }

    else
    {
      v126 = 0;
    }
  }

  else
  {
    v126 = 0;
    v14 = 0;
  }

  v15 = (a2 + 26848);
  v127 = v14;
  if (*(a3 + 952) >= 3.0)
  {
    v17 = *(a3 + 880);
    if (v17 < 15.0)
    {
      v128 = 0;
      v130 = 0;
      v131 = 1;
      goto LABEL_25;
    }

    v131 = 0;
    v128 = v17 < 45.0;
    v16 = v17 >= 45.0;
  }

  else
  {
    v131 = 0;
    v128 = 0;
    v16 = 1;
  }

  v130 = v16;
LABEL_25:
  v18 = *(a1 + 2973) * 0.0174532925;
  v19 = *(a1 + 2974);
  __x = cos(v18);
  v20 = *(a1 + 2977);
  v21 = __sincos_stret(v20 * 0.0174532925);
  if ((a1[5952] & 1) == 0)
  {
    *(a1 + 2975) = *(a1 + 102);
  }

  v22 = v19 * 0.0174532925;
  v23 = v9 - *v15;
  if (v9 == *v15)
  {
    v24 = 1.0;
    if (v10 >= 1000)
    {
      v24 = v10 * 0.001 + 1.0;
    }
  }

  else if ((v23 - 1) >> 4 <= 0x176 && *(a2 + 26920) == 1 && (v25 = *(a2 + 26856), v26 = *(a2 + 26864), v27 = cos(__x), v28 = vabdd_f64(v20, *(a2 + 26888)), v28 < 5.0) && (v29 = vabdd_f64(*(a1 + 2979), *(a2 + 26904)), v29 < 2.0) && (v30 = v25 * 0.0174532925, v31 = v26 * 0.0174532925, v32 = sqrt(v27 * ((v22 - v31) * 6378137.0) * (v27 * ((v22 - v31) * 6378137.0)) + (v18 - v25 * 0.0174532925) * 6378137.0 * ((v18 - v25 * 0.0174532925) * 6378137.0)), v32 < *(a2 + 26896) * 0.3))
  {
    *v6 = *v15;
    v33 = *(a2 + 26864);
    v34 = *(a2 + 26880);
    v35 = *(a2 + 26896);
    *(v6 + 8) = *(a2 + 26912);
    *(v6 + 2) = v34;
    *(v6 + 3) = v35;
    *(v6 + 1) = v33;
    __x = cos(v30);
    v36 = a1[5944];
    a1[6250] = v8 - v36;
    v37 = (v8 - v36) * 0.001 + 1.0;
    if (v8 - v36 <= 999)
    {
      v37 = 1.0;
    }

    v125 = v29;
    v24 = v37;
    EvLog_v("NK_Map_Vector: DUPLICATE OS_TT P %d C %d [dt] T %d D %g W %g H %g ", *v15, v36, v23, v32, v125, v28);
    v22 = v31;
    v18 = v30;
  }

  else
  {
    v137 = v18;
    v138 = v22;
    v139[0] = *(a1 + 2975);
    Geo2ECEF(&v137, &WGS84_Datum, (a2 + 26952));
    v38 = *(a1 + 2978);
    v39 = v21.__cosval * v38;
    v40 = v21.__sinval * v38;
    v41 = v22 + v21.__sinval * v38 / *(a2 + 27080);
    v137 = v18 + v21.__cosval * v38 / *(a2 + 27072);
    v138 = v41;
    Geo2ECEF(&v137, &WGS84_Datum, (a2 + 26928));
    *(a2 + 26976) = v39;
    *(a2 + 26984) = v40;
    *v15 = *v6;
    v42 = *(v6 + 1);
    v43 = *(v6 + 2);
    v44 = *(v6 + 3);
    *(a2 + 26912) = *(v6 + 8);
    *(a2 + 26880) = v43;
    *(a2 + 26896) = v44;
    *(a2 + 26864) = v42;
    *(a2 + 26920) = 0;
    v24 = 1.0;
  }

  v45 = 0;
  v137 = 0.0;
  v138 = 0.0;
  v139[0] = 0;
  v134 = 0.0;
  v135 = 0.0;
  v136 = 0;
  do
  {
    *&v139[v45] = *&a1[2 * v45 + 170] - *(a2 + 26944 + 8 * v45);
    v46 = v45 + 3;
    --v45;
  }

  while (v46 > 1);
  v47 = 0;
  v48 = v137;
  v49 = v138;
  v50 = (a1 + 212);
  v51 = *v139;
  do
  {
    v52 = *(v50 - 1) * v49 + *(v50 - 2) * v48;
    v53 = *v50;
    v50 += 3;
    *(&v134 + v47) = v52 + v53 * v51;
    v47 += 8;
  }

  while (v47 != 24);
  v54 = *(a2 + 26976);
  v55 = *(a2 + 26984);
  v56 = sqrt(v55 * v55 + 0.0 + v54 * v54);
  if (v56 <= 1.0e-14 || (v57 = sqrt(v135 * v135 + 0.0 + v134 * v134), v57 <= 1.0e-14))
  {
LABEL_59:
    result = 0;
    v73 = 15;
LABEL_64:
    a1[6248] = v73;
    *(a1 + 24996) = 0;
    return result;
  }

  v58 = 0;
  v59 = (0.0 - v54 * v134 - v55 * v135) / (v56 * v57);
  v60 = fabs(v59);
  if (v60 > 1.0)
  {
    v59 = v60 / v59;
  }

  do
  {
    *&v139[v58] = *&a1[2 * v58 + 170] - *(a2 + 26968 + 8 * v58);
    v61 = v58 + 3;
    --v58;
  }

  while (v61 > 1);
  v62 = 0;
  v63 = v137;
  v64 = v138;
  v65 = (a1 + 212);
  v66 = *v139;
  do
  {
    v67 = *(v65 - 1) * v64 + *(v65 - 2) * v63;
    v68 = *v65;
    v65 += 3;
    *(&v134 + v62) = v67 + v68 * v66;
    v62 += 8;
  }

  while (v62 != 24);
  v69 = sqrt(v135 * v135 + 0.0 + v134 * v134);
  if (v69 <= 1.0e-14)
  {
    if (v59 < 0.0)
    {
LABEL_57:
      result = 0;
      *(a1 + 24996) = 0;
      v72 = 16;
      goto LABEL_58;
    }

    goto LABEL_59;
  }

  v70 = (v54 * v134 + 0.0 + v55 * v135) / (v56 * v69);
  v71 = fabs(v70);
  if (v71 > 1.0)
  {
    v70 = v71 / v70;
  }

  if (v59 < 0.0)
  {
    goto LABEL_57;
  }

  if (v70 < 0.0)
  {
    result = 0;
    *(a1 + 24996) = 0;
    v72 = 17;
LABEL_58:
    a1[6248] = v72;
    return result;
  }

  v74 = 0;
  v75 = 0.0;
  do
  {
    v76 = *(a2 + 26968 + 8 * v74) - *&a1[2 * v74 + 170];
    v75 = v75 + v76 * v76;
    v77 = v74 + 3;
    --v74;
  }

  while (v77 > 1);
  v78 = acos(v70);
  v79 = sqrt(v75);
  v80 = __sincos_stret(v78);
  v81 = v80.__sinval * v79;
  *(a1 + 3008) = v80.__sinval * v79;
  *(a1 + 3007) = v80.__cosval * v79;
  if (v80.__cosval * v79 < 0.0)
  {
    if (v80.__cosval * v79 < *(a1 + 2978) * -0.05)
    {
      result = 0;
      v73 = 13;
      goto LABEL_64;
    }

    *(a1 + 3007) = 0;
  }

  v82 = v130;
  if (v81 > 35.0)
  {
    v82 = 1;
  }

  if (v82 == 1 && *(a1 + 22992) == 1 && a1[5749] == 1 && (a1[5752] & 1) == 0 && !a1[6256] && *(a1 + 2880) < 90000.0 && (a1[5750] - 3) <= 1)
  {
    v83 = (*(a1 + 2877) - v18) * 6378137.0;
    v84 = __x * ((*(a1 + 2878) - v22) * 6378137.0);
    v85 = *(a2 + 26976);
    v86 = *(a2 + 26984);
    v87 = v86 * v86 + v85 * v85;
    v88 = v85 * v86;
    if (v87 <= 1.0)
    {
      v87 = 1.0;
    }

    v89 = v85 * v85;
    v90 = (v88 * v84 + v89 * v83) / v87;
    v91 = (v83 * v88 + v89 * v84) / v87;
    *(a1 + 3010) = sqrt(v91 * v91 + v90 * v90);
    v133[2] = 0.0;
    v133[0] = v18 + v90 * 0.000000156785594;
    v133[1] = v22 + v91 * (1.0 / (__x * 6378137.0));
    v92 = Horiz_Diff_Sqd(v133, a1 + 2877);
    *(a1 + 3011) = sqrt(v92);
    v93 = v92 < *(a1 + 2880) * 9.0;
    v81 = *(a1 + 3008);
  }

  else
  {
    v93 = 0;
  }

  if (v81 > 35.0 && (!v93 || *(a1 + 3011) > 17.5 || *(a1 + 3010) > *(a1 + 2978) * 1.5))
  {
    result = 0;
    v73 = 14;
    goto LABEL_64;
  }

  v94 = *(a2 + 11152);
  if (v94 <= 0.5)
  {
    v95 = 7000;
  }

  else
  {
    v95 = 3000;
  }

  if (v94 <= 5.0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 5000;
  }

  if (v94 > 17.0)
  {
    v96 = 7000;
  }

  v97 = *a1;
  if (*a1 - *(a2 + 11248) >= v96)
  {
    v98 = (a1 + 238);
    if (*(a2 + 11188) >= 2)
    {
      v98 = (a2 + 11192);
    }
  }

  else
  {
    v98 = (a2 + 11240);
  }

  v99 = *(a1 + 2977);
  v100 = *v98 - v99;
  *(a1 + 3009) = v100;
  if (v100 >= 180.0)
  {
    v101 = -360.0;
  }

  else
  {
    if (v100 >= -180.0)
    {
      goto LABEL_107;
    }

    v101 = 360.0;
  }

  v100 = v100 + v101;
  *(a1 + 3009) = v100;
LABEL_107:
  v102 = fabs(v100);
  if ((v131 | v128) == 1)
  {
    if (v102 > 45.0)
    {
      result = 0;
      v73 = 18;
      goto LABEL_64;
    }
  }

  else if (v102 > 45.0 && v93 && *(a1 + 3011) > 17.5 && *(a1 + 3010) > *(a1 + 2978) * 1.5)
  {
    result = 0;
    v73 = 19;
    goto LABEL_64;
  }

  v103 = *(a1 + 3007);
  v104.f64[0] = v21.__cosval;
  v104.f64[1] = v21.__sinval;
  v105 = vdivq_f64(vmulq_n_f64(v104, v103), *(a2 + 27072));
  v106 = vdupq_n_s64(0x3F91DF46A2529D44uLL);
  v107 = *(a1 + 2978);
  if (v107 - v103 <= 0.0)
  {
    v108 = 1.0;
  }

  else
  {
    v108 = v107 - v103;
  }

  v109 = *(a1 + 2979);
  if (v129)
  {
    v110 = v107 * 0.05;
    v111 = 0.25;
  }

  else
  {
    v110 = v107 * 3.0;
    if ((a1[5961] & 1) == 0 && (*(a1 + 23841) & 1) == 0)
    {
      v112 = v126 ^ 1;
      if ((v127 - 8) > 0xFFFFFFFC)
      {
        v112 = 1;
      }

      if (v112)
      {
        v113 = v109 * 0.333333333;
        goto LABEL_126;
      }
    }

    v111 = 0.166666667;
  }

  v113 = v109 * v111;
LABEL_126:
  v114 = vmlaq_f64(v105, v106, *(a1 + 5946));
  v115 = v131;
  if (v108 >= v107 * 0.333333333)
  {
    v115 = 1;
  }

  if ((v115 & 1) == 0)
  {
    v113 = v113 + v103 * 0.5 * (1.0 / sqrt(v108));
  }

  *(a1 + 23848) = 1;
  a1[5963] = 1;
  a1[5965] = 0;
  *(a1 + 23864) = 0;
  a1[5967] = v97;
  *(a1 + 1492) = v114;
  *(a1 + 2990) = v110 * v110;
  *(a1 + 2991) = v113 * v113;
  *(a1 + 2987) = v110 * v110;
  *(a1 + 2988) = v113 * v113;
  if (*(a2 + 26920) == 1)
  {
    a1[5965] = 2;
  }

  if ((v129 & 1) == 0)
  {
    *(a1 + 2987) = v24 * (v110 * v110);
    *(a1 + 2988) = v24 * (v113 * v113);
  }

  if (v99 >= 180.0)
  {
    v116 = v99 + -180.0;
  }

  else
  {
    v116 = v99;
  }

  *(a1 + 2989) = v116 * 0.0174532925;
  *(a1 + 2994) = 0x4039000000000000;
  if (*(a1 + 3084) < 10.0 && v12)
  {
    v117 = 0;
  }

  else
  {
    v117 = Horz_Meas_Update(5u, a1 + 100, a1 + 104, 0xBu, a1 + 2981, a2 + 872, (a2 + 11000));
    v97 = *a1;
    v99 = *(a1 + 2977);
  }

  *(a1 + 24868) = v117;
  *(a2 + 26920) = v117;
  *(a1 + 23976) = 1;
  a1[5995] = 1;
  a1[5998] = v97;
  *(a1 + 23988) = 0;
  Comp_Track8(a1 + 114);
  *(a1 + 3002) = v118;
  *(a1 + 3000) = v99;
  *(a1 + 3001) = 0x3FD0000000000000;
  v119 = 0.25;
  if (((v129 | v131) & 1) == 0)
  {
    v120 = 1.0;
    if (v108 < *(a1 + 2978) * 0.333333333)
    {
      v120 = fabs(*(a1 + 3009)) * 0.5 + 1.0;
    }

    v119 = v120 * v120;
    *(a1 + 3001) = v119;
  }

  if ((v129 & 1) == 0)
  {
    v119 = v24 * v24 * v119;
    *(a1 + 3001) = v119;
  }

  v121 = *(a1 + 3092);
  if (v121 < 10.0 && v12)
  {
    *(a1 + 3001) = v119 * (10.0 / v121 * (10.0 / v121));
  }

  *(a1 + 3004) = 0x4039000000000000;
  v122 = *(a1 + 118);
  *(a1 + 3006) = v122;
  if (v129 & 1 | (v122 < 1.0))
  {
    *(a1 + 23976) = 0;
  }

  v123 = Track_Meas_Update(8, a1 + 104, 0xBu, a1 + 23976, a2 + 872, (a2 + 11018), v99, v122, 1.0);
  *(a1 + 24869) = v123;
  if ((v129 & 1) == 0 && ((*(a1 + 118) >= 1.0) & ~v130) != 0)
  {
    if (v123)
    {
      *(a1 + 119) = *(a1 + 2977);
    }
  }

  else
  {
    v124 = *(a1 + 2977);
    *(a1 + 119) = v124;
    *(a2 + 11240) = v124;
    *(a2 + 11248) = *a1;
  }

  result = 1;
  *(a1 + 24996) = 1;
  return result;
}

void NK_Set_Sens_Aug_GNSS_Input(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74[1] = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 24);
  *a8 = vrev64_s32(*a1);
  *(a8 + 8) = v12;
  v13 = a1 + 23272;
  v14 = (a7 + 856);
  *(a8 + 16) = *(a1 + 12);
  *(a8 + 20) = *(a1 + 17);
  *(a8 + 22) = *(a1 + 18);
  *(a8 + 24) = *(a1 + 44);
  v74[0] = 0.0;
  if (!R8_EQ((a1 + 736), v74))
  {
    v15 = *(a1 + 792);
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

    *(a8 + 28) = v18;
  }

  v66 = a8 + 0x2000;
  API_Get_UTC_Cor(1, (a8 + 792));
  v19 = vdupq_n_s64(0x41B1DE784A000000uLL);
  *(a8 + 96) = vmulq_f64(*(a7 + 144), v19);
  *(a8 + 112) = vmulq_f64(*(a7 + 160), v19);
  *(a8 + 784) = *(a7 + 1);
  v20 = *(a7 + 88);
  *(a8 + 128) = *(a7 + 72);
  *(a8 + 144) = v20;
  v21 = *(a7 + 112);
  *(a8 + 152) = *(a7 + 96);
  *(a8 + 168) = v21;
  v67 = a2;
  memcpy((a8 + 256), (a2 + 344), 0x210uLL);
  v22 = *(a7 + 840);
  *(a8 + 176) = *(a7 + 848);
  *(a8 + 184) = v22;
  *(a8 + 192) = v14[2];
  *(a8 + 208) = v14[3];
  *(a8 + 224) = *(a7 + 824);
  *(a8 + 232) = *v14;
  *(a8 + 248) = *(a7 + 880);
  *(a8 + 32) = *v13;
  *(a8 + 40) = *(a1 + 23280);
  *(a8 + 56) = *(v13 + 24);
  v65 = v13;
  *(a8 + 64) = *(v13 + 32);
  v23 = (a8 + 1208);
  v24 = 48;
  do
  {
    *(v23 + 123) = 0uLL;
    v23[6] = 0uLL;
    v23[7] = 0uLL;
    v23[4] = 0uLL;
    v23[5] = 0uLL;
    v23[2] = 0uLL;
    v23[3] = 0uLL;
    *v23 = 0uLL;
    v23[1] = 0uLL;
    v23 += 9;
    --v24;
  }

  while (v24);
  v25 = 0;
  v26 = 0;
  v69 = a8;
  v27 = (a8 + 1346);
  v28 = -1152;
  v29 = 14112;
  v30 = 8632;
  v31 = 8440;
  do
  {
    v32 = a4 + 4 * v26;
    v33 = *(v32 + 76);
    if (Is_Legal(v33) && v33 != 6)
    {
      v35 = GNSS_Id_To_Num_Prn_Idx(v33);
      if (*(a5 + 192 * GNSS_Id_To_Num_Pos_Idx(*(v32 + 76)) + 184) == 1 && *(v32 + 412) >= 10)
      {
        v71 = v35;
        *(v27 - 138) = *(v32 + 76);
        *(v27 - 82) = *(a4 + v25 + 1232) + *(a1 + v25 + 30144);
        *(v27 - 74) = (*(a4 + v25 + 1616) + *(a1 + v25 + 30528)) * 0.190293673;
        *(v27 - 66) = *(a1 + 8 * v26 + 120) + *(a1 + v25 + 30912);
        v36 = *(a1 + v28 + 27840);
        *(v27 - 114) = *(a1 + v28 + 27856);
        *(v27 - 130) = v36;
        v37 = *(a1 + v28 + 28992);
        *(v27 - 90) = *(a1 + v28 + 29008);
        *(v27 - 106) = v37;
        *(v27 - 58) = *(a1 + v28 + 4464) + *(a1 + v25 + 4448);
        *(v27 - 50) = *(a1 + v28 + 10040) + *(a1 + v25 + 10024);
        *(v27 - 42) = *(a1 + v28 + 15616) + *(a1 + v25 + 15600);
        *(v27 - 34) = *(a1 + v26 + 2864);
        *(v27 - 33) = *(a1 + v31);
        *(v27 - 32) = *(a1 + v29 - 96);
        v38 = a1 + 4 * v26;
        v39 = *(v38 + 3056);
        if (v39 - 1 >= 0x1D)
        {
          if (!*(v38 + 3056))
          {
            goto LABEL_24;
          }

          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          v39 = *(v38 + 3056);
        }

        if (v39 >= 0x1D)
        {
          gn_report_assertion_failure("SV_Meas_Edit_Char");
          v40 = 120;
        }

        else
        {
          v40 = aGhkmnpqrstvyac_1[v39];
        }

        *(v27 - 31) = v40;
LABEL_24:
        v41 = *(a1 + v30);
        if (v41 - 1 >= 0x1D)
        {
          if (!*(a1 + v30))
          {
            goto LABEL_29;
          }

          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          v41 = *(a1 + v30);
        }

        if (v41 >= 0x1D)
        {
          gn_report_assertion_failure("SV_Meas_Edit_Char");
          v42 = 120;
        }

        else
        {
          v42 = aGhkmnpqrstvyac_1[v41];
        }

        *(v27 - 30) = v42;
LABEL_29:
        v43 = *(a1 + v30 + 5576);
        if (v43 - 1 >= 0x1D)
        {
          if (!*(a1 + v30 + 5576))
          {
LABEL_34:
            *(v27 - 28) = *(a1 + v26 + 2960);
            *(v27 - 27) = *(a1 + v31 + 96);
            *(v27 - 26) = *(a1 + v29);
            *(v27 - 18) = *(a6 + 178 + 2 * v71);
            *(v27 - 10) = *(a6 + v71);
            *(v27 - 2) = *(a4 + v26 + 604);
            *(v27 - 1) = *(a4 + v26 + 700);
            *v27 = *(v32 + 412);
            goto LABEL_35;
          }

          EvCrt_Illegal_Default("Any_SV_Meas_Edit", 166);
          v43 = *(a1 + v30 + 5576);
        }

        if (v43 >= 0x1D)
        {
          gn_report_assertion_failure("SV_Meas_Edit_Char");
          v44 = 120;
        }

        else
        {
          v44 = aGhkmnpqrstvyac_1[v43];
        }

        *(v27 - 29) = v44;
        goto LABEL_34;
      }
    }

LABEL_35:
    ++v26;
    ++v29;
    v27 += 144;
    v30 += 4;
    ++v31;
    v25 += 8;
    v28 += 24;
  }

  while (v26 != 48);
  *(v69 + 800) = *(a1 + 824);
  *(v69 + 808) = *(a1 + 2856);
  *(v69 + 816) = *(a1 + 8432);
  *(v69 + 824) = *(a1 + 14008);
  v45 = *(a1 + 25744);
  *(v69 + 848) = *(a1 + 25760);
  *(v69 + 832) = v45;
  v46 = *(a1 + 25784);
  *(v69 + 872) = *(a1 + 25800);
  *(v69 + 856) = v46;
  *(v69 + 880) = *(a1 + 25664);
  *(v69 + 888) = *(a1 + 25680);
  *(v69 + 896) = *(a1 + 25696);
  *(v69 + 904) = *(a1 + 25712);
  *(v69 + 912) = *(v65 + 1505);
  *(v69 + 913) = *(v65 + 1507);
  v47 = *(a1 + 25848);
  v48 = *(a1 + 25864);
  v49 = *(a1 + 25880);
  *(v69 + 968) = *(a1 + 25896);
  *(v69 + 936) = v48;
  *(v69 + 952) = v49;
  *(v69 + 920) = v47;
  v50 = *(a1 + 25920);
  *(v69 + 976) = *(a1 + 25904);
  *(v69 + 992) = v50;
  v51 = *(a1 + 26009);
  v52 = *(a1 + 25984);
  v53 = *(a1 + 26000);
  *(v69 + 1040) = *(a1 + 25968);
  *(v69 + 1081) = v51;
  *(v69 + 1072) = v53;
  *(v69 + 1056) = v52;
  v54 = *(a1 + 25952);
  *(v69 + 1008) = *(a1 + 25936);
  *(v69 + 1024) = v54;
  v55 = *(a1 + 26032);
  *(v69 + 1120) = *(a1 + 26048);
  *(v69 + 1104) = v55;
  v56 = *(a1 + 26064);
  v57 = *(a1 + 26080);
  v58 = *(a1 + 26096);
  *(v69 + 1177) = *(a1 + 26105);
  *(v69 + 1168) = v58;
  *(v69 + 1152) = v57;
  *(v69 + 1136) = v56;
  *(v69 + 1200) = *(v67 + 20);
  *(v69 + 80) = *(v67 + 56);
  *(v69 + 1201) = *(v67 + 128);
  *(v69 + 1204) = *(v67 + 132);
  v59 = *(a3 + 80);
  v60 = *(a3 + 96);
  *(v69 + 8152) = *(a3 + 112);
  *(v69 + 8120) = v59;
  *(v69 + 8136) = v60;
  v61 = *(a3 + 120);
  v62 = *(a3 + 136);
  *(v69 + 0x2000) = *(a3 + 152);
  *(v69 + 8176) = v62;
  *(v69 + 8160) = v61;
  v63 = *(a3 + 160);
  v64 = *(a3 + 176);
  *(v69 + 8232) = *(a3 + 192);
  *(v69 + 8200) = v63;
  *(v69 + 8216) = v64;
  *(v69 + 8240) = *(a3 + 200);
  *(v69 + 8256) = *(a3 + 216);
  *(v69 + 8272) = *(a3 + 232);
  *(v66 + 96) = *(a3 + 248);
}

double lpm_map_transaction_id@<D0>(uint64_t *__return_ptr a1@<X8>, const _LPP_TRANSACTION *a2@<X0>)
{
  v9 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 4) = 3;
  memset_s(a1 + 1, 0xCuLL, 0, 0xCuLL);
  if (a2)
  {
    *a1 = 1;
    *(a1 + 4) = 2;
    v5 = *(a2 + 5);
    *(a1 + 2) = *(a2 + 4);
    if (v5 > 0xFF)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx transactionNumber,%d\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 69, "lpm_map_transaction_id", 772, *(a2 + 5));
        LbsOsaTrace_WriteLog(0x13u, __str, v7, 0, 1);
      }
    }

    else
    {
      *(a1 + 12) = v5;
    }
  }

  return result;
}

double send_to_lpi_gps_real_time_integrity_req(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _LPP_TRANSACTION *a5)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = a1;
  v9[1] = a2;
  v7 = a3;
  v8 = a4;
  lpm_map_transaction_id(&v6, a5);
  return gps_set_gps_real_time_integrity(v9, &v7);
}

double send_to_lpi_gps_utc_model_req(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _LPP_TRANSACTION *a5)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v9[0] = a1;
  v9[1] = a2;
  v7 = a3;
  v8 = a4;
  lpm_map_transaction_id(&v6, a5);
  return gps_set_gps_utc_model(v9, &v7);
}

double send_to_lpi_gnss_iono_model_req(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, _LPP_TRANSACTION *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = a1;
  v12 = a2;
  v13 = BYTE2(a2);
  v9 = a4;
  v10 = a5;
  lpm_map_transaction_id(&v8, a6);
  return gps_set_gnss_iono_model(&v11, a3, 0, &v9);
}

void send_to_lpi_pos_loc_info_req(unsigned int *a1, uint64_t a2, int a3, _LPP_TRANSACTION *a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v13 = a2;
  v14 = a3;
  lpm_map_transaction_id(&v12, a4);
  v6 = a1[10];
  if (v6)
  {
    LOBYTE(v22) = -1;
    v21 = a1[2];
    v24 = a1[4];
    v26 = *(a1 + 49);
    v32 = *(a1 + 46);
    BYTE2(v22) = *(a1 + 48);
    HIBYTE(v22) = *(a1 + 13);
    v25 = *(a1 + 20);
    v9 = a1[7];
    v27 = a1[6];
    v28 = v9;
    v31 = *(a1 + 22);
    v29 = *(a1 + 32);
    v33 = *(a1 + 47);
    v34 = *(a1 + 35);
    *__str = *(a1 + 4);
    BYTE1(v22) = *(a1 + 12);
    v30 = *(a1 + 33);
    v23 = *(a1 + 14);
    v10 = *(a1 + 56);
    if (v10 == 1)
    {
      gps_gnss_start_based_mode(*a1, __str, 0, &v13);
    }

    else if (v10 == 2)
    {
      gps_gnss_start_auto_mode(*a1, __str, 0, &v13);
    }
  }

  else if ((v6 & 2) != 0)
  {
    v11 = a1[13];
    *__str = a3;
    v21 = v11;
    v22 = *(a1 + 4);
    HandleLppWlanMeasReq(__str);
  }

  else
  {
    __s = 0;
    v16 = 0;
    v17 = -255;
    v18 = -1;
    v19 = 0;
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
    HIBYTE(v17) = 1;
    v18 = a3;
    LOBYTE(v17) = send_is_supl_last_transaction(a3);
    HandleLppPosResponse(&__s);
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Positioning mode not supported\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "send_to_lpi_pos_loc_info_req", 770);
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    }
  }
}

char *LbsOsaTrace_ModuleString(unsigned int a1)
{
  v1 = a1;
  v7 = *MEMORY[0x29EDCA608];
  if (a1 < 0x1A)
  {
    return off_29EF6B3E8[a1];
  }

  if (LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = LbsOsaTrace_ModuleString(0xEu);
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", v3, v4, 87, "LbsOsaTrace_ModuleString", 515, v1);
    LbsOsaTrace_WriteLog(0xEu, __str, v5, 2, 1);
  }

  return 0;
}

uint64_t LbsOsaTrace_IsLoggingAllowed(unsigned int a1, unsigned int a2, char a3, int a4)
{
  v17 = *MEMORY[0x29EDCA608];
  SrcCfg = LbsOsaTrace_GetSrcCfg(a1);
  if (!SrcCfg)
  {
    result = LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = LbsOsaTrace_ModuleString(0xEu);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", v11, v12, 87, "LbsOsaTrace_IsLoggingAllowed", 515, a1);
    LbsOsaTrace_WriteLog(0xEu, __str, v13, 2, 1);
    return 0;
  }

  v9 = SrcCfg;
  if (a4 == 1 && !dword_2A19396BC || !*SrcCfg)
  {
    return 0;
  }

  if (a3)
  {
    return 1;
  }

  result = 0;
  v14 = *(v9 + 4);
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        return g_LbsOsaTrace_Config != 3 && g_LbsOsaTrace_Config != 0;
      }

      if (a2 != 7)
      {
        return result;
      }

      if ((g_LbsOsaTrace_Config & 0xFFFFFFFD) != 0)
      {
        return 1;
      }
    }

    else if (a2 == 4)
    {
      if ((v14 & 4) != 0)
      {
        return 1;
      }
    }

    else if ((v14 & 8) != 0)
    {
      return 1;
    }

    return 0;
  }

  if (a2 < 2)
  {
    return (v14 & 1) != 0;
  }

  if (a2 - 2 < 2)
  {
    return (v14 & 2) != 0;
  }

  return result;
}

unint64_t LbsOsaTrace_GetSeverityString(unsigned int a1)
{
  v1 = 0x464644494D574145uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 32;
  }

  return v1 & 0x7F;
}

uint64_t LbsOsaTrace_WriteLog(unsigned int a1, char *a2, uint64_t a3, int a4, int a5)
{
  v18 = *MEMORY[0x29EDCA608];
  SrcCfg = LbsOsaTrace_GetSrcCfg(a1);
  if (!SrcCfg)
  {
    if (LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v14 = LbsOsaTrace_ModuleString(0xEu);
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", v13, v14, 87, "LbsOsaTrace_WriteLog", 515, a1);
      LbsOsaTrace_WriteLog(14, __str, v15, 2, 1);
    }

    return 0;
  }

  if (*SrcCfg != 1)
  {
    return 0;
  }

  if (a5)
  {
    v11 = 1;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = a3;
  }

  gnssOsa_PrintLog(a2, a4, v11, v12);
  return a3;
}

uint64_t LbsOsaTrace_GetSrcCfg(unsigned int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 < 0x1A)
  {
    return *(&off_29EF6B4B8 + a1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%u\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 87, "LbsOsaTrace_GetSrcCfg", 515, a1);
    LbsOsaTrace_WriteLog(14, __str, v4, 2, 1);
  }

  return 0;
}

uint64_t LbsOsaTrace_PrintBinaryBuf(unsigned int a1, unsigned int a2, int a3, const void *a4, size_t a5)
{
  v17 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(a1, a2, 1, a3);
  if (result)
  {
    bzero(__str, 0x410uLL);
    SeverityString = LbsOsaTrace_GetSeverityString(a2);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = LbsOsaTrace_ModuleString(a1);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c ", v11, v12, SeverityString);
    if (v13 < 1)
    {
      v15 = 0;
    }

    else
    {
      v14 = v13;
      memcpy_s("LbsOsaTrace_FormatBuffer", 360, &__str[v13], 1040 - v13, a4, a5);
      v15 = v14 + a5;
      if ((v14 + a5) >= 0x410)
      {
        v15 = 1040;
      }
    }

    return LbsOsaTrace_WriteLog(a1, __str, v15, a2, 0);
  }

  return result;
}

uint64_t LbsOsaTrace_PrintAsciiBuf(unsigned int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v26 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(a1, a2, 1, a3);
  result = 0;
  if (a5 && IsLoggingAllowed)
  {
    v12 = 0;
    v13 = 0;
    v24 = v7;
    while (1)
    {
      v14 = (a4 + v12);
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      ++v12;
LABEL_19:
      if (a5 <= v12)
      {
        return a5;
      }
    }

    *v14 = 0;
    v17 = LbsOsaTrace_IsLoggingAllowed(a1, a2, 1, v7);
    if (v12 == v13)
    {
      if (v17)
      {
        bzero(__str, 0x410uLL);
        v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v19 = LbsOsaTrace_ModuleString(a1);
        SeverityString = LbsOsaTrace_GetSeverityString(a2);
        v23 = &str_29_13;
LABEL_14:
        v21 = v18;
        v7 = v24;
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s\n", v21, v19, SeverityString, v23);
        LbsOsaTrace_WriteLog(a1, __str, v20, a2, 1);
      }
    }

    else if (v17)
    {
      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v19 = LbsOsaTrace_ModuleString(a1);
      SeverityString = LbsOsaTrace_GetSeverityString(a2);
      v23 = (a4 + v13);
      goto LABEL_14;
    }

    *v14 = v15;
    if (v15 == 13 && v14[1] == 10)
    {
      ++v12;
    }

    v13 = ++v12;
    goto LABEL_19;
  }

  return result;
}

uint64_t LbsOsaTrace_UpdateModuleConfig(unsigned int a1, int a2, char a3)
{
  v10 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_GetSrcCfg(a1);
  if (result)
  {
    *result = a2;
    *(result + 4) = a3;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 87, "LbsOsaTrace_UpdateModuleConfig", 515, a1);
      return LbsOsaTrace_WriteLog(0xEu, __str, v8, 2, 1);
    }
  }

  return result;
}

BOOL LbsOsaTrace_GetModuleConfig(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  SrcCfg = LbsOsaTrace_GetSrcCfg(a2);
  v5 = SrcCfg;
  if (SrcCfg)
  {
    *a1 = *SrcCfg;
    *(a1 + 4) = *(SrcCfg + 4);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 87, "LbsOsaTrace_GetModuleConfig", 515, a2);
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 2, 1);
  }

  return v5 != 0;
}

uint64_t LcsTimer::Init(int *a1, int a2, int a3, int a4, int a5)
{
  v14 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  a1[2] = a5;
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,Timertype,%u,User Type,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 73, "Init", a2, a5, a3);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v12, 4, 1);
  }

  a1[3] = a4;
  return result;
}

uint64_t LcsTimer::Start(LcsTimer *this)
{
  v6 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_TimerStart_Out(*this, *(this + 2), *(this + 3));
  result = GN_SUPL_TimerStart_Out(*this, *(this + 2), *(this + 3));
  if (result)
  {
    *(this + 4) = 1;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx failed to start timer\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "Start", 770);
      return LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }
  }

  return result;
}

uint64_t LcsTimer::Stop(LcsTimer *this)
{
  v9 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_TimerStop_Out(*this, *(this + 2));
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (*(this + 4))
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: m_timer_running,%c\n", v3, "SPL", 65, "Stop", v4);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v5, 1, 1);
  }

  if (*(this + 4))
  {
    result = GN_SUPL_TimerStop_Out(*this, *(this + 2));
    if (result)
    {
      *(this + 4) = 0;
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timer stop failed for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Stop", 770, *this);
        return LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
      }
    }
  }

  return result;
}

uint64_t LcsTimer::SetTimeout(LcsTimer *this, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 84;
    if (!*(this + 4))
    {
      v6 = 70;
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,m_timer_running,%c,timeout,%u\n", v5, "SPL", 65, "SetTimeout", *this, v6, a2);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 1, 1);
  }

  *(this + 3) = a2;
  if (*(this + 4))
  {
    if (GN_SUPL_TimerStop_Out(*this, *(this + 2)))
    {
      *(this + 4) = 0;
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: timer is stopped successfully for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 73, "SetTimeout", *this);
      v10 = 4;
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        return result;
      }

      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timer stop failed for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "SetTimeout", 770, *this);
      v10 = 0;
    }

    return LbsOsaTrace_WriteLog(0x12u, __str, v9, v10, 1);
  }

  return result;
}

uint64_t LcsTimer::Release(LcsTimer *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = 84;
    if (!*(this + 4))
    {
      v3 = 70;
    }

    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,m_timer_running,%c\n", v2, "SPL", 65, "Release", *this, v3);
    LbsOsaTrace_WriteLog(0x12u, __str, v4, 1, 1);
  }

  if (!*(this + 4))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2u, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timer not running\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 87, "Release", 1028);
    v8 = 2;
    return LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
  }

  result = GN_SUPL_TimerStop_Out(*this, *(this + 2));
  if ((result & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timer stop failed for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Release", 770, *this);
      v8 = 0;
      return LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
    }
  }

  return result;
}

uint64_t LcsTimer::OnTimer(LcsTimer *this)
{
  v9 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4u, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "OnTimer", this);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
  }

  Instance = SuplProvider::GetInstance(IsLoggingAllowed);
  if (Instance)
  {
    v6 = (Instance + 8);
  }

  else
  {
    v6 = 0;
  }

  return (**v6)(v6, this);
}

double InitIMUGen(uint64_t a1)
{
  v2 = (a1 + 840);
  bzero(a1, 0x370uLL);
  *v2 = xmmword_299761580;
  *(a1 + 400) = 0x403F666666666666;
  *(a1 + 816) = 0x4051A2C105EF014FLL;
  *(a1 + 873) = 257;
  *(a1 + 856) = 0x4059000000000000;
  *(a1 + 944) = 0x7FEFFFFFFFFFFFFFLL;
  if ((g_FPE_LogSeverity & 8) == 0)
  {
    *(a1 + 880) = 0x408F400000000000;
    v3 = 1000.0;
LABEL_8:
    v6 = floor(v3 + 0.5);
    goto LABEL_9;
  }

  v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  if (g_TCU)
  {
    v5 = *(g_TCU + 8);
  }

  else
  {
    v5 = 0.0;
  }

  LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f IMUGEN_INIT_CFG:  K_IMU_DOWN_SAMPLE_RATIO=%d, K_SENSOR_DELIVERY_TIME_U4MS=%d", "InitIMUGen", 97, v4, v5, 1, 2000);
  v3 = *(a1 + 848) * 10.0;
  *(a1 + 880) = 0x408F400000000000;
  if (v3 >= 0.0)
  {
    goto LABEL_8;
  }

  v6 = -floor(0.5 - v3);
LABEL_9:
  *(a1 + 888) = v6;
  result = 1.67;
  *(a1 + 896) = xmmword_299761590;
  *(a1 + 912) = xmmword_2997615A0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0x409A180000000000;
  return result;
}

const char *resampleOneInterval(const char *result, double *a2, uint64_t a3)
{
  v5 = &a2[52 * result];
  if (result)
  {
    v6 = 16;
  }

  else
  {
    v6 = 48;
  }

  v7 = *v5;
  v8 = v7;
  if (*v5)
  {
    goto LABEL_5;
  }

  if ((g_FPE_LogSeverity & 1) == 0)
  {
    g_FPE_AssertFlag = 1;
    return result;
  }

  v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v17 = g_TCU ? *(g_TCU + 8) : 0.0;
  result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Should not enter resampleOneInterval with empty inner buffer!", "resampleOneInterval", 133, v16, v17);
  v8 = *v5;
  g_FPE_AssertFlag = 1;
  if (v8)
  {
LABEL_5:
    v9 = 0;
    v10 = v5 + 1;
    do
    {
      v11 = &v10[4 * v9];
      v12 = v11 - 1;
      if (!v9)
      {
        v12 = a2 + 104;
      }

      if (v9 == v7 - 1)
      {
        v13 = a2[104] + a2[105];
      }

      else
      {
        v13 = v11[3];
      }

      v14 = (v13 - *v12) * a2[106];
      for (i = 1; i != 4; ++i)
      {
        *(a3 + v6 + i * 8) = *(a3 + v6 + i * 8) + v14 * v5[i];
      }

      ++v9;
      v5 += 4;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t readIMUSample(double *a1, uint64_t a2, unsigned int a3, const char *a4, int a5)
{
  v40 = *MEMORY[0x29EDCA608];
  v7 = a1 + 1;
  v6 = *a1;
  if (v6 < 0xC)
  {
    v12 = &v7[4 * v6];
    __dst = 0u;
    v39 = 0u;
    Cyc_Record_Read(a2, a3, &__dst);
    ++*a1;
    v13 = DWORD2(v39);
    TCU_ConvertOStimeToTTICKtime(a4, DWORD2(v39), v12 + 3);
    v14 = v12[3] * 10000.0;
    v15 = v14 < 0.0;
    v16 = floor(v14 + 0.5);
    v17 = -floor(0.5 - v14);
    if (!v15)
    {
      v17 = v16;
    }

    v18 = *(&__dst + 1);
    v19 = *&v39;
    v20 = -*&__dst;
    if (*&__dst >= 0.0)
    {
      v20 = *&__dst;
    }

    v21 = -*(&__dst + 1);
    if (*(&__dst + 1) >= 0.0)
    {
      v21 = *(&__dst + 1);
    }

    v22 = -*&v39;
    if (*&v39 >= 0.0)
    {
      v22 = *&v39;
    }

    *v12 = __dst;
    v12[1] = v18;
    v12[2] = v19;
    v12[3] = v17 * 0.0001;
    if (v21 >= v22)
    {
      v23 = v18;
    }

    else
    {
      v23 = v19;
    }

    v24 = 1;
    if (v21 < v22)
    {
      v24 = 2;
    }

    if (v23 < 0.0)
    {
      v23 = -v23;
    }

    if (v20 >= v23)
    {
      v24 = 0;
    }

    v25 = v12[v24];
    if (v25 >= 0.0)
    {
      v26 = v12[v24];
    }

    else
    {
      v26 = -v25;
    }

    if (v26 > a1[50])
    {
      *(a1 + 392) = 1;
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v28 = *(g_TCU + 8);
        }

        else
        {
          v28 = 0.0;
        }

        v30 = "Gyro";
        if (a5 == 1)
        {
          v30 = "Accl";
        }

        v31 = " rad/s";
        v32 = v26 / 9.79764322;
        if (a5 == 1)
        {
          v31 = "*g m/s^2";
        }

        else
        {
          v32 = v26;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f %s value too big : %0.2f%s at OStime = %0.3f", "readIMUSample", 372, v27, v28, v30, v32, v31, v12[3]);
      }

      if (a5 == 1)
      {
        if ((g_FPE_LogSeverity & 0x200) != 0)
        {
          LC_LOG_NMEA_GENERIC("%s,AGW2,%d,%.2f,%d", "$PFPEX", 0, v26 / 9.79764322, v13);
        }
      }

      else if ((g_FPE_LogSeverity & 0x200) != 0)
      {
        LC_LOG_NMEA_GENERIC("%s,AGW2,%d,%.2f,%d", "$PFPEX", 1, v26, v13);
      }
    }

    v33 = *a1;
    if (v33 >= 2)
    {
      v34 = v7[4 * v33 - 1] - v7[4 * v33 - 5];
      if (v34 > 0.125)
      {
        v35 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 2) != 0)
        {
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v37 = *(g_TCU + 8);
          }

          else
          {
            v37 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f readIMUSample IMU discontinuous, timeGap = %.17g", "readIMUSample", 391, v36, v37, v34);
          v35 = g_FPE_LogSeverity;
        }

        if ((v35 & 0x200) != 0)
        {
          LC_LOG_NMEA_GENERIC("%s,AGW1,%d,%.3f,%d", "$PFPEX", a5 != 1, v12[3] - v7[4 * *a1 - 5], v13);
        }

        if (v34 > 1.025)
        {
          *(a1 + 408) = 1;
        }
      }
    }

    return 0;
  }

  else
  {
    if ((g_FPE_LogSeverity & 2) != 0)
    {
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v9 = *(g_TCU + 8);
      }

      else
      {
        v9 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f Entered readIMUSample with %u empty entries in the buffer", "readIMUSample", 342, v8, v9, 12 - *a1);
    }

    return 1;
  }
}

uint64_t samplerInputFifoAlignment(unsigned int a1, int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned __int8 *a6)
{
  v21 = *MEMORY[0x29EDCA608];
  __dst = 0u;
  v20 = 0u;
  Cyc_Record_Read(a5, a1, &__dst);
  v18 = 0.0;
  TCU_ConvertOStimeToTTICKtime(a4, DWORD2(v20), &v18);
  v10 = floor(v18 * 10000.0 + 0.5);
  v11 = -floor(0.5 - v18 * 10000.0);
  if (v18 * 10000.0 >= 0.0)
  {
    v11 = v10;
  }

  v12 = v11 * 0.0001;
  if (v12 >= *(a3 + 832))
  {
    v14 = *a6;
    if (v14 < 0xC)
    {
      v17 = &a6[32 * v14];
      *(v17 + 8) = __dst;
      *(v17 + 3) = v20;
      *(v17 + 4) = v12;
      *a6 = v14 + 1;
      *(a3 + 875) = 1;
      result = 0;
      if (a2)
      {
        *(a3 + 873) = 0;
      }

      else
      {
        *(a3 + 874) = 0;
      }
    }

    else
    {
      if ((g_FPE_LogSeverity & 2) != 0)
      {
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f Entered samplerInputFifoAlignment with %u empty entries in the buffer", "samplerInputFifoAlignment", 448, v15, v16, 12 - *a6);
      }

      return 1;
    }
  }

  else
  {
    result = 0;
    *a6 = 1;
    *(a6 + 8) = __dst;
    *(a6 + 3) = v20;
    *(a6 + 4) = v12;
  }

  return result;
}

uint64_t IMUGen_run(unsigned __int8 *a1, unsigned int a2, _DWORD *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v6 = a6;
  v59 = *MEMORY[0x29EDCA608];
  if ((a1[875] & 1) == 0)
  {
    if (a1[874] == 1 && a1[873] == 1 && Cyc_Record_Count_Occupied(a3, a2) && Cyc_Record_Count_Occupied(a3 + 24, a2))
    {
      a1[416] = 0;
      *a1 = 0;
      v12 = 1;
      if (readIMUSample(a1 + 52, a3, a2, a5, 1) || readIMUSample(a1, (a3 + 24), a2, a5, 0))
      {
        return v12;
      }

      v13 = *(a1 + 56);
      v14 = *(a1 + 4);
      if (v13 <= v14)
      {
        a1[873] = 0;
        v13 = v14;
      }

      else
      {
        a1[874] = 0;
      }

      v15 = v13 + -1.0 / *(a1 + 107);
      *(a1 + 104) = v15;
      *(a1 + 108) = v15;
      a1[872] = 1;
    }

    if (a1[874] != a1[873])
    {
      v12 = 1;
      while ((a1[873] & 1) != 0 && Cyc_Record_Count_Occupied(a3 + 24, a2))
      {
        if (samplerInputFifoAlignment(a2, 1, a1, a5, (a3 + 24), a1))
        {
          return v12;
        }
      }

      while (a1[874] == 1 && Cyc_Record_Count_Occupied(a3, a2))
      {
        if (samplerInputFifoAlignment(a2, 0, a1, a5, a3, a1 + 416))
        {
          return 1;
        }
      }
    }

    v6 = a6;
    if (a1[875] != 1)
    {
      return 2;
    }
  }

  v16 = a1 + 424;
  v17 = a1 + 8;
  while (isOKtoOutput(*(a4 + 128016), a1) || Cyc_Record_Count_Occupied(a3, a2) && !isBuffReady(1u, a1) || Cyc_Record_Count_Occupied(a3 + 24, a2) && !isBuffReady(0, a1))
  {
    if (isOKtoOutput(*(a4 + 128016), a1))
    {
      while (1)
      {
        v58 = 0u;
        v57 = 0u;
        v56 = 0u;
        v55 = 0u;
        v54 = 0u;
        v53 = 0u;
        v52 = 0u;
        v51 = 0u;
        v50 = 0u;
        v49 = 0u;
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v45 = *(a1 + 104) + *(a1 + 105);
        Set_Mat_Size(3, &v46 + 2, 3, 1);
        Set_Mat_Const(3, 1u, 3, &v46 + 2, 0.0);
        Set_Mat_Size(3, &v48 + 2, 3, 1);
        Set_Mat_Const(3, 1u, 3, &v48 + 2, 0.0);
        resampleOneInterval(0, a1, &v45);
        resampleOneInterval(1, a1, &v45);
        *(a1 + 104) = *(a1 + 104) + *(a1 + 105);
        if (!MeasSyncher_applyNewRecord(0, &v45, a4))
        {
          break;
        }

        v18 = *(a1 + 115);
        if (v18 == -999.0)
        {
          v24 = v45;
        }

        else
        {
          v19 = *(a1 + 110);
          v20 = *(a1 + 232);
          if (v20)
          {
            if ((g_FPE_LogSeverity & 0x200) != 0)
            {
              LC_LOG_NMEA_GENERIC("%s,AG,%.3f,%.5f,%.5f,%.5f,%.5f,%.5f,%.5f", "$PFPEX", *(a1 + 104), *&v47, *(&v47 + 1), *&v48, *&v49, *(&v49 + 1), *&v50);
              v20 = *(a1 + 232);
              v18 = *(a1 + 115);
            }

            v21 = v20 - 1;
            *(a1 + 232) = v21;
            v22 = v21 == 0;
            v23 = 1.0;
          }

          else
          {
            v23 = 0.0;
            v22 = 1;
          }

          v24 = v45;
          v25 = v45 - v18;
          if (v25 > v19 * 0.5)
          {
            v25 = v19 * 0.5;
          }

          v26 = v23 + *(a1 + 117) * (v19 - v25) / v19;
          *(a1 + 117) = v26;
          if (v22)
          {
            v27 = *(v6 + 248) != 6 || *(v6 + 224) - *(v6 + 480) >= v24;
            v28 = *(a1 + 222);
            v29 = (v26 + v28) / v19;
            if (v29 <= *(a1 + 114) || v29 <= *(a1 + 113) && !v27)
            {
              *(a1 + 232) = v28;
            }
          }
        }

        *(a1 + 115) = v24;
        *(a1 + 108) = v24;
        a1[872] = 1;
        v30 = a1[416];
        if (v30 >= 2)
        {
          v31 = &v16[32 * (v30 - 1)];
          v32 = *(v31 + 1);
          *v16 = *v31;
          *(a1 + 440) = v32;
          a1[416] = 1;
        }

        v33 = *a1;
        if (v33 >= 2)
        {
          v34 = &v17[32 * (v33 - 1)];
          v35 = *(v34 + 1);
          *v17 = *v34;
          *(a1 + 24) = v35;
          *a1 = 1;
        }

        if (!isOKtoOutput(*(a4 + 128016), a1))
        {
          goto LABEL_43;
        }
      }

      if ((g_FPE_LogSeverity & 2) != 0)
      {
        v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v40 = *(g_TCU + 8);
        }

        else
        {
          v40 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f IMUGen SYNCHER_REJECT", "IMUGen_run", 665, v39, v40);
      }

      return 5;
    }

LABEL_43:
    if (Cyc_Record_Count_Occupied(a3, a2))
    {
      if (!isBuffReady(1u, a1))
      {
        v12 = 1;
        if (readIMUSample(a1 + 52, a3, a2, a5, 1))
        {
          return v12;
        }
      }
    }

    if (Cyc_Record_Count_Occupied(a3 + 24, a2) && !isBuffReady(0, a1) && readIMUSample(a1, (a3 + 24), a2, a5, 0))
    {
      return 1;
    }

    v36 = *&v16[32 * a1[416] - 8];
    if (v36 >= *&a1[32 * *a1])
    {
      v36 = *&a1[32 * *a1];
    }

    *(a1 + 118) = v36;
    v6 = a6;
    if ((a1[875] & 1) == 0)
    {
      break;
    }
  }

  if ((a1[875] & 1) == 0)
  {
    return 0;
  }

  if ((a1[808] & 1) != 0 || a1[392] == 1)
  {
    if ((g_FPE_LogSeverity & 2) != 0)
    {
      v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v38 = *(g_TCU + 8);
      }

      else
      {
        v38 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f IMUGen IMU_VALUE_ERROR (ACCL=%u,GYRO=%u)", "IMUGen_run", 696, v37, v38, a1[808], a1[392]);
    }

    return 6;
  }

  if ((a1[824] & 1) == 0 && a1[408] != 1)
  {
    return 0;
  }

  if ((g_FPE_LogSeverity & 2) != 0)
  {
    v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v43 = *(g_TCU + 8);
    }

    else
    {
      v43 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f IMUGen E_MGEN_RETURN_IMU_DISCONTINUOUS (ACCL=%u,Gyro=%u)", "IMUGen_run", 703, v42, v43, a1[824], a1[408]);
  }

  return 4;
}

BOOL isOKtoOutput(_DWORD *a1, uint64_t a2)
{
  if (!Cyc_Record_Count_Free(a1, 1u) || !isBuffReady(0, a2))
  {
    return 0;
  }

  return isBuffReady(1u, a2);
}

BOOL isBuffReady(unsigned int a1, uint64_t a2)
{
  v2 = (a2 + 416 * a1);
  if (!*v2)
  {
    return 0;
  }

  v4 = *&v2[32 * *v2];
  if (*(a2 + 872) == 1)
  {
    v5 = *(a2 + 864);
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f last_applied_TT was invalid while in isBuffReady function", "isBuffReady", 255, v7, v8);
    }

    g_FPE_AssertFlag = 1;
    v5 = 0.0;
  }

  return v4 - v5 >= *(a2 + 840);
}

double GPS_Klob_Iono_Delay(double *a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  v7 = *(a3 + 24) * 0.318309886;
  v8 = 0.0137 / (v7 + 0.11) + -0.022;
  v9 = *(a2 + 16) * v8 + *a1 * 0.318309886;
  v10 = -0.416;
  if (v9 >= -0.416)
  {
    v10 = *(a2 + 16) * v8 + *a1 * 0.318309886;
    if (v9 > 0.416)
    {
      v10 = 0.416;
    }
  }

  v11 = a1[1];
  v12 = v8 * *(a2 + 8);
  v13 = v12 / cos(v10 * 3.14159265) + v11 * 0.318309886;
  v14 = v10 + cos((v13 + -1.617) * 3.14159265) * 0.064;
  v15 = a5 + v13 * 43200.0 - (86400 * ((a5 + v13 * 43200.0) * 0.0000115740741));
  v16 = v15 + 86400.0;
  if (v15 >= 0.0)
  {
    v16 = a5 + v13 * 43200.0 - (86400 * ((a5 + v13 * 43200.0) * 0.0000115740741));
  }

  v17 = a4[13] * 16384.0 * v14 + a4[12] * 2048.0 + a4[14] * 65536.0 * (v14 * v14) + a4[15] * 65536.0 * (v14 * v14) * v14;
  if (v17 < 72000.0)
  {
    v17 = 72000.0;
  }

  v18 = (v16 + -50400.0) * 6.28318531 / v17;
  if (fabs(v18) >= 1.57)
  {
    v20 = 0.000000005;
  }

  else
  {
    v19 = v14 * vcvtd_n_f64_s32(a4[9], 0x1BuLL) + a4[8] * 9.31322575e-10 + vcvtd_n_f64_s32(a4[10], 0x18uLL) * (v14 * v14) + v14 * vcvtd_n_f64_s32(a4[11], 0x18uLL) * (v14 * v14);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = v19 * (v18 * v18 * -0.5 + 1.0 + v18 * v18 * (v18 * v18) * 0.0416666667) + 0.000000005;
  }

  return ((0.53 - v7) * ((0.53 - v7) * 16.0) * (0.53 - v7) + 1.0) * v20 * 299792458.0;
}

uint64_t GM_Aid_NSSS_Meas(uint64_t a1, unsigned int a2, int *a3)
{
  if (*(a1 + 4) != 1 || *(a1 + 15) != 1 || *(a1 + 14) < a2)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  *a3 = *(a1 + 28);
  v5 = a3[1] % 1023;
  v6 = 1023 * (v4 / 1023);
  v7 = v4 % 1023;
  if (v5 < 769 || v7 > 255)
  {
    if (v7 > 768 && v5 < 256)
    {
      v8 = v6 + 1023;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = v6 - 1023;
  }

  a3[1] = v5;
  Inc_CA_Chips(v8, a3 + 1, a3);
  return 1;
}

void SuplSessionVer2::ProcessSuplRequest(SuplUtils *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  Instance = SuplUtils::GetInstance(a1);
  if (!Instance)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    goto LABEL_24;
  }

  v8 = *a1;
  if (!*a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

    goto LABEL_24;
  }

  if (*a2 == 2)
  {
    v9 = *(Instance + 16);
    if (v9)
    {
      while (*v9 != *(v8 + 376))
      {
        v9 = *(v9 + 8);
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      v12 = *(v9 + 16);
      if (v12 && !*(v12 + 17))
      {
        SuplUtils::FillSetCapabilities(Instance, a4, *(*(v12 + 40) + 5), *(v8 + 532));
      }
    }

LABEL_17:
    v13 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
    if (v13)
    {
      v14 = v13;
      SuplState::SuplState(v13);
      *v14 = &unk_2A1F88940;
      v15 = *a1;
      v16 = *(*a1 + 424);
      v17 = *a1;
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v17 = *a1;
      }

      v18 = *(v15 + 416);
      *(v15 + 416) = v14;
      *(v15 + 424) = v18;

      SuplState::UpdateState(v14, 0, v17);
      return;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      return;
    }

LABEL_24:
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "SPL", 69, "ProcessSuplRequest", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v20, 0, 1);
    return;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "ProcessSuplRequest", 514);
    LbsOsaTrace_WriteLog(0x12u, __str, v11, 0, 1);
  }
}

unsigned __int8 *SuplSessionVer2::FillSetCapabilities(SuplVersionNegotiation *a1, uint64_t a2, int a3)
{
  result = SuplVersionNegotiation::GetInstance(a1);
  v6 = atomic_load(result + 1);
  if (v6 == 255)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = atomic_load(&result[v7]);
  if (v8 == 2)
  {
    *(a2 + 11) = 1;
    *(a2 + 16) = 1292;
    *(a2 + 18) = 0;
    result = SuplUtils::GetInstance(result);
    if (result[36])
    {
      Instance = SimUtils::GetInstance(result);
      result = SimUtils::IsItCampedOnLte(Instance, a3);
      *(a2 + 15) = result != 0;
      if (result)
      {
        v10 = 1;
LABEL_10:
        *(a2 + 14) = v10;
        *(a2 + 19) = 781;
        *(a2 + 21) = 0;
        return result;
      }
    }

    else
    {
      *(a2 + 15) = 0;
    }

    v10 = 0;
    goto LABEL_10;
  }

  return result;
}

uint64_t *SuplSessionVer2::SetLPPAdPayLoad(uint64_t *result, uint64_t a2)
{
  v2 = result;
  if (a2 && result != a2 && !*(a2 + 32))
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result + 1, *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
  }

  *(v2 + 32) = 0;
  return result;
}

uint64_t SuplSessionVer2::RequestLppAdPayLoad(SuplSessionVer2 *this)
{
  result = SuplUtils::GetInstance(this);
  if (*(result + 36))
  {
    result = SuplVersionNegotiation::GetInstance(result);
    v3 = atomic_load((result + 1));
    v4 = v3 == 255;
    v5 = 1;
    if (v4)
    {
      v5 = 2;
    }

    v6 = atomic_load((result + v5));
    if (v6 >= 2)
    {
      Instance = SimUtils::GetInstance(result);
      result = SimUtils::IsItCampedOnLte(Instance, *(*this + 532));
      if (result)
      {
        v8 = *(*this + 380);
        v9 = SuplUtils::GetInstance(result);
        v10 = *(v9 + 2);
        if (!v10)
        {
          goto LABEL_12;
        }

        while (*v10 != *(*this + 376))
        {
          v10 = *(v10 + 8);
          if (!v10)
          {
            goto LABEL_12;
          }
        }

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(*(v11 + 40) + 5);
        }

        else
        {
LABEL_12:
          v12 = 0;
        }

        v13 = SuplPosPayloadHandler::GetInstance(v9);
        result = SuplPosPayloadHandler::ProcessLppAdReq(v13, *(*this + 376), v8 == 2, v12);
        *(this + 32) = result == 0;
      }
    }
  }

  return result;
}

uint64_t SuplSessionVer2::RequestLppCapPayLoad(SuplSessionVer2 *this, int a2)
{
  result = SuplUtils::GetInstance(this);
  if (*(result + 36))
  {
    result = SuplVersionNegotiation::GetInstance(result);
    v4 = atomic_load((result + 1));
    v5 = v4 == 255;
    v6 = 1;
    if (v5)
    {
      v6 = 2;
    }

    v7 = atomic_load((result + v6));
    if (v7 >= 2)
    {
      Instance = SimUtils::GetInstance(result);
      result = SimUtils::IsItCampedOnLte(Instance, a2);
      if (result)
      {
        v9 = SuplPosPayloadHandler::GetInstance(result);
        v10 = *(*LcsSuplGlueLayer::GetInstance(v9) + 32);

        return v10();
      }
    }
  }

  return result;
}

double ECEF2FSD_RotM(const double (*a1)[3], double a2, double (*a3)[3])
{
  v5 = __sincos_stret(a2);
  (*a3)[0] = v5.__sinval * (*a1)[3] + v5.__cosval * (*a1)[0];
  (*a3)[1] = v5.__sinval * (*a1)[4] + v5.__cosval * (*a1)[1];
  (*a3)[2] = v5.__sinval * (*a1)[5] + v5.__cosval * (*a1)[2];
  (*a3)[3] = v5.__cosval * (*a1)[3] - v5.__sinval * (*a1)[0];
  (*a3)[4] = v5.__cosval * (*a1)[4] - v5.__sinval * (*a1)[1];
  (*a3)[5] = v5.__cosval * (*a1)[5] - v5.__sinval * (*a1)[2];
  (*a3)[6] = (*a1)[6];
  (*a3)[7] = (*a1)[7];
  result = (*a1)[8];
  (*a3)[8] = result;
  return result;
}

uint64_t Speed_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v27[33] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) <= 1 && (*(a4 + 12) = 0, *a4 == 1))
  {
    v22 = 0.0;
    v10 = *a2;
    v11 = a2[1];
    *v25 = *a2;
    *&v25[1] = v11;
    v12 = a2[2];
    *&v25[2] = v12;
    v13 = 0.0;
    v14 = 2;
    do
    {
      v13 = v13 + *&v25[v14] * *&v25[v14];
      v15 = v14-- + 1;
    }

    while (v15 > 1);
    v16 = sqrt(v13);
    v17 = v16 - a4[3] * a7;
    a4[5] = v16;
    a4[6] = v17;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (v16 >= 0.0001)
    {
      *(&v23[1] + a1) = v12 / v16;
      *(v23 + a1 + 1) = v11 / v16;
      v18 = v10 / v16;
    }

    else
    {
      *(&v23[1] + a1) = 0x3FF0000000000000;
      *(v23 + a1 + 1) = 0x3FF0000000000000;
      v18 = 1.0;
    }

    *(v23 + a1) = v18;
    *(v23 + a3) = v17;
    umeas(a5, a3, a4[4], v23, v27, v26, &v22, a4[7]);
    v21 = v22;
    if (v22 <= 0.0)
    {
      v19 = 0;
      *a4 = 0;
      *(a4 + 12) = 1;
      ++*a6;
      a4[8] = v21 + a4[8];
    }

    else
    {
      a4[8] = a4[4] * (v22 * (v27[a3] * v27[a3]));
      v19 = *a4;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t NK_AltP_Aiding_Required(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = *MEMORY[0x29EDCA608];
  v6 = a2 + 23120;
  if (__PAIR64__(*(a2 + 23124), *(a2 + 23120)) == 0x100000001 && (!*(a1 + 11048) || *(a2 + 12) < 8 || (*(a1 + 233) & 1) != 0 || !*(a1 + 288) || *(a2 + 23152) < *(a1 + 280) * *(a1 + 280)))
  {
    result = 0;
    *a3 = 0;
    return result;
  }

  Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), v12);
  v8 = *(a2 + 12);
  if (v8 > 8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  if (*(v6 + 1708) == 1 && *(a2 + 23152) < 900.0)
  {
    v9 = 0;
  }

  else if (*(v6 + 1684) == 1 && *(a2 + 22880) < 1.0e-14)
  {
    --v9;
  }

  if ((*(a1 + 233) & 1) != 0 || !*(a1 + 11048))
  {
    if (v8 >= 9 && *(v6 + 1658) < 3u)
    {
      v10 = 40000.0;
      goto LABEL_26;
    }
  }

  else if (v8 >= 8)
  {
    if ((*(a1 + 20) - 2) >= 3)
    {
      v10 = 40000.0;
      if (*(v6 + 1477))
      {
        v10 = 2500.0;
      }
    }

    else
    {
      v10 = 10000.0;
    }

    goto LABEL_26;
  }

  v10 = 250000.0;
LABEL_26:
  if (*(a1 + 288) && (*(v6 + 1658) < v9 || v12[2] + *(a1 + 7272) > v10) && (*(v6 + 1657) || *(v6 + 1704) && *(a2 + 23152) < 10000.0))
  {
    *a3 = 1;
    v11 = *(a1 + 280) * *(a1 + 280);
    *(a3 + 24) = *(a1 + 272);
    *(a3 + 32) = v11;
  }

  if ((*a3 & 1) == 0)
  {
    return 0;
  }

  *(a3 + 4) = 2;
  *(a3 + 20) = *a2;
  *(a3 + 56) = 0x4059000000000000;
  return 1;
}

double GPS_EphBin2Int(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a2 + 16) = (v2 >> 14) & 0x3FF;
  *(a2 + 8) = (v2 >> 12) & 3;
  *(a2 + 9) = BYTE1(v2) & 0xF;
  *(a2 + 10) = v2 >> 2;
  v3 = *(a1 + 28);
  *(a2 + 14) = *(a1 + 24);
  *(a2 + 22) = ((v2 & 3) << 8) | BYTE2(v3);
  *(a2 + 18) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  *(a2 + 15) = BYTE2(v4);
  *(a2 + 24) = v4;
  *(a2 + 44) = ((v5 << 8) >> 31) & 0xFFC00000 | (v5 >> 2) & 0x3FFFFF;
  v6 = *(a1 + 44);
  *(a2 + 30) = *(a1 + 40);
  *(a2 + 26) = v6 >> 8;
  *(a2 + 48) = v6 << 24;
  *(a2 + 48) = (v6 << 24) | *(a1 + 48) & 0xFFFFFF;
  v7 = *(a1 + 52);
  *(a2 + 36) = v7 >> 8;
  v7 <<= 24;
  *(a2 + 52) = v7;
  *(a2 + 52) = v7 & 0xFF000000 | *(a1 + 56) & 0xFFFFFF;
  v8 = *(a1 + 60);
  *(a2 + 34) = v8 >> 8;
  v8 <<= 24;
  *(a2 + 56) = v8;
  *(a2 + 56) = v8 & 0xFF000000 | *(a1 + 64) & 0xFFFFFF;
  v9 = *(a1 + 68);
  v10 = *(a1 + 72);
  *(a2 + 20) = v9 >> 8;
  *(a2 + 11) = (v9 & 0x80) != 0;
  *(a2 + 13) = 0;
  *(a2 + 12) = (v9 >> 2) & 0x1F;
  *(a2 + 40) = v10 >> 8;
  *(a2 + 60) = v10 << 24;
  *(a2 + 60) = (v10 << 24) | *(a1 + 76) & 0xFFFFFF;
  v11 = *(a1 + 80);
  *(a2 + 38) = v11 >> 8;
  v11 <<= 24;
  *(a2 + 64) = v11;
  *(a2 + 64) = v11 & 0xFF000000 | *(a1 + 84) & 0xFFFFFF;
  v12 = *(a1 + 88);
  *(a2 + 32) = v12 >> 8;
  v12 <<= 24;
  *(a2 + 68) = v12;
  *(a2 + 68) = v12 & 0xFF000000 | *(a1 + 92) & 0xFFFFFF;
  *(a2 + 72) = ((*(a1 + 96) << 8) >> 31) & 0xFF000000 | *(a1 + 96) & 0xFFFFFF;
  *(a2 + 28) = (*(a1 + 100) >> 15) & 0xC000 | (*(a1 + 100) >> 2);
  result = *a1;
  *a2 = *a1;
  return result;
}

double GPS_EphInt2Bin(uint64_t a1, uint64_t a2)
{
  result = *a1;
  *a2 = *a1;
  v3 = *(a1 + 22);
  *(a2 + 8) = ((*(a1 + 16) & 0x3FF) << 14) | ((*(a1 + 8) & 3) << 12) | ((*(a1 + 9) & 0xF) << 8) | (4 * (*(a1 + 10) & 0x3F)) | (v3 >> 8) & 3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 18) | (v3 << 16);
  *(a2 + 24) = *(a1 + 14);
  *(a2 + 28) = v4;
  *(a2 + 32) = *(a1 + 24) | (*(a1 + 15) << 16);
  v5 = *(a1 + 30) | (v3 << 16);
  *(a2 + 36) = 4 * (*(a1 + 44) & 0x3FFFFF);
  *(a2 + 40) = v5;
  HIDWORD(v6) = *(a1 + 26);
  LODWORD(v6) = *(a1 + 48);
  *(a2 + 44) = v6 >> 24;
  *(a2 + 48) = *(a1 + 48) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 36);
  LODWORD(v6) = *(a1 + 52);
  *(a2 + 52) = v6 >> 24;
  *(a2 + 56) = *(a1 + 52) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 34);
  LODWORD(v6) = *(a1 + 56);
  *(a2 + 60) = v6 >> 24;
  v7 = ((*(a1 + 11) & 1) << 7) | (*(a1 + 20) << 8) | (4 * (*(a1 + 12) & 0x1F));
  *(a2 + 64) = *(a1 + 56) & 0xFFFFFF;
  *(a2 + 68) = v7;
  HIDWORD(v6) = *(a1 + 40);
  LODWORD(v6) = *(a1 + 60);
  *(a2 + 72) = v6 >> 24;
  *(a2 + 76) = *(a1 + 60) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 38);
  LODWORD(v6) = *(a1 + 64);
  *(a2 + 80) = v6 >> 24;
  *(a2 + 84) = *(a1 + 64) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 32);
  LODWORD(v6) = *(a1 + 68);
  *(a2 + 88) = v6 >> 24;
  *(a2 + 92) = *(a1 + 68) & 0xFFFFFF;
  LOWORD(v7) = *(a1 + 28);
  *(a2 + 96) = *(a1 + 72) & 0xFFFFFF;
  *(a2 + 100) = (v3 << 16) | (4 * (v7 & 0x3FFF));
  *(a2 + 104) = 0xFFFFFF;
  return result;
}

uint64_t GncP15_00HandleTruthPos(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP15_00HandleTruthPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("GncP15_00HandleTruthPos", 57, 1, 0x10uLL);
    if (v4)
    {
      v5 = v4;
      v7 = *(*(&xmmword_2A1926A20 + 1) + 16);
      v6 = *(*(&xmmword_2A1926A20 + 1) + 32);
      v22[0] = **(&xmmword_2A1926A20 + 1);
      v22[1] = v7;
      v22[2] = v6;
      v9 = *(*(&xmmword_2A1926A20 + 1) + 64);
      v8 = *(*(&xmmword_2A1926A20 + 1) + 80);
      v10 = *(*(&xmmword_2A1926A20 + 1) + 48);
      v25 = *(*(&xmmword_2A1926A20 + 1) + 96);
      v23 = v9;
      v24 = v8;
      v22[3] = v10;
      EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v22);
      v23 = *(a1 + 16);
      *&v24 = *(a1 + 32);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetTruthPos Lat,%f,Long,%f,Alt,%f\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP15_00HandleTruthPos", *(a1 + 16), *(a1 + 24), *(a1 + 32));
        LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
      }

      if (GN_GPS_Set_Config(v22))
      {
        v13 = 1;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2u, 0, 0);
        v13 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetCfg\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP15_00HandleTruthPos", 257);
          LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
          v13 = 0;
        }
      }

      v5[12] = v13;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_RSP =>GNM\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "GncP15_00HandleTruthPos");
        LbsOsaTrace_WriteLog(8u, __str, v20, 4, 1);
      }

      AgpsSendFsmMsg(134, 128, 8787972, v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 69, "GncP15_00HandleTruthPos", 517);
    LbsOsaTrace_WriteLog(8u, __str, v15, 0, 1);
  }

  return 0;
}

uint64_t HandlePPDUSessionData(int *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandlePPDUSessionData");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = a1[22];
  if (v4 == 3)
  {
    v11 = *(a1 + 36);
    v22 = v11;
    v23 = *(a1 + 10);
    v24 = 3;
    v12 = *a1;
    v25 = *a1;
    v13 = *(a1 + 9);
    v26 = v13;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v15 = 84;
      if (!v13)
      {
        v15 = 70;
      }

      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP sessionId,%u,emergencyCall,%u,Protocol,%u,length,%u\n", v14, "PSP", 73, "HandlePPDUSessionData", v12, v15, 3, v11);
      LbsOsaTrace_WriteLog(0x13u, __str, v16, 4, 1);
    }

    IuiMsSuplPosTrigger(0, &v22);
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 36);
    v22 = v5;
    v23 = *(a1 + 10);
    v24 = 1;
    v6 = *a1;
    v25 = *a1;
    v7 = *(a1 + 9);
    v26 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v9 = 84;
      if (!v7)
      {
        v9 = 70;
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RRLP sessionId,%u,emergencyCall,%c,Protocol,%u,length,%u\n", v8, "PSP", 73, "HandlePPDUSessionData", v6, v9, 1, v5);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 4, 1);
    }

    IuiMsSuplPosReq(0, &v22);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pay load\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "HandlePPDUSessionData", 770);
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 68, "HandlePPDUSessionData");
    return LbsOsaTrace_WriteLog(0x13u, __str, v21, 5, 1);
  }

  return result;
}

uint64_t HandlePPDUSessionEND(_DWORD *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Indicate Session End sessionID,%u,Code,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "HandlePPDUSessionEND", *a1, a1[3]);
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
  }

  IuiMsSuplIndicateSessionEnd(0, *a1);
  session_info = gps_find_session_info(*a1);
  if (session_info)
  {
    v5 = session_info;
    v6 = *(session_info + 8);
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = 3;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
        v7 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "HandlePPDUSessionEND", 770, *(v5 + 8));
          LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }

    v10 = (v5 + 20);
    v9 = (v5 + 64);
    v8 = *(v5 + 184);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
  }

  v14 = GNS_PospSummaryReport(*a1, *(a1 + 9), v10, v9, v8, a1[3], v7);
  if (v14 != 1)
  {
    v15 = v14;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS_PospSummaryReport call failed result,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "HandlePPDUSessionEND", 770, v15);
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
    }
  }

  return gps_delete_session_info(*a1);
}

uint64_t HandlePPDUStopSession(int *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  IuiMsSuplIndicateSessionEnd(0, *a1);
  v2 = a1[2];
  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_8;
  }

  if (v2 == 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    return LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  if (v2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v9);
    return LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  v3 = 1;
LABEL_8:
  v6 = CheckSessionProtocol(*(a1 + 4));
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,SessionType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 73, "HandlePPDUStopSession", *a1, v6);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 4, 1);
  }

  return GNS_PpduEncodedPdu(*a1, 3, v6, v3, 14, 0, 0, 1);
}

uint64_t CheckSessionProtocol(uint64_t result)
{
  v6 = *MEMORY[0x29EDCA608];
  if (result != 1)
  {
    v1 = result;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionProtocol,%u\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 69, "CheckSessionProtocol", 770, v1);
      LbsOsaTrace_WriteLog(0x13u, __str, v4, 0, 1);
      return 0;
    }
  }

  return result;
}

uint64_t HandleRRLPResponse(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandleRRLPResponse");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  session_info = gps_find_session_info(*(a1 + 20));
  if (session_info)
  {
    v5 = session_info;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "HandleRRLPResponse", *(a1 + 20));
      LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
    }

    LOWORD(__s) = 0;
    v22 = 0;
    memset_s(&__s, 0x10uLL, 0, 0x10uLL);
    if (HIWORD(*a1))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "HandleRRLPResponse", 772, *a1);
        LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
      }
    }

    else
    {
      LOWORD(__s) = *a1;
    }

    v22 = *(a1 + 8);
    v12 = CheckSessionProtocol(*(v5 + 4));
    v13 = *(v5 + 8);
    if ((v13 - 1) < 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
LABEL_23:
        LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v13)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v20);
        goto LABEL_23;
      }

LABEL_24:
      if (v22)
      {
        free(v22);
      }

      v22 = 0;
      goto LABEL_27;
    }

    v15 = v12;
    PPDU_TraceBuffer(v22, __s);
    if (*(a1 + 16))
    {
      v16 = 14;
    }

    else
    {
      v16 = 1;
    }

    GNS_PpduEncodedPdu(*v5, 3, v15, 1, v16, __s, v22, 1);
    if (v22)
    {
      free(v22);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "HandleRRLPResponse", 770, *(a1 + 20));
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

LABEL_27:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 68, "HandleRRLPResponse");
    return LbsOsaTrace_WriteLog(0x13u, __str, v19, 5, 1);
  }

  return result;
}

uint64_t PPDU_TraceBuffer(uint64_t result, unsigned int a2)
{
  v3 = result;
  v15 = *MEMORY[0x29EDCA608];
  if (result && a2)
  {
    goto LABEL_6;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either payload is NULL or length is zero\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 69, "PPDU_TraceBuffer", 513);
    result = LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  if (a2)
  {
LABEL_6:
    v6 = 0;
    do
    {
      v7 = a2 - v6;
      if (v7 > 0x13)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 77, "PPDU_TraceBuffer", *(v3 + v6), *(v3 + v6 + 1), *(v3 + v6 + 2), *(v3 + v6 + 3), *(v3 + v6 + 4), *(v3 + v6 + 5), *(v3 + v6 + 6), *(v3 + v6 + 7), *(v3 + v6 + 8), *(v3 + v6 + 9), *(v3 + v6 + 10), *(v3 + v6 + 11), *(v3 + v6 + 12), *(v3 + v6 + 13), *(v3 + v6 + 14), *(v3 + v6 + 15), *(v3 + v6 + 16), *(v3 + v6 + 17), *(v3 + v6 + 18), *(v3 + v6 + 19));
          result = LbsOsaTrace_WriteLog(0x13u, __str, v13, 3, 1);
        }

        v8 = v6;
      }

      else
      {
        v8 = a2;
        if (a2 > v6)
        {
          v9 = (v3 + v6);
          do
          {
            result = LbsOsaTrace_IsLoggingAllowed(0x13u, 3u, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v10 = mach_continuous_time();
              v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 77, "PPDU_TraceBuffer", *v9);
              result = LbsOsaTrace_WriteLog(0x13u, __str, v11, 3, 1);
            }

            ++v9;
            --v7;
          }

          while (v7);
          v8 = a2;
        }
      }

      v6 = v8 + 20;
    }

    while (v8 + 20 < a2);
  }

  return result;
}

uint64_t HandleWlanCbInit(uint64_t (*a1)(void, void, void))
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandleWlanCbInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1 && LbsOsaTrace_IsLoggingAllowed(0x13u, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DeRegistering WLAN Cb\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 73, "HandleWlanCbInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 4, 1);
  }

  g_WlanMeasReqCb = a1;
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "HandleWlanCbInit");
    return LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  return result;
}

double HandleWlanCapUpdate(int *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 0;
  v4 = 256;
  v1 = *a1;
  if (*a1)
  {
    HIBYTE(v3) = 1;
    if (v1)
    {
      BYTE2(v3) = 1;
    }

    if ((v1 & 2) != 0)
    {
      LOBYTE(v3) = 1;
    }

    if (a1[1])
    {
      LOBYTE(v4) = 1;
    }
  }

  if ((a1[2] & 1) == 0)
  {
    HIBYTE(v4) = 0;
  }

  return SuplLppUpdatePosCap(&v3);
}

double HandlePPDUCapUpdate(_DWORD *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  *v2 = 1;
  *&v2[1] = *a1;
  SuplLppUpdateCap(v2);
  return SuplRrlpUpdateCap(v2);
}

void HandlePPDUCapReq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a1 + 68) == 3)
  {
    *__str = *a1;
    v6 = 3;
    v5 = *(a1 + 9);
    SuplLppExecuteCapReq(__str);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pay load type,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 87, "HandlePPDUCapReq", 770, *(a1 + 68));
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 2, 1);
  }
}

uint64_t HandlePPDUAssistDataReq(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandlePPDUAssistDataReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (*(a1 + 68) == 3)
  {
    __s = -1;
    v38 = 0;
    memset(v39, 0, sizeof(v39));
    v40 = -1;
    v41 = 0;
    memset_s(&__s, 0x30uLL, 0, 0x30uLL);
    __s = *a1;
    v38 = *(a1 + 9);
    v4 = *(a1 + 72);
    if (!v4)
    {
      goto LABEL_44;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      goto LABEL_44;
    }

    v6 = *v5;
    if (v6 == 1)
    {
      *v39 |= 0x40u;
    }

    v7 = v5[1];
    if (v7 == 1)
    {
      *v39 |= 0x20u;
    }

    v8 = v5[2];
    if (v8 == 1)
    {
      *v39 |= 4u;
    }

    v9 = *(v4 + 16);
    if (!v9)
    {
      goto LABEL_44;
    }

    v10 = v41 | 1;
    v41 |= 1u;
    if (v5[3] != 1)
    {
      goto LABEL_44;
    }

    if (v6)
    {
      *v39 |= 0x40u;
      if (!v7)
      {
LABEL_16:
        if (!v8)
        {
LABEL_18:
          if (*v9 == 1)
          {
            if (*(v9 + 4) == 1)
            {
              *v39 |= 2u;
            }

            if (*(v9 + 5) == 1)
            {
              *v39 |= 0x100u;
            }

            if (*(v9 + 6) == 1)
            {
              *v39 |= 1u;
            }

            if (*(v9 + 7) == 1)
            {
              *v39 |= 8u;
            }

            if (*(v9 + 8) == 1)
            {
              *v39 |= 0x80u;
            }
          }

          if (*(v9 + 18))
          {
            v39[4] = *(v9 + 18);
          }

          if (*(v9 + 16))
          {
            *&v39[2] = *(v9 + 16);
          }

          if (*(v9 + 19))
          {
            v39[36] = *(v9 + 19);
          }

          v11 = *(v9 + 20);
          if ((v11 - 1) <= 0xE)
          {
            v12 = 0;
            v39[5] = v11;
            do
            {
              v13 = *(a1 + 72);
              v39[v12 + 6] = *(*(v13 + 16) + v12 + 21);
              v14 = *(*(v13 + 16) + 2 * v12 + 86);
              if (v14 > 0xFF)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v15 = mach_continuous_time();
                  v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_Iode,%u\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "HandlePPDUAssistDataReq", 772, *(*(*(a1 + 72) + 16) + 2 * v12 + 86));
                  LbsOsaTrace_WriteLog(0x13u, __str, v16, 0, 1);
                }
              }

              else
              {
                v39[v12 + 21] = v14;
              }

              ++v12;
            }

            while (v12 < v39[5]);
            v10 = v41 | 1;
          }

          v41 = v10;
LABEL_44:
          v17 = *(a1 + 88);
          if (v17)
          {
            lpp_t_mm_lpm_status_ind(1, *(v17 + 1), (v17[1] << 16) | ((v17[1] > 0x63uLL) << 32) | *v17);
          }

          SuplLppExecuteAdReq(&__s);
          goto LABEL_49;
        }

LABEL_17:
        *v39 |= 4u;
        goto LABEL_18;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    *v39 |= 0x20u;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx pay load type,%u\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 87, "HandlePPDUAssistDataReq", 770, *(a1 + 68));
    LbsOsaTrace_WriteLog(0x13u, __str, v19, 2, 1);
  }

LABEL_49:
  v20 = *(a1 + 72);
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      free(v21);
      v20 = *(a1 + 72);
    }

    *(v20 + 16) = 0;
    v22 = *(a1 + 72);
    v23 = *(v22 + 24);
    if (v23)
    {
      free(v23);
      v22 = *(a1 + 72);
    }

    *(v22 + 24) = 0;
    v24 = *(a1 + 72);
    v25 = *(v24 + 32);
    if (v25)
    {
      free(v25);
      v24 = *(a1 + 72);
    }

    *(v24 + 32) = 0;
    v26 = *(a1 + 72);
    v27 = *(v26 + 40);
    if (v27)
    {
      free(v27);
      v26 = *(a1 + 72);
    }

    *(v26 + 40) = 0;
    v28 = *(a1 + 72);
    v29 = *(v28 + 48);
    if (v29)
    {
      free(v29);
      v28 = *(a1 + 72);
    }

    *(v28 + 48) = 0;
    v30 = *(a1 + 72);
    v31 = *(v30 + 8);
    if (v31)
    {
      free(v31);
      v30 = *(a1 + 72);
    }

    *(v30 + 8) = 0;
    v32 = *(a1 + 72);
    if (v32)
    {
      free(v32);
    }

    *(a1 + 72) = 0;
  }

  v33 = *(a1 + 88);
  if (v33)
  {
    free(v33);
  }

  *(a1 + 88) = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "PSP", 68, "HandlePPDUAssistDataReq");
    return LbsOsaTrace_WriteLog(0x13u, __str, v36, 5, 1);
  }

  return result;
}

uint64_t HandleLppWlanMeasReq(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandleLppWlanMeasReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = 513;
LABEL_14:
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v6, "PSP", 69, "HandleLppWlanMeasReq", v7);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    goto LABEL_15;
  }

  LOBYTE(__s) = 0;
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  v4 = *a1;
  v13 = *a1;
  if (*(a1 + 4))
  {
    __s = 1;
  }

  v14 = 1000 * *(a1 + 8);
  if (!g_WlanMeasReqCb)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = 258;
    goto LABEL_14;
  }

  session_info = gps_find_session_info(v4);
  if (session_info)
  {
    *(session_info + 5) = 2;
    *(session_info + 188) = 1;
  }

  posp_StartTimer(posp_TimerExpiry_Ind, v13, v14, 1);
  g_WlanMeasReqCb(1, 12, &__s);
LABEL_15:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "HandleLppWlanMeasReq");
    return LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  return result;
}

void HandleLppCapsResponse(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
LABEL_11:
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_19:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    return;
  }

  session_info = gps_find_session_info(*a1);
  if (!session_info)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", v16);
    goto LABEL_19;
  }

  v3 = session_info;
  LOWORD(__s) = 0;
  v19 = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  v4 = *(a1 + 8);
  if (!HIWORD(v4))
  {
    v5 = *(a1 + 8);
    LOWORD(__s) = *(a1 + 8);
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_17:
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU Size\n");
    goto LABEL_19;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 69, "HandleLppCapsResponse", 772, *(a1 + 8));
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
  }

  v5 = __s;
  if (!__s)
  {
    goto LABEL_17;
  }

LABEL_5:
  v6 = gnssOsa_Calloc("HandleLppCapsResponse", 582, 1, v5);
  v19 = v6;
  if (!v6)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    goto LABEL_11;
  }

  memcpy_s("HandleLppCapsResponse", 586, v6, __s, *(a1 + 16), __s);
  v7 = CheckSessionProtocol(*(v3 + 4));
  v8 = *(v3 + 8);
  if (v8 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_32;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    goto LABEL_31;
  }

  if (v8 == 2)
  {
    v13 = v7;
    PPDU_TraceBuffer(v19, __s);
    if (*(a1 + 4))
    {
      v14 = 14;
    }

    else
    {
      v14 = 1;
    }

    GNS_PpduEncodedPdu(*v3, 1, v13, 3, v14, __s, v19, *(a1 + 24) != 0);
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v17);
LABEL_31:
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

LABEL_32:
  if (v19)
  {
    free(v19);
  }
}

void HandleLppAdResponse(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
LABEL_8:
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_11:
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
    return;
  }

  session_info = gps_find_session_info(*a1);
  if (!session_info)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", v16);
    goto LABEL_11;
  }

  v3 = session_info;
  LOWORD(__s) = 0;
  v19 = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  v4 = *(a1 + 8);
  if (!HIWORD(v4))
  {
    v5 = *(a1 + 8);
    LOWORD(__s) = *(a1 + 8);
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "HandleLppAdResponse", 772, *(a1 + 8));
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
  }

  v5 = __s;
  if (__s)
  {
LABEL_15:
    v9 = gnssOsa_Calloc("HandleLppAdResponse", 676, 1, v5);
    v19 = v9;
    if (v9)
    {
      memcpy_s("HandleLppAdResponse", 680, v9, __s, *(a1 + 16), __s);
      goto LABEL_17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    goto LABEL_8;
  }

LABEL_17:
  v10 = CheckSessionProtocol(*(v3 + 4));
  v11 = *(v3 + 8);
  if (v11 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    goto LABEL_30;
  }

  if (v11 == 2)
  {
    v13 = v10;
    PPDU_TraceBuffer(v19, __s);
    if (*(a1 + 24))
    {
      v14 = 14;
    }

    else
    {
      v14 = 1;
    }

    GNS_PpduEncodedPdu(*v3, 2, v13, 3, v14, __s, v19, *(a1 + 25) != 0);
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v17);
LABEL_30:
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
  }

LABEL_31:
  if (v19)
  {
    free(v19);
  }
}

void HandleLppPosResponse(int *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
LABEL_8:
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_11:
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
    return;
  }

  session_info = gps_find_session_info(a1[5]);
  if (!session_info)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", v16);
    goto LABEL_11;
  }

  v3 = session_info;
  LOWORD(__s) = 0;
  v19 = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  v4 = *a1;
  if (!HIWORD(*a1))
  {
    v5 = *a1;
    LOWORD(__s) = *a1;
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "HandleLppPosResponse", 772, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
  }

  v5 = __s;
  if (__s)
  {
LABEL_15:
    v9 = gnssOsa_Calloc("HandleLppPosResponse", 762, 1, v5);
    v19 = v9;
    if (v9)
    {
      memcpy_s("HandleLppPosResponse", 766, v9, __s, *(a1 + 1), __s);
      goto LABEL_17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      return;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    goto LABEL_8;
  }

LABEL_17:
  v10 = CheckSessionProtocol(*(v3 + 4));
  v11 = *(v3 + 8);
  if (v11 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    goto LABEL_30;
  }

  if (v11 == 2)
  {
    v13 = v10;
    PPDU_TraceBuffer(v19, __s);
    if (*(a1 + 17))
    {
      v14 = 14;
    }

    else
    {
      v14 = 1;
    }

    GNS_PpduEncodedPdu(*v3, 3, v13, 3, v14, __s, v19, *(a1 + 16) != 0);
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", v17);
LABEL_30:
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 0, 1);
  }

LABEL_31:
  if (v19)
  {
    free(v19);
  }
}

uint64_t Encode_Nmea_Id(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    goto LABEL_8;
  }

  if (((1 << a2) & 0x6A) != 0)
  {
    return result;
  }

  if (a2 == 2)
  {
    return (result + 64);
  }

  if (a2 == 4)
  {
    if (result >= 152)
    {
      return 0;
    }

    else
    {
      return (result - 87);
    }
  }

  else
  {
LABEL_8:
    if (a2)
    {
      EvCrt_Illegal_Default("Encode_Nmea_Id", 93);
    }

    return 0;
  }
}

uint64_t AgpsFsmHandler(const void **a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "AgpsFsmHandler");
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PId,%x,Cntxt,%p\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 73, "AgpsFsmHandler", *(a1 + 4), a1[12]);
    LbsOsaTrace_WriteLog(0xEu, __str, v5, 4, 1);
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v6 = AgpsDeQueueFsmMsg(a1);
        if (v6)
        {
          break;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "AgpsFsmHandler", 517);
          LbsOsaTrace_WriteLog(0xEu, __str, v13, 0, 1);
        }
      }

      v7 = v6;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Event,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 73, "AgpsFsmHandler", *(v7 + 1));
        LbsOsaTrace_WriteLog(0xEu, __str, v9, 4, 1);
      }

      if ((v7[8] & 1) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
        {
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid Event,%x\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 73, "AgpsFsmHandler", *(v7 + 1));
        v16 = 4;
        goto LABEL_23;
      }

      v10 = a1[12];
      if (v10)
      {
        break;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        goto LABEL_24;
      }

      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "AgpsFsmHandler", 520);
      v16 = 0;
LABEL_23:
      LbsOsaTrace_WriteLog(0xEu, __str, v15, v16, 1);
LABEL_24:
      free(v7);
    }

    while (1)
    {
      v11 = *v10;
      if (*v10 == -2)
      {
        v10 = v10[2];
        if (!v10)
        {
          goto LABEL_36;
        }

        v11 = *v10;
      }

      else if (v11 == -1)
      {
        goto LABEL_28;
      }

      if (*(v7 + 1) == v11)
      {
        break;
      }

      v10 += 3;
    }

    if (v11 == -3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Shutdown ThreadId,%x\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 73, "AgpsFsmHandler", *(a1 + 4));
        LOBYTE(v10) = 1;
        LbsOsaTrace_WriteLog(0xEu, __str, v19, 4, 1);
        goto LABEL_36;
      }

LABEL_34:
      LOBYTE(v10) = 1;
      goto LABEL_36;
    }

LABEL_28:
    v20 = v10[2];
    v21 = (v10[1])(v7);
    if (v20 == &g_UnknStatePtr)
    {
      if (v21 == &g_UnknStatePtr)
      {
        goto LABEL_34;
      }

      if (v21)
      {
        LOBYTE(v10) = 0;
        a1[12] = v21;
        goto LABEL_36;
      }
    }

    else
    {
      v22 = v10[2];
      if (v22)
      {
        LOBYTE(v10) = 0;
        a1[12] = v22;
        goto LABEL_36;
      }
    }

    LOBYTE(v10) = 0;
LABEL_36:
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Completed Event,%x\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 68, "AgpsFsmHandler", *(v7 + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v24, 5, 1);
    }

    free(v7);
  }

  while ((v10 & 1) == 0);
  result = LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "OSA", 73, "AgpsFsmHandler");
    return LbsOsaTrace_WriteLog(0xEu, __str, v27, 4, 1);
  }

  return result;
}

uint64_t AgpsFsmTimerRoutine(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("AgpsFsmSendTimeout", 722, &g_TimerCriticSection))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    bzero(__str, 0x410uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v3, "OSA", 69, "AgpsFsmSendTimeout", 1550);
    return LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
  }

  if (a1)
  {
    v5 = *a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%llx,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 73, "AgpsFsmSendTimeout", *a1, *(a1 + 2));
      LbsOsaTrace_WriteLog(0xEu, __str, v7, 4, 1);
    }

    if (*(a1 + 2) != -1)
    {
      v8 = gnssOsa_Calloc("AgpsFsmSendTimeout", 737, 1, 0xCuLL);
      if (!v8)
      {
        v11 = 741;
        goto LABEL_14;
      }

      AgpsSendFsmMsg(BYTE2(v5), BYTE2(v5), v5, v8);
      if ((gnssOsa_StopTimer("AgpsFsmSendTimeout", 0x2EFu, *(a1 + 2)) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id,%llx,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 87, "AgpsFsmSendTimeout", 1545, *a1, *(a1 + 2));
        LbsOsaTrace_WriteLog(0xEu, __str, v10, 2, 1);
      }

      *(a1 + 12) = 0;
      *a1 = 0;
      *(a1 + 2) = -1;
    }
  }

  v11 = 758;
LABEL_14:
  result = gnssOsa_MacExitCriticalSection("AgpsFsmSendTimeout", v11, &g_TimerCriticSection);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v12, "OSA", 69, "AgpsFsmSendTimeout", 1551);
      return LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }
  }

  return result;
}

BOOL AgpsFsmExecDeInitCallbacks(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 144);
  if (v1)
  {
    v1();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CB missing PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 87, "AgpsFsmExecDeInitCallbacks", 515, *(a1 + 4));
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 2, 1);
  }

  return v1 != 0;
}

uint64_t AgpsDeinitFsm(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = gnssOsa_Calloc("AgpsDeinitFsm", 287, 1, 0xCuLL);
  if (result)
  {
    *(result + 4) = -3;
    *(result + 8) = 1;
    AgpsEnQueueFsmMsg(result, a1);
    if (pthread_join(*(a1 + 104), 0))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v3 = mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsDeinitFsm", 1555, *(a1 + 4));
        LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
        return 0;
      }
    }

    else
    {
      *(a1 + 104) = 0;
      AgpsDeinitMsgQueue(a1);
      return 1;
    }
  }

  return result;
}

uint64_t AgpsSpawnFsm(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x29EDCA608];
  pg_AgpsFsmTable = a1;
  g_NumProcess = a2;
  if (!gnssOsa_Init())
  {
    return 0;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Starts\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "AgpsSpawnFsm");
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 4, 1);
  }

  if (gnssOsa_InitCriticalSection("AgpsSpawnFsm", 333, &g_TimerCriticSection))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_16;
    }

LABEL_14:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_15;
  }

  if (gnssOsa_MacEnterCriticalSection("AgpsFsmInitTimer", 67, &g_TimerCriticSection))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v4 = &byte_2A1920564;
  v5 = 10;
  do
  {
    *(v4 - 12) = 0;
    *(v4 - 1) = -1;
    *v4 = 0;
    v4 += 16;
    --v5;
  }

  while (v5);
  if (gnssOsa_MacExitCriticalSection("AgpsFsmInitTimer", 78, &g_TimerCriticSection))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v11 = pg_AgpsFsmTable;
  if (!*(pg_AgpsFsmTable + 4))
  {
LABEL_36:
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      return 1;
    }

    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "OSA", 73, "AgpsSpawnFsm");
    v9 = 1;
    LbsOsaTrace_WriteLog(0xEu, __str, v22, 4, 1);
    return v9;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v11 + 168 * v12;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PID,%x\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 73, "AgpsInitFsm", *(v14 + 4));
      LbsOsaTrace_WriteLog(0xEu, __str, v16, 4, 1);
    }

    AgpsInitMsgQueue(v14);
    if (!*(v14 + 120))
    {
      break;
    }

    if (!gnssOsa_CreateThread("AgpsInitFsm", 239, (v14 + 104), *(v14 + 128), AgpsFsmHandler, v14, 0, 0, *(v14 + 112)))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        *v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx With Stack PID,%x\n", *v26);
LABEL_47:
        LbsOsaTrace_WriteLog(0xEu, __str, v24, 0, 1);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

LABEL_31:
    ++v13;
    v11 = pg_AgpsFsmTable;
    v12 = v13;
    if (!*(pg_AgpsFsmTable + 168 * v13 + 4))
    {
      if (!*(pg_AgpsFsmTable + 4))
      {
        goto LABEL_36;
      }

      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = *(v11 + 168 * v18 + 136);
        if (!v20)
        {
          break;
        }

        v20();
        ++v19;
        v11 = pg_AgpsFsmTable;
        v18 = v19;
        if (!*(pg_AgpsFsmTable + 168 * v19 + 4))
        {
          goto LABEL_36;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        *v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Init CB not regd PId,%x\n", *v27);
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  v17 = *(v14 + 128);
  if (!v17)
  {
    if (!gnssOsa_CreateThread("AgpsInitFsm", 228, (v14 + 104), 0, AgpsFsmHandler, v14, 0, 0, *(v14 + 112)))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        goto LABEL_48;
      }

      bzero(__str, 0x410uLL);
      *v29 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Without Stack PID,%x\n", *v29);
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  if (gnssOsa_CreateThread("AgpsInitFsm", 250, (v14 + 104), v17, AgpsFsmHandler, v14, 0, 0, *(v14 + 112)))
  {
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    *v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx With Prio PID,%x\n", *v28);
    goto LABEL_47;
  }

LABEL_48:
  AgpsDeinitMsgQueue(v14);
  if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    goto LABEL_16;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Failed PId,%x\n");
LABEL_15:
  LbsOsaTrace_WriteLog(0xEu, __str, v6, 0, 1);
LABEL_16:
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4u, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "AgpsSpawnFsm");
    LbsOsaTrace_WriteLog(0xEu, __str, v8, 4, 1);
  }

  return 0;
}