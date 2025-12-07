uint64_t AVE_Prop_AVC_GetCalculateMeanSquaredError(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[181] & 0x8000000;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 27);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetCalculateMeanSquaredError", 7403, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetCalculateMeanSquaredError", 7403);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetCalculateMeanSquaredError", 7403);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableMCTF(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      a1[4256] = v10;
      if (Value)
      {
        v11 = 960;
      }

      else
      {
        v11 = 0;
      }

      v12 = a1[179] & 0xFFFFFC3F | v11;
      a1[179] = v12;
      v13 = a1[4112];
      if (v13 > 9 || ((1 << v13) & 0x354) == 0 || a1[2688] == 2)
      {
        goto LABEL_39;
      }

      v14 = a1[3013] + 8;
      if (v14 <= a1[3014] + 8)
      {
        v14 = a1[3014] + 8;
      }

      updated = AVE_UpdatePixelBufferDict(a1[17], a1[16], v12, 1, a1[2863], a1[2864], a1[360], a1[361], v14, v13, 0x1414C4C20, *(a1 + 2));
      if (updated)
      {
        v16 = updated;
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v17 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableMCTF", 7485, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v16);
            v20 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", v20, 30, v34, "AVE_Prop_AVC_SetEnableMCTF", 7485, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to update pixel buffer dictionary %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetEnableMCTF", 7485, "ret == 0");
          }
        }
      }

      else
      {
LABEL_39:
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v30 = AVE_Log_CheckConsole(0x1Eu);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(7);
          if (v30)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v31, 30, v32, a1, *(a1 + 7), *a2, v10);
            v31 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v31);
        }

        return 0;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *(a1 + 7);
        v29 = CFGetTypeID(a4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_AVC_SetEnableMCTF", 7450, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, a4, v29);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_AVC_SetEnableMCTF", 7450, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v22, 30, v23, "AVE_Prop_AVC_SetEnableMCTF", 7440, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v24 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v24, 30, v35, "AVE_Prop_AVC_SetEnableMCTF");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v22, 30, v23, "AVE_Prop_AVC_SetEnableMCTF");
      }
    }

    return 4294966295;
  }

  return v16;
}

uint64_t AVE_Prop_AVC_GetEnableMCTF(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[179] & 0x3C0;
    v11 = MEMORY[0x29EDB8EF8];
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableMCTF", 7517, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnableMCTF", 7517);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnableMCTF", 7517);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVideoResolutionAdaptation(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4257] = v9;
      *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFDFLL | (32 * v9);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetVideoResolutionAdaptation", 7565, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetVideoResolutionAdaptation", 7565, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetVideoResolutionAdaptation", 7555, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetVideoResolutionAdaptation");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetVideoResolutionAdaptation");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetVideoResolutionAdaptation(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 0x20;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 5);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVideoResolutionAdaptation", 7610, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetVideoResolutionAdaptation", 7610);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVideoResolutionAdaptation", 7610);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVideoResolutionAdaptationType(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVideoResolutionAdaptationType", 7666, "iVRAType >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetVideoResolutionAdaptationType", 7666, "iVRAType >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVideoResolutionAdaptationType", 7666, "iVRAType >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4258) = valuePtr;
        *(a1 + 2991) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetVideoResolutionAdaptationType", 7658, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetVideoResolutionAdaptationType", 7658, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetVideoResolutionAdaptationType", 7648, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetVideoResolutionAdaptationType");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetVideoResolutionAdaptationType");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetVideoResolutionAdaptationType(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2991];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetVideoResolutionAdaptationType", 7712, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetVideoResolutionAdaptationType", 7712, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetVideoResolutionAdaptationType", 7712, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVideoResolutionAdaptationType", 7702, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVideoResolutionAdaptationType", 7702);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVideoResolutionAdaptationType", 7702);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetiChatUsageString(_DWORD *a1, const char **a2, const __CFString *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      if (CFEqual(a4, @"FaceTime"))
      {
        v9 = 0;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"CarPlay"))
      {
        v9 = 1;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"AirPlay"))
      {
        v9 = 2;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"SafeView"))
      {
        v9 = 3;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"ScreenSharing"))
      {
        v9 = 4;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"MediaAnalysis"))
      {
        v9 = 5;
        goto LABEL_31;
      }

      if (CFEqual(a4, @"SideCar"))
      {
        v9 = 7;
LABEL_31:
        a1[4259] = v9;
        a1[2698] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetiChatUsageString", 7791, "iFTUsageType != -1", a1, *(a1 + 7), a2, a3, a4, -1);
          v26 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetiChatUsageString", 7791, "iFTUsageType != -1");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetiChatUsageString", 7791, "iFTUsageType != -1");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetiChatUsageString", 7755, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_AVC_SetiChatUsageString", 7755, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_AVC_SetiChatUsageString", 7745, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 30, v27, "AVE_Prop_AVC_SetiChatUsageString");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v11, 30, v12, "AVE_Prop_AVC_SetiChatUsageString");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetiChatUsageString(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, __CFString **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 2698);
    if (v10 > 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_29EDCB8F8[v10];
    }

    *a5 = v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v17 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v17)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10, 0);
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
      v12 = AVE_Log_CheckConsole(0x1Eu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_GetiChatUsageString", 7828, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v15 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v15, 30, v20, "AVE_Prop_AVC_GetiChatUsageString", 7828);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v13, 30, v14, "AVE_Prop_AVC_GetiChatUsageString", 7828);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnableUserQPForFacetime(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4260] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableUserQPForFacetime", 7907, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableUserQPForFacetime", 7907, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableUserQPForFacetime", 7897, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnableUserQPForFacetime");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableUserQPForFacetime");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnableUserQPForFacetime(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[4260];
    v11 = MEMORY[0x29EDB8F00];
    if (!v10)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableUserQPForFacetime", 7945, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnableUserQPForFacetime", 7945);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnableUserQPForFacetime", 7945);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetUsage(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!v11)
      {
        v40 = a3;
        v41 = a4;
        v38 = a1;
        v39 = a2;
        v36 = 7984;
        v37 = "pINS != __null && pEntry != __null && pKey != __null && pValue != __null";
        v34 = LevelStr;
        v20 = "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p";
LABEL_21:
        syslog(3, v20, CurrTime, 30, v34, "AVE_Prop_AVC_SetUsage", v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
        return 4294966295;
      }

      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetUsage", 7984, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
      v14 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v33, "AVE_Prop_AVC_SetUsage");
    }

    return 4294966295;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a4))
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
    v9 = valuePtr;
    if (*(a1 + 10780) != 1 || valuePtr == a1[2723])
    {
      a1[4261] = valuePtr;
      if (v9 <= 19)
      {
        if (!v9)
        {
          v10 = 0;
          a1[2723] = 0;
          goto LABEL_33;
        }

        if (v9 == 1)
        {
          v10 = 0;
          a1[2723] = 1;
LABEL_34:
          *(a1 + 10780) = v9;
LABEL_41:
          if (AVE_Log_CheckLevel(0x1Eu, 7))
          {
            v29 = AVE_Log_CheckConsole(0x1Eu);
            v30 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(7);
            if (v29)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v30, 30, v31, a1, *(a1 + 7), *a2, valuePtr);
              v30 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v30);
          }

          return v10;
        }
      }

      else
      {
        if (v9 == 20 || v9 == 37)
        {
          v10 = 0;
          a1[2723] = v9;
          *(a1 + 10780) = 1;
          *(a1 + 138) |= 0x80uLL;
          goto LABEL_41;
        }

        if (v9 == 38)
        {
          v10 = 0;
          a1[2723] = 38;
LABEL_33:
          LOBYTE(v9) = 1;
          goto LABEL_34;
        }
      }

      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v25 = AVE_Log_CheckConsole(0x1Eu);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p\n", v26, 30, v27, valuePtr, a1, *(a1 + 7), a2, a3, a4);
          v28 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p", v28, 30, v35);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: kVTCompressionPropertyKey_Usage %d not supportd %p %lld %p %p %p", v26, 30, v27);
        }
      }

      v10 = 4294965292;
      goto LABEL_41;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d\n", CurrTime, 30, v22, "AVE_Prop_AVC_SetUsage", 8013, "bUsageModeChanged == false", *(a1 + 10780), a1, *(a1 + 7), a2, a3, a4, valuePtr, a1[2723]);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d", v23, 30, v24, "AVE_Prop_AVC_SetUsage", 8013, "bUsageModeChanged == false", *(a1 + 10780));
        return 4294966295;
      }

      v44 = valuePtr;
      v45 = a1[2723];
      v42 = a3;
      v43 = a4;
      v40 = *(a1 + 7);
      v41 = a2;
      v38 = *(a1 + 10780);
      v39 = a1;
      v36 = 8013;
      v37 = "bUsageModeChanged == false";
      v34 = v22;
      v20 = "%lld %d AVE %s: %s:%d %s | bUsageModeSet = %d and called again with new value  %p %lld %p %p %p %d %d";
      goto LABEL_21;
    }

    return 4294966295;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v15 = AVE_Log_CheckConsole(0x1Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    v18 = *(a1 + 7);
    v19 = CFGetTypeID(a4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetUsage", 7994, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      CFGetTypeID(a4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetUsage", 7994, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
  }

  return 4294965293;
}

uint64_t AVE_Prop_AVC_GetUsage(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2723];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetUsage", 8095, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetUsage", 8095, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetUsage", 8095, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetUsage", 8085, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetUsage", 8085);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetUsage", 8085);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEncodesDepth(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4262] = v9;
      a1[334] = a1[334] & 0xFBFFFFFF | (v9 << 26);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEncodesDepth", 8137, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEncodesDepth", 8137, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEncodesDepth", 8127, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEncodesDepth");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEncodesDepth");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEncodesDepth(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x4000000;
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
      v16 = v10 >> 26;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEncodesDepth", 8182, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEncodesDepth", 8182);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEncodesDepth", 8182);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEncodesDisparity(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4263] = v9;
      a1[334] = a1[334] & 0xFBFFFFFF | (v9 << 26);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEncodesDisparity", 8230, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEncodesDisparity", 8230, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEncodesDisparity", 8220, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEncodesDisparity");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEncodesDisparity");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEncodesDisparity(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[334] & 0x4000000;
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
      v16 = v10 >> 26;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEncodesDisparity", 8275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEncodesDisparity", 8275);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEncodesDisparity", 8275);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetEnsureTIJacinto4Compatibility(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4273] = v9;
      a1[339] = a1[339] & 0xFFFFFFFB | (4 * v9);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnsureTIJacinto4Compatibility", 8323, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnsureTIJacinto4Compatibility", 8323, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnsureTIJacinto4Compatibility", 8313, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnsureTIJacinto4Compatibility");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnsureTIJacinto4Compatibility");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetEnsureTIJacinto4Compatibility(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[339] & 4;
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
      v16 = v10 >> 2;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnsureTIJacinto4Compatibility", 8368, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnsureTIJacinto4Compatibility", 8368);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnsureTIJacinto4Compatibility", 8368);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSourceFrameCount(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSourceFrameCount", 8425, "iSourceFrameCount >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetSourceFrameCount", 8425, "iSourceFrameCount >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSourceFrameCount", 8425, "iSourceFrameCount >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4264) = valuePtr;
        *(a1 + 180) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSourceFrameCount", 8416, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSourceFrameCount", 8416, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSourceFrameCount", 8406, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSourceFrameCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSourceFrameCount");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSourceFrameCount(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[180];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSourceFrameCount", 8471, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetSourceFrameCount", 8471, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetSourceFrameCount", 8471, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSourceFrameCount", 8461, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSourceFrameCount", 8461);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSourceFrameCount", 8461);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetExpectedDuration(double *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0.0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberDoubleType, &valuePtr);
      if (valuePtr <= 0.0)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v22 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetExpectedDuration", 8523, "fDuration > 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v25 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v25, 30, v27, "AVE_Prop_AVC_SetExpectedDuration", 8523);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetExpectedDuration", 8523);
          }
        }

        return 4294965292;
      }

      else
      {
        a1[2133] = valuePtr;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v10 = AVE_Log_CheckConsole(0x1Eu);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(7);
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v11, 30, v12, a1, *(a1 + 7), *a2, valuePtr);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetExpectedDuration", 8514, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetExpectedDuration", 8514, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetExpectedDuration", 8504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v26, "AVE_Prop_AVC_SetExpectedDuration");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetExpectedDuration");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetExpectedDuration(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2133];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetExpectedDuration", 8570, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetExpectedDuration", 8570, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetExpectedDuration", 8570, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetExpectedDuration", 8559, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetExpectedDuration", 8559);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetExpectedDuration", 8559);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQuantizationScalingMatrixPreset(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
          v26 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8622, "iQSMatrixPreset > 0", a1, a1[7], a2, a3, a4, valuePtr);
            v29 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v29, 30, v31, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8622, "iQSMatrixPreset > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8622, "iQSMatrixPreset > 0");
          }
        }
      }

      else
      {
        if (valuePtr < 8 && ((0x67u >> (valuePtr - 1)) & 1) != 0)
        {
          *(a1 + 3016) = dword_2954DF9E0[valuePtr - 1];
          *(a1 + 4268) = v9;
          *(a1 + 10845) = 1;
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

        *(a1 + 3016) = 0;
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | QuantizationScalingMatrixPreset value %d not supported %p %lld %p %p %p [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8655, "false", valuePtr, a1, a1[7], a2, a3, a4, 2, 3);
            v24 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | QuantizationScalingMatrixPreset value %d not supported %p %lld %p %p %p [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8655, "false", valuePtr);
        }
      }

      return 4294965292;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x1Eu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = a1[7];
      v22 = CFGetTypeID(a4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8613, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8613, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset", 8603, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v30, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetQuantizationScalingMatrixPreset");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetQuantizationScalingMatrixPreset(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  valuePtr = 0;
  if (a1 && a2 && a4 && a5)
  {
    v10 = 0;
    v11 = a1[3016];
    if (v11 <= 4)
    {
      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_34;
        }

        valuePtr = 1;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v21 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v21)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8702, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 8702;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8702, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
LABEL_41:
            v37 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v37, 30, v39, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", v16, "pNum != __null", a1);
          }

          return 4294966293;
        }
      }

      else
      {
        valuePtr = 2;
        v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
        if (!v12)
        {
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v34 = AVE_Log_CheckConsole(0x1Eu);
            v35 = AVE_GetCurrTime();
            v36 = AVE_Log_GetLevelStr(4);
            if (!v34)
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v35, 30, v36, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8710, "pNum != __null", a1);
              return 4294966293;
            }

            v16 = 8710;
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v35, 30, v36, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8710, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
            goto LABEL_41;
          }

          return 4294966293;
        }
      }
    }

    else
    {
      switch(v11)
      {
        case 5:
          valuePtr = 7;
          v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
          if (!v12)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v25 = AVE_Log_CheckConsole(0x1Eu);
              v26 = AVE_GetCurrTime();
              v27 = AVE_Log_GetLevelStr(4);
              if (!v25)
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v26, 30, v27, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8726, "pNum != __null", a1);
                return 4294966293;
              }

              v16 = 8726;
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v26, 30, v27, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8726, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
              goto LABEL_41;
            }

            return 4294966293;
          }

          break;
        case 6:
          valuePtr = 6;
          v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
          if (!v12)
          {
            if (AVE_Log_CheckLevel(0x1Eu, 4))
            {
              v28 = AVE_Log_CheckConsole(0x1Eu);
              v29 = AVE_GetCurrTime();
              v30 = AVE_Log_GetLevelStr(4);
              if (!v28)
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v29, 30, v30, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8734, "pNum != __null", a1);
                return 4294966293;
              }

              v16 = 8734;
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v29, 30, v30, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8734, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
              goto LABEL_41;
            }

            return 4294966293;
          }

          break;
        case 7:
          valuePtr = 3;
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
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v14, 30, v15, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8718, "pNum != __null", a1);
                return 4294966293;
              }

              v16 = 8718;
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v14, 30, v15, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8718, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
              goto LABEL_41;
            }

            return 4294966293;
          }

          break;
        default:
          goto LABEL_34;
      }
    }

    v10 = v12;
LABEL_34:
    *a5 = v10;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v31 = AVE_Log_CheckConsole(0x1Eu);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(7);
      if (v31)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v32, 30, v33, a1, *(a1 + 7), *a2, valuePtr, v10);
        v32 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v32, 30);
      return 0;
    }

    return result;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 4))
  {
    v17 = AVE_Log_CheckConsole(0x1Eu);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8691, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v20 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v38, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8691);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetQuantizationScalingMatrixPreset", 8691);
    }
  }

  return 4294966295;
}

uint64_t AVE_Prop_AVC_GetUsingHardwareAcceleratedVideoEncoder(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  *a5 = *MEMORY[0x29EDB8F00];
  if (AVE_Log_CheckLevel(0x1Eu, 7))
  {
    v7 = AVE_Log_CheckConsole(0x1Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, 1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", CurrTime);
  }

  return 0;
}

uint64_t AVE_Prop_AVC_SetParavirtualized(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4269] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetParavirtualized", 8807, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetParavirtualized", 8807, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetParavirtualized", 8797, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetParavirtualized");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetParavirtualized");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetParavirtualized(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[4269];
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetParavirtualized", 8845, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetParavirtualized", 8845);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetParavirtualized", 8845);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSupportedPresetDictionaries(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 13);
    if (v10)
    {
      v11 = CFGetRetainCount(v10);
      if (v11 != 1 && AVE_Log_CheckLevel(0x1Eu, 5))
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(5);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d preset dictionary reference count %p %lld %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8899, a1, *(a1 + 7), v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
        }

        syslog(3, "%lld %d AVE %s: %s:%d preset dictionary reference count %p %lld %d", CurrTime, 30);
      }

      CFRetain(*(a1 + 13));
      *a5 = *(a1 + 13);
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v24 = AVE_Log_CheckConsole(0x1Eu);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(7);
        if (v24)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v25, 30, v26, a1, *(a1 + 7), *a2, *(a1 + 13));
          v25 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v25);
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
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | preset dictionary not ready %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8892, "psINS->pPresetDict != __null", a1, a2, a3, a4, a5);
          v22 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | preset dictionary not ready %p %p %p %p %p", v22, 30, v28, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8892);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | preset dictionary not ready %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8892);
        }
      }

      return 4294966287;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8884, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v27, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8884);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetSupportedPresetDictionaries", 8884);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSwFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2137] = valuePtr;
        a1[181] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetSwFeatureOn", 8956, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetSwFeatureOn", 8956, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetSwFeatureOn", 8956, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSwFeatureOn", 8947, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSwFeatureOn", 8947, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSwFeatureOn", 8937, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSwFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSwFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSwFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[181];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetSwFeatureOn", 9002, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetSwFeatureOn", 9002, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetSwFeatureOn", 9002, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSwFeatureOn", 8992, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSwFeatureOn", 8992);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSwFeatureOn", 8992);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSwFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2138] = valuePtr;
        a1[181] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetSwFeatureOff", 9053, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetSwFeatureOff", 9053, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetSwFeatureOff", 9053, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSwFeatureOff", 9044, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSwFeatureOff", 9044, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSwFeatureOff", 9034, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSwFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSwFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSwFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[181];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetSwFeatureOff", 9099, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetSwFeatureOff", 9099, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetSwFeatureOff", 9099, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSwFeatureOff", 9089, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSwFeatureOff", 9089);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSwFeatureOff", 9089);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetHwFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2139] = valuePtr;
        a1[182] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetHwFeatureOn", 9150, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetHwFeatureOn", 9150, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetHwFeatureOn", 9150, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetHwFeatureOn", 9141, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetHwFeatureOn", 9141, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetHwFeatureOn", 9131, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetHwFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetHwFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetHwFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[182];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetHwFeatureOn", 9196, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetHwFeatureOn", 9196, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetHwFeatureOn", 9196, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetHwFeatureOn", 9186, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetHwFeatureOn", 9186);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetHwFeatureOn", 9186);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetHwFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2140] = valuePtr;
        a1[182] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetHwFeatureOff", 9247, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetHwFeatureOff", 9247, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetHwFeatureOff", 9247, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetHwFeatureOff", 9238, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetHwFeatureOff", 9238, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetHwFeatureOff", 9228, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetHwFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetHwFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetHwFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[182];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetHwFeatureOff", 9293, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetHwFeatureOff", 9293, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetHwFeatureOff", 9293, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetHwFeatureOff", 9283, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetHwFeatureOff", 9283);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetHwFeatureOff", 9283);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetPerfFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4282] = valuePtr;
        a1[172] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetPerfFeatureOn", 9344, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetPerfFeatureOn", 9344, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetPerfFeatureOn", 9344, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetPerfFeatureOn", 9335, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetPerfFeatureOn", 9335, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetPerfFeatureOn", 9325, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetPerfFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetPerfFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetPerfFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[172];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetPerfFeatureOn", 9390, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetPerfFeatureOn", 9390, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetPerfFeatureOn", 9390, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetPerfFeatureOn", 9380, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetPerfFeatureOn", 9380);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetPerfFeatureOn", 9380);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetPerfFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4283] = valuePtr;
        a1[172] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetPerfFeatureOff", 9441, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetPerfFeatureOff", 9441, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetPerfFeatureOff", 9441, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetPerfFeatureOff", 9432, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetPerfFeatureOff", 9432, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetPerfFeatureOff", 9422, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetPerfFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetPerfFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetPerfFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[172];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetPerfFeatureOff", 9487, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetPerfFeatureOff", 9487, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetPerfFeatureOff", 9487, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetPerfFeatureOff", 9477, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetPerfFeatureOff", 9477);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetPerfFeatureOff", 9477);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSVENum(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSVENum", 9538, "iNum > 0 && iNum <= 4", a1, a1[7], a2, a3, a4, valuePtr, 0, 4);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetSVENum", 9538, "iNum > 0 && iNum <= 4", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSVENum", 9538, "iNum > 0 && iNum <= 4", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4284) = valuePtr;
        *(a1 + 2870) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSVENum", 9529, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSVENum", 9529, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSVENum", 9519, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSVENum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSVENum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSVENum(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2870];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSVENum", 9584, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetSVENum", 9584, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetSVENum", 9584, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSVENum", 9574, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSVENum", 9574);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSVENum", 9574);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSVEMap(char *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Str = AVE_CFStr_GetStr(a4, a1 + 17140, 0x80u);
      AVE_SNPrintf(a1 + 17140, 128, "%s", Str);
      v10 = AVE_DLB_ParseCfg(a1 + 17140, a1 + 2866);
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
            printf("%lld %d AVE %s: %s:%d %s | fail to parse DLB configuration %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSVEMap", 9636, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v11);
            v15 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to parse DLB configuration %p %lld %p %p %p %d", v15, 30, v29, "AVE_Prop_AVC_SetSVEMap", 9636, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to parse DLB configuration %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSVEMap", 9636, "ret == 0");
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 7))
        {
          v25 = AVE_Log_CheckConsole(0x1Eu);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(7);
          if (v25)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %s\n", v26, 30, v27, a1, *(a1 + 7), *a2, a1 + 17140);
            v26 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %s", v26);
        }

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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetSVEMap", 9626, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetSVEMap", 9626, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetSVEMap", 9616, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v30, "AVE_Prop_AVC_SetSVEMap");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetSVEMap");
      }
    }

    return 4294966295;
  }

  return v11;
}

uint64_t AVE_Prop_AVC_GetSVEMap(const char *a1, const char **a2, CFAllocatorRef alloc, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, a1 + 17140, 0);
    if (v10)
    {
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 17140);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s", CurrTime);
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
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v20, 30, v21, "AVE_Prop_AVC_GetSVEMap", 9677, "pStr != __null", a1, alloc, a4, a5, a1 + 17140);
          v22 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v24, "AVE_Prop_AVC_GetSVEMap", 9677);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v20, 30, v21, "AVE_Prop_AVC_GetSVEMap", 9677);
        }
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetSVEMap", 9668, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v18 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v23, "AVE_Prop_AVC_GetSVEMap");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetSVEMap");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSVESchedMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSVESchedMode", 9729, "iMode >= 0 && iMode < 2", a1, a1[7], a2, a3, a4, valuePtr, 0, 2);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", v26, 30, v28, "AVE_Prop_AVC_SetSVESchedMode", 9729, "iMode >= 0 && iMode < 2", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetSVESchedMode", 9729, "iMode >= 0 && iMode < 2", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4317) = valuePtr;
        *(a1 + 2869) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSVESchedMode", 9719, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSVESchedMode", 9719, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSVESchedMode", 9709, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSVESchedMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSVESchedMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSVESchedMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2869];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSVESchedMode", 9775, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetSVESchedMode", 9775, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetSVESchedMode", 9775, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSVESchedMode", 9765, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSVESchedMode", 9765);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSVESchedMode", 9765);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetDLBType(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 2)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetDLBType", 9826, "iType >= 0 && iType <= 1", a1, a1[7], a2, a3, a4, valuePtr, 0, 1);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetDLBType", 9826, "iType >= 0 && iType <= 1", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetDLBType", 9826, "iType >= 0 && iType <= 1", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4318) = valuePtr;
        *(a1 + 2868) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetDLBType", 9817, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetDLBType", 9817, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetDLBType", 9807, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetDLBType");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetDLBType");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetDLBType(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2868];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetDLBType", 9872, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetDLBType", 9872, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetDLBType", 9872, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetDLBType", 9862, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetDLBType", 9862);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetDLBType", 9862);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetDebugFeature(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      a1[2160] = valuePtr;
      a1[88] = v9;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetDebugFeature", 9914, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetDebugFeature", 9914, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetDebugFeature", 9904, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetDebugFeature");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetDebugFeature");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetDebugFeature(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[88];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetDebugFeature", 9963, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetDebugFeature", 9963, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetDebugFeature", 9963, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetDebugFeature", 9953, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetDebugFeature", 9953);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetDebugFeature", 9953);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSessionName(char *a1, const char **a2, const __CFString *a3, const __CFString *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Str = AVE_CFStr_GetStr(a4, a1 + 17288, 0x200u);
      AVE_SNPrintf(a1 + 17288, 512, "%s", Str);
      AVE_StrNCpy(a1 + 160, a1 + 17288, 512);
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v11 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %s\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 17288);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %s", CurrTime);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSessionName", 10005, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSessionName", 10005, "CFStringGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSessionName", 9995, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSessionName(const char *a1, const char **a2, CFAllocatorRef alloc, const __CFString *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = CFStringCreateWithCString(alloc, a1 + 17288, 0);
    if (v10)
    {
      *a5 = v10;
      result = AVE_Log_CheckLevel(0x1Eu, 7);
      if (result)
      {
        v12 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %s\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, a1 + 17288);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %s", CurrTime);
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
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s\n", v20, 30, v21, "AVE_Prop_AVC_GetSessionName", 10054, "pStr != __null", a1, alloc, a4, a5, a1 + 17288);
          v22 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v22, 30, v24, "AVE_Prop_AVC_GetSessionName", 10054);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFString %p %p %p %p %s", v20, 30, v21, "AVE_Prop_AVC_GetSessionName", 10054);
        }
      }

      return 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetSessionName", 10045, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a4, a5);
        v18 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v18, 30, v23, "AVE_Prop_AVC_GetSessionName");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetSessionName");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetAlgFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2225] = valuePtr;
        a1[136] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetAlgFeatureOn", 10105, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetAlgFeatureOn", 10105, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetAlgFeatureOn", 10105, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAlgFeatureOn", 10096, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAlgFeatureOn", 10096, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAlgFeatureOn", 10086, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetAlgFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetAlgFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetAlgFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[136];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetAlgFeatureOn", 10151, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetAlgFeatureOn", 10151, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetAlgFeatureOn", 10151, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetAlgFeatureOn", 10141, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetAlgFeatureOn", 10141);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetAlgFeatureOn", 10141);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetAlgFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2226] = valuePtr;
        a1[136] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetAlgFeatureOff", 10202, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetAlgFeatureOff", 10202, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetAlgFeatureOff", 10202, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAlgFeatureOff", 10193, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAlgFeatureOff", 10193, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAlgFeatureOff", 10183, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetAlgFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetAlgFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetAlgFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[136];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetAlgFeatureOff", 10248, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetAlgFeatureOff", 10248, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetAlgFeatureOff", 10248, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetAlgFeatureOff", 10238, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetAlgFeatureOff", 10238);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetAlgFeatureOff", 10238);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetInitialQPI(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInitialQPI", 10300, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetInitialQPI", 10300, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInitialQPI", 10300, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4454) = valuePtr;
        *(a1 + 286) = v9;
        *(a1 + 10844) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetInitialQPI", 10290, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetInitialQPI", 10290, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetInitialQPI", 10280, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetInitialQPI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetInitialQPI");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetInitialQPI(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[286];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetInitialQPI", 10347, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetInitialQPI", 10347, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetInitialQPI", 10347, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetInitialQPI", 10337, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetInitialQPI", 10337);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetInitialQPI", 10337);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetInitialQPP(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInitialQPP", 10399, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetInitialQPP", 10399, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInitialQPP", 10399, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4455) = valuePtr;
        *(a1 + 287) = v9;
        *(a1 + 10844) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetInitialQPP", 10389, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetInitialQPP", 10389, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetInitialQPP", 10379, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetInitialQPP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetInitialQPP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetInitialQPP(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[287];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetInitialQPP", 10446, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetInitialQPP", 10446, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetInitialQPP", 10446, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetInitialQPP", 10436, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetInitialQPP", 10436);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetInitialQPP", 10436);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetInitialQPB(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = -13;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr + 12) >= 0x40)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInitialQPB", 10498, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, a1[7], a2, a3, a4, valuePtr, -12, 51);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetInitialQPB", 10498, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetInitialQPB", 10498, "iInitialQP >= ((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) && iInitialQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4456) = valuePtr;
        *(a1 + 288) = v9;
        *(a1 + 10844) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetInitialQPB", 10488, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetInitialQPB", 10488, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetInitialQPB", 10478, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetInitialQPB");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetInitialQPB");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetInitialQPB(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[288];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetInitialQPB", 10545, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetInitialQPB", 10545, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetInitialQPB", 10545, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetInitialQPB", 10535, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetInitialQPB", 10535);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetInitialQPB", 10535);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRCFeatureOn(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2229] = valuePtr;
        a1[140] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetRCFeatureOn", 10596, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetRCFeatureOn", 10596, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetRCFeatureOn", 10596, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRCFeatureOn", 10587, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRCFeatureOn", 10587, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRCFeatureOn", 10577, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRCFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRCFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRCFeatureOn(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[140];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetRCFeatureOn", 10642, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetRCFeatureOn", 10642, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetRCFeatureOn", 10642, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRCFeatureOn", 10632, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRCFeatureOn", 10632);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRCFeatureOn", 10632);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRCFeatureOff(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[2230] = valuePtr;
        a1[140] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetRCFeatureOff", 10693, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetRCFeatureOff", 10693, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetRCFeatureOff", 10693, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRCFeatureOff", 10684, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRCFeatureOff", 10684, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRCFeatureOff", 10674, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRCFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRCFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRCFeatureOff(void *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[140];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx\n", v21, 30, v22, "AVE_Prop_AVC_GetRCFeatureOff", 10739, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v23, 30, v25, "AVE_Prop_AVC_GetRCFeatureOff", 10739, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%llx", v21, 30, v22, "AVE_Prop_AVC_GetRCFeatureOff", 10739, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRCFeatureOff", 10729, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRCFeatureOff", 10729);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRCFeatureOff", 10729);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLowDelay(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4462] = v9;
      a1[369] = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLowDelay", 10781, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLowDelay", 10781, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLowDelay", 10771, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetLowDelay");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetLowDelay");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetLowDelay(_DWORD *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[369];
    v11 = MEMORY[0x29EDB8F00];
    if (!v10)
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    *a5 = *v11;
    result = AVE_Log_CheckLevel(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetLowDelay", 10818, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetLowDelay", 10818);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetLowDelay", 10818);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRCMode(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 0x64)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRCMode", 10874, "iRCMode > AVE_RCMode_None && iRCMode <= AVE_RCMode_HwVal", a1, a1[7], a2, a3, a4, valuePtr, 0, 100);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetRCMode", 10874, "iRCMode > AVE_RCMode_None && iRCMode <= AVE_RCMode_HwVal", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRCMode", 10874, "iRCMode > AVE_RCMode_None && iRCMode <= AVE_RCMode_HwVal", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4463) = valuePtr;
        *(a1 + 283) = v9;
        *(a1 + 10784) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRCMode", 10865, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRCMode", 10865, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRCMode", 10855, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRCMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRCMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRCMode(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[283];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetRCMode", 10921, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetRCMode", 10921, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetRCMode", 10921, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRCMode", 10911, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRCMode", 10911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRCMode", 10911);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetBitRate(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetBitRate", 10972, "iBitRate > 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetBitRate", 10972, "iBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetBitRate", 10972, "iBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4464) = valuePtr;
        *(a1 + 284) = v9;
        *(a1 + 10783) = 1;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetBitRate", 10963, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetBitRate", 10963, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetBitRate", 10953, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetBitRate(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[284];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetBitRate", 11019, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetBitRate", 11019, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetBitRate", 11019, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetBitRate", 11009, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetBitRate", 11009);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetBitRate", 11009);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetSkipCountingPSHeaders(_DWORD *a1, const char **a2, const __CFString *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      a1[4465] = v9;
      *(a1 + 140) = *(a1 + 140) & 0xFFFFFFFFFFFFFFFBLL | (4 * v9);
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSkipCountingPSHeaders", 11062, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSkipCountingPSHeaders", 11062, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSkipCountingPSHeaders", 11052, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetSkipCountingPSHeaders");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSkipCountingPSHeaders");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetSkipCountingPSHeaders(void *a1, const char **a2, const __CFAllocator *a3, const __CFString *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 4;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", CurrTime, 30, LevelStr, a1, a1[7], *a2, v10 >> 2);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSkipCountingPSHeaders", 11106, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetSkipCountingPSHeaders", 11106);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSkipCountingPSHeaders", 11106);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVBVBufferSize(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVBufferSize", 11165, "fVBVBufferSize > 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v30 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v30, 30, v37, "AVE_Prop_AVC_SetVBVBufferSize", 11165);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVBufferSize", 11165);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 2233) = valuePtr;
        v12 = AVE_RC_DecideVBVBufferSize(v9[104], v11, *(a1 + 2104), *(a1 + 140), &v38);
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
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVBufferSize", 11174, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v9[104], valuePtr, *(a1 + 2104), *(a1 + 140));
              v17 = AVE_GetCurrTime();
              v35 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx", v17, 30, v35, "AVE_Prop_AVC_SetVBVBufferSize", 11174, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx", v15, 30, v16, "AVE_Prop_AVC_SetVBVBufferSize", 11174, "ret == 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVBufferSize", 11156, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVBufferSize", 11156, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVBufferSize", 11146, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v36, "AVE_Prop_AVC_SetVBVBufferSize");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_SetVBVBufferSize");
      }
    }

    return 4294966295;
  }

  return v13;
}

uint64_t AVE_Prop_AVC_GetVBVBufferSize(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVBufferSize", 11218, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetVBVBufferSize", 11218, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetVBVBufferSize", 11218, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVBufferSize", 11208, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVBVBufferSize", 11208);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVBVBufferSize", 11208);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetVBVInitialDelay(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
      if (valuePtr >= 0.0)
      {
        *(a1 + 2234) = valuePtr;
        v26 = AVE_RC_DecideVBVInitialDelay(v9[105], v11, *(a1 + 2105), *(a1 + 152), *(a1 + 140), &v38);
        if (v26)
        {
          v25 = v26;
          if (AVE_Log_CheckLevel(0x1Eu, 4))
          {
            v27 = AVE_Log_CheckConsole(0x1Eu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVInitialDelay", 11284, "ret == 0", a1, *(a1 + 7), a2, a3, a4, v9[105], valuePtr, *(a1 + 2105), *(a1 + 152), *(a1 + 140));
              v30 = AVE_GetCurrTime();
              v37 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx", v30, 30, v37, "AVE_Prop_AVC_SetVBVInitialDelay", 11284, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetVBVInitialDelay", 11284, "ret == 0");
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

      else
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x1Eu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v13, 30, v14, "AVE_Prop_AVC_SetVBVInitialDelay", 11271, "fVBVInitialDelay >= 0.0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v15 = AVE_GetCurrTime();
            v35 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v15, 30, v35, "AVE_Prop_AVC_SetVBVInitialDelay", 11271);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v13, 30, v14, "AVE_Prop_AVC_SetVBVInitialDelay", 11271);
          }
        }

        return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetVBVInitialDelay", 11262, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetVBVInitialDelay", 11262, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetVBVInitialDelay", 11252, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v36, "AVE_Prop_AVC_SetVBVInitialDelay");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetVBVInitialDelay");
      }
    }

    return 4294966295;
  }

  return v25;
}

uint64_t AVE_Prop_AVC_GetVBVInitialDelay(double *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[153];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVInitialDelay", 11327, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v23, 30, v25, "AVE_Prop_AVC_GetVBVInitialDelay", 11327, "pNum != __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f", v21, 30, v22, "AVE_Prop_AVC_GetVBVInitialDelay", 11327, "pNum != __null");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVInitialDelay", 11317, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVBVInitialDelay", 11317);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVBVInitialDelay", 11317);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetGOPFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4470] = valuePtr;
        a1[310] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetGOPFeatureOn", 11378, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetGOPFeatureOn", 11378, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetGOPFeatureOn", 11378, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetGOPFeatureOn", 11369, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetGOPFeatureOn", 11369, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetGOPFeatureOn", 11359, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetGOPFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetGOPFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetGOPFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[310];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetGOPFeatureOn", 11424, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetGOPFeatureOn", 11424, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetGOPFeatureOn", 11424, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetGOPFeatureOn", 11414, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetGOPFeatureOn", 11414);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetGOPFeatureOn", 11414);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetGOPFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4471] = valuePtr;
        a1[310] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetGOPFeatureOff", 11475, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetGOPFeatureOff", 11475, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetGOPFeatureOff", 11475, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetGOPFeatureOff", 11466, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetGOPFeatureOff", 11466, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetGOPFeatureOff", 11456, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetGOPFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetGOPFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetGOPFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[310];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetGOPFeatureOff", 11521, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetGOPFeatureOff", 11521, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetGOPFeatureOff", 11521, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetGOPFeatureOff", 11511, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetGOPFeatureOff", 11511);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetGOPFeatureOff", 11511);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetNumOfPFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfPFrame", 11573, "iNumOfPFrame >= 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetNumOfPFrame", 11573, "iNumOfPFrame >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfPFrame", 11573, "iNumOfPFrame >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4472) = valuePtr;
        *(a1 + 313) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetNumOfPFrame", 11563, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetNumOfPFrame", 11563, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetNumOfPFrame", 11553, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetNumOfPFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetNumOfPFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetNumOfPFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[313];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetNumOfPFrame", 11619, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetNumOfPFrame", 11619, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetNumOfPFrame", 11619, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetNumOfPFrame", 11609, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetNumOfPFrame", 11609);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetNumOfPFrame", 11609);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetNumOfBFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfBFrame", 11671, "(iNumOfBFrame >= 0) && (iNumOfBFrame <= 3)", a1, a1[7], a2, a3, a4, valuePtr, 0, 3);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetNumOfBFrame", 11671, "(iNumOfBFrame >= 0) && (iNumOfBFrame <= 3)", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfBFrame", 11671, "(iNumOfBFrame >= 0) && (iNumOfBFrame <= 3)", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4473) = valuePtr;
        *(a1 + 314) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetNumOfBFrame", 11661, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetNumOfBFrame", 11661, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetNumOfBFrame", 11651, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetNumOfBFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetNumOfBFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetNumOfBFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[314];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetNumOfBFrame", 11717, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetNumOfBFrame", 11717, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetNumOfBFrame", 11717, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetNumOfBFrame", 11707, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetNumOfBFrame", 11707);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetNumOfBFrame", 11707);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetNumOfGOPLayer(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfGOPLayer", 11768, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1, a1[7], a2, a3, a4, valuePtr, 1, 4);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetNumOfGOPLayer", 11768, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfGOPLayer", 11768, "iNumOfGOPLayer >= 1 && iNumOfGOPLayer <= 4", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4474) = valuePtr;
        *(a1 + 315) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetNumOfGOPLayer", 11759, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetNumOfGOPLayer", 11759, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetNumOfGOPLayer", 11749, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetNumOfGOPLayer");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetNumOfGOPLayer");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetNumOfGOPLayer(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[315];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetNumOfGOPLayer", 11814, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetNumOfGOPLayer", 11814, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetNumOfGOPLayer", 11814, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetNumOfGOPLayer", 11804, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetNumOfGOPLayer", 11804);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetNumOfGOPLayer", 11804);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetNumOfTemporalLayer(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfTemporalLayer", 11866, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)", a1, a1[7], a2, a3, a4, valuePtr, 0, 4);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetNumOfTemporalLayer", 11866, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetNumOfTemporalLayer", 11866, "(iNumOfTemporalLayer > 0) && (iNumOfTemporalLayer <= 4)", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4475) = valuePtr;
        *(a1 + 322) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetNumOfTemporalLayer", 11856, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetNumOfTemporalLayer", 11856, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetNumOfTemporalLayer", 11846, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetNumOfTemporalLayer");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetNumOfTemporalLayer");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetNumOfTemporalLayer(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[322];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11912, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11912, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11912, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11902, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11902);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11902);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4476] = valuePtr;
        a1[324] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetRefFeatureOn", 11963, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetRefFeatureOn", 11963, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetRefFeatureOn", 11963, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOn", 11954, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOn", 11954, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefFeatureOn", 11944, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRefFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRefFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[324];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetRefFeatureOn", 12009, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetRefFeatureOn", 12009, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetRefFeatureOn", 12009, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefFeatureOn", 11999, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRefFeatureOn", 11999);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRefFeatureOn", 11999);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4477] = valuePtr;
        a1[324] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetRefFeatureOff", 12060, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetRefFeatureOff", 12060, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetRefFeatureOff", 12060, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOff", 12051, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOff", 12051, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefFeatureOff", 12041, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRefFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRefFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[324];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetRefFeatureOff", 12106, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetRefFeatureOff", 12106, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetRefFeatureOff", 12106, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefFeatureOff", 12096, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRefFeatureOff", 12096);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRefFeatureOff", 12096);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefNumOfPFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 1) >= 4)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4478) = valuePtr;
        *(a1 + 327) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfPFrame", 12148, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfPFrame", 12148, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefNumOfPFrame", 12138, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRefNumOfPFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRefNumOfPFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefNumOfPFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[327];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetRefNumOfPFrame", 12204, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetRefNumOfPFrame", 12204, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetRefNumOfPFrame", 12204, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetRefNumOfBFrame(void *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if ((valuePtr - 2) >= 3)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 4))
        {
          v23 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1, a1[7], a2, a3, a4, valuePtr, 0, 3);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 4479) = valuePtr;
        *(a1 + 328) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfBFrame", 12246, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfBFrame", 12246, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefNumOfBFrame", 12236, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetRefNumOfBFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetRefNumOfBFrame");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetRefNumOfBFrame(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[328];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetRefNumOfBFrame", 12302, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetRefNumOfBFrame", 12302, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetRefNumOfBFrame", 12302, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQPModFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4480] = valuePtr;
        a1[334] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetQPModFeatureOn", 12353, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetQPModFeatureOn", 12353, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetQPModFeatureOn", 12353, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOn", 12344, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOn", 12344, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetQPModFeatureOn", 12334, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetQPModFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetQPModFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetQPModFeatureOn(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[334];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetQPModFeatureOn", 12399, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetQPModFeatureOn", 12399, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetQPModFeatureOn", 12399, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQPModFeatureOn", 12389, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetQPModFeatureOn", 12389);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetQPModFeatureOn", 12389);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQPModFeatureOff(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4481] = valuePtr;
        a1[334] &= ~v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetQPModFeatureOff", 12450, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetQPModFeatureOff", 12450, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetQPModFeatureOff", 12450, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOff", 12441, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOff", 12441, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetQPModFeatureOff", 12431, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetQPModFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetQPModFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_GetQPModFeatureOff(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[334];
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr, v11);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", CurrTime, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetQPModFeatureOff", 12496, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetQPModFeatureOff", 12496, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetQPModFeatureOff", 12496, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQPModFeatureOff", 12486, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetQPModFeatureOff", 12486);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetQPModFeatureOff", 12486);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetQPModLevel(void *a1, void *a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (AVE_Log_CheckLevel(0x1Eu, 4))
      {
        v9 = AVE_Log_CheckConsole(0x1Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 1);
          v12 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v12, 30, v23, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", CurrTime, 30, LevelStr, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1);
        }
      }

      return 4294965292;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetQPModLevel", 12538, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetQPModLevel", 12538, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetQPModLevel", 12528, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v24, "AVE_Prop_AVC_SetQPModLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetQPModLevel");
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_Prop_AVC_GetQPModLevel(_DWORD *a1, const char **a2, CFAllocatorRef allocator, const __CFString *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[335];
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetQPModLevel", 12596, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetQPModLevel", 12596, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetQPModLevel", 12596, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQPModLevel", 12585, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetQPModLevel", 12585);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetQPModLevel", 12585);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_Prop_AVC_SetLambdaModFeatureOn(_DWORD *a1, const char **a2, const __CFString *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr)
      {
        a1[4483] = valuePtr;
        a1[338] |= v9;
        result = AVE_Log_CheckLevel(0x1Eu, 7);
        if (result)
        {
          v11 = AVE_Log_CheckConsole(0x1Eu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", CurrTime, 30, LevelStr, a1, *(a1 + 7), *a2, valuePtr);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", CurrTime);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12648, "iFeature != 0", a1, *(a1 + 7), a2, a3, a4, valuePtr);
            v26 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12648, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12648, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12639, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12639, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12629, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetLambdaModFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetLambdaModFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}