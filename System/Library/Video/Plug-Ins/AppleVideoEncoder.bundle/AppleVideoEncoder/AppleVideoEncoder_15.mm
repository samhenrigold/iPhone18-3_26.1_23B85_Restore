uint64_t sub_14D9F8(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          return v9;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr = 0;
          v19[0] = 0;
          *(v19 + 5) = 0;
          v15 = sub_14CE6C(v7, &valuePtr, 0x15u);
          if (v15)
          {
            v9 = 0;
            *a3 = strtoumax(v15, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetInt64", 1303, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v17 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14DC04(CFStringRef applicationID, CFStringRef key, double *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v19 = 0;
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberDoubleType, valuePtr))
        {
          v9 = *valuePtr;
LABEL_19:
          v14 = 0;
          *a3 = v9;
LABEL_21:
          CFRelease(v7);
          return v14;
        }

        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &v19))
        {
          v9 = v19;
          goto LABEL_19;
        }
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v21 = 0;
          v16 = sub_14CE6C(v7, valuePtr, 0x14u);
          if (v16)
          {
            v9 = strtod(v16, 0);
            goto LABEL_19;
          }
        }
      }

      v14 = 4294966296;
      goto LABEL_21;
    }

    return 4294966288;
  }

  else
  {
    if (sub_160EF0(0x14u, 4))
    {
      v10 = sub_160F34(0x14u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFPref_GetDouble", 1353, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = sub_175AE4();
        v18 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_14DE24(uint64_t *a1, uint64_t a2)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v4 = sub_160F34(0x1Eu);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v5, 30, v6, "AVE_Prop_Cfg_AVC_Init", a1, a2);
      v7 = sub_175AE4();
      v19 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v19, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v6, "AVE_Prop_Cfg_AVC_Init", a1, a2);
    }
  }

  bzero(a1 + 4, 0x568uLL);
  *a1 = a2;
  *(a1 + 1) = xmmword_1846C0;
  a1[3] = -101;
  *(a1 + 9) = -1;
  *&v8 = 0xC0000000CLL;
  *(&v8 + 1) = 0xC0000000CLL;
  *(a1 + 21) = v8;
  *(a1 + 46) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 31) = _Q0;
  a1[33] = 0xBFF0000000000000;
  *(a1 + 68) = -1;
  *&v14 = -1;
  *(&v14 + 1) = -1;
  *(a1 + 35) = v14;
  *(a1 + 37) = v14;
  *(a1 + 78) = -1;
  *(a1 + 20) = _Q0;
  a1[43] = 0xFFFFFFFEFFFFFFFFLL;
  *(a1 + 95) = -1;
  *(a1 + 99) = -1;
  a1[50] = -1;
  a1[44] = -1;
  a1[45] = -1;
  a1[46] = -1;
  *(a1 + 116) = -1;
  *(a1 + 27) = v14;
  *(a1 + 28) = v14;
  *(a1 + 26) = v14;
  a1[59] = 0xBFF0000000000000;
  *(a1 + 30) = xmmword_185FB0;
  a1[62] = -1;
  *(a1 + 676) = -1;
  a1[153] = 0xC0000000CLL;
  *(a1 + 308) = -13;
  *(a1 + 314) = -1;
  *(a1 + 317) = -1;
  a1[160] = 0xBFF0000000000000;
  a1[162] = -1;
  *(a1 + 337) = -1;
  *(a1 + 340) = -1;
  *(a1 + 1404) = -1;
  a1[183] = -1;
  *(a1 + 179) = v14;
  *(a1 + 181) = v14;
  *(a1 + 177) = v14;
  if (sub_160EF0(0x1Eu, 7))
  {
    v15 = sub_160F34(0x1Eu);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v16, 30, v17, "AVE_Prop_Cfg_AVC_Init", a1, a2, 0);
      v16 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v16);
  }

  return 0;
}

uint64_t sub_14E0A4(uint64_t *a1)
{
  if (sub_160EF0(0x1Eu, 7))
  {
    v2 = sub_160F34(0x1Eu);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v3, 30, v4, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
      v5 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v3, 30, v4, "AVE_Prop_Cfg_AVC_Uninit", a1, 0);
    }
  }

  v6 = *a1;
  if (sub_160EF0(0x1Eu, 7))
  {
    v7 = sub_160F34(0x1Eu);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_AVC_Uninit", a1, v6, 0);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

char **sub_14E230(int a1)
{
  if (a1 >= 41)
  {
    return 0;
  }

  else
  {
    return &(&off_2039C8)[2 * a1];
  }
}

uint64_t sub_14E248(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v9 = sub_16FDAC(a1, a2, a3);
  if (!v9)
  {
    return 4294966294;
  }

  v10 = *v9;
  if (v10 < 1)
  {
    v14 = 4294966294;
  }

  else
  {
    v11 = v9 + 3;
    v12 = 1;
    v13 = 1;
    do
    {
      if (*(v11 - 1) <= a4 && *v11 <= a5)
      {
        break;
      }

      v13 = v12 < v10;
      v11 += 3;
      ++v12;
    }

    while (v12 - v10 != 1);
    v14 = v13 ? 0 : 4294966294;
  }

  v15 = v9[13];
  if (v15 < 1)
  {
    return 4294966294;
  }

  for (i = v9 + 16; ; i += 3)
  {
    if (*(i - 1) >= a4 && *i >= a5)
    {
      v17 = *(i - 2);
      if (v17 == a6 || v17 < 0)
      {
        break;
      }
    }

    if (!--v15)
    {
      return 4294966294;
    }
  }

  return v14;
}

uint64_t sub_14E330(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5)
{
  v5 = 4294966295;
  if (a1 >= 1 && a2 >= 1 && a3 >= 1 && a4 <= 1 && a5)
  {
    *a5 = a1;
    v6 = a1 - 1;
    if (a1 == 1)
    {
      v5 = 0;
      a5[1] = 0;
      a5[2] = a2;
    }

    else if (a4)
    {
      v7 = (a2 / a1 + 63) & 0xFFFFFFC0;
      do
      {
        v8 = v7;
        v9 = a2 - v7 * v6;
        if (v7 < 0x81)
        {
          break;
        }

        v7 -= 64;
      }

      while (v9 < 96);
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = &a5[2 * v10 + 1];
        *v12 = v11;
        v12[1] = v8;
        v11 += v8;
        ++v10;
      }

      while (v10 != v6);
      v5 = 0;
      v21 = &a5[2 * v6];
      v21[1] = v11;
      v21[2] = v9;
    }

    else
    {
      v13 = (a2 + a3 - 1) / a3;
      if (v13 < 1)
      {
        return 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = (a5 + 2);
        while (1)
        {
          v17 = (v13 + (a1 + 1) / 2) / a1;
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = v17 >= v13 ? v13 : v17;
          v14 += v18;
          if (v14 > 0x100)
          {
            break;
          }

          v5 = 0;
          v19 = v18 * a3;
          if ((v18 * a3) >= (a2 - v15))
          {
            v19 = a2 - v15;
          }

          *(v16 - 1) = v15;
          *v16 = v19;
          v15 += v19;
          --a1;
          v16 += 2;
          v20 = __OFSUB__(v13, v18);
          v13 -= v18;
          if ((v13 < 0) ^ v20 | (v13 == 0))
          {
            return v5;
          }
        }

        return 4294966281;
      }
    }
  }

  return v5;
}

int *sub_14E470(int a1, int a2, int a3)
{
  result = sub_16FDAC(a1, a2, a3);
  if (result)
  {
    v4 = *result;
    result += 2;
    if (v4 < 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_14E498(int a1, int a2, int a3, signed int *a4, signed int *a5)
{
  v10 = sub_16FDAC(a1, a2, a3);
  if (!v10)
  {
    if (sub_160EF0(3u, 4))
    {
      v15 = sub_160F34(3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d\n", v16, 3, v17, "AVE_Enc_AlignDimension", 408, "pRes != __null", a1, a2, a3);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d", v16, 3);
    }

    return 4294966296;
  }

  v11 = *v10;
  if (*v10 <= 0)
  {
    if (sub_160EF0(3u, 4))
    {
      v18 = sub_160F34(3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d\n", v19, 3, v20, "AVE_Enc_AlignDimension", 413, "num >= 1", a1, a2, a3, v11);
        v21 = sub_175AE4();
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v21, 3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v19, 3);
      }
    }

    return 4294966296;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (a3 != 2 && a3 != 1)
  {
    return 4294966296;
  }

  result = 0;
  if (((*a4 + 15) & 0xFFFFFFF0) > v13)
  {
    v13 = (*a4 + 15) & 0xFFFFFFF0;
  }

  *a4 = v13;
  if (((*a5 + 15) & 0xFFFFFFF0) > v12)
  {
    v12 = (*a5 + 15) & 0xFFFFFFF0;
  }

  *a5 = v12;
  return result;
}

unsigned int *sub_14E6F8(unsigned int *a1, int a2, int a3, int a4)
{
  v4 = *a1;
  if (v4 < 1)
  {
    return 0;
  }

  for (i = a1 + 5; *(i - 1) != a2 || *i != a3 || *(i - 2) != a4; i += 6)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return i - 3;
}

_DWORD *sub_14E748(unsigned int *a1, int a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (result = a1 + 1; *result != a2; result += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_14E778(const char *a1, const char *a2, char *a3, uint64_t a4)
{
  if (!a2 || !a3 || a4 <= 0)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v15 = sub_160F34(0x2Cu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", v16, 44, v17, "AVE_DW_GetStr", 63, "pKey != __null && pVal != __null && num > 0", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v18, 44, v26, "AVE_DW_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v16, 44, v17, "AVE_DW_GetStr");
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.coremedia";
  }

  v9 = CFStringCreateWithCString(0, v8, 0);
  v10 = CFStringCreateWithCString(0, a2, 0);
  v11 = v10;
  if (!v9 || !v10)
  {
    v13 = 4294966293;
    if (!v9)
    {
      if (!v10)
      {
        return v13;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v12 = sub_14CFC0(v9, v10, a3, a4);
  if (v12)
  {
    v13 = v12;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *cStr = 0u;
    v31 = 0u;
    sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
    CFRelease(v11);
    v11 = CFStringCreateWithCString(0, cStr, 0);
    if (!v11)
    {
      goto LABEL_31;
    }

    v14 = sub_14CFC0(v9, v11, a3, a4);
    if (v14)
    {
      v13 = v14;
      goto LABEL_31;
    }

    if (sub_160EF0(0x2Cu, 6))
    {
      v22 = sub_160F34(0x2Cu);
      v23 = sub_175AE4();
      v24 = sub_160F68(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %s\n", v23, 44, v24, cStr, a3);
        v23 = sub_175AE4();
        v29 = a3;
        v28 = sub_160F68(6);
      }

      else
      {
        v29 = a3;
        v28 = v24;
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v23, 44, v28, cStr, v29);
    }
  }

  else if (sub_160EF0(0x2Cu, 6))
  {
    v13 = sub_160F34(0x2Cu);
    v19 = sub_175AE4();
    v20 = sub_160F68(6);
    if (!v13)
    {
      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v19, 44, v20, a2, a3);
      goto LABEL_31;
    }

    printf("%lld %d AVE %s: defaults write %s = %s\n", v19, 44, v20, a2, a3);
    v21 = sub_175AE4();
    v27 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %s", v21, 44, v27, a2, a3);
  }

  v13 = 0;
LABEL_31:
  CFRelease(v9);
  if (v11)
  {
LABEL_32:
    CFRelease(v11);
  }

  return v13;
}

uint64_t sub_14EAFC(const char *a1, const char *a2, unsigned __int8 *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v13 = sub_160F34(0x2Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v14, 44, v15, "AVE_DW_GetBool", 134, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 44, v15);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D180(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v17 = sub_160F34(0x2Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v18, 44, v19, a2, *a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = sub_14D180(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = sub_160F34(0x2Cu);
  v20 = sub_175AE4();
  v21 = sub_160F68(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v20, 44, v21, cStr, *a3);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t sub_14EE74(const char *a1, const char *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v13 = sub_160F34(0x2Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v14, 44, v15, "AVE_DW_GetUInt32", 276, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 44, v15);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D3D4(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v17 = sub_160F34(0x2Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v18, 44, v19, a2, *a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = sub_14D3D4(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = sub_160F34(0x2Cu);
  v20 = sub_175AE4();
  v21 = sub_160F68(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%x\n", v20, 44, v21, cStr, *a3);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%x", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t sub_14F1EC(const char *a1, const char *a2, uintmax_t *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v13 = sub_160F34(0x2Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v14, 44, v15, "AVE_DW_GetUInt64", 348, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 44, v15);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D5E0(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v17 = sub_160F34(0x2Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v18, 44, v19, a2, *a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = sub_14D5E0(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = sub_160F34(0x2Cu);
  v20 = sub_175AE4();
  v21 = sub_160F68(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = 0x%llx\n", v20, 44, v21, cStr, *a3);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = 0x%llx", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t sub_14F564(const char *a1, const char *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v13 = sub_160F34(0x2Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v14, 44, v15, "AVE_DW_GetInt32", 419, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 44, v15);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D7EC(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v17 = sub_160F34(0x2Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v18, 44, v19, a2, *a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = sub_14D7EC(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = sub_160F34(0x2Cu);
  v20 = sub_175AE4();
  v21 = sub_160F68(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v20, 44, v21, cStr, *a3);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t sub_14F8DC(const char *a1, const char *a2, uintmax_t *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v13 = sub_160F34(0x2Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v14, 44, v15, "AVE_DW_GetInt64", 491, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 44, v15);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14D9F8(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v17 = sub_160F34(0x2Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %lld\n", v18, 44, v19, a2, *a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = sub_14D9F8(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = sub_160F34(0x2Cu);
  v20 = sub_175AE4();
  v21 = sub_160F68(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %lld\n", v20, 44, v21, cStr, *a3);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lld", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

uint64_t sub_14FC54(const char *a1, const char *a2, double *a3)
{
  if (!a2 || !a3)
  {
    if (sub_160EF0(0x2Cu, 4))
    {
      v13 = sub_160F34(0x2Cu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v14, 44, v15, "AVE_DW_GetDouble", 562, "pKey != __null && pVal != __null", a1, a2, a3);
        v16 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 44, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 44, v15);
      }
    }

    return 4294966295;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v11 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        return v11;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v10 = sub_14DC04(v7, v8, a3);
  if (!v10)
  {
    if (sub_160EF0(0x2Cu, 6))
    {
      v17 = sub_160F34(0x2Cu);
      v18 = sub_175AE4();
      v19 = sub_160F68(6);
      if (v17)
      {
        printf("%lld %d AVE %s: defaults write %s = %lf\n", v18, 44, v19, a2, *a3);
        v18 = sub_175AE4();
        v19 = sub_160F68(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v18, 44, v19, a2, *a3);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  sub_172100(cStr, 128, "AVEVideoEncoder%s", a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v12 = sub_14DC04(v7, v9, a3);
  if (v12)
  {
    v11 = v12;
    goto LABEL_28;
  }

  if (!sub_160EF0(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v11 = sub_160F34(0x2Cu);
  v20 = sub_175AE4();
  v21 = sub_160F68(6);
  if (v11)
  {
    printf("%lld %d AVE %s: defaults write %s = %lf\n", v20, 44, v21, cStr, *a3);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v22, 44, v23, cStr, *a3);
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %lf", v20, 44, v21, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

  return v11;
}

char *sub_14FFD4(uint64_t a1)
{
  result = sub_16FD90(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t sub_14FFF4(char *a1, int *a2)
{
  if (!a1)
  {
    return 4294966288;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 2;
  v6 = 0xFFFFFFFFLL;
  v7 = a2 + 2;
  while (1)
  {
    result = *v3;
    if (*v3 <= 0x53u)
    {
      if (*v3 <= 0x4Cu)
      {
        if (*v3 <= 0x43u)
        {
          if (result == 32)
          {
            goto LABEL_59;
          }

          if (!*v3)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (result == 68)
          {
            goto LABEL_31;
          }

          if (result == 71)
          {
LABEL_32:
            v4 = 4;
            goto LABEL_59;
          }
        }
      }

      else if (*v3 > 0x4Fu)
      {
        if (result == 80)
        {
          goto LABEL_34;
        }

        if (result == 83)
        {
LABEL_30:
          v4 = 6;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 77)
        {
          goto LABEL_24;
        }

        if (result == 78)
        {
LABEL_33:
          v4 = 3;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x6Du)
    {
      if (*v3 > 0x72u)
      {
        if (result == 115)
        {
          goto LABEL_30;
        }

        if (result == 116)
        {
LABEL_27:
          v4 = 1;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 110)
        {
          goto LABEL_33;
        }

        if (result == 112)
        {
LABEL_34:
          v4 = 5;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x66u)
    {
      if (result == 103)
      {
        goto LABEL_32;
      }

      if (result == 109)
      {
LABEL_24:
        v4 = 2;
        goto LABEL_59;
      }
    }

    else
    {
      if (result == 84)
      {
        goto LABEL_27;
      }

      if (result == 100)
      {
LABEL_31:
        v4 = 0;
        goto LABEL_59;
      }
    }

    if ((result - 48) > 9)
    {
      result = 4294966296;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      return 4294966288;
    }

    v9 = atoi(v3);
    v10 = v9;
    if (v4 <= 1)
    {
      if (v4)
      {
        v10 = v6 & ~(v6 >> 31);
        *v7 = v9 != 0;
        goto LABEL_57;
      }

      if (v9 > 5)
      {
        result = 4294966290;
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        return 4294966288;
      }

      v7 = &v5[12 * v9];
    }

    else
    {
      switch(v4)
      {
        case 2:
          v10 = v6 & ~(v6 >> 31);
          v7[1] = v9 != 0;
          break;
        case 3:
          if ((v9 - 5) < 0xFFFFFFFC)
          {
LABEL_67:
            result = 4294966278;
LABEL_68:
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v7[2] = v9;
          v10 = v6 & ~(v6 >> 31);
          break;
        case 4:
          if (v9 > 3)
          {
            goto LABEL_67;
          }

          v11 = v7[3];
          v12 = &v7[2 * v11];
          v12[4] = v9;
          v12[5] = 1;
          v7[3] = v11 + 1;
          v10 = v6 & ~(v6 >> 31);
          break;
        default:
          v13 = v7[3];
          if (v13 < 1)
          {
LABEL_61:
            result = 4294966274;
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v14 = v7 + 5;
          while (*(v14 - 1) != v9)
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_61;
            }
          }

          *v14 = v4 != 5;
          v10 = v6;
          break;
      }
    }

LABEL_57:
    result = strchr(v3, 32);
    if (!result)
    {
      break;
    }

    v3 = result;
    v6 = v10;
LABEL_59:
    ++v3;
  }

  LODWORD(v6) = v10;
  if ((v10 & 0x80000000) != 0)
  {
    return 4294966288;
  }

LABEL_69:
  v15 = *a2;
  if (*a2 <= v6 + 1)
  {
    v15 = v6 + 1;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_1502D4(int *a1)
{
  v7 = 0;
  v6 = 0;
  if (!sub_14EAFC(0, "AVE_EnableLossless", &v7))
  {
    v2 = 10;
    if (v7)
    {
      v2 = 8;
    }

    *&a1[v2] |= 0x200uLL;
  }

  if (!sub_14F564(0, "AVE_FrameQP", &v6))
  {
    v3 = v6;
    a1[201] = v6;
    a1[202] = v3;
    a1[203] = v3;
  }

  if (!sub_14F564(0, "AVE_MaximizePowerEfficiency", &v6))
  {
    if (v6)
    {
      a1[16] |= 2u;
    }

    else
    {
      a1[17] |= 2u;
    }
  }

  if (!sub_14F564(0, "AVE_UseCAVLCBits", &v6))
  {
    if (v6)
    {
      a1[16] |= 0x100u;
    }

    else
    {
      a1[17] |= 0x100u;
    }
  }

  if (!sub_14F564(0, "AVE_EnableMCTF", &v6))
  {
    v4 = 8;
    if (!v6)
    {
      v4 = 10;
    }

    *&a1[v4] |= 0x20uLL;
  }

  if (!sub_14F564(0, "AVE_Bframes", &v6))
  {
    a1[221] = v6;
  }

  if (!sub_14F564(0, "AVE_BaseFrameRate", &v6))
  {
    *a1 = v6;
  }

  if (!sub_14F564(0, "AVE_InitialQPI", &v6))
  {
    a1[201] = v6;
  }

  if (!sub_14F564(0, "AVE_InitialQPP", &v6))
  {
    a1[202] = v6;
  }

  if (!sub_14F564(0, "AVE_InitialQPB", &v6))
  {
    a1[203] = v6;
  }

  if (!sub_14F564(0, "AVE_SoftMinQP", &v6))
  {
    a1[196] = v6;
  }

  if (!sub_14F564(0, "AVE_SoftMaxQP", &v6))
  {
    a1[197] = v6;
  }

  if (!sub_14F564(0, "AVE_HardMinQP", &v6))
  {
    a1[240] = v6;
  }

  result = sub_14F564(0, "AVE_HardMaxQP", &v6);
  if (!result)
  {
    a1[241] = v6;
  }

  return result;
}

uint64_t sub_150534(void *a1)
{
  v3 = 0;
  if (!sub_14F1EC(0, "AVE_CfgOn", &v3))
  {
    a1[2] = v3;
  }

  if (!sub_14F1EC(0, "AVE_CfgOff", &v3))
  {
    a1[3] = v3;
  }

  if (!sub_14F1EC(0, "AVE_SwFeatureOn", &v3))
  {
    a1[4] = v3;
  }

  if (!sub_14F1EC(0, "AVE_SwFeatureOff", &v3))
  {
    a1[5] = v3;
  }

  if (!sub_14F1EC(0, "AVE_HwFeatureOn", &v3))
  {
    a1[6] = v3;
  }

  result = sub_14F1EC(0, "AVE_HwFeatureOff", &v3);
  if (!result)
  {
    a1[7] = v3;
  }

  return result;
}

uint64_t sub_150620(int *a1)
{
  v9 = 0;
  if (!sub_14F564(0, "AVE_DPM_Mode", &v9))
  {
    *a1 = v9 | 0x100;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_IOPMin", &v9))
  {
    v2 = v9;
    if (v9 <= 1)
    {
      v2 = 1;
    }

    if (v2 >= 4)
    {
      v2 = 4;
    }

    a1[1] |= 1u;
    a1[2] = v2;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_IOPMax", &v9))
  {
    v3 = v9;
    if (v9 <= 1)
    {
      v3 = 1;
    }

    if (v3 >= 4)
    {
      v3 = 4;
    }

    a1[3] = v3;
    a1[1] |= 0x10000u;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_DCSMin", &v9))
  {
    v4 = v9;
    if (v9 <= 1)
    {
      v4 = 1;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    a1[4] = v4;
    a1[1] |= 2u;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_DCSMax", &v9))
  {
    v5 = v9;
    if (v9 <= 1)
    {
      v5 = 1;
    }

    if (v5 >= 4)
    {
      v5 = 4;
    }

    a1[5] = v5;
    a1[1] |= 0x20000u;
  }

  if (!sub_14F564(0, "AVE_DPM_PL_FABMin", &v9))
  {
    v6 = v9;
    if (v9 <= 1)
    {
      v6 = 1;
    }

    if (v6 >= 4)
    {
      v6 = 4;
    }

    a1[6] = v6;
    a1[1] |= 4u;
  }

  result = sub_14F564(0, "AVE_DPM_PL_FABMax", &v9);
  if (!result)
  {
    v8 = v9;
    if (v9 <= 1)
    {
      v8 = 1;
    }

    if (v8 >= 4)
    {
      v8 = 4;
    }

    a1[7] = v8;
    a1[1] |= 0x40000u;
  }

  return result;
}

uint64_t sub_1507EC(int *a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *v5 = 0u;
  v6 = 0u;
  v4 = 0;
  if (!sub_14F564(0, "AVE_DLB_AllocMode", &v4))
  {
    a1[1] = v4;
  }

  if (!sub_14F564(0, "AVE_DLB_Type", &v4))
  {
    a1[2] = v4;
    *a1 = 1;
  }

  if (!sub_14F564(0, "AVE_DLB_SVESchedMode", &v4))
  {
    a1[3] = v4;
    *a1 = 1;
  }

  if (!sub_14F564(0, "AVE_DLB_SVENum", &v4))
  {
    a1[4] = v4;
    *a1 = 1;
  }

  if (!sub_14E778(0, "AVE_DLB_SVEMap", v5, 128))
  {
    sub_14FFF4(v5, a1);
  }

  v2 = sub_14E778(0, "AVE_DLB_Cfg", v5, 128);
  if (!v2)
  {
    sub_14FFF4(v5, a1);
  }

  return v2;
}

uint64_t sub_150948(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_PerfFeatureOn", &v3 + 1))
  {
    a1[16] = HIDWORD(v3);
  }

  if (!sub_14EE74(0, "AVE_PerfFeatureOff", &v3 + 1))
  {
    a1[17] = HIDWORD(v3);
  }

  if (!sub_14F564(0, "AVE_InputQueueMaxCount", &v3))
  {
    a1[18] = v3;
  }

  if (!sub_14F564(0, "AVE_MaxFrameRate", &v3))
  {
    a1[19] = v3;
  }

  if (!sub_14F564(0, "AVE_Realtime", &v3))
  {
    a1[20] = v3;
  }

  sub_150620(a1 + 21);
  return sub_1507EC(a1 + 29);
}

uint64_t sub_150A24(uint64_t a1)
{
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__src = 0u;
  v6 = 0u;
  if (!sub_14EE74(0, "AVE_DumpFeature", &v4))
  {
    *(a1 + 412) = v4;
  }

  if (!sub_14EE74(0, "AVE_DumpMode", &v4))
  {
    *(a1 + 416) = v4;
  }

  v2 = sub_14E778(0, "AVE_OutputPath", __src, 128);
  if (!v2)
  {
    strncpy((a1 + 420), __src, 0x7FuLL);
  }

  return v2;
}

uint64_t sub_150B04(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__src = 0u;
  v7 = 0u;
  if (!sub_14F1EC(0, "AVE_Verbose", &v5))
  {
    *(a1 + 8) = v5;
    *a1 |= 0x100u;
  }

  if (!sub_14F1EC(0, "AVE_KernelVerbose", &v5))
  {
    *(a1 + 16) = v5;
    *a1 |= 0x200u;
  }

  if (!sub_14F1EC(0, "AVE_FirmwareVerbose", &v5))
  {
    *(a1 + 24) = v5;
    *a1 |= 0x300u;
  }

  if (!sub_14F1EC(0, "AVE_AlgVerbose", &v5))
  {
    *(a1 + 32) = v5;
    *a1 |= 0x400u;
  }

  if (!sub_14F564(0, "AVE_LogConsole", &v4))
  {
    *(a1 + 40) = v4;
  }

  v2 = sub_14E778(0, "AVE_LogPath", __src, 128);
  if (!v2)
  {
    strncpy((a1 + 44), __src, 0x7FuLL);
  }

  return v2;
}

uint64_t sub_150C78(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (!sub_14F1EC(0, "AVE_RCFeatureOn", &v4))
  {
    *(a1 + 768) = v4;
  }

  if (!sub_14F1EC(0, "AVE_RCFeatureOff", &v4))
  {
    *(a1 + 776) = v4;
  }

  if (!sub_14F564(0, "AVE_RCMinQP", &v6))
  {
    *(a1 + 784) = v6;
  }

  if (!sub_14F564(0, "AVE_RCMaxQP", &v6))
  {
    *(a1 + 788) = v6;
  }

  if (!sub_14F564(0, "AVE_LookAheadFrameCount", &v6))
  {
    *(a1 + 792) = v6;
  }

  if (!sub_14F564(0, "AVE_RCMode", &v6))
  {
    *(a1 + 796) = v6;
  }

  if (!sub_14F564(0, "AVE_Bitrate", &v6))
  {
    *(a1 + 800) = v6;
  }

  if (!sub_14F564(0, "AVE_QPI", &v6))
  {
    *(a1 + 804) = v6;
  }

  if (!sub_14F564(0, "AVE_QPP", &v6))
  {
    *(a1 + 808) = v6;
  }

  if (!sub_14F564(0, "AVE_QPB", &v6))
  {
    *(a1 + 812) = v6;
  }

  if (!sub_14FC54(0, "AVE_CRFScale", &v3))
  {
    *(a1 + 816) = v3;
  }

  if (!sub_14F564(0, "AVE_VBVMaxBitRate", &v6))
  {
    *(a1 + 824) = v6;
  }

  if (!sub_14FC54(0, "AVE_VBVBufferSize", &v3))
  {
    *(a1 + 832) = v3;
  }

  if (!sub_14FC54(0, "AVE_VBVInitialDelay", &v3))
  {
    *(a1 + 840) = v3;
  }

  if (!sub_14F564(0, "AVE_Parallel_Limit", &v6))
  {
    *(a1 + 848) = v6;
  }

  if (!sub_14F8DC(0, "AVE_Parallel_MinFrameCnt", &v5))
  {
    *(a1 + 856) = v5;
  }

  result = sub_14F8DC(0, "AVE_Parallel_MinDuration", &v5);
  if (!result)
  {
    *(a1 + 864) = v5;
  }

  return result;
}

uint64_t sub_150ECC(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  if (!sub_14EE74(0, "AVE_GOPFeatureOn", &v4 + 1))
  {
    *(a1 + 872) = HIDWORD(v4);
  }

  if (!sub_14EE74(0, "AVE_GOPFeatureOff", &v4 + 1))
  {
    *(a1 + 876) = HIDWORD(v4);
  }

  if (!sub_14F564(0, "AVE_NumOfPFrame", &v4))
  {
    *(a1 + 880) = v4;
  }

  if (!sub_14F564(0, "AVE_NumOfBFrame", &v4))
  {
    *(a1 + 884) = v4;
  }

  if (!sub_14F564(0, "AVE_NumOfGOPLayer", &v4))
  {
    *(a1 + 888) = v4;
  }

  if (!sub_14F564(0, "AVE_MaxKeyFrameInterval", &v4))
  {
    *(a1 + 896) = v4;
  }

  if (!sub_14F564(0, "AVE_StrictKeyFrameInterval", &v4))
  {
    *(a1 + 900) = v4;
  }

  if (!sub_14FC54(0, "AVE_MaxKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 904) = v3;
  }

  if (!sub_14FC54(0, "AVE_StrictKeyFrameIntervalDuration", &v3))
  {
    *(a1 + 912) = v3;
  }

  result = sub_14F564(0, "AVE_NumOfTemporalLayer", &v4);
  if (!result)
  {
    *(a1 + 892) = v4;
  }

  return result;
}

uint64_t sub_151038(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_RefFeatureOn", &v3 + 1))
  {
    a1[230] = HIDWORD(v3);
  }

  if (!sub_14EE74(0, "AVE_RefFeatureOff", &v3 + 1))
  {
    a1[231] = HIDWORD(v3);
  }

  if (!sub_14F564(0, "AVE_RefNumOfPFrame", &v3))
  {
    a1[232] = v3;
  }

  if (!sub_14F564(0, "AVE_RefNumOfBFrame", &v3))
  {
    a1[233] = v3;
  }

  if (!sub_14F564(0, "AVE_RefGapOfPFrame", &v3))
  {
    a1[234] = v3;
  }

  if (!sub_14F564(0, "AVE_RefGapOfBFrameL0", &v3))
  {
    a1[235] = v3;
  }

  result = sub_14F564(0, "AVE_RefGapOfBFrameL1", &v3);
  if (!result)
  {
    a1[236] = v3;
  }

  return result;
}

uint64_t sub_151144(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_QPModFeatureOn", &v3 + 1))
  {
    a1[237] = HIDWORD(v3);
  }

  if (!sub_14EE74(0, "AVE_QPModFeatureOff", &v3 + 1))
  {
    a1[238] = HIDWORD(v3);
  }

  if (!sub_14F564(0, "AVE_QPModLevel", &v3))
  {
    a1[239] = v3;
  }

  if (!sub_14F564(0, "AVE_BlkMinQP", &v3))
  {
    a1[240] = v3;
  }

  result = sub_14F564(0, "AVE_BlkMaxQP", &v3);
  if (!result)
  {
    a1[241] = v3;
  }

  return result;
}

uint64_t sub_151210(uint64_t a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_LambdaModFeatureOn", &v3))
  {
    *(a1 + 968) = v3;
  }

  result = sub_14EE74(0, "AVE_LambdaModFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 972) = v3;
  }

  return result;
}

uint64_t sub_15127C(uint64_t a1)
{
  v3 = 0;
  if (!sub_14EE74(0, "AVE_ModeDecFeatureOn", &v3))
  {
    *(a1 + 976) = v3;
  }

  result = sub_14EE74(0, "AVE_ModeDecFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 980) = v3;
  }

  return result;
}

uint64_t sub_1512E8(uint64_t a1)
{
  v4 = 0;
  v3 = 0;
  if (!sub_14F1EC(0, "AVE_AlgFeatureOn", &v3))
  {
    *(a1 + 728) = v3;
  }

  if (!sub_14F1EC(0, "AVE_AlgFeatureOff", &v3))
  {
    *(a1 + 736) = v3;
  }

  if (!sub_14F564(0, "AVE_Profile", &v4))
  {
    *(a1 + 744) = v4;
  }

  if (!sub_14F564(0, "AVE_Level", &v4))
  {
    *(a1 + 748) = v4;
  }

  if (!sub_14F564(0, "AVE_Tier", &v4))
  {
    *(a1 + 752) = v4;
  }

  if (!sub_14F564(0, "AVE_ScalingMatrix", &v4))
  {
    *(a1 + 756) = v4;
  }

  if (!sub_14F564(0, "AVE_FrameRate", &v4))
  {
    *(a1 + 760) = v4;
  }

  sub_150C78(a1);
  sub_150ECC(a1);
  sub_151038(a1);
  sub_151144(a1);
  sub_151210(a1);
  sub_15127C(a1);
  if (!sub_14F1EC(0, "AVE_SEIFeatureOn", &v3))
  {
    *(a1 + 984) = v3;
  }

  if (!sub_14F1EC(0, "AVE_SEIFeatureOff", &v3))
  {
    *(a1 + 992) = v3;
  }

  if (!sub_14F1EC(0, "AVE_VUIFeatureOn", &v3))
  {
    *(a1 + 1000) = v3;
  }

  result = sub_14F1EC(0, "AVE_VUIFeatureOff", &v3);
  if (!result)
  {
    *(a1 + 1008) = v3;
  }

  return result;
}

uint64_t sub_1514A8(_DWORD *a1)
{
  v3 = 0;
  if (!sub_14F564(0, "AVE_SliceNum", &v3))
  {
    a1[254] = v3;
  }

  if (!sub_14F564(0, "AVE_SearchRangeMode", &v3))
  {
    a1[255] = v3;
  }

  if (!sub_14F564(0, "AVE_ThroughputMode", &v3))
  {
    a1[256] = v3;
  }

  if (!sub_14F564(0, "AVE_MergeCandidateNum", &v3))
  {
    a1[257] = v3;
  }

  if (!sub_14F564(0, "AVE_DeblockMode", &v3))
  {
    a1[258] = v3;
  }

  if (!sub_14F564(0, "AVE_SAOMode", &v3))
  {
    a1[259] = v3;
  }

  result = sub_14F564(0, "AVE_EdgeReplication", &v3);
  if (!result)
  {
    a1[260] = v3;
  }

  return result;
}

uint64_t sub_1515B4(uint64_t a1)
{
  v4 = 0;
  v3 = 0.0;
  memset(v5, 0, sizeof(v5));
  if (!sub_14F564(0, "AVE_MCTFStrengthLevel", &v4))
  {
    *(a1 + 1044) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFStrengthDelta", &v4))
  {
    *(a1 + 1048) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFTogglePeriod", &v4))
  {
    *(a1 + 1052) = v4;
  }

  if (!sub_14FC54(0, "AVE_MCTFISPGainThreshold", &v3))
  {
    *(a1 + 1056) = v3;
  }

  if (!sub_14FC54(0, "AVE_MCTFISPGain1RefThreshold", &v3))
  {
    *(a1 + 1072) = v3;
  }

  if (!sub_14FC54(0, "AVE_MCTFISPGain2RefThreshold", &v3))
  {
    *(a1 + 1064) = v3;
  }

  if (!sub_14F564(0, "AVE_MCTFOnToOffPerfThreshold", &v4))
  {
    *(a1 + 1080) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFOffToOnPerfThreshold", &v4))
  {
    *(a1 + 1084) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFMaxNextRefNum", &v4))
  {
    *(a1 + 1088) = v4;
  }

  if (!sub_14F564(0, "AVE_MCTFRampUpFrameNum", &v4))
  {
    *(a1 + 1092) = v4;
  }

  result = sub_14E778(0, "AVE_MCTF_SMap", v5, 512);
  if (!result)
  {
    return sub_F9C(v5, (a1 + 1096));
  }

  return result;
}

uint64_t sub_1517BC(uint64_t a1)
{
  v4 = 0;
  if (!sub_14F564(0, "AVE_DWMode", &v4))
  {
    *(a1 + 4) = v4;
  }

  if (!sub_14F564(0, "AVE_DefaultCfg", &v4))
  {
    *(a1 + 8) = v4;
  }

  sub_150534(a1);
  sub_150948(a1);
  sub_150A24(a1);
  sub_150B04(a1 + 552);
  sub_1512E8(a1);
  sub_1514A8(a1);
  sub_1515B4(a1);
  if (!sub_14F564(0, "AVE_Usage", &v4))
  {
    *(a1 + 1580) = v4;
  }

  if (!sub_14F564(0, "AVE_PropertyMode", &v4))
  {
    *(a1 + 1584) = v4;
  }

  if (!sub_14F564(0, "AVE_TotalFrameCount", &v4))
  {
    *(a1 + 1588) = v4;
  }

  if (!sub_14F564(0, "AVE_CmdTimeOutMode", &v4))
  {
    *(a1 + 1592) = v4;
  }

  if (!sub_14F564(0, "AVE_SchedPolicy", &v4))
  {
    *(a1 + 1596) = v4;
  }

  if (!sub_14F564(0, "AVE_OutputBufNum", &v4))
  {
    *(a1 + 1600) = v4;
  }

  if (!sub_14F564(0, "AVE_OutputBufSize", &v4))
  {
    *(a1 + 1604) = v4;
  }

  if (!sub_14F564(0, "AVE_SNR", &v4))
  {
    *(a1 + 1608) = v4;
  }

  v2 = sub_14F564(0, "AVE_TimeStats_MaxCnt", &v4);
  if (!v2)
  {
    *(a1 + 1612) = v4;
  }

  sub_1502D4(a1);
  return v2;
}

uint64_t sub_151990()
{
  if (sub_160EF0(0x2Cu, 7))
  {
    v0 = sub_160F34(0x2Cu);
    v1 = sub_175AE4();
    v2 = sub_160F68(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 44, v2, "AVE_DW_Init");
      v3 = sub_175AE4();
      v10 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Init");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 44, v2, "AVE_DW_Init");
    }
  }

  sub_132E68(dword_20C9B0);
  v4 = sub_1517BC(dword_20C9B0);
  if (sub_160EF0(0x2Cu, 7))
  {
    v5 = sub_160F34(0x2Cu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Init", v4);
      v8 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Init", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Init", v4);
    }
  }

  return v4;
}

uint64_t sub_151B10()
{
  if (sub_160EF0(0x2Cu, 7))
  {
    v0 = sub_160F34(0x2Cu);
    v1 = sub_175AE4();
    v2 = sub_160F68(7);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 44, v2, "AVE_DW_Uninit");
      v3 = sub_175AE4();
      v10 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 44, v10, "AVE_DW_Uninit");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 44, v2, "AVE_DW_Uninit");
    }
  }

  v4 = sub_132F88();
  if (sub_160EF0(0x2Cu, 7))
  {
    v5 = sub_160F34(0x2Cu);
    v6 = sub_175AE4();
    v7 = sub_160F68(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v6, 44, v7, "AVE_DW_Uninit", v4);
      v8 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v8, 44, v11, "AVE_DW_Uninit", v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v6, 44, v7, "AVE_DW_Uninit", v4);
    }
  }

  return v4;
}

uint64_t sub_151C84(__CVBuffer *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, _DWORD *a8, int a9)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  v16 = sub_14FFD4(a3);
  v17 = v16;
  v50 = v16;
  if (a4 == 2 && v16 < 12 || !a8[1] && !a8[3])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (a9 != -1)
  {
    v18 = a9 + 3;
    goto LABEL_19;
  }

  if (!a5)
  {
    v18 = 2;
    goto LABEL_19;
  }

  v18 = 1;
  if (a6 != 2 || a7)
  {
LABEL_19:
    CVPixelBufferGetExtendedPixels(a1, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    v28 = a2[6];
    if (v28)
    {
      v20 = 0;
      v29 = 1;
      if (v28 != 1 || !extraRowsOnBottom)
      {
LABEL_26:
        if (v17 < 12)
        {
          if (v17 < 4)
          {
            v21 = 0;
          }

          else
          {
            if (a8[1] == 8u >> (a2[4] >> 1))
            {
              v39 = 3328;
            }

            else
            {
              v39 = 0;
            }

            if (a8[3] == 8u >> (a2[5] >> 1))
            {
              v21 = v39 | 0x50000;
            }

            else
            {
              v21 = v39;
            }
          }
        }

        else
        {
          v32 = a8[1];
          v33 = a2[4] >> 1;
          if (v32 > (0xEu >> v33) || v32 < (2u >> v33))
          {
            v35 = 0;
          }

          else
          {
            v35 = 3328;
          }

          v36 = a8[3];
          v37 = a2[5] >> 1;
          if (v36 > (0xEu >> v37) || v36 < (2u >> v37))
          {
            v21 = v35;
          }

          else
          {
            v21 = v35 | 0x50000;
          }
        }

        v40 = 0;
        if (v18 <= 4)
        {
          if ((v18 - 1) >= 2)
          {
            if (v18)
            {
              if (v18 == 4)
              {
                v40 = v21 & 0xFF00;
              }

              goto LABEL_66;
            }

            if ((v21 & 0x70000) == 0)
            {
              if (v29)
              {
                v41 = 0;
              }

              else
              {
                v41 = v20;
              }

              v40 = v21 & 0xFF00 | v41;
              goto LABEL_66;
            }
          }

          goto LABEL_58;
        }

        switch(v18)
        {
          case 5:
            v40 = v21 & 0x70000;
            break;
          case 6:
            v40 = v20 | 2;
            if (v29)
            {
              v40 = 0;
            }

            break;
          case 7:
LABEL_58:
            v40 = v21 & 0x7FF00;
            break;
        }

LABEL_66:
        v19 = v40 | ((v40 & 0x10100) != 0);
        goto LABEL_67;
      }
    }

    else if (!extraRowsOnBottom)
    {
      v20 = 0;
      v29 = 1;
      goto LABEL_26;
    }

    v30 = a8[3];
    v31 = v30 != 0;
    v29 = v30 == 0;
    v20 = v31 << 16;
    goto LABEL_26;
  }

  v22 = a4;
  v23 = a6;
  v24 = a5;
  v25 = CVBufferCopyAttachment(a1, kCVPixelBufferExtendedPixelsFilledKey, 0);
  if (!v25)
  {
LABEL_17:
    v18 = 0;
    a5 = v24;
    a6 = v23;
    a4 = v22;
    a7 = 0;
    goto LABEL_19;
  }

  v26 = v25;
  if (CFEqual(v25, kCFBooleanTrue))
  {
    v27 = v17 < 7;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    CFRelease(v26);
    goto LABEL_17;
  }

  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 16;
  a5 = v24;
  a6 = v23;
  a4 = v22;
  a7 = 0;
LABEL_67:
  if (sub_160EF0(0x11u, 7))
  {
    v49 = a4;
    v42 = a5;
    v43 = sub_160F34(0x11u);
    v47 = sub_175AE4();
    v44 = sub_160F68(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n\n", v47, 17, v44, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42, a6, a7, a9, *a8, a8[1], a8[2], a8[3], LODWORD(extraColumnsOnRight[0]), extraRowsOnBottom, v18, v20, v21, v19);
      v48 = sub_175AE4();
      v46 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", v48, 17, v46, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", v47, 17, v44, "AVE_EdgeReplication_DetermineMode", 240, v50, v49, v42);
    }
  }

  return v19;
}

uint64_t sub_152118(__CVBuffer *a1, unsigned int a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v5 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  CVPixelBufferGetHeightOfPlane(a1, a2);
  CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966296;
}

uint64_t sub_1521B0(__CVBuffer *a1, unsigned int a2, int a3, uint64_t a4)
{
  v17 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  CVPixelBufferGetExtendedPixels(a1, 0, 0, &extraRowsOnTop, &v17);
  if (a2)
  {
    if (*(a4 + 12))
    {
      v11 = *(a4 + 20) >> 1;
      v17 >>= v11;
      extraRowsOnTop >>= v11;
    }

    else
    {
      v17 = 0;
    }
  }

  v12 = &BaseAddressOfPlane[(extraRowsOnTop + HeightOfPlane - 1) * BytesPerRowOfPlane];
  v13 = &v12[BytesPerRowOfPlane];
  if (a3)
  {
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        memcpy(v13, v12, BytesPerRowOfPlane);
        v13 += BytesPerRowOfPlane;
        v12 -= BytesPerRowOfPlane;
      }
    }
  }

  else if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      memcpy(v13, v12, BytesPerRowOfPlane);
      v13 += BytesPerRowOfPlane;
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t sub_152320(__CVBuffer *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x50000) == 0x10000 && *(a3 + 8) >= 1)
  {
    v6 = 0;
    v7 = HIWORD(a2);
    do
    {
      sub_1521B0(a1, v6++, v7 & 8, a3);
    }

    while (v6 < *(a3 + 8));
  }

  if ((v4 & 0x500) == 0x100 && *(a3 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      sub_152118(a1, v8++);
    }

    while (v8 < *(a3 + 8));
  }

  return 0;
}

uint64_t sub_1523F0(const __CFArray *a1, _DWORD *a2)
{
  v56[0] = 0;
  v55 = 0;
  v54 = 0;
  Count = CFArrayGetCount(a1);
  if (a1 && a2)
  {
    v5 = 0;
    v6 = Count >> 1;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    v7 = 1;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    while (1)
    {
      v8 = v7;
      v9 = v5 * v6;
      if (!sub_14A8C4(a1, (v5 * v6), &v54))
      {
        break;
      }

      *a2 = v54;
      if (!sub_14A8C4(a1, (v9 + 1), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v38 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 94, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[1] = v54;
      if (!sub_14A8C4(a1, (v9 + 2), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v39 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 99, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[2] = v54;
      if (!sub_14A8C4(a1, (v9 + 3), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v40 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 104, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[3] = v54;
      if (!sub_14A8C4(a1, (v9 + 4), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v41 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 109, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[4] = v54;
      if (!sub_14A8C4(a1, (v9 + 5), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v42 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 114, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[5] = v54;
      if (!sub_14A8C4(a1, (v9 + 6), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v43 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 119, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[6] = v54;
      if (!sub_14A8C4(a1, (v9 + 7), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v44 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 124, "ret != 0", a1, a2, v54);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[7] = v54;
      if (!sub_14AB6C(a1, (v9 + 8), &v55))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v45 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 129, "ret != 0", a1, a2, v55);
          v36 = sub_175AE4();
          v37 = sub_160F68(4);
        }

        goto LABEL_81;
      }

      a2[8] = v55;
      if (!sub_14A8C4(a1, (v9 + 9), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v46 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (!v46)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 134, "ret != 0", a1, a2, v54);
LABEL_80:
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        goto LABEL_81;
      }

      a2[9] = v54;
      if (!sub_14A8C4(a1, (v9 + 10), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v47 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (!v47)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 139, "ret != 0", a1, a2, v54);
        goto LABEL_80;
      }

      a2[10] = v54;
      if (!sub_14A8C4(a1, (v9 + 11), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v48 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (!v48)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 144, "ret != 0", a1, a2, v54);
        goto LABEL_80;
      }

      a2[11] = v54;
      if (!sub_14A8C4(a1, (v9 + 12), &v54))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v49 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (!v49)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 149, "ret != 0", a1, a2, v54);
        goto LABEL_80;
      }

      a2[12] = v54;
      if (!sub_14AE14(a1, (v9 + 13), v56))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v50 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (!v50)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 154, "ret != 0", a1, a2, v56[0]);
        goto LABEL_80;
      }

      a2[13] = v56[0];
      if (!sub_14AE14(a1, (v9 + 14), v56))
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v51 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (!v51)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 159, "ret != 0", a1, a2, v56[0]);
        goto LABEL_80;
      }

      a2[14] = v56[0];
      v10 = sub_14AE14(a1, (v9 + 15), v56);
      if (!v10)
      {
        if (!sub_160EF0(0x10u, 4))
        {
          return 0;
        }

        v52 = sub_160F34(0x10u);
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 164, "ret != 0", a1, a2, v56[0]);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      v11 = v10;
      a2[15] = v56[0];
      if (sub_160EF0(0x10u, 7))
      {
        v12 = sub_160F34(0x10u);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        v15 = *a2;
        v16 = a2[1];
        v17 = a2[2];
        v18 = a2[3];
        v19 = a2[4];
        v20 = a2[5];
        v21 = a2[6];
        v22 = a2[7];
        v23 = a2[8];
        v24 = a2[9];
        v25 = a2[10];
        v26 = a2[11];
        v27 = a2[12];
        v28 = a2[13];
        v29 = a2[15];
        if (v12)
        {
          printf("%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v29);
          v30 = sub_175AE4();
          v31 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v30, 16, v31, v5, *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v29);
        }
      }

      v7 = 0;
      a2 += 16;
      v5 = 1;
      if ((v8 & 1) == 0)
      {
        return v11;
      }
    }

    if (!sub_160EF0(0x10u, 4))
    {
      return 0;
    }

    v35 = sub_160F34(0x10u);
    v36 = sub_175AE4();
    v37 = sub_160F68(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v36, 16, v37, "AVE_MCTF_Retrieve", 89, "ret != 0", a1, a2, v54);
      goto LABEL_80;
    }

LABEL_81:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v36, 16, v37);
    return 0;
  }

  else
  {
    if (sub_160EF0(0x10u, 4))
    {
      v32 = sub_160F34(0x10u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v33, 16, v34, "AVE_MCTF_Retrieve", 81, "pArray != __null && pMCTF != __null", a1, a2);
        v33 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v33, 16);
    }

    return 4294966295;
  }
}

uint64_t sub_152F70(char *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = sub_149BB4(*(v5 - 32), a2);
      v9 = sub_149BB4(*(v5 - 28), a2);
      v10 = sub_149BB4(*(v5 - 24), a2);
      v11 = sub_149BB4(*(v5 - 20), a2);
      v12 = sub_149BB4(*(v5 - 16), a2);
      v13 = sub_149BB4(*(v5 - 12), a2);
      v53 = sub_149BB4(*(v5 - 8), a2);
      v52 = sub_149BB4(*(v5 - 4), a2);
      v51 = sub_149DD8(*v5, a2);
      v50 = sub_149BB4(v5[4], a2);
      v49 = sub_149BB4(v5[8], a2);
      v48 = sub_149BB4(v5[12], a2);
      v47 = sub_149BB4(v5[16], a2);
      v46 = sub_149FFC(*(v5 + 5), a2);
      v45 = sub_149FFC(*(v5 + 6), a2);
      v44 = sub_149FFC(*(v5 + 7), a2);
      if (sub_160EF0(0x10u, 7))
      {
        v42 = v13;
        v43 = v11;
        v14 = v12;
        v15 = v10;
        v16 = v9;
        v17 = v8;
        v18 = sub_160F34(0x10u);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        v21 = *(v5 - 8);
        v22 = *(v5 - 7);
        v23 = *(v5 - 6);
        v24 = *(v5 - 5);
        v25 = *(v5 - 4);
        v26 = *(v5 - 3);
        v27 = *(v5 - 2);
        v28 = *(v5 - 1);
        v29 = *v5;
        v30 = *(v5 + 1);
        v31 = *(v5 + 2);
        v32 = *(v5 + 3);
        v33 = *(v5 + 4);
        v34 = *(v5 + 5);
        v35 = *(v5 + 7);
        if (v18)
        {
          printf("%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v19, 16, v20, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v35);
          v36 = sub_175AE4();
          v37 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v36, 16, v37, v4, *(v5 - 8), *(v5 - 7), *(v5 - 6), *(v5 - 5), *(v5 - 4), *(v5 - 3), *(v5 - 2), *(v5 - 1), *v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v19, 16, v20, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v35);
        }

        v8 = v17;
        v9 = v16;
        v10 = v15;
        v12 = v14;
        v13 = v42;
        v11 = v43;
      }

      v6 = 0;
      v5 += 64;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    return (v9 + v8 + v10 + v11 + v12 + v13 + v53 + v52 + v51 + v50 + v49 + v48 + v47 + v46 + v45 + v44);
  }

  else
  {
    if (sub_160EF0(0x10u, 4))
    {
      v39 = sub_160F34(0x10u);
      v40 = sub_175AE4();
      v41 = sub_160F68(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v40, 16, v41, "AVE_MCTF_Make", 196, "pMCTF != __null && pArray != __null", a1, a2);
        v40 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v40, 16);
    }

    return 4294966295;
  }
}

uint64_t sub_1533F0(_DWORD *a1, int a2, unsigned int a3, uint64_t a4, char a5, int a6, int a7, uint64_t a8)
{
  v8 = a2;
  LODWORD(v10) = 2 * a2 / 3;
  v11 = 2 * a2 % 3;
  if ((a5 & 1) == 0)
  {
    if (a3 < 1)
    {
      return 0;
    }

    v27 = 0;
    v28 = a7 * a3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v29 = a6;
    v30 = a1;
    v31 = a3;
    while (1)
    {
      v32 = a8 + v27 * a7;
      if (v8 < 2)
      {
        v42 = 0;
        v35 = 0;
        v34 = 0;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        LODWORD(v35) = 0;
        do
        {
          v36 = v30[v33];
          v37 = v36 & 0x3FF;
          if (v33)
          {
            v41 = v34 + v28;
            *(v32 + 2 * v41) = v37;
            v39 = 2;
            v40 = 1;
            v38 = v35;
          }

          else
          {
            *(v32 + 2 * v35) = v37;
            v38 = v34 + v28;
            v39 = 1;
            v40 = 2;
            v41 = v35;
          }

          *(v32 + 2 * v38) = (v36 >> 10) & 0x3FF;
          *(v32 + 2 + 2 * v41) = (v36 >> 20) & 0x3FF;
          v35 = (v35 + v40);
          v34 += v39;
          ++v33;
        }

        while (v10 != v33);
        v42 = v10;
        if (!v11)
        {
          goto LABEL_36;
        }
      }

      v43 = *(&a1[v42] + v27 * v29);
      v44 = v43 & 0x3FF;
      if (v42)
      {
        *(v32 + 2 * (v34 + v28)) = v44;
        if (v11 == 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *(v32 + 2 * v35) = v44;
        if (v11 == 2)
        {
          v35 = v34 + v28;
LABEL_35:
          *(v32 + 2 * v35) = (v43 >> 10) & 0x3FF;
        }
      }

LABEL_36:
      ++v27;
      v30 = (v30 + v29);
      if (v27 == v31)
      {
        return 0;
      }
    }
  }

  if (a3 >= 1)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v47 = 2 * (2 * a2 % 3 - 1);
    v14 = a6;
    v15 = a7;
    v16 = (a8 + 4);
    v17 = a1;
    v18 = a3;
    do
    {
      if (v8 < 2)
      {
        v23 = 0;
        if (v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v19 = v13;
        v20 = v17;
        v21 = v16;
        do
        {
          v22 = *v20++;
          *(v21 - 2) = v22 & 0x3FF;
          *(v21 - 1) = (v22 >> 10) & 0x3FF;
          *v21 = (v22 >> 20) & 0x3FF;
          v21 += 3;
          --v19;
        }

        while (v19);
        v23 = v13;
        if (v11)
        {
LABEL_13:
          v24 = *(&a1[v23] + v12 * v14);
          __src[0] = v24 & 0x3FF;
          __src[1] = (v24 >> 10) & 0x3FF;
          __src[2] = (v24 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            v25 = a8;
            v26 = v15;
            memcpy((a8 + 6 * v23 + v12 * a7), __src, v47 + 2);
            v15 = v26;
            a8 = v25;
            v8 = a2;
          }
        }
      }

      ++v12;
      v16 = (v16 + v15);
      v17 = (v17 + v14);
    }

    while (v12 != v18);
  }

  return 0;
}

uint64_t sub_15368C(unsigned int *a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a2 / 3);
    v11 = a2 % 3;
    v23 = 2 * (a2 % 3 - 1);
    v12 = a5;
    v13 = a3;
    v14 = (a7 + 4);
    v15 = a1;
    do
    {
      if (a2 < 3)
      {
        v20 = 0;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v16 = v10;
        v17 = v15;
        v18 = v14;
        do
        {
          v19 = *v17++;
          *(v18 - 2) = v19 & 0x3FF;
          *(v18 - 1) = (v19 >> 10) & 0x3FF;
          *v18 = (v19 >> 20) & 0x3FF;
          v18 += 3;
          --v16;
        }

        while (v16);
        v20 = v10;
        if (v11)
        {
LABEL_9:
          v21 = *(&a1[v20] + v9 * v12);
          __src[0] = v21 & 0x3FF;
          __src[1] = (v21 >> 10) & 0x3FF;
          __src[2] = (v21 >> 20) & 0x3FF;
          if (v11 >= 1)
          {
            memcpy((a7 + 6 * v20 + v9 * a6), __src, v23 + 2);
          }
        }
      }

      ++v9;
      v14 = (v14 + a6);
      v15 = (v15 + v12);
    }

    while (v9 != v13);
  }

  return 0;
}

uint64_t sub_1537E0(unsigned int *a1, int a2, unsigned int a3, uint64_t a4, int a5, char a6, int a7, int a8, uint64_t a9)
{
  if (a5)
  {
    sub_1533F0(a1, a2, a3, a4, a6, a7, a8, a9);
  }

  else
  {
    sub_15368C(a1, a2, a3, a4, a7, a8, a9);
  }

  return 0;
}

double sub_153828(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t sub_153840(void *a1)
{
  if (sub_160EF0(0x49u, 6))
  {
    v2 = sub_160F34(0x49u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 73, v4, "AVE_FPS", "Uninit", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v5 = a1[2];
  if (v5)
  {
    free(v5);
    a1[2] = 0;
  }

  *(a1 + 2) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  a1[9] = 0;
  if (sub_160EF0(0x49u, 6))
  {
    v6 = sub_160F34(0x49u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 73, v8, "AVE_FPS", "Uninit", a1, *a1, 0);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 73);
  }

  return 0;
}

uint64_t sub_153A60(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (sub_160EF0(0x49u, 6))
  {
    v10 = sub_160F34(0x49u);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", v11, 73, v12, "AVE_FPS", "Init", a1, a2, a3, a4, a5);
      v13 = sub_175AE4();
      v31 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 73, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v11, 73, v12);
    }
  }

  if (a3 - 1 > 0x1869E || (a4 & 0x80000000) != 0)
  {
    if (sub_160EF0(0x49u, 4))
    {
      v17 = sub_160F34(0x49u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d\n", v18, 73, v19, "AVE_FPS", "Init", 60, "0 < fps && fps < 100000 && num >= 0", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v32 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v20, 73, v32, "AVE_FPS", "Init");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v18, 73, v19, "AVE_FPS", "Init");
      }
    }

    v16 = 4294966295;
  }

  else
  {
    v14 = 2 * a3;
    if (a4)
    {
      v14 = a4;
    }

    if (v14 <= 2)
    {
      a4 = 2;
    }

    else
    {
      a4 = v14;
    }

    v15 = malloc_type_malloc(16 * a4, 0x1000040D9A13B51uLL);
    a1[2] = v15;
    if (v15)
    {
      v16 = 0;
      *a1 = a2;
      *(a1 + 2) = a4;
      *(a1 + 10) = a5;
      *(a1 + 6) = a3;
      *(a1 + 7) = a3;
      *(a1 + 8) = a3;
      *(a1 + 9) = a3;
    }

    else
    {
      if (sub_160EF0(0x49u, 4))
      {
        v21 = sub_160F34(0x49u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d\n", v22, 73, v23, "AVE_FPS", "Init", 71, "m_psTime != __null", a1, a2, a3, a4, a5);
          v24 = sub_175AE4();
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d", v24, 73, v33, "AVE_FPS", "Init");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate memory of timestamp %p %lld %d %d %d", v22, 73, v23, "AVE_FPS", "Init");
        }
      }

      v16 = 4294966293;
    }
  }

  if (sub_160EF0(0x49u, 6))
  {
    v25 = sub_160F34(0x49u);
    v26 = sub_175AE4();
    v27 = sub_160F68(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v26, 73, v27, "AVE_FPS", "Init", a1, a2, a3, a4, a5, v16);
      v28 = sub_175AE4();
      v29 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v28, 73, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v26, 73, v27);
    }
  }

  return v16;
}

uint64_t sub_153F28(void *a1, unsigned int a2, unsigned int a3, int a4)
{
  if (sub_160EF0(0x49u, 6))
  {
    v8 = sub_160F34(0x49u);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", v9, 73, v10, "AVE_FPS", "Update", a1, *a1, a2, a3, a4);
      v11 = sub_175AE4();
      v33 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v11, 73, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v9, 73, v10);
    }
  }

  if (a2 - 1 > 0x1869E || (a3 & 0x80000000) != 0)
  {
    if (sub_160EF0(0x49u, 4))
    {
      v17 = sub_160F34(0x49u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d\n", v18, 73, v19, "AVE_FPS", "Update", 141, "0 < fps && fps < 100000 && num >= 0", a1, *a1, a2, a3, a4);
        v20 = sub_175AE4();
        v35 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v20, 73, v35, "AVE_FPS", "Update");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %d", v18, 73, v19, "AVE_FPS", "Update");
      }
    }

    v21 = 4294966295;
  }

  else
  {
    v12 = 2 * a2;
    if (a3)
    {
      v12 = a3;
    }

    if (v12 <= 2)
    {
      a3 = 2;
    }

    else
    {
      a3 = v12;
    }

    if (a3 > *(a1 + 2))
    {
      if (sub_160EF0(0x49u, 6))
      {
        v13 = sub_160F34(0x49u);
        v14 = sub_175AE4();
        v15 = sub_160F68(6);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d\n", v14, 73, v15, "AVE_FPS", "Update", 157, a1, *a1, a2, a3, *(a1 + 2));
          v16 = sub_175AE4();
          v34 = sub_160F68(6);
          syslog(3, "%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d", v16, 73, v34, "AVE_FPS");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d allocate bigger memory of timestamp %p %lld %d %d <- %d", v14, 73, v15, "AVE_FPS");
        }
      }

      *(a1 + 11) = 0;
      v22 = a1[2];
      v23 = malloc_type_malloc(16 * a3, 0x1000040D9A13B51uLL);
      a1[2] = v23;
      if (v23)
      {
        *(a1 + 2) = a3;
        free(v22);
      }

      else
      {
        a1[2] = v22;
        if (sub_160EF0(0x49u, 5))
        {
          v24 = sub_160F34(0x49u);
          v25 = sub_175AE4();
          v26 = sub_160F68(5);
          if (v24)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d\n", v25, 73, v26, "AVE_FPS", "Update", 170, a1, *a1, a3);
            v27 = sub_175AE4();
            v36 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d", v27, 73, v36);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to allocate memory of timestamp %p %lld %d", v25, 73, v26);
          }
        }
      }
    }

    v21 = 0;
    *(a1 + 10) = a4;
    *(a1 + 6) = a2;
    *(a1 + 7) = a2;
    *(a1 + 8) = a2;
    *(a1 + 9) = a2;
  }

  if (sub_160EF0(0x49u, 6))
  {
    v28 = sub_160F34(0x49u);
    v29 = sub_175AE4();
    v30 = sub_160F68(6);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v29, 73, v30, "AVE_FPS", "Update", a1, *a1, a2, a3, v21);
      v31 = sub_175AE4();
      v37 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v31, 73, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v29, 73, v30);
    }
  }

  return v21;
}

uint64_t sub_1544C0(void *a1)
{
  if (sub_160EF0(0x49u, 6))
  {
    v2 = sub_160F34(0x49u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 73, v4, "AVE_FPS", "Reset", a1, *a1);
      v3 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  *(a1 + 11) = 0;
  if (sub_160EF0(0x49u, 6))
  {
    v5 = sub_160F34(0x49u);
    v6 = sub_175AE4();
    v7 = sub_160F68(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 73, v7, "AVE_FPS", "Reset", a1, *a1, 0);
      v6 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 73);
  }

  return 0;
}

double sub_154690(uint64_t *a1, void *a2, int a3)
{
  v6 = *(a1 + 2);
  v7 = *(a2 + 2);
  v8 = *a2;
  if (v6 == v7)
  {
    v9 = (v8 - *a1);
    v10 = a3;
    v11 = v6;
  }

  else
  {
    v11 = v6;
    v9 = v8 * v6 - *a1 * v7;
    v10 = a3 * v7;
  }

  v12 = v10 * v11;
  v13 = -1.0;
  if (v9 > 0.0)
  {
    v14 = v12 / v9;
    if (v12 / v9 <= 0.0 || v14 >= 100000.0)
    {
      if (sub_160EF0(0x49u, 5))
      {
        v15 = sub_160F34(0x49u);
        v16 = sub_175AE4();
        v17 = sub_160F68(5);
        v18 = *a1;
        v19 = *(a1 + 2);
        v20 = (v9 - v9) * 1000.0;
        if (v20 >= 0)
        {
          v21 = v20;
        }

        else
        {
          v21 = -v20;
        }

        v22 = (v14 - v14) * 1000.0;
        if (v22 >= 0)
        {
          v23 = v22;
        }

        else
        {
          v23 = -v22;
        }

        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld \n", v16, 73, v17, "AVE_FPS", "Calc", 250, v18, v19, *a2, *(a2 + 2), a3, v9, v21, v14, v23);
          v24 = sub_175AE4();
          v25 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld ", v24, 73, v25, "AVE_FPS", "Calc", 250, *a1, *(a1 + 2));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %lld %d - %lld %d %d | %lld.%03lld %lld.%03lld ", v16, 73, v17, "AVE_FPS", "Calc", 250, v18, v19);
        }
      }
    }

    else
    {
      return v12 / v9;
    }
  }

  return v13;
}

uint64_t sub_1548DC(unsigned int *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = a1[11];
    if (v3 < 2)
    {
      return 0;
    }

    v4 = a1[2];
    v5 = ((v3 - 2) % v4);
    v6 = ((v3 - 1) % v4);
    v7 = sub_154690((v2 + 16 * v5), (v2 + 16 * v6), 1);
    v8 = v7;
    if (v7 >= 0.0)
    {
      *(a1 + 6) = v7;
      v9 = 7;
    }

    else
    {
      v9 = 5;
    }

    result = sub_160EF0(0x49u, v9);
    if (result)
    {
      v15 = sub_160F34(0x49u);
      v16 = sub_175AE4();
      v17 = sub_160F68(v9);
      v18 = *a1;
      v19 = a1[11];
      v20 = a1[2];
      v21 = *(a1 + 2);
      v22 = (v21 + 16 * v5);
      v23 = *v22;
      v24 = *(v22 + 2);
      v25 = (v21 + 16 * v6);
      v26 = *v25;
      v27 = *(v25 + 2);
      v28 = *(a1 + 6);
      v29 = ((v28 - v28) * 1000.0);
      if (v29 < 0)
      {
        v29 = -v29;
      }

      v30 = ((v8 - v8) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((v8 - v8) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d\n", v16, 73, v17, "AVE_FPS", "CalcRt", 301, a1, v18, v19, v20, v5, v23, v24, v6, v26, v27, v28, v29, v8, v31);
        v32 = sub_175AE4();
        v33 = sub_160F68(v9);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d", v32, 73, v33, "AVE_FPS", "CalcRt", 301, a1, *a1, a1[11], a1[2]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d | %d %lld %d - %d %lld %d | %d.%03d  %d.%03d", v16, 73, v17, "AVE_FPS", "CalcRt", 301, a1, v18, v19, v20);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v10 = sub_160F34(0x49u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v11, 73, v12, "AVE_FPS", "CalcRt", 276, "m_psTime != __null", a1, *a1);
        v13 = sub_175AE4();
        v34 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v13, 73, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v11, 73, v12);
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_154C40(unsigned int *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = a1[11];
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = a1[10];
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    v8 = v4 - v7;
    v9 = a1[2];
    v10 = (v4 % v9);
    v11 = v7 % v9;
    v12 = sub_154690((v2 + 16 * (v7 % v9)), (v2 + 16 * v10), v4 - v7);
    v13 = v12;
    if (v12 <= 0.0)
    {
      v14 = 5;
    }

    else
    {
      *(a1 + 7) = v12;
      v14 = 7;
    }

    result = sub_160EF0(0x49u, v14);
    if (result)
    {
      v20 = v11;
      v21 = sub_160F34(0x49u);
      v22 = sub_175AE4();
      v23 = sub_160F68(v14);
      v24 = *a1;
      v25 = a1[2];
      v26 = a1[11];
      v27 = *(a1 + 2);
      v28 = (v27 + 16 * v20);
      v29 = *v28;
      v30 = *(v28 + 2);
      v31 = (v27 + 16 * v10);
      v32 = *v31;
      v33 = *(v31 + 2);
      v34 = *(a1 + 8);
      v35 = ((v34 - v34) * 1000.0);
      if (v35 < 0)
      {
        v35 = -v35;
      }

      v36 = ((v13 - v13) * 1000.0);
      if (v36 >= 0)
      {
        v37 = ((v13 - v13) * 1000.0);
      }

      else
      {
        v37 = -v36;
      }

      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", v22, 73, v23, "AVE_FPS", "CalcSlide", 355, a1, v24, v25, v26, v8, v20, v29, v30, v10, v32, v33, v34, v35, v13, v37);
        v38 = sub_175AE4();
        v39 = sub_160F68(v14);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v38, 73, v39, "AVE_FPS", "CalcSlide", 355, a1, *a1, a1[2], a1[11]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v22, 73, v23, "AVE_FPS", "CalcSlide", 355, a1, v24, v25, v26);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v15 = sub_160F34(0x49u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v16, 73, v17, "AVE_FPS", "CalcSlide", 326, "m_psTime != __null", a1, *a1);
        v18 = sub_175AE4();
        v40 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v18, 73, v40);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v16, 73, v17);
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_154FD0(unsigned int *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = a1[11];
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = a1[2];
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    v8 = v4 - v7;
    v9 = (v4 % v5);
    v10 = v7 % v5;
    v11 = sub_154690((v2 + 16 * (v7 % v5)), (v2 + 16 * v9), v4 - v7);
    v12 = v11;
    if (v11 <= 0.0)
    {
      v13 = 5;
    }

    else
    {
      *(a1 + 8) = v11;
      v13 = 7;
    }

    result = sub_160EF0(0x49u, v13);
    if (result)
    {
      v19 = v10;
      v20 = sub_160F34(0x49u);
      v21 = sub_175AE4();
      v22 = sub_160F68(v13);
      v23 = *a1;
      v24 = a1[2];
      v25 = a1[11];
      v26 = *(a1 + 2);
      v27 = (v26 + 16 * v19);
      v28 = *v27;
      v29 = *(v27 + 2);
      v30 = (v26 + 16 * v9);
      v31 = *v30;
      v32 = *(v30 + 2);
      v33 = *(a1 + 8);
      v34 = ((v33 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      v35 = ((v12 - v12) * 1000.0);
      if (v35 >= 0)
      {
        v36 = ((v12 - v12) * 1000.0);
      }

      else
      {
        v36 = -v35;
      }

      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", v21, 73, v22, "AVE_FPS", "CalcAvg", 408, a1, v23, v24, v25, v8, v19, v28, v29, v9, v31, v32, v33, v34, v12, v36);
        v37 = sub_175AE4();
        v38 = sub_160F68(v13);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v37, 73, v38, "AVE_FPS", "CalcAvg", 408, a1, *a1, a1[2], a1[11]);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v21, 73, v22, "AVE_FPS", "CalcAvg", 408, a1, v23, v24, v25);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v14 = sub_160F34(0x49u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v15, 73, v16, "AVE_FPS", "CalcAvg", 379, "m_psTime != __null", a1, *a1);
        v17 = sub_175AE4();
        v39 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v17, 73, v39);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v15, 73, v16);
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_15535C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 11);
    if (v3 < 2)
    {
      return 0;
    }

    v4 = v3 - 1;
    v5 = ((v3 - 1) % *(a1 + 2));
    v6 = sub_154690(a1 + 3, (v2 + 16 * v5), v3 - 1);
    v7 = v6;
    if (v6 <= 0.0)
    {
      v8 = 5;
    }

    else
    {
      *(a1 + 9) = v6;
      v8 = 7;
    }

    result = sub_160EF0(0x49u, v8);
    if (result)
    {
      v14 = sub_160F34(0x49u);
      v15 = sub_175AE4();
      v16 = sub_160F68(v8);
      v17 = *a1;
      v18 = *(a1 + 2);
      v19 = *(a1 + 11);
      v20 = a1[2] + 16 * v5;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(a1 + 9);
      v24 = ((v23 - v23) * 1000.0);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      v25 = ((v7 - v7) * 1000.0);
      if (v25 >= 0)
      {
        v26 = ((v7 - v7) * 1000.0);
      }

      else
      {
        v26 = -v25;
      }

      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d\n", v15, 73, v16, "AVE_FPS", "CalcOverall", 457, a1, v17, v18, v19, v4, 0, a1[3], *(a1 + 8), v5, v21, v22, v23, v24, v7, v26);
        v27 = sub_175AE4();
        v28 = sub_160F68(v8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v27, 73, v28, "AVE_FPS", "CalcOverall", 457, a1, *a1, *(a1 + 2), *(a1 + 11));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %d %d %d | %d %lld %d - %d %lld %d | %d.%03d %d.%03d", v15, 73, v16, "AVE_FPS", "CalcOverall", 457, a1, v17, v18, v19);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x49u, 4))
    {
      v9 = sub_160F34(0x49u);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld\n", v10, 73, v11, "AVE_FPS", "CalcOverall", 430, "m_psTime != __null", a1, *a1);
        v12 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v12, 73, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld", v10, 73, v11);
      }
    }

    return 4294966285;
  }

  return result;
}

uint64_t sub_1556B4(void *a1, int *a2)
{
  if (sub_160EF0(0x49u, 7))
  {
    v4 = sub_160F34(0x49u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", v5, 73, v6, "AVE_FPS", "Add", a1, *a1, a2);
      v5 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", v5, 73);
  }

  if (!a2 || (*a2 & 0x8000000000000000) != 0 || a2[2] < 1)
  {
    goto LABEL_42;
  }

  v7 = a1[2];
  if (v7)
  {
    *(v7 + 16 * (*(a1 + 11) % *(a1 + 2))) = *a2;
    v8 = *(a1 + 11);
    if (!v8)
    {
      *(a1 + 3) = *a2;
    }

    *(a1 + 11) = v8 + 1;
    if (sub_1548DC(a1))
    {
      if (sub_160EF0(0x49u, 4))
      {
        v9 = sub_160F34(0x49u);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate realtime FPS %p %lld %p\n", v10, 73, v11, "AVE_FPS", "Add", 502, "ret == 0", a1, *a1, a2);
          v10 = sub_175AE4();
          v11 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate realtime FPS %p %lld %p", v10, 73, v11, "AVE_FPS");
      }

      goto LABEL_42;
    }

    if (*(a1 + 10) >= 1 && sub_154C40(a1))
    {
      if (sub_160EF0(0x49u, 4))
      {
        v16 = sub_160F34(0x49u);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate sliding average FPS %p %lld %p\n", v17, 73, v18, "AVE_FPS", "Add", 508, "ret == 0", a1, *a1, a2);
          v17 = sub_175AE4();
          v18 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate sliding average FPS %p %lld %p", v17, 73, v18, "AVE_FPS");
      }

      goto LABEL_42;
    }

    if (sub_154FD0(a1))
    {
      if (!sub_160EF0(0x49u, 4))
      {
LABEL_42:
        v22 = 4294966295;
        goto LABEL_43;
      }

      v19 = sub_160F34(0x49u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p\n", v20, 73, v21, "AVE_FPS", "Add", 513, "ret == 0", a1, *a1, a2);
LABEL_37:
        v24 = sub_175AE4();
        v31 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p", v24, 73, v31, "AVE_FPS");
        goto LABEL_42;
      }
    }

    else
    {
      if (!sub_15535C(a1))
      {
        v22 = 0;
        goto LABEL_43;
      }

      if (!sub_160EF0(0x49u, 4))
      {
        goto LABEL_42;
      }

      v23 = sub_160F34(0x49u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p\n", v20, 73, v21, "AVE_FPS", "Add", 517, "ret == 0", a1, *a1, a2);
        goto LABEL_37;
      }
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to calculate average FPS %p %lld %p", v20, 73, v21, "AVE_FPS");
    goto LABEL_42;
  }

  if (sub_160EF0(0x49u, 4))
  {
    v12 = sub_160F34(0x49u);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v13, 73, v14, "AVE_FPS", "Add", 489, "m_psTime != __null", a1, *a1, a2);
      v15 = sub_175AE4();
      v30 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v15, 73, v30, "AVE_FPS");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v13, 73, v14, "AVE_FPS");
    }
  }

  v22 = 4294966285;
LABEL_43:
  if (sub_160EF0(0x49u, 7))
  {
    v25 = sub_160F34(0x49u);
    v26 = sub_175AE4();
    v27 = sub_160F68(7);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v26, 73, v27, "AVE_FPS", "Add", a1, *a1, a2, v22);
      v28 = sub_175AE4();
      v32 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v28, 73, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v26, 73, v27);
    }
  }

  return v22;
}

double sub_155D48(uint64_t a1)
{
  v1 = 64;
  if (*(a1 + 40) > 0)
  {
    v1 = 56;
  }

  return *(a1 + v1);
}

void *sub_155D6C(void *result, uint64_t a2, int *a3, int a4)
{
  if (result && a2)
  {
    if (a3)
    {
      v7 = result;
      v8 = *a3;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", result[1] - *result) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[65] - v7[2]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[3] - v7[2]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[5] - v7[3]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[30] - v7[4]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[58] - v7[31]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[26] - v7[24]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[51] - v7[25]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[62] - v7[52]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[29] - v7[27]) + v8;
      LODWORD(v8) = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[54] - v7[28]) + v8;
      result = sub_172100((a2 + v8), a4 - v8, "%lld,", v7[64] - v7[55]);
      *a3 = result + v8;
    }
  }

  return result;
}

uint64_t sub_155F78(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result && a2 && a3)
  {
    v7 = result;
    v8 = 0;
    v9 = *a3;
    do
    {
      result = sub_172100((a2 + v9), a4 - v9, "%lld,", *(v7 + v8));
      v9 = *a3 + result;
      *a3 = v9;
      v8 += 8;
    }

    while (v8 != 544);
  }

  return result;
}

uint64_t sub_15600C(char *a1, int *a2, FILE *a3, int a4, int a5)
{
  if (sub_160EF0(0x3Au, 7))
  {
    v7 = sub_160F34(0x3Au);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d\n", v8, 58, v9, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5);
      v8 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d", v8, 58);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v14 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0x3Au, 4))
    {
      v10 = sub_160F34(0x3Au);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d\n", v11, 58, v12, "AVE_FwStats_PrintAll", 181, "(psFwStats != __null) && (pEUMap != __null)", a1, a2, a3, a4, a5);
        v13 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v13, 58, v20, "AVE_FwStats_PrintAll");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v11, 58, v12, "AVE_FwStats_PrintAll");
      }
    }

    v14 = 4294966295;
  }

  if (sub_160EF0(0x3Au, 7))
  {
    v15 = sub_160F34(0x3Au);
    v16 = sub_175AE4();
    v17 = sub_160F68(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d\n", v16, 58, v17, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5, v14);
      v18 = sub_175AE4();
      v21 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v18, 58, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v16, 58, v17);
    }
  }

  return v14;
}

uint64_t sub_156920(void *a1, FILE *a2, int a3)
{
  if (sub_160EF0(0x3Au, 7))
  {
    v6 = sub_160F34(0x3Au);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", v7, 58, v8, "AVE_MCTFStats_PrintAll", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", v7);
  }

  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        fwrite("Frame#, FrameDiff, Fn_SetLrmeDiff, HW_LrmeDiff, Fn_SetLrrcDiff, HW_LrrcDiff, Fn_SetPipeDiff, HW_PipeDiff, Fn_PipeDoneDiff, FrameQIn, Fn_SetLrmeStart, HW_LrmeStart, Fn_SetLRMEDone, Fn_SetLrrcStart, HW_LrrcStart, Fn_SetLRRCDone, Fn_SetPipeStart, HW_PipeStart, Fn_SetPipeDone, HW_LrmeDone, HW_LrrcDone, HW_PipeDone, Fn_PipeDoneStart, Fn_PipeDoneEnd, LrmeStatsDone, LrrcStatsDone, PipeStatsDone, FrameOut\n", 0x191uLL, 1uLL, a2);
      }

      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (sub_160EF0(0x3Au, 4))
    {
      v9 = sub_160F34(0x3Au);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 58, v11, "AVE_MCTFStats_PrintAll", 367, "pMctfStats != __null", 0, a2, a3);
        v12 = sub_175AE4();
        v19 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 58, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 58, v11);
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x3Au, 7))
  {
    v14 = sub_160F34(0x3Au);
    v15 = sub_175AE4();
    v16 = sub_160F68(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d\n", v15, 58, v16, "AVE_MCTFStats_PrintAll", a1, a2, a3, v13);
      v17 = sub_175AE4();
      sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v15);
    }
  }

  return v13;
}

uint64_t sub_156EA0(CFDictionaryRef theDict, _OWORD *a2)
{
  v28 = 0;
  v27 = 0;
  if (!theDict || !a2)
  {
    if (sub_160EF0(0xCCu, 4))
    {
      v9 = sub_160F34(0xCCu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v10, 204, v11, "AVE_HEVC_ST_RPS_Retrieve", 28, "pDict != __null && pInfo != __null", theDict, a2);
        v10 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v10, 204);
    }

    return 4294966295;
  }

  *(a2 + 88) = 0;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (sub_14BE4C(theDict, @"InterRefPicSetPredictionFlag", &v28 + 1))
  {
    if (*a2)
    {
LABEL_5:
      sub_14C90C(theDict, @"DeltaIdxMinus1", a2 + 1);
      if (!sub_14C0FC(theDict, @"DeltaRPSSign", &v28))
      {
        *(a2 + 8) = v28 != 0;
      }

      sub_14C90C(theDict, @"AbsDeltaRPSMinus1", a2 + 3);
      if (!sub_14C65C(theDict, @"UsedByCurrPicFlag", &v27))
      {
        v4 = vdupq_n_s32(v27);
        v5.i64[0] = 0x101010101010101;
        v5.i64[1] = 0x101010101010101;
        a2[1] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v4, xmmword_190D50), vshlq_u32(v4, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v4, xmmword_190D70), vshlq_u32(v4, xmmword_190D60))), v5);
      }

      result = sub_14C65C(theDict, @"UsedDeltaFlag", &v27);
      if (!result)
      {
        v7 = vdupq_n_s32(v27);
        v8.i64[0] = 0x101010101010101;
        v8.i64[1] = 0x101010101010101;
        a2[2] = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v7, xmmword_190D50), vshlq_u32(v7, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v7, xmmword_190D70), vshlq_u32(v7, xmmword_190D60))), v8);
      }

      return result;
    }
  }

  else
  {
    v12 = HIBYTE(v28);
    *a2 = HIBYTE(v28);
    if (v12 == 1)
    {
      goto LABEL_5;
    }
  }

  sub_14C90C(theDict, @"NumNegativePics", a2 + 12);
  result = sub_14C90C(theDict, @"NumPositivePics", a2 + 13);
  if (!*(a2 + 12))
  {
LABEL_24:
    if (!*(a2 + 13))
    {
      return result;
    }

    Value = CFDictionaryGetValue(theDict, @"DeltaPOCS1Minus1");
    if (Value)
    {
      v21 = Value;
      Count = CFArrayGetCount(Value);
      if (Count < 1)
      {
LABEL_30:
        result = sub_14C65C(theDict, @"UsedByCurrPicS1Flag", &v27);
        if (!result)
        {
          v25 = vdupq_n_s32(v27);
          v26.i64[0] = 0x101010101010101;
          v26.i64[1] = 0x101010101010101;
          *(a2 + 168) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v25, xmmword_190D50), vshlq_u32(v25, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v25, xmmword_190D70), vshlq_u32(v25, xmmword_190D60))), v26);
        }
      }

      else
      {
        v23 = 0;
        v24 = Count & 0x7FFFFFFF;
        while (1)
        {
          result = sub_14AB6C(v21, v23, &v27);
          if (result)
          {
            break;
          }

          *(a2 + v23++ + 26) = v27;
          if (v24 == v23)
          {
            goto LABEL_30;
          }
        }
      }

      return result;
    }

    return 4294966288;
  }

  v13 = CFDictionaryGetValue(theDict, @"DeltaPOCS0Minus1");
  if (!v13)
  {
    return 4294966288;
  }

  v14 = v13;
  v15 = CFArrayGetCount(v13);
  if (v15 < 1)
  {
LABEL_22:
    result = sub_14C65C(theDict, @"UsedByCurrPicS0Flag", &v27);
    if (!result)
    {
      v18 = vdupq_n_s32(v27);
      v19.i64[0] = 0x101010101010101;
      v19.i64[1] = 0x101010101010101;
      *(a2 + 88) = vandq_s8(vuzp1q_s8(vuzp1q_s16(vshlq_u32(v18, xmmword_190D50), vshlq_u32(v18, xmmword_190D40)), vuzp1q_s16(vshlq_u32(v18, xmmword_190D70), vshlq_u32(v18, xmmword_190D60))), v19);
    }

    goto LABEL_24;
  }

  v16 = 0;
  v17 = v15 & 0x7FFFFFFF;
  while (1)
  {
    result = sub_14AB6C(v14, v16, &v27);
    if (result)
    {
      return result;
    }

    *(a2 + v16++ + 28) = v27;
    if (v17 == v16)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_157310(const __CFArray *a1, _OWORD *a2, unsigned int *a3)
{
  v4 = a2;
  if (a1 && a2 && a3 && *a3 > 0)
  {
    bzero(a2, 356 * *a3);
    Count = CFArrayGetCount(a1);
    if (*a3 >= Count)
    {
      v7 = Count;
    }

    else
    {
      v7 = *a3;
    }

    *a3 = 0;
    if (v7 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        if (!ValueAtIndex)
        {
          break;
        }

        result = sub_156EA0(ValueAtIndex, v4);
        if (result)
        {
          return result;
        }

        ++*a3;
        ++v8;
        v4 = (v4 + 356);
        if (v7 == v8)
        {
          return 0;
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0xCCu, 4))
    {
      v11 = sub_160F34(0xCCu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v12, 204, v13, "AVE_HEVC_ST_RPS_RetrieveArray", 326, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", a1, v4, a3);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 204, v15);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 204, v13);
      }
    }

    return 4294966295;
  }
}

uint64_t sub_1574C0(CFDictionaryRef theDict, uint64_t a2)
{
  if (theDict && a2)
  {
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 348) = 0u;
    sub_14BE4C(theDict, @"ShortTermRefPicSetSPSFlag", a2);
    if (*a2 == 1)
    {

      return sub_14C90C(theDict, @"ShortTermRefPicSetIdx", (a2 + 4));
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"RPSData");
      if (Value)
      {

        return sub_156EA0(Value, (a2 + 8));
      }

      else
      {
        return 4294966288;
      }
    }
  }

  else
  {
    if (sub_160EF0(0xCCu, 4))
    {
      v5 = sub_160F34(0xCCu);
      v6 = sub_175AE4();
      v7 = sub_160F68(4);
      if (v5)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v6, 204, v7, "AVE_HEVC_Slice_ST_RPS_Retrieve", 492, "pDict != __null && pInfo != __null", theDict, a2);
        v6 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v6, 204);
    }

    return 4294966295;
  }
}

void sub_1579D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  sub_167D08();
  operator new[]();
}

uint64_t sub_157CD0(uint64_t a1, int *a2, __CFDictionary *a3)
{
  v5 = sub_167CD8(a1);
  if (!v5)
  {
    return 4294966296;
  }

  if ((*(v5 + 6) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = v8;
  if (Mutable)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    v17 = kIOSurfacePlaneHTPCPredictionSelector;
    sub_14B9CC(kIOSurfacePlaneHTPCPredictionSelector, 1, v7);
    sub_14B9CC(v17, 1, v9);
    if (*a2 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray, *a2, v7);
    }

    v18 = a2[2];
    if (v18 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray, v18, v7);
    }

    v19 = a2[4];
    if (v19 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray, v19, v9);
    }

    v20 = a2[6];
    if (v20 >= 1)
    {
      sub_14B9CC(kIOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray, v20, v9);
    }

    CFArrayAppendValue(Mutable, v7);
    CFArrayAppendValue(Mutable, v9);
    CFDictionarySetValue(a3, kCVPixelFormatPlanes, Mutable);
    CFRelease(v7);
    CFRelease(v9);
    CFRelease(Mutable);
    return 0;
  }

  if (sub_160EF0(0x3Fu, 4))
  {
    v12 = sub_160F34(0x3Fu);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p\n", v13, 63, v14, "AVE_PixelBuf_AppendAttr_IOSurface", 211, "pArray != __null && pDict0 != __null && pDict1 != __null", Mutable, v7, v9);
      v15 = sub_175AE4();
      v21 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v15, 63, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CF objects %p %p %p", v13, 63, v14);
    }
  }

  return 4294966293;
}

uint64_t sub_157F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9, unsigned int a10, unsigned int a11, int a12, int *a13, __CFDictionary **a14)
{
  sub_14FFD4(a1);
  if (CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      sub_1579D0(a1, a2, a3, a4, a5, a10, Mutable);
    }

    if (sub_160EF0(0x3Fu, 4))
    {
      v23 = sub_160F34(0x3Fu);
      v20 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d\n", v20, 63, v24, "AVE_PixelBuf_CreateAttrDictFromProfile", 304, "pTempArray != __null", a1, a2, a3, a4, a5, a10, 0);
        v25 = sub_175AE4();
        v29 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d", v25, 63, v29, "AVE_PixelBuf_CreateAttrDictFromProfile");
        return 4294966293;
      }

      v37 = a5;
      v38 = a10;
      v35 = a3;
      v36 = a4;
      v33 = a1;
      v34 = a2;
      v31 = 304;
      v32 = "pTempArray != __null";
      v30 = v24;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d %d";
LABEL_12:
      syslog(3, v26, v20, 63, v30, "AVE_PixelBuf_CreateAttrDictFromProfile", v31, v32, v33, v34, v35, v36, v37, v38, 0);
    }
  }

  else if (sub_160EF0(0x3Fu, 4))
  {
    v19 = sub_160F34(0x3Fu);
    v20 = sub_175AE4();
    v21 = sub_160F68(4);
    if (!v19)
    {
      v37 = a5;
      v38 = a10;
      v35 = a3;
      v36 = a4;
      v33 = a1;
      v34 = a2;
      v31 = 298;
      v32 = "pDict != __null";
      v30 = v21;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d\n", v20, 63, v21, "AVE_PixelBuf_CreateAttrDictFromProfile", 298, "pDict != __null", a1, a2, a3, a4, a5, a10, 0);
    v22 = sub_175AE4();
    v28 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d %d", v22, 63, v28, "AVE_PixelBuf_CreateAttrDictFromProfile");
  }

  return 4294966293;
}

uint64_t sub_158978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned int a9, int a10, int *a11, __CFDictionary **a12)
{
  sub_14FFD4(a1);
  if (CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks))
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      sub_1576BC(a1, a2, a3, a4, a9, Mutable);
    }

    if (sub_160EF0(0x3Fu, 4))
    {
      v21 = sub_160F34(0x3Fu);
      v18 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d\n", v18, 63, v22, "AVE_PixelBuf_CreateAttrDict", 435, "pTempArray != __null", a1, a2, a3, a4, a9, 0);
        v23 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d", v23, 63, v27);
        return 4294966293;
      }

      v35 = a9;
      v33 = a3;
      v34 = a4;
      v31 = a1;
      v32 = a2;
      v29 = 435;
      v30 = "pTempArray != __null";
      v28 = v22;
      v24 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d 0x%x %d %d %d";
LABEL_12:
      syslog(3, v24, v18, 63, v28, "AVE_PixelBuf_CreateAttrDict", v29, v30, v31, v32, v33, v34, v35, 0);
    }
  }

  else if (sub_160EF0(0x3Fu, 4))
  {
    v17 = sub_160F34(0x3Fu);
    v18 = sub_175AE4();
    v19 = sub_160F68(4);
    if (!v17)
    {
      v35 = a9;
      v33 = a3;
      v34 = a4;
      v31 = a1;
      v32 = a2;
      v29 = 429;
      v30 = "pDict != __null";
      v28 = v19;
      v24 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d";
      goto LABEL_12;
    }

    printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d\n", v18, 63, v19, "AVE_PixelBuf_CreateAttrDict", 429, "pDict != __null", a1, a2, a3, a4, a9, 0);
    v20 = sub_175AE4();
    v26 = sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d 0x%x %d %d %d", v20, 63, v26);
  }

  return 4294966293;
}

uint64_t sub_159334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, signed int a7, signed int a8, unsigned int a9, CVPixelBufferPoolRef *poolOut)
{
  pixelBufferAttributes = 0;
  memset(v35, 0, sizeof(v35));
  v32 = a8;
  v33 = a7;
  sub_14E498(a1, a2, a4, &v33, &v32);
  v18 = sub_158978(a1, a2, a3, a4, a5, a6, v33, v32, a9, 1, v35, &pixelBufferAttributes);
  if (v18)
  {
    v19 = v18;
    if (sub_160EF0(0x3Fu, 4))
    {
      v20 = sub_160F34(0x3Fu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d\n", v21, 63, v22, "AVE_PixelBuf_CreatePool", 557, "ret == 0", a1, a2, a3, a4, a7, a8, a9, v19);
        v23 = sub_175AE4();
        v30 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v23, 63, v30, "AVE_PixelBuf_CreatePool");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attributes %d %d 0x%x %d %dx%d %d %d", v21, 63, v22, "AVE_PixelBuf_CreatePool");
      }
    }
  }

  else
  {
    v24 = pixelBufferAttributes;
    v19 = CVPixelBufferPoolCreate(0, 0, pixelBufferAttributes, poolOut);
    if (!v19)
    {
      goto LABEL_15;
    }

    if (!sub_160EF0(0x3Fu, 4))
    {
      v19 = 4294966296;
      goto LABEL_15;
    }

    v25 = sub_160F34(0x3Fu);
    v26 = sub_175AE4();
    v27 = sub_160F68(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d\n", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562, "res == kCVReturnSuccess", a1, a2, a3, a4, a7, a8, a9, v19, 0);
      v28 = sub_175AE4();
      v31 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v28, 63, v31, "AVE_PixelBuf_CreatePool", 562);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d 0x%x %d %dx%d %d %d %d", v26, 63, v27, "AVE_PixelBuf_CreatePool", 562);
    }

    v19 = 4294966296;
  }

  v24 = pixelBufferAttributes;
LABEL_15:
  if (v24)
  {
    CFRelease(v24);
  }

  return v19;
}

uint64_t sub_159678(CVPixelBufferPoolRef *a1, CVPixelBufferPoolRef *a2, CVPixelBufferPoolRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = sub_14B9CC(kCVPixelBufferPoolMinimumBufferCountKey, a2, Mutable);
    if (v8)
    {
      v9 = v8;
      if (sub_160EF0(0x3Fu, 4))
      {
        v10 = sub_160F34(0x3Fu);
        v11 = sub_175AE4();
        v12 = sub_160F68(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d\n", v11, 63, v12, "AVE_PixelBuf_CreateSurfacePool", 603, "ret == 0", a2, a1, a2, a3, v9);
          v13 = sub_175AE4();
          v76 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v13, 63, v76, "AVE_PixelBuf_CreateSurfacePool");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append BufferPoolMinimumBufferCountKey %d, %d %d %p %d", v11, 63, v12, "AVE_PixelBuf_CreateSurfacePool");
        }
      }

LABEL_39:
      v48 = v7;
LABEL_56:
      CFRelease(v48);
      return v9;
    }

    v18 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!v18)
    {
      if (sub_160EF0(0x3Fu, 4))
      {
        v28 = sub_160F34(0x3Fu);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        if (v28)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v29, 63, v30, "AVE_PixelBuf_CreateSurfacePool", 610, "pDictBufAttr != __null", a1, a2, a3, 0);
          v31 = sub_175AE4();
          v78 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v31, 63, v78);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v29, 63, v30);
        }
      }

      v9 = 4294966293;
      goto LABEL_39;
    }

    v19 = v18;
    v20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v20)
    {
      v21 = v20;
      v22 = sub_14B9CC(kIOSurfaceAllocSize, a1, v20);
      if (v22)
      {
        v9 = v22;
        if (sub_160EF0(0x3Fu, 4))
        {
          v23 = sub_160F34(0x3Fu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d\n", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool", 620, "ret == 0", a1, a1, a2, a3, v9);
            v26 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v26, 63, v27, "AVE_PixelBuf_CreateSurfacePool");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurface allocation size %d, %d %d %p %d", v24, 63, v25, "AVE_PixelBuf_CreateSurfacePool");
          }
        }

        CFRelease(v21);
        goto LABEL_55;
      }

      CFDictionaryAddValue(v19, kCVPixelBufferIOSurfacePropertiesKey, v21);
      CFRelease(v21);
      v38 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (v38)
      {
        v39 = v38;
        v40 = 0;
        do
        {
          v41 = sub_149FFC(dword_192B60[v40], v39);
          if (v41)
          {
            v42 = 1;
          }

          else
          {
            v42 = v40 == 5;
          }

          ++v40;
        }

        while (!v42);
        v43 = v41;
        if (v41)
        {
          if (sub_160EF0(0x3Fu, 4))
          {
            v44 = sub_160F34(0x3Fu);
            v45 = sub_175AE4();
            v46 = sub_160F68(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d\n", v45, 63, v46, "AVE_PixelBuf_CreateSurfacePool", 632, "ret == 0", a1, a2, a3, v43);
              v47 = sub_175AE4();
              v80 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v47, 63, v80);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append cache mode %d %d %p %d", v45, 63, v46);
            }
          }

          CFRelease(v39);
          goto LABEL_54;
        }

        CFDictionaryAddValue(v19, kCVPixelBufferCacheModeKey, v39);
        CFRelease(v39);
        v53 = sub_14B618(kCVPixelBufferIOSurfaceWiringAssertionKey, kCFBooleanTrue != 0, v19);
        if (v53)
        {
          v54 = v53;
          if (!sub_160EF0(0x3Fu, 4))
          {
            goto LABEL_54;
          }

          v55 = sub_160F34(0x3Fu);
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
          if (!v55)
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool");
            goto LABEL_54;
          }

          v58 = a1;
          printf("%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d\n", v56, 63, v57, "AVE_PixelBuf_CreateSurfacePool", 642, "ret == 0", 1, a1, a2, a3, v54);
          v36 = sub_175AE4();
          v103 = a3;
          v106 = v54;
          v95 = v58;
          v99 = a2;
          v91 = 1;
          v85 = 642;
          v89 = "ret == 0";
          v79 = sub_160F68(4);
          v37 = "%lld %d AVE %s: %s:%d %s | fail to append IOSurfaceWiringAssertionKey %d, %d %d %p %d";
          goto LABEL_25;
        }

        v60 = sub_14B9CC(kCVPixelBufferWidthKey, 2, v19);
        v9 = sub_14B9CC(kCVPixelBufferHeightKey, 2, v19) + v60;
        if (v9)
        {
          if (!sub_160EF0(0x3Fu, 4))
          {
            goto LABEL_55;
          }

          v61 = sub_160F34(0x3Fu);
          v62 = sub_175AE4();
          v63 = sub_160F68(4);
          if (v61)
          {
            v64 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d\n", v62, 63, v63, "AVE_PixelBuf_CreateSurfacePool", 649, "ret == 0", 2, 2, a1, a2, a3, v9);
            v65 = sub_175AE4();
            v107 = a3;
            v109 = v9;
            v101 = v64;
            v104 = a2;
            v93 = 2;
            v97 = 2;
            v87 = 649;
            v82 = sub_160F68(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
LABEL_68:
            syslog(3, v66, v65, 63, v82, "AVE_PixelBuf_CreateSurfacePool", v87, "ret == 0", v93, v97, v101, v104, v107, v109);
            goto LABEL_55;
          }

          v108 = a3;
          v109 = v9;
          v102 = a1;
          v105 = a2;
          v94 = 2;
          v98 = 2;
          v88 = 649;
          v83 = v63;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append width x height %dx%d, %d %d %p %d";
        }

        else
        {
          v67 = sub_14B9CC(kCVPixelBufferPixelFormatTypeKey, 875704422, v19);
          if (!v67)
          {
            v9 = CVPixelBufferPoolCreate(0, v7, v19, a3);
            if (v9)
            {
              if (sub_160EF0(0x3Fu, 4))
              {
                v72 = sub_160F34(0x3Fu);
                v73 = sub_175AE4();
                v74 = sub_160F68(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d\n", v73, 63, v74, "AVE_PixelBuf_CreateSurfacePool", 658, "ret == kCVReturnSuccess", a1, a2, a3, v9);
                  v75 = sub_175AE4();
                  v84 = sub_160F68(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v75, 63, v84);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a pixel buffer pool %d %d %p %d", v73, 63, v74);
                }
              }

              v9 = 4294966296;
            }

            goto LABEL_55;
          }

          v9 = v67;
          if (!sub_160EF0(0x3Fu, 4))
          {
LABEL_55:
            CFRelease(v7);
            v48 = v19;
            goto LABEL_56;
          }

          v68 = sub_160F34(0x3Fu);
          v62 = sub_175AE4();
          v69 = sub_160F68(4);
          if (v68)
          {
            v70 = a1;
            printf("%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d\n", v62, 63, v69, "AVE_PixelBuf_CreateSurfacePool", 653, "ret == 0", 875704422, a1, a2, a3, v9);
            v65 = sub_175AE4();
            v104 = a3;
            v107 = v9;
            v97 = v70;
            v101 = a2;
            v93 = 875704422;
            v87 = 653;
            v82 = sub_160F68(4);
            v66 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
            goto LABEL_68;
          }

          v105 = a3;
          v108 = v9;
          v98 = a1;
          v102 = a2;
          v94 = 875704422;
          v88 = 653;
          v83 = v69;
          v71 = "%lld %d AVE %s: %s:%d %s | fail to append type %d, %d %d %p %d";
        }

        syslog(3, v71, v62, 63, v83, "AVE_PixelBuf_CreateSurfacePool", v88, "ret == 0", v94, v98, v102, v105, v108, v109);
        goto LABEL_55;
      }

      if (!sub_160EF0(0x3Fu, 4))
      {
        goto LABEL_54;
      }

      v50 = sub_160F34(0x3Fu);
      v33 = sub_175AE4();
      v51 = sub_160F68(4);
      if (v50)
      {
        v52 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d\n", v33, 63, v51, "AVE_PixelBuf_CreateSurfacePool", 629, "pTempArray != __null", a1, a2, a3, 0);
        v36 = sub_175AE4();
        v99 = a3;
        v103 = 0;
        v91 = v52;
        v95 = a2;
        v85 = 629;
        v89 = "pTempArray != __null";
        v79 = sub_160F68(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
        goto LABEL_25;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 629;
      v90 = "pTempArray != __null";
      v81 = v51;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFArray %d %d %p %d";
    }

    else
    {
      if (!sub_160EF0(0x3Fu, 4))
      {
LABEL_54:
        v9 = 4294966293;
        goto LABEL_55;
      }

      v32 = sub_160F34(0x3Fu);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        v35 = a1;
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v33, 63, v34, "AVE_PixelBuf_CreateSurfacePool", 615, "pTempDict != __null", a1, a2, a3, 0);
        v36 = sub_175AE4();
        v99 = a3;
        v103 = 0;
        v91 = v35;
        v95 = a2;
        v85 = 615;
        v89 = "pTempDict != __null";
        v79 = sub_160F68(4);
        v37 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
LABEL_25:
        syslog(3, v37, v36, 63, v79, "AVE_PixelBuf_CreateSurfacePool", v85, v89, v91, v95, v99, v103, v106);
        goto LABEL_54;
      }

      v100 = a3;
      v92 = a1;
      v96 = a2;
      v86 = 615;
      v90 = "pTempDict != __null";
      v81 = v34;
      v49 = "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d";
    }

    syslog(3, v49, v33, 63, v81, "AVE_PixelBuf_CreateSurfacePool", v86, v90, v92, v96, v100, 0);
    goto LABEL_54;
  }

  if (sub_160EF0(0x3Fu, 4))
  {
    v14 = sub_160F34(0x3Fu);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d\n", v15, 63, v16, "AVE_PixelBuf_CreateSurfacePool", 598, "pDictPoolAttr != __null", a1, a2, a3, 0);
      v17 = sub_175AE4();
      v77 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v17, 63, v77);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %d %d %p %d", v15, 63, v16);
    }
  }

  return 4294966293;
}

uint64_t sub_15A3B0(__CVBuffer *a1, __CVBuffer *a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  if (PlaneCount >= 1)
  {
    v5 = 0;
    v6 = PlaneCount & 0x7FFFFFFF;
    do
    {
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v5);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v5);
      v9 = CVPixelBufferGetBaseAddressOfPlane(a2, v5);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v5);
      v11 = CVPixelBufferGetBytesPerRowOfPlane(a2, v5);
      if (HeightOfPlane >= 1)
      {
        if (BytesPerRowOfPlane >= v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = BytesPerRowOfPlane;
        }

        v13 = v12;
        v14 = v11;
        do
        {
          memcpy(v9, BaseAddressOfPlane, v13);
          BaseAddressOfPlane += BytesPerRowOfPlane;
          v9 += v14;
          --HeightOfPlane;
        }

        while (HeightOfPlane);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return 0;
}

uint64_t sub_15A4D4(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v24 = a2[1];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v7 = extraColumnsOnRight;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v9 = extraRowsOnBottom + HeightOfPlane;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v11 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v21 = WidthOfPlane;
    v12 = v7;
    v13 = (extraColumnsOnRight >> (a2[4] >> 1)) + v11;
    v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v15 = (extraRowsOnBottom >> (a2[5] >> 1)) + v14;
    LODWORD(v17) = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v16 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
    v22 = 2 * v13;
    v7 = v12;
    WidthOfPlane = v21;
    v17 = v17;
  }

  else
  {
    v22 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
  }

  if (v9 >= 1)
  {
    v18 = (v7 + WidthOfPlane) << (v24 == 10);
    do
    {
      fwrite(BaseAddressOfPlane, 1uLL, v18, a3);
      BaseAddressOfPlane += BytesPerRowOfPlane;
      --v9;
    }

    while (v9);
  }

  if (a2[3])
  {
    v19 = v15 < 1;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    do
    {
      fwrite(v16, 1uLL, v22 << (v24 == 10), a3);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

uint64_t sub_15A6D0(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  v6 = a2[1];
  v8 = v6 + 7;
  v7 = v6 < -7;
  v9 = v6 + 14;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 >> 3;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v12 = extraColumnsOnRight + WidthOfPlane;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v14 = extraRowsOnBottom + HeightOfPlane;
  CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a2[3])
  {
    v15 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v16 = (extraColumnsOnRight >> (a2[4] >> 1)) + v15;
    v17 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    v18 = (extraRowsOnBottom >> (a2[5] >> 1)) + v17;
    CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (v12 * v10 * v14 + 2 * v10 * v16 * v18)
  {
    operator new[]();
  }

  if (sub_160EF0(0x3Fu, 4))
  {
    v19 = sub_160F34(0x3Fu);
    v20 = sub_175AE4();
    v21 = sub_160F68(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p\n", v20, 63, v21, "AVE_PixelBuf_DumpPacked", 862, "frameSize != 0", a1, a2, a3);
      v22 = sub_175AE4();
      v24 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v22, 63, v24);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | frame size can not be zero %p %p %p", v20, 63, v21);
    }
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 4294966295;
}

void sub_15A9C4(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
  CVPixelBufferGetWidthOfPlane(a1, 0);
  CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
  IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  if (a2[3])
  {
    CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane();
    IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  }

  operator new[]();
}

void sub_15AC7C(__CVBuffer *a1, _DWORD *a2, FILE *a3)
{
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  CVPixelBufferGetWidthOfPlane(a1, 0);
  CVPixelBufferGetHeightOfPlane(a1, 0);
  IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
  IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
  if (a2[3])
  {
    CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
    IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane();
    IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane();
  }

  operator new[]();
}

uint64_t sub_15AF8C(CVPixelBufferRef pixelBuffer, int a2, FILE *a3)
{
  if (pixelBuffer && a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v7 = sub_167CD8(PixelFormatType);
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 6);
      result = 4294966295;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          sub_15A9C4(pixelBuffer, v8, a3);
        }

        if (v9 == 3)
        {
          sub_15AC7C(pixelBuffer, v8, a3);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {

          return sub_15A6D0(pixelBuffer, v8, a3);
        }
      }

      else
      {
        sub_15A4D4(pixelBuffer, v8, a3);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x3Fu, 4))
      {
        v15 = sub_160F34(0x3Fu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x\n", v16, 63, v17, "AVE_PixelBuf_Dump", 1120, "pPixelFmt != __null", pixelBuffer, a2, a3, PixelFormatType);
          v18 = sub_175AE4();
          v20 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v18, 63, v20, "AVE_PixelBuf_Dump");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get pixel format details %p %d %p 0x%x", v16, 63, v17, "AVE_PixelBuf_Dump");
        }
      }

      return 4294966296;
    }
  }

  else
  {
    if (sub_160EF0(0x3Fu, 4))
    {
      v11 = sub_160F34(0x3Fu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 63, v13, "AVE_PixelBuf_Dump", 1112, "pPixelBuf != __null && pFile != __null", pixelBuffer, a2, a3);
        v14 = sub_175AE4();
        v19 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 63, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 63, v13);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_15B248(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelTransferSessionOut = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = VTPixelTransferSessionCreate(kCFAllocatorDefault, &pixelTransferSessionOut);
      if (v4)
      {
        v5 = v4;
        if (sub_160EF0(0x3Fu, 4))
        {
          v6 = sub_160F34(0x3Fu);
          v7 = sub_175AE4();
          v8 = sub_160F68(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d\n", v7, 63, v8, "AVE_PixelBuf_Transfer", 2010, "ret == noErr", v5);
            v7 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create image transfer session, ret = %d", v7);
        }
      }

      else
      {
        v5 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
        if (v5 && sub_160EF0(0x3Fu, 4))
        {
          v15 = sub_160F34(0x3Fu);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          if (v15)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d\n", v16, 63, v17, "AVE_PixelBuf_Transfer", 2014, "ret == noErr", v5);
            v16 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to transfer image, ret = %d", v16);
        }
      }

      goto LABEL_25;
    }

    if (sub_160EF0(0x3Fu, 4))
    {
      v12 = sub_160F34(0x3Fu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | pDst is NULL\n", v13, 63, v14, "AVE_PixelBuf_Transfer", 2006, "pDst != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pDst is NULL");
    }
  }

  else
  {
    if (!sub_160EF0(0x3Fu, 4))
    {
      return 4294966295;
    }

    v9 = sub_160F34(0x3Fu);
    v10 = sub_175AE4();
    v11 = sub_160F68(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | pSrc is NULL\n", v10, 63, v11, "AVE_PixelBuf_Transfer", 2004, "pSrc != __null");
      sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | pSrc is NULL");
  }

  v5 = 4294966295;
LABEL_25:
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  return v5;
}

uint64_t sub_15B5F0(int *a1, unsigned int a2, __CFArray *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  while (1)
  {
    v6 = *a1++;
    result = sub_149FFC(v6, a3);
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_15B650()
{
  if (sub_160EF0(0x23u, 6))
  {
    v0 = sub_160F34(0x23u);
    v1 = sub_175AE4();
    v2 = sub_160F68(6);
    if (v0)
    {
      printf("%lld %d AVE %s: %s Enter\n", v1, 35, v2, "AVE_UC_Verify");
      v3 = sub_175AE4();
      v18 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter", v3, 35, v18, "AVE_UC_Verify");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter", v1, 35, v2, "AVE_UC_Verify");
    }
  }

  v4 = IOServiceMatching("AppleAVE2Driver");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v7 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v8 = sub_160F34(0x23u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | can not find matched driver\n", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v11 = sub_175AE4();
        v7 = 4;
        v12 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v11, 35, v12, "AVE_UC_Verify", 26, "pService != 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver", v9, 35, v10, "AVE_UC_Verify", 26, "pService != 0");
        v7 = 4;
      }
    }

    v6 = 4294966291;
  }

  if (sub_160EF0(0x23u, v7))
  {
    v13 = sub_160F34(0x23u);
    v14 = sub_175AE4();
    v15 = sub_160F68(v7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d\n", v14, 35, v15, "AVE_UC_Verify", v6);
      v16 = sub_175AE4();
      v19 = sub_160F68(v7);
      syslog(3, "%lld %d AVE %s: %s Exit %d", v16, 35, v19, "AVE_UC_Verify", v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d", v14, 35, v15, "AVE_UC_Verify", v6);
    }
  }

  return v6;
}

uint64_t sub_15B8C4(uint32_t a1, void *a2)
{
  connect = 0;
  if (sub_160EF0(0x23u, 6))
  {
    v4 = sub_160F34(0x23u);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", v5, 35, v6, "AVE_UC_Create", a1, a2);
      v7 = sub_175AE4();
      v34 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 35, v34, "AVE_UC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v5, 35, v6, "AVE_UC_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = IOServiceMatching("AppleAVE2Driver");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      kdebug_trace();
      v11 = IOServiceOpen(v10, mach_task_self_, a1, &connect);
      v12 = sub_175B74(v11);
      kdebug_trace();
      if (v12)
      {
        if (sub_160EF0(0x23u, 4))
        {
          v13 = sub_160F34(0x23u);
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d\n", v14, 35, v15, "AVE_UC_Create", 77, "ret == 0", a1, a2, v11, v12);
            v16 = sub_175AE4();
            v35 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v16, 35, v35);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open driver %d %p 0x%x %d", v14, 35, v15);
          }
        }
      }

      else
      {
        *a2 = connect;
      }

      IOObjectRelease(v10);
      if (v12)
      {
        v28 = connect == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v12)
        {
          v17 = 4;
        }

        else
        {
          v17 = 6;
        }
      }

      else
      {
        IOServiceClose(connect);
        connect = 0;
        v17 = 4;
      }
    }

    else
    {
      v17 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v23 = sub_160F34(0x23u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p\n", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v26 = sub_175AE4();
          v17 = 4;
          v27 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v26, 35, v27, "AVE_UC_Create", 67, "pService != 0", a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | can not find matched driver %d %p", v24, 35, v25, "AVE_UC_Create", 67, "pService != 0", a1, a2);
          v17 = 4;
        }
      }

      v12 = 4294966291;
    }
  }

  else
  {
    v17 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v18 = sub_160F34(0x23u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v21 = sub_175AE4();
        v17 = 4;
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v21, 35, v22, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v19, 35, v20, "AVE_UC_Create", 61, "ppUC != __null", a1, 0);
        v17 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x23u, v17))
  {
    v29 = sub_160F34(0x23u);
    v30 = sub_175AE4();
    v31 = sub_160F68(v17);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v30, 35, v31, "AVE_UC_Create", a1, a2, v12);
      v32 = sub_175AE4();
      sub_160F68(v17);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v30);
    }
  }

  return v12;
}

uint64_t sub_15BE1C(const void *a1)
{
  if (sub_160EF0(0x23u, 6))
  {
    v2 = sub_160F34(0x23u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 35, v4, "AVE_UC_Destroy", a1);
      v5 = sub_175AE4();
      v22 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 35, v22, "AVE_UC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 35, v4, "AVE_UC_Destroy", a1);
    }
  }

  if (a1)
  {
    kdebug_trace();
    v6 = IOServiceClose(a1);
    v7 = sub_175B74(v6);
    if (v7)
    {
      v8 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v9 = sub_160F34(0x23u);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d\n", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v12 = sub_175AE4();
          v8 = 4;
          v13 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v12, 35, v13, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %p 0x%x %d", v10, 35, v11, "AVE_UC_Destroy", 129, "ret == 0", a1, v6, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      kdebug_trace();
      a1 = 0;
      v8 = 6;
    }
  }

  else
  {
    v8 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v14 = sub_160F34(0x23u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 35, v16, "AVE_UC_Destroy", 121, "pUC != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    a1 = 0;
    v7 = 4294966295;
  }

  if (sub_160EF0(0x23u, v8))
  {
    v17 = sub_160F34(0x23u);
    v18 = sub_175AE4();
    v19 = sub_160F68(v8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
      v20 = sub_175AE4();
      v23 = sub_160F68(v8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v20, 35, v23, "AVE_UC_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v18, 35, v19, "AVE_UC_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t sub_15C1CC(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 40;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Open", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 1u, a2, 0x7A0uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x\n", v13, 35, v14, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v15, 35, v16, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open client %p %p %p 0x%x", v13, 35, v14, "AVE_UC_Open", 177, "ret == 0", a1, a2, a3, v9);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x27)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Open", 181, "outSize >= sizeof(S_AVE_UCOutParam_Open)", a1, a2, a3, outputStructCnt, 40);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Open", 164, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Open", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15C704(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Close", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 2u, a2, 0x28uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Close", 225, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Close", 229, "outSize >= sizeof(S_AVE_UCOutParam_Close)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Close", 212, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Close", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15CC50(const void *a1, const void *a2, void *a3, void *a4)
{
  v38 = 0u;
  v39 = 0u;
  *reference = 0u;
  v37 = 0u;
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v8 = sub_160F34(0x23u);
    v9 = sub_175AE4();
    v10 = sub_160F68(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", v9, 35, v10, "AVE_UC_Config", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", v9, 35);
  }

  if (a1 && a2 && a3 && a4)
  {
    kdebug_trace();
    v11 = IOConnectCallAsyncMethod(a1, 3u, a2, reference, 8u, 0, 0, a3, 0x38uLL, 0, 0, a4, &outputStructCnt);
    v12 = sub_175B74(v11);
    kdebug_trace();
    if (v12)
    {
      v13 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v14 = sub_160F34(0x23u);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d\n", v15, 35, v16, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
          v17 = sub_175AE4();
          v13 = 4;
          v18 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v17, 35, v18, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to config %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Config", 278, "ret == 0", a1, a3, a4, v11, v12);
          v13 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v13 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v29 = sub_160F34(0x23u);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v30, 35, v31, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v32 = sub_175AE4();
          v13 = 4;
          v33 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v30, 35, v31, "AVE_UC_Config", 282, "outSize >= sizeof(S_AVE_UCOutParam_Config)", a1, a3, a4, outputStructCnt, 32);
          v13 = 4;
        }
      }

      v12 = 4294966281;
    }

    else
    {
      v12 = 0;
      v13 = 6;
    }
  }

  else
  {
    v13 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v19 = sub_160F34(0x23u);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 35, v21, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v22 = sub_175AE4();
        v13 = 4;
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 35, v23, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 35, v21, "AVE_UC_Config", 264, "pUC != __null && pRecvPort != __null && pIn != __null && pOut != __null", a1, a2, a3, a4);
        v13 = 4;
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x23u, v13))
  {
    v24 = sub_160F34(0x23u);
    v25 = sub_175AE4();
    v26 = sub_160F68(v13);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v25, 35, v26, "AVE_UC_Config", a1, a2, a3, a4, v12);
      v27 = sub_175AE4();
      outputCnt = sub_160F68(v13);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v27, 35, outputCnt);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v25, 35, v26);
    }
  }

  return v12;
}

uint64_t sub_15D208(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Prepare", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 4u, a2, 0x1A0A0uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Prepare", 327, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Prepare", 331, "outSize >= sizeof(S_AVE_UCOutParam_Prepare)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Prepare", 314, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Prepare", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15D758(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 336;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Start", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 5u, a2, 0x1A0B0uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Start", 375, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x14F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Start", 379, "outSize >= sizeof(S_AVE_UCOutParam_Start)", a1, a2, a3, outputStructCnt, 336);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Start", 362, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Start", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15DCA8(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Stop", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 6u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Stop", 423, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Stop", 427, "outSize >= sizeof(S_AVE_UCOutParam_Stop)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Stop", 410, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Stop", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15E1F4(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 8))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Process", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 7u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Process", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15E740(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 7))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Complete", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 8u, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Complete", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15EC8C(const void *a1, void *a2, void *a3)
{
  outputStructCnt = 32;
  if (sub_160EF0(0x23u, 6))
  {
    v6 = sub_160F34(0x23u);
    v7 = sub_175AE4();
    v8 = sub_160F68(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", v7, 35, v8, "AVE_UC_Reset", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", v7);
  }

  if (a1 && a2 && a3)
  {
    kdebug_trace();
    v9 = IOConnectCallStructMethod(a1, 0xAu, a2, 0x30uLL, a3, &outputStructCnt);
    v10 = sub_175B74(v9);
    kdebug_trace();
    if (v10)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v12 = sub_160F34(0x23u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d\n", v13, 35, v14, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
          v15 = sub_175AE4();
          v11 = 4;
          v16 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v15, 35, v16, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to reset %p %p %p 0x%x %d", v13, 35, v14, "AVE_UC_Reset", 615, "ret == 0", a1, a2, a3, v9, v10);
          v11 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v11 = 4;
      if (sub_160EF0(0x23u, 4))
      {
        v26 = sub_160F34(0x23u);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v27, 35, v28, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v29 = sub_175AE4();
          v11 = 4;
          v30 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v29, 35, v30, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v27, 35, v28, "AVE_UC_Reset", 619, "outSize >= sizeof(S_AVE_UCOutParam_Reset)", a1, a2, a3, outputStructCnt, 32);
          v11 = 4;
        }
      }

      v10 = 4294966281;
    }

    else
    {
      v10 = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_160EF0(0x23u, 4))
    {
      v17 = sub_160F34(0x23u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v18, 35, v19, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v20 = sub_175AE4();
        v11 = 4;
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v20, 35, v21, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 35, v19, "AVE_UC_Reset", 602, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x23u, v11))
  {
    v22 = sub_160F34(0x23u);
    v23 = sub_175AE4();
    v24 = sub_160F68(v11);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v23, 35, v24, "AVE_UC_Reset", a1, a2, a3, v10);
      v23 = sub_175AE4();
      sub_160F68(v11);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v23, 35);
  }

  return v10;
}

uint64_t sub_15F1D8(CFDictionaryRef theDict, uint64_t a2)
{
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  if (theDict && a2)
  {
    *(a2 + 80) = 0;
    *a2 = 0uLL;
    *(a2 + 64) = 0uLL;
    *(a2 + 48) = 0uLL;
    *(a2 + 32) = 0uLL;
    *(a2 + 16) = 0uLL;
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_SNR, a2);
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_NormalizedSNR, (a2 + 8));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ExposureTime, (a2 + 16));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_AGC, (a2 + 24));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ispDGain, (a2 + 32));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_sensorDGain, (a2 + 40));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ispDGainRangeExpansionFactor, (a2 + 48));
    sub_14C90C(theDict, kFigCaptureStreamMetadata_SensorID, (a2 + 64));
    sub_14C3AC(theDict, kFigCaptureStreamMetadata_ScalingFactor, (a2 + 56));
    sub_14C90C(theDict, kFigCaptureStreamMetadata_LuxLevel, (a2 + 68));
    if (sub_14C90C(theDict, kFigCaptureStreamMetadata_TemporalNoiseReductionBand0Strength, (a2 + 72)) == -1008)
    {
      *(a2 + 72) = -1;
    }

    v4 = sub_14BE4C(theDict, kFigCaptureStreamMetadata_TemporalNoiseReductionBand0StrengthModulationEnabled, &v19);
    v5 = v19;
    if (v4 == -1008)
    {
      v5 = -1;
    }

    *(a2 + 76) = v5;
    Value = CFDictionaryGetValue(theDict, kFigCaptureStreamMetadata_PortType);
    if (Value)
    {
      v7 = sub_14CE6C(Value, v20, 0x20u);
      if (v7)
      {
        v8 = v7;
        v9 = &dword_203C60;
        v10 = 5;
        while (strcmp(v8, *(v9 - 1)))
        {
          v9 += 4;
          if (!--v10)
          {
            v11 = 0;
            goto LABEL_21;
          }
        }

        v11 = *v9;
LABEL_21:
        *(a2 + 80) = v11;
        if (sub_160EF0(0x37u, 6))
        {
          v16 = sub_160F34(0x37u);
          v17 = sub_175AE4();
          v18 = sub_160F68(6);
          if (v16)
          {
            printf("%lld %d AVE %s: %s:%d SF: %f Port: %s %d\n", v17, 55, v18, "AVE_ISP_RetrieveMetadata", 120, *(a2 + 56), v8, v11);
            v17 = sub_175AE4();
            sub_160F68(6);
          }

          syslog(3, "%lld %d AVE %s: %s:%d SF: %f Port: %s %d", v17);
        }
      }
    }
  }

  else
  {
    if (sub_160EF0(0x37u, 4))
    {
      v12 = sub_160F34(0x37u);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 55, v14, "AVE_ISP_RetrieveMetadata", 73, "pDict != __null && pData != __null", theDict, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 55);
    }

    return 4294966295;
  }

  return v4;
}

uint64_t sub_15F5D0(__CVBuffer *a1)
{
  if (a1)
  {
    v1 = sub_15F708(a1);
    v2 = 4294966288;
    if (v1)
    {
      v3 = v1;
      if (CFDictionaryContainsKey(v1, kFigCaptureStreamMetadata_SensorID))
      {
        v2 = 0;
      }

      else
      {
        v2 = 4294966288;
      }

      CFRelease(v3);
    }
  }

  else
  {
    if (sub_160EF0(0x37u, 4))
    {
      v4 = sub_160F34(0x37u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v5, 55, v6, "AVE_ISP_CheckMetadata", 206, "pImgBuf != __null", 0);
        v5 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v5);
    }

    return 4294966295;
  }

  return v2;
}

const void *sub_15F708(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

uint64_t sub_15F768(__CVBuffer *a1, const void *a2)
{
  if (a1 && a2)
  {
    v4 = sub_15F708(a1);
    if (v4)
    {
      v5 = v4;
      v6 = sub_15F1D8(v4, a2);
      CFRelease(v5);
      return v6;
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (sub_160EF0(0x37u, 4))
    {
      v8 = sub_160F34(0x37u);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v9, 55, v10, "AVE_ISP_GetMetadata", 240, "pImgBuf != __null && pData != __null", a1, a2);
        v9 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v9, 55);
    }

    return 4294966295;
  }
}

uint64_t sub_15F8B8(int a1, unsigned int a2, unsigned int *a3)
{
  if (sub_160EF0(0x7Bu, 8))
  {
    v6 = sub_160F34(0x7Bu);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", v7, 123, v8, "AVE_Crypto_AddInfo", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", v7);
  }

  if (((a2 | a1) & 0x80000000) != 0 || !a3)
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v15 = sub_160F34(0x7Bu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p\n", v16, 123, v17, "AVE_Crypto_AddInfo", 28, "(iOffset >= 0) && (iSize >= 0) && (psInfo != __null)", a1, a2, a3);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p", v16, 123);
    }
  }

  else
  {
    v9 = *a3;
    if (v9 > 0x41)
    {
      if (sub_160EF0(0x7Bu, 4))
      {
        v18 = sub_160F34(0x7Bu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d\n", v19, 123, v20, "AVE_Crypto_AddInfo", 32, "(0 <= psInfo->iNum) && (psInfo->iNum < (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", a1, a2, a3, *a3);
          v21 = sub_175AE4();
          v31 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d", v21, 123, v31);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d", v19, 123, v20);
        }
      }
    }

    else
    {
      v10 = 0;
      if (v9)
      {
        v11 = a3 + 2;
        v12 = *a3;
        do
        {
          v10 += *(v11 - 1) + *v11;
          v11 += 2;
          --v12;
        }

        while (v12);
      }

      if ((v10 & 0x80000000) == 0 && a1 >= v10)
      {
        v13 = 0;
        v14 = &a3[2 * v9];
        v14[1] = a1 - v10;
        v14[2] = a2;
        *a3 = v9 + 1;
        goto LABEL_29;
      }

      if (sub_160EF0(0x7Bu, 4))
      {
        v22 = sub_160F34(0x7Bu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d\n", v23, 123, v24, "AVE_Crypto_AddInfo", 43, "(0 <= totalSize) && (totalSize <= iOffset)", a1, a2, a3, *a3, v10);
          v25 = sub_175AE4();
          v32 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d", v25, 123, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d", v23, 123, v24);
        }
      }
    }
  }

  v13 = 4294966295;
LABEL_29:
  if (sub_160EF0(0x7Bu, 8))
  {
    v26 = sub_160F34(0x7Bu);
    v27 = sub_175AE4();
    v28 = sub_160F68(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v27, 123, v28, "AVE_Crypto_AddInfo", a1, a2, a3, v13);
      v29 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v29, 123);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v27, 123);
    }
  }

  return v13;
}

uint64_t sub_15FD9C(unsigned int *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v49 = 0u;
  v50 = 0u;
  if (!a1)
  {
    if (sub_160EF0(a2, 4))
    {
      v15 = sub_160F34(a2);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (!v15)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v16);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v16, a2, v17, "AVE_Crypto_PrintInfo", 72, "psInfo != __null", 0);
      v18 = sub_175AE4();
      v44 = "psInfo != __null";
      v45 = 0;
      v43 = 72;
      v41 = a2;
      v42 = sub_160F68(4);
      v19 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p";
      goto LABEL_13;
    }

    return 4294966295;
  }

  v6 = a1;
  if (*a1 >= 0x43)
  {
    if (sub_160EF0(a2, 4))
    {
      v20 = sub_160F34(a2);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (!v20)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d", v21, a2);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d\n", v21, a2, v22, "AVE_Crypto_PrintInfo", 74, "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", v6, *v6);
      v18 = sub_175AE4();
      v23 = sub_160F68(4);
      v45 = v6;
      v46 = *v6;
      v43 = 74;
      v44 = "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))";
      v42 = v23;
      v19 = "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d";
      v41 = a2;
LABEL_13:
      syslog(3, v19, v18, v41, v42, "AVE_Crypto_PrintInfo", v43, v44, v45, v46);
      return 4294966295;
    }

    return 4294966295;
  }

  v7 = a5;
  v8 = a4;
  sub_CB274(a4, a5, &v49, 32);
  v10 = a3;
  if (sub_160EF0(a2, a3))
  {
    v11 = sub_160F34(a2);
    if ((a3 & 0x80000000) != 0)
    {
      if (!v11 || (-a3 & 0x20) != 0)
      {
        syslog(3, "Crypto %s size %d", &v49, *v6);
      }

      else
      {
        printf("Crypto %s size %d\n", &v49, *v6);
        syslog(3, "Crypto %s size %d", &v49, *v6);
      }
    }

    else
    {
      v12 = v11 ^ 1;
      v13 = sub_175AE4();
      v14 = sub_160F68(a3);
      if (((v12 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: Crypto %s size %d\n", v13, a2, v14, &v49, *v6);
        v13 = sub_175AE4();
        v14 = sub_160F68(a3);
      }

      syslog(3, "%lld %d AVE %s: Crypto %s size %d", v13, a2, v14, &v49, *v6);
      v10 = a3;
    }
  }

  if (*v6 >= 1)
  {
    v25 = 0;
    v47 = -a3;
    v26 = (v6 + 2);
    v48 = v6;
    do
    {
      v49 = 0u;
      v50 = 0u;
      sub_CB274(v8, v7, &v49, 32);
      if (sub_160EF0(a2, v10))
      {
        v27 = sub_160F34(a2);
        if ((a3 & 0x80000000) != 0)
        {
          if ((v47 & 0x20) != 0)
          {
            v39 = 0;
          }

          else
          {
            v39 = v27;
          }

          v40 = *v26;
          if (v39 == 1)
          {
            printf("Crypto %s | %d %d\n", &v49, *(v26 - 1), v40);
            syslog(3, "Crypto %s | %d %d", &v49, *(v26 - 1), *v26);
          }

          else
          {
            syslog(3, "Crypto %s | %d %d", &v49, *(v26 - 1), v40);
          }
        }

        else
        {
          v28 = v8;
          v29 = v7;
          v30 = a3;
          v31 = v10;
          v32 = a3 & 0x20;
          v33 = v27 ^ 1;
          v34 = sub_175AE4();
          v35 = sub_160F68(v31);
          v36 = *v26;
          if ((v33 | (v32 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v34, a2, v35, &v49, *(v26 - 1), v36);
          }

          else
          {
            printf("%lld %d AVE %s: Crypto %s | %d %d\n", v34, a2, v35, &v49, *(v26 - 1), v36);
            v37 = sub_175AE4();
            v38 = sub_160F68(v31);
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v37, a2, v38, &v49, *(v26 - 1), *v26);
          }

          a3 = v30;
          v7 = v29;
          v8 = v28;
          v6 = v48;
          v10 = v31;
        }
      }

      ++v25;
      v26 += 2;
    }

    while (v25 < *v6);
  }

  return 0;
}

uint64_t sub_160270(const UInt8 *a1, __CFDictionary *a2)
{
  if (sub_160EF0(0x7Bu, 8))
  {
    v4 = sub_160F34(0x7Bu);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 123, v6, "AVE_Crypto_Make", a1, a2);
      v7 = sub_175AE4();
      v26 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 123, v26, "AVE_Crypto_Make", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 123, v6, "AVE_Crypto_Make", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v12 = sub_160F34(0x7Bu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 123, v14, "AVE_Crypto_Make", 151, "psInfo != __null && pDict != __null", a1, a2);
        v13 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 123);
    }

    goto LABEL_23;
  }

  v8 = *a1;
  if (v8 <= 0)
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v15 = sub_160F34(0x7Bu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d\n", v16, 123, v17, "AVE_Crypto_Make", 154, "psInfo->iNum > 0", a2, *a1);
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d", v16, 123);
    }

LABEL_23:
    v11 = 4294966295;
    goto LABEL_24;
  }

  v9 = CFDataCreate(kCFAllocatorDefault, a1 + 4, 8 * v8);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(a2, kCMSampleAttachmentKey_CryptorSubsampleAuxiliaryData, v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v18 = sub_160F34(0x7Bu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld\n", v19, 123, v20, "AVE_Crypto_Make", 160, "pData != __null", a1 + 4, *a1, 8);
        v21 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld", v21, 123, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld", v19, 123, v20);
      }
    }

    v11 = 4294966293;
  }

LABEL_24:
  if (sub_160EF0(0x7Bu, 8))
  {
    v22 = sub_160F34(0x7Bu);
    v23 = sub_175AE4();
    v24 = sub_160F68(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v23, 123, v24, "AVE_Crypto_Make", a1, a2, v11);
      v23 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v23);
  }

  return v11;
}

uint64_t sub_1606EC(const void *a1, const void *a2, int a3, const __CFDictionary *a4)
{
  v43[0] = 0;
  v43[1] = 0;
  if (sub_160EF0(0x7Bu, 8))
  {
    v8 = sub_160F34(0x7Bu);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %p\n", v9, 123, v10, "AVE_Crypto_MakeSINF", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %p", v9, 123);
  }

  if (a1 && a2 && a4)
  {
    if ((a3 - 1) >= 3)
    {
      if (sub_160EF0(0x7Bu, 4))
      {
        v22 = sub_160F34(0x7Bu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | encode type %d not recognized.\n", v23, 123, v24, "AVE_Crypto_MakeSINF", 219, "false", a3);
          v23 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | encode type %d not recognized.", v23);
      }

      v25 = 4294966281;
    }

    else
    {
      v11 = *&a1cva1cvh10va[4 * (a3 - 1)];
      VideoSecurityInfoExtension = VTEncoderSessionCreateVideoSecurityInfoExtension();
      if (VideoSecurityInfoExtension)
      {
        v13 = VideoSecurityInfoExtension;
        if (sub_160EF0(0x7Bu, 4))
        {
          v14 = sub_160F34(0x7Bu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d\n", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr", a1, v11, v43, a2, 0, v13);
            v17 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d", v17, 123, v37, "AVE_Crypto_MakeSINF", 228, "res == noErr");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr");
          }
        }

LABEL_28:
        v25 = 4294966296;
        goto LABEL_32;
      }

      Value = CFDictionaryGetValue(a4, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms);
      if (Value)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v28 = MutableCopy;
      if (!MutableCopy)
      {
        if (sub_160EF0(0x7Bu, 4))
        {
          v34 = sub_160F34(0x7Bu);
          v35 = sub_175AE4();
          v36 = sub_160F68(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p\n", v35, 123, v36, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", Value);
            v35 = sub_175AE4();
            v41 = Value;
            v40 = sub_160F68(4);
          }

          else
          {
            v41 = Value;
            v40 = v36;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p", v35, 123, v40, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", v41, v42);
        }

        goto LABEL_28;
      }

      CFDictionarySetValue(MutableCopy, @"sinf", 0);
      CFDictionarySetValue(a4, kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms, v28);
      CFRelease(v28);
      v25 = 0;
    }
  }

  else
  {
    if (sub_160EF0(0x7Bu, 4))
    {
      v18 = sub_160F34(0x7Bu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p\n", v19, 123, v20, "AVE_Crypto_MakeSINF", 201, "(pSession != __null) && (piKeyID != __null) && (pDict != __null)", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v38 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v21, 123, v38, "AVE_Crypto_MakeSINF");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v19, 123, v20, "AVE_Crypto_MakeSINF");
      }
    }

    v25 = 4294966295;
  }

LABEL_32:
  if (sub_160EF0(0x7Bu, 8))
  {
    v29 = sub_160F34(0x7Bu);
    v30 = sub_175AE4();
    v31 = sub_160F68(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %p %d\n", v30, 123, v31, "AVE_Crypto_MakeSINF", a1, a2, a3, a4, v25);
      v32 = sub_175AE4();
      v39 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v32, 123, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v30, 123, v31);
    }
  }

  return v25;
}

uint64_t sub_160D68(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = NSTemporaryDirectory();
  v5 = [v4 UTF8String];

  return sub_172100(a1, v2, "%s", v5);
}

uint64_t sub_160DE0(uint64_t a1, int a2)
{
  if (a1 > 0xFF)
  {
    return 4294966295;
  }

  v3 = a1;
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    v6 = *(&xmmword_20D000 + a1);
  }

  byte_20D108[v5] = v6;
  if ((byte_20D148 & 0xFu) >= 7)
  {
    v7 = byte_20D148;
    v8 = sub_175AE4();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %d 0x%x\n", v8, 64, "VERB", "AVE_Log_UpdateConf", 116, v3, v4);
      v8 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %d 0x%x", v8, 64, "VERB", "AVE_Log_UpdateConf", 116, v3, v4);
  }

  return 0;
}

BOOL sub_160EF0(unsigned int a1, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  return a1 < 5 || a1 <= 0xFF && (v2 & 0xFu) <= (byte_20D108[a1] & 0xFu);
}

uint64_t sub_160F34(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 <= 0xFF)
  {
    return (byte_20D108[a1] >> 4) & 1;
  }

  return 0;
}

void *sub_160F68(int a1)
{
  if (a1 >= 0)
  {
    LOBYTE(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 & 0xF;
  if (v2 > 8)
  {
    return &unk_1A7265;
  }

  else
  {
    return *(&off_203CA8 + v2);
  }
}

uint64_t sub_160F98()
{
  if (!qword_20D210)
  {
    *&v0 = 0x505050505050505;
    *(&v0 + 1) = 0x505050505050505;
    xmmword_20D020 = v0;
    unk_20D030 = v0;
    xmmword_20D0E0 = v0;
    unk_20D0F0 = v0;
    xmmword_20D0C0 = v0;
    unk_20D0D0 = v0;
    xmmword_20D0A0 = v0;
    unk_20D0B0 = v0;
    xmmword_20D080 = v0;
    unk_20D090 = v0;
    xmmword_20D060 = v0;
    unk_20D070 = v0;
    xmmword_20D040 = v0;
    unk_20D050 = v0;
    xmmword_20D000 = v0;
    *algn_20D010 = v0;
    BYTE4(xmmword_20D000) = 6;
    BYTE12(xmmword_20D020) = 6;
    byte_20D03D = 6;
    *(&xmmword_20D000 + 11) = 1542;
    BYTE5(xmmword_20D060) = 6;
    BYTE1(xmmword_20D040) = 6;
    dword_20D104 = 20000;
    dword_20D100 = 25;
    sub_CB250(byte_20D108, &xmmword_20D000, 256);
    dword_20D20C = dword_20D104;
    dword_20D208 = dword_20D100;
    qword_20D210 = 1;
  }

  return 0;
}

uint64_t sub_161058(uint64_t a1)
{
  v1 = a1;
  if ((byte_20D148 & 0xEu) > 5)
  {
    v2 = byte_20D148;
    v3 = sub_175AE4();
    if ((v2 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter %d\n", v3, 64, "INFO", "AVE_Log_UpdateConsole", v1);
      v3 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d", v3, 64, "INFO", "AVE_Log_UpdateConsole", v1);
  }

  for (i = 0; i != 256; ++i)
  {
    byte_20D108[i] = byte_20D108[i] & 0xEF | (16 * ((byte_20D108[i] & 0xF) <= v1));
  }

  qword_20D210 = sub_175B1C();
  sub_1611B0(qword_20D210);
  if ((byte_20D148 & 0xEu) >= 6)
  {
    v5 = byte_20D148;
    v6 = sub_175AE4();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit %d %d\n", v6, 64, "INFO", "AVE_Log_UpdateConsole", v1, 0);
      v6 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d", v6, 64, "INFO", "AVE_Log_UpdateConsole", v1, 0);
  }

  return 0;
}

void sub_1611B0(uint64_t a1)
{
  if ((byte_20D148 & 0xFu) >= 7)
  {
    v1 = byte_20D148;
    v2 = sub_175AE4();
    if ((v1 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %llu\n", v2, 64, "VERB", "AVE_Log_Print", 85, qword_20D210);
      v2 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %llu", v2, 64, "VERB", "AVE_Log_Print", 85, qword_20D210);
  }

  for (i = 0; i != 256; ++i)
  {
    if ((byte_20D148 & 0xFu) >= 7)
    {
      v4 = byte_20D148;
      v5 = sub_175AE4();
      v6 = byte_20D108[i];
      if ((v4 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: Log Cfg: %3d = 0x%02x\n", v5, 64, "VERB", i, v6);
        v5 = sub_175AE4();
        v6 = byte_20D108[i];
      }

      syslog(3, "%lld %d AVE %s: Log Cfg: %3d = 0x%02x", v5, 64, "VERB", i, v6);
    }
  }

  if ((byte_20D148 & 0xFu) >= 7)
  {
    v7 = byte_20D148;
    v8 = sub_175AE4();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: Log Cfg: %d (us) %d%%\n", v8, 64, "VERB", dword_20D20C, dword_20D208);
      v8 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: Log Cfg: %d (us) %d%%", v8, 64, "VERB", dword_20D20C, dword_20D208);
  }
}

uint64_t sub_161394(void *a1, uint64_t a2)
{
  result = 4294966295;
  if (a1)
  {
    if (a2)
    {
      *a1 = qword_20D210;
      sub_CB250(a2, byte_20D108, 256);
      result = 0;
      *(a2 + 256) = dword_20D208;
      *(a2 + 260) = dword_20D20C;
    }
  }

  return result;
}

uint64_t sub_161400(uint64_t a1, int a2, int a3)
{
  v6 = 5;
  do
  {
    v7 = v6 >> 3;
    if (v7 >= a2)
    {
      break;
    }

    if ((*(a1 + v7) >> (v6 & 7)))
    {
      sub_160DE0(v6, a3);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 256);
  return 0;
}

uint64_t sub_161470(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  memset(v16, 0, sizeof(v16));
  if ((byte_20D148 & 0xEu) >= 6)
  {
    v5 = byte_20D148;
    v6 = sub_175AE4();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter 0x%x 0x%llx\n", v6, 64, "INFO", "AVE_Log_PresetCfg", v4, a2);
      v6 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Enter 0x%x 0x%llx", v6, 64, "INFO", "AVE_Log_PresetCfg", v4, a2);
  }

  v7 = (v4 >> 2) & 0x3FFFFFC0;
  v8 = v7 - 64;
  if (a2)
  {
    for (i = 0; i != 64; ++i)
    {
      if ((v8 | i) > 255)
      {
        break;
      }

      *(v16 + (v8 | i) / 8) |= ((a2 >> i) & 1) << ((v8 | i) - (v2 & 0xF8));
    }

    v10 = sub_161400(v16, 32, v4);
  }

  else
  {
    v11 = 320 - v7;
    if ((v8 - 192) >= 0xFFFFFFFFFFFFFF00)
    {
      v12 = 64;
    }

    else
    {
      v12 = v11;
    }

    v10 = sub_CB250(&byte_20D108[v8], &xmmword_20D000 + v8, v12);
  }

  if ((v4 & 0xFFFFFEFF) != 0)
  {
    v10 = sub_175B1C();
    qword_20D210 = v10;
  }

  sub_1611B0(v10);
  if ((byte_20D148 & 0xEu) >= 6)
  {
    v13 = byte_20D148;
    v14 = sub_175AE4();
    if ((v13 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit 0x%x 0x%llx %d\n", v14, 64, "INFO", "AVE_Log_PresetCfg", v4, a2, 0);
      v14 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s Exit 0x%x 0x%llx %d", v14, 64, "INFO", "AVE_Log_PresetCfg", v4, a2, 0);
  }

  return 0;
}

uint64_t sub_161688(uint64_t a1)
{
  memset(v67, 0, 192);
  memset(&v66, 0, sizeof(v66));
  v65 = 0;
  v64 = 0;
  qword_20C1F8[0] = 0;
  qword_20C200 = 0;
  if (a1)
  {
    qword_20C1F8[0] = a1;
  }

  v1 = sub_160D68(v67, 192);
  if (v1 >= 1)
  {
    sub_172100(&v67[v1], 192 - v1, "%s", "ave_log.cfg");
    qword_20C200 = v67;
  }

  for (i = 0; i != 4; ++i)
  {
    v3 = qword_20C1F8[i];
    if (!v3)
    {
      continue;
    }

    if (stat(qword_20C1F8[i], &v66))
    {
      if ((byte_20D148 & 8) != 0)
      {
        v4 = byte_20D148;
        v5 = sub_175AE4();
        if ((v4 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file doesn't exist at %s\n", v5, 64, "DBG", "AVE_Log_ReadCfg", 650, v3);
          sub_175AE4();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file doesn't exist at %s");
      }

      continue;
    }

    if ((byte_20D148 & 8) != 0)
    {
      v6 = byte_20D148;
      v7 = sub_175AE4();
      if ((v6 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file is at %s\n", v7, 64, "DBG", "AVE_Log_ReadCfg", 654, v3);
        v7 = sub_175AE4();
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file is at %s", v7, 64, "DBG", "AVE_Log_ReadCfg", 654, v3);
    }

    v8 = v66.st_mtimespec.tv_nsec / 1000 + 1000000 * v66.st_mtimespec.tv_sec;
    if (v8 == qword_20D210 && qword_20D210)
    {
      if ((byte_20D148 & 8) != 0)
      {
        v9 = byte_20D148;
        v10 = sub_175AE4();
        if ((v9 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file has been updated %s %llu\n", v10, 64, "DBG", "AVE_Log_ReadCfg", 662, v3, qword_20D210);
          v10 = sub_175AE4();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file has been updated %s %llu", v10, 64, "DBG", "AVE_Log_ReadCfg", 662, v3, qword_20D210);
      }

      continue;
    }

    v11 = fopen(v3, "r");
    if (v11)
    {
      v21 = v11;
      v22 = malloc_type_malloc(0x108uLL, 0x10000400BDB4DB4uLL);
      if (v22)
      {
        v23 = v22;
        *(v22 + 32) = 0;
        *(v22 + 14) = 0u;
        *(v22 + 15) = 0u;
        *(v22 + 12) = 0u;
        *(v22 + 13) = 0u;
        *(v22 + 10) = 0u;
        *(v22 + 11) = 0u;
        *(v22 + 8) = 0u;
        *(v22 + 9) = 0u;
        *(v22 + 6) = 0u;
        *(v22 + 7) = 0u;
        *(v22 + 4) = 0u;
        *(v22 + 5) = 0u;
        *(v22 + 2) = 0u;
        *(v22 + 3) = 0u;
        *v22 = 0u;
        *(v22 + 1) = 0u;
        if ((byte_20D148 & 0xFu) >= 5)
        {
          v24 = byte_20D148;
          v25 = sub_175AE4();
          if ((v24 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d used log config file is at %s %llu\n", v25, 64, "WARN", "AVE_Log_ReadCfg", 690, v3, v8);
            v25 = sub_175AE4();
          }

          syslog(3, "%lld %d AVE %s: %s:%d used log config file is at %s %llu", v25, 64, "WARN", "AVE_Log_ReadCfg", 690, v3, v8);
        }

        qword_20D210 = v8;
        v28 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
        if (v28)
        {
          v29 = v28;
          *(v28 + 14) = 0u;
          *(v28 + 15) = 0u;
          *(v28 + 12) = 0u;
          *(v28 + 13) = 0u;
          *(v28 + 10) = 0u;
          *(v28 + 11) = 0u;
          *(v28 + 8) = 0u;
          *(v28 + 9) = 0u;
          *(v28 + 6) = 0u;
          *(v28 + 7) = 0u;
          *(v28 + 4) = 0u;
          *(v28 + 5) = 0u;
          *(v28 + 2) = 0u;
          *(v28 + 3) = 0u;
          *v28 = 0u;
          *(v28 + 1) = 0u;
          v63 = 0;
          v30 = fgetln(v21, &v63);
          if (v30)
          {
            v31 = v30;
            v32 = v23 + 64;
            v33 = v23 + 65;
            v34 = 1;
            while (1)
            {
              v35 = *v31;
              v36 = v35 > 0x23;
              v37 = (1 << v35) & 0x800002400;
              if (!v36 && v37 != 0)
              {
                goto LABEL_55;
              }

              if (v63 >= 0x100)
              {
                if ((byte_20D148 & 0xFu) >= 5)
                {
                  v39 = byte_20D148;
                  v40 = sub_175AE4();
                  if ((v39 & 0x10) != 0)
                  {
                    printf("%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld\n", v40, 64, "WARN", "AVE_Log_ReadCfg", 732, v3, v34);
                    v40 = sub_175AE4();
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld", v40, 64, "WARN", "AVE_Log_ReadCfg", 732, v3, v34);
                }

                goto LABEL_55;
              }

              sub_17212C(v29, v31, v63 + 1);
              LODWORD(v65) = 15;
              v64 = 0;
              if (sscanf(v29, "LOG_ID_%d=%d%c", &v65 + 4, &v65, &v64) >= 2)
              {
                v41 = v65;
                if ((v64 & 0xDF) == 0x43)
                {
                  v41 = v65 | 0x10;
                }

                *(v23 + SHIDWORD(v65)) = v41;
                goto LABEL_55;
              }

              if (sscanf(v29, "THRESHOLD=%d", v32) != 1)
              {
                break;
              }

              v42 = &dword_20D100;
              if (*v32)
              {
                v42 = v32;
              }

              dword_20D208 = *v42;
              if ((byte_20D148 & 0xFu) < 7)
              {
                goto LABEL_55;
              }

              v43 = v32;
              v44 = byte_20D148;
              v45 = sub_175AE4();
              v62 = v43;
              if ((v44 & 0x10) == 0)
              {
                syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d");
LABEL_82:
                v32 = v62;
                goto LABEL_55;
              }

              printf("%lld %d AVE %s: %s:%d Read threshold %d\n", v45, 64, "VERB", "AVE_Log_ReadCfg", 757, *v43);
              v49 = sub_175AE4();
              syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d", v49, 64, "VERB", "AVE_Log_ReadCfg", 757, *v43);
              v32 = v43;
LABEL_55:
              v63 = 0;
              v31 = fgetln(v21, &v63);
              ++v34;
              if (!v31)
              {
                goto LABEL_83;
              }
            }

            if (sscanf(v29, "INTERVAL=%d", v33) != 1)
            {
              goto LABEL_55;
            }

            v46 = &dword_20D104;
            if (*v33)
            {
              v46 = v23 + 65;
            }

            dword_20D20C = *v46;
            if ((byte_20D148 & 0xFu) < 7)
            {
              goto LABEL_55;
            }

            v62 = v32;
            v47 = byte_20D148;
            v48 = sub_175AE4();
            if ((v47 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d Read interval %d (us)\n", v48, 64, "VERB", "AVE_Log_ReadCfg", 764, *v33);
              sub_175AE4();
            }

            syslog(3, "%lld %d AVE %s: %s:%d Read interval %d (us)");
            goto LABEL_82;
          }

LABEL_83:
          if (ferror(v21))
          {
            if ((byte_20D148 & 0xC) != 0)
            {
              v50 = byte_20D148;
              v51 = sub_175AE4();
              v52 = __error();
              v53 = strerror(*v52);
              if ((v50 & 0x10) != 0)
              {
                printf("%lld %d AVE %s: %s:%d error while reading config file: %s\n", v51, 64, "ERR", "AVE_Log_ReadCfg", 713, v53);
                v59 = sub_175AE4();
                v60 = __error();
                v61 = strerror(*v60);
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v59, 64, "ERR", "AVE_Log_ReadCfg", 713, v61);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v51, 64, "ERR", "AVE_Log_ReadCfg", 713, v53);
              }
            }

            v19 = 4294966284;
          }

          else
          {
            for (j = 0; j != 256; ++j)
            {
              v57 = v23 + j;
              if (!*(v23 + j))
              {
                v57 = v23;
              }

              v58 = sub_160DE0(j, *v57);
            }

            sub_1611B0(v58);
            v19 = 0;
          }

          free(v29);
        }

        else
        {
          if ((byte_20D148 & 0xC) != 0)
          {
            v54 = byte_20D148;
            v55 = sub_175AE4();
            if ((v54 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader\n", v55, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
              v55 = sub_175AE4();
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader", v55, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
          }

          v19 = 4294966293;
        }

        free(v23);
      }

      else
      {
        if ((byte_20D148 & 0xC) != 0)
        {
          v26 = byte_20D148;
          v27 = sub_175AE4();
          if ((v26 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config\n", v27, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
            v27 = sub_175AE4();
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config", v27, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
        }

        v19 = 4294966293;
      }

      fclose(v21);
      return v19;
    }

    if ((byte_20D148 & 8) != 0)
    {
      v12 = byte_20D148;
      v13 = sub_175AE4();
      v14 = __error();
      v15 = strerror(*v14);
      if ((v12 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s\n", v13, 64, "DBG", "AVE_Log_ReadCfg", 673, v3, v15);
        v13 = sub_175AE4();
        v16 = __error();
        strerror(*v16);
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s", v13);
    }
  }

  if ((byte_20D148 & 8) != 0)
  {
    v17 = byte_20D148;
    v18 = sub_175AE4();
    if ((v17 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d cannot find available config file\n", v18, 64, "DBG", "AVE_Log_ReadCfg", 679);
      v18 = sub_175AE4();
    }

    syslog(3, "%lld %d AVE %s: %s:%d cannot find available config file", v18, 64, "DBG", "AVE_Log_ReadCfg", 679);
  }

  return 4294966288;
}

uint64_t sub_1621A4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 44))
    {
      v2 = result + 44;
    }

    else
    {
      v2 = 0;
    }

    result = sub_161688(v2);
    v3 = 256;
    for (i = 2; i != 10; i += 2)
    {
      if ((*v1 & v3) != 0)
      {
        sub_161470((v3 + 7), *&v1[i]);
        result = 0;
      }

      v3 += 256;
    }

    v5 = v1[10];
    if (v5)
    {
      sub_161058(v5);
      return 0;
    }
  }

  return result;
}

int *sub_162230(int *a1, int a2, uint64_t a3)
{
  v5 = *a1;
  v3 = a1 + 2;
  v4 = v5;
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    while (1)
    {
      v7 = &v3[8 * v6];
      if (v7[1] == a2)
      {
        break;
      }

      if (++v6 >= v4)
      {
        return v7;
      }
    }

    ++v6;
  }

  while (*(v7 + 1) >= a3 && v6 < v4);
  return v7;
}