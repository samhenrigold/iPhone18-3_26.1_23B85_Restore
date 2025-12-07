uint64_t sub_8B020(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1348);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1284, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1284, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1284, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1274, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1274);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMaxAllowedFrameQP", 1274);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8B350(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1337, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1337, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1337, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16764) = valuePtr;
        *(a1 + 1344) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1327, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1327, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMinAllowedFrameQP", 1317, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetMinAllowedFrameQP");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMinAllowedFrameQP");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8B7C4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1344);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1383, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1383, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1383, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1373, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1373);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMinAllowedFrameQP", 1373);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8BAF4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1436, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1436, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1436, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMaxQP && iMaxQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16768) = valuePtr;
        *(a1 + 1236) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1426, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1426, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter", 1416, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSoftMaxQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8BF68(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1236);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSoftMaxQuantizationParameter", 1482, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetSoftMaxQuantizationParameter", 1482, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetSoftMaxQuantizationParameter", 1482, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSoftMaxQuantizationParameter", 1472, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSoftMaxQuantizationParameter", 1472);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSoftMaxQuantizationParameter", 1472);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8C298(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetSoftMinQuantizationParameter", 1535, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 51);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetSoftMinQuantizationParameter", 1535, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetSoftMinQuantizationParameter", 1535, "((((-6) * ((8) - 8))) < (((-6) * ((10) - 8))) ? (((-6) * ((8) - 8))) : (((-6) * ((10) - 8)))) <= iMinQP && iMinQP <= (((51)) > ((51)) ? ((51)) : ((51)))", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16772) = valuePtr;
        *(a1 + 1232) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSoftMinQuantizationParameter", 1525, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSoftMinQuantizationParameter", 1525, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSoftMinQuantizationParameter", 1515, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSoftMinQuantizationParameter");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSoftMinQuantizationParameter");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8C70C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1232);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSoftMinQuantizationParameter", 1581, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetSoftMinQuantizationParameter", 1581, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetSoftMinQuantizationParameter", 1581, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSoftMinQuantizationParameter", 1571, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSoftMinQuantizationParameter", 1571);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSoftMinQuantizationParameter", 1571);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8CA3C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetAverageBitRate", 1632, "iBitRate >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetAverageBitRate", 1632, "iBitRate >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetAverageBitRate", 1632, "iBitRate >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16776) = valuePtr;
        if (v9)
        {
          *(a1 + 1136) = v9;
          *(a1 + 10783) = 1;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAverageBitRate", 1623, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAverageBitRate", 1623, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAverageBitRate", 1613, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetAverageBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetAverageBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8CE98(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetAverageBitRate", 1683, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetAverageBitRate", 1683, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetAverageBitRate", 1683, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetAverageBitRate", 1673, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetAverageBitRate", 1673);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetAverageBitRate", 1673);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8D1C8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetConstantBitRate", 1734, "iBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetConstantBitRate", 1734, "iBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetConstantBitRate", 1734, "iBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16780) = valuePtr;
        *(a1 + 1132) = 2;
        *(a1 + 1136) = v9;
        *(a1 + 10783) = 257;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetConstantBitRate", 1725, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetConstantBitRate", 1725, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetConstantBitRate", 1715, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetConstantBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetConstantBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8D62C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetConstantBitRate", 1783, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetConstantBitRate", 1783, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetConstantBitRate", 1783, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetConstantBitRate", 1773, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetConstantBitRate", 1773);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetConstantBitRate", 1773);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8D95C(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = (a1 + 16460);
      v10 = sub_17D13C(a4, &v34);
      if (v10)
      {
        sub_16CEF8(&v34, 30, 4, "AVE_Prop_AVC_SetDataRateLimits", 1831);
      }

      else
      {
        v20 = v35;
        *(a1 + 16784) = v34;
        *(a1 + 16800) = v20;
        *(a1 + 16816) = v36;
      }

      v21 = v34;
      *v9 = v34 != 0;
      if (v21 < 1)
      {
        if (v21)
        {
LABEL_32:
          *(a1 + 1192) = v36;
          v28 = v35;
          *(a1 + 1160) = v34;
          *(a1 + 1176) = v28;
          if (*(a1 + 16464) == 30566)
          {
            *(a1 + 1132) = 4;
            *(a1 + 10784) = 1;
          }
        }
      }

      else
      {
        v22 = 0;
        v23 = &v35;
        do
        {
          v24 = *v23;
          if (*v23 <= 10.0)
          {
            if (*(v23 - 1) <= 0.0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (sub_160EF0(0x1Eu, 5))
            {
              v25 = sub_160F34(0x1Eu);
              v26 = sub_175AE4();
              v27 = sub_160F68(5);
              if (v25)
              {
                printf("%lld %d AVE %s: FIG: DataRateLimitsSeconds is longer than 10s. Force to 10s.\n", v26, 30, v27);
                v26 = sub_175AE4();
                v27 = sub_160F68(5);
              }

              syslog(3, "%lld %d AVE %s: FIG: DataRateLimitsSeconds is longer than 10s. Force to 10s.", v26, 30, v27);
            }

            v24 = *(v23 - 1) * 10.0 / *v23;
            *(v23 - 1) = v24;
            *v23 = 10.0;
          }

          if (v24 <= 0.0)
          {
LABEL_34:
            *v9 = 0;
            goto LABEL_35;
          }

          ++v22;
          v23 += 2;
        }

        while (v22 < v34);
        if (*v9)
        {
          goto LABEL_32;
        }
      }

LABEL_35:
      if (sub_160EF0(0x1Eu, 7))
      {
        v29 = sub_160F34(0x1Eu);
        v30 = sub_175AE4();
        v31 = sub_160F68(7);
        if (v29)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v30, 30, v31, a1, *(a1 + 56), *a2, v34);
          v30 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v30);
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetDataRateLimits", 1825, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetDataRateLimits", 1825, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetDataRateLimits", 1815, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v33 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v33, "AVE_Prop_AVC_SetDataRateLimits");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v12, 30, v13, "AVE_Prop_AVC_SetDataRateLimits");
      }
    }

    return 4294966295;
  }

  return v10;
}

uint64_t sub_8DE20(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (sub_17D318((a1 + 1160), Mutable))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
        if (v11)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d\n", v12, 30, v13, "AVE_Prop_AVC_GetDataRateLimits", 1910, "ret == 0", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 1160));
          v14 = sub_175AE4();
          v23 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d", v14, 30, v23, "AVE_Prop_AVC_GetDataRateLimits", 1910, "ret == 0", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRL %p %lld %p %p %p %p %d", v12, 30, v13, "AVE_Prop_AVC_GetDataRateLimits", 1910, "ret == 0", a1);
        }
      }

      return 4294966293;
    }

    else
    {
      *a5 = Mutable;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(7);
        if (v20)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v21, 30, v22, a1, *(a1 + 56), *a2, *(a1 + 1160), Mutable);
          v21 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v21, 30);
        return 0;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetDataRateLimits", 1898, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v18 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v24, "AVE_Prop_AVC_GetDataRateLimits", 1898);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v16, 30, v17, "AVE_Prop_AVC_GetDataRateLimits", 1898);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8E158(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetVariableBitRate", 1961, "iBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetVariableBitRate", 1961, "iBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetVariableBitRate", 1961, "iBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16824) = valuePtr;
        *(a1 + 1132) = 5;
        *(a1 + 10783) = 257;
        *(a1 + 1136) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetVariableBitRate", 1952, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetVariableBitRate", 1952, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetVariableBitRate", 1942, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetVariableBitRate");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetVariableBitRate");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8E5BC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1136);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetVariableBitRate", 2010, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetVariableBitRate", 2010, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetVariableBitRate", 2010, "pNum != __null", a1);
        }
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVariableBitRate", 2000, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVariableBitRate", 2000);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVariableBitRate", 2000);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_8E8EC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v8 = sub_1502C8();
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_SetVBVMaxBitRate", 2063, "iVBVMaxBitRate > 0", a1, *(a1 + 56), a2, a3, a4, HIDWORD(valuePtr));
            v30 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v30, 30, v37, "AVE_Prop_AVC_SetVBVMaxBitRate", 2063, "iVBVMaxBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v28, 30, v29, "AVE_Prop_AVC_SetVBVMaxBitRate", 2063, "iVBVMaxBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16828) = HIDWORD(valuePtr);
        v12 = sub_16D34C(v9[206], v11, &valuePtr);
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBitrate fail %p %lld %p %p %p %d %d\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVMaxBitRate", 2070, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v9[206], HIDWORD(valuePtr));
              v17 = sub_175AE4();
              v35 = sub_160F68(4);
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
          *(a1 + 1208) = valuePtr;
          if (sub_160EF0(0x1Eu, 7))
          {
            v31 = sub_160F34(0x1Eu);
            v32 = sub_175AE4();
            v33 = sub_160F68(7);
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d %d\n", v32, 30, v33, a1, *(a1 + 56), *a2, HIDWORD(valuePtr), valuePtr);
              v32 = sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d %d", v32);
          }

          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVMaxBitRate", 2054, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVMaxBitRate", 2054, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVMaxBitRate", 2044, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
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

uint64_t sub_8EE74(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1208);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVMaxBitRate", 2113, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVMaxBitRate", 2103, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_8F1A4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v8 = sub_1502C8();
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v28, 30, v29, "AVE_Prop_AVC_SetVBVBufferDuration", 2167, "fVBVBufferDuration > 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v30 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v30, 30, v37, "AVE_Prop_AVC_SetVBVBufferDuration", 2167);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f", v28, 30, v29, "AVE_Prop_AVC_SetVBVBufferDuration", 2167);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16832) = valuePtr;
        v12 = sub_16D7F4(*(a1 + 1120), &v38, v9[104], *(a1 + 17864), v11);
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVMaxBufferSize fail %p %lld %p %p %p %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVBufferDuration", 2177, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v9[104], *(a1 + 17864), valuePtr, *(a1 + 1120));
              v17 = sub_175AE4();
              v35 = sub_160F68(4);
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
          *(a1 + 1216) = v38;
          if (sub_160EF0(0x1Eu, 7))
          {
            v31 = sub_160F34(0x1Eu);
            v32 = sub_175AE4();
            v33 = sub_160F68(7);
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v32, 30, v33, a1, *(a1 + 56), *a2, valuePtr, v38);
              sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVBufferDuration", 2158, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVBufferDuration", 2158, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVBufferDuration", 2148, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
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

uint64_t sub_8F75C(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[152];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVBufferDuration", 2221, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVBufferDuration", 2211, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_8FAA0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  v8 = sub_1502C8();
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]\n", v28, 30, v29, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2275, "fVBVInitialDelayPercentage >= 0.0 && fVBVInitialDelayPercentage <= 100.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v30 = sub_175AE4();
            v37 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]", v30, 30, v37, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2275);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0, 100]", v28, 30, v29, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2275);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16840) = valuePtr;
        v12 = sub_16DDF4(*(a1 + 1120), &v38, v9[105], *(a1 + 17872), v11, *(a1 + 1216));
        if (v12)
        {
          v13 = v12;
          if (sub_160EF0(0x1Eu, 4))
          {
            v14 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            if (v14)
            {
              printf("%lld %d AVE %s: %s:%d %s | Decide VBVInitialDelay fail %p %lld %p %p %p %f %f %f %f 0x%llx\n", v15, 30, v16, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2289, "ret == 0", a1, *(a1 + 56), a2, a3, a4, v9[105], *(a1 + 17872), valuePtr, *(a1 + 1216), *(a1 + 1120));
              v17 = sub_175AE4();
              v35 = sub_160F68(4);
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
          *(a1 + 1224) = v38;
          if (sub_160EF0(0x1Eu, 7))
          {
            v31 = sub_160F34(0x1Eu);
            v32 = sub_175AE4();
            v33 = sub_160F68(7);
            if (v31)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %f %f\n", v32, 30, v33, a1, *(a1 + 56), *a2, valuePtr, v38);
              sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f %f");
          }

          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2266, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2266, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_SetVBVInitialDelayPercentage", 2256, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v21 = sub_175AE4();
        v36 = sub_160F68(4);
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

uint64_t sub_90074(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1224) * 100.0 / *(a1 + 1216);
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2333, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVBVInitialDelayPercentage", 2322, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_903CC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]\n", v24, 30, v25, "AVE_Prop_AVC_SetQuality", 2384, "fQuality >= 0.0 && fQuality <= 1.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v31 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v26, 30, v31, "AVE_Prop_AVC_SetQuality", 2384);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v24, 30, v25, "AVE_Prop_AVC_SetQuality", 2384);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16848) = valuePtr;
        if (sub_E7948(a1, v9) && sub_160EF0(0x1Eu, 5))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(5);
          if (v10)
          {
            printf("%lld %d AVE %s: fail to set value %p %lld %p %p %p %f\n", v11, 30, v12, a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(5);
          }

          syslog(3, "%lld %d AVE %s: fail to set value %p %lld %p %p %p %f", v11, 30);
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(7);
          if (v27)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v28, 30, v29, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *(a1 + 56);
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetQuality", 2375, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetQuality", 2375, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetQuality", 2365, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_908F8(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2106];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetQuality", 2436, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQuality", 2425, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_90C3C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]\n", v25, 30, v26, "AVE_Prop_AVC_SetConstantQualityFactor", 2488, "fCQFactor >= 0.0 && fCQFactor <= 1.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v27 = sub_175AE4();
            v33 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v27, 30, v33, "AVE_Prop_AVC_SetConstantQualityFactor", 2488);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f [0.0, 1.0]", v25, 30, v26, "AVE_Prop_AVC_SetConstantQualityFactor", 2488);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16856) = valuePtr;
        if (sub_E7BA4(a1, v9) && sub_160EF0(0x1Eu, 5))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(5);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_AVC_SetConstantQualityFactor", 2495, a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v13 = sub_175AE4();
            v31 = sub_160F68(5);
            syslog(3, "%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f", v13, 30, v31, "AVE_Prop_AVC_SetConstantQualityFactor");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d fail to set value %p %lld %p %p %p %f", v11, 30, v12, "AVE_Prop_AVC_SetConstantQualityFactor");
          }
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v28 = sub_160F34(0x1Eu);
          v29 = sub_175AE4();
          v30 = sub_160F68(7);
          if (v28)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v29, 30, v30, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetConstantQualityFactor", 2479, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetConstantQualityFactor", 2479, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetConstantQualityFactor", 2469, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v32 = sub_160F68(4);
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

uint64_t sub_9118C(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[2107];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetConstantQualityFactor", 2540, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetConstantQualityFactor", 2529, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_914D0(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = VTMultiPassStorageGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *(a1 + 56);
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetMultiPassStorage", 2583, "VTMultiPassStorageGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetMultiPassStorage", 2583, "VTMultiPassStorageGetTypeID() == CFGetTypeID(pValue)");
      }

      v22 = 4294965293;
      goto LABEL_28;
    }

    if (*(a1 + 16496))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v9 = sub_160F34(0x1Eu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p\n", v10, 30, v11, "AVE_Prop_AVC_SetMultiPassStorage", 2588, "psINS->multiPassStorage == __null", a1, *(a1 + 56), a2, a3, a4, *(a1 + 16496));
          v12 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p", v12, 30, v37, "AVE_Prop_AVC_SetMultiPassStorage", 2588, "psINS->multiPassStorage == __null");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | MultiPassStorage set multiple times %p %lld %p %p %p %p", v10, 30, v11, "AVE_Prop_AVC_SetMultiPassStorage", 2588, "psINS->multiPassStorage == __null");
        }
      }

      v22 = 4294966276;
LABEL_28:
      v28 = *(a1 + 16496);
      if (v28)
      {
        CFRelease(v28);
        *(a1 + 16496) = 0;
      }

      return v22;
    }

    v23 = CFRetain(a4);
    *(a1 + 16496) = v23;
    if (!v23)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | VTMultiPassStorageRef == NULL %p %lld %p %p %p\n", v31, 30, v32, "AVE_Prop_AVC_SetMultiPassStorage", 2597, "psINS->multiPassStorage != __null", a1, *(a1 + 56), a2, a3, a4);
          v33 = sub_175AE4();
          v40 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | VTMultiPassStorageSetIdentifier failed %p %lld %p %p %p %p\n", v25, 30, v26, "AVE_Prop_AVC_SetMultiPassStorage", 2602, "err == noErr", a1, *(a1 + 56), a2, a3, a4, *(a1 + 16496));
          v27 = sub_175AE4();
          v39 = sub_160F68(4);
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

    *(a1 + 768) = 2;
    if (sub_160EF0(0x1Eu, 7))
    {
      v34 = sub_160F34(0x1Eu);
      v35 = sub_175AE4();
      v36 = sub_160F68(7);
      if (v34)
      {
        printf("%lld %d AVE %s: %p %lld SetProp %s: %p\n", v35, 30, v36, a1, *(a1 + 56), *a2, *(a1 + 16496));
        v35 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %p", v35);
    }

    return 0;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetMultiPassStorage", 2573, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v38 = sub_160F68(4);
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

uint64_t sub_91B20(void *a1, const char **a2, const void *a3, const void *a4, void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[2062];
    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *a5 = v10;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v13, 30, v14, a1, a1[7], *a2, a5);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v13);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetMultiPassStorage", 2643, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
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

uint64_t sub_91D2C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetLookAheadFrames", 2705, "iLAFrameCnt >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v31 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v31, "AVE_Prop_AVC_SetLookAheadFrames", 2705, "iLAFrameCnt >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetLookAheadFrames", 2705, "iLAFrameCnt >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        if (valuePtr >= 0x15)
        {
          if (sub_160EF0(0x1Eu, 5))
          {
            v10 = sub_160F34(0x1Eu);
            v11 = sub_175AE4();
            v12 = sub_160F68(5);
            if (v10)
            {
              printf("%lld %d AVE %s: Cap kVTCompressionPropertyKey_SuggestedLookAheadFrameCount from %d to %d\n", v11, 30, v12, valuePtr, 20);
              v11 = sub_175AE4();
              v12 = sub_160F68(5);
            }

            syslog(3, "%lld %d AVE %s: Cap kVTCompressionPropertyKey_SuggestedLookAheadFrameCount from %d to %d", v11, 30, v12, valuePtr, 20);
          }

          v9 = 20;
          valuePtr = 20;
        }

        *(a1 + 16864) = v9;
        *(a1 + 1128) = v9;
        *(a1 + 1120) |= 0x80000000uLL;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(7);
          if (v27)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v28, 30, v29, a1, *(a1 + 56), *a2, valuePtr);
            v28 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v28);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *(a1 + 56);
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetLookAheadFrames", 2696, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetLookAheadFrames", 2696, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetLookAheadFrames", 2686, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_9222C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1128);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetLookAheadFrames", 2760, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLookAheadFrames", 2750, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_9255C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2812, "iFrameRateTargetForBitRate > 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2812, "iFrameRateTargetForBitRate > 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2812, "iFrameRateTargetForBitRate > 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16868) = valuePtr;
        *(a1 + 11448) = v9;
        *(a1 + 1120) |= 0x10uLL;
        *(a1 + 1096) |= 0x2000000000uLL;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2803, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2803, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetFrameRateTargetForAverageBitrate", 2793, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_929C4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11448);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2861, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetFrameRateTargetForAverageBitrate", 2850, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_92CF4(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 16872) = v10;
      v11 = *(a1 + 1336);
      if (Value)
      {
        *(a1 + 1336) = v11 | 0x8000;
      }

      else
      {
        *(a1 + 1336) = v11 & 0xFFFF7FFF;
        *(a1 + 1120) |= 0x8000000uLL;
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(7);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v23, 30, v24, a1, *(a1 + 56), *a2, v10);
          v23 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v23);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v16 = sub_160F34(0x1Eu);
        v17 = sub_175AE4();
        v18 = sub_160F68(4);
        v19 = *(a1 + 56);
        v20 = CFGetTypeID(a4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v17, 30, v18, "AVE_Prop_AVC_SetPerceptualQualityOptimization", 2904, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v19, a2, a3, a4, v20);
          v17 = sub_175AE4();
          v18 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v17, 30, v18, "AVE_Prop_AVC_SetPerceptualQualityOptimization", 2904, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_SetPerceptualQualityOptimization", 2894, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_93054(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1336) & 0x8000;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = v10 >> 15;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v16);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetPerceptualQualityOptimization", 2951, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_93278(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v22 = sub_160F34(0x1Eu);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v23, 30, v24, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 3009, "ConvergenceDurationForAverageDataRate >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v25 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v25, 30, v27, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 3009, "ConvergenceDurationForAverageDataRate >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v23, 30, v24, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 3009, "ConvergenceDurationForAverageDataRate >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16876) = valuePtr;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(7);
          if (v10)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v11, 30, v12, a1, *(a1 + 56), *a2, valuePtr);
            v11 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v11);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = *(a1 + 56);
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 2999, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 2999, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetConvergenceDurationForAverageDataRate", 2989, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_936C0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 16876);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3057, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetConvergenceDurationForAverageDataRate", 3045, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_939F4(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 16880) = v10;
      v11 = *(a1 + 1296) & 0xFFFFFFFE;
      if (Value)
      {
        ++v11;
      }

      *(a1 + 1296) = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableWeightedPrediction", 3100, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableWeightedPrediction", 3100, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableWeightedPrediction", 3090, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_93D3C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1296) & 1;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableWeightedPrediction", 3145, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
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

uint64_t sub_93F5C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16884) = v9;
      *(a1 + 1120) = *(a1 + 1120) & 0xFFFFFFFFFFFFFFF7 | (8 * v9);
      *(a1 + 11776) = 1;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesAfterEnd", 3193, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesAfterEnd", 3193, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMoreFramesAfterEnd", 3183, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_942A8(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[140] & 8;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10 >> 3);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMoreFramesAfterEnd", 3239, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
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

uint64_t sub_944D0(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16888) = v9;
      *(a1 + 11776) = 1;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesBeforeStart", 3287, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMoreFramesBeforeStart", 3287, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMoreFramesBeforeStart", 3277, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_94810(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 16888);
    v11 = &kCFBooleanTrue;
    if (v10 <= 0)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMoreFramesBeforeStart", 3326, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_94A3C(uint64_t a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  v10 = sub_1502C8();
  if (a1 && a2 && a4 && a5)
  {
    v11 = v10[212];
    v12 = sub_16FD90(*(a1 + 68));
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
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v16 = sub_160F34(0x1Eu);
          v17 = sub_175AE4();
          v18 = sub_160F68(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v17, 30, v18, a1, *(a1 + 56), *a2, valuePtr, v14);
            v17 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v17, 30);
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v27 = sub_160F34(0x1Eu);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3382, "pNum != __null", a1, *(a1 + 56), a2, a3, a4, a5, valuePtr);
            v30 = sub_175AE4();
            v33 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find device capability  %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3375, "pDevCap != __null", a1, a2, a3, a4, a5);
          v26 = sub_175AE4();
          v32 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetRecommendedParallelizationLimit", 3367, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v22 = sub_175AE4();
        v31 = sub_160F68(4);
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

uint64_t sub_94E6C(void *a1, const char **a2, const __CFAllocator *a3, const void *a4, CFDictionaryRef *a5)
{
  v10 = sub_1502C8();
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
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld\n", v15, 30, v16, a1, a1[7], *a2, v12, 1000, 1, 0);
        v17 = sub_175AE4();
        v22 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld", v17, 30, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld, %d, 0x%x, %lld", v15, 30, v16);
      }

      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumDuration", 3416, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_950CC(void *a1, const char **a2, const __CFAllocator *a3, const void *a4, CFNumberRef *a5)
{
  v10 = sub_1502C8();
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
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(7);
        if (v15)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %lld %p\n", v16, 30, v17, a1, a1[7], *a2, valuePtr, v13);
          v16 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %lld %p", v16, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %lld\n", v23, 30, v24, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3471, "pNum != __null", a1, a1[7], a2, a3, a4, a5, valuePtr);
          v25 = sub_175AE4();
          v27 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v18 = sub_160F34(0x1Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v19, 30, v20, "AVE_Prop_AVC_GetRecommendedParallelizedSubdivisionMinimumFrameCount", 3461, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v21 = sub_175AE4();
        v26 = sub_160F68(4);
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

uint64_t sub_9540C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 16892) = v10;
      if (!Value)
      {
        *(a1 + 1252) = 0;
        *(a1 + 1264) = 1;
        *(a1 + 1272) = 0xBFF0000000000000;
        *(a1 + 1280) = 0xBFF0000000000000;
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v12 = sub_160F34(0x1Eu);
        v13 = sub_175AE4();
        v14 = sub_160F68(7);
        if (v12)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v13, 30, v14, a1, *(a1 + 56), *a2, v10);
          v13 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v13);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(a1 + 56);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_AVC_SetAllowTemporalCompression", 3514, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_AVC_SetAllowTemporalCompression", 3514, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetAllowTemporalCompression", 3504, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_95764(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1264);
    v11 = &kCFBooleanTrue;
    if (v10 == 1)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 1;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetAllowTemporalCompression", 3563, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_9598C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 16896) = v10;
      if (Value)
      {
        if (*(a1 + 1256) <= 0)
        {
          *(a1 + 1256) = 3;
        }
      }

      else
      {
        *(a1 + 1256) = 0x100000000;
        *(a1 + 1288) = 1;
        *(a1 + 1240) &= ~0x400u;
      }

      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(7);
        if (v21)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v22, 30, v23, a1, *(a1 + 56), *a2, v10);
          v22 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v22);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v15 = sub_160F34(0x1Eu);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *(a1 + 56);
        v19 = CFGetTypeID(a4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v16, 30, v17, "AVE_Prop_AVC_SetAllowFrameReordering", 3611, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v18, a2, a3, a4, v19);
          v16 = sub_175AE4();
          v17 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v16, 30, v17, "AVE_Prop_AVC_SetAllowFrameReordering", 3611, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v11 = sub_160F34(0x1Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v12, 30, v13, "AVE_Prop_AVC_SetAllowFrameReordering", 3601, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v14 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_95D00(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1256);
    v11 = &kCFBooleanTrue;
    if (v10 <= 0)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 0;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetAllowFrameReordering", 3663, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_95F28(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3720, "iMaxKeyFrameInterval >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3720, "iMaxKeyFrameInterval >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3720, "iMaxKeyFrameInterval >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16900) = valuePtr;
        *(a1 + 1264) = v9;
        if (v9 == 1)
        {
          *(a1 + 1252) = 0;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3711, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3711, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMaxKeyFrameInterval", 3701, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_96380(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1264);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3770, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMaxKeyFrameInterval", 3760, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_966B0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3822, "iStrictKeyFrameInterval >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3822, "iStrictKeyFrameInterval >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3822, "iStrictKeyFrameInterval >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16904) = valuePtr;
        *(a1 + 1268) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3813, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3813, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetStrictKeyFrameInterval", 3803, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_96AFC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1268);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3868, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetStrictKeyFrameInterval", 3858, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_96E2C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 16912) = valuePtr;
        *(a1 + 1272) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(7);
          if (v24)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v25, 30, v26, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3920, "fMaxKeyFrameIntervalDuration >= 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v13 = sub_175AE4();
            v27 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3911, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3911, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMaxKeyFrameIntervalDuration", 3901, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_97284(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[159];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3967, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMaxKeyFrameIntervalDuration", 3956, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_975C8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 16920) = valuePtr;
        *(a1 + 1280) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(7);
          if (v24)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %f\n", v25, 30, v26, a1, *(a1 + 56), *a2, valuePtr);
            sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %f");
          return 0;
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %f\n", v11, 30, v12, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4020, "fStrictKeyFrameIntervalDuration >= 0.0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v13 = sub_175AE4();
            v27 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4010, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4010, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetStrictKeyFrameIntervalDuration", 4000, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_97A20(double *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[160];
    v10 = CFNumberCreate(allocator, kCFNumberDoubleType, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %f %p\n", v14, 30, v15, a1, *(a1 + 7), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %f %p", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %f\n", v21, 30, v22, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4068, "pNum != __null", a1, *(a1 + 7), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetStrictKeyFrameIntervalDuration", 4057, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_97D64(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v24, 30, v25, "AVE_Prop_AVC_SetExpectedFrameRate", 4128, "0 < frameRate && frameRate < 100000", a1, *(a1 + 56), a2, a3, a4, v30, 0, 100000);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v26, 30, v28, "AVE_Prop_AVC_SetExpectedFrameRate", 4128, "0 < frameRate && frameRate < 100000", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v24, 30, v25, "AVE_Prop_AVC_SetExpectedFrameRate", 4128, "0 < frameRate && frameRate < 100000", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16928) = v9;
        *(a1 + 1112) = v9;
        if ((*(a1 + 10783) & 1) == 0)
        {
          *(a1 + 1136) = *(a1 + 1136) * v9 / 30;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v20 = sub_160F34(0x1Eu);
          v21 = sub_175AE4();
          v22 = sub_160F68(7);
          if (v20)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v21, 30, v22, a1, *(a1 + 56), *a2, v30);
            v21 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v21);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v14 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        v17 = *(a1 + 56);
        v18 = CFGetTypeID(a4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetExpectedFrameRate", 4112, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v17, a2, a3, a4, v18);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_AVC_SetExpectedFrameRate", 4112, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v10 = sub_160F34(0x1Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v11, 30, v12, "AVE_Prop_AVC_SetExpectedFrameRate", 4102, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v13 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_98244(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1112);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetExpectedFrameRate", 4182, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetExpectedFrameRate", 4172, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_98574(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4238, "AverageNonDroppableFrameRate >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4238, "AverageNonDroppableFrameRate >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4238, "AverageNonDroppableFrameRate >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16932) = valuePtr;
        *(a1 + 11460) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4229, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4229, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAverageNonDroppableFrameRate", 4219, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_989C0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11460);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4285, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetAverageNonDroppableFrameRate", 4274, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_98CF0(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16936) = v9;
      *(a1 + 1240) = *(a1 + 1240) & 0xFFFFFEFF | (v9 << 8);
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetAllowOpenGOP", 4327, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetAllowOpenGOP", 4327, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetAllowOpenGOP", 4317, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_99034(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1240) & 0x100;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = v10 >> 8;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v16);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetAllowOpenGOP", 4372, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_99258(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if ((*(a1 + 716) & 0x3C0) != 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    valuePtr = v10 + *(a1 + 1256);
    v11 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      *a5 = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v14 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(7);
        if (v14)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v15, 30, v16, a1, *(a1 + 56), *a2, valuePtr, v12);
          v15 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v15, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4423, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v24 = sub_175AE4();
          v26 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetMaxFrameDelayCount", 4411, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v20 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_9959C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4477, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 0);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4477, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4477, "kVTQPModulationLevel_Default <= SQPLevel && SQPLevel <= kVTQPModulationLevel_Disable", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16940) = valuePtr;
        if (!v9)
        {
          *(a1 + 1336) = 0;
        }

        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4466, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4466, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSpatialAdaptiveQPLevel", 4456, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_99A0C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  valuePtr = -1;
  if (a1 && a2 && a4 && a5)
  {
    if (!*(a1 + 1336))
    {
      valuePtr = 0;
    }

    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4533, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSpatialAdaptiveQPLevel", 4519, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_99D48(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 17008) = v9;
      *(a1 + 1336) = *(a1 + 1336) & 0xFFFEFFFF | (v9 << 16);
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableMBInputCtrl", 4576, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableMBInputCtrl", 4576, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableMBInputCtrl", 4566, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_9A08C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1336) & 0x10000;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = HIWORD(v10);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v16);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableMBInputCtrl", 4621, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_9A2B0(uint64_t a1, const char **a2, const void *a3, const __CFArray *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v29 = sub_160F34(0x1Eu);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v30, 30, v31, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4680, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1, *(a1 + 56), a2, a3, a4, v10, 0, 34);
            v32 = sub_175AE4();
            v34 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v32, 30, v34, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4680, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v30, 30, v31, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4680, "(iNumOfFrames / 2) >= 0 && (iNumOfFrames / 2) <= (((16) > (16) ? (16) : (16)) + 1)", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        v11 = Count / 2;
        *(a1 + 16944) = Count / 2;
        *(a1 + 11816) = 1;
        *(a1 + 11820) = Count / 2;
        if (Count >= 2)
        {
          v12 = 0;
          v13 = (a1 + 11892);
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

        if (sub_160EF0(0x1Eu, 7))
        {
          v16 = sub_160F34(0x1Eu);
          v17 = sub_175AE4();
          v18 = sub_160F68(7);
          if (v16)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v17, 30, v18, a1, *(a1 + 56), *a2, v11);
            v17 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v17);
        }

        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v23 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v26 = *(a1 + 56);
        v27 = CFGetTypeID(a4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4670, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v26, a2, a3, a4, v27);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4670, "CFArrayGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_SetUserDPBFramesForFaceTime", 4660, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_9A768(uint64_t a1, const void *a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 2 * *(a1 + 11820), &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      if (*(a1 + 11820) < 1)
      {
LABEL_11:
        result = 0;
        *a5 = v11;
        return result;
      }

      v12 = 0;
      v13 = (a1 + 11892);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v29 = sub_160F34(0x1Eu);
            v30 = sub_175AE4();
            v31 = sub_160F68(4);
            if (v29)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4762, "pNum2 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v13);
              v32 = sub_175AE4();
              v34 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v32, 30, v34, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4762, "pNum2 != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v30, 30, v31, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4762, "pNum2 != __null", a1);
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
        if (v12 >= *(a1 + 11820))
        {
          goto LABEL_11;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v27, 30, v28, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4754, "pNum1 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v13 - 17));
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v27, 30, v28, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4754, "pNum1 != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v13 - 17));
      }
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4744, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 2 * *(a1 + 11820));
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4744, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, (2 * *(a1 + 11820)));
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetUserDPBFramesForFaceTime", 4734, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v22 = sub_175AE4();
        v33 = sub_160F68(4);
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

uint64_t sub_9AC74(uint64_t a1, const char **a2, const void *a3, const __CFDictionary *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    if (!*(a1 + 16480))
    {
      operator new();
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = *(a1 + 16480);
      if (v9)
      {
        v10 = sub_D86F8(v9, a4, *(a1 + 18080), (a1 + 18072));
        if (v10)
        {
          v11 = v10;
          if (sub_160EF0(0x1Eu, 4))
          {
            v12 = sub_160F34(0x1Eu);
            v13 = sub_175AE4();
            v14 = sub_160F68(4);
            if (v12)
            {
              printf("%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_SetDPBRequirements", 4855, "ret == 0", a1, *(a1 + 56), a2, a3, a4);
              v13 = sub_175AE4();
              v14 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid userDPB %p %lld %p %p %p", v13, 30, v14, "AVE_Prop_AVC_SetDPBRequirements", 4855, "ret == 0", a1, *(a1 + 56), a2, a3, a4);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(a4, kVTDPBRequirements_NumberOfFrames);
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          *(a1 + 16952) = valuePtr;
          v28 = CFDictionaryGetValue(a4, kVTDPBRequirements_AllocateRVRABuffers);
          v29 = CFBooleanGetValue(v28);
          *(a1 + 16948) = v29;
          *(a1 + 1120) = *(a1 + 1120) & 0xFFFFFFFFFFFFFFDFLL | (32 * (v29 != 0));
          if (valuePtr)
          {
            v30 = v29;
            Count = CFArrayGetCount(*(a1 + 18072));
            v32 = valuePtr;
            if (Count == valuePtr << v30)
            {
              *(a1 + 11816) = 1;
              *(a1 + 11820) = v32;
              if (v32 >= 1)
              {
                v33 = (a1 + 11892);
                v34 = 2956;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 18072), v34 - 2956);
                  *(v33 - 17) = IOSurfaceGetID(ValueAtIndex);
                  if (sub_160EF0(0x1Eu, 6))
                  {
                    v36 = sub_160F34(0x1Eu);
                    v37 = sub_175AE4();
                    v38 = sub_160F68(6);
                    v39 = *(v33 - 17);
                    if (v36)
                    {
                      printf("%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v37, 30, v38, v34 - 2956, v39);
                      v37 = sub_175AE4();
                      v38 = sub_160F68(6);
                      v39 = *(v33 - 17);
                    }

                    syslog(3, "%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v37, 30, v38, v34 - 2956, v39);
                  }

                  if (v30)
                  {
                    v40 = CFArrayGetValueAtIndex(*(a1 + 18072), v34 + valuePtr - 2956);
                    *v33 = IOSurfaceGetID(v40);
                    if (sub_160EF0(0x1Eu, 6))
                    {
                      v41 = sub_160F34(0x1Eu);
                      v42 = sub_175AE4();
                      v43 = sub_160F68(6);
                      v44 = v34 + valuePtr - 2956;
                      v45 = *v33;
                      if (v41)
                      {
                        printf("%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d\n", v42, 30, v43, v34 + valuePtr - 2956, v45);
                        v42 = sub_175AE4();
                        v43 = sub_160F68(6);
                        v44 = v34 + valuePtr - 2956;
                        v45 = *v33;
                      }

                      syslog(3, "%lld %d AVE %s: FIG: UserDPBFrames CFArrayGetValueAtIndex %d = %d", v42, 30, v43, v44, v45);
                    }
                  }

                  v46 = v34 - 2955;
                  ++v34;
                  ++v33;
                }

                while (v46 < valuePtr);
              }

              v11 = 0;
            }

            else
            {
              if (sub_160EF0(0x1Eu, 4))
              {
                v51 = sub_160F34(0x1Eu);
                v52 = sub_175AE4();
                v53 = sub_160F68(4);
                if (v51)
                {
                  printf("%lld %d AVE %s: FIG: SetProperty kVTCompressionPropertyKey_DPBRequirements with bad parameter                      num_frames = %d\n", v52, 30, v53, valuePtr);
                  v54 = sub_175AE4();
                  v61 = sub_160F68(4);
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
            if (sub_160EF0(0x1Eu, 6))
            {
              v47 = sub_160F34(0x1Eu);
              v48 = sub_175AE4();
              v49 = sub_160F68(6);
              if (v47)
              {
                printf("%lld %d AVE %s: FIG: no user DPB frames found. driver will create frames internally.\n", v48, 30, v49);
                v50 = sub_175AE4();
                v60 = sub_160F68(6);
                syslog(3, "%lld %d AVE %s: FIG: no user DPB frames found. driver will create frames internally.", v50, 30, v60);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: no user DPB frames found. driver will create frames internally.", v48, 30, v49);
              }
            }

            v11 = 0;
            *(a1 + 11816) = 1;
            *(a1 + 11820) = valuePtr;
          }

          if (sub_160EF0(0x1Eu, 7))
          {
            v55 = sub_160F34(0x1Eu);
            v56 = sub_175AE4();
            v57 = sub_160F68(7);
            if (v55)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v56, 30, v57, a1, *(a1 + 56), *a2, valuePtr);
              v56 = sub_175AE4();
              v57 = sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v56, 30, v57, a1, *(a1 + 56), *a2, valuePtr);
          }
        }
      }

      else
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v24 = sub_160F34(0x1Eu);
          v25 = sub_175AE4();
          v26 = sub_160F68(4);
          if (v24)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v25, 30, v26, "AVE_Prop_AVC_SetDPBRequirements", 4848, "psINS->pcVCP != __null", a1);
            v25 = sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v25);
        }

        return 4294966281;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        v22 = *(a1 + 56);
        v23 = CFGetTypeID(a4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v20, 30, v21, "AVE_Prop_AVC_SetDPBRequirements", 4845, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)", a1, v22, a2, a3, a4, v23);
          v20 = sub_175AE4();
          v21 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v20, 30, v21, "AVE_Prop_AVC_SetDPBRequirements", 4845, "CFDictionaryGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetDPBRequirements", 4821, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v18 = sub_175AE4();
        v59 = sub_160F68(4);
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

uint64_t sub_9B614(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, (*(a1 + 16952) << (*(a1 + 16948) != 0)), &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      if (*(a1 + 16952) >= 1)
      {
        v12 = 0;
        v13 = (a1 + 11824);
        do
        {
          v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, v13);
          if (!v14)
          {
            if (sub_160EF0(0x1Eu, 4))
            {
              v32 = sub_160F34(0x1Eu);
              v33 = sub_175AE4();
              v34 = sub_160F68(4);
              if (v32)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v33, 30, v34, "AVE_Prop_AVC_GetDPBRequirements", 4968, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v13);
                v35 = sub_175AE4();
                v36 = sub_160F68(4);
                v42 = a1;
                v37 = 4968;
                goto LABEL_29;
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v33, 30, v34, "AVE_Prop_AVC_GetDPBRequirements", 4968, "pNum != __null", a1);
            }

LABEL_33:
            CFRelease(v11);
            return 4294966293;
          }

          v15 = v14;
          CFArrayAppendValue(v11, v14);
          CFRelease(v15);
          ++v12;
          v16 = *(a1 + 16952);
          ++v13;
        }

        while (v12 < v16);
        if (*(a1 + 16948) && v16 >= 1)
        {
          v17 = 0;
          v18 = (a1 + 11892);
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
            if (v17 >= *(a1 + 16952))
            {
              goto LABEL_15;
            }
          }

          if (sub_160EF0(0x1Eu, 4))
          {
            v38 = sub_160F34(0x1Eu);
            v39 = sub_175AE4();
            v40 = sub_160F68(4);
            if (v38)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v39, 30, v40, "AVE_Prop_AVC_GetDPBRequirements", 4988, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v18);
              v35 = sub_175AE4();
              v36 = sub_160F68(4);
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
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v22 = sub_160F34(0x1Eu);
        v23 = sub_175AE4();
        v24 = sub_160F68(7);
        if (v22)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v23, 30, v24, a1, *(a1 + 56), *a2, *(a1 + 11820), v11);
          v23 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v23, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v29 = sub_160F34(0x1Eu);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d\n", v30, 30, v31, "AVE_Prop_AVC_GetDPBRequirements", 4958, "p != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 16952) << (*(a1 + 16948) != 0));
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable %p %lld %p %p %p %p %d", v30, 30, v31, "AVE_Prop_AVC_GetDPBRequirements", 4958, "p != __null", a1);
      }

      return 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v25 = sub_160F34(0x1Eu);
      v26 = sub_175AE4();
      v27 = sub_160F68(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v26, 30, v27, "AVE_Prop_AVC_GetDPBRequirements", 4947, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v28 = sub_175AE4();
        v41 = sub_160F68(4);
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

uint64_t sub_9BC1C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16956) = v9;
      *(a1 + 10206) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetForceRefUncompresseds", 5051, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetForceRefUncompresseds", 5051, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetForceRefUncompresseds", 5041, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_9BF5C(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10206);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10206))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetForceRefUncompressed", 5089, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
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

uint64_t sub_9C180(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16960) = v9;
      *(a1 + 11960) = v9;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableUserRefForFacetime", 5137, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableUserRefForFacetime", 5137, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableUserRefForFacetime", 5127, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_9C4C0(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 11960);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 11960))
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableUserRefForFacetime", 5175, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
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

uint64_t sub_9C6E4(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 16964) = v9;
      *(a1 + 1308) = 2;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, v9);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableMultiReferenceP", 5223, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableMultiReferenceP", 5223, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableMultiReferenceP", 5213, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_9CA24(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1308);
    v11 = &kCFBooleanTrue;
    if (v10 <= 1)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 > 1;
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(7);
      if (v14)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v15, 30, v16, a1, *(a1 + 56), *a2, v13);
        v15 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v15);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableMultiReferenceP", 5261, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_9CC4C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5320, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1, *(a1 + 56), a2, a3, a4, valuePtr, 1, 8);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5320, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5320, "1 <= iMultiReferencePSpacing && iMultiReferencePSpacing <= 8", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16968) = valuePtr;
        *(a1 + 1324) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5309, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5309, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMultiReferencePSpacing", 5299, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_9D0BC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1324);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5366, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMultiReferencePSpacing", 5356, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_9D3EC(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 17080) = Value;
      *(a1 + 1296) = *(a1 + 1296) & 0xFFFFFFFD | (2 * (Value != 0));
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v11 = sub_160F34(0x1Eu);
        v12 = sub_175AE4();
        v13 = sub_160F68(7);
        if (v11)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, Value);
          v12 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetUseLongTermReference", 5409, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetUseLongTermReference", 5409, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetUseLongTermReference", 5399, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
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

uint64_t sub_9D734(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1296) & 2;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      v16 = v10 >> 1;
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v16);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v17 = sub_160F34(0x1Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetUseLongTermReference", 5454, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
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

uint64_t sub_9D958(uint64_t a1, const char **a2, const void *a3, const void *a4, void *a5)
{
  v54 = 0;
  memset(v53, 0, 44);
  if (!a1 || !a2 || !a4 || !a5)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v26 = sub_160F34(0x1Eu);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v27, 30, v28, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5499, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v29 = sub_175AE4();
        v48 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v29, 30, v48, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5499);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v27, 30, v28, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5499);
      }
    }

    return 4294966295;
  }

  v10 = *(a1 + 16544);
  if (!v10)
  {
    v10 = *(a1 + 1440);
  }

  v11 = *(a1 + 16548);
  if (!v11)
  {
    v11 = *(a1 + 1444);
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
  v55 = 4 * (*(a1 + 76) > 29);
  v56 = 0x400000000;
  v57 = 0;
  v58 = v55;
  v59 = 0x400000000;
  v60 = 0;
  v15 = *(a1 + 18080);
  if (v15)
  {
    v16 = sub_167CD8(v15);
    if (v16)
    {
      v17 = *v16;
      v18 = *(v16 + 1);
      *(&v53[2] + 4) = *(v16 + 36);
      v53[0] = v17;
      v53[1] = v18;
      LODWORD(v53[2]) = 0;
      v19 = *(a1 + 12052) + 8;
      DWORD2(v53[1]) = 3;
      DWORD1(v53[0]) = v19;
      v20 = sub_167D10(v53);
      if (v20)
      {
        v21 = v20;
        sub_14E498(*(a1 + 68), *(a1 + 64), 1, &v52, &v51);
        v22 = sub_158978(*(a1 + 68), *(a1 + 64), 62, 1, v10, v11, v52, v51, v21, 1, &v55, &v54);
        if (v22 || !v54)
        {
          if (sub_160EF0(0x1Eu, 4))
          {
            v41 = sub_160F34(0x1Eu);
            v42 = sub_175AE4();
            v43 = sub_160F68(4);
            v44 = *(a1 + 56);
            if (v41)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p\n", v42, 30, v43, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5554, "ret == 0 && pDict != __null", a1, v44, a4, a5, *(a1 + 18080), v21, v10, v11, v52, v51, v54);
              v45 = sub_175AE4();
              v46 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v45, 30, v46, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5554, "ret == 0 && pDict != __null", a1, *(a1 + 56));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create recon buffer dictionary %p %lld %p %p 0x%x 0x%x %d %d %d %d %p", v42, 30, v43, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5554, "ret == 0 && pDict != __null", a1, v44);
            }
          }
        }

        else
        {
          if (sub_160EF0(0x1Eu, 7))
          {
            v23 = sub_160F34(0x1Eu);
            v24 = sub_175AE4();
            v25 = sub_160F68(7);
            if (v23)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v24, 30, v25, a1, *(a1 + 56), *a2, v54);
              v24 = sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v24);
          }

          v22 = 0;
          *a5 = v54;
        }

        return v22;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v38 = sub_160F34(0x1Eu);
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x\n", v39, 30, v40, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5541, "type != 0", a1, *(a1 + 56), a4, a5, *(a1 + 18080));
          v39 = sub_175AE4();
          v40 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format type %p %lld %p %p 0x%x", v39, 30, v40, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5541, "type != 0", a1, *(a1 + 56), a4, a5, *(a1 + 18080));
      }

      return 4294966295;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v34 = sub_160F34(0x1Eu);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld %p %p 0x%x\n", v35, 30, v36, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5531, "psPixelFmt != __null", a1, *(a1 + 56), a4, a5, *(a1 + 18080));
        v37 = sub_175AE4();
        v50 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 5))
    {
      v30 = sub_160F34(0x1Eu);
      v31 = sub_175AE4();
      v32 = sub_160F68(5);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | input pixel format is not set %p %lld %p %p 0x%x\n", v31, 30, v32, "AVE_Prop_AVC_GetReconstructedPixelBufferAttributes", 5525, "psINS->inputPixelFormat != 0", a1, *(a1 + 56), a4, a5, *(a1 + 18080));
        v33 = sub_175AE4();
        v49 = sub_160F68(5);
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

uint64_t sub_9E0B0(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 16972) = v10;
      v11 = *(a1 + 1104) & 0xFFFFFF7FLL;
      if (Value)
      {
        v11 = *(a1 + 1104) | 0x80;
      }

      *(a1 + 1104) = v11;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v14, 30, v15, a1, *(a1 + 56), *a2, v10);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v14);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        v23 = *(a1 + 56);
        v24 = CFGetTypeID(a4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction", 5597, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction", 5597, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetEnableVUIBitstreamRestriction", 5587, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
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

uint64_t sub_9E400(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[138] & 0x80;
    v11 = &kCFBooleanFalse;
    if (v10)
    {
      v11 = &kCFBooleanTrue;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = sub_160F34(0x1Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10 >> 7);
        v14 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d", v14);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableVUIBitstreamRestriction", 5643, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
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

uint64_t sub_9E628(uint64_t a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a1;
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_AddColorPrimaries", 5693, "pTmpDict != __null && pTmpArray != __null", v6, a2, a3, a4, Mutable, v10);
            v15 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v27, "AVE_Prop_AVC_AddColorPrimaries", 5693);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v13, 30, v14, "AVE_Prop_AVC_AddColorPrimaries", 5693);
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
          v24 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v24 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(Mutable, kVTPropertyReadWriteStatusKey, v24);
        v25 = sub_17CEA8(v10);
        CFDictionarySetValue(Mutable, kVTPropertySupportedValueListKey, v10);
        CFDictionarySetValue(a4, kVTCompressionPropertyKey_ColorPrimaries, Mutable);
      }

      CFRelease(Mutable);
LABEL_28:
      if (v10)
      {
        CFRelease(v10);
      }

      return v25;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_AVC_AddColorPrimaries", 5685, "pDevCap != __null", v6, a2, a3, a4);
        v23 = sub_175AE4();
        v29 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_AVC_AddColorPrimaries", 5680, "pDict != __null", v6, a2, a3, 0);
        v19 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_9EA3C(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    if (!a4)
    {
      IntegerCodePointForString = 2;
LABEL_14:
      *(a1 + 13096) = 1;
      *(a1 + 13112) = IntegerCodePointForString;
      *(a1 + 16976) = IntegerCodePointForString;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v19 = sub_160F34(0x1Eu);
        v20 = sub_175AE4();
        v21 = sub_160F68(7);
        if (v19)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v20, 30, v21, a1, *(a1 + 56), *a2, IntegerCodePointForString);
          v20 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v20);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v11, 30, v12, "AVE_Prop_AVC_SetColorPrimaries", 5773, "iColorPrimaries != kAppleColorCodePoints_ColorPrimaries_Unknown", a1, *(a1 + 56), a2, a3, a4, 2);
            v13 = sub_175AE4();
            v27 = sub_160F68(4);
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

    if (sub_160EF0(0x1Eu, 4))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      v25 = *(a1 + 56);
      v26 = CFGetTypeID(a4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v23, 30, v24, "AVE_Prop_AVC_SetColorPrimaries", 5764, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v25, a2, a3, a4, v26);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v23, 30, v24, "AVE_Prop_AVC_SetColorPrimaries", 5764, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetColorPrimaries", 5743, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_9EE88(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(*(a1 + 13112));
    *a5 = StringForIntegerCodePoint;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 13112), StringForIntegerCodePoint);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetColorPrimaries", 5810, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
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

uint64_t sub_9F0A4(uint64_t a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a1;
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_AddTransferFunction", 5860, "pTmpDict != __null && pTmpArray != __null", v6, a2, a3, a4, Mutable, v10);
            v15 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v27, "AVE_Prop_AVC_AddTransferFunction", 5860);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v13, 30, v14, "AVE_Prop_AVC_AddTransferFunction", 5860);
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
          v24 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v24 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(Mutable, kVTPropertyReadWriteStatusKey, v24);
        v25 = sub_17CEF8(v10);
        CFDictionarySetValue(Mutable, kVTPropertySupportedValueListKey, v10);
        CFDictionarySetValue(a4, kVTCompressionPropertyKey_TransferFunction, Mutable);
      }

      CFRelease(Mutable);
LABEL_28:
      if (v10)
      {
        CFRelease(v10);
      }

      return v25;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_AVC_AddTransferFunction", 5852, "pDevCap != __null", v6, a2, a3, a4);
        v23 = sub_175AE4();
        v29 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_AVC_AddTransferFunction", 5847, "pDict != __null", v6, a2, a3, 0);
        v19 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_9F4B8(uint64_t a1, const char **a2, const void *a3, const __CFString *cf1)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 13096);
    if (!cf1 || CFEqual(cf1, kCVImageBufferTransferFunction_UseGamma))
    {
      *v8 = 1;
      v9 = 2;
      *(a1 + 13116) = 2;
      v10 = 16980;
      goto LABEL_7;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf1))
    {
      IntegerCodePointForString = CVTransferFunctionGetIntegerCodePointForString(cf1);
      if (IntegerCodePointForString != 2)
      {
        v9 = IntegerCodePointForString;
        *(a1 + 16980) = IntegerCodePointForString;
        *v8 = 1;
        v10 = 13116;
LABEL_7:
        *(a1 + v10) = v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(7);
          if (v12)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v13, 30, v14, a1, *(a1 + 56), *a2, v9);
            v13 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v13);
          return 0;
        }

        return result;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v21 = sub_160F34(0x1Eu);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v22, 30, v23, "AVE_Prop_AVC_SetTransferFunction", 5941, "iTransferFunction != kAppleColorCodePoints_TransferFunction_Unknown", a1, *(a1 + 56), a2, a3, cf1, 2);
          v24 = sub_175AE4();
          v31 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v25 = sub_160F34(0x1Eu);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        v28 = *(a1 + 56);
        v29 = CFGetTypeID(cf1);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v26, 30, v27, "AVE_Prop_AVC_SetTransferFunction", 5932, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v28, a2, a3, cf1, v29);
          v26 = sub_175AE4();
          v27 = sub_160F68(4);
          CFGetTypeID(cf1);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v26, 30, v27, "AVE_Prop_AVC_SetTransferFunction", 5932, "CFStringGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_SetTransferFunction", 5911, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, cf1);
        v18 = sub_175AE4();
        v30 = sub_160F68(4);
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

uint64_t sub_9F934(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(*(a1 + 13116));
    *a5 = StringForIntegerCodePoint;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 13116), StringForIntegerCodePoint);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetTransferFunction", 5978, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
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

uint64_t sub_9FB50(uint64_t a1, int a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a1;
  if (a4)
  {
    if (sub_16FD90(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v12 = sub_160F34(0x1Eu);
          v13 = sub_175AE4();
          v14 = sub_160F68(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p\n", v13, 30, v14, "AVE_Prop_AVC_AddYCbCrMatrix", 6029, "pTmpDict != __null && pTmpArray != __null", v6, a2, a3, a4, Mutable, v10);
            v15 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v15, 30, v27, "AVE_Prop_AVC_AddYCbCrMatrix", 6029);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dictionary %d 0x%x %lld %p %p %p", v13, 30, v14, "AVE_Prop_AVC_AddYCbCrMatrix", 6029);
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
          v24 = kVTPropertyReadWriteStatus_ReadOnly;
        }

        else
        {
          v24 = kVTPropertyReadWriteStatus_ReadWrite;
        }

        CFDictionarySetValue(Mutable, kVTPropertyTypeKey, kVTPropertyType_Enumeration);
        CFDictionarySetValue(Mutable, kVTPropertyReadWriteStatusKey, v24);
        v25 = sub_17CF5C(v10);
        CFDictionarySetValue(Mutable, kVTPropertySupportedValueListKey, v10);
        CFDictionarySetValue(a4, kVTCompressionPropertyKey_YCbCrMatrix, Mutable);
      }

      CFRelease(Mutable);
LABEL_28:
      if (v10)
      {
        CFRelease(v10);
      }

      return v25;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to find device capability %d 0x%x %lld %p\n", v21, 30, v22, "AVE_Prop_AVC_AddYCbCrMatrix", 6021, "pDevCap != __null", v6, a2, a3, a4);
        v23 = sub_175AE4();
        v29 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameter %d 0x%x %lld %p\n", v17, 30, v18, "AVE_Prop_AVC_AddYCbCrMatrix", 6016, "pDict != __null", v6, a2, a3, 0);
        v19 = sub_175AE4();
        v28 = sub_160F68(4);
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

uint64_t sub_9FF64(uint64_t a1, const char **a2, const void *a3, const __CFString *a4)
{
  if (a1 && a2 && a3)
  {
    v8 = (a1 + 13096);
    if (!a4)
    {
      *v8 = 1;
      IntegerCodePointForString = 2;
      *(a1 + 13120) = 2;
      v12 = 16984;
LABEL_14:
      *(a1 + v12) = IntegerCodePointForString;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
        if (v18)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v19, 30, v20, a1, *(a1 + 56), *a2, IntegerCodePointForString);
          v19 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v19);
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
        *(a1 + 16984) = IntegerCodePointForString;
        *v8 = 1;
        v12 = 13120;
        goto LABEL_14;
      }

      v11 = kCVImageBufferYCbCrMatrix_Identity;
      if (CFEqual(a4, kCVImageBufferYCbCrMatrix_Identity))
      {
        IntegerCodePointForString = 2 * (CFEqual(a4, v11) == 0);
        goto LABEL_9;
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x\n", v27, 30, v28, "AVE_Prop_AVC_SetYCbCrMatrix", 6111, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))", a1, *(a1 + 56), a2, a3, a4, 2);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | kMatrixCoefficients set %p %lld %p %p %p 0x%x", v27, 30, v28, "AVE_Prop_AVC_SetYCbCrMatrix", 6111, "iYCbCrMatrix != kAppleColorCodePoints_YCbCrMatrix_Unknown || (iYCbCrMatrix == kAppleColorCodePoints_YCbCrMatrix_Unknown && CFEqual((CFStringRef)pValue, kCVImageBufferYCbCrMatrix_Identity))");
      }
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v21 = sub_160F34(0x1Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      v24 = *(a1 + 56);
      v25 = CFGetTypeID(a4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v22, 30, v23, "AVE_Prop_AVC_SetYCbCrMatrix", 6100, "CFStringGetTypeID() == CFGetTypeID(pValue)", a1, v24, a2, a3, a4, v25);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        CFGetTypeID(a4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v22, 30, v23, "AVE_Prop_AVC_SetYCbCrMatrix", 6100, "CFStringGetTypeID() == CFGetTypeID(pValue)");
    }

    return 4294965293;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v13 = sub_160F34(0x1Eu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetYCbCrMatrix", 6079, "pINS != __null && pEntry != __null && pKey != __null", a1, a2, a3, a4);
      v16 = sub_175AE4();
      v29 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v29, "AVE_Prop_AVC_SetYCbCrMatrix");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetYCbCrMatrix");
    }
  }

  return 4294966295;
}

uint64_t sub_A03E4(uint64_t a1, const char **a2, const void *a3, const void *a4, CFStringRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(*(a1 + 13120));
    *a5 = StringForIntegerCodePoint;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v12 = sub_160F34(0x1Eu);
      v13 = sub_175AE4();
      v14 = sub_160F68(7);
      if (v12)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v13, 30, v14, a1, *(a1 + 56), *a2, *(a1 + 13120), StringForIntegerCodePoint);
        v13 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v13, 30);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v16, 30, v17, "AVE_Prop_AVC_GetYCbCrMatrix", 6154, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
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

uint64_t sub_A0600(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v24 = sub_160F34(0x1Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      v27 = *(a1 + 56);
      v28 = CFGetTypeID(a4);
      if (v24)
      {
        v50 = v27;
        v29 = 6204;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v25, 30, v26, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6204, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v50, a2, a3, a4, v28);
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
        CFGetTypeID(a4);
        v32 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_26:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v30, 30, v31, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", v29, v32);
        return 4294965293;
      }

      v36 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v37 = 6204;
LABEL_33:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v25, 30, v26, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", v37, v36);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 16 || (Count & 1) != 0)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v33 = sub_160F34(0x1Eu);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]\n", v34, 30, v35, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6215, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, *(a1 + 56), a2, a3, a4, v10, 0, 16);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [%d, %d]", v34, 30, v35, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6215, "(cQpIndexOffsetCount & 0x1) == 0 && cQpIndexOffsetCount / 2 <= 8", a1, *(a1 + 56), a2, a3, a4, v10, 0, 16);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v38 = sub_160F34(0x1Eu);
              v39 = sub_175AE4();
              v40 = sub_160F68(4);
              if (v38)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v39, 30, v40, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6224, "cQpIndexOffset != __null", a1, *(a1 + 56), a2, a3, a4);
                v41 = sub_175AE4();
                v49 = sub_160F68(4);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v45 = sub_160F34(0x1Eu);
              v46 = sub_175AE4();
              v47 = sub_160F68(4);
              if (v45)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v46, 30, v47, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6236, "(cQpOff >= -12) && (cQpOff <= 12)", a1, *(a1 + 56), a2, a3, a4, valuePtr, -12, 12);
                v46 = sub_175AE4();
                v47 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v46, 30, v47, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6236, "(cQpOff >= -12) && (cQpOff <= 12)", a1, *(a1 + 56), a2, a3, a4, valuePtr, 4294967284, 12);
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

          *(a1 + v15 + 4 * ((v11++ >> 1) + 1)) = valuePtr;
          if (v10 == v11)
          {
            goto LABEL_17;
          }
        }

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v42 = sub_160F34(0x1Eu);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
        v43 = *(a1 + 56);
        v44 = CFGetTypeID(a4);
        if (v42)
        {
          v51 = v43;
          v29 = 6228;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v25, 30, v26, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6228, "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)", a1, v51, a2, a3, a4, v44);
          v30 = sub_175AE4();
          v31 = sub_160F68(4);
          CFGetTypeID(a4);
          v32 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
          goto LABEL_26;
        }

        v36 = "CFNumberGetTypeID() == CFGetTypeID(cQpIndexOffset)";
        v37 = 6228;
        goto LABEL_33;
      }

LABEL_17:
      *(a1 + 16988) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(7);
        if (v17)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v18, 30, v19, a1, *(a1 + 56), *a2, v10);
          v18 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v18);
        return 0;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_SetChromaQPIndexOffsetMultiPPS", 6194, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v48 = sub_160F68(4);
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

uint64_t sub_A0D88(uint64_t a1, const void *a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      if (2 * *(a1 + 10244) - 2 < 1)
      {
LABEL_11:
        result = 0;
        *a5 = v11;
        return result;
      }

      v12 = (a1 + 13816);
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
          if (sub_160EF0(0x1Eu, 4))
          {
            v30 = sub_160F34(0x1Eu);
            v31 = sub_175AE4();
            v32 = sub_160F68(4);
            if (v30)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v31, 30, v32, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6299, "pCrQpOff != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v12);
              v33 = sub_175AE4();
              v35 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v33, 30, v35, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6299, "pCrQpOff != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v31, 30, v32, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6299, "pCrQpOff != __null", a1);
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
        if (v18 >= 2 * *(a1 + 10244) - 2)
        {
          goto LABEL_11;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v27 = sub_160F34(0x1Eu);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
        if (v27)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v28, 30, v29, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6292, "pCbQpOff != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v12 - 10));
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v28, 30, v29, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6292, "pCbQpOff != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(v12 - 10));
      }
    }

    else if (sub_160EF0(0x1Eu, 4))
    {
      v24 = sub_160F34(0x1Eu);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v25, 30, v26, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6283, "pQpOffsetArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 0);
        v25 = sub_175AE4();
        v26 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v25, 30, v26, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6283, "pQpOffsetArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 0);
    }

    return 4294966293;
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v20 = sub_160F34(0x1Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_GetChromaQPIndexOffsetMultiPPS", 6275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v23 = sub_175AE4();
        v34 = sub_160F68(4);
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

uint64_t sub_A1294(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294965293;
      }

      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      v26 = *(a1 + 56);
      v27 = CFGetTypeID(a4);
      if (v23)
      {
        v49 = v26;
        v28 = 6369;
        printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_AVC_SetUserParameterSetsIds", 6369, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v49, a2, a3, a4, v27);
        v29 = sub_175AE4();
        v30 = sub_160F68(4);
        CFGetTypeID(a4);
        v31 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_25:
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v29, 30, v30, "AVE_Prop_AVC_SetUserParameterSetsIds", v28, v31);
        return 4294965293;
      }

      v35 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
      v36 = 6369;
LABEL_32:
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v24, 30, v25, "AVE_Prop_AVC_SetUserParameterSetsIds", v36, v35);
      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    v10 = Count;
    if (Count > 9)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v32 = sub_160F34(0x1Eu);
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
        if (v32)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]\n", v33, 30, v34, "AVE_Prop_AVC_SetUserParameterSetsIds", 6379, "UserParameterSetIdsCount <= 9", a1, *(a1 + 56), a2, a3, a4, v10, 9);
          v33 = sub_175AE4();
          v34 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld [0, %d]", v33, 30, v34, "AVE_Prop_AVC_SetUserParameterSetsIds", 6379, "UserParameterSetIdsCount <= 9", a1, *(a1 + 56), a2, a3, a4, v10, 9);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v37 = sub_160F34(0x1Eu);
              v38 = sub_175AE4();
              v39 = sub_160F68(4);
              if (v37)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v38, 30, v39, "AVE_Prop_AVC_SetUserParameterSetsIds", 6387, "UserParameterSetIds != __null", a1, *(a1 + 56), a2, a3, a4);
                v40 = sub_175AE4();
                v48 = sub_160F68(4);
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
            if (sub_160EF0(0x1Eu, 4))
            {
              v44 = sub_160F34(0x1Eu);
              v45 = sub_175AE4();
              v46 = sub_160F68(4);
              if (v44)
              {
                printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v45, 30, v46, "AVE_Prop_AVC_SetUserParameterSetsIds", 6400, "ParameterSetId >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
                v45 = sub_175AE4();
                v46 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v45, 30, v46, "AVE_Prop_AVC_SetUserParameterSetsIds", 6400, "ParameterSetId >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            }

            return 4294965292;
          }

          if (v11 == 2551)
          {
            *(a1 + 12040) = valuePtr;
          }

          else
          {
            *(a1 + 4 * v11) = valuePtr;
          }

          if (++v11 - v10 == 2551)
          {
            goto LABEL_16;
          }
        }

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v41 = sub_160F34(0x1Eu);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        v42 = *(a1 + 56);
        v43 = CFGetTypeID(a4);
        if (v41)
        {
          v50 = v42;
          v28 = 6391;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v24, 30, v25, "AVE_Prop_AVC_SetUserParameterSetsIds", 6391, "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)", a1, v50, a2, a3, a4, v43);
          v29 = sub_175AE4();
          v30 = sub_160F68(4);
          CFGetTypeID(a4);
          v31 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
          goto LABEL_25;
        }

        v35 = "CFNumberGetTypeID() == CFGetTypeID(UserParameterSetIds)";
        v36 = 6391;
        goto LABEL_32;
      }

LABEL_16:
      *(a1 + 10244) = v10 - 1;
      *(a1 + 16992) = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v16 = sub_160F34(0x1Eu);
        v17 = sub_175AE4();
        v18 = sub_160F68(7);
        if (v16)
        {
          printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v17, 30, v18, a1, *(a1 + 56), *a2, v10);
          v17 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v17);
        return 0;
      }
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_SetUserParameterSetsIds", 6359, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v22 = sub_175AE4();
        v47 = sub_160F68(4);
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

uint64_t sub_A19F0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFMutableArrayRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v26 = sub_160F34(0x1Eu);
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v27, 30, v28, "AVE_Prop_AVC_GetUserParameterSetsIds", 6455, "pArray != __null", a1, *(a1 + 56), a2, allocator, a4, a5, 0);
          v29 = sub_175AE4();
          v37 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v29, 30, v37, "AVE_Prop_AVC_GetUserParameterSetsIds", 6455, "pArray != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p", v27, 30, v28, "AVE_Prop_AVC_GetUserParameterSetsIds", 6455, "pArray != __null", a1);
        }
      }

      return 4294966293;
    }

    v11 = Mutable;
    v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, (a1 + 12040));
    if (!v12)
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v30 = sub_160F34(0x1Eu);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v31, 30, v32, "AVE_Prop_AVC_GetUserParameterSetsIds", 6461, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 12040));
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v31, 30, v32, "AVE_Prop_AVC_GetUserParameterSetsIds", 6461, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *(a1 + 12040));
      }

LABEL_32:
      CFRelease(v11);
      return 4294966293;
    }

    v13 = v12;
    CFArrayAppendValue(v11, v12);
    CFRelease(v13);
    if (*(a1 + 10244) >= 1)
    {
      v14 = 0;
      v15 = (a1 + 10208);
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
        if (v14 >= *(a1 + 10244))
        {
          goto LABEL_11;
        }
      }

      if (sub_160EF0(0x1Eu, 4))
      {
        v33 = sub_160F34(0x1Eu);
        v34 = sub_175AE4();
        v35 = sub_160F68(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v34, 30, v35, "AVE_Prop_AVC_GetUserParameterSetsIds", 6479, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v15);
          v34 = sub_175AE4();
          v35 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v34, 30, v35, "AVE_Prop_AVC_GetUserParameterSetsIds", 6479, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, *v15);
      }

      goto LABEL_32;
    }

LABEL_11:
    *a5 = v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v19 = sub_160F34(0x1Eu);
      v20 = sub_175AE4();
      v21 = sub_160F68(7);
      if (v19)
      {
        printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v20, 30, v21, a1, *(a1 + 56), *a2, v11);
        v20 = sub_175AE4();
        sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v20);
      return 0;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v22 = sub_160F34(0x1Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v23, 30, v24, "AVE_Prop_AVC_GetUserParameterSetsIds", 6447, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v25 = sub_175AE4();
        v36 = sub_160F68(4);
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

uint64_t sub_A1F98(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)\n", v24, 30, v25, "AVE_Prop_AVC_Setlog2_max_minus4", 6552, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)", v26, 30, v28, "AVE_Prop_AVC_Setlog2_max_minus4", 6552, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [0, 12)", v24, 30, v25, "AVE_Prop_AVC_Setlog2_max_minus4", 6552, "0 <= iLogMaxMinus4 && iLogMaxMinus4 < 12");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 16996) = valuePtr;
        *(a1 + 13056) = v9;
        *(a1 + 13064) = v9 + 1;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: %d\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %d", v12);
          return 0;
        }
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_Setlog2_max_minus4", 6543, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_Setlog2_max_minus4", 6543, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
      }

      return 4294965293;
    }
  }

  else
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v14 = sub_160F34(0x1Eu);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_Setlog2_max_minus4", 6533, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_A23F0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 13056);
    v10 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (v10)
    {
      v11 = v10;
      *a5 = v10;
      result = sub_160EF0(0x1Eu, 7);
      if (result)
      {
        v13 = sub_160F34(0x1Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(7);
        if (v13)
        {
          printf("%lld %d AVE %s: %p %lld GetProp %s: %d %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %d %p", v14, 30);
        return 0;
      }
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v20 = sub_160F34(0x1Eu);
        v21 = sub_175AE4();
        v22 = sub_160F68(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_Getlog2_max_minus4", 6599, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_Getlog2_max_minus4", 6589, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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