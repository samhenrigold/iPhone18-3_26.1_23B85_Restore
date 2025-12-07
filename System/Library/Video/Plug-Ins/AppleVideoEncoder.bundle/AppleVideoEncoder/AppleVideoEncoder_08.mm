uint64_t sub_BA354(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1288);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11912, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetNumOfTemporalLayer", 11902, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BA684(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17904) = valuePtr;
        *(a1 + 1296) |= v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetRefFeatureOn", 11963, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOn", 11954, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOn", 11954, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefFeatureOn", 11944, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BAAD8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1296);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetRefFeatureOn", 12009, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefFeatureOn", 11999, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BAE08(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17908) = valuePtr;
        *(a1 + 1296) &= ~v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetRefFeatureOff", 12060, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOff", 12051, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefFeatureOff", 12051, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefFeatureOff", 12041, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BB25C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~*(a1 + 1296);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetRefFeatureOff", 12106, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefFeatureOff", 12096, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BB590(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetRefNumOfPFrame", 12158, "(iRefNumOfPFrame > 0) && (iRefNumOfPFrame <= 4)");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 17912) = valuePtr;
        *(a1 + 1308) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfPFrame", 12148, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfPFrame", 12148, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefNumOfPFrame", 12138, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BB9E4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1308);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetRefNumOfPFrame", 12204, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefNumOfPFrame", 12194, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BBD14(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 3);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetRefNumOfBFrame", 12256, "(iRefNumOfBFrame > 1) && (iRefNumOfBFrame <= 4)", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 17916) = valuePtr;
        *(a1 + 1312) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfBFrame", 12246, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetRefNumOfBFrame", 12246, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetRefNumOfBFrame", 12236, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BC17C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1312);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetRefNumOfBFrame", 12302, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetRefNumOfBFrame", 12292, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BC4AC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17920) = valuePtr;
        *(a1 + 1336) |= v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetQPModFeatureOn", 12353, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOn", 12344, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOn", 12344, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetQPModFeatureOn", 12334, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BC900(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1336);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetQPModFeatureOn", 12399, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQPModFeatureOn", 12389, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BCC30(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17924) = valuePtr;
        *(a1 + 1336) &= ~v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetQPModFeatureOff", 12450, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOff", 12441, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetQPModFeatureOff", 12441, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetQPModFeatureOff", 12431, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BD084(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~*(a1 + 1336);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetQPModFeatureOff", 12496, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQPModFeatureOff", 12486, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BD3B8(void *a1, const void *a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if (sub_160EF0(0x1Eu, 4))
      {
        v9 = sub_160F34(0x1Eu);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v10, 30, v11, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1, a1[7], a2, a3, a4, valuePtr, 0, 1);
          v12 = sub_175AE4();
          v23 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v12, 30, v23, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v10, 30, v11, "AVE_Prop_AVC_SetQPModLevel", 12548, "AVE_QPModLevel_None < iQPModLevel && iQPModLevel < AVE_QPModLevel_Max", a1);
        }
      }

      return 4294965292;
    }

    else
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        v20 = a1[7];
        v21 = CFGetTypeID(a4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetQPModLevel", 12538, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetQPModLevel", 12538, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetQPModLevel", 12528, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BD748(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1340);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetQPModLevel", 12596, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
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
    if (sub_160EF0(0x1Eu, 4))
    {
      v16 = sub_160F34(0x1Eu);
      v17 = sub_175AE4();
      v18 = sub_160F68(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetQPModLevel", 12585, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_BDA78(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17932) = valuePtr;
        *(a1 + 1352) |= v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12648, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v18 = sub_160F34(0x1Eu);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        v21 = *(a1 + 56);
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12639, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12639, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLambdaModFeatureOn", 12629, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
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

uint64_t sub_BDECC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1352);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12694, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12694, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12694, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12684, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12684);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetLambdaModFeatureOn", 12684);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BE1FC(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17936) = valuePtr;
        *(a1 + 1352) &= ~v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12746, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12746, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12746, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12737, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12737, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLambdaModFeatureOff", 12727, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetLambdaModFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetLambdaModFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BE650(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~*(a1 + 1352);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12792, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12792, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12792, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12782, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12782);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetLambdaModFeatureOff", 12782);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BE984(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetEnableLambdaMod", 12843, "iEnableLambdaMod >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetEnableLambdaMod", 12843, "iEnableLambdaMod >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetEnableLambdaMod", 12843, "iEnableLambdaMod >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 17940) = valuePtr;
        if (v9)
        {
          v9 = *(a1 + 1352) | 0x1E;
        }

        *(a1 + 1352) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableLambdaMod", 12834, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableLambdaMod", 12834, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableLambdaMod", 12824, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetEnableLambdaMod");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableLambdaMod");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BEDDC(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 1352);
    v11 = &kCFBooleanTrue;
    if (!v10)
    {
      v11 = &kCFBooleanFalse;
    }

    *a5 = *v11;
    result = sub_160EF0(0x1Eu, 7);
    if (result)
    {
      v13 = v10 != 0;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v18, 30, v19, "AVE_Prop_AVC_GetEnableLambdaMod", 12887, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetEnableLambdaMod", 12887);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v18, 30, v19, "AVE_Prop_AVC_GetEnableLambdaMod", 12887);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BF004(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17944) = valuePtr;
        *(a1 + 1356) |= v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetModeDecFeatureOn", 12944, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetModeDecFeatureOn", 12944, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetModeDecFeatureOn", 12944, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetModeDecFeatureOn", 12935, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetModeDecFeatureOn", 12935, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetModeDecFeatureOn", 12925, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetModeDecFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetModeDecFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BF458(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 1356);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetModeDecFeatureOn", 12990, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetModeDecFeatureOn", 12990, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetModeDecFeatureOn", 12990, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetModeDecFeatureOn", 12980, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetModeDecFeatureOn", 12980);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetModeDecFeatureOn", 12980);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BF788(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        *(a1 + 17948) = valuePtr;
        *(a1 + 1356) &= ~v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%x\n", v12, 30, v13, a1, *(a1 + 56), *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%x", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x\n", v24, 30, v25, "AVE_Prop_AVC_SetModeDecFeatureOff", 13042, "iFeature != 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v26, 30, v28, "AVE_Prop_AVC_SetModeDecFeatureOff", 13042, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%x", v24, 30, v25, "AVE_Prop_AVC_SetModeDecFeatureOff", 13042, "iFeature != 0");
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetModeDecFeatureOff", 13033, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetModeDecFeatureOff", 13033, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetModeDecFeatureOff", 13023, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetModeDecFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetModeDecFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BFBDC(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~*(a1 + 1356);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p\n", v14, 30, v15, a1, *(a1 + 56), *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%x %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x\n", v21, 30, v22, "AVE_Prop_AVC_GetModeDecFeatureOff", 13088, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v23, 30, v25, "AVE_Prop_AVC_GetModeDecFeatureOff", 13088, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p 0x%x", v21, 30, v22, "AVE_Prop_AVC_GetModeDecFeatureOff", 13088, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetModeDecFeatureOff", 13078, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetModeDecFeatureOff", 13078);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetModeDecFeatureOff", 13078);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_BFF10(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 17952) = v9;
      *(a1 + 10205) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers", 13131, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers", 13131, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers", 13121, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetUseReferenceCompressedBuffers");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C0250(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10205);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10205))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetUseReferenceCompressedBuffers", 13168, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseReferenceCompressedBuffers", 13168);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetUseReferenceCompressedBuffers", 13168);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C0474(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        a1[2245] = valuePtr;
        a1[137] |= v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetSEIFeatureOn", 13224, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetSEIFeatureOn", 13224, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetSEIFeatureOn", 13224, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSEIFeatureOn", 13215, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSEIFeatureOn", 13215, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSEIFeatureOn", 13205, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSEIFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSEIFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C08C4(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[137];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v21, 30, v22, "AVE_Prop_AVC_GetSEIFeatureOn", 13270, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v23, 30, v25, "AVE_Prop_AVC_GetSEIFeatureOn", 13270, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v21, 30, v22, "AVE_Prop_AVC_GetSEIFeatureOn", 13270, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSEIFeatureOn", 13260, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSEIFeatureOn", 13260);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSEIFeatureOn", 13260);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C0BF4(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        a1[2246] = valuePtr;
        a1[137] &= ~v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetSEIFeatureOff", 13321, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetSEIFeatureOff", 13321, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetSEIFeatureOff", 13321, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetSEIFeatureOff", 13312, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetSEIFeatureOff", 13312, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetSEIFeatureOff", 13302, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetSEIFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetSEIFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C1044(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[137];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v21, 30, v22, "AVE_Prop_AVC_GetSEIFeatureOff", 13367, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v23, 30, v25, "AVE_Prop_AVC_GetSEIFeatureOff", 13367, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v21, 30, v22, "AVE_Prop_AVC_GetSEIFeatureOff", 13367, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetSEIFeatureOff", 13357, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetSEIFeatureOff", 13357);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetSEIFeatureOff", 13357);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C1378(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      v10 = Value != 0;
      *(a1 + 17996) = v10;
      v11 = *(a1 + 1096) & 0xFFFFFFFFFFFFFFFELL;
      if (Value)
      {
        ++v11;
      }

      *(a1 + 1096) = v11;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v21, 30, v22, "AVE_Prop_AVC_SetDebugMetadataSEI", 13410, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v23, a2, a3, a4, v24);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v21, 30, v22, "AVE_Prop_AVC_SetDebugMetadataSEI", 13410, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_SetDebugMetadataSEI", 13400, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v19 = sub_175AE4();
        v25 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v19, 30, v25, "AVE_Prop_AVC_SetDebugMetadataSEI");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_SetDebugMetadataSEI");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C16C0(void *a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = a1[137] & 1;
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
        printf("%lld %d AVE %s: %p %lld GetProp %s: %d\n", v14, 30, v15, a1, a1[7], *a2, v10);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetDebugMetadataSEI", 13455, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetDebugMetadataSEI", 13455);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetDebugMetadataSEI", 13455);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C18E0(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        a1[2247] = valuePtr;
        a1[138] |= v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetVUIFeatureOn", 13512, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetVUIFeatureOn", 13512, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetVUIFeatureOn", 13512, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetVUIFeatureOn", 13503, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetVUIFeatureOn", 13503, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetVUIFeatureOn", 13493, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetVUIFeatureOn");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetVUIFeatureOn");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C1D30(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = a1[138];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v21, 30, v22, "AVE_Prop_AVC_GetVUIFeatureOn", 13558, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v23, 30, v25, "AVE_Prop_AVC_GetVUIFeatureOn", 13558, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v21, 30, v22, "AVE_Prop_AVC_GetVUIFeatureOn", 13558, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVUIFeatureOn", 13548, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVUIFeatureOn", 13548);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVUIFeatureOn", 13548);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C2060(void *a1, const char **a2, const void *a3, const __CFNumber *a4)
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
        a1[2248] = valuePtr;
        a1[138] &= ~v9;
        result = sub_160EF0(0x1Eu, 7);
        if (result)
        {
          v11 = sub_160F34(0x1Eu);
          v12 = sub_175AE4();
          v13 = sub_160F68(7);
          if (v11)
          {
            printf("%lld %d AVE %s: %p %lld SetProp %s: 0x%llx\n", v12, 30, v13, a1, a1[7], *a2, valuePtr);
            v12 = sub_175AE4();
            sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: 0x%llx", v12);
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
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx\n", v24, 30, v25, "AVE_Prop_AVC_SetVUIFeatureOff", 13609, "iFeature != 0", a1, a1[7], a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v26, 30, v28, "AVE_Prop_AVC_SetVUIFeatureOff", 13609, "iFeature != 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | No set features %p %lld %p %p %p 0x%llx", v24, 30, v25, "AVE_Prop_AVC_SetVUIFeatureOff", 13609, "iFeature != 0");
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
        v21 = a1[7];
        v22 = CFGetTypeID(a4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetVUIFeatureOff", 13600, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetVUIFeatureOff", 13600, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetVUIFeatureOff", 13590, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetVUIFeatureOff");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetVUIFeatureOff");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C24B0(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = ~a1[138];
    v10 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p\n", v14, 30, v15, a1, a1[7], *a2, valuePtr, v11);
          v14 = sub_175AE4();
          sub_160F68(7);
        }

        syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: 0x%llx %p", v14, 30);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu\n", v21, 30, v22, "AVE_Prop_AVC_GetVUIFeatureOff", 13655, "pNum != __null", a1, a1[7], a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v23, 30, v25, "AVE_Prop_AVC_GetVUIFeatureOff", 13655, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %llu", v21, 30, v22, "AVE_Prop_AVC_GetVUIFeatureOff", 13655, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetVUIFeatureOff", 13645, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetVUIFeatureOff", 13645);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetVUIFeatureOff", 13645);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C27E4(uint64_t a1, const char **a2, const void *a3, const void *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID != CFGetTypeID(a4))
    {
      if (sub_160EF0(0x1Eu, 4))
      {
        v24 = sub_160F34(0x1Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        v25 = *(a1 + 56);
        v26 = CFGetTypeID(a4);
        if (v24)
        {
          v62 = v25;
          v19 = 13701;
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetChromaQpOffset", 13701, "CFArrayGetTypeID() == CFGetTypeID(pValue)", a1, v62, a2, a3, a4, v26);
          v27 = sub_175AE4();
          v28 = sub_160F68(4);
          CFGetTypeID(a4);
          v29 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
LABEL_19:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v27, 30, v28, "AVE_Prop_AVC_SetChromaQpOffset", v19, v29);
          return 4294965293;
        }

        v42 = "CFArrayGetTypeID() == CFGetTypeID(pValue)";
        v43 = 13701;
        goto LABEL_33;
      }

      return 4294965293;
    }

    Count = CFArrayGetCount(a4);
    if (Count > 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
      v11 = ValueAtIndex;
      if (Count == 1)
      {
        if (ValueAtIndex)
        {
          v12 = CFNumberGetTypeID();
          v13 = v11;
          if (v12 != CFGetTypeID(v11))
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
                v61 = v17;
                v19 = 13745;
                printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetChromaQpOffset", 13745, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v61, a2, a3, a4, v18);
LABEL_44:
                v27 = sub_175AE4();
                v28 = sub_160F68(4);
                CFGetTypeID(a4);
                v29 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
                goto LABEL_19;
              }

              v42 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
              v43 = 13745;
              goto LABEL_33;
            }

            return 4294965293;
          }

          goto LABEL_29;
        }

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v44 = sub_160F34(0x1Eu);
        v45 = sub_175AE4();
        v46 = sub_160F68(4);
        if (v44)
        {
          v47 = 13741;
          printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v45, 30, v46, "AVE_Prop_AVC_SetChromaQpOffset", 13741, "pCbQpOff != __null", a1, *(a1 + 56), a2, a3, a4);
LABEL_51:
          v53 = sub_175AE4();
          v60 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v53, 30, v60, "AVE_Prop_AVC_SetChromaQpOffset", v47);
          return 4294965293;
        }

        v57 = 13741;
      }

      else if (ValueAtIndex)
      {
        v35 = CFNumberGetTypeID();
        if (v35 != CFGetTypeID(v11))
        {
          if (!sub_160EF0(0x1Eu, 4))
          {
            return 4294965293;
          }

          v49 = sub_160F34(0x1Eu);
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
          v50 = *(a1 + 56);
          v51 = CFGetTypeID(a4);
          if (v49)
          {
            v63 = v50;
            v19 = 13723;
            printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetChromaQpOffset", 13723, "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)", a1, v63, a2, a3, a4, v51);
            goto LABEL_44;
          }

          v42 = "CFNumberGetTypeID() == CFGetTypeID(pCbQpOff)";
          v43 = 13723;
LABEL_33:
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v15, 30, v16, "AVE_Prop_AVC_SetChromaQpOffset", v43, v42);
          return 4294965293;
        }

        v36 = CFArrayGetValueAtIndex(a4, 1);
        if (v36)
        {
          v13 = v36;
          v37 = CFNumberGetTypeID();
          if (v37 != CFGetTypeID(v13))
          {
            if (!sub_160EF0(0x1Eu, 4))
            {
              return 4294965293;
            }

            v54 = sub_160F34(0x1Eu);
            v15 = sub_175AE4();
            v16 = sub_160F68(4);
            v55 = *(a1 + 56);
            v56 = CFGetTypeID(a4);
            if (v54)
            {
              v64 = v55;
              v19 = 13733;
              printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v15, 30, v16, "AVE_Prop_AVC_SetChromaQpOffset", 13733, "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)", a1, v64, a2, a3, a4, v56);
              v27 = sub_175AE4();
              v28 = sub_160F68(4);
              CFGetTypeID(a4);
              v29 = "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)";
              goto LABEL_19;
            }

            v42 = "CFNumberGetTypeID() == CFGetTypeID(pCrQpOff)";
            v43 = 13733;
            goto LABEL_33;
          }

LABEL_29:
          CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr + 4);
          HIDWORD(valuePtr) = 0;
          CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
          LODWORD(valuePtr) = 0;
          *(a1 + 17992) = Count;
          *(a1 + 13772) = HIDWORD(valuePtr);
          *(a1 + 13812) = 0;
          v38 = sub_160EF0(0x1Eu, 7);
          result = 0;
          if (v38)
          {
            v39 = sub_160F34(0x1Eu);
            v40 = sub_175AE4();
            v41 = sub_160F68(7);
            if (v39)
            {
              printf("%lld %d AVE %s: %p %lld SetProp %s: %ld\n", v40, 30, v41, a1, *(a1 + 56), *a2, Count);
              v40 = sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld SetProp %s: %ld", v40);
            return 0;
          }

          return result;
        }

        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v52 = sub_160F34(0x1Eu);
        v45 = sub_175AE4();
        v46 = sub_160F68(4);
        if (v52)
        {
          v47 = 13729;
          printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v45, 30, v46, "AVE_Prop_AVC_SetChromaQpOffset", 13729, "pCrQpOff != __null", a1, *(a1 + 56), a2, a3, a4);
          goto LABEL_51;
        }

        v57 = 13729;
      }

      else
      {
        if (!sub_160EF0(0x1Eu, 4))
        {
          return 4294965293;
        }

        v48 = sub_160F34(0x1Eu);
        v45 = sub_175AE4();
        v46 = sub_160F68(4);
        if (v48)
        {
          v47 = 13719;
          printf("%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p\n", v45, 30, v46, "AVE_Prop_AVC_SetChromaQpOffset", 13719, "pCbQpOff != __null", a1, *(a1 + 56), a2, a3, a4);
          goto LABEL_51;
        }

        v57 = 13719;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFArrayGetValueAtIndex %p %lld %p %p %p", v45, 30, v46, "AVE_Prop_AVC_SetChromaQpOffset", v57);
      return 4294965293;
    }

    if (sub_160EF0(0x1Eu, 4))
    {
      v31 = sub_160F34(0x1Eu);
      v32 = sub_175AE4();
      v33 = sub_160F68(4);
      if (v31)
      {
        printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld\n", v32, 30, v33, "AVE_Prop_AVC_SetChromaQpOffset", 13710, "cQpOffsetCount > 0", a1, *(a1 + 56), a2, a3, a4, Count);
        v34 = sub_175AE4();
        v59 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld", v34, 30, v59, "AVE_Prop_AVC_SetChromaQpOffset", 13710, "cQpOffsetCount > 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %ld", v32, 30, v33, "AVE_Prop_AVC_SetChromaQpOffset", 13710, "cQpOffsetCount > 0");
      }
    }

    return 4294965292;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v21, 30, v22, "AVE_Prop_AVC_SetChromaQpOffset", 13691, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v23 = sub_175AE4();
        v58 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v23, 30, v58, "AVE_Prop_AVC_SetChromaQpOffset");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v21, 30, v22, "AVE_Prop_AVC_SetChromaQpOffset");
      }
    }

    return 4294966295;
  }
}

uint64_t sub_C30A0(void *a1, const char **a2, CFAllocatorRef allocator, const void *a4, __CFArray **a5)
{
  if (a1 && a2 && a4 && a5)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 13772);
      if (v12)
      {
        v13 = v12;
        v14 = CFNumberCreate(allocator, kCFNumberSInt32Type, a1 + 13812);
        if (v14)
        {
          v15 = v14;
          CFArrayAppendValue(v11, v13);
          CFArrayAppendValue(v11, v15);
          *a5 = v11;
          if (sub_160EF0(0x1Eu, 7))
          {
            v16 = sub_160F34(0x1Eu);
            v17 = sub_175AE4();
            v18 = sub_160F68(7);
            if (v16)
            {
              printf("%lld %d AVE %s: %p %lld GetProp %s: %p\n", v17, 30, v18, a1, a1[7], *a2, v11);
              v17 = sub_175AE4();
              sub_160F68(7);
            }

            syslog(3, "%lld %d AVE %s: %p %lld GetProp %s: %p", v17);
          }

          CFRelease(v13);
          CFRelease(v15);
          return 0;
        }

        if (sub_160EF0(0x1Eu, 4))
        {
          v30 = sub_160F34(0x1Eu);
          v31 = sub_175AE4();
          v32 = sub_160F68(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v31, 30, v32, "AVE_Prop_AVC_GetChromaQpOffset", 13826, "pCrQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3453));
            v33 = sub_175AE4();
            v36 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v33, 30, v36, "AVE_Prop_AVC_GetChromaQpOffset", 13826, "pCrQpOff != __null", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d", v31, 30, v32, "AVE_Prop_AVC_GetChromaQpOffset", 13826, "pCrQpOff != __null", a1);
          }
        }

        CFRelease(v13);
        return 4294966293;
      }

      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294966293;
      }

      v28 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d\n", v24, 30, v29, "AVE_Prop_AVC_GetChromaQpOffset", 13819, "pCbQpOff != __null", a1, a1[7], a2, allocator, a4, a5, *(a1 + 3443));
        v24 = sub_175AE4();
        v29 = sub_160F68(4);
      }

      v44 = a5;
      v45 = *(a1 + 3443);
      v42 = allocator;
      v43 = a4;
      v40 = a1[7];
      v41 = a2;
      v38 = "pCbQpOff != __null";
      v39 = a1;
      v37 = 13819;
      v35 = v29;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to create CFNumber  %p %lld %p %p %p %p %d";
    }

    else
    {
      if (!sub_160EF0(0x1Eu, 4))
      {
        return 4294966293;
      }

      v23 = sub_160F34(0x1Eu);
      v24 = sub_175AE4();
      v25 = sub_160F68(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p\n", v24, 30, v25, "AVE_Prop_AVC_GetChromaQpOffset", 13812, "pArray != __null", a1, a1[7], a2, allocator, a4, a5, 0);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
      }

      v44 = a5;
      v45 = 0;
      v42 = allocator;
      v43 = a4;
      v40 = a1[7];
      v41 = a2;
      v38 = "pArray != __null";
      v39 = a1;
      v37 = 13812;
      v35 = v25;
      v26 = "%lld %d AVE %s: %s:%d %s | fail to create CFArrayCreateMutable  %p %lld %p %p %p %p %p";
    }

    syslog(3, v26, v24, 30, v35, "AVE_Prop_AVC_GetChromaQpOffset", v37, v38, v39, v40, v41, v42, v43, v44, v45);
    return 4294966293;
  }

  if (sub_160EF0(0x1Eu, 4))
  {
    v19 = sub_160F34(0x1Eu);
    v20 = sub_175AE4();
    v21 = sub_160F68(4);
    if (v19)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v20, 30, v21, "AVE_Prop_AVC_GetChromaQpOffset", 13804, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
      v22 = sub_175AE4();
      v34 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v22, 30, v34, "AVE_Prop_AVC_GetChromaQpOffset", 13804);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v20, 30, v21, "AVE_Prop_AVC_GetChromaQpOffset", 13804);
    }
  }

  return 4294966295;
}

uint64_t sub_C3618(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 18000) = v9;
      *(a1 + 10855) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetUseHWTileOffsets", 13884, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetUseHWTileOffsets", 13884, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetUseHWTileOffsets", 13874, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetUseHWTileOffsets");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetUseHWTileOffsets");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C3958(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10855);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10855))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetUseHWTileOffsets", 13921, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseHWTileOffsets", 13921);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetUseHWTileOffsets", 13921);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C3B7C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      if ((valuePtr - 1) >= 7)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v22 = sub_160F34(0x1Eu);
          v23 = sub_175AE4();
          v24 = sub_160F68(4);
          if (v22)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)\n", v23, 30, v24, "AVE_Prop_AVC_SetThroughputRateMode", 13980, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 8);
            v25 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v25, 30, v27, "AVE_Prop_AVC_SetThroughputRateMode", 13980, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d)", v23, 30, v24, "AVE_Prop_AVC_SetThroughputRateMode", 13980, "iThroughputRateMode > AVE_ThroughputMode_Invalid && iThroughputRateMode < AVE_ThroughputMode_Max", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18004) = valuePtr;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v18, 30, v19, "AVE_Prop_AVC_SetThroughputRateMode", 13969, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v20, a2, a3, a4, v21);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v18, 30, v19, "AVE_Prop_AVC_SetThroughputRateMode", 13969, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v14, 30, v15, "AVE_Prop_AVC_SetThroughputRateMode", 13959, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v16 = sub_175AE4();
        v26 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v16, 30, v26, "AVE_Prop_AVC_SetThroughputRateMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v14, 30, v15, "AVE_Prop_AVC_SetThroughputRateMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C3FE0(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 18004);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetThroughputRateMode", 14027, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetThroughputRateMode", 14027, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetThroughputRateMode", 14027, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetThroughputRateMode", 14016, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetThroughputRateMode", 14016);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetThroughputRateMode", 14016);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C4314(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 5)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetEdgeReplication", 14080, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1, *(a1 + 56), a2, a3, a4, valuePtr, -1, 4);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetEdgeReplication", 14080, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d (%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetEdgeReplication", 14080, "iEdgeReplication > AVE_EdgeReplication_UNINIT && iEdgeReplication <= AVE_EdgeReplication_ALL_HW", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18008) = valuePtr;
        *(a1 + 10860) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEdgeReplication", 14069, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEdgeReplication", 14069, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEdgeReplication", 14059, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetEdgeReplication");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEdgeReplication");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C4780(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10860);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetEdgeReplication", 14143, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetEdgeReplication", 14143, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetEdgeReplication", 14143, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEdgeReplication", 14133, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetEdgeReplication", 14133);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEdgeReplication", 14133);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C4AB0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 3)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]\n", v24, 30, v25, "AVE_Prop_AVC_SetDeblockingFiltering", 14196, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 2);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v26, 30, v28, "AVE_Prop_AVC_SetDeblockingFiltering", 14196, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d]", v24, 30, v25, "AVE_Prop_AVC_SetDeblockingFiltering", 14196, "iDeblockingFiltering >= 0 && iDeblockingFiltering <= 2", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18012) = valuePtr;
        *(a1 + 14196) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetDeblockingFiltering", 14186, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetDeblockingFiltering", 14186, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetDeblockingFiltering", 14176, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetDeblockingFiltering");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetDeblockingFiltering");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C4F14(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 14196);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetDeblockingFiltering", 14242, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetDeblockingFiltering", 14242, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetDeblockingFiltering", 14242, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetDeblockingFiltering", 14232, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetDeblockingFiltering", 14232);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetDeblockingFiltering", 14232);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C5244(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14294, "iMode >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14294, "iMode >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14294, "iMode >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18016) = valuePtr;
        *(a1 + 10604) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14285, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14285, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLRMEFSMVCostMode", 14275, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetLRMEFSMVCostMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetLRMEFSMVCostMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C5690(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10604);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14340, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14340, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14340, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14330, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14330);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetLRMEFSMVCostMode", 14330);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C59C0(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14392, "iLinear >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14392, "iLinear >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14392, "iLinear >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18020) = valuePtr;
        *(a1 + 10608) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14383, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14383, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLRMEFSLambdaLinear", 14373, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetLRMEFSLambdaLinear");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetLRMEFSLambdaLinear");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C5E0C(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10608);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14438, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14438, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14438, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14428, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14428);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetLRMEFSLambdaLinear", 14428);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C613C(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      Value = CFBooleanGetValue(a4);
      *(a1 + 18024) = Value;
      *(a1 + 10172) = Value != 0;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetLrmePipeSyncMode", 14481, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetLrmePipeSyncMode", 14481, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetLrmePipeSyncMode", 14471, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetLrmePipeSyncMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetLrmePipeSyncMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C6480(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10172);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10172))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetLrmePipeSyncMode", 14518, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetLrmePipeSyncMode", 14518);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetLrmePipeSyncMode", 14518);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C66A4(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetlrmeRCPassNum", 14574, "ilrmeRCPassNum >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetlrmeRCPassNum", 14574, "ilrmeRCPassNum >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetlrmeRCPassNum", 14574, "ilrmeRCPassNum >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18028) = valuePtr;
        *(a1 + 10531) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetlrmeRCPassNum", 14565, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetlrmeRCPassNum", 14565, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetlrmeRCPassNum", 14555, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetlrmeRCPassNum");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetlrmeRCPassNum");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C6AF4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10531);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetlrmeRCPassNum", 14620, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetlrmeRCPassNum", 14620, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetlrmeRCPassNum", 14620, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetlrmeRCPassNum", 14610, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetlrmeRCPassNum", 14610);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetlrmeRCPassNum", 14610);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C6E28(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 18032) = v9;
      *(a1 + 10764) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetUseAsyncFWScheduling", 14663, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetUseAsyncFWScheduling", 14663, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetUseAsyncFWScheduling", 14653, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetUseAsyncFWScheduling");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetUseAsyncFWScheduling");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C7168(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10764);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10764))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetUseAsyncFWScheduling", 14700, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseAsyncFWScheduling", 14700);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetUseAsyncFWScheduling", 14700);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C738C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetEnableAttachMVStats", 14757, "iEnableAttachMVStats >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetEnableAttachMVStats", 14757, "iEnableAttachMVStats >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetEnableAttachMVStats", 14757, "iEnableAttachMVStats >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18060) = valuePtr;
        *(a1 + 10776) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableAttachMVStats", 14748, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableAttachMVStats", 14748, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableAttachMVStats", 14738, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetEnableAttachMVStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableAttachMVStats");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C77D8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10776);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetEnableAttachMVStats", 14803, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetEnableAttachMVStats", 14803, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetEnableAttachMVStats", 14803, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableAttachMVStats", 14793, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetEnableAttachMVStats", 14793);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableAttachMVStats", 14793);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C7B08(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 18036) = v9;
      *(a1 + 10512) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetEnableMultiSliceStats", 14846, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetEnableMultiSliceStats", 14846, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetEnableMultiSliceStats", 14836, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetEnableMultiSliceStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetEnableMultiSliceStats");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C7E48(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10512);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10512))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetEnableMultiSliceStats", 14883, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetEnableMultiSliceStats", 14883);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetEnableMultiSliceStats", 14883);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C806C(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetMCTFEdgeCount", 14939, "iEdgeCnt >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetMCTFEdgeCount", 14939, "iEdgeCnt >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetMCTFEdgeCount", 14939, "iEdgeCnt >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18040) = valuePtr;
        *(a1 + 10744) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMCTFEdgeCount", 14930, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMCTFEdgeCount", 14930, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMCTFEdgeCount", 14920, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetMCTFEdgeCount");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMCTFEdgeCount");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C84B8(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10744);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMCTFEdgeCount", 14985, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMCTFEdgeCount", 14985, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMCTFEdgeCount", 14985, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMCTFEdgeCount", 14975, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMCTFEdgeCount", 14975);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMCTFEdgeCount", 14975);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C87E8(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15036, "iEdgeThresh >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15036, "iEdgeThresh >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15036, "iEdgeThresh >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18044) = valuePtr;
        *(a1 + 10748) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15027, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15027, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMCTFEdgeThresh", 15017, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetMCTFEdgeThresh");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMCTFEdgeThresh");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C8C34(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10748);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15082, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15082, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15082, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15072, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15072);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMCTFEdgeThresh", 15072);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C8F64(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
{
  valuePtr = 0;
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
      v9 = valuePtr;
      if (valuePtr >= 0x19)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v23 = sub_160F34(0x1Eu);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)\n", v24, 30, v25, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15136, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1, *(a1 + 56), a2, a3, a4, valuePtr, 0, 25);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", v26, 30, v28, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15136, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d [%d, %d)", v24, 30, v25, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15136, "0 <= iMCTFStrengthLevel && iMCTFStrengthLevel < 25", a1);
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18048) = valuePtr;
        *(a1 + 10544) = v9;
        *(a1 + 1448) &= ~0x2000000uLL;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15125, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15125, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetMCTFStrengthLevel", 15115, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetMCTFStrengthLevel");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetMCTFStrengthLevel");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C93D4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 10544);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15184, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15184, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15184, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15174, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15174);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetMCTFStrengthLevel", 15174);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C9704(uint64_t a1, const char **a2, const void *a3, const __CFBoolean *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a4))
    {
      v9 = CFBooleanGetValue(a4) != 0;
      *(a1 + 18052) = v9;
      *(a1 + 10756) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetUseElementaryStreamOutput", 15227, "CFBooleanGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetUseElementaryStreamOutput", 15227, "CFBooleanGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetUseElementaryStreamOutput", 15217, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v23, "AVE_Prop_AVC_SetUseElementaryStreamOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetUseElementaryStreamOutput");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C9A44(uint64_t a1, const char **a2, const void *a3, const void *a4, CFBooleanRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    v10 = *(a1 + 10756);
    v11 = &kCFBooleanTrue;
    if (!*(a1 + 10756))
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetUseElementaryStreamOutput", 15264, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4, a5);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v20, "AVE_Prop_AVC_GetUseElementaryStreamOutput", 15264);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetUseElementaryStreamOutput", 15264);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_C9C68(uint64_t a1, const char **a2, const void *a3, const __CFNumber *a4)
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
            printf("%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d\n", v24, 30, v25, "AVE_Prop_AVC_SetCmdTimeOutMode", 15320, "iCmdTimeOutMode >= 0", a1, *(a1 + 56), a2, a3, a4, valuePtr);
            v26 = sub_175AE4();
            v28 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v26, 30, v28, "AVE_Prop_AVC_SetCmdTimeOutMode", 15320, "iCmdTimeOutMode >= 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | out of range %p %lld %p %p %p %d", v24, 30, v25, "AVE_Prop_AVC_SetCmdTimeOutMode", 15320, "iCmdTimeOutMode >= 0");
          }
        }

        return 4294965292;
      }

      else
      {
        *(a1 + 18056) = valuePtr;
        *(a1 + 11760) = v9;
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
          printf("%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld\n", v19, 30, v20, "AVE_Prop_AVC_SetCmdTimeOutMode", 15311, "CFNumberGetTypeID() == CFGetTypeID(pValue)", a1, v21, a2, a3, a4, v22);
          v19 = sub_175AE4();
          v20 = sub_160F68(4);
          CFGetTypeID(a4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong property type %p %lld %p %p %p %ld", v19, 30, v20, "AVE_Prop_AVC_SetCmdTimeOutMode", 15311, "CFNumberGetTypeID() == CFGetTypeID(pValue)");
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v15, 30, v16, "AVE_Prop_AVC_SetCmdTimeOutMode", 15301, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v17 = sub_175AE4();
        v27 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v17, 30, v27, "AVE_Prop_AVC_SetCmdTimeOutMode");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 30, v16, "AVE_Prop_AVC_SetCmdTimeOutMode");
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_CA0B4(uint64_t a1, const char **a2, CFAllocatorRef allocator, const void *a4, CFNumberRef *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    valuePtr = *(a1 + 11760);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d\n", v21, 30, v22, "AVE_Prop_AVC_GetCmdTimeOutMode", 15366, "pNum != __null", a1, *(a1 + 56), a2, allocator, a4, a5, valuePtr);
          v23 = sub_175AE4();
          v25 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v23, 30, v25, "AVE_Prop_AVC_GetCmdTimeOutMode", 15366, "pNum != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p %p %p %p %d", v21, 30, v22, "AVE_Prop_AVC_GetCmdTimeOutMode", 15366, "pNum != __null", a1);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p\n", v17, 30, v18, "AVE_Prop_AVC_GetCmdTimeOutMode", 15356, "pINS != __null && pEntry != __null && pKey != __null && pValue != __null", a1, a2, allocator, a4, a5);
        v19 = sub_175AE4();
        v24 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v19, 30, v24, "AVE_Prop_AVC_GetCmdTimeOutMode", 15356);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p", v17, 30, v18, "AVE_Prop_AVC_GetCmdTimeOutMode", 15356);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t sub_CA3E4(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary *a4)
{
  v6 = a2;
  v7 = a1;
  if ((a1 - 1) > 0x21 || a4 == 0)
  {
    if (sub_160EF0(0x1Eu, 4))
    {
      v9 = sub_160F34(0x1Eu);
      v10 = sub_175AE4();
      v11 = sub_160F68(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p\n", v10, 30, v11, "AVE_Prop_AVC_MakeDict", 15652, "AVE_DevID_None < devID && devID < AVE_DevID_Max && pDict != __null", v7, v6, a3, a4);
        v12 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v12, 30, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d 0x%x %lld %p", v10, 30, v11);
      }
    }

    return 4294966295;
  }

  else
  {
    v13 = sub_84FBC(&off_200B28, 152, a1, a2, a3, a4);
    v14 = v13;
    if (v13 && sub_160EF0(0x1Eu, 4))
    {
      v15 = sub_160F34(0x1Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d\n", v16, 30, v17, "AVE_Prop_AVC_MakeDict", 15660, "ret == 0", v7, v6, a3, a4, v14);
        v18 = sub_175AE4();
        v21 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v18, 30, v21, "AVE_Prop_AVC_MakeDict");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make property dictionary %d 0x%x %lld %p %d", v16, 30, v17, "AVE_Prop_AVC_MakeDict");
      }
    }
  }

  return v14;
}

uint64_t sub_CA644(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (*(a1 + 32) == 2)
  {
    v6 = 512;
  }

  else
  {
    v6 = 256;
  }

  v7 = sub_85624(&off_200B28, 152, *(a1 + 68), v6, a1, *(a1 + 56), a2, a3);
  if (v7 && sub_160EF0(0x1Eu, 4))
  {
    v8 = sub_160F34(0x1Eu);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d\n", v9, 30, v10, "AVE_Prop_AVC_SetProperty", 15694, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), a2, a3, v7);
      v11 = sub_175AE4();
      v13 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v11, 30, v13, "AVE_Prop_AVC_SetProperty", 15694, "ret == 0");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set property %p %lld 0x%x %d %p %p %d", v9, 30, v10, "AVE_Prop_AVC_SetProperty", 15694, "ret == 0");
    }
  }

  return v7;
}

uint64_t sub_CA7D8(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  if (*(a1 + 32) == 2)
  {
    v8 = 512;
  }

  else
  {
    v8 = 256;
  }

  v9 = sub_85B98(&off_200B28, 152, *(a1 + 68), v8, a1, *(a1 + 56), a2, a3, a4);
  if (v9 && sub_160EF0(0x1Eu, 4))
  {
    v10 = sub_160F34(0x1Eu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d\n", v11, 30, v12, "AVE_Prop_AVC_GetProperty", 15729, "ret == 0", a1, *(a1 + 56), v8, *(a1 + 68), a2, a3, a4, v9);
      v13 = sub_175AE4();
      v15 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v13, 30, v15, "AVE_Prop_AVC_GetProperty", 15729, "ret == 0", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get property %p %lld 0x%x %d %p %p %p %d", v11, 30, v12, "AVE_Prop_AVC_GetProperty", 15729, "ret == 0", a1);
    }
  }

  return v9;
}

uint64_t sub_CA984(uint64_t a1)
{
  if (sub_160EF0(0x1Eu, 6))
  {
    v2 = sub_160F34(0x1Eu);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 30, v4, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1);
      v5 = sub_175AE4();
      v26 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 30, v26, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 30, v4, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1);
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

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = sub_58FC(a1, *(a1 + 56), *(a1 + 68), 0, &off_200B28, 152, v6, *(a1 + 1440), *(a1 + 1444), Mutable);
      if (v9)
      {
        if (sub_160EF0(0x1Eu, 4))
        {
          v10 = sub_160F34(0x1Eu);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d\n", v11, 30, v12, "AVE_Prop_AVC_CreateSupportedPresetDictionary", 15774, "ret == 0", a1, *(a1 + 56), v6, *(a1 + 68), v9);
            v13 = sub_175AE4();
            v27 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d", v13, 30, v27, "AVE_Prop_AVC_CreateSupportedPresetDictionary");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create preset dictionary %p %lld 0x%x %d %d", v11, 30, v12, "AVE_Prop_AVC_CreateSupportedPresetDictionary");
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
      if (sub_160EF0(0x1Eu, 4))
      {
        v17 = sub_160F34(0x1Eu);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d\n", v18, 30, v19, "AVE_Prop_AVC_CreateSupportedPresetDictionary", 15765, "pDict != __null", a1, *(a1 + 56), v6, *(a1 + 68), 0);
          v20 = sub_175AE4();
          v28 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v20, 30, v28, "AVE_Prop_AVC_CreateSupportedPresetDictionary");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %lld 0x%x %d %d", v18, 30, v19, "AVE_Prop_AVC_CreateSupportedPresetDictionary");
        }
      }

      v9 = 4294966293;
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 30, v16, "AVE_Prop_AVC_CreateSupportedPresetDictionary", 15750, "pINS != __null", 0);
        v15 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0x1Eu, 6))
  {
    v21 = sub_160F34(0x1Eu);
    v22 = sub_175AE4();
    v23 = sub_160F68(6);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v22, 30, v23, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1, v9);
      v24 = sub_175AE4();
      v29 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 30, v29, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v22, 30, v23, "AVE_Prop_AVC_CreateSupportedPresetDictionary", a1, v9);
    }
  }

  return v9;
}

double sub_CAE48()
{
  qword_20C778[0] = kVTProfileLevel_H264_Baseline_1_3;
  qword_20C780 = 0x500000002;
  qword_20C788 = kVTProfileLevel_H264_Baseline_3_0;
  qword_20C790 = 0x900000002;
  qword_20C798 = kVTProfileLevel_H264_Baseline_3_1;
  qword_20C7A0 = 0xA00000002;
  qword_20C7A8 = kVTProfileLevel_H264_Baseline_3_2;
  qword_20C7B0 = 0xB00000002;
  qword_20C7B8 = kVTProfileLevel_H264_Baseline_4_0;
  qword_20C7C0 = 0xC00000002;
  qword_20C7C8 = kVTProfileLevel_H264_Baseline_4_1;
  qword_20C7D0 = 0xD00000002;
  qword_20C7D8 = kVTProfileLevel_H264_Baseline_4_2;
  qword_20C7E0 = 0xE00000002;
  qword_20C7E8 = kVTProfileLevel_H264_Baseline_5_0;
  qword_20C7F0 = 0xF00000002;
  qword_20C7F8 = kVTProfileLevel_H264_Baseline_5_1;
  qword_20C800 = 0x1000000002;
  qword_20C808 = kVTProfileLevel_H264_Baseline_5_2;
  qword_20C810 = 0x1100000002;
  qword_20C818 = kVTProfileLevel_H264_Main_3_0;
  qword_20C820 = 0x900000004;
  qword_20C828 = kVTProfileLevel_H264_Main_3_1;
  qword_20C830 = 0xA00000004;
  qword_20C838 = kVTProfileLevel_H264_Main_3_2;
  qword_20C840 = 0xB00000004;
  qword_20C848 = kVTProfileLevel_H264_Main_4_0;
  qword_20C850 = 0xC00000004;
  qword_20C858 = kVTProfileLevel_H264_Main_4_1;
  qword_20C860 = 0xD00000004;
  qword_20C868 = kVTProfileLevel_H264_Main_4_2;
  qword_20C870 = 0xE00000004;
  qword_20C878 = kVTProfileLevel_H264_Main_5_0;
  qword_20C880 = 0xF00000004;
  qword_20C888 = kVTProfileLevel_H264_Main_5_1;
  qword_20C890 = 0x1000000004;
  qword_20C898 = kVTProfileLevel_H264_Main_5_2;
  qword_20C8A0 = 0x1100000004;
  qword_20C8A8 = kVTProfileLevel_H264_High_3_0;
  qword_20C8B0 = 0x900000006;
  qword_20C8B8 = kVTProfileLevel_H264_High_3_1;
  qword_20C8C0 = 0xA00000006;
  qword_20C8C8 = kVTProfileLevel_H264_High_3_2;
  qword_20C8D0 = 0xB00000006;
  qword_20C8D8 = kVTProfileLevel_H264_High_4_0;
  qword_20C8E0 = 0xC00000006;
  qword_20C8E8 = kVTProfileLevel_H264_High_4_1;
  qword_20C8F0 = 0xD00000006;
  qword_20C8F8 = kVTProfileLevel_H264_High_4_2;
  qword_20C900 = 0xE00000006;
  qword_20C908 = kVTProfileLevel_H264_High_5_0;
  qword_20C910 = 0xF00000006;
  qword_20C918 = kVTProfileLevel_H264_High_5_1;
  qword_20C920 = 0x1000000006;
  qword_20C928 = kVTProfileLevel_H264_High_5_2;
  qword_20C930 = 0x1100000006;
  qword_20C938 = kVTProfileLevel_H264_Baseline_AutoLevel;
  qword_20C940 = 2;
  qword_20C948 = kVTProfileLevel_H264_ConstrainedBaseline_AutoLevel;
  qword_20C950 = 2;
  qword_20C958 = kVTProfileLevel_H264_Main_AutoLevel;
  qword_20C960 = 4;
  qword_20C968 = kVTProfileLevel_H264_High_AutoLevel;
  qword_20C970 = 6;
  qword_20C978 = kVTProfileLevel_H264_ConstrainedHigh_AutoLevel;
  qword_20C980 = 6;
  qword_20C988 = kVTProfileLevel_H264_High422_AutoLevel;
  qword_20C990 = 8;
  qword_20C998 = kVTProfileLevel_H264_High444Predictive_AutoLevel;
  *&result = 9;
  qword_20C9A0 = 9;
  return result;
}

uint64_t *sub_CB218(uint64_t *result, _DWORD *a2, int a3, int a4)
{
  v4 = (*result + a3 - 1) & -a3;
  *a2 = (*result + *a2 - v4) & -a4;
  *result = v4;
  return result;
}

_BYTE *sub_CB250(_BYTE *result, char *a2, int a3)
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

uint64_t sub_CB274(const char *a1, int a2, char *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v7 = sub_172100(a3, a4, " in %s", a1);
  v8 = v7;
  if (a2)
  {
    return sub_172100(&a3[v7], v4 - v7, ":%d", a2) + v7;
  }

  return v8;
}

void *sub_CB2F8(void *result, uint64_t a2)
{
  if (!result)
  {
    sub_18151C();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t sub_CB318(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_181548();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

BOOL sub_CB33C(void *a1)
{
  if (!a1)
  {
    sub_1815CC();
  }

  if (!*a1)
  {
    sub_1815A0();
  }

  v1 = a1[1];
  if (!v1)
  {
    sub_181574();
  }

  return *a1 == a1 || v1 == a1;
}

BOOL sub_CB37C(uint64_t a1)
{
  if (!a1)
  {
    sub_181650();
  }

  if (!*a1)
  {
    sub_181624();
  }

  if (!*(a1 + 8))
  {
    sub_1815F8();
  }

  result = sub_CB33C(a1);
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

uint64_t sub_CB3EC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_18167C();
  }

  return *a1;
}

uint64_t sub_CB408(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1816A8();
  }

  return *(a1 + 8);
}

uint64_t *sub_CB424(uint64_t *result)
{
  if (!result)
  {
    sub_18172C();
  }

  v1 = *result;
  if (!*result)
  {
    sub_181700();
  }

  v2 = result[1];
  if (!v2)
  {
    sub_1816D4();
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

uint64_t sub_CB47C(void *a1)
{
  if (!a1)
  {
    sub_181758();
  }

  if (sub_CB33C(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t sub_CB4B8(void *a1)
{
  if (!a1)
  {
    sub_181784();
  }

  if (sub_CB33C(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_CB4F4(uint64_t result, void *a2)
{
  if (!result)
  {
    sub_181834();
  }

  if (!a2)
  {
    sub_181808();
  }

  if (!*result)
  {
    sub_1817DC();
  }

  if (!*(result + 8))
  {
    sub_1817B0();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

BOOL sub_CB550(void **a1)
{
  if (!a1)
  {
    sub_1818B8();
  }

  if (!*a1)
  {
    sub_18188C();
  }

  if (!a1[1])
  {
    sub_181860();
  }

  result = sub_CB33C(a1);
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

uint64_t sub_CB5C0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1818E4();
  }

  return *(a1 + 8);
}

uint64_t sub_CB5DC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_181910();
  }

  return result;
}

uint64_t sub_CB5F4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_18193C();
  }

  return *a1;
}

uint64_t sub_CB610(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    sub_181968();
  }

  return result;
}

uint64_t sub_CB628(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v10 = a1 + 128;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  bzero(a2, 24 * a4);
  sub_CB2F8(a1, v12);
  *(a1 + 64) = a3;
  *(a1 + 72) = a5 * a4;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  sub_CB318(v11, v13);
  sub_CB318(v10, v14);
  if (a4 >= 1)
  {
    v15 = 0;
    do
    {
      sub_CB4F4(v11, (*(a1 + 88) + v15));
      v15 += 24;
    }

    while (24 * a4 != v15);
  }

  *(a1 + 164) = a4;
  return 0;
}

uint64_t sub_CB70C(int a1, int a2, unsigned int a3, uint64_t *a4)
{
  result = 4294966295;
  if (a1 >= 1 && a2 >= 1)
  {
    v6 = a3;
    if (a3 <= 0x40)
    {
      if (a3)
      {
        if (!a4 || ((a3 + 127) & a3) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v6 = 64;
      }

      *a4 = 0;
      v8 = (v6 - 1 + a2) & -v6;
      v9 = (v6 - 1 + v8) & -v6;
      if (0x7FFFFFFF / v9 <= a1)
      {
        return 4294966281;
      }

      else
      {
        v10 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
        if (v10)
        {
          v11 = v10;
          v12 = malloc_type_malloc(24 * a1, 0x20040960023A9uLL);
          if (v12)
          {
            v13 = v12;
            v14 = v6 - 1 + v9 * a1;
            v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
            if (v15)
            {
              v16 = v15;
              sub_CB628(v11, v13, (v15 + v6 - 1) & -v6, a1, v8);
              result = 0;
              *(v11 + 24) = v11;
              *(v11 + 32) = v13;
              *(v11 + 48) = 168;
              *(v11 + 52) = 24 * a1;
              *(v11 + 40) = v16;
              *(v11 + 56) = v14;
              *a4 = v11;
              return result;
            }

            free(v11);
            v17 = v13;
          }

          else
          {
            v17 = v11;
          }

          free(v17);
        }

        return 4294966293;
      }
    }
  }

  return result;
}

uint64_t sub_CB894(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  v16 = a1;
  v15 = a2;
  result = 4294966295;
  if (a2 >= 1 && a3 >= 1 && a4 >= 1 && a5 <= 0x40)
  {
    if (a5)
    {
      if (!a6 || ((a5 + 127) & a5) != 0)
      {
        return result;
      }
    }

    else
    {
      if (!a6)
      {
        return result;
      }

      a5 = 64;
    }

    *a6 = 0;
    v9 = (a4 + a5 - 1) & -a5;
    sub_CB218(&v16, &v15, a5, a5);
    if (v15 / v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v15 / v9;
    }

    v11 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(24 * v10, 0x20040960023A9uLL);
      if (v13)
      {
        v14 = v13;
        sub_CB628(v12, v13, v16, v10, v9);
        result = 0;
        *(v12 + 24) = v12;
        *(v12 + 32) = v14;
        *(v12 + 48) = 168;
        *(v12 + 52) = 24 * v10;
        *a6 = v12;
        return result;
      }

      free(v12);
    }

    return 4294966293;
  }

  return result;
}

uint64_t sub_CB9D8(void *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (!sub_CB33C(a1 + 16))
  {
    return 4294966280;
  }

  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  result = a1[3];
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

BOOL sub_CBA4C(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2 <= a2 && v2 + *(a1 + 72) > a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_CBA7C(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1 && a2)
  {
    *a2 = 0;
    v7 = sub_CB47C((a1 + 96));
    if (v7)
    {
      v8 = v7;
      sub_CB37C(a1 + 96);
      sub_CB4F4(a1 + 128, v8);
      v9 = *(a1 + 80);
      *a2 = *(a1 + 64) + (-1431655765 * ((v8 - *(a1 + 88)) >> 3) * v9);
      if (a3)
      {
        *a3 = v9;
      }

      result = 0;
      --*(a1 + 164);
    }

    else
    {
      return 4294966289;
    }
  }

  return result;
}

uint64_t sub_CBB2C(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294966295;
  }

  v3 = *(a1 + 64);
  if (a2 < v3 || v3 + *(a1 + 72) <= a2)
  {
    return 4294966295;
  }

  v4 = (*(a1 + 88) + 24 * ((a2 - v3) / *(a1 + 80)));
  sub_CB424(v4);
  sub_CB4F4(a1 + 96, v4);
  result = 0;
  ++*(a1 + 164);
  return result;
}

BOOL sub_CBBCC(_BOOL8 result)
{
  if (result)
  {
    return !sub_CB33C((result + 96));
  }

  return result;
}

uint64_t sub_CBBF8(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294966295;
  }

  result = 4294966295;
  if (a3)
  {
    if (*(a1 + 76) > a2)
    {
      result = 0;
      *a3 = *(a1 + 64) + *(a1 + 80) * a2;
    }
  }

  return result;
}

uint64_t sub_CBC34(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 64);
      if (a2 >= v5 && v5 + *(a1 + 72) > a2)
      {
        result = 0;
        *a3 = (a2 - v5) / *(a1 + 80);
      }
    }
  }

  return result;
}

uint64_t sub_CBC74(uint64_t a1, unsigned int a2, int a3)
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

uint64_t sub_CBCA0(uint64_t a1, void *a2)
{
  if (sub_160EF0(0x3Du, 7))
  {
    v4 = sub_160F34(0x3Du);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", v5, 61, v6, "AVE_Dump_Create", a1, a2);
      v7 = sub_175AE4();
      v20 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v5, 61, v6, "AVE_Dump_Create", a1, a2);
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
      if (sub_160EF0(0x3Du, 4))
      {
        v13 = sub_160F34(0x3Du);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (sub_160EF0(0x3Du, 4))
    {
      v10 = sub_160F34(0x3Du);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 7))
  {
    v16 = sub_160F34(0x3Du);
    v17 = sub_175AE4();
    v18 = sub_160F68(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t sub_CC04C(void *a1)
{
  if (sub_160EF0(0x3Du, 7))
  {
    v2 = sub_160F34(0x3Du);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 61, v4, "AVE_Dump_Destroy", a1);
      v5 = sub_175AE4();
      v11 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 61, v4, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (sub_160EF0(0x3Du, 7))
  {
    v6 = sub_160F34(0x3Du);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = sub_175AE4();
      v12 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t sub_CC1C4(uint64_t a1, unsigned int a2, int a3, const char *a4, char *a5, uint64_t a6)
{
  v6 = a6;
  memset(v22, 0, sizeof(v22));
  v12 = sub_172100(v22, 128, "%lld-%s-%dx%d-%s-%d", *a1, *(&off_20C1A0 + *(a1 + 16)), *(a1 + 24), *(a1 + 28), off_20C180[*(a1 + 32)], *(a1 + 36));
  v13 = v12;
  if ((a3 & 0x80000000) == 0)
  {
    v13 = sub_172100(v22 + v12, 128 - v12, "-MP%d", a3) + v12;
  }

  if (*(a1 + 16) == 1)
  {
    v13 += sub_172100(v22 + v13, 128 - v13, "-%s-%d", *(&off_20C1D0 + *(a1 + 20)), *(a1 + 44));
  }

  v14 = pthread_self();
  v15 = rand();
  v16 = &off_203168[12 * a2];
  v17 = sub_172100(v22 + v13, 128 - v13, "-%lu-%d-%s", v14, v15 % 10000, *v16);
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

  sub_172100(v22 + v13 + v17, 128 - (v13 + v17), ".%s", v20);
  return sub_175860(a4, 0, v22, a5, v6);
}

uint64_t sub_CC418(_DWORD *a1, const char *a2)
{
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

          v27 = sub_CC1C4(a1, v7, v8, v2, __filename, 256);
          v9 = (a1[3] & (1 << v7)) != 0 && v6 == 36;
          v10 = 8;
          if (v9)
          {
            v10 = 9;
          }

          v11 = (&off_203168[v6])[v10];
          v12 = fopen(__filename, v11);
          *&i[2 * v7] = v12;
          if (v12)
          {
            if (!sub_160EF0(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v13 = sub_160F34(0x3Du);
            v14 = sub_175AE4();
            v15 = sub_160F68(6);
            if (v13)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", v14, 61, v15, "AVE_Dump_OpenFiles", 262, a1, *a1, v4, v7, __filename, v11);
              v16 = sub_175AE4();
              v24 = sub_160F68(6);
              v22 = v16;
            }

            else
            {
              v24 = v15;
              v22 = v14;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v22, 61, v24, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!sub_160EF0(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v17 = sub_160F34(0x3Du);
            v18 = sub_175AE4();
            v19 = sub_160F68(4);
            if (v17)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v18, 61, v19, "AVE_Dump_OpenFiles", 257, a1, *a1, v4, v7, __filename, v11);
              v20 = sub_175AE4();
              v25 = sub_160F68(4);
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

uint64_t sub_CC784(uint64_t a1)
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
        if (fprintf(*(v8 + v6), off_2035E8[v9]) <= 0)
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

uint64_t sub_CC848(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, void *a7, int a8, int a9, int a10, int a11)
{
  v11 = a8;
  v16 = a10;
  v17 = a11;
  if (sub_160EF0(0x3Du, 7))
  {
    v18 = sub_160F34(0x3Du);
    v19 = sub_175AE4();
    v20 = sub_160F68(7);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v19, 61, v20, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v40 = sub_175AE4();
      v11 = a8;
      v37 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v40, 61, v37, "AVE_Dump_Init", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v19, 61, v20, "AVE_Dump_Init", a1);
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
    v21 = sub_CC418(a1, a2);
    if (!v21)
    {
      sub_CC784(a1);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (sub_160EF0(0x3Du, 4))
  {
    v22 = sub_160F34(0x3Du);
    v23 = sub_175AE4();
    v24 = sub_160F68(4);
    if (v22)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v23, 61, v24, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1, a2, a3, a4, a5, a6, a7, v11, a9, a10, a11);
      v39 = sub_175AE4();
      v11 = a8;
      v38 = sub_160F68(4);
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
  if (sub_160EF0(0x3Du, 7))
  {
    v31 = sub_160F34(0x3Du);
    v32 = sub_175AE4();
    v33 = sub_160F68(7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d\n", v32, 61, v33, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, v11, a9, v16, v17, v21);
      v34 = sub_175AE4();
      v35 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v34, 61, v35, "AVE_Dump_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v32, 61, v33, "AVE_Dump_Init", a1, a2);
    }
  }

  return v21;
}

uint64_t sub_CCDA4(char *a1)
{
  if (sub_160EF0(0x3Du, 7))
  {
    v2 = sub_160F34(0x3Du);
    v3 = sub_175AE4();
    v4 = sub_160F68(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 61, v4, "AVE_Dump_Uninit", a1);
      v5 = sub_175AE4();
      v17 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v17, "AVE_Dump_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 61, v4, "AVE_Dump_Uninit", a1);
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

  if (sub_160EF0(0x3Du, 7))
  {
    v12 = sub_160F34(0x3Du);
    v13 = sub_175AE4();
    v14 = sub_160F68(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
      v15 = sub_175AE4();
      v18 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 61, v18, "AVE_Dump_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
    }
  }

  return 0;
}

uint64_t sub_CCF60(void *a1, int a2, __CVBuffer *a3)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v6 = sub_160F34(0x3Du);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteInput", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 6];
    if (v9)
    {
      if (a3)
      {
        v10 = sub_15AF8C(a3, *(a1 + 3) & 1, v9);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v11 = sub_160F34(0x3Du);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v15 = sub_160F34(0x3Du);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t sub_CD240(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v8 = sub_160F34(0x3Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", v9, 61, v10, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", v9, 61);
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
        if (sub_160EF0(0x3Du, 8))
        {
          v14 = sub_160F34(0x3Du);
          v15 = sub_175AE4();
          v16 = sub_160F68(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = sub_175AE4();
            v27 = sub_160F68(8);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v18 = sub_160F34(0x3Du);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v22 = sub_160F34(0x3Du);
    v23 = sub_175AE4();
    v24 = sub_160F68(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t sub_CD63C(void *a1, int a2, __CVBuffer *a3)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v6 = sub_160F34(0x3Du);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteOutputPixelBuf", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 7];
    if (v9)
    {
      if (a3)
      {
        v10 = sub_15AF8C(a3, (*(a1 + 3) >> 1) & 1, v9);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v11 = sub_160F34(0x3Du);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteOutputPixelBuf", 625, "pDump != __null", 0, a2, a3);
        v14 = sub_175AE4();
        v20 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v15 = sub_160F34(0x3Du);
    v16 = sub_175AE4();
    v17 = sub_160F68(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteOutputPixelBuf", a1, a2, a3, v10);
      v18 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
}

uint64_t sub_CD91C(void *a1, int a2, int a3, double *a4)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v8 = sub_160F34(0x3Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v13 = sub_160F34(0x3Du);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteISPMetadata", 668, "pDump != __null", 0, a2, a3, a4);
        v16 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v17 = sub_160F34(0x3Du);
    v18 = sub_175AE4();
    v19 = sub_160F68(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4, v12);
      v20 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t sub_CDC60(void *a1, int a2, const void *a3, unsigned int a4)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v8 = sub_160F34(0x3Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", v9, 61, v10, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", v9, 61);
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
        if (sub_160EF0(0x3Du, 8))
        {
          v14 = sub_160F34(0x3Du);
          v15 = sub_175AE4();
          v16 = sub_160F68(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = sub_175AE4();
            v27 = sub_160F68(8);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v18 = sub_160F34(0x3Du);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = sub_175AE4();
        v28 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v22 = sub_160F34(0x3Du);
    v23 = sub_175AE4();
    v24 = sub_160F68(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t sub_CE05C(void *a1, int a2, int *a3)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v6 = sub_160F34(0x3Du);
    v7 = sub_175AE4();
    v8 = sub_160F68(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", v7, 61, v8, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      v7 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", v7);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v14 = sub_160F34(0x3Du);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = sub_175AE4();
        v23 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v18 = sub_160F34(0x3Du);
    v19 = sub_175AE4();
    v20 = sub_160F68(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t sub_CE3A0(void *a1, int a2, int a3, double *a4)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v8 = sub_160F34(0x3Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v13 = sub_160F34(0x3Du);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v16 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v17 = sub_160F34(0x3Du);
    v18 = sub_175AE4();
    v19 = sub_160F68(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v12);
      v20 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t sub_CE6DC(void *a1, int a2, int a3, double *a4)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v8 = sub_160F34(0x3Du);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v9, 61, v10, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      v9 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v9, 61);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v13 = sub_160F34(0x3Du);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v16 = sub_175AE4();
        v22 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v17 = sub_160F34(0x3Du);
    v18 = sub_175AE4();
    v19 = sub_160F68(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v12);
      v20 = sub_175AE4();
      v23 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t sub_CEA24(void *a1, __CVBuffer *a2)
{
  if (sub_160EF0(0x3Du, 8))
  {
    v4 = sub_160F34(0x3Du);
    v5 = sub_175AE4();
    v6 = sub_160F68(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", v5, 61, v6, "AVE_Dump_WriteRecon", a1, a2);
      v7 = sub_175AE4();
      v17 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 61, v17, "AVE_Dump_WriteRecon", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v5, 61, v6, "AVE_Dump_WriteRecon", a1, a2);
    }
  }

  if (a1)
  {
    v8 = a1[17];
    if (v8)
    {
      if (a2)
      {
        v9 = sub_15AF8C(a2, (*(a1 + 3) >> 11) & 1, v8);
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
    if (sub_160EF0(0x3Du, 4))
    {
      v10 = sub_160F34(0x3Du);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v11, 61, v12, "AVE_Dump_WriteRecon", 907, "pDump != __null", 0, a2);
        v11 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (sub_160EF0(0x3Du, 8))
  {
    v13 = sub_160F34(0x3Du);
    v14 = sub_175AE4();
    v15 = sub_160F68(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 61, v15, "AVE_Dump_WriteRecon", a1, a2, v9);
      v14 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v9;
}

uint64_t sub_CECE8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 < 255)
  {
    v5 = a1;
LABEL_7:

    return sub_1727D0(a2, v5, 8);
  }

  else
  {
    while (1)
    {
      result = sub_1727D0(a2, 0xFFu, 8);
      if (result)
      {
        break;
      }

      v5 = v3 - 255;
      v6 = v3 <= 509;
      v3 -= 255;
      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_CED64(uint64_t a1, int a2, uint64_t a3, const char *a4)
{
  v5 = a3;
  v8 = sub_1727F8(a1);
  if (!v8)
  {
    if (sub_160EF0(0xD3u, 8))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(8);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s start code %p (%d)\n", v15, 211, v16, "AVE_SEI_StartNALU", 112, a4, (*(a1 + 32) + *(a1 + 12)), *(a1 + 12));
        v15 = sub_175AE4();
        sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s start code %p (%d)", v15, 211);
    }

    if (a2 == 2)
    {
      v20 = sub_1727D0(a1, 0x4E01u, 16);
      if (v20)
      {
        v9 = v20;
        if (!sub_160EF0(0xD3u, 4))
        {
          return v9;
        }

        v21 = sub_160F34(0xD3u);
        v11 = sub_175AE4();
        v22 = sub_160F68(4);
        if (!v21)
        {
          goto LABEL_9;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v22, "AVE_SEI_StartNALU", 123, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_35;
      }
    }

    else
    {
      if (a2 != 1)
      {
        if (sub_160EF0(0xD3u, 4))
        {
          v23 = sub_160F34(0xD3u);
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
          if (v23)
          {
            printf("%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p\n", v24, 211, v25, "AVE_SEI_StartNALU", 128, "false", a4, a2, *(a1 + 32));
            v26 = sub_175AE4();
            v38 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v26, 211, v38);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v24, 211, v25);
          }
        }

        return 4294966295;
      }

      v17 = sub_1727D0(a1, 6u, 8);
      if (v17)
      {
        v9 = v17;
        if (!sub_160EF0(0xD3u, 4))
        {
          return v9;
        }

        v18 = sub_160F34(0xD3u);
        v11 = sub_175AE4();
        v19 = sub_160F68(4);
        if (!v18)
        {
          goto LABEL_9;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v19, "AVE_SEI_StartNALU", 119, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_35;
      }
    }

    if (sub_160EF0(0xD3u, 8))
    {
      v27 = sub_160F34(0xD3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(8);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)\n", v28, 211, v29, "AVE_SEI_StartNALU", 133, a4, (*(a1 + 32) + *(a1 + 12)), *(a1 + 12));
        v28 = sub_175AE4();
        sub_160F68(8);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)", v28, 211);
    }

    v30 = sub_1727D0(a1, v5, 8);
    if (!v30)
    {
      if (sub_160EF0(0xD3u, 8))
      {
        v35 = sub_160F34(0xD3u);
        v36 = sub_175AE4();
        v37 = sub_160F68(8);
        if (v35)
        {
          printf("%lld %d AVE %s: %s:%d %s payloadType %p (%d)\n", v36, 211, v37, "AVE_SEI_StartNALU", 140, a4, (*(a1 + 32) + *(a1 + 12)), *(a1 + 12));
          v36 = sub_175AE4();
          sub_160F68(8);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s payloadType %p (%d)", v36, 211);
      }

      return 0;
    }

    v9 = v30;
    if (!sub_160EF0(0xD3u, 4))
    {
      return v9;
    }

    v31 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v32 = sub_160F68(4);
    if (!v31)
    {
      goto LABEL_9;
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v32, "AVE_SEI_StartNALU", 137, "(ret) == 0", *(a1 + 32), v9);
LABEL_35:
    v33 = sub_175AE4();
    sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v33, 211);
    return v9;
  }

  v9 = v8;
  if (sub_160EF0(0xD3u, 4))
  {
    v10 = sub_160F34(0xD3u);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v12, "AVE_SEI_StartNALU", 109, "(ret) == 0", *(a1 + 32), v9);
      v13 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v13, 211);
      return v9;
    }

LABEL_9:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v11, 211);
  }

  return v9;
}

uint64_t sub_CF3D0(const void *a1, uint64_t a2, unsigned __int8 *a3, int a4, int *a5)
{
  v6 = a2;
  if (sub_160EF0(0xD3u, 7))
  {
    v7 = sub_160F34(0xD3u);
    v8 = sub_175AE4();
    v9 = sub_160F68(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %p\n", v8, 211, v9, "AVE_SEI_WriteAmbientViewingEnvironment", a1, v6, a3, a4, a5);
      v10 = sub_175AE4();
      v58 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v10, 211, v58);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v8, 211, v9);
    }
  }

  if (!a3 || !a1 || !a5)
  {
    v21 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v22 = sub_160F34(0xD3u);
      v23 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v23, 211, v24);
        goto LABEL_27;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p\n", v23, 211, v24, "AVE_SEI_WriteAmbientViewingEnvironment", 222, "pBuf != __null && pBytesWritten != __null && pViewingEnv != __null", a1, a3, a5);
      v25 = sub_175AE4();
      v21 = 4;
      v59 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v25, 211, v59);
    }

LABEL_28:
    v16 = 4294966295;
    goto LABEL_29;
  }

  if (a4 != 2)
  {
    v21 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v26 = sub_160F34(0xD3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v27, 211, v28, "AVE_SEI_WriteAmbientViewingEnvironment", 226, "encType == AVE_EncType_HEVC", a4, a1);
        v29 = sub_175AE4();
        v21 = 4;
        sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v29, 211);
        goto LABEL_28;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v27, 211);
LABEL_27:
      v21 = 4;
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v11 = operator new(0x1030uLL, &std::nothrow);
  if (v11)
  {
    v12 = v11;
    sub_172598(v11);
    v13 = operator new(0x1030uLL, &std::nothrow);
    v14 = v13;
    if (v13)
    {
      sub_1725DC(v13, a1, v6, 0);
    }

    *a5 = 0;
    v15 = sub_CED64(v14, 2, 148, "AVE_SEI_WriteAmbientViewingEnvironment");
    if (v15)
    {
      v16 = v15;
      if (!sub_160EF0(0xD3u, 4))
      {
        goto LABEL_52;
      }

      v17 = sub_160F34(0xD3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v19, "AVE_SEI_WriteAmbientViewingEnvironment", 240, "(ret) == 0", a1, v16);
        v20 = sub_175AE4();
        sub_160F68(4);
LABEL_38:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
        goto LABEL_52;
      }
    }

    else
    {
      v40 = sub_172890(v12, a3, 8u);
      if (v40)
      {
        v16 = v40;
        if (!sub_160EF0(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v41 = sub_160F34(0xD3u);
        v18 = sub_175AE4();
        v42 = sub_160F68(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v42, "AVE_SEI_WriteAmbientViewingEnvironment", 245, "(ret) == 0", a1, v16);
          v20 = sub_175AE4();
          sub_160F68(4);
          goto LABEL_38;
        }
      }

      else if (v12[2] && (v43 = sub_172978(v12), v43))
      {
        v16 = v43;
        if (!sub_160EF0(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v44 = sub_160F34(0xD3u);
        v18 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v45, "AVE_SEI_WriteAmbientViewingEnvironment", 251, "(ret) == 0", a1, v16);
          v20 = sub_175AE4();
          sub_160F68(4);
          goto LABEL_38;
        }
      }

      else
      {
        if (sub_160EF0(0xD3u, 8))
        {
          v46 = sub_160F34(0xD3u);
          v47 = sub_175AE4();
          v48 = sub_160F68(8);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v47, 211, v48, "AVE_SEI_WriteAmbientViewingEnvironment", 254, v12[2] + 8 * v12[3], v12[3]);
            v47 = sub_175AE4();
            sub_160F68(8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v47);
        }

        v49 = sub_CFEC0(v12, v14, "AVE_SEI_WriteAmbientViewingEnvironment");
        if (!v49)
        {
          *a5 = v14[3];
          if (sub_160EF0(0xD3u, 7))
          {
            v52 = sub_160F34(0xD3u);
            v53 = sub_175AE4();
            v54 = sub_160F68(7);
            v55 = *a5;
            if (v52)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v53, 211, v54, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v55);
              v56 = sub_175AE4();
              v57 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v56, 211, v57, "AVE_SEI_WriteAmbientViewingEnvironment", 260, *a5);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v53, 211, v54, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v55);
            }
          }

          v16 = 0;
          goto LABEL_52;
        }

        v16 = v49;
        if (!sub_160EF0(0xD3u, 4))
        {
LABEL_52:
          (*(*v12 + 8))(v12);
          (*(*v14 + 8))(v14);
          if (v16)
          {
            v21 = 4;
          }

          else
          {
            v21 = 7;
          }

          goto LABEL_29;
        }

        v50 = sub_160F34(0xD3u);
        v18 = sub_175AE4();
        v51 = sub_160F68(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v51, "AVE_SEI_WriteAmbientViewingEnvironment", 257, "(ret) == 0", a1, v16);
          v20 = sub_175AE4();
          sub_160F68(4);
          goto LABEL_38;
        }
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v18, 211);
    goto LABEL_52;
  }

  v21 = 4;
  if (sub_160EF0(0xD3u, 4))
  {
    v30 = sub_160F34(0xD3u);
    v31 = sub_175AE4();
    v32 = sub_160F68(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v33 = sub_175AE4();
      v21 = 4;
      v34 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v33, 211, v34, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v21 = 4;
    }
  }

  v16 = 4294966293;
LABEL_29:
  if (sub_160EF0(0xD3u, v21))
  {
    v35 = sub_160F34(0xD3u);
    v36 = sub_175AE4();
    v37 = sub_160F68(v21);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %p %d\n", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment", a1, v6, a3, a4, a5, v16);
      v38 = sub_175AE4();
      v60 = sub_160F68(v21);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v38, 211, v60, "AVE_SEI_WriteAmbientViewingEnvironment");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment");
    }
  }

  return v16;
}

uint64_t sub_CFEC0(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = (*(a1 + 12) - *(a1 + 16) / 8);
  v7 = *(a2 + 12);
  if (sub_160EF0(0xD3u, 8))
  {
    v8 = sub_160F34(0xD3u);
    v9 = sub_175AE4();
    v10 = sub_160F68(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)\n", v9, 211, v10, "AVE_SEI_FinishNALU", 171, a3, v6, (*(a2 + 32) + *(a2 + 12)), *(a2 + 12));
      v11 = sub_175AE4();
      v33 = sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", v11, 211, v33);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", v9, 211, v10);
    }
  }

  v12 = sub_CECE8(v6, a2);
  if (!v12)
  {
    if (sub_160EF0(0xD3u, 8))
    {
      v18 = sub_160F34(0xD3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(8);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)\n", v19, 211, v20, "AVE_SEI_FinishNALU", 179, a3, *(a2 + 12) - v7, (*(a2 + 32) + *(a2 + 12)), *(a2 + 12));
        v21 = sub_175AE4();
        v34 = sub_160F68(8);
        syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v21, 211, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v19, 211, v20);
      }
    }

    v22 = sub_1728F4(a2, a1);
    if (v22)
    {
      v13 = v22;
      if (!sub_160EF0(0xD3u, 4))
      {
        return v13;
      }

      v23 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v24 = sub_160F68(4);
      if (!v23)
      {
        goto LABEL_28;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v15, 211, v24, "AVE_SEI_FinishNALU", 183, "(ret) == 0", *(a2 + 32), v13);
    }

    else
    {
      v25 = sub_172978(a2);
      if (!v25)
      {
        if (sub_160EF0(0xD3u, 8))
        {
          v29 = sub_160F34(0xD3u);
          v30 = sub_175AE4();
          v31 = sub_160F68(8);
          if (v29)
          {
            printf("%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)\n", v30, 211, v31, "AVE_SEI_FinishNALU", 191, a3, (*(a2 + 32) + *(a2 + 12)), *(a2 + 12));
            v30 = sub_175AE4();
            sub_160F68(8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)", v30, 211);
        }

        return 0;
      }

      v13 = v25;
      if (!sub_160EF0(0xD3u, 4))
      {
        return v13;
      }

      v26 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v27 = sub_160F68(4);
      if (!v26)
      {
        goto LABEL_28;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v15, 211, v27, "AVE_SEI_FinishNALU", 187, "(ret) == 0", *(a2 + 32), v13);
    }

    v28 = sub_175AE4();
    sub_160F68(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211);
    return v13;
  }

  v13 = v12;
  if (sub_160EF0(0xD3u, 4))
  {
    v14 = sub_160F34(0xD3u);
    v15 = sub_175AE4();
    v16 = sub_160F68(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v15, 211, v16, "AVE_SEI_FinishNALU", 174, "(ret) == 0", *(a2 + 32), v13);
      v17 = sub_175AE4();
      sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v17, 211);
      return v13;
    }

LABEL_28:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v15, 211);
  }

  return v13;
}

uint64_t sub_D03F0(const void *a1, uint64_t a2, int a3, int *a4)
{
  v112 = a2;
  memset(v119, 0, sizeof(v119));
  v118[0] = xmmword_183560;
  v118[1] = xmmword_183570;
  v118[2] = xmmword_183580;
  if (sub_160EF0(0xD3u, 7))
  {
    v4 = sub_160F34(0xD3u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", v5, 211, v6, "AVE_SEI_WriteContentColorVolume", a1, v112, a3, a4);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", v5, 211, v6, "AVE_SEI_WriteContentColorVolume", a1, v112, a3, a4);
  }

  if (!a1 || !a4)
  {
    v10 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v11 = sub_160F34(0xD3u);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
        v12 = sub_175AE4();
        v13 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
      goto LABEL_41;
    }

LABEL_42:
    v26 = 4294966295;
    goto LABEL_43;
  }

  if (a3 != 2)
  {
    v10 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v14 = sub_160F34(0xD3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
LABEL_41:
      v10 = 4;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (sub_160EF0(0xD3u, 8))
  {
    v7 = sub_160F34(0xD3u);
    v8 = sub_175AE4();
    v9 = sub_160F68(8);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d ccv primaries\n", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
      v8 = sub_175AE4();
      v9 = sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d ccv primaries", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
  }

  v17 = 0;
  v116 = vdupq_n_s64(0x40E86A0000000000uLL);
  do
  {
    v117 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v118[v17], v116)));
    v119[v17] = v117;
    if (sub_160EF0(0xD3u, 7))
    {
      v18 = sub_160F34(0xD3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(7);
      if (v18)
      {
        printf("%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)\n", v19, 211, v20, v17, v117.i32[0], v117.i32[1]);
        v19 = sub_175AE4();
        v20 = sub_160F68(7);
      }

      syslog(3, "%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)", v19, 211, v20, v17, v117.i32[0], v117.i32[1]);
    }

    ++v17;
  }

  while (v17 != 3);
  v21 = operator new(0x1030uLL, &std::nothrow);
  if (v21)
  {
    v22 = v21;
    sub_172598(v21);
    v23 = operator new(0x1030uLL, &std::nothrow);
    v24 = v23;
    if (v23)
    {
      sub_1725DC(v23, a1, v112, 0);
      v25 = sub_CED64(v24, 2, 149, "AVE_SEI_WriteContentColorVolume");
      if (v25)
      {
        v26 = v25;
        if (sub_160EF0(0xD3u, 4))
        {
          v27 = sub_160F34(0xD3u);
          v28 = sub_175AE4();
          v29 = sub_160F68(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
        }
      }

      else
      {
        v42 = sub_17262C(v22, 0);
        if (v42)
        {
          v26 = v42;
          if (sub_160EF0(0xD3u, 4))
          {
            v43 = sub_160F34(0xD3u);
            v44 = sub_175AE4();
            v45 = sub_160F68(4);
            if (v43)
            {
              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
              v44 = sub_175AE4();
              v45 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211, v45, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
          }
        }

        else
        {
          v46 = sub_17262C(v22, 1);
          if (v46)
          {
            v26 = v46;
            if (sub_160EF0(0xD3u, 4))
            {
              v47 = sub_160F34(0xD3u);
              v48 = sub_175AE4();
              v49 = sub_160F68(4);
              if (v47)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
                v48 = sub_175AE4();
                v49 = sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v48, 211, v49, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
            }
          }

          else
          {
            v50 = sub_17262C(v22, 1);
            if (v50)
            {
              v26 = v50;
              if (sub_160EF0(0xD3u, 4))
              {
                v51 = sub_160F34(0xD3u);
                v52 = sub_175AE4();
                v53 = sub_160F68(4);
                if (v51)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
                  v52 = sub_175AE4();
                  v53 = sub_160F68(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v52, 211, v53, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
              }
            }

            else
            {
              v54 = sub_17262C(v22, 1);
              if (v54)
              {
                v26 = v54;
                if (sub_160EF0(0xD3u, 4))
                {
                  v55 = sub_160F34(0xD3u);
                  v56 = sub_175AE4();
                  v57 = sub_160F68(4);
                  if (v55)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                    v56 = sub_175AE4();
                    v57 = sub_160F68(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                }
              }

              else
              {
                v58 = sub_17262C(v22, 1);
                if (v58)
                {
                  v26 = v58;
                  if (sub_160EF0(0xD3u, 4))
                  {
                    v59 = sub_160F34(0xD3u);
                    v60 = sub_175AE4();
                    v61 = sub_160F68(4);
                    if (v59)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                      v60 = sub_175AE4();
                      v61 = sub_160F68(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v60, 211, v61, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                  }
                }

                else
                {
                  v62 = sub_17262C(v22, 1);
                  if (v62)
                  {
                    v26 = v62;
                    if (sub_160EF0(0xD3u, 4))
                    {
                      v63 = sub_160F34(0xD3u);
                      v64 = sub_175AE4();
                      v65 = sub_160F68(4);
                      if (v63)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                        v64 = sub_175AE4();
                        v65 = sub_160F68(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v64, 211, v65, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                    }
                  }

                  else
                  {
                    v66 = sub_1727D0(v22, 0, 2);
                    if (v66)
                    {
                      v26 = v66;
                      if (sub_160EF0(0xD3u, 4))
                      {
                        v67 = sub_160F34(0xD3u);
                        v68 = sub_175AE4();
                        v69 = sub_160F68(4);
                        if (v67)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                          v68 = sub_175AE4();
                          v69 = sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v68, 211, v69, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                      }
                    }

                    else
                    {
                      v70 = v119 + 1;
                      v71 = 3;
                      while (1)
                      {
                        v72 = sub_1727BC(v22, *(v70 - 1), 32);
                        if (v72)
                        {
                          break;
                        }

                        v73 = sub_1727BC(v22, *v70, 32);
                        if (v73)
                        {
                          v26 = v73;
                          if (sub_160EF0(0xD3u, 4))
                          {
                            v81 = sub_160F34(0xD3u);
                            v82 = sub_175AE4();
                            v83 = sub_160F68(4);
                            if (v81)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                              v82 = sub_175AE4();
                              v83 = sub_160F68(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v82, 211, v83, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                          }

                          goto LABEL_62;
                        }

                        v70 += 2;
                        if (!--v71)
                        {
                          v74 = sub_1727D0(v22, 0, 32);
                          if (v74)
                          {
                            v26 = v74;
                            if (sub_160EF0(0xD3u, 4))
                            {
                              v75 = sub_160F34(0xD3u);
                              v76 = sub_175AE4();
                              v77 = sub_160F68(4);
                              if (v75)
                              {
                                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                                v76 = sub_175AE4();
                                v77 = sub_160F68(4);
                              }

                              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v76, 211, v77, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                            }
                          }

                          else
                          {
                            v84 = sub_1727D0(v22, 0xF4240u, 32);
                            if (v84)
                            {
                              v26 = v84;
                              if (sub_160EF0(0xD3u, 4))
                              {
                                v85 = sub_160F34(0xD3u);
                                v86 = sub_175AE4();
                                v87 = sub_160F68(4);
                                if (v85)
                                {
                                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                                  v86 = sub_175AE4();
                                  v87 = sub_160F68(4);
                                }

                                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v86, 211, v87, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                              }
                            }

                            else
                            {
                              v88 = sub_1727D0(v22, 0x186A0u, 32);
                              if (v88)
                              {
                                v26 = v88;
                                if (sub_160EF0(0xD3u, 4))
                                {
                                  v89 = sub_160F34(0xD3u);
                                  v90 = sub_175AE4();
                                  v91 = sub_160F68(4);
                                  if (v89)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                    v90 = sub_175AE4();
                                    v91 = sub_160F68(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v90, 211, v91, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                }
                              }

                              else if (v22[2] && (v92 = sub_172978(v22), v92))
                              {
                                v26 = v92;
                                if (sub_160EF0(0xD3u, 4))
                                {
                                  v93 = sub_160F34(0xD3u);
                                  v94 = sub_175AE4();
                                  v95 = sub_160F68(4);
                                  if (v93)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                    v94 = sub_175AE4();
                                    v95 = sub_160F68(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v94, 211, v95, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                }
                              }

                              else
                              {
                                if (sub_160EF0(0xD3u, 8))
                                {
                                  v96 = sub_160F34(0xD3u);
                                  v97 = sub_175AE4();
                                  v98 = sub_160F68(8);
                                  v99 = v22[3];
                                  if (v96)
                                  {
                                    printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v99, v99);
                                    v100 = sub_175AE4();
                                    v101 = sub_160F68(8);
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v100, 211, v101, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v22[3], v22[3]);
                                  }

                                  else
                                  {
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v97, 211, v98, "AVE_SEI_WriteContentColorVolume", 410, v22[2] + 8 * v99, v99);
                                  }
                                }

                                v102 = sub_CFEC0(v22, v24, "AVE_SEI_WriteContentColorVolume");
                                if (v102)
                                {
                                  v26 = v102;
                                  if (sub_160EF0(0xD3u, 4))
                                  {
                                    v103 = sub_160F34(0xD3u);
                                    v104 = sub_175AE4();
                                    v105 = sub_160F68(4);
                                    if (v103)
                                    {
                                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v104, 211, v105, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                      v104 = sub_175AE4();
                                      v105 = sub_160F68(4);
                                    }

                                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v104, 211, v105, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                  }
                                }

                                else
                                {
                                  *a4 = v24[3];
                                  if (sub_160EF0(0xD3u, 7))
                                  {
                                    v106 = sub_160F34(0xD3u);
                                    v107 = sub_175AE4();
                                    v108 = sub_160F68(7);
                                    v109 = *a4;
                                    if (v106)
                                    {
                                      printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v107, 211, v108, "AVE_SEI_WriteContentColorVolume", 416, v109);
                                      v110 = sub_175AE4();
                                      v111 = sub_160F68(7);
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v110, 211, v111, "AVE_SEI_WriteContentColorVolume", 416, *a4);
                                    }

                                    else
                                    {
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v107, 211, v108, "AVE_SEI_WriteContentColorVolume", 416, v109);
                                    }
                                  }

                                  v26 = 0;
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      v26 = v72;
                      if (sub_160EF0(0xD3u, 4))
                      {
                        v78 = sub_160F34(0xD3u);
                        v79 = sub_175AE4();
                        v80 = sub_160F68(4);
                        if (v78)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                          v79 = sub_175AE4();
                          v80 = sub_160F68(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v79, 211, v80, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (sub_160EF0(0xD3u, 4))
      {
        v39 = sub_160F34(0xD3u);
        v40 = sub_175AE4();
        v41 = sub_160F68(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
          v40 = sub_175AE4();
          v41 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v40, 211, v41, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
      }

      v26 = 4294966293;
    }

LABEL_62:
    (*(*v22 + 8))(v22);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    if (v26)
    {
      v10 = 4;
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 4;
    if (sub_160EF0(0xD3u, 4))
    {
      v30 = sub_160F34(0xD3u);
      v31 = sub_175AE4();
      v32 = sub_160F68(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
        v31 = sub_175AE4();
        v32 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
      v10 = 4;
    }

    v26 = 4294966293;
  }

LABEL_43:
  if (sub_160EF0(0xD3u, v10))
  {
    v33 = sub_160F34(0xD3u);
    v34 = sub_175AE4();
    v35 = sub_160F68(v10);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, v112, a3, a4, v26);
      v36 = sub_175AE4();
      v37 = sub_160F68(v10);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v36, 211, v37, "AVE_SEI_WriteContentColorVolume", a1, v112, a3, a4, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, v112, a3, a4, v26);
    }
  }

  return v26;
}