uint64_t AVE_Prop_AVC_SetVBVMaxBitRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  v8 = AVE_DW_Get();
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = v8;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr + 4);
      v11 = HIDWORD(valuePtr);
      if (valuePtr <= 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVMaxBitRate", 2063, "iVBVMaxBitRate > 0", a1, a1[7], a2, a3, a4, HIDWORD(valuePtr));
            v30 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v30, 30, v37, "AVE_Prop_AVC_SetVBVMaxBitRate", 2063, "iVBVMaxBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVMaxBitRate", 2063, "iVBVMaxBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4207) = HIDWORD(valuePtr);
        v12 = AVE_RC_DecideVBVMaxBitRate(v9[206], v11, &valuePtr);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v14 = AVE_Log_CheckConsole(0x1Eu);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %p %p %p %d %d\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVMaxBitRate", 2070, "ret == 0", a1, a1[7], a2, a3, a4, v9[206], HIDWORD(valuePtr));
              v17 = AVE_GetCurrTime();
              v35 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %p %p %p %d %d", v17, 30, v35, "AVE_Prop_AVC_SetVBVMaxBitRate", 2070, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %p %p %p %d %d", v15, 30, v16, "AVE_Prop_AVC_SetVBVMaxBitRate", 2070, "ret == 0");
            }
          }
        }

        else
        {
          *(a1 + 302) = valuePtr;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v31 = AVE_Log_CheckConsole(0x1Eu);
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(7);
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v32, 30, v33, a1, a1[7], *a2, HIDWORD(valuePtr), valuePtr);
              v32 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v32);
          }

          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = a1[7];
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVMaxBitRate", 2054, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVMaxBitRate", 2054, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVMaxBitRate", 2044, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v36, "AVE_Prop_AVC_SetVBVMaxBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetVBVMaxBitRate");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_AVC_GetVBVMaxBitRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[302];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVMaxBitRate", 2113, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetVBVMaxBitRate", 2113, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetVBVMaxBitRate", 2113, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVMaxBitRate", 2103, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVBVMaxBitRate", 2103);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVBVMaxBitRate", 2103);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVBVBufferDuration(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  v8 = AVE_DW_Get();
  v38 = 0.0;
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = v8;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v11 = valuePtr;
      if (valuePtr <= 0.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVBufferDuration", 2167, "fVBVBufferDuration > 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v30 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v30, 30, v37, "AVE_Prop_AVC_SetVBVBufferDuration", 2167);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVBufferDuration", 2167);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 2104) = valuePtr;
        v12 = AVE_RC_DecideVBVBufferSize(v9[104], *(a1 + 2233), v11, *(a1 + 140), &v38);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v14 = AVE_Log_CheckConsole(0x1Eu);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVBufferDuration", 2177, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v9[104], *(a1 + 2233), valuePtr, *(a1 + 140));
              v17 = AVE_GetCurrTime();
              v35 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx", v17, 30, v35, "AVE_Prop_AVC_SetVBVBufferDuration", 2177, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx", v15, 30, v16, "AVE_Prop_AVC_SetVBVBufferDuration", 2177, "ret == 0");
            }
          }
        }

        else
        {
          *(a1 + 152) = v38;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v31 = AVE_Log_CheckConsole(0x1Eu);
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(7);
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v32, 30, v33, a1, *(a1 + 7), *a2, valuePtr, v38);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 7);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVBufferDuration", 2158, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVBufferDuration", 2158, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVBufferDuration", 2148, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v36, "AVE_Prop_AVC_SetVBVBufferDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetVBVBufferDuration");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_AVC_GetVBVBufferDuration(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[152];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVBufferDuration", 2221, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetVBVBufferDuration", 2221, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetVBVBufferDuration", 2221, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVBufferDuration", 2211, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVBVBufferDuration", 2211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVBVBufferDuration", 2211);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVBVInitialDelayPercentage(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  v8 = AVE_DW_Get();
  v38 = 0.0;
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = v8;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v11 = valuePtr;
      if (valuePtr < 0.0 || valuePtr > 100.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2275, "fVBVInitialDelayPercentage >= 0.0 && fVBVInitialDelayPercentage <= 100.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v30 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]", v30, 30, v37, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2275);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2275);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 2105) = valuePtr;
        v12 = AVE_RC_DecideVBVInitialDelay(v9[105], *(a1 + 2234), v11, *(a1 + 152), *(a1 + 140), &v38);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v14 = AVE_Log_CheckConsole(0x1Eu);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2289, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v9[105], *(a1 + 2234), valuePtr, *(a1 + 152), *(a1 + 140));
              v17 = AVE_GetCurrTime();
              v35 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx", v17, 30, v35, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2289, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx", v15, 30, v16, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2289, "ret == 0");
            }
          }
        }

        else
        {
          *(a1 + 153) = v38;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v31 = AVE_Log_CheckConsole(0x1Eu);
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(7);
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v32, 30, v33, a1, *(a1 + 7), *a2, valuePtr, v38);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 7);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2266, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2266, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2256, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v36, "AVE_Prop_AVC_SetVBVInitialDelayPercentage");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetVBVInitialDelayPercentage");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_AVC_GetVBVInitialDelayPercentage(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[153] * 100.0 / a1[152];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2333, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2333, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2333, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2322, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2322);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2322);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQuality(double *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0.0 || valuePtr > 1.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQuality", 2384, "fQuality >= 0.0 && fQuality <= 1.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v26, 30, v31, "AVE_Prop_AVC_SetQuality", 2384);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQuality", 2384);
          }
        }

        return 4294965292;
      }

      else
      {
        a1[2106] = valuePtr;
        if (AVE_AVC_SetQuality(a1, v9) && AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(5);
          if (v10)
          {
            printf("%lld %d AVE %s: fail to set value %p %lld %p %p %p %f\n", v11, 30, v12, a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v11 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
          }

          syslog(3, "%lld %d AVE %s: fail to set value %p %lld %p %p %p %f", v11, 30);
        }

        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(7);
          if (v27)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v28, 30, v29, a1, *(a1 + 7), *a2, valuePtr);
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v20 = *(a1 + 7);
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetQuality", 2375, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetQuality", 2375, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetQuality", 2365, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v30, "AVE_Prop_AVC_SetQuality");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetQuality");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetQuality(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2106];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetQuality", 2436, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetQuality", 2436, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetQuality", 2436, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQuality", 2425, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetQuality", 2425);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetQuality", 2425);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetConstantQualityFactor(double *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr < 0.0 || valuePtr > 1.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v24 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetConstantQualityFactor", 2488, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v27 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v27, 30, v33, "AVE_Prop_AVC_SetConstantQualityFactor", 2488);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetConstantQualityFactor", 2488);
          }
        }

        return 4294965292;
      }

      else
      {
        a1[2107] = valuePtr;
        if (AVE_AVC_SetCQFactor(a1, v9) && AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(5);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_AVC_SetConstantQualityFactor", 2495, a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v13 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f", v13, 30, v31, "AVE_Prop_AVC_SetConstantQualityFactor");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_AVC_SetConstantQualityFactor");
          }
        }

        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(7);
          if (v28)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v29, 30, v30, a1, *(a1 + 7), *a2, valuePtr);
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
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
        v21 = *(a1 + 7);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetConstantQualityFactor", 2479, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetConstantQualityFactor", 2479, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetConstantQualityFactor", 2469, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v32, "AVE_Prop_AVC_SetConstantQualityFactor");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetConstantQualityFactor");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetConstantQualityFactor(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2107];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetConstantQualityFactor", 2540, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetConstantQualityFactor", 2540, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetConstantQualityFactor", 2540, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetConstantQualityFactor", 2529, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetConstantQualityFactor", 2529);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetConstantQualityFactor", 2529);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMultiPassStorage(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = VTMultiPassStorageGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v20 = a1[7];
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMultiPassStorage", 2583, "VTMultiPassStorageGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMultiPassStorage", 2583, "VTMultiPassStorageGetTypeID() == CFGetTypeID(pValue)");
      }

      v22 = 4294965293;
      goto LABEL_28;
    }

    if (a1[2062])
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v9 = AVE_Log_CheckConsole(0x1Eu);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p\n", v10, 30, v11, "AVE_Prop_AVC_SetMultiPassStorage", 2588, "psINS->multiPassStorage == __null", a1, a1[7], a2, a3, a4, a1[2062]);
          v12 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p", v12, 30, v37, "AVE_Prop_AVC_SetMultiPassStorage", 2588, "psINS->multiPassStorage == __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p", v10, 30, v11, "AVE_Prop_AVC_SetMultiPassStorage", 2588, "psINS->multiPassStorage == __null");
        }
      }

      v22 = 4294966276;
LABEL_28:
      v28 = a1[2062];
      if (v28)
      {
        CFRelease(v28);
        a1[2062] = 0;
      }

      return v22;
    }

    v23 = CFRetain(a4);
    a1[2062] = v23;
    if (!v23)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | VTMultiPassStorageRef == NULL %p %lld %p %p %p\n", v31, 30, v32, "AVE_Prop_AVC_SetMultiPassStorage", 2597, "psINS->multiPassStorage != __null", a1, a1[7], a2, a3, a4);
          v33 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | VTMultiPassStorageRef == NULL %p %lld %p %p %p", v33, 30, v40, "AVE_Prop_AVC_SetMultiPassStorage", 2597);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | VTMultiPassStorageRef == NULL %p %lld %p %p %p", v31, 30, v32, "AVE_Prop_AVC_SetMultiPassStorage", 2597);
        }
      }

      v22 = 4294965292;
      goto LABEL_28;
    }

    if (VTMultiPassStorageSetIdentifier())
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | VTMultiPassStorageSetIdentifier failed %p %lld %p %p %p %p\n", v25, 30, v26, "AVE_Prop_AVC_SetMultiPassStorage", 2602, "err == noErr", a1, a1[7], a2, a3, a4, a1[2062]);
          v27 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | VTMultiPassStorageSetIdentifier failed %p %lld %p %p %p %p", v27, 30, v39, "AVE_Prop_AVC_SetMultiPassStorage", 2602, "err == noErr");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | VTMultiPassStorageSetIdentifier failed %p %lld %p %p %p %p", v25, 30, v26, "AVE_Prop_AVC_SetMultiPassStorage", 2602, "err == noErr");
        }
      }

      v22 = 4294966296;
      goto LABEL_28;
    }

    *(a1 + 192) = 2;
    if (AVE_Log_CheckLevel(0x1Eu, 7))
    {
      v34 = AVE_Log_CheckConsole(0x1Eu);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      if (v34)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %p\n", v35, 30, v36, a1, a1[7], *a2, a1[2062]);
        v35 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %p", v35);
    }

    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetMultiPassStorage", 2573, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v38, "AVE_Prop_AVC_SetMultiPassStorage");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetMultiPassStorage");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetMultiPassStorage(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[2062];
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a5 = v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, a5);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetMultiPassStorage", 2643, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMultiPassStorage", 2643);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetMultiPassStorage", 2643);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLookAheadFrames(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr & 0x80000000) != 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetLookAheadFrames", 2705, "iLAFrameCnt >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v31, "AVE_Prop_AVC_SetLookAheadFrames", 2705, "iLAFrameCnt >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetLookAheadFrames", 2705, "iLAFrameCnt >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        if (valuePtr >= 0x15)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 5))
          {
            v10 = AVE_Log_CheckConsole(0x1Eu);
            v11 = AVE_GetCurrTime();
            v12 = AVE_Log_GetLevelStr(5);
            if (v10)
            {
              printf("%lld %d AVE %s: Cap kVTCompressionPropertyKey_SuggestedLookAheadFrameCount from %d to %d\n", v11, 30, v12, valuePtr, 20);
              v11 = AVE_GetCurrTime();
              v12 = AVE_Log_GetLevelStr(5);
            }

            syslog(3, "%lld %d AVE %s: Cap kVTCompressionPropertyKey_SuggestedLookAheadFrameCount from %d to %d", v11, 30, v12, valuePtr, 20);
          }

          v9 = 20;
          valuePtr = 20;
        }

        *(a1 + 4216) = v9;
        *(a1 + 282) = v9;
        a1[140] |= 0x80000000uLL;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(7);
          if (v27)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v28, 30, v29, a1, a1[7], *a2, valuePtr);
            v28 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v28);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v20 = a1[7];
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetLookAheadFrames", 2696, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetLookAheadFrames", 2696, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetLookAheadFrames", 2686, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v30, "AVE_Prop_AVC_SetLookAheadFrames");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetLookAheadFrames");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLookAheadFrames(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[282];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetLookAheadFrames", 2760, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetLookAheadFrames", 2760, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetLookAheadFrames", 2760, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLookAheadFrames", 2750, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetLookAheadFrames", 2750);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetLookAheadFrames", 2750);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr <= 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2812, "iFrameRateTargetForBitRate > 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2812, "iFrameRateTargetForBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2812, "iFrameRateTargetForBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4217) = valuePtr;
        *(a1 + 2862) = v9;
        a1[140] |= 0x10uLL;
        a1[137] |= 0x2000000000uLL;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2803, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2803, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2793, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2862];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2861, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2861, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2861, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2850, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2850);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2850);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetPerceptualQualityOptimization(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4218] = v10;
      v11 = a1[334];
      if (Value)
      {
        a1[334] = v11 | 0x8000;
      }

      else
      {
        a1[334] = v11 & 0xFFFF7FFF;
        *(a1 + 140) |= 0x8000000uLL;
      }

      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
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
        v16 = AVE_Log_CheckConsole(0x1Eu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        v19 = *(a1 + 7);
        v20 = CFGetTypeID(a4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v17, 30, v18, "AVE_Prop_AVC_SetPerceptualQualityOptimization", 2904, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v19, a2, a3, a4, v20);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v17, 30, v18, "AVE_Prop_AVC_SetPerceptualQualityOptimization", 2904, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_SetPerceptualQualityOptimization", 2894, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v25, "AVE_Prop_AVC_SetPerceptualQualityOptimization");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v14, "AVE_Prop_AVC_SetPerceptualQualityOptimization");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetPerceptualQualityOptimization(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x8000;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = v10 >> 15;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v16);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetPerceptualQualityOptimization", 2951, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetPerceptualQualityOptimization", 2951);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetPerceptualQualityOptimization", 2951);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr < 0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v22 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 3009, "ConvergenceDurationForAverageDataRate >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v25 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v25, 30, v27, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 3009, "ConvergenceDurationForAverageDataRate >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 3009, "ConvergenceDurationForAverageDataRate >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4219) = valuePtr;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(7);
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v11, 30, v12, a1, a1[7], *a2, valuePtr);
            v11 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v11);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v20 = a1[7];
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 2999, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 2999, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 2989, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v26, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[4219];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3057, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3057, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3057, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3045, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3045);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3045);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableWeightedPrediction(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4220] = v10;
      v11 = a1[324] & 0xFFFFFFFE;
      if (Value)
      {
        ++v11;
      }

      a1[324] = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
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
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *(a1 + 7);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableWeightedPrediction", 3100, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableWeightedPrediction", 3100, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableWeightedPrediction", 3090, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v25, "AVE_Prop_AVC_SetEnableWeightedPrediction");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetEnableWeightedPrediction");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableWeightedPrediction(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[324] & 1;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableWeightedPrediction", 3145, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetEnableWeightedPrediction", 3145);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableWeightedPrediction", 3145);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMoreFramesAfterEnd(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4221] = v9;
      *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFF7 | (8 * v9);
      a1[2944] = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesAfterEnd", 3193, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesAfterEnd", 3193, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMoreFramesAfterEnd", 3183, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetMoreFramesAfterEnd");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMoreFramesAfterEnd");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMoreFramesAfterEnd(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 8;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 3);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMoreFramesAfterEnd", 3239, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetMoreFramesAfterEnd", 3239);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMoreFramesAfterEnd", 3239);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMoreFramesBeforeStart(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4222] = v9;
      a1[2944] = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesBeforeStart", 3287, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesBeforeStart", 3287, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMoreFramesBeforeStart", 3277, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetMoreFramesBeforeStart");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMoreFramesBeforeStart");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMoreFramesBeforeStart(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[4222];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 <= 0)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMoreFramesBeforeStart", 3326, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetMoreFramesBeforeStart", 3326);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMoreFramesBeforeStart", 3326);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRecommendedParallelizationLimit(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFNumberRef *a5)
{
  v10 = AVE_DW_Get();
  if (a1 && a2 && a4 && a5)
  {
    v11 = v10[212];
    v12 = AVE_DevCap_Find(a1[17]);
    if (v12)
    {
      if (!v11)
      {
        v11 = *(*(v12 + 2) + 4);
      }

      valuePtr = v11;
      v13 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr);
      if (v13)
      {
        v14 = v13;
        *a5 = v13;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v16 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v14);
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
          v27 = AVE_Log_CheckConsole(0x1Eu);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3382, "pNum != __null", a1, *(a1 + 7), a2, a3, a4, a5, valuePtr);
            v30 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v30, 30, v33, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3382, "pNum != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3382, "pNum != __null", a1);
          }
        }

        return 4294966293;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3375, "pDevCap != __null", a1, a2, a3, a4, a5);
          v26 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p", v26, 30, v32, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3375);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p", v24, 30, v25, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3375);
        }
      }

      return 4294966294;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3367, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v31, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3367);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3367);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumDuration(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFDictionaryRef *a5)
{
  v10 = AVE_DW_Get();
  if (a1 && a2 && a4 && a5)
  {
    v11 = *(v10 + 108);
    if (v11)
    {
      v12 = 1000 * v11;
    }

    else
    {
      v12 = 30000;
    }

    time.value = v12;
    *&time.timescale = 0x1000003E8;
    time.epoch = 0;
    *a5 = CMTimeCopyAsDictionary(&time, a3);
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v12, 1000, 1, 0);
        v17 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld", v17, 30, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld", CurrTime, 30, LevelStr);
      }

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
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3416, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v23, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3416);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3416);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFNumberRef *a5)
{
  v10 = AVE_DW_Get();
  if (a1 && a2 && a4 && a5)
  {
    v11 = *(v10 + 107);
    if (!v11)
    {
      v11 = 900;
    }

    valuePtr = v11;
    v12 = CFNumberCreate(a3, kCFNumberSInt64Type, &valuePtr);
    if (v12)
    {
      v13 = v12;
      *a5 = v12;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v15 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v13);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", CurrTime, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v23, 30, v24, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3471, "pNum != __null", a1, a1[7], a2, a3, a4, a5, valuePtr);
          v25 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v25, 30, v27, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3471, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld", v23, 30, v24, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3471, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3461, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v26, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3461);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3461);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetAllowTemporalCompression(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4223] = v10;
      if (!Value)
      {
        a1[313] = 0;
        *(a1 + 158) = 1;
        *(a1 + 159) = 0xBFF0000000000000;
        *(a1 + 160) = 0xBFF0000000000000;
      }

      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
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
        v19 = AVE_Log_CheckConsole(0x1Eu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *(a1 + 7);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_AVC_SetAllowTemporalCompression", 3514, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_AVC_SetAllowTemporalCompression", 3514, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetAllowTemporalCompression", 3504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v24, "AVE_Prop_AVC_SetAllowTemporalCompression");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_SetAllowTemporalCompression");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetAllowTemporalCompression(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[316];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 == 1)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 1;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetAllowTemporalCompression", 3563, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetAllowTemporalCompression", 3563);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetAllowTemporalCompression", 3563);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetAllowFrameReordering(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4224] = v10;
      if (Value)
      {
        if (a1[314] <= 0)
        {
          a1[314] = 3;
        }
      }

      else
      {
        *(a1 + 157) = 0x100000000;
        a1[322] = 1;
        a1[310] &= ~0x400u;
      }

      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v21)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
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
        v15 = AVE_Log_CheckConsole(0x1Eu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v18 = *(a1 + 7);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetAllowFrameReordering", 3611, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = AVE_GetCurrTime();
          v17 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetAllowFrameReordering", 3611, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetAllowFrameReordering", 3601, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v24, "AVE_Prop_AVC_SetAllowFrameReordering");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_AVC_SetAllowFrameReordering");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetAllowFrameReordering(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[314];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 <= 0)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetAllowFrameReordering", 3663, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetAllowFrameReordering", 3663);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetAllowFrameReordering", 3663);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMaxKeyFrameInterval(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3720, "iMaxKeyFrameInterval >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3720, "iMaxKeyFrameInterval >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3720, "iMaxKeyFrameInterval >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4225) = valuePtr;
        *(a1 + 316) = v9;
        if (v9 == 1)
        {
          *(a1 + 313) = 0;
        }

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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3711, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3711, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3701, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetMaxKeyFrameInterval");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMaxKeyFrameInterval");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaxKeyFrameInterval(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[316];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3770, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3770, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3770, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3760, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3760);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3760);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetStrictKeyFrameInterval(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3822, "iStrictKeyFrameInterval >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3822, "iStrictKeyFrameInterval >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3822, "iStrictKeyFrameInterval >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4226) = valuePtr;
        *(a1 + 317) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3813, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3813, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3803, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetStrictKeyFrameInterval");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetStrictKeyFrameInterval");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetStrictKeyFrameInterval(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[317];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3868, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3868, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3868, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3858, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3858);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3858);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration(double *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0.0)
      {
        a1[2114] = valuePtr;
        a1[159] = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v24 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v24)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3920, "fMaxKeyFrameIntervalDuration >= 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v13 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v13, 30, v27, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3920);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3920);
          }
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3911, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3911, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3901, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v28, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[159];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3967, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3967, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3967, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3956, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3956);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3956);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration(double *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0.0)
      {
        a1[2115] = valuePtr;
        a1[160] = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v24 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v24)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4020, "fStrictKeyFrameIntervalDuration >= 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v13 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v13, 30, v27, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4020);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4020);
          }
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4010, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4010, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4000, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v28, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[160];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4068, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4068, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4068, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4057, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4057);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4057);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetExpectedFrameRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  v30 = 30;
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFNumberIsFloatType(a4))
      {
        CFNumberGetValue(a4, kCFNumberFloat64Type, &valuePtr);
        v9 = (valuePtr + 0.5);
        v30 = v9;
      }

      else
      {
        CFNumberGetValue(a4, kCFNumberSInt32Type, &v30);
        v9 = v30;
      }

      if ((v9 - 1) >= 0x1869F)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetExpectedFrameRate", 4128, "0 < frameRate && frameRate < 100000", a1, a1[7], a2, a3, a4, v30, 0, 100000);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v26, 30, v28, "AVE_Prop_AVC_SetExpectedFrameRate", 4128, "0 < frameRate && frameRate < 100000", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetExpectedFrameRate", 4128, "0 < frameRate && frameRate < 100000", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4232) = v9;
        *(a1 + 278) = v9;
        if ((*(a1 + 10783) & 1) == 0)
        {
          *(a1 + 284) = *(a1 + 284) * v9 / 30;
        }

        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v20 = AVE_Log_CheckConsole(0x1Eu);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(7);
          if (v20)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v21, 30, v22, a1, a1[7], *a2, v30);
            v21 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v21);
          return 0;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v14 = AVE_Log_CheckConsole(0x1Eu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v17 = a1[7];
        v18 = CFGetTypeID(a4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetExpectedFrameRate", 4112, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_AVC_SetExpectedFrameRate", 4112, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x1Eu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_AVC_SetExpectedFrameRate", 4102, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v27, "AVE_Prop_AVC_SetExpectedFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_AVC_SetExpectedFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetExpectedFrameRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[278];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetExpectedFrameRate", 4182, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetExpectedFrameRate", 4182, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetExpectedFrameRate", 4182, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetExpectedFrameRate", 4172, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetExpectedFrameRate", 4172);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetExpectedFrameRate", 4172);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetAverageNonDroppableFrameRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4238, "AverageNonDroppableFrameRate >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4238, "AverageNonDroppableFrameRate >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4238, "AverageNonDroppableFrameRate >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4233) = valuePtr;
        *(a1 + 2865) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4229, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4229, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4219, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetAverageNonDroppableFrameRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2865];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4285, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4285, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4285, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4274, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4274);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4274);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetAllowOpenGOP(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4234] = v9;
      a1[310] = a1[310] & 0xFFFFFEFF | (v9 << 8);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAllowOpenGOP", 4327, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAllowOpenGOP", 4327, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAllowOpenGOP", 4317, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetAllowOpenGOP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetAllowOpenGOP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetAllowOpenGOP(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[310] & 0x100;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = v10 >> 8;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v16);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetAllowOpenGOP", 4372, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetAllowOpenGOP", 4372);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetAllowOpenGOP", 4372);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMaxFrameDelayCount(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if ((a1[179] & 0x3C0) != 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    valuePtr = v10 + a1[314];
    v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      *a5 = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v14 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v12);
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
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4423, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v24 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v24, 30, v26, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4423, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4423, "pNum != __null", a1);
        }
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4411, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v25, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4411);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4411);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSpatialAdaptiveQPLevel(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 1) >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4477, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1, a1[7], a2, a3, a4, valuePtr, -1, 0);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4477, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4477, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4235) = valuePtr;
        if (!v9)
        {
          a1[167] = 0;
        }

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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4466, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4466, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4456, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSpatialAdaptiveQPLevel(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  valuePtr = -1;
  if (a1 && a2 && a4 && a5)
  {
    if (!a1[334])
    {
      valuePtr = 0;
    }

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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4533, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4533, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4533, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4519, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4519);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4519);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableMBInputCtrl(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4252] = v9;
      a1[334] = a1[334] & 0xFFFEFFFF | (v9 << 16);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableMBInputCtrl", 4576, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableMBInputCtrl", 4576, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableMBInputCtrl", 4566, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnableMBInputCtrl");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableMBInputCtrl");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableMBInputCtrl(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x10000;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = HIWORD(v10);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v16);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableMBInputCtrl", 4621, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnableMBInputCtrl", 4621);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnableMBInputCtrl", 4621);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetUserDPBFramesForFaceTime(void *a1, const char **a2, const __CFString *a3, const __CFArray *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Count = CFArrayGetCount(a4);
      v10 = Count;
      if ((Count + 1) >= 0x25)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v29 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4680, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1, a1[7], a2, a3, a4, v10, 0, 34);
            v32 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v32, 30, v34, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4680, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4680, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        v11 = Count / 2;
        *(a1 + 4236) = Count / 2;
        *(a1 + 11816) = 1;
        *(a1 + 2955) = Count / 2;
        if (Count >= 2)
        {
          v12 = 0;
          v13 = a1 + 11892;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a4, v12);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, v13 - 68);
            v15 = CFArrayGetValueAtIndex(a4, v12 + 1);
            CFNumberGetValue(v15, kCFNumberSInt32Type, v13);
            v12 += 2;
            v13 += 4;
          }

          while (2 * v11 != v12);
        }

        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v16 = AVE_Log_CheckConsole(0x1Eu);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v17, 30, v18, a1, a1[7], *a2, v11);
            v17 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v17);
        }

        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = a1[7];
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4670, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4670, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4660, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v33, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetUserDPBFramesForFaceTime(int *a1, void *a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2 * a1[2955], MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      if (a1[2955] < 1)
      {
LABEL_11:
        result = 0;
        *a5 = v11;
        return result;
      }

      v12 = 0;
      v13 = a1 + 2973;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13 - 17);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v29 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v29)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4762, "pNum2 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v13);
              v32 = AVE_GetCurrTime();
              v34 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v34, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4762, "pNum2 != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4762, "pNum2 != __null", a1);
            }
          }

          CFRelease(v15);
          return 4294966293;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v15);
        CFArrayAppendValue(v11, v17);
        CFRelease(v15);
        CFRelease(v17);
        ++v12;
        ++v13;
        if (v12 >= a1[2955])
        {
          goto LABEL_11;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4754, "pNum1 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v13 - 17));
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4754, "pNum1 != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v13 - 17));
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x1Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4744, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, 2 * a1[2955]);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4744, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, (2 * a1[2955]));
    }

    return 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4734, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v33, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4734);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4734);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_SetDPBRequirements(char *a1, const char **a2, const __CFString *a3, const __CFDictionary *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (!*(a1 + 2060))
    {
      operator new();
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = *(a1 + 2060);
      if (v9)
      {
        v10 = AVE_VCP::AllocDPB(v9, a4, *(a1 + 4520), a1 + 2259);
        if (v10)
        {
          v11 = v10;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v12 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v12)
            {
              printf("%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetDPBRequirements", 4855, "ret == 0", a1, *(a1 + 7), a2, a3, a4);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetDPBRequirements", 4855, "ret == 0", a1, *(a1 + 7), a2, a3, a4);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(a4, *MEMORY[0x29EDBCDF8]);
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          *(a1 + 4238) = valuePtr;
          v28 = CFDictionaryGetValue(a4, *MEMORY[0x29EDBCDF0]);
          v29 = CFBooleanGetValue(v28);
          *(a1 + 4237) = v29;
          *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFDFLL | (32 * (v29 != 0));
          if (valuePtr)
          {
            v30 = v29;
            Count = CFArrayGetCount(*(a1 + 2259));
            v32 = valuePtr;
            if (Count == valuePtr << v30)
            {
              a1[11816] = 1;
              *(a1 + 2955) = v32;
              if (v32 >= 1)
              {
                v33 = a1 + 11892;
                v34 = 2956;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 2259), v34 - 2956);
                  *(v33 - 17) = IOSurfaceGetID(ValueAtIndex);
                  if (AVE_Log_CheckLevel(0x1Eu, 6))
                  {
                    v36 = AVE_Log_CheckConsole(0x1Eu);
                    v37 = AVE_GetCurrTime();
                    v38 = AVE_Log_GetLevelStr(6);
                    v39 = *(v33 - 17);
                    if (v36)
                    {
                      printf("%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v37, 30, v38, v34 - 2956, v39);
                      v37 = AVE_GetCurrTime();
                      v38 = AVE_Log_GetLevelStr(6);
                      v39 = *(v33 - 17);
                    }

                    syslog(3, "%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v37, 30, v38, v34 - 2956, v39);
                  }

                  if (v30)
                  {
                    v40 = CFArrayGetValueAtIndex(*(a1 + 2259), v34 + valuePtr - 2956);
                    *v33 = IOSurfaceGetID(v40);
                    if (AVE_Log_CheckLevel(0x1Eu, 6))
                    {
                      v41 = AVE_Log_CheckConsole(0x1Eu);
                      v42 = AVE_GetCurrTime();
                      v43 = AVE_Log_GetLevelStr(6);
                      v44 = v34 + valuePtr - 2956;
                      v45 = *v33;
                      if (v41)
                      {
                        printf("%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v42, 30, v43, v34 + valuePtr - 2956, v45);
                        v42 = AVE_GetCurrTime();
                        v43 = AVE_Log_GetLevelStr(6);
                        v44 = v34 + valuePtr - 2956;
                        v45 = *v33;
                      }

                      syslog(3, "%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v42, 30, v43, v44, v45);
                    }
                  }

                  v46 = v34 - 2955;
                  ++v34;
                  v33 += 4;
                }

                while (v46 < valuePtr);
              }

              v11 = 0;
            }

            else
            {
              if (AVE_Log_CheckLevel(0x1Eu, 4))
              {
                v51 = AVE_Log_CheckConsole(0x1Eu);
                v52 = AVE_GetCurrTime();
                v53 = AVE_Log_GetLevelStr(4);
                if (v51)
                {
                  printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d\n", v52, 30, v53, valuePtr);
                  v54 = AVE_GetCurrTime();
                  v61 = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d", v54, 30, v61, valuePtr);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d", v52, 30, v53, valuePtr);
                }
              }

              CFShow(a3);
              CFShow(a4);
              v11 = 4294965292;
            }
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 6))
            {
              v47 = AVE_Log_CheckConsole(0x1Eu);
              v48 = AVE_GetCurrTime();
              v49 = AVE_Log_GetLevelStr(6);
              if (v47)
              {
                printf("%lld %d AVE %s: FIG: no user DPB frames found. driver will create frames internally.\n", v48, 30, v49);
                v50 = AVE_GetCurrTime();
                v60 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: no user DPB frames found. driver will create frames internally.", v50, 30, v60);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: no user DPB frames found. driver will create frames internally.", v48, 30, v49);
              }
            }

            v11 = 0;
            a1[11816] = 1;
            *(a1 + 2955) = valuePtr;
          }

          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v55 = AVE_Log_CheckConsole(0x1Eu);
            v56 = AVE_GetCurrTime();
            v57 = AVE_Log_GetLevelStr(7);
            if (v55)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v56, 30, v57, a1, *(a1 + 7), *a2, valuePtr);
              v56 = AVE_GetCurrTime();
              v57 = AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v56, 30, v57, a1, *(a1 + 7), *a2, valuePtr);
          }
        }
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
            printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v25, 30, v26, "AVE_Prop_AVC_SetDPBRequirements", 4848, "psINS->pcVCP != __null", a1);
            v25 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v25);
        }

        return 4294966281;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v19 = AVE_Log_CheckConsole(0x1Eu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *(a1 + 7);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_AVC_SetDPBRequirements", 4845, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_AVC_SetDPBRequirements", 4845, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetDPBRequirements", 4821, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v59, "AVE_Prop_AVC_SetDPBRequirements");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_SetDPBRequirements");
      }
    }

    return 4294966295;
  }

  return v11;
}

uint64_t AVE_Prop_AVC_GetDPBRequirements(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, (a1[4238] << (a1[4237] != 0)), MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      if (a1[4238] >= 1)
      {
        v12 = 0;
        v13 = a1 + 2956;
        do
        {
          v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
          if (!v14)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v32 = AVE_Log_CheckConsole(0x1Eu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v32)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetDPBRequirements", 4968, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v13);
                v35 = AVE_GetCurrTime();
                v36 = AVE_Log_GetLevelStr(4);
                v42 = a1;
                v37 = 4968;
                goto LABEL_29;
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetDPBRequirements", 4968, "pNum != __null", a1);
            }

LABEL_33:
            CFRelease(v11);
            return 4294966293;
          }

          v15 = v14;
          CFArrayAppendValue(v11, v14);
          CFRelease(v15);
          ++v12;
          v16 = a1[4238];
          ++v13;
        }

        while (v12 < v16);
        if (a1[4237] && v16 >= 1)
        {
          v17 = 0;
          v18 = a1 + 2973;
          while (1)
          {
            v19 = CFNumberCreate(0, kCFNumberSInt32Type, v18);
            if (!v19)
            {
              break;
            }

            v20 = v19;
            CFArrayAppendValue(v11, v19);
            CFRelease(v20);
            ++v17;
            ++v18;
            if (v17 >= a1[4238])
            {
              goto LABEL_15;
            }
          }

          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v38 = AVE_Log_CheckConsole(0x1Eu);
            v39 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(4);
            if (v38)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v39, 30, v40, "AVE_Prop_AVC_GetDPBRequirements", 4988, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v18);
              v35 = AVE_GetCurrTime();
              v36 = AVE_Log_GetLevelStr(4);
              v42 = a1;
              v37 = 4988;
LABEL_29:
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_AVC_GetDPBRequirements", v37, "pNum != __null", v42);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v39, 30, v40, "AVE_Prop_AVC_GetDPBRequirements", 4988, "pNum != __null", a1);
            }
          }

          goto LABEL_33;
        }
      }

LABEL_15:
      *a5 = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(7);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 7), *a2, a1[2955], v11);
          v23 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v29 = AVE_Log_CheckConsole(0x1Eu);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_AVC_GetDPBRequirements", 4958, "p != __null", a1, *(a1 + 7), a2, allocator, a4, a5, a1[4238] << (a1[4237] != 0));
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v30, 30, v31, "AVE_Prop_AVC_GetDPBRequirements", 4958, "p != __null", a1);
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v26, 30, v27, "AVE_Prop_AVC_GetDPBRequirements", 4947, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v28 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v28, 30, v41, "AVE_Prop_AVC_GetDPBRequirements", 4947);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v26, 30, v27, "AVE_Prop_AVC_GetDPBRequirements", 4947);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetForceRefUncompresseds(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4239] = v9;
      *(a1 + 10206) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetForceRefUncompresseds", 5051, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetForceRefUncompresseds", 5051, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetForceRefUncompresseds", 5041, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetForceRefUncompresseds");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetForceRefUncompresseds");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetForceRefUncompressed(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[10206];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[10206])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetForceRefUncompressed", 5089, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetForceRefUncompressed", 5089);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetForceRefUncompressed", 5089);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableUserRefForFacetime(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4240] = v9;
      *(a1 + 11960) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableUserRefForFacetime", 5137, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableUserRefForFacetime", 5137, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableUserRefForFacetime", 5127, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnableUserRefForFacetime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableUserRefForFacetime");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableUserRefForFacetime(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[11960];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[11960])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableUserRefForFacetime", 5175, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetEnableUserRefForFacetime", 5175);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableUserRefForFacetime", 5175);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableMultiReferenceP(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4241] = v9;
      a1[327] = 2;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableMultiReferenceP", 5223, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableMultiReferenceP", 5223, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableMultiReferenceP", 5213, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnableMultiReferenceP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableMultiReferenceP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableMultiReferenceP(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[327];
    v11 = MEMORY[0x29EDB8F00];
    if (v10 <= 1)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 1;
      v14 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v13);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableMultiReferenceP", 5261, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnableMultiReferenceP", 5261);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnableMultiReferenceP", 5261);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMultiReferencePSpacing(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 8)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5320, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1, a1[7], a2, a3, a4, valuePtr, 1, 8);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5320, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5320, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4242) = valuePtr;
        *(a1 + 331) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5309, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5309, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5299, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetMultiReferencePSpacing");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMultiReferencePSpacing");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetMultiReferencePSpacing(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[331];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5366, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5366, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5366, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5356, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5356);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5356);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetUseLongTermReference(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      a1[4270] = Value;
      a1[324] = a1[324] & 0xFFFFFFFD | (2 * (Value != 0));
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, Value);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetUseLongTermReference", 5409, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetUseLongTermReference", 5409, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetUseLongTermReference", 5399, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetUseLongTermReference");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetUseLongTermReference");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetUseLongTermReference(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[324] & 2;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v16 = v10 >> 1;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v16);
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
      v17 = AVE_Log_CheckConsole(0x1Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetUseLongTermReference", 5454, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetUseLongTermReference", 5454);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetUseLongTermReference", 5454);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetReconstructedPixelBufferAttributes(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  v61 = *MEMORY[0x29EDCA608];
  v54 = 0;
  memset(v53, 0, 44);
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v26 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5499, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v29 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v29, 30, v48, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5499);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5499);
      }
    }

    return 4294966295;
  }

  v10 = a1[4136];
  if (!v10)
  {
    v10 = a1[360];
  }

  v11 = a1[4137];
  if (!v11)
  {
    v11 = a1[361];
  }

  v12 = v10 + 31;
  if (v10 < -31)
  {
    v12 = v10 + 62;
  }

  v13 = v12 & 0xFFFFFFE0;
  v14 = v11 + 31;
  if (v11 < -31)
  {
    v14 = v11 + 62;
  }

  v51 = v14 & 0xFFFFFFE0;
  v52 = v13;
  v55 = 4 * (a1[19] > 29);
  v56 = 0x400000000;
  v57 = 0;
  v58 = v55;
  v59 = 0x400000000;
  v60 = 0;
  v15 = a1[4520];
  if (v15)
  {
    v16 = AVE_PixelFmt_FindByType(v15);
    if (v16)
    {
      v17 = *v16;
      v18 = *(v16 + 1);
      *(&v53[2] + 4) = *(v16 + 36);
      v53[0] = v17;
      v53[1] = v18;
      LODWORD(v53[2]) = 0;
      v19 = a1[3013] + 8;
      DWORD2(v53[1]) = 3;
      DWORD1(v53[0]) = v19;
      Type = AVE_PixelFmt_FindType(v53);
      if (Type)
      {
        v21 = Type;
        AVE_Enc_AlignDimension(a1[17], a1[16], 1, &v52, &v51);
        v22 = AVE_PixelBuf_CreateAttrDict(a1[17], a1[16], 62, 1, v10, v11, v52, v51, v21, 1, &v55, &v54);
        if (v22 || !v54)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v41 = AVE_Log_CheckConsole(0x1Eu);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(4);
            v44 = *(a1 + 7);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p\n", v42, 30, v43, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5554, "ret == 0 && pDict != __null", a1, v44, a4, a5, a1[4520], v21, v10, v11, v52, v51, v54);
              v45 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v45, 30, v46, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5554, "ret == 0 && pDict != __null", a1, *(a1 + 7));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v42, 30, v43, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5554, "ret == 0 && pDict != __null", a1, v44);
            }
          }
        }

        else
        {
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v23 = AVE_Log_CheckConsole(0x1Eu);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(7);
            if (v23)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v24, 30, v25, a1, *(a1 + 7), *a2, v54);
              v24 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v24);
          }

          v22 = 0;
          *a5 = v54;
        }

        return v22;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v38 = AVE_Log_CheckConsole(0x1Eu);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x\n", v39, 30, v40, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5541, "type != 0", a1, *(a1 + 7), a4, a5, a1[4520]);
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x", v39, 30, v40, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5541, "type != 0", a1, *(a1 + 7), a4, a5, a1[4520]);
      }

      return 4294966295;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v34 = AVE_Log_CheckConsole(0x1Eu);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x\n", v35, 30, v36, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5531, "psPixelFmt != __null", a1, *(a1 + 7), a4, a5, a1[4520]);
        v37 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x", v37, 30, v50, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5531);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x", v35, 30, v36, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5531);
      }
    }

    return 4294966296;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 5))
    {
      v30 = AVE_Log_CheckConsole(0x1Eu);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(5);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x\n", v31, 30, v32, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5525, "psINS->inputPixelFormat != 0", a1, *(a1 + 7), a4, a5, a1[4520]);
        v33 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(5);
        syslog(3, "%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x", v33, 30, v49, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5525);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x", v31, 30, v32, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5525);
      }
    }

    return 0;
  }
}

uint64_t AVE_Prop_AVC_SetEnableVUIBitstreamRestriction(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4243] = v10;
      v11 = *(a1 + 138) & 0xFFFFFF7FLL;
      if (Value)
      {
        v11 = *(a1 + 138) | 0x80;
      }

      *(a1 + 138) = v11;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v13 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10);
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
        v20 = AVE_Log_CheckConsole(0x1Eu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        v23 = *(a1 + 7);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction", 5597, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction", 5597, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction", 5587, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v25, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableVUIBitstreamRestriction(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[138] & 0x80;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 7);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableVUIBitstreamRestriction", 5643, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetEnableVUIBitstreamRestriction", 5643);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableVUIBitstreamRestriction", 5643);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_AddColorPrimaries(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v10 = v9;
      if (Mutable)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddColorPrimaries", 5693, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
            v15 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v27, "AVE_Prop_AVC_AddColorPrimaries", 5693);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddColorPrimaries", 5693);
          }
        }

        v25 = 4294966293;
        if (!Mutable)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((a2 & 0x30000) == 0x10000)
        {
          v24 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v24 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD108], v24);
        v25 = AVE_VUI_AddAllColorPrimToCFArray(v10);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD120], v10);
        CFDictionarySetValue(a4, *MEMORY[0x29EDBCD58], Mutable);
      }

      CFRelease(Mutable);
LABEL_28:
      if (v10)
      {
        CFRelease(v10);
      }

      return v25;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_AVC_AddColorPrimaries", 5685, "pDevCap != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v23, 30, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v21, 30, v22);
      }
    }

    return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_AVC_AddColorPrimaries", 5680, "pDict != __null", a1, a2, a3, 0);
        v19 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v19, 30, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v17, 30, v18);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_SetColorPrimaries(_BYTE *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      IntegerCodePointForString = 2;
LABEL_14:
      a1[13096] = 1;
      *(a1 + 3278) = IntegerCodePointForString;
      *(a1 + 4244) = IntegerCodePointForString;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v19 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v19)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, IntegerCodePointForString);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(a4);
      if (IntegerCodePointForString == 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v11, 30, v12, "AVE_Prop_AVC_SetColorPrimaries", 5773, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown", a1, *(a1 + 7), a2, a3, a4, 2);
            v13 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v13, 30, v27, "AVE_Prop_AVC_SetColorPrimaries", 5773, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v11, 30, v12, "AVE_Prop_AVC_SetColorPrimaries", 5773, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown");
          }
        }

        return 4294965292;
      }

      goto LABEL_14;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetColorPrimaries", 5764, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetColorPrimaries", 5764, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetColorPrimaries", 5743, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v28, "AVE_Prop_AVC_SetColorPrimaries");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetColorPrimaries");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetColorPrimaries(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(a1[3278]);
    *a5 = StringForIntegerCodePoint;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[3278], StringForIntegerCodePoint);
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
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetColorPrimaries", 5810, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetColorPrimaries", 5810);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetColorPrimaries", 5810);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_AddTransferFunction(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v10 = v9;
      if (Mutable)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddTransferFunction", 5860, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
            v15 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v27, "AVE_Prop_AVC_AddTransferFunction", 5860);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddTransferFunction", 5860);
          }
        }

        v25 = 4294966293;
        if (!Mutable)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((a2 & 0x30000) == 0x10000)
        {
          v24 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v24 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD108], v24);
        v25 = AVE_VUI_AddAllTransCharToCFArray(v10);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD120], v10);
        CFDictionarySetValue(a4, *MEMORY[0x29EDBCDD8], Mutable);
      }

      CFRelease(Mutable);
LABEL_28:
      if (v10)
      {
        CFRelease(v10);
      }

      return v25;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_AVC_AddTransferFunction", 5852, "pDevCap != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v23, 30, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v21, 30, v22);
      }
    }

    return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_AVC_AddTransferFunction", 5847, "pDict != __null", a1, a2, a3, 0);
        v19 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v19, 30, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v17, 30, v18);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_SetTransferFunction(_DWORD *a1, const char **a2, const __CFString *a3, const __CFString *cf1)
{
  if (a1 && a2 && a3)
  {
    v8 = a1 + 3274;
    if (!cf1 || CFEqual(cf1, *MEMORY[0x29EDB9648]))
    {
      *v8 = 1;
      v9 = 2;
      a1[3279] = 2;
      v10 = 4245;
      goto LABEL_7;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf1))
    {
      IntegerCodePointForString = CVTransferFunctionGetIntegerCodePointForString(cf1);
      if (IntegerCodePointForString != 2)
      {
        v9 = IntegerCodePointForString;
        a1[4245] = IntegerCodePointForString;
        *v8 = 1;
        v10 = 3279;
LABEL_7:
        a1[v10] = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v12)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
          return 0;
        }

        return result;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x1Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_SetTransferFunction", 5941, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown", a1, *(a1 + 7), a2, a3, cf1, 2);
          v24 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v31, "AVE_Prop_AVC_SetTransferFunction", 5941, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v22, 30, v23, "AVE_Prop_AVC_SetTransferFunction", 5941, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown");
        }
      }

      return 4294965292;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *(a1 + 7);
        v29 = CFGetTypeID(cf1);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_AVC_SetTransferFunction", 5932, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, cf1, v29);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(cf1);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_AVC_SetTransferFunction", 5932, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetTransferFunction", 5911, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, cf1);
        v18 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v30, "AVE_Prop_AVC_SetTransferFunction");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_SetTransferFunction");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetTransferFunction(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(a1[3279]);
    *a5 = StringForIntegerCodePoint;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[3279], StringForIntegerCodePoint);
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
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetTransferFunction", 5978, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetTransferFunction", 5978);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetTransferFunction", 5978);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_AddYCbCrMatrix(int a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  if (a4)
  {
    if (AVE_DevCap_Find(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v10 = v9;
      if (Mutable)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddYCbCrMatrix", 6029, "pTmpDict != __null && pTmpArray != __null", a1, a2, a3, a4, Mutable, v10);
            v15 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v27, "AVE_Prop_AVC_AddYCbCrMatrix", 6029);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_AddYCbCrMatrix", 6029);
          }
        }

        v25 = 4294966293;
        if (!Mutable)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((a2 & 0x30000) == 0x10000)
        {
          v24 = *MEMORY[0x29EDBD110];
        }

        else
        {
          v24 = *MEMORY[0x29EDBD118];
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD128], *MEMORY[0x29EDBD138]);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD108], v24);
        v25 = AVE_VUI_AddAllMatrixCoeffToCFArray(v10);
        CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD120], v10);
        CFDictionarySetValue(a4, *MEMORY[0x29EDBCDE8], Mutable);
      }

      CFRelease(Mutable);
LABEL_28:
      if (v10)
      {
        CFRelease(v10);
      }

      return v25;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x1Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_AVC_AddYCbCrMatrix", 6021, "pDevCap != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v23, 30, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p", v21, 30, v22);
      }
    }

    return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_AVC_AddYCbCrMatrix", 6016, "pDict != __null", a1, a2, a3, 0);
        v19 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v19, 30, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p", v17, 30, v18);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_SetYCbCrMatrix(_DWORD *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = a1 + 3274;
    if (!a4)
    {
      *v8 = 1;
      IntegerCodePointForString = 2;
      a1[3280] = 2;
      v12 = 4246;
LABEL_14:
      a1[v12] = IntegerCodePointForString;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, IntegerCodePointForString);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
        return 0;
      }

      return result;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      IntegerCodePointForString = CVYCbCrMatrixGetIntegerCodePointForString(a4);
      if (IntegerCodePointForString != 2)
      {
LABEL_9:
        a1[4246] = IntegerCodePointForString;
        *v8 = 1;
        v12 = 3280;
        goto LABEL_14;
      }

      v11 = *MEMORY[0x29EDB9680];
      if (CFEqual(a4, *MEMORY[0x29EDB9680]))
      {
        IntegerCodePointForString = 2 * (CFEqual(a4, v11) == 0);
        goto LABEL_9;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetYCbCrMatrix", 6111, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))", a1, *(a1 + 7), a2, a3, a4, 2);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetYCbCrMatrix", 6111, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))");
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *(a1 + 7);
      v25 = CFGetTypeID(a4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_AVC_SetYCbCrMatrix", 6100, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_AVC_SetYCbCrMatrix", 6100, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x1Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetYCbCrMatrix", 6079, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
      v16 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v29, "AVE_Prop_AVC_SetYCbCrMatrix");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetYCbCrMatrix");
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_AVC_GetYCbCrMatrix(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(a1[3280]);
    *a5 = StringForIntegerCodePoint;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1[3280], StringForIntegerCodePoint);
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
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetYCbCrMatrix", 6154, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetYCbCrMatrix", 6154);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetYCbCrMatrix", 6154);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v24 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v27 = a1[7];
      v28 = CFGetTypeID(a4);
      if (v24)
      {
        v50 = v27;
        v29 = 6204;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6204, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v50, a2, a3, a4, v28);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(a4);
        v32 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v30, 30, v31, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", v29, v32);
        return 4294965293;
      }

      v36 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v37 = 6204;
LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", v37, v36);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 16 || (Count & 1) != 0)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v33 = AVE_Log_CheckConsole(0x1Eu);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]\n", v34, 30, v35, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6215, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, a1[7], a2, a3, a4, v10, 0, 16);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]", v34, 30, v35, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6215, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, a1[7], a2, a3, a4, v10, 0, 16);
      }

      return 4294965292;
    }

    else
    {
      if (Count >= 1)
      {
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
          if (!ValueAtIndex)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v38 = AVE_Log_CheckConsole(0x1Eu);
              v39 = AVE_GetCurrTime();
              v40 = AVE_Log_GetLevelStr(4);
              if (v38)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v39, 30, v40, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6224, "cQpIndexOffset != __null", a1, a1[7], a2, a3, a4);
                v41 = AVE_GetCurrTime();
                v49 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v41, 30, v49, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6224);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v39, 30, v40, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6224);
              }
            }

            return 4294965293;
          }

          v13 = ValueAtIndex;
          v14 = CFNumberGetTypeID();
          if (v14 != CFGetTypeID(v13))
          {
            break;
          }

          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr + 12 >= 0x19)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v45 = AVE_Log_CheckConsole(0x1Eu);
              v46 = AVE_GetCurrTime();
              v47 = AVE_Log_GetLevelStr(4);
              if (v45)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v46, 30, v47, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6236, "(cQpOff >= -12) && (cQpOff <= 12)", a1, a1[7], a2, a3, a4, valuePtr, -12, 12);
                v46 = AVE_GetCurrTime();
                v47 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v46, 30, v47, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6236, "(cQpOff >= -12) && (cQpOff <= 12)", a1, a1[7], a2, a3, a4, valuePtr, 4294967284, 12);
            }

            return 4294965292;
          }

          if (v11)
          {
            v15 = 13812;
          }

          else
          {
            v15 = 13772;
          }

          *(a1 + 4 * (v11++ >> 1) + v15 + 4) = valuePtr;
          if (v10 == v11)
          {
            goto LABEL_17;
          }
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v42 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v43 = a1[7];
        v44 = CFGetTypeID(a4);
        if (v42)
        {
          v51 = v43;
          v29 = 6228;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6228, "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)", a1, v51, a2, a3, a4, v44);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
          v32 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
          goto LABEL_26;
        }

        v36 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
        v37 = 6228;
        goto LABEL_33;
      }

LABEL_17:
      *(a1 + 4247) = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v17 = AVE_Log_CheckConsole(0x1Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(7);
        if (v17)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v18, 30, v19, a1, a1[7], *a2, v10);
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v18);
        return 0;
      }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6194, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v48, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS(_DWORD *a1, void *a2, CFAllocatorRef allocator, const __CFString *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v11 = Mutable;
      if (2 * a1[2561] - 2 < 1)
      {
LABEL_11:
        result = 0;
        *a5 = v11;
        return result;
      }

      v12 = a1 + 3454;
      v13 = 3444;
      while (1)
      {
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v12 - 10);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v12);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v30 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v30)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6299, "pCrQpOff != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *v12);
              v33 = AVE_GetCurrTime();
              v35 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v33, 30, v35, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6299, "pCrQpOff != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6299, "pCrQpOff != __null", a1);
            }
          }

          CFRelease(v15);
          return 4294966293;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v15);
        CFArrayAppendValue(v11, v17);
        CFRelease(v15);
        CFRelease(v17);
        v18 = v13 - 3443;
        ++v13;
        ++v12;
        if (v18 >= 2 * a1[2561] - 2)
        {
          goto LABEL_11;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v27 = AVE_Log_CheckConsole(0x1Eu);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6292, "pCbQpOff != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v12 - 10));
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6292, "pCbQpOff != __null", a1, *(a1 + 7), a2, allocator, a4, a5, *(v12 - 10));
      }
    }

    else if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x1Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6283, "pQpOffsetArray != __null", a1, *(a1 + 7), a2, allocator, a4, a5, 0);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v25, 30, v26, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6283, "pQpOffsetArray != __null", a1, *(a1 + 7), a2, allocator, a4, a5, 0);
    }

    return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v23 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v34, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6275);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6275);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_SetUserParameterSetsIds(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!AVE_Log_CheckLevel(0x1Eu, 4))
      {
        return 4294965293;
      }

      v23 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v26 = a1[7];
      v27 = CFGetTypeID(a4);
      if (v23)
      {
        v49 = v26;
        v28 = 6369;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetUserParameterSetsIds", 6369, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v49, a2, a3, a4, v27);
        v29 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(a4);
        v31 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_25:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v29, 30, v30, "AVE_Prop_AVC_SetUserParameterSetsIds", v28, v31);
        return 4294965293;
      }

      v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v36 = 6369;
LABEL_32:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetUserParameterSetsIds", v36, v35);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 9)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v32 = AVE_Log_CheckConsole(0x1Eu);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]\n", v33, 30, v34, "AVE_Prop_AVC_SetUserParameterSetsIds", 6379, "UserParameterSetIdsCount <= 9", a1, a1[7], a2, a3, a4, v10, 9);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]", v33, 30, v34, "AVE_Prop_AVC_SetUserParameterSetsIds", 6379, "UserParameterSetIdsCount <= 9", a1, a1[7], a2, a3, a4, v10, 9);
      }

      return 4294965292;
    }

    else
    {
      if (Count >= 1)
      {
        v11 = 2551;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v11 - 2551);
          if (!ValueAtIndex)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v37 = AVE_Log_CheckConsole(0x1Eu);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(4);
              if (v37)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v38, 30, v39, "AVE_Prop_AVC_SetUserParameterSetsIds", 6387, "UserParameterSetIds != __null", a1, a1[7], a2, a3, a4);
                v40 = AVE_GetCurrTime();
                v48 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v40, 30, v48, "AVE_Prop_AVC_SetUserParameterSetsIds", 6387);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v38, 30, v39, "AVE_Prop_AVC_SetUserParameterSetsIds", 6387);
              }
            }

            return 4294965293;
          }

          v13 = ValueAtIndex;
          v14 = CFNumberGetTypeID();
          if (v14 != CFGetTypeID(v13))
          {
            break;
          }

          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          if ((valuePtr & 0x80000000) != 0)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v44 = AVE_Log_CheckConsole(0x1Eu);
              v45 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(4);
              if (v44)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v45, 30, v46, "AVE_Prop_AVC_SetUserParameterSetsIds", 6400, "ParameterSetId >= 0", a1, a1[7], a2, a3, a4, valuePtr);
                v45 = AVE_GetCurrTime();
                v46 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v45, 30, v46, "AVE_Prop_AVC_SetUserParameterSetsIds", 6400, "ParameterSetId >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            }

            return 4294965292;
          }

          if (v11 == 2551)
          {
            *(a1 + 3010) = valuePtr;
          }

          else
          {
            *(a1 + v11) = valuePtr;
          }

          if (++v11 - v10 == 2551)
          {
            goto LABEL_16;
          }
        }

        if (!AVE_Log_CheckLevel(0x1Eu, 4))
        {
          return 4294965293;
        }

        v41 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v42 = a1[7];
        v43 = CFGetTypeID(a4);
        if (v41)
        {
          v50 = v42;
          v28 = 6391;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetUserParameterSetsIds", 6391, "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)", a1, v50, a2, a3, a4, v43);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
          v31 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
          goto LABEL_25;
        }

        v35 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
        v36 = 6391;
        goto LABEL_32;
      }

LABEL_16:
      *(a1 + 2561) = v10 - 1;
      *(a1 + 4248) = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v16 = AVE_Log_CheckConsole(0x1Eu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(7);
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v17, 30, v18, a1, a1[7], *a2, v10);
          v17 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v17);
        return 0;
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_SetUserParameterSetsIds", 6359, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v47, "AVE_Prop_AVC_SetUserParameterSetsIds");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_SetUserParameterSetsIds");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetUserParameterSetsIds(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetUserParameterSetsIds", 6455, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
          v29 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v29, 30, v37, "AVE_Prop_AVC_GetUserParameterSetsIds", 6455, "pArray != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetUserParameterSetsIds", 6455, "pArray != __null", a1);
        }
      }

      return 4294966293;
    }

    v11 = Mutable;
    v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 1505);
    if (!v12)
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v30 = AVE_Log_CheckConsole(0x1Eu);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v31, 30, v32, "AVE_Prop_AVC_GetUserParameterSetsIds", 6461, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3010));
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v31, 30, v32, "AVE_Prop_AVC_GetUserParameterSetsIds", 6461, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3010));
      }

LABEL_32:
      CFRelease(v11);
      return 4294966293;
    }

    v13 = v12;
    CFArrayAppendValue(v11, v12);
    CFRelease(v13);
    if (*(a1 + 2561) >= 1)
    {
      v14 = 0;
      v15 = (a1 + 1276);
      while (1)
      {
        v16 = CFNumberCreate(allocator, kCFNumberSInt32Type, v15);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v11, v16);
        CFRelease(v17);
        ++v14;
        ++v15;
        if (v14 >= *(a1 + 2561))
        {
          goto LABEL_11;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v33 = AVE_Log_CheckConsole(0x1Eu);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v34, 30, v35, "AVE_Prop_AVC_GetUserParameterSetsIds", 6479, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *v15);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v34, 30, v35, "AVE_Prop_AVC_GetUserParameterSetsIds", 6479, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, *v15);
      }

      goto LABEL_32;
    }

LABEL_11:
    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v19 = AVE_Log_CheckConsole(0x1Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v20, 30, v21, a1, a1[7], *a2, v11);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v20);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x1Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v23, 30, v24, "AVE_Prop_AVC_GetUserParameterSetsIds", 6447, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v25 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v25, 30, v36, "AVE_Prop_AVC_GetUserParameterSetsIds", 6447);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v24, "AVE_Prop_AVC_GetUserParameterSetsIds", 6447);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_Setlog2_max_minus4(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0xC)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_Setlog2_max_minus4", 6552, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)", v26, 30, v28, "AVE_Prop_AVC_Setlog2_max_minus4", 6552, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_Setlog2_max_minus4", 6552, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4249) = valuePtr;
        *(a1 + 3264) = v9;
        *(a1 + 3266) = v9 + 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_Setlog2_max_minus4", 6543, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_Setlog2_max_minus4", 6543, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_Setlog2_max_minus4", 6533, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_Setlog2_max_minus4");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_Setlog2_max_minus4");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_Getlog2_max_minus4(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[3264];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_Getlog2_max_minus4", 6599, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_Getlog2_max_minus4", 6599, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_Getlog2_max_minus4", 6599, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_Getlog2_max_minus4", 6589, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_Getlog2_max_minus4", 6589);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_Getlog2_max_minus4", 6589);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetInputPixelFormat(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = AVE_PixelFmt_CheckSupportedType(*(a1 + 17), *(a1 + 16), *(a1 + 179), 1, valuePtr);
      if (v9)
      {
        v10 = v9;
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInputPixelFormat", 6656, "ret == 0", a1, a1[7], a2, a3, a4, valuePtr);
            v14 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d", v14, 30, v34, "AVE_Prop_AVC_SetInputPixelFormat", 6656, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid input pixel format %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInputPixelFormat", 6656, "ret == 0");
          }
        }
      }

      else
      {
        v24 = AVE_PixelFmt_FindByType(valuePtr);
        if (v24)
        {
          v25 = valuePtr;
          *(a1 + 4250) = valuePtr;
          *(a1 + 3011) = *(v24 + 3);
          *(a1 + 10781) = 1;
          *(a1 + 4520) = v25;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v26 = AVE_Log_CheckConsole(0x1Eu);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(7);
            if (v26)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v27, 30, v28, a1, a1[7], *a2, valuePtr);
              v27 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v27);
          }

          return 0;
        }

        else
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v29 = AVE_Log_CheckConsole(0x1Eu);
            v30 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(4);
            if (v29)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d\n", v30, 30, v31, "AVE_Prop_AVC_SetInputPixelFormat", 6662, "pPixelFmt != __null", a1, a1[7], a2, a3, a4, valuePtr);
              v32 = AVE_GetCurrTime();
              v36 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d", v32, 30, v36, "AVE_Prop_AVC_SetInputPixelFormat", 6662, "pPixelFmt != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get pixel format details %p %lld %p %p %p %d", v30, 30, v31, "AVE_Prop_AVC_SetInputPixelFormat", 6662, "pPixelFmt != __null");
            }
          }

          return 4294966296;
        }
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v19 = AVE_Log_CheckConsole(0x1Eu);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = a1[7];
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_AVC_SetInputPixelFormat", 6643, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_AVC_SetInputPixelFormat", 6643, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v15 = AVE_Log_CheckConsole(0x1Eu);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetInputPixelFormat", 6633, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v35, "AVE_Prop_AVC_SetInputPixelFormat");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_SetInputPixelFormat");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t AVE_Prop_AVC_GetInputPixelFormat(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[3011];
    switch(v10)
    {
      case 3:
        if (a1[3276] == 1)
        {
          v26 = 875836518;
        }

        else
        {
          v26 = 875836534;
        }

        valuePtr = v26;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v31 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v31)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetInputPixelFormat", 6735, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 6735;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetInputPixelFormat", 6735, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            goto LABEL_40;
          }

          return 4294966293;
        }

        break;
      case 2:
        if (a1[3276] == 1)
        {
          v22 = 875704934;
        }

        else
        {
          v22 = 875704950;
        }

        valuePtr = v22;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v23 = AVE_Log_CheckConsole(0x1Eu);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
            if (!v23)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_GetInputPixelFormat", 6725, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 6725;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_GetInputPixelFormat", 6725, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            goto LABEL_40;
          }

          return 4294966293;
        }

        break;
      case 1:
        if (a1[3276] == 1)
        {
          v11 = 875704422;
        }

        else
        {
          v11 = 875704438;
        }

        valuePtr = v11;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v13 = AVE_Log_CheckConsole(0x1Eu);
            v14 = AVE_GetCurrTime();
            v15 = AVE_Log_GetLevelStr(4);
            if (!v13)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v14, 30, v15, "AVE_Prop_AVC_GetInputPixelFormat", 6715, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 6715;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v14, 30, v15, "AVE_Prop_AVC_GetInputPixelFormat", 6715, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
LABEL_40:
            v34 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v34, 30, v36, "AVE_Prop_AVC_GetInputPixelFormat", v16, "pNum != __null", a1);
            return 4294966293;
          }

          return 4294966293;
        }

        break;
      default:
        v27 = 0;
LABEL_33:
        *a5 = v27;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(7);
          if (v28)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v29, 30, v30, a1, *(a1 + 7), *a2, valuePtr, v27);
            v29 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v29, 30);
          return 0;
        }

        return result;
    }

    v27 = v12;
    goto LABEL_33;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v17 = AVE_Log_CheckConsole(0x1Eu);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetInputPixelFormat", 6700, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v20 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v35, "AVE_Prop_AVC_GetInputPixelFormat", 6700);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetInputPixelFormat", 6700);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_AVC_SetNumberOfSlices(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = AVE_DevCap_Find(a1[17]);
      if (v9)
      {
        v10 = v9;
        CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
        v11 = valuePtr;
        if (valuePtr - 1 >= 0x20)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v31 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v31)
            {
              printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumberOfSlices", 6797, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1, *(a1 + 7), a2, a3, a4, valuePtr, 1, 32);
              v34 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v34, 30, v42, "AVE_Prop_AVC_SetNumberOfSlices", 6797, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumberOfSlices", 6797, "numberOfSlices <= ((32) < (256) ? (32) : (256)) && numberOfSlices >= 1", a1);
            }
          }

          return 4294965292;
        }

        else
        {
          a1[4251] = valuePtr;
          SliceMap = AVE_Enc_GenerateSliceMap(v11, a1[361], *(*(v10 + 7) + 16), *(a1 + 10248), a1 + 2563);
          if (SliceMap)
          {
            v13 = SliceMap;
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v14 = AVE_Log_CheckConsole(0x1Eu);
              v15 = AVE_GetCurrTime();
              v16 = AVE_Log_GetLevelStr(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d\n", v15, 30, v16, "AVE_Prop_AVC_SetNumberOfSlices", 6809, "ret == 0", valuePtr, a1[361], *(*(v10 + 7) + 16), *(a1 + 10248), a1 + 2563, v13);
                v17 = AVE_GetCurrTime();
                v39 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d", v17, 30, v39, "AVE_Prop_AVC_SetNumberOfSlices");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to generate slice map %d %d %d %d %p %d", v15, 30, v16, "AVE_Prop_AVC_SetNumberOfSlices");
              }
            }
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Eu, 7))
            {
              v35 = AVE_Log_CheckConsole(0x1Eu);
              v36 = AVE_GetCurrTime();
              v37 = AVE_Log_GetLevelStr(7);
              if (v35)
              {
                printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v36, 30, v37, a1, *(a1 + 7), *a2, valuePtr);
                v36 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v36);
            }

            return 0;
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v27 = AVE_Log_CheckConsole(0x1Eu);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_SetNumberOfSlices", 6787, "pDevCap != __null", a1, a3, a4, a1[17]);
            v30 = AVE_GetCurrTime();
            v41 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d", v30, 30, v41, "AVE_Prop_AVC_SetNumberOfSlices");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find device capability %p %p %p %d", v28, 30, v29, "AVE_Prop_AVC_SetNumberOfSlices");
          }
        }

        return 4294966294;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v22 = AVE_Log_CheckConsole(0x1Eu);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 7);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetNumberOfSlices", 6782, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetNumberOfSlices", 6782, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetNumberOfSlices", 6772, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v40, "AVE_Prop_AVC_SetNumberOfSlices");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetNumberOfSlices");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_AVC_GetNumberOfSlices(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2563];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetNumberOfSlices", 6851, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetNumberOfSlices", 6851, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetNumberOfSlices", 6851, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetNumberOfSlices", 6841, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetNumberOfSlices", 6841);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetNumberOfSlices", 6841);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetH264EntropyMode(_DWORD *a1, const char **a2, const __CFString *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFEqual(a4, *MEMORY[0x29EDBCF30]))
      {
        v9 = 0;
        goto LABEL_19;
      }

      if (CFEqual(a4, *MEMORY[0x29EDBCF28]))
      {
        v9 = 1;
LABEL_19:
        a1[4271] = v9;
        a1[4114] = v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v20 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v20)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v9);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", CurrTime);
          return 0;
        }

        return result;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v23 = AVE_Log_CheckConsole(0x1Eu);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetH264EntropyMode", 6909, "eEntropyMode != EntropyModeUNDEFINED", a1, *(a1 + 7), a2, a3, a4, 2);
          v26 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetH264EntropyMode", 6909, "eEntropyMode != EntropyModeUNDEFINED");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetH264EntropyMode", 6909, "eEntropyMode != EntropyModeUNDEFINED");
        }
      }

      return 4294965292;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v14 = AVE_Log_CheckConsole(0x1Eu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        v17 = *(a1 + 7);
        v18 = CFGetTypeID(a4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetH264EntropyMode", 6893, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_AVC_SetH264EntropyMode", 6893, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x1Eu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_AVC_SetH264EntropyMode", 6883, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v27, "AVE_Prop_AVC_SetH264EntropyMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_AVC_SetH264EntropyMode");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetH264EntropyMode(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[4114];
    v11 = MEMORY[0x29EDBCF30];
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = MEMORY[0x29EDBCF28];
      }

      else if (a1[3433] == 1)
      {
        v11 = MEMORY[0x29EDBCF28];
      }
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %d\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, v10, a1[3433]);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %d", CurrTime);
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_GetH264EntropyMode", 6944, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v15 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v20, "AVE_Prop_AVC_GetH264EntropyMode", 6944);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_AVC_GetH264EntropyMode", 6944);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableTransform8x8(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4272] = v9;
      *(a1 + 13807) = v9;
      a1[2544] = 2 * v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableTransform8x8", 7007, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableTransform8x8", 7007, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableTransform8x8", 6997, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnableTransform8x8");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableTransform8x8");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableTransform8x8(_BYTE *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[13807];
    v11 = MEMORY[0x29EDB8F00];
    if (!a1[13807])
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableTransform8x8", 7054, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetEnableTransform8x8", 7054);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableTransform8x8", 7054);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetMotionEstimationSearchMode(void *a1, const char **a2, const __CFString *a3, const void *a4)
{
  valuePtr = -1;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v18 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7103, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7103, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }

    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    if ((valuePtr & 0x80000000) == 0)
    {
      if (AVE_DevCap_FindSearchRangeMode(*(a1 + 17), 1, 1, valuePtr))
      {
        v9 = valuePtr;
        *(a1 + 4253) = valuePtr;
        *(a1 + 5084) = v9;
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

        return result;
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v27 = AVE_Log_CheckConsole(0x1Eu);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7119, "pSREntry != __null", a1, a1[7], a2, a3, a4, valuePtr);
          v30 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d", v30, 30, v33, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7119, "pSREntry != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find search range mode %p %lld %p %p %p %d", v28, 30, v29, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7119, "pSREntry != __null");
        }
      }

      return 4294965293;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x1Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7112, "iMotionSearchRangeMode >= 0", a1, a1[7], a2, a3, a4, valuePtr);
        v26 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v32, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7112, "iMotionSearchRangeMode >= 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7112, "iMotionSearchRangeMode >= 0");
      }
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMotionEstimationSearchMode", 7093, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v31, "AVE_Prop_AVC_SetMotionEstimationSearchMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMotionEstimationSearchMode");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetMotionEstimationSearchMode(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 5084);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMotionEstimationSearchMode", 7165, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMotionEstimationSearchMode", 7165, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMotionEstimationSearchMode", 7165, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMotionEstimationSearchMode", 7155, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMotionEstimationSearchMode", 7155);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMotionEstimationSearchMode", 7155);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSupportedMotionSearchModes(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    SearchRange = AVE_DevCap_FindSearchRange(*(a1 + 17), 1, 1);
    if (SearchRange)
    {
      v11 = SearchRange;
      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x29EDB9000]);
      if (Mutable)
      {
        v13 = Mutable;
        Array = AVE_SearchRange_MakeArray(v11 + 1, *v11, Mutable);
        if (Array)
        {
          v15 = Array;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v16 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v16)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7217, "ret == 0", a1, a1[7], a2, a3, a4, a5, *v11);
              v19 = AVE_GetCurrTime();
              v36 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d", v19, 30, v36, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7217, "ret == 0", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make CFMutableArrayRef %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7217, "ret == 0", a1);
            }
          }
        }

        else
        {
          *a5 = v13;
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v32 = AVE_Log_CheckConsole(0x1Eu);
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(7);
            if (v32)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v33, 30, v34, a1, a1[7], *a2, *v11, v13);
              v33 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v33, 30);
          }

          return 0;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v28 = AVE_Log_CheckConsole(0x1Eu);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p\n", v29, 30, v30, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7212, "pArray != __null", a1, a1[7], a2, a3, a4, a5);
            v31 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p", v31, 30, v39, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7212, "pArray != __null");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFMutableArrayRef %p %lld %p %p %p %p", v29, 30, v30, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7212, "pArray != __null");
          }
        }

        return 4294966293;
      }
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
          printf("%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d\n", v25, 30, v26, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7207, "pSR != __null", a1, a1[7], a2, a3, a4, a5, *(a1 + 17));
          v27 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d", v27, 30, v38, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7207, "pSR != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get search range %p %lld %p %p %p %p %d", v25, 30, v26, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7207, "pSR != __null", a1);
        }
      }

      return 4294966294;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7199, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v23, 30, v37, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7199);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_GetSupportedMotionSearchModes", 7199);
      }
    }

    return 4294966295;
  }

  return v15;
}

uint64_t AVE_Prop_AVC_SetEnableStatsCollect(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableStatsCollect", 7269, "iEnableStatsCollect >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetEnableStatsCollect", 7269, "iEnableStatsCollect >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableStatsCollect", 7269, "iEnableStatsCollect >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4254) = valuePtr;
        *(a1 + 366) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableStatsCollect", 7260, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableStatsCollect", 7260, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableStatsCollect", 7250, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetEnableStatsCollect");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableStatsCollect");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableStatsCollect(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[366];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetEnableStatsCollect", 7315, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetEnableStatsCollect", 7315, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetEnableStatsCollect", 7315, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableStatsCollect", 7305, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetEnableStatsCollect", 7305);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableStatsCollect", 7305);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetCalculateMeanSquaredError(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4255] = v9;
      *(a1 + 181) = *(a1 + 181) & 0xFFFFFFFFF7FFFFFFLL | (v9 << 27);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetCalculateMeanSquaredError", 7358, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetCalculateMeanSquaredError", 7358, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetCalculateMeanSquaredError", 7348, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetCalculateMeanSquaredError");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetCalculateMeanSquaredError");
      }
    }

    return 4294966295;
  }

  return result;
}