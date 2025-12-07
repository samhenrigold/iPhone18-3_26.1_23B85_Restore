unsigned int *sub_FB0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  result = sub_17004C(a1, a2, a3);
  if (result)
  {
    result = sub_162230(result, v6, a5);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t sub_FB108(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, uint64_t a11, int a12, int a13)
{
  v14 = a7;
  v15 = a6;
  v31 = a5;
  if (a1)
  {
    v20 = a13;
    v21 = 1;
    v22 = a1;
  }

  else if (a8 < 0)
  {
    if (a2)
    {
      v20 = a13;
      v21 = 7;
      v22 = a2;
    }

    else
    {
      v22 = 3;
      if (a9 == 1)
      {
        v20 = a13;
        v21 = 8;
      }

      else
      {
        v20 = a13;
        if (((a13 + 15) >> 4) * ((a12 + 15) >> 4) <= 3600)
        {
          v22 = 1;
        }

        else
        {
          v22 = 3;
        }

        v21 = 9;
      }
    }
  }

  else
  {
    v20 = a13;
    if (a8)
    {
      if (a10)
      {
        v21 = 5;
        if (a10 < 0)
        {
          v22 = 5;
        }

        else
        {
          v25 = sub_FB0C8(a3, a5, a6, a7, a11);
          if (v25 <= 5)
          {
            v22 = 5;
          }

          else
          {
            v22 = v25;
          }

          v21 = 6;
        }
      }

      else
      {
        if (a4 > 29)
        {
          v21 = 3;
        }

        else
        {
          v21 = 4;
        }

        if (a4 <= 29)
        {
          v22 = 5;
        }

        else
        {
          v22 = 7;
        }
      }
    }

    else
    {
      v22 = 3;
      v21 = 2;
    }
  }

  if (sub_160EF0(0x10u, 8))
  {
    v30 = a3;
    v23 = sub_160F34(0x10u);
    v28 = sub_175AE4();
    v24 = sub_160F68(8);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d\n", v28, 16, v24, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30, a4, v31, v15, v14, a8, a9, a10, a11, a12, v20, v21, v22);
      v29 = sub_175AE4();
      v27 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", v29, 16, v27, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d | %d %d %d | %d %d %d %lld | %d %d | %d %d", v28, 16, v24, "AVE_Enc_DecideThroughputMode", 332, a1, a2, v30);
    }
  }

  return v22;
}

uint64_t sub_FB3F0(int a1, int a2, int a3, int a4, int a5)
{
  if (a5 < 0)
  {
    v10 = 24;
  }

  else
  {
    v10 = 48;
  }

  if (a5 >= 0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  v12 = a5 + 24;
  if (a5 >= 0)
  {
    v13 = 12;
  }

  else
  {
    v12 = 24;
    v13 = 2;
  }

  if (a4 == 1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a3 == 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 24;
  }

  if (a3 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 5;
  }

  if (a2 == 2)
  {
    v16 = 24;
  }

  else
  {
    v16 = v14;
  }

  if (a2 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  if (sub_160EF0(0x10u, 8))
  {
    v18 = sub_160F34(0x10u);
    v19 = sub_175AE4();
    v20 = sub_160F68(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d\n", v19, 16, v20, "AVE_Enc_DecideInputQueueMaxCnt", 494, a1, a2, a3, a4, a5, v16, v17);
      v21 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", v21, 16, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d | %d %d", v19, 16, v20);
    }
  }

  return v16;
}

uint64_t sub_FB584(uint64_t a1, double a2)
{
  v4 = (a1 + 10784);
  v5 = (a2 * 100.0 + 0.5);
  if (sub_160EF0(0x1Eu, 6))
  {
    v6 = sub_160F34(0x1Eu);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", v7, 30, v8, "AVE_HEVC_SetQuality", a2, a1);
      v9 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v9, 30, v18, "AVE_HEVC_SetQuality", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 30, v8, "AVE_HEVC_SetQuality", a2, a1);
    }
  }

  if (v5 > 0x63)
  {
    if (v5 == 100)
    {
      v12 = 0;
      *(a1 + 1144) = 0;
      *(a1 + 39959) = 1;
      *(a1 + 1152) = 0;
      v4[74] = 1;
      *(a1 + 10604) = 0;
      *(a1 + 1448) |= 0x200uLL;
    }

    else
    {
      v12 = 4294966295;
    }

    goto LABEL_21;
  }

  v10 = *(a1 + 10752);
  if (!*(a1 + 24732))
  {
    if (v10 != 2)
    {
      v13 = a33222111000_0[v5];
      goto LABEL_17;
    }

    v11 = a3210[v5];
LABEL_16:
    v12 = 0;
    *(a1 + 1144) = v11;
    *(a1 + 1148) = v11;
    *(a1 + 1152) = v11;
    v4[73] = 1;
    goto LABEL_21;
  }

  if (v10 == 2)
  {
    v11 = byte_185AC0[v5];
    goto LABEL_16;
  }

  v13 = byte_185B25[v5];
LABEL_17:
  *(a1 + 1144) = v13;
  *(a1 + 1148) = v13;
  *(a1 + 1152) = v13;
  v4[73] = 1;
  if (*v4 == 1 && *(a1 + 1132) != 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    *v4 = 1;
    *(a1 + 1132) = 3;
  }

LABEL_21:
  if (sub_160EF0(0x1Eu, 6))
  {
    v14 = sub_160F34(0x1Eu);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v15, 30, v16, "AVE_HEVC_SetQuality", a2, a1, v12);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v12;
}

uint64_t sub_FB84C(uint64_t a1, double a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", v5, 12, v6, "AVE_HEVC_SetCQFactor", a2, a1);
      v7 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 12, v18, "AVE_HEVC_SetCQFactor", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v5, 12, v6, "AVE_HEVC_SetCQFactor", a2, a1);
    }
  }

  if ((*(a1 + 1123) & 0x80) != 0 && *(a1 + 10752) != 2 && (*(a1 + 10784) != 1 || (v12 = *(a1 + 1132), v12 == 8) || v12 == 6))
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v15 = sub_160F34(0xCu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]\n", v16, 12, v17, "AVE_HEVC_SetCQFactor", 243, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2);
          v16 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]", v16, 12);
      }

      v8 = 4294966295;
    }

    else
    {
      v8 = 0;
      *(a1 + 1200) = a2;
      *(a1 + 10784) = 1;
      if (*(a1 + 1208) <= 0)
      {
        v13 = 8;
      }

      else
      {
        v13 = 6;
      }

      *(a1 + 1132) = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v9 = sub_160F34(0xCu);
    v10 = sub_175AE4();
    v11 = sub_160F68(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v10, 12, v11, "AVE_HEVC_SetCQFactor", a2, a1, v8);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v8;
}

uint64_t sub_FBB5C(const void *a1, const __CFString *a2, const void *a3)
{
  if (sub_160EF0(0xCu, 8))
  {
    v6 = sub_160F34(0xCu);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 12, v8, "AVE_Session_HEVC_SetProperty", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2)
  {
    v9 = sub_83BD8(a1, a2, a3);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v10 = sub_160F34(0xCu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 12, v12, "AVE_Session_HEVC_SetProperty", 272, "pINS != __null && pKey != __null", a1, a2, a3);
        v13 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 12, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 12, v12);
      }
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0xCu, 8))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 12, v16, "AVE_Session_HEVC_SetProperty", a1, a2, a3, v9);
      v15 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 12);
  }

  return v9;
}

uint64_t sub_FBE00(uint64_t a1)
{
  v36 = 0uLL;
  v37 = 0;
  v2 = sub_1502C8();
  if (sub_160EF0(0xCu, 6))
  {
    v3 = sub_160F34(0xCu);
    v4 = sub_175AE4();
    v5 = sub_160F68(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v4, 12, v5, "AVE_Session_HEVC_CreatePropertyDict", a1);
      v6 = sub_175AE4();
      v32 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 12, v32, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v5, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(0xCu, 4))
    {
      v14 = sub_160F34(0xCu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_HEVC_CreatePropertyDict", 294, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v13 = 4294966295;
    goto LABEL_37;
  }

  v7 = 0;
  while (1)
  {
    if (v7 == 1)
    {
      v8 = 256;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v8 = 512;
    }

    v9 = v2[396] ? 1 : 2;
    v10 = v9 | v8;
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(&v36 + v7) = Mutable;
    if (!Mutable)
    {
      break;
    }

    v12 = sub_83978(*(a1 + 68), v10, *(a1 + 56), Mutable);
    if (v12)
    {
      v13 = v12;
      if (sub_160EF0(0xCu, 4))
      {
        v21 = sub_160F34(0xCu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d\n", v22, 12, v23, "AVE_Session_HEVC_CreatePropertyDict", 329, "ret == 0", a1, *(a1 + 56), v10, *(a1 + 68), v13);
          v24 = sub_175AE4();
          v34 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v24, 12, v34, "AVE_Session_HEVC_CreatePropertyDict");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v22, 12, v23, "AVE_Session_HEVC_CreatePropertyDict");
        }
      }

      goto LABEL_33;
    }

LABEL_16:
    if (++v7 == 3)
    {
      v13 = 0;
      *(a1 + 80) = v36;
      *(a1 + 96) = v37;
      goto LABEL_37;
    }
  }

  if (sub_160EF0(0xCu, 4))
  {
    v17 = sub_160F34(0xCu);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v18, 12, v19, "AVE_Session_HEVC_CreatePropertyDict", 324, "paDict[i] != __null", a1, *(a1 + 56), v10, *(a1 + 68), 0);
      v20 = sub_175AE4();
      v33 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v20, 12, v33, "AVE_Session_HEVC_CreatePropertyDict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v18, 12, v19, "AVE_Session_HEVC_CreatePropertyDict");
    }
  }

  v13 = 4294966293;
LABEL_33:
  for (i = 0; i != 24; i += 8)
  {
    v26 = *(&v36 + i);
    if (v26)
    {
      CFRelease(v26);
      *(&v36 + i) = 0;
    }
  }

LABEL_37:
  if (sub_160EF0(0xCu, 6))
  {
    v27 = sub_160F34(0xCu);
    v28 = sub_175AE4();
    v29 = sub_160F68(6);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v28, 12, v29, "AVE_Session_HEVC_CreatePropertyDict", a1, v13);
      v30 = sub_175AE4();
      v35 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v30, 12, v35, "AVE_Session_HEVC_CreatePropertyDict", a1, v13);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v28, 12, v29, "AVE_Session_HEVC_CreatePropertyDict", a1, v13);
    }
  }

  return v13;
}

uint64_t sub_FC344(uint64_t a1)
{
  if (sub_160EF0(0xCu, 6))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_Session_HEVC_Stop", a1);
      v5 = sub_175AE4();
      v19 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_HEVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_Session_HEVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = sub_175AE4();
    sub_140028(v6, 4u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v21 = sub_175AE4();
      v8 = sub_12D170(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 104712);
    v13 = sub_175AE4();
    sub_1403FC(v12, 4u, v13);
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v9 = sub_160F34(0xCu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_HEVC_Stop", 366, "pINS != __null", 0);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v10);
    }

    v8 = 4294966295;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
      v17 = sub_175AE4();
      v20 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_HEVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t sub_FC5F0(uint64_t a1)
{
  if (sub_160EF0(0xCu, 6))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 12, v4, "AVE_Session_HEVC_Destroy", a1);
      v5 = sub_175AE4();
      v42 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v42, "AVE_Session_HEVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 12, v4, "AVE_Session_HEVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = sub_175AE4();
    sub_140028(v6, 1u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v44 = sub_175AE4();
      sub_12C9EC(*(a1 + 120), &v44, 0);
    }

    if (sub_160EF0(2u, 0))
    {
      v8 = sub_160F34(2u);
      v9 = sub_175AE4();
      v10 = sub_160F68(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 104648);
      v15 = sub_129124(*(a1 + 120));
      v16 = sub_129148(*(a1 + 120));
      if (v8)
      {
        printf("%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld\n", v9, 2, v10, v11, v12, v13, v14, v15, v16);
        v9 = sub_175AE4();
        v10 = sub_160F68(0);
        sub_129124(*(a1 + 120));
        sub_129148(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v20 = sub_12916C(*(a1 + 120));
    *(a1 + 120) = 0;
    v21 = *(a1 + 104712);
    v22 = sub_175AE4();
    sub_1403FC(v21, 1u, v22);
    sub_1407CC(*(a1 + 104712));
    sub_140BA4(*(a1 + 104712), 16, 6, 0, 0);
    sub_151B10();
    v23 = *(a1 + 104704);
    if (v23)
    {
      sub_153A34(v23);
      operator delete();
    }

    v24 = *(a1 + 104712);
    if (v24)
    {
      sub_13FB64(v24);
      *(a1 + 104712) = 0;
    }

    v25 = *(a1 + 104720);
    if (v25)
    {
      sub_CCDA4(v25);
      sub_CC04C(*(a1 + 104720));
      *(a1 + 104720) = 0;
    }

    v26 = *(a1 + 104728);
    if (v26)
    {
      sub_D7B88(v26);
      operator delete();
    }

    v27 = *(a1 + 104736);
    if (v27)
    {
      sub_16934(v27);
      operator delete();
    }

    v28 = *(a1 + 104656);
    if (v28)
    {
      CFRelease(v28);
      *(a1 + 104656) = 0;
    }

    v29 = 0;
    v30 = a1 + 80;
    do
    {
      v31 = *(v30 + v29);
      if (v31)
      {
        CFRelease(v31);
        *(v30 + v29) = 0;
      }

      v29 += 8;
    }

    while (v29 != 24);
    v32 = *(a1 + 104);
    if (v32)
    {
      CFRelease(v32);
      *(a1 + 104) = 0;
    }

    v33 = *(a1 + 107992);
    if (v33)
    {
      CFRelease(v33);
      *(a1 + 107992) = 0;
    }

    v34 = *(a1 + 112);
    if (v34)
    {
      CFRelease(v34);
      *(a1 + 112) = 0;
    }

    v35 = *(a1 + 104768);
    if (v35)
    {
      CFRelease(v35);
      *(a1 + 104768) = 0;
    }

    v36 = *(a1 + 104776);
    if (v36)
    {
      CFRelease(v36);
      *(a1 + 104776) = 0;
    }

    sub_DE5B8((a1 + 106112));
  }

  else
  {
    if (sub_160EF0(0xCu, 4))
    {
      v17 = sub_160F34(0xCu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v18, 12, v19, "AVE_Session_HEVC_Destroy", 398, "pINS != __null", 0);
        v18 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v18);
    }

    sub_151B10();
    v20 = 4294966295;
  }

  if (sub_160EF0(0xCu, 6))
  {
    v37 = sub_160F34(0xCu);
    v38 = sub_175AE4();
    v39 = sub_160F68(6);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v38, 12, v39, "AVE_Session_HEVC_Destroy", a1, v20);
      v40 = sub_175AE4();
      v43 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v40, 12, v43, "AVE_Session_HEVC_Destroy", a1, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v38, 12, v39, "AVE_Session_HEVC_Destroy", a1, v20);
    }
  }

  return v20;
}

uint64_t sub_FCB00(uint64_t a1, _DWORD *a2)
{
  v4 = sub_1502C8();
  if (sub_160EF0(0xCu, 6))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v6, 12, v7, "AVE_Session_HEVC_StartSession", a1, a2);
      v8 = sub_175AE4();
      v48 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v48, "AVE_Session_HEVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v6, 12, v7, "AVE_Session_HEVC_StartSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (sub_160EF0(0xCu, 4))
      {
        v19 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6820, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v9 = *(a1 + 104712);
      v10 = sub_175AE4();
      sub_140028(v9, 3u, v10);
      v11 = *a2;
      v12 = a2[1];
      *(a1 + 1440) = *a2;
      *(a1 + 1444) = v12;
      *(a1 + 11452) = v11;
      *(a1 + 11456) = v12;
      *(a1 + 764) = 1;
      sub_FD500(a1);
      if (!sub_14E248(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), 0))
      {
        sub_FD844(a1);
        v21 = *(a1 + 24732) + 8;
        if (v21 <= *(a1 + 24736) + 8)
        {
          v21 = *(a1 + 24736) + 8;
        }

        if (sub_DDADC(*(a1 + 68), *(a1 + 64), 62, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v21, 0, 0x1414C4C20, *(a1 + 16)))
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v22 = sub_160F34(0x1Eu);
            v23 = sub_175AE4();
            v24 = sub_160F68(4);
            if (v22)
            {
              printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v23, 30, v24, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
              v25 = sub_175AE4();
              v49 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v25, 30, v49, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v23, 30, v24, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
            }
          }

          v20 = 4294954394;
          goto LABEL_31;
        }

        *(a1 + 104644) = 30566;
        *(a1 + 106080) = 0xFFFFFFFF00000000;
        *(a1 + 10532) = 0;
        *(a1 + 108016) = 0;
        *(a1 + 108004) = 0;
        memset_pattern16((a1 + 108008), &unk_185AB0, 8uLL);
        *(a1 + 108024) = 0u;
        if (*(a1 + 1112) >= 1)
        {
          v33 = *(a1 + 1112);
        }

        else
        {
          v33 = 30;
        }

        sub_153F28(*(a1 + 104704), v33, 0, 0);
        *(a1 + 712) = v4[103];
        if (*(a1 + 10892) == 1)
        {
          operator new();
        }

        if (*(a1 + 16) == 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = 3;
        }

        v35 = sub_16960(*(a1 + 104736), *(a1 + 56), 0, 0, 2, v34);
        if (v35)
        {
          v20 = v35;
          if (!sub_160EF0(0xCu, 4))
          {
            goto LABEL_31;
          }

          v36 = sub_160F34(0xCu);
          v37 = sub_175AE4();
          v38 = sub_160F68(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v37, 12, v38, "AVE_Session_HEVC_StartSession", 6904, "ret == 0", a1, *(a1 + 56));
            v39 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v39, 12);
            goto LABEL_31;
          }

          v53 = a1;
          v54 = *(a1 + 56);
          v52 = 6904;
          v51 = v38;
          v44 = "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu";
        }

        else
        {
          v40 = sub_83F18(a1);
          if (!v40)
          {
            v45 = v4[30];
            if (v45)
            {
              *(a1 + 11468) = v45;
            }

            for (i = 0; i != 72; i += 12)
            {
              v47 = v4[i + 32];
              if ((v47 & 0x80000000) == 0)
              {
                *(a1 + 11476 + i * 4) = v47;
              }

              v20 = 0;
            }

            goto LABEL_31;
          }

          v20 = v40;
          if (!sub_160EF0(0xCu, 4))
          {
LABEL_31:
            v26 = *(a1 + 104712);
            v27 = sub_175AE4();
            sub_1403FC(v26, 3u, v27);
            if (v20)
            {
              v28 = *(a1 + 104728);
              if (v28)
              {
                sub_D7B88(v28);
                operator delete();
              }
            }

            goto LABEL_34;
          }

          v41 = sub_160F34(0xCu);
          v37 = sub_175AE4();
          v42 = sub_160F68(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v37, 12, v42, "AVE_Session_HEVC_StartSession", 6912, "ret == 0", a1, *(a1 + 56), v20);
            v43 = sub_175AE4();
            v50 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d", v43, 12, v50);
            goto LABEL_31;
          }

          v54 = *(a1 + 56);
          v55 = v20;
          v53 = a1;
          v52 = 6912;
          v51 = v42;
          v44 = "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d";
        }

        syslog(3, v44, v37, 12, v51, "AVE_Session_HEVC_StartSession", v52, "ret == 0", v53, v54, v55);
        goto LABEL_31;
      }

      if (sub_160EF0(0xCu, 4))
      {
        v13 = sub_160F34(0xCu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6839, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
        }

LABEL_29:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
      }
    }

    v20 = 4294965295;
    goto LABEL_31;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v16 = sub_160F34(0xCu);
    v17 = sub_175AE4();
    v18 = sub_160F68(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v17, 12, v18, "AVE_Session_HEVC_StartSession", 6816, "pINS != __null && pDim != __null", a1, a2);
      v17 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v17, 12);
  }

  v20 = 4294966295;
LABEL_34:
  if (sub_160EF0(0xCu, 6))
  {
    v29 = sub_160F34(0xCu);
    v30 = sub_175AE4();
    v31 = sub_160F68(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v30, 12, v31, "AVE_Session_HEVC_StartSession", a1, a2, v20);
      v30 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v30);
  }

  return v20;
}

void sub_FD500(uint64_t a1)
{
  v2 = (a1 + 106088);
  v3 = a1 + 24712;
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", v5, 12, v6);
      v7 = sub_175AE4();
      v29 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v7, 12, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v5, 12, v6);
    }
  }

  v8 = sub_14E470(*(a1 + 68), 1, 2);
  v9 = *(a1 + 1440);
  v10 = *(a1 + 1444);
  *v3 = 0;
  *(a1 + 24716) = 0u;
  if ((v10 & 0xF) != 0 || v10 < v8[1])
  {
    if (*(a1 + 76) >= 12)
    {
      v2[1] = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= v8[1])
    {
      v11 = v8[1];
    }

    *(a1 + 1444) = v11;
    *v3 = 1;
    *(v3 + 16) = v11 - v10;
  }

  if ((v9 & 0xF) != 0 || v9 < *v8)
  {
    if (*(a1 + 76) >= 12)
    {
      *v2 = v9;
    }

    v12 = (v9 + 15) & 0xFFFFFFF0;
    if (v12 <= *v8)
    {
      v12 = *v8;
    }

    *(a1 + 1440) = v12;
    *v3 = 1;
    *(v3 + 8) = v12 - v9;
  }

  if (sub_160EF0(0x10u, 7))
  {
    v13 = sub_160F34(0x10u);
    v14 = sub_175AE4();
    v15 = sub_160F68(7);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v14, 16, v15, v9, v10);
      v16 = sub_175AE4();
      v30 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v16, 16, v30, v9, v10);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v14, 16, v15, v9, v10);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v17 = sub_160F34(0x10u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    v20 = *(a1 + 1444);
    if (v17)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v18, 16, v19, *(a1 + 1440), v20);
      v21 = sub_175AE4();
      v22 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v21, 16, v22, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v18, 16, v19, *(a1 + 1440), v20);
    }
  }

  if (sub_160EF0(0x10u, 7))
  {
    v23 = sub_160F34(0x10u);
    v24 = sub_175AE4();
    v25 = sub_160F68(7);
    v26 = *(v3 + 8);
    if (v23)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v24, 16, v25, *(v3 + 16), v26);
      v27 = sub_175AE4();
      v28 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v27, 16, v28, *(v3 + 16), *(v3 + 8));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v24, 16, v25, *(v3 + 16), v26);
    }
  }
}

double sub_FD844(uint64_t a1)
{
  v2 = a1 + 59120;
  v21 = a1 + 48356;
  v3 = a1 + 39864;
  v4 = a1 + 31172;
  v5 = a1 + 24264;
  v20 = (a1 + 14424);
  v6 = a1 + 10168;
  if (sub_160EF0(0xCu, 7))
  {
    v7 = sub_160F34(0xCu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", v8, 12, v9);
      v10 = sub_175AE4();
      v19 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v10, 12, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v8, 12, v9);
    }
  }

  *(v6 + 588) = 0;
  *(a1 + 1308) = 1;
  *(v6 + 596) = 1;
  *(a1 + 1096) = 0x39D00000000;
  *(a1 + 1296) &= ~1u;
  *(v6 + 613) = 0;
  *(a1 + 10788) = 5;
  *(a1 + 10792) = 0x300000006;
  *(a1 + 10752) = 1;
  *(v6 + 678) = 1;
  *(a1 + 10864) = 0;
  *(a1 + 10880) = 0;
  *(a1 + 10872) = 0;
  *(a1 + 10888) = 0;
  *(a1 + 10860) = -1;
  *(v6 + 684) = 0;
  *(a1 + 10848) = 0x1000000;
  *(v6 + 687) = 0;
  *(a1 + 688) &= ~2u;
  *(a1 + 10800) = 1;
  v11 = *(a1 + 1336);
  *(v6 + 760) = 0;
  *(v6 + 1276) = 0;
  *(a1 + 11764) = 0;
  *(a1 + 11472) = 0u;
  *(a1 + 11488) = 0u;
  *(a1 + 11504) = 0u;
  *(a1 + 11520) = 0u;
  *(a1 + 11536) = 0u;
  *(a1 + 11552) = 0u;
  *(a1 + 11568) = 0u;
  *(a1 + 11584) = 0u;
  *(a1 + 11600) = 0u;
  *(a1 + 11616) = 0u;
  *(a1 + 11632) = 0u;
  *(a1 + 11648) = 0u;
  *(a1 + 11664) = 0u;
  *(a1 + 11680) = 0u;
  *(a1 + 11696) = 0u;
  *(a1 + 11712) = 0u;
  *(a1 + 11728) = 0u;
  *(a1 + 11744) = 0u;
  bzero((a1 + 10930), 0x201uLL);
  for (i = 0; i != 288; i += 48)
  {
    *(a1 + 11472 + i) = 0xFFFFFFFF00000001;
  }

  *(a1 + 11464) = 0x100000006;
  *(a1 + 11760) = 1;
  *(v6 + 344) = 0;
  *(v6 + 1642) = 1;
  *(a1 + 11812) = -1;
  *(a1 + 11772) = 0;
  *(a1 + 11792) = 0;
  *(v6 + 1632) = 0;
  *(a1 + 11804) = 0;
  *(a1 + 10924) = -1;
  *(a1 + 10908) = -1;
  *(a1 + 10916) = -1;
  *(a1 + 1472) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1256) = 0x300000003;
  v13 = *(a1 + 1240);
  *(a1 + 10536) = 0;
  *(a1 + 1240) = v13 | 0x700;
  *v6 = 4 * (*(a1 + 76) > 6);
  *(v6 + 2) = 0;
  *(a1 + 10176) = 2;
  *(v6 + 5) = 0;
  *(a1 + 10244) = 1;
  *(v6 + 80) = 0;
  *(a1 + 10252) = 1;
  v14 = *(a1 + 1444);
  *(a1 + 10260) = v14;
  *(a1 + 10516) = 4;
  *(a1 + 10524) = 0;
  *(a1 + 1288) = 1;
  *(v6 + 36) = 256;
  *(v6 + 354) = 0;
  *(v6 + 363) = 0;
  *(v6 + 372) = 0;
  *(v6 + 396) = 5;
  *(a1 + 10568) = 1;
  *(a1 + 10604) = 0x1000000001;
  *(a1 + 10572) = 0u;
  *(a1 + 10594) = 0;
  *(a1 + 10588) = 0;
  *(a1 + 10744) = 8;
  *(a1 + 10552) = 2;
  *(a1 + 1392) = -1;
  *(v6 + 572) = 0;
  *(v6 + 12) = 3;
  *(v6 + 16) = 0;
  *(a1 + 10188) = 0x800000001;
  *(v6 + 3) = 1;
  *(a1 + 1336) = v11 & 0xF3FEF9FF | 0x600;
  *(a1 + 1448) |= 0x2000000uLL;
  memset_pattern16((a1 + 10544), &unk_185AA0, 8uLL);
  v15 = (*(a1 + 1440) * v14);
  *(a1 + 10808) = 1;
  *(a1 + 1136) = (v15 * 1.5 * 0.075 * 30.0);
  *(a1 + 1112) = 30;
  *(a1 + 11968) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0xBFF0000000000000;
  *(a1 + 1280) = 0xBFF0000000000000;
  *(a1 + 1132) = 1;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = xmmword_1849B0;
  *(a1 + 1352) = 30;
  *(a1 + 1088) &= ~2uLL;
  *(a1 + 1252) = 1;
  *(a1 + 720) = 0;
  if (!*(v6 + 612))
  {
    *(a1 + 10892) = 0;
  }

  *(a1 + 11460) = 0;
  *(a1 + 692) = -1;
  *(a1 + 1232) = 0xC0000000CLL;
  *(a1 + 1344) = 0xC0000000CLL;
  *(a1 + 1336) = v11 & 0xF3FE7889 | 0x776;
  *(a1 + 1144) = 0x1A0000001ALL;
  *(a1 + 1152) = 26;
  *(a1 + 1192) = 0;
  *(a1 + 1160) = 0uLL;
  *(a1 + 1176) = 0uLL;
  *(a1 + 1324) = 1;
  *(a1 + 1328) = 0x100000001;
  *(a1 + 1128) = 0;
  *(a1 + 11448) = 30;
  *(a1 + 1120) = 0;
  *(a1 + 11964) = 0;
  *(v6 + 1648) = 0;
  *(v6 + 12) = 0;
  *(a1 + 12000) = 0;
  *(v6 + 1836) = 257;
  *(a1 + 12012) = 0;
  *(v6 + 1848) = 0;
  memset_pattern16((a1 + 13308), &unk_185A90, 0x1CuLL);
  *(v6 + 3136) = 0;
  *v20 = 0;
  *(a1 + 13336) = 0u;
  *(a1 + 13352) = 0u;
  *(a1 + 13368) = 0u;
  *(a1 + 13384) = 0u;
  *(a1 + 14428) = 0x5DC0000003E9;
  v20[12] = 0;
  *(a1 + 14444) = 0;
  v20[104] = 0;
  *(a1 + 12020) = 0;
  *(a1 + 12024) = 0x100000001;
  *(v6 + 1896) = 1;
  *(v6 + 1903) = 257;
  *(v6 + 1898) = 16843009;
  *(v6 + 1905) = 0;
  *(v6 + 1902) = 1;
  *(a1 + 12080) = 1;
  *(a1 + 12420) = 257;
  *(a1 + 12416) = 16843009;
  *(a1 + 12390) = 0x101010101010101;
  *(a1 + 12384) = 0x101010101010101;
  *(a1 + 12376) = 0x101010101010101;
  *(a1 + 12368) = 0x101010101010101;
  *(a1 + 24244) = 0;
  *(a1 + 24252) = 0;
  *(a1 + 24256) = 0x100000000;
  *v5 = 1;
  *(v5 + 36) = 16842753;
  *(v5 + 42) = 65793;
  *(v5 + 52) = 1;
  *(v5 + 420) = 0x100000000;
  *(v5 + 428) = 0;
  *(v5 + 468) = 0;
  *(v5 + 472) = 0;
  *(v5 + 476) = 7;
  *(v5 + 480) = 0;
  memset_pattern16((a1 + 24748), &unk_185A90, 0x1CuLL);
  *(a1 + 24820) = 0u;
  *(a1 + 24792) = 0u;
  *(a1 + 24808) = 0u;
  *(a1 + 24776) = 0u;
  *(v5 + 572) = xmmword_1859F0;
  *(v5 + 588) = 0;
  *(v5 + 592) = 0;
  *v4 = 256;
  *(v4 + 2) = 0;
  *(a1 + 31176) = 0x700000007;
  *(v4 + 12) = 1;
  *(v4 + 20) = 1;
  *(v4 + 156) = 1;
  *(v4 + 160) = 0;
  *(v4 + 164) = 0;
  *(v4 + 176) = 256;
  *(v4 + 180) = 5;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0x200000002;
  *(v4 + 200) = 2;
  *(v4 + 204) = 0;
  *(v4 + 236) = 0;
  *(v4 + 240) = 0x5DC0000003E9;
  *(v4 + 248) = 0;
  *(v4 + 256) = 257;
  *(v4 + 260) = 1;
  *(v4 + 264) = xmmword_185A00;
  *(v4 + 280) = xmmword_185A10;
  *(v4 + 296) = 48827;
  *(v4 + 300) = 0;
  *(v4 + 219) = 0;
  *(v4 + 328) = 0;
  *(a1 + 1104) = 24;
  v16 = *(a1 + 10892);
  if (v16 == 37 || v16 == 20)
  {
    *(a1 + 1104) = 152;
  }

  *v3 = 0;
  *(v3 + 4) = 0;
  *(a1 + 39852) = 0;
  *(a1 + 39860) = 0;
  *(a1 + 39872) = 0;
  *(a1 + 39878) = 0;
  *(v3 + 28) = xmmword_1849D0;
  *(v3 + 60) = xmmword_1849D0;
  *&v17 = 0xC0000000CLL;
  *(&v17 + 1) = 0xC0000000CLL;
  *(v3 + 44) = v17;
  *(v3 + 76) = v17;
  *(v3 + 93) = 0;
  *(v3 + 97) = 1;
  *(v3 + 2161) = 256;
  *(v3 + 2176) = 0;
  *v21 = 0;
  *(v21 + 2) = 0;
  *(v3 + 22) = 1;
  *(v3 + 24) = 2;
  *(v21 + 17) = 0;
  *(v3 + 92) = 0;
  *(v21 + 20) = 2;
  *(v21 + 3) = 0;
  *v2 = 1;
  *(v2 + 4) = 0;
  *(v2 + 16) = 2;
  *(v2 + 273) = 257;
  *(v2 + 928) = 0;
  *(v2 + 952) = 0;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 0;
  *(v2 + 272) = 0;
  *(v2 + 412) = 0;
  *(v2 + 941) = 0;
  *(a1 + 59395) = 0;
  *(a1 + 59403) = 0;
  *(v2 + 848) = 3;
  result = NAN;
  *(v2 + 968) = -1;
  *(v2 + 414) = 1;
  *(a1 + 696) = 0;
  *(a1 + 716) = 0;
  return result;
}

uint64_t sub_FDFEC(uint64_t a1, int a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", v5, 12, v6, "AVE_Session_HEVC_BeginPass", a1, a2);
      v7 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v37, "AVE_Session_HEVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v5, 12, v6, "AVE_Session_HEVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      v11 = *(a1 + 104668);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 104664), v11);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v12, 216, v13, a2, *(a1 + 104664), *(a1 + 104668));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 104664), v11);
      }
    }

    if (!*(a1 + 104656))
    {
      if (sub_160EF0(3u, 4))
      {
        v22 = sub_160F34(3u);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v23, 3, v24, "AVE_Session_HEVC_BeginPass", 7095, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v17 = *(a1 + 104664);
    if (v17 != *(a1 + 104668))
    {
      if (sub_160EF0(3u, 4))
      {
        v25 = sub_160F34(3u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v26, 3, v27, "AVE_Session_HEVC_BeginPass", 7096, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 104664), *(a1 + 104668));
          v26 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v26);
      }

      goto LABEL_40;
    }

    if (v17)
    {
      v18 = v17 + 1;
      *(a1 + 104664) = v18;
      if (v18 >= 3)
      {
        if (sub_160EF0(3u, 4))
        {
          v19 = sub_160F34(3u);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v20, 3, v21, "AVE_Session_HEVC_BeginPass", 7105, "false", *(a1 + 104664));
            v20 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d", v20);
        }

LABEL_40:
        v28 = 4294966296;
        goto LABEL_41;
      }
    }

    else
    {
      if (*(a1 + 104644) == 30568)
      {
        if (sub_160EF0(3u, 4))
        {
          v29 = sub_160F34(3u);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v30, 3, v31, "AVE_Session_HEVC_BeginPass", 7099, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run");
        }

        goto LABEL_40;
      }

      *(a1 + 104664) = 1;
    }

    v28 = 0;
    *(a1 + 104672) = a2;
    goto LABEL_41;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v14 = sub_160F34(0xCu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v15, 12, v16, "AVE_Session_HEVC_BeginPass", 7090, "pINS != __null", 0, a2);
      v15 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v15, 12);
  }

  v28 = 4294966295;
LABEL_41:
  if (sub_160EF0(0xCu, 6))
  {
    v32 = sub_160F34(0xCu);
    v33 = sub_175AE4();
    v34 = sub_160F68(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v33, 12, v34, "AVE_Session_HEVC_BeginPass", a1, a2, v28);
      v35 = sub_175AE4();
      sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v33);
    }
  }

  return v28;
}

uint64_t sub_FE678(uint64_t a1, int *a2)
{
  if (sub_160EF0(0xCu, 6))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 12, v6, "AVE_Session_HEVC_EndPass", a1, a2);
      v7 = sub_175AE4();
      v94 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v94, "AVE_Session_HEVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 12, v6, "AVE_Session_HEVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (sub_160EF0(0xD8u, 7))
    {
      v8 = sub_160F34(0xD8u);
      v9 = sub_175AE4();
      v10 = sub_160F68(7);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_HEVC_EndPass", *(a1 + 104672), *(a1 + 104664), *(a1 + 104668));
        v9 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 104644) != 30568)
    {
      if (sub_160EF0(3u, 4))
      {
        v24 = sub_160F34(3u);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v25, 3, v26, "AVE_Session_HEVC_EndPass", 7142, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 104656))
    {
      if (sub_160EF0(3u, 4))
      {
        v27 = sub_160F34(3u);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v28, 3, v29, "AVE_Session_HEVC_EndPass", 7144, "pINS->multiPassStorage != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v14 = *(a1 + 104664);
    v15 = *(a1 + 104668);
    if (v14 != v15 + 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v30 = sub_160F34(3u);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v31, 3, v32, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d", v31, 3, v32, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
      }

      goto LABEL_57;
    }

    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(a1 + 104672) == 1;
    }

    v17 = !v16;
    *(a1 + 104668) = v14;
    if (a2)
    {
      *a2 = v17;
    }

    if (!v17)
    {
      v33 = 0;
      goto LABEL_58;
    }

    if (sub_160EF0(0xD8u, 6))
    {
      v18 = sub_160F34(0xD8u);
      v19 = sub_175AE4();
      v20 = sub_160F68(6);
      v21 = *(a1 + 104648);
      if (v18)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v19, 216, v20, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v21);
        v22 = sub_175AE4();
        v23 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v22, 216, v23, "AVE_Session_HEVC_EndPass", *(a1 + 104668), *(a1 + 104648));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v19, 216, v20, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v21);
      }
    }

    sub_1544C0(*(a1 + 104704));
    if (sub_1301D8(*(a1 + 120), *(a1 + 104668)))
    {
      if (sub_160EF0(3u, 4))
      {
        v34 = sub_160F34(3u);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v35, 3, v36, "AVE_Session_HEVC_EndPass", 7186, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.");
      }

LABEL_57:
      v33 = 4294966296;
      goto LABEL_58;
    }

    if (*(a1 + 16) == 1)
    {
      goto LABEL_122;
    }

    v100 = kCMTimeInvalid;
    start = v100;
    v98 = v100;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v38 = Mutable;
      *&v96.start.value = *&kCMTimeInvalid.value;
      v96.start.epoch = kCMTimeInvalid.epoch;
      if (VTMultiPassStorageGetTimeStamp())
      {
        if (sub_160EF0(3u, 4))
        {
          v39 = sub_160F34(3u);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
          if (v39)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v40, 3, v41, "AVE_Session_HEVC_EndPass", 7202, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v49 = sub_160F34(0xD8u);
        v50 = sub_175AE4();
        v51 = sub_160F68(7);
        if (v49)
        {
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v50, 216, v51, "AVE_Session_HEVC_EndPass", v100.value, v100.timescale, v100.flags);
          v50 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v50);
      }

      *&v96.start.value = *&kCMTimeInvalid.value;
      v96.start.epoch = kCMTimeInvalid.epoch;
      if (VTMultiPassStorageGetTimeStampAndDuration())
      {
        if (sub_160EF0(3u, 4))
        {
          v52 = sub_160F34(3u);
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
          if (v52)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v53, 3, v54, "AVE_Session_HEVC_EndPass", 7218, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v55 = sub_160F34(0xD8u);
        v56 = sub_175AE4();
        v57 = sub_160F68(7);
        if (v55)
        {
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v56, 216, v57, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v56 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d", v56);
      }

      if (sub_160EF0(0xD8u, 7))
      {
        v58 = sub_160F34(0xD8u);
        v59 = sub_175AE4();
        v60 = sub_160F68(7);
        if (v58)
        {
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v59, 216, v60, "AVE_Session_HEVC_EndPass", v98.value, v98.timescale, v98.flags);
          v59 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s duration value %lld timescale %d flags %d", v59);
      }

      lhs.start = start;
      rhs = v98;
      CMTimeAdd(&v96.start, &lhs.start, &rhs);
      start = v96.start;
      if (sub_160EF0(0xD8u, 7))
      {
        v61 = sub_160F34(0xD8u);
        v62 = sub_175AE4();
        v63 = sub_160F68(7);
        if (v61)
        {
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v62, 216, v63, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v62 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v62);
      }

      if (*(a1 + 104648) <= 1u && !start.flags)
      {
        v64 = *(a1 + 1112);
        if (v64 < 1)
        {
          v64 = 30;
        }

        *&start.timescale = *&v100.timescale;
        start.epoch = v100.epoch;
        start.value = v100.value + v100.timescale / v64;
      }

      if (!v100.flags)
      {
        if (sub_160EF0(3u, 4))
        {
          v68 = sub_160F34(3u);
          v69 = sub_175AE4();
          v70 = sub_160F68(4);
          if (v68)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v69, 3, v70, "AVE_Session_HEVC_EndPass", 7244, "firstTimeInTimeRange.flags != 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      if (!start.flags)
      {
        if (sub_160EF0(3u, 4))
        {
          v71 = sub_160F34(3u);
          v72 = sub_175AE4();
          v73 = sub_160F68(4);
          if (v71)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v72, 3, v73, "AVE_Session_HEVC_EndPass", 7246, "lastTimeInTimeRange.flags != 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      memset(&v96, 0, sizeof(v96));
      lhs.start = v100;
      rhs = start;
      CMTimeRangeFromTimeToTime(&v96, &lhs.start, &rhs);
      if (sub_160EF0(0xD8u, 6))
      {
        v65 = sub_160F34(0xD8u);
        v66 = sub_175AE4();
        v67 = sub_160F68(6);
        if (v65)
        {
          printf("%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d\n", v66, 216, v67, v96.start.value, v96.start.timescale, v96.start.flags, v96.duration.value, v96.duration.timescale, v96.duration.flags);
          v66 = sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d", v66, 216);
      }

      lhs = v96;
      v74 = CMTimeRangeCopyAsDictionary(&lhs, kCFAllocatorDefault);
      if (!v74)
      {
        if (sub_160EF0(3u, 4))
        {
          v88 = sub_160F34(3u);
          v89 = sub_175AE4();
          v90 = sub_160F68(4);
          if (v88)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v89, 3, v90, "AVE_Session_HEVC_EndPass", 7255, "currentTimeRangeDictionary != __null");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.");
        }

        goto LABEL_57;
      }

      v75 = v74;
      CFArrayAppendValue(v38, v74);
      CFRelease(v75);
      Count = CFArrayGetCount(v38);
      v77 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      if (v77)
      {
        v78 = v77;
        if (Count >= 1)
        {
          v79 = 0;
          v80 = v77;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v38, v79);
            CMTimeRangeMakeFromDictionary(&lhs, ValueAtIndex);
            v82 = *&lhs.start.value;
            v83 = *&lhs.duration.timescale;
            v80[1] = *&lhs.start.epoch;
            v80[2] = v83;
            *v80 = v82;
            v80 += 3;
            ++v79;
          }

          while (Count != v79);
        }

        Pass = VTEncoderSessionSetTimeRangesForNextPass();
        free(v78);
        CFRelease(v38);
        if (Pass)
        {
          if (sub_160EF0(3u, 4))
          {
            v85 = sub_160F34(3u);
            v86 = sub_175AE4();
            v87 = sub_160F68(4);
            if (v85)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v86, 3, v87, "AVE_Session_HEVC_EndPass", 7289, "err == noErr");
              sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.");
          }

          goto LABEL_57;
        }

LABEL_122:
        v33 = 0;
        *(a1 + 104700) = *(a1 + 104648);
        *(a1 + 104648) = 0;
        goto LABEL_58;
      }

      if (sub_160EF0(3u, 4))
      {
        v91 = sub_160F34(3u);
        v92 = sub_175AE4();
        v93 = sub_160F68(4);
        if (v91)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v92, 3, v93, "AVE_Session_HEVC_EndPass", 7267, "timeRanges != __null");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.");
      }
    }

    else if (sub_160EF0(3u, 4))
    {
      v46 = sub_160F34(3u);
      v47 = sub_175AE4();
      v48 = sub_160F68(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v47, 3, v48, "AVE_Session_HEVC_EndPass", 7199, "timeRangeArray != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.");
    }

    v33 = 4294966293;
    goto LABEL_58;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v11 = sub_160F34(0xCu);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v12, 12, v13, "AVE_Session_HEVC_EndPass", 7132, "pINS != __null", 0, a2);
      v12 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v12, 12);
  }

  v33 = 4294966295;
LABEL_58:
  if (sub_160EF0(0xCu, 6))
  {
    v42 = sub_160F34(0xCu);
    v43 = sub_175AE4();
    v44 = sub_160F68(6);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v43, 12, v44, "AVE_Session_HEVC_EndPass", a1, a2, v33);
      v43 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v43);
  }

  return v33;
}

uint64_t sub_FF9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v225 = v15;
  v226 = v16;
  v18 = v17;
  v20 = v19;
  v227 = v8;
  pixelBuffer = v17;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v244 = 0uLL;
  v221 = sub_1502C8();
  if (sub_160EF0(0xCu, 7))
  {
    v21 = sub_160F34(0xCu);
    v22 = sub_175AE4();
    v23 = sub_160F68(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", v22, 12, v23, "AVE_HEVC_Encode", v227, v20, v18, v225, v226, v14, v12);
      v24 = sub_175AE4();
      v207 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v24, 12, v207, "AVE_HEVC_Encode", v227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v22, 12, v23, "AVE_HEVC_Encode", v227);
    }
  }

  if ((v10 & 0x80000000) == 0 && v14 && v226 && v225 && v227 && pixelBuffer)
  {
    v25 = (v227 + 104644);
    v26 = sub_175AE4();
    v247 = *v226;
    v248 = v226[2];
    v245 = *v14;
    v246 = v14[2];
    *&v244 = v247;
    DWORD2(v244) = DWORD2(v247);
    sub_1729E0(0, &v244);
    if (sub_160EF0(0x33u, 7))
    {
      v27 = sub_160F34(0x33u);
      v28 = sub_175AE4();
      v29 = sub_160F68(7);
      v30 = *(v227 + 56);
      v31 = *v226;
      v32 = *(v226 + 2);
      if (v27)
      {
        v33 = v20;
        v34 = v10;
        v35 = v33;
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v28, 51, v29, "AVE_HEVC_Encode", 7445, v30, *(v227 + 104648), v31, v32, *(v226 + 3), v226[2], v244, DWORD2(v244), *v14, *(v14 + 2), *(v14 + 3), v14[2]);
        v36 = sub_175AE4();
        v37 = sub_160F68(7);
        v38 = v35;
        v10 = v34;
        v20 = v38;
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v36, 51, v37, "AVE_HEVC_Encode", 7445, *(v227 + 56), *(v227 + 104648), *v226, *(v226 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v28, &stru_20.segname[11], v29, "AVE_HEVC_Encode", 7445, v30, *(v227 + 104648), v31, v32);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v227 + 108000) = PixelFormatType;
    if (!*(v227 + 104648))
    {
      v255 = *(v227 + 1440);
      v44 = sub_167CD8(PixelFormatType);
      if (!v44)
      {
        if (sub_160EF0(3u, 4))
        {
          v68 = sub_160F34(3u);
          v69 = sub_175AE4();
          v70 = sub_160F68(4);
          if (v68)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v69, 3, v70, "AVE_HEVC_Encode", 7462, "pPixelFmt != __null", v227, *(v227 + 56), *(v227 + 108000));
            v71 = sub_175AE4();
            v72 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v71, 3, v72);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v69, 3, v70);
          }
        }

        goto LABEL_70;
      }

      if (*(v221 + 420))
      {
        v45 = (v221 + 105);
      }

      else
      {
        v45 = 0;
      }

      if (*(v227 + 104656))
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }

      sub_CC848(*(v227 + 104720), v45, *(v227 + 64), *(v227 + 10772), v221[103], v221[104], &v255, v46, *(v44 + 3), *(v44 + 1), *(v227 + 1136));
    }

    sub_CCF60(*(v227 + 104720), *(v227 + 104668), pixelBuffer);
    v47 = *v25;
    if (*v25 == 30566)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v59 = 1;
      }

      else
      {
        v59 = 2;
      }

      *(v227 + 10804) = v59;
      v60 = sub_10A628(v227);
      if (v60)
      {
        v55 = v60;
        if (sub_160EF0(3u, 4))
        {
          v61 = sub_160F34(3u);
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v62, 3, v63, "AVE_HEVC_Encode", 7571, "err == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_172;
      }

      sub_102728(v227, pixelBuffer);
      if (sub_1020A4(v227, &pixelBuffer, &v251, &v250, &v249 + 1, &v249, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v76 = sub_160F34(3u);
          v77 = sub_175AE4();
          v78 = sub_160F68(4);
          if (v76)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v77, 3, v78, "AVE_HEVC_Encode", 7581, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
        }

        goto LABEL_171;
      }

      sub_10298C(v227, *(v227 + 10804) == 2);
      if (*(v227 + 10804) == 2 && (*(v227 + 1120) & 0x10) == 0)
      {
        v87 = *(v227 + 1112);
        if (v87 < 1)
        {
          v87 = 30;
        }

        v88 = vshr_n_u32(vadd_s32(*(v227 + 1440), 0xF0000000FLL), 4uLL);
        v89 = v88.i32[1] * v87 * v88.i32[0];
        if (*(v227 + 76) <= 29)
        {
          v90 = 1944000;
        }

        else
        {
          v90 = 2106000;
        }

        if (v89 >= v90)
        {
          *(v227 + 716) &= 0xFFFFFC3F;
          *(v227 + 11810) = 0;
        }
      }

      if (sub_102AD4(v227))
      {
        if (sub_160EF0(3u, 4))
        {
          v91 = sub_160F34(3u);
          v92 = sub_175AE4();
          v93 = sub_160F68(4);
          if (v91)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v92, 3, v93, "AVE_HEVC_Encode", 7609, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_171;
      }

      sub_107808(v227, pixelBuffer);
      sub_10A354(v227);
      bzero(v260, 0x8C8uLL);
      v255 = v227 + 672;
      v256 = v227 + 1440;
      v258 = *(v227 + 104712);
      v259 = *(v227 + 104728);
      v257 = v227 + 10752;
      v262 = v227 + 12000;
      v263 = v227 + 24236;
      v265 = v227 + 39844;
      v264 = v227 + 32040;
      v266 = v227 + 49476;
      v267 = v227 + 59112;
      v268 = v227 + 80600;
      memcpy(v269, (v227 + 106112), sizeof(v269));
      v270 = v26;
      if (sub_12A644(*(v227 + 120), &v255, v227 + 128, *(v227 + 16), *(v227 + 112), *(v227 + 104652), *(v227 + 104656), v227 + 160, (v227 + 11772), (v227 + 11464)))
      {
        if (sub_160EF0(3u, 4))
        {
          v94 = sub_160F34(3u);
          v95 = sub_175AE4();
          v96 = sub_160F68(4);
          if (v94)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v95, 3, v96, "AVE_HEVC_Encode", 7637, "err == noErr");
            v97 = sub_175AE4();
            v210 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v97, 3, v210, "AVE_HEVC_Encode", 7637, "err == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v95, 3, v96, "AVE_HEVC_Encode", 7637, "err == noErr");
          }
        }

        v55 = 4294966296;
        goto LABEL_172;
      }
    }

    else if (v47 == 30567)
    {
      if (sub_15F5D0(pixelBuffer))
      {
        v56 = 1;
      }

      else
      {
        v56 = 2;
      }

      *(v227 + 10804) = v56;
      sub_102728(v227, pixelBuffer);
      if (sub_1020A4(v227, &pixelBuffer, &v251, &v250, &v249 + 1, &v249, 1))
      {
        if (sub_160EF0(3u, 4))
        {
          v57 = sub_160F34(3u);
          v49 = sub_175AE4();
          v50 = sub_160F68(4);
          if (!v57)
          {
            goto LABEL_69;
          }

          v51 = (v227 + 104644);
          v52 = v10;
          v53 = v20;
          v54 = 7499;
          goto LABEL_43;
        }

LABEL_70:
        v55 = 4294966294;
        goto LABEL_172;
      }

      sub_10298C(v227, *(v227 + 10804) == 2);
      if (sub_102AD4(v227))
      {
        if (sub_160EF0(3u, 4))
        {
          v73 = sub_160F34(3u);
          v74 = sub_175AE4();
          v75 = sub_160F68(4);
          if (v73)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v74, 3, v75, "AVE_HEVC_Encode", 7509, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_70;
      }

      sub_107808(v227, pixelBuffer);
      sub_10A354(v227);
      if (*(v227 + 10804) == 2 && (*(v227 + 1120) & 0x10) == 0)
      {
        v79 = *(v227 + 1112);
        if (v79 < 1)
        {
          v79 = 30;
        }

        v80 = vshr_n_u32(vadd_s32(*(v227 + 1440), 0xF0000000FLL), 4uLL);
        v81 = v80.i32[1] * v79 * v80.i32[0];
        if (*(v227 + 76) <= 29)
        {
          v82 = 1944000;
        }

        else
        {
          v82 = 2106000;
        }

        if (v81 >= v82)
        {
          *(v227 + 716) &= 0xFFFFFC3F;
          *(v227 + 11810) = 0;
        }
      }

      bzero(v260, 0x8C8uLL);
      v255 = v227 + 672;
      v256 = v227 + 1440;
      v258 = *(v227 + 104712);
      v259 = *(v227 + 104728);
      v257 = v227 + 10752;
      v262 = v227 + 12000;
      v263 = v227 + 24236;
      v265 = v227 + 39844;
      v264 = v227 + 32040;
      v266 = v227 + 49476;
      v267 = v227 + 59112;
      v268 = v227 + 80600;
      memcpy(v269, (v227 + 106112), sizeof(v269));
      v270 = v26;
      if (sub_12A644(*(v227 + 120), &v255, v227 + 128, *(v227 + 16), *(v227 + 112), *(v227 + 104652), *(v227 + 104656), v227 + 160, (v227 + 11772), (v227 + 11464)))
      {
        if (sub_160EF0(3u, 4))
        {
          v83 = sub_160F34(3u);
          v84 = sub_175AE4();
          v85 = sub_160F68(4);
          if (v83)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v84, 3, v85, "AVE_HEVC_Encode", 7556, "err == noErr");
            v86 = sub_175AE4();
            v209 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v86, 3, v209, "AVE_HEVC_Encode", 7556, "err == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.", v84, 3, v85, "AVE_HEVC_Encode", 7556, "err == noErr");
          }
        }

        v55 = 4294966296;
        goto LABEL_172;
      }
    }

    else
    {
      if (v47 != 30568)
      {
        if (sub_160EF0(3u, 4))
        {
          v64 = sub_160F34(3u);
          v65 = sub_175AE4();
          v66 = sub_160F68(4);
          if (v64)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v65, 3, v66, "AVE_HEVC_Encode", 7644, "false", *v25);
            v67 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v67);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v65);
          }
        }

        goto LABEL_171;
      }

      if (sub_1020A4(v227, &pixelBuffer, &v251, &v250, &v249 + 1, &v249, 0))
      {
        if (sub_160EF0(3u, 4))
        {
          v48 = sub_160F34(3u);
          v49 = sub_175AE4();
          v50 = sub_160F68(4);
          if (!v48)
          {
LABEL_69:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_70;
          }

          v51 = (v227 + 104644);
          v52 = v10;
          v53 = v20;
          v54 = 7482;
LABEL_43:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v49, 3, v50, "AVE_HEVC_Encode", v54, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          v58 = v53;
          v10 = v52;
          v25 = v51;
          v20 = v58;
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    *v25 = 30568;
    bzero(v254, 0x1738uLL);
    v228 = 0;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    memset(v238, 0, sizeof(v238));
    v239 = 0u;
    memset(v240, 0, sizeof(v240));
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v229 = 0u;
    v230 = 0u;
    memset(v231, 0, sizeof(v231));
    v232 = 0u;
    v233 = 0;
    bzero(&v255, 0x4A40uLL);
    v261[0] = -1;
    v220 = v20;
    if (v12)
    {
      Value = CFDictionaryGetValue(v12, @"ResetRCState");
      if (*(v227 + 76) == 27 && (*(v227 + 716) & 0x3C0) == 0)
      {
        v99 = CFDictionaryGetValue(v12, kVTEncodeFrameOptionKey_ReducedResolutionSourceFrame);
        if (v99 && sub_160EF0(0x10u, 6))
        {
          v218 = sub_160F34(0x10u);
          v222 = sub_175AE4();
          v110 = sub_160F68(6);
          if (v218)
          {
            printf("%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p\n", v222, 16, v110, *(v227 + 16), v99);
            v222 = sub_175AE4();
            v110 = sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p", v222, 16, v110, *(v227 + 16), v99);
        }
      }

      else
      {
        v99 = 0;
      }

      if (Value && CFEqual(Value, kCFBooleanTrue))
      {
        v26 = sub_175AE4();
        v228 = v26;
        sub_12D170(*(v227 + 120), &v228);
      }
    }

    else
    {
      v99 = 0;
    }

    *&v238[1] = v247;
    v239 = v245;
    v100 = pixelBuffer;
    *&v234 = v220;
    *(&v234 + 1) = pixelBuffer;
    *&v235 = v99;
    v238[3] = v248;
    DWORD2(v242) = *(v227 + 104668);
    *&v240[1] = v244;
    *(&v241 + 1) = v254;
    *&v242 = v26;
    v240[0] = v246;
    *&v241 = &v255;
    if (*(v227 + 10804) != 2)
    {
      v105 = vshr_n_u32(vadd_s32(*(v227 + 1440), 0x1F0000001FLL), 5uLL);
      v106 = vmul_lane_s32(v105, v105, 1).u32[0];
      if (v106 >> 5 < 0xFF)
      {
        if (v106 < 0x7F8)
        {
          v107 = 0.39;
        }

        else
        {
          v107 = 0.58;
        }
      }

      else
      {
        v107 = 1.0;
      }

      v231[1].f64[1] = v107;
      DWORD2(v232) = 127;
      goto LABEL_130;
    }

    if (!v10)
    {
      sub_1556B4(*(v227 + 104704), &v244);
      v100 = pixelBuffer;
    }

    sub_15F768(v100, &v229);
    sub_CD91C(*(v227 + 104720), *(v227 + 104668), *(v227 + 104648), &v229);
    if (*(v227 + 76) < 17 || (*(v227 + 716) & 0x3C0) == 0)
    {
LABEL_130:
      v240[3] = &v229;
      v20 = v220;
      if ((*(v227 + 1337) & 2) != 0 && *(v227 + 76) >= 4 && (*(v227 + 1112) - 1) <= 0x3B)
      {
        v108 = v227 + 104784;
        if (sub_133F6C(v12, (v227 + 104784 + 648 * *(v227 + 106080))))
        {
          if (*(v227 + 1112) == 60)
          {
            v109 = *(v227 + 106084);
            if (v109 != -1 && v109 + 1 == *(v227 + 104648))
            {
              memcpy((*(&v241 + 1) + 152), (v108 + 648 * (*(v227 + 106080) == 0)), 0x288uLL);
            }
          }
        }

        else
        {
          memset(v253, 0, sizeof(v253));
          sub_172100(v253, 32, "%llu %d %d", *(v227 + 56), *(v227 + 104648), *(v108 + 648 * *(v227 + 106080)));
          sub_133ED0((v108 + 648 * *(v227 + 106080)), 47, 6, v253, 0);
          memcpy((*(&v241 + 1) + 152), (v108 + 648 * *(v227 + 106080)), 0x288uLL);
          if (*(v227 + 1112) == 60)
          {
            *(v227 + 106080) = *(v227 + 106080) == 0;
            *(v227 + 106084) = *(v227 + 104648);
          }

          v20 = v220;
        }
      }

      v111 = CMGetAttachment(pixelBuffer, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v111)
      {
        sub_1C324(*(v227 + 104736), *(v227 + 104648), v111);
      }

      sub_207A4(*(v227 + 104736), *(v227 + 104648));
      sub_20464(*(v227 + 104736), *(v227 + 104648), *(v227 + 56));
      sub_1D808(*(v227 + 104736), *(v227 + 104648), *(v240[3] + 16));
      sub_1DC50(*(v227 + 104736), *(v227 + 104648), *v240[3]);
      sub_1CE6C(*(v227 + 104736), *(v227 + 104648), *(v240[3] + 68));
      sub_1F124(*(v227 + 104736), *(v227 + 104648), *(v226 + 2), *v226);
      DWORD2(v243) = *(v227 + 104648);
      HIDWORD(v243) = v10;
      v112 = sub_10C92C(v227, v12, v254, &v255, &v234);
      if (!*(v227 + 11476))
      {
        sub_10E85C(v227, v254, &v255, *v240[3]);
      }

      *(*(&v241 + 1) + 936) = *(*(&v241 + 1) + 936) & 0xFFFFF9FF | ((*(*(&v241 + 1) + 152) > 0) << 9) | ((*(*(&v241 + 1) + 800) > 0) << 10);
      if (*(v227 + 104668) && *(v227 + 104656) && sub_10EF18(v227, &v247, &v255))
      {
        if (sub_160EF0(3u, 4))
        {
          v113 = sub_160F34(3u);
          v114 = sub_175AE4();
          v115 = sub_160F68(4);
          if (v113)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.\n", v114, 3, v115, "AVE_HEVC_Encode", 8079, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.");
        }
      }

      else
      {
        DWORD2(v243) = *(v227 + 104648);
        HIDWORD(v243) = v10;
        if (v250)
        {
          v116 = pixelBuffer;
        }

        else
        {
          v116 = 0;
        }

        *(&v237 + 1) = v116;
        v117 = sub_12D95C(*(v227 + 120), &v234);
        if (!v117)
        {
          v55 = v112;
          goto LABEL_172;
        }

        if (v117 == -536870173)
        {
          v55 = v112;
          if (sub_160EF0(0x10u, 5))
          {
            v118 = sub_160F34(0x10u);
            v119 = sub_175AE4();
            v120 = sub_160F68(5);
            if (v118)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v119, 16, v120);
              sub_175AE4();
              sub_160F68(5);
              v55 = v112;
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }

          goto LABEL_172;
        }

        if (sub_160EF0(3u, 4))
        {
          v121 = sub_160F34(3u);
          v122 = sub_175AE4();
          v123 = sub_160F68(4);
          if (v121)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v122, 3, v123, "AVE_HEVC_Encode", 8102, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }
      }

LABEL_171:
      v55 = 4294966296;
LABEL_172:
      if (v251 == 1 && pixelBuffer)
      {
        CVPixelBufferRelease(pixelBuffer);
      }

      ++v25[1];
      goto LABEL_176;
    }

    if (*(&v232 + 1) == 0x1FFFFFFFFLL && sub_160EF0(0x10u, 5))
    {
      v101 = sub_160F34(0x10u);
      v102 = sub_175AE4();
      v103 = sub_160F68(5);
      if (v101)
      {
        printf("%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!\n", v102, 16, v103);
        v104 = sub_175AE4();
        v211 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v104, 16, v211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v102, 16, v103);
      }
    }

    if (v231[0].f64[1] != 0.0 && *(&v230 + 1) != 0.0 && v231[0].f64[0] != 0.0)
    {
      v130 = sub_1502C8();
      v131 = v130[133];
      if (v131 > 0.0)
      {
        v132 = v130[134];
        if (v132 > 0.0)
        {
          v133 = vdupq_lane_s64(0x4170000000000000, 0);
          v133.f64[0] = *(&v230 + 1);
          v134 = vmulq_f64(*(v231 + 8), v133);
          v135 = v231[0].f64[0] * v134.f64[0] / v134.f64[1];
          if (v135 <= v131)
          {
            v142 = sub_160EF0(0x10u, 8);
            if (v135 >= v132)
            {
              if (v142)
              {
                v149 = sub_160F34(0x10u);
                v223 = sub_175AE4();
                v150 = sub_160F68(8);
                v151 = *(v227 + 108008 + 4 * v10);
                v152 = ((v135 - v135) * 1000.0);
                if (v152 >= 0)
                {
                  v153 = ((v135 - v135) * 1000.0);
                }

                else
                {
                  v153 = -v152;
                }

                if (v149)
                {
                  printf("%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d\n", v223, 16, v150, v151, v135, v153);
                  v154 = sub_175AE4();
                  v155 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d", v154, 16, v155, *(v227 + 108008 + 4 * v10), v135, v153);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: MCTF with %d refs no change. overallgain: %d.%03d", v223, 16, v150, v151, v135, v153);
                }
              }
            }

            else
            {
              if (v142)
              {
                v143 = sub_160F34(0x10u);
                v144 = sub_175AE4();
                v145 = sub_160F68(8);
                v146 = ((v135 - v135) * 1000.0);
                if (v146 >= 0)
                {
                  v147 = ((v135 - v135) * 1000.0);
                }

                else
                {
                  v147 = -v146;
                }

                if (v143)
                {
                  printf("%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d\n", v144, 16, v145, v135, v147);
                  v148 = sub_175AE4();
                  v213 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d", v148, 16, v213, v135, v147);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: MCTF with 1refs. overallgain: %d.%03d", v144, 16, v145, v135, v147);
                }
              }

              *(v227 + 4 * v10 + 108008) = 0;
            }
          }

          else
          {
            if (sub_160EF0(0x10u, 8))
            {
              v136 = sub_160F34(0x10u);
              v137 = sub_175AE4();
              v138 = sub_160F68(8);
              v139 = ((v135 - v135) * 1000.0);
              if (v139 >= 0)
              {
                v140 = ((v135 - v135) * 1000.0);
              }

              else
              {
                v140 = -v139;
              }

              if (v136)
              {
                printf("%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d\n", v137, 16, v138, v135, v140);
                v141 = sub_175AE4();
                v212 = sub_160F68(8);
                syslog(3, "%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d", v141, 16, v212, v135, v140);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF with 2refs. overallgain: %d.%03d", v137, 16, v138, v135, v140);
              }
            }

            *(v227 + 4 * v10 + 108008) = 1;
          }
        }
      }
    }

    v156 = *(v227 + 76);
    if ((HIDWORD(v232) + 1) >= 2 && DWORD2(v232) != -1)
    {
      if (v156 >= 30 && SDWORD2(v232) >= 255)
      {
        if (sub_160EF0(0x10u, 5))
        {
          v157 = sub_160F34(0x10u);
          v158 = sub_175AE4();
          v159 = sub_160F68(5);
          if (v157)
          {
            printf("%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On\n", v158, 16, v159, HIDWORD(v232), DWORD2(v232));
            v160 = sub_175AE4();
            v161 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On", v160, 16, v161, HIDWORD(v232), DWORD2(v232));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On", v158, 16, v159, HIDWORD(v232), DWORD2(v232));
          }
        }

        DWORD2(v232) = 127;
      }

      goto LABEL_268;
    }

    if (v156 >= 30)
    {
      DWORD2(v232) = 127;
      *(v227 + v10 + 108004) = 1;
      goto LABEL_268;
    }

    v162 = v227 + 108004;
    v163 = *(v227 + 108004 + v10);
    if (v231[0].f64[1] == 0.0 || *(&v230 + 1) == 0.0 || v231[0].f64[0] == 0.0)
    {
      if (sub_160EF0(0x10u, 7))
      {
        v174 = sub_160F34(0x10u);
        v175 = sub_175AE4();
        v176 = sub_160F68(7);
        v177 = *(v227 + 104648);
        if (v174)
        {
          printf("%lld %d AVE %s: FIG: F %d ISP meta data is missing!\n", v175, 16, v176, v177);
          v178 = sub_175AE4();
          v214 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: FIG: F %d ISP meta data is missing!", v178, 16, v214, *(v227 + 104648));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: F %d ISP meta data is missing!", v175, 16, v176, v177);
        }
      }

      DWORD2(v232) = 255;
      if ((*(v162 + v10) & 1) == 0)
      {
LABEL_268:
        if (*(v227 + 1112) < 1 || !HIDWORD(v232) || SDWORD2(v232) > 254)
        {
          goto LABEL_130;
        }

        v192 = *(v227 + 1440);
        v193 = *(v227 + 1444);
        v194 = sub_155D40(*(v227 + 104704));
        v195 = ((v193 + 31) >> 5) * ((v192 + 31) >> 5) * v194;
        if (*(v227 + 76) <= 29)
        {
          v196 = 285600;
        }

        else
        {
          v196 = 530400;
        }

        if ((*(v227 + 1120) & 0x10) != 0)
        {
          if (v196 * 1.5 >= v195)
          {
LABEL_282:
            if ((*(v227 + 1451) & 2) != 0)
            {
              v201 = *(v227 + 10556) < 2u ? 2 : 3;
              v202 = v227 + 4 * v10;
              sub_D9E84(&v229, *(v227 + 76), v201, (v202 + 108032), v261);
              if (sub_160EF0(0x10u, 8))
              {
                v203 = sub_160F34(0x10u);
                v204 = sub_175AE4();
                v205 = sub_160F68(8);
                if (v203)
                {
                  printf("%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d\n", v204, 16, v205, "AVE_HEVC_Encode", 7944, v227, *(v227 + 56), v261[0], v10, *(v202 + 108032));
                  v206 = sub_175AE4();
                  v215 = sub_160F68(8);
                  syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d", v206, 16, v215);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d", v204, 16, v205);
                }
              }
            }

            goto LABEL_130;
          }
        }

        else if (v195 <= v196)
        {
          goto LABEL_282;
        }

        if (sub_160EF0(0x10u, 5))
        {
          v197 = sub_160F34(0x10u);
          v198 = sub_175AE4();
          v199 = sub_160F68(5);
          if (v197)
          {
            printf("%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d\n", v198, 16, v199, v194, v192, v193, (*(v227 + 1120) >> 4) & 1, HIDWORD(v232), DWORD2(v232));
            v200 = sub_175AE4();
            sub_160F68(5);
            syslog(3, "%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d", v200, 16);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d", v198, 16);
          }
        }

        goto LABEL_282;
      }
    }

    else
    {
      v164 = sub_1502C8();
      v165 = vdupq_lane_s64(0x4170000000000000, 0);
      v165.f64[0] = *(&v230 + 1);
      v166 = vmulq_f64(*(v231 + 8), v165);
      v167 = v231[0].f64[0] * v166.f64[0] / v166.f64[1];
      if (*(v227 + 10556) < 2u)
      {
        v168 = 2;
      }

      else
      {
        v168 = 3;
      }

      v169 = sub_D9988(v232, *(v227 + 76), v168);
      v170 = 32.0;
      if (v169)
      {
        v170 = 0.1;
      }

      if (v164[132] > 0.0)
      {
        v170 = v164[132];
      }

      if (v167 >= v170)
      {
        DWORD2(v232) = 127;
        *(v162 + v10) = 1;
      }

      else
      {
        v171 = 24.0;
        if (v169)
        {
          v171 = 0.0;
        }

        v172 = *(v162 + v10) & (v167 >= v171);
        if ((*(v162 + v10) & (v167 >= v171)) != 0)
        {
          v173 = 127;
        }

        else
        {
          v173 = 255;
        }

        DWORD2(v232) = v173;
        *(v162 + v10) = v172;
        if (v172 != 1)
        {
          goto LABEL_268;
        }
      }
    }

    v179 = *(v227 + 1440);
    v180 = sub_1502C8();
    if ((*(v227 + 1120) & 0x10) != 0)
    {
      v181 = sub_155D48(*(v227 + 104704));
    }

    else
    {
      v181 = *(v227 + 1112);
    }

    if (v163)
    {
      v182 = v180[270];
      v183 = v182 <= 0;
      v184 = 285600;
    }

    else
    {
      v182 = v180[271];
      v183 = v182 <= 0;
      v184 = 244800;
    }

    if (v183)
    {
      v185 = v184;
    }

    else
    {
      v185 = v182;
    }

    v186 = vshr_n_u32(vadd_s32(v179, 0x1F0000001FLL), 5uLL);
    v187 = vmul_lane_s32(v186, v186, 1).u32[0] * v181;
    if (v187 > v185)
    {
      DWORD2(v232) = 255;
      *(v162 + v10) = 0;
    }

    if (sub_160EF0(0x10u, 8))
    {
      v188 = sub_160F34(0x10u);
      v224 = sub_175AE4();
      v189 = sub_160F68(8);
      if (*(v162 + v10))
      {
        v190 = "Enable ";
      }

      else
      {
        v190 = "Disable";
      }

      v217 = v190;
      v219 = v189;
      v216 = sub_155D64(*(v227 + 104704));
      v191 = sub_155D40(*(v227 + 104704));
      if (v188)
      {
        printf("%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)\n", v224, 16, v219, v217, v181, v216, v191, v187, v185, v163);
        v224 = sub_175AE4();
        sub_160F68(8);
        sub_155D64(*(v227 + 104704));
        sub_155D40(*(v227 + 104704));
      }

      syslog(3, "%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)", v224, 16);
    }

    goto LABEL_268;
  }

  if (sub_160EF0(0xCu, 4))
  {
    v39 = sub_160F34(0xCu);
    v40 = sub_175AE4();
    v41 = sub_160F68(4);
    if (v39)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d\n", v40, 12, v41, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v227, v20, pixelBuffer, v225, v226, v14, v12, v10);
      v42 = sub_175AE4();
      v208 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v42, 12, v208, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v227, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v40, 12, v41, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v227, v20);
    }
  }

  v55 = 4294966295;
LABEL_176:
  if (sub_160EF0(0xCu, 7))
  {
    v124 = sub_160F34(0xCu);
    v125 = sub_175AE4();
    v126 = sub_160F68(7);
    if (v124)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d\n", v125, 12, v126, "AVE_HEVC_Encode", v227, v20, pixelBuffer, v225, v226, v14, v12, v10, v55);
      v127 = sub_175AE4();
      v128 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v127, 12, v128, "AVE_HEVC_Encode", v227, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v125, 12, v126, "AVE_HEVC_Encode", v227, v20);
    }
  }

  return v55;
}

uint64_t sub_1020A4(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v59 = 0;
  v14 = (a1 + 104628);
  v15 = a1 + 24306;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v53) = PixelFormatType;
  v17 = v14[365];
  if (!v17)
  {
    v17 = *(a1 + 1440);
  }

  v45 = v17;
  v18 = v14[366];
  if (!v18)
  {
    v18 = *(a1 + 1444);
  }

  v46 = v18;
  v19 = *(a1 + 10772);
  v47 = vrev64_s32(*(a1 + 64));
  v48 = *(a1 + 716);
  v49 = v19;
  v20 = *(a1 + 10892);
  v50 = *(a1 + 10752);
  v51 = v20;
  LODWORD(v53) = *(a1 + 10860);
  BYTE4(v53) = *(a1 + 692) > 0;
  DWORD2(v53) = *(a1 + 10804);
  HIBYTE(v59) = *(a1 + 76) > 11;
  if (*(v15 + 406) == 1)
  {
    v52 = *(v15 + 410);
  }

  if (v14[5] && *(a1 + 11972) != PixelFormatType)
  {
    kdebug_trace();
    v21 = sub_DDF24(&v45, a2, (a1 + 104776), *(a1 + 11972));
    kdebug_trace();
    if (v21)
    {
      if (sub_160EF0(3u, 4))
      {
        v22 = sub_160F34(3u);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v23, 3, v24, "AVE_HEVC_VerifyImageBuffer", 4833, "err == noErr", *a2, HIDWORD(v53), *(a1 + 11972), v21);
          v25 = sub_175AE4();
          v43 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v25, 3, v43);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v23, 3, v24);
        }
      }

      return v21;
    }

    *a4 = 1;
  }

  v21 = sub_DCDC0(&v45, a2, (a1 + 104768));
  if (v21)
  {
    return v21;
  }

  *a3 = v59;
  v27 = DWORD1(v57);
  *a5 = v57;
  *a6 = v27;
  if (*(a1 + 76) < 12)
  {
    *(a1 + 10522) = BYTE1(v59);
LABEL_21:
    v28 = BYTE2(v59);
    goto LABEL_22;
  }

  *(a1 + 10522) = BYTE1(v59);
  if (v45 == *(a1 + 1440) && v46 == *(a1 + 1444))
  {
    goto LABEL_21;
  }

  v28 = 1;
LABEL_22:
  *(a1 + 10850) = v28;
  v29 = DWORD1(v55);
  *(a1 + 10204) = (DWORD1(v55) & 0xFFFFFFFE) == 2;
  if (v29 == 3)
  {
    *(a1 + 10529) = BYTE12(v55);
  }

  if (v50 == 2)
  {
    *(a1 + 10864) = DWORD2(v57);
    *(a1 + 10868) = *(&v56 + 1);
    *(a1 + 10876) = vuzp2q_s32(vextq_s8(v58, v58, 4uLL), v58);
  }

  if (a7)
  {
    v30 = HIDWORD(v53);
    *(a1 + 10768) = HIDWORD(v53);
    if (*(a1 + 10752) != 2 && !v14[5])
    {
      v37 = *(v15 + 426) + 8;
      if (v37 <= *(v15 + 430) + 8)
      {
        v37 = *(v15 + 430) + 8;
      }

      v38 = sub_DDADC(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v37, *v14, v30 | 0x100000000, *(a1 + 16));
      if (v38)
      {
        v39 = v38;
        if (sub_160EF0(0x1Eu, 5))
        {
          v40 = sub_160F34(0x1Eu);
          v41 = sub_175AE4();
          v42 = sub_160F68(5);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v41, 30, v42, "AVE_HEVC_VerifyImageBuffer", 4903, a1, *(a1 + 56), 0, v39);
            v41 = sub_175AE4();
            sub_160F68(5);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v41, 30);
        }
      }
    }

    v31 = DWORD2(v54);
    v32 = v54;
    *(v15 + 382) = DWORD2(v54);
    *(a1 + 10188) = v31;
    *(a1 + 10192) = v32;
    *(a1 + 10171) = DWORD1(v55) != 1;
    *(a1 + 10781) = 1;
    if (v32 == 10)
    {
      *(a1 + 12070) = 0;
      *v15 = 0;
    }

    if (v31 == 2)
    {
      *(a1 + 12071) = 1;
      *(v15 + 1) = 1;
    }

    else if (v31 == 3)
    {
      *(a1 + 12071) = 0;
      *(v15 + 1) = 0;
      if (*(a1 + 10892) == 37)
      {
        *(a1 + 10856) = 1;
        *(a1 + 1088) &= ~2uLL;
      }
    }
  }

  if (v14[5])
  {
    if (*(a1 + 11972) == HIDWORD(v53))
    {
      return 0;
    }

    else
    {
      if (sub_160EF0(0xCu, 4))
      {
        v33 = sub_160F34(0xCu);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v34, 12, v35, "AVE_HEVC_VerifyImageBuffer", 4956, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v53));
          v36 = sub_175AE4();
          v44 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v36, 12, v44);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v34, 12, v35);
        }
      }

      return 4294954394;
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 11972) = HIDWORD(v53);
  }

  return v21;
}

void sub_102728(uint64_t a1, __CVBuffer *a2)
{
  v4 = a1 + 23948;
  if (sub_160EF0(0xCu, 7))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", v6, 12, v7);
      v8 = sub_175AE4();
      v26 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v8, 12, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v6, 12, v7);
    }
  }

  if (*(v4 + 764))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v10 = sub_167CD8(PixelFormatType);
    if (v10)
    {
      v11 = *(v10 + 3);
      *(v4 + 740) = v11;
    }

    else
    {
      v11 = *(v4 + 740);
    }

    v13 = v11 != 3 && v11 != 0;
    v14 = v11 == 1;
    v15 = *(v4 + 776);
    if (v15)
    {
      if (v11 == 1)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      v17 = ((v15 + v16 - 1) & ~v14) >> v14;
      *(v4 + 776) = v17;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(v4 + 780);
    if (v18)
    {
      v19 = ((v18 + v14) & ~v14) >> v14;
      *(v4 + 780) = v19;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v4 + 768);
    if (v20)
    {
      v20 = ((v20 + v13) & ~v13) >> v13;
      *(v4 + 768) = v20;
    }

    v21 = *(v4 + 772);
    if (v21)
    {
      v22 = ((v21 + v13) & ~v13) >> v13;
      *(v4 + 772) = v22;
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 10896) || *(a1 + 10556) >= 2u)
    {
      *v4 = *(v4 + 764);
      *(v4 + 12) = v17;
      *(v4 + 16) = v19;
      *(v4 + 4) = v20;
      *(v4 + 8) = v22;
    }

    if (sub_160EF0(0x10u, 7))
    {
      v23 = sub_160F34(0x10u);
      v24 = sub_175AE4();
      v25 = sub_160F68(7);
      if (v23)
      {
        printf("%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d\n", v24, 16, v25, *(v4 + 776), *(v4 + 780), *(v4 + 768), *(v4 + 772));
        v24 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d", v24);
    }
  }
}

double sub_10298C(uint64_t a1, int a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v5 = sub_160F34(0xCu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", v6, 12, v7);
      v8 = sub_175AE4();
      v12 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v8, 12, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v6, 12, v7);
    }
  }

  v9 = *(a1 + 10892);
  v11 = v9 <= 0x25 && ((1 << v9) & 0x2000100002) != 0 || v9 == 10000;
  if (!v11 && *(a1 + 692) == 1 && a2 && *(a1 + 10752) != 2 && *(a1 + 10847) == 1)
  {
    *(a1 + 12000) = 0;
    *(a1 + 24684) = 0;
    *(a1 + 10208) = 0x100000000;
    *(a1 + 10244) = 2;
    *&result = 0x900000001;
    *(a1 + 10808) = 0x900000001;
    *(a1 + 24856) = 1;
  }

  return result;
}

uint64_t sub_102AD4(uint64_t a1)
{
  v2 = a1 + 104628;
  v3 = sub_1502C8();
  v469 = 0;
  v468 = 0.0;
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", v5, 12, v6);
      v7 = sub_175AE4();
      v427 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v7, 12, v427);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v5, 12, v6);
    }
  }

  v8 = *(v2 + 1756);
  if (v8 >= 0.0 && sub_FB84C(a1, v8) && sub_160EF0(0x10u, 5))
  {
    v9 = sub_160F34(0x10u);
    v10 = sub_175AE4();
    v11 = sub_160F68(5);
    if (v9)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v10, 16, v11);
      v12 = sub_175AE4();
      v428 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v12, 16, v428);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v10, 16, v11);
    }
  }

  v13 = *(v2 + 1748);
  if (v13 >= 0.0 && sub_FB584(a1, v13) && sub_160EF0(0x10u, 5))
  {
    v14 = sub_160F34(0x10u);
    v15 = sub_175AE4();
    v16 = sub_160F68(5);
    if (v14)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]\n", v15, 16, v16);
      v17 = sub_175AE4();
      v429 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v17, 16, v429);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v15, 16, v16);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v18 = sub_16D34C(*(v3 + 206), *(v2 + 1728), &v469);
    if (v18)
    {
      v19 = v18;
      if (sub_160EF0(0x10u, 4))
      {
        v20 = sub_160F34(0x10u);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v21, 16, v22, "AVE_ValidateEncoderParameters", 3088, "ret == 0", a1, *(a1 + 56), *(v3 + 206), *(v2 + 1728));
          v23 = sub_175AE4();
          v430 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v23, 16, v430);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d", v21, 16, v22);
        }
      }

      return v19;
    }

    *(a1 + 1208) = v469;
  }

  v24 = sub_16D7F4(*(a1 + 1120), &v468, v3[104], *(v2 + 3060), *(v2 + 1732));
  if (v24)
  {
    v19 = v24;
    if (sub_160EF0(0x10u, 4))
    {
      v25 = sub_160F34(0x10u);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v26, 16, v27, "AVE_ValidateEncoderParameters", 3099, "ret == 0", a1, *(a1 + 56), v3[104], *(v2 + 3060), *(v2 + 1732), *(a1 + 1120));
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v26, 16, v27);
    }

    return v19;
  }

  v28 = *&v468;
  *(a1 + 1216) = v468;
  v29 = sub_16DDF4(*(a1 + 1120), &v468, v3[105], *(v2 + 3068), *(v2 + 1740), *&v28);
  if (v29)
  {
    v19 = v29;
    if (sub_160EF0(0x10u, 4))
    {
      v30 = sub_160F34(0x10u);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v31, 16, v32, "AVE_ValidateEncoderParameters", 3112, "ret == 0", a1, *(a1 + 56), v3[105], *(v2 + 3068), *(v2 + 1740), *(a1 + 1216), *(a1 + 1120));
        v33 = sub_175AE4();
        v431 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v33, 16, v431);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx", v31, 16, v32);
      }
    }

    return v19;
  }

  v34 = (a1 + 10168);
  *(a1 + 1224) = v468;
  if (*(v2 + 1984) <= 0 && *(a1 + 11460) >= *(a1 + 1112))
  {
    *(a1 + 11460) = 0;
    *(a1 + 1288) = 1;
  }

  v35 = *(a1 + 76);
  if (v35 >= 30)
  {
    if (*(a1 + 10248) == 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v36 = sub_160F34(3u);
        v37 = sub_175AE4();
        v38 = sub_160F68(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v37, 3, v38, "AVE_ValidateEncoderParameters", 3129, "!pINS->VideoParams.bSliceEncodingMode");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.");
      }

      return 4294966295;
    }

    if ((*(a1 + 1336) & 0x40) == 0 || (*(a1 + 1464) & 0x8000030) == 0)
    {
LABEL_53:
      if (*(a1 + 10752) != 2 && !*(v2 + 28) && *(v2 + 1772))
      {
        goto LABEL_60;
      }

      goto LABEL_55;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v40 = sub_160F34(0x10u);
      v41 = sub_175AE4();
      v42 = sub_160F68(5);
      v43 = *(a1 + 1464);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x\n", v41, 16, v42, "AVE_ValidateEncoderParameters", 3138, v43);
        v44 = sub_175AE4();
        v45 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x", v44, 16, v45, "AVE_ValidateEncoderParameters", 3138, *(a1 + 1464));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x", v41, 16, v42, "AVE_ValidateEncoderParameters", 3138, v43);
      }
    }

    *(a1 + 1336) &= ~0x40u;
    v35 = *(a1 + 76);
  }

  if (v35 >= 17)
  {
    goto LABEL_53;
  }

LABEL_55:
  *(a1 + 716) &= 0xFFFFFC3F;
  *(a1 + 11810) = 0;
  if (*(v2 + 28) && sub_160EF0(0x10u, 5))
  {
    v46 = sub_160F34(0x10u);
    v47 = sub_175AE4();
    v48 = sub_160F68(5);
    if (v46)
    {
      printf("%lld %d AVE %s: FIG: MCTF is not supported for Multipass\n", v47, 16, v48);
      v49 = sub_175AE4();
      v432 = sub_160F68(5);
      syslog(3, "%lld %d AVE %s: FIG: MCTF is not supported for Multipass", v49, 16, v432);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: MCTF is not supported for Multipass", v47, 16, v48);
    }
  }

LABEL_60:
  if (*(v2 + 1952) >= 1 && *(v2 + 1956) >= 1)
  {
    if (sub_160EF0(3u, 4))
    {
      v50 = sub_160F34(3u);
      v51 = sub_175AE4();
      v52 = sub_160F68(4);
      if (v50)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.\n", v51, 3, v52, "AVE_ValidateEncoderParameters", 3177, "false", *(v2 + 1952), *(v2 + 1956));
        v51 = sub_175AE4();
        v52 = sub_160F68(4);
      }

      v461 = *(v2 + 1952);
      v462 = *(v2 + 1956);
      v459 = 3177;
      v460 = "false";
      v433 = v52;
      v53 = "%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.";
      goto LABEL_155;
    }

    return 4294966295;
  }

  v54 = a1 + 59393;
  v55 = (a1 + 31173);
  v56 = *(a1 + 1336);
  if ((v56 & 0x4000000) != 0)
  {
    *(a1 + 1120) &= ~0x200000000uLL;
    *(a1 + 1356) &= ~2u;
    *(a1 + 1448) &= ~0x10000000uLL;
    *(a1 + 1352) &= 0x1Eu;
    *(a1 + 1336) = v56 & 0xF6FF7E8D;
    *(a1 + 10788) = 0;
    *v55 = 0;
    *v54 = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 0;
    if (*(a1 + 1344) <= -13)
    {
      *(a1 + 1344) = -6 * *(a1 + 24732);
    }

    if (*(a1 + 1348) <= -13)
    {
      *(a1 + 1348) = 48;
    }

    if (*(a1 + 1232) <= -13)
    {
      *(a1 + 1232) = -6 * *(a1 + 24732);
    }

    if (*(a1 + 1236) <= -13)
    {
      *(a1 + 1236) = 48;
    }
  }

  v57 = *(a1 + 1132);
  if (v57 == 4)
  {
    if (*(v2 + 28))
    {
      if (sub_160EF0(3u, 4))
      {
        v61 = sub_160F34(3u);
        v62 = sub_175AE4();
        v63 = sub_160F68(4);
        if (v61)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v62, 3, v63, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v62, 3, v63, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
      }

      return 4294966296;
    }
  }

  else if (v57 == 20 && *(a1 + 10892) != 1)
  {
    if (sub_160EF0(3u, 4))
    {
      v58 = sub_160F34(3u);
      v59 = sub_175AE4();
      v60 = sub_160F68(4);
      if (v58)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.\n", v59, 3, v60, "AVE_ValidateEncoderParameters", 3232, "false", *(a1 + 10892), *(a1 + 1132));
        v59 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.", v59);
    }

    return 4294966295;
  }

  if ((*(v2 + 1916) & 0x80000000) != 0)
  {
    v64 = *(a1 + 10892);
    if (v64 <= 0x26 && ((1 << v64) & 0x4000100002) != 0)
    {
      if (*(a1 + 76) <= 29)
      {
        v65 = 0;
      }

      else
      {
        v65 = 3;
      }

      *v34 = v65;
    }
  }

  v66 = *(a1 + 1120);
  if ((v66 & 0x80000000) == 0)
  {
    v67 = *(a1 + 1256);
    goto LABEL_101;
  }

  *(a1 + 1120) = v66 | 4;
  v67 = *(a1 + 1256);
  if (v67 == 2)
  {
    v67 = 3;
    *(a1 + 1256) = 3;
  }

  if (v57 == 4)
  {
    if (sub_160EF0(3u, 4))
    {
      v68 = sub_160F34(3u);
      v69 = sub_175AE4();
      v70 = sub_160F68(4);
      if (v68)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v69, 3, v70, "AVE_ValidateEncoderParameters", 3275, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

LABEL_101:
  if (v67 >= 4)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v71 = sub_160F34(0x10u);
      v72 = sub_175AE4();
      v73 = sub_160F68(5);
      if (v71)
      {
        printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v72, 16, v73, "AVE_ValidateEncoderParameters", 3289, *(a1 + 1256), 3);
        v72 = sub_175AE4();
        sub_160F68(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!", v72);
    }

    v67 = 3;
    *(a1 + 1256) = 3;
  }

  v74 = *(a1 + 1240);
  if (*(a1 + 76) >= 4)
  {
    if ((v74 & 0x400) == 0)
    {
      goto LABEL_125;
    }

    if (v67)
    {
      *(a1 + 10520) = 1;
      goto LABEL_125;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v75 = sub_160F34(0x10u);
      v76 = sub_175AE4();
      v77 = sub_160F68(5);
      if (v75)
      {
        printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v76, 16, v77);
        v78 = sub_175AE4();
        v434 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v78, 16, v434);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB", v76, 16, v77);
      }
    }

    v74 = *(a1 + 1240);
  }

  *(a1 + 1240) = v74 & 0xFFFFFBFF;
LABEL_125:
  v79 = *(a1 + 10252);
  if (v79 >= 33)
  {
    if (sub_160EF0(3u, 4))
    {
      v83 = sub_160F34(3u);
      v51 = sub_175AE4();
      v84 = sub_160F68(4);
      if (v83)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v51, 3, v84, "AVE_ValidateEncoderParameters", 3330, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v34 + 21), 32);
        v51 = sub_175AE4();
        v84 = sub_160F68(4);
      }

      v461 = *(v34 + 21);
      v462 = 32;
      v459 = 3330;
      v460 = "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))";
      v433 = v84;
      v53 = "%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)";
      goto LABEL_155;
    }

    return 4294966295;
  }

  if (!v79)
  {
    if (sub_160EF0(3u, 4))
    {
      v86 = sub_160F34(3u);
      v51 = sub_175AE4();
      v87 = sub_160F68(4);
      if (v86)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v51, 3, v87, "AVE_ValidateEncoderParameters", 3331, "pINS->VideoParams.sSliceMap.iNum != 0", *(v34 + 21));
        v51 = sub_175AE4();
        v87 = sub_160F68(4);
        v460 = "pINS->VideoParams.sSliceMap.iNum != 0";
        v461 = *(v34 + 21);
        v459 = 3331;
      }

      else
      {
        v461 = *(v34 + 21);
        v459 = 3331;
        v460 = "pINS->VideoParams.sSliceMap.iNum != 0";
      }

      v433 = v87;
      v53 = "%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d";
LABEL_155:
      syslog(3, v53, v51, 3, v433, "AVE_ValidateEncoderParameters", v459, v460, v461, v462);
    }

    return 4294966295;
  }

  if (*v2 <= 9u && ((1 << *v2) & 0x24A) != 0 && *(a1 + 10782) == 1 && *(a1 + 24732) >= 2u)
  {
    if (sub_160EF0(0x10u, 4))
    {
      v80 = sub_160F34(0x10u);
      v81 = sub_175AE4();
      v82 = sub_160F68(4);
      if (v80)
      {
        printf("%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8\n", v81, 16, v82, "AVE_ValidateEncoderParameters", 3342, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8");
    }

    return 4294966295;
  }

  if (*(a1 + 24264) <= 1u)
  {
    if (*(a1 + 10782) == 1)
    {
      v85 = *(a1 + 24732) + 8;
    }

    else
    {
      v85 = *(a1 + 10192);
    }

    v88 = *(a1 + 24688);
    if (v88)
    {
      if (v88 == 3)
      {
        if (sub_160EF0(0x10u, 6))
        {
          v92 = sub_160F34(0x10u);
          v463 = sub_175AE4();
          v93 = sub_160F68(6);
          if (v92)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v463, 16, v93, "AVE_ValidateEncoderParameters", 3374, *(a1 + 12028), 9);
            v94 = sub_175AE4();
            sub_160F68(6);
            syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v94);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v463);
          }
        }

        if (v85 == 10)
        {
          v98 = 10;
        }

        else
        {
          v98 = 9;
        }

        goto LABEL_182;
      }

      if (v88 == 2)
      {
        if (sub_160EF0(0x10u, 6))
        {
          v89 = sub_160F34(0x10u);
          v90 = sub_175AE4();
          v91 = sub_160F68(6);
          if (v89)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v90, 16, v91, "AVE_ValidateEncoderParameters", 3366, *(a1 + 12028), 8);
            v90 = sub_175AE4();
            sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v90);
        }

        v98 = 8;
LABEL_182:
        *(a1 + 24264) = v98;
        *(a1 + 12028) = v98;
        goto LABEL_183;
      }
    }

    else
    {
      if (sub_160EF0(0x10u, 6))
      {
        v95 = sub_160F34(0x10u);
        v464 = sub_175AE4();
        v96 = sub_160F68(6);
        if (v85 == 10)
        {
          v97 = 7;
        }

        else
        {
          v97 = 6;
        }

        if (v95)
        {
          printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v464, 16, v96, "AVE_ValidateEncoderParameters", 3383, *(a1 + 12028), v97);
          v464 = sub_175AE4();
          sub_160F68(6);
        }

        syslog(3, "%lld %d AVE %s: %s:%d profile %d => %d", v464);
      }

      if (v85 == 10)
      {
        v99 = 7;
      }

      else
      {
        v99 = 6;
      }

      *(a1 + 24264) = v99;
      *(a1 + 12028) = v99;
    }

    if (sub_160EF0(0x10u, 6))
    {
      v100 = sub_160F34(0x10u);
      v101 = sub_175AE4();
      v102 = sub_160F68(6);
      if (v100)
      {
        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v101, 16, v102, "AVE_ValidateEncoderParameters", 3391, *(a1 + 24688), *(a1 + 12028));
        v101 = sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d chroma format idc %d profile %d", v101);
    }
  }

LABEL_183:
  if (*(a1 + 1308) >= 2)
  {
    v103 = *(a1 + 10892);
    if (v103 == 20 || v103 == 10000 || v103 == 37)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v104 = sub_160F34(0x10u);
        v105 = sub_175AE4();
        v106 = sub_160F68(5);
        v107 = *(a1 + 1308);
        if (v104)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1\n", v105, 16, v106, *(a1 + 10892), v107);
          v108 = sub_175AE4();
          v109 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1", v108, 16, v109, *(a1 + 10892), *(a1 + 1308));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1", v105, 16, v106, *(a1 + 10892), v107);
        }
      }

      *(a1 + 1308) = 1;
    }
  }

  if (*(a1 + 10854) == 1)
  {
    *(a1 + 1240) &= ~0x400u;
  }

  if (*(a1 + 39959) == 1)
  {
    v110 = *(a1 + 10892);
    if (v110 <= 0x25 && ((1 << v110) & 0x2000100002) != 0 || v110 == 10000)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v111 = sub_160F34(0x10u);
        v112 = sub_175AE4();
        v113 = sub_160F68(5);
        v114 = *(a1 + 10892);
        if (v111)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v112, 16, v113, v114);
          v115 = sub_175AE4();
          v435 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v115, 16, v435, *(a1 + 10892));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.", v112, 16, v113, v114);
        }
      }

      *(a1 + 39959) = 0;
    }

    if (*(a1 + 1132) != 3)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v116 = sub_160F34(0x10u);
        v117 = sub_175AE4();
        v118 = sub_160F68(5);
        v119 = *(a1 + 1132);
        if (v116)
        {
          printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v117, 16, v118, v119);
          v120 = sub_175AE4();
          v436 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v120, 16, v436, *(a1 + 1132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.", v117, 16, v118, v119);
        }
      }

      *(a1 + 1132) = 3;
    }

    if (*(a1 + 1336))
    {
      if (sub_160EF0(0x10u, 5))
      {
        v121 = sub_160F34(0x10u);
        v122 = sub_175AE4();
        v123 = sub_160F68(5);
        v124 = *(a1 + 1336);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)\n", v122, 16, v123, "AVE_ValidateEncoderParameters", 3453, v124);
          v125 = sub_175AE4();
          v126 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)", v125, 16, v126, "AVE_ValidateEncoderParameters", 3453, *(a1 + 1336));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)", v122, 16, v123, "AVE_ValidateEncoderParameters", 3453, v124);
        }
      }

      *(a1 + 1336) = 0;
      *(a1 + 39886) = 0;
    }

    if ((*(a1 + 1352) & 0x1E) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v127 = sub_160F34(0x10u);
        v128 = sub_175AE4();
        v129 = sub_160F68(5);
        v130 = *(a1 + 1352);
        if (v127)
        {
          printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v128, 16, v129, v130);
          v131 = sub_175AE4();
          v437 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v131, 16, v437, *(a1 + 1352));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0", v128, 16, v129, v130);
        }
      }

      *(a1 + 1352) = 0;
    }

    v132 = -6 * *(a1 + 24732);
    *(a1 + 1348) = v132;
    *(a1 + 1344) = v132;
    *(a1 + 1152) = v132;
    *(a1 + 1148) = v132;
    *(a1 + 1144) = v132;
    *(a1 + 1232) = *(a1 + 1344);
    if (*(a1 + 1464))
    {
      if (sub_160EF0(0x10u, 5))
      {
        v133 = sub_160F34(0x10u);
        v134 = sub_175AE4();
        v135 = sub_160F68(5);
        v136 = *(a1 + 1464);
        if (v133)
        {
          printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v134, 16, v135, v136);
          v137 = sub_175AE4();
          v438 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v137, 16, v438, *(a1 + 1464));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.", v134, 16, v135, v136);
        }
      }

      *(a1 + 1464) = 0;
    }

    if ((*(a1 + 1336) & 0x40) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v138 = sub_160F34(0x10u);
        v139 = sub_175AE4();
        v140 = sub_160F68(5);
        v141 = *(a1 + 1336);
        if (v138)
        {
          printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v139, 16, v140, v141);
          v142 = sub_175AE4();
          v439 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v142, 16, v439, *(a1 + 1336));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.", v139, 16, v140, v141);
        }
      }

      *(a1 + 1336) &= ~0x40u;
    }

    *(a1 + 42028) = 1;
    *(a1 + 60062) = 1;
    *v55 = 0;
    *v54 = 0;
  }

  if (*(a1 + 1256))
  {
    v143 = *(a1 + 11460);
    if (*(v2 + 1836) <= 0)
    {
      if (v143 < 1)
      {
        goto LABEL_245;
      }
    }

    else if (v143 < 1 || v143 < *(a1 + 1112))
    {
      goto LABEL_245;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v144 = sub_160F34(0x10u);
      v145 = sub_175AE4();
      v146 = sub_160F68(5);
      v147 = *(a1 + 1256);
      if (v144)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.\n", v145, 16, v146, "AVE_ValidateEncoderParameters", 3513, v147);
        v148 = sub_175AE4();
        v149 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.", v148, 16, v149, "AVE_ValidateEncoderParameters", 3513, *(a1 + 1256));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.", v145, 16, v146, "AVE_ValidateEncoderParameters", 3513, v147);
      }
    }

    *(a1 + 11460) = 0;
  }

LABEL_245:
  if (!*(a1 + 1336))
  {
    *(a1 + 39886) = 0;
  }

  if (*(a1 + 1232) <= -13)
  {
    *(a1 + 1232) = -6 * *(a1 + 24732);
  }

  if (*(a1 + 1236) <= -13)
  {
    if (*(a1 + 1132) == 20)
    {
      v150 = 51;
    }

    else
    {
      v150 = 48;
    }

    *(a1 + 1236) = v150;
  }

  if (*(a1 + 1344) <= -13)
  {
    *(a1 + 1344) = -6 * *(a1 + 24732);
  }

  v151 = (a1 + 1344);
  if (*(a1 + 1348) <= -13)
  {
    if (*(a1 + 1132) == 20)
    {
      v152 = 51;
    }

    else
    {
      v152 = 48;
    }

    *(a1 + 1348) = v152;
  }

  if (sub_17D104((a1 + 1344), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v153 = sub_160F34(3u);
      v154 = sub_175AE4();
      v155 = sub_160F68(4);
      if (v153)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v154, 3, v155, "AVE_ValidateEncoderParameters", 3553, "false", *(a1 + 1344), *(a1 + 1348));
        v154 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v154);
    }

    return 4294966295;
  }

  v156 = (a1 + 1232);
  if (sub_17D104((a1 + 1232), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v157 = sub_160F34(3u);
      v158 = sub_175AE4();
      v159 = sub_160F68(4);
      if (v157)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v158, 3, v159, "AVE_ValidateEncoderParameters", 3561, "false", *(a1 + 1232), *(a1 + 1236));
        v158 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]", v158);
    }

    return 4294966295;
  }

  if (*v156 < *v151)
  {
    *v156 = *v151;
  }

  v160 = *(a1 + 1348);
  if (*(a1 + 1236) > v160)
  {
    *(a1 + 1236) = v160;
  }

  v161 = *(a1 + 1132);
  if (*(a1 + 10764) == 1)
  {
    if (v161 != 20)
    {
      goto LABEL_294;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v162 = sub_160F34(0x10u);
      v163 = sub_175AE4();
      v164 = sub_160F68(5);
      v165 = *(a1 + 1132);
      if (v162)
      {
        printf("%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false\n", v163, 16, v164, v165);
        v166 = sub_175AE4();
        v440 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false", v166, 16, v440, *(a1 + 1132));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false", v163, 16, v164, v165);
      }
    }

    v170 = 0;
    goto LABEL_293;
  }

  if (v161 != 20 && *(a1 + 1256))
  {
    if (sub_160EF0(0x10u, 5))
    {
      v167 = sub_160F34(0x10u);
      v168 = sub_175AE4();
      v169 = sub_160F68(5);
      if (v167)
      {
        printf("%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v168, 16, v169, "AVE_ValidateEncoderParameters", 3599, *(a1 + 1132), *(a1 + 1256));
        v168 = sub_175AE4();
        sub_160F68(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true", v168);
    }

    v170 = 1;
LABEL_293:
    *(a1 + 10764) = v170;
  }

LABEL_294:
  if (*(v2 + 28))
  {
    *(a1 + 10540) = 1;
  }

  if (*(a1 + 1256) && *(a1 + 1476) == 1)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v171 = sub_160F34(0x10u);
      v172 = sub_175AE4();
      v173 = sub_160F68(5);
      v174 = *(a1 + 1256);
      if (v171)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case\n", v172, 16, v173, "AVE_ValidateEncoderParameters", 3627, v174);
        v175 = sub_175AE4();
        v176 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case", v175, 16, v176, "AVE_ValidateEncoderParameters", 3627, *(a1 + 1256));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case", v172, 16, v173, "AVE_ValidateEncoderParameters", 3627, v174);
      }
    }

    *(a1 + 1476) = 0;
  }

  v177 = *(a1 + 10192);
  if (v177 == 8)
  {
    v178 = *(a1 + 1088);
  }

  else
  {
    if (v177 != 10)
    {
      if (sub_160EF0(3u, 4))
      {
        v181 = sub_160F34(3u);
        v182 = sub_175AE4();
        v183 = sub_160F68(4);
        if (v181)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail\n", v182, 3, v183, "AVE_ValidateEncoderParameters", 3642, "(pINS->VideoParams.input_bitdepth == 8) || (pINS->VideoParams.input_bitdepth == 10)", *(a1 + 10192));
          v182 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail", v182);
      }

      return 4294966295;
    }

    v178 = *(a1 + 1088);
    if (*(a1 + 10853) != 1)
    {
      v179 = v178 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_309;
    }
  }

  v179 = v178 | 1;
LABEL_309:
  *(a1 + 1088) = v179;
  if (sub_E71EC(*(a1 + 68), 1, 2, *v34))
  {
    v180 = *(a1 + 76);
  }

  else
  {
    if (sub_160EF0(0x10u, 5))
    {
      v184 = sub_160F34(0x10u);
      v185 = sub_175AE4();
      v186 = sub_160F68(5);
      v187 = *v34;
      if (v184)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0\n", v185, 16, v186, v187);
        v188 = sub_175AE4();
        v441 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0", v188, 16, v441, *v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0", v185, 16, v186, v187);
      }
    }

    v180 = *(a1 + 76);
    if (v180 <= 29)
    {
      v189 = 0;
    }

    else
    {
      v189 = 3;
    }

    *v34 = v189;
  }

  if (v180 <= 8 && (*v34 & 0xFFFE) == 4 && (*(a1 + 1308) > 1 || *(a1 + 10556) >= 2u))
  {
    *v34 = 0;
  }

  if ((*(a1 + 1444) * *(a1 + 1440)) >= 0x7E9000 && *(a1 + 1112) >= 100 && (*(v3 + 255) & 0x80000000) != 0 && (*(v2 + 1916) & 0x80000000) != 0)
  {
    if (v180 <= 29)
    {
      v206 = 0;
    }

    else
    {
      v206 = 3;
    }

    *v34 = v206;
LABEL_334:
    if (*(a1 + 64) != 2 && !*(a1 + 10531))
    {
      goto LABEL_342;
    }

    goto LABEL_336;
  }

  if (*v34 != 7)
  {
    goto LABEL_334;
  }

LABEL_336:
  if ((*(a1 + 10172) & 1) == 0)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v190 = sub_160F34(0x10u);
      v191 = sub_175AE4();
      v192 = sub_160F68(5);
      if (v190)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.\n", v191, 16, v192);
        v193 = sub_175AE4();
        v442 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.", v193, 16, v442);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.", v191, 16, v192);
      }
    }

    *(a1 + 10172) = 1;
  }

LABEL_342:
  if (*(a1 + 10857) == 1)
  {
    if ((*(a1 + 1339) & 4) != 0)
    {
      v194 = -6 * *(a1 + 24732);
      v195 = *(a1 + 1144) + 4;
      if (v195 <= v194)
      {
        v195 = -6 * *(a1 + 24732);
      }

      if (v195 >= 51)
      {
        v195 = 51;
      }

      *(a1 + 1148) = v195;
      if (v194 <= 51)
      {
        v194 = v195 + 1;
      }

      if (v194 >= 51)
      {
        v194 = 51;
      }

      *(a1 + 1152) = v194;
      *(a1 + 1132) = 3;
    }

    else if ((*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && (*(a1 + 10858) & 1) == 0 && *(a1 + 10904) == 1)
    {
      *(a1 + 1464) = 0;
      *(a1 + 39886) = 0;
      *(a1 + 1352) = 0;
      *(a1 + 1336) = 0;
    }
  }

  else if (*(a1 + 10904) == 1 && (*(a1 + 10783) & 1) == 0 && *(a1 + 1132) != 4 && (*(a1 + 10858) & 1) == 0)
  {
    *(a1 + 1464) = 0;
    *(a1 + 39886) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1336) = 0;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0x1E0000001ELL;
    *(a1 + 1152) = 30;
  }

  if ((*(a1 + 10904) & 1) != 0 || (*(a1 + 716) & 0x3C0) != 0 || *(v2 + 28))
  {
    *(a1 + 1128) = 0;
    *(a1 + 1120) &= ~0x80000000uLL;
  }

  if (*(a1 + 1132) == 3)
  {
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    if (*(a1 + 10752) == 2)
    {
      v196 = *(a1 + 1336) & 0xFFFF7F8F;
      v197 = *(a1 + 1352) & 0x1E;
    }

    else
    {
      v197 = 0;
      v196 = 0;
      *(a1 + 39886) = 0;
    }

    *(a1 + 1336) = v196;
    *(a1 + 1352) = v197;
  }

  if ((*(a1 + 1123) & 0x80) != 0)
  {
    *(a1 + 11460) = 0;
    *(a1 + 1104) |= 0x40uLL;
  }

  if (*(a1 + 1336) && (*(a1 + 39886) & 1) == 0)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v198 = sub_160F34(0x10u);
      v199 = sub_175AE4();
      v200 = sub_160F68(5);
      v201 = *(a1 + 1336);
      if (v198)
      {
        printf("%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.\n", v199, 16, v200, "AVE_ValidateEncoderParameters", 3818, v201);
        v202 = sub_175AE4();
        v203 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.", v202, 16, v203, "AVE_ValidateEncoderParameters", 3818, *(a1 + 1336));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.", v199, 16, v200, "AVE_ValidateEncoderParameters", 3818, v201);
      }
    }

    *(a1 + 39886) = 1;
  }

  v467 = a1 + 24248;
  if (*(a1 + 10192) == 10 && *(a1 + 10752) != 2)
  {
    v204 = *(a1 + 31368);
    if (v204 == 16)
    {
      if (*(a1 + 24688) == 1 && (*(a1 + 39924) = 0x500000005, (*(a1 + 1123) & 0x80) != 0))
      {
        LOBYTE(v205) = 0;
        *(a1 + 1336) |= 0x8000000u;
      }

      else
      {
        LOBYTE(v205) = 0;
      }
    }

    else if (v204 == 18 && (v205 = *(a1 + 24688), v205 == 1))
    {
      *(a1 + 39924) = 0xB0000000BLL;
    }

    else
    {
      LOBYTE(v205) = 1;
    }

    v207 = *(a1 + 76);
    if (v207 >= 23)
    {
      v208 = *(a1 + 24688);
      if (v208 != 1)
      {
        LOBYTE(v205) = 1;
      }

      if ((v205 & 1) == 0 && (*(a1 + 1123) & 0x80) != 0)
      {
        *(a1 + 39956) = 1;
      }

      v34 = (a1 + 10168);
      v54 = a1 + 59393;
      if (v207 >= 0x1E && v208 == 1 && (v204 | 2) == 0x12)
      {
        *(a1 + 39956) = 1;
      }
    }
  }

  v209 = *(a1 + 1336);
  if ((v209 & 0x40) != 0)
  {
    v210 = *(a1 + 1440) + 15;
    v211 = *(a1 + 1444) + 15;
    v212 = v211 >> 4;
    v213 = (v210 >> 4) + 31;
    v214 = v213 & 0x1FFFFFE0;
    if (v210 > 0x78F || v211 >= 0x450)
    {
      v215 = (((((v210 >> 4) + 1) >> 1) + 31) >> 5) * ((v212 + 1) >> 1);
    }

    else
    {
      v215 = (v213 >> 5) * v212;
    }

    if (v214 > 0x100 || v211 > 0xC0F || v215 >= 0x121)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v216 = sub_160F34(0x10u);
        v465 = sub_175AE4();
        v217 = sub_160F68(5);
        if (v216)
        {
          printf("%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d\n", v465, 16, v217, v214, 256, v212, 192);
          v218 = sub_175AE4();
          sub_160F68(5);
          syslog(3, "%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d", v218);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d", v465);
        }
      }

      v209 = *(a1 + 1336) & 0xFFFFFFBF;
      *(a1 + 1336) = v209;
    }
  }

  v219 = a1 + 24248;
  if (*(a1 + 11792) >= 0x1Fu)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v220 = sub_160F34(0x10u);
      v221 = sub_175AE4();
      v222 = sub_160F68(5);
      if (v220)
      {
        printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v221, 16, v222, 30);
        v223 = sub_175AE4();
        v443 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v223, 16, v443, 30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM", v221, 16, v222, 30);
      }
    }

    *(a1 + 11792) = 30;
    v209 = *(a1 + 1336);
  }

  if ((v209 & 0x10) != 0)
  {
    v224 = *(a1 + 1132);
    if (v224 <= 0x14 && ((1 << v224) & 0x100009) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v225 = sub_160F34(0x10u);
        v226 = sub_175AE4();
        v227 = sub_160F68(5);
        if (v225)
        {
          printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false\n", v226, 16, v227, "AVE_ValidateEncoderParameters", 3932, *(a1 + 1132), *(a1 + 1336));
          v226 = sub_175AE4();
          sub_160F68(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false", v226);
      }

      v209 = *(a1 + 1336) & 0xFFFFFFEF;
      *(a1 + 1336) = v209;
      v224 = *(a1 + 1132);
    }

    if (v224 == 100)
    {
      if (sub_160EF0(3u, 4))
      {
        v228 = sub_160F34(3u);
        v229 = sub_175AE4();
        v230 = sub_160F68(4);
        if (v228)
        {
          printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v229, 3, v230, "AVE_ValidateEncoderParameters", 3939, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 3939, *(a1 + 1132), *(a1 + 1336));
          v229 = sub_175AE4();
          v230 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v229, 3, v230);
      }

      return 4294966295;
    }
  }

  if ((v209 & 0x8010) == 0x8000)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v231 = sub_160F34(0x10u);
      v232 = sub_175AE4();
      v233 = sub_160F68(5);
      v234 = *(a1 + 1336) & 0x10;
      if (v231)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false\n", v232, 16, v233, v234);
        v235 = sub_175AE4();
        v444 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false", v235, 16, v444, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false", v232, 16, v233, v234);
      }
    }

    v209 = *(a1 + 1336) & 0xFFFF7FFF;
    *(a1 + 1336) = v209;
  }

  if ((v209 & 0x30) == 0x20)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v236 = sub_160F34(0x10u);
      v237 = sub_175AE4();
      v238 = sub_160F68(5);
      v239 = *(a1 + 1336) & 0x10;
      if (v236)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false\n", v237, 16, v238, v239);
        v240 = sub_175AE4();
        v445 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false", v240, 16, v445, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false", v237, 16, v238, v239);
      }
    }

    v209 = *(a1 + 1336) & 0xFFFFFFDF;
    *(a1 + 1336) = v209;
  }

  if ((v209 & 4) != 0 && (v209 & 0x12) != 0x12)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v241 = sub_160F34(0x10u);
      v242 = sub_175AE4();
      v243 = sub_160F68(5);
      v244 = *(a1 + 1336) & 4;
      v245 = *(a1 + 1336) & 0x10;
      if (v241)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.\n", v242, 16, v243, v244, *(a1 + 1336) & 2, v245);
        v246 = sub_175AE4();
        v247 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.", v246, 16, v247, *(a1 + 1336) & 4, *(a1 + 1336) & 2, *(a1 + 1336) & 0x10);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.", v242, 16, v243, v244, *(a1 + 1336) & 2, v245);
      }
    }

    v209 = *(a1 + 1336) & 0xFFFFFFFB;
    *(a1 + 1336) = v209;
  }

  if ((*(a1 + 1123) & 0x80) != 0)
  {
    v248 = *(a1 + 1240) | 0x30000;
    v249 = v209 & 0xFFFFFFAF;
    v250 = *(a1 + 1132);
    if (v250 == 8 || v250 == 6)
    {
      v249 |= 0x30u;
    }

    *(a1 + 1336) = (v249 | *(v3 + 237)) & ~*(v3 + 238);
    *(a1 + 1240) = (*(v3 + 218) | v248) & ~*(v3 + 219);
    if (sub_160EF0(0x10u, 6))
    {
      v251 = sub_160F34(0x10u);
      v252 = sub_175AE4();
      v253 = sub_160F68(6);
      if (v251)
      {
        printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v252, 16, v253);
        v254 = sub_175AE4();
        v446 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v254, 16, v446);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled", v252, 16, v253);
      }
    }
  }

  v255 = *(a1 + 10244);
  if (v255 >= 2)
  {
    v256 = *(a1 + 1132);
    if (v256 && v256 != 20 && (*(a1 + 24856) & 1) == 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v257 = sub_160F34(0x10u);
        v258 = sub_175AE4();
        v259 = sub_160F68(5);
        v260 = *(a1 + 1132);
        if (v257)
        {
          printf("%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1\n", v258, 16, v259, *(a1 + 10244), v260);
          v261 = sub_175AE4();
          v262 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1", v261, 16, v262, *(a1 + 10244), *(a1 + 1132));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1", v258, 16, v259, *(a1 + 10244), v260);
        }
      }

      v255 = 1;
      *(a1 + 10244) = 1;
      v219 = a1 + 24248;
    }

    if (*(a1 + 10892) == 1)
    {
      v263.i64[0] = 0xC0000000CLL;
      v263.i64[1] = 0xC0000000CLL;
      v264.i64[0] = 0x100000001;
      v264.i64[1] = 0x100000001;
      v265 = vaddvq_s32(vsubq_s32(vbicq_s8(v264, vceqq_s32(*(a1 + 39892), v263)), vmvnq_s8(vceqq_s32(*(a1 + 39908), v263))));
      if (v255 != v265)
      {
        if (sub_160EF0(3u, 4))
        {
          v270 = sub_160F34(3u);
          v271 = sub_175AE4();
          v272 = sub_160F68(4);
          if (v270)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v271, 3, v272, "AVE_ValidateEncoderParameters", 4034, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v265);
            v271 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail", v271);
        }

        return 4294966295;
      }
    }
  }

  if (*(a1 + 1308) >= 2)
  {
    if ((*(a1 + 1296) & 1) == 0)
    {
      goto LABEL_495;
    }

    if (sub_160EF0(0x10u, 5))
    {
      v266 = sub_160F34(0x10u);
      v267 = sub_175AE4();
      v268 = sub_160F68(5);
      if (v266)
      {
        printf("%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.\n", v267, 16, v268);
        v269 = sub_175AE4();
        v447 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.", v269, 16, v447);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.", v267, 16, v268);
      }

      v219 = a1 + 24248;
    }

    *(a1 + 1308) = 1;
  }

  if (*(a1 + 1256) || (*v34 & 0xFFFE) == 4 || (*(a1 + 716) & 0x3C0) != 0 || *(a1 + 10556) > 1u || (*(a1 + 1296) & 1) != 0)
  {
LABEL_495:
    if ((*(v34 + 5) & 1) == 0)
    {
      *(v34 + 5) = 1;
    }
  }

  if (*(a1 + 1264) == 1)
  {
    v273 = *(a1 + 1240);
    if (*(a1 + 10560) == 1)
    {
      *(a1 + 1268) = 0;
      *(a1 + 1272) = 0xBFF0000000000000;
      *(a1 + 1280) = 0xBFF0000000000000;
      *(a1 + 1252) = 0;
      v273 &= ~0x400u;
      *(a1 + 1240) = v273;
      *(a1 + 1260) = 1;
      *(a1 + 1288) = 1;
    }
  }

  else
  {
    v273 = *(a1 + 1240);
  }

  if ((v273 & 0x100) != 0 && !*(a1 + 1256))
  {
    *(a1 + 1240) = v273 & 0xFFFFFEFF;
    if (sub_160EF0(0x10u, 5))
    {
      v274 = sub_160F34(0x10u);
      v275 = sub_175AE4();
      v276 = sub_160F68(5);
      if (v274)
      {
        printf("%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true\n", v275, 16, v276);
        v277 = sub_175AE4();
        v448 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true", v277, 16, v448);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true", v275, 16, v276);
      }

      v219 = a1 + 24248;
    }
  }

  if (*(a1 + 10556) >= 2u)
  {
    if (*(a1 + 1112) <= 0 && sub_160EF0(0x10u, 5))
    {
      v278 = sub_160F34(0x10u);
      v279 = sub_175AE4();
      v280 = sub_160F68(5);
      if (v278)
      {
        printf("%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined\n", v279, 16, v280);
        v281 = sub_175AE4();
        v449 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v281, 16, v449);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v279, 16, v280);
      }
    }

    if ((*(a1 + 1088) & 2) != 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v282 = sub_160F34(0x10u);
        v283 = sub_175AE4();
        v284 = sub_160F68(5);
        if (v282)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop\n", v283, 16, v284);
          v285 = sub_175AE4();
          v450 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop", v285, 16, v450);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop", v283, 16, v284);
        }
      }

      *(a1 + 1088) &= ~2uLL;
    }

    if (*(v34 + 80) == 1)
    {
      *(v34 + 80) = 0;
      *(v34 + 21) = 1;
      if (sub_160EF0(0x10u, 5))
      {
        v286 = sub_160F34(0x10u);
        v287 = sub_175AE4();
        v288 = sub_160F68(5);
        if (v286)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode\n", v287, 16, v288);
          v289 = sub_175AE4();
          v451 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode", v289, 16, v451);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode", v287, 16, v288);
        }
      }
    }

    if (*(v2 + 28))
    {
      if (sub_160EF0(3u, 4))
      {
        v290 = sub_160F34(3u);
        v291 = sub_175AE4();
        v292 = sub_160F68(4);
        if (v290)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass\n", v291, 3, v292, "AVE_ValidateEncoderParameters", 4108, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass");
      }

      return 4294965294;
    }

    if (*(a1 + 11776) == 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v293 = sub_160F34(3u);
        v294 = sub_175AE4();
        v295 = sub_160F68(4);
        if (v293)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization\n", v294, 3, v295, "AVE_ValidateEncoderParameters", 4114, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization");
      }

      return 4294965294;
    }

    v296 = *(a1 + 1132);
    if (v296 == 4 || v296 == 2 && (*(a1 + 1123) & 0x80) == 0)
    {
      if (sub_160EF0(3u, 4))
      {
        v297 = sub_160F34(3u);
        v298 = sub_175AE4();
        v299 = sub_160F68(4);
        if (v297)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR\n", v298, 3, v299, "AVE_ValidateEncoderParameters", 4122, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR");
      }

      return 4294965294;
    }

    if (*(a1 + 11460) >= 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v300 = sub_160F34(3u);
        v301 = sub_175AE4();
        v302 = sub_160F68(4);
        if (v300)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate\n", v301, 3, v302, "AVE_ValidateEncoderParameters", 4128, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate");
      }

      return 4294965294;
    }

    if (*(a1 + 24688) != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v307 = sub_160F34(3u);
        v308 = sub_175AE4();
        v309 = sub_160F68(4);
        if (v307)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444\n", v308, 3, v309, "AVE_ValidateEncoderParameters", 4135, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444");
      }

      return 4294965294;
    }

    v303 = (a1 + 15575);
    *(a1 + 1240) &= ~0x400u;
    *(v34 + 352) = 1;
    if (*(a1 + 15575))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v304 = sub_160F34(0x1Eu);
        v305 = sub_175AE4();
        v306 = sub_160F68(4);
        if (v304)
        {
          printf("%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d\n", v305, 30, v306, "AVE_ValidateEncoderParameters", 4145, "pINS->VPSHevcParams.layer_id_in_nuh[0] == 0", *v303);
          v305 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d", v305);
      }

      return 4294965290;
    }

    if (*(a1 + 10556) >= 3u)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v315 = sub_160F34(0x1Eu);
        v316 = sub_175AE4();
        v317 = sub_160F68(4);
        if (v315)
        {
          printf("%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d\n", v316, 30, v317, "AVE_ValidateEncoderParameters", 4150, "pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556), 2);
          v316 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d", v316);
      }

      return 4294965291;
    }

    v310 = *(a1 + 15639);
    if (!*(a1 + 15639))
    {
      if (sub_160EF0(0x10u, 5))
      {
        v311 = sub_160F34(0x10u);
        v312 = sub_175AE4();
        v313 = sub_160F68(5);
        if (v311)
        {
          printf("%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values\n", v312, 16, v313);
          v314 = sub_175AE4();
          v452 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values", v314, 16, v452);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values", v312, 16, v313);
        }
      }

      v318 = *(a1 + 10556);
      *(a1 + 10560) = v318;
      v310 = 1;
      *(a1 + 15639) = 1;
      if (v318)
      {
        v319 = 0;
        do
        {
          *(a1 + 15640 + v319) = v319;
          *(a1 + 11808 + v319) = v319;
          ++v319;
        }

        while (v318 > v319);
        v310 = 1;
      }
    }

    v320 = 0;
    v321 = a1 + 11808;
    v322 = 1;
    while (2)
    {
      v323 = 0;
      v324 = v322;
      while (*(v321 + v320) != *(a1 + 15640 + v323))
      {
        if (v310 < ++v323)
        {
          if (sub_160EF0(3u, 4))
          {
            v422 = sub_160F34(3u);
            v423 = sub_175AE4();
            v424 = sub_160F68(4);
            if (v422)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list\n", v423, 3, v424, "AVE_ValidateEncoderParameters", 4179, "bFound", *(v321 + v320));
              v423 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list", v423);
          }

          return 4294965289;
        }
      }

      v322 = 0;
      v320 = 1;
      if (v324)
      {
        continue;
      }

      break;
    }

    *(v34 + 686) = 1;
    v219 = a1 + 24248;
  }

  if (*(v2 + 1836) >= 1)
  {
    v325 = *(a1 + 11460);
    if (v325 >= 1 && v325 < *(a1 + 1112))
    {
      goto LABEL_590;
    }
  }

  if (*(a1 + 1260) <= 2 || *(a1 + 1256) < 3)
  {
    goto LABEL_639;
  }

  v325 = *(a1 + 11460);
  if (v325 < 1)
  {
    v329 = 1;
  }

  else
  {
LABEL_590:
    v326 = *(a1 + 1112);
    v327 = -1;
    do
    {
      v328 = v326 >> (v327++ + 2);
    }

    while (v328 >= v325);
    v329 = v327 + 1;
    if (v325 << v327 != v326)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v330 = sub_160F34(0x10u);
        v466 = sub_175AE4();
        v331 = sub_160F68(5);
        v332 = *(a1 + 16);
        v333 = *(a1 + 11460);
        if (v330)
        {
          printf("%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d\n", v466, 16, v331, v332, *(a1 + 1112), v333);
          v334 = sub_175AE4();
          v335 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d", v334, 16, v335, *(a1 + 16), *(a1 + 1112), *(a1 + 11460));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d", v466, 16, v331, v332, *(a1 + 1112), v333);
        }
      }

      v325 = *(a1 + 1112) >> v327;
      *(a1 + 11460) = v325;
    }
  }

  v336 = *(a1 + 1288);
  if (v336 > 1)
  {
    if (v325 <= 0)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v337 = sub_160F34(0x10u);
        v338 = sub_175AE4();
        v339 = sub_160F68(5);
        v340 = *(a1 + 1288);
        if (v337)
        {
          printf("%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding\n", v338, 16, v339, v340);
          v341 = sub_175AE4();
          v453 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding", v341, 16, v453, *(a1 + 1288));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding", v338, 16, v339, v340);
        }
      }

      v336 = 1;
      *(a1 + 1288) = 1;
    }

    v342 = v336 == v329;
    v336 = v329;
    if (!v342)
    {
      v343 = sub_160EF0(0x10u, 5);
      v336 = v329;
      if (v343)
      {
        v344 = sub_160F34(0x10u);
        v345 = sub_175AE4();
        v346 = sub_160F68(5);
        if (v344)
        {
          printf("%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d\n", v345, 16, v346, v329);
          v347 = sub_175AE4();
          v454 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d", v347, 16, v454, v329);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d", v345, 16, v346, v329);
        }

        v336 = v329;
      }
    }
  }

  if (v336 <= v329)
  {
    v348 = v329;
  }

  else
  {
    v348 = v336;
  }

  *(a1 + 1288) = v348;
  if (*(a1 + 10556) >= 2u && v348 >= 2)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v349 = sub_160F34(0x10u);
      v350 = sub_175AE4();
      v351 = sub_160F68(5);
      v352 = *(a1 + 1288);
      if (v349)
      {
        printf("%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1\n", v350, 16, v351, v352);
        v353 = sub_175AE4();
        v455 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1", v353, 16, v455, *(a1 + 1288));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1", v350, 16, v351, v352);
      }
    }

    v348 = 1;
  }

  if (((*(v2 + 3080) | *(v2 + 3076)) & 0x400) == 0)
  {
    v354 = *(a1 + 1240);
    if ((v354 & 0x400) != 0 && v348 >= 3)
    {
      *(a1 + 1240) = v354 & 0xFFFFFBFF;
    }
  }

  if (v348 >= 3)
  {
    v355 = 3;
  }

  else
  {
    v355 = v348;
  }

  if ((*(a1 + 1444) * *(a1 + 1440)) > 0x7E8FFF)
  {
    v348 = v355;
  }

  if (v348 >= 4)
  {
    v348 = 4;
  }

  *(a1 + 1288) = v348;
  *(a1 + 39872) = 1;
  *(v54 + 575) = 0;
  v219 = a1 + 24248;
  if (!*(a1 + 1256))
  {
    *(a1 + 1240) &= ~0x400u;
    if (*(a1 + 76) <= 3 && *(a1 + 692) == 1)
    {
      *(v54 + 575) = 3;
    }

    v219 = a1 + 24248;
    if (*(a1 + 1112) == *(a1 + 11460))
    {
      *(a1 + 1288) = 1;
      *(a1 + 11460) = 0;
    }
  }

LABEL_639:
  v356 = *(a1 + 1288);
  if (v356 >= 2 || (v356 = *(v2 + 2088), v356 >= 2))
  {
    v357 = v356 - 1;
    *v219 = v357;
    *(a1 + 12012) = v357;
  }

  v358 = sub_FB108(*(v3 + 256), *(v2 + 3200), *(a1 + 68), *(a1 + 76), *(a1 + 64), 2, *(v219 + 440), *(v2 + 1524), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
  *(a1 + 1368) = v358;
  v359 = *(a1 + 76);
  if (v359 >= 30)
  {
    *(v219 + 588) = 3;
    if (!*(a1 + 692) && *(v2 + 1524) >= 1)
    {
      *(a1 + 688) |= 0x100u;
      *(a1 + 1256) = 0;
      *(a1 + 1240) &= 0xFFFFFAFF;
    }

    if ((v358 & 0xFFFFFFFE) == 2)
    {
      *(a1 + 39885) = 1;
    }
  }

  if (*(a1 + 1264) <= 0 && *(a1 + 1268) <= 0 && *(a1 + 1272) <= 0.0 && *(a1 + 1280) <= 0.0)
  {
    *(a1 + 1264) = 30;
  }

  if (*(a1 + 1288) == 1)
  {
    *(v34 + 1848) = 1;
    *(v219 + 4) = 1;
  }

  if (!*(a1 + 1256))
  {
    *(a1 + 1240) &= ~0x400u;
  }

  if (((*(v2 + 3080) | *(v2 + 3076)) & 0x400) == 0)
  {
    v360 = *(a1 + 1240);
    if ((v360 & 0x400) != 0 && (*(a1 + 1123) & 0x80) != 0)
    {
      *(a1 + 1240) = v360 & 0xFFFFFBFF;
    }
  }

  v361 = *(v3 + 257);
  if (v361 <= 5)
  {
    *(v54 + 575) = 5 - v361;
  }

  if (v359 <= 3)
  {
    if (*(v34 + 37) == 1)
    {
      *(v34 + 37) = 0;
    }

    *(v34 + 36) = 0;
  }

  else
  {
    *(v34 + 37) = 1;
  }

  v362 = *(a1 + 692);
  if (v362 == 1)
  {
    *(a1 + 688) &= ~2u;
  }

  if (*(a1 + 10804) == 1 && *(v34 + 681) == 1)
  {
    *(v34 + 681) = 0;
  }

  v363 = *(a1 + 1120);
  if ((v363 & 0x10) != 0)
  {
    *(a1 + 1112) = *(a1 + 11448);
    *(a1 + 1240) &= ~0x400u;
  }

  if ((*(a1 + 716) & 0x3C0) == 0)
  {
    goto LABEL_725;
  }

  *(a1 + 688) |= 0x100u;
  *(a1 + 1096) |= 0x4000000000uLL;
  if (!*(v34 + 363))
  {
    *(v34 + 363) = 3;
  }

  *(a1 + 42028) = 0;
  *(v54 + 669) = 0;
  *(v34 + 4) = 1;
  *(v34 + 362) = 1;
  if (*(a1 + 10552) == 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
  }

  if (v359 > 29 || v359 == 28)
  {
    if (v359 > 0x1E)
    {
      if (*(a1 + 24688))
      {
LABEL_694:
        if (v362 >= 1 && (v363 & 0x10) == 0)
        {
          v368 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0x1F0000001FLL), 5uLL);
          if ((*(a1 + 1112) * v368.i32[0] * v368.i32[1]) >= 0x45BA1)
          {
            if (sub_160EF0(0x10u, 5))
            {
              v369 = sub_160F34(0x10u);
              v370 = sub_175AE4();
              v371 = sub_160F68(5);
              if (v369)
              {
                printf("%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.\n", v370, 16, v371, "AVE_ValidateEncoderParameters", 4530, *(a1 + 1440), *(a1 + 1444), *(a1 + 1112));
                v370 = sub_175AE4();
                sub_160F68(5);
              }

              syslog(3, "%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.", v370);
            }

            *(a1 + 1256) = 0;
            *(a1 + 1240) &= 0xFFFFFAFF;
          }
        }

        v367 = *(a1 + 11812);
        if (v367 < 0)
        {
          v367 = *(a1 + 10804) != 2 || *(a1 + 692) <= 0;
        }

        *(a1 + 1392) = v367;
        if (*(a1 + 1396) == -1 && *(a1 + 10804) == 2 && *(a1 + 692) >= 1)
        {
          *(a1 + 1396) = 5;
        }

        goto LABEL_718;
      }

LABEL_701:
      if (!sub_160EF0(3u, 4))
      {
        return 4294966295;
      }

      v372 = sub_160F34(3u);
      v51 = sub_175AE4();
      v373 = sub_160F68(4);
      if (v372)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v51, 3, v373, "AVE_ValidateEncoderParameters", 4512, "false", *(v467 + 440));
        v51 = sub_175AE4();
        v373 = sub_160F68(4);
        v460 = "false";
        v461 = *(v467 + 440);
        v459 = 4512;
      }

      else
      {
        v461 = *(v467 + 440);
        v459 = 4512;
        v460 = "false";
      }

      v433 = v373;
      v53 = "%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail";
      goto LABEL_155;
    }
  }

  else if (*(a1 + 10556) >= 2u)
  {
    if (sub_160EF0(3u, 4))
    {
      v364 = sub_160F34(3u);
      v365 = sub_175AE4();
      v366 = sub_160F68(4);
      if (v364)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail\n", v365, 3, v366, "AVE_ValidateEncoderParameters", 4501, "false");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail");
    }

    return 4294966295;
  }

  if (*(a1 + 24688) != 1)
  {
    goto LABEL_701;
  }

  if (v359 >= 30)
  {
    goto LABEL_694;
  }

  v367 = *(a1 + 11812);
  if (v367 < 0)
  {
    v367 = 1;
  }

  *(a1 + 1392) = v367;
  if (v359 != 28)
  {
    *(a1 + 1448) &= ~0x2000000uLL;
  }

LABEL_718:
  if (*(a1 + 1396) >= 1 && v367 == 1)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v374 = sub_160F34(0x10u);
      v375 = sub_175AE4();
      v376 = sub_160F68(5);
      v377 = *(a1 + 16);
      v378 = *(a1 + 1396);
      if (v374)
      {
        printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v375, 16, v376, v377, *(a1 + 1392), v378);
        v379 = sub_175AE4();
        v380 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v379, 16, v380, *(a1 + 16), *(a1 + 1392), *(a1 + 1396));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)", v375, 16, v376, v377, *(a1 + 1392), v378);
      }
    }

    *(a1 + 1396) = -1;
  }

LABEL_725:
  v381 = *(a1 + 1120);
  if ((v381 & 0x80000000) != 0 && *(a1 + 76) >= 9)
  {
    *(v34 + 4) = 1;
    *(v34 + 362) = 1;
  }

  v382 = *(v34 + 4);
  if (*(v34 + 4))
  {
    v383 = 0x10000;
  }

  else
  {
    v383 = 0;
  }

  *(a1 + 1240) = *(a1 + 1240) & 0xFFFEFFFF | v383;
  if ((*(a1 + 1296) & 1) != 0 && (!v382 || *(a1 + 11476) > 0 || (v381 & 0x80000000) != 0 || *(a1 + 10556) > 1u || *(v2 + 28) || *(a1 + 1368) >= 5))
  {
    if (sub_160EF0(0x10u, 5))
    {
      v384 = sub_160F34(0x10u);
      v385 = sub_175AE4();
      v386 = sub_160F68(5);
      if (v384)
      {
        printf("%lld %d AVE %s: FIG: Force to disable Weighted Prediction\n", v385, 16, v386);
        v387 = sub_175AE4();
        v456 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: FIG: Force to disable Weighted Prediction", v387, 16, v456);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: Force to disable Weighted Prediction", v385, 16, v386);
      }
    }

    *(a1 + 10200) = 0;
    *(a1 + 1296) &= ~1u;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  if (*(v34 + 80) == 1)
  {
    v388 = *(v34 + 21);
    if (v388 == 1)
    {
      if (sub_160EF0(0x10u, 5))
      {
        v389 = sub_160F34(0x10u);
        v390 = sub_175AE4();
        v391 = sub_160F68(5);
        if (v389)
        {
          printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v390, 16, v391);
          v392 = sub_175AE4();
          v457 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v392, 16, v457);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode", v390, 16, v391);
        }
      }

      *(v34 + 80) = 0;
      v388 = *(v34 + 21);
    }

    if (v388)
    {
      v393 = 0;
      v394 = (v388 - 1);
      v395 = (a1 + 10260);
      while (1)
      {
        if (v394 == v393)
        {
          v396 = *(a1 + 10260 + 8 * v394);
          if (v396 < 96)
          {
            break;
          }
        }

        else
        {
          v396 = *v395;
          if (*v395 < 128)
          {
            break;
          }
        }

        if ((v396 + *(v395 - 1)) > *(a1 + 1444))
        {
          break;
        }

        ++v393;
        v395 += 2;
        if (v388 == v393)
        {
          goto LABEL_765;
        }
      }

      if (sub_160EF0(0x10u, 5))
      {
        v397 = sub_160F34(0x10u);
        v398 = sub_175AE4();
        v399 = sub_160F68(5);
        if (v397)
        {
          printf("%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding\n", v398, 16, v399, v393, *(v395 - 1), *v395, *(a1 + 1444));
          v398 = sub_175AE4();
          sub_160F68(5);
        }

        syslog(3, "%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding", v398);
      }

      *(v34 + 80) = 0;
      *(v34 + 42) = 1;
      *(a1 + 10260) = *(a1 + 1444);
    }
  }

LABEL_765:
  v400 = *(a1 + 76);
  if (v400 >= 9)
  {
    v401 = 2;
    if (v400 <= 0x1E && ((1 << v400) & 0x48821000) != 0)
    {
      if (*(a1 + 10892))
      {
        v401 = 2;
      }

      else
      {
        v401 = 5;
      }
    }
  }

  else
  {
    v401 = 5;
  }

  *(v34 + 396) = v401;
  v402 = *(a1 + 1336);
  if (v402)
  {
    *(a1 + 39886) = ((v34[345] & 1) == 0) | BYTE2(v402) & 1;
  }

  else
  {
    *(a1 + 39886) = 0;
  }

  v403 = *(a1 + 716) | 0x3E;
  *(a1 + 716) = v403;
  if (!*(v34 + 363))
  {
    *(a1 + 716) = v403 & 0xFFFFFFF7;
  }

  *(a1 + 1096) = (*(v3 + 123) | *(a1 + 1096) & ~*(v2 + 3164)) & ~*(v3 + 124);
  if (sub_17D0E0(*(a1 + 1144), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v404 = sub_160F34(3u);
      v405 = sub_175AE4();
      v406 = sub_160F68(4);
      if (v404)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v405, 3, v406, "AVE_ValidateEncoderParameters", 4725, "false", *(a1 + 1144));
        v405 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v405);
    }

    return 4294966295;
  }

  if (sub_17D0E0(*(a1 + 1148), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v407 = sub_160F34(3u);
      v408 = sub_175AE4();
      v409 = sub_160F68(4);
      if (v407)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v408, 3, v409, "AVE_ValidateEncoderParameters", 4730, "false", *(a1 + 1148));
        v408 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v408);
    }

    return 4294966295;
  }

  if (sub_17D0E0(*(a1 + 1152), *(a1 + 24732) + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v410 = sub_160F34(3u);
      v411 = sub_175AE4();
      v412 = sub_160F68(4);
      if (v410)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v411, 3, v412, "AVE_ValidateEncoderParameters", 4735, "false", *(a1 + 1152));
        v411 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v411);
    }

    return 4294966295;
  }

  v413 = *(a1 + 1264) != 1 || *(a1 + 10560) != 1;
  if (sub_14E248(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), v413))
  {
    if (sub_160EF0(3u, 4))
    {
      v414 = sub_160F34(3u);
      v415 = sub_175AE4();
      v416 = sub_160F68(4);
      if (v414)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v415, 3, v416, "AVE_ValidateEncoderParameters", 4748, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
        v415 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v415, 3);
    }

    return 4294966295;
  }

  if ((*(a1 + 39961) & 1) == 0 && *(a1 + 76) <= 29)
  {
    if (sub_160EF0(0x10u, 5))
    {
      v417 = sub_160F34(0x10u);
      v418 = sub_175AE4();
      v419 = sub_160F68(5);
      if (v417)
      {
        printf("%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.\n", v418, 16, v419, "AVE_ValidateEncoderParameters", 4757);
        v420 = sub_175AE4();
        v458 = sub_160F68(5);
        syslog(3, "%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.", v420, 16, v458, "AVE_ValidateEncoderParameters", 4757);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.", v418, 16, v419, "AVE_ValidateEncoderParameters", 4757);
      }
    }

    *(a1 + 39961) = 1;
  }

  if (*(v2 + 1832) <= 0 && *(v2 + 1984) < 1)
  {
    return 0;
  }

  v425 = *(a1 + 11460);
  if (v425 < 1)
  {
    return 0;
  }

  v426 = *(a1 + 1112);
  if (v425 > v426)
  {
    return 0;
  }

  v19 = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1252) = v426 / v425;
  *(a1 + 1256) = 0x200000000;
  *(a1 + 1288) = 1;
  return v19;
}

void sub_107808(uint64_t a1, __CVBuffer *a2)
{
  if (sub_160EF0(0xCu, 7))
  {
    v4 = sub_160F34(0xCu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader\n", v5, 12, v6);
      v7 = sub_175AE4();
      v286 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", v7, 12, v286);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", v5, 12, v6);
    }
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v11 = sub_160F34(3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v12, 3, v13, "AVE_PrepareVideoAndSequenceHeader", 1995, "imageBuffer != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
    }

    goto LABEL_267;
  }

  v8 = *(a1 + 10808);
  v9 = *(a1 + 1336);
  v10 = a1 + 31332;
  memset(v317, 0, sizeof(v317));
  if (v8 > 7)
  {
    if (v8 == 8)
    {
      if ((v9 & 0x8000000) != 0)
      {
        v313 = xmmword_190EA0;
        v314 = unk_190EB0;
        v315 = xmmword_190EC0;
        v316 = unk_190ED0;
        v309 = xmmword_190E60;
        v310 = unk_190E70;
        v311 = xmmword_190E80;
        v312 = unk_190E90;
        v305 = xmmword_190E20;
        v306 = unk_190E30;
        v307 = xmmword_190E40;
        v308 = unk_190E50;
        v14 = &unk_190EE0;
      }

      else
      {
        v313 = xmmword_191860;
        v314 = unk_191870;
        v315 = xmmword_191880;
        v316 = unk_191890;
        v309 = xmmword_191820;
        v310 = unk_191830;
        v311 = xmmword_191840;
        v312 = unk_191850;
        v305 = xmmword_1917E0;
        v306 = unk_1917F0;
        v307 = xmmword_191800;
        v308 = unk_191810;
        v14 = &unk_1918A0;
      }

      goto LABEL_16;
    }

    if (v8 != 9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a1 + 24856) = 1;
      goto LABEL_107;
    }

    if (v8 != 2)
    {
LABEL_9:
      *(a1 + 24856) = 0;
      goto LABEL_107;
    }
  }

  v313 = xmmword_192220;
  v314 = unk_192230;
  v315 = xmmword_192240;
  v316 = unk_192250;
  v309 = xmmword_1921E0;
  v310 = unk_1921F0;
  v311 = xmmword_192200;
  v312 = unk_192210;
  v305 = xmmword_1921A0;
  v306 = unk_1921B0;
  v307 = xmmword_1921C0;
  v308 = unk_1921D0;
  v14 = &unk_192260;
LABEL_16:
  memcpy(__dst, v14, sizeof(__dst));
  v15 = 0;
  *(a1 + 24856) = 257;
  v16 = a1 + 24908;
  v17 = a1 + 25004;
  do
  {
    for (i = 0; i != 6; ++i)
    {
      *(v16 + 4 * i) = 0;
      *(v17 + i) = 1;
    }

    ++v15;
    v17 += 6;
    v16 += 24;
  }

  while (v15 != 4);
  v19 = 0;
  v20 = 1;
  do
  {
    v21 = 0;
    v22 = v20;
    v23 = a1 + 25028 + (v19 << 7);
    do
    {
      v24 = 0;
      v25 = v21 + v19;
      v26 = &byte_190D81;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 2;
        *(v317 + v24++) = *(&v305 + 16 * v21 + 16 * v19 + 4 * v28 + v27);
      }

      while (v24 != 16);
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v317 + v29);
        v32 = v31 - v30;
        if ((v31 - v30) <= 0)
        {
          v33 = 256;
        }

        else
        {
          v33 = -256;
        }

        v34 = v33 + v32;
        if ((v31 - v30) != v32)
        {
          v32 = v34;
        }

        *(v23 + 2 * v29) = v32;
        v35 = (v30 + v32);
        if (v35 != v31)
        {
          if (sub_160EF0(3u, 4))
          {
            v84 = sub_160F34(3u);
            v85 = sub_175AE4();
            v86 = sub_160F68(4);
            if (v84)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v85, 3, v86, "AVE_HEVC_set_default_scaling_lists", 1744, "nextCoef == ScalingList[i]", v35, v29, v31);
              v85 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v85, 3);
          }

          goto LABEL_107;
        }

        if (v31 <= 5)
        {
          if (sub_160EF0(3u, 4))
          {
            v87 = sub_160F34(3u);
            v88 = sub_175AE4();
            v89 = sub_160F68(4);
            if (v87)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v88, 3, v89, "AVE_HEVC_set_default_scaling_lists", 1745, "(nextCoef >= 6 && nextCoef <= 255)", v31);
              v88 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v88);
          }

          goto LABEL_107;
        }

        if (v32 != v32)
        {
          if (sub_160EF0(3u, 4))
          {
            v90 = sub_160F34(3u);
            v91 = sub_175AE4();
            v92 = sub_160F68(4);
            if (v90)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v91, 3, v92, "AVE_HEVC_set_default_scaling_lists", 1746, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 0, v25, v29, *(v23 + 2 * v29));
              v91 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v91, 3);
          }

          goto LABEL_107;
        }

        ++v29;
        v30 = v31;
      }

      while (v29 != 16);
      ++v21;
      v23 += 128;
    }

    while (v21 != 3);
    v20 = 0;
    v19 = 3;
  }

  while ((v22 & 1) != 0);
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = 0;
    v39 = v37;
    v40 = a1 + 25796 + (v36 << 7);
    do
    {
      v41 = 0;
      v42 = v38 + v36;
      v43 = &byte_190DA1;
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;
        v43 += 2;
        *(v317 + v41++) = *&__dst[128 * v38 + 128 * v36 + 16 * v45 + 2 * v44];
      }

      while (v41 != 64);
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v317 + v46);
        v49 = v48 - v47;
        if ((v48 - v47) <= 0)
        {
          v50 = 256;
        }

        else
        {
          v50 = -256;
        }

        v51 = v50 + v49;
        if ((v48 - v47) != v49)
        {
          v49 = v51;
        }

        *(v40 + 2 * v46) = v49;
        v52 = (v47 + v49);
        if (v52 != v48)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v247 = sub_160F34(3u);
          v248 = sub_175AE4();
          v249 = sub_160F68(4);
          if (v247)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v248, 3, v249, "AVE_HEVC_set_default_scaling_lists", 1783, "nextCoef == ScalingList[i]", v52, v46, v48);
            v248 = sub_175AE4();
            sub_160F68(4);
          }

LABEL_373:
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v248, 3);
          goto LABEL_383;
        }

        if (v48 <= 5)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v250 = sub_160F34(3u);
          v251 = sub_175AE4();
          v252 = sub_160F68(4);
          if (v250)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v251, 3, v252, "AVE_HEVC_set_default_scaling_lists", 1784, "(nextCoef >= 6 && nextCoef <= 255)", v48);
            v253 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v253);
            goto LABEL_383;
          }

          goto LABEL_392;
        }

        if (v49 != v49)
        {
          v10 = a1 + 31332;
          if (sub_160EF0(3u, 4))
          {
            v254 = sub_160F34(3u);
            v255 = sub_175AE4();
            v256 = sub_160F68(4);
            if (!v254)
            {
              goto LABEL_382;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v255, 3, v256, "AVE_HEVC_set_default_scaling_lists", 1785, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 1, v42, v46, *(v40 + 2 * v46));
            v257 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v257, 3);
LABEL_383:
            v10 = a1 + 31332;
          }

          goto LABEL_107;
        }

        ++v46;
        v47 = v48;
      }

      while (v46 != 64);
      ++v38;
      v40 += 128;
    }

    while (v38 != 3);
    v37 = 0;
    v36 = 3;
  }

  while ((v39 & 1) != 0);
  v53 = 0;
  v54 = 1;
  while (2)
  {
    v55 = 0;
    v56 = v54;
    v57 = a1 + 26564 + (v53 << 7);
    while (2)
    {
      v58 = v55 + v53;
      v59 = *&__dst[128 * (v55 + v53) + 768];
      v60 = *&__dst[128 * (v55 + v53) + 768];
      *(a1 + 24860 + 4 * (v55 + v53)) = v60 - 8;
      if (v59 != v59)
      {
        v10 = a1 + 31332;
        if (sub_160EF0(3u, 4))
        {
          v267 = sub_160F34(3u);
          v268 = sub_175AE4();
          v269 = sub_160F68(4);
          if (v267)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v268, 3, v269, "AVE_HEVC_set_default_scaling_lists", 1807, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v59, 1, v58, v60);
            v270 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v270, 3);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v268, 3);
          }

          goto LABEL_383;
        }

        goto LABEL_107;
      }

      if ((v60 - 6) > 0xF9)
      {
        v10 = a1 + 31332;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_107;
        }

        v271 = sub_160F34(3u);
        v251 = sub_175AE4();
        v272 = sub_160F68(4);
        if (v271)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v251, 3, v272, "AVE_HEVC_set_default_scaling_lists", 1808, "(nextCoef >= 6 && nextCoef <= 255)", v60);
          v251 = sub_175AE4();
          sub_160F68(4);
        }

LABEL_392:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v251);
        goto LABEL_383;
      }

      v61 = 0;
      v62 = &byte_190DA1;
      do
      {
        v63 = *(v62 - 1);
        v64 = *v62;
        v62 += 2;
        *(v317 + v61++) = *&__dst[128 * v58 + 768 + 16 * v64 + 2 * v63];
      }

      while (v61 != 64);
      for (j = 0; j != 64; ++j)
      {
        v66 = *(v317 + j);
        v67 = v66 - v60;
        if ((v66 - v60) <= 0)
        {
          v68 = 256;
        }

        else
        {
          v68 = -256;
        }

        if ((v66 - v60) != v67)
        {
          v67 = v68 + v66 - v60;
        }

        *(v57 + 2 * j) = v67;
        v69 = (v67 + v60);
        if (v69 != v66)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v258 = sub_160F34(3u);
          v248 = sub_175AE4();
          v259 = sub_160F68(4);
          if (v258)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v248, 3, v259, "AVE_HEVC_set_default_scaling_lists", 1831, "nextCoef == ScalingList[i]", v69, j, v66);
LABEL_387:
            v248 = sub_175AE4();
            sub_160F68(4);
          }

          goto LABEL_373;
        }

        if (v66 <= 5)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v260 = sub_160F34(3u);
          v251 = sub_175AE4();
          v261 = sub_160F68(4);
          if (v260)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v251, 3, v261, "AVE_HEVC_set_default_scaling_lists", 1832, "(nextCoef >= 6 && nextCoef <= 255)", v66);
LABEL_391:
            v251 = sub_175AE4();
            sub_160F68(4);
          }

          goto LABEL_392;
        }

        if (v67 != v67)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v262 = sub_160F34(3u);
          v263 = sub_175AE4();
          v264 = sub_160F68(4);
          if (v262)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v263, 3, v264, "AVE_HEVC_set_default_scaling_lists", 1833, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 2, v58, j, *(v57 + 2 * j));
            v265 = sub_175AE4();
            sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v265, 3);
            goto LABEL_383;
          }

          v302 = j;
          v303 = *(v57 + 2 * j);
          v299 = 2;
          v301 = v58;
          v295 = 1833;
          v297 = "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)";
          v293 = v264;
          v266 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)";
          goto LABEL_399;
        }

        LOWORD(v60) = v66;
      }

      ++v55;
      v57 += 128;
      if (v55 != 3)
      {
        continue;
      }

      break;
    }

    v54 = 0;
    v53 = 3;
    if (v56)
    {
      continue;
    }

    break;
  }

  v70 = 0;
  v71 = 1;
  v10 = a1 + 31332;
LABEL_71:
  v72 = *&__dst[128 * v70 + 1536];
  v73 = v71;
  v74 = *&__dst[128 * v70 + 1536];
  *(a1 + 24884 + 4 * v70) = v74 - 8;
  if (v72 == v72)
  {
    if ((v74 - 6) <= 0xF9)
    {
      v75 = 0;
      v76 = &byte_190DA1;
      do
      {
        v77 = *(v76 - 1);
        v78 = *v76;
        v76 += 2;
        *(v317 + v75++) = *&__dst[128 * v70 + 1536 + 16 * v78 + 2 * v77];
      }

      while (v75 != 64);
      v79 = 0;
      while (1)
      {
        v80 = *(v317 + v79);
        v81 = v80 - v74;
        if ((v80 - v74) <= 0)
        {
          v82 = 256;
        }

        else
        {
          v82 = -256;
        }

        if ((v80 - v74) != v81)
        {
          v81 = v82 + v80 - v74;
        }

        *(a1 + 27332 + (v70 << 7) + 2 * v79) = v81;
        v83 = (v81 + v74);
        if (v83 != v80)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v273 = sub_160F34(3u);
          v248 = sub_175AE4();
          v274 = sub_160F68(4);
          if (v273)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v248, 3, v274, "AVE_HEVC_set_default_scaling_lists", 1878, "nextCoef == ScalingList[i]", v83, v79, v80);
            goto LABEL_387;
          }

          goto LABEL_373;
        }

        if (v80 <= 5)
        {
          v10 = a1 + 31332;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_107;
          }

          v275 = sub_160F34(3u);
          v251 = sub_175AE4();
          v276 = sub_160F68(4);
          if (v275)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v251, 3, v276, "AVE_HEVC_set_default_scaling_lists", 1879, "(nextCoef >= 6 && nextCoef <= 255)", v80);
            goto LABEL_391;
          }

          goto LABEL_392;
        }

        if (v81 != v81)
        {
          break;
        }

        ++v79;
        LOWORD(v74) = v80;
        if (v79 == 64)
        {
          v71 = 0;
          v70 = 3;
          if (v73)
          {
            goto LABEL_71;
          }

          goto LABEL_107;
        }
      }

      v10 = a1 + 31332;
      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_107;
      }

      v277 = sub_160F34(3u);
      v255 = sub_175AE4();
      v278 = sub_160F68(4);
      if (v277)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v255, 3, v278, "AVE_HEVC_set_default_scaling_lists", 1880, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 3, v70, v79, *(a1 + (v70 << 7) + 27332 + 2 * v79));
        v279 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v279, 3);
        goto LABEL_383;
      }

LABEL_382:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v255, 3);
      goto LABEL_383;
    }

    v10 = a1 + 31332;
    if (sub_160EF0(3u, 4))
    {
      v284 = sub_160F34(3u);
      v263 = sub_175AE4();
      v285 = sub_160F68(4);
      if (v284)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v263, 3, v285, "AVE_HEVC_set_default_scaling_lists", 1855, "(nextCoef >= 6 && nextCoef <= 255)", v74);
        v282 = sub_175AE4();
        v298 = "(nextCoef >= 6 && nextCoef <= 255)";
        v300 = v74;
        v296 = 1855;
        v294 = sub_160F68(4);
        v283 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
        goto LABEL_426;
      }

      v297 = "(nextCoef >= 6 && nextCoef <= 255)";
      v299 = v74;
      v295 = 1855;
      v293 = v285;
      v266 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
      goto LABEL_399;
    }
  }

  else
  {
    v10 = a1 + 31332;
    if (sub_160EF0(3u, 4))
    {
      v280 = sub_160F34(3u);
      v263 = sub_175AE4();
      v281 = sub_160F68(4);
      if (v280)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v263, 3, v281, "AVE_HEVC_set_default_scaling_lists", 1854, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v72, 2, v70, v74);
        v282 = sub_175AE4();
        v302 = v70;
        v303 = v74;
        v300 = v72;
        v301 = 2;
        v296 = 1854;
        v298 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
        v294 = sub_160F68(4);
        v283 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_426:
        syslog(3, v283, v282, 3, v294, "AVE_HEVC_set_default_scaling_lists", v296, v298, v300, v301, v302, v303);
        goto LABEL_383;
      }

      v302 = v70;
      v303 = v74;
      v299 = v72;
      v301 = 2;
      v295 = 1854;
      v297 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
      v293 = v281;
      v266 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_399:
      syslog(3, v266, v263, 3, v293, "AVE_HEVC_set_default_scaling_lists", v295, v297, v299, v301, v302, v303);
      goto LABEL_383;
    }
  }

LABEL_107:
  if (*(a1 + 24836) == 3)
  {
    v93 = 63;
  }

  else
  {
    v93 = 31;
  }

  if (*(a1 + 24836) == 3)
  {
    v94 = 6;
  }

  else
  {
    v94 = 5;
  }

  v95 = *(a1 + 1440);
  *(a1 + 24696) = v95;
  *(a1 + 24704) = vshl_u32(vadd_s32(v95, vdup_n_s32(v93)), vneg_s32(vdup_n_s32(v94)));
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v97 = sub_167CD8(PixelFormatType);
  v98 = v97;
  if (v97 && (*(a1 + 1104) & 8) != 0)
  {
    v102 = *(v97 + 7);
    v103 = 1;
    if (v102 != 1)
    {
      v103 = *v10;
    }

    *v10 = v103 & 1;
    *(v10 + 24) = v102 == 1;
    *(v10 + 17) = 1;
    if (sub_160EF0(0x1Eu, 6))
    {
      v104 = sub_160F34(0x1Eu);
      v105 = sub_175AE4();
      v106 = sub_160F68(6);
      if (v104)
      {
        printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v105, 30, v106, *(v98 + 7) == 1);
        sub_175AE4();
        sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
    }
  }

  else if (sub_160EF0(0x1Eu, 6))
  {
    v99 = sub_160F34(0x1Eu);
    v100 = sub_175AE4();
    v101 = sub_160F68(6);
    if (v99)
    {
      printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v100, 30, v101);
      sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
  }

  if ((*(a1 + 1104) & 0x40) != 0)
  {
    if (*(a1 + 1112) >= 1)
    {
      v109 = *(a1 + 1112);
    }

    else
    {
      v109 = 30;
    }

    v108 = 1;
    *(a1 + 14424) = 1;
    *(a1 + 14432) = 27000000;
    v110 = 0x19BFCC0 / v109;
    *(a1 + 14428) = v110;
    *(v10 + 80) = v110;
    *(v10 + 84) = 27000000;
    *(v10 + 76) = 1;
  }

  else
  {
    v107 = *(a1 + 14424);
    *(v10 + 76) = 0;
    if (v107)
    {
      v108 = 1;
    }

    else
    {
      v108 = *v10;
    }
  }

  *v10 = *(v10 + 141) | *(v10 + 44) | *(v10 + 1) | v108 & 1;
  v111 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationTopFieldKey, 0);
  if (v111)
  {
    v112 = v111;
    if (sub_160EF0(0x1Eu, 6))
    {
      v113 = sub_160F34(0x1Eu);
      v114 = sub_175AE4();
      v115 = sub_160F68(6);
      if (v113)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v114, 30, v115);
        v116 = sub_175AE4();
        v287 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v116, 30, v287);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v114, 30, v115);
      }
    }

    if (CFEqual(v112, kCVImageBufferChromaLocation_Left))
    {
LABEL_139:
      v117 = 0;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_Center))
    {
      v117 = 1;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_TopLeft))
    {
      v117 = 2;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_Top))
    {
      v117 = 3;
    }

    else if (CFEqual(v112, kCVImageBufferChromaLocation_BottomLeft))
    {
      v117 = 4;
    }

    else
    {
      if (!CFEqual(v112, kCVImageBufferChromaLocation_Bottom))
      {
        if (sub_160EF0(0x1Eu, 5))
        {
          v239 = sub_160F34(0x1Eu);
          v240 = sub_175AE4();
          v241 = sub_160F68(5);
          if (v239)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v240, 30, v241);
            v242 = sub_175AE4();
            v291 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v242, 30, v291);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v240, 30, v241);
          }
        }

        goto LABEL_139;
      }

      v117 = 5;
    }

    *(v10 + 48) = v117;
    *(v10 + 52) = v117;
    if (sub_160EF0(0x1Eu, 6))
    {
      v118 = sub_160F34(0x1Eu);
      v119 = sub_175AE4();
      v120 = sub_160F68(6);
      v121 = *(v10 + 52);
      if (v118)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v119, 30, v120, *(v10 + 48), v121);
        v122 = sub_175AE4();
        v123 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v122, 30, v123, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v119, 30, v120, *(v10 + 48), v121);
      }
    }

    CFRelease(v112);
  }

  v124 = CVBufferCopyAttachment(a2, kCVImageBufferChromaLocationBottomFieldKey, 0);
  if (v124)
  {
    v125 = v124;
    if (sub_160EF0(0x1Eu, 6))
    {
      v126 = sub_160F34(0x1Eu);
      v127 = sub_175AE4();
      v128 = sub_160F68(6);
      if (v126)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v127, 30, v128);
        v129 = sub_175AE4();
        v288 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v129, 30, v288);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v127, 30, v128);
      }
    }

    if (CFEqual(v125, kCVImageBufferChromaLocation_Left))
    {
LABEL_161:
      v130 = 0;
    }

    else if (CFEqual(v125, kCVImageBufferChromaLocation_Center))
    {
      v130 = 1;
    }

    else if (CFEqual(v125, kCVImageBufferChromaLocation_TopLeft))
    {
      v130 = 2;
    }

    else if (CFEqual(v125, kCVImageBufferChromaLocation_Top))
    {
      v130 = 3;
    }

    else if (CFEqual(v125, kCVImageBufferChromaLocation_BottomLeft))
    {
      v130 = 4;
    }

    else
    {
      if (!CFEqual(v125, kCVImageBufferChromaLocation_Bottom))
      {
        if (sub_160EF0(0x1Eu, 5))
        {
          v243 = sub_160F34(0x1Eu);
          v244 = sub_175AE4();
          v245 = sub_160F68(5);
          if (v243)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v244, 30, v245);
            v246 = sub_175AE4();
            v292 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v246, 30, v292);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v244, 30, v245);
          }
        }

        goto LABEL_161;
      }

      v130 = 5;
    }

    *(v10 + 52) = v130;
    if (sub_160EF0(0x1Eu, 6))
    {
      v131 = sub_160F34(0x1Eu);
      v132 = sub_175AE4();
      v133 = sub_160F68(6);
      v134 = *(v10 + 52);
      if (v131)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v132, 30, v133, *(v10 + 48), v134);
        v135 = sub_175AE4();
        v136 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v135, 30, v136, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v132, 30, v133, *(v10 + 48), v134);
      }
    }

    CFRelease(v125);
  }

  if ((*(v10 + 48) || *(v10 + 52)) && (*(a1 + 1104) & 0x10) != 0)
  {
    *v10 = 1;
    *(v10 + 44) = 1;
    if (sub_160EF0(0x1Eu, 6))
    {
      v137 = sub_160F34(0x1Eu);
      v138 = sub_175AE4();
      v139 = sub_160F68(6);
      if (v137)
      {
        printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v138, 30, v139);
        v140 = sub_175AE4();
        v289 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v140, 30, v289);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v138, 30, v139);
      }
    }
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v141 = sub_160F34(0x1Eu);
    v142 = sub_175AE4();
    v143 = sub_160F68(6);
    v144 = *(v10 + 44);
    v145 = *(v10 + 52);
    if (v141)
    {
      printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v142, 30, v143, v144, *(v10 + 48), v145);
      v146 = sub_175AE4();
      v147 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v146, 30, v147, *(v10 + 44), *(v10 + 48), *(v10 + 52));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v142, 30, v143, v144, *(v10 + 48), v145);
    }
  }

  if (!*(a1 + 104628) && *(a1 + 12028) == 1 && *(v98 + 1) == 10)
  {
    *(a1 + 12028) = 2;
    *(a1 + 24264) = 2;
    *(v10 + 736) = 2;
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v148 = sub_160F34(0x1Eu);
    v149 = sub_175AE4();
    v150 = sub_160F68(6);
    if (v148)
    {
      printf("%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d\n", v149, 30, v150, "AVE_PrepareVideoAndSequenceHeader", 2178, *(a1 + 104628), *(a1 + 12028));
      v149 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d", v149);
  }

  v151 = *(a1 + 104628);
  if (!v151)
  {
    v151 = *(a1 + 12028);
  }

  if (v151 <= 5)
  {
    switch(v151)
    {
      case 1:
        if (*(a1 + 24688) == 1)
        {
          *(a1 + 12033) = 257;
          *(a1 + 24269) = 257;
          v152 = 1;
          goto LABEL_274;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_267;
        }

        v166 = sub_160F34(3u);
        v154 = sub_175AE4();
        v167 = sub_160F68(4);
        if (!v166)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v167, "AVE_PrepareVideoAndSequenceHeader", 2199, "false", *(a1 + 24688), *(a1 + 12028));
        goto LABEL_255;
      case 2:
        v152 = *(a1 + 24688);
        if (v152 == 1)
        {
          *(a1 + 12034) = 1;
          *(a1 + 24270) = 1;
          goto LABEL_274;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_267;
        }

        v170 = sub_160F34(3u);
        v154 = sub_175AE4();
        v171 = sub_160F68(4);
        if (!v170)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v171, "AVE_PrepareVideoAndSequenceHeader", 2213, "false", *(a1 + 24688), *(a1 + 12028));
        goto LABEL_255;
      case 3:
        *(a1 + 13308) = 0;
        *(a1 + 24748) = 0;
        v152 = *(a1 + 24688);
        if (v152 == 1)
        {
          *(a1 + 24271) = 1;
          *(a1 + 12033) = 1;
          *(a1 + 24269) = 257;
          *(a1 + 12034) = 257;
          goto LABEL_274;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_267;
        }

        v168 = sub_160F34(3u);
        v154 = sub_175AE4();
        v169 = sub_160F68(4);
        if (!v168)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v169, "AVE_PrepareVideoAndSequenceHeader", 2235, "false", *(a1 + 24688), *(a1 + 12028));
        goto LABEL_255;
    }

    goto LABEL_231;
  }

  if (v151 > 8)
  {
    if (v151 == 9)
    {
      if (!*(a1 + 24732) && !*(a1 + 24736))
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v152 = *(a1 + 24688);
        if ((v152 - 1) >= 3)
        {
          if (v152)
          {
            if (!sub_160EF0(3u, 4))
            {
              goto LABEL_267;
            }

            v237 = sub_160F34(3u);
            v154 = sub_175AE4();
            v238 = sub_160F68(4);
            if (!v237)
            {
              goto LABEL_266;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v238, "AVE_PrepareVideoAndSequenceHeader", 2302, "false", *(a1 + 24688), *(a1 + 12028));
            goto LABEL_255;
          }

          *(a1 + 12068) = 16843009;
          *(a1 + 12072) = 257;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 16843009;
          *(a1 + 24308) = 257;
          *(a1 + 24310) = 0;
        }

        else
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 1;
          *(a1 + 12071) = 0;
          *(a1 + 12075) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 1;
          *(a1 + 24307) = 0;
          *(a1 + 24311) = 0;
        }

LABEL_274:
        v181 = (a1 + 15574);
        if (*(a1 + 10928) != 1)
        {
          goto LABEL_293;
        }

        v182 = *(a1 + 1136);
        if (v182)
        {
          v183 = -1;
          v184 = 33;
          do
          {
            v185 = v182 & (v183 >> 1);
            v183 >>= 1;
            --v184;
          }

          while (v185);
          if (v184 < 8)
          {
            *(v10 + 104) = 0;
            v186 = 6;
            goto LABEL_285;
          }

          v189 = -1;
          v188 = 26;
          do
          {
            v190 = v182 & (v189 >> 1);
            v189 >>= 1;
            --v188;
          }

          while (v190);
        }

        else
        {
          v188 = 26;
        }

        *(v10 + 104) = v188;
        v186 = v188 + 6;
        if (!v182)
        {
          v187 = 28;
          goto LABEL_291;
        }

LABEL_285:
        v191 = -1;
        v192 = 33;
        do
        {
          v193 = v182 & (v191 >> 1);
          v191 >>= 1;
          --v192;
        }

        while (v193);
        if (v192 < 6)
        {
          *(v10 + 108) = 0;
          v194 = 4;
LABEL_292:
          *(v10 + 132) = v182 / (1 << v186) - 1;
          *(v10 + 136) = v182 / (1 << v194) - 1;
LABEL_293:
          v197 = *(a1 + 10556);
          if (v197 < 2)
          {
            v209 = *(a1 + 10896);
            if (v209 && !*(a1 + 10900))
            {
              *(a1 + 12008) = 1;
              *(a1 + 14528) = 1;
              *(a1 + 14531) = 0;
              *(a1 + 14532) |= 8u;
              *(a1 + 14534) = 0;
              *(a1 + 14566) = 1;
              *v181 = 1;
              *(a1 + 15576) = v209;
              *(a1 + 13392) = v209;
              *(a1 + 15639) = 0;
              *(a1 + 19738) = 1;
              *(a1 + 19740) = 1;
              *(a1 + 23835) = 0x100000001000000;
              *(a1 + 23843) = 1;
              *(a1 + 23908) = 0;
              *(a1 + 23912) = 0;
              *(a1 + 23914) = *(a1 + 1440);
              *(a1 + 23916) = *(a1 + 1444);
              *(a1 + 23918) = 1;
              v210 = *(a1 + 10916);
              if (v210 == -1)
              {
                v210 = v152;
              }

              *(a1 + 23920) = v210;
              *(a1 + 23928) = 0;
              v211 = *(a1 + 10908);
              if (v211 == -1)
              {
                v212 = *(a1 + 24732);
                v213 = *(a1 + 24736);
              }

              else
              {
                v212 = v211 - 8;
                v213 = v212;
              }

              *(a1 + 23932) = v212;
              *(a1 + 23940) = v213;
            }

            if (v152 >= 1 && (*(a1 + 10904) & 1) != 0)
            {
              *(v10 + 56) = 1;
            }

            goto LABEL_267;
          }

          v198 = *(a1 + 10900);
          v199 = v197 - 1;
          if (v198)
          {
            v200 = 3;
          }

          else
          {
            v200 = v197 - 1;
          }

          *(a1 + 12008) = v200;
          *(a1 + 12012) = 0;
          *(a1 + 12016) = 1;
          memcpy((a1 + 12448), (a1 + 12020), 0x1ACuLL);
          memcpy((a1 + 12876), (a1 + 12020), 0x1ACuLL);
          *(a1 + 12508) = *(a1 + 12080);
          *(a1 + 12884) = 5;
          *(a1 + 12889) = 0;
          *(a1 + 12894) = 1;
          if (v198)
          {
            v201 = *(a1 + 15575);
            v202 = *(a1 + 15576);
            v203 = *(a1 + 10896);
            if (v201 <= v202)
            {
              v204 = *(a1 + 15576);
            }

            else
            {
              v204 = *(a1 + 15575);
            }

            v205 = a1 + 13464;
            *(v205 + v201) = 1;
            *(v205 + v202) = 1;
            v206 = a1 + 13528;
            *(v206 + v203) = 1;
            *(v206 + v198) = 1;
            v207 = a1 + 13592;
            *(a1 + 13592 + v201) = 1;
            if (v203 <= v198)
            {
              LOBYTE(v208) = v198;
            }

            else
            {
              LOBYTE(v208) = v203;
            }

            *(v207 + v202) = 1;
            if (v204 <= v208)
            {
              v208 = v208;
            }

            else
            {
              v208 = v204;
            }

            *(a1 + 13392) = v208;
            *(a1 + 13396) = 3;
            *(v207 + v203) = 1;
            *(v207 + v198) = 1;
          }

          else
          {
            v214 = 0;
            v215 = *(a1 + 15575 + v199);
            *(a1 + 13392) = v215;
            *(a1 + 13396) = v199;
            v216 = v215 + 1;
            if ((v200 + 1) > 1)
            {
              v217 = (v200 + 1);
            }

            else
            {
              v217 = 1;
            }

            do
            {
              v218 = 0;
              do
              {
                if (v218 == *(a1 + 15575 + v214))
                {
                  *(a1 + 13464 + v218) = 1;
                }

                ++v218;
              }

              while (v216 != v218);
              ++v214;
            }

            while (v214 != v217);
          }

          *(a1 + 14528) = 1;
          v219 = *(a1 + 14532);
          *(a1 + 14532) = v219 | 2;
          *(a1 + 14534) = 2;
          *v181 = 1;
          *(a1 + 14566) = 1;
          *(a1 + 15706) = 1;
          if (!v198)
          {
            LOBYTE(v221) = *(a1 + 15576);
LABEL_330:
            *(a1 + 23920) = *(a1 + 24688);
            *(a1 + 23837) = 513;
            *(a1 + 14530) = 1;
            *(a1 + 23914) = *(a1 + 1440);
            *(a1 + 23916) = *(a1 + 1444);
            *(a1 + 23932) = *(a1 + 24732);
            *(a1 + 23918) = 1;
            *(a1 + 23940) = *(a1 + 24736);
            *(a1 + 23842) = 257;
            *(a1 + 23910) = 16777472;
            *(a1 + 24248) = 0;
            *(a1 + 24252) = 1;
            v223 = *(v10 + 1156);
            memcpy((v10 + 708), (a1 + 24236), 0x1E7CuLL);
            *(v10 + 708) = v221;
            *(v10 + 709) = 7;
            if (v223 <= 1)
            {
              v224 = 1;
            }

            else
            {
              v224 = v223;
            }

            *(v10 + 1156) = v224;
            *(v10 + 712) = 0;
            *(a1 + 39304) = 1;
            *(a1 + 39306) = 1;
            *(a1 + 39153) = 0;
            v225 = *(a1 + 10904);
            if (v225 == 1)
            {
              v226 = *(a1 + 10924);
              if (v226 != -1)
              {
                *(v10 + 710) = 1;
                *(v10 + 711) = v226;
              }
            }

            if (v198)
            {
              v227 = 0;
              v228 = 1;
              do
              {
                v229 = v228;
                v230 = *(a1 + 10916 + 4 * v227);
                if (v230 != -1)
                {
                  *(a1 + 23920 + 4 * v227) = v230;
                }

                v231 = *(a1 + 10908 + 4 * v227);
                if (v231 != -1)
                {
                  v232 = v231 - 8;
                  *(a1 + 23932 + 4 * v227) = v232;
                  *(a1 + 23940 + 4 * v227) = v232;
                }

                v228 = 0;
                v227 = 1;
              }

              while ((v229 & 1) != 0);
              if (*(a1 + 10920) != -1 && *(a1 + 10912) != -1)
              {
                *(a1 + 23841) = 1;
              }
            }

            if (v225)
            {
              v233 = 0;
              v234 = 1;
              do
              {
                v235 = v234;
                v236 = a1 + 24236 + 7804 * v233;
                if (*(v236 + 452) >= 1)
                {
                  *(v236 + 7152) = 1;
                }

                v234 = 0;
                v233 = 1;
              }

              while ((v235 & 1) != 0);
            }

            goto LABEL_267;
          }

          v220 = *(a1 + 15576);
          if (*(a1 + 15575))
          {
            v221 = *(a1 + 10896);
            v222 = (a1 + 19738);
          }

          else
          {
            v221 = *(a1 + 10896);
            v222 = (a1 + 19738);
            if (v220 == 1)
            {
              *(a1 + 15577) = v221;
              *(a1 + 15578) = v198;
              *(a1 + 14582) = 256;
              *(a1 + 14598) = 257;
              *(a1 + 14567) = 0;
              LOBYTE(v221) = 1;
              *(a1 + 15836) = 1;
LABEL_329:
              *(a1 + 14532) = v219 | 0xA;
              *(a1 + 14535) = 2;
              *v222 = 0;
              *(a1 + 23839) = 0;
              goto LABEL_330;
            }
          }

          *(a1 + 15577) = v220;
          *(a1 + 15576) = v221;
          *(a1 + 15578) = v198;
          *(a1 + 14566) = 256;
          *(a1 + 14582) = 1;
          *(a1 + 14598) = 257;
          *(a1 + 15706) = 0;
          *(a1 + 15770) = 1;
          *(a1 + 15835) = 1;
          goto LABEL_329;
        }

        v195 = -1;
        v187 = 28;
        do
        {
          v196 = v182 & (v195 >> 1);
          v195 >>= 1;
          --v187;
        }

        while (v196);
LABEL_291:
        *(v10 + 108) = v187;
        v194 = v187 + 4;
        goto LABEL_292;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_267;
      }

      v156 = sub_160F34(3u);
      v157 = sub_175AE4();
      v158 = sub_160F68(4);
      if (v156)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v157, 3, v158, "AVE_PrepareVideoAndSequenceHeader", 2243, "((pINS->saSPS[0].bit_depth_luma_minus8 == 0) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 0))", *(a1 + 12028), *(a1 + 24732), *(a1 + 24736));
LABEL_238:
        v164 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v164, 3);
        goto LABEL_267;
      }
    }

    else
    {
      if (v151 != 10)
      {
        goto LABEL_231;
      }

      if (*(a1 + 24732) == 2 && *(a1 + 24736) == 2)
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v152 = *(a1 + 24688);
        if (!v152)
        {
LABEL_250:
          *(a1 + 12068) = 0x10101000001;
          *(a1 + 24304) = 0x10101000001;
          goto LABEL_274;
        }

        if (v152 == 3 || v152 == 1)
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 0;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 0;
          *(a1 + 24310) = 0;
          goto LABEL_274;
        }

        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_267;
        }

        v175 = sub_160F34(3u);
        v154 = sub_175AE4();
        v176 = sub_160F68(4);
        if (!v175)
        {
          goto LABEL_266;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v176, "AVE_PrepareVideoAndSequenceHeader", 2369, "false", *(a1 + 24688), *(a1 + 12028));
LABEL_255:
        v174 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v174);
        goto LABEL_267;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_267;
      }

      v162 = sub_160F34(3u);
      v157 = sub_175AE4();
      v163 = sub_160F68(4);
      if (v162)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v157, 3, v163, "AVE_PrepareVideoAndSequenceHeader", 2311, "((pINS->saSPS[0].bit_depth_luma_minus8 == 2) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 2))", *(a1 + 12028), *(a1 + 24732), *(a1 + 24736));
        goto LABEL_238;
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v157, 3);
    goto LABEL_267;
  }

  if ((v151 - 6) >= 2)
  {
    if (v151 == 8)
    {
      *(a1 + 12036) = 1;
      *(a1 + 24272) = 1;
      *(a1 + 12076) = 1;
      *(a1 + 24312) = 1;
      *(a1 + 24264) = 4;
      *(a1 + 12028) = 4;
      v152 = *(a1 + 24688);
      if ((v152 - 1) < 2)
      {
        *(a1 + 12068) = 16777473;
        *(a1 + 12072) = 0;
        *(a1 + 24304) = 16777473;
        *(a1 + 24308) = 0;
        goto LABEL_274;
      }

      if (!v152)
      {
        goto LABEL_250;
      }

      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_267;
      }

      v172 = sub_160F34(3u);
      v154 = sub_175AE4();
      v173 = sub_160F68(4);
      if (!v172)
      {
        goto LABEL_266;
      }

      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v173, "AVE_PrepareVideoAndSequenceHeader", 2432, "false", *(a1 + 24688), *(a1 + 12028));
      goto LABEL_255;
    }

LABEL_231:
    if (sub_160EF0(3u, 4))
    {
      v159 = sub_160F34(3u);
      v160 = sub_175AE4();
      v161 = sub_160F68(4);
      if (v159)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported\n", v160, 3, v161, "AVE_PrepareVideoAndSequenceHeader", 2486, "false", *(a1 + 12028));
        v160 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported", v160);
    }

    goto LABEL_267;
  }

  *(a1 + 12036) = 1;
  *(a1 + 24272) = 1;
  *(a1 + 12076) = 1;
  *(a1 + 24312) = 1;
  *(a1 + 24264) = 4;
  *(a1 + 12028) = 4;
  v152 = *(a1 + 24688);
  if (!v152)
  {
    *(a1 + 12068) = 257;
    v165 = v151 == 6;
    *(a1 + 12070) = v165;
    *(a1 + 12071) = 65793;
    *(a1 + 12075) = 0;
    *(a1 + 24304) = 257;
    *(a1 + 24306) = v165;
    *(a1 + 24307) = 65793;
    *(a1 + 24311) = 0;
    goto LABEL_274;
  }

  if (sub_160EF0(3u, 4))
  {
    v153 = sub_160F34(3u);
    v154 = sub_175AE4();
    v155 = sub_160F68(4);
    if (v153)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v154, 3, v155, "AVE_PrepareVideoAndSequenceHeader", 2479, "false", *(a1 + 24688), *(a1 + 12028));
      goto LABEL_255;
    }

LABEL_266:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v154);
  }

LABEL_267:
  if (sub_160EF0(0xCu, 7))
  {
    v177 = sub_160F34(0xCu);
    v178 = sub_175AE4();
    v179 = sub_160F68(7);
    if (v177)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader\n", v178, 12, v179);
      v180 = sub_175AE4();
      v290 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v180, 12, v290);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v178, 12, v179);
    }
  }
}

void sub_10A354(_DWORD *a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader\n", v3, 12, v4);
      v5 = sub_175AE4();
      v23 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", v5, 12, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", v3, 12, v4);
    }
  }

  v6 = a1[2693];
  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    a1[9970] = a1[286] - 26;
    if (a1[6209] == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    a1[9972] = v7;
LABEL_11:
    v8 = a1[2639];
    if (v8 >= 2)
    {
      v9 = a1 + 9961;
      v10 = a1 + 15575;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = &v9[2408 * v12];
        v14 = *(v13 + 8);
        memcpy(v13, v9, 0x25A0uLL);
        *v13 = v10[v12];
        v13[8512] = 1;
        v13[8515] = 1;
        v13[8517] = 1;
        *(v13 + 1) = vbsl_s8(vceqz_s32(v14), vdup_n_s32(v11), v14);
        v11 = ++v12;
        *(v13 + 1) = 0;
        v13[5] = 0;
      }

      while (v8 > v12);
    }

    goto LABEL_19;
  }

  if (sub_160EF0(3u, 4))
  {
    v15 = sub_160F34(3u);
    v16 = sub_175AE4();
    v17 = sub_160F68(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized\n", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
      v18 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v18, 3, v24, "AVE_PreparePictureHeader", 1605, "false");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
    }
  }

LABEL_19:
  if (sub_160EF0(0xCu, 7))
  {
    v19 = sub_160F34(0xCu);
    v20 = sub_175AE4();
    v21 = sub_160F68(7);
    if (v19)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader\n", v20, 12, v21);
      v22 = sub_175AE4();
      v25 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v22, 12, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v20, 12, v21);
    }
  }
}

uint64_t sub_10A628(uint64_t a1)
{
  if (sub_160EF0(0xCu, 7))
  {
    v2 = sub_160F34(0xCu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings\n", v3, 12, v4);
      v5 = sub_175AE4();
      v226 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v226);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v3, 12, v4);
    }
  }

  if (*(a1 + 1132) == 4 && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v6 = sub_160F34(0xCu);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters\n", v7, 12, v8);
      v9 = sub_175AE4();
      v227 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 10168);
  v11 = sub_1502C8();
  v12 = v11[20];
  if (v12 >= -1)
  {
    *(a1 + 692) = v12;
  }

  if (sub_160EF0(0x10u, 8))
  {
    v13 = sub_160F34(0x10u);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v14, 16, v15, "AVE_PrepareRealTimeParameters", 2830, *(a1 + 10892), *(a1 + 692), *(a1 + 10784), *(a1 + 1132));
      v14 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v14, 16);
  }

  if ((*(a1 + 1123) & 0x80) == 0 && *(a1 + 1132) == 8)
  {
    *(a1 + 10784) = 0;
  }

  if (*(a1 + 692) == 1)
  {
    if ((v16 = *(a1 + 1256)) == 0 && (v17 = *(a1 + 1132), v17 != 20) && v17 != 3 || *(a1 + 106464) > 0 || v16 >= 3 && *(a1 + 1260) >= 3)
    {
      if (*(a1 + 10752) != 2 && !*(a1 + 10892))
      {
        if ((*(a1 + 10784) & 1) == 0)
        {
          *(a1 + 1132) = 1;
        }

        *(a1 + 10764) = 1;
        *(a1 + 1464) = 0;
        v18 = *(a1 + 1336);
        *(a1 + 1336) = v18 | 0x30;
        v19 = *(a1 + 688);
        v20 = v19 & 0xFFFFFFFD;
        if (v11[190] < 1)
        {
          goto LABEL_46;
        }

        v21 = *(a1 + 1444) + 15;
        v22 = v21 >> 4;
        v23 = *(a1 + 1440) + 15;
        v24 = (v23 >> 4) + 31;
        v25 = v24 & 0x1FFFFFE0;
        v26 = v19 & 0xFFFFFEFD;
        v20 |= 0x100u;
        if (*(a1 + 1112) * (v21 >> 4) * (v23 >> 4) <= 0xAFC80)
        {
          v20 = v26;
        }

        *(a1 + 688) = v20;
        v27 = v18 | 0x70;
        *(a1 + 1336) = v27;
        if (v25 > 0x80 || v25 * v22 >= 0x2D01)
        {
          if (v21 > 0x44F || v23 >= 0x790)
          {
            v28 = ((((v23 >> 4) + 1) >> 1) + 31) >> 5;
            v22 = (v22 + 1) >> 1;
          }

          else
          {
            v28 = v24 >> 5;
          }

          v29 = v28 * v22;
          if (v21 <= 0xC0F && v25 <= 0x100 && v29 <= 0x120)
          {
LABEL_46:
            *(a1 + 688) = v20 | 0x100;
            goto LABEL_48;
          }

          *(a1 + 1336) = v27 & 0xFFFFFFBF;
        }
      }
    }
  }

LABEL_48:
  v30 = v11[19];
  if (v30 >= 1)
  {
    *(a1 + 11968) = v30;
  }

  v31 = (*(a1 + 1336) | v11[237] & 0x30) & (~*(v11 + 952) | 0xFFFFFFCF);
  *(a1 + 1336) = v31;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v31 |= 0x8000u;
    *(a1 + 1336) = v31;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v31 & 0xFFFF7FFF;
  }

  if (sub_160EF0(0xCu, 7))
  {
    v32 = sub_160F34(0xCu);
    v33 = sub_175AE4();
    v34 = sub_160F68(7);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v33, 12, v34, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v35 = sub_175AE4();
      v228 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v35, 12, v228, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v33, 12, v34, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v239 = (a1 + 104624);
  v36 = sub_1502C8();
  v37 = sub_17D488(v36[186]);
  if (v37)
  {
    *(a1 + 104628) = v37;
  }

  v38 = sub_17DA08(v36[187]);
  if (v38)
  {
    *(a1 + 104632) = v38;
  }

  v238 = (a1 + 39884);
  v237 = (a1 + 31332);
  v39 = (a1 + 24252);
  v40 = sub_17D614(v36[188]);
  v41 = a1 + 104624;
  if (v40)
  {
    *v239 = v40;
  }

  v42 = *(a1 + 104628);
  if (!v42)
  {
LABEL_72:
    if (*(a1 + 10772) == 2)
    {
      if (*v239)
      {
        if (sub_160EF0(0x1Eu, 6))
        {
          v53 = sub_160F34(0x1Eu);
          v54 = sub_175AE4();
          v55 = sub_160F68(6);
          if (v53)
          {
            printf("%lld %d AVE %s: %s:%d tier %d -> change the default %d\n", v54, 30, v55, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5702, *v239, *(a1 + 24260));
            v54 = sub_175AE4();
            sub_160F68(6);
            v41 = a1 + 104624;
          }

          syslog(3, "%lld %d AVE %s: %s:%d tier %d -> change the default %d", v54);
        }

        *(a1 + 24260) = *v41;
      }

      v60 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0xF0000000FLL), 4uLL);
      if ((*(a1 + 1112) * v60.i32[0] * v60.i32[1]) >= 0x1DA9C0)
      {
        *(a1 + 24260) = 2;
        *(a1 + 12024) = 2;
      }
    }

    v61 = *(a1 + 1308) > 1 || *(a1 + 1256) || (*v10 & 0xFFFE) == 4 || *(a1 + 1324) > 1 || (*(a1 + 716) & 0x3C0) != 0;
    *(a1 + 10173) = v61;
    v62 = *(a1 + 1132);
    if (v62 == 4 || v62 == 2)
    {
      v63 = *(a1 + 10892);
      if (v63 == 37 || !v63)
      {
        *(a1 + 10892) = 10000;
        *(a1 + 688) &= ~0x100u;
        *(a1 + 10520) = 1;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
      }
    }

    v64 = v36[395];
    if (v64 <= 19)
    {
      if (!v64)
      {
        *(a1 + 10892) = 0;
        goto LABEL_174;
      }

      if (v64 == 1)
      {
        *(a1 + 10892) = 1;
LABEL_125:
        *(a1 + 1336) = 0x10000;
        *(a1 + 1132) = 20;
        *(a1 + 10784) = 1;
        *(a1 + 10764) = 0;
        *(a1 + 10205) = 0;
        *(a1 + 1240) &= ~0x100u;
        if (*(a1 + 1256) >= 1)
        {
          *(a1 + 1256) = 0x200000001;
          *(a1 + 13336) = 1;
          *(a1 + 24776) = 1;
          *(a1 + 48356) = 1;
        }

        *(a1 + 10808) = 0;
        *(a1 + 42027) = 1;
        *(a1 + 60061) = 1;
        if (*(a1 + 1296))
        {
          *(a1 + 39957) = 1;
        }

        if ((*(a1 + 1104) & 0x80) != 0)
        {
          v74 = 1;
          *v237 = 1;
          *(a1 + 31474) = 257;
          *(a1 + 31476) = 1;
          *(a1 + 31480) = xmmword_185A30;
          *(a1 + 31496) = 15;
        }

        else
        {
          v74 = 0;
        }

        v59 = 0;
        *(a1 + 31473) = v74;
        *(a1 + 1096) &= 0xFFFFFC40FFFFFCBFLL;
        *(a1 + 39886) = 1;
        goto LABEL_188;
      }
    }

    else
    {
      switch(v64)
      {
        case 20:
          *(a1 + 10892) = 20;
          goto LABEL_132;
        case 37:
          *(a1 + 10892) = 37;
LABEL_157:
          if ((*(a1 + 1104) & 0x80) != 0)
          {
            *v237 = 1;
            *(a1 + 31473) = 1;
            *(a1 + 31475) = 1;
            *(a1 + 31484) = xmmword_185A20;
          }

          *(a1 + 1112) = 60;
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
          *(a1 + 1088) |= 2uLL;
          *(a1 + 1336) &= ~0x40u;
          *(a1 + 1296) |= 2u;
          if (*(v41 + 1676) <= 0 && *(v41 + 16) == 1)
          {
            v83 = *(a1 + 1160);
            if (v83 >= 1)
            {
              v84 = 0;
              v85 = (a1 + 1176);
              v86 = 0x7FFFFFFF;
              do
              {
                if (v86 > (*(v85 - 1) * 8.0 / *v85))
                {
                  if (sub_160EF0(0x1Eu, 6))
                  {
                    v87 = sub_160F34(0x1Eu);
                    v88 = sub_175AE4();
                    v89 = sub_160F68(6);
                    v90 = *(v85 - 1);
                    v91 = *v85;
                    if (v87)
                    {
                      printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v88, 30, v89, v84, *(v85 - 1), v91);
                      v88 = sub_175AE4();
                      v89 = sub_160F68(6);
                      v90 = *(v85 - 1);
                      v91 = *v85;
                    }

                    syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v88, 30, v89, v84, v90, v91);
                    v41 = a1 + 104624;
                  }

                  v86 = (*(v85 - 1) * 8.0 / *v85);
                  v83 = *(a1 + 1160);
                }

                ++v84;
                v85 += 2;
              }

              while (v84 < v83);
              if (v86 != 0x7FFFFFFF)
              {
                *(a1 + 1136) = v86;
              }
            }
          }

          v59 = 0;
          *(a1 + 1240) &= ~0x100u;
          goto LABEL_188;
        case 10000:
          *(a1 + 10892) = 10000;
          goto LABEL_103;
      }
    }

    v95 = *(a1 + 10892);
    if (v95 <= 36)
    {
      if (v95 != 1)
      {
        if (v95 != 20)
        {
          goto LABEL_174;
        }

LABEL_132:
        sub_11565C(a1);
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *v237 = 1;
          *(a1 + 31473) = 1;
          *(a1 + 31475) = 1;
          *(a1 + 31484) = xmmword_185A20;
        }

        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v41 + 1804) <= 0 && *(v41 + 1816) <= 0.0 && (*(v41 + 1808) & 0x80000000) != 0 && *(v41 + 1824) <= 0.0)
        {
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v41 + 1676) <= 0 && *(v41 + 16) == 1)
        {
          v75 = *(a1 + 1160);
          if (v75 >= 1)
          {
            v76 = 0;
            v77 = (a1 + 1176);
            v68 = 0x7FFFFFFF;
            do
            {
              if (v68 > (*(v77 - 1) * 8.0 / *v77))
              {
                if (sub_160EF0(0x1Eu, 6))
                {
                  v78 = sub_160F34(0x1Eu);
                  v79 = sub_175AE4();
                  v80 = sub_160F68(6);
                  v81 = *(v77 - 1);
                  v82 = *v77;
                  if (v78)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v79, 30, v80, v76, *(v77 - 1), v82);
                    v79 = sub_175AE4();
                    v80 = sub_160F68(6);
                    v81 = *(v77 - 1);
                    v82 = *v77;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v79, 30, v80, v76, v81, v82);
                  v41 = a1 + 104624;
                }

                v68 = (*(v77 - 1) * 8.0 / 1.5 / *v77);
                v75 = *(a1 + 1160);
              }

              ++v76;
              v77 += 2;
            }

            while (v76 < v75);
LABEL_154:
            if (v68 != 0x7FFFFFFF)
            {
              v59 = 0;
              *(a1 + 1136) = v68;
              goto LABEL_188;
            }
          }
        }

LABEL_181:
        v59 = 0;
        goto LABEL_188;
      }

      goto LABEL_125;
    }

    if (v95 != 37)
    {
      if (v95 == 10000)
      {
LABEL_103:
        sub_11565C(a1);
        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v41 + 1804) <= 0 && *(v41 + 1816) <= 0.0)
        {
          *(a1 + 1264) = 120;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v41 + 1676) <= 0 && *(v41 + 16) == 1)
        {
          v65 = *(a1 + 1160);
          if (v65 >= 1)
          {
            v66 = 0;
            v67 = (a1 + 1176);
            v68 = 0x7FFFFFFF;
            do
            {
              if (v68 > (*(v67 - 1) * 8.0 / *v67))
              {
                if (sub_160EF0(0x1Eu, 6))
                {
                  v69 = sub_160F34(0x1Eu);
                  v70 = sub_175AE4();
                  v71 = sub_160F68(6);
                  v72 = *(v67 - 1);
                  v73 = *v67;
                  if (v69)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v70, 30, v71, v66, *(v67 - 1), v73);
                    v70 = sub_175AE4();
                    v71 = sub_160F68(6);
                    v72 = *(v67 - 1);
                    v73 = *v67;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v70, 30, v71, v66, v72, v73);
                  v41 = a1 + 104624;
                }

                v68 = (*(v67 - 1) * 8.0 / 1.5 / *v67);
                v65 = *(a1 + 1160);
              }

              ++v66;
              v67 += 2;
            }

            while (v66 < v65);
            goto LABEL_154;
          }
        }

        goto LABEL_181;
      }

LABEL_174:
      v92 = *(a1 + 76);
      if (v92 <= 0x1D && ((1 << v92) & 0x2679CC00) != 0)
      {
        v93 = *(a1 + 10248);
        *(a1 + 10172) = v93 ^ 1;
        if ((v93 & 1) == 0)
        {
          *(a1 + 688) |= 0x100u;
          v94 = *(a1 + 1296);
          if ((v94 & 1) == 0 && (*(a1 + 1123) & 0x80) == 0)
          {
            *(a1 + 10200) = 1;
            *(a1 + 1296) = v94 | 1;
            *(a1 + 39957) = 1;
            *(a1 + 48356) = 1;
          }
        }
      }

      sub_11565C(a1);
      goto LABEL_181;
    }

    goto LABEL_157;
  }

  *(a1 + 10800) = v42;
  if (sub_160EF0(0x1Eu, 6))
  {
    v43 = sub_160F34(0x1Eu);
    v44 = sub_175AE4();
    v45 = sub_160F68(6);
    v46 = *(a1 + 24264);
    if (v43)
    {
      printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v44, 30, v45, *(a1 + 104628), v46);
      v47 = sub_175AE4();
      v48 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v47, 30, v48, *(a1 + 104628), *(a1 + 24264));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v44, 30, v45, *(a1 + 104628), v46);
    }
  }

  v49 = *(a1 + 104628) - 1;
  if (v49 < 0xA && ((0x3E7u >> v49) & 1) != 0)
  {
    v50 = qword_185B90[v49];
    v51 = dword_185BE0[v49];
    v52 = qword_185C08[v49];
    *(a1 + v50) = v51;
    *(a1 + v52) = v51;
    goto LABEL_72;
  }

  if (sub_160EF0(3u, 4))
  {
    v56 = sub_160F34(3u);
    v57 = sub_175AE4();
    v58 = sub_160F68(4);
    if (v56)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized\n", v57, 3, v58, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5689, "false", *(a1 + 104628));
      v57 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized", v57);
  }

  v59 = -12902;
LABEL_188:
  if (sub_160EF0(0xCu, 7))
  {
    v96 = sub_160F34(0xCu);
    v97 = sub_175AE4();
    v98 = sub_160F68(7);
    if (v96)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v97, 12, v98, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v59);
      v99 = sub_175AE4();
      v229 = sub_160F68(7);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v99, 12, v229, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v59);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v97, 12, v98, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v59);
    }
  }

  if (sub_160EF0(0xD1u, 6))
  {
    v100 = sub_160F34(0xD1u);
    v101 = sub_175AE4();
    v102 = sub_160F68(6);
    if (v100)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v101, 209, v102, "AVE_PrepareHEVCLevel", a1);
      v103 = sub_175AE4();
      v230 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v103, 209, v230, "AVE_PrepareHEVCLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v101, 209, v102, "AVE_PrepareHEVCLevel", a1);
    }
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v104 = sub_160F34(0xD1u);
    v105 = sub_175AE4();
    v106 = sub_160F68(7);
    if (v104)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v105, 209, v106, "AVE_PrepareHEVCLevel", 2970, *(a1 + 24264), *(a1 + 24316), *(v41 + 4), *(v41 + 8));
      v105 = sub_175AE4();
      sub_160F68(7);
      v41 = a1 + 104624;
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v105, 209);
  }

  if (sub_160EF0(0xD1u, 7))
  {
    v107 = sub_160F34(0xD1u);
    v108 = sub_175AE4();
    v109 = sub_160F68(7);
    if (v107)
    {
      printf("%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v108, 209, v109, "AVE_PrepareHEVCLevel", 2974, *(a1 + 1440), *(a1 + 1444), *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v110 = sub_175AE4();
      v231 = sub_160F68(7);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d", v110, 209, v231);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d", v108, 209, v109);
    }
  }

  v111 = *(a1 + 1132);
  if (v111 < 1)
  {
    v112 = 0;
  }

  else
  {
    v112 = 0;
    if (v111 != 3 && v111 != 8)
    {
      v112 = *(a1 + 1136);
    }
  }

  v113 = sub_17D77C(*(a1 + 24264), *(a1 + 24260), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v112);
  if (v113)
  {
    v114 = v113;
    v115 = *(a1 + 24316);
    if (v115 <= v113)
    {
      v115 = v113;
    }

    *(a1 + 24316) = v115;
    *(a1 + 12080) = v115;
    v116 = *(v41 + 8);
    if (v116)
    {
      if (v116 < v115 && *(a1 + 1112) >= 1)
      {
        if (sub_160EF0(0xD1u, 5))
        {
          v117 = sub_160F34(0xD1u);
          v118 = sub_175AE4();
          v119 = sub_160F68(5);
          if (v117)
          {
            printf("%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)\n", v118, 209, v119, "AVE_PrepareHEVCLevel", 3005, *(v41 + 8), *(a1 + 24316));
            v118 = sub_175AE4();
            sub_160F68(5);
            v41 = a1 + 104624;
          }

          syslog(3, "%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)", v118);
        }

        v124 = 4294966295;
        goto LABEL_238;
      }

      if (v115 != v116)
      {
        if (sub_160EF0(0xD1u, 6))
        {
          v125 = sub_160F34(0xD1u);
          v126 = sub_175AE4();
          v127 = sub_160F68(6);
          if (v125)
          {
            printf("%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v126, 209, v127, "AVE_PrepareHEVCLevel", 3013, *(v41 + 8), *(a1 + 24316));
            v126 = sub_175AE4();
            sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)", v126);
        }

        v124 = 0;
        v128 = *(v41 + 8);
        *(a1 + 24316) = v128;
        *(a1 + 12080) = v128;
        goto LABEL_239;
      }
    }

    v124 = 0;
LABEL_238:
    v128 = *(a1 + 24316);
LABEL_239:
    if (v128 == 18)
    {
      *(a1 + 12024) = 2;
      *(a1 + 24260) = 2;
      *(a1 + 12120) = 16843009;
      *(a1 + 12124) = 257;
      *(a1 + 24356) = 16843009;
      *(a1 + 24360) = 257;
    }

    if (sub_160EF0(0xD1u, 7))
    {
      v129 = sub_160F34(0xD1u);
      v130 = sub_175AE4();
      v131 = sub_160F68(7);
      if (v129)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v130, 209, v131, "AVE_PrepareHEVCLevel", 3034, *(a1 + 24316), v114);
        v130 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v130);
      v41 = a1 + 104624;
    }

    goto LABEL_245;
  }

  if (sub_160EF0(0xD1u, 4))
  {
    v120 = sub_160F34(0xD1u);
    v121 = sub_175AE4();
    v122 = sub_160F68(4);
    if (v120)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v121, 209, v122, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
      v123 = sub_175AE4();
      v232 = sub_160F68(4);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v123, 209, v232, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v121, 209, v122, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }
  }

  v124 = 4294966295;
LABEL_245:
  if (sub_160EF0(0xD1u, 6))
  {
    v132 = sub_160F34(0xD1u);
    v133 = sub_175AE4();
    v134 = sub_160F68(6);
    if (v132)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v133, 209, v134, "AVE_PrepareHEVCLevel", a1, v124);
      v135 = sub_175AE4();
      v233 = sub_160F68(6);
      v41 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v135, 209, v233, "AVE_PrepareHEVCLevel", a1, v124);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v133, 209, v134, "AVE_PrepareHEVCLevel", a1, v124);
    }
  }

  if (v124)
  {
    if (sub_160EF0(3u, 4))
    {
      v136 = sub_160F34(3u);
      v137 = sub_175AE4();
      v138 = sub_160F68(4);
      if (v136)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed\n", v137, 3, v138, "AVE_ManageSessionSettings", 7340, "err == 0");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed");
    }

    return v124;
  }

  v139 = sub_1502C8();
  v140 = v139;
  v141 = *(v139 + 224);
  if ((v141 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v141;
    if (v141 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v142 = *(v139 + 225);
  if ((v142 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v142;
  }

  v143 = v139[113];
  if (v143 >= 0.0)
  {
    *(a1 + 1272) = v143;
  }

  v144 = v139[114];
  if (v144 >= 0.0)
  {
    *(a1 + 1280) = v144;
  }

  v145 = *(a1 + 716);
  v146 = *(v139 + 7);
  v147 = *(a1 + 1456) | *(v139 + 6);
  v149 = *(v139 + 4);
  v148 = *(v139 + 5);
  v150 = (*(a1 + 1448) | v149) & ~v148;
  *(a1 + 1448) = v150;
  *(a1 + 1456) = v147 & ~v146;
  v151 = v150 | v149 & 0x20;
  v152 = v150 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v148 & 0x20) == 0)
  {
    v152 = v151;
  }

  if (((v148 | v149) & 0x20) != 0)
  {
    *(a1 + 1448) = v152;
  }

  if ((v152 & 0x20) == 0)
  {
    v153 = v145;
    if ((v148 & 0x20) == 0)
    {
      goto LABEL_282;
    }

LABEL_281:
    *(a1 + 716) = v153 & 0xFFFFFC3F;
    goto LABEL_282;
  }

  if (*(v139 + 1) == 1)
  {
    v154 = sub_1523E8(*(a1 + 68), *(a1 + 64), v145, *(a1 + 10772), *(v41 + 3376));
    v155 = *(a1 + 716);
    if (v154)
    {
      v153 = v155 & 0xFFFFFC3F;
    }

    else
    {
      v153 = v155 | 0x3C0;
    }
  }

  else
  {
    v153 = v145 | 0x3C0;
  }

  *(a1 + 716) = v153;
  v152 = *(a1 + 1448);
  if ((v152 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 1;
  }

  v148 = *(v140 + 5);
  if ((v148 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 0;
    if ((v152 & 0x4000000) == 0)
    {
LABEL_279:
      if ((v148 & 0x4000000) == 0)
      {
        goto LABEL_280;
      }

      goto LABEL_373;
    }
  }

  else if ((v152 & 0x4000000) == 0)
  {
    goto LABEL_279;
  }

  *(a1 + 10552) = 1;
  if ((v148 & 0x4000000) == 0)
  {
LABEL_280:
    if ((v148 & 0x20) == 0)
    {
      goto LABEL_282;
    }

    goto LABEL_281;
  }

LABEL_373:
  *(a1 + 10552) = 2;
  if ((v148 & 0x20) != 0)
  {
    goto LABEL_281;
  }

LABEL_282:
  v156 = *(v140 + 272);
  if ((v156 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v156;
  }

  v157 = *(v140 + 273);
  if ((v157 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v157;
  }

  if ((v152 & 0x40) != 0)
  {
    *v238 = 1;
    if ((v148 & 0x40) == 0)
    {
LABEL_288:
      if ((v152 & 0x200) == 0)
      {
        goto LABEL_289;
      }

      goto LABEL_328;
    }
  }

  else if ((v148 & 0x40) == 0)
  {
    goto LABEL_288;
  }

  *v238 = 0;
  if ((v152 & 0x200) == 0)
  {
LABEL_289:
    if ((v148 & 0x200) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_329;
  }

LABEL_328:
  *(a1 + 39959) = 1;
  if ((v148 & 0x200) == 0)
  {
LABEL_290:
    if ((v152 & 0x400) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_330;
  }

LABEL_329:
  *(a1 + 39959) = 0;
  if ((v152 & 0x400) == 0)
  {
LABEL_291:
    if ((v148 & 0x400) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_331;
  }

LABEL_330:
  *(a1 + 12016) = 1;
  *v39 = 1;
  if ((v148 & 0x400) == 0)
  {
LABEL_292:
    if ((v152 & 0x20000) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_332;
  }

LABEL_331:
  *(a1 + 12016) = 0;
  *v39 = 0;
  if ((v152 & 0x20000) == 0)
  {
LABEL_293:
    if ((v148 & 0x20000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_333;
  }

LABEL_332:
  *(a1 + 10205) = 1;
  if ((v148 & 0x20000) == 0)
  {
LABEL_294:
    if ((v152 & 0x40000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_334;
  }

LABEL_333:
  *(a1 + 10205) = 0;
  if ((v152 & 0x40000) == 0)
  {
LABEL_295:
    if ((v148 & 0x40000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_335;
  }

LABEL_334:
  *(a1 + 10206) = 1;
  if ((v148 & 0x40000) == 0)
  {
LABEL_296:
    if ((v152 & 0x80000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_336;
  }

LABEL_335:
  *(a1 + 10206) = 0;
  if ((v152 & 0x80000) == 0)
  {
LABEL_297:
    if ((v148 & 0x80000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_337;
  }

LABEL_336:
  *(a1 + 1336) |= 0x200u;
  if ((v148 & 0x80000) == 0)
  {
LABEL_298:
    if ((v152 & 0x100000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_338;
  }

LABEL_337:
  *(a1 + 1336) &= ~0x200u;
  if ((v152 & 0x100000) == 0)
  {
LABEL_299:
    if ((v148 & 0x100000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_300;
  }

LABEL_338:
  *(a1 + 10855) = 1;
  if ((v148 & 0x100000) != 0)
  {
LABEL_300:
    *(a1 + 10855) = 0;
  }

LABEL_301:
  v158 = *(v140 + 96);
  v159 = *(v140 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v158) & ~v159;
  if ((v158 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v159 & 0x40) == 0)
    {
LABEL_303:
      if ((v158 & 0x10000) == 0)
      {
        goto LABEL_304;
      }

      goto LABEL_342;
    }
  }

  else if ((v159 & 0x40) == 0)
  {
    goto LABEL_303;
  }

  *(a1 + 1476) = 0;
  if ((v158 & 0x10000) == 0)
  {
LABEL_304:
    if ((v159 & 0x10000) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_343;
  }

LABEL_342:
  *(a1 + 10847) = 1;
  if ((v159 & 0x10000) == 0)
  {
LABEL_305:
    if ((v158 & 0x40000) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_344;
  }

LABEL_343:
  *(a1 + 10847) = 0;
  if ((v158 & 0x40000) == 0)
  {
LABEL_306:
    if ((v159 & 0x40000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_345;
  }

LABEL_344:
  *(a1 + 10851) = 1;
  if ((v159 & 0x40000) == 0)
  {
LABEL_307:
    if ((v158 & 0x80000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_346;
  }

LABEL_345:
  *(a1 + 10851) = 0;
  if ((v158 & 0x80000) == 0)
  {
LABEL_308:
    if ((v159 & 0x80000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_347;
  }

LABEL_346:
  *(a1 + 10852) = 1;
  if ((v159 & 0x80000) == 0)
  {
LABEL_309:
    if ((v158 & 0x100000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_348;
  }

LABEL_347:
  *(a1 + 10852) = 0;
  if ((v158 & 0x100000) == 0)
  {
LABEL_310:
    if ((v159 & 0x100000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_349;
  }

LABEL_348:
  *(a1 + 10853) = 1;
  *(a1 + 10849) = 1;
  if ((v159 & 0x100000) == 0)
  {
LABEL_311:
    if ((v158 & 0x800000) == 0)
    {
      goto LABEL_312;
    }

LABEL_350:
    *(a1 + 1336) |= 0x4000000u;
    if ((v159 & 0x800000) == 0)
    {
      goto LABEL_314;
    }

    goto LABEL_313;
  }

LABEL_349:
  *(a1 + 10853) = 0;
  *(a1 + 10849) = 0;
  if ((v158 & 0x800000) != 0)
  {
    goto LABEL_350;
  }

LABEL_312:
  if ((v159 & 0x800000) != 0)
  {
LABEL_313:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_314:
  v160 = *(v140 + 242);
  if (v160)
  {
    *(a1 + 1352) |= v160;
  }

  v161 = *(v140 + 243);
  if (v161)
  {
    *(a1 + 1352) &= ~v161;
  }

  if ((v158 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 1;
  }

  if ((v159 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 0;
  }

  v162 = *(v140 + 230);
  if (v162)
  {
    *(a1 + 10200) = 1;
    *(a1 + 1296) |= 1u;
    *(a1 + 39957) = 1;
    *(a1 + 48356) = 1;
  }

  v163 = *(v140 + 231);
  if (v163)
  {
    *(a1 + 10200) = 0;
    v164 = *(a1 + 1296) & 0xFFFFFFFE;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  else
  {
    v164 = *(a1 + 1296);
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v140 + 237)) & ~*(v140 + 238) | *(v140 + 237) & 0x106) & (~*(v140 + 238) | 0xFFFFFEF9);
  *(a1 + 1240) = (*(a1 + 1240) | *(v140 + 218)) & ~*(v140 + 219);
  *(a1 + 1296) = (v164 | v162) & ~v163;
  v166 = *(v140 + 16);
  v165 = *(v140 + 17);
  *(a1 + 688) = (*(a1 + 688) | v166) & ~v165;
  if ((v166 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v165 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v140 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v167 = *(v140 + 200);
  if (v167 >= 1)
  {
    *(a1 + 1136) = v167;
  }

  v168 = *(v140 + 18);
  if ((v168 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v168;
  }

  v169 = *(v140 + 256);
  if (v169 >= 1)
  {
    *(a1 + 1368) = v169;
  }

  v170 = *(v140 + 259);
  if ((v170 & 0x80000000) == 0)
  {
    *(a1 + 10788) = v170;
    if (v170 >= 5)
    {
      if (sub_160EF0(0x10u, 4))
      {
        v173 = sub_160F34(0x10u);
        v174 = sub_175AE4();
        v175 = sub_160F68(4);
        if (v173)
        {
          printf("%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)\n", v174, 16, v175, v170);
          v176 = sub_175AE4();
          v234 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v176, 16, v234, v170);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v174, 16, v175, v170);
        }
      }

      LOBYTE(v171) = 0;
      LOBYTE(v172) = 0;
    }

    else
    {
      v171 = 0x101000100uLL >> (8 * v170);
      v172 = 0x101010000uLL >> (8 * v170);
    }

    *(a1 + 59393) = v171;
    *(a1 + 59394) = v172;
  }

  v177 = *(v140 + 255);
  if (sub_E71EC(*(a1 + 68), 1, 2, v177))
  {
    *v10 = v177;
  }

  v178 = *(v140 + 223);
  if (v178 >= 1)
  {
    *(a1 + 1288) = v178;
  }

  if ((*v140 & 0x80000000) == 0)
  {
    *(a1 + 11460) = *v140;
  }

  v179 = *(v140 + 190);
  if (v179 >= 1)
  {
    *(a1 + 1112) = v179;
  }

  v180 = *(v140 + 196);
  if (v180 != -13)
  {
    *(a1 + 1232) = v180;
  }

  v181 = *(v140 + 197);
  if (v181 != -13)
  {
    *(a1 + 1236) = v181;
  }

  v182 = *(v140 + 240);
  if (v182 != -13)
  {
    *(a1 + 1344) = v182;
  }

  v183 = *(v140 + 241);
  if (v183 != -13)
  {
    *(a1 + 1348) = v183;
  }

  v184 = *(v140 + 201);
  if (v184 != -13)
  {
    *(a1 + 1144) = v184;
  }

  v185 = *(v140 + 202);
  if (v185 != -13)
  {
    *(a1 + 1148) = v185;
  }

  v186 = *(v140 + 203);
  if (v186 != -13)
  {
    *(a1 + 1152) = v186;
  }

  v187 = *(v140 + 260);
  if (v187 <= 4)
  {
    *(a1 + 10860) = v187;
  }

  if (*(v140 + 262))
  {
    v188 = 0;
    v189 = a1 + 10544;
    v190 = 1;
    do
    {
      v191 = v190;
      v192 = *(v189 + 4 * v188);
      v193 = (*(v140 + 262) / 100.0 + 1.0) * v192;
      if (v193 >= 25.0 || v193 < 0.0)
      {
        v193 = v192;
      }

      *(v189 + 4 * v188) = v193;
      v188 = 1;
      v190 = 0;
    }

    while ((v191 & 1) != 0);
  }

  v195 = *(v140 + 261);
  if ((v195 & 0x80000000) == 0)
  {
    *(a1 + 10544) = v195;
    *(a1 + 10548) = v195;
  }

  v196 = *(v140 + 400);
  if (v196 >= 1)
  {
    *(a1 + 11792) = v196;
  }

  v197 = *(v140 + 401);
  if (v197 >= 1)
  {
    *(a1 + 11796) = v197;
  }

  v198 = *(v140 + 189);
  if ((v198 & 0x80000000) == 0)
  {
    *(a1 + 10808) = v198;
    *(a1 + 10845) = 1;
  }

  v199 = *(v140 + 254);
  if (v199 >= 1)
  {
    *(a1 + 10252) = v199;
  }

  v200 = *(v140 + 258);
  if (v200 <= 2)
  {
    *(a1 + 60062) = v200 != 0;
  }

  v201 = *(v140 + 123);
  if (v201)
  {
    *(a1 + 1096) |= v201;
  }

  v202 = *(v140 + 124);
  if (v202)
  {
    *(a1 + 1096) &= ~v202;
  }

  if (*(a1 + 1450))
  {
    *(a1 + 10928) = 1;
    *(a1 + 14424) = 1;
    *(a1 + 31408) = 1;
    *(a1 + 1096) |= 0x1EuLL;
  }

  if ((v202 & 0x80000000) != 0)
  {
    *(a1 + 10928) = 0;
    *(a1 + 1096) &= 0xFFFFFFFFFFFFFFE1;
  }

  v203 = *(v140 + 199);
  if (v203 >= 1)
  {
    *(a1 + 1132) = v203;
  }

  v204 = *(v140 + 200);
  if (v204 >= 1)
  {
    *(a1 + 1136) = v204;
  }

  v205 = *(v140 + 198);
  if ((v205 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v205;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v206 = v140[102];
  if (v206 >= 0.0)
  {
    *(a1 + 1200) = v206;
  }

  v207 = *(v140 + 397);
  if (v207 >= 1)
  {
    *(a1 + 720) = v207;
  }

  v208 = *(a1 + 716);
  if (v145 != v208)
  {
    v209 = *(a1 + 24732) + 8;
    if (v209 <= *(a1 + 24736) + 8)
    {
      v209 = *(a1 + 24736) + 8;
    }

    if (sub_DDADC(*(a1 + 68), *(a1 + 64), v208, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v209, 0, 0x1414C4C20, *(a1 + 16)) && sub_160EF0(0x1Eu, 4))
    {
      v210 = sub_160F34(0x1Eu);
      v211 = sub_175AE4();
      v212 = sub_160F68(4);
      if (v210)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v211, 30, v212, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
        v213 = sub_175AE4();
        v235 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v213, 30, v235, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v211, 30, v212, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }
    }
  }

  if ((*(a1 + 688) & 4) != 0)
  {
    v214 = *(a1 + 1112);
    if (v214 >= 1)
    {
      v215 = v214;
    }

    else
    {
      v215 = 30.0;
    }

    if (sub_160EF0(0x1Eu, 6))
    {
      v216 = sub_160F34(0x1Eu);
      v217 = sub_175AE4();
      v218 = sub_160F68(6);
      v219 = *(a1 + 1444);
      v220 = *(a1 + 1136);
      if (v216)
      {
        printf("%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f\n", v217, 30, v218, v220, v215 * ((v219 * *(a1 + 1440)) * 1.5) * 0.2);
        v221 = sub_175AE4();
        v236 = sub_160F68(6);
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v221, 30, v236, *(a1 + 1136), v215 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v217, 30, v218, v220, v215 * ((v219 * *(a1 + 1440)) * 1.5) * 0.2);
      }
    }

    if (v215 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2 > *(a1 + 1136))
    {
      *(a1 + 11804) = 50;
    }
  }

  v124 = sub_102AD4(a1);
  if (v124 && sub_160EF0(3u, 4))
  {
    v222 = sub_160F34(3u);
    v223 = sub_175AE4();
    v224 = sub_160F68(4);
    if (v222)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v223, 3, v224, "AVE_ManageSessionSettings", 7360, "err == 0");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v124;
}