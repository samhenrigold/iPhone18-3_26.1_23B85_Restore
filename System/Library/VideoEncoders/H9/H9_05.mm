uint64_t AVE_Prop_HEVC_SetMCTFParams(_BYTE *a1, const char **a2, const __CFString *a3, const __CFArray *a4)
{
  v59 = *MEMORY[0x29EDCA608];
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = AVE_MCTF_Retrieve(a4, v57);
      if (v9)
      {
        v56 = v9;
        v55 = a2;
        v10 = 0;
        v11 = v57;
        v12 = 1;
        do
        {
          v13 = v12;
          v14 = &a1[64 * v10 + 10612];
          v15 = v11[1];
          *v14 = *v11;
          v14[1] = v15;
          v16 = v11[3];
          v14[2] = v11[2];
          v14[3] = v16;
          a1[10740] = 1;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v17 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(7);
            v20 = *v11;
            v21 = *(v11 + 1);
            v22 = *(v11 + 2);
            v23 = *(v11 + 3);
            v24 = *(v11 + 4);
            v25 = *(v11 + 5);
            v26 = *(v11 + 6);
            v27 = *(v11 + 7);
            v28 = *(v11 + 8);
            v29 = *(v11 + 9);
            v30 = *(v11 + 10);
            v31 = *(v11 + 11);
            v32 = *(v11 + 12);
            v33 = *(v11 + 13);
            v34 = *(v11 + 14);
            v35 = *(v11 + 15);
            if (v17)
            {
              printf("%lld %d AVE %s: MCTF Params: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", CurrTime, 30, LevelStr, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, *(v11 + 14), v35);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(7);
              v20 = *v11;
              v21 = *(v11 + 1);
              v22 = *(v11 + 2);
              v23 = *(v11 + 3);
              v24 = *(v11 + 4);
              v25 = *(v11 + 5);
              v26 = *(v11 + 6);
              v27 = *(v11 + 7);
              v28 = *(v11 + 8);
              v29 = *(v11 + 9);
              v30 = *(v11 + 10);
              v31 = *(v11 + 11);
              v32 = *(v11 + 12);
              v33 = *(v11 + 13);
              v34 = *(v11 + 14);
              v35 = *(v11 + 15);
            }

            syslog(3, "%lld %d AVE %s: MCTF Params: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", CurrTime, 30, LevelStr, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
          }

          v12 = 0;
          v11 = v58;
          v10 = 1;
        }

        while ((v13 & 1) != 0);
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v36 = AVE_Log_CheckConsole(0x1Eu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(7);
          if (v36)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v37, 30, v38, a1, *(a1 + 7), *v55, a1[10740]);
            v37 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v37);
        }

        return v56;
      }

      else
      {
        result = AVE_Log_CheckLevel(0x1Eu, 4);
        if (result)
        {
          v49 = AVE_Log_CheckConsole(0x1Eu);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p\n", v50, 30, v51, "AVE_Prop_HEVC_SetMCTFParams", 20669, "ret != 0", a1, *(a1 + 7), a2, a3, a4);
            v52 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p", v52, 30, v54, "AVE_Prop_HEVC_SetMCTFParams", 20669);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | error retrieve MCTF params %p %lld %p %p %p", v50, 30, v51, "AVE_Prop_HEVC_SetMCTFParams", 20669);
          }

          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v43 = AVE_Log_CheckConsole(0x1Eu);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        v46 = *(a1 + 7);
        v47 = CFGetTypeID(a4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v44, 30, v45, "AVE_Prop_HEVC_SetMCTFParams", 20664, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v46, a2, a3, a4, v47);
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v44, 30, v45, "AVE_Prop_HEVC_SetMCTFParams", 20664, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v39 = AVE_Log_CheckConsole(0x1Eu);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v40, 30, v41, "AVE_Prop_HEVC_SetMCTFParams", 20655, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v42 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v42, 30, v53, "AVE_Prop_HEVC_SetMCTFParams");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v40, 30, v41, "AVE_Prop_HEVC_SetMCTFParams");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFParams(_BYTE *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFParams", 20716, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v21 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v30, "AVE_Prop_HEVC_GetMCTFParams", 20716);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFParams", 20716);
      }
    }

    return 4294966295;
  }

  if (a1[10740] != 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v25 = AVE_Log_CheckConsole(0x1Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p\n", v26, 30, v27, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null", a1, *(a1 + 7), a2, allocator, a4, a5);
        v28 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p", v28, 30, v31, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p", v26, 30, v27, "AVE_Prop_HEVC_GetMCTFParams", 20726, "pArray != __null");
      }
    }

    return 4294966293;
  }

  v11 = Mutable;
  v12 = AVE_MCTF_Make(a1 + 10612, Mutable);
  if (v12)
  {
LABEL_16:
    *a5 = v11;
    if (AVE_Log_CheckLevel(0x1Eu, 7))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      if (v22)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, a1[10740], v11);
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
    }

    if (v12 && v11)
    {
      CFRelease(v11);
    }

    return v12;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v12 = AVE_Log_CheckConsole(0x1Eu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(4);
    v15 = *(a1 + 7);
    if (!v12)
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, v15, a4, a5);
      return v12;
    }

    printf("%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p\n", v13, 30, v14, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, v15, a4, a5);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | error make MCTF params %p %lld %p %p", v16, 30, v17, "AVE_Prop_HEVC_GetMCTFParams", 20730, "ret != 0", a1, *(a1 + 7), a4, a5);
  }

  return 0;
}

uint64_t AVE_Prop_HEVC_SetMCTFMaxNextRefNum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20788, "iMaxNextRefNum >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26970) = valuePtr;
        *(a1 + 2953) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20779, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20779, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum", 20769, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMCTFMaxNextRefNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFMaxNextRefNum(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2953];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20834, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFMaxNextRefNum", 20824);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFRampUpFrameNum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20885, "iRamUpFrameNum >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26971) = valuePtr;
        *(a1 + 349) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20876, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20876, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum", 20866, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetMCTFRampUpFrameNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetMCTFRampUpFrameNum(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[349];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20931, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFRampUpFrameNum", 20921);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetMCTFLatencyMode(char *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20966, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v38, "AVE_Prop_HEVC_SetMCTFLatencyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetMCTFLatencyMode");
      }
    }

    return 4294966295;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a4) || (v9 = CFNumberGetTypeID(), v9 == CFGetTypeID(a4)))
  {
    v10 = CFStringGetTypeID();
    if (v10 == CFGetTypeID(a4))
    {
      if (CFEqual(a4, @"Low"))
      {
        goto LABEL_9;
      }

      if (CFEqual(a4, @"Medium"))
      {
        v11 = 2;
        goto LABEL_27;
      }

      if (CFEqual(a4, @"Auto"))
      {
LABEL_9:
        v11 = 1;
LABEL_27:
        Str = AVE_CFStr_GetStr(a4, a1 + 106772, 0x80u);
        if (Str != a1 + 106772)
        {
          AVE_SNPrintf(a1 + 106772, 128, "%s", Str);
        }

        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(7);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s\n", v29, 30, v30, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011, a1, *(a1 + 7), a2, a3, a4, a1 + 106772);
            v31 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s", v31, 30, v40, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d  %p %lld %p %p %p iaVTLatencyMode = %s", v29, 30, v30, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21011);
          }
        }

        goto LABEL_33;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v35 = AVE_Log_CheckConsole(0x1Eu);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p\n", v36, 30, v37, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20999, "false", a1, *(a1 + 7), a2, a3, a4);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p", v36, 30, v37, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20999);
      }

      return 4294966295;
    }

    v16 = CFNumberGetTypeID();
    if (v16 == CFGetTypeID(a4))
    {
      valuePtr = 0;
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v11 = valuePtr;
      if ((valuePtr - 1) >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)\n", v18, 30, v19, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21024, "AVE_MCTF_Mode_Invalid < eMCTFLatencyMode && eMCTFLatencyMode < AVE_MCTF_Mode_Max", a1, *(a1 + 7), a2, a3, a4, v11, 0, 3);
            v20 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)", v20, 30, v39, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21024, "AVE_MCTF_Mode_Invalid < eMCTFLatencyMode && eMCTFLatencyMode < AVE_MCTF_Mode_Max", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid LatencyMode %p %lld %p %p %p %d (%d, %d)", v18, 30, v19, "AVE_Prop_HEVC_SetMCTFLatencyMode", 21024, "AVE_MCTF_Mode_Invalid < eMCTFLatencyMode && eMCTFLatencyMode < AVE_MCTF_Mode_Max", a1);
          }
        }

        return 4294965292;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_33:
    *(a1 + 26692) = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v32 = AVE_Log_CheckConsole(0x1Eu);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(7);
      if (v32)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v33, 30, v34, a1, *(a1 + 7), *a2, v11);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v33);
      return 0;
    }

    return result;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v22 = AVE_Log_CheckConsole(0x1Eu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(4);
    v25 = *(a1 + 7);
    v26 = CFGetTypeID(a4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20977, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_HEVC_SetMCTFLatencyMode", 20977, "CFStringGetTypeID() == CFGetTypeID(pValue) || CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t AVE_Prop_HEVC_GetMCTFLatencyMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[26692];
    valuePtr = v10;
    if (*(a1 + 106772) || !v10)
    {
      if (v10 == 1)
      {
        v11 = @"Low";
      }

      else if (v10 == 2)
      {
        v11 = @"Medium";
      }

      else
      {
        v11 = CFStringCreateWithCString(0, &unk_295613FE7, 0);
      }
    }

    else
    {
      v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      if (!v11)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            v15 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v15, 30, v24, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21075, "pNum != __null", a1);
          }
        }

        return 4294966293;
      }
    }

    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      if (v21)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v22, 30, v23, a1, *(a1 + 7), *a2, valuePtr, a5);
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v22, 30);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v25, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetMCTFLatencyMode", 21061);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetUseElementaryStreamOutput(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[26972] = v9;
      *(a1 + 10756) = v9;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = *(a1 + 7);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21136, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetUseElementaryStreamOutput", 21126, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_HEVC_SetUseElementaryStreamOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetUseElementaryStreamOutput");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetUseElementaryStreamOutput(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10756];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10756])
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetUseElementaryStreamOutput", 21173);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_SetCmdTimeOutMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21229, "iCmdTimeOutMode >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 26973) = valuePtr;
        *(a1 + 2940) = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21220, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21220, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_HEVC_SetCmdTimeOutMode", 21210, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_HEVC_SetCmdTimeOutMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_HEVC_SetCmdTimeOutMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_GetCmdTimeOutMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2940];
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21275, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x1Eu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_HEVC_GetCmdTimeOutMode", 21265);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_HEVC_MakeDict(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_MakeDict", 21620, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", CurrTime, 30, LevelStr);
      }
    }

    return 4294966295;
  }

  else
  {
    Dict = AVE_Prop_MakeDict(&gs_saAVE_Prop_HEVC, 198, a1, a2, a3, a4);
    v14 = Dict;
    if (Dict && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_HEVC_MakeDict", 21628, "ret == 0", v7, v6, a3, a4, v14);
        v18 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_HEVC_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_HEVC_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t AVE_Prop_HEVC_SetProperty(uint64_t a1, __CFString *a2, const void *a3)
{
  if (*(a1 + 32) == 2)
  {
    v6 = 512;
  }

  else
  {
    v6 = 256;
  }

  v7 = AVE_Prop_SetProperty(&gs_saAVE_Prop_HEVC, 198, *(a1 + 68), v6, a1, *(a1 + 56), a2, a3);
  if (v7 && AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v8 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), a2, a3, v7);
      v11 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v11, 30, v13, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_SetProperty", 21662, "ret == 0");
    }
  }

  return v7;
}

uint64_t AVE_Prop_HEVC_GetProperty(uint64_t a1, const void *a2, __CFString *a3, const void *a4)
{
  if (*(a1 + 32) == 2)
  {
    v8 = 512;
  }

  else
  {
    v8 = 256;
  }

  Property = AVE_Prop_GetProperty(&gs_saAVE_Prop_HEVC, 198, *(a1 + 68), v8, a1, *(a1 + 56), a2, a3, a4);
  if (Property && AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1, *(a1 + 56), v8, *(a1 + 68), a2, a3, a4, Property);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v13, 30, v15, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_GetProperty", 21697, "ret == 0", a1);
    }
  }

  return Property;
}

uint64_t AVE_Prop_HEVC_CreateSupportedPresetDictionary(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
      v5 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 30, v26, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 30, LevelStr, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1);
    }
  }

  if (a1)
  {
    if (*(a1 + 32) == 2)
    {
      v6 = 512;
    }

    else
    {
      v6 = 256;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v8 = Mutable;
      PresetDict = AVE_Enc_CreatePresetDict(a1, *(a1 + 56), *(a1 + 68), 0, &gs_saAVE_Prop_HEVC, 198, v6, *(a1 + 1440), *(a1 + 1444), Mutable);
      if (PresetDict)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d\n", v11, 30, v12, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21743, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), PresetDict);
            v13 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d", v13, 30, v27, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d", v11, 30, v12, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
          }
        }

        CFRelease(v8);
      }

      else
      {
        *(a1 + 104) = v8;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v18, 30, v19, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21734, "pDict != __null", a1, *(a1 + 56), v6, *(a1 + 68), 0);
          v20 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v20, 30, v28, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v18, 30, v19, "AVE_Prop_HEVC_CreateSupportedPresetDictionary");
        }
      }

      PresetDict = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 30, v16, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", 21719, "pINS != __null", 0);
        v15 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    PresetDict = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v21 = AVE_Log_CheckConsole(0x1Eu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v22, 30, v23, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, PresetDict);
      v24 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 30, v29, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, PresetDict);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 30, v23, "AVE_Prop_HEVC_CreateSupportedPresetDictionary", a1, PresetDict);
    }
  }

  return PresetDict;
}

double _GLOBAL__sub_I_AVE_Prop_HEVC_cpp()
{
  gsc_saAVE_HEVC_ProfileLevel = @"HEVC_Main_1_0";
  qword_2A189A518 = 0x100000001;
  qword_2A189A520 = @"HEVC_Main_2_0";
  qword_2A189A528 = 0x200000001;
  qword_2A189A530 = @"HEVC_Main_2_1";
  qword_2A189A538 = 0x300000001;
  qword_2A189A540 = @"HEVC_Main_3_0";
  qword_2A189A548 = 0x400000001;
  qword_2A189A550 = @"HEVC_Main_3_1";
  qword_2A189A558 = 0x500000001;
  qword_2A189A560 = @"HEVC_Main_4_0";
  qword_2A189A568 = 0x600000001;
  qword_2A189A570 = @"HEVC_Main_4_1";
  qword_2A189A578 = 0x700000001;
  qword_2A189A580 = @"HEVC_Main_5_0";
  qword_2A189A588 = 0x800000001;
  qword_2A189A590 = @"HEVC_Main_5_1";
  qword_2A189A598 = 0x900000001;
  qword_2A189A5A0 = @"HEVC_Main_5_2";
  qword_2A189A5A8 = 0xA00000001;
  qword_2A189A5B0 = @"HEVC_Main_6_0";
  qword_2A189A5B8 = 0xB00000001;
  qword_2A189A5C0 = @"HEVC_Main_6_1";
  qword_2A189A5C8 = 0xC00000001;
  qword_2A189A5D0 = @"HEVC_Main_6_2";
  qword_2A189A5D8 = 0xD00000001;
  qword_2A189A5E0 = @"HEVC_Main10_1_0";
  qword_2A189A5E8 = 0x100000002;
  qword_2A189A5F0 = @"HEVC_Main10_2_0";
  qword_2A189A5F8 = 0x200000002;
  qword_2A189A600 = @"HEVC_Main10_2_1";
  qword_2A189A608 = 0x300000002;
  qword_2A189A610 = @"HEVC_Main10_3_0";
  qword_2A189A618 = 0x400000002;
  qword_2A189A620 = @"HEVC_Main10_3_1";
  qword_2A189A628 = 0x500000002;
  qword_2A189A630 = @"HEVC_Main10_4_0";
  qword_2A189A638 = 0x600000002;
  qword_2A189A640 = @"HEVC_Main10_4_1";
  qword_2A189A648 = 0x700000002;
  qword_2A189A650 = @"HEVC_Main10_5_0";
  qword_2A189A658 = 0x800000002;
  qword_2A189A660 = @"HEVC_Main10_5_1";
  qword_2A189A668 = 0x900000002;
  qword_2A189A670 = @"HEVC_Main10_5_2";
  qword_2A189A678 = 0xA00000002;
  qword_2A189A680 = @"HEVC_Main10_6_0";
  qword_2A189A688 = 0xB00000002;
  qword_2A189A690 = @"HEVC_Main10_6_1";
  qword_2A189A698 = 0xC00000002;
  qword_2A189A6A0 = @"HEVC_Main10_6_2";
  qword_2A189A6A8 = 0xD00000002;
  qword_2A189A6B0 = @"HEVC_Main444_1_0";
  qword_2A189A6B8 = 0x100000009;
  qword_2A189A6C0 = @"HEVC_Main444_2_0";
  qword_2A189A6C8 = 0x200000009;
  qword_2A189A6D0 = @"HEVC_Main444_2_1";
  qword_2A189A6D8 = 0x300000009;
  qword_2A189A6E0 = @"HEVC_Main444_3_0";
  qword_2A189A6E8 = 0x400000009;
  qword_2A189A6F0 = @"HEVC_Main444_3_1";
  qword_2A189A6F8 = 0x500000009;
  qword_2A189A700 = @"HEVC_Main444_4_0";
  qword_2A189A708 = 0x600000009;
  qword_2A189A710 = @"HEVC_Main444_4_1";
  qword_2A189A718 = 0x700000009;
  qword_2A189A720 = @"HEVC_Main444_5_0";
  qword_2A189A728 = 0x800000009;
  qword_2A189A730 = @"HEVC_Main444_5_1";
  qword_2A189A738 = 0x900000009;
  qword_2A189A740 = @"HEVC_Main444_5_2";
  qword_2A189A748 = 0xA00000009;
  qword_2A189A750 = @"HEVC_Main444_6_0";
  qword_2A189A758 = 0xB00000009;
  qword_2A189A760 = @"HEVC_Main444_6_1";
  qword_2A189A768 = 0xC00000009;
  qword_2A189A770 = @"HEVC_Main444_6_2";
  qword_2A189A778 = 0xD00000009;
  qword_2A189A780 = @"HEVC_Main44410_1_0";
  qword_2A189A788 = 0x10000000ALL;
  qword_2A189A790 = @"HEVC_Main44410_2_0";
  qword_2A189A798 = 0x20000000ALL;
  qword_2A189A7A0 = @"HEVC_Main44410_2_1";
  qword_2A189A7A8 = 0x30000000ALL;
  qword_2A189A7B0 = @"HEVC_Main44410_3_0";
  qword_2A189A7B8 = 0x40000000ALL;
  qword_2A189A7C0 = @"HEVC_Main44410_3_1";
  qword_2A189A7C8 = 0x50000000ALL;
  qword_2A189A7D0 = @"HEVC_Main44410_4_0";
  qword_2A189A7D8 = 0x60000000ALL;
  qword_2A189A7E0 = @"HEVC_Main44410_4_1";
  qword_2A189A7E8 = 0x70000000ALL;
  qword_2A189A7F0 = @"HEVC_Main44410_5_0";
  qword_2A189A7F8 = 0x80000000ALL;
  qword_2A189A800 = @"HEVC_Main44410_5_1";
  qword_2A189A808 = 0x90000000ALL;
  qword_2A189A810 = @"HEVC_Main44410_5_2";
  qword_2A189A818 = 0xA0000000ALL;
  qword_2A189A820 = @"HEVC_Main44410_6_0";
  qword_2A189A828 = 0xB0000000ALL;
  qword_2A189A830 = @"HEVC_Main44410_6_1";
  qword_2A189A838 = 0xC0000000ALL;
  qword_2A189A840 = @"HEVC_Main44410_6_2";
  qword_2A189A848 = 0xD0000000ALL;
  qword_2A189A850 = @"HEVC_Main44410_1_0";
  qword_2A189A858 = 0x100000008;
  qword_2A189A860 = @"HEVC_Main44410_2_0";
  qword_2A189A868 = 0x200000008;
  qword_2A189A870 = @"HEVC_Main44410_2_1";
  qword_2A189A878 = 0x300000008;
  qword_2A189A880 = @"HEVC_Main44410_3_0";
  qword_2A189A888 = 0x400000008;
  qword_2A189A890 = @"HEVC_Main44410_3_1";
  qword_2A189A898 = 0x500000008;
  qword_2A189A8A0 = @"HEVC_Main44410_4_0";
  qword_2A189A8A8 = 0x600000008;
  qword_2A189A8B0 = @"HEVC_Main44410_4_1";
  qword_2A189A8B8 = 0x700000008;
  qword_2A189A8C0 = @"HEVC_Main44410_5_0";
  qword_2A189A8C8 = 0x800000008;
  qword_2A189A8D0 = @"HEVC_Main44410_5_1";
  qword_2A189A8D8 = 0x900000008;
  qword_2A189A8E0 = @"HEVC_Main44410_5_2";
  qword_2A189A8E8 = 0xA00000008;
  qword_2A189A8F0 = @"HEVC_Main44410_6_0";
  qword_2A189A8F8 = 0xB00000008;
  qword_2A189A900 = @"HEVC_Main44410_6_1";
  qword_2A189A908 = 0xC00000008;
  qword_2A189A910 = @"HEVC_Main44410_6_2";
  qword_2A189A918 = 0xD00000008;
  qword_2A189A920 = @"HEVC_MainStill_1_0";
  qword_2A189A928 = 0x100000003;
  qword_2A189A930 = @"HEVC_MainStill_2_0";
  qword_2A189A938 = 0x200000003;
  qword_2A189A940 = @"HEVC_MainStill_2_1";
  qword_2A189A948 = 0x300000003;
  qword_2A189A950 = @"HEVC_MainStill_3_0";
  qword_2A189A958 = 0x400000003;
  qword_2A189A960 = @"HEVC_MainStill_3_1";
  qword_2A189A968 = 0x500000003;
  qword_2A189A970 = @"HEVC_MainStill_4_0";
  qword_2A189A978 = 0x600000003;
  qword_2A189A980 = @"HEVC_MainStill_4_1";
  qword_2A189A988 = 0x700000003;
  qword_2A189A990 = @"HEVC_MainStill_5_0";
  qword_2A189A998 = 0x800000003;
  qword_2A189A9A0 = @"HEVC_MainStill_5_1";
  qword_2A189A9A8 = 0x900000003;
  qword_2A189A9B0 = @"HEVC_MainStill_5_2";
  qword_2A189A9B8 = 0xA00000003;
  qword_2A189A9C0 = @"HEVC_MainStill_6_0";
  qword_2A189A9C8 = 0xB00000003;
  qword_2A189A9D0 = @"HEVC_MainStill_6_1";
  qword_2A189A9D8 = 0xC00000003;
  qword_2A189A9E0 = @"HEVC_MainStill_6_2";
  qword_2A189A9E8 = 0xD00000003;
  qword_2A189A9F0 = *MEMORY[0x29EDBD0F0];
  qword_2A189A9F8 = 1;
  qword_2A189AA00 = *MEMORY[0x29EDBD0C8];
  qword_2A189AA08 = 2;
  qword_2A189AA10 = *MEMORY[0x29EDBD0E0];
  qword_2A189AA18 = 9;
  qword_2A189AA20 = *MEMORY[0x29EDBD0D8];
  qword_2A189AA28 = 10;
  qword_2A189AA30 = *MEMORY[0x29EDBD0D0];
  qword_2A189AA38 = 8;
  qword_2A189AA40 = *MEMORY[0x29EDBD100];
  qword_2A189AA48 = 6;
  qword_2A189AA50 = *MEMORY[0x29EDBD0F8];
  qword_2A189AA58 = 7;
  qword_2A189AA60 = *MEMORY[0x29EDBD0E8];
  *&result = 3;
  qword_2A189AA68 = 3;
  return result;
}

uint64_t AVE_Prop_Add(const void *a1, unsigned int a2, int a3, uint64_t a4, __CFDictionary *a5)
{
  if (a1 && a2 <= 8 && a5)
  {
    if (a2 > 3)
    {
      if (a2 - 4 < 4)
      {
        v10 = 0;
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    switch(a2)
    {
      case 1u:
        v15 = MEMORY[0x29EDBD130];
        break;
      case 2u:
        v15 = MEMORY[0x29EDBD140];
        break;
      case 3u:
        v15 = MEMORY[0x29EDBD138];
        break;
      default:
LABEL_17:
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_Add", 58, "ret == 0", a1, a2, a3, a4, a5);
            v20 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", v20, 30, v29, "AVE_Prop_Add");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | unsupported property type %p %d 0x%x %lld %p", CurrTime, 30, LevelStr, "AVE_Prop_Add");
          }
        }

        return 4294966294;
    }

    v10 = *v15;
LABEL_22:
    if ((a3 & 0x30000) == 0x10000)
    {
      v21 = *MEMORY[0x29EDBD110];
    }

    else
    {
      v21 = *MEMORY[0x29EDBD118];
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v23 = Mutable;
      if (v10)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], v10);
      }

      CFDictionarySetValue(v23, *MEMORY[0x29EDBD108], v21);
      CFDictionarySetValue(a5, a1, v23);
      CFRelease(v23);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p\n", v25, 30, v26, "AVE_Prop_Add", 68, "pTmpDict != __null", a1, a2, a3, a4, a5);
          v27 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v27, 30, v30, "AVE_Prop_Add");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %p %d 0x%x %lld %p", v25, 30, v26, "AVE_Prop_Add");
        }
      }

      return 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v11 = AVE_Log_CheckConsole(0x1Eu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p\n", v12, 30, v13, "AVE_Prop_Add", 34, "pKey != __null && AVE_Prop_Type_None <= type && type < AVE_Prop_Type_Max && pDict != __null", a1, a2, a3, a4, a5);
      v14 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v14, 30, v28, "AVE_Prop_Add");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d 0x%x %lld %p", v12, 30, v13, "AVE_Prop_Add");
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_MakeDict(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFDictionary *a6)
{
  v12 = AVE_DevCap_Find(a3);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p\n", CurrTime, 30, LevelStr, "AVE_Prop_MakeDict", 110, "pDevCap != __null", a1, a2, a3, a4, a5, a6);
        v23 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", v23, 30, v30, "AVE_Prop_MakeDict", 110);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %d 0x%x %lld %p", CurrTime, 30, LevelStr, "AVE_Prop_MakeDict", 110);
      }
    }

    return 4294966294;
  }

  if (a2 < 1)
  {
    return 0;
  }

  v13 = v12;
  v14 = 0;
  v32 = a1;
  for (i = a1 + 4; ; i += 16)
  {
    v16 = i[1];
    if ((v16 & 0x40000) != 0 || (v16 & a4) != a4 || ((*(i + 1) >> *(v13 + 1)) & 1) == 0)
    {
      goto LABEL_12;
    }

    if (*i == 8)
    {
      break;
    }

    v18 = AVE_Prop_Add(*(i - 1), *i, v16, a5, a6);
LABEL_11:
    v19 = v18;
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_12:
    if (a2 == ++v14)
    {
      return 0;
    }
  }

  v17 = *(i + 2);
  if (v17)
  {
    v18 = v17(a3, a4, a5, a6);
    goto LABEL_11;
  }

  v19 = 4294966288;
LABEL_21:
  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v25 = AVE_Log_CheckConsole(0x1Eu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      v28 = a3;
      printf("%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d\n", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v32, a2, a3, a4, a5, v14, *(i - 2), *(i - 1), *i, i[1], *(i + 1), v19);
      v29 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d", v29, 30, v31, "AVE_Prop_MakeDict", 154, "ret == 0", v32, a2, v28, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to add property %p %d %d 0x%x %lld | %d %s %p %d 0x%x 0x%llx %d", v26, 30, v27, "AVE_Prop_MakeDict", 154, "ret == 0", v32, a2, a3, a4);
    }
  }

  return v19;
}

uint64_t AVE_Prop_FindPropertyEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, __CFString *a7)
{
  v12 = a2;
  v13 = a1;
  v42 = *MEMORY[0x29EDCA608];
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  if (!a1 || a2 < 1 || !a5 || !a7)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p\n", CurrTime, 30, LevelStr, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v13, v12, a5, a6, a3, a4, a7);
        CurrTime = AVE_GetCurrTime();
        v36 = a4;
        v37 = a7;
        v34 = a6;
        v35 = a3;
        v32 = v12;
        v33 = a5;
        v31 = v13;
        v30 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v36 = a4;
        v37 = a7;
        v34 = a6;
        v35 = a3;
        v32 = v12;
        v33 = a5;
        v31 = v13;
        v30 = LevelStr;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p", CurrTime, 30, v30, "AVE_Prop_FindPropertyEntry", 190, "pArray != __null && num > 0 && pINS != __null && pKey != __null", v31, v32, v33, v34, v35, v36, v37);
    }

    return 0;
  }

  Str = AVE_CFStr_GetStr(a7, v38, 0x40u);
  v15 = AVE_DevCap_Find(a3);
  if (!v15)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s\n", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null", v13, v12, a5, a6, a3, a4, Str);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v27, 30, v28, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %d %p %lld %d 0x%x %s", v25, 30, v26, "AVE_Prop_FindPropertyEntry", 196, "pDevCap != __null");
      }
    }

    return 0;
  }

  v16 = v15;
  v12 = v12;
  while (1)
  {
    if ((*(v13 + 24) >> *(v16 + 1)))
    {
      v17 = *(v13 + 20);
      v18 = a4 & 0xFFFCFFFF & ~v17;
      v19 = a4 & 0x30000 & v17;
      v20 = v18 || v19 == 0;
      if (!v20 && CFEqual(a7, *(v13 + 8)))
      {
        break;
      }
    }

    v13 += 64;
    if (!--v12)
    {
      return 0;
    }
  }

  return v13;
}

uint64_t AVE_Prop_SetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, __CFString *a7, const void *a8)
{
  v48 = *MEMORY[0x29EDCA608];
  v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  if (a1 && a2 >= 1 && a5 && a7)
  {
    PropertyEntry = AVE_Prop_FindPropertyEntry(a1, a2, a3, a4 | 0x20000, a5, a6, a7);
    if (PropertyEntry)
    {
      v17 = PropertyEntry;
      v18 = *(PropertyEntry + 40);
      if (v18)
      {
        v19 = v18(a5, PropertyEntry, a7, a8);
        if (v19 && AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v20 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            v23 = a3;
            printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d\n", CurrTime, 30, LevelStr, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3], v19);
            v24 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", v24, 30, v40, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, v23, a4);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx %d", CurrTime, 30, LevelStr, "AVE_Prop_SetProperty", 268, "ret == 0", a5, a6, a3, a4);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v33 = AVE_Log_CheckConsole(0x1Eu);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          if (v33)
          {
            v36 = a3;
            printf("%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx\n", v34, 30, v35, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3, a4, a7, a8, *v17, v17[1], *(v17 + 4), *(v17 + 5), v17[3]);
            v37 = AVE_GetCurrTime();
            v38 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v37, 30, v38, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, v36);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | set function is not supported %p %lld %d 0x%x %p %p | %s %p %d 0x%x 0x%llx", v34, 30, v35, "AVE_Prop_SetProperty", 260, "pEntry->Set != __null", a5, a6, a3);
          }
        }

        return 4294966294;
      }
    }

    else
    {
      Str = AVE_CFStr_GetStr(a7, v44, 0x40u);
      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v43 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(5);
        if (v30)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d\n", v43, 30, v31, a1, a2, a5, a6, a3, a4, Str, a8, -2002);
          v32 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v32, 30, v42, a1, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %s %p %d", v43, 30, v31, a1, a2);
        }
      }

      CFShow(a7);
      CFShow(a8);
      return 4294965294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v25 = AVE_Log_CheckConsole(0x1Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p\n", v26, 30, v27, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1, a2, a5, a6, a3, a4, a7, a8);
        v28 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v28, 30, v41, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p", v26, 30, v27, "AVE_Prop_SetProperty", 249, "pArray != __null && num > 0 && pINS != __null && pKey != __null", a1);
      }
    }

    return 4294966295;
  }

  return v19;
}

uint64_t AVE_Prop_GetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, __CFString *a8, const void *a9)
{
  v52 = *MEMORY[0x29EDCA608];
  v50 = 0u;
  v51 = 0u;
  *v48 = 0u;
  v49 = 0u;
  if (a1 && a2 >= 1 && a5 && a8 && a9)
  {
    PropertyEntry = AVE_Prop_FindPropertyEntry(a1, a2, a3, a4 | 0x10000, a5, a6, a8);
    if (PropertyEntry)
    {
      v18 = PropertyEntry;
      v19 = *(PropertyEntry + 48);
      if (v19)
      {
        v20 = v19(a5, PropertyEntry, a7, a8, a9);
        if (v20 && AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v21 = a7;
          v22 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d\n", CurrTime, 30, LevelStr, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3], v20);
            v24 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", v24, 30, v39, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx %d", CurrTime, 30, LevelStr, "AVE_Prop_GetProperty", 330, "ret == 0", a5, a6, a3, a4, v21);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v33 = a7;
          v34 = AVE_Log_CheckConsole(0x1Eu);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx\n", v35, 30, v36, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4, v33, a8, a9, *v18, v18[1], *(v18 + 4), *(v18 + 5), v18[3]);
            v37 = AVE_GetCurrTime();
            v42 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx", v37, 30, v42, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | get function is not supported %p %lld %d 0x%x %p %p %p | %s %p %d 0x%x 0x%llx", v35, 30, v36, "AVE_Prop_GetProperty", 322, "pEntry->Get != __null", a5, a6, a3, a4);
          }
        }

        return 4294966294;
      }
    }

    else
    {
      Str = AVE_CFStr_GetStr(a8, v48, 0x40u);
      if (AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v47 = a7;
        v31 = AVE_Log_CheckConsole(0x1Eu);
        v43 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(5);
        if (v31)
        {
          printf("%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d\n", v43, 30, v32, a1, a2, a5, a6, a3, a4, v47, Str, a9, -2002);
          v44 = AVE_GetCurrTime();
          v41 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v44, 30, v41, a1, a2, a5);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: property is not supported %p %d %p %lld %d 0x%x %p %s %p %d", v43, 30, v32, a1, a2, a5);
        }
      }

      CFShow(a8);
      CFShow(a9);
      return 4294965294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v25 = a6;
      v26 = a7;
      v27 = AVE_Log_CheckConsole(0x1Eu);
      v46 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p\n", v46, 30, v28, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2, a5, v25, a3, a4, v26, a8, a9);
        v29 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v29, 30, v40, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %lld %d 0x%x %p %p %p", v46, 30, v28, "AVE_Prop_GetProperty", 311, "pArray != __null && num > 0 && pINS != __null && pKey != __null && pValue != __null", a1, a2);
      }
    }

    return 4294966295;
  }

  return v20;
}

uint64_t *AVE_AlignMem(uint64_t *result, _DWORD *a2, int a3, int a4)
{
  v4 = (*result + a3 - 1) & -a3;
  *a2 = (*result + *a2 - v4) & -a4;
  *result = v4;
  return result;
}

_BYTE *AVE_MemCpyV2V(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    do
    {
      v3 = *a2++;
      *result++ = v3;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t AVE_ComposePosStr(const char *a1, int a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v7 = AVE_SNPrintf(a3, a4, " in %s", a1);
  v8 = v7;
  if (a2)
  {
    return AVE_SNPrintf(&a3[v7], v4 - v7, ":%d", a2) + v7;
  }

  return v8;
}

uint64_t AVE_Dump_FindFile(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96 * (a3 > 0) + 8 * a2 + 48);
  }
}

uint64_t AVE_Dump_Create(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = malloc_type_malloc(0xF0uLL, 0x1020040FC94C6CFuLL);
    if (v8)
    {
      v9 = 0;
      *(v8 + 29) = 0;
      *(v8 + 216) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 8) = 0u;
      *v8 = a1;
      *a2 = v8;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Du, 4))
      {
        v13 = AVE_Log_CheckConsole(0x3Du);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v16 = AVE_Log_CheckConsole(0x3Du);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t AVE_Dump_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_ComposeFilePath(uint64_t a1, unsigned int a2, int a3, const char *a4, char *a5, int a6)
{
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  v12 = AVE_SNPrintf(v22, 128, "%lld-%s-%dx%d-%s-%d", *a1, *(&gc_piaAVE_ClientType + *(a1 + 16)), *(a1 + 24), *(a1 + 28), gc_piaAVE_ChromaFmt[*(a1 + 32)], *(a1 + 36));
  v13 = v12;
  if ((a3 & 0x80000000) == 0)
  {
    v13 = AVE_SNPrintf(&v22[v12], 128 - v12, "-MP%d", a3) + v12;
  }

  if (*(a1 + 16) == 1)
  {
    v13 += AVE_SNPrintf(&v22[v13], 128 - v13, "-%s-%d", *(&gc_piaAVE_EncType + *(a1 + 20)), *(a1 + 44));
  }

  v14 = pthread_self();
  v15 = rand();
  v16 = &gsc_saAVE_DumpInfo[12 * a2];
  v17 = AVE_SNPrintf(&v22[v13], 128 - v13, "-%lu-%d-%s", v14, v15 % 10000, *v16);
  if (a2 == 1)
  {
    v18 = *(a1 + 16);
    if (v18 == 1)
    {
      v19 = &v16[*(a1 + 20)];
    }

    else
    {
      v19 = &v16[v18 + 2];
    }

    goto LABEL_12;
  }

  if (((*(a1 + 12) >> a2) & 1) == 0 || (v20 = v16[2]) == 0)
  {
    v19 = (v16 + 1);
LABEL_12:
    v20 = *v19;
  }

  AVE_SNPrintf(&v22[v13 + v17], 128 - (v13 + v17), ".%s", v20);
  return AVE_ComposeFilePath(a4, 0, v22, a5, a6);
}

uint64_t AVE_Dump_OpenFiles(_DWORD *a1, const char *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *__filename = 0u;
  v29 = 0u;
  if (a1[10] >= 1)
  {
    v2 = a2;
    v4 = 0;
    v27 = 0;
    for (i = a1 + 12; ; i += 24)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if ((a1[2] & (1 << v7)) != 0 && !*&i[2 * v7])
        {
          if (a1[10] <= 1)
          {
            v8 = -1;
          }

          else
          {
            v8 = v4;
          }

          v27 = AVE_Dump_ComposeFilePath(a1, v7, v8, v2, __filename, 256);
          v9 = (a1[3] & (1 << v7)) != 0 && v6 == 36;
          v10 = 8;
          if (v9)
          {
            v10 = 9;
          }

          v11 = (&gsc_saAVE_DumpInfo[v6])[v10];
          v12 = fopen(__filename, v11);
          *&i[2 * v7] = v12;
          if (v12)
          {
            if (!AVE_Log_CheckLevel(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v13 = AVE_Log_CheckConsole(0x3Du);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(6);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", CurrTime, 61, LevelStr, "AVE_Dump_OpenFiles", 262, a1, *a1, v4, v7, __filename, v11);
              v16 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(6);
              v22 = v16;
            }

            else
            {
              v24 = LevelStr;
              v22 = CurrTime;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v22, 61, v24, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!AVE_Log_CheckLevel(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v17 = AVE_Log_CheckConsole(0x3Du);
            v18 = AVE_GetCurrTime();
            v19 = AVE_Log_GetLevelStr(4);
            if (v17)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v18, 61, v19, "AVE_Dump_OpenFiles", 257, a1, *a1, v4, v7, __filename, v11);
              v20 = AVE_GetCurrTime();
              v25 = AVE_Log_GetLevelStr(4);
              v23 = v20;
            }

            else
            {
              v25 = v19;
              v23 = v18;
            }

            syslog(3, "%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s", v23, 61, v25, "AVE_Dump_OpenFiles");
          }

          v2 = a2;
        }

LABEL_26:
        ++v7;
        v6 += 12;
      }

      while (v6 != 144);
      if (++v4 >= a1[10])
      {
        return v27;
      }
    }
  }

  return 0;
}

uint64_t AVE_Dump_WriteHeader(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 48;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = v4 + 96 * v2;
    v9 = -2;
    do
    {
      if (*(v8 + v6))
      {
        v10 = v9 > 8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && ((0x1C1u >> v9) & 1) != 0)
      {
        if (fprintf(*(v8 + v6), off_29EDD0348[v9]) <= 0)
        {
          result = 4294965296;
        }

        else
        {
          result = 0;
        }
      }

      v6 += 8;
      ++v9;
    }

    while (v6 != 96);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t AVE_Dump_Init(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, void *a7, int a8, int a9, int a10, int a11)
{
  v11 = a8;
  v16 = a10;
  v17 = a11;
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v18 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", CurrTime, 61, LevelStr, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v40 = AVE_GetCurrTime();
      v11 = a8;
      v37 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v40, 61, v37, "AVE_Dump_Init", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", CurrTime, 61, LevelStr, "AVE_Dump_Init", a1);
    }
  }

  if (a1 && a7)
  {
    *(a1 + 8) = a5;
    *(a1 + 12) = a6;
    *(a1 + 16) = a3;
    *(a1 + 20) = a4;
    *(a1 + 24) = *a7;
    *(a1 + 32) = a9;
    *(a1 + 36) = a10;
    *(a1 + 40) = v11;
    *(a1 + 44) = a11;
    v21 = AVE_Dump_OpenFiles(a1, a2);
    if (!v21)
    {
      AVE_Dump_WriteHeader(a1);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (AVE_Log_CheckLevel(0x3Du, 4))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v23, 61, v24, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1, a2, a3, a4, a5, a6, a7, v11, a9, a10, a11);
      v39 = AVE_GetCurrTime();
      v11 = a8;
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v39, 61, v38, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v23, 61, v24, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }
  }

  v21 = 4294966295;
  if (a1)
  {
LABEL_14:
    v25 = 0;
    v26 = 1;
    do
    {
      v27 = 0;
      v28 = v26;
      v29 = a1 + 48 + 96 * v25;
      do
      {
        v30 = *(v29 + v27);
        if (v30)
        {
          fclose(v30);
          *(v29 + v27) = 0;
        }

        v27 += 8;
      }

      while (v27 != 96);
      v26 = 0;
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    v16 = a10;
    v17 = a11;
    v11 = a8;
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v31 = AVE_Log_CheckConsole(0x3Du);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d\n", v32, 61, v33, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, v11, a9, v16, v17, v21);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v34, 61, v35, "AVE_Dump_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v32, 61, v33, "AVE_Dump_Init", a1, a2);
    }
  }

  return v21;
}

uint64_t AVE_Dump_Uninit(char *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Uninit", a1);
      v5 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v17, "AVE_Dump_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = &a1[96 * v6 + 48];
      do
      {
        v11 = *&v10[v8];
        if (v11)
        {
          fclose(v11);
          *&v10[v8] = 0;
        }

        v8 += 8;
      }

      while (v8 != 96);
      v7 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v12 = AVE_Log_CheckConsole(0x3Du);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
      v15 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 61, v18, "AVE_Dump_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_WriteInput(_DWORD *a1, int a2, __CVBuffer *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteInput", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = *&a1[24 * (a2 > 0) + 12];
    if (v9)
    {
      if (a3)
      {
        v10 = AVE_PixelBuf_Dump(a3, a1[3] & 1, v9);
      }

      else
      {
        v10 = 4294966287;
      }
    }

    else
    {
      v10 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Du);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v15 = AVE_Log_CheckConsole(0x3Du);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t AVE_Dump_WriteOutput(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 7];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteISPMetadata(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 8];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%5d, %4.6f, %4.6f, %4.6f, %f, %f, %d, %d, %d\n", a3, *a4, a4[1], a4[2], a4[3], a4[4], *(a4 + 16), *(a4 + 17), *(a4 + 18)) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteISPMetadata", 668, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteMBStats(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 9];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteHwEventTrace(void *a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 14];
    if (v9)
    {
      if (a3)
      {
        if (*a3 < 2)
        {
          v13 = 0;
        }

        else
        {
          v10 = a3 + 19;
          v11 = 1;
          do
          {
            v12 = fprintf(v9, "%6d, %d, %d, %d, %8lld, 0x%x, 0x%x, 0x%x, 0x%x\n", v11++, *(v10 - 8), *(v10 - 9), *(v10 - 7), *(v10 - 5), *(v10 - 3), *(v10 - 2), *(v10 - 1), *v10);
            v10 += 10;
          }

          while (v11 < *a3);
          if (v12 <= 0)
          {
            v13 = 4294965296;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 4294966287;
      }
    }

    else
    {
      v13 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v14 = AVE_Log_CheckConsole(0x3Du);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v18 = AVE_Log_CheckConsole(0x3Du);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t AVE_Dump_WriteVQMetrics(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 15];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[3], a4[4], a4[5], *a4, a4[1], a4[2]) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteFPS(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 16];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[2], a4[1], *a4, a4[5], a4[4], a4[3], a4[8], a4[7], a4[6]) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteRecon(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteRecon", a1, a2);
      v7 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 61, v17, "AVE_Dump_WriteRecon", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 61, LevelStr, "AVE_Dump_WriteRecon", a1, a2);
    }
  }

  if (a1)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      if (a2)
      {
        v9 = AVE_PixelBuf_Dump(a2, (*(a1 + 12) >> 11) & 1, v8);
      }

      else
      {
        v9 = 4294966287;
      }
    }

    else
    {
      v9 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v11, 61, v12, "AVE_Dump_WriteRecon", 907, "pDump != __null", 0, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v13 = AVE_Log_CheckConsole(0x3Du);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 61, v15, "AVE_Dump_WriteRecon", a1, a2, v9);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v9;
}

uint64_t AVE_Enc_CheckResolution(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  Resolution = AVE_DevCap_FindResolution(a1, a2, a3);
  if (!Resolution)
  {
    return 4294966294;
  }

  v10 = *Resolution;
  if (v10 < 1)
  {
    v14 = 4294966294;
  }

  else
  {
    v11 = Resolution + 3;
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

  v15 = Resolution[13];
  if (v15 < 1)
  {
    return 4294966294;
  }

  for (i = Resolution + 16; ; i += 3)
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

uint64_t AVE_Enc_GenerateSliceMap(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5)
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

int *AVE_Enc_GetMinResolution(int a1, int a2, int a3)
{
  result = AVE_DevCap_FindResolution(a1, a2, a3);
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

uint64_t AVE_Enc_AlignDimension(int a1, int a2, int a3, signed int *a4, signed int *a5)
{
  Resolution = AVE_DevCap_FindResolution(a1, a2, a3);
  if (!Resolution)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v15 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d\n", CurrTime, 3, LevelStr, "AVE_Enc_AlignDimension", 408, "pRes != __null", a1, a2, a3);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get resolution capabilities %d %d %d", CurrTime, 3);
    }

    return 4294966296;
  }

  v11 = *Resolution;
  if (*Resolution <= 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v18 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d\n", v19, 3, v20, "AVE_Enc_AlignDimension", 413, "num >= 1", a1, a2, a3, v11);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v21, 3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | No valid entries for Min resolution %d %d %d %d", v19, 3);
      }
    }

    return 4294966296;
  }

  v13 = Resolution[2];
  v12 = Resolution[3];
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

uint64_t AVE_FrameStats_PrintStatFrame(_DWORD *a1, const void *a2, FILE *a3)
{
  v19 = 0;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 46, LevelStr, "AVE_FrameStats_PrintStatFrame", a2, a1, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x2Eu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameStats_PrintStatFrame", 265, "(psFrame != __null) && (psMgr != __null)", a2, a1, a3);
        v12 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 46, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 46, v11);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x74u, 7))
  {
    v14 = AVE_Log_CheckConsole(0x74u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 116, v16, "AVE_FrameStats_PrintStatFrame", a2, a1, a3, v13);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 116);
  }

  return v13;
}

uint64_t AVE_ImgBuf_VerifyUncompressed(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", CurrTime);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = AVE_GetCurrTime();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = AVE_Log_GetLevelStr(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v52 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t AVE_ImgBuf_VerifyHTPC(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v22 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v22)
    {
      v25 = 186;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyHTPC", 186, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
LABEL_20:
      CurrTime = AVE_GetCurrTime();
      v63 = v5;
      v61 = v25;
      v59 = AVE_Log_GetLevelStr(4);
LABEL_27:
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", CurrTime, 3, v59, "AVE_ImgBuf_VerifyHTPC", v61, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v63);
      goto LABEL_49;
    }

    v63 = v5;
    v30 = 186;
LABEL_26:
    v61 = v30;
    v59 = LevelStr;
    goto LABEL_27;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v26 = AVE_Log_CheckConsole(3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v28, "AVE_ImgBuf_VerifyHTPC", 190, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_24:
      v29 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v29);
      goto LABEL_49;
    }

LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v27);
    goto LABEL_49;
  }

  BytesPerCompressedTileHeaderOfPlane = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v13 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v14 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v15 = (v13 & 0xF) == 0;
  v16 = v13 >> 4;
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if ((v14 & 7) != 0)
  {
    v18 = (v14 >> 3) + 1;
  }

  else
  {
    v18 = v14 >> 3;
  }

  if (v17 != WidthInCompressedTilesOfPlane || v18 != HeightInCompressedTilesOfPlane)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v31 = AVE_Log_CheckConsole(3u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v33, "AVE_ImgBuf_VerifyHTPC", 214, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v17, v18);
      v34 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v34, 3);
      goto LABEL_49;
    }

LABEL_48:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v32, 3);
    goto LABEL_49;
  }

  if ((WidthInCompressedTilesOfPlane * BytesPerCompressedTileHeaderOfPlane * HeightInCompressedTilesOfPlane) + v5 > v7)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v19 = AVE_Log_CheckConsole(3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 218, "dataBaseAddr >= (baseAddr + width * height * size)", v7, v5, WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, BytesPerCompressedTileHeaderOfPlane);
        v20 = AVE_GetCurrTime();
        v66 = HeightInCompressedTilesOfPlane;
        v67 = BytesPerCompressedTileHeaderOfPlane;
        v64 = v5;
        v65 = WidthInCompressedTilesOfPlane;
        v62 = v7;
        v60 = 218;
        v58 = AVE_Log_GetLevelStr(4);
LABEL_57:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d", v20, 3, v58, "AVE_ImgBuf_VerifyHTPC", v60, "dataBaseAddr >= (baseAddr + width * height * size)", v62, v64, v65, v66, v67);
        goto LABEL_49;
      }

      v66 = HeightInCompressedTilesOfPlane;
      v67 = BytesPerCompressedTileHeaderOfPlane;
      v64 = v5;
      v65 = WidthInCompressedTilesOfPlane;
      v62 = v7;
      v52 = 218;
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (!a2[3])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_50;
  }

  v35 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = v35;
  if (!v35 || (v35 & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v51 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v51)
    {
      v25 = 227;
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyHTPC", 227, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v5);
      goto LABEL_20;
    }

    v63 = v5;
    v30 = 227;
    goto LABEL_26;
  }

  v36 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v37 = v36;
  if (!v36 || (v36 & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v53 = AVE_Log_CheckConsole(3u);
    v27 = AVE_GetCurrTime();
    v54 = AVE_Log_GetLevelStr(4);
    if (v53)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v27, 3, v54, "AVE_ImgBuf_VerifyHTPC", 231, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v37);
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v38 = IOSurfaceGetBytesPerCompressedTileHeaderOfPlane();
  v39 = IOSurfaceGetWidthInCompressedTilesOfPlane();
  v40 = IOSurfaceGetHeightInCompressedTilesOfPlane();
  v41 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v42 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v43 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v41 + (extraColumnsOnRight >> (a2[4] >> 1));
  v44 = (extraRowsOnTop >> (a2[5] >> 1)) + v42 + (extraRowsOnBottom >> (a2[5] >> 1));
  v15 = (v43 & 7) == 0;
  v45 = v43 >> 3;
  if (v15)
  {
    v46 = v45;
  }

  else
  {
    v46 = v45 + 1;
  }

  if ((v44 & 7) != 0)
  {
    v47 = (v44 >> 3) + 1;
  }

  else
  {
    v47 = v44 >> 3;
  }

  if (v46 != v39)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_49;
    }

    v55 = AVE_Log_CheckConsole(3u);
    v32 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(4);
    if (v55)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v32, 3, v56, "AVE_ImgBuf_VerifyHTPC", 261, "width == neededWidth", v39, v40, v46, v47);
      v57 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v57, 3);
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((v39 * v38 * v40) + v5 <= v37)
  {
    goto LABEL_51;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v48 = AVE_Log_CheckConsole(3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    if (v48)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address/size 0x%lx 0x%lx %d %d %d\n", v20, 3, v21, "AVE_ImgBuf_VerifyHTPC", 266, "dataBaseAddr >= (baseAddr + width * height * size)", v37, v5, v39, v40, v38);
      v20 = AVE_GetCurrTime();
      v66 = v40;
      v67 = v38;
      v64 = v5;
      v65 = v39;
      v62 = v37;
      v60 = 266;
      v58 = AVE_Log_GetLevelStr(4);
      goto LABEL_57;
    }

    v66 = v40;
    v67 = v38;
    v64 = v5;
    v65 = v39;
    v62 = v37;
    v52 = 266;
LABEL_56:
    v60 = v52;
    v58 = v21;
    goto LABEL_57;
  }

LABEL_49:
  v49 = 4294954394;
LABEL_50:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v49;
}

uint64_t AVE_ImgBuf_VerifyInterchange(__CVBuffer *a1, _DWORD *a2)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetIOSurface(a1);
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
  v5 = BaseAddressOfCompressedTileHeaderRegionOfPlane;
  if (!BaseAddressOfCompressedTileHeaderRegionOfPlane || (BaseAddressOfCompressedTileHeaderRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_44;
    }

    v32 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyInterchange", 308, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v5);
LABEL_29:
      v35 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", v35);
      goto LABEL_44;
    }

LABEL_34:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx", CurrTime);
    goto LABEL_44;
  }

  BaseAddressOfCompressedTileDataRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
  v7 = BaseAddressOfCompressedTileDataRegionOfPlane;
  if (!BaseAddressOfCompressedTileDataRegionOfPlane || (BaseAddressOfCompressedTileDataRegionOfPlane & 0x3F) != 0)
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_44;
    }

    v36 = AVE_Log_CheckConsole(3u);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v38, "AVE_ImgBuf_VerifyInterchange", 312, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v7);
LABEL_33:
      v39 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v39);
      goto LABEL_44;
    }

LABEL_39:
    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx", v37);
    goto LABEL_44;
  }

  WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
  HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v12 = extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight;
  v13 = extraRowsOnTop + HeightOfPlane + extraRowsOnBottom;
  v14 = (v12 & 0x1F) == 0;
  v15 = v12 >> 5;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if ((v13 & 0x1F) != 0)
  {
    v17 = (v13 >> 5) + 1;
  }

  else
  {
    v17 = v13 >> 5;
  }

  if (v16 != WidthInCompressedTilesOfPlane || v17 != HeightInCompressedTilesOfPlane)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v40 = AVE_Log_CheckConsole(3u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.\n", v41, 3, v42, "AVE_ImgBuf_VerifyInterchange", 332, "width == neededWidth && height == neededHeight", WidthInCompressedTilesOfPlane, HeightInCompressedTilesOfPlane, v16, v17);
        v41 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Luma buffer dimension %d %d %d %d.", v41, 3);
    }

    goto LABEL_44;
  }

  if (a2[3])
  {
    v18 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
    v19 = v18;
    if (v18 && (v18 & 0x3F) == 0)
    {
      v20 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane();
      v21 = v20;
      if (v20 && (v20 & 0x3F) == 0)
      {
        v22 = IOSurfaceGetWidthInCompressedTilesOfPlane();
        v23 = IOSurfaceGetHeightInCompressedTilesOfPlane();
        v24 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
        v25 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v26 = (extraColumnsOnLeft >> (a2[4] >> 1)) + v24 + (extraColumnsOnRight >> (a2[4] >> 1));
        v27 = (extraRowsOnTop >> (a2[5] >> 1)) + v25 + (extraRowsOnBottom >> (a2[5] >> 1));
        v14 = (v26 & 0xF) == 0;
        v28 = v26 >> 4;
        if (v14)
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 + 1;
        }

        if ((v27 & 0xF) != 0)
        {
          v30 = (v27 >> 4) + 1;
        }

        else
        {
          v30 = v27 >> 4;
        }

        if (v29 == v22)
        {
          goto LABEL_25;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v48 = AVE_Log_CheckConsole(3u);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(4);
          if (v48)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d\n", v49, 3, v50, "AVE_ImgBuf_VerifyInterchange", 371, "width == neededWidth", v22, v23, v29, v30);
            v49 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid Chroma buffer dimension %d %d %d %d", v49, 3);
        }

LABEL_44:
        v31 = 4294954394;
        goto LABEL_45;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_44;
      }

      v46 = AVE_Log_CheckConsole(3u);
      v37 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (v46)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer data base address 0x%lx\n", v37, 3, v47, "AVE_ImgBuf_VerifyInterchange", 345, "dataBaseAddr != 0 && (dataBaseAddr & 0x3F) == 0", v21);
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_44;
    }

    v43 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(4);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer header base address 0x%lx\n", CurrTime, 3, v44, "AVE_ImgBuf_VerifyInterchange", 341, "hdrBaseAddr != 0 && (hdrBaseAddr & 0x3F) == 0", v19);
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_25:
  v31 = 0;
LABEL_45:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v31;
}

uint64_t AVE_VerifyImageBuffer(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v14 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_42;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = AVE_PixelFmt_FindByType(PixelFormatType);
  if (!v7)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v18, 3, v19, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v18);
    }

    goto LABEL_42;
  }

  v8 = v7;
  v9 = AVE_EdgeReplication_DetermineMode(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v10 = AVE_Log_CheckConsole(0x12u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v13 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v13, 18, v84);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
    }
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v20 = AVE_Log_CheckConsole(0x12u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v20)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v21, 18, v22, WidthOfPlane, HeightOfPlane);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      v27 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v87 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v25, 18, v26, v27, v87);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v21, 18, v22, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    AVE_ImgBuf_Verify(*a2, a1[2], a1[3], a1[4], a1[5], *a1, a1[1], *(a1 + 147));
  }

  v28 = *a3;
  if (!*a3)
  {
    v35 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v36 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v37 = AVE_PixelBuf_CreatePool(a1[2], a1[3], a1[4], a1[5], v35, v36, *a1, a1[1], PixelFormatType, &poolOut);
    if (v37)
    {
      v38 = v37;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v39 = AVE_Log_CheckConsole(3u);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        if (!v39)
        {
          v89 = v38;
          v88 = 511;
          v86 = v41;
          v83 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_74;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v40, 3, v41, "AVE_VerifyImageBuffer", 511, "rc == noErr", v38);
        v42 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v42);
      }

LABEL_43:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_47;
    }

    v28 = *a3;
  }

  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = poolOut;
  }

  v30 = CVPixelBufferPoolCreatePixelBuffer(0, v29, &pixelBufferOut);
  if (v30)
  {
    v31 = v30;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v33, 3, v34, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v31);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v33);
    }

LABEL_42:
    v38 = 4294954394;
    goto LABEL_43;
  }

  v43 = AVE_PixelBuf_Copy(*a2, pixelBufferOut);
  if (v43)
  {
    v38 = v43;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v44 = AVE_Log_CheckConsole(3u);
      v40 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      if (v44)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v40, 3, v45, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v38);
        v46 = AVE_GetCurrTime();
        v85 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v46, 3, v85);
        goto LABEL_43;
      }

      v90 = pixelBufferOut;
      v91 = v38;
      v89 = *a2;
      v88 = 521;
      v86 = v45;
      v83 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_74:
      syslog(3, v83, v40, 3, v86, "AVE_VerifyImageBuffer", v88, "rc == noErr", v89, v90, v91);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  CVPixelBufferRelease(*a2);
  v48 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v49 = v9 & 2;
  AVE_EdgeReplication_Fill(v48, v9, v8);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v50 = AVE_Log_CheckConsole(0x12u);
    v94 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(7);
    v52 = a1[1];
    v92 = *a1;
    v53 = a1[2];
    v54 = a1[3];
    v55 = a1[4];
    v56 = a1[5];
    v57 = a1[6];
    if (v50)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v94, 18, v51, "AVE_VerifyImageBuffer", 541, v92, v52, v53, v54, v55, v56, v57, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v95 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v95, 18, v93, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v94, 18, v51, "AVE_VerifyImageBuffer", 541, v92, v52, v53, v54, v55, v56, v57);
    }

    v49 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v58 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v59 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v60 = extraColumnsOnLeft;
  v61 = extraColumnsOnRight;
  v62 = extraColumnsOnLeft + extraColumnsOnRight + v58;
  v63 = extraRowsOnTop;
  v64 = extraRowsOnBottom;
  v65 = extraRowsOnTop + extraRowsOnBottom + v59;
  v66 = *(v8 + 28);
  v67 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v67;
  *(a1 + 22) = v66;
  a1[26] = v62;
  a1[27] = v65;
  a1[32] = v60;
  a1[33] = v61;
  a1[34] = v63;
  a1[35] = v64;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v69 = BytesPerRowOfPlane;
  }

  else
  {
    v69 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v69;
  v70 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v70 = 1;
  }

  *(a1 + 146) = v70;
  *(a1 + 144) = v49 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v71 = 0;
  }

  else
  {
    v71 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v71 |= 0xAu;
  }

  *(a1 + 145) = v71;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v72 = AVE_Log_CheckConsole(0x12u);
    v96 = AVE_GetCurrTime();
    v73 = AVE_Log_GetLevelStr(7);
    v74 = *a1;
    v75 = a1[1];
    v76 = a1[2];
    v77 = a1[3];
    v78 = a1[4];
    v79 = a1[5];
    v80 = a1[6];
    if (v72)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v96, 18, v73, "AVE_VerifyImageBuffer", 616, v74, v75, v76, v77, v78, v79, v80, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v81 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v81, 18, v82, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v96, 18, v73, "AVE_VerifyImageBuffer", 616, v74, v75, v76, v77, v78, v79, v80);
    }
  }

  v38 = 0;
LABEL_47:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v38;
}

uint64_t AVE_UpdatePixelBufferDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, uint64_t a11, uint64_t a12)
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  v33 = *MEMORY[0x29EDCA608];
  memset(v32, 0, sizeof(v32));
  cf = 0;
  if (a10 <= 0)
  {
    AttrDict = AVE_PixelBuf_CreateAttrDict(a1, a2, a3, a4, a5, a6, a7, a8, a11, SHIDWORD(a11), v32, &cf);
    if (AttrDict)
    {
      v19 = AttrDict;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_20;
      }

      v24 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x\n", CurrTime, 3, LevelStr, "AVE_UpdatePixelBufferDict", 690, "ret == 0", v17, v16, v15, v14, v13, v12, a11, v19);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
      }

      goto LABEL_10;
    }
  }

  else
  {
    AttrDictFromProfile = AVE_PixelBuf_CreateAttrDictFromProfile(a1, a2, a3, a4, a10, a5, a6, a7, a8, a9, a11, SHIDWORD(a11), v32, &cf);
    if (AttrDictFromProfile)
    {
      v19 = AttrDictFromProfile;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_20;
      }

      v20 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x\n", CurrTime, 3, LevelStr, "AVE_UpdatePixelBufferDict", 701, "ret == 0", v17, v16, v15, v14, v13, v12, a11, v19);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
      }

LABEL_10:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %d %d 0x%x %d %d %dx%d 0x%x", CurrTime, 3, LevelStr, "AVE_UpdatePixelBufferDict");
      goto LABEL_20;
    }
  }

  if (a12 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = VTEncoderSessionSetPixelBufferAttributes();
    if (v19)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v25 = AVE_Log_CheckConsole(3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x\n", v26, 3, v27, "AVE_UpdatePixelBufferDict", 710, "res == noErr", v17, v16, v15, v14, v13, v12, a11, v19, 0);
          v28 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x", v28, 3, v30, "AVE_UpdatePixelBufferDict", 710);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer attribute %d %d 0x%x %d %d %d 0x%x %d 0x%x", v26, 3, v27, "AVE_UpdatePixelBufferDict", 710);
        }
      }

      v19 = 4294966296;
    }
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t AVE_ImageBuf_Transfer(int *a1, CVPixelBufferRef *a2, CVPixelBufferPoolRef *a3, uint64_t a4)
{
  pixelBufferOut = 0;
  CVPixelBufferRetain(*a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v10 = *a3;
  if (*a3)
  {
LABEL_2:
    v11 = CVPixelBufferPoolCreatePixelBuffer(0, v10, &pixelBufferOut);
    if (v11)
    {
      v12 = v11;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v13 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d\n", CurrTime, 3, LevelStr, "AVE_ImageBuf_Transfer", 758, "err == kCVReturnSuccess", v12);
          CurrTime = AVE_GetCurrTime();
          v26 = "err == kCVReturnSuccess";
          v27 = v12;
          v25 = 758;
          v24 = AVE_Log_GetLevelStr(4);
        }

        else
        {
          v27 = v12;
          v25 = 758;
          v26 = "err == kCVReturnSuccess";
          v24 = LevelStr;
        }

        v16 = "%lld %d AVE %s: %s:%d %s | failed to crete pixel buffer from a pool %d";
LABEL_20:
        syslog(3, v16, CurrTime, 3, v24, "AVE_ImageBuf_Transfer", v25, v26, v27);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = AVE_PixelBuf_Transfer(*a2, pixelBufferOut);
      if (!v12)
      {
        CVPixelBufferRelease(*a2);
        *a2 = pixelBufferOut;
        return v12;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v20 = AVE_Log_CheckConsole(3u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v21, 3, v22, "AVE_ImageBuf_Transfer", 763, "err == noErr", *a2, a1[15], a4, v12);
      }
    }

    goto LABEL_22;
  }

  Pool = AVE_PixelBuf_CreatePool(a1[2], a1[3], a1[4], a1[5], WidthOfPlane, HeightOfPlane, *a1, a1[1], a4, a3);
  if (!Pool)
  {
    v10 = *a3;
    goto LABEL_2;
  }

  v12 = Pool;
  if (AVE_Log_CheckLevel(3u, 4))
  {
    v18 = AVE_Log_CheckConsole(3u);
    CurrTime = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d\n", CurrTime, 3, v19, "AVE_ImageBuf_Transfer", 751, "err == noErr", v12);
      CurrTime = AVE_GetCurrTime();
      v26 = "err == noErr";
      v27 = v12;
      v25 = 751;
      v24 = AVE_Log_GetLevelStr(4);
    }

    else
    {
      v27 = v12;
      v25 = 751;
      v26 = "err == noErr";
      v24 = v19;
    }

    v16 = "%lld %d AVE %s: %s:%d %s | failed to create a buffer pool %d";
    goto LABEL_20;
  }

LABEL_22:
  CVPixelBufferRelease(*a2);
  if (pixelBufferOut)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v12;
}

uint64_t AVE_HEVC_SetQuality(uint64_t a1, double a2)
{
  v4 = (a1 + 10784);
  v5 = (a2 * 100.0 + 0.5);
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", CurrTime, 30, LevelStr, "AVE_HEVC_SetQuality", a2, a1);
      v9 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v9, 30, v18, "AVE_HEVC_SetQuality", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", CurrTime, 30, LevelStr, "AVE_HEVC_SetQuality", a2, a1);
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
      v13 = Quality2QPHEVC[v5];
      goto LABEL_17;
    }

    v11 = Quality2QPHEIF[v5];
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
    v11 = Quality2QPHEIF10Bit[v5];
    goto LABEL_16;
  }

  v13 = Quality2QPHEVC10Bit[v5];
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
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v14 = AVE_Log_CheckConsole(0x1Eu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v15, 30, v16, "AVE_HEVC_SetQuality", a2, a1, v12);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v12;
}

uint64_t AVE_HEVC_SetCQFactor(uint64_t a1, double a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %f %p\n", CurrTime, 12, LevelStr, "AVE_HEVC_SetCQFactor", a2, a1);
      v7 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", v7, 12, v18, "AVE_HEVC_SetCQFactor", a2, a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %f %p", CurrTime, 12, LevelStr, "AVE_HEVC_SetCQFactor", a2, a1);
    }
  }

  if ((*(a1 + 1123) & 0x80) != 0 && *(a1 + 10752) != 2 && (*(a1 + 10784) != 1 || (v12 = *(a1 + 1132), v12 == 8) || v12 == 6))
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v15 = AVE_Log_CheckConsole(0xCu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %f [0.0, 1.0]\n", v16, 12, v17, "AVE_HEVC_SetCQFactor", 243, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2);
          v16 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Exit %f %p %d\n", v10, 12, v11, "AVE_HEVC_SetCQFactor", a2, a1, v8);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %f %p %d");
  }

  return v8;
}

uint64_t AVE_Session_HEVC_SetProperty(const void *a1, __CFString *a2, const void *a3)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v6 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_SetProperty", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2)
  {
    v9 = AVE_Prop_HEVC_SetProperty(a1, a2, a3);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v10 = AVE_Log_CheckConsole(0xCu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 12, v12, "AVE_Session_HEVC_SetProperty", 272, "pINS != __null && pKey != __null", a1, a2, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 12, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 12, v12);
      }
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v15, 12, v16, "AVE_Session_HEVC_SetProperty", a1, a2, a3, v9);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v15, 12);
  }

  return v9;
}

uint64_t AVE_Session_HEVC_CreatePropertyDict(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v38 = 0uLL;
  v39 = 0;
  v2 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v3 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_CreatePropertyDict", a1);
      v6 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v6, 12, v34, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_CreatePropertyDict", a1);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v16 = AVE_Log_CheckConsole(0xCu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v17, 12, v18, "AVE_Session_HEVC_CreatePropertyDict", 294, "pINS != __null", 0);
        v17 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v17);
    }

    v15 = 4294966295;
    goto LABEL_37;
  }

  v7 = 0;
  v8 = MEMORY[0x29EDB9010];
  v9 = MEMORY[0x29EDB9020];
  while (1)
  {
    if (v7 == 1)
    {
      v10 = 256;
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v10 = 512;
    }

    v11 = v2[396] ? 1 : 2;
    v12 = v11 | v10;
    Mutable = CFDictionaryCreateMutable(0, 0, v8, v9);
    *(&v38 + v7) = Mutable;
    if (!Mutable)
    {
      break;
    }

    Dict = AVE_Prop_HEVC_MakeDict(*(a1 + 68), v12, *(a1 + 56), Mutable);
    if (Dict)
    {
      v15 = Dict;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v23 = AVE_Log_CheckConsole(0xCu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d\n", v24, 12, v25, "AVE_Session_HEVC_CreatePropertyDict", 329, "ret == 0", a1, *(a1 + 56), v12, *(a1 + 68), v15);
          v26 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v26, 12, v36, "AVE_Session_HEVC_CreatePropertyDict");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %p %lld 0x%x %d %d", v24, 12, v25, "AVE_Session_HEVC_CreatePropertyDict");
        }
      }

      goto LABEL_33;
    }

LABEL_16:
    if (++v7 == 3)
    {
      v15 = 0;
      *(a1 + 80) = v38;
      *(a1 + 96) = v39;
      goto LABEL_37;
    }
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v20, 12, v21, "AVE_Session_HEVC_CreatePropertyDict", 324, "paDict[i] != __null", a1, *(a1 + 56), v12, *(a1 + 68), 0);
      v22 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v22, 12, v35, "AVE_Session_HEVC_CreatePropertyDict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v20, 12, v21, "AVE_Session_HEVC_CreatePropertyDict");
    }
  }

  v15 = 4294966293;
LABEL_33:
  for (i = 0; i != 24; i += 8)
  {
    v28 = *(&v38 + i);
    if (v28)
    {
      CFRelease(v28);
      *(&v38 + i) = 0;
    }
  }

LABEL_37:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v29 = AVE_Log_CheckConsole(0xCu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v30, 12, v31, "AVE_Session_HEVC_CreatePropertyDict", a1, v15);
      v32 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v32, 12, v37, "AVE_Session_HEVC_CreatePropertyDict", a1, v15);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v30, 12, v31, "AVE_Session_HEVC_CreatePropertyDict", a1, v15);
    }
  }

  return v15;
}

uint64_t AVE_Session_HEVC_Stop(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Stop", a1);
      v5 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v19, "AVE_Session_HEVC_Stop", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Stop", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 4u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v21 = AVE_GetCurrTime();
      v8 = AVE_USL_Drv_Complete(*(a1 + 120), &v21);
    }

    else
    {
      v8 = 0;
    }

    v12 = *(a1 + 104712);
    v13 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v12, 4u, v13);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v9 = AVE_Log_CheckConsole(0xCu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v10, 12, v11, "AVE_Session_HEVC_Stop", 366, "pINS != __null", 0);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v10);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
      v17 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v17, 12, v20, "AVE_Session_HEVC_Stop", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 12, v16, "AVE_Session_HEVC_Stop", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_Session_HEVC_Destroy(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 12, v42, "AVE_Session_HEVC_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 1u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v44 = AVE_GetCurrTime();
      AVE_USL_Drv_Stop(*(a1 + 120), &v44, 0);
    }

    if (AVE_Log_CheckLevel(2u, 0))
    {
      v8 = AVE_Log_CheckConsole(2u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(0);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 10772);
      v14 = *(a1 + 104648);
      ProcCnt = AVE_USL_Drv_GetProcCnt(*(a1 + 120));
      DropCnt = AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      if (v8)
      {
        printf("%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld\n", v9, 2, v10, v11, v12, v13, v14, ProcCnt, DropCnt);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(0);
        AVE_USL_Drv_GetProcCnt(*(a1 + 120));
        AVE_USL_Drv_GetDropCnt(*(a1 + 120));
      }

      syslog(3, "%lld %d AVE %s: ID: %lld Type: %d Enc: %d | Input: %d Proc: %lld Drop: %lld", v9, 2, v10);
    }

    v20 = AVE_USL_Drv_Destroy(*(a1 + 120));
    *(a1 + 120) = 0;
    v21 = *(a1 + 104712);
    v22 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v21, 1u, v22);
    AVE_TimeStats_Calc(*(a1 + 104712));
    AVE_TimeStats_Print(*(a1 + 104712), 16, 6, 0, 0);
    AVE_DW_Uninit();
    v23 = *(a1 + 104704);
    if (v23)
    {
      AVE_FPS::~AVE_FPS(v23);
      MEMORY[0x29C24E920]();
      *(a1 + 104704) = 0;
    }

    v24 = *(a1 + 104712);
    if (v24)
    {
      AVE_TimeStats_Destroy(v24);
      *(a1 + 104712) = 0;
    }

    v25 = *(a1 + 104720);
    if (v25)
    {
      AVE_Dump_Uninit(v25);
      AVE_Dump_Destroy(*(a1 + 104720));
      *(a1 + 104720) = 0;
    }

    v26 = *(a1 + 104728);
    if (v26)
    {
      AVE_VCP::~AVE_VCP(v26);
      MEMORY[0x29C24E920]();
      *(a1 + 104728) = 0;
    }

    v27 = *(a1 + 104736);
    if (v27)
    {
      AVE_SEI::~AVE_SEI(v27);
      MEMORY[0x29C24E920]();
      *(a1 + 104736) = 0;
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

    AVE_Prop_Cfg_HEVC_Uninit((a1 + 106112));
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xCu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v18, 12, v19, "AVE_Session_HEVC_Destroy", 398, "pINS != __null", 0);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v18);
    }

    AVE_DW_Uninit();
    v20 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v37 = AVE_Log_CheckConsole(0xCu);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(6);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v38, 12, v39, "AVE_Session_HEVC_Destroy", a1, v20);
      v40 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v40, 12, v43, "AVE_Session_HEVC_Destroy", a1, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v38, 12, v39, "AVE_Session_HEVC_Destroy", a1, v20);
    }
  }

  return v20;
}

uint64_t AVE_Session_HEVC_StartSession(uint64_t a1, _DWORD *a2)
{
  v4 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartSession", a1, a2);
      v8 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v8, 12, v48, "AVE_Session_HEVC_StartSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v19 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6820, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v9 = *(a1 + 104712);
      v10 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v9, 3u, v10);
      v11 = *a2;
      v12 = a2[1];
      *(a1 + 1440) = *a2;
      *(a1 + 1444) = v12;
      *(a1 + 11452) = v11;
      *(a1 + 11456) = v12;
      *(a1 + 764) = 1;
      AVE_PrepareCropParams(a1);
      if (!AVE_Enc_CheckResolution(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), 0))
      {
        AVE_SetEncoderDefault(a1);
        v21 = *(a1 + 24732) + 8;
        if (v21 <= *(a1 + 24736) + 8)
        {
          v21 = *(a1 + 24736) + 8;
        }

        if (AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), 62, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v21, 0, 0x1414C4C20, *(a1 + 16)))
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v22 = AVE_Log_CheckConsole(0x1Eu);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(4);
            if (v22)
            {
              printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v23, 30, v24, "AVE_Session_HEVC_StartSession", 6857, "ret == 0");
              v25 = AVE_GetCurrTime();
              v49 = AVE_Log_GetLevelStr(4);
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
        memset_pattern16((a1 + 108008), &unk_295650C30, 8uLL);
        *(a1 + 108024) = 0u;
        if (*(a1 + 1112) >= 1)
        {
          v33 = *(a1 + 1112);
        }

        else
        {
          v33 = 30;
        }

        AVE_FPS::Update(*(a1 + 104704), v33, 0, 0);
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

        v35 = AVE_SEI::Init(*(a1 + 104736), *(a1 + 56), 0, 0, 2, v34);
        if (v35)
        {
          v20 = v35;
          if (!AVE_Log_CheckLevel(0xCu, 4))
          {
            goto LABEL_31;
          }

          v36 = AVE_Log_CheckConsole(0xCu);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          if (v36)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v37, 12, v38, "AVE_Session_HEVC_StartSession", 6904, "ret == 0", a1, *(a1 + 56));
            v39 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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
          SupportedPresetDictionary = AVE_Prop_HEVC_CreateSupportedPresetDictionary(a1);
          if (!SupportedPresetDictionary)
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

          v20 = SupportedPresetDictionary;
          if (!AVE_Log_CheckLevel(0xCu, 4))
          {
LABEL_31:
            v26 = *(a1 + 104712);
            v27 = AVE_GetCurrTime();
            AVE_TimeStats_AddEndTime(v26, 3u, v27);
            if (v20)
            {
              v28 = *(a1 + 104728);
              if (v28)
              {
                AVE_VCP::~AVE_VCP(v28);
                MEMORY[0x29C24E920]();
                *(a1 + 104728) = 0;
              }
            }

            goto LABEL_34;
          }

          v41 = AVE_Log_CheckConsole(0xCu);
          v37 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld %d\n", v37, 12, v42, "AVE_Session_HEVC_StartSession", 6912, "ret == 0", a1, *(a1 + 56), v20);
            v43 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(4);
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

      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v13 = AVE_Log_CheckConsole(0xCu);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v14, 12, v15, "AVE_Session_HEVC_StartSession", 6839, "ret == 0", a1, *(a1 + 56), *(a1 + 1440), *(a1 + 1444));
          v14 = AVE_GetCurrTime();
          v15 = AVE_Log_GetLevelStr(4);
        }

LABEL_29:
        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v14, 12, v15);
      }
    }

    v20 = 4294965295;
    goto LABEL_31;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v17, 12, v18, "AVE_Session_HEVC_StartSession", 6816, "pINS != __null && pDim != __null", a1, a2);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v17, 12);
  }

  v20 = 4294966295;
LABEL_34:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v29 = AVE_Log_CheckConsole(0xCu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(6);
    if (v29)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v30, 12, v31, "AVE_Session_HEVC_StartSession", a1, a2, v20);
      v30 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v30);
  }

  return v20;
}

void AVE_PrepareCropParams(uint64_t a1)
{
  v2 = (a1 + 106088);
  v3 = a1 + 24712;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", v7, 12, v29);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareCropParams", CurrTime, 12, LevelStr);
    }
  }

  MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 2);
  v9 = *(a1 + 1440);
  v10 = *(a1 + 1444);
  *v3 = 0;
  *(a1 + 24716) = 0u;
  if ((v10 & 0xF) != 0 || v10 < MinResolution[1])
  {
    if (*(a1 + 76) >= 12)
    {
      v2[1] = v10;
    }

    v11 = (v10 + 15) & 0xFFFFFFF0;
    if (v11 <= MinResolution[1])
    {
      v11 = MinResolution[1];
    }

    *(a1 + 1444) = v11;
    *v3 = 1;
    *(v3 + 16) = v11 - v10;
  }

  if ((v9 & 0xF) != 0 || v9 < *MinResolution)
  {
    if (*(a1 + 76) >= 12)
    {
      *v2 = v9;
    }

    v12 = (v9 + 15) & 0xFFFFFFF0;
    if (v12 <= *MinResolution)
    {
      v12 = *MinResolution;
    }

    *(a1 + 1440) = v12;
    *v3 = 1;
    *(v3 + 8) = v12 - v9;
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v13 = AVE_Log_CheckConsole(0x10u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: input -> %dx%d\n", v14, 16, v15, v9, v10);
      v16 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v16, 16, v30, v9, v10);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input -> %dx%d", v14, 16, v15, v9, v10);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v17 = AVE_Log_CheckConsole(0x10u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    v20 = *(a1 + 1444);
    if (v17)
    {
      printf("%lld %d AVE %s: FIG: input multiple -> %dx%d\n", v18, 16, v19, *(a1 + 1440), v20);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v21, 16, v22, *(a1 + 1440), *(a1 + 1444));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: input multiple -> %dx%d", v18, 16, v19, *(a1 + 1440), v20);
    }
  }

  if (AVE_Log_CheckLevel(0x10u, 7))
  {
    v23 = AVE_Log_CheckConsole(0x10u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(7);
    v26 = *(v3 + 8);
    if (v23)
    {
      printf("%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d\n", v24, 16, v25, *(v3 + 16), v26);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v27, 16, v28, *(v3 + 16), *(v3 + 8));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: frame_crop_bottom_offset %d frame_crop_right_offset %d", v24, 16, v25, *(v3 + 16), v26);
    }
  }
}

double AVE_SetEncoderDefault(uint64_t a1)
{
  v2 = a1 + 59120;
  v21 = a1 + 48356;
  v3 = a1 + 39864;
  v4 = a1 + 31172;
  v5 = a1 + 24264;
  v20 = (a1 + 14424);
  v6 = a1 + 10168;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v7 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault\n", CurrTime, 12, LevelStr);
      v10 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", v10, 12, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderDefault", CurrTime, 12, LevelStr);
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
  memset_pattern16((a1 + 10544), &unk_295650C20, 8uLL);
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
  *(a1 + 1216) = xmmword_295650B50;
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
  memset_pattern16((a1 + 13308), &unk_295650C10, 0x1CuLL);
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
  memset_pattern16((a1 + 24748), &unk_295650C10, 0x1CuLL);
  *(a1 + 24820) = 0u;
  *(a1 + 24792) = 0u;
  *(a1 + 24808) = 0u;
  *(a1 + 24776) = 0u;
  *(v5 + 572) = xmmword_295650B60;
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
  *(v4 + 264) = xmmword_295650B70;
  *(v4 + 280) = xmmword_295650B80;
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
  *(v3 + 28) = xmmword_295650B90;
  *(v3 + 60) = xmmword_295650B90;
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

uint64_t AVE_Session_HEVC_BeginPass(uint64_t a1, int a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%x\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_BeginPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", v7, 12, v37, "AVE_Session_HEVC_BeginPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%x", CurrTime, 12, LevelStr, "AVE_Session_HEVC_BeginPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      v11 = *(a1 + 104668);
      if (v8)
      {
        printf("%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)\n", v9, 216, v10, a2, *(a1 + 104664), v11);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v12, 216, v13, a2, *(a1 + 104664), *(a1 + 104668));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE FIG AVE_BeginPass called. beginPassFlags = %d (begin %d end %d)", v9, 216, v10, a2, *(a1 + 104664), v11);
      }
    }

    if (!*(a1 + 104656))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v22 = AVE_Log_CheckConsole(3u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.\n", v23, 3, v24, "AVE_Session_HEVC_BeginPass", 7095, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassStorage = NULL.");
      }

      goto LABEL_40;
    }

    v17 = *(a1 + 104664);
    if (v17 != *(a1 + 104668))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v25 = AVE_Log_CheckConsole(3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v26, 3, v27, "AVE_Session_HEVC_BeginPass", 7096, "pINS->multiPassBeginPassCounter == pINS->multiPassEndPassCounter", *(a1 + 104664), *(a1 + 104668));
          v26 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v19 = AVE_Log_CheckConsole(3u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: pINS->multiPassBeginPassCounter reached max %d\n", v20, 3, v21, "AVE_Session_HEVC_BeginPass", 7105, "false", *(a1 + 104664));
            v20 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v29 = AVE_Log_CheckConsole(3u);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_BeginPass called with SessionStatus == H3H264VideoEncoder_SessionStatus_Run\n", v30, 3, v31, "AVE_Session_HEVC_BeginPass", 7099, "pINS->SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x\n", v15, 12, v16, "AVE_Session_HEVC_BeginPass", 7090, "pINS != __null", 0, a2);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p 0x%x", v15, 12);
  }

  v28 = 4294966295;
LABEL_41:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v32 = AVE_Log_CheckConsole(0xCu);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(6);
    if (v32)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%x %d\n", v33, 12, v34, "AVE_Session_HEVC_BeginPass", a1, a2, v28);
      v35 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v35);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%x %d", v33);
    }
  }

  return v28;
}

uint64_t AVE_Session_HEVC_EndPass(uint64_t a1, int *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_EndPass", a1, a2);
      v7 = AVE_GetCurrTime();
      v96 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v96, "AVE_Session_HEVC_EndPass", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_EndPass", a1, a2);
    }
  }

  if (a1)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v8 = AVE_Log_CheckConsole(0xD8u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(7);
      if (v8)
      {
        printf("%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)\n", v9, 216, v10, "AVE_Session_HEVC_EndPass", *(a1 + 104672), *(a1 + 104664), *(a1 + 104668));
        v9 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: ENTER %s. beginPassFlags %d (begin %d end %d)", v9);
    }

    if (*(a1 + 104644) != 30568)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v24 = AVE_Log_CheckConsole(3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run\n", v25, 3, v26, "AVE_Session_HEVC_EndPass", 7142, "pINS->SessionStatus == AVE_CommonWrapper_SessionStatus_Run");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_EndPass called with SessionStatus != AVE_CommonWrapper_SessionStatus_Run");
      }

      goto LABEL_57;
    }

    if (!*(a1 + 104656))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v27 = AVE_Log_CheckConsole(3u);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.\n", v28, 3, v29, "AVE_Session_HEVC_EndPass", 7144, "pINS->multiPassStorage != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: called with multiPassStorage = NULL.");
      }

      goto LABEL_57;
    }

    v14 = *(a1 + 104664);
    v15 = *(a1 + 104668);
    if (v14 != v15 + 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v30 = AVE_Log_CheckConsole(3u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: called with multiPassBeginPassCounter = %d, multiPassEndPassCounter = %d\n", v31, 3, v32, "AVE_Session_HEVC_EndPass", 7149, "pINS->multiPassBeginPassCounter == (pINS->multiPassEndPassCounter + 1)", *(a1 + 104664), *(a1 + 104668));
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v18 = AVE_Log_CheckConsole(0xD8u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(6);
      v21 = *(a1 + 104648);
      if (v18)
      {
        printf("%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d\n", v19, 216, v20, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v21);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v22, 216, v23, "AVE_Session_HEVC_EndPass", *(a1 + 104668), *(a1 + 104648));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: %s furtherPassesRequested. Pass %d TotalFrames %d", v19, 216, v20, "AVE_Session_HEVC_EndPass", *(a1 + 104668), v21);
      }
    }

    AVE_FPS::Reset(*(a1 + 104704));
    if (AVE_USL_Drv_Reset(*(a1 + 120), *(a1 + 104668)))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v34 = AVE_Log_CheckConsole(3u);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        if (v34)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Reset failed.\n", v35, 3, v36, "AVE_Session_HEVC_EndPass", 7186, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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

    v37 = MEMORY[0x29EDB9398];
    v102 = **&MEMORY[0x29EDB9398];
    start = v102;
    v100 = v102;
    v38 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v40 = Mutable;
      *&v98.start.value = *v37;
      v98.start.epoch = *(v37 + 16);
      if (VTMultiPassStorageGetTimeStamp())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.\n", v42, 3, v43, "AVE_Session_HEVC_EndPass", 7202, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp kVTMultiPassStorageStep_GetFirstTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v51 = AVE_Log_CheckConsole(0xD8u);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(7);
        if (v51)
        {
          printf("%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d\n", v52, 216, v53, "AVE_Session_HEVC_EndPass", v102.value, v102.timescale, v102.flags);
          v52 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s firstTimeInTimeRange value %lld timescale %d flags %d", v52);
      }

      *&v98.start.value = *v37;
      v98.start.epoch = *(v37 + 16);
      if (VTMultiPassStorageGetTimeStampAndDuration())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v54 = AVE_Log_CheckConsole(3u);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(4);
          if (v54)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.\n", v55, 3, v56, "AVE_Session_HEVC_EndPass", 7218, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStampAndDuration kVTMultiPassStorageStep_GetLastTimeStamp failed.");
        }

        goto LABEL_57;
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v57 = AVE_Log_CheckConsole(0xD8u);
        v58 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(7);
        if (v57)
        {
          printf("%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d\n", v58, 216, v59, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v58 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s lastTimeInTimeRange value %lld timescale %d flags %d", v58);
      }

      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v60 = AVE_Log_CheckConsole(0xD8u);
        v61 = AVE_GetCurrTime();
        v62 = AVE_Log_GetLevelStr(7);
        if (v60)
        {
          printf("%lld %d AVE %s: %s duration value %lld timescale %d flags %d\n", v61, 216, v62, "AVE_Session_HEVC_EndPass", v100.value, v100.timescale, v100.flags);
          v61 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s duration value %lld timescale %d flags %d", v61);
      }

      lhs.start = start;
      rhs = v100;
      CMTimeAdd(&v98.start, &lhs.start, &rhs);
      start = v98.start;
      if (AVE_Log_CheckLevel(0xD8u, 7))
      {
        v63 = AVE_Log_CheckConsole(0xD8u);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(7);
        if (v63)
        {
          printf("%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d\n", v64, 216, v65, "AVE_Session_HEVC_EndPass", start.value, start.timescale, start.flags);
          v64 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %s modified lastTimeInTimeRange value %lld timescale %d flags %d", v64);
      }

      if (*(a1 + 104648) <= 1u && !start.flags)
      {
        v66 = *(a1 + 1112);
        if (v66 < 1)
        {
          v66 = 30;
        }

        *&start.timescale = *&v102.timescale;
        start.epoch = v102.epoch;
        start.value = v102.value + v102.timescale / v66;
      }

      if (!v102.flags)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v70 = AVE_Log_CheckConsole(3u);
          v71 = AVE_GetCurrTime();
          v72 = AVE_Log_GetLevelStr(4);
          if (v70)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.\n", v71, 3, v72, "AVE_Session_HEVC_EndPass", 7244, "firstTimeInTimeRange.flags != 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: firstTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      if (!start.flags)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v73 = AVE_Log_CheckConsole(3u);
          v74 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(4);
          if (v73)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.\n", v74, 3, v75, "AVE_Session_HEVC_EndPass", 7246, "lastTimeInTimeRange.flags != 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: lastTimeInTimeRange invalid.");
        }

        goto LABEL_57;
      }

      memset(&v98, 0, sizeof(v98));
      lhs.start = v102;
      rhs = start;
      CMTimeRangeFromTimeToTime(&v98, &lhs.start, &rhs);
      if (AVE_Log_CheckLevel(0xD8u, 6))
      {
        v67 = AVE_Log_CheckConsole(0xD8u);
        v68 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(6);
        if (v67)
        {
          printf("%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d\n", v68, 216, v69, v98.start.value, v98.start.timescale, v98.start.flags, v98.duration.value, v98.duration.timescale, v98.duration.flags);
          v68 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
        }

        syslog(3, "%lld %d AVE %s: Start %lld, %d, %d; Duration %lld, %d, %d", v68, 216);
      }

      lhs = v98;
      v76 = CMTimeRangeCopyAsDictionary(&lhs, v38);
      if (!v76)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v90 = AVE_Log_CheckConsole(3u);
          v91 = AVE_GetCurrTime();
          v92 = AVE_Log_GetLevelStr(4);
          if (v90)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.\n", v91, 3, v92, "AVE_Session_HEVC_EndPass", 7255, "currentTimeRangeDictionary != __null");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CMTimeRangeCopyAsDictionary failed.");
        }

        goto LABEL_57;
      }

      v77 = v76;
      CFArrayAppendValue(v40, v76);
      CFRelease(v77);
      Count = CFArrayGetCount(v40);
      v79 = malloc_type_malloc(48 * Count, 0x1000040EED21634uLL);
      if (v79)
      {
        v80 = v79;
        if (Count >= 1)
        {
          v81 = 0;
          v82 = v79;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v40, v81);
            CMTimeRangeMakeFromDictionary(&lhs, ValueAtIndex);
            v84 = *&lhs.start.value;
            v85 = *&lhs.duration.timescale;
            v82[1] = *&lhs.start.epoch;
            v82[2] = v85;
            *v82 = v84;
            v82 += 3;
            ++v81;
          }

          while (Count != v81);
        }

        Pass = VTEncoderSessionSetTimeRangesForNextPass();
        free(v80);
        CFRelease(v40);
        if (Pass)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v87 = AVE_Log_CheckConsole(3u);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(4);
            if (v87)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: VTEncoderSessionSetTimeRangesForNextPass failed.\n", v88, 3, v89, "AVE_Session_HEVC_EndPass", 7289, "err == noErr");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
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

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v93 = AVE_Log_CheckConsole(3u);
        v94 = AVE_GetCurrTime();
        v95 = AVE_Log_GetLevelStr(4);
        if (v93)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.\n", v94, 3, v95, "AVE_Session_HEVC_EndPass", 7267, "timeRanges != __null");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: malloc timeRanges failed.");
      }
    }

    else if (AVE_Log_CheckLevel(3u, 4))
    {
      v48 = AVE_Log_CheckConsole(3u);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      if (v48)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.\n", v49, 3, v50, "AVE_Session_HEVC_EndPass", 7199, "timeRangeArray != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFArrayCreateMutable failed.");
    }

    v33 = 4294966293;
    goto LABEL_58;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v11 = AVE_Log_CheckConsole(0xCu);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v12, 12, v13, "AVE_Session_HEVC_EndPass", 7132, "pINS != __null", 0, a2);
      v12 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v12, 12);
  }

  v33 = 4294966295;
LABEL_58:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v44 = AVE_Log_CheckConsole(0xCu);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(6);
    if (v44)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v45, 12, v46, "AVE_Session_HEVC_EndPass", a1, a2, v33);
      v45 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v45);
  }

  return v33;
}

uint64_t AVE_HEVC_Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v225 = v15;
  v226 = v16;
  v18 = v17;
  v20 = v19;
  v227 = v8;
  v271 = *MEMORY[0x29EDCA608];
  pixelBuffer = v17;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v244 = 0uLL;
  v221 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_HEVC_Encode", v227, v20, v18, v225, v226, v14, v12);
      v24 = AVE_GetCurrTime();
      v207 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v24, 12, v207, "AVE_HEVC_Encode", v227);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_HEVC_Encode", v227);
    }
  }

  if ((v10 & 0x80000000) == 0 && v14 && v226 && v225 && v227 && pixelBuffer)
  {
    v25 = (v227 + 104644);
    v26 = AVE_GetCurrTime();
    v247 = *v226;
    v248 = v226[2];
    v245 = *v14;
    v246 = v14[2];
    *&v244 = v247;
    DWORD2(v244) = DWORD2(v247);
    AVE_Time_Conv(0, &v244);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v27 = AVE_Log_CheckConsole(0x33u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      v30 = *(v227 + 56);
      v31 = *v226;
      v32 = *(v226 + 2);
      if (v27)
      {
        v33 = v20;
        v34 = v10;
        v35 = v33;
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v28, 51, v29, "AVE_HEVC_Encode", 7445, v30, *(v227 + 104648), v31, v32, *(v226 + 3), v226[2], v244, DWORD2(v244), *v14, *(v14 + 2), *(v14 + 3), v14[2]);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(7);
        v38 = v35;
        v10 = v34;
        v20 = v38;
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v36, 51, v37, "AVE_HEVC_Encode", 7445, *(v227 + 56), *(v227 + 104648), *v226, *(v226 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v28, 51, v29, "AVE_HEVC_Encode", 7445, v30, *(v227 + 104648), v31, v32);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v227 + 108000) = PixelFormatType;
    if (!*(v227 + 104648))
    {
      v255 = *(v227 + 1440);
      v44 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v44)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v68 = AVE_Log_CheckConsole(3u);
          v69 = AVE_GetCurrTime();
          v70 = AVE_Log_GetLevelStr(4);
          if (v68)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v69, 3, v70, "AVE_HEVC_Encode", 7462, "pPixelFmt != __null", v227, *(v227 + 56), *(v227 + 108000));
            v71 = AVE_GetCurrTime();
            v72 = AVE_Log_GetLevelStr(4);
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

      AVE_Dump_Init(*(v227 + 104720), v45, *(v227 + 64), *(v227 + 10772), v221[103], v221[104], &v255, v46, *(v44 + 3), *(v44 + 1), *(v227 + 1136));
    }

    AVE_Dump_WriteInput(*(v227 + 104720), *(v227 + 104668), pixelBuffer);
    v47 = *v25;
    if (*v25 == 30566)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v59 = 1;
      }

      else
      {
        v59 = 2;
      }

      *(v227 + 10804) = v59;
      v60 = AVE_ManageSessionSettings(v227);
      if (v60)
      {
        v55 = v60;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v61 = AVE_Log_CheckConsole(3u);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v62, 3, v63, "AVE_HEVC_Encode", 7571, "err == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_172;
      }

      AVE_UpdateCropParams(v227, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v227, &pixelBuffer, &v251, &v250, &v249 + 1, &v249, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v76 = AVE_Log_CheckConsole(3u);
          v77 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(4);
          if (v76)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v77, 3, v78, "AVE_HEVC_Encode", 7581, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
        }

        goto LABEL_171;
      }

      AVE_SetEncoderBasedOnFirstFrame(v227, *(v227 + 10804) == 2);
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

      if (AVE_ValidateEncoderParameters(v227))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v91 = AVE_Log_CheckConsole(3u);
          v92 = AVE_GetCurrTime();
          v93 = AVE_Log_GetLevelStr(4);
          if (v91)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v92, 3, v93, "AVE_HEVC_Encode", 7609, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_171;
      }

      AVE_PrepareVideoAndSequenceHeader(v227, pixelBuffer);
      AVE_PreparePictureHeader(v227);
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
      if (AVE_USL_Drv_Start(*(v227 + 120), &v255, v227 + 128, *(v227 + 16), *(v227 + 112), *(v227 + 104652), *(v227 + 104656), v227 + 160, (v227 + 11772), (v227 + 11464)))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v94 = AVE_Log_CheckConsole(3u);
          v95 = AVE_GetCurrTime();
          v96 = AVE_Log_GetLevelStr(4);
          if (v94)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v95, 3, v96, "AVE_HEVC_Encode", 7637, "err == noErr");
            v97 = AVE_GetCurrTime();
            v210 = AVE_Log_GetLevelStr(4);
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
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v56 = 1;
      }

      else
      {
        v56 = 2;
      }

      *(v227 + 10804) = v56;
      AVE_UpdateCropParams(v227, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v227, &pixelBuffer, &v251, &v250, &v249 + 1, &v249, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v57 = AVE_Log_CheckConsole(3u);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(4);
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

      AVE_SetEncoderBasedOnFirstFrame(v227, *(v227 + 10804) == 2);
      if (AVE_ValidateEncoderParameters(v227))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v73 = AVE_Log_CheckConsole(3u);
          v74 = AVE_GetCurrTime();
          v75 = AVE_Log_GetLevelStr(4);
          if (v73)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v74, 3, v75, "AVE_HEVC_Encode", 7509, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_70;
      }

      AVE_PrepareVideoAndSequenceHeader(v227, pixelBuffer);
      AVE_PreparePictureHeader(v227);
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
      if (AVE_USL_Drv_Start(*(v227 + 120), &v255, v227 + 128, *(v227 + 16), *(v227 + 112), *(v227 + 104652), *(v227 + 104656), v227 + 160, (v227 + 11772), (v227 + 11464)))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v83 = AVE_Log_CheckConsole(3u);
          v84 = AVE_GetCurrTime();
          v85 = AVE_Log_GetLevelStr(4);
          if (v83)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v84, 3, v85, "AVE_HEVC_Encode", 7556, "err == noErr");
            v86 = AVE_GetCurrTime();
            v209 = AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v64 = AVE_Log_CheckConsole(3u);
          v65 = AVE_GetCurrTime();
          v66 = AVE_Log_GetLevelStr(4);
          if (v64)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v65, 3, v66, "AVE_HEVC_Encode", 7644, "false", *v25);
            v67 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v67);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v65);
          }
        }

        goto LABEL_171;
      }

      if (AVE_HEVC_VerifyImageBuffer(v227, &pixelBuffer, &v251, &v250, &v249 + 1, &v249, 0))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v48 = AVE_Log_CheckConsole(3u);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(4);
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
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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
        v99 = CFDictionaryGetValue(v12, *MEMORY[0x29EDBCEE8]);
        if (v99 && AVE_Log_CheckLevel(0x10u, 6))
        {
          v218 = AVE_Log_CheckConsole(0x10u);
          v222 = AVE_GetCurrTime();
          v110 = AVE_Log_GetLevelStr(6);
          if (v218)
          {
            printf("%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p\n", v222, 16, v110, *(v227 + 16), v99);
            v222 = AVE_GetCurrTime();
            v110 = AVE_Log_GetLevelStr(6);
          }

          syslog(3, "%lld %d AVE %s: FIG: %p: use scaled source for LRME, %p", v222, 16, v110, *(v227 + 16), v99);
        }
      }

      else
      {
        v99 = 0;
      }

      if (Value && CFEqual(Value, *MEMORY[0x29EDB8F00]))
      {
        v26 = AVE_GetCurrTime();
        v228 = v26;
        AVE_USL_Drv_Complete(*(v227 + 120), &v228);
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
      AVE_FPS::Add(*(v227 + 104704), &v244);
      v100 = pixelBuffer;
    }

    AVE_ISP_GetMetadata(v100, &v229);
    AVE_Dump_WriteISPMetadata(*(v227 + 104720), *(v227 + 104668), *(v227 + 104648), &v229);
    if (*(v227 + 76) < 17 || (*(v227 + 716) & 0x3C0) == 0)
    {
LABEL_130:
      v240[3] = &v229;
      v20 = v220;
      if ((*(v227 + 1337) & 2) != 0 && *(v227 + 76) >= 4 && (*(v227 + 1112) - 1) <= 0x3B)
      {
        v108 = v227 + 104784;
        if (AVE_ANFD_GetInfo(v12, (v227 + 104784 + 648 * *(v227 + 106080))))
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
          AVE_SNPrintf(v253, 32, "%llu %d %d", *(v227 + 56), *(v227 + 104648), *(v108 + 648 * *(v227 + 106080)));
          AVE_ANFD_PrintInfo((v108 + 648 * *(v227 + 106080)), 47, 6, v253, 0);
          memcpy((*(&v241 + 1) + 152), (v108 + 648 * *(v227 + 106080)), 0x288uLL);
          if (*(v227 + 1112) == 60)
          {
            *(v227 + 106080) = *(v227 + 106080) == 0;
            *(v227 + 106084) = *(v227 + 104648);
          }

          v20 = v220;
        }
      }

      v111 = CMGetAttachment(pixelBuffer, *MEMORY[0x29EDBFF98], 0);
      if (v111)
      {
        AVE_SEI::SetISPMetadata(*(v227 + 104736), *(v227 + 104648), v111);
      }

      AVE_SEI::SetDriverVersion(*(v227 + 104736), *(v227 + 104648));
      AVE_SEI::SetSessionID(*(v227 + 104736), *(v227 + 104648), *(v227 + 56));
      AVE_SEI::SetExposureTime(*(v227 + 104736), *(v227 + 104648), *(v240[3] + 16));
      AVE_SEI::SetSNR(*(v227 + 104736), *(v227 + 104648), *v240[3]);
      AVE_SEI::SetLuxLevel(*(v227 + 104736), *(v227 + 104648), *(v240[3] + 68));
      AVE_SEI::SetPTS(*(v227 + 104736), *(v227 + 104648), *(v226 + 2), *v226);
      DWORD2(v243) = *(v227 + 104648);
      HIDWORD(v243) = v10;
      PerFrameData = AVE_GetPerFrameData(v227, v12, v254, &v255, &v234);
      if (!*(v227 + 11476))
      {
        AVE_UpdateSettingsBasedOnSNR(v227, v254, &v255, *v240[3]);
      }

      *(*(&v241 + 1) + 936) = *(*(&v241 + 1) + 936) & 0xFFFFF9FF | ((*(*(&v241 + 1) + 152) > 0) << 9) | ((*(*(&v241 + 1) + 800) > 0) << 10);
      if (*(v227 + 104668) && *(v227 + 104656) && AVE_MultipassDataFetch(v227, &v247, &v255))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v113 = AVE_Log_CheckConsole(3u);
          v114 = AVE_GetCurrTime();
          v115 = AVE_Log_GetLevelStr(4);
          if (v113)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_MultipassDataFetch failed.\n", v114, 3, v115, "AVE_HEVC_Encode", 8079, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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
        v117 = AVE_USL_Drv_Process(*(v227 + 120), &v234);
        if (!v117)
        {
          v55 = PerFrameData;
          goto LABEL_172;
        }

        if (v117 == -536870173)
        {
          v55 = PerFrameData;
          if (AVE_Log_CheckLevel(0x10u, 5))
          {
            v118 = AVE_Log_CheckConsole(0x10u);
            v119 = AVE_GetCurrTime();
            v120 = AVE_Log_GetLevelStr(5);
            if (v118)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v119, 16, v120);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(5);
              v55 = PerFrameData;
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }

          goto LABEL_172;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v121 = AVE_Log_CheckConsole(3u);
          v122 = AVE_GetCurrTime();
          v123 = AVE_Log_GetLevelStr(4);
          if (v121)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v122, 3, v123, "AVE_HEVC_Encode", 8102, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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

    if (*(&v232 + 1) == 0x1FFFFFFFFLL && AVE_Log_CheckLevel(0x10u, 5))
    {
      v101 = AVE_Log_CheckConsole(0x10u);
      v102 = AVE_GetCurrTime();
      v103 = AVE_Log_GetLevelStr(5);
      if (v101)
      {
        printf("%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!\n", v102, 16, v103);
        v104 = AVE_GetCurrTime();
        v211 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v104, 16, v211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: MCTF Ban0Modulation Enabled, but Band0Strength is missing!", v102, 16, v103);
      }
    }

    if (v231[0].f64[1] != 0.0 && *(&v230 + 1) != 0.0 && v231[0].f64[0] != 0.0)
    {
      v130 = AVE_DW_Get();
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
            v142 = AVE_Log_CheckLevel(0x10u, 8);
            if (v135 >= v132)
            {
              if (v142)
              {
                v149 = AVE_Log_CheckConsole(0x10u);
                v223 = AVE_GetCurrTime();
                v150 = AVE_Log_GetLevelStr(8);
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
                  v154 = AVE_GetCurrTime();
                  v155 = AVE_Log_GetLevelStr(8);
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
                v143 = AVE_Log_CheckConsole(0x10u);
                v144 = AVE_GetCurrTime();
                v145 = AVE_Log_GetLevelStr(8);
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
                  v148 = AVE_GetCurrTime();
                  v213 = AVE_Log_GetLevelStr(8);
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
            if (AVE_Log_CheckLevel(0x10u, 8))
            {
              v136 = AVE_Log_CheckConsole(0x10u);
              v137 = AVE_GetCurrTime();
              v138 = AVE_Log_GetLevelStr(8);
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
                v141 = AVE_GetCurrTime();
                v212 = AVE_Log_GetLevelStr(8);
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
        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v157 = AVE_Log_CheckConsole(0x10u);
          v158 = AVE_GetCurrTime();
          v159 = AVE_Log_GetLevelStr(5);
          if (v157)
          {
            printf("%lld %d AVE %s: FIG:Unexpected MCTF DynSwitchOff detected: Band0ModEnabled:%d and Band0Strength:%d. Forcing MCTF On\n", v158, 16, v159, HIDWORD(v232), DWORD2(v232));
            v160 = AVE_GetCurrTime();
            v161 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 7))
      {
        v174 = AVE_Log_CheckConsole(0x10u);
        v175 = AVE_GetCurrTime();
        v176 = AVE_Log_GetLevelStr(7);
        v177 = *(v227 + 104648);
        if (v174)
        {
          printf("%lld %d AVE %s: FIG: F %d ISP meta data is missing!\n", v175, 16, v176, v177);
          v178 = AVE_GetCurrTime();
          v214 = AVE_Log_GetLevelStr(7);
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
        Rt = AVE_FPS::GetRt(*(v227 + 104704));
        v195 = ((v193 + 31) >> 5) * ((v192 + 31) >> 5) * Rt;
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
              AVE_MCTF_AdjustStrength(&v229, *(v227 + 76), v201, (v202 + 108032), v261);
              if (AVE_Log_CheckLevel(0x10u, 8))
              {
                v203 = AVE_Log_CheckConsole(0x10u);
                v204 = AVE_GetCurrTime();
                v205 = AVE_Log_GetLevelStr(8);
                if (v203)
                {
                  printf("%lld %d AVE %s: %s:%d %p %lld PerFrameData.iDynamicStrength %d rangeIdx[%d] %d\n", v204, 16, v205, "AVE_HEVC_Encode", 7944, v227, *(v227 + 56), v261[0], v10, *(v202 + 108032));
                  v206 = AVE_GetCurrTime();
                  v215 = AVE_Log_GetLevelStr(8);
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

        if (AVE_Log_CheckLevel(0x10u, 5))
        {
          v197 = AVE_Log_CheckConsole(0x10u);
          v198 = AVE_GetCurrTime();
          v199 = AVE_Log_GetLevelStr(5);
          if (v197)
          {
            printf("%lld %d AVE %s: FIG: MCTF unsupported fps %d for %dx%d. VFR %d. Band0Mod %d, %d\n", v198, 16, v199, Rt, v192, v193, (*(v227 + 1120) >> 4) & 1, HIDWORD(v232), DWORD2(v232));
            v200 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
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
      v164 = AVE_DW_Get();
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

      v169 = AVE_MCTF_SupportAllLight(v232, *(v227 + 76), v168);
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
    v180 = AVE_DW_Get();
    if ((*(v227 + 1120) & 0x10) != 0)
    {
      Slide = AVE_FPS::GetSlide(*(v227 + 104704));
    }

    else
    {
      Slide = *(v227 + 1112);
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
    v187 = vmul_lane_s32(v186, v186, 1).u32[0] * Slide;
    if (v187 > v185)
    {
      DWORD2(v232) = 255;
      *(v162 + v10) = 0;
    }

    if (AVE_Log_CheckLevel(0x10u, 8))
    {
      v188 = AVE_Log_CheckConsole(0x10u);
      v224 = AVE_GetCurrTime();
      v189 = AVE_Log_GetLevelStr(8);
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
      TotalCnt = AVE_FPS::GetTotalCnt(*(v227 + 104704));
      v191 = AVE_FPS::GetRt(*(v227 + 104704));
      if (v188)
      {
        printf("%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)\n", v224, 16, v219, v217, Slide, TotalCnt, v191, v187, v185, v163);
        v224 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        AVE_FPS::GetTotalCnt(*(v227 + 104704));
        AVE_FPS::GetRt(*(v227 + 104704));
      }

      syslog(3, "%lld %d AVE %s: %s MCTF. frameRate: %d cnt %d (%.2f), pixel rate %d threshold %d (prev set: %d)", v224, 16);
    }

    goto LABEL_268;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v39 = AVE_Log_CheckConsole(0xCu);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(4);
    if (v39)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d\n", v40, 12, v41, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v227, v20, pixelBuffer, v225, v226, v14, v12, v10);
      v42 = AVE_GetCurrTime();
      v208 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v42, 12, v208, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v227, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p %d", v40, 12, v41, "AVE_HEVC_Encode", 7430, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null && idx >= 0", v227, v20);
    }
  }

  v55 = 4294966295;
LABEL_176:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v124 = AVE_Log_CheckConsole(0xCu);
    v125 = AVE_GetCurrTime();
    v126 = AVE_Log_GetLevelStr(7);
    if (v124)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d\n", v125, 12, v126, "AVE_HEVC_Encode", v227, v20, pixelBuffer, v225, v226, v14, v12, v10, v55);
      v127 = AVE_GetCurrTime();
      v128 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v127, 12, v128, "AVE_HEVC_Encode", v227, v20);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d %d", v125, 12, v126, "AVE_HEVC_Encode", v227, v20);
    }
  }

  return v55;
}

uint64_t AVE_HEVC_VerifyImageBuffer(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int a7)
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
    v21 = AVE_ImageBuf_Transfer(&v45, a2, (a1 + 104776), *(a1 + 11972));
    kdebug_trace();
    if (v21)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v22 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", CurrTime, 3, LevelStr, "AVE_HEVC_VerifyImageBuffer", 4833, "err == noErr", *a2, HIDWORD(v53), *(a1 + 11972), v21);
          v25 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", v25, 3, v43);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", CurrTime, 3, LevelStr);
        }
      }

      return v21;
    }

    *a4 = 1;
  }

  v21 = AVE_VerifyImageBuffer(&v45, a2, (a1 + 104768));
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

      updated = AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), *(a1 + 716), 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v37, *v14, v30 | 0x100000000, *(a1 + 16));
      if (updated)
      {
        v39 = updated;
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v40 = AVE_Log_CheckConsole(0x1Eu);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(5);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v41, 30, v42, "AVE_HEVC_VerifyImageBuffer", 4903, a1, *(a1 + 56), 0, v39);
            v41 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v33 = AVE_Log_CheckConsole(0xCu);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v34, 12, v35, "AVE_HEVC_VerifyImageBuffer", 4956, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v53));
          v36 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
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

void AVE_UpdateCropParams(uint64_t a1, __CVBuffer *a2)
{
  v4 = a1 + 23948;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams\n", CurrTime, 12, LevelStr);
      v8 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", v8, 12, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_UpdateCropParams", CurrTime, 12, LevelStr);
    }
  }

  if (*(v4 + 764))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    v10 = AVE_PixelFmt_FindByType(PixelFormatType);
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

    if (AVE_Log_CheckLevel(0x10u, 7))
    {
      v23 = AVE_Log_CheckConsole(0x10u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      if (v23)
      {
        printf("%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d\n", v24, 16, v25, *(v4 + 776), *(v4 + 780), *(v4 + 768), *(v4 + 772));
        v24 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: FIG: conf_win_top_offset = %d conf_win_bottom_offset %d conf_win_left_offset = %d conf_win_right_offset %d", v24);
    }
  }
}

double AVE_SetEncoderBasedOnFirstFrame(uint64_t a1, int a2)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame\n", CurrTime, 12, LevelStr);
      v8 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", v8, 12, v12);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: AVE ENTER AVE_SetEncoderBasedOnFirstFrame", CurrTime, 12, LevelStr);
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

uint64_t AVE_ValidateEncoderParameters(uint64_t a1)
{
  v2 = a1 + 104628;
  v3 = AVE_DW_Get();
  v469 = 0;
  v468 = 0.0;
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v427 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", v7, 12, v427);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ValidateEncoderParameters", CurrTime, 12, LevelStr);
    }
  }

  v8 = *(v2 + 1756);
  if (v8 >= 0.0 && AVE_HEVC_SetCQFactor(a1, v8) && AVE_Log_CheckLevel(0x10u, 5))
  {
    v9 = AVE_Log_CheckConsole(0x10u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(5);
    if (v9)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]\n", v10, 16, v11);
      v12 = AVE_GetCurrTime();
      v428 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v12, 16, v428);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_ConstantQualityFactor property supports values only                  in the range of [0,1]", v10, 16, v11);
    }
  }

  v13 = *(v2 + 1748);
  if (v13 >= 0.0 && AVE_HEVC_SetQuality(a1, v13) && AVE_Log_CheckLevel(0x10u, 5))
  {
    v14 = AVE_Log_CheckConsole(0x10u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(5);
    if (v14)
    {
      printf("%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]\n", v15, 16, v16);
      v17 = AVE_GetCurrTime();
      v429 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v17, 16, v429);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Quality property supports values only                          in the range of [0,1]", v15, 16, v16);
    }
  }

  if ((*(a1 + 1132) & 0xFFFFFFFE) == 6)
  {
    v18 = AVE_RC_DecideVBVMaxBitRate(*(v3 + 206), *(v2 + 1728), &v469);
    if (v18)
    {
      v19 = v18;
      if (AVE_Log_CheckLevel(0x10u, 4))
      {
        v20 = AVE_Log_CheckConsole(0x10u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %d %d\n", v21, 16, v22, "AVE_ValidateEncoderParameters", 3088, "ret == 0", a1, *(a1 + 56), *(v3 + 206), *(v2 + 1728));
          v23 = AVE_GetCurrTime();
          v430 = AVE_Log_GetLevelStr(4);
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

  v24 = AVE_RC_DecideVBVBufferSize(v3[104], *(v2 + 3060), *(v2 + 1732), *(a1 + 1120), &v468);
  if (v24)
  {
    v19 = v24;
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v25 = AVE_Log_CheckConsole(0x10u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx\n", v26, 16, v27, "AVE_ValidateEncoderParameters", 3099, "ret == 0", a1, *(a1 + 56), v3[104], *(v2 + 3060), *(v2 + 1732), *(a1 + 1120));
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %f %f %f 0x%llx", v26, 16, v27);
    }

    return v19;
  }

  v28 = v468;
  *(a1 + 1216) = v468;
  v29 = AVE_RC_DecideVBVInitialDelay(v3[105], *(v2 + 3068), *(v2 + 1740), v28, *(a1 + 1120), &v468);
  if (v29)
  {
    v19 = v29;
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v30 = AVE_Log_CheckConsole(0x10u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %f %f %f %f 0x%llx\n", v31, 16, v32, "AVE_ValidateEncoderParameters", 3112, "ret == 0", a1, *(a1 + 56), v3[105], *(v2 + 3068), *(v2 + 1740), *(a1 + 1216), *(a1 + 1120));
        v33 = AVE_GetCurrTime();
        v431 = AVE_Log_GetLevelStr(4);
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
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v36 = AVE_Log_CheckConsole(3u);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        if (v36)
        {
          printf("%lld %d AVE %s: %s:%d %s | current SoC doesn't support SliceEncodingMode. Fail.\n", v37, 3, v38, "AVE_ValidateEncoderParameters", 3129, "!pINS->VideoParams.bSliceEncodingMode");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v40 = AVE_Log_CheckConsole(0x10u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(5);
      v43 = *(a1 + 1464);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d current SoC doesn't support AVE_QPMOD_FEATURE_STATIC_AREA. with Stats Enabled:0x%x\n", v41, 16, v42, "AVE_ValidateEncoderParameters", 3138, v43);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(5);
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
  if (*(v2 + 28) && AVE_Log_CheckLevel(0x10u, 5))
  {
    v46 = AVE_Log_CheckConsole(0x10u);
    v47 = AVE_GetCurrTime();
    v48 = AVE_Log_GetLevelStr(5);
    if (v46)
    {
      printf("%lld %d AVE %s: FIG: MCTF is not supported for Multipass\n", v47, 16, v48);
      v49 = AVE_GetCurrTime();
      v432 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v50 = AVE_Log_CheckConsole(3u);
      v51 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(4);
      if (v50)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: pPropertyCfg->iEncodesDepth = %d and pPropertyCfg->iEncodesDisparity = %d -> fail.\n", v51, 3, v52, "AVE_ValidateEncoderParameters", 3177, "false", *(v2 + 1952), *(v2 + 1956));
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
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
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v61 = AVE_Log_CheckConsole(3u);
        v62 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
        if (v61)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail\n", v62, 3, v63, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: multiPassStorage and RC UsageMode = %d... not supported. fail", v62, 3, v63, "AVE_ValidateEncoderParameters", 3241, "false", *(a1 + 10892));
      }

      return 4294966296;
    }
  }

  else if (v57 == 20 && *(a1 + 10892) != 1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v58 = AVE_Log_CheckConsole(3u);
      v59 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(4);
      if (v58)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Usage mode %d does not support eRCMode = 0x%x. Fail.\n", v59, 3, v60, "AVE_ValidateEncoderParameters", 3232, "false", *(a1 + 10892), *(a1 + 1132));
        v59 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v68 = AVE_Log_CheckConsole(3u);
      v69 = AVE_GetCurrTime();
      v70 = AVE_Log_GetLevelStr(4);
      if (v68)
      {
        printf("%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature\n", v69, 3, v70, "AVE_ValidateEncoderParameters", 3275, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | DRL is not supported with lookahead feature");
    }

    return 4294966296;
  }

LABEL_101:
  if (v67 >= 4)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v71 = AVE_Log_CheckConsole(0x10u);
      v72 = AVE_GetCurrTime();
      v73 = AVE_Log_GetLevelStr(5);
      if (v71)
      {
        printf("%lld %d AVE %s: %s:%d too many B frames (%d) max is %d. -> will gracefully default to the internal max!\n", v72, 16, v73, "AVE_ValidateEncoderParameters", 3289, *(a1 + 1256), 3);
        v72 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(5);
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

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v75 = AVE_Log_CheckConsole(0x10u);
      v76 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(5);
      if (v75)
      {
        printf("%lld %d AVE %s: FIG: AdaptiveB is set when BFrames not enabled -> will disable AdaptiveB\n", v76, 16, v77);
        v78 = AVE_GetCurrTime();
        v434 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v83 = AVE_Log_CheckConsole(3u);
      v51 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(4);
      if (v83)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: too many slices (%d) max is %d for now (can be changed)\n", v51, 3, v84, "AVE_ValidateEncoderParameters", 3330, "pINS->VideoParams.sSliceMap.iNum <= ((32) < (256) ? (32) : (256))", *(v34 + 21), 32);
        v51 = AVE_GetCurrTime();
        v84 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v86 = AVE_Log_CheckConsole(3u);
      v51 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(4);
      if (v86)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Slices Per Frame = %d\n", v51, 3, v87, "AVE_ValidateEncoderParameters", 3331, "pINS->VideoParams.sSliceMap.iNum != 0", *(v34 + 21));
        v51 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v80 = AVE_Log_CheckConsole(0x10u);
      v81 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(4);
      if (v80)
      {
        printf("%lld %d AVE %s: %s:%d %s | Unable to set bitdepth 10 for HEVC Profile that only supports bitdepth 8\n", v81, 16, v82, "AVE_ValidateEncoderParameters", 3342, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
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
        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v92 = AVE_Log_CheckConsole(0x10u);
          v463 = AVE_GetCurrTime();
          v93 = AVE_Log_GetLevelStr(6);
          if (v92)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v463, 16, v93, "AVE_ValidateEncoderParameters", 3374, *(a1 + 12028), 9);
            v94 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
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
        if (AVE_Log_CheckLevel(0x10u, 6))
        {
          v89 = AVE_Log_CheckConsole(0x10u);
          v90 = AVE_GetCurrTime();
          v91 = AVE_Log_GetLevelStr(6);
          if (v89)
          {
            printf("%lld %d AVE %s: %s:%d profile %d => %d\n", v90, 16, v91, "AVE_ValidateEncoderParameters", 3366, *(a1 + 12028), 8);
            v90 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
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
      if (AVE_Log_CheckLevel(0x10u, 6))
      {
        v95 = AVE_Log_CheckConsole(0x10u);
        v464 = AVE_GetCurrTime();
        v96 = AVE_Log_GetLevelStr(6);
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
          v464 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
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

    if (AVE_Log_CheckLevel(0x10u, 6))
    {
      v100 = AVE_Log_CheckConsole(0x10u);
      v101 = AVE_GetCurrTime();
      v102 = AVE_Log_GetLevelStr(6);
      if (v100)
      {
        printf("%lld %d AVE %s: %s:%d chroma format idc %d profile %d\n", v101, 16, v102, "AVE_ValidateEncoderParameters", 3391, *(a1 + 24688), *(a1 + 12028));
        v101 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v104 = AVE_Log_CheckConsole(0x10u);
        v105 = AVE_GetCurrTime();
        v106 = AVE_Log_GetLevelStr(5);
        v107 = *(a1 + 1308);
        if (v104)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and Reference Number of P %d -> 1\n", v105, 16, v106, *(a1 + 10892), v107);
          v108 = AVE_GetCurrTime();
          v109 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v111 = AVE_Log_CheckConsole(0x10u);
        v112 = AVE_GetCurrTime();
        v113 = AVE_Log_GetLevelStr(5);
        v114 = *(a1 + 10892);
        if (v111)
        {
          printf("%lld %d AVE %s: FIG: usageMode = %d and bIsLossless is true not supported. Set it to false.\n", v112, 16, v113, v114);
          v115 = AVE_GetCurrTime();
          v435 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v116 = AVE_Log_CheckConsole(0x10u);
        v117 = AVE_GetCurrTime();
        v118 = AVE_Log_GetLevelStr(5);
        v119 = *(a1 + 1132);
        if (v116)
        {
          printf("%lld %d AVE %s: FIG: eRCMode = %d and bIsLossless is true not supported. Set eRCMode to FIXQP.\n", v117, 16, v118, v119);
          v120 = AVE_GetCurrTime();
          v436 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v121 = AVE_Log_CheckConsole(0x10u);
        v122 = AVE_GetCurrTime();
        v123 = AVE_Log_GetLevelStr(5);
        v124 = *(a1 + 1336);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d QPMod feature set to 0x%08x (!= 0) and bIsLossless is true not supported. Force QPMod feature to 0. (Set cu_qp_delta_enabled_flag to false)\n", v122, 16, v123, "AVE_ValidateEncoderParameters", 3453, v124);
          v125 = AVE_GetCurrTime();
          v126 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v127 = AVE_Log_CheckConsole(0x10u);
        v128 = AVE_GetCurrTime();
        v129 = AVE_Log_GetLevelStr(5);
        v130 = *(a1 + 1352);
        if (v127)
        {
          printf("%lld %d AVE %s: FIG: Lambda Modulation can not be supported when bIsLossless is set to true. Disable Lambda Modulation, set sLambdaMod.iFeature (0x%x) to 0\n", v128, 16, v129, v130);
          v131 = AVE_GetCurrTime();
          v437 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v133 = AVE_Log_CheckConsole(0x10u);
        v134 = AVE_GetCurrTime();
        v135 = AVE_Log_GetLevelStr(5);
        v136 = *(a1 + 1464);
        if (v133)
        {
          printf("%lld %d AVE %s: FIG: EnableSelStatsFlags = %d and bIsLossless is true not supported. Forcing EnableSelStatsFlags to STATISTICS_DISABLED.\n", v134, 16, v135, v136);
          v137 = AVE_GetCurrTime();
          v438 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v138 = AVE_Log_CheckConsole(0x10u);
        v139 = AVE_GetCurrTime();
        v140 = AVE_Log_GetLevelStr(5);
        v141 = *(a1 + 1336);
        if (v138)
        {
          printf("%lld %d AVE %s: FIG: sQPMod.iFeature = %d and bIsLossless is true not supported. Forcing AVE_QPMOD_FEATURE_STATIC_AREA to off.\n", v139, 16, v140, v141);
          v142 = AVE_GetCurrTime();
          v439 = AVE_Log_GetLevelStr(5);
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

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v144 = AVE_Log_CheckConsole(0x10u);
      v145 = AVE_GetCurrTime();
      v146 = AVE_Log_GetLevelStr(5);
      v147 = *(a1 + 1256);
      if (v144)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and iAverageNonDroppableFrameRate is true. not supported yet, gracefully set it to false.\n", v145, 16, v146, "AVE_ValidateEncoderParameters", 3513, v147);
        v148 = AVE_GetCurrTime();
        v149 = AVE_Log_GetLevelStr(5);
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

  if (AVE_CheckQPRange((a1 + 1344), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v153 = AVE_Log_CheckConsole(3u);
      v154 = AVE_GetCurrTime();
      v155 = AVE_Log_GetLevelStr(4);
      if (v153)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]\n", v154, 3, v155, "AVE_ValidateEncoderParameters", 3553, "false", *(a1 + 1344), *(a1 + 1348));
        v154 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Incorrect BlkQPRange [%d %d]", v154);
    }

    return 4294966295;
  }

  v156 = (a1 + 1232);
  if (AVE_CheckQPRange((a1 + 1232), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v157 = AVE_Log_CheckConsole(3u);
      v158 = AVE_GetCurrTime();
      v159 = AVE_Log_GetLevelStr(4);
      if (v157)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Incorrect RCQPRange [%d %d]\n", v158, 3, v159, "AVE_ValidateEncoderParameters", 3561, "false", *(a1 + 1232), *(a1 + 1236));
        v158 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v162 = AVE_Log_CheckConsole(0x10u);
      v163 = AVE_GetCurrTime();
      v164 = AVE_Log_GetLevelStr(5);
      v165 = *(a1 + 1132);
      if (v162)
      {
        printf("%lld %d AVE %s: FIG: eRCMode 0x%x bUseAsyncFWScheduling = true -> not supported. set bUseAsyncFWScheduling to false\n", v163, 16, v164, v165);
        v166 = AVE_GetCurrTime();
        v440 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v167 = AVE_Log_CheckConsole(0x10u);
      v168 = AVE_GetCurrTime();
      v169 = AVE_Log_GetLevelStr(5);
      if (v167)
      {
        printf("%lld %d AVE %s: %s:%d eRCMode 0x%x bUseAsyncFWScheduling = false Bframes 0x%x -> not supported. set bUseAsyncFWScheduling to true\n", v168, 16, v169, "AVE_ValidateEncoderParameters", 3599, *(a1 + 1132), *(a1 + 1256));
        v168 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v171 = AVE_Log_CheckConsole(0x10u);
      v172 = AVE_GetCurrTime();
      v173 = AVE_Log_GetLevelStr(5);
      v174 = *(a1 + 1256);
      if (v171)
      {
        printf("%lld %d AVE %s: %s:%d BFrames = %d and LowDelay is true. Default to regular BFrames case\n", v172, 16, v173, "AVE_ValidateEncoderParameters", 3627, v174);
        v175 = AVE_GetCurrTime();
        v176 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v181 = AVE_Log_CheckConsole(3u);
        v182 = AVE_GetCurrTime();
        v183 = AVE_Log_GetLevelStr(4);
        if (v181)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: input_bitdepth = %d... not supported. Fail\n", v182, 3, v183, "AVE_ValidateEncoderParameters", 3642, "(pINS->VideoParams.input_bitdepth == 8) || (pINS->VideoParams.input_bitdepth == 10)", *(a1 + 10192));
          v182 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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
  if (AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 2, *v34))
  {
    v180 = *(a1 + 76);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v184 = AVE_Log_CheckConsole(0x10u);
      v185 = AVE_GetCurrTime();
      v186 = AVE_Log_GetLevelStr(5);
      v187 = *v34;
      if (v184)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode %d not supported. Default to 0\n", v185, 16, v186, v187);
        v188 = AVE_GetCurrTime();
        v441 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v190 = AVE_Log_CheckConsole(0x10u);
      v191 = AVE_GetCurrTime();
      v192 = AVE_Log_GetLevelStr(5);
      if (v190)
      {
        printf("%lld %d AVE %s: FIG: SearchRangeMode = 7 or LRMEStandAlone or LRMERC -> must run in LRME-pipe async.\n", v191, 16, v192);
        v193 = AVE_GetCurrTime();
        v442 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v198 = AVE_Log_CheckConsole(0x10u);
      v199 = AVE_GetCurrTime();
      v200 = AVE_Log_GetLevelStr(5);
      v201 = *(a1 + 1336);
      if (v198)
      {
        printf("%lld %d AVE %s: %s:%d cu_qp_delta_enabled_flag set false and QPMod set to %x (!= 0) is not supported. Force cu_qp_delta_enabled_flag to true.\n", v199, 16, v200, "AVE_ValidateEncoderParameters", 3818, v201);
        v202 = AVE_GetCurrTime();
        v203 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v216 = AVE_Log_CheckConsole(0x10u);
        v465 = AVE_GetCurrTime();
        v217 = AVE_Log_GetLevelStr(5);
        if (v216)
        {
          printf("%lld %d AVE %s: AVE_FIG: align32MbW <= MAX_STATICAREASLOWQP_NMB_FRAME_HORIZONTAL && picHeightInMb <= MAX_STATICAREASLOWQP_NMB_FRAME_VERTICAL %d %d %d %d\n", v465, 16, v217, v214, 256, v212, 192);
          v218 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v220 = AVE_Log_CheckConsole(0x10u);
      v221 = AVE_GetCurrTime();
      v222 = AVE_Log_GetLevelStr(5);
      if (v220)
      {
        printf("%lld %d AVE %s: AVE_FIG: ui32NumCodedBuffers exceeds max allowed value of AVE_CODED_BUF_MAX_NUM (%d) Forcing to AVE_CODED_BUF_MAX_NUM\n", v221, 16, v222, 30);
        v223 = AVE_GetCurrTime();
        v443 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v225 = AVE_Log_CheckConsole(0x10u);
        v226 = AVE_GetCurrTime();
        v227 = AVE_Log_GetLevelStr(5);
        if (v225)
        {
          printf("%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false\n", v226, 16, v227, "AVE_ValidateEncoderParameters", 3932, *(a1 + 1132), *(a1 + 1336));
          v226 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d eRCMode 0x%x QPMod feature 0x%08x is not supported. Set AVE_QPMOD_FEATURE_FLAT_AREA to false", v226);
      }

      v209 = *(a1 + 1336) & 0xFFFFFFEF;
      *(a1 + 1336) = v209;
      v224 = *(a1 + 1132);
    }

    if (v224 == 100)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v228 = AVE_Log_CheckConsole(3u);
        v229 = AVE_GetCurrTime();
        v230 = AVE_Log_GetLevelStr(4);
        if (v228)
        {
          printf("%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.\n", v229, 3, v230, "AVE_ValidateEncoderParameters", 3939, "pINS->sSessionCfg.sEnc.sAlgCfg.sRC.eRCMode != AVE_RCMode_HwVal", "AVE_ValidateEncoderParameters", 3939, *(a1 + 1132), *(a1 + 1336));
          v229 = AVE_GetCurrTime();
          v230 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | %s:%d eRCMode 0x%x and AVE_QPMOD_FEATURE_FLAT_AREA (QPMod feature: 0x%08x) is not supported.", v229, 3, v230);
      }

      return 4294966295;
    }
  }

  if ((v209 & 0x8010) == 0x8000)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v231 = AVE_Log_CheckConsole(0x10u);
      v232 = AVE_GetCurrTime();
      v233 = AVE_Log_GetLevelStr(5);
      v234 = *(a1 + 1336) & 0x10;
      if (v231)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_EXT_LUMA to false\n", v232, 16, v233, v234);
        v235 = AVE_GetCurrTime();
        v444 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v236 = AVE_Log_CheckConsole(0x10u);
      v237 = AVE_GetCurrTime();
      v238 = AVE_Log_GetLevelStr(5);
      v239 = *(a1 + 1336) & 0x10;
      if (v236)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_FLAT_AREA %d -> not supported. set AVE_QPMOD_FEATURE_ULTRA_FLAT_AREA to false\n", v237, 16, v238, v239);
        v240 = AVE_GetCurrTime();
        v445 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v241 = AVE_Log_CheckConsole(0x10u);
      v242 = AVE_GetCurrTime();
      v243 = AVE_Log_GetLevelStr(5);
      v244 = *(a1 + 1336) & 4;
      v245 = *(a1 + 1336) & 0x10;
      if (v241)
      {
        printf("%lld %d AVE %s: FIG: AVE_QPMOD_FEATURE_LOW_VARIANCE = %d and requires both AVE_QPMOD_FEATURE_VARIANCE %d and AVE_QPMOD_FEATURE_FLAT_AREA %d. Forcing AVE_QPMOD_FEATURE_LOW_VARIANCE off.\n", v242, 16, v243, v244, *(a1 + 1336) & 2, v245);
        v246 = AVE_GetCurrTime();
        v247 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 6))
    {
      v251 = AVE_Log_CheckConsole(0x10u);
      v252 = AVE_GetCurrTime();
      v253 = AVE_Log_GetLevelStr(6);
      if (v251)
      {
        printf("%lld %d AVE %s: Static QP mod is disabled when lookahead RC feature is enabled\n", v252, 16, v253);
        v254 = AVE_GetCurrTime();
        v446 = AVE_Log_GetLevelStr(6);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v257 = AVE_Log_CheckConsole(0x10u);
        v258 = AVE_GetCurrTime();
        v259 = AVE_Log_GetLevelStr(5);
        v260 = *(a1 + 1132);
        if (v257)
        {
          printf("%lld %d AVE %s: FIG: i32PPSsCount (%d), eRCMode %d and scaling_list_enabled_flag is false. Not supported. Forcing i32PPSsCount to 1\n", v258, 16, v259, *(a1 + 10244), v260);
          v261 = AVE_GetCurrTime();
          v262 = AVE_Log_GetLevelStr(5);
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
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v270 = AVE_Log_CheckConsole(3u);
          v271 = AVE_GetCurrTime();
          v272 = AVE_Log_GetLevelStr(4);
          if (v270)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: PPS count = %d and ch_qp_index_offset_cnt = %d... are not compatible. fail\n", v271, 3, v272, "AVE_ValidateEncoderParameters", 4034, "pINS->VideoParams.i32PPSsCount == ch_qp_index_offset_cnt", *(a1 + 10244), v265);
            v271 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
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

    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v266 = AVE_Log_CheckConsole(0x10u);
      v267 = AVE_GetCurrTime();
      v268 = AVE_Log_GetLevelStr(5);
      if (v266)
      {
        printf("%lld %d AVE %s: MultiRef and WP not supported together. Disabling MultiRef.\n", v267, 16, v268);
        v269 = AVE_GetCurrTime();
        v447 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v274 = AVE_Log_CheckConsole(0x10u);
      v275 = AVE_GetCurrTime();
      v276 = AVE_Log_GetLevelStr(5);
      if (v274)
      {
        printf("%lld %d AVE %s: FIG: CRA not supported with no B Frames. Forcing bClosedGOP to true\n", v275, 16, v276);
        v277 = AVE_GetCurrTime();
        v448 = AVE_Log_GetLevelStr(5);
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
    if (*(a1 + 1112) <= 0 && AVE_Log_CheckLevel(0x10u, 5))
    {
      v278 = AVE_Log_CheckConsole(0x10u);
      v279 = AVE_GetCurrTime();
      v280 = AVE_Log_GetLevelStr(5);
      if (v278)
      {
        printf("%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined\n", v279, 16, v280);
        v281 = AVE_GetCurrTime();
        v449 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v281, 16, v449);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: iLayerNum > 1 and ExpectedFR is not set, behavior is undefined", v279, 16, v280);
      }
    }

    if ((*(a1 + 1088) & 2) != 0)
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v282 = AVE_Log_CheckConsole(0x10u);
        v283 = AVE_GetCurrTime();
        v284 = AVE_Log_GetLevelStr(5);
        if (v282)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to disable FrameDrop\n", v283, 16, v284);
          v285 = AVE_GetCurrTime();
          v450 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v286 = AVE_Log_CheckConsole(0x10u);
        v287 = AVE_GetCurrTime();
        v288 = AVE_Log_GetLevelStr(5);
        if (v286)
        {
          printf("%lld %d AVE %s: FIG: MV-HEVC force to Frame Encoding mode\n", v287, 16, v288);
          v289 = AVE_GetCurrTime();
          v451 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v290 = AVE_Log_CheckConsole(3u);
        v291 = AVE_GetCurrTime();
        v292 = AVE_Log_GetLevelStr(4);
        if (v290)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass\n", v291, 3, v292, "AVE_ValidateEncoderParameters", 4108, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Multipass");
      }

      return 4294965294;
    }

    if (*(a1 + 11776) == 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v293 = AVE_Log_CheckConsole(3u);
        v294 = AVE_GetCurrTime();
        v295 = AVE_Log_GetLevelStr(4);
        if (v293)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization\n", v294, 3, v295, "AVE_ValidateEncoderParameters", 4114, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support Parallelization");
      }

      return 4294965294;
    }

    v296 = *(a1 + 1132);
    if (v296 == 4 || v296 == 2 && (*(a1 + 1123) & 0x80) == 0)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v297 = AVE_Log_CheckConsole(3u);
        v298 = AVE_GetCurrTime();
        v299 = AVE_Log_GetLevelStr(4);
        if (v297)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR\n", v298, 3, v299, "AVE_ValidateEncoderParameters", 4122, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support DRL/CBR");
      }

      return 4294965294;
    }

    if (*(a1 + 11460) >= 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v300 = AVE_Log_CheckConsole(3u);
        v301 = AVE_GetCurrTime();
        v302 = AVE_Log_GetLevelStr(4);
        if (v300)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate\n", v301, 3, v302, "AVE_ValidateEncoderParameters", 4128, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support BaseLayerFrameRate");
      }

      return 4294965294;
    }

    if (*(a1 + 24688) != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v307 = AVE_Log_CheckConsole(3u);
        v308 = AVE_GetCurrTime();
        v309 = AVE_Log_GetLevelStr(4);
        if (v307)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: MV-HEVC does not support ChromaFmt_400, ChromaFmt_422, or ChromaFmt_444\n", v308, 3, v309, "AVE_ValidateEncoderParameters", 4135, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
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
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v304 = AVE_Log_CheckConsole(0x1Eu);
        v305 = AVE_GetCurrTime();
        v306 = AVE_Log_GetLevelStr(4);
        if (v304)
        {
          printf("%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d\n", v305, 30, v306, "AVE_ValidateEncoderParameters", 4145, "pINS->VPSHevcParams.layer_id_in_nuh[0] == 0", *v303);
          v305 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | non-zero layer ID at base layer %d", v305);
      }

      return 4294965290;
    }

    if (*(a1 + 10556) >= 3u)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v315 = AVE_Log_CheckConsole(0x1Eu);
        v316 = AVE_GetCurrTime();
        v317 = AVE_Log_GetLevelStr(4);
        if (v315)
        {
          printf("%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d\n", v316, 30, v317, "AVE_ValidateEncoderParameters", 4150, "pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556), 2);
          v316 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | video layer number %d is larger than MAX %d", v316);
      }

      return 4294965291;
    }

    v310 = *(a1 + 15639);
    if (!*(a1 + 15639))
    {
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v311 = AVE_Log_CheckConsole(0x10u);
        v312 = AVE_GetCurrTime();
        v313 = AVE_Log_GetLevelStr(5);
        if (v311)
        {
          printf("%lld %d AVE %s: kVTCompressionPropertyKey_MVHEVCViewIDs never received, setting default values\n", v312, 16, v313);
          v314 = AVE_GetCurrTime();
          v452 = AVE_Log_GetLevelStr(5);
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
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v422 = AVE_Log_CheckConsole(3u);
            v423 = AVE_GetCurrTime();
            v424 = AVE_Log_GetLevelStr(4);
            if (v422)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: LeftRightID %d not found in viewID list\n", v423, 3, v424, "AVE_ValidateEncoderParameters", 4179, "bFound", *(v321 + v320));
              v423 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v330 = AVE_Log_CheckConsole(0x10u);
        v466 = AVE_GetCurrTime();
        v331 = AVE_Log_GetLevelStr(5);
        v332 = *(a1 + 16);
        v333 = *(a1 + 11460);
        if (v330)
        {
          printf("%lld %d AVE %s: FIG: %p: ExpectedFrameRate %d is not multiple of BaseLayerFrameRate %d\n", v466, 16, v331, v332, *(a1 + 1112), v333);
          v334 = AVE_GetCurrTime();
          v335 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v337 = AVE_Log_CheckConsole(0x10u);
        v338 = AVE_GetCurrTime();
        v339 = AVE_Log_GetLevelStr(5);
        v340 = *(a1 + 1288);
        if (v337)
        {
          printf("%lld %d AVE %s: FIG: NumOfTempLayer set to %d but BaseLayerFrameRate not specified. Encoder has to turn off hierarchical encoding\n", v338, 16, v339, v340);
          v341 = AVE_GetCurrTime();
          v453 = AVE_Log_GetLevelStr(5);
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
      v343 = AVE_Log_CheckLevel(0x10u, 5);
      v336 = v329;
      if (v343)
      {
        v344 = AVE_Log_CheckConsole(0x10u);
        v345 = AVE_GetCurrTime();
        v346 = AVE_Log_GetLevelStr(5);
        if (v344)
        {
          printf("%lld %d AVE %s: FIG: NumberOfTemporalLayers value is not optimal. Overriding with optimal value. calculatedNumTemporalLayers %d\n", v345, 16, v346, v329);
          v347 = AVE_GetCurrTime();
          v454 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v349 = AVE_Log_CheckConsole(0x10u);
      v350 = AVE_GetCurrTime();
      v351 = AVE_Log_GetLevelStr(5);
      v352 = *(a1 + 1288);
      if (v349)
      {
        printf("%lld %d AVE %s: NumberOfTemporalLayers is %d and we are encoding multiple layers. Setting NumberOfTemporalLayers to 1\n", v350, 16, v351, v352);
        v353 = AVE_GetCurrTime();
        v455 = AVE_Log_GetLevelStr(5);
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

  v358 = AVE_Enc_DecideThroughputMode(*(v3 + 256), *(v2 + 3200), *(a1 + 68), *(a1 + 76), *(a1 + 64), 2, *(v219 + 440), *(v2 + 1524), *(a1 + 10892), *(a1 + 692), *(a1 + 1112) * ((*(a1 + 1440) + 15) >> 4) * ((*(a1 + 1444) + 15) >> 4), *(a1 + 1440), *(a1 + 1444));
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
            if (AVE_Log_CheckLevel(0x10u, 5))
            {
              v369 = AVE_Log_CheckConsole(0x10u);
              v370 = AVE_GetCurrTime();
              v371 = AVE_Log_GetLevelStr(5);
              if (v369)
              {
                printf("%lld %d AVE %s: %s:%d Disable B frames for encoding %dx%d frames at %dfps with MCTF to achieve realtime performance.\n", v370, 16, v371, "AVE_ValidateEncoderParameters", 4530, *(a1 + 1440), *(a1 + 1444), *(a1 + 1112));
                v370 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(5);
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
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294966295;
      }

      v372 = AVE_Log_CheckConsole(3u);
      v51 = AVE_GetCurrTime();
      v373 = AVE_Log_GetLevelStr(4);
      if (v372)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF for ChromaFmt %d... not supported. Fail\n", v51, 3, v373, "AVE_ValidateEncoderParameters", 4512, "false", *(v467 + 440));
        v51 = AVE_GetCurrTime();
        v373 = AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v364 = AVE_Log_CheckConsole(3u);
      v365 = AVE_GetCurrTime();
      v366 = AVE_Log_GetLevelStr(4);
      if (v364)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: MCTF unsupported for MV-HEVC. Fail\n", v365, 3, v366, "AVE_ValidateEncoderParameters", 4501, "false");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v374 = AVE_Log_CheckConsole(0x10u);
      v375 = AVE_GetCurrTime();
      v376 = AVE_Log_GetLevelStr(5);
      v377 = *(a1 + 16);
      v378 = *(a1 + 1396);
      if (v374)
      {
        printf("%lld %d AVE %s: FIG: %p: iMaxNextRefNum %d: Disabling iRampUpFrameNum (Currently %d)\n", v375, 16, v376, v377, *(a1 + 1392), v378);
        v379 = AVE_GetCurrTime();
        v380 = AVE_Log_GetLevelStr(5);
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
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v384 = AVE_Log_CheckConsole(0x10u);
      v385 = AVE_GetCurrTime();
      v386 = AVE_Log_GetLevelStr(5);
      if (v384)
      {
        printf("%lld %d AVE %s: FIG: Force to disable Weighted Prediction\n", v385, 16, v386);
        v387 = AVE_GetCurrTime();
        v456 = AVE_Log_GetLevelStr(5);
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
      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v389 = AVE_Log_CheckConsole(0x10u);
        v390 = AVE_GetCurrTime();
        v391 = AVE_Log_GetLevelStr(5);
        if (v389)
        {
          printf("%lld %d AVE %s: FIG: Only one slice. Force to Frame Encoding Mode\n", v390, 16, v391);
          v392 = AVE_GetCurrTime();
          v457 = AVE_Log_GetLevelStr(5);
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

      if (AVE_Log_CheckLevel(0x10u, 5))
      {
        v397 = AVE_Log_CheckConsole(0x10u);
        v398 = AVE_GetCurrTime();
        v399 = AVE_Log_GetLevelStr(5);
        if (v397)
        {
          printf("%lld %d AVE %s: FIG: Slice Parameters Invalid. slice[%d] iY: %d, iHeight: %d, frame height: %d, Force to Frame Encoding\n", v398, 16, v399, v393, *(v395 - 1), *v395, *(a1 + 1444));
          v398 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
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
  if (AVE_CheckQP(*(a1 + 1144), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v404 = AVE_Log_CheckConsole(3u);
      v405 = AVE_GetCurrTime();
      v406 = AVE_Log_GetLevelStr(4);
      if (v404)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d\n", v405, 3, v406, "AVE_ValidateEncoderParameters", 4725, "false", *(a1 + 1144));
        v405 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpI %d", v405);
    }

    return 4294966295;
  }

  if (AVE_CheckQP(*(a1 + 1148), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v407 = AVE_Log_CheckConsole(3u);
      v408 = AVE_GetCurrTime();
      v409 = AVE_Log_GetLevelStr(4);
      if (v407)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d\n", v408, 3, v409, "AVE_ValidateEncoderParameters", 4730, "false", *(a1 + 1148));
        v408 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpP %d", v408);
    }

    return 4294966295;
  }

  if (AVE_CheckQP(*(a1 + 1152), *(a1 + 24732) + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v410 = AVE_Log_CheckConsole(3u);
      v411 = AVE_GetCurrTime();
      v412 = AVE_Log_GetLevelStr(4);
      if (v410)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d\n", v411, 3, v412, "AVE_ValidateEncoderParameters", 4735, "false", *(a1 + 1152));
        v411 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: Invalid InitialQpB %d", v411);
    }

    return 4294966295;
  }

  v413 = *(a1 + 1264) != 1 || *(a1 + 10560) != 1;
  if (AVE_Enc_CheckResolution(*(a1 + 68), 1, 2, *(a1 + 1440), *(a1 + 1444), v413))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v414 = AVE_Log_CheckConsole(3u);
      v415 = AVE_GetCurrTime();
      v416 = AVE_Log_GetLevelStr(4);
      if (v414)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.\n", v415, 3, v416, "AVE_ValidateEncoderParameters", 4748, "false", *(a1 + 1440), *(a1 + 1444), *(a1 + 1264));
        v415 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: dimensions (%dx%d) not supported %d.", v415, 3);
    }

    return 4294966295;
  }

  if ((*(a1 + 39961) & 1) == 0 && *(a1 + 76) <= 29)
  {
    if (AVE_Log_CheckLevel(0x10u, 5))
    {
      v417 = AVE_Log_CheckConsole(0x10u);
      v418 = AVE_GetCurrTime();
      v419 = AVE_Log_GetLevelStr(5);
      if (v417)
      {
        printf("%lld %d AVE %s: %s:%d entropy_coding_sync_enabled_flag has to be enabled.\n", v418, 16, v419, "AVE_ValidateEncoderParameters", 4757);
        v420 = AVE_GetCurrTime();
        v458 = AVE_Log_GetLevelStr(5);
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