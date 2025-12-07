uint64_t AVE_PS_Compose_general_profile_compatibility_flag(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 4)
  {
    return 4294966277;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *(a2 + v5) |= *(a1 + 32 + v4) << (v4 & 7 ^ 7);
    if ((v4 & 7) == 7)
    {
      ++v5;
    }

    ++v4;
  }

  while (v4 != 32);
  return 4;
}

uint64_t AVE_PS_Compose_general_constraint_indicator_flags(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if (a3 < 6)
  {
    return 4294966277;
  }

  ProfileIdc = HEVC_FindProfileIdc(*(a1 + 28));
  bzero(a2, a3);
  v9 = (*(a1 + 65) << 6) | (*(a1 + 64) << 7) | (32 * *(a1 + 66)) | (16 * *(a1 + 67));
  *a2 = v9;
  if (ProfileIdc == 4 || ProfileIdc == 5 || (*(a1 + 36) & 1) != 0 || ProfileIdc == 6 || (*(a1 + 37) & 1) != 0 || ProfileIdc == 7 || (*(a1 + 38) & 1) != 0 || ProfileIdc == 8 || (*(a1 + 39) & 1) != 0 || ProfileIdc == 9 || (*(a1 + 40) & 1) != 0 || ProfileIdc == 10 || (*(a1 + 41) & 1) != 0 || ProfileIdc == 11 || (*(a1 + 42) & 1) != 0 || *(a1 + 43) == 1)
  {
    *a2 = (8 * *(a1 + 68)) | (4 * *(a1 + 69)) | (2 * *(a1 + 70)) | *(a1 + 71) | v9;
    v8.i32[0] = *(a1 + 72);
    v10 = vshl_u16(*&vmovl_u8(v8), 0x4000500060007);
    v11 = v10.i32[0] | v10.i32[1] | ((*&v10 | HIDWORD(*&v10)) >> 16) | (8 * *(a1 + 76));
  }

  else
  {
    if (ProfileIdc != 2 && *(a1 + 34) != 1)
    {
      return 5;
    }

    LOBYTE(v11) = 16 * *(a1 + 75);
  }

  a2[1] = v11;
  return 5;
}

uint64_t AVE_PixelFmt_GetSupportedList(int a1, int a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = 4294966295;
  if (!a5 || !a6)
  {
LABEL_5:
    if (!a6)
    {
      return result;
    }

    goto LABEL_6;
  }

  PixelFmt = AVE_DevCap_FindPixelFmt(a1, a2, a4);
  if (PixelFmt)
  {
    result = AVE_DevCap_PixelFmt_FindList(PixelFmt, a3, a5, a6);
    goto LABEL_5;
  }

  result = 4294966288;
  if (!a6)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t AVE_PixelFmt_GetSupportedListByProfile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = a8;
  v9 = 1;
  v10 = 4294966295;
  if (a7 && a8)
  {
    NumOfTypes = AVE_PixelFmt_GetNumOfTypes();
    v18 = malloc_type_malloc(4 * NumOfTypes, 0x100004052888210uLL);
    if (v18)
    {
      v19 = v18;
      if (a4 == 1)
      {
        v20 = &gs_sAVE_ProfileMap_AVC;
        v22 = 9;
        while (*v20 != a5)
        {
          v20 += 8;
          if (!--v22)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_17;
        }

        v20 = &gs_sAVE_ProfileMap_HEVC;
        v21 = 9;
        while (*v20 != a5)
        {
          v20 += 8;
          if (!--v21)
          {
            goto LABEL_16;
          }
        }
      }

      v51 = v20;
      v59[0] = NumOfTypes;
      if (!AVE_PixelFmt_GetSupportedList(a1, a2, a3, a4, v18, v59))
      {
        v45 = v8;
        if (v59[0] < 1)
        {
          LODWORD(v54) = 0;
        }

        else
        {
          v24 = 0;
          v54 = 0;
          v25 = 36;
          if (a4 == 2)
          {
            v25 = 40;
          }

          v50 = v25;
          v26 = a6;
          v47 = a5;
          v46 = a4;
          v58 = a5;
          v57 = a4;
          v49 = a5;
          v56 = a5;
          v48 = a4;
          v55 = a4;
          do
          {
            v52 = v24;
            v27 = AVE_PixelFmt_FindByType(v19[v24]);
            v28 = *&v27[v50];
            v29 = 2;
            v30 = v54;
            do
            {
              v31 = v51[v29];
              if (!v31)
              {
                break;
              }

              if (v31 == v28 && (*(v51 + 4) != 1 || *(v27 + 1) == v26))
              {
                *(a7 + 4 * v30) = *v27;
                v30 = (v30 + 1);
              }

              ++v29;
            }

            while (v29 != 8);
            v54 = v30;
            if (AVE_Log_CheckLevel(0x4Bu, 8))
            {
              v32 = AVE_Log_CheckConsole(0x4Bu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(8);
              if (v32)
              {
                printf("%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d\n", CurrTime, 75, LevelStr, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v48, v49, v26, v30);
                v35 = AVE_GetCurrTime();
                v44 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d", v35, 75, v44, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v48, v49, v26, v30);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d number of supported pixel format %d %d 0x%x %d %d %d %d", CurrTime, 75, LevelStr, "AVE_PixelFmt_GetSupportedListByProfile", 249, a1, a2, a3, v46, v47, a6, v30);
              }
            }

            if (v30 >= 1)
            {
              v36 = 0;
              v37 = v30;
              do
              {
                if (AVE_Log_CheckLevel(0x4Bu, 8))
                {
                  v38 = AVE_Log_CheckConsole(0x4Bu);
                  v39 = AVE_GetCurrTime();
                  v40 = AVE_Log_GetLevelStr(8);
                  v41 = *(a7 + 4 * v36);
                  if (v38)
                  {
                    printf("%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x\n", v39, 75, v40, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v57, v58, a6, v36, v41);
                    v42 = AVE_GetCurrTime();
                    v43 = AVE_Log_GetLevelStr(8);
                    v37 = v30;
                    syslog(3, "%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x", v42, 75, v43, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v57, v58, a6, v36, *(a7 + 4 * v36));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d list of supported pixel format %d %d 0x%x %d %d %d [%d] 0x%x", v39, 75, v40, "AVE_PixelFmt_GetSupportedListByProfile", 255, a1, a2, a3, v55, v56, a6, v36, v41);
                  }
                }

                ++v36;
              }

              while (v37 != v36);
            }

            v24 = v52 + 1;
            v26 = a6;
          }

          while (v52 + 1 < v59[0]);
        }

        v10 = 0;
        v9 = 0;
        v8 = v45;
        *v45 = v54;
        goto LABEL_18;
      }

LABEL_16:
      v9 = 1;
LABEL_17:
      v10 = 4294966288;
LABEL_18:
      free(v19);
      goto LABEL_19;
    }

    v10 = 4294966293;
  }

LABEL_19:
  if (v8 && v9)
  {
    *v8 = 0;
  }

  return v10;
}

uint64_t AVE_PixelFmt_CheckSupportedType(int a1, int a2, int a3, int a4, int a5)
{
  NumOfTypes = AVE_PixelFmt_GetNumOfTypes();
  v11 = malloc_type_malloc(4 * NumOfTypes, 0x100004052888210uLL);
  if (!v11)
  {
    return 4294966293;
  }

  v12 = v11;
  v18 = NumOfTypes;
  SupportedList = AVE_PixelFmt_GetSupportedList(a1, a2, a3, a4, v11, &v18);
  if (!SupportedList)
  {
    v14 = v18;
    if (v18 < 1)
    {
LABEL_7:
      SupportedList = 4294966295;
    }

    else
    {
      v15 = v12;
      while (1)
      {
        v16 = *v15++;
        if (v16 == a5)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_7;
        }
      }

      SupportedList = 0;
    }
  }

  free(v12);
  return SupportedList;
}

uint64_t AVE_PixelFmt_Check(const unsigned int *a1, unsigned int a2, int a3)
{
  if (a2 < 1)
  {
    return 4294966295;
  }

  v3 = a2;
  while (1)
  {
    v4 = *a1++;
    if (v4 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return 4294966295;
    }
  }

  return 0;
}

uint64_t AVE_Ref_RetrieveArray(CFArrayRef theArray, int *a2, int *a3)
{
  if (theArray && a2 && a3 && *a3 > 0)
  {
    Count = CFArrayGetCount(theArray);
    v7 = *a3;
    if (Count < *a3)
    {
      v7 = Count;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < 1)
    {
LABEL_17:
      result = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = a2;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        AVE_CFDict_GetSInt32(ValueAtIndex, @"ReferenceFrameNumDriver", v11);
        AVE_CFDict_GetSInt32(v13, @"ReferenceRVRAIndex", v11 + 1);
        ++v9;
        v11 += 2;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }

      if (AVE_Log_CheckLevel(0xE1u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xE1u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p\n", CurrTime, 225, LevelStr, "AVE_Ref_RetrieveArray", 36, "pDict != __null", theArray, a2, a3);
          v22 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v22, 225, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", CurrTime, 225, LevelStr);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xE1u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v16, 225, v17, "AVE_Ref_RetrieveArray", 25, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", theArray, a2, a3);
        v18 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 225, v17);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Ref_MakeArray(char *a1, unsigned int a2, __CFArray *a3)
{
  if (a1 && a2 >= 1 && a3)
  {
    v6 = a2;
    v7 = (a1 + 4);
    v8 = MEMORY[0x29EDB9010];
    v9 = MEMORY[0x29EDB9020];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v8, v9);
      if (!Mutable)
      {
        break;
      }

      v11 = Mutable;
      AVE_CFDict_AddSInt32(@"ReferenceFrameNumDriver", *(v7 - 1), Mutable);
      v12 = *v7;
      v7 += 2;
      AVE_CFDict_AddSInt32(@"ReferenceRVRAIndex", v12, v11);
      CFArrayAppendValue(a3, v11);
      CFRelease(v11);
      if (!--v6)
      {
        return 0;
      }
    }

    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xE1u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p\n", CurrTime, 225, LevelStr, "AVE_Ref_MakeArray", 73, "pDict != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", v21, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %d %p", CurrTime, 225, LevelStr);
      }
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xE1u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v15, 225, v16, "AVE_Ref_MakeArray", 65, "pInfo != __null && iNum > 0 && pArray != __null", a1, a2, a3);
        v17 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v17, 225, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v15, 225, v16);
      }
    }

    return 4294966295;
  }
}

pthread_mutex_t *AVE_Mutex_Create(void)
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->__opaque[24] = 0u;
    *&v0->__opaque[40] = 0u;
    *&v0->__sig = 0u;
    *&v0->__opaque[8] = 0u;
    if (pthread_mutex_init(v0, 0))
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t AVE_Mutex_Destroy(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_destroy(a1))
  {
    v2 = 4294966296;
  }

  else
  {
    v2 = 0;
  }

  free(a1);
  return v2;
}

uint64_t AVE_Mutex_Lock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_Mutex_Unlock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_VSNPrintf(char *a1, int a2, const char *a3, va_list a4)
{
  result = vsnprintf(a1, a2, a3, a4);
  if (a1)
  {
    if (result >= a2)
    {
      result = a2 - 1;
      a1[result] = 0;
    }
  }

  return result;
}

char *AVE_StrNCpy(char *a1, const char *a2, int a3)
{
  result = strncpy(a1, a2, a3);
  result[a3 - 1] = 0;
  return result;
}

void AVE_SyntaxWriter::AVE_SyntaxWriter(AVE_SyntaxWriter *this)
{
  *this = &unk_2A1C85F88;
  *(this + 1) = 0;
  *(this + 4) = this + 40;
  *(this + 4136) = 1;
  *(this + 2) = 0x100000000000;
  *(this + 6) = 0xFFFF;
}

void AVE_SyntaxWriter::AVE_SyntaxWriter(AVE_SyntaxWriter *this, unsigned __int8 *a2, int a3, char a4)
{
  *this = &unk_2A1C85F88;
  *(this + 1) = 0;
  *(this + 4) = a2;
  *(this + 4136) = a4;
  *(this + 4) = 0;
  *(this + 5) = a3;
  *(this + 6) = 0xFFFF;
}

uint64_t AVE_SyntaxWriter::WriteBit(AVE_SyntaxWriter *this, char a2)
{
  v2 = *(this + 6);
  v3 = a2 & 1 | (2 * v2);
  *(this + 6) = v3;
  v4 = *(this + 2) + 1;
  *(this + 2) = v4;
  if (v4 != 8)
  {
    return 0;
  }

  v5 = v2 & 0x7FFFFE;
  if (*(this + 4136) == 1 && v5 == 0)
  {
    v7 = *(this + 3);
    if (v7 >= *(this + 5))
    {
      return 4294966277;
    }

    v8 = *(this + 4);
    *(this + 3) = v7 + 1;
    *(v8 + v7) = 3;
    v3 = *(this + 6) | 0x300;
    *(this + 6) = v3;
    *(this + 4) += 8;
  }

  v9 = *(this + 3);
  if (v9 >= *(this + 5))
  {
    return 4294966277;
  }

  v10 = 0;
  v11 = *(this + 4);
  *(this + 3) = v9 + 1;
  *(v11 + v9) = v3;
  *(this + 2) = 0;
  return v10;
}

uint64_t AVE_SyntaxWriter::WriteBits(AVE_SyntaxWriter *this, unsigned int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(this + 2);
  while (1)
  {
    v4 = 8 - v3;
    if (a3 < 8 - v3)
    {
      v4 = a3;
    }

    v3 += v4;
    *(this + 2) = v3;
    a3 -= v4;
    v5 = (a2 >> a3) & ~(-1 << v4) | (*(this + 6) << v4);
    *(this + 6) = v5;
    if (v3 != 8)
    {
      goto LABEL_12;
    }

    if (*(this + 4136) == 1 && (v5 & 0xFFFFFC) == 0)
    {
      v6 = *(this + 3);
      if (v6 >= *(this + 5))
      {
        return 4294966277;
      }

      v7 = *(this + 4);
      *(this + 3) = v6 + 1;
      *(v7 + v6) = 3;
      v5 = *(this + 6) | 0x300;
      *(this + 6) = v5;
      *(this + 4) += 8;
    }

    v8 = *(this + 3);
    if (v8 >= *(this + 5))
    {
      return 4294966277;
    }

    v3 = 0;
    v9 = *(this + 4);
    *(this + 3) = v8 + 1;
    *(v9 + v8) = v5;
    *(this + 2) = 0;
LABEL_12:
    if (!a3)
    {
      return 0;
    }
  }
}

uint64_t AVE_SyntaxWriter::WriteI(AVE_SyntaxWriter *this, signed int a2, int a3)
{
  if (a2 < 0)
  {
    a2 = 0x80000000 - a2;
  }

  return AVE_SyntaxWriter::WriteBits(this, a2, a3);
}

uint64_t AVE_SyntaxWriter::WriteStartCode(AVE_SyntaxWriter *this)
{
  v1 = *(this + 3);
  if (v1 >= *(this + 5))
  {
    return 4294966277;
  }

  v2 = *(this + 4);
  *(this + 3) = v1 + 1;
  *(v2 + v1) = 0;
  v3 = *(this + 3);
  if (v3 >= *(this + 5))
  {
    return 4294966277;
  }

  v4 = *(this + 4);
  *(this + 3) = v3 + 1;
  *(v4 + v3) = 0;
  v5 = *(this + 3);
  if (v5 >= *(this + 5))
  {
    return 4294966277;
  }

  v6 = *(this + 4);
  *(this + 3) = v5 + 1;
  *(v6 + v5) = 0;
  v7 = *(this + 3);
  if (v7 >= *(this + 5))
  {
    return 4294966277;
  }

  v8 = 0;
  v9 = *(this + 4);
  *(this + 3) = v7 + 1;
  *(v9 + v7) = 1;
  return v8;
}

uint64_t AVE_SyntaxWriter::WriteBytes(AVE_SyntaxWriter *this, const unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = *a2++;
    result = AVE_SyntaxWriter::WriteBits(this, v6, 8);
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

uint64_t AVE_SyntaxWriter::CopyFromSyntaxWriter(AVE_SyntaxWriter *this, const AVE_SyntaxWriter *a2)
{
  if (*(this + 2) | *(a2 + 2))
  {
    return 4294966296;
  }

  v4 = *(this + 3);
  v5 = *(a2 + 3);
  if (v5 + v4 > *(this + 5))
  {
    return 4294966277;
  }

  memcpy((*(this + 4) + v4), *(a2 + 4), v5);
  result = 0;
  *(this + 3) += *(a2 + 3);
  return result;
}

uint64_t AVE_SyntaxWriter::AlignToByte(AVE_SyntaxWriter *this)
{
  result = AVE_SyntaxWriter::WriteBit(this, 1);
  if (!result)
  {
    v3 = *(this + 2);
    if (v3)
    {

      return AVE_SyntaxWriter::WriteBits(this, 0, 8 - v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double AVE_Time_Conv(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0x80000000) == 0)
  {
    if (a2)
    {
      v3 = *(a2 + 8);
      if (v3 >= 1)
      {
        if (!a1)
        {
          v2 = 14400000;
        }

        result = v2 * *a2 / v3;
        *a2 = result;
        *(a2 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t AVE_Time_Gen(int a1, uint64_t a2)
{
  v2 = 4294966296;
  if (a1 && a2)
  {
    if (14400000 % a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = 14400000;
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = (v3 * (*a2 + v4 / a1) / v4);
    }

    else
    {
      v5 = 0;
    }

    v2 = 0;
    *a2 = v5;
    *(a2 + 8) = v3;
  }

  return v2;
}

uint64_t AVE_ComposeFilePath(const char *a1, const char *a2, const char *a3, char *a4, int a5)
{
  v19 = *MEMORY[0x29EDCA608];
  *v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  if (!a4)
  {
    return 4294966295;
  }

  *a4 = 0;
  setlocale(0, &unk_295613FE7);
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
    v12 = &unk_295613FE7;
  }

  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = &unk_295613FE7;
  }

  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = &unk_295613FE7;
  }

  AVE_SNPrintf(a4, a5, "%s%s%s%s%s", v11, v17, v12, v13, v14);
  return 0;
}

uint64_t AVE_RetCode2OSStatus(uint64_t result)
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

void AVE_DAL::AVE_DAL(AVE_DAL *this)
{
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
}

uint64_t AVE_DAL::Uninit(pthread_mutex_t **this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = AVE_DAL::TearDownIPC(this);
  v6 = this[6];
  if (v6)
  {
    v5 = AVE_Mutex_Destroy(v6);
    this[6] = 0;
  }

  v7 = this[1];
  if (v7)
  {
    v5 = AVE_Mutex_Destroy(v7);
    this[1] = 0;
  }

  if (v5)
  {
    v8 = 4;
  }

  else
  {
    v8 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v8))
  {
    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v10, 36, v11, "AVE_DAL", "Uninit", this, *this, v5);
      v10 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v10, 36);
  }

  return v5;
}

uint64_t AVE_DAL::Init(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "Init", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = AVE_Mutex_Create();
  if (v5)
  {
    v6 = v5;
    v7 = AVE_Mutex_Create();
    if (v7)
    {
      *(this + 1) = v6;
      *(this + 6) = v7;
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x24u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld\n", v12, 36, v13, "AVE_DAL", "Init", 102, "pThreadMutex != __null", this, *this);
        v14 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v14, 36, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread mutex %p %lld", v12, 36, v13);
      }
    }
  }

  else if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld\n", v9, 36, v10, "AVE_DAL", "Init", 98, "pMutex != __null", this, *this);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create mutex %p %lld", v9, 36, v10);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v15 = AVE_Log_CheckConsole(0x24u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(6);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v16, 36, v17, "AVE_DAL", "Init", this, *this, 0);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v16, 36);
  }

  return 0;
}

uint64_t AVE_DAL::TearDownIPC(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TearDownIPC", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_DAL::DestroyRecvThread(this);
  v5 = AVE_DAL::DestroyPool(this);
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v7 = AVE_Log_CheckConsole(0x24u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(v6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "TearDownIPC", this, *this, v5);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return v5;
}

uint64_t AVE_DAL::CreatePool(AVE_DAL *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v20 = 0;
  if (a2 < 1 || a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x24u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "CreatePool", 178, "num > 0 && size > 0", this, *this, v4, v3);
        v10 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v10, 36, v18, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", CurrTime, 36, LevelStr, "AVE_DAL");
      }
    }

    v6 = 4294966295;
  }

  else
  {
    if (*(this + 4))
    {
      return 0;
    }

    SurfaceCfg = AVE_GetSurfaceCfg(3);
    v12 = AVE_CreateUSurface(*this, 0, v3 * v4, SurfaceCfg[1], &v20);
    if (!v12)
    {
      operator new();
    }

    v6 = v12;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x24u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create surface %p %lld %s %llx %d %d %d\n", v14, 36, v15, "AVE_DAL", "CreatePool", 190, "ret == 0", this, *this, *SurfaceCfg, SurfaceCfg[1], v4, v3, v6);
        v16 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
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
    AVE_DestroyUSurface(v20);
  }

  return v6;
}

uint64_t AVE_DAL::DestroyPool(AVE_DAL *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = AVE_BlkPool::Destroy(v2);
    if (v3 && AVE_Log_CheckLevel(0x24u, 4))
    {
      v4 = AVE_Log_CheckConsole(0x24u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "DestroyPool", 243, this, *this, *(this + 4), v3);
        v7 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", v7, 36, v11, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %d", CurrTime, 36, LevelStr, "AVE_DAL");
      }
    }

    v8 = *(this + 4);
    if (v8)
    {
      AVE_BlkPool::~AVE_BlkPool(v8);
      MEMORY[0x29C24E920]();
    }

    *(this + 4) = 0;
  }

  else
  {
    v3 = 0;
  }

  v9 = *(this + 3);
  if (v9)
  {
    v3 = AVE_DestroyUSurface(v9);
    *(this + 3) = 0;
  }

  *(this + 2) = 0;
  return v3;
}

uint64_t AVE_DAL::SetUpIPC(AVE_DAL *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetUpIPC", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", CurrTime, 36);
  }

  if (a2 < 1 || a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x24u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "SetUpIPC", 277, "num > 0 && size > 0", this, *this, a2, a3);
        v18 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v29, "AVE_DAL");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v16, 36, v17, "AVE_DAL");
      }
    }

    RecvThread = 4294966295;
    goto LABEL_26;
  }

  Pool = AVE_DAL::CreatePool(this, a2, a3);
  if (Pool)
  {
    RecvThread = Pool;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x24u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d\n", v12, 36, v13, "AVE_DAL", "SetUpIPC", 282, "ret == 0", this, *this, a2, a3, RecvThread);
        v14 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d", v14, 36, v28, "AVE_DAL", "SetUpIPC");
        goto LABEL_26;
      }

      v36 = a3;
      v37 = RecvThread;
      v34 = *this;
      v35 = a2;
      v33 = this;
      v32 = 282;
      v30 = v13;
      v21 = "%lld %d AVE %s: %s::%s:%d %s | fail to create pool %p %lld %d %d %d";
LABEL_25:
      syslog(3, v21, v12, 36, v30, "AVE_DAL", "SetUpIPC", v32, "ret == 0", v33, v34, v35, v36, v37);
    }
  }

  else
  {
    RecvThread = AVE_DAL::CreateRecvThread(this);
    if (!RecvThread)
    {
      v22 = 6;
      goto LABEL_27;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x24u);
      v12 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d\n", v12, 36, v20, "AVE_DAL", "SetUpIPC", 286, "ret == 0", this, *this, a2, a3, RecvThread);
        v12 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
      }

      v36 = a3;
      v37 = RecvThread;
      v34 = *this;
      v35 = a2;
      v33 = this;
      v32 = 286;
      v30 = v20;
      v21 = "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d %d";
      goto LABEL_25;
    }
  }

LABEL_26:
  AVE_DAL::DestroyRecvThread(this);
  AVE_DAL::DestroyPool(this);
  v22 = 4;
LABEL_27:
  if (AVE_Log_CheckLevel(0x24u, v22))
  {
    v23 = AVE_Log_CheckConsole(0x24u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(v22);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v24, 36, v25, "AVE_DAL", "SetUpIPC", this, *this, a2, a3, RecvThread);
      v26 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v26, 36, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v24, 36, v25);
    }
  }

  return RecvThread;
}

uint64_t AVE_DAL::CreateRecvThread(AVE_DAL *this)
{
  v57 = *MEMORY[0x29EDCA608];
  memset(&v56, 0, sizeof(v56));
  object = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "CreateRecvThread", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 9))
  {
    goto LABEL_7;
  }

  v52 = this;
  LODWORD(v53) = 0;
  object = voucher_copy();
  v7 = pthread_attr_init(&v56);
  if (v7)
  {
    v8 = v7;
    v6 = 4;
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
LABEL_21:
      v5 = 4294966296;
      goto LABEL_31;
    }

    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to initialize thread attribute %p %lld %d %d\n", v10, 36, v11, "AVE_DAL", "CreateRecvThread", 1635, "res == 0", this, *this, v8, 0);
      v12 = AVE_GetCurrTime();
      v6 = 4;
      v49 = AVE_Log_GetLevelStr(4);
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
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
      goto LABEL_21;
    }

    v15 = AVE_Log_CheckConsole(0x24u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to get scheduling parameter %p %lld %d %d\n", v16, 36, v17, "AVE_DAL", "CreateRecvThread", 1639, "res == 0", this, *this, v14, 0);
      v18 = AVE_GetCurrTime();
      v6 = 4;
      v50 = AVE_Log_GetLevelStr(4);
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
    if (!AVE_Log_CheckLevel(0x24u, 4))
    {
      goto LABEL_21;
    }

    v21 = AVE_Log_CheckConsole(0x24u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | fail to set scheduling parameter %p %lld %d %d\n", v22, 36, v23, "AVE_DAL", "CreateRecvThread", 1645, "res == 0", this, *this, v20, 0);
      v24 = AVE_GetCurrTime();
      v6 = 4;
      v51 = AVE_Log_GetLevelStr(4);
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

  v25 = pthread_create(this + 9, &v56, AVE_DAL::RecvThread, &v52);
  if (v25)
  {
    v26 = v25;
    v6 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v27 = AVE_Log_CheckConsole(0x24u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *this;
      if (!v27)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v28, 36, v29, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, v30, v26, 0);
        v5 = 4294966292;
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d\n", v28, 36, v29, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, v30, v26, 0);
      v31 = AVE_GetCurrTime();
      v6 = 4;
      v32 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create thread %p %lld %d %d", v31, 36, v32, "AVE_DAL", "CreateRecvThread", 1649, "res == 0", this, *this, v26, 0);
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
      if ((v39 >> 2) <= 0x83126E && AVE_Log_CheckLevel(0x24u, 5))
      {
        v40 = AVE_Log_CheckConsole(0x24u);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(5);
        if (v40)
        {
          printf("%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d\n", v41, 36, v42, "AVE_DAL", "CreateRecvThread", 1658, this, *this, v38 + 1);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d long thread creation time %p %lld %d", v41, 36, v42, "AVE_DAL", "CreateRecvThread", 1658, this, *this, v38 + 1);
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
  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v43 = AVE_Log_CheckConsole(0x24u);
    v44 = AVE_GetCurrTime();
    v45 = AVE_Log_GetLevelStr(4);
    v46 = *this;
    if (!v43)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v44, 36, v45, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, v46, v37, 0);
      v5 = 4294966279;
      goto LABEL_30;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d\n", v44, 36, v45, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, v46, v37, 0);
    v47 = AVE_GetCurrTime();
    v6 = 4;
    v48 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | creating thread time out %p %lld %d %d", v47, 36, v48, "AVE_DAL", "CreateRecvThread", 1664, "cfg.iReady != 0", this, *this, v37, 0);
  }

  v5 = 4294966279;
LABEL_31:
  if (object != -1)
  {
    os_release(object);
  }

  pthread_attr_destroy(&v56);
  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v33 = AVE_Log_CheckConsole(0x24u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v6);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v34, 36, v35, "AVE_DAL", "CreateRecvThread", this, *this, v5);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v34, 36);
  }

  return v5;
}

uint64_t AVE_DAL::DestroyRecvThread(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "DestroyRecvThread", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 9))
  {
    AVE_DAL::TerminateRunLoop(this);
    pthread_join(*(this + 9), 0);
    *(this + 9) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v5 = AVE_Log_CheckConsole(0x24u);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 36, v7, "AVE_DAL", "DestroyRecvThread", this, *this, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 36);
  }

  return 0;
}

uint64_t AVE_DAL::Alloc(AVE_DAL *this, int a2, unint64_t *a3)
{
  v40 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Alloc", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v9, 36, v37);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
    }
  }

  if (a2 >= 1 && a3 && *(this + 5) >= a2)
  {
    *a3 = 0;
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Alloc(v10, a3, &v40);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d\n", v13, 36, v14, "AVE_DAL", "Alloc", 357, "ret == 0", this, *this, a3, v40, v11);
            v15 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v15, 36, v38, "AVE_DAL", "Alloc");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v13, 36, v14, "AVE_DAL", "Alloc");
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v30 = AVE_Log_CheckConsole(0x24u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v33 = *this;
        if (v30)
        {
          v34 = a2;
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v35 = AVE_GetCurrTime();
          v16 = 4;
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v35, 36, v36, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, *this, v34, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      v21 = *(this + 5);
      if (v17)
      {
        v22 = a2;
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p\n", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v23 = AVE_GetCurrTime();
        v16 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v23, 36, v24, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, *this, *(this + 5), v22, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v16);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v26, 36, v27, "AVE_DAL", "Alloc", this, *this, v40, a3, v11);
      v28 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v28, 36, v39, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v26, 36, v27, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_DAL::Free(AVE_DAL *this, uint64_t *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Free", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  if (a2)
  {
    AVE_Mutex_Lock(*(this + 1));
    v7 = *(this + 4);
    if (v7)
    {
      v8 = AVE_BlkPool::Free(v7, a2);
      if (v8)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v9 = AVE_Log_CheckConsole(0x24u);
          v10 = AVE_GetCurrTime();
          v11 = AVE_Log_GetLevelStr(4);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d\n", v10, 36, v11, "AVE_DAL", "Free", 398, "ret == 0", this, *this, a2, v8);
            v12 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v12, 36, v29, "AVE_DAL", "Free");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v10, 36, v11, "AVE_DAL", "Free");
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v13 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v13 = 8;
      }
    }

    else
    {
      v13 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x24u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v20, 36, v21, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v22 = AVE_GetCurrTime();
          v13 = 4;
          v23 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v22, 36, v23, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v20, 36, v21, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v13 = 4;
        }
      }

      v8 = 4294966285;
    }
  }

  else
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x24u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p\n", v15, 36, v16, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v17 = AVE_GetCurrTime();
        v13 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v15, 36, v16, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v13 = 4;
      }
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v13))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v13);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v25, 36, v26, "AVE_DAL", "Free", this, *this, a2, v8);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v27, 36, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v25, 36, v26);
    }
  }

  return v8;
}

uint64_t AVE_DAL::Idx2Addr(AVE_DAL *this, uint64_t a2, unint64_t *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Idx2Addr", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", v9, 36, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
    }
  }

  if ((a2 & 0x80000000) != 0 || !a3)
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p\n", v18, 36, v19, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v20, a2, a3);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v21, 36, v22, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, *this, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v18, 36, v19, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v20, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Idx2Addr(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d\n", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443, "ret == 0", this, *this, a2, a3, v11);
            v15 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v15, 36, v35, "AVE_DAL", "Idx2Addr", 443);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443);
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x24u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v24, 36, v25, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v27 = AVE_GetCurrTime();
          v16 = 4;
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v27, 36, v28, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v24, 36, v25, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v30, 36, v31, "AVE_DAL", "Idx2Addr", this, *this, a2, a3, v11);
      v32 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v32, 36, v36, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v30, 36, v31, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_DAL::Addr2Idx(AVE_DAL *this, const void *a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Addr2Idx", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v9, 36, v34);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 36, LevelStr);
    }
  }

  if (a3)
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Addr2Idx(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488, "ret == 0", this, *this, a2, a3, v11);
            v15 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v15, 36, v35, "AVE_DAL", "Addr2Idx", 488);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488);
          }
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x24u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p\n", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v27 = AVE_GetCurrTime();
          v16 = 4;
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v27, 36, v28, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v21, 36, v22, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, *this, a2, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v30, 36, v31, "AVE_DAL", "Addr2Idx", this, *this, a2, a3, v11);
      v32 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v32, 36, v36, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v30, 36, v31, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_DAL::SetCallback(AVE_DAL *this, int (*a2)(void *, int, int, int, int), void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetCallback", this, *this, *(this + 5), a2, a3);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v23, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = 0;
    *(this + 15) = a2;
    *(this + 16) = a3;
    v11 = 6;
    goto LABEL_13;
  }

  v11 = 4;
  if (!AVE_Log_CheckLevel(0x24u, 4))
  {
    goto LABEL_11;
  }

  v12 = AVE_Log_CheckConsole(0x24u);
  v13 = AVE_GetCurrTime();
  v14 = AVE_Log_GetLevelStr(4);
  v15 = *this;
  if (v12)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, v15, a2, a3);
    v16 = AVE_GetCurrTime();
    v11 = 4;
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v16, 36, v17, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, *this, a2, a3);
LABEL_11:
    v10 = 4294966295;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v13, 36, v14, "AVE_DAL", "SetCallback", 521, "pCB != __null && pParam != __null", this, v15, a2, a3);
  v10 = 4294966295;
  v11 = 4;
LABEL_13:
  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v11);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v19, 36, v20, "AVE_DAL", "SetCallback", this, *this, *(this + 5), a2, a3, v10);
      v21 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v21, 36, v24, "AVE_DAL", "SetCallback");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v19, 36, v20, "AVE_DAL", "SetCallback");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UpdatePriorityPolicy(AVE_DAL *this, int a2, int a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UpdatePriorityPolicy", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d", CurrTime, 36);
  }

  if ((a3 | a2) < 0)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x24u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      v17 = *this;
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v15, 36, v16, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, v17, a2, a3);
        v12 = 4294966295;
        v13 = 4;
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d\n", v15, 36, v16, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, v17, a2, a3);
      v18 = AVE_GetCurrTime();
      v13 = 4;
      v19 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d", v18, 36, v19, "AVE_DAL", "UpdatePriorityPolicy", 555, "policy >= 0 && frameRate >= 0", this, *this, a2, a3);
    }

    v12 = 4294966295;
    goto LABEL_25;
  }

  AVE_Mutex_Lock(*(this + 6));
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

  if (v11 != *(this + 15) || *(this + 14) != a2)
  {
    *(this + 14) = a2;
    *(this + 15) = v11;
    ++*(this + 16);
  }

  AVE_Mutex_Unlock(*(this + 6));
  v12 = 0;
  v13 = 6;
LABEL_25:
  if (AVE_Log_CheckLevel(0x24u, v13))
  {
    v20 = AVE_Log_CheckConsole(0x24u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v13);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d\n", v21, 36, v22, "AVE_DAL", "UpdatePriorityPolicy", this, *this, a2, a3, v12);
      v23 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v13);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v23, 36, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d", v21, 36, v22);
    }
  }

  return v12;
}

uint64_t AVE_DAL::UCCreate(uint64_t *a1, uint32_t a2)
{
  v26 = 0;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCCreate", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d", CurrTime, 36);
  }

  if (a2 - 1 >= 5)
  {
    v8 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v15 = AVE_Log_CheckConsole(0x24u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %d\n", v16, 36, v17, "AVE_DAL", "UCCreate", 653, "AVE_ClientType_None < type && type < AVE_ClientType_Max", a1, *a1, a2);
        v18 = AVE_GetCurrTime();
        v8 = 4;
        v19 = AVE_Log_GetLevelStr(4);
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
    v7 = AVE_UC_Create(a2, &v26);
    if (v7)
    {
      v8 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v9 = AVE_Log_CheckConsole(0x24u);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        v12 = *a1;
        if (v9)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create UC %p %lld %d %d\n", v10, 36, v11, "AVE_DAL", "UCCreate", 657, "ret == 0", a1, v12, a2, v7);
          v13 = AVE_GetCurrTime();
          v8 = 4;
          v14 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v8))
  {
    v20 = AVE_Log_CheckConsole(0x24u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v8);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v21, 36, v22, "AVE_DAL", "UCCreate", a1, *a1, a2, a1[5], v7);
      v23 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v23, 36, v25, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v21, 36, v22, "AVE_DAL");
    }
  }

  return v7;
}

uint64_t AVE_DAL::UCDestroy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCDestroy", this, *this, *(this + 5));
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  v5 = *(this + 5);
  if (v5 && (v6 = AVE_UC_Destroy(v5), *(this + 5) = 0, v6))
  {
    v7 = v6;
    v8 = 4;
  }

  else
  {
    v7 = 0;
    v8 = 6;
  }

  if (AVE_Log_CheckLevel(0x24u, v8))
  {
    v9 = AVE_Log_CheckConsole(0x24u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(v8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v10, 36, v11, "AVE_DAL", "UCDestroy", this, *this, *(this + 5), v7);
      v12 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(v8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v12, 36, v14);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v10, 36, v11);
    }
  }

  return v7;
}

uint64_t AVE_DAL::UCOpen(const void **a1, uint64_t a2, const void **a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v30, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    AVE_StrNCpy((a2 + 40), "905.5.3", 16);
    v10 = AVE_DW_Get();
    memcpy((a2 + 56), v10, 0x650uLL);
    *(a2 + 1672) = 0;
    AVE_Log_Load((a2 + 1672), a2 + 1680);
    v11 = AVE_UC_Open(a1[5], a2, a3);
    if (v11)
    {
      v12 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v13 = AVE_Log_CheckConsole(0x24u);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v16 = *a1;
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to open client %p %lld %p %p %d\n", v14, 36, v15, "AVE_DAL", "UCOpen", 723, "ret == 0", a1, v16, a2, a3, v11);
          v17 = AVE_GetCurrTime();
          v12 = 4;
          v18 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x24u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v20, 36, v21, "AVE_DAL", "UCOpen", 712, "pIn != __null && pOut != __null", a1, v22, a2, a3);
        v23 = AVE_GetCurrTime();
        v12 = 4;
        v24 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v12))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v12);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v26, 36, v27, "AVE_DAL", "UCOpen", a1, *a1, a1[5], a2, a3, v11);
      v28 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v12);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v28, 36, v31, "AVE_DAL", "UCOpen");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v26, 36, v27, "AVE_DAL", "UCOpen");
    }
  }

  return v11;
}

uint64_t AVE_DAL::UCClose(const void **a1, const void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Close(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to close client %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCClose", 758, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCClose", 754, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCClose", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCClose");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCClose");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCPrepare(const void **a1, const void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Prepare(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to prepare %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCPrepare", 791, "ret == 0", a1, v15, a2, a3, v10);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCPrepare", 787, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCPrepare", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCPrepare");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCPrepare");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCStart(uint64_t *a1, _DWORD *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    a2[10] = AVE_USurface::GetID(a1[3]);
    v10 = AVE_UC_Start(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to start %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStart", 833, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStart", 826, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStart", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCStart");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStart");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCStop(const void **a1, const void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Stop(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to stop %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCStop", 873, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCStop", 869, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCStop", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCStop");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCStop");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCProcess(const void **a1, const void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Process(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCProcess");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCProcess");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCComplete(const void **a1, const void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Complete(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCComplete");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCComplete");
    }
  }

  return v10;
}

uint64_t AVE_DAL::UCReset(const void **a1, const void *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3);
      v9 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", v9, 36, v29, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
    }
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Reset(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to reset %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCReset", 1005, "ret == 0", a1, v15, a2, a3, v10);
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
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCReset", 1001, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCReset", a1, *a1, a1[5], a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v11);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v27, 36, v30, "AVE_DAL", "UCReset");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCReset");
    }
  }

  return v10;
}

void AVE_DAL::UCRecv(AVE_DAL *this, void *a2, unsigned int *a3, unint64_t *a4)
{
  v4 = a4;
  v6 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCRecv", this, v6, a3, v4);
      v11 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v11, 36, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", CurrTime, 36, LevelStr);
    }
  }

  if (this && a3 && v4 > 0)
  {
    if (*(this + 28))
    {
      if (*(this + 15))
      {
        v12 = AVE_DAL::SetThreadPolicy(this);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v14 = AVE_Log_CheckConsole(0x24u);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v15, 36, v16, "AVE_DAL", "UCRecv", 1184, "ret == 0", this, *this, v13);
              v17 = AVE_GetCurrTime();
              v44 = AVE_Log_GetLevelStr(4);
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
          v30 = AVE_IOReturn2RetCode(v6);
          v31 = *a3;
          v32 = a3[2];
          v33 = a3[4];
          if (AVE_Log_CheckLevel(0x24u, 8))
          {
            v34 = v6;
            v35 = AVE_Log_CheckConsole(0x24u);
            v36 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(8);
            if (v35)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d\n", v36, 36, v37, "AVE_DAL", "UCRecv", 1192, this, *this, v30, v31, v32, v33);
              v38 = AVE_GetCurrTime();
              v47 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v38, 36, v47, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v36, 36, v37, "AVE_DAL");
            }

            v6 = v34;
          }

          v13 = (*(this + 15))(*(this + 16), v30, v31, v32, v33);
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

      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x24u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p\n", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null", this, v6, a3, v4, *(this + 15), *(this + 16));
          v29 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v29, 36, v46, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
        }
      }
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x24u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d\n", v23, 36, v24, "AVE_DAL", "UCRecv", 1175, "pDAL->m_iThreadState != 0", this, v6, a3, v4, *(this + 28));
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d", v23, 36, v24, "AVE_DAL", "UCRecv");
    }

    v25 = 5;
    v13 = -1011;
    goto LABEL_34;
  }

  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d\n", v19, 36, v20, "AVE_DAL", "UCRecv", 1169, "pCtx != __null && pArgs != __null && num > 0", this, v6, a3, v4);
      v21 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0x24u, v25))
  {
    v39 = AVE_Log_CheckConsole(0x24u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d\n", v40, 36, v41, "AVE_DAL", "UCRecv", this, v6, a3, v4, v13);
      v42 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v42, 36, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v40, 36, v41);
    }
  }
}

uint64_t AVE_DAL::SetThreadPolicy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetThreadPolicy", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_Mutex_Lock(*(this + 6));
  if (*(this + 16) <= 0)
  {
    AVE_Mutex_Unlock(*(this + 6));
  }

  else
  {
    v5 = AVE_DAL::AdjustThreadPolicy(this, *(this + 14), *(this + 15));
    *(this + 16) = 0;
    AVE_Mutex_Unlock(*(this + 6));
    if (v5)
    {
      v6 = 4;
      goto LABEL_11;
    }
  }

  v5 = 0;
  v6 = 8;
LABEL_11:
  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v7 = AVE_Log_CheckConsole(0x24u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(v6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "SetThreadPolicy", this, *this, v5);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return v5;
}

uint64_t AVE_DAL::AdjustThreadPolicy(AVE_DAL *this, int a2, int a3)
{
  if (a2)
  {
    result = setpriority(3, 0, 4096);
    if (result)
    {
      v7 = result;
      result = AVE_Log_CheckLevel(0x24u, 5);
      if (result)
      {
        v8 = AVE_Log_CheckConsole(0x24u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(5);
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "AdjustThreadPolicy", 1254, this, *this, a2, a3, v7, 0);
          v11 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", v11, 36, v33, "AVE_DAL");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d", CurrTime, 36, LevelStr, "AVE_DAL");
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
      if (AVE_Log_CheckLevel(0x24u, 5))
      {
        v22 = AVE_Log_CheckConsole(0x24u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(5);
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to set thread priority %p %lld %d %d %d %d\n", v23, 36, v24, "AVE_DAL", "AdjustThreadPolicy", 1238, this, *this, 0, v14, v21, 0);
          v25 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v29 = AVE_Log_CheckConsole(0x24u);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d %d 0x%x %d\n", v30, 36, v31, "AVE_DAL", "AdjustThreadPolicy", 1246, "res == 0", this, *this, 0, v14, v28, 0);
          v32 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
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

uint64_t AVE_DAL::AddRunLoopSource(AVE_DAL *this)
{
  recvPort = 0;
  memset(&context, 0, sizeof(context));
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "AddRunLoopSource", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = IOCreateReceivePort(0x39u, &recvPort);
  if (v5)
  {
    v6 = v5;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x24u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create port %p %lld 0x%x %d\n", v8, 36, v9, "AVE_DAL", "AddRunLoopSource", 1318, "res == 0", this, *this, v6, 0);
        v10 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
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
    context.info = this;
    memset(&context.retain, 0, 24);
    v11 = CFMachPortCreateWithPort(0, recvPort, MEMORY[0x29EDBB0D0], &context, 0);
    if (v11)
    {
      v12 = v11;
      RunLoopSource = CFMachPortCreateRunLoopSource(0, v11, 0);
      CFRunLoopAddSource(*(this + 10), RunLoopSource, *MEMORY[0x29EDB8FC0]);
      v14 = 0;
      *(this + 22) = recvPort;
      *(this + 12) = v12;
      *(this + 13) = RunLoopSource;
      v15 = 7;
      goto LABEL_17;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v20 = AVE_Log_CheckConsole(0x24u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to create mach port %p %lld 0x%x %d\n", v21, 36, v22, "AVE_DAL", "AddRunLoopSource", 1332, "pAsyncPort != __null", this, *this, recvPort, 0);
        v23 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
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
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], recvPort, 1u, -1);
    recvPort = 0;
  }

  v15 = 4;
LABEL_17:
  if (AVE_Log_CheckLevel(0x24u, v15))
  {
    v16 = AVE_Log_CheckConsole(0x24u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(v15);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v17, 36, v18, "AVE_DAL", "AddRunLoopSource", this, *this, v14);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v15);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v17, 36);
  }

  return v14;
}

uint64_t AVE_DAL::DelRunLoopSource(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "DelRunLoopSource", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = *(this + 13);
  if (v5)
  {
    CFRunLoopRemoveSource(*(this + 10), v5, *MEMORY[0x29EDB8FC0]);
    CFRelease(*(this + 13));
    *(this + 13) = 0;
  }

  v6 = *(this + 12);
  if (v6)
  {
    CFMachPortInvalidate(v6);
    CFRelease(*(this + 12));
    *(this + 12) = 0;
  }

  v7 = *(this + 22);
  if (v7)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v7, 1u, -1);
    *(this + 22) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "DelRunLoopSource", this, *this, 0);
      v9 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return 0;
}

uint64_t AVE_DAL::SetUpRunLoop(AVE_DAL *this)
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetUpRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 10))
  {
    v5 = 0;
LABEL_8:
    v6 = 6;
    goto LABEL_30;
  }

  Current = CFRunLoopGetCurrent();
  *(this + 10) = Current;
  if (!Current)
  {
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v13 = AVE_Log_CheckConsole(0x24u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to get run loop %p %lld %d\n", v14, 36, v15, "AVE_DAL", "SetUpRunLoop", 1439, "m_pcRunLoop != __null", this, *this, 0);
        v16 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
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
  v8 = AVE_DAL::AddRunLoopSource(this);
  if (v8)
  {
    v5 = v8;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x24u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d\n", v10, 36, v11, "AVE_DAL", "SetUpRunLoop", 1445, "ret == 0", this, *this, v5);
        v12 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d", v12, 36, v25, "AVE_DAL");
        goto LABEL_27;
      }

      v31 = *this;
      v32 = v5;
      v30 = this;
      v29 = 1445;
      v28 = v11;
      v20 = "%lld %d AVE %s: %s::%s:%d %s | fail to add run loop source %p %lld %d";
LABEL_26:
      syslog(3, v20, v10, 36, v28, "AVE_DAL", "SetUpRunLoop", v29, "ret == 0", v30, v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  else
  {
    *&v35 = *this;
    *(&v37 + 1) = AVE_DAL::UCRecv;
    v38 = this;
    v5 = AVE_UC_Config(*(this + 5), *(this + 22), &v35, &v33);
    if (!v5)
    {
      *(this + 28) = 1;
      goto LABEL_8;
    }

    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v10 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d\n", v10, 36, v18, "AVE_DAL", "SetUpRunLoop", 1453, "ret == 0", this, *this, v5);
        v19 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d", v19, 36, v27, "AVE_DAL");
        goto LABEL_27;
      }

      v31 = *this;
      v32 = v5;
      v30 = this;
      v29 = 1453;
      v28 = v18;
      v20 = "%lld %d AVE %s: %s::%s:%d %s | fail to config driver %p %lld %d";
      goto LABEL_26;
    }
  }

LABEL_27:
  if (*(this + 10))
  {
    AVE_DAL::DelRunLoopSource(this);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  v6 = 4;
LABEL_30:
  if (AVE_Log_CheckLevel(0x24u, v6))
  {
    v21 = AVE_Log_CheckConsole(0x24u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v22, 36, v23, "AVE_DAL", "SetUpRunLoop", this, *this, v5);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v22, 36);
  }

  return v5;
}

uint64_t AVE_DAL::TearDownRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TearDownRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  if (*(this + 10))
  {
    *(this + 28) = 0;
    AVE_DAL::DelRunLoopSource(this);
    CFRelease(*(this + 10));
    *(this + 10) = 0;
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v5 = AVE_Log_CheckConsole(0x24u);
    v6 = AVE_GetCurrTime();
    v7 = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v6, 36, v7, "AVE_DAL", "TearDownRunLoop", this, *this, 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v6, 36);
  }

  return 0;
}

uint64_t AVE_DAL::TerminateRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TerminateRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v5 = *(this + 10);
  if (v5)
  {
    CFRunLoopStop(v5);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v7, 36, v8, "AVE_DAL", "TerminateRunLoop", this, *this, 0);
      v7 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v7, 36);
  }

  return 0;
}

void AVE_DAL::RecvThread(AVE_DAL *this, void *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v3 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
      v6 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v6, 36, v33, "AVE_DAL", "RecvThread", this);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
    }
  }

  if (this)
  {
    v13 = *this;
    if (*this)
    {
      os_retain(*(this + 2));
      v19 = voucher_adopt();
      pthread_setname_np("AVE_UCRecv");
      v20 = AVE_DAL::AdjustThreadPolicy(v13, 0, 0);
      if (v20)
      {
        v21 = v20;
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v22 = AVE_Log_CheckConsole(0x24u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v23, 36, v24, "AVE_DAL", "RecvThread", 1572, "ret == 0", v13, *v13, v21);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v23, 36, v24, "AVE_DAL");
        }
      }

      else
      {
        v21 = AVE_DAL::SetUpRunLoop(v13);
        if (v21)
        {
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v25 = AVE_Log_CheckConsole(0x24u);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            if (v25)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d\n", v26, 36, v27, "AVE_DAL", "RecvThread", 1576, "ret == 0", v13, *v13, v21);
              v28 = AVE_GetCurrTime();
              v34 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v28, 36, v34, "AVE_DAL");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v26, 36, v27, "AVE_DAL");
            }
          }
        }

        else
        {
          *(this + 2) = 1;
          CFRunLoopRun();
          AVE_DAL::TearDownRunLoop(v13);
        }
      }

      if (v19 != -1)
      {
        v29 = voucher_adopt();
        os_release(v29);
      }

      if (v21)
      {
        v7 = 4;
      }

      else
      {
        v7 = 7;
      }
    }

    else
    {
      v7 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v14 = AVE_Log_CheckConsole(0x24u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong class %p\n", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v17 = AVE_GetCurrTime();
          v7 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v17, 36, v18, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v7 = 4;
        }
      }

      v21 = -1015;
    }
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x24u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p\n", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v11, 36, v12, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v7 = 4;
      }
    }

    v21 = -1001;
  }

  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v30 = AVE_Log_CheckConsole(0x24u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(v7);
    if (v30)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v31, 36, v32, "AVE_DAL", "RecvThread", this, v21);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v31, 36, v32, "AVE_DAL", "RecvThread", this, v21);
  }

  pthread_exit(0);
}

uint64_t AVE_GetAbsTime(void)
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 1000;
}

uint64_t AVE_IOReturn2RetCode(int a1)
{
  v1 = &dword_295662D30;
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

uint64_t AVE_VUI_AddAllColorPrimToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_ColorPrimaries_Supported[i]);
  }

  return 0;
}

uint64_t AVE_VUI_AddAllTransCharToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 8; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_TransferCharacteristics_Supported[i]);
  }

  CFArrayAppendValue(theArray, *MEMORY[0x29EDB9648]);
  return 0;
}

uint64_t AVE_VUI_AddAllMatrixCoeffToCFArray(CFMutableArrayRef theArray)
{
  for (i = 0; i != 6; ++i)
  {
    CFArrayAppendValue(theArray, gsc_psaAVE_MatrixCoefficients_Supported[i]);
  }

  return 0;
}

void _GLOBAL__sub_I_AVE_VUI_Helper_Lib_cpp()
{
  v0 = *MEMORY[0x29EDB95B0];
  gsc_psaAVE_ColorPrimaries_Supported[0] = *MEMORY[0x29EDB95C0];
  *algn_2A189AAE8 = v0;
  v1 = *MEMORY[0x29EDB95B8];
  qword_2A189AAF0 = *MEMORY[0x29EDB95D0];
  unk_2A189AAF8 = v1;
  v2 = *MEMORY[0x29EDB95A8];
  qword_2A189AB00 = *MEMORY[0x29EDB95C8];
  unk_2A189AB08 = v2;
  v3 = *MEMORY[0x29EDB9630];
  gsc_psaAVE_TransferCharacteristics_Supported[0] = *MEMORY[0x29EDB9620];
  *algn_2A189AA78 = v3;
  v4 = *MEMORY[0x29EDB9650];
  qword_2A189AA80 = *MEMORY[0x29EDB9628];
  unk_2A189AA88 = v4;
  v5 = *MEMORY[0x29EDB9638];
  qword_2A189AA90 = *MEMORY[0x29EDB9610];
  unk_2A189AA98 = v5;
  v6 = *MEMORY[0x29EDB9618];
  qword_2A189AAA0 = *MEMORY[0x29EDB9640];
  unk_2A189AAA8 = v6;
  v7 = *MEMORY[0x29EDB9678];
  gsc_psaAVE_MatrixCoefficients_Supported[0] = *MEMORY[0x29EDB9680];
  *algn_2A189AAB8 = v7;
  v8 = *MEMORY[0x29EDB9688];
  qword_2A189AAC0 = *MEMORY[0x29EDB9670];
  unk_2A189AAC8 = v8;
  v9 = *MEMORY[0x29EDB9668];
  qword_2A189AAD0 = *MEMORY[0x29EDB9660];
  unk_2A189AAD8 = v9;
}

uint64_t AVE_Crypto_AddInfo(int a1, unsigned int a2, unsigned int *a3)
{
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v6 = AVE_Log_CheckConsole(0x7Bu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", CurrTime, 123, LevelStr, "AVE_Crypto_AddInfo", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", CurrTime);
  }

  if (((a2 | a1) & 0x80000000) != 0 || !a3)
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x7Bu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p\n", v16, 123, v17, "AVE_Crypto_AddInfo", 28, "(iOffset >= 0) && (iSize >= 0) && (psInfo != __null)", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %d %p", v16, 123);
    }
  }

  else
  {
    v9 = *a3;
    if (v9 > 0x41)
    {
      if (AVE_Log_CheckLevel(0x7Bu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x7Bu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d\n", v19, 123, v20, "AVE_Crypto_AddInfo", 32, "(0 <= psInfo->iNum) && (psInfo->iNum < (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", a1, a2, a3, *a3);
          v21 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
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

      if (AVE_Log_CheckLevel(0x7Bu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x7Bu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %d %d %p %d %d\n", v23, 123, v24, "AVE_Crypto_AddInfo", 43, "(0 <= totalSize) && (totalSize <= iOffset)", a1, a2, a3, *a3, v10);
          v25 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v26 = AVE_Log_CheckConsole(0x7Bu);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v27, 123, v28, "AVE_Crypto_AddInfo", a1, a2, a3, v13);
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v29, 123);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v27, 123);
    }
  }

  return v13;
}

uint64_t AVE_Crypto_PrintInfo(unsigned int *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v51 = *MEMORY[0x29EDCA608];
  v49 = 0u;
  v50 = 0u;
  if (!a1)
  {
    if (AVE_Log_CheckLevel(a2, 4))
    {
      v15 = AVE_Log_CheckConsole(a2);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!v15)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", CurrTime);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", CurrTime, a2, LevelStr, "AVE_Crypto_PrintInfo", 72, "psInfo != __null", 0);
      v18 = AVE_GetCurrTime();
      v44 = "psInfo != __null";
      v45 = 0;
      v43 = 72;
      v41 = a2;
      v42 = AVE_Log_GetLevelStr(4);
      v19 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p";
      goto LABEL_13;
    }

    return 4294966295;
  }

  v6 = a1;
  if (*a1 >= 0x43)
  {
    if (AVE_Log_CheckLevel(a2, 4))
    {
      v20 = AVE_Log_CheckConsole(a2);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (!v20)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d", v21, a2);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong Crypto info %p %d\n", v21, a2, v22, "AVE_Crypto_PrintInfo", 74, "(0 <= psInfo->iNum) && (psInfo->iNum <= (((2) < ((63 + 1)) ? (2) : ((63 + 1))) * (((32) < (256) ? (32) : (256)) + 1)))", v6, *v6);
      v18 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
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
  AVE_ComposePosStr(a4, a5, &v49, 32);
  v10 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v11 = AVE_Log_CheckConsole(a2);
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
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(a3);
      if (((v12 | ((a3 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: Crypto %s size %d\n", v13, a2, v14, &v49, *v6);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(a3);
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
      AVE_ComposePosStr(v8, v7, &v49, 32);
      if (AVE_Log_CheckLevel(a2, v10))
      {
        v27 = AVE_Log_CheckConsole(a2);
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
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(v31);
          v36 = *v26;
          if ((v33 | (v32 >> 5)))
          {
            syslog(3, "%lld %d AVE %s: Crypto %s | %d %d", v34, a2, v35, &v49, *(v26 - 1), v36);
          }

          else
          {
            printf("%lld %d AVE %s: Crypto %s | %d %d\n", v34, a2, v35, &v49, *(v26 - 1), v36);
            v37 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(v31);
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

uint64_t AVE_Crypto_Make(const UInt8 *a1, __CFDictionary *a2)
{
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v4 = AVE_Log_CheckConsole(0x7Bu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 123, LevelStr, "AVE_Crypto_Make", a1, a2);
      v7 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 123, v26, "AVE_Crypto_Make", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 123, LevelStr, "AVE_Crypto_Make", a1, a2);
    }
  }

  if (!a1 || !a2)
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x7Bu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 123, v14, "AVE_Crypto_Make", 151, "psInfo != __null && pDict != __null", a1, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 123);
    }

    goto LABEL_23;
  }

  v8 = *a1;
  if (v8 <= 0)
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x7Bu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d\n", v16, 123, v17, "AVE_Crypto_Make", 154, "psInfo->iNum > 0", a2, *a1);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong crypto info %p %d", v16, 123);
    }

LABEL_23:
    v11 = 4294966295;
    goto LABEL_24;
  }

  v9 = CFDataCreate(*MEMORY[0x29EDB8ED8], a1 + 4, 8 * v8);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(a2, *MEMORY[0x29EDB9350], v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x7Bu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFData %p %d %ld\n", v19, 123, v20, "AVE_Crypto_Make", 160, "pData != __null", a1 + 4, *a1, 8);
        v21 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
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
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v22 = AVE_Log_CheckConsole(0x7Bu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v23, 123, v24, "AVE_Crypto_Make", a1, a2, v11);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v23);
  }

  return v11;
}

uint64_t AVE_Crypto_MakeSINF(const void *a1, const void *a2, int a3, const __CFDictionary *a4)
{
  v45[2] = *MEMORY[0x29EDCA608];
  v45[0] = 0;
  v45[1] = 0;
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v8 = AVE_Log_CheckConsole(0x7Bu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %p\n", CurrTime, 123, LevelStr, "AVE_Crypto_MakeSINF", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %p", CurrTime, 123);
  }

  if (a1 && a2 && a4)
  {
    if ((a3 - 1) >= 3)
    {
      if (AVE_Log_CheckLevel(0x7Bu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x7Bu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | encode type %d not recognized.\n", v23, 123, v24, "AVE_Crypto_MakeSINF", 219, "false", a3);
          v23 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | encode type %d not recognized.", v23);
      }

      v25 = 4294966281;
    }

    else
    {
      v11 = dword_295662EB0[a3 - 1];
      VideoSecurityInfoExtension = VTEncoderSessionCreateVideoSecurityInfoExtension();
      if (VideoSecurityInfoExtension)
      {
        v13 = VideoSecurityInfoExtension;
        if (AVE_Log_CheckLevel(0x7Bu, 4))
        {
          v14 = AVE_Log_CheckConsole(0x7Bu);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d\n", v15, 123, v16, "AVE_Crypto_MakeSINF", 228, "res == noErr", a1, v11, v45, a2, 0, v13);
            v17 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create crypto SINF %p %d %p %p %p %d", v17, 123, v39, "AVE_Crypto_MakeSINF", 228, "res == noErr");
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

      v26 = *MEMORY[0x29EDB92C8];
      Value = CFDictionaryGetValue(a4, *MEMORY[0x29EDB92C8]);
      v28 = *MEMORY[0x29EDB8ED8];
      if (Value)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v28, 0, Value);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v28, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      }

      v30 = MutableCopy;
      if (!MutableCopy)
      {
        if (AVE_Log_CheckLevel(0x7Bu, 4))
        {
          v36 = AVE_Log_CheckConsole(0x7Bu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p\n", v37, 123, v38, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", Value);
            v37 = AVE_GetCurrTime();
            v43 = Value;
            v42 = AVE_Log_GetLevelStr(4);
          }

          else
          {
            v43 = Value;
            v42 = v38;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutable sample extension atoms dictionary %p", v37, 123, v42, "AVE_Crypto_MakeSINF", 245, "pSampleExtAtomDict != __null", v43, v44);
        }

        goto LABEL_28;
      }

      CFDictionarySetValue(MutableCopy, @"sinf", 0);
      CFDictionarySetValue(a4, v26, v30);
      CFRelease(v30);
      v25 = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x7Bu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x7Bu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p\n", v19, 123, v20, "AVE_Crypto_MakeSINF", 201, "(pSession != __null) && (piKeyID != __null) && (pDict != __null)", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v21, 123, v40, "AVE_Crypto_MakeSINF");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d %p", v19, 123, v20, "AVE_Crypto_MakeSINF");
      }
    }

    v25 = 4294966295;
  }

LABEL_32:
  if (AVE_Log_CheckLevel(0x7Bu, 8))
  {
    v31 = AVE_Log_CheckConsole(0x7Bu);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(8);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %p %d\n", v32, 123, v33, "AVE_Crypto_MakeSINF", a1, a2, a3, a4, v25);
      v34 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v34, 123, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %p %d", v32, 123, v33);
    }
  }

  return v25;
}

unsigned int *AVE_DevCap_FindSearchRangeMode(int a1, int a2, int a3, int a4)
{
  result = AVE_DevCap_FindSearchRange(a1, a2, a3);
  if (result)
  {

    return AVE_DevCap_SearchRange_Find(result, a4);
  }

  return result;
}

uint64_t AVE_DevCap_FindPixelPerf(int a1, int a2, int a3, int a4, int a5, int a6)
{
  result = AVE_DevCap_FindPerf(a1, a2, a3);
  if (result)
  {
    result = AVE_DevCap_Perf_Find(result, a4, a5, a6);
    if (result)
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t AVE_DRC_RetrieveMetaData(CFDictionaryRef theDict, BOOL *a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    Bool = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE90], a2);
    v5 = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCEB0], a2 + 1) + Bool;
    SInt32 = AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA0], &v14);
    a2[2] = v14;
    v7 = v5 + SInt32 + AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE98], a2 + 3);
    return v7 + AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA8], a2 + 1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DRC_MakeMetaData(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCE90], *a1, theDict);
    v5 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCEB0], a1[1], theDict) + v4;
    v6 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA0], a1[2], theDict);
    v7 = v5 + v6 + AVE_CFDict_AddBool(*MEMORY[0x29EDBCE98], a1[3], theDict);
    return v7 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA8], *(a1 + 1), theDict);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DPB_RetrieveSnapshotEntry(CFDictionaryRef theDict, void *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE80], &v33);
    *a2 = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE50], &v33);
    *(a2 + 1) = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE58], &v33);
    *(a2 + 2) = v33;
    AVE_CFDict_GetSInt64(theDict, *MEMORY[0x29EDBCE70], a2 + 2);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE68], &v33);
    *(a2 + 6) = v33;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE60]);
    if (Value)
    {
      v5 = Value;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_GetSInt32(Value, *MEMORY[0x29EDBCE48], &v33);
      *(a2 + 12) = v33;
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE38], &v33);
      *(a2 + 14) = v33;
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE40], &v33);
      *(a2 + 16) = v33;
      v9 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE78]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_GetSInt32(v9, v6, &v33);
        *(a2 + 13) = v33;
        AVE_CFDict_GetSInt32(v10, v7, &v33);
        *(a2 + 15) = v33;
        AVE_CFDict_GetSInt32(v10, v8, &v33);
        *(a2 + 17) = v33;
        v11 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE88]);
        MetaData = AVE_DRC_RetrieveMetaData(v11, a2 + 72);
        if (MetaData && AVE_Log_CheckLevel(0xE2u, 4))
        {
          v13 = AVE_Log_CheckConsole(0xE2u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, MetaData);
            v16 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", CurrTime, 226, LevelStr);
          }
        }

        return MetaData;
      }

      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xE2u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xE2u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xE2u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

uint64_t AVE_DPB_MakeSnapshotEntry(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE80], *a1, a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE50], *(a1 + 4), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE58], *(a1 + 8), a2);
    AVE_CFDict_AddSInt64(*MEMORY[0x29EDBCE70], *(a1 + 16), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE68], *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE48], *(a1 + 48), Mutable);
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE38], *(a1 + 56), v5);
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE40], *(a1 + 64), v5);
      CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE60], v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_AddSInt32(v6, *(a1 + 52), v9);
        AVE_CFDict_AddSInt32(v7, *(a1 + 60), v10);
        AVE_CFDict_AddSInt32(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE78], v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v11)
        {
          v12 = v11;
          MetaData = AVE_DRC_MakeMetaData((a1 + 72), v11);
          if (MetaData)
          {
            if (AVE_Log_CheckLevel(0xE2u, 4))
            {
              v14 = AVE_Log_CheckConsole(0xE2u);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, MetaData);
                v17 = AVE_GetCurrTime();
                v29 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", CurrTime, 226, LevelStr);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE88], v12);
          }

          CFRelease(v12);
          return MetaData;
        }

        if (AVE_Log_CheckLevel(0xE2u, 4))
        {
          v26 = AVE_Log_CheckConsole(0xE2u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xE2u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t AVE_DPB_RetrieveSnapshot(CFDictionaryRef theDict, char *a2)
{
  v36 = 0;
  if (!theDict || !a2)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v33);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }

  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE10], &v36);
  *(a2 + 340) = v36;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE20], &v36);
  *(a2 + 341) = v36;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE18], &v36);
  *(a2 + 342) = v36;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE28], &v36);
  v4 = v36;
  *(a2 + 343) = v36;
  if (v4 >= 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xE2u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", *(a2 + 343), 16);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", *(a2 + 343), 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE30]);
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xE2u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v24 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v24, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v22, 226, v23);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v25 = AVE_Log_CheckConsole(0xE2u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v26, 226, v27, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v26 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v26);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 80)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    SnapshotEntry = AVE_DPB_RetrieveSnapshotEntry(ValueAtIndex, i);
    if (SnapshotEntry)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return SnapshotEntry;
    }
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v28 = AVE_Log_CheckConsole(0xE2u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v29, 226, v30, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, SnapshotEntry);
      v31 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v31, 226, v35, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v29, 226, v30, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return SnapshotEntry;
}

uint64_t AVE_DPB_MakeSnapshot(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE10], a1[340], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE20], a1[341], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE18], a1[342], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE28], a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        SnapshotEntry = 0;
LABEL_19:
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE30], v5);
        CFRelease(v5);
        return SnapshotEntry;
      }

      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = MEMORY[0x29EDB9010];
        v10 = MEMORY[0x29EDB9020];
        v11 = a1;
        while (1)
        {
          SnapshotEntry = AVE_DPB_MakeSnapshotEntry(v11, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, v9, v10);
          v11 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(SnapshotEntry) = 0;
      v11 = a1;
LABEL_21:
      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v21 = AVE_Log_CheckConsole(0xE2u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v11, v8, SnapshotEntry);
          v24 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v24, 226, v28, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xE2u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v18, 226, v19, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v20, 226, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v19);
      }
    }

    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v13 = AVE_Log_CheckConsole(0xE2u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v14, 226, v15, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v16 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v16, 226, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v15);
    }
  }

  return 4294966295;
}

uint64_t AVE_PIP_RetrieveEntry(const void *a1, _DWORD *a2)
{
  memset(&rect, 0, sizeof(rect));
  if (!a1 || !a2)
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x32u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 50, LevelStr, "AVE_PIP_RetrieveEntry", 28, "pDict != __null && psEntry != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 50);
    }

    return 4294966295;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      v17 = CFGetTypeID(a1);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld\n", v15, 30, v16, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, a2, v17);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v41 = a2;
        v42 = CFGetTypeID(a1);
      }

      else
      {
        v41 = a2;
        v42 = v17;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %ld", v15, 30, v16, "AVE_PIP_RetrieveEntry", 33, "CFDictionaryGetTypeID() == CFGetTypeID(pDict)", a1, v41, v42);
    }

    return 4294965293;
  }

  Value = CFDictionaryGetValue(a1, @"Rectangle");
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v19 = AVE_Log_CheckConsole(0x32u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p\n", v20, 50, v21, "AVE_PIP_RetrieveEntry", 39, "pRect != __null", a1, a2);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVE_kVTCompressionPictureInPictureRegion_Rectangle %p %p", v20, 50);
    }

    return 4294966288;
  }

  v6 = Value;
  v7 = CFDictionaryGetTypeID();
  if (v7 != CFGetTypeID(v6))
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      v25 = CFGetTypeID(v6);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld\n", v23, 30, v24, "AVE_PIP_RetrieveEntry", 44, "CFDictionaryGetTypeID() == CFGetTypeID(pRect)", a1, a2, v6, v25);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(v6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %p %p %ld", v23, 30, v24, "AVE_PIP_RetrieveEntry");
    }

    return 4294965293;
  }

  if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
  {
    *a2 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(rect.origin)), vcvtq_s64_f64(vrndaq_f64(rect.size)));
    if (AVE_Log_CheckLevel(0x32u, 8))
    {
      v8 = AVE_Log_CheckConsole(0x32u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(8);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)\n", v9, 50, v10, "AVE_PIP_RetrieveEntry", 55, *a2, a2[1], a2[2], a2[3]);
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d PIP Rect(%d %d %dx%d)", v9, 50);
    }

    SInt32 = AVE_CFDict_GetSInt32(a1, @"BorderTop", a2 + 6);
    if (!SInt32)
    {
      v35 = AVE_CFDict_GetSInt32(a1, @"BorderLeft", a2 + 4);
      if (v35)
      {
        v18 = v35;
        if (!AVE_Log_CheckLevel(0x32u, 4))
        {
          return v18;
        }

        v36 = AVE_Log_CheckConsole(0x32u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (!v36)
        {
          goto LABEL_62;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 66, "ret == 0", a1, a2, v18);
      }

      else
      {
        v37 = AVE_CFDict_GetSInt32(a1, @"BorderRight", a2 + 5);
        if (v37)
        {
          v18 = v37;
          if (!AVE_Log_CheckLevel(0x32u, 4))
          {
            return v18;
          }

          v38 = AVE_Log_CheckConsole(0x32u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (!v38)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 71, "ret == 0", a1, a2, v18);
        }

        else
        {
          v18 = AVE_CFDict_GetSInt32(a1, @"BorderBottom", a2 + 7);
          if (!v18 || !AVE_Log_CheckLevel(0x32u, 4))
          {
            return v18;
          }

          v39 = AVE_Log_CheckConsole(0x32u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (!v39)
          {
            goto LABEL_62;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 76, "ret == 0", a1, a2, v18);
        }
      }

      v34 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      goto LABEL_61;
    }

    v18 = SInt32;
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v31 = AVE_Log_CheckConsole(0x32u);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v32, 50, v33, "AVE_PIP_RetrieveEntry", 61, "ret == 0", a1, a2, v18);
        v34 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
LABEL_61:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v34, 50, v40);
        return v18;
      }

LABEL_62:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v32, 50, v33);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v26 = AVE_Log_CheckConsole(0x32u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p\n", v27, 50, v28, "AVE_PIP_RetrieveEntry", 48, "res", a1, a2);
        v27 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get PIP Rect value %p %p", v27, 50);
    }

    return 4294966296;
  }

  return v18;
}

uint64_t AVE_PIP_Print(unsigned int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 0, sizeof(v15));
  AVE_ComposePosStr(a4, a5, v15, 32);
  v8 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v9 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v15, *a1);
      }

      else
      {
        printf("PIP %s | %d %d %d %d | %d %d %d %d\n", v15, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        syslog(3, "PIP %s | %d %d %d %d | %d %d %d %d", v15, *a1);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d\n", CurrTime, a2, LevelStr, v15, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v8);
      }

      syslog(3, "%lld %d AVE %s: PIP %s | %d %d %d %d | %d %d %d %d", CurrTime, a2, LevelStr);
    }
  }

  return 0;
}

uint64_t AVE_PIP_PrintInfo(int *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v10 = 0;
    v11 = (a1 + 1);
    do
    {
      AVE_PIP_Print(v11, a2, a3, a4, a5);
      ++v10;
      v11 += 8;
    }

    while (v10 < *a1);
  }

  return 0;
}

uint64_t AVE_PIP_GetInfo(CFDictionaryRef theDict, _DWORD *a2)
{
  if (theDict && a2)
  {
    a2[8] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Value = CFDictionaryGetValue(theDict, @"PictureInPictureRegion");
    if (Value)
    {
      Entry = AVE_PIP_RetrieveEntry(Value, a2 + 1);
      if (Entry)
      {
        if (AVE_Log_CheckLevel(0x32u, 4))
        {
          v6 = AVE_Log_CheckConsole(0x32u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 50, LevelStr, "AVE_PIP_GetInfo", 229, "ret == 0", theDict, a2, Entry);
            v9 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 50, v14);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 50, LevelStr);
          }
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x32u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 50, v12, "AVE_PIP_GetInfo", 217, "pProperty != __null && pInfo != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 50);
    }

    return 4294966295;
  }

  return Entry;
}

uint64_t AVE_CheckQP(int a1, int a2)
{
  if (-6 * a2 + 48 <= a1 && a1 <= 51)
  {
    return 0;
  }

  else
  {
    return 4294966278;
  }
}

uint64_t AVE_CheckQPRange(int *a1, int a2)
{
  v2 = -6 * a2 + 48;
  v3 = a1[1];
  if (v2 <= *a1 && *a1 <= 51)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1018;
  }

  if (v2 <= v3 && v3 <= 51)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1018;
  }

  return (v7 + v5);
}

uint64_t HEVC_FindProfile(int a1)
{
  v1 = &dword_29EDD3D14;
  v2 = 10;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t HEVC_FindProfileIdc(int a1)
{
  if ((a1 - 1) < 0xA)
  {
    return gsc_saHEVC_Profiles[6 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindProfileIdc", 101, "(HEVC_Profile_Invalid < eProfile) && (eProfile < HEVC_Profile_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

int *HEVC_FindProfileEntry(int a1)
{
  result = gsc_saHEVC_Profiles;
  v3 = 10;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t HEVC_FindTier(int a1)
{
  v1 = 0;
  for (i = 1; ; i = 0)
  {
    v3 = i;
    if (gsc_saHEVC_Tiers[4 * v1 + 1] == a1)
    {
      break;
    }

    v1 = 1;
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  return gsc_saHEVC_Tiers[4 * v1];
}

uint64_t HEVC_FindTierFlag(int a1)
{
  if ((a1 - 1) < 2)
  {
    return gsc_saHEVC_Tiers[4 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindTierFlag", 211, "(HEVC_Tier_Invalid < eTier) && (eTier < HEVC_Tier_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t HEVC_FindLevel(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", CurrTime, 209, LevelStr, "HEVC_FindLevel", a1, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", CurrTime, 209);
  }

  v15 = 0;
  if (a3 <= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  v17 = a4 * a3;
  if (a1 == 3)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 * a5;
  }

  if (a1 == 3)
  {
    v19 = 0;
  }

  else
  {
    v19 = a6;
  }

  for (i = gsc_saHEVC_LevelLimits; v17 > i[2] || v16 > i[3] || v18 > *(i + 2); i += 12)
  {
    if (v15 > 0x10)
    {
      goto LABEL_26;
    }

LABEL_20:
    ++v15;
  }

  if (*&i[2 * a2 + 4] < v19 && v15 < 0x11)
  {
    goto LABEL_20;
  }

LABEL_26:
  v22 = *i;
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v23 = AVE_Log_CheckConsole(0xD1u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(6);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d\n", v24, 209, v25, "HEVC_FindLevel", a1, a2, a3, a4, v18, a6, v22);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d", v26, 209, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %lld %d %d", v24, 209, v25);
    }
  }

  return v22;
}

uint64_t HEVC_FindLevel(int a1)
{
  v1 = &dword_295662EE4;
  v2 = 18;
  while (*v1 != a1)
  {
    v1 += 12;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t HEVC_FindLevelIdc(int a1)
{
  if ((a1 - 1) < 0x12)
  {
    return gsc_saHEVC_LevelLimits[12 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindLevelIdc", 378, "(HEVC_Level_Invalid < eLevel) && (eLevel < HEVC_Level_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t htpc_decompress_plane(uint64_t result, const unsigned __int8 *a2, _BYTE *a3, int a4, int a5, int a6, int a7, unsigned int a8, char a9, unsigned int a10)
{
  v50 = result;
  v89 = *MEMORY[0x29EDCA608];
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
          v23 = &a2[v22 & 0xFFFFFFF];
          v86 = v23;
          v87 = 0;
          v85 = 0;
          if (v22 >> 28)
          {
            result = htpc_entropy::dec_symbols(&v85, v46, v45, v88, 128, 16);
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
                  result = htpc_codec<8,8>::dec_sample(v71, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v37 = v30 - 1;
                  if (a6 == 8)
                  {
                    a3[v37] = v35;
                  }

                  else
                  {
                    *&a3[2 * v37] = v35;
                  }
                }

                v39 = v34[1];
                if (v36)
                {
                  result = htpc_codec<8,8>::dec_sample(v64, v29, v31, v39);
                  LOWORD(v39) = result;
                }

                if (v33)
                {
                  if (a6 == 8)
                  {
                    a3[v30] = v39;
                  }

                  else
                  {
                    *&a3[2 * v30] = v39;
                  }
                }

                v40 = 2;
              }

              else
              {
                if (v36)
                {
                  result = htpc_codec<16,8>::dec_sample(v78, v29, v31, v35);
                  LOWORD(v35) = result;
                }

                if (v33)
                {
                  v38 = (v57 + v31);
                  if (a6 == 8)
                  {
                    a3[v38] = v35;
                  }

                  else
                  {
                    *&a3[2 * v38] = v35;
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

uint64_t htpc_entropy::get_bits(htpc_entropy *this, int a2)
{
  v2 = *this;
  v3 = *(this + 1) - a2;
  *(this + 1) = v3;
  if (v3 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
    do
    {
      v7 = v6 + 1;
      *(this + 1) = v6 + 1;
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
      *this = v2;
      *(this + 1) = v3 + 8;
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

uint64_t htpc_entropy::dec_symbols(htpc_entropy *this, int a2, int a3, int *a4, int a5, int a6)
{
  if (*(this + 1))
  {
    htpc_entropy::dec_symbols();
  }

  v8 = *(this + 1);
  v33 = a5 - 1;
  if (a5 >= 1)
  {
    v10 = a3;
    v30 = *(this + 1);
    v11 = 0;
    v12 = 0;
    v13 = a6 + 1;
    v35 = -a3;
    v36 = a3;
    v31 = a6 + 1;
    do
    {
      v14 = htpc_entropy::get_bits(this, a2) + 2;
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
        v20 = &a4[v11];
        do
        {
          if (v19 == v16)
          {
            break;
          }

          *v20 = htpc_entropy::get_bits(this, v15);
          if ((~v16 & 3) == 0)
          {
            if (v17 || (v21 = *(this + 2)) != 0 && *(this + 1) > v21)
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
            if ((v22 + v11 + a3 + a3 * (a4[v26] & 0x1F)) >= a5)
            {
              v27 = v23 - v11;
            }

            else
            {
              v27 = a3 + a3 * (a4[v26] & 0x1F);
            }

            a4[v26] = 0;
            if (v27)
            {
              bzero(&a4[v22 + 1 + v11], 4 * v27);
              v11 += v27;
              v25 = v22 + v11;
            }

            v24 = v35;
          }

          if (a4[v25] == 1)
          {
            v12 = 0;
            v28 = v24 + v22 == -2 || a3 == 1;
            if (v28 && v25 + 2 < a5)
            {
              a4[v25] = 0;
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
    if (*(this + 1) >= 8)
    {
      htpc_entropy::dec_symbols();
    }
  }

  *(this + 1) = 0;
  return (*(this + 2) - v8);
}

uint64_t htpc_codec<16,8>::dec_sample(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (a1[131])
  {
    v8 = htpc_codec<16,8>::pred_mmap(a1, a2, a3);
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

uint64_t htpc_codec<8,8>::dec_sample(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  if (a1[67])
  {
    v8 = htpc_codec<8,8>::pred_mmap(a1, a2, a3);
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

uint64_t htpc_codec<16,8>::pred_mmap(_DWORD *a1, int a2, int a3)
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

uint64_t htpc_codec<8,8>::pred_mmap(_DWORD *a1, int a2, int a3)
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

void AVE_VCP::AVE_VCP(AVE_VCP *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t AVE_VCP::Uninit(AVE_VCP *this)
{
  v2 = *this;
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v3 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 19, LevelStr, "AVE_VCP", "Uninit", this, v2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  kdebug_trace();
  v6 = *(this + 3);
  if (v6)
  {
    if (*(this + 4))
    {
      v7 = dlsym(v6, "VCPAVEContextRelease");
      if (v7)
      {
        v7(*(this + 4));
      }

      else if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v8 = AVE_Log_CheckConsole(0x13u);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(5);
        v11 = *this;
        v12 = dlerror();
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s\n", v9, 19, v10, "AVE_VCP", "Uninit", 160, this, v11, v12);
          v9 = AVE_GetCurrTime();
          v10 = AVE_Log_GetLevelStr(5);
          dlerror();
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s", v9, 19, v10);
      }
    }

    dlclose(*(this + 3));
  }

  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v13 = AVE_Log_CheckConsole(0x13u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(6);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v14, 19, v15, "AVE_VCP", "Uninit", this, v2, 0);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v14, 19);
  }

  return 0;
}

void AVE_VCP::~AVE_VCP(AVE_VCP *this)
{
  AVE_VCP::Uninit(this);
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t AVE_VCP::Init(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v10 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", CurrTime, 19, LevelStr, "AVE_VCP", "Init", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 19, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", CurrTime, 19, LevelStr);
    }
  }

  kdebug_trace();
  v14 = AVE_VCP::Init(unsigned long long,_E_AVE_EncType,int,int)::sc_iaEncType[a3];
  v15 = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 1);
  a1[3] = v15;
  if (v15)
  {
    v16 = dlsym(v15, "VCPAVEContextCreate");
    if (v16)
    {
      v17 = v16(v14, a4, a5);
      a1[4] = v17;
      if (!v17 && AVE_Log_CheckLevel(0x13u, 5))
      {
        v18 = AVE_Log_CheckConsole(0x13u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d\n", v19, 19, v20, "AVE_VCP", "Init", 81, a1, a2, a3, a4, a5);
          v19 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(5);
        }

        else
        {
          v55 = v20;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d", v19, 19, v55, "AVE_VCP");
      }
    }

    else if (AVE_Log_CheckLevel(0x13u, 5))
    {
      v25 = AVE_Log_CheckConsole(0x13u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(5);
      v28 = dlerror();
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v26, 19, v27, "AVE_VCP", "Init", 73, a1, a2, a3, a4, a5, v28);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v26, 19, v27, "AVE_VCP", "Init");
    }

    v29 = dlsym(a1[3], "VCPCompressionAllocateDPB");
    a1[5] = v29;
    if (!v29 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v30 = AVE_Log_CheckConsole(0x13u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(5);
      v33 = dlerror();
      if (v30)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v31, 19, v32, "AVE_VCP", "Init", 90, a1, a2, a3, a4, a5, v33);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v31, 19, v32, "AVE_VCP", "Init");
    }

    v34 = dlsym(a1[3], "VCPAVEScaleReferenceFrames");
    a1[6] = v34;
    if (!v34 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v35 = AVE_Log_CheckConsole(0x13u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(5);
      v38 = dlerror();
      if (v35)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v36, 19, v37, "AVE_VCP", "Init", 98, a1, a2, a3, a4, a5, v38);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v36, 19, v37, "AVE_VCP", "Init");
    }

    v39 = dlsym(a1[3], "VCPAVEExtraInloopChromaFilter");
    a1[7] = v39;
    if (!v39 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v40 = AVE_Log_CheckConsole(0x13u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(5);
      v43 = dlerror();
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v41, 19, v42, "AVE_VCP", "Init", 106, a1, a2, a3, a4, a5, v43);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v41, 19, v42, "AVE_VCP", "Init");
    }

    v44 = dlsym(a1[3], "VCPAVECalculateFrameChecksum");
    a1[8] = v44;
    if (!v44 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v45 = AVE_Log_CheckConsole(0x13u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(5);
      v48 = dlerror();
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v46, 19, v47, "AVE_VCP", "Init", 114, a1, a2, a3, a4, a5, v48);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v46, 19, v47, "AVE_VCP", "Init");
    }

    *a1 = a2;
    *(a1 + 2) = a3;
    *(a1 + 3) = a4;
    *(a1 + 4) = a5;
    *(a1 + 5) = v14;
  }

  else if (AVE_Log_CheckLevel(0x13u, 5))
  {
    v21 = AVE_Log_CheckConsole(0x13u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(5);
    v24 = dlerror();
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s\n", v22, 19, v23, "AVE_VCP", "Init", 64, a1, a2, a3, a4, a5, v24);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(5);
      dlerror();
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s", v22, 19, v23, "AVE_VCP", "Init");
  }

  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v49 = AVE_Log_CheckConsole(0x13u);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v50, 19, v51, "AVE_VCP", "Init", a1, a2, a3, a4, a5, 0);
      v52 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v52, 19, v56);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v50, 19, v51);
    }
  }

  return 0;
}

uint64_t AVE_VCP::AllocDPB(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, const __CFArray **a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "AllocDPB", this, *this, a2, a3, a4);
      v11 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p", v11, 19, v25, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p", CurrTime, 19, LevelStr, "AVE_VCP");
    }
  }

  kdebug_trace();
  v12 = *(this + 5);
  if (v12)
  {
    v13 = v12(a2, *(this + 5), *(this + 3), *(this + 4), a3);
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v15 = AVE_Log_CheckConsole(0x13u);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(5);
        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x\n", v16, 19, v17, "AVE_VCP", "AllocDPB", 204, this, *this, a2, *(this + 5), *(this + 3), *(this + 4), a3);
          v18 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x", v18, 19, v26, "AVE_VCP", "AllocDPB");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x", v16, 19, v17, "AVE_VCP", "AllocDPB");
        }
      }

      v13 = 0;
      v14 = 4294966293;
    }
  }

  else
  {
    v13 = 0;
    v14 = 4294966294;
  }

  *a4 = v13;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v19 = AVE_Log_CheckConsole(0x13u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d\n", v20, 19, v21, "AVE_VCP", "AllocDPB", this, *this, a2, a3, a4, v14);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v22, 19, v23, "AVE_VCP", "AllocDPB");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v20, 19, v21, "AVE_VCP", "AllocDPB");
    }
  }

  return v14;
}

uint64_t AVE_VCP::ScaleRefFrames(AVE_VCP *this, const __CFDictionary *a2, const __CFArray *a3)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "ScaleRefFrames", this, *this, a2, a3);
      v9 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", v9, 19, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 19, LevelStr);
    }
  }

  kdebug_trace();
  v10 = *(this + 6);
  if (v10 && (v11 = *(this + 4)) != 0)
  {
    v12 = v10(v11, a2, a3);
    if (AVE_Log_CheckLevel(0x13u, 8))
    {
      v13 = AVE_Log_CheckConsole(0x13u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d\n", v14, 19, v15, "AVE_VCP", "ScaleRefFrames", 243, this, *this, *(this + 4), a2, a3, v12);
        v16 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d", v16, 19, v27, "AVE_VCP", "ScaleRefFrames", 243);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d", v14, 19, v15, "AVE_VCP", "ScaleRefFrames", 243);
      }
    }

    if (v12)
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v17 = AVE_Log_CheckConsole(0x13u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(5);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d\n", v18, 19, v19, "AVE_VCP", "ScaleRefFrames", 249, this, *this, *(this + 4), a2, a3, v12);
          v20 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v20, 19, v28, "AVE_VCP", "ScaleRefFrames", 249);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v18, 19, v19, "AVE_VCP", "ScaleRefFrames", 249);
        }
      }

      v12 = 4294966296;
    }
  }

  else
  {
    v12 = 4294966294;
  }

  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v21 = AVE_Log_CheckConsole(0x13u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v22, 19, v23, "AVE_VCP", "ScaleRefFrames", this, *this, a2, a3, v12);
      v24 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v24, 19, v29, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v22, 19, v23, "AVE_VCP");
    }
  }

  return v12;
}

uint64_t AVE_VCP::ChromaFilter(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d\n", CurrTime, 19, LevelStr, "AVE_VCP", "ChromaFilter", this, *this, a2, a3, a4);
      v11 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d", v11, 19, v29, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d", CurrTime, 19, LevelStr, "AVE_VCP");
    }
  }

  kdebug_trace();
  v12 = *(this + 7);
  if (v12 && (v13 = *(this + 4)) != 0)
  {
    v14 = v12(v13, a2, a3, a4);
    if (AVE_Log_CheckLevel(0x13u, 8))
    {
      v15 = AVE_Log_CheckConsole(0x13u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(8);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d\n", v16, 19, v17, "AVE_VCP", "ChromaFilter", 287, this, *this, *(this + 4), a2, a3, a4, v14);
        v18 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d", v18, 19, v30, "AVE_VCP", "ChromaFilter", 287);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d", v16, 19, v17, "AVE_VCP", "ChromaFilter", 287);
      }
    }

    if (v14)
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v19 = AVE_Log_CheckConsole(0x13u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(5);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d\n", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293, this, *this, *(this + 4), a2, a3, a4, v14);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v22, 19, v23, "AVE_VCP", "ChromaFilter", 293);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293);
        }
      }

      v14 = 4294966296;
    }
  }

  else
  {
    v14 = 4294966294;
  }

  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v24 = AVE_Log_CheckConsole(0x13u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(8);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d\n", v25, 19, v26, "AVE_VCP", "ChromaFilter", this, *this, a2, a3, a4);
      v27 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v27, 19, v31, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v25, 19, v26, "AVE_VCP");
    }
  }

  return v14;
}

uint64_t AVE_VCP::CalcChecksum(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, __CFDictionary *a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "CalcChecksum", this, *this, a2, a3, a4);
      v11 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p", v11, 19, v32, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p", CurrTime, 19, LevelStr, "AVE_VCP");
    }
  }

  kdebug_trace();
  if (*(this + 8) && *(this + 4))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = (*(this + 8))(*(this + 4), a2, a3, 1, Mutable);
      if (AVE_Log_CheckLevel(0x13u, 8))
      {
        v15 = AVE_Log_CheckConsole(0x13u);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(8);
        if (v15)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d\n", v16, 19, v17, "AVE_VCP", "CalcChecksum", 338, this, *this, *(this + 4), a2, a3, v13, v14);
          v18 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d", v18, 19, v33, "AVE_VCP", "CalcChecksum", 338, this);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d", v16, 19, v17, "AVE_VCP", "CalcChecksum", 338, this);
        }
      }

      if (v14)
      {
        if (AVE_Log_CheckLevel(0x13u, 5))
        {
          v22 = AVE_Log_CheckConsole(0x13u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d\n", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, this, *this, *(this + 4), a2, a3, v13, v14);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v25, 19, v26, "AVE_VCP", "CalcChecksum", 345, this);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, this);
          }
        }

        v14 = 4294966296;
      }

      else
      {
        CFDictionaryApplyFunction(v13, AVE_VCP::CalcChecksum(__CFDictionary const*,long long,__CFDictionary*)::$_0::__invoke, a4);
      }

      CFRelease(v13);
    }

    else
    {
      if (AVE_Log_CheckLevel(0x13u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x13u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v20, 19, v21, "AVE_VCP", "CalcChecksum", 334, "pDict != __null");
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v20);
      }

      v14 = 4294966293;
    }
  }

  else
  {
    v14 = 4294966294;
  }

  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v27 = AVE_Log_CheckConsole(0x13u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d\n", v28, 19, v29, "AVE_VCP", "CalcChecksum", this, *this, a2, a3, a4, v14);
      v30 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d", v30, 19, v34, "AVE_VCP", "CalcChecksum");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d", v28, 19, v29, "AVE_VCP", "CalcChecksum");
    }
  }

  return v14;
}

BOOL interchange_compression::check_valid_lossy_level(interchange_compression *this, unsigned int a2)
{
  v2 = this - 1;
  result = 0;
  if (a2 || v2 >= 2)
  {
    v3 = a2 == 6 || a2 == 8;
    v4 = v3;
    if (this != 2 || !v4)
    {
      v5 = a2 != 25 && a2 - 9 >= 2;
      v6 = !v5;
      if ((this != 3 || !v6) && (a2 > 0x1A || ((1 << a2) & 0x4C00000) == 0 || v2 >= 2))
      {
        return 1;
      }
    }
  }

  return result;
}

interchange_compression::decompressor *interchange_decompress_plane(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, interchange_compression *a11)
{
  v114 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  v105 = v11;
  if ((a6 | 2) != 0xA)
  {
    interchange_decompress_plane();
  }

  if (a7)
  {
    v15 = 8;
  }

  else
  {
    v15 = 1;
  }

  if (a7)
  {
    v16 = 10;
  }

  else
  {
    v16 = 3;
  }

  if (a7)
  {
    v17 = 4;
  }

  else
  {
    v17 = 5;
  }

  v93 = v17;
  if (a6 == 8)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = (a10 + a5);
  v20 = &interchange_compression::lossy_parameters[28 * v18];
  v88 = v20[a11 + 4];
  result = interchange_compression::decompressor::decompressor(v112, v18, a11, 0);
  memset(v113, 0, sizeof(v113));
  if (v19)
  {
    v96 = 0;
    v22 = (a9 + a4);
    v23 = (v105 - 1 + HIDWORD(a9) + v22) >> v93;
    v24 = (v105 - 1 + HIDWORD(a10) + v19) >> v93;
    v25 = 32 - __clz(v24 - 1);
    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = 32 - __clz(v23 - 1);
    if (v23 < 2)
    {
      v27 = 0;
    }

    if (v27 >= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    v29 = 5;
    if (a7)
    {
      v29 = 3;
    }

    v85 = v29;
    v86 = 2 * v28;
    v77 = v20 + 8;
    v78 = &interchange_compression::memory_parameters[11 * v18];
    v82 = vdupq_n_s64(v28 - 1);
    v81 = (v28 + 1) & 0x7E;
    v80 = -a9 - a4 * a10;
    v79 = -(2 * a4 * a10 + 2 * a9);
    v30 = vdupq_n_s64(1uLL);
    v31 = vdupq_n_s64(2uLL);
    v83 = v31;
    v84 = v30;
    v87 = v28;
    v101 = v19;
    do
    {
      if (v22)
      {
        v32 = 0;
        v33 = v96 >> v93;
        v92 = v33 * ((v105 - 1 + HIDWORD(a9) + v22) >> v93);
        v104 = ~(-1 << v78[7]);
        v103 = v77[a11];
        v34 = vdupq_n_s64(v33);
        v35 = v79;
        v36 = v80;
        v91 = v34;
        do
        {
          v37 = v32 >> v93;
          if (v28)
          {
            v38 = vdupq_n_s64(v37);
            v39 = 0uLL;
            v40 = v81;
            v41 = xmmword_295650A20;
            do
            {
              v42 = v39;
              v43 = v41;
              v44 = vnegq_s64(v41);
              v45 = vaddq_s64(v43, v43);
              v39 = vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(vshlq_u64(v38, v44), v30), v45), vshlq_u64(vandq_s8(vshlq_u64(v34, v44), v30), vorrq_s8(v45, v30))), v42);
              v41 = vaddq_s64(v41, v31);
              v40 -= 2;
            }

            while (v40);
            v46 = vbslq_s8(vcgtq_u64(v43, v82), v42, v39);
            v47 = vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
          }

          else
          {
            v47 = 0;
          }

          v48 = 0;
          v49 = (a2 + (v37 + v92) * v88);
          v50 = (a1 + ((*&v47 | ((v37 | (v96 >> v93)) >> v28 << v86)) << v85));
          v94 = v36;
          v95 = v35;
          v97 = v32;
          do
          {
            v51 = 0;
            v100 = v48;
            v52 = v96 + v48;
            v53 = v32;
            v99 = v35;
            v54 = v35;
            v98 = v36;
            v55 = v36;
            do
            {
              v108 = v54;
              v109 = v51;
              v110 = v50;
              v56 = v53;
              v57 = *v50;
              v107 = v57 & 0xF0;
              if (*v50)
              {
                v58 = (v57 & v104) + 1;
              }

              else
              {
                v58 = 0;
              }

              v106 = v58;
              v111 = v49;
              v59 = v55;
              interchange_compression::decompressor::decompress(v112, v49, v57, v113);
              v60 = v59;
              LODWORD(v19) = v101;
              v61 = &v113[0][0][1];
              v62 = 0;
              v63 = v108;
              v64 = v60;
              do
              {
                v66 = v62 + v52 >= a10 && v62 + v52 < v101;
                v67 = v56;
                v68 = v63;
                v69 = v64;
                v70 = v61;
                v71 = 8;
                do
                {
                  v73 = v67 >= a9 && v67 < v22;
                  result = (v66 & v73);
                  if (result == 1)
                  {
                    result = *(v70 - 1);
                    if (a7)
                    {
                      v74 = v68 + 1;
                      if (a6 == 8)
                      {
                        *(a3 + v68) = result;
                        result = *v70;
                        *(a3 + v74) = result;
                      }

                      else
                      {
                        *(a3 + 2 * v68) = result;
                        result = *v70;
                        *(a3 + 2 * v74) = result;
                      }
                    }

                    else if (a6 == 8)
                    {
                      *(a3 + v69) = result;
                    }

                    else
                    {
                      *(a3 + 2 * v69) = result;
                    }
                  }

                  v70 += 4;
                  ++v69;
                  v68 += 2;
                  ++v67;
                  --v71;
                }

                while (v71);
                ++v62;
                v61 += 32;
                v64 += a4;
                v63 += 2 * a4;
              }

              while (v62 != 4);
              if (v107 != 240 || a11 == 0)
              {
                v76 = v106;
              }

              else
              {
                v76 = v103;
              }

              v49 = &v111[v76];
              v50 = v110 + 1;
              v51 = v109 + 8;
              v55 = v60 + 8;
              v54 = v108 + 16;
              v53 = v56 + 8;
            }

            while (v109 + 8 < v105);
            v48 = v100 + 4;
            v36 = v98 + 4 * a4;
            v35 = v99 + 8 * a4;
            v32 = v97;
          }

          while (v100 + 4 < v105);
          v32 = v97 + v105;
          v36 = v94 + v105;
          v35 = v95 + 2 * v105;
          LODWORD(v28) = v87;
          v31 = v83;
          v30 = v84;
          v34 = v91;
        }

        while (v97 + v105 < v22);
      }

      v80 += v105 * a4;
      v79 += 2 * v105 * a4;
      v96 += v105;
    }

    while (v96 < v19);
  }

  return result;
}

uint64_t interchange_compression::decompressor::decompress(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, unsigned int (*a4)[4][8][4])
{
  v213 = *MEMORY[0x29EDCA608];
  v8 = interchange_compression::memory_parameters[11 * *(this + 85) + 7];
  if ((*(this + 87) - 1) <= 2)
  {
    subblock_size = interchange_compression::decompressor::get_subblock_size(this, a3);
    v10 = *(this + 85);
    if (subblock_size > interchange_compression::lossy_parameters[28 * v10 + 8 + *(this + 87)] || subblock_size < interchange_compression::decompressor::get_subblock_size(this, LOBYTE(interchange_compression::memory_parameters[11 * v10 + 8])))
    {
      goto LABEL_215;
    }

    if ((~a3 & 0xF0) == 0)
    {
      v12 = *(this + 87);
      if ((v12 - 1) <= 2)
      {
        v13 = 0;
        v14 = vdupq_n_s32(a3);
        v15 = *(this + 85);
        v175 = interchange_compression::lossy_parameters[28 * v15 + 8 + v12] >> 2;
        *v14.i8 = vand_s8(vmovn_s32(vtstq_s32(v14, xmmword_295663280)), 0x1000100010001);
        v190 = vuzp1_s8(*v14.i8, *v14.i8).u32[0];
        v173 = a2;
        v174 = a4;
        while (1)
        {
          memset(v191, 0, sizeof(v191));
          v16 = *(this + 87);
          v17 = *(this + 88);
          v189 = v17;
          v176 = v13;
          if (*(&v190 + v13) != 1)
          {
            break;
          }

          v18 = 0;
          v19 = interchange_compression::lossy_parameters[28 * v15 + 8 + v16] >> 2;
          v207 = &a2[v13 * v175];
          v206 = v19;
          v210 = 1;
          v209 = 0;
          v208 = 8 * v19;
          v20 = &interchange_compression::format_table + 52 * v15;
          v179 = v20 + 12;
          v182 = *(v20 + 2);
          v21 = v17 & 0xFFFFFFFE;
          v177 = &interchange_compression::lossy_parameters[28 * v15 + 12 + 4 * v16];
          v22 = v191;
          do
          {
            v186 = v18;
            v24 = v177;
            v23 = v179;
            v184 = v22;
            v25 = v182;
            if (v182)
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
                v33 = (bit_pack::unpack(v205, v28 - v26) << v26) & v31;
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

                if (v189 != 1)
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
                v25 = (v25 - 1);
              }

              while (v25);
            }

            v18 = v186 + 1;
            v22 = v184 + 4;
          }

          while (v186 != 7);
LABEL_175:
          v137 = 0;
          v138 = v191;
          a2 = v173;
          do
          {
            if (*(this + 85) == 27)
            {
              v15 = 27;
            }

            else
            {
              v139 = 0;
              v140 = vdupq_n_s32(v137 + 8 * v176);
              v141.i64[0] = 0x100000001;
              v141.i64[1] = 0x100000001;
              v142 = vshlq_u32(vandq_s8(vshlq_u32(v140, xmmword_295663250), v141), xmmword_295663260);
              v143 = vshlq_u32(vandq_s8(vshlq_u32(v140, xmmword_295663270), v141), xmmword_295663260);
              v144 = (*v174)[(vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL)).u32[0] | v143.i32[1])][vorr_s8(*v142.i8, *&vextq_s8(v142, v142, 8uLL)).u32[0] | v142.i32[1]];
              do
              {
                v144[v139] = *(v138 + v139);
                ++v139;
                v15 = *(this + 85);
              }

              while (v139 < *(&interchange_compression::format_table + 13 * v15 + 2));
            }

            ++v137;
            ++v138;
          }

          while (v137 != 8);
          v13 = v176 + 1;
          if (v176 == 3)
          {
            return 1;
          }
        }

        v40 = (&interchange_compression::format_table + 52 * v15);
        v41 = v40[2];
        v180 = v40;
        v183 = v41;
        v42 = (v40 + 3);
        v172 = *(this + 87);
        LODWORD(v40) = interchange_compression::lossy_parameters[28 * v15 + 8 + v16];
        v207 = &a2[v13 * v175];
        LODWORD(v40) = 2 * v40;
        v206 = (v40 >> 3) & 0x7FFFFFF;
        v210 = 1;
        v209 = 0;
        v185 = v40;
        v208 = v40 & 0x3FFFFFF8;
        v178 = v42;
        if (!v41)
        {
          v187 = 0;
LABEL_84:
          *v202 = 0;
          v203 = 0;
          memset(v201, 0, sizeof(v201));
          v200[0] = interchange_compression::get_id(v180[3], v11);
          v200[1] = interchange_compression::get_id(v180[4], v68);
          v200[2] = interchange_compression::get_id(v180[5], v69);
          v200[3] = interchange_compression::get_id(v180[6], v70);
          interchange_compression::derive_sharing(v183, v200, v212, v202, v201, v71);
          v198 = 0;
          v199 = 0;
          v196 = 0;
          v197 = 0;
          if (v183)
          {
            v72 = 0;
            do
            {
              v73 = *&v178[v72];
              id = interchange_compression::get_id(v73, v11);
              v75 = v212[v72 / 4];
              v76 = &interchange_compression::dq_consts[80 * id + 5 * v75];
              v77 = interchange_compression::dq_lossy_level[3 * id + v172 - 1];
              v78 = *(v76 + 5);
              *(&v198 + v72) = v77 + *(v76 + 4);
              *(&v196 + v72) = v78 + v77;
              interchange_compression::adjust_level(id, v75, v202[v72 / 4], v201[v72 / 4], (&v198 + v72), (&v196 + v72), v79);
              v80 = *(&v198 + v72);
              if (v73 < v80)
              {
                v80 = v73;
              }

              *(&v198 + v72) = v80;
              if (v78)
              {
                v81 = v73;
              }

              else
              {
                v81 = 0;
              }

              if (v81 >= *(&v196 + v72))
              {
                v81 = *(&v196 + v72);
              }

              *(&v196 + v72) = v81;
              v72 += 4;
            }

            while (4 * v183 != v72);
          }

          if (v15 == 19 && v212[3] == 1 && v201[3] - HIDWORD(v203) <= 1)
          {
            v198 = 0;
            v199 = 0;
            v196 = 0;
            v197 = 0;
          }

          v195[0] = 0;
          v195[1] = 0;
          v82 = v183;
          v83 = v187;
          if (v183)
          {
            v84 = v195;
            v85 = v211;
            v86 = &v198;
            v87 = v212;
            v88 = v178;
            do
            {
              v89 = *v87++;
              if (v89 || (*v88 - 8) > 4)
              {
                v90 = *v86;
                *v84 = bit_pack::unpack(v205, *v86) << (*v88 - v90);
                v83 += v90;
              }

              else
              {
                *v84 = *v85;
              }

              ++v84;
              ++v85;
              v88 += 4;
              ++v86;
              --v82;
            }

            while (v82);
            v193 = 0;
            v194 = 0;
            v91 = &v193;
            v92 = &v196;
            v93 = v183;
            v94 = v185;
            do
            {
              v95 = *v92;
              v92 = (v92 + 4);
              if (v95)
              {
                v96 = bit_pack::get(v205, v209, 3u);
                v209 += 3;
                *v91 = v96;
                v83 += 3;
              }

              v91 = (v91 + 4);
              --v93;
            }

            while (v93);
          }

          else
          {
            v193 = 0;
            v194 = 0;
            v94 = v185;
          }

          v97 = (v94 & 0x3FFFFFFE) - v83;
          v98 = v97 / 7;
          v99 = v209 + v97 - 7 * (v97 / 7);
          v209 = v99;
          v100 = v208;
          if (v99 > v208)
          {
            interchange_compression::decompressor::decompress();
          }

          v101 = 0;
          v102 = v192;
          memset(v192, 0, sizeof(v192));
          v103 = v183;
          do
          {
            v104 = 0;
            if (v103)
            {
              v105 = &v196;
              v106 = v102;
              do
              {
                v108 = *v105++;
                v107 = v108;
                if (v108)
                {
                  *v106 = bit_pack::unpack(v205, v107);
                  v104 += v107;
                }

                v106 += 7;
                --v103;
              }

              while (v103);
              if (v104 > v98)
              {
                interchange_compression::decompressor::decompress();
              }

              v99 = v209;
              v100 = v208;
              v103 = v183;
            }

            v99 += v98 - v104;
            v209 = v99;
            if (v99 > v100)
            {
              interchange_compression::decompressor::decompress();
            }

            ++v101;
            ++v102;
          }

          while (v101 != 7);
          if (v103)
          {
            v109 = 0;
            v110 = v191;
            do
            {
              v111 = *&v178[4 * v109];
              v112 = interchange_compression::get_id(v111, v11);
              v113 = 0;
              v114 = 0;
              v115 = interchange_compression::dq_consts[80 * v112 + 1 + 5 * v212[v109]];
              v116 = *(&v196 + v109);
              v117 = v115 >> v116;
              if (v115 >> v116 <= 1)
              {
                v117 = 1;
              }

              if (v117 >> 1 >= (1 << (v111 - *(&v198 + v109))) >> 1)
              {
                v118 = (1 << (v111 - *(&v198 + v109))) >> 1;
              }

              else
              {
                v118 = v117 >> 1;
              }

              v119 = *(v195 + v109);
              v120 = (1 << (v111 - 1));
              v121 = ~(-1 << v116);
              v122 = v115 + v119;
              v123 = 1 << v111;
              v11 = (1 << v111) - 1;
              if (!v119)
              {
                v118 = 0;
              }

              if (v111 == 16)
              {
                v124 = 31744;
              }

              else
              {
                v124 = 2139095040;
              }

              if (v111 == 16)
              {
                v125 = 64512;
              }

              else
              {
                v125 = 4286578688;
              }

              if (v111 == 16)
              {
                v126 = 32256;
              }

              else
              {
                v126 = 2143289344;
              }

              v127 = 4290772992;
              if (v111 == 16)
              {
                v127 = 65024;
              }

              v188 = v127;
              v181 = v110;
              v128 = v110;
              do
              {
                if (v116)
                {
                  if (v113 == *(&v193 + v109))
                  {
                    v129 = v118;
                    v130 = v119 == v120;
                  }

                  else
                  {
                    v131 = v192[7 * v109 + v114];
                    v130 = (v120 - v119) / v117 == v131;
                    if (v131 > v121)
                    {
                      interchange_compression::decompressor::decompress();
                    }

                    if (v131 | v119)
                    {
                      if (v122 < v123 || (v129 = v123 - 1, v131 != v121))
                      {
                        v129 = (v117 >> 1) + v117 * v131;
                      }
                    }

                    else
                    {
                      v129 = 0;
                    }

                    ++v114;
                  }
                }

                else
                {
                  v129 = 0;
                  v130 = v117 > v120 - v119;
                }

                v132 = v129 + v119;
                v133 = v132;
                if (v189 == 1)
                {
                  if (v132 < v124 || (v133 = (v124 - 1), v132 >= v126))
                  {
                    if (v132 < v126 || (v133 = v120, v132 >= v120))
                    {
                      if (v132 < v188 && v132 >= v125)
                      {
                        v133 = (v125 - 1);
                      }

                      else
                      {
                        v133 = v132;
                      }
                    }
                  }
                }

                if (v133 >= v123)
                {
                  v135 = v123 - 1;
                }

                else
                {
                  v135 = v133;
                }

                if (v130)
                {
                  v136 = 0;
                }

                else
                {
                  v136 = v135 ^ v120;
                }

                if ((v189 & 0xFFFFFFFE) != 2)
                {
                  v136 = v135;
                }

                *v128 = v136;
                v128 += 4;
                ++v113;
              }

              while (v113 != 8);
              ++v109;
              v110 = (v181 + 4);
            }

            while (v109 != v183);
          }

          goto LABEL_175;
        }

        v43 = 0;
        v44 = v204;
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
              interchange_compression::decompressor::decompress();
            }
          }

          else
          {
            v49 = 3;
          }

          *v44++ = bit_pack::unpack(v205, v49);
          v43 += v49;
          --v41;
        }

        while (v41);
        v187 = v43;
        v50 = 0;
        v51 = v212;
        v52 = v46;
        v53 = v211;
        v54 = v204;
        v55 = v183;
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
              interchange_compression::decompressor::decompress();
            }

            v62 = *v54;
            if (((v56 & 0xFFFFFFFD) == 8 || v56 == 12) && v62 == 0)
            {
              v65 = bit_pack::get(v205, v209, 2u);
              v209 += 2;
              v187 += 2;
              *v53 = 0;
              v59 = v65 & 3;
              v66 = v53;
              v60 = v51;
            }

            else
            {
              v60 = &v212[v50];
              *v53 = 0;
              if (v56 >= 0x10)
              {
                v59 = v62 & 0xF;
                goto LABEL_50;
              }

              v59 = 0;
              v66 = &v211[v50];
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

  v145 = *(this + 85);
  v146 = &interchange_compression::memory_parameters[11 * v145];
  if (v146[8] == a3)
  {
    v147 = (a3 & ~(-1 << v146[7])) + 1;
    v207 = a2;
    v206 = v147 << (v145 == 26);
    v210 = 1;
    v209 = 0;
    v208 = 8 * v206;
    if (v145 == 27)
    {
      v148 = 27;
    }

    else
    {
      v157 = 0;
      do
      {
        (*a4)[0][0][v157] = bit_pack::unpack(v205, *(&interchange_compression::format_table + 13 * v145 + v157 + 3));
        ++v157;
        v145 = *(this + 85);
      }

      while (v157 < *(&interchange_compression::format_table + 13 * v145 + 2));
      v148 = *(this + 85);
    }

    v158 = 0;
    for (i = 0; i != 4; ++i)
    {
      v160 = 0;
      v161 = v158;
      do
      {
        if (v148 == 27)
        {
          v148 = 27;
        }

        else
        {
          v162 = 0;
          v163 = a4;
          do
          {
            *((*v163)[0][0] + v161) = *v163;
            ++v162;
            v148 = *(this + 85);
            v163 = (v163 + 4);
          }

          while (v162 < *(&interchange_compression::format_table + 13 * v148 + 2));
        }

        ++v160;
        v161 += 16;
      }

      while (v160 != 8);
      v158 += 128;
    }

    return 1;
  }

  if (v146[9] == a3)
  {
    v149 = 0;
    v150 = interchange_compression::memory_parameters[11 * v145 + 5];
    v207 = a2;
    v206 = v150;
    v210 = 1;
    v209 = 0;
    v208 = 8 * v150;
    do
    {
      if (v145 != 27)
      {
        v151 = 0;
        v152 = vdupq_n_s32(v149);
        v153.i64[0] = 0x100000001;
        v153.i64[1] = 0x100000001;
        v154 = vshlq_u32(vandq_s8(vshlq_u32(v152, xmmword_295663270), v153), xmmword_295663260);
        v155 = vshlq_u32(vandq_s8(vshlq_u32(v152, xmmword_295663250), v153), xmmword_295663260);
        v156 = (*a4)[(vorr_s8(*v154.i8, *&vextq_s8(v154, v154, 8uLL)).u32[0] | v154.i32[1])][vorr_s8(*v155.i8, *&vextq_s8(v155, v155, 8uLL)).u32[0] | v155.i32[1]];
        do
        {
          v156[v151] = bit_pack::unpack(v205, *(&interchange_compression::format_table + 13 * v145 + v151 + 3));
          ++v151;
          v145 = *(this + 85);
        }

        while (v151 < *(&interchange_compression::format_table + 13 * v145 + 2));
      }

      ++v149;
    }

    while (v149 != 32);
    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    return 1;
  }

  if (v146[10] == a3)
  {
    for (j = 0; j != 32; ++j)
    {
      v166 = vdupq_n_s32(j);
      v167.i64[0] = 0x100000001;
      v167.i64[1] = 0x100000001;
      v168 = vshlq_u32(vandq_s8(vshlq_u32(v166, xmmword_295663270), v167), xmmword_295663260);
      v169 = vshlq_u32(vandq_s8(vshlq_u32(v166, xmmword_295663250), v167), xmmword_295663260);
      interchange_compression::format_info::unpack_pixel((&interchange_compression::format_table + 52 * v145), a2, (*a4)[(vorr_s8(*v168.i8, *&vextq_s8(v168, v168, 8uLL)).u32[0] | v168.i32[1])][vorr_s8(*v169.i8, *&vextq_s8(v169, v169, 8uLL)).u32[0] | v169.i32[1]]);
      v145 = *(this + 85);
      a2 += *(&interchange_compression::format_table + 13 * v145 + 1);
    }

    if (*(this + 87))
    {
      interchange_compression::decompressor::decompress();
    }

    return 1;
  }

  v170 = ((a3 & ~(-1 << v8)) + 1) << (v145 == 26);
  v171 = interchange_compression::memory_parameters[11 * v145 + 5];
  v207 = a2;
  if (v171 >= v170)
  {
    v171 = v170;
  }

  v206 = v171;
  v210 = 1;
  v209 = 0;
  v208 = 8 * v171;
  if (interchange_compression::decompressor::unpack_header(this, a2, a3, v205))
  {
    interchange_compression::decompressor::decompress_pixels(this, a2, a3, v205, a4);
    interchange_compression::decompressor::decorrelate(this, a4);
    return 1;
  }

LABEL_215:
  interchange_compression::decompressor::fill_subblock_error_color(this, a4);
  return 0;
}

uint64_t interchange_compression::header::set(interchange_compression::header *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v6 = a3 + 4 * a2;
  result = interchange_compression::header::get_size(this, a2, a3);
  v8 = this + 12 * v6;
  *(v8 + 1) = result;
  v9 = v8 + 4;
  if (a4 >> result)
  {
    interchange_compression::header::set();
  }

  *(v9 + 1) = a4;
  *(v9 + 2) = 1;
  return result;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this)
{
  v2 = *this;
  v3 = interchange_compression::header::header_layout_table[15 * *this + 14];
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
        v3 = interchange_compression::header::get_size(this, i, v5++) + v3;
        v2 = *this;
      }

      while (v5 < *(&interchange_compression::format_table + 13 * *this + 2));
    }
  }

  return v3;
}

uint64_t interchange_compression::header::get_size(interchange_compression::header *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 1)
  {
    return interchange_compression::header::header_layout_table[15 * *this + 1 + 4 * a2 + a3];
  }

  if (a2 == 4)
  {
    v4 = this + 4;
    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if (!*&v4[12 * a3 + 56])
    {
      interchange_compression::header::get_size();
    }

    if ((v4[12 * a3 + 4] & 8) != 0)
    {
      return (*&v4[12 * a3 + 52] + 1);
    }

    return 0;
  }

  if (a2 != 3)
  {
    if (a2 == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3);
    }

    if (a2 - 5 > 1)
    {
      interchange_compression::header::get_size();
    }

    if (!*(this + 3 * a3 + 3))
    {
      interchange_compression::header::get_size();
    }

    if ((*(this + 3 * a3 + 2) & 3) == 2)
    {
      return *(&interchange_compression::format_table + 13 * *this + a3 + 3) >> 1;
    }

    return 0;
  }

  if (!*(this + 3 * a3 + 3))
  {
    interchange_compression::header::get_size();
  }

  if ((*(this + 12 * a3 + 8) & 4) == 0)
  {
    return 0;
  }

  if (*(&interchange_compression::format_table + 13 * *this + a3 + 3) == 32)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t interchange_compression::get_id(interchange_compression *this, uint64_t a2)
{
  if (this <= 11)
  {
    if (this == 8)
    {
      return 0;
    }

    if (this == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(this)
    {
      case 0xC:
        return 2;
      case 0x10:
        return 3;
      case 0x20:
        return 4;
    }
  }

  if (this == 2)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  if ((this | 2) != 2)
  {
    interchange_compression::get_id(this);
  }

  return v2;
}

uint64_t interchange_compression::derive_sharing(uint64_t this, uint64_t a2, unsigned int *a3, unsigned int *a4, int (*a5)[4], int (*a6)[4])
{
  v6 = *(a2 + 12);
  if (v6 == 5)
  {
    v7 = a3[3];
    if (v7 >= 2)
    {
      interchange_compression::derive_sharing();
    }

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 5;
    }

    a3[3] = v8;
    *(a2 + 12) = 1;
  }

  if (!this)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    v14 = a3[v9];
    if (v14 > v12 || v9 == 1 && v14 == v12)
    {
      v12 = a3[v9];
      v11 = v9;
    }

    if (v14 < v13)
    {
      v13 = a3[v9];
      v10 = v9;
    }

    v15 = interchange_compression::dq_consts[80 * *(a2 + 4 * v9) + 3 + 5 * v14];
    (*a5)[v9] = v15;
    a4[v9++] = v15;
  }

  while (this != v9);
  if (this != 1)
  {
LABEL_19:
    v16 = (v11 + 1) % 3u;
    if (v16 == v10)
    {
      v16 = (v11 + 2) % 3u;
    }

    v17 = a3[v16];
    v18 = a3[6 - (v11 + v10) - v16];
    v19 = v17 > v18;
    if (v17 <= v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 6 - (v11 + v10) - v16;
    }

    if (!v19)
    {
      v16 = 6 - (v11 + v10) - v16;
    }

    v21 = a3[v11];
    v22 = a3[v10];
    if (this == 2)
    {
      if (v21 == v22 || a4[v10] < 1)
      {
LABEL_47:
        if (v6 == 5)
        {
          *(a2 + 12) = 5;
          a3[3] = a3[3] != 5;
          if (a4[3] >= 1)
          {
            interchange_compression::derive_sharing();
          }
        }

        return this;
      }

      (*a5)[v10] = 0;
      v23 = a4[v10];
      v24 = (*a5)[v11];
      goto LABEL_30;
    }

    v26 = a3[v20];
    if (v21 - v26 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v31 = 1431655766 * a4[v10];
      (*a5)[v20] += HIDWORD(v31) + (v31 >> 63);
      v32 = 1431655766 * (a4[v10] + 1);
      (*a5)[v16] += HIDWORD(v32) + (v32 >> 63);
      v33 = 1431655766 * (a4[v10] + 2);
      v34 = HIDWORD(v33) + (v33 >> 63);
      v35 = (*a5)[v11];
LABEL_45:
      v25 = v34 + v35;
      goto LABEL_46;
    }

    v28 = a3[v16];
    if (v21 - v28 <= 1 && v22 <= 1)
    {
      (*a5)[v10] = 0;
      v36 = a4[v20] & (a4[v20] >> 31);
      (*a5)[v20] = v36;
      (*a5)[v16] += (a4[v10] - v36 + a4[v20]) / 2;
      v25 = (*a5)[v11] + (a4[v10] + a4[v20] - (*a5)[v20] + 1) / 2;
      goto LABEL_46;
    }

    if (v28 - v22 > 1)
    {
      if (v28 - v22 != 2)
      {
        goto LABEL_57;
      }

      v30 = a4[v11];
    }

    else
    {
      v30 = a4[v11];
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      this = a4[v16];
      if (this > 0)
      {
LABEL_54:
        v37 = 0;
        (*a5)[v10] = 0;
        (*a5)[v20] = 0;
        if ((a4[v20] + a4[v10]) >= 6)
        {
          v37 = a4[v16];
        }

        (*a5)[v16] = v37;
        v34 = a4[v10] - v37 + a4[v20];
        v35 = a4[v16] + (*a5)[v11];
        goto LABEL_45;
      }
    }

    if (v30 <= -2 && a4[v16] >= 1)
    {
      goto LABEL_54;
    }

LABEL_57:
    if (!v22 || a4[v10] < 1 || a4[v20] < 1 || (a4[v16] & 0x80000000) != 0 || a4[v11] > -2)
    {
      if (v21 != v22 && a4[v10] >= 1)
      {
        (*a5)[v10] = 0;
        (*a5)[v11] += a4[v10];
      }

      if (v28 != v26 && a4[v20] >= 1)
      {
        (*a5)[v20] = 0;
        (*a5)[v16] += a4[v20];
      }

      goto LABEL_47;
    }

    (*a5)[v10] = 0;
    (*a5)[v20] = 0;
    (*a5)[v16] = a4[v16];
    v24 = a4[v20];
    v23 = a4[v10] + (*a5)[v11];
LABEL_30:
    v25 = v24 + v23;
LABEL_46:
    (*a5)[v11] = v25;
    goto LABEL_47;
  }

  return this;
}

uint64_t interchange_compression::adjust_level(uint64_t this, int a2, int a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v8 = &interchange_compression::dq_consts[80 * this + 5 * a2];
    if (*(v8 + 7) < a3 - a4)
    {
      --*a6;
      if (!*(v8 + 8))
      {
        v7 = -1;
        goto LABEL_4;
      }
    }
  }

  else if (a4 != a3)
  {
    *a6 += v7;
LABEL_4:
    *a5 += v7;
  }

  return this;
}

interchange_compression::decompressor *interchange_compression::decompressor::decompressor(interchange_compression::decompressor *this, unsigned int a2, interchange_compression *a3, unsigned int a4)
{
  *this = a2;
  if (interchange_compression::header::header_layout_table[15 * a2] != a2)
  {
    interchange_compression::decompressor::decompressor();
  }

  v5 = a3;
  *(this + 4) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 85) = a2;
  *(this + 87) = a3;
  *(this + 88) = a4;
  if (!interchange_compression::check_valid_lossy_level(a3, a2))
  {
    interchange_compression::decompressor::decompressor();
  }

  if (v5 && a4 >= 4)
  {
    interchange_compression::decompressor::decompressor();
  }

  *(this + 86) = *(&interchange_compression::format_table + 52 * a2 + 48);
  return this;
}

uint64_t interchange_compression::decompressor::get_subblock_size(interchange_compression::decompressor *this, unsigned int a2)
{
  if (a2 >= 0xF0)
  {
    v2 = *(this + 87);
    if ((v2 - 1) <= 2)
    {
      return interchange_compression::lossy_parameters[28 * *(this + 85) + 8 + v2];
    }
  }

  v4 = *(this + 85);
  v5 = &interchange_compression::memory_parameters[11 * v4];
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
  v7 = interchange_compression::memory_parameters[11 * v4 + 5];
  if (v7 >= v6)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t interchange_compression::decompressor::fill_subblock_error_color(uint64_t this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  do
  {
    v4 = *(this + 340);
    if (v4 != 27)
    {
      v5 = 0;
      v6 = vdupq_n_s32(v2);
      v7 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_295663270), v3), xmmword_295663260);
      v8 = vshlq_u32(vandq_s8(vshlq_u32(v6, xmmword_295663250), v3), xmmword_295663260);
      v9 = (*a2)[(vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)).u32[0] | v7.i32[1])][vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)).u32[0] | v8.i32[1]];
      do
      {
        if (v5 == 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = ~(-1 << *(&interchange_compression::format_table + 13 * v4 + v5 + 3));
        }

        v9[v5++] = v10;
        v4 = *(this + 340);
      }

      while (v5 < *(&interchange_compression::format_table + 13 * v4 + 2));
    }

    ++v2;
  }

  while (v2 != 32);
  return this;
}

uint64_t bit_pack::unpack(bit_pack *this, unsigned int a2)
{
  if (a2 >= 0x21)
  {
    bit_pack::unpack();
  }

  result = bit_pack::get(this, *(this + 135), a2);
  *(this + 135) += a2;
  return result;
}

void *interchange_compression::format_info::unpack_pixel(interchange_compression::format_info *this, const unsigned __int8 *a2, unsigned int *a3)
{
  __dst[2] = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  __dst[1] = 0;
  result = memcpy(__dst, a2, *(this + 1));
  if (*(this + 2))
  {
    v6 = 0;
    v7 = (this + 28);
    do
    {
      v8 = -1 << *(v7 - 4);
      v9 = *v7++;
      a3[v6++] = (*(__dst + ((v9 >> 3) & 0x1FFFFFF8)) >> v9) & ~v8;
    }

    while (v6 < *(this + 2));
  }

  return result;
}

BOOL interchange_compression::decompressor::unpack_header(interchange_compression::decompressor *this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4)
{
  v4 = *(this + 85);
  v5 = interchange_compression::memory_parameters[11 * v4 + 7];
  v6 = 8 - v5;
  v7 = &interchange_compression::header::header_layout_table[15 * v4];
  v8 = v7[1];
  v9 = v8 - (8 - v5);
  if (v8 <= 8 - v5)
  {
    interchange_compression::decompressor::unpack_header();
  }

  v11 = *(a4 + 128);
  v12 = v6 + 8 * v11;
  if (v12 < v7[14])
  {
    return 0;
  }

  v15 = v5 - 8;
  v16 = (a3 >> v5) & ~(-1 << v6);
  v17 = 8 * v11;
  v18 = bit_pack::unpack(a4, v9);
  *(this + 4) = 0u;
  v19 = this + 4;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0u;
  *(this + 212) = 0u;
  *(this + 228) = 0u;
  *(this + 244) = 0u;
  *(this + 260) = 0u;
  *(this + 276) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0u;
  *(this + 324) = 0u;
  interchange_compression::header::set(this, 0, 0, (v18 << v6) | v16);
  for (i = 1; i != 28; ++i)
  {
    if (i == 12)
    {
      if (v12 < interchange_compression::header::get_size(this))
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

      bit_pack::unpack(a4, interchange_compression::header::header_layout_table[15 * *(this + 85) + 13] + v15 - *(a4 + 135));
    }

    v21 = i >> 2;
LABEL_11:
    size = interchange_compression::header::get_size(this, v21, i & 3);
    v23 = bit_pack::unpack(a4, size);
    interchange_compression::header::set(this, v21, i & 3, v23);
    if (v21 == 5)
    {
      v24 = interchange_compression::header::get_size(this, 6u, i & 3);
      v25 = bit_pack::unpack(a4, v24);
      interchange_compression::header::set(this, 6u, i & 3, v25);
    }
  }

  v26 = interchange_compression::header::get_size(this);
  bit_pack::unpack(a4, v26 + v15 - *(a4 + 135));
  v27 = *(this + 85);
  if (v27 == 21)
  {
    if (!*(this + 6))
    {
      interchange_compression::decompressor::unpack_header();
    }

    if (!*(this + 9))
    {
      interchange_compression::decompressor::unpack_header();
    }

    v28 = *(this + 5);
    if ((v28 & 0x10) != 0)
    {
      v29 = *(this + 8);
      *(this + 86) = 2;
      interchange_compression::header::set(this, 0, 1u, v28 & 0xFFFFFFEF | (16 * ((v29 >> 4) & 1)));
      interchange_compression::header::set(this, 0, 2u, v29 & 0xFFFFFFEF);
      v27 = *(this + 85);
    }

    else
    {
      v27 = 21;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = &interchange_compression::format_table + 52 * v27;
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
      v36 = this + 12;
      v37 = this + 12;
      do
      {
        v38 = *v37;
        v37 += 12;
        if (!v38)
        {
          interchange_compression::decompressor::unpack_header();
        }

        v39 = *(v36 - 4);
        if ((v39 & 4) != 0)
        {
          if (!*&v19[12 * (v35 + 12) + 8])
          {
            interchange_compression::decompressor::unpack_header();
          }

          v40 = *&v19[12 * (v35 + 12) + 4];
        }

        else
        {
          v40 = 0;
        }

        if ((~v39 & 3) != 0)
        {
          if (!*&v19[12 * (v35 + 4) + 8])
          {
            interchange_compression::decompressor::unpack_header();
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

          v41 = *&v19[12 * (v35 + 4) + 4] - (v44 & v45) + 1;
          if (v41 > v42)
          {
            return 0;
          }
        }

        else
        {
          v41 = 0;
        }

        v31 += interchange_compression::NUM_PIXELS_REGION[v30] * v41;
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

  if (((*(a4 + 135) + v31 + v46) & ~v46) != v17)
  {
    return 0;
  }

  return interchange_compression::header::error_check(this) == 0;
}

uint64_t interchange_compression::decompressor::decompress_pixels(uint64_t this, const unsigned __int8 *a2, unsigned int a3, bit_pack *a4, unsigned int (*a5)[4][8][4])
{
  v5 = 0;
  v6 = 0;
  v90 = *MEMORY[0x29EDCA608];
  v7 = this + 4;
  v77 = (this + 12);
  v8 = 0uLL;
  v82 = a5;
  v88 = this;
  do
  {
    v9 = 0;
    v76 = v5;
    v86 = v5 >> 2 << 6;
    v79 = (*a5)[2 * (v6 & 1)] + v86;
    v81 = 4 * (v5 >> 2);
    v89[6] = v8;
    v89[7] = v8;
    v89[4] = v8;
    v89[5] = v8;
    v89[2] = v8;
    v89[3] = v8;
    v89[0] = v8;
    v89[1] = v8;
    if (interchange_compression::NUM_PIXELS_REGION[v6] <= 1u)
    {
      v10 = 1;
    }

    else
    {
      v10 = interchange_compression::NUM_PIXELS_REGION[v6];
    }

    v11 = *(this + 340);
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
        v17 = &unk_295664A3C;
        v18 = v77;
        do
        {
          v19 = *v18;
          v18 += 3;
          if (!v19)
          {
            interchange_compression::decompressor::unpack_header();
          }

          v20 = *(v16 - 4);
          if ((v20 & 4) != 0)
          {
            if (!*(v7 + 12 * (v14 + 12) + 8))
            {
              interchange_compression::decompressor::unpack_header();
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
              interchange_compression::decompressor::unpack_header();
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

          v28 = bit_pack::unpack(a4, v23);
          if (v23 >= 0x21)
          {
            interchange_compression::decompressor::decompress_pixels();
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
          v32 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_295663270), v31), xmmword_295663260);
          v33 = vshlq_u32(vandq_s8(vshlq_u32(v30, xmmword_295663250), v31), xmmword_295663260);
          LODWORD(v15[4 * (vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)).u32[0] | v32.i32[1]) + (vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)).u32[0] | v33.i32[1])]) = v28 << -v23 >> -v23;
          ++v14;
          v12 = *(v88 + 340);
          ++v17;
          v15 = (v15 + 4);
          v16 = v18;
          v8 = 0uLL;
        }

        while (v14 < *(&interchange_compression::format_table + 13 * v12 + 2));
        v11 = *(v88 + 340);
        a5 = v82;
        this = v88;
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
          interchange_compression::decompressor::unpack_header();
        }

        v37 = v35;
        v38 = *(v7 + 12 * v35 + 4);
        if ((v38 & 4) != 0)
        {
          if (!*(v7 + 12 * (v35 + 12) + 8))
          {
            interchange_compression::decompressor::unpack_header();
          }

          v39 = *(v7 + 12 * (v35 + 12) + 4);
        }

        else
        {
          v39 = 0;
        }

        v40 = *(v7 + 12 * v35 + 4);
        v41 = *(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32;
        if (*(&interchange_compression::format_table + 13 * v11 + v37 + 3) == 32)
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
            interchange_compression::decompressor::unpack_header();
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
          interchange_compression::decompressor::unpack_header();
        }

        v50 = 0;
        v51 = v7 + 12 * (v37 + 8);
        v53 = *(v51 + 4);
        v52 = (v51 + 4);
        (*a5)[v49][v48][v37] = v53;
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
          v64 = &v79[128 * v50];
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
                  interchange_compression::decompressor::unpack_header();
                }

                v68 = *(v55 + 4);
              }

              else
              {
                v68 = 0;
              }

              if (v47 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              v69 = v68 << (-v47 & 0x1F) >> (-v47 & 0x1F);
              if (v46 > 1)
              {
                if (v46 == 2)
                {
                  if (!*(v56 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                  if (v70 >= 0x42)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  if (!*(v57 + 8))
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (!*v85)
                  {
                    interchange_compression::decompressor::unpack_header();
                  }

                  if (v70 >= 0x21)
                  {
                    interchange_compression::decompressor::decompress_pixels();
                  }

                  this = v88;
                  a5 = v82;
                  v71 = *v52 - v69 + LODWORD(v62[v59]) + ((*(v57 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * v83 + ((*(v56 + 4) << -(v70 >> 1)) >> -(v70 >> 1)) * (v81 + v60);
                  v34 = v86;
LABEL_79:
                  v72 = ((v71 & ~(-1 << v70)) << -v70) >> -v70;
                }

                else
                {
                  v72 = (*a5)[0][0][v37];
                }

                *&v64[v59 * 16] = v72;
                goto LABEL_87;
              }

              if (!v46)
              {
                if (!*v85)
                {
                  interchange_compression::decompressor::unpack_header();
                }

                v70 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
                if (v70 >= 0x21)
                {
                  interchange_compression::decompressor::decompress_pixels();
                }

                v71 = *v52 - v69 + LODWORD(v62[v59]);
                goto LABEL_79;
              }

              v73 = *(&interchange_compression::format_table + 13 * *(this + 340) + v37 + 3);
              if (v73 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
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
              (*a5)[v65][v75][v37] = ((((*a5)[dword_295664FE0[16 * v65 + 1 + 2 * v75]][dword_295664FE0[16 * v65 + 2 * v75]][v37] - v69 + *(&v67[v74] + v37)) & ~(-1 << v73)) << -v73) >> -v73;
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
        v11 = *(this + 340);
        v78 = (v78 + 4);
        v79 += 4;
      }

      while ((v37 + 1) < *(&interchange_compression::format_table + 13 * v11 + 2));
    }

    ++v6;
    v5 = v76 + 2;
  }

  while (v6 != 4);
  return this;
}

_DWORD *interchange_compression::decompressor::decorrelate(_DWORD *this, unsigned int (*a2)[4][8][4])
{
  v2 = 0;
  v3 = this[85];
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
        v9 = this + 3;
        v10 = v6;
        v11 = &unk_295664A3C;
        do
        {
          if (!*v9)
          {
            interchange_compression::decompressor::unpack_header();
          }

          if ((*(v9 - 1) & 0x10) != 0)
          {
            v12 = this[86];
            if (v8 != v12)
            {
              v13 = v11[13 * v7];
              if (v13 >= 0x21)
              {
                interchange_compression::decompressor::decompress_pixels();
              }

              *v10 = (((((*a2)[v2][v5][v12] >> (*(&interchange_compression::format_table + 13 * v7 + v12 + 3) - v13)) + *v10) & ~(-1 << v13)) << -v13) >> -v13;
              v3 = this[85];
            }
          }

          *v10++ &= ~(-1 << v11[13 * v3]);
          ++v8;
          v3 = this[85];
          ++v11;
          v9 += 3;
          v7 = v3;
        }

        while (v8 < *(&interchange_compression::format_table + 13 * v3 + 2));
      }

      ++v5;
      v6 = (v6 + 16);
    }

    while (v5 != 8);
    ++v2;
    v4 = (v4 + 128);
  }

  while (v2 != 4);
  return this;
}

uint64_t bit_pack::get(bit_pack *this, unsigned int a2, unsigned int a3)
{
  if (a3 >= 0x21)
  {
    bit_pack::get();
  }

  v3 = a2;
  v4 = *(this + 134);
  if (a3 + a2 > v4)
  {
    printf("read overflow:  read bit=%d size=%d, total=%d\n", a2, a3, v4);
    __assert_rtn("get", "interchange_bit_pack.h", 85, "0");
  }

  v5 = *(this + 128);
  __dst = 0;
  v6 = 520;
  if (*(this + 544))
  {
    v6 = 528;
  }

  v7 = *(this + v6);
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

uint64_t interchange_compression::header::error_check(interchange_compression::header *this)
{
  v1 = this + 4;
  v2 = *this;
  if (!*(this + 3 * *(&interchange_compression::format_table + 52 * *this + 48) + 3))
  {
    interchange_compression::decompressor::unpack_header();
  }

  if (v2 == 21)
  {
    result = 0;
  }

  else
  {
    result = (v1[12 * *(&interchange_compression::format_table + 52 * *this + 48) + 4] >> 4) & 1;
  }

  if (v2 != 27)
  {
    v5 = 0;
    v6 = &interchange_compression::format_table + 52 * v2;
    LODWORD(v7) = *(v6 + 2);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    v8 = this + 12;
    v9 = this + 12;
    do
    {
      v10 = *v9;
      v9 += 12;
      if (!v10)
      {
        interchange_compression::decompressor::unpack_header();
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
        if (!*&v1[12 * (v5 + 4) + 8])
        {
          interchange_compression::decompressor::unpack_header();
        }

        if (v11 & 4 | *&v1[12 * (v5 + 4) + 4])
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

      if (!*&v1[12 * (v5 + 4) + 8])
      {
        interchange_compression::decompressor::unpack_header();
      }

      if ((*&v1[12 * (v5 + 4) + 4] + 1) <= *&v6[4 * v5 + 12])
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

uint64_t AVE_MCTF_SupportAllLight(int a1, int a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v6 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_SupportAllLight", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d", CurrTime);
  }

  if ((a2 - 1) > 0x1F || a3 - 1 >= 3)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x10u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong params, %d %d %d\n", v13, 16, v14, "AVE_MCTF_SupportAllLight", 707, "eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a2, a1, a3);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %d %d %d", v13, 16);
    }
  }

  else if ((a2 & 0x38) == 0x18)
  {
    v9 = gsc_psaMCTF_StrengthMapSet[a2];
    v10 = AVE_DW_Get();
    if (v10[274] <= 0)
    {
      v11 = *(v9 + 8 * a3);
    }

    else
    {
      v11 = v10 + 274;
      *(v9 + 8 * a3) = v11;
    }

    if (AVE_MCTF_SMap_FindMap(v11, a1))
    {
      v18 = 1;
      goto LABEL_30;
    }

    if (AVE_Log_CheckLevel(0x10u, 8))
    {
      v19 = AVE_Log_CheckConsole(0x10u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(8);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | Sensor not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d\n", v20, 16, v21, "AVE_MCTF_SupportAllLight", 726, "pMap != NULL", a2, a1, a3);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Sensor not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d", v20, 16);
    }
  }

  else if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v15 = AVE_Log_CheckConsole(0x10u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d\n", v16, 16, v17, "AVE_MCTF_SupportAllLight", 714, "paMCTF_StrengthMapSet != NULL", a2, a1, a3);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF in all-light: devType=%d, sensorID=0x%x, workMode=%d", v16, 16);
  }

  v18 = 0;
LABEL_30:
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v22 = AVE_Log_CheckConsole(0x10u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v23, 16, v24, "AVE_MCTF_SupportAllLight", a1, a2, a3, v18);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v23);
    }
  }

  return v18;
}

uint64_t AVE_MCTF_AdjustStrength(int *a1, int a2, unsigned int a3, int *a4, _DWORD *a5)
{
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v10 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p %p\n", CurrTime, 16, LevelStr, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", v13, 16, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p %p", CurrTime, 16, LevelStr);
    }
  }

  if (a3 - 1 <= 2 && (a2 - 1) <= 0x1F && a1 && a4 && a5)
  {
    if ((a2 & 0x38) == 0x18)
    {
      v14 = gsc_psaMCTF_StrengthMapSet[a2];
      v15 = AVE_DW_Get();
      if (v15[274] <= 0)
      {
        v16 = *(v14 + 8 * a3);
      }

      else
      {
        v16 = v15 + 274;
        *(v14 + 8 * a3) = v16;
      }

      Map = AVE_MCTF_SMap_FindMap(v16, a1[16]);
      if (Map)
      {
        v26 = Map;
        v58 = a5;
        AVE_MCTF_SMap_Print(Map, 16, 6, "MCTF_SMap");
        v27 = paCalculateNoiseLevel[v26[1]](a1);
        v28 = *a4;
        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v29 = AVE_Log_CheckConsole(0x10u);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(6);
          if (v29)
          {
            printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v30, 16, v31, "AVE_MCTF_FindRangeIdx", v26, v28, v27, a4);
            v30 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v30, 16);
        }

        if (v28 >= 1)
        {
          v35 = v28 + 1;
          do
          {
            Range = AVE_MCTF_SMap_FindRange(v26, v35 - 2);
            if (!Range)
            {
              break;
            }

            if (*(Range + 4) < v27)
            {
              break;
            }

            *a4 = v35 - 2;
            --v35;
          }

          while (v35 > 1);
        }

        if (*a4 == v28)
        {
          for (i = v28 + 1; i < v26[2]; ++i)
          {
            v38 = AVE_MCTF_SMap_FindRange(v26, i);
            if (!v38 || *v38 > v27)
            {
              break;
            }

            *a4 = i;
          }
        }

        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v39 = AVE_Log_CheckConsole(0x10u);
          v40 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(6);
          if (v39)
          {
            printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v40, 16, v41, "AVE_MCTF_FindRangeIdx", v26, v28, v27, a4, 0);
            v42 = AVE_GetCurrTime();
            v56 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v42, 16, v56);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v40, 16, v41);
          }
        }

        a5 = v58;
        if (AVE_MCTF_SMap_GetStrengthLevel(v26, *a4, v58))
        {
          if (AVE_Log_CheckLevel(0x10u, 4))
          {
            v43 = AVE_Log_CheckConsole(0x10u);
            v44 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d\n", v44, 16, v45, "AVE_MCTF_AdjustStrength", 799, "ret == 0", v26, *a4);
              v44 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              a5 = v58;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get strength level for rangeIdx %p %d", v44, 16);
          }

          v24 = 4294966296;
        }

        else
        {
          if (AVE_Log_CheckLevel(0x10u, 8))
          {
            v46 = AVE_Log_CheckConsole(0x10u);
            v47 = AVE_GetCurrTime();
            v48 = AVE_Log_GetLevelStr(8);
            if (v46)
            {
              printf("%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d\n", v47, 16, v48, "AVE_MCTF_AdjustStrength", 802, a1, a1[16], v27, *a4, *v58);
              v47 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(8);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x noise level %d rIdx %d s %d", v47, 16);
          }

          v24 = 0;
        }

        goto LABEL_62;
      }

      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v32 = AVE_Log_CheckConsole(0x10u);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(5);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v33, 16, v34, "AVE_MCTF_AdjustStrength", 783, "pMap != NULL", a2, a1[16], a3);
          v33 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | SensorID not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v33, 16);
      }
    }

    else if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v21 = AVE_Log_CheckConsole(0x10u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(5);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d\n", v22, 16, v23, "AVE_MCTF_AdjustStrength", 771, "paMCTF_StrengthMapSet != NULL", a2, a1[16], a3);
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(5);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Device not supported for MCTF strength adjustment: devType=%d, sensorID=0x%x, workMode=%d", v22, 16);
    }

    v24 = 4294966294;
    goto LABEL_62;
  }

  if (AVE_Log_CheckLevel(0x10u, 4))
  {
    v17 = AVE_Log_CheckConsole(0x10u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p\n", v18, 16, v19, "AVE_MCTF_AdjustStrength", 764, "(psData != __null) && (piRangeIdx != __null) && (piStrength != __null) && eDevType > AVE_DevType_None && eDevType < AVE_DevType_Max && eMCTFWorkMode > AVE_MCTF_WorkMode_None && eMCTFWorkMode < AVE_MCTF_WorkMode_Max", a1, a2, a3, a4, a5);
      v20 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v20, 16, v55, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong params, %p %d %d %p %p", v18, 16, v19, "AVE_MCTF_AdjustStrength");
    }
  }

  v24 = 4294966295;
LABEL_62:
  if (AVE_Log_CheckLevel(0x10u, 6))
  {
    v49 = AVE_Log_CheckConsole(0x10u);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %p %d\n", v50, 16, v51, "AVE_MCTF_AdjustStrength", a1, a2, a3, a4, a5, v24);
      v52 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v52, 16, v57, "AVE_MCTF_AdjustStrength");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %p %d", v50, 16, v51, "AVE_MCTF_AdjustStrength");
    }
  }

  return v24;
}

uint64_t AVE_MCTF_CalculateNoiseLevel_TotalGain(uint64_t a1)
{
  v1 = vdupq_lane_s64(0x4170000000000000, 0);
  v1.f64[0] = *(a1 + 24);
  v2 = vmulq_f64(*(a1 + 40), v1);
  return (*(a1 + 32) * v2.f64[0] / v2.f64[1]);
}

uint64_t AVE_MCTF_CalculateNoiseLevel_TotalGainSNR(_DWORD *a1)
{
  v2 = vdupq_lane_s64(0x4170000000000000, 0);
  v2.f64[0] = *(a1 + 3);
  v3 = vmulq_f64(*(a1 + 10), v2);
  v4 = (*(a1 + 4) * v3.f64[0] / v3.f64[1]);
  v5 = (*a1 + 0.5);
  if (v5 >= 21)
  {
    v5 = 21;
  }

  if (*a1 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 >= 15)
  {
    v7 = (36 - v6);
  }

  else
  {
    v7 = v4;
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_CalculateNoiseLevel_TotalGainSNR", 607, a1, a1[16], v4, v6, v7);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %p sID 0x%x gain %d snr %d noise level %d", CurrTime, 16);
  }

  return v7;
}

void *AVE_DLList_Init_Node(void *result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_Init_Node_cold_1();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t AVE_DLList_Init(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_Init_cold_1();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

BOOL AVE_DLList_Empty(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Empty_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_Empty_cold_2();
  }

  v1 = a1[1];
  if (!v1)
  {
    AVE_DLList_Empty_cold_1();
  }

  return *a1 == a1 || v1 == a1;
}

BOOL AVE_DLList_PopFront(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_PopFront_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopFront_cold_2();
  }

  if (!*(a1 + 8))
  {
    AVE_DLList_PopFront_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = v3[1];
    *(a1 + 8) = v4;
    *v4 = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 24);
  }

  return result;
}

uint64_t AVE_DLList_Prev(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_Prev_cold_1();
  }

  return *a1;
}

uint64_t AVE_DLList_Next(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_Next_cold_1();
  }

  return *(a1 + 8);
}

uint64_t *AVE_DLList_Erase(uint64_t *result)
{
  if (!result)
  {
    AVE_DLList_Erase_cold_3();
  }

  v1 = *result;
  if (!*result)
  {
    AVE_DLList_Erase_cold_2();
  }

  v2 = result[1];
  if (!v2)
  {
    AVE_DLList_Erase_cold_1();
  }

  *(v1 + 8) = v2;
  v3 = result[2];
  *result[1] = v1;
  *result = result;
  result[1] = result;
  if (v3)
  {
    --*(v3 + 24);
    result[2] = 0;
  }

  return result;
}

uint64_t AVE_DLList_Front(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Front_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t AVE_DLList_Back(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Back_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t AVE_DLList_PushBack(uint64_t result, void *a2)
{
  if (!result)
  {
    AVE_DLList_PushBack_cold_4();
  }

  if (!a2)
  {
    AVE_DLList_PushBack_cold_3();
  }

  if (!*result)
  {
    AVE_DLList_PushBack_cold_2();
  }

  if (!*(result + 8))
  {
    AVE_DLList_PushBack_cold_1();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

BOOL AVE_DLList_PopBack(void **a1)
{
  if (!a1)
  {
    AVE_DLList_PopBack_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopBack_cold_2();
  }

  if (!a1[1])
  {
    AVE_DLList_PopBack_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *a1;
    v4 = **a1;
    *a1 = v4;
    v4[1] = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 6);
  }

  return result;
}

uint64_t AVE_DLList_Begin(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_Begin_cold_1();
  }

  return *(a1 + 8);
}

uint64_t AVE_DLList_End(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_End_cold_1();
  }

  return result;
}

uint64_t AVE_DLList_RBegin(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    AVE_DLList_RBegin_cold_1();
  }

  return *a1;
}

uint64_t AVE_DLList_REnd(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    AVE_DLList_REnd_cold_1();
  }

  return result;
}

uint64_t AVE_DRL_Print(double *a1, uint64_t a2, int a3, const char *a4, int a5)
{
  v40 = *MEMORY[0x29EDCA608];
  memset(v39, 0, sizeof(v39));
  AVE_ComposePosStr(a4, a5, v39, 32);
  v8 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v9 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v9 || (-a3 & 0x20) != 0)
      {
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v39, a1, *a1);
      }

      else
      {
        v26 = a1[1];
        v27 = a1[2];
        v28 = v26;
        v29 = ((v26 - v26) * 1000.0);
        v30 = v27;
        v31 = ((v27 - v27) * 1000.0);
        v32 = a1[3];
        v33 = a1[4];
        v34 = v32;
        v35 = v32 - v32;
        if (v29 < 0)
        {
          v29 = -v29;
        }

        if (v31 < 0)
        {
          v31 = -v31;
        }

        v36 = (v35 * 1000.0);
        if (v36 < 0)
        {
          v36 = -v36;
        }

        v37 = ((v33 - v33) * 1000.0);
        if (v37 < 0)
        {
          v37 = -v37;
        }

        printf("DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", v39, a1, *a1, v28, v29, v30, v31, v34, v36, v33, v37);
        syslog(3, "DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", v39, a1, *a1);
      }
    }

    else
    {
      v10 = a3 & 0x20;
      v11 = v9 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v8);
      v14 = a1[1];
      v15 = a1[2];
      v16 = v14;
      v17 = ((v14 - v14) * 1000.0);
      v18 = v15;
      v19 = ((v15 - v15) * 1000.0);
      v20 = a1[3];
      v21 = a1[4];
      v22 = v20;
      v23 = v20 - v20;
      if (v17 < 0)
      {
        v17 = -v17;
      }

      if (v19 < 0)
      {
        v19 = -v19;
      }

      v24 = (v23 * 1000.0);
      if (v24 < 0)
      {
        v24 = -v24;
      }

      v25 = ((v21 - v21) * 1000.0);
      if (v25 < 0)
      {
        v25 = -v25;
      }

      if (((v11 | (v10 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d\n", CurrTime, a2, LevelStr, v39, a1, *a1, v16, v17, v18, v19, v22, v24, v21, v25);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v8);
      }

      syslog(3, "%lld %d AVE %s: DRL %s | %p %d | %d.%03d %d.%03d - %d.%03d %d.%03d", CurrTime, a2, LevelStr, v39);
    }
  }

  return 0;
}

uint64_t AVE_RC_DecideVBVMaxBitRate(int a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %p", CurrTime);
  }

  if (a3)
  {
    if (a1 > 0)
    {
      v9 = 1;
      v10 = a1;
LABEL_15:
      *a3 = v10;
      if (AVE_Log_CheckLevel(0xE3u, 8))
      {
        v14 = AVE_Log_CheckConsole(0xE3u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(8);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %d %d %d %d %d\n", v15, 227, v16, "AVE_RC_DecideVBVMaxBitRate", 259, a1, a2, *a3, v9, 0);
          v15 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %d %d", v15, 227);
      }

      v17 = 0;
      goto LABEL_23;
    }

    if (a2 > 0)
    {
      v9 = 2;
      v10 = a2;
      goto LABEL_15;
    }

    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xE3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p\n", v24, 227, v25, "AVE_RC_DecideVBVMaxBitRate", 253, "0", a1, a2, a3);
        v24 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | VBVMaxBitrate not set %d %d %p", v24, 227);
    }

    v17 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xE3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p\n", v12, 227, v13, "AVE_RC_DecideVBVMaxBitRate", 237, "piVBVMaxBitRate != __null", a1, a2, 0);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %d %p", v12, 227);
    }

    v17 = 4294966295;
  }

LABEL_23:
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v18 = AVE_Log_CheckConsole(0xE3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %d\n", v19, 227, v20, "AVE_RC_DecideVBVMaxBitRate", a1, a2, a3, v17);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v21, 227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %d", v19, 227);
    }
  }

  return v17;
}

uint64_t AVE_RC_DecideVBVBufferSize(double a1, double a2, double a3, uint64_t a4, double *a5)
{
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize", a1, v14, a2, v16, a3, v18, a4, a5);
      v19 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", v19, 227, v57, "AVE_RC_DecideVBVBufferSize");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVBufferSize");
    }
  }

  if (a5)
  {
    if ((a4 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = 20;
    }

    v21 = 2.5;
    if ((a4 & 0x80000000) == 0)
    {
      v21 = 1.0;
    }

    if (a3 <= 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = 4;
    }

    if (a3 > 0.0)
    {
      v21 = a3;
    }

    if (a2 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    if (a2 > 0.0)
    {
      v21 = a2;
    }

    if (a1 <= 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    if (a1 > 0.0)
    {
      v21 = a1;
    }

    *a5 = v21;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v25 = AVE_Log_CheckConsole(0xE3u);
      v60 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      v27 = ((a1 - a1) * 1000.0);
      v28 = ((a2 - a2) * 1000.0);
      if (v27 >= 0)
      {
        v29 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v29 = -v27;
      }

      if (v28 >= 0)
      {
        v30 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v30 = -v28;
      }

      v31 = ((a3 - a3) * 1000.0);
      if (v31 >= 0)
      {
        v32 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v32 = -v31;
      }

      v33 = *a5;
      v34 = ((*a5 - v33) * 1000.0);
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1, v29, a2, v30, a3, v32, a4, v33, v34, v24, 0);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v35, 227, v36, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v60, 227, v26, "AVE_RC_DecideVBVBufferSize", 332, a1);
      }
    }

    v47 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xE3u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = ((a1 - a1) * 1000.0);
      if (v40 >= 0)
      {
        v41 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v41 = -v40;
      }

      v42 = ((a2 - a2) * 1000.0);
      if (v42 >= 0)
      {
        v43 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v43 = -v42;
      }

      v44 = ((a3 - a3) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294, "pfVBVBufferSize != __null", a1, v41, a2, v43, a3, v45, a4, 0);
        v46 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v46, 227, v58, "AVE_RC_DecideVBVBufferSize", 294);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d 0x%llx %p", v38, 227, v39, "AVE_RC_DecideVBVBufferSize", 294);
      }
    }

    v47 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v48 = AVE_Log_CheckConsole(0xE3u);
    v49 = AVE_GetCurrTime();
    v50 = AVE_Log_GetLevelStr(7);
    v51 = ((a1 - a1) * 1000.0);
    if (v51 >= 0)
    {
      v52 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v52 = -v51;
    }

    v53 = ((a2 - a2) * 1000.0);
    if (v53 >= 0)
    {
      v54 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v54 = -v53;
    }

    if (v48)
    {
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1, v52, a2, v54, a2, v54, a4, a5, v47);
      v55 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v55, 227, v59, "AVE_RC_DecideVBVBufferSize", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v49, 227, v50, "AVE_RC_DecideVBVBufferSize", a1);
    }
  }

  return v47;
}

uint64_t AVE_RC_DecideVBVInitialDelay(double a1, double a2, double a3, double a4, uint64_t a5, double *a6)
{
  v6 = a6;
  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v11 = AVE_Log_CheckConsole(0xE3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = ((a1 - a1) * 1000.0);
    if (v13 >= 0)
    {
      v14 = ((a1 - a1) * 1000.0);
    }

    else
    {
      v14 = -v13;
    }

    v15 = ((a2 - a2) * 1000.0);
    if (v15 >= 0)
    {
      v16 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v16 = -v15;
    }

    v17 = ((a3 - a3) * 1000.0);
    if (v17 >= 0)
    {
      v18 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v18 = -v17;
    }

    v19 = ((a4 - a4) * 1000.0);
    if (v19 >= 0)
    {
      v20 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v20 = -v19;
    }

    v6 = a6;
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1, v14, a2, v16, a3, v18, a4, v20, a5, a6);
      v67 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v67, 227, v63, "AVE_RC_DecideVBVInitialDelay", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", CurrTime, 227, LevelStr, "AVE_RC_DecideVBVInitialDelay", a1);
    }
  }

  if (v6)
  {
    if (a1 >= 0.0)
    {
      v21 = 1;
      v22 = a1;
    }

    else if (a2 >= 0.0)
    {
      v21 = 2;
      v22 = a2;
    }

    else if (a3 >= 0.0)
    {
      v21 = 4;
      v22 = a3 * a4 / 100.0;
    }

    else
    {
      if ((a5 & 0x80000000) != 0)
      {
        v21 = 10;
      }

      else
      {
        v21 = 20;
      }

      v22 = 2.25;
      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0.5;
      }
    }

    *v6 = v22;
    if (AVE_Log_CheckLevel(0xE3u, 8))
    {
      v36 = AVE_Log_CheckConsole(0xE3u);
      v68 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(8);
      v38 = ((a1 - a1) * 1000.0);
      if (v38 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = -v38;
      }

      v40 = ((a2 - a2) * 1000.0);
      v41 = ((a3 - a3) * 1000.0);
      if (v40 >= 0)
      {
        v42 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v42 = -v40;
      }

      if (v41 >= 0)
      {
        v43 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v43 = -v41;
      }

      v44 = ((a4 - a4) * 1000.0);
      if (v44 >= 0)
      {
        v45 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v45 = -v44;
      }

      v46 = *v6;
      v47 = ((*v6 - v46) * 1000.0);
      if (v47 < 0)
      {
        v47 = -v47;
      }

      if (v36)
      {
        v48 = v39;
        printf("%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d\n", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39, a2, v42, a3, v43, a4, v45, a5, v46, v47, v21, 0);
        v69 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v69, 227, v49, "AVE_RC_DecideVBVInitialDelay", 409, a1, v48);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %d.%03d %d %d", v68, 227, v37, "AVE_RC_DecideVBVInitialDelay", 409, a1, v39);
      }
    }

    v35 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xE3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      v26 = ((a1 - a1) * 1000.0);
      if (v26 >= 0)
      {
        v27 = ((a1 - a1) * 1000.0);
      }

      else
      {
        v27 = -v26;
      }

      v28 = ((a2 - a2) * 1000.0);
      if (v28 >= 0)
      {
        v29 = ((a2 - a2) * 1000.0);
      }

      else
      {
        v29 = -v28;
      }

      v30 = ((a3 - a3) * 1000.0);
      if (v30 >= 0)
      {
        v31 = ((a3 - a3) * 1000.0);
      }

      else
      {
        v31 = -v30;
      }

      v32 = ((a4 - a4) * 1000.0);
      if (v32 >= 0)
      {
        v33 = ((a4 - a4) * 1000.0);
      }

      else
      {
        v33 = -v32;
      }

      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p\n", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null", a1, v27, a2, v29, a3, v31, a4, v33, a5, 0);
        v34 = AVE_GetCurrTime();
        v64 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v34, 227, v64, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p", v24, 227, v25, "AVE_RC_DecideVBVInitialDelay", 372, "pfVBVInitialDelay != __null");
      }
    }

    v35 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xE3u, 7))
  {
    v50 = AVE_Log_CheckConsole(0xE3u);
    v51 = AVE_GetCurrTime();
    v52 = AVE_Log_GetLevelStr(7);
    v53 = ((a1 - a1) * 1000.0);
    if (v53 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = -v53;
    }

    v55 = ((a2 - a2) * 1000.0);
    if (v55 >= 0)
    {
      v56 = ((a2 - a2) * 1000.0);
    }

    else
    {
      v56 = -v55;
    }

    v57 = ((a3 - a3) * 1000.0);
    if (v57 >= 0)
    {
      v58 = ((a3 - a3) * 1000.0);
    }

    else
    {
      v58 = -v57;
    }

    v59 = ((a4 - a4) * 1000.0);
    if (v59 >= 0)
    {
      v60 = ((a4 - a4) * 1000.0);
    }

    else
    {
      v60 = -v59;
    }

    if (v50)
    {
      v65 = v54;
      printf("%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d\n", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54, a2, v56, a3, v58, a4, v60, a5, a6, v35);
      v70 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v70, 227, v61, "AVE_RC_DecideVBVInitialDelay", a1, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d.%03d %d.%03d %d.%03d %d.%03d 0x%llx %p %d", v51, 227, v52, "AVE_RC_DecideVBVInitialDelay", a1, v54);
    }
  }

  return v35;
}

void htpc_entropy::dec_symbols()
{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 155, "bb_avail == 0");
}

{
  __assert_rtn("dec_symbols", "htpc_entropy.h", 190, "bb_avail < 8");
}

void interchange_compression::decompressor::decompress()
{
  __assert_rtn("decompress", "interchange_decompressor.h", 212, "lossy_level == 0");
}

{
  __assert_rtn("decompress", "interchange_decompressor.h", 203, "lossy_level == 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 901, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 911, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1013, "pixel_unpacked <= legal_pixel_size");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1063, "delta_quant <= ((1ull << delta_bits[c]) - 1)");
}

{
  __assert_rtn("skip", "interchange_bit_pack.h", 103, "read_ptr <= size_bits()");
}

void interchange_compression::header::get_size()
{
  __assert_rtn("get_size", "interchange_header.h", 133, "fields[field_id(BITS, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 132, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 127, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 142, "0");
}

{
  __assert_rtn("get_size", "interchange_header.h", 138, "fields[field_id(MODE, comp)].init");
}

void interchange_compression::derive_sharing()
{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 357, "start_level[3] <= 0");
}

{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 270, "mode[3] == 0 || mode[3] == 1");
}

void interchange_compression::decompressor::decompressor()
{
  __assert_rtn("set_format", "interchange_header.h", 205, "header_layout_table[id].format == id");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 40, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 41, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

void interchange_compression::decompressor::unpack_header()
{
  __assert_rtn("unpack_header", "interchange_decompressor.h", 238, "header::header_layout_table[format].field_size[0] > shift");
}

{
  __assert_rtn("get", "interchange_header.h", 104, "fields[field_id(s, comp)].init");
}

void interchange_compression::decompressor::decompress_pixels()
{
  __assert_rtn("sign_extend", "interchange_constants.h", 90, "width <= 32");
}

{
  __assert_rtn("wrap_to_range", "interchange_constants.h", 85, "width <= 32");
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