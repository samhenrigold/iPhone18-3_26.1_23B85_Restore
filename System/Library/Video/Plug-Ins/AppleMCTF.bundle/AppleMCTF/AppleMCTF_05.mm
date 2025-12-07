uint64_t sub_65C9C(const UInt8 *a1, __CFDictionary *a2)
{
  if (sub_56A8C(0x7Bu, 8))
  {
    v4 = sub_56AD0(0x7Bu);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 123, v6, "AVE_Crypto_Make", a1, a2);
      v7 = sub_66A18();
      v26 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 123, v26, "AVE_Crypto_Make", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 123, v6, "AVE_Crypto_Make", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (sub_56A8C(0x7Bu, 4))
    {
      v12 = sub_56AD0(0x7Bu);
      v13 = sub_66A18();
      v14 = sub_56B04(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 123, v14, "AVE_Crypto_Make", 151, "psInfo != __null && pDict != __null", a1, a2);
        v13 = sub_66A18();
        sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 123);
    }

    goto LABEL_23;
  }

  v8 = *a1;
  if (v8 <= 0)
  {
    if (sub_56A8C(0x7Bu, 4))
    {
      v15 = sub_56AD0(0x7Bu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d\n", v16, 123, v17, "AVE_Crypto_Make", 154, "psInfo->iNum > 0", a2, *a1);
        v16 = sub_66A18();
        sub_56B04(4);
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
    if (sub_56A8C(0x7Bu, 4))
    {
      v18 = sub_56AD0(0x7Bu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld\n", v19, 123, v20, "AVE_Crypto_Make", 160, "pData != __null", a1 + 4, *a1, 8);
        v21 = sub_66A18();
        v27 = sub_56B04(4);
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
  if (sub_56A8C(0x7Bu, 8))
  {
    v22 = sub_56AD0(0x7Bu);
    v23 = sub_66A18();
    v24 = sub_56B04(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v23, 123, v24, "AVE_Crypto_Make", a1, a2, v11);
      v23 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v23);
  }

  return v11;
}

uint64_t sub_66118(const void *a1, const void *a2, int a3, const __CFDictionary *a4)
{
  v43[0] = 0;
  v43[1] = 0;
  if (sub_56A8C(0x7Bu, 8))
  {
    v8 = sub_56AD0(0x7Bu);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %p\n", v9, 123, v10, "AVE_Crypto_MakeSINF", a1, a2, a3, a4);
      v9 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %p", v9, 123);
  }

  if (a1 && a2 && a4)
  {
    if ((a3 - 1) >= 3)
    {
      if (sub_56A8C(0x7Bu, 4))
      {
        v22 = sub_56AD0(0x7Bu);
        v23 = sub_66A18();
        v24 = sub_56B04(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | encode type %d not recognized.\n", v23, 123, v24, "AVE_Crypto_MakeSINF", 219, "false", a3);
          v23 = sub_66A18();
          sub_56B04(4);
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
        if (sub_56A8C(0x7Bu, 4))
        {
          v14 = sub_56AD0(0x7Bu);
          v15 = sub_66A18();
          v16 = sub_56B04(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d\n", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr", a1, v11, v43, a2, 0, v13);
            v17 = sub_66A18();
            v37 = sub_56B04(4);
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
        if (sub_56A8C(0x7Bu, 4))
        {
          v34 = sub_56AD0(0x7Bu);
          v35 = sub_66A18();
          v36 = sub_56B04(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p\n", v35, 123, v36, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", Value);
            v35 = sub_66A18();
            v41 = Value;
            v40 = sub_56B04(4);
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
    if (sub_56A8C(0x7Bu, 4))
    {
      v18 = sub_56AD0(0x7Bu);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p\n", v19, 123, v20, "AVE_Crypto_MakeSINF", 201, "(pSession != __null) && (piKeyID != __null) && (pDict != __null)", a1, a2, a3, a4);
        v21 = sub_66A18();
        v38 = sub_56B04(4);
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
  if (sub_56A8C(0x7Bu, 8))
  {
    v29 = sub_56AD0(0x7Bu);
    v30 = sub_66A18();
    v31 = sub_56B04(8);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %p %d\n", v30, 123, v31, "AVE_Crypto_MakeSINF", a1, a2, a3, a4, v25);
      v32 = sub_66A18();
      v39 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v32, 123, v39);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v30, 123, v31);
    }
  }

  return v25;
}

uint64_t sub_66794(const char *a1, unint64_t a2, unint64_t a3, char *a4, int a5)
{
  *v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  if (!a4)
  {
    return 4294966295;
  }

  *a4 = 0;
  setlocale(0, &unk_7EA33);
  time(&v16);
  v10 = localtime(&v16);
  strftime(v17, 0x2DuLL, "%Y-%m-%d_%H-%M-%S", v10);
  v11 = "/var/mobile/Media/DCIM/";
  if (a1)
  {
    v11 = a1;
  }

  if (a2 | a3)
  {
    v12 = "_";
  }

  else
  {
    v12 = &unk_7EA33;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = &unk_7EA33;
  }

  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = &unk_7EA33;
  }

  sub_63330(a4, a5, "%s%s%s%s%s", v11, v17, v12, v13, v14);
  return 0;
}

uint64_t sub_668C8(uint64_t result)
{
  if (result <= -2002)
  {
    if (result > -2006)
    {
      if (result == -2005)
      {
        return 4294948264;
      }

      else
      {
        return 4294954396;
      }
    }

    else if (result > -2008)
    {
      if (result == -2007)
      {
        return 4294948263;
      }

      else
      {
        return 4294948265;
      }
    }

    else if (result == -2009)
    {
      return 4294948262;
    }

    else if (result == -2008)
    {
      return 4294949598;
    }

    else
    {
      return 4294949605;
    }
  }

  else
  {
    switch(result)
    {
      case 0xFFFFFC01:
      case 0xFFFFFC02:
      case 0xFFFFFC03:
      case 0xFFFFFC04:
      case 0xFFFFFC05:
      case 0xFFFFFC06:
      case 0xFFFFFC07:
      case 0xFFFFFC08:
      case 0xFFFFFC09:
      case 0xFFFFFC0A:
      case 0xFFFFFC0B:
      case 0xFFFFFC0C:
      case 0xFFFFFC0D:
      case 0xFFFFFC0E:
      case 0xFFFFFC0F:
      case 0xFFFFFC10:
      case 0xFFFFFC11:
      case 0xFFFFFC12:
      case 0xFFFFFC13:
      case 0xFFFFFC14:
      case 0xFFFFFC16:
      case 0xFFFFFC18:
        return 4294949605;
      case 0xFFFFFC15:
        return 4294954392;
      case 0xFFFFFC17:
        return 4294954394;
      default:
        if (result == -2001)
        {
          result = 4294947942;
        }

        else if (result)
        {
          return 4294949605;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_66A50()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 1000;
}

uint64_t sub_66AA8(int a1)
{
  v1 = &dword_B7ACC;
  v2 = 26;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 4294966296;
    }
  }

  return *(v1 - 1);
}

uint64_t sub_66ADC(_DWORD *a1)
{
  bzero(a1, 0x650uLL);
  *a1 = -1;
  a1[20] = -2;
  for (i = 31; i != 103; i += 12)
  {
    *&a1[i] = -1;
  }

  v3 = 0;
  a1[18] = -2;
  *(a1 + 420) = 0;
  a1[189] = -1;
  *(a1 + 98) = 0xC0000000CLL;
  a1[198] = -2;
  a1[201] = -13;
  *(a1 + 101) = 0xC0000000CLL;
  *(a1 + 102) = 0xBFF0000000000000;
  *(a1 + 105) = 0xBFF0000000000000;
  *(a1 + 110) = -1;
  *(a1 + 112) = -1;
  *(a1 + 113) = 0xBFF0000000000000;
  *(a1 + 114) = 0xBFF0000000000000;
  a1[261] = -1;
  *(a1 + 133) = 0xBFF0000000000000;
  *(a1 + 134) = 0xBFF0000000000000;
  v4 = a1 + 278;
  *(a1 + 120) = 0xC0000000CLL;
  *(a1 + 136) = -1;
  do
  {
    v5 = 0;
    a1[24 * v3 + 276] = 1;
    do
    {
      *&v4[v5] = -NAN;
      v5 += 3;
    }

    while (v5 != 21);
    ++v3;
    v4 += 24;
  }

  while (v3 != 5);
  a1[255] = -1;
  *(a1 + 395) = 0xFFFFFFFFLL;
  *(a1 + 257) = -1;
  *(a1 + 259) = -1;
  *(a1 + 199) = -1;
  return 0;
}

void sub_66C04()
{
  qword_C4A10 = kCVImageBufferColorPrimaries_ITU_R_709_2;
  *algn_C4A18 = kCVImageBufferColorPrimaries_EBU_3213;
  qword_C4A20 = kCVImageBufferColorPrimaries_SMPTE_C;
  unk_C4A28 = kCVImageBufferColorPrimaries_ITU_R_2020;
  qword_C4A30 = kCVImageBufferColorPrimaries_P3_D65;
  unk_C4A38 = kCVImageBufferColorPrimaries_DCI_P3;
  qword_C4A40 = kCVImageBufferTransferFunction_ITU_R_709_2;
  *algn_C4A48 = kCVImageBufferTransferFunction_SMPTE_240M_1995;
  qword_C4A50 = kCVImageBufferTransferFunction_Linear;
  unk_C4A58 = kCVImageBufferTransferFunction_sRGB;
  qword_C4A60 = kCVImageBufferTransferFunction_ITU_R_2020;
  unk_C4A68 = kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ;
  qword_C4A70 = kCVImageBufferTransferFunction_SMPTE_ST_428_1;
  unk_C4A78 = kCVImageBufferTransferFunction_ITU_R_2100_HLG;
  qword_C4A80 = kCVImageBufferYCbCrMatrix_Identity;
  *algn_C4A88 = kCVImageBufferYCbCrMatrix_ITU_R_709_2;
  qword_C4A90 = kCVImageBufferYCbCrMatrix_ITU_R_601_4;
  unk_C4A98 = kCVImageBufferYCbCrMatrix_SMPTE_240M_1995;
  qword_C4AA0 = kCVImageBufferYCbCrMatrix_ITU_R_2020;
  unk_C4AA8 = kCVImageBufferYCbCrMatrix_ITU_R_2100_ICtCp;
}

uint64_t sub_66D38(int *a1, unsigned int a2, __CFArray *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  while (1)
  {
    v6 = *a1++;
    result = sub_45CDC(v6, a3);
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

uint64_t sub_66D98(char *a1, int *a2)
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

uint64_t AVE_Plugin_MCTF_CreateInstance(const void *a1, const void *a2, void *a3)
{
  v6 = sub_66A18();
  if (sub_56A8C(0xBu, 0))
  {
    v7 = sub_56AD0(0xBu);
    v8 = sub_66A18();
    v9 = sub_56B04(0);
    if (v7)
    {
      printf("%lld %d AVE %s: Compiled %s in %s on %s %s\n", v8, 11, v9, "905.5.3", "prod", "Oct 23 2025", "06:35:24");
      v8 = sub_66A18();
      sub_56B04(0);
    }

    syslog(3, "%lld %d AVE %s: Compiled %s in %s on %s %s", v8);
  }

  if (sub_56A8C(0xDu, 6))
  {
    v10 = sub_56AD0(0xDu);
    v11 = sub_66A18();
    v12 = sub_56B04(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v11, 13, v12, "AVE_Plugin_MCTF_CreateInstance", a1, a2, a3, 0);
      v11 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v11, 13);
  }

  if (a3)
  {
    kdebug_trace();
    *a3 = 0;
    VTTemporalFilterPluginGetClassID();
    v13 = CMDerivedObjectCreate();
    if (v13)
    {
      v14 = v13;
      if (sub_56A8C(0xDu, 4))
      {
        v15 = sub_56AD0(0xDu);
        v16 = sub_66A18();
        v17 = sub_56B04(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create MCTF Object %p %p %p %lld %d\n", v16, 13, v17, "AVE_Plugin_MCTF_CreateInstance", 598, "res == noErr", a1, a2, a3, 0, v14);
          v18 = sub_66A18();
          v50 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create MCTF Object %p %p %p %lld %d", v18, 13, v50, "AVE_Plugin_MCTF_CreateInstance", 598);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create MCTF Object %p %p %p %lld %d", v16, 13, v17, "AVE_Plugin_MCTF_CreateInstance", 598);
        }
      }

      v31 = 4294966292;
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v24 = DerivedStorage;
        bzero(DerivedStorage, 0x15788uLL);
        v25 = sub_42228();
        *v24 = v25;
        if (v25)
        {
          v26 = sub_23E64(v24);
          if (!v26)
          {
            v31 = 0;
            v32 = v24[3];
            *a3 = 0;
LABEL_45:
            kdebug_trace();
            goto LABEL_46;
          }

          v27 = v26;
          if (sub_56A8C(0xBu, 4))
          {
            v28 = sub_56AD0(0xBu);
            v29 = sub_66A18();
            v30 = sub_56B04(4);
            if (v28)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create MCTF %p %lld %p %p %d\n", v29, 11, v30, "AVE_Plugin_MCTF_CreateInstance", 615, "ret == 0", a2, 0, 0, v24, v27);
              v29 = sub_66A18();
              v57 = v24;
              v58 = v27;
              v56 = a2;
              v52 = sub_56B04(4);
            }

            else
            {
              v57 = v24;
              v58 = v27;
              v56 = a2;
              v52 = v30;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create MCTF %p %lld %p %p %d", v29, 11, v52, "AVE_Plugin_MCTF_CreateInstance", 615, "ret == 0", v56, 0, 0, v57, v58);
          }
        }

        else if (sub_56A8C(0xBu, 4))
        {
          v37 = sub_56AD0(0xBu);
          v38 = sub_66A18();
          v39 = sub_56B04(4);
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create mutex %p %lld %p %p %d\n", v38, 11, v39, "AVE_Plugin_MCTF_CreateInstance", 610, "pPI->pPIMutex != __null", a2, 0, 0, v24, 0);
            v40 = sub_66A18();
            v54 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %p %lld %p %p %d", v40, 11, v54, "AVE_Plugin_MCTF_CreateInstance", 610);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create mutex %p %lld %p %p %d", v38, 11, v39, "AVE_Plugin_MCTF_CreateInstance", 610);
          }
        }

        if (*v24)
        {
          sub_42290(*v24);
          *v24 = 0;
        }

        v31 = 4294966293;
      }

      else
      {
        if (sub_56A8C(0xDu, 4))
        {
          v33 = sub_56AD0(0xDu);
          v34 = sub_66A18();
          v35 = sub_56B04(4);
          if (v33)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %lld %p %d\n", v34, 13, v35, "AVE_Plugin_MCTF_CreateInstance", 603, "pPI != __null", a1, a2, a3, 0, 0, 0);
            v36 = sub_66A18();
            v53 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %lld %p %d", v36, 13, v53, "AVE_Plugin_MCTF_CreateInstance", 603, "pPI != __null");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %lld %p %d", v34, 13, v35, "AVE_Plugin_MCTF_CreateInstance", 603, "pPI != __null");
          }
        }

        v31 = 4294966296;
      }
    }

    v32 = 0;
    v24 = 0;
    goto LABEL_45;
  }

  if (sub_56A8C(0xDu, 4))
  {
    v19 = sub_56AD0(0xDu);
    v20 = sub_66A18();
    v21 = sub_56B04(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v20, 13, v21, "AVE_Plugin_MCTF_CreateInstance", 588, "instanceOut != __null", a1, a2, 0, 0, 0);
      v22 = sub_66A18();
      v51 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v22, 13, v51, "AVE_Plugin_MCTF_CreateInstance", 588);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v20, 13, v21, "AVE_Plugin_MCTF_CreateInstance", 588);
    }
  }

  v24 = 0;
  v32 = 0;
  v31 = 4294966295;
LABEL_46:
  v41 = sub_66A18() - v6;
  if (v41 >= 50000)
  {
    v42 = 5;
  }

  else
  {
    v42 = 6;
  }

  v43 = sub_668C8(v31);
  if (v31)
  {
    v44 = 4;
  }

  else
  {
    v44 = v42;
  }

  if (sub_56A8C(0xBu, v44))
  {
    v45 = sub_56AD0(0xBu);
    v46 = sub_66A18();
    v47 = sub_56B04(v44);
    if (v45)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %p %p %lld %d %d\n", v46, 11, v47, "AVE_Plugin_MCTF_CreateInstance", a2, v32, 0, v24, v41, v31, v43);
      v48 = sub_66A18();
      v55 = sub_56B04(v44);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %p %p %lld %d %d", v48, 11, v55, "AVE_Plugin_MCTF_CreateInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %p %p %lld %d %d", v46, 11, v47, "AVE_Plugin_MCTF_CreateInstance");
    }
  }

  return v43;
}

uint64_t sub_678C4(const void *a1)
{
  v2 = sub_66A18();
  if (sub_56A8C(0xBu, 6))
  {
    v3 = sub_56AD0(0xBu);
    v4 = sub_66A18();
    v5 = sub_56B04(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_MCTF_Invalidate", a1, 0);
      v6 = sub_66A18();
      v31 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v31, "AVE_Plugin_MCTF_Invalidate", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_MCTF_Invalidate", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_422D8(*DerivedStorage);
      v9 = v8[3];
      kdebug_trace();
      v10 = sub_25B38(v8);
      if (v10 && sub_56A8C(0xBu, 4))
      {
        v11 = sub_56AD0(0xBu);
        v12 = sub_66A18();
        v13 = sub_56B04(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to stop MCTF %p %lld %p %d\n", v12, 11, v13, "AVE_Plugin_MCTF_Invalidate", 45, "ret == 0", a1, v9, v8, v10);
          v14 = sub_66A18();
          v32 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop MCTF %p %lld %p %d", v14, 11, v32, "AVE_Plugin_MCTF_Invalidate");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to stop MCTF %p %lld %p %d", v12, 11, v13, "AVE_Plugin_MCTF_Invalidate");
        }
      }
    }

    else
    {
      if (sub_56A8C(0xBu, 4))
      {
        v19 = sub_56AD0(0xBu);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d\n", v20, 11, v21, "AVE_Plugin_MCTF_Invalidate", 34, "pPI != __null", a1, 0, 0);
          v22 = sub_66A18();
          v34 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d", v22, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d", v20, 11, v21);
        }
      }

      v9 = 0;
      v10 = 4294966296;
    }

    kdebug_trace();
    sub_4230C(*v8);
  }

  else
  {
    if (sub_56A8C(0xBu, 4))
    {
      v15 = sub_56AD0(0xBu);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v16, 11, v17, "AVE_Plugin_MCTF_Invalidate", 29, "object != __null", 0, 0, 0);
        v18 = sub_66A18();
        v33 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v16, 11, v17);
      }
    }

    v9 = 0;
    v10 = 4294966295;
  }

  v23 = sub_66A18() - v2;
  if (v23 >= 50000)
  {
    v24 = 5;
  }

  else
  {
    v24 = 6;
  }

  v25 = sub_668C8(v10);
  if (v10)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24;
  }

  if (sub_56A8C(0xBu, v26))
  {
    v27 = sub_56AD0(0xBu);
    v28 = sub_66A18();
    v29 = sub_56B04(v26);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_MCTF_Invalidate", a1, v9, v23, v10, v25);
      v28 = sub_66A18();
      sub_56B04(v26);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v28, 11);
  }

  return v25;
}

void sub_67DC8(const void *a1)
{
  v2 = sub_66A18();
  if (sub_56A8C(0xBu, 6))
  {
    v3 = sub_56AD0(0xBu);
    v4 = sub_66A18();
    v5 = sub_56B04(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v4, 11, v5, "AVE_Plugin_MCTF_Finalize", a1, 0);
      v6 = sub_66A18();
      v32 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v6, 11, v32, "AVE_Plugin_MCTF_Finalize", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v4, 11, v5, "AVE_Plugin_MCTF_Finalize", a1, 0);
    }
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_422D8(*DerivedStorage);
      v9 = v8[3];
      kdebug_trace();
      v10 = v8[10895];
      if (v10)
      {
        CFRelease(v10);
        v8[10895] = 0;
      }

      v11 = v8[10896];
      if (v11)
      {
        CFRelease(v11);
        v8[10896] = 0;
      }

      v12 = sub_24AA0(v8);
      if (v12 && sub_56A8C(0xBu, 4))
      {
        v13 = sub_56AD0(0xBu);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to destroy MCTF %p %lld %p %d\n", v14, 11, v15, "AVE_Plugin_MCTF_Finalize", 112, "ret == 0", a1, v9, v8, v12);
          v16 = sub_66A18();
          v33 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy MCTF %p %lld %p %d", v16, 11, v33, "AVE_Plugin_MCTF_Finalize");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to destroy MCTF %p %lld %p %d", v14, 11, v15, "AVE_Plugin_MCTF_Finalize");
        }
      }
    }

    else
    {
      if (sub_56A8C(0xBu, 4))
      {
        v21 = sub_56AD0(0xBu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d\n", v22, 11, v23, "AVE_Plugin_MCTF_Finalize", 89, "pPI != __null", a1, 0, 0);
          v24 = sub_66A18();
          v35 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d", v24, 11, v35);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d", v22, 11, v23);
        }
      }

      v9 = 0;
      v12 = 4294966296;
    }

    kdebug_trace();
    sub_4230C(*v8);
    sub_42290(*v8);
    *v8 = 0;
  }

  else
  {
    if (sub_56A8C(0xBu, 4))
    {
      v17 = sub_56AD0(0xBu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d\n", v18, 11, v19, "AVE_Plugin_MCTF_Finalize", 84, "object != __null", 0, 0, 0);
        v20 = sub_66A18();
        v34 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v20, 11, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d", v18, 11, v19);
      }
    }

    v9 = 0;
    v12 = 4294966295;
  }

  v25 = sub_66A18() - v2;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 6;
  }

  v27 = sub_668C8(v12);
  if (v12)
  {
    v28 = 4;
  }

  else
  {
    v28 = v26;
  }

  if (sub_56A8C(0xBu, v28))
  {
    v29 = sub_56AD0(0xBu);
    v30 = sub_66A18();
    v31 = sub_56B04(v28);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %lld %d %d\n", v30, 11, v31, "AVE_Plugin_MCTF_Finalize", a1, v9, v25, v12, v27);
      v30 = sub_66A18();
      sub_56B04(v28);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %lld %d %d", v30, 11);
  }
}

uint64_t sub_682F4(const void *a1, const __CFString *a2, const void *a3, const void *a4)
{
  v8 = sub_66A18();
  if (sub_56A8C(0xBu, 7))
  {
    v9 = sub_56AD0(0xBu);
    v10 = sub_66A18();
    v11 = sub_56B04(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %lld\n", v10, 11, v11, "AVE_Plugin_MCTF_CopyProperty", a1, a2, a3, a4, 0);
      v12 = sub_66A18();
      v34 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v12, 11, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %lld", v10, 11, v11);
    }
  }

  if (a1 && a2 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_422D8(*DerivedStorage);
      v15 = v14[3];
      kdebug_trace();
      v16 = sub_27D30(v14, a3, a2, a4);
    }

    else
    {
      if (sub_56A8C(0xBu, 4))
      {
        v21 = sub_56AD0(0xBu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %p %lld %d\n", v22, 11, v23, "AVE_Plugin_MCTF_CopyProperty", 220, "pPI != __null", a1, a2, a3, a4, 0, 0);
          v24 = sub_66A18();
          v36 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %p %lld %d", v24, 11, v36, "AVE_Plugin_MCTF_CopyProperty", 220, "pPI != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %p %lld %d", v22, 11, v23, "AVE_Plugin_MCTF_CopyProperty", 220, "pPI != __null");
        }
      }

      v15 = 0;
      v16 = 4294966296;
    }

    kdebug_trace();
    sub_4230C(*v14);
  }

  else
  {
    if (sub_56A8C(0xBu, 4))
    {
      v17 = sub_56AD0(0xBu);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d\n", v18, 11, v19, "AVE_Plugin_MCTF_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null", a1, a2, a3, a4, 0, 0);
        v20 = sub_66A18();
        v35 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v20, 11, v35, "AVE_Plugin_MCTF_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %lld %d", v18, 11, v19, "AVE_Plugin_MCTF_CopyProperty", 215, "object != __null && propertyKey != __null && propertyValueOut != __null");
      }
    }

    v15 = 0;
    v16 = 4294966295;
  }

  v25 = sub_66A18() - v8;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = sub_668C8(v16);
  if (v16)
  {
    v26 = 4;
  }

  if (sub_56A8C(0xBu, v26))
  {
    v28 = a2;
    v29 = a3;
    v30 = sub_56AD0(0xBu);
    v38 = sub_66A18();
    v31 = sub_56B04(v26);
    if (v30)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d\n", v38, 11, v31, "AVE_Plugin_MCTF_CopyProperty", a1, v28, v29, a4, v15, v25, v16, v27);
      v32 = sub_66A18();
      v37 = sub_56B04(v26);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v32, 11, v37, "AVE_Plugin_MCTF_CopyProperty", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %lld %lld %d %d", v38, 11, v31, "AVE_Plugin_MCTF_CopyProperty", a1);
    }
  }

  return v27;
}

uint64_t sub_687D0(const void *a1, const __CFString *a2, const void *a3)
{
  v6 = sub_66A18();
  if (sub_56A8C(0xBu, 7))
  {
    v7 = sub_56AD0(0xBu);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld\n", v8, 11, v9, "AVE_Plugin_MCTF_SetProperty", a1, a2, a3, 0);
      v8 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld", v8, 11);
  }

  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v11 = DerivedStorage;
      sub_422D8(*DerivedStorage);
      v12 = v11[3];
      kdebug_trace();
      v13 = sub_28000(v11, a2, a3);
      kdebug_trace();
      sub_4230C(*v11);
    }

    else
    {
      if (sub_56A8C(0xBu, 4))
      {
        v18 = sub_56AD0(0xBu);
        v19 = sub_66A18();
        v20 = sub_56B04(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %lld %d\n", v19, 11, v20, "AVE_Plugin_MCTF_SetProperty", 163, "pPI != __null", a1, a2, a3, 0, 0);
          v21 = sub_66A18();
          v31 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %lld %d", v21, 11, v31, "AVE_Plugin_MCTF_SetProperty", 163);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %p %lld %d", v19, 11, v20, "AVE_Plugin_MCTF_SetProperty", 163);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }
  }

  else
  {
    if (sub_56A8C(0xBu, 4))
    {
      v14 = sub_56AD0(0xBu);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d\n", v15, 11, v16, "AVE_Plugin_MCTF_SetProperty", 158, "object != __null && propertyKey != __null && propertyValue != __null", a1, a2, a3, 0, 0);
        v17 = sub_66A18();
        v30 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v17, 11, v30, "AVE_Plugin_MCTF_SetProperty", 158);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d", v15, 11, v16, "AVE_Plugin_MCTF_SetProperty", 158);
      }
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v22 = sub_66A18() - v6;
  if (v22 >= 50000)
  {
    v23 = 5;
  }

  else
  {
    v23 = 7;
  }

  v24 = sub_668C8(v13);
  if (v13)
  {
    v23 = 4;
  }

  if (sub_56A8C(0xBu, v23))
  {
    v25 = sub_56AD0(0xBu);
    v26 = sub_66A18();
    v27 = sub_56B04(v23);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d\n", v26, 11, v27, "AVE_Plugin_MCTF_SetProperty", a1, a2, a3, v12, v22, v13, v24);
      v28 = sub_66A18();
      v32 = sub_56B04(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v28, 11, v32, "AVE_Plugin_MCTF_SetProperty");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %lld %d %d", v26, 11, v27, "AVE_Plugin_MCTF_SetProperty");
    }
  }

  return v13;
}

uint64_t sub_68C3C(const void *a1, const void *a2, unint64_t a3)
{
  v3 = a3;
  v6 = HIDWORD(a3);
  v38 = 0;
  v7 = sub_66A18();
  if (sub_56A8C(0xDu, 6))
  {
    v8 = sub_56AD0(0xDu);
    v9 = sub_66A18();
    v10 = sub_56B04(6);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d %lld\n", v9, 13, v10, "AVE_Plugin_MCTF_StartSession", a1, a2, v3, v6, 0);
      v9 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d %lld", v9, 13);
  }

  if (a1 && a2 && v3 >= 1 && v6 > 0)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = DerivedStorage;
    if (DerivedStorage)
    {
      v38 = __PAIR64__(v6, v3);
      sub_422D8(*DerivedStorage);
      v13 = v12[3];
      kdebug_trace();
      v12[1] = a2;
      v14 = sub_24F28(v12, &v38);
      if (!v14)
      {
LABEL_27:
        kdebug_trace();
        sub_4230C(*v12);
        goto LABEL_28;
      }

      if (sub_56A8C(0xBu, 4))
      {
        v15 = sub_56AD0(0xBu);
        v36 = sub_66A18();
        v16 = sub_56B04(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to start MCTF %p %p %d %d %lld %p %d\n", v36, 11, v16, "AVE_Plugin_MCTF_StartSession", 297, "ret == 0", a1, a2, v3, v6, *&v13, v12, v14);
          v37 = sub_66A18();
          v33 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start MCTF %p %p %d %d %lld %p %d", v37, 11, v33, "AVE_Plugin_MCTF_StartSession", 297, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start MCTF %p %p %d %d %lld %p %d", v36, 11, v16, "AVE_Plugin_MCTF_StartSession", 297, "ret == 0");
        }
      }
    }

    else
    {
      if (sub_56A8C(0xDu, 4))
      {
        v21 = sub_56AD0(0xDu);
        v22 = sub_66A18();
        v23 = sub_56B04(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %d %d %lld\n", v22, 13, v23, "AVE_Plugin_MCTF_StartSession", 279, "pPI != __null", a1, a2, v3, v6, 0);
          v24 = sub_66A18();
          v35 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %d %d %lld", v24, 13, v35, "AVE_Plugin_MCTF_StartSession");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %d %d %lld", v22, 13, v23, "AVE_Plugin_MCTF_StartSession");
        }
      }

      v14 = 4294966296;
    }

    v12[1] = 0;
    goto LABEL_27;
  }

  if (sub_56A8C(0xDu, 4))
  {
    v17 = sub_56AD0(0xDu);
    v18 = sub_66A18();
    v19 = sub_56B04(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %d\n", v18, 13, v19, "AVE_Plugin_MCTF_StartSession", 274, "filter != __null && session != __null && dimensions.width > 0 && dimensions.height > 0", a1, a2, v3, v6, 0);
      v20 = sub_66A18();
      v34 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %d", v20, 13, v34, "AVE_Plugin_MCTF_StartSession");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %d %d", v18, 13, v19, "AVE_Plugin_MCTF_StartSession");
    }
  }

  v14 = 4294966295;
LABEL_28:
  if ((sub_66A18() - v7) >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 6;
  }

  v26 = sub_668C8(v14);
  if (v14)
  {
    v27 = 4;
  }

  else
  {
    v27 = v25;
  }

  if (sub_56A8C(0xDu, v27))
  {
    v28 = sub_56AD0(0xDu);
    v29 = sub_66A18();
    v30 = sub_56B04(v27);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d %d\n", v29, 13, v30, "AVE_Plugin_MCTF_StartSession", a1, a2, v3, v6, v14);
      v31 = sub_66A18();
      sub_56B04(v27);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %d", v31, 13);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d %d", v29, 13);
    }
  }

  return v26;
}

uint64_t sub_69248(const void *a1, const void *a2, const void *a3, void *a4, const void *a5)
{
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v10 = sub_66A18();
  if (sub_56A8C(0xDu, 8))
  {
    v11 = sub_56AD0(0xDu);
    v12 = sub_66A18();
    v13 = sub_56B04(8);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d %p\n", v12, 13, v13, "AVE_Plugin_MCTF_ProcessFrame", a1, a2, a3, *a4, *(a4 + 2), a5);
      v14 = sub_66A18();
      v40 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d %p", v14, 13, v40, "AVE_Plugin_MCTF_ProcessFrame");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d %p", v12, 13, v13, "AVE_Plugin_MCTF_ProcessFrame");
    }
  }

  v45 = a4;
  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = DerivedStorage;
    if (DerivedStorage)
    {
      v46 = *a4;
      v47 = a4[1];
      v48 = a4[2];
      sub_422D8(*DerivedStorage);
      v17 = *(v16 + 24);
      kdebug_trace();
      v21 = sub_25E98(v16, a2, a3, &v46, a5, v18, v19, v20);
    }

    else
    {
      if (sub_56A8C(0xDu, 4))
      {
        v26 = sub_56AD0(0xDu);
        v27 = sub_66A18();
        v28 = sub_56B04(4);
        if (v26)
        {
          v29 = a3;
          v30 = a2;
          v31 = v29;
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %d\n", v27, 13, v28, "AVE_Plugin_MCTF_ProcessFrame", 358, "pPI != __null", a1, 0);
          v27 = sub_66A18();
          sub_56B04(4);
          v32 = v31;
          a2 = v30;
          a3 = v32;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %d", v27, 13);
      }

      v17 = 0;
      v21 = 4294966296;
    }

    kdebug_trace();
    sub_4230C(*v16);
  }

  else
  {
    if (sub_56A8C(0xDu, 4))
    {
      v22 = sub_56AD0(0xDu);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %p %d\n", v23, 13, v24, "AVE_Plugin_MCTF_ProcessFrame", 353, "filter != __null && frame != __null && pixelBuffer != __null", a1, a2, a3, *a4, *(a4 + 2), a5, 0);
        v25 = sub_66A18();
        v41 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %p %d", v25, 13, v41, "AVE_Plugin_MCTF_ProcessFrame", 353, "filter != __null && frame != __null && pixelBuffer != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %p %d", v23, 13, v24, "AVE_Plugin_MCTF_ProcessFrame", 353, "filter != __null && frame != __null && pixelBuffer != __null", a1);
      }
    }

    v17 = 0;
    v21 = 4294966295;
  }

  v33 = sub_66A18() - v10;
  if (v33 >= 50000)
  {
    v34 = 5;
  }

  else
  {
    v34 = 8;
  }

  v35 = sub_668C8(v21);
  if (v21)
  {
    v36 = 4;
  }

  else
  {
    v36 = v34;
  }

  if (sub_56A8C(0xDu, v36))
  {
    v37 = sub_56AD0(0xDu);
    v43 = sub_66A18();
    v38 = sub_56B04(v36);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d %p %lld %lld %d %d\n", v43, 13, v38, "AVE_Plugin_MCTF_ProcessFrame", a1, a2, a3, *v45, *(v45 + 2), a5, v17, v33, v21, v35);
      v44 = sub_66A18();
      v42 = sub_56B04(v36);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d %p %lld %lld %d %d", v44, 13, v42, "AVE_Plugin_MCTF_ProcessFrame", a1, a2, a3);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d %p %lld %lld %d %d", v43, 13, v38, "AVE_Plugin_MCTF_ProcessFrame", a1, a2, a3);
    }
  }

  return v35;
}

uint64_t sub_697A0(const void *a1, void *a2)
{
  v4 = sub_66A18();
  if (sub_56A8C(0xBu, 7))
  {
    v5 = sub_56AD0(0xBu);
    v6 = sub_66A18();
    v7 = sub_56B04(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, v7, "AVE_Plugin_MCTF_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_422D8(*DerivedStorage);
      v10 = v9[3];
      kdebug_trace();
      v11 = sub_275BC(v9);
      if (v11 && sub_56A8C(0xBu, 4))
      {
        v12 = sub_56AD0(0xBu);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete MCTF %p %lld %d %lld %p %d\n", v13, 11, v14, "AVE_Plugin_MCTF_CompleteFrames", 438, "ret == 0", a1, *a2, *(a2 + 2), v10, v9, v11);
          v15 = sub_66A18();
          v33 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete MCTF %p %lld %d %lld %p %d", v15, 11, v33, "AVE_Plugin_MCTF_CompleteFrames", 438, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete MCTF %p %lld %d %lld %p %d", v13, 11, v14, "AVE_Plugin_MCTF_CompleteFrames", 438, "ret == 0");
        }
      }
    }

    else
    {
      if (sub_56A8C(0xBu, 4))
      {
        v20 = sub_56AD0(0xBu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d\n", v21, 11, v22, "AVE_Plugin_MCTF_CompleteFrames", 426, "pPI != __null", a1, 0, 0);
          v23 = sub_66A18();
          v35 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d", v23, 11, v35);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %lld %d", v21, 11, v22);
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_4230C(*v9);
  }

  else
  {
    if (sub_56A8C(0xBu, 4))
    {
      v16 = sub_56AD0(0xBu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v17, 11, v18, "AVE_Plugin_MCTF_CompleteFrames", 421, "filter != __null", 0, *a2, *(a2 + 2), 0, 0);
        v19 = sub_66A18();
        v34 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v19, 11, v34, "AVE_Plugin_MCTF_CompleteFrames", 421);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v17, 11, v18, "AVE_Plugin_MCTF_CompleteFrames", 421);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = sub_66A18() - v4;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = sub_668C8(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (sub_56A8C(0xBu, v25))
  {
    v27 = sub_56AD0(0xBu);
    v28 = sub_66A18();
    v29 = sub_56B04(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_MCTF_CompleteFrames", a1, *a2, *(a2 + 2), v10, v24, v11, v26);
      v30 = sub_66A18();
      v31 = sub_56B04(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v30, 11, v31, "AVE_Plugin_MCTF_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v28, 11, v29, "AVE_Plugin_MCTF_CompleteFrames");
    }
  }

  return v26;
}

uint64_t sub_69D20(const void *a1, void *a2)
{
  v4 = sub_66A18();
  if (sub_56A8C(0xBu, 7))
  {
    v5 = sub_56AD0(0xBu);
    v6 = sub_66A18();
    v7 = sub_56B04(7);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %lld\n", v6, 11, v7, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary", a1, a2, 0);
      v6 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %lld", v6);
  }

  if (a1 && a2)
  {
    *a2 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = DerivedStorage;
    if (DerivedStorage)
    {
      sub_422D8(*DerivedStorage);
      v10 = *(v9 + 24);
      kdebug_trace();
      v11 = sub_279B8(v9, a2);
      if (v11 && sub_56A8C(0xBu, 4))
      {
        v12 = sub_56AD0(0xBu);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF property dictionary %p %p %lld %d\n", v13, 11, v14, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary", 501, "ret == 0", a1, a2, v10, v11);
          v15 = sub_66A18();
          v32 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF property dictionary %p %p %lld %d", v15, 11, v32, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF property dictionary %p %p %lld %d", v13, 11, v14, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary");
        }
      }
    }

    else
    {
      if (sub_56A8C(0xBu, 4))
      {
        v20 = sub_56AD0(0xBu);
        v21 = sub_66A18();
        v22 = sub_56B04(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %lld %d\n", v21, 11, v22, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary", 489, "pPI != __null", a1, a2, 0, 0);
          v23 = sub_66A18();
          v34 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %lld %d", v23, 11, v34, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get MCTF %p %p %lld %d", v21, 11, v22, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary");
        }
      }

      v10 = 0;
      v11 = 4294966296;
    }

    kdebug_trace();
    sub_4230C(*v9);
  }

  else
  {
    if (sub_56A8C(0xBu, 4))
    {
      v16 = sub_56AD0(0xBu);
      v17 = sub_66A18();
      v18 = sub_56B04(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d\n", v17, 11, v18, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary", 482, "filter != __null && supportedPropertyDictionaryOut != __null", a1, a2, 0, 0);
        v19 = sub_66A18();
        v33 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v19, 11, v33, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %lld %d", v17, 11, v18, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary");
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  v24 = sub_66A18() - v4;
  if (v24 >= 50000)
  {
    v25 = 5;
  }

  else
  {
    v25 = 7;
  }

  v26 = sub_668C8(v11);
  if (v11)
  {
    v25 = 4;
  }

  if (sub_56A8C(0xBu, v25))
  {
    v27 = sub_56AD0(0xBu);
    v28 = sub_66A18();
    v29 = sub_56B04(v25);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d\n", v28, 11, v29, "AVE_Plugin_MCTF_CopySupportedPropertyDictionary", a1, a2, v10, v24, v11, v26);
      v30 = sub_66A18();
      v35 = sub_56B04(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v30, 11, v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %lld %lld %d %d", v28, 11, v29);
    }
  }

  return v26;
}

double sub_6A250(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_6A278(pthread_t *a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "Uninit", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v5 = sub_6A884(a1);
  v6 = a1[6];
  if (v6)
  {
    v5 = sub_42290(v6);
    a1[6] = 0;
  }

  v7 = a1[1];
  if (v7)
  {
    v5 = sub_42290(v7);
    a1[1] = 0;
  }

  if (v5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  if (sub_56A8C(0x24u, v8))
  {
    v9 = sub_56AD0(0x24u);
    v10 = sub_66A18();
    v11 = sub_56B04(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v10, 36, v11, "AVE_DAL", "Uninit", a1, *a1, v5);
      v10 = sub_66A18();
      sub_56B04(v8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v10, 36);
  }

  return v5;
}

uint64_t sub_6A4C0(void *a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "Init", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v5 = sub_42228();
  if (v5)
  {
    v6 = v5;
    v7 = sub_42228();
    if (v7)
    {
      a1[1] = v6;
      a1[6] = v7;
    }

    else if (sub_56A8C(0x24u, 4))
    {
      v11 = sub_56AD0(0x24u);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld\n", v12, 36, v13, "AVE_DAL", "Init", 102, "pThreadMutex != __null", a1, *a1);
        v14 = sub_66A18();
        v19 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v14, 36, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v12, 36, v13);
      }
    }
  }

  else if (sub_56A8C(0x24u, 4))
  {
    v8 = sub_56AD0(0x24u);
    v9 = sub_66A18();
    v10 = sub_56B04(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld\n", v9, 36, v10, "AVE_DAL", "Init", 98, "pMutex != __null", a1, *a1);
      v9 = sub_66A18();
      v10 = sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld", v9, 36, v10);
  }

  if (sub_56A8C(0x24u, 6))
  {
    v15 = sub_56AD0(0x24u);
    v16 = sub_66A18();
    v17 = sub_56B04(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v16, 36, v17, "AVE_DAL", "Init", a1, *a1, 0);
      v16 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v16, 36);
  }

  return 0;
}

uint64_t sub_6A884(pthread_t *a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "TearDownIPC", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  sub_6BFD8(a1);
  v5 = sub_6AF78(a1);
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  if (sub_56A8C(0x24u, v6))
  {
    v7 = sub_56AD0(0x24u);
    v8 = sub_66A18();
    v9 = sub_56B04(v6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "TearDownIPC", a1, *a1, v5);
      v8 = sub_66A18();
      sub_56B04(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return v5;
}

uint64_t sub_6AA80(uint64_t *a1, int a2, int a3)
{
  v20 = 0;
  if (a2 < 1 || a3 <= 0)
  {
    if (sub_56A8C(0x24u, 4))
    {
      v7 = sub_56AD0(0x24u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v8, 36, v9, "AVE_DAL", "CreatePool", 178, "num > 0 && size > 0", a1, *a1, a2, a3);
        v10 = sub_66A18();
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v10, 36, v18, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v8, 36, v9, "AVE_DAL");
      }
    }

    v6 = 4294966295;
  }

  else
  {
    if (a1[4])
    {
      return 0;
    }

    v11 = sub_4182C(3);
    v12 = sub_44EC4(*a1, 0, (a3 * a2), v11[1], &v20);
    if (!v12)
    {
      operator new();
    }

    v6 = v12;
    if (sub_56A8C(0x24u, 4))
    {
      v13 = sub_56AD0(0x24u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d\n", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0", a1, *a1, *v11, v11[1], a2, a3, v6);
        v16 = sub_66A18();
        v19 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v16, 36, v19, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0");
      }
    }
  }

  if (v20)
  {
    sub_452AC(v20);
  }

  return v6;
}

uint64_t sub_6AF78(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_425C4(v2);
    if (v3 && sub_56A8C(0x24u, 4))
    {
      v4 = sub_56AD0(0x24u);
      v5 = sub_66A18();
      v6 = sub_56B04(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %d\n", v5, 36, v6, "AVE_DAL", "DestroyPool", 243, a1, *a1, a1[4], v3);
        v7 = sub_66A18();
        v11 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", v7, 36, v11, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", v5, 36, v6, "AVE_DAL");
      }
    }

    v8 = a1[4];
    if (v8)
    {
      sub_428A4(v8);
      operator delete();
    }

    a1[4] = 0;
  }

  else
  {
    v3 = 0;
  }

  v9 = a1[3];
  if (v9)
  {
    v3 = sub_452AC(v9);
    a1[3] = 0;
  }

  a1[2] = 0;
  return v3;
}

uint64_t sub_6B100(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", v7, 36, v8, "AVE_DAL", "SetUpIPC", a1, *a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", v7, 36);
  }

  if (a2 < 1 || a3 <= 0)
  {
    if (sub_56A8C(0x24u, 4))
    {
      v15 = sub_56AD0(0x24u);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "SetUpIPC", 277, "num > 0 && size > 0", a1, *a1, a2, a3);
        v18 = sub_66A18();
        v29 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v29, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v16, 36, v17, "AVE_DAL");
      }
    }

    v10 = 4294966295;
    goto LABEL_26;
  }

  v9 = sub_6AA80(a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    if (sub_56A8C(0x24u, 4))
    {
      v11 = sub_56AD0(0x24u);
      v12 = sub_66A18();
      v13 = sub_56B04(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d\n", v12, 36, v13, "AVE_DAL", "SetUpIPC", 282, "ret == 0", a1, *a1, a2, a3, v10);
        v14 = sub_66A18();
        v28 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d", v14, 36, v28, "AVE_DAL", "SetUpIPC");
        goto LABEL_26;
      }

      v36 = a3;
      v37 = v10;
      v34 = *a1;
      v35 = a2;
      v33 = a1;
      v32 = 282;
      v30 = v13;
      v21 = "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d";
LABEL_25:
      syslog(3, v21, v12, 36, v30, "AVE_DAL", "SetUpIPC", v32, "ret == 0", v33, v34, v35, v36, v37);
    }
  }

  else
  {
    v10 = sub_6B6B0(a1);
    if (!v10)
    {
      v22 = 6;
      goto LABEL_27;
    }

    if (sub_56A8C(0x24u, 4))
    {
      v19 = sub_56AD0(0x24u);
      v12 = sub_66A18();
      v20 = sub_56B04(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d\n", v12, 36, v20, "AVE_DAL", "SetUpIPC", 286, "ret == 0", a1, *a1, a2, a3, v10);
        v12 = sub_66A18();
        v20 = sub_56B04(4);
      }

      v36 = a3;
      v37 = v10;
      v34 = *a1;
      v35 = a2;
      v33 = a1;
      v32 = 286;
      v30 = v20;
      v21 = "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d";
      goto LABEL_25;
    }
  }

LABEL_26:
  sub_6BFD8(a1);
  sub_6AF78(a1);
  v22 = 4;
LABEL_27:
  if (sub_56A8C(0x24u, v22))
  {
    v23 = sub_56AD0(0x24u);
    v24 = sub_66A18();
    v25 = sub_56B04(v22);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v24, 36, v25, "AVE_DAL", "SetUpIPC", a1, *a1, a2, a3, v10);
      v26 = sub_66A18();
      v31 = sub_56B04(v22);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v26, 36, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v24, 36, v25);
    }
  }

  return v10;
}

uint64_t sub_6B6B0(pthread_t *a1)
{
  memset(&v56, 0, sizeof(v56));
  object = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "CreateRecvThread", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[9])
  {
    goto LABEL_7;
  }

  v52 = a1;
  LODWORD(v53) = 0;
  object = voucher_copy();
  v7 = pthread_attr_init(&v56);
  if (v7)
  {
    v8 = v7;
    v6 = 4;
    if (!sub_56A8C(0x24u, 4))
    {
LABEL_21:
      v5 = 4294966296;
      goto LABEL_31;
    }

    v9 = sub_56AD0(0x24u);
    v10 = sub_66A18();
    v11 = sub_56B04(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d\n", v10, 36, v11, "AVE_DAL", "CreateRecvThread", 1635, "res == 0", a1, *a1, v8, 0);
      v12 = sub_66A18();
      v6 = 4;
      v49 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v12, 36, v49, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d", v10, 36, v11, "AVE_DAL");
    goto LABEL_29;
  }

  v13 = pthread_attr_getschedparam(&v56, &v55);
  if (v13)
  {
    v14 = v13;
    v6 = 4;
    if (!sub_56A8C(0x24u, 4))
    {
      goto LABEL_21;
    }

    v15 = sub_56AD0(0x24u);
    v16 = sub_66A18();
    v17 = sub_56B04(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "CreateRecvThread", 1639, "res == 0", a1, *a1, v14, 0);
      v18 = sub_66A18();
      v6 = 4;
      v50 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v18, 36, v50, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d", v16, 36, v17, "AVE_DAL");
    goto LABEL_29;
  }

  v55.sched_priority = 47;
  v19 = pthread_attr_setschedparam(&v56, &v55);
  if (v19)
  {
    v20 = v19;
    v6 = 4;
    if (!sub_56A8C(0x24u, 4))
    {
      goto LABEL_21;
    }

    v21 = sub_56AD0(0x24u);
    v22 = sub_66A18();
    v23 = sub_56B04(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d\n", v22, 36, v23, "AVE_DAL", "CreateRecvThread", 1645, "res == 0", a1, *a1, v20, 0);
      v24 = sub_66A18();
      v6 = 4;
      v51 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v24, 36, v51, "AVE_DAL");
      goto LABEL_21;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d", v22, 36, v23, "AVE_DAL");
LABEL_29:
    v5 = 4294966296;
LABEL_30:
    v6 = 4;
    goto LABEL_31;
  }

  v25 = pthread_create(a1 + 9, &v56, sub_71E1C, &v52);
  if (v25)
  {
    v26 = v25;
    v6 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v27 = sub_56AD0(0x24u);
      v28 = sub_66A18();
      v29 = sub_56B04(4);
      v30 = *a1;
      if (!v27)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v28, 36, v29, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", a1, v30, v26, 0);
        v5 = 4294966292;
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d\n", v28, 36, v29, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", a1, v30, v26, 0);
      v31 = sub_66A18();
      v6 = 4;
      v32 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v31, 36, v32, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", a1, *a1, v26, 0);
    }

    v5 = 4294966292;
    goto LABEL_31;
  }

  if (v53)
  {
    v37 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      v37 = v38 + 1;
      HIDWORD(v39) = 652835029 * (v38 + 1);
      LODWORD(v39) = HIDWORD(v39);
      if ((v39 >> 2) <= 0x83126E && sub_56A8C(0x24u, 5))
      {
        v40 = sub_56AD0(0x24u);
        v41 = sub_66A18();
        v42 = sub_56B04(5);
        if (v40)
        {
          printf("%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d\n", v41, 36, v42, "AVE_DAL", "CreateRecvThread", 1658, a1, *a1, v38 + 1);
          v41 = sub_66A18();
          v42 = sub_56B04(5);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d", v41, 36, v42, "AVE_DAL", "CreateRecvThread", 1658, a1, *a1, v38 + 1);
      }

      usleep(0x3E8u);
      if (v38 > 0xBB6)
      {
        break;
      }

      ++v38;
    }

    while (!v53);
  }

  if (v53)
  {
LABEL_7:
    v5 = 0;
    v6 = 6;
    goto LABEL_31;
  }

  v6 = 4;
  if (sub_56A8C(0x24u, 4))
  {
    v43 = sub_56AD0(0x24u);
    v44 = sub_66A18();
    v45 = sub_56B04(4);
    v46 = *a1;
    if (!v43)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v44, 36, v45, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", a1, v46, v37, 0);
      v5 = 4294966279;
      goto LABEL_30;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d\n", v44, 36, v45, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", a1, v46, v37, 0);
    v47 = sub_66A18();
    v6 = 4;
    v48 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v47, 36, v48, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", a1, *a1, v37, 0);
  }

  v5 = 4294966279;
LABEL_31:
  if (object != -1)
  {
    os_release(object);
  }

  pthread_attr_destroy(&v56);
  if (sub_56A8C(0x24u, v6))
  {
    v33 = sub_56AD0(0x24u);
    v34 = sub_66A18();
    v35 = sub_56B04(v6);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v34, 36, v35, "AVE_DAL", "CreateRecvThread", a1, *a1, v5);
      v34 = sub_66A18();
      sub_56B04(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v34, 36);
  }

  return v5;
}

uint64_t sub_6BFD8(pthread_t *a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "DestroyRecvThread", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[9])
  {
    sub_71C44(a1);
    pthread_join(a1[9], 0);
    a1[9] = 0;
  }

  if (sub_56A8C(0x24u, 6))
  {
    v5 = sub_56AD0(0x24u);
    v6 = sub_66A18();
    v7 = sub_56B04(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 36, v7, "AVE_DAL", "DestroyRecvThread", a1, *a1, 0);
      v6 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 36);
  }

  return 0;
}

uint64_t sub_6C1C4(void *a1, int a2, void *a3)
{
  v40 = a2;
  if (sub_56A8C(0x24u, 8))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", v7, 36, v8, "AVE_DAL", "Alloc", a1, *a1, a2, a3);
      v9 = sub_66A18();
      v37 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v9, 36, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v7, 36, v8);
    }
  }

  if (a2 >= 1 && a3 && *(a1 + 5) >= a2)
  {
    *a3 = 0;
    sub_422D8(a1[1]);
    v10 = a1[4];
    if (v10)
    {
      v11 = sub_4311C(v10, a3, &v40);
      if (v11)
      {
        if (sub_56A8C(0x24u, 4))
        {
          v12 = sub_56AD0(0x24u);
          v13 = sub_66A18();
          v14 = sub_56B04(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d\n", v13, 36, v14, "AVE_DAL", "Alloc", 357, "ret == 0", a1, *a1, a3, v40, v11);
            v15 = sub_66A18();
            v38 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v15, 36, v38, "AVE_DAL", "Alloc");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v13, 36, v14, "AVE_DAL", "Alloc");
          }
        }

        sub_4230C(a1[1]);
        v16 = 4;
      }

      else
      {
        sub_4230C(a1[1]);
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v30 = sub_56AD0(0x24u);
        v31 = sub_66A18();
        v32 = sub_56B04(4);
        v33 = *a1;
        if (v30)
        {
          v34 = a2;
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", a1, v33, a2, a3);
          v35 = sub_66A18();
          v16 = 4;
          v36 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v35, 36, v36, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", a1, *a1, v34, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", a1, v33, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v17 = sub_56AD0(0x24u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      v20 = *a1;
      v21 = *(a1 + 5);
      if (v17)
      {
        v22 = a2;
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p\n", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", a1, v20, v21, a2, a3);
        v23 = sub_66A18();
        v16 = 4;
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v23, 36, v24, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", a1, *a1, *(a1 + 5), v22, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", a1, v20, v21, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (sub_56A8C(0x24u, v16))
  {
    v25 = sub_56AD0(0x24u);
    v26 = sub_66A18();
    v27 = sub_56B04(v16);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v26, 36, v27, "AVE_DAL", "Alloc", a1, *a1, v40, a3, v11);
      v28 = sub_66A18();
      v39 = sub_56B04(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v28, 36, v39, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v26, 36, v27, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t sub_6C774(void *a1, uint64_t *a2)
{
  if (sub_56A8C(0x24u, 8))
  {
    v4 = sub_56AD0(0x24u);
    v5 = sub_66A18();
    v6 = sub_56B04(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", v5, 36, v6, "AVE_DAL", "Free", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", v5, 36);
  }

  if (a2)
  {
    sub_422D8(a1[1]);
    v7 = a1[4];
    if (v7)
    {
      v8 = sub_43464(v7, a2);
      if (v8)
      {
        if (sub_56A8C(0x24u, 4))
        {
          v9 = sub_56AD0(0x24u);
          v10 = sub_66A18();
          v11 = sub_56B04(4);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d\n", v10, 36, v11, "AVE_DAL", "Free", 398, "ret == 0", a1, *a1, a2, v8);
            v12 = sub_66A18();
            v29 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v12, 36, v29, "AVE_DAL", "Free");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v10, 36, v11, "AVE_DAL", "Free");
          }
        }

        sub_4230C(a1[1]);
        v13 = 4;
      }

      else
      {
        sub_4230C(a1[1]);
        v13 = 8;
      }
    }

    else
    {
      v13 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v19 = sub_56AD0(0x24u);
        v20 = sub_66A18();
        v21 = sub_56B04(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v20, 36, v21, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", a1, *a1, a2);
          v22 = sub_66A18();
          v13 = 4;
          v23 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v22, 36, v23, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", a1, *a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v20, 36, v21, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", a1, *a1, a2);
          v13 = 4;
        }
      }

      v8 = 4294966285;
    }
  }

  else
  {
    v13 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v14 = sub_56AD0(0x24u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p\n", v15, 36, v16, "AVE_DAL", "Free", 387, "addr != 0", a1, *a1, 0);
        v17 = sub_66A18();
        v13 = 4;
        v18 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", a1, *a1, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v15, 36, v16, "AVE_DAL", "Free", 387, "addr != 0", a1, *a1, 0);
        v13 = 4;
      }
    }

    v8 = 4294966295;
  }

  if (sub_56A8C(0x24u, v13))
  {
    v24 = sub_56AD0(0x24u);
    v25 = sub_66A18();
    v26 = sub_56B04(v13);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v25, 36, v26, "AVE_DAL", "Free", a1, *a1, a2, v8);
      v27 = sub_66A18();
      v30 = sub_56B04(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v27, 36, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v25, 36, v26);
    }
  }

  return v8;
}

uint64_t sub_6CCB0(uint64_t *a1, int a2, void *a3)
{
  if (sub_56A8C(0x24u, 8))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", v7, 36, v8, "AVE_DAL", "Idx2Addr", a1, *a1, a2, a3);
      v9 = sub_66A18();
      v34 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v9, 36, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v7, 36, v8);
    }
  }

  if (a2 < 0 || !a3)
  {
    v16 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v17 = sub_56AD0(0x24u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p\n", v18, 36, v19, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", a1, v20, a2, a3);
        v21 = sub_66A18();
        v16 = 4;
        v22 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v21, 36, v22, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v18, 36, v19, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", a1, v20, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    sub_422D8(a1[1]);
    v10 = a1[4];
    if (v10)
    {
      v11 = sub_43854(v10, a2, a3);
      if (v11)
      {
        if (sub_56A8C(0x24u, 4))
        {
          v12 = sub_56AD0(0x24u);
          v13 = sub_66A18();
          v14 = sub_56B04(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d\n", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443, "ret == 0", a1, *a1, a2, a3, v11);
            v15 = sub_66A18();
            v35 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v15, 36, v35, "AVE_DAL", "Idx2Addr", 443);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443);
          }
        }

        sub_4230C(a1[1]);
        v16 = 4;
      }

      else
      {
        sub_4230C(a1[1]);
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v23 = sub_56AD0(0x24u);
        v24 = sub_66A18();
        v25 = sub_56B04(4);
        v26 = *a1;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v24, 36, v25, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", a1, v26, a2, a3);
          v27 = sub_66A18();
          v16 = 4;
          v28 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v27, 36, v28, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", a1, *a1, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v24, 36, v25, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", a1, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  if (sub_56A8C(0x24u, v16))
  {
    v29 = sub_56AD0(0x24u);
    v30 = sub_66A18();
    v31 = sub_56B04(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v30, 36, v31, "AVE_DAL", "Idx2Addr", a1, *a1, a2, a3, v11);
      v32 = sub_66A18();
      v36 = sub_56B04(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v32, 36, v36, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v30, 36, v31, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t sub_6D25C(uint64_t *a1, const void *a2, _DWORD *a3)
{
  if (sub_56A8C(0x24u, 8))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", v7, 36, v8, "AVE_DAL", "Addr2Idx", a1, *a1, a2, a3);
      v9 = sub_66A18();
      v34 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v9, 36, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v7, 36, v8);
    }
  }

  if (a3)
  {
    sub_422D8(a1[1]);
    v10 = a1[4];
    if (v10)
    {
      v11 = sub_438D0(v10, a2, a3);
      if (v11)
      {
        if (sub_56A8C(0x24u, 4))
        {
          v12 = sub_56AD0(0x24u);
          v13 = sub_66A18();
          v14 = sub_56B04(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488, "ret == 0", a1, *a1, a2, a3, v11);
            v15 = sub_66A18();
            v35 = sub_56B04(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v15, 36, v35, "AVE_DAL", "Addr2Idx", 488);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488);
          }
        }

        sub_4230C(a1[1]);
        v16 = 4;
      }

      else
      {
        sub_4230C(a1[1]);
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v23 = sub_56AD0(0x24u);
        v24 = sub_66A18();
        v25 = sub_56B04(4);
        v26 = *a1;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p\n", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", a1, v26, a2, a3);
          v27 = sub_66A18();
          v16 = 4;
          v28 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v27, 36, v28, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", a1, *a1, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", a1, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v17 = sub_56AD0(0x24u);
      v18 = sub_66A18();
      v19 = sub_56B04(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", a1, v20, a2, 0);
        v21 = sub_66A18();
        v16 = 4;
        v22 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v21, 36, v22, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", a1, *a1, a2, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", a1, v20, a2, 0);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (sub_56A8C(0x24u, v16))
  {
    v29 = sub_56AD0(0x24u);
    v30 = sub_66A18();
    v31 = sub_56B04(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v30, 36, v31, "AVE_DAL", "Addr2Idx", a1, *a1, a2, a3, v11);
      v32 = sub_66A18();
      v36 = sub_56B04(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v32, 36, v36, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v30, 36, v31, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t sub_6D7CC(uint64_t *a1, const void *a2, const void *a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "SetCallback", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v23 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v23, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = 0;
    a1[15] = a2;
    a1[16] = a3;
    v11 = 6;
    goto LABEL_13;
  }

  v11 = 4;
  if (!sub_56A8C(0x24u, 4))
  {
    goto LABEL_11;
  }

  v12 = sub_56AD0(0x24u);
  v13 = sub_66A18();
  v14 = sub_56B04(4);
  v15 = *a1;
  if (v12)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", a1, v15, a2, a3);
    v16 = sub_66A18();
    v11 = 4;
    v17 = sub_56B04(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v16, 36, v17, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", a1, *a1, a2, a3);
LABEL_11:
    v10 = 4294966295;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", a1, v15, a2, a3);
  v10 = 4294966295;
  v11 = 4;
LABEL_13:
  if (sub_56A8C(0x24u, v11))
  {
    v18 = sub_56AD0(0x24u);
    v19 = sub_66A18();
    v20 = sub_56B04(v11);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v19, 36, v20, "AVE_DAL", "SetCallback", a1, *a1, a1[5], a2, a3, v10);
      v21 = sub_66A18();
      v24 = sub_56B04(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v21, 36, v24, "AVE_DAL", "SetCallback");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v19, 36, v20, "AVE_DAL", "SetCallback");
    }
  }

  return v10;
}

uint64_t sub_6DB14(uint64_t *a1, int a2, int a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", v7, 36, v8, "AVE_DAL", "UpdatePriorityPolicy", a1, *a1, a2, a3);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", v7, 36);
  }

  if ((a3 | a2) < 0)
  {
    v13 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v14 = sub_56AD0(0x24u);
      v15 = sub_66A18();
      v16 = sub_56B04(4);
      v17 = *a1;
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v15, 36, v16, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", a1, v17, a2, a3);
        v12 = 4294966295;
        v13 = 4;
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v15, 36, v16, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", a1, v17, a2, a3);
      v18 = sub_66A18();
      v13 = 4;
      v19 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v19, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", a1, *a1, a2, a3);
    }

    v12 = 4294966295;
    goto LABEL_25;
  }

  sub_422D8(a1[6]);
  if (a3 <= 59)
  {
    v9 = 33;
  }

  else
  {
    v9 = 15;
  }

  if (a3 <= 119)
  {
    v10 = v9;
  }

  else
  {
    v10 = 8;
  }

  if (a3 <= 239)
  {
    v11 = v10;
  }

  else
  {
    v11 = 4;
  }

  if (v11 != *(a1 + 15) || *(a1 + 14) != a2)
  {
    *(a1 + 14) = a2;
    *(a1 + 15) = v11;
    ++*(a1 + 16);
  }

  sub_4230C(a1[6]);
  v12 = 0;
  v13 = 6;
LABEL_25:
  if (sub_56A8C(0x24u, v13))
  {
    v20 = sub_56AD0(0x24u);
    v21 = sub_66A18();
    v22 = sub_56B04(v13);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v21, 36, v22, "AVE_DAL", "UpdatePriorityPolicy", a1, *a1, a2, a3, v12);
      v23 = sub_66A18();
      v25 = sub_56B04(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v23, 36, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v21, 36, v22);
    }
  }

  return v12;
}

uint64_t sub_6DEC4(uint64_t *a1, uint32_t a2)
{
  v26 = 0;
  if (sub_56A8C(0x24u, 6))
  {
    v4 = sub_56AD0(0x24u);
    v5 = sub_66A18();
    v6 = sub_56B04(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d\n", v5, 36, v6, "AVE_DAL", "UCCreate", a1, *a1, a2);
      v5 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d", v5, 36);
  }

  if (a2 - 1 >= 5)
  {
    v8 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v15 = sub_56AD0(0x24u);
      v16 = sub_66A18();
      v17 = sub_56B04(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d\n", v16, 36, v17, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v18 = sub_66A18();
        v8 = 4;
        v19 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v18, 36, v19, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d", v16, 36, v17, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v8 = 4;
      }
    }

    v7 = 4294966295;
  }

  else
  {
    v7 = sub_53B04(a2, &v26);
    if (v7)
    {
      v8 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v9 = sub_56AD0(0x24u);
        v10 = sub_66A18();
        v11 = sub_56B04(4);
        v12 = *a1;
        if (v9)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d\n", v10, 36, v11, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v12, a2, v7);
          v13 = sub_66A18();
          v8 = 4;
          v14 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v13, 36, v14, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, *a1, a2, v7);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d", v10, 36, v11, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v12, a2, v7);
          v8 = 4;
        }
      }
    }

    else
    {
      a1[5] = v26;
      v8 = 6;
    }
  }

  if (sub_56A8C(0x24u, v8))
  {
    v20 = sub_56AD0(0x24u);
    v21 = sub_66A18();
    v22 = sub_56B04(v8);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v21, 36, v22, "AVE_DAL", "UCCreate", a1, *a1, a2, a1[5], v7);
      v23 = sub_66A18();
      v25 = sub_56B04(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v23, 36, v25, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v21, 36, v22, "AVE_DAL");
    }
  }

  return v7;
}

uint64_t sub_6E330(const void **a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", v3, 36, v4, "AVE_DAL", "UCDestroy", a1, *a1, a1[5]);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", v3, 36);
  }

  v5 = a1[5];
  if (v5 && (v6 = sub_5405C(v5), a1[5] = 0, v6))
  {
    v7 = v6;
    v8 = 4;
  }

  else
  {
    v7 = 0;
    v8 = 6;
  }

  if (sub_56A8C(0x24u, v8))
  {
    v9 = sub_56AD0(0x24u);
    v10 = sub_66A18();
    v11 = sub_56B04(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v10, 36, v11, "AVE_DAL", "UCDestroy", a1, *a1, a1[5], v7);
      v12 = sub_66A18();
      v14 = sub_56B04(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v12, 36, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v10, 36, v11);
    }
  }

  return v7;
}

uint64_t sub_6E54C(const void **a1, uint64_t a2, const void **a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v30 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v30, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    sub_6335C((a2 + 40), "905.5.3", 16);
    v10 = sub_4C960();
    memcpy((a2 + 56), v10, 0x650uLL);
    *(a2 + 1672) = 0;
    sub_56F30((a2 + 1672), a2 + 1680);
    v11 = sub_5440C(a1[5], a2, a3);
    if (v11)
    {
      v12 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v13 = sub_56AD0(0x24u);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        v16 = *a1;
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d\n", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v17 = sub_66A18();
          v12 = 4;
          v18 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v17, 36, v18, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, *a1, a2, a3, v11);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v12 = 4;
        }
      }
    }

    else
    {
      *a1 = *a3;
      v12 = 6;
    }
  }

  else
  {
    v12 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v19 = sub_56AD0(0x24u);
      v20 = sub_66A18();
      v21 = sub_56B04(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v23 = sub_66A18();
        v12 = 4;
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v23, 36, v24, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (sub_56A8C(0x24u, v12))
  {
    v25 = sub_56AD0(0x24u);
    v26 = sub_66A18();
    v27 = sub_56B04(v12);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v26, 36, v27, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3, v11);
      v28 = sub_66A18();
      v31 = sub_56B04(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v28, 36, v31, "AVE_DAL", "UCOpen");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v26, 36, v27, "AVE_DAL", "UCOpen");
    }
  }

  return v11;
}

uint64_t sub_6EA00(const void **a1, void *a2, void *a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v29 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = sub_54944(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v12 = sub_56AD0(0x24u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_66A18();
          v11 = 4;
          v17 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCClose", 758, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v18 = sub_56AD0(0x24u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_66A18();
        v11 = 4;
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x24u, v11))
  {
    v24 = sub_56AD0(0x24u);
    v25 = sub_66A18();
    v26 = sub_56B04(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3, v10);
      v27 = sub_66A18();
      v30 = sub_56B04(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCClose");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCClose");
    }
  }

  return v10;
}

uint64_t sub_6EE74(uint64_t *a1, _DWORD *a2, void *a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v29 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    a2[10] = sub_65118(a1[3]);
    v10 = sub_55448(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v12 = sub_56AD0(0x24u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_66A18();
          v11 = 4;
          v17 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStart", 833, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      a2[10] = 0;
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v18 = sub_56AD0(0x24u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_66A18();
        v11 = 4;
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x24u, v11))
  {
    v24 = sub_56AD0(0x24u);
    v25 = sub_66A18();
    v26 = sub_56B04(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3, v10);
      v27 = sub_66A18();
      v30 = sub_56B04(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCStart");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStart");
    }
  }

  return v10;
}

uint64_t sub_6F2F8(const void **a1, void *a2, void *a3)
{
  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v29 = sub_56B04(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = sub_55998(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v12 = sub_56AD0(0x24u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_66A18();
          v11 = 4;
          v17 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCStop", 873, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v11 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v18 = sub_56AD0(0x24u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_66A18();
        v11 = 4;
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x24u, v11))
  {
    v24 = sub_56AD0(0x24u);
    v25 = sub_66A18();
    v26 = sub_56B04(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3, v10);
      v27 = sub_66A18();
      v30 = sub_56B04(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCStop");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStop");
    }
  }

  return v10;
}

uint64_t sub_6F76C(const void **a1, void *a2, void *a3)
{
  if (sub_56A8C(0x24u, 8))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v29 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = sub_55EE4(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v12 = sub_56AD0(0x24u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_66A18();
          v11 = 4;
          v17 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v18 = sub_56AD0(0x24u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_66A18();
        v11 = 4;
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x24u, v11))
  {
    v24 = sub_56AD0(0x24u);
    v25 = sub_66A18();
    v26 = sub_56B04(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3, v10);
      v27 = sub_66A18();
      v30 = sub_56B04(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCProcess");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCProcess");
    }
  }

  return v10;
}

uint64_t sub_6FBE0(const void **a1, void *a2, void *a3)
{
  if (sub_56A8C(0x24u, 7))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", v7, 36, v8, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3);
      v9 = sub_66A18();
      v29 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v7, 36, v8, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = sub_56430(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v12 = sub_56AD0(0x24u);
        v13 = sub_66A18();
        v14 = sub_56B04(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v16 = sub_66A18();
          v11 = 4;
          v17 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v18 = sub_56AD0(0x24u);
      v19 = sub_66A18();
      v20 = sub_56B04(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = sub_66A18();
        v11 = 4;
        v23 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (sub_56A8C(0x24u, v11))
  {
    v24 = sub_56AD0(0x24u);
    v25 = sub_66A18();
    v26 = sub_56B04(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3, v10);
      v27 = sub_66A18();
      v30 = sub_56B04(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCComplete");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCComplete");
    }
  }

  return v10;
}

void sub_70054(void *a1, int a2, unsigned int *a3, int a4)
{
  if (sub_56A8C(0x24u, 8))
  {
    v8 = sub_56AD0(0x24u);
    v9 = sub_66A18();
    v10 = sub_56B04(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d\n", v9, 36, v10, "AVE_DAL", "UCRecv", a1, a2, a3, a4);
      v11 = sub_66A18();
      v43 = sub_56B04(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v11, 36, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v9, 36, v10);
    }
  }

  if (a1 && a3 && a4 > 0)
  {
    if (*(a1 + 28))
    {
      if (a1[15])
      {
        v12 = sub_7081C(a1);
        if (v12)
        {
          v13 = v12;
          if (sub_56A8C(0x24u, 4))
          {
            v14 = sub_56AD0(0x24u);
            v15 = sub_66A18();
            v16 = sub_56B04(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v15, 36, v16, "AVE_DAL", "UCRecv", 1184, "ret == 0", a1, *a1, v13);
              v17 = sub_66A18();
              v44 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v17, 36, v44, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v15, 36, v16, "AVE_DAL");
            }
          }

          v25 = 5;
        }

        else
        {
          v30 = sub_66AA8(a2);
          v31 = *a3;
          v32 = a3[2];
          v33 = a3[4];
          if (sub_56A8C(0x24u, 8))
          {
            v34 = a2;
            v35 = sub_56AD0(0x24u);
            v36 = sub_66A18();
            v37 = sub_56B04(8);
            if (v35)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d\n", v36, 36, v37, "AVE_DAL", "UCRecv", 1192, a1, *a1, v30, v31, v32, v33);
              v38 = sub_66A18();
              v47 = sub_56B04(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v38, 36, v47, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v36, 36, v37, "AVE_DAL");
            }

            a2 = v34;
          }

          v13 = (a1[15])(a1[16], v30, v31, v32, v33);
          if (v13)
          {
            v25 = 5;
          }

          else
          {
            v25 = 8;
          }
        }

        goto LABEL_34;
      }

      if (sub_56A8C(0x24u, 4))
      {
        v26 = sub_56AD0(0x24u);
        v27 = sub_66A18();
        v28 = sub_56B04(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p\n", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null", a1, a2, a3, a4, a1[15], a1[16]);
          v29 = sub_66A18();
          v46 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v29, 36, v46, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
        }
      }
    }

    else if (sub_56A8C(0x24u, 4))
    {
      v22 = sub_56AD0(0x24u);
      v23 = sub_66A18();
      v24 = sub_56B04(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d\n", v23, 36, v24, "AVE_DAL", "UCRecv", 1175, "pDAL->m_iThreadState != 0", a1, a2, a3, a4, *(a1 + 28));
        v23 = sub_66A18();
        v24 = sub_56B04(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d", v23, 36, v24, "AVE_DAL", "UCRecv");
    }

    v25 = 5;
    v13 = -1011;
    goto LABEL_34;
  }

  if (sub_56A8C(0x24u, 4))
  {
    v18 = sub_56AD0(0x24u);
    v19 = sub_66A18();
    v20 = sub_56B04(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d\n", v19, 36, v20, "AVE_DAL", "UCRecv", 1169, "pCtx != __null && pArgs != __null && num > 0", a1, a2, a3, a4);
      v21 = sub_66A18();
      v45 = sub_56B04(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v21, 36, v45, "AVE_DAL", "UCRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v19, 36, v20, "AVE_DAL", "UCRecv");
    }
  }

  v25 = 5;
  v13 = -1001;
LABEL_34:
  if (sub_56A8C(0x24u, v25))
  {
    v39 = sub_56AD0(0x24u);
    v40 = sub_66A18();
    v41 = sub_56B04(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d\n", v40, 36, v41, "AVE_DAL", "UCRecv", a1, a2, a3, a4, v13);
      v42 = sub_66A18();
      v48 = sub_56B04(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v42, 36, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v40, 36, v41);
    }
  }
}

uint64_t sub_7081C(void *a1)
{
  if (sub_56A8C(0x24u, 8))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(8);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "SetThreadPolicy", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  sub_422D8(a1[6]);
  if (*(a1 + 16) <= 0)
  {
    sub_4230C(a1[6]);
  }

  else
  {
    v5 = sub_70A40(a1, *(a1 + 14), *(a1 + 15));
    *(a1 + 16) = 0;
    sub_4230C(a1[6]);
    if (v5)
    {
      v6 = 4;
      goto LABEL_11;
    }
  }

  v5 = 0;
  v6 = 8;
LABEL_11:
  if (sub_56A8C(0x24u, v6))
  {
    v7 = sub_56AD0(0x24u);
    v8 = sub_66A18();
    v9 = sub_56B04(v6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "SetThreadPolicy", a1, *a1, v5);
      v8 = sub_66A18();
      sub_56B04(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return v5;
}

uint64_t sub_70A40(void *a1, int a2, int a3)
{
  if (a2)
  {
    result = setpriority(3, 0, 4096);
    if (result)
    {
      v7 = result;
      result = sub_56A8C(0x24u, 5);
      if (result)
      {
        v8 = sub_56AD0(0x24u);
        v9 = sub_66A18();
        v10 = sub_56B04(5);
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v9, 36, v10, "AVE_DAL", "AdjustThreadPolicy", 1254, a1, *a1, a2, a3, v7, 0);
          v11 = sub_66A18();
          v33 = sub_56B04(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v11, 36, v33, "AVE_DAL");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v9, 36, v10, "AVE_DAL");
        }

        return 0;
      }
    }
  }

  else
  {
    info = 0;
    mach_timebase_info(&info);
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 33;
    }

    LODWORD(v13) = info.numer;
    LODWORD(v12) = info.denom;
    __asm { FMOV            V2.2D, #3.0 }

    _Q2.f64[0] = v14;
    *policy_info = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(_Q2, v12 / v13 * 1000000.0)));
    v37 = policy_info[0];
    v38 = 1;
    v20 = setpriority(3, 0, 0);
    if (v20)
    {
      v21 = v20;
      if (sub_56A8C(0x24u, 5))
      {
        v22 = sub_56AD0(0x24u);
        v23 = sub_66A18();
        v24 = sub_56B04(5);
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v23, 36, v24, "AVE_DAL", "AdjustThreadPolicy", 1238, a1, *a1, 0, v14, v21, 0);
          v25 = sub_66A18();
          v34 = sub_56B04(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v25, 36, v34, "AVE_DAL");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v23, 36, v24, "AVE_DAL");
        }
      }
    }

    v26 = pthread_self();
    v27 = pthread_mach_thread_np(v26);
    result = thread_policy_set(v27, 2u, policy_info, 4u);
    if (result)
    {
      v28 = result;
      if (sub_56A8C(0x24u, 4))
      {
        v29 = sub_56AD0(0x24u);
        v30 = sub_66A18();
        v31 = sub_56B04(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d\n", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy", 1246, "res == 0", a1, *a1, 0, v14, v28, 0);
          v32 = sub_66A18();
          v35 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d", v32, 36, v35, "AVE_DAL", "AdjustThreadPolicy");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy");
        }
      }

      return 4294966296;
    }
  }

  return result;
}

uint64_t sub_70E24(void *a1)
{
  recvPort = 0;
  memset(&context, 0, sizeof(context));
  if (sub_56A8C(0x24u, 7))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "AddRunLoopSource", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v5 = IOCreateReceivePort(0x39u, &recvPort);
  if (v5)
  {
    v6 = v5;
    if (sub_56A8C(0x24u, 4))
    {
      v7 = sub_56AD0(0x24u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d\n", v8, 36, v9, "AVE_DAL", "AddRunLoopSource", 1318, "res == 0", a1, *a1, v6, 0);
        v10 = sub_66A18();
        v24 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d", v10, 36, v24, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d", v8, 36, v9, "AVE_DAL");
      }
    }

    v14 = 4294966292;
  }

  else
  {
    context.version = 1;
    context.info = a1;
    memset(&context.retain, 0, 24);
    v11 = CFMachPortCreateWithPort(0, recvPort, &IODispatchCalloutFromMessage, &context, 0);
    if (v11)
    {
      v12 = v11;
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v11, 0);
      CFRunLoopAddSource(a1[10], RunLoopSource, kCFRunLoopDefaultMode);
      v14 = 0;
      *(a1 + 22) = recvPort;
      a1[12] = v12;
      a1[13] = RunLoopSource;
      v15 = 7;
      goto LABEL_17;
    }

    if (sub_56A8C(0x24u, 4))
    {
      v20 = sub_56AD0(0x24u);
      v21 = sub_66A18();
      v22 = sub_56B04(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d\n", v21, 36, v22, "AVE_DAL", "AddRunLoopSource", 1332, "pAsyncPort != __null", a1, *a1, recvPort, 0);
        v23 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d", v23, 36, v25, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d", v21, 36, v22, "AVE_DAL");
      }
    }

    v14 = 4294966293;
  }

  if (recvPort)
  {
    mach_port_mod_refs(mach_task_self_, recvPort, 1u, -1);
    recvPort = 0;
  }

  v15 = 4;
LABEL_17:
  if (sub_56A8C(0x24u, v15))
  {
    v16 = sub_56AD0(0x24u);
    v17 = sub_66A18();
    v18 = sub_56B04(v15);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v17, 36, v18, "AVE_DAL", "AddRunLoopSource", a1, *a1, v14);
      v17 = sub_66A18();
      sub_56B04(v15);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v17, 36);
  }

  return v14;
}

uint64_t sub_712C4(void *a1)
{
  if (sub_56A8C(0x24u, 7))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "DelRunLoopSource", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v5 = a1[13];
  if (v5)
  {
    CFRunLoopRemoveSource(a1[10], v5, kCFRunLoopDefaultMode);
    CFRelease(a1[13]);
    a1[13] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFMachPortInvalidate(v6);
    CFRelease(a1[12]);
    a1[12] = 0;
  }

  v7 = *(a1 + 22);
  if (v7)
  {
    mach_port_mod_refs(mach_task_self_, v7, 1u, -1);
    *(a1 + 22) = 0;
  }

  if (sub_56A8C(0x24u, 7))
  {
    v8 = sub_56AD0(0x24u);
    v9 = sub_66A18();
    v10 = sub_56B04(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "DelRunLoopSource", a1, *a1, 0);
      v9 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return 0;
}

uint64_t sub_714F4(uint64_t *a1)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "SetUpRunLoop", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[10])
  {
    v5 = 0;
LABEL_8:
    v6 = 6;
    goto LABEL_30;
  }

  Current = CFRunLoopGetCurrent();
  a1[10] = Current;
  if (!Current)
  {
    if (sub_56A8C(0x24u, 4))
    {
      v13 = sub_56AD0(0x24u);
      v14 = sub_66A18();
      v15 = sub_56B04(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d\n", v14, 36, v15, "AVE_DAL", "SetUpRunLoop", 1439, "m_pcRunLoop != __null", a1, *a1, 0);
        v16 = sub_66A18();
        v26 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d", v16, 36, v26, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d", v14, 36, v15, "AVE_DAL");
      }
    }

    v5 = 4294966296;
    goto LABEL_27;
  }

  CFRetain(Current);
  v8 = sub_70E24(a1);
  if (v8)
  {
    v5 = v8;
    if (sub_56A8C(0x24u, 4))
    {
      v9 = sub_56AD0(0x24u);
      v10 = sub_66A18();
      v11 = sub_56B04(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d\n", v10, 36, v11, "AVE_DAL", "SetUpRunLoop", 1445, "ret == 0", a1, *a1, v5);
        v12 = sub_66A18();
        v25 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d", v12, 36, v25, "AVE_DAL");
        goto LABEL_27;
      }

      v31 = *a1;
      v32 = v5;
      v30 = a1;
      v29 = 1445;
      v28 = v11;
      v20 = "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d";
LABEL_26:
      syslog(3, v20, v10, 36, v28, "AVE_DAL", "SetUpRunLoop", v29, "ret == 0", v30, v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  else
  {
    *&v35 = *a1;
    *(&v37 + 1) = sub_70054;
    v38 = a1;
    v5 = sub_54E90(a1[5], *(a1 + 22), &v35, &v33);
    if (!v5)
    {
      *(a1 + 28) = 1;
      goto LABEL_8;
    }

    if (sub_56A8C(0x24u, 4))
    {
      v17 = sub_56AD0(0x24u);
      v10 = sub_66A18();
      v18 = sub_56B04(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d\n", v10, 36, v18, "AVE_DAL", "SetUpRunLoop", 1453, "ret == 0", a1, *a1, v5);
        v19 = sub_66A18();
        v27 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d", v19, 36, v27, "AVE_DAL");
        goto LABEL_27;
      }

      v31 = *a1;
      v32 = v5;
      v30 = a1;
      v29 = 1453;
      v28 = v18;
      v20 = "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d";
      goto LABEL_26;
    }
  }

LABEL_27:
  if (a1[10])
  {
    sub_712C4(a1);
    CFRelease(a1[10]);
    a1[10] = 0;
  }

  v6 = 4;
LABEL_30:
  if (sub_56A8C(0x24u, v6))
  {
    v21 = sub_56AD0(0x24u);
    v22 = sub_66A18();
    v23 = sub_56B04(v6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v22, 36, v23, "AVE_DAL", "SetUpRunLoop", a1, *a1, v5);
      v22 = sub_66A18();
      sub_56B04(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v22, 36);
  }

  return v5;
}

uint64_t sub_71A58(void *a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "TearDownRunLoop", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  if (a1[10])
  {
    *(a1 + 28) = 0;
    sub_712C4(a1);
    CFRelease(a1[10]);
    a1[10] = 0;
  }

  if (sub_56A8C(0x24u, 6))
  {
    v5 = sub_56AD0(0x24u);
    v6 = sub_66A18();
    v7 = sub_56B04(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 36, v7, "AVE_DAL", "TearDownRunLoop", a1, *a1, 0);
      v6 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 36);
  }

  return 0;
}

uint64_t sub_71C44(void *a1)
{
  if (sub_56A8C(0x24u, 6))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", v3, 36, v4, "AVE_DAL", "TerminateRunLoop", a1, *a1);
      v3 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", v3);
  }

  v5 = a1[10];
  if (v5)
  {
    CFRunLoopStop(v5);
  }

  if (sub_56A8C(0x24u, 6))
  {
    v6 = sub_56AD0(0x24u);
    v7 = sub_66A18();
    v8 = sub_56B04(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "TerminateRunLoop", a1, *a1, 0);
      v7 = sub_66A18();
      sub_56B04(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}

void sub_71E1C(uint64_t **a1)
{
  if (sub_56A8C(0x24u, 7))
  {
    v2 = sub_56AD0(0x24u);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", v3, 36, v4, "AVE_DAL", "RecvThread", a1);
      v5 = sub_66A18();
      v32 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v5, 36, v32, "AVE_DAL", "RecvThread", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v3, 36, v4, "AVE_DAL", "RecvThread", a1);
    }
  }

  if (a1)
  {
    v12 = *a1;
    if (*a1)
    {
      os_retain(a1[2]);
      v18 = voucher_adopt();
      pthread_setname_np("AVE_UCRecv");
      v19 = sub_70A40(v12, 0, 0);
      if (v19)
      {
        v20 = v19;
        if (sub_56A8C(0x24u, 4))
        {
          v21 = sub_56AD0(0x24u);
          v22 = sub_66A18();
          v23 = sub_56B04(4);
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v22, 36, v23, "AVE_DAL", "RecvThread", 1572, "ret == 0", v12, *v12, v20);
            v22 = sub_66A18();
            v23 = sub_56B04(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v22, 36, v23, "AVE_DAL");
        }
      }

      else
      {
        v20 = sub_714F4(v12);
        if (v20)
        {
          if (sub_56A8C(0x24u, 4))
          {
            v24 = sub_56AD0(0x24u);
            v25 = sub_66A18();
            v26 = sub_56B04(4);
            if (v24)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d\n", v25, 36, v26, "AVE_DAL", "RecvThread", 1576, "ret == 0", v12, *v12, v20);
              v27 = sub_66A18();
              v33 = sub_56B04(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v27, 36, v33, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v25, 36, v26, "AVE_DAL");
            }
          }
        }

        else
        {
          *(a1 + 2) = 1;
          CFRunLoopRun();
          sub_71A58(v12);
        }
      }

      if (v18 != -1)
      {
        v28 = voucher_adopt();
        os_release(v28);
      }

      if (v20)
      {
        v6 = 4;
      }

      else
      {
        v6 = 7;
      }
    }

    else
    {
      v6 = 4;
      if (sub_56A8C(0x24u, 4))
      {
        v13 = sub_56AD0(0x24u);
        v14 = sub_66A18();
        v15 = sub_56B04(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong class %p\n", v14, 36, v15, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v16 = sub_66A18();
          v6 = 4;
          v17 = sub_56B04(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v16, 36, v17, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v14, 36, v15, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v6 = 4;
        }
      }

      v20 = -1015;
    }
  }

  else
  {
    v6 = 4;
    if (sub_56A8C(0x24u, 4))
    {
      v7 = sub_56AD0(0x24u);
      v8 = sub_66A18();
      v9 = sub_56B04(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p\n", v8, 36, v9, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v10 = sub_66A18();
        v6 = 4;
        v11 = sub_56B04(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v10, 36, v11, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v8, 36, v9, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v6 = 4;
      }
    }

    v20 = -1001;
  }

  if (sub_56A8C(0x24u, v6))
  {
    v29 = sub_56AD0(0x24u);
    v30 = sub_66A18();
    v31 = sub_56B04(v6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v30, 36, v31, "AVE_DAL", "RecvThread", a1, v20);
      v30 = sub_66A18();
      v31 = sub_56B04(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v30, 36, v31, "AVE_DAL", "RecvThread", a1, v20);
  }

  pthread_exit(0);
}

uint64_t sub_72410(int a1)
{
  if ((a1 - 1) < 0xA)
  {
    return *(&unk_C0B98 + 6 * (a1 - 1) + 1);
  }

  result = sub_56A8C(0xD1u, 4);
  if (result)
  {
    v3 = sub_56AD0(0xD1u);
    v4 = sub_66A18();
    v5 = sub_56B04(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 209, v5, "HEVC_FindProfileIdc", 101, "(HEVC_Profile_Invalid < eProfile) && (eProfile < HEVC_Profile_Max)", a1);
      v4 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

uint64_t sub_72538(int a1)
{
  if ((a1 - 1) < 2)
  {
    return *(&unk_C0C88 + 4 * (a1 - 1) + 1);
  }

  result = sub_56A8C(0xD1u, 4);
  if (result)
  {
    v3 = sub_56AD0(0xD1u);
    v4 = sub_66A18();
    v5 = sub_56B04(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 209, v5, "HEVC_FindTierFlag", 211, "(HEVC_Tier_Invalid < eTier) && (eTier < HEVC_Tier_Max)", a1);
      v4 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

uint64_t sub_7265C(int a1)
{
  if ((a1 - 1) < 0x12)
  {
    return dword_B7C78[12 * (a1 - 1) + 1];
  }

  result = sub_56A8C(0xD1u, 4);
  if (result)
  {
    v3 = sub_56AD0(0xD1u);
    v4 = sub_66A18();
    v5 = sub_56B04(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", v4, 209, v5, "HEVC_FindLevelIdc", 378, "(HEVC_Level_Invalid < eLevel) && (eLevel < HEVC_Level_Max)", a1);
      v4 = sub_66A18();
      sub_56B04(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", v4);
    return 0;
  }

  return result;
}

uint64_t sub_72784(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, unsigned int a8, char a9, int a10)
{
  v50 = result;
  v79 = 4;
  v80 = a6;
  v44 = 1;
  v81 = 1 << (a6 - 1);
  v82 = 0x1000000001;
  v83 = 0u;
  v84 = 0u;
  v72 = 4;
  v73 = a6;
  v74 = v81;
  v75 = 0x1000000001;
  if (a6 <= 8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v46 = v10;
  v76 = 0uLL;
  v77 = 0uLL;
  v65 = 4;
  v66 = a6;
  v67 = 1 << (a6 - 1);
  v68 = 0x1000000001;
  v69 = 0uLL;
  v70 = 0uLL;
  if (a5 >= 1)
  {
    v43 = 0;
    v55 = 0;
    v11 = a6 != 8;
    if (a6 == 8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (a7)
    {
      v13 = 8;
    }

    else
    {
      v13 = 16;
    }

    v14 = -1 << a6;
    if (a7)
    {
      v11 = v12;
    }

    v15 = a8 >> v11;
    if (a7)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v42 = 16 * v15;
    v62 = v13;
    v48 = 2 * v13;
    v49 = v16;
    if (a7)
    {
      v17 = 8;
    }

    else
    {
      v17 = 4;
    }

    v45 = v17;
    v18 = ~v14;
    v53 = 2 * v15;
    v54 = v15;
    v41 = 8 * v15;
    v47 = ~v14;
    do
    {
      if (a4 >= 1)
      {
        v19 = 0;
        v20 = v43;
        v21 = v44;
        do
        {
          v22 = *(v50 + (v55 >> 3 >> a9) * a10 + 4 * ((v19 >> v49 << a9) + (~(-1 << a9) & (v55 >> 3))));
          v23 = (a2 + (v22 & 0xFFFFFFF));
          v86 = v23;
          v87 = 0;
          v85 = 0;
          if (v22 >> 28)
          {
            result = sub_72C7C(&v85, v46, v45, v88, 128, 16);
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            do
            {
              v25 -= a6;
              HIDWORD(v85) = v25;
              if (v25 < 0)
              {
                do
                {
                  v27 = v23 + 1;
                  v86 = v23 + 1;
                  v26 = *v23 | (v26 << 8);
                  v25 += 8;
                  v85 = __PAIR64__(v25, v26);
                  ++v23;
                }

                while (v25 >= 8);
              }

              else
              {
                v27 = v23;
              }

              v88[v24++] = (v26 >> v25) & v18;
              v23 = v27;
            }

            while (v24 != 128);
          }

          v28 = 0;
          v29 = 0;
          v57 = v20;
          v52 = v21;
          v30 = v21;
          do
          {
            v31 = 0;
            v56 = v30;
            do
            {
              v33 = (v29 | v55) < a5 && v19 + v31 < a4;
              v34 = &v88[v28];
              v35 = *v34;
              v36 = v22 >> 28;
              if (a7)
              {
                if (v36)
                {
                  result = sub_72F64(v71, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v37 = v30 - 1;
                  if (a6 == 8)
                  {
                    *(a3 + v37) = v35;
                  }

                  else
                  {
                    *(a3 + 2 * v37) = v35;
                  }
                }

                v39 = v34[1];
                if (v36)
                {
                  result = sub_72F64(v64, v29, v31, v39);
                  LOWORD(v39) = result;
                }

                if (v33)
                {
                  if (a6 == 8)
                  {
                    *(a3 + v30) = v39;
                  }

                  else
                  {
                    *(a3 + 2 * v30) = v39;
                  }
                }

                v40 = 2;
              }

              else
              {
                if (v36)
                {
                  result = sub_72E98(v78, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v38 = (v57 + v31);
                  if (a6 == 8)
                  {
                    *(a3 + v38) = v35;
                  }

                  else
                  {
                    *(a3 + 2 * v38) = v35;
                  }
                }

                v40 = 1;
              }

              v28 += v40;
              ++v31;
              v30 += 2;
            }

            while (v62 != v31);
            v29 = (v29 + 1);
            v30 = v56 + v53;
            v57 += v54;
          }

          while (v29 != 8);
          v19 += v62;
          v18 = v47;
          v21 = v52 + v48;
          v20 += v62;
        }

        while (v19 < a4);
      }

      v44 += v42;
      v43 += v41;
      v55 += 8;
    }

    while (v55 < a5);
  }

  return result;
}

uint64_t sub_72C10(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 4) - a2;
  *(a1 + 4) = v3;
  if (v3 < 0)
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    do
    {
      v7 = v6 + 1;
      *(a1 + 8) = v6 + 1;
      if (v5 && v6 >= v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v6;
      }

      v2 = v8 | (v2 << 8);
      v4 = v3 + 8;
      *a1 = v2;
      *(a1 + 4) = v3 + 8;
      v6 = v7;
      v9 = v3 < -8;
      v3 += 8;
    }

    while (v9);
  }

  else
  {
    v4 = v3;
  }

  return (v2 >> v4) & ~(-1 << a2);
}

uint64_t sub_72C7C(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int a6)
{
  if (*(a1 + 4))
  {
    sub_768FC();
  }

  v8 = *(a1 + 8);
  v33 = a5 - 1;
  if (a5 >= 1)
  {
    v10 = a3;
    v30 = *(a1 + 8);
    v11 = 0;
    v12 = 0;
    v13 = a6 + 1;
    v35 = -a3;
    v36 = a3;
    v31 = a6 + 1;
    do
    {
      v14 = sub_72C10(a1, a2) + 2;
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v14 > v13;
        if (v11 <= a5)
        {
          v18 = a5;
        }

        else
        {
          v18 = v11;
        }

        v19 = (v18 - v11);
        v20 = (a4 + 4 * v11);
        do
        {
          if (v19 == v16)
          {
            break;
          }

          *v20 = sub_72C10(a1, v15);
          if ((~v16 & 3) == 0)
          {
            if (v17 || (v21 = *(a1 + 16)) != 0 && *(a1 + 8) > v21)
            {
              v17 = 0;
              *(v20 - 1) = 0;
              *(v20 - 3) = 0;
            }

            else
            {
              v17 = 0;
            }
          }

          ++v16;
          ++v20;
        }

        while (v36 != v16);
        v22 = 0;
        v10 = a3;
        v23 = v33;
        v13 = v31;
        v24 = v35;
        do
        {
          v25 = v11 + v22;
          if (v11 + v22 >= a5)
          {
            break;
          }

          if (v12)
          {
            v26 = v22 + v11;
            if ((v22 + v11 + a3 + a3 * (*(a4 + 4 * v26) & 0x1F)) >= a5)
            {
              v27 = v23 - v11;
            }

            else
            {
              v27 = a3 + a3 * (*(a4 + 4 * v26) & 0x1F);
            }

            *(a4 + 4 * v26) = 0;
            if (v27)
            {
              bzero((a4 + 4 * (v22 + v11 + 1)), 4 * v27);
              v11 += v27;
              v25 = v22 + v11;
            }

            v24 = v35;
          }

          if (*(a4 + 4 * v25) == 1)
          {
            v12 = 0;
            v28 = v24 + v22 == -2 || a3 == 1;
            if (v28 && v25 + 2 < a5)
            {
              *(a4 + 4 * v25) = 0;
              v12 = 1;
            }
          }

          else
          {
            v12 = 0;
          }

          ++v22;
          --v23;
        }

        while (v24 + v22);
      }

      v11 += v10;
    }

    while (v11 < a5);
    LODWORD(v8) = v30;
    if (*(a1 + 4) >= 8)
    {
      sub_76928();
    }
  }

  *(a1 + 4) = 0;
  return (*(a1 + 8) - v8);
}

uint64_t sub_72E98(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (a1[131])
  {
    v8 = sub_73030(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 130;
    if (a2 >= 1)
    {
      v9 = &a1[16 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[16 * a2 + (a3 - 1)];
    }

    v8 = *v9;
    a1[133] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[139] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[129])
  {
    a1[140] = 1;
  }

  result = v11 & ~(-1 << a1[132]);
  a1[16 * v6 + v5] = result;
  return result;
}

uint64_t sub_72F64(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (a1[67])
  {
    v8 = sub_73138(a1, a2, a3);
  }

  else
  {
    v9 = a1 + 66;
    if (a2 >= 1)
    {
      v9 = &a1[8 * (a2 - 1) + a3];
    }

    if (a3 >= 1)
    {
      v9 = &a1[8 * a2 + (a3 - 1)];
    }

    v8 = *v9;
    a1[69] = *v9;
  }

  v10 = a4 >> 1;
  if (a4)
  {
    v10 = -v10;
  }

  a1[75] = v10;
  v11 = v8 + v10;
  if (v11 < 0 || v11 >> a1[65])
  {
    a1[76] = 1;
  }

  result = v11 & ~(-1 << a1[68]);
  a1[8 * v6 + v5] = result;
  return result;
}

uint64_t sub_73030(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[128])
    {
      v3 = a1[138] + a1[139];
      a1[138] = v3;
      v4 = a1[136];
      v5 = a1[137];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[16 * v9 + a3];
        a1[134] = v5;
        v8 = &a1[16 * v10 + a3];
      }

      else
      {
        v8 = &a1[16 * a2 + (a3 - 1)];
        v5 = *(v8 - 16);
        a1[134] = v5;
      }

      v11 = *v8;
      a1[133] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[136] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[137] = v5;
      a1[138] = v3;
    }

    v12 = a1[16 * a2 - 16 + a3];
    a1[135] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[136] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[137] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 130;
    }

    v7 = *v6;
    a1[133] = v7;
  }

  return v7;
}

uint64_t sub_73138(_DWORD *a1, int a2, int a3)
{
  if (a2)
  {
    if (a3 % a1[64])
    {
      v3 = a1[74] + a1[75];
      a1[74] = v3;
      v4 = a1[72];
      v5 = a1[73];
    }

    else
    {
      if (a3 <= 0)
      {
        v9 = (a2 - 2);
        v10 = (a2 - 1);
        if (a2 <= 1)
        {
          v10 = v10;
          v9 = v10;
        }

        v5 = a1[8 * v9 + a3];
        a1[70] = v5;
        v8 = &a1[8 * v10 + a3];
      }

      else
      {
        v8 = &a1[8 * a2 + a3 - 1];
        v5 = *(v8 - 8);
        a1[70] = v5;
      }

      v11 = *v8;
      a1[69] = *v8;
      v3 = v11 - v5;
      if (v11 >= v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = v11;
      }

      a1[72] = v4;
      if (v11 > v5)
      {
        v5 = v11;
      }

      a1[73] = v5;
      a1[74] = v3;
    }

    v12 = a1[8 * a2 - 8 + a3];
    a1[71] = v12;
    if (v12 < v4)
    {
      v4 = v12;
    }

    a1[72] = v4;
    if (v12 > v5)
    {
      v5 = v12;
    }

    a1[73] = v5;
    v13 = v3 + v12;
    if (v13 < v5)
    {
      v5 = v13;
    }

    if (v13 >= v4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6 = &a1[a3 - 1];
    if (a3 <= 0)
    {
      v6 = a1 + 66;
    }

    v7 = *v6;
    a1[69] = v7;
  }

  return v7;
}

uint64_t sub_73240(uint64_t *a1, uint64_t a2)
{
  if (sub_56A8C(0x1Eu, 7))
  {
    v4 = sub_56AD0(0x1Eu);
    v5 = sub_66A18();
    v6 = sub_56B04(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v5, 30, v6, "AVE_Prop_Cfg_MCTF_Init", a1, a2);
      v7 = sub_66A18();
      v12 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v7, 30, v12, "AVE_Prop_Cfg_MCTF_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v6, "AVE_Prop_Cfg_MCTF_Init", a1, a2);
    }
  }

  bzero(a1 + 2, 0x2B8uLL);
  *a1 = a2;
  a1[1] = 0xFFFFFF9BFFFFFFFELL;
  *(a1 + 42) = -1;
  *(a1 + 20) = -1;
  *(a1 + 28) = -1;
  if (sub_56A8C(0x1Eu, 7))
  {
    v8 = sub_56AD0(0x1Eu);
    v9 = sub_66A18();
    v10 = sub_56B04(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v9, 30, v10, "AVE_Prop_Cfg_MCTF_Init", a1, a2, 0);
      v9 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v9);
  }

  return 0;
}

uint64_t sub_733FC(uint64_t *a1)
{
  if (sub_56A8C(0x1Eu, 7))
  {
    v2 = sub_56AD0(0x1Eu);
    v3 = sub_66A18();
    v4 = sub_56B04(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld\n", v3, 30, v4, "AVE_Prop_Cfg_MCTF_Uninit", a1, 0);
      v5 = sub_66A18();
      v11 = sub_56B04(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v5, 30, v11, "AVE_Prop_Cfg_MCTF_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %lld", v3, 30, v4, "AVE_Prop_Cfg_MCTF_Uninit", a1, 0);
    }
  }

  v6 = *a1;
  if (sub_56A8C(0x1Eu, 7))
  {
    v7 = sub_56AD0(0x1Eu);
    v8 = sub_66A18();
    v9 = sub_56B04(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d\n", v8, 30, v9, "AVE_Prop_Cfg_MCTF_Uninit", a1, v6, 0);
      v8 = sub_66A18();
      sub_56B04(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d", v8);
  }

  return 0;
}

BOOL sub_73588(int a1, unsigned int a2)
{
  v2 = a1 - 1;
  result = 0;
  if (a2 || v2 >= 2)
  {
    v3 = a2 == 6 || a2 == 8;
    v4 = v3;
    if (a1 != 2 || !v4)
    {
      v5 = a2 != 25 && a2 - 9 >= 2;
      v6 = !v5;
      if ((a1 != 3 || !v6) && (a2 > 0x1A || ((1 << a2) & 0x4C00000) == 0 || v2 >= 2))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_73600(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, unsigned int a9, int a10, unsigned int a11, int a12, unsigned int a13)
{
  if (a7)
  {
    v13 = 16;
  }

  else
  {
    v13 = 32;
  }

  v107 = v13;
  if ((a6 | 2) != 0xA)
  {
    sub_76954();
  }

  if (a7)
  {
    v17 = 8;
  }

  else
  {
    v17 = 1;
  }

  if (a7)
  {
    v18 = 10;
  }

  else
  {
    v18 = 3;
  }

  if (a7)
  {
    v19 = 4;
  }

  else
  {
    v19 = 5;
  }

  v95 = v19;
  if (a6 == 8)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  v21 = a11 + a5;
  v22 = &dword_B86B0[28 * v20];
  v90 = v22[a13 + 4];
  result = sub_75260(v114, v20, a13, 0);
  memset(v115, 0, 512);
  if (v21)
  {
    v98 = 0;
    v24 = a9 + a4;
    v25 = (v107 - 1 + a10 + v24) >> v95;
    v26 = (v107 - 1 + a12 + v21) >> v95;
    v27 = 32 - __clz(v26 - 1);
    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = 32 - __clz(v25 - 1);
    if (v25 < 2)
    {
      v29 = 0;
    }

    if (v29 >= v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = v29;
    }

    v31 = 5;
    if (a7)
    {
      v31 = 3;
    }

    v87 = v31;
    v88 = 2 * v30;
    v79 = v22 + 8;
    v80 = &dword_B92F0[11 * v20];
    v84 = vdupq_n_s64(v30 - 1);
    v83 = (v30 + 1) & 0x7E;
    v82 = -a9 - a4 * a11;
    v81 = -(2 * a4 * a11 + 2 * a9);
    v32 = vdupq_n_s64(1uLL);
    v33 = vdupq_n_s64(2uLL);
    v85 = v33;
    v86 = v32;
    v89 = v30;
    v103 = v21;
    do
    {
      if (v24)
      {
        v34 = 0;
        v35 = v98 >> v95;
        v94 = v35 * ((v107 - 1 + a10 + v24) >> v95);
        v106 = ~(-1 << v80[7]);
        v105 = v79[a13];
        v36 = vdupq_n_s64(v35);
        v37 = v81;
        v38 = v82;
        v93 = v36;
        do
        {
          v39 = v34 >> v95;
          if (v30)
          {
            v40 = vdupq_n_s64(v39);
            v41 = 0uLL;
            v42 = v83;
            v43 = xmmword_B1D40;
            do
            {
              v44 = v41;
              v45 = v43;
              v46 = vnegq_s64(v43);
              v47 = vaddq_s64(v45, v45);
              v41 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v40, v46), v32), v47), vshlq_u64(vandq_s8(vshlq_u64(v36, v46), v32), vorrq_s8(v47, v32))), v44);
              v43 = vaddq_s64(v43, v33);
              v42 -= 2;
            }

            while (v42);
            v48 = vbslq_s8(vcgtq_u64(v45, v84), v44, v41);
            v49 = vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
          }

          else
          {
            v49 = 0;
          }

          v50 = 0;
          v51 = (a2 + (v39 + v94) * v90);
          v52 = (a1 + ((*&v49 | ((v39 | (v98 >> v95)) >> v30 << v88)) << v87));
          v96 = v38;
          v97 = v37;
          v99 = v34;
          do
          {
            v53 = 0;
            v102 = v50;
            v54 = v98 + v50;
            v55 = v34;
            v101 = v37;
            v56 = v37;
            v100 = v38;
            v57 = v38;
            do
            {
              v110 = v56;
              v111 = v53;
              v112 = v52;
              v58 = v55;
              v59 = *v52;
              v109 = v59 & 0xF0;
              if (*v52)
              {
                v60 = (v59 & v106) + 1;
              }

              else
              {
                v60 = 0;
              }

              v108 = v60;
              v113 = v51;
              v61 = v57;
              sub_73BC0(v114, v51, v59, v115);
              v62 = v61;
              LODWORD(v21) = v103;
              v63 = &v115[1];
              v64 = 0;
              v65 = v110;
              v66 = v62;
              do
              {
                v68 = v64 + v54 >= a11 && v64 + v54 < v103;
                v69 = v58;
                v70 = v65;
                v71 = v66;
                v72 = v63;
                v73 = 8;
                do
                {
                  v75 = v69 >= a9 && v69 < v24;
                  result = v68 & v75;
                  if (result == 1)
                  {
                    result = *(v72 - 1);
                    if (a7)
                    {
                      v76 = v70 + 1;
                      if (a6 == 8)
                      {
                        *(a3 + v70) = result;
                        result = *v72;
                        *(a3 + v76) = result;
                      }

                      else
                      {
                        *(a3 + 2 * v70) = result;
                        result = *v72;
                        *(a3 + 2 * v76) = result;
                      }
                    }

                    else if (a6 == 8)
                    {
                      *(a3 + v71) = result;
                    }

                    else
                    {
                      *(a3 + 2 * v71) = result;
                    }
                  }

                  v72 += 4;
                  ++v71;
                  v70 += 2;
                  ++v69;
                  --v73;
                }

                while (v73);
                ++v64;
                v63 += 32;
                v66 += a4;
                v65 += 2 * a4;
              }

              while (v64 != 4);
              if (v109 != 240 || a13 == 0)
              {
                v78 = v108;
              }

              else
              {
                v78 = v105;
              }

              v51 = &v113[v78];
              v52 = v112 + 1;
              v53 = v111 + 8;
              v57 = v62 + 8;
              v56 = v110 + 16;
              v55 = v58 + 8;
            }

            while (v111 + 8 < v107);
            v50 = v102 + 4;
            v38 = v100 + 4 * a4;
            v37 = v101 + 8 * a4;
            v34 = v99;
          }

          while (v102 + 4 < v107);
          v34 = v99 + v107;
          v38 = v96 + v107;
          v37 = v97 + 2 * v107;
          LODWORD(v30) = v89;
          v33 = v85;
          v32 = v86;
          v36 = v93;
        }

        while (v99 + v107 < v24);
      }

      v82 += v107 * a4;
      v81 += 2 * v107 * a4;
      v98 += v107;
    }

    while (v98 < v21);
  }

  return result;
}

uint64_t sub_73BC0(unsigned int *a1, char *a2, uint64_t a3, int *a4)
{
  v8 = dword_B92F0[11 * a1[85] + 7];
  if (a1[87] - 1 <= 2)
  {
    v9 = sub_75338(a1, a3);
    v10 = a1[85];
    if (v9 > dword_B86B0[28 * v10 + 8 + a1[87]] || v9 < sub_75338(a1, LOBYTE(dword_B92F0[11 * v10 + 8])))
    {
      goto LABEL_215;
    }

    if ((~a3 & 0xF0) == 0)
    {
      v12 = a1[87];
      if ((v12 - 1) <= 2)
      {
        v13 = 0;
        v14 = vdupq_n_s32(a3);
        v15 = a1[85];
        v173 = dword_B86B0[28 * v15 + 8 + v12] >> 2;
        *v14.i8 = vand_s8(vmovn_s32(vtstq_s32(v14, xmmword_B8010)), 0x1000100010001);
        v188 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
        v171 = a2;
        v172 = a4;
        while (1)
        {
          memset(v189, 0, sizeof(v189));
          v16 = a1[87];
          v17 = a1[88];
          v187 = v17;
          v174 = v13;
          if (*(&v188 + v13) != 1)
          {
            break;
          }

          v18 = 0;
          v19 = dword_B86B0[28 * v15 + 8 + v16] >> 2;
          v206 = &a2[v13 * v173];
          v205 = v19;
          v209 = 1;
          v208 = 0;
          v207 = 8 * v19;
          v20 = &unk_B97C0 + 52 * v15;
          v177 = v20 + 12;
          v180 = *(v20 + 2);
          v21 = v17 & 0xFFFFFFFE;
          v175 = &dword_B86B0[28 * v15 + 12 + 4 * v16];
          v22 = v189;
          do
          {
            v184 = v18;
            v24 = v175;
            v23 = v177;
            v182 = v22;
            v25 = v180;
            if (v180)
            {
              do
              {
                v27 = *v24++;
                v26 = v27;
                v29 = *v23;
                v23 += 4;
                v28 = v29;
                v30 = -1 << v29;
                if (v29 == 32)
                {
                  v31 = -1;
                }

                else
                {
                  v31 = ~v30;
                }

                v32 = 1 << (v28 - 1);
                v33 = (sub_754F4(v204, (v28 - v26)) << v26) & v31;
                v35 = v21 != 2 || v33 != v32;
                if (v33 >> v26 == v31 >> v26)
                {
                  v36 = v31;
                }

                else
                {
                  v36 = ((1 << (v26 - 1)) - ((v33 >> v26) & 1)) | v33;
                }

                if (!v35 || v33 == 0)
                {
                  v38 = v33;
                }

                else
                {
                  v38 = v36;
                }

                if (!v26)
                {
                  v38 = v33;
                }

                if (v187 != 1)
                {
                  v33 = v38;
                }

                if (v21 == 2)
                {
                  v39 = v32;
                }

                else
                {
                  v39 = 0;
                }

                *v22++ = v33 ^ v39;
                --v25;
              }

              while (v25);
            }

            v18 = v184 + 1;
            v22 = v182 + 4;
          }

          while (v184 != 7);
LABEL_175:
          v135 = 0;
          v136 = v189;
          a2 = v171;
          do
          {
            if (a1[85] == 27)
            {
              v15 = 27;
            }

            else
            {
              v137 = 0;
              v138 = vdupq_n_s32(v135 + 8 * v174);
              v139.i64[0] = 0x100000001;
              v139.i64[1] = 0x100000001;
              v140 = vshlq_u32(vandq_s8(vshlq_u32(v138, xmmword_B7FE0), v139), xmmword_B7FF0);
              v141 = vshlq_u32(vandq_s8(vshlq_u32(v138, xmmword_B8000), v139), xmmword_B7FF0);
              v142 = &v172[32 * (vorr_s8(*v141.i8, *&vextq_s8(v141, v141, 8uLL)).u32[0] | v141.i32[1]) + 4 * (vorr_s8(*v140.i8, *&vextq_s8(v140, v140, 8uLL)).u32[0] | v140.i32[1])];
              do
              {
                v142[v137] = *(v136 + v137);
                ++v137;
                v15 = a1[85];
              }

              while (v137 < *(&unk_B97C0 + 13 * v15 + 2));
            }

            ++v135;
            ++v136;
          }

          while (v135 != 8);
          v13 = v174 + 1;
          if (v174 == 3)
          {
            return 1;
          }
        }

        v40 = (&unk_B97C0 + 52 * v15);
        v41 = v40[2];
        v178 = v40;
        v181 = v41;
        v42 = (v40 + 3);
        v170 = a1[87];
        LODWORD(v40) = dword_B86B0[28 * v15 + 8 + v16];
        v206 = &a2[v13 * v173];
        LODWORD(v40) = 2 * v40;
        v205 = (v40 >> 3) & 0x7FFFFFF;
        v209 = 1;
        v208 = 0;
        v183 = v40;
        v207 = v40 & 0x3FFFFFF8;
        v176 = v42;
        if (!v41)
        {
          v185 = 0;
LABEL_84:
          v201 = 0;
          v202 = 0;
          v199 = 0;
          v200 = 0;
          v198[0] = sub_74DA0(v178[3], v11);
          v198[1] = sub_74DA0(v178[4], v68);
          v198[2] = sub_74DA0(v178[5], v69);
          v198[3] = sub_74DA0(v178[6], v70);
          sub_74E28(v181, v198, v211, &v201, &v199);
          v196 = 0;
          v197 = 0;
          v194 = 0;
          v195 = 0;
          if (v181)
          {
            v71 = 0;
            do
            {
              v72 = *&v176[v71];
              v73 = sub_74DA0(v72, v11);
              v74 = v211[v71 / 4];
              v75 = &qword_B9EC8[80 * v73 + 5 * v74];
              v76 = dword_B9E80[3 * v73 - 1 + v170];
              v77 = *(v75 + 5);
              *(&v196 + v71) = v76 + *(v75 + 4);
              *(&v194 + v71) = v77 + v76;
              sub_751F0(v73, v74, *(&v201 + v71), *(&v199 + v71), (&v196 + v71), (&v194 + v71));
              v78 = *(&v196 + v71);
              if (v72 < v78)
              {
                v78 = v72;
              }

              *(&v196 + v71) = v78;
              if (v77)
              {
                v79 = v72;
              }

              else
              {
                v79 = 0;
              }

              if (v79 >= *(&v194 + v71))
              {
                v79 = *(&v194 + v71);
              }

              *(&v194 + v71) = v79;
              v71 += 4;
            }

            while (4 * v181 != v71);
          }

          if (v15 == 19 && v212 == 1 && HIDWORD(v200) - HIDWORD(v202) <= 1)
          {
            v196 = 0;
            v197 = 0;
            v194 = 0;
            v195 = 0;
          }

          v193[0] = 0;
          v193[1] = 0;
          v80 = v181;
          v81 = v185;
          if (v181)
          {
            v82 = v193;
            v83 = v210;
            v84 = &v196;
            v85 = v211;
            v86 = v176;
            do
            {
              v87 = *v85++;
              if (v87 || (*v86 - 8) > 4)
              {
                v88 = *v84;
                *v82 = sub_754F4(v204, *v84) << (*v86 - v88);
                v81 += v88;
              }

              else
              {
                *v82 = *v83;
              }

              ++v82;
              ++v83;
              v86 += 4;
              ++v84;
              --v80;
            }

            while (v80);
            v191 = 0;
            v192 = 0;
            v89 = &v191;
            v90 = &v194;
            v91 = v181;
            v92 = v183;
            do
            {
              v93 = *v90;
              v90 = (v90 + 4);
              if (v93)
              {
                v94 = sub_76230(v204, v208, 3u);
                v208 += 3;
                *v89 = v94;
                v81 += 3;
              }

              v89 = (v89 + 4);
              --v91;
            }

            while (v91);
          }

          else
          {
            v191 = 0;
            v192 = 0;
            v92 = v183;
          }

          v95 = (v92 & 0x3FFFFFFE) - v81;
          v96 = v95 / 7;
          v97 = v208 + v95 - 7 * (v95 / 7);
          v208 = v97;
          v98 = v207;
          if (v97 > v207)
          {
            sub_76A88();
          }

          v99 = 0;
          v100 = v190;
          memset(v190, 0, sizeof(v190));
          v101 = v181;
          do
          {
            v102 = 0;
            if (v101)
            {
              v103 = &v194;
              v104 = v100;
              do
              {
                v106 = *v103++;
                v105 = v106;
                if (v106)
                {
                  *v104 = sub_754F4(v204, v105);
                  v102 += v105;
                }

                v104 += 7;
                --v101;
              }

              while (v101);
              if (v102 > v96)
              {
                sub_76A30();
              }

              v97 = v208;
              v98 = v207;
              v101 = v181;
            }

            v97 += v96 - v102;
            v208 = v97;
            if (v97 > v98)
            {
              sub_76A88();
            }

            ++v99;
            ++v100;
          }

          while (v99 != 7);
          if (v101)
          {
            v107 = 0;
            v108 = v189;
            do
            {
              v109 = *&v176[4 * v107];
              v110 = sub_74DA0(v109, v11);
              v111 = 0;
              v112 = 0;
              v113 = qword_B9EC8[80 * v110 + 1 + 5 * v211[v107]];
              v114 = *(&v194 + v107);
              v115 = v113 >> v114;
              if (v113 >> v114 <= 1)
              {
                v115 = 1;
              }

              if (v115 >> 1 >= (1 << (v109 - *(&v196 + v107))) >> 1)
              {
                v116 = (1 << (v109 - *(&v196 + v107))) >> 1;
              }

              else
              {
                v116 = v115 >> 1;
              }

              v117 = *(v193 + v107);
              v118 = (1 << (v109 - 1));
              v119 = ~(-1 << v114);
              v120 = v113 + v117;
              v121 = 1 << v109;
              v11 = (1 << v109) - 1;
              if (!v117)
              {
                v116 = 0;
              }

              if (v109 == 16)
              {
                v122 = 31744;
              }

              else
              {
                v122 = 2139095040;
              }

              if (v109 == 16)
              {
                v123 = 64512;
              }

              else
              {
                v123 = 4286578688;
              }

              if (v109 == 16)
              {
                v124 = 32256;
              }

              else
              {
                v124 = 2143289344;
              }

              v125 = 4290772992;
              if (v109 == 16)
              {
                v125 = 65024;
              }

              v186 = v125;
              v179 = v108;
              v126 = v108;
              do
              {
                if (v114)
                {
                  if (v111 == *(&v191 + v107))
                  {
                    v127 = v116;
                    v128 = v117 == v118;
                  }

                  else
                  {
                    v129 = v190[7 * v107 + v112];
                    v128 = (v118 - v117) / v115 == v129;
                    if (v129 > v119)
                    {
                      sub_76A5C();
                    }

                    if (v129 | v117)
                    {
                      if (v120 < v121 || (v127 = v121 - 1, v129 != v119))
                      {
                        v127 = (v115 >> 1) + v115 * v129;
                      }
                    }

                    else
                    {
                      v127 = 0;
                    }

                    ++v112;
                  }
                }

                else
                {
                  v127 = 0;
                  v128 = v115 > v118 - v117;
                }

                v130 = v127 + v117;
                v131 = v130;
                if (v187 == 1)
                {
                  if (v130 < v122 || (v131 = (v122 - 1), v130 >= v124))
                  {
                    if (v130 < v124 || (v131 = v118, v130 >= v118))
                    {
                      if (v130 < v186 && v130 >= v123)
                      {
                        v131 = (v123 - 1);
                      }

                      else
                      {
                        v131 = v130;
                      }
                    }
                  }
                }

                if (v131 >= v121)
                {
                  v133 = v121 - 1;
                }

                else
                {
                  v133 = v131;
                }

                if (v128)
                {
                  v134 = 0;
                }

                else
                {
                  v134 = v133 ^ v118;
                }

                if ((v187 & 0xFFFFFFFE) != 2)
                {
                  v134 = v133;
                }

                *v126 = v134;
                v126 += 4;
                ++v111;
              }

              while (v111 != 8);
              ++v107;
              v108 = (v179 + 4);
            }

            while (v107 != v181);
          }

          goto LABEL_175;
        }

        v43 = 0;
        v44 = v203;
        v45 = v42;
        v46 = v42;
        do
        {
          v48 = *v45;
          v45 += 4;
          v47 = v48;
          if (v48 == 2)
          {
            v49 = 1;
          }

          else if ((v47 - 8) >= 5)
          {
            v49 = 4;
            if (v47 != 16 && v47 != 32)
            {
              sub_769D8();
            }
          }

          else
          {
            v49 = 3;
          }

          *v44++ = sub_754F4(v204, v49);
          v43 += v49;
          --v41;
        }

        while (v41);
        v185 = v43;
        v50 = 0;
        v51 = v211;
        v52 = v46;
        v53 = v210;
        v54 = v203;
        v55 = v181;
        while (1)
        {
          v57 = *v52++;
          v56 = v57;
          if (v57 == 2)
          {
            v58 = *v54;
            *v53 = 0;
            v59 = v58 & 1;
            v60 = v51;
          }

          else
          {
            v61 = v56 - 8 < 5 || v56 == 16;
            if (!v61 && v56 != 32)
            {
              sub_76A04();
            }

            v62 = *v54;
            if (((v56 & 0xFFFFFFFD) == 8 || v56 == 12) && v62 == 0)
            {
              v65 = sub_76230(v204, v208, 2u);
              v208 += 2;
              v185 += 2;
              *v53 = 0;
              v59 = v65 & 3;
              v66 = v53;
              v60 = v51;
            }

            else
            {
              v60 = &v211[v50];
              *v53 = 0;
              if (v56 >= 0x10)
              {
                v59 = v62 & 0xF;
                goto LABEL_50;
              }

              v59 = 0;
              v66 = &v210[v50];
            }

            v67 = v62 & 7;
            *v60 = v67;
            if ((v56 & 0xD) == 8)
            {
              if ((v62 & 7) != 0)
              {
                v59 = v67 + 2;
              }

              else
              {
                if (v59 > 1)
                {
                  if (v59 == 2)
                  {
                    v59 = 1;
                  }

                  else
                  {
                    v59 = 2;
                  }

                  goto LABEL_50;
                }

                if (!v59)
                {
LABEL_79:
                  *v66 = 0;
                  goto LABEL_50;
                }

                v59 = 0;
                *v66 = ~(-1 << v56);
              }
            }

            else
            {
              if (v56 != 12)
              {
                goto LABEL_51;
              }

              if ((v62 & 7) != 0)
              {
                v59 = v67 + 3;
              }

              else if (!v59)
              {
                goto LABEL_79;
              }
            }
          }

LABEL_50:
          *v60 = v59;
LABEL_51:
          ++v50;
          ++v51;
          ++v53;
          ++v54;
          if (!--v55)
          {
            goto LABEL_84;
          }
        }
      }
    }
  }

  v143 = a1[85];
  v144 = &dword_B92F0[11 * v143];
  if (v144[8] == a3)
  {
    v145 = (a3 & ~(-1 << v144[7])) + 1;
    v206 = a2;
    v205 = v145 << (v143 == 26);
    v209 = 1;
    v208 = 0;
    v207 = 8 * v205;
    if (v143 == 27)
    {
      v146 = 27;
    }

    else
    {
      v155 = 0;
      do
      {
        a4[v155] = sub_754F4(v204, *(&unk_B97C0 + 13 * v143 + v155 + 3));
        ++v155;
        v143 = a1[85];
      }

      while (v155 < *(&unk_B97C0 + 13 * v143 + 2));
      v146 = a1[85];
    }

    v156 = 0;
    for (i = 0; i != 4; ++i)
    {
      v158 = 0;
      v159 = v156;
      do
      {
        if (v146 == 27)
        {
          v146 = 27;
        }

        else
        {
          v160 = 0;
          v161 = a4;
          do
          {
            *(v161 + v159) = *v161;
            ++v160;
            v146 = a1[85];
            ++v161;
          }

          while (v160 < *(&unk_B97C0 + 13 * v146 + 2));
        }

        ++v158;
        v159 += 16;
      }

      while (v158 != 8);
      v156 += 128;
    }

    return 1;
  }

  if (v144[9] == a3)
  {
    v147 = 0;
    v148 = dword_B92F0[11 * v143 + 5];
    v206 = a2;
    v205 = v148;
    v209 = 1;
    v208 = 0;
    v207 = 8 * v148;
    do
    {
      if (v143 != 27)
      {
        v149 = 0;
        v150 = vdupq_n_s32(v147);
        v151.i64[0] = 0x100000001;
        v151.i64[1] = 0x100000001;
        v152 = vshlq_u32(vandq_s8(vshlq_u32(v150, xmmword_B8000), v151), xmmword_B7FF0);
        v153 = vshlq_u32(vandq_s8(vshlq_u32(v150, xmmword_B7FE0), v151), xmmword_B7FF0);
        v154 = &a4[32 * (vorr_s8(*v152.i8, *&vextq_s8(v152, v152, 8uLL)).u32[0] | v152.i32[1]) + 4 * (vorr_s8(*v153.i8, *&vextq_s8(v153, v153, 8uLL)).u32[0] | v153.i32[1])];
        do
        {
          v154[v149] = sub_754F4(v204, *(&unk_B97C0 + 13 * v143 + v149 + 3));
          ++v149;
          v143 = a1[85];
        }

        while (v149 < *(&unk_B97C0 + 13 * v143 + 2));
      }

      ++v147;
    }

    while (v147 != 32);
    if (a1[87])
    {
      sub_769AC();
    }

    return 1;
  }

  if (v144[10] == a3)
  {
    for (j = 0; j != 32; ++j)
    {
      v164 = vdupq_n_s32(j);
      v165.i64[0] = 0x100000001;
      v165.i64[1] = 0x100000001;
      v166 = vshlq_u32(vandq_s8(vshlq_u32(v164, xmmword_B8000), v165), xmmword_B7FF0);
      v167 = vshlq_u32(vandq_s8(vshlq_u32(v164, xmmword_B7FE0), v165), xmmword_B7FF0);
      sub_7553C(&unk_B97C0 + 13 * v143, a2, &a4[32 * (vorr_s8(*v166.i8, *&vextq_s8(v166, v166, 8uLL)).u32[0] | v166.i32[1]) + 4 * (vorr_s8(*v167.i8, *&vextq_s8(v167, v167, 8uLL)).u32[0] | v167.i32[1])]);
      v143 = a1[85];
      a2 += *(&unk_B97C0 + 13 * v143 + 1);
    }

    if (a1[87])
    {
      sub_76980();
    }

    return 1;
  }

  v168 = ((a3 & ~(-1 << v8)) + 1) << (v143 == 26);
  v169 = dword_B92F0[11 * v143 + 5];
  v206 = a2;
  if (v169 >= v168)
  {
    v169 = v168;
  }

  v205 = v169;
  v209 = 1;
  v208 = 0;
  v207 = 8 * v169;
  if (sub_755F8(a1, a2, a3, v204))
  {
    sub_759C8(a1, a2, a3, v204, a4);
    sub_760F4(a1, a4);
    return 1;
  }

LABEL_215:
  sub_7540C(a1, a4);
  return 0;
}

uint64_t sub_74B0C(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = sub_74C0C(a1, a2, a3);
  v8 = &a1[3 * v6];
  v8[1] = result;
  v9 = v8 + 1;
  if (a4 >> result)
  {
    sub_76AB4();
  }

  v9[1] = a4;
  v9[2] = 1;
  return result;
}

uint64_t sub_74B64(unsigned int *a1)
{
  v2 = *a1;
  v3 = dword_B8020[15 * *a1 + 14];
  for (i = 3; i != 7; ++i)
  {
    if (v2 == 27)
    {
      v2 = 27;
    }

    else
    {
      v5 = 0;
      do
      {
        v3 = sub_74C0C(a1, i, v5++) + v3;
        v2 = *a1;
      }

      while (v5 < *(&unk_B97C0 + 13 * *a1 + 2));
    }
  }

  return v3;
}

uint64_t sub_74C0C(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 <= 1)
  {
    return dword_B8020[15 * *a1 + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = a1 + 1;
    if (!a1[3 * a3 + 3])
    {
      sub_76B0C();
    }

    if (!v4[3 * a3 + 14])
    {
      sub_76AE0();
    }

    if ((v4[3 * a3 + 1] & 8) != 0)
    {
      return v4[3 * a3 + 13] + 1;
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&unk_B97C0 + 13 * *a1 + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      sub_76B64();
    }

    if (!a1[3 * a3 + 3])
    {
      sub_76B90();
    }

    if ((a1[3 * a3 + 2] & 3) == 2)
    {
      return *(&unk_B97C0 + 13 * *a1 + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!a1[3 * a3 + 3])
  {
    sub_76B38();
  }

  if ((a1[3 * a3 + 2] & 4) == 0)
  {
    return 0;
  }

  if (*(&unk_B97C0 + 13 * *a1 + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_74DA0(uint64_t a1, uint64_t a2)
{
  if (a1 <= 11)
  {
    if (a1 == 8)
    {
      return 0;
    }

    if (a1 == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xC:
        return 2;
      case 0x10:
        return 3;
      case 0x20:
        return 4;
    }
  }

  if (a1 == 2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if ((a1 | 2) != 2)
  {
    sub_76BBC(a1);
  }

  return v2;
}

uint64_t sub_74E28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 12);
  if (v5 == 5)
  {
    v6 = *(a3 + 12);
    if (v6 >= 2)
    {
      sub_76C28();
    }

    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 5;
    }

    *(a3 + 12) = v7;
    *(a2 + 12) = 1;
  }

  if (!result)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  do
  {
    v13 = *(a3 + 4 * v8);
    if (v13 > v11 || v8 == 1 && v13 == v11)
    {
      v11 = *(a3 + 4 * v8);
      v10 = v8;
    }

    if (v13 < v12)
    {
      v12 = *(a3 + 4 * v8);
      v9 = v8;
    }

    v14 = qword_B9EC8[80 * *(a2 + 4 * v8) + 3 + 5 * v13];
    *(a5 + 4 * v8) = v14;
    *(a4 + 4 * v8++) = v14;
  }

  while (result != v8);
  if (result != 1)
  {
LABEL_19:
    v15 = (v10 + 1) % 3;
    if (v15 == v9)
    {
      v15 = (v10 + 2) % 3;
    }

    v16 = *(a3 + 4 * v15);
    v17 = *(a3 + 4 * (6 - (v10 + v9) - v15));
    v18 = v16 > v17;
    if (v16 <= v17)
    {
      v19 = v15;
    }

    else
    {
      v19 = 6 - (v10 + v9) - v15;
    }

    if (!v18)
    {
      v15 = 6 - (v10 + v9) - v15;
    }

    v20 = *(a3 + 4 * v10);
    v21 = *(a3 + 4 * v9);
    if (result == 2)
    {
      if (v20 == v21 || *(a4 + 4 * v9) < 1)
      {
LABEL_47:
        if (v5 == 5)
        {
          *(a2 + 12) = 5;
          *(a3 + 12) = *(a3 + 12) != 5;
          if (*(a4 + 12) >= 1)
          {
            sub_76BFC();
          }
        }

        return result;
      }

      *(a5 + 4 * v9) = 0;
      v22 = *(a4 + 4 * v9);
      v23 = *(a5 + 4 * v10);
      goto LABEL_30;
    }

    v25 = *(a3 + 4 * v19);
    if ((v20 - v25) <= 1 && v21 <= 1)
    {
      *(a5 + 4 * v9) = 0;
      v30 = 1431655766 * *(a4 + 4 * v9);
      *(a5 + 4 * v19) += HIDWORD(v30) + (v30 >> 63);
      v31 = 1431655766 * (*(a4 + 4 * v9) + 1);
      *(a5 + 4 * v15) += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (*(a4 + 4 * v9) + 2);
      v33 = HIDWORD(v32) + (v32 >> 63);
      v34 = *(a5 + 4 * v10);
LABEL_45:
      v24 = v33 + v34;
      goto LABEL_46;
    }

    v27 = *(a3 + 4 * v15);
    if ((v20 - v27) <= 1 && v21 <= 1)
    {
      *(a5 + 4 * v9) = 0;
      v35 = *(a4 + 4 * v19) & (*(a4 + 4 * v19) >> 31);
      *(a5 + 4 * v19) = v35;
      *(a5 + 4 * v15) += (*(a4 + 4 * v9) - v35 + *(a4 + 4 * v19)) / 2;
      v24 = *(a5 + 4 * v10) + (*(a4 + 4 * v9) + *(a4 + 4 * v19) - *(a5 + 4 * v19) + 1) / 2;
      goto LABEL_46;
    }

    if (v27 - v21 > 1)
    {
      if (v27 - v21 != 2)
      {
        goto LABEL_57;
      }

      v29 = *(a4 + 4 * v10);
    }

    else
    {
      v29 = *(a4 + 4 * v10);
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      result = *(a4 + 4 * v15);
      if (result > 0)
      {
LABEL_54:
        v36 = 0;
        *(a5 + 4 * v9) = 0;
        *(a5 + 4 * v19) = 0;
        if (*(a4 + 4 * v19) + *(a4 + 4 * v9) >= 6)
        {
          v36 = *(a4 + 4 * v15);
        }

        *(a5 + 4 * v15) = v36;
        v33 = *(a4 + 4 * v9) - v36 + *(a4 + 4 * v19);
        v34 = *(a4 + 4 * v15) + *(a5 + 4 * v10);
        goto LABEL_45;
      }
    }

    if (v29 <= -2 && *(a4 + 4 * v15) >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v21 || *(a4 + 4 * v9) < 1 || *(a4 + 4 * v19) < 1 || (*(a4 + 4 * v15) & 0x80000000) != 0 || *(a4 + 4 * v10) > -2)
    {
      if (v20 != v21 && *(a4 + 4 * v9) >= 1)
      {
        *(a5 + 4 * v9) = 0;
        *(a5 + 4 * v10) += *(a4 + 4 * v9);
      }

      if (v27 != v25 && *(a4 + 4 * v19) >= 1)
      {
        *(a5 + 4 * v19) = 0;
        *(a5 + 4 * v15) += *(a4 + 4 * v19);
      }

      goto LABEL_47;
    }

    *(a5 + 4 * v9) = 0;
    *(a5 + 4 * v19) = 0;
    *(a5 + 4 * v15) = *(a4 + 4 * v15);
    v23 = *(a4 + 4 * v19);
    v22 = *(a4 + 4 * v9) + *(a5 + 4 * v10);
LABEL_30:
    v24 = v23 + v22;
LABEL_46:
    *(a5 + 4 * v10) = v24;
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_751F0(uint64_t result, int a2, int a3, int a4, _DWORD *a5, _DWORD *a6)
{
  v6 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v7 = &qword_B9EC8[80 * result + 5 * a2];
    if (*(v7 + 7) < a3 - a4)
    {
      --*a6;
      if (!*(v7 + 8))
      {
        v6 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v6;
LABEL_4:
    *a5 += v6;
  }

  return result;
}

uint64_t sub_75260(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  *a1 = a2;
  if (dword_B8020[15 * a2] != a2)
  {
    sub_76C54();
  }

  *(a1 + 4) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 340) = a2;
  *(a1 + 348) = a3;
  *(a1 + 352) = a4;
  if (!sub_73588(a3, a2))
  {
    sub_76C80();
  }

  if (a3 && a4 >= 4)
  {
    sub_76CAC();
  }

  *(a1 + 344) = *(&unk_B97C0 + 52 * a2 + 48);
  return a1;
}

uint64_t sub_75338(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(a1 + 348);
    if ((v2 - 1) <= 2)
    {
      return dword_B86B0[28 * *(a1 + 340) + 8 + v2];
    }
  }

  v4 = *(a1 + 340);
  v5 = &dword_B92F0[11 * v4];
  if (v5[8] == a2)
  {
    return ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  }

  if (v5[9] == a2)
  {
    return v5[5];
  }

  if (!a2)
  {
    return 0;
  }

  v6 = ((a2 & ~(-1 << v5[7])) + 1) << (v4 == 26);
  v7 = dword_B92F0[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_7540C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(result + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_B8000), v3), xmmword_B7FF0);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_B7FE0), v3), xmmword_B7FF0);
      v9 = a2 + ((vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1]) << 7) + 16 * (vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]);
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&unk_B97C0 + 13 * v4 + v5 + 3));
        }

        *(v9 + 4 * v5++) = v10;
        v4 = *(result + 340);
      }

      while (v5 < *(&unk_B97C0 + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return result;
}

uint64_t sub_754F4(uint64_t a1, uint64_t a2)
{
  if (a2 >= 0x21)
  {
    sub_76CD8();
  }

  v2 = a2;
  result = sub_76230(a1, *(a1 + 540), a2);
  *(a1 + 540) += v2;
  return result;
}

void *sub_7553C(unsigned int *a1, const void *a2, uint64_t a3)
{
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, a1[1]);
  if (a1[2])
  {
    v6 = 0;
    v7 = a1 + 7;
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      *(a3 + 4 * v6++) = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < a1[2]);
  }

  return result;
}

BOOL sub_755F8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 340);
  v5 = dword_B92F0[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &dword_B8020[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    sub_76D04();
  }

  v11 = *(a4 + 512);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = sub_754F4(a4, v9);
  *(a1 + 4) = 0u;
  v19 = a1 + 4;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  sub_74B0C(a1, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < sub_74B64(a1))
      {
        return 0;
      }
    }

    else
    {
      if (i != 8)
      {
        v21 = i >> 2;
        if (i >> 2 == 6)
        {
          continue;
        }

        goto LABEL_11;
      }

      sub_754F4(a4, dword_B8020[15 * *(a1 + 340) + 13] + v15 - *(a4 + 540));
    }

    v21 = i >> 2;
LABEL_11:
    v22 = sub_74C0C(a1, v21, i & 3);
    v23 = sub_754F4(a4, v22);
    sub_74B0C(a1, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = sub_74C0C(a1, 6u, i & 3);
      v25 = sub_754F4(a4, v24);
      sub_74B0C(a1, 6u, i & 3, v25);
    }
  }

  v26 = sub_74B64(a1);
  sub_754F4(a4, (v26 + v15 - *(a4 + 540)));
  v27 = *(a1 + 340);
  if (v27 == 21)
  {
    if (!*(a1 + 24))
    {
      sub_76D30();
    }

    if (!*(a1 + 36))
    {
      sub_76D30();
    }

    v28 = *(a1 + 20);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(a1 + 32);
      *(a1 + 344) = 2;
      sub_74B0C(a1, 0, 1u, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      sub_74B0C(a1, 0, 2u, v29 & 0xFFFFFFEF);
      v27 = *(a1 + 340);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &unk_B97C0 + 52 * v27;
  LODWORD(v33) = *(v32 + 2);
  if (v33 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v33;
  }

  v34 = v32 + 12;
  do
  {
    if (v27 != 27)
    {
      v35 = 0;
      v36 = (a1 + 12);
      v37 = (a1 + 12);
      do
      {
        v38 = *v37;
        v37 += 3;
        if (!v38)
        {
          sub_76D30();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*(v19 + 12 * (v35 + 12) + 8))
          {
            sub_76D30();
          }

          v40 = *(v19 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*(v19 + 12 * (v35 + 4) + 8))
          {
            sub_76D30();
          }

          v42 = *&v34[4 * v35];
          if (v42 == 32)
          {
            v43 = 2;
          }

          else
          {
            v43 = 1;
          }

          v44 = v40 >> (v30 << v43);
          if (v42 == 32)
          {
            v45 = 15;
          }

          else
          {
            v45 = 3;
          }

          v41 = *(v19 + 12 * (v35 + 4) + 4) - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += dword_B9E70[v30] * v41;
        ++v35;
        v36 = v37;
      }

      while (v33 != v35);
    }

    ++v30;
  }

  while (v30 != 4);
  if (v27 == 26)
  {
    v46 = 15;
  }

  else
  {
    v46 = 7;
  }

  if (((*(a4 + 540) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return sub_76304(a1) == 0;
}

uint64_t sub_759C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = 0;
  v7 = result + 4;
  v77 = (result + 12);
  v8 = 0uLL;
  v82 = a5;
  v88 = result;
  do
  {
    v9 = 0;
    v76 = v5;
    v86 = v5 >> 2 << 6;
    v79 = a5 + ((v6 & 1) << 8) + v86;
    v81 = 4 * (v5 >> 2);
    v89[6] = v8;
    v89[7] = v8;
    v89[4] = v8;
    v89[5] = v8;
    v89[2] = v8;
    v89[3] = v8;
    v89[0] = v8;
    v89[1] = v8;
    if (dword_B9E70[v6] <= 1u)
    {
      v10 = 1;
    }

    else
    {
      v10 = dword_B9E70[v6];
    }

    v11 = *(result + 340);
    v12 = v11;
    v84 = v10;
    do
    {
      if (v12 == 27)
      {
        v13 = v9 + 1;
      }

      else
      {
        v14 = 0;
        v13 = v9 + 1;
        v15 = v89;
        v16 = v77;
        v17 = &unk_B97CC;
        v18 = v77;
        do
        {
          v19 = *v18;
          v18 += 3;
          if (!v19)
          {
            sub_76D30();
          }

          v20 = *(v16 - 4);
          if ((v20 & 4) != 0)
          {
            if (!*(v7 + 12 * (v14 + 12) + 8))
            {
              sub_76D30();
            }

            v21 = *(v7 + 12 * (v14 + 12) + 4);
          }

          else
          {
            v21 = 0;
          }

          v22 = v20 & 3;
          if (v22 == 3)
          {
            v23 = 0;
          }

          else
          {
            if (!*(v7 + 12 * (v14 + 4) + 8))
            {
              sub_76D30();
            }

            v24 = v17[13 * v12] == 32;
            if (v17[13 * v12] == 32)
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }

            v26 = v21 >> (v6 << v25);
            if (v24)
            {
              v27 = 15;
            }

            else
            {
              v27 = 3;
            }

            v23 = *(v7 + 12 * (v14 + 4) + 4) - (v26 & v27) + 1;
          }

          v28 = sub_754F4(a4, v23);
          if (v23 >= 0x21)
          {
            sub_76D5C();
          }

          if (v22 == 1)
          {
            v29 = 0;
          }

          else
          {
            v29 = 7;
          }

          if (v9 != 6)
          {
            v29 = v9 + 1;
          }

          if (v6)
          {
            v29 = v9;
          }

          v30 = vdupq_n_s32(v29);
          v31.i64[0] = 0x100000001;
          v31.i64[1] = 0x100000001;
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_B8000), v31), xmmword_B7FF0);
          v33 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_B7FE0), v31), xmmword_B7FF0);
          LODWORD(v15[4 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1]) + (vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)).u32[0] | v33.i32[1])]) = v28 << -v23 >> -v23;
          ++v14;
          v12 = *(v88 + 340);
          ++v17;
          v15 = (v15 + 4);
          v16 = v18;
          v8 = 0uLL;
        }

        while (v14 < *(&unk_B97C0 + 13 * v12 + 2));
        v11 = *(v88 + 340);
        a5 = v82;
        result = v88;
        v10 = v84;
      }

      v9 = v13;
    }

    while (v13 != v10);
    v34 = v86;
    if (v11 != 27)
    {
      v35 = 0;
      v36 = (2 * v6) & 2;
      v78 = v89;
      do
      {
        if (!*(v7 + 12 * v35 + 8))
        {
          sub_76D30();
        }

        v37 = v35;
        v38 = *(v7 + 12 * v35 + 4);
        if ((v38 & 4) != 0)
        {
          if (!*(v7 + 12 * (v35 + 12) + 8))
          {
            sub_76D30();
          }

          v39 = *(v7 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(v7 + 12 * v35 + 4);
        v41 = *(&unk_B97C0 + 13 * v11 + v37 + 3) == 32;
        if (*(&unk_B97C0 + 13 * v11 + v37 + 3) == 32)
        {
          v42 = 2;
        }

        else
        {
          v42 = 1;
        }

        v43 = v39 >> (v6 << v42);
        if (v41)
        {
          v44 = 15;
        }

        else
        {
          v44 = 3;
        }

        v45 = v43 & v44;
        v46 = v38 & 3;
        if (v46 == 3)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (!*(v7 + 12 * (v37 + 4) + 8))
          {
            sub_76D30();
          }

          v47 = *(v7 + 12 * (v37 + 4) + 4) - v45 + 1;
          if ((v38 & 1 | 2) == 2)
          {
            v48 = 0;
          }

          else
          {
            v48 = 3;
          }

          v49 = (v38 & 1 | 2) != 2;
        }

        v85 = (v7 + 12 * (v37 + 8) + 8);
        if (!*v85)
        {
          sub_76D30();
        }

        v50 = 0;
        v51 = v7 + 12 * (v37 + 8);
        v53 = *(v51 + 4);
        v52 = (v51 + 4);
        *(a5 + (v49 << 7) + 16 * v48 + 4 * v37) = v53;
        v54 = (v45 == 0) & (v40 >> 3);
        v55 = v7 + 12 * (v37 + 16);
        v56 = v7 + 12 * (v37 + 20);
        v57 = v7 + 12 * (v37 + 24);
        v58 = 1;
        do
        {
          v59 = 0;
          v60 = 0;
          v80 = v58;
          v61 = -v50;
          v83 = v50 | v36;
          v62 = &v78[4 * v50];
          v63 = v6 & 1 ^ v50 ^ 1;
          v64 = v79 + (v50 << 7);
          v65 = v63 | v36;
          v66 = 3;
          v67 = &v89[4 * v63];
          do
          {
            if (v61 != v36 || v34 + v59 * 16)
            {
              if (v54)
              {
                if (!*(v55 + 8))
                {
                  sub_76D30();
                }

                v68 = *(v55 + 4);
              }

              else
              {
                v68 = 0;
              }

              if (v47 >= 0x21)
              {
                sub_76D5C();
              }

              v69 = v68 << (-v47 & 0x1F) >> (-v47 & 0x1F);
              if (v46 > 1)
              {
                if (v46 == 2)
                {
                  if (!*(v56 + 8))
                  {
                    sub_76D30();
                  }

                  v70 = *(&unk_B97C0 + 13 * *(result + 340) + v37 + 3);
                  if (v70 >= 0x42)
                  {
                    sub_76D5C();
                  }

                  if (!*(v57 + 8))
                  {
                    sub_76D30();
                  }

                  if (!*v85)
                  {
                    sub_76D30();
                  }

                  if (v70 >= 0x21)
                  {
                    sub_76D88();
                  }

                  result = v88;
                  a5 = v82;
                  v71 = *v52 - v69 + LODWORD(v62[v59]) + ((*(v57 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * v83 + ((*(v56 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * (v81 + v60);
                  v34 = v86;
LABEL_79:
                  v72 = ((v71 & ~(-1 << v70)) << -v70) >> -v70;
                }

                else
                {
                  v72 = *(a5 + 4 * v37);
                }

                *(v64 + v59 * 16) = v72;
                goto LABEL_87;
              }

              if (!v46)
              {
                if (!*v85)
                {
                  sub_76D30();
                }

                v70 = *(&unk_B97C0 + 13 * *(result + 340) + v37 + 3);
                if (v70 >= 0x21)
                {
                  sub_76D88();
                }

                v71 = *v52 - v69 + LODWORD(v62[v59]);
                goto LABEL_79;
              }

              v73 = *(&unk_B97C0 + 13 * *(result + 340) + v37 + 3);
              if (v73 >= 0x21)
              {
                sub_76D88();
              }

              if (v6 >= 2)
              {
                v74 = v60;
              }

              else
              {
                v74 = v66;
              }

              v75 = v74 | (2 * v6) & 4;
              v34 = v86;
              *(a5 + (v65 << 7) + 16 * v75 + 4 * v37) = (((*(a5 + (dword_B9D70[16 * v65 + 1 + 2 * v75] << 7) + 16 * dword_B9D70[16 * v65 + 2 * v75] + 4 * v37) - v69 + *(&v67[v74] + v37)) & ~(-1 << v73)) << -v73) >> -v73;
            }

LABEL_87:
            ++v60;
            --v66;
            ++v59;
          }

          while (v59 != 4);
          v58 = 0;
          v50 = 1;
        }

        while ((v80 & 1) != 0);
        v35 = v37 + 1;
        v11 = *(result + 340);
        v78 = (v78 + 4);
        v79 += 4;
      }

      while ((v37 + 1) < *(&unk_B97C0 + 13 * v11 + 2));
    }

    ++v6;
    v5 = v76 + 2;
  }

  while (v6 != 4);
  return result;
}

_DWORD *sub_760F4(_DWORD *result, int *a2)
{
  v2 = 0;
  v3 = result[85];
  v4 = a2;
  do
  {
    v5 = 0;
    v6 = v4;
    v7 = v3;
    do
    {
      if (v7 != 27)
      {
        v8 = 0;
        v9 = result + 3;
        v10 = v6;
        v11 = &unk_B97CC;
        do
        {
          if (!*v9)
          {
            sub_76D30();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = result[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                sub_76D88();
              }

              *v10 = ((((a2[32 * v2 + 4 * v5 + v12] >> (*(&unk_B97C0 + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = result[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = result[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&unk_B97C0 + 13 * v3 + 2));
      }

      ++v5;
      v6 += 4;
    }

    while (v5 != 8);
    ++v2;
    v4 += 32;
  }

  while (v2 != 4);
  return result;
}

uint64_t sub_76230(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    sub_76DB4();
  }

  v3 = a2;
  v4 = *(a1 + 536);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 85, "0");
  }

  v5 = *(a1 + 512);
  __dst = 0;
  v6 = 520;
  if (*(a1 + 544))
  {
    v6 = 528;
  }

  v7 = *(a1 + v6);
  LODWORD(v8) = v5 - (a2 >> 3);
  if (v8 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v8;
  }

  v9 = -1 << a3;
  memcpy(&__dst, (v7 + (a2 >> 3)), v8);
  return (__dst >> (v3 & 7)) & ~v9;
}

uint64_t sub_76304(unsigned int *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  if (!a1[3 * *(&unk_B97C0 + 52 * *a1 + 48) + 3])
  {
    sub_76D30();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (LOBYTE(v1[3 * *(&unk_B97C0 + 52 * *a1 + 48) + 1]) >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &unk_B97C0 + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = a1 + 3;
    v9 = a1 + 3;
    do
    {
      v10 = *v9;
      v9 += 3;
      if (!v10)
      {
        sub_76D30();
      }

      v11 = *(v8 - 4);
      if ((v11 & 3u) - 1 >= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = result | 2;
      }

      if ((v11 & 0x10) == 0)
      {
        v12 = result;
      }

      if ((v2 > 0x16 || ((1 << v2) & 0x4000C3) == 0) && (v11 & 3) == 2)
      {
        v12 |= 4u;
      }

      v13 = v11 & 3;
      if (v13 == 3)
      {
        if (!v1[3 * (v5 + 4) + 2])
        {
          sub_76D30();
        }

        if (v11 & 4 | v1[3 * (v5 + 4) + 1])
        {
          v12 |= 0x10u;
        }
      }

      else
      {
        v14 = v12 | 8;
        if (v2 != 26)
        {
          v14 = v12;
        }

        if (v13 == 1)
        {
          v12 = v14;
        }
      }

      if (!v1[3 * (v5 + 4) + 2])
      {
        sub_76D30();
      }

      if (v1[3 * (v5 + 4) + 1] + 1 <= *&v6[4 * v5 + 12])
      {
        result = v12;
      }

      else
      {
        result = v12 | 0x20;
      }

      ++v5;
      v8 = v9;
    }

    while (v7 != v5);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}