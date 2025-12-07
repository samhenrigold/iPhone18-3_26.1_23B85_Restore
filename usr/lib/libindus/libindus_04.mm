BOOL Core_Get_NVIC_Alm(int a1, int a2, uint64_t a3)
{
  if ((a1 - 15) < 0xFFFFFFF2)
  {
    return 0;
  }

  v4 = (a1 - 1);
  if (a2 >= 619315201 && *(p_NA + 362 + v4))
  {
    v5 = *(p_NA + 52 * v4 + 23544);
    if (v5 >= 619315201 && a2 - v5 >= 15724801)
    {
      result = 0;
      *(p_NA + 362 + v4) = 0;
      return result;
    }
  }

  else if (!*(p_NA + 362 + v4))
  {
    return 0;
  }

  v7 = p_NA + 52 * v4 + 23544;
  v9 = *(v7 + 16);
  v8 = *(v7 + 32);
  v10 = *v7;
  *(a3 + 48) = *(v7 + 48);
  *(a3 + 16) = v9;
  *(a3 + 32) = v8;
  *a3 = v10;
  v11 = *a3;
  if (a2 >= 1 && !v11)
  {
    *a3 = a2;
    v11 = a2;
  }

  if (v11 && v11 < 619315201)
  {
    return 0;
  }

  return !a2 || v11 < a2 + 50;
}

BOOL Core_Get_GPS_Eph(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if ((a1 - 33) < 0xFFFFFFE0)
  {
    return 0;
  }

  v6 = (a1 - 1);
  v7 = p_NA + 12;
  if (!a2 && !a3)
  {
    *(v7 + v6) = 0;
    EvLog_d("Core_Get_GPS_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  v9 = *(v7 + v6);
  if (a2 >= 619315201 && (v9 & 1) != 0)
  {
    v10 = *(p_NA + 80 * v6 + 700);
    if (v10 >= 619315201 && a2 - v10 > 21600)
    {
      EvLog_nd("Core_Get_GPS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v10);
      result = 0;
      *(p_NA + v6 + 12) = 0;
      return result;
    }

    v9 = 1;
  }

  result = 0;
  if (a3 && (v9 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 80 * v6 + 700);
    v13 = a3[2];
    v14 = 16 * a3[7];
    v15 = a3[17];
    if ((v13 & 0xFFC000) != 0 || ((a3[9] | v15) & 3) != 0 || (a3[25] & 3) != 0)
    {
      v16 = *a3;
      if (v16 >= 1)
      {
        v17 = (v13 >> 14) & 0x3FF;
        do
        {
          v18 = v17;
          LOWORD(v17) = v17 + 1024;
        }

        while (v18 < *(*(p_api + 72) + 1734));
        v19 = 604800 * v18;
        v20 = v19 + v14 - v16;
        if (v16 >= 619315201 && v20 >= 618105601)
        {
          if (v20 >= 0x49C18B00)
          {
            v20 = 1237420800;
          }

          v20 = v20 - 1238630399 + (v14 + v19 - v16 - v20 + 619315199) % 0x24EA0000u;
        }

        if (v20 > -21601 || v14 >> 5 > 0x2A2)
        {
          v22 = v14 <= 0x8E620 || v20 <= 21600;
          LODWORD(v21) = v20 - 604800;
          if (v22)
          {
            v21 = v20;
          }

          else
          {
            v21 = v21;
          }
        }

        else
        {
          v21 = (v20 + 604800);
        }

        if (v21 >= 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = -v21;
        }

        if (v23 >= 0x5461)
        {
          *(p_NA + v6 + 12) = 0;
          EvLog_nd("Core_Get_GPS_Eph:  (c) Deleted SV", 5, v12, a1, a2, v21, v14, v16);
        }
      }
    }

    if (a2 >= 1)
    {
      LODWORD(v24) = (a2 - v14) % 604800;
      if (v24 <= 302400)
      {
        v24 = v24;
      }

      else
      {
        v24 = (v24 - 604800);
      }

      v25 = v24 > 10800 && (v15 & 0x80) == 0;
      v26 = *a3;
      if (v25 || v24 >= 16201)
      {
        *(p_NA + v6 + 12) = 0;
        EvLog_nd("Core_Get_GPS_Eph:  (d) Deleted SV", 5, v12, a1, a2, v24, v14, v26);
        LODWORD(v26) = *a3;
      }

      if (!v26)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 12) != 1)
    {
      return 0;
    }

    v28 = *a3;
    if (*a3)
    {
      if (v28 < 619315201)
      {
        return 0;
      }
    }

    if (a2 && v28 >= a2 + 300)
    {
      return 0;
    }

    if (v28)
    {
      v29 = v28 <= a2 - 7200;
    }

    else
    {
      v29 = 0;
    }

    return !v29;
  }

  return result;
}

BOOL Core_Get_QZSS_Eph(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if ((a1 - 203) < 0xFFFFFFF6)
  {
    return 0;
  }

  v6 = (a1 - 193);
  v7 = p_NA + 76;
  if (!a2 && !a3)
  {
    *(v7 + v6) = 0;
    EvLog_d("Core_Get_QZSS_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  v9 = *(v7 + v6);
  if (a2 >= 619315201 && (v9 & 1) != 0)
  {
    v10 = *(p_NA + 80 * v6 + 4412);
    if (v10 >= 619315201 && a2 - v10 > 21600)
    {
      EvLog_nd("Core_Get_QZSS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v10);
      result = 0;
      *(p_NA + v6 + 76) = 0;
      return result;
    }

    v9 = 1;
  }

  result = 0;
  if (a3 && (v9 & 1) != 0)
  {
    UnCompact_GPS_BinEph(a3, p_NA + 80 * v6 + 4412);
    v13 = a3[2];
    v14 = 16 * a3[7];
    v15 = a3[17];
    if ((v13 & 0xFFC000) != 0 || ((a3[9] | v15) & 3) != 0 || (a3[25] & 3) != 0)
    {
      v16 = *a3;
      if (v16 >= 1)
      {
        v17 = (v13 >> 14) & 0x3FF;
        do
        {
          v18 = v17;
          LOWORD(v17) = v17 + 1024;
        }

        while (v18 < *(*(p_api + 72) + 1734));
        v19 = 604800 * v18;
        v20 = v19 + v14 - v16;
        if (v16 >= 619315201 && v20 >= 618105601)
        {
          if (v20 >= 0x49C18B00)
          {
            v20 = 1237420800;
          }

          v20 = v20 - 1238630399 + (v14 + v19 - v16 - v20 + 619315199) % 0x24EA0000u;
        }

        if (v20 > -21601 || v14 >> 5 > 0x2A2)
        {
          v22 = v14 <= 0x8E620 || v20 <= 21600;
          LODWORD(v21) = v20 - 604800;
          if (v22)
          {
            v21 = v20;
          }

          else
          {
            v21 = v21;
          }
        }

        else
        {
          v21 = (v20 + 604800);
        }

        if (v21 >= 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = -v21;
        }

        if (v23 >= 0x5461)
        {
          *(p_NA + v6 + 76) = 0;
          EvLog_nd("Core_Get_QZSS_Eph:  (c) Deleted SV", 5, v12, a1, a2, v21, v14, v16);
        }
      }
    }

    if (a2 >= 1)
    {
      LODWORD(v24) = (a2 - v14) % 604800;
      if (v24 <= 302400)
      {
        v24 = v24;
      }

      else
      {
        v24 = (v24 - 604800);
      }

      v25 = v24 > 10800 && (v15 & 0x80) == 0;
      v26 = *a3;
      if (v25 || v24 >= 16201)
      {
        *(p_NA + v6 + 76) = 0;
        EvLog_nd("Core_Get_QZSS_Eph:  (d) Deleted SV", 5, v12, a1, a2, v24, v14, v26);
        LODWORD(v26) = *a3;
      }

      if (!v26)
      {
        *a3 = a2;
      }
    }

    if (*(p_NA + v6 + 76) != 1)
    {
      return 0;
    }

    v28 = *a3;
    if (*a3)
    {
      if (v28 < 619315201)
      {
        return 0;
      }
    }

    if (a2 && v28 >= a2 + 300)
    {
      return 0;
    }

    if (v28)
    {
      v29 = v28 <= a2 - 7200;
    }

    else
    {
      v29 = 0;
    }

    return !v29;
  }

  return result;
}

BOOL Core_Get_GAL_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 - 37) < 0xFFFFFFDC)
  {
    return 0;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 147;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_GAL_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 88 * v6 + 5588);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_GAL_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 147) = 0;
    }

    v11 = 60 * *(v7 + 88 * v6 + 5606);
    v12 = v4 % 0x93A80 - v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v7 + v6 + 147) = 0;
      EvLog_nd("Core_Get_GAL_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, v11);
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = p_NA + 147;
  if (*(p_NA + 147 + v6) != 1)
  {
    return 0;
  }

  v16 = p_NA + 88 * v6 + 5588;
  v17 = *(p_NA + 88 * v6 + 5604);
  *a3 = *v16;
  *(a3 + 16) = v17;
  v18 = *(v16 + 32);
  v19 = *(v16 + 48);
  v20 = *(v16 + 64);
  *(a3 + 80) = *(v16 + 80);
  *(a3 + 48) = v19;
  *(a3 + 64) = v20;
  *(a3 + 32) = v18;
  v21 = *a3;
  if (v4 >= 1 && !v21)
  {
    *a3 = v4;
    v21 = v4;
  }

  if (*(v15 + v6) != 1 || v21 && v21 < 619315201 || v4 && v21 >= (v4 + 300))
  {
    return 0;
  }

  if (v21)
  {
    v23 = v21 <= (v4 - 1800);
  }

  else
  {
    v23 = 0;
  }

  return !v23;
}

BOOL Core_Get_BDS_Eph(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 - 64) < 0xC1u)
  {
    return 0;
  }

  v4 = a2;
  v6 = p_NA;
  v7 = p_NA + 221;
  v8 = (a1 - 1);
  if (!a2 && !a3)
  {
    *(v7 + v8) = 0;
    EvLog_d("Core_Get_BDS_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v7 + v8) & 1) != 0)
  {
    v9 = *(p_NA + 152 * (a1 - 1) + 10112);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_BDS_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v6 = p_NA;
      *(p_NA + v8 + 221) = 0;
    }

    v11 = (300 * *(v6 + 152 * v8 + 10132));
    v12 = v4 % 0x93A80 - v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v6 + v8 + 221) = 0;
      EvLog_nd("Core_Get_BDS_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, v11);
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = p_NA + 221;
  if (*(p_NA + 221 + v8) != 1)
  {
    return 0;
  }

  v16 = p_NA + 152 * v8;
  v17 = *(v16 + 10128);
  *a3 = *(v16 + 10112);
  *(a3 + 16) = v17;
  v18 = *(v16 + 10144);
  v19 = *(v16 + 10160);
  v20 = *(v16 + 10192);
  *(a3 + 64) = *(v16 + 10176);
  *(a3 + 80) = v20;
  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  v21 = *(v16 + 10208);
  v22 = *(v16 + 10224);
  v23 = *(v16 + 10240);
  *(a3 + 144) = *(v16 + 10256);
  *(a3 + 112) = v22;
  *(a3 + 128) = v23;
  *(a3 + 96) = v21;
  v24 = *a3;
  if (v4 >= 1 && !v24)
  {
    *a3 = v4;
    v24 = v4;
  }

  if (*(v15 + v8) != 1 || v24 && v24 < 619315201 || v4 && v24 >= (v4 + 300))
  {
    return 0;
  }

  if (v24)
  {
    v26 = v24 <= (v4 - 1800);
  }

  else
  {
    v26 = 0;
  }

  return !v26;
}

BOOL Core_Get_NVIC_Eph(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if ((a1 - 15) < 0xFFFFFFF2)
  {
    return 0;
  }

  v4 = a2;
  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 348;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_NVIC_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + 76 * v6 + 22480);
    if (v9 >= 619315201 && a2 - v9 >= 14401)
    {
      EvLog_nd("Core_Get_NVIC_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      *(p_NA + v6 + 348) = 0;
    }

    v11 = *(v7 + 76 * v6 + 22498);
    v12 = v4 % 0x93A80 - 16 * v11;
    LODWORD(v13) = v12 + 604800;
    if (v12 >= -302400)
    {
      LODWORD(v13) = v4 % 0x93A80 - 16 * v11;
    }

    if (v12 <= 302399)
    {
      v13 = v13;
    }

    else
    {
      v13 = (v12 - 604800);
    }

    if (v13 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = -v13;
    }

    if (v14 >= 0x3841)
    {
      *(v7 + v6 + 348) = 0;
      EvLog_nd("Core_Get_NVIC_Eph:  (c) Deleted SV", 4, a3, a1, v13, v4 % 0x93A80, (16 * v11));
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = p_NA + 348;
  if (*(p_NA + 348 + v6) != 1)
  {
    return 0;
  }

  v16 = (p_NA + 76 * v6);
  *a3 = v16[1405];
  v17 = v16[1406];
  v18 = v16[1407];
  v19 = v16[1408];
  *(a3 + 60) = *(v16 + 22540);
  a3[2] = v18;
  a3[3] = v19;
  a3[1] = v17;
  v20 = *a3;
  if (v4 >= 1 && !v20)
  {
    *a3 = v4;
    v20 = v4;
  }

  if (*(v15 + v6) != 1 || v20 && v20 < 619315201 || v4 && v20 >= (v4 + 300))
  {
    return 0;
  }

  if (v20)
  {
    v22 = v20 <= (v4 - 1800);
  }

  else
  {
    v22 = 0;
  }

  return !v22;
}

BOOL Core_Get_GLON_Eph(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if ((a1 - 25) < 0xFFFFFFE8)
  {
    return 0;
  }

  v6 = (a1 - 1);
  v7 = p_NA;
  v8 = p_NA + 96;
  if (!a2 && !a3)
  {
    *(v8 + v6) = 0;
    EvLog_d("Core_Get_GLON_Eph:  (a) Deleted SV", a1);
    return 0;
  }

  if (a2 >= 619315201 && (*(v8 + v6) & 1) != 0)
  {
    v9 = *(p_NA + (v6 << 6) + 24272);
    if (v9 >= 619315201 && a2 - v9 >= 9901)
    {
      EvLog_nd("Core_Get_GLON_Eph:  (b) Deleted SV", 3, a3, a1, a2, v9);
      v7 = p_NA;
      v11 = p_NA + v6;
      *(v11 + 96) = 0;
      *(v11 + 26700) = 127;
    }

    v12 = 900 * (*(v7 + (v6 << 6) + 24298) & 0x7Fu);
    v13 = (a2 + 10800) % 0x15180u - v12;
    v14 = v13 + 86400;
    if (v13 >= -43200)
    {
      v14 = (a2 + 10800) % 0x15180u - v12;
    }

    if (v13 > 43199)
    {
      v14 = v13 - 86400;
    }

    if (v14 < 0)
    {
      v14 = -v14;
    }

    if (v14 >= 0x26AD)
    {
      *(v7 + v6 + 96) = 0;
      EvLog_nd("Core_Get_GLON_Eph:  (c) Deleted SV", 4, a3, a1, a2, (a2 + 10800) % 0x15180u, v12);
      v7 = p_NA;
      *(p_NA + v6 + 26700) = 127;
    }
  }

  if (!a3)
  {
    return 0;
  }

  v15 = v7 + 96;
  if (*(v7 + 96 + v6) != 1)
  {
    return 0;
  }

  v16 = (v7 + (v6 << 6));
  v17 = v16[1518];
  v18 = v16[1520];
  v19 = v16[1517];
  a3[2] = v16[1519];
  a3[3] = v18;
  *a3 = v19;
  a3[1] = v17;
  v20 = *a3;
  if (a2 >= 1 && !v20)
  {
    *a3 = a2;
    v20 = a2;
  }

  if (*(v15 + v6) != 1 || v20 && v20 < 619315201 || a2 && v20 >= a2 + 300)
  {
    return 0;
  }

  if (v20)
  {
    v22 = v20 <= a2 - 1800;
  }

  else
  {
    v22 = 0;
  }

  return !v22;
}

uint64_t Core_Get_GLON_Clk1(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 144) != 1)
  {
    return 0;
  }

  v3 = p_NA + 26672;
  v4 = *(p_NA + 26672);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 144) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = *v3;
    *(a2 + 12) = *(v3 + 12);
    *a2 = v7;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_GPS_Klob(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 10) != 1)
  {
    return 0;
  }

  v3 = (p_NA + 660);
  v4 = *(p_NA + 660);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 10) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    *a2 = *v3;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_GPS_UTC(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 11) != 1)
  {
    return 0;
  }

  v3 = p_NA + 676;
  v4 = *(p_NA + 676);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 11) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = *v3;
    *(a2 + 16) = *(v3 + 16);
    *a2 = v7;
    return 1;
  }

  return 0;
}

uint64_t Core_Get_GAL_GGTO(int a1, _OWORD *a2)
{
  v2 = p_NA;
  if (*(p_NA + 146) != 1)
  {
    return 0;
  }

  v3 = *(p_NA + 5572);
  if (a1 < 619315201 || v3)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = a1 - 900;
    *(p_NA + 5572) = a1 - 900;
  }

  if (a1 - v3 >= 1209601)
  {
    result = 0;
    *(v2 + 146) = 0;
    return result;
  }

LABEL_8:
  if (v3)
  {
    v5 = v3 < 619315201;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    *a2 = *(v2 + 5572);
    return 1;
  }

  return 0;
}

uint64_t Core_Get_BDS_BGTO(int a1, _OWORD *a2, _OWORD *a3)
{
  v3 = p_NA;
  v4 = *(p_NA + 219);
  if (v4 == 1 && a1 >= 619315201 && !*(p_NA + 10052))
  {
    *(p_NA + 10052) = a1 - 900;
  }

  v5 = *(v3 + 220);
  if (v5 == 1 && a1 >= 619315201 && !*(v3 + 10080))
  {
    *(v3 + 10080) = a1 - 900;
  }

  if (a1 >= 619315201 && v4)
  {
    if (a1 - *(v3 + 10052) <= 1209600)
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *(v3 + 219) = 0;
    }
  }

  if (a1 < 619315201 || !v5)
  {
LABEL_18:
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (a1 - *(v3 + 10080) > 1209600)
  {
    v5 = 0;
    *(v3 + 220) = 0;
    goto LABEL_18;
  }

  v5 = 1;
  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_19:
  v6 = *(v3 + 10052);
  if (v6)
  {
    v7 = v6 < 619315201;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = (v3 + 10052);
    v9 = *v8;
    *(a2 + 12) = *(v8 + 12);
    *a2 = v9;
    return 1;
  }

LABEL_25:
  if (v5)
  {
    v10 = *(v3 + 10080);
    if (!v10 || v10 >= 619315201)
    {
      v12 = (v3 + 10080);
      v13 = *v12;
      *(a3 + 12) = *(v12 + 12);
      *a3 = v13;
      return 1;
    }
  }

  return 0;
}

uint64_t Core_Get_NVIC_NGTO(int a1, uint64_t a2)
{
  v2 = p_NA;
  if (*(p_NA + 347) != 1)
  {
    return 0;
  }

  v3 = (p_NA + 22460);
  v4 = *(p_NA + 22460);
  if (a1 < 619315201 || v4)
  {
    if (a1 < 619315201)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = a1 - 900;
    *v3 = a1 - 900;
  }

  if (a1 - v4 >= 1209601)
  {
    result = 0;
    *(v2 + 347) = 0;
    return result;
  }

LABEL_8:
  if (v4)
  {
    v6 = v4 < 619315201;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = *v3;
    *(a2 + 16) = v3[4];
    *a2 = v7;
    return 1;
  }

  return 0;
}

void s_NA_Ram::s_NA_Ram(s_NA_Ram *this)
{
  v2 = 0;
  *(this + 81) = 0;
  v3 = this + 26680;
  *(this + 656) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  v4 = (this + 10060);
  *(this + 484) = 0u;
  v5 = this + 4490;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 208) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 112) = 0;
  *(this + 55) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0;
  *(this + 33) = 0u;
  *(this + 136) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 628) = 0u;
  *(this + 690) = 0;
  *(this + 660) = 0u;
  *(this + 676) = 0u;
  do
  {
    *(this + v2 + 774) = 0;
    v6 = (this + v2 + 700);
    *(this + v2 + 778) = 0;
    *v6 = 0uLL;
    v6[1] = 0uLL;
    v6[2] = 0uLL;
    v6[3] = 0uLL;
    v2 += 80;
    *(v6 + 57) = 0uLL;
  }

  while (v2 != 2560);
  for (i = 3260; i != 4412; i += 36)
  {
    v8 = this + i;
    *(v8 + 16) = 0;
    *v8 = 0uLL;
    *(v8 + 1) = 0uLL;
  }

  v9 = 800;
  do
  {
    *(v5 - 1) = 0;
    *v5 = 0;
    *(v5 - 78) = 0uLL;
    *(v5 - 62) = 0uLL;
    *(v5 - 46) = 0uLL;
    *(v5 - 30) = 0uLL;
    *(v5 - 21) = 0uLL;
    v5 += 80;
    v9 -= 80;
  }

  while (v9);
  do
  {
    v10 = this + v9 + 5212;
    *(v10 + 16) = 0;
    *v10 = 0uLL;
    *(v10 + 1) = 0uLL;
    v9 += 36;
  }

  while (v9 != 360);
  *(this + 5578) = 0;
  *(this + 5572) = 0;
  bzero(this + 5588, 0xC60uLL);
  for (j = 0; j != 1296; j += 36)
  {
    v12 = this + j + 8756;
    *(v12 + 31) = 0;
    *v12 = 0uLL;
    *(v12 + 1) = 0uLL;
  }

  *(this + 10052) = 0;
  *v4 = 0;
  v4[8] = 0;
  *(this + 1258) = 0;
  *(this + 10071) = 0;
  v4[14] = 0;
  v4[22] = 0;
  *(this + 10092) = 0;
  *(this + 10099) = 0;
  v13 = this + 10112;
  v14 = 9576;
  *(this + 1260) = 0;
  do
  {
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 8) = 0;
    *(v13 + 20) = 0uLL;
    *(v13 + 36) = 0uLL;
    *(v13 + 52) = 0uLL;
    *(v13 + 68) = 0uLL;
    *(v13 + 82) = 0uLL;
    *(v13 + 100) = 0uLL;
    *(v13 + 116) = 0uLL;
    *(v13 + 132) = 0uLL;
    v13 += 152;
    v14 -= 152;
  }

  while (v14);
  for (k = 0; k != 2772; k += 44)
  {
    v16 = (this + k + 19688);
    *(v16 + 27) = 0uLL;
    *v16 = 0uLL;
    v16[1] = 0uLL;
  }

  *(this + 22474) = 0;
  *(this + 22460) = 0;
  *(this + 22465) = 0;
  bzero(this + 22480, 0x428uLL);
  v17 = 0;
  v18 = this + 23558;
  do
  {
    v19 = &v18[v17];
    *(v19 - 1) = 0;
    *&v18[v17] = 0;
    *(v19 + 1) = 0;
    *(v19 + 6) = 0;
    *(v19 + 5) = 0;
    *(v19 - 14) = 0;
    *(v19 - 7) = 0;
    *(v19 + 22) = 0;
    *(v19 + 14) = 0;
    v17 += 52;
    *(v19 + 27) = 0;
  }

  while (v17 != 728);
  v20 = -1536;
  do
  {
    v21 = (this + v20);
    v21[1615] = 0uLL;
    v21[1614] = 0uLL;
    v21[1613] = 0uLL;
    *(this + v20 + 25854) = 0uLL;
    v20 += 64;
  }

  while (v20);
  v22 = (this + 25820);
  v23 = 864;
  do
  {
    *(v22 - 12) = 0;
    *(v22 - 2) = 0;
    v22[1] = 0;
    v22[2] = 0;
    *v22 = 0;
    v22 = (v22 + 36);
    v23 -= 36;
  }

  while (v23);
  *(this + 3334) = 0;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[8] = 0;
  *(v3 + 3) = 0;
  v3[16] = 0;
  *(v3 + 34) = 0;
  *(this + 26700) = 0;
  *(this + 26708) = 0u;
  *(this + 26721) = 0;
  *(this + 26732) = 0;
  *(this + 26740) = 0;
  *(this + 26744) = 0u;
  *(this + 26760) = 0u;
  *(this + 26772) = 0u;
  *(this + 6702) = 0;
  *(this + 26792) = 0u;
  *(this + 3355) = 0;
  *(this + 26824) = 0u;
  *(this + 26848) = 0;
  *(this + 26877) = 0;
  *(this + 3359) = 0;
  *(this + 26856) = 0u;
  *(this + 3363) = 0;
  *(this + 6728) = 0;
  *(this + 26888) = 0u;
  *(this + 6734) = 0;
  *(this + 26920) = 0u;
  *(this + 6740) = 0;
  *(this + 1684) = 0u;
  *(this + 6746) = 0;
  *(this + 26968) = 0u;
  *(this + 1687) = 0u;
  *(this + 1688) = 0u;
  *(this + 27023) = 0;
  *(this + 27032) = 0u;
  *(this + 6762) = 0;
  *(this + 6768) = 0;
  *(this + 1691) = 0u;
  *(this + 6774) = 0;
  *(this + 27080) = 0u;
  *(this + 3390) = 0;
  *(this + 1694) = 0u;
}

__n128 SBAS_Eph2RefState(__n128 *a1, char a2, __int16 a3, int a4, uint64_t a5)
{
  *(a5 + 175) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 188) = a2;
  *(a5 + 176) = 1;
  *(a5 + 184) = 7;
  *(a5 + 112) = 0x4083880000000000;
  v5 = a1->n128_u32[2];
  v6 = a4 % 86400 - v5;
  if (v6 >= -43200)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > 43199)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v5 + 86400 * (v8 + a4 / 86400);
  v10 = v9 - 604800;
  if (v9 > 0x93A7F)
  {
    v11 = a3 + 1;
  }

  else
  {
    v10 = v9;
    v11 = a3;
  }

  if (v9 < 0)
  {
    v12 = v9 + 604800;
  }

  else
  {
    v12 = v10;
  }

  if (v9 < 0)
  {
    v13 = a3 - 1;
  }

  else
  {
    v13 = v11;
  }

  *(a5 + 160) = v12;
  *(a5 + 164) = v13;
  *a5 = a1[2];
  *(a5 + 16) = a1[3];
  *(a5 + 32) = a1[4];
  *(a5 + 48) = a1[5];
  *(a5 + 64) = a1[6].n128_u64[0];
  result = a1[1];
  *(a5 + 96) = result;
  return result;
}

void ds_Intermittent(char **a1, unsigned int a2, double *a3)
{
  v6 = 0;
  *&v43[127] = *MEMORY[0x29EDCA608];
  v7 = *a1;
  v8 = 84;
  do
  {
    *a1 = v7 + 1;
    *v7 = v8;
    v7 = *a1;
    if (*a1 >= a1[3])
    {
      v7 = a1[2];
      *a1 = v7;
    }

    v8 = aTsx[++v6];
  }

  while (v6 != 4);
  sprintf_5d(a1, *(a3 + 120));
  sprintf_sgR8(a1, a3[9]);
  sprintf_sgR8(a1, a3[10]);
  sprintf_sgR8(a1, a3[11]);
  sprintf_sgR8(a1, a3[12]);
  sprintf_sgR8(a1, a3[13]);
  sprintf_sgR8(a1, a3[14]);
  sprintf_sgR8(a1, a3[15]);
  sprintf_sgR8(a1, a3[17]);
  sprintf_sgR8(a1, a3[18]);
  sprintf_sgR8(a1, a3[19]);
  sprintf_sgR8(a1, a3[20]);
  sprintf_sgR8(a1, a3[21]);
  sprintf_sgR8(a1, a3[22]);
  sprintf_sgR8(a1, a3[23]);
  sprintf_sgR8(a1, a3[24]);
  sprintf_sgR8(a1, a3[25]);
  sprintf_sgR8(a1, a3[26]);
  sprintf_sgR8(a1, a3[27]);
  sprintf_sgR8(a1, a3[28]);
  sprintf_sgR8(a1, a3[29]);
  v9 = (*a1)++;
  *v9 = 10;
  v10 = *a1;
  if (*a1 >= a1[3])
  {
    v10 = a1[2];
  }

  v11 = "INT";
  if (a2 == 11)
  {
    v11 = "Int";
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = (v11 + 1);
    do
    {
      *a1 = v10 + 1;
      *v10 = v12;
      v10 = *a1;
      if (*a1 >= a1[3])
      {
        v10 = a1[2];
        *a1 = v10;
      }

      v14 = *v13++;
      v12 = v14;
    }

    while (v14);
  }

  v15 = &ch_GNSS_Exe_States[20 * a2 + 1];
  v16 = 32;
  do
  {
    *a1 = v10 + 1;
    *v10 = v16;
    v10 = *a1;
    if (*a1 >= a1[3])
    {
      v10 = a1[2];
      *a1 = v10;
    }

    v17 = *v15++;
    v16 = v17;
  }

  while (v17);
  v18 = **(p_api + 8);
  *a1 = v10 + 1;
  *v10 = 32;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }

  sprintf_10u(a1, v18);
  if (a2 > 0xB)
  {
    goto LABEL_59;
  }

  if (((1 << a2) & 0xA48) != 0)
  {
    sprintf_5d(a1, *(a3 + 417));
    v19 = *a1;
    v20 = &ch_Oper_Mode[6 * *a3 + 1];
    v21 = 32;
    do
    {
      *a1 = v19 + 1;
      *v19 = v21;
      v19 = *a1;
      if (*a1 >= a1[3])
      {
        v19 = a1[2];
        *a1 = v19;
      }

      v22 = *v20++;
      v21 = v22;
    }

    while (v22);
    sprintf_ACC(a1, a3[*a3 + 210]);
    v23 = (*a1)++;
    *v23 = 32;
    if (*a1 >= a1[3])
    {
      *a1 = a1[2];
    }

    sprintf_ACC(a1, a3[*a3 + 212]);
    v24 = *a1;
    v25 = &ch_Sens_Mode[4 * *(a3 + 1) + 1];
    v26 = 32;
    do
    {
      *a1 = v24 + 1;
      *v24 = v26;
      v24 = *a1;
      if (*a1 >= a1[3])
      {
        v24 = a1[2];
        *a1 = v24;
      }

      v27 = *v25++;
      v26 = v27;
    }

    while (v27);
    v28 = &ch_Sens_Mode[4 * *(a3 + 2) + 1];
    v29 = 32;
    do
    {
      *a1 = v24 + 1;
      *v24 = v29;
      v24 = *a1;
      if (*a1 >= a1[3])
      {
        v24 = a1[2];
        *a1 = v24;
      }

      v30 = *v28++;
      v29 = v30;
    }

    while (v30);
    sprintf_sp1d(a1, *(a3 + 65));
    sprintf_4d(a1, *(a3 + 242));
    sprintf_4d(a1, *(a3 + 243));
    v31 = 0;
    v32 = *a1;
    v33 = 32;
    do
    {
      *a1 = v32 + 1;
      *v32 = v33;
      v32 = *a1;
      if (*a1 >= a1[3])
      {
        v32 = a1[2];
        *a1 = v32;
      }

      v33 = aPu[++v31];
    }

    while (v31 != 4);
    v34 = " --";
    if (*(a3 + 12))
    {
      v34 = " DC";
    }

    v35 = *v34;
    if (*v34)
    {
      v36 = (v34 + 1);
      do
      {
        *a1 = v32 + 1;
        *v32 = v35;
        v32 = *a1;
        if (*a1 >= a1[3])
        {
          v32 = a1[2];
          *a1 = v32;
        }

        v37 = *v36++;
        v35 = v37;
      }

      while (v37);
    }

    goto LABEL_60;
  }

  if (a2 != 2)
  {
LABEL_59:
    v32 = *a1;
    goto LABEL_60;
  }

  GN_GPS_Get_LibVersion(&v42);
  v32 = *a1;
  for (i = 5; i > 1; --i)
  {
    *a1 = v32 + 1;
    *v32 = 32;
    v32 = *a1;
    if (*a1 >= a1[3])
    {
      v32 = a1[2];
      *a1 = v32;
    }
  }

  v39 = v42;
  if (v42)
  {
    v40 = v43;
    do
    {
      *a1 = v32 + 1;
      *v32 = v39;
      v32 = *a1;
      if (*a1 >= a1[3])
      {
        v32 = a1[2];
        *a1 = v32;
      }

      v41 = *v40++;
      v39 = v41;
    }

    while (v41);
  }

LABEL_60:
  *a1 = v32 + 1;
  *v32 = 10;
  if (*a1 >= a1[3])
  {
    *a1 = a1[2];
  }
}

BOOL Is_Legal(int a1)
{
  result = 0;
  if (BYTE2(a1) && a1 & 0xFF00FFFF | (BYTE2(a1) << 16))
  {
    v3 = BYTE2(a1) < 0xFu;
    v4 = BYTE2(a1) - 120 < 0x27;
    if (a1 != 7)
    {
      v4 = 0;
    }

    if (a1 != 6)
    {
      v3 = v4;
    }

    v5 = BYTE2(a1) < 0x40u;
    v6 = BYTE2(a1) - 193 < 0xA;
    if (a1 != 5)
    {
      v6 = 0;
    }

    if (a1 != 4)
    {
      v5 = v6;
    }

    if (a1 <= 5u)
    {
      v3 = v5;
    }

    v7 = BYTE2(a1) < 0x25u;
    if (a1 != 3)
    {
      v7 = 0;
    }

    if (a1 == 2)
    {
      v7 = BYTE2(a1) < 0x19u;
    }

    if (a1 == 1)
    {
      v7 = BYTE2(a1) < 0x21u;
    }

    if (a1 <= 3u)
    {
      return v7;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

char *Get_GNSS_SV_Str(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = Get_GNSS_SV_Str(GNSS_SV)::ch_Constell_Id[a1];
  v4 = BYTE2(a1);
  result = &g_GNSS_SV_Str;
  g_GNSS_SV_Str = v3;
  unk_2A13EC331 = *(&Get_GNSS_SV_Str(GNSS_SV)::str_Signal_Id[BYTE1(v1)] + v2);
  byte_2A13EC333 = 32;
  v6 = BYTE2(v1);
  v7 = (41 * v6) >> 12;
  v8 = -100 * v7 + v4;
  v9 = v7 | 0x30;
  if (v6 <= 0x63)
  {
    v9 = 32;
  }

  v10 = v8 > 9 || v6 > 0x63;
  byte_2A13EC334 = v9;
  v11 = v8 / 0xA + 48;
  if (!v10)
  {
    LOBYTE(v11) = 32;
  }

  byte_2A13EC335 = v11;
  byte_2A13EC336 = v8 % 0xA + 48;
  byte_2A13EC337 = 0;
  return result;
}

void Gnm05_31PrintNavSoln(uint64_t result)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (*(result + 10))
    {
      v3 = 89;
    }

    else
    {
      v3 = 78;
    }

    if (*(result + 9))
    {
      v4 = 89;
    }

    else
    {
      v4 = 78;
    }

    if (*(result + 8))
    {
      v5 = 89;
    }

    else
    {
      v5 = 78;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NAV:OsTime,%ums,BBTick,%ums,DateSet,%c,TimeSet,%c,UtcValid,%c,Year,%u,Month,%u,Day,%u,Hours,%u,Min,%u,Sec,%u,Msec,%u,WkNo,%d,Tow,%.12f,TowUnc%.12f,BCT_Tick,%llu,UtcCorr,%.1f,ClkDrift,%.12f,ClkDriftUnc,%.12f\n", v2, "GNM", 73, "Gnm05_31PrintNavSoln", *(result + 4), *result, v5, v4, v3, *(result + 12), *(result + 14), *(result + 16), *(result + 18), *(result + 20), *(result + 22), *(result + 24), *(result + 28), *(result + 48), *(result + 40), *(result + 32), *(result + 72), *(result + 80), *(result + 176));
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NAV:OsTime,%ums,Lat,%.9f,Lon,%.9f,AltMSL,%f,Speed,%f,Course,%f,VerVel,%f,HAccMaj,%f,HAccMin,%f,PRRes,%f,FixT,%u,VSF,%u,VNM,%u,FixMode,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm05_31PrintNavSoln", *(result + 4), *(result + 112), *(result + 120), *(result + 136), *(result + 144), *(result + 152), *(result + 160), *(result + 208), *(result + 216), *(result + 256), *(result + 296), *(result + 297), *(result + 298), *(result + 299));
      gnssOsa_PrintLog(__str, 4, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v7 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NAV:OsTime,%ums,SVSignalsInView,%u,SatsUsed,%u,UsrS,%u,GnssC,%u,Reliab,%u,AsstUsed,0x%X,SpoofMsk,0x%X\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm05_31PrintNavSoln", *(result + 4), *(result + 315), *(result + 316), *(result + 300), *(result + 301), *(result + 312), *(result + 308), *(result + 304));
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }
  }
}

uint64_t Gnm05_55AssignAppInfo(_BYTE *a1, uint64_t a2)
{
  if (!a1 || *a1 != 1)
  {
    return 1;
  }

  v4 = 1;
  v5 = gnssOsa_Calloc("Gnm05_55AssignAppInfo", 126, 1, 0xC4uLL);
  *a2 = v5;
  if (!v5)
  {
    return 0;
  }

  *v5 = 1;
  memcpy_s("Gnm05_55AssignAppInfo", 134, v5 + 66, 0x41u, a1 + 66, 0x41uLL);
  memcpy_s("Gnm05_55AssignAppInfo", 135, (*a2 + 1), 0x41u, a1 + 1, 0x41uLL);
  memcpy_s("Gnm05_55AssignAppInfo", 136, (*a2 + 131), 0x41u, a1 + 131, 0x41uLL);
  return v4;
}

void EvLog(const char *a1)
{
  if (g_Logging_Cfg >= 4)
  {
    EvLog_Header();
    v2 = *a1;
    v3 = g_CB_ELog;
    if (*a1)
    {
      v4 = a1 + 1;
      do
      {
        g_CB_ELog = (v3 + 1);
        *v3 = v2;
        v3 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v3 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v5 = *v4++;
        v2 = v5;
      }

      while (v5);
    }

    g_CB_ELog = (v3 + 1);
    *v3 = 10;
    v6 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v6 = qword_2A14540F0;
    }

    v7 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - v6 > 0)
    {
      v7 = 0;
    }

    if ((v7 + dword_2A14540E8 - v6) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

char **EvLog_Header()
{
  v0 = mach_continuous_time();
  sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v0));
  v1 = g_CB_ELog++;
  *v1 = 32;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
  }

  result = sprintf_10u(&g_CB_ELog, **(p_api + 8));
  v3 = g_CB_ELog++;
  *v3 = 32;
  if (g_CB_ELog >= qword_2A14540F8)
  {
    g_CB_ELog = qword_2A14540F0;
  }

  return result;
}

void EvLog_d(const char *a1, uint64_t a2)
{
  if (g_Logging_Cfg >= 4)
  {
    v2 = a2;
    EvLog_Header();
    v4 = *a1;
    if (*a1)
    {
      v5 = g_CB_ELog;
      v6 = a1 + 1;
      do
      {
        g_CB_ELog = (v5 + 1);
        *v5 = v4;
        v5 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v5 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v7 = *v6++;
        v4 = v7;
      }

      while (v7);
    }

    sprintf_sp1d(&g_CB_ELog, v2);
    v8 = g_CB_ELog++;
    *v8 = 10;
    v9 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v9 = qword_2A14540F0;
    }

    v10 = dword_2A14540E8 - v9;
    v11 = qword_2A14540F8 - qword_2A14540F0;
    if (v10 > 0)
    {
      v11 = 0;
    }

    if ((v11 + v10) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvLog_nd(const char *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (g_Logging_Cfg >= 4)
  {
    EvLog_Header();
    v5 = *a1;
    if (*a1)
    {
      v6 = g_CB_ELog;
      v7 = a1 + 1;
      do
      {
        g_CB_ELog = (v6 + 1);
        *v6 = v5;
        v6 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v6 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v8 = *v7++;
        v5 = v8;
      }

      while (v8);
    }

    va_copy(v14, va);
    for (; a2; --a2)
    {
      v9 = va_arg(v14, void);
      sprintf_sp1d(&g_CB_ELog, v9);
    }

    v10 = g_CB_ELog++;
    *v10 = 10;
    v11 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v11 = qword_2A14540F0;
    }

    v12 = dword_2A14540E8 - v11;
    v13 = qword_2A14540F8 - qword_2A14540F0;
    if (v12 > 0)
    {
      v13 = 0;
    }

    if ((v13 + v12) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvLog_VecI4(const char *a1, unsigned int a2, unsigned int *a3)
{
  if (g_Logging_Cfg >= 4)
  {
    EvLog_Header();
    v6 = *a1;
    if (*a1)
    {
      v7 = g_CB_ELog;
      v8 = a1 + 1;
      do
      {
        g_CB_ELog = (v7 + 1);
        *v7 = v6;
        v7 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v7 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v9 = *v8++;
        v6 = v9;
      }

      while (v9);
    }

    if (a2)
    {
      v10 = a2;
      do
      {
        v11 = *a3++;
        sprintf_sp1d(&g_CB_ELog, v11);
        --v10;
      }

      while (v10);
    }

    v12 = g_CB_ELog++;
    *v12 = 10;
    v13 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v13 = qword_2A14540F0;
    }

    v14 = dword_2A14540E8 - v13;
    v15 = qword_2A14540F8 - qword_2A14540F0;
    if (v14 > 0)
    {
      v15 = 0;
    }

    if ((v15 + v14) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvLog_v(char *a1, ...)
{
  va_start(va, a1);
  if (g_Logging_Cfg >= 4)
  {
    EvLog_Header();
    sprintf_v(&g_CB_ELog, a1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void DbgLog_v(int a1, char *a2, ...)
{
  va_start(va, a2);
  if (g_Logging_Cfg >= 4)
  {
    v3 = a1;
    if (a1)
    {
      v4 = g_CB_NDbg;
      v5 = 69;
      v6 = 1u;
      v7 = &g_CB_NDbg;
      do
      {
        g_CB_NDbg = (v4 + 1);
        *v4 = v5;
        v4 = g_CB_NDbg;
        if (g_CB_NDbg >= qword_2A1454118)
        {
          v4 = qword_2A1454110;
          g_CB_NDbg = qword_2A1454110;
        }

        v5 = str_3_0[v6++];
      }

      while (v6 != 4);
    }

    else
    {
      v8 = mach_continuous_time();
      v7 = &g_CB_ELog;
      sprintf_10u(&g_CB_ELog, (*&g_MacClockTicksToMsRelation * v8));
      v9 = g_CB_ELog++;
      *v9 = 32;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        g_CB_ELog = qword_2A14540F0;
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
}

void EvCrt_d(const char *a1, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    v2 = a2;
    EvLog_Header();
    v4 = *a1;
    if (*a1)
    {
      v5 = g_CB_ELog;
      v6 = a1 + 1;
      do
      {
        g_CB_ELog = (v5 + 1);
        *v5 = v4;
        v5 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v5 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v7 = *v6++;
        v4 = v7;
      }

      while (v7);
    }

    sprintf_sp1d(&g_CB_ELog, v2);
    v8 = g_CB_ELog++;
    *v8 = 10;
    v9 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v9 = qword_2A14540F0;
    }

    v10 = dword_2A14540E8 - v9;
    v11 = qword_2A14540F8 - qword_2A14540F0;
    if (v10 > 0)
    {
      v11 = 0;
    }

    if ((v11 + v10) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvCrt_nd(const char *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (g_Logging_Cfg)
  {
    EvLog_Header();
    v5 = *a1;
    if (*a1)
    {
      v6 = g_CB_ELog;
      v7 = a1 + 1;
      do
      {
        g_CB_ELog = (v6 + 1);
        *v6 = v5;
        v6 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v6 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v8 = *v7++;
        v5 = v8;
      }

      while (v8);
    }

    va_copy(v14, va);
    for (; a2; --a2)
    {
      v9 = va_arg(v14, void);
      sprintf_sp1d(&g_CB_ELog, v9);
    }

    v10 = g_CB_ELog++;
    *v10 = 10;
    v11 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v11 = qword_2A14540F0;
    }

    v12 = dword_2A14540E8 - v11;
    v13 = qword_2A14540F8 - qword_2A14540F0;
    if (v12 > 0)
    {
      v13 = 0;
    }

    if ((v13 + v12) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvCrt_v(char *a1, ...)
{
  va_start(va, a1);
  if (g_Logging_Cfg)
  {
    EvLog_Header();
    sprintf_v(&g_CB_ELog, a1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvCrt_Illegal_switch_case(const char *a1, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    EvLog_Header();
    v4 = *a1;
    v5 = g_CB_ELog;
    if (*a1)
    {
      v6 = a1 + 1;
      do
      {
        g_CB_ELog = (v5 + 1);
        *v5 = v4;
        v5 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v5 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v7 = *v6++;
        v4 = v7;
      }

      while (v7);
    }

    v8 = 58;
    v9 = 1u;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v8;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v5 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v8 = str_5_2[v9++];
    }

    while (v9 != 50);
    sprintf_1u(&g_CB_ELog, a2);
    v10 = g_CB_ELog++;
    *v10 = 10;
    v11 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v11 = qword_2A14540F0;
    }

    v12 = dword_2A14540E8 - v11;
    v13 = qword_2A14540F8 - qword_2A14540F0;
    if (v12 > 0)
    {
      v13 = 0;
    }

    if ((v13 + v12) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvCrt_Illegal_switch_default(const char *a1, uint64_t a2)
{
  if (g_Logging_Cfg)
  {
    EvLog_Header();
    v4 = *a1;
    v5 = g_CB_ELog;
    if (*a1)
    {
      v6 = a1 + 1;
      do
      {
        g_CB_ELog = (v5 + 1);
        *v5 = v4;
        v5 = g_CB_ELog;
        if (g_CB_ELog >= qword_2A14540F8)
        {
          v5 = qword_2A14540F0;
          g_CB_ELog = qword_2A14540F0;
        }

        v7 = *v6++;
        v4 = v7;
      }

      while (v7);
    }

    v8 = 58;
    v9 = 1u;
    do
    {
      g_CB_ELog = (v5 + 1);
      *v5 = v8;
      v5 = g_CB_ELog;
      if (g_CB_ELog >= qword_2A14540F8)
      {
        v5 = qword_2A14540F0;
        g_CB_ELog = qword_2A14540F0;
      }

      v8 = str_6_1[v9++];
    }

    while (v9 != 53);
    sprintf_1u(&g_CB_ELog, a2);
    v10 = g_CB_ELog++;
    *v10 = 10;
    v11 = g_CB_ELog;
    if (g_CB_ELog >= qword_2A14540F8)
    {
      g_CB_ELog = qword_2A14540F0;
      v11 = qword_2A14540F0;
    }

    v12 = dword_2A14540E8 - v11;
    v13 = qword_2A14540F8 - qword_2A14540F0;
    if (v12 > 0)
    {
      v13 = 0;
    }

    if ((v13 + v12) <= 0xFF)
    {

      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvDbg_v(char *a1, ...)
{
  va_start(va, a1);
  if (g_Logging_Cfg >= 5)
  {
    EvLog_Header();
    sprintf_v(&g_CB_ELog, a1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
    {
      GNSS_Event_Log_Ctl(&g_CB_ELog);
    }
  }
}

void EvVrb_v(char *a1, ...)
{
  va_start(va, a1);
  if (g_Logging_Cfg >= 6)
  {
    EvLog_Header();
    sprintf_v(&g_CB_ELog, a1, va);
    v2 = qword_2A14540F8 - qword_2A14540F0;
    if (dword_2A14540E8 - g_CB_ELog > 0)
    {
      v2 = 0;
    }

    if ((v2 + dword_2A14540E8 - g_CB_ELog) <= 0xFF)
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

uint64_t Is_GN_API_Set_Allowed(const char *a1)
{
  v1 = *p_api;
  if (v1 > 7 || ((0x93u >> v1) & 1) == 0)
  {
    return 1;
  }

  EvCrt_v("%s:  FAILED:  Not allowed when in %s Mode", a1, off_29EF06398[v1]);
  return 0;
}

BOOL API_Set_Platform_Calibration_GLONASS_Group_Delays(double *a1)
{
  v1 = *a1;
  if (fabs(*a1) <= 100.0)
  {
    v4 = 0;
    while (v4 != 13)
    {
      v1 = a1[++v4];
      if (fabs(v1) > 100.0)
      {
        v2 = (v4 - 1) > 0xC;
        v3 = v4 - 7;
        goto LABEL_7;
      }
    }

    v5 = p_api;
    v6 = (*(p_api + 72) + 1880);
    v8 = *(a1 + 1);
    v7 = *(a1 + 2);
    *v6 = *a1;
    v6[1] = v8;
    v6[2] = v7;
    v9 = *(a1 + 6);
    v11 = *(a1 + 3);
    v10 = *(a1 + 4);
    v6[5] = *(a1 + 5);
    v6[6] = v9;
    v6[3] = v11;
    v6[4] = v10;
    v2 = 1;
    *(*(v5 + 72) + 1992) = 1;
  }

  else
  {
    v2 = 0;
    v3 = -7;
LABEL_7:
    EvCrt_v("API_Set_Platform_Calibration_GLONASS_Group_Delays:  FAILED  Group Delay %f larger than +/-100m on Freq Channel %d", v1, v3);
  }

  return v2;
}

BOOL API_Set_Inter_Chan_Bias_Model(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 8)
  {
    EvCrt_d("API_Set_Inter_Chan_Bias_Model:  FAILED  Illegal ME RF Type", a1);
  }

  else
  {
    Init_Set_Inter_Chan_Bias(*(p_api + 72), a1);
  }

  return v1 < 8;
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
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  return 1;
}

BOOL API_Set_Config(uint64_t a1)
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = *(p_api + 72);
    API_Set_FixInterval(*(a1 + 34));
    *(v2 + 1732) = *(a1 + 44);
    v3 = *(a1 + 46);
    if (v3 < 0x400)
    {
      LOWORD(v3) = 2139;
    }

    *(v2 + 1734) = v3;
    *(v2 + 14) = *a1;
    *(v2 + 30) = *(a1 + 16);
    *(v2 + 38) = *(a1 + 24);
    *(v2 + 42) = *(a1 + 28);
    *(v2 + 43) = *(a1 + 29);
    *(v2 + 1736) = *(a1 + 48);
    v4 = *(a1 + 36);
    if (v4 == 255)
    {
      v5 = -1;
    }

    else
    {
      v5 = 60000 * v4;
    }

    *(v2 + 1768) = v5;
    *(v2 + 1840) = *(a1 + 80);
    *(v2 + 1852) = *(a1 + 88);
    *(v2 + 1853) = *(a1 + 89);
    *(v2 + 1854) = *(a1 + 90);
    g_Logging_Cfg = *(a1 + 40);
    v14[0] = 0.0;
    if (!R8_EQ((a1 + 56), v14) || (v13 = 0.0, !R8_EQ((a1 + 64), &v13)) || (v12 = 0, !R8_EQ((a1 + 72), &v12)))
    {
      v6 = *(p_api + 136) + 0x10000;
      *(v6 + 2680) = *(a1 + 56) * 0.0174532925;
      *(v6 + 2688) = *(a1 + 64) * 0.0174532925;
      *(v6 + 2696) = *(a1 + 72);
      Geo2ECEF(v6 + 2680, &WGS84_Datum, (v6 + 2656));
      v7 = __sincos_stret(*(v6 + 2680));
      *(v6 + 2736) = v7;
      v8 = 1.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0);
      v9 = *(v6 + 2696);
      v10 = v7.__cosval * (v9 + v8 * 6378137.0);
      if (v10 < 1.0)
      {
        v10 = 1.0;
      }

      *(v6 + 2760) = v10;
      *(v6 + 2752) = v9 + v8 * (v8 * v8) * 6335439.33;
    }
  }

  return a1 != 0;
}

uint64_t API_Set_FixInterval(int a1)
{
  v2 = *(p_api + 72);
  v3 = *(v2 + 1672);
  if (!v3)
  {
    v4 = *(v2 + 1668);
    if (a1 == v4)
    {
      return 1;
    }

    v5 = *p_api;
    if (*p_api <= 0xBu)
    {
      if (((1 << v5) & 0xE48) != 0)
      {
        v6 = *(p_api + 120);
        v7 = v6[115];
        v8 = v6[141];
        v9 = v6[110];
        if ((v8 + v7 - v9 - (*&g_MacClockTicksToMsRelation * mach_continuous_time())) > 99)
        {
          v10 = v6[141] + a1 - *(v2 + 1668);
          EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int %d %d", *p_api, *(v2 + 1668), a1);
          *(v2 + 1668) = a1;
          v6[141] = v10;
          G5K_ME_enc_n(*(p_api + 272), v10, a1);
          GNSS_Write_GNB_Ctrl(*(p_api + 272));
          GNSS_GNB_Debug_Ctl(*(p_api + 304));
          return 1;
        }

        v5 = *p_api;
        v4 = *(v2 + 1668);
LABEL_12:
        *(v2 + 1672) = a1;
        EvLog_v("API_Set_FixInterval:  GNSS_Exe_State   RUNNING(%d) Fix_Int To Be Updated %d %d", v5, v4, a1);
        return 1;
      }

      if (((1 << v5) & 0x124) != 0)
      {
        goto LABEL_12;
      }
    }

    EvLog_v("API_Set_FixInterval:  GNSS_Exe_State NOT RUNNING(%d) Fix_Int %d %d", v5, 0, a1);
    *(v2 + 1668) = a1;
    *(v2 + 1672) = 0;
    return 1;
  }

  if (a1 != v3)
  {
    EvLog_v("API_Set_FixInterval:  Fix_Int Update Pending %d %d", *(v2 + 1672), a1);
    *(v2 + 1672) = a1;
  }

  return 1;
}

BOOL API_Query_Config(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v1 = p_api;
    v2 = *(p_api + 72);
    *a1 = *(v2 + 14);
    *(a1 + 16) = *(v2 + 30);
    *(a1 + 32) = *(v2 + 46);
    v3 = *(v2 + 1672);
    if (!v3)
    {
      v3 = *(v2 + 1668);
    }

    *(a1 + 34) = v3;
    v4 = *(v2 + 1768);
    if (v4 == 0xFFFFFFFFLL)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4 / 0xEA60;
    }

    *(a1 + 36) = v5;
    *(a1 + 44) = *(v2 + 1732);
    *(a1 + 46) = *(v2 + 1734);
    *(a1 + 80) = *(v2 + 1840);
    *(a1 + 88) = *(v2 + 1852);
    *(a1 + 89) = *(v2 + 1853);
    *(a1 + 40) = g_Logging_Cfg;
    v6 = *(v1 + 136) + 0x10000;
    *(a1 + 56) = *(v6 + 2680) * 57.2957795;
    *(a1 + 64) = *(v6 + 2688) * 57.2957795;
    *(a1 + 72) = *(v6 + 2696);
  }

  return a1 != 0;
}

uint64_t API_Set_Not_Broadcast_SVID(uint64_t a1, _OWORD *a2)
{
  v3 = a1;
  v4 = *(p_api + 72);
  if (a1)
  {
    if (a1 != 1)
    {
      __assert_rtn("API_Set_Not_Broadcast_SVID", "GNSS_Core_api.cpp", 1103, "(sizeof_DBss_Not_Brd_SV) >= (((( 32)) + (( 24)) + (( 36)) + ((63)) + (( 10)) + (( 14)) + (( 39)))*sizeof(Not_Brd_SVID[0]))");
    }

    v5 = 1376;
    v6 = 1368;
    v7 = 1360;
    v8 = 1352;
    v9 = 1344;
    v10 = 1336;
    v11 = 1328;
    v12 = 1104;
    v13 = "L5";
  }

  else
  {
    v5 = 1096;
    v6 = 1088;
    v7 = 1080;
    v8 = 1072;
    v9 = 1064;
    v10 = 1056;
    v11 = 1048;
    v12 = 824;
    v13 = "L1";
  }

  v14 = 0;
  v15 = 0;
  v16 = *(v4 + v5);
  v17 = *(v4 + v6);
  v18 = *(v4 + v7);
  v19 = *(v4 + v8);
  v20 = *(v4 + v9);
  v21 = *(v4 + v10);
  v22 = *(v4 + v11);
  v23 = (v4 + v12);
  v24 = a2[5];
  v26 = a2[2];
  v25 = a2[3];
  v23[4] = a2[4];
  v23[5] = v24;
  v23[2] = v26;
  v23[3] = v25;
  v27 = a2[9];
  v29 = a2[6];
  v28 = a2[7];
  v23[8] = a2[8];
  v23[9] = v27;
  v23[6] = v29;
  v23[7] = v28;
  v31 = a2[11];
  v30 = a2[12];
  v32 = a2[10];
  *(v23 + 202) = *(a2 + 202);
  v23[11] = v31;
  v23[12] = v30;
  v23[10] = v32;
  v33 = a2[1];
  *v23 = *a2;
  v23[1] = v33;
  v34 = 1;
  do
  {
    if (*(v22 + v14))
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v15 |= v35;
    v34 *= 2;
    ++v14;
  }

  while (v14 != 32);
  v36 = 0;
  v37 = 0;
  v38 = 1;
  do
  {
    if (*(v20 + v36))
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v37 |= v39;
    v38 *= 2;
    ++v36;
  }

  while (v36 != 10);
  v40 = 0;
  v41 = 0;
  v42 = 1;
  do
  {
    if (*(v21 + v40))
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v41 |= v43;
    v42 *= 2;
    ++v40;
  }

  while (v40 != 24);
  v44 = 0;
  v45 = 0;
  v46 = 1;
  do
  {
    if (*(v19 + v44))
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    v45 |= v47;
    v46 *= 2;
    ++v44;
  }

  while (v44 != 39);
  v48 = 0;
  v49 = 0;
  v50 = 1;
  do
  {
    if (*(v18 + v48))
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v49 |= v51;
    v50 *= 2;
    ++v48;
  }

  while (v48 != 63);
  v52 = 0;
  v53 = 0;
  v54 = 1;
  do
  {
    if (*(v17 + v52))
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v53 |= v55;
    v54 *= 2;
    ++v52;
  }

  while (v52 != 36);
  v56 = 0;
  v57 = 0;
  v58 = 1;
  do
  {
    if (*(v16 + v56))
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    v57 |= v59;
    v58 *= 2;
    ++v56;
  }

  while (v56 != 14);
  EvLog_v("API_Set_Not_Broadcast_SVID:  %s  G %x Q %x R %x S %X B %X E %X N %X", v13, v15, v37, v41, v45, v49, v53, v57);
  Core_Save_Not_Brd_SV(v3, a2);
  *(*(p_api + 120) + 28240) = 0;
  return 1;
}

uint64_t API_Set_RTI_Bad_SV_List(int a1, _OWORD *a2)
{
  v4 = *(p_api + 72);
  v5 = *(p_api + 56);
  if (a1)
  {
    if (a1 != 1)
    {
      __assert_rtn("API_Set_RTI_Bad_SV_List", "GNSS_Core_api.cpp", 1179, "(sizeof_DBss_Inhib) >= (((( 32)) + (( 24)) + (( 36)) + ((63)) + (( 10)) + (( 14)) + (( 39))) * sizeof(Inhib[0]))");
    }

    v6 = 55412;
    v7 = 544;
  }

  else
  {
    v6 = 51052;
    v7 = 265;
  }

  v8 = 0;
  v9 = (v4 + v7);
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[5];
  v9[4] = a2[4];
  v9[5] = v13;
  v9[2] = v11;
  v9[3] = v12;
  v14 = a2[6];
  v15 = a2[7];
  v16 = a2[9];
  v9[8] = a2[8];
  v9[9] = v16;
  v9[6] = v14;
  v9[7] = v15;
  v17 = a2[10];
  v18 = a2[11];
  v19 = a2[12];
  *(v9 + 202) = *(a2 + 202);
  v9[11] = v18;
  v9[12] = v19;
  v9[10] = v17;
  v20 = (v6 + v5 + 16);
  do
  {
    if (*(a2 + v8) != 1)
    {
      v22 = 1;
LABEL_18:
      *v20 = v22;
      goto LABEL_19;
    }

    Constell_Prn = Get_Constell_Prn(v8);
    if (a1 == 1)
    {
      if (Constell_Prn > 7 || ((1 << Constell_Prn) & 0x85) == 0)
      {
LABEL_14:
        if (*(v4 + v8 + 265) == 1 && *(v4 + v8 + 544) == 1)
        {
          *(v4 + v8 + 1384) = 1;
        }

        v22 = 2;
        goto LABEL_18;
      }
    }

    else if (Constell_Prn && Constell_Prn != 6)
    {
      goto LABEL_14;
    }

LABEL_19:
    ++v8;
    v20 += 5;
  }

  while (v8 != 218);
  v23 = *(v4 + 1752);
  if (v23 > 0)
  {
    Core_Save_Inhib_EE((v4 + 1384), v23);
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
  if (g_Logging_Cfg >= 6)
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
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v6 = *(p_api + 80);
  memset(v14, 0, sizeof(v14));
  do
  {
    v7 = *(v6 + 4 * v1 + 1000);
    if (Is_Legal(v7) && *(v6 + v1 + 2536) == 1 && (*(v14 + v1) & 1) == 0)
    {
      *(v14 + v1) = 1;
      v8 = *(v6 + v1 + 1512);
      if (v8 != 255)
      {
        *(v14 + v8) = 1;
      }

      v2 = (v2 + 1);
      if (v7 <= 6u)
      {
        if (((1 << v7) & 0x6A) != 0)
        {
          v3 = 1;
        }

        else if (v7 == 2)
        {
          v5 = 1;
        }

        else if (v7 == 4)
        {
          v4 = 1;
        }
      }
    }

    ++v1;
  }

  while (v1 != 128);
  v9 = v3;
  if (v3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (v5)
  {
    v9 = v10;
  }

  v11 = v9 + (v4 & 1);
  if (v11 > 1)
  {
    if (*(v6 + 488) & (v3 & v5))
    {
      if (v11 - 3 > 0xFFFFFFFD)
      {
        goto LABEL_30;
      }

      v11 = 2;
    }

    if ((*(v6 + 489) & (v3 & v4) & 1) == 0)
    {
      goto LABEL_28;
    }

    if (v11 - 3 <= 0xFFFFFFFD)
    {
      v11 = 2;
LABEL_28:
      if (*(v6 + 490) & v5)
      {
        v11 -= v4 & 1;
      }

      goto LABEL_31;
    }

LABEL_30:
    v11 = 1;
  }

LABEL_31:
  if (*(v6 + 56) < 8)
  {
    ++v11;
  }

  *a1 = v11;
  return v2;
}

uint64_t API_Get_Fix_Reliability(void)
{
  v18 = *MEMORY[0x29EDCA608];
  v0 = p_api;
  v1 = *(p_api + 80);
  v2 = *(v1 + 56);
  if (v2 < 6)
  {
    return 1;
  }

  v4 = *(p_api + 176) + 60216;
  v17 = 0;
  Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(&v17);
  if (*(v1 + 784) <= 10.0)
  {
    v6 = -3;
  }

  else
  {
    v6 = -4;
  }

  v7 = v6 + Num_SV_and_Clock_Unknowns - v17;
  v8 = *(v4 + 2532);
  if (v8 > 0xC8)
  {
    v7 -= 2;
  }

  if (*v4 == 1 && (*(v4 + 16) & 1) == 0 && *(v4 + 4) == 1 && *(v4 + 48) <= 160000.0 && (*(v4 + 8) - 3) < 2 || *(v4 + 856) == 1 && (*(v4 + 872) & 1) == 0 && *(v4 + 860) == 1 && *(v4 + 904) <= 160000.0)
  {
    v7 += 2;
  }

  if (*(v4 + 128) == 1 && (*(v4 + 144) & 1) == 0 && *(v4 + 132) == 1 && *(v4 + 160) <= 160000.0 && (*(v4 + 8) - 3) < 2)
  {
    ++v7;
  }

  v9 = *(v0 + 72);
  if (!*(v9 + 1780) && *(v9 + 18) == 1)
  {
    v10 = *(v9 + 1854) == 1 && v2 == 11;
    if (v10 && v7 >= 2)
    {
      v13 = *(v1 + 32) - *(*(v0 + 136) + 68180);
      if (v13 <= 3000)
      {
        v14 = *(v1 + 401);
        v15 = *(v1 + 391);
        v16 = v14 >= v15 || v14 >= 6;
        if (!v16 || v8 >= 0xC9)
        {
          EvCrt_v("BDS Consistency delay engaged:  dT %d  EDOF %d  SVs %d %d  BDS %d %d  GPS %d %d  GLON %d %d  MagPosCor %d", v13, v7, *(v1 + 384), *(v1 + 385), *(v1 + 400), v14, *(v1 + 390), v15, *(v1 + 395), *(v1 + 396), v8);
          if (!*(v9 + 1784))
          {
            *(v9 + 1784) = *(v1 + 32);
          }

          return 1;
        }
      }
    }
  }

  if (v7 == 3)
  {
    return 3;
  }

  if (v7 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v7 >= 4)
  {
    return 4;
  }

  else
  {
    return v12;
  }
}

void API_Get_Dbg_Constell_ME_Data(int a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = *(p_api + 96);
  v5 = *(p_api + 72);
  if (a1 <= 3)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        if ((v5[15] & 1) == 0)
        {
          return;
        }

        v7 = 24;
        v8 = -1;
        v9 = 413;
      }

      else
      {
        if ((v5[19] & 1) == 0)
        {
          return;
        }

        v7 = 36;
        v8 = -1;
        v9 = 417;
      }

      goto LABEL_21;
    }

    if ((v5[14] & 1) == 0)
    {
      return;
    }

    v7 = 32;
    v8 = -1;
LABEL_20:
    v9 = 409;
LABEL_21:
    v6 = *(*(p_api + 120) + v9);
    goto LABEL_22;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      if ((v5[18] & 1) == 0)
      {
        return;
      }

      v6 = 0;
      v7 = 63;
LABEL_13:
      v8 = -1;
      goto LABEL_22;
    }

    if ((v5[16] & 1) == 0)
    {
      return;
    }

    v7 = 10;
    v8 = -193;
    goto LABEL_20;
  }

  if (a1 == 6)
  {
    if ((v5[20] & 1) == 0)
    {
      return;
    }

    v6 = 0;
    v7 = 14;
    goto LABEL_13;
  }

  if ((v5[17] & 1) == 0)
  {
    return;
  }

  v6 = 0;
  v7 = 39;
  v8 = -120;
LABEL_22:
  *(a2 + 17) = v6;
  memset(v40, 0, 218);
  bzero(v39, 0x400uLL);
  bzero(v38, 0x400uLL);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    if (*(v4 + v12 + 96) == a1)
    {
      v15 = v8 + *(v4 + v12 + 98);
      if (v15 < v7)
      {
        v16 = *(v4 + v12 + 1248);
        if (v16 > 9 || v16 == 8)
        {
          ++*(v40 + v15);
          ++*(a2 + 2);
          v18 = (v4 + v13);
          LOBYTE(v10) = *(v4 + v13 + 1760);
          LOBYTE(v11) = *(v4 + v13 + 1888);
          *&v19 = *&v11;
          v20 = 0x3FB0000000000000;
          v21 = *&v10 + *&v19 * 0.0625;
          v39[v14] = v21;
          LOBYTE(v21) = *(v4 + v13 + 2016);
          LOBYTE(v19) = *(v4 + v13 + 2144);
          v22 = *&v21 + v19 * 0.0625;
          v38[v14] = v22;
          if ((*a2 & 1) == 0)
          {
            *a2 = 1;
          }

          v23 = *(v4 + 2 * v13 + 992);
          v24 = (v23 >> 8) & 3;
          if (*(a2 + 4) < v24)
          {
            *(a2 + 4) = v24;
          }

          v25 = v4 + 2400;
          if ((v23 & 8) != 0)
          {
            v25 = (v23 & 0x30) != 0 ? v4 + 2656 : v4 + 2400;
            if ((v23 & 0xC0) != 0)
            {
              v25 = v4 + 2912;
            }
          }

          v26 = *(v25 + 2 * v13);
          if (*(a2 + 8) < v26)
          {
            *(a2 + 8) = v26;
          }

          LOWORD(v22) = *(a2 + 10);
          v27 = *&v22;
          LOBYTE(v22) = v18[2016];
          LOBYTE(v20) = v18[2144];
          v28 = v20;
          v29 = *&v22 + v28 * 0.0625;
          if (v29 > v27)
          {
            *(a2 + 10) = v29;
            LOBYTE(v29) = v18[2016];
            LOBYTE(v27) = v18[2144];
            v27 = *&v27;
            v28 = 0.0625;
            v29 = *&v29 + v27 * 0.0625;
          }

          LOBYTE(v27) = v18[1760];
          LOBYTE(v28) = v18[1888];
          v11 = *&v27 + *&v28 * 0.0625;
          v10 = v11 - v29;
          if (v10 <= 6.0)
          {
            ++*(a2 + 14);
            if (v10 <= 3.0)
            {
              ++*(a2 + 12);
            }
          }

          ++v14;
        }
      }
    }

    ++v13;
    v12 += 4;
  }

  while (v13 != 128);
  v30 = 0;
  *(a2 + 16) = v14;
  do
  {
    if (*(v40 + v30) >= 2u)
    {
      ++*(a2 + 6);
    }

    ++v30;
  }

  while (v7 != v30);
  if (v14 > 0)
  {
    if (v14 >= 5)
    {
      v31 = 5;
    }

    else
    {
      v31 = v14;
    }

    v32 = (v14 - 1);
    VecSortAscR8(v39, 0, v14 - 1);
    v33 = v14 + ~v31;
    v34 = v14 - 1;
    v35 = v33;
    v36 = 0.0;
    do
    {
      v36 = v36 + v39[v34--];
    }

    while (v34 > v33);
    *(a2 + 24) = v36 / v31;
    VecSortAscR8(v38, 0, v14 - 1);
    v37 = 0.0;
    do
    {
      v37 = v37 + v38[v32--];
    }

    while (v32 > v35);
    *(a2 + 32) = v37 / v31;
  }
}

void API_Get_Dbg_Constell_PE_Data(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v56 = *MEMORY[0x29EDCA608];
  v5 = *(p_api + 56);
  v6 = *(p_api + 176);
  v7 = *(p_api + 72);
  v8 = *(p_api + 96);
  v9 = *(p_api + 40);
  memset(v55, 0, sizeof(v55));
  memset(v54, 0, 39);
  memset(v53, 0, 39);
  if (v1 <= 3)
  {
    if (v1 == 1)
    {
      if (v7[14] != 1)
      {
        return;
      }

      v10 = v5[8];
      v43 = -1;
      v11 = 32;
      v45 = v5[10];
      v46 = v5[9];
    }

    else if (v1 == 2)
    {
      if (v7[15] != 1)
      {
        return;
      }

      v10 = v5[2146];
      v45 = v5[2148];
      v46 = v5[2147];
      v5 += 1489;
      v43 = -1;
      v11 = 24;
    }

    else
    {
      if (v7[19] != 1)
      {
        return;
      }

      v10 = v5[2202];
      v45 = v5[2204];
      v46 = v5[2203];
      v5 += 2194;
      v43 = -1;
      v11 = 36;
    }

    goto LABEL_24;
  }

  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      if (v7[18] != 1)
      {
        return;
      }

      v10 = v5[3182];
      v45 = v5[3184];
      v46 = v5[3183];
      v5 += 3174;
      v43 = -1;
      v11 = 63;
    }

    else
    {
      if (v7[16] != 1)
      {
        return;
      }

      v10 = v5[1137];
      v45 = v5[1139];
      v46 = v5[1138];
      v5 += 1129;
      v43 = -193;
      v11 = 10;
    }

    goto LABEL_24;
  }

  if (v1 == 6)
  {
    if (v7[20] != 1)
    {
      return;
    }

    v12 = v5 + 5632;
    v10 = v12[323];
    v45 = v12[325];
    v46 = v12[324];
    v5 = v12 + 316;
    v43 = -1;
    v11 = 14;
LABEL_24:
    v15 = v9;
    v16 = v9 + 0x2000;
    v44 = *v5;
    if (*(v9 + 8592))
    {
      v17 = 0;
      do
      {
        LODWORD(v52[0]) = 0;
        v18 = LongPrnIdx_To_ShortPrnIdx((*(v15 + 6194 + 2 * v17) - 1), v52);
        if (LODWORD(v52[0]) == v4)
        {
          ++*(v3 + 88);
          if ((v10[v18] & 1) != 0 || *(v46 + v18) == 1)
          {
            ++*(v3 + 89);
          }
        }

        ++v17;
      }

      while (v17 < *(v16 + 400));
    }

    if (*(v16 + 403))
    {
      v19 = 0;
      do
      {
        LODWORD(v52[0]) = 0;
        LongPrnIdx_To_ShortPrnIdx((*(v15 + 7066 + 2 * v19) - 1), v52);
        if (LODWORD(v52[0]) == v4)
        {
          ++*(v3 + 90);
        }

        ++v19;
      }

      while (v19 < *(v16 + 403));
    }

    bzero(v52, 0x400uLL);
    bzero(v51, 0x400uLL);
    bzero(v50, 0x400uLL);
    bzero(v49, 0x400uLL);
    bzero(v48, 0x400uLL);
    bzero(v47, 0x400uLL);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1024;
    v27 = 36888;
    v28 = 22240;
    v29 = 7080;
    v30 = 29024;
    v31 = 21984;
    v32 = 7336;
    do
    {
      if (*(v8 + 96) == v4 && *(v8 + 1248) >= 10)
      {
        v33 = v43 + *(v8 + 98);
        if (v33 < v11)
        {
          if ((*v3 & 1) == 0)
          {
            *v3 = 1;
          }

          if ((v10[v33] & 1) != 0 || *(v46 + v33) == 1)
          {
            ++*(v3 + 1);
          }

          else if (*(v45 + v33) == 1)
          {
            ++*(v3 + 2);
          }

          if (*(v44 + v33) == 1)
          {
            ++*(v3 + 3);
          }

          else
          {
            ++*(v3 + 4);
          }

          if (*(v6 + v29) == 1)
          {
            v52[v25] = fabs(*(v6 + v26 + 14120));
            v49[v25++] = fabs(*(v6 + v26 + 20648));
          }

          v34 = *(v6 + v32);
          if ((v34 - 1) <= 0x1D && v22 <= 7)
          {
            *(v3 + 9 + v22++) = aCghkmnpqrstvya_0[v34 - 1];
          }

          if (*(v6 + v31) == 1)
          {
            v51[v24] = fabs(*(v6 + v30));
            v48[v24++] = fabs(*(v6 + v30 + 5504));
          }

          v35 = *(v6 + v28);
          if ((v35 - 1) <= 0x1D && v21 <= 7)
          {
            *(v3 + 17 + v21++) = aCghkmnpqrstvya_0[v35 - 1];
          }

          if (*(v6 + v27) == 1)
          {
            v50[v23] = fabs(*(v6 + v30 + 14904));
            v47[v23++] = fabs(*(v6 + v30 + 20408));
          }

          v36 = *(v6 + v28 + 14904);
          if ((v36 - 1) <= 0x1D && v20 <= 7)
          {
            *(v3 + 25 + v20++) = aCghkmnpqrstvya_0[v36 - 1];
          }
        }
      }

      v8 += 4;
      ++v27;
      v28 += 4;
      ++v29;
      v30 += 8;
      ++v31;
      v32 += 4;
      v26 += 8;
    }

    while (v26);
    if (v25)
    {
      *(v3 + 6) = v25;
      VecMedian8(v52, v25);
      *(v3 + 40) = v37;
      VecMedian8(v49, v25);
      *(v3 + 64) = v38;
    }

    if (v24)
    {
      *(v3 + 7) = v24;
      VecMedian8(v51, v24);
      *(v3 + 48) = v39;
      VecMedian8(v48, v24);
      *(v3 + 72) = v40;
    }

    if (v23)
    {
      *(v3 + 8) = v23;
      VecMedian8(v50, v23);
      *(v3 + 56) = v41;
      VecMedian8(v47, v23);
      *(v3 + 80) = v42;
    }

    return;
  }

  if (v7[17] == 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = *(v9 + 8783 + v13);
      if (v14 >= 3)
      {
        break;
      }

      v55[v13] = 0;
      *(v54 + v13) = 0x10100u >> (8 * (v14 & 0x1F));
      *(v53 + v13++) = 0;
      if (v13 == 39)
      {
        v5 += 2192;
        v10 = v55;
        v46 = v54;
        v45 = v53;
        v43 = -120;
        v11 = 39;
        goto LABEL_24;
      }
    }

    EvCrt_Illegal_switch_default("API_Get_Dbg_Constell_PE_Data", 2720);
  }
}

void API_Get_Dbg_Constell_Orb_Data(int a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *(p_api + 56);
  v3 = *(p_api + 72);
  v4 = *(p_api + 40);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, 39);
  memset(v25, 0, 39);
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      if (v3[14] != 1)
      {
        return;
      }

      v5 = v2[8];
      v6 = v2[9];
      v8 = 32;
      v9 = 768;
      v10 = 488;
      v7 = v2[10];
    }

    else if (a1 == 2)
    {
      if (v3[15] != 1)
      {
        return;
      }

      v5 = v2[2146];
      v6 = v2[2147];
      v7 = v2[2148];
      v2 += 1489;
      v8 = 24;
      v9 = 776;
      v10 = 496;
    }

    else
    {
      if (v3[19] != 1)
      {
        return;
      }

      v5 = v2[2202];
      v6 = v2[2203];
      v7 = v2[2204];
      v2 += 2194;
      v8 = 36;
      v9 = 808;
      v10 = 528;
    }

    goto LABEL_24;
  }

  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      if (v3[18] != 1)
      {
        return;
      }

      v5 = v2[3182];
      v6 = v2[3183];
      v7 = v2[3184];
      v2 += 3174;
      v8 = 63;
      v9 = 800;
      v10 = 520;
    }

    else
    {
      if (v3[16] != 1)
      {
        return;
      }

      v5 = v2[1137];
      v6 = v2[1138];
      v7 = v2[1139];
      v2 += 1129;
      v8 = 10;
      v9 = 784;
      v10 = 504;
    }

    goto LABEL_24;
  }

  if (a1 == 6)
  {
    if (v3[20] != 1)
    {
      return;
    }

    v11 = v2 + 5632;
    v5 = v11[323];
    v6 = v11[324];
    v7 = v11[325];
    v2 = v11 + 316;
    v8 = 14;
    v9 = 816;
    v10 = 536;
LABEL_24:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *v2;
    v23 = *&v3[v10];
    v24 = *&v3[v9];
    do
    {
      if (v5[v21] == 1)
      {
        v20 |= 1 << v21;
        *(a2 + 8) = v20;
      }

      if (*(v7 + v21) == 1)
      {
        v19 |= 1 << v21;
        *(a2 + 24) = v19;
      }

      if (*(v22 + v21) == 1)
      {
        v18 |= 1 << v21;
        *(a2 + 32) = v18;
      }

      if (*(v6 + v21) == 1)
      {
        v17 |= 1 << v21;
        *(a2 + 16) = v17;
      }

      if (*(v23 + v21) == 1)
      {
        v16 |= 1 << v21;
        *(a2 + 40) = v16;
      }

      if (*(v24 + v21) == 1)
      {
        v15 |= 1 << v21;
        *(a2 + 48) = v15;
      }

      ++v21;
    }

    while (v8 != v21);
    if (v20 || v19 || v17 || v15 || v16)
    {
      *a2 = 1;
    }

    return;
  }

  if (v3[17] == 1)
  {
    v12 = 0;
    v13 = v4 + 8783;
    while (1)
    {
      v14 = *(v13 + v12);
      if (v14 >= 3)
      {
        break;
      }

      v27[v12] = 0;
      *(v26 + v12) = 0x10100u >> (8 * (v14 & 0x1F));
      *(v25 + v12++) = 0;
      if (v12 == 39)
      {
        v2 += 2192;
        v7 = v25;
        v6 = v26;
        v5 = v27;
        v8 = 39;
        v9 = 792;
        v10 = 512;
        goto LABEL_24;
      }
    }

    EvCrt_Illegal_switch_default("API_Get_Dbg_Constell_Orb_Data", 3014);
  }
}

uint64_t API_Get_UTC_Cor(char a1, double *a2)
{
  v3 = *(p_api + 48);
  v4 = *(p_api + 56);
  v5 = *(v4 + 8972);
  if ((v5 - 1) > 5)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    v6 = *(v4 + 8986);
    if (v6 >= 18)
    {
LABEL_4:
      if (*(v3 + 80) == 1 && (v7 = *(v3 + 82), v7 >= 1))
      {
        UTC_Leap_Second_For_GLON_Day_4yrBlk = Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(v7, *(v3 + 84), *(v3 + 88));
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
        if (*(v3 + 16) == 1 && (v10 = *(v3 + 32), v10 >= 1025))
        {
          v11 = v10;
          v12 = &byte_299053DC2;
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

      v28 = *(v4 + 8986);
      if (v28 != v6)
      {
        EvLog_v("API_Get_UTC_Cor:  Default %d sec GPS-UTC Correction updated from %d sec", v6, v28);
        *(v4 + 8986) = v6;
        *(v4 + 8989) = v6;
        v4 = *(p_api + 56);
      }

      *(v4 + 8972) = 1;
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
  if (*(v3 + 16) != 1 || v14 >= 3)
  {
    LOBYTE(v6) = *(v4 + 8986);
    goto LABEL_24;
  }

  v16 = (*(v3 + 40) - *(v3 + 48) + 0.0005);
  v17 = *(v3 + 32);
  v18 = *(v4 + 8987);
  v19 = v17 - 127;
  v20 = v18 | 0x400;
  if (v17 - 127 > (v18 | 0x400))
  {
    v20 = v17 - 127;
  }

  v21 = (v20 - v18 - 769) & 0x1FFFF00 | v18;
  v22 = v16 + 604800 * v17;
  if (*(v4 + 8989) >= *(v4 + 8986))
  {
    v23 = *(v4 + 8986);
  }

  else
  {
    v23 = *(v4 + 8989);
  }

  if (86400 * *(v4 + 8988) - v22 + v23 + 604800 * v21 + 619315200 <= 0)
  {
    v24 = *(v4 + 8989);
  }

  else
  {
    v24 = *(v4 + 8986);
  }

  v25 = v24;
  *a2 = v25;
  if ((a1 & 1) == 0)
  {
    v26 = *(v4 + 8985);
    if (v19 <= (v26 | 0x400))
    {
      v19 = v26 | 0x400;
    }

    v27 = v25 + *(v4 + 8980) * 9.31322575e-10 + *(v4 + 8976) * 8.8817842e-16 * (v22 - (*(v4 + 8984) << 12) - 604800 * ((v19 - v26 - 769) & 0x1FFFF00 | v26) - 619315200);
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
  if (*(v4 + 16) == 1 && *v4 >= 1 && (*(*(v3 + 56) + 8972) - 4) <= 2)
  {
    v6 = (v5 + 0x2000);
    v7 = v6[797];
    v8 = v6[794];
    if (v7 != v8)
    {
      v11 = result;
      v12 = *(v4 + 40);
      v13 = *(v4 + 48);
      v14 = *(v4 + 32);
      v15 = v6[795];
      v16 = v6[796];
      result = Is_Future_Leap_Sec_Date_Not_Valid(v14, 1, v15, v6[796]);
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
  v394 = *MEMORY[0x29EDCA608];
  v5 = &unk_2A13EC000;
  v6 = p_api;
  v7 = *(p_api + 80);
  v360 = *(p_api + 72);
  v357 = *(p_api + 96);
  v8 = *(p_api + 256);
  v9 = *(p_api + 176);
  v10 = *(p_api + 136);
  v11 = *(p_api + 56);
  v260 = *(p_api + 48);
  v12 = *(p_api + 120);
  bzero(v1, 0x18E0uLL);
  bzero(v3, 0x878uLL);
  if (*(*(v6 + 80) + 360) > 600.0)
  {
    return 0;
  }

  v13 = 0;
  v14 = (v7 + 824);
  v319 = v11 + 25364;
  v322 = v11 + 17132;
  v263 = (v11 + 8986);
  v312 = v12;
  v307 = (v12 + 547);
  v305 = v10 + 183;
  v332 = v10;
  v303 = (v10 + 27136);
  v301 = v8 + 3;
  v299 = v8 + 456;
  v297 = v8 + 448;
  v295 = v8 + 432;
  v316 = v8;
  v293 = v8 + 488;
  v324 = v11;
  v15 = v11 + 17328;
  v352 = v357 + 99;
  v16 = (v357 + 96);
  v350 = v357 + 1760;
  v348 = v357 + 1888;
  v346 = v357 + 2016;
  v290 = vdupq_n_s64(0x3E2CA726EB25F9DBuLL);
  v344 = v357 + 2144;
  v342 = v357 + 864;
  v336 = v9 + 204;
  v267 = v9 + 205;
  v265 = v9 + 206;
  v262 = (v11 + 50584);
  v358 = v360 + 824;
  v356 = v7 + 1000;
  v354 = v7 + 1640;
  v340 = v7 + 2536;
  v17 = *(v7 + 32);
  v258 = (v11 + 50592);
  v338 = v11 + 47500;
  v256 = (v11 + 50600);
  v269 = (v7 + 824);
  v314 = v9;
  v318 = v4;
  v321 = v7;
  v339 = v16;
  v310 = v9 + 7493;
  while (2)
  {
    v18 = *(v7 + 36);
    *(v4 + 1) = v18;
    v3[1] = v18;
    v19 = *(v7 + 40);
    *(v4 + 1) = v19;
    *(v3 + 1) = v19;
    v20 = *(v7 + 56);
    v4[16] = v20 > 0;
    if (v20 < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v7 + 60);
    }

    v4[17] = v21 & 1;
    *(v4 + 16) = *(v7 + 62);
    v22 = *(v7 + 48);
    *(v4 + 5) = v22;
    *(v4 + 6) = v22;
    *(v4 + 7) = *(v7 + 152);
    *(v4 + 8) = *(v7 + 184);
    *(v4 + 13) = *(v7 + 224) * 57.2957795;
    *(v4 + 14) = *(v7 + 232) * 57.2957795;
    v23 = *(v7 + 240);
    *(v4 + 15) = v23;
    *(v4 + 16) = v23 - *(v7 + 248);
    *(v4 + 10) = *(v7 + 80);
    *(v4 + 11) = *(v7 + 88);
    *(v4 + 12) = *(v7 + 96);
    *(v4 + 136) = v14[10];
    *(v4 + 19) = -*(v7 + 968);
    v24 = *(v7 + 872);
    if (v24 >= 9499050.0)
    {
      v25 = g_TOW_stat_Sigma_Table[v20];
    }

    else
    {
      v25 = v24 * 0.00000000333564095;
    }

    v330 = v13;
    v335 = v17;
    *(v4 + 20) = v25;
    v26.f64[0] = *(v7 + 864);
    v26.f64[1] = *(v7 + 920);
    *(v4 + 168) = vmulq_f64(v26, v290);
    *(v4 + 184) = *v14;
    *(v4 + 25) = *(v7 + 848);
    *(v4 + 13) = *(v7 + 928);
    *(v4 + 28) = *(v7 + 944);
    *(v4 + 232) = v14[4];
    v26.f64[0] = *(v7 + 912);
    *(v4 + 31) = *&v26.f64[0];
    *(v4 + 32) = *(v7 + 3824);
    if (v26.f64[0] > 360.0)
    {
      *(v4 + 31) = 0x408F380000000000;
    }

    *(v4 + 33) = *(v7 + 808);
    *(v4 + 17) = *(v7 + 784);
    *(v4 + 36) = *(v7 + 800);
    v27 = v5[103];
    v28 = v27[10];
    v29 = v27[12];
    v30 = v27[6];
    v31 = v27[7];
    v32 = v27[22];
    if (*(v30 + 16) == 1)
    {
      v33 = v27[9];
      v34 = *(v30 + 32);
      v35 = v34 < *(v33 + 1736);
      if (*v30 >= 9 && *(v33 + 1752) > *(v30 + 40) + 604800 * v34)
      {
        v35 |= 2u;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v32 + 40);
    if (v36 > 100.0 && *(v32 + 20) > 8)
    {
      v35 |= 4u;
    }

    v329 = v30;
    if (v36 < -100.0 && *(v32 + 20) > 8)
    {
      v35 |= 8u;
    }

    v327 = v35;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = (v29 + 2656);
    v41 = v40;
    do
    {
      if (*&v40[2 * v37 - 704] >= 10 && *(v41 - 128) >= 0xC8u)
      {
        v42 = *(v40 + v37 - 896);
        v43 = *(v40 + v37 - 640);
        v44 = v42 <= 0x2C ? v38 : v38 + 1;
        v45 = v43 - v42;
        v46 = v43 <= 0x2C && v45 <= 5;
        v47 = v46 ? v39 : v39 + 1;
        if (*v41 >= 0xC8u)
        {
          v39 = v47;
          v38 = v44;
        }
      }

      ++v37;
      ++v41;
    }

    while (v37 != 128);
    v48 = 0;
    v49 = 0;
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v51 = veorq_s8(*(v31 + 8994), v50);
    v52 = veorq_s8(*(v31 + 9010), v50);
    v53 = vaddl_high_u8(v51, v52);
    v54 = vaddl_u8(*v51.i8, *v52.i8);
    v325 = vaddvq_s32(vaddq_s32(vaddl_u16(*v54.i8, *v53.i8), vaddl_high_u16(v54, v53)));
    do
    {
      v49 += *(v31 + 61952 + v48++);
    }

    while (v48 != 218);
    v55 = 0;
    v56 = 0;
    v57 = v28 + 1000;
    do
    {
      v58 = *(v57 + v55);
      if (!Is_Legal(v58))
      {
        goto LABEL_62;
      }

      if (v58 > 3u)
      {
        switch(v58)
        {
          case 4u:
            v62 = BYTE2(v58) - 1;
            if (*(*(v31 + 25456) + v62) != 1)
            {
              break;
            }

            v60 = Is_BDS_IntEph_Real(v31 + 25512 + 152 * v62);
            goto LABEL_61;
          case 5u:
            v63 = BYTE2(v58) - 193;
            if (*(*(v31 + 9096) + v63) != 1)
            {
              break;
            }

            v64 = v31 + 9152;
LABEL_60:
            v60 = Is_GPS_BinEph_Real(v64 + 116 * v63);
LABEL_61:
            v56 += !v60;
            break;
          case 6u:
            v61 = BYTE2(v58) - 1;
            if (*(*(v31 + 47640) + v61) == 1)
            {
              v60 = Is_NVIC_IntEph_Real(v31 + 47696 + 76 * v61);
              goto LABEL_61;
            }

            break;
        }
      }

      else
      {
        if (!v58)
        {
          EvCrt_Illegal_switch_case("API_Get_Spoofing_Flags", 2379);
          goto LABEL_62;
        }

        if (v58 == 1)
        {
          v63 = BYTE2(v58) - 1;
          if (*(*(v31 + 64) + v63) != 1)
          {
            goto LABEL_62;
          }

          v64 = v31 + 120;
          goto LABEL_60;
        }

        if (v58 == 3)
        {
          v59 = BYTE2(v58) - 1;
          if (*(*(v31 + 17616) + v59) == 1)
          {
            v60 = Is_GAL_IntEph_Real(v31 + 17708 + 88 * v59);
            goto LABEL_61;
          }
        }
      }

LABEL_62:
      v55 += 4;
    }

    while (v55 != 512);
    v65 = v327 | 0x10;
    if (v38 <= 2)
    {
      v65 = v327;
    }

    if (v39 > 2)
    {
      v65 |= 0x20u;
    }

    if (v325 > 2)
    {
      v65 |= 0x100u;
    }

    if (v49 > 2)
    {
      v65 |= 0x200u;
    }

    if (v56 > 2)
    {
      v65 |= 0x400u;
    }

    if (*(v31 + 8992))
    {
      v65 |= 0x1000u;
    }

    if (*(v31 + 8993))
    {
      v65 |= 0x2000u;
    }

    if (*(v329 + 104))
    {
      v65 |= 0x10000u;
    }

    if (*(v329 + 105))
    {
      v65 |= 0x20000u;
    }

    v4 = v318;
    *(v318 + 74) = v65;
    *(v318 + 75) = *(v360 + 1788);
    *(v318 + 76) = *(v360 + 48);
    v66 = *(p_api + 80);
    v67 = *(v66 + 4);
    if (v67)
    {
      v7 = v321;
      v68 = v339;
      if (v67 == 4)
      {
        v69 = *(v66 + 17) == 0;
        v70 = 2;
        goto LABEL_86;
      }

      if (v67 == 5)
      {
        v69 = *(v66 + 17) == 0;
        v70 = 4;
LABEL_86:
        if (!v69)
        {
          ++v70;
        }
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 0;
      v7 = v321;
      v68 = v339;
    }

    *(v318 + 77) = v70;
    v367[0] = 0;
    Num_SV_and_Clock_Unknowns = API_Get_Num_SV_and_Clock_Unknowns(v367);
    v72 = Num_SV_and_Clock_Unknowns - v367[0];
    if (*(v66 + 56) >= 6)
    {
      if (v72 >= 3)
      {
        if (*(v66 + 800) < 10.0)
        {
          v76 = 4;
          goto LABEL_112;
        }
      }

      else if (v72 != 2)
      {
        if (v72 < 1)
        {
          goto LABEL_111;
        }

LABEL_107:
        if (!v67)
        {
          goto LABEL_111;
        }

        v75 = *(v66 + 808);
        v74 = 10.0;
LABEL_109:
        if (v75 >= v74)
        {
          goto LABEL_111;
        }

        v76 = 2;
        goto LABEL_112;
      }

      if (*(v66 + 784) >= 10.0)
      {
        goto LABEL_107;
      }

      v76 = 3;
      goto LABEL_112;
    }

    if (v67)
    {
      v73 = v72 < 3;
    }

    else
    {
      v73 = 1;
    }

    if (!v73)
    {
      v74 = 10.0;
      if (*(v66 + 808) < 10.0 && *(v66 + 784) < 10.0)
      {
        v75 = *(v66 + 800);
        goto LABEL_109;
      }
    }

LABEL_111:
    v76 = Num_SV_and_Clock_Unknowns > 0;
LABEL_112:
    *(v318 + 78) = v76;
    *(v318 + 79) = API_Get_Fix_Reliability();
    v77 = p_api;
    v78 = *(p_api + 80);
    if (*(v78 + 18) == 1)
    {
      v79 = *(v78 + 12);
      if (v79)
      {
        if (*(v78 + 840) > 30000.0)
        {
          goto LABEL_115;
        }

        if (*(v78 + 500) == 1 && (*(v78 + 516) & 1) != 0)
        {
          v79 = 3;
        }

        else if (*(v78 + 16))
        {
          v79 = 2;
        }

        else
        {
          v79 = 1;
        }
      }
    }

    else
    {
LABEL_115:
      v79 = 0;
    }

    *(v318 + 80) = v79;
    v80 = *(v77 + 48);
    v81 = 2 * (*(v78 + 4) != 0);
    if (*v80 <= 8)
    {
      v82 = v80[25];
      if (v82)
      {
        if (((*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v82) < 300000)
        {
          v81 |= 4u;
        }
      }
    }

    if (*(v78 + 432) == 1)
    {
      v83 = v81 | 8;
    }

    else
    {
      v83 = v81;
    }

    if (*(v78 + 420) == 1)
    {
      v83 |= 0x10u;
    }

    if (*(v78 + 416) == 1)
    {
      v83 |= 0x20u;
    }

    if (*(v78 + 440) == 1)
    {
      v84 = v83 | 0x40;
      v83 |= 0x80u;
      if (*(v78 + 444) != 1)
      {
        v83 = v84;
      }
    }

    if (*(v78 + 548))
    {
      v83 |= 0x100u;
    }

    if (*(v78 + 564))
    {
      v83 |= 0x200u;
    }

    if (*(v78 + 580))
    {
      v83 |= 0x400u;
    }

    if (*(v78 + 596))
    {
      v83 |= 0x800u;
    }

    if (*(v78 + 692))
    {
      v83 |= 0x1000u;
    }

    if (*(v78 + 628))
    {
      v83 |= 0x2000u;
    }

    if (*(v78 + 612))
    {
      v83 |= 0x4000u;
    }

    if (*(v78 + 756))
    {
      v83 |= 0x8000u;
    }

    if (*(v78 + 708))
    {
      v83 |= 0x10000u;
    }

    if (*(v78 + 724))
    {
      v83 |= 0x20000u;
    }

    if (*(v78 + 740))
    {
      v83 |= 0x40000u;
    }

    if (*(v78 + 532))
    {
      v83 |= 0x1000000u;
    }

    if (*(v78 + 516))
    {
      v83 |= 0x2000000u;
    }

    if (*(v78 + 500))
    {
      v83 |= 0x4000000u;
    }

    if (*(v78 + 676))
    {
      v83 |= 0x80000u;
    }

    v85 = *(p_api + 72);
    v86 = *(p_api + 32);
    v87 = 218;
    while ((*(v85 + 265) & 1) == 0 && *(v85 + 544) != 1 || *v86 <= 0)
    {
      ++v86;
      ++v85;
      if (!--v87)
      {
        goto LABEL_167;
      }
    }

    v83 |= 0x10000000u;
LABEL_167:
    v88 = 0;
    while (*(*(p_api + 56) + 61516 + v88) != 1)
    {
      if (++v88 == 218)
      {
        goto LABEL_172;
      }
    }

    v83 |= 0x20000000u;
LABEL_172:
    if (v83 <= 1)
    {
      v83 = 1;
    }

    *(v318 + 82) = v83;
    if (*(v7 + 19) < 2u)
    {
      if (!*(v7 + 19))
      {
        goto LABEL_183;
      }

      v89 = *(v7 + 20);
LABEL_179:
      if (v89 > 1)
      {
        v90 = 3;
        goto LABEL_184;
      }

      if (v89)
      {
        v90 = 2;
        goto LABEL_184;
      }

LABEL_183:
      v90 = 1;
      goto LABEL_184;
    }

    v89 = *(v7 + 20);
    if (v89 <= 2)
    {
      goto LABEL_179;
    }

    v90 = 4;
LABEL_184:
    *(v318 + 81) = v90;
    v318[332] = 2;
    if (sqrt(*(v318 + 27) * *(v318 + 27) + *(v318 + 26) * *(v318 + 26)) < 400.0)
    {
      v91 = *(v318 + 78);
      if (v91 | v83 & 2)
      {
        v92 = *(v318 + 79);
        if (v92)
        {
          if ((v91 - 5) >= 0xFFFFFFFE && (v92 - 5) >= 0xFFFFFFFD)
          {
            v318[333] = 1;
            goto LABEL_190;
          }

          if ((v91 - 2) < 3 || (v83 & 2) != 0)
          {
LABEL_190:
            v318[334] = 1;
          }
        }
      }
    }

    v93 = *(v360 + 1780);
    if (v93)
    {
LABEL_200:
      *(v318 + 84) = v93 - *(v360 + 1772);
      v94 = *(v360 + 1784);
      if (v94)
      {
        *(v318 + 85) = v93 - v94;
      }
    }

    else if (v318[333])
    {
      *(v360 + 1780) = v335;
      v93 = v335;
      if (v335)
      {
        goto LABEL_200;
      }
    }

    else
    {
      v318[334] = 0;
      *(v318 + 77) = 0;
    }

    *(v3 + 81) = v312[69].i16[0];
    *(v3 + 21) = vuzp1_s16(v312[67], vrev32_s16(v312[67]));
    v3[23] = *v307;
    *(v3 + 96) = v312[68].i8[7];
    *(v3 + 97) = *(v360 + 242);
    *(v3 + 99) = v312[68].i8[1];
    *(v3 + 100) = v312[54].i8[0];
    *(v3 + 51) = v312[54].i32[1];
    *(v3 + 104) = v312[57].i8[0];
    *(v3 + 106) = 0;
    *(v3 + 113) = 0;
    *(v3 + 15) = *(v360 + 88);
    *(v3 + 16) = *(v360 + 168);
    *(v3 + 17) = *(v360 + 224);
    *(v3 + 18) = *(v360 + 200);
    *(v3 + 19) = 0;
    API_Get_Dbg_Constell_ME_Data(1, (v3 + 40));
    API_Get_Dbg_Constell_ME_Data(5, (v3 + 50));
    API_Get_Dbg_Constell_ME_Data(2, (v3 + 60));
    API_Get_Dbg_Constell_ME_Data(3, (v3 + 70));
    API_Get_Dbg_Constell_ME_Data(4, (v3 + 80));
    API_Get_Dbg_Constell_ME_Data(6, (v3 + 90));
    API_Get_Dbg_Constell_ME_Data(7, (v3 + 100));
    v95 = v360;
    v96 = *(v360 + 1740);
    if (v96 < 1)
    {
      v100 = 0;
      v98 = v305;
    }

    else
    {
      v97 = *(p_api + 48);
      v98 = v305;
      if (*(v97 + 16) == 1 && *v97 >= 3)
      {
        v99 = *(v97 + 40) + 604800 * *(v97 + 32);
      }

      else
      {
        v99 = 0;
      }

      v95 = v360;
      v100 = (v99 - v96) / 3600;
    }

    v3[110] = v100;
    v101 = *(v95 + 1744);
    if (v101 < 1)
    {
      *(v3 + 222) = 0;
      v102 = p_api;
    }

    else
    {
      v102 = p_api;
      v103 = *(p_api + 48);
      if (*(v103 + 16) == 1 && *v103 >= 3)
      {
        v104 = *(v103 + 40) + 604800 * *(v103 + 32);
      }

      else
      {
        LOBYTE(v104) = 0;
      }

      *(v3 + 222) = ((v104 - v101) / 16);
    }

    v105 = 0;
    v106 = *(v102 + 64) + 448;
    v107 = 0uLL;
    do
    {
      v107 = vsubq_s8(v107, vtstq_s8(*(v106 + v105), *(v106 + v105)));
      v105 += 16;
    }

    while (v105 != 128);
    *(v3 + 446) = vaddvq_s8(v107);
    if (*(v332 + 136) == 1)
    {
      v108 = *(v332 + 140);
    }

    else
    {
      v108 = 0;
    }

    v109 = 0;
    v3[112] = v108;
    do
    {
      *(v3 + v109 + 452) = *(v98 + v109);
      ++v109;
    }

    while (v109 != 6);
    *(v3 + 458) = *(v314 + 79672);
    v107.i32[0] = *v303;
    *(v3 + 58) = v107.u64[0] * 0.001;
    *(v3 + 59) = *(v7 + 3816);
    *(v3 + 60) = *(v7 + 3840);
    *(v3 + 61) = *(v7 + 3864);
    *(v3 + 496) = *(v7 + 18);
    *(v3 + 497) = *(v332 + 240);
    API_Get_Dbg_Constell_PE_Data(1);
    API_Get_Dbg_Constell_PE_Data(5);
    API_Get_Dbg_Constell_PE_Data(2);
    API_Get_Dbg_Constell_PE_Data(3);
    API_Get_Dbg_Constell_PE_Data(4);
    API_Get_Dbg_Constell_PE_Data(6);
    API_Get_Dbg_Constell_PE_Data(7);
    API_Get_Dbg_Constell_Orb_Data(1, (v3 + 308));
    API_Get_Dbg_Constell_Orb_Data(5, (v3 + 322));
    API_Get_Dbg_Constell_Orb_Data(2, (v3 + 336));
    API_Get_Dbg_Constell_Orb_Data(3, (v3 + 350));
    API_Get_Dbg_Constell_Orb_Data(4, (v3 + 364));
    API_Get_Dbg_Constell_Orb_Data(6, (v3 + 378));
    API_Get_Dbg_Constell_Orb_Data(7, (v3 + 392));
    *(v3 + 16) = *(v7 + 556);
    *(v3 + 17) = *(v7 + 564);
    *(v3 + 18) = *(v7 + 560) != 0;
    v3[5] = *(v7 + 568);
    *(v3 + 24) = *(v310 + 3);
    *(v3 + 25) = *(v310 + 5);
    *(v3 + 26) = *(v7 + 540);
    *(v3 + 27) = *(v7 + 548);
    *(v3 + 28) = *(v7 + 544) != 0;
    v3[8] = *(v7 + 552);
    *(v3 + 36) = *v310;
    *(v3 + 37) = *(v310 + 2);
    *(v3 + 38) = *(v7 + 572);
    *(v3 + 39) = *(v7 + 580);
    *(v3 + 40) = *(v7 + 576) != 0;
    v3[11] = *(v7 + 584);
    *(v3 + 48) = *(v310 + 6);
    *(v3 + 49) = *(v310 + 8);
    *(v3 + 50) = *(v7 + 620);
    *(v3 + 51) = *(v7 + 628);
    *(v3 + 52) = *(v7 + 624) != 0;
    v3[14] = *(v7 + 632);
    memset(v367, 0, sizeof(v367));
    Core_Get_ExtA_Alt(6000, v367);
    *(v3 + 4) = *&v367[2];
    *(v3 + 80) = v367[6];
    *(v3 + 1176) = *(v7 + 604);
    *(v3 + 1177) = *(v7 + 612);
    *(v3 + 1178) = *(v7 + 608) != 0;
    v3[295] = *(v7 + 616);
    *(v3 + 1184) = *(v310 + 1088);
    *(v3 + 149) = -(*(v7 + 224) - v310[133] * 0.0174532925) * 6378137.0;
    *(v3 + 150) = *(v7 + 328) * (-(*(v7 + 232) - v310[134] * 0.0174532925) * 6378137.0);
    v110 = v310[137];
    v111 = v110 - *(v7 + 376);
    *(v3 + 151) = v111;
    v112 = -360.0;
    if (v111 >= 180.0 || (v112 = 360.0, v111 < -180.0))
    {
      *(v3 + 151) = v111 + v112;
      v110 = v310[137];
    }

    if (v110 <= 0.0)
    {
      v113 = -0.5;
    }

    else
    {
      v113 = 0.5;
    }

    v114 = v110 + v113;
    if (v114 <= 2147483650.0)
    {
      if (v114 >= -2147483650.0)
      {
        v115 = v114;
      }

      else
      {
        LOWORD(v115) = 0;
      }
    }

    else
    {
      LOWORD(v115) = -1;
    }

    *(v3 + 608) = v115;
    v116 = v310[138];
    if (v116 <= 0.0)
    {
      v117 = -0.5;
    }

    else
    {
      v117 = 0.5;
    }

    v118 = v116 + v117;
    if (v118 <= 2147483650.0)
    {
      if (v118 >= -2147483650.0)
      {
        v119 = v118;
      }

      else
      {
        LOWORD(v119) = 0;
      }
    }

    else
    {
      LOWORD(v119) = -1;
    }

    *(v3 + 609) = v119;
    v120 = v310[139];
    if (v120 <= 0.0)
    {
      v121 = -0.5;
    }

    else
    {
      v121 = 0.5;
    }

    v122 = v120 + v121;
    if (v122 <= 2147483650.0)
    {
      if (v122 >= -2147483650.0)
      {
        v123 = v122;
      }

      else
      {
        LOBYTE(v123) = 0;
      }
    }

    else
    {
      LOBYTE(v123) = -1;
    }

    *(v3 + 1220) = v123;
    *(v3 + 1221) = *(v310 + 280);
    *(v3 + 1225) = *(v310 + 1124);
    v366 = 0;
    memset(v367, 0, 24);
    memset(v379, 0, 24);
    *v362 = 0;
    v365 = 0;
    v364 = 0;
    Pos_LLH = Core_Get_Pos_LLH(*v314, 150000, 0, &v366, v367, v379, v362, v3 + 1634, &v365, &v364 + 1, &v364);
    *(v3 + 1624) = Pos_LLH;
    if (Pos_LLH)
    {
      v3[407] = *(v7 + 436);
      *(v3 + 1632) = BYTE4(v364);
      *(v3 + 1633) = v364;
      v125 = *(v7 + 440);
      v126 = v125 == 1 ? *(v7 + 644) : 0;
      *(v3 + 1625) = v126 & 1;
      *(v3 + 1626) = v125 == 1;
      *(v3 + 1627) = *(v7 + 640) != 0;
      v127 = *&v367[2];
      *(v3 + 205) = (*v367 - *(v7 + 224)) * 6378137.0;
      *(v3 + 206) = *(v7 + 328) * ((v127 - *(v7 + 232)) * 6378137.0);
      *(v3 + 208) = vmovn_s64(vcvtq_u64_f64(vsqrtq_f64(v379[0])));
      *(v3 + 1672) = (v379[1].f64[0] * 57.2957795);
      if (*(v3 + 1634) == 1)
      {
        *(v3 + 207) = *&v367[4];
        *(v3 + 837) = sqrt(*v362);
      }
    }

    *(v3 + 1676) = *(v7 + 684);
    *(v3 + 1677) = *(v7 + 692);
    *(v3 + 1678) = *(v7 + 688) != 0;
    *(v3 + 1679) = 0;
    if (*(p_NA + 381) == 1)
    {
      v128 = *(p_NA + 26780);
      *(v3 + 1676) = 1;
      *(v3 + 1679) = v128;
    }

    *(v3 + 1680) = *(v7 + 748);
    *(v3 + 1681) = *(v7 + 756);
    *(v3 + 1682) = *(v7 + 752) != 0;
    v3[421] = *(v7 + 760);
    *(v3 + 212) = v310[183];
    memset(v367, 0, 24);
    if (Core_Get_ExtA_AT_Vel(120000, v367))
    {
      *(v3 + 1704) = *(v7 + 700);
      *(v3 + 1705) = *(v7 + 708);
      *(v3 + 1706) = *(v7 + 704) != 0;
      *(v3 + 107) = *&v367[2];
    }

    memset(v379, 0, 24);
    if (Core_Get_ExtA_Heading(120000, v379))
    {
      *(v3 + 1728) = *(v7 + 732);
      *(v3 + 1729) = *(v7 + 740);
      *(v3 + 1730) = *(v7 + 736) != 0;
      *(v3 + 434) = *(v379 + 8);
    }

    v363 = 0uLL;
    *v362 = 0;
    if (Core_Get_ExtA_V_Vel(120000, v362))
    {
      *(v3 + 1752) = *(v7 + 716);
      *(v3 + 1753) = *(v7 + 724);
      *(v3 + 1754) = *(v7 + 720) != 0;
      *(v3 + 110) = v363;
    }

    v129 = 0;
    v130 = *(v7 + 36);
    v3[444] = v130;
    v3[445] = *(v7 + 32);
    *(v3 + 223) = *(v7 + 40);
    *(v3 + 1792) = 0;
    v131 = 1;
    do
    {
      v132 = v131;
      if (*(v301 + v129) == 1 && *(v299 + 8 * v129) > 0.0)
      {
        *(v3 + 1792) = 1;
        *(v3 + 897) = *(v297 + 2 * v129);
        *(v3 + 225) = *(v295 + 8 * v129);
        *(v3 + 226) = *(v299 + 8 * v129);
        v3[454] = v130 - *(v293 + 4 * v129);
      }

      v131 = 0;
      v129 = 1;
    }

    while ((v132 & 1) != 0);
    *(v3 + 1820) = *(v316 + 6);
    v133 = *(v316 + 504) * 1000000000.0;
    if (v133 <= 0.0)
    {
      v134 = -0.5;
    }

    else
    {
      v134 = 0.5;
    }

    v135 = v133 + v134;
    v136 = v135;
    if (v135 < -2147483650.0)
    {
      v136 = 0x80000000;
    }

    if (v135 > 2147483650.0)
    {
      v136 = 0x7FFFFFFF;
    }

    v3[456] = v136;
    v3[457] = (sqrt(*(v316 + 512)) * 1000000000.0);
    *(v3 + 1832) = *(v314 + 24);
    *(v3 + 1833) = *(v7 + 56);
    *(v3 + 230) = *(v7 + 48);
    *(v3 + 924) = *(v7 + 62);
    *(v3 + 1850) = *(v7 + 204);
    *(v3 + 232) = *(v7 + 216);
    HIDWORD(v137) = *(v7 + 210);
    LODWORD(v137) = HIDWORD(v137);
    v3[466] = v137 >> 16;
    *(v3 + 1868) = 0;
    if ((*(v7 + 60) & 1) != 0 && (*(v324 + 8972) - 4) <= 2)
    {
      v138 = *(*(p_api + 56) + 8984);
      v139 = *(*(p_api + 56) + 8985);
      v140 = *(*(p_api + 56) + 8987);
      v141 = *(*(p_api + 56) + 8988);
      *(v3 + 1868) = 1;
      v142 = v139 | 0x400;
      v143 = *(v260 + 32) - 127;
      do
      {
        v144 = v142;
        v142 += 256;
      }

      while (v143 > v144);
      *(v3 + 936) = v144;
      *(v3 + 1870) = (795365 * (v138 << 12)) >> 36;
      *(v3 + 1869) = *v263;
      v145 = v140 | 0x400;
      do
      {
        v146 = v145;
        v145 += 256;
      }

      while (v143 > v146);
      *(v3 + 938) = v146;
      *(v3 + 1875) = v141;
      *(v3 + 1874) = v263[3];
    }

    v3[470] = 0;
    if (*(v322 + 60) == 1)
    {
      v3[470] = (vcvtd_n_f64_s32(*v322, 0x1EuLL) * 1.0e12);
    }

    v3[471] = 0;
    *v367 = 0;
    if (!R8_EQ(v336, v367))
    {
      v379[0].f64[0] = 0.0;
      if (!R8_EQ(v267, v379[0].f64))
      {
        v147 = *v267 - *v336;
        v148 = 0.000999999999;
        if (v147 <= 0.000999999999)
        {
          v148 = *v267 - *v336;
          if (v147 < -0.000999999999)
          {
            v148 = -0.000999999999;
          }
        }

        v3[471] = (v148 * 1.0e12);
      }
    }

    v3[472] = 0;
    if ((*v338 - 2) <= 4)
    {
      v3[472] = (*(v338 + 12) * -1000000000.0 * 1000.0);
    }

    v3[473] = 0;
    *v367 = 0;
    if (R8_EQ(v336, v367))
    {
      v149 = v360;
    }

    else
    {
      v379[0].f64[0] = 0.0;
      v150 = R8_EQ(v265, v379[0].f64);
      v149 = v360;
      if (!v150)
      {
        v151 = *v265 - *v336;
        v152 = 0.000999999999;
        if (v151 <= 0.000999999999)
        {
          v152 = *v265 - *v336;
          if (v151 < -0.000999999999)
          {
            v152 = -0.000999999999;
          }
        }

        v3[473] = (v152 * 1.0e12);
      }
    }

    v3[474] = 0;
    if ((*v319 - 2) <= 4)
    {
      v153 = *(v324 + 25368);
      if (v318[17] == 1 && v318[16] == 1)
      {
        if (*(v319 + 24) - *(v318 + 16) >= 0)
        {
          v154 = -((*(v319 + 24) - *(v318 + 16)) & 0x3F);
        }

        else
        {
          v154 = (*(v318 + 16) - *(v319 + 24)) & 0x3F;
        }

        if (v154 > 31)
        {
          v154 -= 64;
        }

        v149 = v360;
        v153 = v153 + *(v324 + 25376) * (*(v318 + 5) - *(v319 + 20) + 604800 * v154);
      }

      v3[474] = (v153 * -1.0e12);
    }

    v3[475] = 0;
    if ((*(v338 + 3080) - 2) <= 4)
    {
      v155 = *v262;
      if (v318[17] == 1 && v318[16] == 1)
      {
        if (*(v338 + 3112) - *(v318 + 16) >= 0)
        {
          v156 = -((*(v338 + 3112) - *(v318 + 16)) & 0x3FF);
        }

        else
        {
          v156 = (*(v318 + 16) - *(v338 + 3112)) & 0x3FF;
        }

        if (v156 > 511)
        {
          v156 -= 1024;
        }

        if (v156 < -512)
        {
          v156 += 1024;
        }

        v149 = v360;
        v157 = *(v318 + 5) - *(v338 + 3108) + (604800 * v156);
        v155 = v155 + *v258 * v157 + *v256 * (v157 * v157);
      }

      v3[475] = (v155 * -1.0e12);
    }

    *(v3 + 952) = *(v149 + 2044);
    *(v3 + 478) = *(v149 + 80);
    *(v3 + 482) = *(v149 + 96);
    *(v3 + 486) = *(v149 + 112);
    *(v3 + 490) = *(v149 + 128);
    *(v3 + 494) = *(v149 + 144);
    *(v3 + 498) = *(v149 + 160);
    *(v3 + 502) = *(v149 + 176);
    *(v3 + 506) = *(v149 + 224);
    *(v3 + 1020) = *(v149 + 240);
    *(v3 + 128) = *(v149 + 192);
    *(v3 + 129) = *(v149 + 208);
    v158 = *(p_api + 216);
    *(v3 + 1040) = *(v158 + 8);
    *(v3 + 2082) = *(v158 + 10);
    *(v3 + 2083) = *(v158 + 11);
    *(v3 + 2084) = *(v158 + 12);
    *(v3 + 2085) = *(v158 + 13);
    *(v3 + 1043) = *(v158 + 14);
    *(v3 + 2088) = *(v158 + 16);
    *(v3 + 2089) = *(v158 + 20);
    *(v3 + 2094) = 862912514;
    strcpy(v3 + 2098, "250711");
    *(v3 + 527) = vrev64_s32(vsub_s32(*(v7 + 32), *(v360 + 1772)));
    *(v3 + 2116) = *(v149 + 12);
    *(v3 + 2117) = *(v149 + 45);
    v159 = *(v149 + 14);
    *(v3 + 2118) = v159;
    if (*(v149 + 17) == 1)
    {
      v159 |= 2u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 16) == 1)
    {
      v159 |= 4u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 15) == 1)
    {
      v159 |= 8u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 19) == 1)
    {
      v159 |= 0x10u;
      *(v3 + 2118) = v159;
    }

    if (*(v149 + 18) == 1)
    {
      *(v3 + 2118) = v159 | 0x20;
    }

    v160 = *(v149 + 28);
    *(v3 + 2119) = v160;
    if (*(v149 + 31) == 1)
    {
      v160 |= 2u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 30) == 1)
    {
      v160 |= 4u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 29) == 1)
    {
      v160 |= 8u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 33) == 1)
    {
      v160 |= 0x10u;
      *(v3 + 2119) = v160;
    }

    if (*(v149 + 32) == 1)
    {
      *(v3 + 2119) = v160 | 0x20;
    }

    *(v3 + 2120) = *(v149 + 52);
    v161 = *(v360 + 1792);
    v162 = *(v360 + 1808);
    *(v3 + 538) = *(v360 + 1820);
    *(v3 + 531) = v161;
    *(v3 + 535) = v162;
    memset(v392, 0, sizeof(v392));
    v393 = 0;
    v391 = 0;
    memset(v390, 0, sizeof(v390));
    bzero(v389, 0xDA0uLL);
    bzero(v388, 0xDA0uLL);
    v163 = 0;
    v387 = 0;
    memset(v386, 0, sizeof(v386));
    *(v383 + 6) = 0;
    v383[0] = 0;
    memset(v381, 0, sizeof(v381));
    memset(v382, 0, sizeof(v382));
    v380[0] = 0;
    *(v380 + 6) = 0;
    *&v164 = 0x8181818181818181;
    *(&v164 + 1) = 0x8181818181818181;
    *(v385 + 10) = v164;
    v384[11] = v164;
    v385[0] = v164;
    v384[9] = v164;
    v384[10] = v164;
    v384[7] = v164;
    v384[8] = v164;
    v384[5] = v164;
    v384[6] = v164;
    v384[3] = v164;
    v384[4] = v164;
    v384[1] = v164;
    v384[2] = v164;
    v165 = v392 + 1;
    v384[0] = v164;
    while (2)
    {
      Constell_Prn = Get_Constell_Prn(v163);
      *(v165 - 1) = 3855;
      v167 = (*(v360 + 42) & 1) == 0 && *(v358 + v163) == 0;
      v168 = *(v360 + 43) == 1 && *(v358 + v163 + 280) == 0;
      if (Constell_Prn > 3)
      {
        if (Constell_Prn > 5)
        {
          if (Constell_Prn == 6)
          {
            if ((v168 & *(v360 + 20)) == 1)
            {
              goto LABEL_377;
            }
          }

          else if ((v167 & *(v360 + 17)) == 1)
          {
            *(v165 - 1) = 0;
          }
        }

        else
        {
          if (Constell_Prn != 4)
          {
            v170 = *(v360 + 16);
            goto LABEL_373;
          }

          if (*(v360 + 18) == 1 && Num_Prn_Idx_To_GNSS_Id(v163) - 6 <= 0x34)
          {
            if (v167)
            {
              *(v165 - 1) = 11;
            }

            if (v168)
            {
              v169 = 13;
              goto LABEL_378;
            }
          }
        }
      }

      else if (Constell_Prn > 1)
      {
        if (Constell_Prn == 2)
        {
          if ((v167 & *(v360 + 15)) == 1)
          {
            *(v165 - 1) = 4;
          }
        }

        else if (*(v360 + 19) == 1)
        {
          if (v167)
          {
            *(v165 - 1) = 8;
          }

          if (v168)
          {
            v169 = 9;
LABEL_378:
            *v165 = v169;
          }
        }
      }

      else
      {
        if (!Constell_Prn)
        {
          EvCrt_Illegal_switch_case("API_Get_Nav_Data", 4458);
          goto LABEL_386;
        }

        v170 = *(v360 + 14);
LABEL_373:
        if (v170 == 1)
        {
          if (v167)
          {
            *(v165 - 1) = 0;
          }

          if (v168)
          {
LABEL_377:
            v169 = 3;
            goto LABEL_378;
          }
        }
      }

LABEL_386:
      ++v163;
      v165 += 2;
      if (v163 != 218)
      {
        continue;
      }

      break;
    }

    v171 = 0;
    *(v383 + 6) = 0x404040404040404;
    v383[0] = 0x404040404040404;
    while (2)
    {
      v172 = *(v356 + 4 * v171);
      v173 = HIWORD(v172);
      if ((v172 & 0xFF00FF) == 2)
      {
        v174 = 0;
        while (*(v15 + 4 * v174) != *(v352 + 4 * v171))
        {
          if (++v174 == 24)
          {
            goto LABEL_394;
          }
        }

        LOBYTE(v173) = v174 + 1;
      }

LABEL_394:
      v175 = v172 & 0xFF00FFFF | (v173 << 16);
      if (Is_Legal(v175))
      {
        v178 = GNSS_Id_To_Num_Prn_Idx(v175);
        if (*(v354 + 4 * v171) >= 10)
        {
          v180 = 0;
          v181 = &v68[v171];
          v182 = *(v181 + 1);
          if (v182 > 0xF)
          {
            goto LABEL_399;
          }

          if (((1 << v182) & 0x6688) != 0)
          {
            v180 = 1;
            goto LABEL_399;
          }

          if (((1 << v182) & 0x8044) == 0)
          {
LABEL_399:
            *(&v392[v178] | v180) = v182;
            LOBYTE(v179) = *(v350 + v171);
            LOBYTE(v177) = *(v348 + v171);
            *&v183 = *&v177;
            v184 = v179 + *&v183 * 0.0625;
            *(&v389[v178] + v180) = v184;
            LOBYTE(v184) = *(v346 + v171);
            LOBYTE(v183) = *(v344 + v171);
            v177 = v183;
            *(&v388[v178] + v180) = *&v184 + v177 * 0.0625;
            *(&v386[v178] | v180) = *(v342 + v171);
            if (*(v340 + v171) == 1)
            {
              *(&v390[v178] | v180) = 1;
            }

            if (v172 == 2)
            {
              *(v384 + v178) = *(v181 + 3);
            }
          }
        }
      }

      else if (*(v354 + 4 * v171) >= 10)
      {
        v185 = &v68[v171];
        if ((*(v185 + 3) + 7) <= 0xDu)
        {
          v186 = (*(v185 + 3) + 7);
          *(v383 + v186) = *(v185 + 1);
          LOBYTE(v176) = *(v350 + v171);
          LOBYTE(v177) = *(v348 + v171);
          *&v187 = *&v177;
          v188 = v176 + *&v187 * 0.0625;
          v382[v186] = v188;
          LOBYTE(v188) = *(v346 + v171);
          LOBYTE(v187) = *(v344 + v171);
          v177 = v187;
          v381[v186] = *&v188 + v177 * 0.0625;
          *(v380 + v186) = *(v342 + v171);
        }
      }

      if (++v171 != 128)
      {
        continue;
      }

      break;
    }

    if (*(v7 + 32) != v335)
    {
      v13 = v330 + 1;
      v17 = *(v7 + 32);
      v14 = v269;
      v5 = &unk_2A13EC000;
      if (v330 == 5)
      {
LABEL_591:
        bzero(v318, 0x18E0uLL);
        bzero(v3, 0x878uLL);
        return 0;
      }

      continue;
    }

    break;
  }

  if (v330 > 3)
  {
    goto LABEL_591;
  }

  LOWORD(v177) = *(v360 + 2044);
  Inc_GPS_TOW(-(*(v318 + 7) - *&v177 * 0.000000001), v318 + 5, v318 + 16);
  API_Get_UTC_Cor(0, v318 + 9);
  GPS_To_UTC_Time(v318 + 9, v318 + 10, v318 + 11, v318 + 12, v318 + 13, v318 + 14, v318 + 15, *(v318 + 16), *(v318 + 5), *(v318 + 9));
  if (v318[17] == 1 && *(v318 + 12) == 23 && *(v318 + 13) == 59)
  {
    v189 = *(v318 + 14);
    if (v189 >= 0x3A)
    {
      v367[0] = 0;
      v362[0] = 0;
      LODWORD(v379[0].f64[0]) = 0;
      API_Get_Next_Leap_Second(v367, v362, v379);
      if (!LODWORD(v379[0].f64[0]) && v362[0] == 1)
      {
        *(v318 + 14) = v189 + 1;
      }
    }
  }

  v323 = 0;
  v190 = 0;
  v191 = *(p_api + 32);
  v376 = *(v191 + 10);
  v377 = *(v191 + 11);
  v378[0] = *(v191 + 12);
  *(v378 + 10) = *(v191 + 202);
  v372 = *(v191 + 6);
  v373 = *(v191 + 7);
  v374 = *(v191 + 8);
  v375 = *(v191 + 9);
  v355 = v318 + 6240;
  v264 = v191 + 1172;
  v353 = v318 + 5088;
  v351 = v318 + 6112;
  v331 = v324 + 59990;
  v368 = *(v191 + 2);
  v261 = v316 + 22480;
  v259 = v316 + 4412;
  v257 = v316 + 10112;
  v255 = v316 + 5588;
  v254 = v316 + 24272;
  v369 = *(v191 + 3);
  v370 = *(v191 + 4);
  v253 = v316 + 23544;
  v252 = v316 + 5212;
  v371 = *(v191 + 5);
  v251 = v316 + 19688;
  v250 = v316 + 8756;
  *v367 = *v191;
  v249 = v316 + 25808;
  *&v367[4] = *(v191 + 1);
  v285 = v316 + 76;
  v286 = v316 + 348;
  v283 = v316 + 147;
  v284 = v316 + 221;
  v281 = v316 + 12;
  v282 = v316 + 96;
  v279 = v316 + 86;
  v280 = v316 + 362;
  v277 = v316 + 183;
  v278 = v316 + 284;
  v275 = v316 + 44;
  v276 = v316 + 120;
  v247 = v316 + 3260;
  v248 = v316 + 700;
  v328 = v324 + 50616;
  v337 = (v318 + 1756);
  v349 = v318 + 348;
  v347 = v318 + 860;
  v345 = v318 + 1884;
  v343 = v318 + 2016;
  v341 = v318 + 3040;
  v326 = v318 + 4064;
  v246 = v191 + 82;
  v266 = v191;
  while (2)
  {
    v192 = 0;
    v193 = -100;
    LODWORD(v194) = -1;
    do
    {
      if (*(v367 + v192) <= v193)
      {
        v194 = v194;
      }

      else
      {
        v193 = *(v367 + v192);
        v194 = v192;
      }

      ++v192;
    }

    while (v192 != 218);
    if ((v194 & 0x80000000) == 0)
    {
      *(v367 + v194) = -120;
      if (*(v191 + v194) < 0 && (v195 = &v389[v194], *v195 <= 0.0) && v195[1] <= 0.0 || (LODWORD(v379[0].f64[0]) = 0, v196 = LongPrnIdx_To_Prn(v194, v379), LODWORD(v379[0].f64[0]) == 7))
      {
LABEL_589:
        if (v190 >= 0x80)
        {
          goto LABEL_601;
        }

        continue;
      }

      v197 = 0;
      v359 = v264 + 40 * v194;
      v333 = &v390[v194];
      v198 = v196 - 1;
      v274 = v324 + 11928 + (v198 << 6);
      v199 = 44 * v196;
      v273 = v324 + 47696 + 76 * v198;
      v320 = v196 - 193;
      v272 = v324 + 9152 + 116 * v196;
      v271 = v324 + 25512 + 152 * v198;
      v270 = (v324 + 120 + 116 * v196 - 112);
      v311 = v261 + 76 * v198 + 4;
      v309 = v259 + 80 * v196 - 15436;
      v308 = v257 + 152 * v198 + 4;
      v306 = v255 + 88 * v198 + 4;
      v302 = v248 + 80 * v196 - 76;
      v304 = v254 + (v198 << 6) + 4;
      v288 = v324 + 49824 + 52 * v198 + 4;
      *(v337 + v190) = v196;
      v315 = v324 + 11472 + v199 - 8488;
      v200 = v199 - 44;
      v287 = v324 + 44664 + v199 - 44 + 4;
      v201 = 36 * v196 - 36;
      v313 = v324 + 24044 + v201 + 4;
      v289 = v324 + 16248 + v201 + 4;
      v317 = v324 + 7544 + v200 + 4;
      v300 = v253 + 52 * v198 + 4;
      v298 = v252 + 36 * v196 - 6944;
      v294 = v250 + v201 + 4;
      v296 = v251 + v200 + 4;
      v292 = v249 + v201 + 4;
      v291 = v247 + v201 + 4;
      v202 = &v392[v194];
      v361 = v198;
      v268 = (v324 + 17708 + 88 * v198);
      v203 = 1;
      v334 = v196;
      while (2)
      {
        v204 = v203;
        v205 = *(v202 + v197);
        if (v205 == 15)
        {
LABEL_585:
          v203 = 0;
          v197 = 1;
          if ((v204 & 1) == 0)
          {
            v4 = v318;
            v191 = v266;
            goto LABEL_589;
          }

          continue;
        }

        break;
      }

      v206 = 0;
      if (SLODWORD(v379[0].f64[0]) > 3)
      {
        if (LODWORD(v379[0].f64[0]) == 4)
        {
          if ((v205 - 11) >= 4u)
          {
            v207 = 0;
          }

          else
          {
            v207 = dword_299050980[(v205 - 11)];
          }

          v206 = 4;
        }

        else if (LODWORD(v379[0].f64[0]) == 5)
        {
          if (v205 >= 4)
          {
            v207 = 0;
          }

          else
          {
            v207 = dword_299050990[v205];
          }

          v206 = 3;
        }

        else
        {
          v207 = 0;
          if (LODWORD(v379[0].f64[0]) == 6)
          {
            if (v205 == 3)
            {
              v207 = 98;
            }

            else
            {
              v207 = 0;
            }

            v206 = 6;
          }
        }
      }

      else if (LODWORD(v379[0].f64[0]) == 1)
      {
        if (v205 >= 4)
        {
          v207 = 0;
        }

        else
        {
          v207 = dword_299050970[v205];
        }

        v206 = 1;
      }

      else if (LODWORD(v379[0].f64[0]) == 2)
      {
        v207 = v205 + 29;
        v206 = 2;
        if ((v205 & 0xFC) != 4)
        {
          v207 = 0;
        }
      }

      else
      {
        v207 = 0;
        if (LODWORD(v379[0].f64[0]) == 3)
        {
          v207 = (v205 + 73);
          v206 = 5;
          if ((v205 - 8) >= 3u)
          {
            v207 = 0;
          }
        }
      }

      *(v337 + v190) = v196;
      *&v349[4 * v190] = v206;
      *&v347[4 * v190] = v207;
      v345[v190] = *(v384 + v194);
      *&v343[8 * v190] = *(&v389[v194] + v197);
      *&v341[8 * v190] = *(&v388[v194] + v197);
      v355[v190] = *(&v386[v194] + v197);
      v208 = v68;
      v209 = 3040;
      v210 = 1952;
      while (1)
      {
        v212 = *v208++;
        v211 = v212;
        if (Is_Legal(v212) && GNSS_Id_To_Num_Prn_Idx(v211) == v194)
        {
          break;
        }

        v210 += 40;
        if (++v209 == 3168)
        {
          goto LABEL_471;
        }
      }

      v213 = *(p_api + 136);
      v214 = *(v213 + 4 * v209);
      if (v214)
      {
        v215 = *(v321 + 32) - v214;
      }

      else
      {
        v215 = 0x7FFFFFFF;
      }

      if (v215 < 0)
      {
        v215 = -v215;
      }

      if (v215 >> 5 <= 0x752)
      {
        v216 = (v213 + v210);
        *&v326[8 * v190] = v216[640];
        goto LABEL_473;
      }

LABEL_471:
      v216 = v246 + 5 * v194 + 4;
      if ((*v359 & 0x80000000) == 0)
      {
        *&v326[8 * v190] = *(v359 + 4);
        v216 = v246 + 5 * v194 + 4;
      }

LABEL_473:
      *&v353[8 * v190] = *v216;
      v351[v190] = v333[v197];
      v68 = v339;
      if (*(v324 + 59772 + v194))
      {
        v217 = 1;
      }

      else
      {
        v217 = *(v331 + v194);
      }

      v218 = &v318[3 * v190 + 1372];
      v219 = *v218 & 0xFFFE | v217 & 1;
      *v218 = v219;
      v220 = v219 & 0xFFFD | (2 * (*(v331 + v194) & 1));
      *v218 = v220;
      v221 = LODWORD(v379[0].f64[0]);
      if ((v217 & 1) == 0)
      {
        goto LABEL_510;
      }

      if (SLODWORD(v379[0].f64[0]) <= 2)
      {
        if (LODWORD(v379[0].f64[0]))
        {
          if (LODWORD(v379[0].f64[0]) == 1)
          {
            v222 = *v270;
            if (*(*(v324 + 96) + v361) == 1)
            {
              goto LABEL_492;
            }

            goto LABEL_495;
          }

          if (LODWORD(v379[0].f64[0]) == 2)
          {
            v222 = *(v274 + 4);
            v223 = *(v324 + 17208);
            goto LABEL_490;
          }
        }

        else
        {
          EvCrt_Illegal_switch_case("API_Get_Nav_Data", 4847);
          v221 = LODWORD(v379[0].f64[0]);
        }

        goto LABEL_510;
      }

      if (SLODWORD(v379[0].f64[0]) > 4)
      {
        if (LODWORD(v379[0].f64[0]) == 5)
        {
          v222 = *(v272 - 22384);
          v223 = *(v324 + 9128);
          v224 = v320;
          goto LABEL_491;
        }

        if (LODWORD(v379[0].f64[0]) == 6)
        {
          v222 = *(v273 + 4);
          v223 = *(v338 + 172);
          goto LABEL_490;
        }

        goto LABEL_510;
      }

      if (LODWORD(v379[0].f64[0]) == 3)
      {
        v222 = *(v268 + 1);
        v223 = *(v324 + 17648);
      }

      else
      {
        v222 = *(v271 + 4);
        v223 = *(v324 + 25488);
      }

LABEL_490:
      v224 = v361;
LABEL_491:
      if (*(v223 + v224))
      {
LABEL_492:
        v220 |= 0x20u;
        *v218 = v220;
        v225 = 1;
        goto LABEL_496;
      }

LABEL_495:
      v225 = 0;
LABEL_496:
      if (v222 > 4)
      {
        if (v222 == 5)
        {
          *v218 = v220 | 8;
          if (v225)
          {
            goto LABEL_510;
          }

          v226 = 136;
          goto LABEL_508;
        }

        if (v222 != 6)
        {
          goto LABEL_510;
        }

        v227 = v220 | 2;
      }

      else
      {
        if (v222 != 3)
        {
          if (v222 == 4)
          {
            *v218 = v220 | 4;
            if ((v225 & 1) == 0)
            {
              v226 = 68;
              goto LABEL_508;
            }
          }

LABEL_510:
          if (v221 <= 2)
          {
            if (v221)
            {
              if (v221 == 1)
              {
                v228 = v302;
                if (*(v281 + v361) == 1)
                {
                  goto LABEL_530;
                }

                v221 = 1;
              }

              else if (v221 == 2)
              {
                v228 = v304;
                if (*(v282 + v361))
                {
                  goto LABEL_530;
                }

                v221 = 2;
              }
            }

            else
            {
              EvCrt_Illegal_switch_case("API_Get_Nav_Data", 4892);
              v221 = LODWORD(v379[0].f64[0]);
            }
          }

          else if (v221 > 4)
          {
            if (v221 == 5)
            {
              v228 = v309;
              if (*(v285 + v320))
              {
                goto LABEL_530;
              }

              v221 = 5;
            }

            else if (v221 == 6)
            {
              v228 = v311;
              if (*(v286 + v361))
              {
                goto LABEL_530;
              }

              v221 = 6;
            }
          }

          else if (v221 == 3)
          {
            v228 = v306;
            if (*(v283 + v361))
            {
              goto LABEL_530;
            }

            v221 = 3;
          }

          else
          {
            v228 = v308;
            if ((*(v284 + v361) & 1) == 0)
            {
              v221 = 4;
              goto LABEL_535;
            }

LABEL_530:
            v229 = *v228;
            if (v229 == 5)
            {
              v230 = *v218 | 8;
LABEL_534:
              *v218 = v230;
            }

            else if (v229 == 3)
            {
              v230 = *v218 | 0x10;
              goto LABEL_534;
            }
          }

LABEL_535:
          if (*(v324 + 60208 + v194) != 1)
          {
            goto LABEL_553;
          }

          v231 = *v218;
          *v218 |= 0x200u;
          if (v221 <= 2)
          {
            if (v221)
            {
              v232 = v317;
              if (v221 == 1)
              {
                goto LABEL_546;
              }

              v232 = v289;
              if (v221 == 2)
              {
                goto LABEL_546;
              }
            }

            else
            {
              EvCrt_Illegal_switch_case("API_Get_Nav_Data", 4941);
              v221 = LODWORD(v379[0].f64[0]);
            }

            goto LABEL_553;
          }

          if (v221 > 4)
          {
            v232 = v315;
            if (v221 == 5)
            {
              goto LABEL_546;
            }

            v232 = v288;
            if (v221 == 6)
            {
              goto LABEL_546;
            }

            goto LABEL_553;
          }

          v232 = v313;
          if (v221 != 3)
          {
            v232 = v287;
          }

LABEL_546:
          v233 = *v232;
          switch(v233)
          {
            case 5:
              v234 = 18944;
              break;
            case 4:
              v234 = 9728;
              break;
            case 3:
              v234 = -28160;
              break;
            default:
LABEL_553:
              if (v221 <= 2)
              {
                switch(v221)
                {
                  case 0:
                    EvCrt_Illegal_switch_case("API_Get_Nav_Data", 4974);
                    break;
                  case 1:
                    v235 = v291;
                    if (*(v275 + v361) != 1)
                    {
                      break;
                    }

                    goto LABEL_573;
                  case 2:
                    v235 = v292;
                    if (*(v276 + v361))
                    {
                      goto LABEL_573;
                    }

                    break;
                }
              }

              else if (v221 > 4)
              {
                if (v221 == 5)
                {
                  v235 = v298;
                  if (*(v279 + v320))
                  {
                    goto LABEL_573;
                  }
                }

                else if (v221 == 6)
                {
                  v235 = v300;
                  if (*(v280 + v361))
                  {
                    goto LABEL_573;
                  }
                }
              }

              else if (v221 == 3)
              {
                v235 = v294;
                if (*(v277 + v361))
                {
                  goto LABEL_573;
                }
              }

              else
              {
                v235 = v296;
                if ((*(v278 + v361) & 1) == 0)
                {
                  goto LABEL_578;
                }

LABEL_573:
                v236 = *v235;
                if (v236 == 5)
                {
                  v237 = *v218 | 0x800;
                }

                else
                {
                  if (v236 != 3)
                  {
                    goto LABEL_578;
                  }

                  v237 = *v218 | 0x1000;
                }

                *v218 = v237;
              }

LABEL_578:
              v238 = *(v218 + 2) & 0xFE | *(v328 + v194);
              *(v218 + 2) = v238;
              v239 = v238 & 0xFD | (2 * *(v328 + v194));
              *(v218 + 2) = v239;
              v240 = v239 & 0xFB | (4 * *(v328 + v194));
              *(v218 + 2) = v240;
              v241 = v240 & 0xF7 | (8 * *(v328 + v194));
              *(v218 + 2) = v241;
              *(v218 + 2) = v241 & 0xEF | (16 * *(v328 + v194));
              ++v190;
              if (v197)
              {
                v196 = v334;
                if (v333[1] != 1 || (*v333 & 1) != 0)
                {
LABEL_584:
                  v202 = &v392[v194];
                  goto LABEL_585;
                }
              }

              else
              {
                v196 = v334;
                if ((*v333 & 1) == 0)
                {
                  goto LABEL_584;
                }
              }

              ++v323;
              goto LABEL_584;
          }

          *v218 = v231 | v234;
          goto LABEL_553;
        }

        *v218 = v220 | 0x10;
        if (v225)
        {
          goto LABEL_510;
        }

        v226 = 272;
LABEL_508:
        v227 = v220 | v226;
      }

      *v218 = v227;
      goto LABEL_510;
    }

    break;
  }

  v243 = 0;
  do
  {
    v244 = v382[v243];
    if (v244 > 0.0)
    {
      v345[v190] = v243 - 7;
      if (((*(v383 + v243) - 4) & 0xFC) != 0)
      {
        v245 = 0;
      }

      else
      {
        v245 = (*(v383 + v243) - 4) + 33;
      }

      *&v349[4 * v190] = 2;
      *&v347[4 * v190] = v245;
      *&v343[8 * v190] = v244;
      *&v341[8 * v190] = v381[v243];
      v355[v190] = *(v380 + v243);
      *&v326[8 * v190] = 0;
      *&v353[8 * v190] = 0xC058C00000000000;
      v351[v190++] = 0;
    }

    if (v243 > 0xC)
    {
      break;
    }

    ++v243;
  }

  while (v190 < 0x80);
LABEL_601:
  v4[344] = v190;
  v4[345] = v323;
  *v4 = v335;
  result = 1;
  *v3 = v335;
  return result;
}

uint64_t API_Get_Raw_Meas_Data(float64x2_t *a1)
{
  v283 = *MEMORY[0x29EDCA608];
  v221 = a1 + 10005;
  v225 = a1 + 3590;
  bzero(a1, 0x271A0uLL);
  v2 = *(p_api + 32);
  v264 = *(p_api + 16);
  v3 = *(p_api + 72);
  v244 = *(p_api + 80);
  v4 = *(p_api + 56);
  v224 = v4 + 47500;
  v223 = v4 + 25364;
  v222 = (v4 + 17120);
  v218 = (v4 + 8984);
  v5 = *(p_api + 96);
  v239 = *(p_api + 88);
  v6 = *(p_api + 136);
  v7 = *(p_api + 176);
  v242 = *(p_api + 48);
  *&a1->f64[0] = 1000000 * *(v242 + 24);
  if (*(v3 + 240))
  {
    a1->f64[1] = *(v3 + 152);
    a1[1].f64[0] = *(v3 + 224);
    a1[1].f64[1] = *(v3 + 72);
    a1[2].f64[0] = *(v3 + 112);
    a1[2].f64[1] = *(v3 + 80);
    a1[3] = vmulq_f64(vsqrtq_f64(*(v6 + 56)), vdupq_n_s64(0x400AAF6485FFABE7uLL));
    a1[4].f64[0] = *(v3 + 216) * *(v3 + 216);
    a1[4].f64[1] = *(v3 + 200) * *(v3 + 200);
  }

  v240 = v3;
  v241 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  LODWORD(a1[5].f64[0]) = 0;
  v12 = (1000000 * *(v7 + 16));
  v258 = a1 + 6;
  v260 = v4;
  v13 = v4 + 17424;
  v234 = a1;
  v14 = &a1[3604].f64[1];
  v15 = v4 + 17480;
  v16 = v5 + 3424;
  v17 = v7 + 7080;
  v18 = v7 + 12072;
  v19 = v7 + 21984;
  v256 = v7 + 36888;
  v254 = v7 + 7336;
  v20 = v7 + 19624;
  v252 = v7 + 17448;
  v21 = 7230;
  v22 = 22240;
  v23 = 26976;
  v24 = 7208;
  v25 = 3.33564095;
  v26 = 1000000000.0 / v12 * 3.33564095;
  v27 = 7976;
  v28 = 208;
  *&v29 = 1.0e11;
  v30 = 0.0000508978417;
  *&v31 = 100000.0;
  v32 = xmmword_299050910;
  *&v33 = 6.048e14;
  *&v34 = 86400.0;
  while (1)
  {
    v35 = *(v264 + v24);
    if (*(v264 + v24))
    {
      v36 = v35 == 7;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_9;
    }

    v37 = *(v264 + v21 - 20);
    if (v35 != 2 && v37 == 0)
    {
      goto LABEL_9;
    }

    if (v35 != *(v5 + v8 + 96))
    {
      goto LABEL_9;
    }

    v39 = v264 + v21;
    if (*(v264 + v21 - 21) != *(v5 + v8 + 97))
    {
      goto LABEL_9;
    }

    v261 = v5 + v8;
    if (*(v39 - 19) != *(v5 + v8 + 99) || *(v264 + v21 - 20) && v37 != *(v261 + 98))
    {
      goto LABEL_9;
    }

    if (*(v5 + 4 * v11 + 1248) < 10)
    {
      goto LABEL_9;
    }

    v40 = LOWORD(v234[5].f64[1]);
    if (v40 > 0xFF)
    {
      goto LABEL_135;
    }

    v226 = v7;
    v246 = v12;
    v248 = v5;
    v41 = &v258[14 * LOWORD(v234[5].f64[1])];
    LOWORD(v234[5].f64[1]) = v40 + 1;
    LOWORD(v41->f64[0]) = -1;
    v229 = v264 + v21;
    v230 = v20;
    v250 = &v258[14 * v40];
    v219 = v13;
    v220 = v2;
    v243 = v15;
    v235 = v17;
    v237 = v16;
    v231 = v19;
    v232 = v18;
    v228 = v32;
    switch(*(v39 - 21))
    {
      case 0:
        v46 = ((*(v264 + v24) - 1) & 0xFB) == 0;
        break;
      case 1:
        v46 = 1;
        break;
      case 2:
        v46 = 2;
        break;
      case 3:
        v46 = 3;
        break;
      case 4:
        v46 = 4;
        break;
      case 5:
      case 6:
      case 7:
      case 0xA:
      case 0xE:
      case 0xF:
        v211 = v25;
        v208 = v29;
        v42 = v30;
        v43 = v31;
        v44 = v33;
        v45 = v34;
        EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 5524);
        v41 = v250;
        v34 = v45;
        v33 = v44;
        v31 = v43;
        v30 = v42;
        v29 = v208;
        v25 = v211;
        v46 = 0;
        break;
      case 8:
        v46 = 8;
        break;
      case 9:
        v46 = 9;
        break;
      case 0xB:
        v46 = 6;
        break;
      case 0xC:
        v46 = 5;
        break;
      case 0xD:
        v46 = 7;
        break;
      default:
        v46 = 0;
        break;
    }

    v216 = *&v34;
    v217 = *&v33;
    HIDWORD(v41->f64[0]) = v46;
    v47 = *(v264 + v24);
    if (v47 > 3)
    {
      if (*(v264 + v24) > 5u)
      {
        if (v47 != 6)
        {
          if (v47 != 7)
          {
LABEL_41:
            v48 = GM_Gen_SV_Meas_QI(v264 + v24);
            goto LABEL_42;
          }

LABEL_37:
          EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 5539);
          goto LABEL_39;
        }
      }

      else if (v47 != 4)
      {
        if (v47 != 5)
        {
          goto LABEL_41;
        }

        v47 = 3;
      }
    }

    else
    {
      if (*(v264 + v24) <= 1u)
      {
        if (*(v264 + v24))
        {
          LODWORD(v41->f64[1]) = 1;
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      if (v47 != 2)
      {
        if (v47 != 3)
        {
          goto LABEL_41;
        }

        v47 = 5;
      }
    }

    LODWORD(v41->f64[1]) = v47;
LABEL_39:
    v212 = *(v264 + v24);
    v48 = GM_Gen_SV_Meas_QI(v264 + v24);
    if (v212 == 2)
    {
      v50 = v264 + v21;
      v51 = *(v229 - 19);
      v12 = v246;
      v5 = v248;
      goto LABEL_43;
    }

LABEL_42:
    v12 = v246;
    v5 = v248;
    v50 = v264 + v21;
    v51 = *(v264 + v21 - 20);
LABEL_43:
    WORD2(v250->f64[1]) = v51;
    v52 = *(v242 + 40) * 1000000000.0;
    *&v250[1].f64[1] = v52;
    *&v250[2].f64[0] = v52;
    *&v250[1].f64[0] = v52 - v12;
    v53 = v264;
    v54 = (v264 + v10);
    v55 = *(v264 + v10 + 7216);
    if ((v55 & 0x200) != 0)
    {
      v56 = 9;
    }

    else
    {
      v56 = 1;
    }

    v57 = v250;
    if ((~v55 & 0x300) != 0)
    {
      v58 = v56;
    }

    else
    {
      v58 = 15;
    }

    LOBYTE(v250[2].f64[1]) = v58;
    v59 = v264 + v9;
    v250[3].f64[0] = *(v264 + v9 + 88) * 1000000000.0;
    v60 = *&v29;
    v15 = v243;
    v61 = v235;
    v16 = v237;
    v62 = v231;
    v18 = v232;
    v20 = v230;
    if (v48 >= 0xA)
    {
      v60 = *&v29;
      if (v54[3609])
      {
        v213 = v48;
        PR_Raw_Meas_Unc = NK_Get_PR_Raw_Meas_Unc(*(v264 + v24), *(v264 + v21 - 18), v54[3609] / 0xAu, *(v264 + v9 + 72));
        v59 = v264 + v9;
        v53 = v264;
        v54 = (v264 + v10);
        v48 = v213;
        v5 = v248;
        v57 = v250;
        v50 = v264 + v21;
        v20 = v230;
        v62 = v231;
        v18 = v232;
        v61 = v235;
        v16 = v237;
        v15 = v243;
        v12 = v246;
        v60 = PR_Raw_Meas_Unc * v25;
      }
    }

    v57[3].f64[1] = v60;
    LOBYTE(v60) = *(v5 + v11 + 1760);
    LOBYTE(v49) = *(v5 + v11 + 1888);
    *&v64 = v49;
    v65 = *&v60 + *&v64 * 0.0625;
    v57[4].f64[0] = v65;
    LOBYTE(v65) = *(v5 + v11 + 2016);
    LOBYTE(v64) = *(v5 + v11 + 2144);
    v57[4].f64[1] = *&v65 + v64 * 0.0625;
    v66 = *(v53 + v21);
    LOBYTE(v57[5].f64[1]) = v66;
    WORD1(v57[5].f64[1]) = v54[3614];
    v57[6].f64[0] = *(v59 + 52) * v30;
    v67 = *(v59 + 56);
    v57[7].f64[0] = v67 * v30;
    v68 = *&v31;
    if (v48 >= 0xA)
    {
      v68 = *&v31;
      if (*(v53 + v10 + 7220))
      {
        v206 = v67;
        v214 = v48;
        v209 = v54;
        DO_Raw_Meas_Unc = NK_Get_DO_Raw_Meas_Unc(*(v53 + v24), *(v53 + v21 - 18), *(v53 + v10 + 7220) / 0xAu, v66, v48);
        v67 = v206;
        v54 = v209;
        v48 = v214;
        v5 = v248;
        v57 = v250;
        v50 = v264 + v21;
        v20 = v230;
        v62 = v231;
        v18 = v232;
        v61 = v235;
        v16 = v237;
        v15 = v243;
        v12 = v246;
        v68 = DO_Raw_Meas_Unc * v25;
      }
    }

    v57[6].f64[1] = v68;
    if (!v67)
    {
      v68 = -1.0;
    }

    v57[7].f64[1] = v68;
    LODWORD(v57[9].f64[0]) = 2;
    v70 = v54[3608];
    if ((v70 & 0xC0) != 0)
    {
      v71 = 4;
      v72 = v219;
      v2 = v220;
      v32 = v228;
      *&v34 = v216;
      *&v33 = v217;
LABEL_61:
      HIDWORD(v57[9].f64[0]) = v71;
      goto LABEL_62;
    }

    v72 = v219;
    v2 = v220;
    v32 = v228;
    *&v34 = v216;
    *&v33 = v217;
    if ((v70 & 0x30) != 0)
    {
      v71 = 3;
      goto LABEL_61;
    }

LABEL_62:
    LOWORD(v57[9].f64[1]) = v11;
    BYTE4(v57[9].f64[1]) = v48 > 9;
    LODWORD(v57[10].f64[1]) = 0;
    v73 = -1.0;
    if (v48 < 0xF || (v74 = *(v264 + v10 + 7222), v74 < 0x15))
    {
      v80 = 25;
      v79 = *&v29;
    }

    else
    {
      v57[11].f64[1] = *&v57[2].f64[0];
      v215 = v74;
      v210 = *(v264 + v9 + 64);
      v207 = NK_Get_DR_Raw_Meas_Unc(*(v264 + v21 - 18), *(v264 + v9 + 76)) * v25;
      v75.f64[0] = v210;
      v75.f64[1] = v207;
      v250[12] = vmulq_f64(v75, v228);
      if (*(v240 + 1668) + 100 >= v215)
      {
        v76 = 1;
      }

      else
      {
        v76 = 2;
      }

      LODWORD(v250[10].f64[1]) = v76;
      *&v265[0] = 0;
      v77 = R8_EQ((v226 + v28), v265);
      v5 = v248;
      v57 = v250;
      v50 = v264 + v21;
      v20 = v230;
      *&v34 = v216;
      *&v33 = v217;
      v32 = v228;
      v62 = v231;
      v18 = v232;
      v61 = v235;
      v16 = v237;
      v15 = v243;
      v12 = v246;
      v72 = v219;
      v2 = v220;
      v78 = -1.0;
      if (v77)
      {
        goto LABEL_71;
      }

      v79 = -(*(v226 + 8 * v11 + 208) * v26);
      v80 = 16;
      v73 = v207;
    }

    v57->f64[v80] = v79;
    v78 = v73;
LABEL_71:
    v19 = v62;
    v13 = v72;
    v17 = v61;
    v81 = v50;
    v57[8].f64[1] = v78;
    v7 = v226;
    if (*(v264 + v9 + 85))
    {
      v82 = v264 + v21;
      if (*(v264 + v9 + 85) > 9u)
      {
        LODWORD(v57[13].f64[0]) = 1;
      }

      else
      {
        LODWORD(v57[13].f64[0]) = 2;
      }

      v83 = v264;
    }

    else
    {
      LODWORD(v57[13].f64[0]) = 0;
      v83 = v264;
      v82 = v264 + v21;
    }

    v84 = v57;
    v85 = v83;
    v86 = v83 + v10;
    WORD2(v84[13].f64[0]) = *(v86 + 7218);
    *(v84[13].f64 + 6) = *(v86 + 7220);
    v87 = *(v85 + v24);
    if (v87 == 7)
    {
      goto LABEL_9;
    }

    if (v87 == 2)
    {
      v262 = *(v261 + 98);
      if (!v262)
      {
        if (*(v13 + 4 * *(v81 - 19) + 28) == 2139062143)
        {
          goto LABEL_9;
        }

        LOBYTE(v262) = *(v13 + 4 * *(v81 - 19) + 28);
        if (!v262)
        {
          goto LABEL_9;
        }
      }

      *(v82 - 20) = v262;
    }

    else
    {
      LOBYTE(v262) = 0;
    }

    v88 = GNSS_Id_To_Num_Pos_Idx(*(v264 + v24));
    v16 = v237;
    v13 = v219;
    v2 = v220;
    v12 = v246;
    v5 = v248;
    v7 = v226;
    v15 = v243;
    v17 = v235;
    v19 = v231;
    v18 = v232;
    v20 = v230;
    v32 = v228;
    *&v34 = v216;
    *&v33 = v217;
    if (v239)
    {
      if (*(v239 + 192 * v88 + 176))
      {
        break;
      }
    }

LABEL_9:
    ++v11;
    v10 += 36;
    v21 += 36;
    v22 += 4;
    v23 += 8;
    v24 += 36;
    v27 += 24;
    v28 += 8;
    v9 += 56;
    v8 += 4;
    if (v11 == 128)
    {
      goto LABEL_135;
    }
  }

  v89 = LOWORD(v225[14].f64[0]);
  if (v89 <= 0xFF)
  {
    v90 = &v14[104 * LOWORD(v225[14].f64[0])];
    *v90 = LOBYTE(v234[5].f64[1]) - 1;
    LOWORD(v250->f64[0]) = v89;
    LOWORD(v225[14].f64[0]) = v89 + 1;
    v90[1] = v262;
    if (*(v264 + v24) == 2)
    {
      v91 = *(v243 + 4 * *(v229 - 19) + 28);
      v92 = v237;
      v93 = v235;
      if (v91 <= 3)
      {
        v94 = dword_2990509A0[v91];
        goto LABEL_91;
      }
    }

    else
    {
      v94 = 1;
      v92 = v237;
      v93 = v235;
LABEL_91:
      *(v90 + 1) = v94;
    }

    v95 = *(v264 + v24);
    if (v95 == 4)
    {
      v98 = *(v248 + 32) + -14.0 + *(v92 + 8 * v11) * -0.00000000333564095;
      if (v98 < 0.0)
      {
        v98 = v98 + 604800.0;
      }

      v96 = v232;
      v97 = v231;
    }

    else
    {
      v96 = v232;
      v97 = v231;
      if (v95 == 2)
      {
        v98 = *(v248 + 72) + *(v92 + 8 * v11) * -0.00000000333564095;
        if (v98 < 0.0)
        {
          v98 = v98 + v216;
        }
      }

      else
      {
        v98 = *(v248 + 32) + *(v92 + 8 * v11) * -0.00000000333564095;
      }
    }

    v99 = v98 * 1000000000.0;
    if (v99 < 0.0)
    {
      v99 = v99 + v217;
    }

    *(v90 + 1) = v99;
    v100 = *(v93 + v11);
    if (v100 == 1)
    {
      v101 = sqrt(*(v226 + v27) + *(v226 + v27 + 8));
      *(v90 + 10) = v101;
      *(v90 + 2) = v101 * v25;
      *(v90 + 4) = *(v96 + 8 * v11);
    }

    *(v90 + 6) = 0;
    v102 = *(v97 + v11);
    if (v102 == 1)
    {
      *(v90 + 5) = *(v226 + v23);
    }

    v103 = *(v256 + v11);
    if (v103 == 1)
    {
      *(v90 + 6) = *(v226 + v23 + 14904);
    }

    if (v100 && (*(v254 + 4 * v11) - 1) >= 0x1E)
    {
      *(v90 + 7) = *(v230 + 8 * v11);
    }

    if (v102 && (*(v226 + v22) - 1) >= 0x1E)
    {
      *(v90 + 8) = *(v226 + v23 + 7552);
    }

    if (v103 && (*(v226 + v22 + 14904) - 1) >= 0x1E)
    {
      *(v90 + 9) = *(v226 + v23 + 22456);
    }

    if (v100)
    {
      *(v90 + 10) = sqrt(*(v252 + 8 * v11));
    }

    if (v102)
    {
      *(v90 + 11) = sqrt(*(v226 + v23 + 5376));
    }

    if (v103)
    {
      *(v90 + 12) = sqrt(*(v226 + v23 + 20280));
    }

    goto LABEL_9;
  }

LABEL_135:
  v104 = 0;
  v105 = v260 + 17328;
  v259 = v240 + 824;
  v263 = v240 + 1104;
  v106 = v234;
  v233 = v2 + 656;
  v227 = v2 + 9376;
  v107 = 0.5;
  while (2)
  {
    Constell_Prn = Get_Constell_Prn(v104);
    v109 = Num_Prn_Idx_To_GNSS_Id(v104);
    v110 = v109;
    if (Constell_Prn == 2)
    {
      v111 = *(v105 + 4 * v109 - 4);
      if (v111 == 2139062143)
      {
        goto LABEL_307;
      }
    }

    else
    {
      if (Constell_Prn == 7)
      {
        break;
      }

      LOBYTE(v111) = 0;
    }

    if (*(v259 + v104) == 1 && (*(v263 + v104) & 1) != 0)
    {
      goto LABEL_307;
    }

    v112 = Num_Prn_Idx_To_Num_Pos_Idx(v104);
    if (v112 - 1 > 0xC3)
    {
      goto LABEL_307;
    }

    v114 = v239 + 192 * v112;
    if (!*(v114 + 176))
    {
      goto LABEL_307;
    }

    v115 = LOWORD(v106[5268].f64[1]);
    if (v115 > 0xFF)
    {
      break;
    }

    v116 = &v234[5269] + 296 * LOWORD(v106[5268].f64[1]);
    LOWORD(v106[5268].f64[1]) = v115 + 1;
    v117 = Constell_Prn;
    v238 = v110;
    if (Constell_Prn > 3u)
    {
      v118 = v241;
      if (Constell_Prn > 5u)
      {
        if (Constell_Prn == 6)
        {
          goto LABEL_159;
        }

        goto LABEL_156;
      }

      if (Constell_Prn != 4)
      {
        v117 = 3;
      }

LABEL_159:
      *v116 = v117;
    }

    else
    {
      v118 = v241;
      if (Constell_Prn > 1u)
      {
        if (Constell_Prn != 2)
        {
          v117 = 5;
          goto LABEL_159;
        }

        *v116 = 2;
        goto LABEL_157;
      }

      if (Constell_Prn)
      {
        goto LABEL_159;
      }

LABEL_156:
      EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 6076);
      if (Constell_Prn == 2)
      {
LABEL_157:
        v119 = v111;
        v120 = v110;
        goto LABEL_161;
      }
    }

    v120 = 0;
    v119 = v110;
LABEL_161:
    *(v116 + 4) = v119;
    *(v116 + 6) = v120;
    *v113.i64 = sqrt(*(v114 + 112) * v107);
    *(v116 + 144) = v113.i64[0];
    *(v116 + 152) = *v113.i64 * v25;
    v121 = (v260 + 51052 + 20 * v104);
    v122 = v260 + 55412 + 20 * v104;
    v113.i64[0] = *v122;
    v123.i64[0] = 0x200000002;
    v123.i64[1] = 0x200000002;
    v124 = vceqq_s32(*v121, v123);
    v125.i64[0] = 0x100000001;
    v125.i64[1] = 0x100000001;
    v126 = vsubq_s32(vandq_s8(v124, v123), vbicq_s8(vceqq_s32(*v121, v125), v124));
    *(v116 + 160) = v126;
    v126.i32[0] = v121[1].i32[0];
    v127 = vextq_s8(vextq_s8(v126, v126, 4uLL), v113, 0xCuLL);
    v127.i32[3] = *(v122 + 8);
    v128 = vceqq_s32(v127, v123);
    *(v116 + 176) = vsubq_s32(vandq_s8(v128, v123), vbicq_s8(vceqq_s32(v127, v125), v128));
    v129 = *(v122 + 16);
    if (v129 == 2)
    {
      v130 = 2;
    }

    else
    {
      v130 = v129 == 1;
    }

    *(v116 + 192) = v130;
    v131 = *(v118 + 1712);
    if (v131 > 0.0)
    {
      v132 = v233 + 40 * v104;
      if (*(v132 + 32) >= 0.0)
      {
        *(v116 + 200) = v131 * Trop_Elev_MapF(v132);
      }
    }

    v133 = 2;
    if (((1 << Constell_Prn) & 0x3A) != 0)
    {
      goto LABEL_170;
    }

    if (((1 << Constell_Prn) & 0x44) != 0)
    {
      v133 = 1;
LABEL_170:
      *(v116 + 208) = v133;
      v134 = (v116 + 208);
LABEL_171:
      v135 = 0;
      v136 = 0;
      v255 = v116 + 224;
      v257 = v116 + 212;
      v251 = v116 + 256;
      v253 = v116 + 240;
      v236 = v116;
      v247 = v116 + 288;
      v249 = v116 + 272;
      v137 = 15;
      v245 = v233 + 40 * v104;
      while (2)
      {
        if (v136)
        {
          if (v136 != 1)
          {
            goto LABEL_209;
          }

          v138 = 6177;
          v139 = 3;
          if (Constell_Prn <= 3u)
          {
            if (Constell_Prn <= 1u)
            {
              v140 = 3;
              if (Constell_Prn)
              {
                goto LABEL_212;
              }

LABEL_210:
              EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", v138);
              v140 = 0;
              if (v137 > 0xE)
              {
                v139 = v137;
              }

              else
              {
                v139 = v137;
                if (((1 << v137) & 0x66CC) != 0)
                {
                  goto LABEL_212;
                }
              }

              goto LABEL_202;
            }

            if (Constell_Prn != 2)
            {
              v139 = 9;
              v140 = 9;
              goto LABEL_212;
            }

LABEL_209:
            v139 = v137;
            goto LABEL_248;
          }

          if (Constell_Prn > 5u)
          {
            if (Constell_Prn != 6)
            {
              goto LABEL_210;
            }

            goto LABEL_209;
          }

          if (Constell_Prn == 4)
          {
            v140 = 7;
          }

          else
          {
            v140 = 3;
          }

          if (Constell_Prn == 4)
          {
            v139 = 13;
          }

          else
          {
            v139 = 3;
          }

LABEL_212:
          if (*(v263 + v104))
          {
LABEL_248:
            ++v136;
            v137 = v139;
            if (v136 >= *v134)
            {
              v116 = v236;
              goto LABEL_250;
            }

            continue;
          }
        }

        else
        {
          v138 = 6162;
          v140 = 1;
          if (Constell_Prn > 3u)
          {
            if (Constell_Prn > 5u)
            {
              if (Constell_Prn == 6)
              {
                v139 = 3;
                v140 = 3;
                goto LABEL_212;
              }

              goto LABEL_210;
            }

            if (Constell_Prn == 4)
            {
              v140 = 6;
            }

            else
            {
              v140 = 1;
            }

            if (Constell_Prn == 4)
            {
              v139 = 11;
            }

            else
            {
              v139 = 0;
            }
          }

          else if (Constell_Prn > 1u)
          {
            if (Constell_Prn == 2)
            {
              v140 = 4;
            }

            else
            {
              v140 = 8;
            }

            if (Constell_Prn == 2)
            {
              v139 = 4;
            }

            else
            {
              v139 = 8;
            }
          }

          else
          {
            if (!Constell_Prn)
            {
              goto LABEL_210;
            }

            v139 = 0;
          }

LABEL_202:
          if (*(v259 + v104))
          {
            goto LABEL_248;
          }
        }

        break;
      }

      *(v257 + 4 * v135) = v140;
      v141 = 0;
      v142 = 0.0;
      if (*(v260 + 8956))
      {
        v142 = 0.0;
        if (*(v245 + 32) >= 0.0)
        {
          v143 = GPS_Klob_Iono_Delay((v244 + 224), v227 + 40 * v104, v245, (v260 + 8952), *(v242 + 40));
          GPS_L1_Iono_Scale_factor();
          v142 = v143 * v144;
        }
      }

      *(v255 + 8 * v135) = v142;
      if (v140 <= 3)
      {
        if (v140)
        {
          v145 = 0.0;
          if (v140 == 3)
          {
            goto LABEL_225;
          }
        }

        else
        {
          EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 6346);
          v145 = 0.0;
        }
      }

      else
      {
        if (v140 <= 6)
        {
          if (v140 != 4)
          {
            v145 = 0.0;
            goto LABEL_227;
          }

          if (*(v240 + 1992))
          {
            v148 = 1.5;
          }

          else
          {
            v148 = 3.0;
          }

          *&v265[0] = 0;
          if (R8_EQ((v244 + 160), v265))
          {
            v149 = 0.0;
          }

          else
          {
            v276 = 0.0;
            v150 = R8_EQ((v244 + 152), &v276);
            v149 = 0.0;
            if (!v150)
            {
              v151 = *(v244 + 152);
              v152 = *(v244 + 160);
              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              memset(v265, 0, sizeof(v265));
              v282 = 0;
              v281 = 0u;
              v280 = 0u;
              v279 = 0u;
              v278 = 0u;
              v277 = 0u;
              *v275 = 0;
              *v274 = xmmword_299050920;
              v276 = -1.0;
              mapu(v274, 1, 1u, 2, (v241 + 352), 0xCu, v265, 1, &v276, v275);
              v153 = sqrt(*v275);
              v149 = 0.0;
              if (v153 < v148)
              {
                v149 = *(v241 + 15528) + (v151 - v152) * -299792458.0;
                v148 = v153;
              }

              v107 = 0.5;
            }
          }

          *(v253 + 8 * v135) = v149;
          *(v251 + 8 * v135) = v148;
          v154 = 136;
          if (!v136)
          {
            v154 = 152;
          }

          *(v249 + 8 * v135) = *(v114 + v154) * 1000000000.0;
LABEL_246:
          v147 = *(v264 + 32);
          goto LABEL_247;
        }

        if (v140 == 9 || (v145 = 0.0, v140 == 7))
        {
LABEL_225:
          v145 = *(v244 + 176) * 299792458.0;
          v141 = *(v244 + 880);
        }
      }

LABEL_227:
      *(v253 + 8 * v135) = v145;
      *(v251 + 8 * v135) = v141;
      v146 = 136;
      if (!v136)
      {
        v146 = 152;
      }

      *(v249 + 8 * v135) = *(v114 + v146) * 1000000000.0;
      if (((1 << v140) & 0x172) != 0)
      {
        goto LABEL_246;
      }

      if (((1 << v140) & 0x288) != 0)
      {
        v147 = *(v264 + 33);
      }

      else
      {
        EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 6382);
        v147 = 0;
      }

LABEL_247:
      *(v247 + v135++) = v147;
      goto LABEL_248;
    }

    *(v116 + 208) = 0;
    v134 = (v116 + 208);
    EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 6142);
    if (*(v116 + 208))
    {
      goto LABEL_171;
    }

    v135 = 0;
LABEL_250:
    v155 = 0;
    *v134 = v135;
    if (Constell_Prn > 3u)
    {
      v106 = v234;
      v105 = v260 + 17328;
      switch(Constell_Prn)
      {
        case 4u:
          LODWORD(v156) = (v238 - 1);
          v157 = (v260 + 35088 + 152 * (v238 - 1) + 4);
          v158 = (v260 + 25512 + 152 * (v238 - 1) + 4);
          v159 = v260 + 44664;
          break;
        case 5u:
          LODWORD(v156) = (v238 + 63);
          v157 = (v260 + 10312 + 116 * (v238 + 63) + 4);
          v158 = (v260 + 9152 + 116 * (v238 + 63) + 4);
          v159 = v260 + 11472;
          break;
        case 6u:
          LODWORD(v156) = (v238 - 1);
          v157 = (v260 + 48760 + 76 * (v238 - 1) + 4);
          v158 = (v260 + 47696 + 76 * (v238 - 1) + 4);
          v159 = v260 + 49824;
          v160 = 52;
          goto LABEL_267;
        default:
          goto LABEL_275;
      }

      goto LABEL_266;
    }

    v106 = v234;
    v105 = v260 + 17328;
    switch(Constell_Prn)
    {
      case 1u:
        LODWORD(v156) = (v238 - 1);
        v157 = (v260 + 3832 + 116 * (v238 - 1) + 4);
        v158 = (v260 + 120 + 116 * (v238 - 1) + 4);
        v159 = v260 + 7544;
LABEL_266:
        v160 = 44;
LABEL_267:
        v161 = *v158;
        v162 = *(v159 + v156 * v160 + 4);
        if (*v157 == 6)
        {
          v163 = 6;
        }

        else
        {
          v163 = v162;
        }

        if (v161)
        {
          v163 = v161;
        }

        v164 = v163 - 3;
        if (v164 > 3)
        {
          v155 = 0;
        }

        else
        {
          v155 = dword_2990509B0[v164];
        }

        break;
      case 2u:
        v156 = (v238 - 1);
        v157 = (v260 + 13464 + 116 * v156 + 4);
        v159 = v260 + 16248;
        v158 = (v260 + 11928 + (v156 << 6) + 4);
LABEL_264:
        v160 = 36;
        goto LABEL_267;
      case 3u:
        LODWORD(v156) = (v238 - 1);
        v157 = (v260 + 20876 + 88 * (v238 - 1) + 4);
        v158 = (v260 + 17708 + 88 * (v238 - 1) + 4);
        v159 = v260 + 24044;
        goto LABEL_264;
    }

LABEL_275:
    *(v116 + 8) = v155;
    v165 = *(v114 + 164);
    v166 = *(v114 + 164);
    if (Constell_Prn <= 3u)
    {
      if (Constell_Prn <= 1u)
      {
        if (!Constell_Prn)
        {
LABEL_295:
          EvCrt_Illegal_switch_case("API_Get_Raw_Meas_Data", 6462);
          v172 = 0;
          v166 = *(v114 + 164);
          goto LABEL_298;
        }

LABEL_294:
        v172 = *(v114 + 160) + 604800 * v165;
        goto LABEL_298;
      }

      if (Constell_Prn == 2)
      {
        v173 = *(v114 + 172);
        v174 = *(v114 + 168);
        if (v173 > 0 || v174 >= 1)
        {
          v175 = v173 + 1461 * *(v114 + 174);
        }

        else
        {
          *&v265[0] = 0;
          API_Get_UTC_Cor(1, v265);
          v274[0] = 0;
          v275[0] = 0;
          v276 = 0.0;
          v166 = *(v114 + 164);
          GPS_To_Glon_Time(0, v166, *(v114 + 160), *v265, v274, v275, &v276);
          v175 = v275[0] + 1461 * v274[0];
          v174 = v276;
        }

        v172 = v174 + 86400 * v175 - 126316800;
        goto LABEL_298;
      }

LABEL_293:
      v165 -= 1024;
      goto LABEL_294;
    }

    if (Constell_Prn > 5u)
    {
      if (Constell_Prn != 6)
      {
        goto LABEL_295;
      }

      goto LABEL_293;
    }

    if (Constell_Prn != 4)
    {
      goto LABEL_294;
    }

    v167 = *(v114 + 160);
    v168 = v167 < 14;
    if (v167 >= 14)
    {
      v169 = -14;
    }

    else
    {
      v169 = 604786;
    }

    v170 = v169 + v167;
    if (v168)
    {
      v171 = -1357;
    }

    else
    {
      v171 = -1356;
    }

    v172 = v170 + 604800 * (v171 + v165);
LABEL_298:
    *(v116 + 16) = v172;
    v272 = 0;
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    memset(v265, 0, sizeof(v265));
    v273[0] = 0;
    *(v273 + 3) = 0;
    if (Comp_CurrState(0x1Eu, v166, v114, v265, *(v114 + 160) + -15.0, 0.0))
    {
      *(v116 + 24) = *(v265 + 8);
      *(v116 + 40) = *(&v265[1] + 1);
    }

    if (Comp_CurrState(0x1Eu, *(v114 + 164), v114, v265, *(v114 + 160) + -5.0, 0.0))
    {
      *(v116 + 48) = *(v265 + 8);
      *(v116 + 64) = *(&v265[1] + 1);
    }

    if (Comp_CurrState(0x1Eu, *(v114 + 164), v114, v265, *(v114 + 160) + 5.0, 0.0))
    {
      *(v116 + 72) = *(v265 + 8);
      *(v116 + 88) = *(&v265[1] + 1);
    }

    if (Comp_CurrState(0x1Eu, *(v114 + 164), v114, v265, *(v114 + 160) + 15.0, 0.0))
    {
      *(v116 + 96) = *(v265 + 8);
      *(v116 + 112) = *(&v265[1] + 1);
    }

    *(v116 + 120) = vmulq_f64(*(v114 + 96), vdupq_n_s64(0x41CDCD6500000000uLL));
    *(v116 + 136) = 0;
LABEL_307:
    if (++v104 != 218)
    {
      continue;
    }

    break;
  }

  v176 = *(v244 + 62);
  LOWORD(v225->f64[0]) = *(v244 + 62);
  WORD1(v225->f64[0]) = *(v244 + 212);
  BYTE4(v225->f64[0]) = *(v244 + 210);
  if (*(v244 + 60) == 1)
  {
    HIWORD(v225->f64[0]) = v176 - 1356;
    if (*(v244 + 48) < 14.0)
    {
      HIWORD(v225->f64[0]) = v176 - 1357;
    }

    LOWORD(v225->f64[1]) = v176 - 1024;
    WORD1(v225->f64[1]) = v176 - 1024;
  }

  v177 = *(v260 + 8972);
  if ((v177 - 3) >= 4)
  {
    v184 = v224;
    if (v177 == 1)
    {
      LOBYTE(v225[1].f64[0]) = v218[2];
    }
  }

  else
  {
    v178 = v218[3];
    v179 = v176 - 127;
    if (v179 <= (v178 | 0x400))
    {
      LOWORD(v179) = v178 | 0x400;
    }

    v180 = ((v179 - v178 - 769) & 0xFF00 | v178) + 1024;
    WORD2(v225->f64[1]) = v180;
    HIWORD(v225->f64[1]) = *(v218 + 2);
    LOBYTE(v225[1].f64[0]) = v218[2];
    LOWORD(v225[1].f64[1]) = v180;
    HIDWORD(v225[1].f64[1]) = *v218 << 12;
    v181 = *(v260 + 8976);
    v182.i64[0] = v181;
    v182.i64[1] = SHIDWORD(v181);
    v183 = vmulq_f64(vcvtq_f64_s64(v182), xmmword_299050930);
    v106[3592] = vextq_s8(v183, v183, 8uLL);
    v184 = v224;
  }

  if (*(v222 + 72) == 1)
  {
    v225[4].f64[1] = v222[3] * 0.931322575;
    v225[4].f64[0] = -v222[1] * 0.465661287;
    BYTE2(v225[3].f64[1]) = *(v222 + 8);
    LOWORD(v225[3].f64[1]) = *v222;
  }

  if ((*v223 - 3) <= 3)
  {
    v185 = *(v223 + 24);
    v186 = LOWORD(v225->f64[1]) - 31;
    if (v186 <= v185)
    {
      LOWORD(v186) = *(v223 + 24);
    }

    LOWORD(v225[5].f64[0]) = ((v186 - v185 + 63) & 0xFFC0) + v185;
    HIDWORD(v225[5].f64[0]) = *(v223 + 20);
    *(v225 + 88) = vmulq_f64(*(v223 + 4), vdupq_n_s64(0x41CDCD6500000000uLL));
  }

  if ((*v184 - 3) <= 3)
  {
    LOWORD(v225[6].f64[1]) = *(v184 + 4);
    HIDWORD(v225[6].f64[1]) = *(v184 + 8);
    v106[3597] = vmulq_f64(*(v184 + 12), vdupq_n_s64(0x41CDCD6500000000uLL));
  }

  if ((*(v184 + 3080) - 3) <= 3)
  {
    v187 = *(v184 + 3112);
    if (v187 > 0x3FF)
    {
      LOWORD(v187) = v187 - 1024;
    }

    LOWORD(v225[8].f64[0]) = v187;
    HIDWORD(v225[8].f64[0]) = *(v184 + 3108);
    *(v225 + 136) = vmulq_f64(*(v184 + 3084), vdupq_n_s64(0x41CDCD6500000000uLL));
  }

  if (*(v242 + 16) == 1 && *v242)
  {
    v188 = *(v242 + 48);
    *&v225[9].f64[1] = llround((*(v242 + 40) - v188) * 1000000000.0) + 604800000000000 * *(v242 + 32) - 1000000 * *(v242 + 24);
    v225[10].f64[0] = round(v188 * -1000000000.0) - v188 * -1000000000.0;
    v225[10].f64[1] = *(v244 + 872) * v25;
  }

  v189.f64[0] = *(v242 + 56);
  v189.f64[1] = *(v244 + 920);
  v106[3601] = vmulq_f64(v189, xmmword_299050940);
  v225[12].f64[0] = *(v244 + 176) * 299792458.0;
  v225[12].f64[1] = *(v244 + 880);
  v190 = *(v240 + 2032);
  v225[13].f64[0] = v190;
  LODWORD(v225[13].f64[1]) = 0;
  v191 = *(v240 + 2040);
  v192 = p_api;
  if (v191 >= 1)
  {
    v193 = *(p_api + 48);
    if (*(v193 + 16) == 1 && *v193 >= 3)
    {
      v190 = *(v193 + 40);
      v194 = v190 + 604800 * *(v193 + 32);
      v195 = v194 - v191;
      if (v194 <= 0)
      {
        v195 = -1;
      }
    }

    else
    {
      v195 = -1;
    }

    LODWORD(v225[13].f64[1]) = v195;
  }

  v196 = *(v192 + 56);
  v197 = v196[2239];
  if (v197)
  {
    LODWORD(v190) = v196[2240];
    v198 = vmovl_u16(*&vmovl_u8(*&v190));
    v199 = vshr_n_s32(vshl_n_s32(*v198.i8, 0x18uLL), 0x18uLL);
    v200.i64[0] = v199.i32[0];
    v200.i64[1] = v199.i32[1];
    v201 = vcvtq_f64_s64(v200);
    *v198.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v198, v198, 8uLL), 0x18uLL), 0x18uLL);
    v200.i64[0] = v198.i32[0];
    v200.i64[1] = v198.i32[1];
    v202.i32[1] = 1041235968;
    v202.i32[0] = v196[2241];
    LODWORD(v221->f64[0]) = v196[2238];
    *(v221 + 8) = vmulq_f64(v201, xmmword_299050950);
    *(v221 + 24) = vmulq_f64(vcvtq_f64_s64(v200), vdupq_n_s64(0x3E70000000000000uLL));
    v203 = vmovl_u16(*&vmovl_u8(v202));
    *&v201.f64[0] = vshr_n_s32(vshl_n_s32(*v203.i8, 0x18uLL), 0x18uLL);
    v200.i64[0] = SLODWORD(v201.f64[0]);
    v200.i64[1] = SHIDWORD(v201.f64[0]);
    v204 = vcvtq_f64_s64(v200);
    *v203.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v203, v203, 8uLL), 0x18uLL), 0x18uLL);
    v200.i64[0] = v203.i32[0];
    v200.i64[1] = v203.i32[1];
    *(v221 + 40) = vmulq_f64(v204, xmmword_299050960);
    *(v221 + 56) = vmulq_f64(vcvtq_f64_s64(v200), vdupq_n_s64(0x40F0000000000000uLL));
    if (v197 <= 6)
    {
      LODWORD(v221[4].f64[1]) = dword_299050A58[v197 - 1];
    }
  }

  return 1;
}

uint64_t API_Qual_Pos(const char *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a3;
  v8 = a2;
  v68 = *MEMORY[0x29EDCA608];
  v9 = *(p_api + 80);
  v62 = *(p_api + 176);
  v63 = *(p_api + 72);
  v10 = *(p_api + 136);
  v11 = (v10 + 27116);
  memset(v67, 0, sizeof(v67));
  v12 = v67;
  v65 = v67;
  v66 = &v68;
  v64[1] = v67;
  v13 = 81;
  v14 = 1u;
  do
  {
    v64[0] = v12 + 1;
    *v12 = v13;
    v12 = v64[0];
    if (v64[0] >= v66)
    {
      v12 = v65;
      v64[0] = v65;
    }

    v13 = aQualPos[v14++];
  }

  while (v14 != 11);
  v15 = *a1;
  if (*a1)
  {
    v16 = a1 + 1;
    do
    {
      v64[0] = v12 + 1;
      *v12 = v15;
      v12 = v64[0];
      if (v64[0] >= v66)
      {
        v12 = v65;
        v64[0] = v65;
      }

      v17 = *v16++;
      v15 = v17;
    }

    while (v17);
  }

  v18 = " NM";
  if (a2)
  {
    v18 = " SS";
  }

  v19 = *v18;
  if (*v18)
  {
    v20 = (v18 + 1);
    do
    {
      v64[0] = v12 + 1;
      *v12 = v19;
      v12 = v64[0];
      if (v64[0] >= v66)
      {
        v12 = v65;
        v64[0] = v65;
      }

      v21 = *v20++;
      v19 = v21;
    }

    while (v21);
  }

  v64[0] = v12 + 1;
  *v12 = 32;
  if (v64[0] >= v66)
  {
    v64[0] = v65;
  }

  sprintf_2d(v64, a3);
  v22 = v64[0]++;
  *v22 = 32;
  if (v64[0] >= v66)
  {
    v64[0] = v65;
  }

  sprintf_3d(v64, a4);
  if (a5)
  {
    v23 = v8;
  }

  else
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    v24 = a5 - (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  }

  else
  {
    v24 = 0;
  }

  sprintf_sp1d(v64, v24);
  v25 = 0;
  v26 = 32;
  v27 = v64[0];
  do
  {
    v64[0] = v27 + 1;
    *v27 = v26;
    v27 = v64[0];
    if (v64[0] >= v66)
    {
      v27 = v65;
      v64[0] = v65;
    }

    v26 = asc_299063204[++v25];
  }

  while (v25 != 2);
  if (v23)
  {
    if (v24 < v63[417])
    {
      v58 = a5;
      v59 = v63[417];
      v28 = "%s %s  - Deadline up %d  FixInt %d";
LABEL_112:
      v51 = 1;
      DbgLog_v(1, v28, v67, " TRUE ", v58, v59, v60, v61);
      return v51;
    }

    if (v7 == -1)
    {
      DbgLog_v(1, "%s %s  - Waiting for full time-out");
      return 0;
    }
  }

  v29 = *(v9 + 4);
  if (v8)
  {
    if (v29 <= 3)
    {
      DbgLog_v(1, "%s %s  - SS FixType %d < SV_2D");
      return 0;
    }
  }

  else if (v29 <= 0)
  {
    DbgLog_v(1, "%s %s  - NM FixType %d < INT_AID");
    return 0;
  }

  v30 = v8 ^ 1u;
  if (v7)
  {
    if (!a4)
    {
      LODWORD(a4) = 5 * v7;
    }
  }

  else
  {
    v31 = &v63[2 * v30];
    if (!a4)
    {
      LODWORD(a4) = v31[212];
    }

    v7 = v31[210];
  }

  v32 = 3 * v7;
  if (a4 < 3 * v7)
  {
    v32 = a4;
  }

  if (v23)
  {
    a4 = v32;
  }

  else
  {
    a4 = a4;
  }

  if (a5)
  {
    v8 = 0;
  }

  if (v8 != 1)
  {
    goto LABEL_67;
  }

  v33 = (v10 + 27116);
  v34 = v62 + 61952;
  if (*(v10 + 27136))
  {
    v35 = *v11;
    if (*v11 >= 4 && *(v62 + 62121) >= 4u && *(v62 + 61968) <= 10.0)
    {
      v36 = *(v9 + 56);
      if (v36 >= 6)
      {
        v37 = 10000;
        if ((v36 - 7) <= 4)
        {
          v37 = dword_299050A70[v36 - 7];
        }

        if (v35 >= 0xD)
        {
          v38 = 10;
        }

        else
        {
          v38 = v35 - 3;
        }

        v39 = v63[417] * v38;
        if (v39 >= 10000)
        {
          v39 = 10000;
        }

        v40 = v39 + v37;
        DbgLog_v(1, "%s %s  - SS Scaling required  %d", v67, " info ", v39 + v37);
        v7 = (v40 * v7) / 0x2710uLL;
        a4 = (v40 * a4) / 0x2710uLL;
LABEL_67:
        v34 = v62 + 61952;
        v33 = (v10 + 27116);
      }
    }
  }

  if (!a5 && v30)
  {
    if (v33[5] && *v33 && *(v34 + 169) >= 4u && *v34 <= 10.0 && *(v34 + 16) <= 20.0 && *(v9 + 56) >= 10)
    {
      v41 = v63[417] * v33[4];
      if (v41 >= 10000)
      {
        v41 = 10000;
      }

      v42 = v41 + 10000;
      DbgLog_v(1, "%s %s  - NM Scaling required  %d", v67, " info ", v41 + 10000);
      v7 = (v42 * v7) / 0x2710uLL;
      v33 = (v10 + 27116);
      v34 = v62 + 61952;
      a4 = (v42 * a4) / 0x2710uLL;
    }

    goto LABEL_85;
  }

  if (!a5)
  {
LABEL_85:
    v43 = *(v9 + 928);
    v45 = *(v9 + 848);
    goto LABEL_86;
  }

  v43 = *(v9 + 928);
  if (v43 > 10.0)
  {
    v43 = v43 * 1.5;
  }

  v44 = *(v9 + 848);
  v45 = v44 * 1.5;
  if (v44 <= 15.0)
  {
    v45 = *(v9 + 848);
  }

LABEL_86:
  v46 = v45;
  v47 = v43;
  if (v7 < v47 || a4 < v46)
  {
    DbgLog_v(1, "%s %s  - Insufficient :  H %d %d  V %d %d");
    return 0;
  }

  if (v8)
  {
    if (!*v63 && *(v9 + 56) >= 9 && *(v9 + 32) - *(v10 + 68180) >= 24001 && *v33 <= 0x3C)
    {
      v49 = v7 * 0.3 >= *(v34 + 796) && *(v34 + 16) <= 20.0;
      if (!v49 || (v63[15] & 0xFFFFFFFE) == 6 && (*(v10 + 241) & 1) != 0 || *(v62 + 6772) + 2 >= *(v9 + 385))
      {
        DbgLog_v(1, "%s %s  - Delay :  H %d %d  V %d %d  :  %d  :  %d  :  %d %d %d  :  %d %d", v67, " FALSE", v47, v7);
        return 0;
      }
    }

LABEL_111:
    v60 = v45;
    v61 = a4;
    v58 = v43;
    v59 = v7;
    v28 = "%s %s  - NM or noDL OK :  H %d %d  V %d %d";
    goto LABEL_112;
  }

  if (!a5 || v30)
  {
    goto LABEL_111;
  }

  v50 = *v33;
  if (*v33 < 0x11)
  {
    v52 = *(v62 + 6772);
    v54 = v52 > 2 || (v53 = *(v62 + 21676), v53 > 2) || *(v62 + 6772) && *(v9 + 385) <= v52 + 10 || *(v62 + 21676) && v53 + 10 >= *(v9 + 387);
    if (v50 >= 3 && !((v54 | *(v10 + 241)) & 1 | (*(v9 + 32) - *(v10 + 68180) < 7001)))
    {
      LODWORD(v43) = *(v34 + 800);
      v55 = *&v43;
      if (v7 * 0.3 >= *&v43)
      {
        LODWORD(v55) = *(v34 + 804);
        if (a4 * 0.3 >= *&v55 && *(v34 + 792) <= 0xAu)
        {
          v56 = *(v9 + 56);
          if (v56 >= 8 && (v7 > 0x31 || v56 != 8) && *(v62 + 1881) > 0x1Bu)
          {
            v60 = v46;
            v61 = a4;
            v58 = v47;
            v59 = v7;
            v28 = "%s %s  - OK :  H %d %d  V %d %d";
            goto LABEL_112;
          }
        }
      }
    }

    DbgLog_v(1, "%s %s  - Wait :  H %d %d  V %d %d  :  %d %d %d  :  %d %d  :  %d %d %d :  %d %d", v67, " FALSE", v47, v7, v46);
    return 0;
  }

  v51 = 1;
  DbgLog_v(1, "%s %s  - Already waited :  H %d %d  V %d %d  :  FixTime %d > 16", v67);
  return v51;
}

uint64_t API_Set_GPS_CBinEph(const char *a1, uint64_t a2, unsigned int *a3)
{
  result = Is_GN_API_Set_Allowed(a1);
  if (result)
  {
    v8 = a2 - 1;
    if ((a2 - 1) >= 0x20u)
    {
      v8 = a2 + 63;
      if ((a2 + 63) >= 0xAu)
      {
        EvCrt_v("%s FAILED:  SV = %d, Out of range !");
        return 0;
      }
    }

    if (*(a3 + 71) >= 2u)
    {
      EvCrt_v("%s FAILED: L5_Health = %d >1, Out of range!");
      return 0;
    }

    if (*(a3 + 72) >= 2u)
    {
      EvCrt_v("%s FAILED: Integrity = %d >1, Out of range!");
      return 0;
    }

    if (((*(a3 + 37) - 4096) >> 13) <= 6u)
    {
      EvCrt_v("%s FAILED: ISC_L1_CA = %d <-2^12 or >=2^12, Out of range!");
      return 0;
    }

    if (((*(a3 + 38) - 4096) >> 13) <= 6u)
    {
      EvCrt_v("%s FAILED: ISC_L5_Q5 = %d <-2^12 or >=2^12, Out of range!");
      return 0;
    }

    if ((*(a3 + 78) - 16) <= 0xDFu)
    {
      EvCrt_v("%s FAILED: URA = %d <-16 or >15, Out of range!");
      return 0;
    }

    v9 = *(p_api + 256);
    EvLog_nd(a1, 2, v7, a2, *a3);
    v10 = v9 + 80 * v8;
    if ((a2 - 1) <= 0x1Fu)
    {
      v15 = (v10 + 700);
      *v15 = *a3;
      v16 = *(a3 + 1);
      v17 = *(a3 + 2);
      v18 = *(a3 + 4);
      v15[3] = *(a3 + 3);
      v15[4] = v18;
      v15[1] = v16;
      v15[2] = v17;
      result = 1;
      *(v9 + v8 + 12) = 1;
    }

    else
    {
      v11 = (v10 + 4412);
      *v11 = *a3;
      v12 = *(a3 + 1);
      v13 = *(a3 + 2);
      v14 = *(a3 + 4);
      v11[3] = *(a3 + 3);
      v11[4] = v14;
      v11[1] = v12;
      v11[2] = v13;
      result = 1;
      *(v9 + v8 + 76) = 1;
    }
  }

  return result;
}

uint64_t API_Set_Ref_Time(int a1, double i, __int16 a3, double a4)
{
  LOWORD(v4) = a3;
  v49 = *MEMORY[0x29EDCA608];
  v5 = *p_api;
  if (v5 > 0xB || ((1 << v5) & 0xD2C) == 0)
  {
    EvCrt_d("API_Set_Ref_Time:  REJECTED.  Incompatible GPS Exe State ", v5);
    return 0;
  }

  v10 = *(p_api + 48);
  v11 = *(v10 + 28);
  v12 = v11 - a1;
  if (v11 - a1 >= 0)
  {
    v13 = v11 - a1;
  }

  else
  {
    v13 = a1 - v11;
  }

  if (v13 >= 0xDBBA1)
  {
    EvCrt_v("API_Set_Ref_Time:  WARNING  Large Time latency (%u - %u) = %d", a1, *(v10 + 28), v11 - a1);
  }

  if (v11 != a1)
  {
    for (i = v12 * 0.001 + i; i >= 604800.0; LOWORD(v4) = v4 + 1)
    {
      i = i + -604800.0;
    }

    while (i < 0.0)
    {
      i = i + 604800.0;
      LOWORD(v4) = v4 - 1;
    }

    a4 = a4 + v12 * 0.00000001;
  }

  v14 = 0;
  v15 = &qword_299050A08;
  while (v14 != 7)
  {
    v16 = *v15--;
    ++v14;
    if (a4 <= v16)
    {
      v17 = 8 - v14;
      goto LABEL_22;
    }
  }

  v17 = 0;
LABEL_22:
  v18 = *v10;
  if (*(v10 + 16) != 1 || v18 < 1)
  {
    v20 = 0.0;
    if (v18)
    {
LABEL_31:
      if (*(v10 + 16))
      {
        v4 = v4;
LABEL_52:
        EvLog_v("API_Set_Ref_Time:  Not Used.  %u  %d  %g  Sigma  %g  %d  dT  %g", a1, v4, i, a4, v18, v20);
        return 0;
      }

      *(v10 + 16) = 1;
      *(v10 + 32) = v4;
      EvLog_v("API_Set_Ref_Time:  Applied.  GPS Wk %d  ", v4);
      v47 = 0.0;
      *v48 = 0;
      API_Get_UTC_Cor(1, &v47);
      v23 = v47;
      GPS_To_Glon_Time(0, *(v10 + 32), *(v10 + 40), v47, v48, &v48[4], (v10 + 88));
      v24 = *v48;
      *(v10 + 84) = *&v48[4];
      *(v10 + 82) = v24;
      *(v10 + 80) = 1;
      *(v10 + 76) = *v10;
      v25 = -0.5;
      if (v23 > 0.0)
      {
        v25 = 0.5;
      }

      v26 = v23 + v25;
      if (v26 <= 2147483650.0)
      {
        if (v26 >= -2147483650.0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0x80000000;
        }
      }

      else
      {
        v27 = 0x7FFFFFFF;
      }

      GLON_Clear_SV_Ref_State_On_LeapSec_Jump(v27, v10, *(p_api + 88));
      *(v10 + 96) = v27;
      EvLog_v("API_Set_Ref_Time:  Glo Time  %d  %d  %d  %g  %d", *(v10 + 82), *(v10 + 84), *(v10 + 80), *(v10 + 88), *(v10 + 76));
      return 1;
    }

    v21 = p_api;
  }

  else
  {
    v22 = *(v10 + 40);
    v20 = v22 - i + (604800 * (*(v10 + 32) - v4));
    if (v17 <= v18 && v20 * v20 <= a4 * (a4 * 25.0))
    {
      goto LABEL_31;
    }

    EvLog_v("API_Set_Ref_Time: dT %g,  Sigma %g, (%g-%g), (%d-%d)", v20, a4, v22, i, *(v10 + 32), v4);
    *v10 = 0;
    *(v10 + 76) = 0;
    v21 = p_api;
    *(*(p_api + 128) + 12) = 0;
    v28 = *(v21 + 136);
    *(v28 + 136) = 1;
    *(v28 + 140) = 5;
    v29 = *(v21 + 72);
    *(v29 + 248) = 0;
    *(v29 + 256) = 0;
  }

  if (*v21 == 8 || *v21 == 5)
  {
    *v21 = 2;
  }

  EvLog_v("API_Set_Ref_Time:  Applied.  %u  %d  %g  Sigma  %g  %d  dT  %g", a1, v4, i, a4, v17, v20);
  if (!v17)
  {
    v4 = v4;
    EvCrt_v("API_Set_Ref_Time:  WARNING: Input Ref_Sigma too big !");
    v18 = *v10;
    goto LABEL_52;
  }

  *(v10 + 32) = v4;
  *(v10 + 40) = i;
  *(v10 + 16) = 1;
  *v10 = v17;
  *(v10 + 48) = 0;
  *(v10 + 100) = a1;
  if (v17 - 4 <= 4)
  {
    v31 = -0.5;
    if (i * 1000.0 > 0.0)
    {
      v31 = 0.5;
    }

    v32 = i * 1000.0 + v31;
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

    v35 = *(v10 + 24);
    v36 = *(v10 + 28);
    v37 = v33 - v35;
    LODWORD(v47) = 0;
    v48[4] = 0;
    if (Core_Load_TTick_Cal(v35, v36, v33 - v35, &v47, &v48[4]))
    {
      v38 = v48[4];
      v39 = v48[4] >= 0x5Au ? 6 : 7;
      v40 = v48[4] >= 0x1Eu ? v39 : 8;
      if (v40 >= v17)
      {
        v41 = LODWORD(v47);
        Inc_GPS_TOW(SLODWORD(v47) * 0.001, (v10 + 40), (v10 + 32));
        *v10 = v40;
        EvLog_v("API_Set_Ref_Time:  Calib.  %d  %g  %d  %d", v41, *(v10 + 40), v37, v38);
      }
    }
  }

  v47 = 0.0;
  *v48 = 0;
  API_Get_UTC_Cor(1, &v47);
  v42 = v47;
  GPS_To_Glon_Time(0, *(v10 + 32), *(v10 + 40), v47, v48, &v48[4], (v10 + 88));
  v43 = *v48;
  *(v10 + 84) = *&v48[4];
  *(v10 + 82) = v43;
  *(v10 + 80) = 1;
  *(v10 + 76) = *v10;
  v44 = -0.5;
  if (v42 > 0.0)
  {
    v44 = 0.5;
  }

  v45 = v42 + v44;
  if (v45 <= 2147483650.0)
  {
    if (v45 >= -2147483650.0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0x80000000;
    }
  }

  else
  {
    v46 = 0x7FFFFFFF;
  }

  GLON_Clear_SV_Ref_State_On_LeapSec_Jump(v46, v10, *(p_api + 88));
  *(v10 + 96) = v46;
  EvLog_v("API_Set_Ref_Time:  Glo Time  %d  %d  %d  %g  %d", *(v10 + 82), *(v10 + 84), *(v10 + 80), *(v10 + 88), *(v10 + 76));
  if (!*(v10 + 108))
  {
    *(v10 + 128) = *(v10 + 24);
    *(v10 + 108) = *v10;
    *(v10 + 120) = *(v10 + 40);
    if (!*(v10 + 112) && *(v10 + 16) == 1)
    {
      *(v10 + 112) = *(v10 + 32);
    }
  }

  return 1;
}

void GLON_Clear_SV_Ref_State_On_LeapSec_Jump(int a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  if (v3 >= 1 && v3 != a1)
  {
    v5 = a3 + 6144;
    v6 = 24;
    do
    {
      if ((*(v5 + 176) - 1) <= 1)
      {
        *(v5 + 175) = 0uLL;
        *(v5 + 144) = 0uLL;
        *(v5 + 160) = 0uLL;
        *(v5 + 112) = 0uLL;
        *(v5 + 128) = 0uLL;
        *(v5 + 80) = 0uLL;
        *(v5 + 96) = 0uLL;
        *(v5 + 48) = 0uLL;
        *(v5 + 64) = 0uLL;
        *(v5 + 16) = 0uLL;
        *(v5 + 32) = 0uLL;
        *v5 = 0uLL;
      }

      v5 += 192;
      --v6;
    }

    while (v6);
    EvLog_v("GLON_Clear_SV_Ref_State_On_LeapSec_Jump: Leap Sec jump [prev_LS: %d curr_LS: %d], Clearing Prev Computed GLON Orbit Ref States", *(a2 + 96), a1);
  }
}

uint64_t Is_GPS_IntEph_Valid(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 203) >= 0xFFFFFFF6)
  {
    v3 = 5;
  }

  else
  {
    v3 = (a2 - 1) < 0x20;
  }

  if (!v3)
  {
    EvCrt_v("%s FAILED: Sat_ID = %d, Out of range!");
    return 0;
  }

  if (*(a3 + 8) >= 4u)
  {
    EvCrt_v("%s FAILED: CodeOnL2 = %d >3, Out of range!");
    return 0;
  }

  if ((*(a3 + 9) - 16) <= 0xDFu)
  {
    EvCrt_v("%s FAILED: URA = %d <-16 or >15, Out of range!");
    return 0;
  }

  if (*(a3 + 10) >= 0x40u)
  {
    EvCrt_v("%s FAILED: SVHealth = %d >63, Out of range!");
    return 0;
  }

  if (*(a3 + 11) >= 2u)
  {
    EvCrt_v("%s FAILED: FitIntFlag = %d >1, Out of range!");
    return 0;
  }

  if (*(a3 + 12) >= 0x20u)
  {
    EvCrt_v("%s FAILED: AODA = %d >31, Out of range!");
    return 0;
  }

  if (*(a3 + 13) >= 2)
  {
    EvCrt_v("%s FAILED: L2Pflag = %d <0 or >1, Out of range!");
    return 0;
  }

  if (*(a3 + 16) >= 0xBDCu)
  {
    EvCrt_v("%s FAILED: Week = %d >=3036, Out of range!");
    return 0;
  }

  if (*(a3 + 22) >= 0x400u)
  {
    EvCrt_v("%s FAILED: IODC = %d >1023, Out of range!");
    return 0;
  }

  if (((*(a3 + 28) - 0x2000) >> 14) <= 2u)
  {
    EvCrt_v("%s FAILED: IDot = %d <-2^13 or >=2^13, Out of range!");
    return 0;
  }

  if ((*(a3 + 44) - 0x200000) >> 22 != 1023)
  {
    EvCrt_v("%s FAILED: af0 = %d <-2^21 or >=2^21, Out of range!");
    return 0;
  }

  v4 = *(a3 + 72);
  if ((v4 - 0x800000) >> 24 != 255)
  {
    EvCrt_v("%s FAILED: OmegaDot = %d <-2^23 or >=2^23, Out of range!");
    return 0;
  }

  v5 = 0.0;
  if ((a2 - 203) >= 0xFFFFFFF6)
  {
    v5 = 0.000000314159265;
  }

  v6 = v4 * 3.57157734e-13;
  if (v6 < -0.00000198862815)
  {
    EvCrt_v("%s FAILED: OmegaDot = %e < %e rad/s, Unrealistic value!");
    return 0;
  }

  if (v6 > v5)
  {
    EvCrt_v("%s FAILED: OmegaDot = %e > %e rad/s, Unrealistic value!");
    return 0;
  }

  if (*(a3 + 20) >= 0x93A8u)
  {
    EvCrt_v("%s FAILED: toe = %d >=37800, Out of range!");
    return 0;
  }

  if (*(a3 + 18) >= 0x93A8u)
  {
    EvCrt_v("%s FAILED: toc = %d >37800, Out of range!");
    return 0;
  }

  if (v3 == 5)
  {
    v7 = 0.1;
  }

  else
  {
    v7 = 0.03;
  }

  LODWORD(v5) = *(a3 + 52);
  if (*&v5 * 1.16415322e-10 > v7)
  {
    EvCrt_v("%s FAILED: e = %g > %g, Unrealistic value!");
    return 0;
  }

  if (v3 == 5)
  {
    v8 = 7000.0;
  }

  else
  {
    v8 = 5800.0;
  }

  v9 = vcvtd_n_f64_u32(*(a3 + 56), 0x13uLL);
  if (v9 < 4800.0)
  {
    EvCrt_v("%s FAILED: APowerHalf = %g < %g, Unrealistic value!");
    return 0;
  }

  if (v9 > v8)
  {
    EvCrt_v("%s FAILED: APowerHalf = %g > %g, Unrealistic value!");
    return 0;
  }

  if (*(a3 + 76) >= 2u)
  {
    EvCrt_v("%s FAILED: L5_Health = %d >1, Out of range!");
    return 0;
  }

  if (*(a3 + 77) >= 2u)
  {
    EvCrt_v("%s FAILED: Integrity = %d >1, Out of range!");
    return 0;
  }

  if (((*(a3 + 78) - 4096) >> 13) <= 6u)
  {
    EvCrt_v("%s FAILED: ISC_L1_CA = %d <-2^12 or >=2^12, Out of range!");
    return 0;
  }

  if (((*(a3 + 80) - 4096) >> 13) <= 6u)
  {
    EvCrt_v("%s FAILED: ISC_L5_Q5 = %d <-2^12 or >=2^12, Out of range!");
    return 0;
  }

  return 1;
}

void EvLog_ABDS_CNAV_Eph_El(unsigned __int8 *a1)
{
  v3 = a1[1];
  v1 = a1[131];
  v2 = a1[132];
  EvLog_v("GN_ABDS_Set_CNAV_Eph_El: %2u %2u %1u %1u %6u  %4u %4u %4u %4u  %9d %8d  %6d %8d  %11D %11U %11D %11D %11D  %7d %6d  %6d %6d %8d %8d %8d %8d   %9d %8d %5d %5u  %2u %1u %1u %2u  %5d %5d %5d %5d  %1u %1u %1u %1u %1u %1u  %1d  %4d  %1u", *a1, v3, a1[2], a1[3], *(a1 + 1), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 4), *(a1 + 5), *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 18), *(a1 + 38), *(a1 + 39), *(a1 + 40), *(a1 + 21), *(a1 + 22), *(a1 + 23), *(a1 + 24), *(a1 + 25), *(a1 + 26), *(a1 + 54), *(a1 + 55), a1[112], a1[113], a1[114], a1[115], *(a1 + 58), *(a1 + 59), *(a1 + 60), *(a1 + 61), a1[124], a1[125], a1[126], a1[127], a1[128], a1[129], a1[130], v1, v2);
}

uint64_t API_Get_Default_PR_ms_Amb(int a1)
{
  if (a1 == 7)
  {
    v1 = 129;
  }

  else
  {
    v1 = 77;
  }

  if (a1 == 6)
  {
    v2 = 120;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 5)
  {
    v3 = 129;
  }

  else
  {
    v3 = v2;
  }

  if (BYTE2(a1) - 59 >= 0xFFFFFFCB)
  {
    v4 = 81;
  }

  else
  {
    v4 = 119;
  }

  if (a1 == 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 77;
  }

  if (a1 == 3)
  {
    v5 = 87;
  }

  if (a1 == 2)
  {
    v5 = 73;
  }

  if (a1 <= 4u)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t Complete_NVIC_WeekNo(unsigned int a1)
{
  if (a1 > 0x3FF)
  {
    return a1;
  }

  else
  {
    v1 = *(p_api + 48);
    if (*(v1 + 16) == 1 && *v1 >= 3 && (v2 = *(v1 + 40) + 604800 * *(v1 + 32), v2 > 1238630399))
    {
      v3 = v2 / 0x93A80u - 1024;
    }

    else
    {
      v3 = *(*(p_api + 72) + 1734) - 512;
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

uint64_t API_Set_SH_Iono_Model(uint64_t a1)
{
  v2 = *(p_api + 112);
  *(v2 + 8) = 0;
  *(v2 + 3184) = 0;
  *(v2 + 6360) = 0;
  if (*(a1 + 6))
  {
    v3 = 0;
    v4 = a1;
    while (1)
    {
      v5 = v2 + 8 + 3176 * *(v4 + 8);
      v6 = v5 - 3176;
      *v6 = *(v4 + 8);
      *(v6 + 2) = *(v4 + 10);
      v7 = *(v4 + 16);
      *(v6 + 8) = v7;
      *(v6 + 1104) = *(v4 + 18);
      *(v6 + 2072) = *(v4 + 2072);
      memcpy((v5 - 3160), (v4 + 24), 8 * v7);
      v8 = *(v4 + 18);
      if (*(v6 + 1104) < v8)
      {
        __assert_rtn("API_Set_SH_Iono_Model", "GNSS_Core_api.cpp", 9589, "(SHio->Layers[ Layer_Index ].Sin_Num * sizeof(R8)) >= (p_SH_Iono_Model->Layer[ i ].Sin_Num * sizeof(R8))");
      }

      memcpy((v6 + 1112), (v4 + 1112), 8 * v8);
      v9 = *(v4 + 12);
      if (*(v6 + 4) == v9)
      {
        v10 = *(v4 + 14);
        if (*(v6 + 6) == v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = *(v4 + 14);
      }

      *(v6 + 4) = v9;
      *(v6 + 6) = v10;
      Compute_Legendre_Normalisations(v9, v10, (v6 + 2088), (v6 + 2080));
LABEL_9:
      ++v3;
      v4 += 2072;
      if (v3 >= *(a1 + 6))
      {
        goto LABEL_12;
      }
    }
  }

  LOWORD(v3) = 0;
LABEL_12:
  *(v2 + 4) = *(a1 + 4);
  *v2 = *a1;
  *(v2 + 6) = v3;
  return 1;
}

void *GNSS_HL_System_Start_Up(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v152 = *MEMORY[0x29EDCA608];
  v5 = *(v1[7] + 62170);
  if (!v2)
  {
    GNSS_HL_Data_Bases_Init_NV(v1);
    GNSS_HL_Data_Bases_TimeSynch(v4, v72, v73);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = v1[9];
  v7 = *(v1[15] + 440);
  v8 = *(v6 + 13);
  v9 = *(v6 + 1734);
  v10 = *(v6 + 264);
  v11 = *(v6 + 232);
  v12 = *(v6 + 240);
  v101 = *(v6 + 104);
  v102 = *(v6 + 72);
  v97 = *(v6 + 120);
  v98 = *(v6 + 88);
  v99 = *(v6 + 168);
  v100 = *(v6 + 136);
  v95 = *(v6 + 184);
  v96 = *(v6 + 152);
  v93 = *(v6 + 216);
  v94 = *(v6 + 200);
  v147 = xmmword_2A143B0A0;
  v148 = unk_2A143B0B0;
  v149 = xmmword_2A143B0C0;
  v150 = unk_2A143B0D0;
  v143 = xmmword_2A143B060;
  v144 = *algn_2A143B070;
  v145 = xmmword_2A143B080;
  v146 = unk_2A143B090;
  v13 = *(v6 + 441);
  __src[10] = *(v6 + 425);
  __src[11] = v13;
  __src[12] = *(v6 + 457);
  *(&__src[12] + 10) = *(v6 + 467);
  v14 = *(v6 + 377);
  __src[6] = *(v6 + 361);
  __src[7] = v14;
  v15 = *(v6 + 409);
  __src[8] = *(v6 + 393);
  __src[9] = v15;
  v16 = *(v6 + 313);
  __src[2] = *(v6 + 297);
  __src[3] = v16;
  v17 = *(v6 + 345);
  __src[4] = *(v6 + 329);
  __src[5] = v17;
  v18 = *(v6 + 281);
  __src[0] = *(v6 + 265);
  __src[1] = v18;
  v19 = *(v6 + 720);
  v140 = *(v6 + 704);
  v141 = v19;
  v142[0] = *(v6 + 736);
  *(v142 + 10) = *(v6 + 746);
  v20 = *(v6 + 656);
  v136 = *(v6 + 640);
  v137 = v20;
  v21 = *(v6 + 688);
  v138 = *(v6 + 672);
  v139 = v21;
  v22 = *(v6 + 592);
  v132 = *(v6 + 576);
  v133 = v22;
  v23 = *(v6 + 624);
  v134 = *(v6 + 608);
  v135 = v23;
  v24 = *(v6 + 560);
  v130 = *(v6 + 544);
  v131 = v24;
  v25 = *(v6 + 1000);
  v127 = *(v6 + 984);
  v128 = v25;
  v129[0] = *(v6 + 1016);
  *(v129 + 10) = *(v6 + 1026);
  v26 = *(v6 + 936);
  v123 = *(v6 + 920);
  v124 = v26;
  v27 = *(v6 + 968);
  v125 = *(v6 + 952);
  v126 = v27;
  v28 = *(v6 + 872);
  v119 = *(v6 + 856);
  v120 = v28;
  v29 = *(v6 + 904);
  v121 = *(v6 + 888);
  v122 = v29;
  v30 = *(v6 + 840);
  v117 = *(v6 + 824);
  v118 = v30;
  v31 = *(v6 + 1280);
  v114 = *(v6 + 1264);
  v115 = v31;
  v116[0] = *(v6 + 1296);
  *(v116 + 10) = *(v6 + 1306);
  v32 = *(v6 + 1216);
  v110 = *(v6 + 1200);
  v111 = v32;
  v33 = *(v6 + 1248);
  v112 = *(v6 + 1232);
  v113 = v33;
  v34 = *(v6 + 1152);
  v106 = *(v6 + 1136);
  v107 = v34;
  v35 = *(v6 + 1184);
  v108 = *(v6 + 1168);
  v109 = v35;
  v36 = *(v6 + 1120);
  v104 = *(v6 + 1104);
  v105 = v36;
  v37 = *(qword_2A1454208 + 16);
  v151[0] = *qword_2A1454208;
  v151[1] = v37;
  v38 = *(qword_2A1454208 + 80);
  v40 = *(qword_2A1454208 + 32);
  v39 = *(qword_2A1454208 + 48);
  v151[4] = *(qword_2A1454208 + 64);
  v151[5] = v38;
  v151[2] = v40;
  v151[3] = v39;
  EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v151);
  GNSS_HL_Data_Bases_Clear(v4);
  GNSS_HL_Data_Bases_Init(v4);
  GNSS_HL_Data_Bases_Init_NV(v4);
  v41 = *(v4 + 72);
  *(v41 + 1772) = v7;
  *(v41 + 13) = v8;
  *(v41 + 1734) = v9;
  *(v41 + 264) = v10;
  *(v6 + 216) = v93;
  *(v6 + 200) = v94;
  *(v6 + 232) = v11;
  *(v6 + 240) = v12;
  *(v6 + 88) = v98;
  *(v6 + 72) = v102;
  *(v6 + 120) = v97;
  *(v6 + 104) = v101;
  *(v6 + 152) = v96;
  *(v6 + 136) = v100;
  *(v6 + 184) = v95;
  *(v6 + 168) = v99;
  xmmword_2A143B0C0 = v149;
  unk_2A143B0D0 = v150;
  xmmword_2A143B080 = v145;
  unk_2A143B090 = v146;
  xmmword_2A143B0A0 = v147;
  unk_2A143B0B0 = v148;
  xmmword_2A143B060 = v143;
  *algn_2A143B070 = v144;
  v42 = (*(v4 + 72) + 265);
  v43 = __src[1];
  *v42 = __src[0];
  v42[1] = v43;
  v44 = __src[5];
  v42[4] = __src[4];
  v42[5] = v44;
  v45 = __src[3];
  v42[2] = __src[2];
  v42[3] = v45;
  v46 = __src[9];
  v42[8] = __src[8];
  v42[9] = v46;
  v47 = __src[7];
  v42[6] = __src[6];
  v42[7] = v47;
  *(v42 + 202) = *(&__src[12] + 10);
  v48 = __src[12];
  v42[11] = __src[11];
  v42[12] = v48;
  v42[10] = __src[10];
  v49 = *(v4 + 72);
  v50 = v131;
  v49[34] = v130;
  v49[35] = v50;
  v51 = v135;
  v49[38] = v134;
  v49[39] = v51;
  v52 = v133;
  v49[36] = v132;
  v49[37] = v52;
  v53 = v139;
  v49[42] = v138;
  v49[43] = v53;
  v54 = v137;
  v49[40] = v136;
  v49[41] = v54;
  v55 = v142[0];
  v56 = v140;
  v49[45] = v141;
  v49[46] = v55;
  v49[44] = v56;
  *(v49 + 746) = *(v142 + 10);
  v57 = (*(v4 + 72) + 824);
  v58 = v118;
  *v57 = v117;
  v57[1] = v58;
  v59 = v122;
  v57[4] = v121;
  v57[5] = v59;
  v60 = v120;
  v57[2] = v119;
  v57[3] = v60;
  v61 = v126;
  v57[8] = v125;
  v57[9] = v61;
  v62 = v124;
  v57[6] = v123;
  v57[7] = v62;
  *(v57 + 202) = *(v129 + 10);
  v63 = v129[0];
  v64 = v127;
  v57[11] = v128;
  v57[12] = v63;
  v57[10] = v64;
  v65 = *(v4 + 72);
  v66 = v104;
  v65[70] = v105;
  v65[69] = v66;
  v67 = v108;
  v65[74] = v109;
  v65[73] = v67;
  v68 = v106;
  v65[72] = v107;
  v65[71] = v68;
  v69 = v112;
  v65[78] = v113;
  v65[77] = v69;
  v70 = v110;
  v65[76] = v111;
  v65[75] = v70;
  v65[81] = v116[0];
  v71 = v114;
  v65[80] = v115;
  v65[79] = v71;
  *(v65 + 1306) = *(v116 + 10);
  GN_GPS_Set_Config(v151);
  if (v5)
  {
LABEL_5:
    *(*(v4 + 56) + 62170) = 1;
  }

LABEL_6:
  v74 = *(v4 + 8);
  v75 = *(v4 + 16);
  v76 = *v74;
  *v75 = *v74;
  *(v75 + 4) = v74[4];
  *(v75 + 8) = *(v74 + 3);
  v78 = *(v4 + 72);
  v77 = *(v4 + 80);
  v79 = *(v78 + 1676);
  v80 = v79 + v76;
  if (!v79)
  {
    v80 = 0;
  }

  *(v78 + 1728) = v80;
  v81 = *(v78 + 240);
  if (*(v78 + 240))
  {
    *(v78 + 1712) = 0;
    *(v78 + 1720) = v81 * 0.000000001;
    *(v77 + 920) = 0x4163125300000000;
    *(v77 + 184) = 0;
    *(p_NA + 6) = 0;
  }

  SV_Data_Decode_Init(*(v4 + 144));
  SV_Data_Decode_Update_Wrapper(v4);
  GPS_State_Update_Init(*(v4 + 152), *(v4 + 192), *(v4 + 48), *(v4 + 56), *(v4 + 72), *(v4 + 80), *(v4 + 88));
  GLON_State_Update_Init(*(v4 + 152), *(v4 + 48), *(v4 + 56), *(v4 + 88));
  bzero(*(v4 + 128), 0xC70uLL);
  SV_Gen_Meas_Update_Wrapper(v4);
  Nav_Kalman_Update_Init(*(v4 + 136));
  Nav_Kalman_Update_Wrapper(v4);
  if (v3)
  {
    v82 = *(v4 + 104);
    *(v82 + 248) = *(v82 + 240);
    *(v82 + 308) = 0;
    v83 = *(v4 + 104);
    *(v83 + 320) = *(v83 + 312);
    *(v83 + 380) = 0;
    v84 = *(v4 + 104);
    *(v84 + 392) = *(v84 + 384);
    *(v84 + 452) = 0;
  }

  v85 = *(v4 + 160);
  *(v85 + 48) = 0;
  *(v85 + 16) = 0u;
  *(v85 + 32) = 0u;
  *v85 = 0u;
  *(v85 + 2) = -1;
  *v85 = 1;
  Pre_Positioning_Update_Wrapper(v4);
  bzero(__src, 0x6E60uLL);
  v86 = -7168;
  do
  {
    v87 = __src + v86;
    *(v87 + 967) = 0;
    *(v87 + 7748) = 0;
    *(v87 + 3872) = 0;
    *(v87 + 973) = 0;
    *(v87 + 485) = 0uLL;
    *(&__src[485] + v86 + 14) = 0;
    v86 += 56;
  }

  while (v86);
  v88 = &__src[485] + 8;
  v89 = 4608;
  do
  {
    *(v88 - 2) = 0;
    *(v88 - 3) = 0;
    *(v88 - 2) = 0;
    *(v88 - 4) = 0;
    *(v88 - 11) = 0;
    v88 += 36;
    v89 -= 36;
  }

  while (v89);
  v90 = -15872;
  do
  {
    v91 = (&__src[1763] + v90 + 8);
    *(v91 + 105) = 0uLL;
    v91[5] = 0uLL;
    v91[6] = 0uLL;
    v91[3] = 0uLL;
    v91[4] = 0uLL;
    v91[1] = 0uLL;
    v91[2] = 0uLL;
    *v91 = 0uLL;
    v90 += 124;
  }

  while (v90);
  *&__src[1765] = 0;
  DWORD2(__src[1765]) = 0;
  *(&__src[1763] + 8) = 0u;
  *(&__src[1764] + 6) = 0;
  result = memcpy(*(v4 + 120), __src, 0x6E5CuLL);
  *(*(v4 + 120) + 384) = *(v4 + 120);
  *v4 = 11;
  return result;
}